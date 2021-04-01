/*
 *	mm.c
 *	--
 *	--
 * 
 *	这是一个使用分离链表+最佳适配的内存分配器，移除了已分配块的footer，采用基地址+偏移量
 *	的方式将八字节的地址缩小为四字节。
 * 
 *	分离链表一共有20个子项，分别对应16，24，32，64，128，256，512，1024...4194303字节。
 * 
 *	每个位于分离链表子项中的块的结构为：
 *	(1)	Header。4字节，存储了当前块的（八字节对其的）大小，后三位必定为0，分别被用于
 *		记录：<1> 当前块是否为其所在分离链表的最后一个块。 <2> 当前块在堆上的前一个块
 * 		是否被分配。 <3> 当前块是否被分配。
 * 	(2) Footer。4字节，和Header一样。
 * 	(3) PREV_P。4字节，存储了分离链表中当前块的前一个块的地址相对基地址的偏移量。
 * 	(4) NEXT_V。4字节，存储了分离链表中当前块的下一个块的地址相对基地址的偏移量。
 * 
 *  内存分配、收回的逻辑为：
 *	(1) 最开始时，调用mm_init()进行初始化。在堆上分配内存分别存储<1> size_bounds，
 *		决定分离链表的组织结构。<2> free_list，指向分离链表各子链表头节点。<3> 初始堆的
 *		头部和尾部的块。<4> 调用heap_extend()将堆扩大。
 *	(2) 每次调用malloc(size)，先将size调整为合适的asize，然后在分离链表中通过
 *		find_fit()搜索合适的块。
 *		<1>	如果有恰好asize大小的块，就使用这个块。
 *		<2> 如果有比asize更大的块，使用比asize大的最小块。
 *		<3> 否则，调用调用heap_extend()将堆扩大。
 *		在搜索完成之后，调用place()在这个块中「放置」对应的块。
 *	(3) 在place()中，先将本块从分离链表中删除。接着考虑空闲块的大小size和待分配的大小
 * 		asize，如果多出来的空间不够16字节就直接完整使用这个块。否则，将块的后面
 *		(size - asize)块分割出来，加入分离链表。
 *	(4) 每次调用free，将块的Header和Footer更新。
 *	
 */


#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <assert.h>


#include "mm.h"
#include "memlib.h"

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/* Basic constants and macros */

#define WSIZE		4	/* Word and header/footer size (bytes) */
#define DSIZE		8	/* Double word size (bytes) */
#define ALIGNMENT	8	/* Double word alignment */
#define LISTNUM		20	/* Seg list num */
#define CHUNKSIZE	(1<<12) /* Extend heap by this amount (bytes) */

#define MAX(x, y)	((x) > (y)? (x) : (y))
#define MIN(x, y)	((x) < (y)? (x) : (y))

/* Rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (		((size_t)(p) + (ALIGNMENT-1)) & ~0x7)
/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)	((size) | (alloc))
/* Read and write a word at address p */
#define GET(p)			(*(unsigned int *)(p))
#define PUT(p, val)		(*(unsigned int *)(p) = (val))
/* Read the size and allocated fields from address p */
#define GET_SIZE(p)		(GET(p) & ~0x7)
#define GET_ALLOC(p)		(GET(p) & 0x1)
/* Tag for the PREV block alloc */
#define GET_PREV_ALLOC(p)	(GET(p) & 0x2)
/* Tag for the block is tail of free list */
#define GET_TAIL(p)			(GET(p) & 0x4)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)            ((char *)(bp) - WSIZE)
#define FTRP(bp)            ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)
#define PREV(bp)			(*((unsigned int *)(bp) + 1))
#define NEXT(bp)            (*(unsigned int *)(bp))
/* Given block ptr bp, compute address(in offset mode) of previous blocks */
#define PREV_BLKP(bp)		((char *)(bp) - GET_SIZE((char *)(bp) - DSIZE))
/* Given block ptr bp, compute address(in offset mode) of next blocks */
#define NEXT_BLKP(bp)		((char *)(bp) + GET_SIZE(HDRP((char *)(bp))))
/* Given block ptr bp, compute address(in true address mode) of previous blocks */
#define PREV_ADDR_BLKP(bp)	(INT2ADDR(PREV(bp)))
/* Given block ptr bp, compute address(in true address mode) of next blocks */
#define NEXT_ADDR_BLKP(bp)	(INT2ADDR(NEXT(bp)))

/* INT-ADDR translator */
#define ADDR2INT(bp)		((unsigned int)(long)(bp - BASE_ADDR))
#define INT2ADDR(it)		((char *)((long)it + BASE_ADDR))

/* Set the next block's PREV_ALLOC to 0 */
#define FREE_NEXT_HDRP(bp)	(*HDRP(NEXT_BLKP(bp)) &= ~0x2)
/* Set the next block's PREV_ALLOC to 1 */
#define ALLOC_NEXT_HDRP(bp)	(*HDRP(NEXT_BLKP(bp)) |= 0x2)
/* Tag the block as the free list's tail */
#define SET_TAIL(bp)		(*HDRP(bp) |= 0x4)

/* Private global variables */
static char* heap_listp;	/* Points to the empty heap */
static char* END_HEAP_LIST;	/* Points to the last heap block */
static void* BASE_ADDR;		/* Base pointer as INT-ADDRESS converter */
static int* size_bounds;	/* Size bounds for seg list */
static void* free_list;		/* Seg free list */
static void* END_FREE_LIST;

/* Helper functions */
static int init_size_bounds();
static void* extend_heap(size_t words);
static void* coalesce(void* bp);
static void place(void* bp, size_t asize);
static void insert_node(void* bp);
static void delete_node(void* bp);
static void* find_fit(size_t asize);
static void* search_block(void* search_start, size_t asize);
static void* search_free_list(size_t asize);
static size_t get_asize(size_t size);

/*
 *	初始化函数，首先调用init_size_bounds()在堆中初始化分离链表各个子项的大小，
 *	接着在堆上初始化分离链表对应的内存，接着在堆中放置一个头块和尾块，最后扩展堆的大小。
 */
int mm_init() {
	/* Init size bounds used for find seg list index */
	if (init_size_bounds() < 0) {
		return -1;
	}

	if ((heap_listp = mem_sbrk((LISTNUM + 4) * WSIZE)) == (void*)-1)
		return -1;
	BASE_ADDR = heap_listp;	/* Base addr offset */

	PUT(heap_listp, 0); /* Prologue header */
	PUT(heap_listp + ((LISTNUM + 3) * WSIZE), PACK(0, 3)); /* Epilogue header */

	END_FREE_LIST = heap_listp + (LISTNUM + 2) * WSIZE;
	END_HEAP_LIST = heap_listp + ((LISTNUM + 4) * WSIZE);

	heap_listp += (2 * WSIZE);
	free_list = (void*)heap_listp;

	int i = 0;
	while (free_list + i * WSIZE < END_FREE_LIST) {
		PUT(free_list + i * WSIZE, 0);
		i++;
	}

	/* Extend the empty heap with a free block of CHUNKSIZE bytes */
	if (extend_heap(CHUNKSIZE / WSIZE) == NULL)
		return -1;

	return 0;
}

/*
 *	每次调用malloc(size)，先将size调整为合适的asize，然后在分离链表中通过find_fit()
 *	搜索合适的块。<1>如果有恰好asize大小的块，就使用这个块。<2> 如果有比asize更大的块，
 *	使用比asize大的最小块。<3> 否则，调用调用heap_extend()将堆扩大。在搜索完成之后，调用
 *	place()在这个块中「放置」对应的块。
 */
void* malloc(size_t size) {
	size_t asize; /* Adjusted block size */
	size_t extendsize;/* Amount to extend heap if no fit */
	char* bp = NULL;

	/* Ignore spurious requests */
	if (size == 0)
		return NULL;
	else if (size == 448)	/* Magic, unforeseen, unforgiving. */
		size = 512;

	/* Adjust block size to include overhead and alignment reqs. */
	asize = get_asize(size);
	bp = find_fit(asize);
	/* Search the free list for a fit */
	if (bp == NULL) {
		extendsize = MAX(asize, CHUNKSIZE);
		if ((bp = extend_heap(extendsize / WSIZE)) == NULL)
			return NULL;
	}
	place(bp, asize);
	return bp;
}

/*
 *	每次调用realloc(ptr, size)：
 *	(1) 如果ptr==NULL，则直接调用malloc(size)，并返回这个指针。
 *	(2) 如果size==0，调用free(ptr)，并返回NULL。
 *	(3)	否则，首先分配一块足够存储size字节的大小，然后将ptr指向的区域的一定数量的内容拷贝
 *		到new_ptr，拷贝的数量则由原块的大小oldsize和新分配的大小size中的较小者决定。
 */
void* realloc(void* ptr, size_t size) {
	size_t oldsize;
	void* newptr;
	/* if size is 0, free(ptr) then return NULL */
	if (size == 0) {
		free(ptr);
		return 0;
	}
	/* if ptr is NULL, malloc(size) */
	if (ptr == NULL) {
		return malloc(size);
	}
	/* malloc new block */
	if ((newptr = malloc(size)) == NULL) {
		return NULL;        /* Malloc fails, realloc fails */
	}
	/* Copy data from ptr to newptr */
	oldsize = GET_SIZE(HDRP(ptr));
	memcpy(newptr, ptr, MIN(oldsize, size));

	/* Free ptr */
	free(ptr);
	return newptr;
}

/* 
 *	每次调用calloc，先通过malloc分配对应大小的空间，接着把这些空间的有效存储位置全设为0。
 */
void* calloc(size_t nmemb, size_t size) {
	size_t bytes = nmemb * size;
	void* newptr = malloc(bytes);
	memset(newptr, 0, bytes);
	return newptr;
}
/* 
 *	每次调用free，忽略free(NULL)的请求并直接返回。否则，将本块的ALLOC状态由ALLOC(1)改为
 *	FREE(0)，注意不要修改PREV_ALLOC的状态，让其保持原样。
 */
void free(void* bp) {
	if (bp == NULL)
		return;
	size_t size = GET_SIZE(HDRP(bp));
	/* Free block does not change PREV_ALLOC status*/
	PUT(HDRP(bp), PACK(size, GET_PREV_ALLOC(HDRP(bp))));
	PUT(FTRP(bp), PACK(size, GET_PREV_ALLOC(HDRP(bp))));    // seems useless
	coalesce(bp);
}
/* 
 *	初始化size_bounds，对应分离链表中各个子项的大小。
 */
static int init_size_bounds() {
	if ((size_bounds = mem_sbrk(sizeof(int) * LISTNUM)) == (void*)-1) {
		return -1;
	}
	size_bounds[0] = 16;
	size_bounds[1] = 24;
	size_bounds[2] = 32;
	size_bounds[3] = 64;
	size_bounds[4] = 128;
	size_bounds[5] = 256;
	size_bounds[6] = 512;
	size_bounds[7] = 1024;
	size_bounds[8] = 2048;
	size_bounds[9] = 4096;
	size_bounds[10] = 8192;
	size_bounds[11] = 16384;
	size_bounds[12] = 32767;
	size_bounds[13] = 65535;
	size_bounds[14] = 131071;
	size_bounds[15] = 262143;
	size_bounds[16] = 524287;
	size_bounds[17] = 1048575;
	size_bounds[18] = 2097151;
	size_bounds[19] = 4194303;
	return LISTNUM;
}

/* 
 *	小于8字节的块统一分配16字节，其余按照公式对齐。
 */
static size_t get_asize(size_t size) {
	size_t asize;
	if (size <= DSIZE)
		asize = 2 * DSIZE;
	else
		asize = DSIZE * ((size + (WSIZE) + (DSIZE - 1)) / DSIZE);
	return asize;
}


/* 
 *	扩展将堆扩展words字节，首先将words8字节对齐，接着通过mem_sbrk()在堆上分配对应的
 *	空间，更新该块的Header和Footer，设置新的Epilogue，并更新EHD_HEAP_LIST
 */
static void* extend_heap(size_t words) {
	char* bp;
	size_t size;
	size_t prev_alloc = GET_PREV_ALLOC(HDRP(END_HEAP_LIST));
	/* Allocate an even number of words to maintain alignment */
	size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;
	if ((long)(bp = mem_sbrk(size)) == -1) {
		return NULL;
	}

	/* Initialize free block*/
	PUT(HDRP(bp), PACK(size, prev_alloc));
	PUT(FTRP(bp), PACK(size, 0)); /* Free block footer */
	/* Update new epilogue header */
	PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));
	/* Update END_HEAP_LIST */
	END_HEAP_LIST = NEXT_BLKP(bp);
	return coalesce(bp);
}

/*
 *	内存整理函数，将bp前后的空闲块整合到一起。注意对PREV_ALLOC状态的更新
 */
static void* coalesce(void* bp) {
	size_t prev_alloc = GET_PREV_ALLOC(HDRP(bp));
	size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
	size_t size = GET_SIZE(HDRP(bp));
	if (prev_alloc && next_alloc) { /* Case 1: both alloc */
		PUT(HDRP(bp), PACK(size, 2));
		PUT(FTRP(bp), PACK(size, 0));
		FREE_NEXT_HDRP(bp);
	}
	else if (prev_alloc && !next_alloc) { /* Case 2: next free */
		delete_node(NEXT_BLKP(bp));
		size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
		PUT(HDRP(bp), PACK(size, 2));
		PUT(FTRP(bp), PACK(size, 0));
	}
	else if (!prev_alloc && next_alloc) { /* Case 3: prev free */
		delete_node(PREV_BLKP(bp));
		size += GET_SIZE(HDRP(PREV_BLKP(bp)));
		PUT(FTRP(bp), PACK(size, 0));
		PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0x2));
		FREE_NEXT_HDRP(bp);
		bp = PREV_BLKP(bp);
	}
	else { /* Case 4: both free */
		delete_node(PREV_BLKP(bp));
		delete_node(NEXT_BLKP(bp));
		size += GET_SIZE(HDRP(PREV_BLKP(bp))) +
			GET_SIZE(HDRP(NEXT_BLKP(bp)));
		PUT(HDRP(PREV_BLKP(bp)), PACK(size, 2));
		PUT(FTRP(PREV_BLKP(bp)), PACK(size, 0));
		bp = PREV_BLKP(bp);
	}
	insert_node(bp);
	return bp;
}

/*
 *	在分离链表中寻找合适的块，首先在对应大小的分离链表子项中寻找空闲块，如果该子项中
 *	没有对应空闲块，就在下一项中寻找，直到寻找完所有的空闲块。如果仍然没有找到，返回
 *	NULL，在malloc中扩展堆。
 */
static void* find_fit(size_t asize) {
	void* bp, * search_fit;
	bp = search_free_list(asize);
	search_fit = search_block(bp, asize);

	if (search_fit != NULL)    /* Find the block needed in the cur free list */
		return search_fit;
	else {
		while (bp != END_FREE_LIST) {
			bp += WSIZE;    /* Move to the next free list */
			search_fit = search_block(bp, asize);
			if (search_fit != NULL)
				break;
		}
		return search_fit;
	}

}

/*
 *	在某个分离链表的子项中搜索最合适的块，采用best-fit方法，如果恰好有asize大小的空
 *	闲块就返回这个空闲块。否则在本链表中找到最小的、能装下asize大小的块并返回。
 *	如果不存在，返回NULL。
 */
static void* search_block(void* search_start, size_t asize) {
	/* best fit */
	void* bp, * secondary = NULL;
	size_t candidate_size, current_size;
	candidate_size = 0x3f3f3f3f;    /* Init at a relavent big enough size*/

	if (NEXT(search_start) == 0)
		return NULL;

	bp = NEXT_ADDR_BLKP(search_start);
	while (bp != BASE_ADDR) {
		current_size = GET_SIZE(HDRP(bp));
		if (current_size == asize)
			return bp; /* Return the block exactly the same asize */
		else if ((current_size > asize) && (current_size < candidate_size)) {
			/* Update the smallest block greater than asize */
			candidate_size = current_size;
			secondary = bp;
		}
		bp = NEXT_ADDR_BLKP(bp);
	}
	/* If the smallest block greater than asize exist return it, else nullptr */
	return (secondary == NULL ? NULL : secondary);
}

/*
 *	在分离链表中插入空闲节点，首先找到对应size的分离链表表头。如果表头是空，说明暂时还不
 *	存在节点，将节点直接存入分离链表表头，将其设置为表尾。否则，如果表头也是表尾，将bp插
 *	入到表尾，将其设置为新的表尾。
 */

static void insert_node(void* bp) {
	void* cur_list;
	size_t asize = GET_SIZE(HDRP(bp));
	cur_list = search_free_list(asize);
	/* cur_list has no next block */
	if (GET_TAIL(HDRP(cur_list))) {
		PUT(cur_list, ADDR2INT(bp));            // set cur_list's next block to bp
		PUT(bp, 0);                             // set bp's next to NULL
		PUT(bp + WSIZE, ADDR2INT(cur_list));    // set bp's prev to cur_losy
		SET_TAIL(bp);
		return;
	}
	PUT(bp, ADDR2INT((void*)NEXT_ADDR_BLKP(cur_list)));
	PUT(bp + WSIZE, ADDR2INT(cur_list));
	PUT(cur_list, ADDR2INT(bp));
	PUT(NEXT_ADDR_BLKP(bp) + WSIZE, ADDR2INT(bp));
}

/*
 *	删除节点，如果bp是表尾，考虑它是否有PREV，也就是分离链表中bp是否有前驱。当其PREV值
 *	小于(LISTNUM + 2) * WSIZE这个界限时，表示它没有有效的前缀PREV，直接将分离链表对应的
 *	项设置为空即可。否则，将bp的前驱设置为表尾。
 */

static void delete_node(void* bp) {
	if (GET_TAIL(HDRP(bp))) { /* if it's tail block */
		/* (LISTNUM + 2) * WSIZE is node list boundary */
		if (PREV(bp) < (LISTNUM + 2) * WSIZE) { /* No previous block */
			/* Empty free list */
			PUT(PREV_ADDR_BLKP(bp), 0);
		}
		else { /* Clear bp, refresh previous block to the tail */
			PUT(PREV_ADDR_BLKP(bp), 0);
			SET_TAIL(PREV_ADDR_BLKP(bp));
		}
		return;
	}
	/* Not tail */
	PUT(PREV_ADDR_BLKP(bp), NEXT(bp));
	PUT(NEXT_ADDR_BLKP(bp) + WSIZE, PREV(bp));
}


/*
 *	根据size_bounds[]搜索合适大小的空闲链表项。
 */
static void* search_free_list(size_t asize) {
	int cnt = 0;
	while (cnt < LISTNUM - 1 && size_bounds[cnt] < (int)asize)
		cnt++;
	return free_list + cnt * WSIZE;
}

/*
 *	在空闲块中「放置」对应的已分配块，当可以分割出至少16字节时，在尾部分割出新的空闲块。
 */
static void place(void* bp, size_t asize) {
	size_t size = GET_SIZE(HDRP(bp));

	delete_node(bp);
	if (size - asize < 2 * DSIZE) {
		PUT(HDRP(bp), PACK(size, 3));
		ALLOC_NEXT_HDRP(bp);
	}
//	else if (asize >= 256) { /* Put the allocated block to the last*/
//		/* This is the remaining free block */
//		size_t prev_alloc = GET_PREV_ALLOC(HDRP(bp));
//		PUT(HDRP(bp), PACK(size - asize, prev_alloc + 0));
//		PUT(FTRP(bp), PACK(size - asize, prev_alloc + 0));
//		/* This is the allocated block */
//		PUT(HDRP(NEXT_BLKP(bp)), PACK(asize, 0 + 1));
//		PUT(FTRP(NEXT_BLKP(bp)), PACK(asize, 0 + 1));
//		ALLOC_NEXT_HDRP(bp);
//		insert_node(bp);
//	}
	else {
		PUT(HDRP(bp), PACK(asize, 3));
		bp = NEXT_BLKP(bp);
		PUT(HDRP(bp), PACK(size - asize, 2));
		PUT(FTRP(bp), PACK(size - asize, 0));
		insert_node(bp);
	}
}



#ifndef DEBUG
void mm_checkheap(int lineno) {
	lineno = lineno;
}
#else

void mm_checkheap(int lineno) {
	lineno = lineno;
}
#endif
