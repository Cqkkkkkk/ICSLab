
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400cb0 <_init>:
  400cb0:	48 83 ec 08          	sub    $0x8,%rsp
  400cb4:	48 8b 05 3d 43 20 00 	mov    0x20433d(%rip),%rax        # 604ff8 <__gmon_start__>
  400cbb:	48 85 c0             	test   %rax,%rax
  400cbe:	74 02                	je     400cc2 <_init+0x12>
  400cc0:	ff d0                	callq  *%rax
  400cc2:	48 83 c4 08          	add    $0x8,%rsp
  400cc6:	c3                   	retq   

Disassembly of section .plt:

0000000000400cd0 <.plt>:
  400cd0:	ff 35 32 43 20 00    	pushq  0x204332(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400cd6:	ff 25 34 43 20 00    	jmpq   *0x204334(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400cdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ce0 <strcasecmp@plt>:
  400ce0:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 605018 <strcasecmp@GLIBC_2.2.5>
  400ce6:	68 00 00 00 00       	pushq  $0x0
  400ceb:	e9 e0 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400cf0 <__errno_location@plt>:
  400cf0:	ff 25 2a 43 20 00    	jmpq   *0x20432a(%rip)        # 605020 <__errno_location@GLIBC_2.2.5>
  400cf6:	68 01 00 00 00       	pushq  $0x1
  400cfb:	e9 d0 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d00 <srandom@plt>:
  400d00:	ff 25 22 43 20 00    	jmpq   *0x204322(%rip)        # 605028 <srandom@GLIBC_2.2.5>
  400d06:	68 02 00 00 00       	pushq  $0x2
  400d0b:	e9 c0 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d10 <strncpy@plt>:
  400d10:	ff 25 1a 43 20 00    	jmpq   *0x20431a(%rip)        # 605030 <strncpy@GLIBC_2.2.5>
  400d16:	68 03 00 00 00       	pushq  $0x3
  400d1b:	e9 b0 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d20 <strncmp@plt>:
  400d20:	ff 25 12 43 20 00    	jmpq   *0x204312(%rip)        # 605038 <strncmp@GLIBC_2.2.5>
  400d26:	68 04 00 00 00       	pushq  $0x4
  400d2b:	e9 a0 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d30 <strcpy@plt>:
  400d30:	ff 25 0a 43 20 00    	jmpq   *0x20430a(%rip)        # 605040 <strcpy@GLIBC_2.2.5>
  400d36:	68 05 00 00 00       	pushq  $0x5
  400d3b:	e9 90 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d40 <puts@plt>:
  400d40:	ff 25 02 43 20 00    	jmpq   *0x204302(%rip)        # 605048 <puts@GLIBC_2.2.5>
  400d46:	68 06 00 00 00       	pushq  $0x6
  400d4b:	e9 80 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d50 <write@plt>:
  400d50:	ff 25 fa 42 20 00    	jmpq   *0x2042fa(%rip)        # 605050 <write@GLIBC_2.2.5>
  400d56:	68 07 00 00 00       	pushq  $0x7
  400d5b:	e9 70 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d60 <mmap@plt>:
  400d60:	ff 25 f2 42 20 00    	jmpq   *0x2042f2(%rip)        # 605058 <mmap@GLIBC_2.2.5>
  400d66:	68 08 00 00 00       	pushq  $0x8
  400d6b:	e9 60 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d70 <memset@plt>:
  400d70:	ff 25 ea 42 20 00    	jmpq   *0x2042ea(%rip)        # 605060 <memset@GLIBC_2.2.5>
  400d76:	68 09 00 00 00       	pushq  $0x9
  400d7b:	e9 50 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d80 <alarm@plt>:
  400d80:	ff 25 e2 42 20 00    	jmpq   *0x2042e2(%rip)        # 605068 <alarm@GLIBC_2.2.5>
  400d86:	68 0a 00 00 00       	pushq  $0xa
  400d8b:	e9 40 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d90 <close@plt>:
  400d90:	ff 25 da 42 20 00    	jmpq   *0x2042da(%rip)        # 605070 <close@GLIBC_2.2.5>
  400d96:	68 0b 00 00 00       	pushq  $0xb
  400d9b:	e9 30 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400da0 <read@plt>:
  400da0:	ff 25 d2 42 20 00    	jmpq   *0x2042d2(%rip)        # 605078 <read@GLIBC_2.2.5>
  400da6:	68 0c 00 00 00       	pushq  $0xc
  400dab:	e9 20 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400db0 <strcmp@plt>:
  400db0:	ff 25 ca 42 20 00    	jmpq   *0x2042ca(%rip)        # 605080 <strcmp@GLIBC_2.2.5>
  400db6:	68 0d 00 00 00       	pushq  $0xd
  400dbb:	e9 10 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400dc0 <signal@plt>:
  400dc0:	ff 25 c2 42 20 00    	jmpq   *0x2042c2(%rip)        # 605088 <signal@GLIBC_2.2.5>
  400dc6:	68 0e 00 00 00       	pushq  $0xe
  400dcb:	e9 00 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400dd0 <gethostbyname@plt>:
  400dd0:	ff 25 ba 42 20 00    	jmpq   *0x2042ba(%rip)        # 605090 <gethostbyname@GLIBC_2.2.5>
  400dd6:	68 0f 00 00 00       	pushq  $0xf
  400ddb:	e9 f0 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400de0 <__memmove_chk@plt>:
  400de0:	ff 25 b2 42 20 00    	jmpq   *0x2042b2(%rip)        # 605098 <__memmove_chk@GLIBC_2.3.4>
  400de6:	68 10 00 00 00       	pushq  $0x10
  400deb:	e9 e0 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400df0 <strtol@plt>:
  400df0:	ff 25 aa 42 20 00    	jmpq   *0x2042aa(%rip)        # 6050a0 <strtol@GLIBC_2.2.5>
  400df6:	68 11 00 00 00       	pushq  $0x11
  400dfb:	e9 d0 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e00 <memcpy@plt>:
  400e00:	ff 25 a2 42 20 00    	jmpq   *0x2042a2(%rip)        # 6050a8 <memcpy@GLIBC_2.14>
  400e06:	68 12 00 00 00       	pushq  $0x12
  400e0b:	e9 c0 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e10 <time@plt>:
  400e10:	ff 25 9a 42 20 00    	jmpq   *0x20429a(%rip)        # 6050b0 <time@GLIBC_2.2.5>
  400e16:	68 13 00 00 00       	pushq  $0x13
  400e1b:	e9 b0 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e20 <random@plt>:
  400e20:	ff 25 92 42 20 00    	jmpq   *0x204292(%rip)        # 6050b8 <random@GLIBC_2.2.5>
  400e26:	68 14 00 00 00       	pushq  $0x14
  400e2b:	e9 a0 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e30 <_IO_getc@plt>:
  400e30:	ff 25 8a 42 20 00    	jmpq   *0x20428a(%rip)        # 6050c0 <_IO_getc@GLIBC_2.2.5>
  400e36:	68 15 00 00 00       	pushq  $0x15
  400e3b:	e9 90 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e40 <__isoc99_sscanf@plt>:
  400e40:	ff 25 82 42 20 00    	jmpq   *0x204282(%rip)        # 6050c8 <__isoc99_sscanf@GLIBC_2.7>
  400e46:	68 16 00 00 00       	pushq  $0x16
  400e4b:	e9 80 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e50 <munmap@plt>:
  400e50:	ff 25 7a 42 20 00    	jmpq   *0x20427a(%rip)        # 6050d0 <munmap@GLIBC_2.2.5>
  400e56:	68 17 00 00 00       	pushq  $0x17
  400e5b:	e9 70 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e60 <__printf_chk@plt>:
  400e60:	ff 25 72 42 20 00    	jmpq   *0x204272(%rip)        # 6050d8 <__printf_chk@GLIBC_2.3.4>
  400e66:	68 18 00 00 00       	pushq  $0x18
  400e6b:	e9 60 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e70 <fopen@plt>:
  400e70:	ff 25 6a 42 20 00    	jmpq   *0x20426a(%rip)        # 6050e0 <fopen@GLIBC_2.2.5>
  400e76:	68 19 00 00 00       	pushq  $0x19
  400e7b:	e9 50 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e80 <getopt@plt>:
  400e80:	ff 25 62 42 20 00    	jmpq   *0x204262(%rip)        # 6050e8 <getopt@GLIBC_2.2.5>
  400e86:	68 1a 00 00 00       	pushq  $0x1a
  400e8b:	e9 40 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e90 <strtoul@plt>:
  400e90:	ff 25 5a 42 20 00    	jmpq   *0x20425a(%rip)        # 6050f0 <strtoul@GLIBC_2.2.5>
  400e96:	68 1b 00 00 00       	pushq  $0x1b
  400e9b:	e9 30 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400ea0 <gethostname@plt>:
  400ea0:	ff 25 52 42 20 00    	jmpq   *0x204252(%rip)        # 6050f8 <gethostname@GLIBC_2.2.5>
  400ea6:	68 1c 00 00 00       	pushq  $0x1c
  400eab:	e9 20 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400eb0 <exit@plt>:
  400eb0:	ff 25 4a 42 20 00    	jmpq   *0x20424a(%rip)        # 605100 <exit@GLIBC_2.2.5>
  400eb6:	68 1d 00 00 00       	pushq  $0x1d
  400ebb:	e9 10 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400ec0 <connect@plt>:
  400ec0:	ff 25 42 42 20 00    	jmpq   *0x204242(%rip)        # 605108 <connect@GLIBC_2.2.5>
  400ec6:	68 1e 00 00 00       	pushq  $0x1e
  400ecb:	e9 00 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400ed0 <__fprintf_chk@plt>:
  400ed0:	ff 25 3a 42 20 00    	jmpq   *0x20423a(%rip)        # 605110 <__fprintf_chk@GLIBC_2.3.4>
  400ed6:	68 1f 00 00 00       	pushq  $0x1f
  400edb:	e9 f0 fd ff ff       	jmpq   400cd0 <.plt>

0000000000400ee0 <__sprintf_chk@plt>:
  400ee0:	ff 25 32 42 20 00    	jmpq   *0x204232(%rip)        # 605118 <__sprintf_chk@GLIBC_2.3.4>
  400ee6:	68 20 00 00 00       	pushq  $0x20
  400eeb:	e9 e0 fd ff ff       	jmpq   400cd0 <.plt>

0000000000400ef0 <socket@plt>:
  400ef0:	ff 25 2a 42 20 00    	jmpq   *0x20422a(%rip)        # 605120 <socket@GLIBC_2.2.5>
  400ef6:	68 21 00 00 00       	pushq  $0x21
  400efb:	e9 d0 fd ff ff       	jmpq   400cd0 <.plt>

Disassembly of section .text:

0000000000400f00 <_start>:
  400f00:	31 ed                	xor    %ebp,%ebp
  400f02:	49 89 d1             	mov    %rdx,%r9
  400f05:	5e                   	pop    %rsi
  400f06:	48 89 e2             	mov    %rsp,%rdx
  400f09:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400f0d:	50                   	push   %rax
  400f0e:	54                   	push   %rsp
  400f0f:	49 c7 c0 90 31 40 00 	mov    $0x403190,%r8
  400f16:	48 c7 c1 20 31 40 00 	mov    $0x403120,%rcx
  400f1d:	48 c7 c7 0e 12 40 00 	mov    $0x40120e,%rdi
  400f24:	ff 15 c6 40 20 00    	callq  *0x2040c6(%rip)        # 604ff0 <__libc_start_main@GLIBC_2.2.5>
  400f2a:	f4                   	hlt    
  400f2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400f30 <_dl_relocate_static_pie>:
  400f30:	f3 c3                	repz retq 
  400f32:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f39:	00 00 00 
  400f3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400f40 <deregister_tm_clones>:
  400f40:	55                   	push   %rbp
  400f41:	b8 b0 54 60 00       	mov    $0x6054b0,%eax
  400f46:	48 3d b0 54 60 00    	cmp    $0x6054b0,%rax
  400f4c:	48 89 e5             	mov    %rsp,%rbp
  400f4f:	74 17                	je     400f68 <deregister_tm_clones+0x28>
  400f51:	b8 00 00 00 00       	mov    $0x0,%eax
  400f56:	48 85 c0             	test   %rax,%rax
  400f59:	74 0d                	je     400f68 <deregister_tm_clones+0x28>
  400f5b:	5d                   	pop    %rbp
  400f5c:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400f61:	ff e0                	jmpq   *%rax
  400f63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400f68:	5d                   	pop    %rbp
  400f69:	c3                   	retq   
  400f6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f70 <register_tm_clones>:
  400f70:	be b0 54 60 00       	mov    $0x6054b0,%esi
  400f75:	55                   	push   %rbp
  400f76:	48 81 ee b0 54 60 00 	sub    $0x6054b0,%rsi
  400f7d:	48 89 e5             	mov    %rsp,%rbp
  400f80:	48 c1 fe 03          	sar    $0x3,%rsi
  400f84:	48 89 f0             	mov    %rsi,%rax
  400f87:	48 c1 e8 3f          	shr    $0x3f,%rax
  400f8b:	48 01 c6             	add    %rax,%rsi
  400f8e:	48 d1 fe             	sar    %rsi
  400f91:	74 15                	je     400fa8 <register_tm_clones+0x38>
  400f93:	b8 00 00 00 00       	mov    $0x0,%eax
  400f98:	48 85 c0             	test   %rax,%rax
  400f9b:	74 0b                	je     400fa8 <register_tm_clones+0x38>
  400f9d:	5d                   	pop    %rbp
  400f9e:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400fa3:	ff e0                	jmpq   *%rax
  400fa5:	0f 1f 00             	nopl   (%rax)
  400fa8:	5d                   	pop    %rbp
  400fa9:	c3                   	retq   
  400faa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400fb0 <__do_global_dtors_aux>:
  400fb0:	80 3d 31 45 20 00 00 	cmpb   $0x0,0x204531(%rip)        # 6054e8 <completed.7698>
  400fb7:	75 17                	jne    400fd0 <__do_global_dtors_aux+0x20>
  400fb9:	55                   	push   %rbp
  400fba:	48 89 e5             	mov    %rsp,%rbp
  400fbd:	e8 7e ff ff ff       	callq  400f40 <deregister_tm_clones>
  400fc2:	c6 05 1f 45 20 00 01 	movb   $0x1,0x20451f(%rip)        # 6054e8 <completed.7698>
  400fc9:	5d                   	pop    %rbp
  400fca:	c3                   	retq   
  400fcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400fd0:	f3 c3                	repz retq 
  400fd2:	0f 1f 40 00          	nopl   0x0(%rax)
  400fd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400fdd:	00 00 00 

0000000000400fe0 <frame_dummy>:
  400fe0:	55                   	push   %rbp
  400fe1:	48 89 e5             	mov    %rsp,%rbp
  400fe4:	5d                   	pop    %rbp
  400fe5:	eb 89                	jmp    400f70 <register_tm_clones>

0000000000400fe7 <usage>:
  400fe7:	48 83 ec 08          	sub    $0x8,%rsp
  400feb:	48 89 fa             	mov    %rdi,%rdx
  400fee:	83 3d 33 45 20 00 00 	cmpl   $0x0,0x204533(%rip)        # 605528 <is_checker>
  400ff5:	74 50                	je     401047 <usage+0x60>
  400ff7:	48 8d 35 aa 21 00 00 	lea    0x21aa(%rip),%rsi        # 4031a8 <_IO_stdin_used+0x8>
  400ffe:	bf 01 00 00 00       	mov    $0x1,%edi
  401003:	b8 00 00 00 00       	mov    $0x0,%eax
  401008:	e8 53 fe ff ff       	callq  400e60 <__printf_chk@plt>
  40100d:	48 8d 3d cc 21 00 00 	lea    0x21cc(%rip),%rdi        # 4031e0 <_IO_stdin_used+0x40>
  401014:	e8 27 fd ff ff       	callq  400d40 <puts@plt>
  401019:	48 8d 3d 50 23 00 00 	lea    0x2350(%rip),%rdi        # 403370 <_IO_stdin_used+0x1d0>
  401020:	e8 1b fd ff ff       	callq  400d40 <puts@plt>
  401025:	48 8d 3d dc 21 00 00 	lea    0x21dc(%rip),%rdi        # 403208 <_IO_stdin_used+0x68>
  40102c:	e8 0f fd ff ff       	callq  400d40 <puts@plt>
  401031:	48 8d 3d 52 23 00 00 	lea    0x2352(%rip),%rdi        # 40338a <_IO_stdin_used+0x1ea>
  401038:	e8 03 fd ff ff       	callq  400d40 <puts@plt>
  40103d:	bf 00 00 00 00       	mov    $0x0,%edi
  401042:	e8 69 fe ff ff       	callq  400eb0 <exit@plt>
  401047:	48 8d 35 58 23 00 00 	lea    0x2358(%rip),%rsi        # 4033a6 <_IO_stdin_used+0x206>
  40104e:	bf 01 00 00 00       	mov    $0x1,%edi
  401053:	b8 00 00 00 00       	mov    $0x0,%eax
  401058:	e8 03 fe ff ff       	callq  400e60 <__printf_chk@plt>
  40105d:	48 8d 3d cc 21 00 00 	lea    0x21cc(%rip),%rdi        # 403230 <_IO_stdin_used+0x90>
  401064:	e8 d7 fc ff ff       	callq  400d40 <puts@plt>
  401069:	48 8d 3d e8 21 00 00 	lea    0x21e8(%rip),%rdi        # 403258 <_IO_stdin_used+0xb8>
  401070:	e8 cb fc ff ff       	callq  400d40 <puts@plt>
  401075:	48 8d 3d 48 23 00 00 	lea    0x2348(%rip),%rdi        # 4033c4 <_IO_stdin_used+0x224>
  40107c:	e8 bf fc ff ff       	callq  400d40 <puts@plt>
  401081:	eb ba                	jmp    40103d <usage+0x56>

0000000000401083 <initialize_target>:
  401083:	55                   	push   %rbp
  401084:	53                   	push   %rbx
  401085:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
  40108c:	89 f5                	mov    %esi,%ebp
  40108e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401095:	00 00 
  401097:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  40109e:	00 
  40109f:	31 c0                	xor    %eax,%eax
  4010a1:	89 3d 71 44 20 00    	mov    %edi,0x204471(%rip)        # 605518 <check_level>
  4010a7:	8b 3d a3 40 20 00    	mov    0x2040a3(%rip),%edi        # 605150 <target_id>
  4010ad:	e8 44 20 00 00       	callq  4030f6 <gencookie>
  4010b2:	89 05 6c 44 20 00    	mov    %eax,0x20446c(%rip)        # 605524 <cookie>
  4010b8:	89 c7                	mov    %eax,%edi
  4010ba:	e8 37 20 00 00       	callq  4030f6 <gencookie>
  4010bf:	89 05 5b 44 20 00    	mov    %eax,0x20445b(%rip)        # 605520 <authkey>
  4010c5:	8b 05 85 40 20 00    	mov    0x204085(%rip),%eax        # 605150 <target_id>
  4010cb:	8d 78 01             	lea    0x1(%rax),%edi
  4010ce:	e8 2d fc ff ff       	callq  400d00 <srandom@plt>
  4010d3:	e8 48 fd ff ff       	callq  400e20 <random@plt>
  4010d8:	89 c7                	mov    %eax,%edi
  4010da:	e8 93 03 00 00       	callq  401472 <scramble>
  4010df:	89 c3                	mov    %eax,%ebx
  4010e1:	85 ed                	test   %ebp,%ebp
  4010e3:	75 54                	jne    401139 <initialize_target+0xb6>
  4010e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4010ea:	01 d8                	add    %ebx,%eax
  4010ec:	0f b7 c0             	movzwl %ax,%eax
  4010ef:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  4010f6:	89 c0                	mov    %eax,%eax
  4010f8:	48 89 05 a1 43 20 00 	mov    %rax,0x2043a1(%rip)        # 6054a0 <buf_offset>
  4010ff:	c6 05 42 50 20 00 63 	movb   $0x63,0x205042(%rip)        # 606148 <target_prefix>
  401106:	83 3d 9b 43 20 00 00 	cmpl   $0x0,0x20439b(%rip)        # 6054a8 <notify>
  40110d:	74 09                	je     401118 <initialize_target+0x95>
  40110f:	83 3d 12 44 20 00 00 	cmpl   $0x0,0x204412(%rip)        # 605528 <is_checker>
  401116:	74 39                	je     401151 <initialize_target+0xce>
  401118:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  40111f:	00 
  401120:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401127:	00 00 
  401129:	0f 85 da 00 00 00    	jne    401209 <initialize_target+0x186>
  40112f:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  401136:	5b                   	pop    %rbx
  401137:	5d                   	pop    %rbp
  401138:	c3                   	retq   
  401139:	bf 00 00 00 00       	mov    $0x0,%edi
  40113e:	e8 cd fc ff ff       	callq  400e10 <time@plt>
  401143:	89 c7                	mov    %eax,%edi
  401145:	e8 b6 fb ff ff       	callq  400d00 <srandom@plt>
  40114a:	e8 d1 fc ff ff       	callq  400e20 <random@plt>
  40114f:	eb 99                	jmp    4010ea <initialize_target+0x67>
  401151:	48 89 e7             	mov    %rsp,%rdi
  401154:	be 00 01 00 00       	mov    $0x100,%esi
  401159:	e8 42 fd ff ff       	callq  400ea0 <gethostname@plt>
  40115e:	89 c5                	mov    %eax,%ebp
  401160:	85 c0                	test   %eax,%eax
  401162:	75 26                	jne    40118a <initialize_target+0x107>
  401164:	89 c3                	mov    %eax,%ebx
  401166:	48 63 c3             	movslq %ebx,%rax
  401169:	48 8d 15 10 40 20 00 	lea    0x204010(%rip),%rdx        # 605180 <host_table>
  401170:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  401174:	48 85 ff             	test   %rdi,%rdi
  401177:	74 2c                	je     4011a5 <initialize_target+0x122>
  401179:	48 89 e6             	mov    %rsp,%rsi
  40117c:	e8 5f fb ff ff       	callq  400ce0 <strcasecmp@plt>
  401181:	85 c0                	test   %eax,%eax
  401183:	74 1b                	je     4011a0 <initialize_target+0x11d>
  401185:	83 c3 01             	add    $0x1,%ebx
  401188:	eb dc                	jmp    401166 <initialize_target+0xe3>
  40118a:	48 8d 3d f7 20 00 00 	lea    0x20f7(%rip),%rdi        # 403288 <_IO_stdin_used+0xe8>
  401191:	e8 aa fb ff ff       	callq  400d40 <puts@plt>
  401196:	bf 08 00 00 00       	mov    $0x8,%edi
  40119b:	e8 10 fd ff ff       	callq  400eb0 <exit@plt>
  4011a0:	bd 01 00 00 00       	mov    $0x1,%ebp
  4011a5:	85 ed                	test   %ebp,%ebp
  4011a7:	74 3d                	je     4011e6 <initialize_target+0x163>
  4011a9:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  4011b0:	00 
  4011b1:	e8 70 1c 00 00       	callq  402e26 <init_driver>
  4011b6:	85 c0                	test   %eax,%eax
  4011b8:	0f 89 5a ff ff ff    	jns    401118 <initialize_target+0x95>
  4011be:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  4011c5:	00 
  4011c6:	48 8d 35 33 21 00 00 	lea    0x2133(%rip),%rsi        # 403300 <_IO_stdin_used+0x160>
  4011cd:	bf 01 00 00 00       	mov    $0x1,%edi
  4011d2:	b8 00 00 00 00       	mov    $0x0,%eax
  4011d7:	e8 84 fc ff ff       	callq  400e60 <__printf_chk@plt>
  4011dc:	bf 08 00 00 00       	mov    $0x8,%edi
  4011e1:	e8 ca fc ff ff       	callq  400eb0 <exit@plt>
  4011e6:	48 89 e2             	mov    %rsp,%rdx
  4011e9:	48 8d 35 d0 20 00 00 	lea    0x20d0(%rip),%rsi        # 4032c0 <_IO_stdin_used+0x120>
  4011f0:	bf 01 00 00 00       	mov    $0x1,%edi
  4011f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4011fa:	e8 61 fc ff ff       	callq  400e60 <__printf_chk@plt>
  4011ff:	bf 08 00 00 00       	mov    $0x8,%edi
  401204:	e8 a7 fc ff ff       	callq  400eb0 <exit@plt>
  401209:	e8 88 0f 00 00       	callq  402196 <__stack_chk_fail>

000000000040120e <main>:
  40120e:	41 56                	push   %r14
  401210:	41 55                	push   %r13
  401212:	41 54                	push   %r12
  401214:	55                   	push   %rbp
  401215:	53                   	push   %rbx
  401216:	48 83 ec 60          	sub    $0x60,%rsp
  40121a:	89 fd                	mov    %edi,%ebp
  40121c:	48 89 f3             	mov    %rsi,%rbx
  40121f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401226:	00 00 
  401228:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  40122d:	31 c0                	xor    %eax,%eax
  40122f:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  401236:	74 65 64 
  401239:	48 89 04 24          	mov    %rax,(%rsp)
  40123d:	c7 44 24 08 41 77 61 	movl   $0x79617741,0x8(%rsp)
  401244:	79 
  401245:	66 c7 44 24 0c 43 4e 	movw   $0x4e43,0xc(%rsp)
  40124c:	c6 44 24 0e 00       	movb   $0x0,0xe(%rsp)
  401251:	48 c7 c6 97 20 40 00 	mov    $0x402097,%rsi
  401258:	bf 0b 00 00 00       	mov    $0xb,%edi
  40125d:	e8 5e fb ff ff       	callq  400dc0 <signal@plt>
  401262:	48 c7 c6 43 20 40 00 	mov    $0x402043,%rsi
  401269:	bf 07 00 00 00       	mov    $0x7,%edi
  40126e:	e8 4d fb ff ff       	callq  400dc0 <signal@plt>
  401273:	48 c7 c6 eb 20 40 00 	mov    $0x4020eb,%rsi
  40127a:	bf 04 00 00 00       	mov    $0x4,%edi
  40127f:	e8 3c fb ff ff       	callq  400dc0 <signal@plt>
  401284:	83 3d 9d 42 20 00 00 	cmpl   $0x0,0x20429d(%rip)        # 605528 <is_checker>
  40128b:	75 26                	jne    4012b3 <main+0xa5>
  40128d:	4c 8d 25 49 21 00 00 	lea    0x2149(%rip),%r12        # 4033dd <_IO_stdin_used+0x23d>
  401294:	48 8b 05 25 42 20 00 	mov    0x204225(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  40129b:	48 89 05 6e 42 20 00 	mov    %rax,0x20426e(%rip)        # 605510 <infile>
  4012a2:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4012a8:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4012ae:	e9 8d 00 00 00       	jmpq   401340 <main+0x132>
  4012b3:	48 c7 c6 3f 21 40 00 	mov    $0x40213f,%rsi
  4012ba:	bf 0e 00 00 00       	mov    $0xe,%edi
  4012bf:	e8 fc fa ff ff       	callq  400dc0 <signal@plt>
  4012c4:	bf 02 00 00 00       	mov    $0x2,%edi
  4012c9:	e8 b2 fa ff ff       	callq  400d80 <alarm@plt>
  4012ce:	4c 8d 25 0d 21 00 00 	lea    0x210d(%rip),%r12        # 4033e2 <_IO_stdin_used+0x242>
  4012d5:	eb bd                	jmp    401294 <main+0x86>
  4012d7:	48 8b 3b             	mov    (%rbx),%rdi
  4012da:	e8 08 fd ff ff       	callq  400fe7 <usage>
  4012df:	48 8d 35 ca 21 00 00 	lea    0x21ca(%rip),%rsi        # 4034b0 <_IO_stdin_used+0x310>
  4012e6:	48 8b 3d db 41 20 00 	mov    0x2041db(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012ed:	e8 7e fb ff ff       	callq  400e70 <fopen@plt>
  4012f2:	48 89 05 17 42 20 00 	mov    %rax,0x204217(%rip)        # 605510 <infile>
  4012f9:	48 85 c0             	test   %rax,%rax
  4012fc:	75 42                	jne    401340 <main+0x132>
  4012fe:	48 8b 0d c3 41 20 00 	mov    0x2041c3(%rip),%rcx        # 6054c8 <optarg@@GLIBC_2.2.5>
  401305:	48 8d 15 e0 20 00 00 	lea    0x20e0(%rip),%rdx        # 4033ec <_IO_stdin_used+0x24c>
  40130c:	be 01 00 00 00       	mov    $0x1,%esi
  401311:	48 8b 3d c8 41 20 00 	mov    0x2041c8(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  401318:	e8 b3 fb ff ff       	callq  400ed0 <__fprintf_chk@plt>
  40131d:	b8 01 00 00 00       	mov    $0x1,%eax
  401322:	e9 29 01 00 00       	jmpq   401450 <main+0x242>
  401327:	ba 10 00 00 00       	mov    $0x10,%edx
  40132c:	be 00 00 00 00       	mov    $0x0,%esi
  401331:	48 8b 3d 90 41 20 00 	mov    0x204190(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401338:	e8 53 fb ff ff       	callq  400e90 <strtoul@plt>
  40133d:	41 89 c6             	mov    %eax,%r14d
  401340:	4c 89 e2             	mov    %r12,%rdx
  401343:	48 89 de             	mov    %rbx,%rsi
  401346:	89 ef                	mov    %ebp,%edi
  401348:	e8 33 fb ff ff       	callq  400e80 <getopt@plt>
  40134d:	3c ff                	cmp    $0xff,%al
  40134f:	74 78                	je     4013c9 <main+0x1bb>
  401351:	0f be d0             	movsbl %al,%edx
  401354:	83 e8 61             	sub    $0x61,%eax
  401357:	3c 14                	cmp    $0x14,%al
  401359:	77 50                	ja     4013ab <main+0x19d>
  40135b:	0f b6 c0             	movzbl %al,%eax
  40135e:	48 8d 0d c7 20 00 00 	lea    0x20c7(%rip),%rcx        # 40342c <_IO_stdin_used+0x28c>
  401365:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  401369:	48 01 c8             	add    %rcx,%rax
  40136c:	ff e0                	jmpq   *%rax
  40136e:	ba 0a 00 00 00       	mov    $0xa,%edx
  401373:	be 00 00 00 00       	mov    $0x0,%esi
  401378:	48 8b 3d 49 41 20 00 	mov    0x204149(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  40137f:	e8 6c fa ff ff       	callq  400df0 <strtol@plt>
  401384:	41 89 c5             	mov    %eax,%r13d
  401387:	eb b7                	jmp    401340 <main+0x132>
  401389:	c7 05 15 41 20 00 00 	movl   $0x0,0x204115(%rip)        # 6054a8 <notify>
  401390:	00 00 00 
  401393:	eb ab                	jmp    401340 <main+0x132>
  401395:	48 89 e7             	mov    %rsp,%rdi
  401398:	ba 50 00 00 00       	mov    $0x50,%edx
  40139d:	48 8b 35 24 41 20 00 	mov    0x204124(%rip),%rsi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4013a4:	e8 67 f9 ff ff       	callq  400d10 <strncpy@plt>
  4013a9:	eb 95                	jmp    401340 <main+0x132>
  4013ab:	48 8d 35 57 20 00 00 	lea    0x2057(%rip),%rsi        # 403409 <_IO_stdin_used+0x269>
  4013b2:	bf 01 00 00 00       	mov    $0x1,%edi
  4013b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4013bc:	e8 9f fa ff ff       	callq  400e60 <__printf_chk@plt>
  4013c1:	48 8b 3b             	mov    (%rbx),%rdi
  4013c4:	e8 1e fc ff ff       	callq  400fe7 <usage>
  4013c9:	be 00 00 00 00       	mov    $0x0,%esi
  4013ce:	44 89 ef             	mov    %r13d,%edi
  4013d1:	e8 ad fc ff ff       	callq  401083 <initialize_target>
  4013d6:	83 3d 4b 41 20 00 00 	cmpl   $0x0,0x20414b(%rip)        # 605528 <is_checker>
  4013dd:	74 3f                	je     40141e <main+0x210>
  4013df:	44 39 35 3a 41 20 00 	cmp    %r14d,0x20413a(%rip)        # 605520 <authkey>
  4013e6:	75 13                	jne    4013fb <main+0x1ed>
  4013e8:	48 89 e7             	mov    %rsp,%rdi
  4013eb:	48 8b 35 6e 3d 20 00 	mov    0x203d6e(%rip),%rsi        # 605160 <user_id>
  4013f2:	e8 b9 f9 ff ff       	callq  400db0 <strcmp@plt>
  4013f7:	85 c0                	test   %eax,%eax
  4013f9:	74 23                	je     40141e <main+0x210>
  4013fb:	44 89 f2             	mov    %r14d,%edx
  4013fe:	48 8d 35 23 1f 00 00 	lea    0x1f23(%rip),%rsi        # 403328 <_IO_stdin_used+0x188>
  401405:	bf 01 00 00 00       	mov    $0x1,%edi
  40140a:	b8 00 00 00 00       	mov    $0x0,%eax
  40140f:	e8 4c fa ff ff       	callq  400e60 <__printf_chk@plt>
  401414:	b8 00 00 00 00       	mov    $0x0,%eax
  401419:	e8 8d 08 00 00       	callq  401cab <check_fail>
  40141e:	8b 15 00 41 20 00    	mov    0x204100(%rip),%edx        # 605524 <cookie>
  401424:	48 8d 35 f1 1f 00 00 	lea    0x1ff1(%rip),%rsi        # 40341c <_IO_stdin_used+0x27c>
  40142b:	bf 01 00 00 00       	mov    $0x1,%edi
  401430:	b8 00 00 00 00       	mov    $0x0,%eax
  401435:	e8 26 fa ff ff       	callq  400e60 <__printf_chk@plt>
  40143a:	be 00 00 00 00       	mov    $0x0,%esi
  40143f:	48 8b 3d 5a 40 20 00 	mov    0x20405a(%rip),%rdi        # 6054a0 <buf_offset>
  401446:	e8 6b 0e 00 00       	callq  4022b6 <stable_launch>
  40144b:	b8 00 00 00 00       	mov    $0x0,%eax
  401450:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
  401455:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  40145c:	00 00 
  40145e:	75 0d                	jne    40146d <main+0x25f>
  401460:	48 83 c4 60          	add    $0x60,%rsp
  401464:	5b                   	pop    %rbx
  401465:	5d                   	pop    %rbp
  401466:	41 5c                	pop    %r12
  401468:	41 5d                	pop    %r13
  40146a:	41 5e                	pop    %r14
  40146c:	c3                   	retq   
  40146d:	e8 24 0d 00 00       	callq  402196 <__stack_chk_fail>

0000000000401472 <scramble>:
  401472:	48 83 ec 38          	sub    $0x38,%rsp
  401476:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40147d:	00 00 
  40147f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401484:	31 c0                	xor    %eax,%eax
  401486:	eb 10                	jmp    401498 <scramble+0x26>
  401488:	69 d0 5f 43 00 00    	imul   $0x435f,%eax,%edx
  40148e:	01 fa                	add    %edi,%edx
  401490:	89 c1                	mov    %eax,%ecx
  401492:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401495:	83 c0 01             	add    $0x1,%eax
  401498:	83 f8 09             	cmp    $0x9,%eax
  40149b:	76 eb                	jbe    401488 <scramble+0x16>
  40149d:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4014a1:	69 c0 9f 59 00 00    	imul   $0x599f,%eax,%eax
  4014a7:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4014ab:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4014af:	69 c0 f7 b2 00 00    	imul   $0xb2f7,%eax,%eax
  4014b5:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4014b9:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4014bd:	69 c0 61 8e 00 00    	imul   $0x8e61,%eax,%eax
  4014c3:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4014c7:	8b 04 24             	mov    (%rsp),%eax
  4014ca:	69 c0 57 f4 00 00    	imul   $0xf457,%eax,%eax
  4014d0:	89 04 24             	mov    %eax,(%rsp)
  4014d3:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4014d7:	69 c0 4c bd 00 00    	imul   $0xbd4c,%eax,%eax
  4014dd:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4014e1:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4014e5:	69 c0 95 3e 00 00    	imul   $0x3e95,%eax,%eax
  4014eb:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4014ef:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4014f3:	69 c0 7b c1 00 00    	imul   $0xc17b,%eax,%eax
  4014f9:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4014fd:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401501:	69 c0 6c d8 00 00    	imul   $0xd86c,%eax,%eax
  401507:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40150b:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40150f:	69 c0 fa 6e 00 00    	imul   $0x6efa,%eax,%eax
  401515:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401519:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40151d:	69 c0 f9 6f 00 00    	imul   $0x6ff9,%eax,%eax
  401523:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401527:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40152b:	69 c0 3b 28 00 00    	imul   $0x283b,%eax,%eax
  401531:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401535:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401539:	69 c0 84 08 00 00    	imul   $0x884,%eax,%eax
  40153f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401543:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401547:	69 c0 86 6f 00 00    	imul   $0x6f86,%eax,%eax
  40154d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401551:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401555:	69 c0 a4 7b 00 00    	imul   $0x7ba4,%eax,%eax
  40155b:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40155f:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401563:	69 c0 28 8b 00 00    	imul   $0x8b28,%eax,%eax
  401569:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40156d:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401571:	69 c0 56 29 00 00    	imul   $0x2956,%eax,%eax
  401577:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40157b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40157f:	69 c0 26 12 00 00    	imul   $0x1226,%eax,%eax
  401585:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401589:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40158d:	69 c0 76 36 00 00    	imul   $0x3676,%eax,%eax
  401593:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401597:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40159b:	69 c0 45 18 00 00    	imul   $0x1845,%eax,%eax
  4015a1:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4015a5:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4015a9:	69 c0 94 a1 00 00    	imul   $0xa194,%eax,%eax
  4015af:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4015b3:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4015b7:	69 c0 84 f7 00 00    	imul   $0xf784,%eax,%eax
  4015bd:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4015c1:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015c5:	69 c0 d5 ef 00 00    	imul   $0xefd5,%eax,%eax
  4015cb:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4015cf:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4015d3:	69 c0 79 04 00 00    	imul   $0x479,%eax,%eax
  4015d9:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4015dd:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4015e1:	69 c0 91 57 00 00    	imul   $0x5791,%eax,%eax
  4015e7:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4015eb:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4015ef:	69 c0 86 ad 00 00    	imul   $0xad86,%eax,%eax
  4015f5:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4015f9:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015fd:	69 c0 eb 15 00 00    	imul   $0x15eb,%eax,%eax
  401603:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401607:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40160b:	69 c0 93 83 00 00    	imul   $0x8393,%eax,%eax
  401611:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401615:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401619:	69 c0 1e 10 00 00    	imul   $0x101e,%eax,%eax
  40161f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401623:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401627:	69 c0 f8 85 00 00    	imul   $0x85f8,%eax,%eax
  40162d:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401631:	8b 04 24             	mov    (%rsp),%eax
  401634:	69 c0 11 d9 00 00    	imul   $0xd911,%eax,%eax
  40163a:	89 04 24             	mov    %eax,(%rsp)
  40163d:	8b 04 24             	mov    (%rsp),%eax
  401640:	69 c0 5a 03 00 00    	imul   $0x35a,%eax,%eax
  401646:	89 04 24             	mov    %eax,(%rsp)
  401649:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40164d:	69 c0 e8 f5 00 00    	imul   $0xf5e8,%eax,%eax
  401653:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401657:	8b 04 24             	mov    (%rsp),%eax
  40165a:	69 c0 b5 de 00 00    	imul   $0xdeb5,%eax,%eax
  401660:	89 04 24             	mov    %eax,(%rsp)
  401663:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401667:	69 c0 07 b6 00 00    	imul   $0xb607,%eax,%eax
  40166d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401671:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401675:	69 c0 2b 57 00 00    	imul   $0x572b,%eax,%eax
  40167b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40167f:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401683:	69 c0 8c cc 00 00    	imul   $0xcc8c,%eax,%eax
  401689:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40168d:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401691:	69 c0 c5 37 00 00    	imul   $0x37c5,%eax,%eax
  401697:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40169b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40169f:	69 c0 af 07 00 00    	imul   $0x7af,%eax,%eax
  4016a5:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4016a9:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4016ad:	69 c0 a2 84 00 00    	imul   $0x84a2,%eax,%eax
  4016b3:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4016b7:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4016bb:	69 c0 b2 af 00 00    	imul   $0xafb2,%eax,%eax
  4016c1:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4016c5:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4016c9:	69 c0 cb 26 00 00    	imul   $0x26cb,%eax,%eax
  4016cf:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4016d3:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4016d7:	69 c0 ea 07 00 00    	imul   $0x7ea,%eax,%eax
  4016dd:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4016e1:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4016e5:	69 c0 0d e4 00 00    	imul   $0xe40d,%eax,%eax
  4016eb:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4016ef:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4016f3:	69 c0 78 9d 00 00    	imul   $0x9d78,%eax,%eax
  4016f9:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4016fd:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401701:	69 c0 cc a3 00 00    	imul   $0xa3cc,%eax,%eax
  401707:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40170b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40170f:	69 c0 25 7b 00 00    	imul   $0x7b25,%eax,%eax
  401715:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401719:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40171d:	69 c0 f2 78 00 00    	imul   $0x78f2,%eax,%eax
  401723:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401727:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40172b:	69 c0 a6 bc 00 00    	imul   $0xbca6,%eax,%eax
  401731:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401735:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401739:	69 c0 6c 9d 00 00    	imul   $0x9d6c,%eax,%eax
  40173f:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401743:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401747:	69 c0 a2 4e 00 00    	imul   $0x4ea2,%eax,%eax
  40174d:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401751:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401755:	69 c0 49 ca 00 00    	imul   $0xca49,%eax,%eax
  40175b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40175f:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401763:	69 c0 47 43 00 00    	imul   $0x4347,%eax,%eax
  401769:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40176d:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401771:	69 c0 90 d7 00 00    	imul   $0xd790,%eax,%eax
  401777:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40177b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40177f:	69 c0 4c 3e 00 00    	imul   $0x3e4c,%eax,%eax
  401785:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401789:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40178d:	69 c0 37 aa 00 00    	imul   $0xaa37,%eax,%eax
  401793:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401797:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40179b:	69 c0 5c 8e 00 00    	imul   $0x8e5c,%eax,%eax
  4017a1:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4017a5:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4017a9:	69 c0 9c b3 00 00    	imul   $0xb39c,%eax,%eax
  4017af:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4017b3:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4017b7:	69 c0 60 7b 00 00    	imul   $0x7b60,%eax,%eax
  4017bd:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4017c1:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017c5:	69 c0 4f ae 00 00    	imul   $0xae4f,%eax,%eax
  4017cb:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4017cf:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017d3:	69 c0 ae 01 00 00    	imul   $0x1ae,%eax,%eax
  4017d9:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017dd:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4017e1:	69 c0 63 8f 00 00    	imul   $0x8f63,%eax,%eax
  4017e7:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4017eb:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017ef:	69 c0 41 f9 00 00    	imul   $0xf941,%eax,%eax
  4017f5:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017f9:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017fd:	69 c0 e2 ed 00 00    	imul   $0xede2,%eax,%eax
  401803:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401807:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40180b:	69 c0 fc 5f 00 00    	imul   $0x5ffc,%eax,%eax
  401811:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401815:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401819:	69 c0 95 28 00 00    	imul   $0x2895,%eax,%eax
  40181f:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401823:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401827:	69 c0 e6 7f 00 00    	imul   $0x7fe6,%eax,%eax
  40182d:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401831:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401835:	69 c0 ce c9 00 00    	imul   $0xc9ce,%eax,%eax
  40183b:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40183f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401843:	69 c0 ec f4 00 00    	imul   $0xf4ec,%eax,%eax
  401849:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40184d:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401851:	69 c0 24 0e 00 00    	imul   $0xe24,%eax,%eax
  401857:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40185b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40185f:	69 c0 91 fd 00 00    	imul   $0xfd91,%eax,%eax
  401865:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401869:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40186d:	69 c0 37 21 00 00    	imul   $0x2137,%eax,%eax
  401873:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401877:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40187b:	69 c0 5d 89 00 00    	imul   $0x895d,%eax,%eax
  401881:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401885:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401889:	69 c0 34 22 00 00    	imul   $0x2234,%eax,%eax
  40188f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401893:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401897:	69 c0 7d 6c 00 00    	imul   $0x6c7d,%eax,%eax
  40189d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4018a1:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4018a5:	69 c0 97 1d 00 00    	imul   $0x1d97,%eax,%eax
  4018ab:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4018af:	8b 04 24             	mov    (%rsp),%eax
  4018b2:	69 c0 9f 22 00 00    	imul   $0x229f,%eax,%eax
  4018b8:	89 04 24             	mov    %eax,(%rsp)
  4018bb:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4018bf:	69 c0 00 eb 00 00    	imul   $0xeb00,%eax,%eax
  4018c5:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4018c9:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4018cd:	69 c0 4f b5 00 00    	imul   $0xb54f,%eax,%eax
  4018d3:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4018d7:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4018db:	69 c0 c8 d1 00 00    	imul   $0xd1c8,%eax,%eax
  4018e1:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4018e5:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018e9:	69 c0 30 64 00 00    	imul   $0x6430,%eax,%eax
  4018ef:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018f3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018f7:	69 c0 ea c3 00 00    	imul   $0xc3ea,%eax,%eax
  4018fd:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401901:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401905:	69 c0 3b ed 00 00    	imul   $0xed3b,%eax,%eax
  40190b:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40190f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401913:	69 c0 45 a7 00 00    	imul   $0xa745,%eax,%eax
  401919:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40191d:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401921:	69 c0 17 2f 00 00    	imul   $0x2f17,%eax,%eax
  401927:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40192b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40192f:	69 c0 5f 15 00 00    	imul   $0x155f,%eax,%eax
  401935:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401939:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40193d:	69 c0 c5 6d 00 00    	imul   $0x6dc5,%eax,%eax
  401943:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401947:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40194b:	69 c0 96 b8 00 00    	imul   $0xb896,%eax,%eax
  401951:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401955:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401959:	69 c0 6b 0b 00 00    	imul   $0xb6b,%eax,%eax
  40195f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401963:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401967:	69 c0 e0 fb 00 00    	imul   $0xfbe0,%eax,%eax
  40196d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401971:	ba 00 00 00 00       	mov    $0x0,%edx
  401976:	b8 00 00 00 00       	mov    $0x0,%eax
  40197b:	eb 0a                	jmp    401987 <scramble+0x515>
  40197d:	89 d1                	mov    %edx,%ecx
  40197f:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401982:	01 c8                	add    %ecx,%eax
  401984:	83 c2 01             	add    $0x1,%edx
  401987:	83 fa 09             	cmp    $0x9,%edx
  40198a:	76 f1                	jbe    40197d <scramble+0x50b>
  40198c:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  401991:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401998:	00 00 
  40199a:	75 05                	jne    4019a1 <scramble+0x52f>
  40199c:	48 83 c4 38          	add    $0x38,%rsp
  4019a0:	c3                   	retq   
  4019a1:	e8 f0 07 00 00       	callq  402196 <__stack_chk_fail>

00000000004019a6 <getbuf>:
  4019a6:	48 83 ec 28          	sub    $0x28,%rsp
  4019aa:	48 89 e7             	mov    %rsp,%rdi
  4019ad:	e8 31 03 00 00       	callq  401ce3 <Gets>
  4019b2:	b8 01 00 00 00       	mov    $0x1,%eax
  4019b7:	48 83 c4 28          	add    $0x28,%rsp
  4019bb:	c3                   	retq   

00000000004019bc <getbuf_withcanary>:
  4019bc:	55                   	push   %rbp
  4019bd:	48 89 e5             	mov    %rsp,%rbp
  4019c0:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  4019c7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4019ce:	00 00 
  4019d0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4019d4:	31 c0                	xor    %eax,%eax
  4019d6:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  4019dd:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  4019e4:	48 89 c7             	mov    %rax,%rdi
  4019e7:	e8 f7 02 00 00       	callq  401ce3 <Gets>
  4019ec:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4019ef:	48 98                	cltq   
  4019f1:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  4019f8:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  4019fc:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401a03:	ba 80 00 00 00       	mov    $0x80,%edx
  401a08:	48 89 c6             	mov    %rax,%rsi
  401a0b:	48 89 cf             	mov    %rcx,%rdi
  401a0e:	e8 ed f3 ff ff       	callq  400e00 <memcpy@plt>
  401a13:	b8 01 00 00 00       	mov    $0x1,%eax
  401a18:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401a1c:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401a23:	00 00 
  401a25:	74 05                	je     401a2c <getbuf_withcanary+0x70>
  401a27:	e8 6a 07 00 00       	callq  402196 <__stack_chk_fail>
  401a2c:	c9                   	leaveq 
  401a2d:	c3                   	retq   

0000000000401a2e <touch1>:
  401a2e:	48 83 ec 08          	sub    $0x8,%rsp
  401a32:	c7 05 e0 3a 20 00 01 	movl   $0x1,0x203ae0(%rip)        # 60551c <vlevel>
  401a39:	00 00 00 
  401a3c:	48 8d 3d 6f 1a 00 00 	lea    0x1a6f(%rip),%rdi        # 4034b2 <_IO_stdin_used+0x312>
  401a43:	e8 f8 f2 ff ff       	callq  400d40 <puts@plt>
  401a48:	bf 01 00 00 00       	mov    $0x1,%edi
  401a4d:	e8 f9 04 00 00       	callq  401f4b <validate>
  401a52:	bf 00 00 00 00       	mov    $0x0,%edi
  401a57:	e8 54 f4 ff ff       	callq  400eb0 <exit@plt>

0000000000401a5c <touch2>:
  401a5c:	48 83 ec 08          	sub    $0x8,%rsp
  401a60:	89 fa                	mov    %edi,%edx
  401a62:	c7 05 b0 3a 20 00 02 	movl   $0x2,0x203ab0(%rip)        # 60551c <vlevel>
  401a69:	00 00 00 
  401a6c:	39 3d b2 3a 20 00    	cmp    %edi,0x203ab2(%rip)        # 605524 <cookie>
  401a72:	74 2a                	je     401a9e <touch2+0x42>
  401a74:	48 8d 35 85 1a 00 00 	lea    0x1a85(%rip),%rsi        # 403500 <_IO_stdin_used+0x360>
  401a7b:	bf 01 00 00 00       	mov    $0x1,%edi
  401a80:	b8 00 00 00 00       	mov    $0x0,%eax
  401a85:	e8 d6 f3 ff ff       	callq  400e60 <__printf_chk@plt>
  401a8a:	bf 02 00 00 00       	mov    $0x2,%edi
  401a8f:	e8 87 05 00 00       	callq  40201b <fail>
  401a94:	bf 00 00 00 00       	mov    $0x0,%edi
  401a99:	e8 12 f4 ff ff       	callq  400eb0 <exit@plt>
  401a9e:	48 8d 35 33 1a 00 00 	lea    0x1a33(%rip),%rsi        # 4034d8 <_IO_stdin_used+0x338>
  401aa5:	bf 01 00 00 00       	mov    $0x1,%edi
  401aaa:	b8 00 00 00 00       	mov    $0x0,%eax
  401aaf:	e8 ac f3 ff ff       	callq  400e60 <__printf_chk@plt>
  401ab4:	bf 02 00 00 00       	mov    $0x2,%edi
  401ab9:	e8 8d 04 00 00       	callq  401f4b <validate>
  401abe:	eb d4                	jmp    401a94 <touch2+0x38>

0000000000401ac0 <hexmatch>:
  401ac0:	41 54                	push   %r12
  401ac2:	55                   	push   %rbp
  401ac3:	53                   	push   %rbx
  401ac4:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401ac8:	89 fd                	mov    %edi,%ebp
  401aca:	48 89 f3             	mov    %rsi,%rbx
  401acd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401ad4:	00 00 
  401ad6:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401adb:	31 c0                	xor    %eax,%eax
  401add:	e8 3e f3 ff ff       	callq  400e20 <random@plt>
  401ae2:	48 89 c1             	mov    %rax,%rcx
  401ae5:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401aec:	0a d7 a3 
  401aef:	48 f7 ea             	imul   %rdx
  401af2:	48 01 ca             	add    %rcx,%rdx
  401af5:	48 c1 fa 06          	sar    $0x6,%rdx
  401af9:	48 89 c8             	mov    %rcx,%rax
  401afc:	48 c1 f8 3f          	sar    $0x3f,%rax
  401b00:	48 29 c2             	sub    %rax,%rdx
  401b03:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401b07:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401b0b:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401b12:	00 
  401b13:	48 29 c1             	sub    %rax,%rcx
  401b16:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401b1a:	41 89 e8             	mov    %ebp,%r8d
  401b1d:	48 8d 0d ab 19 00 00 	lea    0x19ab(%rip),%rcx        # 4034cf <_IO_stdin_used+0x32f>
  401b24:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401b2b:	be 01 00 00 00       	mov    $0x1,%esi
  401b30:	4c 89 e7             	mov    %r12,%rdi
  401b33:	b8 00 00 00 00       	mov    $0x0,%eax
  401b38:	e8 a3 f3 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  401b3d:	ba 09 00 00 00       	mov    $0x9,%edx
  401b42:	4c 89 e6             	mov    %r12,%rsi
  401b45:	48 89 df             	mov    %rbx,%rdi
  401b48:	e8 d3 f1 ff ff       	callq  400d20 <strncmp@plt>
  401b4d:	85 c0                	test   %eax,%eax
  401b4f:	0f 94 c0             	sete   %al
  401b52:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  401b57:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401b5e:	00 00 
  401b60:	75 0c                	jne    401b6e <hexmatch+0xae>
  401b62:	0f b6 c0             	movzbl %al,%eax
  401b65:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401b69:	5b                   	pop    %rbx
  401b6a:	5d                   	pop    %rbp
  401b6b:	41 5c                	pop    %r12
  401b6d:	c3                   	retq   
  401b6e:	e8 23 06 00 00       	callq  402196 <__stack_chk_fail>

0000000000401b73 <touch3>:
  401b73:	53                   	push   %rbx
  401b74:	48 89 fb             	mov    %rdi,%rbx
  401b77:	c7 05 9b 39 20 00 03 	movl   $0x3,0x20399b(%rip)        # 60551c <vlevel>
  401b7e:	00 00 00 
  401b81:	48 89 fe             	mov    %rdi,%rsi
  401b84:	8b 3d 9a 39 20 00    	mov    0x20399a(%rip),%edi        # 605524 <cookie>
  401b8a:	e8 31 ff ff ff       	callq  401ac0 <hexmatch>
  401b8f:	85 c0                	test   %eax,%eax
  401b91:	74 2d                	je     401bc0 <touch3+0x4d>
  401b93:	48 89 da             	mov    %rbx,%rdx
  401b96:	48 8d 35 8b 19 00 00 	lea    0x198b(%rip),%rsi        # 403528 <_IO_stdin_used+0x388>
  401b9d:	bf 01 00 00 00       	mov    $0x1,%edi
  401ba2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ba7:	e8 b4 f2 ff ff       	callq  400e60 <__printf_chk@plt>
  401bac:	bf 03 00 00 00       	mov    $0x3,%edi
  401bb1:	e8 95 03 00 00       	callq  401f4b <validate>
  401bb6:	bf 00 00 00 00       	mov    $0x0,%edi
  401bbb:	e8 f0 f2 ff ff       	callq  400eb0 <exit@plt>
  401bc0:	48 89 da             	mov    %rbx,%rdx
  401bc3:	48 8d 35 86 19 00 00 	lea    0x1986(%rip),%rsi        # 403550 <_IO_stdin_used+0x3b0>
  401bca:	bf 01 00 00 00       	mov    $0x1,%edi
  401bcf:	b8 00 00 00 00       	mov    $0x0,%eax
  401bd4:	e8 87 f2 ff ff       	callq  400e60 <__printf_chk@plt>
  401bd9:	bf 03 00 00 00       	mov    $0x3,%edi
  401bde:	e8 38 04 00 00       	callq  40201b <fail>
  401be3:	eb d1                	jmp    401bb6 <touch3+0x43>

0000000000401be5 <test>:
  401be5:	48 83 ec 08          	sub    $0x8,%rsp
  401be9:	b8 00 00 00 00       	mov    $0x0,%eax
  401bee:	e8 b3 fd ff ff       	callq  4019a6 <getbuf>
  401bf3:	89 c2                	mov    %eax,%edx
  401bf5:	48 8d 35 7c 19 00 00 	lea    0x197c(%rip),%rsi        # 403578 <_IO_stdin_used+0x3d8>
  401bfc:	bf 01 00 00 00       	mov    $0x1,%edi
  401c01:	b8 00 00 00 00       	mov    $0x0,%eax
  401c06:	e8 55 f2 ff ff       	callq  400e60 <__printf_chk@plt>
  401c0b:	48 83 c4 08          	add    $0x8,%rsp
  401c0f:	c3                   	retq   

0000000000401c10 <test2>:
  401c10:	48 83 ec 08          	sub    $0x8,%rsp
  401c14:	b8 00 00 00 00       	mov    $0x0,%eax
  401c19:	e8 9e fd ff ff       	callq  4019bc <getbuf_withcanary>
  401c1e:	89 c2                	mov    %eax,%edx
  401c20:	48 8d 35 79 19 00 00 	lea    0x1979(%rip),%rsi        # 4035a0 <_IO_stdin_used+0x400>
  401c27:	bf 01 00 00 00       	mov    $0x1,%edi
  401c2c:	b8 00 00 00 00       	mov    $0x0,%eax
  401c31:	e8 2a f2 ff ff       	callq  400e60 <__printf_chk@plt>
  401c36:	48 83 c4 08          	add    $0x8,%rsp
  401c3a:	c3                   	retq   

0000000000401c3b <save_char>:
  401c3b:	8b 05 03 45 20 00    	mov    0x204503(%rip),%eax        # 606144 <gets_cnt>
  401c41:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401c46:	7f 4a                	jg     401c92 <save_char+0x57>
  401c48:	89 f9                	mov    %edi,%ecx
  401c4a:	c0 e9 04             	shr    $0x4,%cl
  401c4d:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401c50:	4c 8d 05 a9 1c 00 00 	lea    0x1ca9(%rip),%r8        # 403900 <trans_char>
  401c57:	83 e1 0f             	and    $0xf,%ecx
  401c5a:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401c5f:	48 8d 0d da 38 20 00 	lea    0x2038da(%rip),%rcx        # 605540 <gets_buf>
  401c66:	48 63 f2             	movslq %edx,%rsi
  401c69:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401c6d:	8d 72 01             	lea    0x1(%rdx),%esi
  401c70:	83 e7 0f             	and    $0xf,%edi
  401c73:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401c78:	48 63 f6             	movslq %esi,%rsi
  401c7b:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401c7f:	83 c2 02             	add    $0x2,%edx
  401c82:	48 63 d2             	movslq %edx,%rdx
  401c85:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401c89:	83 c0 01             	add    $0x1,%eax
  401c8c:	89 05 b2 44 20 00    	mov    %eax,0x2044b2(%rip)        # 606144 <gets_cnt>
  401c92:	f3 c3                	repz retq 

0000000000401c94 <save_term>:
  401c94:	8b 05 aa 44 20 00    	mov    0x2044aa(%rip),%eax        # 606144 <gets_cnt>
  401c9a:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401c9d:	48 98                	cltq   
  401c9f:	48 8d 15 9a 38 20 00 	lea    0x20389a(%rip),%rdx        # 605540 <gets_buf>
  401ca6:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401caa:	c3                   	retq   

0000000000401cab <check_fail>:
  401cab:	48 83 ec 08          	sub    $0x8,%rsp
  401caf:	0f be 15 92 44 20 00 	movsbl 0x204492(%rip),%edx        # 606148 <target_prefix>
  401cb6:	4c 8d 05 83 38 20 00 	lea    0x203883(%rip),%r8        # 605540 <gets_buf>
  401cbd:	8b 0d 55 38 20 00    	mov    0x203855(%rip),%ecx        # 605518 <check_level>
  401cc3:	48 8d 35 04 19 00 00 	lea    0x1904(%rip),%rsi        # 4035ce <_IO_stdin_used+0x42e>
  401cca:	bf 01 00 00 00       	mov    $0x1,%edi
  401ccf:	b8 00 00 00 00       	mov    $0x0,%eax
  401cd4:	e8 87 f1 ff ff       	callq  400e60 <__printf_chk@plt>
  401cd9:	bf 01 00 00 00       	mov    $0x1,%edi
  401cde:	e8 cd f1 ff ff       	callq  400eb0 <exit@plt>

0000000000401ce3 <Gets>:
  401ce3:	41 54                	push   %r12
  401ce5:	55                   	push   %rbp
  401ce6:	53                   	push   %rbx
  401ce7:	49 89 fc             	mov    %rdi,%r12
  401cea:	c7 05 50 44 20 00 00 	movl   $0x0,0x204450(%rip)        # 606144 <gets_cnt>
  401cf1:	00 00 00 
  401cf4:	48 89 fb             	mov    %rdi,%rbx
  401cf7:	eb 11                	jmp    401d0a <Gets+0x27>
  401cf9:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401cfd:	88 03                	mov    %al,(%rbx)
  401cff:	0f b6 f8             	movzbl %al,%edi
  401d02:	e8 34 ff ff ff       	callq  401c3b <save_char>
  401d07:	48 89 eb             	mov    %rbp,%rbx
  401d0a:	48 8b 3d ff 37 20 00 	mov    0x2037ff(%rip),%rdi        # 605510 <infile>
  401d11:	e8 1a f1 ff ff       	callq  400e30 <_IO_getc@plt>
  401d16:	83 f8 ff             	cmp    $0xffffffff,%eax
  401d19:	74 05                	je     401d20 <Gets+0x3d>
  401d1b:	83 f8 0a             	cmp    $0xa,%eax
  401d1e:	75 d9                	jne    401cf9 <Gets+0x16>
  401d20:	c6 03 00             	movb   $0x0,(%rbx)
  401d23:	b8 00 00 00 00       	mov    $0x0,%eax
  401d28:	e8 67 ff ff ff       	callq  401c94 <save_term>
  401d2d:	4c 89 e0             	mov    %r12,%rax
  401d30:	5b                   	pop    %rbx
  401d31:	5d                   	pop    %rbp
  401d32:	41 5c                	pop    %r12
  401d34:	c3                   	retq   

0000000000401d35 <notify_server>:
  401d35:	55                   	push   %rbp
  401d36:	53                   	push   %rbx
  401d37:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401d3e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d45:	00 00 
  401d47:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401d4e:	00 
  401d4f:	31 c0                	xor    %eax,%eax
  401d51:	83 3d d0 37 20 00 00 	cmpl   $0x0,0x2037d0(%rip)        # 605528 <is_checker>
  401d58:	0f 85 cb 01 00 00    	jne    401f29 <notify_server+0x1f4>
  401d5e:	89 fb                	mov    %edi,%ebx
  401d60:	8b 05 de 43 20 00    	mov    0x2043de(%rip),%eax        # 606144 <gets_cnt>
  401d66:	83 c0 64             	add    $0x64,%eax
  401d69:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401d6e:	0f 8f bd 00 00 00    	jg     401e31 <notify_server+0xfc>
  401d74:	0f be 05 cd 43 20 00 	movsbl 0x2043cd(%rip),%eax        # 606148 <target_prefix>
  401d7b:	83 3d 26 37 20 00 00 	cmpl   $0x0,0x203726(%rip)        # 6054a8 <notify>
  401d82:	0f 84 c9 00 00 00    	je     401e51 <notify_server+0x11c>
  401d88:	8b 15 92 37 20 00    	mov    0x203792(%rip),%edx        # 605520 <authkey>
  401d8e:	85 db                	test   %ebx,%ebx
  401d90:	0f 84 c5 00 00 00    	je     401e5b <notify_server+0x126>
  401d96:	48 8d 2d 47 18 00 00 	lea    0x1847(%rip),%rbp        # 4035e4 <_IO_stdin_used+0x444>
  401d9d:	48 89 e7             	mov    %rsp,%rdi
  401da0:	48 8d 0d 99 37 20 00 	lea    0x203799(%rip),%rcx        # 605540 <gets_buf>
  401da7:	51                   	push   %rcx
  401da8:	56                   	push   %rsi
  401da9:	50                   	push   %rax
  401daa:	52                   	push   %rdx
  401dab:	49 89 e9             	mov    %rbp,%r9
  401dae:	44 8b 05 9b 33 20 00 	mov    0x20339b(%rip),%r8d        # 605150 <target_id>
  401db5:	48 8d 0d 32 18 00 00 	lea    0x1832(%rip),%rcx        # 4035ee <_IO_stdin_used+0x44e>
  401dbc:	ba 00 20 00 00       	mov    $0x2000,%edx
  401dc1:	be 01 00 00 00       	mov    $0x1,%esi
  401dc6:	b8 00 00 00 00       	mov    $0x0,%eax
  401dcb:	e8 10 f1 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  401dd0:	48 83 c4 20          	add    $0x20,%rsp
  401dd4:	83 3d cd 36 20 00 00 	cmpl   $0x0,0x2036cd(%rip)        # 6054a8 <notify>
  401ddb:	0f 84 bf 00 00 00    	je     401ea0 <notify_server+0x16b>
  401de1:	48 89 e1             	mov    %rsp,%rcx
  401de4:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401deb:	00 
  401dec:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401df2:	48 8b 15 6f 33 20 00 	mov    0x20336f(%rip),%rdx        # 605168 <lab>
  401df9:	48 8b 35 70 33 20 00 	mov    0x203370(%rip),%rsi        # 605170 <course>
  401e00:	48 8b 3d 59 33 20 00 	mov    0x203359(%rip),%rdi        # 605160 <user_id>
  401e07:	e8 45 12 00 00       	callq  403051 <driver_post>
  401e0c:	85 c0                	test   %eax,%eax
  401e0e:	78 57                	js     401e67 <notify_server+0x132>
  401e10:	85 db                	test   %ebx,%ebx
  401e12:	74 7b                	je     401e8f <notify_server+0x15a>
  401e14:	48 8d 3d 25 19 00 00 	lea    0x1925(%rip),%rdi        # 403740 <_IO_stdin_used+0x5a0>
  401e1b:	e8 20 ef ff ff       	callq  400d40 <puts@plt>
  401e20:	48 8d 3d ef 17 00 00 	lea    0x17ef(%rip),%rdi        # 403616 <_IO_stdin_used+0x476>
  401e27:	e8 14 ef ff ff       	callq  400d40 <puts@plt>
  401e2c:	e9 f8 00 00 00       	jmpq   401f29 <notify_server+0x1f4>
  401e31:	48 8d 35 d8 18 00 00 	lea    0x18d8(%rip),%rsi        # 403710 <_IO_stdin_used+0x570>
  401e38:	bf 01 00 00 00       	mov    $0x1,%edi
  401e3d:	b8 00 00 00 00       	mov    $0x0,%eax
  401e42:	e8 19 f0 ff ff       	callq  400e60 <__printf_chk@plt>
  401e47:	bf 01 00 00 00       	mov    $0x1,%edi
  401e4c:	e8 5f f0 ff ff       	callq  400eb0 <exit@plt>
  401e51:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401e56:	e9 33 ff ff ff       	jmpq   401d8e <notify_server+0x59>
  401e5b:	48 8d 2d 87 17 00 00 	lea    0x1787(%rip),%rbp        # 4035e9 <_IO_stdin_used+0x449>
  401e62:	e9 36 ff ff ff       	jmpq   401d9d <notify_server+0x68>
  401e67:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401e6e:	00 
  401e6f:	48 8d 35 94 17 00 00 	lea    0x1794(%rip),%rsi        # 40360a <_IO_stdin_used+0x46a>
  401e76:	bf 01 00 00 00       	mov    $0x1,%edi
  401e7b:	b8 00 00 00 00       	mov    $0x0,%eax
  401e80:	e8 db ef ff ff       	callq  400e60 <__printf_chk@plt>
  401e85:	bf 01 00 00 00       	mov    $0x1,%edi
  401e8a:	e8 21 f0 ff ff       	callq  400eb0 <exit@plt>
  401e8f:	48 8d 3d 8a 17 00 00 	lea    0x178a(%rip),%rdi        # 403620 <_IO_stdin_used+0x480>
  401e96:	e8 a5 ee ff ff       	callq  400d40 <puts@plt>
  401e9b:	e9 89 00 00 00       	jmpq   401f29 <notify_server+0x1f4>
  401ea0:	48 89 ea             	mov    %rbp,%rdx
  401ea3:	48 8d 35 ce 18 00 00 	lea    0x18ce(%rip),%rsi        # 403778 <_IO_stdin_used+0x5d8>
  401eaa:	bf 01 00 00 00       	mov    $0x1,%edi
  401eaf:	b8 00 00 00 00       	mov    $0x0,%eax
  401eb4:	e8 a7 ef ff ff       	callq  400e60 <__printf_chk@plt>
  401eb9:	48 8b 15 a0 32 20 00 	mov    0x2032a0(%rip),%rdx        # 605160 <user_id>
  401ec0:	48 8d 35 60 17 00 00 	lea    0x1760(%rip),%rsi        # 403627 <_IO_stdin_used+0x487>
  401ec7:	bf 01 00 00 00       	mov    $0x1,%edi
  401ecc:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed1:	e8 8a ef ff ff       	callq  400e60 <__printf_chk@plt>
  401ed6:	48 8b 15 93 32 20 00 	mov    0x203293(%rip),%rdx        # 605170 <course>
  401edd:	48 8d 35 50 17 00 00 	lea    0x1750(%rip),%rsi        # 403634 <_IO_stdin_used+0x494>
  401ee4:	bf 01 00 00 00       	mov    $0x1,%edi
  401ee9:	b8 00 00 00 00       	mov    $0x0,%eax
  401eee:	e8 6d ef ff ff       	callq  400e60 <__printf_chk@plt>
  401ef3:	48 8b 15 6e 32 20 00 	mov    0x20326e(%rip),%rdx        # 605168 <lab>
  401efa:	48 8d 35 3f 17 00 00 	lea    0x173f(%rip),%rsi        # 403640 <_IO_stdin_used+0x4a0>
  401f01:	bf 01 00 00 00       	mov    $0x1,%edi
  401f06:	b8 00 00 00 00       	mov    $0x0,%eax
  401f0b:	e8 50 ef ff ff       	callq  400e60 <__printf_chk@plt>
  401f10:	48 89 e2             	mov    %rsp,%rdx
  401f13:	48 8d 35 2f 17 00 00 	lea    0x172f(%rip),%rsi        # 403649 <_IO_stdin_used+0x4a9>
  401f1a:	bf 01 00 00 00       	mov    $0x1,%edi
  401f1f:	b8 00 00 00 00       	mov    $0x0,%eax
  401f24:	e8 37 ef ff ff       	callq  400e60 <__printf_chk@plt>
  401f29:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401f30:	00 
  401f31:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401f38:	00 00 
  401f3a:	75 0a                	jne    401f46 <notify_server+0x211>
  401f3c:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  401f43:	5b                   	pop    %rbx
  401f44:	5d                   	pop    %rbp
  401f45:	c3                   	retq   
  401f46:	e8 4b 02 00 00       	callq  402196 <__stack_chk_fail>

0000000000401f4b <validate>:
  401f4b:	53                   	push   %rbx
  401f4c:	89 fb                	mov    %edi,%ebx
  401f4e:	83 3d d3 35 20 00 00 	cmpl   $0x0,0x2035d3(%rip)        # 605528 <is_checker>
  401f55:	74 72                	je     401fc9 <validate+0x7e>
  401f57:	39 3d bf 35 20 00    	cmp    %edi,0x2035bf(%rip)        # 60551c <vlevel>
  401f5d:	75 32                	jne    401f91 <validate+0x46>
  401f5f:	8b 15 b3 35 20 00    	mov    0x2035b3(%rip),%edx        # 605518 <check_level>
  401f65:	39 fa                	cmp    %edi,%edx
  401f67:	75 3e                	jne    401fa7 <validate+0x5c>
  401f69:	0f be 15 d8 41 20 00 	movsbl 0x2041d8(%rip),%edx        # 606148 <target_prefix>
  401f70:	4c 8d 05 c9 35 20 00 	lea    0x2035c9(%rip),%r8        # 605540 <gets_buf>
  401f77:	89 f9                	mov    %edi,%ecx
  401f79:	48 8d 35 f3 16 00 00 	lea    0x16f3(%rip),%rsi        # 403673 <_IO_stdin_used+0x4d3>
  401f80:	bf 01 00 00 00       	mov    $0x1,%edi
  401f85:	b8 00 00 00 00       	mov    $0x0,%eax
  401f8a:	e8 d1 ee ff ff       	callq  400e60 <__printf_chk@plt>
  401f8f:	5b                   	pop    %rbx
  401f90:	c3                   	retq   
  401f91:	48 8d 3d bd 16 00 00 	lea    0x16bd(%rip),%rdi        # 403655 <_IO_stdin_used+0x4b5>
  401f98:	e8 a3 ed ff ff       	callq  400d40 <puts@plt>
  401f9d:	b8 00 00 00 00       	mov    $0x0,%eax
  401fa2:	e8 04 fd ff ff       	callq  401cab <check_fail>
  401fa7:	89 f9                	mov    %edi,%ecx
  401fa9:	48 8d 35 f0 17 00 00 	lea    0x17f0(%rip),%rsi        # 4037a0 <_IO_stdin_used+0x600>
  401fb0:	bf 01 00 00 00       	mov    $0x1,%edi
  401fb5:	b8 00 00 00 00       	mov    $0x0,%eax
  401fba:	e8 a1 ee ff ff       	callq  400e60 <__printf_chk@plt>
  401fbf:	b8 00 00 00 00       	mov    $0x0,%eax
  401fc4:	e8 e2 fc ff ff       	callq  401cab <check_fail>
  401fc9:	39 3d 4d 35 20 00    	cmp    %edi,0x20354d(%rip)        # 60551c <vlevel>
  401fcf:	74 1a                	je     401feb <validate+0xa0>
  401fd1:	48 8d 3d 7d 16 00 00 	lea    0x167d(%rip),%rdi        # 403655 <_IO_stdin_used+0x4b5>
  401fd8:	e8 63 ed ff ff       	callq  400d40 <puts@plt>
  401fdd:	89 de                	mov    %ebx,%esi
  401fdf:	bf 00 00 00 00       	mov    $0x0,%edi
  401fe4:	e8 4c fd ff ff       	callq  401d35 <notify_server>
  401fe9:	eb a4                	jmp    401f8f <validate+0x44>
  401feb:	0f be 0d 56 41 20 00 	movsbl 0x204156(%rip),%ecx        # 606148 <target_prefix>
  401ff2:	89 fa                	mov    %edi,%edx
  401ff4:	48 8d 35 cd 17 00 00 	lea    0x17cd(%rip),%rsi        # 4037c8 <_IO_stdin_used+0x628>
  401ffb:	bf 01 00 00 00       	mov    $0x1,%edi
  402000:	b8 00 00 00 00       	mov    $0x0,%eax
  402005:	e8 56 ee ff ff       	callq  400e60 <__printf_chk@plt>
  40200a:	89 de                	mov    %ebx,%esi
  40200c:	bf 01 00 00 00       	mov    $0x1,%edi
  402011:	e8 1f fd ff ff       	callq  401d35 <notify_server>
  402016:	e9 74 ff ff ff       	jmpq   401f8f <validate+0x44>

000000000040201b <fail>:
  40201b:	48 83 ec 08          	sub    $0x8,%rsp
  40201f:	83 3d 02 35 20 00 00 	cmpl   $0x0,0x203502(%rip)        # 605528 <is_checker>
  402026:	75 11                	jne    402039 <fail+0x1e>
  402028:	89 fe                	mov    %edi,%esi
  40202a:	bf 00 00 00 00       	mov    $0x0,%edi
  40202f:	e8 01 fd ff ff       	callq  401d35 <notify_server>
  402034:	48 83 c4 08          	add    $0x8,%rsp
  402038:	c3                   	retq   
  402039:	b8 00 00 00 00       	mov    $0x0,%eax
  40203e:	e8 68 fc ff ff       	callq  401cab <check_fail>

0000000000402043 <bushandler>:
  402043:	48 83 ec 08          	sub    $0x8,%rsp
  402047:	83 3d da 34 20 00 00 	cmpl   $0x0,0x2034da(%rip)        # 605528 <is_checker>
  40204e:	74 16                	je     402066 <bushandler+0x23>
  402050:	48 8d 3d 31 16 00 00 	lea    0x1631(%rip),%rdi        # 403688 <_IO_stdin_used+0x4e8>
  402057:	e8 e4 ec ff ff       	callq  400d40 <puts@plt>
  40205c:	b8 00 00 00 00       	mov    $0x0,%eax
  402061:	e8 45 fc ff ff       	callq  401cab <check_fail>
  402066:	48 8d 3d 93 17 00 00 	lea    0x1793(%rip),%rdi        # 403800 <_IO_stdin_used+0x660>
  40206d:	e8 ce ec ff ff       	callq  400d40 <puts@plt>
  402072:	48 8d 3d 19 16 00 00 	lea    0x1619(%rip),%rdi        # 403692 <_IO_stdin_used+0x4f2>
  402079:	e8 c2 ec ff ff       	callq  400d40 <puts@plt>
  40207e:	be 00 00 00 00       	mov    $0x0,%esi
  402083:	bf 00 00 00 00       	mov    $0x0,%edi
  402088:	e8 a8 fc ff ff       	callq  401d35 <notify_server>
  40208d:	bf 01 00 00 00       	mov    $0x1,%edi
  402092:	e8 19 ee ff ff       	callq  400eb0 <exit@plt>

0000000000402097 <seghandler>:
  402097:	48 83 ec 08          	sub    $0x8,%rsp
  40209b:	83 3d 86 34 20 00 00 	cmpl   $0x0,0x203486(%rip)        # 605528 <is_checker>
  4020a2:	74 16                	je     4020ba <seghandler+0x23>
  4020a4:	48 8d 3d fd 15 00 00 	lea    0x15fd(%rip),%rdi        # 4036a8 <_IO_stdin_used+0x508>
  4020ab:	e8 90 ec ff ff       	callq  400d40 <puts@plt>
  4020b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b5:	e8 f1 fb ff ff       	callq  401cab <check_fail>
  4020ba:	48 8d 3d 5f 17 00 00 	lea    0x175f(%rip),%rdi        # 403820 <_IO_stdin_used+0x680>
  4020c1:	e8 7a ec ff ff       	callq  400d40 <puts@plt>
  4020c6:	48 8d 3d c5 15 00 00 	lea    0x15c5(%rip),%rdi        # 403692 <_IO_stdin_used+0x4f2>
  4020cd:	e8 6e ec ff ff       	callq  400d40 <puts@plt>
  4020d2:	be 00 00 00 00       	mov    $0x0,%esi
  4020d7:	bf 00 00 00 00       	mov    $0x0,%edi
  4020dc:	e8 54 fc ff ff       	callq  401d35 <notify_server>
  4020e1:	bf 01 00 00 00       	mov    $0x1,%edi
  4020e6:	e8 c5 ed ff ff       	callq  400eb0 <exit@plt>

00000000004020eb <illegalhandler>:
  4020eb:	48 83 ec 08          	sub    $0x8,%rsp
  4020ef:	83 3d 32 34 20 00 00 	cmpl   $0x0,0x203432(%rip)        # 605528 <is_checker>
  4020f6:	74 16                	je     40210e <illegalhandler+0x23>
  4020f8:	48 8d 3d bc 15 00 00 	lea    0x15bc(%rip),%rdi        # 4036bb <_IO_stdin_used+0x51b>
  4020ff:	e8 3c ec ff ff       	callq  400d40 <puts@plt>
  402104:	b8 00 00 00 00       	mov    $0x0,%eax
  402109:	e8 9d fb ff ff       	callq  401cab <check_fail>
  40210e:	48 8d 3d 33 17 00 00 	lea    0x1733(%rip),%rdi        # 403848 <_IO_stdin_used+0x6a8>
  402115:	e8 26 ec ff ff       	callq  400d40 <puts@plt>
  40211a:	48 8d 3d 71 15 00 00 	lea    0x1571(%rip),%rdi        # 403692 <_IO_stdin_used+0x4f2>
  402121:	e8 1a ec ff ff       	callq  400d40 <puts@plt>
  402126:	be 00 00 00 00       	mov    $0x0,%esi
  40212b:	bf 00 00 00 00       	mov    $0x0,%edi
  402130:	e8 00 fc ff ff       	callq  401d35 <notify_server>
  402135:	bf 01 00 00 00       	mov    $0x1,%edi
  40213a:	e8 71 ed ff ff       	callq  400eb0 <exit@plt>

000000000040213f <sigalrmhandler>:
  40213f:	48 83 ec 08          	sub    $0x8,%rsp
  402143:	83 3d de 33 20 00 00 	cmpl   $0x0,0x2033de(%rip)        # 605528 <is_checker>
  40214a:	74 16                	je     402162 <sigalrmhandler+0x23>
  40214c:	48 8d 3d 7c 15 00 00 	lea    0x157c(%rip),%rdi        # 4036cf <_IO_stdin_used+0x52f>
  402153:	e8 e8 eb ff ff       	callq  400d40 <puts@plt>
  402158:	b8 00 00 00 00       	mov    $0x0,%eax
  40215d:	e8 49 fb ff ff       	callq  401cab <check_fail>
  402162:	ba 02 00 00 00       	mov    $0x2,%edx
  402167:	48 8d 35 0a 17 00 00 	lea    0x170a(%rip),%rsi        # 403878 <_IO_stdin_used+0x6d8>
  40216e:	bf 01 00 00 00       	mov    $0x1,%edi
  402173:	b8 00 00 00 00       	mov    $0x0,%eax
  402178:	e8 e3 ec ff ff       	callq  400e60 <__printf_chk@plt>
  40217d:	be 00 00 00 00       	mov    $0x0,%esi
  402182:	bf 00 00 00 00       	mov    $0x0,%edi
  402187:	e8 a9 fb ff ff       	callq  401d35 <notify_server>
  40218c:	bf 01 00 00 00       	mov    $0x1,%edi
  402191:	e8 1a ed ff ff       	callq  400eb0 <exit@plt>

0000000000402196 <__stack_chk_fail>:
  402196:	48 83 ec 08          	sub    $0x8,%rsp
  40219a:	83 3d 87 33 20 00 00 	cmpl   $0x0,0x203387(%rip)        # 605528 <is_checker>
  4021a1:	74 16                	je     4021b9 <__stack_chk_fail+0x23>
  4021a3:	48 8d 3d 2d 15 00 00 	lea    0x152d(%rip),%rdi        # 4036d7 <_IO_stdin_used+0x537>
  4021aa:	e8 91 eb ff ff       	callq  400d40 <puts@plt>
  4021af:	b8 00 00 00 00       	mov    $0x0,%eax
  4021b4:	e8 f2 fa ff ff       	callq  401cab <check_fail>
  4021b9:	48 8d 3d f0 16 00 00 	lea    0x16f0(%rip),%rdi        # 4038b0 <_IO_stdin_used+0x710>
  4021c0:	e8 7b eb ff ff       	callq  400d40 <puts@plt>
  4021c5:	48 8d 3d c6 14 00 00 	lea    0x14c6(%rip),%rdi        # 403692 <_IO_stdin_used+0x4f2>
  4021cc:	e8 6f eb ff ff       	callq  400d40 <puts@plt>
  4021d1:	be 00 00 00 00       	mov    $0x0,%esi
  4021d6:	bf 00 00 00 00       	mov    $0x0,%edi
  4021db:	e8 55 fb ff ff       	callq  401d35 <notify_server>
  4021e0:	bf 01 00 00 00       	mov    $0x1,%edi
  4021e5:	e8 c6 ec ff ff       	callq  400eb0 <exit@plt>

00000000004021ea <launch>:
  4021ea:	55                   	push   %rbp
  4021eb:	48 89 e5             	mov    %rsp,%rbp
  4021ee:	53                   	push   %rbx
  4021ef:	48 83 ec 18          	sub    $0x18,%rsp
  4021f3:	48 89 fa             	mov    %rdi,%rdx
  4021f6:	89 f3                	mov    %esi,%ebx
  4021f8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4021ff:	00 00 
  402201:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402205:	31 c0                	xor    %eax,%eax
  402207:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  40220b:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  40220f:	48 29 c4             	sub    %rax,%rsp
  402212:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402217:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  40221b:	be f4 00 00 00       	mov    $0xf4,%esi
  402220:	e8 4b eb ff ff       	callq  400d70 <memset@plt>
  402225:	48 8b 05 94 32 20 00 	mov    0x203294(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  40222c:	48 39 05 dd 32 20 00 	cmp    %rax,0x2032dd(%rip)        # 605510 <infile>
  402233:	74 42                	je     402277 <launch+0x8d>
  402235:	c7 05 dd 32 20 00 00 	movl   $0x0,0x2032dd(%rip)        # 60551c <vlevel>
  40223c:	00 00 00 
  40223f:	85 db                	test   %ebx,%ebx
  402241:	75 4c                	jne    40228f <launch+0xa5>
  402243:	b8 00 00 00 00       	mov    $0x0,%eax
  402248:	e8 98 f9 ff ff       	callq  401be5 <test>
  40224d:	83 3d d4 32 20 00 00 	cmpl   $0x0,0x2032d4(%rip)        # 605528 <is_checker>
  402254:	75 45                	jne    40229b <launch+0xb1>
  402256:	48 8d 3d a1 14 00 00 	lea    0x14a1(%rip),%rdi        # 4036fe <_IO_stdin_used+0x55e>
  40225d:	e8 de ea ff ff       	callq  400d40 <puts@plt>
  402262:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402266:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40226d:	00 00 
  40226f:	75 40                	jne    4022b1 <launch+0xc7>
  402271:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402275:	c9                   	leaveq 
  402276:	c3                   	retq   
  402277:	48 8d 35 68 14 00 00 	lea    0x1468(%rip),%rsi        # 4036e6 <_IO_stdin_used+0x546>
  40227e:	bf 01 00 00 00       	mov    $0x1,%edi
  402283:	b8 00 00 00 00       	mov    $0x0,%eax
  402288:	e8 d3 eb ff ff       	callq  400e60 <__printf_chk@plt>
  40228d:	eb a6                	jmp    402235 <launch+0x4b>
  40228f:	b8 00 00 00 00       	mov    $0x0,%eax
  402294:	e8 77 f9 ff ff       	callq  401c10 <test2>
  402299:	eb b2                	jmp    40224d <launch+0x63>
  40229b:	48 8d 3d 51 14 00 00 	lea    0x1451(%rip),%rdi        # 4036f3 <_IO_stdin_used+0x553>
  4022a2:	e8 99 ea ff ff       	callq  400d40 <puts@plt>
  4022a7:	b8 00 00 00 00       	mov    $0x0,%eax
  4022ac:	e8 fa f9 ff ff       	callq  401cab <check_fail>
  4022b1:	e8 e0 fe ff ff       	callq  402196 <__stack_chk_fail>

00000000004022b6 <stable_launch>:
  4022b6:	55                   	push   %rbp
  4022b7:	53                   	push   %rbx
  4022b8:	48 83 ec 08          	sub    $0x8,%rsp
  4022bc:	89 f5                	mov    %esi,%ebp
  4022be:	48 89 3d 43 32 20 00 	mov    %rdi,0x203243(%rip)        # 605508 <global_offset>
  4022c5:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4022cb:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4022d1:	b9 32 01 00 00       	mov    $0x132,%ecx
  4022d6:	ba 07 00 00 00       	mov    $0x7,%edx
  4022db:	be 00 00 10 00       	mov    $0x100000,%esi
  4022e0:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4022e5:	e8 76 ea ff ff       	callq  400d60 <mmap@plt>
  4022ea:	48 89 c3             	mov    %rax,%rbx
  4022ed:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4022f3:	75 4a                	jne    40233f <stable_launch+0x89>
  4022f5:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4022fc:	48 89 15 4d 3e 20 00 	mov    %rdx,0x203e4d(%rip)        # 606150 <stack_top>
  402303:	48 89 e0             	mov    %rsp,%rax
  402306:	48 89 d4             	mov    %rdx,%rsp
  402309:	48 89 c2             	mov    %rax,%rdx
  40230c:	48 89 15 ed 31 20 00 	mov    %rdx,0x2031ed(%rip)        # 605500 <global_save_stack>
  402313:	89 ee                	mov    %ebp,%esi
  402315:	48 8b 3d ec 31 20 00 	mov    0x2031ec(%rip),%rdi        # 605508 <global_offset>
  40231c:	e8 c9 fe ff ff       	callq  4021ea <launch>
  402321:	48 8b 05 d8 31 20 00 	mov    0x2031d8(%rip),%rax        # 605500 <global_save_stack>
  402328:	48 89 c4             	mov    %rax,%rsp
  40232b:	be 00 00 10 00       	mov    $0x100000,%esi
  402330:	48 89 df             	mov    %rbx,%rdi
  402333:	e8 18 eb ff ff       	callq  400e50 <munmap@plt>
  402338:	48 83 c4 08          	add    $0x8,%rsp
  40233c:	5b                   	pop    %rbx
  40233d:	5d                   	pop    %rbp
  40233e:	c3                   	retq   
  40233f:	be 00 00 10 00       	mov    $0x100000,%esi
  402344:	48 89 c7             	mov    %rax,%rdi
  402347:	e8 04 eb ff ff       	callq  400e50 <munmap@plt>
  40234c:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402351:	48 8d 15 80 15 00 00 	lea    0x1580(%rip),%rdx        # 4038d8 <_IO_stdin_used+0x738>
  402358:	be 01 00 00 00       	mov    $0x1,%esi
  40235d:	48 8b 3d 7c 31 20 00 	mov    0x20317c(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  402364:	b8 00 00 00 00       	mov    $0x0,%eax
  402369:	e8 62 eb ff ff       	callq  400ed0 <__fprintf_chk@plt>
  40236e:	bf 01 00 00 00       	mov    $0x1,%edi
  402373:	e8 38 eb ff ff       	callq  400eb0 <exit@plt>

0000000000402378 <rio_readinitb>:
  402378:	89 37                	mov    %esi,(%rdi)
  40237a:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402381:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402385:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402389:	c3                   	retq   

000000000040238a <sigalrm_handler>:
  40238a:	48 83 ec 08          	sub    $0x8,%rsp
  40238e:	b9 00 00 00 00       	mov    $0x0,%ecx
  402393:	48 8d 15 76 15 00 00 	lea    0x1576(%rip),%rdx        # 403910 <trans_char+0x10>
  40239a:	be 01 00 00 00       	mov    $0x1,%esi
  40239f:	48 8b 3d 3a 31 20 00 	mov    0x20313a(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  4023a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4023ab:	e8 20 eb ff ff       	callq  400ed0 <__fprintf_chk@plt>
  4023b0:	bf 01 00 00 00       	mov    $0x1,%edi
  4023b5:	e8 f6 ea ff ff       	callq  400eb0 <exit@plt>

00000000004023ba <rio_writen>:
  4023ba:	41 55                	push   %r13
  4023bc:	41 54                	push   %r12
  4023be:	55                   	push   %rbp
  4023bf:	53                   	push   %rbx
  4023c0:	48 83 ec 08          	sub    $0x8,%rsp
  4023c4:	41 89 fc             	mov    %edi,%r12d
  4023c7:	48 89 f5             	mov    %rsi,%rbp
  4023ca:	49 89 d5             	mov    %rdx,%r13
  4023cd:	48 89 d3             	mov    %rdx,%rbx
  4023d0:	eb 06                	jmp    4023d8 <rio_writen+0x1e>
  4023d2:	48 29 c3             	sub    %rax,%rbx
  4023d5:	48 01 c5             	add    %rax,%rbp
  4023d8:	48 85 db             	test   %rbx,%rbx
  4023db:	74 24                	je     402401 <rio_writen+0x47>
  4023dd:	48 89 da             	mov    %rbx,%rdx
  4023e0:	48 89 ee             	mov    %rbp,%rsi
  4023e3:	44 89 e7             	mov    %r12d,%edi
  4023e6:	e8 65 e9 ff ff       	callq  400d50 <write@plt>
  4023eb:	48 85 c0             	test   %rax,%rax
  4023ee:	7f e2                	jg     4023d2 <rio_writen+0x18>
  4023f0:	e8 fb e8 ff ff       	callq  400cf0 <__errno_location@plt>
  4023f5:	83 38 04             	cmpl   $0x4,(%rax)
  4023f8:	75 15                	jne    40240f <rio_writen+0x55>
  4023fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4023ff:	eb d1                	jmp    4023d2 <rio_writen+0x18>
  402401:	4c 89 e8             	mov    %r13,%rax
  402404:	48 83 c4 08          	add    $0x8,%rsp
  402408:	5b                   	pop    %rbx
  402409:	5d                   	pop    %rbp
  40240a:	41 5c                	pop    %r12
  40240c:	41 5d                	pop    %r13
  40240e:	c3                   	retq   
  40240f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402416:	eb ec                	jmp    402404 <rio_writen+0x4a>

0000000000402418 <rio_read>:
  402418:	41 55                	push   %r13
  40241a:	41 54                	push   %r12
  40241c:	55                   	push   %rbp
  40241d:	53                   	push   %rbx
  40241e:	48 83 ec 08          	sub    $0x8,%rsp
  402422:	48 89 fb             	mov    %rdi,%rbx
  402425:	49 89 f5             	mov    %rsi,%r13
  402428:	49 89 d4             	mov    %rdx,%r12
  40242b:	eb 0a                	jmp    402437 <rio_read+0x1f>
  40242d:	e8 be e8 ff ff       	callq  400cf0 <__errno_location@plt>
  402432:	83 38 04             	cmpl   $0x4,(%rax)
  402435:	75 5c                	jne    402493 <rio_read+0x7b>
  402437:	8b 6b 04             	mov    0x4(%rbx),%ebp
  40243a:	85 ed                	test   %ebp,%ebp
  40243c:	7f 24                	jg     402462 <rio_read+0x4a>
  40243e:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402442:	8b 3b                	mov    (%rbx),%edi
  402444:	ba 00 20 00 00       	mov    $0x2000,%edx
  402449:	48 89 ee             	mov    %rbp,%rsi
  40244c:	e8 4f e9 ff ff       	callq  400da0 <read@plt>
  402451:	89 43 04             	mov    %eax,0x4(%rbx)
  402454:	85 c0                	test   %eax,%eax
  402456:	78 d5                	js     40242d <rio_read+0x15>
  402458:	85 c0                	test   %eax,%eax
  40245a:	74 40                	je     40249c <rio_read+0x84>
  40245c:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402460:	eb d5                	jmp    402437 <rio_read+0x1f>
  402462:	89 e8                	mov    %ebp,%eax
  402464:	4c 39 e0             	cmp    %r12,%rax
  402467:	72 03                	jb     40246c <rio_read+0x54>
  402469:	44 89 e5             	mov    %r12d,%ebp
  40246c:	4c 63 e5             	movslq %ebp,%r12
  40246f:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402473:	4c 89 e2             	mov    %r12,%rdx
  402476:	4c 89 ef             	mov    %r13,%rdi
  402479:	e8 82 e9 ff ff       	callq  400e00 <memcpy@plt>
  40247e:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402482:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402485:	4c 89 e0             	mov    %r12,%rax
  402488:	48 83 c4 08          	add    $0x8,%rsp
  40248c:	5b                   	pop    %rbx
  40248d:	5d                   	pop    %rbp
  40248e:	41 5c                	pop    %r12
  402490:	41 5d                	pop    %r13
  402492:	c3                   	retq   
  402493:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40249a:	eb ec                	jmp    402488 <rio_read+0x70>
  40249c:	b8 00 00 00 00       	mov    $0x0,%eax
  4024a1:	eb e5                	jmp    402488 <rio_read+0x70>

00000000004024a3 <rio_readlineb>:
  4024a3:	41 55                	push   %r13
  4024a5:	41 54                	push   %r12
  4024a7:	55                   	push   %rbp
  4024a8:	53                   	push   %rbx
  4024a9:	48 83 ec 18          	sub    $0x18,%rsp
  4024ad:	49 89 fd             	mov    %rdi,%r13
  4024b0:	48 89 f5             	mov    %rsi,%rbp
  4024b3:	49 89 d4             	mov    %rdx,%r12
  4024b6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4024bd:	00 00 
  4024bf:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4024c4:	31 c0                	xor    %eax,%eax
  4024c6:	bb 01 00 00 00       	mov    $0x1,%ebx
  4024cb:	4c 39 e3             	cmp    %r12,%rbx
  4024ce:	73 47                	jae    402517 <rio_readlineb+0x74>
  4024d0:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4024d5:	ba 01 00 00 00       	mov    $0x1,%edx
  4024da:	4c 89 ef             	mov    %r13,%rdi
  4024dd:	e8 36 ff ff ff       	callq  402418 <rio_read>
  4024e2:	83 f8 01             	cmp    $0x1,%eax
  4024e5:	75 1c                	jne    402503 <rio_readlineb+0x60>
  4024e7:	48 8d 45 01          	lea    0x1(%rbp),%rax
  4024eb:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  4024f0:	88 55 00             	mov    %dl,0x0(%rbp)
  4024f3:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  4024f8:	74 1a                	je     402514 <rio_readlineb+0x71>
  4024fa:	48 83 c3 01          	add    $0x1,%rbx
  4024fe:	48 89 c5             	mov    %rax,%rbp
  402501:	eb c8                	jmp    4024cb <rio_readlineb+0x28>
  402503:	85 c0                	test   %eax,%eax
  402505:	75 32                	jne    402539 <rio_readlineb+0x96>
  402507:	48 83 fb 01          	cmp    $0x1,%rbx
  40250b:	75 0a                	jne    402517 <rio_readlineb+0x74>
  40250d:	b8 00 00 00 00       	mov    $0x0,%eax
  402512:	eb 0a                	jmp    40251e <rio_readlineb+0x7b>
  402514:	48 89 c5             	mov    %rax,%rbp
  402517:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  40251b:	48 89 d8             	mov    %rbx,%rax
  40251e:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402523:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  40252a:	00 00 
  40252c:	75 14                	jne    402542 <rio_readlineb+0x9f>
  40252e:	48 83 c4 18          	add    $0x18,%rsp
  402532:	5b                   	pop    %rbx
  402533:	5d                   	pop    %rbp
  402534:	41 5c                	pop    %r12
  402536:	41 5d                	pop    %r13
  402538:	c3                   	retq   
  402539:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402540:	eb dc                	jmp    40251e <rio_readlineb+0x7b>
  402542:	e8 4f fc ff ff       	callq  402196 <__stack_chk_fail>

0000000000402547 <urlencode>:
  402547:	41 54                	push   %r12
  402549:	55                   	push   %rbp
  40254a:	53                   	push   %rbx
  40254b:	48 83 ec 10          	sub    $0x10,%rsp
  40254f:	48 89 fb             	mov    %rdi,%rbx
  402552:	48 89 f5             	mov    %rsi,%rbp
  402555:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40255c:	00 00 
  40255e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402563:	31 c0                	xor    %eax,%eax
  402565:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40256c:	f2 ae                	repnz scas %es:(%rdi),%al
  40256e:	48 89 ce             	mov    %rcx,%rsi
  402571:	48 f7 d6             	not    %rsi
  402574:	8d 46 ff             	lea    -0x1(%rsi),%eax
  402577:	eb 0f                	jmp    402588 <urlencode+0x41>
  402579:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  40257d:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402581:	48 83 c3 01          	add    $0x1,%rbx
  402585:	44 89 e0             	mov    %r12d,%eax
  402588:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  40258c:	85 c0                	test   %eax,%eax
  40258e:	0f 84 a8 00 00 00    	je     40263c <urlencode+0xf5>
  402594:	44 0f b6 03          	movzbl (%rbx),%r8d
  402598:	41 80 f8 2a          	cmp    $0x2a,%r8b
  40259c:	0f 94 c2             	sete   %dl
  40259f:	41 80 f8 2d          	cmp    $0x2d,%r8b
  4025a3:	0f 94 c0             	sete   %al
  4025a6:	08 c2                	or     %al,%dl
  4025a8:	75 cf                	jne    402579 <urlencode+0x32>
  4025aa:	41 80 f8 2e          	cmp    $0x2e,%r8b
  4025ae:	74 c9                	je     402579 <urlencode+0x32>
  4025b0:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4025b4:	74 c3                	je     402579 <urlencode+0x32>
  4025b6:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4025ba:	3c 09                	cmp    $0x9,%al
  4025bc:	76 bb                	jbe    402579 <urlencode+0x32>
  4025be:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4025c2:	3c 19                	cmp    $0x19,%al
  4025c4:	76 b3                	jbe    402579 <urlencode+0x32>
  4025c6:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4025ca:	3c 19                	cmp    $0x19,%al
  4025cc:	76 ab                	jbe    402579 <urlencode+0x32>
  4025ce:	41 80 f8 20          	cmp    $0x20,%r8b
  4025d2:	74 56                	je     40262a <urlencode+0xe3>
  4025d4:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  4025d8:	3c 5f                	cmp    $0x5f,%al
  4025da:	0f 96 c2             	setbe  %dl
  4025dd:	41 80 f8 09          	cmp    $0x9,%r8b
  4025e1:	0f 94 c0             	sete   %al
  4025e4:	08 c2                	or     %al,%dl
  4025e6:	74 4f                	je     402637 <urlencode+0xf0>
  4025e8:	48 89 e7             	mov    %rsp,%rdi
  4025eb:	45 0f b6 c0          	movzbl %r8b,%r8d
  4025ef:	48 8d 0d d2 13 00 00 	lea    0x13d2(%rip),%rcx        # 4039c8 <trans_char+0xc8>
  4025f6:	ba 08 00 00 00       	mov    $0x8,%edx
  4025fb:	be 01 00 00 00       	mov    $0x1,%esi
  402600:	b8 00 00 00 00       	mov    $0x0,%eax
  402605:	e8 d6 e8 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  40260a:	0f b6 04 24          	movzbl (%rsp),%eax
  40260e:	88 45 00             	mov    %al,0x0(%rbp)
  402611:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402616:	88 45 01             	mov    %al,0x1(%rbp)
  402619:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  40261e:	88 45 02             	mov    %al,0x2(%rbp)
  402621:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402625:	e9 57 ff ff ff       	jmpq   402581 <urlencode+0x3a>
  40262a:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  40262e:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402632:	e9 4a ff ff ff       	jmpq   402581 <urlencode+0x3a>
  402637:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40263c:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402641:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402648:	00 00 
  40264a:	75 09                	jne    402655 <urlencode+0x10e>
  40264c:	48 83 c4 10          	add    $0x10,%rsp
  402650:	5b                   	pop    %rbx
  402651:	5d                   	pop    %rbp
  402652:	41 5c                	pop    %r12
  402654:	c3                   	retq   
  402655:	e8 3c fb ff ff       	callq  402196 <__stack_chk_fail>

000000000040265a <submitr>:
  40265a:	41 57                	push   %r15
  40265c:	41 56                	push   %r14
  40265e:	41 55                	push   %r13
  402660:	41 54                	push   %r12
  402662:	55                   	push   %rbp
  402663:	53                   	push   %rbx
  402664:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  40266b:	49 89 fd             	mov    %rdi,%r13
  40266e:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  402672:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  402677:	49 89 ce             	mov    %rcx,%r14
  40267a:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  40267f:	4d 89 cf             	mov    %r9,%r15
  402682:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  402689:	00 
  40268a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402691:	00 00 
  402693:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  40269a:	00 
  40269b:	31 c0                	xor    %eax,%eax
  40269d:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  4026a4:	00 
  4026a5:	ba 00 00 00 00       	mov    $0x0,%edx
  4026aa:	be 01 00 00 00       	mov    $0x1,%esi
  4026af:	bf 02 00 00 00       	mov    $0x2,%edi
  4026b4:	e8 37 e8 ff ff       	callq  400ef0 <socket@plt>
  4026b9:	85 c0                	test   %eax,%eax
  4026bb:	0f 88 ae 02 00 00    	js     40296f <submitr+0x315>
  4026c1:	89 c3                	mov    %eax,%ebx
  4026c3:	4c 89 ef             	mov    %r13,%rdi
  4026c6:	e8 05 e7 ff ff       	callq  400dd0 <gethostbyname@plt>
  4026cb:	48 85 c0             	test   %rax,%rax
  4026ce:	0f 84 e7 02 00 00    	je     4029bb <submitr+0x361>
  4026d4:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  4026d9:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
  4026e0:	00 00 
  4026e2:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
  4026e9:	00 
  4026ea:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
  4026f1:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  4026f8:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4026fc:	48 8b 40 18          	mov    0x18(%rax),%rax
  402700:	48 8b 30             	mov    (%rax),%rsi
  402703:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402708:	b9 0c 00 00 00       	mov    $0xc,%ecx
  40270d:	e8 ce e6 ff ff       	callq  400de0 <__memmove_chk@plt>
  402712:	0f b7 44 24 1c       	movzwl 0x1c(%rsp),%eax
  402717:	66 c1 c8 08          	ror    $0x8,%ax
  40271b:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  402720:	ba 10 00 00 00       	mov    $0x10,%edx
  402725:	4c 89 e6             	mov    %r12,%rsi
  402728:	89 df                	mov    %ebx,%edi
  40272a:	e8 91 e7 ff ff       	callq  400ec0 <connect@plt>
  40272f:	85 c0                	test   %eax,%eax
  402731:	0f 88 fa 02 00 00    	js     402a31 <submitr+0x3d7>
  402737:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  40273e:	b8 00 00 00 00       	mov    $0x0,%eax
  402743:	48 89 f1             	mov    %rsi,%rcx
  402746:	4c 89 ff             	mov    %r15,%rdi
  402749:	f2 ae                	repnz scas %es:(%rdi),%al
  40274b:	48 89 ca             	mov    %rcx,%rdx
  40274e:	48 f7 d2             	not    %rdx
  402751:	48 89 f1             	mov    %rsi,%rcx
  402754:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402759:	f2 ae                	repnz scas %es:(%rdi),%al
  40275b:	48 f7 d1             	not    %rcx
  40275e:	49 89 c8             	mov    %rcx,%r8
  402761:	48 89 f1             	mov    %rsi,%rcx
  402764:	4c 89 f7             	mov    %r14,%rdi
  402767:	f2 ae                	repnz scas %es:(%rdi),%al
  402769:	48 f7 d1             	not    %rcx
  40276c:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402771:	48 89 f1             	mov    %rsi,%rcx
  402774:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402779:	f2 ae                	repnz scas %es:(%rdi),%al
  40277b:	48 89 c8             	mov    %rcx,%rax
  40277e:	48 f7 d0             	not    %rax
  402781:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402786:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  40278b:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402792:	00 
  402793:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402799:	0f 87 fa 02 00 00    	ja     402a99 <submitr+0x43f>
  40279f:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  4027a6:	00 
  4027a7:	b9 00 04 00 00       	mov    $0x400,%ecx
  4027ac:	b8 00 00 00 00       	mov    $0x0,%eax
  4027b1:	48 89 f7             	mov    %rsi,%rdi
  4027b4:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4027b7:	4c 89 ff             	mov    %r15,%rdi
  4027ba:	e8 88 fd ff ff       	callq  402547 <urlencode>
  4027bf:	85 c0                	test   %eax,%eax
  4027c1:	0f 88 45 03 00 00    	js     402b0c <submitr+0x4b2>
  4027c7:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  4027ce:	00 
  4027cf:	48 83 ec 08          	sub    $0x8,%rsp
  4027d3:	41 55                	push   %r13
  4027d5:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  4027dc:	00 
  4027dd:	50                   	push   %rax
  4027de:	41 56                	push   %r14
  4027e0:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  4027e5:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  4027ea:	48 8d 0d 47 11 00 00 	lea    0x1147(%rip),%rcx        # 403938 <trans_char+0x38>
  4027f1:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027f6:	be 01 00 00 00       	mov    $0x1,%esi
  4027fb:	4c 89 e7             	mov    %r12,%rdi
  4027fe:	b8 00 00 00 00       	mov    $0x0,%eax
  402803:	e8 d8 e6 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  402808:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40280f:	b8 00 00 00 00       	mov    $0x0,%eax
  402814:	4c 89 e7             	mov    %r12,%rdi
  402817:	f2 ae                	repnz scas %es:(%rdi),%al
  402819:	48 89 ca             	mov    %rcx,%rdx
  40281c:	48 f7 d2             	not    %rdx
  40281f:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  402823:	48 83 c4 20          	add    $0x20,%rsp
  402827:	4c 89 e6             	mov    %r12,%rsi
  40282a:	89 df                	mov    %ebx,%edi
  40282c:	e8 89 fb ff ff       	callq  4023ba <rio_writen>
  402831:	48 85 c0             	test   %rax,%rax
  402834:	0f 88 5d 03 00 00    	js     402b97 <submitr+0x53d>
  40283a:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  40283f:	89 de                	mov    %ebx,%esi
  402841:	4c 89 e7             	mov    %r12,%rdi
  402844:	e8 2f fb ff ff       	callq  402378 <rio_readinitb>
  402849:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402850:	00 
  402851:	ba 00 20 00 00       	mov    $0x2000,%edx
  402856:	4c 89 e7             	mov    %r12,%rdi
  402859:	e8 45 fc ff ff       	callq  4024a3 <rio_readlineb>
  40285e:	48 85 c0             	test   %rax,%rax
  402861:	0f 8e 9c 03 00 00    	jle    402c03 <submitr+0x5a9>
  402867:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  40286c:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402873:	00 
  402874:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  40287b:	00 
  40287c:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402883:	00 
  402884:	48 8d 35 44 11 00 00 	lea    0x1144(%rip),%rsi        # 4039cf <trans_char+0xcf>
  40288b:	b8 00 00 00 00       	mov    $0x0,%eax
  402890:	e8 ab e5 ff ff       	callq  400e40 <__isoc99_sscanf@plt>
  402895:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40289c:	00 
  40289d:	b9 03 00 00 00       	mov    $0x3,%ecx
  4028a2:	48 8d 3d 3d 11 00 00 	lea    0x113d(%rip),%rdi        # 4039e6 <trans_char+0xe6>
  4028a9:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4028ab:	0f 97 c0             	seta   %al
  4028ae:	1c 00                	sbb    $0x0,%al
  4028b0:	84 c0                	test   %al,%al
  4028b2:	0f 84 cb 03 00 00    	je     402c83 <submitr+0x629>
  4028b8:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4028bf:	00 
  4028c0:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4028c5:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028ca:	e8 d4 fb ff ff       	callq  4024a3 <rio_readlineb>
  4028cf:	48 85 c0             	test   %rax,%rax
  4028d2:	7f c1                	jg     402895 <submitr+0x23b>
  4028d4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028db:	3a 20 43 
  4028de:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4028e5:	20 75 6e 
  4028e8:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4028ec:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4028f0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028f7:	74 6f 20 
  4028fa:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402901:	68 65 61 
  402904:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402908:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40290c:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402913:	66 72 6f 
  402916:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  40291d:	6f 6c 61 
  402920:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402924:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402928:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  40292f:	76 65 72 
  402932:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402936:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  40293a:	89 df                	mov    %ebx,%edi
  40293c:	e8 4f e4 ff ff       	callq  400d90 <close@plt>
  402941:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402946:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  40294d:	00 
  40294e:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402955:	00 00 
  402957:	0f 85 96 04 00 00    	jne    402df3 <submitr+0x799>
  40295d:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402964:	5b                   	pop    %rbx
  402965:	5d                   	pop    %rbp
  402966:	41 5c                	pop    %r12
  402968:	41 5d                	pop    %r13
  40296a:	41 5e                	pop    %r14
  40296c:	41 5f                	pop    %r15
  40296e:	c3                   	retq   
  40296f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402976:	3a 20 43 
  402979:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402980:	20 75 6e 
  402983:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402987:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40298b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402992:	74 6f 20 
  402995:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  40299c:	65 20 73 
  40299f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029a3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4029a7:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4029ae:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4029b4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029b9:	eb 8b                	jmp    402946 <submitr+0x2ec>
  4029bb:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4029c2:	3a 20 44 
  4029c5:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4029cc:	20 75 6e 
  4029cf:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029d3:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4029d7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029de:	74 6f 20 
  4029e1:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4029e8:	76 65 20 
  4029eb:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029ef:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4029f3:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  4029fa:	61 62 20 
  4029fd:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402a04:	72 20 61 
  402a07:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a0b:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a0f:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  402a16:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  402a1c:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  402a20:	89 df                	mov    %ebx,%edi
  402a22:	e8 69 e3 ff ff       	callq  400d90 <close@plt>
  402a27:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a2c:	e9 15 ff ff ff       	jmpq   402946 <submitr+0x2ec>
  402a31:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402a38:	3a 20 55 
  402a3b:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402a42:	20 74 6f 
  402a45:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a49:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a4d:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402a54:	65 63 74 
  402a57:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402a5e:	68 65 20 
  402a61:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a65:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a69:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402a70:	61 62 20 
  402a73:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a77:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
  402a7e:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
  402a84:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402a88:	89 df                	mov    %ebx,%edi
  402a8a:	e8 01 e3 ff ff       	callq  400d90 <close@plt>
  402a8f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a94:	e9 ad fe ff ff       	jmpq   402946 <submitr+0x2ec>
  402a99:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402aa0:	3a 20 52 
  402aa3:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402aaa:	20 73 74 
  402aad:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ab1:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402ab5:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402abc:	74 6f 6f 
  402abf:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402ac6:	65 2e 20 
  402ac9:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402acd:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402ad1:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402ad8:	61 73 65 
  402adb:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402ae2:	49 54 52 
  402ae5:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402ae9:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402aed:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402af4:	55 46 00 
  402af7:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402afb:	89 df                	mov    %ebx,%edi
  402afd:	e8 8e e2 ff ff       	callq  400d90 <close@plt>
  402b02:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b07:	e9 3a fe ff ff       	jmpq   402946 <submitr+0x2ec>
  402b0c:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402b13:	3a 20 52 
  402b16:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402b1d:	20 73 74 
  402b20:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b24:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b28:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402b2f:	63 6f 6e 
  402b32:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402b39:	20 61 6e 
  402b3c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b40:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b44:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402b4b:	67 61 6c 
  402b4e:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402b55:	6e 70 72 
  402b58:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b5c:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402b60:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402b67:	6c 65 20 
  402b6a:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402b71:	63 74 65 
  402b74:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402b78:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402b7c:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  402b82:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402b86:	89 df                	mov    %ebx,%edi
  402b88:	e8 03 e2 ff ff       	callq  400d90 <close@plt>
  402b8d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b92:	e9 af fd ff ff       	jmpq   402946 <submitr+0x2ec>
  402b97:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b9e:	3a 20 43 
  402ba1:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402ba8:	20 75 6e 
  402bab:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402baf:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402bb3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402bba:	74 6f 20 
  402bbd:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402bc4:	20 74 6f 
  402bc7:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402bcb:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402bcf:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  402bd6:	41 75 74 
  402bd9:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  402be0:	73 65 72 
  402be3:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402be7:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402beb:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  402bf2:	89 df                	mov    %ebx,%edi
  402bf4:	e8 97 e1 ff ff       	callq  400d90 <close@plt>
  402bf9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bfe:	e9 43 fd ff ff       	jmpq   402946 <submitr+0x2ec>
  402c03:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c0a:	3a 20 43 
  402c0d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402c14:	20 75 6e 
  402c17:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c1b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402c1f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c26:	74 6f 20 
  402c29:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402c30:	66 69 72 
  402c33:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c37:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402c3b:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402c42:	61 64 65 
  402c45:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  402c4c:	6d 20 41 
  402c4f:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402c53:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402c57:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  402c5e:	62 20 73 
  402c61:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402c65:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  402c6c:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  402c72:	89 df                	mov    %ebx,%edi
  402c74:	e8 17 e1 ff ff       	callq  400d90 <close@plt>
  402c79:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c7e:	e9 c3 fc ff ff       	jmpq   402946 <submitr+0x2ec>
  402c83:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402c8a:	00 
  402c8b:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402c90:	ba 00 20 00 00       	mov    $0x2000,%edx
  402c95:	e8 09 f8 ff ff       	callq  4024a3 <rio_readlineb>
  402c9a:	48 85 c0             	test   %rax,%rax
  402c9d:	0f 8e 96 00 00 00    	jle    402d39 <submitr+0x6df>
  402ca3:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402ca8:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402caf:	0f 85 05 01 00 00    	jne    402dba <submitr+0x760>
  402cb5:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402cbc:	00 
  402cbd:	48 89 ef             	mov    %rbp,%rdi
  402cc0:	e8 6b e0 ff ff       	callq  400d30 <strcpy@plt>
  402cc5:	89 df                	mov    %ebx,%edi
  402cc7:	e8 c4 e0 ff ff       	callq  400d90 <close@plt>
  402ccc:	b9 04 00 00 00       	mov    $0x4,%ecx
  402cd1:	48 8d 3d 08 0d 00 00 	lea    0xd08(%rip),%rdi        # 4039e0 <trans_char+0xe0>
  402cd8:	48 89 ee             	mov    %rbp,%rsi
  402cdb:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402cdd:	0f 97 c0             	seta   %al
  402ce0:	1c 00                	sbb    $0x0,%al
  402ce2:	0f be c0             	movsbl %al,%eax
  402ce5:	85 c0                	test   %eax,%eax
  402ce7:	0f 84 59 fc ff ff    	je     402946 <submitr+0x2ec>
  402ced:	b9 05 00 00 00       	mov    $0x5,%ecx
  402cf2:	48 8d 3d eb 0c 00 00 	lea    0xceb(%rip),%rdi        # 4039e4 <trans_char+0xe4>
  402cf9:	48 89 ee             	mov    %rbp,%rsi
  402cfc:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402cfe:	0f 97 c0             	seta   %al
  402d01:	1c 00                	sbb    $0x0,%al
  402d03:	0f be c0             	movsbl %al,%eax
  402d06:	85 c0                	test   %eax,%eax
  402d08:	0f 84 38 fc ff ff    	je     402946 <submitr+0x2ec>
  402d0e:	b9 03 00 00 00       	mov    $0x3,%ecx
  402d13:	48 8d 3d cf 0c 00 00 	lea    0xccf(%rip),%rdi        # 4039e9 <trans_char+0xe9>
  402d1a:	48 89 ee             	mov    %rbp,%rsi
  402d1d:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402d1f:	0f 97 c0             	seta   %al
  402d22:	1c 00                	sbb    $0x0,%al
  402d24:	0f be c0             	movsbl %al,%eax
  402d27:	85 c0                	test   %eax,%eax
  402d29:	0f 84 17 fc ff ff    	je     402946 <submitr+0x2ec>
  402d2f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d34:	e9 0d fc ff ff       	jmpq   402946 <submitr+0x2ec>
  402d39:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d40:	3a 20 43 
  402d43:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402d4a:	20 75 6e 
  402d4d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d51:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402d55:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d5c:	74 6f 20 
  402d5f:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402d66:	73 74 61 
  402d69:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d6d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402d71:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402d78:	65 73 73 
  402d7b:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402d82:	72 6f 6d 
  402d85:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402d89:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402d8d:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402d94:	6c 61 62 
  402d97:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402d9e:	65 72 00 
  402da1:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402da5:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402da9:	89 df                	mov    %ebx,%edi
  402dab:	e8 e0 df ff ff       	callq  400d90 <close@plt>
  402db0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402db5:	e9 8c fb ff ff       	jmpq   402946 <submitr+0x2ec>
  402dba:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  402dc1:	00 
  402dc2:	48 8d 0d cf 0b 00 00 	lea    0xbcf(%rip),%rcx        # 403998 <trans_char+0x98>
  402dc9:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402dd0:	be 01 00 00 00       	mov    $0x1,%esi
  402dd5:	48 89 ef             	mov    %rbp,%rdi
  402dd8:	b8 00 00 00 00       	mov    $0x0,%eax
  402ddd:	e8 fe e0 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  402de2:	89 df                	mov    %ebx,%edi
  402de4:	e8 a7 df ff ff       	callq  400d90 <close@plt>
  402de9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dee:	e9 53 fb ff ff       	jmpq   402946 <submitr+0x2ec>
  402df3:	e8 9e f3 ff ff       	callq  402196 <__stack_chk_fail>

0000000000402df8 <init_timeout>:
  402df8:	85 ff                	test   %edi,%edi
  402dfa:	74 28                	je     402e24 <init_timeout+0x2c>
  402dfc:	53                   	push   %rbx
  402dfd:	89 fb                	mov    %edi,%ebx
  402dff:	85 ff                	test   %edi,%edi
  402e01:	78 1a                	js     402e1d <init_timeout+0x25>
  402e03:	48 8d 35 80 f5 ff ff 	lea    -0xa80(%rip),%rsi        # 40238a <sigalrm_handler>
  402e0a:	bf 0e 00 00 00       	mov    $0xe,%edi
  402e0f:	e8 ac df ff ff       	callq  400dc0 <signal@plt>
  402e14:	89 df                	mov    %ebx,%edi
  402e16:	e8 65 df ff ff       	callq  400d80 <alarm@plt>
  402e1b:	5b                   	pop    %rbx
  402e1c:	c3                   	retq   
  402e1d:	bb 00 00 00 00       	mov    $0x0,%ebx
  402e22:	eb df                	jmp    402e03 <init_timeout+0xb>
  402e24:	f3 c3                	repz retq 

0000000000402e26 <init_driver>:
  402e26:	41 54                	push   %r12
  402e28:	55                   	push   %rbp
  402e29:	53                   	push   %rbx
  402e2a:	48 83 ec 20          	sub    $0x20,%rsp
  402e2e:	49 89 fc             	mov    %rdi,%r12
  402e31:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402e38:	00 00 
  402e3a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402e3f:	31 c0                	xor    %eax,%eax
  402e41:	be 01 00 00 00       	mov    $0x1,%esi
  402e46:	bf 0d 00 00 00       	mov    $0xd,%edi
  402e4b:	e8 70 df ff ff       	callq  400dc0 <signal@plt>
  402e50:	be 01 00 00 00       	mov    $0x1,%esi
  402e55:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402e5a:	e8 61 df ff ff       	callq  400dc0 <signal@plt>
  402e5f:	be 01 00 00 00       	mov    $0x1,%esi
  402e64:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402e69:	e8 52 df ff ff       	callq  400dc0 <signal@plt>
  402e6e:	ba 00 00 00 00       	mov    $0x0,%edx
  402e73:	be 01 00 00 00       	mov    $0x1,%esi
  402e78:	bf 02 00 00 00       	mov    $0x2,%edi
  402e7d:	e8 6e e0 ff ff       	callq  400ef0 <socket@plt>
  402e82:	85 c0                	test   %eax,%eax
  402e84:	0f 88 a3 00 00 00    	js     402f2d <init_driver+0x107>
  402e8a:	89 c3                	mov    %eax,%ebx
  402e8c:	48 8d 3d 59 0b 00 00 	lea    0xb59(%rip),%rdi        # 4039ec <trans_char+0xec>
  402e93:	e8 38 df ff ff       	callq  400dd0 <gethostbyname@plt>
  402e98:	48 85 c0             	test   %rax,%rax
  402e9b:	0f 84 df 00 00 00    	je     402f80 <init_driver+0x15a>
  402ea1:	48 89 e5             	mov    %rsp,%rbp
  402ea4:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402eab:	00 00 
  402ead:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  402eb4:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  402eba:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402ec0:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402ec4:	48 8b 40 18          	mov    0x18(%rax),%rax
  402ec8:	48 8b 30             	mov    (%rax),%rsi
  402ecb:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  402ecf:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402ed4:	e8 07 df ff ff       	callq  400de0 <__memmove_chk@plt>
  402ed9:	66 c7 44 24 02 0b b8 	movw   $0xb80b,0x2(%rsp)
  402ee0:	ba 10 00 00 00       	mov    $0x10,%edx
  402ee5:	48 89 ee             	mov    %rbp,%rsi
  402ee8:	89 df                	mov    %ebx,%edi
  402eea:	e8 d1 df ff ff       	callq  400ec0 <connect@plt>
  402eef:	85 c0                	test   %eax,%eax
  402ef1:	0f 88 fb 00 00 00    	js     402ff2 <init_driver+0x1cc>
  402ef7:	89 df                	mov    %ebx,%edi
  402ef9:	e8 92 de ff ff       	callq  400d90 <close@plt>
  402efe:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  402f05:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  402f0b:	b8 00 00 00 00       	mov    $0x0,%eax
  402f10:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402f15:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402f1c:	00 00 
  402f1e:	0f 85 28 01 00 00    	jne    40304c <init_driver+0x226>
  402f24:	48 83 c4 20          	add    $0x20,%rsp
  402f28:	5b                   	pop    %rbx
  402f29:	5d                   	pop    %rbp
  402f2a:	41 5c                	pop    %r12
  402f2c:	c3                   	retq   
  402f2d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f34:	3a 20 43 
  402f37:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402f3e:	20 75 6e 
  402f41:	49 89 04 24          	mov    %rax,(%r12)
  402f45:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402f4a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f51:	74 6f 20 
  402f54:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402f5b:	65 20 73 
  402f5e:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402f63:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402f68:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402f6f:	6b 65 
  402f71:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  402f78:	00 
  402f79:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f7e:	eb 90                	jmp    402f10 <init_driver+0xea>
  402f80:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402f87:	3a 20 44 
  402f8a:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402f91:	20 75 6e 
  402f94:	49 89 04 24          	mov    %rax,(%r12)
  402f98:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402f9d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402fa4:	74 6f 20 
  402fa7:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402fae:	76 65 20 
  402fb1:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402fb6:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402fbb:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402fc2:	72 20 61 
  402fc5:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402fca:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  402fd1:	72 65 
  402fd3:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  402fda:	73 
  402fdb:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  402fe1:	89 df                	mov    %ebx,%edi
  402fe3:	e8 a8 dd ff ff       	callq  400d90 <close@plt>
  402fe8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fed:	e9 1e ff ff ff       	jmpq   402f10 <init_driver+0xea>
  402ff2:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402ff9:	3a 20 55 
  402ffc:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403003:	20 74 6f 
  403006:	49 89 04 24          	mov    %rax,(%r12)
  40300a:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  40300f:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403016:	65 63 74 
  403019:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  403020:	65 72 76 
  403023:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  403028:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  40302d:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  403034:	72 
  403035:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  40303b:	89 df                	mov    %ebx,%edi
  40303d:	e8 4e dd ff ff       	callq  400d90 <close@plt>
  403042:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403047:	e9 c4 fe ff ff       	jmpq   402f10 <init_driver+0xea>
  40304c:	e8 45 f1 ff ff       	callq  402196 <__stack_chk_fail>

0000000000403051 <driver_post>:
  403051:	53                   	push   %rbx
  403052:	4c 89 cb             	mov    %r9,%rbx
  403055:	45 85 c0             	test   %r8d,%r8d
  403058:	75 18                	jne    403072 <driver_post+0x21>
  40305a:	48 85 ff             	test   %rdi,%rdi
  40305d:	74 05                	je     403064 <driver_post+0x13>
  40305f:	80 3f 00             	cmpb   $0x0,(%rdi)
  403062:	75 37                	jne    40309b <driver_post+0x4a>
  403064:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403069:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40306d:	44 89 c0             	mov    %r8d,%eax
  403070:	5b                   	pop    %rbx
  403071:	c3                   	retq   
  403072:	48 89 ca             	mov    %rcx,%rdx
  403075:	48 8d 35 80 09 00 00 	lea    0x980(%rip),%rsi        # 4039fc <trans_char+0xfc>
  40307c:	bf 01 00 00 00       	mov    $0x1,%edi
  403081:	b8 00 00 00 00       	mov    $0x0,%eax
  403086:	e8 d5 dd ff ff       	callq  400e60 <__printf_chk@plt>
  40308b:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403090:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403094:	b8 00 00 00 00       	mov    $0x0,%eax
  403099:	eb d5                	jmp    403070 <driver_post+0x1f>
  40309b:	48 83 ec 08          	sub    $0x8,%rsp
  40309f:	41 51                	push   %r9
  4030a1:	49 89 c9             	mov    %rcx,%r9
  4030a4:	49 89 d0             	mov    %rdx,%r8
  4030a7:	48 89 f9             	mov    %rdi,%rcx
  4030aa:	48 89 f2             	mov    %rsi,%rdx
  4030ad:	be b8 0b 00 00       	mov    $0xbb8,%esi
  4030b2:	48 8d 3d 33 09 00 00 	lea    0x933(%rip),%rdi        # 4039ec <trans_char+0xec>
  4030b9:	e8 9c f5 ff ff       	callq  40265a <submitr>
  4030be:	48 83 c4 10          	add    $0x10,%rsp
  4030c2:	eb ac                	jmp    403070 <driver_post+0x1f>

00000000004030c4 <check>:
  4030c4:	89 f8                	mov    %edi,%eax
  4030c6:	c1 e8 1c             	shr    $0x1c,%eax
  4030c9:	85 c0                	test   %eax,%eax
  4030cb:	74 1d                	je     4030ea <check+0x26>
  4030cd:	b9 00 00 00 00       	mov    $0x0,%ecx
  4030d2:	83 f9 1f             	cmp    $0x1f,%ecx
  4030d5:	7f 0d                	jg     4030e4 <check+0x20>
  4030d7:	89 f8                	mov    %edi,%eax
  4030d9:	d3 e8                	shr    %cl,%eax
  4030db:	3c 0a                	cmp    $0xa,%al
  4030dd:	74 11                	je     4030f0 <check+0x2c>
  4030df:	83 c1 08             	add    $0x8,%ecx
  4030e2:	eb ee                	jmp    4030d2 <check+0xe>
  4030e4:	b8 01 00 00 00       	mov    $0x1,%eax
  4030e9:	c3                   	retq   
  4030ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4030ef:	c3                   	retq   
  4030f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4030f5:	c3                   	retq   

00000000004030f6 <gencookie>:
  4030f6:	53                   	push   %rbx
  4030f7:	83 c7 01             	add    $0x1,%edi
  4030fa:	e8 01 dc ff ff       	callq  400d00 <srandom@plt>
  4030ff:	e8 1c dd ff ff       	callq  400e20 <random@plt>
  403104:	89 c3                	mov    %eax,%ebx
  403106:	89 c7                	mov    %eax,%edi
  403108:	e8 b7 ff ff ff       	callq  4030c4 <check>
  40310d:	85 c0                	test   %eax,%eax
  40310f:	74 ee                	je     4030ff <gencookie+0x9>
  403111:	89 d8                	mov    %ebx,%eax
  403113:	5b                   	pop    %rbx
  403114:	c3                   	retq   
  403115:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40311c:	00 00 00 
  40311f:	90                   	nop

0000000000403120 <__libc_csu_init>:
  403120:	41 57                	push   %r15
  403122:	41 56                	push   %r14
  403124:	49 89 d7             	mov    %rdx,%r15
  403127:	41 55                	push   %r13
  403129:	41 54                	push   %r12
  40312b:	4c 8d 25 ce 1c 20 00 	lea    0x201cce(%rip),%r12        # 604e00 <__frame_dummy_init_array_entry>
  403132:	55                   	push   %rbp
  403133:	48 8d 2d ce 1c 20 00 	lea    0x201cce(%rip),%rbp        # 604e08 <__do_global_dtors_aux_fini_array_entry>
  40313a:	53                   	push   %rbx
  40313b:	41 89 fd             	mov    %edi,%r13d
  40313e:	49 89 f6             	mov    %rsi,%r14
  403141:	4c 29 e5             	sub    %r12,%rbp
  403144:	48 83 ec 08          	sub    $0x8,%rsp
  403148:	48 c1 fd 03          	sar    $0x3,%rbp
  40314c:	e8 5f db ff ff       	callq  400cb0 <_init>
  403151:	48 85 ed             	test   %rbp,%rbp
  403154:	74 20                	je     403176 <__libc_csu_init+0x56>
  403156:	31 db                	xor    %ebx,%ebx
  403158:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40315f:	00 
  403160:	4c 89 fa             	mov    %r15,%rdx
  403163:	4c 89 f6             	mov    %r14,%rsi
  403166:	44 89 ef             	mov    %r13d,%edi
  403169:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40316d:	48 83 c3 01          	add    $0x1,%rbx
  403171:	48 39 dd             	cmp    %rbx,%rbp
  403174:	75 ea                	jne    403160 <__libc_csu_init+0x40>
  403176:	48 83 c4 08          	add    $0x8,%rsp
  40317a:	5b                   	pop    %rbx
  40317b:	5d                   	pop    %rbp
  40317c:	41 5c                	pop    %r12
  40317e:	41 5d                	pop    %r13
  403180:	41 5e                	pop    %r14
  403182:	41 5f                	pop    %r15
  403184:	c3                   	retq   
  403185:	90                   	nop
  403186:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40318d:	00 00 00 

0000000000403190 <__libc_csu_fini>:
  403190:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000403194 <_fini>:
  403194:	48 83 ec 08          	sub    $0x8,%rsp
  403198:	48 83 c4 08          	add    $0x8,%rsp
  40319c:	c3                   	retq   
