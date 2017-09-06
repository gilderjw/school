
bufbomb:     file format elf32-i386


Disassembly of section .init:

080485c4 <_init>:
 80485c4:	55                   	push   %ebp
 80485c5:	89 e5                	mov    %esp,%ebp
 80485c7:	53                   	push   %ebx
 80485c8:	83 ec 04             	sub    $0x4,%esp
 80485cb:	e8 00 00 00 00       	call   80485d0 <_init+0xc>
 80485d0:	5b                   	pop    %ebx
 80485d1:	81 c3 24 2a 00 00    	add    $0x2a24,%ebx
 80485d7:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 80485dd:	85 d2                	test   %edx,%edx
 80485df:	74 05                	je     80485e6 <_init+0x22>
 80485e1:	e8 5e 00 00 00       	call   8048644 <__gmon_start__@plt>
 80485e6:	e8 d5 01 00 00       	call   80487c0 <frame_dummy>
 80485eb:	e8 e0 09 00 00       	call   8048fd0 <__do_global_ctors_aux>
 80485f0:	58                   	pop    %eax
 80485f1:	5b                   	pop    %ebx
 80485f2:	c9                   	leave  
 80485f3:	c3                   	ret    

Disassembly of section .plt:

080485f4 <srand@plt-0x10>:
 80485f4:	ff 35 f8 af 04 08    	pushl  0x804aff8
 80485fa:	ff 25 fc af 04 08    	jmp    *0x804affc
 8048600:	00 00                	add    %al,(%eax)
	...

08048604 <srand@plt>:
 8048604:	ff 25 00 b0 04 08    	jmp    *0x804b000
 804860a:	68 00 00 00 00       	push   $0x0
 804860f:	e9 e0 ff ff ff       	jmp    80485f4 <_init+0x30>

08048614 <mmap@plt>:
 8048614:	ff 25 04 b0 04 08    	jmp    *0x804b004
 804861a:	68 08 00 00 00       	push   $0x8
 804861f:	e9 d0 ff ff ff       	jmp    80485f4 <_init+0x30>

08048624 <random@plt>:
 8048624:	ff 25 08 b0 04 08    	jmp    *0x804b008
 804862a:	68 10 00 00 00       	push   $0x10
 804862f:	e9 c0 ff ff ff       	jmp    80485f4 <_init+0x30>

08048634 <signal@plt>:
 8048634:	ff 25 0c b0 04 08    	jmp    *0x804b00c
 804863a:	68 18 00 00 00       	push   $0x18
 804863f:	e9 b0 ff ff ff       	jmp    80485f4 <_init+0x30>

08048644 <__gmon_start__@plt>:
 8048644:	ff 25 10 b0 04 08    	jmp    *0x804b010
 804864a:	68 20 00 00 00       	push   $0x20
 804864f:	e9 a0 ff ff ff       	jmp    80485f4 <_init+0x30>

08048654 <calloc@plt>:
 8048654:	ff 25 14 b0 04 08    	jmp    *0x804b014
 804865a:	68 28 00 00 00       	push   $0x28
 804865f:	e9 90 ff ff ff       	jmp    80485f4 <_init+0x30>

08048664 <memset@plt>:
 8048664:	ff 25 18 b0 04 08    	jmp    *0x804b018
 804866a:	68 30 00 00 00       	push   $0x30
 804866f:	e9 80 ff ff ff       	jmp    80485f4 <_init+0x30>

08048674 <__libc_start_main@plt>:
 8048674:	ff 25 1c b0 04 08    	jmp    *0x804b01c
 804867a:	68 38 00 00 00       	push   $0x38
 804867f:	e9 70 ff ff ff       	jmp    80485f4 <_init+0x30>

08048684 <_IO_getc@plt>:
 8048684:	ff 25 20 b0 04 08    	jmp    *0x804b020
 804868a:	68 40 00 00 00       	push   $0x40
 804868f:	e9 60 ff ff ff       	jmp    80485f4 <_init+0x30>

08048694 <getopt@plt>:
 8048694:	ff 25 24 b0 04 08    	jmp    *0x804b024
 804869a:	68 48 00 00 00       	push   $0x48
 804869f:	e9 50 ff ff ff       	jmp    80485f4 <_init+0x30>

080486a4 <printf@plt>:
 80486a4:	ff 25 28 b0 04 08    	jmp    *0x804b028
 80486aa:	68 50 00 00 00       	push   $0x50
 80486af:	e9 40 ff ff ff       	jmp    80485f4 <_init+0x30>

080486b4 <srandom@plt>:
 80486b4:	ff 25 2c b0 04 08    	jmp    *0x804b02c
 80486ba:	68 58 00 00 00       	push   $0x58
 80486bf:	e9 30 ff ff ff       	jmp    80485f4 <_init+0x30>

080486c4 <fwrite@plt>:
 80486c4:	ff 25 30 b0 04 08    	jmp    *0x804b030
 80486ca:	68 60 00 00 00       	push   $0x60
 80486cf:	e9 20 ff ff ff       	jmp    80485f4 <_init+0x30>

080486d4 <puts@plt>:
 80486d4:	ff 25 34 b0 04 08    	jmp    *0x804b034
 80486da:	68 68 00 00 00       	push   $0x68
 80486df:	e9 10 ff ff ff       	jmp    80485f4 <_init+0x30>

080486e4 <rand@plt>:
 80486e4:	ff 25 38 b0 04 08    	jmp    *0x804b038
 80486ea:	68 70 00 00 00       	push   $0x70
 80486ef:	e9 00 ff ff ff       	jmp    80485f4 <_init+0x30>

080486f4 <munmap@plt>:
 80486f4:	ff 25 3c b0 04 08    	jmp    *0x804b03c
 80486fa:	68 78 00 00 00       	push   $0x78
 80486ff:	e9 f0 fe ff ff       	jmp    80485f4 <_init+0x30>

08048704 <__strdup@plt>:
 8048704:	ff 25 40 b0 04 08    	jmp    *0x804b040
 804870a:	68 80 00 00 00       	push   $0x80
 804870f:	e9 e0 fe ff ff       	jmp    80485f4 <_init+0x30>

08048714 <exit@plt>:
 8048714:	ff 25 44 b0 04 08    	jmp    *0x804b044
 804871a:	68 88 00 00 00       	push   $0x88
 804871f:	e9 d0 fe ff ff       	jmp    80485f4 <_init+0x30>

Disassembly of section .text:

08048730 <_start>:
 8048730:	31 ed                	xor    %ebp,%ebp
 8048732:	5e                   	pop    %esi
 8048733:	89 e1                	mov    %esp,%ecx
 8048735:	83 e4 f0             	and    $0xfffffff0,%esp
 8048738:	50                   	push   %eax
 8048739:	54                   	push   %esp
 804873a:	52                   	push   %edx
 804873b:	68 60 8f 04 08       	push   $0x8048f60
 8048740:	68 70 8f 04 08       	push   $0x8048f70
 8048745:	51                   	push   %ecx
 8048746:	56                   	push   %esi
 8048747:	68 85 8b 04 08       	push   $0x8048b85
 804874c:	e8 23 ff ff ff       	call   8048674 <__libc_start_main@plt>
 8048751:	f4                   	hlt    
 8048752:	90                   	nop
 8048753:	90                   	nop
 8048754:	90                   	nop
 8048755:	90                   	nop
 8048756:	90                   	nop
 8048757:	90                   	nop
 8048758:	90                   	nop
 8048759:	90                   	nop
 804875a:	90                   	nop
 804875b:	90                   	nop
 804875c:	90                   	nop
 804875d:	90                   	nop
 804875e:	90                   	nop
 804875f:	90                   	nop

08048760 <__do_global_dtors_aux>:
 8048760:	55                   	push   %ebp
 8048761:	89 e5                	mov    %esp,%ebp
 8048763:	53                   	push   %ebx
 8048764:	83 ec 04             	sub    $0x4,%esp
 8048767:	80 3d 8c b0 04 08 00 	cmpb   $0x0,0x804b08c
 804876e:	75 40                	jne    80487b0 <__do_global_dtors_aux+0x50>
 8048770:	8b 15 90 b0 04 08    	mov    0x804b090,%edx
 8048776:	b8 18 af 04 08       	mov    $0x804af18,%eax
 804877b:	2d 14 af 04 08       	sub    $0x804af14,%eax
 8048780:	c1 f8 02             	sar    $0x2,%eax
 8048783:	8d 58 ff             	lea    -0x1(%eax),%ebx
 8048786:	39 da                	cmp    %ebx,%edx
 8048788:	73 1f                	jae    80487a9 <__do_global_dtors_aux+0x49>
 804878a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048790:	8d 42 01             	lea    0x1(%edx),%eax
 8048793:	a3 90 b0 04 08       	mov    %eax,0x804b090
 8048798:	ff 14 85 14 af 04 08 	call   *0x804af14(,%eax,4)
 804879f:	8b 15 90 b0 04 08    	mov    0x804b090,%edx
 80487a5:	39 da                	cmp    %ebx,%edx
 80487a7:	72 e7                	jb     8048790 <__do_global_dtors_aux+0x30>
 80487a9:	c6 05 8c b0 04 08 01 	movb   $0x1,0x804b08c
 80487b0:	83 c4 04             	add    $0x4,%esp
 80487b3:	5b                   	pop    %ebx
 80487b4:	5d                   	pop    %ebp
 80487b5:	c3                   	ret    
 80487b6:	8d 76 00             	lea    0x0(%esi),%esi
 80487b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080487c0 <frame_dummy>:
 80487c0:	55                   	push   %ebp
 80487c1:	89 e5                	mov    %esp,%ebp
 80487c3:	83 ec 08             	sub    $0x8,%esp
 80487c6:	a1 1c af 04 08       	mov    0x804af1c,%eax
 80487cb:	85 c0                	test   %eax,%eax
 80487cd:	74 12                	je     80487e1 <frame_dummy+0x21>
 80487cf:	b8 00 00 00 00       	mov    $0x0,%eax
 80487d4:	85 c0                	test   %eax,%eax
 80487d6:	74 09                	je     80487e1 <frame_dummy+0x21>
 80487d8:	c7 04 24 1c af 04 08 	movl   $0x804af1c,(%esp)
 80487df:	ff d0                	call   *%eax
 80487e1:	c9                   	leave  
 80487e2:	c3                   	ret    
 80487e3:	90                   	nop
 80487e4:	90                   	nop
 80487e5:	90                   	nop
 80487e6:	90                   	nop
 80487e7:	90                   	nop
 80487e8:	90                   	nop
 80487e9:	90                   	nop
 80487ea:	90                   	nop
 80487eb:	90                   	nop
 80487ec:	90                   	nop
 80487ed:	90                   	nop
 80487ee:	90                   	nop
 80487ef:	90                   	nop

080487f0 <usage>:
 80487f0:	55                   	push   %ebp
 80487f1:	89 e5                	mov    %esp,%ebp
 80487f3:	83 ec 08             	sub    $0x8,%esp
 80487f6:	89 44 24 04          	mov    %eax,0x4(%esp)
 80487fa:	c7 04 24 20 90 04 08 	movl   $0x8049020,(%esp)
 8048801:	e8 9e fe ff ff       	call   80486a4 <printf@plt>
 8048806:	c7 04 24 2c 91 04 08 	movl   $0x804912c,(%esp)
 804880d:	e8 c2 fe ff ff       	call   80486d4 <puts@plt>
 8048812:	c7 04 24 50 91 04 08 	movl   $0x8049150,(%esp)
 8048819:	e8 b6 fe ff ff       	call   80486d4 <puts@plt>
 804881e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048825:	e8 ea fe ff ff       	call   8048714 <exit@plt>

0804882a <illegalhandler>:
 804882a:	55                   	push   %ebp
 804882b:	89 e5                	mov    %esp,%ebp
 804882d:	83 ec 08             	sub    $0x8,%esp
 8048830:	c7 04 24 78 91 04 08 	movl   $0x8049178,(%esp)
 8048837:	e8 98 fe ff ff       	call   80486d4 <puts@plt>
 804883c:	c7 04 24 3e 90 04 08 	movl   $0x804903e,(%esp)
 8048843:	e8 8c fe ff ff       	call   80486d4 <puts@plt>
 8048848:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804884f:	e8 c0 fe ff ff       	call   8048714 <exit@plt>

08048854 <seghandler>:
 8048854:	55                   	push   %ebp
 8048855:	89 e5                	mov    %esp,%ebp
 8048857:	83 ec 08             	sub    $0x8,%esp
 804885a:	c7 04 24 a4 91 04 08 	movl   $0x80491a4,(%esp)
 8048861:	e8 6e fe ff ff       	call   80486d4 <puts@plt>
 8048866:	c7 04 24 3e 90 04 08 	movl   $0x804903e,(%esp)
 804886d:	e8 62 fe ff ff       	call   80486d4 <puts@plt>
 8048872:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048879:	e8 96 fe ff ff       	call   8048714 <exit@plt>

0804887e <bushandler>:
 804887e:	55                   	push   %ebp
 804887f:	89 e5                	mov    %esp,%ebp
 8048881:	83 ec 08             	sub    $0x8,%esp
 8048884:	c7 04 24 cc 91 04 08 	movl   $0x80491cc,(%esp)
 804888b:	e8 44 fe ff ff       	call   80486d4 <puts@plt>
 8048890:	c7 04 24 3e 90 04 08 	movl   $0x804903e,(%esp)
 8048897:	e8 38 fe ff ff       	call   80486d4 <puts@plt>
 804889c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80488a3:	e8 6c fe ff ff       	call   8048714 <exit@plt>

080488a8 <Gets>:
 80488a8:	55                   	push   %ebp
 80488a9:	89 e5                	mov    %esp,%ebp
 80488ab:	57                   	push   %edi
 80488ac:	56                   	push   %esi
 80488ad:	53                   	push   %ebx
 80488ae:	83 ec 0c             	sub    $0xc,%esp
 80488b1:	c7 05 a8 b0 04 08 00 	movl   $0x0,0x804b0a8
 80488b8:	00 00 00 
 80488bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
 80488be:	bf f4 92 04 08       	mov    $0x80492f4,%edi
 80488c3:	eb 46                	jmp    804890b <Gets+0x63>
 80488c5:	89 c6                	mov    %eax,%esi
 80488c7:	88 03                	mov    %al,(%ebx)
 80488c9:	8b 0d a8 b0 04 08    	mov    0x804b0a8,%ecx
 80488cf:	81 f9 ff 03 00 00    	cmp    $0x3ff,%ecx
 80488d5:	7f 31                	jg     8048908 <Gets+0x60>
 80488d7:	8d 14 49             	lea    (%ecx,%ecx,2),%edx
 80488da:	c0 e8 04             	shr    $0x4,%al
 80488dd:	0f be c0             	movsbl %al,%eax
 80488e0:	0f b6 04 07          	movzbl (%edi,%eax,1),%eax
 80488e4:	88 82 c0 b0 04 08    	mov    %al,0x804b0c0(%edx)
 80488ea:	89 f0                	mov    %esi,%eax
 80488ec:	83 e0 0f             	and    $0xf,%eax
 80488ef:	0f b6 04 07          	movzbl (%edi,%eax,1),%eax
 80488f3:	88 82 c1 b0 04 08    	mov    %al,0x804b0c1(%edx)
 80488f9:	c6 82 c2 b0 04 08 20 	movb   $0x20,0x804b0c2(%edx)
 8048900:	8d 41 01             	lea    0x1(%ecx),%eax
 8048903:	a3 a8 b0 04 08       	mov    %eax,0x804b0a8
 8048908:	83 c3 01             	add    $0x1,%ebx
 804890b:	a1 98 b0 04 08       	mov    0x804b098,%eax
 8048910:	89 04 24             	mov    %eax,(%esp)
 8048913:	e8 6c fd ff ff       	call   8048684 <_IO_getc@plt>
 8048918:	83 f8 ff             	cmp    $0xffffffff,%eax
 804891b:	74 05                	je     8048922 <Gets+0x7a>
 804891d:	83 f8 0a             	cmp    $0xa,%eax
 8048920:	75 a3                	jne    80488c5 <Gets+0x1d>
 8048922:	c6 03 00             	movb   $0x0,(%ebx)
 8048925:	a1 a8 b0 04 08       	mov    0x804b0a8,%eax
 804892a:	c6 84 40 c0 b0 04 08 	movb   $0x0,0x804b0c0(%eax,%eax,2)
 8048931:	00 
 8048932:	8b 45 08             	mov    0x8(%ebp),%eax
 8048935:	83 c4 0c             	add    $0xc,%esp
 8048938:	5b                   	pop    %ebx
 8048939:	5e                   	pop    %esi
 804893a:	5f                   	pop    %edi
 804893b:	5d                   	pop    %ebp
 804893c:	c3                   	ret    

0804893d <getbufn>:
 804893d:	55                   	push   %ebp
 804893e:	89 e5                	mov    %esp,%ebp
 8048940:	81 ec 08 02 00 00    	sub    $0x208,%esp
 8048946:	8d 85 00 fe ff ff    	lea    -0x200(%ebp),%eax
 804894c:	89 04 24             	mov    %eax,(%esp)
 804894f:	e8 54 ff ff ff       	call   80488a8 <Gets>
 8048954:	b8 01 00 00 00       	mov    $0x1,%eax
 8048959:	c9                   	leave  
 804895a:	c3                   	ret    

0804895b <getbuf>:
 804895b:	55                   	push   %ebp
 804895c:	89 e5                	mov    %esp,%ebp
 804895e:	83 ec 28             	sub    $0x28,%esp
 8048961:	8d 45 e0             	lea    -0x20(%ebp),%eax
 8048964:	89 04 24             	mov    %eax,(%esp)
 8048967:	e8 3c ff ff ff       	call   80488a8 <Gets>
 804896c:	b8 01 00 00 00       	mov    $0x1,%eax
 8048971:	c9                   	leave  
 8048972:	c3                   	ret    

08048973 <testn>:
 8048973:	55                   	push   %ebp
 8048974:	89 e5                	mov    %esp,%ebp
 8048976:	83 ec 18             	sub    $0x18,%esp
 8048979:	c7 45 fc ef be ad de 	movl   $0xdeadbeef,-0x4(%ebp)
 8048980:	e8 b8 ff ff ff       	call   804893d <getbufn>
 8048985:	89 c2                	mov    %eax,%edx
 8048987:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804898a:	3d ef be ad de       	cmp    $0xdeadbeef,%eax
 804898f:	74 0e                	je     804899f <testn+0x2c>
 8048991:	c7 04 24 ec 91 04 08 	movl   $0x80491ec,(%esp)
 8048998:	e8 37 fd ff ff       	call   80486d4 <puts@plt>
 804899d:	eb 36                	jmp    80489d5 <testn+0x62>
 804899f:	3b 15 9c b0 04 08    	cmp    0x804b09c,%edx
 80489a5:	75 1e                	jne    80489c5 <testn+0x52>
 80489a7:	89 54 24 04          	mov    %edx,0x4(%esp)
 80489ab:	c7 04 24 18 92 04 08 	movl   $0x8049218,(%esp)
 80489b2:	e8 ed fc ff ff       	call   80486a4 <printf@plt>
 80489b7:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 80489be:	e8 7a 04 00 00       	call   8048e3d <validate>
 80489c3:	eb 10                	jmp    80489d5 <testn+0x62>
 80489c5:	89 54 24 04          	mov    %edx,0x4(%esp)
 80489c9:	c7 04 24 54 90 04 08 	movl   $0x8049054,(%esp)
 80489d0:	e8 cf fc ff ff       	call   80486a4 <printf@plt>
 80489d5:	c9                   	leave  
 80489d6:	c3                   	ret    

080489d7 <test>:
 80489d7:	55                   	push   %ebp
 80489d8:	89 e5                	mov    %esp,%ebp
 80489da:	83 ec 18             	sub    $0x18,%esp
 80489dd:	c7 45 fc ef be ad de 	movl   $0xdeadbeef,-0x4(%ebp)
 80489e4:	e8 72 ff ff ff       	call   804895b <getbuf>
 80489e9:	89 c2                	mov    %eax,%edx
 80489eb:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80489ee:	3d ef be ad de       	cmp    $0xdeadbeef,%eax
 80489f3:	74 0e                	je     8048a03 <test+0x2c>
 80489f5:	c7 04 24 ec 91 04 08 	movl   $0x80491ec,(%esp)
 80489fc:	e8 d3 fc ff ff       	call   80486d4 <puts@plt>
 8048a01:	eb 36                	jmp    8048a39 <test+0x62>
 8048a03:	3b 15 9c b0 04 08    	cmp    0x804b09c,%edx
 8048a09:	75 1e                	jne    8048a29 <test+0x52>
 8048a0b:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048a0f:	c7 04 24 70 90 04 08 	movl   $0x8049070,(%esp)
 8048a16:	e8 89 fc ff ff       	call   80486a4 <printf@plt>
 8048a1b:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048a22:	e8 16 04 00 00       	call   8048e3d <validate>
 8048a27:	eb 10                	jmp    8048a39 <test+0x62>
 8048a29:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048a2d:	c7 04 24 8d 90 04 08 	movl   $0x804908d,(%esp)
 8048a34:	e8 6b fc ff ff       	call   80486a4 <printf@plt>
 8048a39:	c9                   	leave  
 8048a3a:	c3                   	ret    

08048a3b <launch>:
 8048a3b:	55                   	push   %ebp
 8048a3c:	89 e5                	mov    %esp,%ebp
 8048a3e:	53                   	push   %ebx
 8048a3f:	83 ec 54             	sub    $0x54,%esp
 8048a42:	89 c3                	mov    %eax,%ebx
 8048a44:	8d 45 bc             	lea    -0x44(%ebp),%eax
 8048a47:	25 f8 3f 00 00       	and    $0x3ff8,%eax
 8048a4c:	01 c2                	add    %eax,%edx
 8048a4e:	8d 42 1e             	lea    0x1e(%edx),%eax
 8048a51:	83 e0 f0             	and    $0xfffffff0,%eax
 8048a54:	29 c4                	sub    %eax,%esp
 8048a56:	8d 44 24 1b          	lea    0x1b(%esp),%eax
 8048a5a:	83 e0 f0             	and    $0xfffffff0,%eax
 8048a5d:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048a61:	c7 44 24 04 f4 00 00 	movl   $0xf4,0x4(%esp)
 8048a68:	00 
 8048a69:	89 04 24             	mov    %eax,(%esp)
 8048a6c:	e8 f3 fb ff ff       	call   8048664 <memset@plt>
 8048a71:	c7 04 24 a8 90 04 08 	movl   $0x80490a8,(%esp)
 8048a78:	e8 27 fc ff ff       	call   80486a4 <printf@plt>
 8048a7d:	85 db                	test   %ebx,%ebx
 8048a7f:	74 09                	je     8048a8a <launch+0x4f>
 8048a81:	e8 ed fe ff ff       	call   8048973 <testn>
 8048a86:	66 90                	xchg   %ax,%ax
 8048a88:	eb 0b                	jmp    8048a95 <launch+0x5a>
 8048a8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048a90:	e8 42 ff ff ff       	call   80489d7 <test>
 8048a95:	83 3d a0 b0 04 08 00 	cmpl   $0x0,0x804b0a0
 8048a9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048aa0:	75 16                	jne    8048ab8 <launch+0x7d>
 8048aa2:	c7 04 24 3e 90 04 08 	movl   $0x804903e,(%esp)
 8048aa9:	e8 26 fc ff ff       	call   80486d4 <puts@plt>
 8048aae:	c7 05 a0 b0 04 08 00 	movl   $0x0,0x804b0a0
 8048ab5:	00 00 00 
 8048ab8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048abb:	c9                   	leave  
 8048abc:	c3                   	ret    

08048abd <launcher>:
 8048abd:	55                   	push   %ebp
 8048abe:	89 e5                	mov    %esp,%ebp
 8048ac0:	53                   	push   %ebx
 8048ac1:	83 ec 24             	sub    $0x24,%esp
 8048ac4:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ac7:	a3 ac b0 04 08       	mov    %eax,0x804b0ac
 8048acc:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048acf:	a3 b0 b0 04 08       	mov    %eax,0x804b0b0
 8048ad4:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 8048adb:	00 
 8048adc:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 8048ae3:	00 
 8048ae4:	c7 44 24 0c 22 01 00 	movl   $0x122,0xc(%esp)
 8048aeb:	00 
 8048aec:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
 8048af3:	00 
 8048af4:	c7 44 24 04 00 00 10 	movl   $0x100000,0x4(%esp)
 8048afb:	00 
 8048afc:	c7 04 24 00 60 58 55 	movl   $0x55586000,(%esp)
 8048b03:	e8 0c fb ff ff       	call   8048614 <mmap@plt>
 8048b08:	89 c3                	mov    %eax,%ebx
 8048b0a:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048b0d:	75 31                	jne    8048b40 <launcher+0x83>
 8048b0f:	a1 80 b0 04 08       	mov    0x804b080,%eax
 8048b14:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048b18:	c7 44 24 08 47 00 00 	movl   $0x47,0x8(%esp)
 8048b1f:	00 
 8048b20:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048b27:	00 
 8048b28:	c7 04 24 38 92 04 08 	movl   $0x8049238,(%esp)
 8048b2f:	e8 90 fb ff ff       	call   80486c4 <fwrite@plt>
 8048b34:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048b3b:	e8 d4 fb ff ff       	call   8048714 <exit@plt>
 8048b40:	8d 90 f8 ff 0f 00    	lea    0xffff8(%eax),%edx
 8048b46:	89 15 c4 bc 04 08    	mov    %edx,0x804bcc4
 8048b4c:	89 e0                	mov    %esp,%eax
 8048b4e:	89 d4                	mov    %edx,%esp
 8048b50:	89 c2                	mov    %eax,%edx
 8048b52:	89 15 b4 b0 04 08    	mov    %edx,0x804b0b4
 8048b58:	8b 15 b0 b0 04 08    	mov    0x804b0b0,%edx
 8048b5e:	a1 ac b0 04 08       	mov    0x804b0ac,%eax
 8048b63:	e8 d3 fe ff ff       	call   8048a3b <launch>
 8048b68:	a1 b4 b0 04 08       	mov    0x804b0b4,%eax
 8048b6d:	89 c4                	mov    %eax,%esp
 8048b6f:	c7 44 24 04 00 00 10 	movl   $0x100000,0x4(%esp)
 8048b76:	00 
 8048b77:	89 1c 24             	mov    %ebx,(%esp)
 8048b7a:	e8 75 fb ff ff       	call   80486f4 <munmap@plt>
 8048b7f:	83 c4 24             	add    $0x24,%esp
 8048b82:	5b                   	pop    %ebx
 8048b83:	5d                   	pop    %ebp
 8048b84:	c3                   	ret    

08048b85 <main>:
 8048b85:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048b89:	83 e4 f0             	and    $0xfffffff0,%esp
 8048b8c:	ff 71 fc             	pushl  -0x4(%ecx)
 8048b8f:	55                   	push   %ebp
 8048b90:	89 e5                	mov    %esp,%ebp
 8048b92:	57                   	push   %edi
 8048b93:	56                   	push   %esi
 8048b94:	53                   	push   %ebx
 8048b95:	51                   	push   %ecx
 8048b96:	83 ec 28             	sub    $0x28,%esp
 8048b99:	8b 31                	mov    (%ecx),%esi
 8048b9b:	8b 59 04             	mov    0x4(%ecx),%ebx
 8048b9e:	c7 44 24 04 54 88 04 	movl   $0x8048854,0x4(%esp)
 8048ba5:	08 
 8048ba6:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
 8048bad:	e8 82 fa ff ff       	call   8048634 <signal@plt>
 8048bb2:	c7 44 24 04 7e 88 04 	movl   $0x804887e,0x4(%esp)
 8048bb9:	08 
 8048bba:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
 8048bc1:	e8 6e fa ff ff       	call   8048634 <signal@plt>
 8048bc6:	c7 44 24 04 2a 88 04 	movl   $0x804882a,0x4(%esp)
 8048bcd:	08 
 8048bce:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 8048bd5:	e8 5a fa ff ff       	call   8048634 <signal@plt>
 8048bda:	a1 84 b0 04 08       	mov    0x804b084,%eax
 8048bdf:	a3 98 b0 04 08       	mov    %eax,0x804b098
 8048be4:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
 8048beb:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 8048bf2:	bf 01 00 00 00       	mov    $0x1,%edi
 8048bf7:	eb 61                	jmp    8048c5a <main+0xd5>
 8048bf9:	3c 6e                	cmp    $0x6e,%al
 8048bfb:	74 15                	je     8048c12 <main+0x8d>
 8048bfd:	3c 74                	cmp    $0x74,%al
 8048bff:	74 31                	je     8048c32 <main+0xad>
 8048c01:	3c 68                	cmp    $0x68,%al
 8048c03:	90                   	nop
 8048c04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048c08:	75 49                	jne    8048c53 <main+0xce>
 8048c0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048c10:	eb 10                	jmp    8048c22 <main+0x9d>
 8048c12:	c7 45 ec 05 00 00 00 	movl   $0x5,-0x14(%ebp)
 8048c19:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 8048c1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048c20:	eb 38                	jmp    8048c5a <main+0xd5>
 8048c22:	8b 03                	mov    (%ebx),%eax
 8048c24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048c28:	e8 c3 fb ff ff       	call   80487f0 <usage>
 8048c2d:	8d 76 00             	lea    0x0(%esi),%esi
 8048c30:	eb 28                	jmp    8048c5a <main+0xd5>
 8048c32:	a1 88 b0 04 08       	mov    0x804b088,%eax
 8048c37:	89 04 24             	mov    %eax,(%esp)
 8048c3a:	e8 c5 fa ff ff       	call   8048704 <__strdup@plt>
 8048c3f:	a3 94 b0 04 08       	mov    %eax,0x804b094
 8048c44:	89 04 24             	mov    %eax,(%esp)
 8048c47:	e8 d5 02 00 00       	call   8048f21 <gencookie>
 8048c4c:	a3 9c b0 04 08       	mov    %eax,0x804b09c
 8048c51:	eb 07                	jmp    8048c5a <main+0xd5>
 8048c53:	8b 03                	mov    (%ebx),%eax
 8048c55:	e8 96 fb ff ff       	call   80487f0 <usage>
 8048c5a:	c7 44 24 08 b6 90 04 	movl   $0x80490b6,0x8(%esp)
 8048c61:	08 
 8048c62:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048c66:	89 34 24             	mov    %esi,(%esp)
 8048c69:	e8 26 fa ff ff       	call   8048694 <getopt@plt>
 8048c6e:	3c ff                	cmp    $0xff,%al
 8048c70:	75 87                	jne    8048bf9 <main+0x74>
 8048c72:	83 3d 94 b0 04 08 00 	cmpl   $0x0,0x804b094
 8048c79:	75 19                	jne    8048c94 <main+0x10f>
 8048c7b:	8b 03                	mov    (%ebx),%eax
 8048c7d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048c81:	c7 04 24 80 92 04 08 	movl   $0x8049280,(%esp)
 8048c88:	e8 17 fa ff ff       	call   80486a4 <printf@plt>
 8048c8d:	8b 03                	mov    (%ebx),%eax
 8048c8f:	e8 5c fb ff ff       	call   80487f0 <usage>
 8048c94:	e8 9f 01 00 00       	call   8048e38 <initialize_bomb>
 8048c99:	a1 94 b0 04 08       	mov    0x804b094,%eax
 8048c9e:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048ca2:	c7 04 24 ba 90 04 08 	movl   $0x80490ba,(%esp)
 8048ca9:	e8 f6 f9 ff ff       	call   80486a4 <printf@plt>
 8048cae:	a1 9c b0 04 08       	mov    0x804b09c,%eax
 8048cb3:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048cb7:	c7 04 24 c4 90 04 08 	movl   $0x80490c4,(%esp)
 8048cbe:	e8 e1 f9 ff ff       	call   80486a4 <printf@plt>
 8048cc3:	a1 9c b0 04 08       	mov    0x804b09c,%eax
 8048cc8:	89 04 24             	mov    %eax,(%esp)
 8048ccb:	e8 e4 f9 ff ff       	call   80486b4 <srandom@plt>
 8048cd0:	e8 4f f9 ff ff       	call   8048624 <random@plt>
 8048cd5:	25 f8 0f 00 00       	and    $0xff8,%eax
 8048cda:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8048cdd:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048ce0:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8048ce3:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
 8048cea:	00 
 8048ceb:	89 04 24             	mov    %eax,(%esp)
 8048cee:	e8 61 f9 ff ff       	call   8048654 <calloc@plt>
 8048cf3:	89 c6                	mov    %eax,%esi
 8048cf5:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8048cf8:	8b 7d ec             	mov    -0x14(%ebp),%edi
 8048cfb:	83 ef 02             	sub    $0x2,%edi
 8048cfe:	85 ff                	test   %edi,%edi
 8048d00:	7e 17                	jle    8048d19 <main+0x194>
 8048d02:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048d07:	e8 18 f9 ff ff       	call   8048624 <random@plt>
 8048d0c:	83 e0 38             	and    $0x38,%eax
 8048d0f:	89 04 9e             	mov    %eax,(%esi,%ebx,4)
 8048d12:	83 c3 01             	add    $0x1,%ebx
 8048d15:	39 fb                	cmp    %edi,%ebx
 8048d17:	7c ee                	jl     8048d07 <main+0x182>
 8048d19:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
 8048d1d:	7e 0e                	jle    8048d2d <main+0x1a8>
 8048d1f:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8048d22:	8b 55 e8             	mov    -0x18(%ebp),%edx
 8048d25:	c7 44 82 f8 38 00 00 	movl   $0x38,-0x8(%edx,%eax,4)
 8048d2c:	00 
 8048d2d:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8048d30:	8b 55 e8             	mov    -0x18(%ebp),%edx
 8048d33:	c7 44 82 fc 00 00 00 	movl   $0x0,-0x4(%edx,%eax,4)
 8048d3a:	00 
 8048d3b:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 8048d3f:	7e 22                	jle    8048d63 <main+0x1de>
 8048d41:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048d46:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8048d49:	03 04 9e             	add    (%esi,%ebx,4),%eax
 8048d4c:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048d50:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048d53:	89 04 24             	mov    %eax,(%esp)
 8048d56:	e8 62 fd ff ff       	call   8048abd <launcher>
 8048d5b:	83 c3 01             	add    $0x1,%ebx
 8048d5e:	39 5d ec             	cmp    %ebx,-0x14(%ebp)
 8048d61:	7f e3                	jg     8048d46 <main+0x1c1>
 8048d63:	b8 00 00 00 00       	mov    $0x0,%eax
 8048d68:	83 c4 28             	add    $0x28,%esp
 8048d6b:	59                   	pop    %ecx
 8048d6c:	5b                   	pop    %ebx
 8048d6d:	5e                   	pop    %esi
 8048d6e:	5f                   	pop    %edi
 8048d6f:	5d                   	pop    %ebp
 8048d70:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8048d73:	c3                   	ret    

08048d74 <bang>:
 8048d74:	55                   	push   %ebp
 8048d75:	89 e5                	mov    %esp,%ebp
 8048d77:	83 ec 08             	sub    $0x8,%esp
 8048d7a:	a1 a4 b0 04 08       	mov    0x804b0a4,%eax
 8048d7f:	3b 05 9c b0 04 08    	cmp    0x804b09c,%eax
 8048d85:	75 1e                	jne    8048da5 <bang+0x31>
 8048d87:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048d8b:	c7 04 24 ac 92 04 08 	movl   $0x80492ac,(%esp)
 8048d92:	e8 0d f9 ff ff       	call   80486a4 <printf@plt>
 8048d97:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8048d9e:	e8 9a 00 00 00       	call   8048e3d <validate>
 8048da3:	eb 10                	jmp    8048db5 <bang+0x41>
 8048da5:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048da9:	c7 04 24 d2 90 04 08 	movl   $0x80490d2,(%esp)
 8048db0:	e8 ef f8 ff ff       	call   80486a4 <printf@plt>
 8048db5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048dbc:	e8 53 f9 ff ff       	call   8048714 <exit@plt>

08048dc1 <fizz>:
 8048dc1:	55                   	push   %ebp
 8048dc2:	89 e5                	mov    %esp,%ebp
 8048dc4:	83 ec 08             	sub    $0x8,%esp
 8048dc7:	8b 45 08             	mov    0x8(%ebp),%eax
 8048dca:	3b 05 9c b0 04 08    	cmp    0x804b09c,%eax
 8048dd0:	75 1e                	jne    8048df0 <fizz+0x2f>
 8048dd2:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048dd6:	c7 04 24 f0 90 04 08 	movl   $0x80490f0,(%esp)
 8048ddd:	e8 c2 f8 ff ff       	call   80486a4 <printf@plt>
 8048de2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048de9:	e8 4f 00 00 00       	call   8048e3d <validate>
 8048dee:	eb 10                	jmp    8048e00 <fizz+0x3f>
 8048df0:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048df4:	c7 04 24 d4 92 04 08 	movl   $0x80492d4,(%esp)
 8048dfb:	e8 a4 f8 ff ff       	call   80486a4 <printf@plt>
 8048e00:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048e07:	e8 08 f9 ff ff       	call   8048714 <exit@plt>

08048e0c <smoke>:
 8048e0c:	55                   	push   %ebp
 8048e0d:	89 e5                	mov    %esp,%ebp
 8048e0f:	83 ec 08             	sub    $0x8,%esp
 8048e12:	c7 04 24 0e 91 04 08 	movl   $0x804910e,(%esp)
 8048e19:	e8 b6 f8 ff ff       	call   80486d4 <puts@plt>
 8048e1e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048e25:	e8 13 00 00 00       	call   8048e3d <validate>
 8048e2a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048e31:	e8 de f8 ff ff       	call   8048714 <exit@plt>
 8048e36:	90                   	nop
 8048e37:	90                   	nop

08048e38 <initialize_bomb>:
 8048e38:	55                   	push   %ebp
 8048e39:	89 e5                	mov    %esp,%ebp
 8048e3b:	5d                   	pop    %ebp
 8048e3c:	c3                   	ret    

08048e3d <validate>:
 8048e3d:	55                   	push   %ebp
 8048e3e:	89 e5                	mov    %esp,%ebp
 8048e40:	83 ec 08             	sub    $0x8,%esp
 8048e43:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8048e46:	83 3d 94 b0 04 08 00 	cmpl   $0x0,0x804b094
 8048e4d:	75 0e                	jne    8048e5d <validate+0x20>
 8048e4f:	c7 04 24 04 93 04 08 	movl   $0x8049304,(%esp)
 8048e56:	e8 79 f8 ff ff       	call   80486d4 <puts@plt>
 8048e5b:	eb 55                	jmp    8048eb2 <validate+0x75>
 8048e5d:	83 f9 04             	cmp    $0x4,%ecx
 8048e60:	76 0e                	jbe    8048e70 <validate+0x33>
 8048e62:	c7 04 24 30 93 04 08 	movl   $0x8049330,(%esp)
 8048e69:	e8 66 f8 ff ff       	call   80486d4 <puts@plt>
 8048e6e:	eb 42                	jmp    8048eb2 <validate+0x75>
 8048e70:	c7 05 a0 b0 04 08 01 	movl   $0x1,0x804b0a0
 8048e77:	00 00 00 
 8048e7a:	ba 50 b0 04 08       	mov    $0x804b050,%edx
 8048e7f:	8b 04 8a             	mov    (%edx,%ecx,4),%eax
 8048e82:	83 e8 01             	sub    $0x1,%eax
 8048e85:	89 04 8a             	mov    %eax,(%edx,%ecx,4)
 8048e88:	85 c0                	test   %eax,%eax
 8048e8a:	7e 0e                	jle    8048e9a <validate+0x5d>
 8048e8c:	c7 04 24 58 93 04 08 	movl   $0x8049358,(%esp)
 8048e93:	e8 3c f8 ff ff       	call   80486d4 <puts@plt>
 8048e98:	eb 18                	jmp    8048eb2 <validate+0x75>
 8048e9a:	c7 04 24 63 93 04 08 	movl   $0x8049363,(%esp)
 8048ea1:	e8 2e f8 ff ff       	call   80486d4 <puts@plt>
 8048ea6:	c7 04 24 69 93 04 08 	movl   $0x8049369,(%esp)
 8048ead:	e8 22 f8 ff ff       	call   80486d4 <puts@plt>
 8048eb2:	c9                   	leave  
 8048eb3:	c3                   	ret    
 8048eb4:	90                   	nop
 8048eb5:	90                   	nop
 8048eb6:	90                   	nop
 8048eb7:	90                   	nop
 8048eb8:	90                   	nop
 8048eb9:	90                   	nop
 8048eba:	90                   	nop
 8048ebb:	90                   	nop
 8048ebc:	90                   	nop
 8048ebd:	90                   	nop
 8048ebe:	90                   	nop
 8048ebf:	90                   	nop

08048ec0 <hash>:
 8048ec0:	55                   	push   %ebp
 8048ec1:	89 e5                	mov    %esp,%ebp
 8048ec3:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8048ec6:	0f b6 01             	movzbl (%ecx),%eax
 8048ec9:	ba 00 00 00 00       	mov    $0x0,%edx
 8048ece:	84 c0                	test   %al,%al
 8048ed0:	74 13                	je     8048ee5 <hash+0x25>
 8048ed2:	6b d2 67             	imul   $0x67,%edx,%edx
 8048ed5:	0f be c0             	movsbl %al,%eax
 8048ed8:	8d 14 10             	lea    (%eax,%edx,1),%edx
 8048edb:	83 c1 01             	add    $0x1,%ecx
 8048ede:	0f b6 01             	movzbl (%ecx),%eax
 8048ee1:	84 c0                	test   %al,%al
 8048ee3:	75 ed                	jne    8048ed2 <hash+0x12>
 8048ee5:	89 d0                	mov    %edx,%eax
 8048ee7:	5d                   	pop    %ebp
 8048ee8:	c3                   	ret    

08048ee9 <check>:
 8048ee9:	55                   	push   %ebp
 8048eea:	89 e5                	mov    %esp,%ebp
 8048eec:	8b 55 08             	mov    0x8(%ebp),%edx
 8048eef:	89 d0                	mov    %edx,%eax
 8048ef1:	c1 e8 1c             	shr    $0x1c,%eax
 8048ef4:	85 c0                	test   %eax,%eax
 8048ef6:	74 1c                	je     8048f14 <check+0x2b>
 8048ef8:	b9 00 00 00 00       	mov    $0x0,%ecx
 8048efd:	89 d0                	mov    %edx,%eax
 8048eff:	d3 e8                	shr    %cl,%eax
 8048f01:	3c 0a                	cmp    $0xa,%al
 8048f03:	74 0f                	je     8048f14 <check+0x2b>
 8048f05:	83 c1 08             	add    $0x8,%ecx
 8048f08:	83 f9 20             	cmp    $0x20,%ecx
 8048f0b:	75 f0                	jne    8048efd <check+0x14>
 8048f0d:	b8 01 00 00 00       	mov    $0x1,%eax
 8048f12:	eb 05                	jmp    8048f19 <check+0x30>
 8048f14:	b8 00 00 00 00       	mov    $0x0,%eax
 8048f19:	5d                   	pop    %ebp
 8048f1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048f20:	c3                   	ret    

08048f21 <gencookie>:
 8048f21:	55                   	push   %ebp
 8048f22:	89 e5                	mov    %esp,%ebp
 8048f24:	53                   	push   %ebx
 8048f25:	83 ec 04             	sub    $0x4,%esp
 8048f28:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f2b:	89 04 24             	mov    %eax,(%esp)
 8048f2e:	e8 8d ff ff ff       	call   8048ec0 <hash>
 8048f33:	89 04 24             	mov    %eax,(%esp)
 8048f36:	e8 c9 f6 ff ff       	call   8048604 <srand@plt>
 8048f3b:	e8 a4 f7 ff ff       	call   80486e4 <rand@plt>
 8048f40:	89 c3                	mov    %eax,%ebx
 8048f42:	89 04 24             	mov    %eax,(%esp)
 8048f45:	e8 9f ff ff ff       	call   8048ee9 <check>
 8048f4a:	85 c0                	test   %eax,%eax
 8048f4c:	74 ed                	je     8048f3b <gencookie+0x1a>
 8048f4e:	89 d8                	mov    %ebx,%eax
 8048f50:	83 c4 04             	add    $0x4,%esp
 8048f53:	5b                   	pop    %ebx
 8048f54:	5d                   	pop    %ebp
 8048f55:	c3                   	ret    
 8048f56:	90                   	nop
 8048f57:	90                   	nop
 8048f58:	90                   	nop
 8048f59:	90                   	nop
 8048f5a:	90                   	nop
 8048f5b:	90                   	nop
 8048f5c:	90                   	nop
 8048f5d:	90                   	nop
 8048f5e:	90                   	nop
 8048f5f:	90                   	nop

08048f60 <__libc_csu_fini>:
 8048f60:	55                   	push   %ebp
 8048f61:	89 e5                	mov    %esp,%ebp
 8048f63:	5d                   	pop    %ebp
 8048f64:	c3                   	ret    
 8048f65:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048f69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048f70 <__libc_csu_init>:
 8048f70:	55                   	push   %ebp
 8048f71:	89 e5                	mov    %esp,%ebp
 8048f73:	57                   	push   %edi
 8048f74:	56                   	push   %esi
 8048f75:	53                   	push   %ebx
 8048f76:	e8 4f 00 00 00       	call   8048fca <__i686.get_pc_thunk.bx>
 8048f7b:	81 c3 79 20 00 00    	add    $0x2079,%ebx
 8048f81:	83 ec 0c             	sub    $0xc,%esp
 8048f84:	e8 3b f6 ff ff       	call   80485c4 <_init>
 8048f89:	8d bb 18 ff ff ff    	lea    -0xe8(%ebx),%edi
 8048f8f:	8d 83 18 ff ff ff    	lea    -0xe8(%ebx),%eax
 8048f95:	29 c7                	sub    %eax,%edi
 8048f97:	c1 ff 02             	sar    $0x2,%edi
 8048f9a:	85 ff                	test   %edi,%edi
 8048f9c:	74 24                	je     8048fc2 <__libc_csu_init+0x52>
 8048f9e:	31 f6                	xor    %esi,%esi
 8048fa0:	8b 45 10             	mov    0x10(%ebp),%eax
 8048fa3:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048fa7:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048faa:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048fae:	8b 45 08             	mov    0x8(%ebp),%eax
 8048fb1:	89 04 24             	mov    %eax,(%esp)
 8048fb4:	ff 94 b3 18 ff ff ff 	call   *-0xe8(%ebx,%esi,4)
 8048fbb:	83 c6 01             	add    $0x1,%esi
 8048fbe:	39 fe                	cmp    %edi,%esi
 8048fc0:	72 de                	jb     8048fa0 <__libc_csu_init+0x30>
 8048fc2:	83 c4 0c             	add    $0xc,%esp
 8048fc5:	5b                   	pop    %ebx
 8048fc6:	5e                   	pop    %esi
 8048fc7:	5f                   	pop    %edi
 8048fc8:	5d                   	pop    %ebp
 8048fc9:	c3                   	ret    

08048fca <__i686.get_pc_thunk.bx>:
 8048fca:	8b 1c 24             	mov    (%esp),%ebx
 8048fcd:	c3                   	ret    
 8048fce:	90                   	nop
 8048fcf:	90                   	nop

08048fd0 <__do_global_ctors_aux>:
 8048fd0:	55                   	push   %ebp
 8048fd1:	89 e5                	mov    %esp,%ebp
 8048fd3:	53                   	push   %ebx
 8048fd4:	83 ec 04             	sub    $0x4,%esp
 8048fd7:	a1 0c af 04 08       	mov    0x804af0c,%eax
 8048fdc:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048fdf:	74 13                	je     8048ff4 <__do_global_ctors_aux+0x24>
 8048fe1:	bb 0c af 04 08       	mov    $0x804af0c,%ebx
 8048fe6:	66 90                	xchg   %ax,%ax
 8048fe8:	83 eb 04             	sub    $0x4,%ebx
 8048feb:	ff d0                	call   *%eax
 8048fed:	8b 03                	mov    (%ebx),%eax
 8048fef:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048ff2:	75 f4                	jne    8048fe8 <__do_global_ctors_aux+0x18>
 8048ff4:	83 c4 04             	add    $0x4,%esp
 8048ff7:	5b                   	pop    %ebx
 8048ff8:	5d                   	pop    %ebp
 8048ff9:	c3                   	ret    
 8048ffa:	90                   	nop
 8048ffb:	90                   	nop

Disassembly of section .fini:

08048ffc <_fini>:
 8048ffc:	55                   	push   %ebp
 8048ffd:	89 e5                	mov    %esp,%ebp
 8048fff:	53                   	push   %ebx
 8049000:	83 ec 04             	sub    $0x4,%esp
 8049003:	e8 00 00 00 00       	call   8049008 <_fini+0xc>
 8049008:	5b                   	pop    %ebx
 8049009:	81 c3 ec 1f 00 00    	add    $0x1fec,%ebx
 804900f:	e8 4c f7 ff ff       	call   8048760 <__do_global_dtors_aux>
 8049014:	59                   	pop    %ecx
 8049015:	5b                   	pop    %ebx
 8049016:	c9                   	leave  
 8049017:	c3                   	ret    
