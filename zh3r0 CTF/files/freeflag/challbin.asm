
chall:     file format elf64-x86-64


Disassembly of section .init:

0000000000400598 <_init>:
  400598:	48 83 ec 08          	sub    $0x8,%rsp
  40059c:	48 8b 05 55 0a 20 00 	mov    0x200a55(%rip),%rax        # 600ff8 <__gmon_start__>
  4005a3:	48 85 c0             	test   %rax,%rax
  4005a6:	74 02                	je     4005aa <_init+0x12>
  4005a8:	ff d0                	callq  *%rax
  4005aa:	48 83 c4 08          	add    $0x8,%rsp
  4005ae:	c3                   	retq   

Disassembly of section .plt:

00000000004005b0 <.plt>:
  4005b0:	ff 35 52 0a 20 00    	pushq  0x200a52(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005b6:	ff 25 54 0a 20 00    	jmpq   *0x200a54(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005c0 <puts@plt>:
  4005c0:	ff 25 52 0a 20 00    	jmpq   *0x200a52(%rip)        # 601018 <puts@GLIBC_2.2.5>
  4005c6:	68 00 00 00 00       	pushq  $0x0
  4005cb:	e9 e0 ff ff ff       	jmpq   4005b0 <.plt>

00000000004005d0 <system@plt>:
  4005d0:	ff 25 4a 0a 20 00    	jmpq   *0x200a4a(%rip)        # 601020 <system@GLIBC_2.2.5>
  4005d6:	68 01 00 00 00       	pushq  $0x1
  4005db:	e9 d0 ff ff ff       	jmpq   4005b0 <.plt>

00000000004005e0 <alarm@plt>:
  4005e0:	ff 25 42 0a 20 00    	jmpq   *0x200a42(%rip)        # 601028 <alarm@GLIBC_2.2.5>
  4005e6:	68 02 00 00 00       	pushq  $0x2
  4005eb:	e9 c0 ff ff ff       	jmpq   4005b0 <.plt>

00000000004005f0 <read@plt>:
  4005f0:	ff 25 3a 0a 20 00    	jmpq   *0x200a3a(%rip)        # 601030 <read@GLIBC_2.2.5>
  4005f6:	68 03 00 00 00       	pushq  $0x3
  4005fb:	e9 b0 ff ff ff       	jmpq   4005b0 <.plt>

0000000000400600 <setvbuf@plt>:
  400600:	ff 25 32 0a 20 00    	jmpq   *0x200a32(%rip)        # 601038 <setvbuf@GLIBC_2.2.5>
  400606:	68 04 00 00 00       	pushq  $0x4
  40060b:	e9 a0 ff ff ff       	jmpq   4005b0 <.plt>

0000000000400610 <exit@plt>:
  400610:	ff 25 2a 0a 20 00    	jmpq   *0x200a2a(%rip)        # 601040 <exit@GLIBC_2.2.5>
  400616:	68 05 00 00 00       	pushq  $0x5
  40061b:	e9 90 ff ff ff       	jmpq   4005b0 <.plt>

Disassembly of section .text:

0000000000400620 <_start>:
  400620:	31 ed                	xor    %ebp,%ebp
  400622:	49 89 d1             	mov    %rdx,%r9
  400625:	5e                   	pop    %rsi
  400626:	48 89 e2             	mov    %rsp,%rdx
  400629:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40062d:	50                   	push   %rax
  40062e:	54                   	push   %rsp
  40062f:	49 c7 c0 70 08 40 00 	mov    $0x400870,%r8
  400636:	48 c7 c1 00 08 40 00 	mov    $0x400800,%rcx
  40063d:	48 c7 c7 d9 07 40 00 	mov    $0x4007d9,%rdi
  400644:	ff 15 a6 09 20 00    	callq  *0x2009a6(%rip)        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40064a:	f4                   	hlt    
  40064b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400650 <_dl_relocate_static_pie>:
  400650:	f3 c3                	repz retq 
  400652:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400659:	00 00 00 
  40065c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400660 <deregister_tm_clones>:
  400660:	55                   	push   %rbp
  400661:	b8 58 10 60 00       	mov    $0x601058,%eax
  400666:	48 3d 58 10 60 00    	cmp    $0x601058,%rax
  40066c:	48 89 e5             	mov    %rsp,%rbp
  40066f:	74 17                	je     400688 <deregister_tm_clones+0x28>
  400671:	b8 00 00 00 00       	mov    $0x0,%eax
  400676:	48 85 c0             	test   %rax,%rax
  400679:	74 0d                	je     400688 <deregister_tm_clones+0x28>
  40067b:	5d                   	pop    %rbp
  40067c:	bf 58 10 60 00       	mov    $0x601058,%edi
  400681:	ff e0                	jmpq   *%rax
  400683:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400688:	5d                   	pop    %rbp
  400689:	c3                   	retq   
  40068a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400690 <register_tm_clones>:
  400690:	be 58 10 60 00       	mov    $0x601058,%esi
  400695:	55                   	push   %rbp
  400696:	48 81 ee 58 10 60 00 	sub    $0x601058,%rsi
  40069d:	48 89 e5             	mov    %rsp,%rbp
  4006a0:	48 c1 fe 03          	sar    $0x3,%rsi
  4006a4:	48 89 f0             	mov    %rsi,%rax
  4006a7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4006ab:	48 01 c6             	add    %rax,%rsi
  4006ae:	48 d1 fe             	sar    %rsi
  4006b1:	74 15                	je     4006c8 <register_tm_clones+0x38>
  4006b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4006b8:	48 85 c0             	test   %rax,%rax
  4006bb:	74 0b                	je     4006c8 <register_tm_clones+0x38>
  4006bd:	5d                   	pop    %rbp
  4006be:	bf 58 10 60 00       	mov    $0x601058,%edi
  4006c3:	ff e0                	jmpq   *%rax
  4006c5:	0f 1f 00             	nopl   (%rax)
  4006c8:	5d                   	pop    %rbp
  4006c9:	c3                   	retq   
  4006ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004006d0 <__do_global_dtors_aux>:
  4006d0:	80 3d b1 09 20 00 00 	cmpb   $0x0,0x2009b1(%rip)        # 601088 <completed.7698>
  4006d7:	75 17                	jne    4006f0 <__do_global_dtors_aux+0x20>
  4006d9:	55                   	push   %rbp
  4006da:	48 89 e5             	mov    %rsp,%rbp
  4006dd:	e8 7e ff ff ff       	callq  400660 <deregister_tm_clones>
  4006e2:	c6 05 9f 09 20 00 01 	movb   $0x1,0x20099f(%rip)        # 601088 <completed.7698>
  4006e9:	5d                   	pop    %rbp
  4006ea:	c3                   	retq   
  4006eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4006f0:	f3 c3                	repz retq 
  4006f2:	0f 1f 40 00          	nopl   0x0(%rax)
  4006f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006fd:	00 00 00 

0000000000400700 <frame_dummy>:
  400700:	55                   	push   %rbp
  400701:	48 89 e5             	mov    %rsp,%rbp
  400704:	5d                   	pop    %rbp
  400705:	eb 89                	jmp    400690 <register_tm_clones>

0000000000400707 <win_win>:
  400707:	55                   	push   %rbp
  400708:	48 89 e5             	mov    %rsp,%rbp
  40070b:	48 8d 3d 72 01 00 00 	lea    0x172(%rip),%rdi        # 400884 <_IO_stdin_used+0x4>
  400712:	e8 b9 fe ff ff       	callq  4005d0 <system@plt>
  400717:	90                   	nop
  400718:	5d                   	pop    %rbp
  400719:	c3                   	retq   

000000000040071a <here>:
  40071a:	55                   	push   %rbp
  40071b:	48 89 e5             	mov    %rsp,%rbp
  40071e:	48 83 ec 20          	sub    $0x20,%rsp
  400722:	48 8d 3d 68 01 00 00 	lea    0x168(%rip),%rdi        # 400891 <_IO_stdin_used+0x11>
  400729:	e8 92 fe ff ff       	callq  4005c0 <puts@plt>
  40072e:	48 8d 3d 72 01 00 00 	lea    0x172(%rip),%rdi        # 4008a7 <_IO_stdin_used+0x27>
  400735:	e8 86 fe ff ff       	callq  4005c0 <puts@plt>
  40073a:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  40073e:	ba 38 00 00 00       	mov    $0x38,%edx
  400743:	48 89 c6             	mov    %rax,%rsi
  400746:	bf 00 00 00 00       	mov    $0x0,%edi
  40074b:	e8 a0 fe ff ff       	callq  4005f0 <read@plt>
  400750:	48 85 c0             	test   %rax,%rax
  400753:	75 16                	jne    40076b <here+0x51>
  400755:	48 8d 3d 69 01 00 00 	lea    0x169(%rip),%rdi        # 4008c5 <_IO_stdin_used+0x45>
  40075c:	e8 5f fe ff ff       	callq  4005c0 <puts@plt>
  400761:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  400766:	e8 a5 fe ff ff       	callq  400610 <exit@plt>
  40076b:	90                   	nop
  40076c:	c9                   	leaveq 
  40076d:	c3                   	retq   

000000000040076e <init>:
  40076e:	55                   	push   %rbp
  40076f:	48 89 e5             	mov    %rsp,%rbp
  400772:	48 8b 05 f7 08 20 00 	mov    0x2008f7(%rip),%rax        # 601070 <stdin@@GLIBC_2.2.5>
  400779:	b9 00 00 00 00       	mov    $0x0,%ecx
  40077e:	ba 02 00 00 00       	mov    $0x2,%edx
  400783:	be 00 00 00 00       	mov    $0x0,%esi
  400788:	48 89 c7             	mov    %rax,%rdi
  40078b:	e8 70 fe ff ff       	callq  400600 <setvbuf@plt>
  400790:	48 8b 05 c9 08 20 00 	mov    0x2008c9(%rip),%rax        # 601060 <stdout@@GLIBC_2.2.5>
  400797:	b9 00 00 00 00       	mov    $0x0,%ecx
  40079c:	ba 02 00 00 00       	mov    $0x2,%edx
  4007a1:	be 00 00 00 00       	mov    $0x0,%esi
  4007a6:	48 89 c7             	mov    %rax,%rdi
  4007a9:	e8 52 fe ff ff       	callq  400600 <setvbuf@plt>
  4007ae:	48 8b 05 cb 08 20 00 	mov    0x2008cb(%rip),%rax        # 601080 <stderr@@GLIBC_2.2.5>
  4007b5:	b9 00 00 00 00       	mov    $0x0,%ecx
  4007ba:	ba 02 00 00 00       	mov    $0x2,%edx
  4007bf:	be 00 00 00 00       	mov    $0x0,%esi
  4007c4:	48 89 c7             	mov    %rax,%rdi
  4007c7:	e8 34 fe ff ff       	callq  400600 <setvbuf@plt>
  4007cc:	bf 1e 00 00 00       	mov    $0x1e,%edi
  4007d1:	e8 0a fe ff ff       	callq  4005e0 <alarm@plt>
  4007d6:	90                   	nop
  4007d7:	5d                   	pop    %rbp
  4007d8:	c3                   	retq   

00000000004007d9 <main>:
  4007d9:	55                   	push   %rbp
  4007da:	48 89 e5             	mov    %rsp,%rbp
  4007dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4007e2:	e8 87 ff ff ff       	callq  40076e <init>
  4007e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4007ec:	e8 29 ff ff ff       	callq  40071a <here>
  4007f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4007f6:	5d                   	pop    %rbp
  4007f7:	c3                   	retq   
  4007f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4007ff:	00 

0000000000400800 <__libc_csu_init>:
  400800:	41 57                	push   %r15
  400802:	41 56                	push   %r14
  400804:	49 89 d7             	mov    %rdx,%r15
  400807:	41 55                	push   %r13
  400809:	41 54                	push   %r12
  40080b:	4c 8d 25 fe 05 20 00 	lea    0x2005fe(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400812:	55                   	push   %rbp
  400813:	48 8d 2d fe 05 20 00 	lea    0x2005fe(%rip),%rbp        # 600e18 <__do_global_dtors_aux_fini_array_entry>
  40081a:	53                   	push   %rbx
  40081b:	41 89 fd             	mov    %edi,%r13d
  40081e:	49 89 f6             	mov    %rsi,%r14
  400821:	4c 29 e5             	sub    %r12,%rbp
  400824:	48 83 ec 08          	sub    $0x8,%rsp
  400828:	48 c1 fd 03          	sar    $0x3,%rbp
  40082c:	e8 67 fd ff ff       	callq  400598 <_init>
  400831:	48 85 ed             	test   %rbp,%rbp
  400834:	74 20                	je     400856 <__libc_csu_init+0x56>
  400836:	31 db                	xor    %ebx,%ebx
  400838:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40083f:	00 
  400840:	4c 89 fa             	mov    %r15,%rdx
  400843:	4c 89 f6             	mov    %r14,%rsi
  400846:	44 89 ef             	mov    %r13d,%edi
  400849:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40084d:	48 83 c3 01          	add    $0x1,%rbx
  400851:	48 39 dd             	cmp    %rbx,%rbp
  400854:	75 ea                	jne    400840 <__libc_csu_init+0x40>
  400856:	48 83 c4 08          	add    $0x8,%rsp
  40085a:	5b                   	pop    %rbx
  40085b:	5d                   	pop    %rbp
  40085c:	41 5c                	pop    %r12
  40085e:	41 5d                	pop    %r13
  400860:	41 5e                	pop    %r14
  400862:	41 5f                	pop    %r15
  400864:	c3                   	retq   
  400865:	90                   	nop
  400866:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40086d:	00 00 00 

0000000000400870 <__libc_csu_fini>:
  400870:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400874 <_fini>:
  400874:	48 83 ec 08          	sub    $0x8,%rsp
  400878:	48 83 c4 08          	add    $0x8,%rsp
  40087c:	c3                   	retq   
