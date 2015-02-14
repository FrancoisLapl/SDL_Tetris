
./Tetris:     format de fichier mach-o-x86-64


Déassemblage de la section .text:

0000000100001363 <_initSDL>:
   100001363:	55                   	push   %rbp
   100001364:	48 89 e5             	mov    %rsp,%rbp
   100001367:	48 83 ec 10          	sub    $0x10,%rsp
   10000136b:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
   10000136f:	bf 20 00 00 00       	mov    $0x20,%edi
   100001374:	e8 09 07 00 00       	callq  100001a82 <_SDL_Init$stub>
   100001379:	85 c0                	test   %eax,%eax
   10000137b:	79 1f                	jns    10000139c <_initSDL+0x39>
   10000137d:	e8 f4 06 00 00       	callq  100001a76 <_SDL_GetError$stub>
   100001382:	48 89 c6             	mov    %rax,%rsi
   100001385:	48 8d 3d dc 07 00 00 	lea    0x7dc(%rip),%rdi        # 100001b68 <___func__.3305+0xc>
   10000138c:	b8 00 00 00 00       	mov    $0x0,%eax
   100001391:	e8 16 07 00 00       	callq  100001aac <_printf$stub>
   100001396:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
   10000139a:	eb 73                	jmp    10000140f <_initSDL+0xac>
   10000139c:	ba 58 02 00 00       	mov    $0x258,%edx
   1000013a1:	b8 20 03 00 00       	mov    $0x320,%eax
   1000013a6:	41 b9 04 00 00 00    	mov    $0x4,%r9d
   1000013ac:	41 89 d0             	mov    %edx,%r8d
   1000013af:	89 c1                	mov    %eax,%ecx
   1000013b1:	ba 00 00 ff 1f       	mov    $0x1fff0000,%edx
   1000013b6:	be 00 00 ff 1f       	mov    $0x1fff0000,%esi
   1000013bb:	48 8d 3d dc 07 00 00 	lea    0x7dc(%rip),%rdi        # 100001b9e <___func__.3305+0x42>
   1000013c2:	e8 9d 06 00 00       	callq  100001a64 <_SDL_CreateWindow$stub>
   1000013c7:	48 89 05 b2 0c 00 00 	mov    %rax,0xcb2(%rip)        # 100002080 <_window>
   1000013ce:	48 8b 05 ab 0c 00 00 	mov    0xcab(%rip),%rax        # 100002080 <_window>
   1000013d5:	48 85 c0             	test   %rax,%rax
   1000013d8:	75 1f                	jne    1000013f9 <_initSDL+0x96>
   1000013da:	e8 97 06 00 00       	callq  100001a76 <_SDL_GetError$stub>
   1000013df:	48 89 c6             	mov    %rax,%rsi
   1000013e2:	48 8d 3d bf 07 00 00 	lea    0x7bf(%rip),%rdi        # 100001ba8 <___func__.3305+0x4c>
   1000013e9:	b8 00 00 00 00       	mov    $0x0,%eax
   1000013ee:	e8 b9 06 00 00       	callq  100001aac <_printf$stub>
   1000013f3:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
   1000013f7:	eb 16                	jmp    10000140f <_initSDL+0xac>
   1000013f9:	48 8b 05 80 0c 00 00 	mov    0xc80(%rip),%rax        # 100002080 <_window>
   100001400:	48 89 c7             	mov    %rax,%rdi
   100001403:	e8 74 06 00 00       	callq  100001a7c <_SDL_GetWindowSurface$stub>
   100001408:	48 89 05 79 0c 00 00 	mov    %rax,0xc79(%rip)        # 100002088 <_surface>
   10000140f:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
   100001413:	c9                   	leaveq 
   100001414:	c3                   	retq   

0000000100001415 <_close>:
   100001415:	55                   	push   %rbp
   100001416:	48 89 e5             	mov    %rsp,%rbp
   100001419:	48 8b 05 68 0c 00 00 	mov    0xc68(%rip),%rax        # 100002088 <_surface>
   100001420:	48 89 c7             	mov    %rax,%rdi
   100001423:	e8 48 06 00 00       	callq  100001a70 <_SDL_FreeSurface$stub>
   100001428:	48 c7 05 55 0c 00 00 	movq   $0x0,0xc55(%rip)        # 100002088 <_surface>
   10000142f:	00 00 00 00 
   100001433:	48 8b 05 46 0c 00 00 	mov    0xc46(%rip),%rax        # 100002080 <_window>
   10000143a:	48 89 c7             	mov    %rax,%rdi
   10000143d:	e8 28 06 00 00       	callq  100001a6a <_SDL_DestroyWindow$stub>
   100001442:	48 c7 05 33 0c 00 00 	movq   $0x0,0xc33(%rip)        # 100002080 <_window>
   100001449:	00 00 00 00 
   10000144d:	e8 36 06 00 00       	callq  100001a88 <_SDL_Quit$stub>
   100001452:	5d                   	pop    %rbp
   100001453:	c3                   	retq   

0000000100001454 <_main>:
   100001454:	55                   	push   %rbp
   100001455:	48 89 e5             	mov    %rsp,%rbp
   100001458:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
   10000145c:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   100001460:	b9 0a 00 00 00       	mov    $0xa,%ecx
   100001465:	ba 00 00 00 00       	mov    $0x0,%edx
   10000146a:	be 04 00 00 00       	mov    $0x4,%esi
   10000146f:	48 89 c7             	mov    %rax,%rdi
   100001472:	e8 1d 02 00 00       	callq  100001694 <_initialize>
   100001477:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
   10000147e:	eb 1c                	jmp    10000149c <_main+0x48>
   100001480:	48 8d 55 cc          	lea    -0x34(%rbp),%rdx
   100001484:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   100001488:	48 89 d6             	mov    %rdx,%rsi
   10000148b:	48 89 c7             	mov    %rax,%rdi
   10000148e:	e8 ed 04 00 00       	callq  100001980 <_push>
   100001493:	8b 45 cc             	mov    -0x34(%rbp),%eax
   100001496:	83 c0 01             	add    $0x1,%eax
   100001499:	89 45 cc             	mov    %eax,-0x34(%rbp)
   10000149c:	8b 45 cc             	mov    -0x34(%rbp),%eax
   10000149f:	83 f8 1d             	cmp    $0x1d,%eax
   1000014a2:	7e dc                	jle    100001480 <_main+0x2c>
   1000014a4:	c7 45 c8 bc 64 3a 42 	movl   $0x423a64bc,-0x38(%rbp)
   1000014ab:	c7 45 c4 a5 fc 96 bf 	movl   $0xbf96fca5,-0x3c(%rbp)
   1000014b2:	48 8d 55 c8          	lea    -0x38(%rbp),%rdx
   1000014b6:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   1000014ba:	be 16 00 00 00       	mov    $0x16,%esi
   1000014bf:	48 89 c7             	mov    %rax,%rdi
   1000014c2:	e8 3e 03 00 00       	callq  100001805 <_insertAt>
   1000014c7:	48 8d 55 c4          	lea    -0x3c(%rbp),%rdx
   1000014cb:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   1000014cf:	be 16 00 00 00       	mov    $0x16,%esi
   1000014d4:	48 89 c7             	mov    %rax,%rdi
   1000014d7:	e8 29 03 00 00       	callq  100001805 <_insertAt>
   1000014dc:	8b 75 d4             	mov    -0x2c(%rbp),%esi
   1000014df:	8b 4d d0             	mov    -0x30(%rbp),%ecx
   1000014e2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   1000014e6:	89 c2                	mov    %eax,%edx
   1000014e8:	8b 45 d8             	mov    -0x28(%rbp),%eax
   1000014eb:	41 89 f0             	mov    %esi,%r8d
   1000014ee:	89 c6                	mov    %eax,%esi
   1000014f0:	48 8d 3d e1 06 00 00 	lea    0x6e1(%rip),%rdi        # 100001bd8 <___func__.3305+0x7c>
   1000014f7:	b8 00 00 00 00       	mov    $0x0,%eax
   1000014fc:	e8 ab 05 00 00       	callq  100001aac <_printf$stub>
   100001501:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
   100001508:	eb 39                	jmp    100001543 <_main+0xef>
   10000150a:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%rbp)
   100001511:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
   100001515:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   100001518:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   10000151c:	89 ce                	mov    %ecx,%esi
   10000151e:	48 89 c7             	mov    %rax,%rdi
   100001521:	e8 da 03 00 00       	callq  100001900 <_getAt>
   100001526:	8b 55 c0             	mov    -0x40(%rbp),%edx
   100001529:	8b 45 fc             	mov    -0x4(%rbp),%eax
   10000152c:	89 c6                	mov    %eax,%esi
   10000152e:	48 8d 3d f7 06 00 00 	lea    0x6f7(%rip),%rdi        # 100001c2c <___func__.3305+0xd0>
   100001535:	b8 00 00 00 00       	mov    $0x0,%eax
   10000153a:	e8 6d 05 00 00       	callq  100001aac <_printf$stub>
   10000153f:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   100001543:	83 7d fc 1f          	cmpl   $0x1f,-0x4(%rbp)
   100001547:	7e c1                	jle    10000150a <_main+0xb6>
   100001549:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   10000154d:	be 00 00 00 00       	mov    $0x0,%esi
   100001552:	48 89 c7             	mov    %rax,%rdi
   100001555:	e8 a7 04 00 00       	callq  100001a01 <_deleteList>
   10000155a:	b8 00 00 00 00       	mov    $0x0,%eax
   10000155f:	c9                   	leaveq 
   100001560:	c3                   	retq   

0000000100001561 <_hasSpaceLeft>:
   100001561:	55                   	push   %rbp
   100001562:	48 89 e5             	mov    %rsp,%rbp
   100001565:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   100001569:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   10000156d:	8b 50 04             	mov    0x4(%rax),%edx
   100001570:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001574:	8b 48 08             	mov    0x8(%rax),%ecx
   100001577:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   10000157b:	8b 00                	mov    (%rax),%eax
   10000157d:	0f af c1             	imul   %ecx,%eax
   100001580:	29 c2                	sub    %eax,%edx
   100001582:	89 d0                	mov    %edx,%eax
   100001584:	85 c0                	test   %eax,%eax
   100001586:	7e 07                	jle    10000158f <_hasSpaceLeft+0x2e>
   100001588:	b8 01 00 00 00       	mov    $0x1,%eax
   10000158d:	eb 05                	jmp    100001594 <_hasSpaceLeft+0x33>
   10000158f:	b8 00 00 00 00       	mov    $0x0,%eax
   100001594:	5d                   	pop    %rbp
   100001595:	c3                   	retq   

0000000100001596 <_resizeList>:
   100001596:	55                   	push   %rbp
   100001597:	48 89 e5             	mov    %rsp,%rbp
   10000159a:	48 83 ec 20          	sub    $0x20,%rsp
   10000159e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   1000015a2:	89 75 e4             	mov    %esi,-0x1c(%rbp)
   1000015a5:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
   1000015a9:	79 05                	jns    1000015b0 <_resizeList+0x1a>
   1000015ab:	e9 86 00 00 00       	jmpq   100001636 <_resizeList+0xa0>
   1000015b0:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
   1000015b4:	7e 10                	jle    1000015c6 <_resizeList+0x30>
   1000015b6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000015ba:	8b 40 04             	mov    0x4(%rax),%eax
   1000015bd:	0f af 45 e4          	imul   -0x1c(%rbp),%eax
   1000015c1:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1000015c4:	eb 13                	jmp    1000015d9 <_resizeList+0x43>
   1000015c6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000015ca:	8b 50 08             	mov    0x8(%rax),%edx
   1000015cd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000015d1:	8b 00                	mov    (%rax),%eax
   1000015d3:	0f af c2             	imul   %edx,%eax
   1000015d6:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1000015d9:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1000015dc:	48 63 d0             	movslq %eax,%rdx
   1000015df:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000015e3:	48 8b 40 10          	mov    0x10(%rax),%rax
   1000015e7:	48 89 d6             	mov    %rdx,%rsi
   1000015ea:	48 89 c7             	mov    %rax,%rdi
   1000015ed:	e8 c0 04 00 00       	callq  100001ab2 <_realloc$stub>
   1000015f2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1000015f6:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   1000015fb:	75 23                	jne    100001620 <_resizeList+0x8a>
   1000015fd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001601:	8b 50 04             	mov    0x4(%rax),%edx
   100001604:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001608:	8b 00                	mov    (%rax),%eax
   10000160a:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
   10000160d:	89 c6                	mov    %eax,%esi
   10000160f:	48 8d 3d 2a 06 00 00 	lea    0x62a(%rip),%rdi        # 100001c40 <___func__.3305+0xe4>
   100001616:	b8 00 00 00 00       	mov    $0x0,%eax
   10000161b:	e8 8c 04 00 00       	callq  100001aac <_printf$stub>
   100001620:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001624:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   100001628:	48 89 50 10          	mov    %rdx,0x10(%rax)
   10000162c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001630:	8b 55 fc             	mov    -0x4(%rbp),%edx
   100001633:	89 50 04             	mov    %edx,0x4(%rax)
   100001636:	c9                   	leaveq 
   100001637:	c3                   	retq   

0000000100001638 <_compactList>:
   100001638:	55                   	push   %rbp
   100001639:	48 89 e5             	mov    %rsp,%rbp
   10000163c:	48 83 ec 10          	sub    $0x10,%rsp
   100001640:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   100001644:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001648:	be 00 00 00 00       	mov    $0x0,%esi
   10000164d:	48 89 c7             	mov    %rax,%rdi
   100001650:	e8 41 ff ff ff       	callq  100001596 <_resizeList>
   100001655:	c9                   	leaveq 
   100001656:	c3                   	retq   

0000000100001657 <_indexInBound>:
   100001657:	55                   	push   %rbp
   100001658:	48 89 e5             	mov    %rsp,%rbp
   10000165b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   10000165f:	89 75 f4             	mov    %esi,-0xc(%rbp)
   100001662:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001666:	8b 40 08             	mov    0x8(%rax),%eax
   100001669:	85 c0                	test   %eax,%eax
   10000166b:	7e 20                	jle    10000168d <_indexInBound+0x36>
   10000166d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001671:	8b 40 08             	mov    0x8(%rax),%eax
   100001674:	3b 45 f4             	cmp    -0xc(%rbp),%eax
   100001677:	7e 14                	jle    10000168d <_indexInBound+0x36>
   100001679:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
   10000167d:	78 0e                	js     10000168d <_indexInBound+0x36>
   10000167f:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   100001684:	74 07                	je     10000168d <_indexInBound+0x36>
   100001686:	b8 01 00 00 00       	mov    $0x1,%eax
   10000168b:	eb 05                	jmp    100001692 <_indexInBound+0x3b>
   10000168d:	b8 00 00 00 00       	mov    $0x0,%eax
   100001692:	5d                   	pop    %rbp
   100001693:	c3                   	retq   

0000000100001694 <_initialize>:
   100001694:	55                   	push   %rbp
   100001695:	48 89 e5             	mov    %rsp,%rbp
   100001698:	48 83 ec 20          	sub    $0x20,%rsp
   10000169c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   1000016a0:	89 75 f4             	mov    %esi,-0xc(%rbp)
   1000016a3:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
   1000016a7:	89 4d f0             	mov    %ecx,-0x10(%rbp)
   1000016aa:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
   1000016ae:	0f 9e c0             	setle  %al
   1000016b1:	0f b6 c0             	movzbl %al,%eax
   1000016b4:	48 85 c0             	test   %rax,%rax
   1000016b7:	75 0f                	jne    1000016c8 <_initialize+0x34>
   1000016b9:	83 7d f0 00          	cmpl   $0x0,-0x10(%rbp)
   1000016bd:	0f 9e c0             	setle  %al
   1000016c0:	0f b6 c0             	movzbl %al,%eax
   1000016c3:	48 85 c0             	test   %rax,%rax
   1000016c6:	74 1f                	je     1000016e7 <_initialize+0x53>
   1000016c8:	48 8d 0d c1 05 00 00 	lea    0x5c1(%rip),%rcx        # 100001c90 <___func__.3305+0x134>
   1000016cf:	ba 2d 00 00 00       	mov    $0x2d,%edx
   1000016d4:	48 8d 35 d7 05 00 00 	lea    0x5d7(%rip),%rsi        # 100001cb2 <___func__.3305+0x156>
   1000016db:	48 8d 3d 7a 04 00 00 	lea    0x47a(%rip),%rdi        # 100001b5c <___func__.3305>
   1000016e2:	e8 a7 03 00 00       	callq  100001a8e <___assert_rtn$stub>
   1000016e7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000016eb:	8b 55 f4             	mov    -0xc(%rbp),%edx
   1000016ee:	89 10                	mov    %edx,(%rax)
   1000016f0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000016f4:	8b 55 f0             	mov    -0x10(%rbp),%edx
   1000016f7:	89 50 04             	mov    %edx,0x4(%rax)
   1000016fa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000016fe:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
   100001705:	8b 45 f4             	mov    -0xc(%rbp),%eax
   100001708:	0f af 45 f0          	imul   -0x10(%rbp),%eax
   10000170c:	48 98                	cltq   
   10000170e:	48 89 c7             	mov    %rax,%rdi
   100001711:	e8 90 03 00 00       	callq  100001aa6 <_malloc$stub>
   100001716:	48 89 c2             	mov    %rax,%rdx
   100001719:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   10000171d:	48 89 50 10          	mov    %rdx,0x10(%rax)
   100001721:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001725:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
   100001729:	48 89 50 18          	mov    %rdx,0x18(%rax)
   10000172d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001731:	48 8b 40 10          	mov    0x10(%rax),%rax
   100001735:	48 85 c0             	test   %rax,%rax
   100001738:	0f 94 c0             	sete   %al
   10000173b:	0f b6 c0             	movzbl %al,%eax
   10000173e:	48 85 c0             	test   %rax,%rax
   100001741:	74 1f                	je     100001762 <_initialize+0xce>
   100001743:	48 8d 0d 7a 05 00 00 	lea    0x57a(%rip),%rcx        # 100001cc4 <___func__.3305+0x168>
   10000174a:	ba 33 00 00 00       	mov    $0x33,%edx
   10000174f:	48 8d 35 5c 05 00 00 	lea    0x55c(%rip),%rsi        # 100001cb2 <___func__.3305+0x156>
   100001756:	48 8d 3d ff 03 00 00 	lea    0x3ff(%rip),%rdi        # 100001b5c <___func__.3305>
   10000175d:	e8 2c 03 00 00       	callq  100001a8e <___assert_rtn$stub>
   100001762:	c9                   	leaveq 
   100001763:	c3                   	retq   

0000000100001764 <_removeAt>:
   100001764:	55                   	push   %rbp
   100001765:	48 89 e5             	mov    %rsp,%rbp
   100001768:	48 83 ec 30          	sub    $0x30,%rsp
   10000176c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   100001770:	89 75 d4             	mov    %esi,-0x2c(%rbp)
   100001773:	8b 55 d4             	mov    -0x2c(%rbp),%edx
   100001776:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   10000177a:	89 d6                	mov    %edx,%esi
   10000177c:	48 89 c7             	mov    %rax,%rdi
   10000177f:	e8 d3 fe ff ff       	callq  100001657 <_indexInBound>
   100001784:	83 f0 01             	xor    $0x1,%eax
   100001787:	84 c0                	test   %al,%al
   100001789:	74 02                	je     10000178d <_removeAt+0x29>
   10000178b:	eb 76                	jmp    100001803 <_removeAt+0x9f>
   10000178d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001791:	48 8b 50 10          	mov    0x10(%rax),%rdx
   100001795:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001799:	8b 00                	mov    (%rax),%eax
   10000179b:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
   10000179f:	48 98                	cltq   
   1000017a1:	48 01 d0             	add    %rdx,%rax
   1000017a4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1000017a8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1000017ac:	8b 00                	mov    (%rax),%eax
   1000017ae:	48 63 d0             	movslq %eax,%rdx
   1000017b1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000017b5:	48 01 d0             	add    %rdx,%rax
   1000017b8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1000017bc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1000017c0:	8b 40 08             	mov    0x8(%rax),%eax
   1000017c3:	2b 45 d4             	sub    -0x2c(%rbp),%eax
   1000017c6:	89 45 ec             	mov    %eax,-0x14(%rbp)
   1000017c9:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
   1000017d0:	8b 45 ec             	mov    -0x14(%rbp),%eax
   1000017d3:	48 63 d0             	movslq %eax,%rdx
   1000017d6:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
   1000017da:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000017de:	48 89 c7             	mov    %rax,%rdi
   1000017e1:	e8 b4 02 00 00       	callq  100001a9a <___memmove_chk$stub>
   1000017e6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1000017ea:	8b 40 08             	mov    0x8(%rax),%eax
   1000017ed:	8d 50 ff             	lea    -0x1(%rax),%edx
   1000017f0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1000017f4:	89 50 08             	mov    %edx,0x8(%rax)
   1000017f7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1000017fb:	48 89 c7             	mov    %rax,%rdi
   1000017fe:	e8 35 fe ff ff       	callq  100001638 <_compactList>
   100001803:	c9                   	leaveq 
   100001804:	c3                   	retq   

0000000100001805 <_insertAt>:
   100001805:	55                   	push   %rbp
   100001806:	48 89 e5             	mov    %rsp,%rbp
   100001809:	48 83 ec 40          	sub    $0x40,%rsp
   10000180d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   100001811:	89 75 d4             	mov    %esi,-0x2c(%rbp)
   100001814:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
   100001818:	8b 55 d4             	mov    -0x2c(%rbp),%edx
   10000181b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   10000181f:	89 d6                	mov    %edx,%esi
   100001821:	48 89 c7             	mov    %rax,%rdi
   100001824:	e8 2e fe ff ff       	callq  100001657 <_indexInBound>
   100001829:	83 f0 01             	xor    $0x1,%eax
   10000182c:	84 c0                	test   %al,%al
   10000182e:	74 1b                	je     10000184b <_insertAt+0x46>
   100001830:	8b 45 d4             	mov    -0x2c(%rbp),%eax
   100001833:	89 c6                	mov    %eax,%esi
   100001835:	48 8d 3d 9f 04 00 00 	lea    0x49f(%rip),%rdi        # 100001cdb <___func__.3305+0x17f>
   10000183c:	b8 00 00 00 00       	mov    $0x0,%eax
   100001841:	e8 66 02 00 00       	callq  100001aac <_printf$stub>
   100001846:	e9 b3 00 00 00       	jmpq   1000018fe <_insertAt+0xf9>
   10000184b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   10000184f:	48 89 c7             	mov    %rax,%rdi
   100001852:	e8 0a fd ff ff       	callq  100001561 <_hasSpaceLeft>
   100001857:	83 f0 01             	xor    $0x1,%eax
   10000185a:	84 c0                	test   %al,%al
   10000185c:	74 11                	je     10000186f <_insertAt+0x6a>
   10000185e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001862:	be 02 00 00 00       	mov    $0x2,%esi
   100001867:	48 89 c7             	mov    %rax,%rdi
   10000186a:	e8 27 fd ff ff       	callq  100001596 <_resizeList>
   10000186f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001873:	48 8b 50 10          	mov    0x10(%rax),%rdx
   100001877:	8b 45 d4             	mov    -0x2c(%rbp),%eax
   10000187a:	8d 48 01             	lea    0x1(%rax),%ecx
   10000187d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001881:	8b 00                	mov    (%rax),%eax
   100001883:	0f af c1             	imul   %ecx,%eax
   100001886:	48 98                	cltq   
   100001888:	48 01 d0             	add    %rdx,%rax
   10000188b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   10000188f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001893:	8b 00                	mov    (%rax),%eax
   100001895:	48 98                	cltq   
   100001897:	48 f7 d8             	neg    %rax
   10000189a:	48 89 c2             	mov    %rax,%rdx
   10000189d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000018a1:	48 01 d0             	add    %rdx,%rax
   1000018a4:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1000018a8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1000018ac:	8b 10                	mov    (%rax),%edx
   1000018ae:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1000018b2:	8b 40 08             	mov    0x8(%rax),%eax
   1000018b5:	2b 45 d4             	sub    -0x2c(%rbp),%eax
   1000018b8:	83 c0 01             	add    $0x1,%eax
   1000018bb:	0f af c2             	imul   %edx,%eax
   1000018be:	89 45 ec             	mov    %eax,-0x14(%rbp)
   1000018c1:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
   1000018c8:	8b 45 ec             	mov    -0x14(%rbp),%eax
   1000018cb:	48 63 d0             	movslq %eax,%rdx
   1000018ce:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
   1000018d2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000018d6:	48 89 c7             	mov    %rax,%rdi
   1000018d9:	e8 bc 01 00 00       	callq  100001a9a <___memmove_chk$stub>
   1000018de:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
   1000018e5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1000018e9:	8b 00                	mov    (%rax),%eax
   1000018eb:	48 63 d0             	movslq %eax,%rdx
   1000018ee:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
   1000018f2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1000018f6:	48 89 c7             	mov    %rax,%rdi
   1000018f9:	e8 96 01 00 00       	callq  100001a94 <___memcpy_chk$stub>
   1000018fe:	c9                   	leaveq 
   1000018ff:	c3                   	retq   

0000000100001900 <_getAt>:
   100001900:	55                   	push   %rbp
   100001901:	48 89 e5             	mov    %rsp,%rbp
   100001904:	48 83 ec 30          	sub    $0x30,%rsp
   100001908:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   10000190c:	89 75 e4             	mov    %esi,-0x1c(%rbp)
   10000190f:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
   100001913:	8b 55 e4             	mov    -0x1c(%rbp),%edx
   100001916:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   10000191a:	89 d6                	mov    %edx,%esi
   10000191c:	48 89 c7             	mov    %rax,%rdi
   10000191f:	e8 33 fd ff ff       	callq  100001657 <_indexInBound>
   100001924:	83 f0 01             	xor    $0x1,%eax
   100001927:	84 c0                	test   %al,%al
   100001929:	74 18                	je     100001943 <_getAt+0x43>
   10000192b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   10000192e:	89 c6                	mov    %eax,%esi
   100001930:	48 8d 3d a4 03 00 00 	lea    0x3a4(%rip),%rdi        # 100001cdb <___func__.3305+0x17f>
   100001937:	b8 00 00 00 00       	mov    $0x0,%eax
   10000193c:	e8 6b 01 00 00       	callq  100001aac <_printf$stub>
   100001941:	eb 3b                	jmp    10000197e <_getAt+0x7e>
   100001943:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001947:	48 8b 50 10          	mov    0x10(%rax),%rdx
   10000194b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   10000194f:	8b 00                	mov    (%rax),%eax
   100001951:	0f af 45 e4          	imul   -0x1c(%rbp),%eax
   100001955:	48 98                	cltq   
   100001957:	48 01 d0             	add    %rdx,%rax
   10000195a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   10000195e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
   100001965:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001969:	8b 00                	mov    (%rax),%eax
   10000196b:	48 63 d0             	movslq %eax,%rdx
   10000196e:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
   100001972:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001976:	48 89 c7             	mov    %rax,%rdi
   100001979:	e8 16 01 00 00       	callq  100001a94 <___memcpy_chk$stub>
   10000197e:	c9                   	leaveq 
   10000197f:	c3                   	retq   

0000000100001980 <_push>:
   100001980:	55                   	push   %rbp
   100001981:	48 89 e5             	mov    %rsp,%rbp
   100001984:	48 83 ec 10          	sub    $0x10,%rsp
   100001988:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   10000198c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
   100001990:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001994:	48 89 c7             	mov    %rax,%rdi
   100001997:	e8 c5 fb ff ff       	callq  100001561 <_hasSpaceLeft>
   10000199c:	83 f0 01             	xor    $0x1,%eax
   10000199f:	84 c0                	test   %al,%al
   1000019a1:	74 11                	je     1000019b4 <_push+0x34>
   1000019a3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000019a7:	be 02 00 00 00       	mov    $0x2,%esi
   1000019ac:	48 89 c7             	mov    %rax,%rdi
   1000019af:	e8 e2 fb ff ff       	callq  100001596 <_resizeList>
   1000019b4:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
   1000019bb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000019bf:	8b 00                	mov    (%rax),%eax
   1000019c1:	48 63 d0             	movslq %eax,%rdx
   1000019c4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000019c8:	48 8b 70 10          	mov    0x10(%rax),%rsi
   1000019cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000019d0:	8b 38                	mov    (%rax),%edi
   1000019d2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000019d6:	8b 40 08             	mov    0x8(%rax),%eax
   1000019d9:	0f af c7             	imul   %edi,%eax
   1000019dc:	48 98                	cltq   
   1000019de:	48 8d 3c 06          	lea    (%rsi,%rax,1),%rdi
   1000019e2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1000019e6:	48 89 c6             	mov    %rax,%rsi
   1000019e9:	e8 a6 00 00 00       	callq  100001a94 <___memcpy_chk$stub>
   1000019ee:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000019f2:	8b 40 08             	mov    0x8(%rax),%eax
   1000019f5:	8d 50 01             	lea    0x1(%rax),%edx
   1000019f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000019fc:	89 50 08             	mov    %edx,0x8(%rax)
   1000019ff:	c9                   	leaveq 
   100001a00:	c3                   	retq   

0000000100001a01 <_deleteList>:
   100001a01:	55                   	push   %rbp
   100001a02:	48 89 e5             	mov    %rsp,%rbp
   100001a05:	48 83 ec 20          	sub    $0x20,%rsp
   100001a09:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   100001a0d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
   100001a11:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
   100001a16:	74 39                	je     100001a51 <_deleteList+0x50>
   100001a18:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   100001a1f:	eb 24                	jmp    100001a45 <_deleteList+0x44>
   100001a21:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001a25:	48 8b 50 10          	mov    0x10(%rax),%rdx
   100001a29:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001a2d:	8b 00                	mov    (%rax),%eax
   100001a2f:	0f af 45 fc          	imul   -0x4(%rbp),%eax
   100001a33:	48 98                	cltq   
   100001a35:	48 01 c2             	add    %rax,%rdx
   100001a38:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   100001a3c:	48 89 d7             	mov    %rdx,%rdi
   100001a3f:	ff d0                	callq  *%rax
   100001a41:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   100001a45:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001a49:	8b 40 08             	mov    0x8(%rax),%eax
   100001a4c:	3b 45 fc             	cmp    -0x4(%rbp),%eax
   100001a4f:	7d d0                	jge    100001a21 <_deleteList+0x20>
   100001a51:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001a55:	48 8b 40 10          	mov    0x10(%rax),%rax
   100001a59:	48 89 c7             	mov    %rax,%rdi
   100001a5c:	e8 3f 00 00 00       	callq  100001aa0 <_free$stub>
   100001a61:	90                   	nop
   100001a62:	c9                   	leaveq 
   100001a63:	c3                   	retq   

Déassemblage de la section __TEXT.__stubs:

0000000100001a64 <_SDL_CreateWindow$stub>:
   100001a64:	ff 25 a6 05 00 00    	jmpq   *0x5a6(%rip)        # 100002010 <_SDL_CreateWindow$stub>

0000000100001a6a <_SDL_DestroyWindow$stub>:
   100001a6a:	ff 25 a8 05 00 00    	jmpq   *0x5a8(%rip)        # 100002018 <_SDL_DestroyWindow$stub>

0000000100001a70 <_SDL_FreeSurface$stub>:
   100001a70:	ff 25 aa 05 00 00    	jmpq   *0x5aa(%rip)        # 100002020 <_SDL_FreeSurface$stub>

0000000100001a76 <_SDL_GetError$stub>:
   100001a76:	ff 25 ac 05 00 00    	jmpq   *0x5ac(%rip)        # 100002028 <_SDL_GetError$stub>

0000000100001a7c <_SDL_GetWindowSurface$stub>:
   100001a7c:	ff 25 ae 05 00 00    	jmpq   *0x5ae(%rip)        # 100002030 <_SDL_GetWindowSurface$stub>

0000000100001a82 <_SDL_Init$stub>:
   100001a82:	ff 25 b0 05 00 00    	jmpq   *0x5b0(%rip)        # 100002038 <_SDL_Init$stub>

0000000100001a88 <_SDL_Quit$stub>:
   100001a88:	ff 25 b2 05 00 00    	jmpq   *0x5b2(%rip)        # 100002040 <_SDL_Quit$stub>

0000000100001a8e <___assert_rtn$stub>:
   100001a8e:	ff 25 b4 05 00 00    	jmpq   *0x5b4(%rip)        # 100002048 <___assert_rtn$stub>

0000000100001a94 <___memcpy_chk$stub>:
   100001a94:	ff 25 b6 05 00 00    	jmpq   *0x5b6(%rip)        # 100002050 <___memcpy_chk$stub>

0000000100001a9a <___memmove_chk$stub>:
   100001a9a:	ff 25 b8 05 00 00    	jmpq   *0x5b8(%rip)        # 100002058 <___memmove_chk$stub>

0000000100001aa0 <_free$stub>:
   100001aa0:	ff 25 ba 05 00 00    	jmpq   *0x5ba(%rip)        # 100002060 <_free$stub>

0000000100001aa6 <_malloc$stub>:
   100001aa6:	ff 25 bc 05 00 00    	jmpq   *0x5bc(%rip)        # 100002068 <_malloc$stub>

0000000100001aac <_printf$stub>:
   100001aac:	ff 25 be 05 00 00    	jmpq   *0x5be(%rip)        # 100002070 <_printf$stub>

0000000100001ab2 <_realloc$stub>:
   100001ab2:	ff 25 c0 05 00 00    	jmpq   *0x5c0(%rip)        # 100002078 <_realloc$stub>

Déassemblage de la section __TEXT.__stub_helper:

0000000100001ab8 <__TEXT.__stub_helper>:
   100001ab8:	4c 8d 1d 49 05 00 00 	lea    0x549(%rip),%r11        # 100002008 <>
   100001abf:	41 53                	push   %r11
   100001ac1:	ff 25 39 05 00 00    	jmpq   *0x539(%rip)        # 100002000 <dyld_stub_binder$stub>
   100001ac7:	90                   	nop
   100001ac8:	68 00 00 00 00       	pushq  $0x0
   100001acd:	e9 e6 ff ff ff       	jmpq   100001ab8 <_realloc$stub+0x6>
   100001ad2:	68 18 00 00 00       	pushq  $0x18
   100001ad7:	e9 dc ff ff ff       	jmpq   100001ab8 <_realloc$stub+0x6>
   100001adc:	68 31 00 00 00       	pushq  $0x31
   100001ae1:	e9 d2 ff ff ff       	jmpq   100001ab8 <_realloc$stub+0x6>
   100001ae6:	68 48 00 00 00       	pushq  $0x48
   100001aeb:	e9 c8 ff ff ff       	jmpq   100001ab8 <_realloc$stub+0x6>
   100001af0:	68 5c 00 00 00       	pushq  $0x5c
   100001af5:	e9 be ff ff ff       	jmpq   100001ab8 <_realloc$stub+0x6>
   100001afa:	68 78 00 00 00       	pushq  $0x78
   100001aff:	e9 b4 ff ff ff       	jmpq   100001ab8 <_realloc$stub+0x6>
   100001b04:	68 88 00 00 00       	pushq  $0x88
   100001b09:	e9 aa ff ff ff       	jmpq   100001ab8 <_realloc$stub+0x6>
   100001b0e:	68 98 00 00 00       	pushq  $0x98
   100001b13:	e9 a0 ff ff ff       	jmpq   100001ab8 <_realloc$stub+0x6>
   100001b18:	68 ac 00 00 00       	pushq  $0xac
   100001b1d:	e9 96 ff ff ff       	jmpq   100001ab8 <_realloc$stub+0x6>
   100001b22:	68 c0 00 00 00       	pushq  $0xc0
   100001b27:	e9 8c ff ff ff       	jmpq   100001ab8 <_realloc$stub+0x6>
   100001b2c:	68 d5 00 00 00       	pushq  $0xd5
   100001b31:	e9 82 ff ff ff       	jmpq   100001ab8 <_realloc$stub+0x6>
   100001b36:	68 e1 00 00 00       	pushq  $0xe1
   100001b3b:	e9 78 ff ff ff       	jmpq   100001ab8 <_realloc$stub+0x6>
   100001b40:	68 ef 00 00 00       	pushq  $0xef
   100001b45:	e9 6e ff ff ff       	jmpq   100001ab8 <_realloc$stub+0x6>
   100001b4a:	68 fd 00 00 00       	pushq  $0xfd
   100001b4f:	e9 64 ff ff ff       	jmpq   100001ab8 <_realloc$stub+0x6>
