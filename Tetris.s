
./Tetris:     format de fichier mach-o-x86-64


Déassemblage de la section .text:

0000000100000fe7 <_initSDL>:
   100000fe7:	55                   	push   %rbp
   100000fe8:	48 89 e5             	mov    %rsp,%rbp
   100000feb:	48 83 ec 10          	sub    $0x10,%rsp
   100000fef:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
   100000ff3:	bf 20 00 00 00       	mov    $0x20,%edi
   100000ff8:	e8 83 08 00 00       	callq  100001880 <_SDL_Init$stub>
   100000ffd:	85 c0                	test   %eax,%eax
   100000fff:	79 22                	jns    100001023 <_initSDL+0x3c>
   100001001:	e8 6e 08 00 00       	callq  100001874 <_SDL_GetError$stub>
   100001006:	48 89 c6             	mov    %rax,%rsi
   100001009:	48 8d 3d 90 09 00 00 	lea    0x990(%rip),%rdi        # 1000019a0 <___func__.3307+0xc>
   100001010:	b8 00 00 00 00       	mov    $0x0,%eax
   100001015:	e8 9c 08 00 00       	callq  1000018b6 <_printf$stub>
   10000101a:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
   10000101e:	e9 93 00 00 00       	jmpq   1000010b6 <_initSDL+0xcf>
   100001023:	ba 58 02 00 00       	mov    $0x258,%edx
   100001028:	b8 20 03 00 00       	mov    $0x320,%eax
   10000102d:	41 b9 04 00 00 00    	mov    $0x4,%r9d
   100001033:	41 89 d0             	mov    %edx,%r8d
   100001036:	89 c1                	mov    %eax,%ecx
   100001038:	ba 00 00 ff 1f       	mov    $0x1fff0000,%edx
   10000103d:	be 00 00 ff 1f       	mov    $0x1fff0000,%esi
   100001042:	48 8d 3d 8d 09 00 00 	lea    0x98d(%rip),%rdi        # 1000019d6 <___func__.3307+0x42>
   100001049:	e8 14 08 00 00       	callq  100001862 <_SDL_CreateWindow$stub>
   10000104e:	48 89 05 4b 10 00 00 	mov    %rax,0x104b(%rip)        # 1000020a0 <_window>
   100001055:	48 8b 05 44 10 00 00 	mov    0x1044(%rip),%rax        # 1000020a0 <_window>
   10000105c:	48 85 c0             	test   %rax,%rax
   10000105f:	75 1f                	jne    100001080 <_initSDL+0x99>
   100001061:	e8 0e 08 00 00       	callq  100001874 <_SDL_GetError$stub>
   100001066:	48 89 c6             	mov    %rax,%rsi
   100001069:	48 8d 3d 70 09 00 00 	lea    0x970(%rip),%rdi        # 1000019e0 <___func__.3307+0x4c>
   100001070:	b8 00 00 00 00       	mov    $0x0,%eax
   100001075:	e8 3c 08 00 00       	callq  1000018b6 <_printf$stub>
   10000107a:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
   10000107e:	eb 36                	jmp    1000010b6 <_initSDL+0xcf>
   100001080:	48 8b 05 19 10 00 00 	mov    0x1019(%rip),%rax        # 1000020a0 <_window>
   100001087:	48 89 c7             	mov    %rax,%rdi
   10000108a:	e8 eb 07 00 00       	callq  10000187a <_SDL_GetWindowSurface$stub>
   10000108f:	48 89 05 12 10 00 00 	mov    %rax,0x1012(%rip)        # 1000020a8 <_surface>
   100001096:	48 8b 05 03 10 00 00 	mov    0x1003(%rip),%rax        # 1000020a0 <_window>
   10000109d:	ba 02 00 00 00       	mov    $0x2,%edx
   1000010a2:	be ff ff ff ff       	mov    $0xffffffff,%esi
   1000010a7:	48 89 c7             	mov    %rax,%rdi
   1000010aa:	e8 ad 07 00 00       	callq  10000185c <_SDL_CreateRenderer$stub>
   1000010af:	48 89 05 fa 0f 00 00 	mov    %rax,0xffa(%rip)        # 1000020b0 <_renderer>
   1000010b6:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
   1000010ba:	c9                   	leaveq 
   1000010bb:	c3                   	retq   

00000001000010bc <_close>:
   1000010bc:	55                   	push   %rbp
   1000010bd:	48 89 e5             	mov    %rsp,%rbp
   1000010c0:	48 8b 05 e1 0f 00 00 	mov    0xfe1(%rip),%rax        # 1000020a8 <_surface>
   1000010c7:	48 89 c7             	mov    %rax,%rdi
   1000010ca:	e8 9f 07 00 00       	callq  10000186e <_SDL_FreeSurface$stub>
   1000010cf:	48 c7 05 ce 0f 00 00 	movq   $0x0,0xfce(%rip)        # 1000020a8 <_surface>
   1000010d6:	00 00 00 00 
   1000010da:	48 8b 05 bf 0f 00 00 	mov    0xfbf(%rip),%rax        # 1000020a0 <_window>
   1000010e1:	48 89 c7             	mov    %rax,%rdi
   1000010e4:	e8 7f 07 00 00       	callq  100001868 <_SDL_DestroyWindow$stub>
   1000010e9:	48 c7 05 ac 0f 00 00 	movq   $0x0,0xfac(%rip)        # 1000020a0 <_window>
   1000010f0:	00 00 00 00 
   1000010f4:	e8 93 07 00 00       	callq  10000188c <_SDL_Quit$stub>
   1000010f9:	5d                   	pop    %rbp
   1000010fa:	c3                   	retq   

00000001000010fb <_main>:
   1000010fb:	55                   	push   %rbp
   1000010fc:	48 89 e5             	mov    %rsp,%rbp
   1000010ff:	b8 00 00 00 00       	mov    $0x0,%eax
   100001104:	e8 de fe ff ff       	callq  100000fe7 <_initSDL>
   100001109:	83 f0 01             	xor    $0x1,%eax
   10000110c:	84 c0                	test   %al,%al
   10000110e:	74 0e                	je     10000111e <_main+0x23>
   100001110:	48 8d 3d f5 08 00 00 	lea    0x8f5(%rip),%rdi        # 100001a0c <___func__.3307+0x78>
   100001117:	e8 a0 07 00 00       	callq  1000018bc <_puts$stub>
   10000111c:	eb 18                	jmp    100001136 <_main+0x3b>
   10000111e:	48 8d 35 83 0f 00 00 	lea    0xf83(%rip),%rsi        # 1000020a8 <_surface>
   100001125:	48 8d 3d 74 0f 00 00 	lea    0xf74(%rip),%rdi        # 1000020a0 <_window>
   10000112c:	b8 00 00 00 00       	mov    $0x0,%eax
   100001131:	e8 d7 06 00 00       	callq  10000180d <_runGameLoop>
   100001136:	b8 00 00 00 00       	mov    $0x0,%eax
   10000113b:	e8 7c ff ff ff       	callq  1000010bc <_close>
   100001140:	b8 00 00 00 00       	mov    $0x0,%eax
   100001145:	5d                   	pop    %rbp
   100001146:	c3                   	retq   

0000000100001147 <_hasSpaceLeft>:
   100001147:	55                   	push   %rbp
   100001148:	48 89 e5             	mov    %rsp,%rbp
   10000114b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   10000114f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001153:	8b 50 04             	mov    0x4(%rax),%edx
   100001156:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   10000115a:	8b 48 08             	mov    0x8(%rax),%ecx
   10000115d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001161:	8b 00                	mov    (%rax),%eax
   100001163:	0f af c1             	imul   %ecx,%eax
   100001166:	29 c2                	sub    %eax,%edx
   100001168:	89 d0                	mov    %edx,%eax
   10000116a:	85 c0                	test   %eax,%eax
   10000116c:	7e 07                	jle    100001175 <_hasSpaceLeft+0x2e>
   10000116e:	b8 01 00 00 00       	mov    $0x1,%eax
   100001173:	eb 05                	jmp    10000117a <_hasSpaceLeft+0x33>
   100001175:	b8 00 00 00 00       	mov    $0x0,%eax
   10000117a:	5d                   	pop    %rbp
   10000117b:	c3                   	retq   

000000010000117c <_resizeList>:
   10000117c:	55                   	push   %rbp
   10000117d:	48 89 e5             	mov    %rsp,%rbp
   100001180:	48 83 ec 20          	sub    $0x20,%rsp
   100001184:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   100001188:	89 75 e4             	mov    %esi,-0x1c(%rbp)
   10000118b:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
   10000118f:	79 05                	jns    100001196 <_resizeList+0x1a>
   100001191:	e9 86 00 00 00       	jmpq   10000121c <_resizeList+0xa0>
   100001196:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
   10000119a:	7e 10                	jle    1000011ac <_resizeList+0x30>
   10000119c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000011a0:	8b 40 04             	mov    0x4(%rax),%eax
   1000011a3:	0f af 45 e4          	imul   -0x1c(%rbp),%eax
   1000011a7:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1000011aa:	eb 13                	jmp    1000011bf <_resizeList+0x43>
   1000011ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000011b0:	8b 50 08             	mov    0x8(%rax),%edx
   1000011b3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000011b7:	8b 00                	mov    (%rax),%eax
   1000011b9:	0f af c2             	imul   %edx,%eax
   1000011bc:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1000011bf:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1000011c2:	48 63 d0             	movslq %eax,%rdx
   1000011c5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000011c9:	48 8b 40 10          	mov    0x10(%rax),%rax
   1000011cd:	48 89 d6             	mov    %rdx,%rsi
   1000011d0:	48 89 c7             	mov    %rax,%rdi
   1000011d3:	e8 ea 06 00 00       	callq  1000018c2 <_realloc$stub>
   1000011d8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1000011dc:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   1000011e1:	75 23                	jne    100001206 <_resizeList+0x8a>
   1000011e3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000011e7:	8b 50 04             	mov    0x4(%rax),%edx
   1000011ea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000011ee:	8b 00                	mov    (%rax),%eax
   1000011f0:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
   1000011f3:	89 c6                	mov    %eax,%esi
   1000011f5:	48 8d 3d 2c 08 00 00 	lea    0x82c(%rip),%rdi        # 100001a28 <___func__.3307+0x94>
   1000011fc:	b8 00 00 00 00       	mov    $0x0,%eax
   100001201:	e8 b0 06 00 00       	callq  1000018b6 <_printf$stub>
   100001206:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   10000120a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   10000120e:	48 89 50 10          	mov    %rdx,0x10(%rax)
   100001212:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001216:	8b 55 fc             	mov    -0x4(%rbp),%edx
   100001219:	89 50 04             	mov    %edx,0x4(%rax)
   10000121c:	c9                   	leaveq 
   10000121d:	c3                   	retq   

000000010000121e <_compactList>:
   10000121e:	55                   	push   %rbp
   10000121f:	48 89 e5             	mov    %rsp,%rbp
   100001222:	48 83 ec 10          	sub    $0x10,%rsp
   100001226:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   10000122a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   10000122e:	be 00 00 00 00       	mov    $0x0,%esi
   100001233:	48 89 c7             	mov    %rax,%rdi
   100001236:	e8 41 ff ff ff       	callq  10000117c <_resizeList>
   10000123b:	c9                   	leaveq 
   10000123c:	c3                   	retq   

000000010000123d <_indexInBound>:
   10000123d:	55                   	push   %rbp
   10000123e:	48 89 e5             	mov    %rsp,%rbp
   100001241:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   100001245:	89 75 f4             	mov    %esi,-0xc(%rbp)
   100001248:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   10000124c:	8b 40 08             	mov    0x8(%rax),%eax
   10000124f:	85 c0                	test   %eax,%eax
   100001251:	7e 20                	jle    100001273 <_indexInBound+0x36>
   100001253:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001257:	8b 40 08             	mov    0x8(%rax),%eax
   10000125a:	3b 45 f4             	cmp    -0xc(%rbp),%eax
   10000125d:	7e 14                	jle    100001273 <_indexInBound+0x36>
   10000125f:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
   100001263:	78 0e                	js     100001273 <_indexInBound+0x36>
   100001265:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   10000126a:	74 07                	je     100001273 <_indexInBound+0x36>
   10000126c:	b8 01 00 00 00       	mov    $0x1,%eax
   100001271:	eb 05                	jmp    100001278 <_indexInBound+0x3b>
   100001273:	b8 00 00 00 00       	mov    $0x0,%eax
   100001278:	5d                   	pop    %rbp
   100001279:	c3                   	retq   

000000010000127a <_initialize>:
   10000127a:	55                   	push   %rbp
   10000127b:	48 89 e5             	mov    %rsp,%rbp
   10000127e:	48 83 ec 20          	sub    $0x20,%rsp
   100001282:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   100001286:	89 75 f4             	mov    %esi,-0xc(%rbp)
   100001289:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
   10000128d:	89 4d f0             	mov    %ecx,-0x10(%rbp)
   100001290:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
   100001294:	0f 9e c0             	setle  %al
   100001297:	0f b6 c0             	movzbl %al,%eax
   10000129a:	48 85 c0             	test   %rax,%rax
   10000129d:	75 0f                	jne    1000012ae <_initialize+0x34>
   10000129f:	83 7d f0 00          	cmpl   $0x0,-0x10(%rbp)
   1000012a3:	0f 9e c0             	setle  %al
   1000012a6:	0f b6 c0             	movzbl %al,%eax
   1000012a9:	48 85 c0             	test   %rax,%rax
   1000012ac:	74 1f                	je     1000012cd <_initialize+0x53>
   1000012ae:	48 8d 0d c3 07 00 00 	lea    0x7c3(%rip),%rcx        # 100001a78 <___func__.3307+0xe4>
   1000012b5:	ba 2d 00 00 00       	mov    $0x2d,%edx
   1000012ba:	48 8d 35 d9 07 00 00 	lea    0x7d9(%rip),%rsi        # 100001a9a <___func__.3307+0x106>
   1000012c1:	48 8d 3d cc 06 00 00 	lea    0x6cc(%rip),%rdi        # 100001994 <___func__.3307>
   1000012c8:	e8 cb 05 00 00       	callq  100001898 <___assert_rtn$stub>
   1000012cd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000012d1:	8b 55 f4             	mov    -0xc(%rbp),%edx
   1000012d4:	89 10                	mov    %edx,(%rax)
   1000012d6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000012da:	8b 55 f0             	mov    -0x10(%rbp),%edx
   1000012dd:	89 50 04             	mov    %edx,0x4(%rax)
   1000012e0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000012e4:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
   1000012eb:	8b 45 f4             	mov    -0xc(%rbp),%eax
   1000012ee:	0f af 45 f0          	imul   -0x10(%rbp),%eax
   1000012f2:	48 98                	cltq   
   1000012f4:	48 89 c7             	mov    %rax,%rdi
   1000012f7:	e8 b4 05 00 00       	callq  1000018b0 <_malloc$stub>
   1000012fc:	48 89 c2             	mov    %rax,%rdx
   1000012ff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001303:	48 89 50 10          	mov    %rdx,0x10(%rax)
   100001307:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   10000130b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
   10000130f:	48 89 50 18          	mov    %rdx,0x18(%rax)
   100001313:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001317:	48 8b 40 10          	mov    0x10(%rax),%rax
   10000131b:	48 85 c0             	test   %rax,%rax
   10000131e:	0f 94 c0             	sete   %al
   100001321:	0f b6 c0             	movzbl %al,%eax
   100001324:	48 85 c0             	test   %rax,%rax
   100001327:	74 1f                	je     100001348 <_initialize+0xce>
   100001329:	48 8d 0d 7c 07 00 00 	lea    0x77c(%rip),%rcx        # 100001aac <___func__.3307+0x118>
   100001330:	ba 33 00 00 00       	mov    $0x33,%edx
   100001335:	48 8d 35 5e 07 00 00 	lea    0x75e(%rip),%rsi        # 100001a9a <___func__.3307+0x106>
   10000133c:	48 8d 3d 51 06 00 00 	lea    0x651(%rip),%rdi        # 100001994 <___func__.3307>
   100001343:	e8 50 05 00 00       	callq  100001898 <___assert_rtn$stub>
   100001348:	c9                   	leaveq 
   100001349:	c3                   	retq   

000000010000134a <_removeAt>:
   10000134a:	55                   	push   %rbp
   10000134b:	48 89 e5             	mov    %rsp,%rbp
   10000134e:	48 83 ec 30          	sub    $0x30,%rsp
   100001352:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   100001356:	89 75 d4             	mov    %esi,-0x2c(%rbp)
   100001359:	8b 55 d4             	mov    -0x2c(%rbp),%edx
   10000135c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001360:	89 d6                	mov    %edx,%esi
   100001362:	48 89 c7             	mov    %rax,%rdi
   100001365:	e8 d3 fe ff ff       	callq  10000123d <_indexInBound>
   10000136a:	83 f0 01             	xor    $0x1,%eax
   10000136d:	84 c0                	test   %al,%al
   10000136f:	74 02                	je     100001373 <_removeAt+0x29>
   100001371:	eb 76                	jmp    1000013e9 <_removeAt+0x9f>
   100001373:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001377:	48 8b 50 10          	mov    0x10(%rax),%rdx
   10000137b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   10000137f:	8b 00                	mov    (%rax),%eax
   100001381:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
   100001385:	48 98                	cltq   
   100001387:	48 01 d0             	add    %rdx,%rax
   10000138a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   10000138e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001392:	8b 00                	mov    (%rax),%eax
   100001394:	48 63 d0             	movslq %eax,%rdx
   100001397:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   10000139b:	48 01 d0             	add    %rdx,%rax
   10000139e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1000013a2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1000013a6:	8b 40 08             	mov    0x8(%rax),%eax
   1000013a9:	2b 45 d4             	sub    -0x2c(%rbp),%eax
   1000013ac:	89 45 ec             	mov    %eax,-0x14(%rbp)
   1000013af:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
   1000013b6:	8b 45 ec             	mov    -0x14(%rbp),%eax
   1000013b9:	48 63 d0             	movslq %eax,%rdx
   1000013bc:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
   1000013c0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000013c4:	48 89 c7             	mov    %rax,%rdi
   1000013c7:	e8 d8 04 00 00       	callq  1000018a4 <___memmove_chk$stub>
   1000013cc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1000013d0:	8b 40 08             	mov    0x8(%rax),%eax
   1000013d3:	8d 50 ff             	lea    -0x1(%rax),%edx
   1000013d6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1000013da:	89 50 08             	mov    %edx,0x8(%rax)
   1000013dd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1000013e1:	48 89 c7             	mov    %rax,%rdi
   1000013e4:	e8 35 fe ff ff       	callq  10000121e <_compactList>
   1000013e9:	c9                   	leaveq 
   1000013ea:	c3                   	retq   

00000001000013eb <_insertAt>:
   1000013eb:	55                   	push   %rbp
   1000013ec:	48 89 e5             	mov    %rsp,%rbp
   1000013ef:	48 83 ec 40          	sub    $0x40,%rsp
   1000013f3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   1000013f7:	89 75 d4             	mov    %esi,-0x2c(%rbp)
   1000013fa:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
   1000013fe:	8b 55 d4             	mov    -0x2c(%rbp),%edx
   100001401:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001405:	89 d6                	mov    %edx,%esi
   100001407:	48 89 c7             	mov    %rax,%rdi
   10000140a:	e8 2e fe ff ff       	callq  10000123d <_indexInBound>
   10000140f:	83 f0 01             	xor    $0x1,%eax
   100001412:	84 c0                	test   %al,%al
   100001414:	74 1b                	je     100001431 <_insertAt+0x46>
   100001416:	8b 45 d4             	mov    -0x2c(%rbp),%eax
   100001419:	89 c6                	mov    %eax,%esi
   10000141b:	48 8d 3d a1 06 00 00 	lea    0x6a1(%rip),%rdi        # 100001ac3 <___func__.3307+0x12f>
   100001422:	b8 00 00 00 00       	mov    $0x0,%eax
   100001427:	e8 8a 04 00 00       	callq  1000018b6 <_printf$stub>
   10000142c:	e9 b3 00 00 00       	jmpq   1000014e4 <_insertAt+0xf9>
   100001431:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001435:	48 89 c7             	mov    %rax,%rdi
   100001438:	e8 0a fd ff ff       	callq  100001147 <_hasSpaceLeft>
   10000143d:	83 f0 01             	xor    $0x1,%eax
   100001440:	84 c0                	test   %al,%al
   100001442:	74 11                	je     100001455 <_insertAt+0x6a>
   100001444:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001448:	be 02 00 00 00       	mov    $0x2,%esi
   10000144d:	48 89 c7             	mov    %rax,%rdi
   100001450:	e8 27 fd ff ff       	callq  10000117c <_resizeList>
   100001455:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001459:	48 8b 50 10          	mov    0x10(%rax),%rdx
   10000145d:	8b 45 d4             	mov    -0x2c(%rbp),%eax
   100001460:	8d 48 01             	lea    0x1(%rax),%ecx
   100001463:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001467:	8b 00                	mov    (%rax),%eax
   100001469:	0f af c1             	imul   %ecx,%eax
   10000146c:	48 98                	cltq   
   10000146e:	48 01 d0             	add    %rdx,%rax
   100001471:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   100001475:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001479:	8b 00                	mov    (%rax),%eax
   10000147b:	48 98                	cltq   
   10000147d:	48 f7 d8             	neg    %rax
   100001480:	48 89 c2             	mov    %rax,%rdx
   100001483:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001487:	48 01 d0             	add    %rdx,%rax
   10000148a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   10000148e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001492:	8b 10                	mov    (%rax),%edx
   100001494:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001498:	8b 40 08             	mov    0x8(%rax),%eax
   10000149b:	2b 45 d4             	sub    -0x2c(%rbp),%eax
   10000149e:	83 c0 01             	add    $0x1,%eax
   1000014a1:	0f af c2             	imul   %edx,%eax
   1000014a4:	89 45 ec             	mov    %eax,-0x14(%rbp)
   1000014a7:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
   1000014ae:	8b 45 ec             	mov    -0x14(%rbp),%eax
   1000014b1:	48 63 d0             	movslq %eax,%rdx
   1000014b4:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
   1000014b8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000014bc:	48 89 c7             	mov    %rax,%rdi
   1000014bf:	e8 e0 03 00 00       	callq  1000018a4 <___memmove_chk$stub>
   1000014c4:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
   1000014cb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1000014cf:	8b 00                	mov    (%rax),%eax
   1000014d1:	48 63 d0             	movslq %eax,%rdx
   1000014d4:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
   1000014d8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1000014dc:	48 89 c7             	mov    %rax,%rdi
   1000014df:	e8 ba 03 00 00       	callq  10000189e <___memcpy_chk$stub>
   1000014e4:	c9                   	leaveq 
   1000014e5:	c3                   	retq   

00000001000014e6 <_getAt>:
   1000014e6:	55                   	push   %rbp
   1000014e7:	48 89 e5             	mov    %rsp,%rbp
   1000014ea:	48 83 ec 30          	sub    $0x30,%rsp
   1000014ee:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   1000014f2:	89 75 e4             	mov    %esi,-0x1c(%rbp)
   1000014f5:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
   1000014f9:	8b 55 e4             	mov    -0x1c(%rbp),%edx
   1000014fc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001500:	89 d6                	mov    %edx,%esi
   100001502:	48 89 c7             	mov    %rax,%rdi
   100001505:	e8 33 fd ff ff       	callq  10000123d <_indexInBound>
   10000150a:	83 f0 01             	xor    $0x1,%eax
   10000150d:	84 c0                	test   %al,%al
   10000150f:	74 18                	je     100001529 <_getAt+0x43>
   100001511:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   100001514:	89 c6                	mov    %eax,%esi
   100001516:	48 8d 3d a6 05 00 00 	lea    0x5a6(%rip),%rdi        # 100001ac3 <___func__.3307+0x12f>
   10000151d:	b8 00 00 00 00       	mov    $0x0,%eax
   100001522:	e8 8f 03 00 00       	callq  1000018b6 <_printf$stub>
   100001527:	eb 3b                	jmp    100001564 <_getAt+0x7e>
   100001529:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   10000152d:	48 8b 50 10          	mov    0x10(%rax),%rdx
   100001531:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001535:	8b 00                	mov    (%rax),%eax
   100001537:	0f af 45 e4          	imul   -0x1c(%rbp),%eax
   10000153b:	48 98                	cltq   
   10000153d:	48 01 d0             	add    %rdx,%rax
   100001540:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   100001544:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
   10000154b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   10000154f:	8b 00                	mov    (%rax),%eax
   100001551:	48 63 d0             	movslq %eax,%rdx
   100001554:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
   100001558:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   10000155c:	48 89 c7             	mov    %rax,%rdi
   10000155f:	e8 3a 03 00 00       	callq  10000189e <___memcpy_chk$stub>
   100001564:	c9                   	leaveq 
   100001565:	c3                   	retq   

0000000100001566 <_push>:
   100001566:	55                   	push   %rbp
   100001567:	48 89 e5             	mov    %rsp,%rbp
   10000156a:	48 83 ec 10          	sub    $0x10,%rsp
   10000156e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   100001572:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
   100001576:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   10000157a:	48 89 c7             	mov    %rax,%rdi
   10000157d:	e8 c5 fb ff ff       	callq  100001147 <_hasSpaceLeft>
   100001582:	83 f0 01             	xor    $0x1,%eax
   100001585:	84 c0                	test   %al,%al
   100001587:	74 11                	je     10000159a <_push+0x34>
   100001589:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   10000158d:	be 02 00 00 00       	mov    $0x2,%esi
   100001592:	48 89 c7             	mov    %rax,%rdi
   100001595:	e8 e2 fb ff ff       	callq  10000117c <_resizeList>
   10000159a:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
   1000015a1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000015a5:	8b 00                	mov    (%rax),%eax
   1000015a7:	48 63 d0             	movslq %eax,%rdx
   1000015aa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000015ae:	48 8b 70 10          	mov    0x10(%rax),%rsi
   1000015b2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000015b6:	8b 38                	mov    (%rax),%edi
   1000015b8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000015bc:	8b 40 08             	mov    0x8(%rax),%eax
   1000015bf:	0f af c7             	imul   %edi,%eax
   1000015c2:	48 98                	cltq   
   1000015c4:	48 8d 3c 06          	lea    (%rsi,%rax,1),%rdi
   1000015c8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1000015cc:	48 89 c6             	mov    %rax,%rsi
   1000015cf:	e8 ca 02 00 00       	callq  10000189e <___memcpy_chk$stub>
   1000015d4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000015d8:	8b 40 08             	mov    0x8(%rax),%eax
   1000015db:	8d 50 01             	lea    0x1(%rax),%edx
   1000015de:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000015e2:	89 50 08             	mov    %edx,0x8(%rax)
   1000015e5:	c9                   	leaveq 
   1000015e6:	c3                   	retq   

00000001000015e7 <_deleteList>:
   1000015e7:	55                   	push   %rbp
   1000015e8:	48 89 e5             	mov    %rsp,%rbp
   1000015eb:	48 83 ec 20          	sub    $0x20,%rsp
   1000015ef:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   1000015f3:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
   1000015f7:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
   1000015fc:	74 39                	je     100001637 <_deleteList+0x50>
   1000015fe:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   100001605:	eb 24                	jmp    10000162b <_deleteList+0x44>
   100001607:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   10000160b:	48 8b 50 10          	mov    0x10(%rax),%rdx
   10000160f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001613:	8b 00                	mov    (%rax),%eax
   100001615:	0f af 45 fc          	imul   -0x4(%rbp),%eax
   100001619:	48 98                	cltq   
   10000161b:	48 01 c2             	add    %rax,%rdx
   10000161e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   100001622:	48 89 d7             	mov    %rdx,%rdi
   100001625:	ff d0                	callq  *%rax
   100001627:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   10000162b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   10000162f:	8b 40 08             	mov    0x8(%rax),%eax
   100001632:	3b 45 fc             	cmp    -0x4(%rbp),%eax
   100001635:	7d d0                	jge    100001607 <_deleteList+0x20>
   100001637:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   10000163b:	48 8b 40 10          	mov    0x10(%rax),%rax
   10000163f:	48 89 c7             	mov    %rax,%rdi
   100001642:	e8 63 02 00 00       	callq  1000018aa <_free$stub>
   100001647:	90                   	nop
   100001648:	c9                   	leaveq 
   100001649:	c3                   	retq   

000000010000164a <_printListInfo>:
   10000164a:	55                   	push   %rbp
   10000164b:	48 89 e5             	mov    %rsp,%rbp
   10000164e:	48 83 ec 10          	sub    $0x10,%rsp
   100001652:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   100001656:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   10000165a:	8b 70 04             	mov    0x4(%rax),%esi
   10000165d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001661:	8b 08                	mov    (%rax),%ecx
   100001663:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001667:	48 8b 40 10          	mov    0x10(%rax),%rax
   10000166b:	89 c2                	mov    %eax,%edx
   10000166d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001671:	8b 40 08             	mov    0x8(%rax),%eax
   100001674:	41 89 f0             	mov    %esi,%r8d
   100001677:	89 c6                	mov    %eax,%esi
   100001679:	48 8d 3d 60 04 00 00 	lea    0x460(%rip),%rdi        # 100001ae0 <___func__.3307+0x14c>
   100001680:	b8 00 00 00 00       	mov    $0x0,%eax
   100001685:	e8 2c 02 00 00       	callq  1000018b6 <_printf$stub>
   10000168a:	c9                   	leaveq 
   10000168b:	c3                   	retq   

000000010000168c <_printListElements>:
   10000168c:	55                   	push   %rbp
   10000168d:	48 89 e5             	mov    %rsp,%rbp
   100001690:	48 83 ec 20          	sub    $0x20,%rsp
   100001694:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   100001698:	c7 45 fc fe ff ff ff 	movl   $0xfffffffe,-0x4(%rbp)
   10000169f:	eb 39                	jmp    1000016da <_printListElements+0x4e>
   1000016a1:	c7 45 f8 09 03 00 00 	movl   $0x309,-0x8(%rbp)
   1000016a8:	48 8d 55 f8          	lea    -0x8(%rbp),%rdx
   1000016ac:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   1000016af:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000016b3:	89 ce                	mov    %ecx,%esi
   1000016b5:	48 89 c7             	mov    %rax,%rdi
   1000016b8:	e8 29 fe ff ff       	callq  1000014e6 <_getAt>
   1000016bd:	8b 55 f8             	mov    -0x8(%rbp),%edx
   1000016c0:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1000016c3:	89 c6                	mov    %eax,%esi
   1000016c5:	48 8d 3d 68 04 00 00 	lea    0x468(%rip),%rdi        # 100001b34 <___func__.3307+0x1a0>
   1000016cc:	b8 00 00 00 00       	mov    $0x0,%eax
   1000016d1:	e8 e0 01 00 00       	callq  1000018b6 <_printf$stub>
   1000016d6:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   1000016da:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000016de:	8b 40 08             	mov    0x8(%rax),%eax
   1000016e1:	83 c0 02             	add    $0x2,%eax
   1000016e4:	3b 45 fc             	cmp    -0x4(%rbp),%eax
   1000016e7:	7d b8                	jge    1000016a1 <_printListElements+0x15>
   1000016e9:	c9                   	leaveq 
   1000016ea:	c3                   	retq   

00000001000016eb <_createListOnHeapTest>:
   1000016eb:	55                   	push   %rbp
   1000016ec:	48 89 e5             	mov    %rsp,%rbp
   1000016ef:	48 83 ec 10          	sub    $0x10,%rsp
   1000016f3:	bf 20 00 00 00       	mov    $0x20,%edi
   1000016f8:	e8 b3 01 00 00       	callq  1000018b0 <_malloc$stub>
   1000016fd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   100001701:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001705:	b9 0a 00 00 00       	mov    $0xa,%ecx
   10000170a:	ba 00 00 00 00       	mov    $0x0,%edx
   10000170f:	be 04 00 00 00       	mov    $0x4,%esi
   100001714:	48 89 c7             	mov    %rax,%rdi
   100001717:	e8 5e fb ff ff       	callq  10000127a <_initialize>
   10000171c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   100001723:	eb 1c                	jmp    100001741 <_createListOnHeapTest+0x56>
   100001725:	48 8d 55 f4          	lea    -0xc(%rbp),%rdx
   100001729:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   10000172d:	48 89 d6             	mov    %rdx,%rsi
   100001730:	48 89 c7             	mov    %rax,%rdi
   100001733:	e8 2e fe ff ff       	callq  100001566 <_push>
   100001738:	8b 45 f4             	mov    -0xc(%rbp),%eax
   10000173b:	83 c0 01             	add    $0x1,%eax
   10000173e:	89 45 f4             	mov    %eax,-0xc(%rbp)
   100001741:	8b 45 f4             	mov    -0xc(%rbp),%eax
   100001744:	83 f8 29             	cmp    $0x29,%eax
   100001747:	7e dc                	jle    100001725 <_createListOnHeapTest+0x3a>
   100001749:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   10000174d:	48 89 c7             	mov    %rax,%rdi
   100001750:	e8 37 ff ff ff       	callq  10000168c <_printListElements>
   100001755:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001759:	be 00 00 00 00       	mov    $0x0,%esi
   10000175e:	48 89 c7             	mov    %rax,%rdi
   100001761:	e8 81 fe ff ff       	callq  1000015e7 <_deleteList>
   100001766:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   10000176a:	48 89 c7             	mov    %rax,%rdi
   10000176d:	e8 38 01 00 00       	callq  1000018aa <_free$stub>
   100001772:	c9                   	leaveq 
   100001773:	c3                   	retq   

0000000100001774 <_createListOnStackTest>:
   100001774:	55                   	push   %rbp
   100001775:	48 89 e5             	mov    %rsp,%rbp
   100001778:	48 83 ec 30          	sub    $0x30,%rsp
   10000177c:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   100001780:	b9 0a 00 00 00       	mov    $0xa,%ecx
   100001785:	ba 00 00 00 00       	mov    $0x0,%edx
   10000178a:	be 04 00 00 00       	mov    $0x4,%esi
   10000178f:	48 89 c7             	mov    %rax,%rdi
   100001792:	e8 e3 fa ff ff       	callq  10000127a <_initialize>
   100001797:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
   10000179e:	eb 1c                	jmp    1000017bc <_createListOnStackTest+0x48>
   1000017a0:	48 8d 55 dc          	lea    -0x24(%rbp),%rdx
   1000017a4:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   1000017a8:	48 89 d6             	mov    %rdx,%rsi
   1000017ab:	48 89 c7             	mov    %rax,%rdi
   1000017ae:	e8 b3 fd ff ff       	callq  100001566 <_push>
   1000017b3:	8b 45 dc             	mov    -0x24(%rbp),%eax
   1000017b6:	83 c0 01             	add    $0x1,%eax
   1000017b9:	89 45 dc             	mov    %eax,-0x24(%rbp)
   1000017bc:	8b 45 dc             	mov    -0x24(%rbp),%eax
   1000017bf:	83 f8 0b             	cmp    $0xb,%eax
   1000017c2:	7e dc                	jle    1000017a0 <_createListOnStackTest+0x2c>
   1000017c4:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   1000017c8:	48 89 c7             	mov    %rax,%rdi
   1000017cb:	e8 bc fe ff ff       	callq  10000168c <_printListElements>
   1000017d0:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   1000017d4:	be 00 00 00 00       	mov    $0x0,%esi
   1000017d9:	48 89 c7             	mov    %rax,%rdi
   1000017dc:	e8 06 fe ff ff       	callq  1000015e7 <_deleteList>
   1000017e1:	c9                   	leaveq 
   1000017e2:	c3                   	retq   

00000001000017e3 <_runListTests>:
   1000017e3:	55                   	push   %rbp
   1000017e4:	48 89 e5             	mov    %rsp,%rbp
   1000017e7:	b8 00 00 00 00       	mov    $0x0,%eax
   1000017ec:	e8 83 ff ff ff       	callq  100001774 <_createListOnStackTest>
   1000017f1:	b8 00 00 00 00       	mov    $0x0,%eax
   1000017f6:	e8 f0 fe ff ff       	callq  1000016eb <_createListOnHeapTest>
   1000017fb:	5d                   	pop    %rbp
   1000017fc:	c3                   	retq   

00000001000017fd <_runTests>:
   1000017fd:	55                   	push   %rbp
   1000017fe:	48 89 e5             	mov    %rsp,%rbp
   100001801:	b8 00 00 00 00       	mov    $0x0,%eax
   100001806:	e8 d8 ff ff ff       	callq  1000017e3 <_runListTests>
   10000180b:	5d                   	pop    %rbp
   10000180c:	c3                   	retq   

000000010000180d <_runGameLoop>:
   10000180d:	55                   	push   %rbp
   10000180e:	48 89 e5             	mov    %rsp,%rbp
   100001811:	48 83 ec 50          	sub    $0x50,%rsp
   100001815:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
   100001819:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
   10000181d:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
   100001821:	eb 2c                	jmp    10000184f <_runGameLoop+0x42>
   100001823:	eb 0e                	jmp    100001833 <_runGameLoop+0x26>
   100001825:	8b 45 c0             	mov    -0x40(%rbp),%eax
   100001828:	3d 00 01 00 00       	cmp    $0x100,%eax
   10000182d:	75 04                	jne    100001833 <_runGameLoop+0x26>
   10000182f:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
   100001833:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
   100001837:	48 89 c7             	mov    %rax,%rdi
   10000183a:	e8 47 00 00 00       	callq  100001886 <_SDL_PollEvent$stub>
   10000183f:	85 c0                	test   %eax,%eax
   100001841:	75 e2                	jne    100001825 <_runGameLoop+0x18>
   100001843:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   100001847:	48 89 c7             	mov    %rax,%rdi
   10000184a:	e8 43 00 00 00       	callq  100001892 <_SDL_UpdateWindowSurface$stub>
   10000184f:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
   100001853:	83 f0 01             	xor    $0x1,%eax
   100001856:	84 c0                	test   %al,%al
   100001858:	75 c9                	jne    100001823 <_runGameLoop+0x16>
   10000185a:	c9                   	leaveq 
   10000185b:	c3                   	retq   

Déassemblage de la section __TEXT.__stubs:

000000010000185c <_SDL_CreateRenderer$stub>:
   10000185c:	ff 25 ae 07 00 00    	jmpq   *0x7ae(%rip)        # 100002010 <_SDL_CreateRenderer$stub>

0000000100001862 <_SDL_CreateWindow$stub>:
   100001862:	ff 25 b0 07 00 00    	jmpq   *0x7b0(%rip)        # 100002018 <_SDL_CreateWindow$stub>

0000000100001868 <_SDL_DestroyWindow$stub>:
   100001868:	ff 25 b2 07 00 00    	jmpq   *0x7b2(%rip)        # 100002020 <_SDL_DestroyWindow$stub>

000000010000186e <_SDL_FreeSurface$stub>:
   10000186e:	ff 25 b4 07 00 00    	jmpq   *0x7b4(%rip)        # 100002028 <_SDL_FreeSurface$stub>

0000000100001874 <_SDL_GetError$stub>:
   100001874:	ff 25 b6 07 00 00    	jmpq   *0x7b6(%rip)        # 100002030 <_SDL_GetError$stub>

000000010000187a <_SDL_GetWindowSurface$stub>:
   10000187a:	ff 25 b8 07 00 00    	jmpq   *0x7b8(%rip)        # 100002038 <_SDL_GetWindowSurface$stub>

0000000100001880 <_SDL_Init$stub>:
   100001880:	ff 25 ba 07 00 00    	jmpq   *0x7ba(%rip)        # 100002040 <_SDL_Init$stub>

0000000100001886 <_SDL_PollEvent$stub>:
   100001886:	ff 25 bc 07 00 00    	jmpq   *0x7bc(%rip)        # 100002048 <_SDL_PollEvent$stub>

000000010000188c <_SDL_Quit$stub>:
   10000188c:	ff 25 be 07 00 00    	jmpq   *0x7be(%rip)        # 100002050 <_SDL_Quit$stub>

0000000100001892 <_SDL_UpdateWindowSurface$stub>:
   100001892:	ff 25 c0 07 00 00    	jmpq   *0x7c0(%rip)        # 100002058 <_SDL_UpdateWindowSurface$stub>

0000000100001898 <___assert_rtn$stub>:
   100001898:	ff 25 c2 07 00 00    	jmpq   *0x7c2(%rip)        # 100002060 <___assert_rtn$stub>

000000010000189e <___memcpy_chk$stub>:
   10000189e:	ff 25 c4 07 00 00    	jmpq   *0x7c4(%rip)        # 100002068 <___memcpy_chk$stub>

00000001000018a4 <___memmove_chk$stub>:
   1000018a4:	ff 25 c6 07 00 00    	jmpq   *0x7c6(%rip)        # 100002070 <___memmove_chk$stub>

00000001000018aa <_free$stub>:
   1000018aa:	ff 25 c8 07 00 00    	jmpq   *0x7c8(%rip)        # 100002078 <_free$stub>

00000001000018b0 <_malloc$stub>:
   1000018b0:	ff 25 ca 07 00 00    	jmpq   *0x7ca(%rip)        # 100002080 <_malloc$stub>

00000001000018b6 <_printf$stub>:
   1000018b6:	ff 25 cc 07 00 00    	jmpq   *0x7cc(%rip)        # 100002088 <_printf$stub>

00000001000018bc <_puts$stub>:
   1000018bc:	ff 25 ce 07 00 00    	jmpq   *0x7ce(%rip)        # 100002090 <_puts$stub>

00000001000018c2 <_realloc$stub>:
   1000018c2:	ff 25 d0 07 00 00    	jmpq   *0x7d0(%rip)        # 100002098 <_realloc$stub>

Déassemblage de la section __TEXT.__stub_helper:

00000001000018c8 <__TEXT.__stub_helper>:
   1000018c8:	4c 8d 1d 39 07 00 00 	lea    0x739(%rip),%r11        # 100002008 <>
   1000018cf:	41 53                	push   %r11
   1000018d1:	ff 25 29 07 00 00    	jmpq   *0x729(%rip)        # 100002000 <dyld_stub_binder$stub>
   1000018d7:	90                   	nop
   1000018d8:	68 00 00 00 00       	pushq  $0x0
   1000018dd:	e9 e6 ff ff ff       	jmpq   1000018c8 <_realloc$stub+0x6>
   1000018e2:	68 1a 00 00 00       	pushq  $0x1a
   1000018e7:	e9 dc ff ff ff       	jmpq   1000018c8 <_realloc$stub+0x6>
   1000018ec:	68 32 00 00 00       	pushq  $0x32
   1000018f1:	e9 d2 ff ff ff       	jmpq   1000018c8 <_realloc$stub+0x6>
   1000018f6:	68 4b 00 00 00       	pushq  $0x4b
   1000018fb:	e9 c8 ff ff ff       	jmpq   1000018c8 <_realloc$stub+0x6>
   100001900:	68 62 00 00 00       	pushq  $0x62
   100001905:	e9 be ff ff ff       	jmpq   1000018c8 <_realloc$stub+0x6>
   10000190a:	68 76 00 00 00       	pushq  $0x76
   10000190f:	e9 b4 ff ff ff       	jmpq   1000018c8 <_realloc$stub+0x6>
   100001914:	68 92 00 00 00       	pushq  $0x92
   100001919:	e9 aa ff ff ff       	jmpq   1000018c8 <_realloc$stub+0x6>
   10000191e:	68 a2 00 00 00       	pushq  $0xa2
   100001923:	e9 a0 ff ff ff       	jmpq   1000018c8 <_realloc$stub+0x6>
   100001928:	68 b7 00 00 00       	pushq  $0xb7
   10000192d:	e9 96 ff ff ff       	jmpq   1000018c8 <_realloc$stub+0x6>
   100001932:	68 c7 00 00 00       	pushq  $0xc7
   100001937:	e9 8c ff ff ff       	jmpq   1000018c8 <_realloc$stub+0x6>
   10000193c:	68 e6 00 00 00       	pushq  $0xe6
   100001941:	e9 82 ff ff ff       	jmpq   1000018c8 <_realloc$stub+0x6>
   100001946:	68 fa 00 00 00       	pushq  $0xfa
   10000194b:	e9 78 ff ff ff       	jmpq   1000018c8 <_realloc$stub+0x6>
   100001950:	68 0e 01 00 00       	pushq  $0x10e
   100001955:	e9 6e ff ff ff       	jmpq   1000018c8 <_realloc$stub+0x6>
   10000195a:	68 23 01 00 00       	pushq  $0x123
   10000195f:	e9 64 ff ff ff       	jmpq   1000018c8 <_realloc$stub+0x6>
   100001964:	68 2f 01 00 00       	pushq  $0x12f
   100001969:	e9 5a ff ff ff       	jmpq   1000018c8 <_realloc$stub+0x6>
   10000196e:	68 3e 01 00 00       	pushq  $0x13e
   100001973:	e9 50 ff ff ff       	jmpq   1000018c8 <_realloc$stub+0x6>
   100001978:	68 4d 01 00 00       	pushq  $0x14d
   10000197d:	e9 46 ff ff ff       	jmpq   1000018c8 <_realloc$stub+0x6>
   100001982:	68 5a 01 00 00       	pushq  $0x15a
   100001987:	e9 3c ff ff ff       	jmpq   1000018c8 <_realloc$stub+0x6>
