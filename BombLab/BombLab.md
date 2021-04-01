## BombLab

首先，观察$\tt bomb.c$，我们发现炸弹一共有六个部分，每个部分需要输入一定的数据作为答案才能解开并进入下一阶段。六个部分分别对应$\tt phase\_1 \cdots phase\_6$.

通过调用$\tt \text{objdump -d bomb >bomb.s}$将二进制文件$\tt bomb$反汇编，并将反汇编得到的汇编代码存储在$\tt bomb.s$中。

#### $\large \tt phase\_1$

在汇编代码中通过搜索定位$\tt phase\_1$，找到如下所示的汇编代码：

```assembly
000000000000130d <phase_1>:
    130d:	48 83 ec 08          	sub    $0x8,%rsp
    1311:	48 8d 35 58 1a 00 00 	lea    0x1a58(%rip),%rsi  # 答案所在的位置
    1318:	e8 fc 04 00 00       	callq  1819 <strings_not_equal>
    131d:	85 c0                	test   %eax,%eax
    131f:	75 05                	jne    1326 <phase_1+0x19>
    1321:	48 83 c4 08          	add    $0x8,%rsp
    1325:	c3                   	retq   
    1326:	e8 0b 08 00 00       	callq  1b36 <explode_bomb>
    132b:	eb f4                	jmp    1321 <phase_1+0x14>
```

从函数名称$\tt strings\_not\_equal$我们不难判断这是一个判断字符串相等的函数，于是$\tt lea\quad 0x1a58(\%rip)$这条指令显然是一个将答案字符串传递到参数传递寄存器中的语句。

在$\tt 0x1318$处设置断点，通过$\tt print (char*)(\$rsi)$查看$\tt \%rsi$的值，得到字符串：$\tt \text{"When I get angry, Mr. Bigglesworth gets upset."}$. 这就是答案。

#### $\large \tt phase\_2$

在汇编代码中通过搜索定位$\tt phase\_2$，找到如下所示的汇编代码：

```assembly
000000000000132d <phase_2>:
    132d:	53                   	push   %rbx
    132e:	48 83 ec 20          	sub    $0x20,%rsp
    1332:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1339:	00 00 
    133b:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1340:	31 c0                	xor    %eax,%eax
    1342:	48 89 e6             	mov    %rsp,%rsi
    1345:	e8 6c 08 00 00       	callq  1bb6 <read_six_numbers>
    
    134a:	83 3c 24 00          	cmpl   $0x0,(%rsp)			# 第一个数必须为0
    134e:	75 07                	jne    1357 <phase_2+0x2a>
    1350:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)		# 第二个数必须为1
    1355:	74 05                	je     135c <phase_2+0x2f>
    1357:	e8 da 07 00 00       	callq  1b36 <explode_bomb>
    
    135c:	bb 02 00 00 00       	mov    $0x2,%ebx			# ebx = i from 2 to 5
    1361:	eb 03                	jmp    1366 <phase_2+0x39>
    1363:	83 c3 01             	add    $0x1,%ebx			# i++
    1366:	83 fb 05             	cmp    $0x5,%ebx			# i<=5
    1369:	7f 24                	jg     138f <phase_2+0x62>
    136b:	48 63 c3             	movslq %ebx,%rax
    136e:	8d 53 fe             	lea    -0x2(%rbx),%edx		# edx = ebx - 2
    1371:	48 63 d2             	movslq %edx,%rdx
    1374:	8b 0c 94             	mov    (%rsp,%rdx,4),%ecx	# arr[i-2]
    1377:	8d 53 ff             	lea    -0x1(%rbx),%edx
    137a:	48 63 d2             	movslq %edx,%rdx
    137d:	8b 14 94             	mov    (%rsp,%rdx,4),%edx	# arr[i-1]
    1380:	8d 14 4a             	lea    (%rdx,%rcx,2),%edx	# arr[i-1] + 2*arr[i-2]
    1383:	39 14 84             	cmp    %edx,(%rsp,%rax,4)
    1386:	74 db                	je     1363 <phase_2+0x36>
    1388:	e8 a9 07 00 00       	callq  1b36 <explode_bomb>
    138d:	eb d4                	jmp    1363 <phase_2+0x36>
    138f:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1394:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    139b:	00 00 
    139d:	75 06                	jne    13a5 <phase_2+0x78>
    139f:	48 83 c4 20          	add    $0x20,%rsp
    13a3:	5b                   	pop    %rbx
    13a4:	c3                   	retq   
    13a5:	e8 36 fb ff ff       	callq  ee0 <__stack_chk_fail@plt>
```

```assembly
0000000000001bb6 <read_six_numbers>:
    1bb6:	48 83 ec 08          	sub    $0x8,%rsp
    1bba:	48 89 f2             	mov    %rsi,%rdx
    1bbd:	48 8d 76 14          	lea    0x14(%rsi),%rsi
    1bc1:	48 8d 42 10          	lea    0x10(%rdx),%rax
    1bc5:	48 8d 4a 04          	lea    0x4(%rdx),%rcx
    1bc9:	56                   	push   %rsi
    1bca:	50                   	push   %rax
    1bcb:	4c 8d 4a 0c          	lea    0xc(%rdx),%r9
    1bcf:	4c 8d 42 08          	lea    0x8(%rdx),%r8
    1bd3:	48 8d 35 e2 14 00 00 	lea    0x14e2(%rip),%rsi      
    1bda:	b8 00 00 00 00       	mov    $0x0,%eax
    1bdf:	e8 ac f3 ff ff       	callq  f90 <__isoc99_sscanf@plt>
    1be4:	48 83 c4 10          	add    $0x10,%rsp
    1be8:	83 f8 05             	cmp    $0x5,%eax
    1beb:	7e 05                	jle    1bf2 <read_six_numbers+0x3c>
    1bed:	48 83 c4 08          	add    $0x8,%rsp
    1bf1:	c3                   	retq   
    1bf2:	e8 3f ff ff ff       	callq  1b36 <explode_bomb>
```

首先，这个题的输入是通过$\tt read\_six\_numbers$这个函数完成的，我们需要输入六个数据来解开这个炸弹。如果对要输入什么类型的数据，多少个数据感到疑惑，可以通过在读取函数$\tt \text{__isoc99_sscanf@plt}$中设置断点，接着在这个函数中逐步单步运行，就可以在$\tt gdb$的提示中看到待输入的数据的数量和格式。或者研究在调用这个函数之前传递进入的字符串，如这里的$\tt \text{0x14e2(%rip)}$，这个字符串就是对应的格式控制语句。

观察到函数将$\tt \%rsp$作为参数传递到了$\tt\text{read_six_numbers}$中，猜测读取的六个数据将存放在$\tt \%rsp$中。不妨在$\tt ans.txt$中随便写6个数据作为输入，在读取完毕之后，通过$\tt gdb$观察$\tt \%rsp$中的数据来验证这一点。确实是这样的。

接着函数执行$\tt\text{cmpl 0 (%rsp)}$，这更加当我们确定了数据的格式是整数，判断输入的第一个数是否为0，结合下一条语句来看，如果不为0就会让炸弹爆炸，于是我们确定第一个数为0。结束程序，将第一个数修改为0，继续。类似地，我们可以判断出第二个数必须为1.

接着就是一个循环，研究$\tt \%ebx$的值我们不难发现这一段对应的是一个形如$\tt \text{(for i=2;i<=5;++i)}$的循环，结合上面的对第一个和第二数的确定，推测这里是帮我们计算出后续的数。研究发现，这是就是在计算$\tt arr[i]=arr[i{-}1] + 2*arr[i-2]$，于是我们得到答案$\tt 0, 1,1,3,5,11$

```assembly
    135c:	bb 02 00 00 00       	mov    $0x2,%ebx			# ebx = i from 2 to 5
    1361:	eb 03                	jmp    1366 <phase_2+0x39>
    1363:	83 c3 01             	add    $0x1,%ebx			# i++
    1366:	83 fb 05             	cmp    $0x5,%ebx			# i<=5
    1369:	7f 24                	jg     138f <phase_2+0x62>
    136b:	48 63 c3             	movslq %ebx,%rax
    136e:	8d 53 fe             	lea    -0x2(%rbx),%edx		# edx = ebx - 2
    1371:	48 63 d2             	movslq %edx,%rdx
    1374:	8b 0c 94             	mov    (%rsp,%rdx,4),%ecx	# arr[i-2]
    1377:	8d 53 ff             	lea    -0x1(%rbx),%edx
    137a:	48 63 d2             	movslq %edx,%rdx
    137d:	8b 14 94             	mov    (%rsp,%rdx,4),%edx	# arr[i-1]
    1380:	8d 14 4a             	lea    (%rdx,%rcx,2),%edx	# arr[i-1] + 2*arr[i-2]
```

#### $\large \tt phase\_3$

```assembly
00000000000013aa <phase_3>:
    13aa:	48 83 ec 28          	sub    $0x28,%rsp
    13ae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    13b5:	00 00 
    13b7:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    13bc:	31 c0                	xor    %eax,%eax
    13be:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx		
    13c3:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx		# 读取之后存放的地方
    13c8:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
    13cd:	48 8d 35 f1 1c 00 00 	lea    0x1cf1(%rip),%rsi     # 文件流位置
    13d4:	e8 b7 fb ff ff       	callq  f90 <__isoc99_sscanf@plt>
    13d9:	83 f8 02             	cmp    $0x2,%eax			# 参数至少要3个
    13dc:	7e 1f                	jle    13fd <phase_3+0x53>
    13de:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)		# 第一个数arr[0]必须<=7
    13e3:	0f 87 92 00 00 00    	ja     147b <phase_3+0xd1>
    13e9:	8b 44 24 0c          	mov    0xc(%rsp),%eax		# %eax = arr[0]
    13ed:	48 8d 15 dc 19 00 00 	lea    0x19dc(%rip),%rdx  # 2dd0 <_IO_stdin_used+0x1f0>
    13f4:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    13f8:	48 01 d0             	add    %rdx,%rax
    13fb:	ff e0                	jmpq   *%rax
    13fd:	e8 34 07 00 00       	callq  1b36 <explode_bomb>
    1402:	eb da                	jmp    13de <phase_3+0x34>
    1404:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1408:	05 b3 00 00 00       	add    $0xb3,%eax
    140d:	3d 08 07 00 00       	cmp    $0x708,%eax
    1412:	74 05                	je     1419 <phase_3+0x6f>
    1414:	e8 1d 07 00 00       	callq  1b36 <explode_bomb>
    1419:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    141e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1425:	00 00 
    1427:	75 61                	jne    148a <phase_3+0xe0>
    1429:	48 83 c4 28          	add    $0x28,%rsp
    142d:	c3                   	retq   
    142e:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1432:	05 29 03 00 00       	add    $0x329,%eax
    1437:	eb d4                	jmp    140d <phase_3+0x63>
    1439:	8b 44 24 10          	mov    0x10(%rsp),%eax
    143d:	05 f6 02 00 00       	add    $0x2f6,%eax
    1442:	eb c9                	jmp    140d <phase_3+0x63>
    1444:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1448:	05 13 02 00 00       	add    $0x213,%eax
    144d:	eb be                	jmp    140d <phase_3+0x63>
    144f:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1453:	05 76 01 00 00       	add    $0x176,%eax
    1458:	eb b3                	jmp    140d <phase_3+0x63>
    145a:	8b 44 24 10          	mov    0x10(%rsp),%eax
    145e:	05 0e 01 00 00       	add    $0x10e,%eax
    1463:	eb a8                	jmp    140d <phase_3+0x63>
    1465:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1469:	05 84 03 00 00       	add    $0x384,%eax
    146e:	eb 9d                	jmp    140d <phase_3+0x63>
    1470:	8b 44 24 10          	mov    0x10(%rsp),%eax		# %rax=arr[1]
    1474:	05 90 03 00 00       	add    $0x390,%eax
    1479:	eb 92                	jmp    140d <phase_3+0x63>
    147b:	e8 b6 06 00 00       	callq  1b36 <explode_bomb>
    1480:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    1485:	e8 46 fb ff ff       	callq  fd0 <exit@plt>
    148a:	e8 51 fa ff ff       	callq  ee0 <__stack_chk_fail@plt>

```

使用同样的方法我们发现，这里需要读取三个整数，并且还显式地通过$\tt\text{cmp \$0x2, \%rax}$来确认必须要输入三个参数才不会引爆炸弹。

同时，第一个参数必须小于等于7。不妨先修改第一个参数使之等于7。

接着追踪程序运行，发现在$\tt 0x1470$处将$\tt\text{%eax=arr[1]}$，接着有$\tt\text{%eax+=0x390}$，然后跳转到$\tt 0x140d$，要求使得$\tt\text{%eax ==0x708}$，于是我们反推得到$\tt arr[1]=888$. 这时候我们发现，破解完毕了。

观察代码中的下面这一段，我们不难发现事实上是根据第一个参数决定跳转到的位置，然后执行一系列操作，最后仍然会跳转到140d，并且要满足$\tt\text{%eax==0x708}$，根据对应的第一个参数的值，修改第二个参数以及第三个参数的值即可。只有部分情况会使用到第三个参数。

```assembly
    13e9:	8b 44 24 0c          	mov    0xc(%rsp),%eax		# %eax = arr[0]
    13ed:	48 8d 15 dc 19 00 00 	lea    0x19dc(%rip),%rdx  
    13f4:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    13f8:	48 01 d0             	add    %rdx,%rax
    13fb:	ff e0                	jmpq   *%rax
```

#### $\large \tt phase\_4$

```assembly
000000000000148f <func4>:
    148f:	53                   	push   %rbx
    1490:	89 d0                	mov    %edx,%eax
    1492:	29 f0                	sub    %esi,%eax
    1494:	89 c3                	mov    %eax,%ebx
    1496:	c1 eb 1f             	shr    $0x1f,%ebx
    1499:	01 c3                	add    %eax,%ebx
    149b:	d1 fb                	sar    %ebx
    149d:	01 f3                	add    %esi,%ebx
    149f:	39 fb                	cmp    %edi,%ebx
    14a1:	7f 08                	jg     14ab <func4+0x1c>
    14a3:	39 fb                	cmp    %edi,%ebx
    14a5:	7c 10                	jl     14b7 <func4+0x28>
    14a7:	89 d8                	mov    %ebx,%eax
    14a9:	5b                   	pop    %rbx
    14aa:	c3                   	retq   
    14ab:	8d 53 ff             	lea    -0x1(%rbx),%edx
    14ae:	e8 dc ff ff ff       	callq  148f <func4>
    14b3:	01 c3                	add    %eax,%ebx
    14b5:	eb f0                	jmp    14a7 <func4+0x18>
    14b7:	8d 73 01             	lea    0x1(%rbx),%esi
    14ba:	e8 d0 ff ff ff       	callq  148f <func4>
    14bf:	01 c3                	add    %eax,%ebx
    14c1:	eb e4                	jmp    14a7 <func4+0x18>

00000000000014c3 <phase_4>:
    14c3:	48 83 ec 18          	sub    $0x18,%rsp
    14c7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    14ce:	00 00 
    14d0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    14d5:	31 c0                	xor    %eax,%eax
    14d7:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    14dc:	48 89 e2             	mov    %rsp,%rdx
    14df:	48 8d 35 e2 1b 00 00 	lea    0x1be2(%rip),%rsi       
    14e6:	e8 a5 fa ff ff       	callq  f90 <__isoc99_sscanf@plt>
    14eb:	83 f8 02             	cmp    $0x2,%eax					# 检查是否输入2个数据
    14ee:	75 0c                	jne    14fc <phase_4+0x39>
    14f0:	8b 04 24             	mov    (%rsp),%eax					
    14f3:	85 c0                	test   %eax,%eax					
    14f5:	78 05                	js     14fc <phase_4+0x39>			# 检查是否为非负数
    14f7:	83 f8 0e             	cmp    $0xe,%eax				   # 检查是否<=0xe
    14fa:	7e 05                	jle    1501 <phase_4+0x3e>
    14fc:	e8 35 06 00 00       	callq  1b36 <explode_bomb>
    1501:	ba 0e 00 00 00       	mov    $0xe,%edx					# 参数2=14
    1506:	be 00 00 00 00       	mov    $0x0,%esi					# 参数3=0
    150b:	8b 3c 24             	mov    (%rsp),%edi					# 参数1=arr[0]
    150e:	e8 7c ff ff ff       	callq  148f <func4>
    1513:	83 f8 12             	cmp    $0x12,%eax					# 返回值是否为0x12
    1516:	75 07                	jne    151f <phase_4+0x5c>
    1518:	83 7c 24 04 12       	cmpl   $0x12,0x4(%rsp)				# arr[1]必须为0x12
    151d:	74 05                	je     1524 <phase_4+0x61>
    151f:	e8 12 06 00 00       	callq  1b36 <explode_bomb>
    1524:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1529:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1530:	00 00 
    1532:	75 05                	jne    1539 <phase_4+0x76>
    1534:	48 83 c4 18          	add    $0x18,%rsp
    1538:	c3                   	retq   
    1539:	e8 a2 f9 ff ff       	callq  ee0 <__stack_chk_fail@plt>

```

运用类似的方法我们确定这里要输入两个整数数据，取值范围为$\tt[0,0xe]$。这个函数是要让第一个数据调用$\tt fun4$，并且让返回值等于$\tt 0x12$。一种最简单的方法，依次尝试数据，令第一个数据为$\tt 0,1,2,\ldots,0xe$，调用函数得到返回值，直到返回值为$\tt0x12$。第二个参数必须为$\tt 0x12$。

或者研究一下$\tt fun4$，其汇编代码翻译成$\tt c$形如下图所示，

并且调用时有$\tt\text{x=arr[0],y=0,z=14}$

```c
int func(int x, int y, int z){
	// x in %edi, y in %esi, z in %edx
    int ans = z - y;
    int tmp = (ans >> 31) + ans;
    tmp >>= 1;
    tmp += y;
    if(tmp > x){
        z = tmp - 1;
        ans = func(x, y, z);
        tmp += ans;
    }
    else if(tmp < x){
        y = tmp + 1;
        ans = func(x, y, z);
        tmp += ans;
    }
     ans = tmp;
     return ans;
}
```

#### $\tt \large phase\_5$

```assembly
000000000000153e <phase_5>:
    153e:	53                   	push   %rbx
    153f:	48 83 ec 10          	sub    $0x10,%rsp
    1543:	48 89 fb             	mov    %rdi,%rbx
    1546:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    154d:	00 00 
    154f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1554:	31 c0                	xor    %eax,%eax
    1556:	e8 a9 02 00 00       	callq  1804 <string_length>
    155b:	83 f8 06             	cmp    $0x6,%eax			# 输入的字符串的长度为6
    155e:	75 07                	jne    1567 <phase_5+0x29>
    1560:	b8 00 00 00 00       	mov    $0x0,%eax
    1565:	eb 23                	jmp    158a <phase_5+0x4c>
    1567:	e8 ca 05 00 00       	callq  1b36 <explode_bomb>
    156c:	eb f2                	jmp    1560 <phase_5+0x22>
    156e:	48 63 c8             	movslq %eax,%rcx
    1571:	0f b6 14 0b          	movzbl (%rbx,%rcx,1),%edx	  # arr[i]
    1575:	83 e2 0f             	and    $0xf,%edx			 # ascii与上15，模16
    1578:	48 8d 35 71 18 00 00 	lea    0x1871(%rip),%rsi      # 字典字符串
    157f:	0f b6 14 16          	movzbl (%rsi,%rdx,1),%edx	  # 将索引得到的字符取出
    1583:	88 54 0c 01          	mov    %dl,0x1(%rsp,%rcx,1)	  # 放到栈中的ans[i]处
    1587:	83 c0 01             	add    $0x1,%eax				
    158a:	83 f8 05             	cmp    $0x5,%eax
    158d:	7e df                	jle    156e <phase_5+0x30>
    158f:	c6 44 24 07 00       	movb   $0x0,0x7(%rsp)
    1594:	48 8d 7c 24 01       	lea    0x1(%rsp),%rdi
    1599:	48 8d 35 26 18 00 00 	lea    0x1826(%rip),%rsi       
    15a0:	e8 74 02 00 00       	callq  1819 <strings_not_equal>
    15a5:	85 c0                	test   %eax,%eax
    15a7:	75 16                	jne    15bf <phase_5+0x81>
    15a9:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    15ae:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    15b5:	00 00 
    15b7:	75 0d                	jne    15c6 <phase_5+0x88>
    15b9:	48 83 c4 10          	add    $0x10,%rsp
    15bd:	5b                   	pop    %rbx
    15be:	c3                   	retq   
    15bf:	e8 72 05 00 00       	callq  1b36 <explode_bomb>
    15c4:	eb e3                	jmp    15a9 <phase_5+0x6b>
    15c6:	e8 15 f9 ff ff       	callq  ee0 <__stack_chk_fail@plt>
```

这里要我们输入一个长度为6的字符串，根据这个字符串的每个字符的$\tt ascii$码进行某些处理之后作为$\tt index$，根据这个$\tt index$来索引$\tt\text{0x1871(%rip)}$处的字符串中的字符，将得到的字符串与存储在$\tt\text{0x1826(%rip)}$处的值进行字符串比较，如果成功，则拆解成功。

注意$\tt\%rip$的值会随着程序运行随时变化，故而一定要到运行到对应的语句时才能用$\tt gdb$查看对应字符串的值。这里$\tt\text{0x1871(%rip)}$的字符串是：$\tt \text{"maduiersnfotvbylSo you think you can stop the bomb with ctrl-c, do you?"}$，储存在$$\tt\text{0x1826(%rip)}$$处的字符串是：$\tt\text{flyers}$.

考虑下面片段所示的代码，这个片段利用我们提交的字符串的每个字符$\mod 16$之后的值作为偏置，在$$\tt\text{0x1871(%rip)}$$处的字符串中索引对应的字符，并将字符写入到$\tt\text{%rsp+1+i}$。这是一个$\tt i \in[0,5]$的循环，共执行6次。

```assembly
 	156e:	48 63 c8             	movslq %eax,%rcx
    1571:	0f b6 14 0b          	movzbl (%rbx,%rcx,1),%edx
    1575:	83 e2 0f             	and    $0xf,%edx
    1578:	48 8d 35 71 18 00 00 	lea    0x1871(%rip),%rsi        # 2df0 <array.3421>
    157f:	0f b6 14 16          	movzbl (%rsi,%rdx,1),%edx
    1583:	88 54 0c 01          	mov    %dl,0x1(%rsp,%rcx,1)
    1587:	83 c0 01             	add    $0x1,%eax
    158a:	83 f8 05             	cmp    $0x5,%eax
    158d:	7e df                	jle    156e <phase_5+0x30>
```

考虑如何构造我们的字符串，$\tt a$对应的$\tt ascii$码是97，模以16之后余1，于是$\tt a$字符指示对应字符串中偏移了1位的字符：$\tt m\underline  adui\ldots you?$。类似的我们可以在这个字符串中找到$\tt flyers$的各个字符对应的位置，计算出偏置，就可以回推处原字符串的值。

这里所需要的字符恰好能够在前16个偏置内找到，不用担心字符出现映射混乱的问题。

#### $\tt \large phase\_6$

```assembly
00000000000015cb <phase_6>:
    15cb:	41 54                	push   %r12
    15cd:	55                   	push   %rbp
    15ce:	53                   	push   %rbx
    15cf:	48 83 ec 60          	sub    $0x60,%rsp
    15d3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    15da:	00 00 
    15dc:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    15e1:	31 c0                	xor    %eax,%eax
    15e3:	48 89 e6             	mov    %rsp,%rsi
    15e6:	e8 cb 05 00 00       	callq  1bb6 <read_six_numbers>	# 读6个数
    15eb:	bd 00 00 00 00       	mov    $0x0,%ebp
    15f0:	eb 27                	jmp    1619 <phase_6+0x4e>
    15f2:	e8 3f 05 00 00       	callq  1b36 <explode_bomb>
    15f7:	eb 33                	jmp    162c <phase_6+0x61>
    
    15f9:	83 c3 01             	add    $0x1,%ebx			
    15fc:	83 fb 05             	cmp    $0x5,%ebx
    15ff:	7f 15                	jg     1616 <phase_6+0x4b>
    1601:	48 63 c5             	movslq %ebp,%rax
    1604:	48 63 d3             	movslq %ebx,%rdx			# rdx = rax + 1
    1607:	8b 3c 94             	mov    (%rsp,%rdx,4),%edi	
    160a:	39 3c 84             	cmp    %edi,(%rsp,%rax,4)
    160d:	75 ea                	jne    15f9 <phase_6+0x2e>
    160f:	e8 22 05 00 00       	callq  1b36 <explode_bomb>
    1614:	eb e3                	jmp    15f9 <phase_6+0x2e>
    1616:	44 89 e5             	mov    %r12d,%ebp			# ebp = r12d
    1619:	83 fd 05             	cmp    $0x5,%ebp
    161c:	7f 17                	jg     1635 <phase_6+0x6a>
    161e:	48 63 c5             	movslq %ebp,%rax
    # 判定读取的六个数是否都在[1,6]内
    1621:	8b 04 84             	mov    (%rsp,%rax,4),%eax	# 读取出来的数
    1624:	83 e8 01             	sub    $0x1,%eax			# -1之后<=5，原数<=6
    1627:	83 f8 05             	cmp    $0x5,%eax
    162a:	77 c6                	ja     15f2 <phase_6+0x27>	# 无符号操作，原数>=1
    162c:	44 8d 65 01          	lea    0x1(%rbp),%r12d		# r12d +=1
    1630:	44 89 e3             	mov    %r12d,%ebx			# ebx = r12d = ebp +1
    1633:	eb c7                	jmp    15fc <phase_6+0x31>
    # arr[i] = 7 - arr[i]
    1635:	b8 00 00 00 00       	mov    $0x0,%eax
    163a:	eb 11                	jmp    164d <phase_6+0x82>
    163c:	48 63 c8             	movslq %eax,%rcx
    163f:	ba 07 00 00 00       	mov    $0x7,%edx
    1644:	2b 14 8c             	sub    (%rsp,%rcx,4),%edx
    1647:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
    164a:	83 c0 01             	add    $0x1,%eax
    164d:	83 f8 05             	cmp    $0x5,%eax
    1650:	7e ea                	jle    163c <phase_6+0x71>
    # 根据arr[i]调整0x20(%rsp,%rcx,8)中的第一个元素在答案中出现的次序
    1652:	be 00 00 00 00       	mov    $0x0,%esi
    1657:	eb 17                	jmp    1670 <phase_6+0xa5>
    1659:	48 8b 52 08          	mov    0x8(%rdx),%rdx			# rdx指向的数组每次前移4
    165d:	83 c0 01             	add    $0x1,%eax
    1660:	48 63 ce             	movslq %esi,%rcx
    1663:	39 04 8c             	cmp    %eax,(%rsp,%rcx,4)		# arr[i]中存储的顺序
    1666:	7f f1                	jg     1659 <phase_6+0x8e>		# 内层循环
    1668:	48 89 54 cc 20       	mov    %rdx,0x20(%rsp,%rcx,8)	# 将当前位置对应的数压入rsp
    166d:	83 c6 01             	add    $0x1,%esi
    1670:	83 fe 05             	cmp    $0x5,%esi
    1673:	7f 0e                	jg     1683 <phase_6+0xb8>
    1675:	b8 01 00 00 00       	mov    $0x1,%eax
    167a:	48 8d 15 8f 3a 20 00 	lea    0x203a8f(%rip),%rdx        # 205110 <node1>
    1681:	eb dd                	jmp    1660 <phase_6+0x95>		 # 外层循环
    
    1683:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1688:	48 89 d9             	mov    %rbx,%rcx
    168b:	b8 01 00 00 00       	mov    $0x1,%eax
    1690:	eb 12                	jmp    16a4 <phase_6+0xd9>
    1692:	48 63 d0             	movslq %eax,%rdx
    1695:	48 8b 54 d4 20       	mov    0x20(%rsp,%rdx,8),%rdx
    169a:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    169e:	83 c0 01             	add    $0x1,%eax
    16a1:	48 89 d1             	mov    %rdx,%rcx
    16a4:	83 f8 05             	cmp    $0x5,%eax
    16a7:	7e e9                	jle    1692 <phase_6+0xc7>
    16a9:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
    16b0:	00 
    16b1:	bd 00 00 00 00       	mov    $0x0,%ebp
    16b6:	eb 07                	jmp    16bf <phase_6+0xf4>
    16b8:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    16bc:	83 c5 01             	add    $0x1,%ebp
    16bf:	83 fd 04             	cmp    $0x4,%ebp
    16c2:	7f 11                	jg     16d5 <phase_6+0x10a>
    16c4:	48 8b 43 08          	mov    0x8(%rbx),%rax
    16c8:	8b 00                	mov    (%rax),%eax
    16ca:	39 03                	cmp    %eax,(%rbx)
    16cc:	7d ea                	jge    16b8 <phase_6+0xed>
    16ce:	e8 63 04 00 00       	callq  1b36 <explode_bomb>
    16d3:	eb e3                	jmp    16b8 <phase_6+0xed>
    16d5:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    16da:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    16e1:	00 00 
    16e3:	75 09                	jne    16ee <phase_6+0x123>
    16e5:	48 83 c4 60          	add    $0x60,%rsp
    16e9:	5b                   	pop    %rbx
    16ea:	5d                   	pop    %rbp
    16eb:	41 5c                	pop    %r12
    16ed:	c3                   	retq   
    16ee:	e8 ed f7 ff ff       	callq  ee0 <__stack_chk_fail@plt>
```

根据$\tt 0x1621-0x1627$行可以判定，这六个数都必须在$\tt[1,6]$之间。

在$\tt 0x15f9-0x1633$之间存在一个循环，由$\tt \%ebx$作为循环变量，这个循环检查输入数组$\tt arr[]$中是否存在连续的两个相等的变量，如果存在将会引爆炸弹。

接下来在$\tt 0x1635-0x1650$之间存在一个循环，由$\tt \%rax$作为循环变量，将输入数组$\tt arr[i]$的值修改为$\tt 7-arr[i]$。

接着在 $\tt 0x167a$处，$\tt \text{0x203a8f(%rip),%rdx}$将$\tt \%rdx$的值改成了某个数组，这一段程序旨在根据$\tt arr[i]$的值调整$\tt \%rdx$指向的数组中按照某种顺序取出某些特定位置的元素，再将这些元素存放到$\tt \text{0x20(%rsp,%rcx,8)}$中。我们在执行完$\tt 0x167a$之后，可以通过$\tt gdb$观察$\tt \%rdx$每隔16位的值，得到元素排列$\tt \text{631,107,154,471,821,848}$。

这里需要特别注意为什么是16位，注意到$\tt 0x1569 \text{  mov 0x8(%rdx),%rdx}$，这里用的是$\tt mov$而不是$\tt lea$，于是这条语句的意思是将当前的$\tt\text{%rdx+8}$处的**值**取出来，再赋给$\tt \%rdx$。而研究$\tt\text{%rdx+8}$处的值我们发现它恰好就是$\tt\text{%rdx+16}$的地址，于是上述语句事实上每次移动了16位：

```assembly
(gdb) print *(int*) ($rdx)
$21 = 107
(gdb) print *(int*) ($rdx+16)
$22 = 154
(gdb) print *(int*)*(long*) ($rdx+8)
$23 = 154
```

最后在$\tt 0x16b1$之后，程序通过一个循环检查$\tt \text{0x20(%rsp,%rcx,8)}$中的元素是否是降序排列的。

于是我们根据元素排列$\tt \text{631,107,154,471,821,848}$调整我们的输入，结合$\tt 0x1650d$处的代码，我们知道这个循环事实上是通过一个外层循环从第一个数开始依次填写数据，内层循环决定这个被填写的数据是元素排列中的第几个元素。考虑到形成降序排列的要求，第一个元素需要是848，于是$\tt \text arr[0]=6$，这样就保证在内层循环中要一直遍历到$\tt \%eax==5$时才进行数据填写，也就是填写848。类似地，第二个元素需要是821，推出$\tt arr[1]=5$。 以此类推，得到$\tt arr[] = 6,5,1,4,3,2$。注意到我们之前对$\tt arr[i] = 7 - arr[i]$，于是得到答案为$\tt arr[]=1,2,6,3,4,5$.

#### $\tt \large Secret \;\;phase$

```assembly
0000000000001d3e <phase_defused>:
    1d3e:	48 83 ec 78          	sub    $0x78,%rsp
    1d42:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d49:	00 00 
    1d4b:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1d50:	31 c0                	xor    %eax,%eax
    1d52:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
    1d59:	00 
    1d5a:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
    1d5f:	bf 01 00 00 00       	mov    $0x1,%edi
    1d64:	e8 80 fc ff ff       	callq  19e9 <send_msg>
    1d69:	83 3d 9c 36 20 00 06 	cmpl   $0x6,0x20369c(%rip)        # 20540c <num_input_strings>
    1d70:	74 19                	je     1d8b <phase_defused+0x4d>
    1d72:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1d77:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1d7e:	00 00 
    1d80:	0f 85 84 00 00 00    	jne    1e0a <phase_defused+0xcc>
    1d86:	48 83 c4 78          	add    $0x78,%rsp
    1d8a:	c3                   	retq   
    1d8b:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    1d90:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
    1d95:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1d9a:	48 8d 35 71 13 00 00 	lea    0x1371(%rip),%rsi        # 3112 <array.3421+0x322>
    1da1:	48 8d 3d 68 37 20 00 	lea    0x203768(%rip),%rdi        # 205510 <input_strings+0xf0>
    1da8:	b8 00 00 00 00       	mov    $0x0,%eax
    1dad:	e8 de f1 ff ff       	callq  f90 <__isoc99_sscanf@plt>
    1db2:	83 f8 03             	cmp    $0x3,%eax
    1db5:	74 1a                	je     1dd1 <phase_defused+0x93>
    1db7:	48 8d 3d 12 12 00 00 	lea    0x1212(%rip),%rdi        # 2fd0 <array.3421+0x1e0>
    1dbe:	e8 fd f0 ff ff       	callq  ec0 <puts@plt>
    1dc3:	48 8d 3d 36 12 00 00 	lea    0x1236(%rip),%rdi        # 3000 <array.3421+0x210>
    1dca:	e8 f1 f0 ff ff       	callq  ec0 <puts@plt>
    1dcf:	eb a1                	jmp    1d72 <phase_defused+0x34>
    1dd1:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1dd6:	48 8d 35 63 11 00 00 	lea    0x1163(%rip),%rsi        # 2f40 <array.3421+0x150>
    1ddd:	e8 37 fa ff ff       	callq  1819 <strings_not_equal>
    1de2:	85 c0                	test   %eax,%eax
    1de4:	75 d1                	jne    1db7 <phase_defused+0x79>
    1de6:	48 8d 3d 83 11 00 00 	lea    0x1183(%rip),%rdi        # 2f70 <array.3421+0x180>
    1ded:	e8 ce f0 ff ff       	callq  ec0 <puts@plt>
    1df2:	48 8d 3d 9f 11 00 00 	lea    0x119f(%rip),%rdi        # 2f98 <array.3421+0x1a8>
    1df9:	e8 c2 f0 ff ff       	callq  ec0 <puts@plt>
    1dfe:	b8 00 00 00 00       	mov    $0x0,%eax
    1e03:	e8 36 f9 ff ff       	callq  173e <secret_phase>
    1e08:	eb ad                	jmp    1db7 <phase_defused+0x79>
    1e0a:	e8 d1 f0 ff ff       	callq  ee0 <__stack_chk_fail@plt>

```

研究$\tt bomb.s$中的$\tt phase\_defused$函数我们能发现$\tt secret\_phase$的入口。单步调试之后我们发现首先要在$\tt 0x1d69$处满足跳转条件才可能进入$\tt secret\_phase$，否则就会直接退出。在不同的阶段研究$\tt phase\_defused$并对比$\tt 0x20369c(\%rip)$后我们不难发现这个是输入的字符串的数量，或者说当前已经解开的阶段的数量。只有当6个阶段都解完了才能进入。

接着函数跳转到$\tt 0x1d8b$，继续单步运行我们发现函数又读取了某些数据。

- 在对应的位置观察$\tt  0x1371(\%rip)$我们发现这是一个字符串控制符号：

```assembly
(gdb) print (char*) ($rip + 0x1371)
$14 = ... "%d %d %s"
```

- 在对应的位置观察$\tt 0x203768(\%rip)$我们发现这就是$\tt phase\_4$我们输入的数据的前两个数：

```assembly
(gdb) print (char*) (%rip + 0x203768)
$15 = ... "11 18"
```

- 接着在读取完数据之后，会验证是否输入了3个数据。于是很自然地，我们修改答案文件中的第四行，随便添加一个字符串。

重新运行到这一步，接着跳转到$\tt 0x1dd1$。这里进行了字符串比较，$\tt 0x10(\%rsp)$处储存的就是我们随便添加的字符串，而$\tt 0x1163(\%rsp)$处储存的字符串就是答案：$\tt \text{IsLifeAlwaysThisHard0rIsItJu3tWhenYouAreAK1d}$。修改对应的字符串，我们可以进入$\tt secret\_phase$了。

```assembly
000000000000173e <secret_phase>:
    173e:	53                   	push   %rbx
    173f:	e8 b3 04 00 00       	callq  1bf7 <read_line>
    1744:	ba 0a 00 00 00       	mov    $0xa,%edx
    1749:	be 00 00 00 00       	mov    $0x0,%esi
    174e:	48 89 c7             	mov    %rax,%rdi
    1751:	e8 0a f8 ff ff       	callq  f60 <strtol@plt>
    1756:	48 89 c3             	mov    %rax,%rbx
    1759:	48 8d 3d 50 39 20 00 	lea    0x203950(%rip),%rdi        # 2050b0 <n1>
    1760:	e8 8e ff ff ff       	callq  16f3 <get_sum>
    1765:	39 d8                	cmp    %ebx,%eax
    1767:	74 05                	je     176e <secret_phase+0x30>
    1769:	e8 c8 03 00 00       	callq  1b36 <explode_bomb>
    176e:	48 8d 3d 2b 16 00 00 	lea    0x162b(%rip),%rdi        # 2da0 <_IO_stdin_used+0x1c0>
    1775:	e8 46 f7 ff ff       	callq  ec0 <puts@plt>
    177a:	e8 bf 05 00 00       	callq  1d3e <phase_defused>
    177f:	5b                   	pop    %rbx
    1780:	c3                   	retq   

```

类似的，我们仍然随便输入一个字符串，研究这个函数发现，其读入这个字符串，将其作为参数调用$\tt strtol$，然后研究其返回值是否与$\tt 0x203950(\%rip)$处的字符串调用$\tt get\_sum$的结果相等，如果相等则解开了炸弹。

根据函数名称$\tt strtol$我们猜测这个函数是把字符串转换为数字，试验一下果不其然。接着运行到$\tt 0x1765$处直接看$\tt get\_sum$函数的返回值：60。于是我们得到了答案字符串$\tt 60$。
