
bin/tiny_gilbert.elf:     file format elf32-littleriscv


Disassembly of section .init:

00000000 <jump_reset>:
   0:	6ed0106f          	j	1eec <reset_handler>

Disassembly of section .text:

00000004 <__divsf3>:
       4:	fd810113          	add	sp,sp,-40
       8:	01755693          	srl	a3,a0,0x17
       c:	ce26                	sw	s1,28(sp)
       e:	00951793          	sll	a5,a0,0x9
      12:	d206                	sw	ra,36(sp)
      14:	d022                	sw	s0,32(sp)
      16:	0ff6f693          	zext.b	a3,a3
      1a:	83a5                	srl	a5,a5,0x9
      1c:	01f55493          	srl	s1,a0,0x1f
      20:	c2ad                	beqz	a3,82 <__divsf3+0x7e>
      22:	0ff00713          	li	a4,255
      26:	06e68e63          	beq	a3,a4,a2 <__divsf3+0x9e>
      2a:	078e                	sll	a5,a5,0x3
      2c:	04000737          	lui	a4,0x4000
      30:	8fd9                	or	a5,a5,a4
      32:	f8168693          	add	a3,a3,-127
      36:	4301                	li	t1,0
      38:	0175d613          	srl	a2,a1,0x17
      3c:	00959413          	sll	s0,a1,0x9
      40:	0ff67613          	zext.b	a2,a2
      44:	8025                	srl	s0,s0,0x9
      46:	81fd                	srl	a1,a1,0x1f
      48:	c635                	beqz	a2,b4 <__divsf3+0xb0>
      4a:	0ff00713          	li	a4,255
      4e:	08e60763          	beq	a2,a4,dc <__divsf3+0xd8>
      52:	040e                	sll	s0,s0,0x3
      54:	04000737          	lui	a4,0x4000
      58:	8c59                	or	s0,s0,a4
      5a:	f8160613          	add	a2,a2,-127
      5e:	4501                	li	a0,0
      60:	8e91                	sub	a3,a3,a2
      62:	00231613          	sll	a2,t1,0x2
      66:	8e49                	or	a2,a2,a0
      68:	167d                	add	a2,a2,-1
      6a:	42b9                	li	t0,14
      6c:	00b4c733          	xor	a4,s1,a1
      70:	08c2ee63          	bltu	t0,a2,10c <__divsf3+0x108>
      74:	6289                	lui	t0,0x2
      76:	060a                	sll	a2,a2,0x2
      78:	f7028293          	add	t0,t0,-144 # 1f70 <reset_handler+0x84>
      7c:	9616                	add	a2,a2,t0
      7e:	4210                	lw	a2,0(a2)
      80:	8602                	jr	a2
      82:	c795                	beqz	a5,ae <__divsf3+0xaa>
      84:	853e                	mv	a0,a5
      86:	c22e                	sw	a1,4(sp)
      88:	c03e                	sw	a5,0(sp)
      8a:	2d11                	jal	69e <__clzsi2>
      8c:	4782                	lw	a5,0(sp)
      8e:	ffb50713          	add	a4,a0,-5
      92:	f8a00693          	li	a3,-118
      96:	4592                	lw	a1,4(sp)
      98:	00e797b3          	sll	a5,a5,a4
      9c:	8e89                	sub	a3,a3,a0
      9e:	4301                	li	t1,0
      a0:	bf61                	j	38 <__divsf3+0x34>
      a2:	0ff00693          	li	a3,255
      a6:	430d                	li	t1,3
      a8:	fbc1                	bnez	a5,38 <__divsf3+0x34>
      aa:	4309                	li	t1,2
      ac:	b771                	j	38 <__divsf3+0x34>
      ae:	4681                	li	a3,0
      b0:	4305                	li	t1,1
      b2:	b759                	j	38 <__divsf3+0x34>
      b4:	c815                	beqz	s0,e8 <__divsf3+0xe4>
      b6:	8522                	mv	a0,s0
      b8:	c63e                	sw	a5,12(sp)
      ba:	c436                	sw	a3,8(sp)
      bc:	c21a                	sw	t1,4(sp)
      be:	c02e                	sw	a1,0(sp)
      c0:	2bf9                	jal	69e <__clzsi2>
      c2:	ffb50713          	add	a4,a0,-5
      c6:	f8a00613          	li	a2,-118
      ca:	8e09                	sub	a2,a2,a0
      cc:	4582                	lw	a1,0(sp)
      ce:	4312                	lw	t1,4(sp)
      d0:	46a2                	lw	a3,8(sp)
      d2:	47b2                	lw	a5,12(sp)
      d4:	00e41433          	sll	s0,s0,a4
      d8:	4501                	li	a0,0
      da:	b759                	j	60 <__divsf3+0x5c>
      dc:	0ff00613          	li	a2,255
      e0:	450d                	li	a0,3
      e2:	fc3d                	bnez	s0,60 <__divsf3+0x5c>
      e4:	4509                	li	a0,2
      e6:	bfad                	j	60 <__divsf3+0x5c>
      e8:	4601                	li	a2,0
      ea:	4505                	li	a0,1
      ec:	bf95                	j	60 <__divsf3+0x5c>
      ee:	8726                	mv	a4,s1
      f0:	843e                	mv	s0,a5
      f2:	851a                	mv	a0,t1
      f4:	4789                	li	a5,2
      f6:	18f50b63          	beq	a0,a5,28c <__divsf3+0x288>
      fa:	478d                	li	a5,3
      fc:	18f50263          	beq	a0,a5,280 <__divsf3+0x27c>
     100:	4785                	li	a5,1
     102:	0cf51c63          	bne	a0,a5,1da <__divsf3+0x1d6>
     106:	4781                	li	a5,0
     108:	4501                	li	a0,0
     10a:	a229                	j	214 <__divsf3+0x210>
     10c:	00541613          	sll	a2,s0,0x5
     110:	1087fe63          	bgeu	a5,s0,22c <__divsf3+0x228>
     114:	16fd                	add	a3,a3,-1
     116:	4381                	li	t2,0
     118:	c83a                	sw	a4,16(sp)
     11a:	01065713          	srl	a4,a2,0x10
     11e:	c03a                	sw	a4,0(sp)
     120:	4582                	lw	a1,0(sp)
     122:	6441                	lui	s0,0x10
     124:	147d                	add	s0,s0,-1 # ffff <_data_lma+0xdb63>
     126:	00867733          	and	a4,a2,s0
     12a:	853e                	mv	a0,a5
     12c:	cc36                	sw	a3,24(sp)
     12e:	ca1e                	sw	t2,20(sp)
     130:	c632                	sw	a2,12(sp)
     132:	c23a                	sw	a4,4(sp)
     134:	c43e                	sw	a5,8(sp)
     136:	29cd                	jal	628 <__hidden___udivsi3>
     138:	85aa                	mv	a1,a0
     13a:	842a                	mv	s0,a0
     13c:	4512                	lw	a0,4(sp)
     13e:	21e9                	jal	608 <__mulsi3>
     140:	47a2                	lw	a5,8(sp)
     142:	4582                	lw	a1,0(sp)
     144:	84aa                	mv	s1,a0
     146:	853e                	mv	a0,a5
     148:	2331                	jal	654 <__umodsi3>
     14a:	43d2                	lw	t2,20(sp)
     14c:	0542                	sll	a0,a0,0x10
     14e:	4632                	lw	a2,12(sp)
     150:	0103d593          	srl	a1,t2,0x10
     154:	8dc9                	or	a1,a1,a0
     156:	4742                	lw	a4,16(sp)
     158:	46e2                	lw	a3,24(sp)
     15a:	87a2                	mv	a5,s0
     15c:	0095fc63          	bgeu	a1,s1,174 <__divsf3+0x170>
     160:	95b2                	add	a1,a1,a2
     162:	fff40793          	add	a5,s0,-1
     166:	00c5e763          	bltu	a1,a2,174 <__divsf3+0x170>
     16a:	0095f563          	bgeu	a1,s1,174 <__divsf3+0x170>
     16e:	ffe40793          	add	a5,s0,-2
     172:	95b2                	add	a1,a1,a2
     174:	c83e                	sw	a5,16(sp)
     176:	409587b3          	sub	a5,a1,s1
     17a:	4582                	lw	a1,0(sp)
     17c:	853e                	mv	a0,a5
     17e:	843e                	mv	s0,a5
     180:	ca36                	sw	a3,20(sp)
     182:	c63a                	sw	a4,12(sp)
     184:	cc32                	sw	a2,24(sp)
     186:	214d                	jal	628 <__hidden___udivsi3>
     188:	85aa                	mv	a1,a0
     18a:	c42a                	sw	a0,8(sp)
     18c:	4512                	lw	a0,4(sp)
     18e:	29ad                	jal	608 <__mulsi3>
     190:	4582                	lw	a1,0(sp)
     192:	84aa                	mv	s1,a0
     194:	8522                	mv	a0,s0
     196:	297d                	jal	654 <__umodsi3>
     198:	43a2                	lw	t2,8(sp)
     19a:	01051313          	sll	t1,a0,0x10
     19e:	4732                	lw	a4,12(sp)
     1a0:	47c2                	lw	a5,16(sp)
     1a2:	46d2                	lw	a3,20(sp)
     1a4:	859e                	mv	a1,t2
     1a6:	02937163          	bgeu	t1,s1,1c8 <__divsf3+0x1c4>
     1aa:	4662                	lw	a2,24(sp)
     1ac:	fff38593          	add	a1,t2,-1
     1b0:	00c30533          	add	a0,t1,a2
     1b4:	00653433          	sltu	s0,a0,t1
     1b8:	832a                	mv	t1,a0
     1ba:	e419                	bnez	s0,1c8 <__divsf3+0x1c4>
     1bc:	00957663          	bgeu	a0,s1,1c8 <__divsf3+0x1c4>
     1c0:	ffe38593          	add	a1,t2,-2
     1c4:	00c50333          	add	t1,a0,a2
     1c8:	01079413          	sll	s0,a5,0x10
     1cc:	40930333          	sub	t1,t1,s1
     1d0:	8c4d                	or	s0,s0,a1
     1d2:	00603333          	snez	t1,t1
     1d6:	00646433          	or	s0,s0,t1
     1da:	07f68513          	add	a0,a3,127
     1de:	04a05d63          	blez	a0,238 <__divsf3+0x234>
     1e2:	00747793          	and	a5,s0,7
     1e6:	c799                	beqz	a5,1f4 <__divsf3+0x1f0>
     1e8:	00f47793          	and	a5,s0,15
     1ec:	4611                	li	a2,4
     1ee:	00c78363          	beq	a5,a2,1f4 <__divsf3+0x1f0>
     1f2:	0411                	add	s0,s0,4
     1f4:	080007b7          	lui	a5,0x8000
     1f8:	8fe1                	and	a5,a5,s0
     1fa:	c799                	beqz	a5,208 <__divsf3+0x204>
     1fc:	f80007b7          	lui	a5,0xf8000
     200:	17fd                	add	a5,a5,-1 # f7ffffff <__global_pointer$+0xd7fff7ff>
     202:	8c7d                	and	s0,s0,a5
     204:	08068513          	add	a0,a3,128
     208:	0fe00793          	li	a5,254
     20c:	08a7c063          	blt	a5,a0,28c <__divsf3+0x288>
     210:	00345793          	srl	a5,s0,0x3
     214:	5092                	lw	ra,36(sp)
     216:	5402                	lw	s0,32(sp)
     218:	07a6                	sll	a5,a5,0x9
     21a:	055e                	sll	a0,a0,0x17
     21c:	83a5                	srl	a5,a5,0x9
     21e:	8d5d                	or	a0,a0,a5
     220:	077e                	sll	a4,a4,0x1f
     222:	44f2                	lw	s1,28(sp)
     224:	8d59                	or	a0,a0,a4
     226:	02810113          	add	sp,sp,40
     22a:	8082                	ret
     22c:	01f79393          	sll	t2,a5,0x1f
     230:	8385                	srl	a5,a5,0x1
     232:	b5dd                	j	118 <__divsf3+0x114>
     234:	872e                	mv	a4,a1
     236:	bd7d                	j	f4 <__divsf3+0xf0>
     238:	4605                	li	a2,1
     23a:	c519                	beqz	a0,248 <__divsf3+0x244>
     23c:	8e09                	sub	a2,a2,a0
     23e:	45ed                	li	a1,27
     240:	4781                	li	a5,0
     242:	4501                	li	a0,0
     244:	fcc5c8e3          	blt	a1,a2,214 <__divsf3+0x210>
     248:	09e68693          	add	a3,a3,158
     24c:	00c45633          	srl	a2,s0,a2
     250:	00d41433          	sll	s0,s0,a3
     254:	00803433          	snez	s0,s0
     258:	008667b3          	or	a5,a2,s0
     25c:	0077f693          	and	a3,a5,7
     260:	c699                	beqz	a3,26e <__divsf3+0x26a>
     262:	00f7f693          	and	a3,a5,15
     266:	4611                	li	a2,4
     268:	00c68363          	beq	a3,a2,26e <__divsf3+0x26a>
     26c:	0791                	add	a5,a5,4
     26e:	040006b7          	lui	a3,0x4000
     272:	8efd                	and	a3,a3,a5
     274:	838d                	srl	a5,a5,0x3
     276:	e80689e3          	beqz	a3,108 <__divsf3+0x104>
     27a:	4781                	li	a5,0
     27c:	4505                	li	a0,1
     27e:	bf59                	j	214 <__divsf3+0x210>
     280:	004007b7          	lui	a5,0x400
     284:	0ff00513          	li	a0,255
     288:	4701                	li	a4,0
     28a:	b769                	j	214 <__divsf3+0x210>
     28c:	4781                	li	a5,0
     28e:	0ff00513          	li	a0,255
     292:	b749                	j	214 <__divsf3+0x210>

00000294 <__mulsf3>:
     294:	1111                	add	sp,sp,-28
     296:	01755293          	srl	t0,a0,0x17
     29a:	ca22                	sw	s0,20(sp)
     29c:	c826                	sw	s1,16(sp)
     29e:	00951713          	sll	a4,a0,0x9
     2a2:	cc06                	sw	ra,24(sp)
     2a4:	0ff2f293          	zext.b	t0,t0
     2a8:	84ae                	mv	s1,a1
     2aa:	8325                	srl	a4,a4,0x9
     2ac:	01f55413          	srl	s0,a0,0x1f
     2b0:	12028b63          	beqz	t0,3e6 <__mulsf3+0x152>
     2b4:	0ff00793          	li	a5,255
     2b8:	14f28563          	beq	t0,a5,402 <__mulsf3+0x16e>
     2bc:	070e                	sll	a4,a4,0x3
     2be:	040007b7          	lui	a5,0x4000
     2c2:	8f5d                	or	a4,a4,a5
     2c4:	f8128293          	add	t0,t0,-127
     2c8:	4601                	li	a2,0
     2ca:	0174d693          	srl	a3,s1,0x17
     2ce:	00949793          	sll	a5,s1,0x9
     2d2:	0ff6f693          	zext.b	a3,a3
     2d6:	83a5                	srl	a5,a5,0x9
     2d8:	80fd                	srl	s1,s1,0x1f
     2da:	12068e63          	beqz	a3,416 <__mulsf3+0x182>
     2de:	0ff00593          	li	a1,255
     2e2:	14b68e63          	beq	a3,a1,43e <__mulsf3+0x1aa>
     2e6:	040005b7          	lui	a1,0x4000
     2ea:	078e                	sll	a5,a5,0x3
     2ec:	8fcd                	or	a5,a5,a1
     2ee:	f8168693          	add	a3,a3,-127 # 3ffff81 <_data_lma+0x3ffdae5>
     2f2:	4581                	li	a1,0
     2f4:	9696                	add	a3,a3,t0
     2f6:	c036                	sw	a3,0(sp)
     2f8:	00168293          	add	t0,a3,1
     2fc:	00261693          	sll	a3,a2,0x2
     300:	8ecd                	or	a3,a3,a1
     302:	4529                	li	a0,10
     304:	00944333          	xor	t1,s0,s1
     308:	16d54f63          	blt	a0,a3,486 <__mulsf3+0x1f2>
     30c:	4509                	li	a0,2
     30e:	14d54263          	blt	a0,a3,452 <__mulsf3+0x1be>
     312:	16fd                	add	a3,a3,-1
     314:	4605                	li	a2,1
     316:	14d67c63          	bgeu	a2,a3,46e <__mulsf3+0x1da>
     31a:	64c1                	lui	s1,0x10
     31c:	01075693          	srl	a3,a4,0x10
     320:	fff48393          	add	t2,s1,-1 # ffff <_data_lma+0xdb63>
     324:	c236                	sw	a3,4(sp)
     326:	00777733          	and	a4,a4,t2
     32a:	0107d693          	srl	a3,a5,0x10
     32e:	0077f7b3          	and	a5,a5,t2
     332:	c436                	sw	a3,8(sp)
     334:	853a                	mv	a0,a4
     336:	85be                	mv	a1,a5
     338:	2cc1                	jal	608 <__mulsi3>
     33a:	842a                	mv	s0,a0
     33c:	45a2                	lw	a1,8(sp)
     33e:	853a                	mv	a0,a4
     340:	24e1                	jal	608 <__mulsi3>
     342:	872a                	mv	a4,a0
     344:	85be                	mv	a1,a5
     346:	4512                	lw	a0,4(sp)
     348:	24c1                	jal	608 <__mulsi3>
     34a:	87aa                	mv	a5,a0
     34c:	45a2                	lw	a1,8(sp)
     34e:	4512                	lw	a0,4(sp)
     350:	2c65                	jal	608 <__mulsi3>
     352:	01045693          	srl	a3,s0,0x10
     356:	973e                	add	a4,a4,a5
     358:	9736                	add	a4,a4,a3
     35a:	00f77363          	bgeu	a4,a5,360 <__mulsf3+0xcc>
     35e:	9526                	add	a0,a0,s1
     360:	007777b3          	and	a5,a4,t2
     364:	007476b3          	and	a3,s0,t2
     368:	07c2                	sll	a5,a5,0x10
     36a:	97b6                	add	a5,a5,a3
     36c:	00679693          	sll	a3,a5,0x6
     370:	00d036b3          	snez	a3,a3
     374:	83e9                	srl	a5,a5,0x1a
     376:	8edd                	or	a3,a3,a5
     378:	01075793          	srl	a5,a4,0x10
     37c:	97aa                	add	a5,a5,a0
     37e:	079a                	sll	a5,a5,0x6
     380:	8fd5                	or	a5,a5,a3
     382:	08000737          	lui	a4,0x8000
     386:	8f7d                	and	a4,a4,a5
     388:	10070963          	beqz	a4,49a <__mulsf3+0x206>
     38c:	0017d713          	srl	a4,a5,0x1
     390:	8b85                	and	a5,a5,1
     392:	8fd9                	or	a5,a5,a4
     394:	07f28513          	add	a0,t0,127
     398:	10a05363          	blez	a0,49e <__mulsf3+0x20a>
     39c:	0077f713          	and	a4,a5,7
     3a0:	c719                	beqz	a4,3ae <__mulsf3+0x11a>
     3a2:	00f7f713          	and	a4,a5,15
     3a6:	4691                	li	a3,4
     3a8:	00d70363          	beq	a4,a3,3ae <__mulsf3+0x11a>
     3ac:	0791                	add	a5,a5,4 # 4000004 <_data_lma+0x3ffdb68>
     3ae:	08000737          	lui	a4,0x8000
     3b2:	8f7d                	and	a4,a4,a5
     3b4:	c719                	beqz	a4,3c2 <__mulsf3+0x12e>
     3b6:	f8000737          	lui	a4,0xf8000
     3ba:	177d                	add	a4,a4,-1 # f7ffffff <__global_pointer$+0xd7fff7ff>
     3bc:	8ff9                	and	a5,a5,a4
     3be:	08028513          	add	a0,t0,128
     3c2:	0fe00713          	li	a4,254
     3c6:	12a74563          	blt	a4,a0,4f0 <__mulsf3+0x25c>
     3ca:	0037d713          	srl	a4,a5,0x3
     3ce:	40e2                	lw	ra,24(sp)
     3d0:	4452                	lw	s0,20(sp)
     3d2:	0726                	sll	a4,a4,0x9
     3d4:	055e                	sll	a0,a0,0x17
     3d6:	8325                	srl	a4,a4,0x9
     3d8:	8d59                	or	a0,a0,a4
     3da:	037e                	sll	t1,t1,0x1f
     3dc:	44c2                	lw	s1,16(sp)
     3de:	00656533          	or	a0,a0,t1
     3e2:	0171                	add	sp,sp,28
     3e4:	8082                	ret
     3e6:	c70d                	beqz	a4,410 <__mulsf3+0x17c>
     3e8:	853a                	mv	a0,a4
     3ea:	c03a                	sw	a4,0(sp)
     3ec:	2c4d                	jal	69e <__clzsi2>
     3ee:	4702                	lw	a4,0(sp)
     3f0:	ffb50793          	add	a5,a0,-5
     3f4:	f8a00293          	li	t0,-118
     3f8:	00f71733          	sll	a4,a4,a5
     3fc:	40a282b3          	sub	t0,t0,a0
     400:	b5e1                	j	2c8 <__mulsf3+0x34>
     402:	0ff00293          	li	t0,255
     406:	460d                	li	a2,3
     408:	ec0711e3          	bnez	a4,2ca <__mulsf3+0x36>
     40c:	4609                	li	a2,2
     40e:	bd75                	j	2ca <__mulsf3+0x36>
     410:	4281                	li	t0,0
     412:	4605                	li	a2,1
     414:	bd5d                	j	2ca <__mulsf3+0x36>
     416:	cb9d                	beqz	a5,44c <__mulsf3+0x1b8>
     418:	853e                	mv	a0,a5
     41a:	c63a                	sw	a4,12(sp)
     41c:	c416                	sw	t0,8(sp)
     41e:	c232                	sw	a2,4(sp)
     420:	c03e                	sw	a5,0(sp)
     422:	2cb5                	jal	69e <__clzsi2>
     424:	4782                	lw	a5,0(sp)
     426:	ffb50693          	add	a3,a0,-5
     42a:	4612                	lw	a2,4(sp)
     42c:	00d797b3          	sll	a5,a5,a3
     430:	f8a00693          	li	a3,-118
     434:	42a2                	lw	t0,8(sp)
     436:	4732                	lw	a4,12(sp)
     438:	8e89                	sub	a3,a3,a0
     43a:	4581                	li	a1,0
     43c:	bd65                	j	2f4 <__mulsf3+0x60>
     43e:	0ff00693          	li	a3,255
     442:	458d                	li	a1,3
     444:	ea0798e3          	bnez	a5,2f4 <__mulsf3+0x60>
     448:	4589                	li	a1,2
     44a:	b56d                	j	2f4 <__mulsf3+0x60>
     44c:	4681                	li	a3,0
     44e:	4585                	li	a1,1
     450:	b555                	j	2f4 <__mulsf3+0x60>
     452:	4505                	li	a0,1
     454:	00d516b3          	sll	a3,a0,a3
     458:	5306f513          	and	a0,a3,1328
     45c:	ed05                	bnez	a0,494 <__mulsf3+0x200>
     45e:	2406f613          	and	a2,a3,576
     462:	e249                	bnez	a2,4e4 <__mulsf3+0x250>
     464:	0886f693          	and	a3,a3,136
     468:	ea0689e3          	beqz	a3,31a <__mulsf3+0x86>
     46c:	8326                	mv	t1,s1
     46e:	4709                	li	a4,2
     470:	08e58063          	beq	a1,a4,4f0 <__mulsf3+0x25c>
     474:	470d                	li	a4,3
     476:	06e58763          	beq	a1,a4,4e4 <__mulsf3+0x250>
     47a:	4705                	li	a4,1
     47c:	f0e59ce3          	bne	a1,a4,394 <__mulsf3+0x100>
     480:	4701                	li	a4,0
     482:	4501                	li	a0,0
     484:	b7a9                	j	3ce <__mulsf3+0x13a>
     486:	453d                	li	a0,15
     488:	04a68e63          	beq	a3,a0,4e4 <__mulsf3+0x250>
     48c:	452d                	li	a0,11
     48e:	8322                	mv	t1,s0
     490:	fca68ee3          	beq	a3,a0,46c <__mulsf3+0x1d8>
     494:	87ba                	mv	a5,a4
     496:	85b2                	mv	a1,a2
     498:	bfd9                	j	46e <__mulsf3+0x1da>
     49a:	4282                	lw	t0,0(sp)
     49c:	bde5                	j	394 <__mulsf3+0x100>
     49e:	4685                	li	a3,1
     4a0:	c519                	beqz	a0,4ae <__mulsf3+0x21a>
     4a2:	8e89                	sub	a3,a3,a0
     4a4:	466d                	li	a2,27
     4a6:	4701                	li	a4,0
     4a8:	4501                	li	a0,0
     4aa:	f2d642e3          	blt	a2,a3,3ce <__mulsf3+0x13a>
     4ae:	09e28293          	add	t0,t0,158
     4b2:	00d7d6b3          	srl	a3,a5,a3
     4b6:	005797b3          	sll	a5,a5,t0
     4ba:	00f037b3          	snez	a5,a5
     4be:	00f6e733          	or	a4,a3,a5
     4c2:	00777793          	and	a5,a4,7
     4c6:	c799                	beqz	a5,4d4 <__mulsf3+0x240>
     4c8:	00f77793          	and	a5,a4,15
     4cc:	4691                	li	a3,4
     4ce:	00d78363          	beq	a5,a3,4d4 <__mulsf3+0x240>
     4d2:	0711                	add	a4,a4,4
     4d4:	040007b7          	lui	a5,0x4000
     4d8:	8ff9                	and	a5,a5,a4
     4da:	830d                	srl	a4,a4,0x3
     4dc:	d3dd                	beqz	a5,482 <__mulsf3+0x1ee>
     4de:	4701                	li	a4,0
     4e0:	4505                	li	a0,1
     4e2:	b5f5                	j	3ce <__mulsf3+0x13a>
     4e4:	00400737          	lui	a4,0x400
     4e8:	0ff00513          	li	a0,255
     4ec:	4301                	li	t1,0
     4ee:	b5c5                	j	3ce <__mulsf3+0x13a>
     4f0:	4701                	li	a4,0
     4f2:	0ff00513          	li	a0,255
     4f6:	bde1                	j	3ce <__mulsf3+0x13a>

000004f8 <__fixunssfsi>:
     4f8:	01755793          	srl	a5,a0,0x17
     4fc:	00800637          	lui	a2,0x800
     500:	fff60693          	add	a3,a2,-1 # 7fffff <_data_lma+0x7fdb63>
     504:	0ff7f793          	zext.b	a5,a5
     508:	07e00593          	li	a1,126
     50c:	8ee9                	and	a3,a3,a0
     50e:	01f55713          	srl	a4,a0,0x1f
     512:	4501                	li	a0,0
     514:	02f5da63          	bge	a1,a5,548 <__fixunssfsi+0x50>
     518:	eb05                	bnez	a4,548 <__fixunssfsi+0x50>
     51a:	09e00713          	li	a4,158
     51e:	557d                	li	a0,-1
     520:	02f74463          	blt	a4,a5,548 <__fixunssfsi+0x50>
     524:	09500713          	li	a4,149
     528:	00c6e533          	or	a0,a3,a2
     52c:	00f75763          	bge	a4,a5,53a <__fixunssfsi+0x42>
     530:	f6a78793          	add	a5,a5,-150 # 3ffff6a <_data_lma+0x3ffdace>
     534:	00f51533          	sll	a0,a0,a5
     538:	8082                	ret
     53a:	09600713          	li	a4,150
     53e:	40f707b3          	sub	a5,a4,a5
     542:	00f55533          	srl	a0,a0,a5
     546:	8082                	ret
     548:	8082                	ret

0000054a <__floatsisf>:
     54a:	1151                	add	sp,sp,-12
     54c:	c406                	sw	ra,8(sp)
     54e:	c222                	sw	s0,4(sp)
     550:	c026                	sw	s1,0(sp)
     552:	c54d                	beqz	a0,5fc <__floatsisf+0xb2>
     554:	41f55793          	sra	a5,a0,0x1f
     558:	00a7c433          	xor	s0,a5,a0
     55c:	8c1d                	sub	s0,s0,a5
     55e:	01f55493          	srl	s1,a0,0x1f
     562:	8522                	mv	a0,s0
     564:	2a2d                	jal	69e <__clzsi2>
     566:	87aa                	mv	a5,a0
     568:	09e00513          	li	a0,158
     56c:	8d1d                	sub	a0,a0,a5
     56e:	09600713          	li	a4,150
     572:	02a74363          	blt	a4,a0,598 <__floatsisf+0x4e>
     576:	4721                	li	a4,8
     578:	08e78563          	beq	a5,a4,602 <__floatsisf+0xb8>
     57c:	17e1                	add	a5,a5,-8
     57e:	00f41433          	sll	s0,s0,a5
     582:	0426                	sll	s0,s0,0x9
     584:	8025                	srl	s0,s0,0x9
     586:	055e                	sll	a0,a0,0x17
     588:	40a2                	lw	ra,8(sp)
     58a:	8d41                	or	a0,a0,s0
     58c:	4412                	lw	s0,4(sp)
     58e:	04fe                	sll	s1,s1,0x1f
     590:	8d45                	or	a0,a0,s1
     592:	4482                	lw	s1,0(sp)
     594:	0131                	add	sp,sp,12
     596:	8082                	ret
     598:	09900713          	li	a4,153
     59c:	04a75863          	bge	a4,a0,5ec <__floatsisf+0xa2>
     5a0:	4695                	li	a3,5
     5a2:	01b78713          	add	a4,a5,27
     5a6:	00e41733          	sll	a4,s0,a4
     5aa:	8e9d                	sub	a3,a3,a5
     5ac:	00d456b3          	srl	a3,s0,a3
     5b0:	00e03733          	snez	a4,a4
     5b4:	00e6e433          	or	s0,a3,a4
     5b8:	fc000737          	lui	a4,0xfc000
     5bc:	177d                	add	a4,a4,-1 # fbffffff <__global_pointer$+0xdbfff7ff>
     5be:	00747693          	and	a3,s0,7
     5c2:	8f61                	and	a4,a4,s0
     5c4:	c691                	beqz	a3,5d0 <__floatsisf+0x86>
     5c6:	883d                	and	s0,s0,15
     5c8:	4691                	li	a3,4
     5ca:	00d40363          	beq	s0,a3,5d0 <__floatsisf+0x86>
     5ce:	0711                	add	a4,a4,4
     5d0:	040006b7          	lui	a3,0x4000
     5d4:	8ef9                	and	a3,a3,a4
     5d6:	ca81                	beqz	a3,5e6 <__floatsisf+0x9c>
     5d8:	fc0006b7          	lui	a3,0xfc000
     5dc:	16fd                	add	a3,a3,-1 # fbffffff <__global_pointer$+0xdbfff7ff>
     5de:	09f00513          	li	a0,159
     5e2:	8f75                	and	a4,a4,a3
     5e4:	8d1d                	sub	a0,a0,a5
     5e6:	00375413          	srl	s0,a4,0x3
     5ea:	bf61                	j	582 <__floatsisf+0x38>
     5ec:	4695                	li	a3,5
     5ee:	ffb78713          	add	a4,a5,-5
     5f2:	fcd783e3          	beq	a5,a3,5b8 <__floatsisf+0x6e>
     5f6:	00e41433          	sll	s0,s0,a4
     5fa:	bf7d                	j	5b8 <__floatsisf+0x6e>
     5fc:	4481                	li	s1,0
     5fe:	4401                	li	s0,0
     600:	b749                	j	582 <__floatsisf+0x38>
     602:	09600513          	li	a0,150
     606:	bfb5                	j	582 <__floatsisf+0x38>

00000608 <__mulsi3>:
     608:	862a                	mv	a2,a0
     60a:	4501                	li	a0,0
     60c:	0015f693          	and	a3,a1,1
     610:	c291                	beqz	a3,614 <__mulsi3+0xc>
     612:	9532                	add	a0,a0,a2
     614:	8185                	srl	a1,a1,0x1
     616:	0606                	sll	a2,a2,0x1
     618:	f9f5                	bnez	a1,60c <__mulsi3+0x4>
     61a:	8082                	ret
     61c:	0000                	unimp
	...

00000620 <__divsi3>:
     620:	02054e63          	bltz	a0,65c <__umodsi3+0x8>
     624:	0405c363          	bltz	a1,66a <__umodsi3+0x16>

00000628 <__hidden___udivsi3>:
     628:	862e                	mv	a2,a1
     62a:	85aa                	mv	a1,a0
     62c:	557d                	li	a0,-1
     62e:	c215                	beqz	a2,652 <__hidden___udivsi3+0x2a>
     630:	4685                	li	a3,1
     632:	00b67863          	bgeu	a2,a1,642 <__hidden___udivsi3+0x1a>
     636:	00c05663          	blez	a2,642 <__hidden___udivsi3+0x1a>
     63a:	0606                	sll	a2,a2,0x1
     63c:	0686                	sll	a3,a3,0x1
     63e:	feb66ce3          	bltu	a2,a1,636 <__hidden___udivsi3+0xe>
     642:	4501                	li	a0,0
     644:	00c5e463          	bltu	a1,a2,64c <__hidden___udivsi3+0x24>
     648:	8d91                	sub	a1,a1,a2
     64a:	8d55                	or	a0,a0,a3
     64c:	8285                	srl	a3,a3,0x1
     64e:	8205                	srl	a2,a2,0x1
     650:	faf5                	bnez	a3,644 <__hidden___udivsi3+0x1c>
     652:	8082                	ret

00000654 <__umodsi3>:
     654:	8286                	mv	t0,ra
     656:	3fc9                	jal	628 <__hidden___udivsi3>
     658:	852e                	mv	a0,a1
     65a:	8282                	jr	t0
     65c:	40a00533          	neg	a0,a0
     660:	00b04763          	bgtz	a1,66e <__umodsi3+0x1a>
     664:	40b005b3          	neg	a1,a1
     668:	b7c1                	j	628 <__hidden___udivsi3>
     66a:	40b005b3          	neg	a1,a1
     66e:	8286                	mv	t0,ra
     670:	3f65                	jal	628 <__hidden___udivsi3>
     672:	40a00533          	neg	a0,a0
     676:	8282                	jr	t0

00000678 <__modsi3>:
     678:	8286                	mv	t0,ra
     67a:	0005c763          	bltz	a1,688 <__modsi3+0x10>
     67e:	00054963          	bltz	a0,690 <__modsi3+0x18>
     682:	375d                	jal	628 <__hidden___udivsi3>
     684:	852e                	mv	a0,a1
     686:	8282                	jr	t0
     688:	40b005b3          	neg	a1,a1
     68c:	fe055be3          	bgez	a0,682 <__modsi3+0xa>
     690:	40a00533          	neg	a0,a0
     694:	3f51                	jal	628 <__hidden___udivsi3>
     696:	40b00533          	neg	a0,a1
     69a:	8282                	jr	t0
	...

0000069e <__clzsi2>:
     69e:	67c1                	lui	a5,0x10
     6a0:	02f57563          	bgeu	a0,a5,6ca <__clzsi2+0x2c>
     6a4:	10053793          	sltiu	a5,a0,256
     6a8:	0017c793          	xor	a5,a5,1
     6ac:	078e                	sll	a5,a5,0x3
     6ae:	6709                	lui	a4,0x2
     6b0:	02000693          	li	a3,32
     6b4:	8e9d                	sub	a3,a3,a5
     6b6:	00f55533          	srl	a0,a0,a5
     6ba:	fac70793          	add	a5,a4,-84 # 1fac <__clz_tab>
     6be:	97aa                	add	a5,a5,a0
     6c0:	0007c503          	lbu	a0,0(a5) # 10000 <_data_lma+0xdb64>
     6c4:	40a68533          	sub	a0,a3,a0
     6c8:	8082                	ret
     6ca:	01000737          	lui	a4,0x1000
     6ce:	47c1                	li	a5,16
     6d0:	fce56fe3          	bltu	a0,a4,6ae <__clzsi2+0x10>
     6d4:	47e1                	li	a5,24
     6d6:	bfe1                	j	6ae <__clzsi2+0x10>

000006d8 <I2C_write>:
     6d8:	400057b7          	lui	a5,0x40005
     6dc:	40078793          	add	a5,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
     6e0:	0147d703          	lhu	a4,20(a5)
     6e4:	08077713          	and	a4,a4,128
     6e8:	df65                	beqz	a4,6e0 <I2C_write+0x8>
     6ea:	00a79823          	sh	a0,16(a5)
     6ee:	8082                	ret

000006f0 <I2C_stop>:
     6f0:	400057b7          	lui	a5,0x40005
     6f4:	40078693          	add	a3,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
     6f8:	0146d703          	lhu	a4,20(a3)
     6fc:	8b11                	and	a4,a4,4
     6fe:	df6d                	beqz	a4,6f8 <I2C_stop+0x8>
     700:	4007d703          	lhu	a4,1024(a5)
     704:	20076713          	or	a4,a4,512
     708:	40e79023          	sh	a4,1024(a5)
     70c:	8082                	ret

0000070e <delKey>:
     70e:	99018793          	add	a5,gp,-1648 # 20000190 <key>
     712:	0007c703          	lbu	a4,0(a5)
     716:	e701                	bnez	a4,71e <delKey+0x10>
     718:	0017c683          	lbu	a3,1(a5)
     71c:	ca89                	beqz	a3,72e <delKey+0x20>
     71e:	00a71663          	bne	a4,a0,72a <delKey+0x1c>
     722:	0017c703          	lbu	a4,1(a5)
     726:	00b70663          	beq	a4,a1,732 <delKey+0x24>
     72a:	0789                	add	a5,a5,2
     72c:	b7dd                	j	712 <delKey+0x4>
     72e:	452d                	li	a0,11
     730:	8082                	ret
     732:	4501                	li	a0,0
     734:	8082                	ret

00000736 <CollisionCheck>:
     736:	00851283          	lh	t0,8(a0)
     73a:	00651783          	lh	a5,6(a0)
     73e:	20000637          	lui	a2,0x20000
     742:	fff28693          	add	a3,t0,-1
     746:	00469713          	sll	a4,a3,0x4
     74a:	9736                	add	a4,a4,a3
     74c:	0706                	sll	a4,a4,0x1
     74e:	973e                	add	a4,a4,a5
     750:	08060613          	add	a2,a2,128 # 20000080 <Map>
     754:	9732                	add	a4,a4,a2
     756:	fff78613          	add	a2,a5,-1
     75a:	1141                	add	sp,sp,-16
     75c:	060a                	sll	a2,a2,0x2
     75e:	078a                	sll	a5,a5,0x2
     760:	c622                	sw	s0,12(sp)
     762:	c426                	sw	s1,8(sp)
     764:	068e                	sll	a3,a3,0x3
     766:	c032                	sw	a2,0(sp)
     768:	55fd                	li	a1,-1
     76a:	c23e                	sw	a5,4(sp)
     76c:	4302                	lw	t1,0(sp)
     76e:	567d                	li	a2,-1
     770:	34300413          	li	s0,835
     774:	438d                	li	t2,3
     776:	00c707b3          	add	a5,a4,a2
     77a:	0007c783          	lbu	a5,0(a5)
     77e:	0f77f493          	and	s1,a5,247
     782:	c0a5                	beqz	s1,7e2 <CollisionCheck+0xac>
     784:	44b9                	li	s1,14
     786:	04f4e663          	bltu	s1,a5,7d2 <CollisionCheck+0x9c>
     78a:	4491                	li	s1,4
     78c:	00f4f763          	bgeu	s1,a5,79a <CollisionCheck+0x64>
     790:	17ed                	add	a5,a5,-5
     792:	00f457b3          	srl	a5,s0,a5
     796:	8b85                	and	a5,a5,1
     798:	e7a9                	bnez	a5,7e2 <CollisionCheck+0xac>
     79a:	4492                	lw	s1,4(sp)
     79c:	00450783          	lb	a5,4(a0)
     7a0:	97a6                	add	a5,a5,s1
     7a2:	00330493          	add	s1,t1,3
     7a6:	02f4ce63          	blt	s1,a5,7e2 <CollisionCheck+0xac>
     7aa:	079d                	add	a5,a5,7
     7ac:	0267cb63          	blt	a5,t1,7e2 <CollisionCheck+0xac>
     7b0:	00550483          	lb	s1,5(a0)
     7b4:	00329793          	sll	a5,t0,0x3
     7b8:	97a6                	add	a5,a5,s1
     7ba:	00768493          	add	s1,a3,7
     7be:	02f4c263          	blt	s1,a5,7e2 <CollisionCheck+0xac>
     7c2:	079d                	add	a5,a5,7
     7c4:	00d7cf63          	blt	a5,a3,7e2 <CollisionCheck+0xac>
     7c8:	4505                	li	a0,1
     7ca:	4432                	lw	s0,12(sp)
     7cc:	44a2                	lw	s1,8(sp)
     7ce:	0141                	add	sp,sp,16
     7d0:	8082                	ret
     7d2:	03700493          	li	s1,55
     7d6:	00978663          	beq	a5,s1,7e2 <CollisionCheck+0xac>
     7da:	04200493          	li	s1,66
     7de:	fa979ee3          	bne	a5,s1,79a <CollisionCheck+0x64>
     7e2:	0605                	add	a2,a2,1
     7e4:	0311                	add	t1,t1,4
     7e6:	f87618e3          	bne	a2,t2,776 <CollisionCheck+0x40>
     7ea:	0585                	add	a1,a1,1 # 4000001 <_data_lma+0x3ffdb65>
     7ec:	0ff5f793          	zext.b	a5,a1
     7f0:	05e2                	sll	a1,a1,0x18
     7f2:	85e1                	sra	a1,a1,0x18
     7f4:	02270713          	add	a4,a4,34 # 1000022 <_data_lma+0xffdb86>
     7f8:	06a1                	add	a3,a3,8
     7fa:	f6c799e3          	bne	a5,a2,76c <CollisionCheck+0x36>
     7fe:	4501                	li	a0,0
     800:	b7e9                	j	7ca <CollisionCheck+0x94>

00000802 <ResetVarNextLevel>:
     802:	86018e23          	sb	zero,-1924(gp) # 2000007c <scrool>
     806:	86018da3          	sb	zero,-1925(gp) # 2000007b <step4>
     80a:	4705                	li	a4,1
     80c:	86018d23          	sb	zero,-1926(gp) # 2000007a <MainAnim>
     810:	200007b7          	lui	a5,0x20000
     814:	00e780a3          	sb	a4,1(a5) # 20000001 <LorR>
     818:	86018ca3          	sb	zero,-1927(gp) # 20000079 <Jump>
     81c:	00000713          	li	a4,0
     820:	86018c23          	sb	zero,-1928(gp) # 20000078 <jumpcancel>
     824:	86e1aa23          	sw	a4,-1932(gp) # 20000074 <VSlideOut>
     828:	99018793          	add	a5,gp,-1648 # 20000190 <key>
     82c:	02878713          	add	a4,a5,40
     830:	00078023          	sb	zero,0(a5)
     834:	000780a3          	sb	zero,1(a5)
     838:	0789                	add	a5,a5,2
     83a:	fee79be3          	bne	a5,a4,830 <ResetVarNextLevel+0x2e>
     83e:	860188a3          	sb	zero,-1935(gp) # 20000071 <keyS>
     842:	86018823          	sb	zero,-1936(gp) # 20000070 <LevelMult>
     846:	8082                	ret

00000848 <DLY_ticks>:
     848:	e000f7b7          	lui	a5,0xe000f
     84c:	479c                	lw	a5,8(a5)
     84e:	e000f737          	lui	a4,0xe000f
     852:	953e                	add	a0,a0,a5
     854:	471c                	lw	a5,8(a4)
     856:	8f89                	sub	a5,a5,a0
     858:	fe07cee3          	bltz	a5,854 <DLY_ticks+0xc>
     85c:	8082                	ret

0000085e <Sound>:
     85e:	0ff00793          	li	a5,255
     862:	1141                	add	sp,sp,-16
     864:	40a78533          	sub	a0,a5,a0
     868:	c226                	sw	s1,4(sp)
     86a:	00151493          	sll	s1,a0,0x1
     86e:	94aa                	add	s1,s1,a0
     870:	c422                	sw	s0,8(sp)
     872:	00249793          	sll	a5,s1,0x2
     876:	fff58413          	add	s0,a1,-1
     87a:	c606                	sw	ra,12(sp)
     87c:	0ff47413          	zext.b	s0,s0
     880:	c03e                	sw	a5,0(sp)
     882:	400117b7          	lui	a5,0x40011
     886:	4502                	lw	a0,0(sp)
     888:	80078493          	add	s1,a5,-2048 # 40010800 <__global_pointer$+0x20010000>
     88c:	4709                	li	a4,2
     88e:	c8d8                	sw	a4,20(s1)
     890:	3f65                	jal	848 <DLY_ticks>
     892:	4502                	lw	a0,0(sp)
     894:	4709                	li	a4,2
     896:	c898                	sw	a4,16(s1)
     898:	3f45                	jal	848 <DLY_ticks>
     89a:	147d                	add	s0,s0,-1
     89c:	0ff47413          	zext.b	s0,s0
     8a0:	0ff00793          	li	a5,255
     8a4:	fcf41fe3          	bne	s0,a5,882 <Sound+0x24>
     8a8:	40b2                	lw	ra,12(sp)
     8aa:	4422                	lw	s0,8(sp)
     8ac:	4492                	lw	s1,4(sp)
     8ae:	0141                	add	sp,sp,16
     8b0:	8082                	ret

000008b2 <sound.part.0>:
     8b2:	1151                	add	sp,sp,-12
     8b4:	c222                	sw	s0,4(sp)
     8b6:	c406                	sw	ra,8(sp)
     8b8:	0ff00413          	li	s0,255
     8bc:	8522                	mv	a0,s0
     8be:	4585                	li	a1,1
     8c0:	3f79                	jal	85e <Sound>
     8c2:	147d                	add	s0,s0,-1
     8c4:	0ff47413          	zext.b	s0,s0
     8c8:	4789                	li	a5,2
     8ca:	fef419e3          	bne	s0,a5,8bc <sound.part.0+0xa>
     8ce:	40a2                	lw	ra,8(sp)
     8d0:	4412                	lw	s0,4(sp)
     8d2:	0131                	add	sp,sp,12
     8d4:	8082                	ret

000008d6 <NextLevel>:
     8d6:	1151                	add	sp,sp,-12
     8d8:	c406                	sw	ra,8(sp)
     8da:	3725                	jal	802 <ResetVarNextLevel>
     8dc:	86f1c783          	lbu	a5,-1937(gp) # 2000006f <levelType>
     8e0:	0785                	add	a5,a5,1
     8e2:	86f187a3          	sb	a5,-1937(gp) # 2000006f <levelType>
     8e6:	37f1                	jal	8b2 <sound.part.0>
     8e8:	37e9                	jal	8b2 <sound.part.0>
     8ea:	37e1                	jal	8b2 <sound.part.0>
     8ec:	40a2                	lw	ra,8(sp)
     8ee:	0131                	add	sp,sp,12
     8f0:	b7c9                	j	8b2 <sound.part.0>

000008f2 <I2C_start.constprop.0>:
     8f2:	400057b7          	lui	a5,0x40005
     8f6:	40078693          	add	a3,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
     8fa:	0186d703          	lhu	a4,24(a3)
     8fe:	8b09                	and	a4,a4,2
     900:	ff6d                	bnez	a4,8fa <I2C_start.constprop.0+0x8>
     902:	4007d703          	lhu	a4,1024(a5)
     906:	10076713          	or	a4,a4,256
     90a:	40e79023          	sh	a4,1024(a5)
     90e:	400057b7          	lui	a5,0x40005
     912:	40078793          	add	a5,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
     916:	0147d703          	lhu	a4,20(a5)
     91a:	8b05                	and	a4,a4,1
     91c:	df6d                	beqz	a4,916 <I2C_start.constprop.0+0x24>
     91e:	07800713          	li	a4,120
     922:	00e79823          	sh	a4,16(a5)
     926:	400056b7          	lui	a3,0x40005
     92a:	00820737          	lui	a4,0x820
     92e:	40068693          	add	a3,a3,1024 # 40005400 <__global_pointer$+0x20004c00>
     932:	070d                	add	a4,a4,3 # 820003 <_data_lma+0x81db67>
     934:	0146d783          	lhu	a5,20(a3)
     938:	0186d603          	lhu	a2,24(a3)
     93c:	07c2                	sll	a5,a5,0x10
     93e:	8fd1                	or	a5,a5,a2
     940:	8ff9                	and	a5,a5,a4
     942:	fee799e3          	bne	a5,a4,934 <I2C_start.constprop.0+0x42>
     946:	8082                	ret

00000948 <OLED_data_start>:
     948:	1151                	add	sp,sp,-12
     94a:	c406                	sw	ra,8(sp)
     94c:	375d                	jal	8f2 <I2C_start.constprop.0>
     94e:	40a2                	lw	ra,8(sp)
     950:	04000513          	li	a0,64
     954:	0131                	add	sp,sp,12
     956:	b349                	j	6d8 <I2C_write>

00000958 <OLED_setpos.constprop.0>:
     958:	1151                	add	sp,sp,-12
     95a:	c406                	sw	ra,8(sp)
     95c:	c222                	sw	s0,4(sp)
     95e:	842a                	mv	s0,a0
     960:	3f49                	jal	8f2 <I2C_start.constprop.0>
     962:	4501                	li	a0,0
     964:	3b95                	jal	6d8 <I2C_write>
     966:	0b046513          	or	a0,s0,176
     96a:	33bd                	jal	6d8 <I2C_write>
     96c:	4501                	li	a0,0
     96e:	33ad                	jal	6d8 <I2C_write>
     970:	4541                	li	a0,16
     972:	339d                	jal	6d8 <I2C_write>
     974:	4412                	lw	s0,4(sp)
     976:	40a2                	lw	ra,8(sp)
     978:	0131                	add	sp,sp,12
     97a:	bb9d                	j	6f0 <I2C_stop>

0000097c <sound.constprop.0>:
     97c:	1151                	add	sp,sp,-12
     97e:	45a9                	li	a1,10
     980:	0d200513          	li	a0,210
     984:	c406                	sw	ra,8(sp)
     986:	3de1                	jal	85e <Sound>
     988:	4589                	li	a1,2
     98a:	0f000513          	li	a0,240
     98e:	3dc1                	jal	85e <Sound>
     990:	40a2                	lw	ra,8(sp)
     992:	4595                	li	a1,5
     994:	0b400513          	li	a0,180
     998:	0131                	add	sp,sp,12
     99a:	b5d1                	j	85e <Sound>

0000099c <main>:
     99c:	400117b7          	lui	a5,0x40011
     9a0:	4398                	lw	a4,0(a5)
     9a2:	76c5                	lui	a3,0xffff1
     9a4:	16fd                	add	a3,a3,-1 # ffff0fff <__global_pointer$+0xdfff07ff>
     9a6:	715d                	add	sp,sp,-80
     9a8:	8f75                	and	a4,a4,a3
     9aa:	66a1                	lui	a3,0x8
     9ac:	c686                	sw	ra,76(sp)
     9ae:	c4a2                	sw	s0,72(sp)
     9b0:	c2a6                	sw	s1,68(sp)
     9b2:	8f55                	or	a4,a4,a3
     9b4:	c398                	sw	a4,0(a5)
     9b6:	4721                	li	a4,8
     9b8:	cb98                	sw	a4,16(a5)
     9ba:	4398                	lw	a4,0(a5)
     9bc:	f10006b7          	lui	a3,0xf1000
     9c0:	16fd                	add	a3,a3,-1 # f0ffffff <__global_pointer$+0xd0fff7ff>
     9c2:	8f75                	and	a4,a4,a3
     9c4:	080006b7          	lui	a3,0x8000
     9c8:	8f55                	or	a4,a4,a3
     9ca:	c398                	sw	a4,0(a5)
     9cc:	04000713          	li	a4,64
     9d0:	cb98                	sw	a4,16(a5)
     9d2:	4398                	lw	a4,0(a5)
     9d4:	fff106b7          	lui	a3,0xfff10
     9d8:	16fd                	add	a3,a3,-1 # fff0ffff <__global_pointer$+0xdff0f7ff>
     9da:	8f75                	and	a4,a4,a3
     9dc:	000806b7          	lui	a3,0x80
     9e0:	8f55                	or	a4,a4,a3
     9e2:	c398                	sw	a4,0(a5)
     9e4:	4741                	li	a4,16
     9e6:	cb98                	sw	a4,16(a5)
     9e8:	4398                	lw	a4,0(a5)
     9ea:	800006b7          	lui	a3,0x80000
     9ee:	757d                	lui	a0,0xfffff
     9f0:	0712                	sll	a4,a4,0x4
     9f2:	8311                	srl	a4,a4,0x4
     9f4:	8f55                	or	a4,a4,a3
     9f6:	c398                	sw	a4,0(a5)
     9f8:	08000713          	li	a4,128
     9fc:	cb98                	sw	a4,16(a5)
     9fe:	80078713          	add	a4,a5,-2048 # 40010800 <__global_pointer$+0x20010000>
     a02:	4314                	lw	a3,0(a4)
     a04:	0ff50613          	add	a2,a0,255 # fffff0ff <__global_pointer$+0xdfffe8ff>
     a08:	6585                	lui	a1,0x1
     a0a:	8ef1                	and	a3,a3,a2
     a0c:	80058613          	add	a2,a1,-2048 # 800 <CollisionCheck+0xca>
     a10:	8ed1                	or	a3,a3,a2
     a12:	c314                	sw	a3,0(a4)
     a14:	4611                	li	a2,4
     a16:	cb10                	sw	a2,16(a4)
     a18:	4394                	lw	a3,0(a5)
     a1a:	4305                	li	t1,1
     a1c:	002002b7          	lui	t0,0x200
     a20:	9ac1                	and	a3,a3,-16
     a22:	0086e693          	or	a3,a3,8
     a26:	c394                	sw	a3,0(a5)
     a28:	0067a823          	sw	t1,16(a5)
     a2c:	4314                	lw	a3,0(a4)
     a2e:	053d                	add	a0,a0,15
     a30:	dd058593          	add	a1,a1,-560
     a34:	f0f6f693          	and	a3,a3,-241
     a38:	0106e693          	or	a3,a3,16
     a3c:	c314                	sw	a3,0(a4)
     a3e:	4689                	li	a3,2
     a40:	cb14                	sw	a3,16(a4)
     a42:	40021737          	lui	a4,0x40021
     a46:	4f14                	lw	a3,24(a4)
     a48:	6489                	lui	s1,0x2
     a4a:	4401                	li	s0,0
     a4c:	0116e693          	or	a3,a3,17
     a50:	cf14                	sw	a3,24(a4)
     a52:	4f54                	lw	a3,28(a4)
     a54:	11048493          	add	s1,s1,272 # 2110 <OLED_INIT_CMD>
     a58:	0056e6b3          	or	a3,a3,t0
     a5c:	cf54                	sw	a3,28(a4)
     a5e:	4398                	lw	a4,0(a5)
     a60:	8f69                	and	a4,a4,a0
     a62:	8f4d                	or	a4,a4,a1
     a64:	c398                	sw	a4,0(a5)
     a66:	40005737          	lui	a4,0x40005
     a6a:	77e1                	lui	a5,0xffff8
     a6c:	40c71223          	sh	a2,1028(a4) # 40005404 <__global_pointer$+0x20004c04>
     a70:	07a9                	add	a5,a5,10 # ffff800a <__global_pointer$+0xdfff780a>
     a72:	40f71e23          	sh	a5,1052(a4)
     a76:	40671023          	sh	t1,1024(a4)
     a7a:	3da5                	jal	8f2 <I2C_start.constprop.0>
     a7c:	4501                	li	a0,0
     a7e:	39a9                	jal	6d8 <I2C_write>
     a80:	009407b3          	add	a5,s0,s1
     a84:	0007c503          	lbu	a0,0(a5)
     a88:	0405                	add	s0,s0,1
     a8a:	31b9                	jal	6d8 <I2C_write>
     a8c:	47c5                	li	a5,17
     a8e:	fef419e3          	bne	s0,a5,a80 <main+0xe4>
     a92:	39b9                	jal	6f0 <I2C_stop>
     a94:	40021737          	lui	a4,0x40021
     a98:	4f1c                	lw	a5,24(a4)
     a9a:	40012437          	lui	s0,0x40012
     a9e:	40040413          	add	s0,s0,1024 # 40012400 <__global_pointer$+0x20011c00>
     aa2:	2017e793          	or	a5,a5,513
     aa6:	cf1c                	sw	a5,24(a4)
     aa8:	000e07b7          	lui	a5,0xe0
     aac:	0785                	add	a5,a5,1 # e0001 <_data_lma+0xddb65>
     aae:	c41c                	sw	a5,8(s0)
     ab0:	07800513          	li	a0,120
     ab4:	3b51                	jal	848 <DLY_ticks>
     ab6:	441c                	lw	a5,8(s0)
     ab8:	400126b7          	lui	a3,0x40012
     abc:	0087e793          	or	a5,a5,8
     ac0:	c41c                	sw	a5,8(s0)
     ac2:	40068793          	add	a5,a3,1024 # 40012400 <__global_pointer$+0x20011c00>
     ac6:	4798                	lw	a4,8(a5)
     ac8:	8b21                	and	a4,a4,8
     aca:	ff65                	bnez	a4,ac2 <main+0x126>
     acc:	4798                	lw	a4,8(a5)
     ace:	00476713          	or	a4,a4,4
     ad2:	c798                	sw	a4,8(a5)
     ad4:	40012737          	lui	a4,0x40012
     ad8:	40070793          	add	a5,a4,1024 # 40012400 <__global_pointer$+0x20011c00>
     adc:	479c                	lw	a5,8(a5)
     ade:	8b91                	and	a5,a5,4
     ae0:	ffe5                	bnez	a5,ad8 <main+0x13c>
     ae2:	6789                	lui	a5,0x2
     ae4:	12478793          	add	a5,a5,292 # 2124 <start>
     ae8:	da3e                	sw	a5,52(sp)
     aea:	3d49                	jal	97c <sound.constprop.0>
     aec:	33d9                	jal	8b2 <sound.part.0>
     aee:	33d1                	jal	8b2 <sound.part.0>
     af0:	3571                	jal	97c <sound.constprop.0>
     af2:	33c1                	jal	8b2 <sound.part.0>
     af4:	3b7d                	jal	8b2 <sound.part.0>
     af6:	0024a537          	lui	a0,0x24a
     afa:	f0050513          	add	a0,a0,-256 # 249f00 <_data_lma+0x247a64>
     afe:	33a9                	jal	848 <DLY_ticks>
     b00:	3309                	jal	802 <ResetVarNextLevel>
     b02:	860187a3          	sb	zero,-1937(gp) # 2000006f <levelType>
     b06:	471d                	li	a4,7
     b08:	86e186a3          	sb	a4,-1939(gp) # 2000006d <LIVE>
     b0c:	f0000793          	li	a5,-256
     b10:	c03e                	sw	a5,0(sp)
     b12:	c802                	sw	zero,16(sp)
     b14:	4542                	lw	a0,16(sp)
     b16:	3589                	jal	958 <OLED_setpos.constprop.0>
     b18:	3d05                	jal	948 <OLED_data_start>
     b1a:	4782                	lw	a5,0(sp)
     b1c:	5752                	lw	a4,52(sp)
     b1e:	973e                	add	a4,a4,a5
     b20:	0e000793          	li	a5,224
     b24:	03f00693          	li	a3,63
     b28:	00178493          	add	s1,a5,1
     b2c:	00170413          	add	s0,a4,1
     b30:	00f6ef63          	bltu	a3,a5,b4e <main+0x1b2>
     b34:	46c2                	lw	a3,16(sp)
     b36:	478d                	li	a5,3
     b38:	0ff00513          	li	a0,255
     b3c:	00d7f463          	bgeu	a5,a3,b44 <main+0x1a8>
     b40:	fe274503          	lbu	a0,-30(a4)
     b44:	3e51                	jal	6d8 <I2C_write>
     b46:	0ff4f793          	zext.b	a5,s1
     b4a:	8722                	mv	a4,s0
     b4c:	bfe1                	j	b24 <main+0x188>
     b4e:	0ff00513          	li	a0,255
     b52:	3659                	jal	6d8 <I2C_write>
     b54:	0ff4f793          	zext.b	a5,s1
     b58:	06000693          	li	a3,96
     b5c:	8722                	mv	a4,s0
     b5e:	fcd793e3          	bne	a5,a3,b24 <main+0x188>
     b62:	3679                	jal	6f0 <I2C_stop>
     b64:	47c2                	lw	a5,16(sp)
     b66:	0785                	add	a5,a5,1
     b68:	0ff7f793          	zext.b	a5,a5
     b6c:	c83e                	sw	a5,16(sp)
     b6e:	4782                	lw	a5,0(sp)
     b70:	4742                	lw	a4,16(sp)
     b72:	04078793          	add	a5,a5,64
     b76:	c03e                	sw	a5,0(sp)
     b78:	47a1                	li	a5,8
     b7a:	f8f71de3          	bne	a4,a5,b14 <main+0x178>
     b7e:	00494537          	lui	a0,0x494
     b82:	e0050513          	add	a0,a0,-512 # 493e00 <_data_lma+0x491964>
     b86:	31c9                	jal	848 <DLY_ticks>
     b88:	40011737          	lui	a4,0x40011
     b8c:	80070793          	add	a5,a4,-2048 # 40010800 <__global_pointer$+0x20010000>
     b90:	479c                	lw	a5,8(a5)
     b92:	8b91                	and	a5,a5,4
     b94:	c781                	beqz	a5,b9c <main+0x200>
     b96:	471c                	lw	a5,8(a4)
     b98:	8b85                	and	a5,a5,1
     b9a:	fbed                	bnez	a5,b8c <main+0x1f0>
     b9c:	33c5                	jal	97c <sound.constprop.0>
     b9e:	3195                	jal	802 <ResetVarNextLevel>
     ba0:	86f1c783          	lbu	a5,-1937(gp) # 2000006f <levelType>
     ba4:	cc3e                	sw	a5,24(sp)
     ba6:	4762                	lw	a4,24(sp)
     ba8:	47a5                	li	a5,9
     baa:	f4e7e0e3          	bltu	a5,a4,aea <main+0x14e>
     bae:	00494537          	lui	a0,0x494
     bb2:	e0050513          	add	a0,a0,-512 # 493e00 <_data_lma+0x491964>
     bb6:	3949                	jal	848 <DLY_ticks>
     bb8:	000b07b7          	lui	a5,0xb0
     bbc:	de3e                	sw	a5,60(sp)
     bbe:	478d                	li	a5,3
     bc0:	dc02                	sw	zero,56(sp)
     bc2:	04f11023          	sh	a5,64(sp)
     bc6:	400117b7          	lui	a5,0x40011
     bca:	479c                	lw	a5,8(a5)
     bcc:	8bc1                	and	a5,a5,16
     bce:	efa9                	bnez	a5,c28 <main+0x28c>
     bd0:	86e1c783          	lbu	a5,-1938(gp) # 2000006e <timer>
     bd4:	8b8d                	and	a5,a5,3
     bd6:	eb99                	bnez	a5,bec <main+0x250>
     bd8:	87a1c783          	lbu	a5,-1926(gp) # 2000007a <MainAnim>
     bdc:	4689                	li	a3,2
     bde:	0785                	add	a5,a5,1 # 40011001 <__global_pointer$+0x20010801>
     be0:	0ff7f793          	zext.b	a5,a5
     be4:	10f6eb63          	bltu	a3,a5,cfa <main+0x35e>
     be8:	86f18d23          	sb	a5,-1926(gp) # 2000007a <MainAnim>
     bec:	03c10483          	lb	s1,60(sp)
     bf0:	200007b7          	lui	a5,0x20000
     bf4:	1828                	add	a0,sp,56
     bf6:	00148413          	add	s0,s1,1
     bfa:	0462                	sll	s0,s0,0x18
     bfc:	8461                	sra	s0,s0,0x18
     bfe:	000780a3          	sb	zero,1(a5) # 20000001 <LorR>
     c02:	02810e23          	sb	s0,60(sp)
     c06:	3e05                	jal	736 <CollisionCheck>
     c08:	4785                	li	a5,1
     c0a:	00f51363          	bne	a0,a5,c10 <main+0x274>
     c0e:	8426                	mv	s0,s1
     c10:	02810e23          	sb	s0,60(sp)
     c14:	470d                	li	a4,3
     c16:	03e11783          	lh	a5,62(sp)
     c1a:	00875763          	bge	a4,s0,c28 <main+0x28c>
     c1e:	0785                	add	a5,a5,1
     c20:	02010e23          	sb	zero,60(sp)
     c24:	02f11f23          	sh	a5,62(sp)
     c28:	400117b7          	lui	a5,0x40011
     c2c:	479c                	lw	a5,8(a5)
     c2e:	0807f793          	and	a5,a5,128
     c32:	efb1                	bnez	a5,c8e <main+0x2f2>
     c34:	86e1c783          	lbu	a5,-1938(gp) # 2000006e <timer>
     c38:	8b8d                	and	a5,a5,3
     c3a:	eb99                	bnez	a5,c50 <main+0x2b4>
     c3c:	87a1c783          	lbu	a5,-1926(gp) # 2000007a <MainAnim>
     c40:	4689                	li	a3,2
     c42:	0785                	add	a5,a5,1 # 40011001 <__global_pointer$+0x20010801>
     c44:	0ff7f793          	zext.b	a5,a5
     c48:	0af6ec63          	bltu	a3,a5,d00 <main+0x364>
     c4c:	86f18d23          	sb	a5,-1926(gp) # 2000007a <MainAnim>
     c50:	03c10483          	lb	s1,60(sp)
     c54:	4785                	li	a5,1
     c56:	20000737          	lui	a4,0x20000
     c5a:	fff48413          	add	s0,s1,-1
     c5e:	0462                	sll	s0,s0,0x18
     c60:	8461                	sra	s0,s0,0x18
     c62:	1828                	add	a0,sp,56
     c64:	00f700a3          	sb	a5,1(a4) # 20000001 <LorR>
     c68:	02810e23          	sb	s0,60(sp)
     c6c:	34e9                	jal	736 <CollisionCheck>
     c6e:	4785                	li	a5,1
     c70:	00f51363          	bne	a0,a5,c76 <main+0x2da>
     c74:	8426                	mv	s0,s1
     c76:	02810e23          	sb	s0,60(sp)
     c7a:	03e11783          	lh	a5,62(sp)
     c7e:	00045863          	bgez	s0,c8e <main+0x2f2>
     c82:	470d                	li	a4,3
     c84:	17fd                	add	a5,a5,-1
     c86:	02e10e23          	sb	a4,60(sp)
     c8a:	02f11f23          	sh	a5,62(sp)
     c8e:	03e11703          	lh	a4,62(sp)
     c92:	47a5                	li	a5,9
     c94:	02e7c363          	blt	a5,a4,cba <main+0x31e>
     c98:	87c18683          	lb	a3,-1924(gp) # 2000007c <scrool>
     c9c:	00d05f63          	blez	a3,cba <main+0x31e>
     ca0:	87b18783          	lb	a5,-1925(gp) # 2000007b <step4>
     ca4:	450d                	li	a0,3
     ca6:	06f55063          	bge	a0,a5,d06 <main+0x36a>
     caa:	16fd                	add	a3,a3,-1
     cac:	0705                	add	a4,a4,1
     cae:	86018da3          	sb	zero,-1925(gp) # 2000007b <step4>
     cb2:	86d18e23          	sb	a3,-1924(gp) # 2000007c <scrool>
     cb6:	02e11f23          	sh	a4,62(sp)
     cba:	03e11703          	lh	a4,62(sp)
     cbe:	47c9                	li	a5,18
     cc0:	00e7db63          	bge	a5,a4,cd6 <main+0x33a>
     cc4:	87b1c783          	lbu	a5,-1925(gp) # 2000007b <step4>
     cc8:	17fd                	add	a5,a5,-1
     cca:	07e2                	sll	a5,a5,0x18
     ccc:	87e1                	sra	a5,a5,0x18
     cce:	0407c563          	bltz	a5,d18 <main+0x37c>
     cd2:	86f18da3          	sb	a5,-1925(gp) # 2000007b <step4>
     cd6:	04011783          	lh	a5,64(sp)
     cda:	ca3e                	sw	a5,20(sp)
     cdc:	4752                	lw	a4,20(sp)
     cde:	4799                	li	a5,6
     ce0:	04e7d863          	bge	a5,a4,d30 <main+0x394>
     ce4:	36f9                	jal	8b2 <sound.part.0>
     ce6:	86d1c783          	lbu	a5,-1939(gp) # 2000006d <LIVE>
     cea:	17fd                	add	a5,a5,-1
     cec:	0ff7f793          	zext.b	a5,a5
     cf0:	86f186a3          	sb	a5,-1939(gp) # 2000006d <LIVE>
     cf4:	ea0795e3          	bnez	a5,b9e <main+0x202>
     cf8:	bbcd                	j	aea <main+0x14e>
     cfa:	86018d23          	sb	zero,-1926(gp) # 2000007a <MainAnim>
     cfe:	b5fd                	j	bec <main+0x250>
     d00:	86018d23          	sb	zero,-1926(gp) # 2000007a <MainAnim>
     d04:	b7b1                	j	c50 <main+0x2b4>
     d06:	0785                	add	a5,a5,1
     d08:	07e2                	sll	a5,a5,0x18
     d0a:	87e1                	sra	a5,a5,0x18
     d0c:	86f18da3          	sb	a5,-1925(gp) # 2000007b <step4>
     d10:	4511                	li	a0,4
     d12:	f8a78ce3          	beq	a5,a0,caa <main+0x30e>
     d16:	b755                	j	cba <main+0x31e>
     d18:	478d                	li	a5,3
     d1a:	86f18da3          	sb	a5,-1925(gp) # 2000007b <step4>
     d1e:	87c1c783          	lbu	a5,-1924(gp) # 2000007c <scrool>
     d22:	177d                	add	a4,a4,-1
     d24:	02e11f23          	sh	a4,62(sp)
     d28:	0785                	add	a5,a5,1
     d2a:	86f18e23          	sb	a5,-1924(gp) # 2000007c <scrool>
     d2e:	b765                	j	cd6 <main+0x33a>
     d30:	87c18703          	lb	a4,-1924(gp) # 2000007c <scrool>
     d34:	0ff77793          	zext.b	a5,a4
     d38:	c63e                	sw	a5,12(sp)
     d3a:	200007b7          	lui	a5,0x20000
     d3e:	08078693          	add	a3,a5,128 # 20000080 <Map>
     d42:	08078793          	add	a5,a5,128
     d46:	c43e                	sw	a5,8(sp)
     d48:	47e2                	lw	a5,24(sp)
     d4a:	c036                	sw	a3,0(sp)
     d4c:	84ba                	mv	s1,a4
     d4e:	17fd                	add	a5,a5,-1
     d50:	0ff7f793          	zext.b	a5,a5
     d54:	00279693          	sll	a3,a5,0x2
     d58:	ce3e                	sw	a5,28(sp)
     d5a:	6789                	lui	a5,0x2
     d5c:	0ac78793          	add	a5,a5,172 # 20ac <oled_min.c.cce2e8ab+0x59>
     d60:	97b6                	add	a5,a5,a3
     d62:	4732                	lw	a4,12(sp)
     d64:	d23e                	sw	a5,36(sp)
     d66:	6789                	lui	a5,0x2
     d68:	39078793          	add	a5,a5,912 # 2390 <map1couche2>
     d6c:	c23a                	sw	a4,4(sp)
     d6e:	d03e                	sw	a5,32(sp)
     d70:	4772                	lw	a4,28(sp)
     d72:	46a1                	li	a3,8
     d74:	41f4d793          	sra	a5,s1,0x1f
     d78:	00e6e563          	bltu	a3,a4,d82 <main+0x3e6>
     d7c:	5712                	lw	a4,36(sp)
     d7e:	4314                	lw	a3,0(a4)
     d80:	8682                	jr	a3
     d82:	0037f613          	and	a2,a5,3
     d86:	6689                	lui	a3,0x2
     d88:	9626                	add	a2,a2,s1
     d8a:	8609                	sra	a2,a2,0x2
     d8c:	48468793          	add	a5,a3,1156 # 2484 <Level0>
     d90:	97b2                	add	a5,a5,a2
     d92:	0007c783          	lbu	a5,0(a5)
     d96:	80000437          	lui	s0,0x80000
     d9a:	040d                	add	s0,s0,3 # 80000003 <__global_pointer$+0x5ffff803>
     d9c:	86f18823          	sb	a5,-1936(gp) # 20000070 <LevelMult>
     da0:	8c65                	and	s0,s0,s1
     da2:	00045663          	bgez	s0,dae <main+0x412>
     da6:	147d                	add	s0,s0,-1
     da8:	ffc46413          	or	s0,s0,-4
     dac:	0405                	add	s0,s0,1
     dae:	078a                	sll	a5,a5,0x2
     db0:	943e                	add	s0,s0,a5
     db2:	5782                	lw	a5,32(sp)
     db4:	97a2                	add	a5,a5,s0
     db6:	0007c503          	lbu	a0,0(a5)
     dba:	47ad                	li	a5,11
     dbc:	00f51663          	bne	a0,a5,dc8 <main+0x42c>
     dc0:	4512                	lw	a0,4(sp)
     dc2:	4585                	li	a1,1
     dc4:	94bff0ef          	jal	70e <delKey>
     dc8:	4782                	lw	a5,0(sp)
     dca:	02a78123          	sb	a0,34(a5)
     dce:	6789                	lui	a5,0x2
     dd0:	35c78793          	add	a5,a5,860 # 235c <map1couche3>
     dd4:	97a2                	add	a5,a5,s0
     dd6:	0007c503          	lbu	a0,0(a5)
     dda:	47ad                	li	a5,11
     ddc:	00f51663          	bne	a0,a5,de8 <main+0x44c>
     de0:	4512                	lw	a0,4(sp)
     de2:	4589                	li	a1,2
     de4:	92bff0ef          	jal	70e <delKey>
     de8:	4782                	lw	a5,0(sp)
     dea:	04a78223          	sb	a0,68(a5)
     dee:	6789                	lui	a5,0x2
     df0:	32878793          	add	a5,a5,808 # 2328 <map1couche4>
     df4:	97a2                	add	a5,a5,s0
     df6:	0007c503          	lbu	a0,0(a5)
     dfa:	47ad                	li	a5,11
     dfc:	00f51663          	bne	a0,a5,e08 <main+0x46c>
     e00:	4512                	lw	a0,4(sp)
     e02:	458d                	li	a1,3
     e04:	90bff0ef          	jal	70e <delKey>
     e08:	4782                	lw	a5,0(sp)
     e0a:	06a78323          	sb	a0,102(a5)
     e0e:	6789                	lui	a5,0x2
     e10:	2f478793          	add	a5,a5,756 # 22f4 <map1couche5>
     e14:	97a2                	add	a5,a5,s0
     e16:	0007c503          	lbu	a0,0(a5)
     e1a:	47ad                	li	a5,11
     e1c:	00f51663          	bne	a0,a5,e28 <main+0x48c>
     e20:	4512                	lw	a0,4(sp)
     e22:	4591                	li	a1,4
     e24:	8ebff0ef          	jal	70e <delKey>
     e28:	4782                	lw	a5,0(sp)
     e2a:	08a78423          	sb	a0,136(a5)
     e2e:	6789                	lui	a5,0x2
     e30:	2c078793          	add	a5,a5,704 # 22c0 <map1couche6>
     e34:	97a2                	add	a5,a5,s0
     e36:	0007c503          	lbu	a0,0(a5)
     e3a:	47ad                	li	a5,11
     e3c:	00f51663          	bne	a0,a5,e48 <main+0x4ac>
     e40:	4512                	lw	a0,4(sp)
     e42:	4595                	li	a1,5
     e44:	8cbff0ef          	jal	70e <delKey>
     e48:	4782                	lw	a5,0(sp)
     e4a:	0aa78523          	sb	a0,170(a5)
     e4e:	6789                	lui	a5,0x2
     e50:	28c78793          	add	a5,a5,652 # 228c <map1couche7>
     e54:	97a2                	add	a5,a5,s0
     e56:	0007c503          	lbu	a0,0(a5)
     e5a:	47ad                	li	a5,11
     e5c:	00f51663          	bne	a0,a5,e68 <main+0x4cc>
     e60:	4512                	lw	a0,4(sp)
     e62:	4599                	li	a1,6
     e64:	8abff0ef          	jal	70e <delKey>
     e68:	4782                	lw	a5,0(sp)
     e6a:	0ca78623          	sb	a0,204(a5)
     e6e:	6789                	lui	a5,0x2
     e70:	25878793          	add	a5,a5,600 # 2258 <map1couche8>
     e74:	97a2                	add	a5,a5,s0
     e76:	0007c503          	lbu	a0,0(a5)
     e7a:	47ad                	li	a5,11
     e7c:	00f51663          	bne	a0,a5,e88 <main+0x4ec>
     e80:	4512                	lw	a0,4(sp)
     e82:	459d                	li	a1,7
     e84:	88bff0ef          	jal	70e <delKey>
     e88:	4782                	lw	a5,0(sp)
     e8a:	0485                	add	s1,s1,1
     e8c:	0ea78723          	sb	a0,238(a5)
     e90:	0785                	add	a5,a5,1
     e92:	c03e                	sw	a5,0(sp)
     e94:	4792                	lw	a5,4(sp)
     e96:	4702                	lw	a4,0(sp)
     e98:	0785                	add	a5,a5,1
     e9a:	0ff7f793          	zext.b	a5,a5
     e9e:	c23e                	sw	a5,4(sp)
     ea0:	200007b7          	lui	a5,0x20000
     ea4:	0a178793          	add	a5,a5,161 # 200000a1 <Map+0x21>
     ea8:	ece794e3          	bne	a5,a4,d70 <main+0x3d4>
     eac:	87918783          	lb	a5,-1927(gp) # 20000079 <Jump>
     eb0:	03d10403          	lb	s0,61(sp)
     eb4:	22079163          	bnez	a5,10d6 <main+0x73a>
     eb8:	00240793          	add	a5,s0,2
     ebc:	07e2                	sll	a5,a5,0x18
     ebe:	87e1                	sra	a5,a5,0x18
     ec0:	471d                	li	a4,7
     ec2:	1ef74c63          	blt	a4,a5,10ba <main+0x71e>
     ec6:	02f10ea3          	sb	a5,61(sp)
     eca:	1828                	add	a0,sp,56
     ecc:	86bff0ef          	jal	736 <CollisionCheck>
     ed0:	1ea04c63          	bgtz	a0,10c8 <main+0x72c>
     ed4:	40011737          	lui	a4,0x40011
     ed8:	80070793          	add	a5,a4,-2048 # 40010800 <__global_pointer$+0x20010000>
     edc:	479c                	lw	a5,8(a5)
     ede:	8b91                	and	a5,a5,4
     ee0:	c781                	beqz	a5,ee8 <main+0x54c>
     ee2:	471c                	lw	a5,8(a4)
     ee4:	8b85                	and	a5,a5,1
     ee6:	e799                	bnez	a5,ef4 <main+0x558>
     ee8:	87818783          	lb	a5,-1928(gp) # 20000078 <jumpcancel>
     eec:	03d10403          	lb	s0,61(sp)
     ef0:	1e078d63          	beqz	a5,10ea <main+0x74e>
     ef4:	40011737          	lui	a4,0x40011
     ef8:	80070793          	add	a5,a4,-2048 # 40010800 <__global_pointer$+0x20010000>
     efc:	479c                	lw	a5,8(a5)
     efe:	8b91                	and	a5,a5,4
     f00:	c791                	beqz	a5,f0c <main+0x570>
     f02:	471c                	lw	a5,8(a4)
     f04:	8b85                	and	a5,a5,1
     f06:	c399                	beqz	a5,f0c <main+0x570>
     f08:	86018c23          	sb	zero,-1928(gp) # 20000078 <jumpcancel>
     f0c:	87918403          	lb	s0,-1927(gp) # 20000079 <Jump>
     f10:	04011703          	lh	a4,64(sp)
     f14:	03d10783          	lb	a5,61(sp)
     f18:	00805d63          	blez	s0,f32 <main+0x596>
     f1c:	0ff47413          	zext.b	s0,s0
     f20:	00141693          	sll	a3,s0,0x1
     f24:	8f95                	sub	a5,a5,a3
     f26:	07e2                	sll	a5,a5,0x18
     f28:	87e1                	sra	a5,a5,0x18
     f2a:	1c07cc63          	bltz	a5,1102 <main+0x766>
     f2e:	02f10ea3          	sb	a5,61(sp)
     f32:	03d10783          	lb	a5,61(sp)
     f36:	4722                	lw	a4,8(sp)
     f38:	ce3e                	sw	a5,28(sp)
     f3a:	04011783          	lh	a5,64(sp)
     f3e:	c03e                	sw	a5,0(sp)
     f40:	03e11783          	lh	a5,62(sp)
     f44:	c23e                	sw	a5,4(sp)
     f46:	4782                	lw	a5,0(sp)
     f48:	00479493          	sll	s1,a5,0x4
     f4c:	97a6                	add	a5,a5,s1
     f4e:	0786                	sll	a5,a5,0x1
     f50:	97ba                	add	a5,a5,a4
     f52:	4712                	lw	a4,4(sp)
     f54:	97ba                	add	a5,a5,a4
     f56:	0007c403          	lbu	s0,0(a5)
     f5a:	00170793          	add	a5,a4,1
     f5e:	ca3e                	sw	a5,20(sp)
     f60:	47f2                	lw	a5,28(sp)
     f62:	3a079463          	bnez	a5,130a <i2c_tx.c.154172f4+0x169>
     f66:	47ad                	li	a5,11
     f68:	02f41663          	bne	s0,a5,f94 <main+0x5f8>
     f6c:	8711c703          	lbu	a4,-1935(gp) # 20000071 <keyS>
     f70:	99018793          	add	a5,gp,-1648 # 20000190 <key>
     f74:	00171613          	sll	a2,a4,0x1
     f78:	97b2                	add	a5,a5,a2
     f7a:	4602                	lw	a2,0(sp)
     f7c:	4592                	lw	a1,4(sp)
     f7e:	0705                	add	a4,a4,1
     f80:	00c780a3          	sb	a2,1(a5)
     f84:	4632                	lw	a2,12(sp)
     f86:	86e188a3          	sb	a4,-1935(gp) # 20000071 <keyS>
     f8a:	962e                	add	a2,a2,a1
     f8c:	00c78023          	sb	a2,0(a5)
     f90:	9edff0ef          	jal	97c <sound.constprop.0>
     f94:	4782                	lw	a5,0(sp)
     f96:	4722                	lw	a4,8(sp)
     f98:	46ad                	li	a3,11
     f9a:	97a6                	add	a5,a5,s1
     f9c:	0786                	sll	a5,a5,0x1
     f9e:	97ba                	add	a5,a5,a4
     fa0:	4752                	lw	a4,20(sp)
     fa2:	973e                	add	a4,a4,a5
     fa4:	00074483          	lbu	s1,0(a4)
     fa8:	4712                	lw	a4,4(sp)
     faa:	0709                	add	a4,a4,2
     fac:	97ba                	add	a5,a5,a4
     fae:	1cd49f63          	bne	s1,a3,118c <main+0x7f0>
     fb2:	8711c683          	lbu	a3,-1935(gp) # 20000071 <keyS>
     fb6:	d03e                	sw	a5,32(sp)
     fb8:	4782                	lw	a5,0(sp)
     fba:	00169613          	sll	a2,a3,0x1
     fbe:	99018713          	add	a4,gp,-1648 # 20000190 <key>
     fc2:	9732                	add	a4,a4,a2
     fc4:	00f700a3          	sb	a5,1(a4)
     fc8:	4612                	lw	a2,4(sp)
     fca:	47b2                	lw	a5,12(sp)
     fcc:	0685                	add	a3,a3,1
     fce:	86d188a3          	sb	a3,-1935(gp) # 20000071 <keyS>
     fd2:	963e                	add	a2,a2,a5
     fd4:	0605                	add	a2,a2,1
     fd6:	00c70023          	sb	a2,0(a4)
     fda:	9a3ff0ef          	jal	97c <sound.constprop.0>
     fde:	5782                	lw	a5,32(sp)
     fe0:	0007c783          	lbu	a5,0(a5)
     fe4:	16979a63          	bne	a5,s1,1158 <main+0x7bc>
     fe8:	8711c703          	lbu	a4,-1935(gp) # 20000071 <keyS>
     fec:	99018793          	add	a5,gp,-1648 # 20000190 <key>
     ff0:	00171693          	sll	a3,a4,0x1
     ff4:	97b6                	add	a5,a5,a3
     ff6:	4682                	lw	a3,0(sp)
     ff8:	4592                	lw	a1,4(sp)
     ffa:	0705                	add	a4,a4,1
     ffc:	00d780a3          	sb	a3,1(a5)
    1000:	46b2                	lw	a3,12(sp)
    1002:	86e188a3          	sb	a4,-1935(gp) # 20000071 <keyS>
    1006:	96ae                	add	a3,a3,a1
    1008:	0689                	add	a3,a3,2
    100a:	00d78023          	sb	a3,0(a5)
    100e:	96fff0ef          	jal	97c <sound.constprop.0>
    1012:	47a1                	li	a5,8
    1014:	24f41863          	bne	s0,a5,1264 <i2c_tx.c.154172f4+0xc3>
    1018:	86c1c783          	lbu	a5,-1940(gp) # 2000006c <injur>
    101c:	2e078563          	beqz	a5,1306 <i2c_tx.c.154172f4+0x165>
    1020:	47b5                	li	a5,13
    1022:	14f48363          	beq	s1,a5,1168 <main+0x7cc>
    1026:	47b9                	li	a5,14
    1028:	ac81                	j	1278 <i2c_tx.c.154172f4+0xd7>
    102a:	0037f613          	and	a2,a5,3
    102e:	6689                	lui	a3,0x2
    1030:	9626                	add	a2,a2,s1
    1032:	8609                	sra	a2,a2,0x2
    1034:	46c68793          	add	a5,a3,1132 # 246c <Level1>
    1038:	bba1                	j	d90 <main+0x3f4>
    103a:	0037f613          	and	a2,a5,3
    103e:	6689                	lui	a3,0x2
    1040:	9626                	add	a2,a2,s1
    1042:	8609                	sra	a2,a2,0x2
    1044:	45868793          	add	a5,a3,1112 # 2458 <Level2>
    1048:	b3a1                	j	d90 <main+0x3f4>
    104a:	0037f613          	and	a2,a5,3
    104e:	6689                	lui	a3,0x2
    1050:	9626                	add	a2,a2,s1
    1052:	8609                	sra	a2,a2,0x2
    1054:	44868793          	add	a5,a3,1096 # 2448 <Level3>
    1058:	bb25                	j	d90 <main+0x3f4>
    105a:	0037f613          	and	a2,a5,3
    105e:	6689                	lui	a3,0x2
    1060:	9626                	add	a2,a2,s1
    1062:	8609                	sra	a2,a2,0x2
    1064:	42868793          	add	a5,a3,1064 # 2428 <Level4>
    1068:	b325                	j	d90 <main+0x3f4>
    106a:	0037f613          	and	a2,a5,3
    106e:	6689                	lui	a3,0x2
    1070:	9626                	add	a2,a2,s1
    1072:	8609                	sra	a2,a2,0x2
    1074:	41468793          	add	a5,a3,1044 # 2414 <Level5>
    1078:	bb21                	j	d90 <main+0x3f4>
    107a:	0037f613          	and	a2,a5,3
    107e:	6689                	lui	a3,0x2
    1080:	9626                	add	a2,a2,s1
    1082:	8609                	sra	a2,a2,0x2
    1084:	40468793          	add	a5,a3,1028 # 2404 <Level6>
    1088:	b321                	j	d90 <main+0x3f4>
    108a:	0037f613          	and	a2,a5,3
    108e:	6689                	lui	a3,0x2
    1090:	9626                	add	a2,a2,s1
    1092:	8609                	sra	a2,a2,0x2
    1094:	3f068793          	add	a5,a3,1008 # 23f0 <Level7>
    1098:	b9e5                	j	d90 <main+0x3f4>
    109a:	0037f613          	and	a2,a5,3
    109e:	6689                	lui	a3,0x2
    10a0:	9626                	add	a2,a2,s1
    10a2:	8609                	sra	a2,a2,0x2
    10a4:	3dc68793          	add	a5,a3,988 # 23dc <Level8>
    10a8:	b1e5                	j	d90 <main+0x3f4>
    10aa:	8b8d                	and	a5,a5,3
    10ac:	6689                	lui	a3,0x2
    10ae:	97a6                	add	a5,a5,s1
    10b0:	8789                	sra	a5,a5,0x2
    10b2:	3c468693          	add	a3,a3,964 # 23c4 <Level9>
    10b6:	97b6                	add	a5,a5,a3
    10b8:	b9e9                	j	d92 <main+0x3f6>
    10ba:	47d2                	lw	a5,20(sp)
    10bc:	02010ea3          	sb	zero,61(sp)
    10c0:	0785                	add	a5,a5,1
    10c2:	04f11023          	sh	a5,64(sp)
    10c6:	b511                	j	eca <main+0x52e>
    10c8:	01410783          	lb	a5,20(sp)
    10cc:	02810ea3          	sb	s0,61(sp)
    10d0:	04f11023          	sh	a5,64(sp)
    10d4:	b501                	j	ed4 <main+0x538>
    10d6:	40011737          	lui	a4,0x40011
    10da:	80070793          	add	a5,a4,-2048 # 40010800 <__global_pointer$+0x20010000>
    10de:	479c                	lw	a5,8(a5)
    10e0:	8b91                	and	a5,a5,4
    10e2:	e00789e3          	beqz	a5,ef4 <main+0x558>
    10e6:	471c                	lw	a5,8(a4)
    10e8:	b531                	j	ef4 <main+0x558>
    10ea:	1828                	add	a0,sp,56
    10ec:	e4aff0ef          	jal	736 <CollisionCheck>
    10f0:	8d41                	or	a0,a0,s0
    10f2:	0562                	sll	a0,a0,0x18
    10f4:	8561                	sra	a0,a0,0x18
    10f6:	de051fe3          	bnez	a0,ef4 <main+0x558>
    10fa:	478d                	li	a5,3
    10fc:	86f18ca3          	sb	a5,-1927(gp) # 20000079 <Jump>
    1100:	bbd5                	j	ef4 <main+0x558>
    1102:	479d                	li	a5,7
    1104:	02f10ea3          	sb	a5,61(sp)
    1108:	fff70793          	add	a5,a4,-1
    110c:	07c2                	sll	a5,a5,0x10
    110e:	147d                	add	s0,s0,-1
    1110:	87c1                	sra	a5,a5,0x10
    1112:	0ff47413          	zext.b	s0,s0
    1116:	04f11023          	sh	a5,64(sp)
    111a:	86818ca3          	sb	s0,-1927(gp) # 20000079 <Jump>
    111e:	00f05e63          	blez	a5,113a <main+0x79e>
    1122:	87818603          	lb	a2,-1928(gp) # 20000078 <jumpcancel>
    1126:	4785                	li	a5,1
    1128:	00f60963          	beq	a2,a5,113a <main+0x79e>
    112c:	1828                	add	a0,sp,56
    112e:	c03a                	sw	a4,0(sp)
    1130:	e06ff0ef          	jal	736 <CollisionCheck>
    1134:	4702                	lw	a4,0(sp)
    1136:	00a05e63          	blez	a0,1152 <main+0x7b6>
    113a:	0762                	sll	a4,a4,0x18
    113c:	8761                	sra	a4,a4,0x18
    113e:	86018ca3          	sb	zero,-1927(gp) # 20000079 <Jump>
    1142:	02010ea3          	sb	zero,61(sp)
    1146:	04e11023          	sh	a4,64(sp)
    114a:	4785                	li	a5,1
    114c:	86f18c23          	sb	a5,-1928(gp) # 20000078 <jumpcancel>
    1150:	b3cd                	j	f32 <main+0x596>
    1152:	de0410e3          	bnez	s0,f32 <main+0x596>
    1156:	bfd5                	j	114a <main+0x7ae>
    1158:	4721                	li	a4,8
    115a:	14e40b63          	beq	s0,a4,12b0 <i2c_tx.c.154172f4+0x10f>
    115e:	04e78263          	beq	a5,a4,11a2 <i2c_tx.c.154172f4+0x1>
    1162:	4735                	li	a4,13
    1164:	14e41963          	bne	s0,a4,12b6 <i2c_tx.c.154172f4+0x115>
    1168:	4762                	lw	a4,24(sp)
    116a:	6789                	lui	a5,0x2
    116c:	24c78793          	add	a5,a5,588 # 224c <KeyinLevel>
    1170:	97ba                	add	a5,a5,a4
    1172:	0007c703          	lbu	a4,0(a5)
    1176:	8711c783          	lbu	a5,-1935(gp) # 20000071 <keyS>
    117a:	04f71363          	bne	a4,a5,11c0 <i2c_tx.c.154172f4+0x1f>
    117e:	87918783          	lb	a5,-1927(gp) # 20000079 <Jump>
    1182:	02f05f63          	blez	a5,11c0 <i2c_tx.c.154172f4+0x1f>
    1186:	f50ff0ef          	jal	8d6 <NextLevel>
    118a:	bc19                	j	ba0 <main+0x204>
    118c:	0007c783          	lbu	a5,0(a5)
    1190:	e4d78ce3          	beq	a5,a3,fe8 <main+0x64c>
    1194:	4721                	li	a4,8
    1196:	12e40963          	beq	s0,a4,12c8 <i2c_tx.c.154172f4+0x127>
    119a:	0ee48c63          	beq	s1,a4,1292 <i2c_tx.c.154172f4+0xf1>
    119e:	14e79b63          	bne	a5,a4,12f4 <i2c_tx.c.154172f4+0x153>
    11a2:	86c1c783          	lbu	a5,-1940(gp) # 2000006c <injur>
    11a6:	14078e63          	beqz	a5,1302 <i2c_tx.c.154172f4+0x161>
    11aa:	144d                	add	s0,s0,-13
    11ac:	0ff47413          	zext.b	s0,s0
    11b0:	4785                	li	a5,1
    11b2:	fa87fbe3          	bgeu	a5,s0,1168 <main+0x7cc>
    11b6:	14cd                	add	s1,s1,-13
    11b8:	0ff4f493          	zext.b	s1,s1
    11bc:	fa97f6e3          	bgeu	a5,s1,1168 <main+0x7cc>
    11c0:	4782                	lw	a5,0(sp)
    11c2:	4702                	lw	a4,0(sp)
    11c4:	03814683          	lbu	a3,56(sp)
    11c8:	0792                	sll	a5,a5,0x4
    11ca:	97ba                	add	a5,a5,a4
    11cc:	4722                	lw	a4,8(sp)
    11ce:	0786                	sll	a5,a5,0x1
    11d0:	97ba                	add	a5,a5,a4
    11d2:	4712                	lw	a4,4(sp)
    11d4:	973e                	add	a4,a4,a5
    11d6:	00d70023          	sb	a3,0(a4)
    11da:	4752                	lw	a4,20(sp)
    11dc:	200006b7          	lui	a3,0x20000
    11e0:	97ba                	add	a5,a5,a4
    11e2:	03914703          	lbu	a4,57(sp)
    11e6:	00e78023          	sb	a4,0(a5)
    11ea:	86e1c783          	lbu	a5,-1938(gp) # 2000006e <timer>
    11ee:	c63e                	sw	a5,12(sp)
    11f0:	8b85                	and	a5,a5,1
    11f2:	40078e63          	beqz	a5,160e <main.c.acedbf7c+0x1c9>
    11f6:	0006c703          	lbu	a4,0(a3) # 20000000 <visible>
    11fa:	4785                	li	a5,1
    11fc:	42f71863          	bne	a4,a5,162c <main.c.acedbf7c+0x1e7>
    1200:	4715                	li	a4,5
    1202:	4799                	li	a5,6
    1204:	02e10c23          	sb	a4,56(sp)
    1208:	02f10ca3          	sb	a5,57(sp)
    120c:	4501                	li	a0,0
    120e:	f4aff0ef          	jal	958 <OLED_setpos.constprop.0>
    1212:	4401                	li	s0,0
    1214:	f34ff0ef          	jal	948 <OLED_data_start>
    1218:	86d1c703          	lbu	a4,-1939(gp) # 2000006d <LIVE>
    121c:	fff70793          	add	a5,a4,-1
    1220:	4cf45b63          	bge	s0,a5,16f6 <main.c.acedbf7c+0x2b1>
    1224:	4501                	li	a0,0
    1226:	cb2ff0ef          	jal	6d8 <I2C_write>
    122a:	4539                	li	a0,14
    122c:	cacff0ef          	jal	6d8 <I2C_write>
    1230:	09f00513          	li	a0,159
    1234:	ca4ff0ef          	jal	6d8 <I2C_write>
    1238:	0ff00513          	li	a0,255
    123c:	c9cff0ef          	jal	6d8 <I2C_write>
    1240:	07f00513          	li	a0,127
    1244:	c94ff0ef          	jal	6d8 <I2C_write>
    1248:	0db00513          	li	a0,219
    124c:	c8cff0ef          	jal	6d8 <I2C_write>
    1250:	4539                	li	a0,14
    1252:	c86ff0ef          	jal	6d8 <I2C_write>
    1256:	4509                	li	a0,2
    1258:	0405                	add	s0,s0,1
    125a:	c7eff0ef          	jal	6d8 <I2C_write>
    125e:	0ff47413          	zext.b	s0,s0
    1262:	bf5d                	j	1218 <i2c_tx.c.154172f4+0x77>
    1264:	00f48d63          	beq	s1,a5,127e <i2c_tx.c.154172f4+0xdd>
    1268:	47b5                	li	a5,13
    126a:	eef40fe3          	beq	s0,a5,1168 <main+0x7cc>
    126e:	eef48de3          	beq	s1,a5,1168 <main+0x7cc>
    1272:	47b9                	li	a5,14
    1274:	eef40ae3          	beq	s0,a5,1168 <main+0x7cc>
    1278:	f4f494e3          	bne	s1,a5,11c0 <i2c_tx.c.154172f4+0x1f>
    127c:	b5f5                	j	1168 <main+0x7cc>
    127e:	86c1c783          	lbu	a5,-1940(gp) # 2000006c <injur>
    1282:	c3d1                	beqz	a5,1306 <i2c_tx.c.154172f4+0x165>
    1284:	144d                	add	s0,s0,-13
    1286:	0ff47413          	zext.b	s0,s0
    128a:	4785                	li	a5,1
    128c:	f287eae3          	bltu	a5,s0,11c0 <i2c_tx.c.154172f4+0x1f>
    1290:	bde1                	j	1168 <main+0x7cc>
    1292:	86c1c703          	lbu	a4,-1940(gp) # 2000006c <injur>
    1296:	cf05                	beqz	a4,12ce <i2c_tx.c.154172f4+0x12d>
    1298:	4735                	li	a4,13
    129a:	ece407e3          	beq	s0,a4,1168 <main+0x7cc>
    129e:	ece785e3          	beq	a5,a4,1168 <main+0x7cc>
    12a2:	4739                	li	a4,14
    12a4:	ece402e3          	beq	s0,a4,1168 <main+0x7cc>
    12a8:	4739                	li	a4,14
    12aa:	eae78fe3          	beq	a5,a4,1168 <main+0x7cc>
    12ae:	bf09                	j	11c0 <i2c_tx.c.154172f4+0x1f>
    12b0:	86c1c703          	lbu	a4,-1940(gp) # 2000006c <injur>
    12b4:	cf09                	beqz	a4,12ce <i2c_tx.c.154172f4+0x12d>
    12b6:	4735                	li	a4,13
    12b8:	eae788e3          	beq	a5,a4,1168 <main+0x7cc>
    12bc:	4739                	li	a4,14
    12be:	eae405e3          	beq	s0,a4,1168 <main+0x7cc>
    12c2:	fee493e3          	bne	s1,a4,12a8 <i2c_tx.c.154172f4+0x107>
    12c6:	b54d                	j	1168 <main+0x7cc>
    12c8:	86c1c703          	lbu	a4,-1940(gp) # 2000006c <injur>
    12cc:	e71d                	bnez	a4,12fa <i2c_tx.c.154172f4+0x159>
    12ce:	86d1c703          	lbu	a4,-1939(gp) # 2000006d <LIVE>
    12d2:	c63e                	sw	a5,12(sp)
    12d4:	177d                	add	a4,a4,-1
    12d6:	0ff77713          	zext.b	a4,a4
    12da:	86e186a3          	sb	a4,-1939(gp) # 2000006d <LIVE>
    12de:	800706e3          	beqz	a4,aea <main+0x14e>
    12e2:	4689                	li	a3,2
    12e4:	86d18ca3          	sb	a3,-1927(gp) # 20000079 <Jump>
    12e8:	46f9                	li	a3,30
    12ea:	86d18623          	sb	a3,-1940(gp) # 2000006c <injur>
    12ee:	dc4ff0ef          	jal	8b2 <sound.part.0>
    12f2:	47b2                	lw	a5,12(sp)
    12f4:	4735                	li	a4,13
    12f6:	e6e409e3          	beq	s0,a4,1168 <main+0x7cc>
    12fa:	4735                	li	a4,13
    12fc:	fae49de3          	bne	s1,a4,12b6 <i2c_tx.c.154172f4+0x115>
    1300:	b5a5                	j	1168 <main+0x7cc>
    1302:	47c2                	lw	a5,16(sp)
    1304:	b7e9                	j	12ce <i2c_tx.c.154172f4+0x12d>
    1306:	47ad                	li	a5,11
    1308:	b7d9                	j	12ce <i2c_tx.c.154172f4+0x12d>
    130a:	47ad                	li	a5,11
    130c:	02f41663          	bne	s0,a5,1338 <i2c_tx.c.154172f4+0x197>
    1310:	8711c703          	lbu	a4,-1935(gp) # 20000071 <keyS>
    1314:	99018793          	add	a5,gp,-1648 # 20000190 <key>
    1318:	00171613          	sll	a2,a4,0x1
    131c:	97b2                	add	a5,a5,a2
    131e:	4602                	lw	a2,0(sp)
    1320:	4592                	lw	a1,4(sp)
    1322:	0705                	add	a4,a4,1
    1324:	00c780a3          	sb	a2,1(a5)
    1328:	4632                	lw	a2,12(sp)
    132a:	86e188a3          	sb	a4,-1935(gp) # 20000071 <keyS>
    132e:	962e                	add	a2,a2,a1
    1330:	00c78023          	sb	a2,0(a5)
    1334:	e48ff0ef          	jal	97c <sound.constprop.0>
    1338:	4782                	lw	a5,0(sp)
    133a:	4722                	lw	a4,8(sp)
    133c:	97a6                	add	a5,a5,s1
    133e:	0786                	sll	a5,a5,0x1
    1340:	97ba                	add	a5,a5,a4
    1342:	4752                	lw	a4,20(sp)
    1344:	97ba                	add	a5,a5,a4
    1346:	0007c783          	lbu	a5,0(a5)
    134a:	d03e                	sw	a5,32(sp)
    134c:	5702                	lw	a4,32(sp)
    134e:	47ad                	li	a5,11
    1350:	02f71763          	bne	a4,a5,137e <i2c_tx.c.154172f4+0x1dd>
    1354:	8711c703          	lbu	a4,-1935(gp) # 20000071 <keyS>
    1358:	99018793          	add	a5,gp,-1648 # 20000190 <key>
    135c:	00171693          	sll	a3,a4,0x1
    1360:	97b6                	add	a5,a5,a3
    1362:	4682                	lw	a3,0(sp)
    1364:	4592                	lw	a1,4(sp)
    1366:	0705                	add	a4,a4,1
    1368:	00d780a3          	sb	a3,1(a5)
    136c:	46b2                	lw	a3,12(sp)
    136e:	86e188a3          	sb	a4,-1935(gp) # 20000071 <keyS>
    1372:	96ae                	add	a3,a3,a1
    1374:	0685                	add	a3,a3,1
    1376:	00d78023          	sb	a3,0(a5)
    137a:	e02ff0ef          	jal	97c <sound.constprop.0>
    137e:	4792                	lw	a5,4(sp)
    1380:	0789                	add	a5,a5,2
    1382:	d43e                	sw	a5,40(sp)
    1384:	4782                	lw	a5,0(sp)
    1386:	94be                	add	s1,s1,a5
    1388:	47a2                	lw	a5,8(sp)
    138a:	0486                	sll	s1,s1,0x1
    138c:	94be                	add	s1,s1,a5
    138e:	57a2                	lw	a5,40(sp)
    1390:	94be                	add	s1,s1,a5
    1392:	0004c783          	lbu	a5,0(s1)
    1396:	d23e                	sw	a5,36(sp)
    1398:	5712                	lw	a4,36(sp)
    139a:	47ad                	li	a5,11
    139c:	02f71763          	bne	a4,a5,13ca <i2c_tx.c.154172f4+0x229>
    13a0:	8711c703          	lbu	a4,-1935(gp) # 20000071 <keyS>
    13a4:	99018793          	add	a5,gp,-1648 # 20000190 <key>
    13a8:	00171693          	sll	a3,a4,0x1
    13ac:	97b6                	add	a5,a5,a3
    13ae:	4682                	lw	a3,0(sp)
    13b0:	4592                	lw	a1,4(sp)
    13b2:	0705                	add	a4,a4,1
    13b4:	00d780a3          	sb	a3,1(a5)
    13b8:	46b2                	lw	a3,12(sp)
    13ba:	86e188a3          	sb	a4,-1935(gp) # 20000071 <keyS>
    13be:	96ae                	add	a3,a3,a1
    13c0:	0689                	add	a3,a3,2
    13c2:	00d78023          	sb	a3,0(a5)
    13c6:	db6ff0ef          	jal	97c <sound.constprop.0>
    13ca:	4782                	lw	a5,0(sp)
    13cc:	4722                	lw	a4,8(sp)
    13ce:	00178493          	add	s1,a5,1
    13d2:	00449793          	sll	a5,s1,0x4
    13d6:	97a6                	add	a5,a5,s1
    13d8:	0786                	sll	a5,a5,0x1
    13da:	97ba                	add	a5,a5,a4
    13dc:	4712                	lw	a4,4(sp)
    13de:	97ba                	add	a5,a5,a4
    13e0:	0007c783          	lbu	a5,0(a5)
    13e4:	d63e                	sw	a5,44(sp)
    13e6:	5732                	lw	a4,44(sp)
    13e8:	47ad                	li	a5,11
    13ea:	02f71563          	bne	a4,a5,1414 <i2c_tx.c.154172f4+0x273>
    13ee:	8711c703          	lbu	a4,-1935(gp) # 20000071 <keyS>
    13f2:	99018793          	add	a5,gp,-1648 # 20000190 <key>
    13f6:	00171593          	sll	a1,a4,0x1
    13fa:	97ae                	add	a5,a5,a1
    13fc:	46b2                	lw	a3,12(sp)
    13fe:	4592                	lw	a1,4(sp)
    1400:	0705                	add	a4,a4,1
    1402:	009780a3          	sb	s1,1(a5)
    1406:	95b6                	add	a1,a1,a3
    1408:	00b78023          	sb	a1,0(a5)
    140c:	86e188a3          	sb	a4,-1935(gp) # 20000071 <keyS>
    1410:	d6cff0ef          	jal	97c <sound.constprop.0>
    1414:	4722                	lw	a4,8(sp)
    1416:	00449793          	sll	a5,s1,0x4
    141a:	97a6                	add	a5,a5,s1
    141c:	0786                	sll	a5,a5,0x1
    141e:	97ba                	add	a5,a5,a4
    1420:	4752                	lw	a4,20(sp)
    1422:	97ba                	add	a5,a5,a4
    1424:	0007c783          	lbu	a5,0(a5)
    1428:	d83e                	sw	a5,48(sp)
    142a:	5742                	lw	a4,48(sp)
    142c:	47ad                	li	a5,11
    142e:	02f71963          	bne	a4,a5,1460 <main.c.acedbf7c+0x1b>
    1432:	8711c703          	lbu	a4,-1935(gp) # 20000071 <keyS>
    1436:	4682                	lw	a3,0(sp)
    1438:	00171613          	sll	a2,a4,0x1
    143c:	99018793          	add	a5,gp,-1648 # 20000190 <key>
    1440:	97b2                	add	a5,a5,a2
    1442:	00168613          	add	a2,a3,1
    1446:	00c780a3          	sb	a2,1(a5)
    144a:	46b2                	lw	a3,12(sp)
    144c:	4612                	lw	a2,4(sp)
    144e:	0705                	add	a4,a4,1
    1450:	86e188a3          	sb	a4,-1935(gp) # 20000071 <keyS>
    1454:	9636                	add	a2,a2,a3
    1456:	0605                	add	a2,a2,1
    1458:	00c78023          	sb	a2,0(a5)
    145c:	d20ff0ef          	jal	97c <sound.constprop.0>
    1460:	4722                	lw	a4,8(sp)
    1462:	00449793          	sll	a5,s1,0x4
    1466:	97a6                	add	a5,a5,s1
    1468:	0786                	sll	a5,a5,0x1
    146a:	97ba                	add	a5,a5,a4
    146c:	5722                	lw	a4,40(sp)
    146e:	97ba                	add	a5,a5,a4
    1470:	0007c783          	lbu	a5,0(a5)
    1474:	d43e                	sw	a5,40(sp)
    1476:	5722                	lw	a4,40(sp)
    1478:	47ad                	li	a5,11
    147a:	02f71863          	bne	a4,a5,14aa <main.c.acedbf7c+0x65>
    147e:	8711c603          	lbu	a2,-1935(gp) # 20000071 <keyS>
    1482:	99018713          	add	a4,gp,-1648 # 20000190 <key>
    1486:	00161793          	sll	a5,a2,0x1
    148a:	973e                	add	a4,a4,a5
    148c:	4782                	lw	a5,0(sp)
    148e:	4692                	lw	a3,4(sp)
    1490:	0605                	add	a2,a2,1
    1492:	0785                	add	a5,a5,1
    1494:	00f700a3          	sb	a5,1(a4)
    1498:	47b2                	lw	a5,12(sp)
    149a:	86c188a3          	sb	a2,-1935(gp) # 20000071 <keyS>
    149e:	97b6                	add	a5,a5,a3
    14a0:	0789                	add	a5,a5,2
    14a2:	00f70023          	sb	a5,0(a4)
    14a6:	cd6ff0ef          	jal	97c <sound.constprop.0>
    14aa:	47a1                	li	a5,8
    14ac:	12f40463          	beq	s0,a5,15d4 <main.c.acedbf7c+0x18f>
    14b0:	5702                	lw	a4,32(sp)
    14b2:	10f70863          	beq	a4,a5,15c2 <main.c.acedbf7c+0x17d>
    14b6:	5712                	lw	a4,36(sp)
    14b8:	14f71763          	bne	a4,a5,1606 <main.c.acedbf7c+0x1c1>
    14bc:	86c1c783          	lbu	a5,-1940(gp) # 2000006c <injur>
    14c0:	12078263          	beqz	a5,15e4 <main.c.acedbf7c+0x19f>
    14c4:	47b5                	li	a5,13
    14c6:	02f41263          	bne	s0,a5,14ea <main.c.acedbf7c+0xa5>
    14ca:	4762                	lw	a4,24(sp)
    14cc:	6789                	lui	a5,0x2
    14ce:	24c78793          	add	a5,a5,588 # 224c <KeyinLevel>
    14d2:	97ba                	add	a5,a5,a4
    14d4:	0007c703          	lbu	a4,0(a5)
    14d8:	8711c783          	lbu	a5,-1935(gp) # 20000071 <keyS>
    14dc:	04f71663          	bne	a4,a5,1528 <main.c.acedbf7c+0xe3>
    14e0:	87918783          	lb	a5,-1927(gp) # 20000079 <Jump>
    14e4:	04f05263          	blez	a5,1528 <main.c.acedbf7c+0xe3>
    14e8:	b979                	j	1186 <main+0x7ea>
    14ea:	5702                	lw	a4,32(sp)
    14ec:	fcf70fe3          	beq	a4,a5,14ca <main.c.acedbf7c+0x85>
    14f0:	57b2                	lw	a5,44(sp)
    14f2:	4705                	li	a4,1
    14f4:	17cd                	add	a5,a5,-13
    14f6:	0ff7f793          	zext.b	a5,a5
    14fa:	fcf778e3          	bgeu	a4,a5,14ca <main.c.acedbf7c+0x85>
    14fe:	57c2                	lw	a5,48(sp)
    1500:	17cd                	add	a5,a5,-13
    1502:	0ff7f793          	zext.b	a5,a5
    1506:	fcf772e3          	bgeu	a4,a5,14ca <main.c.acedbf7c+0x85>
    150a:	57a2                	lw	a5,40(sp)
    150c:	17cd                	add	a5,a5,-13
    150e:	0ff7f793          	zext.b	a5,a5
    1512:	faf77ce3          	bgeu	a4,a5,14ca <main.c.acedbf7c+0x85>
    1516:	47b9                	li	a5,14
    1518:	faf409e3          	beq	s0,a5,14ca <main.c.acedbf7c+0x85>
    151c:	5702                	lw	a4,32(sp)
    151e:	faf706e3          	beq	a4,a5,14ca <main.c.acedbf7c+0x85>
    1522:	5712                	lw	a4,36(sp)
    1524:	faf703e3          	beq	a4,a5,14ca <main.c.acedbf7c+0x85>
    1528:	4782                	lw	a5,0(sp)
    152a:	4702                	lw	a4,0(sp)
    152c:	03814603          	lbu	a2,56(sp)
    1530:	0792                	sll	a5,a5,0x4
    1532:	97ba                	add	a5,a5,a4
    1534:	4722                	lw	a4,8(sp)
    1536:	0786                	sll	a5,a5,0x1
    1538:	03a14683          	lbu	a3,58(sp)
    153c:	97ba                	add	a5,a5,a4
    153e:	4712                	lw	a4,4(sp)
    1540:	973e                	add	a4,a4,a5
    1542:	00c70023          	sb	a2,0(a4)
    1546:	4752                	lw	a4,20(sp)
    1548:	97ba                	add	a5,a5,a4
    154a:	03914703          	lbu	a4,57(sp)
    154e:	00e78023          	sb	a4,0(a5)
    1552:	47a2                	lw	a5,8(sp)
    1554:	00449713          	sll	a4,s1,0x4
    1558:	9726                	add	a4,a4,s1
    155a:	0706                	sll	a4,a4,0x1
    155c:	973e                	add	a4,a4,a5
    155e:	4792                	lw	a5,4(sp)
    1560:	97ba                	add	a5,a5,a4
    1562:	00d78023          	sb	a3,0(a5)
    1566:	47d2                	lw	a5,20(sp)
    1568:	200006b7          	lui	a3,0x20000
    156c:	973e                	add	a4,a4,a5
    156e:	03b14783          	lbu	a5,59(sp)
    1572:	00f70023          	sb	a5,0(a4)
    1576:	86e1c783          	lbu	a5,-1938(gp) # 2000006e <timer>
    157a:	c63e                	sw	a5,12(sp)
    157c:	8b85                	and	a5,a5,1
    157e:	ef91                	bnez	a5,159a <main.c.acedbf7c+0x155>
    1580:	86c1c703          	lbu	a4,-1940(gp) # 2000006c <injur>
    1584:	cb19                	beqz	a4,159a <main.c.acedbf7c+0x155>
    1586:	0006c783          	lbu	a5,0(a3) # 20000000 <visible>
    158a:	177d                	add	a4,a4,-1
    158c:	86e18623          	sb	a4,-1940(gp) # 2000006c <injur>
    1590:	17fd                	add	a5,a5,-1
    1592:	00f037b3          	snez	a5,a5
    1596:	00f68023          	sb	a5,0(a3)
    159a:	0006c703          	lbu	a4,0(a3)
    159e:	4785                	li	a5,1
    15a0:	08f71963          	bne	a4,a5,1632 <main.c.acedbf7c+0x1ed>
    15a4:	4615                	li	a2,5
    15a6:	4699                	li	a3,6
    15a8:	03700713          	li	a4,55
    15ac:	04200793          	li	a5,66
    15b0:	02c10c23          	sb	a2,56(sp)
    15b4:	02d10ca3          	sb	a3,57(sp)
    15b8:	02e10d23          	sb	a4,58(sp)
    15bc:	02f10da3          	sb	a5,59(sp)
    15c0:	b1b1                	j	120c <i2c_tx.c.154172f4+0x6b>
    15c2:	86c1c783          	lbu	a5,-1940(gp) # 2000006c <injur>
    15c6:	cf99                	beqz	a5,15e4 <main.c.acedbf7c+0x19f>
    15c8:	47b5                	li	a5,13
    15ca:	f0f400e3          	beq	s0,a5,14ca <main.c.acedbf7c+0x85>
    15ce:	5712                	lw	a4,36(sp)
    15d0:	47b5                	li	a5,13
    15d2:	bf29                	j	14ec <main.c.acedbf7c+0xa7>
    15d4:	86c1c783          	lbu	a5,-1940(gp) # 2000006c <injur>
    15d8:	c791                	beqz	a5,15e4 <main.c.acedbf7c+0x19f>
    15da:	5702                	lw	a4,32(sp)
    15dc:	47b5                	li	a5,13
    15de:	fef718e3          	bne	a4,a5,15ce <main.c.acedbf7c+0x189>
    15e2:	b5e5                	j	14ca <main.c.acedbf7c+0x85>
    15e4:	86d1c783          	lbu	a5,-1939(gp) # 2000006d <LIVE>
    15e8:	17fd                	add	a5,a5,-1
    15ea:	0ff7f793          	zext.b	a5,a5
    15ee:	86f186a3          	sb	a5,-1939(gp) # 2000006d <LIVE>
    15f2:	ce078c63          	beqz	a5,aea <main+0x14e>
    15f6:	4709                	li	a4,2
    15f8:	86e18ca3          	sb	a4,-1927(gp) # 20000079 <Jump>
    15fc:	4779                	li	a4,30
    15fe:	86e18623          	sb	a4,-1940(gp) # 2000006c <injur>
    1602:	ab0ff0ef          	jal	8b2 <sound.part.0>
    1606:	47b5                	li	a5,13
    1608:	fcf419e3          	bne	s0,a5,15da <main.c.acedbf7c+0x195>
    160c:	bd7d                	j	14ca <main.c.acedbf7c+0x85>
    160e:	86c1c703          	lbu	a4,-1940(gp) # 2000006c <injur>
    1612:	be0702e3          	beqz	a4,11f6 <i2c_tx.c.154172f4+0x55>
    1616:	0006c783          	lbu	a5,0(a3)
    161a:	177d                	add	a4,a4,-1
    161c:	86e18623          	sb	a4,-1940(gp) # 2000006c <injur>
    1620:	17fd                	add	a5,a5,-1
    1622:	00f037b3          	snez	a5,a5
    1626:	00f68023          	sb	a5,0(a3)
    162a:	b6f1                	j	11f6 <i2c_tx.c.154172f4+0x55>
    162c:	4701                	li	a4,0
    162e:	4781                	li	a5,0
    1630:	bed1                	j	1204 <i2c_tx.c.154172f4+0x63>
    1632:	4601                	li	a2,0
    1634:	4681                	li	a3,0
    1636:	4701                	li	a4,0
    1638:	4781                	li	a5,0
    163a:	bf9d                	j	15b0 <main.c.acedbf7c+0x16b>
    163c:	44c2                	lw	s1,16(sp)
    163e:	4501                	li	a0,0
    1640:	14fd                	add	s1,s1,-1
    1642:	c03e                	sw	a5,0(sp)
    1644:	0ff4f493          	zext.b	s1,s1
    1648:	890ff0ef          	jal	6d8 <I2C_write>
    164c:	4782                	lw	a5,0(sp)
    164e:	f8e5                	bnez	s1,163e <main.c.acedbf7c+0x1f9>
    1650:	0405                	add	s0,s0,1
    1652:	0ff47413          	zext.b	s0,s0
    1656:	fef443e3          	blt	s0,a5,163c <main.c.acedbf7c+0x1f7>
    165a:	4762                	lw	a4,24(sp)
    165c:	6789                	lui	a5,0x2
    165e:	24c78793          	add	a5,a5,588 # 224c <KeyinLevel>
    1662:	97ba                	add	a5,a5,a4
    1664:	0007c703          	lbu	a4,0(a5)
    1668:	8711c783          	lbu	a5,-1935(gp) # 20000071 <keyS>
    166c:	4411                	li	s0,4
    166e:	08f71863          	bne	a4,a5,16fe <main.c.acedbf7c+0x2b9>
    1672:	4732                	lw	a4,12(sp)
    1674:	47f9                	li	a5,30
    1676:	08e7e463          	bltu	a5,a4,16fe <main.c.acedbf7c+0x2b9>
    167a:	4509                	li	a0,2
    167c:	85cff0ef          	jal	6d8 <I2C_write>
    1680:	0fd00513          	li	a0,253
    1684:	854ff0ef          	jal	6d8 <I2C_write>
    1688:	0a500513          	li	a0,165
    168c:	84cff0ef          	jal	6d8 <I2C_write>
    1690:	4509                	li	a0,2
    1692:	846ff0ef          	jal	6d8 <I2C_write>
    1696:	4785                	li	a5,1
    1698:	c23e                	sw	a5,4(sp)
    169a:	00414503          	lbu	a0,4(sp)
    169e:	abaff0ef          	jal	958 <OLED_setpos.constprop.0>
    16a2:	aa6ff0ef          	jal	948 <OLED_data_start>
    16a6:	4692                	lw	a3,4(sp)
    16a8:	4612                	lw	a2,4(sp)
    16aa:	0692                	sll	a3,a3,0x4
    16ac:	87b1c703          	lbu	a4,-1925(gp) # 2000007b <step4>
    16b0:	96b2                	add	a3,a3,a2
    16b2:	4622                	lw	a2,8(sp)
    16b4:	4791                	li	a5,4
    16b6:	0686                	sll	a3,a3,0x1
    16b8:	8f99                	sub	a5,a5,a4
    16ba:	96b2                	add	a3,a3,a2
    16bc:	0ff7f793          	zext.b	a5,a5
    16c0:	4701                	li	a4,0
    16c2:	ca02                	sw	zero,20(sp)
    16c4:	d036                	sw	a3,32(sp)
    16c6:	4652                	lw	a2,20(sp)
    16c8:	5682                	lw	a3,32(sp)
    16ca:	96b2                	add	a3,a3,a2
    16cc:	0006c683          	lbu	a3,0(a3)
    16d0:	461d                	li	a2,7
    16d2:	08c69d63          	bne	a3,a2,176c <main.c.acedbf7c+0x327>
    16d6:	85c18493          	add	s1,gp,-1956 # 2000005c <sprite7>
    16da:	94be                	add	s1,s1,a5
    16dc:	843a                	mv	s0,a4
    16de:	8f99                	sub	a5,a5,a4
    16e0:	00f40733          	add	a4,s0,a5
    16e4:	0ff77713          	zext.b	a4,a4
    16e8:	468d                	li	a3,3
    16ea:	02e6fb63          	bgeu	a3,a4,1720 <main.c.acedbf7c+0x2db>
    16ee:	8722                	mv	a4,s0
    16f0:	4781                	li	a5,0
    16f2:	7400006f          	j	1e32 <main.c.acedbf7c+0x9ed>
    16f6:	47bd                	li	a5,15
    16f8:	4401                	li	s0,0
    16fa:	8f99                	sub	a5,a5,a4
    16fc:	bfa9                	j	1656 <main.c.acedbf7c+0x211>
    16fe:	4501                	li	a0,0
    1700:	fd9fe0ef          	jal	6d8 <I2C_write>
    1704:	4501                	li	a0,0
    1706:	fd3fe0ef          	jal	6d8 <I2C_write>
    170a:	4501                	li	a0,0
    170c:	fcdfe0ef          	jal	6d8 <I2C_write>
    1710:	147d                	add	s0,s0,-1
    1712:	4501                	li	a0,0
    1714:	0ff47413          	zext.b	s0,s0
    1718:	fc1fe0ef          	jal	6d8 <I2C_write>
    171c:	f06d                	bnez	s0,16fe <main.c.acedbf7c+0x2b9>
    171e:	bfa5                	j	1696 <main.c.acedbf7c+0x251>
    1720:	0004c503          	lbu	a0,0(s1)
    1724:	c03e                	sw	a5,0(sp)
    1726:	0485                	add	s1,s1,1
    1728:	fb1fe0ef          	jal	6d8 <I2C_write>
    172c:	00140713          	add	a4,s0,1
    1730:	0ff77413          	zext.b	s0,a4
    1734:	0762                	sll	a4,a4,0x18
    1736:	8761                	sra	a4,a4,0x18
    1738:	4782                	lw	a5,0(sp)
    173a:	fa0753e3          	bgez	a4,16e0 <main.c.acedbf7c+0x29b>
    173e:	fb3fe0ef          	jal	6f0 <I2C_stop>
    1742:	4792                	lw	a5,4(sp)
    1744:	0785                	add	a5,a5,1
    1746:	c23e                	sw	a5,4(sp)
    1748:	4712                	lw	a4,4(sp)
    174a:	47a1                	li	a5,8
    174c:	f4f717e3          	bne	a4,a5,169a <main.c.acedbf7c+0x255>
    1750:	47b2                	lw	a5,12(sp)
    1752:	03c00693          	li	a3,60
    1756:	0785                	add	a5,a5,1
    1758:	0ff7f793          	zext.b	a5,a5
    175c:	86f18723          	sb	a5,-1938(gp) # 2000006e <timer>
    1760:	c6f6f363          	bgeu	a3,a5,bc6 <main+0x22a>
    1764:	86018723          	sb	zero,-1938(gp) # 2000006e <timer>
    1768:	c5eff06f          	j	bc6 <main+0x22a>
    176c:	4641                	li	a2,16
    176e:	02d66063          	bltu	a2,a3,178e <main.c.acedbf7c+0x349>
    1772:	c695                	beqz	a3,179e <main.c.acedbf7c+0x359>
    1774:	16fd                	add	a3,a3,-1
    1776:	0ff6f693          	zext.b	a3,a3
    177a:	463d                	li	a2,15
    177c:	02d66163          	bltu	a2,a3,179e <main.c.acedbf7c+0x359>
    1780:	6609                	lui	a2,0x2
    1782:	068a                	sll	a3,a3,0x2
    1784:	0d060613          	add	a2,a2,208 # 20d0 <oled_min.c.cce2e8ab+0x7d>
    1788:	96b2                	add	a3,a3,a2
    178a:	4294                	lw	a3,0(a3)
    178c:	8682                	jr	a3
    178e:	03700613          	li	a2,55
    1792:	28c68563          	beq	a3,a2,1a1c <main.c.acedbf7c+0x5d7>
    1796:	04200613          	li	a2,66
    179a:	4cc68863          	beq	a3,a2,1c6a <main.c.acedbf7c+0x825>
    179e:	843a                	mv	s0,a4
    17a0:	40e784b3          	sub	s1,a5,a4
    17a4:	72e0006f          	j	1ed2 <main.c.acedbf7c+0xa8d>
    17a8:	80c18493          	add	s1,gp,-2036 # 2000000c <sprite14>
    17ac:	94be                	add	s1,s1,a5
    17ae:	843a                	mv	s0,a4
    17b0:	8f99                	sub	a5,a5,a4
    17b2:	00f40733          	add	a4,s0,a5
    17b6:	0ff77713          	zext.b	a4,a4
    17ba:	468d                	li	a3,3
    17bc:	f2e6e9e3          	bltu	a3,a4,16ee <main.c.acedbf7c+0x2a9>
    17c0:	0004c503          	lbu	a0,0(s1)
    17c4:	c03e                	sw	a5,0(sp)
    17c6:	0485                	add	s1,s1,1
    17c8:	f11fe0ef          	jal	6d8 <I2C_write>
    17cc:	00140713          	add	a4,s0,1
    17d0:	0ff77413          	zext.b	s0,a4
    17d4:	0762                	sll	a4,a4,0x18
    17d6:	8761                	sra	a4,a4,0x18
    17d8:	4782                	lw	a5,0(sp)
    17da:	fc075ce3          	bgez	a4,17b2 <main.c.acedbf7c+0x36d>
    17de:	b785                	j	173e <main.c.acedbf7c+0x2f9>
    17e0:	81018493          	add	s1,gp,-2032 # 20000010 <sprite13>
    17e4:	94be                	add	s1,s1,a5
    17e6:	843a                	mv	s0,a4
    17e8:	8f99                	sub	a5,a5,a4
    17ea:	00f40733          	add	a4,s0,a5
    17ee:	0ff77713          	zext.b	a4,a4
    17f2:	468d                	li	a3,3
    17f4:	eee6ede3          	bltu	a3,a4,16ee <main.c.acedbf7c+0x2a9>
    17f8:	0004c503          	lbu	a0,0(s1)
    17fc:	c03e                	sw	a5,0(sp)
    17fe:	0485                	add	s1,s1,1
    1800:	ed9fe0ef          	jal	6d8 <I2C_write>
    1804:	00140713          	add	a4,s0,1
    1808:	0ff77413          	zext.b	s0,a4
    180c:	0762                	sll	a4,a4,0x18
    180e:	8761                	sra	a4,a4,0x18
    1810:	4782                	lw	a5,0(sp)
    1812:	fc075ce3          	bgez	a4,17ea <main.c.acedbf7c+0x3a5>
    1816:	b725                	j	173e <main.c.acedbf7c+0x2f9>
    1818:	81818493          	add	s1,gp,-2024 # 20000018 <sprite16>
    181c:	94be                	add	s1,s1,a5
    181e:	843a                	mv	s0,a4
    1820:	8f99                	sub	a5,a5,a4
    1822:	00f40733          	add	a4,s0,a5
    1826:	0ff77713          	zext.b	a4,a4
    182a:	468d                	li	a3,3
    182c:	ece6e1e3          	bltu	a3,a4,16ee <main.c.acedbf7c+0x2a9>
    1830:	0004c503          	lbu	a0,0(s1)
    1834:	c03e                	sw	a5,0(sp)
    1836:	0485                	add	s1,s1,1
    1838:	ea1fe0ef          	jal	6d8 <I2C_write>
    183c:	00140713          	add	a4,s0,1
    1840:	0ff77413          	zext.b	s0,a4
    1844:	0762                	sll	a4,a4,0x18
    1846:	8761                	sra	a4,a4,0x18
    1848:	4782                	lw	a5,0(sp)
    184a:	fc075ce3          	bgez	a4,1822 <main.c.acedbf7c+0x3dd>
    184e:	bdc5                	j	173e <main.c.acedbf7c+0x2f9>
    1850:	81c18493          	add	s1,gp,-2020 # 2000001c <sprite15>
    1854:	94be                	add	s1,s1,a5
    1856:	843a                	mv	s0,a4
    1858:	8f99                	sub	a5,a5,a4
    185a:	00f40733          	add	a4,s0,a5
    185e:	0ff77713          	zext.b	a4,a4
    1862:	468d                	li	a3,3
    1864:	e8e6e5e3          	bltu	a3,a4,16ee <main.c.acedbf7c+0x2a9>
    1868:	0004c503          	lbu	a0,0(s1)
    186c:	c03e                	sw	a5,0(sp)
    186e:	0485                	add	s1,s1,1
    1870:	e69fe0ef          	jal	6d8 <I2C_write>
    1874:	00140713          	add	a4,s0,1
    1878:	0ff77413          	zext.b	s0,a4
    187c:	0762                	sll	a4,a4,0x18
    187e:	8761                	sra	a4,a4,0x18
    1880:	4782                	lw	a5,0(sp)
    1882:	fc075ce3          	bgez	a4,185a <main.c.acedbf7c+0x415>
    1886:	bd65                	j	173e <main.c.acedbf7c+0x2f9>
    1888:	82018493          	add	s1,gp,-2016 # 20000020 <sprite8>
    188c:	94be                	add	s1,s1,a5
    188e:	843a                	mv	s0,a4
    1890:	8f99                	sub	a5,a5,a4
    1892:	00f40733          	add	a4,s0,a5
    1896:	0ff77713          	zext.b	a4,a4
    189a:	468d                	li	a3,3
    189c:	e4e6e9e3          	bltu	a3,a4,16ee <main.c.acedbf7c+0x2a9>
    18a0:	0004c503          	lbu	a0,0(s1)
    18a4:	c03e                	sw	a5,0(sp)
    18a6:	0485                	add	s1,s1,1
    18a8:	e31fe0ef          	jal	6d8 <I2C_write>
    18ac:	00140713          	add	a4,s0,1
    18b0:	0ff77413          	zext.b	s0,a4
    18b4:	0762                	sll	a4,a4,0x18
    18b6:	8761                	sra	a4,a4,0x18
    18b8:	4782                	lw	a5,0(sp)
    18ba:	fc075ce3          	bgez	a4,1892 <main.c.acedbf7c+0x44d>
    18be:	b541                	j	173e <main.c.acedbf7c+0x2f9>
    18c0:	82418493          	add	s1,gp,-2012 # 20000024 <sprite4>
    18c4:	94be                	add	s1,s1,a5
    18c6:	843a                	mv	s0,a4
    18c8:	8f99                	sub	a5,a5,a4
    18ca:	00f40733          	add	a4,s0,a5
    18ce:	0ff77713          	zext.b	a4,a4
    18d2:	468d                	li	a3,3
    18d4:	e0e6ede3          	bltu	a3,a4,16ee <main.c.acedbf7c+0x2a9>
    18d8:	0004c503          	lbu	a0,0(s1)
    18dc:	c03e                	sw	a5,0(sp)
    18de:	0485                	add	s1,s1,1
    18e0:	df9fe0ef          	jal	6d8 <I2C_write>
    18e4:	00140713          	add	a4,s0,1
    18e8:	0ff77413          	zext.b	s0,a4
    18ec:	0762                	sll	a4,a4,0x18
    18ee:	8761                	sra	a4,a4,0x18
    18f0:	4782                	lw	a5,0(sp)
    18f2:	fc075ce3          	bgez	a4,18ca <main.c.acedbf7c+0x485>
    18f6:	b5a1                	j	173e <main.c.acedbf7c+0x2f9>
    18f8:	82818493          	add	s1,gp,-2008 # 20000028 <sprite3>
    18fc:	94be                	add	s1,s1,a5
    18fe:	843a                	mv	s0,a4
    1900:	8f99                	sub	a5,a5,a4
    1902:	00f40733          	add	a4,s0,a5
    1906:	0ff77713          	zext.b	a4,a4
    190a:	468d                	li	a3,3
    190c:	dee6e1e3          	bltu	a3,a4,16ee <main.c.acedbf7c+0x2a9>
    1910:	0004c503          	lbu	a0,0(s1)
    1914:	c03e                	sw	a5,0(sp)
    1916:	0485                	add	s1,s1,1
    1918:	dc1fe0ef          	jal	6d8 <I2C_write>
    191c:	00140713          	add	a4,s0,1
    1920:	0ff77413          	zext.b	s0,a4
    1924:	0762                	sll	a4,a4,0x18
    1926:	8761                	sra	a4,a4,0x18
    1928:	4782                	lw	a5,0(sp)
    192a:	fc075ce3          	bgez	a4,1902 <main.c.acedbf7c+0x4bd>
    192e:	bd01                	j	173e <main.c.acedbf7c+0x2f9>
    1930:	82c18493          	add	s1,gp,-2004 # 2000002c <sprite2>
    1934:	94be                	add	s1,s1,a5
    1936:	843a                	mv	s0,a4
    1938:	8f99                	sub	a5,a5,a4
    193a:	00f40733          	add	a4,s0,a5
    193e:	0ff77713          	zext.b	a4,a4
    1942:	468d                	li	a3,3
    1944:	dae6e5e3          	bltu	a3,a4,16ee <main.c.acedbf7c+0x2a9>
    1948:	0004c503          	lbu	a0,0(s1)
    194c:	c03e                	sw	a5,0(sp)
    194e:	0485                	add	s1,s1,1
    1950:	d89fe0ef          	jal	6d8 <I2C_write>
    1954:	00140713          	add	a4,s0,1
    1958:	0ff77413          	zext.b	s0,a4
    195c:	0762                	sll	a4,a4,0x18
    195e:	8761                	sra	a4,a4,0x18
    1960:	4782                	lw	a5,0(sp)
    1962:	fc075ce3          	bgez	a4,193a <main.c.acedbf7c+0x4f5>
    1966:	bbe1                	j	173e <main.c.acedbf7c+0x2f9>
    1968:	83018493          	add	s1,gp,-2000 # 20000030 <sprite1>
    196c:	94be                	add	s1,s1,a5
    196e:	843a                	mv	s0,a4
    1970:	8f99                	sub	a5,a5,a4
    1972:	00f40733          	add	a4,s0,a5
    1976:	0ff77713          	zext.b	a4,a4
    197a:	468d                	li	a3,3
    197c:	d6e6e9e3          	bltu	a3,a4,16ee <main.c.acedbf7c+0x2a9>
    1980:	0004c503          	lbu	a0,0(s1)
    1984:	c03e                	sw	a5,0(sp)
    1986:	0485                	add	s1,s1,1
    1988:	d51fe0ef          	jal	6d8 <I2C_write>
    198c:	00140713          	add	a4,s0,1
    1990:	0ff77413          	zext.b	s0,a4
    1994:	0762                	sll	a4,a4,0x18
    1996:	8761                	sra	a4,a4,0x18
    1998:	4782                	lw	a5,0(sp)
    199a:	fc075ce3          	bgez	a4,1972 <main.c.acedbf7c+0x52d>
    199e:	b345                	j	173e <main.c.acedbf7c+0x2f9>
    19a0:	4672                	lw	a2,28(sp)
    19a2:	6689                	lui	a3,0x2
    19a4:	22868693          	add	a3,a3,552 # 2228 <VSlide>
    19a8:	060a                	sll	a2,a2,0x2
    19aa:	96b2                	add	a3,a3,a2
    19ac:	4284                	lw	s1,0(a3)
    19ae:	8691aa23          	sw	s1,-1932(gp) # 20000074 <VSlideOut>
    19b2:	4401                	li	s0,0
    19b4:	03c10683          	lb	a3,60(sp)
    19b8:	08d44963          	blt	s0,a3,1a4a <main.c.acedbf7c+0x605>
    19bc:	4405                	li	s0,1
    19be:	20000637          	lui	a2,0x20000
    19c2:	00164583          	lbu	a1,1(a2) # 20000001 <LorR>
    19c6:	4605                	li	a2,1
    19c8:	87a1c683          	lbu	a3,-1926(gp) # 2000007a <MainAnim>
    19cc:	14c59063          	bne	a1,a2,1b0c <main.c.acedbf7c+0x6c7>
    19d0:	eed9                	bnez	a3,1a6e <main.c.acedbf7c+0x629>
    19d2:	85818613          	add	a2,gp,-1960 # 20000058 <sprite20>
    19d6:	00c687b3          	add	a5,a3,a2
    19da:	0007c503          	lbu	a0,0(a5)
    19de:	d23a                	sw	a4,36(sp)
    19e0:	c036                	sw	a3,0(sp)
    19e2:	b69fe0ef          	jal	54a <__floatsisf>
    19e6:	85a6                	mv	a1,s1
    19e8:	8adfe0ef          	jal	294 <__mulsf3>
    19ec:	b0dfe0ef          	jal	4f8 <__fixunssfsi>
    19f0:	0ff57513          	zext.b	a0,a0
    19f4:	ce5fe0ef          	jal	6d8 <I2C_write>
    19f8:	5712                	lw	a4,36(sp)
    19fa:	00170793          	add	a5,a4,1
    19fe:	0ff7f713          	zext.b	a4,a5
    1a02:	07e2                	sll	a5,a5,0x18
    1a04:	87e1                	sra	a5,a5,0x18
    1a06:	4c07cf63          	bltz	a5,1ee4 <main.c.acedbf7c+0xa9f>
    1a0a:	4682                	lw	a3,0(sp)
    1a0c:	4791                	li	a5,4
    1a0e:	0685                	add	a3,a3,1
    1a10:	85818613          	add	a2,gp,-1960 # 20000058 <sprite20>
    1a14:	fcf691e3          	bne	a3,a5,19d6 <main.c.acedbf7c+0x591>
    1a18:	4781                	li	a5,0
    1a1a:	a4a9                	j	1c64 <main.c.acedbf7c+0x81f>
    1a1c:	d23e                	sw	a5,36(sp)
    1a1e:	47f2                	lw	a5,28(sp)
    1a20:	4621                	li	a2,8
    1a22:	6689                	lui	a3,0x2
    1a24:	8e1d                	sub	a2,a2,a5
    1a26:	060a                	sll	a2,a2,0x2
    1a28:	22868693          	add	a3,a3,552 # 2228 <VSlide>
    1a2c:	96b2                	add	a3,a3,a2
    1a2e:	428c                	lw	a1,0(a3)
    1a30:	8081a503          	lw	a0,-2040(gp) # 20000008 <LorR+0x7>
    1a34:	c03a                	sw	a4,0(sp)
    1a36:	dcefe0ef          	jal	4 <__divsf3>
    1a3a:	8081a583          	lw	a1,-2040(gp) # 20000008 <LorR+0x7>
    1a3e:	dc6fe0ef          	jal	4 <__divsf3>
    1a42:	5792                	lw	a5,36(sp)
    1a44:	4702                	lw	a4,0(sp)
    1a46:	84aa                	mv	s1,a0
    1a48:	b79d                	j	19ae <main.c.acedbf7c+0x569>
    1a4a:	4501                	li	a0,0
    1a4c:	d23e                	sw	a5,36(sp)
    1a4e:	c03a                	sw	a4,0(sp)
    1a50:	c89fe0ef          	jal	6d8 <I2C_write>
    1a54:	4702                	lw	a4,0(sp)
    1a56:	5792                	lw	a5,36(sp)
    1a58:	0405                	add	s0,s0,1
    1a5a:	00170693          	add	a3,a4,1
    1a5e:	0ff6f713          	zext.b	a4,a3
    1a62:	06e2                	sll	a3,a3,0x18
    1a64:	86e1                	sra	a3,a3,0x18
    1a66:	f406d7e3          	bgez	a3,19b4 <main.c.acedbf7c+0x56f>
    1a6a:	4401                	li	s0,0
    1a6c:	bf89                	j	19be <main.c.acedbf7c+0x579>
    1a6e:	04b69763          	bne	a3,a1,1abc <main.c.acedbf7c+0x677>
    1a72:	4681                	li	a3,0
    1a74:	85418613          	add	a2,gp,-1964 # 20000054 <sprite22>
    1a78:	00c687b3          	add	a5,a3,a2
    1a7c:	0007c503          	lbu	a0,0(a5)
    1a80:	d23a                	sw	a4,36(sp)
    1a82:	c036                	sw	a3,0(sp)
    1a84:	ac7fe0ef          	jal	54a <__floatsisf>
    1a88:	85a6                	mv	a1,s1
    1a8a:	80bfe0ef          	jal	294 <__mulsf3>
    1a8e:	a6bfe0ef          	jal	4f8 <__fixunssfsi>
    1a92:	0ff57513          	zext.b	a0,a0
    1a96:	c43fe0ef          	jal	6d8 <I2C_write>
    1a9a:	5712                	lw	a4,36(sp)
    1a9c:	00170793          	add	a5,a4,1
    1aa0:	0ff7f713          	zext.b	a4,a5
    1aa4:	07e2                	sll	a5,a5,0x18
    1aa6:	87e1                	sra	a5,a5,0x18
    1aa8:	4207ce63          	bltz	a5,1ee4 <main.c.acedbf7c+0xa9f>
    1aac:	4682                	lw	a3,0(sp)
    1aae:	4791                	li	a5,4
    1ab0:	0685                	add	a3,a3,1
    1ab2:	85418613          	add	a2,gp,-1964 # 20000054 <sprite22>
    1ab6:	fcf691e3          	bne	a3,a5,1a78 <main.c.acedbf7c+0x633>
    1aba:	bfb9                	j	1a18 <main.c.acedbf7c+0x5d3>
    1abc:	4609                	li	a2,2
    1abe:	1ac69363          	bne	a3,a2,1c64 <main.c.acedbf7c+0x81f>
    1ac2:	4681                	li	a3,0
    1ac4:	85018613          	add	a2,gp,-1968 # 20000050 <sprite24>
    1ac8:	00c687b3          	add	a5,a3,a2
    1acc:	0007c503          	lbu	a0,0(a5)
    1ad0:	d23a                	sw	a4,36(sp)
    1ad2:	c036                	sw	a3,0(sp)
    1ad4:	a77fe0ef          	jal	54a <__floatsisf>
    1ad8:	85a6                	mv	a1,s1
    1ada:	fbafe0ef          	jal	294 <__mulsf3>
    1ade:	a1bfe0ef          	jal	4f8 <__fixunssfsi>
    1ae2:	0ff57513          	zext.b	a0,a0
    1ae6:	bf3fe0ef          	jal	6d8 <I2C_write>
    1aea:	5712                	lw	a4,36(sp)
    1aec:	00170793          	add	a5,a4,1
    1af0:	0ff7f713          	zext.b	a4,a5
    1af4:	07e2                	sll	a5,a5,0x18
    1af6:	87e1                	sra	a5,a5,0x18
    1af8:	c407c3e3          	bltz	a5,173e <main.c.acedbf7c+0x2f9>
    1afc:	4682                	lw	a3,0(sp)
    1afe:	4791                	li	a5,4
    1b00:	0685                	add	a3,a3,1
    1b02:	85018613          	add	a2,gp,-1968 # 20000050 <sprite24>
    1b06:	fcf691e3          	bne	a3,a5,1ac8 <main.c.acedbf7c+0x683>
    1b0a:	b739                	j	1a18 <main.c.acedbf7c+0x5d3>
    1b0c:	e6a9                	bnez	a3,1b56 <main.c.acedbf7c+0x711>
    1b0e:	86818613          	add	a2,gp,-1944 # 20000068 <sprite26>
    1b12:	00c687b3          	add	a5,a3,a2
    1b16:	0007c503          	lbu	a0,0(a5)
    1b1a:	d23a                	sw	a4,36(sp)
    1b1c:	c036                	sw	a3,0(sp)
    1b1e:	a2dfe0ef          	jal	54a <__floatsisf>
    1b22:	85a6                	mv	a1,s1
    1b24:	f70fe0ef          	jal	294 <__mulsf3>
    1b28:	9d1fe0ef          	jal	4f8 <__fixunssfsi>
    1b2c:	0ff57513          	zext.b	a0,a0
    1b30:	ba9fe0ef          	jal	6d8 <I2C_write>
    1b34:	5712                	lw	a4,36(sp)
    1b36:	00170793          	add	a5,a4,1
    1b3a:	0ff7f713          	zext.b	a4,a5
    1b3e:	07e2                	sll	a5,a5,0x18
    1b40:	87e1                	sra	a5,a5,0x18
    1b42:	3a07c163          	bltz	a5,1ee4 <main.c.acedbf7c+0xa9f>
    1b46:	4682                	lw	a3,0(sp)
    1b48:	4791                	li	a5,4
    1b4a:	0685                	add	a3,a3,1
    1b4c:	86818613          	add	a2,gp,-1944 # 20000068 <sprite26>
    1b50:	fcf691e3          	bne	a3,a5,1b12 <main.c.acedbf7c+0x6cd>
    1b54:	b5d1                	j	1a18 <main.c.acedbf7c+0x5d3>
    1b56:	04c69763          	bne	a3,a2,1ba4 <main.c.acedbf7c+0x75f>
    1b5a:	4681                	li	a3,0
    1b5c:	84c18613          	add	a2,gp,-1972 # 2000004c <sprite28>
    1b60:	00c687b3          	add	a5,a3,a2
    1b64:	0007c503          	lbu	a0,0(a5)
    1b68:	d23a                	sw	a4,36(sp)
    1b6a:	c036                	sw	a3,0(sp)
    1b6c:	9dffe0ef          	jal	54a <__floatsisf>
    1b70:	85a6                	mv	a1,s1
    1b72:	f22fe0ef          	jal	294 <__mulsf3>
    1b76:	983fe0ef          	jal	4f8 <__fixunssfsi>
    1b7a:	0ff57513          	zext.b	a0,a0
    1b7e:	b5bfe0ef          	jal	6d8 <I2C_write>
    1b82:	5712                	lw	a4,36(sp)
    1b84:	00170793          	add	a5,a4,1
    1b88:	0ff7f713          	zext.b	a4,a5
    1b8c:	07e2                	sll	a5,a5,0x18
    1b8e:	87e1                	sra	a5,a5,0x18
    1b90:	3407ca63          	bltz	a5,1ee4 <main.c.acedbf7c+0xa9f>
    1b94:	4682                	lw	a3,0(sp)
    1b96:	4791                	li	a5,4
    1b98:	0685                	add	a3,a3,1
    1b9a:	84c18613          	add	a2,gp,-1972 # 2000004c <sprite28>
    1b9e:	fcf691e3          	bne	a3,a5,1b60 <main.c.acedbf7c+0x71b>
    1ba2:	bd9d                	j	1a18 <main.c.acedbf7c+0x5d3>
    1ba4:	4609                	li	a2,2
    1ba6:	0ac69f63          	bne	a3,a2,1c64 <main.c.acedbf7c+0x81f>
    1baa:	4681                	li	a3,0
    1bac:	84818613          	add	a2,gp,-1976 # 20000048 <sprite30>
    1bb0:	00c687b3          	add	a5,a3,a2
    1bb4:	0007c503          	lbu	a0,0(a5)
    1bb8:	d23a                	sw	a4,36(sp)
    1bba:	c036                	sw	a3,0(sp)
    1bbc:	98ffe0ef          	jal	54a <__floatsisf>
    1bc0:	85a6                	mv	a1,s1
    1bc2:	ed2fe0ef          	jal	294 <__mulsf3>
    1bc6:	933fe0ef          	jal	4f8 <__fixunssfsi>
    1bca:	0ff57513          	zext.b	a0,a0
    1bce:	b0bfe0ef          	jal	6d8 <I2C_write>
    1bd2:	5712                	lw	a4,36(sp)
    1bd4:	00170793          	add	a5,a4,1
    1bd8:	0ff7f713          	zext.b	a4,a5
    1bdc:	07e2                	sll	a5,a5,0x18
    1bde:	87e1                	sra	a5,a5,0x18
    1be0:	b407cfe3          	bltz	a5,173e <main.c.acedbf7c+0x2f9>
    1be4:	4682                	lw	a3,0(sp)
    1be6:	4791                	li	a5,4
    1be8:	0685                	add	a3,a3,1
    1bea:	84818613          	add	a2,gp,-1976 # 20000048 <sprite30>
    1bee:	fcf691e3          	bne	a3,a5,1bb0 <main.c.acedbf7c+0x76b>
    1bf2:	b51d                	j	1a18 <main.c.acedbf7c+0x5d3>
    1bf4:	4672                	lw	a2,28(sp)
    1bf6:	6689                	lui	a3,0x2
    1bf8:	22868693          	add	a3,a3,552 # 2228 <VSlide>
    1bfc:	060a                	sll	a2,a2,0x2
    1bfe:	96b2                	add	a3,a3,a2
    1c00:	4294                	lw	a3,0(a3)
    1c02:	c036                	sw	a3,0(sp)
    1c04:	4602                	lw	a2,0(sp)
    1c06:	86c1aa23          	sw	a2,-1932(gp) # 20000074 <VSlideOut>
    1c0a:	200006b7          	lui	a3,0x20000
    1c0e:	0016c403          	lbu	s0,1(a3) # 20000001 <LorR>
    1c12:	4605                	li	a2,1
    1c14:	87a1c483          	lbu	s1,-1926(gp) # 2000007a <MainAnim>
    1c18:	12c41463          	bne	s0,a2,1d40 <main.c.acedbf7c+0x8fb>
    1c1c:	ecb5                	bnez	s1,1c98 <main.c.acedbf7c+0x853>
    1c1e:	84418613          	add	a2,gp,-1980 # 20000044 <sprite21>
    1c22:	00c487b3          	add	a5,s1,a2
    1c26:	0007c503          	lbu	a0,0(a5)
    1c2a:	d23a                	sw	a4,36(sp)
    1c2c:	91ffe0ef          	jal	54a <__floatsisf>
    1c30:	4582                	lw	a1,0(sp)
    1c32:	e62fe0ef          	jal	294 <__mulsf3>
    1c36:	8c3fe0ef          	jal	4f8 <__fixunssfsi>
    1c3a:	0ff57513          	zext.b	a0,a0
    1c3e:	a9bfe0ef          	jal	6d8 <I2C_write>
    1c42:	5712                	lw	a4,36(sp)
    1c44:	00170793          	add	a5,a4,1
    1c48:	0ff7f713          	zext.b	a4,a5
    1c4c:	07e2                	sll	a5,a5,0x18
    1c4e:	87e1                	sra	a5,a5,0x18
    1c50:	ae07c7e3          	bltz	a5,173e <main.c.acedbf7c+0x2f9>
    1c54:	0485                	add	s1,s1,1
    1c56:	4591                	li	a1,4
    1c58:	03c14783          	lbu	a5,60(sp)
    1c5c:	84418613          	add	a2,gp,-1980 # 20000044 <sprite21>
    1c60:	fcb491e3          	bne	s1,a1,1c22 <main.c.acedbf7c+0x7dd>
    1c64:	ac040de3          	beqz	s0,173e <main.c.acedbf7c+0x2f9>
    1c68:	a2e9                	j	1e32 <main.c.acedbf7c+0x9ed>
    1c6a:	d43e                	sw	a5,40(sp)
    1c6c:	47f2                	lw	a5,28(sp)
    1c6e:	4621                	li	a2,8
    1c70:	6689                	lui	a3,0x2
    1c72:	8e1d                	sub	a2,a2,a5
    1c74:	060a                	sll	a2,a2,0x2
    1c76:	22868693          	add	a3,a3,552 # 2228 <VSlide>
    1c7a:	96b2                	add	a3,a3,a2
    1c7c:	428c                	lw	a1,0(a3)
    1c7e:	8081a503          	lw	a0,-2040(gp) # 20000008 <LorR+0x7>
    1c82:	d23a                	sw	a4,36(sp)
    1c84:	b80fe0ef          	jal	4 <__divsf3>
    1c88:	8081a583          	lw	a1,-2040(gp) # 20000008 <LorR+0x7>
    1c8c:	b78fe0ef          	jal	4 <__divsf3>
    1c90:	57a2                	lw	a5,40(sp)
    1c92:	5712                	lw	a4,36(sp)
    1c94:	c02a                	sw	a0,0(sp)
    1c96:	b7bd                	j	1c04 <main.c.acedbf7c+0x7bf>
    1c98:	04849a63          	bne	s1,s0,1cec <main.c.acedbf7c+0x8a7>
    1c9c:	4401                	li	s0,0
    1c9e:	84018313          	add	t1,gp,-1984 # 20000040 <sprite23>
    1ca2:	00640633          	add	a2,s0,t1
    1ca6:	00064503          	lbu	a0,0(a2)
    1caa:	d43e                	sw	a5,40(sp)
    1cac:	d23a                	sw	a4,36(sp)
    1cae:	89dfe0ef          	jal	54a <__floatsisf>
    1cb2:	4582                	lw	a1,0(sp)
    1cb4:	de0fe0ef          	jal	294 <__mulsf3>
    1cb8:	841fe0ef          	jal	4f8 <__fixunssfsi>
    1cbc:	0ff57513          	zext.b	a0,a0
    1cc0:	a19fe0ef          	jal	6d8 <I2C_write>
    1cc4:	5712                	lw	a4,36(sp)
    1cc6:	57a2                	lw	a5,40(sp)
    1cc8:	00170613          	add	a2,a4,1
    1ccc:	0ff67713          	zext.b	a4,a2
    1cd0:	0662                	sll	a2,a2,0x18
    1cd2:	8661                	sra	a2,a2,0x18
    1cd4:	20064a63          	bltz	a2,1ee8 <main.c.acedbf7c+0xaa3>
    1cd8:	0405                	add	s0,s0,1
    1cda:	4611                	li	a2,4
    1cdc:	03c14783          	lbu	a5,60(sp)
    1ce0:	84018313          	add	t1,gp,-1984 # 20000040 <sprite23>
    1ce4:	fac41fe3          	bne	s0,a2,1ca2 <main.c.acedbf7c+0x85d>
    1ce8:	8426                	mv	s0,s1
    1cea:	bfad                	j	1c64 <main.c.acedbf7c+0x81f>
    1cec:	4609                	li	a2,2
    1cee:	14c49263          	bne	s1,a2,1e32 <main.c.acedbf7c+0x9ed>
    1cf2:	4481                	li	s1,0
    1cf4:	83c18613          	add	a2,gp,-1988 # 2000003c <sprite25>
    1cf8:	00c487b3          	add	a5,s1,a2
    1cfc:	0007c503          	lbu	a0,0(a5)
    1d00:	d23a                	sw	a4,36(sp)
    1d02:	849fe0ef          	jal	54a <__floatsisf>
    1d06:	4582                	lw	a1,0(sp)
    1d08:	d8cfe0ef          	jal	294 <__mulsf3>
    1d0c:	fecfe0ef          	jal	4f8 <__fixunssfsi>
    1d10:	0ff57513          	zext.b	a0,a0
    1d14:	9c5fe0ef          	jal	6d8 <I2C_write>
    1d18:	5712                	lw	a4,36(sp)
    1d1a:	00170793          	add	a5,a4,1
    1d1e:	0ff7f713          	zext.b	a4,a5
    1d22:	07e2                	sll	a5,a5,0x18
    1d24:	87e1                	sra	a5,a5,0x18
    1d26:	a007cce3          	bltz	a5,173e <main.c.acedbf7c+0x2f9>
    1d2a:	0485                	add	s1,s1,1
    1d2c:	4591                	li	a1,4
    1d2e:	03c10783          	lb	a5,60(sp)
    1d32:	83c18613          	add	a2,gp,-1988 # 2000003c <sprite25>
    1d36:	fcb491e3          	bne	s1,a1,1cf8 <main.c.acedbf7c+0x8b3>
    1d3a:	0ff7f793          	zext.b	a5,a5
    1d3e:	b71d                	j	1c64 <main.c.acedbf7c+0x81f>
    1d40:	e8a9                	bnez	s1,1d92 <main.c.acedbf7c+0x94d>
    1d42:	4401                	li	s0,0
    1d44:	86418313          	add	t1,gp,-1948 # 20000064 <sprite27>
    1d48:	00640633          	add	a2,s0,t1
    1d4c:	00064503          	lbu	a0,0(a2)
    1d50:	d43e                	sw	a5,40(sp)
    1d52:	d23a                	sw	a4,36(sp)
    1d54:	ff6fe0ef          	jal	54a <__floatsisf>
    1d58:	4582                	lw	a1,0(sp)
    1d5a:	d3afe0ef          	jal	294 <__mulsf3>
    1d5e:	f9afe0ef          	jal	4f8 <__fixunssfsi>
    1d62:	0ff57513          	zext.b	a0,a0
    1d66:	973fe0ef          	jal	6d8 <I2C_write>
    1d6a:	5712                	lw	a4,36(sp)
    1d6c:	57a2                	lw	a5,40(sp)
    1d6e:	00170613          	add	a2,a4,1
    1d72:	0ff67713          	zext.b	a4,a2
    1d76:	0662                	sll	a2,a2,0x18
    1d78:	8661                	sra	a2,a2,0x18
    1d7a:	f60647e3          	bltz	a2,1ce8 <main.c.acedbf7c+0x8a3>
    1d7e:	0405                	add	s0,s0,1
    1d80:	4611                	li	a2,4
    1d82:	03c14783          	lbu	a5,60(sp)
    1d86:	86418313          	add	t1,gp,-1948 # 20000064 <sprite27>
    1d8a:	fac41fe3          	bne	s0,a2,1d48 <main.c.acedbf7c+0x903>
    1d8e:	4485                	li	s1,1
    1d90:	bfa1                	j	1ce8 <main.c.acedbf7c+0x8a3>
    1d92:	04c49963          	bne	s1,a2,1de4 <main.c.acedbf7c+0x99f>
    1d96:	4401                	li	s0,0
    1d98:	83818313          	add	t1,gp,-1992 # 20000038 <sprite29>
    1d9c:	00640633          	add	a2,s0,t1
    1da0:	00064503          	lbu	a0,0(a2)
    1da4:	d43e                	sw	a5,40(sp)
    1da6:	d23a                	sw	a4,36(sp)
    1da8:	fa2fe0ef          	jal	54a <__floatsisf>
    1dac:	4582                	lw	a1,0(sp)
    1dae:	ce6fe0ef          	jal	294 <__mulsf3>
    1db2:	f46fe0ef          	jal	4f8 <__fixunssfsi>
    1db6:	0ff57513          	zext.b	a0,a0
    1dba:	91ffe0ef          	jal	6d8 <I2C_write>
    1dbe:	5712                	lw	a4,36(sp)
    1dc0:	57a2                	lw	a5,40(sp)
    1dc2:	00170613          	add	a2,a4,1
    1dc6:	0ff67713          	zext.b	a4,a2
    1dca:	0662                	sll	a2,a2,0x18
    1dcc:	8661                	sra	a2,a2,0x18
    1dce:	10064d63          	bltz	a2,1ee8 <main.c.acedbf7c+0xaa3>
    1dd2:	0405                	add	s0,s0,1
    1dd4:	4611                	li	a2,4
    1dd6:	03c14783          	lbu	a5,60(sp)
    1dda:	83818313          	add	t1,gp,-1992 # 20000038 <sprite29>
    1dde:	fac41fe3          	bne	s0,a2,1d9c <main.c.acedbf7c+0x957>
    1de2:	b719                	j	1ce8 <main.c.acedbf7c+0x8a3>
    1de4:	4609                	li	a2,2
    1de6:	04c49663          	bne	s1,a2,1e32 <main.c.acedbf7c+0x9ed>
    1dea:	4401                	li	s0,0
    1dec:	83418493          	add	s1,gp,-1996 # 20000034 <sprite31>
    1df0:	009407b3          	add	a5,s0,s1
    1df4:	0007c503          	lbu	a0,0(a5)
    1df8:	d23a                	sw	a4,36(sp)
    1dfa:	f50fe0ef          	jal	54a <__floatsisf>
    1dfe:	4582                	lw	a1,0(sp)
    1e00:	c94fe0ef          	jal	294 <__mulsf3>
    1e04:	ef4fe0ef          	jal	4f8 <__fixunssfsi>
    1e08:	0ff57513          	zext.b	a0,a0
    1e0c:	8cdfe0ef          	jal	6d8 <I2C_write>
    1e10:	5712                	lw	a4,36(sp)
    1e12:	00170793          	add	a5,a4,1
    1e16:	0ff7f713          	zext.b	a4,a5
    1e1a:	07e2                	sll	a5,a5,0x18
    1e1c:	87e1                	sra	a5,a5,0x18
    1e1e:	9207c0e3          	bltz	a5,173e <main.c.acedbf7c+0x2f9>
    1e22:	0405                	add	s0,s0,1
    1e24:	4611                	li	a2,4
    1e26:	03c10783          	lb	a5,60(sp)
    1e2a:	fcc413e3          	bne	s0,a2,1df0 <main.c.acedbf7c+0x9ab>
    1e2e:	0ff7f793          	zext.b	a5,a5
    1e32:	46d2                	lw	a3,20(sp)
    1e34:	0685                	add	a3,a3,1
    1e36:	0ff6f693          	zext.b	a3,a3
    1e3a:	ca36                	sw	a3,20(sp)
    1e3c:	88bff06f          	j	16c6 <main.c.acedbf7c+0x281>
    1e40:	4632                	lw	a2,12(sp)
    1e42:	46f9                	li	a3,30
    1e44:	02c6ef63          	bltu	a3,a2,1e82 <main.c.acedbf7c+0xa3d>
    1e48:	86018493          	add	s1,gp,-1952 # 20000060 <sprite12>
    1e4c:	94be                	add	s1,s1,a5
    1e4e:	843a                	mv	s0,a4
    1e50:	8f99                	sub	a5,a5,a4
    1e52:	00f40733          	add	a4,s0,a5
    1e56:	0ff77713          	zext.b	a4,a4
    1e5a:	468d                	li	a3,3
    1e5c:	88e6e9e3          	bltu	a3,a4,16ee <main.c.acedbf7c+0x2a9>
    1e60:	0004c503          	lbu	a0,0(s1)
    1e64:	c03e                	sw	a5,0(sp)
    1e66:	0485                	add	s1,s1,1
    1e68:	871fe0ef          	jal	6d8 <I2C_write>
    1e6c:	00140713          	add	a4,s0,1
    1e70:	0ff77413          	zext.b	s0,a4
    1e74:	0762                	sll	a4,a4,0x18
    1e76:	8761                	sra	a4,a4,0x18
    1e78:	4782                	lw	a5,0(sp)
    1e7a:	fc075ce3          	bgez	a4,1e52 <main.c.acedbf7c+0xa0d>
    1e7e:	8c1ff06f          	j	173e <main.c.acedbf7c+0x2f9>
    1e82:	81418493          	add	s1,gp,-2028 # 20000014 <sprite11>
    1e86:	94be                	add	s1,s1,a5
    1e88:	843a                	mv	s0,a4
    1e8a:	8f99                	sub	a5,a5,a4
    1e8c:	00f40733          	add	a4,s0,a5
    1e90:	0ff77713          	zext.b	a4,a4
    1e94:	468d                	li	a3,3
    1e96:	84e6ece3          	bltu	a3,a4,16ee <main.c.acedbf7c+0x2a9>
    1e9a:	0004c503          	lbu	a0,0(s1)
    1e9e:	c03e                	sw	a5,0(sp)
    1ea0:	0485                	add	s1,s1,1
    1ea2:	837fe0ef          	jal	6d8 <I2C_write>
    1ea6:	00140713          	add	a4,s0,1
    1eaa:	0ff77413          	zext.b	s0,a4
    1eae:	0762                	sll	a4,a4,0x18
    1eb0:	8761                	sra	a4,a4,0x18
    1eb2:	4782                	lw	a5,0(sp)
    1eb4:	fc075ce3          	bgez	a4,1e8c <main.c.acedbf7c+0xa47>
    1eb8:	887ff06f          	j	173e <main.c.acedbf7c+0x2f9>
    1ebc:	4501                	li	a0,0
    1ebe:	81bfe0ef          	jal	6d8 <I2C_write>
    1ec2:	00140793          	add	a5,s0,1
    1ec6:	0ff7f413          	zext.b	s0,a5
    1eca:	07e2                	sll	a5,a5,0x18
    1ecc:	87e1                	sra	a5,a5,0x18
    1ece:	8607c8e3          	bltz	a5,173e <main.c.acedbf7c+0x2f9>
    1ed2:	009407b3          	add	a5,s0,s1
    1ed6:	0ff7f793          	zext.b	a5,a5
    1eda:	468d                	li	a3,3
    1edc:	fef6f0e3          	bgeu	a3,a5,1ebc <main.c.acedbf7c+0xa77>
    1ee0:	80fff06f          	j	16ee <main.c.acedbf7c+0x2a9>
    1ee4:	4401                	li	s0,0
    1ee6:	be0d                	j	1a18 <main.c.acedbf7c+0x5d3>
    1ee8:	4481                	li	s1,0
    1eea:	bbfd                	j	1ce8 <main.c.acedbf7c+0x8a3>

00001eec <reset_handler>:
    1eec:	6785                	lui	a5,0x1
    1eee:	99c78793          	add	a5,a5,-1636 # 99c <main>
    1ef2:	1ffff197          	auipc	gp,0x1ffff
    1ef6:	90e18193          	add	gp,gp,-1778 # 20000800 <__global_pointer$>
    1efa:	00018113          	mv	sp,gp
    1efe:	08800513          	li	a0,136
    1f02:	30051073          	csrw	mstatus,a0
    1f06:	458d                	li	a1,3
    1f08:	80459073          	csrw	0x804,a1
    1f0c:	ffffe517          	auipc	a0,0xffffe
    1f10:	0f450513          	add	a0,a0,244 # 0 <jump_reset>
    1f14:	8d4d                	or	a0,a0,a1
    1f16:	30551073          	csrw	mtvec,a0
    1f1a:	34179073          	csrw	mepc,a5
    1f1e:	6709                	lui	a4,0x2
    1f20:	200007b7          	lui	a5,0x20000
    1f24:	49c70713          	add	a4,a4,1180 # 249c <_data_lma>
    1f28:	00078793          	mv	a5,a5
    1f2c:	86c18693          	add	a3,gp,-1940 # 2000006c <injur>
    1f30:	02d7e663          	bltu	a5,a3,1f5c <reset_handler+0x70>
    1f34:	86c18793          	add	a5,gp,-1940 # 2000006c <injur>
    1f38:	9b818713          	add	a4,gp,-1608 # 200001b8 <_ebss>
    1f3c:	02e7e563          	bltu	a5,a4,1f66 <reset_handler+0x7a>
    1f40:	400217b7          	lui	a5,0x40021
    1f44:	4741                	li	a4,16
    1f46:	c3d8                	sw	a4,4(a5)
    1f48:	4695                	li	a3,5
    1f4a:	e000f737          	lui	a4,0xe000f
    1f4e:	c314                	sw	a3,0(a4)
    1f50:	4f98                	lw	a4,24(a5)
    1f52:	03476713          	or	a4,a4,52
    1f56:	cf98                	sw	a4,24(a5)
    1f58:	30200073          	mret
    1f5c:	4310                	lw	a2,0(a4)
    1f5e:	0711                	add	a4,a4,4 # e000f004 <__global_pointer$+0xc000e804>
    1f60:	c390                	sw	a2,0(a5)
    1f62:	0791                	add	a5,a5,4 # 40021004 <__global_pointer$+0x20020804>
    1f64:	b7f1                	j	1f30 <reset_handler+0x44>
    1f66:	0007a023          	sw	zero,0(a5)
    1f6a:	0791                	add	a5,a5,4
    1f6c:	bfc1                	j	1f3c <reset_handler+0x50>
    1f6e:	0000                	unimp
    1f70:	028c                	add	a1,sp,320
    1f72:	0000                	unimp
    1f74:	0106                	sll	sp,sp,0x1
    1f76:	0000                	unimp
    1f78:	0234                	add	a3,sp,264
    1f7a:	0000                	unimp
    1f7c:	0106                	sll	sp,sp,0x1
    1f7e:	0000                	unimp
    1f80:	0280                	add	s0,sp,320
    1f82:	0000                	unimp
    1f84:	0106                	sll	sp,sp,0x1
    1f86:	0000                	unimp
    1f88:	0234                	add	a3,sp,264
    1f8a:	0000                	unimp
    1f8c:	028c                	add	a1,sp,320
    1f8e:	0000                	unimp
    1f90:	028c                	add	a1,sp,320
    1f92:	0000                	unimp
    1f94:	0280                	add	s0,sp,320
    1f96:	0000                	unimp
    1f98:	0234                	add	a3,sp,264
    1f9a:	0000                	unimp
    1f9c:	00ee                	sll	ra,ra,0x1b
    1f9e:	0000                	unimp
    1fa0:	00ee                	sll	ra,ra,0x1b
    1fa2:	0000                	unimp
    1fa4:	00ee                	sll	ra,ra,0x1b
    1fa6:	0000                	unimp
    1fa8:	0280                	add	s0,sp,320
	...

00001fac <__clz_tab>:
    1fac:	0100 0202 0303 0303 0404 0404 0404 0404     ................
    1fbc:	0505 0505 0505 0505 0505 0505 0505 0505     ................
    1fcc:	0606 0606 0606 0606 0606 0606 0606 0606     ................
    1fdc:	0606 0606 0606 0606 0606 0606 0606 0606     ................
    1fec:	0707 0707 0707 0707 0707 0707 0707 0707     ................
    1ffc:	0707 0707 0707 0707 0707 0707 0707 0707     ................
    200c:	0707 0707 0707 0707 0707 0707 0707 0707     ................
    201c:	0707 0707 0707 0707 0707 0707 0707 0707     ................
    202c:	0808 0808 0808 0808 0808 0808 0808 0808     ................
    203c:	0808 0808 0808 0808 0808 0808 0808 0808     ................
    204c:	0808 0808 0808 0808 0808 0808 0808 0808     ................
    205c:	0808 0808 0808 0808 0808 0808 0808 0808     ................
    206c:	0808 0808 0808 0808 0808 0808 0808 0808     ................
    207c:	0808 0808 0808 0808 0808 0808 0808 0808     ................
    208c:	0808 0808 0808 0808 0808 0808 0808 0808     ................
    209c:	0808 0808 0808 0808 0808 0808 0808 0808     ................
    20ac:	102a 0000 103a 0000 104a 0000 105a 0000     *...:...J...Z...
    20bc:	106a 0000 107a 0000 108a 0000 109a 0000     j...z...........
    20cc:	10aa 0000 1968 0000 1930 0000 18f8 0000     ....h...0.......
    20dc:	18c0 0000 19a0 0000 1bf4 0000 179e 0000     ................
    20ec:	1888 0000 179e 0000 179e 0000 1e40 0000     ............@...
    20fc:	179e 0000 17e0 0000 17a8 0000 1850 0000     ............P...
    210c:	1818 0000                                   ....

00002110 <OLED_INIT_CMD>:
    2110:	3fa8 148d 0020 0021 227f 3f00 12da c0a0     .?.. .!..".?....
    2120:	00af 0000                                   ....

00002124 <start>:
    2124:	0440 ffff ffff 7fff bf7f 9fbf dfff dfdf     @...............
    2134:	bfff 7b7f 73fb 0707 7f1f 7f7f 7f7f ffff     ...{.s..........
    2144:	fbfb 03fb fbfb fffb ff0d df0f efef ff1f     ................
    2154:	1fef 7fff ff8f ffff ffff ffff ffff ffff     ................
    2164:	ffff 071f 0307 4600 e3c3 f1e1 f1f1 f0f9     .......F........
    2174:	98f9 d898 f8f8 f8f8 e0c8 8000 f0e0 fff0     ................
    2184:	7fff bebd bfbf fdff dffe 1ffc ffff fd1e     ................
    2194:	efff fef0 ffff ffff ffff ffff ffff 3fff     ...............?
    21a4:	ffff feff fcfe f8fc e3e1 0787 0f0f 0f0f     ................
    21b4:	0f0f 0f0f 070f c307 f0e3 fef8 ffff ffff     ................
    21c4:	eff0 dfdf 5d5d 7f61 405e 407f 7f7f 5e40     ....]]a.^@.@..@^
    21d4:	5e5e 7f61 5a61 5a5a 7f59 5e60 7e7e c0fe     ^^a.aZZZY.`^~~..
    21e4:	ffde ffff ffff ffff ffff fcff 80f8 0000     ................
    21f4:	4c04 7868 7078 b97c 7777 8f6f ffff ffff     .Lhxxp|.wwo.....
    2204:	ffff ffff 7f00 0101 5549 0125 7d09 0109     ........IU%..}..
    2214:	1579 0179 357d 0159 7d09 0109 007f ffff     y.y.}5Y..}......
    2224:	ffff 0000                                   ....

00002228 <VSlide>:
    2228:	0000 3f80 0000 4000 0000 4080 0000 4100     ...?...@...@...A
    2238:	0000 4180 0000 4200 0000 4280 0000 4300     ...A...B...B...C
    2248:	0000 4380                                   ...C

0000224c <KeyinLevel>:
    224c:	0b0a 040b 0913 0c08 0b09 0000               ............

00002258 <map1couche8>:
    2258:	100f 100f 100f 100f 100f 100f 100f 100f     ................
    2268:	100f 100f 100f 100f 0000 0000 000f 1000     ................
    2278:	100f 100f 100f 100f 100f 100f 100f 100f     ................
    2288:	0000 0000                                   ....

0000228c <map1couche7>:
    228c:	0403 0403 0000 0800 0403 0403 0403 0403     ................
    229c:	0403 0403 0000 0000 0000 0000 0000 0000     ................
    22ac:	0b00 0000 0000 000b 0000 0000 100f 100f     ................
    22bc:	0000 0000                                   ....

000022c0 <map1couche6>:
    22c0:	0403 0403 0b00 0000 0000 0000 0403 0403     ................
    22d0:	0403 0403 0000 0403 0000 0000 0000 0000     ................
    22e0:	0000 0403 0000 0b00 0000 0000 0d00 000e     ................
    22f0:	0000 0000                                   ....

000022f4 <map1couche5>:
    22f4:	0403 0403 0000 0000 0000 0000 0000 0800     ................
    2304:	0000 0403 0000 000b 0403 0403 0403 0403     ................
    2314:	0000 0403 0000 0000 0403 0403 0000 0000     ................
    2324:	000b 0000                                   ....

00002328 <map1couche4>:
    2328:	0403 0403 0000 0000 0000 0000 0000 0000     ................
    2338:	0000 0000 0b00 0000 0000 0000 0000 0000     ................
    2348:	0403 0403 0403 0000 0000 0000 0000 0000     ................
    2358:	0000 0000                                   ....

0000235c <map1couche3>:
    235c:	0403 0403 0000 0000 0000 0000 0000 000b     ................
    236c:	0000 0b00 0000 0000 0000 0000 0000 0403     ................
    237c:	0403 0403 0403 0000 0000 0000 0403 0403     ................
    238c:	0000 0000                                   ....

00002390 <map1couche2>:
    2390:	0403 0403 0403 0403 0403 0403 0403 0403     ................
    23a0:	0403 0403 0403 0403 0403 0403 0403 0403     ................
    23b0:	0403 0403 0403 0403 0000 0000 0403 0403     ................
    23c0:	0403 0403                                   ....

000023c4 <Level9>:
    23c4:	0c00 0c0b 0c02 0703 080c 020a 020c 020c     ................
    23d4:	0403 0c07 0000 0000                         ........

000023dc <Level8>:
    23dc:	0b00 010c 0302 0306 030c 030c 0c06 0000     ................
    23ec:	0000 0000                                   ....

000023f0 <Level7>:
    23f0:	0c00 0102 0301 0303 0c03 0101 0801 0b07     ................
    2400:	0000 0000                                   ....

00002404 <Level6>:
    2404:	0100 0c02 030c 030c 010c 0602 000b 0000     ................

00002414 <Level5>:
    2414:	0100 020c 0b0a 080a 020c 0303 030c 0003     ................
    2424:	0000 0000                                   ....

00002428 <Level4>:
    2428:	0300 040a 0307 0406 0306 0c02 0203 0c0b     ................
    2438:	0504 0201 0c02 0501 0c05 0000 0000 0000     ................

00002448 <Level3>:
    2448:	0b00 0a0a 0708 0a06 0506 0203 0000 0000     ................

00002458 <Level2>:
    2458:	0100 0201 0403 0303 0c02 0602 0705 010b     ................
    2468:	000c 0000                                   ....

0000246c <Level1>:
    246c:	0100 0302 0707 0506 0908 0102 0403 0706     ................
    247c:	0b01 0000 0000 0000                         ........

00002484 <Level0>:
    2484:	0100 0402 0204 0205 090b 0a08 020a 040c     ................
    2494:	0706 0000 0000 0000                         ........
