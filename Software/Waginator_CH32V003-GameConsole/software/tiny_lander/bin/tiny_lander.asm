
bin/tiny_lander.elf:     file format elf32-littleriscv


Disassembly of section .init:

00000000 <jump_reset>:
   0:	1620106f          	j	1162 <reset_handler>

Disassembly of section .text:

00000004 <__mulsi3>:
       4:	862a                	mv	a2,a0
       6:	4501                	li	a0,0
       8:	0015f693          	and	a3,a1,1
       c:	c291                	beqz	a3,10 <__mulsi3+0xc>
       e:	9532                	add	a0,a0,a2
      10:	8185                	srl	a1,a1,0x1
      12:	0606                	sll	a2,a2,0x1
      14:	f9f5                	bnez	a1,8 <__mulsi3+0x4>
      16:	8082                	ret
      18:	0000                	unimp
	...

0000001c <__divsi3>:
      1c:	02054e63          	bltz	a0,58 <__umodsi3+0x8>
      20:	0405c363          	bltz	a1,66 <__umodsi3+0x16>

00000024 <__hidden___udivsi3>:
      24:	862e                	mv	a2,a1
      26:	85aa                	mv	a1,a0
      28:	557d                	li	a0,-1
      2a:	c215                	beqz	a2,4e <__hidden___udivsi3+0x2a>
      2c:	4685                	li	a3,1
      2e:	00b67863          	bgeu	a2,a1,3e <__hidden___udivsi3+0x1a>
      32:	00c05663          	blez	a2,3e <__hidden___udivsi3+0x1a>
      36:	0606                	sll	a2,a2,0x1
      38:	0686                	sll	a3,a3,0x1
      3a:	feb66ce3          	bltu	a2,a1,32 <__hidden___udivsi3+0xe>
      3e:	4501                	li	a0,0
      40:	00c5e463          	bltu	a1,a2,48 <__hidden___udivsi3+0x24>
      44:	8d91                	sub	a1,a1,a2
      46:	8d55                	or	a0,a0,a3
      48:	8285                	srl	a3,a3,0x1
      4a:	8205                	srl	a2,a2,0x1
      4c:	faf5                	bnez	a3,40 <__hidden___udivsi3+0x1c>
      4e:	8082                	ret

00000050 <__umodsi3>:
      50:	8286                	mv	t0,ra
      52:	3fc9                	jal	24 <__hidden___udivsi3>
      54:	852e                	mv	a0,a1
      56:	8282                	jr	t0
      58:	40a00533          	neg	a0,a0
      5c:	00b04763          	bgtz	a1,6a <__umodsi3+0x1a>
      60:	40b005b3          	neg	a1,a1
      64:	b7c1                	j	24 <__hidden___udivsi3>
      66:	40b005b3          	neg	a1,a1
      6a:	8286                	mv	t0,ra
      6c:	3f65                	jal	24 <__hidden___udivsi3>
      6e:	40a00533          	neg	a0,a0
      72:	8282                	jr	t0

00000074 <__modsi3>:
      74:	8286                	mv	t0,ra
      76:	0005c763          	bltz	a1,84 <__modsi3+0x10>
      7a:	00054963          	bltz	a0,8c <__modsi3+0x18>
      7e:	375d                	jal	24 <__hidden___udivsi3>
      80:	852e                	mv	a0,a1
      82:	8282                	jr	t0
      84:	40b005b3          	neg	a1,a1
      88:	fe055be3          	bgez	a0,7e <__modsi3+0xa>
      8c:	40a00533          	neg	a0,a0
      90:	3f51                	jal	24 <__hidden___udivsi3>
      92:	40b00533          	neg	a0,a1
      96:	8282                	jr	t0
	...

0000009a <I2C_write>:
      9a:	400057b7          	lui	a5,0x40005
      9e:	40078793          	add	a5,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
      a2:	0147d703          	lhu	a4,20(a5)
      a6:	08077713          	and	a4,a4,128
      aa:	df65                	beqz	a4,a2 <I2C_write+0x8>
      ac:	00a79823          	sh	a0,16(a5)
      b0:	8082                	ret

000000b2 <I2C_stop>:
      b2:	400057b7          	lui	a5,0x40005
      b6:	40078693          	add	a3,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
      ba:	0146d703          	lhu	a4,20(a3)
      be:	8b11                	and	a4,a4,4
      c0:	df6d                	beqz	a4,ba <I2C_stop+0x8>
      c2:	4007d703          	lhu	a4,1024(a5)
      c6:	20076713          	or	a4,a4,512
      ca:	40e79023          	sh	a4,1024(a5)
      ce:	8082                	ret

000000d0 <fillData>:
      d0:	fdc10113          	add	sp,sp,-36
      d4:	41f55793          	sra	a5,a0,0x1f
      d8:	ce22                	sw	s0,28(sp)
      da:	00a7c433          	xor	s0,a5,a0
      de:	8c1d                	sub	s0,s0,a5
      e0:	cc26                	sw	s1,24(sp)
      e2:	ca2a                	sw	a0,20(sp)
      e4:	84ae                	mv	s1,a1
      e6:	01041513          	sll	a0,s0,0x10
      ea:	6589                	lui	a1,0x2
      ec:	71058593          	add	a1,a1,1808 # 2710 <system.c.5e05c1e3+0x4ac>
      f0:	8141                	srl	a0,a0,0x10
      f2:	d006                	sw	ra,32(sp)
      f4:	3f05                	jal	24 <__hidden___udivsi3>
      f6:	0ff57293          	zext.b	t0,a0
      fa:	75f9                	lui	a1,0xffffe
      fc:	0542                	sll	a0,a0,0x10
      fe:	00548223          	sb	t0,4(s1)
     102:	8f058593          	add	a1,a1,-1808 # ffffd8f0 <__global_pointer$+0xdfffd0f0>
     106:	8141                	srl	a0,a0,0x10
     108:	c816                	sw	t0,16(sp)
     10a:	3ded                	jal	4 <__mulsi3>
     10c:	832a                	mv	t1,a0
     10e:	3e800593          	li	a1,1000
     112:	9522                	add	a0,a0,s0
     114:	c01a                	sw	t1,0(sp)
     116:	3719                	jal	1c <__divsi3>
     118:	0ff57793          	zext.b	a5,a0
     11c:	0ff57693          	zext.b	a3,a0
     120:	00579513          	sll	a0,a5,0x5
     124:	8d1d                	sub	a0,a0,a5
     126:	050a                	sll	a0,a0,0x2
     128:	4302                	lw	t1,0(sp)
     12a:	953e                	add	a0,a0,a5
     12c:	050e                	sll	a0,a0,0x3
     12e:	40a003b3          	neg	t2,a0
     132:	40a40533          	sub	a0,s0,a0
     136:	00d481a3          	sb	a3,3(s1)
     13a:	06400593          	li	a1,100
     13e:	951a                	add	a0,a0,t1
     140:	c636                	sw	a3,12(sp)
     142:	c41e                	sw	t2,8(sp)
     144:	c21a                	sw	t1,4(sp)
     146:	3dd9                	jal	1c <__divsi3>
     148:	0ff57613          	zext.b	a2,a0
     14c:	0ff57513          	zext.b	a0,a0
     150:	00151793          	sll	a5,a0,0x1
     154:	97aa                	add	a5,a5,a0
     156:	078e                	sll	a5,a5,0x3
     158:	43a2                	lw	t2,8(sp)
     15a:	97aa                	add	a5,a5,a0
     15c:	4312                	lw	t1,4(sp)
     15e:	078a                	sll	a5,a5,0x2
     160:	40f407b3          	sub	a5,s0,a5
     164:	979e                	add	a5,a5,t2
     166:	00c48123          	sb	a2,2(s1)
     16a:	00678533          	add	a0,a5,t1
     16e:	45a9                	li	a1,10
     170:	c032                	sw	a2,0(sp)
     172:	356d                	jal	1c <__divsi3>
     174:	46b2                	lw	a3,12(sp)
     176:	4602                	lw	a2,0(sp)
     178:	42c2                	lw	t0,16(sp)
     17a:	00169793          	sll	a5,a3,0x1
     17e:	96be                	add	a3,a3,a5
     180:	00261793          	sll	a5,a2,0x2
     184:	97b2                	add	a5,a5,a2
     186:	0292                	sll	t0,t0,0x4
     188:	078e                	sll	a5,a5,0x3
     18a:	40540433          	sub	s0,s0,t0
     18e:	068e                	sll	a3,a3,0x3
     190:	8f91                	sub	a5,a5,a2
     192:	0ff57513          	zext.b	a0,a0
     196:	078a                	sll	a5,a5,0x2
     198:	9436                	add	s0,s0,a3
     19a:	943e                	add	s0,s0,a5
     19c:	00251793          	sll	a5,a0,0x2
     1a0:	00a480a3          	sb	a0,1(s1)
     1a4:	953e                	add	a0,a0,a5
     1a6:	0506                	sll	a0,a0,0x1
     1a8:	4752                	lw	a4,20(sp)
     1aa:	8c09                	sub	s0,s0,a0
     1ac:	00848023          	sb	s0,0(s1)
     1b0:	5082                	lw	ra,32(sp)
     1b2:	4472                	lw	s0,28(sp)
     1b4:	837d                	srl	a4,a4,0x1f
     1b6:	00e482a3          	sb	a4,5(s1)
     1ba:	44e2                	lw	s1,24(sp)
     1bc:	02410113          	add	sp,sp,36
     1c0:	8082                	ret

000001c2 <ScoreDisplay>:
     1c2:	4785                	li	a5,1
     1c4:	02f59b63          	bne	a1,a5,1fa <ScoreDisplay+0x38>
     1c8:	fff50793          	add	a5,a0,-1
     1cc:	0ff7f693          	zext.b	a3,a5
     1d0:	474d                	li	a4,19
     1d2:	4501                	li	a0,0
     1d4:	02d76463          	bltu	a4,a3,1fc <ScoreDisplay+0x3a>
     1d8:	4027d693          	sra	a3,a5,0x2
     1dc:	8e15                	sub	a2,a2,a3
     1de:	00464603          	lbu	a2,4(a2)
     1e2:	068a                	sll	a3,a3,0x2
     1e4:	6705                	lui	a4,0x1
     1e6:	8f95                	sub	a5,a5,a3
     1e8:	76470713          	add	a4,a4,1892 # 1764 <DIGITS>
     1ec:	00261693          	sll	a3,a2,0x2
     1f0:	9736                	add	a4,a4,a3
     1f2:	97ba                	add	a5,a5,a4
     1f4:	0007c503          	lbu	a0,0(a5)
     1f8:	8082                	ret
     1fa:	4501                	li	a0,0
     1fc:	8082                	ret

000001fe <VelocityDisplay>:
     1fe:	4705                	li	a4,1
     200:	87aa                	mv	a5,a0
     202:	8536                	mv	a0,a3
     204:	02e69c63          	bne	a3,a4,23c <VelocityDisplay+0x3e>
     208:	4711                	li	a4,4
     20a:	4501                	li	a0,0
     20c:	04e59863          	bne	a1,a4,25c <VelocityDisplay+0x5e>
     210:	17ed                	add	a5,a5,-5
     212:	0ff7f713          	zext.b	a4,a5
     216:	46bd                	li	a3,15
     218:	4501                	li	a0,0
     21a:	04e6e163          	bltu	a3,a4,25c <VelocityDisplay+0x5e>
     21e:	6685                	lui	a3,0x1
     220:	458d                	li	a1,3
     222:	76468693          	add	a3,a3,1892 # 1764 <DIGITS>
     226:	00e5ed63          	bltu	a1,a4,240 <VelocityDisplay+0x42>
     22a:	00564703          	lbu	a4,5(a2)
     22e:	0729                	add	a4,a4,10
     230:	070a                	sll	a4,a4,0x2
     232:	9736                	add	a4,a4,a3
     234:	97ba                	add	a5,a5,a4
     236:	0007c503          	lbu	a0,0(a5)
     23a:	8082                	ret
     23c:	4715                	li	a4,5
     23e:	b7f9                	j	20c <VelocityDisplay+0xe>
     240:	4027d713          	sra	a4,a5,0x2
     244:	8d99                	sub	a1,a1,a4
     246:	962e                	add	a2,a2,a1
     248:	00064603          	lbu	a2,0(a2)
     24c:	070a                	sll	a4,a4,0x2
     24e:	8f99                	sub	a5,a5,a4
     250:	00261713          	sll	a4,a2,0x2
     254:	96ba                	add	a3,a3,a4
     256:	96be                	add	a3,a3,a5
     258:	0006c503          	lbu	a0,0(a3)
     25c:	8082                	ret

0000025e <FuelDisplay>:
     25e:	1141                	add	sp,sp,-16
     260:	c226                	sw	s1,4(sp)
     262:	c606                	sw	ra,12(sp)
     264:	c422                	sw	s0,8(sp)
     266:	4799                	li	a5,6
     268:	4481                	li	s1,0
     26a:	04f59063          	bne	a1,a5,2aa <FuelDisplay+0x4c>
     26e:	ffb50793          	add	a5,a0,-5
     272:	0ff7f793          	zext.b	a5,a5
     276:	4739                	li	a4,14
     278:	842a                	mv	s0,a0
     27a:	4481                	li	s1,0
     27c:	02f76763          	bltu	a4,a5,2aa <FuelDisplay+0x4c>
     280:	00861783          	lh	a5,8(a2)
     284:	3e800593          	li	a1,1000
     288:	853e                	mv	a0,a5
     28a:	c03e                	sw	a5,0(sp)
     28c:	3b41                	jal	1c <__divsi3>
     28e:	0542                	sll	a0,a0,0x10
     290:	8541                	sra	a0,a0,0x10
     292:	ffc40713          	add	a4,s0,-4
     296:	00e55863          	bge	a0,a4,2a6 <FuelDisplay+0x48>
     29a:	4715                	li	a4,5
     29c:	00e41763          	bne	s0,a4,2aa <FuelDisplay+0x4c>
     2a0:	4782                	lw	a5,0(sp)
     2a2:	00f05463          	blez	a5,2aa <FuelDisplay+0x4c>
     2a6:	0f800493          	li	s1,248
     2aa:	40b2                	lw	ra,12(sp)
     2ac:	4422                	lw	s0,8(sp)
     2ae:	8526                	mv	a0,s1
     2b0:	4492                	lw	s1,4(sp)
     2b2:	0141                	add	sp,sp,16
     2b4:	8082                	ret

000002b6 <LivesDisplay>:
     2b6:	1141                	add	sp,sp,-16
     2b8:	c226                	sw	s1,4(sp)
     2ba:	c606                	sw	ra,12(sp)
     2bc:	c422                	sw	s0,8(sp)
     2be:	479d                	li	a5,7
     2c0:	4481                	li	s1,0
     2c2:	02f59d63          	bne	a1,a5,2fc <LivesDisplay+0x46>
     2c6:	fff50413          	add	s0,a0,-1
     2ca:	0ff47713          	zext.b	a4,s0
     2ce:	47cd                	li	a5,19
     2d0:	4481                	li	s1,0
     2d2:	02e7e563          	bltu	a5,a4,2fc <LivesDisplay+0x46>
     2d6:	01d64783          	lbu	a5,29(a2)
     2da:	4595                	li	a1,5
     2dc:	8522                	mv	a0,s0
     2de:	c03e                	sw	a5,0(sp)
     2e0:	3b35                	jal	1c <__divsi3>
     2e2:	4782                	lw	a5,0(sp)
     2e4:	00f55c63          	bge	a0,a5,2fc <LivesDisplay+0x46>
     2e8:	200004b7          	lui	s1,0x20000
     2ec:	4595                	li	a1,5
     2ee:	8522                	mv	a0,s0
     2f0:	3351                	jal	74 <__modsi3>
     2f2:	00048493          	mv	s1,s1
     2f6:	94aa                	add	s1,s1,a0
     2f8:	0004c483          	lbu	s1,0(s1) # 20000000 <LIVE>
     2fc:	40b2                	lw	ra,12(sp)
     2fe:	4422                	lw	s0,8(sp)
     300:	8526                	mv	a0,s1
     302:	4492                	lw	s1,4(sp)
     304:	0141                	add	sp,sp,16
     306:	8082                	ret

00000308 <DLY_ticks>:
     308:	e000f7b7          	lui	a5,0xe000f
     30c:	479c                	lw	a5,8(a5)
     30e:	e000f737          	lui	a4,0xe000f
     312:	953e                	add	a0,a0,a5
     314:	471c                	lw	a5,8(a4)
     316:	8f89                	sub	a5,a5,a0
     318:	fe07cee3          	bltz	a5,314 <DLY_ticks+0xc>
     31c:	8082                	ret

0000031e <JOY_sound>:
     31e:	0ff00713          	li	a4,255
     322:	1131                	add	sp,sp,-20
     324:	8f09                	sub	a4,a4,a0
     326:	c622                	sw	s0,12(sp)
     328:	00171413          	sll	s0,a4,0x1
     32c:	fff58793          	add	a5,a1,-1
     330:	943a                	add	s0,s0,a4
     332:	c426                	sw	s1,8(sp)
     334:	c806                	sw	ra,16(sp)
     336:	86aa                	mv	a3,a0
     338:	0ff7f793          	zext.b	a5,a5
     33c:	040a                	sll	s0,s0,0x2
     33e:	400114b7          	lui	s1,0x40011
     342:	c689                	beqz	a3,34c <JOY_sound+0x2e>
     344:	80048713          	add	a4,s1,-2048 # 40010800 <__global_pointer$+0x20010000>
     348:	4609                	li	a2,2
     34a:	cb50                	sw	a2,20(a4)
     34c:	8522                	mv	a0,s0
     34e:	c236                	sw	a3,4(sp)
     350:	c03e                	sw	a5,0(sp)
     352:	3f5d                	jal	308 <DLY_ticks>
     354:	80048713          	add	a4,s1,-2048
     358:	4609                	li	a2,2
     35a:	cb10                	sw	a2,16(a4)
     35c:	8522                	mv	a0,s0
     35e:	376d                	jal	308 <DLY_ticks>
     360:	4782                	lw	a5,0(sp)
     362:	0ff00713          	li	a4,255
     366:	4692                	lw	a3,4(sp)
     368:	17fd                	add	a5,a5,-1 # e000efff <__global_pointer$+0xc000e7ff>
     36a:	0ff7f793          	zext.b	a5,a5
     36e:	fce79ae3          	bne	a5,a4,342 <JOY_sound+0x24>
     372:	40c2                	lw	ra,16(sp)
     374:	4432                	lw	s0,12(sp)
     376:	44a2                	lw	s1,8(sp)
     378:	0151                	add	sp,sp,20
     37a:	8082                	ret

0000037c <LanderDisplay>:
     37c:	1111                	add	sp,sp,-28
     37e:	cc06                	sw	ra,24(sp)
     380:	ca22                	sw	s0,20(sp)
     382:	c826                	sw	s1,16(sp)
     384:	00464483          	lbu	s1,4(a2)
     388:	872e                	mv	a4,a1
     38a:	0034d693          	srl	a3,s1,0x3
     38e:	889d                	and	s1,s1,7
     390:	00b68763          	beq	a3,a1,39e <LanderDisplay+0x22>
     394:	00168793          	add	a5,a3,1
     398:	06f59663          	bne	a1,a5,404 <LanderDisplay+0x88>
     39c:	c4a5                	beqz	s1,404 <LanderDisplay+0x88>
     39e:	00364783          	lbu	a5,3(a2)
     3a2:	8d1d                	sub	a0,a0,a5
     3a4:	4799                	li	a5,6
     3a6:	04a7ef63          	bltu	a5,a0,404 <LanderDisplay+0x88>
     3aa:	01564303          	lbu	t1,21(a2)
     3ae:	6785                	lui	a5,0x1
     3b0:	72c78793          	add	a5,a5,1836 # 172c <LANDER>
     3b4:	04030f63          	beqz	t1,412 <LanderDisplay+0x96>
     3b8:	42a1                	li	t0,8
     3ba:	406282b3          	sub	t0,t0,t1
     3be:	00329593          	sll	a1,t0,0x3
     3c2:	405585b3          	sub	a1,a1,t0
     3c6:	97ae                	add	a5,a5,a1
     3c8:	97aa                	add	a5,a5,a0
     3ca:	00231513          	sll	a0,t1,0x2
     3ce:	951a                	add	a0,a0,t1
     3d0:	050a                	sll	a0,a0,0x2
     3d2:	45a9                	li	a1,10
     3d4:	0fc57513          	and	a0,a0,252
     3d8:	0007c403          	lbu	s0,0(a5)
     3dc:	c632                	sw	a2,12(sp)
     3de:	c43a                	sw	a4,8(sp)
     3e0:	c236                	sw	a3,4(sp)
     3e2:	c01a                	sw	t1,0(sp)
     3e4:	3f2d                	jal	31e <JOY_sound>
     3e6:	4302                	lw	t1,0(sp)
     3e8:	4692                	lw	a3,4(sp)
     3ea:	4722                	lw	a4,8(sp)
     3ec:	fff30793          	add	a5,t1,-1
     3f0:	0ff7f793          	zext.b	a5,a5
     3f4:	4632                	lw	a2,12(sp)
     3f6:	e391                	bnez	a5,3fa <LanderDisplay+0x7e>
     3f8:	478d                	li	a5,3
     3fa:	00f60aa3          	sb	a5,21(a2)
     3fe:	e0ad                	bnez	s1,460 <LanderDisplay+0xe4>
     400:	00e68363          	beq	a3,a4,406 <LanderDisplay+0x8a>
     404:	4401                	li	s0,0
     406:	40e2                	lw	ra,24(sp)
     408:	8522                	mv	a0,s0
     40a:	4452                	lw	s0,20(sp)
     40c:	44c2                	lw	s1,16(sp)
     40e:	0171                	add	sp,sp,28
     410:	8082                	ret
     412:	00664583          	lbu	a1,6(a2)
     416:	c585                	beqz	a1,43e <LanderDisplay+0xc2>
     418:	00a785b3          	add	a1,a5,a0
     41c:	0155c403          	lbu	s0,21(a1)
     420:	00564583          	lbu	a1,5(a2)
     424:	c995                	beqz	a1,458 <LanderDisplay+0xdc>
     426:	01464583          	lbu	a1,20(a2)
     42a:	c59d                	beqz	a1,458 <LanderDisplay+0xdc>
     42c:	00861603          	lh	a2,8(a2)
     430:	02c05463          	blez	a2,458 <LanderDisplay+0xdc>
     434:	97aa                	add	a5,a5,a0
     436:	00e7c783          	lbu	a5,14(a5)
     43a:	8c5d                	or	s0,s0,a5
     43c:	b7c9                	j	3fe <LanderDisplay+0x82>
     43e:	00764583          	lbu	a1,7(a2)
     442:	c591                	beqz	a1,44e <LanderDisplay+0xd2>
     444:	00a785b3          	add	a1,a5,a0
     448:	01c5c403          	lbu	s0,28(a1)
     44c:	bfd1                	j	420 <LanderDisplay+0xa4>
     44e:	00a785b3          	add	a1,a5,a0
     452:	0005c403          	lbu	s0,0(a1)
     456:	b7e9                	j	420 <LanderDisplay+0xa4>
     458:	97aa                	add	a5,a5,a0
     45a:	0077c783          	lbu	a5,7(a5)
     45e:	bff1                	j	43a <LanderDisplay+0xbe>
     460:	00e69763          	bne	a3,a4,46e <LanderDisplay+0xf2>
     464:	00941433          	sll	s0,s0,s1
     468:	0ff47413          	zext.b	s0,s0
     46c:	bf69                	j	406 <LanderDisplay+0x8a>
     46e:	0685                	add	a3,a3,1
     470:	f8d71ae3          	bne	a4,a3,404 <LanderDisplay+0x88>
     474:	47a1                	li	a5,8
     476:	8f85                	sub	a5,a5,s1
     478:	40f457b3          	sra	a5,s0,a5
     47c:	0ff7f413          	zext.b	s0,a5
     480:	b759                	j	406 <LanderDisplay+0x8a>

00000482 <ALERTJOY_sound>:
     482:	1151                	add	sp,sp,-12
     484:	06400593          	li	a1,100
     488:	09600513          	li	a0,150
     48c:	c406                	sw	ra,8(sp)
     48e:	c222                	sw	s0,4(sp)
     490:	3579                	jal	31e <JOY_sound>
     492:	00125437          	lui	s0,0x125
     496:	f8040513          	add	a0,s0,-128 # 124f80 <system.c.5e05c1e3+0x122d1c>
     49a:	35bd                	jal	308 <DLY_ticks>
     49c:	05a00593          	li	a1,90
     4a0:	09600513          	li	a0,150
     4a4:	3dad                	jal	31e <JOY_sound>
     4a6:	f8040513          	add	a0,s0,-128
     4aa:	3db9                	jal	308 <DLY_ticks>
     4ac:	4412                	lw	s0,4(sp)
     4ae:	40a2                	lw	ra,8(sp)
     4b0:	06400593          	li	a1,100
     4b4:	09600513          	li	a0,150
     4b8:	0131                	add	sp,sp,12
     4ba:	b595                	j	31e <JOY_sound>

000004bc <I2C_start.constprop.0>:
     4bc:	400057b7          	lui	a5,0x40005
     4c0:	40078693          	add	a3,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
     4c4:	0186d703          	lhu	a4,24(a3)
     4c8:	8b09                	and	a4,a4,2
     4ca:	ff6d                	bnez	a4,4c4 <I2C_start.constprop.0+0x8>
     4cc:	4007d703          	lhu	a4,1024(a5)
     4d0:	10076713          	or	a4,a4,256
     4d4:	40e79023          	sh	a4,1024(a5)
     4d8:	400057b7          	lui	a5,0x40005
     4dc:	40078793          	add	a5,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
     4e0:	0147d703          	lhu	a4,20(a5)
     4e4:	8b05                	and	a4,a4,1
     4e6:	df6d                	beqz	a4,4e0 <I2C_start.constprop.0+0x24>
     4e8:	07800713          	li	a4,120
     4ec:	00e79823          	sh	a4,16(a5)
     4f0:	400056b7          	lui	a3,0x40005
     4f4:	00820737          	lui	a4,0x820
     4f8:	40068693          	add	a3,a3,1024 # 40005400 <__global_pointer$+0x20004c00>
     4fc:	070d                	add	a4,a4,3 # 820003 <system.c.5e05c1e3+0x81dd9f>
     4fe:	0146d783          	lhu	a5,20(a3)
     502:	0186d603          	lhu	a2,24(a3)
     506:	07c2                	sll	a5,a5,0x10
     508:	8fd1                	or	a5,a5,a2
     50a:	8ff9                	and	a5,a5,a4
     50c:	fee799e3          	bne	a5,a4,4fe <I2C_start.constprop.0+0x42>
     510:	8082                	ret

00000512 <Tiny_Flip>:
     512:	6785                	lui	a5,0x1
     514:	fb810113          	add	sp,sp,-72
     518:	27478793          	add	a5,a5,628 # 1274 <DASHBOARD>
     51c:	c0a2                	sw	s0,64(sp)
     51e:	c286                	sw	ra,68(sp)
     520:	de26                	sw	s1,60(sp)
     522:	cc2a                	sw	a0,24(sp)
     524:	842e                	mv	s0,a1
     526:	ce32                	sw	a2,28(sp)
     528:	d036                	sw	a3,32(sp)
     52a:	d23a                	sw	a4,36(sp)
     52c:	c402                	sw	zero,8(sp)
     52e:	d63e                	sw	a5,44(sp)
     530:	00814783          	lbu	a5,8(sp)
     534:	c03e                	sw	a5,0(sp)
     536:	3759                	jal	4bc <I2C_start.constprop.0>
     538:	4501                	li	a0,0
     53a:	3685                	jal	9a <I2C_write>
     53c:	4782                	lw	a5,0(sp)
     53e:	0b07e513          	or	a0,a5,176
     542:	3ea1                	jal	9a <I2C_write>
     544:	4501                	li	a0,0
     546:	3e91                	jal	9a <I2C_write>
     548:	4541                	li	a0,16
     54a:	3e81                	jal	9a <I2C_write>
     54c:	369d                	jal	b2 <I2C_stop>
     54e:	37bd                	jal	4bc <I2C_start.constprop.0>
     550:	04000513          	li	a0,64
     554:	3699                	jal	9a <I2C_write>
     556:	47a2                	lw	a5,8(sp)
     558:	4722                	lw	a4,8(sp)
     55a:	0786                	sll	a5,a5,0x1
     55c:	97ba                	add	a5,a5,a4
     55e:	078e                	sll	a5,a5,0x3
     560:	fd078713          	add	a4,a5,-48
     564:	ca3a                	sw	a4,20(sp)
     566:	4722                	lw	a4,8(sp)
     568:	8f99                	sub	a5,a5,a4
     56a:	5732                	lw	a4,44(sp)
     56c:	97ba                	add	a5,a5,a4
     56e:	c83e                	sw	a5,16(sp)
     570:	47a2                	lw	a5,8(sp)
     572:	00779713          	sll	a4,a5,0x7
     576:	6785                	lui	a5,0x1
     578:	32c78793          	add	a5,a5,812 # 132c <INTRO>
     57c:	97ba                	add	a5,a5,a4
     57e:	d43e                	sw	a5,40(sp)
     580:	47e2                	lw	a5,24(sp)
     582:	36079763          	bnez	a5,8f0 <Tiny_Flip+0x3de>
     586:	c202                	sw	zero,4(sp)
     588:	c602                	sw	zero,12(sp)
     58a:	4712                	lw	a4,4(sp)
     58c:	47d9                	li	a5,22
     58e:	34e7f963          	bgeu	a5,a4,8e0 <Tiny_Flip+0x3ce>
     592:	47dd                	li	a5,23
     594:	22f70b63          	beq	a4,a5,7ca <Tiny_Flip+0x2b8>
     598:	07f00793          	li	a5,127
     59c:	20f70263          	beq	a4,a5,7a0 <Tiny_Flip+0x28e>
     5a0:	fe970313          	add	t1,a4,-23
     5a4:	0ff37793          	zext.b	a5,t1
     5a8:	ca3e                	sw	a5,20(sp)
     5aa:	01944783          	lbu	a5,25(s0)
     5ae:	4752                	lw	a4,20(sp)
     5b0:	6385                	lui	t2,0x1
     5b2:	17fd                	add	a5,a5,-1
     5b4:	0786                	sll	a5,a5,0x1
     5b6:	0ff7f793          	zext.b	a5,a5
     5ba:	00379693          	sll	a3,a5,0x3
     5be:	8e9d                	sub	a3,a3,a5
     5c0:	068a                	sll	a3,a3,0x2
     5c2:	8e9d                	sub	a3,a3,a5
     5c4:	0785                	add	a5,a5,1
     5c6:	00379613          	sll	a2,a5,0x3
     5ca:	8e1d                	sub	a2,a2,a5
     5cc:	060a                	sll	a2,a2,0x2
     5ce:	7a838513          	add	a0,t2,1960 # 17a8 <GAMEMAP>
     5d2:	8e1d                	sub	a2,a2,a5
     5d4:	00275293          	srl	t0,a4,0x2
     5d8:	96aa                	add	a3,a3,a0
     5da:	9532                	add	a0,a0,a2
     5dc:	00568733          	add	a4,a3,t0
     5e0:	9516                	add	a0,a0,t0
     5e2:	00074703          	lbu	a4,0(a4)
     5e6:	00054603          	lbu	a2,0(a0)
     5ea:	03f00593          	li	a1,63
     5ee:	40e58733          	sub	a4,a1,a4
     5f2:	40c58633          	sub	a2,a1,a2
     5f6:	00337313          	and	t1,t1,3
     5fa:	0ff77493          	zext.b	s1,a4
     5fe:	0ff67613          	zext.b	a2,a2
     602:	7a838393          	add	t2,t2,1960
     606:	08030063          	beqz	t1,686 <Tiny_Flip+0x174>
     60a:	03e00513          	li	a0,62
     60e:	0285                	add	t0,t0,1
     610:	02956f63          	bltu	a0,s1,64e <Tiny_Flip+0x13c>
     614:	9696                	add	a3,a3,t0
     616:	0006c683          	lbu	a3,0(a3)
     61a:	851a                	mv	a0,t1
     61c:	dc32                	sw	a2,56(sp)
     61e:	40d586b3          	sub	a3,a1,a3
     622:	0ff6f693          	zext.b	a3,a3
     626:	8e85                	sub	a3,a3,s1
     628:	41f6d593          	sra	a1,a3,0x1f
     62c:	898d                	and	a1,a1,3
     62e:	95b6                	add	a1,a1,a3
     630:	8589                	sra	a1,a1,0x2
     632:	da3e                	sw	a5,52(sp)
     634:	d816                	sw	t0,48(sp)
     636:	d41a                	sw	t1,40(sp)
     638:	32f1                	jal	4 <__mulsi3>
     63a:	6785                	lui	a5,0x1
     63c:	7a878393          	add	t2,a5,1960 # 17a8 <GAMEMAP>
     640:	5662                	lw	a2,56(sp)
     642:	57d2                	lw	a5,52(sp)
     644:	52c2                	lw	t0,48(sp)
     646:	5322                	lw	t1,40(sp)
     648:	9526                	add	a0,a0,s1
     64a:	0ff57493          	zext.b	s1,a0
     64e:	00379693          	sll	a3,a5,0x3
     652:	8e9d                	sub	a3,a3,a5
     654:	068a                	sll	a3,a3,0x2
     656:	40f687b3          	sub	a5,a3,a5
     65a:	93be                	add	t2,t2,a5
     65c:	9396                	add	t2,t2,t0
     65e:	0003c683          	lbu	a3,0(t2)
     662:	03f00793          	li	a5,63
     666:	851a                	mv	a0,t1
     668:	8f95                	sub	a5,a5,a3
     66a:	0ff7f793          	zext.b	a5,a5
     66e:	8f91                	sub	a5,a5,a2
     670:	41f7d593          	sra	a1,a5,0x1f
     674:	898d                	and	a1,a1,3
     676:	95be                	add	a1,a1,a5
     678:	8589                	sra	a1,a1,0x2
     67a:	d432                	sw	a2,40(sp)
     67c:	3261                	jal	4 <__mulsi3>
     67e:	5622                	lw	a2,40(sp)
     680:	9532                	add	a0,a0,a2
     682:	0ff57613          	zext.b	a2,a0
     686:	4702                	lw	a4,0(sp)
     688:	0034d793          	srl	a5,s1,0x3
     68c:	00365693          	srl	a3,a2,0x3
     690:	02e79d63          	bne	a5,a4,6ca <Tiny_Flip+0x1b8>
     694:	03f00793          	li	a5,63
     698:	00f49e63          	bne	s1,a5,6b4 <Tiny_Flip+0x1a2>
     69c:	47d2                	lw	a5,20(sp)
     69e:	0017f493          	and	s1,a5,1
     6a2:	0b800793          	li	a5,184
     6a6:	c099                	beqz	s1,6ac <Tiny_Flip+0x19a>
     6a8:	05800793          	li	a5,88
     6ac:	4702                	lw	a4,0(sp)
     6ae:	0ae69963          	bne	a3,a4,760 <Tiny_Flip+0x24e>
     6b2:	a015                	j	6d6 <Tiny_Flip+0x1c4>
     6b4:	47a2                	lw	a5,8(sp)
     6b6:	078e                	sll	a5,a5,0x3
     6b8:	40f48733          	sub	a4,s1,a5
     6bc:	0ff00793          	li	a5,255
     6c0:	00e797b3          	sll	a5,a5,a4
     6c4:	0ff7f793          	zext.b	a5,a5
     6c8:	b7d5                	j	6ac <Tiny_Flip+0x19a>
     6ca:	4702                	lw	a4,0(sp)
     6cc:	08e69663          	bne	a3,a4,758 <Tiny_Flip+0x246>
     6d0:	08e7eb63          	bltu	a5,a4,766 <Tiny_Flip+0x254>
     6d4:	4781                	li	a5,0
     6d6:	068e                	sll	a3,a3,0x3
     6d8:	8e91                	sub	a3,a3,a2
     6da:	069d                	add	a3,a3,7
     6dc:	0ff00713          	li	a4,255
     6e0:	40d75733          	sra	a4,a4,a3
     6e4:	8fd9                	or	a5,a5,a4
     6e6:	0ff7f793          	zext.b	a5,a5
     6ea:	4582                	lw	a1,0(sp)
     6ec:	4512                	lw	a0,4(sp)
     6ee:	8622                	mv	a2,s0
     6f0:	ca3e                	sw	a5,20(sp)
     6f2:	3169                	jal	37c <LanderDisplay>
     6f4:	46a2                	lw	a3,8(sp)
     6f6:	471d                	li	a4,7
     6f8:	47d2                	lw	a5,20(sp)
     6fa:	00e69e63          	bne	a3,a4,716 <Tiny_Flip+0x204>
     6fe:	01b44703          	lbu	a4,27(s0)
     702:	46b2                	lw	a3,12(sp)
     704:	0759                	add	a4,a4,22
     706:	00d75863          	bge	a4,a3,716 <Tiny_Flip+0x204>
     70a:	01c44603          	lbu	a2,28(s0)
     70e:	01760593          	add	a1,a2,23
     712:	0cd5dc63          	bge	a1,a3,7ea <Tiny_Flip+0x2d8>
     716:	c7b5                	beqz	a5,782 <Tiny_Flip+0x270>
     718:	c52d                	beqz	a0,782 <Tiny_Flip+0x270>
     71a:	00f56733          	or	a4,a0,a5
     71e:	0ff77713          	zext.b	a4,a4
     722:	00a786b3          	add	a3,a5,a0
     726:	04d70e63          	beq	a4,a3,782 <Tiny_Flip+0x270>
     72a:	01644703          	lbu	a4,22(s0)
     72e:	e711                	bnez	a4,73a <Tiny_Flip+0x228>
     730:	01d44703          	lbu	a4,29(s0)
     734:	177d                	add	a4,a4,-1
     736:	00e40ea3          	sb	a4,29(s0)
     73a:	4582                	lw	a1,0(sp)
     73c:	470d                	li	a4,3
     73e:	4512                	lw	a0,4(sp)
     740:	00e40aa3          	sb	a4,21(s0)
     744:	4705                	li	a4,1
     746:	8622                	mv	a2,s0
     748:	00e40b23          	sb	a4,22(s0)
     74c:	ca3e                	sw	a5,20(sp)
     74e:	313d                	jal	37c <LanderDisplay>
     750:	4582                	lw	a1,0(sp)
     752:	84aa                	mv	s1,a0
     754:	8622                	mv	a2,s0
     756:	aa11                	j	86a <Tiny_Flip+0x358>
     758:	4702                	lw	a4,0(sp)
     75a:	00e7e663          	bltu	a5,a4,766 <Tiny_Flip+0x254>
     75e:	4781                	li	a5,0
     760:	4702                	lw	a4,0(sp)
     762:	f8d774e3          	bgeu	a4,a3,6ea <Tiny_Flip+0x1d8>
     766:	4582                	lw	a1,0(sp)
     768:	4512                	lw	a0,4(sp)
     76a:	8622                	mv	a2,s0
     76c:	3901                	jal	37c <LanderDisplay>
     76e:	4722                	lw	a4,8(sp)
     770:	479d                	li	a5,7
     772:	00f70e63          	beq	a4,a5,78e <Tiny_Flip+0x27c>
     776:	0ff00793          	li	a5,255
     77a:	f945                	bnez	a0,72a <Tiny_Flip+0x218>
     77c:	4501                	li	a0,0
     77e:	0ff00793          	li	a5,255
     782:	8d5d                	or	a0,a0,a5
     784:	4582                	lw	a1,0(sp)
     786:	0ff57493          	zext.b	s1,a0
     78a:	8622                	mv	a2,s0
     78c:	a06d                	j	836 <Tiny_Flip+0x324>
     78e:	01b44703          	lbu	a4,27(s0)
     792:	46b2                	lw	a3,12(sp)
     794:	0759                	add	a4,a4,22
     796:	fed750e3          	bge	a4,a3,776 <Tiny_Flip+0x264>
     79a:	0ff00793          	li	a5,255
     79e:	b7b5                	j	70a <Tiny_Flip+0x1f8>
     7a0:	4582                	lw	a1,0(sp)
     7a2:	8622                	mv	a2,s0
     7a4:	07f00513          	li	a0,127
     7a8:	3ed1                	jal	37c <LanderDisplay>
     7aa:	4722                	lw	a4,8(sp)
     7ac:	479d                	li	a5,7
     7ae:	fcf714e3          	bne	a4,a5,776 <Tiny_Flip+0x264>
     7b2:	01b44703          	lbu	a4,27(s0)
     7b6:	07e00793          	li	a5,126
     7ba:	0759                	add	a4,a4,22
     7bc:	fae7cde3          	blt	a5,a4,776 <Tiny_Flip+0x264>
     7c0:	0ff00793          	li	a5,255
     7c4:	07f00693          	li	a3,127
     7c8:	b789                	j	70a <Tiny_Flip+0x1f8>
     7ca:	4582                	lw	a1,0(sp)
     7cc:	8622                	mv	a2,s0
     7ce:	455d                	li	a0,23
     7d0:	3675                	jal	37c <LanderDisplay>
     7d2:	4722                	lw	a4,8(sp)
     7d4:	479d                	li	a5,7
     7d6:	faf710e3          	bne	a4,a5,776 <Tiny_Flip+0x264>
     7da:	01b44783          	lbu	a5,27(s0)
     7de:	ffc1                	bnez	a5,776 <Tiny_Flip+0x264>
     7e0:	01c44603          	lbu	a2,28(s0)
     7e4:	0ff00793          	li	a5,255
     7e8:	4759                	li	a4,22
     7ea:	dd41                	beqz	a0,782 <Tiny_Flip+0x270>
     7ec:	ffc56693          	or	a3,a0,-4
     7f0:	0ff6f693          	zext.b	a3,a3
     7f4:	0fc50593          	add	a1,a0,252
     7f8:	f8b685e3          	beq	a3,a1,782 <Tiny_Flip+0x270>
     7fc:	00c41583          	lh	a1,12(s0)
     800:	00c45683          	lhu	a3,12(s0)
     804:	85bd                	sra	a1,a1,0xf
     806:	8ead                	xor	a3,a3,a1
     808:	8e8d                	sub	a3,a3,a1
     80a:	06c2                	sll	a3,a3,0x10
     80c:	82c1                	srl	a3,a3,0x10
     80e:	02300593          	li	a1,35
     812:	02d5e663          	bltu	a1,a3,83e <Tiny_Flip+0x32c>
     816:	00344683          	lbu	a3,3(s0)
     81a:	02d75263          	bge	a4,a3,83e <Tiny_Flip+0x32c>
     81e:	01060713          	add	a4,a2,16
     822:	00d74e63          	blt	a4,a3,83e <Tiny_Flip+0x32c>
     826:	4705                	li	a4,1
     828:	8d5d                	or	a0,a0,a5
     82a:	00e40ba3          	sb	a4,23(s0)
     82e:	0ff57493          	zext.b	s1,a0
     832:	8622                	mv	a2,s0
     834:	459d                	li	a1,7
     836:	4512                	lw	a0,4(sp)
     838:	3cbd                	jal	2b6 <LivesDisplay>
     83a:	8d45                	or	a0,a0,s1
     83c:	a825                	j	874 <Tiny_Flip+0x362>
     83e:	01644703          	lbu	a4,22(s0)
     842:	e711                	bnez	a4,84e <Tiny_Flip+0x33c>
     844:	01d44703          	lbu	a4,29(s0)
     848:	177d                	add	a4,a4,-1
     84a:	00e40ea3          	sb	a4,29(s0)
     84e:	470d                	li	a4,3
     850:	4512                	lw	a0,4(sp)
     852:	00e40aa3          	sb	a4,21(s0)
     856:	4705                	li	a4,1
     858:	8622                	mv	a2,s0
     85a:	459d                	li	a1,7
     85c:	00e40b23          	sb	a4,22(s0)
     860:	ca3e                	sw	a5,20(sp)
     862:	3e29                	jal	37c <LanderDisplay>
     864:	84aa                	mv	s1,a0
     866:	8622                	mv	a2,s0
     868:	459d                	li	a1,7
     86a:	4512                	lw	a0,4(sp)
     86c:	34a9                	jal	2b6 <LivesDisplay>
     86e:	47d2                	lw	a5,20(sp)
     870:	8d45                	or	a0,a0,s1
     872:	8d5d                	or	a0,a0,a5
     874:	0ff57513          	zext.b	a0,a0
     878:	4781                	li	a5,0
     87a:	00a7e4b3          	or	s1,a5,a0
     87e:	4672                	lw	a2,28(sp)
     880:	4582                	lw	a1,0(sp)
     882:	4512                	lw	a0,4(sp)
     884:	0ff4f493          	zext.b	s1,s1
     888:	3a2d                	jal	1c2 <ScoreDisplay>
     88a:	5602                	lw	a2,32(sp)
     88c:	4582                	lw	a1,0(sp)
     88e:	8cc9                	or	s1,s1,a0
     890:	4512                	lw	a0,4(sp)
     892:	4685                	li	a3,1
     894:	0ff4f493          	zext.b	s1,s1
     898:	329d                	jal	1fe <VelocityDisplay>
     89a:	5612                	lw	a2,36(sp)
     89c:	4582                	lw	a1,0(sp)
     89e:	8cc9                	or	s1,s1,a0
     8a0:	4512                	lw	a0,4(sp)
     8a2:	4681                	li	a3,0
     8a4:	0ff4f493          	zext.b	s1,s1
     8a8:	3a99                	jal	1fe <VelocityDisplay>
     8aa:	4582                	lw	a1,0(sp)
     8ac:	8cc9                	or	s1,s1,a0
     8ae:	4512                	lw	a0,4(sp)
     8b0:	8622                	mv	a2,s0
     8b2:	0ff4f493          	zext.b	s1,s1
     8b6:	3265                	jal	25e <FuelDisplay>
     8b8:	8d45                	or	a0,a0,s1
     8ba:	0ff57513          	zext.b	a0,a0
     8be:	fdcff0ef          	jal	9a <I2C_write>
     8c2:	47b2                	lw	a5,12(sp)
     8c4:	0785                	add	a5,a5,1
     8c6:	c63e                	sw	a5,12(sp)
     8c8:	47c2                	lw	a5,16(sp)
     8ca:	4732                	lw	a4,12(sp)
     8cc:	0785                	add	a5,a5,1
     8ce:	c83e                	sw	a5,16(sp)
     8d0:	08000793          	li	a5,128
     8d4:	1cf70163          	beq	a4,a5,a96 <Tiny_Flip+0x584>
     8d8:	00c14783          	lbu	a5,12(sp)
     8dc:	c23e                	sw	a5,4(sp)
     8de:	b175                	j	58a <Tiny_Flip+0x78>
     8e0:	4582                	lw	a1,0(sp)
     8e2:	4512                	lw	a0,4(sp)
     8e4:	8622                	mv	a2,s0
     8e6:	3ac1                	jal	2b6 <LivesDisplay>
     8e8:	47c2                	lw	a5,16(sp)
     8ea:	0007c783          	lbu	a5,0(a5)
     8ee:	b771                	j	87a <Tiny_Flip+0x368>
     8f0:	c602                	sw	zero,12(sp)
     8f2:	c202                	sw	zero,4(sp)
     8f4:	4762                	lw	a4,24(sp)
     8f6:	4785                	li	a5,1
     8f8:	02f71863          	bne	a4,a5,928 <Tiny_Flip+0x416>
     8fc:	57a2                	lw	a5,40(sp)
     8fe:	4732                	lw	a4,12(sp)
     900:	97ba                	add	a5,a5,a4
     902:	0007c503          	lbu	a0,0(a5)
     906:	f94ff0ef          	jal	9a <I2C_write>
     90a:	47b2                	lw	a5,12(sp)
     90c:	0785                	add	a5,a5,1
     90e:	c63e                	sw	a5,12(sp)
     910:	47c2                	lw	a5,16(sp)
     912:	4732                	lw	a4,12(sp)
     914:	0785                	add	a5,a5,1
     916:	c83e                	sw	a5,16(sp)
     918:	08000793          	li	a5,128
     91c:	16f70d63          	beq	a4,a5,a96 <Tiny_Flip+0x584>
     920:	00c14783          	lbu	a5,12(sp)
     924:	c23e                	sw	a5,4(sp)
     926:	b7f9                	j	8f4 <Tiny_Flip+0x3e2>
     928:	47a2                	lw	a5,8(sp)
     92a:	e39d                	bnez	a5,950 <Tiny_Flip+0x43e>
     92c:	4712                	lw	a4,4(sp)
     92e:	47dd                	li	a5,23
     930:	00e7f963          	bgeu	a5,a4,942 <Tiny_Flip+0x430>
     934:	07f00793          	li	a5,127
     938:	14f71563          	bne	a4,a5,a82 <Tiny_Flip+0x570>
     93c:	0ff00513          	li	a0,255
     940:	a225                	j	a68 <Tiny_Flip+0x556>
     942:	4712                	lw	a4,4(sp)
     944:	fef70ce3          	beq	a4,a5,93c <Tiny_Flip+0x42a>
     948:	4582                	lw	a1,0(sp)
     94a:	4512                	lw	a0,4(sp)
     94c:	8622                	mv	a2,s0
     94e:	a879                	j	9ec <Tiny_Flip+0x4da>
     950:	4712                	lw	a4,4(sp)
     952:	47dd                	li	a5,23
     954:	fef704e3          	beq	a4,a5,93c <Tiny_Flip+0x42a>
     958:	4692                	lw	a3,4(sp)
     95a:	07f00713          	li	a4,127
     95e:	06e69d63          	bne	a3,a4,9d8 <Tiny_Flip+0x4c6>
     962:	4722                	lw	a4,8(sp)
     964:	479d                	li	a5,7
     966:	fcf71be3          	bne	a4,a5,93c <Tiny_Flip+0x42a>
     96a:	0ff00493          	li	s1,255
     96e:	0804e493          	or	s1,s1,128
     972:	4582                	lw	a1,0(sp)
     974:	4512                	lw	a0,4(sp)
     976:	8622                	mv	a2,s0
     978:	3a3d                	jal	2b6 <LivesDisplay>
     97a:	4692                	lw	a3,4(sp)
     97c:	8d45                	or	a0,a0,s1
     97e:	4759                	li	a4,22
     980:	0ff57513          	zext.b	a0,a0
     984:	4781                	li	a5,0
     986:	06d77563          	bgeu	a4,a3,9f0 <Tiny_Flip+0x4de>
     98a:	00a7e4b3          	or	s1,a5,a0
     98e:	4672                	lw	a2,28(sp)
     990:	4582                	lw	a1,0(sp)
     992:	4512                	lw	a0,4(sp)
     994:	0ff4f493          	zext.b	s1,s1
     998:	82bff0ef          	jal	1c2 <ScoreDisplay>
     99c:	5602                	lw	a2,32(sp)
     99e:	4582                	lw	a1,0(sp)
     9a0:	8cc9                	or	s1,s1,a0
     9a2:	4512                	lw	a0,4(sp)
     9a4:	4685                	li	a3,1
     9a6:	0ff4f493          	zext.b	s1,s1
     9aa:	855ff0ef          	jal	1fe <VelocityDisplay>
     9ae:	5612                	lw	a2,36(sp)
     9b0:	4582                	lw	a1,0(sp)
     9b2:	8cc9                	or	s1,s1,a0
     9b4:	4512                	lw	a0,4(sp)
     9b6:	4681                	li	a3,0
     9b8:	0ff4f493          	zext.b	s1,s1
     9bc:	843ff0ef          	jal	1fe <VelocityDisplay>
     9c0:	8cc9                	or	s1,s1,a0
     9c2:	4582                	lw	a1,0(sp)
     9c4:	4512                	lw	a0,4(sp)
     9c6:	8622                	mv	a2,s0
     9c8:	0ff4f493          	zext.b	s1,s1
     9cc:	893ff0ef          	jal	25e <FuelDisplay>
     9d0:	8d45                	or	a0,a0,s1
     9d2:	0ff57513          	zext.b	a0,a0
     9d6:	bf05                	j	906 <Tiny_Flip+0x3f4>
     9d8:	46a2                	lw	a3,8(sp)
     9da:	471d                	li	a4,7
     9dc:	02e69063          	bne	a3,a4,9fc <Tiny_Flip+0x4ea>
     9e0:	4712                	lw	a4,4(sp)
     9e2:	00e7eb63          	bltu	a5,a4,9f8 <Tiny_Flip+0x4e6>
     9e6:	4582                	lw	a1,0(sp)
     9e8:	8622                	mv	a2,s0
     9ea:	853a                	mv	a0,a4
     9ec:	8cbff0ef          	jal	2b6 <LivesDisplay>
     9f0:	47c2                	lw	a5,16(sp)
     9f2:	0007c783          	lbu	a5,0(a5)
     9f6:	bf51                	j	98a <Tiny_Flip+0x478>
     9f8:	4481                	li	s1,0
     9fa:	bf95                	j	96e <Tiny_Flip+0x45c>
     9fc:	4782                	lw	a5,0(sp)
     9fe:	4709                	li	a4,2
     a00:	17f9                	add	a5,a5,-2
     a02:	0ff7f793          	zext.b	a5,a5
     a06:	08f76663          	bltu	a4,a5,a92 <Tiny_Flip+0x580>
     a0a:	4792                	lw	a5,4(sp)
     a0c:	04600713          	li	a4,70
     a10:	fd778793          	add	a5,a5,-41
     a14:	0ff7f793          	zext.b	a5,a5
     a18:	06f76d63          	bltu	a4,a5,a92 <Tiny_Flip+0x580>
     a1c:	4582                	lw	a1,0(sp)
     a1e:	4512                	lw	a0,4(sp)
     a20:	8622                	mv	a2,s0
     a22:	895ff0ef          	jal	2b6 <LivesDisplay>
     a26:	47b2                	lw	a5,12(sp)
     a28:	dc2a                	sw	a0,56(sp)
     a2a:	45e1                	li	a1,24
     a2c:	fd878493          	add	s1,a5,-40
     a30:	8526                	mv	a0,s1
     a32:	e42ff0ef          	jal	74 <__modsi3>
     a36:	47d2                	lw	a5,20(sp)
     a38:	00244703          	lbu	a4,2(s0)
     a3c:	45e1                	li	a1,24
     a3e:	00f506b3          	add	a3,a0,a5
     a42:	8526                	mv	a0,s1
     a44:	da36                	sw	a3,52(sp)
     a46:	d83a                	sw	a4,48(sp)
     a48:	dd4ff0ef          	jal	1c <__divsi3>
     a4c:	5742                	lw	a4,48(sp)
     a4e:	56d2                	lw	a3,52(sp)
     a50:	57e2                	lw	a5,56(sp)
     a52:	00e55d63          	bge	a0,a4,a6c <Tiny_Flip+0x55a>
     a56:	6705                	lui	a4,0x1
     a58:	22c70713          	add	a4,a4,556 # 122c <STARFULL>
     a5c:	9736                	add	a4,a4,a3
     a5e:	00074703          	lbu	a4,0(a4)
     a62:	8fd9                	or	a5,a5,a4
     a64:	0ff7f513          	zext.b	a0,a5
     a68:	4781                	li	a5,0
     a6a:	b705                	j	98a <Tiny_Flip+0x478>
     a6c:	6705                	lui	a4,0x1
     a6e:	1e470713          	add	a4,a4,484 # 11e4 <STAROUTLINE>
     a72:	9736                	add	a4,a4,a3
     a74:	00074703          	lbu	a4,0(a4)
     a78:	00e7e533          	or	a0,a5,a4
     a7c:	0ff57513          	zext.b	a0,a0
     a80:	b7e5                	j	a68 <Tiny_Flip+0x556>
     a82:	4582                	lw	a1,0(sp)
     a84:	4512                	lw	a0,4(sp)
     a86:	8622                	mv	a2,s0
     a88:	82fff0ef          	jal	2b6 <LivesDisplay>
     a8c:	00156513          	or	a0,a0,1
     a90:	b7f5                	j	a7c <Tiny_Flip+0x56a>
     a92:	4481                	li	s1,0
     a94:	bdf9                	j	972 <Tiny_Flip+0x460>
     a96:	e1cff0ef          	jal	b2 <I2C_stop>
     a9a:	47a2                	lw	a5,8(sp)
     a9c:	0785                	add	a5,a5,1
     a9e:	c43e                	sw	a5,8(sp)
     aa0:	4722                	lw	a4,8(sp)
     aa2:	47a1                	li	a5,8
     aa4:	a8f716e3          	bne	a4,a5,530 <Tiny_Flip+0x1e>
     aa8:	4096                	lw	ra,68(sp)
     aaa:	4406                	lw	s0,64(sp)
     aac:	54f2                	lw	s1,60(sp)
     aae:	04810113          	add	sp,sp,72
     ab2:	8082                	ret

00000ab4 <main>:
     ab4:	400117b7          	lui	a5,0x40011
     ab8:	4398                	lw	a4,0(a5)
     aba:	76c5                	lui	a3,0xffff1
     abc:	16fd                	add	a3,a3,-1 # ffff0fff <__global_pointer$+0xdfff07ff>
     abe:	711d                	add	sp,sp,-96
     ac0:	8f75                	and	a4,a4,a3
     ac2:	66a1                	lui	a3,0x8
     ac4:	ce86                	sw	ra,92(sp)
     ac6:	cca2                	sw	s0,88(sp)
     ac8:	caa6                	sw	s1,84(sp)
     aca:	8f55                	or	a4,a4,a3
     acc:	c398                	sw	a4,0(a5)
     ace:	4721                	li	a4,8
     ad0:	cb98                	sw	a4,16(a5)
     ad2:	4398                	lw	a4,0(a5)
     ad4:	f10006b7          	lui	a3,0xf1000
     ad8:	16fd                	add	a3,a3,-1 # f0ffffff <__global_pointer$+0xd0fff7ff>
     ada:	8f75                	and	a4,a4,a3
     adc:	080006b7          	lui	a3,0x8000
     ae0:	8f55                	or	a4,a4,a3
     ae2:	c398                	sw	a4,0(a5)
     ae4:	04000713          	li	a4,64
     ae8:	cb98                	sw	a4,16(a5)
     aea:	4398                	lw	a4,0(a5)
     aec:	fff106b7          	lui	a3,0xfff10
     af0:	16fd                	add	a3,a3,-1 # fff0ffff <__global_pointer$+0xdff0f7ff>
     af2:	8f75                	and	a4,a4,a3
     af4:	000806b7          	lui	a3,0x80
     af8:	8f55                	or	a4,a4,a3
     afa:	c398                	sw	a4,0(a5)
     afc:	4741                	li	a4,16
     afe:	cb98                	sw	a4,16(a5)
     b00:	4398                	lw	a4,0(a5)
     b02:	800006b7          	lui	a3,0x80000
     b06:	737d                	lui	t1,0xfffff
     b08:	0712                	sll	a4,a4,0x4
     b0a:	8311                	srl	a4,a4,0x4
     b0c:	8f55                	or	a4,a4,a3
     b0e:	c398                	sw	a4,0(a5)
     b10:	08000713          	li	a4,128
     b14:	cb98                	sw	a4,16(a5)
     b16:	80078713          	add	a4,a5,-2048 # 40010800 <__global_pointer$+0x20010000>
     b1a:	4314                	lw	a3,0(a4)
     b1c:	0ff30613          	add	a2,t1,255 # fffff0ff <__global_pointer$+0xdfffe8ff>
     b20:	4505                	li	a0,1
     b22:	8ef1                	and	a3,a3,a2
     b24:	6605                	lui	a2,0x1
     b26:	80060593          	add	a1,a2,-2048 # 800 <Tiny_Flip+0x2ee>
     b2a:	8ecd                	or	a3,a3,a1
     b2c:	c314                	sw	a3,0(a4)
     b2e:	4591                	li	a1,4
     b30:	cb0c                	sw	a1,16(a4)
     b32:	4394                	lw	a3,0(a5)
     b34:	002002b7          	lui	t0,0x200
     b38:	033d                	add	t1,t1,15
     b3a:	9ac1                	and	a3,a3,-16
     b3c:	0086e693          	or	a3,a3,8
     b40:	c394                	sw	a3,0(a5)
     b42:	cb88                	sw	a0,16(a5)
     b44:	4314                	lw	a3,0(a4)
     b46:	dd060613          	add	a2,a2,-560
     b4a:	4401                	li	s0,0
     b4c:	f0f6f693          	and	a3,a3,-241
     b50:	0106e693          	or	a3,a3,16
     b54:	c314                	sw	a3,0(a4)
     b56:	4689                	li	a3,2
     b58:	cb14                	sw	a3,16(a4)
     b5a:	40021737          	lui	a4,0x40021
     b5e:	4f14                	lw	a3,24(a4)
     b60:	4481                	li	s1,0
     b62:	0116e693          	or	a3,a3,17
     b66:	cf14                	sw	a3,24(a4)
     b68:	4f54                	lw	a3,28(a4)
     b6a:	0056e6b3          	or	a3,a3,t0
     b6e:	cf54                	sw	a3,28(a4)
     b70:	4398                	lw	a4,0(a5)
     b72:	00677733          	and	a4,a4,t1
     b76:	8f51                	or	a4,a4,a2
     b78:	c398                	sw	a4,0(a5)
     b7a:	40005737          	lui	a4,0x40005
     b7e:	77e1                	lui	a5,0xffff8
     b80:	40b71223          	sh	a1,1028(a4) # 40005404 <__global_pointer$+0x20004c04>
     b84:	07a9                	add	a5,a5,10 # ffff800a <__global_pointer$+0xdfff780a>
     b86:	40f71e23          	sh	a5,1052(a4)
     b8a:	40a71023          	sh	a0,1024(a4)
     b8e:	92fff0ef          	jal	4bc <I2C_start.constprop.0>
     b92:	4501                	li	a0,0
     b94:	d06ff0ef          	jal	9a <I2C_write>
     b98:	6785                	lui	a5,0x1
     b9a:	79478793          	add	a5,a5,1940 # 1794 <OLED_INIT_CMD>
     b9e:	00f48733          	add	a4,s1,a5
     ba2:	00074503          	lbu	a0,0(a4)
     ba6:	0485                	add	s1,s1,1
     ba8:	cf2ff0ef          	jal	9a <I2C_write>
     bac:	6785                	lui	a5,0x1
     bae:	4745                	li	a4,17
     bb0:	79478793          	add	a5,a5,1940 # 1794 <OLED_INIT_CMD>
     bb4:	fee495e3          	bne	s1,a4,b9e <main+0xea>
     bb8:	cfaff0ef          	jal	b2 <I2C_stop>
     bbc:	40021737          	lui	a4,0x40021
     bc0:	4f1c                	lw	a5,24(a4)
     bc2:	400124b7          	lui	s1,0x40012
     bc6:	40048493          	add	s1,s1,1024 # 40012400 <__global_pointer$+0x20011c00>
     bca:	2017e793          	or	a5,a5,513
     bce:	cf1c                	sw	a5,24(a4)
     bd0:	000e07b7          	lui	a5,0xe0
     bd4:	0785                	add	a5,a5,1 # e0001 <system.c.5e05c1e3+0xddd9d>
     bd6:	c49c                	sw	a5,8(s1)
     bd8:	07800513          	li	a0,120
     bdc:	f2cff0ef          	jal	308 <DLY_ticks>
     be0:	449c                	lw	a5,8(s1)
     be2:	400126b7          	lui	a3,0x40012
     be6:	0087e793          	or	a5,a5,8
     bea:	c49c                	sw	a5,8(s1)
     bec:	40068793          	add	a5,a3,1024 # 40012400 <__global_pointer$+0x20011c00>
     bf0:	4798                	lw	a4,8(a5)
     bf2:	8b21                	and	a4,a4,8
     bf4:	ff65                	bnez	a4,bec <main+0x138>
     bf6:	4798                	lw	a4,8(a5)
     bf8:	00476713          	or	a4,a4,4
     bfc:	c798                	sw	a4,8(a5)
     bfe:	40012737          	lui	a4,0x40012
     c02:	40070793          	add	a5,a4,1024 # 40012400 <__global_pointer$+0x20011c00>
     c06:	479c                	lw	a5,8(a5)
     c08:	8b91                	and	a5,a5,4
     c0a:	ffe5                	bnez	a5,c02 <main+0x14e>
     c0c:	6785                	lui	a5,0x1
     c0e:	7a878793          	add	a5,a5,1960 # 17a8 <GAMEMAP>
     c12:	c63e                	sw	a5,12(sp)
     c14:	4785                	li	a5,1
     c16:	04f106a3          	sb	a5,77(sp)
     c1a:	4791                	li	a5,4
     c1c:	02011a23          	sh	zero,52(sp)
     c20:	04f108a3          	sb	a5,81(sp)
     c24:	0878                	add	a4,sp,28
     c26:	1054                	add	a3,sp,36
     c28:	1070                	add	a2,sp,44
     c2a:	184c                	add	a1,sp,52
     c2c:	4505                	li	a0,1
     c2e:	8e5ff0ef          	jal	512 <Tiny_Flip>
     c32:	40011737          	lui	a4,0x40011
     c36:	80070793          	add	a5,a4,-2048 # 40010800 <__global_pointer$+0x20010000>
     c3a:	479c                	lw	a5,8(a5)
     c3c:	8b91                	and	a5,a5,4
     c3e:	c781                	beqz	a5,c46 <main+0x192>
     c40:	471c                	lw	a5,8(a4)
     c42:	8b85                	and	a5,a5,1
     c44:	f3e5                	bnez	a5,c24 <main+0x170>
     c46:	40011737          	lui	a4,0x40011
     c4a:	471c                	lw	a5,8(a4)
     c4c:	8ba1                	and	a5,a5,8
     c4e:	3c079063          	bnez	a5,100e <main+0x55a>
     c52:	47a9                	li	a5,10
     c54:	04f106a3          	sb	a5,77(sp)
     c58:	82bff0ef          	jal	482 <ALERTJOY_sound>
     c5c:	04d14483          	lbu	s1,77(sp)
     c60:	47a9                	li	a5,10
     c62:	0097f363          	bgeu	a5,s1,c68 <main+0x1b4>
     c66:	4485                	li	s1,1
     c68:	57fd                	li	a5,-1
     c6a:	fff48513          	add	a0,s1,-1
     c6e:	04f10823          	sb	a5,80(sp)
     c72:	00451613          	sll	a2,a0,0x4
     c76:	00151793          	sll	a5,a0,0x1
     c7a:	8e1d                	sub	a2,a2,a5
     c7c:	060a                	sll	a2,a2,0x2
     c7e:	8e1d                	sub	a2,a2,a5
     c80:	049106a3          	sb	s1,77(sp)
     c84:	040107a3          	sb	zero,79(sp)
     c88:	4681                	li	a3,0
     c8a:	4301                	li	t1,0
     c8c:	4701                	li	a4,0
     c8e:	4581                	li	a1,0
     c90:	0ff00793          	li	a5,255
     c94:	43e9                	li	t2,26
     c96:	42b2                	lw	t0,12(sp)
     c98:	80a2                	mv	ra,s0
     c9a:	00d60433          	add	s0,a2,a3
     c9e:	9416                	add	s0,s0,t0
     ca0:	00044403          	lbu	s0,0(s0)
     ca4:	3a009263          	bnez	ra,1048 <main+0x594>
     ca8:	38041863          	bnez	s0,1038 <main+0x584>
     cac:	3a769063          	bne	a3,t2,104c <main+0x598>
     cb0:	3a078163          	beqz	a5,1052 <main+0x59e>
     cb4:	ef01                	bnez	a4,ccc <main+0x218>
     cb6:	00269713          	sll	a4,a3,0x2
     cba:	0ff77713          	zext.b	a4,a4
     cbe:	4305                	li	t1,1
     cc0:	4585                	li	a1,1
     cc2:	4781                	li	a5,0
     cc4:	0685                	add	a3,a3,1
     cc6:	42ed                	li	t0,27
     cc8:	fc5697e3          	bne	a3,t0,c96 <main+0x1e2>
     ccc:	00030463          	beqz	t1,cd4 <main+0x220>
     cd0:	04e107a3          	sb	a4,79(sp)
     cd4:	c199                	beqz	a1,cda <main+0x226>
     cd6:	04f10823          	sb	a5,80(sp)
     cda:	00251713          	sll	a4,a0,0x2
     cde:	6789                	lui	a5,0x2
     ce0:	972a                	add	a4,a4,a0
     ce2:	9c478793          	add	a5,a5,-1596 # 19c4 <GAMELEVEL>
     ce6:	97ba                	add	a5,a5,a4
     ce8:	0007c703          	lbu	a4,0(a5)
     cec:	0027c683          	lbu	a3,2(a5)
     cf0:	03700593          	li	a1,55
     cf4:	02e10ba3          	sb	a4,55(sp)
     cf8:	0017c703          	lbu	a4,1(a5)
     cfc:	05000513          	li	a0,80
     d00:	c082                	sw	zero,64(sp)
     d02:	02e10c23          	sb	a4,56(sp)
     d06:	00169713          	sll	a4,a3,0x1
     d0a:	9736                	add	a4,a4,a3
     d0c:	070e                	sll	a4,a4,0x3
     d0e:	9736                	add	a4,a4,a3
     d10:	070a                	sll	a4,a4,0x2
     d12:	02e11e23          	sh	a4,60(sp)
     d16:	0037c703          	lbu	a4,3(a5)
     d1a:	c282                	sw	zero,68(sp)
     d1c:	04010623          	sb	zero,76(sp)
     d20:	c03a                	sw	a4,0(sp)
     d22:	04e10723          	sb	a4,78(sp)
     d26:	0047c703          	lbu	a4,4(a5)
     d2a:	02010b23          	sb	zero,54(sp)
     d2e:	00171793          	sll	a5,a4,0x1
     d32:	97ba                	add	a5,a5,a4
     d34:	078e                	sll	a5,a5,0x3
     d36:	97ba                	add	a5,a5,a4
     d38:	078a                	sll	a5,a5,0x2
     d3a:	07c2                	sll	a5,a5,0x10
     d3c:	87c1                	sra	a5,a5,0x10
     d3e:	c43e                	sw	a5,8(sp)
     d40:	02f11f23          	sh	a5,62(sp)
     d44:	4785                	li	a5,1
     d46:	c4be                	sw	a5,72(sp)
     d48:	dd6ff0ef          	jal	31e <JOY_sound>
     d4c:	0003b7b7          	lui	a5,0x3b
     d50:	98078513          	add	a0,a5,-1664 # 3a980 <system.c.5e05c1e3+0x3871c>
     d54:	db4ff0ef          	jal	308 <DLY_ticks>
     d58:	03700593          	li	a1,55
     d5c:	05a00513          	li	a0,90
     d60:	dbeff0ef          	jal	31e <JOY_sound>
     d64:	0003b7b7          	lui	a5,0x3b
     d68:	98078513          	add	a0,a5,-1664 # 3a980 <system.c.5e05c1e3+0x3871c>
     d6c:	d9cff0ef          	jal	308 <DLY_ticks>
     d70:	03700593          	li	a1,55
     d74:	06400513          	li	a0,100
     d78:	da6ff0ef          	jal	31e <JOY_sound>
     d7c:	0ff00593          	li	a1,255
     d80:	07300513          	li	a0,115
     d84:	d9aff0ef          	jal	31e <JOY_sound>
     d88:	0ff00593          	li	a1,255
     d8c:	07300513          	li	a0,115
     d90:	d8eff0ef          	jal	31e <JOY_sound>
     d94:	03415783          	lhu	a5,52(sp)
     d98:	106c                	add	a1,sp,44
     d9a:	853e                	mv	a0,a5
     d9c:	c23e                	sw	a5,4(sp)
     d9e:	b32ff0ef          	jal	d0 <fillData>
     da2:	04211703          	lh	a4,66(sp)
     da6:	104c                	add	a1,sp,36
     da8:	853a                	mv	a0,a4
     daa:	ca3a                	sw	a4,20(sp)
     dac:	b24ff0ef          	jal	d0 <fillData>
     db0:	04011783          	lh	a5,64(sp)
     db4:	086c                	add	a1,sp,28
     db6:	853e                	mv	a0,a5
     db8:	c83e                	sw	a5,16(sp)
     dba:	b16ff0ef          	jal	d0 <fillData>
     dbe:	04914683          	lbu	a3,73(sp)
     dc2:	47c2                	lw	a5,16(sp)
     dc4:	4752                	lw	a4,20(sp)
     dc6:	e6d5                	bnez	a3,e72 <main+0x3be>
     dc8:	04a15683          	lhu	a3,74(sp)
     dcc:	e2dd                	bnez	a3,e72 <main+0x3be>
     dce:	40f75613          	sra	a2,a4,0xf
     dd2:	04415583          	lhu	a1,68(sp)
     dd6:	00c746b3          	xor	a3,a4,a2
     dda:	8e91                	sub	a3,a3,a2
     ddc:	95b6                	add	a1,a1,a3
     dde:	40f7d693          	sra	a3,a5,0xf
     de2:	00d7c533          	xor	a0,a5,a3
     de6:	04615603          	lhu	a2,70(sp)
     dea:	8d15                	sub	a0,a0,a3
     dec:	0542                	sll	a0,a0,0x10
     dee:	8141                	srl	a0,a0,0x10
     df0:	962a                	add	a2,a2,a0
     df2:	05c2                	sll	a1,a1,0x10
     df4:	0642                	sll	a2,a2,0x10
     df6:	81c1                	srl	a1,a1,0x10
     df8:	8241                	srl	a2,a2,0x10
     dfa:	04b11223          	sh	a1,68(sp)
     dfe:	04c11323          	sh	a2,70(sp)
     e02:	02200313          	li	t1,34
     e06:	03714683          	lbu	a3,55(sp)
     e0a:	00b37963          	bgeu	t1,a1,e1c <main+0x368>
     e0e:	04011223          	sh	zero,68(sp)
     e12:	24e05463          	blez	a4,105a <main+0x5a6>
     e16:	0685                	add	a3,a3,1
     e18:	02d10ba3          	sb	a3,55(sp)
     e1c:	03814683          	lbu	a3,56(sp)
     e20:	02200593          	li	a1,34
     e24:	cc36                	sw	a3,24(sp)
     e26:	02c5f663          	bgeu	a1,a2,e52 <main+0x39e>
     e2a:	02d00593          	li	a1,45
     e2e:	ca3e                	sw	a5,20(sp)
     e30:	c83a                	sw	a4,16(sp)
     e32:	9eaff0ef          	jal	1c <__divsi3>
     e36:	47d2                	lw	a5,20(sp)
     e38:	0505                	add	a0,a0,1
     e3a:	04011323          	sh	zero,70(sp)
     e3e:	4742                	lw	a4,16(sp)
     e40:	46e2                	lw	a3,24(sp)
     e42:	0ff57513          	zext.b	a0,a0
     e46:	20f05e63          	blez	a5,1062 <main+0x5ae>
     e4a:	40a68533          	sub	a0,a3,a0
     e4e:	02a10c23          	sb	a0,56(sp)
     e52:	03714683          	lbu	a3,55(sp)
     e56:	07900613          	li	a2,121
     e5a:	20d67863          	bgeu	a2,a3,106a <main+0x5b6>
     e5e:	02c10ba3          	sb	a2,55(sp)
     e62:	03814603          	lbu	a2,56(sp)
     e66:	03700693          	li	a3,55
     e6a:	00c6f463          	bgeu	a3,a2,e72 <main+0x3be>
     e6e:	02d10c23          	sb	a3,56(sp)
     e72:	40011337          	lui	t1,0x40011
     e76:	00832503          	lw	a0,8(t1) # 40011008 <__global_pointer$+0x20010808>
     e7a:	4605                	li	a2,1
     e7c:	8941                	and	a0,a0,16
     e7e:	00153693          	seqz	a3,a0
     e82:	02d10d23          	sb	a3,58(sp)
     e86:	00832583          	lw	a1,8(t1)
     e8a:	0805f593          	and	a1,a1,128
     e8e:	0015b693          	seqz	a3,a1
     e92:	02d10da3          	sb	a3,59(sp)
     e96:	80030693          	add	a3,t1,-2048
     e9a:	4694                	lw	a3,8(a3)
     e9c:	8a91                	and	a3,a3,4
     e9e:	c691                	beqz	a3,eaa <main+0x3f6>
     ea0:	00832603          	lw	a2,8(t1)
     ea4:	fff64613          	not	a2,a2
     ea8:	8a05                	and	a2,a2,1
     eaa:	04814683          	lbu	a3,72(sp)
     eae:	02c10ca3          	sb	a2,57(sp)
     eb2:	0016c693          	xor	a3,a3,1
     eb6:	04d10423          	sb	a3,72(sp)
     eba:	03c11683          	lh	a3,60(sp)
     ebe:	1a051d63          	bnez	a0,1078 <main+0x5c4>
     ec2:	00d05e63          	blez	a3,ede <main+0x42a>
     ec6:	0705                	add	a4,a4,1 # 40011001 <__global_pointer$+0x20010801>
     ec8:	16dd                	add	a3,a3,-9
     eca:	0742                	sll	a4,a4,0x10
     ecc:	02d11e23          	sh	a3,60(sp)
     ed0:	8741                	sra	a4,a4,0x10
     ed2:	06400693          	li	a3,100
     ed6:	1ae6cf63          	blt	a3,a4,1094 <main+0x5e0>
     eda:	04e11123          	sh	a4,66(sp)
     ede:	07c2                	sll	a5,a5,0x10
     ee0:	03c11703          	lh	a4,60(sp)
     ee4:	83c1                	srl	a5,a5,0x10
     ee6:	1a060a63          	beqz	a2,109a <main+0x5e6>
     eea:	1ae05863          	blez	a4,109a <main+0x5e6>
     eee:	0785                	add	a5,a5,1
     ef0:	fdc70713          	add	a4,a4,-36
     ef4:	07c2                	sll	a5,a5,0x10
     ef6:	02e11e23          	sh	a4,60(sp)
     efa:	87c1                	sra	a5,a5,0x10
     efc:	06400713          	li	a4,100
     f00:	1af74463          	blt	a4,a5,10a8 <main+0x5f4>
     f04:	04f11023          	sh	a5,64(sp)
     f08:	03c11783          	lh	a5,60(sp)
     f0c:	00f04463          	bgtz	a5,f14 <main+0x460>
     f10:	02011e23          	sh	zero,60(sp)
     f14:	0878                	add	a4,sp,28
     f16:	1054                	add	a3,sp,36
     f18:	1070                	add	a2,sp,44
     f1a:	184c                	add	a1,sp,52
     f1c:	4501                	li	a0,0
     f1e:	df4ff0ef          	jal	512 <Tiny_Flip>
     f22:	04c14783          	lbu	a5,76(sp)
     f26:	46a1                	li	a3,8
     f28:	04b14703          	lbu	a4,75(sp)
     f2c:	20f6fc63          	bgeu	a3,a5,1144 <main+0x690>
     f30:	1e070f63          	beqz	a4,112e <main+0x67a>
     f34:	06400593          	li	a1,100
     f38:	06f00513          	li	a0,111
     f3c:	be2ff0ef          	jal	31e <JOY_sound>
     f40:	0003b7b7          	lui	a5,0x3b
     f44:	98078513          	add	a0,a5,-1664 # 3a980 <system.c.5e05c1e3+0x3871c>
     f48:	bc0ff0ef          	jal	308 <DLY_ticks>
     f4c:	05a00593          	li	a1,90
     f50:	06f00513          	li	a0,111
     f54:	bcaff0ef          	jal	31e <JOY_sound>
     f58:	0003b7b7          	lui	a5,0x3b
     f5c:	98078513          	add	a0,a5,-1664 # 3a980 <system.c.5e05c1e3+0x3871c>
     f60:	ba8ff0ef          	jal	308 <DLY_ticks>
     f64:	0ff00593          	li	a1,255
     f68:	09000513          	li	a0,144
     f6c:	bb2ff0ef          	jal	31e <JOY_sound>
     f70:	0ff00593          	li	a1,255
     f74:	09000513          	li	a0,144
     f78:	ba6ff0ef          	jal	31e <JOY_sound>
     f7c:	0ff00593          	li	a1,255
     f80:	09000513          	li	a0,144
     f84:	b9aff0ef          	jal	31e <JOY_sound>
     f88:	00b72537          	lui	a0,0xb72
     f8c:	00148793          	add	a5,s1,1
     f90:	b0050513          	add	a0,a0,-1280 # b71b00 <system.c.5e05c1e3+0xb6f89c>
     f94:	04f106a3          	sb	a5,77(sp)
     f98:	b70ff0ef          	jal	308 <DLY_ticks>
     f9c:	04011703          	lh	a4,64(sp)
     fa0:	04015783          	lhu	a5,64(sp)
     fa4:	4301                	li	t1,0
     fa6:	873d                	sra	a4,a4,0xf
     fa8:	8fb9                	xor	a5,a5,a4
     faa:	8f99                	sub	a5,a5,a4
     fac:	07c2                	sll	a5,a5,0x10
     fae:	83c1                	srl	a5,a5,0x10
     fb0:	4761                	li	a4,24
     fb2:	00f76763          	bltu	a4,a5,fc0 <main+0x50c>
     fb6:	4735                	li	a4,13
     fb8:	4309                	li	t1,2
     fba:	00f77363          	bgeu	a4,a5,fc0 <main+0x50c>
     fbe:	4305                	li	t1,1
     fc0:	03c11783          	lh	a5,60(sp)
     fc4:	4722                	lw	a4,8(sp)
     fc6:	00e7c563          	blt	a5,a4,fd0 <main+0x51c>
     fca:	0305                	add	t1,t1,1
     fcc:	0ff37313          	zext.b	t1,t1
     fd0:	4485                	li	s1,1
     fd2:	02910b23          	sb	s1,54(sp)
     fd6:	0c937c63          	bgeu	t1,s1,10ae <main+0x5fa>
     fda:	4702                	lw	a4,0(sp)
     fdc:	fff48793          	add	a5,s1,-1
     fe0:	02f10b23          	sb	a5,54(sp)
     fe4:	4792                	lw	a5,4(sp)
     fe6:	85ba                	mv	a1,a4
     fe8:	851a                	mv	a0,t1
     fea:	00e784b3          	add	s1,a5,a4
     fee:	816ff0ef          	jal	4 <__mulsi3>
     ff2:	94aa                	add	s1,s1,a0
     ff4:	04c2                	sll	s1,s1,0x10
     ff6:	80c1                	srl	s1,s1,0x10
     ff8:	03415503          	lhu	a0,52(sp)
     ffc:	10956463          	bltu	a0,s1,1104 <main+0x650>
    1000:	005b9537          	lui	a0,0x5b9
    1004:	d8050513          	add	a0,a0,-640 # 5b8d80 <system.c.5e05c1e3+0x5b6b1c>
    1008:	b00ff0ef          	jal	308 <DLY_ticks>
    100c:	b981                	j	c5c <main+0x1a8>
    100e:	471c                	lw	a5,8(a4)
    1010:	0407f793          	and	a5,a5,64
    1014:	e789                	bnez	a5,101e <main+0x56a>
    1016:	57fd                	li	a5,-1
    1018:	04f108a3          	sb	a5,81(sp)
    101c:	b935                	j	c58 <main+0x1a4>
    101e:	07d00593          	li	a1,125
    1022:	06400513          	li	a0,100
    1026:	af8ff0ef          	jal	31e <JOY_sound>
    102a:	07d00593          	li	a1,125
    102e:	03200513          	li	a0,50
    1032:	aecff0ef          	jal	31e <JOY_sound>
    1036:	b11d                	j	c5c <main+0x1a8>
    1038:	c80796e3          	bnez	a5,cc4 <main+0x210>
    103c:	00269793          	sll	a5,a3,0x2
    1040:	0ff7f793          	zext.b	a5,a5
    1044:	4585                	li	a1,1
    1046:	b9bd                	j	cc4 <main+0x210>
    1048:	c6041ee3          	bnez	s0,cc4 <main+0x210>
    104c:	c60705e3          	beqz	a4,cb6 <main+0x202>
    1050:	b995                	j	cc4 <main+0x210>
    1052:	4585                	li	a1,1
    1054:	06800793          	li	a5,104
    1058:	bfd5                	j	104c <main+0x598>
    105a:	dc0701e3          	beqz	a4,e1c <main+0x368>
    105e:	16fd                	add	a3,a3,-1
    1060:	bb65                	j	e18 <main+0x364>
    1062:	de0788e3          	beqz	a5,e52 <main+0x39e>
    1066:	9536                	add	a0,a0,a3
    1068:	b3dd                	j	e4e <main+0x39a>
    106a:	4659                	li	a2,22
    106c:	ded66be3          	bltu	a2,a3,e62 <main+0x3ae>
    1070:	46dd                	li	a3,23
    1072:	02d10ba3          	sb	a3,55(sp)
    1076:	b3f5                	j	e62 <main+0x3ae>
    1078:	e60593e3          	bnez	a1,ede <main+0x42a>
    107c:	e6d051e3          	blez	a3,ede <main+0x42a>
    1080:	177d                	add	a4,a4,-1
    1082:	16dd                	add	a3,a3,-9
    1084:	0742                	sll	a4,a4,0x10
    1086:	02d11e23          	sh	a3,60(sp)
    108a:	8741                	sra	a4,a4,0x10
    108c:	f9c00693          	li	a3,-100
    1090:	e4d755e3          	bge	a4,a3,eda <main+0x426>
    1094:	04d11123          	sh	a3,66(sp)
    1098:	b599                	j	ede <main+0x42a>
    109a:	17fd                	add	a5,a5,-1
    109c:	07c2                	sll	a5,a5,0x10
    109e:	87c1                	sra	a5,a5,0x10
    10a0:	f9c00713          	li	a4,-100
    10a4:	e6e7d0e3          	bge	a5,a4,f04 <main+0x450>
    10a8:	04e11023          	sh	a4,64(sp)
    10ac:	bdb1                	j	f08 <main+0x454>
    10ae:	0878                	add	a4,sp,28
    10b0:	1054                	add	a3,sp,36
    10b2:	1070                	add	a2,sp,44
    10b4:	184c                	add	a1,sp,52
    10b6:	4509                	li	a0,2
    10b8:	c41a                	sw	t1,8(sp)
    10ba:	c58ff0ef          	jal	512 <Tiny_Flip>
    10be:	05a00593          	li	a1,90
    10c2:	04b00513          	li	a0,75
    10c6:	a58ff0ef          	jal	31e <JOY_sound>
    10ca:	6575                	lui	a0,0x1d
    10cc:	4c050513          	add	a0,a0,1216 # 1d4c0 <system.c.5e05c1e3+0x1b25c>
    10d0:	a38ff0ef          	jal	308 <DLY_ticks>
    10d4:	05a00593          	li	a1,90
    10d8:	07200513          	li	a0,114
    10dc:	a42ff0ef          	jal	31e <JOY_sound>
    10e0:	05a00593          	li	a1,90
    10e4:	07900513          	li	a0,121
    10e8:	a36ff0ef          	jal	31e <JOY_sound>
    10ec:	005b9537          	lui	a0,0x5b9
    10f0:	d8050513          	add	a0,a0,-640 # 5b8d80 <system.c.5e05c1e3+0x5b6b1c>
    10f4:	a14ff0ef          	jal	308 <DLY_ticks>
    10f8:	00148793          	add	a5,s1,1
    10fc:	4322                	lw	t1,8(sp)
    10fe:	0ff7f493          	zext.b	s1,a5
    1102:	bdc1                	j	fd2 <main+0x51e>
    1104:	0505                	add	a0,a0,1
    1106:	0542                	sll	a0,a0,0x10
    1108:	8141                	srl	a0,a0,0x10
    110a:	106c                	add	a1,sp,44
    110c:	02a11a23          	sh	a0,52(sp)
    1110:	fc1fe0ef          	jal	d0 <fillData>
    1114:	184c                	add	a1,sp,52
    1116:	0878                	add	a4,sp,28
    1118:	1054                	add	a3,sp,36
    111a:	1070                	add	a2,sp,44
    111c:	4509                	li	a0,2
    111e:	bf4ff0ef          	jal	512 <Tiny_Flip>
    1122:	4589                	li	a1,2
    1124:	08100513          	li	a0,129
    1128:	9f6ff0ef          	jal	31e <JOY_sound>
    112c:	b5f1                	j	ff8 <main+0x544>
    112e:	016e3537          	lui	a0,0x16e3
    1132:	60050513          	add	a0,a0,1536 # 16e3600 <system.c.5e05c1e3+0x16e139c>
    1136:	9d2ff0ef          	jal	308 <DLY_ticks>
    113a:	05114783          	lbu	a5,81(sp)
    113e:	b0079fe3          	bnez	a5,c5c <main+0x1a8>
    1142:	bcc9                	j	c14 <main+0x160>
    1144:	04914683          	lbu	a3,73(sp)
    1148:	e681                	bnez	a3,1150 <main+0x69c>
    114a:	04a14683          	lbu	a3,74(sp)
    114e:	c681                	beqz	a3,1156 <main+0x6a2>
    1150:	0785                	add	a5,a5,1
    1152:	04f10623          	sb	a5,76(sp)
    1156:	c2070fe3          	beqz	a4,d94 <main+0x2e0>
    115a:	47a9                	li	a5,10
    115c:	04f10623          	sb	a5,76(sp)
    1160:	b915                	j	d94 <main+0x2e0>

00001162 <reset_handler>:
    1162:	6785                	lui	a5,0x1
    1164:	ab478793          	add	a5,a5,-1356 # ab4 <main>
    1168:	1ffff197          	auipc	gp,0x1ffff
    116c:	69818193          	add	gp,gp,1688 # 20000800 <__global_pointer$>
    1170:	00018113          	mv	sp,gp
    1174:	08800513          	li	a0,136
    1178:	30051073          	csrw	mstatus,a0
    117c:	458d                	li	a1,3
    117e:	80459073          	csrw	0x804,a1
    1182:	fffff517          	auipc	a0,0xfffff
    1186:	e7e50513          	add	a0,a0,-386 # 0 <jump_reset>
    118a:	8d4d                	or	a0,a0,a1
    118c:	30551073          	csrw	mtvec,a0
    1190:	34179073          	csrw	mepc,a5
    1194:	6709                	lui	a4,0x2
    1196:	200007b7          	lui	a5,0x20000
    119a:	9f870713          	add	a4,a4,-1544 # 19f8 <_data_lma>
    119e:	00078793          	mv	a5,a5
    11a2:	80818693          	add	a3,gp,-2040 # 20000008 <_ebss>
    11a6:	02d7e663          	bltu	a5,a3,11d2 <i2c_tx.c.98016794+0x31>
    11aa:	80818793          	add	a5,gp,-2040 # 20000008 <_ebss>
    11ae:	80818713          	add	a4,gp,-2040 # 20000008 <_ebss>
    11b2:	02e7e563          	bltu	a5,a4,11dc <i2c_tx.c.98016794+0x3b>
    11b6:	400217b7          	lui	a5,0x40021
    11ba:	4741                	li	a4,16
    11bc:	c3d8                	sw	a4,4(a5)
    11be:	4695                	li	a3,5
    11c0:	e000f737          	lui	a4,0xe000f
    11c4:	c314                	sw	a3,0(a4)
    11c6:	4f98                	lw	a4,24(a5)
    11c8:	03476713          	or	a4,a4,52
    11cc:	cf98                	sw	a4,24(a5)
    11ce:	30200073          	mret
    11d2:	4310                	lw	a2,0(a4)
    11d4:	0711                	add	a4,a4,4 # e000f004 <__global_pointer$+0xc000e804>
    11d6:	c390                	sw	a2,0(a5)
    11d8:	0791                	add	a5,a5,4 # 40021004 <__global_pointer$+0x20020804>
    11da:	b7f1                	j	11a6 <i2c_tx.c.98016794+0x5>
    11dc:	0007a023          	sw	zero,0(a5)
    11e0:	0791                	add	a5,a5,4
    11e2:	bfc1                	j	11b2 <i2c_tx.c.98016794+0x11>

000011e4 <STAROUTLINE>:
	...
    11ec:	4000 0410 4010 0000 0000 0000 0000 0000     .@...@..........
    11fc:	0000 0502 0108 2190 0000 0000 0000 2100     .......!.......!
    120c:	0990 0500 0002 0000 0000 0000 0800 0812     ................
    121c:	0204 0100 0200 0804 0812 0000 0000 0000     ................

0000122c <STARFULL>:
	...
    1234:	8000 f8e0 80e0 0000 0000 0000 0000 0000     ................
    1244:	0000 0200 0606 9e0e fffe ffff ffff fefe     ................
    1254:	0e9e 0206 0002 0000 0000 0000 0000 070c     ................
    1264:	0103 0001 0100 0303 0c07 0000 0000 0000     ................

00001274 <DASHBOARD>:
    1274:	b800 e8a8 f800 8888 f800 f888 f800 b848     ..............H.
    1284:	f800 88a8 0000 0000 0000 0000 0000 0000     ................
	...
    12a0:	0000 2800 2810 2810 2810 2810 2810 2810     ...(.(.(.(.(.(.(
    12b0:	2810 2810 2810 0000 0000 a8b8 00e8 28f8     .(.(.(.........(
    12c0:	0038 a8f8 00a8 a8f8 0088 88f8 0070 0000     8...........p...
    12d0:	f800 f820 0000 0000 0000 0000 0000 0000     .. .............
	...
    12e8:	c078 0078 0000 0000 0000 0000 0000 0000     x.x.............
    12f8:	0000 0000 0000 f800 0828 0000 0000 0000     ........(.......
	...

0000132c <INTRO>:
	...
    1390:	8000 0000 0000 0000 0000 0000 0000 1e00     ................
    13a0:	1e30 0000 003e 0020 223e 003e 0000 8080     0...>. .>">.....
    13b0:	8080 8080 8080 0080 8080 8080 0000 0000     ................
	...
    1404:	b800 fcfc fcfc 80b8 8080 8080 ff80 8082     ................
    1414:	0080 0000 0000 0000 0000 0000 0000 0000     ................
	...
    142c:	0000 0303 ff03 ffff 0303 0003 fdfd fdfd     ................
    143c:	0000 fcfc 1cfc 1c1c f8f8 00f0 fc1c f8fc     ................
    144c:	c000 fcfc 003c 0000 0000 0000 0000 0000     ....<...........
	...
    147c:	0000 f0e0 fcf8 fffe 7fff 3f3f 3f3f 3f3f     ..........??????
    148c:	ff7f ffff ffff ffff ffff fcfe f0f8 c0e0     ................
	...
    14b0:	ff00 ffff 0000 0000 ffff ffff 0000 ffff     ................
    14c0:	00ff 0000 ffff 00ff 0300 ff3f fff0 037f     ..........?.....
	...
    14fc:	0000 ffff ffff 81ff 0000 0000 0000 0000     ................
    150c:	0000 ff81 ffff ffff 8181 8781 ffff ffff     ................
	...
    1548:	0700 0707 0103 0000 0000 0000 0000 0000     ................
	...
    157c:	0000 0703 1f0f 7f3f feff fcfc fcfc 7c7c     ......?.......||
    158c:	ff7e 7fff 7f7f ff7f ffff 3f7f 0f1f 0307     ~..........?....
	...
    15ac:	0000 f800 f8f8 00f8 0000 0000 8000 c0c0     ................
    15bc:	c0c0 c0c0 0080 c000 c0c0 8080 c0c0 80c0     ................
    15cc:	0000 8000 c080 c0c0 f8f8 00f8 0000 c080     ................
    15dc:	c0c0 c0c0 0080 0000 c0c0 00c0 c080 00c0     ................
	...
    15f8:	8000 78e0 0f3e 1f07 ff7f ffff ffff ffff     ...x>...........
    1608:	ffff dfaf dfaf dfaf ffaf ffff ffff ffff     ................
    1618:	7fff 071f 1e0f e078 0080 0000 0000 0000     ......x.........
    1628:	0000 0000 0000 ff00 ffff 00ff 0000 0000     ................
    1638:	e3c0 f3f3 1c38 ffff 00ff ff00 ffff 01ff     ....8...........
    1648:	ff01 ffff 0000 ffff 03ff 0101 ffff 00ff     ................
    1658:	ff00 ffff 1819 9f19 9f9f 0000 ffff 07ff     ................
    1668:	0303 0003 0000 0000 0000 0000 8000 f8e0     ................
    1678:	1f3e 0c0d 0604 0306 0103 0101 0101 0101     >...............
    1688:	f1c1 ffff ffff ffff c1f1 0101 0101 0101     ................
    1698:	0301 0603 0406 0d0c 3e1f e0f8 0080 0000     .........>......
    16a8:	0000 0000 0000 0f00 0f0f 0e0f 0e0e 000e     ................
    16b8:	0703 0f0f 040c 0f0f 000f 0f00 0f0f 000f     ................
    16c8:	0f00 0f0f 0000 0703 0e0f 0c0c 0f0f 000f     ................
    16d8:	0300 0f07 0c0e 0f0e 0307 0000 0f0f 000f     ................
	...
    16f0:	0c04 1c0c 1f1e 0c1f 040c 0000 0000 0000     ................
	...
    1708:	0101 0101 0101 0101 0101 0000 0000 0000     ................
	...
    1720:	0c04 1f0c 1e1f 0c1c 040c 0000               ............

0000172c <LANDER>:
    172c:	0e00 0909 0e09 f000 1010 1010 f010 10f0     ................
    173c:	7030 1030 04f0 090e 0909 000e 0e00 0909     0p0.............
    174c:	0e09 0804 142a 146b 082a 2200 5508 2208     ....*.k.*..".U."
    175c:	0000 0041 0008 0041                         ..A...A.

00001764 <DIGITS>:
    1764:	88f8 00f8 f800 0000 a8e8 00b8 a888 00f8     ................
    1774:	2038 00f8 a8b8 00e8 a8f8 00e8 e808 0018     8 ..............
    1784:	a8f8 00f8 a8b8 00f8 7020 0020 2020 0020     ........ p .   .

00001794 <OLED_INIT_CMD>:
    1794:	3fa8 148d 0020 0021 227f 3f00 12da c0a0     .?.. .!..".?....
    17a4:	00af 0000                                   ....

000017a8 <GAMEMAP>:
    17a8:	2c3f 1620 060c 0604 120a 1410 240c 1e26     ?, ..........$&.
    17b8:	1a1c 020a 0000 0200 1c0a 3f28 3f3f 3f3f     ..........(?????
    17c8:	3f3f 3f3f 3f3f 3f3f 3f3f 3f3f 3f3f 3f3f     ????????????????
    17d8:	3f3f 3f3f 3f3f 0a3f 0000 0e00 0e12 141e     ???????.........
    17e8:	1310 190c 1e1e 1c1b 041a 0101 0404 0f0a     ................
    17f8:	3f3f 3f3f 282d 3f32 3f3f 373f 3f3f 3f3f     ????-(2????7????
    1808:	3732 322d 3f3f 3f3f 3c37 3f3c 0101 0f09     27-2????7<<?....
    1818:	1412 1416 0f12 0109 0901 120f 1614 1214     ................
    1828:	090f 0001 0000 2600 2626 3f3f 3f3f 353a     .......&&&????:5
    1838:	2b30 2b26 3530 3f3a 3f3f 263f 2626 2626     0+&+05:????&&&&&
    1848:	2626 283f 141e 0c0f 0c0a 140f 281e 2e2d     &&?(.........(-.
    1858:	242d 1c1e 0a0f 0005 0000 0400 3f3f 3f3f     -$..........????
    1868:	373f 3c3f 3f3f 3f3f 3f3f 3f3f 3f3f 373f     ?7?<???????????7
    1878:	282d 1e1e 3f3f 3f3f 021e 0303 0c02 010c     -(..????........
    1888:	1414 0a0f 0507 0705 140c 1616 1616 0012     ................
    1898:	0000 1e00 3c36 3232 3b28 3028 2d28 3532     ....6<22(;(0(-25
    18a8:	3737 2f35 2628 2626 263c 223c 1920 0305     775/(&&&<&<" ...
    18b8:	0202 0c05 0c0a 280f 282a 0000 2800 282d     .......(*(...(-(
    18c8:	080a 0205 0202 0807 3f09 3f37 373f 373f     .........?7??7?7
    18d8:	3f3f 3f3c 3f3f 3f3f 3f3f 373f 3937 3f39     ??<????????7799?
    18e8:	3f3f 3f3f 0000 0000 1714 1701 0116 1314     ????............
    18f8:	0112 0f10 0d01 0b0c 010a 0708 0506 1404     ................
    1908:	241e 3e24 2424 3f25 2827 2a29 2c3f 2e3f     .$$>$$%?'()*?,?.
    1918:	3f2f 3231 343e 363f 3837 2323 0519 0505     /?12>4?678##....
    1928:	0a05 050a 1e05 2d28 282d 141e 1428 3014     ......(--(..(..0
    1938:	0000 0700 3f28 3f3f 3f3f 1e23 3f1e 3f3f     ....(?????#..???
    1948:	3f3f 3f3f 3f3f 3f3f 3f3f 3f3f 3f3f 3f3f     ????????????????
    1958:	2d2d 142d 1414 0101 0101 0101 0101 0101     ---.............
    1968:	0114 0101 0101 0023 0000 3f00 3f3f 3e3e     ......#....???>>
    1978:	3f3e 2828 3c3f 2814 3f3f 3f3f 2828 3f3f     >?((?<.(????((??
    1988:	3f3f 3d3d 3d3d 0101 0501 2c29 0529 0101     ??====....),)...
    1998:	0101 0101 0501 2c29 0529 0101 0102 0000     ......),).......
    19a8:	2d00 373f 3f3f 3f3c 3f3f 223b 2211 3f3b     .-?7??<???;".";?
    19b8:	3f3f 3f3b 3f3f 173b 3714 1917               ??;???;..7..

000019c4 <GAMELEVEL>:
    19c4:	212c 0a96 6e4b 9621 4b14 1e22 1496 2a32     ,!..Kn!..K"...2*
    19d4:	6419 1428 281d 2864 2314 4b28 0a3c 1e71     .d(..(d(.#(K<.q.
    19e4:	3c78 1c0a 960a 0a78 051e 7896 1a0a 9631     x<....x....x..1.
    19f4:	05f0 0000                                   ....
