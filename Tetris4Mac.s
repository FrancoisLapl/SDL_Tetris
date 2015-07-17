
./Tetris4Mac:     format de fichier mach-o-x86-64


Déassemblage de la section .text :

0000000100000ed5 <_initializeGraphicEngine>:
   100000ed5:	55                   	push   %rbp
   100000ed6:	48 89 e5             	mov    %rsp,%rbp
   100000ed9:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   100000edd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100000ee1:	48 89 05 00 22 00 00 	mov    %rax,0x2200(%rip)        # 1000030e8 <_sdlRenderer>
   100000ee8:	5d                   	pop    %rbp
   100000ee9:	c3                   	retq   

0000000100000eea <_createBlock>:
   100000eea:	55                   	push   %rbp
   100000eeb:	48 89 e5             	mov    %rsp,%rbp
   100000eee:	48 83 ec 30          	sub    $0x30,%rsp
   100000ef2:	89 7d ec             	mov    %edi,-0x14(%rbp)
   100000ef5:	89 75 e8             	mov    %esi,-0x18(%rbp)
   100000ef8:	89 c8                	mov    %ecx,%eax
   100000efa:	44 89 c6             	mov    %r8d,%esi
   100000efd:	44 89 c9             	mov    %r9d,%ecx
   100000f00:	88 55 e4             	mov    %dl,-0x1c(%rbp)
   100000f03:	88 45 e0             	mov    %al,-0x20(%rbp)
   100000f06:	40 88 75 dc          	mov    %sil,-0x24(%rbp)
   100000f0a:	88 4d d8             	mov    %cl,-0x28(%rbp)
   100000f0d:	bf 0c 00 00 00       	mov    $0xc,%edi
   100000f12:	e8 2b 14 00 00       	callq  100002342 <_malloc$stub>
   100000f17:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   100000f1b:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   100000f20:	0f 94 c0             	sete   %al
   100000f23:	0f b6 c0             	movzbl %al,%eax
   100000f26:	48 85 c0             	test   %rax,%rax
   100000f29:	74 1f                	je     100000f4a <_createBlock+0x60>
   100000f2b:	48 8d 0d 36 15 00 00 	lea    0x1536(%rip),%rcx        # 100002468 <_realloc$stub+0x11a>
   100000f32:	ba 0c 00 00 00       	mov    $0xc,%edx
   100000f37:	48 8d 35 38 15 00 00 	lea    0x1538(%rip),%rsi        # 100002476 <_realloc$stub+0x128>
   100000f3e:	48 8d 3d 83 18 00 00 	lea    0x1883(%rip),%rdi        # 1000027c8 <___func__.9204>
   100000f45:	e8 d4 13 00 00       	callq  10000231e <___assert_rtn$stub>
   100000f4a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100000f4e:	8b 55 ec             	mov    -0x14(%rbp),%edx
   100000f51:	89 10                	mov    %edx,(%rax)
   100000f53:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100000f57:	8b 55 e8             	mov    -0x18(%rbp),%edx
   100000f5a:	89 50 04             	mov    %edx,0x4(%rax)
   100000f5d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100000f61:	0f b6 55 e4          	movzbl -0x1c(%rbp),%edx
   100000f65:	88 50 08             	mov    %dl,0x8(%rax)
   100000f68:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100000f6c:	0f b6 55 e0          	movzbl -0x20(%rbp),%edx
   100000f70:	88 50 09             	mov    %dl,0x9(%rax)
   100000f73:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100000f77:	0f b6 55 dc          	movzbl -0x24(%rbp),%edx
   100000f7b:	88 50 0a             	mov    %dl,0xa(%rax)
   100000f7e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100000f82:	0f b6 55 d8          	movzbl -0x28(%rbp),%edx
   100000f86:	88 50 0b             	mov    %dl,0xb(%rax)
   100000f89:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100000f8d:	c9                   	leaveq 
   100000f8e:	c3                   	retq   

0000000100000f8f <_generateWalls>:
   100000f8f:	55                   	push   %rbp
   100000f90:	48 89 e5             	mov    %rsp,%rbp
   100000f93:	48 83 ec 50          	sub    $0x50,%rsp
   100000f97:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
   100000f9b:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
   100000fa0:	0f 94 c0             	sete   %al
   100000fa3:	0f b6 c0             	movzbl %al,%eax
   100000fa6:	48 85 c0             	test   %rax,%rax
   100000fa9:	74 1f                	je     100000fca <_generateWalls+0x3b>
   100000fab:	48 8d 0d de 14 00 00 	lea    0x14de(%rip),%rcx        # 100002490 <_realloc$stub+0x142>
   100000fb2:	ba 1b 00 00 00       	mov    $0x1b,%edx
   100000fb7:	48 8d 35 b8 14 00 00 	lea    0x14b8(%rip),%rsi        # 100002476 <_realloc$stub+0x128>
   100000fbe:	48 8d 3d 0f 18 00 00 	lea    0x180f(%rip),%rdi        # 1000027d4 <___func__.9208>
   100000fc5:	e8 54 13 00 00       	callq  10000231e <___assert_rtn$stub>
   100000fca:	c7 45 f8 14 00 00 00 	movl   $0x14,-0x8(%rbp)
   100000fd1:	c7 45 f4 0f 00 00 00 	movl   $0xf,-0xc(%rbp)
   100000fd8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   100000fdf:	eb 5a                	jmp    10000103b <_generateWalls+0xac>
   100000fe1:	48 8d 05 18 21 00 00 	lea    0x2118(%rip),%rax        # 100003100 <_G_GameConfig>
   100000fe8:	8b 50 20             	mov    0x20(%rax),%edx
   100000feb:	8b 45 fc             	mov    -0x4(%rbp),%eax
   100000fee:	0f af d0             	imul   %eax,%edx
   100000ff1:	8b 45 f8             	mov    -0x8(%rbp),%eax
   100000ff4:	01 d0                	add    %edx,%eax
   100000ff6:	89 45 f0             	mov    %eax,-0x10(%rbp)
   100000ff9:	8b 75 f0             	mov    -0x10(%rbp),%esi
   100000ffc:	8b 45 f4             	mov    -0xc(%rbp),%eax
   100000fff:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   100001005:	41 b8 80 00 00 00    	mov    $0x80,%r8d
   10000100b:	b9 80 00 00 00       	mov    $0x80,%ecx
   100001010:	ba 80 00 00 00       	mov    $0x80,%edx
   100001015:	89 c7                	mov    %eax,%edi
   100001017:	e8 ce fe ff ff       	callq  100000eea <_createBlock>
   10000101c:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   100001020:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   100001024:	48 8d 50 10          	lea    0x10(%rax),%rdx
   100001028:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
   10000102c:	48 89 c6             	mov    %rax,%rsi
   10000102f:	48 89 d7             	mov    %rdx,%rdi
   100001032:	e8 d9 0c 00 00       	callq  100001d10 <_DL_push>
   100001037:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   10000103b:	8b 55 fc             	mov    -0x4(%rbp),%edx
   10000103e:	48 8d 05 bb 20 00 00 	lea    0x20bb(%rip),%rax        # 100003100 <_G_GameConfig>
   100001045:	8b 40 0c             	mov    0xc(%rax),%eax
   100001048:	83 e8 01             	sub    $0x1,%eax
   10000104b:	39 c2                	cmp    %eax,%edx
   10000104d:	72 92                	jb     100000fe1 <_generateWalls+0x52>
   10000104f:	48 8d 05 aa 20 00 00 	lea    0x20aa(%rip),%rax        # 100003100 <_G_GameConfig>
   100001056:	8b 50 20             	mov    0x20(%rax),%edx
   100001059:	48 8d 05 a0 20 00 00 	lea    0x20a0(%rip),%rax        # 100003100 <_G_GameConfig>
   100001060:	8b 40 10             	mov    0x10(%rax),%eax
   100001063:	83 e8 01             	sub    $0x1,%eax
   100001066:	0f af d0             	imul   %eax,%edx
   100001069:	8b 45 f4             	mov    -0xc(%rbp),%eax
   10000106c:	01 d0                	add    %edx,%eax
   10000106e:	89 45 ec             	mov    %eax,-0x14(%rbp)
   100001071:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   100001078:	eb 5a                	jmp    1000010d4 <_generateWalls+0x145>
   10000107a:	48 8d 05 7f 20 00 00 	lea    0x207f(%rip),%rax        # 100003100 <_G_GameConfig>
   100001081:	8b 50 20             	mov    0x20(%rax),%edx
   100001084:	8b 45 fc             	mov    -0x4(%rbp),%eax
   100001087:	0f af d0             	imul   %eax,%edx
   10000108a:	8b 45 f8             	mov    -0x8(%rbp),%eax
   10000108d:	01 d0                	add    %edx,%eax
   10000108f:	89 45 e8             	mov    %eax,-0x18(%rbp)
   100001092:	8b 75 e8             	mov    -0x18(%rbp),%esi
   100001095:	8b 45 ec             	mov    -0x14(%rbp),%eax
   100001098:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   10000109e:	41 b8 80 00 00 00    	mov    $0x80,%r8d
   1000010a4:	b9 80 00 00 00       	mov    $0x80,%ecx
   1000010a9:	ba 80 00 00 00       	mov    $0x80,%edx
   1000010ae:	89 c7                	mov    %eax,%edi
   1000010b0:	e8 35 fe ff ff       	callq  100000eea <_createBlock>
   1000010b5:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   1000010b9:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   1000010bd:	48 8d 50 10          	lea    0x10(%rax),%rdx
   1000010c1:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   1000010c5:	48 89 c6             	mov    %rax,%rsi
   1000010c8:	48 89 d7             	mov    %rdx,%rdi
   1000010cb:	e8 40 0c 00 00       	callq  100001d10 <_DL_push>
   1000010d0:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   1000010d4:	8b 55 fc             	mov    -0x4(%rbp),%edx
   1000010d7:	48 8d 05 22 20 00 00 	lea    0x2022(%rip),%rax        # 100003100 <_G_GameConfig>
   1000010de:	8b 40 0c             	mov    0xc(%rax),%eax
   1000010e1:	83 e8 01             	sub    $0x1,%eax
   1000010e4:	39 c2                	cmp    %eax,%edx
   1000010e6:	72 92                	jb     10000107a <_generateWalls+0xeb>
   1000010e8:	48 8d 05 11 20 00 00 	lea    0x2011(%rip),%rax        # 100003100 <_G_GameConfig>
   1000010ef:	8b 50 20             	mov    0x20(%rax),%edx
   1000010f2:	48 8d 05 07 20 00 00 	lea    0x2007(%rip),%rax        # 100003100 <_G_GameConfig>
   1000010f9:	8b 40 0c             	mov    0xc(%rax),%eax
   1000010fc:	83 e8 01             	sub    $0x1,%eax
   1000010ff:	0f af d0             	imul   %eax,%edx
   100001102:	8b 45 f8             	mov    -0x8(%rbp),%eax
   100001105:	01 d0                	add    %edx,%eax
   100001107:	89 45 e4             	mov    %eax,-0x1c(%rbp)
   10000110a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   100001111:	eb 5a                	jmp    10000116d <_generateWalls+0x1de>
   100001113:	48 8d 05 e6 1f 00 00 	lea    0x1fe6(%rip),%rax        # 100003100 <_G_GameConfig>
   10000111a:	8b 50 20             	mov    0x20(%rax),%edx
   10000111d:	8b 45 fc             	mov    -0x4(%rbp),%eax
   100001120:	0f af d0             	imul   %eax,%edx
   100001123:	8b 45 f4             	mov    -0xc(%rbp),%eax
   100001126:	01 d0                	add    %edx,%eax
   100001128:	89 45 e0             	mov    %eax,-0x20(%rbp)
   10000112b:	8b 75 e4             	mov    -0x1c(%rbp),%esi
   10000112e:	8b 45 e0             	mov    -0x20(%rbp),%eax
   100001131:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   100001137:	41 b8 80 00 00 00    	mov    $0x80,%r8d
   10000113d:	b9 80 00 00 00       	mov    $0x80,%ecx
   100001142:	ba 80 00 00 00       	mov    $0x80,%edx
   100001147:	89 c7                	mov    %eax,%edi
   100001149:	e8 9c fd ff ff       	callq  100000eea <_createBlock>
   10000114e:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   100001152:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   100001156:	48 8d 50 10          	lea    0x10(%rax),%rdx
   10000115a:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
   10000115e:	48 89 c6             	mov    %rax,%rsi
   100001161:	48 89 d7             	mov    %rdx,%rdi
   100001164:	e8 a7 0b 00 00       	callq  100001d10 <_DL_push>
   100001169:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   10000116d:	8b 55 fc             	mov    -0x4(%rbp),%edx
   100001170:	48 8d 05 89 1f 00 00 	lea    0x1f89(%rip),%rax        # 100003100 <_G_GameConfig>
   100001177:	8b 40 10             	mov    0x10(%rax),%eax
   10000117a:	39 c2                	cmp    %eax,%edx
   10000117c:	72 95                	jb     100001113 <_generateWalls+0x184>
   10000117e:	c9                   	leaveq 
   10000117f:	c3                   	retq   

0000000100001180 <_putTetrisBlock>:
   100001180:	55                   	push   %rbp
   100001181:	48 89 e5             	mov    %rsp,%rbp
   100001184:	48 83 ec 20          	sub    $0x20,%rsp
   100001188:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   10000118c:	41 b9 01 00 00 00    	mov    $0x1,%r9d
   100001192:	41 b8 80 00 00 00    	mov    $0x80,%r8d
   100001198:	b9 80 00 00 00       	mov    $0x80,%ecx
   10000119d:	ba 80 00 00 00       	mov    $0x80,%edx
   1000011a2:	be 32 00 00 00       	mov    $0x32,%esi
   1000011a7:	bf 64 00 00 00       	mov    $0x64,%edi
   1000011ac:	e8 39 fd ff ff       	callq  100000eea <_createBlock>
   1000011b1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1000011b5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000011b9:	48 8d 50 30          	lea    0x30(%rax),%rdx
   1000011bd:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   1000011c1:	48 89 c6             	mov    %rax,%rsi
   1000011c4:	48 89 d7             	mov    %rdx,%rdi
   1000011c7:	e8 44 0b 00 00       	callq  100001d10 <_DL_push>
   1000011cc:	c9                   	leaveq 
   1000011cd:	c3                   	retq   

00000001000011ce <_renderBackground>:
   1000011ce:	55                   	push   %rbp
   1000011cf:	48 89 e5             	mov    %rsp,%rbp
   1000011d2:	48 8b 05 0f 1f 00 00 	mov    0x1f0f(%rip),%rax        # 1000030e8 <_sdlRenderer>
   1000011d9:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   1000011df:	b9 00 00 00 00       	mov    $0x0,%ecx
   1000011e4:	ba 00 00 00 00       	mov    $0x0,%edx
   1000011e9:	be 00 00 00 00       	mov    $0x0,%esi
   1000011ee:	48 89 c7             	mov    %rax,%rdi
   1000011f1:	e8 22 11 00 00       	callq  100002318 <_SDL_SetRenderDrawColor$stub>
   1000011f6:	48 8b 05 eb 1e 00 00 	mov    0x1eeb(%rip),%rax        # 1000030e8 <_sdlRenderer>
   1000011fd:	48 89 c7             	mov    %rax,%rdi
   100001200:	e8 f5 10 00 00       	callq  1000022fa <_SDL_RenderClear$stub>
   100001205:	5d                   	pop    %rbp
   100001206:	c3                   	retq   

0000000100001207 <_renderBlock>:
   100001207:	55                   	push   %rbp
   100001208:	48 89 e5             	mov    %rsp,%rbp
   10000120b:	48 83 ec 20          	sub    $0x20,%rsp
   10000120f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   100001213:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
   100001218:	0f 94 c0             	sete   %al
   10000121b:	0f b6 c0             	movzbl %al,%eax
   10000121e:	48 85 c0             	test   %rax,%rax
   100001221:	74 1f                	je     100001242 <_renderBlock+0x3b>
   100001223:	48 8d 0d 3e 12 00 00 	lea    0x123e(%rip),%rcx        # 100002468 <_realloc$stub+0x11a>
   10000122a:	ba 5e 00 00 00       	mov    $0x5e,%edx
   10000122f:	48 8d 35 40 12 00 00 	lea    0x1240(%rip),%rsi        # 100002476 <_realloc$stub+0x128>
   100001236:	48 8d 3d a5 15 00 00 	lea    0x15a5(%rip),%rdi        # 1000027e2 <___func__.9238>
   10000123d:	e8 dc 10 00 00       	callq  10000231e <___assert_rtn$stub>
   100001242:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001246:	0f b6 40 0b          	movzbl 0xb(%rax),%eax
   10000124a:	0f b6 f8             	movzbl %al,%edi
   10000124d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001251:	0f b6 40 0a          	movzbl 0xa(%rax),%eax
   100001255:	0f b6 c8             	movzbl %al,%ecx
   100001258:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   10000125c:	0f b6 40 09          	movzbl 0x9(%rax),%eax
   100001260:	0f b6 d0             	movzbl %al,%edx
   100001263:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001267:	0f b6 40 08          	movzbl 0x8(%rax),%eax
   10000126b:	0f b6 f0             	movzbl %al,%esi
   10000126e:	48 8b 05 73 1e 00 00 	mov    0x1e73(%rip),%rax        # 1000030e8 <_sdlRenderer>
   100001275:	41 89 f8             	mov    %edi,%r8d
   100001278:	48 89 c7             	mov    %rax,%rdi
   10000127b:	e8 98 10 00 00       	callq  100002318 <_SDL_SetRenderDrawColor$stub>
   100001280:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001284:	8b 00                	mov    (%rax),%eax
   100001286:	89 45 f0             	mov    %eax,-0x10(%rbp)
   100001289:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   10000128d:	8b 40 04             	mov    0x4(%rax),%eax
   100001290:	89 45 f4             	mov    %eax,-0xc(%rbp)
   100001293:	48 8d 05 66 1e 00 00 	lea    0x1e66(%rip),%rax        # 100003100 <_G_GameConfig>
   10000129a:	8b 40 20             	mov    0x20(%rax),%eax
   10000129d:	89 45 f8             	mov    %eax,-0x8(%rbp)
   1000012a0:	48 8d 05 59 1e 00 00 	lea    0x1e59(%rip),%rax        # 100003100 <_G_GameConfig>
   1000012a7:	8b 40 20             	mov    0x20(%rax),%eax
   1000012aa:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1000012ad:	48 8b 05 34 1e 00 00 	mov    0x1e34(%rip),%rax        # 1000030e8 <_sdlRenderer>
   1000012b4:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
   1000012b8:	48 89 d6             	mov    %rdx,%rsi
   1000012bb:	48 89 c7             	mov    %rax,%rdi
   1000012be:	e8 43 10 00 00       	callq  100002306 <_SDL_RenderFillRect$stub>
   1000012c3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000012c7:	0f b6 40 0b          	movzbl 0xb(%rax),%eax
   1000012cb:	0f b6 f8             	movzbl %al,%edi
   1000012ce:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000012d2:	0f b6 40 0a          	movzbl 0xa(%rax),%eax
   1000012d6:	83 e8 28             	sub    $0x28,%eax
   1000012d9:	0f b6 c8             	movzbl %al,%ecx
   1000012dc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000012e0:	0f b6 40 09          	movzbl 0x9(%rax),%eax
   1000012e4:	83 e8 28             	sub    $0x28,%eax
   1000012e7:	0f b6 d0             	movzbl %al,%edx
   1000012ea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000012ee:	0f b6 40 08          	movzbl 0x8(%rax),%eax
   1000012f2:	83 e8 28             	sub    $0x28,%eax
   1000012f5:	0f b6 f0             	movzbl %al,%esi
   1000012f8:	48 8b 05 e9 1d 00 00 	mov    0x1de9(%rip),%rax        # 1000030e8 <_sdlRenderer>
   1000012ff:	41 89 f8             	mov    %edi,%r8d
   100001302:	48 89 c7             	mov    %rax,%rdi
   100001305:	e8 0e 10 00 00       	callq  100002318 <_SDL_SetRenderDrawColor$stub>
   10000130a:	48 8b 05 d7 1d 00 00 	mov    0x1dd7(%rip),%rax        # 1000030e8 <_sdlRenderer>
   100001311:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
   100001315:	48 89 d6             	mov    %rdx,%rsi
   100001318:	48 89 c7             	mov    %rax,%rdi
   10000131b:	e8 e0 0f 00 00       	callq  100002300 <_SDL_RenderDrawRect$stub>
   100001320:	c9                   	leaveq 
   100001321:	c3                   	retq   

0000000100001322 <_renderGame>:
   100001322:	55                   	push   %rbp
   100001323:	48 89 e5             	mov    %rsp,%rbp
   100001326:	48 83 ec 30          	sub    $0x30,%rsp
   10000132a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   10000132e:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
   100001333:	0f 94 c0             	sete   %al
   100001336:	0f b6 c0             	movzbl %al,%eax
   100001339:	48 85 c0             	test   %rax,%rax
   10000133c:	74 1f                	je     10000135d <_renderGame+0x3b>
   10000133e:	48 8d 0d 4b 11 00 00 	lea    0x114b(%rip),%rcx        # 100002490 <_realloc$stub+0x142>
   100001345:	ba 77 00 00 00       	mov    $0x77,%edx
   10000134a:	48 8d 35 25 11 00 00 	lea    0x1125(%rip),%rsi        # 100002476 <_realloc$stub+0x128>
   100001351:	48 8d 3d 96 14 00 00 	lea    0x1496(%rip),%rdi        # 1000027ee <___func__.9243>
   100001358:	e8 c1 0f 00 00       	callq  10000231e <___assert_rtn$stub>
   10000135d:	48 8b 05 9c 1c 00 00 	mov    0x1c9c(%rip),%rax        # 100003000 <___stderrp$stub>
   100001364:	48 8b 00             	mov    (%rax),%rax
   100001367:	48 89 c1             	mov    %rax,%rcx
   10000136a:	ba 0a 00 00 00       	mov    $0xa,%edx
   10000136f:	be 01 00 00 00       	mov    $0x1,%esi
   100001374:	48 8d 3d 27 11 00 00 	lea    0x1127(%rip),%rdi        # 1000024a2 <_realloc$stub+0x154>
   10000137b:	e8 bc 0f 00 00       	callq  10000233c <_fwrite$stub>
   100001380:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001384:	8b 40 04             	mov    0x4(%rax),%eax
   100001387:	85 c0                	test   %eax,%eax
   100001389:	75 18                	jne    1000013a3 <_renderGame+0x81>
   10000138b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   10000138f:	48 89 c7             	mov    %rax,%rdi
   100001392:	e8 f8 fb ff ff       	callq  100000f8f <_generateWalls>
   100001397:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   10000139b:	48 89 c7             	mov    %rax,%rdi
   10000139e:	e8 dd fd ff ff       	callq  100001180 <_putTetrisBlock>
   1000013a3:	b8 00 00 00 00       	mov    $0x0,%eax
   1000013a8:	e8 21 fe ff ff       	callq  1000011ce <_renderBackground>
   1000013ad:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   1000013b4:	eb 29                	jmp    1000013df <_renderGame+0xbd>
   1000013b6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1000013ba:	48 8d 48 30          	lea    0x30(%rax),%rcx
   1000013be:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
   1000013c2:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1000013c5:	89 c6                	mov    %eax,%esi
   1000013c7:	48 89 cf             	mov    %rcx,%rdi
   1000013ca:	e8 63 08 00 00       	callq  100001c32 <_DL_getAt>
   1000013cf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1000013d3:	48 89 c7             	mov    %rax,%rdi
   1000013d6:	e8 2c fe ff ff       	callq  100001207 <_renderBlock>
   1000013db:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   1000013df:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1000013e3:	8b 40 38             	mov    0x38(%rax),%eax
   1000013e6:	3b 45 fc             	cmp    -0x4(%rbp),%eax
   1000013e9:	7f cb                	jg     1000013b6 <_renderGame+0x94>
   1000013eb:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   1000013f2:	eb 29                	jmp    10000141d <_renderGame+0xfb>
   1000013f4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   1000013f8:	48 8d 48 10          	lea    0x10(%rax),%rcx
   1000013fc:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
   100001400:	8b 45 fc             	mov    -0x4(%rbp),%eax
   100001403:	89 c6                	mov    %eax,%esi
   100001405:	48 89 cf             	mov    %rcx,%rdi
   100001408:	e8 25 08 00 00       	callq  100001c32 <_DL_getAt>
   10000140d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001411:	48 89 c7             	mov    %rax,%rdi
   100001414:	e8 ee fd ff ff       	callq  100001207 <_renderBlock>
   100001419:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   10000141d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001421:	8b 40 18             	mov    0x18(%rax),%eax
   100001424:	3b 45 fc             	cmp    -0x4(%rbp),%eax
   100001427:	7f cb                	jg     1000013f4 <_renderGame+0xd2>
   100001429:	48 8b 05 b8 1c 00 00 	mov    0x1cb8(%rip),%rax        # 1000030e8 <_sdlRenderer>
   100001430:	48 89 c7             	mov    %rax,%rdi
   100001433:	e8 d4 0e 00 00       	callq  10000230c <_SDL_RenderPresent$stub>
   100001438:	c9                   	leaveq 
   100001439:	c3                   	retq   

000000010000143a <_handleKeyEvents>:
   10000143a:	55                   	push   %rbp
   10000143b:	48 89 e5             	mov    %rsp,%rbp
   10000143e:	48 83 ec 10          	sub    $0x10,%rsp
   100001442:	bf 00 00 00 00       	mov    $0x0,%edi
   100001447:	e8 90 0e 00 00       	callq  1000022dc <_SDL_GetKeyboardState$stub>
   10000144c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   100001450:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001454:	48 83 c0 52          	add    $0x52,%rax
   100001458:	0f b6 00             	movzbl (%rax),%eax
   10000145b:	84 c0                	test   %al,%al
   10000145d:	74 28                	je     100001487 <_handleKeyEvents+0x4d>
   10000145f:	48 8b 05 9a 1b 00 00 	mov    0x1b9a(%rip),%rax        # 100003000 <___stderrp$stub>
   100001466:	48 8b 00             	mov    (%rax),%rax
   100001469:	48 89 c1             	mov    %rax,%rcx
   10000146c:	ba 03 00 00 00       	mov    $0x3,%edx
   100001471:	be 01 00 00 00       	mov    $0x1,%esi
   100001476:	48 8d 3d 30 10 00 00 	lea    0x1030(%rip),%rdi        # 1000024ad <_realloc$stub+0x15f>
   10000147d:	e8 ba 0e 00 00       	callq  10000233c <_fwrite$stub>
   100001482:	e9 d1 00 00 00       	jmpq   100001558 <_handleKeyEvents+0x11e>
   100001487:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   10000148b:	48 83 c0 51          	add    $0x51,%rax
   10000148f:	0f b6 00             	movzbl (%rax),%eax
   100001492:	84 c0                	test   %al,%al
   100001494:	74 28                	je     1000014be <_handleKeyEvents+0x84>
   100001496:	48 8b 05 63 1b 00 00 	mov    0x1b63(%rip),%rax        # 100003000 <___stderrp$stub>
   10000149d:	48 8b 00             	mov    (%rax),%rax
   1000014a0:	48 89 c1             	mov    %rax,%rcx
   1000014a3:	ba 05 00 00 00       	mov    $0x5,%edx
   1000014a8:	be 01 00 00 00       	mov    $0x1,%esi
   1000014ad:	48 8d 3d fd 0f 00 00 	lea    0xffd(%rip),%rdi        # 1000024b1 <_realloc$stub+0x163>
   1000014b4:	e8 83 0e 00 00       	callq  10000233c <_fwrite$stub>
   1000014b9:	e9 9a 00 00 00       	jmpq   100001558 <_handleKeyEvents+0x11e>
   1000014be:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000014c2:	48 83 c0 50          	add    $0x50,%rax
   1000014c6:	0f b6 00             	movzbl (%rax),%eax
   1000014c9:	84 c0                	test   %al,%al
   1000014cb:	74 25                	je     1000014f2 <_handleKeyEvents+0xb8>
   1000014cd:	48 8b 05 2c 1b 00 00 	mov    0x1b2c(%rip),%rax        # 100003000 <___stderrp$stub>
   1000014d4:	48 8b 00             	mov    (%rax),%rax
   1000014d7:	48 89 c1             	mov    %rax,%rcx
   1000014da:	ba 05 00 00 00       	mov    $0x5,%edx
   1000014df:	be 01 00 00 00       	mov    $0x1,%esi
   1000014e4:	48 8d 3d cc 0f 00 00 	lea    0xfcc(%rip),%rdi        # 1000024b7 <_realloc$stub+0x169>
   1000014eb:	e8 4c 0e 00 00       	callq  10000233c <_fwrite$stub>
   1000014f0:	eb 66                	jmp    100001558 <_handleKeyEvents+0x11e>
   1000014f2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000014f6:	48 83 c0 4f          	add    $0x4f,%rax
   1000014fa:	0f b6 00             	movzbl (%rax),%eax
   1000014fd:	84 c0                	test   %al,%al
   1000014ff:	74 25                	je     100001526 <_handleKeyEvents+0xec>
   100001501:	48 8b 05 f8 1a 00 00 	mov    0x1af8(%rip),%rax        # 100003000 <___stderrp$stub>
   100001508:	48 8b 00             	mov    (%rax),%rax
   10000150b:	48 89 c1             	mov    %rax,%rcx
   10000150e:	ba 06 00 00 00       	mov    $0x6,%edx
   100001513:	be 01 00 00 00       	mov    $0x1,%esi
   100001518:	48 8d 3d 9e 0f 00 00 	lea    0xf9e(%rip),%rdi        # 1000024bd <_realloc$stub+0x16f>
   10000151f:	e8 18 0e 00 00       	callq  10000233c <_fwrite$stub>
   100001524:	eb 32                	jmp    100001558 <_handleKeyEvents+0x11e>
   100001526:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   10000152a:	48 83 c0 2c          	add    $0x2c,%rax
   10000152e:	0f b6 00             	movzbl (%rax),%eax
   100001531:	84 c0                	test   %al,%al
   100001533:	74 23                	je     100001558 <_handleKeyEvents+0x11e>
   100001535:	48 8b 05 c4 1a 00 00 	mov    0x1ac4(%rip),%rax        # 100003000 <___stderrp$stub>
   10000153c:	48 8b 00             	mov    (%rax),%rax
   10000153f:	48 89 c1             	mov    %rax,%rcx
   100001542:	ba 06 00 00 00       	mov    $0x6,%edx
   100001547:	be 01 00 00 00       	mov    $0x1,%esi
   10000154c:	48 8d 3d 71 0f 00 00 	lea    0xf71(%rip),%rdi        # 1000024c4 <_realloc$stub+0x176>
   100001553:	e8 e4 0d 00 00       	callq  10000233c <_fwrite$stub>
   100001558:	c9                   	leaveq 
   100001559:	c3                   	retq   

000000010000155a <_handleEvent>:
   10000155a:	55                   	push   %rbp
   10000155b:	48 89 e5             	mov    %rsp,%rbp
   10000155e:	48 83 ec 60          	sub    $0x60,%rsp
   100001562:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
   100001566:	89 75 a4             	mov    %esi,-0x5c(%rbp)
   100001569:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
   10000156d:	e8 70 0d 00 00       	callq  1000022e2 <_SDL_GetTicks$stub>
   100001572:	89 45 f8             	mov    %eax,-0x8(%rbp)
   100001575:	eb 75                	jmp    1000015ec <_handleEvent+0x92>
   100001577:	e8 66 0d 00 00       	callq  1000022e2 <_SDL_GetTicks$stub>
   10000157c:	2b 45 f8             	sub    -0x8(%rbp),%eax
   10000157f:	89 45 f4             	mov    %eax,-0xc(%rbp)
   100001582:	8b 45 f4             	mov    -0xc(%rbp),%eax
   100001585:	3b 45 a4             	cmp    -0x5c(%rbp),%eax
   100001588:	72 02                	jb     10000158c <_handleEvent+0x32>
   10000158a:	eb 66                	jmp    1000015f2 <_handleEvent+0x98>
   10000158c:	eb 4e                	jmp    1000015dc <_handleEvent+0x82>
   10000158e:	8b 45 b0             	mov    -0x50(%rbp),%eax
   100001591:	3d 00 01 00 00       	cmp    $0x100,%eax
   100001596:	74 09                	je     1000015a1 <_handleEvent+0x47>
   100001598:	3d 00 03 00 00       	cmp    $0x300,%eax
   10000159d:	74 0f                	je     1000015ae <_handleEvent+0x54>
   10000159f:	eb 3b                	jmp    1000015dc <_handleEvent+0x82>
   1000015a1:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
   1000015a5:	c6 00 01             	movb   $0x1,(%rax)
   1000015a8:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
   1000015ac:	eb 2e                	jmp    1000015dc <_handleEvent+0x82>
   1000015ae:	48 8b 05 4b 1a 00 00 	mov    0x1a4b(%rip),%rax        # 100003000 <___stderrp$stub>
   1000015b5:	48 8b 00             	mov    (%rax),%rax
   1000015b8:	48 89 c1             	mov    %rax,%rcx
   1000015bb:	ba 09 00 00 00       	mov    $0x9,%edx
   1000015c0:	be 01 00 00 00       	mov    $0x1,%esi
   1000015c5:	48 8d 3d ff 0e 00 00 	lea    0xeff(%rip),%rdi        # 1000024cb <_realloc$stub+0x17d>
   1000015cc:	e8 6b 0d 00 00       	callq  10000233c <_fwrite$stub>
   1000015d1:	b8 00 00 00 00       	mov    $0x0,%eax
   1000015d6:	e8 5f fe ff ff       	callq  10000143a <_handleKeyEvents>
   1000015db:	90                   	nop
   1000015dc:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
   1000015e0:	48 89 c7             	mov    %rax,%rdi
   1000015e3:	e8 06 0d 00 00       	callq  1000022ee <_SDL_PollEvent$stub>
   1000015e8:	85 c0                	test   %eax,%eax
   1000015ea:	75 a2                	jne    10000158e <_handleEvent+0x34>
   1000015ec:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
   1000015f0:	75 85                	jne    100001577 <_handleEvent+0x1d>
   1000015f2:	c9                   	leaveq 
   1000015f3:	c3                   	retq   

00000001000015f4 <_initialiseGameConfigs>:
   1000015f4:	55                   	push   %rbp
   1000015f5:	48 89 e5             	mov    %rsp,%rbp
   1000015f8:	48 8d 05 01 1b 00 00 	lea    0x1b01(%rip),%rax        # 100003100 <_G_GameConfig>
   1000015ff:	c7 40 14 f4 01 00 00 	movl   $0x1f4,0x14(%rax)
   100001606:	48 8d 05 f3 1a 00 00 	lea    0x1af3(%rip),%rax        # 100003100 <_G_GameConfig>
   10000160d:	c7 40 18 44 02 00 00 	movl   $0x244,0x18(%rax)
   100001614:	48 8d 05 e5 1a 00 00 	lea    0x1ae5(%rip),%rax        # 100003100 <_G_GameConfig>
   10000161b:	c7 00 3c 00 00 00    	movl   $0x3c,(%rax)
   100001621:	48 8d 05 d8 1a 00 00 	lea    0x1ad8(%rip),%rax        # 100003100 <_G_GameConfig>
   100001628:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%rax)
   10000162f:	48 8d 05 ca 1a 00 00 	lea    0x1aca(%rip),%rax        # 100003100 <_G_GameConfig>
   100001636:	c7 40 0c 15 00 00 00 	movl   $0x15,0xc(%rax)
   10000163d:	48 8d 05 bc 1a 00 00 	lea    0x1abc(%rip),%rax        # 100003100 <_G_GameConfig>
   100001644:	c7 40 10 0b 00 00 00 	movl   $0xb,0x10(%rax)
   10000164b:	48 8d 15 ae 1a 00 00 	lea    0x1aae(%rip),%rdx        # 100003100 <_G_GameConfig>
   100001652:	8b 05 a4 11 00 00    	mov    0x11a4(%rip),%eax        # 1000027fc <___func__.9243+0xe>
   100001658:	89 42 1c             	mov    %eax,0x1c(%rdx)
   10000165b:	48 8d 05 9e 1a 00 00 	lea    0x1a9e(%rip),%rax        # 100003100 <_G_GameConfig>
   100001662:	c7 40 20 19 00 00 00 	movl   $0x19,0x20(%rax)
   100001669:	5d                   	pop    %rbp
   10000166a:	c3                   	retq   

000000010000166b <_initSDL>:
   10000166b:	55                   	push   %rbp
   10000166c:	48 89 e5             	mov    %rsp,%rbp
   10000166f:	bf 31 72 00 00       	mov    $0x7231,%edi
   100001674:	e8 6f 0c 00 00       	callq  1000022e8 <_SDL_Init$stub>
   100001679:	85 c0                	test   %eax,%eax
   10000167b:	79 30                	jns    1000016ad <_initSDL+0x42>
   10000167d:	e8 54 0c 00 00       	callq  1000022d6 <_SDL_GetError$stub>
   100001682:	48 89 c2             	mov    %rax,%rdx
   100001685:	48 8b 05 74 19 00 00 	mov    0x1974(%rip),%rax        # 100003000 <___stderrp$stub>
   10000168c:	48 8b 00             	mov    (%rax),%rax
   10000168f:	48 8d 35 42 0e 00 00 	lea    0xe42(%rip),%rsi        # 1000024d8 <_realloc$stub+0x18a>
   100001696:	48 89 c7             	mov    %rax,%rdi
   100001699:	b8 00 00 00 00       	mov    $0x0,%eax
   10000169e:	e8 8d 0c 00 00       	callq  100002330 <_fprintf$stub>
   1000016a3:	b8 00 00 00 00       	mov    $0x0,%eax
   1000016a8:	e9 01 01 00 00       	jmpq   1000017ae <_initSDL+0x143>
   1000016ad:	48 8d 05 4c 1a 00 00 	lea    0x1a4c(%rip),%rax        # 100003100 <_G_GameConfig>
   1000016b4:	8b 40 18             	mov    0x18(%rax),%eax
   1000016b7:	89 c2                	mov    %eax,%edx
   1000016b9:	48 8d 05 40 1a 00 00 	lea    0x1a40(%rip),%rax        # 100003100 <_G_GameConfig>
   1000016c0:	8b 40 14             	mov    0x14(%rax),%eax
   1000016c3:	41 b9 04 00 00 00    	mov    $0x4,%r9d
   1000016c9:	41 89 d0             	mov    %edx,%r8d
   1000016cc:	89 c1                	mov    %eax,%ecx
   1000016ce:	ba 00 00 ff 1f       	mov    $0x1fff0000,%edx
   1000016d3:	be 00 00 ff 1f       	mov    $0x1fff0000,%esi
   1000016d8:	48 8d 3d 35 0e 00 00 	lea    0xe35(%rip),%rdi        # 100002514 <_realloc$stub+0x1c6>
   1000016df:	e8 e0 0b 00 00       	callq  1000022c4 <_SDL_CreateWindow$stub>
   1000016e4:	48 89 05 05 1a 00 00 	mov    %rax,0x1a05(%rip)        # 1000030f0 <_window>
   1000016eb:	48 8b 05 fe 19 00 00 	mov    0x19fe(%rip),%rax        # 1000030f0 <_window>
   1000016f2:	48 85 c0             	test   %rax,%rax
   1000016f5:	75 30                	jne    100001727 <_initSDL+0xbc>
   1000016f7:	e8 da 0b 00 00       	callq  1000022d6 <_SDL_GetError$stub>
   1000016fc:	48 89 c2             	mov    %rax,%rdx
   1000016ff:	48 8b 05 fa 18 00 00 	mov    0x18fa(%rip),%rax        # 100003000 <___stderrp$stub>
   100001706:	48 8b 00             	mov    (%rax),%rax
   100001709:	48 8d 35 10 0e 00 00 	lea    0xe10(%rip),%rsi        # 100002520 <_realloc$stub+0x1d2>
   100001710:	48 89 c7             	mov    %rax,%rdi
   100001713:	b8 00 00 00 00       	mov    $0x0,%eax
   100001718:	e8 13 0c 00 00       	callq  100002330 <_fprintf$stub>
   10000171d:	b8 00 00 00 00       	mov    $0x0,%eax
   100001722:	e9 87 00 00 00       	jmpq   1000017ae <_initSDL+0x143>
   100001727:	48 8b 05 c2 19 00 00 	mov    0x19c2(%rip),%rax        # 1000030f0 <_window>
   10000172e:	ba 01 00 00 00       	mov    $0x1,%edx
   100001733:	be ff ff ff ff       	mov    $0xffffffff,%esi
   100001738:	48 89 c7             	mov    %rax,%rdi
   10000173b:	e8 7e 0b 00 00       	callq  1000022be <_SDL_CreateRenderer$stub>
   100001740:	48 89 05 b1 19 00 00 	mov    %rax,0x19b1(%rip)        # 1000030f8 <_renderer>
   100001747:	48 8b 05 aa 19 00 00 	mov    0x19aa(%rip),%rax        # 1000030f8 <_renderer>
   10000174e:	48 85 c0             	test   %rax,%rax
   100001751:	75 2d                	jne    100001780 <_initSDL+0x115>
   100001753:	e8 7e 0b 00 00       	callq  1000022d6 <_SDL_GetError$stub>
   100001758:	48 89 c2             	mov    %rax,%rdx
   10000175b:	48 8b 05 9e 18 00 00 	mov    0x189e(%rip),%rax        # 100003000 <___stderrp$stub>
   100001762:	48 8b 00             	mov    (%rax),%rax
   100001765:	48 8d 35 fc 0d 00 00 	lea    0xdfc(%rip),%rsi        # 100002568 <_realloc$stub+0x21a>
   10000176c:	48 89 c7             	mov    %rax,%rdi
   10000176f:	b8 00 00 00 00       	mov    $0x0,%eax
   100001774:	e8 b7 0b 00 00       	callq  100002330 <_fprintf$stub>
   100001779:	b8 00 00 00 00       	mov    $0x0,%eax
   10000177e:	eb 2e                	jmp    1000017ae <_initSDL+0x143>
   100001780:	48 8d 05 79 19 00 00 	lea    0x1979(%rip),%rax        # 100003100 <_G_GameConfig>
   100001787:	8b 40 18             	mov    0x18(%rax),%eax
   10000178a:	89 c2                	mov    %eax,%edx
   10000178c:	48 8d 05 6d 19 00 00 	lea    0x196d(%rip),%rax        # 100003100 <_G_GameConfig>
   100001793:	8b 40 14             	mov    0x14(%rax),%eax
   100001796:	89 c1                	mov    %eax,%ecx
   100001798:	48 8b 05 59 19 00 00 	mov    0x1959(%rip),%rax        # 1000030f8 <_renderer>
   10000179f:	89 ce                	mov    %ecx,%esi
   1000017a1:	48 89 c7             	mov    %rax,%rdi
   1000017a4:	e8 69 0b 00 00       	callq  100002312 <_SDL_RenderSetLogicalSize$stub>
   1000017a9:	b8 01 00 00 00       	mov    $0x1,%eax
   1000017ae:	5d                   	pop    %rbp
   1000017af:	c3                   	retq   

00000001000017b0 <_closeSDL>:
   1000017b0:	55                   	push   %rbp
   1000017b1:	48 89 e5             	mov    %rsp,%rbp
   1000017b4:	48 8b 05 3d 19 00 00 	mov    0x193d(%rip),%rax        # 1000030f8 <_renderer>
   1000017bb:	48 89 c7             	mov    %rax,%rdi
   1000017be:	e8 07 0b 00 00       	callq  1000022ca <_SDL_DestroyRenderer$stub>
   1000017c3:	48 c7 05 2a 19 00 00 	movq   $0x0,0x192a(%rip)        # 1000030f8 <_renderer>
   1000017ca:	00 00 00 00 
   1000017ce:	48 8b 05 1b 19 00 00 	mov    0x191b(%rip),%rax        # 1000030f0 <_window>
   1000017d5:	48 89 c7             	mov    %rax,%rdi
   1000017d8:	e8 f3 0a 00 00       	callq  1000022d0 <_SDL_DestroyWindow$stub>
   1000017dd:	48 c7 05 08 19 00 00 	movq   $0x0,0x1908(%rip)        # 1000030f0 <_window>
   1000017e4:	00 00 00 00 
   1000017e8:	e8 07 0b 00 00       	callq  1000022f4 <_SDL_Quit$stub>
   1000017ed:	5d                   	pop    %rbp
   1000017ee:	c3                   	retq   

00000001000017ef <_main>:
   1000017ef:	55                   	push   %rbp
   1000017f0:	48 89 e5             	mov    %rsp,%rbp
   1000017f3:	b8 00 00 00 00       	mov    $0x0,%eax
   1000017f8:	e8 f7 fd ff ff       	callq  1000015f4 <_initialiseGameConfigs>
   1000017fd:	b8 00 00 00 00       	mov    $0x0,%eax
   100001802:	e8 64 fe ff ff       	callq  10000166b <_initSDL>
   100001807:	83 f0 01             	xor    $0x1,%eax
   10000180a:	84 c0                	test   %al,%al
   10000180c:	74 25                	je     100001833 <_main+0x44>
   10000180e:	48 8b 05 eb 17 00 00 	mov    0x17eb(%rip),%rax        # 100003000 <___stderrp$stub>
   100001815:	48 8b 00             	mov    (%rax),%rax
   100001818:	48 89 c1             	mov    %rax,%rcx
   10000181b:	ba 2d 00 00 00       	mov    $0x2d,%edx
   100001820:	be 01 00 00 00       	mov    $0x1,%esi
   100001825:	48 8d 3d 8c 0d 00 00 	lea    0xd8c(%rip),%rdi        # 1000025b8 <_realloc$stub+0x26a>
   10000182c:	e8 0b 0b 00 00       	callq  10000233c <_fwrite$stub>
   100001831:	eb 19                	jmp    10000184c <_main+0x5d>
   100001833:	48 8b 15 be 18 00 00 	mov    0x18be(%rip),%rdx        # 1000030f8 <_renderer>
   10000183a:	48 8b 05 af 18 00 00 	mov    0x18af(%rip),%rax        # 1000030f0 <_window>
   100001841:	48 89 d6             	mov    %rdx,%rsi
   100001844:	48 89 c7             	mov    %rax,%rdi
   100001847:	e8 b3 08 00 00       	callq  1000020ff <_runGameLoop>
   10000184c:	b8 00 00 00 00       	mov    $0x0,%eax
   100001851:	e8 5a ff ff ff       	callq  1000017b0 <_closeSDL>
   100001856:	b8 00 00 00 00       	mov    $0x0,%eax
   10000185b:	5d                   	pop    %rbp
   10000185c:	c3                   	retq   

000000010000185d <_hasSpaceLeft>:
   10000185d:	55                   	push   %rbp
   10000185e:	48 89 e5             	mov    %rsp,%rbp
   100001861:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   100001865:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001869:	8b 50 04             	mov    0x4(%rax),%edx
   10000186c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001870:	8b 48 08             	mov    0x8(%rax),%ecx
   100001873:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001877:	8b 00                	mov    (%rax),%eax
   100001879:	0f af c1             	imul   %ecx,%eax
   10000187c:	29 c2                	sub    %eax,%edx
   10000187e:	89 d0                	mov    %edx,%eax
   100001880:	85 c0                	test   %eax,%eax
   100001882:	7e 07                	jle    10000188b <_hasSpaceLeft+0x2e>
   100001884:	b8 01 00 00 00       	mov    $0x1,%eax
   100001889:	eb 05                	jmp    100001890 <_hasSpaceLeft+0x33>
   10000188b:	b8 00 00 00 00       	mov    $0x0,%eax
   100001890:	5d                   	pop    %rbp
   100001891:	c3                   	retq   

0000000100001892 <_resizeList>:
   100001892:	55                   	push   %rbp
   100001893:	48 89 e5             	mov    %rsp,%rbp
   100001896:	48 83 ec 20          	sub    $0x20,%rsp
   10000189a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   10000189e:	89 75 e4             	mov    %esi,-0x1c(%rbp)
   1000018a1:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
   1000018a5:	79 05                	jns    1000018ac <_resizeList+0x1a>
   1000018a7:	e9 86 00 00 00       	jmpq   100001932 <_resizeList+0xa0>
   1000018ac:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
   1000018b0:	7e 10                	jle    1000018c2 <_resizeList+0x30>
   1000018b2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000018b6:	8b 40 04             	mov    0x4(%rax),%eax
   1000018b9:	0f af 45 e4          	imul   -0x1c(%rbp),%eax
   1000018bd:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1000018c0:	eb 13                	jmp    1000018d5 <_resizeList+0x43>
   1000018c2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000018c6:	8b 50 08             	mov    0x8(%rax),%edx
   1000018c9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000018cd:	8b 00                	mov    (%rax),%eax
   1000018cf:	0f af c2             	imul   %edx,%eax
   1000018d2:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1000018d5:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1000018d8:	48 63 d0             	movslq %eax,%rdx
   1000018db:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000018df:	48 8b 40 10          	mov    0x10(%rax),%rax
   1000018e3:	48 89 d6             	mov    %rdx,%rsi
   1000018e6:	48 89 c7             	mov    %rax,%rdi
   1000018e9:	e8 60 0a 00 00       	callq  10000234e <_realloc$stub>
   1000018ee:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   1000018f2:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   1000018f7:	75 23                	jne    10000191c <_resizeList+0x8a>
   1000018f9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1000018fd:	8b 50 04             	mov    0x4(%rax),%edx
   100001900:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001904:	8b 00                	mov    (%rax),%eax
   100001906:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
   100001909:	89 c6                	mov    %eax,%esi
   10000190b:	48 8d 3d d6 0c 00 00 	lea    0xcd6(%rip),%rdi        # 1000025e8 <_realloc$stub+0x29a>
   100001912:	b8 00 00 00 00       	mov    $0x0,%eax
   100001917:	e8 2c 0a 00 00       	callq  100002348 <_printf$stub>
   10000191c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001920:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   100001924:	48 89 50 10          	mov    %rdx,0x10(%rax)
   100001928:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   10000192c:	8b 55 fc             	mov    -0x4(%rbp),%edx
   10000192f:	89 50 04             	mov    %edx,0x4(%rax)
   100001932:	c9                   	leaveq 
   100001933:	c3                   	retq   

0000000100001934 <_compactList>:
   100001934:	55                   	push   %rbp
   100001935:	48 89 e5             	mov    %rsp,%rbp
   100001938:	48 83 ec 10          	sub    $0x10,%rsp
   10000193c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   100001940:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001944:	be 00 00 00 00       	mov    $0x0,%esi
   100001949:	48 89 c7             	mov    %rax,%rdi
   10000194c:	e8 41 ff ff ff       	callq  100001892 <_resizeList>
   100001951:	c9                   	leaveq 
   100001952:	c3                   	retq   

0000000100001953 <_indexInBound>:
   100001953:	55                   	push   %rbp
   100001954:	48 89 e5             	mov    %rsp,%rbp
   100001957:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   10000195b:	89 75 f4             	mov    %esi,-0xc(%rbp)
   10000195e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001962:	8b 40 08             	mov    0x8(%rax),%eax
   100001965:	85 c0                	test   %eax,%eax
   100001967:	7e 20                	jle    100001989 <_indexInBound+0x36>
   100001969:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   10000196d:	8b 40 08             	mov    0x8(%rax),%eax
   100001970:	3b 45 f4             	cmp    -0xc(%rbp),%eax
   100001973:	7e 14                	jle    100001989 <_indexInBound+0x36>
   100001975:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
   100001979:	78 0e                	js     100001989 <_indexInBound+0x36>
   10000197b:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   100001980:	74 07                	je     100001989 <_indexInBound+0x36>
   100001982:	b8 01 00 00 00       	mov    $0x1,%eax
   100001987:	eb 05                	jmp    10000198e <_indexInBound+0x3b>
   100001989:	b8 00 00 00 00       	mov    $0x0,%eax
   10000198e:	5d                   	pop    %rbp
   10000198f:	c3                   	retq   

0000000100001990 <_DL_initialize>:
   100001990:	55                   	push   %rbp
   100001991:	48 89 e5             	mov    %rsp,%rbp
   100001994:	48 83 ec 20          	sub    $0x20,%rsp
   100001998:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   10000199c:	89 75 f4             	mov    %esi,-0xc(%rbp)
   10000199f:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
   1000019a3:	89 4d f0             	mov    %ecx,-0x10(%rbp)
   1000019a6:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
   1000019aa:	0f 9e c0             	setle  %al
   1000019ad:	0f b6 c0             	movzbl %al,%eax
   1000019b0:	48 85 c0             	test   %rax,%rax
   1000019b3:	75 0f                	jne    1000019c4 <_DL_initialize+0x34>
   1000019b5:	83 7d f0 00          	cmpl   $0x0,-0x10(%rbp)
   1000019b9:	0f 9e c0             	setle  %al
   1000019bc:	0f b6 c0             	movzbl %al,%eax
   1000019bf:	48 85 c0             	test   %rax,%rax
   1000019c2:	74 1f                	je     1000019e3 <_DL_initialize+0x53>
   1000019c4:	48 8d 0d 6d 0c 00 00 	lea    0xc6d(%rip),%rcx        # 100002638 <_realloc$stub+0x2ea>
   1000019cb:	ba 2d 00 00 00       	mov    $0x2d,%edx
   1000019d0:	48 8d 35 83 0c 00 00 	lea    0xc83(%rip),%rsi        # 10000265a <_realloc$stub+0x30c>
   1000019d7:	48 8d 3d 22 0e 00 00 	lea    0xe22(%rip),%rdi        # 100002800 <___func__.3305>
   1000019de:	e8 3b 09 00 00       	callq  10000231e <___assert_rtn$stub>
   1000019e3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000019e7:	8b 55 f4             	mov    -0xc(%rbp),%edx
   1000019ea:	89 10                	mov    %edx,(%rax)
   1000019ec:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000019f0:	8b 55 f0             	mov    -0x10(%rbp),%edx
   1000019f3:	89 50 04             	mov    %edx,0x4(%rax)
   1000019f6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000019fa:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
   100001a01:	8b 45 f4             	mov    -0xc(%rbp),%eax
   100001a04:	0f af 45 f0          	imul   -0x10(%rbp),%eax
   100001a08:	48 98                	cltq   
   100001a0a:	48 89 c7             	mov    %rax,%rdi
   100001a0d:	e8 30 09 00 00       	callq  100002342 <_malloc$stub>
   100001a12:	48 89 c2             	mov    %rax,%rdx
   100001a15:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001a19:	48 89 50 10          	mov    %rdx,0x10(%rax)
   100001a1d:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
   100001a22:	74 0e                	je     100001a32 <_DL_initialize+0xa2>
   100001a24:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001a28:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
   100001a2c:	48 89 50 18          	mov    %rdx,0x18(%rax)
   100001a30:	eb 0c                	jmp    100001a3e <_DL_initialize+0xae>
   100001a32:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001a36:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
   100001a3d:	00 
   100001a3e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001a42:	48 8b 40 10          	mov    0x10(%rax),%rax
   100001a46:	48 85 c0             	test   %rax,%rax
   100001a49:	0f 94 c0             	sete   %al
   100001a4c:	0f b6 c0             	movzbl %al,%eax
   100001a4f:	48 85 c0             	test   %rax,%rax
   100001a52:	74 1f                	je     100001a73 <_DL_initialize+0xe3>
   100001a54:	48 8d 0d 11 0c 00 00 	lea    0xc11(%rip),%rcx        # 10000266c <_realloc$stub+0x31e>
   100001a5b:	ba 37 00 00 00       	mov    $0x37,%edx
   100001a60:	48 8d 35 f3 0b 00 00 	lea    0xbf3(%rip),%rsi        # 10000265a <_realloc$stub+0x30c>
   100001a67:	48 8d 3d 92 0d 00 00 	lea    0xd92(%rip),%rdi        # 100002800 <___func__.3305>
   100001a6e:	e8 ab 08 00 00       	callq  10000231e <___assert_rtn$stub>
   100001a73:	c9                   	leaveq 
   100001a74:	c3                   	retq   

0000000100001a75 <_DL_removeAt>:
   100001a75:	55                   	push   %rbp
   100001a76:	48 89 e5             	mov    %rsp,%rbp
   100001a79:	48 83 ec 30          	sub    $0x30,%rsp
   100001a7d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   100001a81:	89 75 d4             	mov    %esi,-0x2c(%rbp)
   100001a84:	8b 55 d4             	mov    -0x2c(%rbp),%edx
   100001a87:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001a8b:	89 d6                	mov    %edx,%esi
   100001a8d:	48 89 c7             	mov    %rax,%rdi
   100001a90:	e8 be fe ff ff       	callq  100001953 <_indexInBound>
   100001a95:	83 f0 01             	xor    $0x1,%eax
   100001a98:	0f b6 c0             	movzbl %al,%eax
   100001a9b:	48 85 c0             	test   %rax,%rax
   100001a9e:	74 1f                	je     100001abf <_DL_removeAt+0x4a>
   100001aa0:	48 8d 0d e1 0b 00 00 	lea    0xbe1(%rip),%rcx        # 100002688 <_realloc$stub+0x33a>
   100001aa7:	ba 3c 00 00 00       	mov    $0x3c,%edx
   100001aac:	48 8d 35 a7 0b 00 00 	lea    0xba7(%rip),%rsi        # 10000265a <_realloc$stub+0x30c>
   100001ab3:	48 8d 3d 54 0d 00 00 	lea    0xd54(%rip),%rdi        # 10000280e <___func__.3310>
   100001aba:	e8 5f 08 00 00       	callq  10000231e <___assert_rtn$stub>
   100001abf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001ac3:	48 8b 50 10          	mov    0x10(%rax),%rdx
   100001ac7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001acb:	8b 00                	mov    (%rax),%eax
   100001acd:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
   100001ad1:	48 98                	cltq   
   100001ad3:	48 01 d0             	add    %rdx,%rax
   100001ad6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   100001ada:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001ade:	8b 00                	mov    (%rax),%eax
   100001ae0:	48 63 d0             	movslq %eax,%rdx
   100001ae3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001ae7:	48 01 d0             	add    %rdx,%rax
   100001aea:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   100001aee:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001af2:	8b 40 08             	mov    0x8(%rax),%eax
   100001af5:	2b 45 d4             	sub    -0x2c(%rbp),%eax
   100001af8:	89 45 ec             	mov    %eax,-0x14(%rbp)
   100001afb:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
   100001b02:	8b 45 ec             	mov    -0x14(%rbp),%eax
   100001b05:	48 63 d0             	movslq %eax,%rdx
   100001b08:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
   100001b0c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001b10:	48 89 c7             	mov    %rax,%rdi
   100001b13:	e8 12 08 00 00       	callq  10000232a <___memmove_chk$stub>
   100001b18:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001b1c:	8b 40 08             	mov    0x8(%rax),%eax
   100001b1f:	8d 50 ff             	lea    -0x1(%rax),%edx
   100001b22:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001b26:	89 50 08             	mov    %edx,0x8(%rax)
   100001b29:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001b2d:	48 89 c7             	mov    %rax,%rdi
   100001b30:	e8 ff fd ff ff       	callq  100001934 <_compactList>
   100001b35:	c9                   	leaveq 
   100001b36:	c3                   	retq   

0000000100001b37 <_DL_insertAt>:
   100001b37:	55                   	push   %rbp
   100001b38:	48 89 e5             	mov    %rsp,%rbp
   100001b3b:	48 83 ec 40          	sub    $0x40,%rsp
   100001b3f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   100001b43:	89 75 d4             	mov    %esi,-0x2c(%rbp)
   100001b46:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
   100001b4a:	8b 55 d4             	mov    -0x2c(%rbp),%edx
   100001b4d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001b51:	89 d6                	mov    %edx,%esi
   100001b53:	48 89 c7             	mov    %rax,%rdi
   100001b56:	e8 f8 fd ff ff       	callq  100001953 <_indexInBound>
   100001b5b:	83 f0 01             	xor    $0x1,%eax
   100001b5e:	84 c0                	test   %al,%al
   100001b60:	74 1b                	je     100001b7d <_DL_insertAt+0x46>
   100001b62:	8b 45 d4             	mov    -0x2c(%rbp),%eax
   100001b65:	89 c6                	mov    %eax,%esi
   100001b67:	48 8d 3d 3b 0b 00 00 	lea    0xb3b(%rip),%rdi        # 1000026a9 <_realloc$stub+0x35b>
   100001b6e:	b8 00 00 00 00       	mov    $0x0,%eax
   100001b73:	e8 d0 07 00 00       	callq  100002348 <_printf$stub>
   100001b78:	e9 b3 00 00 00       	jmpq   100001c30 <_DL_insertAt+0xf9>
   100001b7d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001b81:	48 89 c7             	mov    %rax,%rdi
   100001b84:	e8 d4 fc ff ff       	callq  10000185d <_hasSpaceLeft>
   100001b89:	83 f0 01             	xor    $0x1,%eax
   100001b8c:	84 c0                	test   %al,%al
   100001b8e:	74 11                	je     100001ba1 <_DL_insertAt+0x6a>
   100001b90:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001b94:	be 02 00 00 00       	mov    $0x2,%esi
   100001b99:	48 89 c7             	mov    %rax,%rdi
   100001b9c:	e8 f1 fc ff ff       	callq  100001892 <_resizeList>
   100001ba1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001ba5:	48 8b 50 10          	mov    0x10(%rax),%rdx
   100001ba9:	8b 45 d4             	mov    -0x2c(%rbp),%eax
   100001bac:	8d 48 01             	lea    0x1(%rax),%ecx
   100001baf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001bb3:	8b 00                	mov    (%rax),%eax
   100001bb5:	0f af c1             	imul   %ecx,%eax
   100001bb8:	48 98                	cltq   
   100001bba:	48 01 d0             	add    %rdx,%rax
   100001bbd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   100001bc1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001bc5:	8b 00                	mov    (%rax),%eax
   100001bc7:	48 98                	cltq   
   100001bc9:	48 f7 d8             	neg    %rax
   100001bcc:	48 89 c2             	mov    %rax,%rdx
   100001bcf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001bd3:	48 01 d0             	add    %rdx,%rax
   100001bd6:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   100001bda:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001bde:	8b 10                	mov    (%rax),%edx
   100001be0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001be4:	8b 40 08             	mov    0x8(%rax),%eax
   100001be7:	2b 45 d4             	sub    -0x2c(%rbp),%eax
   100001bea:	83 c0 01             	add    $0x1,%eax
   100001bed:	0f af c2             	imul   %edx,%eax
   100001bf0:	89 45 ec             	mov    %eax,-0x14(%rbp)
   100001bf3:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
   100001bfa:	8b 45 ec             	mov    -0x14(%rbp),%eax
   100001bfd:	48 63 d0             	movslq %eax,%rdx
   100001c00:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
   100001c04:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001c08:	48 89 c7             	mov    %rax,%rdi
   100001c0b:	e8 1a 07 00 00       	callq  10000232a <___memmove_chk$stub>
   100001c10:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
   100001c17:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001c1b:	8b 00                	mov    (%rax),%eax
   100001c1d:	48 63 d0             	movslq %eax,%rdx
   100001c20:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
   100001c24:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   100001c28:	48 89 c7             	mov    %rax,%rdi
   100001c2b:	e8 f4 06 00 00       	callq  100002324 <___memcpy_chk$stub>
   100001c30:	c9                   	leaveq 
   100001c31:	c3                   	retq   

0000000100001c32 <_DL_getAt>:
   100001c32:	55                   	push   %rbp
   100001c33:	48 89 e5             	mov    %rsp,%rbp
   100001c36:	48 83 ec 30          	sub    $0x30,%rsp
   100001c3a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   100001c3e:	89 75 e4             	mov    %esi,-0x1c(%rbp)
   100001c41:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
   100001c45:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
   100001c4a:	0f 94 c0             	sete   %al
   100001c4d:	0f b6 c0             	movzbl %al,%eax
   100001c50:	48 85 c0             	test   %rax,%rax
   100001c53:	74 1f                	je     100001c74 <_DL_getAt+0x42>
   100001c55:	48 8d 0d 67 0a 00 00 	lea    0xa67(%rip),%rcx        # 1000026c3 <_realloc$stub+0x375>
   100001c5c:	ba 5f 00 00 00       	mov    $0x5f,%edx
   100001c61:	48 8d 35 f2 09 00 00 	lea    0x9f2(%rip),%rsi        # 10000265a <_realloc$stub+0x30c>
   100001c68:	48 8d 3d ab 0b 00 00 	lea    0xbab(%rip),%rdi        # 10000281a <___func__.3327>
   100001c6f:	e8 aa 06 00 00       	callq  10000231e <___assert_rtn$stub>
   100001c74:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
   100001c79:	0f 94 c0             	sete   %al
   100001c7c:	0f b6 c0             	movzbl %al,%eax
   100001c7f:	48 85 c0             	test   %rax,%rax
   100001c82:	74 1f                	je     100001ca3 <_DL_getAt+0x71>
   100001c84:	48 8d 0d 45 0a 00 00 	lea    0xa45(%rip),%rcx        # 1000026d0 <_realloc$stub+0x382>
   100001c8b:	ba 60 00 00 00       	mov    $0x60,%edx
   100001c90:	48 8d 35 c3 09 00 00 	lea    0x9c3(%rip),%rsi        # 10000265a <_realloc$stub+0x30c>
   100001c97:	48 8d 3d 7c 0b 00 00 	lea    0xb7c(%rip),%rdi        # 10000281a <___func__.3327>
   100001c9e:	e8 7b 06 00 00       	callq  10000231e <___assert_rtn$stub>
   100001ca3:	8b 55 e4             	mov    -0x1c(%rbp),%edx
   100001ca6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001caa:	89 d6                	mov    %edx,%esi
   100001cac:	48 89 c7             	mov    %rax,%rdi
   100001caf:	e8 9f fc ff ff       	callq  100001953 <_indexInBound>
   100001cb4:	83 f0 01             	xor    $0x1,%eax
   100001cb7:	84 c0                	test   %al,%al
   100001cb9:	74 18                	je     100001cd3 <_DL_getAt+0xa1>
   100001cbb:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   100001cbe:	89 c6                	mov    %eax,%esi
   100001cc0:	48 8d 3d e2 09 00 00 	lea    0x9e2(%rip),%rdi        # 1000026a9 <_realloc$stub+0x35b>
   100001cc7:	b8 00 00 00 00       	mov    $0x0,%eax
   100001ccc:	e8 77 06 00 00       	callq  100002348 <_printf$stub>
   100001cd1:	eb 3b                	jmp    100001d0e <_DL_getAt+0xdc>
   100001cd3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001cd7:	48 8b 50 10          	mov    0x10(%rax),%rdx
   100001cdb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001cdf:	8b 00                	mov    (%rax),%eax
   100001ce1:	0f af 45 e4          	imul   -0x1c(%rbp),%eax
   100001ce5:	48 98                	cltq   
   100001ce7:	48 01 d0             	add    %rdx,%rax
   100001cea:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   100001cee:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
   100001cf5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001cf9:	8b 00                	mov    (%rax),%eax
   100001cfb:	48 63 d0             	movslq %eax,%rdx
   100001cfe:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
   100001d02:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   100001d06:	48 89 c7             	mov    %rax,%rdi
   100001d09:	e8 16 06 00 00       	callq  100002324 <___memcpy_chk$stub>
   100001d0e:	c9                   	leaveq 
   100001d0f:	c3                   	retq   

0000000100001d10 <_DL_push>:
   100001d10:	55                   	push   %rbp
   100001d11:	48 89 e5             	mov    %rsp,%rbp
   100001d14:	48 83 ec 10          	sub    $0x10,%rsp
   100001d18:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   100001d1c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
   100001d20:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   100001d25:	0f 94 c0             	sete   %al
   100001d28:	0f b6 c0             	movzbl %al,%eax
   100001d2b:	48 85 c0             	test   %rax,%rax
   100001d2e:	74 1f                	je     100001d4f <_DL_push+0x3f>
   100001d30:	48 8d 0d 8c 09 00 00 	lea    0x98c(%rip),%rcx        # 1000026c3 <_realloc$stub+0x375>
   100001d37:	ba 6d 00 00 00       	mov    $0x6d,%edx
   100001d3c:	48 8d 35 17 09 00 00 	lea    0x917(%rip),%rsi        # 10000265a <_realloc$stub+0x30c>
   100001d43:	48 8d 3d d9 0a 00 00 	lea    0xad9(%rip),%rdi        # 100002823 <___func__.3333>
   100001d4a:	e8 cf 05 00 00       	callq  10000231e <___assert_rtn$stub>
   100001d4f:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
   100001d54:	0f 94 c0             	sete   %al
   100001d57:	0f b6 c0             	movzbl %al,%eax
   100001d5a:	48 85 c0             	test   %rax,%rax
   100001d5d:	74 1f                	je     100001d7e <_DL_push+0x6e>
   100001d5f:	48 8d 0d 7c 09 00 00 	lea    0x97c(%rip),%rcx        # 1000026e2 <_realloc$stub+0x394>
   100001d66:	ba 6e 00 00 00       	mov    $0x6e,%edx
   100001d6b:	48 8d 35 e8 08 00 00 	lea    0x8e8(%rip),%rsi        # 10000265a <_realloc$stub+0x30c>
   100001d72:	48 8d 3d aa 0a 00 00 	lea    0xaaa(%rip),%rdi        # 100002823 <___func__.3333>
   100001d79:	e8 a0 05 00 00       	callq  10000231e <___assert_rtn$stub>
   100001d7e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001d82:	48 89 c7             	mov    %rax,%rdi
   100001d85:	e8 d3 fa ff ff       	callq  10000185d <_hasSpaceLeft>
   100001d8a:	83 f0 01             	xor    $0x1,%eax
   100001d8d:	84 c0                	test   %al,%al
   100001d8f:	74 11                	je     100001da2 <_DL_push+0x92>
   100001d91:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001d95:	be 02 00 00 00       	mov    $0x2,%esi
   100001d9a:	48 89 c7             	mov    %rax,%rdi
   100001d9d:	e8 f0 fa ff ff       	callq  100001892 <_resizeList>
   100001da2:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
   100001da9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001dad:	8b 00                	mov    (%rax),%eax
   100001daf:	48 63 d0             	movslq %eax,%rdx
   100001db2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001db6:	48 8b 70 10          	mov    0x10(%rax),%rsi
   100001dba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001dbe:	8b 38                	mov    (%rax),%edi
   100001dc0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001dc4:	8b 40 08             	mov    0x8(%rax),%eax
   100001dc7:	0f af c7             	imul   %edi,%eax
   100001dca:	48 98                	cltq   
   100001dcc:	48 8d 3c 06          	lea    (%rsi,%rax,1),%rdi
   100001dd0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   100001dd4:	48 89 c6             	mov    %rax,%rsi
   100001dd7:	e8 48 05 00 00       	callq  100002324 <___memcpy_chk$stub>
   100001ddc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001de0:	8b 40 08             	mov    0x8(%rax),%eax
   100001de3:	8d 50 01             	lea    0x1(%rax),%edx
   100001de6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001dea:	89 50 08             	mov    %edx,0x8(%rax)
   100001ded:	c9                   	leaveq 
   100001dee:	c3                   	retq   

0000000100001def <_DL_deleteList>:
   100001def:	55                   	push   %rbp
   100001df0:	48 89 e5             	mov    %rsp,%rbp
   100001df3:	48 83 ec 20          	sub    $0x20,%rsp
   100001df7:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   100001dfb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001dff:	48 8b 40 18          	mov    0x18(%rax),%rax
   100001e03:	48 85 c0             	test   %rax,%rax
   100001e06:	74 3e                	je     100001e46 <_DL_deleteList+0x57>
   100001e08:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   100001e0f:	eb 29                	jmp    100001e3a <_DL_deleteList+0x4b>
   100001e11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001e15:	48 8b 40 18          	mov    0x18(%rax),%rax
   100001e19:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
   100001e1d:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
   100001e21:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
   100001e25:	8b 12                	mov    (%rdx),%edx
   100001e27:	0f af 55 fc          	imul   -0x4(%rbp),%edx
   100001e2b:	48 63 d2             	movslq %edx,%rdx
   100001e2e:	48 01 ca             	add    %rcx,%rdx
   100001e31:	48 89 d7             	mov    %rdx,%rdi
   100001e34:	ff d0                	callq  *%rax
   100001e36:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   100001e3a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001e3e:	8b 40 08             	mov    0x8(%rax),%eax
   100001e41:	3b 45 fc             	cmp    -0x4(%rbp),%eax
   100001e44:	7f cb                	jg     100001e11 <_DL_deleteList+0x22>
   100001e46:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001e4a:	48 8b 40 10          	mov    0x10(%rax),%rax
   100001e4e:	48 89 c7             	mov    %rax,%rdi
   100001e51:	e8 e0 04 00 00       	callq  100002336 <_free$stub>
   100001e56:	90                   	nop
   100001e57:	c9                   	leaveq 
   100001e58:	c3                   	retq   

0000000100001e59 <_DL_printListInfo>:
   100001e59:	55                   	push   %rbp
   100001e5a:	48 89 e5             	mov    %rsp,%rbp
   100001e5d:	48 83 ec 10          	sub    $0x10,%rsp
   100001e61:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   100001e65:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001e69:	8b 48 04             	mov    0x4(%rax),%ecx
   100001e6c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001e70:	8b 10                	mov    (%rax),%edx
   100001e72:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001e76:	8b 40 08             	mov    0x8(%rax),%eax
   100001e79:	89 c6                	mov    %eax,%esi
   100001e7b:	48 8d 3d 76 08 00 00 	lea    0x876(%rip),%rdi        # 1000026f8 <_realloc$stub+0x3aa>
   100001e82:	b8 00 00 00 00       	mov    $0x0,%eax
   100001e87:	e8 bc 04 00 00       	callq  100002348 <_printf$stub>
   100001e8c:	c9                   	leaveq 
   100001e8d:	c3                   	retq   

0000000100001e8e <_printListElements>:
   100001e8e:	55                   	push   %rbp
   100001e8f:	48 89 e5             	mov    %rsp,%rbp
   100001e92:	48 83 ec 20          	sub    $0x20,%rsp
   100001e96:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   100001e9a:	c7 45 fc fe ff ff ff 	movl   $0xfffffffe,-0x4(%rbp)
   100001ea1:	eb 39                	jmp    100001edc <_printListElements+0x4e>
   100001ea3:	c7 45 f8 09 03 00 00 	movl   $0x309,-0x8(%rbp)
   100001eaa:	48 8d 55 f8          	lea    -0x8(%rbp),%rdx
   100001eae:	8b 4d fc             	mov    -0x4(%rbp),%ecx
   100001eb1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001eb5:	89 ce                	mov    %ecx,%esi
   100001eb7:	48 89 c7             	mov    %rax,%rdi
   100001eba:	e8 73 fd ff ff       	callq  100001c32 <_DL_getAt>
   100001ebf:	8b 55 f8             	mov    -0x8(%rbp),%edx
   100001ec2:	8b 45 fc             	mov    -0x4(%rbp),%eax
   100001ec5:	89 c6                	mov    %eax,%esi
   100001ec7:	48 8d 3d 63 08 00 00 	lea    0x863(%rip),%rdi        # 100002731 <_realloc$stub+0x3e3>
   100001ece:	b8 00 00 00 00       	mov    $0x0,%eax
   100001ed3:	e8 70 04 00 00       	callq  100002348 <_printf$stub>
   100001ed8:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   100001edc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100001ee0:	8b 40 08             	mov    0x8(%rax),%eax
   100001ee3:	83 c0 02             	add    $0x2,%eax
   100001ee6:	3b 45 fc             	cmp    -0x4(%rbp),%eax
   100001ee9:	7d b8                	jge    100001ea3 <_printListElements+0x15>
   100001eeb:	c9                   	leaveq 
   100001eec:	c3                   	retq   

0000000100001eed <_createListOnHeapTest>:
   100001eed:	55                   	push   %rbp
   100001eee:	48 89 e5             	mov    %rsp,%rbp
   100001ef1:	48 83 ec 10          	sub    $0x10,%rsp
   100001ef5:	bf 20 00 00 00       	mov    $0x20,%edi
   100001efa:	e8 43 04 00 00       	callq  100002342 <_malloc$stub>
   100001eff:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   100001f03:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001f07:	b9 0a 00 00 00       	mov    $0xa,%ecx
   100001f0c:	ba 00 00 00 00       	mov    $0x0,%edx
   100001f11:	be 04 00 00 00       	mov    $0x4,%esi
   100001f16:	48 89 c7             	mov    %rax,%rdi
   100001f19:	e8 72 fa ff ff       	callq  100001990 <_DL_initialize>
   100001f1e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   100001f25:	eb 1c                	jmp    100001f43 <_createListOnHeapTest+0x56>
   100001f27:	48 8d 55 f4          	lea    -0xc(%rbp),%rdx
   100001f2b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001f2f:	48 89 d6             	mov    %rdx,%rsi
   100001f32:	48 89 c7             	mov    %rax,%rdi
   100001f35:	e8 d6 fd ff ff       	callq  100001d10 <_DL_push>
   100001f3a:	8b 45 f4             	mov    -0xc(%rbp),%eax
   100001f3d:	83 c0 01             	add    $0x1,%eax
   100001f40:	89 45 f4             	mov    %eax,-0xc(%rbp)
   100001f43:	8b 45 f4             	mov    -0xc(%rbp),%eax
   100001f46:	83 f8 29             	cmp    $0x29,%eax
   100001f49:	7e dc                	jle    100001f27 <_createListOnHeapTest+0x3a>
   100001f4b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001f4f:	48 89 c7             	mov    %rax,%rdi
   100001f52:	e8 37 ff ff ff       	callq  100001e8e <_printListElements>
   100001f57:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001f5b:	48 89 c7             	mov    %rax,%rdi
   100001f5e:	e8 8c fe ff ff       	callq  100001def <_DL_deleteList>
   100001f63:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100001f67:	48 89 c7             	mov    %rax,%rdi
   100001f6a:	e8 c7 03 00 00       	callq  100002336 <_free$stub>
   100001f6f:	c9                   	leaveq 
   100001f70:	c3                   	retq   

0000000100001f71 <_createListOnStackTest>:
   100001f71:	55                   	push   %rbp
   100001f72:	48 89 e5             	mov    %rsp,%rbp
   100001f75:	48 83 ec 30          	sub    $0x30,%rsp
   100001f79:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   100001f7d:	b9 0a 00 00 00       	mov    $0xa,%ecx
   100001f82:	ba 00 00 00 00       	mov    $0x0,%edx
   100001f87:	be 04 00 00 00       	mov    $0x4,%esi
   100001f8c:	48 89 c7             	mov    %rax,%rdi
   100001f8f:	e8 fc f9 ff ff       	callq  100001990 <_DL_initialize>
   100001f94:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
   100001f9b:	eb 1c                	jmp    100001fb9 <_createListOnStackTest+0x48>
   100001f9d:	48 8d 55 dc          	lea    -0x24(%rbp),%rdx
   100001fa1:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   100001fa5:	48 89 d6             	mov    %rdx,%rsi
   100001fa8:	48 89 c7             	mov    %rax,%rdi
   100001fab:	e8 60 fd ff ff       	callq  100001d10 <_DL_push>
   100001fb0:	8b 45 dc             	mov    -0x24(%rbp),%eax
   100001fb3:	83 c0 01             	add    $0x1,%eax
   100001fb6:	89 45 dc             	mov    %eax,-0x24(%rbp)
   100001fb9:	8b 45 dc             	mov    -0x24(%rbp),%eax
   100001fbc:	83 f8 0b             	cmp    $0xb,%eax
   100001fbf:	7e dc                	jle    100001f9d <_createListOnStackTest+0x2c>
   100001fc1:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   100001fc5:	48 89 c7             	mov    %rax,%rdi
   100001fc8:	e8 c1 fe ff ff       	callq  100001e8e <_printListElements>
   100001fcd:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   100001fd1:	48 89 c7             	mov    %rax,%rdi
   100001fd4:	e8 16 fe ff ff       	callq  100001def <_DL_deleteList>
   100001fd9:	c9                   	leaveq 
   100001fda:	c3                   	retq   

0000000100001fdb <_runListTests>:
   100001fdb:	55                   	push   %rbp
   100001fdc:	48 89 e5             	mov    %rsp,%rbp
   100001fdf:	b8 00 00 00 00       	mov    $0x0,%eax
   100001fe4:	e8 88 ff ff ff       	callq  100001f71 <_createListOnStackTest>
   100001fe9:	b8 00 00 00 00       	mov    $0x0,%eax
   100001fee:	e8 fa fe ff ff       	callq  100001eed <_createListOnHeapTest>
   100001ff3:	5d                   	pop    %rbp
   100001ff4:	c3                   	retq   

0000000100001ff5 <_runTests>:
   100001ff5:	55                   	push   %rbp
   100001ff6:	48 89 e5             	mov    %rsp,%rbp
   100001ff9:	b8 00 00 00 00       	mov    $0x0,%eax
   100001ffe:	e8 d8 ff ff ff       	callq  100001fdb <_runListTests>
   100002003:	5d                   	pop    %rbp
   100002004:	c3                   	retq   

0000000100002005 <_cleanRessources>:
   100002005:	55                   	push   %rbp
   100002006:	48 89 e5             	mov    %rsp,%rbp
   100002009:	48 83 ec 10          	sub    $0x10,%rsp
   10000200d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   100002011:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100002015:	48 83 c0 30          	add    $0x30,%rax
   100002019:	48 89 c7             	mov    %rax,%rdi
   10000201c:	e8 ce fd ff ff       	callq  100001def <_DL_deleteList>
   100002021:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100002025:	48 83 c0 10          	add    $0x10,%rax
   100002029:	48 89 c7             	mov    %rax,%rdi
   10000202c:	e8 be fd ff ff       	callq  100001def <_DL_deleteList>
   100002031:	c9                   	leaveq 
   100002032:	c3                   	retq   

0000000100002033 <_freeBlock>:
   100002033:	55                   	push   %rbp
   100002034:	48 89 e5             	mov    %rsp,%rbp
   100002037:	48 83 ec 20          	sub    $0x20,%rsp
   10000203b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   10000203f:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
   100002044:	0f 94 c0             	sete   %al
   100002047:	0f b6 c0             	movzbl %al,%eax
   10000204a:	48 85 c0             	test   %rax,%rax
   10000204d:	74 1f                	je     10000206e <_freeBlock+0x3b>
   10000204f:	48 8d 0d ea 06 00 00 	lea    0x6ea(%rip),%rcx        # 100002740 <_realloc$stub+0x3f2>
   100002056:	ba 09 00 00 00       	mov    $0x9,%edx
   10000205b:	48 8d 35 f5 06 00 00 	lea    0x6f5(%rip),%rsi        # 100002757 <_realloc$stub+0x409>
   100002062:	48 8d 3d c2 07 00 00 	lea    0x7c2(%rip),%rdi        # 10000282b <___func__.9208>
   100002069:	e8 b0 02 00 00       	callq  10000231e <___assert_rtn$stub>
   10000206e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   100002072:	48 8b 00             	mov    (%rax),%rax
   100002075:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   100002079:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   10000207d:	48 89 c7             	mov    %rax,%rdi
   100002080:	e8 b1 02 00 00       	callq  100002336 <_free$stub>
   100002085:	c9                   	leaveq 
   100002086:	c3                   	retq   

0000000100002087 <_initializeGameState>:
   100002087:	55                   	push   %rbp
   100002088:	48 89 e5             	mov    %rsp,%rbp
   10000208b:	48 83 ec 10          	sub    $0x10,%rsp
   10000208f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   100002093:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   100002097:	48 83 c0 30          	add    $0x30,%rax
   10000209b:	b9 20 00 00 00       	mov    $0x20,%ecx
   1000020a0:	48 8d 15 8c ff ff ff 	lea    -0x74(%rip),%rdx        # 100002033 <_freeBlock>
   1000020a7:	be 08 00 00 00       	mov    $0x8,%esi
   1000020ac:	48 89 c7             	mov    %rax,%rdi
   1000020af:	e8 dc f8 ff ff       	callq  100001990 <_DL_initialize>
   1000020b4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000020b8:	48 83 c0 10          	add    $0x10,%rax
   1000020bc:	b9 20 00 00 00       	mov    $0x20,%ecx
   1000020c1:	48 8d 15 6b ff ff ff 	lea    -0x95(%rip),%rdx        # 100002033 <_freeBlock>
   1000020c8:	be 08 00 00 00       	mov    $0x8,%esi
   1000020cd:	48 89 c7             	mov    %rax,%rdi
   1000020d0:	e8 bb f8 ff ff       	callq  100001990 <_DL_initialize>
   1000020d5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000020d9:	c6 00 00             	movb   $0x0,(%rax)
   1000020dc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000020e0:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
   1000020e7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000020eb:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
   1000020f2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   1000020f6:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
   1000020fd:	c9                   	leaveq 
   1000020fe:	c3                   	retq   

00000001000020ff <_runGameLoop>:
   1000020ff:	55                   	push   %rbp
   100002100:	48 89 e5             	mov    %rsp,%rbp
   100002103:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
   10000210a:	48 89 bd 68 ff ff ff 	mov    %rdi,-0x98(%rbp)
   100002111:	48 89 b5 60 ff ff ff 	mov    %rsi,-0xa0(%rbp)
   100002118:	e8 b9 01 00 00       	callq  1000022d6 <_SDL_GetError$stub>
   10000211d:	48 89 c2             	mov    %rax,%rdx
   100002120:	48 8b 05 d9 0e 00 00 	mov    0xed9(%rip),%rax        # 100003000 <___stderrp$stub>
   100002127:	48 8b 00             	mov    (%rax),%rax
   10000212a:	48 8d 35 37 06 00 00 	lea    0x637(%rip),%rsi        # 100002768 <_realloc$stub+0x41a>
   100002131:	48 89 c7             	mov    %rax,%rdi
   100002134:	b8 00 00 00 00       	mov    $0x0,%eax
   100002139:	e8 f2 01 00 00       	callq  100002330 <_fprintf$stub>
   10000213e:	e8 75 01 00 00       	callq  1000022b8 <_SDL_ClearError$stub>
   100002143:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   10000214a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   100002151:	48 8d 05 a8 0f 00 00 	lea    0xfa8(%rip),%rax        # 100003100 <_G_GameConfig>
   100002158:	8b 08                	mov    (%rax),%ecx
   10000215a:	b8 e8 03 00 00       	mov    $0x3e8,%eax
   10000215f:	ba 00 00 00 00       	mov    $0x0,%edx
   100002164:	f7 f1                	div    %ecx
   100002166:	89 c0                	mov    %eax,%eax
   100002168:	48 85 c0             	test   %rax,%rax
   10000216b:	78 0c                	js     100002179 <_runGameLoop+0x7a>
   10000216d:	f2 48 0f 2a d8       	cvtsi2sd %rax,%xmm3
   100002172:	66 48 0f 7e d8       	movq   %xmm3,%rax
   100002177:	eb 1e                	jmp    100002197 <_runGameLoop+0x98>
   100002179:	48 89 c2             	mov    %rax,%rdx
   10000217c:	48 d1 ea             	shr    %rdx
   10000217f:	83 e0 01             	and    $0x1,%eax
   100002182:	48 09 c2             	or     %rax,%rdx
   100002185:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
   10000218a:	66 0f 28 c8          	movapd %xmm0,%xmm1
   10000218e:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
   100002192:	66 48 0f 7e c8       	movq   %xmm1,%rax
   100002197:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   10000219b:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
   1000021a2:	48 89 c7             	mov    %rax,%rdi
   1000021a5:	e8 dd fe ff ff       	callq  100002087 <_initializeGameState>
   1000021aa:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
   1000021b1:	48 89 c7             	mov    %rax,%rdi
   1000021b4:	e8 1c ed ff ff       	callq  100000ed5 <_initializeGraphicEngine>
   1000021b9:	e9 b1 00 00 00       	jmpq   10000226f <_runGameLoop+0x170>
   1000021be:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   1000021c5:	e8 18 01 00 00       	callq  1000022e2 <_SDL_GetTicks$stub>
   1000021ca:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1000021cd:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
   1000021d4:	48 89 c7             	mov    %rax,%rdi
   1000021d7:	e8 46 f1 ff ff       	callq  100001322 <_renderGame>
   1000021dc:	e8 01 01 00 00       	callq  1000022e2 <_SDL_GetTicks$stub>
   1000021e1:	2b 45 fc             	sub    -0x4(%rbp),%eax
   1000021e4:	89 45 f8             	mov    %eax,-0x8(%rbp)
   1000021e7:	48 8b 05 12 0e 00 00 	mov    0xe12(%rip),%rax        # 100003000 <___stderrp$stub>
   1000021ee:	48 8b 00             	mov    (%rax),%rax
   1000021f1:	8b 55 f8             	mov    -0x8(%rbp),%edx
   1000021f4:	48 8d 35 9a 05 00 00 	lea    0x59a(%rip),%rsi        # 100002795 <_realloc$stub+0x447>
   1000021fb:	48 89 c7             	mov    %rax,%rdi
   1000021fe:	b8 00 00 00 00       	mov    $0x0,%eax
   100002203:	e8 28 01 00 00       	callq  100002330 <_fprintf$stub>
   100002208:	8b 45 f8             	mov    -0x8(%rbp),%eax
   10000220b:	48 85 c0             	test   %rax,%rax
   10000220e:	78 07                	js     100002217 <_runGameLoop+0x118>
   100002210:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
   100002215:	eb 15                	jmp    10000222c <_runGameLoop+0x12d>
   100002217:	48 89 c2             	mov    %rax,%rdx
   10000221a:	48 d1 ea             	shr    %rdx
   10000221d:	83 e0 01             	and    $0x1,%eax
   100002220:	48 09 c2             	or     %rax,%rdx
   100002223:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
   100002228:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
   10000222c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   100002230:	66 48 0f 6e d0       	movq   %rax,%xmm2
   100002235:	f2 0f 5c d0          	subsd  %xmm0,%xmm2
   100002239:	66 48 0f 7e d0       	movq   %xmm2,%rax
   10000223e:	66 48 0f 6e e0       	movq   %rax,%xmm4
   100002243:	f2 48 0f 2c c4       	cvttsd2si %xmm4,%rax
   100002248:	89 c2                	mov    %eax,%edx
   10000224a:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
   100002251:	89 d6                	mov    %edx,%esi
   100002253:	48 89 c7             	mov    %rax,%rdi
   100002256:	e8 ff f2 ff ff       	callq  10000155a <_handleEvent>
   10000225b:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
   100002261:	85 c0                	test   %eax,%eax
   100002263:	75 0a                	jne    10000226f <_runGameLoop+0x170>
   100002265:	c7 85 74 ff ff ff 01 	movl   $0x1,-0x8c(%rbp)
   10000226c:	00 00 00 
   10000226f:	0f b6 85 70 ff ff ff 	movzbl -0x90(%rbp),%eax
   100002276:	83 f0 01             	xor    $0x1,%eax
   100002279:	84 c0                	test   %al,%al
   10000227b:	0f 85 3d ff ff ff    	jne    1000021be <_runGameLoop+0xbf>
   100002281:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
   100002288:	48 89 c7             	mov    %rax,%rdi
   10000228b:	e8 75 fd ff ff       	callq  100002005 <_cleanRessources>
   100002290:	e8 41 00 00 00       	callq  1000022d6 <_SDL_GetError$stub>
   100002295:	48 89 c2             	mov    %rax,%rdx
   100002298:	48 8b 05 61 0d 00 00 	mov    0xd61(%rip),%rax        # 100003000 <___stderrp$stub>
   10000229f:	48 8b 00             	mov    (%rax),%rax
   1000022a2:	48 8d 35 04 05 00 00 	lea    0x504(%rip),%rsi        # 1000027ad <_realloc$stub+0x45f>
   1000022a9:	48 89 c7             	mov    %rax,%rdi
   1000022ac:	b8 00 00 00 00       	mov    $0x0,%eax
   1000022b1:	e8 7a 00 00 00       	callq  100002330 <_fprintf$stub>
   1000022b6:	c9                   	leaveq 
   1000022b7:	c3                   	retq   

Déassemblage de la section __TEXT.__stubs :

00000001000022b8 <_SDL_ClearError$stub>:
   1000022b8:	ff 25 5a 0d 00 00    	jmpq   *0xd5a(%rip)        # 100003018 <_SDL_ClearError$stub>

00000001000022be <_SDL_CreateRenderer$stub>:
   1000022be:	ff 25 5c 0d 00 00    	jmpq   *0xd5c(%rip)        # 100003020 <_SDL_CreateRenderer$stub>

00000001000022c4 <_SDL_CreateWindow$stub>:
   1000022c4:	ff 25 5e 0d 00 00    	jmpq   *0xd5e(%rip)        # 100003028 <_SDL_CreateWindow$stub>

00000001000022ca <_SDL_DestroyRenderer$stub>:
   1000022ca:	ff 25 60 0d 00 00    	jmpq   *0xd60(%rip)        # 100003030 <_SDL_DestroyRenderer$stub>

00000001000022d0 <_SDL_DestroyWindow$stub>:
   1000022d0:	ff 25 62 0d 00 00    	jmpq   *0xd62(%rip)        # 100003038 <_SDL_DestroyWindow$stub>

00000001000022d6 <_SDL_GetError$stub>:
   1000022d6:	ff 25 64 0d 00 00    	jmpq   *0xd64(%rip)        # 100003040 <_SDL_GetError$stub>

00000001000022dc <_SDL_GetKeyboardState$stub>:
   1000022dc:	ff 25 66 0d 00 00    	jmpq   *0xd66(%rip)        # 100003048 <_SDL_GetKeyboardState$stub>

00000001000022e2 <_SDL_GetTicks$stub>:
   1000022e2:	ff 25 68 0d 00 00    	jmpq   *0xd68(%rip)        # 100003050 <_SDL_GetTicks$stub>

00000001000022e8 <_SDL_Init$stub>:
   1000022e8:	ff 25 6a 0d 00 00    	jmpq   *0xd6a(%rip)        # 100003058 <_SDL_Init$stub>

00000001000022ee <_SDL_PollEvent$stub>:
   1000022ee:	ff 25 6c 0d 00 00    	jmpq   *0xd6c(%rip)        # 100003060 <_SDL_PollEvent$stub>

00000001000022f4 <_SDL_Quit$stub>:
   1000022f4:	ff 25 6e 0d 00 00    	jmpq   *0xd6e(%rip)        # 100003068 <_SDL_Quit$stub>

00000001000022fa <_SDL_RenderClear$stub>:
   1000022fa:	ff 25 70 0d 00 00    	jmpq   *0xd70(%rip)        # 100003070 <_SDL_RenderClear$stub>

0000000100002300 <_SDL_RenderDrawRect$stub>:
   100002300:	ff 25 72 0d 00 00    	jmpq   *0xd72(%rip)        # 100003078 <_SDL_RenderDrawRect$stub>

0000000100002306 <_SDL_RenderFillRect$stub>:
   100002306:	ff 25 74 0d 00 00    	jmpq   *0xd74(%rip)        # 100003080 <_SDL_RenderFillRect$stub>

000000010000230c <_SDL_RenderPresent$stub>:
   10000230c:	ff 25 76 0d 00 00    	jmpq   *0xd76(%rip)        # 100003088 <_SDL_RenderPresent$stub>

0000000100002312 <_SDL_RenderSetLogicalSize$stub>:
   100002312:	ff 25 78 0d 00 00    	jmpq   *0xd78(%rip)        # 100003090 <_SDL_RenderSetLogicalSize$stub>

0000000100002318 <_SDL_SetRenderDrawColor$stub>:
   100002318:	ff 25 7a 0d 00 00    	jmpq   *0xd7a(%rip)        # 100003098 <_SDL_SetRenderDrawColor$stub>

000000010000231e <___assert_rtn$stub>:
   10000231e:	ff 25 7c 0d 00 00    	jmpq   *0xd7c(%rip)        # 1000030a0 <___assert_rtn$stub>

0000000100002324 <___memcpy_chk$stub>:
   100002324:	ff 25 7e 0d 00 00    	jmpq   *0xd7e(%rip)        # 1000030a8 <___memcpy_chk$stub>

000000010000232a <___memmove_chk$stub>:
   10000232a:	ff 25 80 0d 00 00    	jmpq   *0xd80(%rip)        # 1000030b0 <___memmove_chk$stub>

0000000100002330 <_fprintf$stub>:
   100002330:	ff 25 82 0d 00 00    	jmpq   *0xd82(%rip)        # 1000030b8 <_fprintf$stub>

0000000100002336 <_free$stub>:
   100002336:	ff 25 84 0d 00 00    	jmpq   *0xd84(%rip)        # 1000030c0 <_free$stub>

000000010000233c <_fwrite$stub>:
   10000233c:	ff 25 86 0d 00 00    	jmpq   *0xd86(%rip)        # 1000030c8 <_fwrite$stub>

0000000100002342 <_malloc$stub>:
   100002342:	ff 25 88 0d 00 00    	jmpq   *0xd88(%rip)        # 1000030d0 <_malloc$stub>

0000000100002348 <_printf$stub>:
   100002348:	ff 25 8a 0d 00 00    	jmpq   *0xd8a(%rip)        # 1000030d8 <_printf$stub>

000000010000234e <_realloc$stub>:
   10000234e:	ff 25 8c 0d 00 00    	jmpq   *0xd8c(%rip)        # 1000030e0 <_realloc$stub>

Déassemblage de la section __TEXT.__stub_helper :

0000000100002354 <__TEXT.__stub_helper>:
   100002354:	4c 8d 1d b5 0c 00 00 	lea    0xcb5(%rip),%r11        # 100003010 <>
   10000235b:	41 53                	push   %r11
   10000235d:	ff 25 a5 0c 00 00    	jmpq   *0xca5(%rip)        # 100003008 <dyld_stub_binder$stub>
   100002363:	90                   	nop
   100002364:	68 00 00 00 00       	pushq  $0x0
   100002369:	e9 e6 ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   10000236e:	68 16 00 00 00       	pushq  $0x16
   100002373:	e9 dc ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   100002378:	68 30 00 00 00       	pushq  $0x30
   10000237d:	e9 d2 ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   100002382:	68 48 00 00 00       	pushq  $0x48
   100002387:	e9 c8 ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   10000238c:	68 63 00 00 00       	pushq  $0x63
   100002391:	e9 be ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   100002396:	68 7c 00 00 00       	pushq  $0x7c
   10000239b:	e9 b4 ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   1000023a0:	68 90 00 00 00       	pushq  $0x90
   1000023a5:	e9 aa ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   1000023aa:	68 ac 00 00 00       	pushq  $0xac
   1000023af:	e9 a0 ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   1000023b4:	68 c0 00 00 00       	pushq  $0xc0
   1000023b9:	e9 96 ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   1000023be:	68 d0 00 00 00       	pushq  $0xd0
   1000023c3:	e9 8c ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   1000023c8:	68 e5 00 00 00       	pushq  $0xe5
   1000023cd:	e9 82 ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   1000023d2:	68 f5 00 00 00       	pushq  $0xf5
   1000023d7:	e9 78 ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   1000023dc:	68 0c 01 00 00       	pushq  $0x10c
   1000023e1:	e9 6e ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   1000023e6:	68 26 01 00 00       	pushq  $0x126
   1000023eb:	e9 64 ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   1000023f0:	68 41 01 00 00       	pushq  $0x141
   1000023f5:	e9 5a ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   1000023fa:	68 5b 01 00 00       	pushq  $0x15b
   1000023ff:	e9 50 ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   100002404:	68 7c 01 00 00       	pushq  $0x17c
   100002409:	e9 46 ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   10000240e:	68 9b 01 00 00       	pushq  $0x19b
   100002413:	e9 3c ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   100002418:	68 b0 01 00 00       	pushq  $0x1b0
   10000241d:	e9 32 ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   100002422:	68 c5 01 00 00       	pushq  $0x1c5
   100002427:	e9 28 ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   10000242c:	68 db 01 00 00       	pushq  $0x1db
   100002431:	e9 1e ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   100002436:	68 eb 01 00 00       	pushq  $0x1eb
   10000243b:	e9 14 ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   100002440:	68 f8 01 00 00       	pushq  $0x1f8
   100002445:	e9 0a ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   10000244a:	68 07 02 00 00       	pushq  $0x207
   10000244f:	e9 00 ff ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   100002454:	68 16 02 00 00       	pushq  $0x216
   100002459:	e9 f6 fe ff ff       	jmpq   100002354 <_realloc$stub+0x6>
   10000245e:	68 25 02 00 00       	pushq  $0x225
   100002463:	e9 ec fe ff ff       	jmpq   100002354 <_realloc$stub+0x6>
