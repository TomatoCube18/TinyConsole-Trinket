
bin/tiny_tris.elf:     file format elf32-littleriscv


Disassembly of section .init:

00000000 <jump_reset>:
   0:	5e40106f          	j	15e4 <reset_handler>

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

000000d0 <PSEUDO_RND_TTRIS>:
      d0:	8281c783          	lbu	a5,-2008(gp) # 20000028 <RND_VAR_TTRIS>
      d4:	4695                	li	a3,5
      d6:	4501                	li	a0,0
      d8:	00f6e563          	bltu	a3,a5,e2 <PSEUDO_RND_TTRIS+0x12>
      dc:	0785                	add	a5,a5,1
      de:	0ff7f513          	zext.b	a0,a5
      e2:	82a18423          	sb	a0,-2008(gp) # 20000028 <RND_VAR_TTRIS>
      e6:	8082                	ret

000000e8 <Ou_suis_Je_TTRIS>:
      e8:	1151                	add	sp,sp,-12
      ea:	fdb50513          	add	a0,a0,-37
      ee:	c026                	sw	s1,0(sp)
      f0:	01851493          	sll	s1,a0,0x18
      f4:	84e1                	sra	s1,s1,0x18
      f6:	0591                	add	a1,a1,4
      f8:	c222                	sw	s0,4(sp)
      fa:	8526                	mv	a0,s1
      fc:	01859413          	sll	s0,a1,0x18
     100:	458d                	li	a1,3
     102:	c406                	sw	ra,8(sp)
     104:	3f21                	jal	1c <__divsi3>
     106:	1575                	add	a0,a0,-3
     108:	82a18ca3          	sb	a0,-1991(gp) # 20000039 <OU_SUIS_JE_X_TTRIS>
     10c:	458d                	li	a1,3
     10e:	8526                	mv	a0,s1
     110:	3795                	jal	74 <__modsi3>
     112:	0562                	sll	a0,a0,0x18
     114:	8561                	sra	a0,a0,0x18
     116:	8461                	sra	s0,s0,0x18
     118:	00a03533          	snez	a0,a0
     11c:	82a18fa3          	sb	a0,-1985(gp) # 2000003f <OU_SUIS_JE_X_ENGAGED_TTRIS>
     120:	458d                	li	a1,3
     122:	8522                	mv	a0,s0
     124:	3de5                	jal	1c <__divsi3>
     126:	01851793          	sll	a5,a0,0x18
     12a:	87e1                	sra	a5,a5,0x18
     12c:	00179513          	sll	a0,a5,0x1
     130:	953e                	add	a0,a0,a5
     132:	40a2                	lw	ra,8(sp)
     134:	8d01                	sub	a0,a0,s0
     136:	4412                	lw	s0,4(sp)
     138:	ffd78693          	add	a3,a5,-3
     13c:	00a03533          	snez	a0,a0
     140:	82d18c23          	sb	a3,-1992(gp) # 20000038 <OU_SUIS_JE_Y_TTRIS>
     144:	82a18d23          	sb	a0,-1990(gp) # 2000003a <OU_SUIS_JE_Y_ENGAGED_TTRIS>
     148:	4482                	lw	s1,0(sp)
     14a:	0131                	add	sp,sp,12
     14c:	8082                	ret

0000014e <rotate_Matrix_TTRIS>:
     14e:	8421c783          	lbu	a5,-1982(gp) # 20000042 <PIECEs_TTRIS>
     152:	6609                	lui	a2,0x2
     154:	1131                	add	sp,sp,-20
     156:	00279713          	sll	a4,a5,0x2
     15a:	c2c60613          	add	a2,a2,-980 # 1c2c <Pieces_TTRIS>
     15e:	97ba                	add	a5,a5,a4
     160:	c432                	sw	a2,8(sp)
     162:	0ff7f793          	zext.b	a5,a5
     166:	86c18613          	add	a2,gp,-1940 # 2000006c <Piece_Mat2_TTRIS>
     16a:	c822                	sw	s0,16(sp)
     16c:	c626                	sw	s1,12(sp)
     16e:	c03e                	sw	a5,0(sp)
     170:	4701                	li	a4,0
     172:	4781                	li	a5,0
     174:	4681                	li	a3,0
     176:	4289                	li	t0,2
     178:	448d                	li	s1,3
     17a:	c232                	sw	a2,4(sp)
     17c:	4415                	li	s0,5
     17e:	4602                	lw	a2,0(sp)
     180:	45a2                	lw	a1,8(sp)
     182:	963a                	add	a2,a2,a4
     184:	0662                	sll	a2,a2,0x18
     186:	8661                	sra	a2,a2,0x18
     188:	962e                	add	a2,a2,a1
     18a:	00064383          	lbu	t2,0(a2)
     18e:	4581                	li	a1,0
     190:	0ff5f613          	zext.b	a2,a1
     194:	04550c63          	beq	a0,t0,1ec <rotate_Matrix_TTRIS+0x9e>
     198:	00a2e663          	bltu	t0,a0,1a4 <rotate_Matrix_TTRIS+0x56>
     19c:	e131                	bnez	a0,1e0 <rotate_Matrix_TTRIS+0x92>
     19e:	87ba                	mv	a5,a4
     1a0:	86b2                	mv	a3,a2
     1a2:	a019                	j	1a8 <rotate_Matrix_TTRIS+0x5a>
     1a4:	04950d63          	beq	a0,s1,1fe <rotate_Matrix_TTRIS+0xb0>
     1a8:	4312                	lw	t1,4(sp)
     1aa:	00269613          	sll	a2,a3,0x2
     1ae:	9636                	add	a2,a2,a3
     1b0:	961a                	add	a2,a2,t1
     1b2:	08000313          	li	t1,128
     1b6:	40b35333          	sra	t1,t1,a1
     1ba:	0063f333          	and	t1,t2,t1
     1be:	963e                	add	a2,a2,a5
     1c0:	00603333          	snez	t1,t1
     1c4:	00660023          	sb	t1,0(a2)
     1c8:	0585                	add	a1,a1,1
     1ca:	fc8593e3          	bne	a1,s0,190 <rotate_Matrix_TTRIS+0x42>
     1ce:	0705                	add	a4,a4,1
     1d0:	0ff77713          	zext.b	a4,a4
     1d4:	fab715e3          	bne	a4,a1,17e <rotate_Matrix_TTRIS+0x30>
     1d8:	4442                	lw	s0,16(sp)
     1da:	44b2                	lw	s1,12(sp)
     1dc:	0151                	add	sp,sp,20
     1de:	8082                	ret
     1e0:	4691                	li	a3,4
     1e2:	8e99                	sub	a3,a3,a4
     1e4:	0ff6f693          	zext.b	a3,a3
     1e8:	87b2                	mv	a5,a2
     1ea:	bf7d                	j	1a8 <rotate_Matrix_TTRIS+0x5a>
     1ec:	4791                	li	a5,4
     1ee:	40c78633          	sub	a2,a5,a2
     1f2:	8f99                	sub	a5,a5,a4
     1f4:	0ff67693          	zext.b	a3,a2
     1f8:	0ff7f793          	zext.b	a5,a5
     1fc:	b775                	j	1a8 <rotate_Matrix_TTRIS+0x5a>
     1fe:	4791                	li	a5,4
     200:	8f91                	sub	a5,a5,a2
     202:	0ff7f793          	zext.b	a5,a5
     206:	86ba                	mv	a3,a4
     208:	b745                	j	1a8 <rotate_Matrix_TTRIS+0x5a>

0000020a <SETUP_NEW_PREVIEW_PIECE_TTRIS>:
     20a:	1151                	add	sp,sp,-12
     20c:	c222                	sw	s0,4(sp)
     20e:	c406                	sw	ra,8(sp)
     210:	842a                	mv	s0,a0
     212:	3d7d                	jal	d0 <PSEUDO_RND_TTRIS>
     214:	84a181a3          	sb	a0,-1981(gp) # 20000043 <PIECEs_TTRIS_PREVIEW>
     218:	8421c783          	lbu	a5,-1982(gp) # 20000042 <PIECEs_TTRIS>
     21c:	4711                	li	a4,4
     21e:	02f76263          	bltu	a4,a5,242 <SETUP_NEW_PREVIEW_PIECE_TTRIS+0x38>
     222:	4685                	li	a3,1
     224:	4705                	li	a4,1
     226:	00f6e563          	bltu	a3,a5,230 <SETUP_NEW_PREVIEW_PIECE_TTRIS+0x26>
     22a:	470d                	li	a4,3
     22c:	c391                	beqz	a5,230 <SETUP_NEW_PREVIEW_PIECE_TTRIS+0x26>
     22e:	4701                	li	a4,0
     230:	00040023          	sb	zero,0(s0)
     234:	4412                	lw	s0,4(sp)
     236:	40a2                	lw	ra,8(sp)
     238:	82e187a3          	sb	a4,-2001(gp) # 2000002f <PIECEs_rot_TTRIS>
     23c:	4501                	li	a0,0
     23e:	0131                	add	sp,sp,12
     240:	b739                	j	14e <rotate_Matrix_TTRIS>
     242:	17ed                	add	a5,a5,-5
     244:	0ff7f793          	zext.b	a5,a5
     248:	4685                	li	a3,1
     24a:	4701                	li	a4,0
     24c:	fef6e2e3          	bltu	a3,a5,230 <SETUP_NEW_PREVIEW_PIECE_TTRIS+0x26>
     250:	470d                	li	a4,3
     252:	bff9                	j	230 <SETUP_NEW_PREVIEW_PIECE_TTRIS+0x26>

00000254 <GRID_STAT_TTRIS>:
     254:	872a                	mv	a4,a0
     256:	0205cf63          	bltz	a1,294 <GRID_STAT_TTRIS+0x40>
     25a:	0ff57793          	zext.b	a5,a0
     25e:	46ad                	li	a3,11
     260:	4505                	li	a0,1
     262:	02f6ea63          	bltu	a3,a5,296 <GRID_STAT_TTRIS+0x42>
     266:	47c9                	li	a5,18
     268:	02b7c763          	blt	a5,a1,296 <GRID_STAT_TTRIS+0x42>
     26c:	0075f793          	and	a5,a1,7
     270:	08000513          	li	a0,128
     274:	40f55533          	sra	a0,a0,a5
     278:	00171693          	sll	a3,a4,0x1
     27c:	9736                	add	a4,a4,a3
     27e:	84818793          	add	a5,gp,-1976 # 20000048 <Grid_TTRIS>
     282:	858d                	sra	a1,a1,0x3
     284:	97ba                	add	a5,a5,a4
     286:	97ae                	add	a5,a5,a1
     288:	0007c783          	lbu	a5,0(a5)
     28c:	8d7d                	and	a0,a0,a5
     28e:	00a03533          	snez	a0,a0
     292:	8082                	ret
     294:	4501                	li	a0,0
     296:	8082                	ret

00000298 <Check_collision_x_TTRIS>:
     298:	8391c783          	lbu	a5,-1991(gp) # 20000039 <OU_SUIS_JE_X_TTRIS>
     29c:	fdc10113          	add	sp,sp,-36
     2a0:	ce22                	sw	s0,28(sp)
     2a2:	8381c703          	lbu	a4,-1992(gp) # 20000038 <OU_SUIS_JE_Y_TTRIS>
     2a6:	97aa                	add	a5,a5,a0
     2a8:	86c18413          	add	s0,gp,-1940 # 2000006c <Piece_Mat2_TTRIS>
     2ac:	d006                	sw	ra,32(sp)
     2ae:	cc26                	sw	s1,24(sp)
     2b0:	0ff7f793          	zext.b	a5,a5
     2b4:	00540293          	add	t0,s0,5
     2b8:	4385                	li	t2,1
     2ba:	01871593          	sll	a1,a4,0x18
     2be:	85e1                	sra	a1,a1,0x18
     2c0:	84be                	mv	s1,a5
     2c2:	86a2                	mv	a3,s0
     2c4:	01940313          	add	t1,s0,25
     2c8:	0006c603          	lbu	a2,0(a3)
     2cc:	02761663          	bne	a2,t2,2f8 <Check_collision_x_TTRIS+0x60>
     2d0:	01849513          	sll	a0,s1,0x18
     2d4:	8561                	sra	a0,a0,0x18
     2d6:	ca1a                	sw	t1,20(sp)
     2d8:	c832                	sw	a2,16(sp)
     2da:	c63a                	sw	a4,12(sp)
     2dc:	c43e                	sw	a5,8(sp)
     2de:	c236                	sw	a3,4(sp)
     2e0:	c02e                	sw	a1,0(sp)
     2e2:	3f8d                	jal	254 <GRID_STAT_TTRIS>
     2e4:	87118293          	add	t0,gp,-1935 # 20000071 <Piece_Mat2_TTRIS+0x5>
     2e8:	4582                	lw	a1,0(sp)
     2ea:	4692                	lw	a3,4(sp)
     2ec:	47a2                	lw	a5,8(sp)
     2ee:	4732                	lw	a4,12(sp)
     2f0:	4642                	lw	a2,16(sp)
     2f2:	4352                	lw	t1,20(sp)
     2f4:	4385                	li	t2,1
     2f6:	ed11                	bnez	a0,312 <Check_collision_x_TTRIS+0x7a>
     2f8:	0485                	add	s1,s1,1
     2fa:	0695                	add	a3,a3,5
     2fc:	0ff4f493          	zext.b	s1,s1
     300:	fc6694e3          	bne	a3,t1,2c8 <Check_collision_x_TTRIS+0x30>
     304:	0705                	add	a4,a4,1
     306:	0405                	add	s0,s0,1
     308:	0ff77713          	zext.b	a4,a4
     30c:	fa5417e3          	bne	s0,t0,2ba <Check_collision_x_TTRIS+0x22>
     310:	4601                	li	a2,0
     312:	5082                	lw	ra,32(sp)
     314:	4472                	lw	s0,28(sp)
     316:	44e2                	lw	s1,24(sp)
     318:	8532                	mv	a0,a2
     31a:	02410113          	add	sp,sp,36
     31e:	8082                	ret

00000320 <Check_collision_y_TTRIS>:
     320:	fdc10113          	add	sp,sp,-36
     324:	8391c303          	lbu	t1,-1991(gp) # 20000039 <OU_SUIS_JE_X_TTRIS>
     328:	ce22                	sw	s0,28(sp)
     32a:	8381c403          	lbu	s0,-1992(gp) # 20000038 <OU_SUIS_JE_Y_TTRIS>
     32e:	cc26                	sw	s1,24(sp)
     330:	942a                	add	s0,s0,a0
     332:	86c18493          	add	s1,gp,-1940 # 2000006c <Piece_Mat2_TTRIS>
     336:	d006                	sw	ra,32(sp)
     338:	0ff47413          	zext.b	s0,s0
     33c:	00548293          	add	t0,s1,5
     340:	4385                	li	t2,1
     342:	01841593          	sll	a1,s0,0x18
     346:	85e1                	sra	a1,a1,0x18
     348:	879a                	mv	a5,t1
     34a:	8726                	mv	a4,s1
     34c:	01948613          	add	a2,s1,25
     350:	00074683          	lbu	a3,0(a4)
     354:	02769663          	bne	a3,t2,380 <Check_collision_y_TTRIS+0x60>
     358:	01879513          	sll	a0,a5,0x18
     35c:	8561                	sra	a0,a0,0x18
     35e:	ca32                	sw	a2,20(sp)
     360:	c836                	sw	a3,16(sp)
     362:	c63a                	sw	a4,12(sp)
     364:	c41a                	sw	t1,8(sp)
     366:	c22e                	sw	a1,4(sp)
     368:	c03e                	sw	a5,0(sp)
     36a:	35ed                	jal	254 <GRID_STAT_TTRIS>
     36c:	87118293          	add	t0,gp,-1935 # 20000071 <Piece_Mat2_TTRIS+0x5>
     370:	4782                	lw	a5,0(sp)
     372:	4592                	lw	a1,4(sp)
     374:	4322                	lw	t1,8(sp)
     376:	4732                	lw	a4,12(sp)
     378:	46c2                	lw	a3,16(sp)
     37a:	4652                	lw	a2,20(sp)
     37c:	4385                	li	t2,1
     37e:	ed11                	bnez	a0,39a <Check_collision_y_TTRIS+0x7a>
     380:	0785                	add	a5,a5,1
     382:	0715                	add	a4,a4,5
     384:	0ff7f793          	zext.b	a5,a5
     388:	fcc714e3          	bne	a4,a2,350 <Check_collision_y_TTRIS+0x30>
     38c:	0405                	add	s0,s0,1
     38e:	0485                	add	s1,s1,1
     390:	0ff47413          	zext.b	s0,s0
     394:	fa5497e3          	bne	s1,t0,342 <Check_collision_y_TTRIS+0x22>
     398:	4681                	li	a3,0
     39a:	5082                	lw	ra,32(sp)
     39c:	4472                	lw	s0,28(sp)
     39e:	44e2                	lw	s1,24(sp)
     3a0:	8536                	mv	a0,a3
     3a2:	02410113          	add	sp,sp,36
     3a6:	8082                	ret

000003a8 <blitzSprite_TTRIS>:
     3a8:	fd810113          	add	sp,sp,-40
     3ac:	ce26                	sw	s1,28(sp)
     3ae:	d206                	sw	ra,36(sp)
     3b0:	d022                	sw	s0,32(sp)
     3b2:	0007c403          	lbu	s0,0(a5)
     3b6:	84ba                	mv	s1,a4
     3b8:	fff40713          	add	a4,s0,-1
     3bc:	972a                	add	a4,a4,a0
     3be:	0cc74c63          	blt	a4,a2,496 <blitzSprite_TTRIS+0xee>
     3c2:	832a                	mv	t1,a0
     3c4:	ca32                	sw	a2,20(sp)
     3c6:	cc1a                	sw	t1,24(sp)
     3c8:	4501                	li	a0,0
     3ca:	0c664063          	blt	a2,t1,48a <blitzSprite_TTRIS+0xe2>
     3ce:	0ff5f713          	zext.b	a4,a1
     3d2:	00375393          	srl	t2,a4,0x3
     3d6:	c83a                	sw	a4,16(sp)
     3d8:	0a76e963          	bltu	a3,t2,48a <blitzSprite_TTRIS+0xe2>
     3dc:	0017c583          	lbu	a1,1(a5)
     3e0:	c63e                	sw	a5,12(sp)
     3e2:	c21e                	sw	t2,4(sp)
     3e4:	00b382b3          	add	t0,t2,a1
     3e8:	c036                	sw	a3,0(sp)
     3ea:	0ad2c063          	blt	t0,a3,48a <blitzSprite_TTRIS+0xe2>
     3ee:	8522                	mv	a0,s0
     3f0:	3911                	jal	4 <__mulsi3>
     3f2:	00150293          	add	t0,a0,1
     3f6:	0ff2f293          	zext.b	t0,t0
     3fa:	fff28593          	add	a1,t0,-1
     3fe:	8526                	mv	a0,s1
     400:	c416                	sw	t0,8(sp)
     402:	3109                	jal	4 <__mulsi3>
     404:	4392                	lw	t2,4(sp)
     406:	4682                	lw	a3,0(sp)
     408:	4742                	lw	a4,16(sp)
     40a:	01051493          	sll	s1,a0,0x10
     40e:	407686b3          	sub	a3,a3,t2
     412:	038e                	sll	t2,t2,0x3
     414:	40770733          	sub	a4,a4,t2
     418:	0ff6f593          	zext.b	a1,a3
     41c:	0ff77713          	zext.b	a4,a4
     420:	8522                	mv	a0,s0
     422:	c23a                	sw	a4,4(sp)
     424:	c02e                	sw	a1,0(sp)
     426:	3ef9                	jal	4 <__mulsi3>
     428:	4652                	lw	a2,20(sp)
     42a:	4362                	lw	t1,24(sp)
     42c:	0ff57693          	zext.b	a3,a0
     430:	0609                	add	a2,a2,2
     432:	40660633          	sub	a2,a2,t1
     436:	0ff67613          	zext.b	a2,a2
     43a:	42a2                	lw	t0,8(sp)
     43c:	00c68333          	add	t1,a3,a2
     440:	0ff37313          	zext.b	t1,t1
     444:	4582                	lw	a1,0(sp)
     446:	4712                	lw	a4,4(sp)
     448:	47b2                	lw	a5,12(sp)
     44a:	80c1                	srl	s1,s1,0x10
     44c:	4501                	li	a0,0
     44e:	0062eb63          	bltu	t0,t1,464 <blitzSprite_TTRIS+0xbc>
     452:	00978533          	add	a0,a5,s1
     456:	951a                	add	a0,a0,t1
     458:	00054503          	lbu	a0,0(a0)
     45c:	00e51533          	sll	a0,a0,a4
     460:	0ff57513          	zext.b	a0,a0
     464:	c19d                	beqz	a1,48a <blitzSprite_TTRIS+0xe2>
     466:	8e81                	sub	a3,a3,s0
     468:	9636                	add	a2,a2,a3
     46a:	0ff67613          	zext.b	a2,a2
     46e:	00c2ee63          	bltu	t0,a2,48a <blitzSprite_TTRIS+0xe2>
     472:	97a6                	add	a5,a5,s1
     474:	97b2                	add	a5,a5,a2
     476:	0007c783          	lbu	a5,0(a5)
     47a:	46a1                	li	a3,8
     47c:	40e68733          	sub	a4,a3,a4
     480:	40e7d7b3          	sra	a5,a5,a4
     484:	8fc9                	or	a5,a5,a0
     486:	0ff7f513          	zext.b	a0,a5
     48a:	5092                	lw	ra,36(sp)
     48c:	5402                	lw	s0,32(sp)
     48e:	44f2                	lw	s1,28(sp)
     490:	02810113          	add	sp,sp,40
     494:	8082                	ret
     496:	4501                	li	a0,0
     498:	bfcd                	j	48a <blitzSprite_TTRIS+0xe2>

0000049a <Convert_Nb_of_line_TTRIS>:
     49a:	1141                	add	sp,sp,-16
     49c:	c422                	sw	s0,8(sp)
     49e:	8341d403          	lhu	s0,-1996(gp) # 20000034 <Nb_of_line_F_TTRIS>
     4a2:	06400593          	li	a1,100
     4a6:	c606                	sw	ra,12(sp)
     4a8:	8522                	mv	a0,s0
     4aa:	c226                	sw	s1,4(sp)
     4ac:	3ea5                	jal	24 <__hidden___udivsi3>
     4ae:	0ff57713          	zext.b	a4,a0
     4b2:	00171513          	sll	a0,a4,0x1
     4b6:	953a                	add	a0,a0,a4
     4b8:	050e                	sll	a0,a0,0x3
     4ba:	953a                	add	a0,a0,a4
     4bc:	82c18693          	add	a3,gp,-2004 # 2000002c <Nb_of_line_TTRIS>
     4c0:	050a                	sll	a0,a0,0x2
     4c2:	00e68123          	sb	a4,2(a3)
     4c6:	40a40533          	sub	a0,s0,a0
     4ca:	45a9                	li	a1,10
     4cc:	c03a                	sw	a4,0(sp)
     4ce:	36b9                	jal	1c <__divsi3>
     4d0:	4702                	lw	a4,0(sp)
     4d2:	0ff57793          	zext.b	a5,a0
     4d6:	82c18693          	add	a3,gp,-2004 # 2000002c <Nb_of_line_TTRIS>
     4da:	00271513          	sll	a0,a4,0x2
     4de:	953a                	add	a0,a0,a4
     4e0:	050e                	sll	a0,a0,0x3
     4e2:	8d19                	sub	a0,a0,a4
     4e4:	00279713          	sll	a4,a5,0x2
     4e8:	00f680a3          	sb	a5,1(a3)
     4ec:	050a                	sll	a0,a0,0x2
     4ee:	97ba                	add	a5,a5,a4
     4f0:	40b2                	lw	ra,12(sp)
     4f2:	9522                	add	a0,a0,s0
     4f4:	0786                	sll	a5,a5,0x1
     4f6:	4422                	lw	s0,8(sp)
     4f8:	8d1d                	sub	a0,a0,a5
     4fa:	82a18623          	sb	a0,-2004(gp) # 2000002c <Nb_of_line_TTRIS>
     4fe:	4492                	lw	s1,4(sp)
     500:	0141                	add	sp,sp,16
     502:	8082                	ret

00000504 <recupe_Nb_of_line_TTRIS>:
     504:	ff050793          	add	a5,a0,-16
     508:	0ff7f793          	zext.b	a5,a5
     50c:	4731                	li	a4,12
     50e:	06f76863          	bltu	a4,a5,57e <recupe_Nb_of_line_TTRIS+0x7a>
     512:	4785                	li	a5,1
     514:	862a                	mv	a2,a0
     516:	86ae                	mv	a3,a1
     518:	4501                	li	a0,0
     51a:	06b7e463          	bltu	a5,a1,582 <recupe_Nb_of_line_TTRIS+0x7e>
     51e:	82c18293          	add	t0,gp,-2004 # 2000002c <Nb_of_line_TTRIS>
     522:	1131                	add	sp,sp,-20
     524:	0022c703          	lbu	a4,2(t0)
     528:	c426                	sw	s1,8(sp)
     52a:	6485                	lui	s1,0x1
     52c:	66848793          	add	a5,s1,1640 # 1668 <police_TTRIS>
     530:	c22e                	sw	a1,4(sp)
     532:	4541                	li	a0,16
     534:	45a1                	li	a1,8
     536:	c806                	sw	ra,16(sp)
     538:	c622                	sw	s0,12(sp)
     53a:	c032                	sw	a2,0(sp)
     53c:	35b5                	jal	3a8 <blitzSprite_TTRIS>
     53e:	82c18293          	add	t0,gp,-2004 # 2000002c <Nb_of_line_TTRIS>
     542:	0012c703          	lbu	a4,1(t0)
     546:	4692                	lw	a3,4(sp)
     548:	4602                	lw	a2,0(sp)
     54a:	66848793          	add	a5,s1,1640
     54e:	842a                	mv	s0,a0
     550:	45a1                	li	a1,8
     552:	4551                	li	a0,20
     554:	3d91                	jal	3a8 <blitzSprite_TTRIS>
     556:	4692                	lw	a3,4(sp)
     558:	4602                	lw	a2,0(sp)
     55a:	82c1c703          	lbu	a4,-2004(gp) # 2000002c <Nb_of_line_TTRIS>
     55e:	8c49                	or	s0,s0,a0
     560:	66848793          	add	a5,s1,1640
     564:	45a1                	li	a1,8
     566:	4561                	li	a0,24
     568:	3581                	jal	3a8 <blitzSprite_TTRIS>
     56a:	0ff47413          	zext.b	s0,s0
     56e:	40c2                	lw	ra,16(sp)
     570:	8d41                	or	a0,a0,s0
     572:	4432                	lw	s0,12(sp)
     574:	44a2                	lw	s1,8(sp)
     576:	0ff57513          	zext.b	a0,a0
     57a:	0151                	add	sp,sp,20
     57c:	8082                	ret
     57e:	4501                	li	a0,0
     580:	8082                	ret
     582:	8082                	ret

00000584 <recupe_LEVEL_TTRIS>:
     584:	f9350793          	add	a5,a0,-109
     588:	0ff7f793          	zext.b	a5,a5
     58c:	4725                	li	a4,9
     58e:	06f76563          	bltu	a4,a5,5f8 <recupe_LEVEL_TTRIS+0x74>
     592:	1141                	add	sp,sp,-16
     594:	c422                	sw	s0,8(sp)
     596:	c606                	sw	ra,12(sp)
     598:	c226                	sw	s1,4(sp)
     59a:	4795                	li	a5,5
     59c:	842a                	mv	s0,a0
     59e:	4501                	li	a0,0
     5a0:	04f59763          	bne	a1,a5,5ee <recupe_LEVEL_TTRIS+0x6a>
     5a4:	8291c783          	lbu	a5,-2007(gp) # 20000029 <Level_TTRIS>
     5a8:	45a9                	li	a1,10
     5aa:	853e                	mv	a0,a5
     5ac:	c03e                	sw	a5,0(sp)
     5ae:	3c9d                	jal	24 <__hidden___udivsi3>
     5b0:	6285                	lui	t0,0x1
     5b2:	66828793          	add	a5,t0,1640 # 1668 <police_TTRIS>
     5b6:	0ff57713          	zext.b	a4,a0
     5ba:	4695                	li	a3,5
     5bc:	8622                	mv	a2,s0
     5be:	02900593          	li	a1,41
     5c2:	06d00513          	li	a0,109
     5c6:	33cd                	jal	3a8 <blitzSprite_TTRIS>
     5c8:	84aa                	mv	s1,a0
     5ca:	4502                	lw	a0,0(sp)
     5cc:	45a9                	li	a1,10
     5ce:	3449                	jal	50 <__umodsi3>
     5d0:	6285                	lui	t0,0x1
     5d2:	0ff57713          	zext.b	a4,a0
     5d6:	66828793          	add	a5,t0,1640 # 1668 <police_TTRIS>
     5da:	4695                	li	a3,5
     5dc:	8622                	mv	a2,s0
     5de:	02900593          	li	a1,41
     5e2:	07200513          	li	a0,114
     5e6:	33c9                	jal	3a8 <blitzSprite_TTRIS>
     5e8:	8d45                	or	a0,a0,s1
     5ea:	0ff57513          	zext.b	a0,a0
     5ee:	40b2                	lw	ra,12(sp)
     5f0:	4422                	lw	s0,8(sp)
     5f2:	4492                	lw	s1,4(sp)
     5f4:	0141                	add	sp,sp,16
     5f6:	8082                	ret
     5f8:	4501                	li	a0,0
     5fa:	8082                	ret

000005fc <recupe_SCORES_TTRIS.part.0>:
     5fc:	8361d783          	lhu	a5,-1994(gp) # 20000036 <Scores_TTRIS>
     600:	fd410113          	add	sp,sp,-44
     604:	c22e                	sw	a1,4(sp)
     606:	6589                	lui	a1,0x2
     608:	c02a                	sw	a0,0(sp)
     60a:	71058593          	add	a1,a1,1808 # 2710 <main.c.3ef537cc+0x93f>
     60e:	853e                	mv	a0,a5
     610:	d406                	sw	ra,40(sp)
     612:	d222                	sw	s0,36(sp)
     614:	d026                	sw	s1,32(sp)
     616:	c43e                	sw	a5,8(sp)
     618:	3431                	jal	24 <__hidden___udivsi3>
     61a:	01051793          	sll	a5,a0,0x10
     61e:	83c1                	srl	a5,a5,0x10
     620:	c83e                	sw	a5,16(sp)
     622:	0ff57793          	zext.b	a5,a0
     626:	c63e                	sw	a5,12(sp)
     628:	4732                	lw	a4,12(sp)
     62a:	4692                	lw	a3,4(sp)
     62c:	4602                	lw	a2,0(sp)
     62e:	6485                	lui	s1,0x1
     630:	66848793          	add	a5,s1,1640 # 1668 <police_TTRIS>
     634:	45a1                	li	a1,8
     636:	05f00513          	li	a0,95
     63a:	33bd                	jal	3a8 <blitzSprite_TTRIS>
     63c:	842a                	mv	s0,a0
     63e:	4542                	lw	a0,16(sp)
     640:	75f9                	lui	a1,0xffffe
     642:	8f058593          	add	a1,a1,-1808 # ffffd8f0 <__global_pointer$+0xdfffd0f0>
     646:	3a7d                	jal	4 <__mulsi3>
     648:	47a2                	lw	a5,8(sp)
     64a:	82aa                	mv	t0,a0
     64c:	3e800593          	li	a1,1000
     650:	953e                	add	a0,a0,a5
     652:	ca16                	sw	t0,20(sp)
     654:	32e1                	jal	1c <__divsi3>
     656:	4692                	lw	a3,4(sp)
     658:	4602                	lw	a2,0(sp)
     65a:	0ff57713          	zext.b	a4,a0
     65e:	66848793          	add	a5,s1,1640
     662:	c82a                	sw	a0,16(sp)
     664:	45a1                	li	a1,8
     666:	06300513          	li	a0,99
     66a:	3b3d                	jal	3a8 <blitzSprite_TTRIS>
     66c:	43c2                	lw	t2,16(sp)
     66e:	00a46333          	or	t1,s0,a0
     672:	42d2                	lw	t0,20(sp)
     674:	00539513          	sll	a0,t2,0x5
     678:	40750533          	sub	a0,a0,t2
     67c:	050a                	sll	a0,a0,0x2
     67e:	951e                	add	a0,a0,t2
     680:	050e                	sll	a0,a0,0x3
     682:	40a007b3          	neg	a5,a0
     686:	c83e                	sw	a5,16(sp)
     688:	47a2                	lw	a5,8(sp)
     68a:	06400593          	li	a1,100
     68e:	ce1e                	sw	t2,28(sp)
     690:	40a78533          	sub	a0,a5,a0
     694:	9516                	add	a0,a0,t0
     696:	0ff37413          	zext.b	s0,t1
     69a:	cc16                	sw	t0,24(sp)
     69c:	3241                	jal	1c <__divsi3>
     69e:	4692                	lw	a3,4(sp)
     6a0:	4602                	lw	a2,0(sp)
     6a2:	0ff57713          	zext.b	a4,a0
     6a6:	66848793          	add	a5,s1,1640
     6aa:	ca2a                	sw	a0,20(sp)
     6ac:	45a1                	li	a1,8
     6ae:	06700513          	li	a0,103
     6b2:	39dd                	jal	3a8 <blitzSprite_TTRIS>
     6b4:	4352                	lw	t1,20(sp)
     6b6:	8c49                	or	s0,s0,a0
     6b8:	47a2                	lw	a5,8(sp)
     6ba:	00131513          	sll	a0,t1,0x1
     6be:	951a                	add	a0,a0,t1
     6c0:	050e                	sll	a0,a0,0x3
     6c2:	951a                	add	a0,a0,t1
     6c4:	050a                	sll	a0,a0,0x2
     6c6:	40a78533          	sub	a0,a5,a0
     6ca:	47c2                	lw	a5,16(sp)
     6cc:	42e2                	lw	t0,24(sp)
     6ce:	45a9                	li	a1,10
     6d0:	953e                	add	a0,a0,a5
     6d2:	9516                	add	a0,a0,t0
     6d4:	32a1                	jal	1c <__divsi3>
     6d6:	4692                	lw	a3,4(sp)
     6d8:	4602                	lw	a2,0(sp)
     6da:	66848793          	add	a5,s1,1640
     6de:	0ff57713          	zext.b	a4,a0
     6e2:	c82a                	sw	a0,16(sp)
     6e4:	45a1                	li	a1,8
     6e6:	06b00513          	li	a0,107
     6ea:	397d                	jal	3a8 <blitzSprite_TTRIS>
     6ec:	43f2                	lw	t2,28(sp)
     6ee:	47b2                	lw	a5,12(sp)
     6f0:	46a2                	lw	a3,8(sp)
     6f2:	4352                	lw	t1,20(sp)
     6f4:	00239713          	sll	a4,t2,0x2
     6f8:	40770733          	sub	a4,a4,t2
     6fc:	0792                	sll	a5,a5,0x4
     6fe:	42c2                	lw	t0,16(sp)
     700:	40f687b3          	sub	a5,a3,a5
     704:	40600333          	neg	t1,t1
     708:	070e                	sll	a4,a4,0x3
     70a:	973e                	add	a4,a4,a5
     70c:	00131793          	sll	a5,t1,0x1
     710:	979a                	add	a5,a5,t1
     712:	078e                	sll	a5,a5,0x3
     714:	405002b3          	neg	t0,t0
     718:	933e                	add	t1,t1,a5
     71a:	00229793          	sll	a5,t0,0x2
     71e:	030a                	sll	t1,t1,0x2
     720:	92be                	add	t0,t0,a5
     722:	4692                	lw	a3,4(sp)
     724:	4602                	lw	a2,0(sp)
     726:	971a                	add	a4,a4,t1
     728:	0286                	sll	t0,t0,0x1
     72a:	9716                	add	a4,a4,t0
     72c:	0ff47413          	zext.b	s0,s0
     730:	66848793          	add	a5,s1,1640
     734:	8c49                	or	s0,s0,a0
     736:	0ff77713          	zext.b	a4,a4
     73a:	45a1                	li	a1,8
     73c:	06f00513          	li	a0,111
     740:	31a5                	jal	3a8 <blitzSprite_TTRIS>
     742:	4692                	lw	a3,4(sp)
     744:	4602                	lw	a2,0(sp)
     746:	0ff47413          	zext.b	s0,s0
     74a:	8c49                	or	s0,s0,a0
     74c:	66848793          	add	a5,s1,1640
     750:	4701                	li	a4,0
     752:	45a1                	li	a1,8
     754:	07300513          	li	a0,115
     758:	3981                	jal	3a8 <blitzSprite_TTRIS>
     75a:	0ff47413          	zext.b	s0,s0
     75e:	50a2                	lw	ra,40(sp)
     760:	8d41                	or	a0,a0,s0
     762:	5412                	lw	s0,36(sp)
     764:	5482                	lw	s1,32(sp)
     766:	0ff57513          	zext.b	a0,a0
     76a:	02c10113          	add	sp,sp,44
     76e:	8082                	ret

00000770 <DLY_ticks>:
     770:	e000f7b7          	lui	a5,0xe000f
     774:	479c                	lw	a5,8(a5)
     776:	e000f737          	lui	a4,0xe000f
     77a:	953e                	add	a0,a0,a5
     77c:	471c                	lw	a5,8(a4)
     77e:	8f89                	sub	a5,a5,a0
     780:	fe07cee3          	bltz	a5,77c <DLY_ticks+0xc>
     784:	8082                	ret

00000786 <JOY_sound>:
     786:	0ff00713          	li	a4,255
     78a:	1131                	add	sp,sp,-20
     78c:	8f09                	sub	a4,a4,a0
     78e:	c622                	sw	s0,12(sp)
     790:	00171413          	sll	s0,a4,0x1
     794:	fff58793          	add	a5,a1,-1
     798:	943a                	add	s0,s0,a4
     79a:	c426                	sw	s1,8(sp)
     79c:	c806                	sw	ra,16(sp)
     79e:	86aa                	mv	a3,a0
     7a0:	0ff7f793          	zext.b	a5,a5
     7a4:	040a                	sll	s0,s0,0x2
     7a6:	400114b7          	lui	s1,0x40011
     7aa:	c689                	beqz	a3,7b4 <JOY_sound+0x2e>
     7ac:	80048713          	add	a4,s1,-2048 # 40010800 <__global_pointer$+0x20010000>
     7b0:	4609                	li	a2,2
     7b2:	cb50                	sw	a2,20(a4)
     7b4:	8522                	mv	a0,s0
     7b6:	c236                	sw	a3,4(sp)
     7b8:	c03e                	sw	a5,0(sp)
     7ba:	3f5d                	jal	770 <DLY_ticks>
     7bc:	80048713          	add	a4,s1,-2048
     7c0:	4609                	li	a2,2
     7c2:	cb10                	sw	a2,16(a4)
     7c4:	8522                	mv	a0,s0
     7c6:	376d                	jal	770 <DLY_ticks>
     7c8:	4782                	lw	a5,0(sp)
     7ca:	0ff00713          	li	a4,255
     7ce:	4692                	lw	a3,4(sp)
     7d0:	17fd                	add	a5,a5,-1 # e000efff <__global_pointer$+0xc000e7ff>
     7d2:	0ff7f793          	zext.b	a5,a5
     7d6:	fce79ae3          	bne	a5,a4,7aa <JOY_sound+0x24>
     7da:	40c2                	lw	ra,16(sp)
     7dc:	4432                	lw	s0,12(sp)
     7de:	44a2                	lw	s1,8(sp)
     7e0:	0151                	add	sp,sp,20
     7e2:	8082                	ret

000007e4 <I2C_start.constprop.0>:
     7e4:	400057b7          	lui	a5,0x40005
     7e8:	40078693          	add	a3,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
     7ec:	0186d703          	lhu	a4,24(a3)
     7f0:	8b09                	and	a4,a4,2
     7f2:	ff6d                	bnez	a4,7ec <I2C_start.constprop.0+0x8>
     7f4:	4007d703          	lhu	a4,1024(a5)
     7f8:	10076713          	or	a4,a4,256
     7fc:	40e79023          	sh	a4,1024(a5)
     800:	400057b7          	lui	a5,0x40005
     804:	40078793          	add	a5,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
     808:	0147d703          	lhu	a4,20(a5)
     80c:	8b05                	and	a4,a4,1
     80e:	df6d                	beqz	a4,808 <I2C_start.constprop.0+0x24>
     810:	07800713          	li	a4,120
     814:	00e79823          	sh	a4,16(a5)
     818:	400056b7          	lui	a3,0x40005
     81c:	00820737          	lui	a4,0x820
     820:	40068693          	add	a3,a3,1024 # 40005400 <__global_pointer$+0x20004c00>
     824:	070d                	add	a4,a4,3 # 820003 <system.c.0ae384bc+0x81d0b9>
     826:	0146d783          	lhu	a5,20(a3)
     82a:	0186d603          	lhu	a2,24(a3)
     82e:	07c2                	sll	a5,a5,0x10
     830:	8fd1                	or	a5,a5,a2
     832:	8ff9                	and	a5,a5,a4
     834:	fee799e3          	bne	a5,a4,826 <I2C_start.constprop.0+0x42>
     838:	8082                	ret

0000083a <OLED_setpos.constprop.0>:
     83a:	1151                	add	sp,sp,-12
     83c:	c406                	sw	ra,8(sp)
     83e:	c222                	sw	s0,4(sp)
     840:	842a                	mv	s0,a0
     842:	374d                	jal	7e4 <I2C_start.constprop.0>
     844:	4501                	li	a0,0
     846:	855ff0ef          	jal	9a <I2C_write>
     84a:	0b046513          	or	a0,s0,176
     84e:	84dff0ef          	jal	9a <I2C_write>
     852:	4501                	li	a0,0
     854:	847ff0ef          	jal	9a <I2C_write>
     858:	4541                	li	a0,16
     85a:	841ff0ef          	jal	9a <I2C_write>
     85e:	4412                	lw	s0,4(sp)
     860:	40a2                	lw	ra,8(sp)
     862:	0131                	add	sp,sp,12
     864:	84fff06f          	j	b2 <I2C_stop>

00000868 <Tiny_Flip_TTRIS>:
     868:	6789                	lui	a5,0x2
     86a:	fa810113          	add	sp,sp,-88
     86e:	c1c78793          	add	a5,a5,-996 # 1c1c <MEM_TTTRIS>
     872:	ca3e                	sw	a5,20(sp)
     874:	6785                	lui	a5,0x1
     876:	7f478793          	add	a5,a5,2036 # 17f4 <BACKGROUND_TTRIS>
     87a:	ca86                	sw	ra,84(sp)
     87c:	c8a2                	sw	s0,80(sp)
     87e:	c6a6                	sw	s1,76(sp)
     880:	d62a                	sw	a0,44(sp)
     882:	c402                	sw	zero,8(sp)
     884:	d83e                	sw	a5,48(sp)
     886:	00814783          	lbu	a5,8(sp)
     88a:	853e                	mv	a0,a5
     88c:	c23e                	sw	a5,4(sp)
     88e:	3775                	jal	83a <OLED_setpos.constprop.0>
     890:	3f91                	jal	7e4 <I2C_start.constprop.0>
     892:	04000513          	li	a0,64
     896:	805ff0ef          	jal	9a <I2C_write>
     89a:	47a2                	lw	a5,8(sp)
     89c:	5742                	lw	a4,48(sp)
     89e:	c602                	sw	zero,12(sp)
     8a0:	079e                	sll	a5,a5,0x7
     8a2:	97ba                	add	a5,a5,a4
     8a4:	c83e                	sw	a5,16(sp)
     8a6:	6789                	lui	a5,0x2
     8a8:	bf478793          	add	a5,a5,-1036 # 1bf4 <H_Grid_TTTRIS>
     8ac:	cc3e                	sw	a5,24(sp)
     8ae:	00c14783          	lbu	a5,12(sp)
     8b2:	4481                	li	s1,0
     8b4:	c03e                	sw	a5,0(sp)
     8b6:	47d2                	lw	a5,20(sp)
     8b8:	0007c403          	lbu	s0,0(a5)
     8bc:	0017c783          	lbu	a5,1(a5)
     8c0:	ce3e                	sw	a5,28(sp)
     8c2:	4782                	lw	a5,0(sp)
     8c4:	fd278793          	add	a5,a5,-46
     8c8:	0ff7f793          	zext.b	a5,a5
     8cc:	d03e                	sw	a5,32(sp)
     8ce:	47f2                	lw	a5,28(sp)
     8d0:	06f47563          	bgeu	s0,a5,93a <Tiny_Flip_TTRIS+0xd2>
     8d4:	5782                	lw	a5,32(sp)
     8d6:	02300713          	li	a4,35
     8da:	0ef76563          	bltu	a4,a5,9c4 <Tiny_Flip_TTRIS+0x15c>
     8de:	47e2                	lw	a5,24(sp)
     8e0:	01841593          	sll	a1,s0,0x18
     8e4:	85e1                	sra	a1,a1,0x18
     8e6:	fd27c783          	lbu	a5,-46(a5)
     8ea:	01879513          	sll	a0,a5,0x18
     8ee:	8561                	sra	a0,a0,0x18
     8f0:	d23e                	sw	a5,36(sp)
     8f2:	963ff0ef          	jal	254 <GRID_STAT_TTRIS>
     8f6:	4705                	li	a4,1
     8f8:	5792                	lw	a5,36(sp)
     8fa:	22e51d63          	bne	a0,a4,b34 <Tiny_Flip_TTRIS+0x2cc>
     8fe:	00179713          	sll	a4,a5,0x1
     902:	00141593          	sll	a1,s0,0x1
     906:	00e78533          	add	a0,a5,a4
     90a:	95a2                	add	a1,a1,s0
     90c:	4692                	lw	a3,4(sp)
     90e:	4602                	lw	a2,0(sp)
     910:	0595                	add	a1,a1,5
     912:	02e50513          	add	a0,a0,46
     916:	05e2                	sll	a1,a1,0x18
     918:	0562                	sll	a0,a0,0x18
     91a:	81c18793          	add	a5,gp,-2020 # 2000001c <tinyblock_TTTRIS>
     91e:	4701                	li	a4,0
     920:	85e1                	sra	a1,a1,0x18
     922:	8561                	sra	a0,a0,0x18
     924:	3451                	jal	3a8 <blitzSprite_TTRIS>
     926:	47f2                	lw	a5,28(sp)
     928:	00140313          	add	t1,s0,1
     92c:	8d45                	or	a0,a0,s1
     92e:	0ff37413          	zext.b	s0,t1
     932:	0ff57493          	zext.b	s1,a0
     936:	faf464e3          	bltu	s0,a5,8de <Tiny_Flip_TTRIS+0x76>
     93a:	47c2                	lw	a5,16(sp)
     93c:	4381                	li	t2,0
     93e:	0007c783          	lbu	a5,0(a5)
     942:	8fc5                	or	a5,a5,s1
     944:	ce3e                	sw	a5,28(sp)
     946:	8461c783          	lbu	a5,-1978(gp) # 20000046 <xx_TTRIS>
     94a:	86c18493          	add	s1,gp,-1940 # 2000006c <Piece_Mat2_TTRIS>
     94e:	d03e                	sw	a5,32(sp)
     950:	8451c403          	lbu	s0,-1979(gp) # 20000045 <yy_TTRIS>
     954:	146d                	add	s0,s0,-5
     956:	0ff47413          	zext.b	s0,s0
     95a:	5302                	lw	t1,32(sp)
     95c:	01841593          	sll	a1,s0,0x18
     960:	01948793          	add	a5,s1,25
     964:	85e1                	sra	a1,a1,0x18
     966:	82a6                	mv	t0,s1
     968:	d23e                	sw	a5,36(sp)
     96a:	0002c783          	lbu	a5,0(t0)
     96e:	4705                	li	a4,1
     970:	02e79763          	bne	a5,a4,99e <Tiny_Flip_TTRIS+0x136>
     974:	4692                	lw	a3,4(sp)
     976:	4602                	lw	a2,0(sp)
     978:	01831513          	sll	a0,t1,0x18
     97c:	81418793          	add	a5,gp,-2028 # 20000014 <tinyblock2_TTTRIS>
     980:	4701                	li	a4,0
     982:	8561                	sra	a0,a0,0x18
     984:	de1e                	sw	t2,60(sp)
     986:	dc16                	sw	t0,56(sp)
     988:	da2e                	sw	a1,52(sp)
     98a:	d41a                	sw	t1,40(sp)
     98c:	3c31                	jal	3a8 <blitzSprite_TTRIS>
     98e:	53f2                	lw	t2,60(sp)
     990:	52e2                	lw	t0,56(sp)
     992:	55d2                	lw	a1,52(sp)
     994:	5322                	lw	t1,40(sp)
     996:	00756533          	or	a0,a0,t2
     99a:	0ff57393          	zext.b	t2,a0
     99e:	5792                	lw	a5,36(sp)
     9a0:	030d                	add	t1,t1,3
     9a2:	0295                	add	t0,t0,5
     9a4:	0ff37313          	zext.b	t1,t1
     9a8:	fcf291e3          	bne	t0,a5,96a <Tiny_Flip_TTRIS+0x102>
     9ac:	040d                	add	s0,s0,3
     9ae:	0485                	add	s1,s1,1
     9b0:	87118793          	add	a5,gp,-1935 # 20000071 <Piece_Mat2_TTRIS+0x5>
     9b4:	0ff47413          	zext.b	s0,s0
     9b8:	faf491e3          	bne	s1,a5,95a <Tiny_Flip_TTRIS+0xf2>
     9bc:	47f2                	lw	a5,28(sp)
     9be:	0077e533          	or	a0,a5,t2
     9c2:	a235                	j	aee <Tiny_Flip_TTRIS+0x286>
     9c4:	47c2                	lw	a5,16(sp)
     9c6:	4592                	lw	a1,4(sp)
     9c8:	4502                	lw	a0,0(sp)
     9ca:	0007c783          	lbu	a5,0(a5)
     9ce:	ce3e                	sw	a5,28(sp)
     9d0:	3e15                	jal	504 <recupe_Nb_of_line_TTRIS>
     9d2:	4732                	lw	a4,12(sp)
     9d4:	d02a                	sw	a0,32(sp)
     9d6:	05900793          	li	a5,89
     9da:	0ee7fc63          	bgeu	a5,a4,ad2 <Tiny_Flip_TTRIS+0x26a>
     9de:	8431c783          	lbu	a5,-1981(gp) # 20000043 <PIECEs_TTRIS_PREVIEW>
     9e2:	4715                	li	a4,5
     9e4:	0ef76463          	bltu	a4,a5,acc <Tiny_Flip_TTRIS+0x264>
     9e8:	80c18713          	add	a4,gp,-2036 # 2000000c <CSWTCH.256>
     9ec:	973e                	add	a4,a4,a5
     9ee:	00074683          	lbu	a3,0(a4)
     9f2:	20000737          	lui	a4,0x20000
     9f6:	00470713          	add	a4,a4,4 # 20000004 <CSWTCH.257>
     9fa:	973e                	add	a4,a4,a5
     9fc:	00074483          	lbu	s1,0(a4)
     a00:	00279713          	sll	a4,a5,0x2
     a04:	97ba                	add	a5,a5,a4
     a06:	0ff7f793          	zext.b	a5,a5
     a0a:	d23e                	sw	a5,36(sp)
     a0c:	6789                	lui	a5,0x2
     a0e:	c2c78793          	add	a5,a5,-980 # 1c2c <Pieces_TTRIS>
     a12:	05c68693          	add	a3,a3,92
     a16:	04d9                	add	s1,s1,22
     a18:	da3e                	sw	a5,52(sp)
     a1a:	0ff6f793          	zext.b	a5,a3
     a1e:	0ff4f493          	zext.b	s1,s1
     a22:	4401                	li	s0,0
     a24:	4301                	li	t1,0
     a26:	dc3e                	sw	a5,56(sp)
     a28:	5792                	lw	a5,36(sp)
     a2a:	5752                	lw	a4,52(sp)
     a2c:	53e2                	lw	t2,56(sp)
     a2e:	979a                	add	a5,a5,t1
     a30:	07e2                	sll	a5,a5,0x18
     a32:	87e1                	sra	a5,a5,0x18
     a34:	97ba                	add	a5,a5,a4
     a36:	0007c783          	lbu	a5,0(a5)
     a3a:	01849593          	sll	a1,s1,0x18
     a3e:	85e1                	sra	a1,a1,0x18
     a40:	d43e                	sw	a5,40(sp)
     a42:	4281                	li	t0,0
     a44:	5722                	lw	a4,40(sp)
     a46:	08000793          	li	a5,128
     a4a:	4057d7b3          	sra	a5,a5,t0
     a4e:	8ff9                	and	a5,a5,a4
     a50:	cb85                	beqz	a5,a80 <Tiny_Flip_TTRIS+0x218>
     a52:	4692                	lw	a3,4(sp)
     a54:	4602                	lw	a2,0(sp)
     a56:	01839513          	sll	a0,t2,0x18
     a5a:	200007b7          	lui	a5,0x20000
     a5e:	00078793          	mv	a5,a5
     a62:	4701                	li	a4,0
     a64:	8561                	sra	a0,a0,0x18
     a66:	c49a                	sw	t1,72(sp)
     a68:	c296                	sw	t0,68(sp)
     a6a:	c0ae                	sw	a1,64(sp)
     a6c:	de1e                	sw	t2,60(sp)
     a6e:	93bff0ef          	jal	3a8 <blitzSprite_TTRIS>
     a72:	4326                	lw	t1,72(sp)
     a74:	4296                	lw	t0,68(sp)
     a76:	4586                	lw	a1,64(sp)
     a78:	53f2                	lw	t2,60(sp)
     a7a:	8d41                	or	a0,a0,s0
     a7c:	0ff57413          	zext.b	s0,a0
     a80:	0389                	add	t2,t2,2
     a82:	0285                	add	t0,t0,1
     a84:	4795                	li	a5,5
     a86:	0ff3f393          	zext.b	t2,t2
     a8a:	faf29de3          	bne	t0,a5,a44 <Tiny_Flip_TTRIS+0x1dc>
     a8e:	0305                	add	t1,t1,1
     a90:	0489                	add	s1,s1,2
     a92:	0ff37313          	zext.b	t1,t1
     a96:	0ff4f493          	zext.b	s1,s1
     a9a:	f85317e3          	bne	t1,t0,a28 <Tiny_Flip_TTRIS+0x1c0>
     a9e:	5702                	lw	a4,32(sp)
     aa0:	47f2                	lw	a5,28(sp)
     aa2:	4501                	li	a0,0
     aa4:	8fd9                	or	a5,a5,a4
     aa6:	8c5d                	or	s0,s0,a5
     aa8:	4782                	lw	a5,0(sp)
     aaa:	4761                	li	a4,24
     aac:	0ff47413          	zext.b	s0,s0
     ab0:	fa178793          	add	a5,a5,-95 # 1fffffa1 <system.c.0ae384bc+0x1fffd057>
     ab4:	0ff7f793          	zext.b	a5,a5
     ab8:	02f76463          	bltu	a4,a5,ae0 <Tiny_Flip_TTRIS+0x278>
     abc:	4722                	lw	a4,8(sp)
     abe:	4785                	li	a5,1
     ac0:	02e7e063          	bltu	a5,a4,ae0 <Tiny_Flip_TTRIS+0x278>
     ac4:	4592                	lw	a1,4(sp)
     ac6:	4502                	lw	a0,0(sp)
     ac8:	3e15                	jal	5fc <recupe_SCORES_TTRIS.part.0>
     aca:	a819                	j	ae0 <Tiny_Flip_TTRIS+0x278>
     acc:	4481                	li	s1,0
     ace:	4681                	li	a3,0
     ad0:	bf05                	j	a00 <Tiny_Flip_TTRIS+0x198>
     ad2:	47f2                	lw	a5,28(sp)
     ad4:	5702                	lw	a4,32(sp)
     ad6:	4501                	li	a0,0
     ad8:	00e7e433          	or	s0,a5,a4
     adc:	0ff47413          	zext.b	s0,s0
     ae0:	8c49                	or	s0,s0,a0
     ae2:	4592                	lw	a1,4(sp)
     ae4:	4502                	lw	a0,0(sp)
     ae6:	0ff47413          	zext.b	s0,s0
     aea:	3c69                	jal	584 <recupe_LEVEL_TTRIS>
     aec:	8d41                	or	a0,a0,s0
     aee:	0ff57513          	zext.b	a0,a0
     af2:	da8ff0ef          	jal	9a <I2C_write>
     af6:	47b2                	lw	a5,12(sp)
     af8:	5732                	lw	a4,44(sp)
     afa:	0785                	add	a5,a5,1
     afc:	c63e                	sw	a5,12(sp)
     afe:	47c2                	lw	a5,16(sp)
     b00:	0785                	add	a5,a5,1
     b02:	c83e                	sw	a5,16(sp)
     b04:	47e2                	lw	a5,24(sp)
     b06:	0785                	add	a5,a5,1
     b08:	cc3e                	sw	a5,24(sp)
     b0a:	47b2                	lw	a5,12(sp)
     b0c:	dae791e3          	bne	a5,a4,8ae <Tiny_Flip_TTRIS+0x46>
     b10:	da2ff0ef          	jal	b2 <I2C_stop>
     b14:	47a2                	lw	a5,8(sp)
     b16:	0785                	add	a5,a5,1
     b18:	c43e                	sw	a5,8(sp)
     b1a:	47d2                	lw	a5,20(sp)
     b1c:	4722                	lw	a4,8(sp)
     b1e:	0789                	add	a5,a5,2
     b20:	ca3e                	sw	a5,20(sp)
     b22:	47a1                	li	a5,8
     b24:	d6f711e3          	bne	a4,a5,886 <Tiny_Flip_TTRIS+0x1e>
     b28:	40d6                	lw	ra,84(sp)
     b2a:	4446                	lw	s0,80(sp)
     b2c:	44b6                	lw	s1,76(sp)
     b2e:	05810113          	add	sp,sp,88
     b32:	8082                	ret
     b34:	00140313          	add	t1,s0,1
     b38:	0ff37413          	zext.b	s0,t1
     b3c:	bb49                	j	8ce <Tiny_Flip_TTRIS+0x66>

00000b3e <Flip_intro_TTRIS>:
     b3e:	6785                	lui	a5,0x1
     b40:	fd410113          	add	sp,sp,-44
     b44:	6d478793          	add	a5,a5,1748 # 16d4 <chateau_TTRIS>
     b48:	d026                	sw	s1,32(sp)
     b4a:	d406                	sw	ra,40(sp)
     b4c:	d222                	sw	s0,36(sp)
     b4e:	c82a                	sw	a0,16(sp)
     b50:	c202                	sw	zero,4(sp)
     b52:	4481                	li	s1,0
     b54:	ca3e                	sw	a5,20(sp)
     b56:	0ff4f793          	zext.b	a5,s1
     b5a:	853e                	mv	a0,a5
     b5c:	c03e                	sw	a5,0(sp)
     b5e:	39f1                	jal	83a <OLED_setpos.constprop.0>
     b60:	3151                	jal	7e4 <I2C_start.constprop.0>
     b62:	04000513          	li	a0,64
     b66:	d34ff0ef          	jal	9a <I2C_write>
     b6a:	4752                	lw	a4,20(sp)
     b6c:	4792                	lw	a5,4(sp)
     b6e:	4401                	li	s0,0
     b70:	97ba                	add	a5,a5,a4
     b72:	c43e                	sw	a5,8(sp)
     b74:	6785                	lui	a5,0x1
     b76:	00749713          	sll	a4,s1,0x7
     b7a:	7f478793          	add	a5,a5,2036 # 17f4 <BACKGROUND_TTRIS>
     b7e:	97ba                	add	a5,a5,a4
     b80:	c63e                	sw	a5,12(sp)
     b82:	4732                	lw	a4,12(sp)
     b84:	0ff47793          	zext.b	a5,s0
     b88:	cc3e                	sw	a5,24(sp)
     b8a:	47c2                	lw	a5,16(sp)
     b8c:	9722                	add	a4,a4,s0
     b8e:	00074283          	lbu	t0,0(a4)
     b92:	02d00713          	li	a4,45
     b96:	0007c783          	lbu	a5,0(a5)
     b9a:	06876a63          	bltu	a4,s0,c0e <Flip_intro_TTRIS+0xd0>
     b9e:	470d                	li	a4,3
     ba0:	08f76563          	bltu	a4,a5,c2a <Flip_intro_TTRIS+0xec>
     ba4:	4781                	li	a5,0
     ba6:	4582                	lw	a1,0(sp)
     ba8:	0ff47513          	zext.b	a0,s0
     bac:	ce3e                	sw	a5,28(sp)
     bae:	cc16                	sw	t0,24(sp)
     bb0:	955ff0ef          	jal	504 <recupe_Nb_of_line_TTRIS>
     bb4:	42e2                	lw	t0,24(sp)
     bb6:	47f2                	lw	a5,28(sp)
     bb8:	4582                	lw	a1,0(sp)
     bba:	0057e7b3          	or	a5,a5,t0
     bbe:	8fc9                	or	a5,a5,a0
     bc0:	0ff7f793          	zext.b	a5,a5
     bc4:	0ff47513          	zext.b	a0,s0
     bc8:	cc3e                	sw	a5,24(sp)
     bca:	9bbff0ef          	jal	584 <recupe_LEVEL_TTRIS>
     bce:	47e2                	lw	a5,24(sp)
     bd0:	0405                	add	s0,s0,1
     bd2:	8d5d                	or	a0,a0,a5
     bd4:	0ff57513          	zext.b	a0,a0
     bd8:	cc2ff0ef          	jal	9a <I2C_write>
     bdc:	47a2                	lw	a5,8(sp)
     bde:	0785                	add	a5,a5,1
     be0:	c43e                	sw	a5,8(sp)
     be2:	08000793          	li	a5,128
     be6:	f8f41ee3          	bne	s0,a5,b82 <Flip_intro_TTRIS+0x44>
     bea:	cc8ff0ef          	jal	b2 <I2C_stop>
     bee:	4792                	lw	a5,4(sp)
     bf0:	0485                	add	s1,s1,1
     bf2:	02478793          	add	a5,a5,36
     bf6:	c23e                	sw	a5,4(sp)
     bf8:	4712                	lw	a4,4(sp)
     bfa:	12000793          	li	a5,288
     bfe:	f4f71ce3          	bne	a4,a5,b56 <Flip_intro_TTRIS+0x18>
     c02:	50a2                	lw	ra,40(sp)
     c04:	5412                	lw	s0,36(sp)
     c06:	5482                	lw	s1,32(sp)
     c08:	02c10113          	add	sp,sp,44
     c0c:	8082                	ret
     c0e:	05100713          	li	a4,81
     c12:	00876863          	bltu	a4,s0,c22 <Flip_intro_TTRIS+0xe4>
     c16:	4722                	lw	a4,8(sp)
     c18:	fd274703          	lbu	a4,-46(a4)
     c1c:	00e2e2b3          	or	t0,t0,a4
     c20:	bfbd                	j	b9e <Flip_intro_TTRIS+0x60>
     c22:	470d                	li	a4,3
     c24:	4501                	li	a0,0
     c26:	04f77363          	bgeu	a4,a5,c6c <Flip_intro_TTRIS+0x12e>
     c2a:	4682                	lw	a3,0(sp)
     c2c:	6785                	lui	a5,0x1
     c2e:	6b478793          	add	a5,a5,1716 # 16b4 <start_button_1_TTRIS>
     c32:	4701                	li	a4,0
     c34:	0ff47613          	zext.b	a2,s0
     c38:	45f1                	li	a1,28
     c3a:	03100513          	li	a0,49
     c3e:	ce16                	sw	t0,28(sp)
     c40:	f68ff0ef          	jal	3a8 <blitzSprite_TTRIS>
     c44:	4682                	lw	a3,0(sp)
     c46:	6785                	lui	a5,0x1
     c48:	cc2a                	sw	a0,24(sp)
     c4a:	69478793          	add	a5,a5,1684 # 1694 <start_button_2_TTRIS>
     c4e:	4701                	li	a4,0
     c50:	0ff47613          	zext.b	a2,s0
     c54:	02400593          	li	a1,36
     c58:	03100513          	li	a0,49
     c5c:	f4cff0ef          	jal	3a8 <blitzSprite_TTRIS>
     c60:	43e2                	lw	t2,24(sp)
     c62:	42f2                	lw	t0,28(sp)
     c64:	00a3e533          	or	a0,t2,a0
     c68:	0ff57513          	zext.b	a0,a0
     c6c:	0ff47793          	zext.b	a5,s0
     c70:	fa178713          	add	a4,a5,-95
     c74:	0ff77713          	zext.b	a4,a4
     c78:	46e1                	li	a3,24
     c7a:	005562b3          	or	t0,a0,t0
     c7e:	4781                	li	a5,0
     c80:	f2e6e3e3          	bltu	a3,a4,ba6 <Flip_intro_TTRIS+0x68>
     c84:	4705                	li	a4,1
     c86:	f29760e3          	bltu	a4,s1,ba6 <Flip_intro_TTRIS+0x68>
     c8a:	4582                	lw	a1,0(sp)
     c8c:	0ff47513          	zext.b	a0,s0
     c90:	cc16                	sw	t0,24(sp)
     c92:	96bff0ef          	jal	5fc <recupe_SCORES_TTRIS.part.0>
     c96:	42e2                	lw	t0,24(sp)
     c98:	87aa                	mv	a5,a0
     c9a:	b731                	j	ba6 <Flip_intro_TTRIS+0x68>

00000c9c <CHANGE_GRID_STAT_TTRIS.isra.0>:
     c9c:	0ff57713          	zext.b	a4,a0
     ca0:	47ad                	li	a5,11
     ca2:	02e7eb63          	bltu	a5,a4,cd8 <CHANGE_GRID_STAT_TTRIS.isra.0+0x3c>
     ca6:	0ff5f793          	zext.b	a5,a1
     caa:	4749                	li	a4,18
     cac:	02f76663          	bltu	a4,a5,cd8 <CHANGE_GRID_STAT_TTRIS.isra.0+0x3c>
     cb0:	8b9d                	and	a5,a5,7
     cb2:	08000713          	li	a4,128
     cb6:	40f75733          	sra	a4,a4,a5
     cba:	00151693          	sll	a3,a0,0x1
     cbe:	4035d793          	sra	a5,a1,0x3
     cc2:	96aa                	add	a3,a3,a0
     cc4:	84818593          	add	a1,gp,-1976 # 20000048 <Grid_TTRIS>
     cc8:	95b6                	add	a1,a1,a3
     cca:	95be                	add	a1,a1,a5
     ccc:	0005c783          	lbu	a5,0(a1)
     cd0:	c609                	beqz	a2,cda <CHANGE_GRID_STAT_TTRIS.isra.0+0x3e>
     cd2:	8fd9                	or	a5,a5,a4
     cd4:	00f58023          	sb	a5,0(a1)
     cd8:	8082                	ret
     cda:	fff74713          	not	a4,a4
     cde:	8ff9                	and	a5,a5,a4
     ce0:	bfd5                	j	cd4 <CHANGE_GRID_STAT_TTRIS.isra.0+0x38>

00000ce2 <PAINT_LINE_TTRIS>:
     ce2:	1121                	add	sp,sp,-24
     ce4:	c626                	sw	s1,12(sp)
     ce6:	ca06                	sw	ra,20(sp)
     ce8:	c822                	sw	s0,16(sp)
     cea:	c02a                	sw	a0,0(sp)
     cec:	872e                	mv	a4,a1
     cee:	4481                	li	s1,0
     cf0:	009706b3          	add	a3,a4,s1
     cf4:	0006c603          	lbu	a2,0(a3)
     cf8:	4685                	li	a3,1
     cfa:	02d61563          	bne	a2,a3,d24 <PAINT_LINE_TTRIS+0x42>
     cfe:	01849793          	sll	a5,s1,0x18
     d02:	87e1                	sra	a5,a5,0x18
     d04:	4401                	li	s0,0
     d06:	c23e                	sw	a5,4(sp)
     d08:	4602                	lw	a2,0(sp)
     d0a:	4592                	lw	a1,4(sp)
     d0c:	01841513          	sll	a0,s0,0x18
     d10:	8561                	sra	a0,a0,0x18
     d12:	c43a                	sw	a4,8(sp)
     d14:	0405                	add	s0,s0,1
     d16:	3759                	jal	c9c <CHANGE_GRID_STAT_TTRIS.isra.0>
     d18:	0ff47413          	zext.b	s0,s0
     d1c:	46b1                	li	a3,12
     d1e:	4722                	lw	a4,8(sp)
     d20:	fed414e3          	bne	s0,a3,d08 <PAINT_LINE_TTRIS+0x26>
     d24:	0485                	add	s1,s1,1
     d26:	46cd                	li	a3,19
     d28:	fcd494e3          	bne	s1,a3,cf0 <PAINT_LINE_TTRIS+0xe>
     d2c:	40d2                	lw	ra,20(sp)
     d2e:	4442                	lw	s0,16(sp)
     d30:	44b2                	lw	s1,12(sp)
     d32:	0161                	add	sp,sp,24
     d34:	8082                	ret

00000d36 <Game_Play_TTRIS>:
     d36:	8341d503          	lhu	a0,-1996(gp) # 20000034 <Nb_of_line_F_TTRIS>
     d3a:	1151                	add	sp,sp,-12
     d3c:	45d1                	li	a1,20
     d3e:	c026                	sw	s1,0(sp)
     d40:	c406                	sw	ra,8(sp)
     d42:	c222                	sw	s0,4(sp)
     d44:	ae0ff0ef          	jal	24 <__hidden___udivsi3>
     d48:	8291c783          	lbu	a5,-2007(gp) # 20000029 <Level_TTRIS>
     d4c:	0ff57513          	zext.b	a0,a0
     d50:	02a78363          	beq	a5,a0,d76 <Game_Play_TTRIS+0x40>
     d54:	82a184a3          	sb	a0,-2007(gp) # 20000029 <Level_TTRIS>
     d58:	4425                	li	s0,9
     d5a:	05000593          	li	a1,80
     d5e:	02800513          	li	a0,40
     d62:	3415                	jal	786 <JOY_sound>
     d64:	147d                	add	s0,s0,-1
     d66:	05000593          	li	a1,80
     d6a:	09600513          	li	a0,150
     d6e:	0ff47413          	zext.b	s0,s0
     d72:	3c11                	jal	786 <JOY_sound>
     d74:	f07d                	bnez	s0,d5a <Game_Play_TTRIS+0x24>
     d76:	8291c783          	lbu	a5,-2007(gp) # 20000029 <Level_TTRIS>
     d7a:	4751                	li	a4,20
     d7c:	00f76e63          	bltu	a4,a5,d98 <Game_Play_TTRIS+0x62>
     d80:	00279513          	sll	a0,a5,0x2
     d84:	953e                	add	a0,a0,a5
     d86:	0506                	sll	a0,a0,0x1
     d88:	45d1                	li	a1,20
     d8a:	40a00533          	neg	a0,a0
     d8e:	a8eff0ef          	jal	1c <__divsi3>
     d92:	052d                	add	a0,a0,11
     d94:	82a18823          	sb	a0,-2000(gp) # 20000030 <Level_Speed_ADJ_TTRIS>
     d98:	40a2                	lw	ra,8(sp)
     d9a:	4412                	lw	s0,4(sp)
     d9c:	4482                	lw	s1,0(sp)
     d9e:	0131                	add	sp,sp,12
     da0:	8082                	ret

00000da2 <main>:
     da2:	400117b7          	lui	a5,0x40011
     da6:	4398                	lw	a4,0(a5)
     da8:	76c5                	lui	a3,0xffff1
     daa:	16fd                	add	a3,a3,-1 # ffff0fff <__global_pointer$+0xdfff07ff>
     dac:	7139                	add	sp,sp,-64
     dae:	8f75                	and	a4,a4,a3
     db0:	66a1                	lui	a3,0x8
     db2:	de06                	sw	ra,60(sp)
     db4:	dc22                	sw	s0,56(sp)
     db6:	da26                	sw	s1,52(sp)
     db8:	8f55                	or	a4,a4,a3
     dba:	c398                	sw	a4,0(a5)
     dbc:	4721                	li	a4,8
     dbe:	cb98                	sw	a4,16(a5)
     dc0:	4398                	lw	a4,0(a5)
     dc2:	f10006b7          	lui	a3,0xf1000
     dc6:	16fd                	add	a3,a3,-1 # f0ffffff <__global_pointer$+0xd0fff7ff>
     dc8:	8f75                	and	a4,a4,a3
     dca:	080006b7          	lui	a3,0x8000
     dce:	8f55                	or	a4,a4,a3
     dd0:	c398                	sw	a4,0(a5)
     dd2:	04000713          	li	a4,64
     dd6:	cb98                	sw	a4,16(a5)
     dd8:	4398                	lw	a4,0(a5)
     dda:	fff106b7          	lui	a3,0xfff10
     dde:	16fd                	add	a3,a3,-1 # fff0ffff <__global_pointer$+0xdff0f7ff>
     de0:	8f75                	and	a4,a4,a3
     de2:	000806b7          	lui	a3,0x80
     de6:	8f55                	or	a4,a4,a3
     de8:	c398                	sw	a4,0(a5)
     dea:	4741                	li	a4,16
     dec:	cb98                	sw	a4,16(a5)
     dee:	4398                	lw	a4,0(a5)
     df0:	800006b7          	lui	a3,0x80000
     df4:	757d                	lui	a0,0xfffff
     df6:	0712                	sll	a4,a4,0x4
     df8:	8311                	srl	a4,a4,0x4
     dfa:	8f55                	or	a4,a4,a3
     dfc:	c398                	sw	a4,0(a5)
     dfe:	08000713          	li	a4,128
     e02:	cb98                	sw	a4,16(a5)
     e04:	80078713          	add	a4,a5,-2048 # 40010800 <__global_pointer$+0x20010000>
     e08:	4314                	lw	a3,0(a4)
     e0a:	0ff50613          	add	a2,a0,255 # fffff0ff <__global_pointer$+0xdfffe8ff>
     e0e:	6585                	lui	a1,0x1
     e10:	8ef1                	and	a3,a3,a2
     e12:	80058613          	add	a2,a1,-2048 # 800 <I2C_start.constprop.0+0x1c>
     e16:	8ed1                	or	a3,a3,a2
     e18:	c314                	sw	a3,0(a4)
     e1a:	4611                	li	a2,4
     e1c:	cb10                	sw	a2,16(a4)
     e1e:	4394                	lw	a3,0(a5)
     e20:	4305                	li	t1,1
     e22:	002002b7          	lui	t0,0x200
     e26:	9ac1                	and	a3,a3,-16
     e28:	0086e693          	or	a3,a3,8
     e2c:	c394                	sw	a3,0(a5)
     e2e:	0067a823          	sw	t1,16(a5)
     e32:	4314                	lw	a3,0(a4)
     e34:	053d                	add	a0,a0,15
     e36:	dd058593          	add	a1,a1,-560
     e3a:	f0f6f693          	and	a3,a3,-241
     e3e:	0106e693          	or	a3,a3,16
     e42:	c314                	sw	a3,0(a4)
     e44:	4689                	li	a3,2
     e46:	cb14                	sw	a3,16(a4)
     e48:	40021737          	lui	a4,0x40021
     e4c:	4f14                	lw	a3,24(a4)
     e4e:	6489                	lui	s1,0x2
     e50:	4401                	li	s0,0
     e52:	0116e693          	or	a3,a3,17
     e56:	cf14                	sw	a3,24(a4)
     e58:	4f54                	lw	a3,28(a4)
     e5a:	c5048493          	add	s1,s1,-944 # 1c50 <OLED_INIT_CMD>
     e5e:	0056e6b3          	or	a3,a3,t0
     e62:	cf54                	sw	a3,28(a4)
     e64:	4398                	lw	a4,0(a5)
     e66:	8f69                	and	a4,a4,a0
     e68:	8f4d                	or	a4,a4,a1
     e6a:	c398                	sw	a4,0(a5)
     e6c:	40005737          	lui	a4,0x40005
     e70:	77e1                	lui	a5,0xffff8
     e72:	40c71223          	sh	a2,1028(a4) # 40005404 <__global_pointer$+0x20004c04>
     e76:	07a9                	add	a5,a5,10 # ffff800a <__global_pointer$+0xdfff780a>
     e78:	40f71e23          	sh	a5,1052(a4)
     e7c:	40671023          	sh	t1,1024(a4)
     e80:	965ff0ef          	jal	7e4 <I2C_start.constprop.0>
     e84:	4501                	li	a0,0
     e86:	a14ff0ef          	jal	9a <I2C_write>
     e8a:	009407b3          	add	a5,s0,s1
     e8e:	0007c503          	lbu	a0,0(a5)
     e92:	0405                	add	s0,s0,1
     e94:	a06ff0ef          	jal	9a <I2C_write>
     e98:	47c5                	li	a5,17
     e9a:	fef418e3          	bne	s0,a5,e8a <main+0xe8>
     e9e:	a14ff0ef          	jal	b2 <I2C_stop>
     ea2:	40021737          	lui	a4,0x40021
     ea6:	4f1c                	lw	a5,24(a4)
     ea8:	40012437          	lui	s0,0x40012
     eac:	40040413          	add	s0,s0,1024 # 40012400 <__global_pointer$+0x20011c00>
     eb0:	2017e793          	or	a5,a5,513
     eb4:	cf1c                	sw	a5,24(a4)
     eb6:	000e07b7          	lui	a5,0xe0
     eba:	0785                	add	a5,a5,1 # e0001 <system.c.0ae384bc+0xdd0b7>
     ebc:	c41c                	sw	a5,8(s0)
     ebe:	07800513          	li	a0,120
     ec2:	8afff0ef          	jal	770 <DLY_ticks>
     ec6:	441c                	lw	a5,8(s0)
     ec8:	400126b7          	lui	a3,0x40012
     ecc:	0087e793          	or	a5,a5,8
     ed0:	c41c                	sw	a5,8(s0)
     ed2:	40068793          	add	a5,a3,1024 # 40012400 <__global_pointer$+0x20011c00>
     ed6:	4798                	lw	a4,8(a5)
     ed8:	8b21                	and	a4,a4,8
     eda:	ff65                	bnez	a4,ed2 <main+0x130>
     edc:	4798                	lw	a4,8(a5)
     ede:	00476713          	or	a4,a4,4
     ee2:	c798                	sw	a4,8(a5)
     ee4:	40012737          	lui	a4,0x40012
     ee8:	40070793          	add	a5,a4,1024 # 40012400 <__global_pointer$+0x20011c00>
     eec:	479c                	lw	a5,8(a5)
     eee:	8b91                	and	a5,a5,4
     ef0:	ffe5                	bnez	a5,ee8 <main+0x146>
     ef2:	820184a3          	sb	zero,-2007(gp) # 20000029 <Level_TTRIS>
     ef6:	82019a23          	sh	zero,-1996(gp) # 20000034 <Nb_of_line_F_TTRIS>
     efa:	40011437          	lui	s0,0x40011
     efe:	82019b23          	sh	zero,-1994(gp) # 20000036 <Scores_TTRIS>
     f02:	441c                	lw	a5,8(s0)
     f04:	0407f793          	and	a5,a5,64
     f08:	eb81                	bnez	a5,f18 <main+0x176>
     f0a:	00b72537          	lui	a0,0xb72
     f0e:	b0050513          	add	a0,a0,-1280 # b71b00 <system.c.0ae384bc+0xb6ebb6>
     f12:	85fff0ef          	jal	770 <DLY_ticks>
     f16:	441c                	lw	a5,8(s0)
     f18:	84818793          	add	a5,gp,-1976 # 20000048 <Grid_TTRIS>
     f1c:	c63e                	sw	a5,12(sp)
     f1e:	4701                	li	a4,0
     f20:	4631                	li	a2,12
     f22:	458d                	li	a1,3
     f24:	47b2                	lw	a5,12(sp)
     f26:	00f706b3          	add	a3,a4,a5
     f2a:	4781                	li	a5,0
     f2c:	0785                	add	a5,a5,1
     f2e:	00068023          	sb	zero,0(a3)
     f32:	0ff7f793          	zext.b	a5,a5
     f36:	068d                	add	a3,a3,3
     f38:	fec79ae3          	bne	a5,a2,f2c <main+0x18a>
     f3c:	0705                	add	a4,a4,1
     f3e:	feb713e3          	bne	a4,a1,f24 <main+0x182>
     f42:	86c18713          	add	a4,gp,-1940 # 2000006c <Piece_Mat2_TTRIS>
     f46:	0715                	add	a4,a4,5
     f48:	86c18793          	add	a5,gp,-1940 # 2000006c <Piece_Mat2_TTRIS>
     f4c:	00078023          	sb	zero,0(a5)
     f50:	000782a3          	sb	zero,5(a5)
     f54:	00078523          	sb	zero,10(a5)
     f58:	000787a3          	sb	zero,15(a5)
     f5c:	00078a23          	sb	zero,20(a5)
     f60:	0785                	add	a5,a5,1
     f62:	fef715e3          	bne	a4,a5,f4c <main+0x1aa>
     f66:	82018e23          	sb	zero,-1988(gp) # 2000003c <LONG_PRESS_X_TTRIS>
     f6a:	840180a3          	sb	zero,-1983(gp) # 20000041 <DOWN_DESACTIVE_TTRIS>
     f6e:	82018da3          	sb	zero,-1989(gp) # 2000003b <DROP_SPEED_TTRIS>
     f72:	4705                	li	a4,1
     f74:	82018923          	sb	zero,-1998(gp) # 20000032 <SPEED_x_trig_TTRIS>
     f78:	82e188a3          	sb	a4,-1999(gp) # 20000031 <DROP_TRIG_TTRIS>
     f7c:	84018323          	sb	zero,-1978(gp) # 20000046 <xx_TTRIS>
     f80:	84018023          	sb	zero,-1984(gp) # 20000040 <Ripple_filter_TTRIS>
     f84:	840181a3          	sb	zero,-1981(gp) # 20000043 <PIECEs_TTRIS_PREVIEW>
     f88:	820187a3          	sb	zero,-2001(gp) # 2000002f <PIECEs_rot_TTRIS>
     f8c:	84018223          	sb	zero,-1980(gp) # 20000044 <DROP_BREAK_TTRIS>
     f90:	82018ca3          	sb	zero,-1991(gp) # 20000039 <OU_SUIS_JE_X_TTRIS>
     f94:	82018c23          	sb	zero,-1992(gp) # 20000038 <OU_SUIS_JE_Y_TTRIS>
     f98:	82018fa3          	sb	zero,-1985(gp) # 2000003f <OU_SUIS_JE_X_ENGAGED_TTRIS>
     f9c:	82018d23          	sb	zero,-1990(gp) # 2000003a <OU_SUIS_JE_Y_ENGAGED_TTRIS>
     fa0:	82018f23          	sb	zero,-1986(gp) # 2000003e <DEPLACEMENT_XX_TTRIS>
     fa4:	82018ea3          	sb	zero,-1987(gp) # 2000003d <DEPLACEMENT_YY_TTRIS>
     fa8:	840182a3          	sb	zero,-1979(gp) # 20000045 <yy_TTRIS>
     fac:	3369                	jal	d36 <Game_Play_TTRIS>
     fae:	4581                	li	a1,0
     fb0:	4501                	li	a0,0
     fb2:	936ff0ef          	jal	e8 <Ou_suis_Je_TTRIS>
     fb6:	820184a3          	sb	zero,-2007(gp) # 20000029 <Level_TTRIS>
     fba:	82019a23          	sh	zero,-1996(gp) # 20000034 <Nb_of_line_F_TTRIS>
     fbe:	82019b23          	sh	zero,-1994(gp) # 20000036 <Scores_TTRIS>
     fc2:	02010023          	sb	zero,32(sp)
     fc6:	cd4ff0ef          	jal	49a <Convert_Nb_of_line_TTRIS>
     fca:	1008                	add	a0,sp,32
     fcc:	3e8d                	jal	b3e <Flip_intro_TTRIS>
     fce:	902ff0ef          	jal	d0 <PSEUDO_RND_TTRIS>
     fd2:	40011737          	lui	a4,0x40011
     fd6:	84a18123          	sb	a0,-1982(gp) # 20000042 <PIECEs_TTRIS>
     fda:	80070793          	add	a5,a4,-2048 # 40010800 <__global_pointer$+0x20010000>
     fde:	479c                	lw	a5,8(a5)
     fe0:	8b91                	and	a5,a5,4
     fe2:	c781                	beqz	a5,fea <main+0x248>
     fe4:	471c                	lw	a5,8(a4)
     fe6:	8b85                	and	a5,a5,1
     fe8:	ebd5                	bnez	a5,109c <main+0x2fa>
     fea:	82019623          	sh	zero,-2004(gp) # 2000002c <Nb_of_line_TTRIS>
     fee:	09600593          	li	a1,150
     ff2:	82c18793          	add	a5,gp,-2004 # 2000002c <Nb_of_line_TTRIS>
     ff6:	4551                	li	a0,20
     ff8:	00078123          	sb	zero,2(a5)
     ffc:	f8aff0ef          	jal	786 <JOY_sound>
    1000:	09600593          	li	a1,150
    1004:	06400513          	li	a0,100
    1008:	f7eff0ef          	jal	786 <JOY_sound>
    100c:	01f10513          	add	a0,sp,31
    1010:	9faff0ef          	jal	20a <SETUP_NEW_PREVIEW_PIECE_TTRIS>
    1014:	08000513          	li	a0,128
    1018:	851ff0ef          	jal	868 <Tiny_Flip_TTRIS>
    101c:	00b72537          	lui	a0,0xb72
    1020:	b0050513          	add	a0,a0,-1280 # b71b00 <system.c.0ae384bc+0xb6ebb6>
    1024:	f4cff0ef          	jal	770 <DLY_ticks>
    1028:	03700793          	li	a5,55
    102c:	84f18323          	sb	a5,-1978(gp) # 20000046 <xx_TTRIS>
    1030:	4795                	li	a5,5
    1032:	84f182a3          	sb	a5,-1979(gp) # 20000045 <yy_TTRIS>
    1036:	c002                	sw	zero,0(sp)
    1038:	83f1c403          	lbu	s0,-1985(gp) # 2000003f <OU_SUIS_JE_X_ENGAGED_TTRIS>
    103c:	0c041663          	bnez	s0,1108 <main+0x366>
    1040:	8321c783          	lbu	a5,-1998(gp) # 20000032 <SPEED_x_trig_TTRIS>
    1044:	12079163          	bnez	a5,1166 <main+0x3c4>
    1048:	400117b7          	lui	a5,0x40011
    104c:	479c                	lw	a5,8(a5)
    104e:	0807f793          	and	a5,a5,128
    1052:	ef89                	bnez	a5,106c <main+0x2ca>
    1054:	83c1c783          	lbu	a5,-1988(gp) # 2000003c <LONG_PRESS_X_TTRIS>
    1058:	c7bd                	beqz	a5,10c6 <main+0x324>
    105a:	46d1                	li	a3,20
    105c:	08d79563          	bne	a5,a3,10e6 <main+0x344>
    1060:	4705                	li	a4,1
    1062:	82e18f23          	sb	a4,-1986(gp) # 2000003e <DEPLACEMENT_XX_TTRIS>
    1066:	4789                	li	a5,2
    1068:	82f18923          	sb	a5,-1998(gp) # 20000032 <SPEED_x_trig_TTRIS>
    106c:	400117b7          	lui	a5,0x40011
    1070:	479c                	lw	a5,8(a5)
    1072:	8bc1                	and	a5,a5,16
    1074:	ebd1                	bnez	a5,1108 <main+0x366>
    1076:	83c1c783          	lbu	a5,-1988(gp) # 2000003c <LONG_PRESS_X_TTRIS>
    107a:	ebb5                	bnez	a5,10ee <main+0x34c>
    107c:	4589                	li	a1,2
    107e:	450d                	li	a0,3
    1080:	c23e                	sw	a5,4(sp)
    1082:	f04ff0ef          	jal	786 <JOY_sound>
    1086:	567d                	li	a2,-1
    1088:	4792                	lw	a5,4(sp)
    108a:	82c18f23          	sb	a2,-1986(gp) # 2000003e <DEPLACEMENT_XX_TTRIS>
    108e:	4689                	li	a3,2
    1090:	82d18923          	sb	a3,-1998(gp) # 20000032 <SPEED_x_trig_TTRIS>
    1094:	0785                	add	a5,a5,1 # 40011001 <__global_pointer$+0x20010801>
    1096:	82f18e23          	sb	a5,-1988(gp) # 2000003c <LONG_PRESS_X_TTRIS>
    109a:	a0bd                	j	1108 <main+0x366>
    109c:	00061537          	lui	a0,0x61
    10a0:	ae050513          	add	a0,a0,-1312 # 60ae0 <system.c.0ae384bc+0x5db96>
    10a4:	eccff0ef          	jal	770 <DLY_ticks>
    10a8:	02014783          	lbu	a5,32(sp)
    10ac:	4699                	li	a3,6
    10ae:	4701                	li	a4,0
    10b0:	00f6e563          	bltu	a3,a5,10ba <main+0x318>
    10b4:	0785                	add	a5,a5,1
    10b6:	0ff7f713          	zext.b	a4,a5
    10ba:	1008                	add	a0,sp,32
    10bc:	02e10023          	sb	a4,32(sp)
    10c0:	a7fff0ef          	jal	b3e <Flip_intro_TTRIS>
    10c4:	b729                	j	fce <main+0x22c>
    10c6:	4589                	li	a1,2
    10c8:	450d                	li	a0,3
    10ca:	c23e                	sw	a5,4(sp)
    10cc:	ebaff0ef          	jal	786 <JOY_sound>
    10d0:	4605                	li	a2,1
    10d2:	4792                	lw	a5,4(sp)
    10d4:	82c18f23          	sb	a2,-1986(gp) # 2000003e <DEPLACEMENT_XX_TTRIS>
    10d8:	4689                	li	a3,2
    10da:	82d18923          	sb	a3,-1998(gp) # 20000032 <SPEED_x_trig_TTRIS>
    10de:	0785                	add	a5,a5,1
    10e0:	82f18e23          	sb	a5,-1988(gp) # 2000003c <LONG_PRESS_X_TTRIS>
    10e4:	b761                	j	106c <main+0x2ca>
    10e6:	46cd                	li	a3,19
    10e8:	f8f6e2e3          	bltu	a3,a5,106c <main+0x2ca>
    10ec:	bfcd                	j	10de <main+0x33c>
    10ee:	46d1                	li	a3,20
    10f0:	00d79963          	bne	a5,a3,1102 <main+0x360>
    10f4:	577d                	li	a4,-1
    10f6:	82e18f23          	sb	a4,-1986(gp) # 2000003e <DEPLACEMENT_XX_TTRIS>
    10fa:	4789                	li	a5,2
    10fc:	82f18923          	sb	a5,-1998(gp) # 20000032 <SPEED_x_trig_TTRIS>
    1100:	a021                	j	1108 <main+0x366>
    1102:	46cd                	li	a3,19
    1104:	f8f6f8e3          	bgeu	a3,a5,1094 <main+0x2f2>
    1108:	400117b7          	lui	a5,0x40011
    110c:	479c                	lw	a5,8(a5)
    110e:	0807f793          	and	a5,a5,128
    1112:	cb91                	beqz	a5,1126 <main+0x384>
    1114:	400117b7          	lui	a5,0x40011
    1118:	479c                	lw	a5,8(a5)
    111a:	8bc1                	and	a5,a5,16
    111c:	c789                	beqz	a5,1126 <main+0x384>
    111e:	82018e23          	sb	zero,-1988(gp) # 2000003c <LONG_PRESS_X_TTRIS>
    1122:	faffe0ef          	jal	d0 <PSEUDO_RND_TTRIS>
    1126:	40011737          	lui	a4,0x40011
    112a:	80070793          	add	a5,a4,-2048 # 40010800 <__global_pointer$+0x20010000>
    112e:	479c                	lw	a5,8(a5)
    1130:	8b91                	and	a5,a5,4
    1132:	cf85                	beqz	a5,116a <main+0x3c8>
    1134:	471c                	lw	a5,8(a4)
    1136:	8b85                	and	a5,a5,1
    1138:	cb8d                	beqz	a5,116a <main+0x3c8>
    113a:	83a1c783          	lbu	a5,-1990(gp) # 2000003a <OU_SUIS_JE_Y_ENGAGED_TTRIS>
    113e:	8c5d                	or	s0,s0,a5
    1140:	e40d                	bnez	s0,116a <main+0x3c8>
    1142:	84018023          	sb	zero,-1984(gp) # 20000040 <Ripple_filter_TTRIS>
    1146:	8311c783          	lbu	a5,-1999(gp) # 20000031 <DROP_TRIG_TTRIS>
    114a:	17fd                	add	a5,a5,-1 # 40010fff <__global_pointer$+0x200107ff>
    114c:	0ff7f793          	zext.b	a5,a5
    1150:	82f188a3          	sb	a5,-1999(gp) # 20000031 <DROP_TRIG_TTRIS>
    1154:	efb5                	bnez	a5,11d0 <main+0x42e>
    1156:	4685                	li	a3,1
    1158:	82d18ea3          	sb	a3,-1987(gp) # 2000003d <DEPLACEMENT_YY_TTRIS>
    115c:	8301c783          	lbu	a5,-2000(gp) # 20000030 <Level_Speed_ADJ_TTRIS>
    1160:	82f188a3          	sb	a5,-1999(gp) # 20000031 <DROP_TRIG_TTRIS>
    1164:	a0b5                	j	11d0 <main+0x42e>
    1166:	17fd                	add	a5,a5,-1
    1168:	bf51                	j	10fc <main+0x35a>
    116a:	8401c703          	lbu	a4,-1984(gp) # 20000040 <Ripple_filter_TTRIS>
    116e:	4785                	li	a5,1
    1170:	04f71d63          	bne	a4,a5,11ca <main+0x428>
    1174:	84518583          	lb	a1,-1979(gp) # 20000045 <yy_TTRIS>
    1178:	84618503          	lb	a0,-1978(gp) # 20000046 <xx_TTRIS>
    117c:	01f14403          	lbu	s0,31(sp)
    1180:	f69fe0ef          	jal	e8 <Ou_suis_Je_TTRIS>
    1184:	82f1c783          	lbu	a5,-2001(gp) # 2000002f <PIECEs_rot_TTRIS>
    1188:	4501                	li	a0,0
    118a:	00f47663          	bgeu	s0,a5,1196 <main+0x3f4>
    118e:	00140513          	add	a0,s0,1 # 40011001 <__global_pointer$+0x20010801>
    1192:	0ff57513          	zext.b	a0,a0
    1196:	00a10fa3          	sb	a0,31(sp)
    119a:	fb5fe0ef          	jal	14e <rotate_Matrix_TTRIS>
    119e:	83f18503          	lb	a0,-1985(gp) # 2000003f <OU_SUIS_JE_X_ENGAGED_TTRIS>
    11a2:	8f6ff0ef          	jal	298 <Check_collision_x_TTRIS>
    11a6:	83a1c783          	lbu	a5,-1990(gp) # 2000003a <OU_SUIS_JE_Y_ENGAGED_TTRIS>
    11aa:	e901                	bnez	a0,11ba <main+0x418>
    11ac:	01879513          	sll	a0,a5,0x18
    11b0:	8561                	sra	a0,a0,0x18
    11b2:	96eff0ef          	jal	320 <Check_collision_y_TTRIS>
    11b6:	2a050e63          	beqz	a0,1472 <main+0x6d0>
    11ba:	8522                	mv	a0,s0
    11bc:	00810fa3          	sb	s0,31(sp)
    11c0:	f8ffe0ef          	jal	14e <rotate_Matrix_TTRIS>
    11c4:	4789                	li	a5,2
    11c6:	84f18023          	sb	a5,-1984(gp) # 20000040 <Ripple_filter_TTRIS>
    11ca:	83a1c783          	lbu	a5,-1990(gp) # 2000003a <OU_SUIS_JE_Y_ENGAGED_TTRIS>
    11ce:	dfa5                	beqz	a5,1146 <main+0x3a4>
    11d0:	83b1c783          	lbu	a5,-1989(gp) # 2000003b <DROP_SPEED_TTRIS>
    11d4:	2a078c63          	beqz	a5,148c <main+0x6ea>
    11d8:	17fd                	add	a5,a5,-1
    11da:	0ff7f793          	zext.b	a5,a5
    11de:	82f18da3          	sb	a5,-1989(gp) # 2000003b <DROP_SPEED_TTRIS>
    11e2:	400117b7          	lui	a5,0x40011
    11e6:	479c                	lw	a5,8(a5)
    11e8:	0407f793          	and	a5,a5,64
    11ec:	2a079363          	bnez	a5,1492 <main+0x6f0>
    11f0:	83f1c783          	lbu	a5,-1985(gp) # 2000003f <OU_SUIS_JE_X_ENGAGED_TTRIS>
    11f4:	e791                	bnez	a5,1200 <main+0x45e>
    11f6:	82018f23          	sb	zero,-1986(gp) # 2000003e <DEPLACEMENT_XX_TTRIS>
    11fa:	4705                	li	a4,1
    11fc:	82e18e23          	sb	a4,-1988(gp) # 2000003c <LONG_PRESS_X_TTRIS>
    1200:	ed1fe0ef          	jal	d0 <PSEUDO_RND_TTRIS>
    1204:	8411c783          	lbu	a5,-1983(gp) # 20000041 <DOWN_DESACTIVE_TTRIS>
    1208:	e791                	bnez	a5,1214 <main+0x472>
    120a:	4705                	li	a4,1
    120c:	82e18ea3          	sb	a4,-1987(gp) # 2000003d <DEPLACEMENT_YY_TTRIS>
    1210:	82018da3          	sb	zero,-1989(gp) # 2000003b <DROP_SPEED_TTRIS>
    1214:	8441c683          	lbu	a3,-1980(gp) # 20000044 <DROP_BREAK_TTRIS>
    1218:	4719                	li	a4,6
    121a:	18e69163          	bne	a3,a4,139c <main+0x5fa>
    121e:	84018223          	sb	zero,-1980(gp) # 20000044 <DROP_BREAK_TTRIS>
    1222:	4401                	li	s0,0
    1224:	86c18793          	add	a5,gp,-1940 # 2000006c <Piece_Mat2_TTRIS>
    1228:	0ff47693          	zext.b	a3,s0
    122c:	97a2                	add	a5,a5,s0
    122e:	4481                	li	s1,0
    1230:	0007c583          	lbu	a1,0(a5) # 40011000 <__global_pointer$+0x20010800>
    1234:	4605                	li	a2,1
    1236:	83818703          	lb	a4,-1992(gp) # 20000038 <OU_SUIS_JE_Y_TTRIS>
    123a:	02c59463          	bne	a1,a2,1262 <main+0x4c0>
    123e:	8391c503          	lbu	a0,-1991(gp) # 20000039 <OU_SUIS_JE_X_TTRIS>
    1242:	00e685b3          	add	a1,a3,a4
    1246:	05e2                	sll	a1,a1,0x18
    1248:	9526                	add	a0,a0,s1
    124a:	0562                	sll	a0,a0,0x18
    124c:	4605                	li	a2,1
    124e:	85e1                	sra	a1,a1,0x18
    1250:	8561                	sra	a0,a0,0x18
    1252:	c83e                	sw	a5,16(sp)
    1254:	c43a                	sw	a4,8(sp)
    1256:	c236                	sw	a3,4(sp)
    1258:	a45ff0ef          	jal	c9c <CHANGE_GRID_STAT_TTRIS.isra.0>
    125c:	47c2                	lw	a5,16(sp)
    125e:	4722                	lw	a4,8(sp)
    1260:	4692                	lw	a3,4(sp)
    1262:	0485                	add	s1,s1,1
    1264:	0ff4f493          	zext.b	s1,s1
    1268:	4615                	li	a2,5
    126a:	0795                	add	a5,a5,5
    126c:	fcc492e3          	bne	s1,a2,1230 <main+0x48e>
    1270:	0405                	add	s0,s0,1
    1272:	fa9419e3          	bne	s0,s1,1224 <main+0x482>
    1276:	8361d403          	lhu	s0,-1994(gp) # 20000036 <Scores_TTRIS>
    127a:	47a1                	li	a5,8
    127c:	20e7ce63          	blt	a5,a4,1498 <main+0x6f6>
    1280:	0409                	add	s0,s0,2
    1282:	0442                	sll	s0,s0,0x10
    1284:	8041                	srl	s0,s0,0x10
    1286:	82819b23          	sh	s0,-1994(gp) # 20000036 <Scores_TTRIS>
    128a:	840182a3          	sb	zero,-1979(gp) # 20000045 <yy_TTRIS>
    128e:	84018323          	sb	zero,-1978(gp) # 20000046 <xx_TTRIS>
    1292:	d002                	sw	zero,32(sp)
    1294:	d202                	sw	zero,36(sp)
    1296:	d402                	sw	zero,40(sp)
    1298:	d602                	sw	zero,44(sp)
    129a:	02011823          	sh	zero,48(sp)
    129e:	02010923          	sb	zero,50(sp)
    12a2:	4701                	li	a4,0
    12a4:	4601                	li	a2,0
    12a6:	01871593          	sll	a1,a4,0x18
    12aa:	4685                	li	a3,1
    12ac:	4781                	li	a5,0
    12ae:	85e1                	sra	a1,a1,0x18
    12b0:	01879513          	sll	a0,a5,0x18
    12b4:	8561                	sra	a0,a0,0x18
    12b6:	cc36                	sw	a3,24(sp)
    12b8:	ca3a                	sw	a4,20(sp)
    12ba:	c832                	sw	a2,16(sp)
    12bc:	c42e                	sw	a1,8(sp)
    12be:	c23e                	sw	a5,4(sp)
    12c0:	f95fe0ef          	jal	254 <GRID_STAT_TTRIS>
    12c4:	4792                	lw	a5,4(sp)
    12c6:	45a2                	lw	a1,8(sp)
    12c8:	4642                	lw	a2,16(sp)
    12ca:	4752                	lw	a4,20(sp)
    12cc:	46e2                	lw	a3,24(sp)
    12ce:	4331                	li	t1,12
    12d0:	42cd                	li	t0,19
    12d2:	4385                	li	t2,1
    12d4:	e111                	bnez	a0,12d8 <main+0x536>
    12d6:	4681                	li	a3,0
    12d8:	0785                	add	a5,a5,1
    12da:	0ff7f793          	zext.b	a5,a5
    12de:	fc6799e3          	bne	a5,t1,12b0 <main+0x50e>
    12e2:	c691                	beqz	a3,12ee <main+0x54c>
    12e4:	101c                	add	a5,sp,32
    12e6:	97ba                	add	a5,a5,a4
    12e8:	00778023          	sb	t2,0(a5)
    12ec:	8636                	mv	a2,a3
    12ee:	0705                	add	a4,a4,1
    12f0:	fa571be3          	bne	a4,t0,12a6 <main+0x504>
    12f4:	4785                	li	a5,1
    12f6:	1af60363          	beq	a2,a5,149c <main+0x6fa>
    12fa:	4701                	li	a4,0
    12fc:	4781                	li	a5,0
    12fe:	4605                	li	a2,1
    1300:	46cd                	li	a3,19
    1302:	100c                	add	a1,sp,32
    1304:	95ba                	add	a1,a1,a4
    1306:	0005c583          	lbu	a1,0(a1)
    130a:	00c59563          	bne	a1,a2,1314 <main+0x572>
    130e:	0785                	add	a5,a5,1
    1310:	0ff7f793          	zext.b	a5,a5
    1314:	0705                	add	a4,a4,1
    1316:	fed716e3          	bne	a4,a3,1302 <main+0x560>
    131a:	8341d703          	lhu	a4,-1996(gp) # 20000034 <Nb_of_line_F_TTRIS>
    131e:	973e                	add	a4,a4,a5
    1320:	17fd                	add	a5,a5,-1
    1322:	82e19a23          	sh	a4,-1996(gp) # 20000034 <Nb_of_line_F_TTRIS>
    1326:	0ff7f793          	zext.b	a5,a5
    132a:	468d                	li	a3,3
    132c:	4701                	li	a4,0
    132e:	00f6e763          	bltu	a3,a5,133c <main+0x59a>
    1332:	82418713          	add	a4,gp,-2012 # 20000024 <CSWTCH.234>
    1336:	97ba                	add	a5,a5,a4
    1338:	0007c703          	lbu	a4,0(a5)
    133c:	9722                	add	a4,a4,s0
    133e:	82e19b23          	sh	a4,-1994(gp) # 20000036 <Scores_TTRIS>
    1342:	4401                	li	s0,0
    1344:	956ff0ef          	jal	49a <Convert_Nb_of_line_TTRIS>
    1348:	01841513          	sll	a0,s0,0x18
    134c:	4585                	li	a1,1
    134e:	8561                	sra	a0,a0,0x18
    1350:	f05fe0ef          	jal	254 <GRID_STAT_TTRIS>
    1354:	4485                	li	s1,1
    1356:	22950463          	beq	a0,s1,157e <main+0x7dc>
    135a:	0405                	add	s0,s0,1
    135c:	0ff47413          	zext.b	s0,s0
    1360:	47b1                	li	a5,12
    1362:	fef413e3          	bne	s0,a5,1348 <main+0x5a6>
    1366:	4789                	li	a5,2
    1368:	84f182a3          	sb	a5,-1979(gp) # 20000045 <yy_TTRIS>
    136c:	03700793          	li	a5,55
    1370:	84f18323          	sb	a5,-1978(gp) # 20000046 <xx_TTRIS>
    1374:	8431c703          	lbu	a4,-1981(gp) # 20000043 <PIECEs_TTRIS_PREVIEW>
    1378:	01f10513          	add	a0,sp,31
    137c:	84e18123          	sb	a4,-1982(gp) # 20000042 <PIECEs_TTRIS>
    1380:	e8bfe0ef          	jal	20a <SETUP_NEW_PREVIEW_PIECE_TTRIS>
    1384:	08000513          	li	a0,128
    1388:	849180a3          	sb	s1,-1983(gp) # 20000041 <DOWN_DESACTIVE_TTRIS>
    138c:	cdcff0ef          	jal	868 <Tiny_Flip_TTRIS>
    1390:	9a7ff0ef          	jal	d36 <Game_Play_TTRIS>
    1394:	08000513          	li	a0,128
    1398:	cd0ff0ef          	jal	868 <Tiny_Flip_TTRIS>
    139c:	40011737          	lui	a4,0x40011
    13a0:	80070793          	add	a5,a4,-2048 # 40010800 <__global_pointer$+0x20010000>
    13a4:	479c                	lw	a5,8(a5)
    13a6:	8b91                	and	a5,a5,4
    13a8:	c781                	beqz	a5,13b0 <main+0x60e>
    13aa:	471c                	lw	a5,8(a4)
    13ac:	8b85                	and	a5,a5,1
    13ae:	eb89                	bnez	a5,13c0 <main+0x61e>
    13b0:	8401c783          	lbu	a5,-1984(gp) # 20000040 <Ripple_filter_TTRIS>
    13b4:	e791                	bnez	a5,13c0 <main+0x61e>
    13b6:	d1bfe0ef          	jal	d0 <PSEUDO_RND_TTRIS>
    13ba:	4785                	li	a5,1
    13bc:	84f18023          	sb	a5,-1984(gp) # 20000040 <Ripple_filter_TTRIS>
    13c0:	84618403          	lb	s0,-1978(gp) # 20000046 <xx_TTRIS>
    13c4:	84518783          	lb	a5,-1979(gp) # 20000045 <yy_TTRIS>
    13c8:	8522                	mv	a0,s0
    13ca:	85be                	mv	a1,a5
    13cc:	c23e                	sw	a5,4(sp)
    13ce:	d1bfe0ef          	jal	e8 <Ou_suis_Je_TTRIS>
    13d2:	83f1c683          	lbu	a3,-1985(gp) # 2000003f <OU_SUIS_JE_X_ENGAGED_TTRIS>
    13d6:	ea81                	bnez	a3,13e6 <main+0x644>
    13d8:	83e18503          	lb	a0,-1986(gp) # 2000003e <DEPLACEMENT_XX_TTRIS>
    13dc:	ebdfe0ef          	jal	298 <Check_collision_x_TTRIS>
    13e0:	c119                	beqz	a0,13e6 <main+0x644>
    13e2:	82018f23          	sb	zero,-1986(gp) # 2000003e <DEPLACEMENT_XX_TTRIS>
    13e6:	83e18703          	lb	a4,-1986(gp) # 2000003e <DEPLACEMENT_XX_TTRIS>
    13ea:	4685                	li	a3,1
    13ec:	1cd71863          	bne	a4,a3,15bc <main+0x81a>
    13f0:	0405                	add	s0,s0,1
    13f2:	84818323          	sb	s0,-1978(gp) # 20000046 <xx_TTRIS>
    13f6:	84618783          	lb	a5,-1978(gp) # 20000046 <xx_TTRIS>
    13fa:	4592                	lw	a1,4(sp)
    13fc:	853e                	mv	a0,a5
    13fe:	c43e                	sw	a5,8(sp)
    1400:	ce9fe0ef          	jal	e8 <Ou_suis_Je_TTRIS>
    1404:	83f1c783          	lbu	a5,-1985(gp) # 2000003f <OU_SUIS_JE_X_ENGAGED_TTRIS>
    1408:	e399                	bnez	a5,140e <main+0x66c>
    140a:	82018f23          	sb	zero,-1986(gp) # 2000003e <DEPLACEMENT_XX_TTRIS>
    140e:	83d18503          	lb	a0,-1987(gp) # 2000003d <DEPLACEMENT_YY_TTRIS>
    1412:	f0ffe0ef          	jal	320 <Check_collision_y_TTRIS>
    1416:	1a050863          	beqz	a0,15c6 <main+0x824>
    141a:	82018e23          	sb	zero,-1988(gp) # 2000003c <LONG_PRESS_X_TTRIS>
    141e:	84018023          	sb	zero,-1984(gp) # 20000040 <Ripple_filter_TTRIS>
    1422:	05200513          	li	a0,82
    1426:	4699                	li	a3,6
    1428:	82018ea3          	sb	zero,-1987(gp) # 2000003d <DEPLACEMENT_YY_TTRIS>
    142c:	84d18223          	sb	a3,-1980(gp) # 20000044 <DROP_BREAK_TTRIS>
    1430:	c38ff0ef          	jal	868 <Tiny_Flip_TTRIS>
    1434:	83b1c703          	lbu	a4,-1989(gp) # 2000003b <DROP_SPEED_TTRIS>
    1438:	eb11                	bnez	a4,144c <main+0x6aa>
    143a:	83d18783          	lb	a5,-1987(gp) # 2000003d <DEPLACEMENT_YY_TTRIS>
    143e:	577d                	li	a4,-1
    1440:	18e79663          	bne	a5,a4,15cc <main+0x82a>
    1444:	4792                	lw	a5,4(sp)
    1446:	17fd                	add	a5,a5,-1
    1448:	84f182a3          	sb	a5,-1979(gp) # 20000045 <yy_TTRIS>
    144c:	84518583          	lb	a1,-1979(gp) # 20000045 <yy_TTRIS>
    1450:	4522                	lw	a0,8(sp)
    1452:	c97fe0ef          	jal	e8 <Ou_suis_Je_TTRIS>
    1456:	83a1c783          	lbu	a5,-1990(gp) # 2000003a <OU_SUIS_JE_Y_ENGAGED_TTRIS>
    145a:	e399                	bnez	a5,1460 <main+0x6be>
    145c:	82018ea3          	sb	zero,-1987(gp) # 2000003d <DEPLACEMENT_YY_TTRIS>
    1460:	4702                	lw	a4,0(sp)
    1462:	4799                	li	a5,6
    1464:	16f71a63          	bne	a4,a5,15d8 <main+0x836>
    1468:	05200513          	li	a0,82
    146c:	bfcff0ef          	jal	868 <Tiny_Flip_TTRIS>
    1470:	b6d9                	j	1036 <main+0x294>
    1472:	4595                	li	a1,5
    1474:	450d                	li	a0,3
    1476:	b10ff0ef          	jal	786 <JOY_sound>
    147a:	45a9                	li	a1,10
    147c:	4529                	li	a0,10
    147e:	b08ff0ef          	jal	786 <JOY_sound>
    1482:	4595                	li	a1,5
    1484:	450d                	li	a0,3
    1486:	b00ff0ef          	jal	786 <JOY_sound>
    148a:	bb2d                	j	11c4 <main+0x422>
    148c:	8301c783          	lbu	a5,-2000(gp) # 20000030 <Level_Speed_ADJ_TTRIS>
    1490:	b3b9                	j	11de <main+0x43c>
    1492:	840180a3          	sb	zero,-1983(gp) # 20000041 <DOWN_DESACTIVE_TTRIS>
    1496:	bbbd                	j	1214 <main+0x472>
    1498:	0405                	add	s0,s0,1
    149a:	b3e5                	j	1282 <main+0x4e0>
    149c:	100c                	add	a1,sp,32
    149e:	4505                	li	a0,1
    14a0:	843ff0ef          	jal	ce2 <PAINT_LINE_TTRIS>
    14a4:	05200513          	li	a0,82
    14a8:	bc0ff0ef          	jal	868 <Tiny_Flip_TTRIS>
    14ac:	100c                	add	a1,sp,32
    14ae:	4501                	li	a0,0
    14b0:	833ff0ef          	jal	ce2 <PAINT_LINE_TTRIS>
    14b4:	14fd                	add	s1,s1,-1
    14b6:	05200513          	li	a0,82
    14ba:	0ff4f493          	zext.b	s1,s1
    14be:	baaff0ef          	jal	868 <Tiny_Flip_TTRIS>
    14c2:	fce9                	bnez	s1,149c <main+0x6fa>
    14c4:	8526                	mv	a0,s1
    14c6:	4585                	li	a1,1
    14c8:	abeff0ef          	jal	786 <JOY_sound>
    14cc:	0489                	add	s1,s1,2
    14ce:	0ff4f493          	zext.b	s1,s1
    14d2:	0fc00793          	li	a5,252
    14d6:	fef497e3          	bne	s1,a5,14c4 <main+0x722>
    14da:	44c9                	li	s1,18
    14dc:	4785                	li	a5,1
    14de:	01848713          	add	a4,s1,24
    14e2:	0874                	add	a3,sp,28
    14e4:	96ba                	add	a3,a3,a4
    14e6:	fec6c603          	lbu	a2,-20(a3)
    14ea:	08f61163          	bne	a2,a5,156c <main+0x7ca>
    14ee:	4781                	li	a5,0
    14f0:	c489                	beqz	s1,14fa <main+0x758>
    14f2:	fff48793          	add	a5,s1,-1
    14f6:	0ff7f793          	zext.b	a5,a5
    14fa:	01878713          	add	a4,a5,24
    14fe:	0874                	add	a3,sp,28
    1500:	96ba                	add	a3,a3,a4
    1502:	fec6c583          	lbu	a1,-20(a3)
    1506:	4605                	li	a2,1
    1508:	4681                	li	a3,0
    150a:	06c58763          	beq	a1,a2,1578 <main+0x7d6>
    150e:	01849713          	sll	a4,s1,0x18
    1512:	8761                	sra	a4,a4,0x18
    1514:	c43a                	sw	a4,8(sp)
    1516:	01869713          	sll	a4,a3,0x18
    151a:	8761                	sra	a4,a4,0x18
    151c:	c23a                	sw	a4,4(sp)
    151e:	4601                	li	a2,0
    1520:	cf81                	beqz	a5,1538 <main+0x796>
    1522:	01879593          	sll	a1,a5,0x18
    1526:	85e1                	sra	a1,a1,0x18
    1528:	853a                	mv	a0,a4
    152a:	ca36                	sw	a3,20(sp)
    152c:	c83e                	sw	a5,16(sp)
    152e:	d27fe0ef          	jal	254 <GRID_STAT_TTRIS>
    1532:	46d2                	lw	a3,20(sp)
    1534:	47c2                	lw	a5,16(sp)
    1536:	862a                	mv	a2,a0
    1538:	45a2                	lw	a1,8(sp)
    153a:	4512                	lw	a0,4(sp)
    153c:	ca36                	sw	a3,20(sp)
    153e:	c83e                	sw	a5,16(sp)
    1540:	f5cff0ef          	jal	c9c <CHANGE_GRID_STAT_TTRIS.isra.0>
    1544:	46d2                	lw	a3,20(sp)
    1546:	4631                	li	a2,12
    1548:	47c2                	lw	a5,16(sp)
    154a:	0685                	add	a3,a3,1
    154c:	0ff6f693          	zext.b	a3,a3
    1550:	fcc693e3          	bne	a3,a2,1516 <main+0x774>
    1554:	da0483e3          	beqz	s1,12fa <main+0x558>
    1558:	fff48713          	add	a4,s1,-1
    155c:	0ff77493          	zext.b	s1,a4
    1560:	c781                	beqz	a5,1568 <main+0x7c6>
    1562:	17fd                	add	a5,a5,-1
    1564:	0ff7f793          	zext.b	a5,a5
    1568:	f8c9                	bnez	s1,14fa <main+0x758>
    156a:	bb41                	j	12fa <main+0x558>
    156c:	dcad                	beqz	s1,14e6 <main+0x744>
    156e:	fff48713          	add	a4,s1,-1
    1572:	0ff77493          	zext.b	s1,a4
    1576:	b7a5                	j	14de <main+0x73c>
    1578:	d3c9                	beqz	a5,14fa <main+0x758>
    157a:	17fd                	add	a5,a5,-1
    157c:	bfad                	j	14f6 <main+0x754>
    157e:	08000513          	li	a0,128
    1582:	ae6ff0ef          	jal	868 <Tiny_Flip_TTRIS>
    1586:	06400413          	li	s0,100
    158a:	00141513          	sll	a0,s0,0x1
    158e:	4599                	li	a1,6
    1590:	0fe57513          	and	a0,a0,254
    1594:	9f2ff0ef          	jal	786 <JOY_sound>
    1598:	8522                	mv	a0,s0
    159a:	45b1                	li	a1,12
    159c:	9eaff0ef          	jal	786 <JOY_sound>
    15a0:	147d                	add	s0,s0,-1
    15a2:	0ff47413          	zext.b	s0,s0
    15a6:	47a9                	li	a5,10
    15a8:	fef411e3          	bne	s0,a5,158a <main+0x7e8>
    15ac:	016e3537          	lui	a0,0x16e3
    15b0:	60050513          	add	a0,a0,1536 # 16e3600 <system.c.0ae384bc+0x16e06b6>
    15b4:	9bcff0ef          	jal	770 <DLY_ticks>
    15b8:	967ff06f          	j	f1e <main+0x17c>
    15bc:	56fd                	li	a3,-1
    15be:	e2d71ce3          	bne	a4,a3,13f6 <main+0x654>
    15c2:	147d                	add	s0,s0,-1
    15c4:	b53d                	j	13f2 <main+0x650>
    15c6:	84018223          	sb	zero,-1980(gp) # 20000044 <DROP_BREAK_TTRIS>
    15ca:	b5ad                	j	1434 <main+0x692>
    15cc:	4705                	li	a4,1
    15ce:	e6e79fe3          	bne	a5,a4,144c <main+0x6aa>
    15d2:	4792                	lw	a5,4(sp)
    15d4:	0785                	add	a5,a5,1
    15d6:	bd8d                	j	1448 <main+0x6a6>
    15d8:	4782                	lw	a5,0(sp)
    15da:	0785                	add	a5,a5,1
    15dc:	0ff7f793          	zext.b	a5,a5
    15e0:	c03e                	sw	a5,0(sp)
    15e2:	bc99                	j	1038 <main+0x296>

000015e4 <reset_handler>:
    15e4:	6785                	lui	a5,0x1
    15e6:	da278793          	add	a5,a5,-606 # da2 <main>
    15ea:	1ffff197          	auipc	gp,0x1ffff
    15ee:	21618193          	add	gp,gp,534 # 20000800 <__global_pointer$>
    15f2:	00018113          	mv	sp,gp
    15f6:	08800513          	li	a0,136
    15fa:	30051073          	csrw	mstatus,a0
    15fe:	458d                	li	a1,3
    1600:	80459073          	csrw	0x804,a1
    1604:	fffff517          	auipc	a0,0xfffff
    1608:	9fc50513          	add	a0,a0,-1540 # 0 <jump_reset>
    160c:	8d4d                	or	a0,a0,a1
    160e:	30551073          	csrw	mtvec,a0
    1612:	34179073          	csrw	mepc,a5
    1616:	6709                	lui	a4,0x2
    1618:	200007b7          	lui	a5,0x20000
    161c:	c6470713          	add	a4,a4,-924 # 1c64 <_data_lma>
    1620:	00078793          	mv	a5,a5
    1624:	82818693          	add	a3,gp,-2008 # 20000028 <RND_VAR_TTRIS>
    1628:	02d7e663          	bltu	a5,a3,1654 <reset_handler+0x70>
    162c:	82818793          	add	a5,gp,-2008 # 20000028 <RND_VAR_TTRIS>
    1630:	88818713          	add	a4,gp,-1912 # 20000088 <_ebss>
    1634:	02e7e563          	bltu	a5,a4,165e <reset_handler+0x7a>
    1638:	400217b7          	lui	a5,0x40021
    163c:	4741                	li	a4,16
    163e:	c3d8                	sw	a4,4(a5)
    1640:	4695                	li	a3,5
    1642:	e000f737          	lui	a4,0xe000f
    1646:	c314                	sw	a3,0(a4)
    1648:	4f98                	lw	a4,24(a5)
    164a:	03476713          	or	a4,a4,52
    164e:	cf98                	sw	a4,24(a5)
    1650:	30200073          	mret
    1654:	4310                	lw	a2,0(a4)
    1656:	0711                	add	a4,a4,4 # e000f004 <__global_pointer$+0xc000e804>
    1658:	c390                	sw	a2,0(a5)
    165a:	0791                	add	a5,a5,4 # 40021004 <__global_pointer$+0x20020804>
    165c:	b7f1                	j	1628 <reset_handler+0x44>
    165e:	0007a023          	sw	zero,0(a5)
    1662:	0791                	add	a5,a5,4
    1664:	bfc1                	j	1634 <reset_handler+0x50>
	...

00001668 <police_TTRIS>:
    1668:	0104 111f 001f 1f00 0000 151d 0017 1511     ................
    1678:	001f 0407 001f 1517 001d 151f 001d 1d01     ................
    1688:	0003 151f 001f 1517 001f 0000               ............

00001694 <start_button_2_TTRIS>:
    1694:	011e 0403 0404 0404 0404 0404 0404 0404     ................
    16a4:	0404 0404 0404 0404 0404 0404 0404 0304     ................

000016b4 <start_button_1_TTRIS>:
    16b4:	011e 01fe 0101 0101 0101 0101 0101 0101     ................
    16c4:	0101 0101 0101 0101 0101 0101 0101 fe01     ................

000016d4 <chateau_TTRIS>:
    16d4:	f8d5 eaf4 7a54 6855 7a74 6a54 7855 6a74     ....TzUhtzTjUxtj
    16e4:	7a54 6855 7a74 6a54 7855 6a74 7a54 6855     TzUhtzTjUxtjTzUh
    16f4:	faf4 ead4 01ff 0200 8202 82fe 0202 fa88     ................
    1704:	0080 10f8 0808 00f0 6018 38c0 a088 a8a8     .........`.8....
    1714:	2828 0828 0808 ff01 00ff 0404 1404 1414     (((.............
    1724:	5454 5050 0444 fc04 0404 f004 1222 1001     TTPPD......."...
    1734:	00f4 2000 5050 0090 0000 ff00 00ff 0000     ... PP..........
    1744:	8000 4040 4000 c040 4040 8101 4041 0180     ..@@.@@.@@..A@..
    1754:	c000 4140 0181 4140 41c1 0040 0000 ff00     ..@A..@A.A@.....
    1764:	00ff 0000 0100 1212 000c 1f00 0000 1f00     ................
    1774:	0202 001f 1f00 0a06 0011 0000 001f 0000     ................
    1784:	0000 ff00 00ff 0000 b0f0 8850 c888 5050     ..........P...PP
    1794:	2020 6060 90b0 1810 9808 a498 46e4 e4e4       ``.........F..
    17a4:	f8e8 f0f0 0000 ff00 00ff 0000 0603 1a0d     ................
    17b4:	6b3f aad6 f854 fcfc fefe 7fab 3f7f 1f3f     ?k..T........??.
    17c4:	0d0f 0707 0303 0101 0000 ff00 3c1f 3838     .............<88
    17d4:	3030 3030 3030 3130 3733 3133 3031 3030     0000000137311000
    17e4:	3030 3030 3030 3030 3030 3030 3838 1f3c     00000000000088<.

000017f4 <BACKGROUND_TTRIS>:
    17f4:	02fc f5f9 0d1d 0d0d 0b0d 1f07 203f 2f2f     ............? //
    1804:	223f 203f 3339 3f20 2a20 3f2e 2a2d 362a     ?"? 93 ? *.?-**6
    1814:	071f 0d0b 0d0d 1d0d f9f5 fc02 00f8 0040     ..............@.
    1824:	4040 4000 0040 4040 4000 0040 4040 4000     @@.@@.@@.@@.@@.@
    1834:	0040 4040 4000 0040 4040 4000 0040 4040     @.@@.@@.@@.@@.@@
    1844:	4000 f800 02fc f5f9 0d1d 0b0d 1f07 2d3f     .@............?-
    1854:	2a2a 3f36 2e31 3f2e 2e31 312e 203f 323a     **6?1..?1..1? :2
    1864:	3f2d 2a20 3f2e 071f 0d0b 1d0d f9f5 fc02     -? *.?..........
    1874:	00ff bf7f c0e0 c0c0 c0c0 c0c0 c0c0 c0c0     ................
    1884:	c0c0 c0c0 c0c0 c0c0 c0c0 c0c0 c0c0 c0c0     ................
    1894:	c0c0 c0c0 c0c0 e0c0 7fbf ff00 00ff 0000     ................
	...
    18c4:	0000 ff00 00ff bf7f c0e0 c0c0 c0c0 c0c0     ................
    18d4:	c0c0 c0c0 c0c0 c0c0 c0c0 c0c0 c0c0 c0c0     ................
    18e4:	c0c0 c0c0 c0c0 c0c0 c0c0 e0c0 7fbf ff00     ................
    18f4:	0100 5afa 5a7a 5ada 5a7a 5ada 5a7a dada     ...ZzZ.ZzZ.ZzZ..
    1904:	5a7a 5ada 5a7a 5ada 5a7a 5ada 5a7a 5ada     zZ.ZzZ.ZzZ.ZzZ.Z
    1914:	5a7a 5ada 5a7a 5ada fa7a 0001 00ff 0000     zZ.ZzZ.Zz.......
	...
    1944:	0000 ff00 0100 fafa 5a5a 7a5a 5a5a 7a5a     ........ZZZzZZZz
    1954:	5a5a 7a5a 5a5a 7a5a 5a5a 7a5a dada 7a5a     ZZZzZZZzZZZz..Zz
    1964:	da5a 7a5a da5a 7a5a da5a 7a5a fa5a 0001     Z.ZzZ.ZzZ.ZzZ...
    1974:	0000 55ff 5577 55dd 5577 f5dd 3fff e007     ...UwU.UwU...?..
    1984:	bcfc 81e0 1d07 d57d 5577 55dd 5577 55dd     ......}.wU.UwU.U
    1994:	5577 55dd 5577 55dd ff77 0000 00ff 0000     wU.UwU.Uw.......
	...
    19c4:	0000 ff00 0000 00ff fdfe 0307 0303 0303     ................
    19d4:	0303 0303 0303 0303 0703 fefd 0100 f7ff     ................
    19e4:	ddd5 f7d5 ddd5 f7d5 ddd5 77d5 ff55 0000     ...........wU...
    19f4:	0000 55ff 5577 f5dd 3f7f c38f dcf0 f7bf     ...UwU...?......
    1a04:	fdef d7ea f0bc 8140 1d07 3f75 f187 0381     ......@...u?....
    1a14:	350f 55dd 5577 55dd ff77 0000 00ff 0000     .5.UwU.Uw.......
	...
    1a44:	0000 ff00 0000 00ff ffff 0000 0000 0000     ................
    1a54:	0000 0000 0000 fc00 c27e 7e5e 5242 7e5a     ........~.^~BRZ~
    1a64:	5e62 7e62 5242 7e5a 5ec2 01fc ff03 0000     b^b~BRZ~.^......
    1a74:	0000 55ff 5577 57df f87c 04e1 ee2a 4eda     ...UwU.W|...*..N
    1a84:	0a0a 1a0e 0aae 0105 60c0 6f78 7e5f 6f75     .........`xo_~uo
    1a94:	6058 03c0 750f 55dd ff77 0000 00ff 0000     X`...u.Uw.......
	...
    1ac4:	0000 ff00 0000 78ff e573 6667 e666 6666     .......xs.gff.ff
    1ad4:	fe6e 0efe c606 ff00 80ff 0000 0000 0000     n...............
	...
    1aec:	ff80 00ff ff00 0000 0000 150f 9517 151d     ................
    1afc:	1f97 009f bf09 953a 0020 0091 00aa 8000     ......:. .......
    1b0c:	8502 2d37 0795 0d85 8537 8002 1c18 159f     ..7-....7.......
    1b1c:	0f17 0000 00ff 0000 0000 0000 0000 0000     ................
	...
    1b44:	0000 ff00 0000 170f 9d15 1715 1d95 1795     ................
    1b54:	7f15 803f 1d00 1994 139a 9313 9313 1713     ..?.............
    1b64:	3f7f 0387 9313 9313 1213 1091 0f18 0000     .?..............
    1b74:	0000 0000 0f06 1f0d 161d 1d1f 1d1f 3f36     ..............6?
    1b84:	7f3d 767d fdff fdff 7f76 3f7d 363d 1d1f     =.}v....v.}?=6..
    1b94:	1d1f 1f16 0f1d 060d 0000 0000 80ff 8080     ................
    1ba4:	8080 8080 8080 8080 8080 8080 8080 8080     ................
    1bb4:	8080 8080 8080 8080 8080 8080 8080 8080     ................
    1bc4:	8080 ff80 0000 0000 0f06 1f0d 161d 1d1f     ................
    1bd4:	1d1f 3f36 7f3d 767d fdff fdff 7f76 3f7d     ..6?=.}v....v.}?
    1be4:	363d 1d1f 1d1f 1f16 0f1d 060d 0000 0000     =6..............

00001bf4 <H_Grid_TTTRIS>:
    1bf4:	0000 0100 0101 0202 0302 0303 0404 0504     ................
    1c04:	0505 0606 0706 0707 0808 0908 0909 0a0a     ................
    1c14:	0b0a 0b0b 0c0c 000c                         ........

00001c1c <MEM_TTTRIS>:
    1c1c:	0200 0400 0703 0906 0c09 0f0b 110e 1311     ................

00001c2c <Pieces_TTRIS>:
    1c2c:	2000 0070 0000 3000 0030 0000 6030 0000     . p....00...0`..
    1c3c:	3010 0020 2020 2020 0000 2020 0060 2000     .0 .    ..  `.. 
    1c4c:	3020 0000                                    0..

00001c50 <OLED_INIT_CMD>:
    1c50:	3fa8 148d 0020 0021 227f 3f00 12da c0a0     .?.. .!..".?....
    1c60:	00af 0000                                   ....
