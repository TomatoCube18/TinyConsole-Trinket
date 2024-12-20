
bin/tiny_invaders.elf:     file format elf32-littleriscv


Disassembly of section .init:

00000000 <jump_reset>:
   0:	14a0106f          	j	114a <reset_handler>

Disassembly of section .text:

00000004 <__divsi3>:
       4:	02054e63          	bltz	a0,40 <__umodsi3+0x8>
       8:	0405c363          	bltz	a1,4e <__umodsi3+0x16>

0000000c <__hidden___udivsi3>:
       c:	862e                	mv	a2,a1
       e:	85aa                	mv	a1,a0
      10:	557d                	li	a0,-1
      12:	c215                	beqz	a2,36 <__hidden___udivsi3+0x2a>
      14:	4685                	li	a3,1
      16:	00b67863          	bgeu	a2,a1,26 <__hidden___udivsi3+0x1a>
      1a:	00c05663          	blez	a2,26 <__hidden___udivsi3+0x1a>
      1e:	0606                	sll	a2,a2,0x1
      20:	0686                	sll	a3,a3,0x1
      22:	feb66ce3          	bltu	a2,a1,1a <__hidden___udivsi3+0xe>
      26:	4501                	li	a0,0
      28:	00c5e463          	bltu	a1,a2,30 <__hidden___udivsi3+0x24>
      2c:	8d91                	sub	a1,a1,a2
      2e:	8d55                	or	a0,a0,a3
      30:	8285                	srl	a3,a3,0x1
      32:	8205                	srl	a2,a2,0x1
      34:	faf5                	bnez	a3,28 <__hidden___udivsi3+0x1c>
      36:	8082                	ret

00000038 <__umodsi3>:
      38:	8286                	mv	t0,ra
      3a:	3fc9                	jal	c <__hidden___udivsi3>
      3c:	852e                	mv	a0,a1
      3e:	8282                	jr	t0
      40:	40a00533          	neg	a0,a0
      44:	00b04763          	bgtz	a1,52 <__umodsi3+0x1a>
      48:	40b005b3          	neg	a1,a1
      4c:	b7c1                	j	c <__hidden___udivsi3>
      4e:	40b005b3          	neg	a1,a1
      52:	8286                	mv	t0,ra
      54:	3f65                	jal	c <__hidden___udivsi3>
      56:	40a00533          	neg	a0,a0
      5a:	8282                	jr	t0

0000005c <__modsi3>:
      5c:	8286                	mv	t0,ra
      5e:	0005c763          	bltz	a1,6c <__modsi3+0x10>
      62:	00054963          	bltz	a0,74 <__modsi3+0x18>
      66:	375d                	jal	c <__hidden___udivsi3>
      68:	852e                	mv	a0,a1
      6a:	8282                	jr	t0
      6c:	40b005b3          	neg	a1,a1
      70:	fe055be3          	bgez	a0,66 <__modsi3+0xa>
      74:	40a00533          	neg	a0,a0
      78:	3f51                	jal	c <__hidden___udivsi3>
      7a:	40b00533          	neg	a0,a1
      7e:	8282                	jr	t0
	...

00000082 <I2C_write>:
      82:	400057b7          	lui	a5,0x40005
      86:	40078793          	add	a5,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
      8a:	0147d703          	lhu	a4,20(a5)
      8e:	08077713          	and	a4,a4,128
      92:	df65                	beqz	a4,8a <I2C_write+0x8>
      94:	00a79823          	sh	a0,16(a5)
      98:	8082                	ret

0000009a <I2C_stop>:
      9a:	400057b7          	lui	a5,0x40005
      9e:	40078693          	add	a3,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
      a2:	0146d703          	lhu	a4,20(a3)
      a6:	8b11                	and	a4,a4,4
      a8:	df6d                	beqz	a4,a2 <I2C_stop+0x8>
      aa:	4007d703          	lhu	a4,1024(a5)
      ae:	20076713          	or	a4,a4,512
      b2:	40e79023          	sh	a4,1024(a5)
      b6:	8082                	ret

000000b8 <SpeedControle>:
      b8:	1161                	add	sp,sp,-8
      ba:	c222                	sw	s0,4(sp)
      bc:	c026                	sw	s1,0(sp)
      be:	80018723          	sb	zero,-2034(gp) # 2000000e <MONSTERrest>
      c2:	86aa                	mv	a3,a0
      c4:	01850393          	add	t2,a0,24
      c8:	4301                	li	t1,0
      ca:	4781                	li	a5,0
      cc:	547d                	li	s0,-1
      ce:	4495                	li	s1,5
      d0:	85b6                	mv	a1,a3
      d2:	4719                	li	a4,6
      d4:	00458283          	lb	t0,4(a1)
      d8:	00828863          	beq	t0,s0,e8 <SpeedControle+0x30>
      dc:	0054c663          	blt	s1,t0,e8 <SpeedControle+0x30>
      e0:	0785                	add	a5,a5,1
      e2:	0ff7f793          	zext.b	a5,a5
      e6:	4305                	li	t1,1
      e8:	177d                	add	a4,a4,-1
      ea:	0ff77713          	zext.b	a4,a4
      ee:	0585                	add	a1,a1,1
      f0:	f375                	bnez	a4,d4 <SpeedControle+0x1c>
      f2:	0699                	add	a3,a3,6
      f4:	fc769ee3          	bne	a3,t2,d0 <SpeedControle+0x18>
      f8:	00030463          	beqz	t1,100 <SpeedControle+0x48>
      fc:	80f18723          	sb	a5,-2034(gp) # 2000000e <MONSTERrest>
     100:	80e1c783          	lbu	a5,-2034(gp) # 2000000e <MONSTERrest>
     104:	4412                	lw	s0,4(sp)
     106:	4482                	lw	s1,0(sp)
     108:	838d                	srl	a5,a5,0x3
     10a:	02f50b23          	sb	a5,54(a0)
     10e:	0121                	add	sp,sp,8
     110:	8082                	ret

00000112 <ShieldDestroyWrite>:
     112:	479d                	li	a5,7
     114:	08b7e463          	bltu	a5,a1,19c <ShieldDestroyWrite+0x8a>
     118:	6785                	lui	a5,0x1
     11a:	1cc78793          	add	a5,a5,460 # 11cc <i2c_tx.c.57351142+0x77>
     11e:	058a                	sll	a1,a1,0x2
     120:	95be                	add	a1,a1,a5
     122:	419c                	lw	a5,0(a1)
     124:	9532                	add	a0,a0,a2
     126:	8782                	jr	a5
     128:	02254783          	lbu	a5,34(a0)
     12c:	f8078793          	add	a5,a5,-128
     130:	02f50123          	sb	a5,34(a0)
     134:	e6a5                	bnez	a3,19c <ShieldDestroyWrite+0x8a>
     136:	57fd                	li	a5,-1
     138:	02f604a3          	sb	a5,41(a2)
     13c:	8082                	ret
     13e:	02254783          	lbu	a5,34(a0)
     142:	fc078793          	add	a5,a5,-64
     146:	02f50123          	sb	a5,34(a0)
     14a:	d6f5                	beqz	a3,136 <ShieldDestroyWrite+0x24>
     14c:	8082                	ret
     14e:	02254783          	lbu	a5,34(a0)
     152:	1781                	add	a5,a5,-32
     154:	02f50123          	sb	a5,34(a0)
     158:	def9                	beqz	a3,136 <ShieldDestroyWrite+0x24>
     15a:	8082                	ret
     15c:	02254783          	lbu	a5,34(a0)
     160:	17c1                	add	a5,a5,-16
     162:	02f50123          	sb	a5,34(a0)
     166:	dae1                	beqz	a3,136 <ShieldDestroyWrite+0x24>
     168:	8082                	ret
     16a:	02254783          	lbu	a5,34(a0)
     16e:	17e1                	add	a5,a5,-8
     170:	02f50123          	sb	a5,34(a0)
     174:	d2e9                	beqz	a3,136 <ShieldDestroyWrite+0x24>
     176:	8082                	ret
     178:	02254783          	lbu	a5,34(a0)
     17c:	17f1                	add	a5,a5,-4
     17e:	02f50123          	sb	a5,34(a0)
     182:	dad5                	beqz	a3,136 <ShieldDestroyWrite+0x24>
     184:	8082                	ret
     186:	02254783          	lbu	a5,34(a0)
     18a:	17f9                	add	a5,a5,-2
     18c:	02f50123          	sb	a5,34(a0)
     190:	d2dd                	beqz	a3,136 <ShieldDestroyWrite+0x24>
     192:	8082                	ret
     194:	02254783          	lbu	a5,34(a0)
     198:	17fd                	add	a5,a5,-1
     19a:	bf59                	j	130 <ShieldDestroyWrite+0x1e>
     19c:	8082                	ret

0000019e <ShieldBlitz>:
     19e:	471d                	li	a4,7
     1a0:	87aa                	mv	a5,a0
     1a2:	00b76963          	bltu	a4,a1,1b4 <ShieldBlitz+0x16>
     1a6:	6705                	lui	a4,0x1
     1a8:	1ec70713          	add	a4,a4,492 # 11ec <i2c_tx.c.57351142+0x97>
     1ac:	058a                	sll	a1,a1,0x2
     1ae:	95ba                	add	a1,a1,a4
     1b0:	4198                	lw	a4,0(a1)
     1b2:	8702                	jr	a4
     1b4:	4501                	li	a0,0
     1b6:	8082                	ret
     1b8:	453d                	li	a0,15
     1ba:	ef89                	bnez	a5,1d4 <ShieldBlitz+0x36>
     1bc:	0f000513          	li	a0,240
     1c0:	8082                	ret
     1c2:	453d                	li	a0,15
     1c4:	eb81                	bnez	a5,1d4 <ShieldBlitz+0x36>
     1c6:	0fc00513          	li	a0,252
     1ca:	8082                	ret
     1cc:	4705                	li	a4,1
     1ce:	453d                	li	a0,15
     1d0:	fee78be3          	beq	a5,a4,1c6 <ShieldBlitz+0x28>
     1d4:	8082                	ret
     1d6:	4705                	li	a4,1
     1d8:	453d                	li	a0,15
     1da:	fee79de3          	bne	a5,a4,1d4 <ShieldBlitz+0x36>
     1de:	bff9                	j	1bc <ShieldBlitz+0x1e>
     1e0:	453d                	li	a0,15
     1e2:	bfcd                	j	1d4 <ShieldBlitz+0x36>

000001e4 <ShieldDestroy.part.0>:
     1e4:	1151                	add	sp,sp,-12
     1e6:	87ae                	mv	a5,a1
     1e8:	15b5                	add	a1,a1,-19
     1ea:	86aa                	mv	a3,a0
     1ec:	c406                	sw	ra,8(sp)
     1ee:	0ff5f593          	zext.b	a1,a1
     1f2:	451d                	li	a0,7
     1f4:	8732                	mv	a4,a2
     1f6:	02b56163          	bltu	a0,a1,218 <ShieldDestroy.part.0+0x34>
     1fa:	02264503          	lbu	a0,34(a2)
     1fe:	08000313          	li	t1,128
     202:	40b35333          	sra	t1,t1,a1
     206:	00657533          	and	a0,a0,t1
     20a:	c951                	beqz	a0,29e <ShieldDestroy.part.0+0xba>
     20c:	4501                	li	a0,0
     20e:	3711                	jal	112 <ShieldDestroyWrite>
     210:	4505                	li	a0,1
     212:	40a2                	lw	ra,8(sp)
     214:	0131                	add	sp,sp,12
     216:	8082                	ret
     218:	fe578593          	add	a1,a5,-27
     21c:	0ff5f593          	zext.b	a1,a1
     220:	00b56c63          	bltu	a0,a1,238 <ShieldDestroy.part.0+0x54>
     224:	02364783          	lbu	a5,35(a2)
     228:	08000513          	li	a0,128
     22c:	40b55533          	sra	a0,a0,a1
     230:	8d7d                	and	a0,a0,a5
     232:	d165                	beqz	a0,212 <ShieldDestroy.part.0+0x2e>
     234:	4505                	li	a0,1
     236:	bfe1                	j	20e <ShieldDestroy.part.0+0x2a>
     238:	fca78593          	add	a1,a5,-54
     23c:	0ff5f593          	zext.b	a1,a1
     240:	00b56d63          	bltu	a0,a1,25a <ShieldDestroy.part.0+0x76>
     244:	02464703          	lbu	a4,36(a2)
     248:	08000793          	li	a5,128
     24c:	40b7d7b3          	sra	a5,a5,a1
     250:	00e7f533          	and	a0,a5,a4
     254:	dd5d                	beqz	a0,212 <ShieldDestroy.part.0+0x2e>
     256:	4509                	li	a0,2
     258:	bf5d                	j	20e <ShieldDestroy.part.0+0x2a>
     25a:	fc278593          	add	a1,a5,-62
     25e:	0ff5f593          	zext.b	a1,a1
     262:	00b56d63          	bltu	a0,a1,27c <ShieldDestroy.part.0+0x98>
     266:	02564703          	lbu	a4,37(a2)
     26a:	08000793          	li	a5,128
     26e:	40b7d7b3          	sra	a5,a5,a1
     272:	00e7f533          	and	a0,a5,a4
     276:	dd51                	beqz	a0,212 <ShieldDestroy.part.0+0x2e>
     278:	450d                	li	a0,3
     27a:	bf51                	j	20e <ShieldDestroy.part.0+0x2a>
     27c:	fa778593          	add	a1,a5,-89
     280:	0ff5f593          	zext.b	a1,a1
     284:	00b56d63          	bltu	a0,a1,29e <ShieldDestroy.part.0+0xba>
     288:	02664703          	lbu	a4,38(a2)
     28c:	08000793          	li	a5,128
     290:	40b7d7b3          	sra	a5,a5,a1
     294:	00e7f533          	and	a0,a5,a4
     298:	dd2d                	beqz	a0,212 <ShieldDestroy.part.0+0x2e>
     29a:	4511                	li	a0,4
     29c:	bf8d                	j	20e <ShieldDestroy.part.0+0x2a>
     29e:	f9f78593          	add	a1,a5,-97
     2a2:	0ff5f593          	zext.b	a1,a1
     2a6:	479d                	li	a5,7
     2a8:	4501                	li	a0,0
     2aa:	f6b7e4e3          	bltu	a5,a1,212 <ShieldDestroy.part.0+0x2e>
     2ae:	02774783          	lbu	a5,39(a4)
     2b2:	08000513          	li	a0,128
     2b6:	40b55533          	sra	a0,a0,a1
     2ba:	8d7d                	and	a0,a0,a5
     2bc:	d939                	beqz	a0,212 <ShieldDestroy.part.0+0x2e>
     2be:	863a                	mv	a2,a4
     2c0:	4515                	li	a0,5
     2c2:	b7b1                	j	20e <ShieldDestroy.part.0+0x2a>

000002c4 <DLY_ticks>:
     2c4:	e000f7b7          	lui	a5,0xe000f
     2c8:	479c                	lw	a5,8(a5)
     2ca:	e000f737          	lui	a4,0xe000f
     2ce:	953e                	add	a0,a0,a5
     2d0:	471c                	lw	a5,8(a4)
     2d2:	8f89                	sub	a5,a5,a0
     2d4:	fe07cee3          	bltz	a5,2d0 <DLY_ticks+0xc>
     2d8:	8082                	ret

000002da <JOY_sound>:
     2da:	0ff00713          	li	a4,255
     2de:	1131                	add	sp,sp,-20
     2e0:	8f09                	sub	a4,a4,a0
     2e2:	c622                	sw	s0,12(sp)
     2e4:	00171413          	sll	s0,a4,0x1
     2e8:	fff58793          	add	a5,a1,-1
     2ec:	943a                	add	s0,s0,a4
     2ee:	c426                	sw	s1,8(sp)
     2f0:	c806                	sw	ra,16(sp)
     2f2:	86aa                	mv	a3,a0
     2f4:	0ff7f793          	zext.b	a5,a5
     2f8:	040a                	sll	s0,s0,0x2
     2fa:	400114b7          	lui	s1,0x40011
     2fe:	c689                	beqz	a3,308 <JOY_sound+0x2e>
     300:	80048713          	add	a4,s1,-2048 # 40010800 <__global_pointer$+0x20010000>
     304:	4609                	li	a2,2
     306:	cb50                	sw	a2,20(a4)
     308:	8522                	mv	a0,s0
     30a:	c236                	sw	a3,4(sp)
     30c:	c03e                	sw	a5,0(sp)
     30e:	3f5d                	jal	2c4 <DLY_ticks>
     310:	80048713          	add	a4,s1,-2048
     314:	4609                	li	a2,2
     316:	cb10                	sw	a2,16(a4)
     318:	8522                	mv	a0,s0
     31a:	376d                	jal	2c4 <DLY_ticks>
     31c:	4782                	lw	a5,0(sp)
     31e:	0ff00713          	li	a4,255
     322:	4692                	lw	a3,4(sp)
     324:	17fd                	add	a5,a5,-1 # e000efff <__global_pointer$+0xc000e7ff>
     326:	0ff7f793          	zext.b	a5,a5
     32a:	fce79ae3          	bne	a5,a4,2fe <JOY_sound+0x24>
     32e:	40c2                	lw	ra,16(sp)
     330:	4432                	lw	s0,12(sp)
     332:	44a2                	lw	s1,8(sp)
     334:	0151                	add	sp,sp,20
     336:	8082                	ret

00000338 <SnD>:
     338:	f8800793          	li	a5,-120
     33c:	00f50e63          	beq	a0,a5,358 <SnD+0x20>
     340:	1151                	add	sp,sp,-12
     342:	45a1                	li	a1,8
     344:	0dc00513          	li	a0,220
     348:	c406                	sw	ra,8(sp)
     34a:	3f41                	jal	2da <JOY_sound>
     34c:	40a2                	lw	ra,8(sp)
     34e:	4591                	li	a1,4
     350:	0c800513          	li	a0,200
     354:	0131                	add	sp,sp,12
     356:	b751                	j	2da <JOY_sound>
     358:	852e                	mv	a0,a1
     35a:	4585                	li	a1,1
     35c:	bfed                	j	356 <SnD+0x1e>

0000035e <I2C_start.constprop.0>:
     35e:	400057b7          	lui	a5,0x40005
     362:	40078693          	add	a3,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
     366:	0186d703          	lhu	a4,24(a3)
     36a:	8b09                	and	a4,a4,2
     36c:	ff6d                	bnez	a4,366 <I2C_start.constprop.0+0x8>
     36e:	4007d703          	lhu	a4,1024(a5)
     372:	10076713          	or	a4,a4,256
     376:	40e79023          	sh	a4,1024(a5)
     37a:	400057b7          	lui	a5,0x40005
     37e:	40078793          	add	a5,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
     382:	0147d703          	lhu	a4,20(a5)
     386:	8b05                	and	a4,a4,1
     388:	df6d                	beqz	a4,382 <I2C_start.constprop.0+0x24>
     38a:	07800713          	li	a4,120
     38e:	00e79823          	sh	a4,16(a5)
     392:	400056b7          	lui	a3,0x40005
     396:	00820737          	lui	a4,0x820
     39a:	40068693          	add	a3,a3,1024 # 40005400 <__global_pointer$+0x20004c00>
     39e:	070d                	add	a4,a4,3 # 820003 <system.c.b7fad625+0x81dd70>
     3a0:	0146d783          	lhu	a5,20(a3)
     3a4:	0186d603          	lhu	a2,24(a3)
     3a8:	07c2                	sll	a5,a5,0x10
     3aa:	8fd1                	or	a5,a5,a2
     3ac:	8ff9                	and	a5,a5,a4
     3ae:	fee799e3          	bne	a5,a4,3a0 <I2C_start.constprop.0+0x42>
     3b2:	8082                	ret

000003b4 <Tiny_Flip>:
     3b4:	6785                	lui	a5,0x1
     3b6:	fc410113          	add	sp,sp,-60
     3ba:	6e078793          	add	a5,a5,1760 # 16e0 <intro>
     3be:	da22                	sw	s0,52(sp)
     3c0:	dc06                	sw	ra,56(sp)
     3c2:	d826                	sw	s1,48(sp)
     3c4:	cc2a                	sw	a0,24(sp)
     3c6:	842e                	mv	s0,a1
     3c8:	c402                	sw	zero,8(sp)
     3ca:	d03e                	sw	a5,32(sp)
     3cc:	00814783          	lbu	a5,8(sp)
     3d0:	ca3e                	sw	a5,20(sp)
     3d2:	3771                	jal	35e <I2C_start.constprop.0>
     3d4:	4501                	li	a0,0
     3d6:	3175                	jal	82 <I2C_write>
     3d8:	47d2                	lw	a5,20(sp)
     3da:	0b07e513          	or	a0,a5,176
     3de:	3155                	jal	82 <I2C_write>
     3e0:	4501                	li	a0,0
     3e2:	3145                	jal	82 <I2C_write>
     3e4:	4541                	li	a0,16
     3e6:	3971                	jal	82 <I2C_write>
     3e8:	394d                	jal	9a <I2C_stop>
     3ea:	3f95                	jal	35e <I2C_start.constprop.0>
     3ec:	04000513          	li	a0,64
     3f0:	3949                	jal	82 <I2C_write>
     3f2:	47a2                	lw	a5,8(sp)
     3f4:	c002                	sw	zero,0(sp)
     3f6:	00779493          	sll	s1,a5,0x7
     3fa:	5782                	lw	a5,32(sp)
     3fc:	00f48733          	add	a4,s1,a5
     400:	80c1c783          	lbu	a5,-2036(gp) # 2000000c <ShieldRemoved>
     404:	c83e                	sw	a5,16(sp)
     406:	47e2                	lw	a5,24(sp)
     408:	54079b63          	bnez	a5,95e <Tiny_Flip+0x5aa>
     40c:	00014783          	lbu	a5,0(sp)
     410:	c23e                	sw	a5,4(sp)
     412:	6785                	lui	a5,0x1
     414:	20c78793          	add	a5,a5,524 # 120c <back>
     418:	97a6                	add	a5,a5,s1
     41a:	d23e                	sw	a5,36(sp)
     41c:	4742                	lw	a4,16(sp)
     41e:	4781                	li	a5,0
     420:	e715                	bnez	a4,44c <Tiny_Flip+0x98>
     422:	46a2                	lw	a3,8(sp)
     424:	4719                	li	a4,6
     426:	02e69363          	bne	a3,a4,44c <Tiny_Flip+0x98>
     42a:	4712                	lw	a4,4(sp)
     42c:	fed70593          	add	a1,a4,-19
     430:	0ff5f593          	zext.b	a1,a1
     434:	471d                	li	a4,7
     436:	08b76063          	bltu	a4,a1,4b6 <Tiny_Flip+0x102>
     43a:	02244703          	lbu	a4,34(s0)
     43e:	08000793          	li	a5,128
     442:	40b7d7b3          	sra	a5,a5,a1
     446:	8ff9                	and	a5,a5,a4
     448:	4501                	li	a0,0
     44a:	e7d1                	bnez	a5,4d6 <Tiny_Flip+0x122>
     44c:	4692                	lw	a3,4(sp)
     44e:	02844703          	lbu	a4,40(s0)
     452:	9736                	add	a4,a4,a3
     454:	0ff77693          	zext.b	a3,a4
     458:	0762                	sll	a4,a4,0x18
     45a:	8761                	sra	a4,a4,0x18
     45c:	00075463          	bgez	a4,464 <Tiny_Flip+0xb0>
     460:	0806c693          	xor	a3,a3,128
     464:	5712                	lw	a4,36(sp)
     466:	96ba                	add	a3,a3,a4
     468:	0006c703          	lbu	a4,0(a3)
     46c:	8111c683          	lbu	a3,-2031(gp) # 20000011 <Live>
     470:	fff74713          	not	a4,a4
     474:	0ff77713          	zext.b	a4,a4
     478:	c636                	sw	a3,12(sp)
     47a:	4632                	lw	a2,12(sp)
     47c:	068a                	sll	a3,a3,0x2
     47e:	96b2                	add	a3,a3,a2
     480:	4602                	lw	a2,0(sp)
     482:	16fd                	add	a3,a3,-1
     484:	0cc6c463          	blt	a3,a2,54c <Tiny_Flip+0x198>
     488:	4622                	lw	a2,8(sp)
     48a:	469d                	li	a3,7
     48c:	28d61963          	bne	a2,a3,71e <Tiny_Flip+0x36a>
     490:	4602                	lw	a2,0(sp)
     492:	6685                	lui	a3,0x1
     494:	60c68693          	add	a3,a3,1548 # 160c <LIVE>
     498:	96b2                	add	a3,a3,a2
     49a:	0006c683          	lbu	a3,0(a3)
     49e:	8f55                	or	a4,a4,a3
     4a0:	200006b7          	lui	a3,0x20000
     4a4:	0026c583          	lbu	a1,2(a3) # 20000002 <ShipPos>
     4a8:	46b1                	li	a3,12
     4aa:	40b605b3          	sub	a1,a2,a1
     4ae:	0ab6fd63          	bgeu	a3,a1,568 <Tiny_Flip+0x1b4>
     4b2:	4501                	li	a0,0
     4b4:	a0e9                	j	57e <Tiny_Flip+0x1ca>
     4b6:	4692                	lw	a3,4(sp)
     4b8:	fe568593          	add	a1,a3,-27
     4bc:	0ff5f593          	zext.b	a1,a1
     4c0:	00b76e63          	bltu	a4,a1,4dc <Tiny_Flip+0x128>
     4c4:	02344703          	lbu	a4,35(s0)
     4c8:	08000793          	li	a5,128
     4cc:	40b7d7b3          	sra	a5,a5,a1
     4d0:	8ff9                	and	a5,a5,a4
     4d2:	dfad                	beqz	a5,44c <Tiny_Flip+0x98>
     4d4:	4505                	li	a0,1
     4d6:	31e1                	jal	19e <ShieldBlitz>
     4d8:	87aa                	mv	a5,a0
     4da:	bf8d                	j	44c <Tiny_Flip+0x98>
     4dc:	4692                	lw	a3,4(sp)
     4de:	fca68593          	add	a1,a3,-54
     4e2:	0ff5f593          	zext.b	a1,a1
     4e6:	00b76963          	bltu	a4,a1,4f8 <Tiny_Flip+0x144>
     4ea:	08000793          	li	a5,128
     4ee:	02444703          	lbu	a4,36(s0)
     4f2:	40b7d7b3          	sra	a5,a5,a1
     4f6:	bf81                	j	446 <Tiny_Flip+0x92>
     4f8:	4692                	lw	a3,4(sp)
     4fa:	fc268593          	add	a1,a3,-62
     4fe:	0ff5f593          	zext.b	a1,a1
     502:	00b76963          	bltu	a4,a1,514 <Tiny_Flip+0x160>
     506:	08000793          	li	a5,128
     50a:	02544703          	lbu	a4,37(s0)
     50e:	40b7d7b3          	sra	a5,a5,a1
     512:	bf7d                	j	4d0 <Tiny_Flip+0x11c>
     514:	4692                	lw	a3,4(sp)
     516:	fa768593          	add	a1,a3,-89
     51a:	0ff5f593          	zext.b	a1,a1
     51e:	00b76963          	bltu	a4,a1,530 <Tiny_Flip+0x17c>
     522:	08000793          	li	a5,128
     526:	02644703          	lbu	a4,38(s0)
     52a:	40b7d7b3          	sra	a5,a5,a1
     52e:	bf21                	j	446 <Tiny_Flip+0x92>
     530:	4692                	lw	a3,4(sp)
     532:	f9f68593          	add	a1,a3,-97
     536:	0ff5f593          	zext.b	a1,a1
     53a:	f0b769e3          	bltu	a4,a1,44c <Tiny_Flip+0x98>
     53e:	08000793          	li	a5,128
     542:	02744703          	lbu	a4,39(s0)
     546:	40b7d7b3          	sra	a5,a5,a1
     54a:	b759                	j	4d0 <Tiny_Flip+0x11c>
     54c:	200006b7          	lui	a3,0x20000
     550:	0026c583          	lbu	a1,2(a3) # 20000002 <ShipPos>
     554:	4682                	lw	a3,0(sp)
     556:	40b685b3          	sub	a1,a3,a1
     55a:	46b1                	li	a3,12
     55c:	1cb6e163          	bltu	a3,a1,71e <Tiny_Flip+0x36a>
     560:	4622                	lw	a2,8(sp)
     562:	469d                	li	a3,7
     564:	1ad61d63          	bne	a2,a3,71e <Tiny_Flip+0x36a>
     568:	80f1c503          	lbu	a0,-2033(gp) # 2000000f <ShipDead>
     56c:	6685                	lui	a3,0x1
     56e:	61c68693          	add	a3,a3,1564 # 161c <vesso>
     572:	18051a63          	bnez	a0,706 <Tiny_Flip+0x352>
     576:	96ae                	add	a3,a3,a1
     578:	0006c683          	lbu	a3,0(a3)
     57c:	8f55                	or	a4,a4,a3
     57e:	8f49                	or	a4,a4,a0
     580:	ce3a                	sw	a4,28(sp)
     582:	4692                	lw	a3,4(sp)
     584:	03344703          	lbu	a4,51(s0)
     588:	1ce6fd63          	bgeu	a3,a4,762 <Tiny_Flip+0x3ae>
     58c:	4481                	li	s1,0
     58e:	46f2                	lw	a3,28(sp)
     590:	4612                	lw	a2,4(sp)
     592:	8fd5                	or	a5,a5,a3
     594:	02a44683          	lbu	a3,42(s0)
     598:	0ff7f793          	zext.b	a5,a5
     59c:	ce3e                	sw	a5,28(sp)
     59e:	4781                	li	a5,0
     5a0:	10c69d63          	bne	a3,a2,6ba <Tiny_Flip+0x306>
     5a4:	02940683          	lb	a3,41(s0)
     5a8:	4622                	lw	a2,8(sp)
     5aa:	10c69863          	bne	a3,a2,6ba <Tiny_Flip+0x306>
     5ae:	02b44783          	lbu	a5,43(s0)
     5b2:	0017b693          	seqz	a3,a5
     5b6:	02d405a3          	sb	a3,43(s0)
     5ba:	e789                	bnez	a5,5c4 <Tiny_Flip+0x210>
     5bc:	fff60793          	add	a5,a2,-1
     5c0:	02f404a3          	sb	a5,41(s0)
     5c4:	4792                	lw	a5,4(sp)
     5c6:	08e7ef63          	bltu	a5,a4,664 <Tiny_Flip+0x2b0>
     5ca:	4602                	lw	a2,0(sp)
     5cc:	05470793          	add	a5,a4,84
     5d0:	08c7ca63          	blt	a5,a2,664 <Tiny_Flip+0x2b0>
     5d4:	02940783          	lb	a5,41(s0)
     5d8:	0685                	add	a3,a3,1
     5da:	068a                	sll	a3,a3,0x2
     5dc:	078e                	sll	a5,a5,0x3
     5de:	97b6                	add	a5,a5,a3
     5e0:	03444683          	lbu	a3,52(s0)
     5e4:	068e                	sll	a3,a3,0x3
     5e6:	06d7cf63          	blt	a5,a3,664 <Tiny_Flip+0x2b0>
     5ea:	02068593          	add	a1,a3,32
     5ee:	06f5cb63          	blt	a1,a5,664 <Tiny_Flip+0x2b0>
     5f2:	40e60533          	sub	a0,a2,a4
     5f6:	5731                	li	a4,-20
     5f8:	36e54163          	blt	a0,a4,95a <Tiny_Flip+0x5a6>
     5fc:	04c00713          	li	a4,76
     600:	06a74263          	blt	a4,a0,664 <Tiny_Flip+0x2b0>
     604:	45b9                	li	a1,14
     606:	051d                	add	a0,a0,7
     608:	d636                	sw	a3,44(sp)
     60a:	d43e                	sw	a5,40(sp)
     60c:	3ae5                	jal	4 <__divsi3>
     60e:	57a2                	lw	a5,40(sp)
     610:	56b2                	lw	a3,44(sp)
     612:	0562                	sll	a0,a0,0x18
     614:	8561                	sra	a0,a0,0x18
     616:	8f95                	sub	a5,a5,a3
     618:	0791                	add	a5,a5,4
     61a:	878d                	sra	a5,a5,0x3
     61c:	07e2                	sll	a5,a5,0x18
     61e:	87e1                	sra	a5,a5,0x18
     620:	470d                	li	a4,3
     622:	04f74163          	blt	a4,a5,664 <Tiny_Flip+0x2b0>
     626:	873e                	mv	a4,a5
     628:	0007d363          	bgez	a5,62e <Tiny_Flip+0x27a>
     62c:	4701                	li	a4,0
     62e:	0762                	sll	a4,a4,0x18
     630:	8761                	sra	a4,a4,0x18
     632:	00171793          	sll	a5,a4,0x1
     636:	97ba                	add	a5,a5,a4
     638:	0786                	sll	a5,a5,0x1
     63a:	97a2                	add	a5,a5,s0
     63c:	97aa                	add	a5,a5,a0
     63e:	0047c683          	lbu	a3,4(a5)
     642:	4715                	li	a4,5
     644:	02d76063          	bltu	a4,a3,664 <Tiny_Flip+0x2b0>
     648:	03200513          	li	a0,50
     64c:	45a9                	li	a1,10
     64e:	d43e                	sw	a5,40(sp)
     650:	3169                	jal	2da <JOY_sound>
     652:	57a2                	lw	a5,40(sp)
     654:	4721                	li	a4,8
     656:	8522                	mv	a0,s0
     658:	00e78223          	sb	a4,4(a5)
     65c:	57fd                	li	a5,-1
     65e:	02f404a3          	sb	a5,41(s0)
     662:	3c99                	jal	b8 <SpeedControle>
     664:	02940783          	lb	a5,41(s0)
     668:	e3b1                	bnez	a5,6ac <Tiny_Flip+0x2f8>
     66a:	02a44703          	lbu	a4,42(s0)
     66e:	00040783          	lb	a5,0(s0)
     672:	02f74d63          	blt	a4,a5,6ac <Tiny_Flip+0x2f8>
     676:	07b9                	add	a5,a5,14
     678:	02e7ca63          	blt	a5,a4,6ac <Tiny_Flip+0x2f8>
     67c:	4505                	li	a0,1
     67e:	4585                	li	a1,1
     680:	d42a                	sw	a0,40(sp)
     682:	39a1                	jal	2da <JOY_sound>
     684:	5522                	lw	a0,40(sp)
     686:	06400793          	li	a5,100
     68a:	0505                	add	a0,a0,1
     68c:	0ff57513          	zext.b	a0,a0
     690:	fef517e3          	bne	a0,a5,67e <Tiny_Flip+0x2ca>
     694:	4732                	lw	a4,12(sp)
     696:	4789                	li	a5,2
     698:	00e7e663          	bltu	a5,a4,6a4 <Tiny_Flip+0x2f0>
     69c:	00170793          	add	a5,a4,1
     6a0:	80f188a3          	sb	a5,-2031(gp) # 20000011 <Live>
     6a4:	f8800793          	li	a5,-120
     6a8:	00f40023          	sb	a5,0(s0)
     6ac:	02b44783          	lbu	a5,43(s0)
     6b0:	80818713          	add	a4,gp,-2040 # 20000008 <SHOOT>
     6b4:	97ba                	add	a5,a5,a4
     6b6:	0007c783          	lbu	a5,0(a5)
     6ba:	4772                	lw	a4,28(sp)
     6bc:	4652                	lw	a2,20(sp)
     6be:	00244683          	lbu	a3,2(s0)
     6c2:	8cd9                	or	s1,s1,a4
     6c4:	00344703          	lbu	a4,3(s0)
     6c8:	4501                	li	a0,0
     6ca:	00175593          	srl	a1,a4,0x1
     6ce:	00c59a63          	bne	a1,a2,6e2 <Tiny_Flip+0x32e>
     6d2:	4612                	lw	a2,4(sp)
     6d4:	00c69763          	bne	a3,a2,6e2 <Tiny_Flip+0x32e>
     6d8:	8b05                	and	a4,a4,1
     6da:	0f000513          	li	a0,240
     6de:	e311                	bnez	a4,6e2 <Tiny_Flip+0x32e>
     6e0:	453d                	li	a0,15
     6e2:	8fc5                	or	a5,a5,s1
     6e4:	8d5d                	or	a0,a0,a5
     6e6:	3a71                	jal	82 <I2C_write>
     6e8:	4782                	lw	a5,0(sp)
     6ea:	0785                	add	a5,a5,1
     6ec:	c03e                	sw	a5,0(sp)
     6ee:	4702                	lw	a4,0(sp)
     6f0:	08000793          	li	a5,128
     6f4:	28f70563          	beq	a4,a5,97e <Tiny_Flip+0x5ca>
     6f8:	00014783          	lbu	a5,0(sp)
     6fc:	c23e                	sw	a5,4(sp)
     6fe:	80c1c783          	lbu	a5,-2036(gp) # 2000000c <ShieldRemoved>
     702:	c83e                	sw	a5,16(sp)
     704:	bb21                	j	41c <Tiny_Flip+0x68>
     706:	00144303          	lbu	t1,1(s0)
     70a:	00131513          	sll	a0,t1,0x1
     70e:	951a                	add	a0,a0,t1
     710:	050a                	sll	a0,a0,0x2
     712:	96aa                	add	a3,a3,a0
     714:	96ae                	add	a3,a3,a1
     716:	0006c683          	lbu	a3,0(a3)
     71a:	8f55                	or	a4,a4,a3
     71c:	bb59                	j	4b2 <Tiny_Flip+0xfe>
     71e:	00040583          	lb	a1,0(s0)
     722:	f8800693          	li	a3,-120
     726:	4501                	li	a0,0
     728:	e4d58be3          	beq	a1,a3,57e <Tiny_Flip+0x1ca>
     72c:	46a2                	lw	a3,8(sp)
     72e:	e40698e3          	bnez	a3,57e <Tiny_Flip+0x1ca>
     732:	4682                	lw	a3,0(sp)
     734:	e4b6c5e3          	blt	a3,a1,57e <Tiny_Flip+0x1ca>
     738:	16c9                	add	a3,a3,-14
     73a:	e4d5c2e3          	blt	a1,a3,57e <Tiny_Flip+0x1ca>
     73e:	00144303          	lbu	t1,1(s0)
     742:	4602                	lw	a2,0(sp)
     744:	6685                	lui	a3,0x1
     746:	63868693          	add	a3,a3,1592 # 1638 <Monsters>
     74a:	40b60533          	sub	a0,a2,a1
     74e:	00331593          	sll	a1,t1,0x3
     752:	406585b3          	sub	a1,a1,t1
     756:	0586                	sll	a1,a1,0x1
     758:	96ae                	add	a3,a3,a1
     75a:	96aa                	add	a3,a3,a0
     75c:	0546c503          	lbu	a0,84(a3)
     760:	bd39                	j	57e <Tiny_Flip+0x1ca>
     762:	03444483          	lbu	s1,52(s0)
     766:	46d2                	lw	a3,20(sp)
     768:	e296e2e3          	bltu	a3,s1,58c <Tiny_Flip+0x1d8>
     76c:	d63e                	sw	a5,44(sp)
     76e:	4782                	lw	a5,0(sp)
     770:	45b9                	li	a1,14
     772:	d43a                	sw	a4,40(sp)
     774:	40e78533          	sub	a0,a5,a4
     778:	88dff0ef          	jal	4 <__divsi3>
     77c:	47d2                	lw	a5,20(sp)
     77e:	0ff57593          	zext.b	a1,a0
     782:	02b40723          	sb	a1,46(s0)
     786:	409786b3          	sub	a3,a5,s1
     78a:	0ff6f693          	zext.b	a3,a3
     78e:	02d407a3          	sb	a3,47(s0)
     792:	4315                	li	t1,5
     794:	5722                	lw	a4,40(sp)
     796:	57b2                	lw	a5,44(sp)
     798:	deb36ae3          	bltu	t1,a1,58c <Tiny_Flip+0x1d8>
     79c:	4591                	li	a1,4
     79e:	ded5e7e3          	bltu	a1,a3,58c <Tiny_Flip+0x1d8>
     7a2:	03544483          	lbu	s1,53(s0)
     7a6:	e0bd                	bnez	s1,80c <Tiny_Flip+0x458>
     7a8:	00169593          	sll	a1,a3,0x1
     7ac:	96ae                	add	a3,a3,a1
     7ae:	0686                	sll	a3,a3,0x1
     7b0:	96a2                	add	a3,a3,s0
     7b2:	96aa                	add	a3,a3,a0
     7b4:	00468283          	lb	t0,4(a3)
     7b8:	469d                	li	a3,7
     7ba:	0456c363          	blt	a3,t0,800 <Tiny_Flip+0x44c>
     7be:	55fd                	li	a1,-1
     7c0:	02c44683          	lbu	a3,44(s0)
     7c4:	dcb284e3          	beq	t0,a1,58c <Tiny_Flip+0x1d8>
     7c8:	00369593          	sll	a1,a3,0x3
     7cc:	8d95                	sub	a1,a1,a3
     7ce:	0586                	sll	a1,a1,0x1
     7d0:	05e2                	sll	a1,a1,0x18
     7d2:	85e1                	sra	a1,a1,0x18
     7d4:	4692                	lw	a3,4(sp)
     7d6:	40e68533          	sub	a0,a3,a4
     7da:	0ff57513          	zext.b	a0,a0
     7de:	46b5                	li	a3,13
     7e0:	02a6e263          	bltu	a3,a0,804 <Tiny_Flip+0x450>
     7e4:	00329313          	sll	t1,t0,0x3
     7e8:	6685                	lui	a3,0x1
     7ea:	40530333          	sub	t1,t1,t0
     7ee:	0306                	sll	t1,t1,0x1
     7f0:	63868693          	add	a3,a3,1592 # 1638 <Monsters>
     7f4:	969a                	add	a3,a3,t1
     7f6:	96aa                	add	a3,a3,a0
     7f8:	96ae                	add	a3,a3,a1
     7fa:	0006c483          	lbu	s1,0(a3)
     7fe:	bb41                	j	58e <Tiny_Flip+0x1da>
     800:	4581                	li	a1,0
     802:	bfc9                	j	7d4 <Tiny_Flip+0x420>
     804:	1549                	add	a0,a0,-14
     806:	0ff57513          	zext.b	a0,a0
     80a:	bfd9                	j	7e0 <Tiny_Flip+0x42c>
     80c:	e2b5                	bnez	a3,870 <Tiny_Flip+0x4bc>
     80e:	9522                	add	a0,a0,s0
     810:	00450283          	lb	t0,4(a0)
     814:	469d                	li	a3,7
     816:	0456c763          	blt	a3,t0,864 <Tiny_Flip+0x4b0>
     81a:	55fd                	li	a1,-1
     81c:	02c44683          	lbu	a3,44(s0)
     820:	d6b286e3          	beq	t0,a1,58c <Tiny_Flip+0x1d8>
     824:	00369593          	sll	a1,a3,0x3
     828:	8d95                	sub	a1,a1,a3
     82a:	0586                	sll	a1,a1,0x1
     82c:	05e2                	sll	a1,a1,0x18
     82e:	85e1                	sra	a1,a1,0x18
     830:	4692                	lw	a3,4(sp)
     832:	40e68533          	sub	a0,a3,a4
     836:	0ff57513          	zext.b	a0,a0
     83a:	46b5                	li	a3,13
     83c:	02a6e663          	bltu	a3,a0,868 <Tiny_Flip+0x4b4>
     840:	00329313          	sll	t1,t0,0x3
     844:	6685                	lui	a3,0x1
     846:	40530333          	sub	t1,t1,t0
     84a:	0306                	sll	t1,t1,0x1
     84c:	63868693          	add	a3,a3,1592 # 1638 <Monsters>
     850:	969a                	add	a3,a3,t1
     852:	96aa                	add	a3,a3,a0
     854:	96ae                	add	a3,a3,a1
     856:	0006c683          	lbu	a3,0(a3)
     85a:	009694b3          	sll	s1,a3,s1
     85e:	0ff4f493          	zext.b	s1,s1
     862:	b335                	j	58e <Tiny_Flip+0x1da>
     864:	4581                	li	a1,0
     866:	b7e9                	j	830 <Tiny_Flip+0x47c>
     868:	1549                	add	a0,a0,-14
     86a:	0ff57513          	zext.b	a0,a0
     86e:	b7f9                	j	83c <Tiny_Flip+0x488>
     870:	fff68313          	add	t1,a3,-1
     874:	00131593          	sll	a1,t1,0x1
     878:	959a                	add	a1,a1,t1
     87a:	0586                	sll	a1,a1,0x1
     87c:	95a2                	add	a1,a1,s0
     87e:	95aa                	add	a1,a1,a0
     880:	00458083          	lb	ra,4(a1)
     884:	459d                	li	a1,7
     886:	0a15ce63          	blt	a1,ra,942 <Tiny_Flip+0x58e>
     88a:	55fd                	li	a1,-1
     88c:	4301                	li	t1,0
     88e:	04b08763          	beq	ra,a1,8dc <Tiny_Flip+0x528>
     892:	02c44583          	lbu	a1,44(s0)
     896:	00359313          	sll	t1,a1,0x3
     89a:	40b30333          	sub	t1,t1,a1
     89e:	0306                	sll	t1,t1,0x1
     8a0:	0362                	sll	t1,t1,0x18
     8a2:	41835313          	sra	t1,t1,0x18
     8a6:	4612                	lw	a2,4(sp)
     8a8:	45b5                	li	a1,13
     8aa:	40e602b3          	sub	t0,a2,a4
     8ae:	0ff2f293          	zext.b	t0,t0
     8b2:	0855ea63          	bltu	a1,t0,946 <Tiny_Flip+0x592>
     8b6:	00309393          	sll	t2,ra,0x3
     8ba:	6585                	lui	a1,0x1
     8bc:	401383b3          	sub	t2,t2,ra
     8c0:	0386                	sll	t2,t2,0x1
     8c2:	63858593          	add	a1,a1,1592 # 1638 <Monsters>
     8c6:	959e                	add	a1,a1,t2
     8c8:	9596                	add	a1,a1,t0
     8ca:	959a                	add	a1,a1,t1
     8cc:	0005c303          	lbu	t1,0(a1)
     8d0:	45a1                	li	a1,8
     8d2:	8d85                	sub	a1,a1,s1
     8d4:	40b35333          	sra	t1,t1,a1
     8d8:	0ff37313          	zext.b	t1,t1
     8dc:	00169593          	sll	a1,a3,0x1
     8e0:	96ae                	add	a3,a3,a1
     8e2:	0686                	sll	a3,a3,0x1
     8e4:	96a2                	add	a3,a3,s0
     8e6:	96aa                	add	a3,a3,a0
     8e8:	00468383          	lb	t2,4(a3)
     8ec:	469d                	li	a3,7
     8ee:	0676c063          	blt	a3,t2,94e <Tiny_Flip+0x59a>
     8f2:	55fd                	li	a1,-1
     8f4:	4681                	li	a3,0
     8f6:	04b38363          	beq	t2,a1,93c <Tiny_Flip+0x588>
     8fa:	02c44683          	lbu	a3,44(s0)
     8fe:	00369593          	sll	a1,a3,0x3
     902:	8d95                	sub	a1,a1,a3
     904:	0586                	sll	a1,a1,0x1
     906:	05e2                	sll	a1,a1,0x18
     908:	85e1                	sra	a1,a1,0x18
     90a:	4692                	lw	a3,4(sp)
     90c:	40e68533          	sub	a0,a3,a4
     910:	0ff57513          	zext.b	a0,a0
     914:	46b5                	li	a3,13
     916:	02a6ee63          	bltu	a3,a0,952 <Tiny_Flip+0x59e>
     91a:	00339293          	sll	t0,t2,0x3
     91e:	6685                	lui	a3,0x1
     920:	407282b3          	sub	t0,t0,t2
     924:	0286                	sll	t0,t0,0x1
     926:	63868693          	add	a3,a3,1592 # 1638 <Monsters>
     92a:	9696                	add	a3,a3,t0
     92c:	96aa                	add	a3,a3,a0
     92e:	96ae                	add	a3,a3,a1
     930:	0006c683          	lbu	a3,0(a3)
     934:	009696b3          	sll	a3,a3,s1
     938:	0ff6f693          	zext.b	a3,a3
     93c:	00d364b3          	or	s1,t1,a3
     940:	b1b9                	j	58e <Tiny_Flip+0x1da>
     942:	4301                	li	t1,0
     944:	b78d                	j	8a6 <Tiny_Flip+0x4f2>
     946:	12c9                	add	t0,t0,-14
     948:	0ff2f293          	zext.b	t0,t0
     94c:	b79d                	j	8b2 <Tiny_Flip+0x4fe>
     94e:	4581                	li	a1,0
     950:	bf6d                	j	90a <Tiny_Flip+0x556>
     952:	1549                	add	a0,a0,-14
     954:	0ff57513          	zext.b	a0,a0
     958:	bf7d                	j	916 <Tiny_Flip+0x562>
     95a:	4501                	li	a0,0
     95c:	b96d                	j	616 <Tiny_Flip+0x262>
     95e:	4782                	lw	a5,0(sp)
     960:	c23a                	sw	a4,4(sp)
     962:	97ba                	add	a5,a5,a4
     964:	0007c503          	lbu	a0,0(a5)
     968:	f1aff0ef          	jal	82 <I2C_write>
     96c:	4782                	lw	a5,0(sp)
     96e:	4712                	lw	a4,4(sp)
     970:	0785                	add	a5,a5,1
     972:	c03e                	sw	a5,0(sp)
     974:	4602                	lw	a2,0(sp)
     976:	08000793          	li	a5,128
     97a:	a8f613e3          	bne	a2,a5,400 <Tiny_Flip+0x4c>
     97e:	47e2                	lw	a5,24(sp)
     980:	4742                	lw	a4,16(sp)
     982:	8fd9                	or	a5,a5,a4
     984:	ef81                	bnez	a5,99c <Tiny_Flip+0x5e8>
     986:	02940703          	lb	a4,41(s0)
     98a:	4799                	li	a5,6
     98c:	00f71863          	bne	a4,a5,99c <Tiny_Flip+0x5e8>
     990:	02a44583          	lbu	a1,42(s0)
     994:	8622                	mv	a2,s0
     996:	4501                	li	a0,0
     998:	84dff0ef          	jal	1e4 <ShieldDestroy.part.0>
     99c:	efeff0ef          	jal	9a <I2C_stop>
     9a0:	47a2                	lw	a5,8(sp)
     9a2:	0785                	add	a5,a5,1
     9a4:	c43e                	sw	a5,8(sp)
     9a6:	4722                	lw	a4,8(sp)
     9a8:	47a1                	li	a5,8
     9aa:	a2f711e3          	bne	a4,a5,3cc <Tiny_Flip+0x18>
     9ae:	47e2                	lw	a5,24(sp)
     9b0:	eb9d                	bnez	a5,9e6 <Tiny_Flip+0x632>
     9b2:	03044683          	lbu	a3,48(s0)
     9b6:	03444703          	lbu	a4,52(s0)
     9ba:	4795                	li	a5,5
     9bc:	8f95                	sub	a5,a5,a3
     9be:	02f74463          	blt	a4,a5,9e6 <Tiny_Flip+0x632>
     9c2:	4742                	lw	a4,16(sp)
     9c4:	4785                	li	a5,1
     9c6:	02f70063          	beq	a4,a5,9e6 <Tiny_Flip+0x632>
     9ca:	02040123          	sb	zero,34(s0)
     9ce:	020401a3          	sb	zero,35(s0)
     9d2:	02040223          	sb	zero,36(s0)
     9d6:	020402a3          	sb	zero,37(s0)
     9da:	02040323          	sb	zero,38(s0)
     9de:	020403a3          	sb	zero,39(s0)
     9e2:	80f18623          	sb	a5,-2036(gp) # 2000000c <ShieldRemoved>
     9e6:	50e2                	lw	ra,56(sp)
     9e8:	5452                	lw	s0,52(sp)
     9ea:	54c2                	lw	s1,48(sp)
     9ec:	03c10113          	add	sp,sp,60
     9f0:	8082                	ret

000009f2 <main>:
     9f2:	400117b7          	lui	a5,0x40011
     9f6:	4398                	lw	a4,0(a5)
     9f8:	76c5                	lui	a3,0xffff1
     9fa:	16fd                	add	a3,a3,-1 # ffff0fff <__global_pointer$+0xdfff07ff>
     9fc:	fa810113          	add	sp,sp,-88
     a00:	8f75                	and	a4,a4,a3
     a02:	66a1                	lui	a3,0x8
     a04:	ca86                	sw	ra,84(sp)
     a06:	c8a2                	sw	s0,80(sp)
     a08:	c6a6                	sw	s1,76(sp)
     a0a:	8f55                	or	a4,a4,a3
     a0c:	c398                	sw	a4,0(a5)
     a0e:	4721                	li	a4,8
     a10:	cb98                	sw	a4,16(a5)
     a12:	4398                	lw	a4,0(a5)
     a14:	f10006b7          	lui	a3,0xf1000
     a18:	16fd                	add	a3,a3,-1 # f0ffffff <__global_pointer$+0xd0fff7ff>
     a1a:	8f75                	and	a4,a4,a3
     a1c:	080006b7          	lui	a3,0x8000
     a20:	8f55                	or	a4,a4,a3
     a22:	c398                	sw	a4,0(a5)
     a24:	04000713          	li	a4,64
     a28:	cb98                	sw	a4,16(a5)
     a2a:	4398                	lw	a4,0(a5)
     a2c:	fff106b7          	lui	a3,0xfff10
     a30:	16fd                	add	a3,a3,-1 # fff0ffff <__global_pointer$+0xdff0f7ff>
     a32:	8f75                	and	a4,a4,a3
     a34:	000806b7          	lui	a3,0x80
     a38:	8f55                	or	a4,a4,a3
     a3a:	c398                	sw	a4,0(a5)
     a3c:	4741                	li	a4,16
     a3e:	cb98                	sw	a4,16(a5)
     a40:	4398                	lw	a4,0(a5)
     a42:	800006b7          	lui	a3,0x80000
     a46:	757d                	lui	a0,0xfffff
     a48:	0712                	sll	a4,a4,0x4
     a4a:	8311                	srl	a4,a4,0x4
     a4c:	8f55                	or	a4,a4,a3
     a4e:	c398                	sw	a4,0(a5)
     a50:	08000713          	li	a4,128
     a54:	cb98                	sw	a4,16(a5)
     a56:	80078713          	add	a4,a5,-2048 # 40010800 <__global_pointer$+0x20010000>
     a5a:	4314                	lw	a3,0(a4)
     a5c:	0ff50613          	add	a2,a0,255 # fffff0ff <__global_pointer$+0xdfffe8ff>
     a60:	6585                	lui	a1,0x1
     a62:	8ef1                	and	a3,a3,a2
     a64:	80058613          	add	a2,a1,-2048 # 800 <Tiny_Flip+0x44c>
     a68:	8ed1                	or	a3,a3,a2
     a6a:	c314                	sw	a3,0(a4)
     a6c:	4611                	li	a2,4
     a6e:	cb10                	sw	a2,16(a4)
     a70:	4394                	lw	a3,0(a5)
     a72:	4305                	li	t1,1
     a74:	002002b7          	lui	t0,0x200
     a78:	9ac1                	and	a3,a3,-16
     a7a:	0086e693          	or	a3,a3,8
     a7e:	c394                	sw	a3,0(a5)
     a80:	0067a823          	sw	t1,16(a5)
     a84:	4314                	lw	a3,0(a4)
     a86:	053d                	add	a0,a0,15
     a88:	dd058593          	add	a1,a1,-560
     a8c:	f0f6f693          	and	a3,a3,-241
     a90:	0106e693          	or	a3,a3,16
     a94:	c314                	sw	a3,0(a4)
     a96:	4689                	li	a3,2
     a98:	cb14                	sw	a3,16(a4)
     a9a:	40021737          	lui	a4,0x40021
     a9e:	4f14                	lw	a3,24(a4)
     aa0:	6489                	lui	s1,0x2
     aa2:	4401                	li	s0,0
     aa4:	0116e693          	or	a3,a3,17
     aa8:	cf14                	sw	a3,24(a4)
     aaa:	4f54                	lw	a3,28(a4)
     aac:	ae048493          	add	s1,s1,-1312 # 1ae0 <OLED_INIT_CMD>
     ab0:	0056e6b3          	or	a3,a3,t0
     ab4:	cf54                	sw	a3,28(a4)
     ab6:	4398                	lw	a4,0(a5)
     ab8:	8f69                	and	a4,a4,a0
     aba:	8f4d                	or	a4,a4,a1
     abc:	c398                	sw	a4,0(a5)
     abe:	40005737          	lui	a4,0x40005
     ac2:	77e1                	lui	a5,0xffff8
     ac4:	40c71223          	sh	a2,1028(a4) # 40005404 <__global_pointer$+0x20004c04>
     ac8:	07a9                	add	a5,a5,10 # ffff800a <__global_pointer$+0xdfff780a>
     aca:	40f71e23          	sh	a5,1052(a4)
     ace:	40671023          	sh	t1,1024(a4)
     ad2:	88dff0ef          	jal	35e <I2C_start.constprop.0>
     ad6:	4501                	li	a0,0
     ad8:	daaff0ef          	jal	82 <I2C_write>
     adc:	009407b3          	add	a5,s0,s1
     ae0:	0007c503          	lbu	a0,0(a5)
     ae4:	0405                	add	s0,s0,1
     ae6:	d9cff0ef          	jal	82 <I2C_write>
     aea:	47c5                	li	a5,17
     aec:	fef418e3          	bne	s0,a5,adc <main+0xea>
     af0:	daaff0ef          	jal	9a <I2C_stop>
     af4:	40021737          	lui	a4,0x40021
     af8:	4f1c                	lw	a5,24(a4)
     afa:	40012437          	lui	s0,0x40012
     afe:	40040413          	add	s0,s0,1024 # 40012400 <__global_pointer$+0x20011c00>
     b02:	2017e793          	or	a5,a5,513
     b06:	cf1c                	sw	a5,24(a4)
     b08:	000e07b7          	lui	a5,0xe0
     b0c:	0785                	add	a5,a5,1 # e0001 <system.c.b7fad625+0xddd6e>
     b0e:	c41c                	sw	a5,8(s0)
     b10:	07800513          	li	a0,120
     b14:	fb0ff0ef          	jal	2c4 <DLY_ticks>
     b18:	441c                	lw	a5,8(s0)
     b1a:	400126b7          	lui	a3,0x40012
     b1e:	0087e793          	or	a5,a5,8
     b22:	c41c                	sw	a5,8(s0)
     b24:	40068793          	add	a5,a3,1024 # 40012400 <__global_pointer$+0x20011c00>
     b28:	4798                	lw	a4,8(a5)
     b2a:	8b21                	and	a4,a4,8
     b2c:	ff65                	bnez	a4,b24 <main+0x132>
     b2e:	4798                	lw	a4,8(a5)
     b30:	00476713          	or	a4,a4,4
     b34:	c798                	sw	a4,8(a5)
     b36:	40012737          	lui	a4,0x40012
     b3a:	40070793          	add	a5,a4,1024 # 40012400 <__global_pointer$+0x20011c00>
     b3e:	479c                	lw	a5,8(a5)
     b40:	8b91                	and	a5,a5,4
     b42:	ffe5                	bnez	a5,b3a <main+0x148>
     b44:	4789                	li	a5,2
     b46:	c23e                	sw	a5,4(sp)
     b48:	470d                	li	a4,3
     b4a:	80e188a3          	sb	a4,-2031(gp) # 20000011 <Live>
     b4e:	084c                	add	a1,sp,20
     b50:	4505                	li	a0,1
     b52:	80018823          	sb	zero,-2032(gp) # 20000010 <LEVELS>
     b56:	85fff0ef          	jal	3b4 <Tiny_Flip>
     b5a:	40011737          	lui	a4,0x40011
     b5e:	80070793          	add	a5,a4,-2048 # 40010800 <__global_pointer$+0x20010000>
     b62:	479c                	lw	a5,8(a5)
     b64:	8b91                	and	a5,a5,4
     b66:	c781                	beqz	a5,b6e <main+0x17c>
     b68:	471c                	lw	a5,8(a4)
     b6a:	8b85                	and	a5,a5,1
     b6c:	fbed                	bnez	a5,b5e <main+0x16c>
     b6e:	07d00593          	li	a1,125
     b72:	06400513          	li	a0,100
     b76:	f64ff0ef          	jal	2da <JOY_sound>
     b7a:	07d00593          	li	a1,125
     b7e:	03200513          	li	a0,50
     b82:	f58ff0ef          	jal	2da <JOY_sound>
     b86:	80018623          	sb	zero,-2036(gp) # 2000000c <ShieldRemoved>
     b8a:	4761                	li	a4,24
     b8c:	800186a3          	sb	zero,-2035(gp) # 2000000d <SpeedShootMonster>
     b90:	80e18723          	sb	a4,-2034(gp) # 2000000e <MONSTERrest>
     b94:	8101c783          	lbu	a5,-2032(gp) # 20000010 <LEVELS>
     b98:	6609                	lui	a2,0x2
     b9a:	af460613          	add	a2,a2,-1292 # 1af4 <MonstersLevels>
     b9e:	c43e                	sw	a5,8(sp)
     ba0:	00810703          	lb	a4,8(sp)
     ba4:	547d                	li	s0,-1
     ba6:	c032                	sw	a2,0(sp)
     ba8:	00171793          	sll	a5,a4,0x1
     bac:	97ba                	add	a5,a5,a4
     bae:	078e                	sll	a5,a5,0x3
     bb0:	86be                	mv	a3,a5
     bb2:	4701                	li	a4,0
     bb4:	4502                	lw	a0,0(sp)
     bb6:	084c                	add	a1,sp,20
     bb8:	4601                	li	a2,0
     bba:	4091                	li	ra,4
     bbc:	40f683b3          	sub	t2,a3,a5
     bc0:	00a682b3          	add	t0,a3,a0
     bc4:	4319                	li	t1,6
     bc6:	12170863          	beq	a4,ra,cf6 <main+0x304>
     bca:	00c284b3          	add	s1,t0,a2
     bce:	0004c483          	lbu	s1,0(s1)
     bd2:	00758533          	add	a0,a1,t2
     bd6:	00950223          	sb	s1,4(a0)
     bda:	0605                	add	a2,a2,1
     bdc:	0585                	add	a1,a1,1
     bde:	fe6614e3          	bne	a2,t1,bc6 <main+0x1d4>
     be2:	0705                	add	a4,a4,1
     be4:	0ff77713          	zext.b	a4,a4
     be8:	4615                	li	a2,5
     bea:	0699                	add	a3,a3,6
     bec:	fcc714e3          	bne	a4,a2,bb4 <main+0x1c2>
     bf0:	57fd                	li	a5,-1
     bf2:	02f11b23          	sh	a5,54(sp)
     bf6:	dc3e                	sw	a5,56(sp)
     bf8:	02f10ea3          	sb	a5,61(sp)
     bfc:	142c07b7          	lui	a5,0x142c0
     c00:	078d                	add	a5,a5,3 # 142c0003 <system.c.b7fad625+0x142bdd70>
     c02:	c2be                	sw	a5,68(sp)
     c04:	47a2                	lw	a5,8(sp)
     c06:	0848                	add	a0,sp,20
     c08:	02011f23          	sh	zero,62(sp)
     c0c:	0047b793          	sltiu	a5,a5,4
     c10:	0017c793          	xor	a5,a5,1
     c14:	04f10423          	sb	a5,72(sp)
     c18:	10800793          	li	a5,264
     c1c:	04f11523          	sh	a5,74(sp)
     c20:	101007b7          	lui	a5,0x10100
     c24:	08878793          	add	a5,a5,136 # 10100088 <system.c.b7fad625+0x100fddf5>
     c28:	ca3e                	sw	a5,20(sp)
     c2a:	c082                	sw	zero,64(sp)
     c2c:	040104a3          	sb	zero,73(sp)
     c30:	c88ff0ef          	jal	b8 <SpeedControle>
     c34:	03800793          	li	a5,56
     c38:	20000737          	lui	a4,0x20000
     c3c:	00f70123          	sb	a5,2(a4) # 20000002 <ShipPos>
     c40:	02f10e23          	sb	a5,60(sp)
     c44:	03600793          	li	a5,54
     c48:	c03e                	sw	a5,0(sp)
     c4a:	084c                	add	a1,sp,20
     c4c:	4501                	li	a0,0
     c4e:	800187a3          	sb	zero,-2033(gp) # 2000000f <ShipDead>
     c52:	f62ff0ef          	jal	3b4 <Tiny_Flip>
     c56:	00b72537          	lui	a0,0xb72
     c5a:	b0050513          	add	a0,a0,-1280 # b71b00 <system.c.b7fad625+0xb6f86d>
     c5e:	e66ff0ef          	jal	2c4 <DLY_ticks>
     c62:	c602                	sw	zero,12(sp)
     c64:	80e1c783          	lbu	a5,-2034(gp) # 2000000e <MONSTERrest>
     c68:	ebd1                	bnez	a5,cfc <main+0x30a>
     c6a:	0ff00593          	li	a1,255
     c6e:	06e00513          	li	a0,110
     c72:	e68ff0ef          	jal	2da <JOY_sound>
     c76:	00075437          	lui	s0,0x75
     c7a:	30040513          	add	a0,s0,768 # 75300 <system.c.b7fad625+0x7306d>
     c7e:	e46ff0ef          	jal	2c4 <DLY_ticks>
     c82:	0ff00593          	li	a1,255
     c86:	08200513          	li	a0,130
     c8a:	e50ff0ef          	jal	2da <JOY_sound>
     c8e:	30040513          	add	a0,s0,768
     c92:	e32ff0ef          	jal	2c4 <DLY_ticks>
     c96:	0ff00593          	li	a1,255
     c9a:	06400513          	li	a0,100
     c9e:	e3cff0ef          	jal	2da <JOY_sound>
     ca2:	30040513          	add	a0,s0,768
     ca6:	e1eff0ef          	jal	2c4 <DLY_ticks>
     caa:	09b00593          	li	a1,155
     cae:	4505                	li	a0,1
     cb0:	e2aff0ef          	jal	2da <JOY_sound>
     cb4:	0003b537          	lui	a0,0x3b
     cb8:	98050513          	add	a0,a0,-1664 # 3a980 <system.c.b7fad625+0x386ed>
     cbc:	e08ff0ef          	jal	2c4 <DLY_ticks>
     cc0:	0ff00593          	li	a1,255
     cc4:	03c00513          	li	a0,60
     cc8:	e12ff0ef          	jal	2da <JOY_sound>
     ccc:	0ff00593          	li	a1,255
     cd0:	03c00513          	li	a0,60
     cd4:	e06ff0ef          	jal	2da <JOY_sound>
     cd8:	4722                	lw	a4,8(sp)
     cda:	47a1                	li	a5,8
     cdc:	00e7e663          	bltu	a5,a4,ce8 <main+0x2f6>
     ce0:	00170793          	add	a5,a4,1
     ce4:	80f18823          	sb	a5,-2032(gp) # 20000010 <LEVELS>
     ce8:	00b72537          	lui	a0,0xb72
     cec:	b0050513          	add	a0,a0,-1280 # b71b00 <system.c.b7fad625+0xb6f86d>
     cf0:	dd4ff0ef          	jal	2c4 <DLY_ticks>
     cf4:	bd49                	j	b86 <main+0x194>
     cf6:	00858e23          	sb	s0,28(a1)
     cfa:	b5c5                	j	bda <main+0x1e8>
     cfc:	04414783          	lbu	a5,68(sp)
     d00:	04814403          	lbu	s0,72(sp)
     d04:	471d                	li	a4,7
     d06:	0785                	add	a5,a5,1
     d08:	97a2                	add	a5,a5,s0
     d0a:	00e79763          	bne	a5,a4,d18 <main+0x326>
     d0e:	47b2                	lw	a5,12(sp)
     d10:	e781                	bnez	a5,d18 <main+0x326>
     d12:	4785                	li	a5,1
     d14:	80f187a3          	sb	a5,-2033(gp) # 2000000f <ShipDead>
     d18:	4622                	lw	a2,8(sp)
     d1a:	80d1c783          	lbu	a5,-2035(gp) # 2000000d <SpeedShootMonster>
     d1e:	46a5                	li	a3,9
     d20:	8e91                	sub	a3,a3,a2
     d22:	0af6c363          	blt	a3,a5,dc8 <main+0x3d6>
     d26:	0785                	add	a5,a5,1
     d28:	80f186a3          	sb	a5,-2035(gp) # 2000000d <SpeedShootMonster>
     d2c:	200007b7          	lui	a5,0x20000
     d30:	0027c483          	lbu	s1,2(a5) # 20000002 <ShipPos>
     d34:	45b9                	li	a1,14
     d36:	8526                	mv	a0,s1
     d38:	ad4ff0ef          	jal	c <__hidden___udivsi3>
     d3c:	03450513          	add	a0,a0,52
     d40:	02a10e23          	sb	a0,60(sp)
     d44:	084c                	add	a1,sp,20
     d46:	4501                	li	a0,0
     d48:	e6cff0ef          	jal	3b4 <Tiny_Flip>
     d4c:	01514783          	lbu	a5,21(sp)
     d50:	106c                	add	a1,sp,44
     d52:	0854                	add	a3,sp,20
     d54:	0017b793          	seqz	a5,a5
     d58:	00f10aa3          	sb	a5,21(sp)
     d5c:	4529                	li	a0,10
     d5e:	53fd                	li	t2,-1
     d60:	431d                	li	t1,7
     d62:	4299                	li	t0,6
     d64:	8736                	mv	a4,a3
     d66:	4781                	li	a5,0
     d68:	00470603          	lb	a2,4(a4)
     d6c:	00c55463          	bge	a0,a2,d74 <main+0x382>
     d70:	00770223          	sb	t2,4(a4)
     d74:	00470603          	lb	a2,4(a4)
     d78:	00c35563          	bge	t1,a2,d82 <main+0x390>
     d7c:	0605                	add	a2,a2,1
     d7e:	00c70223          	sb	a2,4(a4)
     d82:	0785                	add	a5,a5,1
     d84:	0ff7f793          	zext.b	a5,a5
     d88:	0705                	add	a4,a4,1
     d8a:	fc579fe3          	bne	a5,t0,d68 <main+0x376>
     d8e:	0699                	add	a3,a3,6
     d90:	fcd59ae3          	bne	a1,a3,d64 <main+0x372>
     d94:	01714403          	lbu	s0,23(sp)
     d98:	46c1                	li	a3,16
     d9a:	0ed40363          	beq	s0,a3,e80 <main+0x48e>
     d9e:	ff240713          	add	a4,s0,-14
     da2:	0ff77713          	zext.b	a4,a4
     da6:	4605                	li	a2,1
     da8:	01614583          	lbu	a1,22(sp)
     dac:	0ae66e63          	bltu	a2,a4,e68 <main+0x476>
     db0:	0095e863          	bltu	a1,s1,dc0 <main+0x3ce>
     db4:	00e48793          	add	a5,s1,14
     db8:	00b7c463          	blt	a5,a1,dc0 <main+0x3ce>
     dbc:	80c187a3          	sb	a2,-2033(gp) # 2000000f <ShipDead>
     dc0:	0405                	add	s0,s0,1
     dc2:	00810ba3          	sb	s0,23(sp)
     dc6:	a86d                	j	e80 <main+0x48e>
     dc8:	800186a3          	sb	zero,-2035(gp) # 2000000d <SpeedShootMonster>
     dcc:	20000737          	lui	a4,0x20000
     dd0:	00075603          	lhu	a2,0(a4) # 20000000 <rnval>
     dd4:	76ed                	lui	a3,0xffffb
     dd6:	40068693          	add	a3,a3,1024 # ffffb400 <__global_pointer$+0xdfffac00>
     dda:	00167793          	and	a5,a2,1
     dde:	40f007b3          	neg	a5,a5
     de2:	8ff5                	and	a5,a5,a3
     de4:	8205                	srl	a2,a2,0x1
     de6:	8fb1                	xor	a5,a5,a2
     de8:	01079493          	sll	s1,a5,0x10
     dec:	0017f513          	and	a0,a5,1
     df0:	80c1                	srl	s1,s1,0x10
     df2:	40a00533          	neg	a0,a0
     df6:	8d75                	and	a0,a0,a3
     df8:	0014d793          	srl	a5,s1,0x1
     dfc:	8d3d                	xor	a0,a0,a5
     dfe:	0542                	sll	a0,a0,0x10
     e00:	8141                	srl	a0,a0,0x10
     e02:	4599                	li	a1,6
     e04:	00a71023          	sh	a0,0(a4)
     e08:	a30ff0ef          	jal	38 <__umodsi3>
     e0c:	01714683          	lbu	a3,23(sp)
     e10:	47c1                	li	a5,16
     e12:	0ff57713          	zext.b	a4,a0
     e16:	f0f69be3          	bne	a3,a5,d2c <main+0x33a>
     e1a:	458d                	li	a1,3
     e1c:	8526                	mv	a0,s1
     e1e:	c83a                	sw	a4,16(sp)
     e20:	a18ff0ef          	jal	38 <__umodsi3>
     e24:	0542                	sll	a0,a0,0x10
     e26:	8141                	srl	a0,a0,0x10
     e28:	00151793          	sll	a5,a0,0x1
     e2c:	97aa                	add	a5,a5,a0
     e2e:	0786                	sll	a5,a5,0x1
     e30:	0858                	add	a4,sp,20
     e32:	03878793          	add	a5,a5,56
     e36:	97ba                	add	a5,a5,a4
     e38:	4742                	lw	a4,16(sp)
     e3a:	97ba                	add	a5,a5,a4
     e3c:	fcc78683          	lb	a3,-52(a5)
     e40:	57fd                	li	a5,-1
     e42:	eef685e3          	beq	a3,a5,d2c <main+0x33a>
     e46:	04714783          	lbu	a5,71(sp)
     e4a:	00371693          	sll	a3,a4,0x3
     e4e:	40e68733          	sub	a4,a3,a4
     e52:	942a                	add	s0,s0,a0
     e54:	079d                	add	a5,a5,7
     e56:	0706                	sll	a4,a4,0x1
     e58:	0406                	sll	s0,s0,0x1
     e5a:	97ba                	add	a5,a5,a4
     e5c:	0405                	add	s0,s0,1
     e5e:	00f10b23          	sb	a5,22(sp)
     e62:	00810ba3          	sb	s0,23(sp)
     e66:	b5d9                	j	d2c <main+0x33a>
     e68:	00145713          	srl	a4,s0,0x1
     e6c:	f4f71ae3          	bne	a4,a5,dc0 <main+0x3ce>
     e70:	0850                	add	a2,sp,20
     e72:	4505                	li	a0,1
     e74:	b70ff0ef          	jal	1e4 <ShieldDestroy.part.0>
     e78:	d521                	beqz	a0,dc0 <main+0x3ce>
     e7a:	46c1                	li	a3,16
     e7c:	00d10ba3          	sb	a3,23(sp)
     e80:	01410403          	lb	s0,20(sp)
     e84:	f8800793          	li	a5,-120
     e88:	02f40263          	beq	s0,a5,eac <main+0x4ba>
     e8c:	1479                	add	s0,s0,-2
     e8e:	0462                	sll	s0,s0,0x18
     e90:	8461                	sra	s0,s0,0x18
     e92:	4581                	li	a1,0
     e94:	8522                	mv	a0,s0
     e96:	00810a23          	sb	s0,20(sp)
     e9a:	c9eff0ef          	jal	338 <SnD>
     e9e:	5735                	li	a4,-19
     ea0:	00e45663          	bge	s0,a4,eac <main+0x4ba>
     ea4:	f8800793          	li	a5,-120
     ea8:	00f10a23          	sb	a5,20(sp)
     eac:	04714403          	lbu	s0,71(sp)
     eb0:	4709                	li	a4,2
     eb2:	fe640793          	add	a5,s0,-26
     eb6:	0ff7f793          	zext.b	a5,a5
     eba:	00f76f63          	bltu	a4,a5,ed8 <main+0x4e6>
     ebe:	04814783          	lbu	a5,72(sp)
     ec2:	00e79b63          	bne	a5,a4,ed8 <main+0x4e6>
     ec6:	04914703          	lbu	a4,73(sp)
     eca:	4791                	li	a5,4
     ecc:	00f71663          	bne	a4,a5,ed8 <main+0x4e6>
     ed0:	07f00793          	li	a5,127
     ed4:	00f10a23          	sb	a5,20(sp)
     ed8:	4702                	lw	a4,0(sp)
     eda:	00248793          	add	a5,s1,2
     ede:	00e7dc63          	bge	a5,a4,ef6 <main+0x504>
     ee2:	40970533          	sub	a0,a4,s1
     ee6:	458d                	li	a1,3
     ee8:	91cff0ef          	jal	4 <__divsi3>
     eec:	94aa                	add	s1,s1,a0
     eee:	200007b7          	lui	a5,0x20000
     ef2:	00978123          	sb	s1,2(a5) # 20000002 <ShipPos>
     ef6:	200007b7          	lui	a5,0x20000
     efa:	0027c483          	lbu	s1,2(a5) # 20000002 <ShipPos>
     efe:	4702                	lw	a4,0(sp)
     f00:	ffe48793          	add	a5,s1,-2
     f04:	00f75c63          	bge	a4,a5,f1c <main+0x52a>
     f08:	40e48533          	sub	a0,s1,a4
     f0c:	55f5                	li	a1,-3
     f0e:	8f6ff0ef          	jal	4 <__divsi3>
     f12:	94aa                	add	s1,s1,a0
     f14:	200007b7          	lui	a5,0x20000
     f18:	00978123          	sb	s1,2(a5) # 20000002 <ShipPos>
     f1c:	80f1c703          	lbu	a4,-2033(gp) # 2000000f <ShipDead>
     f20:	4785                	li	a5,1
     f22:	1af70563          	beq	a4,a5,10cc <main+0x6da>
     f26:	04114783          	lbu	a5,65(sp)
     f2a:	04a14703          	lbu	a4,74(sp)
     f2e:	06e7fb63          	bgeu	a5,a4,fa4 <main+0x5b2>
     f32:	0785                	add	a5,a5,1
     f34:	0ff7f793          	zext.b	a5,a5
     f38:	04f100a3          	sb	a5,65(sp)
     f3c:	40011737          	lui	a4,0x40011
     f40:	471c                	lw	a5,8(a4)
     f42:	8bc1                	and	a5,a5,16
     f44:	16079263          	bnez	a5,10a8 <main+0x6b6>
     f48:	4682                	lw	a3,0(sp)
     f4a:	4795                	li	a5,5
     f4c:	14d7e963          	bltu	a5,a3,109e <main+0x6ac>
     f50:	471c                	lw	a5,8(a4)
     f52:	0807f793          	and	a5,a5,128
     f56:	16078563          	beqz	a5,10c0 <main+0x6ce>
     f5a:	40011737          	lui	a4,0x40011
     f5e:	80070793          	add	a5,a4,-2048 # 40010800 <__global_pointer$+0x20010000>
     f62:	479c                	lw	a5,8(a5)
     f64:	8b91                	and	a5,a5,4
     f66:	c789                	beqz	a5,f70 <main+0x57e>
     f68:	471c                	lw	a5,8(a4)
     f6a:	8b85                	and	a5,a5,1
     f6c:	1c079563          	bnez	a5,1136 <main+0x744>
     f70:	4712                	lw	a4,4(sp)
     f72:	4789                	li	a5,2
     f74:	1af71663          	bne	a4,a5,1120 <main+0x72e>
     f78:	4591                	li	a1,4
     f7a:	0c800513          	li	a0,200
     f7e:	b5cff0ef          	jal	2da <JOY_sound>
     f82:	4799                	li	a5,6
     f84:	02f10ea3          	sb	a5,61(sp)
     f88:	200007b7          	lui	a5,0x20000
     f8c:	0027c783          	lbu	a5,2(a5) # 20000002 <ShipPos>
     f90:	c202                	sw	zero,4(sp)
     f92:	0799                	add	a5,a5,6
     f94:	02f10f23          	sb	a5,62(sp)
     f98:	6575                	lui	a0,0x1d
     f9a:	4c050513          	add	a0,a0,1216 # 1d4c0 <system.c.b7fad625+0x1b22d>
     f9e:	b26ff0ef          	jal	2c4 <DLY_ticks>
     fa2:	b1c9                	j	c64 <main+0x272>
     fa4:	478d                	li	a5,3
     fa6:	04f10223          	sb	a5,68(sp)
     faa:	0850                	add	a2,sp,20
     fac:	4501                	li	a0,0
     fae:	478d                	li	a5,3
     fb0:	55fd                	li	a1,-1
     fb2:	4319                	li	t1,6
     fb4:	0ff00293          	li	t0,255
     fb8:	86b2                	mv	a3,a2
     fba:	4701                	li	a4,0
     fbc:	01668383          	lb	t2,22(a3)
     fc0:	04b38163          	beq	t2,a1,1002 <main+0x610>
     fc4:	c119                	beqz	a0,fca <main+0x5d8>
     fc6:	04f10223          	sb	a5,68(sp)
     fca:	04014783          	lbu	a5,64(sp)
     fce:	01410503          	lb	a0,20(sp)
     fd2:	0c800593          	li	a1,200
     fd6:	0017b713          	seqz	a4,a5
     fda:	04e10023          	sb	a4,64(sp)
     fde:	e399                	bnez	a5,fe4 <main+0x5f2>
     fe0:	06400593          	li	a1,100
     fe4:	b54ff0ef          	jal	338 <SnD>
     fe8:	04b14703          	lbu	a4,75(sp)
     fec:	4785                	li	a5,1
     fee:	06f71663          	bne	a4,a5,105a <main+0x668>
     ff2:	04614783          	lbu	a5,70(sp)
     ff6:	02f47663          	bgeu	s0,a5,1022 <main+0x630>
     ffa:	0409                	add	s0,s0,2
     ffc:	048103a3          	sb	s0,71(sp)
    1000:	a0a1                	j	1048 <main+0x656>
    1002:	0705                	add	a4,a4,1
    1004:	0ff77713          	zext.b	a4,a4
    1008:	0685                	add	a3,a3,1
    100a:	fa6719e3          	bne	a4,t1,fbc <main+0x5ca>
    100e:	17fd                	add	a5,a5,-1
    1010:	0ff7f793          	zext.b	a5,a5
    1014:	1669                	add	a2,a2,-6
    1016:	4505                	li	a0,1
    1018:	fa5790e3          	bne	a5,t0,fb8 <main+0x5c6>
    101c:	04b10223          	sb	a1,68(sp)
    1020:	b76d                	j	fca <main+0x5d8>
    1022:	04914783          	lbu	a5,73(sp)
    1026:	4719                	li	a4,6
    1028:	02f76263          	bltu	a4,a5,104c <main+0x65a>
    102c:	0791                	add	a5,a5,4
    102e:	873e                	mv	a4,a5
    1030:	469d                	li	a3,7
    1032:	0ff7f793          	zext.b	a5,a5
    1036:	00f6f363          	bgeu	a3,a5,103c <main+0x64a>
    103a:	471d                	li	a4,7
    103c:	0ff77793          	zext.b	a5,a4
    1040:	04f104a3          	sb	a5,73(sp)
    1044:	040105a3          	sb	zero,75(sp)
    1048:	4781                	li	a5,0
    104a:	b5fd                	j	f38 <main+0x546>
    104c:	04814783          	lbu	a5,72(sp)
    1050:	0785                	add	a5,a5,1
    1052:	04f10423          	sb	a5,72(sp)
    1056:	4781                	li	a5,0
    1058:	b7e5                	j	1040 <main+0x64e>
    105a:	04514783          	lbu	a5,69(sp)
    105e:	0087f463          	bgeu	a5,s0,1066 <main+0x674>
    1062:	1479                	add	s0,s0,-2
    1064:	bf61                	j	ffc <main+0x60a>
    1066:	04914783          	lbu	a5,73(sp)
    106a:	4719                	li	a4,6
    106c:	02f76263          	bltu	a4,a5,1090 <main+0x69e>
    1070:	0791                	add	a5,a5,4
    1072:	873e                	mv	a4,a5
    1074:	469d                	li	a3,7
    1076:	0ff7f793          	zext.b	a5,a5
    107a:	00f6f363          	bgeu	a3,a5,1080 <main+0x68e>
    107e:	471d                	li	a4,7
    1080:	0ff77793          	zext.b	a5,a4
    1084:	04f104a3          	sb	a5,73(sp)
    1088:	4785                	li	a5,1
    108a:	04f105a3          	sb	a5,75(sp)
    108e:	bf6d                	j	1048 <main+0x656>
    1090:	04814783          	lbu	a5,72(sp)
    1094:	0785                	add	a5,a5,1
    1096:	04f10423          	sb	a5,72(sp)
    109a:	4781                	li	a5,0
    109c:	b7e5                	j	1084 <main+0x692>
    109e:	4782                	lw	a5,0(sp)
    10a0:	17e9                	add	a5,a5,-6
    10a2:	0ff7f793          	zext.b	a5,a5
    10a6:	c03e                	sw	a5,0(sp)
    10a8:	400117b7          	lui	a5,0x40011
    10ac:	479c                	lw	a5,8(a5)
    10ae:	0807f793          	and	a5,a5,128
    10b2:	ea0794e3          	bnez	a5,f5a <main+0x568>
    10b6:	4702                	lw	a4,0(sp)
    10b8:	06b00793          	li	a5,107
    10bc:	e8e7efe3          	bltu	a5,a4,f5a <main+0x568>
    10c0:	4782                	lw	a5,0(sp)
    10c2:	0799                	add	a5,a5,6 # 40011006 <__global_pointer$+0x20010806>
    10c4:	0ff7f793          	zext.b	a5,a5
    10c8:	c03e                	sw	a5,0(sp)
    10ca:	bd41                	j	f5a <main+0x568>
    10cc:	4585                	li	a1,1
    10ce:	05000513          	li	a0,80
    10d2:	a08ff0ef          	jal	2da <JOY_sound>
    10d6:	4585                	li	a1,1
    10d8:	06400513          	li	a0,100
    10dc:	9feff0ef          	jal	2da <JOY_sound>
    10e0:	47b2                	lw	a5,12(sp)
    10e2:	0785                	add	a5,a5,1
    10e4:	0ff7f793          	zext.b	a5,a5
    10e8:	c63e                	sw	a5,12(sp)
    10ea:	4732                	lw	a4,12(sp)
    10ec:	47f5                	li	a5,29
    10ee:	04e7f463          	bgeu	a5,a4,1136 <main+0x744>
    10f2:	006de537          	lui	a0,0x6de
    10f6:	d0050513          	add	a0,a0,-768 # 6ddd00 <system.c.b7fad625+0x6dba6d>
    10fa:	9caff0ef          	jal	2c4 <DLY_ticks>
    10fe:	04414783          	lbu	a5,68(sp)
    1102:	04814703          	lbu	a4,72(sp)
    1106:	0785                	add	a5,a5,1
    1108:	97ba                	add	a5,a5,a4
    110a:	471d                	li	a4,7
    110c:	a2e78ee3          	beq	a5,a4,b48 <main+0x156>
    1110:	8111c783          	lbu	a5,-2031(gp) # 20000011 <Live>
    1114:	a2078ae3          	beqz	a5,b48 <main+0x156>
    1118:	17fd                	add	a5,a5,-1
    111a:	80f188a3          	sb	a5,-2031(gp) # 20000011 <Live>
    111e:	b635                	j	c4a <main+0x258>
    1120:	03d10703          	lb	a4,61(sp)
    1124:	57fd                	li	a5,-1
    1126:	e6f719e3          	bne	a4,a5,f98 <main+0x5a6>
    112a:	4792                	lw	a5,4(sp)
    112c:	0785                	add	a5,a5,1
    112e:	0ff7f793          	zext.b	a5,a5
    1132:	c23e                	sw	a5,4(sp)
    1134:	b595                	j	f98 <main+0x5a6>
    1136:	03d10703          	lb	a4,61(sp)
    113a:	57fd                	li	a5,-1
    113c:	e4f71ee3          	bne	a4,a5,f98 <main+0x5a6>
    1140:	4712                	lw	a4,4(sp)
    1142:	4789                	li	a5,2
    1144:	e4f70ae3          	beq	a4,a5,f98 <main+0x5a6>
    1148:	b7cd                	j	112a <main+0x738>

0000114a <reset_handler>:
    114a:	6785                	lui	a5,0x1
    114c:	9f278793          	add	a5,a5,-1550 # 9f2 <main>
    1150:	1ffff197          	auipc	gp,0x1ffff
    1154:	6b018193          	add	gp,gp,1712 # 20000800 <__global_pointer$>
    1158:	00018113          	mv	sp,gp
    115c:	08800513          	li	a0,136
    1160:	30051073          	csrw	mstatus,a0
    1164:	458d                	li	a1,3
    1166:	80459073          	csrw	0x804,a1
    116a:	fffff517          	auipc	a0,0xfffff
    116e:	e9650513          	add	a0,a0,-362 # 0 <jump_reset>
    1172:	8d4d                	or	a0,a0,a1
    1174:	30551073          	csrw	mtvec,a0
    1178:	34179073          	csrw	mepc,a5
    117c:	6709                	lui	a4,0x2
    117e:	200007b7          	lui	a5,0x20000
    1182:	be470713          	add	a4,a4,-1052 # 1be4 <_data_lma>
    1186:	00078793          	mv	a5,a5
    118a:	80c18693          	add	a3,gp,-2036 # 2000000c <ShieldRemoved>
    118e:	02d7e663          	bltu	a5,a3,11ba <i2c_tx.c.57351142+0x65>
    1192:	80c18793          	add	a5,gp,-2036 # 2000000c <ShieldRemoved>
    1196:	81418713          	add	a4,gp,-2028 # 20000014 <_ebss>
    119a:	02e7e563          	bltu	a5,a4,11c4 <i2c_tx.c.57351142+0x6f>
    119e:	400217b7          	lui	a5,0x40021
    11a2:	4741                	li	a4,16
    11a4:	c3d8                	sw	a4,4(a5)
    11a6:	4695                	li	a3,5
    11a8:	e000f737          	lui	a4,0xe000f
    11ac:	c314                	sw	a3,0(a4)
    11ae:	4f98                	lw	a4,24(a5)
    11b0:	03476713          	or	a4,a4,52
    11b4:	cf98                	sw	a4,24(a5)
    11b6:	30200073          	mret
    11ba:	4310                	lw	a2,0(a4)
    11bc:	0711                	add	a4,a4,4 # e000f004 <__global_pointer$+0xc000e804>
    11be:	c390                	sw	a2,0(a5)
    11c0:	0791                	add	a5,a5,4 # 40021004 <__global_pointer$+0x20020804>
    11c2:	b7f1                	j	118e <i2c_tx.c.57351142+0x39>
    11c4:	0007a023          	sw	zero,0(a5)
    11c8:	0791                	add	a5,a5,4
    11ca:	bfc1                	j	119a <i2c_tx.c.57351142+0x45>
    11cc:	0128                	add	a0,sp,136
    11ce:	0000                	unimp
    11d0:	013e                	sll	sp,sp,0xf
    11d2:	0000                	unimp
    11d4:	014e                	sll	sp,sp,0x13
    11d6:	0000                	unimp
    11d8:	015c                	add	a5,sp,132
    11da:	0000                	unimp
    11dc:	016a                	sll	sp,sp,0x1a
    11de:	0000                	unimp
    11e0:	0178                	add	a4,sp,140
    11e2:	0000                	unimp
    11e4:	0186                	sll	gp,gp,0x1
    11e6:	0000                	unimp
    11e8:	0194                	add	a3,sp,192
    11ea:	0000                	unimp
    11ec:	01b8                	add	a4,sp,200
    11ee:	0000                	unimp
    11f0:	01c2                	sll	gp,gp,0x10
    11f2:	0000                	unimp
    11f4:	01e0                	add	s0,sp,204
    11f6:	0000                	unimp
    11f8:	01e0                	add	s0,sp,204
    11fa:	0000                	unimp
    11fc:	01e0                	add	s0,sp,204
    11fe:	0000                	unimp
    1200:	01e0                	add	s0,sp,204
    1202:	0000                	unimp
    1204:	01cc                	add	a1,sp,196
    1206:	0000                	unimp
    1208:	01d6                	sll	gp,gp,0x15
	...

0000120c <back>:
    120c:	ffff fffd ffff ffff ffff ffff ffff ffff     ................
    121c:	ffff ffff fffd ffff ffff ffff ffff ffff     ................
    122c:	3fff 1f5f 2fcf bfc7 7fe7 ffef ffbf ffff     .?_../..........
    123c:	ffff ffff ffff ffff ffff ffff fffb ffff     ................
    124c:	ffff ffff ffff ffff ffff f7ff ffff ffff     ................
    125c:	ffff ffff ffff ffff ffff 7fff ffff ffff     ................
    126c:	ffff ffff ffff ffff 7fff ffff ffff ffff     ................
    127c:	ffff ffff ffff ffff ffff fff7 ffff ffff     ................
    128c:	ffff ffff ffff ffff ffff ffff ffff fffe     ................
    129c:	ffff ffff ffff ffff fdff ffff ffff ffff     ................
    12ac:	14c0 f6e9 efbd fffd fffd ffbf 7fd7 bfdf     ................
    12bc:	fff6 ffff ffff ffff ffff ffff ffff ffff     ................
    12cc:	7fff ffff ffff ffff ffff ffff ffff ffff     ................
    12dc:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
    12ec:	ffff ffff ffbf ffff ffff ffff ffff ffff     ................
    12fc:	dfff ffff ffff ffff ffff ffbf ffff ffff     ................
    130c:	ffff ffff ffff ffff ffff ffff ffef ffff     ................
    131c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
    132c:	ffff fffe f7fd f7ff f7ff fdff ffff fffd     ................
    133c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
    134c:	ffff ffff ffff ffff ffff 7fbf bf1f 470f     ...............G
    135c:	238f 9347 b543 a34b a5db b3db 5be7 aff7     .#G.C.K......[..
    136c:	6ff7 dfff 5fff ffff ffff ffff ffff ffff     .o..._..........
    137c:	ffbf ffff ffff ffff ffff ffff ffff ffff     ................
    138c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
    139c:	ffff ffff dfff ffff ffff ffff ffff ffff     ................
    13ac:	ffff ffef ffff ffff ffff ffff ffff ffff     ................
    13bc:	ffff ffff ffff ffff ffbf ffff ffff ffff     ................
    13cc:	ffff ffff 0f9f 1543 5002 a204 e218 f20c     ......C..P......
    13dc:	f30c daac baf5 7aed daef f6bf efff f7fd     .......z........
    13ec:	ff7f ffed fb7f febf 7ddf dff7 bfff ffff     .........}......
    13fc:	bfff ffff ffff ffff ffff ffff ffff ffff     ................
    140c:	feff ffff ffff ffff ffff ffff ffff ffff     ................
    141c:	ffff bfff ffff ffff ffaf ffff bfff ffff     ................
    142c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
    143c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
    144c:	ffff 2411 5208 5500 c328 d11c 4db6 57fa     ...$.R.U(....M.W
    145c:	d7fd fb6e 77ee f5df fbdf bffd fffa fffd     ..n..w..........
    146c:	7ffd bffe dfff ffff bfff ffff feff ffab     ................
    147c:	ffff ffff ffff ffff fdff ffff ffff ffff     ................
    148c:	ffff ffff ffff ffff ffff ffff ffff fffe     ................
    149c:	f7ff f7ff b6ff f7d5 f780 b6d5 f7ff f7ff     ................
    14ac:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
    14bc:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
    14cc:	f6ff a148 4914 59a6 baa5 de6b ff75 7fdb     ..H..I.Y..k.u...
    14dc:	ffed fff7 7ffd fdff feff ffff ffff fbdf     ................
    14ec:	bfff dff7 bffb df6d b7ff ff7f be57 ffd5     ......m.....W...
    14fc:	ffff ffff 7fff ffff ffff ffff ffff ffbf     ................
    150c:	ffff ffff ffff fdff ffff ffff ffff ffff     ................
    151c:	ffff feff ffff ffff effa ffff feff ffff     ................
    152c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
    153c:	fdff ffff ffff ffff ffff ffff ffff ffff     ................
    154c:	ffff feff d4e9 966b d779 d7bd effd f7bd     ......k.y.......
    155c:	ffdf ffee ffff efff ffff fbff ffee fd77     ..............w.
    156c:	dfff eff6 eb7d 56ff cbbd f6f5 fffd ffff     ....}..V........
    157c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
    158c:	ffff ffff ffff ffef ffff ffff ffff ffff     ................
    159c:	ffff ffff ffff fffb ffff ffff ffff ffff     ................
    15ac:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
    15bc:	7fff ffff ffff ffff ffff ffff ffef ffff     ................
    15cc:	ffff ffff ffff ffff fefd faff fdf7 f7ef     ................
    15dc:	efde bfff ffee bfdf dfff bffe afff dfff     ................
    15ec:	fffb fff6 fffb fffc ffff ffff ffff fffe     ................
    15fc:	ffff ffff fbff ffff ffff ffff ffff ffff     ................

0000160c <LIVE>:
    160c:	c080 0080 8000 80c0 0000 c080 0080 0000     ................

0000161c <vesso>:
    161c:	7870 7878 7e78 7e7f 7878 7878 5470 b4d1     pxxxx~.~xxxxpT..
    162c:	3c78 34f0 80f8 ea78 74e0 0000               x<.4..x..t..

00001638 <Monsters>:
    1638:	0000 5800 16bc 3f3f bc16 0058 0000 0000     ...X..??..X.....
    1648:	9800 b65c 5f5f 5cb6 0098 0000 7000 7d18     ..\.__.\.....p.}
    1658:	bcb6 3c3c b6bc 187d 0070 1e00 7db8 3c36     ..<<..}.p....}6<
    1668:	3c3c 363c b87d 001e 9c00 5e9e 3776 5f5f     <<<6}......^v7__
    1678:	7637 9e5e 009c 1c00 fe5e 37b6 5f5f b637     7v^.....^..7__7.
    1688:	5efe 001c 4000 f060 7850 5858 5078 60f0     .^...@`.PxXXxP.`
    1698:	0040 4000 d060 5870 7878 7058 60d0 0040     @..@`.pXxxXp.`@.
    16a8:	0000 0000 2400 1818 0024 0000 0000 0000     .....$..$.......
    16b8:	8100 2400 1818 0024 0081 0000 0000 8124     ...$..$.......$.
    16c8:	2418 5a5a 1824 2481 0000 0042 8124 3c4a     .$ZZ$..$..B.$.J<
    16d8:	25a4 4a3c 2481 4200                         .%<J.$.B

000016e0 <intro>:
	...
    1700:	c080 e0e0 f0e0 f0f0 f0f0 f0f0 f0f0 e0f0     ................
    1710:	c0c0 f0e0 f0f0 f0f0 f0f0 f0f0 e0e0 f0f0     ................
    1720:	f0f0 f0f0 f0f0 f0f0 f0f0 e0e0 f0f0 f0f0     ................
    1730:	f0f0 f0f0 e0f0 c0c0 f0e0 f0f0 f0f0 e0e0     ................
    1740:	80c0 0000 0000 0000 0000 0000 0000 0000     ................
	...
    177c:	9c78 1f1e 1f1f 1f1f 1f1f 1f1f 1f1f 3f1f     x..............?
    178c:	ffff ffff ffff 1fff 1f1f 1f1f ffff ffff     ................
    179c:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
    17ac:	ffff ffff ffff ffff 3f3f 3f3f 3f3f ffff     ........??????..
    17bc:	ffff ffff 3fff 3e3f 383c 60b0 0000 0000     .....??><8.`....
	...
    17fc:	0100 0602 0404 fc04 0000 0000 fc00 fcfc     ................
    180c:	fffc ffff 1f7f 04ff 0404 0404 ffff ffff     ................
    181c:	ffff 07ff 0707 0707 070f 0707 0707 0f07     ................
    182c:	1f0f ff7f ffff ffff fcff 0000 0000 ff01     ................
    183c:	3f7f 071f 4080 1820 030e 0001 0000 0000     .?...@ .........
	...
    1880:	0000 0300 807c 0000 0300 ff7f ffff 031f     ....|...........
    1890:	0000 f807 0000 0000 ff07 0fff ffff 007f     ................
    18a0:	0000 8000 077e ff7f ffff 007e 0000 ff80     ....~.....~.....
    18b0:	ffff ffff ffff 007e 0000 c000 1830 0306     ......~.....0...
	...
    18e0:	c000 f0e0 fcf8 fefe fefe fefe fcfe fefe     ................
    18f0:	fefe fefe f0fc feee fefe fefe fefe fefe     ................
    1900:	fcfe f8f8 fffe c0c0 c0c0 ffc0 e1ff c0c0     ................
    1910:	f8f8 fff8 c0c0 c0c0 ffc0 f0ff ffff c0c0     ................
    1920:	c0c0 ffc0 f8f8 fff8 ffff c0c0 c0c0 f8ff     ................
    1930:	ffff c7df c0c1 c0c0 f6f8 f8e1 f8f8 f8f8     ................
    1940:	f8f8 fef8 fefe fefe fcfe e0f0 f0f0 fcf8     ................
    1950:	fefc fefe fefe fefe f8fe e0e0 00c0 0000     ................
    1960:	0f07 e179 01c1 0f03 ff3f f9ff 83c3 0f07     ..y.....?.......
    1970:	7f1f ffff 83f3 0303 3f03 ffff c3fb 0303     .........?......
    1980:	0f07 ff7f ffff 01e1 0101 0301 ffff ffff     ................
    1990:	03ff 0303 0103 0101 0f01 ffff ffff 03ff     ................
    19a0:	0303 0303 f3f3 f3f3 0303 0f07 ff0f ffff     ................
    19b0:	03ff 0303 8303 f3f3 f3f3 f3f3 fff3 ffff     ................
    19c0:	031f 0101 f181 f3f1 03f3 0303 8f03 ffff     ................
    19d0:	7fff 0f1f 870f f3e3 31f1 0101 8101 7ee7     .........1.....~
    19e0:	0000 0000 0703 381c 80e0 0703 7f1f f0fe     .......8........
    19f0:	80e0 0100 0707 80ce 0000 0700 ff3f fcff     ............?...
    1a00:	c0f0 0300 3f0f f8ff 0080 0000 ff3f ffff     .....?......?...
    1a10:	00ff 0000 fe00 e0fc 0000 ff03 ffff ffff     ................
    1a20:	0000 0000 ffff 0fff 0000 0000 fff8 0fff     ................
    1a30:	0000 0000 cfc0 cfcf cfcf ffff 3fff 0107     .............?..
    1a40:	0000 9e80 1f9f 610f f0e0 fcf0 ffff 83ef     .......a........
    1a50:	8080 9880 1f1e 1f1e e6f6 0606 0706 0001     ................
    1a60:	8070 0070 0080 a8a8 03f9 1c0f e070 8381     p.p.........p...
    1a70:	bf8f f8fe 80e0 8f81 fe9f 30dc c0e0 9f83     ...........0....
    1a80:	cfff 7c1f c0e0 8381 8083 8080 ff80 0fff     ...|............
    1a90:	80ff 8080 f380 1313 80f0 8080 ff9f ffff     ................
    1aa0:	8080 bc80 bfbf 80bf c080 7fe0 ffff 8087     ................
    1ab0:	8080 be80 bfbf bfbf ffff 9fff 8083 f080     ................
    1ac0:	fffe 8fff 8081 f0e0 ff3e 87df 8787 9f97     ........>.......
    1ad0:	df9f e1c7 3860 0e1c 0103 0000 0000 0000     ....`8..........

00001ae0 <OLED_INIT_CMD>:
    1ae0:	3fa8 148d 0020 0021 227f 3f00 12da c0a0     .?.. .!..".?....
    1af0:	00af 0000                                   ....

00001af4 <MonstersLevels>:
    1af4:	0000 0000 0000 0202 0202 0202 0404 0404     ................
    1b04:	0404 0404 0404 0404 0404 0404 0404 0204     ................
    1b14:	0000 0402 0204 0000 0402 0404 0404 0404     ................
    1b24:	00ff 0000 ff00 0202 0202 0202 0404 0404     ................
    1b34:	0404 04ff 0404 ff04 ff00 0000 00ff ff02     ................
    1b44:	0202 02ff ff04 0404 04ff ff04 0404 04ff     ................
    1b54:	ffff 0202 ffff 0200 0202 0002 0402 0202     ................
    1b64:	0204 ff02 ffff 02ff 0404 0404 0404 0202     ................
    1b74:	0202 0202 0000 0000 0000 0000 0000 0000     ................
    1b84:	00ff 0000 ff00 ff02 ffff 02ff ff04 ffff     ................
    1b94:	04ff 04ff 0404 ff04 ff04 ff04 ff04 04ff     ................
    1ba4:	04ff 04ff ff04 ff04 ff04 04ff 04ff 04ff     ................
    1bb4:	ffff 0000 ffff 0202 0404 0202 0202 0404     ................
    1bc4:	0202 ffff 0000 ffff 0000 0404 0202 0000     ................
    1bd4:	0404 0202 0000 0404 0202 0000 0404 0202     ................
