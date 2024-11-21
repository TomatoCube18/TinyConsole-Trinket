
bin/tiny_conway.elf:     file format elf32-littleriscv


Disassembly of section .init:

00000000 <jump_reset>:
   0:	5380006f          	j	538 <reset_handler>

00000004 <vectors>:
   4:	00000000 0000029c 0000029c 00000000     ................
	...
  30:	0000029c 00000000 0000029c 00000000     ................
  40:	0000029c 0000029c 0000029c 0000029c     ................
  50:	0000029c 0000029c 0000029c 0000029c     ................
  60:	0000029c 0000029c 0000029c 0000011a     ................
  70:	0000029c 0000029c 0000029c 0000029c     ................
  80:	0000029c 0000029c 0000029c 0000029c     ................
  90:	0000029c 0000029c 0000029c              ............

Disassembly of section .text:

0000009c <__divsi3>:
  9c:	02054e63          	bltz	a0,d8 <__umodsi3+0x8>
  a0:	0405c363          	bltz	a1,e6 <__umodsi3+0x16>

000000a4 <__hidden___udivsi3>:
  a4:	862e                	mv	a2,a1
  a6:	85aa                	mv	a1,a0
  a8:	557d                	li	a0,-1
  aa:	c215                	beqz	a2,ce <__hidden___udivsi3+0x2a>
  ac:	4685                	li	a3,1
  ae:	00b67863          	bgeu	a2,a1,be <__hidden___udivsi3+0x1a>
  b2:	00c05663          	blez	a2,be <__hidden___udivsi3+0x1a>
  b6:	0606                	sll	a2,a2,0x1
  b8:	0686                	sll	a3,a3,0x1
  ba:	feb66ce3          	bltu	a2,a1,b2 <__hidden___udivsi3+0xe>
  be:	4501                	li	a0,0
  c0:	00c5e463          	bltu	a1,a2,c8 <__hidden___udivsi3+0x24>
  c4:	8d91                	sub	a1,a1,a2
  c6:	8d55                	or	a0,a0,a3
  c8:	8285                	srl	a3,a3,0x1
  ca:	8205                	srl	a2,a2,0x1
  cc:	faf5                	bnez	a3,c0 <__hidden___udivsi3+0x1c>
  ce:	8082                	ret

000000d0 <__umodsi3>:
  d0:	8286                	mv	t0,ra
  d2:	3fc9                	jal	a4 <__hidden___udivsi3>
  d4:	852e                	mv	a0,a1
  d6:	8282                	jr	t0
  d8:	40a00533          	neg	a0,a0
  dc:	00b04763          	bgtz	a1,ea <__umodsi3+0x1a>
  e0:	40b005b3          	neg	a1,a1
  e4:	b7c1                	j	a4 <__hidden___udivsi3>
  e6:	40b005b3          	neg	a1,a1
  ea:	8286                	mv	t0,ra
  ec:	3f65                	jal	a4 <__hidden___udivsi3>
  ee:	40a00533          	neg	a0,a0
  f2:	8282                	jr	t0

000000f4 <__modsi3>:
  f4:	8286                	mv	t0,ra
  f6:	0005c763          	bltz	a1,104 <__modsi3+0x10>
  fa:	00054963          	bltz	a0,10c <__modsi3+0x18>
  fe:	375d                	jal	a4 <__hidden___udivsi3>
 100:	852e                	mv	a0,a1
 102:	8282                	jr	t0
 104:	40b005b3          	neg	a1,a1
 108:	fe055be3          	bgez	a0,fe <__modsi3+0xa>
 10c:	40a00533          	neg	a0,a0
 110:	3f51                	jal	a4 <__hidden___udivsi3>
 112:	40b00533          	neg	a0,a1
 116:	8282                	jr	t0
	...

0000011a <DMA1_Channel6_IRQHandler>:
 11a:	1151                	add	sp,sp,-12
 11c:	c03e                	sw	a5,0(sp)
 11e:	400057b7          	lui	a5,0x40005
 122:	40078793          	add	a5,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
 126:	c23a                	sw	a4,4(sp)
 128:	0047d703          	lhu	a4,4(a5)
 12c:	c436                	sw	a3,8(sp)
 12e:	76fd                	lui	a3,0xfffff
 130:	7ff68693          	add	a3,a3,2047 # fffff7ff <__global_pointer$+0xdfffefff>
 134:	8f75                	and	a4,a4,a3
 136:	00e79223          	sh	a4,4(a5)
 13a:	40020737          	lui	a4,0x40020
 13e:	5774                	lw	a3,108(a4)
 140:	9af9                	and	a3,a3,-2
 142:	d774                	sw	a3,108(a4)
 144:	001006b7          	lui	a3,0x100
 148:	c354                	sw	a3,4(a4)
 14a:	400056b7          	lui	a3,0x40005
 14e:	0147d703          	lhu	a4,20(a5)
 152:	8b11                	and	a4,a4,4
 154:	df6d                	beqz	a4,14e <DMA1_Channel6_IRQHandler+0x34>
 156:	4006d783          	lhu	a5,1024(a3) # 40005400 <__global_pointer$+0x20004c00>
 15a:	4712                	lw	a4,4(sp)
 15c:	2007e793          	or	a5,a5,512
 160:	40f69023          	sh	a5,1024(a3)
 164:	46a2                	lw	a3,8(sp)
 166:	4782                	lw	a5,0(sp)
 168:	0131                	add	sp,sp,12
 16a:	30200073          	mret

0000016e <getpixel>:
 16e:	03800793          	li	a5,56
 172:	07f57513          	and	a0,a0,127
 176:	02f58963          	beq	a1,a5,1a8 <getpixel+0x3a>
 17a:	0ff00793          	li	a5,255
 17e:	00f59463          	bne	a1,a5,186 <getpixel+0x18>
 182:	03700593          	li	a1,55
 186:	0035d713          	srl	a4,a1,0x3
 18a:	200007b7          	lui	a5,0x20000
 18e:	0705                	add	a4,a4,1 # 40020001 <__global_pointer$+0x2001f801>
 190:	071e                	sll	a4,a4,0x7
 192:	38878793          	add	a5,a5,904 # 20000388 <page1>
 196:	97ba                	add	a5,a5,a4
 198:	97aa                	add	a5,a5,a0
 19a:	0007c503          	lbu	a0,0(a5)
 19e:	899d                	and	a1,a1,7
 1a0:	40b55533          	sra	a0,a0,a1
 1a4:	8905                	and	a0,a0,1
 1a6:	8082                	ret
 1a8:	4581                	li	a1,0
 1aa:	bff1                	j	186 <getpixel+0x18>

000001ac <setpixel>:
 1ac:	0035d793          	srl	a5,a1,0x3
 1b0:	079e                	sll	a5,a5,0x7
 1b2:	97aa                	add	a5,a5,a0
 1b4:	20000537          	lui	a0,0x20000
 1b8:	00850513          	add	a0,a0,8 # 20000008 <page2>
 1bc:	953e                	add	a0,a0,a5
 1be:	00054703          	lbu	a4,0(a0)
 1c2:	899d                	and	a1,a1,7
 1c4:	4785                	li	a5,1
 1c6:	00b797b3          	sll	a5,a5,a1
 1ca:	8fd9                	or	a5,a5,a4
 1cc:	00f50023          	sb	a5,0(a0)
 1d0:	8082                	ret

000001d2 <GAME_init>:
 1d2:	1151                	add	sp,sp,-12
 1d4:	20000737          	lui	a4,0x20000
 1d8:	c406                	sw	ra,8(sp)
 1da:	c222                	sw	s0,4(sp)
 1dc:	c026                	sw	s1,0(sp)
 1de:	4781                	li	a5,0
 1e0:	00870713          	add	a4,a4,8 # 20000008 <page2>
 1e4:	38000693          	li	a3,896
 1e8:	00e78633          	add	a2,a5,a4
 1ec:	00060023          	sb	zero,0(a2)
 1f0:	0785                	add	a5,a5,1
 1f2:	fed79be3          	bne	a5,a3,1e8 <GAME_init+0x16>
 1f6:	30000493          	li	s1,768
 1fa:	200006b7          	lui	a3,0x20000
 1fe:	0006a783          	lw	a5,0(a3) # 20000000 <rnval.0>
 202:	03800593          	li	a1,56
 206:	14fd                	add	s1,s1,-1
 208:	00279613          	sll	a2,a5,0x2
 20c:	00179413          	sll	s0,a5,0x1
 210:	8c31                	xor	s0,s0,a2
 212:	07c2                	sll	a5,a5,0x10
 214:	8041                	srl	s0,s0,0x10
 216:	8c5d                	or	s0,s0,a5
 218:	00241793          	sll	a5,s0,0x2
 21c:	00141513          	sll	a0,s0,0x1
 220:	8d3d                	xor	a0,a0,a5
 222:	8141                	srl	a0,a0,0x10
 224:	01041793          	sll	a5,s0,0x10
 228:	8d5d                	or	a0,a0,a5
 22a:	00a6a023          	sw	a0,0(a3)
 22e:	354d                	jal	d0 <__umodsi3>
 230:	0ff57593          	zext.b	a1,a0
 234:	07f47513          	and	a0,s0,127
 238:	3f95                	jal	1ac <setpixel>
 23a:	04c2                	sll	s1,s1,0x10
 23c:	200007b7          	lui	a5,0x20000
 240:	80c1                	srl	s1,s1,0x10
 242:	200006b7          	lui	a3,0x20000
 246:	00878713          	add	a4,a5,8 # 20000008 <page2>
 24a:	f8d5                	bnez	s1,1fe <GAME_init+0x2c>
 24c:	20000637          	lui	a2,0x20000
 250:	38860693          	add	a3,a2,904 # 20000388 <page1>
 254:	4781                	li	a5,0
 256:	38860613          	add	a2,a2,904
 25a:	38000593          	li	a1,896
 25e:	00f70533          	add	a0,a4,a5
 262:	00054503          	lbu	a0,0(a0)
 266:	0785                	add	a5,a5,1
 268:	0685                	add	a3,a3,1 # 20000001 <rnval.0+0x1>
 26a:	06a68fa3          	sb	a0,127(a3)
 26e:	feb798e3          	bne	a5,a1,25e <GAME_init+0x8c>
 272:	4781                	li	a5,0
 274:	5f400713          	li	a4,1524
 278:	07e00693          	li	a3,126
 27c:	00e78533          	add	a0,a5,a4
 280:	00054503          	lbu	a0,0(a0)
 284:	00f605b3          	add	a1,a2,a5
 288:	0785                	add	a5,a5,1
 28a:	00a58023          	sb	a0,0(a1)
 28e:	fed797e3          	bne	a5,a3,27c <GAME_init+0xaa>
 292:	40a2                	lw	ra,8(sp)
 294:	4412                	lw	s0,4(sp)
 296:	4482                	lw	s1,0(sp)
 298:	0131                	add	sp,sp,12
 29a:	8082                	ret

0000029c <ADC1_IRQHandler>:
 29c:	a001                	j	29c <ADC1_IRQHandler>

0000029e <I2C_start.constprop.0>:
 29e:	400057b7          	lui	a5,0x40005
 2a2:	40078693          	add	a3,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
 2a6:	0186d703          	lhu	a4,24(a3)
 2aa:	8b09                	and	a4,a4,2
 2ac:	ff6d                	bnez	a4,2a6 <I2C_start.constprop.0+0x8>
 2ae:	4007d703          	lhu	a4,1024(a5)
 2b2:	50076713          	or	a4,a4,1280
 2b6:	40e79023          	sh	a4,1024(a5)
 2ba:	400057b7          	lui	a5,0x40005
 2be:	40078793          	add	a5,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
 2c2:	0147d703          	lhu	a4,20(a5)
 2c6:	8b05                	and	a4,a4,1
 2c8:	df6d                	beqz	a4,2c2 <I2C_start.constprop.0+0x24>
 2ca:	07800713          	li	a4,120
 2ce:	00e79823          	sh	a4,16(a5)
 2d2:	400057b7          	lui	a5,0x40005
 2d6:	40078793          	add	a5,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
 2da:	0147d703          	lhu	a4,20(a5)
 2de:	8b09                	and	a4,a4,2
 2e0:	df6d                	beqz	a4,2da <I2C_start.constprop.0+0x3c>
 2e2:	0187d783          	lhu	a5,24(a5)
 2e6:	8082                	ret

000002e8 <main>:
 2e8:	400116b7          	lui	a3,0x40011
 2ec:	80068713          	add	a4,a3,-2048 # 40010800 <__global_pointer$+0x20010000>
 2f0:	431c                	lw	a5,0(a4)
 2f2:	1101                	add	sp,sp,-32
 2f4:	ca26                	sw	s1,20(sp)
 2f6:	74fd                	lui	s1,0xfffff
 2f8:	cc22                	sw	s0,24(sp)
 2fa:	0ff48613          	add	a2,s1,255 # fffff0ff <__global_pointer$+0xdfffe8ff>
 2fe:	6405                	lui	s0,0x1
 300:	8ff1                	and	a5,a5,a2
 302:	80040613          	add	a2,s0,-2048 # 800 <_data_lma+0x18c>
 306:	8fd1                	or	a5,a5,a2
 308:	ce06                	sw	ra,28(sp)
 30a:	c31c                	sw	a5,0(a4)
 30c:	4611                	li	a2,4
 30e:	cb10                	sw	a2,16(a4)
 310:	35c9                	jal	1d2 <GAME_init>
 312:	400217b7          	lui	a5,0x40021
 316:	4f98                	lw	a4,24(a5)
 318:	400116b7          	lui	a3,0x40011
 31c:	04bd                	add	s1,s1,15
 31e:	01176713          	or	a4,a4,17
 322:	cf98                	sw	a4,24(a5)
 324:	4298                	lw	a4,0(a3)
 326:	dd040413          	add	s0,s0,-560
 32a:	4611                	li	a2,4
 32c:	8f65                	and	a4,a4,s1
 32e:	8f41                	or	a4,a4,s0
 330:	c298                	sw	a4,0(a3)
 332:	4fd8                	lw	a4,28(a5)
 334:	002006b7          	lui	a3,0x200
 338:	8f55                	or	a4,a4,a3
 33a:	cfd8                	sw	a4,28(a5)
 33c:	40005737          	lui	a4,0x40005
 340:	76e1                	lui	a3,0xffff8
 342:	40c71223          	sh	a2,1028(a4) # 40005404 <__global_pointer$+0x20004c04>
 346:	02868693          	add	a3,a3,40 # ffff8028 <__global_pointer$+0xdfff7828>
 34a:	40d71e23          	sh	a3,1052(a4)
 34e:	4685                	li	a3,1
 350:	40d71023          	sh	a3,1024(a4)
 354:	4bd4                	lw	a3,20(a5)
 356:	40070413          	add	s0,a4,1024
 35a:	41070713          	add	a4,a4,1040
 35e:	0016e693          	or	a3,a3,1
 362:	cbd4                	sw	a3,20(a5)
 364:	400207b7          	lui	a5,0x40020
 368:	dbf8                	sw	a4,116(a5)
 36a:	09200713          	li	a4,146
 36e:	d7f8                	sw	a4,108(a5)
 370:	00100737          	lui	a4,0x100
 374:	c3d8                	sw	a4,4(a5)
 376:	e000e7b7          	lui	a5,0xe000e
 37a:	08000737          	lui	a4,0x8000
 37e:	10e7a023          	sw	a4,256(a5) # e000e100 <__global_pointer$+0xc000d900>
 382:	3f31                	jal	29e <I2C_start.constprop.0>
 384:	01445783          	lhu	a5,20(s0)
 388:	0807f793          	and	a5,a5,128
 38c:	dfe5                	beqz	a5,384 <main+0x9c>
 38e:	00041823          	sh	zero,16(s0)
 392:	400207b7          	lui	a5,0x40020
 396:	4745                	li	a4,17
 398:	dbb8                	sw	a4,112(a5)
 39a:	5e000713          	li	a4,1504
 39e:	dfb8                	sw	a4,120(a5)
 3a0:	57f8                	lw	a4,108(a5)
 3a2:	00176713          	or	a4,a4,1
 3a6:	d7f8                	sw	a4,108(a5)
 3a8:	00445783          	lhu	a5,4(s0)
 3ac:	6705                	lui	a4,0x1
 3ae:	80070713          	add	a4,a4,-2048 # 800 <_data_lma+0x18c>
 3b2:	8fd9                	or	a5,a5,a4
 3b4:	07c2                	sll	a5,a5,0x10
 3b6:	83c1                	srl	a5,a5,0x10
 3b8:	00f41223          	sh	a5,4(s0)
 3bc:	400117b7          	lui	a5,0x40011
 3c0:	80078793          	add	a5,a5,-2048 # 40010800 <__global_pointer$+0x20010000>
 3c4:	479c                	lw	a5,8(a5)
 3c6:	8b91                	and	a5,a5,4
 3c8:	eba9                	bnez	a5,41a <main+0x132>
 3ca:	3521                	jal	1d2 <GAME_init>
 3cc:	3dc9                	jal	29e <I2C_start.constprop.0>
 3ce:	400057b7          	lui	a5,0x40005
 3d2:	40078793          	add	a5,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
 3d6:	0147d703          	lhu	a4,20(a5)
 3da:	08077713          	and	a4,a4,128
 3de:	df65                	beqz	a4,3d6 <main+0xee>
 3e0:	04000713          	li	a4,64
 3e4:	00e79823          	sh	a4,16(a5)
 3e8:	40000693          	li	a3,1024
 3ec:	40020737          	lui	a4,0x40020
 3f0:	db34                	sw	a3,112(a4)
 3f2:	200006b7          	lui	a3,0x20000
 3f6:	38868693          	add	a3,a3,904 # 20000388 <page1>
 3fa:	df34                	sw	a3,120(a4)
 3fc:	5774                	lw	a3,108(a4)
 3fe:	0016e693          	or	a3,a3,1
 402:	d774                	sw	a3,108(a4)
 404:	0047d703          	lhu	a4,4(a5)
 408:	6685                	lui	a3,0x1
 40a:	80068693          	add	a3,a3,-2048 # 800 <_data_lma+0x18c>
 40e:	8f55                	or	a4,a4,a3
 410:	0742                	sll	a4,a4,0x10
 412:	8341                	srl	a4,a4,0x10
 414:	00e79223          	sh	a4,4(a5)
 418:	b755                	j	3bc <main+0xd4>
 41a:	4781                	li	a5,0
 41c:	38000713          	li	a4,896
 420:	200006b7          	lui	a3,0x20000
 424:	00868693          	add	a3,a3,8 # 20000008 <page2>
 428:	96be                	add	a3,a3,a5
 42a:	00068023          	sb	zero,0(a3)
 42e:	0785                	add	a5,a5,1
 430:	fee798e3          	bne	a5,a4,420 <main+0x138>
 434:	c002                	sw	zero,0(sp)
 436:	4782                	lw	a5,0(sp)
 438:	4401                	li	s0,0
 43a:	17fd                	add	a5,a5,-1
 43c:	0ff7f793          	zext.b	a5,a5
 440:	c83e                	sw	a5,16(sp)
 442:	fff40493          	add	s1,s0,-1
 446:	45c2                	lw	a1,16(sp)
 448:	0ff4f793          	zext.b	a5,s1
 44c:	853e                	mv	a0,a5
 44e:	c63e                	sw	a5,12(sp)
 450:	3b39                	jal	16e <getpixel>
 452:	45c2                	lw	a1,16(sp)
 454:	84aa                	mv	s1,a0
 456:	8522                	mv	a0,s0
 458:	3b19                	jal	16e <getpixel>
 45a:	00140713          	add	a4,s0,1
 45e:	45c2                	lw	a1,16(sp)
 460:	c222                	sw	s0,4(sp)
 462:	0ff77413          	zext.b	s0,a4
 466:	00a487b3          	add	a5,s1,a0
 46a:	8522                	mv	a0,s0
 46c:	0ff7f493          	zext.b	s1,a5
 470:	39fd                	jal	16e <getpixel>
 472:	00a487b3          	add	a5,s1,a0
 476:	4582                	lw	a1,0(sp)
 478:	4532                	lw	a0,12(sp)
 47a:	0ff7f493          	zext.b	s1,a5
 47e:	39c5                	jal	16e <getpixel>
 480:	4582                	lw	a1,0(sp)
 482:	00a487b3          	add	a5,s1,a0
 486:	8522                	mv	a0,s0
 488:	0ff7f493          	zext.b	s1,a5
 48c:	31cd                	jal	16e <getpixel>
 48e:	00a487b3          	add	a5,s1,a0
 492:	0ff7f493          	zext.b	s1,a5
 496:	4782                	lw	a5,0(sp)
 498:	4532                	lw	a0,12(sp)
 49a:	00178713          	add	a4,a5,1
 49e:	0ff77793          	zext.b	a5,a4
 4a2:	85be                	mv	a1,a5
 4a4:	c43e                	sw	a5,8(sp)
 4a6:	31e1                	jal	16e <getpixel>
 4a8:	45a2                	lw	a1,8(sp)
 4aa:	94aa                	add	s1,s1,a0
 4ac:	4512                	lw	a0,4(sp)
 4ae:	0ff4f493          	zext.b	s1,s1
 4b2:	3975                	jal	16e <getpixel>
 4b4:	45a2                	lw	a1,8(sp)
 4b6:	94aa                	add	s1,s1,a0
 4b8:	8522                	mv	a0,s0
 4ba:	3955                	jal	16e <getpixel>
 4bc:	0ff4f493          	zext.b	s1,s1
 4c0:	94aa                	add	s1,s1,a0
 4c2:	4582                	lw	a1,0(sp)
 4c4:	4512                	lw	a0,4(sp)
 4c6:	0ff4f493          	zext.b	s1,s1
 4ca:	3155                	jal	16e <getpixel>
 4cc:	4785                	li	a5,1
 4ce:	00f51b63          	bne	a0,a5,4e4 <main+0x1fc>
 4d2:	ffe48793          	add	a5,s1,-2
 4d6:	0ff7f793          	zext.b	a5,a5
 4da:	00f56f63          	bltu	a0,a5,4f8 <main+0x210>
 4de:	4582                	lw	a1,0(sp)
 4e0:	4512                	lw	a0,4(sp)
 4e2:	31e9                	jal	1ac <setpixel>
 4e4:	4582                	lw	a1,0(sp)
 4e6:	4512                	lw	a0,4(sp)
 4e8:	3159                	jal	16e <getpixel>
 4ea:	e519                	bnez	a0,4f8 <main+0x210>
 4ec:	478d                	li	a5,3
 4ee:	00f49563          	bne	s1,a5,4f8 <main+0x210>
 4f2:	4582                	lw	a1,0(sp)
 4f4:	4512                	lw	a0,4(sp)
 4f6:	395d                	jal	1ac <setpixel>
 4f8:	08000793          	li	a5,128
 4fc:	f4f413e3          	bne	s0,a5,442 <main+0x15a>
 500:	4722                	lw	a4,8(sp)
 502:	03800793          	li	a5,56
 506:	00f70463          	beq	a4,a5,50e <i2c_dma.c.0b36d647+0x2>
 50a:	c03a                	sw	a4,0(sp)
 50c:	b72d                	j	436 <main+0x14e>
 50e:	200007b7          	lui	a5,0x20000
 512:	38878793          	add	a5,a5,904 # 20000388 <page1>
 516:	4701                	li	a4,0
 518:	38000693          	li	a3,896
 51c:	20000637          	lui	a2,0x20000
 520:	00860613          	add	a2,a2,8 # 20000008 <page2>
 524:	963a                	add	a2,a2,a4
 526:	00064603          	lbu	a2,0(a2)
 52a:	0705                	add	a4,a4,1 # 40020001 <__global_pointer$+0x2001f801>
 52c:	0785                	add	a5,a5,1
 52e:	06c78fa3          	sb	a2,127(a5)
 532:	fed715e3          	bne	a4,a3,51c <i2c_dma.c.0b36d647+0x10>
 536:	bd59                	j	3cc <main+0xe4>

00000538 <reset_handler>:
 538:	2e800793          	li	a5,744
 53c:	20000197          	auipc	gp,0x20000
 540:	2c418193          	add	gp,gp,708 # 20000800 <__global_pointer$>
 544:	00018113          	mv	sp,gp
 548:	08800513          	li	a0,136
 54c:	30051073          	csrw	mstatus,a0
 550:	458d                	li	a1,3
 552:	80459073          	csrw	0x804,a1
 556:	00000517          	auipc	a0,0x0
 55a:	aaa50513          	add	a0,a0,-1366 # 0 <jump_reset>
 55e:	8d4d                	or	a0,a0,a1
 560:	30551073          	csrw	mtvec,a0
 564:	34179073          	csrw	mepc,a5
 568:	200007b7          	lui	a5,0x20000
 56c:	67400713          	li	a4,1652
 570:	00078793          	mv	a5,a5
 574:	80818693          	add	a3,gp,-2040 # 20000008 <page2>
 578:	04d7eb63          	bltu	a5,a3,5ce <reset_handler+0x96>
 57c:	80818793          	add	a5,gp,-2040 # 20000008 <page2>
 580:	f8818713          	add	a4,gp,-120 # 20000788 <_ebss>
 584:	04e7ea63          	bltu	a5,a4,5d8 <reset_handler+0xa0>
 588:	400227b7          	lui	a5,0x40022
 58c:	4705                	li	a4,1
 58e:	c398                	sw	a4,0(a5)
 590:	010007b7          	lui	a5,0x1000
 594:	40021737          	lui	a4,0x40021
 598:	08178793          	add	a5,a5,129 # 1000081 <system.c.f4c82e1b+0xfff18c>
 59c:	c31c                	sw	a5,0(a4)
 59e:	020006b7          	lui	a3,0x2000
 5a2:	431c                	lw	a5,0(a4)
 5a4:	8ff5                	and	a5,a5,a3
 5a6:	dff5                	beqz	a5,5a2 <reset_handler+0x6a>
 5a8:	4789                	li	a5,2
 5aa:	c35c                	sw	a5,4(a4)
 5ac:	46a1                	li	a3,8
 5ae:	400217b7          	lui	a5,0x40021
 5b2:	43d8                	lw	a4,4(a5)
 5b4:	8b31                	and	a4,a4,12
 5b6:	fed71ee3          	bne	a4,a3,5b2 <reset_handler+0x7a>
 5ba:	e000f737          	lui	a4,0xe000f
 5be:	4695                	li	a3,5
 5c0:	c314                	sw	a3,0(a4)
 5c2:	4f98                	lw	a4,24(a5)
 5c4:	03476713          	or	a4,a4,52
 5c8:	cf98                	sw	a4,24(a5)
 5ca:	30200073          	mret
 5ce:	4310                	lw	a2,0(a4)
 5d0:	0711                	add	a4,a4,4 # e000f004 <__global_pointer$+0xc000e804>
 5d2:	c390                	sw	a2,0(a5)
 5d4:	0791                	add	a5,a5,4 # 40021004 <__global_pointer$+0x20020804>
 5d6:	b74d                	j	578 <reset_handler+0x40>
 5d8:	0007a023          	sw	zero,0(a5)
 5dc:	0791                	add	a5,a5,4
 5de:	b75d                	j	584 <reset_handler+0x4c>

000005e0 <OLED_INIT_CMD>:
 5e0:	3fa8 148d 0020 0021 227f 3f00 12da c0a0     .?.. .!..".?....
 5f0:	00af 0000                                   ....

000005f4 <GAME_TEXT>:
 5f4:	3e00 4141 2241 3e00 4141 3e41 7f00 0804     .>AAA".>AAA>....
 604:	7f10 3f00 3840 3f40 7c00 1112 7c12 0700     ...?@8@?.|...|..
 614:	7008 0708 0000 0305 0000 4600 4949 3149     .p.........FIII1
 624:	0000 0000 0000 3e00 4941 7a49 7c00 1112     .......>AIIz.|..
 634:	7c12 7f00 0c02 7f02 7f00 4949 4149 0000     .|........IIIA..
 644:	0000 0000 3e00 4141 3e41 7f00 0909 0109     .....>AAA>......
 654:	0000 0000 0000 7f00 4040 4040 0000 7f41     ........@@@@..A.
 664:	0041 7f00 0909 0109 7f00 4949 4149 0000     A.........IIIA..
