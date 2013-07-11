
openbeacon-usb2.elf:     file format elf32-littlearm


Disassembly of section prog:

00000000 <g_pfnVectors>:
       0:	e0 1f 00 10 91 22 00 00 6d 22 00 00 71 22 00 00     ....."..m"..q"..
      10:	75 22 00 00 79 22 00 00 7d 22 00 00 00 00 00 00     u"..y"..}"......
	...
      2c:	81 22 00 00 85 22 00 00 00 00 00 00 89 22 00 00     ."..."......."..
      3c:	8d 22 00 00 35 23 00 00 35 23 00 00 35 23 00 00     ."..5#..5#..5#..
      4c:	35 23 00 00 35 23 00 00 35 23 00 00 35 23 00 00     5#..5#..5#..5#..
      5c:	35 23 00 00 ad 10 00 00 35 23 00 00 35 23 00 00     5#......5#..5#..
      6c:	35 23 00 00 35 23 00 00 35 23 00 00 35 23 00 00     5#..5#..5#..5#..
      7c:	35 23 00 00 35 23 00 00 35 23 00 00 35 23 00 00     5#..5#..5#..5#..
      8c:	35 23 00 00 35 23 00 00 91 14 00 00 35 23 00 00     5#..5#......5#..
      9c:	35 23 00 00 35 23 00 00 35 23 00 00 35 23 00 00     5#..5#..5#..5#..
      ac:	35 23 00 00 35 23 00 00 35 23 00 00 35 23 00 00     5#..5#..5#..5#..
      bc:	35 23 00 00 35 23 00 00 35 23 00 00 35 23 00 00     5#..5#..5#..5#..
      cc:	35 23 00 00 35 23 00 00 35 23 00 00 35 23 00 00     5#..5#..5#..5#..
      dc:	35 23 00 00 35 23 00 00 35 23 00 00 35 23 00 00     5#..5#..5#..5#..
      ec:	35 23 00 00 35 23 00 00 35 23 00 00 39 23 00 00     5#..5#..5#..9#..
      fc:	bd 24 00 00 35 23 00 00 35 23 00 00 35 23 00 00     .$..5#..5#..5#..
     10c:	35 23 00 00 35 23 00 00 35 23 00 00 35 23 00 00     5#..5#..5#..5#..
     11c:	35 23 00 00 35 23 00 00                             5#..5#..

00000124 <memcpy>:
     124:	2a03      	cmp	r2, #3
     126:	e92d 01f0 	stmdb	sp!, {r4, r5, r6, r7, r8}
     12a:	d809      	bhi.n	140 <memcpy+0x1c>
     12c:	b12a      	cbz	r2, 13a <memcpy+0x16>
     12e:	2300      	movs	r3, #0
     130:	5ccc      	ldrb	r4, [r1, r3]
     132:	54c4      	strb	r4, [r0, r3]
     134:	3301      	adds	r3, #1
     136:	4293      	cmp	r3, r2
     138:	d1fa      	bne.n	130 <memcpy+0xc>
     13a:	e8bd 01f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8}
     13e:	4770      	bx	lr
     140:	460b      	mov	r3, r1
     142:	1882      	adds	r2, r0, r2
     144:	4601      	mov	r1, r0
     146:	e003      	b.n	150 <memcpy+0x2c>
     148:	7824      	ldrb	r4, [r4, #0]
     14a:	3301      	adds	r3, #1
     14c:	f801 4b01 	strb.w	r4, [r1], #1
     150:	f011 0f03 	tst.w	r1, #3
     154:	461c      	mov	r4, r3
     156:	d1f7      	bne.n	148 <memcpy+0x24>
     158:	f013 0503 	ands.w	r5, r3, #3
     15c:	d05d      	beq.n	21a <memcpy+0xf6>
     15e:	426e      	negs	r6, r5
     160:	f1c5 0c04 	rsb	ip, r5, #4
     164:	00ed      	lsls	r5, r5, #3
     166:	599b      	ldr	r3, [r3, r6]
     168:	ea4f 0ccc 	mov.w	ip, ip, lsl #3
     16c:	e008      	b.n	180 <memcpy+0x5c>
     16e:	3404      	adds	r4, #4
     170:	59a7      	ldr	r7, [r4, r6]
     172:	463b      	mov	r3, r7
     174:	fa07 f70c 	lsl.w	r7, r7, ip
     178:	ea48 0707 	orr.w	r7, r8, r7
     17c:	f841 7b04 	str.w	r7, [r1], #4
     180:	1a57      	subs	r7, r2, r1
     182:	fa23 f805 	lsr.w	r8, r3, r5
     186:	2f03      	cmp	r7, #3
     188:	dcf1      	bgt.n	16e <memcpy+0x4a>
     18a:	e003      	b.n	194 <memcpy+0x70>
     18c:	f814 3b01 	ldrb.w	r3, [r4], #1
     190:	f801 3b01 	strb.w	r3, [r1], #1
     194:	428a      	cmp	r2, r1
     196:	d8f9      	bhi.n	18c <memcpy+0x68>
     198:	e7cf      	b.n	13a <memcpy+0x16>
     19a:	f853 4c40 	ldr.w	r4, [r3, #-64]
     19e:	f841 4c40 	str.w	r4, [r1, #-64]
     1a2:	f853 4c3c 	ldr.w	r4, [r3, #-60]
     1a6:	f841 4c3c 	str.w	r4, [r1, #-60]
     1aa:	f853 4c38 	ldr.w	r4, [r3, #-56]
     1ae:	f841 4c38 	str.w	r4, [r1, #-56]
     1b2:	f853 4c34 	ldr.w	r4, [r3, #-52]
     1b6:	f841 4c34 	str.w	r4, [r1, #-52]
     1ba:	f853 4c30 	ldr.w	r4, [r3, #-48]
     1be:	f841 4c30 	str.w	r4, [r1, #-48]
     1c2:	f853 4c2c 	ldr.w	r4, [r3, #-44]
     1c6:	f841 4c2c 	str.w	r4, [r1, #-44]
     1ca:	f853 4c28 	ldr.w	r4, [r3, #-40]
     1ce:	f841 4c28 	str.w	r4, [r1, #-40]
     1d2:	f853 4c24 	ldr.w	r4, [r3, #-36]
     1d6:	f841 4c24 	str.w	r4, [r1, #-36]
     1da:	f853 4c20 	ldr.w	r4, [r3, #-32]
     1de:	f841 4c20 	str.w	r4, [r1, #-32]
     1e2:	f853 4c1c 	ldr.w	r4, [r3, #-28]
     1e6:	f841 4c1c 	str.w	r4, [r1, #-28]
     1ea:	f853 4c18 	ldr.w	r4, [r3, #-24]
     1ee:	f841 4c18 	str.w	r4, [r1, #-24]
     1f2:	f853 4c14 	ldr.w	r4, [r3, #-20]
     1f6:	f841 4c14 	str.w	r4, [r1, #-20]
     1fa:	f853 4c10 	ldr.w	r4, [r3, #-16]
     1fe:	f841 4c10 	str.w	r4, [r1, #-16]
     202:	f853 4c0c 	ldr.w	r4, [r3, #-12]
     206:	f841 4c0c 	str.w	r4, [r1, #-12]
     20a:	f853 4c08 	ldr.w	r4, [r3, #-8]
     20e:	f841 4c08 	str.w	r4, [r1, #-8]
     212:	f853 4c04 	ldr.w	r4, [r3, #-4]
     216:	f841 4c04 	str.w	r4, [r1, #-4]
     21a:	1a56      	subs	r6, r2, r1
     21c:	461d      	mov	r5, r3
     21e:	460c      	mov	r4, r1
     220:	3340      	adds	r3, #64	; 0x40
     222:	3140      	adds	r1, #64	; 0x40
     224:	2e3f      	cmp	r6, #63	; 0x3f
     226:	dcb8      	bgt.n	19a <memcpy+0x76>
     228:	462b      	mov	r3, r5
     22a:	e00f      	b.n	24c <memcpy+0x128>
     22c:	f853 1c10 	ldr.w	r1, [r3, #-16]
     230:	f844 1c10 	str.w	r1, [r4, #-16]
     234:	f853 1c0c 	ldr.w	r1, [r3, #-12]
     238:	f844 1c0c 	str.w	r1, [r4, #-12]
     23c:	f853 1c08 	ldr.w	r1, [r3, #-8]
     240:	f844 1c08 	str.w	r1, [r4, #-8]
     244:	f853 1c04 	ldr.w	r1, [r3, #-4]
     248:	f844 1c04 	str.w	r1, [r4, #-4]
     24c:	1b16      	subs	r6, r2, r4
     24e:	4621      	mov	r1, r4
     250:	461d      	mov	r5, r3
     252:	3410      	adds	r4, #16
     254:	3310      	adds	r3, #16
     256:	2e0f      	cmp	r6, #15
     258:	dce8      	bgt.n	22c <memcpy+0x108>
     25a:	462b      	mov	r3, r5
     25c:	e002      	b.n	264 <memcpy+0x140>
     25e:	6824      	ldr	r4, [r4, #0]
     260:	f841 4b04 	str.w	r4, [r1], #4
     264:	1a55      	subs	r5, r2, r1
     266:	461c      	mov	r4, r3
     268:	2d03      	cmp	r5, #3
     26a:	f103 0304 	add.w	r3, r3, #4
     26e:	dcf6      	bgt.n	25e <memcpy+0x13a>
     270:	e790      	b.n	194 <memcpy+0x70>
     272:	bf00      	nop

00000274 <memset>:
     274:	2a03      	cmp	r2, #3
     276:	b2c9      	uxtb	r1, r1
     278:	b470      	push	{r4, r5, r6}
     27a:	d808      	bhi.n	28e <memset+0x1a>
     27c:	b12a      	cbz	r2, 28a <memset+0x16>
     27e:	4603      	mov	r3, r0
     280:	1812      	adds	r2, r2, r0
     282:	f803 1b01 	strb.w	r1, [r3], #1
     286:	4293      	cmp	r3, r2
     288:	d1fb      	bne.n	282 <memset+0xe>
     28a:	bc70      	pop	{r4, r5, r6}
     28c:	4770      	bx	lr
     28e:	1882      	adds	r2, r0, r2
     290:	4604      	mov	r4, r0
     292:	e001      	b.n	298 <memset+0x24>
     294:	f804 1b01 	strb.w	r1, [r4], #1
     298:	f014 0f03 	tst.w	r4, #3
     29c:	d1fa      	bne.n	294 <memset+0x20>
     29e:	f04f 3301 	mov.w	r3, #16843009	; 0x1010101
     2a2:	fb03 f301 	mul.w	r3, r3, r1
     2a6:	e01f      	b.n	2e8 <memset+0x74>
     2a8:	f844 3c40 	str.w	r3, [r4, #-64]
     2ac:	f844 3c3c 	str.w	r3, [r4, #-60]
     2b0:	f844 3c38 	str.w	r3, [r4, #-56]
     2b4:	f844 3c34 	str.w	r3, [r4, #-52]
     2b8:	f844 3c30 	str.w	r3, [r4, #-48]
     2bc:	f844 3c2c 	str.w	r3, [r4, #-44]
     2c0:	f844 3c28 	str.w	r3, [r4, #-40]
     2c4:	f844 3c24 	str.w	r3, [r4, #-36]
     2c8:	f844 3c20 	str.w	r3, [r4, #-32]
     2cc:	f844 3c1c 	str.w	r3, [r4, #-28]
     2d0:	f844 3c18 	str.w	r3, [r4, #-24]
     2d4:	f844 3c14 	str.w	r3, [r4, #-20]
     2d8:	f844 3c10 	str.w	r3, [r4, #-16]
     2dc:	f844 3c0c 	str.w	r3, [r4, #-12]
     2e0:	f844 3c08 	str.w	r3, [r4, #-8]
     2e4:	f844 3c04 	str.w	r3, [r4, #-4]
     2e8:	1b16      	subs	r6, r2, r4
     2ea:	4625      	mov	r5, r4
     2ec:	3440      	adds	r4, #64	; 0x40
     2ee:	2e3f      	cmp	r6, #63	; 0x3f
     2f0:	dcda      	bgt.n	2a8 <memset+0x34>
     2f2:	462c      	mov	r4, r5
     2f4:	e007      	b.n	306 <memset+0x92>
     2f6:	f844 3c10 	str.w	r3, [r4, #-16]
     2fa:	f844 3c0c 	str.w	r3, [r4, #-12]
     2fe:	f844 3c08 	str.w	r3, [r4, #-8]
     302:	f844 3c04 	str.w	r3, [r4, #-4]
     306:	1b16      	subs	r6, r2, r4
     308:	4625      	mov	r5, r4
     30a:	3410      	adds	r4, #16
     30c:	2e0f      	cmp	r6, #15
     30e:	dcf2      	bgt.n	2f6 <memset+0x82>
     310:	e001      	b.n	316 <memset+0xa2>
     312:	f845 3b04 	str.w	r3, [r5], #4
     316:	1b54      	subs	r4, r2, r5
     318:	2c03      	cmp	r4, #3
     31a:	dcfa      	bgt.n	312 <memset+0x9e>
     31c:	e001      	b.n	322 <memset+0xae>
     31e:	f805 1b01 	strb.w	r1, [r5], #1
     322:	4295      	cmp	r5, r2
     324:	d3fb      	bcc.n	31e <memset+0xaa>
     326:	e7b0      	b.n	28a <memset+0x16>

00000328 <strncpy>:
     328:	ea41 0300 	orr.w	r3, r1, r0
     32c:	f013 0f03 	tst.w	r3, #3
     330:	460b      	mov	r3, r1
     332:	b470      	push	{r4, r5, r6}
     334:	bf14      	ite	ne
     336:	2400      	movne	r4, #0
     338:	2401      	moveq	r4, #1
     33a:	2a03      	cmp	r2, #3
     33c:	bf94      	ite	ls
     33e:	2400      	movls	r4, #0
     340:	f004 0401 	andhi.w	r4, r4, #1
     344:	4605      	mov	r5, r0
     346:	b9d4      	cbnz	r4, 37e <strncpy+0x56>
     348:	b1ba      	cbz	r2, 37a <strncpy+0x52>
     34a:	780e      	ldrb	r6, [r1, #0]
     34c:	462b      	mov	r3, r5
     34e:	3a01      	subs	r2, #1
     350:	f803 6b01 	strb.w	r6, [r3], #1
     354:	b156      	cbz	r6, 36c <strncpy+0x44>
     356:	1cac      	adds	r4, r5, #2
     358:	b17a      	cbz	r2, 37a <strncpy+0x52>
     35a:	f811 5f01 	ldrb.w	r5, [r1, #1]!
     35e:	4623      	mov	r3, r4
     360:	3a01      	subs	r2, #1
     362:	f804 5c01 	strb.w	r5, [r4, #-1]
     366:	3401      	adds	r4, #1
     368:	2d00      	cmp	r5, #0
     36a:	d1f5      	bne.n	358 <strncpy+0x30>
     36c:	b12a      	cbz	r2, 37a <strncpy+0x52>
     36e:	189a      	adds	r2, r3, r2
     370:	2100      	movs	r1, #0
     372:	f803 1b01 	strb.w	r1, [r3], #1
     376:	4293      	cmp	r3, r2
     378:	d1fb      	bne.n	372 <strncpy+0x4a>
     37a:	bc70      	pop	{r4, r5, r6}
     37c:	4770      	bx	lr
     37e:	4619      	mov	r1, r3
     380:	f853 4b04 	ldr.w	r4, [r3], #4
     384:	f1a4 3601 	sub.w	r6, r4, #16843009	; 0x1010101
     388:	ea26 0604 	bic.w	r6, r6, r4
     38c:	f016 3f80 	tst.w	r6, #2155905152	; 0x80808080
     390:	d1da      	bne.n	348 <strncpy+0x20>
     392:	3a04      	subs	r2, #4
     394:	f845 4b04 	str.w	r4, [r5], #4
     398:	2a03      	cmp	r2, #3
     39a:	4619      	mov	r1, r3
     39c:	d8ef      	bhi.n	37e <strncpy+0x56>
     39e:	e7d3      	b.n	348 <strncpy+0x20>

000003a0 <strnlen>:
     3a0:	b410      	push	{r4}
     3a2:	b179      	cbz	r1, 3c4 <strnlen+0x24>
     3a4:	7803      	ldrb	r3, [r0, #0]
     3a6:	b17b      	cbz	r3, 3c8 <strnlen+0x28>
     3a8:	1c43      	adds	r3, r0, #1
     3aa:	1841      	adds	r1, r0, r1
     3ac:	e002      	b.n	3b4 <strnlen+0x14>
     3ae:	f813 2b01 	ldrb.w	r2, [r3], #1
     3b2:	b12a      	cbz	r2, 3c0 <strnlen+0x20>
     3b4:	428b      	cmp	r3, r1
     3b6:	461c      	mov	r4, r3
     3b8:	d1f9      	bne.n	3ae <strnlen+0xe>
     3ba:	1a18      	subs	r0, r3, r0
     3bc:	bc10      	pop	{r4}
     3be:	4770      	bx	lr
     3c0:	1a20      	subs	r0, r4, r0
     3c2:	e7fb      	b.n	3bc <strnlen+0x1c>
     3c4:	4608      	mov	r0, r1
     3c6:	e7f9      	b.n	3bc <strnlen+0x1c>
     3c8:	4618      	mov	r0, r3
     3ca:	e7f7      	b.n	3bc <strnlen+0x1c>

000003cc <blink>:
     3cc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
     3d0:	2800      	cmp	r0, #0
     3d2:	d04d      	beq.n	470 <blink+0xa4>
     3d4:	4c29      	ldr	r4, [pc, #164]	; (47c <blink+0xb0>)
     3d6:	2702      	movs	r7, #2
     3d8:	6861      	ldr	r1, [r4, #4]
     3da:	f100 38ff 	add.w	r8, r0, #4294967295
     3de:	608f      	str	r7, [r1, #8]
     3e0:	2064      	movs	r0, #100	; 0x64
     3e2:	f000 fec3 	bl	116c <pmu_sleep_ms>
     3e6:	6863      	ldr	r3, [r4, #4]
     3e8:	2600      	movs	r6, #0
     3ea:	fa5f f588 	uxtb.w	r5, r8
     3ee:	609e      	str	r6, [r3, #8]
     3f0:	20c8      	movs	r0, #200	; 0xc8
     3f2:	f008 0803 	and.w	r8, r8, #3
     3f6:	f000 feb9 	bl	116c <pmu_sleep_ms>
     3fa:	2d00      	cmp	r5, #0
     3fc:	d038      	beq.n	470 <blink+0xa4>
     3fe:	fa4f f388 	sxtb.w	r3, r8
     402:	b343      	cbz	r3, 456 <blink+0x8a>
     404:	2b01      	cmp	r3, #1
     406:	d019      	beq.n	43c <blink+0x70>
     408:	2b02      	cmp	r3, #2
     40a:	d00b      	beq.n	424 <blink+0x58>
     40c:	6863      	ldr	r3, [r4, #4]
     40e:	2064      	movs	r0, #100	; 0x64
     410:	1e6a      	subs	r2, r5, #1
     412:	609f      	str	r7, [r3, #8]
     414:	b2d5      	uxtb	r5, r2
     416:	f000 fea9 	bl	116c <pmu_sleep_ms>
     41a:	6861      	ldr	r1, [r4, #4]
     41c:	20c8      	movs	r0, #200	; 0xc8
     41e:	608e      	str	r6, [r1, #8]
     420:	f000 fea4 	bl	116c <pmu_sleep_ms>
     424:	6862      	ldr	r2, [r4, #4]
     426:	2064      	movs	r0, #100	; 0x64
     428:	6097      	str	r7, [r2, #8]
     42a:	f000 fe9f 	bl	116c <pmu_sleep_ms>
     42e:	6861      	ldr	r1, [r4, #4]
     430:	3d01      	subs	r5, #1
     432:	20c8      	movs	r0, #200	; 0xc8
     434:	608e      	str	r6, [r1, #8]
     436:	b2ed      	uxtb	r5, r5
     438:	f000 fe98 	bl	116c <pmu_sleep_ms>
     43c:	6862      	ldr	r2, [r4, #4]
     43e:	2064      	movs	r0, #100	; 0x64
     440:	1e69      	subs	r1, r5, #1
     442:	6097      	str	r7, [r2, #8]
     444:	b2cd      	uxtb	r5, r1
     446:	f000 fe91 	bl	116c <pmu_sleep_ms>
     44a:	6863      	ldr	r3, [r4, #4]
     44c:	20c8      	movs	r0, #200	; 0xc8
     44e:	609e      	str	r6, [r3, #8]
     450:	f000 fe8c 	bl	116c <pmu_sleep_ms>
     454:	b165      	cbz	r5, 470 <blink+0xa4>
     456:	6863      	ldr	r3, [r4, #4]
     458:	2064      	movs	r0, #100	; 0x64
     45a:	609f      	str	r7, [r3, #8]
     45c:	f000 fe86 	bl	116c <pmu_sleep_ms>
     460:	6862      	ldr	r2, [r4, #4]
     462:	3d01      	subs	r5, #1
     464:	20c8      	movs	r0, #200	; 0xc8
     466:	6096      	str	r6, [r2, #8]
     468:	b2ed      	uxtb	r5, r5
     46a:	f000 fe7f 	bl	116c <pmu_sleep_ms>
     46e:	e7cd      	b.n	40c <blink+0x40>
     470:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
     474:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
     478:	f000 be78 	b.w	116c <pmu_sleep_ms>
     47c:	100001f4 	.word	0x100001f4

00000480 <main>:
     480:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
     484:	2300      	movs	r3, #0
     486:	b0ad      	sub	sp, #180	; 0xb4
     488:	932b      	str	r3, [sp, #172]	; 0xac
     48a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
     48c:	4bde      	ldr	r3, [pc, #888]	; (808 <main+0x388>)
     48e:	429a      	cmp	r2, r3
     490:	dc05      	bgt.n	49e <main+0x1e>
     492:	9c2b      	ldr	r4, [sp, #172]	; 0xac
     494:	1c61      	adds	r1, r4, #1
     496:	912b      	str	r1, [sp, #172]	; 0xac
     498:	982b      	ldr	r0, [sp, #172]	; 0xac
     49a:	4298      	cmp	r0, r3
     49c:	ddf9      	ble.n	492 <main+0x12>
     49e:	f002 f803 	bl	24a8 <GPIOInit>
     4a2:	4ada      	ldr	r2, [pc, #872]	; (80c <main+0x38c>)
     4a4:	4cda      	ldr	r4, [pc, #872]	; (810 <main+0x390>)
     4a6:	2300      	movs	r3, #0
     4a8:	6093      	str	r3, [r2, #8]
     4aa:	68a7      	ldr	r7, [r4, #8]
     4ac:	f44f 7b80 	mov.w	fp, #256	; 0x100
     4b0:	f507 4e00 	add.w	lr, r7, #32768	; 0x8000
     4b4:	f8de 5000 	ldr.w	r5, [lr]
     4b8:	2710      	movs	r7, #16
     4ba:	f045 0601 	orr.w	r6, r5, #1
     4be:	f8ce 6000 	str.w	r6, [lr]
     4c2:	68a0      	ldr	r0, [r4, #8]
     4c4:	6043      	str	r3, [r0, #4]
     4c6:	60d3      	str	r3, [r2, #12]
     4c8:	6821      	ldr	r1, [r4, #0]
     4ca:	2080      	movs	r0, #128	; 0x80
     4cc:	f501 4100 	add.w	r1, r1, #32768	; 0x8000
     4d0:	680d      	ldr	r5, [r1, #0]
     4d2:	f025 0601 	bic.w	r6, r5, #1
     4d6:	600e      	str	r6, [r1, #0]
     4d8:	6113      	str	r3, [r2, #16]
     4da:	6825      	ldr	r5, [r4, #0]
     4dc:	2181      	movs	r1, #129	; 0x81
     4de:	f505 4500 	add.w	r5, r5, #32768	; 0x8000
     4e2:	682e      	ldr	r6, [r5, #0]
     4e4:	f026 0602 	bic.w	r6, r6, #2
     4e8:	602e      	str	r6, [r5, #0]
     4ea:	6153      	str	r3, [r2, #20]
     4ec:	6866      	ldr	r6, [r4, #4]
     4ee:	f506 4900 	add.w	r9, r6, #32768	; 0x8000
     4f2:	f8d9 c000 	ldr.w	ip, [r9]
     4f6:	4ec7      	ldr	r6, [pc, #796]	; (814 <main+0x394>)
     4f8:	ea4c 080b 	orr.w	r8, ip, fp
     4fc:	f8c9 8000 	str.w	r8, [r9]
     500:	f8d4 a004 	ldr.w	sl, [r4, #4]
     504:	f04f 0802 	mov.w	r8, #2
     508:	f8ca b400 	str.w	fp, [sl, #1024]	; 0x400
     50c:	61d3      	str	r3, [r2, #28]
     50e:	f8d4 e000 	ldr.w	lr, [r4]
     512:	f8df a308 	ldr.w	sl, [pc, #776]	; 81c <main+0x39c>
     516:	f50e 4500 	add.w	r5, lr, #32768	; 0x8000
     51a:	f8d5 c000 	ldr.w	ip, [r5]
     51e:	f04c 0904 	orr.w	r9, ip, #4
     522:	f8c5 9000 	str.w	r9, [r5]
     526:	f8d4 e000 	ldr.w	lr, [r4]
     52a:	f8ce 3010 	str.w	r3, [lr, #16]
     52e:	62d3      	str	r3, [r2, #44]	; 0x2c
     530:	f8d4 9000 	ldr.w	r9, [r4]
     534:	f509 4500 	add.w	r5, r9, #32768	; 0x8000
     538:	f8d5 c000 	ldr.w	ip, [r5]
     53c:	f02c 0e08 	bic.w	lr, ip, #8
     540:	f8c5 e000 	str.w	lr, [r5]
     544:	f8c2 b030 	str.w	fp, [r2, #48]	; 0x30
     548:	f8d4 9000 	ldr.w	r9, [r4]
     54c:	f509 4500 	add.w	r5, r9, #32768	; 0x8000
     550:	f8d5 c000 	ldr.w	ip, [r5]
     554:	ea4c 0e07 	orr.w	lr, ip, r7
     558:	f8c5 e000 	str.w	lr, [r5]
     55c:	f8d4 9000 	ldr.w	r9, [r4]
     560:	f8c9 7040 	str.w	r7, [r9, #64]	; 0x40
     564:	f8c2 b034 	str.w	fp, [r2, #52]	; 0x34
     568:	f8d4 c000 	ldr.w	ip, [r4]
     56c:	f50c 4500 	add.w	r5, ip, #32768	; 0x8000
     570:	f8d5 e000 	ldr.w	lr, [r5]
     574:	f04e 0b20 	orr.w	fp, lr, #32
     578:	f8c5 b000 	str.w	fp, [r5]
     57c:	f8d4 9000 	ldr.w	r9, [r4]
     580:	f8c9 3080 	str.w	r3, [r9, #128]	; 0x80
     584:	6393      	str	r3, [r2, #56]	; 0x38
     586:	f8d4 c004 	ldr.w	ip, [r4, #4]
     58a:	f50c 4500 	add.w	r5, ip, #32768	; 0x8000
     58e:	f8d5 e000 	ldr.w	lr, [r5]
     592:	f44e 7b00 	orr.w	fp, lr, #512	; 0x200
     596:	f8c5 b000 	str.w	fp, [r5]
     59a:	f8d4 9004 	ldr.w	r9, [r4, #4]
     59e:	f8c9 3800 	str.w	r3, [r9, #2048]	; 0x800
     5a2:	64d3      	str	r3, [r2, #76]	; 0x4c
     5a4:	f8d4 c000 	ldr.w	ip, [r4]
     5a8:	f50c 4500 	add.w	r5, ip, #32768	; 0x8000
     5ac:	f8d5 e000 	ldr.w	lr, [r5]
     5b0:	f04f 0c40 	mov.w	ip, #64	; 0x40
     5b4:	f04e 0b40 	orr.w	fp, lr, #64	; 0x40
     5b8:	f8c5 b000 	str.w	fp, [r5]
     5bc:	f8d4 9000 	ldr.w	r9, [r4]
     5c0:	f8c9 c100 	str.w	ip, [r9, #256]	; 0x100
     5c4:	6513      	str	r3, [r2, #80]	; 0x50
     5c6:	f8d4 e000 	ldr.w	lr, [r4]
     5ca:	f50e 4500 	add.w	r5, lr, #32768	; 0x8000
     5ce:	f8d5 b000 	ldr.w	fp, [r5]
     5d2:	ea4b 0900 	orr.w	r9, fp, r0
     5d6:	f8c5 9000 	str.w	r9, [r5]
     5da:	f8d4 c000 	ldr.w	ip, [r4]
     5de:	f8cc 3200 	str.w	r3, [ip, #512]	; 0x200
     5e2:	f8c2 30a8 	str.w	r3, [r2, #168]	; 0xa8
     5e6:	f8d4 e004 	ldr.w	lr, [r4, #4]
     5ea:	f50e 4500 	add.w	r5, lr, #32768	; 0x8000
     5ee:	f8d5 b000 	ldr.w	fp, [r5]
     5f2:	ea4b 0900 	orr.w	r9, fp, r0
     5f6:	f8c5 9000 	str.w	r9, [r5]
     5fa:	f8d4 c004 	ldr.w	ip, [r4, #4]
     5fe:	f8cc 3200 	str.w	r3, [ip, #512]	; 0x200
     602:	f8c2 30a4 	str.w	r3, [r2, #164]	; 0xa4
     606:	f8d4 e004 	ldr.w	lr, [r4, #4]
     60a:	f50e 4500 	add.w	r5, lr, #32768	; 0x8000
     60e:	f8d5 b000 	ldr.w	fp, [r5]
     612:	f04b 0940 	orr.w	r9, fp, #64	; 0x40
     616:	f8c5 9000 	str.w	r9, [r5]
     61a:	f8d4 c004 	ldr.w	ip, [r4, #4]
     61e:	f8cc 3100 	str.w	r3, [ip, #256]	; 0x100
     622:	f8c2 30a0 	str.w	r3, [r2, #160]	; 0xa0
     626:	f8d4 e004 	ldr.w	lr, [r4, #4]
     62a:	f50e 4500 	add.w	r5, lr, #32768	; 0x8000
     62e:	f8d5 b000 	ldr.w	fp, [r5]
     632:	f04b 0920 	orr.w	r9, fp, #32
     636:	f8c5 9000 	str.w	r9, [r5]
     63a:	f8d4 c004 	ldr.w	ip, [r4, #4]
     63e:	f8cc 3080 	str.w	r3, [ip, #128]	; 0x80
     642:	f8c2 309c 	str.w	r3, [r2, #156]	; 0x9c
     646:	f8d4 e00c 	ldr.w	lr, [r4, #12]
     64a:	f50e 4500 	add.w	r5, lr, #32768	; 0x8000
     64e:	f8d5 b000 	ldr.w	fp, [r5]
     652:	f04b 0904 	orr.w	r9, fp, #4
     656:	f8c5 9000 	str.w	r9, [r5]
     65a:	f8d4 c00c 	ldr.w	ip, [r4, #12]
     65e:	2504      	movs	r5, #4
     660:	f8cc 5010 	str.w	r5, [ip, #16]
     664:	f8c2 0098 	str.w	r0, [r2, #152]	; 0x98
     668:	f8d4 e004 	ldr.w	lr, [r4, #4]
     66c:	f50e 4900 	add.w	r9, lr, #32768	; 0x8000
     670:	f8d9 b000 	ldr.w	fp, [r9]
     674:	f44b 6c00 	orr.w	ip, fp, #2048	; 0x800
     678:	f8c9 c000 	str.w	ip, [r9]
     67c:	f8d4 e004 	ldr.w	lr, [r4, #4]
     680:	f50e 5b00 	add.w	fp, lr, #8192	; 0x2000
     684:	f8cb 3000 	str.w	r3, [fp]
     688:	f8c2 0094 	str.w	r0, [r2, #148]	; 0x94
     68c:	f8d4 9004 	ldr.w	r9, [r4, #4]
     690:	f509 4e00 	add.w	lr, r9, #32768	; 0x8000
     694:	f8de c000 	ldr.w	ip, [lr]
     698:	f02c 0b10 	bic.w	fp, ip, #16
     69c:	f8ce b000 	str.w	fp, [lr]
     6a0:	f8c2 1090 	str.w	r1, [r2, #144]	; 0x90
     6a4:	f8d4 9004 	ldr.w	r9, [r4, #4]
     6a8:	f509 4e00 	add.w	lr, r9, #32768	; 0x8000
     6ac:	f8de c000 	ldr.w	ip, [lr]
     6b0:	f04c 0b08 	orr.w	fp, ip, #8
     6b4:	f8ce b000 	str.w	fp, [lr]
     6b8:	f8d4 9004 	ldr.w	r9, [r4, #4]
     6bc:	f8c9 3020 	str.w	r3, [r9, #32]
     6c0:	f8c2 1080 	str.w	r1, [r2, #128]	; 0x80
     6c4:	f8d4 c004 	ldr.w	ip, [r4, #4]
     6c8:	f50c 4e00 	add.w	lr, ip, #32768	; 0x8000
     6cc:	f8de b000 	ldr.w	fp, [lr]
     6d0:	ea4b 0905 	orr.w	r9, fp, r5
     6d4:	f8ce 9000 	str.w	r9, [lr]
     6d8:	f8d4 c004 	ldr.w	ip, [r4, #4]
     6dc:	f8cc 3010 	str.w	r3, [ip, #16]
     6e0:	67d1      	str	r1, [r2, #124]	; 0x7c
     6e2:	f8d4 b004 	ldr.w	fp, [r4, #4]
     6e6:	f50b 4500 	add.w	r5, fp, #32768	; 0x8000
     6ea:	f8d5 e000 	ldr.w	lr, [r5]
     6ee:	ea4e 0908 	orr.w	r9, lr, r8
     6f2:	f8c5 9000 	str.w	r9, [r5]
     6f6:	f8d4 c004 	ldr.w	ip, [r4, #4]
     6fa:	f8cc 3008 	str.w	r3, [ip, #8]
     6fe:	6791      	str	r1, [r2, #120]	; 0x78
     700:	f8d4 b004 	ldr.w	fp, [r4, #4]
     704:	f50b 4500 	add.w	r5, fp, #32768	; 0x8000
     708:	f8d5 e000 	ldr.w	lr, [r5]
     70c:	f04e 0901 	orr.w	r9, lr, #1
     710:	f8c5 9000 	str.w	r9, [r5]
     714:	f8d4 c004 	ldr.w	ip, [r4, #4]
     718:	f8cc 3004 	str.w	r3, [ip, #4]
     71c:	6751      	str	r1, [r2, #116]	; 0x74
     71e:	f8d4 b000 	ldr.w	fp, [r4]
     722:	f50b 4e00 	add.w	lr, fp, #32768	; 0x8000
     726:	f8de 9000 	ldr.w	r9, [lr]
     72a:	f449 6c00 	orr.w	ip, r9, #2048	; 0x800
     72e:	f8ce c000 	str.w	ip, [lr]
     732:	f8d4 b000 	ldr.w	fp, [r4]
     736:	f50b 5900 	add.w	r9, fp, #8192	; 0x2000
     73a:	f8c9 3000 	str.w	r3, [r9]
     73e:	66d0      	str	r0, [r2, #108]	; 0x6c
     740:	6865      	ldr	r5, [r4, #4]
     742:	f505 4b00 	add.w	fp, r5, #32768	; 0x8000
     746:	f8db e000 	ldr.w	lr, [fp]
     74a:	f44e 6c80 	orr.w	ip, lr, #1024	; 0x400
     74e:	f8cb c000 	str.w	ip, [fp]
     752:	6860      	ldr	r0, [r4, #4]
     754:	f44f 6e80 	mov.w	lr, #1024	; 0x400
     758:	f500 5980 	add.w	r9, r0, #4096	; 0x1000
     75c:	f8c9 e000 	str.w	lr, [r9]
     760:	6691      	str	r1, [r2, #104]	; 0x68
     762:	6825      	ldr	r5, [r4, #0]
     764:	f505 4c00 	add.w	ip, r5, #32768	; 0x8000
     768:	f8dc 1000 	ldr.w	r1, [ip]
     76c:	ea41 000e 	orr.w	r0, r1, lr
     770:	f8cc 0000 	str.w	r0, [ip]
     774:	6825      	ldr	r5, [r4, #0]
     776:	f505 5b80 	add.w	fp, r5, #4096	; 0x1000
     77a:	f8cb 3000 	str.w	r3, [fp]
     77e:	6653      	str	r3, [r2, #100]	; 0x64
     780:	6821      	ldr	r1, [r4, #0]
     782:	f501 4900 	add.w	r9, r1, #32768	; 0x8000
     786:	f8d9 0000 	ldr.w	r0, [r9]
     78a:	f440 7500 	orr.w	r5, r0, #512	; 0x200
     78e:	f8c9 5000 	str.w	r5, [r9]
     792:	6821      	ldr	r1, [r4, #0]
     794:	2001      	movs	r0, #1
     796:	f8c1 3800 	str.w	r3, [r1, #2048]	; 0x800
     79a:	6610      	str	r0, [r2, #96]	; 0x60
     79c:	6865      	ldr	r5, [r4, #4]
     79e:	f8c5 8008 	str.w	r8, [r5, #8]
     7a2:	9303      	str	r3, [sp, #12]
     7a4:	f002 fd2a 	bl	31fc <spi_init>
     7a8:	463a      	mov	r2, r7
     7aa:	9903      	ldr	r1, [sp, #12]
     7ac:	4630      	mov	r0, r6
     7ae:	f7ff fd61 	bl	274 <memset>
     7b2:	4630      	mov	r0, r6
     7b4:	f002 fd44 	bl	3240 <iap_read_uid>
     7b8:	4639      	mov	r1, r7
     7ba:	4630      	mov	r0, r6
     7bc:	f002 fd90 	bl	32e0 <crc16>
     7c0:	4a15      	ldr	r2, [pc, #84]	; (818 <main+0x398>)
     7c2:	f8d6 c000 	ldr.w	ip, [r6]
     7c6:	68b7      	ldr	r7, [r6, #8]
     7c8:	68f3      	ldr	r3, [r6, #12]
     7ca:	f8d6 e004 	ldr.w	lr, [r6, #4]
     7ce:	f8d4 b000 	ldr.w	fp, [r4]
     7d2:	f882 c000 	strb.w	ip, [r2]
     7d6:	4601      	mov	r1, r0
     7d8:	f882 e001 	strb.w	lr, [r2, #1]
     7dc:	ea8e 000c 	eor.w	r0, lr, ip
     7e0:	7097      	strb	r7, [r2, #2]
     7e2:	70d3      	strb	r3, [r2, #3]
     7e4:	ea80 0907 	eor.w	r9, r0, r7
     7e8:	f8df c034 	ldr.w	ip, [pc, #52]	; 820 <main+0x3a0>
     7ec:	f8db 7020 	ldr.w	r7, [fp, #32]
     7f0:	ea89 0503 	eor.w	r5, r9, r3
     7f4:	f8aa 1000 	strh.w	r1, [sl]
     7f8:	f8cc 5000 	str.w	r5, [ip]
     7fc:	9b03      	ldr	r3, [sp, #12]
     7fe:	2f00      	cmp	r7, #0
     800:	f000 80bf 	beq.w	982 <main+0x502>
     804:	e00e      	b.n	824 <main+0x3a4>
     806:	bf00      	nop
     808:	001e847f 	.word	0x001e847f
     80c:	40044000 	.word	0x40044000
     810:	100001f4 	.word	0x100001f4
     814:	1000087c 	.word	0x1000087c
     818:	10000180 	.word	0x10000180
     81c:	10000220 	.word	0x10000220
     820:	10000218 	.word	0x10000218
     824:	932b      	str	r3, [sp, #172]	; 0xac
     826:	9a2b      	ldr	r2, [sp, #172]	; 0xac
     828:	4b7a      	ldr	r3, [pc, #488]	; (a14 <main+0x594>)
     82a:	429a      	cmp	r2, r3
     82c:	dc05      	bgt.n	83a <main+0x3ba>
     82e:	9d2b      	ldr	r5, [sp, #172]	; 0xac
     830:	1c68      	adds	r0, r5, #1
     832:	902b      	str	r0, [sp, #172]	; 0xac
     834:	992b      	ldr	r1, [sp, #172]	; 0xac
     836:	4299      	cmp	r1, r3
     838:	ddf9      	ble.n	82e <main+0x3ae>
     83a:	2001      	movs	r0, #1
     83c:	f001 fc3c 	bl	20b8 <acc_init>
     840:	f8ba 1000 	ldrh.w	r1, [sl]
     844:	2001      	movs	r0, #1
     846:	f001 f961 	bl	1b0c <storage_init>
     84a:	f001 f845 	bl	18d8 <storage_items>
     84e:	f8df b1f0 	ldr.w	fp, [pc, #496]	; a40 <main+0x5c0>
     852:	f8ba 1000 	ldrh.w	r1, [sl]
     856:	f8cb 0000 	str.w	r0, [fp]
     85a:	2001      	movs	r0, #1
     85c:	f001 fa48 	bl	1cf0 <bt_init>
     860:	6867      	ldr	r7, [r4, #4]
     862:	2300      	movs	r3, #0
     864:	60bb      	str	r3, [r7, #8]
     866:	6862      	ldr	r2, [r4, #4]
     868:	2104      	movs	r1, #4
     86a:	4f6b      	ldr	r7, [pc, #428]	; (a18 <main+0x598>)
     86c:	6111      	str	r1, [r2, #16]
     86e:	f10d 0890 	add.w	r8, sp, #144	; 0x90
     872:	469b      	mov	fp, r3
     874:	6825      	ldr	r5, [r4, #0]
     876:	6a28      	ldr	r0, [r5, #32]
     878:	2800      	cmp	r0, #0
     87a:	d077      	beq.n	96c <main+0x4ec>
     87c:	683a      	ldr	r2, [r7, #0]
     87e:	2a00      	cmp	r2, #0
     880:	d0f8      	beq.n	874 <main+0x3f4>
     882:	4866      	ldr	r0, [pc, #408]	; (a1c <main+0x59c>)
     884:	2102      	movs	r1, #2
     886:	6842      	ldr	r2, [r0, #4]
     888:	4d63      	ldr	r5, [pc, #396]	; (a18 <main+0x598>)
     88a:	6091      	str	r1, [r2, #8]
     88c:	6828      	ldr	r0, [r5, #0]
     88e:	b2c2      	uxtb	r2, r0
     890:	2a00      	cmp	r2, #0
     892:	d02d      	beq.n	8f0 <main+0x470>
     894:	3a01      	subs	r2, #1
     896:	b2d1      	uxtb	r1, r2
     898:	1c4d      	adds	r5, r1, #1
     89a:	9506      	str	r5, [sp, #24]
     89c:	f04f 0900 	mov.w	r9, #0
     8a0:	e00d      	b.n	8be <main+0x43e>
     8a2:	b1c3      	cbz	r3, 8d6 <main+0x456>
     8a4:	2b01      	cmp	r3, #1
     8a6:	d129      	bne.n	8fc <main+0x47c>
     8a8:	f89d 5020 	ldrb.w	r5, [sp, #32]
     8ac:	2d20      	cmp	r5, #32
     8ae:	d831      	bhi.n	914 <main+0x494>
     8b0:	2300      	movs	r3, #0
     8b2:	f8dd c018 	ldr.w	ip, [sp, #24]
     8b6:	f109 0901 	add.w	r9, r9, #1
     8ba:	45e1      	cmp	r9, ip
     8bc:	d018      	beq.n	8f0 <main+0x470>
     8be:	6839      	ldr	r1, [r7, #0]
     8c0:	4857      	ldr	r0, [pc, #348]	; (a20 <main+0x5a0>)
     8c2:	1e4d      	subs	r5, r1, #1
     8c4:	603d      	str	r5, [r7, #0]
     8c6:	f810 c009 	ldrb.w	ip, [r0, r9]
     8ca:	f1bc 0f1f 	cmp.w	ip, #31
     8ce:	4661      	mov	r1, ip
     8d0:	d9e7      	bls.n	8a2 <main+0x422>
     8d2:	2b3d      	cmp	r3, #61	; 0x3d
     8d4:	d8ed      	bhi.n	8b2 <main+0x432>
     8d6:	f8dd c018 	ldr.w	ip, [sp, #24]
     8da:	aa2c      	add	r2, sp, #176	; 0xb0
     8dc:	f109 0901 	add.w	r9, r9, #1
     8e0:	eb02 0e03 	add.w	lr, r2, r3
     8e4:	3301      	adds	r3, #1
     8e6:	45e1      	cmp	r9, ip
     8e8:	f80e 1c90 	strb.w	r1, [lr, #-144]
     8ec:	b2db      	uxtb	r3, r3
     8ee:	d1e6      	bne.n	8be <main+0x43e>
     8f0:	f8c7 b000 	str.w	fp, [r7]
     8f4:	6861      	ldr	r1, [r4, #4]
     8f6:	f8c1 b008 	str.w	fp, [r1, #8]
     8fa:	e7bb      	b.n	874 <main+0x3f4>
     8fc:	f10d 0cb0 	add.w	ip, sp, #176	; 0xb0
     900:	eb0c 0503 	add.w	r5, ip, r3
     904:	4847      	ldr	r0, [pc, #284]	; (a24 <main+0x5a4>)
     906:	a908      	add	r1, sp, #32
     908:	f805 bc90 	strb.w	fp, [r5, #-144]
     90c:	f003 fbea 	bl	40e4 <debug_printf>
     910:	2300      	movs	r3, #0
     912:	e7ce      	b.n	8b2 <main+0x432>
     914:	4844      	ldr	r0, [pc, #272]	; (a28 <main+0x5a8>)
     916:	4629      	mov	r1, r5
     918:	f003 fbe4 	bl	40e4 <debug_printf>
     91c:	f1a5 0262 	sub.w	r2, r5, #98	; 0x62
     920:	b2d3      	uxtb	r3, r2
     922:	2b17      	cmp	r3, #23
     924:	d801      	bhi.n	92a <main+0x4aa>
     926:	3d20      	subs	r5, #32
     928:	b2ed      	uxtb	r5, r5
     92a:	f1a5 0e3f 	sub.w	lr, r5, #63	; 0x3f
     92e:	f1be 0f18 	cmp.w	lr, #24
     932:	f200 8131 	bhi.w	b98 <main+0x718>
     936:	e8df f01e 	tbh	[pc, lr, lsl #1]
     93a:	012b      	.short	0x012b
     93c:	012f012f 	.word	0x012f012f
     940:	012f012f 	.word	0x012f012f
     944:	0122012f 	.word	0x0122012f
     948:	012f0087 	.word	0x012f0087
     94c:	012f012b 	.word	0x012f012b
     950:	012f012f 	.word	0x012f012f
     954:	0143012f 	.word	0x0143012f
     958:	012f012f 	.word	0x012f012f
     95c:	012f012f 	.word	0x012f012f
     960:	017c0134 	.word	0x017c0134
     964:	012f012f 	.word	0x012f012f
     968:	0053012f 	.word	0x0053012f
     96c:	4c2f      	ldr	r4, [pc, #188]	; (a2c <main+0x5ac>)
     96e:	4e30      	ldr	r6, [pc, #192]	; (a30 <main+0x5b0>)
     970:	68e1      	ldr	r1, [r4, #12]
     972:	f401 6ae0 	and.w	sl, r1, #1792	; 0x700
     976:	ea4a 0306 	orr.w	r3, sl, r6
     97a:	60e3      	str	r3, [r4, #12]
     97c:	f3bf 8f4f 	dsb	sy
     980:	e7fe      	b.n	980 <main+0x500>
     982:	4638      	mov	r0, r7
     984:	f001 f9b4 	bl	1cf0 <bt_init>
     988:	6866      	ldr	r6, [r4, #4]
     98a:	f8ba 1000 	ldrh.w	r1, [sl]
     98e:	4638      	mov	r0, r7
     990:	60b7      	str	r7, [r6, #8]
     992:	f001 f8bb 	bl	1b0c <storage_init>
     996:	f000 ffa5 	bl	18e4 <storage_erase>
     99a:	f000 ff9d 	bl	18d8 <storage_items>
     99e:	f8df b0a0 	ldr.w	fp, [pc, #160]	; a40 <main+0x5c0>
     9a2:	f8cb 0000 	str.w	r0, [fp]
     9a6:	f000 fc2d 	bl	1204 <pmu_init>
     9aa:	4640      	mov	r0, r8
     9ac:	f7ff fd0e 	bl	3cc <blink>
     9b0:	2051      	movs	r0, #81	; 0x51
     9b2:	4920      	ldr	r1, [pc, #128]	; (a34 <main+0x5b4>)
     9b4:	2205      	movs	r2, #5
     9b6:	463b      	mov	r3, r7
     9b8:	f000 fe16 	bl	15e8 <nRFAPI_Init>
     9bc:	2800      	cmp	r0, #0
     9be:	f040 8161 	bne.w	c84 <main+0x804>
     9c2:	2604      	movs	r6, #4
     9c4:	4605      	mov	r5, r0
     9c6:	6863      	ldr	r3, [r4, #4]
     9c8:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
     9cc:	611e      	str	r6, [r3, #16]
     9ce:	f000 fbcd 	bl	116c <pmu_sleep_ms>
     9d2:	6867      	ldr	r7, [r4, #4]
     9d4:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
     9d8:	613d      	str	r5, [r7, #16]
     9da:	f000 fbc7 	bl	116c <pmu_sleep_ms>
     9de:	e7f2      	b.n	9c6 <main+0x546>
     9e0:	f8df e060 	ldr.w	lr, [pc, #96]	; a44 <main+0x5c4>
     9e4:	46c4      	mov	ip, r8
     9e6:	e89e 000f 	ldmia.w	lr, {r0, r1, r2, r3}
     9ea:	e8ac 0007 	stmia.w	ip!, {r0, r1, r2}
     9ee:	f10d 0890 	add.w	r8, sp, #144	; 0x90
     9f2:	4641      	mov	r1, r8
     9f4:	4810      	ldr	r0, [pc, #64]	; (a38 <main+0x5b8>)
     9f6:	220d      	movs	r2, #13
     9f8:	f88c 3000 	strb.w	r3, [ip]
     9fc:	f003 fb72 	bl	40e4 <debug_printf>
     a00:	2000      	movs	r0, #0
     a02:	210d      	movs	r1, #13
     a04:	4642      	mov	r2, r8
     a06:	f000 ffd3 	bl	19b0 <storage_write>
     a0a:	480c      	ldr	r0, [pc, #48]	; (a3c <main+0x5bc>)
     a0c:	f003 fb6a 	bl	40e4 <debug_printf>
     a10:	2300      	movs	r3, #0
     a12:	e74e      	b.n	8b2 <main+0x432>
     a14:	001e847f 	.word	0x001e847f
     a18:	10000930 	.word	0x10000930
     a1c:	100001f4 	.word	0x100001f4
     a20:	100008ec 	.word	0x100008ec
     a24:	00004ba4 	.word	0x00004ba4
     a28:	0000471c 	.word	0x0000471c
     a2c:	e000ed00 	.word	0xe000ed00
     a30:	05fa0004 	.word	0x05fa0004
     a34:	00004714 	.word	0x00004714
     a38:	00004b1c 	.word	0x00004b1c
     a3c:	00004ba0 	.word	0x00004ba0
     a40:	1000021c 	.word	0x1000021c
     a44:	00004be0 	.word	0x00004be0
     a48:	48a0      	ldr	r0, [pc, #640]	; (ccc <main+0x84c>)
     a4a:	f003 fb4b 	bl	40e4 <debug_printf>
     a4e:	f000 ff49 	bl	18e4 <storage_erase>
     a52:	489f      	ldr	r0, [pc, #636]	; (cd0 <main+0x850>)
     a54:	f003 fb46 	bl	40e4 <debug_printf>
     a58:	f04f 0e00 	mov.w	lr, #0
     a5c:	210b      	movs	r1, #11
     a5e:	a828      	add	r0, sp, #160	; 0xa0
     a60:	fa9e f28e 	rev.w	r2, lr
     a64:	4675      	mov	r5, lr
     a66:	fa9e f39e 	rev16.w	r3, lr
     a6a:	f88d e0aa 	strb.w	lr, [sp, #170]	; 0xaa
     a6e:	f8ad 30a8 	strh.w	r3, [sp, #168]	; 0xa8
     a72:	9228      	str	r2, [sp, #160]	; 0xa0
     a74:	f002 fbee 	bl	3254 <crc8>
     a78:	aa28      	add	r2, sp, #160	; 0xa0
     a7a:	f88d 00ab 	strb.w	r0, [sp, #171]	; 0xab
     a7e:	210c      	movs	r1, #12
     a80:	4628      	mov	r0, r5
     a82:	f000 ff95 	bl	19b0 <storage_write>
     a86:	2301      	movs	r3, #1
     a88:	210b      	movs	r1, #11
     a8a:	a828      	add	r0, sp, #160	; 0xa0
     a8c:	fa93 fc93 	rev16.w	ip, r3
     a90:	350c      	adds	r5, #12
     a92:	f8ad c0a8 	strh.w	ip, [sp, #168]	; 0xa8
     a96:	ba2a      	rev	r2, r5
     a98:	f88d 30aa 	strb.w	r3, [sp, #170]	; 0xaa
     a9c:	9228      	str	r2, [sp, #160]	; 0xa0
     a9e:	f002 fbd9 	bl	3254 <crc8>
     aa2:	4629      	mov	r1, r5
     aa4:	f88d 00ab 	strb.w	r0, [sp, #171]	; 0xab
     aa8:	aa28      	add	r2, sp, #160	; 0xa0
     aaa:	4628      	mov	r0, r5
     aac:	f000 ff80 	bl	19b0 <storage_write>
     ab0:	350c      	adds	r5, #12
     ab2:	464b      	mov	r3, r9
     ab4:	46c4      	mov	ip, r8
     ab6:	4887      	ldr	r0, [pc, #540]	; (cd4 <main+0x854>)
     ab8:	fa95 f985 	rev.w	r9, r5
     abc:	fba0 0105 	umull	r0, r1, r0, r5
     ac0:	08ca      	lsrs	r2, r1, #3
     ac2:	f002 0803 	and.w	r8, r2, #3
     ac6:	210b      	movs	r1, #11
     ac8:	a828      	add	r0, sp, #160	; 0xa0
     aca:	ba52      	rev16	r2, r2
     acc:	9303      	str	r3, [sp, #12]
     ace:	f8cd c010 	str.w	ip, [sp, #16]
     ad2:	f8cd 90a0 	str.w	r9, [sp, #160]	; 0xa0
     ad6:	f8ad 20a8 	strh.w	r2, [sp, #168]	; 0xa8
     ada:	f88d 80aa 	strb.w	r8, [sp, #170]	; 0xaa
     ade:	f002 fbb9 	bl	3254 <crc8>
     ae2:	aa28      	add	r2, sp, #160	; 0xa0
     ae4:	210c      	movs	r1, #12
     ae6:	f88d 00ab 	strb.w	r0, [sp, #171]	; 0xab
     aea:	4628      	mov	r0, r5
     aec:	f000 ff60 	bl	19b0 <storage_write>
     af0:	4978      	ldr	r1, [pc, #480]	; (cd4 <main+0x854>)
     af2:	f105 080c 	add.w	r8, r5, #12
     af6:	fba1 1008 	umull	r1, r0, r1, r8
     afa:	fa98 fe88 	rev.w	lr, r8
     afe:	08c3      	lsrs	r3, r0, #3
     b00:	f003 0903 	and.w	r9, r3, #3
     b04:	210b      	movs	r1, #11
     b06:	a828      	add	r0, sp, #160	; 0xa0
     b08:	fa93 fc93 	rev16.w	ip, r3
     b0c:	f8cd e0a0 	str.w	lr, [sp, #160]	; 0xa0
     b10:	f8ad c0a8 	strh.w	ip, [sp, #168]	; 0xa8
     b14:	f88d 90aa 	strb.w	r9, [sp, #170]	; 0xaa
     b18:	f002 fb9c 	bl	3254 <crc8>
     b1c:	210c      	movs	r1, #12
     b1e:	aa28      	add	r2, sp, #160	; 0xa0
     b20:	f88d 00ab 	strb.w	r0, [sp, #171]	; 0xab
     b24:	4640      	mov	r0, r8
     b26:	f000 ff43 	bl	19b0 <storage_write>
     b2a:	4a6a      	ldr	r2, [pc, #424]	; (cd4 <main+0x854>)
     b2c:	f105 0918 	add.w	r9, r5, #24
     b30:	fba2 0109 	umull	r0, r1, r2, r9
     b34:	fa99 fe89 	rev.w	lr, r9
     b38:	08cb      	lsrs	r3, r1, #3
     b3a:	f003 0803 	and.w	r8, r3, #3
     b3e:	210b      	movs	r1, #11
     b40:	a828      	add	r0, sp, #160	; 0xa0
     b42:	fa93 fc93 	rev16.w	ip, r3
     b46:	f8cd e0a0 	str.w	lr, [sp, #160]	; 0xa0
     b4a:	f8ad c0a8 	strh.w	ip, [sp, #168]	; 0xa8
     b4e:	f88d 80aa 	strb.w	r8, [sp, #170]	; 0xaa
     b52:	f002 fb7f 	bl	3254 <crc8>
     b56:	210c      	movs	r1, #12
     b58:	f88d 00ab 	strb.w	r0, [sp, #171]	; 0xab
     b5c:	aa28      	add	r2, sp, #160	; 0xa0
     b5e:	4648      	mov	r0, r9
     b60:	f000 ff26 	bl	19b0 <storage_write>
     b64:	485c      	ldr	r0, [pc, #368]	; (cd8 <main+0x858>)
     b66:	3524      	adds	r5, #36	; 0x24
     b68:	4285      	cmp	r5, r0
     b6a:	9b03      	ldr	r3, [sp, #12]
     b6c:	f8dd c010 	ldr.w	ip, [sp, #16]
     b70:	d1a1      	bne.n	ab6 <main+0x636>
     b72:	485a      	ldr	r0, [pc, #360]	; (cdc <main+0x85c>)
     b74:	4699      	mov	r9, r3
     b76:	46e0      	mov	r8, ip
     b78:	f003 fab4 	bl	40e4 <debug_printf>
     b7c:	e745      	b.n	a0a <main+0x58a>
     b7e:	4853      	ldr	r0, [pc, #332]	; (ccc <main+0x84c>)
     b80:	f003 fab0 	bl	40e4 <debug_printf>
     b84:	f000 feae 	bl	18e4 <storage_erase>
     b88:	4955      	ldr	r1, [pc, #340]	; (ce0 <main+0x860>)
     b8a:	f8c1 b000 	str.w	fp, [r1]
     b8e:	e73c      	b.n	a0a <main+0x58a>
     b90:	4854      	ldr	r0, [pc, #336]	; (ce4 <main+0x864>)
     b92:	f003 faa7 	bl	40e4 <debug_printf>
     b96:	e738      	b.n	a0a <main+0x58a>
     b98:	4853      	ldr	r0, [pc, #332]	; (ce8 <main+0x868>)
     b9a:	4629      	mov	r1, r5
     b9c:	f003 faa2 	bl	40e4 <debug_printf>
     ba0:	e733      	b.n	a0a <main+0x58a>
     ba2:	2120      	movs	r1, #32
     ba4:	4851      	ldr	r0, [pc, #324]	; (cec <main+0x86c>)
     ba6:	f003 fa9d 	bl	40e4 <debug_printf>
     baa:	aa18      	add	r2, sp, #96	; 0x60
     bac:	2120      	movs	r1, #32
     bae:	2000      	movs	r0, #0
     bb0:	f000 fee2 	bl	1978 <storage_read>
     bb4:	a818      	add	r0, sp, #96	; 0x60
     bb6:	2100      	movs	r1, #0
     bb8:	2220      	movs	r2, #32
     bba:	f003 faab 	bl	4114 <hex_dump>
     bbe:	e724      	b.n	a0a <main+0x58a>
     bc0:	4842      	ldr	r0, [pc, #264]	; (ccc <main+0x84c>)
     bc2:	f003 fa8f 	bl	40e4 <debug_printf>
     bc6:	f000 fe8d 	bl	18e4 <storage_erase>
     bca:	4849      	ldr	r0, [pc, #292]	; (cf0 <main+0x870>)
     bcc:	f003 fa8a 	bl	40e4 <debug_printf>
     bd0:	4848      	ldr	r0, [pc, #288]	; (cf4 <main+0x874>)
     bd2:	c803      	ldmia	r0, {r0, r1}
     bd4:	f8c8 0000 	str.w	r0, [r8]
     bd8:	f10d 0890 	add.w	r8, sp, #144	; 0x90
     bdc:	0c0b      	lsrs	r3, r1, #16
     bde:	f8ad 1094 	strh.w	r1, [sp, #148]	; 0x94
     be2:	2000      	movs	r0, #0
     be4:	2120      	movs	r1, #32
     be6:	4642      	mov	r2, r8
     be8:	f88d 3096 	strb.w	r3, [sp, #150]	; 0x96
     bec:	f000 fee0 	bl	19b0 <storage_write>
     bf0:	2020      	movs	r0, #32
     bf2:	4601      	mov	r1, r0
     bf4:	4642      	mov	r2, r8
     bf6:	f000 fedb 	bl	19b0 <storage_write>
     bfa:	2120      	movs	r1, #32
     bfc:	4642      	mov	r2, r8
     bfe:	2040      	movs	r0, #64	; 0x40
     c00:	f000 fed6 	bl	19b0 <storage_write>
     c04:	4835      	ldr	r0, [pc, #212]	; (cdc <main+0x85c>)
     c06:	f003 fa6d 	bl	40e4 <debug_printf>
     c0a:	483b      	ldr	r0, [pc, #236]	; (cf8 <main+0x878>)
     c0c:	f003 fa6a 	bl	40e4 <debug_printf>
     c10:	2000      	movs	r0, #0
     c12:	f100 0520 	add.w	r5, r0, #32
     c16:	4629      	mov	r1, r5
     c18:	aa18      	add	r2, sp, #96	; 0x60
     c1a:	f000 fead 	bl	1978 <storage_read>
     c1e:	2100      	movs	r1, #0
     c20:	2220      	movs	r2, #32
     c22:	a818      	add	r0, sp, #96	; 0x60
     c24:	f003 fa76 	bl	4114 <hex_dump>
     c28:	2d60      	cmp	r5, #96	; 0x60
     c2a:	f43f aeee 	beq.w	a0a <main+0x58a>
     c2e:	4628      	mov	r0, r5
     c30:	e7ef      	b.n	c12 <main+0x792>
     c32:	4832      	ldr	r0, [pc, #200]	; (cfc <main+0x87c>)
     c34:	f003 fa56 	bl	40e4 <debug_printf>
     c38:	68f5      	ldr	r5, [r6, #12]
     c3a:	6831      	ldr	r1, [r6, #0]
     c3c:	6872      	ldr	r2, [r6, #4]
     c3e:	68b3      	ldr	r3, [r6, #8]
     c40:	482f      	ldr	r0, [pc, #188]	; (d00 <main+0x880>)
     c42:	9500      	str	r5, [sp, #0]
     c44:	2535      	movs	r5, #53	; 0x35
     c46:	f003 fa4d 	bl	40e4 <debug_printf>
     c4a:	9500      	str	r5, [sp, #0]
     c4c:	3542      	adds	r5, #66	; 0x42
     c4e:	22d3      	movs	r2, #211	; 0xd3
     c50:	23f0      	movs	r3, #240	; 0xf0
     c52:	21e7      	movs	r1, #231	; 0xe7
     c54:	9501      	str	r5, [sp, #4]
     c56:	482b      	ldr	r0, [pc, #172]	; (d04 <main+0x884>)
     c58:	4d21      	ldr	r5, [pc, #132]	; (ce0 <main+0x860>)
     c5a:	f003 fa43 	bl	40e4 <debug_printf>
     c5e:	f8ba 1000 	ldrh.w	r1, [sl]
     c62:	4829      	ldr	r0, [pc, #164]	; (d08 <main+0x888>)
     c64:	f003 fa3e 	bl	40e4 <debug_printf>
     c68:	4828      	ldr	r0, [pc, #160]	; (d0c <main+0x88c>)
     c6a:	6829      	ldr	r1, [r5, #0]
     c6c:	f003 fa3a 	bl	40e4 <debug_printf>
     c70:	f002 faa8 	bl	31c4 <spi_status>
     c74:	f001 f980 	bl	1f78 <acc_status>
     c78:	f000 ff1a 	bl	1ab0 <storage_status>
     c7c:	4824      	ldr	r0, [pc, #144]	; (d10 <main+0x890>)
     c7e:	f003 fa31 	bl	40e4 <debug_printf>
     c82:	e6c2      	b.n	a0a <main+0x58a>
     c84:	2001      	movs	r0, #1
     c86:	f000 fd21 	bl	16cc <nRFAPI_SetTxPower>
     c8a:	2001      	movs	r0, #1
     c8c:	f000 fb68 	bl	1360 <nRFCMD_Power>
     c90:	2003      	movs	r0, #3
     c92:	f7ff fb9b 	bl	3cc <blink>
     c96:	491f      	ldr	r1, [pc, #124]	; (d14 <main+0x894>)
     c98:	4a1f      	ldr	r2, [pc, #124]	; (d18 <main+0x898>)
     c9a:	f8d1 3094 	ldr.w	r3, [r1, #148]	; 0x94
     c9e:	6895      	ldr	r5, [r2, #8]
     ca0:	f10d 0980 	add.w	r9, sp, #128	; 0x80
     ca4:	9506      	str	r5, [sp, #24]
     ca6:	481d      	ldr	r0, [pc, #116]	; (d1c <main+0x89c>)
     ca8:	4d1d      	ldr	r5, [pc, #116]	; (d20 <main+0x8a0>)
     caa:	f8df 8078 	ldr.w	r8, [pc, #120]	; d24 <main+0x8a4>
     cae:	f001 f8bb 	bl	1e28 <MakeEmpty>
     cb2:	465f      	mov	r7, fp
     cb4:	f8cd 9014 	str.w	r9, [sp, #20]
     cb8:	46a1      	mov	r9, r4
     cba:	6860      	ldr	r0, [r4, #4]
     cbc:	6c06      	ldr	r6, [r0, #64]	; 0x40
     cbe:	2e00      	cmp	r6, #0
     cc0:	d145      	bne.n	d4e <main+0x8ce>
     cc2:	f8d9 3004 	ldr.w	r3, [r9, #4]
     cc6:	2204      	movs	r2, #4
     cc8:	611a      	str	r2, [r3, #16]
     cca:	e033      	b.n	d34 <main+0x8b4>
     ccc:	00004ac4 	.word	0x00004ac4
     cd0:	00004b54 	.word	0x00004b54
     cd4:	aaaaaaab 	.word	0xaaaaaaab
     cd8:	00400008 	.word	0x00400008
     cdc:	00004af8 	.word	0x00004af8
     ce0:	1000021c 	.word	0x1000021c
     ce4:	00004720 	.word	0x00004720
     ce8:	00004b6c 	.word	0x00004b6c
     cec:	00004b3c 	.word	0x00004b3c
     cf0:	00004adc 	.word	0x00004adc
     cf4:	00004bf0 	.word	0x00004bf0
     cf8:	00004b04 	.word	0x00004b04
     cfc:	00004950 	.word	0x00004950
     d00:	000049f8 	.word	0x000049f8
     d04:	00004a1c 	.word	0x00004a1c
     d08:	00004a4c 	.word	0x00004a4c
     d0c:	00004a68 	.word	0x00004a68
     d10:	00004a88 	.word	0x00004a88
     d14:	40048000 	.word	0x40048000
     d18:	40014000 	.word	0x40014000
     d1c:	10000224 	.word	0x10000224
     d20:	10000208 	.word	0x10000208
     d24:	1000086c 	.word	0x1000086c
     d28:	b2de      	uxtb	r6, r3
     d2a:	2e14      	cmp	r6, #20
     d2c:	f000 81a8 	beq.w	1080 <main+0xc00>
     d30:	f000 fa1c 	bl	116c <pmu_sleep_ms>
     d34:	6862      	ldr	r2, [r4, #4]
     d36:	1c73      	adds	r3, r6, #1
     d38:	6c11      	ldr	r1, [r2, #64]	; 0x40
     d3a:	2064      	movs	r0, #100	; 0x64
     d3c:	2900      	cmp	r1, #0
     d3e:	d0f3      	beq.n	d28 <main+0x8a8>
     d40:	2e13      	cmp	r6, #19
     d42:	f200 819d 	bhi.w	1080 <main+0xc00>
     d46:	49c3      	ldr	r1, [pc, #780]	; (1054 <main+0xbd4>)
     d48:	2000      	movs	r0, #0
     d4a:	684b      	ldr	r3, [r1, #4]
     d4c:	6118      	str	r0, [r3, #16]
     d4e:	49c2      	ldr	r1, [pc, #776]	; (1058 <main+0xbd8>)
     d50:	9a06      	ldr	r2, [sp, #24]
     d52:	688e      	ldr	r6, [r1, #8]
     d54:	ebc2 0e06 	rsb	lr, r2, r6
     d58:	f1be 0f1d 	cmp.w	lr, #29
     d5c:	f200 811b 	bhi.w	f96 <main+0xb16>
     d60:	2002      	movs	r0, #2
     d62:	f000 fa03 	bl	116c <pmu_sleep_ms>
     d66:	2001      	movs	r0, #1
     d68:	f000 fc32 	bl	15d0 <nRFAPI_SetRxMode>
     d6c:	2001      	movs	r0, #1
     d6e:	f000 fae9 	bl	1344 <nRFCMD_CE>
     d72:	f8df e304 	ldr.w	lr, [pc, #772]	; 1078 <main+0xbf8>
     d76:	f8df c2e8 	ldr.w	ip, [pc, #744]	; 1060 <main+0xbe0>
     d7a:	f8de 6000 	ldr.w	r6, [lr]
     d7e:	49b7      	ldr	r1, [pc, #732]	; (105c <main+0xbdc>)
     d80:	0c32      	lsrs	r2, r6, #16
     d82:	6809      	ldr	r1, [r1, #0]
     d84:	b2b3      	uxth	r3, r6
     d86:	48b4      	ldr	r0, [pc, #720]	; (1058 <main+0xbd8>)
     d88:	f8dc 6000 	ldr.w	r6, [ip]
     d8c:	f8df c2ec 	ldr.w	ip, [pc, #748]	; 107c <main+0xbfc>
     d90:	f647 0ef3 	movw	lr, #30963	; 0x78f3
     d94:	6880      	ldr	r0, [r0, #8]
     d96:	fb0e 2303 	mla	r3, lr, r3, r2
     d9a:	ea4f 4e11 	mov.w	lr, r1, lsr #16
     d9e:	b28a      	uxth	r2, r1
     da0:	f8dc 1000 	ldr.w	r1, [ip]
     da4:	f249 0c69 	movw	ip, #36969	; 0x9069
     da8:	fb0c e202 	mla	r2, ip, r2, lr
     dac:	ea86 0c00 	eor.w	ip, r6, r0
     db0:	4461      	add	r1, ip
     db2:	ea83 0001 	eor.w	r0, r3, r1
     db6:	ea80 4e02 	eor.w	lr, r0, r2, lsl #16
     dba:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
     dbe:	fbbe fcf0 	udiv	ip, lr, r0
     dc2:	fb00 ec1c 	mls	ip, r0, ip, lr
     dc6:	f8df e2b4 	ldr.w	lr, [pc, #692]	; 107c <main+0xbfc>
     dca:	3601      	adds	r6, #1
     dcc:	f8ce 1000 	str.w	r1, [lr]
     dd0:	49a3      	ldr	r1, [pc, #652]	; (1060 <main+0xbe0>)
     dd2:	f50c 707a 	add.w	r0, ip, #1000	; 0x3e8
     dd6:	600e      	str	r6, [r1, #0]
     dd8:	f8df c29c 	ldr.w	ip, [pc, #668]	; 1078 <main+0xbf8>
     ddc:	4e9f      	ldr	r6, [pc, #636]	; (105c <main+0xbdc>)
     dde:	b280      	uxth	r0, r0
     de0:	6032      	str	r2, [r6, #0]
     de2:	f8cc 3000 	str.w	r3, [ip]
     de6:	f000 f9c1 	bl	116c <pmu_sleep_ms>
     dea:	2000      	movs	r0, #0
     dec:	f000 faaa 	bl	1344 <nRFCMD_CE>
     df0:	f000 fa9c 	bl	132c <nRFCMD_IRQ>
     df4:	2800      	cmp	r0, #0
     df6:	d077      	beq.n	ee8 <main+0xa68>
     df8:	4e9a      	ldr	r6, [pc, #616]	; (1064 <main+0xbe4>)
     dfa:	e005      	b.n	e08 <main+0x988>
     dfc:	f000 fc86 	bl	170c <nRFAPI_GetFifoStatus>
     e00:	f010 0f01 	tst.w	r0, #1
     e04:	f040 8148 	bne.w	1098 <main+0xc18>
     e08:	2210      	movs	r2, #16
     e0a:	4996      	ldr	r1, [pc, #600]	; (1064 <main+0xbe4>)
     e0c:	2061      	movs	r0, #97	; 0x61
     e0e:	f000 fb21 	bl	1454 <nRFCMD_RegReadBuf>
     e12:	4a95      	ldr	r2, [pc, #596]	; (1068 <main+0xbe8>)
     e14:	2104      	movs	r1, #4
     e16:	4893      	ldr	r0, [pc, #588]	; (1064 <main+0xbe4>)
     e18:	f002 fc02 	bl	3620 <xxtea_decode>
     e1c:	210e      	movs	r1, #14
     e1e:	4891      	ldr	r0, [pc, #580]	; (1064 <main+0xbe4>)
     e20:	f002 fa5e 	bl	32e0 <crc16>
     e24:	f8b8 c00e 	ldrh.w	ip, [r8, #14]
     e28:	fa9c f29c 	rev16.w	r2, ip
     e2c:	b293      	uxth	r3, r2
     e2e:	4298      	cmp	r0, r3
     e30:	d1e4      	bne.n	dfc <main+0x97c>
     e32:	7830      	ldrb	r0, [r6, #0]
     e34:	2867      	cmp	r0, #103	; 0x67
     e36:	d1e1      	bne.n	dfc <main+0x97c>
     e38:	f8d6 1005 	ldr.w	r1, [r6, #5]
     e3c:	488b      	ldr	r0, [pc, #556]	; (106c <main+0xbec>)
     e3e:	f001 f87d 	bl	1f3c <Contains>
     e42:	4603      	mov	r3, r0
     e44:	2800      	cmp	r0, #0
     e46:	d1d9      	bne.n	dfc <main+0x97c>
     e48:	6861      	ldr	r1, [r4, #4]
     e4a:	2202      	movs	r2, #2
     e4c:	608a      	str	r2, [r1, #8]
     e4e:	2064      	movs	r0, #100	; 0x64
     e50:	9204      	str	r2, [sp, #16]
     e52:	9303      	str	r3, [sp, #12]
     e54:	f000 f98a 	bl	116c <pmu_sleep_ms>
     e58:	9b03      	ldr	r3, [sp, #12]
     e5a:	6861      	ldr	r1, [r4, #4]
     e5c:	20c8      	movs	r0, #200	; 0xc8
     e5e:	608b      	str	r3, [r1, #8]
     e60:	9303      	str	r3, [sp, #12]
     e62:	f000 f983 	bl	116c <pmu_sleep_ms>
     e66:	6861      	ldr	r1, [r4, #4]
     e68:	9a04      	ldr	r2, [sp, #16]
     e6a:	2064      	movs	r0, #100	; 0x64
     e6c:	608a      	str	r2, [r1, #8]
     e6e:	f000 f97d 	bl	116c <pmu_sleep_ms>
     e72:	6862      	ldr	r2, [r4, #4]
     e74:	9b03      	ldr	r3, [sp, #12]
     e76:	20c8      	movs	r0, #200	; 0xc8
     e78:	6093      	str	r3, [r2, #8]
     e7a:	f000 f977 	bl	116c <pmu_sleep_ms>
     e7e:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
     e82:	f000 f973 	bl	116c <pmu_sleep_ms>
     e86:	7b73      	ldrb	r3, [r6, #13]
     e88:	4978      	ldr	r1, [pc, #480]	; (106c <main+0xbec>)
     e8a:	1c5a      	adds	r2, r3, #1
     e8c:	9100      	str	r1, [sp, #0]
     e8e:	7372      	strb	r2, [r6, #13]
     e90:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
     e94:	f000 ffce 	bl	1e34 <Enqueue>
     e98:	486f      	ldr	r0, [pc, #444]	; (1058 <main+0xbd8>)
     e9a:	f896 c00d 	ldrb.w	ip, [r6, #13]
     e9e:	6881      	ldr	r1, [r0, #8]
     ea0:	4873      	ldr	r0, [pc, #460]	; (1070 <main+0xbf0>)
     ea2:	6069      	str	r1, [r5, #4]
     ea4:	f8d6 3001 	ldr.w	r3, [r6, #1]
     ea8:	f8d6 e005 	ldr.w	lr, [r6, #5]
     eac:	ba1a      	rev	r2, r3
     eae:	210f      	movs	r1, #15
     eb0:	f8b6 3009 	ldrh.w	r3, [r6, #9]
     eb4:	fa9e fe8e 	rev.w	lr, lr
     eb8:	ba5b      	rev16	r3, r3
     eba:	602a      	str	r2, [r5, #0]
     ebc:	81ab      	strh	r3, [r5, #12]
     ebe:	f8c5 e008 	str.w	lr, [r5, #8]
     ec2:	f885 c00e 	strb.w	ip, [r5, #14]
     ec6:	f002 f9c5 	bl	3254 <crc8>
     eca:	f8db 3000 	ldr.w	r3, [fp]
     ece:	73e8      	strb	r0, [r5, #15]
     ed0:	f5b3 2f80 	cmp.w	r3, #262144	; 0x40000
     ed4:	d292      	bcs.n	dfc <main+0x97c>
     ed6:	0118      	lsls	r0, r3, #4
     ed8:	2110      	movs	r1, #16
     eda:	4a65      	ldr	r2, [pc, #404]	; (1070 <main+0xbf0>)
     edc:	f000 fd68 	bl	19b0 <storage_write>
     ee0:	683b      	ldr	r3, [r7, #0]
     ee2:	1c58      	adds	r0, r3, #1
     ee4:	6038      	str	r0, [r7, #0]
     ee6:	e789      	b.n	dfc <main+0x97c>
     ee8:	4860      	ldr	r0, [pc, #384]	; (106c <main+0xbec>)
     eea:	f000 ff97 	bl	1e1c <IsEmpty>
     eee:	4606      	mov	r6, r0
     ef0:	2800      	cmp	r0, #0
     ef2:	f47f aee2 	bne.w	cba <main+0x83a>
     ef6:	6861      	ldr	r1, [r4, #4]
     ef8:	2204      	movs	r2, #4
     efa:	610a      	str	r2, [r1, #16]
     efc:	2001      	movs	r0, #1
     efe:	f000 fa21 	bl	1344 <nRFCMD_CE>
     f02:	2002      	movs	r0, #2
     f04:	f000 f932 	bl	116c <pmu_sleep_ms>
     f08:	4630      	mov	r0, r6
     f0a:	f000 fa1b 	bl	1344 <nRFCMD_CE>
     f0e:	f000 fc01 	bl	1714 <nRFAPI_CarrierDetect>
     f12:	2801      	cmp	r0, #1
     f14:	d035      	beq.n	f82 <main+0xb02>
     f16:	4631      	mov	r1, r6
     f18:	2210      	movs	r2, #16
     f1a:	4852      	ldr	r0, [pc, #328]	; (1064 <main+0xbe4>)
     f1c:	f7ff f9aa 	bl	274 <memset>
     f20:	4852      	ldr	r0, [pc, #328]	; (106c <main+0xbec>)
     f22:	f000 ffb5 	bl	1e90 <Front>
     f26:	4601      	mov	r1, r0
     f28:	68c3      	ldr	r3, [r0, #12]
     f2a:	6882      	ldr	r2, [r0, #8]
     f2c:	6849      	ldr	r1, [r1, #4]
     f2e:	6800      	ldr	r0, [r0, #0]
     f30:	46c4      	mov	ip, r8
     f32:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
     f36:	210e      	movs	r1, #14
     f38:	484a      	ldr	r0, [pc, #296]	; (1064 <main+0xbe4>)
     f3a:	f002 f9d1 	bl	32e0 <crc16>
     f3e:	fa90 fc90 	rev16.w	ip, r0
     f42:	4630      	mov	r0, r6
     f44:	f8a8 c00e 	strh.w	ip, [r8, #14]
     f48:	f000 fb42 	bl	15d0 <nRFAPI_SetRxMode>
     f4c:	4a46      	ldr	r2, [pc, #280]	; (1068 <main+0xbe8>)
     f4e:	2104      	movs	r1, #4
     f50:	4844      	ldr	r0, [pc, #272]	; (1064 <main+0xbe4>)
     f52:	f002 fa29 	bl	33a8 <xxtea_encode>
     f56:	2001      	movs	r0, #1
     f58:	f000 fbb8 	bl	16cc <nRFAPI_SetTxPower>
     f5c:	2110      	movs	r1, #16
     f5e:	4841      	ldr	r0, [pc, #260]	; (1064 <main+0xbe4>)
     f60:	f000 fbc6 	bl	16f0 <nRFAPI_TX>
     f64:	2001      	movs	r0, #1
     f66:	f000 f9ed 	bl	1344 <nRFCMD_CE>
     f6a:	2002      	movs	r0, #2
     f6c:	f000 f8fe 	bl	116c <pmu_sleep_ms>
     f70:	4630      	mov	r0, r6
     f72:	f000 f9e7 	bl	1344 <nRFCMD_CE>
     f76:	483d      	ldr	r0, [pc, #244]	; (106c <main+0xbec>)
     f78:	f000 ff90 	bl	1e9c <RotQueue>
     f7c:	f8d9 0004 	ldr.w	r0, [r9, #4]
     f80:	6106      	str	r6, [r0, #16]
     f82:	2070      	movs	r0, #112	; 0x70
     f84:	f000 fbae 	bl	16e4 <nRFAPI_ClearIRQ>
     f88:	f000 fbbc 	bl	1704 <nRFAPI_FlushTX>
     f8c:	f000 fbb6 	bl	16fc <nRFAPI_FlushRX>
     f90:	f000 fb26 	bl	15e0 <nRFAPI_PowerDown>
     f94:	e691      	b.n	cba <main+0x83a>
     f96:	4a37      	ldr	r2, [pc, #220]	; (1074 <main+0xbf4>)
     f98:	2667      	movs	r6, #103	; 0x67
     f9a:	f8b2 e000 	ldrh.w	lr, [r2]
     f9e:	f88d 6080 	strb.w	r6, [sp, #128]	; 0x80
     fa2:	f10e 0c01 	add.w	ip, lr, #1
     fa6:	6888      	ldr	r0, [r1, #8]
     fa8:	f8ba 3000 	ldrh.w	r3, [sl]
     fac:	fa1f f68c 	uxth.w	r6, ip
     fb0:	fa93 fc93 	rev16.w	ip, r3
     fb4:	f8ad c018 	strh.w	ip, [sp, #24]
     fb8:	f8bd 1018 	ldrh.w	r1, [sp, #24]
     fbc:	fa90 fc80 	rev.w	ip, r0
     fc0:	ea46 4203 	orr.w	r2, r6, r3, lsl #16
     fc4:	2001      	movs	r0, #1
     fc6:	fa92 fe82 	rev.w	lr, r2
     fca:	f8cd e085 	str.w	lr, [sp, #133]	; 0x85
     fce:	f8cd e01c 	str.w	lr, [sp, #28]
     fd2:	f8dd e014 	ldr.w	lr, [sp, #20]
     fd6:	f8cd c081 	str.w	ip, [sp, #129]	; 0x81
     fda:	f8ad 1089 	strh.w	r1, [sp, #137]	; 0x89
     fde:	f88d 008d 	strb.w	r0, [sp, #141]	; 0x8d
     fe2:	e89e 000f 	ldmia.w	lr, {r0, r1, r2, r3}
     fe6:	f8df e08c 	ldr.w	lr, [pc, #140]	; 1074 <main+0xbf4>
     fea:	f8ae 6000 	strh.w	r6, [lr]
     fee:	4e1f      	ldr	r6, [pc, #124]	; (106c <main+0xbec>)
     ff0:	f8cd c010 	str.w	ip, [sp, #16]
     ff4:	9600      	str	r6, [sp, #0]
     ff6:	4e18      	ldr	r6, [pc, #96]	; (1058 <main+0xbd8>)
     ff8:	f000 ff1c 	bl	1e34 <Enqueue>
     ffc:	f8dd c010 	ldr.w	ip, [sp, #16]
    1000:	68b6      	ldr	r6, [r6, #8]
    1002:	fa9c f38c 	rev.w	r3, ip
    1006:	f8dd c01c 	ldr.w	ip, [sp, #28]
    100a:	fa9c f28c 	rev.w	r2, ip
    100e:	f04f 0c01 	mov.w	ip, #1
    1012:	f8bd 0018 	ldrh.w	r0, [sp, #24]
    1016:	210f      	movs	r1, #15
    1018:	fa90 fe90 	rev16.w	lr, r0
    101c:	602b      	str	r3, [r5, #0]
    101e:	606b      	str	r3, [r5, #4]
    1020:	4813      	ldr	r0, [pc, #76]	; (1070 <main+0xbf0>)
    1022:	60aa      	str	r2, [r5, #8]
    1024:	f8a5 e00c 	strh.w	lr, [r5, #12]
    1028:	f885 c00e 	strb.w	ip, [r5, #14]
    102c:	9606      	str	r6, [sp, #24]
    102e:	f002 f911 	bl	3254 <crc8>
    1032:	f8db 3000 	ldr.w	r3, [fp]
    1036:	73e8      	strb	r0, [r5, #15]
    1038:	f5b3 2f80 	cmp.w	r3, #262144	; 0x40000
    103c:	f4bf ae90 	bcs.w	d60 <main+0x8e0>
    1040:	0118      	lsls	r0, r3, #4
    1042:	2110      	movs	r1, #16
    1044:	4a0a      	ldr	r2, [pc, #40]	; (1070 <main+0xbf0>)
    1046:	f000 fcb3 	bl	19b0 <storage_write>
    104a:	683b      	ldr	r3, [r7, #0]
    104c:	1c59      	adds	r1, r3, #1
    104e:	6039      	str	r1, [r7, #0]
    1050:	e686      	b.n	d60 <main+0x8e0>
    1052:	bf00      	nop
    1054:	100001f4 	.word	0x100001f4
    1058:	40014000 	.word	0x40014000
    105c:	1000018c 	.word	0x1000018c
    1060:	10000204 	.word	0x10000204
    1064:	1000086c 	.word	0x1000086c
    1068:	00004704 	.word	0x00004704
    106c:	10000224 	.word	0x10000224
    1070:	10000208 	.word	0x10000208
    1074:	10000868 	.word	0x10000868
    1078:	10000188 	.word	0x10000188
    107c:	10000218 	.word	0x10000218
    1080:	6867      	ldr	r7, [r4, #4]
    1082:	2600      	movs	r6, #0
    1084:	613e      	str	r6, [r7, #16]
    1086:	6864      	ldr	r4, [r4, #4]
    1088:	60a6      	str	r6, [r4, #8]
    108a:	f000 faa9 	bl	15e0 <nRFAPI_PowerDown>
    108e:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    1092:	f000 f86b 	bl	116c <pmu_sleep_ms>
    1096:	e7fa      	b.n	108e <main+0xc0e>
    1098:	2000      	movs	r0, #0
    109a:	f000 f953 	bl	1344 <nRFCMD_CE>
    109e:	2070      	movs	r0, #112	; 0x70
    10a0:	f000 fb20 	bl	16e4 <nRFAPI_ClearIRQ>
    10a4:	f000 fb2a 	bl	16fc <nRFAPI_FlushRX>
    10a8:	e607      	b.n	cba <main+0x83a>
    10aa:	bf00      	nop

000010ac <WAKEUP_IRQHandlerPIO0_8>:
    10ac:	490f      	ldr	r1, [pc, #60]	; (10ec <WAKEUP_IRQHandlerPIO0_8+0x40>)
    10ae:	4b10      	ldr	r3, [pc, #64]	; (10f0 <WAKEUP_IRQHandlerPIO0_8+0x44>)
    10b0:	6bc8      	ldr	r0, [r1, #60]	; 0x3c
    10b2:	4a10      	ldr	r2, [pc, #64]	; (10f4 <WAKEUP_IRQHandlerPIO0_8+0x48>)
    10b4:	f020 0001 	bic.w	r0, r0, #1
    10b8:	63c8      	str	r0, [r1, #60]	; 0x3c
    10ba:	f44f 7080 	mov.w	r0, #256	; 0x100
    10be:	f8c3 0208 	str.w	r0, [r3, #520]	; 0x208
    10c2:	490d      	ldr	r1, [pc, #52]	; (10f8 <WAKEUP_IRQHandlerPIO0_8+0x4c>)
    10c4:	6910      	ldr	r0, [r2, #16]
    10c6:	6809      	ldr	r1, [r1, #0]
    10c8:	f020 0004 	bic.w	r0, r0, #4
    10cc:	6110      	str	r0, [r2, #16]
    10ce:	f8c3 1080 	str.w	r1, [r3, #128]	; 0x80
    10d2:	4b0a      	ldr	r3, [pc, #40]	; (10fc <WAKEUP_IRQHandlerPIO0_8+0x50>)
    10d4:	2201      	movs	r2, #1
    10d6:	490a      	ldr	r1, [pc, #40]	; (1100 <WAKEUP_IRQHandlerPIO0_8+0x54>)
    10d8:	661a      	str	r2, [r3, #96]	; 0x60
    10da:	6808      	ldr	r0, [r1, #0]
    10dc:	4a09      	ldr	r2, [pc, #36]	; (1104 <WAKEUP_IRQHandlerPIO0_8+0x58>)
    10de:	2300      	movs	r3, #0
    10e0:	f8c0 3080 	str.w	r3, [r0, #128]	; 0x80
    10e4:	7013      	strb	r3, [r2, #0]
    10e6:	bf00      	nop
    10e8:	4770      	bx	lr
    10ea:	bf00      	nop
    10ec:	4000c000 	.word	0x4000c000
    10f0:	40048000 	.word	0x40048000
    10f4:	e000ed00 	.word	0xe000ed00
    10f8:	10000890 	.word	0x10000890
    10fc:	40044000 	.word	0x40044000
    1100:	100001f4 	.word	0x100001f4
    1104:	1000088c 	.word	0x1000088c

00001108 <pmu_cancel_timer>:
    1108:	4b11      	ldr	r3, [pc, #68]	; (1150 <pmu_cancel_timer+0x48>)
    110a:	2200      	movs	r2, #0
    110c:	2102      	movs	r1, #2
    110e:	b410      	push	{r4}
    1110:	6059      	str	r1, [r3, #4]
    1112:	609a      	str	r2, [r3, #8]
    1114:	6bdc      	ldr	r4, [r3, #60]	; 0x3c
    1116:	490f      	ldr	r1, [pc, #60]	; (1154 <pmu_cancel_timer+0x4c>)
    1118:	f024 0401 	bic.w	r4, r4, #1
    111c:	63dc      	str	r4, [r3, #60]	; 0x3c
    111e:	480e      	ldr	r0, [pc, #56]	; (1158 <pmu_cancel_timer+0x50>)
    1120:	f44f 7480 	mov.w	r4, #256	; 0x100
    1124:	f8c1 4208 	str.w	r4, [r1, #520]	; 0x208
    1128:	4b0c      	ldr	r3, [pc, #48]	; (115c <pmu_cancel_timer+0x54>)
    112a:	6904      	ldr	r4, [r0, #16]
    112c:	681b      	ldr	r3, [r3, #0]
    112e:	f024 0404 	bic.w	r4, r4, #4
    1132:	6104      	str	r4, [r0, #16]
    1134:	f8c1 3080 	str.w	r3, [r1, #128]	; 0x80
    1138:	4b09      	ldr	r3, [pc, #36]	; (1160 <pmu_cancel_timer+0x58>)
    113a:	2001      	movs	r0, #1
    113c:	4909      	ldr	r1, [pc, #36]	; (1164 <pmu_cancel_timer+0x5c>)
    113e:	6618      	str	r0, [r3, #96]	; 0x60
    1140:	6808      	ldr	r0, [r1, #0]
    1142:	4b09      	ldr	r3, [pc, #36]	; (1168 <pmu_cancel_timer+0x60>)
    1144:	f8c0 2080 	str.w	r2, [r0, #128]	; 0x80
    1148:	701a      	strb	r2, [r3, #0]
    114a:	bf00      	nop
    114c:	bc10      	pop	{r4}
    114e:	4770      	bx	lr
    1150:	4000c000 	.word	0x4000c000
    1154:	40048000 	.word	0x40048000
    1158:	e000ed00 	.word	0xe000ed00
    115c:	10000890 	.word	0x10000890
    1160:	40044000 	.word	0x40044000
    1164:	100001f4 	.word	0x100001f4
    1168:	1000088c 	.word	0x1000088c

0000116c <pmu_sleep_ms>:
    116c:	b470      	push	{r4, r5, r6}
    116e:	4d1d      	ldr	r5, [pc, #116]	; (11e4 <pmu_sleep_ms+0x78>)
    1170:	4a1d      	ldr	r2, [pc, #116]	; (11e8 <pmu_sleep_ms+0x7c>)
    1172:	682c      	ldr	r4, [r5, #0]
    1174:	4d1d      	ldr	r5, [pc, #116]	; (11ec <pmu_sleep_ms+0x80>)
    1176:	4b1e      	ldr	r3, [pc, #120]	; (11f0 <pmu_sleep_ms+0x84>)
    1178:	2120      	movs	r1, #32
    117a:	2602      	movs	r6, #2
    117c:	f8c4 1080 	str.w	r1, [r4, #128]	; 0x80
    1180:	662e      	str	r6, [r5, #96]	; 0x60
    1182:	f8d2 5080 	ldr.w	r5, [r2, #128]	; 0x80
    1186:	605e      	str	r6, [r3, #4]
    1188:	6f94      	ldr	r4, [r2, #120]	; 0x78
    118a:	f642 66e0 	movw	r6, #12000	; 0x2ee0
    118e:	2802      	cmp	r0, #2
    1190:	bf38      	it	cc
    1192:	2002      	movcc	r0, #2
    1194:	fbb6 f4f4 	udiv	r4, r6, r4
    1198:	60dc      	str	r4, [r3, #12]
    119a:	63d9      	str	r1, [r3, #60]	; 0x3c
    119c:	6198      	str	r0, [r3, #24]
    119e:	2107      	movs	r1, #7
    11a0:	4814      	ldr	r0, [pc, #80]	; (11f4 <pmu_sleep_ms+0x88>)
    11a2:	6159      	str	r1, [r3, #20]
    11a4:	f44f 6410 	mov.w	r4, #2304	; 0x900
    11a8:	4913      	ldr	r1, [pc, #76]	; (11f8 <pmu_sleep_ms+0x8c>)
    11aa:	6004      	str	r4, [r0, #0]
    11ac:	2004      	movs	r0, #4
    11ae:	6108      	str	r0, [r1, #16]
    11b0:	f8d2 4238 	ldr.w	r4, [r2, #568]	; 0x238
    11b4:	4911      	ldr	r1, [pc, #68]	; (11fc <pmu_sleep_ms+0x90>)
    11b6:	f8c2 4234 	str.w	r4, [r2, #564]	; 0x234
    11ba:	f640 74df 	movw	r4, #4063	; 0xfdf
    11be:	f8c2 4230 	str.w	r4, [r2, #560]	; 0x230
    11c2:	2001      	movs	r0, #1
    11c4:	f44f 7425 	mov.w	r4, #660	; 0x294
    11c8:	f8c2 4080 	str.w	r4, [r2, #128]	; 0x80
    11cc:	6058      	str	r0, [r3, #4]
    11ce:	7008      	strb	r0, [r1, #0]
    11d0:	4a0b      	ldr	r2, [pc, #44]	; (1200 <pmu_sleep_ms+0x94>)
    11d2:	780b      	ldrb	r3, [r1, #0]
    11d4:	6015      	str	r5, [r2, #0]
    11d6:	b11b      	cbz	r3, 11e0 <pmu_sleep_ms+0x74>
    11d8:	bf30      	wfi
    11da:	780b      	ldrb	r3, [r1, #0]
    11dc:	2b00      	cmp	r3, #0
    11de:	d1fb      	bne.n	11d8 <pmu_sleep_ms+0x6c>
    11e0:	bc70      	pop	{r4, r5, r6}
    11e2:	4770      	bx	lr
    11e4:	100001f4 	.word	0x100001f4
    11e8:	40048000 	.word	0x40048000
    11ec:	40044000 	.word	0x40044000
    11f0:	4000c000 	.word	0x4000c000
    11f4:	40038000 	.word	0x40038000
    11f8:	e000ed00 	.word	0xe000ed00
    11fc:	1000088c 	.word	0x1000088c
    1200:	10000890 	.word	0x10000890

00001204 <pmu_init>:
    1204:	4a3e      	ldr	r2, [pc, #248]	; (1300 <pmu_init+0xfc>)
    1206:	b4f0      	push	{r4, r5, r6, r7}
    1208:	4b3e      	ldr	r3, [pc, #248]	; (1304 <pmu_init+0x100>)
    120a:	f44f 7580 	mov.w	r5, #256	; 0x100
    120e:	6015      	str	r5, [r2, #0]
    1210:	f8d3 7200 	ldr.w	r7, [r3, #512]	; 0x200
    1214:	2201      	movs	r2, #1
    1216:	ea47 0605 	orr.w	r6, r7, r5
    121a:	f8c3 6200 	str.w	r6, [r3, #512]	; 0x200
    121e:	f8c3 5208 	str.w	r5, [r3, #520]	; 0x208
    1222:	f8d3 4204 	ldr.w	r4, [r3, #516]	; 0x204
    1226:	2000      	movs	r0, #0
    1228:	f444 7180 	orr.w	r1, r4, #256	; 0x100
    122c:	f8c3 1204 	str.w	r1, [r3, #516]	; 0x204
    1230:	671a      	str	r2, [r3, #112]	; 0x70
    1232:	4619      	mov	r1, r3
    1234:	6758      	str	r0, [r3, #116]	; 0x74
    1236:	675a      	str	r2, [r3, #116]	; 0x74
    1238:	6f48      	ldr	r0, [r1, #116]	; 0x74
    123a:	4b32      	ldr	r3, [pc, #200]	; (1304 <pmu_init+0x100>)
    123c:	f010 0f01 	tst.w	r0, #1
    1240:	d0fa      	beq.n	1238 <pmu_init+0x34>
    1242:	2504      	movs	r5, #4
    1244:	679d      	str	r5, [r3, #120]	; 0x78
    1246:	6f9e      	ldr	r6, [r3, #120]	; 0x78
    1248:	492f      	ldr	r1, [pc, #188]	; (1308 <pmu_init+0x104>)
    124a:	0874      	lsrs	r4, r6, #1
    124c:	f8c3 4094 	str.w	r4, [r3, #148]	; 0x94
    1250:	f8d3 2080 	ldr.w	r2, [r3, #128]	; 0x80
    1254:	2402      	movs	r4, #2
    1256:	f442 7020 	orr.w	r0, r2, #640	; 0x280
    125a:	f8c3 0080 	str.w	r0, [r3, #128]	; 0x80
    125e:	604c      	str	r4, [r1, #4]
    1260:	6f9e      	ldr	r6, [r3, #120]	; 0x78
    1262:	4f2a      	ldr	r7, [pc, #168]	; (130c <pmu_init+0x108>)
    1264:	2200      	movs	r2, #0
    1266:	2001      	movs	r0, #1
    1268:	fbb7 f7f6 	udiv	r7, r7, r6
    126c:	60cf      	str	r7, [r1, #12]
    126e:	63ca      	str	r2, [r1, #60]	; 0x3c
    1270:	6048      	str	r0, [r1, #4]
    1272:	f8c3 2098 	str.w	r2, [r3, #152]	; 0x98
    1276:	f8c3 20c8 	str.w	r2, [r3, #200]	; 0xc8
    127a:	f8c3 20d8 	str.w	r2, [r3, #216]	; 0xd8
    127e:	f8c3 20e8 	str.w	r2, [r3, #232]	; 0xe8
    1282:	f8c3 20b0 	str.w	r2, [r3, #176]	; 0xb0
    1286:	f8d3 2238 	ldr.w	r2, [r3, #568]	; 0x238
    128a:	4e21      	ldr	r6, [pc, #132]	; (1310 <pmu_init+0x10c>)
    128c:	f442 6cba 	orr.w	ip, r2, #1488	; 0x5d0
    1290:	f04c 0103 	orr.w	r1, ip, #3
    1294:	f8c3 1238 	str.w	r1, [r3, #568]	; 0x238
    1298:	6837      	ldr	r7, [r6, #0]
    129a:	4e1e      	ldr	r6, [pc, #120]	; (1314 <pmu_init+0x110>)
    129c:	491e      	ldr	r1, [pc, #120]	; (1318 <pmu_init+0x114>)
    129e:	2220      	movs	r2, #32
    12a0:	f8c7 2080 	str.w	r2, [r7, #128]	; 0x80
    12a4:	6634      	str	r4, [r6, #96]	; 0x60
    12a6:	f8d3 6080 	ldr.w	r6, [r3, #128]	; 0x80
    12aa:	604c      	str	r4, [r1, #4]
    12ac:	6f9c      	ldr	r4, [r3, #120]	; 0x78
    12ae:	f642 67e0 	movw	r7, #12000	; 0x2ee0
    12b2:	fbb7 f4f4 	udiv	r4, r7, r4
    12b6:	60cc      	str	r4, [r1, #12]
    12b8:	63ca      	str	r2, [r1, #60]	; 0x3c
    12ba:	240a      	movs	r4, #10
    12bc:	2207      	movs	r2, #7
    12be:	618c      	str	r4, [r1, #24]
    12c0:	614a      	str	r2, [r1, #20]
    12c2:	4a16      	ldr	r2, [pc, #88]	; (131c <pmu_init+0x118>)
    12c4:	f44f 6410 	mov.w	r4, #2304	; 0x900
    12c8:	6014      	str	r4, [r2, #0]
    12ca:	4a15      	ldr	r2, [pc, #84]	; (1320 <pmu_init+0x11c>)
    12cc:	6115      	str	r5, [r2, #16]
    12ce:	f8d3 4238 	ldr.w	r4, [r3, #568]	; 0x238
    12d2:	4a14      	ldr	r2, [pc, #80]	; (1324 <pmu_init+0x120>)
    12d4:	f8c3 4234 	str.w	r4, [r3, #564]	; 0x234
    12d8:	4c13      	ldr	r4, [pc, #76]	; (1328 <pmu_init+0x124>)
    12da:	6026      	str	r6, [r4, #0]
    12dc:	f640 74df 	movw	r4, #4063	; 0xfdf
    12e0:	f8c3 4230 	str.w	r4, [r3, #560]	; 0x230
    12e4:	f44f 7425 	mov.w	r4, #660	; 0x294
    12e8:	f8c3 4080 	str.w	r4, [r3, #128]	; 0x80
    12ec:	6048      	str	r0, [r1, #4]
    12ee:	7010      	strb	r0, [r2, #0]
    12f0:	7813      	ldrb	r3, [r2, #0]
    12f2:	b11b      	cbz	r3, 12fc <pmu_init+0xf8>
    12f4:	bf30      	wfi
    12f6:	7813      	ldrb	r3, [r2, #0]
    12f8:	2b00      	cmp	r3, #0
    12fa:	d1fb      	bne.n	12f4 <pmu_init+0xf0>
    12fc:	bcf0      	pop	{r4, r5, r6, r7}
    12fe:	4770      	bx	lr
    1300:	e000e100 	.word	0xe000e100
    1304:	40048000 	.word	0x40048000
    1308:	40014000 	.word	0x40014000
    130c:	00b71b00 	.word	0x00b71b00
    1310:	100001f4 	.word	0x100001f4
    1314:	40044000 	.word	0x40044000
    1318:	4000c000 	.word	0x4000c000
    131c:	40038000 	.word	0x40038000
    1320:	e000ed00 	.word	0xe000ed00
    1324:	1000088c 	.word	0x1000088c
    1328:	10000890 	.word	0x10000890

0000132c <nRFCMD_IRQ>:
    132c:	4904      	ldr	r1, [pc, #16]	; (1340 <nRFCMD_IRQ+0x14>)
    132e:	684b      	ldr	r3, [r1, #4]
    1330:	f8d3 0800 	ldr.w	r0, [r3, #2048]	; 0x800
    1334:	f1d0 0001 	rsbs	r0, r0, #1
    1338:	bf38      	it	cc
    133a:	2000      	movcc	r0, #0
    133c:	4770      	bx	lr
    133e:	bf00      	nop
    1340:	100001f4 	.word	0x100001f4

00001344 <nRFCMD_CE>:
    1344:	4a05      	ldr	r2, [pc, #20]	; (135c <nRFCMD_CE+0x18>)
    1346:	2800      	cmp	r0, #0
    1348:	bf14      	ite	ne
    134a:	f44f 6000 	movne.w	r0, #2048	; 0x800
    134e:	2000      	moveq	r0, #0
    1350:	6811      	ldr	r1, [r2, #0]
    1352:	f501 5300 	add.w	r3, r1, #8192	; 0x2000
    1356:	6018      	str	r0, [r3, #0]
    1358:	4770      	bx	lr
    135a:	bf00      	nop
    135c:	100001f4 	.word	0x100001f4

00001360 <nRFCMD_Power>:
    1360:	4903      	ldr	r1, [pc, #12]	; (1370 <nRFCMD_Power+0x10>)
    1362:	2800      	cmp	r0, #0
    1364:	bf0c      	ite	eq
    1366:	2004      	moveq	r0, #4
    1368:	2000      	movne	r0, #0
    136a:	680b      	ldr	r3, [r1, #0]
    136c:	6118      	str	r0, [r3, #16]
    136e:	4770      	bx	lr
    1370:	100001f4 	.word	0x100001f4

00001374 <nRFCMD_ReadWriteBuffer>:
    1374:	b530      	push	{r4, r5, lr}
    1376:	4605      	mov	r5, r0
    1378:	b294      	uxth	r4, r2
    137a:	b083      	sub	sp, #12
    137c:	460b      	mov	r3, r1
    137e:	4622      	mov	r2, r4
    1380:	4629      	mov	r1, r5
    1382:	4803      	ldr	r0, [pc, #12]	; (1390 <nRFCMD_ReadWriteBuffer+0x1c>)
    1384:	9400      	str	r4, [sp, #0]
    1386:	f001 fe77 	bl	3078 <spi_txrx>
    138a:	b003      	add	sp, #12
    138c:	bd30      	pop	{r4, r5, pc}
    138e:	bf00      	nop
    1390:	010a0200 	.word	0x010a0200

00001394 <nRFCMD_CmdExec>:
    1394:	b510      	push	{r4, lr}
    1396:	b084      	sub	sp, #16
    1398:	a904      	add	r1, sp, #16
    139a:	2401      	movs	r4, #1
    139c:	f801 0d01 	strb.w	r0, [r1, #-1]!
    13a0:	4622      	mov	r2, r4
    13a2:	f10d 030e 	add.w	r3, sp, #14
    13a6:	4804      	ldr	r0, [pc, #16]	; (13b8 <nRFCMD_CmdExec+0x24>)
    13a8:	9400      	str	r4, [sp, #0]
    13aa:	f001 fe65 	bl	3078 <spi_txrx>
    13ae:	f89d 000e 	ldrb.w	r0, [sp, #14]
    13b2:	b004      	add	sp, #16
    13b4:	bd10      	pop	{r4, pc}
    13b6:	bf00      	nop
    13b8:	010a0200 	.word	0x010a0200

000013bc <nRFCMD_RegRead>:
    13bc:	b5f0      	push	{r4, r5, r6, r7, lr}
    13be:	4d08      	ldr	r5, [pc, #32]	; (13e0 <nRFCMD_RegRead+0x24>)
    13c0:	4c08      	ldr	r4, [pc, #32]	; (13e4 <nRFCMD_RegRead+0x28>)
    13c2:	2602      	movs	r6, #2
    13c4:	b083      	sub	sp, #12
    13c6:	7028      	strb	r0, [r5, #0]
    13c8:	4629      	mov	r1, r5
    13ca:	4632      	mov	r2, r6
    13cc:	4623      	mov	r3, r4
    13ce:	2700      	movs	r7, #0
    13d0:	4805      	ldr	r0, [pc, #20]	; (13e8 <nRFCMD_RegRead+0x2c>)
    13d2:	706f      	strb	r7, [r5, #1]
    13d4:	9600      	str	r6, [sp, #0]
    13d6:	f001 fe4f 	bl	3078 <spi_txrx>
    13da:	7860      	ldrb	r0, [r4, #1]
    13dc:	b003      	add	sp, #12
    13de:	bdf0      	pop	{r4, r5, r6, r7, pc}
    13e0:	10000894 	.word	0x10000894
    13e4:	100008b8 	.word	0x100008b8
    13e8:	010a0200 	.word	0x010a0200

000013ec <nRFCMD_RegWriteStatusRead>:
    13ec:	b530      	push	{r4, r5, lr}
    13ee:	4b08      	ldr	r3, [pc, #32]	; (1410 <nRFCMD_RegWriteStatusRead+0x24>)
    13f0:	4c08      	ldr	r4, [pc, #32]	; (1414 <nRFCMD_RegWriteStatusRead+0x28>)
    13f2:	2502      	movs	r5, #2
    13f4:	7018      	strb	r0, [r3, #0]
    13f6:	7059      	strb	r1, [r3, #1]
    13f8:	b083      	sub	sp, #12
    13fa:	4619      	mov	r1, r3
    13fc:	462a      	mov	r2, r5
    13fe:	4623      	mov	r3, r4
    1400:	4805      	ldr	r0, [pc, #20]	; (1418 <nRFCMD_RegWriteStatusRead+0x2c>)
    1402:	9500      	str	r5, [sp, #0]
    1404:	f001 fe38 	bl	3078 <spi_txrx>
    1408:	7820      	ldrb	r0, [r4, #0]
    140a:	b003      	add	sp, #12
    140c:	bd30      	pop	{r4, r5, pc}
    140e:	bf00      	nop
    1410:	10000894 	.word	0x10000894
    1414:	100008b8 	.word	0x100008b8
    1418:	010a0200 	.word	0x010a0200

0000141c <nRFCMD_RegWriteBuf>:
    141c:	b570      	push	{r4, r5, r6, lr}
    141e:	4e0a      	ldr	r6, [pc, #40]	; (1448 <nRFCMD_RegWriteBuf+0x2c>)
    1420:	4615      	mov	r5, r2
    1422:	4633      	mov	r3, r6
    1424:	f803 0b01 	strb.w	r0, [r3], #1
    1428:	4c08      	ldr	r4, [pc, #32]	; (144c <nRFCMD_RegWriteBuf+0x30>)
    142a:	b082      	sub	sp, #8
    142c:	3501      	adds	r5, #1
    142e:	4618      	mov	r0, r3
    1430:	f7fe fe78 	bl	124 <memcpy>
    1434:	4631      	mov	r1, r6
    1436:	462a      	mov	r2, r5
    1438:	4623      	mov	r3, r4
    143a:	4805      	ldr	r0, [pc, #20]	; (1450 <nRFCMD_RegWriteBuf+0x34>)
    143c:	9500      	str	r5, [sp, #0]
    143e:	f001 fe1b 	bl	3078 <spi_txrx>
    1442:	7820      	ldrb	r0, [r4, #0]
    1444:	b002      	add	sp, #8
    1446:	bd70      	pop	{r4, r5, r6, pc}
    1448:	10000894 	.word	0x10000894
    144c:	100008b8 	.word	0x100008b8
    1450:	010a0200 	.word	0x010a0200

00001454 <nRFCMD_RegReadBuf>:
    1454:	b5f0      	push	{r4, r5, r6, r7, lr}
    1456:	4b0b      	ldr	r3, [pc, #44]	; (1484 <nRFCMD_RegReadBuf+0x30>)
    1458:	4c0b      	ldr	r4, [pc, #44]	; (1488 <nRFCMD_RegReadBuf+0x34>)
    145a:	1c97      	adds	r7, r2, #2
    145c:	b083      	sub	sp, #12
    145e:	7018      	strb	r0, [r3, #0]
    1460:	4615      	mov	r5, r2
    1462:	460e      	mov	r6, r1
    1464:	463a      	mov	r2, r7
    1466:	4619      	mov	r1, r3
    1468:	4808      	ldr	r0, [pc, #32]	; (148c <nRFCMD_RegReadBuf+0x38>)
    146a:	4623      	mov	r3, r4
    146c:	9700      	str	r7, [sp, #0]
    146e:	f001 fe03 	bl	3078 <spi_txrx>
    1472:	4630      	mov	r0, r6
    1474:	1c61      	adds	r1, r4, #1
    1476:	462a      	mov	r2, r5
    1478:	f7fe fe54 	bl	124 <memcpy>
    147c:	7820      	ldrb	r0, [r4, #0]
    147e:	b003      	add	sp, #12
    1480:	bdf0      	pop	{r4, r5, r6, r7, pc}
    1482:	bf00      	nop
    1484:	10000894 	.word	0x10000894
    1488:	100008b8 	.word	0x100008b8
    148c:	010a0200 	.word	0x010a0200

00001490 <WAKEUP_IRQHandlerPIO1_9>:
    1490:	4b03      	ldr	r3, [pc, #12]	; (14a0 <WAKEUP_IRQHandlerPIO1_9+0x10>)
    1492:	f44f 1200 	mov.w	r2, #2097152	; 0x200000
    1496:	f8c3 2208 	str.w	r2, [r3, #520]	; 0x208
    149a:	f7ff be35 	b.w	1108 <pmu_cancel_timer>
    149e:	bf00      	nop
    14a0:	40048000 	.word	0x40048000

000014a4 <nRFCMD_Init>:
    14a4:	b570      	push	{r4, r5, r6, lr}
    14a6:	481f      	ldr	r0, [pc, #124]	; (1524 <nRFCMD_Init+0x80>)
    14a8:	f001 fdd6 	bl	3058 <spi_init_pin>
    14ac:	481e      	ldr	r0, [pc, #120]	; (1528 <nRFCMD_Init+0x84>)
    14ae:	4b1f      	ldr	r3, [pc, #124]	; (152c <nRFCMD_Init+0x88>)
    14b0:	2100      	movs	r1, #0
    14b2:	6381      	str	r1, [r0, #56]	; 0x38
    14b4:	685a      	ldr	r2, [r3, #4]
    14b6:	4d1e      	ldr	r5, [pc, #120]	; (1530 <nRFCMD_Init+0x8c>)
    14b8:	f502 4c00 	add.w	ip, r2, #32768	; 0x8000
    14bc:	f8dc 6000 	ldr.w	r6, [ip]
    14c0:	4a1c      	ldr	r2, [pc, #112]	; (1534 <nRFCMD_Init+0x90>)
    14c2:	f44f 1400 	mov.w	r4, #2097152	; 0x200000
    14c6:	f426 7600 	bic.w	r6, r6, #512	; 0x200
    14ca:	f8cc 6000 	str.w	r6, [ip]
    14ce:	602c      	str	r4, [r5, #0]
    14d0:	f8d2 5200 	ldr.w	r5, [r2, #512]	; 0x200
    14d4:	f425 1500 	bic.w	r5, r5, #2097152	; 0x200000
    14d8:	f8c2 5200 	str.w	r5, [r2, #512]	; 0x200
    14dc:	f8c2 4208 	str.w	r4, [r2, #520]	; 0x208
    14e0:	f8d2 4204 	ldr.w	r4, [r2, #516]	; 0x204
    14e4:	f444 1400 	orr.w	r4, r4, #2097152	; 0x200000
    14e8:	f8c2 4204 	str.w	r4, [r2, #516]	; 0x204
    14ec:	2481      	movs	r4, #129	; 0x81
    14ee:	6744      	str	r4, [r0, #116]	; 0x74
    14f0:	681a      	ldr	r2, [r3, #0]
    14f2:	f502 4c00 	add.w	ip, r2, #32768	; 0x8000
    14f6:	f8dc 4000 	ldr.w	r4, [ip]
    14fa:	f444 6400 	orr.w	r4, r4, #2048	; 0x800
    14fe:	f8cc 4000 	str.w	r4, [ip]
    1502:	681a      	ldr	r2, [r3, #0]
    1504:	f502 5c00 	add.w	ip, r2, #8192	; 0x2000
    1508:	f8cc 1000 	str.w	r1, [ip]
    150c:	61c1      	str	r1, [r0, #28]
    150e:	681a      	ldr	r2, [r3, #0]
    1510:	f502 4200 	add.w	r2, r2, #32768	; 0x8000
    1514:	6810      	ldr	r0, [r2, #0]
    1516:	f040 0004 	orr.w	r0, r0, #4
    151a:	6010      	str	r0, [r2, #0]
    151c:	681b      	ldr	r3, [r3, #0]
    151e:	6119      	str	r1, [r3, #16]
    1520:	bd70      	pop	{r4, r5, r6, pc}
    1522:	bf00      	nop
    1524:	010a0200 	.word	0x010a0200
    1528:	40044000 	.word	0x40044000
    152c:	100001f4 	.word	0x100001f4
    1530:	e000e100 	.word	0xe000e100
    1534:	40048000 	.word	0x40048000

00001538 <nRFAPI_DetectChip>:
    1538:	b510      	push	{r4, lr}
    153a:	20ff      	movs	r0, #255	; 0xff
    153c:	b082      	sub	sp, #8
    153e:	f7ff ff29 	bl	1394 <nRFCMD_CmdExec>
    1542:	2101      	movs	r1, #1
    1544:	2023      	movs	r0, #35	; 0x23
    1546:	f7ff ff51 	bl	13ec <nRFCMD_RegWriteStatusRead>
    154a:	2003      	movs	r0, #3
    154c:	f7ff ff36 	bl	13bc <nRFCMD_RegRead>
    1550:	f010 0003 	ands.w	r0, r0, #3
    1554:	d002      	beq.n	155c <nRFAPI_DetectChip+0x24>
    1556:	2801      	cmp	r0, #1
    1558:	d002      	beq.n	1560 <nRFAPI_DetectChip+0x28>
    155a:	2000      	movs	r0, #0
    155c:	b002      	add	sp, #8
    155e:	bd10      	pop	{r4, pc}
    1560:	2103      	movs	r1, #3
    1562:	2023      	movs	r0, #35	; 0x23
    1564:	f7ff ff42 	bl	13ec <nRFCMD_RegWriteStatusRead>
    1568:	2003      	movs	r0, #3
    156a:	f7ff ff27 	bl	13bc <nRFCMD_RegRead>
    156e:	f010 0003 	ands.w	r0, r0, #3
    1572:	d0f3      	beq.n	155c <nRFAPI_DetectChip+0x24>
    1574:	2803      	cmp	r0, #3
    1576:	d1f0      	bne.n	155a <nRFAPI_DetectChip+0x22>
    1578:	2205      	movs	r2, #5
    157a:	4914      	ldr	r1, [pc, #80]	; (15cc <nRFAPI_DetectChip+0x94>)
    157c:	2030      	movs	r0, #48	; 0x30
    157e:	f7ff ff4d 	bl	141c <nRFCMD_RegWriteBuf>
    1582:	2400      	movs	r4, #0
    1584:	2010      	movs	r0, #16
    1586:	2205      	movs	r2, #5
    1588:	4669      	mov	r1, sp
    158a:	9400      	str	r4, [sp, #0]
    158c:	f88d 4004 	strb.w	r4, [sp, #4]
    1590:	f7ff ff60 	bl	1454 <nRFCMD_RegReadBuf>
    1594:	f89d 3000 	ldrb.w	r3, [sp]
    1598:	2b54      	cmp	r3, #84	; 0x54
    159a:	d114      	bne.n	15c6 <nRFAPI_DetectChip+0x8e>
    159c:	f89d 0001 	ldrb.w	r0, [sp, #1]
    15a0:	2853      	cmp	r0, #83	; 0x53
    15a2:	d110      	bne.n	15c6 <nRFAPI_DetectChip+0x8e>
    15a4:	f89d 1002 	ldrb.w	r1, [sp, #2]
    15a8:	2941      	cmp	r1, #65	; 0x41
    15aa:	d10c      	bne.n	15c6 <nRFAPI_DetectChip+0x8e>
    15ac:	f89d 2003 	ldrb.w	r2, [sp, #3]
    15b0:	2a43      	cmp	r2, #67	; 0x43
    15b2:	d108      	bne.n	15c6 <nRFAPI_DetectChip+0x8e>
    15b4:	f89d 3004 	ldrb.w	r3, [sp, #4]
    15b8:	f1a3 0e42 	sub.w	lr, r3, #66	; 0x42
    15bc:	f1de 0c00 	rsbs	ip, lr, #0
    15c0:	eb4c 000e 	adc.w	r0, ip, lr
    15c4:	e7ca      	b.n	155c <nRFAPI_DetectChip+0x24>
    15c6:	4620      	mov	r0, r4
    15c8:	e7c8      	b.n	155c <nRFAPI_DetectChip+0x24>
    15ca:	bf00      	nop
    15cc:	00004bfc 	.word	0x00004bfc

000015d0 <nRFAPI_SetRxMode>:
    15d0:	2800      	cmp	r0, #0
    15d2:	bf0c      	ite	eq
    15d4:	213a      	moveq	r1, #58	; 0x3a
    15d6:	213b      	movne	r1, #59	; 0x3b
    15d8:	2020      	movs	r0, #32
    15da:	f7ff bf07 	b.w	13ec <nRFCMD_RegWriteStatusRead>
    15de:	bf00      	nop

000015e0 <nRFAPI_PowerDown>:
    15e0:	2020      	movs	r0, #32
    15e2:	2100      	movs	r1, #0
    15e4:	f7ff bf02 	b.w	13ec <nRFCMD_RegWriteStatusRead>

000015e8 <nRFAPI_Init>:
    15e8:	b5f0      	push	{r4, r5, r6, r7, lr}
    15ea:	b083      	sub	sp, #12
    15ec:	4614      	mov	r4, r2
    15ee:	461f      	mov	r7, r3
    15f0:	4606      	mov	r6, r0
    15f2:	460d      	mov	r5, r1
    15f4:	f7ff ff56 	bl	14a4 <nRFCMD_Init>
    15f8:	200a      	movs	r0, #10
    15fa:	f7ff fdb7 	bl	116c <pmu_sleep_ms>
    15fe:	1ee0      	subs	r0, r4, #3
    1600:	b2c3      	uxtb	r3, r0
    1602:	2b02      	cmp	r3, #2
    1604:	d902      	bls.n	160c <nRFAPI_Init+0x24>
    1606:	2000      	movs	r0, #0
    1608:	b003      	add	sp, #12
    160a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    160c:	f7ff ff94 	bl	1538 <nRFAPI_DetectChip>
    1610:	2800      	cmp	r0, #0
    1612:	d0f9      	beq.n	1608 <nRFAPI_Init+0x20>
    1614:	1ea1      	subs	r1, r4, #2
    1616:	b2c9      	uxtb	r1, r1
    1618:	2023      	movs	r0, #35	; 0x23
    161a:	f7ff fee7 	bl	13ec <nRFCMD_RegWriteStatusRead>
    161e:	4629      	mov	r1, r5
    1620:	4622      	mov	r2, r4
    1622:	2030      	movs	r0, #48	; 0x30
    1624:	f7ff fefa 	bl	141c <nRFCMD_RegWriteBuf>
    1628:	4622      	mov	r2, r4
    162a:	4629      	mov	r1, r5
    162c:	202a      	movs	r0, #42	; 0x2a
    162e:	f7ff fef5 	bl	141c <nRFCMD_RegWriteBuf>
    1632:	2101      	movs	r1, #1
    1634:	2022      	movs	r0, #34	; 0x22
    1636:	f7ff fed9 	bl	13ec <nRFCMD_RegWriteStatusRead>
    163a:	2100      	movs	r1, #0
    163c:	2021      	movs	r0, #33	; 0x21
    163e:	f7ff fed5 	bl	13ec <nRFCMD_RegWriteStatusRead>
    1642:	2110      	movs	r1, #16
    1644:	2031      	movs	r0, #49	; 0x31
    1646:	f7ff fed1 	bl	13ec <nRFCMD_RegWriteStatusRead>
    164a:	2110      	movs	r1, #16
    164c:	2032      	movs	r0, #50	; 0x32
    164e:	f7ff fecd 	bl	13ec <nRFCMD_RegWriteStatusRead>
    1652:	2110      	movs	r1, #16
    1654:	2033      	movs	r0, #51	; 0x33
    1656:	f7ff fec9 	bl	13ec <nRFCMD_RegWriteStatusRead>
    165a:	2110      	movs	r1, #16
    165c:	2034      	movs	r0, #52	; 0x34
    165e:	f7ff fec5 	bl	13ec <nRFCMD_RegWriteStatusRead>
    1662:	2110      	movs	r1, #16
    1664:	2035      	movs	r0, #53	; 0x35
    1666:	f7ff fec1 	bl	13ec <nRFCMD_RegWriteStatusRead>
    166a:	2110      	movs	r1, #16
    166c:	2036      	movs	r0, #54	; 0x36
    166e:	f7ff febd 	bl	13ec <nRFCMD_RegWriteStatusRead>
    1672:	2110      	movs	r1, #16
    1674:	2024      	movs	r0, #36	; 0x24
    1676:	f7ff feb9 	bl	13ec <nRFCMD_RegWriteStatusRead>
    167a:	f006 017f 	and.w	r1, r6, #127	; 0x7f
    167e:	2025      	movs	r0, #37	; 0x25
    1680:	f7ff feb4 	bl	13ec <nRFCMD_RegWriteStatusRead>
    1684:	210f      	movs	r1, #15
    1686:	2026      	movs	r0, #38	; 0x26
    1688:	f7ff feb0 	bl	13ec <nRFCMD_RegWriteStatusRead>
    168c:	20e2      	movs	r0, #226	; 0xe2
    168e:	f7ff fe81 	bl	1394 <nRFCMD_CmdExec>
    1692:	20e1      	movs	r0, #225	; 0xe1
    1694:	f7ff fe7e 	bl	1394 <nRFCMD_CmdExec>
    1698:	b90f      	cbnz	r7, 169e <nRFAPI_Init+0xb6>
    169a:	2001      	movs	r0, #1
    169c:	e7b4      	b.n	1608 <nRFAPI_Init+0x20>
    169e:	4c0a      	ldr	r4, [pc, #40]	; (16c8 <nRFAPI_Init+0xe0>)
    16a0:	2300      	movs	r3, #0
    16a2:	8824      	ldrh	r4, [r4, #0]
    16a4:	a801      	add	r0, sp, #4
    16a6:	4669      	mov	r1, sp
    16a8:	2202      	movs	r2, #2
    16aa:	f88d 3000 	strb.w	r3, [sp]
    16ae:	f88d 3001 	strb.w	r3, [sp, #1]
    16b2:	f8ad 4004 	strh.w	r4, [sp, #4]
    16b6:	f7ff fe5d 	bl	1374 <nRFCMD_ReadWriteBuffer>
    16ba:	201d      	movs	r0, #29
    16bc:	4639      	mov	r1, r7
    16be:	f7ff fe95 	bl	13ec <nRFCMD_RegWriteStatusRead>
    16c2:	2001      	movs	r0, #1
    16c4:	e7a0      	b.n	1608 <nRFAPI_Init+0x20>
    16c6:	bf00      	nop
    16c8:	00004bf8 	.word	0x00004bf8

000016cc <nRFAPI_SetTxPower>:
    16cc:	2803      	cmp	r0, #3
    16ce:	bf34      	ite	cc
    16d0:	4602      	movcc	r2, r0
    16d2:	2203      	movcs	r2, #3
    16d4:	0050      	lsls	r0, r2, #1
    16d6:	f040 0109 	orr.w	r1, r0, #9
    16da:	b2c9      	uxtb	r1, r1
    16dc:	2026      	movs	r0, #38	; 0x26
    16de:	f7ff be85 	b.w	13ec <nRFCMD_RegWriteStatusRead>
    16e2:	bf00      	nop

000016e4 <nRFAPI_ClearIRQ>:
    16e4:	f000 0170 	and.w	r1, r0, #112	; 0x70
    16e8:	2027      	movs	r0, #39	; 0x27
    16ea:	f7ff be7f 	b.w	13ec <nRFCMD_RegWriteStatusRead>
    16ee:	bf00      	nop

000016f0 <nRFAPI_TX>:
    16f0:	4603      	mov	r3, r0
    16f2:	460a      	mov	r2, r1
    16f4:	20a0      	movs	r0, #160	; 0xa0
    16f6:	4619      	mov	r1, r3
    16f8:	f7ff be90 	b.w	141c <nRFCMD_RegWriteBuf>

000016fc <nRFAPI_FlushRX>:
    16fc:	20e2      	movs	r0, #226	; 0xe2
    16fe:	f7ff be49 	b.w	1394 <nRFCMD_CmdExec>
    1702:	bf00      	nop

00001704 <nRFAPI_FlushTX>:
    1704:	20e1      	movs	r0, #225	; 0xe1
    1706:	f7ff be45 	b.w	1394 <nRFCMD_CmdExec>
    170a:	bf00      	nop

0000170c <nRFAPI_GetFifoStatus>:
    170c:	2017      	movs	r0, #23
    170e:	f7ff be55 	b.w	13bc <nRFCMD_RegRead>
    1712:	bf00      	nop

00001714 <nRFAPI_CarrierDetect>:
    1714:	2009      	movs	r0, #9
    1716:	f7ff be51 	b.w	13bc <nRFCMD_RegRead>
    171a:	bf00      	nop

0000171c <storage_logfile_read_raw>:
    171c:	b5f0      	push	{r4, r5, r6, r7, lr}
    171e:	b085      	sub	sp, #20
    1720:	4604      	mov	r4, r0
    1722:	b28d      	uxth	r5, r1
    1724:	0c07      	lsrs	r7, r0, #16
    1726:	0a06      	lsrs	r6, r0, #8
    1728:	f04f 0e03 	mov.w	lr, #3
    172c:	a903      	add	r1, sp, #12
    172e:	2204      	movs	r2, #4
    1730:	4806      	ldr	r0, [pc, #24]	; (174c <storage_logfile_read_raw+0x30>)
    1732:	f88d e00c 	strb.w	lr, [sp, #12]
    1736:	f88d 700d 	strb.w	r7, [sp, #13]
    173a:	f88d 600e 	strb.w	r6, [sp, #14]
    173e:	f88d 400f 	strb.w	r4, [sp, #15]
    1742:	9500      	str	r5, [sp, #0]
    1744:	f001 fc98 	bl	3078 <spi_txrx>
    1748:	b005      	add	sp, #20
    174a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    174c:	01080204 	.word	0x01080204

00001750 <storage_logtxt_fmt>:
    1750:	b5f0      	push	{r4, r5, r6, r7, lr}
    1752:	4a23      	ldr	r2, [pc, #140]	; (17e0 <storage_logtxt_fmt+0x90>)
    1754:	b08b      	sub	sp, #44	; 0x2c
    1756:	6813      	ldr	r3, [r2, #0]
    1758:	4604      	mov	r4, r0
    175a:	428b      	cmp	r3, r1
    175c:	d92d      	bls.n	17ba <storage_logtxt_fmt+0x6a>
    175e:	010d      	lsls	r5, r1, #4
    1760:	0c2f      	lsrs	r7, r5, #16
    1762:	0a2e      	lsrs	r6, r5, #8
    1764:	2204      	movs	r2, #4
    1766:	f04f 0e03 	mov.w	lr, #3
    176a:	a909      	add	r1, sp, #36	; 0x24
    176c:	ab05      	add	r3, sp, #20
    176e:	f88d 5027 	strb.w	r5, [sp, #39]	; 0x27
    1772:	481c      	ldr	r0, [pc, #112]	; (17e4 <storage_logtxt_fmt+0x94>)
    1774:	2510      	movs	r5, #16
    1776:	f88d e024 	strb.w	lr, [sp, #36]	; 0x24
    177a:	f88d 7025 	strb.w	r7, [sp, #37]	; 0x25
    177e:	f88d 6026 	strb.w	r6, [sp, #38]	; 0x26
    1782:	9500      	str	r5, [sp, #0]
    1784:	f001 fc78 	bl	3078 <spi_txrx>
    1788:	210f      	movs	r1, #15
    178a:	a805      	add	r0, sp, #20
    178c:	f001 fd62 	bl	3254 <crc8>
    1790:	f89d 1023 	ldrb.w	r1, [sp, #35]	; 0x23
    1794:	4281      	cmp	r1, r0
    1796:	d116      	bne.n	17c6 <storage_logtxt_fmt+0x76>
    1798:	4813      	ldr	r0, [pc, #76]	; (17e8 <storage_logtxt_fmt+0x98>)
    179a:	f89d 5022 	ldrb.w	r5, [sp, #34]	; 0x22
    179e:	8803      	ldrh	r3, [r0, #0]
    17a0:	4620      	mov	r0, r4
    17a2:	9c06      	ldr	r4, [sp, #24]
    17a4:	2124      	movs	r1, #36	; 0x24
    17a6:	9400      	str	r4, [sp, #0]
    17a8:	9c07      	ldr	r4, [sp, #28]
    17aa:	4a10      	ldr	r2, [pc, #64]	; (17ec <storage_logtxt_fmt+0x9c>)
    17ac:	9401      	str	r4, [sp, #4]
    17ae:	9c05      	ldr	r4, [sp, #20]
    17b0:	9503      	str	r5, [sp, #12]
    17b2:	9402      	str	r4, [sp, #8]
    17b4:	f000 fa70 	bl	1c98 <cIO_snprintf>
    17b8:	e003      	b.n	17c2 <storage_logtxt_fmt+0x72>
    17ba:	2100      	movs	r1, #0
    17bc:	2224      	movs	r2, #36	; 0x24
    17be:	f7fe fd59 	bl	274 <memset>
    17c2:	b00b      	add	sp, #44	; 0x2c
    17c4:	bdf0      	pop	{r4, r5, r6, r7, pc}
    17c6:	2222      	movs	r2, #34	; 0x22
    17c8:	4620      	mov	r0, r4
    17ca:	2120      	movs	r1, #32
    17cc:	f7fe fd52 	bl	274 <memset>
    17d0:	220d      	movs	r2, #13
    17d2:	230a      	movs	r3, #10
    17d4:	f884 2022 	strb.w	r2, [r4, #34]	; 0x22
    17d8:	f884 3023 	strb.w	r3, [r4, #35]	; 0x23
    17dc:	e7f1      	b.n	17c2 <storage_logtxt_fmt+0x72>
    17de:	bf00      	nop
    17e0:	100008e0 	.word	0x100008e0
    17e4:	01080204 	.word	0x01080204
    17e8:	100008dc 	.word	0x100008dc
    17ec:	00004c50 	.word	0x00004c50

000017f0 <storage_logtxt_read_raw>:
    17f0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    17f4:	4d37      	ldr	r5, [pc, #220]	; (18d4 <storage_logtxt_read_raw+0xe4>)
    17f6:	b08a      	sub	sp, #40	; 0x28
    17f8:	fba5 2400 	umull	r2, r4, r5, r0
    17fc:	08e4      	lsrs	r4, r4, #3
    17fe:	eb04 02c4 	add.w	r2, r4, r4, lsl #3
    1802:	ebb0 0882 	subs.w	r8, r0, r2, lsl #2
    1806:	460d      	mov	r5, r1
    1808:	461e      	mov	r6, r3
    180a:	d01e      	beq.n	184a <storage_logtxt_read_raw+0x5a>
    180c:	4588      	cmp	r8, r1
    180e:	d90c      	bls.n	182a <storage_logtxt_read_raw+0x3a>
    1810:	b145      	cbz	r5, 1824 <storage_logtxt_read_raw+0x34>
    1812:	a801      	add	r0, sp, #4
    1814:	4621      	mov	r1, r4
    1816:	f7ff ff9b 	bl	1750 <storage_logtxt_fmt>
    181a:	4630      	mov	r0, r6
    181c:	a901      	add	r1, sp, #4
    181e:	462a      	mov	r2, r5
    1820:	f7fe fc80 	bl	124 <memcpy>
    1824:	b00a      	add	sp, #40	; 0x28
    1826:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    182a:	4621      	mov	r1, r4
    182c:	a801      	add	r0, sp, #4
    182e:	f7ff ff8f 	bl	1750 <storage_logtxt_fmt>
    1832:	f1c8 0724 	rsb	r7, r8, #36	; 0x24
    1836:	ab01      	add	r3, sp, #4
    1838:	4630      	mov	r0, r6
    183a:	eb03 0108 	add.w	r1, r3, r8
    183e:	463a      	mov	r2, r7
    1840:	f7fe fc70 	bl	124 <memcpy>
    1844:	3401      	adds	r4, #1
    1846:	19f6      	adds	r6, r6, r7
    1848:	1bed      	subs	r5, r5, r7
    184a:	2d23      	cmp	r5, #35	; 0x23
    184c:	d9e0      	bls.n	1810 <storage_logtxt_read_raw+0x20>
    184e:	4821      	ldr	r0, [pc, #132]	; (18d4 <storage_logtxt_read_raw+0xe4>)
    1850:	f1a5 0824 	sub.w	r8, r5, #36	; 0x24
    1854:	fba0 2708 	umull	r2, r7, r0, r8
    1858:	f3c7 07c1 	ubfx	r7, r7, #3, #2
    185c:	4621      	mov	r1, r4
    185e:	2f00      	cmp	r7, #0
    1860:	d02f      	beq.n	18c2 <storage_logtxt_read_raw+0xd2>
    1862:	4630      	mov	r0, r6
    1864:	3401      	adds	r4, #1
    1866:	f7ff ff73 	bl	1750 <storage_logtxt_fmt>
    186a:	3624      	adds	r6, #36	; 0x24
    186c:	2f01      	cmp	r7, #1
    186e:	4645      	mov	r5, r8
    1870:	4621      	mov	r1, r4
    1872:	d026      	beq.n	18c2 <storage_logtxt_read_raw+0xd2>
    1874:	2f02      	cmp	r7, #2
    1876:	d007      	beq.n	1888 <storage_logtxt_read_raw+0x98>
    1878:	4630      	mov	r0, r6
    187a:	3401      	adds	r4, #1
    187c:	f7ff ff68 	bl	1750 <storage_logtxt_fmt>
    1880:	3624      	adds	r6, #36	; 0x24
    1882:	f1a8 0524 	sub.w	r5, r8, #36	; 0x24
    1886:	4621      	mov	r1, r4
    1888:	4630      	mov	r0, r6
    188a:	3401      	adds	r4, #1
    188c:	f7ff ff60 	bl	1750 <storage_logtxt_fmt>
    1890:	3624      	adds	r6, #36	; 0x24
    1892:	3d24      	subs	r5, #36	; 0x24
    1894:	4621      	mov	r1, r4
    1896:	e014      	b.n	18c2 <storage_logtxt_read_raw+0xd2>
    1898:	4630      	mov	r0, r6
    189a:	4621      	mov	r1, r4
    189c:	f104 0801 	add.w	r8, r4, #1
    18a0:	f7ff ff56 	bl	1750 <storage_logtxt_fmt>
    18a4:	1ca7      	adds	r7, r4, #2
    18a6:	f106 0024 	add.w	r0, r6, #36	; 0x24
    18aa:	4641      	mov	r1, r8
    18ac:	f7ff ff50 	bl	1750 <storage_logtxt_fmt>
    18b0:	3403      	adds	r4, #3
    18b2:	f106 0048 	add.w	r0, r6, #72	; 0x48
    18b6:	4639      	mov	r1, r7
    18b8:	f7ff ff4a 	bl	1750 <storage_logtxt_fmt>
    18bc:	366c      	adds	r6, #108	; 0x6c
    18be:	3d6c      	subs	r5, #108	; 0x6c
    18c0:	4621      	mov	r1, r4
    18c2:	4630      	mov	r0, r6
    18c4:	3d24      	subs	r5, #36	; 0x24
    18c6:	3401      	adds	r4, #1
    18c8:	f7ff ff42 	bl	1750 <storage_logtxt_fmt>
    18cc:	3624      	adds	r6, #36	; 0x24
    18ce:	2d23      	cmp	r5, #35	; 0x23
    18d0:	d8e2      	bhi.n	1898 <storage_logtxt_read_raw+0xa8>
    18d2:	e79d      	b.n	1810 <storage_logtxt_read_raw+0x20>
    18d4:	38e38e39 	.word	0x38e38e39

000018d8 <storage_items>:
    18d8:	4b01      	ldr	r3, [pc, #4]	; (18e0 <storage_items+0x8>)
    18da:	6818      	ldr	r0, [r3, #0]
    18dc:	4770      	bx	lr
    18de:	bf00      	nop
    18e0:	100008e0 	.word	0x100008e0

000018e4 <storage_erase>:
    18e4:	b5f0      	push	{r4, r5, r6, r7, lr}
    18e6:	b085      	sub	sp, #20
    18e8:	ae04      	add	r6, sp, #16
    18ea:	2304      	movs	r3, #4
    18ec:	2500      	movs	r5, #0
    18ee:	f806 3d04 	strb.w	r3, [r6, #-4]!
    18f2:	4631      	mov	r1, r6
    18f4:	2201      	movs	r2, #1
    18f6:	462b      	mov	r3, r5
    18f8:	481d      	ldr	r0, [pc, #116]	; (1970 <storage_erase+0x8c>)
    18fa:	2706      	movs	r7, #6
    18fc:	9500      	str	r5, [sp, #0]
    18fe:	f001 fbbb 	bl	3078 <spi_txrx>
    1902:	4631      	mov	r1, r6
    1904:	2201      	movs	r2, #1
    1906:	462b      	mov	r3, r5
    1908:	4819      	ldr	r0, [pc, #100]	; (1970 <storage_erase+0x8c>)
    190a:	4614      	mov	r4, r2
    190c:	f88d 700c 	strb.w	r7, [sp, #12]
    1910:	9500      	str	r5, [sp, #0]
    1912:	f001 fbb1 	bl	3078 <spi_txrx>
    1916:	4631      	mov	r1, r6
    1918:	2202      	movs	r2, #2
    191a:	462b      	mov	r3, r5
    191c:	4814      	ldr	r0, [pc, #80]	; (1970 <storage_erase+0x8c>)
    191e:	f88d 400c 	strb.w	r4, [sp, #12]
    1922:	f88d 500d 	strb.w	r5, [sp, #13]
    1926:	9500      	str	r5, [sp, #0]
    1928:	f001 fba6 	bl	3078 <spi_txrx>
    192c:	4631      	mov	r1, r6
    192e:	4622      	mov	r2, r4
    1930:	462b      	mov	r3, r5
    1932:	480f      	ldr	r0, [pc, #60]	; (1970 <storage_erase+0x8c>)
    1934:	f88d 700c 	strb.w	r7, [sp, #12]
    1938:	9500      	str	r5, [sp, #0]
    193a:	f001 fb9d 	bl	3078 <spi_txrx>
    193e:	4631      	mov	r1, r6
    1940:	480b      	ldr	r0, [pc, #44]	; (1970 <storage_erase+0x8c>)
    1942:	2660      	movs	r6, #96	; 0x60
    1944:	4622      	mov	r2, r4
    1946:	462b      	mov	r3, r5
    1948:	f88d 600c 	strb.w	r6, [sp, #12]
    194c:	9500      	str	r5, [sp, #0]
    194e:	f001 fb93 	bl	3078 <spi_txrx>
    1952:	4807      	ldr	r0, [pc, #28]	; (1970 <storage_erase+0x8c>)
    1954:	4907      	ldr	r1, [pc, #28]	; (1974 <storage_erase+0x90>)
    1956:	4622      	mov	r2, r4
    1958:	f10d 030f 	add.w	r3, sp, #15
    195c:	9400      	str	r4, [sp, #0]
    195e:	f001 fb8b 	bl	3078 <spi_txrx>
    1962:	f89d 000f 	ldrb.w	r0, [sp, #15]
    1966:	f010 0f01 	tst.w	r0, #1
    196a:	d1f2      	bne.n	1952 <storage_erase+0x6e>
    196c:	b005      	add	sp, #20
    196e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    1970:	01080204 	.word	0x01080204
    1974:	00004cc8 	.word	0x00004cc8

00001978 <storage_read>:
    1978:	b5f0      	push	{r4, r5, r6, r7, lr}
    197a:	b085      	sub	sp, #20
    197c:	4604      	mov	r4, r0
    197e:	b28d      	uxth	r5, r1
    1980:	0c07      	lsrs	r7, r0, #16
    1982:	0a06      	lsrs	r6, r0, #8
    1984:	4613      	mov	r3, r2
    1986:	f04f 0e03 	mov.w	lr, #3
    198a:	a903      	add	r1, sp, #12
    198c:	2204      	movs	r2, #4
    198e:	4807      	ldr	r0, [pc, #28]	; (19ac <storage_read+0x34>)
    1990:	f88d e00c 	strb.w	lr, [sp, #12]
    1994:	f88d 700d 	strb.w	r7, [sp, #13]
    1998:	f88d 600e 	strb.w	r6, [sp, #14]
    199c:	f88d 400f 	strb.w	r4, [sp, #15]
    19a0:	9500      	str	r5, [sp, #0]
    19a2:	f001 fb69 	bl	3078 <spi_txrx>
    19a6:	b005      	add	sp, #20
    19a8:	bdf0      	pop	{r4, r5, r6, r7, pc}
    19aa:	bf00      	nop
    19ac:	01080204 	.word	0x01080204

000019b0 <storage_write>:
    19b0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    19b4:	2901      	cmp	r1, #1
    19b6:	b087      	sub	sp, #28
    19b8:	460c      	mov	r4, r1
    19ba:	4606      	mov	r6, r0
    19bc:	4690      	mov	r8, r2
    19be:	d96d      	bls.n	1a9c <storage_write+0xec>
    19c0:	af06      	add	r7, sp, #24
    19c2:	f04f 0906 	mov.w	r9, #6
    19c6:	2500      	movs	r5, #0
    19c8:	f807 9d08 	strb.w	r9, [r7, #-8]!
    19cc:	2201      	movs	r2, #1
    19ce:	4639      	mov	r1, r7
    19d0:	462b      	mov	r3, r5
    19d2:	4835      	ldr	r0, [pc, #212]	; (1aa8 <storage_write+0xf8>)
    19d4:	9500      	str	r5, [sp, #0]
    19d6:	f001 fb4f 	bl	3078 <spi_txrx>
    19da:	f898 0001 	ldrb.w	r0, [r8, #1]
    19de:	f898 b000 	ldrb.w	fp, [r8]
    19e2:	9003      	str	r0, [sp, #12]
    19e4:	ea4f 4c16 	mov.w	ip, r6, lsr #16
    19e8:	ea4f 2a16 	mov.w	sl, r6, lsr #8
    19ec:	f88d 6013 	strb.w	r6, [sp, #19]
    19f0:	9e03      	ldr	r6, [sp, #12]
    19f2:	462b      	mov	r3, r5
    19f4:	f04f 0ead 	mov.w	lr, #173	; 0xad
    19f8:	482b      	ldr	r0, [pc, #172]	; (1aa8 <storage_write+0xf8>)
    19fa:	4639      	mov	r1, r7
    19fc:	464a      	mov	r2, r9
    19fe:	f88d e010 	strb.w	lr, [sp, #16]
    1a02:	f88d c011 	strb.w	ip, [sp, #17]
    1a06:	f88d a012 	strb.w	sl, [sp, #18]
    1a0a:	f88d b014 	strb.w	fp, [sp, #20]
    1a0e:	f88d 6015 	strb.w	r6, [sp, #21]
    1a12:	9500      	str	r5, [sp, #0]
    1a14:	f001 fb30 	bl	3078 <spi_txrx>
    1a18:	1ea3      	subs	r3, r4, #2
    1a1a:	2b01      	cmp	r3, #1
    1a1c:	d941      	bls.n	1aa2 <storage_write+0xf2>
    1a1e:	1f22      	subs	r2, r4, #4
    1a20:	4646      	mov	r6, r8
    1a22:	f022 0101 	bic.w	r1, r2, #1
    1a26:	f108 0802 	add.w	r8, r8, #2
    1a2a:	4488      	add	r8, r1
    1a2c:	f10d 0517 	add.w	r5, sp, #23
    1a30:	2401      	movs	r4, #1
    1a32:	462b      	mov	r3, r5
    1a34:	491d      	ldr	r1, [pc, #116]	; (1aac <storage_write+0xfc>)
    1a36:	4622      	mov	r2, r4
    1a38:	481b      	ldr	r0, [pc, #108]	; (1aa8 <storage_write+0xf8>)
    1a3a:	9400      	str	r4, [sp, #0]
    1a3c:	f001 fb1c 	bl	3078 <spi_txrx>
    1a40:	f89d 3017 	ldrb.w	r3, [sp, #23]
    1a44:	f013 0e01 	ands.w	lr, r3, #1
    1a48:	d1f3      	bne.n	1a32 <storage_write+0x82>
    1a4a:	78b1      	ldrb	r1, [r6, #2]
    1a4c:	2203      	movs	r2, #3
    1a4e:	f88d 1011 	strb.w	r1, [sp, #17]
    1a52:	f896 c003 	ldrb.w	ip, [r6, #3]
    1a56:	4814      	ldr	r0, [pc, #80]	; (1aa8 <storage_write+0xf8>)
    1a58:	4639      	mov	r1, r7
    1a5a:	4673      	mov	r3, lr
    1a5c:	3602      	adds	r6, #2
    1a5e:	f88d c012 	strb.w	ip, [sp, #18]
    1a62:	f8cd e000 	str.w	lr, [sp]
    1a66:	f001 fb07 	bl	3078 <spi_txrx>
    1a6a:	4546      	cmp	r6, r8
    1a6c:	d1e1      	bne.n	1a32 <storage_write+0x82>
    1a6e:	2401      	movs	r4, #1
    1a70:	480d      	ldr	r0, [pc, #52]	; (1aa8 <storage_write+0xf8>)
    1a72:	490e      	ldr	r1, [pc, #56]	; (1aac <storage_write+0xfc>)
    1a74:	4622      	mov	r2, r4
    1a76:	462b      	mov	r3, r5
    1a78:	9400      	str	r4, [sp, #0]
    1a7a:	f001 fafd 	bl	3078 <spi_txrx>
    1a7e:	f89d 6017 	ldrb.w	r6, [sp, #23]
    1a82:	f016 0601 	ands.w	r6, r6, #1
    1a86:	d1f3      	bne.n	1a70 <storage_write+0xc0>
    1a88:	4622      	mov	r2, r4
    1a8a:	4807      	ldr	r0, [pc, #28]	; (1aa8 <storage_write+0xf8>)
    1a8c:	2404      	movs	r4, #4
    1a8e:	4639      	mov	r1, r7
    1a90:	4633      	mov	r3, r6
    1a92:	f88d 4010 	strb.w	r4, [sp, #16]
    1a96:	9600      	str	r6, [sp, #0]
    1a98:	f001 faee 	bl	3078 <spi_txrx>
    1a9c:	b007      	add	sp, #28
    1a9e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    1aa2:	f10d 0517 	add.w	r5, sp, #23
    1aa6:	e7e2      	b.n	1a6e <storage_write+0xbe>
    1aa8:	01080204 	.word	0x01080204
    1aac:	00004cc8 	.word	0x00004cc8

00001ab0 <storage_status>:
    1ab0:	b530      	push	{r4, r5, lr}
    1ab2:	4c11      	ldr	r4, [pc, #68]	; (1af8 <storage_status+0x48>)
    1ab4:	b085      	sub	sp, #20
    1ab6:	2201      	movs	r2, #1
    1ab8:	ab03      	add	r3, sp, #12
    1aba:	2503      	movs	r5, #3
    1abc:	490f      	ldr	r1, [pc, #60]	; (1afc <storage_status+0x4c>)
    1abe:	4620      	mov	r0, r4
    1ac0:	9500      	str	r5, [sp, #0]
    1ac2:	f001 fad9 	bl	3078 <spi_txrx>
    1ac6:	2501      	movs	r5, #1
    1ac8:	f89d 100c 	ldrb.w	r1, [sp, #12]
    1acc:	f89d 200d 	ldrb.w	r2, [sp, #13]
    1ad0:	f89d 300e 	ldrb.w	r3, [sp, #14]
    1ad4:	480a      	ldr	r0, [pc, #40]	; (1b00 <storage_status+0x50>)
    1ad6:	f002 fb05 	bl	40e4 <debug_printf>
    1ada:	490a      	ldr	r1, [pc, #40]	; (1b04 <storage_status+0x54>)
    1adc:	4620      	mov	r0, r4
    1ade:	462a      	mov	r2, r5
    1ae0:	f10d 030f 	add.w	r3, sp, #15
    1ae4:	9500      	str	r5, [sp, #0]
    1ae6:	f001 fac7 	bl	3078 <spi_txrx>
    1aea:	4807      	ldr	r0, [pc, #28]	; (1b08 <storage_status+0x58>)
    1aec:	f89d 100f 	ldrb.w	r1, [sp, #15]
    1af0:	f002 faf8 	bl	40e4 <debug_printf>
    1af4:	b005      	add	sp, #20
    1af6:	bd30      	pop	{r4, r5, pc}
    1af8:	01080204 	.word	0x01080204
    1afc:	00004d10 	.word	0x00004d10
    1b00:	00004c6c 	.word	0x00004c6c
    1b04:	00004cc8 	.word	0x00004cc8
    1b08:	00004c8c 	.word	0x00004c8c

00001b0c <storage_init>:
    1b0c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    1b10:	4f4d      	ldr	r7, [pc, #308]	; (1c48 <storage_init+0x13c>)
    1b12:	b08b      	sub	sp, #44	; 0x2c
    1b14:	8039      	strh	r1, [r7, #0]
    1b16:	9003      	str	r0, [sp, #12]
    1b18:	0b08      	lsrs	r0, r1, #12
    1b1a:	460d      	mov	r5, r1
    1b1c:	f002 faf2 	bl	4104 <hex_char>
    1b20:	4e4a      	ldr	r6, [pc, #296]	; (1c4c <storage_init+0x140>)
    1b22:	4c4b      	ldr	r4, [pc, #300]	; (1c50 <storage_init+0x144>)
    1b24:	7130      	strb	r0, [r6, #4]
    1b26:	0a28      	lsrs	r0, r5, #8
    1b28:	f002 faec 	bl	4104 <hex_char>
    1b2c:	7170      	strb	r0, [r6, #5]
    1b2e:	f3c5 1007 	ubfx	r0, r5, #4, #8
    1b32:	f002 fae7 	bl	4104 <hex_char>
    1b36:	71b0      	strb	r0, [r6, #6]
    1b38:	b2e8      	uxtb	r0, r5
    1b3a:	f002 fae3 	bl	4104 <hex_char>
    1b3e:	71f0      	strb	r0, [r6, #7]
    1b40:	6871      	ldr	r1, [r6, #4]
    1b42:	4844      	ldr	r0, [pc, #272]	; (1c54 <storage_init+0x148>)
    1b44:	6061      	str	r1, [r4, #4]
    1b46:	f001 fa87 	bl	3058 <spi_init_pin>
    1b4a:	aa05      	add	r2, sp, #20
    1b4c:	1c56      	adds	r6, r2, #1
    1b4e:	f106 0801 	add.w	r8, r6, #1
    1b52:	f108 0901 	add.w	r9, r8, #1
    1b56:	f109 0a01 	add.w	sl, r9, #1
    1b5a:	f10a 0b01 	add.w	fp, sl, #1
    1b5e:	f10b 0301 	add.w	r3, fp, #1
    1b62:	9302      	str	r3, [sp, #8]
    1b64:	2400      	movs	r4, #0
    1b66:	f10b 0502 	add.w	r5, fp, #2
    1b6a:	0a27      	lsrs	r7, r4, #8
    1b6c:	ea4f 4e14 	mov.w	lr, r4, lsr #16
    1b70:	2204      	movs	r2, #4
    1b72:	f04f 0c03 	mov.w	ip, #3
    1b76:	f88d 7026 	strb.w	r7, [sp, #38]	; 0x26
    1b7a:	4836      	ldr	r0, [pc, #216]	; (1c54 <storage_init+0x148>)
    1b7c:	2710      	movs	r7, #16
    1b7e:	a909      	add	r1, sp, #36	; 0x24
    1b80:	ab05      	add	r3, sp, #20
    1b82:	f88d c024 	strb.w	ip, [sp, #36]	; 0x24
    1b86:	f88d e025 	strb.w	lr, [sp, #37]	; 0x25
    1b8a:	f88d 4027 	strb.w	r4, [sp, #39]	; 0x27
    1b8e:	9700      	str	r7, [sp, #0]
    1b90:	f001 fa72 	bl	3078 <spi_txrx>
    1b94:	f89d 0014 	ldrb.w	r0, [sp, #20]
    1b98:	28ff      	cmp	r0, #255	; 0xff
    1b9a:	d14f      	bne.n	1c3c <storage_init+0x130>
    1b9c:	7833      	ldrb	r3, [r6, #0]
    1b9e:	2bff      	cmp	r3, #255	; 0xff
    1ba0:	d14c      	bne.n	1c3c <storage_init+0x130>
    1ba2:	f898 2000 	ldrb.w	r2, [r8]
    1ba6:	2aff      	cmp	r2, #255	; 0xff
    1ba8:	d148      	bne.n	1c3c <storage_init+0x130>
    1baa:	f899 1000 	ldrb.w	r1, [r9]
    1bae:	29ff      	cmp	r1, #255	; 0xff
    1bb0:	d144      	bne.n	1c3c <storage_init+0x130>
    1bb2:	f89a 0000 	ldrb.w	r0, [sl]
    1bb6:	28ff      	cmp	r0, #255	; 0xff
    1bb8:	d140      	bne.n	1c3c <storage_init+0x130>
    1bba:	f89b c000 	ldrb.w	ip, [fp]
    1bbe:	f1bc 0fff 	cmp.w	ip, #255	; 0xff
    1bc2:	d13b      	bne.n	1c3c <storage_init+0x130>
    1bc4:	9a02      	ldr	r2, [sp, #8]
    1bc6:	7813      	ldrb	r3, [r2, #0]
    1bc8:	2bff      	cmp	r3, #255	; 0xff
    1bca:	d137      	bne.n	1c3c <storage_init+0x130>
    1bcc:	7829      	ldrb	r1, [r5, #0]
    1bce:	29ff      	cmp	r1, #255	; 0xff
    1bd0:	d134      	bne.n	1c3c <storage_init+0x130>
    1bd2:	7868      	ldrb	r0, [r5, #1]
    1bd4:	28ff      	cmp	r0, #255	; 0xff
    1bd6:	d131      	bne.n	1c3c <storage_init+0x130>
    1bd8:	f895 c002 	ldrb.w	ip, [r5, #2]
    1bdc:	1cab      	adds	r3, r5, #2
    1bde:	f1bc 0fff 	cmp.w	ip, #255	; 0xff
    1be2:	d12b      	bne.n	1c3c <storage_init+0x130>
    1be4:	785a      	ldrb	r2, [r3, #1]
    1be6:	3301      	adds	r3, #1
    1be8:	2aff      	cmp	r2, #255	; 0xff
    1bea:	d127      	bne.n	1c3c <storage_init+0x130>
    1bec:	7859      	ldrb	r1, [r3, #1]
    1bee:	3301      	adds	r3, #1
    1bf0:	29ff      	cmp	r1, #255	; 0xff
    1bf2:	d123      	bne.n	1c3c <storage_init+0x130>
    1bf4:	7858      	ldrb	r0, [r3, #1]
    1bf6:	3301      	adds	r3, #1
    1bf8:	28ff      	cmp	r0, #255	; 0xff
    1bfa:	d11f      	bne.n	1c3c <storage_init+0x130>
    1bfc:	f893 c001 	ldrb.w	ip, [r3, #1]
    1c00:	3301      	adds	r3, #1
    1c02:	f1bc 0fff 	cmp.w	ip, #255	; 0xff
    1c06:	d119      	bne.n	1c3c <storage_init+0x130>
    1c08:	785a      	ldrb	r2, [r3, #1]
    1c0a:	3301      	adds	r3, #1
    1c0c:	2aff      	cmp	r2, #255	; 0xff
    1c0e:	d115      	bne.n	1c3c <storage_init+0x130>
    1c10:	785b      	ldrb	r3, [r3, #1]
    1c12:	2bff      	cmp	r3, #255	; 0xff
    1c14:	d112      	bne.n	1c3c <storage_init+0x130>
    1c16:	0924      	lsrs	r4, r4, #4
    1c18:	4a0f      	ldr	r2, [pc, #60]	; (1c58 <storage_init+0x14c>)
    1c1a:	4b10      	ldr	r3, [pc, #64]	; (1c5c <storage_init+0x150>)
    1c1c:	0121      	lsls	r1, r4, #4
    1c1e:	6014      	str	r4, [r2, #0]
    1c20:	eb04 00c4 	add.w	r0, r4, r4, lsl #3
    1c24:	6019      	str	r1, [r3, #0]
    1c26:	4a0e      	ldr	r2, [pc, #56]	; (1c60 <storage_init+0x154>)
    1c28:	9903      	ldr	r1, [sp, #12]
    1c2a:	0080      	lsls	r0, r0, #2
    1c2c:	6010      	str	r0, [r2, #0]
    1c2e:	b111      	cbz	r1, 1c36 <storage_init+0x12a>
    1c30:	480c      	ldr	r0, [pc, #48]	; (1c64 <storage_init+0x158>)
    1c32:	f001 fa09 	bl	3048 <vfs_init>
    1c36:	b00b      	add	sp, #44	; 0x2c
    1c38:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    1c3c:	3410      	adds	r4, #16
    1c3e:	f5b4 0f80 	cmp.w	r4, #4194304	; 0x400000
    1c42:	d192      	bne.n	1b6a <storage_init+0x5e>
    1c44:	e7e7      	b.n	1c16 <storage_init+0x10a>
    1c46:	bf00      	nop
    1c48:	100008dc 	.word	0x100008dc
    1c4c:	100001c4 	.word	0x100001c4
    1c50:	100001a4 	.word	0x100001a4
    1c54:	01080204 	.word	0x01080204
    1c58:	100008e0 	.word	0x100008e0
    1c5c:	10000190 	.word	0x10000190
    1c60:	100001b0 	.word	0x100001b0
    1c64:	00004ccc 	.word	0x00004ccc

00001c68 <cIO_putchchar>:
    1c68:	4b09      	ldr	r3, [pc, #36]	; (1c90 <cIO_putchchar+0x28>)
    1c6a:	b410      	push	{r4}
    1c6c:	681a      	ldr	r2, [r3, #0]
    1c6e:	4601      	mov	r1, r0
    1c70:	b152      	cbz	r2, 1c88 <cIO_putchchar+0x20>
    1c72:	4c08      	ldr	r4, [pc, #32]	; (1c94 <cIO_putchchar+0x2c>)
    1c74:	6820      	ldr	r0, [r4, #0]
    1c76:	b128      	cbz	r0, 1c84 <cIO_putchchar+0x1c>
    1c78:	3801      	subs	r0, #1
    1c7a:	6020      	str	r0, [r4, #0]
    1c7c:	f802 1b01 	strb.w	r1, [r2], #1
    1c80:	601a      	str	r2, [r3, #0]
    1c82:	2001      	movs	r0, #1
    1c84:	bc10      	pop	{r4}
    1c86:	4770      	bx	lr
    1c88:	bc10      	pop	{r4}
    1c8a:	f000 bc01 	b.w	2490 <UARTSendChar>
    1c8e:	bf00      	nop
    1c90:	100008e8 	.word	0x100008e8
    1c94:	100008e4 	.word	0x100008e4

00001c98 <cIO_snprintf>:
    1c98:	b40c      	push	{r2, r3}
    1c9a:	b570      	push	{r4, r5, r6, lr}
    1c9c:	4603      	mov	r3, r0
    1c9e:	b082      	sub	sp, #8
    1ca0:	460c      	mov	r4, r1
    1ca2:	2800      	cmp	r0, #0
    1ca4:	d01d      	beq.n	1ce2 <cIO_snprintf+0x4a>
    1ca6:	b951      	cbnz	r1, 1cbe <cIO_snprintf+0x26>
    1ca8:	4d0f      	ldr	r5, [pc, #60]	; (1ce8 <cIO_snprintf+0x50>)
    1caa:	4e10      	ldr	r6, [pc, #64]	; (1cec <cIO_snprintf+0x54>)
    1cac:	4608      	mov	r0, r1
    1cae:	2200      	movs	r2, #0
    1cb0:	602a      	str	r2, [r5, #0]
    1cb2:	6032      	str	r2, [r6, #0]
    1cb4:	b002      	add	sp, #8
    1cb6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    1cba:	b002      	add	sp, #8
    1cbc:	4770      	bx	lr
    1cbe:	aa07      	add	r2, sp, #28
    1cc0:	4d09      	ldr	r5, [pc, #36]	; (1ce8 <cIO_snprintf+0x50>)
    1cc2:	4e0a      	ldr	r6, [pc, #40]	; (1cec <cIO_snprintf+0x54>)
    1cc4:	9806      	ldr	r0, [sp, #24]
    1cc6:	4611      	mov	r1, r2
    1cc8:	6033      	str	r3, [r6, #0]
    1cca:	602c      	str	r4, [r5, #0]
    1ccc:	9201      	str	r2, [sp, #4]
    1cce:	f001 fdf3 	bl	38b8 <tiny_vsprintf>
    1cd2:	682b      	ldr	r3, [r5, #0]
    1cd4:	1ae0      	subs	r0, r4, r3
    1cd6:	2b00      	cmp	r3, #0
    1cd8:	d0e9      	beq.n	1cae <cIO_snprintf+0x16>
    1cda:	6833      	ldr	r3, [r6, #0]
    1cdc:	2100      	movs	r1, #0
    1cde:	7019      	strb	r1, [r3, #0]
    1ce0:	e7e5      	b.n	1cae <cIO_snprintf+0x16>
    1ce2:	4d01      	ldr	r5, [pc, #4]	; (1ce8 <cIO_snprintf+0x50>)
    1ce4:	4e01      	ldr	r6, [pc, #4]	; (1cec <cIO_snprintf+0x54>)
    1ce6:	e7e2      	b.n	1cae <cIO_snprintf+0x16>
    1ce8:	100008e4 	.word	0x100008e4
    1cec:	100008e8 	.word	0x100008e8

00001cf0 <bt_init>:
    1cf0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    1cf4:	460c      	mov	r4, r1
    1cf6:	4605      	mov	r5, r0
    1cf8:	2100      	movs	r1, #0
    1cfa:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
    1cfe:	f000 fb67 	bl	23d0 <UARTInit>
    1d02:	4a3f      	ldr	r2, [pc, #252]	; (1e00 <bt_init+0x110>)
    1d04:	4b3f      	ldr	r3, [pc, #252]	; (1e04 <bt_init+0x114>)
    1d06:	2700      	movs	r7, #0
    1d08:	f8c2 70a0 	str.w	r7, [r2, #160]	; 0xa0
    1d0c:	6859      	ldr	r1, [r3, #4]
    1d0e:	f04f 0e81 	mov.w	lr, #129	; 0x81
    1d12:	f501 4800 	add.w	r8, r1, #32768	; 0x8000
    1d16:	f8d8 0000 	ldr.w	r0, [r8]
    1d1a:	1be9      	subs	r1, r5, r7
    1d1c:	f040 0620 	orr.w	r6, r0, #32
    1d20:	f8c8 6000 	str.w	r6, [r8]
    1d24:	6858      	ldr	r0, [r3, #4]
    1d26:	bf18      	it	ne
    1d28:	2101      	movne	r1, #1
    1d2a:	f8c0 7080 	str.w	r7, [r0, #128]	; 0x80
    1d2e:	f8c2 e090 	str.w	lr, [r2, #144]	; 0x90
    1d32:	685e      	ldr	r6, [r3, #4]
    1d34:	ea4f 08c1 	mov.w	r8, r1, lsl #3
    1d38:	f506 4c00 	add.w	ip, r6, #32768	; 0x8000
    1d3c:	f8dc 9000 	ldr.w	r9, [ip]
    1d40:	0b20      	lsrs	r0, r4, #12
    1d42:	f049 0908 	orr.w	r9, r9, #8
    1d46:	f8cc 9000 	str.w	r9, [ip]
    1d4a:	f8d3 c004 	ldr.w	ip, [r3, #4]
    1d4e:	4e2e      	ldr	r6, [pc, #184]	; (1e08 <bt_init+0x118>)
    1d50:	f8cc 8020 	str.w	r8, [ip, #32]
    1d54:	6097      	str	r7, [r2, #8]
    1d56:	f8d3 c008 	ldr.w	ip, [r3, #8]
    1d5a:	f50c 4c00 	add.w	ip, ip, #32768	; 0x8000
    1d5e:	f8dc 8000 	ldr.w	r8, [ip]
    1d62:	f028 0801 	bic.w	r8, r8, #1
    1d66:	f8cc 8000 	str.w	r8, [ip]
    1d6a:	f8d3 c008 	ldr.w	ip, [r3, #8]
    1d6e:	f8cc 7004 	str.w	r7, [ip, #4]
    1d72:	f8c2 e078 	str.w	lr, [r2, #120]	; 0x78
    1d76:	685a      	ldr	r2, [r3, #4]
    1d78:	f502 4200 	add.w	r2, r2, #32768	; 0x8000
    1d7c:	f8d2 c000 	ldr.w	ip, [r2]
    1d80:	f04c 0e01 	orr.w	lr, ip, #1
    1d84:	f8c2 e000 	str.w	lr, [r2]
    1d88:	685b      	ldr	r3, [r3, #4]
    1d8a:	6059      	str	r1, [r3, #4]
    1d8c:	f002 f9ba 	bl	4104 <hex_char>
    1d90:	75b0      	strb	r0, [r6, #22]
    1d92:	0a20      	lsrs	r0, r4, #8
    1d94:	f002 f9b6 	bl	4104 <hex_char>
    1d98:	75f0      	strb	r0, [r6, #23]
    1d9a:	f3c4 1007 	ubfx	r0, r4, #4, #8
    1d9e:	f002 f9b1 	bl	4104 <hex_char>
    1da2:	7630      	strb	r0, [r6, #24]
    1da4:	b2e0      	uxtb	r0, r4
    1da6:	f002 f9ad 	bl	4104 <hex_char>
    1daa:	7670      	strb	r0, [r6, #25]
    1dac:	b32d      	cbz	r5, 1dfa <bt_init+0x10a>
    1dae:	4d17      	ldr	r5, [pc, #92]	; (1e0c <bt_init+0x11c>)
    1db0:	f8df a064 	ldr.w	sl, [pc, #100]	; 1e18 <bt_init+0x128>
    1db4:	4e16      	ldr	r6, [pc, #88]	; (1e10 <bt_init+0x120>)
    1db6:	462c      	mov	r4, r5
    1db8:	eb0a 0887 	add.w	r8, sl, r7, lsl #2
    1dbc:	f04f 0900 	mov.w	r9, #0
    1dc0:	682b      	ldr	r3, [r5, #0]
    1dc2:	b183      	cbz	r3, 1de6 <bt_init+0xf6>
    1dc4:	6821      	ldr	r1, [r4, #0]
    1dc6:	1e48      	subs	r0, r1, #1
    1dc8:	6020      	str	r0, [r4, #0]
    1dca:	6822      	ldr	r2, [r4, #0]
    1dcc:	5cb3      	ldrb	r3, [r6, r2]
    1dce:	2b0a      	cmp	r3, #10
    1dd0:	d1f6      	bne.n	1dc0 <bt_init+0xd0>
    1dd2:	2f05      	cmp	r7, #5
    1dd4:	f8c4 9000 	str.w	r9, [r4]
    1dd8:	dd09      	ble.n	1dee <bt_init+0xfe>
    1dda:	682b      	ldr	r3, [r5, #0]
    1ddc:	3701      	adds	r7, #1
    1dde:	f108 0804 	add.w	r8, r8, #4
    1de2:	2b00      	cmp	r3, #0
    1de4:	d1ee      	bne.n	1dc4 <bt_init+0xd4>
    1de6:	2f06      	cmp	r7, #6
    1de8:	dde6      	ble.n	1db8 <bt_init+0xc8>
    1dea:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    1dee:	f8d8 1000 	ldr.w	r1, [r8]
    1df2:	4808      	ldr	r0, [pc, #32]	; (1e14 <bt_init+0x124>)
    1df4:	f002 f976 	bl	40e4 <debug_printf>
    1df8:	e7ef      	b.n	1dda <bt_init+0xea>
    1dfa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    1dfe:	bf00      	nop
    1e00:	40044000 	.word	0x40044000
    1e04:	100001f4 	.word	0x100001f4
    1e08:	100001d0 	.word	0x100001d0
    1e0c:	10000930 	.word	0x10000930
    1e10:	100008ec 	.word	0x100008ec
    1e14:	00004da8 	.word	0x00004da8
    1e18:	00004d90 	.word	0x00004d90

00001e1c <IsEmpty>:
    1e1c:	7880      	ldrb	r0, [r0, #2]
    1e1e:	f1d0 0001 	rsbs	r0, r0, #1
    1e22:	bf38      	it	cc
    1e24:	2000      	movcc	r0, #0
    1e26:	4770      	bx	lr

00001e28 <MakeEmpty>:
    1e28:	2300      	movs	r3, #0
    1e2a:	2201      	movs	r2, #1
    1e2c:	7083      	strb	r3, [r0, #2]
    1e2e:	7002      	strb	r2, [r0, #0]
    1e30:	7043      	strb	r3, [r0, #1]
    1e32:	4770      	bx	lr

00001e34 <Enqueue>:
    1e34:	b4f0      	push	{r4, r5, r6, r7}
    1e36:	b084      	sub	sp, #16
    1e38:	9d08      	ldr	r5, [sp, #32]
    1e3a:	466c      	mov	r4, sp
    1e3c:	78ae      	ldrb	r6, [r5, #2]
    1e3e:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
    1e42:	2e64      	cmp	r6, #100	; 0x64
    1e44:	d019      	beq.n	1e7a <Enqueue+0x46>
    1e46:	786a      	ldrb	r2, [r5, #1]
    1e48:	3601      	adds	r6, #1
    1e4a:	1c57      	adds	r7, r2, #1
    1e4c:	b2ff      	uxtb	r7, r7
    1e4e:	2f64      	cmp	r7, #100	; 0x64
    1e50:	bf0c      	ite	eq
    1e52:	2300      	moveq	r3, #0
    1e54:	463b      	movne	r3, r7
    1e56:	eb05 1c03 	add.w	ip, r5, r3, lsl #4
    1e5a:	bf08      	it	eq
    1e5c:	461f      	moveq	r7, r3
    1e5e:	70ae      	strb	r6, [r5, #2]
    1e60:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
    1e62:	706f      	strb	r7, [r5, #1]
    1e64:	f8cc 0003 	str.w	r0, [ip, #3]
    1e68:	f8cc 1007 	str.w	r1, [ip, #7]
    1e6c:	f8cc 200b 	str.w	r2, [ip, #11]
    1e70:	f8cc 300f 	str.w	r3, [ip, #15]
    1e74:	b004      	add	sp, #16
    1e76:	bcf0      	pop	{r4, r5, r6, r7}
    1e78:	4770      	bx	lr
    1e7a:	7829      	ldrb	r1, [r5, #0]
    1e7c:	2263      	movs	r2, #99	; 0x63
    1e7e:	1c48      	adds	r0, r1, #1
    1e80:	b2c3      	uxtb	r3, r0
    1e82:	2b64      	cmp	r3, #100	; 0x64
    1e84:	bf08      	it	eq
    1e86:	2300      	moveq	r3, #0
    1e88:	70aa      	strb	r2, [r5, #2]
    1e8a:	702b      	strb	r3, [r5, #0]
    1e8c:	e7f2      	b.n	1e74 <Enqueue+0x40>
    1e8e:	bf00      	nop

00001e90 <Front>:
    1e90:	7803      	ldrb	r3, [r0, #0]
    1e92:	eb00 1003 	add.w	r0, r0, r3, lsl #4
    1e96:	3003      	adds	r0, #3
    1e98:	4770      	bx	lr
    1e9a:	bf00      	nop

00001e9c <RotQueue>:
    1e9c:	7883      	ldrb	r3, [r0, #2]
    1e9e:	e92d 07f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl}
    1ea2:	2b00      	cmp	r3, #0
    1ea4:	d035      	beq.n	1f12 <RotQueue+0x76>
    1ea6:	7806      	ldrb	r6, [r0, #0]
    1ea8:	1e5f      	subs	r7, r3, #1
    1eaa:	eb00 1506 	add.w	r5, r0, r6, lsl #4
    1eae:	b2f9      	uxtb	r1, r7
    1eb0:	7081      	strb	r1, [r0, #2]
    1eb2:	462a      	mov	r2, r5
    1eb4:	f852 cf08 	ldr.w	ip, [r2, #8]!
    1eb8:	f106 0a01 	add.w	sl, r6, #1
    1ebc:	8894      	ldrh	r4, [r2, #4]
    1ebe:	fa5f fa8a 	uxtb.w	sl, sl
    1ec2:	f1ba 0f64 	cmp.w	sl, #100	; 0x64
    1ec6:	bf08      	it	eq
    1ec8:	f04f 0a00 	moveq.w	sl, #0
    1ecc:	f8d5 8004 	ldr.w	r8, [r5, #4]
    1ed0:	4627      	mov	r7, r4
    1ed2:	88d6      	ldrh	r6, [r2, #6]
    1ed4:	f8b2 4009 	ldrh.w	r4, [r2, #9]
    1ed8:	2964      	cmp	r1, #100	; 0x64
    1eda:	f880 a000 	strb.w	sl, [r0]
    1ede:	f895 9003 	ldrb.w	r9, [r5, #3]
    1ee2:	7c2d      	ldrb	r5, [r5, #16]
    1ee4:	d018      	beq.n	1f18 <RotQueue+0x7c>
    1ee6:	7842      	ldrb	r2, [r0, #1]
    1ee8:	7083      	strb	r3, [r0, #2]
    1eea:	1c51      	adds	r1, r2, #1
    1eec:	b2c9      	uxtb	r1, r1
    1eee:	2964      	cmp	r1, #100	; 0x64
    1ef0:	d020      	beq.n	1f34 <RotQueue+0x98>
    1ef2:	460a      	mov	r2, r1
    1ef4:	eb00 1202 	add.w	r2, r0, r2, lsl #4
    1ef8:	4613      	mov	r3, r2
    1efa:	7041      	strb	r1, [r0, #1]
    1efc:	f882 9003 	strb.w	r9, [r2, #3]
    1f00:	f8c2 8004 	str.w	r8, [r2, #4]
    1f04:	f843 cf08 	str.w	ip, [r3, #8]!
    1f08:	809f      	strh	r7, [r3, #4]
    1f0a:	80de      	strh	r6, [r3, #6]
    1f0c:	7415      	strb	r5, [r2, #16]
    1f0e:	f8a3 4009 	strh.w	r4, [r3, #9]
    1f12:	e8bd 07f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl}
    1f16:	4770      	bx	lr
    1f18:	f10a 0c01 	add.w	ip, sl, #1
    1f1c:	fa5f fa8c 	uxtb.w	sl, ip
    1f20:	f1ba 0f64 	cmp.w	sl, #100	; 0x64
    1f24:	bf08      	it	eq
    1f26:	f04f 0a00 	moveq.w	sl, #0
    1f2a:	2363      	movs	r3, #99	; 0x63
    1f2c:	7083      	strb	r3, [r0, #2]
    1f2e:	f880 a000 	strb.w	sl, [r0]
    1f32:	e7ee      	b.n	1f12 <RotQueue+0x76>
    1f34:	2200      	movs	r2, #0
    1f36:	4611      	mov	r1, r2
    1f38:	e7dc      	b.n	1ef4 <RotQueue+0x58>
    1f3a:	bf00      	nop

00001f3c <Contains>:
    1f3c:	b430      	push	{r4, r5}
    1f3e:	7883      	ldrb	r3, [r0, #2]
    1f40:	b1bb      	cbz	r3, 1f72 <Contains+0x36>
    1f42:	7805      	ldrb	r5, [r0, #0]
    1f44:	462b      	mov	r3, r5
    1f46:	e008      	b.n	1f5a <Contains+0x1e>
    1f48:	7844      	ldrb	r4, [r0, #1]
    1f4a:	429c      	cmp	r4, r3
    1f4c:	d00f      	beq.n	1f6e <Contains+0x32>
    1f4e:	2a64      	cmp	r2, #100	; 0x64
    1f50:	bf14      	ite	ne
    1f52:	4613      	movne	r3, r2
    1f54:	2300      	moveq	r3, #0
    1f56:	429d      	cmp	r5, r3
    1f58:	d009      	beq.n	1f6e <Contains+0x32>
    1f5a:	eb00 1403 	add.w	r4, r0, r3, lsl #4
    1f5e:	68a4      	ldr	r4, [r4, #8]
    1f60:	1c5a      	adds	r2, r3, #1
    1f62:	428c      	cmp	r4, r1
    1f64:	b2d2      	uxtb	r2, r2
    1f66:	d1ef      	bne.n	1f48 <Contains+0xc>
    1f68:	2001      	movs	r0, #1
    1f6a:	bc30      	pop	{r4, r5}
    1f6c:	4770      	bx	lr
    1f6e:	2000      	movs	r0, #0
    1f70:	e7fb      	b.n	1f6a <Contains+0x2e>
    1f72:	4618      	mov	r0, r3
    1f74:	e7f9      	b.n	1f6a <Contains+0x2e>
    1f76:	bf00      	nop

00001f78 <acc_status>:
    1f78:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1f7c:	4e21      	ldr	r6, [pc, #132]	; (2004 <acc_status+0x8c>)
    1f7e:	b084      	sub	sp, #16
    1f80:	2402      	movs	r4, #2
    1f82:	2500      	movs	r5, #0
    1f84:	a902      	add	r1, sp, #8
    1f86:	4622      	mov	r2, r4
    1f88:	ab03      	add	r3, sp, #12
    1f8a:	4630      	mov	r0, r6
    1f8c:	270c      	movs	r7, #12
    1f8e:	f88d 5008 	strb.w	r5, [sp, #8]
    1f92:	f88d 5009 	strb.w	r5, [sp, #9]
    1f96:	9400      	str	r4, [sp, #0]
    1f98:	f001 f86e 	bl	3078 <spi_txrx>
    1f9c:	a903      	add	r1, sp, #12
    1f9e:	4622      	mov	r2, r4
    1fa0:	ab02      	add	r3, sp, #8
    1fa2:	4630      	mov	r0, r6
    1fa4:	f88d 700c 	strb.w	r7, [sp, #12]
    1fa8:	f88d 500d 	strb.w	r5, [sp, #13]
    1fac:	9400      	str	r4, [sp, #0]
    1fae:	f001 f863 	bl	3078 <spi_txrx>
    1fb2:	eb0d 0307 	add.w	r3, sp, r7
    1fb6:	f04f 0e0e 	mov.w	lr, #14
    1fba:	a902      	add	r1, sp, #8
    1fbc:	4622      	mov	r2, r4
    1fbe:	4630      	mov	r0, r6
    1fc0:	f99d 7009 	ldrsb.w	r7, [sp, #9]
    1fc4:	f88d e008 	strb.w	lr, [sp, #8]
    1fc8:	f88d 5009 	strb.w	r5, [sp, #9]
    1fcc:	9400      	str	r4, [sp, #0]
    1fce:	f001 f853 	bl	3078 <spi_txrx>
    1fd2:	f99d 800d 	ldrsb.w	r8, [sp, #13]
    1fd6:	a903      	add	r1, sp, #12
    1fd8:	4622      	mov	r2, r4
    1fda:	ab02      	add	r3, sp, #8
    1fdc:	4630      	mov	r0, r6
    1fde:	2610      	movs	r6, #16
    1fe0:	f88d 600c 	strb.w	r6, [sp, #12]
    1fe4:	f88d 500d 	strb.w	r5, [sp, #13]
    1fe8:	9400      	str	r4, [sp, #0]
    1fea:	f001 f845 	bl	3078 <spi_txrx>
    1fee:	4806      	ldr	r0, [pc, #24]	; (2008 <acc_status+0x90>)
    1ff0:	4639      	mov	r1, r7
    1ff2:	4642      	mov	r2, r8
    1ff4:	f99d 3009 	ldrsb.w	r3, [sp, #9]
    1ff8:	f002 f874 	bl	40e4 <debug_printf>
    1ffc:	b004      	add	sp, #16
    1ffe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2002:	bf00      	nop
    2004:	00040200 	.word	0x00040200
    2008:	00004dfc 	.word	0x00004dfc

0000200c <acc_power>:
    200c:	b530      	push	{r4, r5, lr}
    200e:	4604      	mov	r4, r0
    2010:	b085      	sub	sp, #20
    2012:	2800      	cmp	r0, #0
    2014:	d128      	bne.n	2068 <acc_power+0x5c>
    2016:	2502      	movs	r5, #2
    2018:	462a      	mov	r2, r5
    201a:	a903      	add	r1, sp, #12
    201c:	ab02      	add	r3, sp, #8
    201e:	4824      	ldr	r0, [pc, #144]	; (20b0 <acc_power+0xa4>)
    2020:	9500      	str	r5, [sp, #0]
    2022:	f88d 400c 	strb.w	r4, [sp, #12]
    2026:	f88d 400d 	strb.w	r4, [sp, #13]
    202a:	f001 f825 	bl	3078 <spi_txrx>
    202e:	462a      	mov	r2, r5
    2030:	a903      	add	r1, sp, #12
    2032:	4623      	mov	r3, r4
    2034:	481e      	ldr	r0, [pc, #120]	; (20b0 <acc_power+0xa4>)
    2036:	25ac      	movs	r5, #172	; 0xac
    2038:	f88d 500c 	strb.w	r5, [sp, #12]
    203c:	f88d 400d 	strb.w	r4, [sp, #13]
    2040:	9400      	str	r4, [sp, #0]
    2042:	f001 f819 	bl	3078 <spi_txrx>
    2046:	4b1b      	ldr	r3, [pc, #108]	; (20b4 <acc_power+0xa8>)
    2048:	685a      	ldr	r2, [r3, #4]
    204a:	f502 4c00 	add.w	ip, r2, #32768	; 0x8000
    204e:	f8dc 1000 	ldr.w	r1, [ip]
    2052:	f441 6000 	orr.w	r0, r1, #2048	; 0x800
    2056:	f8cc 0000 	str.w	r0, [ip]
    205a:	685a      	ldr	r2, [r3, #4]
    205c:	f502 5c00 	add.w	ip, r2, #8192	; 0x2000
    2060:	f8cc 4000 	str.w	r4, [ip]
    2064:	b005      	add	sp, #20
    2066:	bd30      	pop	{r4, r5, pc}
    2068:	4c12      	ldr	r4, [pc, #72]	; (20b4 <acc_power+0xa8>)
    206a:	2502      	movs	r5, #2
    206c:	6861      	ldr	r1, [r4, #4]
    206e:	2400      	movs	r4, #0
    2070:	f501 4300 	add.w	r3, r1, #32768	; 0x8000
    2074:	6818      	ldr	r0, [r3, #0]
    2076:	a903      	add	r1, sp, #12
    2078:	f420 6200 	bic.w	r2, r0, #2048	; 0x800
    207c:	601a      	str	r2, [r3, #0]
    207e:	480c      	ldr	r0, [pc, #48]	; (20b0 <acc_power+0xa4>)
    2080:	462a      	mov	r2, r5
    2082:	ab02      	add	r3, sp, #8
    2084:	9500      	str	r5, [sp, #0]
    2086:	f88d 400c 	strb.w	r4, [sp, #12]
    208a:	f88d 400d 	strb.w	r4, [sp, #13]
    208e:	f000 fff3 	bl	3078 <spi_txrx>
    2092:	462a      	mov	r2, r5
    2094:	25ac      	movs	r5, #172	; 0xac
    2096:	f88d 500c 	strb.w	r5, [sp, #12]
    209a:	a903      	add	r1, sp, #12
    209c:	2505      	movs	r5, #5
    209e:	4623      	mov	r3, r4
    20a0:	4803      	ldr	r0, [pc, #12]	; (20b0 <acc_power+0xa4>)
    20a2:	f88d 500d 	strb.w	r5, [sp, #13]
    20a6:	9400      	str	r4, [sp, #0]
    20a8:	f000 ffe6 	bl	3078 <spi_txrx>
    20ac:	e7da      	b.n	2064 <acc_power+0x58>
    20ae:	bf00      	nop
    20b0:	00040200 	.word	0x00040200
    20b4:	100001f4 	.word	0x100001f4

000020b8 <acc_init>:
    20b8:	b570      	push	{r4, r5, r6, lr}
    20ba:	4c0c      	ldr	r4, [pc, #48]	; (20ec <acc_init+0x34>)
    20bc:	f44f 7180 	mov.w	r1, #256	; 0x100
    20c0:	4605      	mov	r5, r0
    20c2:	6321      	str	r1, [r4, #48]	; 0x30
    20c4:	480a      	ldr	r0, [pc, #40]	; (20f0 <acc_init+0x38>)
    20c6:	f000 ffc7 	bl	3058 <spi_init_pin>
    20ca:	2380      	movs	r3, #128	; 0x80
    20cc:	4809      	ldr	r0, [pc, #36]	; (20f4 <acc_init+0x3c>)
    20ce:	f8c4 3098 	str.w	r3, [r4, #152]	; 0x98
    20d2:	6842      	ldr	r2, [r0, #4]
    20d4:	4628      	mov	r0, r5
    20d6:	f502 4300 	add.w	r3, r2, #32768	; 0x8000
    20da:	6819      	ldr	r1, [r3, #0]
    20dc:	f421 6200 	bic.w	r2, r1, #2048	; 0x800
    20e0:	601a      	str	r2, [r3, #0]
    20e2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    20e6:	f7ff bf91 	b.w	200c <acc_power>
    20ea:	bf00      	nop
    20ec:	40044000 	.word	0x40044000
    20f0:	00040200 	.word	0x00040200
    20f4:	100001f4 	.word	0x100001f4

000020f8 <__RBIT>:
    20f8:	fa90 f0a0 	rbit	r0, r0
    20fc:	4770      	bx	lr
    20fe:	bf00      	nop

00002100 <SystemCoreClockUpdate>:
    2100:	4b24      	ldr	r3, [pc, #144]	; (2194 <SystemCoreClockUpdate+0x94>)
    2102:	b410      	push	{r4}
    2104:	6a5c      	ldr	r4, [r3, #36]	; 0x24
    2106:	6a59      	ldr	r1, [r3, #36]	; 0x24
    2108:	4823      	ldr	r0, [pc, #140]	; (2198 <SystemCoreClockUpdate+0x98>)
    210a:	6f1a      	ldr	r2, [r3, #112]	; 0x70
    210c:	f3c4 1443 	ubfx	r4, r4, #5, #4
    2110:	f001 011f 	and.w	r1, r1, #31
    2114:	0049      	lsls	r1, r1, #1
    2116:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
    211a:	f002 0203 	and.w	r2, r2, #3
    211e:	3102      	adds	r1, #2
    2120:	2a02      	cmp	r2, #2
    2122:	fbb0 f1f1 	udiv	r1, r0, r1
    2126:	d004      	beq.n	2132 <SystemCoreClockUpdate+0x32>
    2128:	2a03      	cmp	r2, #3
    212a:	d014      	beq.n	2156 <SystemCoreClockUpdate+0x56>
    212c:	2a01      	cmp	r2, #1
    212e:	d008      	beq.n	2142 <SystemCoreClockUpdate+0x42>
    2130:	491a      	ldr	r1, [pc, #104]	; (219c <SystemCoreClockUpdate+0x9c>)
    2132:	4b18      	ldr	r3, [pc, #96]	; (2194 <SystemCoreClockUpdate+0x94>)
    2134:	4a1a      	ldr	r2, [pc, #104]	; (21a0 <SystemCoreClockUpdate+0xa0>)
    2136:	6f98      	ldr	r0, [r3, #120]	; 0x78
    2138:	fbb1 f1f0 	udiv	r1, r1, r0
    213c:	6011      	str	r1, [r2, #0]
    213e:	bc10      	pop	{r4}
    2140:	4770      	bx	lr
    2142:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    2144:	f003 0303 	and.w	r3, r3, #3
    2148:	2b02      	cmp	r3, #2
    214a:	d0f2      	beq.n	2132 <SystemCoreClockUpdate+0x32>
    214c:	4913      	ldr	r1, [pc, #76]	; (219c <SystemCoreClockUpdate+0x9c>)
    214e:	2b03      	cmp	r3, #3
    2150:	bf08      	it	eq
    2152:	2100      	moveq	r1, #0
    2154:	e7ed      	b.n	2132 <SystemCoreClockUpdate+0x32>
    2156:	6c1a      	ldr	r2, [r3, #64]	; 0x40
    2158:	f002 0203 	and.w	r2, r2, #3
    215c:	2a02      	cmp	r2, #2
    215e:	d00c      	beq.n	217a <SystemCoreClockUpdate+0x7a>
    2160:	2a03      	cmp	r2, #3
    2162:	d014      	beq.n	218e <SystemCoreClockUpdate+0x8e>
    2164:	6898      	ldr	r0, [r3, #8]
    2166:	f410 7fc0 	tst.w	r0, #384	; 0x180
    216a:	d1e1      	bne.n	2130 <SystemCoreClockUpdate+0x30>
    216c:	689b      	ldr	r3, [r3, #8]
    216e:	490b      	ldr	r1, [pc, #44]	; (219c <SystemCoreClockUpdate+0x9c>)
    2170:	f003 0c1f 	and.w	ip, r3, #31
    2174:	fb0c 1101 	mla	r1, ip, r1, r1
    2178:	e7db      	b.n	2132 <SystemCoreClockUpdate+0x32>
    217a:	689a      	ldr	r2, [r3, #8]
    217c:	f412 7fc0 	tst.w	r2, #384	; 0x180
    2180:	d1d7      	bne.n	2132 <SystemCoreClockUpdate+0x32>
    2182:	689b      	ldr	r3, [r3, #8]
    2184:	f003 001f 	and.w	r0, r3, #31
    2188:	fb00 1101 	mla	r1, r0, r1, r1
    218c:	e7d1      	b.n	2132 <SystemCoreClockUpdate+0x32>
    218e:	2100      	movs	r1, #0
    2190:	e7cf      	b.n	2132 <SystemCoreClockUpdate+0x32>
    2192:	bf00      	nop
    2194:	40048000 	.word	0x40048000
    2198:	00004e20 	.word	0x00004e20
    219c:	00b71b00 	.word	0x00b71b00
    21a0:	100001ec 	.word	0x100001ec

000021a4 <SystemInit>:
    21a4:	4a2f      	ldr	r2, [pc, #188]	; (2264 <SystemInit+0xc0>)
    21a6:	23c8      	movs	r3, #200	; 0xc8
    21a8:	f8d2 1238 	ldr.w	r1, [r2, #568]	; 0x238
    21ac:	f021 0020 	bic.w	r0, r1, #32
    21b0:	2100      	movs	r1, #0
    21b2:	f8c2 0238 	str.w	r0, [r2, #568]	; 0x238
    21b6:	6211      	str	r1, [r2, #32]
    21b8:	bf00      	nop
    21ba:	bf00      	nop
    21bc:	bf00      	nop
    21be:	bf00      	nop
    21c0:	3b04      	subs	r3, #4
    21c2:	d1f9      	bne.n	21b8 <SystemInit+0x14>
    21c4:	4a27      	ldr	r2, [pc, #156]	; (2264 <SystemInit+0xc0>)
    21c6:	2001      	movs	r0, #1
    21c8:	6410      	str	r0, [r2, #64]	; 0x40
    21ca:	4611      	mov	r1, r2
    21cc:	6450      	str	r0, [r2, #68]	; 0x44
    21ce:	6453      	str	r3, [r2, #68]	; 0x44
    21d0:	6450      	str	r0, [r2, #68]	; 0x44
    21d2:	6c4b      	ldr	r3, [r1, #68]	; 0x44
    21d4:	4a23      	ldr	r2, [pc, #140]	; (2264 <SystemInit+0xc0>)
    21d6:	f013 0f01 	tst.w	r3, #1
    21da:	d0fa      	beq.n	21d2 <SystemInit+0x2e>
    21dc:	2125      	movs	r1, #37	; 0x25
    21de:	6091      	str	r1, [r2, #8]
    21e0:	f8d2 3238 	ldr.w	r3, [r2, #568]	; 0x238
    21e4:	4611      	mov	r1, r2
    21e6:	f023 0080 	bic.w	r0, r3, #128	; 0x80
    21ea:	f8c2 0238 	str.w	r0, [r2, #568]	; 0x238
    21ee:	68c8      	ldr	r0, [r1, #12]
    21f0:	4a1c      	ldr	r2, [pc, #112]	; (2264 <SystemInit+0xc0>)
    21f2:	f010 0f01 	tst.w	r0, #1
    21f6:	d0fa      	beq.n	21ee <SystemInit+0x4a>
    21f8:	2301      	movs	r3, #1
    21fa:	2103      	movs	r1, #3
    21fc:	2000      	movs	r0, #0
    21fe:	6711      	str	r1, [r2, #112]	; 0x70
    2200:	6753      	str	r3, [r2, #116]	; 0x74
    2202:	4611      	mov	r1, r2
    2204:	6750      	str	r0, [r2, #116]	; 0x74
    2206:	6753      	str	r3, [r2, #116]	; 0x74
    2208:	6f4b      	ldr	r3, [r1, #116]	; 0x74
    220a:	4a16      	ldr	r2, [pc, #88]	; (2264 <SystemInit+0xc0>)
    220c:	f013 0f01 	tst.w	r3, #1
    2210:	d0fa      	beq.n	2208 <SystemInit+0x64>
    2212:	f8d2 0238 	ldr.w	r0, [r2, #568]	; 0x238
    2216:	2301      	movs	r3, #1
    2218:	f420 6180 	bic.w	r1, r0, #1024	; 0x400
    221c:	f8c2 1238 	str.w	r1, [r2, #568]	; 0x238
    2220:	f8d2 0238 	ldr.w	r0, [r2, #568]	; 0x238
    2224:	f420 7180 	bic.w	r1, r0, #256	; 0x100
    2228:	2000      	movs	r0, #0
    222a:	f8c2 1238 	str.w	r1, [r2, #568]	; 0x238
    222e:	6493      	str	r3, [r2, #72]	; 0x48
    2230:	4611      	mov	r1, r2
    2232:	64d3      	str	r3, [r2, #76]	; 0x4c
    2234:	64d0      	str	r0, [r2, #76]	; 0x4c
    2236:	64d3      	str	r3, [r2, #76]	; 0x4c
    2238:	6ccb      	ldr	r3, [r1, #76]	; 0x4c
    223a:	4a0a      	ldr	r2, [pc, #40]	; (2264 <SystemInit+0xc0>)
    223c:	f013 0f01 	tst.w	r3, #1
    2240:	d0fa      	beq.n	2238 <SystemInit+0x94>
    2242:	2103      	movs	r1, #3
    2244:	6111      	str	r1, [r2, #16]
    2246:	4611      	mov	r1, r2
    2248:	6948      	ldr	r0, [r1, #20]
    224a:	4a06      	ldr	r2, [pc, #24]	; (2264 <SystemInit+0xc0>)
    224c:	f010 0f01 	tst.w	r0, #1
    2250:	d0fa      	beq.n	2248 <SystemInit+0xa4>
    2252:	4b05      	ldr	r3, [pc, #20]	; (2268 <SystemInit+0xc4>)
    2254:	2000      	movs	r0, #0
    2256:	2101      	movs	r1, #1
    2258:	f8c2 00c0 	str.w	r0, [r2, #192]	; 0xc0
    225c:	6791      	str	r1, [r2, #120]	; 0x78
    225e:	f8c2 3080 	str.w	r3, [r2, #128]	; 0x80
    2262:	4770      	bx	lr
    2264:	40048000 	.word	0x40048000
    2268:	0001005f 	.word	0x0001005f

0000226c <NMI_Handler>:
    226c:	e7fe      	b.n	226c <NMI_Handler>
    226e:	bf00      	nop

00002270 <HardFault_Handler>:
    2270:	e7fe      	b.n	2270 <HardFault_Handler>
    2272:	bf00      	nop

00002274 <MemManage_Handler>:
    2274:	e7fe      	b.n	2274 <MemManage_Handler>
    2276:	bf00      	nop

00002278 <BusFault_Handler>:
    2278:	e7fe      	b.n	2278 <BusFault_Handler>
    227a:	bf00      	nop

0000227c <UsageFault_Handler>:
    227c:	e7fe      	b.n	227c <UsageFault_Handler>
    227e:	bf00      	nop

00002280 <SVCall_Handler>:
    2280:	e7fe      	b.n	2280 <SVCall_Handler>
    2282:	bf00      	nop

00002284 <DebugMon_Handler>:
    2284:	e7fe      	b.n	2284 <DebugMon_Handler>
    2286:	bf00      	nop

00002288 <PendSV_Handler>:
    2288:	e7fe      	b.n	2288 <PendSV_Handler>
    228a:	bf00      	nop

0000228c <SysTick_Handler>:
    228c:	e7fe      	b.n	228c <SysTick_Handler>
    228e:	bf00      	nop

00002290 <Reset_Handler>:
    2290:	4823      	ldr	r0, [pc, #140]	; (2320 <zero_loop+0x16>)
    2292:	4924      	ldr	r1, [pc, #144]	; (2324 <zero_loop+0x1a>)
    2294:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    2296:	4288      	cmp	r0, r1
    2298:	d233      	bcs.n	2302 <Reset_Handler+0x72>
    229a:	4d23      	ldr	r5, [pc, #140]	; (2328 <zero_loop+0x1e>)
    229c:	43c3      	mvns	r3, r0
    229e:	462a      	mov	r2, r5
    22a0:	f852 6b04 	ldr.w	r6, [r2], #4
    22a4:	18cf      	adds	r7, r1, r3
    22a6:	4603      	mov	r3, r0
    22a8:	f843 6b04 	str.w	r6, [r3], #4
    22ac:	08bc      	lsrs	r4, r7, #2
    22ae:	428b      	cmp	r3, r1
    22b0:	f004 0403 	and.w	r4, r4, #3
    22b4:	d225      	bcs.n	2302 <Reset_Handler+0x72>
    22b6:	b19c      	cbz	r4, 22e0 <Reset_Handler+0x50>
    22b8:	2c01      	cmp	r4, #1
    22ba:	d00b      	beq.n	22d4 <Reset_Handler+0x44>
    22bc:	2c02      	cmp	r4, #2
    22be:	d005      	beq.n	22cc <Reset_Handler+0x3c>
    22c0:	6814      	ldr	r4, [r2, #0]
    22c2:	f105 0208 	add.w	r2, r5, #8
    22c6:	601c      	str	r4, [r3, #0]
    22c8:	f100 0308 	add.w	r3, r0, #8
    22cc:	f852 5b04 	ldr.w	r5, [r2], #4
    22d0:	f843 5b04 	str.w	r5, [r3], #4
    22d4:	f852 0b04 	ldr.w	r0, [r2], #4
    22d8:	f843 0b04 	str.w	r0, [r3], #4
    22dc:	428b      	cmp	r3, r1
    22de:	d210      	bcs.n	2302 <Reset_Handler+0x72>
    22e0:	4694      	mov	ip, r2
    22e2:	f85c 7b04 	ldr.w	r7, [ip], #4
    22e6:	6856      	ldr	r6, [r2, #4]
    22e8:	68d5      	ldr	r5, [r2, #12]
    22ea:	f8dc 4004 	ldr.w	r4, [ip, #4]
    22ee:	4618      	mov	r0, r3
    22f0:	f840 7b04 	str.w	r7, [r0], #4
    22f4:	605e      	str	r6, [r3, #4]
    22f6:	6044      	str	r4, [r0, #4]
    22f8:	60dd      	str	r5, [r3, #12]
    22fa:	3310      	adds	r3, #16
    22fc:	3210      	adds	r2, #16
    22fe:	428b      	cmp	r3, r1
    2300:	d3ee      	bcc.n	22e0 <Reset_Handler+0x50>
    2302:	480a      	ldr	r0, [pc, #40]	; (232c <zero_loop+0x22>)
    2304:	490a      	ldr	r1, [pc, #40]	; (2330 <zero_loop+0x26>)
    2306:	f04f 0200 	mov.w	r2, #0

0000230a <zero_loop>:
    230a:	4288      	cmp	r0, r1
    230c:	bfb8      	it	lt
    230e:	f840 2b04 	strlt.w	r2, [r0], #4
    2312:	dbfa      	blt.n	230a <zero_loop>
    2314:	f7ff ff46 	bl	21a4 <SystemInit>
    2318:	f7fe f8b2 	bl	480 <main>
    231c:	e7fe      	b.n	231c <zero_loop+0x12>
    231e:	bf00      	nop
    2320:	10000180 	.word	0x10000180
    2324:	10000204 	.word	0x10000204
    2328:	00005194 	.word	0x00005194
    232c:	10000204 	.word	0x10000204
    2330:	10000988 	.word	0x10000988

00002334 <ADC_IRQHandler>:
    2334:	e7fe      	b.n	2334 <ADC_IRQHandler>
    2336:	bf00      	nop

00002338 <UART_IRQHandler>:
    2338:	b430      	push	{r4, r5}
    233a:	4a20      	ldr	r2, [pc, #128]	; (23bc <UART_IRQHandler+0x84>)
    233c:	6893      	ldr	r3, [r2, #8]
    233e:	f3c3 0342 	ubfx	r3, r3, #1, #3
    2342:	2b03      	cmp	r3, #3
    2344:	d00f      	beq.n	2366 <UART_IRQHandler+0x2e>
    2346:	2b02      	cmp	r3, #2
    2348:	d021      	beq.n	238e <UART_IRQHandler+0x56>
    234a:	2b06      	cmp	r3, #6
    234c:	d030      	beq.n	23b0 <UART_IRQHandler+0x78>
    234e:	2b01      	cmp	r3, #1
    2350:	d107      	bne.n	2362 <UART_IRQHandler+0x2a>
    2352:	6950      	ldr	r0, [r2, #20]
    2354:	f010 0220 	ands.w	r2, r0, #32
    2358:	bf15      	itete	ne
    235a:	4a19      	ldrne	r2, [pc, #100]	; (23c0 <UART_IRQHandler+0x88>)
    235c:	4b18      	ldreq	r3, [pc, #96]	; (23c0 <UART_IRQHandler+0x88>)
    235e:	7013      	strbne	r3, [r2, #0]
    2360:	701a      	strbeq	r2, [r3, #0]
    2362:	bc30      	pop	{r4, r5}
    2364:	4770      	bx	lr
    2366:	6950      	ldr	r0, [r2, #20]
    2368:	b2c3      	uxtb	r3, r0
    236a:	f013 009e 	ands.w	r0, r3, #158	; 0x9e
    236e:	d11b      	bne.n	23a8 <UART_IRQHandler+0x70>
    2370:	f013 0f01 	tst.w	r3, #1
    2374:	d0f5      	beq.n	2362 <UART_IRQHandler+0x2a>
    2376:	4b13      	ldr	r3, [pc, #76]	; (23c4 <UART_IRQHandler+0x8c>)
    2378:	4c13      	ldr	r4, [pc, #76]	; (23c8 <UART_IRQHandler+0x90>)
    237a:	6819      	ldr	r1, [r3, #0]
    237c:	6815      	ldr	r5, [r2, #0]
    237e:	1c4a      	adds	r2, r1, #1
    2380:	5465      	strb	r5, [r4, r1]
    2382:	601a      	str	r2, [r3, #0]
    2384:	681a      	ldr	r2, [r3, #0]
    2386:	2a40      	cmp	r2, #64	; 0x40
    2388:	d1eb      	bne.n	2362 <UART_IRQHandler+0x2a>
    238a:	6018      	str	r0, [r3, #0]
    238c:	e7e9      	b.n	2362 <UART_IRQHandler+0x2a>
    238e:	4b0d      	ldr	r3, [pc, #52]	; (23c4 <UART_IRQHandler+0x8c>)
    2390:	480d      	ldr	r0, [pc, #52]	; (23c8 <UART_IRQHandler+0x90>)
    2392:	6819      	ldr	r1, [r3, #0]
    2394:	6814      	ldr	r4, [r2, #0]
    2396:	1c4a      	adds	r2, r1, #1
    2398:	5444      	strb	r4, [r0, r1]
    239a:	601a      	str	r2, [r3, #0]
    239c:	6818      	ldr	r0, [r3, #0]
    239e:	2840      	cmp	r0, #64	; 0x40
    23a0:	d1df      	bne.n	2362 <UART_IRQHandler+0x2a>
    23a2:	2200      	movs	r2, #0
    23a4:	601a      	str	r2, [r3, #0]
    23a6:	e7dc      	b.n	2362 <UART_IRQHandler+0x2a>
    23a8:	4908      	ldr	r1, [pc, #32]	; (23cc <UART_IRQHandler+0x94>)
    23aa:	600b      	str	r3, [r1, #0]
    23ac:	6813      	ldr	r3, [r2, #0]
    23ae:	e7d8      	b.n	2362 <UART_IRQHandler+0x2a>
    23b0:	4b06      	ldr	r3, [pc, #24]	; (23cc <UART_IRQHandler+0x94>)
    23b2:	6819      	ldr	r1, [r3, #0]
    23b4:	f441 7080 	orr.w	r0, r1, #256	; 0x100
    23b8:	6018      	str	r0, [r3, #0]
    23ba:	e7d2      	b.n	2362 <UART_IRQHandler+0x2a>
    23bc:	40008000 	.word	0x40008000
    23c0:	100001f0 	.word	0x100001f0
    23c4:	10000930 	.word	0x10000930
    23c8:	100008ec 	.word	0x100008ec
    23cc:	1000092c 	.word	0x1000092c

000023d0 <UARTInit>:
    23d0:	4a28      	ldr	r2, [pc, #160]	; (2474 <UARTInit+0xa4>)
    23d2:	2301      	movs	r3, #1
    23d4:	b410      	push	{r4}
    23d6:	7013      	strb	r3, [r2, #0]
    23d8:	4a27      	ldr	r2, [pc, #156]	; (2478 <UARTInit+0xa8>)
    23da:	2400      	movs	r4, #0
    23dc:	6014      	str	r4, [r2, #0]
    23de:	4a27      	ldr	r2, [pc, #156]	; (247c <UARTInit+0xac>)
    23e0:	f44f 4480 	mov.w	r4, #16384	; 0x4000
    23e4:	f8c2 4084 	str.w	r4, [r2, #132]	; 0x84
    23e8:	b119      	cbz	r1, 23f2 <UARTInit+0x22>
    23ea:	4925      	ldr	r1, [pc, #148]	; (2480 <UARTInit+0xb0>)
    23ec:	650b      	str	r3, [r1, #80]	; 0x50
    23ee:	f8c1 30a0 	str.w	r3, [r1, #160]	; 0xa0
    23f2:	4923      	ldr	r1, [pc, #140]	; (2480 <UARTInit+0xb0>)
    23f4:	4b23      	ldr	r3, [pc, #140]	; (2484 <UARTInit+0xb4>)
    23f6:	2201      	movs	r2, #1
    23f8:	f8c1 20a4 	str.w	r2, [r1, #164]	; 0xa4
    23fc:	f8c1 20a8 	str.w	r2, [r1, #168]	; 0xa8
    2400:	f8d3 4080 	ldr.w	r4, [r3, #128]	; 0x80
    2404:	4920      	ldr	r1, [pc, #128]	; (2488 <UARTInit+0xb8>)
    2406:	f444 5480 	orr.w	r4, r4, #4096	; 0x1000
    240a:	f8c3 4080 	str.w	r4, [r3, #128]	; 0x80
    240e:	f8c3 2098 	str.w	r2, [r3, #152]	; 0x98
    2412:	4c1e      	ldr	r4, [pc, #120]	; (248c <UARTInit+0xbc>)
    2414:	2283      	movs	r2, #131	; 0x83
    2416:	60ca      	str	r2, [r1, #12]
    2418:	f8d3 2098 	ldr.w	r2, [r3, #152]	; 0x98
    241c:	6824      	ldr	r4, [r4, #0]
    241e:	6f9b      	ldr	r3, [r3, #120]	; 0x78
    2420:	fbb4 fcf3 	udiv	ip, r4, r3
    2424:	fbbc f3f2 	udiv	r3, ip, r2
    2428:	091a      	lsrs	r2, r3, #4
    242a:	fbb2 f0f0 	udiv	r0, r2, r0
    242e:	0a03      	lsrs	r3, r0, #8
    2430:	604b      	str	r3, [r1, #4]
    2432:	f000 02ff 	and.w	r2, r0, #255	; 0xff
    2436:	2307      	movs	r3, #7
    2438:	2003      	movs	r0, #3
    243a:	600a      	str	r2, [r1, #0]
    243c:	60c8      	str	r0, [r1, #12]
    243e:	608b      	str	r3, [r1, #8]
    2440:	694b      	ldr	r3, [r1, #20]
    2442:	694b      	ldr	r3, [r1, #20]
    2444:	4a10      	ldr	r2, [pc, #64]	; (2488 <UARTInit+0xb8>)
    2446:	f003 0060 	and.w	r0, r3, #96	; 0x60
    244a:	2860      	cmp	r0, #96	; 0x60
    244c:	d1f9      	bne.n	2442 <UARTInit+0x72>
    244e:	6951      	ldr	r1, [r2, #20]
    2450:	f011 0f01 	tst.w	r1, #1
    2454:	d005      	beq.n	2462 <UARTInit+0x92>
    2456:	4613      	mov	r3, r2
    2458:	681a      	ldr	r2, [r3, #0]
    245a:	695a      	ldr	r2, [r3, #20]
    245c:	f012 0f01 	tst.w	r2, #1
    2460:	d1fa      	bne.n	2458 <UARTInit+0x88>
    2462:	4a06      	ldr	r2, [pc, #24]	; (247c <UARTInit+0xac>)
    2464:	4b08      	ldr	r3, [pc, #32]	; (2488 <UARTInit+0xb8>)
    2466:	f44f 4180 	mov.w	r1, #16384	; 0x4000
    246a:	2005      	movs	r0, #5
    246c:	6051      	str	r1, [r2, #4]
    246e:	6058      	str	r0, [r3, #4]
    2470:	bc10      	pop	{r4}
    2472:	4770      	bx	lr
    2474:	100001f0 	.word	0x100001f0
    2478:	10000930 	.word	0x10000930
    247c:	e000e100 	.word	0xe000e100
    2480:	40044000 	.word	0x40044000
    2484:	40048000 	.word	0x40048000
    2488:	40008000 	.word	0x40008000
    248c:	100001ec 	.word	0x100001ec

00002490 <UARTSendChar>:
    2490:	4b04      	ldr	r3, [pc, #16]	; (24a4 <UARTSendChar+0x14>)
    2492:	695a      	ldr	r2, [r3, #20]
    2494:	f012 0f20 	tst.w	r2, #32
    2498:	d0fb      	beq.n	2492 <UARTSendChar+0x2>
    249a:	4b02      	ldr	r3, [pc, #8]	; (24a4 <UARTSendChar+0x14>)
    249c:	6018      	str	r0, [r3, #0]
    249e:	2001      	movs	r0, #1
    24a0:	4770      	bx	lr
    24a2:	bf00      	nop
    24a4:	40008000 	.word	0x40008000

000024a8 <GPIOInit>:
    24a8:	4b03      	ldr	r3, [pc, #12]	; (24b8 <GPIOInit+0x10>)
    24aa:	f8d3 0080 	ldr.w	r0, [r3, #128]	; 0x80
    24ae:	f040 0240 	orr.w	r2, r0, #64	; 0x40
    24b2:	f8c3 2080 	str.w	r2, [r3, #128]	; 0x80
    24b6:	4770      	bx	lr
    24b8:	40048000 	.word	0x40048000

000024bc <USB_IRQHandler>:
    24bc:	4a03      	ldr	r2, [pc, #12]	; (24cc <USB_IRQHandler+0x10>)
    24be:	b508      	push	{r3, lr}
    24c0:	6811      	ldr	r1, [r2, #0]
    24c2:	6808      	ldr	r0, [r1, #0]
    24c4:	6843      	ldr	r3, [r0, #4]
    24c6:	4798      	blx	r3
    24c8:	bd08      	pop	{r3, pc}
    24ca:	bf00      	nop
    24cc:	1fff1ff8 	.word	0x1fff1ff8

000024d0 <msd_init>:
    24d0:	4a15      	ldr	r2, [pc, #84]	; (2528 <msd_init+0x58>)
    24d2:	b510      	push	{r4, lr}
    24d4:	4b15      	ldr	r3, [pc, #84]	; (252c <msd_init+0x5c>)
    24d6:	6811      	ldr	r1, [r2, #0]
    24d8:	f8d3 0080 	ldr.w	r0, [r3, #128]	; 0x80
    24dc:	680a      	ldr	r2, [r1, #0]
    24de:	f440 34a2 	orr.w	r4, r0, #82944	; 0x14400
    24e2:	b082      	sub	sp, #8
    24e4:	f8c3 4080 	str.w	r4, [r3, #128]	; 0x80
    24e8:	6811      	ldr	r1, [r2, #0]
    24ea:	4788      	blx	r1
    24ec:	f7ff fe08 	bl	2100 <SystemCoreClockUpdate>
    24f0:	2000      	movs	r0, #0
    24f2:	9001      	str	r0, [sp, #4]
    24f4:	9b01      	ldr	r3, [sp, #4]
    24f6:	2b4a      	cmp	r3, #74	; 0x4a
    24f8:	dc05      	bgt.n	2506 <msd_init+0x36>
    24fa:	9801      	ldr	r0, [sp, #4]
    24fc:	1c43      	adds	r3, r0, #1
    24fe:	9301      	str	r3, [sp, #4]
    2500:	9c01      	ldr	r4, [sp, #4]
    2502:	2c4a      	cmp	r4, #74	; 0x4a
    2504:	ddf9      	ble.n	24fa <msd_init+0x2a>
    2506:	4c08      	ldr	r4, [pc, #32]	; (2528 <msd_init+0x58>)
    2508:	4809      	ldr	r0, [pc, #36]	; (2530 <msd_init+0x60>)
    250a:	6821      	ldr	r1, [r4, #0]
    250c:	680a      	ldr	r2, [r1, #0]
    250e:	6893      	ldr	r3, [r2, #8]
    2510:	4798      	blx	r3
    2512:	6821      	ldr	r1, [r4, #0]
    2514:	4a07      	ldr	r2, [pc, #28]	; (2534 <msd_init+0x64>)
    2516:	680b      	ldr	r3, [r1, #0]
    2518:	2000      	movs	r0, #0
    251a:	6010      	str	r0, [r2, #0]
    251c:	68d9      	ldr	r1, [r3, #12]
    251e:	2001      	movs	r0, #1
    2520:	4788      	blx	r1
    2522:	b002      	add	sp, #8
    2524:	bd10      	pop	{r4, pc}
    2526:	bf00      	nop
    2528:	1fff1ff8 	.word	0x1fff1ff8
    252c:	40048000 	.word	0x40048000
    2530:	00004ea0 	.word	0x00004ea0
    2534:	10000054 	.word	0x10000054

00002538 <msd_read_fat_area>:
    2538:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
    253c:	2901      	cmp	r1, #1
    253e:	b086      	sub	sp, #24
    2540:	f240 8142 	bls.w	27c8 <msd_read_fat_area+0x290>
    2544:	0847      	lsrs	r7, r0, #1
    2546:	0849      	lsrs	r1, r1, #1
    2548:	f107 3cff 	add.w	ip, r7, #4294967295
    254c:	9101      	str	r1, [sp, #4]
    254e:	448c      	add	ip, r1
    2550:	2800      	cmp	r0, #0
    2552:	f000 813d 	beq.w	27d0 <msd_read_fat_area+0x298>
    2556:	4689      	mov	r9, r1
    2558:	461e      	mov	r6, r3
    255a:	f3c6 0140 	ubfx	r1, r6, #1, #1
    255e:	4549      	cmp	r1, r9
    2560:	bf28      	it	cs
    2562:	4649      	movcs	r1, r9
    2564:	f109 30ff 	add.w	r0, r9, #4294967295
    2568:	2900      	cmp	r1, #0
    256a:	f000 814f 	beq.w	280c <msd_read_fat_area+0x2d4>
    256e:	4632      	mov	r2, r6
    2570:	f64f 75f7 	movw	r5, #65527	; 0xfff7
    2574:	2401      	movs	r4, #1
    2576:	f822 5b02 	strh.w	r5, [r2], #2
    257a:	f1a9 0802 	sub.w	r8, r9, #2
    257e:	f101 3aff 	add.w	sl, r1, #4294967295
    2582:	42a1      	cmp	r1, r4
    2584:	f00a 0a03 	and.w	sl, sl, #3
    2588:	4615      	mov	r5, r2
    258a:	4640      	mov	r0, r8
    258c:	d92f      	bls.n	25ee <msd_read_fat_area+0xb6>
    258e:	f1ba 0f00 	cmp.w	sl, #0
    2592:	d019      	beq.n	25c8 <msd_read_fat_area+0x90>
    2594:	f1ba 0f01 	cmp.w	sl, #1
    2598:	d00c      	beq.n	25b4 <msd_read_fat_area+0x7c>
    259a:	f1ba 0f02 	cmp.w	sl, #2
    259e:	d004      	beq.n	25aa <msd_read_fat_area+0x72>
    25a0:	f64f 74f7 	movw	r4, #65527	; 0xfff7
    25a4:	f822 4b02 	strh.w	r4, [r2], #2
    25a8:	2402      	movs	r4, #2
    25aa:	f64f 70f7 	movw	r0, #65527	; 0xfff7
    25ae:	f822 0b02 	strh.w	r0, [r2], #2
    25b2:	3401      	adds	r4, #1
    25b4:	f64f 7af7 	movw	sl, #65527	; 0xfff7
    25b8:	ebc4 0008 	rsb	r0, r4, r8
    25bc:	3401      	adds	r4, #1
    25be:	f822 ab02 	strh.w	sl, [r2], #2
    25c2:	42a1      	cmp	r1, r4
    25c4:	4615      	mov	r5, r2
    25c6:	d912      	bls.n	25ee <msd_read_fat_area+0xb6>
    25c8:	4615      	mov	r5, r2
    25ca:	f64f 7af7 	movw	sl, #65527	; 0xfff7
    25ce:	f825 ab02 	strh.w	sl, [r5], #2
    25d2:	1ce0      	adds	r0, r4, #3
    25d4:	3404      	adds	r4, #4
    25d6:	f8a2 a002 	strh.w	sl, [r2, #2]
    25da:	f8a5 a002 	strh.w	sl, [r5, #2]
    25de:	f8a2 a006 	strh.w	sl, [r2, #6]
    25e2:	3208      	adds	r2, #8
    25e4:	42a1      	cmp	r1, r4
    25e6:	4615      	mov	r5, r2
    25e8:	ebc0 0008 	rsb	r0, r0, r8
    25ec:	d8ec      	bhi.n	25c8 <msd_read_fat_area+0x90>
    25ee:	4549      	cmp	r1, r9
    25f0:	d067      	beq.n	26c2 <msd_read_fat_area+0x18a>
    25f2:	ebc1 0909 	rsb	r9, r1, r9
    25f6:	ea4f 0459 	mov.w	r4, r9, lsr #1
    25fa:	ea4f 0844 	mov.w	r8, r4, lsl #1
    25fe:	b38c      	cbz	r4, 2664 <msd_read_fat_area+0x12c>
    2600:	eb06 0141 	add.w	r1, r6, r1, lsl #1
    2604:	2601      	movs	r6, #1
    2606:	f06f 1208 	mvn.w	r2, #524296	; 0x80008
    260a:	f104 3aff 	add.w	sl, r4, #4294967295
    260e:	42b4      	cmp	r4, r6
    2610:	f841 2b04 	str.w	r2, [r1], #4
    2614:	f00a 0a03 	and.w	sl, sl, #3
    2618:	d91e      	bls.n	2658 <msd_read_fat_area+0x120>
    261a:	f1ba 0f00 	cmp.w	sl, #0
    261e:	d010      	beq.n	2642 <msd_read_fat_area+0x10a>
    2620:	f1ba 0f01 	cmp.w	sl, #1
    2624:	d008      	beq.n	2638 <msd_read_fat_area+0x100>
    2626:	f1ba 0f02 	cmp.w	sl, #2
    262a:	bf1c      	itt	ne
    262c:	f841 2b04 	strne.w	r2, [r1], #4
    2630:	2602      	movne	r6, #2
    2632:	f841 2b04 	str.w	r2, [r1], #4
    2636:	3601      	adds	r6, #1
    2638:	3601      	adds	r6, #1
    263a:	42b4      	cmp	r4, r6
    263c:	f841 2b04 	str.w	r2, [r1], #4
    2640:	d90a      	bls.n	2658 <msd_read_fat_area+0x120>
    2642:	468a      	mov	sl, r1
    2644:	f84a 2b04 	str.w	r2, [sl], #4
    2648:	3604      	adds	r6, #4
    264a:	604a      	str	r2, [r1, #4]
    264c:	f8ca 2004 	str.w	r2, [sl, #4]
    2650:	60ca      	str	r2, [r1, #12]
    2652:	3110      	adds	r1, #16
    2654:	42b4      	cmp	r4, r6
    2656:	d8f4      	bhi.n	2642 <msd_read_fat_area+0x10a>
    2658:	45c1      	cmp	r9, r8
    265a:	eb05 0548 	add.w	r5, r5, r8, lsl #1
    265e:	ebc8 0000 	rsb	r0, r8, r0
    2662:	d02e      	beq.n	26c2 <msd_read_fat_area+0x18a>
    2664:	f64f 72f7 	movw	r2, #65527	; 0xfff7
    2668:	f825 2b02 	strh.w	r2, [r5], #2
    266c:	f000 0103 	and.w	r1, r0, #3
    2670:	1e42      	subs	r2, r0, #1
    2672:	b330      	cbz	r0, 26c2 <msd_read_fat_area+0x18a>
    2674:	b1a9      	cbz	r1, 26a2 <msd_read_fat_area+0x16a>
    2676:	2901      	cmp	r1, #1
    2678:	d00b      	beq.n	2692 <msd_read_fat_area+0x15a>
    267a:	2902      	cmp	r1, #2
    267c:	d004      	beq.n	2688 <msd_read_fat_area+0x150>
    267e:	f64f 7af7 	movw	sl, #65527	; 0xfff7
    2682:	f825 ab02 	strh.w	sl, [r5], #2
    2686:	3a01      	subs	r2, #1
    2688:	f64f 71f7 	movw	r1, #65527	; 0xfff7
    268c:	f825 1b02 	strh.w	r1, [r5], #2
    2690:	3a01      	subs	r2, #1
    2692:	3a01      	subs	r2, #1
    2694:	f64f 7af7 	movw	sl, #65527	; 0xfff7
    2698:	f1b2 3fff 	cmp.w	r2, #4294967295
    269c:	f825 ab02 	strh.w	sl, [r5], #2
    26a0:	d00f      	beq.n	26c2 <msd_read_fat_area+0x18a>
    26a2:	f64f 7af7 	movw	sl, #65527	; 0xfff7
    26a6:	4629      	mov	r1, r5
    26a8:	f821 ab02 	strh.w	sl, [r1], #2
    26ac:	3a04      	subs	r2, #4
    26ae:	f8a5 a002 	strh.w	sl, [r5, #2]
    26b2:	f8a1 a002 	strh.w	sl, [r1, #2]
    26b6:	f8a5 a006 	strh.w	sl, [r5, #6]
    26ba:	3508      	adds	r5, #8
    26bc:	f1b2 3fff 	cmp.w	r2, #4294967295
    26c0:	d1ef      	bne.n	26a2 <msd_read_fat_area+0x16a>
    26c2:	4853      	ldr	r0, [pc, #332]	; (2810 <msd_read_fat_area+0x2d8>)
    26c4:	6802      	ldr	r2, [r0, #0]
    26c6:	2a00      	cmp	r2, #0
    26c8:	d07e      	beq.n	27c8 <msd_read_fat_area+0x290>
    26ca:	2602      	movs	r6, #2
    26cc:	9302      	str	r3, [sp, #8]
    26ce:	6814      	ldr	r4, [r2, #0]
    26d0:	2c00      	cmp	r4, #0
    26d2:	d076      	beq.n	27c2 <msd_read_fat_area+0x28a>
    26d4:	f504 647e 	add.w	r4, r4, #4064	; 0xfe0
    26d8:	341f      	adds	r4, #31
    26da:	0b24      	lsrs	r4, r4, #12
    26dc:	45b4      	cmp	ip, r6
    26de:	eb06 0104 	add.w	r1, r6, r4
    26e2:	d36d      	bcc.n	27c0 <msd_read_fat_area+0x288>
    26e4:	1e4b      	subs	r3, r1, #1
    26e6:	429f      	cmp	r7, r3
    26e8:	d26a      	bcs.n	27c0 <msd_read_fat_area+0x288>
    26ea:	42b7      	cmp	r7, r6
    26ec:	d97f      	bls.n	27ee <msd_read_fat_area+0x2b6>
    26ee:	ebc6 0907 	rsb	r9, r6, r7
    26f2:	ebc9 0404 	rsb	r4, r9, r4
    26f6:	444e      	add	r6, r9
    26f8:	f8dd 9004 	ldr.w	r9, [sp, #4]
    26fc:	9b02      	ldr	r3, [sp, #8]
    26fe:	454c      	cmp	r4, r9
    2700:	bf38      	it	cc
    2702:	46a1      	movcc	r9, r4
    2704:	2c00      	cmp	r4, #0
    2706:	d05b      	beq.n	27c0 <msd_read_fat_area+0x288>
    2708:	f1b9 0f00 	cmp.w	r9, #0
    270c:	d058      	beq.n	27c0 <msd_read_fat_area+0x288>
    270e:	2c01      	cmp	r4, #1
    2710:	d952      	bls.n	27b8 <msd_read_fat_area+0x280>
    2712:	1c70      	adds	r0, r6, #1
    2714:	f109 38ff 	add.w	r8, r9, #4294967295
    2718:	b285      	uxth	r5, r0
    271a:	2001      	movs	r0, #1
    271c:	f018 0803 	ands.w	r8, r8, #3
    2720:	d01b      	beq.n	275a <msd_read_fat_area+0x222>
    2722:	2002      	movs	r0, #2
    2724:	4581      	cmp	r9, r0
    2726:	801d      	strh	r5, [r3, #0]
    2728:	d34a      	bcc.n	27c0 <msd_read_fat_area+0x288>
    272a:	3501      	adds	r5, #1
    272c:	42a0      	cmp	r0, r4
    272e:	4403      	add	r3, r0
    2730:	b2ad      	uxth	r5, r5
    2732:	d041      	beq.n	27b8 <msd_read_fat_area+0x280>
    2734:	f1b8 0f01 	cmp.w	r8, #1
    2738:	d00f      	beq.n	275a <msd_read_fat_area+0x222>
    273a:	4580      	cmp	r8, r0
    273c:	d006      	beq.n	274c <msd_read_fat_area+0x214>
    273e:	2003      	movs	r0, #3
    2740:	1c6e      	adds	r6, r5, #1
    2742:	42a0      	cmp	r0, r4
    2744:	f823 5b02 	strh.w	r5, [r3], #2
    2748:	b2b5      	uxth	r5, r6
    274a:	d035      	beq.n	27b8 <msd_read_fat_area+0x280>
    274c:	3001      	adds	r0, #1
    274e:	1c6e      	adds	r6, r5, #1
    2750:	42a0      	cmp	r0, r4
    2752:	f823 5b02 	strh.w	r5, [r3], #2
    2756:	b2b5      	uxth	r5, r6
    2758:	d02e      	beq.n	27b8 <msd_read_fat_area+0x280>
    275a:	9703      	str	r7, [sp, #12]
    275c:	f8cd c010 	str.w	ip, [sp, #16]
    2760:	9105      	str	r1, [sp, #20]
    2762:	4693      	mov	fp, r2
    2764:	1c6e      	adds	r6, r5, #1
    2766:	b2b6      	uxth	r6, r6
    2768:	1c77      	adds	r7, r6, #1
    276a:	b2bf      	uxth	r7, r7
    276c:	f107 0c01 	add.w	ip, r7, #1
    2770:	1c42      	adds	r2, r0, #1
    2772:	fa1f fc8c 	uxth.w	ip, ip
    2776:	801d      	strh	r5, [r3, #0]
    2778:	f100 0a03 	add.w	sl, r0, #3
    277c:	3302      	adds	r3, #2
    277e:	3004      	adds	r0, #4
    2780:	f10c 0501 	add.w	r5, ip, #1
    2784:	4591      	cmp	r9, r2
    2786:	f102 0801 	add.w	r8, r2, #1
    278a:	4619      	mov	r1, r3
    278c:	b2ad      	uxth	r5, r5
    278e:	d336      	bcc.n	27fe <msd_read_fat_area+0x2c6>
    2790:	42a2      	cmp	r2, r4
    2792:	d00c      	beq.n	27ae <msd_read_fat_area+0x276>
    2794:	45a0      	cmp	r8, r4
    2796:	f823 6b02 	strh.w	r6, [r3], #2
    279a:	d008      	beq.n	27ae <msd_read_fat_area+0x276>
    279c:	801f      	strh	r7, [r3, #0]
    279e:	1d0b      	adds	r3, r1, #4
    27a0:	45a2      	cmp	sl, r4
    27a2:	d004      	beq.n	27ae <msd_read_fat_area+0x276>
    27a4:	1d8b      	adds	r3, r1, #6
    27a6:	42a0      	cmp	r0, r4
    27a8:	f8a1 c004 	strh.w	ip, [r1, #4]
    27ac:	d1da      	bne.n	2764 <msd_read_fat_area+0x22c>
    27ae:	9f03      	ldr	r7, [sp, #12]
    27b0:	f8dd c010 	ldr.w	ip, [sp, #16]
    27b4:	9905      	ldr	r1, [sp, #20]
    27b6:	465a      	mov	r2, fp
    27b8:	f64f 7af8 	movw	sl, #65528	; 0xfff8
    27bc:	f8a3 a000 	strh.w	sl, [r3]
    27c0:	460e      	mov	r6, r1
    27c2:	6912      	ldr	r2, [r2, #16]
    27c4:	2a00      	cmp	r2, #0
    27c6:	d182      	bne.n	26ce <msd_read_fat_area+0x196>
    27c8:	b006      	add	sp, #24
    27ca:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
    27ce:	4770      	bx	lr
    27d0:	461e      	mov	r6, r3
    27d2:	f64f 70f8 	movw	r0, #65528	; 0xfff8
    27d6:	460a      	mov	r2, r1
    27d8:	f826 0b02 	strh.w	r0, [r6], #2
    27dc:	3602      	adds	r6, #2
    27de:	f24c 0100 	movw	r1, #49152	; 0xc000
    27e2:	f1b2 0902 	subs.w	r9, r2, #2
    27e6:	8059      	strh	r1, [r3, #2]
    27e8:	f47f aeb7 	bne.w	255a <msd_read_fat_area+0x22>
    27ec:	e769      	b.n	26c2 <msd_read_fat_area+0x18a>
    27ee:	9d01      	ldr	r5, [sp, #4]
    27f0:	1bf3      	subs	r3, r6, r7
    27f2:	ebc3 0905 	rsb	r9, r3, r5
    27f6:	9d02      	ldr	r5, [sp, #8]
    27f8:	eb05 0343 	add.w	r3, r5, r3, lsl #1
    27fc:	e782      	b.n	2704 <msd_read_fat_area+0x1cc>
    27fe:	9905      	ldr	r1, [sp, #20]
    2800:	9f03      	ldr	r7, [sp, #12]
    2802:	f8dd c010 	ldr.w	ip, [sp, #16]
    2806:	465a      	mov	r2, fp
    2808:	460e      	mov	r6, r1
    280a:	e7da      	b.n	27c2 <msd_read_fat_area+0x28a>
    280c:	4635      	mov	r5, r6
    280e:	e6f0      	b.n	25f2 <msd_read_fat_area+0xba>
    2810:	10000940 	.word	0x10000940

00002814 <msd_read_memory>:
    2814:	b410      	push	{r4}
    2816:	1814      	adds	r4, r2, r0
    2818:	460a      	mov	r2, r1
    281a:	4618      	mov	r0, r3
    281c:	4621      	mov	r1, r4
    281e:	bc10      	pop	{r4}
    2820:	f7fd bc80 	b.w	124 <memcpy>

00002824 <msd_read_data_area>:
    2824:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2828:	b083      	sub	sp, #12
    282a:	4607      	mov	r7, r0
    282c:	9301      	str	r3, [sp, #4]
    282e:	468b      	mov	fp, r1
    2830:	2900      	cmp	r1, #0
    2832:	d032      	beq.n	289a <msd_read_data_area+0x76>
    2834:	4e41      	ldr	r6, [pc, #260]	; (293c <msd_read_data_area+0x118>)
    2836:	0b05      	lsrs	r5, r0, #12
    2838:	6832      	ldr	r2, [r6, #0]
    283a:	f501 607e 	add.w	r0, r1, #4064	; 0xfe0
    283e:	1e6c      	subs	r4, r5, #1
    2840:	301f      	adds	r0, #31
    2842:	eb04 3410 	add.w	r4, r4, r0, lsr #12
    2846:	b11a      	cbz	r2, 2850 <msd_read_data_area+0x2c>
    2848:	483d      	ldr	r0, [pc, #244]	; (2940 <msd_read_data_area+0x11c>)
    284a:	6800      	ldr	r0, [r0, #0]
    284c:	4284      	cmp	r4, r0
    284e:	d227      	bcs.n	28a0 <msd_read_data_area+0x7c>
    2850:	4b3c      	ldr	r3, [pc, #240]	; (2944 <msd_read_data_area+0x120>)
    2852:	681b      	ldr	r3, [r3, #0]
    2854:	6033      	str	r3, [r6, #0]
    2856:	b1f3      	cbz	r3, 2896 <msd_read_data_area+0x72>
    2858:	f8df a0e4 	ldr.w	sl, [pc, #228]	; 2940 <msd_read_data_area+0x11c>
    285c:	f8df 90e8 	ldr.w	r9, [pc, #232]	; 2948 <msd_read_data_area+0x124>
    2860:	f8da 8000 	ldr.w	r8, [sl]
    2864:	f8d9 c000 	ldr.w	ip, [r9]
    2868:	2000      	movs	r0, #0
    286a:	6819      	ldr	r1, [r3, #0]
    286c:	f501 627e 	add.w	r2, r1, #4064	; 0xfe0
    2870:	321f      	adds	r2, #31
    2872:	eb00 3212 	add.w	r2, r0, r2, lsr #12
    2876:	b139      	cbz	r1, 2888 <msd_read_data_area+0x64>
    2878:	4284      	cmp	r4, r0
    287a:	f102 3cff 	add.w	ip, r2, #4294967295
    287e:	d301      	bcc.n	2884 <msd_read_data_area+0x60>
    2880:	4565      	cmp	r5, ip
    2882:	d91d      	bls.n	28c0 <msd_read_data_area+0x9c>
    2884:	4680      	mov	r8, r0
    2886:	4610      	mov	r0, r2
    2888:	691b      	ldr	r3, [r3, #16]
    288a:	2b00      	cmp	r3, #0
    288c:	d1ed      	bne.n	286a <msd_read_data_area+0x46>
    288e:	f8ca 8000 	str.w	r8, [sl]
    2892:	f8c9 c000 	str.w	ip, [r9]
    2896:	2000      	movs	r0, #0
    2898:	6030      	str	r0, [r6, #0]
    289a:	b003      	add	sp, #12
    289c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    28a0:	f8df c0a4 	ldr.w	ip, [pc, #164]	; 2948 <msd_read_data_area+0x124>
    28a4:	f8dc c000 	ldr.w	ip, [ip]
    28a8:	4565      	cmp	r5, ip
    28aa:	d8d1      	bhi.n	2850 <msd_read_data_area+0x2c>
    28ac:	f8d2 c004 	ldr.w	ip, [r2, #4]
    28b0:	f1bc 0f00 	cmp.w	ip, #0
    28b4:	d02b      	beq.n	290e <msd_read_data_area+0xea>
    28b6:	0300      	lsls	r0, r0, #12
    28b8:	1a38      	subs	r0, r7, r0
    28ba:	6892      	ldr	r2, [r2, #8]
    28bc:	47e0      	blx	ip
    28be:	e7c7      	b.n	2850 <msd_read_data_area+0x2c>
    28c0:	685c      	ldr	r4, [r3, #4]
    28c2:	0302      	lsls	r2, r0, #12
    28c4:	f8ca 0000 	str.w	r0, [sl]
    28c8:	f8c9 c000 	str.w	ip, [r9]
    28cc:	6033      	str	r3, [r6, #0]
    28ce:	1abf      	subs	r7, r7, r2
    28d0:	b12c      	cbz	r4, 28de <msd_read_data_area+0xba>
    28d2:	689a      	ldr	r2, [r3, #8]
    28d4:	4638      	mov	r0, r7
    28d6:	4659      	mov	r1, fp
    28d8:	9b01      	ldr	r3, [sp, #4]
    28da:	47a0      	blx	r4
    28dc:	e7dd      	b.n	289a <msd_read_data_area+0x76>
    28de:	689b      	ldr	r3, [r3, #8]
    28e0:	b1db      	cbz	r3, 291a <msd_read_data_area+0xf6>
    28e2:	428f      	cmp	r7, r1
    28e4:	d219      	bcs.n	291a <msd_read_data_area+0xf6>
    28e6:	1bcd      	subs	r5, r1, r7
    28e8:	45ab      	cmp	fp, r5
    28ea:	d31e      	bcc.n	292a <msd_read_data_area+0x106>
    28ec:	9801      	ldr	r0, [sp, #4]
    28ee:	19d9      	adds	r1, r3, r7
    28f0:	462a      	mov	r2, r5
    28f2:	f7fd fc17 	bl	124 <memcpy>
    28f6:	45ab      	cmp	fp, r5
    28f8:	d9cf      	bls.n	289a <msd_read_data_area+0x76>
    28fa:	9901      	ldr	r1, [sp, #4]
    28fc:	ebc5 020b 	rsb	r2, r5, fp
    2900:	1948      	adds	r0, r1, r5
    2902:	4621      	mov	r1, r4
    2904:	b003      	add	sp, #12
    2906:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    290a:	f7fd bcb3 	b.w	274 <memset>
    290e:	9801      	ldr	r0, [sp, #4]
    2910:	2120      	movs	r1, #32
    2912:	465a      	mov	r2, fp
    2914:	f7fd fcae 	bl	274 <memset>
    2918:	e79a      	b.n	2850 <msd_read_data_area+0x2c>
    291a:	9801      	ldr	r0, [sp, #4]
    291c:	2100      	movs	r1, #0
    291e:	465a      	mov	r2, fp
    2920:	b003      	add	sp, #12
    2922:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2926:	f7fd bca5 	b.w	274 <memset>
    292a:	9801      	ldr	r0, [sp, #4]
    292c:	19d9      	adds	r1, r3, r7
    292e:	465a      	mov	r2, fp
    2930:	b003      	add	sp, #12
    2932:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2936:	f7fd bbf5 	b.w	124 <memcpy>
    293a:	bf00      	nop
    293c:	10000934 	.word	0x10000934
    2940:	1000093c 	.word	0x1000093c
    2944:	10000940 	.word	0x10000940
    2948:	10000938 	.word	0x10000938

0000294c <msd_read_root_dir>:
    294c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    2950:	4689      	mov	r9, r1
    2952:	4606      	mov	r6, r0
    2954:	2100      	movs	r1, #0
    2956:	4618      	mov	r0, r3
    2958:	464a      	mov	r2, r9
    295a:	461d      	mov	r5, r3
    295c:	f7fd fc8a 	bl	274 <memset>
    2960:	4b6e      	ldr	r3, [pc, #440]	; (2b1c <msd_read_root_dir+0x1d0>)
    2962:	0976      	lsrs	r6, r6, #5
    2964:	681c      	ldr	r4, [r3, #0]
    2966:	d05b      	beq.n	2a20 <msd_read_root_dir+0xd4>
    2968:	2c00      	cmp	r4, #0
    296a:	f000 80cf 	beq.w	2b0c <msd_read_root_dir+0x1c0>
    296e:	3e01      	subs	r6, #1
    2970:	f016 0303 	ands.w	r3, r6, #3
    2974:	f04f 0802 	mov.w	r8, #2
    2978:	d027      	beq.n	29ca <msd_read_root_dir+0x7e>
    297a:	6821      	ldr	r1, [r4, #0]
    297c:	6924      	ldr	r4, [r4, #16]
    297e:	f501 607e 	add.w	r0, r1, #4064	; 0xfe0
    2982:	f100 0e1f 	add.w	lr, r0, #31
    2986:	ea4f 381e 	mov.w	r8, lr, lsr #12
    298a:	f108 0802 	add.w	r8, r8, #2
    298e:	3e01      	subs	r6, #1
    2990:	2c00      	cmp	r4, #0
    2992:	f000 80bb 	beq.w	2b0c <msd_read_root_dir+0x1c0>
    2996:	2b01      	cmp	r3, #1
    2998:	d017      	beq.n	29ca <msd_read_root_dir+0x7e>
    299a:	2b02      	cmp	r3, #2
    299c:	d00a      	beq.n	29b4 <msd_read_root_dir+0x68>
    299e:	6822      	ldr	r2, [r4, #0]
    29a0:	6924      	ldr	r4, [r4, #16]
    29a2:	f502 637e 	add.w	r3, r2, #4064	; 0xfe0
    29a6:	331f      	adds	r3, #31
    29a8:	eb08 3813 	add.w	r8, r8, r3, lsr #12
    29ac:	3e01      	subs	r6, #1
    29ae:	2c00      	cmp	r4, #0
    29b0:	f000 80ac 	beq.w	2b0c <msd_read_root_dir+0x1c0>
    29b4:	6821      	ldr	r1, [r4, #0]
    29b6:	6924      	ldr	r4, [r4, #16]
    29b8:	f501 607e 	add.w	r0, r1, #4064	; 0xfe0
    29bc:	301f      	adds	r0, #31
    29be:	eb08 3810 	add.w	r8, r8, r0, lsr #12
    29c2:	3e01      	subs	r6, #1
    29c4:	2c00      	cmp	r4, #0
    29c6:	f000 80a7 	beq.w	2b18 <msd_read_root_dir+0x1cc>
    29ca:	6821      	ldr	r1, [r4, #0]
    29cc:	6924      	ldr	r4, [r4, #16]
    29ce:	f501 607e 	add.w	r0, r1, #4064	; 0xfe0
    29d2:	301f      	adds	r0, #31
    29d4:	eb08 3810 	add.w	r8, r8, r0, lsr #12
    29d8:	b326      	cbz	r6, 2a24 <msd_read_root_dir+0xd8>
    29da:	2c00      	cmp	r4, #0
    29dc:	f000 809a 	beq.w	2b14 <msd_read_root_dir+0x1c8>
    29e0:	6820      	ldr	r0, [r4, #0]
    29e2:	6922      	ldr	r2, [r4, #16]
    29e4:	f500 637e 	add.w	r3, r0, #4064	; 0xfe0
    29e8:	331f      	adds	r3, #31
    29ea:	eb08 3813 	add.w	r8, r8, r3, lsr #12
    29ee:	2a00      	cmp	r2, #0
    29f0:	f000 808c 	beq.w	2b0c <msd_read_root_dir+0x1c0>
    29f4:	6813      	ldr	r3, [r2, #0]
    29f6:	6911      	ldr	r1, [r2, #16]
    29f8:	f503 627e 	add.w	r2, r3, #4064	; 0xfe0
    29fc:	321f      	adds	r2, #31
    29fe:	eb08 3812 	add.w	r8, r8, r2, lsr #12
    2a02:	2900      	cmp	r1, #0
    2a04:	f000 8082 	beq.w	2b0c <msd_read_root_dir+0x1c0>
    2a08:	6808      	ldr	r0, [r1, #0]
    2a0a:	690c      	ldr	r4, [r1, #16]
    2a0c:	f500 617e 	add.w	r1, r0, #4064	; 0xfe0
    2a10:	311f      	adds	r1, #31
    2a12:	eb08 3811 	add.w	r8, r8, r1, lsr #12
    2a16:	3e04      	subs	r6, #4
    2a18:	2c00      	cmp	r4, #0
    2a1a:	d1d6      	bne.n	29ca <msd_read_root_dir+0x7e>
    2a1c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    2a20:	f04f 0802 	mov.w	r8, #2
    2a24:	ea5f 1959 	movs.w	r9, r9, lsr #5
    2a28:	d070      	beq.n	2b0c <msd_read_root_dir+0x1c0>
    2a2a:	2c00      	cmp	r4, #0
    2a2c:	d06e      	beq.n	2b0c <msd_read_root_dir+0x1c0>
    2a2e:	f109 39ff 	add.w	r9, r9, #4294967295
    2a32:	f019 0f01 	tst.w	r9, #1
    2a36:	462e      	mov	r6, r5
    2a38:	d04a      	beq.n	2ad0 <msd_read_root_dir+0x184>
    2a3a:	6922      	ldr	r2, [r4, #16]
    2a3c:	4628      	mov	r0, r5
    2a3e:	2a00      	cmp	r2, #0
    2a40:	bf0c      	ite	eq
    2a42:	f04f 0c08 	moveq.w	ip, #8
    2a46:	f04f 0c01 	movne.w	ip, #1
    2a4a:	f885 c00b 	strb.w	ip, [r5, #11]
    2a4e:	6823      	ldr	r3, [r4, #0]
    2a50:	220b      	movs	r2, #11
    2a52:	2b00      	cmp	r3, #0
    2a54:	bf0c      	ite	eq
    2a56:	4619      	moveq	r1, r3
    2a58:	4641      	movne	r1, r8
    2a5a:	61eb      	str	r3, [r5, #28]
    2a5c:	8369      	strh	r1, [r5, #26]
    2a5e:	68e1      	ldr	r1, [r4, #12]
    2a60:	f7fd fc62 	bl	328 <strncpy>
    2a64:	6823      	ldr	r3, [r4, #0]
    2a66:	6924      	ldr	r4, [r4, #16]
    2a68:	2c00      	cmp	r4, #0
    2a6a:	d04f      	beq.n	2b0c <msd_read_root_dir+0x1c0>
    2a6c:	f503 677e 	add.w	r7, r3, #4064	; 0xfe0
    2a70:	371f      	adds	r7, #31
    2a72:	eb08 3817 	add.w	r8, r8, r7, lsr #12
    2a76:	f105 0620 	add.w	r6, r5, #32
    2a7a:	f109 39ff 	add.w	r9, r9, #4294967295
    2a7e:	e027      	b.n	2ad0 <msd_read_root_dir+0x184>
    2a80:	f503 637e 	add.w	r3, r3, #4064	; 0xfe0
    2a84:	331f      	adds	r3, #31
    2a86:	eb08 3813 	add.w	r8, r8, r3, lsr #12
    2a8a:	2d00      	cmp	r5, #0
    2a8c:	d03e      	beq.n	2b0c <msd_read_root_dir+0x1c0>
    2a8e:	692e      	ldr	r6, [r5, #16]
    2a90:	f109 39ff 	add.w	r9, r9, #4294967295
    2a94:	2e00      	cmp	r6, #0
    2a96:	bf0c      	ite	eq
    2a98:	f04f 0c08 	moveq.w	ip, #8
    2a9c:	f04f 0c01 	movne.w	ip, #1
    2aa0:	f887 c00b 	strb.w	ip, [r7, #11]
    2aa4:	6829      	ldr	r1, [r5, #0]
    2aa6:	f107 0620 	add.w	r6, r7, #32
    2aaa:	2900      	cmp	r1, #0
    2aac:	bf0c      	ite	eq
    2aae:	460c      	moveq	r4, r1
    2ab0:	4644      	movne	r4, r8
    2ab2:	837c      	strh	r4, [r7, #26]
    2ab4:	61f9      	str	r1, [r7, #28]
    2ab6:	68e9      	ldr	r1, [r5, #12]
    2ab8:	f7fd fc36 	bl	328 <strncpy>
    2abc:	692c      	ldr	r4, [r5, #16]
    2abe:	682b      	ldr	r3, [r5, #0]
    2ac0:	b334      	cbz	r4, 2b10 <msd_read_root_dir+0x1c4>
    2ac2:	f503 657e 	add.w	r5, r3, #4064	; 0xfe0
    2ac6:	351f      	adds	r5, #31
    2ac8:	eb08 3815 	add.w	r8, r8, r5, lsr #12
    2acc:	f109 39ff 	add.w	r9, r9, #4294967295
    2ad0:	6920      	ldr	r0, [r4, #16]
    2ad2:	f106 0720 	add.w	r7, r6, #32
    2ad6:	2800      	cmp	r0, #0
    2ad8:	bf0c      	ite	eq
    2ada:	f04f 0e08 	moveq.w	lr, #8
    2ade:	f04f 0e01 	movne.w	lr, #1
    2ae2:	f886 e00b 	strb.w	lr, [r6, #11]
    2ae6:	6825      	ldr	r5, [r4, #0]
    2ae8:	4630      	mov	r0, r6
    2aea:	2d00      	cmp	r5, #0
    2aec:	bf0c      	ite	eq
    2aee:	462a      	moveq	r2, r5
    2af0:	4642      	movne	r2, r8
    2af2:	61f5      	str	r5, [r6, #28]
    2af4:	8372      	strh	r2, [r6, #26]
    2af6:	68e1      	ldr	r1, [r4, #12]
    2af8:	220b      	movs	r2, #11
    2afa:	f7fd fc15 	bl	328 <strncpy>
    2afe:	4638      	mov	r0, r7
    2b00:	220b      	movs	r2, #11
    2b02:	6925      	ldr	r5, [r4, #16]
    2b04:	6823      	ldr	r3, [r4, #0]
    2b06:	f1b9 0f00 	cmp.w	r9, #0
    2b0a:	d1b9      	bne.n	2a80 <msd_read_root_dir+0x134>
    2b0c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    2b10:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    2b14:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    2b18:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    2b1c:	10000940 	.word	0x10000940

00002b20 <msd_read>:
    2b20:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2b24:	4691      	mov	r9, r2
    2b26:	b083      	sub	sp, #12
    2b28:	4605      	mov	r5, r0
    2b2a:	468a      	mov	sl, r1
    2b2c:	2a00      	cmp	r2, #0
    2b2e:	d02e      	beq.n	2b8e <msd_read+0x6e>
    2b30:	4b18      	ldr	r3, [pc, #96]	; (2b94 <msd_read+0x74>)
    2b32:	4298      	cmp	r0, r3
    2b34:	d82b      	bhi.n	2b8e <msd_read+0x6e>
    2b36:	4c18      	ldr	r4, [pc, #96]	; (2b98 <msd_read+0x78>)
    2b38:	1816      	adds	r6, r2, r0
    2b3a:	6823      	ldr	r3, [r4, #0]
    2b3c:	f8d4 8004 	ldr.w	r8, [r4, #4]
    2b40:	429e      	cmp	r6, r3
    2b42:	d32b      	bcc.n	2b9c <msd_read+0x7c>
    2b44:	eb03 0208 	add.w	r2, r3, r8
    2b48:	4290      	cmp	r0, r2
    2b4a:	d227      	bcs.n	2b9c <msd_read+0x7c>
    2b4c:	4298      	cmp	r0, r3
    2b4e:	f240 81a0 	bls.w	2e92 <msd_read+0x372>
    2b52:	4296      	cmp	r6, r2
    2b54:	ebc3 0300 	rsb	r3, r3, r0
    2b58:	d911      	bls.n	2b7e <msd_read+0x5e>
    2b5a:	ebc0 0802 	rsb	r8, r0, r2
    2b5e:	468b      	mov	fp, r1
    2b60:	45c8      	cmp	r8, r9
    2b62:	d00e      	beq.n	2b82 <msd_read+0x62>
    2b64:	2100      	movs	r1, #0
    2b66:	464a      	mov	r2, r9
    2b68:	4650      	mov	r0, sl
    2b6a:	9300      	str	r3, [sp, #0]
    2b6c:	f7fd fb82 	bl	274 <memset>
    2b70:	68a7      	ldr	r7, [r4, #8]
    2b72:	9800      	ldr	r0, [sp, #0]
    2b74:	4641      	mov	r1, r8
    2b76:	68e2      	ldr	r2, [r4, #12]
    2b78:	465b      	mov	r3, fp
    2b7a:	47b8      	blx	r7
    2b7c:	e010      	b.n	2ba0 <msd_read+0x80>
    2b7e:	46d3      	mov	fp, sl
    2b80:	46c8      	mov	r8, r9
    2b82:	4618      	mov	r0, r3
    2b84:	68a5      	ldr	r5, [r4, #8]
    2b86:	4641      	mov	r1, r8
    2b88:	68e2      	ldr	r2, [r4, #12]
    2b8a:	465b      	mov	r3, fp
    2b8c:	47a8      	blx	r5
    2b8e:	b003      	add	sp, #12
    2b90:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2b94:	0f32bdff 	.word	0x0f32bdff
    2b98:	00004f70 	.word	0x00004f70
    2b9c:	f04f 0800 	mov.w	r8, #0
    2ba0:	6922      	ldr	r2, [r4, #16]
    2ba2:	f8d4 b014 	ldr.w	fp, [r4, #20]
    2ba6:	4296      	cmp	r6, r2
    2ba8:	d329      	bcc.n	2bfe <msd_read+0xde>
    2baa:	eb0b 0102 	add.w	r1, fp, r2
    2bae:	428d      	cmp	r5, r1
    2bb0:	d225      	bcs.n	2bfe <msd_read+0xde>
    2bb2:	4295      	cmp	r5, r2
    2bb4:	f200 8177 	bhi.w	2ea6 <msd_read+0x386>
    2bb8:	ebc5 0e02 	rsb	lr, r5, r2
    2bbc:	428e      	cmp	r6, r1
    2bbe:	eb0a 030e 	add.w	r3, sl, lr
    2bc2:	f080 8210 	bcs.w	2fe6 <msd_read+0x4c6>
    2bc6:	ebc2 0b06 	rsb	fp, r2, r6
    2bca:	f04f 0c00 	mov.w	ip, #0
    2bce:	f1b8 0f00 	cmp.w	r8, #0
    2bd2:	f040 81af 	bne.w	2f34 <msd_read+0x414>
    2bd6:	45cb      	cmp	fp, r9
    2bd8:	f000 81ac 	beq.w	2f34 <msd_read+0x414>
    2bdc:	4641      	mov	r1, r8
    2bde:	464a      	mov	r2, r9
    2be0:	4650      	mov	r0, sl
    2be2:	9300      	str	r3, [sp, #0]
    2be4:	f8cd c004 	str.w	ip, [sp, #4]
    2be8:	f7fd fb44 	bl	274 <memset>
    2bec:	f8dd c004 	ldr.w	ip, [sp, #4]
    2bf0:	69a7      	ldr	r7, [r4, #24]
    2bf2:	4660      	mov	r0, ip
    2bf4:	4659      	mov	r1, fp
    2bf6:	69e2      	ldr	r2, [r4, #28]
    2bf8:	9b00      	ldr	r3, [sp, #0]
    2bfa:	47b8      	blx	r7
    2bfc:	46d8      	mov	r8, fp
    2bfe:	6a22      	ldr	r2, [r4, #32]
    2c00:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
    2c04:	4296      	cmp	r6, r2
    2c06:	d327      	bcc.n	2c58 <msd_read+0x138>
    2c08:	eb0b 0102 	add.w	r1, fp, r2
    2c0c:	428d      	cmp	r5, r1
    2c0e:	d223      	bcs.n	2c58 <msd_read+0x138>
    2c10:	4295      	cmp	r5, r2
    2c12:	f200 8151 	bhi.w	2eb8 <msd_read+0x398>
    2c16:	1b53      	subs	r3, r2, r5
    2c18:	428e      	cmp	r6, r1
    2c1a:	4453      	add	r3, sl
    2c1c:	f080 81e6 	bcs.w	2fec <msd_read+0x4cc>
    2c20:	ebc2 0b06 	rsb	fp, r2, r6
    2c24:	f04f 0c00 	mov.w	ip, #0
    2c28:	f1b8 0f00 	cmp.w	r8, #0
    2c2c:	f040 818c 	bne.w	2f48 <msd_read+0x428>
    2c30:	45cb      	cmp	fp, r9
    2c32:	f000 8189 	beq.w	2f48 <msd_read+0x428>
    2c36:	4641      	mov	r1, r8
    2c38:	464a      	mov	r2, r9
    2c3a:	4650      	mov	r0, sl
    2c3c:	9300      	str	r3, [sp, #0]
    2c3e:	f8cd c004 	str.w	ip, [sp, #4]
    2c42:	f7fd fb17 	bl	274 <memset>
    2c46:	f8dd 8004 	ldr.w	r8, [sp, #4]
    2c4a:	6aa7      	ldr	r7, [r4, #40]	; 0x28
    2c4c:	4640      	mov	r0, r8
    2c4e:	4659      	mov	r1, fp
    2c50:	6ae2      	ldr	r2, [r4, #44]	; 0x2c
    2c52:	9b00      	ldr	r3, [sp, #0]
    2c54:	47b8      	blx	r7
    2c56:	46d8      	mov	r8, fp
    2c58:	6b22      	ldr	r2, [r4, #48]	; 0x30
    2c5a:	f8d4 b034 	ldr.w	fp, [r4, #52]	; 0x34
    2c5e:	4296      	cmp	r6, r2
    2c60:	d328      	bcc.n	2cb4 <msd_read+0x194>
    2c62:	eb0b 0102 	add.w	r1, fp, r2
    2c66:	428d      	cmp	r5, r1
    2c68:	d224      	bcs.n	2cb4 <msd_read+0x194>
    2c6a:	4295      	cmp	r5, r2
    2c6c:	f200 812d 	bhi.w	2eca <msd_read+0x3aa>
    2c70:	1b50      	subs	r0, r2, r5
    2c72:	428e      	cmp	r6, r1
    2c74:	eb0a 0300 	add.w	r3, sl, r0
    2c78:	f080 81c1 	bcs.w	2ffe <msd_read+0x4de>
    2c7c:	ebc2 0b06 	rsb	fp, r2, r6
    2c80:	f04f 0c00 	mov.w	ip, #0
    2c84:	f1b8 0f00 	cmp.w	r8, #0
    2c88:	f040 8168 	bne.w	2f5c <msd_read+0x43c>
    2c8c:	45cb      	cmp	fp, r9
    2c8e:	f000 8165 	beq.w	2f5c <msd_read+0x43c>
    2c92:	4641      	mov	r1, r8
    2c94:	464a      	mov	r2, r9
    2c96:	4650      	mov	r0, sl
    2c98:	9300      	str	r3, [sp, #0]
    2c9a:	f8cd c004 	str.w	ip, [sp, #4]
    2c9e:	f7fd fae9 	bl	274 <memset>
    2ca2:	f8dd c004 	ldr.w	ip, [sp, #4]
    2ca6:	6ba7      	ldr	r7, [r4, #56]	; 0x38
    2ca8:	4660      	mov	r0, ip
    2caa:	4659      	mov	r1, fp
    2cac:	6be2      	ldr	r2, [r4, #60]	; 0x3c
    2cae:	9b00      	ldr	r3, [sp, #0]
    2cb0:	47b8      	blx	r7
    2cb2:	46d8      	mov	r8, fp
    2cb4:	6c22      	ldr	r2, [r4, #64]	; 0x40
    2cb6:	f8d4 b044 	ldr.w	fp, [r4, #68]	; 0x44
    2cba:	4296      	cmp	r6, r2
    2cbc:	d329      	bcc.n	2d12 <msd_read+0x1f2>
    2cbe:	eb0b 0102 	add.w	r1, fp, r2
    2cc2:	428d      	cmp	r5, r1
    2cc4:	d225      	bcs.n	2d12 <msd_read+0x1f2>
    2cc6:	4295      	cmp	r5, r2
    2cc8:	f200 8108 	bhi.w	2edc <msd_read+0x3bc>
    2ccc:	ebc5 0e02 	rsb	lr, r5, r2
    2cd0:	428e      	cmp	r6, r1
    2cd2:	eb0a 030e 	add.w	r3, sl, lr
    2cd6:	f080 8198 	bcs.w	300a <msd_read+0x4ea>
    2cda:	ebc2 0b06 	rsb	fp, r2, r6
    2cde:	f04f 0c00 	mov.w	ip, #0
    2ce2:	f1b8 0f00 	cmp.w	r8, #0
    2ce6:	f040 8143 	bne.w	2f70 <msd_read+0x450>
    2cea:	45cb      	cmp	fp, r9
    2cec:	f000 8140 	beq.w	2f70 <msd_read+0x450>
    2cf0:	4641      	mov	r1, r8
    2cf2:	464a      	mov	r2, r9
    2cf4:	4650      	mov	r0, sl
    2cf6:	9300      	str	r3, [sp, #0]
    2cf8:	f8cd c004 	str.w	ip, [sp, #4]
    2cfc:	f7fd faba 	bl	274 <memset>
    2d00:	f8dd 8004 	ldr.w	r8, [sp, #4]
    2d04:	6ca7      	ldr	r7, [r4, #72]	; 0x48
    2d06:	4640      	mov	r0, r8
    2d08:	4659      	mov	r1, fp
    2d0a:	6ce2      	ldr	r2, [r4, #76]	; 0x4c
    2d0c:	9b00      	ldr	r3, [sp, #0]
    2d0e:	47b8      	blx	r7
    2d10:	46d8      	mov	r8, fp
    2d12:	6d22      	ldr	r2, [r4, #80]	; 0x50
    2d14:	f8d4 b054 	ldr.w	fp, [r4, #84]	; 0x54
    2d18:	4296      	cmp	r6, r2
    2d1a:	d327      	bcc.n	2d6c <msd_read+0x24c>
    2d1c:	eb0b 0102 	add.w	r1, fp, r2
    2d20:	428d      	cmp	r5, r1
    2d22:	d223      	bcs.n	2d6c <msd_read+0x24c>
    2d24:	4295      	cmp	r5, r2
    2d26:	f200 80e2 	bhi.w	2eee <msd_read+0x3ce>
    2d2a:	1b53      	subs	r3, r2, r5
    2d2c:	428e      	cmp	r6, r1
    2d2e:	4453      	add	r3, sl
    2d30:	f080 816e 	bcs.w	3010 <msd_read+0x4f0>
    2d34:	ebc2 0b06 	rsb	fp, r2, r6
    2d38:	f04f 0c00 	mov.w	ip, #0
    2d3c:	f1b8 0f00 	cmp.w	r8, #0
    2d40:	f040 8120 	bne.w	2f84 <msd_read+0x464>
    2d44:	45cb      	cmp	fp, r9
    2d46:	f000 811d 	beq.w	2f84 <msd_read+0x464>
    2d4a:	4641      	mov	r1, r8
    2d4c:	464a      	mov	r2, r9
    2d4e:	4650      	mov	r0, sl
    2d50:	9300      	str	r3, [sp, #0]
    2d52:	f8cd c004 	str.w	ip, [sp, #4]
    2d56:	f7fd fa8d 	bl	274 <memset>
    2d5a:	f8dd c004 	ldr.w	ip, [sp, #4]
    2d5e:	6da7      	ldr	r7, [r4, #88]	; 0x58
    2d60:	4660      	mov	r0, ip
    2d62:	4659      	mov	r1, fp
    2d64:	6de2      	ldr	r2, [r4, #92]	; 0x5c
    2d66:	9b00      	ldr	r3, [sp, #0]
    2d68:	47b8      	blx	r7
    2d6a:	46d8      	mov	r8, fp
    2d6c:	6e22      	ldr	r2, [r4, #96]	; 0x60
    2d6e:	f8d4 b064 	ldr.w	fp, [r4, #100]	; 0x64
    2d72:	4296      	cmp	r6, r2
    2d74:	d328      	bcc.n	2dc8 <msd_read+0x2a8>
    2d76:	eb0b 0102 	add.w	r1, fp, r2
    2d7a:	428d      	cmp	r5, r1
    2d7c:	d224      	bcs.n	2dc8 <msd_read+0x2a8>
    2d7e:	4295      	cmp	r5, r2
    2d80:	f200 80be 	bhi.w	2f00 <msd_read+0x3e0>
    2d84:	1b50      	subs	r0, r2, r5
    2d86:	428e      	cmp	r6, r1
    2d88:	eb0a 0300 	add.w	r3, sl, r0
    2d8c:	f080 814f 	bcs.w	302e <msd_read+0x50e>
    2d90:	ebc2 0b06 	rsb	fp, r2, r6
    2d94:	f04f 0c00 	mov.w	ip, #0
    2d98:	f1b8 0f00 	cmp.w	r8, #0
    2d9c:	f040 80fc 	bne.w	2f98 <msd_read+0x478>
    2da0:	45cb      	cmp	fp, r9
    2da2:	f000 80f9 	beq.w	2f98 <msd_read+0x478>
    2da6:	4641      	mov	r1, r8
    2da8:	464a      	mov	r2, r9
    2daa:	4650      	mov	r0, sl
    2dac:	9300      	str	r3, [sp, #0]
    2dae:	f8cd c004 	str.w	ip, [sp, #4]
    2db2:	f7fd fa5f 	bl	274 <memset>
    2db6:	f8dd 8004 	ldr.w	r8, [sp, #4]
    2dba:	6ea7      	ldr	r7, [r4, #104]	; 0x68
    2dbc:	4640      	mov	r0, r8
    2dbe:	4659      	mov	r1, fp
    2dc0:	6ee2      	ldr	r2, [r4, #108]	; 0x6c
    2dc2:	9b00      	ldr	r3, [sp, #0]
    2dc4:	47b8      	blx	r7
    2dc6:	46d8      	mov	r8, fp
    2dc8:	6f22      	ldr	r2, [r4, #112]	; 0x70
    2dca:	f8d4 b074 	ldr.w	fp, [r4, #116]	; 0x74
    2dce:	4296      	cmp	r6, r2
    2dd0:	d329      	bcc.n	2e26 <msd_read+0x306>
    2dd2:	eb0b 0102 	add.w	r1, fp, r2
    2dd6:	428d      	cmp	r5, r1
    2dd8:	d225      	bcs.n	2e26 <msd_read+0x306>
    2dda:	4295      	cmp	r5, r2
    2ddc:	f200 8099 	bhi.w	2f12 <msd_read+0x3f2>
    2de0:	ebc5 0e02 	rsb	lr, r5, r2
    2de4:	428e      	cmp	r6, r1
    2de6:	eb0a 030e 	add.w	r3, sl, lr
    2dea:	f080 8123 	bcs.w	3034 <msd_read+0x514>
    2dee:	ebc2 0b06 	rsb	fp, r2, r6
    2df2:	f04f 0c00 	mov.w	ip, #0
    2df6:	f1b8 0f00 	cmp.w	r8, #0
    2dfa:	f040 80d7 	bne.w	2fac <msd_read+0x48c>
    2dfe:	45cb      	cmp	fp, r9
    2e00:	f000 80d4 	beq.w	2fac <msd_read+0x48c>
    2e04:	4641      	mov	r1, r8
    2e06:	464a      	mov	r2, r9
    2e08:	4650      	mov	r0, sl
    2e0a:	9300      	str	r3, [sp, #0]
    2e0c:	f8cd c004 	str.w	ip, [sp, #4]
    2e10:	f7fd fa30 	bl	274 <memset>
    2e14:	f8dd c004 	ldr.w	ip, [sp, #4]
    2e18:	6fa7      	ldr	r7, [r4, #120]	; 0x78
    2e1a:	4660      	mov	r0, ip
    2e1c:	4659      	mov	r1, fp
    2e1e:	6fe2      	ldr	r2, [r4, #124]	; 0x7c
    2e20:	9b00      	ldr	r3, [sp, #0]
    2e22:	47b8      	blx	r7
    2e24:	46d8      	mov	r8, fp
    2e26:	f8d4 3080 	ldr.w	r3, [r4, #128]	; 0x80
    2e2a:	f8d4 7084 	ldr.w	r7, [r4, #132]	; 0x84
    2e2e:	429e      	cmp	r6, r3
    2e30:	d323      	bcc.n	2e7a <msd_read+0x35a>
    2e32:	18fa      	adds	r2, r7, r3
    2e34:	4295      	cmp	r5, r2
    2e36:	d220      	bcs.n	2e7a <msd_read+0x35a>
    2e38:	429d      	cmp	r5, r3
    2e3a:	d873      	bhi.n	2f24 <msd_read+0x404>
    2e3c:	1b5d      	subs	r5, r3, r5
    2e3e:	4296      	cmp	r6, r2
    2e40:	eb0a 0b05 	add.w	fp, sl, r5
    2e44:	f080 80fc 	bcs.w	3040 <msd_read+0x520>
    2e48:	1af7      	subs	r7, r6, r3
    2e4a:	2300      	movs	r3, #0
    2e4c:	f1b8 0f00 	cmp.w	r8, #0
    2e50:	f040 80b6 	bne.w	2fc0 <msd_read+0x4a0>
    2e54:	454f      	cmp	r7, r9
    2e56:	f000 80b3 	beq.w	2fc0 <msd_read+0x4a0>
    2e5a:	4641      	mov	r1, r8
    2e5c:	464a      	mov	r2, r9
    2e5e:	4650      	mov	r0, sl
    2e60:	9300      	str	r3, [sp, #0]
    2e62:	f7fd fa07 	bl	274 <memset>
    2e66:	9900      	ldr	r1, [sp, #0]
    2e68:	f8d4 5088 	ldr.w	r5, [r4, #136]	; 0x88
    2e6c:	4608      	mov	r0, r1
    2e6e:	f8d4 208c 	ldr.w	r2, [r4, #140]	; 0x8c
    2e72:	4639      	mov	r1, r7
    2e74:	465b      	mov	r3, fp
    2e76:	47a8      	blx	r5
    2e78:	46b8      	mov	r8, r7
    2e7a:	f1b8 0f00 	cmp.w	r8, #0
    2e7e:	f47f ae86 	bne.w	2b8e <msd_read+0x6e>
    2e82:	4650      	mov	r0, sl
    2e84:	4641      	mov	r1, r8
    2e86:	464a      	mov	r2, r9
    2e88:	b003      	add	sp, #12
    2e8a:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2e8e:	f7fd b9f1 	b.w	274 <memset>
    2e92:	ebc0 0b03 	rsb	fp, r0, r3
    2e96:	4296      	cmp	r6, r2
    2e98:	448b      	add	fp, r1
    2e9a:	f080 80a2 	bcs.w	2fe2 <msd_read+0x4c2>
    2e9e:	ebc3 0806 	rsb	r8, r3, r6
    2ea2:	2300      	movs	r3, #0
    2ea4:	e65c      	b.n	2b60 <msd_read+0x40>
    2ea6:	428e      	cmp	r6, r1
    2ea8:	ebc2 0c05 	rsb	ip, r2, r5
    2eac:	f240 80a1 	bls.w	2ff2 <msd_read+0x4d2>
    2eb0:	ebc5 0b01 	rsb	fp, r5, r1
    2eb4:	4653      	mov	r3, sl
    2eb6:	e68a      	b.n	2bce <msd_read+0xae>
    2eb8:	428e      	cmp	r6, r1
    2eba:	ebc2 0c05 	rsb	ip, r2, r5
    2ebe:	f240 809b 	bls.w	2ff8 <msd_read+0x4d8>
    2ec2:	ebc5 0b01 	rsb	fp, r5, r1
    2ec6:	4653      	mov	r3, sl
    2ec8:	e6ae      	b.n	2c28 <msd_read+0x108>
    2eca:	428e      	cmp	r6, r1
    2ecc:	ebc2 0c05 	rsb	ip, r2, r5
    2ed0:	f240 8098 	bls.w	3004 <msd_read+0x4e4>
    2ed4:	ebc5 0b01 	rsb	fp, r5, r1
    2ed8:	4653      	mov	r3, sl
    2eda:	e6d3      	b.n	2c84 <msd_read+0x164>
    2edc:	428e      	cmp	r6, r1
    2ede:	ebc2 0c05 	rsb	ip, r2, r5
    2ee2:	f240 8098 	bls.w	3016 <msd_read+0x4f6>
    2ee6:	ebc5 0b01 	rsb	fp, r5, r1
    2eea:	4653      	mov	r3, sl
    2eec:	e6f9      	b.n	2ce2 <msd_read+0x1c2>
    2eee:	428e      	cmp	r6, r1
    2ef0:	ebc2 0c05 	rsb	ip, r2, r5
    2ef4:	f240 8092 	bls.w	301c <msd_read+0x4fc>
    2ef8:	ebc5 0b01 	rsb	fp, r5, r1
    2efc:	4653      	mov	r3, sl
    2efe:	e71d      	b.n	2d3c <msd_read+0x21c>
    2f00:	428e      	cmp	r6, r1
    2f02:	ebc2 0c05 	rsb	ip, r2, r5
    2f06:	f240 808c 	bls.w	3022 <msd_read+0x502>
    2f0a:	ebc5 0b01 	rsb	fp, r5, r1
    2f0e:	4653      	mov	r3, sl
    2f10:	e742      	b.n	2d98 <msd_read+0x278>
    2f12:	428e      	cmp	r6, r1
    2f14:	ebc2 0c05 	rsb	ip, r2, r5
    2f18:	f240 8086 	bls.w	3028 <msd_read+0x508>
    2f1c:	ebc5 0b01 	rsb	fp, r5, r1
    2f20:	4653      	mov	r3, sl
    2f22:	e768      	b.n	2df6 <msd_read+0x2d6>
    2f24:	4296      	cmp	r6, r2
    2f26:	ebc3 0305 	rsb	r3, r3, r5
    2f2a:	f240 8086 	bls.w	303a <msd_read+0x51a>
    2f2e:	1b57      	subs	r7, r2, r5
    2f30:	46d3      	mov	fp, sl
    2f32:	e78b      	b.n	2e4c <msd_read+0x32c>
    2f34:	69a7      	ldr	r7, [r4, #24]
    2f36:	4660      	mov	r0, ip
    2f38:	4659      	mov	r1, fp
    2f3a:	69e2      	ldr	r2, [r4, #28]
    2f3c:	44d8      	add	r8, fp
    2f3e:	47b8      	blx	r7
    2f40:	45c8      	cmp	r8, r9
    2f42:	f47f ae5c 	bne.w	2bfe <msd_read+0xde>
    2f46:	e622      	b.n	2b8e <msd_read+0x6e>
    2f48:	6aa7      	ldr	r7, [r4, #40]	; 0x28
    2f4a:	4660      	mov	r0, ip
    2f4c:	4659      	mov	r1, fp
    2f4e:	6ae2      	ldr	r2, [r4, #44]	; 0x2c
    2f50:	44d8      	add	r8, fp
    2f52:	47b8      	blx	r7
    2f54:	45c8      	cmp	r8, r9
    2f56:	f47f ae7f 	bne.w	2c58 <msd_read+0x138>
    2f5a:	e618      	b.n	2b8e <msd_read+0x6e>
    2f5c:	6ba7      	ldr	r7, [r4, #56]	; 0x38
    2f5e:	4660      	mov	r0, ip
    2f60:	4659      	mov	r1, fp
    2f62:	6be2      	ldr	r2, [r4, #60]	; 0x3c
    2f64:	44d8      	add	r8, fp
    2f66:	47b8      	blx	r7
    2f68:	45c8      	cmp	r8, r9
    2f6a:	f47f aea3 	bne.w	2cb4 <msd_read+0x194>
    2f6e:	e60e      	b.n	2b8e <msd_read+0x6e>
    2f70:	6ca7      	ldr	r7, [r4, #72]	; 0x48
    2f72:	4660      	mov	r0, ip
    2f74:	4659      	mov	r1, fp
    2f76:	6ce2      	ldr	r2, [r4, #76]	; 0x4c
    2f78:	44d8      	add	r8, fp
    2f7a:	47b8      	blx	r7
    2f7c:	45c8      	cmp	r8, r9
    2f7e:	f47f aec8 	bne.w	2d12 <msd_read+0x1f2>
    2f82:	e604      	b.n	2b8e <msd_read+0x6e>
    2f84:	6da7      	ldr	r7, [r4, #88]	; 0x58
    2f86:	4660      	mov	r0, ip
    2f88:	4659      	mov	r1, fp
    2f8a:	6de2      	ldr	r2, [r4, #92]	; 0x5c
    2f8c:	44d8      	add	r8, fp
    2f8e:	47b8      	blx	r7
    2f90:	45c8      	cmp	r8, r9
    2f92:	f47f aeeb 	bne.w	2d6c <msd_read+0x24c>
    2f96:	e5fa      	b.n	2b8e <msd_read+0x6e>
    2f98:	6ea7      	ldr	r7, [r4, #104]	; 0x68
    2f9a:	4660      	mov	r0, ip
    2f9c:	4659      	mov	r1, fp
    2f9e:	6ee2      	ldr	r2, [r4, #108]	; 0x6c
    2fa0:	44d8      	add	r8, fp
    2fa2:	47b8      	blx	r7
    2fa4:	45c8      	cmp	r8, r9
    2fa6:	f47f af0f 	bne.w	2dc8 <msd_read+0x2a8>
    2faa:	e5f0      	b.n	2b8e <msd_read+0x6e>
    2fac:	6fa7      	ldr	r7, [r4, #120]	; 0x78
    2fae:	4660      	mov	r0, ip
    2fb0:	4659      	mov	r1, fp
    2fb2:	6fe2      	ldr	r2, [r4, #124]	; 0x7c
    2fb4:	44d8      	add	r8, fp
    2fb6:	47b8      	blx	r7
    2fb8:	45c8      	cmp	r8, r9
    2fba:	f47f af34 	bne.w	2e26 <msd_read+0x306>
    2fbe:	e5e6      	b.n	2b8e <msd_read+0x6e>
    2fc0:	4618      	mov	r0, r3
    2fc2:	f8d4 5088 	ldr.w	r5, [r4, #136]	; 0x88
    2fc6:	4639      	mov	r1, r7
    2fc8:	f8d4 208c 	ldr.w	r2, [r4, #140]	; 0x8c
    2fcc:	465b      	mov	r3, fp
    2fce:	44b8      	add	r8, r7
    2fd0:	47a8      	blx	r5
    2fd2:	45c8      	cmp	r8, r9
    2fd4:	f43f addb 	beq.w	2b8e <msd_read+0x6e>
    2fd8:	f1b8 0f00 	cmp.w	r8, #0
    2fdc:	f47f add7 	bne.w	2b8e <msd_read+0x6e>
    2fe0:	e74f      	b.n	2e82 <msd_read+0x362>
    2fe2:	2300      	movs	r3, #0
    2fe4:	e5bc      	b.n	2b60 <msd_read+0x40>
    2fe6:	f04f 0c00 	mov.w	ip, #0
    2fea:	e5f0      	b.n	2bce <msd_read+0xae>
    2fec:	f04f 0c00 	mov.w	ip, #0
    2ff0:	e61a      	b.n	2c28 <msd_read+0x108>
    2ff2:	4653      	mov	r3, sl
    2ff4:	46cb      	mov	fp, r9
    2ff6:	e5ea      	b.n	2bce <msd_read+0xae>
    2ff8:	4653      	mov	r3, sl
    2ffa:	46cb      	mov	fp, r9
    2ffc:	e614      	b.n	2c28 <msd_read+0x108>
    2ffe:	f04f 0c00 	mov.w	ip, #0
    3002:	e63f      	b.n	2c84 <msd_read+0x164>
    3004:	4653      	mov	r3, sl
    3006:	46cb      	mov	fp, r9
    3008:	e63c      	b.n	2c84 <msd_read+0x164>
    300a:	f04f 0c00 	mov.w	ip, #0
    300e:	e668      	b.n	2ce2 <msd_read+0x1c2>
    3010:	f04f 0c00 	mov.w	ip, #0
    3014:	e692      	b.n	2d3c <msd_read+0x21c>
    3016:	4653      	mov	r3, sl
    3018:	46cb      	mov	fp, r9
    301a:	e662      	b.n	2ce2 <msd_read+0x1c2>
    301c:	4653      	mov	r3, sl
    301e:	46cb      	mov	fp, r9
    3020:	e68c      	b.n	2d3c <msd_read+0x21c>
    3022:	4653      	mov	r3, sl
    3024:	46cb      	mov	fp, r9
    3026:	e6b7      	b.n	2d98 <msd_read+0x278>
    3028:	4653      	mov	r3, sl
    302a:	46cb      	mov	fp, r9
    302c:	e6e3      	b.n	2df6 <msd_read+0x2d6>
    302e:	f04f 0c00 	mov.w	ip, #0
    3032:	e6b1      	b.n	2d98 <msd_read+0x278>
    3034:	f04f 0c00 	mov.w	ip, #0
    3038:	e6dd      	b.n	2df6 <msd_read+0x2d6>
    303a:	46d3      	mov	fp, sl
    303c:	464f      	mov	r7, r9
    303e:	e705      	b.n	2e4c <msd_read+0x32c>
    3040:	2300      	movs	r3, #0
    3042:	e703      	b.n	2e4c <msd_read+0x32c>

00003044 <msd_write>:
    3044:	4770      	bx	lr
    3046:	bf00      	nop

00003048 <vfs_init>:
    3048:	b118      	cbz	r0, 3052 <vfs_init+0xa>
    304a:	4b02      	ldr	r3, [pc, #8]	; (3054 <vfs_init+0xc>)
    304c:	6018      	str	r0, [r3, #0]
    304e:	f7ff ba3f 	b.w	24d0 <msd_init>
    3052:	4770      	bx	lr
    3054:	10000940 	.word	0x10000940

00003058 <spi_init_pin>:
    3058:	f3c0 4307 	ubfx	r3, r0, #16, #8
    305c:	2201      	movs	r2, #1
    305e:	409a      	lsls	r2, r3
    3060:	4b04      	ldr	r3, [pc, #16]	; (3074 <spi_init_pin+0x1c>)
    3062:	0e01      	lsrs	r1, r0, #24
    3064:	f853 0021 	ldr.w	r0, [r3, r1, lsl #2]
    3068:	f500 4300 	add.w	r3, r0, #32768	; 0x8000
    306c:	6819      	ldr	r1, [r3, #0]
    306e:	430a      	orrs	r2, r1
    3070:	601a      	str	r2, [r3, #0]
    3072:	4770      	bx	lr
    3074:	100001f4 	.word	0x100001f4

00003078 <spi_txrx>:
    3078:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    307c:	4604      	mov	r4, r0
    307e:	460e      	mov	r6, r1
    3080:	494e      	ldr	r1, [pc, #312]	; (31bc <spi_txrx+0x144>)
    3082:	b084      	sub	sp, #16
    3084:	f3c0 2007 	ubfx	r0, r0, #8, #8
    3088:	f014 0f08 	tst.w	r4, #8
    308c:	f8bd 5030 	ldrh.w	r5, [sp, #48]	; 0x30
    3090:	4617      	mov	r7, r2
    3092:	6108      	str	r0, [r1, #16]
    3094:	469a      	mov	sl, r3
    3096:	d10d      	bne.n	30b4 <spi_txrx+0x3c>
    3098:	f3c4 4307 	ubfx	r3, r4, #16, #8
    309c:	f004 0201 	and.w	r2, r4, #1
    30a0:	2101      	movs	r1, #1
    30a2:	4099      	lsls	r1, r3
    30a4:	fa12 f303 	lsls.w	r3, r2, r3
    30a8:	4a45      	ldr	r2, [pc, #276]	; (31c0 <spi_txrx+0x148>)
    30aa:	0e20      	lsrs	r0, r4, #24
    30ac:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
    30b0:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
    30b4:	f014 0f04 	tst.w	r4, #4
    30b8:	d07b      	beq.n	31b2 <spi_txrx+0x13a>
    30ba:	eb05 0c07 	add.w	ip, r5, r7
    30be:	fa1f f38c 	uxth.w	r3, ip
    30c2:	b303      	cbz	r3, 3106 <spi_txrx+0x8e>
    30c4:	f8df 80f4 	ldr.w	r8, [pc, #244]	; 31bc <spi_txrx+0x144>
    30c8:	f004 0102 	and.w	r1, r4, #2
    30cc:	461a      	mov	r2, r3
    30ce:	46c1      	mov	r9, r8
    30d0:	b183      	cbz	r3, 30f4 <spi_txrx+0x7c>
    30d2:	1e58      	subs	r0, r3, #1
    30d4:	b283      	uxth	r3, r0
    30d6:	2f00      	cmp	r7, #0
    30d8:	d05d      	beq.n	3196 <spi_txrx+0x11e>
    30da:	3f01      	subs	r7, #1
    30dc:	b2bf      	uxth	r7, r7
    30de:	f816 cb01 	ldrb.w	ip, [r6], #1
    30e2:	2900      	cmp	r1, #0
    30e4:	d159      	bne.n	319a <spi_txrx+0x122>
    30e6:	f8d8 000c 	ldr.w	r0, [r8, #12]
    30ea:	f010 0f02 	tst.w	r0, #2
    30ee:	d0fa      	beq.n	30e6 <spi_txrx+0x6e>
    30f0:	f8c9 c008 	str.w	ip, [r9, #8]
    30f4:	2900      	cmp	r1, #0
    30f6:	d146      	bne.n	3186 <spi_txrx+0x10e>
    30f8:	f8d8 000c 	ldr.w	r0, [r8, #12]
    30fc:	f010 0f04 	tst.w	r0, #4
    3100:	d11d      	bne.n	313e <spi_txrx+0xc6>
    3102:	2a00      	cmp	r2, #0
    3104:	d1e4      	bne.n	30d0 <spi_txrx+0x58>
    3106:	4a2d      	ldr	r2, [pc, #180]	; (31bc <spi_txrx+0x144>)
    3108:	68d1      	ldr	r1, [r2, #12]
    310a:	f011 0f01 	tst.w	r1, #1
    310e:	d0fb      	beq.n	3108 <spi_txrx+0x90>
    3110:	f014 0f10 	tst.w	r4, #16
    3114:	d10f      	bne.n	3136 <spi_txrx+0xbe>
    3116:	f004 0c01 	and.w	ip, r4, #1
    311a:	f3c4 4307 	ubfx	r3, r4, #16, #8
    311e:	f08c 0201 	eor.w	r2, ip, #1
    3122:	2001      	movs	r0, #1
    3124:	4098      	lsls	r0, r3
    3126:	fa12 f303 	lsls.w	r3, r2, r3
    312a:	4925      	ldr	r1, [pc, #148]	; (31c0 <spi_txrx+0x148>)
    312c:	0e24      	lsrs	r4, r4, #24
    312e:	f851 2024 	ldr.w	r2, [r1, r4, lsl #2]
    3132:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
    3136:	2000      	movs	r0, #0
    3138:	b004      	add	sp, #16
    313a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    313e:	3a01      	subs	r2, #1
    3140:	f8d8 0008 	ldr.w	r0, [r8, #8]
    3144:	b292      	uxth	r2, r2
    3146:	2d00      	cmp	r5, #0
    3148:	d0d6      	beq.n	30f8 <spi_txrx+0x80>
    314a:	4295      	cmp	r5, r2
    314c:	d9d4      	bls.n	30f8 <spi_txrx+0x80>
    314e:	3d01      	subs	r5, #1
    3150:	b2ad      	uxth	r5, r5
    3152:	f80a 0b01 	strb.w	r0, [sl], #1
    3156:	e7cf      	b.n	30f8 <spi_txrx+0x80>
    3158:	3a01      	subs	r2, #1
    315a:	f8d8 0008 	ldr.w	r0, [r8, #8]
    315e:	b292      	uxth	r2, r2
    3160:	b18d      	cbz	r5, 3186 <spi_txrx+0x10e>
    3162:	4295      	cmp	r5, r2
    3164:	f105 3cff 	add.w	ip, r5, #4294967295
    3168:	b2c0      	uxtb	r0, r0
    316a:	d90c      	bls.n	3186 <spi_txrx+0x10e>
    316c:	9103      	str	r1, [sp, #12]
    316e:	9201      	str	r2, [sp, #4]
    3170:	9302      	str	r3, [sp, #8]
    3172:	fa1f f58c 	uxth.w	r5, ip
    3176:	f7fe ffbf 	bl	20f8 <__RBIT>
    317a:	0e03      	lsrs	r3, r0, #24
    317c:	f80a 3b01 	strb.w	r3, [sl], #1
    3180:	9b02      	ldr	r3, [sp, #8]
    3182:	9a01      	ldr	r2, [sp, #4]
    3184:	9903      	ldr	r1, [sp, #12]
    3186:	f8d8 000c 	ldr.w	r0, [r8, #12]
    318a:	f010 0f04 	tst.w	r0, #4
    318e:	d1e3      	bne.n	3158 <spi_txrx+0xe0>
    3190:	2a00      	cmp	r2, #0
    3192:	d19d      	bne.n	30d0 <spi_txrx+0x58>
    3194:	e7b7      	b.n	3106 <spi_txrx+0x8e>
    3196:	46bc      	mov	ip, r7
    3198:	e7a5      	b.n	30e6 <spi_txrx+0x6e>
    319a:	4660      	mov	r0, ip
    319c:	9103      	str	r1, [sp, #12]
    319e:	9201      	str	r2, [sp, #4]
    31a0:	9302      	str	r3, [sp, #8]
    31a2:	f7fe ffa9 	bl	20f8 <__RBIT>
    31a6:	9903      	ldr	r1, [sp, #12]
    31a8:	ea4f 6c10 	mov.w	ip, r0, lsr #24
    31ac:	9a01      	ldr	r2, [sp, #4]
    31ae:	9b02      	ldr	r3, [sp, #8]
    31b0:	e799      	b.n	30e6 <spi_txrx+0x6e>
    31b2:	42bd      	cmp	r5, r7
    31b4:	bf2c      	ite	cs
    31b6:	462b      	movcs	r3, r5
    31b8:	463b      	movcc	r3, r7
    31ba:	e782      	b.n	30c2 <spi_txrx+0x4a>
    31bc:	40040000 	.word	0x40040000
    31c0:	100001f4 	.word	0x100001f4

000031c4 <spi_status>:
    31c4:	4808      	ldr	r0, [pc, #32]	; (31e8 <spi_status+0x24>)
    31c6:	4909      	ldr	r1, [pc, #36]	; (31ec <spi_status+0x28>)
    31c8:	f8d0 2094 	ldr.w	r2, [r0, #148]	; 0x94
    31cc:	690b      	ldr	r3, [r1, #16]
    31ce:	4808      	ldr	r0, [pc, #32]	; (31f0 <spi_status+0x2c>)
    31d0:	fb02 f203 	mul.w	r2, r2, r3
    31d4:	6801      	ldr	r1, [r0, #0]
    31d6:	4b07      	ldr	r3, [pc, #28]	; (31f4 <spi_status+0x30>)
    31d8:	fbb1 f0f2 	udiv	r0, r1, r2
    31dc:	fba3 2100 	umull	r2, r1, r3, r0
    31e0:	4805      	ldr	r0, [pc, #20]	; (31f8 <spi_status+0x34>)
    31e2:	0c89      	lsrs	r1, r1, #18
    31e4:	f000 bf7e 	b.w	40e4 <debug_printf>
    31e8:	40048000 	.word	0x40048000
    31ec:	40040000 	.word	0x40040000
    31f0:	100001ec 	.word	0x100001ec
    31f4:	431bde83 	.word	0x431bde83
    31f8:	00005000 	.word	0x00005000

000031fc <spi_init>:
    31fc:	4b0d      	ldr	r3, [pc, #52]	; (3234 <spi_init+0x38>)
    31fe:	2101      	movs	r1, #1
    3200:	b430      	push	{r4, r5}
    3202:	6059      	str	r1, [r3, #4]
    3204:	f8d3 5080 	ldr.w	r5, [r3, #128]	; 0x80
    3208:	4a0b      	ldr	r2, [pc, #44]	; (3238 <spi_init+0x3c>)
    320a:	f445 6500 	orr.w	r5, r5, #2048	; 0x800
    320e:	f8c3 5080 	str.w	r5, [r3, #128]	; 0x80
    3212:	2509      	movs	r5, #9
    3214:	6615      	str	r5, [r2, #96]	; 0x60
    3216:	4809      	ldr	r0, [pc, #36]	; (323c <spi_init+0x40>)
    3218:	2402      	movs	r4, #2
    321a:	2500      	movs	r5, #0
    321c:	6651      	str	r1, [r2, #100]	; 0x64
    321e:	f8c2 50b0 	str.w	r5, [r2, #176]	; 0xb0
    3222:	6694      	str	r4, [r2, #104]	; 0x68
    3224:	f8c3 1094 	str.w	r1, [r3, #148]	; 0x94
    3228:	2307      	movs	r3, #7
    322a:	6003      	str	r3, [r0, #0]
    322c:	6044      	str	r4, [r0, #4]
    322e:	bc30      	pop	{r4, r5}
    3230:	4770      	bx	lr
    3232:	bf00      	nop
    3234:	40048000 	.word	0x40048000
    3238:	40044000 	.word	0x40044000
    323c:	40040000 	.word	0x40040000

00003240 <iap_read_uid>:
    3240:	b508      	push	{r3, lr}
    3242:	4601      	mov	r1, r0
    3244:	4b01      	ldr	r3, [pc, #4]	; (324c <iap_read_uid+0xc>)
    3246:	4802      	ldr	r0, [pc, #8]	; (3250 <iap_read_uid+0x10>)
    3248:	4798      	blx	r3
    324a:	bd08      	pop	{r3, pc}
    324c:	1fff1ff1 	.word	0x1fff1ff1
    3250:	00005014 	.word	0x00005014

00003254 <crc8>:
    3254:	b470      	push	{r4, r5, r6}
    3256:	2900      	cmp	r1, #0
    3258:	d03e      	beq.n	32d8 <crc8+0x84>
    325a:	4603      	mov	r3, r0
    325c:	f813 5b01 	ldrb.w	r5, [r3], #1
    3260:	1841      	adds	r1, r0, r1
    3262:	4a1e      	ldr	r2, [pc, #120]	; (32dc <crc8+0x88>)
    3264:	43c0      	mvns	r0, r0
    3266:	180c      	adds	r4, r1, r0
    3268:	f085 05ff 	eor.w	r5, r5, #255	; 0xff
    326c:	428b      	cmp	r3, r1
    326e:	f004 0403 	and.w	r4, r4, #3
    3272:	5d50      	ldrb	r0, [r2, r5]
    3274:	d02c      	beq.n	32d0 <crc8+0x7c>
    3276:	b19c      	cbz	r4, 32a0 <crc8+0x4c>
    3278:	2c01      	cmp	r4, #1
    327a:	d00b      	beq.n	3294 <crc8+0x40>
    327c:	2c02      	cmp	r4, #2
    327e:	d003      	beq.n	3288 <crc8+0x34>
    3280:	f813 4b01 	ldrb.w	r4, [r3], #1
    3284:	4060      	eors	r0, r4
    3286:	5c10      	ldrb	r0, [r2, r0]
    3288:	f813 4b01 	ldrb.w	r4, [r3], #1
    328c:	ea80 0c04 	eor.w	ip, r0, r4
    3290:	f812 000c 	ldrb.w	r0, [r2, ip]
    3294:	f813 4b01 	ldrb.w	r4, [r3], #1
    3298:	4060      	eors	r0, r4
    329a:	428b      	cmp	r3, r1
    329c:	5c10      	ldrb	r0, [r2, r0]
    329e:	d017      	beq.n	32d0 <crc8+0x7c>
    32a0:	461c      	mov	r4, r3
    32a2:	f814 6b01 	ldrb.w	r6, [r4], #1
    32a6:	785d      	ldrb	r5, [r3, #1]
    32a8:	ea80 0c06 	eor.w	ip, r0, r6
    32ac:	f812 000c 	ldrb.w	r0, [r2, ip]
    32b0:	f894 c001 	ldrb.w	ip, [r4, #1]
    32b4:	ea80 0505 	eor.w	r5, r0, r5
    32b8:	5d55      	ldrb	r5, [r2, r5]
    32ba:	78d8      	ldrb	r0, [r3, #3]
    32bc:	ea85 040c 	eor.w	r4, r5, ip
    32c0:	5d14      	ldrb	r4, [r2, r4]
    32c2:	3304      	adds	r3, #4
    32c4:	ea84 0c00 	eor.w	ip, r4, r0
    32c8:	428b      	cmp	r3, r1
    32ca:	f812 000c 	ldrb.w	r0, [r2, ip]
    32ce:	d1e7      	bne.n	32a0 <crc8+0x4c>
    32d0:	43c1      	mvns	r1, r0
    32d2:	b2c8      	uxtb	r0, r1
    32d4:	bc70      	pop	{r4, r5, r6}
    32d6:	4770      	bx	lr
    32d8:	4608      	mov	r0, r1
    32da:	e7fb      	b.n	32d4 <crc8+0x80>
    32dc:	00005018 	.word	0x00005018

000032e0 <crc16>:
    32e0:	b430      	push	{r4, r5}
    32e2:	2800      	cmp	r0, #0
    32e4:	d05d      	beq.n	33a2 <crc16+0xc2>
    32e6:	2900      	cmp	r1, #0
    32e8:	d05b      	beq.n	33a2 <crc16+0xc2>
    32ea:	4603      	mov	r3, r0
    32ec:	f813 2b01 	ldrb.w	r2, [r3], #1
    32f0:	f64f 7cff 	movw	ip, #65535	; 0xffff
    32f4:	ea8c 0c02 	eor.w	ip, ip, r2
    32f8:	f3cc 1403 	ubfx	r4, ip, #4, #4
    32fc:	ea84 020c 	eor.w	r2, r4, ip
    3300:	ea82 3c02 	eor.w	ip, r2, r2, lsl #12
    3304:	1841      	adds	r1, r0, r1
    3306:	fa1f f28c 	uxth.w	r2, ip
    330a:	43c0      	mvns	r0, r0
    330c:	180c      	adds	r4, r1, r0
    330e:	428b      	cmp	r3, r1
    3310:	b2d0      	uxtb	r0, r2
    3312:	f004 0401 	and.w	r4, r4, #1
    3316:	ea82 1040 	eor.w	r0, r2, r0, lsl #5
    331a:	d040      	beq.n	339e <crc16+0xbe>
    331c:	b1a4      	cbz	r4, 3348 <crc16+0x68>
    331e:	0a02      	lsrs	r2, r0, #8
    3320:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
    3324:	f813 cb01 	ldrb.w	ip, [r3], #1
    3328:	b290      	uxth	r0, r2
    332a:	ea80 0c0c 	eor.w	ip, r0, ip
    332e:	f3cc 1203 	ubfx	r2, ip, #4, #4
    3332:	ea82 000c 	eor.w	r0, r2, ip
    3336:	ea80 3c00 	eor.w	ip, r0, r0, lsl #12
    333a:	fa1f f08c 	uxth.w	r0, ip
    333e:	b2c2      	uxtb	r2, r0
    3340:	428b      	cmp	r3, r1
    3342:	ea80 1042 	eor.w	r0, r0, r2, lsl #5
    3346:	d02a      	beq.n	339e <crc16+0xbe>
    3348:	0a05      	lsrs	r5, r0, #8
    334a:	461a      	mov	r2, r3
    334c:	ea45 2400 	orr.w	r4, r5, r0, lsl #8
    3350:	f812 5b01 	ldrb.w	r5, [r2], #1
    3354:	fa1f fc84 	uxth.w	ip, r4
    3358:	ea8c 0405 	eor.w	r4, ip, r5
    335c:	f3c4 1003 	ubfx	r0, r4, #4, #4
    3360:	ea80 0c04 	eor.w	ip, r0, r4
    3364:	ea8c 340c 	eor.w	r4, ip, ip, lsl #12
    3368:	fa1f fc84 	uxth.w	ip, r4
    336c:	fa5f f08c 	uxtb.w	r0, ip
    3370:	ea8c 1440 	eor.w	r4, ip, r0, lsl #5
    3374:	0a20      	lsrs	r0, r4, #8
    3376:	ea40 2c04 	orr.w	ip, r0, r4, lsl #8
    337a:	785b      	ldrb	r3, [r3, #1]
    337c:	fa1f f48c 	uxth.w	r4, ip
    3380:	ea84 0c03 	eor.w	ip, r4, r3
    3384:	f3cc 1003 	ubfx	r0, ip, #4, #4
    3388:	ea80 040c 	eor.w	r4, r0, ip
    338c:	ea84 3304 	eor.w	r3, r4, r4, lsl #12
    3390:	b298      	uxth	r0, r3
    3392:	1c53      	adds	r3, r2, #1
    3394:	b2c4      	uxtb	r4, r0
    3396:	428b      	cmp	r3, r1
    3398:	ea80 1044 	eor.w	r0, r0, r4, lsl #5
    339c:	d1d4      	bne.n	3348 <crc16+0x68>
    339e:	bc30      	pop	{r4, r5}
    33a0:	4770      	bx	lr
    33a2:	f64f 70ff 	movw	r0, #65535	; 0xffff
    33a6:	e7fa      	b.n	339e <crc16+0xbe>

000033a8 <xxtea_encode>:
    33a8:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
    33ac:	b084      	sub	sp, #16
    33ae:	4682      	mov	sl, r0
    33b0:	9101      	str	r1, [sp, #4]
    33b2:	2800      	cmp	r0, #0
    33b4:	f000 8127 	beq.w	3606 <xxtea_encode+0x25e>
    33b8:	2a00      	cmp	r2, #0
    33ba:	f000 8124 	beq.w	3606 <xxtea_encode+0x25e>
    33be:	f101 3cff 	add.w	ip, r1, #4294967295
    33c2:	2900      	cmp	r1, #0
    33c4:	d039      	beq.n	343a <xxtea_encode+0x92>
    33c6:	9c01      	ldr	r4, [sp, #4]
    33c8:	2101      	movs	r1, #1
    33ca:	4603      	mov	r3, r0
    33cc:	42a1      	cmp	r1, r4
    33ce:	6806      	ldr	r6, [r0, #0]
    33d0:	f00c 0003 	and.w	r0, ip, #3
    33d4:	ba35      	rev	r5, r6
    33d6:	f843 5b04 	str.w	r5, [r3], #4
    33da:	d02e      	beq.n	343a <xxtea_encode+0x92>
    33dc:	2800      	cmp	r0, #0
    33de:	f000 8116 	beq.w	360e <xxtea_encode+0x266>
    33e2:	2801      	cmp	r0, #1
    33e4:	d00b      	beq.n	33fe <xxtea_encode+0x56>
    33e6:	2802      	cmp	r0, #2
    33e8:	d004      	beq.n	33f4 <xxtea_encode+0x4c>
    33ea:	6818      	ldr	r0, [r3, #0]
    33ec:	2102      	movs	r1, #2
    33ee:	ba06      	rev	r6, r0
    33f0:	f843 6b04 	str.w	r6, [r3], #4
    33f4:	681d      	ldr	r5, [r3, #0]
    33f6:	3101      	adds	r1, #1
    33f8:	ba2c      	rev	r4, r5
    33fa:	f843 4b04 	str.w	r4, [r3], #4
    33fe:	9c01      	ldr	r4, [sp, #4]
    3400:	3101      	adds	r1, #1
    3402:	42a1      	cmp	r1, r4
    3404:	681e      	ldr	r6, [r3, #0]
    3406:	ba37      	rev	r7, r6
    3408:	f843 7b04 	str.w	r7, [r3], #4
    340c:	d015      	beq.n	343a <xxtea_encode+0x92>
    340e:	4625      	mov	r5, r4
    3410:	469b      	mov	fp, r3
    3412:	681e      	ldr	r6, [r3, #0]
    3414:	ba34      	rev	r4, r6
    3416:	f84b 4b04 	str.w	r4, [fp], #4
    341a:	685f      	ldr	r7, [r3, #4]
    341c:	3104      	adds	r1, #4
    341e:	ba38      	rev	r0, r7
    3420:	f8cb 0000 	str.w	r0, [fp]
    3424:	f8db 6004 	ldr.w	r6, [fp, #4]
    3428:	68df      	ldr	r7, [r3, #12]
    342a:	ba34      	rev	r4, r6
    342c:	609c      	str	r4, [r3, #8]
    342e:	3310      	adds	r3, #16
    3430:	42a9      	cmp	r1, r5
    3432:	ba38      	rev	r0, r7
    3434:	f843 0c04 	str.w	r0, [r3, #-4]
    3438:	d1ea      	bne.n	3410 <xxtea_encode+0x68>
    343a:	9901      	ldr	r1, [sp, #4]
    343c:	2634      	movs	r6, #52	; 0x34
    343e:	4c76      	ldr	r4, [pc, #472]	; (3618 <xxtea_encode+0x270>)
    3440:	fbb6 f3f1 	udiv	r3, r6, r1
    3444:	fb04 f703 	mul.w	r7, r4, r3
    3448:	4874      	ldr	r0, [pc, #464]	; (361c <xxtea_encode+0x274>)
    344a:	f85a 302c 	ldr.w	r3, [sl, ip, lsl #2]
    344e:	183d      	adds	r5, r7, r0
    3450:	2000      	movs	r0, #0
    3452:	f100 401f 	add.w	r0, r0, #2667577344	; 0x9f000000
    3456:	9502      	str	r5, [sp, #8]
    3458:	f5a0 0548 	sub.w	r5, r0, #13107200	; 0xc80000
    345c:	f5a5 4006 	sub.w	r0, r5, #34304	; 0x8600
    3460:	f00c 0103 	and.w	r1, ip, #3
    3464:	3847      	subs	r0, #71	; 0x47
    3466:	eb0a 0b8c 	add.w	fp, sl, ip, lsl #2
    346a:	461c      	mov	r4, r3
    346c:	9103      	str	r1, [sp, #12]
    346e:	f3c0 0681 	ubfx	r6, r0, #2, #2
    3472:	f1bc 0f00 	cmp.w	ip, #0
    3476:	f000 8086 	beq.w	3586 <xxtea_encode+0x1de>
    347a:	2500      	movs	r5, #0
    347c:	f01c 0f01 	tst.w	ip, #1
    3480:	4651      	mov	r1, sl
    3482:	d138      	bne.n	34f6 <xxtea_encode+0x14e>
    3484:	f8da 4004 	ldr.w	r4, [sl, #4]
    3488:	f852 8026 	ldr.w	r8, [r2, r6, lsl #2]
    348c:	00a5      	lsls	r5, r4, #2
    348e:	08e7      	lsrs	r7, r4, #3
    3490:	ea83 0908 	eor.w	r9, r3, r8
    3494:	4651      	mov	r1, sl
    3496:	ea87 1703 	eor.w	r7, r7, r3, lsl #4
    349a:	ea80 0404 	eor.w	r4, r0, r4
    349e:	ea85 1353 	eor.w	r3, r5, r3, lsr #5
    34a2:	eb09 0804 	add.w	r8, r9, r4
    34a6:	f851 5b04 	ldr.w	r5, [r1], #4
    34aa:	eb07 0903 	add.w	r9, r7, r3
    34ae:	ea88 0409 	eor.w	r4, r8, r9
    34b2:	1963      	adds	r3, r4, r5
    34b4:	f841 3c04 	str.w	r3, [r1, #-4]
    34b8:	2501      	movs	r5, #1
    34ba:	e01c      	b.n	34f6 <xxtea_encode+0x14e>
    34bc:	f005 0803 	and.w	r8, r5, #3
    34c0:	684c      	ldr	r4, [r1, #4]
    34c2:	ea88 0706 	eor.w	r7, r8, r6
    34c6:	f852 9027 	ldr.w	r9, [r2, r7, lsl #2]
    34ca:	ea4f 08d4 	mov.w	r8, r4, lsr #3
    34ce:	00a7      	lsls	r7, r4, #2
    34d0:	ea88 1803 	eor.w	r8, r8, r3, lsl #4
    34d4:	ea83 0909 	eor.w	r9, r3, r9
    34d8:	ea87 1753 	eor.w	r7, r7, r3, lsr #5
    34dc:	ea80 0304 	eor.w	r3, r0, r4
    34e0:	4499      	add	r9, r3
    34e2:	f851 4b04 	ldr.w	r4, [r1], #4
    34e6:	4447      	add	r7, r8
    34e8:	ea89 0807 	eor.w	r8, r9, r7
    34ec:	eb08 0304 	add.w	r3, r8, r4
    34f0:	f841 3c04 	str.w	r3, [r1, #-4]
    34f4:	3501      	adds	r5, #1
    34f6:	f005 0803 	and.w	r8, r5, #3
    34fa:	684c      	ldr	r4, [r1, #4]
    34fc:	ea88 0706 	eor.w	r7, r8, r6
    3500:	f852 9027 	ldr.w	r9, [r2, r7, lsl #2]
    3504:	ea4f 08d4 	mov.w	r8, r4, lsr #3
    3508:	00a7      	lsls	r7, r4, #2
    350a:	ea83 0909 	eor.w	r9, r3, r9
    350e:	ea88 1803 	eor.w	r8, r8, r3, lsl #4
    3512:	ea87 1753 	eor.w	r7, r7, r3, lsr #5
    3516:	ea80 0304 	eor.w	r3, r0, r4
    351a:	4499      	add	r9, r3
    351c:	f851 4b04 	ldr.w	r4, [r1], #4
    3520:	44b8      	add	r8, r7
    3522:	ea89 0308 	eor.w	r3, r9, r8
    3526:	3501      	adds	r5, #1
    3528:	191b      	adds	r3, r3, r4
    352a:	4565      	cmp	r5, ip
    352c:	f841 3c04 	str.w	r3, [r1, #-4]
    3530:	d3c4      	bcc.n	34bc <xxtea_encode+0x114>
    3532:	f8db 4000 	ldr.w	r4, [fp]
    3536:	9d03      	ldr	r5, [sp, #12]
    3538:	f8da 1000 	ldr.w	r1, [sl]
    353c:	ea85 0706 	eor.w	r7, r5, r6
    3540:	f852 6027 	ldr.w	r6, [r2, r7, lsl #2]
    3544:	08cd      	lsrs	r5, r1, #3
    3546:	008f      	lsls	r7, r1, #2
    3548:	ea83 0606 	eor.w	r6, r3, r6
    354c:	ea85 1503 	eor.w	r5, r5, r3, lsl #4
    3550:	ea87 1753 	eor.w	r7, r7, r3, lsr #5
    3554:	ea80 0301 	eor.w	r3, r0, r1
    3558:	18f1      	adds	r1, r6, r3
    355a:	19eb      	adds	r3, r5, r7
    355c:	4059      	eors	r1, r3
    355e:	190b      	adds	r3, r1, r4
    3560:	9c02      	ldr	r4, [sp, #8]
    3562:	f8cb 3000 	str.w	r3, [fp]
    3566:	42a0      	cmp	r0, r4
    3568:	d00f      	beq.n	358a <xxtea_encode+0x1e2>
    356a:	f100 401f 	add.w	r0, r0, #2667577344	; 0x9f000000
    356e:	f5a0 0548 	sub.w	r5, r0, #13107200	; 0xc80000
    3572:	f5a5 4006 	sub.w	r0, r5, #34304	; 0x8600
    3576:	3847      	subs	r0, #71	; 0x47
    3578:	461c      	mov	r4, r3
    357a:	f3c0 0681 	ubfx	r6, r0, #2, #2
    357e:	f1bc 0f00 	cmp.w	ip, #0
    3582:	f47f af7a 	bne.w	347a <xxtea_encode+0xd2>
    3586:	4665      	mov	r5, ip
    3588:	e7d6      	b.n	3538 <xxtea_encode+0x190>
    358a:	9801      	ldr	r0, [sp, #4]
    358c:	2800      	cmp	r0, #0
    358e:	d03a      	beq.n	3606 <xxtea_encode+0x25e>
    3590:	4604      	mov	r4, r0
    3592:	2201      	movs	r2, #1
    3594:	1e41      	subs	r1, r0, #1
    3596:	4653      	mov	r3, sl
    3598:	42a2      	cmp	r2, r4
    359a:	f8da 0000 	ldr.w	r0, [sl]
    359e:	f001 0103 	and.w	r1, r1, #3
    35a2:	ba00      	rev	r0, r0
    35a4:	f843 0b04 	str.w	r0, [r3], #4
    35a8:	d02d      	beq.n	3606 <xxtea_encode+0x25e>
    35aa:	2900      	cmp	r1, #0
    35ac:	d031      	beq.n	3612 <xxtea_encode+0x26a>
    35ae:	2901      	cmp	r1, #1
    35b0:	d00b      	beq.n	35ca <xxtea_encode+0x222>
    35b2:	2902      	cmp	r1, #2
    35b4:	d004      	beq.n	35c0 <xxtea_encode+0x218>
    35b6:	6818      	ldr	r0, [r3, #0]
    35b8:	2202      	movs	r2, #2
    35ba:	ba01      	rev	r1, r0
    35bc:	f843 1b04 	str.w	r1, [r3], #4
    35c0:	6818      	ldr	r0, [r3, #0]
    35c2:	3201      	adds	r2, #1
    35c4:	ba01      	rev	r1, r0
    35c6:	f843 1b04 	str.w	r1, [r3], #4
    35ca:	6818      	ldr	r0, [r3, #0]
    35cc:	ba01      	rev	r1, r0
    35ce:	9801      	ldr	r0, [sp, #4]
    35d0:	3201      	adds	r2, #1
    35d2:	4282      	cmp	r2, r0
    35d4:	f843 1b04 	str.w	r1, [r3], #4
    35d8:	d015      	beq.n	3606 <xxtea_encode+0x25e>
    35da:	4604      	mov	r4, r0
    35dc:	469c      	mov	ip, r3
    35de:	6818      	ldr	r0, [r3, #0]
    35e0:	ba01      	rev	r1, r0
    35e2:	f84c 1b04 	str.w	r1, [ip], #4
    35e6:	6858      	ldr	r0, [r3, #4]
    35e8:	3204      	adds	r2, #4
    35ea:	ba01      	rev	r1, r0
    35ec:	f8cc 1000 	str.w	r1, [ip]
    35f0:	f8dc 0004 	ldr.w	r0, [ip, #4]
    35f4:	68d9      	ldr	r1, [r3, #12]
    35f6:	ba00      	rev	r0, r0
    35f8:	6098      	str	r0, [r3, #8]
    35fa:	3310      	adds	r3, #16
    35fc:	42a2      	cmp	r2, r4
    35fe:	ba08      	rev	r0, r1
    3600:	f843 0c04 	str.w	r0, [r3, #-4]
    3604:	d1ea      	bne.n	35dc <xxtea_encode+0x234>
    3606:	b004      	add	sp, #16
    3608:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
    360c:	4770      	bx	lr
    360e:	9d01      	ldr	r5, [sp, #4]
    3610:	e6fe      	b.n	3410 <xxtea_encode+0x68>
    3612:	9c01      	ldr	r4, [sp, #4]
    3614:	e7e2      	b.n	35dc <xxtea_encode+0x234>
    3616:	bf00      	nop
    3618:	9e3779b9 	.word	0x9e3779b9
    361c:	b54cda56 	.word	0xb54cda56

00003620 <xxtea_decode>:
    3620:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
    3624:	b084      	sub	sp, #16
    3626:	9001      	str	r0, [sp, #4]
    3628:	9102      	str	r1, [sp, #8]
    362a:	2800      	cmp	r0, #0
    362c:	f000 813a 	beq.w	38a4 <xxtea_decode+0x284>
    3630:	2a00      	cmp	r2, #0
    3632:	f000 8137 	beq.w	38a4 <xxtea_decode+0x284>
    3636:	f101 3bff 	add.w	fp, r1, #4294967295
    363a:	2900      	cmp	r1, #0
    363c:	d039      	beq.n	36b2 <xxtea_decode+0x92>
    363e:	6804      	ldr	r4, [r0, #0]
    3640:	ba25      	rev	r5, r4
    3642:	9c02      	ldr	r4, [sp, #8]
    3644:	2101      	movs	r1, #1
    3646:	4603      	mov	r3, r0
    3648:	42a1      	cmp	r1, r4
    364a:	f00b 0003 	and.w	r0, fp, #3
    364e:	f843 5b04 	str.w	r5, [r3], #4
    3652:	d02e      	beq.n	36b2 <xxtea_decode+0x92>
    3654:	2800      	cmp	r0, #0
    3656:	f000 8129 	beq.w	38ac <xxtea_decode+0x28c>
    365a:	2801      	cmp	r0, #1
    365c:	d00b      	beq.n	3676 <xxtea_decode+0x56>
    365e:	2802      	cmp	r0, #2
    3660:	d004      	beq.n	366c <xxtea_decode+0x4c>
    3662:	6818      	ldr	r0, [r3, #0]
    3664:	2102      	movs	r1, #2
    3666:	ba04      	rev	r4, r0
    3668:	f843 4b04 	str.w	r4, [r3], #4
    366c:	681c      	ldr	r4, [r3, #0]
    366e:	3101      	adds	r1, #1
    3670:	ba25      	rev	r5, r4
    3672:	f843 5b04 	str.w	r5, [r3], #4
    3676:	681d      	ldr	r5, [r3, #0]
    3678:	ba28      	rev	r0, r5
    367a:	f843 0b04 	str.w	r0, [r3], #4
    367e:	9802      	ldr	r0, [sp, #8]
    3680:	3101      	adds	r1, #1
    3682:	4281      	cmp	r1, r0
    3684:	d015      	beq.n	36b2 <xxtea_decode+0x92>
    3686:	4605      	mov	r5, r0
    3688:	469c      	mov	ip, r3
    368a:	681c      	ldr	r4, [r3, #0]
    368c:	ba20      	rev	r0, r4
    368e:	f84c 0b04 	str.w	r0, [ip], #4
    3692:	685c      	ldr	r4, [r3, #4]
    3694:	3104      	adds	r1, #4
    3696:	ba20      	rev	r0, r4
    3698:	f8cc 0000 	str.w	r0, [ip]
    369c:	f8dc 4004 	ldr.w	r4, [ip, #4]
    36a0:	68d8      	ldr	r0, [r3, #12]
    36a2:	ba24      	rev	r4, r4
    36a4:	609c      	str	r4, [r3, #8]
    36a6:	3310      	adds	r3, #16
    36a8:	42a9      	cmp	r1, r5
    36aa:	ba00      	rev	r0, r0
    36ac:	f843 0c04 	str.w	r0, [r3, #-4]
    36b0:	d1ea      	bne.n	3688 <xxtea_decode+0x68>
    36b2:	9d02      	ldr	r5, [sp, #8]
    36b4:	2434      	movs	r4, #52	; 0x34
    36b6:	fbb4 f0f5 	udiv	r0, r4, r5
    36ba:	497e      	ldr	r1, [pc, #504]	; (38b4 <xxtea_decode+0x294>)
    36bc:	1d83      	adds	r3, r0, #6
    36be:	fb01 f003 	mul.w	r0, r1, r3
    36c2:	9b01      	ldr	r3, [sp, #4]
    36c4:	6819      	ldr	r1, [r3, #0]
    36c6:	2800      	cmp	r0, #0
    36c8:	f000 80b0 	beq.w	382c <xxtea_decode+0x20c>
    36cc:	eb03 068b 	add.w	r6, r3, fp, lsl #2
    36d0:	9603      	str	r6, [sp, #12]
    36d2:	460c      	mov	r4, r1
    36d4:	eb03 0a85 	add.w	sl, r3, r5, lsl #2
    36d8:	f3c0 0681 	ubfx	r6, r0, #2, #2
    36dc:	f1bb 0f00 	cmp.w	fp, #0
    36e0:	f000 8084 	beq.w	37ec <xxtea_decode+0x1cc>
    36e4:	f00b 0503 	and.w	r5, fp, #3
    36e8:	f85a 3c08 	ldr.w	r3, [sl, #-8]
    36ec:	ea85 0806 	eor.w	r8, r5, r6
    36f0:	f852 7028 	ldr.w	r7, [r2, r8, lsl #2]
    36f4:	ea4f 1c53 	mov.w	ip, r3, lsr #5
    36f8:	011c      	lsls	r4, r3, #4
    36fa:	ea84 04d1 	eor.w	r4, r4, r1, lsr #3
    36fe:	ea8c 0881 	eor.w	r8, ip, r1, lsl #2
    3702:	407b      	eors	r3, r7
    3704:	ea81 0500 	eor.w	r5, r1, r0
    3708:	1959      	adds	r1, r3, r5
    370a:	eb04 0c08 	add.w	ip, r4, r8
    370e:	f85a 7c04 	ldr.w	r7, [sl, #-4]
    3712:	f10b 38ff 	add.w	r8, fp, #4294967295
    3716:	ea81 050c 	eor.w	r5, r1, ip
    371a:	1b79      	subs	r1, r7, r5
    371c:	4653      	mov	r3, sl
    371e:	4644      	mov	r4, r8
    3720:	f008 0501 	and.w	r5, r8, #1
    3724:	f843 1d04 	str.w	r1, [r3, #-4]!
    3728:	2c00      	cmp	r4, #0
    372a:	d05d      	beq.n	37e8 <xxtea_decode+0x1c8>
    372c:	b1f5      	cbz	r5, 376c <xxtea_decode+0x14c>
    372e:	f008 0c03 	and.w	ip, r8, #3
    3732:	f853 5c08 	ldr.w	r5, [r3, #-8]
    3736:	ea8c 0906 	eor.w	r9, ip, r6
    373a:	f852 c029 	ldr.w	ip, [r2, r9, lsl #2]
    373e:	012f      	lsls	r7, r5, #4
    3740:	ea4f 1855 	mov.w	r8, r5, lsr #5
    3744:	ea87 07d1 	eor.w	r7, r7, r1, lsr #3
    3748:	ea81 0900 	eor.w	r9, r1, r0
    374c:	ea88 0881 	eor.w	r8, r8, r1, lsl #2
    3750:	ea85 050c 	eor.w	r5, r5, ip
    3754:	f853 1c04 	ldr.w	r1, [r3, #-4]
    3758:	eb05 0c09 	add.w	ip, r5, r9
    375c:	44b8      	add	r8, r7
    375e:	ea8c 0708 	eor.w	r7, ip, r8
    3762:	1bc9      	subs	r1, r1, r7
    3764:	3c01      	subs	r4, #1
    3766:	f843 1d04 	str.w	r1, [r3, #-4]!
    376a:	d03d      	beq.n	37e8 <xxtea_decode+0x1c8>
    376c:	f004 0803 	and.w	r8, r4, #3
    3770:	f853 5c08 	ldr.w	r5, [r3, #-8]
    3774:	ea88 0c06 	eor.w	ip, r8, r6
    3778:	f852 802c 	ldr.w	r8, [r2, ip, lsl #2]
    377c:	012f      	lsls	r7, r5, #4
    377e:	ea4f 1955 	mov.w	r9, r5, lsr #5
    3782:	ea81 0c00 	eor.w	ip, r1, r0
    3786:	ea87 07d1 	eor.w	r7, r7, r1, lsr #3
    378a:	ea89 0181 	eor.w	r1, r9, r1, lsl #2
    378e:	ea85 0908 	eor.w	r9, r5, r8
    3792:	eb09 080c 	add.w	r8, r9, ip
    3796:	f853 5c04 	ldr.w	r5, [r3, #-4]
    379a:	eb07 0901 	add.w	r9, r7, r1
    379e:	ea88 0709 	eor.w	r7, r8, r9
    37a2:	1bef      	subs	r7, r5, r7
    37a4:	3c01      	subs	r4, #1
    37a6:	f843 7d04 	str.w	r7, [r3, #-4]!
    37aa:	f004 0c03 	and.w	ip, r4, #3
    37ae:	f853 5c08 	ldr.w	r5, [r3, #-8]
    37b2:	ea8c 0806 	eor.w	r8, ip, r6
    37b6:	f852 1028 	ldr.w	r1, [r2, r8, lsl #2]
    37ba:	ea4f 1c55 	mov.w	ip, r5, lsr #5
    37be:	ea4f 1905 	mov.w	r9, r5, lsl #4
    37c2:	ea87 0800 	eor.w	r8, r7, r0
    37c6:	404d      	eors	r5, r1
    37c8:	ea89 09d7 	eor.w	r9, r9, r7, lsr #3
    37cc:	ea8c 0787 	eor.w	r7, ip, r7, lsl #2
    37d0:	f853 1c04 	ldr.w	r1, [r3, #-4]
    37d4:	eb05 0c08 	add.w	ip, r5, r8
    37d8:	44b9      	add	r9, r7
    37da:	ea8c 0709 	eor.w	r7, ip, r9
    37de:	1bc9      	subs	r1, r1, r7
    37e0:	3c01      	subs	r4, #1
    37e2:	f843 1d04 	str.w	r1, [r3, #-4]!
    37e6:	d1c1      	bne.n	376c <xxtea_decode+0x14c>
    37e8:	9b01      	ldr	r3, [sp, #4]
    37ea:	681c      	ldr	r4, [r3, #0]
    37ec:	9f03      	ldr	r7, [sp, #12]
    37ee:	ea81 0500 	eor.w	r5, r1, r0
    37f2:	683b      	ldr	r3, [r7, #0]
    37f4:	f852 7026 	ldr.w	r7, [r2, r6, lsl #2]
    37f8:	ea4f 1c53 	mov.w	ip, r3, lsr #5
    37fc:	011e      	lsls	r6, r3, #4
    37fe:	ea86 06d1 	eor.w	r6, r6, r1, lsr #3
    3802:	407b      	eors	r3, r7
    3804:	ea8c 0181 	eor.w	r1, ip, r1, lsl #2
    3808:	f100 40c2 	add.w	r0, r0, #1627389952	; 0x61000000
    380c:	eb06 0c01 	add.w	ip, r6, r1
    3810:	18ed      	adds	r5, r5, r3
    3812:	f500 0048 	add.w	r0, r0, #13107200	; 0xc80000
    3816:	ea8c 0105 	eor.w	r1, ip, r5
    381a:	1a61      	subs	r1, r4, r1
    381c:	f500 4006 	add.w	r0, r0, #34304	; 0x8600
    3820:	9c01      	ldr	r4, [sp, #4]
    3822:	3047      	adds	r0, #71	; 0x47
    3824:	6021      	str	r1, [r4, #0]
    3826:	b108      	cbz	r0, 382c <xxtea_decode+0x20c>
    3828:	460c      	mov	r4, r1
    382a:	e755      	b.n	36d8 <xxtea_decode+0xb8>
    382c:	9c02      	ldr	r4, [sp, #8]
    382e:	2c00      	cmp	r4, #0
    3830:	d038      	beq.n	38a4 <xxtea_decode+0x284>
    3832:	9b01      	ldr	r3, [sp, #4]
    3834:	2201      	movs	r2, #1
    3836:	1e61      	subs	r1, r4, #1
    3838:	42a2      	cmp	r2, r4
    383a:	6818      	ldr	r0, [r3, #0]
    383c:	f001 0103 	and.w	r1, r1, #3
    3840:	ba00      	rev	r0, r0
    3842:	f843 0b04 	str.w	r0, [r3], #4
    3846:	d02d      	beq.n	38a4 <xxtea_decode+0x284>
    3848:	2900      	cmp	r1, #0
    384a:	d031      	beq.n	38b0 <xxtea_decode+0x290>
    384c:	2901      	cmp	r1, #1
    384e:	d00b      	beq.n	3868 <xxtea_decode+0x248>
    3850:	2902      	cmp	r1, #2
    3852:	d004      	beq.n	385e <xxtea_decode+0x23e>
    3854:	6819      	ldr	r1, [r3, #0]
    3856:	2202      	movs	r2, #2
    3858:	ba0d      	rev	r5, r1
    385a:	f843 5b04 	str.w	r5, [r3], #4
    385e:	681d      	ldr	r5, [r3, #0]
    3860:	3201      	adds	r2, #1
    3862:	ba28      	rev	r0, r5
    3864:	f843 0b04 	str.w	r0, [r3], #4
    3868:	9d02      	ldr	r5, [sp, #8]
    386a:	3201      	adds	r2, #1
    386c:	42aa      	cmp	r2, r5
    386e:	6818      	ldr	r0, [r3, #0]
    3870:	ba01      	rev	r1, r0
    3872:	f843 1b04 	str.w	r1, [r3], #4
    3876:	d015      	beq.n	38a4 <xxtea_decode+0x284>
    3878:	462c      	mov	r4, r5
    387a:	469c      	mov	ip, r3
    387c:	6818      	ldr	r0, [r3, #0]
    387e:	ba01      	rev	r1, r0
    3880:	f84c 1b04 	str.w	r1, [ip], #4
    3884:	6858      	ldr	r0, [r3, #4]
    3886:	3204      	adds	r2, #4
    3888:	ba01      	rev	r1, r0
    388a:	f8cc 1000 	str.w	r1, [ip]
    388e:	f8dc 0004 	ldr.w	r0, [ip, #4]
    3892:	68d9      	ldr	r1, [r3, #12]
    3894:	ba00      	rev	r0, r0
    3896:	6098      	str	r0, [r3, #8]
    3898:	3310      	adds	r3, #16
    389a:	42a2      	cmp	r2, r4
    389c:	ba08      	rev	r0, r1
    389e:	f843 0c04 	str.w	r0, [r3, #-4]
    38a2:	d1ea      	bne.n	387a <xxtea_decode+0x25a>
    38a4:	b004      	add	sp, #16
    38a6:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
    38aa:	4770      	bx	lr
    38ac:	9d02      	ldr	r5, [sp, #8]
    38ae:	e6eb      	b.n	3688 <xxtea_decode+0x68>
    38b0:	9c02      	ldr	r4, [sp, #8]
    38b2:	e7e2      	b.n	387a <xxtea_decode+0x25a>
    38b4:	9e3779b9 	.word	0x9e3779b9

000038b8 <tiny_vsprintf>:
    38b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    38bc:	7803      	ldrb	r3, [r0, #0]
    38be:	b087      	sub	sp, #28
    38c0:	4604      	mov	r4, r0
    38c2:	4688      	mov	r8, r1
    38c4:	2b00      	cmp	r3, #0
    38c6:	f000 80f1 	beq.w	3aac <tiny_vsprintf+0x1f4>
    38ca:	2b25      	cmp	r3, #37	; 0x25
    38cc:	4618      	mov	r0, r3
    38ce:	4f7d      	ldr	r7, [pc, #500]	; (3ac4 <tiny_vsprintf+0x20c>)
    38d0:	d00b      	beq.n	38ea <tiny_vsprintf+0x32>
    38d2:	2b0a      	cmp	r3, #10
    38d4:	d01d      	beq.n	3912 <tiny_vsprintf+0x5a>
    38d6:	f7fe f9c7 	bl	1c68 <cIO_putchchar>
    38da:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    38de:	2b00      	cmp	r3, #0
    38e0:	f000 80e4 	beq.w	3aac <tiny_vsprintf+0x1f4>
    38e4:	2b25      	cmp	r3, #37	; 0x25
    38e6:	4618      	mov	r0, r3
    38e8:	d1f3      	bne.n	38d2 <tiny_vsprintf+0x1a>
    38ea:	1c62      	adds	r2, r4, #1
    38ec:	2600      	movs	r6, #0
    38ee:	4614      	mov	r4, r2
    38f0:	f812 3b01 	ldrb.w	r3, [r2], #1
    38f4:	f1a3 0120 	sub.w	r1, r3, #32
    38f8:	2910      	cmp	r1, #16
    38fa:	d81b      	bhi.n	3934 <tiny_vsprintf+0x7c>
    38fc:	e8df f001 	tbb	[pc, r1]
    3900:	1a1a1a17 	.word	0x1a1a1a17
    3904:	1a1a1a1a 	.word	0x1a1a1a1a
    3908:	141a1a1a 	.word	0x141a1a1a
    390c:	1a1a111a 	.word	0x1a1a111a
    3910:	0e          	.byte	0x0e
    3911:	00          	.byte	0x00
    3912:	200d      	movs	r0, #13
    3914:	f7fe f9a8 	bl	1c68 <cIO_putchchar>
    3918:	7820      	ldrb	r0, [r4, #0]
    391a:	e7dc      	b.n	38d6 <tiny_vsprintf+0x1e>
    391c:	f046 0601 	orr.w	r6, r6, #1
    3920:	e7e5      	b.n	38ee <tiny_vsprintf+0x36>
    3922:	f046 0610 	orr.w	r6, r6, #16
    3926:	e7e2      	b.n	38ee <tiny_vsprintf+0x36>
    3928:	f046 0604 	orr.w	r6, r6, #4
    392c:	e7df      	b.n	38ee <tiny_vsprintf+0x36>
    392e:	f046 0608 	orr.w	r6, r6, #8
    3932:	e7dc      	b.n	38ee <tiny_vsprintf+0x36>
    3934:	f1a3 0030 	sub.w	r0, r3, #48	; 0x30
    3938:	b2c2      	uxtb	r2, r0
    393a:	2a09      	cmp	r2, #9
    393c:	f200 8095 	bhi.w	3a6a <tiny_vsprintf+0x1b2>
    3940:	1c62      	adds	r2, r4, #1
    3942:	2500      	movs	r5, #0
    3944:	eb05 0585 	add.w	r5, r5, r5, lsl #2
    3948:	eb03 0545 	add.w	r5, r3, r5, lsl #1
    394c:	4614      	mov	r4, r2
    394e:	f812 3b01 	ldrb.w	r3, [r2], #1
    3952:	3d30      	subs	r5, #48	; 0x30
    3954:	f1a3 0e30 	sub.w	lr, r3, #48	; 0x30
    3958:	fa5f fc8e 	uxtb.w	ip, lr
    395c:	f1bc 0f09 	cmp.w	ip, #9
    3960:	d9f0      	bls.n	3944 <tiny_vsprintf+0x8c>
    3962:	2b2e      	cmp	r3, #46	; 0x2e
    3964:	f000 8089 	beq.w	3a7a <tiny_vsprintf+0x1c2>
    3968:	f04f 31ff 	mov.w	r1, #4294967295
    396c:	f1a3 0e4c 	sub.w	lr, r3, #76	; 0x4c
    3970:	f1be 0f2e 	cmp.w	lr, #46	; 0x2e
    3974:	f200 80a8 	bhi.w	3ac8 <tiny_vsprintf+0x210>
    3978:	e8df f00e 	tbb	[pc, lr]
    397c:	a6a6a618 	.word	0xa6a6a618
    3980:	a6a6a6a6 	.word	0xa6a6a6a6
    3984:	a6a6a6a6 	.word	0xa6a6a6a6
    3988:	a618a6a6 	.word	0xa618a6a6
    398c:	a6a6a6a6 	.word	0xa6a6a6a6
    3990:	a6a6a6a6 	.word	0xa6a6a6a6
    3994:	a6a6a6a6 	.word	0xa6a6a6a6
    3998:	a6a6a618 	.word	0xa6a6a618
    399c:	a6a6a618 	.word	0xa6a6a618
    39a0:	a6a618a6 	.word	0xa6a618a6
    39a4:	a6a6a618 	.word	0xa6a6a618
    39a8:	a6a6      	.short	0xa6a6
    39aa:	18          	.byte	0x18
    39ab:	00          	.byte	0x00
    39ac:	2b6c      	cmp	r3, #108	; 0x6c
    39ae:	4618      	mov	r0, r3
    39b0:	d07f      	beq.n	3ab2 <tiny_vsprintf+0x1fa>
    39b2:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    39b6:	3b25      	subs	r3, #37	; 0x25
    39b8:	2b53      	cmp	r3, #83	; 0x53
    39ba:	f200 823d 	bhi.w	3e38 <tiny_vsprintf+0x580>
    39be:	e8df f013 	tbh	[pc, r3, lsl #1]
    39c2:	0237      	.short	0x0237
    39c4:	023b023b 	.word	0x023b023b
    39c8:	023b023b 	.word	0x023b023b
    39cc:	023b023b 	.word	0x023b023b
    39d0:	023b023b 	.word	0x023b023b
    39d4:	023b023b 	.word	0x023b023b
    39d8:	023b023b 	.word	0x023b023b
    39dc:	023b023b 	.word	0x023b023b
    39e0:	023b023b 	.word	0x023b023b
    39e4:	023b023b 	.word	0x023b023b
    39e8:	023b023b 	.word	0x023b023b
    39ec:	023b023b 	.word	0x023b023b
    39f0:	023b023b 	.word	0x023b023b
    39f4:	023b023b 	.word	0x023b023b
    39f8:	023b023b 	.word	0x023b023b
    39fc:	023b023b 	.word	0x023b023b
    3a00:	023b023b 	.word	0x023b023b
    3a04:	023b023b 	.word	0x023b023b
    3a08:	023b023b 	.word	0x023b023b
    3a0c:	023b023b 	.word	0x023b023b
    3a10:	023b023b 	.word	0x023b023b
    3a14:	023b023b 	.word	0x023b023b
    3a18:	023b023b 	.word	0x023b023b
    3a1c:	023b023b 	.word	0x023b023b
    3a20:	023b023b 	.word	0x023b023b
    3a24:	023b023b 	.word	0x023b023b
    3a28:	023b0230 	.word	0x023b0230
    3a2c:	023b023b 	.word	0x023b023b
    3a30:	023b023b 	.word	0x023b023b
    3a34:	023b023b 	.word	0x023b023b
    3a38:	023b023b 	.word	0x023b023b
    3a3c:	01fb023b 	.word	0x01fb023b
    3a40:	023b0247 	.word	0x023b0247
    3a44:	023b023b 	.word	0x023b023b
    3a48:	0247023b 	.word	0x0247023b
    3a4c:	023b023b 	.word	0x023b023b
    3a50:	023b023b 	.word	0x023b023b
    3a54:	0244023b 	.word	0x0244023b
    3a58:	023b023b 	.word	0x023b023b
    3a5c:	024c023b 	.word	0x024c023b
    3a60:	01f1023b 	.word	0x01f1023b
    3a64:	023b023b 	.word	0x023b023b
    3a68:	008c      	.short	0x008c
    3a6a:	2b2a      	cmp	r3, #42	; 0x2a
    3a6c:	f000 82c8 	beq.w	4000 <tiny_vsprintf+0x748>
    3a70:	2b2e      	cmp	r3, #46	; 0x2e
    3a72:	f04f 35ff 	mov.w	r5, #4294967295
    3a76:	f47f af77 	bne.w	3968 <tiny_vsprintf+0xb0>
    3a7a:	7863      	ldrb	r3, [r4, #1]
    3a7c:	1c60      	adds	r0, r4, #1
    3a7e:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
    3a82:	b2d1      	uxtb	r1, r2
    3a84:	2909      	cmp	r1, #9
    3a86:	d822      	bhi.n	3ace <tiny_vsprintf+0x216>
    3a88:	1ca2      	adds	r2, r4, #2
    3a8a:	2100      	movs	r1, #0
    3a8c:	eb01 0481 	add.w	r4, r1, r1, lsl #2
    3a90:	eb03 0144 	add.w	r1, r3, r4, lsl #1
    3a94:	4614      	mov	r4, r2
    3a96:	f812 3b01 	ldrb.w	r3, [r2], #1
    3a9a:	3930      	subs	r1, #48	; 0x30
    3a9c:	f1a3 0c30 	sub.w	ip, r3, #48	; 0x30
    3aa0:	fa5f f08c 	uxtb.w	r0, ip
    3aa4:	2809      	cmp	r0, #9
    3aa6:	d9f1      	bls.n	3a8c <tiny_vsprintf+0x1d4>
    3aa8:	7823      	ldrb	r3, [r4, #0]
    3aaa:	e75f      	b.n	396c <tiny_vsprintf+0xb4>
    3aac:	b007      	add	sp, #28
    3aae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    3ab2:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    3ab6:	2b6c      	cmp	r3, #108	; 0x6c
    3ab8:	f47f af7d 	bne.w	39b6 <tiny_vsprintf+0xfe>
    3abc:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    3ac0:	2071      	movs	r0, #113	; 0x71
    3ac2:	e778      	b.n	39b6 <tiny_vsprintf+0xfe>
    3ac4:	10000944 	.word	0x10000944
    3ac8:	f04f 30ff 	mov.w	r0, #4294967295
    3acc:	e773      	b.n	39b6 <tiny_vsprintf+0xfe>
    3ace:	2b2a      	cmp	r3, #42	; 0x2a
    3ad0:	f000 82f1 	beq.w	40b6 <tiny_vsprintf+0x7fe>
    3ad4:	4604      	mov	r4, r0
    3ad6:	2100      	movs	r1, #0
    3ad8:	e748      	b.n	396c <tiny_vsprintf+0xb4>
    3ada:	f04f 0a10 	mov.w	sl, #16
    3ade:	f8cd a004 	str.w	sl, [sp, #4]
    3ae2:	286c      	cmp	r0, #108	; 0x6c
    3ae4:	d006      	beq.n	3af4 <tiny_vsprintf+0x23c>
    3ae6:	285a      	cmp	r0, #90	; 0x5a
    3ae8:	d004      	beq.n	3af4 <tiny_vsprintf+0x23c>
    3aea:	287a      	cmp	r0, #122	; 0x7a
    3aec:	d002      	beq.n	3af4 <tiny_vsprintf+0x23c>
    3aee:	2868      	cmp	r0, #104	; 0x68
    3af0:	f000 82d2 	beq.w	4098 <tiny_vsprintf+0x7e0>
    3af4:	f8d8 0000 	ldr.w	r0, [r8]
    3af8:	f108 0804 	add.w	r8, r8, #4
    3afc:	4aab      	ldr	r2, [pc, #684]	; (3dac <tiny_vsprintf+0x4f4>)
    3afe:	f8df e2b0 	ldr.w	lr, [pc, #688]	; 3db0 <tiny_vsprintf+0x4f8>
    3b02:	f016 0f40 	tst.w	r6, #64	; 0x40
    3b06:	bf18      	it	ne
    3b08:	4696      	movne	lr, r2
    3b0a:	f016 0b10 	ands.w	fp, r6, #16
    3b0e:	bf1b      	ittet	ne
    3b10:	f026 0601 	bicne.w	r6, r6, #1
    3b14:	f006 0210 	andne.w	r2, r6, #16
    3b18:	f8cd b00c 	streq.w	fp, [sp, #12]
    3b1c:	9203      	strne	r2, [sp, #12]
    3b1e:	f016 0f01 	tst.w	r6, #1
    3b22:	bf0c      	ite	eq
    3b24:	f04f 0b20 	moveq.w	fp, #32
    3b28:	f04f 0b30 	movne.w	fp, #48	; 0x30
    3b2c:	f016 0c02 	ands.w	ip, r6, #2
    3b30:	4603      	mov	r3, r0
    3b32:	f000 824a 	beq.w	3fca <tiny_vsprintf+0x712>
    3b36:	2800      	cmp	r0, #0
    3b38:	f2c0 82b8 	blt.w	40ac <tiny_vsprintf+0x7f4>
    3b3c:	f016 0f04 	tst.w	r6, #4
    3b40:	f040 826b 	bne.w	401a <tiny_vsprintf+0x762>
    3b44:	f016 0c08 	ands.w	ip, r6, #8
    3b48:	f000 823f 	beq.w	3fca <tiny_vsprintf+0x712>
    3b4c:	2220      	movs	r2, #32
    3b4e:	3d01      	subs	r5, #1
    3b50:	9204      	str	r2, [sp, #16]
    3b52:	2800      	cmp	r0, #0
    3b54:	f040 823e 	bne.w	3fd4 <tiny_vsprintf+0x71c>
    3b58:	2330      	movs	r3, #48	; 0x30
    3b5a:	f8df a258 	ldr.w	sl, [pc, #600]	; 3db4 <tiny_vsprintf+0x4fc>
    3b5e:	703b      	strb	r3, [r7, #0]
    3b60:	9001      	str	r0, [sp, #4]
    3b62:	f04f 0901 	mov.w	r9, #1
    3b66:	4589      	cmp	r9, r1
    3b68:	bfa8      	it	ge
    3b6a:	4649      	movge	r1, r9
    3b6c:	f016 0f11 	tst.w	r6, #17
    3b70:	9102      	str	r1, [sp, #8]
    3b72:	ebc1 0505 	rsb	r5, r1, r5
    3b76:	d133      	bne.n	3be0 <tiny_vsprintf+0x328>
    3b78:	f105 3eff 	add.w	lr, r5, #4294967295
    3b7c:	2d00      	cmp	r5, #0
    3b7e:	f8cd e014 	str.w	lr, [sp, #20]
    3b82:	f340 82a7 	ble.w	40d4 <tiny_vsprintf+0x81c>
    3b86:	2020      	movs	r0, #32
    3b88:	f7fe f86e 	bl	1c68 <cIO_putchchar>
    3b8c:	2601      	movs	r6, #1
    3b8e:	9905      	ldr	r1, [sp, #20]
    3b90:	42ae      	cmp	r6, r5
    3b92:	f001 0303 	and.w	r3, r1, #3
    3b96:	d021      	beq.n	3bdc <tiny_vsprintf+0x324>
    3b98:	b18b      	cbz	r3, 3bbe <tiny_vsprintf+0x306>
    3b9a:	2b01      	cmp	r3, #1
    3b9c:	d009      	beq.n	3bb2 <tiny_vsprintf+0x2fa>
    3b9e:	2b02      	cmp	r3, #2
    3ba0:	d003      	beq.n	3baa <tiny_vsprintf+0x2f2>
    3ba2:	2020      	movs	r0, #32
    3ba4:	f7fe f860 	bl	1c68 <cIO_putchchar>
    3ba8:	2602      	movs	r6, #2
    3baa:	2020      	movs	r0, #32
    3bac:	f7fe f85c 	bl	1c68 <cIO_putchchar>
    3bb0:	3601      	adds	r6, #1
    3bb2:	2020      	movs	r0, #32
    3bb4:	3601      	adds	r6, #1
    3bb6:	f7fe f857 	bl	1c68 <cIO_putchchar>
    3bba:	42ae      	cmp	r6, r5
    3bbc:	d00e      	beq.n	3bdc <tiny_vsprintf+0x324>
    3bbe:	2020      	movs	r0, #32
    3bc0:	f7fe f852 	bl	1c68 <cIO_putchchar>
    3bc4:	2020      	movs	r0, #32
    3bc6:	f7fe f84f 	bl	1c68 <cIO_putchchar>
    3bca:	2020      	movs	r0, #32
    3bcc:	f7fe f84c 	bl	1c68 <cIO_putchchar>
    3bd0:	3604      	adds	r6, #4
    3bd2:	2020      	movs	r0, #32
    3bd4:	f7fe f848 	bl	1c68 <cIO_putchchar>
    3bd8:	42ae      	cmp	r6, r5
    3bda:	d1f0      	bne.n	3bbe <tiny_vsprintf+0x306>
    3bdc:	9e05      	ldr	r6, [sp, #20]
    3bde:	1b75      	subs	r5, r6, r5
    3be0:	9b04      	ldr	r3, [sp, #16]
    3be2:	2b00      	cmp	r3, #0
    3be4:	f040 8215 	bne.w	4012 <tiny_vsprintf+0x75a>
    3be8:	9b03      	ldr	r3, [sp, #12]
    3bea:	2b00      	cmp	r3, #0
    3bec:	d131      	bne.n	3c52 <tiny_vsprintf+0x39a>
    3bee:	1e6b      	subs	r3, r5, #1
    3bf0:	2d00      	cmp	r5, #0
    3bf2:	f340 826d 	ble.w	40d0 <tiny_vsprintf+0x818>
    3bf6:	f003 0203 	and.w	r2, r3, #3
    3bfa:	4658      	mov	r0, fp
    3bfc:	2601      	movs	r6, #1
    3bfe:	9200      	str	r2, [sp, #0]
    3c00:	f7fe f832 	bl	1c68 <cIO_putchchar>
    3c04:	42ae      	cmp	r6, r5
    3c06:	9b00      	ldr	r3, [sp, #0]
    3c08:	d021      	beq.n	3c4e <tiny_vsprintf+0x396>
    3c0a:	b18b      	cbz	r3, 3c30 <tiny_vsprintf+0x378>
    3c0c:	2b01      	cmp	r3, #1
    3c0e:	d009      	beq.n	3c24 <tiny_vsprintf+0x36c>
    3c10:	2b02      	cmp	r3, #2
    3c12:	d003      	beq.n	3c1c <tiny_vsprintf+0x364>
    3c14:	4658      	mov	r0, fp
    3c16:	f7fe f827 	bl	1c68 <cIO_putchchar>
    3c1a:	2602      	movs	r6, #2
    3c1c:	4658      	mov	r0, fp
    3c1e:	f7fe f823 	bl	1c68 <cIO_putchchar>
    3c22:	3601      	adds	r6, #1
    3c24:	4658      	mov	r0, fp
    3c26:	3601      	adds	r6, #1
    3c28:	f7fe f81e 	bl	1c68 <cIO_putchchar>
    3c2c:	42ae      	cmp	r6, r5
    3c2e:	d00e      	beq.n	3c4e <tiny_vsprintf+0x396>
    3c30:	4658      	mov	r0, fp
    3c32:	f7fe f819 	bl	1c68 <cIO_putchchar>
    3c36:	4658      	mov	r0, fp
    3c38:	f7fe f816 	bl	1c68 <cIO_putchchar>
    3c3c:	4658      	mov	r0, fp
    3c3e:	f7fe f813 	bl	1c68 <cIO_putchchar>
    3c42:	3604      	adds	r6, #4
    3c44:	4658      	mov	r0, fp
    3c46:	f7fe f80f 	bl	1c68 <cIO_putchchar>
    3c4a:	42ae      	cmp	r6, r5
    3c4c:	d1f0      	bne.n	3c30 <tiny_vsprintf+0x378>
    3c4e:	f04f 35ff 	mov.w	r5, #4294967295
    3c52:	9a02      	ldr	r2, [sp, #8]
    3c54:	454a      	cmp	r2, r9
    3c56:	dd31      	ble.n	3cbc <tiny_vsprintf+0x404>
    3c58:	ebc2 0009 	rsb	r0, r2, r9
    3c5c:	ea6f 0b00 	mvn.w	fp, r0
    3c60:	1e56      	subs	r6, r2, #1
    3c62:	2030      	movs	r0, #48	; 0x30
    3c64:	f7fe f800 	bl	1c68 <cIO_putchchar>
    3c68:	454e      	cmp	r6, r9
    3c6a:	f00b 0b03 	and.w	fp, fp, #3
    3c6e:	d025      	beq.n	3cbc <tiny_vsprintf+0x404>
    3c70:	f1bb 0f00 	cmp.w	fp, #0
    3c74:	d013      	beq.n	3c9e <tiny_vsprintf+0x3e6>
    3c76:	f1bb 0f01 	cmp.w	fp, #1
    3c7a:	d00a      	beq.n	3c92 <tiny_vsprintf+0x3da>
    3c7c:	f1bb 0f02 	cmp.w	fp, #2
    3c80:	d003      	beq.n	3c8a <tiny_vsprintf+0x3d2>
    3c82:	2030      	movs	r0, #48	; 0x30
    3c84:	f7fd fff0 	bl	1c68 <cIO_putchchar>
    3c88:	3e01      	subs	r6, #1
    3c8a:	2030      	movs	r0, #48	; 0x30
    3c8c:	f7fd ffec 	bl	1c68 <cIO_putchchar>
    3c90:	3e01      	subs	r6, #1
    3c92:	2030      	movs	r0, #48	; 0x30
    3c94:	3e01      	subs	r6, #1
    3c96:	f7fd ffe7 	bl	1c68 <cIO_putchchar>
    3c9a:	454e      	cmp	r6, r9
    3c9c:	d00e      	beq.n	3cbc <tiny_vsprintf+0x404>
    3c9e:	2030      	movs	r0, #48	; 0x30
    3ca0:	f7fd ffe2 	bl	1c68 <cIO_putchchar>
    3ca4:	2030      	movs	r0, #48	; 0x30
    3ca6:	f7fd ffdf 	bl	1c68 <cIO_putchchar>
    3caa:	2030      	movs	r0, #48	; 0x30
    3cac:	f7fd ffdc 	bl	1c68 <cIO_putchchar>
    3cb0:	3e04      	subs	r6, #4
    3cb2:	2030      	movs	r0, #48	; 0x30
    3cb4:	f7fd ffd8 	bl	1c68 <cIO_putchchar>
    3cb8:	454e      	cmp	r6, r9
    3cba:	d1f0      	bne.n	3c9e <tiny_vsprintf+0x3e6>
    3cbc:	9901      	ldr	r1, [sp, #4]
    3cbe:	f81a 0001 	ldrb.w	r0, [sl, r1]
    3cc2:	f7fd ffd1 	bl	1c68 <cIO_putchchar>
    3cc6:	f8dd c004 	ldr.w	ip, [sp, #4]
    3cca:	f1bc 0f00 	cmp.w	ip, #0
    3cce:	f00c 0303 	and.w	r3, ip, #3
    3cd2:	f10c 36ff 	add.w	r6, ip, #4294967295
    3cd6:	dd2f      	ble.n	3d38 <tiny_vsprintf+0x480>
    3cd8:	b1ab      	cbz	r3, 3d06 <tiny_vsprintf+0x44e>
    3cda:	2b01      	cmp	r3, #1
    3cdc:	d00b      	beq.n	3cf6 <tiny_vsprintf+0x43e>
    3cde:	2b02      	cmp	r3, #2
    3ce0:	d004      	beq.n	3cec <tiny_vsprintf+0x434>
    3ce2:	f81a 0006 	ldrb.w	r0, [sl, r6]
    3ce6:	f7fd ffbf 	bl	1c68 <cIO_putchchar>
    3cea:	3e01      	subs	r6, #1
    3cec:	f81a 0006 	ldrb.w	r0, [sl, r6]
    3cf0:	f7fd ffba 	bl	1c68 <cIO_putchchar>
    3cf4:	3e01      	subs	r6, #1
    3cf6:	f81a 0006 	ldrb.w	r0, [sl, r6]
    3cfa:	3e01      	subs	r6, #1
    3cfc:	f7fd ffb4 	bl	1c68 <cIO_putchchar>
    3d00:	1c70      	adds	r0, r6, #1
    3d02:	2800      	cmp	r0, #0
    3d04:	dd18      	ble.n	3d38 <tiny_vsprintf+0x480>
    3d06:	f106 39ff 	add.w	r9, r6, #4294967295
    3d0a:	f81a 0006 	ldrb.w	r0, [sl, r6]
    3d0e:	f7fd ffab 	bl	1c68 <cIO_putchchar>
    3d12:	f81a 0009 	ldrb.w	r0, [sl, r9]
    3d16:	f1a6 0902 	sub.w	r9, r6, #2
    3d1a:	f7fd ffa5 	bl	1c68 <cIO_putchchar>
    3d1e:	f81a 0009 	ldrb.w	r0, [sl, r9]
    3d22:	f7fd ffa1 	bl	1c68 <cIO_putchchar>
    3d26:	1ef2      	subs	r2, r6, #3
    3d28:	f81a 0002 	ldrb.w	r0, [sl, r2]
    3d2c:	3e04      	subs	r6, #4
    3d2e:	f7fd ff9b 	bl	1c68 <cIO_putchchar>
    3d32:	1c73      	adds	r3, r6, #1
    3d34:	2b00      	cmp	r3, #0
    3d36:	dce6      	bgt.n	3d06 <tiny_vsprintf+0x44e>
    3d38:	2d00      	cmp	r5, #0
    3d3a:	f77f adce 	ble.w	38da <tiny_vsprintf+0x22>
    3d3e:	f105 3eff 	add.w	lr, r5, #4294967295
    3d42:	2020      	movs	r0, #32
    3d44:	2601      	movs	r6, #1
    3d46:	f00e 0903 	and.w	r9, lr, #3
    3d4a:	f7fd ff8d 	bl	1c68 <cIO_putchchar>
    3d4e:	42ae      	cmp	r6, r5
    3d50:	f43f adc3 	beq.w	38da <tiny_vsprintf+0x22>
    3d54:	f1b9 0f00 	cmp.w	r9, #0
    3d58:	d014      	beq.n	3d84 <tiny_vsprintf+0x4cc>
    3d5a:	f1b9 0f01 	cmp.w	r9, #1
    3d5e:	d00a      	beq.n	3d76 <tiny_vsprintf+0x4be>
    3d60:	f1b9 0f02 	cmp.w	r9, #2
    3d64:	d003      	beq.n	3d6e <tiny_vsprintf+0x4b6>
    3d66:	2020      	movs	r0, #32
    3d68:	f7fd ff7e 	bl	1c68 <cIO_putchchar>
    3d6c:	2602      	movs	r6, #2
    3d6e:	2020      	movs	r0, #32
    3d70:	f7fd ff7a 	bl	1c68 <cIO_putchchar>
    3d74:	3601      	adds	r6, #1
    3d76:	2020      	movs	r0, #32
    3d78:	3601      	adds	r6, #1
    3d7a:	f7fd ff75 	bl	1c68 <cIO_putchchar>
    3d7e:	42ae      	cmp	r6, r5
    3d80:	f43f adab 	beq.w	38da <tiny_vsprintf+0x22>
    3d84:	2020      	movs	r0, #32
    3d86:	f7fd ff6f 	bl	1c68 <cIO_putchchar>
    3d8a:	2020      	movs	r0, #32
    3d8c:	f7fd ff6c 	bl	1c68 <cIO_putchchar>
    3d90:	2020      	movs	r0, #32
    3d92:	f7fd ff69 	bl	1c68 <cIO_putchchar>
    3d96:	3604      	adds	r6, #4
    3d98:	2020      	movs	r0, #32
    3d9a:	f7fd ff65 	bl	1c68 <cIO_putchchar>
    3d9e:	42ae      	cmp	r6, r5
    3da0:	d1f0      	bne.n	3d84 <tiny_vsprintf+0x4cc>
    3da2:	e59a      	b.n	38da <tiny_vsprintf+0x22>
    3da4:	220a      	movs	r2, #10
    3da6:	9201      	str	r2, [sp, #4]
    3da8:	e69b      	b.n	3ae2 <tiny_vsprintf+0x22a>
    3daa:	bf00      	nop
    3dac:	00005148 	.word	0x00005148
    3db0:	00005120 	.word	0x00005120
    3db4:	10000944 	.word	0x10000944
    3db8:	f016 0f10 	tst.w	r6, #16
    3dbc:	f040 8131 	bne.w	4022 <tiny_vsprintf+0x76a>
    3dc0:	3d01      	subs	r5, #1
    3dc2:	2d00      	cmp	r5, #0
    3dc4:	f340 812d 	ble.w	4022 <tiny_vsprintf+0x76a>
    3dc8:	1e6b      	subs	r3, r5, #1
    3dca:	461e      	mov	r6, r3
    3dcc:	2020      	movs	r0, #32
    3dce:	f003 0503 	and.w	r5, r3, #3
    3dd2:	f7fd ff49 	bl	1c68 <cIO_putchchar>
    3dd6:	b1fe      	cbz	r6, 3e18 <tiny_vsprintf+0x560>
    3dd8:	b185      	cbz	r5, 3dfc <tiny_vsprintf+0x544>
    3dda:	2d01      	cmp	r5, #1
    3ddc:	d009      	beq.n	3df2 <tiny_vsprintf+0x53a>
    3dde:	2d02      	cmp	r5, #2
    3de0:	d003      	beq.n	3dea <tiny_vsprintf+0x532>
    3de2:	2020      	movs	r0, #32
    3de4:	f7fd ff40 	bl	1c68 <cIO_putchchar>
    3de8:	3e01      	subs	r6, #1
    3dea:	2020      	movs	r0, #32
    3dec:	f7fd ff3c 	bl	1c68 <cIO_putchchar>
    3df0:	3e01      	subs	r6, #1
    3df2:	2020      	movs	r0, #32
    3df4:	f7fd ff38 	bl	1c68 <cIO_putchchar>
    3df8:	3e01      	subs	r6, #1
    3dfa:	d00d      	beq.n	3e18 <tiny_vsprintf+0x560>
    3dfc:	2020      	movs	r0, #32
    3dfe:	f7fd ff33 	bl	1c68 <cIO_putchchar>
    3e02:	2020      	movs	r0, #32
    3e04:	f7fd ff30 	bl	1c68 <cIO_putchchar>
    3e08:	2020      	movs	r0, #32
    3e0a:	f7fd ff2d 	bl	1c68 <cIO_putchchar>
    3e0e:	2020      	movs	r0, #32
    3e10:	f7fd ff2a 	bl	1c68 <cIO_putchchar>
    3e14:	3e04      	subs	r6, #4
    3e16:	d1f1      	bne.n	3dfc <tiny_vsprintf+0x544>
    3e18:	f898 0000 	ldrb.w	r0, [r8]
    3e1c:	f108 0804 	add.w	r8, r8, #4
    3e20:	e559      	b.n	38d6 <tiny_vsprintf+0x1e>
    3e22:	f04f 0910 	mov.w	r9, #16
    3e26:	f046 0640 	orr.w	r6, r6, #64	; 0x40
    3e2a:	f8cd 9004 	str.w	r9, [sp, #4]
    3e2e:	e658      	b.n	3ae2 <tiny_vsprintf+0x22a>
    3e30:	2025      	movs	r0, #37	; 0x25
    3e32:	f7fd ff19 	bl	1c68 <cIO_putchchar>
    3e36:	e550      	b.n	38da <tiny_vsprintf+0x22>
    3e38:	2025      	movs	r0, #37	; 0x25
    3e3a:	f7fd ff15 	bl	1c68 <cIO_putchchar>
    3e3e:	7820      	ldrb	r0, [r4, #0]
    3e40:	2800      	cmp	r0, #0
    3e42:	f47f ad48 	bne.w	38d6 <tiny_vsprintf+0x1e>
    3e46:	3c01      	subs	r4, #1
    3e48:	e547      	b.n	38da <tiny_vsprintf+0x22>
    3e4a:	2208      	movs	r2, #8
    3e4c:	9201      	str	r2, [sp, #4]
    3e4e:	e648      	b.n	3ae2 <tiny_vsprintf+0x22a>
    3e50:	230a      	movs	r3, #10
    3e52:	f046 0602 	orr.w	r6, r6, #2
    3e56:	9301      	str	r3, [sp, #4]
    3e58:	e643      	b.n	3ae2 <tiny_vsprintf+0x22a>
    3e5a:	f8d8 0000 	ldr.w	r0, [r8]
    3e5e:	4a9f      	ldr	r2, [pc, #636]	; (40dc <tiny_vsprintf+0x824>)
    3e60:	f108 0804 	add.w	r8, r8, #4
    3e64:	2800      	cmp	r0, #0
    3e66:	bf14      	ite	ne
    3e68:	4681      	movne	r9, r0
    3e6a:	4691      	moveq	r9, r2
    3e6c:	4648      	mov	r0, r9
    3e6e:	f7fc fa97 	bl	3a0 <strnlen>
    3e72:	f016 0f10 	tst.w	r6, #16
    3e76:	4682      	mov	sl, r0
    3e78:	d13a      	bne.n	3ef0 <tiny_vsprintf+0x638>
    3e7a:	4285      	cmp	r5, r0
    3e7c:	f105 3bff 	add.w	fp, r5, #4294967295
    3e80:	f340 812a 	ble.w	40d8 <tiny_vsprintf+0x820>
    3e84:	1b46      	subs	r6, r0, r5
    3e86:	43f3      	mvns	r3, r6
    3e88:	f003 0103 	and.w	r1, r3, #3
    3e8c:	2020      	movs	r0, #32
    3e8e:	9100      	str	r1, [sp, #0]
    3e90:	f7fd feea 	bl	1c68 <cIO_putchchar>
    3e94:	45d3      	cmp	fp, sl
    3e96:	465e      	mov	r6, fp
    3e98:	9b00      	ldr	r3, [sp, #0]
    3e9a:	d022      	beq.n	3ee2 <tiny_vsprintf+0x62a>
    3e9c:	b193      	cbz	r3, 3ec4 <tiny_vsprintf+0x60c>
    3e9e:	2b01      	cmp	r3, #1
    3ea0:	d00a      	beq.n	3eb8 <tiny_vsprintf+0x600>
    3ea2:	2b02      	cmp	r3, #2
    3ea4:	d004      	beq.n	3eb0 <tiny_vsprintf+0x5f8>
    3ea6:	2020      	movs	r0, #32
    3ea8:	f7fd fede 	bl	1c68 <cIO_putchchar>
    3eac:	f10b 36ff 	add.w	r6, fp, #4294967295
    3eb0:	2020      	movs	r0, #32
    3eb2:	f7fd fed9 	bl	1c68 <cIO_putchchar>
    3eb6:	3e01      	subs	r6, #1
    3eb8:	2020      	movs	r0, #32
    3eba:	3e01      	subs	r6, #1
    3ebc:	f7fd fed4 	bl	1c68 <cIO_putchchar>
    3ec0:	4556      	cmp	r6, sl
    3ec2:	d00e      	beq.n	3ee2 <tiny_vsprintf+0x62a>
    3ec4:	2020      	movs	r0, #32
    3ec6:	f7fd fecf 	bl	1c68 <cIO_putchchar>
    3eca:	2020      	movs	r0, #32
    3ecc:	f7fd fecc 	bl	1c68 <cIO_putchchar>
    3ed0:	2020      	movs	r0, #32
    3ed2:	f7fd fec9 	bl	1c68 <cIO_putchchar>
    3ed6:	3e04      	subs	r6, #4
    3ed8:	2020      	movs	r0, #32
    3eda:	f7fd fec5 	bl	1c68 <cIO_putchchar>
    3ede:	4556      	cmp	r6, sl
    3ee0:	d1f0      	bne.n	3ec4 <tiny_vsprintf+0x60c>
    3ee2:	f1c5 0c01 	rsb	ip, r5, #1
    3ee6:	f10b 3bff 	add.w	fp, fp, #4294967295
    3eea:	eb0c 050a 	add.w	r5, ip, sl
    3eee:	445d      	add	r5, fp
    3ef0:	f1ba 0f00 	cmp.w	sl, #0
    3ef4:	dd36      	ble.n	3f64 <tiny_vsprintf+0x6ac>
    3ef6:	464e      	mov	r6, r9
    3ef8:	eb09 0b0a 	add.w	fp, r9, sl
    3efc:	ea6f 0109 	mvn.w	r1, r9
    3f00:	f816 0b01 	ldrb.w	r0, [r6], #1
    3f04:	eb0b 0e01 	add.w	lr, fp, r1
    3f08:	f00e 0203 	and.w	r2, lr, #3
    3f0c:	9200      	str	r2, [sp, #0]
    3f0e:	f7fd feab 	bl	1c68 <cIO_putchchar>
    3f12:	455e      	cmp	r6, fp
    3f14:	9b00      	ldr	r3, [sp, #0]
    3f16:	d025      	beq.n	3f64 <tiny_vsprintf+0x6ac>
    3f18:	b193      	cbz	r3, 3f40 <tiny_vsprintf+0x688>
    3f1a:	2b01      	cmp	r3, #1
    3f1c:	d00a      	beq.n	3f34 <tiny_vsprintf+0x67c>
    3f1e:	2b02      	cmp	r3, #2
    3f20:	d004      	beq.n	3f2c <tiny_vsprintf+0x674>
    3f22:	f899 0001 	ldrb.w	r0, [r9, #1]
    3f26:	3601      	adds	r6, #1
    3f28:	f7fd fe9e 	bl	1c68 <cIO_putchchar>
    3f2c:	f816 0b01 	ldrb.w	r0, [r6], #1
    3f30:	f7fd fe9a 	bl	1c68 <cIO_putchchar>
    3f34:	f816 0b01 	ldrb.w	r0, [r6], #1
    3f38:	f7fd fe96 	bl	1c68 <cIO_putchchar>
    3f3c:	455e      	cmp	r6, fp
    3f3e:	d011      	beq.n	3f64 <tiny_vsprintf+0x6ac>
    3f40:	46b1      	mov	r9, r6
    3f42:	f819 0b01 	ldrb.w	r0, [r9], #1
    3f46:	f7fd fe8f 	bl	1c68 <cIO_putchchar>
    3f4a:	7870      	ldrb	r0, [r6, #1]
    3f4c:	f7fd fe8c 	bl	1c68 <cIO_putchchar>
    3f50:	f899 0001 	ldrb.w	r0, [r9, #1]
    3f54:	f7fd fe88 	bl	1c68 <cIO_putchchar>
    3f58:	78f0      	ldrb	r0, [r6, #3]
    3f5a:	3604      	adds	r6, #4
    3f5c:	f7fd fe84 	bl	1c68 <cIO_putchchar>
    3f60:	455e      	cmp	r6, fp
    3f62:	d1ed      	bne.n	3f40 <tiny_vsprintf+0x688>
    3f64:	4555      	cmp	r5, sl
    3f66:	f77f acb8 	ble.w	38da <tiny_vsprintf+0x22>
    3f6a:	ebc5 000a 	rsb	r0, r5, sl
    3f6e:	43c3      	mvns	r3, r0
    3f70:	3d01      	subs	r5, #1
    3f72:	2020      	movs	r0, #32
    3f74:	f003 0603 	and.w	r6, r3, #3
    3f78:	f7fd fe76 	bl	1c68 <cIO_putchchar>
    3f7c:	4555      	cmp	r5, sl
    3f7e:	f43f acac 	beq.w	38da <tiny_vsprintf+0x22>
    3f82:	b196      	cbz	r6, 3faa <tiny_vsprintf+0x6f2>
    3f84:	2e01      	cmp	r6, #1
    3f86:	d009      	beq.n	3f9c <tiny_vsprintf+0x6e4>
    3f88:	2e02      	cmp	r6, #2
    3f8a:	d003      	beq.n	3f94 <tiny_vsprintf+0x6dc>
    3f8c:	2020      	movs	r0, #32
    3f8e:	f7fd fe6b 	bl	1c68 <cIO_putchchar>
    3f92:	3d01      	subs	r5, #1
    3f94:	2020      	movs	r0, #32
    3f96:	f7fd fe67 	bl	1c68 <cIO_putchchar>
    3f9a:	3d01      	subs	r5, #1
    3f9c:	2020      	movs	r0, #32
    3f9e:	3d01      	subs	r5, #1
    3fa0:	f7fd fe62 	bl	1c68 <cIO_putchchar>
    3fa4:	4555      	cmp	r5, sl
    3fa6:	f43f ac98 	beq.w	38da <tiny_vsprintf+0x22>
    3faa:	2020      	movs	r0, #32
    3fac:	f7fd fe5c 	bl	1c68 <cIO_putchchar>
    3fb0:	2020      	movs	r0, #32
    3fb2:	f7fd fe59 	bl	1c68 <cIO_putchchar>
    3fb6:	2020      	movs	r0, #32
    3fb8:	f7fd fe56 	bl	1c68 <cIO_putchchar>
    3fbc:	3d04      	subs	r5, #4
    3fbe:	2020      	movs	r0, #32
    3fc0:	f7fd fe52 	bl	1c68 <cIO_putchchar>
    3fc4:	4555      	cmp	r5, sl
    3fc6:	d1f0      	bne.n	3faa <tiny_vsprintf+0x6f2>
    3fc8:	e487      	b.n	38da <tiny_vsprintf+0x22>
    3fca:	f8cd c010 	str.w	ip, [sp, #16]
    3fce:	2800      	cmp	r0, #0
    3fd0:	f43f adc2 	beq.w	3b58 <tiny_vsprintf+0x2a0>
    3fd4:	f8df a108 	ldr.w	sl, [pc, #264]	; 40e0 <tiny_vsprintf+0x828>
    3fd8:	9a01      	ldr	r2, [sp, #4]
    3fda:	f04f 0900 	mov.w	r9, #0
    3fde:	469c      	mov	ip, r3
    3fe0:	fbb3 f3f2 	udiv	r3, r3, r2
    3fe4:	fb02 c013 	mls	r0, r2, r3, ip
    3fe8:	f81e c000 	ldrb.w	ip, [lr, r0]
    3fec:	f807 c009 	strb.w	ip, [r7, r9]
    3ff0:	f109 0901 	add.w	r9, r9, #1
    3ff4:	2b00      	cmp	r3, #0
    3ff6:	d1f2      	bne.n	3fde <tiny_vsprintf+0x726>
    3ff8:	f109 32ff 	add.w	r2, r9, #4294967295
    3ffc:	9201      	str	r2, [sp, #4]
    3ffe:	e5b2      	b.n	3b66 <tiny_vsprintf+0x2ae>
    4000:	f8d8 5000 	ldr.w	r5, [r8]
    4004:	3401      	adds	r4, #1
    4006:	2d00      	cmp	r5, #0
    4008:	f108 0804 	add.w	r8, r8, #4
    400c:	db3f      	blt.n	408e <tiny_vsprintf+0x7d6>
    400e:	7823      	ldrb	r3, [r4, #0]
    4010:	e4a7      	b.n	3962 <tiny_vsprintf+0xaa>
    4012:	4618      	mov	r0, r3
    4014:	f7fd fe28 	bl	1c68 <cIO_putchchar>
    4018:	e5e6      	b.n	3be8 <tiny_vsprintf+0x330>
    401a:	222b      	movs	r2, #43	; 0x2b
    401c:	3d01      	subs	r5, #1
    401e:	9204      	str	r2, [sp, #16]
    4020:	e597      	b.n	3b52 <tiny_vsprintf+0x29a>
    4022:	f898 0000 	ldrb.w	r0, [r8]
    4026:	3d01      	subs	r5, #1
    4028:	f7fd fe1e 	bl	1c68 <cIO_putchchar>
    402c:	2d00      	cmp	r5, #0
    402e:	f108 0804 	add.w	r8, r8, #4
    4032:	f77f ac52 	ble.w	38da <tiny_vsprintf+0x22>
    4036:	1e6e      	subs	r6, r5, #1
    4038:	4635      	mov	r5, r6
    403a:	2020      	movs	r0, #32
    403c:	f006 0603 	and.w	r6, r6, #3
    4040:	f7fd fe12 	bl	1c68 <cIO_putchchar>
    4044:	2d00      	cmp	r5, #0
    4046:	f43f ac48 	beq.w	38da <tiny_vsprintf+0x22>
    404a:	b18e      	cbz	r6, 4070 <tiny_vsprintf+0x7b8>
    404c:	2e01      	cmp	r6, #1
    404e:	d009      	beq.n	4064 <tiny_vsprintf+0x7ac>
    4050:	2e02      	cmp	r6, #2
    4052:	d003      	beq.n	405c <tiny_vsprintf+0x7a4>
    4054:	2020      	movs	r0, #32
    4056:	f7fd fe07 	bl	1c68 <cIO_putchchar>
    405a:	3d01      	subs	r5, #1
    405c:	2020      	movs	r0, #32
    405e:	f7fd fe03 	bl	1c68 <cIO_putchchar>
    4062:	3d01      	subs	r5, #1
    4064:	2020      	movs	r0, #32
    4066:	f7fd fdff 	bl	1c68 <cIO_putchchar>
    406a:	3d01      	subs	r5, #1
    406c:	f43f ac35 	beq.w	38da <tiny_vsprintf+0x22>
    4070:	2020      	movs	r0, #32
    4072:	f7fd fdf9 	bl	1c68 <cIO_putchchar>
    4076:	2020      	movs	r0, #32
    4078:	f7fd fdf6 	bl	1c68 <cIO_putchchar>
    407c:	2020      	movs	r0, #32
    407e:	f7fd fdf3 	bl	1c68 <cIO_putchchar>
    4082:	2020      	movs	r0, #32
    4084:	f7fd fdf0 	bl	1c68 <cIO_putchchar>
    4088:	3d04      	subs	r5, #4
    408a:	d1f1      	bne.n	4070 <tiny_vsprintf+0x7b8>
    408c:	e425      	b.n	38da <tiny_vsprintf+0x22>
    408e:	426d      	negs	r5, r5
    4090:	f046 0610 	orr.w	r6, r6, #16
    4094:	7823      	ldrb	r3, [r4, #0]
    4096:	e464      	b.n	3962 <tiny_vsprintf+0xaa>
    4098:	f016 0f02 	tst.w	r6, #2
    409c:	f108 0304 	add.w	r3, r8, #4
    40a0:	f8b8 0000 	ldrh.w	r0, [r8]
    40a4:	d012      	beq.n	40cc <tiny_vsprintf+0x814>
    40a6:	b200      	sxth	r0, r0
    40a8:	4698      	mov	r8, r3
    40aa:	e527      	b.n	3afc <tiny_vsprintf+0x244>
    40ac:	4243      	negs	r3, r0
    40ae:	202d      	movs	r0, #45	; 0x2d
    40b0:	3d01      	subs	r5, #1
    40b2:	9004      	str	r0, [sp, #16]
    40b4:	e78e      	b.n	3fd4 <tiny_vsprintf+0x71c>
    40b6:	f8d8 1000 	ldr.w	r1, [r8]
    40ba:	1c44      	adds	r4, r0, #1
    40bc:	2900      	cmp	r1, #0
    40be:	f108 0804 	add.w	r8, r8, #4
    40c2:	f6bf acf1 	bge.w	3aa8 <tiny_vsprintf+0x1f0>
    40c6:	7843      	ldrb	r3, [r0, #1]
    40c8:	2100      	movs	r1, #0
    40ca:	e44f      	b.n	396c <tiny_vsprintf+0xb4>
    40cc:	4698      	mov	r8, r3
    40ce:	e515      	b.n	3afc <tiny_vsprintf+0x244>
    40d0:	461d      	mov	r5, r3
    40d2:	e5be      	b.n	3c52 <tiny_vsprintf+0x39a>
    40d4:	9d05      	ldr	r5, [sp, #20]
    40d6:	e583      	b.n	3be0 <tiny_vsprintf+0x328>
    40d8:	465d      	mov	r5, fp
    40da:	e709      	b.n	3ef0 <tiny_vsprintf+0x638>
    40dc:	00005118 	.word	0x00005118
    40e0:	10000944 	.word	0x10000944

000040e4 <debug_printf>:
    40e4:	b40f      	push	{r0, r1, r2, r3}
    40e6:	b500      	push	{lr}
    40e8:	b083      	sub	sp, #12
    40ea:	ab04      	add	r3, sp, #16
    40ec:	f853 0b04 	ldr.w	r0, [r3], #4
    40f0:	4619      	mov	r1, r3
    40f2:	9301      	str	r3, [sp, #4]
    40f4:	f7ff fbe0 	bl	38b8 <tiny_vsprintf>
    40f8:	b003      	add	sp, #12
    40fa:	f85d eb04 	ldr.w	lr, [sp], #4
    40fe:	b004      	add	sp, #16
    4100:	4770      	bx	lr
    4102:	bf00      	nop

00004104 <hex_char>:
    4104:	f000 000f 	and.w	r0, r0, #15
    4108:	2809      	cmp	r0, #9
    410a:	d901      	bls.n	4110 <hex_char+0xc>
    410c:	3037      	adds	r0, #55	; 0x37
    410e:	4770      	bx	lr
    4110:	3030      	adds	r0, #48	; 0x30
    4112:	4770      	bx	lr

00004114 <hex_dump>:
    4114:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    4118:	b08f      	sub	sp, #60	; 0x3c
    411a:	920d      	str	r2, [sp, #52]	; 0x34
    411c:	460c      	mov	r4, r1
    411e:	2a00      	cmp	r2, #0
    4120:	f000 82ea 	beq.w	46f8 <hex_dump+0x5e4>
    4124:	f021 060f 	bic.w	r6, r1, #15
    4128:	4613      	mov	r3, r2
    412a:	2200      	movs	r2, #0
    412c:	f106 0a0d 	add.w	sl, r6, #13
    4130:	f106 090e 	add.w	r9, r6, #14
    4134:	f106 080f 	add.w	r8, r6, #15
    4138:	1987      	adds	r7, r0, r6
    413a:	920c      	str	r2, [sp, #48]	; 0x30
    413c:	185d      	adds	r5, r3, r1
    413e:	e127      	b.n	4390 <hex_dump+0x27c>
    4140:	7839      	ldrb	r1, [r7, #0]
    4142:	f1a1 0c20 	sub.w	ip, r1, #32
    4146:	fa5f f08c 	uxtb.w	r0, ip
    414a:	285e      	cmp	r0, #94	; 0x5e
    414c:	f240 828a 	bls.w	4664 <hex_dump+0x550>
    4150:	48b2      	ldr	r0, [pc, #712]	; (441c <hex_dump+0x308>)
    4152:	f7ff ffc7 	bl	40e4 <debug_printf>
    4156:	455c      	cmp	r4, fp
    4158:	f200 81d1 	bhi.w	44fe <hex_dump+0x3ea>
    415c:	455d      	cmp	r5, fp
    415e:	f240 81ce 	bls.w	44fe <hex_dump+0x3ea>
    4162:	7879      	ldrb	r1, [r7, #1]
    4164:	f1a1 0320 	sub.w	r3, r1, #32
    4168:	fa5f fe83 	uxtb.w	lr, r3
    416c:	f1be 0f5e 	cmp.w	lr, #94	; 0x5e
    4170:	f240 82ae 	bls.w	46d0 <hex_dump+0x5bc>
    4174:	48a9      	ldr	r0, [pc, #676]	; (441c <hex_dump+0x308>)
    4176:	f7ff ffb5 	bl	40e4 <debug_printf>
    417a:	9a06      	ldr	r2, [sp, #24]
    417c:	4294      	cmp	r4, r2
    417e:	f200 81c5 	bhi.w	450c <hex_dump+0x3f8>
    4182:	4295      	cmp	r5, r2
    4184:	f240 81c2 	bls.w	450c <hex_dump+0x3f8>
    4188:	78b9      	ldrb	r1, [r7, #2]
    418a:	f1a1 0020 	sub.w	r0, r1, #32
    418e:	b2c2      	uxtb	r2, r0
    4190:	2a5e      	cmp	r2, #94	; 0x5e
    4192:	f240 8299 	bls.w	46c8 <hex_dump+0x5b4>
    4196:	48a1      	ldr	r0, [pc, #644]	; (441c <hex_dump+0x308>)
    4198:	f7ff ffa4 	bl	40e4 <debug_printf>
    419c:	9a07      	ldr	r2, [sp, #28]
    419e:	4294      	cmp	r4, r2
    41a0:	f200 81bb 	bhi.w	451a <hex_dump+0x406>
    41a4:	4295      	cmp	r5, r2
    41a6:	f240 81b8 	bls.w	451a <hex_dump+0x406>
    41aa:	78f9      	ldrb	r1, [r7, #3]
    41ac:	f1a1 0e20 	sub.w	lr, r1, #32
    41b0:	fa5f fc8e 	uxtb.w	ip, lr
    41b4:	f1bc 0f5e 	cmp.w	ip, #94	; 0x5e
    41b8:	f240 8282 	bls.w	46c0 <hex_dump+0x5ac>
    41bc:	4897      	ldr	r0, [pc, #604]	; (441c <hex_dump+0x308>)
    41be:	f7ff ff91 	bl	40e4 <debug_printf>
    41c2:	9a05      	ldr	r2, [sp, #20]
    41c4:	4294      	cmp	r4, r2
    41c6:	f200 81af 	bhi.w	4528 <hex_dump+0x414>
    41ca:	42aa      	cmp	r2, r5
    41cc:	f080 81ac 	bcs.w	4528 <hex_dump+0x414>
    41d0:	7939      	ldrb	r1, [r7, #4]
    41d2:	f1a1 0220 	sub.w	r2, r1, #32
    41d6:	b2d3      	uxtb	r3, r2
    41d8:	2b5e      	cmp	r3, #94	; 0x5e
    41da:	f240 8263 	bls.w	46a4 <hex_dump+0x590>
    41de:	488f      	ldr	r0, [pc, #572]	; (441c <hex_dump+0x308>)
    41e0:	f7ff ff80 	bl	40e4 <debug_printf>
    41e4:	9a08      	ldr	r2, [sp, #32]
    41e6:	4294      	cmp	r4, r2
    41e8:	f200 81a5 	bhi.w	4536 <hex_dump+0x422>
    41ec:	4295      	cmp	r5, r2
    41ee:	f240 81a2 	bls.w	4536 <hex_dump+0x422>
    41f2:	7979      	ldrb	r1, [r7, #5]
    41f4:	f1a1 0c20 	sub.w	ip, r1, #32
    41f8:	fa5f f08c 	uxtb.w	r0, ip
    41fc:	285e      	cmp	r0, #94	; 0x5e
    41fe:	f240 8277 	bls.w	46f0 <hex_dump+0x5dc>
    4202:	4886      	ldr	r0, [pc, #536]	; (441c <hex_dump+0x308>)
    4204:	f7ff ff6e 	bl	40e4 <debug_printf>
    4208:	9a04      	ldr	r2, [sp, #16]
    420a:	4294      	cmp	r4, r2
    420c:	f200 819a 	bhi.w	4544 <hex_dump+0x430>
    4210:	42aa      	cmp	r2, r5
    4212:	f080 8197 	bcs.w	4544 <hex_dump+0x430>
    4216:	79b9      	ldrb	r1, [r7, #6]
    4218:	f1a1 0320 	sub.w	r3, r1, #32
    421c:	fa5f fe83 	uxtb.w	lr, r3
    4220:	f1be 0f5e 	cmp.w	lr, #94	; 0x5e
    4224:	f240 8260 	bls.w	46e8 <hex_dump+0x5d4>
    4228:	487c      	ldr	r0, [pc, #496]	; (441c <hex_dump+0x308>)
    422a:	f7ff ff5b 	bl	40e4 <debug_printf>
    422e:	9a09      	ldr	r2, [sp, #36]	; 0x24
    4230:	4294      	cmp	r4, r2
    4232:	f200 818e 	bhi.w	4552 <hex_dump+0x43e>
    4236:	4295      	cmp	r5, r2
    4238:	f240 818b 	bls.w	4552 <hex_dump+0x43e>
    423c:	79f9      	ldrb	r1, [r7, #7]
    423e:	f1a1 0020 	sub.w	r0, r1, #32
    4242:	b2c2      	uxtb	r2, r0
    4244:	2a5e      	cmp	r2, #94	; 0x5e
    4246:	f240 824b 	bls.w	46e0 <hex_dump+0x5cc>
    424a:	4874      	ldr	r0, [pc, #464]	; (441c <hex_dump+0x308>)
    424c:	f7ff ff4a 	bl	40e4 <debug_printf>
    4250:	9a03      	ldr	r2, [sp, #12]
    4252:	4294      	cmp	r4, r2
    4254:	f200 8184 	bhi.w	4560 <hex_dump+0x44c>
    4258:	42aa      	cmp	r2, r5
    425a:	f080 8181 	bcs.w	4560 <hex_dump+0x44c>
    425e:	7a39      	ldrb	r1, [r7, #8]
    4260:	f1a1 0e20 	sub.w	lr, r1, #32
    4264:	fa5f fc8e 	uxtb.w	ip, lr
    4268:	f1bc 0f5e 	cmp.w	ip, #94	; 0x5e
    426c:	f240 8234 	bls.w	46d8 <hex_dump+0x5c4>
    4270:	486a      	ldr	r0, [pc, #424]	; (441c <hex_dump+0x308>)
    4272:	f7ff ff37 	bl	40e4 <debug_printf>
    4276:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
    4278:	4294      	cmp	r4, r2
    427a:	f200 8178 	bhi.w	456e <hex_dump+0x45a>
    427e:	42aa      	cmp	r2, r5
    4280:	f080 8175 	bcs.w	456e <hex_dump+0x45a>
    4284:	7a79      	ldrb	r1, [r7, #9]
    4286:	f1a1 0220 	sub.w	r2, r1, #32
    428a:	b2d3      	uxtb	r3, r2
    428c:	2b5e      	cmp	r3, #94	; 0x5e
    428e:	f240 8205 	bls.w	469c <hex_dump+0x588>
    4292:	4862      	ldr	r0, [pc, #392]	; (441c <hex_dump+0x308>)
    4294:	f7ff ff26 	bl	40e4 <debug_printf>
    4298:	9a02      	ldr	r2, [sp, #8]
    429a:	4294      	cmp	r4, r2
    429c:	f200 816e 	bhi.w	457c <hex_dump+0x468>
    42a0:	42aa      	cmp	r2, r5
    42a2:	f080 816b 	bcs.w	457c <hex_dump+0x468>
    42a6:	7ab9      	ldrb	r1, [r7, #10]
    42a8:	f1a1 0c20 	sub.w	ip, r1, #32
    42ac:	fa5f f08c 	uxtb.w	r0, ip
    42b0:	285e      	cmp	r0, #94	; 0x5e
    42b2:	f240 81ef 	bls.w	4694 <hex_dump+0x580>
    42b6:	4859      	ldr	r0, [pc, #356]	; (441c <hex_dump+0x308>)
    42b8:	f7ff ff14 	bl	40e4 <debug_printf>
    42bc:	9a0a      	ldr	r2, [sp, #40]	; 0x28
    42be:	4294      	cmp	r4, r2
    42c0:	f200 8163 	bhi.w	458a <hex_dump+0x476>
    42c4:	42aa      	cmp	r2, r5
    42c6:	f080 8160 	bcs.w	458a <hex_dump+0x476>
    42ca:	7af9      	ldrb	r1, [r7, #11]
    42cc:	f1a1 0320 	sub.w	r3, r1, #32
    42d0:	fa5f fe83 	uxtb.w	lr, r3
    42d4:	f1be 0f5e 	cmp.w	lr, #94	; 0x5e
    42d8:	f240 81d8 	bls.w	468c <hex_dump+0x578>
    42dc:	484f      	ldr	r0, [pc, #316]	; (441c <hex_dump+0x308>)
    42de:	f7ff ff01 	bl	40e4 <debug_printf>
    42e2:	9a01      	ldr	r2, [sp, #4]
    42e4:	4294      	cmp	r4, r2
    42e6:	f200 8157 	bhi.w	4598 <hex_dump+0x484>
    42ea:	42aa      	cmp	r2, r5
    42ec:	f080 8154 	bcs.w	4598 <hex_dump+0x484>
    42f0:	7b39      	ldrb	r1, [r7, #12]
    42f2:	f1a1 0020 	sub.w	r0, r1, #32
    42f6:	b2c2      	uxtb	r2, r0
    42f8:	2a5e      	cmp	r2, #94	; 0x5e
    42fa:	f240 81c3 	bls.w	4684 <hex_dump+0x570>
    42fe:	4847      	ldr	r0, [pc, #284]	; (441c <hex_dump+0x308>)
    4300:	f7ff fef0 	bl	40e4 <debug_printf>
    4304:	4554      	cmp	r4, sl
    4306:	f200 814d 	bhi.w	45a4 <hex_dump+0x490>
    430a:	45aa      	cmp	sl, r5
    430c:	f080 814a 	bcs.w	45a4 <hex_dump+0x490>
    4310:	7b79      	ldrb	r1, [r7, #13]
    4312:	f1a1 0e20 	sub.w	lr, r1, #32
    4316:	fa5f fc8e 	uxtb.w	ip, lr
    431a:	f1bc 0f5e 	cmp.w	ip, #94	; 0x5e
    431e:	f240 81ad 	bls.w	467c <hex_dump+0x568>
    4322:	483e      	ldr	r0, [pc, #248]	; (441c <hex_dump+0x308>)
    4324:	f7ff fede 	bl	40e4 <debug_printf>
    4328:	454c      	cmp	r4, r9
    432a:	f200 8141 	bhi.w	45b0 <hex_dump+0x49c>
    432e:	45a9      	cmp	r9, r5
    4330:	f080 813e 	bcs.w	45b0 <hex_dump+0x49c>
    4334:	7bb9      	ldrb	r1, [r7, #14]
    4336:	f1a1 0220 	sub.w	r2, r1, #32
    433a:	b2d3      	uxtb	r3, r2
    433c:	2b5e      	cmp	r3, #94	; 0x5e
    433e:	f240 8199 	bls.w	4674 <hex_dump+0x560>
    4342:	4836      	ldr	r0, [pc, #216]	; (441c <hex_dump+0x308>)
    4344:	f7ff fece 	bl	40e4 <debug_printf>
    4348:	4544      	cmp	r4, r8
    434a:	f200 8137 	bhi.w	45bc <hex_dump+0x4a8>
    434e:	45a8      	cmp	r8, r5
    4350:	f080 8134 	bcs.w	45bc <hex_dump+0x4a8>
    4354:	7bf9      	ldrb	r1, [r7, #15]
    4356:	f1a1 0c20 	sub.w	ip, r1, #32
    435a:	fa5f f08c 	uxtb.w	r0, ip
    435e:	285e      	cmp	r0, #94	; 0x5e
    4360:	f240 8184 	bls.w	466c <hex_dump+0x558>
    4364:	482d      	ldr	r0, [pc, #180]	; (441c <hex_dump+0x308>)
    4366:	f7ff febd 	bl	40e4 <debug_printf>
    436a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    436c:	482c      	ldr	r0, [pc, #176]	; (4420 <hex_dump+0x30c>)
    436e:	3210      	adds	r2, #16
    4370:	920c      	str	r2, [sp, #48]	; 0x30
    4372:	f7ff feb7 	bl	40e4 <debug_printf>
    4376:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    4378:	990c      	ldr	r1, [sp, #48]	; 0x30
    437a:	3610      	adds	r6, #16
    437c:	3710      	adds	r7, #16
    437e:	428b      	cmp	r3, r1
    4380:	f108 0810 	add.w	r8, r8, #16
    4384:	f109 0910 	add.w	r9, r9, #16
    4388:	f10a 0a10 	add.w	sl, sl, #16
    438c:	f240 81b4 	bls.w	46f8 <hex_dump+0x5e4>
    4390:	4824      	ldr	r0, [pc, #144]	; (4424 <hex_dump+0x310>)
    4392:	4631      	mov	r1, r6
    4394:	f7ff fea6 	bl	40e4 <debug_printf>
    4398:	42b4      	cmp	r4, r6
    439a:	d802      	bhi.n	43a2 <hex_dump+0x28e>
    439c:	42b5      	cmp	r5, r6
    439e:	f200 8116 	bhi.w	45ce <hex_dump+0x4ba>
    43a2:	4821      	ldr	r0, [pc, #132]	; (4428 <hex_dump+0x314>)
    43a4:	f7ff fe9e 	bl	40e4 <debug_printf>
    43a8:	f106 0b01 	add.w	fp, r6, #1
    43ac:	455c      	cmp	r4, fp
    43ae:	d802      	bhi.n	43b6 <hex_dump+0x2a2>
    43b0:	455d      	cmp	r5, fp
    43b2:	f200 8111 	bhi.w	45d8 <hex_dump+0x4c4>
    43b6:	481c      	ldr	r0, [pc, #112]	; (4428 <hex_dump+0x314>)
    43b8:	f7ff fe94 	bl	40e4 <debug_printf>
    43bc:	1cb2      	adds	r2, r6, #2
    43be:	4294      	cmp	r4, r2
    43c0:	9206      	str	r2, [sp, #24]
    43c2:	d802      	bhi.n	43ca <hex_dump+0x2b6>
    43c4:	4295      	cmp	r5, r2
    43c6:	f200 810c 	bhi.w	45e2 <hex_dump+0x4ce>
    43ca:	4817      	ldr	r0, [pc, #92]	; (4428 <hex_dump+0x314>)
    43cc:	f7ff fe8a 	bl	40e4 <debug_printf>
    43d0:	1cf2      	adds	r2, r6, #3
    43d2:	4294      	cmp	r4, r2
    43d4:	9207      	str	r2, [sp, #28]
    43d6:	d802      	bhi.n	43de <hex_dump+0x2ca>
    43d8:	4295      	cmp	r5, r2
    43da:	f200 8107 	bhi.w	45ec <hex_dump+0x4d8>
    43de:	4812      	ldr	r0, [pc, #72]	; (4428 <hex_dump+0x314>)
    43e0:	f7ff fe80 	bl	40e4 <debug_printf>
    43e4:	1d32      	adds	r2, r6, #4
    43e6:	4294      	cmp	r4, r2
    43e8:	9205      	str	r2, [sp, #20]
    43ea:	d802      	bhi.n	43f2 <hex_dump+0x2de>
    43ec:	4295      	cmp	r5, r2
    43ee:	f200 8102 	bhi.w	45f6 <hex_dump+0x4e2>
    43f2:	480d      	ldr	r0, [pc, #52]	; (4428 <hex_dump+0x314>)
    43f4:	f7ff fe76 	bl	40e4 <debug_printf>
    43f8:	1d72      	adds	r2, r6, #5
    43fa:	4294      	cmp	r4, r2
    43fc:	9208      	str	r2, [sp, #32]
    43fe:	d802      	bhi.n	4406 <hex_dump+0x2f2>
    4400:	4295      	cmp	r5, r2
    4402:	f200 80fd 	bhi.w	4600 <hex_dump+0x4ec>
    4406:	4808      	ldr	r0, [pc, #32]	; (4428 <hex_dump+0x314>)
    4408:	f7ff fe6c 	bl	40e4 <debug_printf>
    440c:	1db2      	adds	r2, r6, #6
    440e:	4294      	cmp	r4, r2
    4410:	9204      	str	r2, [sp, #16]
    4412:	d80b      	bhi.n	442c <hex_dump+0x318>
    4414:	4295      	cmp	r5, r2
    4416:	f200 80f8 	bhi.w	460a <hex_dump+0x4f6>
    441a:	e007      	b.n	442c <hex_dump+0x318>
    441c:	00005188 	.word	0x00005188
    4420:	00005190 	.word	0x00005190
    4424:	00005170 	.word	0x00005170
    4428:	00005178 	.word	0x00005178
    442c:	489f      	ldr	r0, [pc, #636]	; (46ac <hex_dump+0x598>)
    442e:	f7ff fe59 	bl	40e4 <debug_printf>
    4432:	1df2      	adds	r2, r6, #7
    4434:	4294      	cmp	r4, r2
    4436:	9209      	str	r2, [sp, #36]	; 0x24
    4438:	d802      	bhi.n	4440 <hex_dump+0x32c>
    443a:	4295      	cmp	r5, r2
    443c:	f200 80ea 	bhi.w	4614 <hex_dump+0x500>
    4440:	489a      	ldr	r0, [pc, #616]	; (46ac <hex_dump+0x598>)
    4442:	f7ff fe4f 	bl	40e4 <debug_printf>
    4446:	f106 0208 	add.w	r2, r6, #8
    444a:	4294      	cmp	r4, r2
    444c:	9203      	str	r2, [sp, #12]
    444e:	d802      	bhi.n	4456 <hex_dump+0x342>
    4450:	4295      	cmp	r5, r2
    4452:	f200 80e4 	bhi.w	461e <hex_dump+0x50a>
    4456:	4895      	ldr	r0, [pc, #596]	; (46ac <hex_dump+0x598>)
    4458:	f7ff fe44 	bl	40e4 <debug_printf>
    445c:	f106 0209 	add.w	r2, r6, #9
    4460:	4294      	cmp	r4, r2
    4462:	920b      	str	r2, [sp, #44]	; 0x2c
    4464:	d802      	bhi.n	446c <hex_dump+0x358>
    4466:	4295      	cmp	r5, r2
    4468:	f200 80de 	bhi.w	4628 <hex_dump+0x514>
    446c:	488f      	ldr	r0, [pc, #572]	; (46ac <hex_dump+0x598>)
    446e:	f7ff fe39 	bl	40e4 <debug_printf>
    4472:	f106 020a 	add.w	r2, r6, #10
    4476:	4294      	cmp	r4, r2
    4478:	9202      	str	r2, [sp, #8]
    447a:	d802      	bhi.n	4482 <hex_dump+0x36e>
    447c:	4295      	cmp	r5, r2
    447e:	f200 80d8 	bhi.w	4632 <hex_dump+0x51e>
    4482:	488a      	ldr	r0, [pc, #552]	; (46ac <hex_dump+0x598>)
    4484:	f7ff fe2e 	bl	40e4 <debug_printf>
    4488:	f106 020b 	add.w	r2, r6, #11
    448c:	4294      	cmp	r4, r2
    448e:	920a      	str	r2, [sp, #40]	; 0x28
    4490:	d802      	bhi.n	4498 <hex_dump+0x384>
    4492:	4295      	cmp	r5, r2
    4494:	f200 80d2 	bhi.w	463c <hex_dump+0x528>
    4498:	4884      	ldr	r0, [pc, #528]	; (46ac <hex_dump+0x598>)
    449a:	f7ff fe23 	bl	40e4 <debug_printf>
    449e:	f106 020c 	add.w	r2, r6, #12
    44a2:	4294      	cmp	r4, r2
    44a4:	9201      	str	r2, [sp, #4]
    44a6:	d802      	bhi.n	44ae <hex_dump+0x39a>
    44a8:	4295      	cmp	r5, r2
    44aa:	f200 80cc 	bhi.w	4646 <hex_dump+0x532>
    44ae:	487f      	ldr	r0, [pc, #508]	; (46ac <hex_dump+0x598>)
    44b0:	f7ff fe18 	bl	40e4 <debug_printf>
    44b4:	4554      	cmp	r4, sl
    44b6:	d802      	bhi.n	44be <hex_dump+0x3aa>
    44b8:	45aa      	cmp	sl, r5
    44ba:	f0c0 80c9 	bcc.w	4650 <hex_dump+0x53c>
    44be:	487b      	ldr	r0, [pc, #492]	; (46ac <hex_dump+0x598>)
    44c0:	f7ff fe10 	bl	40e4 <debug_printf>
    44c4:	454c      	cmp	r4, r9
    44c6:	d802      	bhi.n	44ce <hex_dump+0x3ba>
    44c8:	45a9      	cmp	r9, r5
    44ca:	f0c0 80c6 	bcc.w	465a <hex_dump+0x546>
    44ce:	4877      	ldr	r0, [pc, #476]	; (46ac <hex_dump+0x598>)
    44d0:	f7ff fe08 	bl	40e4 <debug_printf>
    44d4:	4544      	cmp	r4, r8
    44d6:	d801      	bhi.n	44dc <hex_dump+0x3c8>
    44d8:	45a8      	cmp	r8, r5
    44da:	d373      	bcc.n	45c4 <hex_dump+0x4b0>
    44dc:	4873      	ldr	r0, [pc, #460]	; (46ac <hex_dump+0x598>)
    44de:	f7ff fe01 	bl	40e4 <debug_printf>
    44e2:	4873      	ldr	r0, [pc, #460]	; (46b0 <hex_dump+0x59c>)
    44e4:	f7ff fdfe 	bl	40e4 <debug_printf>
    44e8:	42b4      	cmp	r4, r6
    44ea:	d802      	bhi.n	44f2 <hex_dump+0x3de>
    44ec:	42ae      	cmp	r6, r5
    44ee:	f4ff ae27 	bcc.w	4140 <hex_dump+0x2c>
    44f2:	4870      	ldr	r0, [pc, #448]	; (46b4 <hex_dump+0x5a0>)
    44f4:	f7ff fdf6 	bl	40e4 <debug_printf>
    44f8:	455c      	cmp	r4, fp
    44fa:	f67f ae2f 	bls.w	415c <hex_dump+0x48>
    44fe:	486d      	ldr	r0, [pc, #436]	; (46b4 <hex_dump+0x5a0>)
    4500:	f7ff fdf0 	bl	40e4 <debug_printf>
    4504:	9a06      	ldr	r2, [sp, #24]
    4506:	4294      	cmp	r4, r2
    4508:	f67f ae3b 	bls.w	4182 <hex_dump+0x6e>
    450c:	4869      	ldr	r0, [pc, #420]	; (46b4 <hex_dump+0x5a0>)
    450e:	f7ff fde9 	bl	40e4 <debug_printf>
    4512:	9a07      	ldr	r2, [sp, #28]
    4514:	4294      	cmp	r4, r2
    4516:	f67f ae45 	bls.w	41a4 <hex_dump+0x90>
    451a:	4866      	ldr	r0, [pc, #408]	; (46b4 <hex_dump+0x5a0>)
    451c:	f7ff fde2 	bl	40e4 <debug_printf>
    4520:	9a05      	ldr	r2, [sp, #20]
    4522:	4294      	cmp	r4, r2
    4524:	f67f ae51 	bls.w	41ca <hex_dump+0xb6>
    4528:	4862      	ldr	r0, [pc, #392]	; (46b4 <hex_dump+0x5a0>)
    452a:	f7ff fddb 	bl	40e4 <debug_printf>
    452e:	9a08      	ldr	r2, [sp, #32]
    4530:	4294      	cmp	r4, r2
    4532:	f67f ae5b 	bls.w	41ec <hex_dump+0xd8>
    4536:	485f      	ldr	r0, [pc, #380]	; (46b4 <hex_dump+0x5a0>)
    4538:	f7ff fdd4 	bl	40e4 <debug_printf>
    453c:	9a04      	ldr	r2, [sp, #16]
    453e:	4294      	cmp	r4, r2
    4540:	f67f ae66 	bls.w	4210 <hex_dump+0xfc>
    4544:	485b      	ldr	r0, [pc, #364]	; (46b4 <hex_dump+0x5a0>)
    4546:	f7ff fdcd 	bl	40e4 <debug_printf>
    454a:	9a09      	ldr	r2, [sp, #36]	; 0x24
    454c:	4294      	cmp	r4, r2
    454e:	f67f ae72 	bls.w	4236 <hex_dump+0x122>
    4552:	4858      	ldr	r0, [pc, #352]	; (46b4 <hex_dump+0x5a0>)
    4554:	f7ff fdc6 	bl	40e4 <debug_printf>
    4558:	9a03      	ldr	r2, [sp, #12]
    455a:	4294      	cmp	r4, r2
    455c:	f67f ae7c 	bls.w	4258 <hex_dump+0x144>
    4560:	4854      	ldr	r0, [pc, #336]	; (46b4 <hex_dump+0x5a0>)
    4562:	f7ff fdbf 	bl	40e4 <debug_printf>
    4566:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
    4568:	4294      	cmp	r4, r2
    456a:	f67f ae88 	bls.w	427e <hex_dump+0x16a>
    456e:	4851      	ldr	r0, [pc, #324]	; (46b4 <hex_dump+0x5a0>)
    4570:	f7ff fdb8 	bl	40e4 <debug_printf>
    4574:	9a02      	ldr	r2, [sp, #8]
    4576:	4294      	cmp	r4, r2
    4578:	f67f ae92 	bls.w	42a0 <hex_dump+0x18c>
    457c:	484d      	ldr	r0, [pc, #308]	; (46b4 <hex_dump+0x5a0>)
    457e:	f7ff fdb1 	bl	40e4 <debug_printf>
    4582:	9a0a      	ldr	r2, [sp, #40]	; 0x28
    4584:	4294      	cmp	r4, r2
    4586:	f67f ae9d 	bls.w	42c4 <hex_dump+0x1b0>
    458a:	484a      	ldr	r0, [pc, #296]	; (46b4 <hex_dump+0x5a0>)
    458c:	f7ff fdaa 	bl	40e4 <debug_printf>
    4590:	9a01      	ldr	r2, [sp, #4]
    4592:	4294      	cmp	r4, r2
    4594:	f67f aea9 	bls.w	42ea <hex_dump+0x1d6>
    4598:	4846      	ldr	r0, [pc, #280]	; (46b4 <hex_dump+0x5a0>)
    459a:	f7ff fda3 	bl	40e4 <debug_printf>
    459e:	4554      	cmp	r4, sl
    45a0:	f67f aeb3 	bls.w	430a <hex_dump+0x1f6>
    45a4:	4843      	ldr	r0, [pc, #268]	; (46b4 <hex_dump+0x5a0>)
    45a6:	f7ff fd9d 	bl	40e4 <debug_printf>
    45aa:	454c      	cmp	r4, r9
    45ac:	f67f aebf 	bls.w	432e <hex_dump+0x21a>
    45b0:	4840      	ldr	r0, [pc, #256]	; (46b4 <hex_dump+0x5a0>)
    45b2:	f7ff fd97 	bl	40e4 <debug_printf>
    45b6:	4544      	cmp	r4, r8
    45b8:	f67f aec9 	bls.w	434e <hex_dump+0x23a>
    45bc:	483d      	ldr	r0, [pc, #244]	; (46b4 <hex_dump+0x5a0>)
    45be:	f7ff fd91 	bl	40e4 <debug_printf>
    45c2:	e6d2      	b.n	436a <hex_dump+0x256>
    45c4:	483c      	ldr	r0, [pc, #240]	; (46b8 <hex_dump+0x5a4>)
    45c6:	7bf9      	ldrb	r1, [r7, #15]
    45c8:	f7ff fd8c 	bl	40e4 <debug_printf>
    45cc:	e789      	b.n	44e2 <hex_dump+0x3ce>
    45ce:	483a      	ldr	r0, [pc, #232]	; (46b8 <hex_dump+0x5a4>)
    45d0:	7839      	ldrb	r1, [r7, #0]
    45d2:	f7ff fd87 	bl	40e4 <debug_printf>
    45d6:	e6e7      	b.n	43a8 <hex_dump+0x294>
    45d8:	4837      	ldr	r0, [pc, #220]	; (46b8 <hex_dump+0x5a4>)
    45da:	7879      	ldrb	r1, [r7, #1]
    45dc:	f7ff fd82 	bl	40e4 <debug_printf>
    45e0:	e6ec      	b.n	43bc <hex_dump+0x2a8>
    45e2:	4835      	ldr	r0, [pc, #212]	; (46b8 <hex_dump+0x5a4>)
    45e4:	78b9      	ldrb	r1, [r7, #2]
    45e6:	f7ff fd7d 	bl	40e4 <debug_printf>
    45ea:	e6f1      	b.n	43d0 <hex_dump+0x2bc>
    45ec:	4832      	ldr	r0, [pc, #200]	; (46b8 <hex_dump+0x5a4>)
    45ee:	78f9      	ldrb	r1, [r7, #3]
    45f0:	f7ff fd78 	bl	40e4 <debug_printf>
    45f4:	e6f6      	b.n	43e4 <hex_dump+0x2d0>
    45f6:	4830      	ldr	r0, [pc, #192]	; (46b8 <hex_dump+0x5a4>)
    45f8:	7939      	ldrb	r1, [r7, #4]
    45fa:	f7ff fd73 	bl	40e4 <debug_printf>
    45fe:	e6fb      	b.n	43f8 <hex_dump+0x2e4>
    4600:	482d      	ldr	r0, [pc, #180]	; (46b8 <hex_dump+0x5a4>)
    4602:	7979      	ldrb	r1, [r7, #5]
    4604:	f7ff fd6e 	bl	40e4 <debug_printf>
    4608:	e700      	b.n	440c <hex_dump+0x2f8>
    460a:	482b      	ldr	r0, [pc, #172]	; (46b8 <hex_dump+0x5a4>)
    460c:	79b9      	ldrb	r1, [r7, #6]
    460e:	f7ff fd69 	bl	40e4 <debug_printf>
    4612:	e70e      	b.n	4432 <hex_dump+0x31e>
    4614:	4828      	ldr	r0, [pc, #160]	; (46b8 <hex_dump+0x5a4>)
    4616:	79f9      	ldrb	r1, [r7, #7]
    4618:	f7ff fd64 	bl	40e4 <debug_printf>
    461c:	e713      	b.n	4446 <hex_dump+0x332>
    461e:	4826      	ldr	r0, [pc, #152]	; (46b8 <hex_dump+0x5a4>)
    4620:	7a39      	ldrb	r1, [r7, #8]
    4622:	f7ff fd5f 	bl	40e4 <debug_printf>
    4626:	e719      	b.n	445c <hex_dump+0x348>
    4628:	4823      	ldr	r0, [pc, #140]	; (46b8 <hex_dump+0x5a4>)
    462a:	7a79      	ldrb	r1, [r7, #9]
    462c:	f7ff fd5a 	bl	40e4 <debug_printf>
    4630:	e71f      	b.n	4472 <hex_dump+0x35e>
    4632:	4821      	ldr	r0, [pc, #132]	; (46b8 <hex_dump+0x5a4>)
    4634:	7ab9      	ldrb	r1, [r7, #10]
    4636:	f7ff fd55 	bl	40e4 <debug_printf>
    463a:	e725      	b.n	4488 <hex_dump+0x374>
    463c:	481e      	ldr	r0, [pc, #120]	; (46b8 <hex_dump+0x5a4>)
    463e:	7af9      	ldrb	r1, [r7, #11]
    4640:	f7ff fd50 	bl	40e4 <debug_printf>
    4644:	e72b      	b.n	449e <hex_dump+0x38a>
    4646:	481c      	ldr	r0, [pc, #112]	; (46b8 <hex_dump+0x5a4>)
    4648:	7b39      	ldrb	r1, [r7, #12]
    464a:	f7ff fd4b 	bl	40e4 <debug_printf>
    464e:	e731      	b.n	44b4 <hex_dump+0x3a0>
    4650:	4819      	ldr	r0, [pc, #100]	; (46b8 <hex_dump+0x5a4>)
    4652:	7b79      	ldrb	r1, [r7, #13]
    4654:	f7ff fd46 	bl	40e4 <debug_printf>
    4658:	e734      	b.n	44c4 <hex_dump+0x3b0>
    465a:	4817      	ldr	r0, [pc, #92]	; (46b8 <hex_dump+0x5a4>)
    465c:	7bb9      	ldrb	r1, [r7, #14]
    465e:	f7ff fd41 	bl	40e4 <debug_printf>
    4662:	e737      	b.n	44d4 <hex_dump+0x3c0>
    4664:	4815      	ldr	r0, [pc, #84]	; (46bc <hex_dump+0x5a8>)
    4666:	f7ff fd3d 	bl	40e4 <debug_printf>
    466a:	e574      	b.n	4156 <hex_dump+0x42>
    466c:	4813      	ldr	r0, [pc, #76]	; (46bc <hex_dump+0x5a8>)
    466e:	f7ff fd39 	bl	40e4 <debug_printf>
    4672:	e67a      	b.n	436a <hex_dump+0x256>
    4674:	4811      	ldr	r0, [pc, #68]	; (46bc <hex_dump+0x5a8>)
    4676:	f7ff fd35 	bl	40e4 <debug_printf>
    467a:	e665      	b.n	4348 <hex_dump+0x234>
    467c:	480f      	ldr	r0, [pc, #60]	; (46bc <hex_dump+0x5a8>)
    467e:	f7ff fd31 	bl	40e4 <debug_printf>
    4682:	e651      	b.n	4328 <hex_dump+0x214>
    4684:	480d      	ldr	r0, [pc, #52]	; (46bc <hex_dump+0x5a8>)
    4686:	f7ff fd2d 	bl	40e4 <debug_printf>
    468a:	e63b      	b.n	4304 <hex_dump+0x1f0>
    468c:	480b      	ldr	r0, [pc, #44]	; (46bc <hex_dump+0x5a8>)
    468e:	f7ff fd29 	bl	40e4 <debug_printf>
    4692:	e626      	b.n	42e2 <hex_dump+0x1ce>
    4694:	4809      	ldr	r0, [pc, #36]	; (46bc <hex_dump+0x5a8>)
    4696:	f7ff fd25 	bl	40e4 <debug_printf>
    469a:	e60f      	b.n	42bc <hex_dump+0x1a8>
    469c:	4807      	ldr	r0, [pc, #28]	; (46bc <hex_dump+0x5a8>)
    469e:	f7ff fd21 	bl	40e4 <debug_printf>
    46a2:	e5f9      	b.n	4298 <hex_dump+0x184>
    46a4:	4805      	ldr	r0, [pc, #20]	; (46bc <hex_dump+0x5a8>)
    46a6:	f7ff fd1d 	bl	40e4 <debug_printf>
    46aa:	e59b      	b.n	41e4 <hex_dump+0xd0>
    46ac:	00005178 	.word	0x00005178
    46b0:	00005184 	.word	0x00005184
    46b4:	00004bdc 	.word	0x00004bdc
    46b8:	0000517c 	.word	0x0000517c
    46bc:	0000518c 	.word	0x0000518c
    46c0:	480f      	ldr	r0, [pc, #60]	; (4700 <hex_dump+0x5ec>)
    46c2:	f7ff fd0f 	bl	40e4 <debug_printf>
    46c6:	e57c      	b.n	41c2 <hex_dump+0xae>
    46c8:	480d      	ldr	r0, [pc, #52]	; (4700 <hex_dump+0x5ec>)
    46ca:	f7ff fd0b 	bl	40e4 <debug_printf>
    46ce:	e565      	b.n	419c <hex_dump+0x88>
    46d0:	480b      	ldr	r0, [pc, #44]	; (4700 <hex_dump+0x5ec>)
    46d2:	f7ff fd07 	bl	40e4 <debug_printf>
    46d6:	e550      	b.n	417a <hex_dump+0x66>
    46d8:	4809      	ldr	r0, [pc, #36]	; (4700 <hex_dump+0x5ec>)
    46da:	f7ff fd03 	bl	40e4 <debug_printf>
    46de:	e5ca      	b.n	4276 <hex_dump+0x162>
    46e0:	4807      	ldr	r0, [pc, #28]	; (4700 <hex_dump+0x5ec>)
    46e2:	f7ff fcff 	bl	40e4 <debug_printf>
    46e6:	e5b3      	b.n	4250 <hex_dump+0x13c>
    46e8:	4805      	ldr	r0, [pc, #20]	; (4700 <hex_dump+0x5ec>)
    46ea:	f7ff fcfb 	bl	40e4 <debug_printf>
    46ee:	e59e      	b.n	422e <hex_dump+0x11a>
    46f0:	4803      	ldr	r0, [pc, #12]	; (4700 <hex_dump+0x5ec>)
    46f2:	f7ff fcf7 	bl	40e4 <debug_printf>
    46f6:	e587      	b.n	4208 <hex_dump+0xf4>
    46f8:	b00f      	add	sp, #60	; 0x3c
    46fa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    46fe:	bf00      	nop
    4700:	0000518c 	.word	0x0000518c

00004704 <xxtea_key>:
    4704:	00112233 44556677 8899aabb ccddeeff     3"..wfUD........

00004714 <broadcast_mac>:
    4714:	35f0d3e7 00000077 000a6325 2a2a200a     ...5w...%c... **
    4724:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
    4734:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
    4744:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
    4754:	0a2a2a2a 4f202a20 426e6570 6f636165     ***. * OpenBeaco
    4764:	6154206e 202d2067 65756c42 746f6f74     n Tag - Bluetoot
    4774:	6f432068 6c6f736e 2a200a65 20202020     h Console. *    
    4784:	20202020 20202020 20202020 65562020                   Ve
    4794:	6f697372 7576206e 6f6e6b6e 200a6e77     rsion vunknown. 
    47a4:	4328202a 30322029 4d203131 736f6c69     * (C) 2011 Milos
    47b4:	4d206863 61697265 6d3c2063 61697265     ch Meriac <meria
    47c4:	706f4063 65626e65 6e6f6361 3e65642e     c@openbeacon.de>
    47d4:	2a2a200a 2a2a2a2a 2a2a2a2a 2a2a2a2a     . **************
    47e4:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
    47f4:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
    4804:	2a2a2a2a 0a2a2a2a 48202a20 20203f2c     *******. * H,?  
    4814:	20202020 20202020 6874202d 68207369             - this h
    4824:	20706c65 65726373 200a6e65 2053202a     elp screen. * S 
    4834:	20202020 20202020 2d202020 6f685320                - Sho
    4844:	65642077 65636976 61747320 0a737574     w device status.
    4854:	200a2a20 2045202a 20202020 20202020      *. * E         
    4864:	2d202020 61724520 53206573 61726f74        - Erase Stora
    4874:	200a6567 2057202a 20202020 20202020     ge. * W         
    4884:	2d202020 73655420 72572074 20657469        - Test Write 
    4894:	726f7453 0a656761 52202a20 20202020     Storage. * R    
    48a4:	20202020 20202020 6554202d 52207473             - Test R
    48b4:	20646165 726f7453 0a656761 46202a20     ead Storage. * F
    48c4:	20202020 20202020 20202020 6554202d                 - Te
    48d4:	57207473 65746972 6c6c6946 6f745320     st WriteFill Sto
    48e4:	65676172 202a200a 2020204d 20202020     rage. * M       
    48f4:	20202020 77202d20 65746972 74203320          - write 3 t
    4904:	73656d69 646e6120 61657220 68742064     imes and read th
    4914:	200a6d65 2a2a2a2a 2a2a2a2a 2a2a2a2a     em. ************
    4924:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
    4934:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
    4944:	2a2a2a2a 2a2a2a2a 000a0a2a 2a2a200a     *********.... **
    4954:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
    4964:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
    4974:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
    4984:	0a2a2a2a 4f202a20 426e6570 6f636165     ***. * OpenBeaco
    4994:	7453206e 73757461 666e4920 616d726f     n Status Informa
    49a4:	6e6f6974 20202020 20202020 20202020     tion            
    49b4:	20202020 20202020 200a2a20 2a2a2a2a              *. ****
    49c4:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
    49d4:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
    49e4:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
    49f4:	00000a2a 44202a20 63697665 49552065     *... * Device UI
    4a04:	25203a44 3a583830 58383025 3830253a     D: %08X:%08X:%08
    4a14:	30253a58 000a5838 4f202a20 426e6570     X:%08X.. * OpenB
    4a24:	6f636165 414d206e 25203a43 3a583230     eacon MAC: %02X:
    4a34:	58323025 3230253a 30253a58 253a5832     %02X:%02X:%02X:%
    4a44:	0a583230 00000000 20202a20 20202020     02X..... *      
    4a54:	54202020 49206761 25203a44 0a583430        Tag ID: %04X.
    4a64:	00000000 53202a20 65726f74 6f4c2064     .... * Stored Lo
    4a74:	6c696667 74492065 3a736d65 0a692520     gfile Items: %i.
    4a84:	00000000 2a2a2a20 2a2a2a2a 2a2a2a2a     .... ***********
    4a94:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
    4aa4:	2a2a2a2a 2a2a2a2a 2a2a2a2a 2a2a2a2a     ****************
    4ab4:	2a2a2a2a 2a2a2a2a 0a0a2a2a 00000000     **********......
    4ac4:	6172450a 676e6973 6f745320 65676172     .Erasing Storage
    4ad4:	0a2e2e2e 0000000a 6972570a 676e6974     .........Writing
    4ae4:	61684b20 206c696c 69742033 2e73656d      Khalil 3 times.
    4af4:	000a2e2e 4f445b0a 0a5d454e 00000000     .....[DONE].....
    4b04:	6572200a 6e696461 68742067 61642065     . reading the da
    4b14:	2e2e6174 00000a2e 202a200a 74697277     ta....... * writ
    4b24:	20676e69 27732527 69252820 74796220     ing '%s' (%i byt
    4b34:	0a297365 00000000 202a200a 64616572     es)...... * read
    4b44:	20676e69 62206925 73657479 0000000a     ing %i bytes....
    4b54:	6c69460a 676e696c 6f745320 65676172     .Filling Storage
    4b64:	0a2e2e2e 00000000 6e6b6e55 206e776f     ........Unknown 
    4b74:	6d6d6f63 20646e61 27632527 70202d20     command '%c' - p
    4b84:	7361656c 72702065 20737365 20274827     lease press 'H' 
    4b94:	20726f66 706c6568 00000a20 0020230a     for help ....# .
    4ba4:	6e6b6e55 206e776f 6d6d6f63 20646e61     Unknown command 
    4bb4:	27732527 70202d20 7361656c 72702065     '%s' - please pr
    4bc4:	20737365 455b2b48 7265746e 6f66205d     ess H+[Enter] fo
    4bd4:	65682072 230a706c 00000020 6c6c6548     r help.# ...Hell
    4be4:	6f57206f 21646c72 00000000 6c61684b     o World!....Khal
    4bf4:	00006c69                                il..

00004bf8 <C.0.6685>:
    4bf8:	00007350                                Ps..

00004bfc <rfbroadcast_mac>:
    4bfc:	43415354 00000042                       TSACB...

00004c04 <f_volume_label.5738>:
	...
    4c10:	00004f43 00000000                       CO......

00004c18 <f_version.5746>:
    4c18:	00000018 00000000 00004cf4 00004cb0     .........L...L..
    4c28:	00004ce0                                .L..

00004c2c <autorun_inf.5747>:
    4c2c:	7475415b 6e75526f 68730a5d 656c6c65     [AutoRun].shelle
    4c3c:	75636578 523d6574 2d444145 482e454d     xecute=READ-ME.H
    4c4c:	000a4d54 34302550 30252c58 252c7537     TM..P%04X,%07u,%
    4c5c:	2c583830 75373025 3330252c 00000a75     08X,%07u,%03u...
    4c6c:	46202a20 4853414c 2020203a 3d444920      * FLASH:    ID=
    4c7c:	58323025 3230252d 30252d58 000a5832     %02X-%02X-%02X..
    4c8c:	20202a20 20202020 61745320 3d737574      *       Status=
    4c9c:	58323025 0000000a 4f545541 204e5552     %02X....AUTORUN 
    4cac:	00464e49 53524556 204e4f49 00545854     INF.VERSION TXT.
    4cbc:	44414552 20454d2d 004d5448              READ-ME HTM.

00004cc8 <cmd_read_status.5660>:
    4cc8:	00000005                                ....

00004ccc <f_autorun.5748>:
    4ccc:	00000023 00000000 00004c2c 00004ca4     #.......,L...L..
    4cdc:	00004c18                                .L..

00004ce0 <f_readme.5744>:
    4ce0:	00000079 00000000 00004d14 00004cbc     y........M...L..
    4cf0:	10000190                                ....

00004cf4 <version.5745>:
    4cf4:	6e65706f 63616562 752d6e6f 3a326273     openbeacon-usb2:
    4d04:	6b6e7576 6e776f6e 00000000              vunknown....

00004d10 <cmd_jedec_read_id.5732>:
    4d10:	0000009f                                ....

00004d14 <readme.5743>:
    4d14:	6d74683c 683c3e6c 3e646165 74656d3c     <html><head><met
    4d24:	54482061 452d5054 56495551 4552223d     a HTTP-EQUIV="RE
    4d34:	53455246 63202248 65746e6f 223d746e     FRESH" content="
    4d44:	75203b30 683d6c72 3a707474 706f2f2f     0; url=http://op
    4d54:	65626e65 6e6f6361 67726f2e 65704f2f     enbeacon.org/Ope
    4d64:	6165426e 5f6e6f63 5f425355 65763f32     nBeacon_USB_2?ve
    4d74:	6e753d72 776f6e6b 3c3e226e 6165682f     r=unknown"></hea
    4d84:	2f3c3e64 6c6d7468 0000003e              d></html>...

00004d90 <bt_init_strings>:
    4d90:	00004db0 100001d0 00004dc4 00004de8     .M.......M...M..
    4da0:	00004df0 00004df8 4a2b5441 000a7325     .M...M..AT+J%s..
    4db0:	3d434553 2c322c33 34302c32 3030302c     SEC=3,2,2,04,000
    4dc0:	00000030 3d534c52 31303131 2c33312c     0...RLS=1101,13,
    4dd0:	75626544 6f432067 6c6f736e 31302c65     Debug Console,01
    4de0:	3030302c 00303030 3d534944 00000033     ,000000.DIS=3...
    4df0:	3d434141 00000031 00524353 33202a20     AAC=1...SCR. * 3
    4e00:	43415f44 58203a43 3430253d 3d592069     D_ACC: X=%04i Y=
    4e10:	69343025 253d5a20 0a693430 00000000     %04i Z=%04i.....

00004e20 <CSWTCH.6>:
    4e20:	00061a80 0007a120 000c3500 0010c8e0     .... ....5......
    4e30:	00155cc0 00186a00 001b7740 001e8480     .\...j..@w......
    4e40:	002191c0 00249f00 0027ac40 002932e0     ..!...$.@.'..2).
    4e50:	002c4020 002f4d60 0030d400 0033e140      @,.`M/...0.@.3.

00004e60 <MscDevInfo.5484>:
    4e60:	00032366 00000001 00004ea8 00004e84     f#.......N...N..
    4e70:	0007995f 00000200 0f32be00 00003045     _.........2.E0..
    4e80:	00002b21                                !+..

00004e84 <SCSI_Inquiry_String.5483>:
    4e84:	66676f4c 20656c69 6e65704f 63616542     Logfile OpenBeac
    4e94:	54206e6f 20206761 61302e32              on Tag  2.0a

00004ea0 <DeviceInfo.5485>:
    4ea0:	00000008 00004e60                       ....`N..

00004ea8 <USB_StringDescriptor>:
    4ea8:	04090304 0042031c 00740069 0061006d     ......B.i.t.m.a.
    4eb8:	0075006e 00610066 0074006b 00720075     n.u.f.a.k.t.u.r.
    4ec8:	004f0328 00650070 0042006e 00610065     (.O.p.e.n.B.e.a.
    4ed8:	006f0063 0020006e 00530055 00200042     c.o.n. .U.S.B. .
    4ee8:	00490049 00200020 0030031a 00300030     I.I. . ...0.0.0.
    4ef8:	00300030 00300030 00300030 00300030     0.0.0.0.0.0.0.0.
    4f08:	030e0030 0065004d 006f006d 00790072     0...M.e.m.o.r.y.

00004f18 <DiskBPB>:
    4f18:	4d9000eb 4e495753 00312e34 00010802     ...MSWIN4.1.....
    4f28:	00001002 00f4f800 00ff003f 00000001     ........?.......
    4f38:	0007995e 9f290080 4fe9d948 424e4550     ^.....).H..OPENB
    4f48:	4f434145 4146204e 20363154 00002020     EACON FAT16   ..

00004f58 <DiskSignature>:
    4f58:	1b07cf6e                                n...

00004f5c <BootSignature.5634>:
    4f5c:	0000aa55                                U...

00004f60 <DiskPartitionTableEntry.5633>:
    4f60:	00020000 1e3ffe06 00000001 0007995e     ......?.....^...

00004f70 <DiskRecord.5635>:
    4f70:	0003d600 0f2eea00 00002825 00000000     ........%(......
    4f80:	00000400 0001e800 00002539 00000000     ........9%......
    4f90:	0001ec00 0001e800 00002539 00000000     ........9%......
    4fa0:	0003d400 00000200 0000294d 00000000     ........M)......
    4fb0:	000001b8 00000004 00002815 00004f58     .........(..XO..
    4fc0:	000001be 00000010 00002815 00004f60     .........(..`O..
    4fd0:	000001fe 00000002 00002815 00004f5c     .........(..\O..
    4fe0:	00000200 0000003e 00002815 00004f18     ....>....(...O..
    4ff0:	000003fe 00000002 00002815 00004f5c     .........(..\O..
    5000:	53202a20 203a4950 3a4b4c43 484d7525      * SPI: CLK:%uMH
    5010:	00000a7a                                z...

00005014 <cmd.5480>:
    5014:	0000003a                                :...

00005018 <crc8_table>:
    5018:	090e0700 15121b1c 31363f38 2d2a2324     ........8?61$#*-
    5028:	797e7770 65626b6c 41464f48 5d5a5354     pw~ylkbeHOFATSZ]
    5038:	e9eee7e0 f5f2fbfc d1d6dfd8 cdcac3c4     ................
    5048:	999e9790 85828b8c a1a6afa8 bdbab3b4     ................
    5058:	cec9c0c7 d2d5dcdb f6f1f8ff eaede4e3     ................
    5068:	beb9b0b7 a2a5acab 8681888f 9a9d9493     ................
    5078:	2e292027 32353c3b 1611181f 0a0d0403     ' ).;<52........
    5088:	5e595057 42454c4b 6661686f 7a7d7473     WPY^KLEBohafst}z
    5098:	80878e89 9c9b9295 b8bfb6b1 a4a3aaad     ................
    50a8:	f0f7fef9 ecebe2e5 c8cfc6c1 d4d3dadd     ................
    50b8:	60676e69 7c7b7275 585f5651 44434a4d     ing`ur{|QV_XMJCD
    50c8:	10171e19 0c0b0205 282f2621 34333a3d     ........!&/(=:34
    50d8:	4740494e 5b5c5552 7f787176 63646d6a     NI@GRU\[vqx.jmdc
    50e8:	3730393e 2b2c2522 0f080106 13141d1a     >907"%,+........
    50f8:	a7a0a9ae bbbcb5b2 9f989196 83848d8a     ................
    5108:	d7d0d9de cbccc5c2 efe8e1e6 f3f4fdfa     ................
    5118:	4c554e3c 00003e4c 33323130 37363534     <NULL>..01234567
    5128:	62613938 66656463 6a696867 6e6d6c6b     89abcdefghijklmn
    5138:	7271706f 76757473 7a797877 00000000     opqrstuvwxyz....
    5148:	33323130 37363534 42413938 46454443     0123456789ABCDEF
    5158:	4a494847 4e4d4c4b 5251504f 56555453     GHIJKLMNOPQRSTUV
    5168:	5a595857 00000000 78383025 0000003a     WXYZ....%08x:...
    5178:	00202020 32302520 00000078 007c2020        . %02x...  |.
    5188:	0000002e 00006325 000d0a7c              ....%c..|...
