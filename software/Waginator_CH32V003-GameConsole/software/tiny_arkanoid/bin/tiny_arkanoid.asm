
bin/tiny_arkanoid.elf:     file format elf32-littleriscv


Disassembly of section .init:

00000000 <jump_reset>:
   0:	5cb0206f          	j	2dca <reset_handler>

Disassembly of section .text:

00000004 <__adddf3>:
       4:	00100737          	lui	a4,0x100
       8:	177d                	add	a4,a4,-1 # fffff <_data_lma+0xfc923>
       a:	1131                	add	sp,sp,-20
       c:	00b777b3          	and	a5,a4,a1
      10:	0146d313          	srl	t1,a3,0x14
      14:	8f75                	and	a4,a4,a3
      16:	c622                	sw	s0,12(sp)
      18:	c426                	sw	s1,8(sp)
      1a:	01f5d413          	srl	s0,a1,0x1f
      1e:	0145d493          	srl	s1,a1,0x14
      22:	00379593          	sll	a1,a5,0x3
      26:	01d55793          	srl	a5,a0,0x1d
      2a:	7ff4f493          	and	s1,s1,2047
      2e:	8fcd                	or	a5,a5,a1
      30:	7ff37313          	and	t1,t1,2047
      34:	01d65593          	srl	a1,a2,0x1d
      38:	070e                	sll	a4,a4,0x3
      3a:	c806                	sw	ra,16(sp)
      3c:	82fd                	srl	a3,a3,0x1f
      3e:	050e                	sll	a0,a0,0x3
      40:	8dd9                	or	a1,a1,a4
      42:	060e                	sll	a2,a2,0x3
      44:	406482b3          	sub	t0,s1,t1
      48:	26d41963          	bne	s0,a3,2ba <__adddf3+0x2b6>
      4c:	12505263          	blez	t0,170 <__adddf3+0x16c>
      50:	06031e63          	bnez	t1,cc <__adddf3+0xc8>
      54:	00c5e733          	or	a4,a1,a2
      58:	5a070863          	beqz	a4,608 <__adddf3+0x604>
      5c:	fff28713          	add	a4,t0,-1
      60:	ef39                	bnez	a4,be <__adddf3+0xba>
      62:	962a                	add	a2,a2,a0
      64:	00a63733          	sltu	a4,a2,a0
      68:	95be                	add	a1,a1,a5
      6a:	00e587b3          	add	a5,a1,a4
      6e:	00800737          	lui	a4,0x800
      72:	8f7d                	and	a4,a4,a5
      74:	8532                	mv	a0,a2
      76:	22071463          	bnez	a4,29e <__adddf3+0x29a>
      7a:	4485                	li	s1,1
      7c:	00757713          	and	a4,a0,7
      80:	cf01                	beqz	a4,98 <__adddf3+0x94>
      82:	00f57713          	and	a4,a0,15
      86:	4691                	li	a3,4
      88:	00d70863          	beq	a4,a3,98 <__adddf3+0x94>
      8c:	00450713          	add	a4,a0,4
      90:	00a736b3          	sltu	a3,a4,a0
      94:	97b6                	add	a5,a5,a3
      96:	853a                	mv	a0,a4
      98:	00800737          	lui	a4,0x800
      9c:	8f7d                	and	a4,a4,a5
      9e:	56070b63          	beqz	a4,614 <__adddf3+0x610>
      a2:	0485                	add	s1,s1,1
      a4:	7ff00713          	li	a4,2047
      a8:	08e48463          	beq	s1,a4,130 <__adddf3+0x12c>
      ac:	ff800737          	lui	a4,0xff800
      b0:	177d                	add	a4,a4,-1 # ff7fffff <__global_pointer$+0xdf7ff7ff>
      b2:	8ff9                	and	a5,a5,a4
      b4:	810d                	srl	a0,a0,0x3
      b6:	01d79713          	sll	a4,a5,0x1d
      ba:	8f49                	or	a4,a4,a0
      bc:	a331                	j	5c8 <__adddf3+0x5c4>
      be:	7ff00693          	li	a3,2047
      c2:	06d29963          	bne	t0,a3,134 <__adddf3+0x130>
      c6:	7ff00493          	li	s1,2047
      ca:	bf4d                	j	7c <__adddf3+0x78>
      cc:	7ff00713          	li	a4,2047
      d0:	fae486e3          	beq	s1,a4,7c <__adddf3+0x78>
      d4:	03800713          	li	a4,56
      d8:	06574263          	blt	a4,t0,13c <__adddf3+0x138>
      dc:	00800737          	lui	a4,0x800
      e0:	8dd9                	or	a1,a1,a4
      e2:	8716                	mv	a4,t0
      e4:	46fd                	li	a3,31
      e6:	04e6ce63          	blt	a3,a4,142 <__adddf3+0x13e>
      ea:	02000313          	li	t1,32
      ee:	40e30333          	sub	t1,t1,a4
      f2:	006596b3          	sll	a3,a1,t1
      f6:	00e652b3          	srl	t0,a2,a4
      fa:	00661333          	sll	t1,a2,t1
      fe:	0056e6b3          	or	a3,a3,t0
     102:	00603333          	snez	t1,t1
     106:	0066e6b3          	or	a3,a3,t1
     10a:	00e5d733          	srl	a4,a1,a4
     10e:	9536                	add	a0,a0,a3
     110:	973e                	add	a4,a4,a5
     112:	00d536b3          	sltu	a3,a0,a3
     116:	00d707b3          	add	a5,a4,a3
     11a:	00800737          	lui	a4,0x800
     11e:	8f7d                	and	a4,a4,a5
     120:	df31                	beqz	a4,7c <__adddf3+0x78>
     122:	0485                	add	s1,s1,1
     124:	7ff00713          	li	a4,2047
     128:	16e49c63          	bne	s1,a4,2a0 <__adddf3+0x29c>
     12c:	7ff00493          	li	s1,2047
     130:	4781                	li	a5,0
     132:	a299                	j	278 <__adddf3+0x274>
     134:	03800693          	li	a3,56
     138:	fae6d6e3          	bge	a3,a4,e4 <__adddf3+0xe0>
     13c:	4701                	li	a4,0
     13e:	4685                	li	a3,1
     140:	b7f9                	j	10e <__adddf3+0x10a>
     142:	fe070693          	add	a3,a4,-32 # 7fffe0 <_data_lma+0x7fc904>
     146:	02000293          	li	t0,32
     14a:	00d5d6b3          	srl	a3,a1,a3
     14e:	4301                	li	t1,0
     150:	00570863          	beq	a4,t0,160 <__adddf3+0x15c>
     154:	04000313          	li	t1,64
     158:	40e30333          	sub	t1,t1,a4
     15c:	00659333          	sll	t1,a1,t1
     160:	00c36333          	or	t1,t1,a2
     164:	00603333          	snez	t1,t1
     168:	0066e6b3          	or	a3,a3,t1
     16c:	4701                	li	a4,0
     16e:	b745                	j	10e <__adddf3+0x10a>
     170:	0a028c63          	beqz	t0,228 <__adddf3+0x224>
     174:	409306b3          	sub	a3,t1,s1
     178:	e085                	bnez	s1,198 <__adddf3+0x194>
     17a:	00a7e733          	or	a4,a5,a0
     17e:	46070e63          	beqz	a4,5fa <__adddf3+0x5f6>
     182:	fff68713          	add	a4,a3,-1
     186:	ec070ee3          	beqz	a4,62 <__adddf3+0x5e>
     18a:	7ff00293          	li	t0,2047
     18e:	04569f63          	bne	a3,t0,1ec <__adddf3+0x1e8>
     192:	87ae                	mv	a5,a1
     194:	8532                	mv	a0,a2
     196:	bf05                	j	c6 <__adddf3+0xc2>
     198:	7ff00713          	li	a4,2047
     19c:	fee30be3          	beq	t1,a4,192 <__adddf3+0x18e>
     1a0:	03800713          	li	a4,56
     1a4:	04d74863          	blt	a4,a3,1f4 <__adddf3+0x1f0>
     1a8:	00800737          	lui	a4,0x800
     1ac:	8fd9                	or	a5,a5,a4
     1ae:	8736                	mv	a4,a3
     1b0:	46fd                	li	a3,31
     1b2:	04e6c463          	blt	a3,a4,1fa <__adddf3+0x1f6>
     1b6:	02000293          	li	t0,32
     1ba:	40e282b3          	sub	t0,t0,a4
     1be:	005796b3          	sll	a3,a5,t0
     1c2:	00e553b3          	srl	t2,a0,a4
     1c6:	005512b3          	sll	t0,a0,t0
     1ca:	0076e6b3          	or	a3,a3,t2
     1ce:	005032b3          	snez	t0,t0
     1d2:	0056e6b3          	or	a3,a3,t0
     1d6:	00e7d733          	srl	a4,a5,a4
     1da:	9636                	add	a2,a2,a3
     1dc:	972e                	add	a4,a4,a1
     1de:	00d636b3          	sltu	a3,a2,a3
     1e2:	8532                	mv	a0,a2
     1e4:	00d707b3          	add	a5,a4,a3
     1e8:	849a                	mv	s1,t1
     1ea:	bf05                	j	11a <__adddf3+0x116>
     1ec:	03800693          	li	a3,56
     1f0:	fce6d0e3          	bge	a3,a4,1b0 <__adddf3+0x1ac>
     1f4:	4701                	li	a4,0
     1f6:	4685                	li	a3,1
     1f8:	b7cd                	j	1da <__adddf3+0x1d6>
     1fa:	fe070693          	add	a3,a4,-32 # 7fffe0 <_data_lma+0x7fc904>
     1fe:	02000393          	li	t2,32
     202:	00d7d6b3          	srl	a3,a5,a3
     206:	4281                	li	t0,0
     208:	00770863          	beq	a4,t2,218 <__adddf3+0x214>
     20c:	04000293          	li	t0,64
     210:	40e282b3          	sub	t0,t0,a4
     214:	005792b3          	sll	t0,a5,t0
     218:	00a2e2b3          	or	t0,t0,a0
     21c:	005032b3          	snez	t0,t0
     220:	0056e6b3          	or	a3,a3,t0
     224:	4701                	li	a4,0
     226:	bf55                	j	1da <__adddf3+0x1d6>
     228:	00148713          	add	a4,s1,1
     22c:	7fe77693          	and	a3,a4,2046
     230:	e6b1                	bnez	a3,27c <__adddf3+0x278>
     232:	00a7e733          	or	a4,a5,a0
     236:	e885                	bnez	s1,266 <__adddf3+0x262>
     238:	3c070563          	beqz	a4,602 <__adddf3+0x5fe>
     23c:	00c5e733          	or	a4,a1,a2
     240:	e2070ee3          	beqz	a4,7c <__adddf3+0x78>
     244:	962a                	add	a2,a2,a0
     246:	00a63733          	sltu	a4,a2,a0
     24a:	95be                	add	a1,a1,a5
     24c:	00e587b3          	add	a5,a1,a4
     250:	00800737          	lui	a4,0x800
     254:	8f7d                	and	a4,a4,a5
     256:	8532                	mv	a0,a2
     258:	e20702e3          	beqz	a4,7c <__adddf3+0x78>
     25c:	ff800737          	lui	a4,0xff800
     260:	177d                	add	a4,a4,-1 # ff7fffff <__global_pointer$+0xdf7ff7ff>
     262:	8ff9                	and	a5,a5,a4
     264:	bd19                	j	7a <__adddf3+0x76>
     266:	d715                	beqz	a4,192 <__adddf3+0x18e>
     268:	8e4d                	or	a2,a2,a1
     26a:	e4060ee3          	beqz	a2,c6 <__adddf3+0xc2>
     26e:	4401                	li	s0,0
     270:	7ff00493          	li	s1,2047
     274:	000807b7          	lui	a5,0x80
     278:	4701                	li	a4,0
     27a:	ae81                	j	5ca <__adddf3+0x5c6>
     27c:	7ff00693          	li	a3,2047
     280:	ead706e3          	beq	a4,a3,12c <__adddf3+0x128>
     284:	962a                	add	a2,a2,a0
     286:	00a63533          	sltu	a0,a2,a0
     28a:	95be                	add	a1,a1,a5
     28c:	95aa                	add	a1,a1,a0
     28e:	01f59513          	sll	a0,a1,0x1f
     292:	8205                	srl	a2,a2,0x1
     294:	8d51                	or	a0,a0,a2
     296:	0015d793          	srl	a5,a1,0x1
     29a:	84ba                	mv	s1,a4
     29c:	b3c5                	j	7c <__adddf3+0x78>
     29e:	4489                	li	s1,2
     2a0:	ff800737          	lui	a4,0xff800
     2a4:	177d                	add	a4,a4,-1 # ff7fffff <__global_pointer$+0xdf7ff7ff>
     2a6:	8ff9                	and	a5,a5,a4
     2a8:	00155713          	srl	a4,a0,0x1
     2ac:	8905                	and	a0,a0,1
     2ae:	8f49                	or	a4,a4,a0
     2b0:	01f79513          	sll	a0,a5,0x1f
     2b4:	8d59                	or	a0,a0,a4
     2b6:	8385                	srl	a5,a5,0x1
     2b8:	b3d1                	j	7c <__adddf3+0x78>
     2ba:	0c505d63          	blez	t0,394 <__adddf3+0x390>
     2be:	02031f63          	bnez	t1,2fc <__adddf3+0x2f8>
     2c2:	00c5e733          	or	a4,a1,a2
     2c6:	34070163          	beqz	a4,608 <__adddf3+0x604>
     2ca:	fff28713          	add	a4,t0,-1
     2ce:	ef01                	bnez	a4,2e6 <__adddf3+0x2e2>
     2d0:	40c50633          	sub	a2,a0,a2
     2d4:	00c53733          	sltu	a4,a0,a2
     2d8:	40b785b3          	sub	a1,a5,a1
     2dc:	8532                	mv	a0,a2
     2de:	40e587b3          	sub	a5,a1,a4
     2e2:	4485                	li	s1,1
     2e4:	a0b5                	j	350 <__adddf3+0x34c>
     2e6:	7ff00693          	li	a3,2047
     2ea:	dcd28ee3          	beq	t0,a3,c6 <__adddf3+0xc2>
     2ee:	03800693          	li	a3,56
     2f2:	02e6d163          	bge	a3,a4,314 <__adddf3+0x310>
     2f6:	4701                	li	a4,0
     2f8:	4685                	li	a3,1
     2fa:	a091                	j	33e <__adddf3+0x33a>
     2fc:	7ff00713          	li	a4,2047
     300:	d6e48ee3          	beq	s1,a4,7c <__adddf3+0x78>
     304:	03800713          	li	a4,56
     308:	fe5747e3          	blt	a4,t0,2f6 <__adddf3+0x2f2>
     30c:	00800737          	lui	a4,0x800
     310:	8dd9                	or	a1,a1,a4
     312:	8716                	mv	a4,t0
     314:	46fd                	li	a3,31
     316:	04e6c863          	blt	a3,a4,366 <__adddf3+0x362>
     31a:	02000313          	li	t1,32
     31e:	40e30333          	sub	t1,t1,a4
     322:	006596b3          	sll	a3,a1,t1
     326:	00e652b3          	srl	t0,a2,a4
     32a:	00661333          	sll	t1,a2,t1
     32e:	0056e6b3          	or	a3,a3,t0
     332:	00603333          	snez	t1,t1
     336:	0066e6b3          	or	a3,a3,t1
     33a:	00e5d733          	srl	a4,a1,a4
     33e:	40d506b3          	sub	a3,a0,a3
     342:	00d53633          	sltu	a2,a0,a3
     346:	40e78733          	sub	a4,a5,a4
     34a:	8536                	mv	a0,a3
     34c:	40c707b3          	sub	a5,a4,a2
     350:	00800337          	lui	t1,0x800
     354:	0067f733          	and	a4,a5,t1
     358:	d20702e3          	beqz	a4,7c <__adddf3+0x78>
     35c:	137d                	add	t1,t1,-1 # 7fffff <_data_lma+0x7fc923>
     35e:	0067f333          	and	t1,a5,t1
     362:	82aa                	mv	t0,a0
     364:	a24d                	j	506 <__adddf3+0x502>
     366:	fe070693          	add	a3,a4,-32 # 7fffe0 <_data_lma+0x7fc904>
     36a:	02000293          	li	t0,32
     36e:	00d5d6b3          	srl	a3,a1,a3
     372:	4301                	li	t1,0
     374:	00570863          	beq	a4,t0,384 <__adddf3+0x380>
     378:	04000313          	li	t1,64
     37c:	40e30333          	sub	t1,t1,a4
     380:	00659333          	sll	t1,a1,t1
     384:	00c36333          	or	t1,t1,a2
     388:	00603333          	snez	t1,t1
     38c:	0066e6b3          	or	a3,a3,t1
     390:	4701                	li	a4,0
     392:	b775                	j	33e <__adddf3+0x33a>
     394:	0c028863          	beqz	t0,464 <__adddf3+0x460>
     398:	409302b3          	sub	t0,t1,s1
     39c:	e895                	bnez	s1,3d0 <__adddf3+0x3cc>
     39e:	00a7e733          	or	a4,a5,a0
     3a2:	26070563          	beqz	a4,60c <__adddf3+0x608>
     3a6:	fff28713          	add	a4,t0,-1
     3aa:	eb11                	bnez	a4,3be <__adddf3+0x3ba>
     3ac:	40a60533          	sub	a0,a2,a0
     3b0:	8d9d                	sub	a1,a1,a5
     3b2:	00a63633          	sltu	a2,a2,a0
     3b6:	40c587b3          	sub	a5,a1,a2
     3ba:	8436                	mv	s0,a3
     3bc:	b71d                	j	2e2 <__adddf3+0x2de>
     3be:	7ff00393          	li	t2,2047
     3c2:	06729363          	bne	t0,t2,428 <__adddf3+0x424>
     3c6:	87ae                	mv	a5,a1
     3c8:	8532                	mv	a0,a2
     3ca:	7ff00493          	li	s1,2047
     3ce:	a855                	j	482 <__adddf3+0x47e>
     3d0:	7ff00713          	li	a4,2047
     3d4:	fee309e3          	beq	t1,a4,3c6 <__adddf3+0x3c2>
     3d8:	03800713          	li	a4,56
     3dc:	04574a63          	blt	a4,t0,430 <__adddf3+0x42c>
     3e0:	00800737          	lui	a4,0x800
     3e4:	8fd9                	or	a5,a5,a4
     3e6:	8716                	mv	a4,t0
     3e8:	42fd                	li	t0,31
     3ea:	04e2c663          	blt	t0,a4,436 <__adddf3+0x432>
     3ee:	02000393          	li	t2,32
     3f2:	40e383b3          	sub	t2,t2,a4
     3f6:	00e55433          	srl	s0,a0,a4
     3fa:	007792b3          	sll	t0,a5,t2
     3fe:	007513b3          	sll	t2,a0,t2
     402:	0082e2b3          	or	t0,t0,s0
     406:	007033b3          	snez	t2,t2
     40a:	0072e533          	or	a0,t0,t2
     40e:	00e7d733          	srl	a4,a5,a4
     412:	40a60533          	sub	a0,a2,a0
     416:	40e58733          	sub	a4,a1,a4
     41a:	00a63633          	sltu	a2,a2,a0
     41e:	40c707b3          	sub	a5,a4,a2
     422:	849a                	mv	s1,t1
     424:	8436                	mv	s0,a3
     426:	b72d                	j	350 <__adddf3+0x34c>
     428:	03800293          	li	t0,56
     42c:	fae2dee3          	bge	t0,a4,3e8 <__adddf3+0x3e4>
     430:	4701                	li	a4,0
     432:	4505                	li	a0,1
     434:	bff9                	j	412 <__adddf3+0x40e>
     436:	fe070293          	add	t0,a4,-32 # 7fffe0 <_data_lma+0x7fc904>
     43a:	02000413          	li	s0,32
     43e:	0057d2b3          	srl	t0,a5,t0
     442:	4381                	li	t2,0
     444:	00870863          	beq	a4,s0,454 <__adddf3+0x450>
     448:	04000393          	li	t2,64
     44c:	40e383b3          	sub	t2,t2,a4
     450:	007793b3          	sll	t2,a5,t2
     454:	00a3e3b3          	or	t2,t2,a0
     458:	007033b3          	snez	t2,t2
     45c:	0072e533          	or	a0,t0,t2
     460:	4701                	li	a4,0
     462:	bf45                	j	412 <__adddf3+0x40e>
     464:	00148713          	add	a4,s1,1
     468:	7fe77713          	and	a4,a4,2046
     46c:	e72d                	bnez	a4,4d6 <__adddf3+0x4d2>
     46e:	00a7e333          	or	t1,a5,a0
     472:	00c5e733          	or	a4,a1,a2
     476:	e4a9                	bnez	s1,4c0 <__adddf3+0x4bc>
     478:	00031763          	bnez	t1,486 <__adddf3+0x482>
     47c:	c76d                	beqz	a4,566 <__adddf3+0x562>
     47e:	87ae                	mv	a5,a1
     480:	8532                	mv	a0,a2
     482:	8436                	mv	s0,a3
     484:	bee5                	j	7c <__adddf3+0x78>
     486:	be070be3          	beqz	a4,7c <__adddf3+0x78>
     48a:	40c502b3          	sub	t0,a0,a2
     48e:	00553733          	sltu	a4,a0,t0
     492:	40b78333          	sub	t1,a5,a1
     496:	40e30333          	sub	t1,t1,a4
     49a:	00800737          	lui	a4,0x800
     49e:	00e37733          	and	a4,t1,a4
     4a2:	cb09                	beqz	a4,4b4 <__adddf3+0x4b0>
     4a4:	40a60533          	sub	a0,a2,a0
     4a8:	8d9d                	sub	a1,a1,a5
     4aa:	00a63633          	sltu	a2,a2,a0
     4ae:	40c587b3          	sub	a5,a1,a2
     4b2:	bfc1                	j	482 <__adddf3+0x47e>
     4b4:	0062e733          	or	a4,t0,t1
     4b8:	c75d                	beqz	a4,566 <__adddf3+0x562>
     4ba:	879a                	mv	a5,t1
     4bc:	8516                	mv	a0,t0
     4be:	be7d                	j	7c <__adddf3+0x78>
     4c0:	00031863          	bnez	t1,4d0 <__adddf3+0x4cc>
     4c4:	16070863          	beqz	a4,634 <__adddf3+0x630>
     4c8:	87ae                	mv	a5,a1
     4ca:	8532                	mv	a0,a2
     4cc:	8436                	mv	s0,a3
     4ce:	bee5                	j	c6 <__adddf3+0xc2>
     4d0:	be070be3          	beqz	a4,c6 <__adddf3+0xc2>
     4d4:	bb69                	j	26e <__adddf3+0x26a>
     4d6:	40c50733          	sub	a4,a0,a2
     4da:	00e533b3          	sltu	t2,a0,a4
     4de:	40b78333          	sub	t1,a5,a1
     4e2:	40730333          	sub	t1,t1,t2
     4e6:	008003b7          	lui	t2,0x800
     4ea:	007373b3          	and	t2,t1,t2
     4ee:	82ba                	mv	t0,a4
     4f0:	06038763          	beqz	t2,55e <__adddf3+0x55a>
     4f4:	40a60533          	sub	a0,a2,a0
     4f8:	8d9d                	sub	a1,a1,a5
     4fa:	00a63633          	sltu	a2,a2,a0
     4fe:	82aa                	mv	t0,a0
     500:	40c58333          	sub	t1,a1,a2
     504:	8436                	mv	s0,a3
     506:	06030263          	beqz	t1,56a <__adddf3+0x566>
     50a:	851a                	mv	a0,t1
     50c:	c216                	sw	t0,4(sp)
     50e:	c01a                	sw	t1,0(sp)
     510:	5a2010ef          	jal	1ab2 <__clzsi2>
     514:	4302                	lw	t1,0(sp)
     516:	4292                	lw	t0,4(sp)
     518:	ff850793          	add	a5,a0,-8
     51c:	02000713          	li	a4,32
     520:	8f1d                	sub	a4,a4,a5
     522:	00f31333          	sll	t1,t1,a5
     526:	00e2d733          	srl	a4,t0,a4
     52a:	00676733          	or	a4,a4,t1
     52e:	00f29333          	sll	t1,t0,a5
     532:	0a97cd63          	blt	a5,s1,5ec <__adddf3+0x5e8>
     536:	8f85                	sub	a5,a5,s1
     538:	00178613          	add	a2,a5,1 # 80001 <_data_lma+0x7c925>
     53c:	02000693          	li	a3,32
     540:	8e91                	sub	a3,a3,a2
     542:	00d71533          	sll	a0,a4,a3
     546:	00c357b3          	srl	a5,t1,a2
     54a:	00d316b3          	sll	a3,t1,a3
     54e:	8d5d                	or	a0,a0,a5
     550:	00d036b3          	snez	a3,a3
     554:	8d55                	or	a0,a0,a3
     556:	00c757b3          	srl	a5,a4,a2
     55a:	4481                	li	s1,0
     55c:	b605                	j	7c <__adddf3+0x78>
     55e:	00676733          	or	a4,a4,t1
     562:	f355                	bnez	a4,506 <__adddf3+0x502>
     564:	4481                	li	s1,0
     566:	4781                	li	a5,0
     568:	a0e1                	j	630 <__adddf3+0x62c>
     56a:	8516                	mv	a0,t0
     56c:	c21a                	sw	t1,4(sp)
     56e:	c016                	sw	t0,0(sp)
     570:	542010ef          	jal	1ab2 <__clzsi2>
     574:	01850793          	add	a5,a0,24
     578:	46fd                	li	a3,31
     57a:	4282                	lw	t0,0(sp)
     57c:	4312                	lw	t1,4(sp)
     57e:	f8f6dfe3          	bge	a3,a5,51c <__adddf3+0x518>
     582:	1561                	add	a0,a0,-8
     584:	00a29733          	sll	a4,t0,a0
     588:	0297c963          	blt	a5,s1,5ba <__adddf3+0x5b6>
     58c:	8f85                	sub	a5,a5,s1
     58e:	00178613          	add	a2,a5,1
     592:	fac6d5e3          	bge	a3,a2,53c <__adddf3+0x538>
     596:	1785                	add	a5,a5,-31
     598:	02000693          	li	a3,32
     59c:	00f757b3          	srl	a5,a4,a5
     5a0:	4501                	li	a0,0
     5a2:	00d60763          	beq	a2,a3,5b0 <__adddf3+0x5ac>
     5a6:	04000513          	li	a0,64
     5aa:	8d11                	sub	a0,a0,a2
     5ac:	00a71533          	sll	a0,a4,a0
     5b0:	00a03533          	snez	a0,a0
     5b4:	8d5d                	or	a0,a0,a5
     5b6:	4781                	li	a5,0
     5b8:	b74d                	j	55a <__adddf3+0x556>
     5ba:	8c9d                	sub	s1,s1,a5
     5bc:	ff8007b7          	lui	a5,0xff800
     5c0:	17fd                	add	a5,a5,-1 # ff7fffff <__global_pointer$+0xdf7ff7ff>
     5c2:	8ff9                	and	a5,a5,a4
     5c4:	01d79713          	sll	a4,a5,0x1d
     5c8:	838d                	srl	a5,a5,0x3
     5ca:	04d2                	sll	s1,s1,0x14
     5cc:	7ff006b7          	lui	a3,0x7ff00
     5d0:	07b2                	sll	a5,a5,0xc
     5d2:	83b1                	srl	a5,a5,0xc
     5d4:	8cf5                	and	s1,s1,a3
     5d6:	8cdd                	or	s1,s1,a5
     5d8:	047e                	sll	s0,s0,0x1f
     5da:	0084e7b3          	or	a5,s1,s0
     5de:	40c2                	lw	ra,16(sp)
     5e0:	4432                	lw	s0,12(sp)
     5e2:	44a2                	lw	s1,8(sp)
     5e4:	853a                	mv	a0,a4
     5e6:	85be                	mv	a1,a5
     5e8:	0151                	add	sp,sp,20
     5ea:	8082                	ret
     5ec:	8c9d                	sub	s1,s1,a5
     5ee:	ff8007b7          	lui	a5,0xff800
     5f2:	17fd                	add	a5,a5,-1 # ff7fffff <__global_pointer$+0xdf7ff7ff>
     5f4:	8ff9                	and	a5,a5,a4
     5f6:	851a                	mv	a0,t1
     5f8:	b451                	j	7c <__adddf3+0x78>
     5fa:	87ae                	mv	a5,a1
     5fc:	8532                	mv	a0,a2
     5fe:	84b6                	mv	s1,a3
     600:	bcb5                	j	7c <__adddf3+0x78>
     602:	87ae                	mv	a5,a1
     604:	8532                	mv	a0,a2
     606:	bc9d                	j	7c <__adddf3+0x78>
     608:	8496                	mv	s1,t0
     60a:	bc8d                	j	7c <__adddf3+0x78>
     60c:	87ae                	mv	a5,a1
     60e:	8532                	mv	a0,a2
     610:	8496                	mv	s1,t0
     612:	bd85                	j	482 <__adddf3+0x47e>
     614:	01d79693          	sll	a3,a5,0x1d
     618:	810d                	srl	a0,a0,0x3
     61a:	7ff00613          	li	a2,2047
     61e:	8ec9                	or	a3,a3,a0
     620:	838d                	srl	a5,a5,0x3
     622:	00c49f63          	bne	s1,a2,640 <__adddf3+0x63c>
     626:	8edd                	or	a3,a3,a5
     628:	000807b7          	lui	a5,0x80
     62c:	b00680e3          	beqz	a3,12c <__adddf3+0x128>
     630:	4401                	li	s0,0
     632:	bf61                	j	5ca <__adddf3+0x5c6>
     634:	4401                	li	s0,0
     636:	7ff00493          	li	s1,2047
     63a:	000807b7          	lui	a5,0x80
     63e:	b771                	j	5ca <__adddf3+0x5c6>
     640:	8736                	mv	a4,a3
     642:	b761                	j	5ca <__adddf3+0x5c6>

00000644 <__divdf3>:
     644:	fc410113          	add	sp,sp,-60
     648:	d826                	sw	s1,48(sp)
     64a:	84ae                	mv	s1,a1
     64c:	00c59713          	sll	a4,a1,0xc
     650:	01f4d793          	srl	a5,s1,0x1f
     654:	81d1                	srl	a1,a1,0x14
     656:	da22                	sw	s0,52(sp)
     658:	832a                	mv	t1,a0
     65a:	842a                	mv	s0,a0
     65c:	dc06                	sw	ra,56(sp)
     65e:	7ff5f513          	and	a0,a1,2047
     662:	c03e                	sw	a5,0(sp)
     664:	8331                	srl	a4,a4,0xc
     666:	c541                	beqz	a0,6ee <__divdf3+0xaa>
     668:	7ff00793          	li	a5,2047
     66c:	0ef50a63          	beq	a0,a5,760 <__divdf3+0x11c>
     670:	070e                	sll	a4,a4,0x3
     672:	01d35793          	srl	a5,t1,0x1d
     676:	8fd9                	or	a5,a5,a4
     678:	00800737          	lui	a4,0x800
     67c:	8fd9                	or	a5,a5,a4
     67e:	00331413          	sll	s0,t1,0x3
     682:	c0150593          	add	a1,a0,-1023
     686:	4481                	li	s1,0
     688:	00c69713          	sll	a4,a3,0xc
     68c:	00c75393          	srl	t2,a4,0xc
     690:	0146d713          	srl	a4,a3,0x14
     694:	82fd                	srl	a3,a3,0x1f
     696:	7ff77713          	and	a4,a4,2047
     69a:	c236                	sw	a3,4(sp)
     69c:	c37d                	beqz	a4,782 <__divdf3+0x13e>
     69e:	7ff00693          	li	a3,2047
     6a2:	14d70c63          	beq	a4,a3,7fa <__divdf3+0x1b6>
     6a6:	00339513          	sll	a0,t2,0x3
     6aa:	01d65693          	srl	a3,a2,0x1d
     6ae:	8ec9                	or	a3,a3,a0
     6b0:	00800537          	lui	a0,0x800
     6b4:	00a6e3b3          	or	t2,a3,a0
     6b8:	00361693          	sll	a3,a2,0x3
     6bc:	c0170613          	add	a2,a4,-1023 # 7ffc01 <_data_lma+0x7fc525>
     6c0:	4501                	li	a0,0
     6c2:	4702                	lw	a4,0(sp)
     6c4:	4312                	lw	t1,4(sp)
     6c6:	00674733          	xor	a4,a4,t1
     6ca:	c63a                	sw	a4,12(sp)
     6cc:	40c58733          	sub	a4,a1,a2
     6d0:	c43a                	sw	a4,8(sp)
     6d2:	00249713          	sll	a4,s1,0x2
     6d6:	8f49                	or	a4,a4,a0
     6d8:	177d                	add	a4,a4,-1
     6da:	4639                	li	a2,14
     6dc:	16e66063          	bltu	a2,a4,83c <__divdf3+0x1f8>
     6e0:	660d                	lui	a2,0x3
     6e2:	070a                	sll	a4,a4,0x2
     6e4:	e4c60613          	add	a2,a2,-436 # 2e4c <reset_handler+0x82>
     6e8:	9732                	add	a4,a4,a2
     6ea:	4318                	lw	a4,0(a4)
     6ec:	8702                	jr	a4
     6ee:	006767b3          	or	a5,a4,t1
     6f2:	cfbd                	beqz	a5,770 <__divdf3+0x12c>
     6f4:	c836                	sw	a3,16(sp)
     6f6:	c632                	sw	a2,12(sp)
     6f8:	cf1d                	beqz	a4,736 <__divdf3+0xf2>
     6fa:	853a                	mv	a0,a4
     6fc:	c41a                	sw	t1,8(sp)
     6fe:	c23a                	sw	a4,4(sp)
     700:	3b2010ef          	jal	1ab2 <__clzsi2>
     704:	4712                	lw	a4,4(sp)
     706:	4322                	lw	t1,8(sp)
     708:	4632                	lw	a2,12(sp)
     70a:	46c2                	lw	a3,16(sp)
     70c:	82aa                	mv	t0,a0
     70e:	ff550393          	add	t2,a0,-11 # 7ffff5 <_data_lma+0x7fc919>
     712:	47f5                	li	a5,29
     714:	ff828593          	add	a1,t0,-8
     718:	407787b3          	sub	a5,a5,t2
     71c:	00b71733          	sll	a4,a4,a1
     720:	00f357b3          	srl	a5,t1,a5
     724:	8fd9                	or	a5,a5,a4
     726:	00b31733          	sll	a4,t1,a1
     72a:	c0d00593          	li	a1,-1011
     72e:	405585b3          	sub	a1,a1,t0
     732:	843a                	mv	s0,a4
     734:	bf89                	j	686 <__divdf3+0x42>
     736:	851a                	mv	a0,t1
     738:	c43a                	sw	a4,8(sp)
     73a:	c21a                	sw	t1,4(sp)
     73c:	376010ef          	jal	1ab2 <__clzsi2>
     740:	01550393          	add	t2,a0,21
     744:	47f1                	li	a5,28
     746:	4312                	lw	t1,4(sp)
     748:	4722                	lw	a4,8(sp)
     74a:	4632                	lw	a2,12(sp)
     74c:	46c2                	lw	a3,16(sp)
     74e:	02050293          	add	t0,a0,32
     752:	fc77d0e3          	bge	a5,t2,712 <__divdf3+0xce>
     756:	ff850793          	add	a5,a0,-8
     75a:	00f317b3          	sll	a5,t1,a5
     75e:	b7f1                	j	72a <__divdf3+0xe6>
     760:	006767b3          	or	a5,a4,t1
     764:	cb91                	beqz	a5,778 <__divdf3+0x134>
     766:	87ba                	mv	a5,a4
     768:	7ff00593          	li	a1,2047
     76c:	448d                	li	s1,3
     76e:	bf29                	j	688 <__divdf3+0x44>
     770:	4401                	li	s0,0
     772:	4581                	li	a1,0
     774:	4485                	li	s1,1
     776:	bf09                	j	688 <__divdf3+0x44>
     778:	4401                	li	s0,0
     77a:	7ff00593          	li	a1,2047
     77e:	4489                	li	s1,2
     780:	b721                	j	688 <__divdf3+0x44>
     782:	00c3e6b3          	or	a3,t2,a2
     786:	c2d1                	beqz	a3,80a <__divdf3+0x1c6>
     788:	04038363          	beqz	t2,7ce <__divdf3+0x18a>
     78c:	851e                	mv	a0,t2
     78e:	ca32                	sw	a2,20(sp)
     790:	c82e                	sw	a1,16(sp)
     792:	c63e                	sw	a5,12(sp)
     794:	c41e                	sw	t2,8(sp)
     796:	31c010ef          	jal	1ab2 <__clzsi2>
     79a:	43a2                	lw	t2,8(sp)
     79c:	47b2                	lw	a5,12(sp)
     79e:	45c2                	lw	a1,16(sp)
     7a0:	4652                	lw	a2,20(sp)
     7a2:	86aa                	mv	a3,a0
     7a4:	ff550293          	add	t0,a0,-11
     7a8:	4775                	li	a4,29
     7aa:	ff868513          	add	a0,a3,-8 # 7feffff8 <__global_pointer$+0x5feff7f8>
     7ae:	40570733          	sub	a4,a4,t0
     7b2:	00a393b3          	sll	t2,t2,a0
     7b6:	00e65733          	srl	a4,a2,a4
     7ba:	00776733          	or	a4,a4,t2
     7be:	00a613b3          	sll	t2,a2,a0
     7c2:	c0d00613          	li	a2,-1011
     7c6:	8e15                	sub	a2,a2,a3
     7c8:	869e                	mv	a3,t2
     7ca:	83ba                	mv	t2,a4
     7cc:	bdd5                	j	6c0 <__divdf3+0x7c>
     7ce:	8532                	mv	a0,a2
     7d0:	ca1e                	sw	t2,20(sp)
     7d2:	c82e                	sw	a1,16(sp)
     7d4:	c63e                	sw	a5,12(sp)
     7d6:	c432                	sw	a2,8(sp)
     7d8:	2da010ef          	jal	1ab2 <__clzsi2>
     7dc:	01550293          	add	t0,a0,21
     7e0:	4771                	li	a4,28
     7e2:	4622                	lw	a2,8(sp)
     7e4:	47b2                	lw	a5,12(sp)
     7e6:	45c2                	lw	a1,16(sp)
     7e8:	43d2                	lw	t2,20(sp)
     7ea:	02050693          	add	a3,a0,32
     7ee:	fa575de3          	bge	a4,t0,7a8 <__divdf3+0x164>
     7f2:	1561                	add	a0,a0,-8
     7f4:	00a61733          	sll	a4,a2,a0
     7f8:	b7e9                	j	7c2 <__divdf3+0x17e>
     7fa:	00c3e6b3          	or	a3,t2,a2
     7fe:	ca91                	beqz	a3,812 <__divdf3+0x1ce>
     800:	86b2                	mv	a3,a2
     802:	450d                	li	a0,3
     804:	7ff00613          	li	a2,2047
     808:	bd6d                	j	6c2 <__divdf3+0x7e>
     80a:	4381                	li	t2,0
     80c:	4601                	li	a2,0
     80e:	4505                	li	a0,1
     810:	bd4d                	j	6c2 <__divdf3+0x7e>
     812:	4381                	li	t2,0
     814:	7ff00613          	li	a2,2047
     818:	4509                	li	a0,2
     81a:	b565                	j	6c2 <__divdf3+0x7e>
     81c:	4702                	lw	a4,0(sp)
     81e:	83be                	mv	t2,a5
     820:	86a2                	mv	a3,s0
     822:	c63a                	sw	a4,12(sp)
     824:	4789                	li	a5,2
     826:	42f48763          	beq	s1,a5,c54 <__divdf3+0x610>
     82a:	478d                	li	a5,3
     82c:	40f48d63          	beq	s1,a5,c46 <__divdf3+0x602>
     830:	4785                	li	a5,1
     832:	2ef49b63          	bne	s1,a5,b28 <__divdf3+0x4e4>
     836:	4381                	li	t2,0
     838:	4681                	li	a3,0
     83a:	aef9                	j	c18 <__divdf3+0x5d4>
     83c:	00f3e663          	bltu	t2,a5,848 <__divdf3+0x204>
     840:	36779163          	bne	a5,t2,ba2 <__divdf3+0x55e>
     844:	34d46f63          	bltu	s0,a3,ba2 <__divdf3+0x55e>
     848:	01f79593          	sll	a1,a5,0x1f
     84c:	00145613          	srl	a2,s0,0x1
     850:	01f41713          	sll	a4,s0,0x1f
     854:	8385                	srl	a5,a5,0x1
     856:	00c5e433          	or	s0,a1,a2
     85a:	00839613          	sll	a2,t2,0x8
     85e:	d03a                	sw	a4,32(sp)
     860:	00869713          	sll	a4,a3,0x8
     864:	c03a                	sw	a4,0(sp)
     866:	01065713          	srl	a4,a2,0x10
     86a:	0186d593          	srl	a1,a3,0x18
     86e:	c23a                	sw	a4,4(sp)
     870:	00c5e333          	or	t1,a1,a2
     874:	4592                	lw	a1,4(sp)
     876:	01031713          	sll	a4,t1,0x10
     87a:	8341                	srl	a4,a4,0x10
     87c:	853e                	mv	a0,a5
     87e:	ce1a                	sw	t1,28(sp)
     880:	cc3a                	sw	a4,24(sp)
     882:	ca3e                	sw	a5,20(sp)
     884:	1b8010ef          	jal	1a3c <__hidden___udivsi3>
     888:	85aa                	mv	a1,a0
     88a:	c82a                	sw	a0,16(sp)
     88c:	4562                	lw	a0,24(sp)
     88e:	18e010ef          	jal	1a1c <__mulsi3>
     892:	47d2                	lw	a5,20(sp)
     894:	4592                	lw	a1,4(sp)
     896:	84aa                	mv	s1,a0
     898:	853e                	mv	a0,a5
     89a:	1ce010ef          	jal	1a68 <__umodsi3>
     89e:	46c2                	lw	a3,16(sp)
     8a0:	0542                	sll	a0,a0,0x10
     8a2:	01045613          	srl	a2,s0,0x10
     8a6:	8e49                	or	a2,a2,a0
     8a8:	4372                	lw	t1,28(sp)
     8aa:	5702                	lw	a4,32(sp)
     8ac:	87b6                	mv	a5,a3
     8ae:	00967c63          	bgeu	a2,s1,8c6 <__divdf3+0x282>
     8b2:	961a                	add	a2,a2,t1
     8b4:	fff68793          	add	a5,a3,-1
     8b8:	00666763          	bltu	a2,t1,8c6 <__divdf3+0x282>
     8bc:	00967563          	bgeu	a2,s1,8c6 <__divdf3+0x282>
     8c0:	ffe68793          	add	a5,a3,-2
     8c4:	961a                	add	a2,a2,t1
     8c6:	4592                	lw	a1,4(sp)
     8c8:	d03e                	sw	a5,32(sp)
     8ca:	409607b3          	sub	a5,a2,s1
     8ce:	853e                	mv	a0,a5
     8d0:	d21a                	sw	t1,36(sp)
     8d2:	ce3a                	sw	a4,28(sp)
     8d4:	c83e                	sw	a5,16(sp)
     8d6:	166010ef          	jal	1a3c <__hidden___udivsi3>
     8da:	85aa                	mv	a1,a0
     8dc:	ca2a                	sw	a0,20(sp)
     8de:	4562                	lw	a0,24(sp)
     8e0:	0442                	sll	s0,s0,0x10
     8e2:	8041                	srl	s0,s0,0x10
     8e4:	138010ef          	jal	1a1c <__mulsi3>
     8e8:	4592                	lw	a1,4(sp)
     8ea:	84aa                	mv	s1,a0
     8ec:	4542                	lw	a0,16(sp)
     8ee:	17a010ef          	jal	1a68 <__umodsi3>
     8f2:	4652                	lw	a2,20(sp)
     8f4:	0542                	sll	a0,a0,0x10
     8f6:	8c49                	or	s0,s0,a0
     8f8:	4772                	lw	a4,28(sp)
     8fa:	5782                	lw	a5,32(sp)
     8fc:	5312                	lw	t1,36(sp)
     8fe:	85b2                	mv	a1,a2
     900:	00947c63          	bgeu	s0,s1,918 <__divdf3+0x2d4>
     904:	941a                	add	s0,s0,t1
     906:	fff60593          	add	a1,a2,-1
     90a:	00646763          	bltu	s0,t1,918 <__divdf3+0x2d4>
     90e:	00947563          	bgeu	s0,s1,918 <__divdf3+0x2d4>
     912:	ffe60593          	add	a1,a2,-2
     916:	941a                	add	s0,s0,t1
     918:	07c2                	sll	a5,a5,0x10
     91a:	00b7e2b3          	or	t0,a5,a1
     91e:	4782                	lw	a5,0(sp)
     920:	4602                	lw	a2,0(sp)
     922:	63c1                	lui	t2,0x10
     924:	fff38693          	add	a3,t2,-1 # ffff <_data_lma+0xc923>
     928:	83c1                	srl	a5,a5,0x10
     92a:	c83e                	sw	a5,16(sp)
     92c:	00d2f7b3          	and	a5,t0,a3
     930:	8ef1                	and	a3,a3,a2
     932:	8c05                	sub	s0,s0,s1
     934:	853e                	mv	a0,a5
     936:	ca36                	sw	a3,20(sp)
     938:	85b6                	mv	a1,a3
     93a:	0e2010ef          	jal	1a1c <__mulsi3>
     93e:	84aa                	mv	s1,a0
     940:	45c2                	lw	a1,16(sp)
     942:	853e                	mv	a0,a5
     944:	0d8010ef          	jal	1a1c <__mulsi3>
     948:	87aa                	mv	a5,a0
     94a:	45d2                	lw	a1,20(sp)
     94c:	0102d513          	srl	a0,t0,0x10
     950:	0cc010ef          	jal	1a1c <__mulsi3>
     954:	ce2a                	sw	a0,28(sp)
     956:	45c2                	lw	a1,16(sp)
     958:	0102d513          	srl	a0,t0,0x10
     95c:	0c0010ef          	jal	1a1c <__mulsi3>
     960:	4672                	lw	a2,28(sp)
     962:	0104d693          	srl	a3,s1,0x10
     966:	97b2                	add	a5,a5,a2
     968:	97b6                	add	a5,a5,a3
     96a:	00c7f363          	bgeu	a5,a2,970 <__divdf3+0x32c>
     96e:	951e                	add	a0,a0,t2
     970:	0107d693          	srl	a3,a5,0x10
     974:	9536                	add	a0,a0,a3
     976:	66c1                	lui	a3,0x10
     978:	16fd                	add	a3,a3,-1 # ffff <_data_lma+0xc923>
     97a:	8ff5                	and	a5,a5,a3
     97c:	07c2                	sll	a5,a5,0x10
     97e:	8cf5                	and	s1,s1,a3
     980:	94be                	add	s1,s1,a5
     982:	00a46763          	bltu	s0,a0,990 <__divdf3+0x34c>
     986:	8396                	mv	t2,t0
     988:	04a41363          	bne	s0,a0,9ce <__divdf3+0x38a>
     98c:	04977163          	bgeu	a4,s1,9ce <__divdf3+0x38a>
     990:	4782                	lw	a5,0(sp)
     992:	fff28393          	add	t2,t0,-1
     996:	97ba                	add	a5,a5,a4
     998:	00e7b6b3          	sltu	a3,a5,a4
     99c:	00668633          	add	a2,a3,t1
     9a0:	9432                	add	s0,s0,a2
     9a2:	873e                	mv	a4,a5
     9a4:	00836563          	bltu	t1,s0,9ae <__divdf3+0x36a>
     9a8:	02831363          	bne	t1,s0,9ce <__divdf3+0x38a>
     9ac:	e28d                	bnez	a3,9ce <__divdf3+0x38a>
     9ae:	00a46663          	bltu	s0,a0,9ba <__divdf3+0x376>
     9b2:	00851e63          	bne	a0,s0,9ce <__divdf3+0x38a>
     9b6:	0097fc63          	bgeu	a5,s1,9ce <__divdf3+0x38a>
     9ba:	4702                	lw	a4,0(sp)
     9bc:	ffe28393          	add	t2,t0,-2
     9c0:	97ba                	add	a5,a5,a4
     9c2:	873e                	mv	a4,a5
     9c4:	4782                	lw	a5,0(sp)
     9c6:	00f737b3          	sltu	a5,a4,a5
     9ca:	979a                	add	a5,a5,t1
     9cc:	943e                	add	s0,s0,a5
     9ce:	409704b3          	sub	s1,a4,s1
     9d2:	8c09                	sub	s0,s0,a0
     9d4:	00973733          	sltu	a4,a4,s1
     9d8:	8c19                	sub	s0,s0,a4
     9da:	d41a                	sw	t1,40(sp)
     9dc:	56fd                	li	a3,-1
     9de:	14830563          	beq	t1,s0,b28 <__divdf3+0x4e4>
     9e2:	4592                	lw	a1,4(sp)
     9e4:	8522                	mv	a0,s0
     9e6:	d21e                	sw	t2,36(sp)
     9e8:	054010ef          	jal	1a3c <__hidden___udivsi3>
     9ec:	85aa                	mv	a1,a0
     9ee:	d02a                	sw	a0,32(sp)
     9f0:	4562                	lw	a0,24(sp)
     9f2:	02a010ef          	jal	1a1c <__mulsi3>
     9f6:	4592                	lw	a1,4(sp)
     9f8:	ce2a                	sw	a0,28(sp)
     9fa:	8522                	mv	a0,s0
     9fc:	06c010ef          	jal	1a68 <__umodsi3>
     a00:	5682                	lw	a3,32(sp)
     a02:	47f2                	lw	a5,28(sp)
     a04:	0542                	sll	a0,a0,0x10
     a06:	0104d413          	srl	s0,s1,0x10
     a0a:	8c49                	or	s0,s0,a0
     a0c:	5392                	lw	t2,36(sp)
     a0e:	5322                	lw	t1,40(sp)
     a10:	8736                	mv	a4,a3
     a12:	00f47c63          	bgeu	s0,a5,a2a <__divdf3+0x3e6>
     a16:	941a                	add	s0,s0,t1
     a18:	fff68713          	add	a4,a3,-1
     a1c:	00646763          	bltu	s0,t1,a2a <__divdf3+0x3e6>
     a20:	00f47563          	bgeu	s0,a5,a2a <__divdf3+0x3e6>
     a24:	ffe68713          	add	a4,a3,-2
     a28:	941a                	add	s0,s0,t1
     a2a:	4592                	lw	a1,4(sp)
     a2c:	40f407b3          	sub	a5,s0,a5
     a30:	853e                	mv	a0,a5
     a32:	d61a                	sw	t1,44(sp)
     a34:	d43a                	sw	a4,40(sp)
     a36:	d21e                	sw	t2,36(sp)
     a38:	ce3e                	sw	a5,28(sp)
     a3a:	002010ef          	jal	1a3c <__hidden___udivsi3>
     a3e:	85aa                	mv	a1,a0
     a40:	d02a                	sw	a0,32(sp)
     a42:	4562                	lw	a0,24(sp)
     a44:	7d9000ef          	jal	1a1c <__mulsi3>
     a48:	4592                	lw	a1,4(sp)
     a4a:	842a                	mv	s0,a0
     a4c:	4572                	lw	a0,28(sp)
     a4e:	01a010ef          	jal	1a68 <__umodsi3>
     a52:	5602                	lw	a2,32(sp)
     a54:	01049793          	sll	a5,s1,0x10
     a58:	0542                	sll	a0,a0,0x10
     a5a:	83c1                	srl	a5,a5,0x10
     a5c:	8fc9                	or	a5,a5,a0
     a5e:	5392                	lw	t2,36(sp)
     a60:	5722                	lw	a4,40(sp)
     a62:	5332                	lw	t1,44(sp)
     a64:	85b2                	mv	a1,a2
     a66:	0087fc63          	bgeu	a5,s0,a7e <__divdf3+0x43a>
     a6a:	979a                	add	a5,a5,t1
     a6c:	fff60593          	add	a1,a2,-1
     a70:	0067e763          	bltu	a5,t1,a7e <__divdf3+0x43a>
     a74:	0087f563          	bgeu	a5,s0,a7e <__divdf3+0x43a>
     a78:	ffe60593          	add	a1,a2,-2
     a7c:	979a                	add	a5,a5,t1
     a7e:	0742                	sll	a4,a4,0x10
     a80:	8f4d                	or	a4,a4,a1
     a82:	01071293          	sll	t0,a4,0x10
     a86:	0102d293          	srl	t0,t0,0x10
     a8a:	45d2                	lw	a1,20(sp)
     a8c:	8f81                	sub	a5,a5,s0
     a8e:	8516                	mv	a0,t0
     a90:	78d000ef          	jal	1a1c <__mulsi3>
     a94:	84aa                	mv	s1,a0
     a96:	45c2                	lw	a1,16(sp)
     a98:	8516                	mv	a0,t0
     a9a:	783000ef          	jal	1a1c <__mulsi3>
     a9e:	82aa                	mv	t0,a0
     aa0:	45d2                	lw	a1,20(sp)
     aa2:	01075513          	srl	a0,a4,0x10
     aa6:	777000ef          	jal	1a1c <__mulsi3>
     aaa:	842a                	mv	s0,a0
     aac:	45c2                	lw	a1,16(sp)
     aae:	01075513          	srl	a0,a4,0x10
     ab2:	76b000ef          	jal	1a1c <__mulsi3>
     ab6:	0104d613          	srl	a2,s1,0x10
     aba:	008286b3          	add	a3,t0,s0
     abe:	00d602b3          	add	t0,a2,a3
     ac2:	0082f463          	bgeu	t0,s0,aca <__divdf3+0x486>
     ac6:	66c1                	lui	a3,0x10
     ac8:	9536                	add	a0,a0,a3
     aca:	0102d693          	srl	a3,t0,0x10
     ace:	9536                	add	a0,a0,a3
     ad0:	66c1                	lui	a3,0x10
     ad2:	16fd                	add	a3,a3,-1 # ffff <_data_lma+0xc923>
     ad4:	00d2f2b3          	and	t0,t0,a3
     ad8:	02c2                	sll	t0,t0,0x10
     ada:	8ee5                	and	a3,a3,s1
     adc:	92b6                	add	t0,t0,a3
     ade:	00a7e763          	bltu	a5,a0,aec <__divdf3+0x4a8>
     ae2:	86ba                	mv	a3,a4
     ae4:	04a79063          	bne	a5,a0,b24 <__divdf3+0x4e0>
     ae8:	04028063          	beqz	t0,b28 <__divdf3+0x4e4>
     aec:	979a                	add	a5,a5,t1
     aee:	fff70693          	add	a3,a4,-1
     af2:	863e                	mv	a2,a5
     af4:	0267e363          	bltu	a5,t1,b1a <__divdf3+0x4d6>
     af8:	00a7e763          	bltu	a5,a0,b06 <__divdf3+0x4c2>
     afc:	02a79463          	bne	a5,a0,b24 <__divdf3+0x4e0>
     b00:	4602                	lw	a2,0(sp)
     b02:	00567e63          	bgeu	a2,t0,b1e <__divdf3+0x4da>
     b06:	ffe70693          	add	a3,a4,-2
     b0a:	4702                	lw	a4,0(sp)
     b0c:	4602                	lw	a2,0(sp)
     b0e:	0706                	sll	a4,a4,0x1
     b10:	00c73633          	sltu	a2,a4,a2
     b14:	961a                	add	a2,a2,t1
     b16:	963e                	add	a2,a2,a5
     b18:	c03a                	sw	a4,0(sp)
     b1a:	00a61563          	bne	a2,a0,b24 <__divdf3+0x4e0>
     b1e:	4782                	lw	a5,0(sp)
     b20:	00f28463          	beq	t0,a5,b28 <__divdf3+0x4e4>
     b24:	0016e693          	or	a3,a3,1
     b28:	47a2                	lw	a5,8(sp)
     b2a:	3ff78793          	add	a5,a5,1023 # 803ff <_data_lma+0x7cd23>
     b2e:	08f05363          	blez	a5,bb4 <__divdf3+0x570>
     b32:	0076f713          	and	a4,a3,7
     b36:	cf01                	beqz	a4,b4e <__divdf3+0x50a>
     b38:	00f6f713          	and	a4,a3,15
     b3c:	4611                	li	a2,4
     b3e:	00c70863          	beq	a4,a2,b4e <__divdf3+0x50a>
     b42:	00468713          	add	a4,a3,4
     b46:	00d73633          	sltu	a2,a4,a3
     b4a:	93b2                	add	t2,t2,a2
     b4c:	86ba                	mv	a3,a4
     b4e:	01000737          	lui	a4,0x1000
     b52:	00e3f733          	and	a4,t2,a4
     b56:	cb09                	beqz	a4,b68 <__divdf3+0x524>
     b58:	ff0007b7          	lui	a5,0xff000
     b5c:	17fd                	add	a5,a5,-1 # feffffff <__global_pointer$+0xdefff7ff>
     b5e:	00f3f3b3          	and	t2,t2,a5
     b62:	47a2                	lw	a5,8(sp)
     b64:	40078793          	add	a5,a5,1024
     b68:	7fe00713          	li	a4,2046
     b6c:	0ef74463          	blt	a4,a5,c54 <__divdf3+0x610>
     b70:	0036d713          	srl	a4,a3,0x3
     b74:	01d39693          	sll	a3,t2,0x1d
     b78:	8ed9                	or	a3,a3,a4
     b7a:	0033d393          	srl	t2,t2,0x3
     b7e:	4732                	lw	a4,12(sp)
     b80:	03b2                	sll	t2,t2,0xc
     b82:	50e2                	lw	ra,56(sp)
     b84:	5452                	lw	s0,52(sp)
     b86:	07d2                	sll	a5,a5,0x14
     b88:	00c3d393          	srl	t2,t2,0xc
     b8c:	0077e7b3          	or	a5,a5,t2
     b90:	077e                	sll	a4,a4,0x1f
     b92:	00e7e633          	or	a2,a5,a4
     b96:	54c2                	lw	s1,48(sp)
     b98:	8536                	mv	a0,a3
     b9a:	85b2                	mv	a1,a2
     b9c:	03c10113          	add	sp,sp,60
     ba0:	8082                	ret
     ba2:	4722                	lw	a4,8(sp)
     ba4:	177d                	add	a4,a4,-1 # ffffff <_data_lma+0xffc923>
     ba6:	c43a                	sw	a4,8(sp)
     ba8:	4701                	li	a4,0
     baa:	b945                	j	85a <__divdf3+0x216>
     bac:	4792                	lw	a5,4(sp)
     bae:	84aa                	mv	s1,a0
     bb0:	c63e                	sw	a5,12(sp)
     bb2:	b98d                	j	824 <__divdf3+0x1e0>
     bb4:	4605                	li	a2,1
     bb6:	cb89                	beqz	a5,bc8 <__divdf3+0x584>
     bb8:	8e1d                	sub	a2,a2,a5
     bba:	03800713          	li	a4,56
     bbe:	c6c74ce3          	blt	a4,a2,836 <__divdf3+0x1f2>
     bc2:	477d                	li	a4,31
     bc4:	04c74c63          	blt	a4,a2,c1c <__divdf3+0x5d8>
     bc8:	47a2                	lw	a5,8(sp)
     bca:	41e78713          	add	a4,a5,1054
     bce:	00c6d7b3          	srl	a5,a3,a2
     bd2:	00e696b3          	sll	a3,a3,a4
     bd6:	00d036b3          	snez	a3,a3
     bda:	00e39733          	sll	a4,t2,a4
     bde:	8ed9                	or	a3,a3,a4
     be0:	8fd5                	or	a5,a5,a3
     be2:	00c3d3b3          	srl	t2,t2,a2
     be6:	0077f713          	and	a4,a5,7
     bea:	cf01                	beqz	a4,c02 <__divdf3+0x5be>
     bec:	00f7f713          	and	a4,a5,15
     bf0:	4691                	li	a3,4
     bf2:	00d70863          	beq	a4,a3,c02 <__divdf3+0x5be>
     bf6:	00478713          	add	a4,a5,4
     bfa:	00f736b3          	sltu	a3,a4,a5
     bfe:	93b6                	add	t2,t2,a3
     c00:	87ba                	mv	a5,a4
     c02:	00800737          	lui	a4,0x800
     c06:	00e3f733          	and	a4,t2,a4
     c0a:	eb31                	bnez	a4,c5e <__divdf3+0x61a>
     c0c:	01d39693          	sll	a3,t2,0x1d
     c10:	838d                	srl	a5,a5,0x3
     c12:	8edd                	or	a3,a3,a5
     c14:	0033d393          	srl	t2,t2,0x3
     c18:	4781                	li	a5,0
     c1a:	b795                	j	b7e <__divdf3+0x53a>
     c1c:	5705                	li	a4,-31
     c1e:	40f707b3          	sub	a5,a4,a5
     c22:	02000593          	li	a1,32
     c26:	00f3d7b3          	srl	a5,t2,a5
     c2a:	4701                	li	a4,0
     c2c:	00b60763          	beq	a2,a1,c3a <__divdf3+0x5f6>
     c30:	4722                	lw	a4,8(sp)
     c32:	43e70713          	add	a4,a4,1086 # 80043e <_data_lma+0x7fcd62>
     c36:	00e39733          	sll	a4,t2,a4
     c3a:	8f55                	or	a4,a4,a3
     c3c:	00e03733          	snez	a4,a4
     c40:	8fd9                	or	a5,a5,a4
     c42:	4381                	li	t2,0
     c44:	b74d                	j	be6 <__divdf3+0x5a2>
     c46:	000803b7          	lui	t2,0x80
     c4a:	4681                	li	a3,0
     c4c:	7ff00793          	li	a5,2047
     c50:	c602                	sw	zero,12(sp)
     c52:	b735                	j	b7e <__divdf3+0x53a>
     c54:	4381                	li	t2,0
     c56:	4681                	li	a3,0
     c58:	7ff00793          	li	a5,2047
     c5c:	b70d                	j	b7e <__divdf3+0x53a>
     c5e:	4381                	li	t2,0
     c60:	4681                	li	a3,0
     c62:	4785                	li	a5,1
     c64:	bf29                	j	b7e <__divdf3+0x53a>

00000c66 <__floatsidf>:
     c66:	1151                	add	sp,sp,-12
     c68:	c406                	sw	ra,8(sp)
     c6a:	c222                	sw	s0,4(sp)
     c6c:	c026                	sw	s1,0(sp)
     c6e:	cd29                	beqz	a0,cc8 <__floatsidf+0x62>
     c70:	41f55793          	sra	a5,a0,0x1f
     c74:	00a7c433          	xor	s0,a5,a0
     c78:	8c1d                	sub	s0,s0,a5
     c7a:	01f55493          	srl	s1,a0,0x1f
     c7e:	8522                	mv	a0,s0
     c80:	633000ef          	jal	1ab2 <__clzsi2>
     c84:	41e00693          	li	a3,1054
     c88:	47a9                	li	a5,10
     c8a:	8e89                	sub	a3,a3,a0
     c8c:	02a7c863          	blt	a5,a0,cbc <__floatsidf+0x56>
     c90:	47ad                	li	a5,11
     c92:	8f89                	sub	a5,a5,a0
     c94:	0555                	add	a0,a0,21
     c96:	00a41733          	sll	a4,s0,a0
     c9a:	00f457b3          	srl	a5,s0,a5
     c9e:	8526                	mv	a0,s1
     ca0:	07b2                	sll	a5,a5,0xc
     ca2:	40a2                	lw	ra,8(sp)
     ca4:	4412                	lw	s0,4(sp)
     ca6:	83b1                	srl	a5,a5,0xc
     ca8:	06d2                	sll	a3,a3,0x14
     caa:	057e                	sll	a0,a0,0x1f
     cac:	8edd                	or	a3,a3,a5
     cae:	00a6e7b3          	or	a5,a3,a0
     cb2:	4482                	lw	s1,0(sp)
     cb4:	853a                	mv	a0,a4
     cb6:	85be                	mv	a1,a5
     cb8:	0131                	add	sp,sp,12
     cba:	8082                	ret
     cbc:	1555                	add	a0,a0,-11
     cbe:	00a417b3          	sll	a5,s0,a0
     cc2:	8526                	mv	a0,s1
     cc4:	4701                	li	a4,0
     cc6:	bfe9                	j	ca0 <__floatsidf+0x3a>
     cc8:	4681                	li	a3,0
     cca:	4781                	li	a5,0
     ccc:	bfe5                	j	cc4 <__floatsidf+0x5e>

00000cce <__addsf3>:
     cce:	00800737          	lui	a4,0x800
     cd2:	1141                	add	sp,sp,-16
     cd4:	177d                	add	a4,a4,-1 # 7fffff <_data_lma+0x7fc923>
     cd6:	00a777b3          	and	a5,a4,a0
     cda:	c422                	sw	s0,8(sp)
     cdc:	01f55693          	srl	a3,a0,0x1f
     ce0:	01755413          	srl	s0,a0,0x17
     ce4:	0175d513          	srl	a0,a1,0x17
     ce8:	8f6d                	and	a4,a4,a1
     cea:	0ff47413          	zext.b	s0,s0
     cee:	0ff57513          	zext.b	a0,a0
     cf2:	c606                	sw	ra,12(sp)
     cf4:	c226                	sw	s1,4(sp)
     cf6:	81fd                	srl	a1,a1,0x1f
     cf8:	078e                	sll	a5,a5,0x3
     cfa:	070e                	sll	a4,a4,0x3
     cfc:	40a40633          	sub	a2,s0,a0
     d00:	16b69c63          	bne	a3,a1,e78 <__addsf3+0x1aa>
     d04:	0cc05a63          	blez	a2,dd8 <__addsf3+0x10a>
     d08:	e50d                	bnez	a0,d32 <__addsf3+0x64>
     d0a:	16070563          	beqz	a4,e74 <__addsf3+0x1a6>
     d0e:	fff60593          	add	a1,a2,-1
     d12:	e989                	bnez	a1,d24 <__addsf3+0x56>
     d14:	97ba                	add	a5,a5,a4
     d16:	04000737          	lui	a4,0x4000
     d1a:	8f7d                	and	a4,a4,a5
     d1c:	4409                	li	s0,2
     d1e:	e745                	bnez	a4,dc6 <__addsf3+0xf8>
     d20:	4405                	li	s0,1
     d22:	a025                	j	d4a <__addsf3+0x7c>
     d24:	0ff00513          	li	a0,255
     d28:	00a61d63          	bne	a2,a0,d42 <__addsf3+0x74>
     d2c:	0ff00413          	li	s0,255
     d30:	a829                	j	d4a <__addsf3+0x7c>
     d32:	0ff00593          	li	a1,255
     d36:	00b40a63          	beq	s0,a1,d4a <__addsf3+0x7c>
     d3a:	040005b7          	lui	a1,0x4000
     d3e:	8f4d                	or	a4,a4,a1
     d40:	85b2                	mv	a1,a2
     d42:	466d                	li	a2,27
     d44:	04b65c63          	bge	a2,a1,d9c <__addsf3+0xce>
     d48:	0785                	add	a5,a5,1
     d4a:	0077f713          	and	a4,a5,7
     d4e:	c719                	beqz	a4,d5c <__addsf3+0x8e>
     d50:	00f7f713          	and	a4,a5,15
     d54:	4611                	li	a2,4
     d56:	00c70363          	beq	a4,a2,d5c <__addsf3+0x8e>
     d5a:	0791                	add	a5,a5,4
     d5c:	04000737          	lui	a4,0x4000
     d60:	8f7d                	and	a4,a4,a5
     d62:	26070e63          	beqz	a4,fde <__addsf3+0x310>
     d66:	0405                	add	s0,s0,1
     d68:	0ff00713          	li	a4,255
     d6c:	4481                	li	s1,0
     d6e:	00e40863          	beq	s0,a4,d7e <__addsf3+0xb0>
     d72:	0037d493          	srl	s1,a5,0x3
     d76:	1f8007b7          	lui	a5,0x1f800
     d7a:	17fd                	add	a5,a5,-1 # 1f7fffff <_data_lma+0x1f7fc923>
     d7c:	8cfd                	and	s1,s1,a5
     d7e:	045e                	sll	s0,s0,0x17
     d80:	7f8007b7          	lui	a5,0x7f800
     d84:	04a6                	sll	s1,s1,0x9
     d86:	80a5                	srl	s1,s1,0x9
     d88:	8c7d                	and	s0,s0,a5
     d8a:	8c45                	or	s0,s0,s1
     d8c:	01f69513          	sll	a0,a3,0x1f
     d90:	40b2                	lw	ra,12(sp)
     d92:	8d41                	or	a0,a0,s0
     d94:	4422                	lw	s0,8(sp)
     d96:	4492                	lw	s1,4(sp)
     d98:	0141                	add	sp,sp,16
     d9a:	8082                	ret
     d9c:	02000613          	li	a2,32
     da0:	8e0d                	sub	a2,a2,a1
     da2:	00b75533          	srl	a0,a4,a1
     da6:	00c71733          	sll	a4,a4,a2
     daa:	00e03733          	snez	a4,a4
     dae:	8f49                	or	a4,a4,a0
     db0:	97ba                	add	a5,a5,a4
     db2:	04000737          	lui	a4,0x4000
     db6:	8f7d                	and	a4,a4,a5
     db8:	db49                	beqz	a4,d4a <__addsf3+0x7c>
     dba:	0405                	add	s0,s0,1
     dbc:	0ff00713          	li	a4,255
     dc0:	4481                	li	s1,0
     dc2:	fae40ee3          	beq	s0,a4,d7e <__addsf3+0xb0>
     dc6:	7e000737          	lui	a4,0x7e000
     dca:	0017f613          	and	a2,a5,1
     dce:	177d                	add	a4,a4,-1 # 7dffffff <__global_pointer$+0x5dfff7ff>
     dd0:	8385                	srl	a5,a5,0x1
     dd2:	8ff9                	and	a5,a5,a4
     dd4:	8fd1                	or	a5,a5,a2
     dd6:	bf95                	j	d4a <__addsf3+0x7c>
     dd8:	ce21                	beqz	a2,e30 <__addsf3+0x162>
     dda:	40850633          	sub	a2,a0,s0
     dde:	ec01                	bnez	s0,df6 <__addsf3+0x128>
     de0:	1e078763          	beqz	a5,fce <__addsf3+0x300>
     de4:	fff60593          	add	a1,a2,-1
     de8:	d595                	beqz	a1,d14 <__addsf3+0x46>
     dea:	0ff00313          	li	t1,255
     dee:	00661c63          	bne	a2,t1,e06 <__addsf3+0x138>
     df2:	87ba                	mv	a5,a4
     df4:	bf25                	j	d2c <__addsf3+0x5e>
     df6:	0ff00593          	li	a1,255
     dfa:	feb50ce3          	beq	a0,a1,df2 <__addsf3+0x124>
     dfe:	040005b7          	lui	a1,0x4000
     e02:	8fcd                	or	a5,a5,a1
     e04:	85b2                	mv	a1,a2
     e06:	466d                	li	a2,27
     e08:	00b65663          	bge	a2,a1,e14 <__addsf3+0x146>
     e0c:	00170793          	add	a5,a4,1
     e10:	842a                	mv	s0,a0
     e12:	bf25                	j	d4a <__addsf3+0x7c>
     e14:	02000613          	li	a2,32
     e18:	8e0d                	sub	a2,a2,a1
     e1a:	00b7d333          	srl	t1,a5,a1
     e1e:	00c797b3          	sll	a5,a5,a2
     e22:	00f037b3          	snez	a5,a5
     e26:	00f367b3          	or	a5,t1,a5
     e2a:	97ba                	add	a5,a5,a4
     e2c:	842a                	mv	s0,a0
     e2e:	b751                	j	db2 <__addsf3+0xe4>
     e30:	00140613          	add	a2,s0,1
     e34:	0fe67593          	and	a1,a2,254
     e38:	e985                	bnez	a1,e68 <__addsf3+0x19a>
     e3a:	ec11                	bnez	s0,e56 <__addsf3+0x188>
     e3c:	18078b63          	beqz	a5,fd2 <__addsf3+0x304>
     e40:	d709                	beqz	a4,d4a <__addsf3+0x7c>
     e42:	97ba                	add	a5,a5,a4
     e44:	04000737          	lui	a4,0x4000
     e48:	8f7d                	and	a4,a4,a5
     e4a:	d301                	beqz	a4,d4a <__addsf3+0x7c>
     e4c:	fc000737          	lui	a4,0xfc000
     e50:	177d                	add	a4,a4,-1 # fbffffff <__global_pointer$+0xdbfff7ff>
     e52:	8ff9                	and	a5,a5,a4
     e54:	b5f1                	j	d20 <__addsf3+0x52>
     e56:	dfd1                	beqz	a5,df2 <__addsf3+0x124>
     e58:	ec070ae3          	beqz	a4,d2c <__addsf3+0x5e>
     e5c:	4681                	li	a3,0
     e5e:	0ff00413          	li	s0,255
     e62:	004004b7          	lui	s1,0x400
     e66:	bf21                	j	d7e <__addsf3+0xb0>
     e68:	0ff00593          	li	a1,255
     e6c:	18b60463          	beq	a2,a1,ff4 <__addsf3+0x326>
     e70:	97ba                	add	a5,a5,a4
     e72:	8385                	srl	a5,a5,0x1
     e74:	8432                	mv	s0,a2
     e76:	bdd1                	j	d4a <__addsf3+0x7c>
     e78:	06c05063          	blez	a2,ed8 <__addsf3+0x20a>
     e7c:	e529                	bnez	a0,ec6 <__addsf3+0x1f8>
     e7e:	db7d                	beqz	a4,e74 <__addsf3+0x1a6>
     e80:	fff60593          	add	a1,a2,-1
     e84:	e581                	bnez	a1,e8c <__addsf3+0x1be>
     e86:	8f99                	sub	a5,a5,a4
     e88:	4405                	li	s0,1
     e8a:	a02d                	j	eb4 <__addsf3+0x1e6>
     e8c:	0ff00513          	li	a0,255
     e90:	e8a60ee3          	beq	a2,a0,d2c <__addsf3+0x5e>
     e94:	456d                	li	a0,27
     e96:	4605                	li	a2,1
     e98:	00b54d63          	blt	a0,a1,eb2 <__addsf3+0x1e4>
     e9c:	02000613          	li	a2,32
     ea0:	8e0d                	sub	a2,a2,a1
     ea2:	00b75533          	srl	a0,a4,a1
     ea6:	00c71733          	sll	a4,a4,a2
     eaa:	00e03733          	snez	a4,a4
     eae:	00e56633          	or	a2,a0,a4
     eb2:	8f91                	sub	a5,a5,a2
     eb4:	040004b7          	lui	s1,0x4000
     eb8:	0097f733          	and	a4,a5,s1
     ebc:	e80707e3          	beqz	a4,d4a <__addsf3+0x7c>
     ec0:	14fd                	add	s1,s1,-1 # 3ffffff <_data_lma+0x3ffc923>
     ec2:	8cfd                	and	s1,s1,a5
     ec4:	a0e1                	j	f8c <__addsf3+0x2be>
     ec6:	0ff00593          	li	a1,255
     eca:	e8b400e3          	beq	s0,a1,d4a <__addsf3+0x7c>
     ece:	040005b7          	lui	a1,0x4000
     ed2:	8f4d                	or	a4,a4,a1
     ed4:	85b2                	mv	a1,a2
     ed6:	bf7d                	j	e94 <__addsf3+0x1c6>
     ed8:	c225                	beqz	a2,f38 <__addsf3+0x26a>
     eda:	408506b3          	sub	a3,a0,s0
     ede:	e00d                	bnez	s0,f00 <__addsf3+0x232>
     ee0:	cbfd                	beqz	a5,fd6 <__addsf3+0x308>
     ee2:	fff68613          	add	a2,a3,-1
     ee6:	e609                	bnez	a2,ef0 <__addsf3+0x222>
     ee8:	40f707b3          	sub	a5,a4,a5
     eec:	86ae                	mv	a3,a1
     eee:	bf69                	j	e88 <__addsf3+0x1ba>
     ef0:	0ff00313          	li	t1,255
     ef4:	00669e63          	bne	a3,t1,f10 <__addsf3+0x242>
     ef8:	87ba                	mv	a5,a4
     efa:	0ff00413          	li	s0,255
     efe:	a8f1                	j	fda <__addsf3+0x30c>
     f00:	0ff00613          	li	a2,255
     f04:	fec50ae3          	beq	a0,a2,ef8 <__addsf3+0x22a>
     f08:	04000637          	lui	a2,0x4000
     f0c:	8fd1                	or	a5,a5,a2
     f0e:	8636                	mv	a2,a3
     f10:	436d                	li	t1,27
     f12:	4685                	li	a3,1
     f14:	00c34d63          	blt	t1,a2,f2e <__addsf3+0x260>
     f18:	02000693          	li	a3,32
     f1c:	8e91                	sub	a3,a3,a2
     f1e:	00c7d333          	srl	t1,a5,a2
     f22:	00d797b3          	sll	a5,a5,a3
     f26:	00f037b3          	snez	a5,a5
     f2a:	00f366b3          	or	a3,t1,a5
     f2e:	40d707b3          	sub	a5,a4,a3
     f32:	842a                	mv	s0,a0
     f34:	86ae                	mv	a3,a1
     f36:	bfbd                	j	eb4 <__addsf3+0x1e6>
     f38:	00140613          	add	a2,s0,1
     f3c:	0fe67613          	and	a2,a2,254
     f40:	ee0d                	bnez	a2,f7a <__addsf3+0x2ac>
     f42:	e40d                	bnez	s0,f6c <__addsf3+0x29e>
     f44:	e789                	bnez	a5,f4e <__addsf3+0x280>
     f46:	87ba                	mv	a5,a4
     f48:	eb49                	bnez	a4,fda <__addsf3+0x30c>
     f4a:	4481                	li	s1,0
     f4c:	a831                	j	f68 <__addsf3+0x29a>
     f4e:	de070ee3          	beqz	a4,d4a <__addsf3+0x7c>
     f52:	40e784b3          	sub	s1,a5,a4
     f56:	04000637          	lui	a2,0x4000
     f5a:	8e65                	and	a2,a2,s1
     f5c:	40f707b3          	sub	a5,a4,a5
     f60:	ee2d                	bnez	a2,fda <__addsf3+0x30c>
     f62:	87a6                	mv	a5,s1
     f64:	de0493e3          	bnez	s1,d4a <__addsf3+0x7c>
     f68:	4681                	li	a3,0
     f6a:	bd11                	j	d7e <__addsf3+0xb0>
     f6c:	ee0796e3          	bnez	a5,e58 <__addsf3+0x18a>
     f70:	ee0706e3          	beqz	a4,e5c <__addsf3+0x18e>
     f74:	87ba                	mv	a5,a4
     f76:	86ae                	mv	a3,a1
     f78:	bb55                	j	d2c <__addsf3+0x5e>
     f7a:	40e784b3          	sub	s1,a5,a4
     f7e:	04000637          	lui	a2,0x4000
     f82:	8e65                	and	a2,a2,s1
     f84:	ce05                	beqz	a2,fbc <__addsf3+0x2ee>
     f86:	40f704b3          	sub	s1,a4,a5
     f8a:	86ae                	mv	a3,a1
     f8c:	8526                	mv	a0,s1
     f8e:	c036                	sw	a3,0(sp)
     f90:	323000ef          	jal	1ab2 <__clzsi2>
     f94:	156d                	add	a0,a0,-5
     f96:	4682                	lw	a3,0(sp)
     f98:	00a494b3          	sll	s1,s1,a0
     f9c:	02854363          	blt	a0,s0,fc2 <__addsf3+0x2f4>
     fa0:	8d01                	sub	a0,a0,s0
     fa2:	0505                	add	a0,a0,1
     fa4:	02000713          	li	a4,32
     fa8:	8f09                	sub	a4,a4,a0
     faa:	00a4d7b3          	srl	a5,s1,a0
     fae:	00e494b3          	sll	s1,s1,a4
     fb2:	009034b3          	snez	s1,s1
     fb6:	8fc5                	or	a5,a5,s1
     fb8:	4401                	li	s0,0
     fba:	bb41                	j	d4a <__addsf3+0x7c>
     fbc:	f8e1                	bnez	s1,f8c <__addsf3+0x2be>
     fbe:	4401                	li	s0,0
     fc0:	b765                	j	f68 <__addsf3+0x29a>
     fc2:	fc0007b7          	lui	a5,0xfc000
     fc6:	17fd                	add	a5,a5,-1 # fbffffff <__global_pointer$+0xdbfff7ff>
     fc8:	8c09                	sub	s0,s0,a0
     fca:	8fe5                	and	a5,a5,s1
     fcc:	bbbd                	j	d4a <__addsf3+0x7c>
     fce:	87ba                	mv	a5,a4
     fd0:	b555                	j	e74 <__addsf3+0x1a6>
     fd2:	87ba                	mv	a5,a4
     fd4:	bb9d                	j	d4a <__addsf3+0x7c>
     fd6:	87ba                	mv	a5,a4
     fd8:	8436                	mv	s0,a3
     fda:	86ae                	mv	a3,a1
     fdc:	b3bd                	j	d4a <__addsf3+0x7c>
     fde:	0037d493          	srl	s1,a5,0x3
     fe2:	0ff00793          	li	a5,255
     fe6:	d8f41ce3          	bne	s0,a5,d7e <__addsf3+0xb0>
     fea:	d8048ae3          	beqz	s1,d7e <__addsf3+0xb0>
     fee:	004004b7          	lui	s1,0x400
     ff2:	bf9d                	j	f68 <__addsf3+0x29a>
     ff4:	0ff00413          	li	s0,255
     ff8:	4481                	li	s1,0
     ffa:	b351                	j	d7e <__addsf3+0xb0>

00000ffc <__gesf2>:
     ffc:	00800737          	lui	a4,0x800
    1000:	177d                	add	a4,a4,-1 # 7fffff <_data_lma+0x7fc923>
    1002:	01755693          	srl	a3,a0,0x17
    1006:	00a77633          	and	a2,a4,a0
    100a:	01f55793          	srl	a5,a0,0x1f
    100e:	0ff6f693          	zext.b	a3,a3
    1012:	0175d513          	srl	a0,a1,0x17
    1016:	0ff00313          	li	t1,255
    101a:	8f6d                	and	a4,a4,a1
    101c:	0ff57513          	zext.b	a0,a0
    1020:	81fd                	srl	a1,a1,0x1f
    1022:	00669f63          	bne	a3,t1,1040 <__gesf2+0x44>
    1026:	e225                	bnez	a2,1086 <__gesf2+0x8a>
    1028:	00d50663          	beq	a0,a3,1034 <__gesf2+0x38>
    102c:	4505                	li	a0,1
    102e:	c7b1                	beqz	a5,107a <__gesf2+0x7e>
    1030:	557d                	li	a0,-1
    1032:	8082                	ret
    1034:	5579                	li	a0,-2
    1036:	e331                	bnez	a4,107a <__gesf2+0x7e>
    1038:	feb79ae3          	bne	a5,a1,102c <__gesf2+0x30>
    103c:	4501                	li	a0,0
    103e:	8082                	ret
    1040:	00651c63          	bne	a0,t1,1058 <__gesf2+0x5c>
    1044:	5579                	li	a0,-2
    1046:	eb15                	bnez	a4,107a <__gesf2+0x7e>
    1048:	e291                	bnez	a3,104c <__gesf2+0x50>
    104a:	ca15                	beqz	a2,107e <__gesf2+0x82>
    104c:	feb790e3          	bne	a5,a1,102c <__gesf2+0x30>
    1050:	557d                	li	a0,-1
    1052:	c785                	beqz	a5,107a <__gesf2+0x7e>
    1054:	853e                	mv	a0,a5
    1056:	8082                	ret
    1058:	ce91                	beqz	a3,1074 <__gesf2+0x78>
    105a:	d969                	beqz	a0,102c <__gesf2+0x30>
    105c:	fcb798e3          	bne	a5,a1,102c <__gesf2+0x30>
    1060:	fcd546e3          	blt	a0,a3,102c <__gesf2+0x30>
    1064:	fea6c6e3          	blt	a3,a0,1050 <__gesf2+0x54>
    1068:	fcc762e3          	bltu	a4,a2,102c <__gesf2+0x30>
    106c:	4501                	li	a0,0
    106e:	00e67663          	bgeu	a2,a4,107a <__gesf2+0x7e>
    1072:	bff9                	j	1050 <__gesf2+0x54>
    1074:	f979                	bnez	a0,104a <__gesf2+0x4e>
    1076:	e319                	bnez	a4,107c <__gesf2+0x80>
    1078:	fa55                	bnez	a2,102c <__gesf2+0x30>
    107a:	8082                	ret
    107c:	e619                	bnez	a2,108a <__gesf2+0x8e>
    107e:	557d                	li	a0,-1
    1080:	dded                	beqz	a1,107a <__gesf2+0x7e>
    1082:	852e                	mv	a0,a1
    1084:	8082                	ret
    1086:	5579                	li	a0,-2
    1088:	8082                	ret
    108a:	fcb78fe3          	beq	a5,a1,1068 <__gesf2+0x6c>
    108e:	bf79                	j	102c <__gesf2+0x30>

00001090 <__lesf2>:
    1090:	00800737          	lui	a4,0x800
    1094:	177d                	add	a4,a4,-1 # 7fffff <_data_lma+0x7fc923>
    1096:	01755693          	srl	a3,a0,0x17
    109a:	00a77633          	and	a2,a4,a0
    109e:	01f55793          	srl	a5,a0,0x1f
    10a2:	0ff6f693          	zext.b	a3,a3
    10a6:	0175d513          	srl	a0,a1,0x17
    10aa:	0ff00313          	li	t1,255
    10ae:	8f6d                	and	a4,a4,a1
    10b0:	0ff57513          	zext.b	a0,a0
    10b4:	81fd                	srl	a1,a1,0x1f
    10b6:	00669f63          	bne	a3,t1,10d4 <__lesf2+0x44>
    10ba:	e225                	bnez	a2,111a <__lesf2+0x8a>
    10bc:	00d50663          	beq	a0,a3,10c8 <__lesf2+0x38>
    10c0:	4505                	li	a0,1
    10c2:	c7b1                	beqz	a5,110e <__lesf2+0x7e>
    10c4:	557d                	li	a0,-1
    10c6:	8082                	ret
    10c8:	4509                	li	a0,2
    10ca:	e331                	bnez	a4,110e <__lesf2+0x7e>
    10cc:	feb79ae3          	bne	a5,a1,10c0 <__lesf2+0x30>
    10d0:	4501                	li	a0,0
    10d2:	8082                	ret
    10d4:	00651c63          	bne	a0,t1,10ec <__lesf2+0x5c>
    10d8:	4509                	li	a0,2
    10da:	eb15                	bnez	a4,110e <__lesf2+0x7e>
    10dc:	e291                	bnez	a3,10e0 <__lesf2+0x50>
    10de:	ca15                	beqz	a2,1112 <__lesf2+0x82>
    10e0:	feb790e3          	bne	a5,a1,10c0 <__lesf2+0x30>
    10e4:	557d                	li	a0,-1
    10e6:	c785                	beqz	a5,110e <__lesf2+0x7e>
    10e8:	853e                	mv	a0,a5
    10ea:	8082                	ret
    10ec:	ce91                	beqz	a3,1108 <__lesf2+0x78>
    10ee:	d969                	beqz	a0,10c0 <__lesf2+0x30>
    10f0:	fcb798e3          	bne	a5,a1,10c0 <__lesf2+0x30>
    10f4:	fcd546e3          	blt	a0,a3,10c0 <__lesf2+0x30>
    10f8:	fea6c6e3          	blt	a3,a0,10e4 <__lesf2+0x54>
    10fc:	fcc762e3          	bltu	a4,a2,10c0 <__lesf2+0x30>
    1100:	4501                	li	a0,0
    1102:	00e67663          	bgeu	a2,a4,110e <__lesf2+0x7e>
    1106:	bff9                	j	10e4 <__lesf2+0x54>
    1108:	f979                	bnez	a0,10de <__lesf2+0x4e>
    110a:	e319                	bnez	a4,1110 <__lesf2+0x80>
    110c:	fa55                	bnez	a2,10c0 <__lesf2+0x30>
    110e:	8082                	ret
    1110:	e619                	bnez	a2,111e <__lesf2+0x8e>
    1112:	557d                	li	a0,-1
    1114:	dded                	beqz	a1,110e <__lesf2+0x7e>
    1116:	852e                	mv	a0,a1
    1118:	8082                	ret
    111a:	4509                	li	a0,2
    111c:	8082                	ret
    111e:	fcb78fe3          	beq	a5,a1,10fc <__lesf2+0x6c>
    1122:	bf79                	j	10c0 <__lesf2+0x30>

00001124 <__mulsf3>:
    1124:	1111                	add	sp,sp,-28
    1126:	01755293          	srl	t0,a0,0x17
    112a:	ca22                	sw	s0,20(sp)
    112c:	c826                	sw	s1,16(sp)
    112e:	00951713          	sll	a4,a0,0x9
    1132:	cc06                	sw	ra,24(sp)
    1134:	0ff2f293          	zext.b	t0,t0
    1138:	84ae                	mv	s1,a1
    113a:	8325                	srl	a4,a4,0x9
    113c:	01f55413          	srl	s0,a0,0x1f
    1140:	12028f63          	beqz	t0,127e <i2c_tx.c.3c38b9a3+0x111>
    1144:	0ff00793          	li	a5,255
    1148:	14f28a63          	beq	t0,a5,129c <i2c_tx.c.3c38b9a3+0x12f>
    114c:	070e                	sll	a4,a4,0x3
    114e:	040007b7          	lui	a5,0x4000
    1152:	8f5d                	or	a4,a4,a5
    1154:	f8128293          	add	t0,t0,-127
    1158:	4601                	li	a2,0
    115a:	0174d693          	srl	a3,s1,0x17
    115e:	00949793          	sll	a5,s1,0x9
    1162:	0ff6f693          	zext.b	a3,a3
    1166:	83a5                	srl	a5,a5,0x9
    1168:	80fd                	srl	s1,s1,0x1f
    116a:	14068363          	beqz	a3,12b0 <i2c_tx.c.3c38b9a3+0x143>
    116e:	0ff00593          	li	a1,255
    1172:	16b68463          	beq	a3,a1,12da <i2c_tx.c.3c38b9a3+0x16d>
    1176:	040005b7          	lui	a1,0x4000
    117a:	078e                	sll	a5,a5,0x3
    117c:	8fcd                	or	a5,a5,a1
    117e:	f8168693          	add	a3,a3,-127
    1182:	4581                	li	a1,0
    1184:	9696                	add	a3,a3,t0
    1186:	c036                	sw	a3,0(sp)
    1188:	00168293          	add	t0,a3,1
    118c:	00261693          	sll	a3,a2,0x2
    1190:	8ecd                	or	a3,a3,a1
    1192:	4529                	li	a0,10
    1194:	00944333          	xor	t1,s0,s1
    1198:	18d54563          	blt	a0,a3,1322 <i2c_tx.c.3c38b9a3+0x1b5>
    119c:	4509                	li	a0,2
    119e:	14d54863          	blt	a0,a3,12ee <i2c_tx.c.3c38b9a3+0x181>
    11a2:	16fd                	add	a3,a3,-1
    11a4:	4605                	li	a2,1
    11a6:	16d67263          	bgeu	a2,a3,130a <i2c_tx.c.3c38b9a3+0x19d>
    11aa:	64c1                	lui	s1,0x10
    11ac:	01075693          	srl	a3,a4,0x10
    11b0:	fff48393          	add	t2,s1,-1 # ffff <_data_lma+0xc923>
    11b4:	c236                	sw	a3,4(sp)
    11b6:	00777733          	and	a4,a4,t2
    11ba:	0107d693          	srl	a3,a5,0x10
    11be:	0077f7b3          	and	a5,a5,t2
    11c2:	c436                	sw	a3,8(sp)
    11c4:	853a                	mv	a0,a4
    11c6:	85be                	mv	a1,a5
    11c8:	055000ef          	jal	1a1c <__mulsi3>
    11cc:	842a                	mv	s0,a0
    11ce:	45a2                	lw	a1,8(sp)
    11d0:	853a                	mv	a0,a4
    11d2:	04b000ef          	jal	1a1c <__mulsi3>
    11d6:	872a                	mv	a4,a0
    11d8:	85be                	mv	a1,a5
    11da:	4512                	lw	a0,4(sp)
    11dc:	041000ef          	jal	1a1c <__mulsi3>
    11e0:	87aa                	mv	a5,a0
    11e2:	45a2                	lw	a1,8(sp)
    11e4:	4512                	lw	a0,4(sp)
    11e6:	037000ef          	jal	1a1c <__mulsi3>
    11ea:	01045693          	srl	a3,s0,0x10
    11ee:	973e                	add	a4,a4,a5
    11f0:	9736                	add	a4,a4,a3
    11f2:	00f77363          	bgeu	a4,a5,11f8 <i2c_tx.c.3c38b9a3+0x8b>
    11f6:	9526                	add	a0,a0,s1
    11f8:	007777b3          	and	a5,a4,t2
    11fc:	007476b3          	and	a3,s0,t2
    1200:	07c2                	sll	a5,a5,0x10
    1202:	97b6                	add	a5,a5,a3
    1204:	00679693          	sll	a3,a5,0x6
    1208:	00d036b3          	snez	a3,a3
    120c:	83e9                	srl	a5,a5,0x1a
    120e:	8edd                	or	a3,a3,a5
    1210:	01075793          	srl	a5,a4,0x10
    1214:	97aa                	add	a5,a5,a0
    1216:	079a                	sll	a5,a5,0x6
    1218:	8fd5                	or	a5,a5,a3
    121a:	08000737          	lui	a4,0x8000
    121e:	8f7d                	and	a4,a4,a5
    1220:	10070b63          	beqz	a4,1336 <i2c_tx.c.3c38b9a3+0x1c9>
    1224:	0017d713          	srl	a4,a5,0x1
    1228:	8b85                	and	a5,a5,1
    122a:	8fd9                	or	a5,a5,a4
    122c:	07f28513          	add	a0,t0,127
    1230:	10a05563          	blez	a0,133a <i2c_tx.c.3c38b9a3+0x1cd>
    1234:	0077f713          	and	a4,a5,7
    1238:	c719                	beqz	a4,1246 <i2c_tx.c.3c38b9a3+0xd9>
    123a:	00f7f713          	and	a4,a5,15
    123e:	4691                	li	a3,4
    1240:	00d70363          	beq	a4,a3,1246 <i2c_tx.c.3c38b9a3+0xd9>
    1244:	0791                	add	a5,a5,4 # 4000004 <_data_lma+0x3ffc928>
    1246:	08000737          	lui	a4,0x8000
    124a:	8f7d                	and	a4,a4,a5
    124c:	c719                	beqz	a4,125a <i2c_tx.c.3c38b9a3+0xed>
    124e:	f8000737          	lui	a4,0xf8000
    1252:	177d                	add	a4,a4,-1 # f7ffffff <__global_pointer$+0xd7fff7ff>
    1254:	8ff9                	and	a5,a5,a4
    1256:	08028513          	add	a0,t0,128
    125a:	0fe00713          	li	a4,254
    125e:	12a74763          	blt	a4,a0,138c <i2c_tx.c.3c38b9a3+0x21f>
    1262:	0037d713          	srl	a4,a5,0x3
    1266:	40e2                	lw	ra,24(sp)
    1268:	4452                	lw	s0,20(sp)
    126a:	0726                	sll	a4,a4,0x9
    126c:	055e                	sll	a0,a0,0x17
    126e:	8325                	srl	a4,a4,0x9
    1270:	8d59                	or	a0,a0,a4
    1272:	037e                	sll	t1,t1,0x1f
    1274:	44c2                	lw	s1,16(sp)
    1276:	00656533          	or	a0,a0,t1
    127a:	0171                	add	sp,sp,28
    127c:	8082                	ret
    127e:	c715                	beqz	a4,12aa <i2c_tx.c.3c38b9a3+0x13d>
    1280:	853a                	mv	a0,a4
    1282:	c03a                	sw	a4,0(sp)
    1284:	02f000ef          	jal	1ab2 <__clzsi2>
    1288:	4702                	lw	a4,0(sp)
    128a:	ffb50793          	add	a5,a0,-5
    128e:	f8a00293          	li	t0,-118
    1292:	00f71733          	sll	a4,a4,a5
    1296:	40a282b3          	sub	t0,t0,a0
    129a:	bd7d                	j	1158 <__mulsf3+0x34>
    129c:	0ff00293          	li	t0,255
    12a0:	460d                	li	a2,3
    12a2:	ea071ce3          	bnez	a4,115a <__mulsf3+0x36>
    12a6:	4609                	li	a2,2
    12a8:	bd4d                	j	115a <__mulsf3+0x36>
    12aa:	4281                	li	t0,0
    12ac:	4605                	li	a2,1
    12ae:	b575                	j	115a <__mulsf3+0x36>
    12b0:	cf85                	beqz	a5,12e8 <i2c_tx.c.3c38b9a3+0x17b>
    12b2:	853e                	mv	a0,a5
    12b4:	c63a                	sw	a4,12(sp)
    12b6:	c416                	sw	t0,8(sp)
    12b8:	c232                	sw	a2,4(sp)
    12ba:	c03e                	sw	a5,0(sp)
    12bc:	7f6000ef          	jal	1ab2 <__clzsi2>
    12c0:	4782                	lw	a5,0(sp)
    12c2:	ffb50693          	add	a3,a0,-5
    12c6:	4612                	lw	a2,4(sp)
    12c8:	00d797b3          	sll	a5,a5,a3
    12cc:	f8a00693          	li	a3,-118
    12d0:	42a2                	lw	t0,8(sp)
    12d2:	4732                	lw	a4,12(sp)
    12d4:	8e89                	sub	a3,a3,a0
    12d6:	4581                	li	a1,0
    12d8:	b575                	j	1184 <i2c_tx.c.3c38b9a3+0x17>
    12da:	0ff00693          	li	a3,255
    12de:	458d                	li	a1,3
    12e0:	ea0792e3          	bnez	a5,1184 <i2c_tx.c.3c38b9a3+0x17>
    12e4:	4589                	li	a1,2
    12e6:	bd79                	j	1184 <i2c_tx.c.3c38b9a3+0x17>
    12e8:	4681                	li	a3,0
    12ea:	4585                	li	a1,1
    12ec:	bd61                	j	1184 <i2c_tx.c.3c38b9a3+0x17>
    12ee:	4505                	li	a0,1
    12f0:	00d516b3          	sll	a3,a0,a3
    12f4:	5306f513          	and	a0,a3,1328
    12f8:	ed05                	bnez	a0,1330 <i2c_tx.c.3c38b9a3+0x1c3>
    12fa:	2406f613          	and	a2,a3,576
    12fe:	e249                	bnez	a2,1380 <i2c_tx.c.3c38b9a3+0x213>
    1300:	0886f693          	and	a3,a3,136
    1304:	ea0683e3          	beqz	a3,11aa <i2c_tx.c.3c38b9a3+0x3d>
    1308:	8326                	mv	t1,s1
    130a:	4709                	li	a4,2
    130c:	08e58063          	beq	a1,a4,138c <i2c_tx.c.3c38b9a3+0x21f>
    1310:	470d                	li	a4,3
    1312:	06e58763          	beq	a1,a4,1380 <i2c_tx.c.3c38b9a3+0x213>
    1316:	4705                	li	a4,1
    1318:	f0e59ae3          	bne	a1,a4,122c <i2c_tx.c.3c38b9a3+0xbf>
    131c:	4701                	li	a4,0
    131e:	4501                	li	a0,0
    1320:	b799                	j	1266 <i2c_tx.c.3c38b9a3+0xf9>
    1322:	453d                	li	a0,15
    1324:	04a68e63          	beq	a3,a0,1380 <i2c_tx.c.3c38b9a3+0x213>
    1328:	452d                	li	a0,11
    132a:	8322                	mv	t1,s0
    132c:	fca68ee3          	beq	a3,a0,1308 <i2c_tx.c.3c38b9a3+0x19b>
    1330:	87ba                	mv	a5,a4
    1332:	85b2                	mv	a1,a2
    1334:	bfd9                	j	130a <i2c_tx.c.3c38b9a3+0x19d>
    1336:	4282                	lw	t0,0(sp)
    1338:	bdd5                	j	122c <i2c_tx.c.3c38b9a3+0xbf>
    133a:	4685                	li	a3,1
    133c:	c519                	beqz	a0,134a <i2c_tx.c.3c38b9a3+0x1dd>
    133e:	8e89                	sub	a3,a3,a0
    1340:	466d                	li	a2,27
    1342:	4701                	li	a4,0
    1344:	4501                	li	a0,0
    1346:	f2d640e3          	blt	a2,a3,1266 <i2c_tx.c.3c38b9a3+0xf9>
    134a:	09e28293          	add	t0,t0,158
    134e:	00d7d6b3          	srl	a3,a5,a3
    1352:	005797b3          	sll	a5,a5,t0
    1356:	00f037b3          	snez	a5,a5
    135a:	00f6e733          	or	a4,a3,a5
    135e:	00777793          	and	a5,a4,7
    1362:	c799                	beqz	a5,1370 <i2c_tx.c.3c38b9a3+0x203>
    1364:	00f77793          	and	a5,a4,15
    1368:	4691                	li	a3,4
    136a:	00d78363          	beq	a5,a3,1370 <i2c_tx.c.3c38b9a3+0x203>
    136e:	0711                	add	a4,a4,4
    1370:	040007b7          	lui	a5,0x4000
    1374:	8ff9                	and	a5,a5,a4
    1376:	830d                	srl	a4,a4,0x3
    1378:	d3dd                	beqz	a5,131e <i2c_tx.c.3c38b9a3+0x1b1>
    137a:	4701                	li	a4,0
    137c:	4505                	li	a0,1
    137e:	b5e5                	j	1266 <i2c_tx.c.3c38b9a3+0xf9>
    1380:	00400737          	lui	a4,0x400
    1384:	0ff00513          	li	a0,255
    1388:	4301                	li	t1,0
    138a:	bdf1                	j	1266 <i2c_tx.c.3c38b9a3+0xf9>
    138c:	4701                	li	a4,0
    138e:	0ff00513          	li	a0,255
    1392:	bdd1                	j	1266 <i2c_tx.c.3c38b9a3+0xf9>

00001394 <__subsf3>:
    1394:	008007b7          	lui	a5,0x800
    1398:	1141                	add	sp,sp,-16
    139a:	17fd                	add	a5,a5,-1 # 7fffff <_data_lma+0x7fc923>
    139c:	00a7f633          	and	a2,a5,a0
    13a0:	c422                	sw	s0,8(sp)
    13a2:	01f55713          	srl	a4,a0,0x1f
    13a6:	01755413          	srl	s0,a0,0x17
    13aa:	0175d513          	srl	a0,a1,0x17
    13ae:	8fed                	and	a5,a5,a1
    13b0:	c606                	sw	ra,12(sp)
    13b2:	c226                	sw	s1,4(sp)
    13b4:	0ff57513          	zext.b	a0,a0
    13b8:	0ff00313          	li	t1,255
    13bc:	0ff47413          	zext.b	s0,s0
    13c0:	060e                	sll	a2,a2,0x3
    13c2:	81fd                	srl	a1,a1,0x1f
    13c4:	078e                	sll	a5,a5,0x3
    13c6:	06651763          	bne	a0,t1,1434 <main.c.ae3761cb+0x23>
    13ca:	f0140693          	add	a3,s0,-255
    13ce:	cb91                	beqz	a5,13e2 <__subsf3+0x4e>
    13d0:	82ae                	mv	t0,a1
    13d2:	1eb71363          	bne	a4,a1,15b8 <main.c.ae3761cb+0x1a7>
    13d6:	14068363          	beqz	a3,151c <main.c.ae3761cb+0x10b>
    13da:	e451                	bnez	s0,1466 <main.c.ae3761cb+0x55>
    13dc:	0ff00413          	li	s0,255
    13e0:	a211                	j	14e4 <main.c.ae3761cb+0xd3>
    13e2:	0015c293          	xor	t0,a1,1
    13e6:	1c571f63          	bne	a4,t0,15c4 <main.c.ae3761cb+0x1b3>
    13ea:	12068963          	beqz	a3,151c <main.c.ae3761cb+0x10b>
    13ee:	d47d                	beqz	s0,13dc <__subsf3+0x48>
    13f0:	0ff00413          	li	s0,255
    13f4:	040006b7          	lui	a3,0x4000
    13f8:	8efd                	and	a3,a3,a5
    13fa:	2c068963          	beqz	a3,16cc <main.c.ae3761cb+0x2bb>
    13fe:	0405                	add	s0,s0,1
    1400:	0ff00693          	li	a3,255
    1404:	4481                	li	s1,0
    1406:	00d40863          	beq	s0,a3,1416 <main.c.ae3761cb+0x5>
    140a:	0037d493          	srl	s1,a5,0x3
    140e:	1f8007b7          	lui	a5,0x1f800
    1412:	17fd                	add	a5,a5,-1 # 1f7fffff <_data_lma+0x1f7fc923>
    1414:	8cfd                	and	s1,s1,a5
    1416:	045e                	sll	s0,s0,0x17
    1418:	7f8007b7          	lui	a5,0x7f800
    141c:	04a6                	sll	s1,s1,0x9
    141e:	80a5                	srl	s1,s1,0x9
    1420:	8c7d                	and	s0,s0,a5
    1422:	8c45                	or	s0,s0,s1
    1424:	01f71513          	sll	a0,a4,0x1f
    1428:	40b2                	lw	ra,12(sp)
    142a:	8d41                	or	a0,a0,s0
    142c:	4422                	lw	s0,8(sp)
    142e:	4492                	lw	s1,4(sp)
    1430:	0141                	add	sp,sp,16
    1432:	8082                	ret
    1434:	0015c293          	xor	t0,a1,1
    1438:	40a406b3          	sub	a3,s0,a0
    143c:	10571f63          	bne	a4,t0,155a <main.c.ae3761cb+0x149>
    1440:	08d05963          	blez	a3,14d2 <main.c.ae3761cb+0xc1>
    1444:	e505                	bnez	a0,146c <main.c.ae3761cb+0x5b>
    1446:	26078f63          	beqz	a5,16c4 <main.c.ae3761cb+0x2b3>
    144a:	fff68593          	add	a1,a3,-1 # 3ffffff <_data_lma+0x3ffc923>
    144e:	e989                	bnez	a1,1460 <main.c.ae3761cb+0x4f>
    1450:	97b2                	add	a5,a5,a2
    1452:	040006b7          	lui	a3,0x4000
    1456:	8efd                	and	a3,a3,a5
    1458:	4409                	li	s0,2
    145a:	e2bd                	bnez	a3,14c0 <main.c.ae3761cb+0xaf>
    145c:	4405                	li	s0,1
    145e:	a015                	j	1482 <main.c.ae3761cb+0x71>
    1460:	00669c63          	bne	a3,t1,1478 <main.c.ae3761cb+0x67>
    1464:	87b2                	mv	a5,a2
    1466:	0ff00413          	li	s0,255
    146a:	a821                	j	1482 <main.c.ae3761cb+0x71>
    146c:	24640e63          	beq	s0,t1,16c8 <main.c.ae3761cb+0x2b7>
    1470:	040005b7          	lui	a1,0x4000
    1474:	8fcd                	or	a5,a5,a1
    1476:	85b6                	mv	a1,a3
    1478:	46ed                	li	a3,27
    147a:	00b6de63          	bge	a3,a1,1496 <main.c.ae3761cb+0x85>
    147e:	00160793          	add	a5,a2,1 # 4000001 <_data_lma+0x3ffc925>
    1482:	0077f693          	and	a3,a5,7
    1486:	d6bd                	beqz	a3,13f4 <__subsf3+0x60>
    1488:	00f7f693          	and	a3,a5,15
    148c:	4611                	li	a2,4
    148e:	f6c683e3          	beq	a3,a2,13f4 <__subsf3+0x60>
    1492:	0791                	add	a5,a5,4 # 7f800004 <__global_pointer$+0x5f7ff804>
    1494:	b785                	j	13f4 <__subsf3+0x60>
    1496:	02000693          	li	a3,32
    149a:	8e8d                	sub	a3,a3,a1
    149c:	00b7d533          	srl	a0,a5,a1
    14a0:	00d797b3          	sll	a5,a5,a3
    14a4:	00f037b3          	snez	a5,a5
    14a8:	8fc9                	or	a5,a5,a0
    14aa:	97b2                	add	a5,a5,a2
    14ac:	040006b7          	lui	a3,0x4000
    14b0:	8efd                	and	a3,a3,a5
    14b2:	dae1                	beqz	a3,1482 <main.c.ae3761cb+0x71>
    14b4:	0405                	add	s0,s0,1
    14b6:	0ff00693          	li	a3,255
    14ba:	4481                	li	s1,0
    14bc:	f4d40de3          	beq	s0,a3,1416 <main.c.ae3761cb+0x5>
    14c0:	7e0006b7          	lui	a3,0x7e000
    14c4:	0017f613          	and	a2,a5,1
    14c8:	16fd                	add	a3,a3,-1 # 7dffffff <__global_pointer$+0x5dfff7ff>
    14ca:	8385                	srl	a5,a5,0x1
    14cc:	8ff5                	and	a5,a5,a3
    14ce:	8fd1                	or	a5,a5,a2
    14d0:	bf4d                	j	1482 <main.c.ae3761cb+0x71>
    14d2:	c6a9                	beqz	a3,151c <main.c.ae3761cb+0x10b>
    14d4:	408505b3          	sub	a1,a0,s0
    14d8:	c409                	beqz	s0,14e2 <main.c.ae3761cb+0xd1>
    14da:	040006b7          	lui	a3,0x4000
    14de:	8e55                	or	a2,a2,a3
    14e0:	a811                	j	14f4 <main.c.ae3761cb+0xe3>
    14e2:	842e                	mv	s0,a1
    14e4:	de59                	beqz	a2,1482 <main.c.ae3761cb+0x71>
    14e6:	fff40593          	add	a1,s0,-1
    14ea:	d1bd                	beqz	a1,1450 <main.c.ae3761cb+0x3f>
    14ec:	0ff00693          	li	a3,255
    14f0:	f8d409e3          	beq	s0,a3,1482 <main.c.ae3761cb+0x71>
    14f4:	46ed                	li	a3,27
    14f6:	00b6d563          	bge	a3,a1,1500 <main.c.ae3761cb+0xef>
    14fa:	0785                	add	a5,a5,1
    14fc:	842a                	mv	s0,a0
    14fe:	b751                	j	1482 <main.c.ae3761cb+0x71>
    1500:	02000693          	li	a3,32
    1504:	8e8d                	sub	a3,a3,a1
    1506:	00d616b3          	sll	a3,a2,a3
    150a:	00b65333          	srl	t1,a2,a1
    150e:	00d036b3          	snez	a3,a3
    1512:	00d366b3          	or	a3,t1,a3
    1516:	97b6                	add	a5,a5,a3
    1518:	842a                	mv	s0,a0
    151a:	bf49                	j	14ac <main.c.ae3761cb+0x9b>
    151c:	00140693          	add	a3,s0,1
    1520:	0fe6f593          	and	a1,a3,254
    1524:	e195                	bnez	a1,1548 <main.c.ae3761cb+0x137>
    1526:	ec11                	bnez	s0,1542 <main.c.ae3761cb+0x131>
    1528:	de29                	beqz	a2,1482 <main.c.ae3761cb+0x71>
    152a:	18078f63          	beqz	a5,16c8 <main.c.ae3761cb+0x2b7>
    152e:	97b2                	add	a5,a5,a2
    1530:	040006b7          	lui	a3,0x4000
    1534:	8efd                	and	a3,a3,a5
    1536:	d6b1                	beqz	a3,1482 <main.c.ae3761cb+0x71>
    1538:	fc0006b7          	lui	a3,0xfc000
    153c:	16fd                	add	a3,a3,-1 # fbffffff <__global_pointer$+0xdbfff7ff>
    153e:	8ff5                	and	a5,a5,a3
    1540:	bf31                	j	145c <main.c.ae3761cb+0x4b>
    1542:	d215                	beqz	a2,1466 <main.c.ae3761cb+0x55>
    1544:	d385                	beqz	a5,1464 <main.c.ae3761cb+0x53>
    1546:	a205                	j	1666 <main.c.ae3761cb+0x255>
    1548:	0ff00593          	li	a1,255
    154c:	18b68b63          	beq	a3,a1,16e2 <main.c.ae3761cb+0x2d1>
    1550:	963e                	add	a2,a2,a5
    1552:	00165793          	srl	a5,a2,0x1
    1556:	8436                	mv	s0,a3
    1558:	b72d                	j	1482 <main.c.ae3761cb+0x71>
    155a:	06d05b63          	blez	a3,15d0 <main.c.ae3761cb+0x1bf>
    155e:	e531                	bnez	a0,15aa <main.c.ae3761cb+0x199>
    1560:	16078263          	beqz	a5,16c4 <main.c.ae3761cb+0x2b3>
    1564:	fff68593          	add	a1,a3,-1
    1568:	e589                	bnez	a1,1572 <main.c.ae3761cb+0x161>
    156a:	40f607b3          	sub	a5,a2,a5
    156e:	4405                	li	s0,1
    1570:	a025                	j	1598 <main.c.ae3761cb+0x187>
    1572:	ee6689e3          	beq	a3,t1,1464 <main.c.ae3761cb+0x53>
    1576:	456d                	li	a0,27
    1578:	4685                	li	a3,1
    157a:	00b54d63          	blt	a0,a1,1594 <main.c.ae3761cb+0x183>
    157e:	02000693          	li	a3,32
    1582:	8e8d                	sub	a3,a3,a1
    1584:	00b7d533          	srl	a0,a5,a1
    1588:	00d797b3          	sll	a5,a5,a3
    158c:	00f037b3          	snez	a5,a5
    1590:	00f566b3          	or	a3,a0,a5
    1594:	40d607b3          	sub	a5,a2,a3
    1598:	040004b7          	lui	s1,0x4000
    159c:	0097f6b3          	and	a3,a5,s1
    15a0:	ee0681e3          	beqz	a3,1482 <main.c.ae3761cb+0x71>
    15a4:	14fd                	add	s1,s1,-1 # 3ffffff <_data_lma+0x3ffc923>
    15a6:	8cfd                	and	s1,s1,a5
    15a8:	a8f1                	j	1684 <main.c.ae3761cb+0x273>
    15aa:	10640f63          	beq	s0,t1,16c8 <main.c.ae3761cb+0x2b7>
    15ae:	040005b7          	lui	a1,0x4000
    15b2:	8fcd                	or	a5,a5,a1
    15b4:	85b6                	mv	a1,a3
    15b6:	b7c1                	j	1576 <main.c.ae3761cb+0x165>
    15b8:	cab5                	beqz	a3,162c <main.c.ae3761cb+0x21b>
    15ba:	c805                	beqz	s0,15ea <main.c.ae3761cb+0x1d9>
    15bc:	0ff00413          	li	s0,255
    15c0:	872e                	mv	a4,a1
    15c2:	b5c1                	j	1482 <main.c.ae3761cb+0x71>
    15c4:	c6a5                	beqz	a3,162c <main.c.ae3761cb+0x21b>
    15c6:	c415                	beqz	s0,15f2 <main.c.ae3761cb+0x1e1>
    15c8:	0ff00413          	li	s0,255
    15cc:	8716                	mv	a4,t0
    15ce:	b51d                	j	13f4 <__subsf3+0x60>
    15d0:	ceb1                	beqz	a3,162c <main.c.ae3761cb+0x21b>
    15d2:	408505b3          	sub	a1,a0,s0
    15d6:	e431                	bnez	s0,1622 <main.c.ae3761cb+0x211>
    15d8:	8716                	mv	a4,t0
    15da:	842e                	mv	s0,a1
    15dc:	ea0603e3          	beqz	a2,1482 <main.c.ae3761cb+0x71>
    15e0:	fff40593          	add	a1,s0,-1
    15e4:	e989                	bnez	a1,15f6 <main.c.ae3761cb+0x1e5>
    15e6:	8f91                	sub	a5,a5,a2
    15e8:	b759                	j	156e <main.c.ae3761cb+0x15d>
    15ea:	872e                	mv	a4,a1
    15ec:	0ff00413          	li	s0,255
    15f0:	b7f5                	j	15dc <main.c.ae3761cb+0x1cb>
    15f2:	8716                	mv	a4,t0
    15f4:	bfe5                	j	15ec <main.c.ae3761cb+0x1db>
    15f6:	0ff00693          	li	a3,255
    15fa:	e8d404e3          	beq	s0,a3,1482 <main.c.ae3761cb+0x71>
    15fe:	436d                	li	t1,27
    1600:	4685                	li	a3,1
    1602:	00b34d63          	blt	t1,a1,161c <main.c.ae3761cb+0x20b>
    1606:	02000693          	li	a3,32
    160a:	8e8d                	sub	a3,a3,a1
    160c:	00d616b3          	sll	a3,a2,a3
    1610:	00b65333          	srl	t1,a2,a1
    1614:	00d036b3          	snez	a3,a3
    1618:	00d366b3          	or	a3,t1,a3
    161c:	8f95                	sub	a5,a5,a3
    161e:	842a                	mv	s0,a0
    1620:	bfa5                	j	1598 <main.c.ae3761cb+0x187>
    1622:	04000737          	lui	a4,0x4000
    1626:	8e59                	or	a2,a2,a4
    1628:	8716                	mv	a4,t0
    162a:	bfd1                	j	15fe <main.c.ae3761cb+0x1ed>
    162c:	00140693          	add	a3,s0,1
    1630:	0fe6f693          	and	a3,a3,254
    1634:	ee9d                	bnez	a3,1672 <main.c.ae3761cb+0x261>
    1636:	e01d                	bnez	s0,165c <main.c.ae3761cb+0x24b>
    1638:	e601                	bnez	a2,1640 <main.c.ae3761cb+0x22f>
    163a:	cbc5                	beqz	a5,16ea <main.c.ae3761cb+0x2d9>
    163c:	8716                	mv	a4,t0
    163e:	b591                	j	1482 <main.c.ae3761cb+0x71>
    1640:	c7c1                	beqz	a5,16c8 <main.c.ae3761cb+0x2b7>
    1642:	40f604b3          	sub	s1,a2,a5
    1646:	040006b7          	lui	a3,0x4000
    164a:	8ee5                	and	a3,a3,s1
    164c:	c299                	beqz	a3,1652 <main.c.ae3761cb+0x241>
    164e:	8f91                	sub	a5,a5,a2
    1650:	b7f5                	j	163c <main.c.ae3761cb+0x22b>
    1652:	87a6                	mv	a5,s1
    1654:	e20497e3          	bnez	s1,1482 <main.c.ae3761cb+0x71>
    1658:	4701                	li	a4,0
    165a:	bb75                	j	1416 <main.c.ae3761cb+0x5>
    165c:	ee0614e3          	bnez	a2,1544 <main.c.ae3761cb+0x133>
    1660:	8716                	mv	a4,t0
    1662:	e00792e3          	bnez	a5,1466 <main.c.ae3761cb+0x55>
    1666:	4701                	li	a4,0
    1668:	0ff00413          	li	s0,255
    166c:	004004b7          	lui	s1,0x400
    1670:	b35d                	j	1416 <main.c.ae3761cb+0x5>
    1672:	40f604b3          	sub	s1,a2,a5
    1676:	040006b7          	lui	a3,0x4000
    167a:	8ee5                	and	a3,a3,s1
    167c:	ca9d                	beqz	a3,16b2 <main.c.ae3761cb+0x2a1>
    167e:	40c784b3          	sub	s1,a5,a2
    1682:	8716                	mv	a4,t0
    1684:	8526                	mv	a0,s1
    1686:	c03a                	sw	a4,0(sp)
    1688:	212d                	jal	1ab2 <__clzsi2>
    168a:	156d                	add	a0,a0,-5
    168c:	4702                	lw	a4,0(sp)
    168e:	00a494b3          	sll	s1,s1,a0
    1692:	02854363          	blt	a0,s0,16b8 <main.c.ae3761cb+0x2a7>
    1696:	8d01                	sub	a0,a0,s0
    1698:	0505                	add	a0,a0,1
    169a:	02000693          	li	a3,32
    169e:	8e89                	sub	a3,a3,a0
    16a0:	00a4d7b3          	srl	a5,s1,a0
    16a4:	00d494b3          	sll	s1,s1,a3
    16a8:	009034b3          	snez	s1,s1
    16ac:	8fc5                	or	a5,a5,s1
    16ae:	4401                	li	s0,0
    16b0:	bbc9                	j	1482 <main.c.ae3761cb+0x71>
    16b2:	f8e9                	bnez	s1,1684 <main.c.ae3761cb+0x273>
    16b4:	4401                	li	s0,0
    16b6:	b74d                	j	1658 <main.c.ae3761cb+0x247>
    16b8:	fc0007b7          	lui	a5,0xfc000
    16bc:	17fd                	add	a5,a5,-1 # fbffffff <__global_pointer$+0xdbfff7ff>
    16be:	8c09                	sub	s0,s0,a0
    16c0:	8fe5                	and	a5,a5,s1
    16c2:	b3c1                	j	1482 <main.c.ae3761cb+0x71>
    16c4:	87b2                	mv	a5,a2
    16c6:	bd41                	j	1556 <main.c.ae3761cb+0x145>
    16c8:	87b2                	mv	a5,a2
    16ca:	bb65                	j	1482 <main.c.ae3761cb+0x71>
    16cc:	0037d493          	srl	s1,a5,0x3
    16d0:	0ff00793          	li	a5,255
    16d4:	d4f411e3          	bne	s0,a5,1416 <main.c.ae3761cb+0x5>
    16d8:	d2048fe3          	beqz	s1,1416 <main.c.ae3761cb+0x5>
    16dc:	004004b7          	lui	s1,0x400
    16e0:	bfa5                	j	1658 <main.c.ae3761cb+0x247>
    16e2:	0ff00413          	li	s0,255
    16e6:	4481                	li	s1,0
    16e8:	b33d                	j	1416 <main.c.ae3761cb+0x5>
    16ea:	4481                	li	s1,0
    16ec:	b7b5                	j	1658 <main.c.ae3761cb+0x247>

000016ee <__fixsfsi>:
    16ee:	00800637          	lui	a2,0x800
    16f2:	01755713          	srl	a4,a0,0x17
    16f6:	fff60793          	add	a5,a2,-1 # 7fffff <_data_lma+0x7fc923>
    16fa:	0ff77713          	zext.b	a4,a4
    16fe:	07e00593          	li	a1,126
    1702:	8fe9                	and	a5,a5,a0
    1704:	01f55693          	srl	a3,a0,0x1f
    1708:	04e5d063          	bge	a1,a4,1748 <__fixsfsi+0x5a>
    170c:	09d00593          	li	a1,157
    1710:	00e5d863          	bge	a1,a4,1720 <__fixsfsi+0x32>
    1714:	80000537          	lui	a0,0x80000
    1718:	fff54513          	not	a0,a0
    171c:	9536                	add	a0,a0,a3
    171e:	8082                	ret
    1720:	00c7e533          	or	a0,a5,a2
    1724:	09500793          	li	a5,149
    1728:	00e7da63          	bge	a5,a4,173c <__fixsfsi+0x4e>
    172c:	f6a70713          	add	a4,a4,-150 # 3ffff6a <_data_lma+0x3ffc88e>
    1730:	00e51533          	sll	a0,a0,a4
    1734:	ca99                	beqz	a3,174a <__fixsfsi+0x5c>
    1736:	40a00533          	neg	a0,a0
    173a:	8082                	ret
    173c:	09600793          	li	a5,150
    1740:	8f99                	sub	a5,a5,a4
    1742:	00f55533          	srl	a0,a0,a5
    1746:	b7fd                	j	1734 <__fixsfsi+0x46>
    1748:	4501                	li	a0,0
    174a:	8082                	ret

0000174c <__fixunssfsi>:
    174c:	01755793          	srl	a5,a0,0x17
    1750:	00800637          	lui	a2,0x800
    1754:	fff60693          	add	a3,a2,-1 # 7fffff <_data_lma+0x7fc923>
    1758:	0ff7f793          	zext.b	a5,a5
    175c:	07e00593          	li	a1,126
    1760:	8ee9                	and	a3,a3,a0
    1762:	01f55713          	srl	a4,a0,0x1f
    1766:	4501                	li	a0,0
    1768:	02f5da63          	bge	a1,a5,179c <__fixunssfsi+0x50>
    176c:	eb05                	bnez	a4,179c <__fixunssfsi+0x50>
    176e:	09e00713          	li	a4,158
    1772:	557d                	li	a0,-1
    1774:	02f74463          	blt	a4,a5,179c <__fixunssfsi+0x50>
    1778:	09500713          	li	a4,149
    177c:	00c6e533          	or	a0,a3,a2
    1780:	00f75763          	bge	a4,a5,178e <__fixunssfsi+0x42>
    1784:	f6a78793          	add	a5,a5,-150
    1788:	00f51533          	sll	a0,a0,a5
    178c:	8082                	ret
    178e:	09600713          	li	a4,150
    1792:	40f707b3          	sub	a5,a4,a5
    1796:	00f55533          	srl	a0,a0,a5
    179a:	8082                	ret
    179c:	8082                	ret

0000179e <__floatsisf>:
    179e:	1151                	add	sp,sp,-12
    17a0:	c406                	sw	ra,8(sp)
    17a2:	c222                	sw	s0,4(sp)
    17a4:	c026                	sw	s1,0(sp)
    17a6:	c54d                	beqz	a0,1850 <__floatsisf+0xb2>
    17a8:	41f55793          	sra	a5,a0,0x1f
    17ac:	00a7c433          	xor	s0,a5,a0
    17b0:	8c1d                	sub	s0,s0,a5
    17b2:	01f55493          	srl	s1,a0,0x1f
    17b6:	8522                	mv	a0,s0
    17b8:	2ced                	jal	1ab2 <__clzsi2>
    17ba:	87aa                	mv	a5,a0
    17bc:	09e00513          	li	a0,158
    17c0:	8d1d                	sub	a0,a0,a5
    17c2:	09600713          	li	a4,150
    17c6:	02a74363          	blt	a4,a0,17ec <__floatsisf+0x4e>
    17ca:	4721                	li	a4,8
    17cc:	08e78563          	beq	a5,a4,1856 <__floatsisf+0xb8>
    17d0:	17e1                	add	a5,a5,-8
    17d2:	00f41433          	sll	s0,s0,a5
    17d6:	0426                	sll	s0,s0,0x9
    17d8:	8025                	srl	s0,s0,0x9
    17da:	055e                	sll	a0,a0,0x17
    17dc:	40a2                	lw	ra,8(sp)
    17de:	8d41                	or	a0,a0,s0
    17e0:	4412                	lw	s0,4(sp)
    17e2:	04fe                	sll	s1,s1,0x1f
    17e4:	8d45                	or	a0,a0,s1
    17e6:	4482                	lw	s1,0(sp)
    17e8:	0131                	add	sp,sp,12
    17ea:	8082                	ret
    17ec:	09900713          	li	a4,153
    17f0:	04a75863          	bge	a4,a0,1840 <__floatsisf+0xa2>
    17f4:	4695                	li	a3,5
    17f6:	01b78713          	add	a4,a5,27
    17fa:	00e41733          	sll	a4,s0,a4
    17fe:	8e9d                	sub	a3,a3,a5
    1800:	00d456b3          	srl	a3,s0,a3
    1804:	00e03733          	snez	a4,a4
    1808:	00e6e433          	or	s0,a3,a4
    180c:	fc000737          	lui	a4,0xfc000
    1810:	177d                	add	a4,a4,-1 # fbffffff <__global_pointer$+0xdbfff7ff>
    1812:	00747693          	and	a3,s0,7
    1816:	8f61                	and	a4,a4,s0
    1818:	c691                	beqz	a3,1824 <__floatsisf+0x86>
    181a:	883d                	and	s0,s0,15
    181c:	4691                	li	a3,4
    181e:	00d40363          	beq	s0,a3,1824 <__floatsisf+0x86>
    1822:	0711                	add	a4,a4,4
    1824:	040006b7          	lui	a3,0x4000
    1828:	8ef9                	and	a3,a3,a4
    182a:	ca81                	beqz	a3,183a <__floatsisf+0x9c>
    182c:	fc0006b7          	lui	a3,0xfc000
    1830:	16fd                	add	a3,a3,-1 # fbffffff <__global_pointer$+0xdbfff7ff>
    1832:	09f00513          	li	a0,159
    1836:	8f75                	and	a4,a4,a3
    1838:	8d1d                	sub	a0,a0,a5
    183a:	00375413          	srl	s0,a4,0x3
    183e:	bf61                	j	17d6 <__floatsisf+0x38>
    1840:	4695                	li	a3,5
    1842:	ffb78713          	add	a4,a5,-5
    1846:	fcd783e3          	beq	a5,a3,180c <__floatsisf+0x6e>
    184a:	00e41433          	sll	s0,s0,a4
    184e:	bf7d                	j	180c <__floatsisf+0x6e>
    1850:	4481                	li	s1,0
    1852:	4401                	li	s0,0
    1854:	b749                	j	17d6 <__floatsisf+0x38>
    1856:	09600513          	li	a0,150
    185a:	bfb5                	j	17d6 <__floatsisf+0x38>

0000185c <__extendsfdf2>:
    185c:	01755713          	srl	a4,a0,0x17
    1860:	0ff77713          	zext.b	a4,a4
    1864:	1151                	add	sp,sp,-12
    1866:	00170793          	add	a5,a4,1
    186a:	c222                	sw	s0,4(sp)
    186c:	c026                	sw	s1,0(sp)
    186e:	00951413          	sll	s0,a0,0x9
    1872:	c406                	sw	ra,8(sp)
    1874:	0fe7f793          	and	a5,a5,254
    1878:	8025                	srl	s0,s0,0x9
    187a:	01f55493          	srl	s1,a0,0x1f
    187e:	c785                	beqz	a5,18a6 <__extendsfdf2+0x4a>
    1880:	00345793          	srl	a5,s0,0x3
    1884:	38070713          	add	a4,a4,896
    1888:	0476                	sll	s0,s0,0x1d
    188a:	07b2                	sll	a5,a5,0xc
    188c:	40a2                	lw	ra,8(sp)
    188e:	83b1                	srl	a5,a5,0xc
    1890:	8522                	mv	a0,s0
    1892:	0752                	sll	a4,a4,0x14
    1894:	4412                	lw	s0,4(sp)
    1896:	04fe                	sll	s1,s1,0x1f
    1898:	8f5d                	or	a4,a4,a5
    189a:	009767b3          	or	a5,a4,s1
    189e:	85be                	mv	a1,a5
    18a0:	4482                	lw	s1,0(sp)
    18a2:	0131                	add	sp,sp,12
    18a4:	8082                	ret
    18a6:	eb15                	bnez	a4,18da <__extendsfdf2+0x7e>
    18a8:	4781                	li	a5,0
    18aa:	d065                	beqz	s0,188a <__extendsfdf2+0x2e>
    18ac:	8522                	mv	a0,s0
    18ae:	2411                	jal	1ab2 <__clzsi2>
    18b0:	47a9                	li	a5,10
    18b2:	00a7ce63          	blt	a5,a0,18ce <__extendsfdf2+0x72>
    18b6:	47ad                	li	a5,11
    18b8:	8f89                	sub	a5,a5,a0
    18ba:	01550713          	add	a4,a0,21 # 80000015 <__global_pointer$+0x5ffff815>
    18be:	00f457b3          	srl	a5,s0,a5
    18c2:	00e41433          	sll	s0,s0,a4
    18c6:	38900713          	li	a4,905
    18ca:	8f09                	sub	a4,a4,a0
    18cc:	bf7d                	j	188a <__extendsfdf2+0x2e>
    18ce:	ff550793          	add	a5,a0,-11
    18d2:	00f417b3          	sll	a5,s0,a5
    18d6:	4401                	li	s0,0
    18d8:	b7fd                	j	18c6 <__extendsfdf2+0x6a>
    18da:	4781                	li	a5,0
    18dc:	c419                	beqz	s0,18ea <__extendsfdf2+0x8e>
    18de:	00345793          	srl	a5,s0,0x3
    18e2:	00080737          	lui	a4,0x80
    18e6:	0476                	sll	s0,s0,0x1d
    18e8:	8fd9                	or	a5,a5,a4
    18ea:	7ff00713          	li	a4,2047
    18ee:	bf71                	j	188a <__extendsfdf2+0x2e>

000018f0 <__truncdfsf2>:
    18f0:	00c59713          	sll	a4,a1,0xc
    18f4:	0145d313          	srl	t1,a1,0x14
    18f8:	8325                	srl	a4,a4,0x9
    18fa:	7ff37313          	and	t1,t1,2047
    18fe:	01d55793          	srl	a5,a0,0x1d
    1902:	8fd9                	or	a5,a5,a4
    1904:	00130713          	add	a4,t1,1
    1908:	7fe77713          	and	a4,a4,2046
    190c:	81fd                	srl	a1,a1,0x1f
    190e:	00351613          	sll	a2,a0,0x3
    1912:	c74d                	beqz	a4,19bc <__truncdfsf2+0xcc>
    1914:	c8030693          	add	a3,t1,-896
    1918:	0fe00713          	li	a4,254
    191c:	0ed74b63          	blt	a4,a3,1a12 <__truncdfsf2+0x122>
    1920:	08d04063          	bgtz	a3,19a0 <__truncdfsf2+0xb0>
    1924:	5725                	li	a4,-23
    1926:	0ee6c963          	blt	a3,a4,1a18 <__truncdfsf2+0x128>
    192a:	008002b7          	lui	t0,0x800
    192e:	4779                	li	a4,30
    1930:	0057e2b3          	or	t0,a5,t0
    1934:	8f15                	sub	a4,a4,a3
    1936:	47fd                	li	a5,31
    1938:	02e7ce63          	blt	a5,a4,1974 <__truncdfsf2+0x84>
    193c:	c8230313          	add	t1,t1,-894
    1940:	00e65733          	srl	a4,a2,a4
    1944:	00661633          	sll	a2,a2,t1
    1948:	00c03633          	snez	a2,a2
    194c:	00629333          	sll	t1,t0,t1
    1950:	00666633          	or	a2,a2,t1
    1954:	8f51                	or	a4,a4,a2
    1956:	00777793          	and	a5,a4,7
    195a:	efad                	bnez	a5,19d4 <__truncdfsf2+0xe4>
    195c:	00375793          	srl	a5,a4,0x3
    1960:	4681                	li	a3,0
    1962:	07a6                	sll	a5,a5,0x9
    1964:	01769513          	sll	a0,a3,0x17
    1968:	83a5                	srl	a5,a5,0x9
    196a:	8fc9                	or	a5,a5,a0
    196c:	01f59513          	sll	a0,a1,0x1f
    1970:	8d5d                	or	a0,a0,a5
    1972:	8082                	ret
    1974:	57f9                	li	a5,-2
    1976:	8f95                	sub	a5,a5,a3
    1978:	02000513          	li	a0,32
    197c:	00f2d7b3          	srl	a5,t0,a5
    1980:	4681                	li	a3,0
    1982:	00a70663          	beq	a4,a0,198e <__truncdfsf2+0x9e>
    1986:	ca230693          	add	a3,t1,-862
    198a:	00d296b3          	sll	a3,t0,a3
    198e:	8ed1                	or	a3,a3,a2
    1990:	00d036b3          	snez	a3,a3
    1994:	8fd5                	or	a5,a5,a3
    1996:	0077f713          	and	a4,a5,7
    199a:	e721                	bnez	a4,19e2 <__truncdfsf2+0xf2>
    199c:	838d                	srl	a5,a5,0x3
    199e:	b7c9                	j	1960 <__truncdfsf2+0x70>
    19a0:	00651713          	sll	a4,a0,0x6
    19a4:	078e                	sll	a5,a5,0x3
    19a6:	00e03733          	snez	a4,a4
    19aa:	8f5d                	or	a4,a4,a5
    19ac:	8275                	srl	a2,a2,0x1d
    19ae:	8f51                	or	a4,a4,a2
    19b0:	00777793          	and	a5,a4,7
    19b4:	ef95                	bnez	a5,19f0 <__truncdfsf2+0x100>
    19b6:	00375793          	srl	a5,a4,0x3
    19ba:	b765                	j	1962 <__truncdfsf2+0x72>
    19bc:	04030e63          	beqz	t1,1a18 <__truncdfsf2+0x128>
    19c0:	8fd1                	or	a5,a5,a2
    19c2:	0ff00693          	li	a3,255
    19c6:	dfd1                	beqz	a5,1962 <__truncdfsf2+0x72>
    19c8:	4581                	li	a1,0
    19ca:	0ff00693          	li	a3,255
    19ce:	004007b7          	lui	a5,0x400
    19d2:	bf41                	j	1962 <__truncdfsf2+0x72>
    19d4:	00f77793          	and	a5,a4,15
    19d8:	4691                	li	a3,4
    19da:	f8d781e3          	beq	a5,a3,195c <__truncdfsf2+0x6c>
    19de:	4681                	li	a3,0
    19e0:	a839                	j	19fe <__truncdfsf2+0x10e>
    19e2:	00f7f713          	and	a4,a5,15
    19e6:	4691                	li	a3,4
    19e8:	fad70ae3          	beq	a4,a3,199c <__truncdfsf2+0xac>
    19ec:	0791                	add	a5,a5,4 # 400004 <_data_lma+0x3fc928>
    19ee:	b77d                	j	199c <__truncdfsf2+0xac>
    19f0:	00f77313          	and	t1,a4,15
    19f4:	4291                	li	t0,4
    19f6:	00375793          	srl	a5,a4,0x3
    19fa:	f65304e3          	beq	t1,t0,1962 <__truncdfsf2+0x72>
    19fe:	00470793          	add	a5,a4,4 # 80004 <_data_lma+0x7c928>
    1a02:	04000737          	lui	a4,0x4000
    1a06:	8f7d                	and	a4,a4,a5
    1a08:	838d                	srl	a5,a5,0x3
    1a0a:	df21                	beqz	a4,1962 <__truncdfsf2+0x72>
    1a0c:	0685                	add	a3,a3,1
    1a0e:	4781                	li	a5,0
    1a10:	bf89                	j	1962 <__truncdfsf2+0x72>
    1a12:	0ff00693          	li	a3,255
    1a16:	bfe5                	j	1a0e <__truncdfsf2+0x11e>
    1a18:	4681                	li	a3,0
    1a1a:	bfd5                	j	1a0e <__truncdfsf2+0x11e>

00001a1c <__mulsi3>:
    1a1c:	862a                	mv	a2,a0
    1a1e:	4501                	li	a0,0
    1a20:	0015f693          	and	a3,a1,1
    1a24:	c291                	beqz	a3,1a28 <__mulsi3+0xc>
    1a26:	9532                	add	a0,a0,a2
    1a28:	8185                	srl	a1,a1,0x1
    1a2a:	0606                	sll	a2,a2,0x1
    1a2c:	f9f5                	bnez	a1,1a20 <__mulsi3+0x4>
    1a2e:	8082                	ret
    1a30:	0000                	unimp
	...

00001a34 <__divsi3>:
    1a34:	02054e63          	bltz	a0,1a70 <__umodsi3+0x8>
    1a38:	0405c363          	bltz	a1,1a7e <__umodsi3+0x16>

00001a3c <__hidden___udivsi3>:
    1a3c:	862e                	mv	a2,a1
    1a3e:	85aa                	mv	a1,a0
    1a40:	557d                	li	a0,-1
    1a42:	c215                	beqz	a2,1a66 <__hidden___udivsi3+0x2a>
    1a44:	4685                	li	a3,1
    1a46:	00b67863          	bgeu	a2,a1,1a56 <__hidden___udivsi3+0x1a>
    1a4a:	00c05663          	blez	a2,1a56 <__hidden___udivsi3+0x1a>
    1a4e:	0606                	sll	a2,a2,0x1
    1a50:	0686                	sll	a3,a3,0x1
    1a52:	feb66ce3          	bltu	a2,a1,1a4a <__hidden___udivsi3+0xe>
    1a56:	4501                	li	a0,0
    1a58:	00c5e463          	bltu	a1,a2,1a60 <__hidden___udivsi3+0x24>
    1a5c:	8d91                	sub	a1,a1,a2
    1a5e:	8d55                	or	a0,a0,a3
    1a60:	8285                	srl	a3,a3,0x1
    1a62:	8205                	srl	a2,a2,0x1
    1a64:	faf5                	bnez	a3,1a58 <__hidden___udivsi3+0x1c>
    1a66:	8082                	ret

00001a68 <__umodsi3>:
    1a68:	8286                	mv	t0,ra
    1a6a:	3fc9                	jal	1a3c <__hidden___udivsi3>
    1a6c:	852e                	mv	a0,a1
    1a6e:	8282                	jr	t0
    1a70:	40a00533          	neg	a0,a0
    1a74:	00b04763          	bgtz	a1,1a82 <__umodsi3+0x1a>
    1a78:	40b005b3          	neg	a1,a1
    1a7c:	b7c1                	j	1a3c <__hidden___udivsi3>
    1a7e:	40b005b3          	neg	a1,a1
    1a82:	8286                	mv	t0,ra
    1a84:	3f65                	jal	1a3c <__hidden___udivsi3>
    1a86:	40a00533          	neg	a0,a0
    1a8a:	8282                	jr	t0

00001a8c <__modsi3>:
    1a8c:	8286                	mv	t0,ra
    1a8e:	0005c763          	bltz	a1,1a9c <__modsi3+0x10>
    1a92:	00054963          	bltz	a0,1aa4 <__modsi3+0x18>
    1a96:	375d                	jal	1a3c <__hidden___udivsi3>
    1a98:	852e                	mv	a0,a1
    1a9a:	8282                	jr	t0
    1a9c:	40b005b3          	neg	a1,a1
    1aa0:	fe055be3          	bgez	a0,1a96 <__modsi3+0xa>
    1aa4:	40a00533          	neg	a0,a0
    1aa8:	3f51                	jal	1a3c <__hidden___udivsi3>
    1aaa:	40b00533          	neg	a0,a1
    1aae:	8282                	jr	t0
	...

00001ab2 <__clzsi2>:
    1ab2:	67c1                	lui	a5,0x10
    1ab4:	02f57563          	bgeu	a0,a5,1ade <__clzsi2+0x2c>
    1ab8:	10053793          	sltiu	a5,a0,256
    1abc:	0017c793          	xor	a5,a5,1
    1ac0:	078e                	sll	a5,a5,0x3
    1ac2:	670d                	lui	a4,0x3
    1ac4:	02000693          	li	a3,32
    1ac8:	8e9d                	sub	a3,a3,a5
    1aca:	00f55533          	srl	a0,a0,a5
    1ace:	e8870793          	add	a5,a4,-376 # 2e88 <__clz_tab>
    1ad2:	97aa                	add	a5,a5,a0
    1ad4:	0007c503          	lbu	a0,0(a5) # 10000 <_data_lma+0xc924>
    1ad8:	40a68533          	sub	a0,a3,a0
    1adc:	8082                	ret
    1ade:	01000737          	lui	a4,0x1000
    1ae2:	47c1                	li	a5,16
    1ae4:	fce56fe3          	bltu	a0,a4,1ac2 <__clzsi2+0x10>
    1ae8:	47e1                	li	a5,24
    1aea:	bfe1                	j	1ac2 <__clzsi2+0x10>

00001aec <I2C_write>:
    1aec:	400057b7          	lui	a5,0x40005
    1af0:	40078793          	add	a5,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
    1af4:	0147d703          	lhu	a4,20(a5)
    1af8:	08077713          	and	a4,a4,128
    1afc:	df65                	beqz	a4,1af4 <I2C_write+0x8>
    1afe:	00a79823          	sh	a0,16(a5)
    1b02:	8082                	ret

00001b04 <I2C_stop>:
    1b04:	400057b7          	lui	a5,0x40005
    1b08:	40078693          	add	a3,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
    1b0c:	0146d703          	lhu	a4,20(a3)
    1b10:	8b11                	and	a4,a4,4
    1b12:	df6d                	beqz	a4,1b0c <I2C_stop+0x8>
    1b14:	4007d703          	lhu	a4,1024(a5)
    1b18:	20076713          	or	a4,a4,512
    1b1c:	40e79023          	sh	a4,1024(a5)
    1b20:	8082                	ret

00001b22 <background>:
    1b22:	87ae                	mv	a5,a1
    1b24:	e90d                	bnez	a0,1b56 <background+0x34>
    1b26:	88018423          	sb	zero,-1912(gp) # 20000088 <SWIFT_TEXTURE>
    1b2a:	8881c703          	lbu	a4,-1912(gp) # 20000088 <SWIFT_TEXTURE>
    1b2e:	45b5                	li	a1,13
    1b30:	4681                	li	a3,0
    1b32:	00e5e563          	bltu	a1,a4,1b3c <background+0x1a>
    1b36:	0705                	add	a4,a4,1 # 1000001 <_data_lma+0xffc925>
    1b38:	0ff77693          	zext.b	a3,a4
    1b3c:	88d18423          	sb	a3,-1912(gp) # 20000088 <SWIFT_TEXTURE>
    1b40:	4719                	li	a4,6
    1b42:	02f76b63          	bltu	a4,a5,1b78 <background+0x56>
    1b46:	cf95                	beqz	a5,1b82 <background+0x60>
    1b48:	678d                	lui	a5,0x3
    1b4a:	15478793          	add	a5,a5,340 # 3154 <texture>
    1b4e:	97b6                	add	a5,a5,a3
    1b50:	0007c503          	lbu	a0,0(a5)
    1b54:	8082                	ret
    1b56:	06900713          	li	a4,105
    1b5a:	fca778e3          	bgeu	a4,a0,1b2a <background+0x8>
    1b5e:	0586                	sll	a1,a1,0x1
    1b60:	95be                	add	a1,a1,a5
    1b62:	058a                	sll	a1,a1,0x2
    1b64:	670d                	lui	a4,0x3
    1b66:	8d9d                	sub	a1,a1,a5
    1b68:	0586                	sll	a1,a1,0x1
    1b6a:	03870793          	add	a5,a4,56 # 3038 <back_RIGHT>
    1b6e:	97ae                	add	a5,a5,a1
    1b70:	953e                	add	a0,a0,a5
    1b72:	f9654503          	lbu	a0,-106(a0)
    1b76:	8082                	ret
    1b78:	471d                	li	a4,7
    1b7a:	00e78963          	beq	a5,a4,1b8c <background+0x6a>
    1b7e:	4501                	li	a0,0
    1b80:	8082                	ret
    1b82:	678d                	lui	a5,0x3
    1b84:	16478793          	add	a5,a5,356 # 3164 <back_UP>
    1b88:	97aa                	add	a5,a5,a0
    1b8a:	b7d9                	j	1b50 <background+0x2e>
    1b8c:	678d                	lui	a5,0x3
    1b8e:	0e878793          	add	a5,a5,232 # 30e8 <back_DOWN>
    1b92:	bfdd                	j	1b88 <background+0x66>

00001b94 <LoadLevel>:
    1b94:	00451793          	sll	a5,a0,0x4
    1b98:	40a78533          	sub	a0,a5,a0
    1b9c:	0506                	sll	a0,a0,0x1
    1b9e:	670d                	lui	a4,0x3
    1ba0:	00550313          	add	t1,a0,5
    1ba4:	8d89                	sub	a1,a1,a0
    1ba6:	fa070713          	add	a4,a4,-96 # 2fa0 <LEVEL>
    1baa:	42f9                	li	t0,30
    1bac:	00a586b3          	add	a3,a1,a0
    1bb0:	4781                	li	a5,0
    1bb2:	00e50633          	add	a2,a0,a4
    1bb6:	00f603b3          	add	t2,a2,a5
    1bba:	0003c383          	lbu	t2,0(t2) # 80000 <_data_lma+0x7c924>
    1bbe:	0795                	add	a5,a5,5
    1bc0:	0695                	add	a3,a3,5
    1bc2:	fe768fa3          	sb	t2,-1(a3)
    1bc6:	fe5798e3          	bne	a5,t0,1bb6 <LoadLevel+0x22>
    1bca:	0505                	add	a0,a0,1
    1bcc:	fe6510e3          	bne	a0,t1,1bac <LoadLevel+0x18>
    1bd0:	8082                	ret

00001bd2 <DLY_ticks>:
    1bd2:	e000f7b7          	lui	a5,0xe000f
    1bd6:	479c                	lw	a5,8(a5)
    1bd8:	e000f737          	lui	a4,0xe000f
    1bdc:	953e                	add	a0,a0,a5
    1bde:	471c                	lw	a5,8(a4)
    1be0:	8f89                	sub	a5,a5,a0
    1be2:	fe07cee3          	bltz	a5,1bde <DLY_ticks+0xc>
    1be6:	8082                	ret

00001be8 <JOY_sound>:
    1be8:	0ff00713          	li	a4,255
    1bec:	1141                	add	sp,sp,-16
    1bee:	8f09                	sub	a4,a4,a0
    1bf0:	c226                	sw	s1,4(sp)
    1bf2:	00171493          	sll	s1,a4,0x1
    1bf6:	94ba                	add	s1,s1,a4
    1bf8:	c422                	sw	s0,8(sp)
    1bfa:	c606                	sw	ra,12(sp)
    1bfc:	87aa                	mv	a5,a0
    1bfe:	842e                	mv	s0,a1
    1c00:	048a                	sll	s1,s1,0x2
    1c02:	e411                	bnez	s0,1c0e <JOY_sound+0x26>
    1c04:	40b2                	lw	ra,12(sp)
    1c06:	4422                	lw	s0,8(sp)
    1c08:	4492                	lw	s1,4(sp)
    1c0a:	0141                	add	sp,sp,16
    1c0c:	8082                	ret
    1c0e:	c799                	beqz	a5,1c1c <JOY_sound+0x34>
    1c10:	40011737          	lui	a4,0x40011
    1c14:	80070713          	add	a4,a4,-2048 # 40010800 <__global_pointer$+0x20010000>
    1c18:	4689                	li	a3,2
    1c1a:	cb54                	sw	a3,20(a4)
    1c1c:	8526                	mv	a0,s1
    1c1e:	c03e                	sw	a5,0(sp)
    1c20:	3f4d                	jal	1bd2 <DLY_ticks>
    1c22:	40011737          	lui	a4,0x40011
    1c26:	80070713          	add	a4,a4,-2048 # 40010800 <__global_pointer$+0x20010000>
    1c2a:	4689                	li	a3,2
    1c2c:	cb14                	sw	a3,16(a4)
    1c2e:	8526                	mv	a0,s1
    1c30:	374d                	jal	1bd2 <DLY_ticks>
    1c32:	147d                	add	s0,s0,-1
    1c34:	4782                	lw	a5,0(sp)
    1c36:	0ff47413          	zext.b	s0,s0
    1c3a:	b7e1                	j	1c02 <JOY_sound+0x1a>

00001c3c <I2C_start.constprop.0>:
    1c3c:	400057b7          	lui	a5,0x40005
    1c40:	40078693          	add	a3,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
    1c44:	0186d703          	lhu	a4,24(a3)
    1c48:	8b09                	and	a4,a4,2
    1c4a:	ff6d                	bnez	a4,1c44 <I2C_start.constprop.0+0x8>
    1c4c:	4007d703          	lhu	a4,1024(a5)
    1c50:	10076713          	or	a4,a4,256
    1c54:	40e79023          	sh	a4,1024(a5)
    1c58:	400057b7          	lui	a5,0x40005
    1c5c:	40078793          	add	a5,a5,1024 # 40005400 <__global_pointer$+0x20004c00>
    1c60:	0147d703          	lhu	a4,20(a5)
    1c64:	8b05                	and	a4,a4,1
    1c66:	df6d                	beqz	a4,1c60 <I2C_start.constprop.0+0x24>
    1c68:	07800713          	li	a4,120
    1c6c:	00e79823          	sh	a4,16(a5)
    1c70:	400056b7          	lui	a3,0x40005
    1c74:	00820737          	lui	a4,0x820
    1c78:	40068693          	add	a3,a3,1024 # 40005400 <__global_pointer$+0x20004c00>
    1c7c:	070d                	add	a4,a4,3 # 820003 <_data_lma+0x81c927>
    1c7e:	0146d783          	lhu	a5,20(a3)
    1c82:	0186d603          	lhu	a2,24(a3)
    1c86:	07c2                	sll	a5,a5,0x10
    1c88:	8fd1                	or	a5,a5,a2
    1c8a:	8ff9                	and	a5,a5,a4
    1c8c:	fee799e3          	bne	a5,a4,1c7e <I2C_start.constprop.0+0x42>
    1c90:	8082                	ret

00001c92 <Tiny_Flip>:
    1c92:	678d                	lui	a5,0x3
    1c94:	fb410113          	add	sp,sp,-76
    1c98:	26c78793          	add	a5,a5,620 # 326c <MAIN>
    1c9c:	c486                	sw	ra,72(sp)
    1c9e:	c2a2                	sw	s0,68(sp)
    1ca0:	c0a6                	sw	s1,64(sp)
    1ca2:	d42a                	sw	a0,40(sp)
    1ca4:	c62e                	sw	a1,12(sp)
    1ca6:	c202                	sw	zero,4(sp)
    1ca8:	da3e                	sw	a5,52(sp)
    1caa:	00414483          	lbu	s1,4(sp)
    1cae:	3779                	jal	1c3c <I2C_start.constprop.0>
    1cb0:	4501                	li	a0,0
    1cb2:	3d2d                	jal	1aec <I2C_write>
    1cb4:	0b04e513          	or	a0,s1,176
    1cb8:	3d15                	jal	1aec <I2C_write>
    1cba:	4501                	li	a0,0
    1cbc:	3d05                	jal	1aec <I2C_write>
    1cbe:	4541                	li	a0,16
    1cc0:	3535                	jal	1aec <I2C_write>
    1cc2:	3589                	jal	1b04 <I2C_stop>
    1cc4:	3fa5                	jal	1c3c <I2C_start.constprop.0>
    1cc6:	04000513          	li	a0,64
    1cca:	350d                	jal	1aec <I2C_write>
    1ccc:	88418793          	add	a5,gp,-1916 # 20000084 <LIVE>
    1cd0:	ca3e                	sw	a5,20(sp)
    1cd2:	87c18713          	add	a4,gp,-1924 # 2000007c <TRACKBAR>
    1cd6:	c83a                	sw	a4,16(sp)
    1cd8:	4712                	lw	a4,4(sp)
    1cda:	56d2                	lw	a3,52(sp)
    1cdc:	87c18793          	add	a5,gp,-1924 # 2000007c <TRACKBAR>
    1ce0:	071e                	sll	a4,a4,0x7
    1ce2:	9736                	add	a4,a4,a3
    1ce4:	d83a                	sw	a4,48(sp)
    1ce6:	c002                	sw	zero,0(sp)
    1ce8:	dc3e                	sw	a5,56(sp)
    1cea:	00014783          	lbu	a5,0(sp)
    1cee:	c43e                	sw	a5,8(sp)
    1cf0:	57a2                	lw	a5,40(sp)
    1cf2:	46079063          	bnez	a5,2152 <oled_min.c.bad5d6e2+0x17c>
    1cf6:	47a2                	lw	a5,8(sp)
    1cf8:	fbd78713          	add	a4,a5,-67
    1cfc:	47b2                	lw	a5,12(sp)
    1cfe:	0ff77713          	zext.b	a4,a4
    1d02:	0517c403          	lbu	s0,81(a5)
    1d06:	47f5                	li	a5,29
    1d08:	12e7ef63          	bltu	a5,a4,1e46 <Tiny_Flip+0x1b4>
    1d0c:	4792                	lw	a5,4(sp)
    1d0e:	e3c9                	bnez	a5,1d90 <Tiny_Flip+0xfe>
    1d10:	4701                	li	a4,0
    1d12:	0e041e63          	bnez	s0,1e0e <Tiny_Flip+0x17c>
    1d16:	4785                	li	a5,1
    1d18:	ce3e                	sw	a5,28(sp)
    1d1a:	d202                	sw	zero,36(sp)
    1d1c:	8081a583          	lw	a1,-2040(gp) # 20000008 <_data_vma+0x8>
    1d20:	47b2                	lw	a5,12(sp)
    1d22:	d03a                	sw	a4,32(sp)
    1d24:	53c8                	lw	a0,36(a5)
    1d26:	e6eff0ef          	jal	1394 <__subsf3>
    1d2a:	d62a                	sw	a0,44(sp)
    1d2c:	3405                	jal	174c <__fixunssfsi>
    1d2e:	4782                	lw	a5,0(sp)
    1d30:	0ff57513          	zext.b	a0,a0
    1d34:	5702                	lw	a4,32(sp)
    1d36:	8f89                	sub	a5,a5,a0
    1d38:	cc3e                	sw	a5,24(sp)
    1d3a:	46e2                	lw	a3,24(sp)
    1d3c:	4781                	li	a5,0
    1d3e:	1006c863          	bltz	a3,1e4e <Tiny_Flip+0x1bc>
    1d42:	4502                	lw	a0,0(sp)
    1d44:	de3a                	sw	a4,60(sp)
    1d46:	3ca1                	jal	179e <__floatsisf>
    1d48:	d02a                	sw	a0,32(sp)
    1d4a:	85aa                	mv	a1,a0
    1d4c:	5532                	lw	a0,44(sp)
    1d4e:	aaeff0ef          	jal	ffc <__gesf2>
    1d52:	5772                	lw	a4,60(sp)
    1d54:	4781                	li	a5,0
    1d56:	0ea04c63          	bgtz	a0,1e4e <Tiny_Flip+0x1bc>
    1d5a:	80c1a583          	lw	a1,-2036(gp) # 2000000c <_data_vma+0xc>
    1d5e:	5532                	lw	a0,44(sp)
    1d60:	f6ffe0ef          	jal	cce <__addsf3>
    1d64:	85aa                	mv	a1,a0
    1d66:	5502                	lw	a0,32(sp)
    1d68:	a94ff0ef          	jal	ffc <__gesf2>
    1d6c:	5772                	lw	a4,60(sp)
    1d6e:	4781                	li	a5,0
    1d70:	0ca04f63          	bgtz	a0,1e4e <Tiny_Flip+0x1bc>
    1d74:	47b2                	lw	a5,12(sp)
    1d76:	0507c783          	lbu	a5,80(a5)
    1d7a:	16079863          	bnez	a5,1eea <Tiny_Flip+0x258>
    1d7e:	0c941863          	bne	s0,s1,1e4e <Tiny_Flip+0x1bc>
    1d82:	46e2                	lw	a3,24(sp)
    1d84:	87818793          	add	a5,gp,-1928 # 20000078 <BALL>
    1d88:	97b6                	add	a5,a5,a3
    1d8a:	0007c783          	lbu	a5,0(a5)
    1d8e:	a0c1                	j	1e4e <Tiny_Flip+0x1bc>
    1d90:	4692                	lw	a3,4(sp)
    1d92:	479d                	li	a5,7
    1d94:	08f68a63          	beq	a3,a5,1e28 <Tiny_Flip+0x196>
    1d98:	465d                	li	a2,23
    1d9a:	4791                	li	a5,4
    1d9c:	00e66863          	bltu	a2,a4,1dac <Tiny_Flip+0x11a>
    1da0:	678d                	lui	a5,0x3
    1da2:	20c78793          	add	a5,a5,524 # 320c <CSWTCH.37>
    1da6:	97ba                	add	a5,a5,a4
    1da8:	0007c783          	lbu	a5,0(a5)
    1dac:	4712                	lw	a4,4(sp)
    1dae:	46b2                	lw	a3,12(sp)
    1db0:	fff70613          	add	a2,a4,-1
    1db4:	00261713          	sll	a4,a2,0x2
    1db8:	9732                	add	a4,a4,a2
    1dba:	9736                	add	a4,a4,a3
    1dbc:	973e                	add	a4,a4,a5
    1dbe:	00474583          	lbu	a1,4(a4)
    1dc2:	0ff00713          	li	a4,255
    1dc6:	04e58f63          	beq	a1,a4,1e24 <Tiny_Flip+0x192>
    1dca:	00279713          	sll	a4,a5,0x2
    1dce:	40e78733          	sub	a4,a5,a4
    1dd2:	4782                	lw	a5,0(sp)
    1dd4:	0706                	sll	a4,a4,0x1
    1dd6:	4615                	li	a2,5
    1dd8:	fbd78793          	add	a5,a5,-67
    1ddc:	973e                	add	a4,a4,a5
    1dde:	678d                	lui	a5,0x3
    1de0:	1d078793          	add	a5,a5,464 # 31d0 <BLOCK>
    1de4:	02c59763          	bne	a1,a2,1e12 <Tiny_Flip+0x180>
    1de8:	0006c503          	lbu	a0,0(a3)
    1dec:	660d                	lui	a2,0x3
    1dee:	1f460613          	add	a2,a2,500 # 31f4 <BLOCKREFLECT>
    1df2:	00151593          	sll	a1,a0,0x1
    1df6:	95aa                	add	a1,a1,a0
    1df8:	0586                	sll	a1,a1,0x1
    1dfa:	962e                	add	a2,a2,a1
    1dfc:	97ba                	add	a5,a5,a4
    1dfe:	963a                	add	a2,a2,a4
    1e00:	00064703          	lbu	a4,0(a2)
    1e04:	01e7c783          	lbu	a5,30(a5)
    1e08:	8f5d                	or	a4,a4,a5
    1e0a:	0284f363          	bgeu	s1,s0,1e30 <Tiny_Flip+0x19e>
    1e0e:	4781                	li	a5,0
    1e10:	aa3d                	j	1f4e <Tiny_Flip+0x2bc>
    1e12:	00159613          	sll	a2,a1,0x1
    1e16:	962e                	add	a2,a2,a1
    1e18:	0606                	sll	a2,a2,0x1
    1e1a:	97b2                	add	a5,a5,a2
    1e1c:	97ba                	add	a5,a5,a4
    1e1e:	0007c703          	lbu	a4,0(a5)
    1e22:	b7e5                	j	1e0a <Tiny_Flip+0x178>
    1e24:	4701                	li	a4,0
    1e26:	b7d5                	j	1e0a <Tiny_Flip+0x178>
    1e28:	4792                	lw	a5,4(sp)
    1e2a:	4701                	li	a4,0
    1e2c:	fe87e1e3          	bltu	a5,s0,1e0e <Tiny_Flip+0x17c>
    1e30:	4692                	lw	a3,4(sp)
    1e32:	00140793          	add	a5,s0,1
    1e36:	ce3e                	sw	a5,28(sp)
    1e38:	00140613          	add	a2,s0,1
    1e3c:	4781                	li	a5,0
    1e3e:	00d64863          	blt	a2,a3,1e4e <Tiny_Flip+0x1bc>
    1e42:	d236                	sw	a3,36(sp)
    1e44:	bde1                	j	1d1c <Tiny_Flip+0x8a>
    1e46:	4701                	li	a4,0
    1e48:	4781                	li	a5,0
    1e4a:	fe84f3e3          	bgeu	s1,s0,1e30 <Tiny_Flip+0x19e>
    1e4e:	8f5d                	or	a4,a4,a5
    1e50:	47a2                	lw	a5,8(sp)
    1e52:	468d                	li	a3,3
    1e54:	17f5                	add	a5,a5,-3
    1e56:	0ff7f793          	zext.b	a5,a5
    1e5a:	faf6eae3          	bltu	a3,a5,1e0e <Tiny_Flip+0x17c>
    1e5e:	47b2                	lw	a5,12(sp)
    1e60:	4612                	lw	a2,4(sp)
    1e62:	0527c783          	lbu	a5,82(a5)
    1e66:	00278693          	add	a3,a5,2
    1e6a:	1cc6c463          	blt	a3,a2,2032 <oled_min.c.bad5d6e2+0x5c>
    1e6e:	faf4e0e3          	bltu	s1,a5,1e0e <Tiny_Flip+0x17c>
    1e72:	4632                	lw	a2,12(sp)
    1e74:	05364403          	lbu	s0,83(a2)
    1e78:	12041e63          	bnez	s0,1fb4 <Tiny_Flip+0x322>
    1e7c:	4612                	lw	a2,4(sp)
    1e7e:	0ad61e63          	bne	a2,a3,1f3a <Tiny_Flip+0x2a8>
    1e82:	4522                	lw	a0,8(sp)
    1e84:	85a6                	mv	a1,s1
    1e86:	cc3a                	sw	a4,24(sp)
    1e88:	3969                	jal	1b22 <background>
    1e8a:	4762                	lw	a4,24(sp)
    1e8c:	00e567b3          	or	a5,a0,a4
    1e90:	4732                	lw	a4,12(sp)
    1e92:	0ff7f793          	zext.b	a5,a5
    1e96:	05674703          	lbu	a4,86(a4)
    1e9a:	1a977a63          	bgeu	a4,s1,204e <oled_min.c.bad5d6e2+0x78>
    1e9e:	ffb48713          	add	a4,s1,-5 # 3ffffb <_data_lma+0x3fc91f>
    1ea2:	0ff77713          	zext.b	a4,a4
    1ea6:	4685                	li	a3,1
    1ea8:	24e6fe63          	bgeu	a3,a4,2104 <oled_min.c.bad5d6e2+0x12e>
    1eac:	00f46533          	or	a0,s0,a5
    1eb0:	3935                	jal	1aec <I2C_write>
    1eb2:	4782                	lw	a5,0(sp)
    1eb4:	0785                	add	a5,a5,1
    1eb6:	c03e                	sw	a5,0(sp)
    1eb8:	47d2                	lw	a5,20(sp)
    1eba:	4702                	lw	a4,0(sp)
    1ebc:	0785                	add	a5,a5,1
    1ebe:	ca3e                	sw	a5,20(sp)
    1ec0:	47c2                	lw	a5,16(sp)
    1ec2:	0785                	add	a5,a5,1
    1ec4:	c83e                	sw	a5,16(sp)
    1ec6:	08000793          	li	a5,128
    1eca:	e2f710e3          	bne	a4,a5,1cea <Tiny_Flip+0x58>
    1ece:	391d                	jal	1b04 <I2C_stop>
    1ed0:	4792                	lw	a5,4(sp)
    1ed2:	0785                	add	a5,a5,1
    1ed4:	c23e                	sw	a5,4(sp)
    1ed6:	4712                	lw	a4,4(sp)
    1ed8:	47a1                	li	a5,8
    1eda:	dcf718e3          	bne	a4,a5,1caa <Tiny_Flip+0x18>
    1ede:	40a6                	lw	ra,72(sp)
    1ee0:	4416                	lw	s0,68(sp)
    1ee2:	4486                	lw	s1,64(sp)
    1ee4:	04c10113          	add	sp,sp,76
    1ee8:	8082                	ret
    1eea:	8081a583          	lw	a1,-2040(gp) # 20000008 <_data_vma+0x8>
    1eee:	47b2                	lw	a5,12(sp)
    1ef0:	d03a                	sw	a4,32(sp)
    1ef2:	57c8                	lw	a0,44(a5)
    1ef4:	ca0ff0ef          	jal	1394 <__subsf3>
    1ef8:	855ff0ef          	jal	174c <__fixunssfsi>
    1efc:	5702                	lw	a4,32(sp)
    1efe:	891d                	and	a0,a0,7
    1f00:	00941d63          	bne	s0,s1,1f1a <Tiny_Flip+0x288>
    1f04:	46e2                	lw	a3,24(sp)
    1f06:	87818793          	add	a5,gp,-1928 # 20000078 <BALL>
    1f0a:	97b6                	add	a5,a5,a3
    1f0c:	0007c783          	lbu	a5,0(a5)
    1f10:	00a797b3          	sll	a5,a5,a0
    1f14:	0ff7f793          	zext.b	a5,a5
    1f18:	bf1d                	j	1e4e <Tiny_Flip+0x1bc>
    1f1a:	5692                	lw	a3,36(sp)
    1f1c:	4672                	lw	a2,28(sp)
    1f1e:	4781                	li	a5,0
    1f20:	f2c697e3          	bne	a3,a2,1e4e <Tiny_Flip+0x1bc>
    1f24:	46e2                	lw	a3,24(sp)
    1f26:	87818793          	add	a5,gp,-1928 # 20000078 <BALL>
    1f2a:	97b6                	add	a5,a5,a3
    1f2c:	0007c783          	lbu	a5,0(a5)
    1f30:	46a1                	li	a3,8
    1f32:	8e89                	sub	a3,a3,a0
    1f34:	40d7d7b3          	sra	a5,a5,a3
    1f38:	bff1                	j	1f14 <Tiny_Flip+0x282>
    1f3a:	4692                	lw	a3,4(sp)
    1f3c:	40f687b3          	sub	a5,a3,a5
    1f40:	56e2                	lw	a3,56(sp)
    1f42:	078a                	sll	a5,a5,0x2
    1f44:	97b6                	add	a5,a5,a3
    1f46:	4682                	lw	a3,0(sp)
    1f48:	97b6                	add	a5,a5,a3
    1f4a:	ffd7c783          	lbu	a5,-3(a5)
    1f4e:	4522                	lw	a0,8(sp)
    1f50:	85a6                	mv	a1,s1
    1f52:	00e7e433          	or	s0,a5,a4
    1f56:	36f1                	jal	1b22 <background>
    1f58:	4712                	lw	a4,4(sp)
    1f5a:	00a467b3          	or	a5,s0,a0
    1f5e:	0ff7f793          	zext.b	a5,a5
    1f62:	c771                	beqz	a4,202e <oled_min.c.bad5d6e2+0x58>
    1f64:	4732                	lw	a4,12(sp)
    1f66:	05674683          	lbu	a3,86(a4)
    1f6a:	ffb48713          	add	a4,s1,-5
    1f6e:	1896e163          	bltu	a3,s1,20f0 <oled_min.c.bad5d6e2+0x11a>
    1f72:	4622                	lw	a2,8(sp)
    1f74:	07900693          	li	a3,121
    1f78:	12c6e263          	bltu	a3,a2,209c <oled_min.c.bad5d6e2+0xc6>
    1f7c:	46a2                	lw	a3,8(sp)
    1f7e:	07600713          	li	a4,118
    1f82:	0cd77663          	bgeu	a4,a3,204e <oled_min.c.bad5d6e2+0x78>
    1f86:	4752                	lw	a4,20(sp)
    1f88:	4685                	li	a3,1
    1f8a:	f8974703          	lbu	a4,-119(a4)
    1f8e:	8fd9                	or	a5,a5,a4
    1f90:	ffb48713          	add	a4,s1,-5
    1f94:	0ff77713          	zext.b	a4,a4
    1f98:	10e6fe63          	bgeu	a3,a4,20b4 <oled_min.c.bad5d6e2+0xde>
    1f9c:	853e                	mv	a0,a5
    1f9e:	36b9                	jal	1aec <I2C_write>
    1fa0:	4782                	lw	a5,0(sp)
    1fa2:	0785                	add	a5,a5,1
    1fa4:	c03e                	sw	a5,0(sp)
    1fa6:	47d2                	lw	a5,20(sp)
    1fa8:	0785                	add	a5,a5,1
    1faa:	ca3e                	sw	a5,20(sp)
    1fac:	47c2                	lw	a5,16(sp)
    1fae:	0785                	add	a5,a5,1
    1fb0:	c83e                	sw	a5,16(sp)
    1fb2:	bb25                	j	1cea <Tiny_Flip+0x58>
    1fb4:	00979a63          	bne	a5,s1,1fc8 <Tiny_Flip+0x336>
    1fb8:	47c2                	lw	a5,16(sp)
    1fba:	ffd7c783          	lbu	a5,-3(a5)
    1fbe:	008797b3          	sll	a5,a5,s0
    1fc2:	0ff7f793          	zext.b	a5,a5
    1fc6:	b761                	j	1f4e <Tiny_Flip+0x2bc>
    1fc8:	4612                	lw	a2,4(sp)
    1fca:	0785                	add	a5,a5,1
    1fcc:	02f61063          	bne	a2,a5,1fec <oled_min.c.bad5d6e2+0x16>
    1fd0:	47c2                	lw	a5,16(sp)
    1fd2:	46a1                	li	a3,8
    1fd4:	8e81                	sub	a3,a3,s0
    1fd6:	ffd7c783          	lbu	a5,-3(a5)
    1fda:	40d7d7b3          	sra	a5,a5,a3
    1fde:	46c2                	lw	a3,16(sp)
    1fe0:	0016c683          	lbu	a3,1(a3)
    1fe4:	008696b3          	sll	a3,a3,s0
    1fe8:	8fd5                	or	a5,a5,a3
    1fea:	bfe1                	j	1fc2 <Tiny_Flip+0x330>
    1fec:	4612                	lw	a2,4(sp)
    1fee:	4781                	li	a5,0
    1ff0:	f4d61fe3          	bne	a2,a3,1f4e <Tiny_Flip+0x2bc>
    1ff4:	47c2                	lw	a5,16(sp)
    1ff6:	4522                	lw	a0,8(sp)
    1ff8:	46a1                	li	a3,8
    1ffa:	0017c783          	lbu	a5,1(a5)
    1ffe:	8e81                	sub	a3,a3,s0
    2000:	85a6                	mv	a1,s1
    2002:	40d7d433          	sra	s0,a5,a3
    2006:	8c59                	or	s0,s0,a4
    2008:	3e29                	jal	1b22 <background>
    200a:	4732                	lw	a4,12(sp)
    200c:	0ff47413          	zext.b	s0,s0
    2010:	008567b3          	or	a5,a0,s0
    2014:	05674703          	lbu	a4,86(a4)
    2018:	0ff7f793          	zext.b	a5,a5
    201c:	f69770e3          	bgeu	a4,s1,1f7c <Tiny_Flip+0x2ea>
    2020:	ffb48713          	add	a4,s1,-5
    2024:	0ff77713          	zext.b	a4,a4
    2028:	4685                	li	a3,1
    202a:	0ce6fd63          	bgeu	a3,a4,2104 <oled_min.c.bad5d6e2+0x12e>
    202e:	4401                	li	s0,0
    2030:	bdb5                	j	1eac <Tiny_Flip+0x21a>
    2032:	4522                	lw	a0,8(sp)
    2034:	85a6                	mv	a1,s1
    2036:	cc3a                	sw	a4,24(sp)
    2038:	34ed                	jal	1b22 <background>
    203a:	4762                	lw	a4,24(sp)
    203c:	00a767b3          	or	a5,a4,a0
    2040:	4732                	lw	a4,12(sp)
    2042:	0ff7f793          	zext.b	a5,a5
    2046:	05674703          	lbu	a4,86(a4)
    204a:	fc976be3          	bltu	a4,s1,2020 <oled_min.c.bad5d6e2+0x4a>
    204e:	4602                	lw	a2,0(sp)
    2050:	ffb48713          	add	a4,s1,-5
    2054:	0ff77713          	zext.b	a4,a4
    2058:	0605                	add	a2,a2,1
    205a:	cc32                	sw	a2,24(sp)
    205c:	4652                	lw	a2,20(sp)
    205e:	4685                	li	a3,1
    2060:	00160413          	add	s0,a2,1
    2064:	4642                	lw	a2,16(sp)
    2066:	0605                	add	a2,a2,1
    2068:	ce32                	sw	a2,28(sp)
    206a:	00e6f963          	bgeu	a3,a4,207c <oled_min.c.bad5d6e2+0xa6>
    206e:	853e                	mv	a0,a5
    2070:	3cb5                	jal	1aec <I2C_write>
    2072:	47e2                	lw	a5,24(sp)
    2074:	ca22                	sw	s0,20(sp)
    2076:	c03e                	sw	a5,0(sp)
    2078:	47f2                	lw	a5,28(sp)
    207a:	bf1d                	j	1fb0 <Tiny_Flip+0x31e>
    207c:	46a2                	lw	a3,8(sp)
    207e:	07400713          	li	a4,116
    2082:	02d76963          	bltu	a4,a3,20b4 <oled_min.c.bad5d6e2+0xde>
    2086:	853e                	mv	a0,a5
    2088:	3495                	jal	1aec <I2C_write>
    208a:	47e2                	lw	a5,24(sp)
    208c:	ca22                	sw	s0,20(sp)
    208e:	c03e                	sw	a5,0(sp)
    2090:	47f2                	lw	a5,28(sp)
    2092:	c83e                	sw	a5,16(sp)
    2094:	00014783          	lbu	a5,0(sp)
    2098:	c43e                	sw	a5,8(sp)
    209a:	b9b1                	j	1cf6 <Tiny_Flip+0x64>
    209c:	0ff77713          	zext.b	a4,a4
    20a0:	4685                	li	a3,1
    20a2:	4401                	li	s0,0
    20a4:	e0e6e4e3          	bltu	a3,a4,1eac <Tiny_Flip+0x21a>
    20a8:	46a2                	lw	a3,8(sp)
    20aa:	07b00713          	li	a4,123
    20ae:	4401                	li	s0,0
    20b0:	ded76ee3          	bltu	a4,a3,1eac <Tiny_Flip+0x21a>
    20b4:	4702                	lw	a4,0(sp)
    20b6:	668d                	lui	a3,0x3
    20b8:	22468413          	add	s0,a3,548 # 3224 <DIGITAL>
    20bc:	4692                	lw	a3,4(sp)
    20be:	f8b70713          	add	a4,a4,-117
    20c2:	c43a                	sw	a4,8(sp)
    20c4:	4715                	li	a4,5
    20c6:	04e69a63          	bne	a3,a4,211a <oled_min.c.bad5d6e2+0x144>
    20ca:	cc3e                	sw	a5,24(sp)
    20cc:	47b2                	lw	a5,12(sp)
    20ce:	45a9                	li	a1,10
    20d0:	0547c503          	lbu	a0,84(a5)
    20d4:	969ff0ef          	jal	1a3c <__hidden___udivsi3>
    20d8:	0ff57513          	zext.b	a0,a0
    20dc:	47a2                	lw	a5,8(sp)
    20de:	00351713          	sll	a4,a0,0x3
    20e2:	8f09                	sub	a4,a4,a0
    20e4:	9722                	add	a4,a4,s0
    20e6:	973e                	add	a4,a4,a5
    20e8:	00074403          	lbu	s0,0(a4)
    20ec:	47e2                	lw	a5,24(sp)
    20ee:	bb7d                	j	1eac <Tiny_Flip+0x21a>
    20f0:	0ff77713          	zext.b	a4,a4
    20f4:	4685                	li	a3,1
    20f6:	f2e6ece3          	bltu	a3,a4,202e <oled_min.c.bad5d6e2+0x58>
    20fa:	46a2                	lw	a3,8(sp)
    20fc:	07400713          	li	a4,116
    2100:	fad764e3          	bltu	a4,a3,20a8 <oled_min.c.bad5d6e2+0xd2>
    2104:	853e                	mv	a0,a5
    2106:	32dd                	jal	1aec <I2C_write>
    2108:	4782                	lw	a5,0(sp)
    210a:	0785                	add	a5,a5,1
    210c:	c03e                	sw	a5,0(sp)
    210e:	47d2                	lw	a5,20(sp)
    2110:	0785                	add	a5,a5,1
    2112:	ca3e                	sw	a5,20(sp)
    2114:	47c2                	lw	a5,16(sp)
    2116:	0785                	add	a5,a5,1
    2118:	bfad                	j	2092 <oled_min.c.bad5d6e2+0xbc>
    211a:	ce3e                	sw	a5,28(sp)
    211c:	47b2                	lw	a5,12(sp)
    211e:	45a9                	li	a1,10
    2120:	0547c703          	lbu	a4,84(a5)
    2124:	853a                	mv	a0,a4
    2126:	cc3a                	sw	a4,24(sp)
    2128:	915ff0ef          	jal	1a3c <__hidden___udivsi3>
    212c:	0ff57513          	zext.b	a0,a0
    2130:	4762                	lw	a4,24(sp)
    2132:	00251693          	sll	a3,a0,0x2
    2136:	96aa                	add	a3,a3,a0
    2138:	0686                	sll	a3,a3,0x1
    213a:	8f15                	sub	a4,a4,a3
    213c:	47a2                	lw	a5,8(sp)
    213e:	00371693          	sll	a3,a4,0x3
    2142:	40e68733          	sub	a4,a3,a4
    2146:	943a                	add	s0,s0,a4
    2148:	943e                	add	s0,s0,a5
    214a:	00044403          	lbu	s0,0(s0)
    214e:	47f2                	lw	a5,28(sp)
    2150:	bbb1                	j	1eac <Tiny_Flip+0x21a>
    2152:	5722                	lw	a4,40(sp)
    2154:	4785                	li	a5,1
    2156:	00f71863          	bne	a4,a5,2166 <oled_min.c.bad5d6e2+0x190>
    215a:	57c2                	lw	a5,48(sp)
    215c:	4702                	lw	a4,0(sp)
    215e:	97ba                	add	a5,a5,a4
    2160:	0007c503          	lbu	a0,0(a5)
    2164:	b3b1                	j	1eb0 <Tiny_Flip+0x21e>
    2166:	4522                	lw	a0,8(sp)
    2168:	85a6                	mv	a1,s1
    216a:	3a65                	jal	1b22 <background>
    216c:	b391                	j	1eb0 <Tiny_Flip+0x21e>

0000216e <main>:
    216e:	400117b7          	lui	a5,0x40011
    2172:	4398                	lw	a4,0(a5)
    2174:	76c5                	lui	a3,0xffff1
    2176:	16fd                	add	a3,a3,-1 # ffff0fff <__global_pointer$+0xdfff07ff>
    2178:	f8410113          	add	sp,sp,-124
    217c:	8f75                	and	a4,a4,a3
    217e:	66a1                	lui	a3,0x8
    2180:	dc86                	sw	ra,120(sp)
    2182:	daa2                	sw	s0,116(sp)
    2184:	d8a6                	sw	s1,112(sp)
    2186:	8f55                	or	a4,a4,a3
    2188:	c398                	sw	a4,0(a5)
    218a:	4721                	li	a4,8
    218c:	cb98                	sw	a4,16(a5)
    218e:	4398                	lw	a4,0(a5)
    2190:	f10006b7          	lui	a3,0xf1000
    2194:	16fd                	add	a3,a3,-1 # f0ffffff <__global_pointer$+0xd0fff7ff>
    2196:	8f75                	and	a4,a4,a3
    2198:	080006b7          	lui	a3,0x8000
    219c:	8f55                	or	a4,a4,a3
    219e:	c398                	sw	a4,0(a5)
    21a0:	04000713          	li	a4,64
    21a4:	cb98                	sw	a4,16(a5)
    21a6:	4398                	lw	a4,0(a5)
    21a8:	fff106b7          	lui	a3,0xfff10
    21ac:	16fd                	add	a3,a3,-1 # fff0ffff <__global_pointer$+0xdff0f7ff>
    21ae:	8f75                	and	a4,a4,a3
    21b0:	000806b7          	lui	a3,0x80
    21b4:	8f55                	or	a4,a4,a3
    21b6:	c398                	sw	a4,0(a5)
    21b8:	4741                	li	a4,16
    21ba:	cb98                	sw	a4,16(a5)
    21bc:	4398                	lw	a4,0(a5)
    21be:	800006b7          	lui	a3,0x80000
    21c2:	757d                	lui	a0,0xfffff
    21c4:	0712                	sll	a4,a4,0x4
    21c6:	8311                	srl	a4,a4,0x4
    21c8:	8f55                	or	a4,a4,a3
    21ca:	c398                	sw	a4,0(a5)
    21cc:	08000713          	li	a4,128
    21d0:	cb98                	sw	a4,16(a5)
    21d2:	80078713          	add	a4,a5,-2048 # 40010800 <__global_pointer$+0x20010000>
    21d6:	4314                	lw	a3,0(a4)
    21d8:	0ff50613          	add	a2,a0,255 # fffff0ff <__global_pointer$+0xdfffe8ff>
    21dc:	6585                	lui	a1,0x1
    21de:	8ef1                	and	a3,a3,a2
    21e0:	80058613          	add	a2,a1,-2048 # 800 <__divdf3+0x1bc>
    21e4:	8ed1                	or	a3,a3,a2
    21e6:	c314                	sw	a3,0(a4)
    21e8:	4611                	li	a2,4
    21ea:	cb10                	sw	a2,16(a4)
    21ec:	4394                	lw	a3,0(a5)
    21ee:	4305                	li	t1,1
    21f0:	002002b7          	lui	t0,0x200
    21f4:	9ac1                	and	a3,a3,-16
    21f6:	0086e693          	or	a3,a3,8
    21fa:	c394                	sw	a3,0(a5)
    21fc:	0067a823          	sw	t1,16(a5)
    2200:	4314                	lw	a3,0(a4)
    2202:	053d                	add	a0,a0,15
    2204:	dd058593          	add	a1,a1,-560
    2208:	f0f6f693          	and	a3,a3,-241
    220c:	0106e693          	or	a3,a3,16
    2210:	c314                	sw	a3,0(a4)
    2212:	4689                	li	a3,2
    2214:	cb14                	sw	a3,16(a4)
    2216:	40021737          	lui	a4,0x40021
    221a:	4f14                	lw	a3,24(a4)
    221c:	648d                	lui	s1,0x3
    221e:	4401                	li	s0,0
    2220:	0116e693          	or	a3,a3,17
    2224:	cf14                	sw	a3,24(a4)
    2226:	4f54                	lw	a3,28(a4)
    2228:	66c48493          	add	s1,s1,1644 # 366c <OLED_INIT_CMD>
    222c:	0056e6b3          	or	a3,a3,t0
    2230:	cf54                	sw	a3,28(a4)
    2232:	4398                	lw	a4,0(a5)
    2234:	8f69                	and	a4,a4,a0
    2236:	8f4d                	or	a4,a4,a1
    2238:	c398                	sw	a4,0(a5)
    223a:	40005737          	lui	a4,0x40005
    223e:	77e1                	lui	a5,0xffff8
    2240:	40c71223          	sh	a2,1028(a4) # 40005404 <__global_pointer$+0x20004c04>
    2244:	07a9                	add	a5,a5,10 # ffff800a <__global_pointer$+0xdfff780a>
    2246:	40f71e23          	sh	a5,1052(a4)
    224a:	40671023          	sh	t1,1024(a4)
    224e:	32fd                	jal	1c3c <I2C_start.constprop.0>
    2250:	4501                	li	a0,0
    2252:	89bff0ef          	jal	1aec <I2C_write>
    2256:	009407b3          	add	a5,s0,s1
    225a:	0007c503          	lbu	a0,0(a5)
    225e:	0405                	add	s0,s0,1
    2260:	88dff0ef          	jal	1aec <I2C_write>
    2264:	47c5                	li	a5,17
    2266:	fef418e3          	bne	s0,a5,2256 <system.c.e6831600+0xcf>
    226a:	89bff0ef          	jal	1b04 <I2C_stop>
    226e:	40021737          	lui	a4,0x40021
    2272:	4f1c                	lw	a5,24(a4)
    2274:	40012437          	lui	s0,0x40012
    2278:	40040413          	add	s0,s0,1024 # 40012400 <__global_pointer$+0x20011c00>
    227c:	2017e793          	or	a5,a5,513
    2280:	cf1c                	sw	a5,24(a4)
    2282:	000e07b7          	lui	a5,0xe0
    2286:	0785                	add	a5,a5,1 # e0001 <_data_lma+0xdc925>
    2288:	c41c                	sw	a5,8(s0)
    228a:	07800513          	li	a0,120
    228e:	945ff0ef          	jal	1bd2 <DLY_ticks>
    2292:	441c                	lw	a5,8(s0)
    2294:	400126b7          	lui	a3,0x40012
    2298:	0087e793          	or	a5,a5,8
    229c:	c41c                	sw	a5,8(s0)
    229e:	40068793          	add	a5,a3,1024 # 40012400 <__global_pointer$+0x20011c00>
    22a2:	4798                	lw	a4,8(a5)
    22a4:	8b21                	and	a4,a4,8
    22a6:	ff65                	bnez	a4,229e <system.c.e6831600+0x117>
    22a8:	4798                	lw	a4,8(a5)
    22aa:	00476713          	or	a4,a4,4
    22ae:	c798                	sw	a4,8(a5)
    22b0:	40012737          	lui	a4,0x40012
    22b4:	40070793          	add	a5,a4,1024 # 40012400 <__global_pointer$+0x20011c00>
    22b8:	479c                	lw	a5,8(a5)
    22ba:	8b91                	and	a5,a5,4
    22bc:	ffe5                	bnez	a5,22b4 <system.c.e6831600+0x12d>
    22be:	8201a783          	lw	a5,-2016(gp) # 20000020 <_data_vma+0x20>
    22c2:	ca3e                	sw	a5,20(sp)
    22c4:	082c                	add	a1,sp,24
    22c6:	4505                	li	a0,1
    22c8:	32e9                	jal	1c92 <Tiny_Flip>
    22ca:	40011737          	lui	a4,0x40011
    22ce:	80070793          	add	a5,a4,-2048 # 40010800 <__global_pointer$+0x20010000>
    22d2:	479c                	lw	a5,8(a5)
    22d4:	8b91                	and	a5,a5,4
    22d6:	c781                	beqz	a5,22de <system.c.e6831600+0x157>
    22d8:	471c                	lw	a5,8(a4)
    22da:	8b85                	and	a5,a5,1
    22dc:	fbed                	bnez	a5,22ce <system.c.e6831600+0x147>
    22de:	6785                	lui	a5,0x1
    22e0:	0785                	add	a5,a5,1 # 1001 <__gesf2+0x5>
    22e2:	06f11623          	sh	a5,108(sp)
    22e6:	082c                	add	a1,sp,24
    22e8:	478d                	li	a5,3
    22ea:	4501                	li	a0,0
    22ec:	06f10723          	sb	a5,110(sp)
    22f0:	00010c23          	sb	zero,24(sp)
    22f4:	640d                	lui	s0,0x3
    22f6:	89fff0ef          	jal	1b94 <LoadLevel>
    22fa:	082c                	add	a1,sp,24
    22fc:	4509                	li	a0,2
    22fe:	68040413          	add	s0,s0,1664 # 3680 <Music1>
    2302:	991ff0ef          	jal	1c92 <Tiny_Flip>
    2306:	05c40493          	add	s1,s0,92
    230a:	00144583          	lbu	a1,1(s0)
    230e:	00044503          	lbu	a0,0(s0)
    2312:	0409                	add	s0,s0,2
    2314:	f9c58593          	add	a1,a1,-100
    2318:	0ff5f593          	zext.b	a1,a1
    231c:	8cdff0ef          	jal	1be8 <JOY_sound>
    2320:	fe8495e3          	bne	s1,s0,230a <system.c.e6831600+0x183>
    2324:	06c14503          	lbu	a0,108(sp)
    2328:	082c                	add	a1,sp,24
    232a:	157d                	add	a0,a0,-1
    232c:	0ff57513          	zext.b	a0,a0
    2330:	865ff0ef          	jal	1b94 <LoadLevel>
    2334:	40200793          	li	a5,1026
    2338:	06f11523          	sh	a5,106(sp)
    233c:	81c1a783          	lw	a5,-2020(gp) # 2000001c <_data_vma+0x1c>
    2340:	06f14703          	lbu	a4,111(sp)
    2344:	00010c23          	sb	zero,24(sp)
    2348:	de3e                	sw	a5,60(sp)
    234a:	c0be                	sw	a5,64(sp)
    234c:	47d2                	lw	a5,20(sp)
    234e:	c2be                	sw	a5,68(sp)
    2350:	c4be                	sw	a5,72(sp)
    2352:	8081a783          	lw	a5,-2040(gp) # 20000008 <_data_vma+0x8>
    2356:	c6be                	sw	a5,76(sp)
    2358:	c8be                	sw	a5,80(sp)
    235a:	02000793          	li	a5,32
    235e:	0ee7e763          	bltu	a5,a4,244c <system.c.e6831600+0x2c5>
    2362:	8141a783          	lw	a5,-2028(gp) # 20000014 <_data_vma+0x14>
    2366:	cabe                	sw	a5,84(sp)
    2368:	ccbe                	sw	a5,88(sp)
    236a:	00010ca3          	sb	zero,25(sp)
    236e:	06f14783          	lbu	a5,111(sp)
    2372:	c43e                	sw	a5,8(sp)
    2374:	8b9d                	and	a5,a5,7
    2376:	ebb5                	bnez	a5,23ea <system.c.e6831600+0x263>
    2378:	400117b7          	lui	a5,0x40011
    237c:	479c                	lw	a5,8(a5)
    237e:	0407f793          	and	a5,a5,64
    2382:	e38d                	bnez	a5,23a4 <system.c.e6831600+0x21d>
    2384:	06b14703          	lbu	a4,107(sp)
    2388:	4699                	li	a3,6
    238a:	06a14783          	lbu	a5,106(sp)
    238e:	0ce6e263          	bltu	a3,a4,2452 <system.c.e6831600+0x2cb>
    2392:	078e                	sll	a5,a5,0x3
    2394:	97ba                	add	a5,a5,a4
    2396:	02b00693          	li	a3,43
    239a:	00f6c563          	blt	a3,a5,23a4 <system.c.e6831600+0x21d>
    239e:	0705                	add	a4,a4,1
    23a0:	06e105a3          	sb	a4,107(sp)
    23a4:	400117b7          	lui	a5,0x40011
    23a8:	479c                	lw	a5,8(a5)
    23aa:	8ba1                	and	a5,a5,8
    23ac:	ef91                	bnez	a5,23c8 <system.c.e6831600+0x241>
    23ae:	06b14703          	lbu	a4,107(sp)
    23b2:	06a14783          	lbu	a5,106(sp)
    23b6:	c745                	beqz	a4,245e <system.c.e6831600+0x2d7>
    23b8:	078e                	sll	a5,a5,0x3
    23ba:	97ba                	add	a5,a5,a4
    23bc:	4691                	li	a3,4
    23be:	00f6d563          	bge	a3,a5,23c8 <system.c.e6831600+0x241>
    23c2:	177d                	add	a4,a4,-1
    23c4:	06e105a3          	sb	a4,107(sp)
    23c8:	01914783          	lbu	a5,25(sp)
    23cc:	ef99                	bnez	a5,23ea <system.c.e6831600+0x263>
    23ce:	40011737          	lui	a4,0x40011
    23d2:	80070793          	add	a5,a4,-2048 # 40010800 <__global_pointer$+0x20010000>
    23d6:	479c                	lw	a5,8(a5)
    23d8:	8b91                	and	a5,a5,4
    23da:	c789                	beqz	a5,23e4 <system.c.e6831600+0x25d>
    23dc:	471c                	lw	a5,8(a4)
    23de:	8b85                	and	a5,a5,1
    23e0:	1c0798e3          	bnez	a5,2db0 <system.c.e6831600+0xc29>
    23e4:	4785                	li	a5,1
    23e6:	00f10ca3          	sb	a5,25(sp)
    23ea:	06d14783          	lbu	a5,109(sp)
    23ee:	4522                	lw	a0,8(sp)
    23f0:	85be                	mv	a1,a5
    23f2:	c83e                	sw	a5,16(sp)
    23f4:	e74ff0ef          	jal	1a68 <__umodsi3>
    23f8:	0ff57513          	zext.b	a0,a0
    23fc:	3a051663          	bnez	a0,27a8 <system.c.e6831600+0x621>
    2400:	04010e23          	sb	zero,92(sp)
    2404:	c602                	sw	zero,12(sp)
    2406:	5572                	lw	a0,60(sp)
    2408:	4416                	lw	s0,68(sp)
    240a:	4736                	lw	a4,76(sp)
    240c:	46d6                	lw	a3,84(sp)
    240e:	01914783          	lbu	a5,25(sp)
    2412:	c0aa                	sw	a0,64(sp)
    2414:	c4a2                	sw	s0,72(sp)
    2416:	c8ba                	sw	a4,80(sp)
    2418:	ccb6                	sw	a3,88(sp)
    241a:	30078463          	beqz	a5,2722 <system.c.e6831600+0x59b>
    241e:	47b2                	lw	a5,12(sp)
    2420:	4615                	li	a2,5
    2422:	17fd                	add	a5,a5,-1 # 40010fff <__global_pointer$+0x200107ff>
    2424:	0ff7f793          	zext.b	a5,a5
    2428:	04f66663          	bltu	a2,a5,2474 <system.c.e6831600+0x2ed>
    242c:	660d                	lui	a2,0x3
    242e:	078a                	sll	a5,a5,0x2
    2430:	f8860613          	add	a2,a2,-120 # 2f88 <__clz_tab+0x100>
    2434:	97b2                	add	a5,a5,a2
    2436:	439c                	lw	a5,0(a5)
    2438:	8782                	jr	a5
    243a:	082c                	add	a1,sp,24
    243c:	f58ff0ef          	jal	1b94 <LoadLevel>
    2440:	06c14783          	lbu	a5,108(sp)
    2444:	0785                	add	a5,a5,1
    2446:	06f10623          	sb	a5,108(sp)
    244a:	b5ed                	j	2334 <system.c.e6831600+0x1ad>
    244c:	8101a783          	lw	a5,-2032(gp) # 20000010 <_data_vma+0x10>
    2450:	bf19                	j	2366 <system.c.e6831600+0x1df>
    2452:	0785                	add	a5,a5,1
    2454:	060105a3          	sb	zero,107(sp)
    2458:	06f10523          	sb	a5,106(sp)
    245c:	b7a1                	j	23a4 <system.c.e6831600+0x21d>
    245e:	471d                	li	a4,7
    2460:	17fd                	add	a5,a5,-1
    2462:	06e105a3          	sb	a4,107(sp)
    2466:	06f10523          	sb	a5,106(sp)
    246a:	bfb9                	j	23c8 <system.c.e6831600+0x241>
    246c:	800007b7          	lui	a5,0x80000
    2470:	8fb9                	xor	a5,a5,a4
    2472:	c8be                	sw	a5,80(sp)
    2474:	45c6                	lw	a1,80(sp)
    2476:	4506                	lw	a0,64(sp)
    2478:	857fe0ef          	jal	cce <__addsf3>
    247c:	45e6                	lw	a1,88(sp)
    247e:	c22a                	sw	a0,4(sp)
    2480:	c0aa                	sw	a0,64(sp)
    2482:	8522                	mv	a0,s0
    2484:	84bfe0ef          	jal	cce <__addsf3>
    2488:	c02a                	sw	a0,0(sp)
    248a:	c4aa                	sw	a0,72(sp)
    248c:	8241a583          	lw	a1,-2012(gp) # 20000024 <_data_vma+0x24>
    2490:	4512                	lw	a0,4(sp)
    2492:	b6bfe0ef          	jal	ffc <__gesf2>
    2496:	0aa04463          	bgtz	a0,253e <system.c.e6831600+0x3b7>
    249a:	8281a583          	lw	a1,-2008(gp) # 20000028 <_data_vma+0x28>
    249e:	4502                	lw	a0,0(sp)
    24a0:	b5dfe0ef          	jal	ffc <__gesf2>
    24a4:	08a04d63          	bgtz	a0,253e <system.c.e6831600+0x3b7>
    24a8:	82c1a583          	lw	a1,-2004(gp) # 2000002c <_data_vma+0x2c>
    24ac:	4502                	lw	a0,0(sp)
    24ae:	be3fe0ef          	jal	1090 <__lesf2>
    24b2:	08054663          	bltz	a0,253e <system.c.e6831600+0x3b7>
    24b6:	8301a583          	lw	a1,-2000(gp) # 20000030 <_data_vma+0x30>
    24ba:	4512                	lw	a0,4(sp)
    24bc:	06a14483          	lbu	s1,106(sp)
    24c0:	06b14403          	lbu	s0,107(sp)
    24c4:	b39fe0ef          	jal	ffc <__gesf2>
    24c8:	0ca04a63          	bgtz	a0,259c <system.c.e6831600+0x415>
    24cc:	8341a583          	lw	a1,-1996(gp) # 20000034 <_data_vma+0x34>
    24d0:	4512                	lw	a0,4(sp)
    24d2:	bbffe0ef          	jal	1090 <__lesf2>
    24d6:	0c054363          	bltz	a0,259c <system.c.e6831600+0x415>
    24da:	048e                	sll	s1,s1,0x3
    24dc:	009407b3          	add	a5,s0,s1
    24e0:	0ff7f413          	zext.b	s0,a5
    24e4:	8522                	mv	a0,s0
    24e6:	ab8ff0ef          	jal	179e <__floatsisf>
    24ea:	84aa                	mv	s1,a0
    24ec:	85aa                	mv	a1,a0
    24ee:	4502                	lw	a0,0(sp)
    24f0:	ba1fe0ef          	jal	1090 <__lesf2>
    24f4:	0a054463          	bltz	a0,259c <system.c.e6831600+0x415>
    24f8:	01040513          	add	a0,s0,16
    24fc:	aa2ff0ef          	jal	179e <__floatsisf>
    2500:	85aa                	mv	a1,a0
    2502:	4502                	lw	a0,0(sp)
    2504:	af9fe0ef          	jal	ffc <__gesf2>
    2508:	08a04a63          	bgtz	a0,259c <system.c.e6831600+0x415>
    250c:	4502                	lw	a0,0(sp)
    250e:	85a6                	mv	a1,s1
    2510:	e85fe0ef          	jal	1394 <__subsf3>
    2514:	8381a583          	lw	a1,-1992(gp) # 20000038 <_data_vma+0x38>
    2518:	c0dfe0ef          	jal	1124 <__mulsf3>
    251c:	83c1a583          	lw	a1,-1988(gp) # 2000003c <_data_vma+0x3c>
    2520:	c05fe0ef          	jal	1124 <__mulsf3>
    2524:	8401a583          	lw	a1,-1984(gp) # 20000040 <_data_vma+0x40>
    2528:	e6dfe0ef          	jal	1394 <__subsf3>
    252c:	9c2ff0ef          	jal	16ee <__fixsfsi>
    2530:	04a10e23          	sb	a0,92(sp)
    2534:	45a9                	li	a1,10
    2536:	03c00513          	li	a0,60
    253a:	eaeff0ef          	jal	1be8 <JOY_sound>
    253e:	47b2                	lw	a5,12(sp)
    2540:	0785                	add	a5,a5,1 # 80000001 <__global_pointer$+0x5ffff801>
    2542:	0ff7f793          	zext.b	a5,a5
    2546:	c63e                	sw	a5,12(sp)
    2548:	4732                	lw	a4,12(sp)
    254a:	479d                	li	a5,7
    254c:	eaf71de3          	bne	a4,a5,2406 <system.c.e6831600+0x27f>
    2550:	aac9                	j	2722 <system.c.e6831600+0x59b>
    2552:	800007b7          	lui	a5,0x80000
    2556:	8fb5                	xor	a5,a5,a3
    2558:	ccbe                	sw	a5,88(sp)
    255a:	bf29                	j	2474 <system.c.e6831600+0x2ed>
    255c:	800007b7          	lui	a5,0x80000
    2560:	8f3d                	xor	a4,a4,a5
    2562:	c8ba                	sw	a4,80(sp)
    2564:	bfcd                	j	2556 <system.c.e6831600+0x3cf>
    2566:	800007b7          	lui	a5,0x80000
    256a:	8ebd                	xor	a3,a3,a5
    256c:	c8b6                	sw	a3,80(sp)
    256e:	8fb9                	xor	a5,a5,a4
    2570:	b7e5                	j	2558 <system.c.e6831600+0x3d1>
    2572:	8081a583          	lw	a1,-2040(gp) # 20000008 <_data_vma+0x8>
    2576:	f58fe0ef          	jal	cce <__addsf3>
    257a:	8181a783          	lw	a5,-2024(gp) # 20000018 <_data_vma+0x18>
    257e:	c0aa                	sw	a0,64(sp)
    2580:	c8be                	sw	a5,80(sp)
    2582:	8081a783          	lw	a5,-2040(gp) # 20000008 <_data_vma+0x8>
    2586:	ccbe                	sw	a5,88(sp)
    2588:	b5f5                	j	2474 <system.c.e6831600+0x2ed>
    258a:	8081a583          	lw	a1,-2040(gp) # 20000008 <_data_vma+0x8>
    258e:	f40fe0ef          	jal	cce <__addsf3>
    2592:	8181a783          	lw	a5,-2024(gp) # 20000018 <_data_vma+0x18>
    2596:	c0aa                	sw	a0,64(sp)
    2598:	c8be                	sw	a5,80(sp)
    259a:	b7f5                	j	2586 <system.c.e6831600+0x3ff>
    259c:	8441a583          	lw	a1,-1980(gp) # 20000044 <_data_vma+0x44>
    25a0:	4512                	lw	a0,4(sp)
    25a2:	a5bfe0ef          	jal	ffc <__gesf2>
    25a6:	06054663          	bltz	a0,2612 <system.c.e6831600+0x48b>
    25aa:	8481a583          	lw	a1,-1976(gp) # 20000048 <_data_vma+0x48>
    25ae:	4512                	lw	a0,4(sp)
    25b0:	ae1fe0ef          	jal	1090 <__lesf2>
    25b4:	04055f63          	bgez	a0,2612 <system.c.e6831600+0x48b>
    25b8:	81c1a583          	lw	a1,-2020(gp) # 2000001c <_data_vma+0x1c>
    25bc:	4502                	lw	a0,0(sp)
    25be:	00010d23          	sb	zero,26(sp)
    25c2:	a3bfe0ef          	jal	ffc <__gesf2>
    25c6:	84c1a583          	lw	a1,-1972(gp) # 2000004c <_data_vma+0x4c>
    25ca:	54054363          	bltz	a0,2b10 <system.c.e6831600+0x989>
    25ce:	4502                	lw	a0,0(sp)
    25d0:	ac1fe0ef          	jal	1090 <__lesf2>
    25d4:	84c1a583          	lw	a1,-1972(gp) # 2000004c <_data_vma+0x4c>
    25d8:	52055c63          	bgez	a0,2b10 <system.c.e6831600+0x989>
    25dc:	00010da3          	sb	zero,27(sp)
    25e0:	4481                	li	s1,0
    25e2:	4781                	li	a5,0
    25e4:	00279413          	sll	s0,a5,0x2
    25e8:	943e                	add	s0,s0,a5
    25ea:	05840793          	add	a5,s0,88
    25ee:	0838                	add	a4,sp,24
    25f0:	00e78433          	add	s0,a5,a4
    25f4:	9426                	add	s0,s0,s1
    25f6:	fac44783          	lbu	a5,-84(s0)
    25fa:	4715                	li	a4,5
    25fc:	6ce79663          	bne	a5,a4,2cc8 <system.c.e6831600+0xb41>
    2600:	03200593          	li	a1,50
    2604:	0d200513          	li	a0,210
    2608:	de0ff0ef          	jal	1be8 <JOY_sound>
    260c:	00010c23          	sb	zero,24(sp)
    2610:	b73d                	j	253e <system.c.e6831600+0x3b7>
    2612:	8481a583          	lw	a1,-1976(gp) # 20000048 <_data_vma+0x48>
    2616:	4512                	lw	a0,4(sp)
    2618:	9e5fe0ef          	jal	ffc <__gesf2>
    261c:	00054963          	bltz	a0,262e <system.c.e6831600+0x4a7>
    2620:	8501a583          	lw	a1,-1968(gp) # 20000050 <_data_vma+0x50>
    2624:	4512                	lw	a0,4(sp)
    2626:	a6bfe0ef          	jal	1090 <__lesf2>
    262a:	26054163          	bltz	a0,288c <system.c.e6831600+0x705>
    262e:	8501a583          	lw	a1,-1968(gp) # 20000050 <_data_vma+0x50>
    2632:	4512                	lw	a0,4(sp)
    2634:	9c9fe0ef          	jal	ffc <__gesf2>
    2638:	00054963          	bltz	a0,264a <system.c.e6831600+0x4c3>
    263c:	8541a583          	lw	a1,-1964(gp) # 20000054 <_data_vma+0x54>
    2640:	4512                	lw	a0,4(sp)
    2642:	a4ffe0ef          	jal	1090 <__lesf2>
    2646:	20054d63          	bltz	a0,2860 <system.c.e6831600+0x6d9>
    264a:	8541a583          	lw	a1,-1964(gp) # 20000054 <_data_vma+0x54>
    264e:	4512                	lw	a0,4(sp)
    2650:	9adfe0ef          	jal	ffc <__gesf2>
    2654:	00054963          	bltz	a0,2666 <system.c.e6831600+0x4df>
    2658:	8581a583          	lw	a1,-1960(gp) # 20000058 <_data_vma+0x58>
    265c:	4512                	lw	a0,4(sp)
    265e:	a33fe0ef          	jal	1090 <__lesf2>
    2662:	1c054763          	bltz	a0,2830 <system.c.e6831600+0x6a9>
    2666:	8581a583          	lw	a1,-1960(gp) # 20000058 <_data_vma+0x58>
    266a:	4512                	lw	a0,4(sp)
    266c:	991fe0ef          	jal	ffc <__gesf2>
    2670:	08054663          	bltz	a0,26fc <system.c.e6831600+0x575>
    2674:	85c1a583          	lw	a1,-1956(gp) # 2000005c <_data_vma+0x5c>
    2678:	4512                	lw	a0,4(sp)
    267a:	a17fe0ef          	jal	1090 <__lesf2>
    267e:	06055f63          	bgez	a0,26fc <system.c.e6831600+0x575>
    2682:	4791                	li	a5,4
    2684:	00f10d23          	sb	a5,26(sp)
    2688:	81c1a583          	lw	a1,-2020(gp) # 2000001c <_data_vma+0x1c>
    268c:	4502                	lw	a0,0(sp)
    268e:	96ffe0ef          	jal	ffc <__gesf2>
    2692:	84c1a583          	lw	a1,-1972(gp) # 2000004c <_data_vma+0x4c>
    2696:	34054563          	bltz	a0,29e0 <system.c.e6831600+0x859>
    269a:	4502                	lw	a0,0(sp)
    269c:	9f5fe0ef          	jal	1090 <__lesf2>
    26a0:	84c1a583          	lw	a1,-1972(gp) # 2000004c <_data_vma+0x4c>
    26a4:	32055e63          	bgez	a0,29e0 <system.c.e6831600+0x859>
    26a8:	00010da3          	sb	zero,27(sp)
    26ac:	4781                	li	a5,0
    26ae:	4491                	li	s1,4
    26b0:	bf15                	j	25e4 <system.c.e6831600+0x45d>
    26b2:	84c1a583          	lw	a1,-1972(gp) # 2000004c <_data_vma+0x4c>
    26b6:	4502                	lw	a0,0(sp)
    26b8:	945fe0ef          	jal	ffc <__gesf2>
    26bc:	24055663          	bgez	a0,2908 <system.c.e6831600+0x781>
    26c0:	8601a583          	lw	a1,-1952(gp) # 20000060 <_data_vma+0x60>
    26c4:	4502                	lw	a0,0(sp)
    26c6:	937fe0ef          	jal	ffc <__gesf2>
    26ca:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    26ce:	24055a63          	bgez	a0,2922 <system.c.e6831600+0x79b>
    26d2:	4502                	lw	a0,0(sp)
    26d4:	929fe0ef          	jal	ffc <__gesf2>
    26d8:	8681a583          	lw	a1,-1944(gp) # 20000068 <_data_vma+0x68>
    26dc:	24055b63          	bgez	a0,2932 <system.c.e6831600+0x7ab>
    26e0:	4502                	lw	a0,0(sp)
    26e2:	91bfe0ef          	jal	ffc <__gesf2>
    26e6:	5a054563          	bltz	a0,2c90 <system.c.e6831600+0xb09>
    26ea:	86c1a583          	lw	a1,-1940(gp) # 2000006c <_data_vma+0x6c>
    26ee:	4502                	lw	a0,0(sp)
    26f0:	9a1fe0ef          	jal	1090 <__lesf2>
    26f4:	58055e63          	bgez	a0,2c90 <system.c.e6831600+0xb09>
    26f8:	4791                	li	a5,4
    26fa:	a40d                	j	291c <system.c.e6831600+0x795>
    26fc:	57fd                	li	a5,-1
    26fe:	00f10d23          	sb	a5,26(sp)
    2702:	81c1a583          	lw	a1,-2020(gp) # 2000001c <_data_vma+0x1c>
    2706:	4502                	lw	a0,0(sp)
    2708:	8f5fe0ef          	jal	ffc <__gesf2>
    270c:	fa0543e3          	bltz	a0,26b2 <system.c.e6831600+0x52b>
    2710:	84c1a583          	lw	a1,-1972(gp) # 2000004c <_data_vma+0x4c>
    2714:	4502                	lw	a0,0(sp)
    2716:	97bfe0ef          	jal	1090 <__lesf2>
    271a:	f8055ce3          	bgez	a0,26b2 <system.c.e6831600+0x52b>
    271e:	00010da3          	sb	zero,27(sp)
    2722:	05c10503          	lb	a0,92(sp)
    2726:	d40fe0ef          	jal	c66 <__floatsidf>
    272a:	200007b7          	lui	a5,0x20000
    272e:	0007a603          	lw	a2,0(a5) # 20000000 <_data_vma>
    2732:	0047a683          	lw	a3,4(a5)
    2736:	f0ffd0ef          	jal	644 <__divdf3>
    273a:	84aa                	mv	s1,a0
    273c:	4566                	lw	a0,88(sp)
    273e:	842e                	mv	s0,a1
    2740:	91cff0ef          	jal	185c <__extendsfdf2>
    2744:	862a                	mv	a2,a0
    2746:	86ae                	mv	a3,a1
    2748:	8526                	mv	a0,s1
    274a:	85a2                	mv	a1,s0
    274c:	8b9fd0ef          	jal	4 <__adddf3>
    2750:	9a0ff0ef          	jal	18f0 <__truncdfsf2>
    2754:	8181a483          	lw	s1,-2024(gp) # 20000018 <_data_vma+0x18>
    2758:	842a                	mv	s0,a0
    275a:	85a6                	mv	a1,s1
    275c:	935fe0ef          	jal	1090 <__lesf2>
    2760:	58054263          	bltz	a0,2ce4 <system.c.e6831600+0xb5d>
    2764:	8081a583          	lw	a1,-2040(gp) # 20000008 <_data_vma+0x8>
    2768:	8522                	mv	a0,s0
    276a:	893fe0ef          	jal	ffc <__gesf2>
    276e:	56a04d63          	bgtz	a0,2ce8 <system.c.e6831600+0xb61>
    2772:	4786                	lw	a5,64(sp)
    2774:	4526                	lw	a0,72(sp)
    2776:	caa2                	sw	s0,84(sp)
    2778:	de3e                	sw	a5,60(sp)
    277a:	47c6                	lw	a5,80(sp)
    277c:	c2aa                	sw	a0,68(sp)
    277e:	c6be                	sw	a5,76(sp)
    2780:	8081a583          	lw	a1,-2040(gp) # 20000008 <_data_vma+0x8>
    2784:	c11fe0ef          	jal	1394 <__subsf3>
    2788:	842a                	mv	s0,a0
    278a:	fc3fe0ef          	jal	174c <__fixunssfsi>
    278e:	8741a583          	lw	a1,-1932(gp) # 20000074 <_data_vma+0x74>
    2792:	f0757513          	and	a0,a0,-249
    2796:	06a10423          	sb	a0,104(sp)
    279a:	8522                	mv	a0,s0
    279c:	989fe0ef          	jal	1124 <__mulsf3>
    27a0:	fadfe0ef          	jal	174c <__fixunssfsi>
    27a4:	06a104a3          	sb	a0,105(sp)
    27a8:	47a2                	lw	a5,8(sp)
    27aa:	8bfd                	and	a5,a5,31
    27ac:	e789                	bnez	a5,27b6 <system.c.e6831600+0x62f>
    27ae:	082c                	add	a1,sp,24
    27b0:	4501                	li	a0,0
    27b2:	ce0ff0ef          	jal	1c92 <Tiny_Flip>
    27b6:	4722                	lw	a4,8(sp)
    27b8:	03000793          	li	a5,48
    27bc:	5ef71363          	bne	a4,a5,2da2 <system.c.e6831600+0xc1b>
    27c0:	01814783          	lbu	a5,24(sp)
    27c4:	4709                	li	a4,2
    27c6:	00f76563          	bltu	a4,a5,27d0 <system.c.e6831600+0x649>
    27ca:	0785                	add	a5,a5,1
    27cc:	00f10c23          	sb	a5,24(sp)
    27d0:	5572                	lw	a0,60(sp)
    27d2:	00000593          	li	a1,0
    27d6:	8bbfe0ef          	jal	1090 <__lesf2>
    27da:	50054a63          	bltz	a0,2cee <system.c.e6831600+0xb67>
    27de:	4701                	li	a4,0
    27e0:	4605                	li	a2,1
    27e2:	0ff00313          	li	t1,255
    27e6:	4595                	li	a1,5
    27e8:	4299                	li	t0,6
    27ea:	01870793          	add	a5,a4,24
    27ee:	002786b3          	add	a3,a5,sp
    27f2:	4781                	li	a5,0
    27f4:	0046c503          	lbu	a0,4(a3)
    27f8:	00650563          	beq	a0,t1,2802 <system.c.e6831600+0x67b>
    27fc:	00b50363          	beq	a0,a1,2802 <system.c.e6831600+0x67b>
    2800:	4601                	li	a2,0
    2802:	0785                	add	a5,a5,1
    2804:	0ff7f793          	zext.b	a5,a5
    2808:	0695                	add	a3,a3,5
    280a:	fe5795e3          	bne	a5,t0,27f4 <system.c.e6831600+0x66d>
    280e:	0705                	add	a4,a4,1
    2810:	fcb71de3          	bne	a4,a1,27ea <system.c.e6831600+0x663>
    2814:	50061e63          	bnez	a2,2d30 <system.c.e6831600+0xba9>
    2818:	47a2                	lw	a5,8(sp)
    281a:	0785                	add	a5,a5,1
    281c:	0ff7f793          	zext.b	a5,a5
    2820:	6509                	lui	a0,0x2
    2822:	c2050513          	add	a0,a0,-992 # 1c20 <JOY_sound+0x38>
    2826:	06f107a3          	sb	a5,111(sp)
    282a:	ba8ff0ef          	jal	1bd2 <DLY_ticks>
    282e:	b681                	j	236e <system.c.e6831600+0x1e7>
    2830:	478d                	li	a5,3
    2832:	00f10d23          	sb	a5,26(sp)
    2836:	81c1a583          	lw	a1,-2020(gp) # 2000001c <_data_vma+0x1c>
    283a:	4502                	lw	a0,0(sp)
    283c:	fc0fe0ef          	jal	ffc <__gesf2>
    2840:	84c1a583          	lw	a1,-1972(gp) # 2000004c <_data_vma+0x4c>
    2844:	22054a63          	bltz	a0,2a78 <system.c.e6831600+0x8f1>
    2848:	4502                	lw	a0,0(sp)
    284a:	847fe0ef          	jal	1090 <__lesf2>
    284e:	84c1a583          	lw	a1,-1972(gp) # 2000004c <_data_vma+0x4c>
    2852:	22055363          	bgez	a0,2a78 <system.c.e6831600+0x8f1>
    2856:	00010da3          	sb	zero,27(sp)
    285a:	4781                	li	a5,0
    285c:	448d                	li	s1,3
    285e:	b359                	j	25e4 <system.c.e6831600+0x45d>
    2860:	81c1a583          	lw	a1,-2020(gp) # 2000001c <_data_vma+0x1c>
    2864:	4502                	lw	a0,0(sp)
    2866:	4489                	li	s1,2
    2868:	00910d23          	sb	s1,26(sp)
    286c:	f90fe0ef          	jal	ffc <__gesf2>
    2870:	84c1a583          	lw	a1,-1972(gp) # 2000004c <_data_vma+0x4c>
    2874:	0e054163          	bltz	a0,2956 <system.c.e6831600+0x7cf>
    2878:	4502                	lw	a0,0(sp)
    287a:	817fe0ef          	jal	1090 <__lesf2>
    287e:	84c1a583          	lw	a1,-1972(gp) # 2000004c <_data_vma+0x4c>
    2882:	0c055a63          	bgez	a0,2956 <system.c.e6831600+0x7cf>
    2886:	00010da3          	sb	zero,27(sp)
    288a:	bba1                	j	25e2 <system.c.e6831600+0x45b>
    288c:	81c1a583          	lw	a1,-2020(gp) # 2000001c <_data_vma+0x1c>
    2890:	4502                	lw	a0,0(sp)
    2892:	4485                	li	s1,1
    2894:	00910d23          	sb	s1,26(sp)
    2898:	f64fe0ef          	jal	ffc <__gesf2>
    289c:	84c1a583          	lw	a1,-1972(gp) # 2000004c <_data_vma+0x4c>
    28a0:	00054963          	bltz	a0,28b2 <system.c.e6831600+0x72b>
    28a4:	4502                	lw	a0,0(sp)
    28a6:	feafe0ef          	jal	1090 <__lesf2>
    28aa:	84c1a583          	lw	a1,-1972(gp) # 2000004c <_data_vma+0x4c>
    28ae:	fc054ce3          	bltz	a0,2886 <system.c.e6831600+0x6ff>
    28b2:	4502                	lw	a0,0(sp)
    28b4:	f48fe0ef          	jal	ffc <__gesf2>
    28b8:	8601a583          	lw	a1,-1952(gp) # 20000060 <_data_vma+0x60>
    28bc:	30055363          	bgez	a0,2bc2 <system.c.e6831600+0xa3b>
    28c0:	4502                	lw	a0,0(sp)
    28c2:	f3afe0ef          	jal	ffc <__gesf2>
    28c6:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    28ca:	00054963          	bltz	a0,28dc <system.c.e6831600+0x755>
    28ce:	4502                	lw	a0,0(sp)
    28d0:	fc0fe0ef          	jal	1090 <__lesf2>
    28d4:	32054063          	bltz	a0,2bf4 <system.c.e6831600+0xa6d>
    28d8:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    28dc:	4502                	lw	a0,0(sp)
    28de:	f1efe0ef          	jal	ffc <__gesf2>
    28e2:	8681a583          	lw	a1,-1944(gp) # 20000068 <_data_vma+0x68>
    28e6:	2c055263          	bgez	a0,2baa <system.c.e6831600+0xa23>
    28ea:	4502                	lw	a0,0(sp)
    28ec:	f10fe0ef          	jal	ffc <__gesf2>
    28f0:	00054a63          	bltz	a0,2904 <system.c.e6831600+0x77d>
    28f4:	86c1a583          	lw	a1,-1940(gp) # 2000006c <_data_vma+0x6c>
    28f8:	4502                	lw	a0,0(sp)
    28fa:	f96fe0ef          	jal	1090 <__lesf2>
    28fe:	4791                	li	a5,4
    2900:	2a054c63          	bltz	a0,2bb8 <system.c.e6831600+0xa31>
    2904:	4485                	li	s1,1
    2906:	a679                	j	2c94 <system.c.e6831600+0xb0d>
    2908:	8601a583          	lw	a1,-1952(gp) # 20000060 <_data_vma+0x60>
    290c:	4502                	lw	a0,0(sp)
    290e:	f82fe0ef          	jal	1090 <__lesf2>
    2912:	8601a583          	lw	a1,-1952(gp) # 20000060 <_data_vma+0x60>
    2916:	2e055163          	bgez	a0,2bf8 <system.c.e6831600+0xa71>
    291a:	4785                	li	a5,1
    291c:	00f10da3          	sb	a5,27(sp)
    2920:	b509                	j	2722 <system.c.e6831600+0x59b>
    2922:	4502                	lw	a0,0(sp)
    2924:	f6cfe0ef          	jal	1090 <__lesf2>
    2928:	2e054463          	bltz	a0,2c10 <system.c.e6831600+0xa89>
    292c:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    2930:	b34d                	j	26d2 <system.c.e6831600+0x54b>
    2932:	4502                	lw	a0,0(sp)
    2934:	f5cfe0ef          	jal	1090 <__lesf2>
    2938:	32055263          	bgez	a0,2c5c <system.c.e6831600+0xad5>
    293c:	478d                	li	a5,3
    293e:	bff9                	j	291c <system.c.e6831600+0x795>
    2940:	4502                	lw	a0,0(sp)
    2942:	4489                	li	s1,2
    2944:	f4cfe0ef          	jal	1090 <__lesf2>
    2948:	30055c63          	bgez	a0,2c60 <system.c.e6831600+0xad9>
    294c:	478d                	li	a5,3
    294e:	00f10da3          	sb	a5,27(sp)
    2952:	4489                	li	s1,2
    2954:	b941                	j	25e4 <system.c.e6831600+0x45d>
    2956:	4502                	lw	a0,0(sp)
    2958:	ea4fe0ef          	jal	ffc <__gesf2>
    295c:	8601a583          	lw	a1,-1952(gp) # 20000060 <_data_vma+0x60>
    2960:	04055763          	bgez	a0,29ae <system.c.e6831600+0x827>
    2964:	4502                	lw	a0,0(sp)
    2966:	e96fe0ef          	jal	ffc <__gesf2>
    296a:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    296e:	02055863          	bgez	a0,299e <system.c.e6831600+0x817>
    2972:	4502                	lw	a0,0(sp)
    2974:	e88fe0ef          	jal	ffc <__gesf2>
    2978:	8681a583          	lw	a1,-1944(gp) # 20000068 <_data_vma+0x68>
    297c:	fc0552e3          	bgez	a0,2940 <system.c.e6831600+0x7b9>
    2980:	4502                	lw	a0,0(sp)
    2982:	e7afe0ef          	jal	ffc <__gesf2>
    2986:	00054a63          	bltz	a0,299a <system.c.e6831600+0x813>
    298a:	86c1a583          	lw	a1,-1940(gp) # 2000006c <_data_vma+0x6c>
    298e:	4502                	lw	a0,0(sp)
    2990:	f00fe0ef          	jal	1090 <__lesf2>
    2994:	4791                	li	a5,4
    2996:	fa054ce3          	bltz	a0,294e <system.c.e6831600+0x7c7>
    299a:	4489                	li	s1,2
    299c:	ace5                	j	2c94 <system.c.e6831600+0xb0d>
    299e:	4502                	lw	a0,0(sp)
    29a0:	ef0fe0ef          	jal	1090 <__lesf2>
    29a4:	02054963          	bltz	a0,29d6 <system.c.e6831600+0x84f>
    29a8:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    29ac:	b7d9                	j	2972 <system.c.e6831600+0x7eb>
    29ae:	4502                	lw	a0,0(sp)
    29b0:	ee0fe0ef          	jal	1090 <__lesf2>
    29b4:	8601a583          	lw	a1,-1952(gp) # 20000060 <_data_vma+0x60>
    29b8:	4785                	li	a5,1
    29ba:	f8054ae3          	bltz	a0,294e <system.c.e6831600+0x7c7>
    29be:	4502                	lw	a0,0(sp)
    29c0:	e3cfe0ef          	jal	ffc <__gesf2>
    29c4:	28054363          	bltz	a0,2c4a <system.c.e6831600+0xac3>
    29c8:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    29cc:	4502                	lw	a0,0(sp)
    29ce:	ec2fe0ef          	jal	1090 <__lesf2>
    29d2:	26055c63          	bgez	a0,2c4a <system.c.e6831600+0xac3>
    29d6:	00910da3          	sb	s1,27(sp)
    29da:	4789                	li	a5,2
    29dc:	4489                	li	s1,2
    29de:	b119                	j	25e4 <system.c.e6831600+0x45d>
    29e0:	4502                	lw	a0,0(sp)
    29e2:	e1afe0ef          	jal	ffc <__gesf2>
    29e6:	8601a583          	lw	a1,-1952(gp) # 20000060 <_data_vma+0x60>
    29ea:	04055f63          	bgez	a0,2a48 <system.c.e6831600+0x8c1>
    29ee:	4502                	lw	a0,0(sp)
    29f0:	e0cfe0ef          	jal	ffc <__gesf2>
    29f4:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    29f8:	02055863          	bgez	a0,2a28 <system.c.e6831600+0x8a1>
    29fc:	4502                	lw	a0,0(sp)
    29fe:	dfefe0ef          	jal	ffc <__gesf2>
    2a02:	8681a583          	lw	a1,-1944(gp) # 20000068 <_data_vma+0x68>
    2a06:	02055963          	bgez	a0,2a38 <system.c.e6831600+0x8b1>
    2a0a:	4502                	lw	a0,0(sp)
    2a0c:	df0fe0ef          	jal	ffc <__gesf2>
    2a10:	00054a63          	bltz	a0,2a24 <system.c.e6831600+0x89d>
    2a14:	86c1a583          	lw	a1,-1940(gp) # 2000006c <_data_vma+0x6c>
    2a18:	4502                	lw	a0,0(sp)
    2a1a:	e76fe0ef          	jal	1090 <__lesf2>
    2a1e:	4791                	li	a5,4
    2a20:	04054963          	bltz	a0,2a72 <system.c.e6831600+0x8eb>
    2a24:	4491                	li	s1,4
    2a26:	a4bd                	j	2c94 <system.c.e6831600+0xb0d>
    2a28:	4502                	lw	a0,0(sp)
    2a2a:	e66fe0ef          	jal	1090 <__lesf2>
    2a2e:	04054163          	bltz	a0,2a70 <system.c.e6831600+0x8e9>
    2a32:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    2a36:	b7d9                	j	29fc <system.c.e6831600+0x875>
    2a38:	4502                	lw	a0,0(sp)
    2a3a:	e56fe0ef          	jal	1090 <__lesf2>
    2a3e:	478d                	li	a5,3
    2a40:	02054963          	bltz	a0,2a72 <system.c.e6831600+0x8eb>
    2a44:	4491                	li	s1,4
    2a46:	ac29                	j	2c60 <system.c.e6831600+0xad9>
    2a48:	4502                	lw	a0,0(sp)
    2a4a:	e46fe0ef          	jal	1090 <__lesf2>
    2a4e:	8601a583          	lw	a1,-1952(gp) # 20000060 <_data_vma+0x60>
    2a52:	4785                	li	a5,1
    2a54:	00054f63          	bltz	a0,2a72 <system.c.e6831600+0x8eb>
    2a58:	4502                	lw	a0,0(sp)
    2a5a:	da2fe0ef          	jal	ffc <__gesf2>
    2a5e:	1a054b63          	bltz	a0,2c14 <system.c.e6831600+0xa8d>
    2a62:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    2a66:	4502                	lw	a0,0(sp)
    2a68:	e28fe0ef          	jal	1090 <__lesf2>
    2a6c:	1a055463          	bgez	a0,2c14 <system.c.e6831600+0xa8d>
    2a70:	4789                	li	a5,2
    2a72:	00f10da3          	sb	a5,27(sp)
    2a76:	b925                	j	26ae <system.c.e6831600+0x527>
    2a78:	4502                	lw	a0,0(sp)
    2a7a:	d82fe0ef          	jal	ffc <__gesf2>
    2a7e:	8601a583          	lw	a1,-1952(gp) # 20000060 <_data_vma+0x60>
    2a82:	04055f63          	bgez	a0,2ae0 <system.c.e6831600+0x959>
    2a86:	4502                	lw	a0,0(sp)
    2a88:	d74fe0ef          	jal	ffc <__gesf2>
    2a8c:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    2a90:	02055863          	bgez	a0,2ac0 <system.c.e6831600+0x939>
    2a94:	4502                	lw	a0,0(sp)
    2a96:	d66fe0ef          	jal	ffc <__gesf2>
    2a9a:	8681a583          	lw	a1,-1944(gp) # 20000068 <_data_vma+0x68>
    2a9e:	02055963          	bgez	a0,2ad0 <system.c.e6831600+0x949>
    2aa2:	4502                	lw	a0,0(sp)
    2aa4:	d58fe0ef          	jal	ffc <__gesf2>
    2aa8:	00054a63          	bltz	a0,2abc <system.c.e6831600+0x935>
    2aac:	86c1a583          	lw	a1,-1940(gp) # 2000006c <_data_vma+0x6c>
    2ab0:	4502                	lw	a0,0(sp)
    2ab2:	ddefe0ef          	jal	1090 <__lesf2>
    2ab6:	4791                	li	a5,4
    2ab8:	04054963          	bltz	a0,2b0a <system.c.e6831600+0x983>
    2abc:	448d                	li	s1,3
    2abe:	aad9                	j	2c94 <system.c.e6831600+0xb0d>
    2ac0:	4502                	lw	a0,0(sp)
    2ac2:	dcefe0ef          	jal	1090 <__lesf2>
    2ac6:	04054163          	bltz	a0,2b08 <system.c.e6831600+0x981>
    2aca:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    2ace:	b7d9                	j	2a94 <system.c.e6831600+0x90d>
    2ad0:	4502                	lw	a0,0(sp)
    2ad2:	dbefe0ef          	jal	1090 <__lesf2>
    2ad6:	478d                	li	a5,3
    2ad8:	02054963          	bltz	a0,2b0a <system.c.e6831600+0x983>
    2adc:	448d                	li	s1,3
    2ade:	a249                	j	2c60 <system.c.e6831600+0xad9>
    2ae0:	4502                	lw	a0,0(sp)
    2ae2:	daefe0ef          	jal	1090 <__lesf2>
    2ae6:	8601a583          	lw	a1,-1952(gp) # 20000060 <_data_vma+0x60>
    2aea:	4785                	li	a5,1
    2aec:	00054f63          	bltz	a0,2b0a <system.c.e6831600+0x983>
    2af0:	4502                	lw	a0,0(sp)
    2af2:	d0afe0ef          	jal	ffc <__gesf2>
    2af6:	14054f63          	bltz	a0,2c54 <system.c.e6831600+0xacd>
    2afa:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    2afe:	4502                	lw	a0,0(sp)
    2b00:	d90fe0ef          	jal	1090 <__lesf2>
    2b04:	14055863          	bgez	a0,2c54 <system.c.e6831600+0xacd>
    2b08:	4789                	li	a5,2
    2b0a:	00f10da3          	sb	a5,27(sp)
    2b0e:	b3b9                	j	285c <system.c.e6831600+0x6d5>
    2b10:	4502                	lw	a0,0(sp)
    2b12:	ceafe0ef          	jal	ffc <__gesf2>
    2b16:	8601a583          	lw	a1,-1952(gp) # 20000060 <_data_vma+0x60>
    2b1a:	04055f63          	bgez	a0,2b78 <system.c.e6831600+0x9f1>
    2b1e:	4502                	lw	a0,0(sp)
    2b20:	cdcfe0ef          	jal	ffc <__gesf2>
    2b24:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    2b28:	02055863          	bgez	a0,2b58 <system.c.e6831600+0x9d1>
    2b2c:	4502                	lw	a0,0(sp)
    2b2e:	ccefe0ef          	jal	ffc <__gesf2>
    2b32:	8681a583          	lw	a1,-1944(gp) # 20000068 <_data_vma+0x68>
    2b36:	02055963          	bgez	a0,2b68 <system.c.e6831600+0x9e1>
    2b3a:	4502                	lw	a0,0(sp)
    2b3c:	cc0fe0ef          	jal	ffc <__gesf2>
    2b40:	00054a63          	bltz	a0,2b54 <system.c.e6831600+0x9cd>
    2b44:	86c1a583          	lw	a1,-1940(gp) # 2000006c <_data_vma+0x6c>
    2b48:	4502                	lw	a0,0(sp)
    2b4a:	d46fe0ef          	jal	1090 <__lesf2>
    2b4e:	4791                	li	a5,4
    2b50:	04054963          	bltz	a0,2ba2 <system.c.e6831600+0xa1b>
    2b54:	4481                	li	s1,0
    2b56:	aa3d                	j	2c94 <system.c.e6831600+0xb0d>
    2b58:	4502                	lw	a0,0(sp)
    2b5a:	d36fe0ef          	jal	1090 <__lesf2>
    2b5e:	04054163          	bltz	a0,2ba0 <system.c.e6831600+0xa19>
    2b62:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    2b66:	b7d9                	j	2b2c <system.c.e6831600+0x9a5>
    2b68:	4502                	lw	a0,0(sp)
    2b6a:	d26fe0ef          	jal	1090 <__lesf2>
    2b6e:	478d                	li	a5,3
    2b70:	02054963          	bltz	a0,2ba2 <system.c.e6831600+0xa1b>
    2b74:	4481                	li	s1,0
    2b76:	a0ed                	j	2c60 <system.c.e6831600+0xad9>
    2b78:	4502                	lw	a0,0(sp)
    2b7a:	d16fe0ef          	jal	1090 <__lesf2>
    2b7e:	8601a583          	lw	a1,-1952(gp) # 20000060 <_data_vma+0x60>
    2b82:	4785                	li	a5,1
    2b84:	00054f63          	bltz	a0,2ba2 <system.c.e6831600+0xa1b>
    2b88:	4502                	lw	a0,0(sp)
    2b8a:	c72fe0ef          	jal	ffc <__gesf2>
    2b8e:	0c054563          	bltz	a0,2c58 <system.c.e6831600+0xad1>
    2b92:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    2b96:	4502                	lw	a0,0(sp)
    2b98:	cf8fe0ef          	jal	1090 <__lesf2>
    2b9c:	0a055e63          	bgez	a0,2c58 <system.c.e6831600+0xad1>
    2ba0:	4789                	li	a5,2
    2ba2:	00f10da3          	sb	a5,27(sp)
    2ba6:	4481                	li	s1,0
    2ba8:	bc35                	j	25e4 <system.c.e6831600+0x45d>
    2baa:	4502                	lw	a0,0(sp)
    2bac:	4485                	li	s1,1
    2bae:	ce2fe0ef          	jal	1090 <__lesf2>
    2bb2:	0a055763          	bgez	a0,2c60 <system.c.e6831600+0xad9>
    2bb6:	478d                	li	a5,3
    2bb8:	00f10da3          	sb	a5,27(sp)
    2bbc:	4485                	li	s1,1
    2bbe:	a27ff06f          	j	25e4 <system.c.e6831600+0x45d>
    2bc2:	4502                	lw	a0,0(sp)
    2bc4:	cccfe0ef          	jal	1090 <__lesf2>
    2bc8:	8601a583          	lw	a1,-1952(gp) # 20000060 <_data_vma+0x60>
    2bcc:	00055863          	bgez	a0,2bdc <system.c.e6831600+0xa55>
    2bd0:	00910da3          	sb	s1,27(sp)
    2bd4:	4785                	li	a5,1
    2bd6:	4485                	li	s1,1
    2bd8:	a0dff06f          	j	25e4 <system.c.e6831600+0x45d>
    2bdc:	4502                	lw	a0,0(sp)
    2bde:	c1efe0ef          	jal	ffc <__gesf2>
    2be2:	06054263          	bltz	a0,2c46 <system.c.e6831600+0xabf>
    2be6:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    2bea:	4502                	lw	a0,0(sp)
    2bec:	ca4fe0ef          	jal	1090 <__lesf2>
    2bf0:	04055b63          	bgez	a0,2c46 <system.c.e6831600+0xabf>
    2bf4:	4789                	li	a5,2
    2bf6:	b7c9                	j	2bb8 <system.c.e6831600+0xa31>
    2bf8:	4502                	lw	a0,0(sp)
    2bfa:	c02fe0ef          	jal	ffc <__gesf2>
    2bfe:	04054863          	bltz	a0,2c4e <system.c.e6831600+0xac7>
    2c02:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    2c06:	4502                	lw	a0,0(sp)
    2c08:	c88fe0ef          	jal	1090 <__lesf2>
    2c0c:	04055163          	bgez	a0,2c4e <system.c.e6831600+0xac7>
    2c10:	4789                	li	a5,2
    2c12:	b329                	j	291c <system.c.e6831600+0x795>
    2c14:	4491                	li	s1,4
    2c16:	8641a583          	lw	a1,-1948(gp) # 20000064 <_data_vma+0x64>
    2c1a:	4502                	lw	a0,0(sp)
    2c1c:	be0fe0ef          	jal	ffc <__gesf2>
    2c20:	04054063          	bltz	a0,2c60 <system.c.e6831600+0xad9>
    2c24:	8681a583          	lw	a1,-1944(gp) # 20000068 <_data_vma+0x68>
    2c28:	4502                	lw	a0,0(sp)
    2c2a:	c66fe0ef          	jal	1090 <__lesf2>
    2c2e:	02055963          	bgez	a0,2c60 <system.c.e6831600+0xad9>
    2c32:	478d                	li	a5,3
    2c34:	00f10da3          	sb	a5,27(sp)
    2c38:	0ff00793          	li	a5,255
    2c3c:	aef483e3          	beq	s1,a5,2722 <system.c.e6831600+0x59b>
    2c40:	478d                	li	a5,3
    2c42:	9a3ff06f          	j	25e4 <system.c.e6831600+0x45d>
    2c46:	4485                	li	s1,1
    2c48:	b7f9                	j	2c16 <system.c.e6831600+0xa8f>
    2c4a:	4489                	li	s1,2
    2c4c:	b7e9                	j	2c16 <system.c.e6831600+0xa8f>
    2c4e:	0ff00493          	li	s1,255
    2c52:	b7d1                	j	2c16 <system.c.e6831600+0xa8f>
    2c54:	448d                	li	s1,3
    2c56:	b7c1                	j	2c16 <system.c.e6831600+0xa8f>
    2c58:	4481                	li	s1,0
    2c5a:	bf75                	j	2c16 <system.c.e6831600+0xa8f>
    2c5c:	0ff00493          	li	s1,255
    2c60:	8681a583          	lw	a1,-1944(gp) # 20000068 <_data_vma+0x68>
    2c64:	4502                	lw	a0,0(sp)
    2c66:	b96fe0ef          	jal	ffc <__gesf2>
    2c6a:	02054563          	bltz	a0,2c94 <system.c.e6831600+0xb0d>
    2c6e:	86c1a583          	lw	a1,-1940(gp) # 2000006c <_data_vma+0x6c>
    2c72:	4502                	lw	a0,0(sp)
    2c74:	c1cfe0ef          	jal	1090 <__lesf2>
    2c78:	00055e63          	bgez	a0,2c94 <system.c.e6831600+0xb0d>
    2c7c:	4791                	li	a5,4
    2c7e:	00f10da3          	sb	a5,27(sp)
    2c82:	0ff00793          	li	a5,255
    2c86:	a8f48ee3          	beq	s1,a5,2722 <system.c.e6831600+0x59b>
    2c8a:	4791                	li	a5,4
    2c8c:	959ff06f          	j	25e4 <system.c.e6831600+0x45d>
    2c90:	0ff00493          	li	s1,255
    2c94:	86c1a583          	lw	a1,-1940(gp) # 2000006c <_data_vma+0x6c>
    2c98:	4502                	lw	a0,0(sp)
    2c9a:	b62fe0ef          	jal	ffc <__gesf2>
    2c9e:	02054363          	bltz	a0,2cc4 <system.c.e6831600+0xb3d>
    2ca2:	8701a583          	lw	a1,-1936(gp) # 20000070 <_data_vma+0x70>
    2ca6:	4502                	lw	a0,0(sp)
    2ca8:	be8fe0ef          	jal	1090 <__lesf2>
    2cac:	00055c63          	bgez	a0,2cc4 <system.c.e6831600+0xb3d>
    2cb0:	4795                	li	a5,5
    2cb2:	00f10da3          	sb	a5,27(sp)
    2cb6:	0ff00793          	li	a5,255
    2cba:	a6f484e3          	beq	s1,a5,2722 <system.c.e6831600+0x59b>
    2cbe:	4795                	li	a5,5
    2cc0:	925ff06f          	j	25e4 <system.c.e6831600+0x45d>
    2cc4:	57fd                	li	a5,-1
    2cc6:	b999                	j	291c <system.c.e6831600+0x795>
    2cc8:	0ff00713          	li	a4,255
    2ccc:	a4e78be3          	beq	a5,a4,2722 <system.c.e6831600+0x59b>
    2cd0:	45a9                	li	a1,10
    2cd2:	09600513          	li	a0,150
    2cd6:	f13fe0ef          	jal	1be8 <JOY_sound>
    2cda:	57fd                	li	a5,-1
    2cdc:	faf40623          	sb	a5,-84(s0)
    2ce0:	85fff06f          	j	253e <system.c.e6831600+0x3b7>
    2ce4:	8426                	mv	s0,s1
    2ce6:	b471                	j	2772 <system.c.e6831600+0x5eb>
    2ce8:	8081a403          	lw	s0,-2040(gp) # 20000008 <_data_vma+0x8>
    2cec:	b459                	j	2772 <system.c.e6831600+0x5eb>
    2cee:	06400593          	li	a1,100
    2cf2:	0c800513          	li	a0,200
    2cf6:	ef3fe0ef          	jal	1be8 <JOY_sound>
    2cfa:	06400593          	li	a1,100
    2cfe:	09600513          	li	a0,150
    2d02:	ee7fe0ef          	jal	1be8 <JOY_sound>
    2d06:	06400593          	li	a1,100
    2d0a:	06400513          	li	a0,100
    2d0e:	edbfe0ef          	jal	1be8 <JOY_sound>
    2d12:	06400593          	li	a1,100
    2d16:	03200513          	li	a0,50
    2d1a:	ecffe0ef          	jal	1be8 <JOY_sound>
    2d1e:	06e14783          	lbu	a5,110(sp)
    2d22:	da078163          	beqz	a5,22c4 <system.c.e6831600+0x13d>
    2d26:	17fd                	add	a5,a5,-1
    2d28:	06f10723          	sb	a5,110(sp)
    2d2c:	e08ff06f          	j	2334 <system.c.e6831600+0x1ad>
    2d30:	06400593          	li	a1,100
    2d34:	03c00513          	li	a0,60
    2d38:	eb1fe0ef          	jal	1be8 <JOY_sound>
    2d3c:	06400593          	li	a1,100
    2d40:	05000513          	li	a0,80
    2d44:	ea5fe0ef          	jal	1be8 <JOY_sound>
    2d48:	06400593          	li	a1,100
    2d4c:	06400513          	li	a0,100
    2d50:	e99fe0ef          	jal	1be8 <JOY_sound>
    2d54:	06400593          	li	a1,100
    2d58:	07800513          	li	a0,120
    2d5c:	e8dfe0ef          	jal	1be8 <JOY_sound>
    2d60:	06400593          	li	a1,100
    2d64:	08c00513          	li	a0,140
    2d68:	e81fe0ef          	jal	1be8 <JOY_sound>
    2d6c:	4742                	lw	a4,16(sp)
    2d6e:	47a1                	li	a5,8
    2d70:	00e7f663          	bgeu	a5,a4,2d7c <system.c.e6831600+0xbf5>
    2d74:	47c2                	lw	a5,16(sp)
    2d76:	17f9                	add	a5,a5,-2
    2d78:	06f106a3          	sb	a5,109(sp)
    2d7c:	082c                	add	a1,sp,24
    2d7e:	4509                	li	a0,2
    2d80:	f13fe0ef          	jal	1c92 <Tiny_Flip>
    2d84:	00494537          	lui	a0,0x494
    2d88:	e0050513          	add	a0,a0,-512 # 493e00 <_data_lma+0x490724>
    2d8c:	e47fe0ef          	jal	1bd2 <DLY_ticks>
    2d90:	06c14503          	lbu	a0,108(sp)
    2d94:	4791                	li	a5,4
    2d96:	eaa7f263          	bgeu	a5,a0,243a <system.c.e6831600+0x2b3>
    2d9a:	156d                	add	a0,a0,-5
    2d9c:	0ff57513          	zext.b	a0,a0
    2da0:	bfdd                	j	2d96 <system.c.e6831600+0xc0f>
    2da2:	4722                	lw	a4,8(sp)
    2da4:	03f00793          	li	a5,63
    2da8:	a6e7f8e3          	bgeu	a5,a4,2818 <system.c.e6831600+0x691>
    2dac:	4785                	li	a5,1
    2dae:	bc8d                	j	2820 <system.c.e6831600+0x699>
    2db0:	06a14503          	lbu	a0,106(sp)
    2db4:	06b14783          	lbu	a5,107(sp)
    2db8:	050e                	sll	a0,a0,0x3
    2dba:	953e                	add	a0,a0,a5
    2dbc:	0529                	add	a0,a0,10
    2dbe:	9e1fe0ef          	jal	179e <__floatsisf>
    2dc2:	c2aa                	sw	a0,68(sp)
    2dc4:	c4aa                	sw	a0,72(sp)
    2dc6:	e24ff06f          	j	23ea <system.c.e6831600+0x263>

00002dca <reset_handler>:
    2dca:	6789                	lui	a5,0x2
    2dcc:	16e78793          	add	a5,a5,366 # 216e <main>
    2dd0:	1fffe197          	auipc	gp,0x1fffe
    2dd4:	a3018193          	add	gp,gp,-1488 # 20000800 <__global_pointer$>
    2dd8:	00018113          	mv	sp,gp
    2ddc:	08800513          	li	a0,136
    2de0:	30051073          	csrw	mstatus,a0
    2de4:	458d                	li	a1,3
    2de6:	80459073          	csrw	0x804,a1
    2dea:	ffffd517          	auipc	a0,0xffffd
    2dee:	21650513          	add	a0,a0,534 # 0 <jump_reset>
    2df2:	8d4d                	or	a0,a0,a1
    2df4:	30551073          	csrw	mtvec,a0
    2df8:	34179073          	csrw	mepc,a5
    2dfc:	670d                	lui	a4,0x3
    2dfe:	200007b7          	lui	a5,0x20000
    2e02:	6dc70713          	add	a4,a4,1756 # 36dc <_data_lma>
    2e06:	00078793          	mv	a5,a5
    2e0a:	88818693          	add	a3,gp,-1912 # 20000088 <SWIFT_TEXTURE>
    2e0e:	02d7e663          	bltu	a5,a3,2e3a <reset_handler+0x70>
    2e12:	88818793          	add	a5,gp,-1912 # 20000088 <SWIFT_TEXTURE>
    2e16:	88c18713          	add	a4,gp,-1908 # 2000008c <_ebss>
    2e1a:	02e7e563          	bltu	a5,a4,2e44 <reset_handler+0x7a>
    2e1e:	400217b7          	lui	a5,0x40021
    2e22:	4741                	li	a4,16
    2e24:	c3d8                	sw	a4,4(a5)
    2e26:	4695                	li	a3,5
    2e28:	e000f737          	lui	a4,0xe000f
    2e2c:	c314                	sw	a3,0(a4)
    2e2e:	4f98                	lw	a4,24(a5)
    2e30:	03476713          	or	a4,a4,52
    2e34:	cf98                	sw	a4,24(a5)
    2e36:	30200073          	mret
    2e3a:	4310                	lw	a2,0(a4)
    2e3c:	0711                	add	a4,a4,4 # e000f004 <__global_pointer$+0xc000e804>
    2e3e:	c390                	sw	a2,0(a5)
    2e40:	0791                	add	a5,a5,4 # 40021004 <__global_pointer$+0x20020804>
    2e42:	b7f1                	j	2e0e <reset_handler+0x44>
    2e44:	0007a023          	sw	zero,0(a5)
    2e48:	0791                	add	a5,a5,4
    2e4a:	bfc1                	j	2e1a <reset_handler+0x50>
    2e4c:	0c54                	add	a3,sp,532
    2e4e:	0000                	unimp
    2e50:	0836                	sll	a6,a6,0xd
    2e52:	0000                	unimp
    2e54:	0bac                	add	a1,sp,472
    2e56:	0000                	unimp
    2e58:	0836                	sll	a6,a6,0xd
    2e5a:	0000                	unimp
    2e5c:	0c46                	sll	s8,s8,0x11
    2e5e:	0000                	unimp
    2e60:	0836                	sll	a6,a6,0xd
    2e62:	0000                	unimp
    2e64:	0bac                	add	a1,sp,472
    2e66:	0000                	unimp
    2e68:	0c54                	add	a3,sp,532
    2e6a:	0000                	unimp
    2e6c:	0c54                	add	a3,sp,532
    2e6e:	0000                	unimp
    2e70:	0c46                	sll	s8,s8,0x11
    2e72:	0000                	unimp
    2e74:	0bac                	add	a1,sp,472
    2e76:	0000                	unimp
    2e78:	081c                	add	a5,sp,16
    2e7a:	0000                	unimp
    2e7c:	081c                	add	a5,sp,16
    2e7e:	0000                	unimp
    2e80:	081c                	add	a5,sp,16
    2e82:	0000                	unimp
    2e84:	0c46                	sll	s8,s8,0x11
	...

00002e88 <__clz_tab>:
    2e88:	0100 0202 0303 0303 0404 0404 0404 0404     ................
    2e98:	0505 0505 0505 0505 0505 0505 0505 0505     ................
    2ea8:	0606 0606 0606 0606 0606 0606 0606 0606     ................
    2eb8:	0606 0606 0606 0606 0606 0606 0606 0606     ................
    2ec8:	0707 0707 0707 0707 0707 0707 0707 0707     ................
    2ed8:	0707 0707 0707 0707 0707 0707 0707 0707     ................
    2ee8:	0707 0707 0707 0707 0707 0707 0707 0707     ................
    2ef8:	0707 0707 0707 0707 0707 0707 0707 0707     ................
    2f08:	0808 0808 0808 0808 0808 0808 0808 0808     ................
    2f18:	0808 0808 0808 0808 0808 0808 0808 0808     ................
    2f28:	0808 0808 0808 0808 0808 0808 0808 0808     ................
    2f38:	0808 0808 0808 0808 0808 0808 0808 0808     ................
    2f48:	0808 0808 0808 0808 0808 0808 0808 0808     ................
    2f58:	0808 0808 0808 0808 0808 0808 0808 0808     ................
    2f68:	0808 0808 0808 0808 0808 0808 0808 0808     ................
    2f78:	0808 0808 0808 0808 0808 0808 0808 0808     ................
    2f88:	246c 0000 2552 0000 255c 0000 2566 0000     l$..R%..\%..f%..
    2f98:	2572 0000 258a 0000                         r%...%..

00002fa0 <LEVEL>:
    2fa0:	0100 0302 0004 0201 0403 0100 0302 0004     ................
    2fb0:	0201 0403 0100 0302 0004 0201 0403 0100     ................
    2fc0:	0302 0005 0201 0403 0105 0302 0505 0201     ................
    2fd0:	0403 0100 0302 0005 0201 0403 0505 0505     ................
    2fe0:	0005 0201 0403 0100 0302 0004 0201 0403     ................
    2ff0:	0100 0302 0504 0505 0505 0105 0302 0504     ................
    3000:	0201 0503 0105 0302 0504 0201 0403 0105     ................
    3010:	0302 0505 0201 0403 0505 0505 0005 0000     ................
    3020:	0000 0505 0500 0505 0005 0505 0000 0000     ................
    3030:	0500 0505 0505 0000                         ........

00003038 <back_RIGHT>:
    3038:	f905 fe03 0000 0000 fffe 0307 0303 0303     ................
    3048:	0303 ff07 00fe abfe abab 00fe 0000 ffff     ................
	...
    3060:	ff00 00ff ff00 ff01 0000 0000 ffff 0000     ................
    3070:	0000 0000 0000 ff00 00ff bfe0 bfb0 00e0     ................
    3080:	0000 ffff 0000 0000 0000 0000 ff00 00ff     ................
    3090:	fa0f fa1a 000f 0000 ffff 0000 0000 0000     ................
    30a0:	0000 ff00 00ff ff00 ff80 0000 0000 ffff     ................
    30b0:	0606 0606 0606 0606 ff06 00ff d57f d5d5     ................
    30c0:	007f 0000 ffff 0000 0000 0000 0000 ff00     ................
    30d0:	00ff 9fa0 7fc0 0000 0000 ff7f c0e0 c0c0     ................
    30e0:	c0c0 c0c0 ffe0 007f                         ........

000030e8 <back_DOWN>:
    30e8:	a0a0 a0a1 e0a4 10f0 10f8 10f0 e0f0 a0a8     ................
    30f8:	a1a0 a4a0 a0a0 a8a0 a0a0 e0a0 18f0 10f0     ................
    3108:	10f1 e0f4 a0a0 a0a8 a0a0 a0a0 a0a8 e1a0     ................
    3118:	14f0 10f0 18f0 e0f0 a0a0 a8a0 a0a0 a0a1     ................
    3128:	a0a4 a0a0 f0e8 f010 f010 f018 a1e0 a4a0     ................
    3138:	a0a0 a8a0 a0a0 a0a0 f8e0 f010 f011 f014     ................
    3148:	a0e0 a0a8 a0a0 a0a0 a0a8 00a0               ............

00003154 <texture>:
    3154:	0008 0100 0400 0040 0800 2000 0000 0000     ......@.... ....

00003164 <back_UP>:
    3164:	0505 0505 4705 080f 080f 082f 070f 050d     .....G..../.....
    3174:	0505 0505 0545 0d05 2505 0705 080f 080f     ....E....%......
    3184:	080f 470f 0505 050d 0525 0505 050d 0705     ...G....%.......
    3194:	080f 084f 080f 270f 0505 0d05 0505 0505     ..O....'........
    31a4:	4505 0505 0f07 0f28 0f08 0f08 0507 0505     .E....(.........
    31b4:	0545 0d05 2505 0505 0f07 0f08 0f08 4f08     E....%.........O
    31c4:	0507 050d 0525 0505 0505 0005               ....%.......

000031d0 <BLOCK>:
    31d0:	3f01 3f3f 007f 2d01 371b 007f 1501 152b     .???...-.7....+.
    31e0:	007f 1301 0925 007f 0101 0101 007f 417f     ....%..........A
    31f0:	4141 007f                                   AA..

000031f4 <BLOCKREFLECT>:
    31f4:	3e00 0000 0000 0000 003e 0000 0000 3e00     .>......>......>
	...

0000320c <CSWTCH.37>:
    320c:	0000 0000 0000 0101 0101 0101 0202 0202     ................
    321c:	0202 0303 0303 0303                         ........

00003224 <DIGITAL>:
    3224:	90f0 9090 9090 e0f0 4040 4040 4060 10f0     ........@@@@`@..
    3234:	f010 8080 f0f0 8080 80e0 f080 8080 f080     ................
    3244:	9090 f090 8080 10f0 f010 90f0 f090 1010     ................
    3254:	80f0 8080 8080 f080 90f0 f090 9090 f0f0     ................
    3264:	8080 90f0 f090 0000                         ........

0000326c <MAIN>:
    326c:	55aa 55aa 55aa 55aa 55aa 55aa 55aa 55aa     .U.U.U.U.U.U.U.U
    327c:	55aa 55aa 55aa 15aa 050a 0102 0000 0000     .U.U.U..........
    328c:	0000 0800 0000 0000 c000 80c0 0000 0000     ................
    329c:	0000 0000 0002 0000 0000 0000 0000 0000     ................
    32ac:	0010 0000 0000 0000 0200 0000 0000 0000     ................
    32bc:	0000 7f32 6377 7763 717f 4241 545a 4844     ..2.wccw.qABZTDH
    32cc:	5048 6050 4060 3800 f470 d0f0 d0d0 dad6     HPP``@.8p.......
    32dc:	7c86 80f8 fe00 c103 2121 21a1 c121 fe03     .|......!!.!!...
    32ec:	05aa ff02 03ff c303 0303 0303 4383 4343     .............CCC
    32fc:	8343 ff03 55fe 00aa 0000 0000 0000 0000     C....U..........
    330c:	0000 0020 0000 0000 0000 0b0d 391b f37d     .. ..........9}.
    331c:	c2e1 98cc 0868 30c8 8060 0000 0000 0000     ....h..0`.......
    332c:	2000 0000 0000 0000 0000 0000 0001 0080     . ..............
    333c:	0000 b1a1 bbb1 bfbb 8f9f 9191 a5a5 cdcd     ................
    334c:	a5a5 91a1 8f99 1000 f070 d0f0 d0d0 d0d0     ........p.......
    335c:	d6d1 e3d6 ff00 0700 8b88 8b88 0788 ff00     ................
    336c:	00aa ff00 00ff 0300 0404 0404 0003 0000     ................
    337c:	e700 ff00 55ff 00aa 0200 0000 0000 0000     .....U..........
    338c:	0000 0000 0000 f0c0 849c 34c4 0c0c 6093     ...........4...`
    339c:	0101 30c1 030c 0402 2018 0cc3 e010 0080     ...0..... ......
    33ac:	0000 0000 0000 0200 0000 0000 0000 0000     ................
    33bc:	0000 1010 b9b9 9f9f 8f8f 0888 2612 2a66     .............&f*
    33cc:	123a 0212 0302 0400 eccc fcec e49c d4f4     :...............
    33dc:	cccc 848c ff00 0000 aaa9 aaba 0091 ff00     ................
    33ec:	00aa ff00 00ff 2100 2121 2121 e121 4121     .......!!!!!!.!A
    33fc:	8f41 ff00 55ff 00aa 0000 0000 0000 0600     A....U..........
    340c:	d86c d8d8 e8c8 1098 473b 0787 0606 6081     l.......;G.....`
    341c:	0718 0000 e000 bcd8 e272 2dc4 c137 0300     ........r..-7...
    342c:	100c 80e0 0000 0000 0100 0000 4000 0000     .............@..
    343c:	0000 dbdb d9db d9d9 dfdb 51d8 5251 5452     ...........QQRRT
    344c:	5854 d0d8 41d0 7100 f171 a1e1 a1a1 1121     TX...A.qq.....!.
    345c:	e9d1 1d39 ff00 0000 54d4 55d6 00d4 ff00     ..9......T.U....
    346c:	00aa ff00 00ff 2400 2424 a424 e764 2224     .......$$$$.d.$"
    347c:	e122 ff00 55ff 00ea 0000 8000 0000 0000     "....U..........
    348c:	0040 2101 a77b af6f ac6e e768 0e98 2011     @..!{.o.n.h.... 
    349c:	8040 0000 3d00 fbfd 7afb 40bf 3fc0 6080     @....=...z.@.?.`
    34ac:	031c ff00 261b 100c 4000 0000 0000 0000     .....&...@......
    34bc:	0000 c040 f0e0 fcf0 fefc a0a3 bcb8 b2b4     ..@.............
    34cc:	b1b3 b0b0 e0a0 0000 0000 0000 0104 0301     ................
    34dc:	0406 3e0d ff00 0000 045d 0404 0005 ff00     ...>....].......
    34ec:	00aa ff00 00ff 8200 8282 8081 8180 8282     ................
    34fc:	f182 ff00 55ff 00ea 0004 2e04 0004 0004     .....U..........
    350c:	0040 0000 0000 0101 0603 1a0d 2b35 ac56     @...........5+V.
    351c:	b058 b261 834c 0300 0502 8102 0c70 0003     X.a.L.......p...
    352c:	70c0 818e 1866 0000 0000 0000 0000 0000     .p..f...........
    353c:	0000 f8f0 fcfc fefe af1e a9f1 f9a9 a9a9     ................
    354c:	a2f1 0402 f008 0000 0000 0100 0000 0000     ................
    355c:	0000 0010 ff00 0000 8186 0101 0086 ff00     ................
    356c:	00aa 7f00 c0ff c0c0 c0c0 c0c0 c0c0 c0c0     ................
    357c:	c7c0 ffc0 55ff 00aa 0020 0000 0000 0000     .....U.. .......
    358c:	0000 0000 1000 0000 0000 0000 0000 0000     ................
    359c:	0201 0605 1a0d 5a35 d874 59b6 c4a8 0382     ......5Zt..Y....
    35ac:	0307 0102 0000 0000 0000 0800 0000 0000     ................
    35bc:	0000 2321 6727 efe7 feff b2b1 b3b2 b2b2     ..!#'g..........
    35cc:	a8b1 a4a8 e0a3 0000 1004 1000 10ba 1000     ................
    35dc:	0000 0008 ff00 0000 a893 aaa9 0091 ff00     ................
    35ec:	54aa 54a8 54a8 54a8 54a8 54a8 54a8 54a8     .T.T.T.T.T.T.T.T
    35fc:	54a8 54a8 55aa 50aa 40a0 0880 0000 0000     .T.T.U.P.@......
	...
    361c:	0000 0010 0000 0000 0000 0301 0402 0301     ................
    362c:	0002 0000 1000 0000 0000 0000 0000 0000     ................
    363c:	0000 0101 0303 0707 0f0f 1111 2521 454d     ............!%ME
    364c:	d5d5 4d4d 2321 001e 0000 8000 0000 0000     ..MM!#..........
    365c:	0200 0000 7f00 80c0 928c 928c 808c 7fc0     ................

0000366c <OLED_INIT_CMD>:
    366c:	3fa8 148d 0020 0021 227f 3f00 12da c0a0     .?.. .!..".?....
    367c:	00af 0000                                   ....

00003680 <Music1>:
    3680:	ff7d ff7d c800 ff7d ff7d ff91 ff91 ff91     }.}...}.}.......
    3690:	ff91 ff91 ff91 ff91 ff91 ff91 ff91 ff91     ................
    36a0:	ff91 ff8c ff8c ff8c ff7d ff7d ff7d ff69     ........}.}.}.i.
    36b0:	ff69 ff69 ff87 ff87 ff87 ff7d ff7d ff7d     i.i.......}.}.}.
    36c0:	ff7d ff7d ff7d ff7d ff7d 7d00 ff7d ff7d     }.}.}.}.}..}}.}.
    36d0:	ff7d ff7d ff7d ff7d ff7d ff7d               }.}.}.}.}.}.
