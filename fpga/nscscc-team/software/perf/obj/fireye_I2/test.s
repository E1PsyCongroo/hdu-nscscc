
obj/fireye_I2/main.elf:     file format elf32-loongarch
obj/fireye_I2/main.elf


Disassembly of section .init:

1c000000 <_start>:
_start():
1c000000:	0380040c 	ori	$r12,$r0,0x1
1c000004:	0404042c 	csrwr	$r12,0x101
1c000008:	04060020 	csrwr	$r0,0x180
1c00000c:	04060420 	csrwr	$r0,0x181
1c000010:	0380640c 	ori	$r12,$r0,0x19
1c000014:	0406002c 	csrwr	$r12,0x180
1c000018:	1540000c 	lu12i.w	$r12,-393216(0xa0000)
1c00001c:	0380258c 	ori	$r12,$r12,0x9
1c000020:	0406042c 	csrwr	$r12,0x181
1c000024:	0380400c 	ori	$r12,$r0,0x10
1c000028:	0380600d 	ori	$r13,$r0,0x18
1c00002c:	040001ac 	csrxchg	$r12,$r13,0x0
1c000030:	1438000c 	lu12i.w	$r12,114688(0x1c000)
1c000034:	038e018c 	ori	$r12,$r12,0x380
1c000038:	0400302c 	csrwr	$r12,0xc
1c00003c:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c000040:	03bcc339 	ori	$r25,$r25,0xf30
1c000044:	29800320 	st.w	$r0,$r25,0
1c000048:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c00004c:	03bd0339 	ori	$r25,$r25,0xf40
1c000050:	29800320 	st.w	$r0,$r25,0
1c000054:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c000058:	0298f18c 	addi.w	$r12,$r12,1596(0x63c)
1c00005c:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c000060:	02be91ad 	addi.w	$r13,$r13,-92(0xfa4)
1c000064:	1c00102e 	pcaddu12i	$r14,129(0x81)
1c000068:	02bae1ce 	addi.w	$r14,$r14,-328(0xeb8)
1c00006c:	6c0019ae 	bgeu	$r13,$r14,24(0x18) # 1c000084 <_start+0x84>
1c000070:	2880018f 	ld.w	$r15,$r12,0
1c000074:	298001af 	st.w	$r15,$r13,0
1c000078:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00007c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000080:	6bfff1ae 	bltu	$r13,$r14,-16(0x3fff0) # 1c000070 <_start+0x70>
1c000084:	1c00102c 	pcaddu12i	$r12,129(0x81)
1c000088:	02ba618c 	addi.w	$r12,$r12,-360(0xe98)
1c00008c:	1c00102d 	pcaddu12i	$r13,129(0x81)
1c000090:	02bcd1ad 	addi.w	$r13,$r13,-204(0xf34)
1c000094:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c0000a4 <_start+0xa4>
1c000098:	29800180 	st.w	$r0,$r12,0
1c00009c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0000a0:	6bfff98d 	bltu	$r12,$r13,-8(0x3fff8) # 1c000098 <_start+0x98>
1c0000a4:	1c002003 	pcaddu12i	$r3,256(0x100)
1c0000a8:	02bd6063 	addi.w	$r3,$r3,-168(0xf58)
1c0000ac:	5002e000 	b	736(0x2e0) # 1c00038c <run_test>
	...

1c000100 <test_finish>:
test_finish():
1c000100:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000104:	157f5fee 	lu12i.w	$r14,-263425(0xbfaff)
1c000108:	03bc41ce 	ori	$r14,$r14,0xf10
1c00010c:	298001c0 	st.w	$r0,$r14,0
1c000110:	157f5fec 	lu12i.w	$r12,-263425(0xbfaff)
1c000114:	0381818c 	ori	$r12,$r12,0x60
1c000118:	2880018c 	ld.w	$r12,$r12,0
1c00011c:	0342018c 	andi	$r12,$r12,0x80
1c000120:	5800180c 	beq	$r0,$r12,24(0x18) # 1c000138 <test_finish+0x38>
1c000124:	03400000 	andi	$r0,$r0,0x0
1c000128:	157f5f0c 	lu12i.w	$r12,-263432(0xbfaf8)
1c00012c:	2880018d 	ld.w	$r13,$r12,0
1c000130:	50001400 	b	20(0x14) # 1c000144 <test_finish+0x44>
1c000134:	03400000 	andi	$r0,$r0,0x0
1c000138:	157f5f0c 	lu12i.w	$r12,-263432(0xbfaf8)
1c00013c:	0380418c 	ori	$r12,$r12,0x10
1c000140:	2880018d 	ld.w	$r13,$r12,0
1c000144:	157f5fec 	lu12i.w	$r12,-263425(0xbfaff)
1c000148:	0381418c 	ori	$r12,$r12,0x50
1c00014c:	2980018d 	st.w	$r13,$r12,0
1c000150:	53ffc3ff 	b	-64(0xfffffc0) # 1c000110 <test_finish+0x10>
1c000154:	03400000 	andi	$r0,$r0,0x0
1c000158:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c00015c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000160:	0015018e 	move	$r14,$r12
1c000164:	00104a2f 	add.w	$r15,$r17,$r18
1c000168:	28800190 	ld.w	$r16,$r12,0
	...
1c000380:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000384:	53ffffff 	b	-4(0xffffffc) # 1c000380 <test_finish+0x280>
1c000388:	03400000 	andi	$r0,$r0,0x0

1c00038c <run_test>:
run_test():
1c00038c:	541de400 	bl	7652(0x1de4) # 1c002170 <shell15>
1c000390:	03400000 	andi	$r0,$r0,0x0

1c000394 <go_finish>:
go_finish():
1c000394:	53fd6fff 	b	-660(0xffffd6c) # 1c000100 <test_finish>

Disassembly of section .text:

1c0003a0 <check>:
check():
1c0003a0:	00101886 	add.w	$r6,$r4,$r6
1c0003a4:	6401e886 	bge	$r4,$r6,488(0x1e8) # 1c00058c <check+0x1ec>
1c0003a8:	02804c0c 	addi.w	$r12,$r0,19(0x13)
1c0003ac:	0280540d 	addi.w	$r13,$r0,21(0x15)
1c0003b0:	001c3089 	mul.w	$r9,$r4,$r12
1c0003b4:	1c00102f 	pcaddu12i	$r15,129(0x81)
1c0003b8:	02a2c1ef 	addi.w	$r15,$r15,-1872(0x8b0)
1c0003bc:	00101ca7 	add.w	$r7,$r5,$r7
1c0003c0:	028004ab 	addi.w	$r11,$r5,1(0x1)
1c0003c4:	00101dee 	add.w	$r14,$r15,$r7
1c0003c8:	1c001010 	pcaddu12i	$r16,128(0x80)
1c0003cc:	02bc7210 	addi.w	$r16,$r16,-228(0xf1c)
1c0003d0:	001c3484 	mul.w	$r4,$r4,$r13
1c0003d4:	00101531 	add.w	$r17,$r9,$r5
1c0003d8:	00408a33 	slli.w	$r19,$r17,0x2
1c0003dc:	00104e10 	add.w	$r16,$r16,$r19
1c0003e0:	001c34ca 	mul.w	$r10,$r6,$r13
1c0003e4:	00101172 	add.w	$r18,$r11,$r4
1c0003e8:	001049ef 	add.w	$r15,$r15,$r18
1c0003ec:	001011c4 	add.w	$r4,$r14,$r4
1c0003f0:	00103946 	add.w	$r6,$r10,$r14
1c0003f4:	640188a7 	bge	$r5,$r7,392(0x188) # 1c00057c <check+0x1dc>
1c0003f8:	283ffdf4 	ld.b	$r20,$r15,-1(0xfff)
1c0003fc:	5c017a88 	bne	$r20,$r8,376(0x178) # 1c000574 <check+0x1d4>
1c000400:	2880020c 	ld.w	$r12,$r16,0
1c000404:	5c017180 	bne	$r12,$r0,368(0x170) # 1c000574 <check+0x1d4>
1c000408:	00113c89 	sub.w	$r9,$r4,$r15
1c00040c:	03401d2a 	andi	$r10,$r9,0x7
1c000410:	001501ec 	move	$r12,$r15
1c000414:	0015020d 	move	$r13,$r16
1c000418:	5800c540 	beq	$r10,$r0,196(0xc4) # 1c0004dc <check+0x13c>
1c00041c:	280001ed 	ld.b	$r13,$r15,0
1c000420:	5c0155a8 	bne	$r13,$r8,340(0x154) # 1c000574 <check+0x1d4>
1c000424:	2880120b 	ld.w	$r11,$r16,4(0x4)
1c000428:	0280120d 	addi.w	$r13,$r16,4(0x4)
1c00042c:	028005ec 	addi.w	$r12,$r15,1(0x1)
1c000430:	5c014560 	bne	$r11,$r0,324(0x144) # 1c000574 <check+0x1d4>
1c000434:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c000438:	5800a54e 	beq	$r10,$r14,164(0xa4) # 1c0004dc <check+0x13c>
1c00043c:	02800811 	addi.w	$r17,$r0,2(0x2)
1c000440:	58008551 	beq	$r10,$r17,132(0x84) # 1c0004c4 <check+0x124>
1c000444:	02800c12 	addi.w	$r18,$r0,3(0x3)
1c000448:	58006552 	beq	$r10,$r18,100(0x64) # 1c0004ac <check+0x10c>
1c00044c:	02801013 	addi.w	$r19,$r0,4(0x4)
1c000450:	58004553 	beq	$r10,$r19,68(0x44) # 1c000494 <check+0xf4>
1c000454:	02801414 	addi.w	$r20,$r0,5(0x5)
1c000458:	58002554 	beq	$r10,$r20,36(0x24) # 1c00047c <check+0xdc>
1c00045c:	02801809 	addi.w	$r9,$r0,6(0x6)
1c000460:	5c013549 	bne	$r10,$r9,308(0x134) # 1c000594 <check+0x1f4>
1c000464:	2800018e 	ld.b	$r14,$r12,0
1c000468:	5c010dc8 	bne	$r14,$r8,268(0x10c) # 1c000574 <check+0x1d4>
1c00046c:	288011b1 	ld.w	$r17,$r13,4(0x4)
1c000470:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000474:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000478:	5c00fe20 	bne	$r17,$r0,252(0xfc) # 1c000574 <check+0x1d4>
1c00047c:	28000192 	ld.b	$r18,$r12,0
1c000480:	5c00f648 	bne	$r18,$r8,244(0xf4) # 1c000574 <check+0x1d4>
1c000484:	288011b3 	ld.w	$r19,$r13,4(0x4)
1c000488:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00048c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000490:	5c00e660 	bne	$r19,$r0,228(0xe4) # 1c000574 <check+0x1d4>
1c000494:	28000194 	ld.b	$r20,$r12,0
1c000498:	5c00de88 	bne	$r20,$r8,220(0xdc) # 1c000574 <check+0x1d4>
1c00049c:	288011a9 	ld.w	$r9,$r13,4(0x4)
1c0004a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0004a4:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0004a8:	5c00cd20 	bne	$r9,$r0,204(0xcc) # 1c000574 <check+0x1d4>
1c0004ac:	2800018a 	ld.b	$r10,$r12,0
1c0004b0:	5c00c548 	bne	$r10,$r8,196(0xc4) # 1c000574 <check+0x1d4>
1c0004b4:	288011ab 	ld.w	$r11,$r13,4(0x4)
1c0004b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0004bc:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0004c0:	5c00b560 	bne	$r11,$r0,180(0xb4) # 1c000574 <check+0x1d4>
1c0004c4:	2800018e 	ld.b	$r14,$r12,0
1c0004c8:	5c00adc8 	bne	$r14,$r8,172(0xac) # 1c000574 <check+0x1d4>
1c0004cc:	288011b1 	ld.w	$r17,$r13,4(0x4)
1c0004d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0004d4:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0004d8:	5c009e20 	bne	$r17,$r0,156(0x9c) # 1c000574 <check+0x1d4>
1c0004dc:	5800a184 	beq	$r12,$r4,160(0xa0) # 1c00057c <check+0x1dc>
1c0004e0:	28000192 	ld.b	$r18,$r12,0
1c0004e4:	5c009248 	bne	$r18,$r8,144(0x90) # 1c000574 <check+0x1d4>
1c0004e8:	288011b3 	ld.w	$r19,$r13,4(0x4)
1c0004ec:	028011b4 	addi.w	$r20,$r13,4(0x4)
1c0004f0:	02800589 	addi.w	$r9,$r12,1(0x1)
1c0004f4:	5c008260 	bne	$r19,$r0,128(0x80) # 1c000574 <check+0x1d4>
1c0004f8:	2800058a 	ld.b	$r10,$r12,1(0x1)
1c0004fc:	5c007948 	bne	$r10,$r8,120(0x78) # 1c000574 <check+0x1d4>
1c000500:	2880128b 	ld.w	$r11,$r20,4(0x4)
1c000504:	5c007160 	bne	$r11,$r0,112(0x70) # 1c000574 <check+0x1d4>
1c000508:	2800098e 	ld.b	$r14,$r12,2(0x2)
1c00050c:	5c0069c8 	bne	$r14,$r8,104(0x68) # 1c000574 <check+0x1d4>
1c000510:	288031b1 	ld.w	$r17,$r13,12(0xc)
1c000514:	5c006220 	bne	$r17,$r0,96(0x60) # 1c000574 <check+0x1d4>
1c000518:	28000d92 	ld.b	$r18,$r12,3(0x3)
1c00051c:	5c005a48 	bne	$r18,$r8,88(0x58) # 1c000574 <check+0x1d4>
1c000520:	288041b3 	ld.w	$r19,$r13,16(0x10)
1c000524:	028041ad 	addi.w	$r13,$r13,16(0x10)
1c000528:	5c004e60 	bne	$r19,$r0,76(0x4c) # 1c000574 <check+0x1d4>
1c00052c:	2800118c 	ld.b	$r12,$r12,4(0x4)
1c000530:	5c004588 	bne	$r12,$r8,68(0x44) # 1c000574 <check+0x1d4>
1c000534:	288011aa 	ld.w	$r10,$r13,4(0x4)
1c000538:	5c003d40 	bne	$r10,$r0,60(0x3c) # 1c000574 <check+0x1d4>
1c00053c:	2800112b 	ld.b	$r11,$r9,4(0x4)
1c000540:	5c003568 	bne	$r11,$r8,52(0x34) # 1c000574 <check+0x1d4>
1c000544:	2880528e 	ld.w	$r14,$r20,20(0x14)
1c000548:	5c002dc0 	bne	$r14,$r0,44(0x2c) # 1c000574 <check+0x1d4>
1c00054c:	28001531 	ld.b	$r17,$r9,5(0x5)
1c000550:	5c002628 	bne	$r17,$r8,36(0x24) # 1c000574 <check+0x1d4>
1c000554:	28806292 	ld.w	$r18,$r20,24(0x18)
1c000558:	5c001e40 	bne	$r18,$r0,28(0x1c) # 1c000574 <check+0x1d4>
1c00055c:	28001933 	ld.b	$r19,$r9,6(0x6)
1c000560:	5c001668 	bne	$r19,$r8,20(0x14) # 1c000574 <check+0x1d4>
1c000564:	2880728a 	ld.w	$r10,$r20,28(0x1c)
1c000568:	0280728d 	addi.w	$r13,$r20,28(0x1c)
1c00056c:	02801d2c 	addi.w	$r12,$r9,7(0x7)
1c000570:	5bff6d40 	beq	$r10,$r0,-148(0x3ff6c) # 1c0004dc <check+0x13c>
1c000574:	02800404 	addi.w	$r4,$r0,1(0x1)
1c000578:	4c000020 	jirl	$r0,$r1,0
1c00057c:	02805484 	addi.w	$r4,$r4,21(0x15)
1c000580:	02813210 	addi.w	$r16,$r16,76(0x4c)
1c000584:	028055ef 	addi.w	$r15,$r15,21(0x15)
1c000588:	5ffe6c86 	bne	$r4,$r6,-404(0x3fe6c) # 1c0003f4 <check+0x54>
1c00058c:	00150004 	move	$r4,$r0
1c000590:	4c000020 	jirl	$r0,$r1,0
1c000594:	2800018a 	ld.b	$r10,$r12,0
1c000598:	5fffdd48 	bne	$r10,$r8,-36(0x3ffdc) # 1c000574 <check+0x1d4>
1c00059c:	288011ab 	ld.w	$r11,$r13,4(0x4)
1c0005a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0005a4:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0005a8:	5bfebd60 	beq	$r11,$r0,-324(0x3febc) # 1c000464 <check+0xc4>
1c0005ac:	53ffcbff 	b	-56(0xfffffc8) # 1c000574 <check+0x1d4>

1c0005b0 <find>:
find():
1c0005b0:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c0005b4:	001c3108 	mul.w	$r8,$r8,$r12
1c0005b8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0005bc:	00101cc9 	add.w	$r9,$r6,$r7
1c0005c0:	29809078 	st.w	$r24,$r3,36(0x24)
1c0005c4:	29808079 	st.w	$r25,$r3,32(0x20)
1c0005c8:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c0005cc:	2980507c 	st.w	$r28,$r3,20(0x14)
1c0005d0:	2980407d 	st.w	$r29,$r3,16(0x10)
1c0005d4:	2980307e 	st.w	$r30,$r3,12(0xc)
1c0005d8:	2980207f 	st.w	$r31,$r3,8(0x8)
1c0005dc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0005e0:	2980a077 	st.w	$r23,$r3,40(0x28)
1c0005e4:	2980607b 	st.w	$r27,$r3,24(0x18)
1c0005e8:	1c00102b 	pcaddu12i	$r11,129(0x81)
1c0005ec:	28a4c16b 	ld.w	$r11,$r11,-1744(0x930)
1c0005f0:	1c00102a 	pcaddu12i	$r10,129(0x81)
1c0005f4:	28a4914a 	ld.w	$r10,$r10,-1756(0x924)
1c0005f8:	0010192e 	add.w	$r14,$r9,$r6
1c0005fc:	0040852d 	slli.w	$r13,$r9,0x1
1c000600:	29801146 	st.w	$r6,$r10,4(0x4)
1c000604:	29802149 	st.w	$r9,$r10,8(0x8)
1c000608:	29804146 	st.w	$r6,$r10,16(0x10)
1c00060c:	29805149 	st.w	$r9,$r10,20(0x14)
1c000610:	29807146 	st.w	$r6,$r10,28(0x1c)
1c000614:	29808149 	st.w	$r9,$r10,32(0x20)
1c000618:	2980a146 	st.w	$r6,$r10,40(0x28)
1c00061c:	2980b149 	st.w	$r9,$r10,44(0x2c)
1c000620:	2980d146 	st.w	$r6,$r10,52(0x34)
1c000624:	2980e149 	st.w	$r9,$r10,56(0x38)
1c000628:	29806169 	st.w	$r9,$r11,24(0x18)
1c00062c:	1c001018 	pcaddu12i	$r24,128(0x80)
1c000630:	02af1318 	addi.w	$r24,$r24,-1084(0xbc4)
1c000634:	29800140 	st.w	$r0,$r10,0
1c000638:	29803140 	st.w	$r0,$r10,12(0xc)
1c00063c:	29806140 	st.w	$r0,$r10,24(0x18)
1c000640:	29809140 	st.w	$r0,$r10,36(0x24)
1c000644:	2980c140 	st.w	$r0,$r10,48(0x30)
1c000648:	29800160 	st.w	$r0,$r11,0
1c00064c:	29803166 	st.w	$r6,$r11,12(0xc)
1c000650:	2980916e 	st.w	$r14,$r11,36(0x24)
1c000654:	2980c16d 	st.w	$r13,$r11,48(0x30)
1c000658:	29801160 	st.w	$r0,$r11,4(0x4)
1c00065c:	29802160 	st.w	$r0,$r11,8(0x8)
1c000660:	29804166 	st.w	$r6,$r11,16(0x10)
1c000664:	29805166 	st.w	$r6,$r11,20(0x14)
1c000668:	0015009d 	move	$r29,$r4
1c00066c:	29807169 	st.w	$r9,$r11,28(0x1c)
1c000670:	29808169 	st.w	$r9,$r11,32(0x20)
1c000674:	2980a16e 	st.w	$r14,$r11,40(0x28)
1c000678:	2980b16e 	st.w	$r14,$r11,44(0x2c)
1c00067c:	2980d16d 	st.w	$r13,$r11,52(0x34)
1c000680:	2980e16d 	st.w	$r13,$r11,56(0x38)
1c000684:	00150009 	move	$r9,$r0
1c000688:	02800c1c 	addi.w	$r28,$r0,3(0x3)
1c00068c:	02804c1f 	addi.w	$r31,$r0,19(0x13)
1c000690:	1c00101e 	pcaddu12i	$r30,128(0x80)
1c000694:	02b153de 	addi.w	$r30,$r30,-940(0xc54)
1c000698:	0280541a 	addi.w	$r26,$r0,21(0x15)
1c00069c:	1c001019 	pcaddu12i	$r25,128(0x80)
1c0006a0:	02972339 	addi.w	$r25,$r25,1480(0x5c8)
1c0006a4:	00102318 	add.w	$r24,$r24,$r8
1c0006a8:	001500cc 	move	$r12,$r6
1c0006ac:	03400000 	andi	$r0,$r0,0x0
1c0006b0:	0020f124 	mod.w	$r4,$r9,$r28
1c0006b4:	5c000b80 	bne	$r28,$r0,8(0x8) # 1c0006bc <find+0x10c>
1c0006b8:	002a0007 	break	0x7
1c0006bc:	0340048f 	andi	$r15,$r4,0x1
1c0006c0:	001500d4 	move	$r20,$r6
1c0006c4:	580009e0 	beq	$r15,$r0,8(0x8) # 1c0006cc <find+0x11c>
1c0006c8:	001500f4 	move	$r20,$r7
1c0006cc:	28800310 	ld.w	$r16,$r24,0
1c0006d0:	28800171 	ld.w	$r17,$r11,0
1c0006d4:	28800153 	ld.w	$r19,$r10,0
1c0006d8:	02400612 	sltui	$r18,$r16,1(0x1)
1c0006dc:	001047b6 	add.w	$r22,$r29,$r17
1c0006e0:	00114817 	sub.w	$r23,$r0,$r18
1c0006e4:	001032db 	add.w	$r27,$r22,$r12
1c0006e8:	03402eec 	andi	$r12,$r23,0xb
1c0006ec:	00104cb3 	add.w	$r19,$r5,$r19
1c0006f0:	02808d8c 	addi.w	$r12,$r12,35(0x23)
1c0006f4:	640216db 	bge	$r22,$r27,532(0x214) # 1c000908 <find+0x358>
1c0006f8:	001c7ec8 	mul.w	$r8,$r22,$r31
1c0006fc:	02800664 	addi.w	$r4,$r19,1(0x1)
1c000700:	00105274 	add.w	$r20,$r19,$r20
1c000704:	001c6ace 	mul.w	$r14,$r22,$r26
1c000708:	00104d10 	add.w	$r16,$r8,$r19
1c00070c:	00408a17 	slli.w	$r23,$r16,0x2
1c000710:	00105fd0 	add.w	$r16,$r30,$r23
1c000714:	001c6b6d 	mul.w	$r13,$r27,$r26
1c000718:	00103891 	add.w	$r17,$r4,$r14
1c00071c:	001065cf 	add.w	$r15,$r14,$r25
1c000720:	00104732 	add.w	$r18,$r25,$r17
1c000724:	001051ef 	add.w	$r15,$r15,$r20
1c000728:	001065b6 	add.w	$r22,$r13,$r25
1c00072c:	001052c8 	add.w	$r8,$r22,$r20
1c000730:	6401ca74 	bge	$r19,$r20,456(0x1c8) # 1c0008f8 <find+0x348>
1c000734:	283ffe5b 	ld.b	$r27,$r18,-1(0xfff)
1c000738:	5c020b6c 	bne	$r27,$r12,520(0x208) # 1c000940 <find+0x390>
1c00073c:	28800204 	ld.w	$r4,$r16,0
1c000740:	5c020080 	bne	$r4,$r0,512(0x200) # 1c000940 <find+0x390>
1c000744:	001149f1 	sub.w	$r17,$r15,$r18
1c000748:	03401e36 	andi	$r22,$r17,0x7
1c00074c:	0015024d 	move	$r13,$r18
1c000750:	0015020e 	move	$r14,$r16
1c000754:	5800dec0 	beq	$r22,$r0,220(0xdc) # 1c000830 <find+0x280>
1c000758:	2800024e 	ld.b	$r14,$r18,0
1c00075c:	5c016dcc 	bne	$r14,$r12,364(0x16c) # 1c0008c8 <find+0x318>
1c000760:	28801217 	ld.w	$r23,$r16,4(0x4)
1c000764:	0280120e 	addi.w	$r14,$r16,4(0x4)
1c000768:	0280064d 	addi.w	$r13,$r18,1(0x1)
1c00076c:	5c015ee0 	bne	$r23,$r0,348(0x15c) # 1c0008c8 <find+0x318>
1c000770:	0280041b 	addi.w	$r27,$r0,1(0x1)
1c000774:	5800bedb 	beq	$r22,$r27,188(0xbc) # 1c000830 <find+0x280>
1c000778:	02800811 	addi.w	$r17,$r0,2(0x2)
1c00077c:	58009ed1 	beq	$r22,$r17,156(0x9c) # 1c000818 <find+0x268>
1c000780:	02800c17 	addi.w	$r23,$r0,3(0x3)
1c000784:	58007ed7 	beq	$r22,$r23,124(0x7c) # 1c000800 <find+0x250>
1c000788:	0280101b 	addi.w	$r27,$r0,4(0x4)
1c00078c:	58005edb 	beq	$r22,$r27,92(0x5c) # 1c0007e8 <find+0x238>
1c000790:	02801411 	addi.w	$r17,$r0,5(0x5)
1c000794:	58003ed1 	beq	$r22,$r17,60(0x3c) # 1c0007d0 <find+0x220>
1c000798:	02801817 	addi.w	$r23,$r0,6(0x6)
1c00079c:	58001ed7 	beq	$r22,$r23,28(0x1c) # 1c0007b8 <find+0x208>
1c0007a0:	280001b6 	ld.b	$r22,$r13,0
1c0007a4:	5c0126cc 	bne	$r22,$r12,292(0x124) # 1c0008c8 <find+0x318>
1c0007a8:	288011db 	ld.w	$r27,$r14,4(0x4)
1c0007ac:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0007b0:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0007b4:	5c011760 	bne	$r27,$r0,276(0x114) # 1c0008c8 <find+0x318>
1c0007b8:	280001b1 	ld.b	$r17,$r13,0
1c0007bc:	5c010e2c 	bne	$r17,$r12,268(0x10c) # 1c0008c8 <find+0x318>
1c0007c0:	288011d7 	ld.w	$r23,$r14,4(0x4)
1c0007c4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0007c8:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0007cc:	5c00fee0 	bne	$r23,$r0,252(0xfc) # 1c0008c8 <find+0x318>
1c0007d0:	280001b6 	ld.b	$r22,$r13,0
1c0007d4:	5c00f6cc 	bne	$r22,$r12,244(0xf4) # 1c0008c8 <find+0x318>
1c0007d8:	288011db 	ld.w	$r27,$r14,4(0x4)
1c0007dc:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0007e0:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0007e4:	5c00e760 	bne	$r27,$r0,228(0xe4) # 1c0008c8 <find+0x318>
1c0007e8:	280001b1 	ld.b	$r17,$r13,0
1c0007ec:	5c00de2c 	bne	$r17,$r12,220(0xdc) # 1c0008c8 <find+0x318>
1c0007f0:	288011d7 	ld.w	$r23,$r14,4(0x4)
1c0007f4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0007f8:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0007fc:	5c00cee0 	bne	$r23,$r0,204(0xcc) # 1c0008c8 <find+0x318>
1c000800:	280001b6 	ld.b	$r22,$r13,0
1c000804:	5c00c6cc 	bne	$r22,$r12,196(0xc4) # 1c0008c8 <find+0x318>
1c000808:	288011db 	ld.w	$r27,$r14,4(0x4)
1c00080c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000810:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c000814:	5c00b760 	bne	$r27,$r0,180(0xb4) # 1c0008c8 <find+0x318>
1c000818:	280001b1 	ld.b	$r17,$r13,0
1c00081c:	5c00ae2c 	bne	$r17,$r12,172(0xac) # 1c0008c8 <find+0x318>
1c000820:	288011d7 	ld.w	$r23,$r14,4(0x4)
1c000824:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000828:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c00082c:	5c009ee0 	bne	$r23,$r0,156(0x9c) # 1c0008c8 <find+0x318>
1c000830:	5800c9af 	beq	$r13,$r15,200(0xc8) # 1c0008f8 <find+0x348>
1c000834:	280001b6 	ld.b	$r22,$r13,0
1c000838:	5c0092cc 	bne	$r22,$r12,144(0x90) # 1c0008c8 <find+0x318>
1c00083c:	288011db 	ld.w	$r27,$r14,4(0x4)
1c000840:	028011d1 	addi.w	$r17,$r14,4(0x4)
1c000844:	028005b7 	addi.w	$r23,$r13,1(0x1)
1c000848:	5c008360 	bne	$r27,$r0,128(0x80) # 1c0008c8 <find+0x318>
1c00084c:	280005b6 	ld.b	$r22,$r13,1(0x1)
1c000850:	5c007acc 	bne	$r22,$r12,120(0x78) # 1c0008c8 <find+0x318>
1c000854:	2880123b 	ld.w	$r27,$r17,4(0x4)
1c000858:	5c007360 	bne	$r27,$r0,112(0x70) # 1c0008c8 <find+0x318>
1c00085c:	280009b6 	ld.b	$r22,$r13,2(0x2)
1c000860:	5c006acc 	bne	$r22,$r12,104(0x68) # 1c0008c8 <find+0x318>
1c000864:	288031db 	ld.w	$r27,$r14,12(0xc)
1c000868:	5c006360 	bne	$r27,$r0,96(0x60) # 1c0008c8 <find+0x318>
1c00086c:	28000db6 	ld.b	$r22,$r13,3(0x3)
1c000870:	5c005acc 	bne	$r22,$r12,88(0x58) # 1c0008c8 <find+0x318>
1c000874:	288041db 	ld.w	$r27,$r14,16(0x10)
1c000878:	028041ce 	addi.w	$r14,$r14,16(0x10)
1c00087c:	5c004f60 	bne	$r27,$r0,76(0x4c) # 1c0008c8 <find+0x318>
1c000880:	280011ad 	ld.b	$r13,$r13,4(0x4)
1c000884:	5c0045ac 	bne	$r13,$r12,68(0x44) # 1c0008c8 <find+0x318>
1c000888:	288011d6 	ld.w	$r22,$r14,4(0x4)
1c00088c:	5c003ec0 	bne	$r22,$r0,60(0x3c) # 1c0008c8 <find+0x318>
1c000890:	280012fb 	ld.b	$r27,$r23,4(0x4)
1c000894:	5c00376c 	bne	$r27,$r12,52(0x34) # 1c0008c8 <find+0x318>
1c000898:	2880522e 	ld.w	$r14,$r17,20(0x14)
1c00089c:	5c002dc0 	bne	$r14,$r0,44(0x2c) # 1c0008c8 <find+0x318>
1c0008a0:	280016ed 	ld.b	$r13,$r23,5(0x5)
1c0008a4:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c0008c8 <find+0x318>
1c0008a8:	28806236 	ld.w	$r22,$r17,24(0x18)
1c0008ac:	5c001ec0 	bne	$r22,$r0,28(0x1c) # 1c0008c8 <find+0x318>
1c0008b0:	28001afb 	ld.b	$r27,$r23,6(0x6)
1c0008b4:	5c00176c 	bne	$r27,$r12,20(0x14) # 1c0008c8 <find+0x318>
1c0008b8:	28807236 	ld.w	$r22,$r17,28(0x1c)
1c0008bc:	0280722e 	addi.w	$r14,$r17,28(0x1c)
1c0008c0:	02801eed 	addi.w	$r13,$r23,7(0x7)
1c0008c4:	5bff6ec0 	beq	$r22,$r0,-148(0x3ff6c) # 1c000830 <find+0x280>
1c0008c8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0008cc:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c0008d0:	28809078 	ld.w	$r24,$r3,36(0x24)
1c0008d4:	28808079 	ld.w	$r25,$r3,32(0x20)
1c0008d8:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c0008dc:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c0008e0:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c0008e4:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c0008e8:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c0008ec:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c0008f0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0008f4:	4c000020 	jirl	$r0,$r1,0
1c0008f8:	028055ef 	addi.w	$r15,$r15,21(0x15)
1c0008fc:	02813210 	addi.w	$r16,$r16,76(0x4c)
1c000900:	02805652 	addi.w	$r18,$r18,21(0x15)
1c000904:	5ffe2de8 	bne	$r15,$r8,-468(0x3fe2c) # 1c000730 <find+0x180>
1c000908:	02800529 	addi.w	$r9,$r9,1(0x1)
1c00090c:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c000910:	5800652d 	beq	$r9,$r13,100(0x64) # 1c000974 <find+0x3c4>
1c000914:	00207124 	div.w	$r4,$r9,$r28
1c000918:	5c000b80 	bne	$r28,$r0,8(0x8) # 1c000920 <find+0x370>
1c00091c:	002a0007 	break	0x7
1c000920:	03400488 	andi	$r8,$r4,0x1
1c000924:	001500cc 	move	$r12,$r6
1c000928:	58000900 	beq	$r8,$r0,8(0x8) # 1c000930 <find+0x380>
1c00092c:	001500ec 	move	$r12,$r7
1c000930:	0280116b 	addi.w	$r11,$r11,4(0x4)
1c000934:	0280114a 	addi.w	$r10,$r10,4(0x4)
1c000938:	02801318 	addi.w	$r24,$r24,4(0x4)
1c00093c:	53fd77ff 	b	-652(0xffffd74) # 1c0006b0 <find+0x100>
1c000940:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c000944:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c000948:	28809078 	ld.w	$r24,$r3,36(0x24)
1c00094c:	28808079 	ld.w	$r25,$r3,32(0x20)
1c000950:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c000954:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c000958:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c00095c:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c000960:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c000964:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c000968:	00150004 	move	$r4,$r0
1c00096c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c000970:	4c000020 	jirl	$r0,$r1,0
1c000974:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c000978:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c00097c:	28809078 	ld.w	$r24,$r3,36(0x24)
1c000980:	28808079 	ld.w	$r25,$r3,32(0x20)
1c000984:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c000988:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c00098c:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c000990:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c000994:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c000998:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c00099c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0009a0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0009a4:	4c000020 	jirl	$r0,$r1,0
1c0009a8:	03400000 	andi	$r0,$r0,0x0
1c0009ac:	03400000 	andi	$r0,$r0,0x0

1c0009b0 <shell15_main>:
shell15_main():
1c0009b0:	02bdc063 	addi.w	$r3,$r3,-144(0xf70)
1c0009b4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0009b8:	2981e07a 	st.w	$r26,$r3,120(0x78)
1c0009bc:	29823061 	st.w	$r1,$r3,140(0x8c)
1c0009c0:	29822076 	st.w	$r22,$r3,136(0x88)
1c0009c4:	29821077 	st.w	$r23,$r3,132(0x84)
1c0009c8:	29820078 	st.w	$r24,$r3,128(0x80)
1c0009cc:	2981f079 	st.w	$r25,$r3,124(0x7c)
1c0009d0:	2981d07b 	st.w	$r27,$r3,116(0x74)
1c0009d4:	2981c07c 	st.w	$r28,$r3,112(0x70)
1c0009d8:	2981b07d 	st.w	$r29,$r3,108(0x6c)
1c0009dc:	2981a07e 	st.w	$r30,$r3,104(0x68)
1c0009e0:	2981907f 	st.w	$r31,$r3,100(0x64)
1c0009e4:	1c00101a 	pcaddu12i	$r26,128(0x80)
1c0009e8:	028a035a 	addi.w	$r26,$r26,640(0x280)
1c0009ec:	2980b06c 	st.w	$r12,$r3,44(0x2c)
1c0009f0:	00150005 	move	$r5,$r0
1c0009f4:	03a60006 	ori	$r6,$r0,0x980
1c0009f8:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0009fc:	02a3b084 	addi.w	$r4,$r4,-1812(0x8ec)
1c000a00:	544a2000 	bl	18976(0x4a20) # 1c005420 <memset>
1c000a04:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000a08:	02941084 	addi.w	$r4,$r4,1284(0x504)
1c000a0c:	28800085 	ld.w	$r5,$r4,0
1c000a10:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c000a14:	29801065 	st.w	$r5,$r3,4(0x4)
1c000a18:	640e51a5 	bge	$r13,$r5,3664(0xe50) # 1c001868 <shell15_main+0xeb8>
1c000a1c:	1c00100e 	pcaddu12i	$r14,128(0x80)
1c000a20:	0293c1ce 	addi.w	$r14,$r14,1264(0x4f0)
1c000a24:	288001de 	ld.w	$r30,$r14,0
1c000a28:	1c00100f 	pcaddu12i	$r15,128(0x80)
1c000a2c:	02a1f1ef 	addi.w	$r15,$r15,-1924(0x87c)
1c000a30:	288001f1 	ld.w	$r17,$r15,0
1c000a34:	288011f6 	ld.w	$r22,$r15,4(0x4)
1c000a38:	288021f2 	ld.w	$r18,$r15,8(0x8)
1c000a3c:	288031e4 	ld.w	$r4,$r15,12(0xc)
1c000a40:	288041f3 	ld.w	$r19,$r15,16(0x10)
1c000a44:	288051e8 	ld.w	$r8,$r15,20(0x14)
1c000a48:	288061f4 	ld.w	$r20,$r15,24(0x18)
1c000a4c:	288071ea 	ld.w	$r10,$r15,28(0x1c)
1c000a50:	288081e6 	ld.w	$r6,$r15,32(0x20)
1c000a54:	288091e1 	ld.w	$r1,$r15,36(0x24)
1c000a58:	2880a1e7 	ld.w	$r7,$r15,40(0x28)
1c000a5c:	2880b1f8 	ld.w	$r24,$r15,44(0x2c)
1c000a60:	2880c1e9 	ld.w	$r9,$r15,48(0x30)
1c000a64:	2880d1f9 	ld.w	$r25,$r15,52(0x34)
1c000a68:	2880e1eb 	ld.w	$r11,$r15,56(0x38)
1c000a6c:	2880f1fb 	ld.w	$r27,$r15,60(0x3c)
1c000a70:	6400a5be 	bge	$r13,$r30,164(0xa4) # 1c000b14 <shell15_main+0x164>
1c000a74:	2880107d 	ld.w	$r29,$r3,4(0x4)
1c000a78:	02805410 	addi.w	$r16,$r0,21(0x15)
1c000a7c:	02bfac17 	addi.w	$r23,$r0,-21(0xfeb)
1c000a80:	001c4231 	mul.w	$r17,$r17,$r16
1c000a84:	0280ab5c 	addi.w	$r28,$r26,42(0x2a)
1c000a88:	00107b8e 	add.w	$r14,$r28,$r30
1c000a8c:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c000a90:	0280b81c 	addi.w	$r28,$r0,46(0x2e)
1c000a94:	001c5fa5 	mul.w	$r5,$r29,$r23
1c000a98:	02800b57 	addi.w	$r23,$r26,2(0x2)
1c000a9c:	001c4252 	mul.w	$r18,$r18,$r16
1c000aa0:	001c4273 	mul.w	$r19,$r19,$r16
1c000aa4:	001c4294 	mul.w	$r20,$r20,$r16
1c000aa8:	001c40c6 	mul.w	$r6,$r6,$r16
1c000aac:	001c40e7 	mul.w	$r7,$r7,$r16
1c000ab0:	001c4129 	mul.w	$r9,$r9,$r16
1c000ab4:	001c416b 	mul.w	$r11,$r11,$r16
1c000ab8:	02bf5810 	addi.w	$r16,$r0,-42(0xfd6)
1c000abc:	03400000 	andi	$r0,$r0,0x0
1c000ac0:	001142ec 	sub.w	$r12,$r23,$r16
1c000ac4:	001131df 	sub.w	$r31,$r14,$r12
1c000ac8:	03400fef 	andi	$r15,$r31,0x3
1c000acc:	5809bde0 	beq	$r15,$r0,2492(0x9bc) # 1c001488 <shell15_main+0xad8>
1c000ad0:	0280041d 	addi.w	$r29,$r0,1(0x1)
1c000ad4:	580025fd 	beq	$r15,$r29,36(0x24) # 1c000af8 <shell15_main+0x148>
1c000ad8:	0280081f 	addi.w	$r31,$r0,2(0x2)
1c000adc:	580011ff 	beq	$r15,$r31,16(0x10) # 1c000aec <shell15_main+0x13c>
1c000ae0:	2800018f 	ld.b	$r15,$r12,0
1c000ae4:	580beded 	beq	$r15,$r13,3052(0xbec) # 1c0016d0 <shell15_main+0xd20>
1c000ae8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000aec:	2800018f 	ld.b	$r15,$r12,0
1c000af0:	580b59ed 	beq	$r15,$r13,2904(0xb58) # 1c001648 <shell15_main+0xc98>
1c000af4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000af8:	2800019d 	ld.b	$r29,$r12,0
1c000afc:	580ce7ad 	beq	$r29,$r13,3300(0xce4) # 1c0017e0 <shell15_main+0xe30>
1c000b00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000b04:	5c09858e 	bne	$r12,$r14,2436(0x984) # 1c001488 <shell15_main+0xad8>
1c000b08:	02bfae10 	addi.w	$r16,$r16,-21(0xfeb)
1c000b0c:	028055ce 	addi.w	$r14,$r14,21(0x15)
1c000b10:	5fffb205 	bne	$r16,$r5,-80(0x3ffb0) # 1c000ac0 <shell15_main+0x110>
1c000b14:	02bfffd6 	addi.w	$r22,$r30,-1(0xfff)
1c000b18:	2880107e 	ld.w	$r30,$r3,4(0x4)
1c000b1c:	02bff818 	addi.w	$r24,$r0,-2(0xffe)
1c000b20:	02805417 	addi.w	$r23,$r0,21(0x15)
1c000b24:	00117804 	sub.w	$r4,$r0,$r30
1c000b28:	29804064 	st.w	$r4,$r3,16(0x10)
1c000b2c:	29813060 	st.w	$r0,$r3,76(0x4c)
1c000b30:	29812060 	st.w	$r0,$r3,72(0x48)
1c000b34:	29811060 	st.w	$r0,$r3,68(0x44)
1c000b38:	02808c1e 	addi.w	$r30,$r0,35(0x23)
1c000b3c:	001502dc 	move	$r28,$r22
1c000b40:	02800808 	addi.w	$r8,$r0,2(0x2)
1c000b44:	00116001 	sub.w	$r1,$r0,$r24
1c000b48:	640c111c 	bge	$r8,$r28,3088(0xc10) # 1c001758 <shell15_main+0xda8>
1c000b4c:	28801066 	ld.w	$r6,$r3,4(0x4)
1c000b50:	02bfac19 	addi.w	$r25,$r0,-21(0xfeb)
1c000b54:	02bed00a 	addi.w	$r10,$r0,-76(0xfb4)
1c000b58:	001c6712 	mul.w	$r18,$r24,$r25
1c000b5c:	02bffcc7 	addi.w	$r7,$r6,-1(0xfff)
1c000b60:	29800067 	st.w	$r7,$r3,0
1c000b64:	02805407 	addi.w	$r7,$r0,21(0x15)
1c000b68:	0280541b 	addi.w	$r27,$r0,21(0x15)
1c000b6c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c000b70:	02806354 	addi.w	$r20,$r26,24(0x18)
1c000b74:	0280aaee 	addi.w	$r14,$r23,42(0x2a)
1c000b78:	001160a9 	sub.w	$r9,$r5,$r24
1c000b7c:	02800808 	addi.w	$r8,$r0,2(0x2)
1c000b80:	0280b81d 	addi.w	$r29,$r0,46(0x2e)
1c000b84:	2980306e 	st.w	$r14,$r3,12(0xc)
1c000b88:	0015003f 	move	$r31,$r1
1c000b8c:	001c1c2b 	mul.w	$r11,$r1,$r7
1c000b90:	02805650 	addi.w	$r16,$r18,21(0x15)
1c000b94:	29806070 	st.w	$r16,$r3,24(0x18)
1c000b98:	001c2b11 	mul.w	$r17,$r24,$r10
1c000b9c:	00102f4d 	add.w	$r13,$r26,$r11
1c000ba0:	00105e8a 	add.w	$r10,$r20,$r23
1c000ba4:	2980506d 	st.w	$r13,$r3,20(0x14)
1c000ba8:	001c6f13 	mul.w	$r19,$r24,$r27
1c000bac:	02802236 	addi.w	$r22,$r17,8(0x8)
1c000bb0:	0280071b 	addi.w	$r27,$r24,1(0x1)
1c000bb4:	29802073 	st.w	$r19,$r3,8(0x8)
1c000bb8:	50001800 	b	24(0x18) # 1c000bd0 <shell15_main+0x220>
1c000bbc:	03400000 	andi	$r0,$r0,0x0
1c000bc0:	00150188 	move	$r8,$r12
1c000bc4:	0280054a 	addi.w	$r10,$r10,1(0x1)
1c000bc8:	028012d6 	addi.w	$r22,$r22,4(0x4)
1c000bcc:	640b8d9c 	bge	$r12,$r28,2956(0xb8c) # 1c001758 <shell15_main+0xda8>
1c000bd0:	283ffd4d 	ld.b	$r13,$r10,-1(0xfff)
1c000bd4:	0280050c 	addi.w	$r12,$r8,1(0x1)
1c000bd8:	5fffe9bd 	bne	$r13,$r29,-24(0x3ffe8) # 1c000bc0 <shell15_main+0x210>
1c000bdc:	2800014f 	ld.b	$r15,$r10,0
1c000be0:	5fffe1fe 	bne	$r15,$r30,-32(0x3ffe0) # 1c000bc0 <shell15_main+0x210>
1c000be4:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000be8:	029c0084 	addi.w	$r4,$r4,1792(0x700)
1c000bec:	00105881 	add.w	$r1,$r4,$r22
1c000bf0:	28800030 	ld.w	$r16,$r1,0
1c000bf4:	5fffce00 	bne	$r16,$r0,-52(0x3ffcc) # 1c000bc0 <shell15_main+0x210>
1c000bf8:	02800919 	addi.w	$r25,$r8,2(0x2)
1c000bfc:	2980a079 	st.w	$r25,$r3,40(0x28)
1c000c00:	02800405 	addi.w	$r5,$r0,1(0x1)
1c000c04:	64014b3c 	bge	$r25,$r28,328(0x148) # 1c000d4c <shell15_main+0x39c>
1c000c08:	28000551 	ld.b	$r17,$r10,1(0x1)
1c000c0c:	5c01423e 	bne	$r17,$r30,320(0x140) # 1c000d4c <shell15_main+0x39c>
1c000c10:	00113392 	sub.w	$r18,$r28,$r12
1c000c14:	02bffa53 	addi.w	$r19,$r18,-2(0xffe)
1c000c18:	03401e66 	andi	$r6,$r19,0x7
1c000c1c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c000c20:	02bffd54 	addi.w	$r20,$r10,-1(0xfff)
1c000c24:	580098c0 	beq	$r6,$r0,152(0x98) # 1c000cbc <shell15_main+0x30c>
1c000c28:	2800094b 	ld.b	$r11,$r10,2(0x2)
1c000c2c:	0280080e 	addi.w	$r14,$r0,2(0x2)
1c000c30:	5c01197e 	bne	$r11,$r30,280(0x118) # 1c000d48 <shell15_main+0x398>
1c000c34:	580088c5 	beq	$r6,$r5,136(0x88) # 1c000cbc <shell15_main+0x30c>
1c000c38:	580074ce 	beq	$r6,$r14,116(0x74) # 1c000cac <shell15_main+0x2fc>
1c000c3c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c000c40:	58005cc5 	beq	$r6,$r5,92(0x5c) # 1c000c9c <shell15_main+0x2ec>
1c000c44:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c000c48:	580044cf 	beq	$r6,$r15,68(0x44) # 1c000c8c <shell15_main+0x2dc>
1c000c4c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c000c50:	58002cc4 	beq	$r6,$r4,44(0x2c) # 1c000c7c <shell15_main+0x2cc>
1c000c54:	02801801 	addi.w	$r1,$r0,6(0x6)
1c000c58:	580014c1 	beq	$r6,$r1,20(0x14) # 1c000c6c <shell15_main+0x2bc>
1c000c5c:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000c60:	00103a99 	add.w	$r25,$r20,$r14
1c000c64:	28000731 	ld.b	$r17,$r25,1(0x1)
1c000c68:	5c00e23e 	bne	$r17,$r30,224(0xe0) # 1c000d48 <shell15_main+0x398>
1c000c6c:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000c70:	00103a93 	add.w	$r19,$r20,$r14
1c000c74:	28000666 	ld.b	$r6,$r19,1(0x1)
1c000c78:	5c00d0de 	bne	$r6,$r30,208(0xd0) # 1c000d48 <shell15_main+0x398>
1c000c7c:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000c80:	00103a8b 	add.w	$r11,$r20,$r14
1c000c84:	28000565 	ld.b	$r5,$r11,1(0x1)
1c000c88:	5c00c0be 	bne	$r5,$r30,192(0xc0) # 1c000d48 <shell15_main+0x398>
1c000c8c:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000c90:	00103a8f 	add.w	$r15,$r20,$r14
1c000c94:	280005e4 	ld.b	$r4,$r15,1(0x1)
1c000c98:	5c00b09e 	bne	$r4,$r30,176(0xb0) # 1c000d48 <shell15_main+0x398>
1c000c9c:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000ca0:	00103a81 	add.w	$r1,$r20,$r14
1c000ca4:	28000439 	ld.b	$r25,$r1,1(0x1)
1c000ca8:	5c00a33e 	bne	$r25,$r30,160(0xa0) # 1c000d48 <shell15_main+0x398>
1c000cac:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000cb0:	00103a91 	add.w	$r17,$r20,$r14
1c000cb4:	28000633 	ld.b	$r19,$r17,1(0x1)
1c000cb8:	5c00927e 	bne	$r19,$r30,144(0x90) # 1c000d48 <shell15_main+0x398>
1c000cbc:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000cc0:	00150245 	move	$r5,$r18
1c000cc4:	00103a86 	add.w	$r6,$r20,$r14
1c000cc8:	001501cb 	move	$r11,$r14
1c000ccc:	580081d2 	beq	$r14,$r18,128(0x80) # 1c000d4c <shell15_main+0x39c>
1c000cd0:	280004c5 	ld.b	$r5,$r6,1(0x1)
1c000cd4:	5c0074be 	bne	$r5,$r30,116(0x74) # 1c000d48 <shell15_main+0x398>
1c000cd8:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000cdc:	00103a8f 	add.w	$r15,$r20,$r14
1c000ce0:	280005e4 	ld.b	$r4,$r15,1(0x1)
1c000ce4:	5c00649e 	bne	$r4,$r30,100(0x64) # 1c000d48 <shell15_main+0x398>
1c000ce8:	0280096e 	addi.w	$r14,$r11,2(0x2)
1c000cec:	00103a81 	add.w	$r1,$r20,$r14
1c000cf0:	28000439 	ld.b	$r25,$r1,1(0x1)
1c000cf4:	5c00573e 	bne	$r25,$r30,84(0x54) # 1c000d48 <shell15_main+0x398>
1c000cf8:	02800d6e 	addi.w	$r14,$r11,3(0x3)
1c000cfc:	00103a91 	add.w	$r17,$r20,$r14
1c000d00:	28000633 	ld.b	$r19,$r17,1(0x1)
1c000d04:	5c00467e 	bne	$r19,$r30,68(0x44) # 1c000d48 <shell15_main+0x398>
1c000d08:	0280116e 	addi.w	$r14,$r11,4(0x4)
1c000d0c:	00103a86 	add.w	$r6,$r20,$r14
1c000d10:	280004c5 	ld.b	$r5,$r6,1(0x1)
1c000d14:	5c0034be 	bne	$r5,$r30,52(0x34) # 1c000d48 <shell15_main+0x398>
1c000d18:	0280156e 	addi.w	$r14,$r11,5(0x5)
1c000d1c:	00103a8f 	add.w	$r15,$r20,$r14
1c000d20:	280005e4 	ld.b	$r4,$r15,1(0x1)
1c000d24:	5c00249e 	bne	$r4,$r30,36(0x24) # 1c000d48 <shell15_main+0x398>
1c000d28:	0280196e 	addi.w	$r14,$r11,6(0x6)
1c000d2c:	00103a81 	add.w	$r1,$r20,$r14
1c000d30:	28000439 	ld.b	$r25,$r1,1(0x1)
1c000d34:	5c00173e 	bne	$r25,$r30,20(0x14) # 1c000d48 <shell15_main+0x398>
1c000d38:	02801d6e 	addi.w	$r14,$r11,7(0x7)
1c000d3c:	00103a8b 	add.w	$r11,$r20,$r14
1c000d40:	28000571 	ld.b	$r17,$r11,1(0x1)
1c000d44:	5bff7a3e 	beq	$r17,$r30,-136(0x3ff78) # 1c000cbc <shell15_main+0x30c>
1c000d48:	001501c5 	move	$r5,$r14
1c000d4c:	28800074 	ld.w	$r20,$r3,0
1c000d50:	67fe7134 	bge	$r9,$r20,-400(0x3fe70) # 1c000bc0 <shell15_main+0x210>
1c000d54:	28802072 	ld.w	$r18,$r3,8(0x8)
1c000d58:	28803066 	ld.w	$r6,$r3,12(0xc)
1c000d5c:	0015012e 	move	$r14,$r9
1c000d60:	00104953 	add.w	$r19,$r10,$r18
1c000d64:	00101a6f 	add.w	$r15,$r19,$r6
1c000d68:	280001e4 	ld.b	$r4,$r15,0
1c000d6c:	0015014f 	move	$r15,$r10
1c000d70:	5ffe509e 	bne	$r4,$r30,-432(0x3fe50) # 1c000bc0 <shell15_main+0x210>
1c000d74:	00142401 	nor	$r1,$r0,$r9
1c000d78:	00105039 	add.w	$r25,$r1,$r20
1c000d7c:	03401f2b 	andi	$r11,$r25,0x7
1c000d80:	5800c160 	beq	$r11,$r0,192(0xc0) # 1c000e40 <shell15_main+0x490>
1c000d84:	0280554f 	addi.w	$r15,$r10,21(0x15)
1c000d88:	280055f4 	ld.b	$r20,$r15,21(0x15)
1c000d8c:	00102771 	add.w	$r17,$r27,$r9
1c000d90:	0280052e 	addi.w	$r14,$r9,1(0x1)
1c000d94:	5c013e9e 	bne	$r20,$r30,316(0x13c) # 1c000ed0 <shell15_main+0x520>
1c000d98:	02800411 	addi.w	$r17,$r0,1(0x1)
1c000d9c:	5800a571 	beq	$r11,$r17,164(0xa4) # 1c000e40 <shell15_main+0x490>
1c000da0:	02800812 	addi.w	$r18,$r0,2(0x2)
1c000da4:	58008972 	beq	$r11,$r18,136(0x88) # 1c000e2c <shell15_main+0x47c>
1c000da8:	02800c13 	addi.w	$r19,$r0,3(0x3)
1c000dac:	58006d73 	beq	$r11,$r19,108(0x6c) # 1c000e18 <shell15_main+0x468>
1c000db0:	02801006 	addi.w	$r6,$r0,4(0x4)
1c000db4:	58005166 	beq	$r11,$r6,80(0x50) # 1c000e04 <shell15_main+0x454>
1c000db8:	02801404 	addi.w	$r4,$r0,5(0x5)
1c000dbc:	58003564 	beq	$r11,$r4,52(0x34) # 1c000df0 <shell15_main+0x440>
1c000dc0:	02801801 	addi.w	$r1,$r0,6(0x6)
1c000dc4:	58001961 	beq	$r11,$r1,24(0x18) # 1c000ddc <shell15_main+0x42c>
1c000dc8:	2800a9f9 	ld.b	$r25,$r15,42(0x2a)
1c000dcc:	00103b71 	add.w	$r17,$r27,$r14
1c000dd0:	028055ef 	addi.w	$r15,$r15,21(0x15)
1c000dd4:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000dd8:	5c00fb3e 	bne	$r25,$r30,248(0xf8) # 1c000ed0 <shell15_main+0x520>
1c000ddc:	2800a9eb 	ld.b	$r11,$r15,42(0x2a)
1c000de0:	00103b71 	add.w	$r17,$r27,$r14
1c000de4:	028055ef 	addi.w	$r15,$r15,21(0x15)
1c000de8:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000dec:	5c00e57e 	bne	$r11,$r30,228(0xe4) # 1c000ed0 <shell15_main+0x520>
1c000df0:	2800a9f4 	ld.b	$r20,$r15,42(0x2a)
1c000df4:	00103b71 	add.w	$r17,$r27,$r14
1c000df8:	028055ef 	addi.w	$r15,$r15,21(0x15)
1c000dfc:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000e00:	5c00d29e 	bne	$r20,$r30,208(0xd0) # 1c000ed0 <shell15_main+0x520>
1c000e04:	2800a9f2 	ld.b	$r18,$r15,42(0x2a)
1c000e08:	00103b71 	add.w	$r17,$r27,$r14
1c000e0c:	028055ef 	addi.w	$r15,$r15,21(0x15)
1c000e10:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000e14:	5c00be5e 	bne	$r18,$r30,188(0xbc) # 1c000ed0 <shell15_main+0x520>
1c000e18:	2800a9f3 	ld.b	$r19,$r15,42(0x2a)
1c000e1c:	00103b71 	add.w	$r17,$r27,$r14
1c000e20:	028055ef 	addi.w	$r15,$r15,21(0x15)
1c000e24:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000e28:	5c00aa7e 	bne	$r19,$r30,168(0xa8) # 1c000ed0 <shell15_main+0x520>
1c000e2c:	028055ef 	addi.w	$r15,$r15,21(0x15)
1c000e30:	280055e6 	ld.b	$r6,$r15,21(0x15)
1c000e34:	00103b71 	add.w	$r17,$r27,$r14
1c000e38:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000e3c:	5c0094de 	bne	$r6,$r30,148(0x94) # 1c000ed0 <shell15_main+0x520>
1c000e40:	28800061 	ld.w	$r1,$r3,0
1c000e44:	028005d2 	addi.w	$r18,$r14,1(0x1)
1c000e48:	00103b71 	add.w	$r17,$r27,$r14
1c000e4c:	028009d3 	addi.w	$r19,$r14,2(0x2)
1c000e50:	02800dc4 	addi.w	$r4,$r14,3(0x3)
1c000e54:	64007e41 	bge	$r18,$r1,124(0x7c) # 1c000ed0 <shell15_main+0x520>
1c000e58:	2800a9f4 	ld.b	$r20,$r15,42(0x2a)
1c000e5c:	028011c6 	addi.w	$r6,$r14,4(0x4)
1c000e60:	028015cb 	addi.w	$r11,$r14,5(0x5)
1c000e64:	028019c1 	addi.w	$r1,$r14,6(0x6)
1c000e68:	02801dd9 	addi.w	$r25,$r14,7(0x7)
1c000e6c:	028021ce 	addi.w	$r14,$r14,8(0x8)
1c000e70:	5c00629e 	bne	$r20,$r30,96(0x60) # 1c000ed0 <shell15_main+0x520>
1c000e74:	2800fdf4 	ld.b	$r20,$r15,63(0x3f)
1c000e78:	00104b71 	add.w	$r17,$r27,$r18
1c000e7c:	5c00569e 	bne	$r20,$r30,84(0x54) # 1c000ed0 <shell15_main+0x520>
1c000e80:	280151f2 	ld.b	$r18,$r15,84(0x54)
1c000e84:	00104f71 	add.w	$r17,$r27,$r19
1c000e88:	5c004a5e 	bne	$r18,$r30,72(0x48) # 1c000ed0 <shell15_main+0x520>
1c000e8c:	2801a5f3 	ld.b	$r19,$r15,105(0x69)
1c000e90:	00101371 	add.w	$r17,$r27,$r4
1c000e94:	5c003e7e 	bne	$r19,$r30,60(0x3c) # 1c000ed0 <shell15_main+0x520>
1c000e98:	2801f9e4 	ld.b	$r4,$r15,126(0x7e)
1c000e9c:	00101b71 	add.w	$r17,$r27,$r6
1c000ea0:	5c00309e 	bne	$r4,$r30,48(0x30) # 1c000ed0 <shell15_main+0x520>
1c000ea4:	28024de6 	ld.b	$r6,$r15,147(0x93)
1c000ea8:	00102f71 	add.w	$r17,$r27,$r11
1c000eac:	5c0024de 	bne	$r6,$r30,36(0x24) # 1c000ed0 <shell15_main+0x520>
1c000eb0:	0282a1ef 	addi.w	$r15,$r15,168(0xa8)
1c000eb4:	280001eb 	ld.b	$r11,$r15,0
1c000eb8:	00100771 	add.w	$r17,$r27,$r1
1c000ebc:	5c00157e 	bne	$r11,$r30,20(0x14) # 1c000ed0 <shell15_main+0x520>
1c000ec0:	280055e1 	ld.b	$r1,$r15,21(0x15)
1c000ec4:	00106771 	add.w	$r17,$r27,$r25
1c000ec8:	5bff783e 	beq	$r1,$r30,-136(0x3ff78) # 1c000e40 <shell15_main+0x490>
1c000ecc:	03400000 	andi	$r0,$r0,0x0
1c000ed0:	004084b9 	slli.w	$r25,$r5,0x1
1c000ed4:	0011472e 	sub.w	$r14,$r25,$r17
1c000ed8:	001501c4 	move	$r4,$r14
1c000edc:	67fce40e 	bge	$r0,$r14,-796(0x3fce4) # 1c000bc0 <shell15_main+0x210>
1c000ee0:	02bff414 	addi.w	$r20,$r0,-3(0xffd)
1c000ee4:	001c50b2 	mul.w	$r18,$r5,$r20
1c000ee8:	00408633 	slli.w	$r19,$r17,0x1
1c000eec:	00104a66 	add.w	$r6,$r19,$r18
1c000ef0:	29807066 	st.w	$r6,$r3,28(0x1c)
1c000ef4:	67fccc06 	bge	$r0,$r6,-820(0x3fccc) # 1c000bc0 <shell15_main+0x210>
1c000ef8:	0010150f 	add.w	$r15,$r8,$r5
1c000efc:	028005eb 	addi.w	$r11,$r15,1(0x1)
1c000f00:	2980e06f 	st.w	$r15,$r3,56(0x38)
1c000f04:	2980c06b 	st.w	$r11,$r3,48(0x30)
1c000f08:	600d1568 	blt	$r11,$r8,3348(0xd14) # 1c001c1c <shell15_main+0x126c>
1c000f0c:	283fa959 	ld.b	$r25,$r10,-22(0xfea)
1c000f10:	5bfcb33e 	beq	$r25,$r30,-848(0x3fcb0) # 1c000bc0 <shell15_main+0x210>
1c000f14:	00116231 	sub.w	$r17,$r17,$r24
1c000f18:	001c1e34 	mul.w	$r20,$r17,$r7
1c000f1c:	29810071 	st.w	$r17,$r3,64(0x40)
1c000f20:	0010534e 	add.w	$r14,$r26,$r20
1c000f24:	001021d2 	add.w	$r18,$r14,$r8
1c000f28:	28000253 	ld.b	$r19,$r18,0
1c000f2c:	5bfc967e 	beq	$r19,$r30,-876(0x3fc94) # 1c000bc0 <shell15_main+0x210>
1c000f30:	2880e061 	ld.w	$r1,$r3,56(0x38)
1c000f34:	1c00100f 	pcaddu12i	$r15,128(0x80)
1c000f38:	02b4c1ef 	addi.w	$r15,$r15,-720(0xd30)
1c000f3c:	028005eb 	addi.w	$r11,$r15,1(0x1)
1c000f40:	00105106 	add.w	$r6,$r8,$r20
1c000f44:	00100579 	add.w	$r25,$r11,$r1
1c000f48:	00101b4e 	add.w	$r14,$r26,$r6
1c000f4c:	00105334 	add.w	$r20,$r25,$r20
1c000f50:	02bfac12 	addi.w	$r18,$r0,-21(0xfeb)
1c000f54:	001c4a26 	mul.w	$r6,$r17,$r18
1c000f58:	00113a91 	sub.w	$r17,$r20,$r14
1c000f5c:	03401e33 	andi	$r19,$r17,0x7
1c000f60:	5800fa60 	beq	$r19,$r0,248(0xf8) # 1c001058 <shell15_main+0x6a8>
1c000f64:	00105dcf 	add.w	$r15,$r14,$r23
1c000f68:	001019eb 	add.w	$r11,$r15,$r6
1c000f6c:	28000561 	ld.b	$r1,$r11,1(0x1)
1c000f70:	5bfc503e 	beq	$r1,$r30,-944(0x3fc50) # 1c000bc0 <shell15_main+0x210>
1c000f74:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000f78:	280001d9 	ld.b	$r25,$r14,0
1c000f7c:	5bfc473e 	beq	$r25,$r30,-956(0x3fc44) # 1c000bc0 <shell15_main+0x210>
1c000f80:	02800412 	addi.w	$r18,$r0,1(0x1)
1c000f84:	5800d672 	beq	$r19,$r18,212(0xd4) # 1c001058 <shell15_main+0x6a8>
1c000f88:	02800811 	addi.w	$r17,$r0,2(0x2)
1c000f8c:	5800b271 	beq	$r19,$r17,176(0xb0) # 1c00103c <shell15_main+0x68c>
1c000f90:	02800c0f 	addi.w	$r15,$r0,3(0x3)
1c000f94:	58008e6f 	beq	$r19,$r15,140(0x8c) # 1c001020 <shell15_main+0x670>
1c000f98:	0280100b 	addi.w	$r11,$r0,4(0x4)
1c000f9c:	58006a6b 	beq	$r19,$r11,104(0x68) # 1c001004 <shell15_main+0x654>
1c000fa0:	02801401 	addi.w	$r1,$r0,5(0x5)
1c000fa4:	58004661 	beq	$r19,$r1,68(0x44) # 1c000fe8 <shell15_main+0x638>
1c000fa8:	02801819 	addi.w	$r25,$r0,6(0x6)
1c000fac:	58002279 	beq	$r19,$r25,32(0x20) # 1c000fcc <shell15_main+0x61c>
1c000fb0:	00105dd3 	add.w	$r19,$r14,$r23
1c000fb4:	00101a72 	add.w	$r18,$r19,$r6
1c000fb8:	28000651 	ld.b	$r17,$r18,1(0x1)
1c000fbc:	5bfc063e 	beq	$r17,$r30,-1020(0x3fc04) # 1c000bc0 <shell15_main+0x210>
1c000fc0:	280005cf 	ld.b	$r15,$r14,1(0x1)
1c000fc4:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000fc8:	5bfbf9fe 	beq	$r15,$r30,-1032(0x3fbf8) # 1c000bc0 <shell15_main+0x210>
1c000fcc:	00105dcb 	add.w	$r11,$r14,$r23
1c000fd0:	00101961 	add.w	$r1,$r11,$r6
1c000fd4:	28000439 	ld.b	$r25,$r1,1(0x1)
1c000fd8:	5bfbeb3e 	beq	$r25,$r30,-1048(0x3fbe8) # 1c000bc0 <shell15_main+0x210>
1c000fdc:	280005d3 	ld.b	$r19,$r14,1(0x1)
1c000fe0:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c000fe4:	5bfbde7e 	beq	$r19,$r30,-1060(0x3fbdc) # 1c000bc0 <shell15_main+0x210>
1c000fe8:	00105dd2 	add.w	$r18,$r14,$r23
1c000fec:	00101a51 	add.w	$r17,$r18,$r6
1c000ff0:	2800062f 	ld.b	$r15,$r17,1(0x1)
1c000ff4:	5bfbcdfe 	beq	$r15,$r30,-1076(0x3fbcc) # 1c000bc0 <shell15_main+0x210>
1c000ff8:	280005cb 	ld.b	$r11,$r14,1(0x1)
1c000ffc:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c001000:	5bfbc17e 	beq	$r11,$r30,-1088(0x3fbc0) # 1c000bc0 <shell15_main+0x210>
1c001004:	00105dc1 	add.w	$r1,$r14,$r23
1c001008:	00101839 	add.w	$r25,$r1,$r6
1c00100c:	28000733 	ld.b	$r19,$r25,1(0x1)
1c001010:	5bfbb27e 	beq	$r19,$r30,-1104(0x3fbb0) # 1c000bc0 <shell15_main+0x210>
1c001014:	280005d2 	ld.b	$r18,$r14,1(0x1)
1c001018:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c00101c:	5bfba65e 	beq	$r18,$r30,-1116(0x3fba4) # 1c000bc0 <shell15_main+0x210>
1c001020:	00105dd1 	add.w	$r17,$r14,$r23
1c001024:	00101a2f 	add.w	$r15,$r17,$r6
1c001028:	280005eb 	ld.b	$r11,$r15,1(0x1)
1c00102c:	5bfb957e 	beq	$r11,$r30,-1132(0x3fb94) # 1c000bc0 <shell15_main+0x210>
1c001030:	280005c1 	ld.b	$r1,$r14,1(0x1)
1c001034:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c001038:	5bfb883e 	beq	$r1,$r30,-1144(0x3fb88) # 1c000bc0 <shell15_main+0x210>
1c00103c:	00105dd9 	add.w	$r25,$r14,$r23
1c001040:	00101b33 	add.w	$r19,$r25,$r6
1c001044:	28000672 	ld.b	$r18,$r19,1(0x1)
1c001048:	5bfb7a5e 	beq	$r18,$r30,-1160(0x3fb78) # 1c000bc0 <shell15_main+0x210>
1c00104c:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c001050:	280001d1 	ld.b	$r17,$r14,0
1c001054:	5bfb6e3e 	beq	$r17,$r30,-1172(0x3fb6c) # 1c000bc0 <shell15_main+0x210>
1c001058:	5800e9d4 	beq	$r14,$r20,232(0xe8) # 1c001140 <shell15_main+0x790>
1c00105c:	00105dd1 	add.w	$r17,$r14,$r23
1c001060:	00101a32 	add.w	$r18,$r17,$r6
1c001064:	28000659 	ld.b	$r25,$r18,1(0x1)
1c001068:	5bfb5b3e 	beq	$r25,$r30,-1192(0x3fb58) # 1c000bc0 <shell15_main+0x210>
1c00106c:	280005cb 	ld.b	$r11,$r14,1(0x1)
1c001070:	028005c1 	addi.w	$r1,$r14,1(0x1)
1c001074:	5bfb4d7e 	beq	$r11,$r30,-1204(0x3fb4c) # 1c000bc0 <shell15_main+0x210>
1c001078:	00105c2f 	add.w	$r15,$r1,$r23
1c00107c:	001019f3 	add.w	$r19,$r15,$r6
1c001080:	28000671 	ld.b	$r17,$r19,1(0x1)
1c001084:	5bfb3e3e 	beq	$r17,$r30,-1220(0x3fb3c) # 1c000bc0 <shell15_main+0x210>
1c001088:	280009d9 	ld.b	$r25,$r14,2(0x2)
1c00108c:	028009d2 	addi.w	$r18,$r14,2(0x2)
1c001090:	5bfb333e 	beq	$r25,$r30,-1232(0x3fb30) # 1c000bc0 <shell15_main+0x210>
1c001094:	00105e4b 	add.w	$r11,$r18,$r23
1c001098:	0010196f 	add.w	$r15,$r11,$r6
1c00109c:	280005f3 	ld.b	$r19,$r15,1(0x1)
1c0010a0:	5bfb227e 	beq	$r19,$r30,-1248(0x3fb20) # 1c000bc0 <shell15_main+0x210>
1c0010a4:	28000dd1 	ld.b	$r17,$r14,3(0x3)
1c0010a8:	02800dd9 	addi.w	$r25,$r14,3(0x3)
1c0010ac:	5bfb163e 	beq	$r17,$r30,-1260(0x3fb14) # 1c000bc0 <shell15_main+0x210>
1c0010b0:	00105f32 	add.w	$r18,$r25,$r23
1c0010b4:	00101a4b 	add.w	$r11,$r18,$r6
1c0010b8:	2800056f 	ld.b	$r15,$r11,1(0x1)
1c0010bc:	5bfb05fe 	beq	$r15,$r30,-1276(0x3fb04) # 1c000bc0 <shell15_main+0x210>
1c0010c0:	280011d3 	ld.b	$r19,$r14,4(0x4)
1c0010c4:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0010c8:	5bfafa7e 	beq	$r19,$r30,-1288(0x3faf8) # 1c000bc0 <shell15_main+0x210>
1c0010cc:	00105dd1 	add.w	$r17,$r14,$r23
1c0010d0:	00101a39 	add.w	$r25,$r17,$r6
1c0010d4:	28000732 	ld.b	$r18,$r25,1(0x1)
1c0010d8:	5bfaea5e 	beq	$r18,$r30,-1304(0x3fae8) # 1c000bc0 <shell15_main+0x210>
1c0010dc:	2800102b 	ld.b	$r11,$r1,4(0x4)
1c0010e0:	0280102f 	addi.w	$r15,$r1,4(0x4)
1c0010e4:	5bfadd7e 	beq	$r11,$r30,-1316(0x3fadc) # 1c000bc0 <shell15_main+0x210>
1c0010e8:	00105df3 	add.w	$r19,$r15,$r23
1c0010ec:	00101a6e 	add.w	$r14,$r19,$r6
1c0010f0:	280005d1 	ld.b	$r17,$r14,1(0x1)
1c0010f4:	5bface3e 	beq	$r17,$r30,-1332(0x3facc) # 1c000bc0 <shell15_main+0x210>
1c0010f8:	28001439 	ld.b	$r25,$r1,5(0x5)
1c0010fc:	02801432 	addi.w	$r18,$r1,5(0x5)
1c001100:	5bfac33e 	beq	$r25,$r30,-1344(0x3fac0) # 1c000bc0 <shell15_main+0x210>
1c001104:	00105e4b 	add.w	$r11,$r18,$r23
1c001108:	0010196f 	add.w	$r15,$r11,$r6
1c00110c:	280005f3 	ld.b	$r19,$r15,1(0x1)
1c001110:	5bfab27e 	beq	$r19,$r30,-1360(0x3fab0) # 1c000bc0 <shell15_main+0x210>
1c001114:	28001831 	ld.b	$r17,$r1,6(0x6)
1c001118:	0280182e 	addi.w	$r14,$r1,6(0x6)
1c00111c:	5bfaa63e 	beq	$r17,$r30,-1372(0x3faa4) # 1c000bc0 <shell15_main+0x210>
1c001120:	00105dd9 	add.w	$r25,$r14,$r23
1c001124:	00101b32 	add.w	$r18,$r25,$r6
1c001128:	2800064b 	ld.b	$r11,$r18,1(0x1)
1c00112c:	5bfa957e 	beq	$r11,$r30,-1388(0x3fa94) # 1c000bc0 <shell15_main+0x210>
1c001130:	28001c2f 	ld.b	$r15,$r1,7(0x7)
1c001134:	02801c2e 	addi.w	$r14,$r1,7(0x7)
1c001138:	5bfa89fe 	beq	$r15,$r30,-1400(0x3fa88) # 1c000bc0 <shell15_main+0x210>
1c00113c:	5fff21d4 	bne	$r14,$r20,-224(0x3ff20) # 1c00105c <shell15_main+0x6ac>
1c001140:	28810074 	ld.w	$r20,$r3,64(0x40)
1c001144:	640227f4 	bge	$r31,$r20,548(0x224) # 1c001368 <shell15_main+0x9b8>
1c001148:	2880506e 	ld.w	$r14,$r3,20(0x14)
1c00114c:	2880c066 	ld.w	$r6,$r3,48(0x30)
1c001150:	001019cf 	add.w	$r15,$r14,$r6
1c001154:	280001eb 	ld.b	$r11,$r15,0
1c001158:	5bfa697e 	beq	$r11,$r30,-1432(0x3fa68) # 1c000bc0 <shell15_main+0x210>
1c00115c:	001c1e81 	mul.w	$r1,$r20,$r7
1c001160:	28806079 	ld.w	$r25,$r3,24(0x18)
1c001164:	00101b51 	add.w	$r17,$r26,$r6
1c001168:	1479e792 	lu12i.w	$r18,249660(0x3cf3c)
1c00116c:	00101b33 	add.w	$r19,$r25,$r6
1c001170:	00104f4e 	add.w	$r14,$r26,$r19
1c001174:	03bcf654 	ori	$r20,$r18,0xf3d
1c001178:	00104426 	add.w	$r6,$r1,$r17
1c00117c:	001138cf 	sub.w	$r15,$r6,$r14
1c001180:	001c51eb 	mul.w	$r11,$r15,$r20
1c001184:	03401d61 	andi	$r1,$r11,0x7
1c001188:	5800f420 	beq	$r1,$r0,244(0xf4) # 1c00127c <shell15_main+0x8cc>
1c00118c:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c001190:	001165d3 	sub.w	$r19,$r14,$r25
1c001194:	00102271 	add.w	$r17,$r19,$r8
1c001198:	28000232 	ld.b	$r18,$r17,0
1c00119c:	5bfa265e 	beq	$r18,$r30,-1500(0x3fa24) # 1c000bc0 <shell15_main+0x210>
1c0011a0:	028055ce 	addi.w	$r14,$r14,21(0x15)
1c0011a4:	283fadd4 	ld.b	$r20,$r14,-21(0xfeb)
1c0011a8:	5bfa1a9e 	beq	$r20,$r30,-1512(0x3fa18) # 1c000bc0 <shell15_main+0x210>
1c0011ac:	0280040f 	addi.w	$r15,$r0,1(0x1)
1c0011b0:	580a782f 	beq	$r1,$r15,2680(0xa78) # 1c001c28 <shell15_main+0x1278>
1c0011b4:	0280080b 	addi.w	$r11,$r0,2(0x2)
1c0011b8:	5800a42b 	beq	$r1,$r11,164(0xa4) # 1c00125c <shell15_main+0x8ac>
1c0011bc:	02800c13 	addi.w	$r19,$r0,3(0x3)
1c0011c0:	58007c33 	beq	$r1,$r19,124(0x7c) # 1c00123c <shell15_main+0x88c>
1c0011c4:	02801011 	addi.w	$r17,$r0,4(0x4)
1c0011c8:	58005431 	beq	$r1,$r17,84(0x54) # 1c00121c <shell15_main+0x86c>
1c0011cc:	02801412 	addi.w	$r18,$r0,5(0x5)
1c0011d0:	58002c32 	beq	$r1,$r18,44(0x2c) # 1c0011fc <shell15_main+0x84c>
1c0011d4:	02801814 	addi.w	$r20,$r0,6(0x6)
1c0011d8:	5c06ec34 	bne	$r1,$r20,1772(0x6ec) # 1c0018c4 <shell15_main+0xf14>
1c0011dc:	2880c073 	ld.w	$r19,$r3,48(0x30)
1c0011e0:	00114dd1 	sub.w	$r17,$r14,$r19
1c0011e4:	00102232 	add.w	$r18,$r17,$r8
1c0011e8:	28000254 	ld.b	$r20,$r18,0
1c0011ec:	5bf9d69e 	beq	$r20,$r30,-1580(0x3f9d4) # 1c000bc0 <shell15_main+0x210>
1c0011f0:	280001c1 	ld.b	$r1,$r14,0
1c0011f4:	028055ce 	addi.w	$r14,$r14,21(0x15)
1c0011f8:	5bf9c83e 	beq	$r1,$r30,-1592(0x3f9c8) # 1c000bc0 <shell15_main+0x210>
1c0011fc:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c001200:	001165cf 	sub.w	$r15,$r14,$r25
1c001204:	001021eb 	add.w	$r11,$r15,$r8
1c001208:	28000173 	ld.b	$r19,$r11,0
1c00120c:	5bf9b67e 	beq	$r19,$r30,-1612(0x3f9b4) # 1c000bc0 <shell15_main+0x210>
1c001210:	280001d1 	ld.b	$r17,$r14,0
1c001214:	028055ce 	addi.w	$r14,$r14,21(0x15)
1c001218:	5bf9aa3e 	beq	$r17,$r30,-1624(0x3f9a8) # 1c000bc0 <shell15_main+0x210>
1c00121c:	2880c072 	ld.w	$r18,$r3,48(0x30)
1c001220:	001149d4 	sub.w	$r20,$r14,$r18
1c001224:	00102281 	add.w	$r1,$r20,$r8
1c001228:	28000039 	ld.b	$r25,$r1,0
1c00122c:	5bf9973e 	beq	$r25,$r30,-1644(0x3f994) # 1c000bc0 <shell15_main+0x210>
1c001230:	280001cf 	ld.b	$r15,$r14,0
1c001234:	028055ce 	addi.w	$r14,$r14,21(0x15)
1c001238:	5bf989fe 	beq	$r15,$r30,-1656(0x3f988) # 1c000bc0 <shell15_main+0x210>
1c00123c:	2880c06b 	ld.w	$r11,$r3,48(0x30)
1c001240:	00112dd3 	sub.w	$r19,$r14,$r11
1c001244:	00102271 	add.w	$r17,$r19,$r8
1c001248:	28000232 	ld.b	$r18,$r17,0
1c00124c:	5bf9765e 	beq	$r18,$r30,-1676(0x3f974) # 1c000bc0 <shell15_main+0x210>
1c001250:	280001d4 	ld.b	$r20,$r14,0
1c001254:	028055ce 	addi.w	$r14,$r14,21(0x15)
1c001258:	5bf96a9e 	beq	$r20,$r30,-1688(0x3f968) # 1c000bc0 <shell15_main+0x210>
1c00125c:	2880c061 	ld.w	$r1,$r3,48(0x30)
1c001260:	001105d9 	sub.w	$r25,$r14,$r1
1c001264:	0010232f 	add.w	$r15,$r25,$r8
1c001268:	280001eb 	ld.b	$r11,$r15,0
1c00126c:	5bf9557e 	beq	$r11,$r30,-1708(0x3f954) # 1c000bc0 <shell15_main+0x210>
1c001270:	028055ce 	addi.w	$r14,$r14,21(0x15)
1c001274:	283fadd3 	ld.b	$r19,$r14,-21(0xfeb)
1c001278:	5bf94a7e 	beq	$r19,$r30,-1720(0x3f948) # 1c000bc0 <shell15_main+0x210>
1c00127c:	2880c071 	ld.w	$r17,$r3,48(0x30)
1c001280:	5800e9c6 	beq	$r14,$r6,232(0xe8) # 1c001368 <shell15_main+0x9b8>
1c001284:	001145cb 	sub.w	$r11,$r14,$r17
1c001288:	00102161 	add.w	$r1,$r11,$r8
1c00128c:	2800002f 	ld.b	$r15,$r1,0
1c001290:	5bf931fe 	beq	$r15,$r30,-1744(0x3f930) # 1c000bc0 <shell15_main+0x210>
1c001294:	028055d3 	addi.w	$r19,$r14,21(0x15)
1c001298:	283fae74 	ld.b	$r20,$r19,-21(0xfeb)
1c00129c:	5bf9269e 	beq	$r20,$r30,-1756(0x3f924) # 1c000bc0 <shell15_main+0x210>
1c0012a0:	00114672 	sub.w	$r18,$r19,$r17
1c0012a4:	00102259 	add.w	$r25,$r18,$r8
1c0012a8:	2800032b 	ld.b	$r11,$r25,0
1c0012ac:	5bf9157e 	beq	$r11,$r30,-1772(0x3f914) # 1c000bc0 <shell15_main+0x210>
1c0012b0:	280055cf 	ld.b	$r15,$r14,21(0x15)
1c0012b4:	0280a9c1 	addi.w	$r1,$r14,42(0x2a)
1c0012b8:	5bf909fe 	beq	$r15,$r30,-1784(0x3f908) # 1c000bc0 <shell15_main+0x210>
1c0012bc:	00114434 	sub.w	$r20,$r1,$r17
1c0012c0:	00102292 	add.w	$r18,$r20,$r8
1c0012c4:	28000259 	ld.b	$r25,$r18,0
1c0012c8:	5bf8fb3e 	beq	$r25,$r30,-1800(0x3f8f8) # 1c000bc0 <shell15_main+0x210>
1c0012cc:	2800a9c1 	ld.b	$r1,$r14,42(0x2a)
1c0012d0:	0280fdcb 	addi.w	$r11,$r14,63(0x3f)
1c0012d4:	5bf8ec3e 	beq	$r1,$r30,-1812(0x3f8ec) # 1c000bc0 <shell15_main+0x210>
1c0012d8:	0011456f 	sub.w	$r15,$r11,$r17
1c0012dc:	001021f4 	add.w	$r20,$r15,$r8
1c0012e0:	28000292 	ld.b	$r18,$r20,0
1c0012e4:	5bf8de5e 	beq	$r18,$r30,-1828(0x3f8dc) # 1c000bc0 <shell15_main+0x210>
1c0012e8:	2800fdd9 	ld.b	$r25,$r14,63(0x3f)
1c0012ec:	028151ce 	addi.w	$r14,$r14,84(0x54)
1c0012f0:	5bf8d33e 	beq	$r25,$r30,-1840(0x3f8d0) # 1c000bc0 <shell15_main+0x210>
1c0012f4:	001145cb 	sub.w	$r11,$r14,$r17
1c0012f8:	00102161 	add.w	$r1,$r11,$r8
1c0012fc:	2800002f 	ld.b	$r15,$r1,0
1c001300:	5bf8c1fe 	beq	$r15,$r30,-1856(0x3f8c0) # 1c000bc0 <shell15_main+0x210>
1c001304:	2800fe72 	ld.b	$r18,$r19,63(0x3f)
1c001308:	02815274 	addi.w	$r20,$r19,84(0x54)
1c00130c:	5bf8b65e 	beq	$r18,$r30,-1868(0x3f8b4) # 1c000bc0 <shell15_main+0x210>
1c001310:	00114699 	sub.w	$r25,$r20,$r17
1c001314:	0010232e 	add.w	$r14,$r25,$r8
1c001318:	280001cb 	ld.b	$r11,$r14,0
1c00131c:	5bf8a57e 	beq	$r11,$r30,-1884(0x3f8a4) # 1c000bc0 <shell15_main+0x210>
1c001320:	2801526f 	ld.b	$r15,$r19,84(0x54)
1c001324:	0281a661 	addi.w	$r1,$r19,105(0x69)
1c001328:	5bf899fe 	beq	$r15,$r30,-1896(0x3f898) # 1c000bc0 <shell15_main+0x210>
1c00132c:	00114434 	sub.w	$r20,$r1,$r17
1c001330:	00102292 	add.w	$r18,$r20,$r8
1c001334:	28000259 	ld.b	$r25,$r18,0
1c001338:	5bf88b3e 	beq	$r25,$r30,-1912(0x3f888) # 1c000bc0 <shell15_main+0x210>
1c00133c:	2801a66b 	ld.b	$r11,$r19,105(0x69)
1c001340:	0281fa6e 	addi.w	$r14,$r19,126(0x7e)
1c001344:	5bf87d7e 	beq	$r11,$r30,-1924(0x3f87c) # 1c000bc0 <shell15_main+0x210>
1c001348:	001145c1 	sub.w	$r1,$r14,$r17
1c00134c:	0010202f 	add.w	$r15,$r1,$r8
1c001350:	280001f4 	ld.b	$r20,$r15,0
1c001354:	5bf86e9e 	beq	$r20,$r30,-1940(0x3f86c) # 1c000bc0 <shell15_main+0x210>
1c001358:	02824e6e 	addi.w	$r14,$r19,147(0x93)
1c00135c:	283fadd3 	ld.b	$r19,$r14,-21(0xfeb)
1c001360:	5bf8627e 	beq	$r19,$r30,-1952(0x3f860) # 1c000bc0 <shell15_main+0x210>
1c001364:	5fff21c6 	bne	$r14,$r6,-224(0x3ff20) # 1c001284 <shell15_main+0x8d4>
1c001368:	28805072 	ld.w	$r18,$r3,20(0x14)
1c00136c:	00102086 	add.w	$r6,$r4,$r8
1c001370:	028004d4 	addi.w	$r20,$r6,1(0x1)
1c001374:	00105241 	add.w	$r1,$r18,$r20
1c001378:	28000039 	ld.b	$r25,$r1,0
1c00137c:	29814079 	st.w	$r25,$r3,80(0x50)
1c001380:	5ff8433e 	bne	$r25,$r30,-1984(0x3f840) # 1c000bc0 <shell15_main+0x210>
1c001384:	28807073 	ld.w	$r19,$r3,28(0x1c)
1c001388:	0011608b 	sub.w	$r11,$r4,$r24
1c00138c:	00104d71 	add.w	$r17,$r11,$r19
1c001390:	001c1e2e 	mul.w	$r14,$r17,$r7
1c001394:	00103b46 	add.w	$r6,$r26,$r14
1c001398:	001050d2 	add.w	$r18,$r6,$r20
1c00139c:	28000241 	ld.b	$r1,$r18,0
1c0013a0:	5805443e 	beq	$r1,$r30,1348(0x544) # 1c0018e4 <shell15_main+0xf34>
1c0013a4:	5ff81c3d 	bne	$r1,$r29,-2020(0x3f81c) # 1c000bc0 <shell15_main+0x210>
1c0013a8:	00104c8b 	add.w	$r11,$r4,$r19
1c0013ac:	00408571 	slli.w	$r17,$r11,0x1
1c0013b0:	0011622f 	sub.w	$r15,$r17,$r24
1c0013b4:	001c1df3 	mul.w	$r19,$r15,$r7
1c0013b8:	00104f4e 	add.w	$r14,$r26,$r19
1c0013bc:	001051d4 	add.w	$r20,$r14,$r20
1c0013c0:	28000286 	ld.b	$r6,$r20,0
1c0013c4:	5ff7fcde 	bne	$r6,$r30,-2052(0x3f7fc) # 1c000bc0 <shell15_main+0x210>
1c0013c8:	02800c12 	addi.w	$r18,$r0,3(0x3)
1c0013cc:	02800801 	addi.w	$r1,$r0,2(0x2)
1c0013d0:	29815072 	st.w	$r18,$r3,84(0x54)
1c0013d4:	50054000 	b	1344(0x540) # 1c001914 <shell15_main+0xf64>
1c0013d8:	0010458f 	add.w	$r15,$r12,$r17
1c0013dc:	001059fd 	add.w	$r29,$r15,$r22
1c0013e0:	280003bf 	ld.b	$r31,$r29,0
1c0013e4:	58007bed 	beq	$r31,$r13,120(0x78) # 1c00145c <shell15_main+0xaac>
1c0013e8:	0010498f 	add.w	$r15,$r12,$r18
1c0013ec:	001011fd 	add.w	$r29,$r15,$r4
1c0013f0:	280003bf 	ld.b	$r31,$r29,0
1c0013f4:	58006bed 	beq	$r31,$r13,104(0x68) # 1c00145c <shell15_main+0xaac>
1c0013f8:	00104d8f 	add.w	$r15,$r12,$r19
1c0013fc:	001021fd 	add.w	$r29,$r15,$r8
1c001400:	280003bf 	ld.b	$r31,$r29,0
1c001404:	58005bed 	beq	$r31,$r13,88(0x58) # 1c00145c <shell15_main+0xaac>
1c001408:	0010518f 	add.w	$r15,$r12,$r20
1c00140c:	001029fd 	add.w	$r29,$r15,$r10
1c001410:	280003bf 	ld.b	$r31,$r29,0
1c001414:	58004bed 	beq	$r31,$r13,72(0x48) # 1c00145c <shell15_main+0xaac>
1c001418:	0010198f 	add.w	$r15,$r12,$r6
1c00141c:	001005fd 	add.w	$r29,$r15,$r1
1c001420:	280003bf 	ld.b	$r31,$r29,0
1c001424:	58003bed 	beq	$r31,$r13,56(0x38) # 1c00145c <shell15_main+0xaac>
1c001428:	00101d8f 	add.w	$r15,$r12,$r7
1c00142c:	001061fd 	add.w	$r29,$r15,$r24
1c001430:	280003bf 	ld.b	$r31,$r29,0
1c001434:	58002bed 	beq	$r31,$r13,40(0x28) # 1c00145c <shell15_main+0xaac>
1c001438:	0010258f 	add.w	$r15,$r12,$r9
1c00143c:	001065fd 	add.w	$r29,$r15,$r25
1c001440:	280003bf 	ld.b	$r31,$r29,0
1c001444:	58001bed 	beq	$r31,$r13,24(0x18) # 1c00145c <shell15_main+0xaac>
1c001448:	00102d8f 	add.w	$r15,$r12,$r11
1c00144c:	00106dfd 	add.w	$r29,$r15,$r27
1c001450:	280003bf 	ld.b	$r31,$r29,0
1c001454:	58000bed 	beq	$r31,$r13,8(0x8) # 1c00145c <shell15_main+0xaac>
1c001458:	2900019c 	st.b	$r28,$r12,0
1c00145c:	2800058f 	ld.b	$r15,$r12,1(0x1)
1c001460:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001464:	580039ed 	beq	$r15,$r13,56(0x38) # 1c00149c <shell15_main+0xaec>
1c001468:	2800059d 	ld.b	$r29,$r12,1(0x1)
1c00146c:	0280058f 	addi.w	$r15,$r12,1(0x1)
1c001470:	5800c3ad 	beq	$r29,$r13,192(0xc0) # 1c001530 <shell15_main+0xb80>
1c001474:	2800099d 	ld.b	$r29,$r12,2(0x2)
1c001478:	0280098f 	addi.w	$r15,$r12,2(0x2)
1c00147c:	580147ad 	beq	$r29,$r13,324(0x144) # 1c0015c0 <shell15_main+0xc10>
1c001480:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c001484:	5bf6858e 	beq	$r12,$r14,-2428(0x3f684) # 1c000b08 <shell15_main+0x158>
1c001488:	2800019f 	ld.b	$r31,$r12,0
1c00148c:	5bff4fed 	beq	$r31,$r13,-180(0x3ff4c) # 1c0013d8 <shell15_main+0xa28>
1c001490:	2800058f 	ld.b	$r15,$r12,1(0x1)
1c001494:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001498:	5fffd1ed 	bne	$r15,$r13,-48(0x3ffd0) # 1c001468 <shell15_main+0xab8>
1c00149c:	0010459d 	add.w	$r29,$r12,$r17
1c0014a0:	00105bbf 	add.w	$r31,$r29,$r22
1c0014a4:	280003ef 	ld.b	$r15,$r31,0
1c0014a8:	5bffc1ed 	beq	$r15,$r13,-64(0x3ffc0) # 1c001468 <shell15_main+0xab8>
1c0014ac:	0010499d 	add.w	$r29,$r12,$r18
1c0014b0:	001013bf 	add.w	$r31,$r29,$r4
1c0014b4:	280003ef 	ld.b	$r15,$r31,0
1c0014b8:	5bffb1ed 	beq	$r15,$r13,-80(0x3ffb0) # 1c001468 <shell15_main+0xab8>
1c0014bc:	00104d9d 	add.w	$r29,$r12,$r19
1c0014c0:	001023bf 	add.w	$r31,$r29,$r8
1c0014c4:	280003ef 	ld.b	$r15,$r31,0
1c0014c8:	5bffa1ed 	beq	$r15,$r13,-96(0x3ffa0) # 1c001468 <shell15_main+0xab8>
1c0014cc:	0010519d 	add.w	$r29,$r12,$r20
1c0014d0:	00102bbf 	add.w	$r31,$r29,$r10
1c0014d4:	280003ef 	ld.b	$r15,$r31,0
1c0014d8:	5bff91ed 	beq	$r15,$r13,-112(0x3ff90) # 1c001468 <shell15_main+0xab8>
1c0014dc:	0010199d 	add.w	$r29,$r12,$r6
1c0014e0:	001007bf 	add.w	$r31,$r29,$r1
1c0014e4:	280003ef 	ld.b	$r15,$r31,0
1c0014e8:	5bff81ed 	beq	$r15,$r13,-128(0x3ff80) # 1c001468 <shell15_main+0xab8>
1c0014ec:	00101d9d 	add.w	$r29,$r12,$r7
1c0014f0:	001063bf 	add.w	$r31,$r29,$r24
1c0014f4:	280003ef 	ld.b	$r15,$r31,0
1c0014f8:	5bff71ed 	beq	$r15,$r13,-144(0x3ff70) # 1c001468 <shell15_main+0xab8>
1c0014fc:	0010259d 	add.w	$r29,$r12,$r9
1c001500:	001067bf 	add.w	$r31,$r29,$r25
1c001504:	280003ef 	ld.b	$r15,$r31,0
1c001508:	5bff61ed 	beq	$r15,$r13,-160(0x3ff60) # 1c001468 <shell15_main+0xab8>
1c00150c:	00102d9d 	add.w	$r29,$r12,$r11
1c001510:	00106fbf 	add.w	$r31,$r29,$r27
1c001514:	280003ef 	ld.b	$r15,$r31,0
1c001518:	5bff51ed 	beq	$r15,$r13,-176(0x3ff50) # 1c001468 <shell15_main+0xab8>
1c00151c:	2800059d 	ld.b	$r29,$r12,1(0x1)
1c001520:	2900019c 	st.b	$r28,$r12,0
1c001524:	0280058f 	addi.w	$r15,$r12,1(0x1)
1c001528:	5fff4fad 	bne	$r29,$r13,-180(0x3ff4c) # 1c001474 <shell15_main+0xac4>
1c00152c:	03400000 	andi	$r0,$r0,0x0
1c001530:	001045ff 	add.w	$r31,$r15,$r17
1c001534:	00105bfd 	add.w	$r29,$r31,$r22
1c001538:	280003bf 	ld.b	$r31,$r29,0
1c00153c:	5bff3bed 	beq	$r31,$r13,-200(0x3ff38) # 1c001474 <shell15_main+0xac4>
1c001540:	001049fd 	add.w	$r29,$r15,$r18
1c001544:	001013bf 	add.w	$r31,$r29,$r4
1c001548:	280003fd 	ld.b	$r29,$r31,0
1c00154c:	5bff2bad 	beq	$r29,$r13,-216(0x3ff28) # 1c001474 <shell15_main+0xac4>
1c001550:	00104dff 	add.w	$r31,$r15,$r19
1c001554:	001023fd 	add.w	$r29,$r31,$r8
1c001558:	280003bf 	ld.b	$r31,$r29,0
1c00155c:	5bff1bed 	beq	$r31,$r13,-232(0x3ff18) # 1c001474 <shell15_main+0xac4>
1c001560:	001051fd 	add.w	$r29,$r15,$r20
1c001564:	00102bbf 	add.w	$r31,$r29,$r10
1c001568:	280003fd 	ld.b	$r29,$r31,0
1c00156c:	5bff0bad 	beq	$r29,$r13,-248(0x3ff08) # 1c001474 <shell15_main+0xac4>
1c001570:	001019ff 	add.w	$r31,$r15,$r6
1c001574:	001007fd 	add.w	$r29,$r31,$r1
1c001578:	280003bf 	ld.b	$r31,$r29,0
1c00157c:	5bfefbed 	beq	$r31,$r13,-264(0x3fef8) # 1c001474 <shell15_main+0xac4>
1c001580:	00101dfd 	add.w	$r29,$r15,$r7
1c001584:	001063bf 	add.w	$r31,$r29,$r24
1c001588:	280003fd 	ld.b	$r29,$r31,0
1c00158c:	5bfeebad 	beq	$r29,$r13,-280(0x3fee8) # 1c001474 <shell15_main+0xac4>
1c001590:	001025ff 	add.w	$r31,$r15,$r9
1c001594:	001067fd 	add.w	$r29,$r31,$r25
1c001598:	280003bf 	ld.b	$r31,$r29,0
1c00159c:	5bfedbed 	beq	$r31,$r13,-296(0x3fed8) # 1c001474 <shell15_main+0xac4>
1c0015a0:	00102def 	add.w	$r15,$r15,$r11
1c0015a4:	00106dfd 	add.w	$r29,$r15,$r27
1c0015a8:	280003bf 	ld.b	$r31,$r29,0
1c0015ac:	5bfecbed 	beq	$r31,$r13,-312(0x3fec8) # 1c001474 <shell15_main+0xac4>
1c0015b0:	2800099d 	ld.b	$r29,$r12,2(0x2)
1c0015b4:	2900059c 	st.b	$r28,$r12,1(0x1)
1c0015b8:	0280098f 	addi.w	$r15,$r12,2(0x2)
1c0015bc:	5ffec7ad 	bne	$r29,$r13,-316(0x3fec4) # 1c001480 <shell15_main+0xad0>
1c0015c0:	001045ff 	add.w	$r31,$r15,$r17
1c0015c4:	00105bfd 	add.w	$r29,$r31,$r22
1c0015c8:	280003bf 	ld.b	$r31,$r29,0
1c0015cc:	5bfeb7ed 	beq	$r31,$r13,-332(0x3feb4) # 1c001480 <shell15_main+0xad0>
1c0015d0:	001049fd 	add.w	$r29,$r15,$r18
1c0015d4:	001013bf 	add.w	$r31,$r29,$r4
1c0015d8:	280003fd 	ld.b	$r29,$r31,0
1c0015dc:	5bfea7ad 	beq	$r29,$r13,-348(0x3fea4) # 1c001480 <shell15_main+0xad0>
1c0015e0:	00104dff 	add.w	$r31,$r15,$r19
1c0015e4:	001023fd 	add.w	$r29,$r31,$r8
1c0015e8:	280003bf 	ld.b	$r31,$r29,0
1c0015ec:	5bfe97ed 	beq	$r31,$r13,-364(0x3fe94) # 1c001480 <shell15_main+0xad0>
1c0015f0:	001051fd 	add.w	$r29,$r15,$r20
1c0015f4:	00102bbf 	add.w	$r31,$r29,$r10
1c0015f8:	280003fd 	ld.b	$r29,$r31,0
1c0015fc:	5bfe87ad 	beq	$r29,$r13,-380(0x3fe84) # 1c001480 <shell15_main+0xad0>
1c001600:	001019ff 	add.w	$r31,$r15,$r6
1c001604:	001007fd 	add.w	$r29,$r31,$r1
1c001608:	280003bf 	ld.b	$r31,$r29,0
1c00160c:	5bfe77ed 	beq	$r31,$r13,-396(0x3fe74) # 1c001480 <shell15_main+0xad0>
1c001610:	00101dfd 	add.w	$r29,$r15,$r7
1c001614:	001063bf 	add.w	$r31,$r29,$r24
1c001618:	280003fd 	ld.b	$r29,$r31,0
1c00161c:	5bfe67ad 	beq	$r29,$r13,-412(0x3fe64) # 1c001480 <shell15_main+0xad0>
1c001620:	001025ff 	add.w	$r31,$r15,$r9
1c001624:	001067fd 	add.w	$r29,$r31,$r25
1c001628:	280003bf 	ld.b	$r31,$r29,0
1c00162c:	5bfe57ed 	beq	$r31,$r13,-428(0x3fe54) # 1c001480 <shell15_main+0xad0>
1c001630:	00102def 	add.w	$r15,$r15,$r11
1c001634:	00106dfd 	add.w	$r29,$r15,$r27
1c001638:	280003bf 	ld.b	$r31,$r29,0
1c00163c:	5bfe47ed 	beq	$r31,$r13,-444(0x3fe44) # 1c001480 <shell15_main+0xad0>
1c001640:	2900099c 	st.b	$r28,$r12,2(0x2)
1c001644:	53fe3fff 	b	-452(0xffffe3c) # 1c001480 <shell15_main+0xad0>
1c001648:	0010459d 	add.w	$r29,$r12,$r17
1c00164c:	00105bbf 	add.w	$r31,$r29,$r22
1c001650:	280003ef 	ld.b	$r15,$r31,0
1c001654:	5bf4a1ed 	beq	$r15,$r13,-2912(0x3f4a0) # 1c000af4 <shell15_main+0x144>
1c001658:	0010499d 	add.w	$r29,$r12,$r18
1c00165c:	001013bf 	add.w	$r31,$r29,$r4
1c001660:	280003ef 	ld.b	$r15,$r31,0
1c001664:	5bf491ed 	beq	$r15,$r13,-2928(0x3f490) # 1c000af4 <shell15_main+0x144>
1c001668:	00104d9d 	add.w	$r29,$r12,$r19
1c00166c:	001023bf 	add.w	$r31,$r29,$r8
1c001670:	280003ef 	ld.b	$r15,$r31,0
1c001674:	5bf481ed 	beq	$r15,$r13,-2944(0x3f480) # 1c000af4 <shell15_main+0x144>
1c001678:	0010519d 	add.w	$r29,$r12,$r20
1c00167c:	00102bbf 	add.w	$r31,$r29,$r10
1c001680:	280003ef 	ld.b	$r15,$r31,0
1c001684:	5bf471ed 	beq	$r15,$r13,-2960(0x3f470) # 1c000af4 <shell15_main+0x144>
1c001688:	0010199d 	add.w	$r29,$r12,$r6
1c00168c:	001007bf 	add.w	$r31,$r29,$r1
1c001690:	280003ef 	ld.b	$r15,$r31,0
1c001694:	5bf461ed 	beq	$r15,$r13,-2976(0x3f460) # 1c000af4 <shell15_main+0x144>
1c001698:	00101d9d 	add.w	$r29,$r12,$r7
1c00169c:	001063bf 	add.w	$r31,$r29,$r24
1c0016a0:	280003ef 	ld.b	$r15,$r31,0
1c0016a4:	5bf451ed 	beq	$r15,$r13,-2992(0x3f450) # 1c000af4 <shell15_main+0x144>
1c0016a8:	0010259d 	add.w	$r29,$r12,$r9
1c0016ac:	001067bf 	add.w	$r31,$r29,$r25
1c0016b0:	280003ef 	ld.b	$r15,$r31,0
1c0016b4:	5bf441ed 	beq	$r15,$r13,-3008(0x3f440) # 1c000af4 <shell15_main+0x144>
1c0016b8:	00102d9d 	add.w	$r29,$r12,$r11
1c0016bc:	00106fbf 	add.w	$r31,$r29,$r27
1c0016c0:	280003ef 	ld.b	$r15,$r31,0
1c0016c4:	5bf431ed 	beq	$r15,$r13,-3024(0x3f430) # 1c000af4 <shell15_main+0x144>
1c0016c8:	2900019c 	st.b	$r28,$r12,0
1c0016cc:	53f42bff 	b	-3032(0xffff428) # 1c000af4 <shell15_main+0x144>
1c0016d0:	0010459d 	add.w	$r29,$r12,$r17
1c0016d4:	00105bbf 	add.w	$r31,$r29,$r22
1c0016d8:	280003fd 	ld.b	$r29,$r31,0
1c0016dc:	5bf40fad 	beq	$r29,$r13,-3060(0x3f40c) # 1c000ae8 <shell15_main+0x138>
1c0016e0:	0010499f 	add.w	$r31,$r12,$r18
1c0016e4:	001013fd 	add.w	$r29,$r31,$r4
1c0016e8:	280003bf 	ld.b	$r31,$r29,0
1c0016ec:	5bf3ffed 	beq	$r31,$r13,-3076(0x3f3fc) # 1c000ae8 <shell15_main+0x138>
1c0016f0:	00104d9d 	add.w	$r29,$r12,$r19
1c0016f4:	001023bf 	add.w	$r31,$r29,$r8
1c0016f8:	280003fd 	ld.b	$r29,$r31,0
1c0016fc:	5bf3efad 	beq	$r29,$r13,-3092(0x3f3ec) # 1c000ae8 <shell15_main+0x138>
1c001700:	0010519f 	add.w	$r31,$r12,$r20
1c001704:	00102bfd 	add.w	$r29,$r31,$r10
1c001708:	280003bf 	ld.b	$r31,$r29,0
1c00170c:	5bf3dfed 	beq	$r31,$r13,-3108(0x3f3dc) # 1c000ae8 <shell15_main+0x138>
1c001710:	0010199d 	add.w	$r29,$r12,$r6
1c001714:	001007bf 	add.w	$r31,$r29,$r1
1c001718:	280003fd 	ld.b	$r29,$r31,0
1c00171c:	5bf3cfad 	beq	$r29,$r13,-3124(0x3f3cc) # 1c000ae8 <shell15_main+0x138>
1c001720:	00101d9f 	add.w	$r31,$r12,$r7
1c001724:	001063fd 	add.w	$r29,$r31,$r24
1c001728:	280003bf 	ld.b	$r31,$r29,0
1c00172c:	5bf3bfed 	beq	$r31,$r13,-3140(0x3f3bc) # 1c000ae8 <shell15_main+0x138>
1c001730:	0010259d 	add.w	$r29,$r12,$r9
1c001734:	001067bf 	add.w	$r31,$r29,$r25
1c001738:	280003fd 	ld.b	$r29,$r31,0
1c00173c:	5bf3afaf 	beq	$r29,$r15,-3156(0x3f3ac) # 1c000ae8 <shell15_main+0x138>
1c001740:	00102d9f 	add.w	$r31,$r12,$r11
1c001744:	00106ffd 	add.w	$r29,$r31,$r27
1c001748:	280003bf 	ld.b	$r31,$r29,0
1c00174c:	5bf39fef 	beq	$r31,$r15,-3172(0x3f39c) # 1c000ae8 <shell15_main+0x138>
1c001750:	2900019c 	st.b	$r28,$r12,0
1c001754:	53f397ff 	b	-3180(0xffff394) # 1c000ae8 <shell15_main+0x138>
1c001758:	28804067 	ld.w	$r7,$r3,16(0x10)
1c00175c:	02bfff18 	addi.w	$r24,$r24,-1(0xfff)
1c001760:	028056f7 	addi.w	$r23,$r23,21(0x15)
1c001764:	5ff3df07 	bne	$r24,$r7,-3108(0x3f3dc) # 1c000b40 <shell15_main+0x190>
1c001768:	2880b06a 	ld.w	$r10,$r3,44(0x2c)
1c00176c:	02bffd4c 	addi.w	$r12,$r10,-1(0xfff)
1c001770:	2980b06c 	st.w	$r12,$r3,44(0x2c)
1c001774:	5ff27d80 	bne	$r12,$r0,-3460(0x3f27c) # 1c0009f0 <shell15_main+0x40>
1c001778:	28812078 	ld.w	$r24,$r3,72(0x48)
1c00177c:	28811077 	ld.w	$r23,$r3,68(0x44)
1c001780:	28813076 	ld.w	$r22,$r3,76(0x4c)
1c001784:	00150306 	move	$r6,$r24
1c001788:	001502e5 	move	$r5,$r23
1c00178c:	001502c7 	move	$r7,$r22
1c001790:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c001794:	02a1c084 	addi.w	$r4,$r4,-1936(0x870)
1c001798:	54367800 	bl	13944(0x3678) # 1c004e10 <printf>
1c00179c:	001562fa 	or	$r26,$r23,$r24
1c0017a0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0017a4:	5800e740 	beq	$r26,$r0,228(0xe4) # 1c001888 <shell15_main+0xed8>
1c0017a8:	28823061 	ld.w	$r1,$r3,140(0x8c)
1c0017ac:	28822076 	ld.w	$r22,$r3,136(0x88)
1c0017b0:	28821077 	ld.w	$r23,$r3,132(0x84)
1c0017b4:	28820078 	ld.w	$r24,$r3,128(0x80)
1c0017b8:	2881f079 	ld.w	$r25,$r3,124(0x7c)
1c0017bc:	2881e07a 	ld.w	$r26,$r3,120(0x78)
1c0017c0:	2881d07b 	ld.w	$r27,$r3,116(0x74)
1c0017c4:	2881c07c 	ld.w	$r28,$r3,112(0x70)
1c0017c8:	2881b07d 	ld.w	$r29,$r3,108(0x6c)
1c0017cc:	2881a07e 	ld.w	$r30,$r3,104(0x68)
1c0017d0:	2881907f 	ld.w	$r31,$r3,100(0x64)
1c0017d4:	02824063 	addi.w	$r3,$r3,144(0x90)
1c0017d8:	4c000020 	jirl	$r0,$r1,0
1c0017dc:	03400000 	andi	$r0,$r0,0x0
1c0017e0:	0010459f 	add.w	$r31,$r12,$r17
1c0017e4:	00105bef 	add.w	$r15,$r31,$r22
1c0017e8:	280001fd 	ld.b	$r29,$r15,0
1c0017ec:	5bf317ad 	beq	$r29,$r13,-3308(0x3f314) # 1c000b00 <shell15_main+0x150>
1c0017f0:	0010499f 	add.w	$r31,$r12,$r18
1c0017f4:	001013ef 	add.w	$r15,$r31,$r4
1c0017f8:	280001fd 	ld.b	$r29,$r15,0
1c0017fc:	5bf307ad 	beq	$r29,$r13,-3324(0x3f304) # 1c000b00 <shell15_main+0x150>
1c001800:	00104d9f 	add.w	$r31,$r12,$r19
1c001804:	001023ef 	add.w	$r15,$r31,$r8
1c001808:	280001fd 	ld.b	$r29,$r15,0
1c00180c:	5bf2f7ad 	beq	$r29,$r13,-3340(0x3f2f4) # 1c000b00 <shell15_main+0x150>
1c001810:	0010519f 	add.w	$r31,$r12,$r20
1c001814:	00102bef 	add.w	$r15,$r31,$r10
1c001818:	280001fd 	ld.b	$r29,$r15,0
1c00181c:	5bf2e7ad 	beq	$r29,$r13,-3356(0x3f2e4) # 1c000b00 <shell15_main+0x150>
1c001820:	0010199f 	add.w	$r31,$r12,$r6
1c001824:	001007ef 	add.w	$r15,$r31,$r1
1c001828:	280001fd 	ld.b	$r29,$r15,0
1c00182c:	5bf2d7ad 	beq	$r29,$r13,-3372(0x3f2d4) # 1c000b00 <shell15_main+0x150>
1c001830:	00101d9f 	add.w	$r31,$r12,$r7
1c001834:	001063ef 	add.w	$r15,$r31,$r24
1c001838:	280001fd 	ld.b	$r29,$r15,0
1c00183c:	5bf2c7ad 	beq	$r29,$r13,-3388(0x3f2c4) # 1c000b00 <shell15_main+0x150>
1c001840:	0010259f 	add.w	$r31,$r12,$r9
1c001844:	001067ef 	add.w	$r15,$r31,$r25
1c001848:	280001fd 	ld.b	$r29,$r15,0
1c00184c:	5bf2b7ad 	beq	$r29,$r13,-3404(0x3f2b4) # 1c000b00 <shell15_main+0x150>
1c001850:	00102d9f 	add.w	$r31,$r12,$r11
1c001854:	00106fef 	add.w	$r15,$r31,$r27
1c001858:	280001fd 	ld.b	$r29,$r15,0
1c00185c:	5bf2a7ad 	beq	$r29,$r13,-3420(0x3f2a4) # 1c000b00 <shell15_main+0x150>
1c001860:	2900019c 	st.b	$r28,$r12,0
1c001864:	53f29fff 	b	-3428(0xffff29c) # 1c000b00 <shell15_main+0x150>
1c001868:	2880b06a 	ld.w	$r10,$r3,44(0x2c)
1c00186c:	29813060 	st.w	$r0,$r3,76(0x4c)
1c001870:	29812060 	st.w	$r0,$r3,72(0x48)
1c001874:	02bffd4c 	addi.w	$r12,$r10,-1(0xfff)
1c001878:	29811060 	st.w	$r0,$r3,68(0x44)
1c00187c:	2980b06c 	st.w	$r12,$r3,44(0x2c)
1c001880:	5ff17180 	bne	$r12,$r0,-3728(0x3f170) # 1c0009f0 <shell15_main+0x40>
1c001884:	53fef7ff 	b	-268(0xffffef4) # 1c001778 <shell15_main+0xdc8>
1c001888:	03c006db 	xori	$r27,$r22,0x1
1c00188c:	28823061 	ld.w	$r1,$r3,140(0x8c)
1c001890:	28822076 	ld.w	$r22,$r3,136(0x88)
1c001894:	0012ec04 	sltu	$r4,$r0,$r27
1c001898:	28821077 	ld.w	$r23,$r3,132(0x84)
1c00189c:	28820078 	ld.w	$r24,$r3,128(0x80)
1c0018a0:	2881f079 	ld.w	$r25,$r3,124(0x7c)
1c0018a4:	2881e07a 	ld.w	$r26,$r3,120(0x78)
1c0018a8:	2881d07b 	ld.w	$r27,$r3,116(0x74)
1c0018ac:	2881c07c 	ld.w	$r28,$r3,112(0x70)
1c0018b0:	2881b07d 	ld.w	$r29,$r3,108(0x6c)
1c0018b4:	2881a07e 	ld.w	$r30,$r3,104(0x68)
1c0018b8:	2881907f 	ld.w	$r31,$r3,100(0x64)
1c0018bc:	02824063 	addi.w	$r3,$r3,144(0x90)
1c0018c0:	4c000020 	jirl	$r0,$r1,0
1c0018c4:	001165c1 	sub.w	$r1,$r14,$r25
1c0018c8:	00102039 	add.w	$r25,$r1,$r8
1c0018cc:	2800032f 	ld.b	$r15,$r25,0
1c0018d0:	5bf2f1fe 	beq	$r15,$r30,-3344(0x3f2f0) # 1c000bc0 <shell15_main+0x210>
1c0018d4:	280001cb 	ld.b	$r11,$r14,0
1c0018d8:	028055ce 	addi.w	$r14,$r14,21(0x15)
1c0018dc:	5ff9017e 	bne	$r11,$r30,-1792(0x3f900) # 1c0011dc <shell15_main+0x82c>
1c0018e0:	53f2e3ff 	b	-3360(0xffff2e0) # 1c000bc0 <shell15_main+0x210>
1c0018e4:	00104c8b 	add.w	$r11,$r4,$r19
1c0018e8:	00408571 	slli.w	$r17,$r11,0x1
1c0018ec:	00116239 	sub.w	$r25,$r17,$r24
1c0018f0:	001c1f2f 	mul.w	$r15,$r25,$r7
1c0018f4:	00103f53 	add.w	$r19,$r26,$r15
1c0018f8:	0010526e 	add.w	$r14,$r19,$r20
1c0018fc:	280001d4 	ld.b	$r20,$r14,0
1c001900:	5803329e 	beq	$r20,$r30,816(0x330) # 1c001c30 <shell15_main+0x1280>
1c001904:	5ff2be9d 	bne	$r20,$r29,-3396(0x3f2bc) # 1c000bc0 <shell15_main+0x210>
1c001908:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00190c:	00150001 	move	$r1,$r0
1c001910:	29815066 	st.w	$r6,$r3,84(0x54)
1c001914:	1c000ff4 	pcaddu12i	$r20,127(0x7f)
1c001918:	28981294 	ld.w	$r20,$r20,1540(0x604)
1c00191c:	1c000ff9 	pcaddu12i	$r25,127(0x7f)
1c001920:	2897e339 	ld.w	$r25,$r25,1528(0x5f8)
1c001924:	29801324 	st.w	$r4,$r25,4(0x4)
1c001928:	2980232b 	st.w	$r11,$r25,8(0x8)
1c00192c:	29804324 	st.w	$r4,$r25,16(0x10)
1c001930:	2980532b 	st.w	$r11,$r25,20(0x14)
1c001934:	29807324 	st.w	$r4,$r25,28(0x1c)
1c001938:	2980832b 	st.w	$r11,$r25,32(0x20)
1c00193c:	2980a324 	st.w	$r4,$r25,40(0x28)
1c001940:	2980b32b 	st.w	$r11,$r25,44(0x2c)
1c001944:	2980d324 	st.w	$r4,$r25,52(0x34)
1c001948:	2980e32b 	st.w	$r11,$r25,56(0x38)
1c00194c:	2980628b 	st.w	$r11,$r20,24(0x18)
1c001950:	2980728b 	st.w	$r11,$r20,28(0x1c)
1c001954:	2980828b 	st.w	$r11,$r20,32(0x20)
1c001958:	0280f00b 	addi.w	$r11,$r0,60(0x3c)
1c00195c:	001c2c2e 	mul.w	$r14,$r1,$r11
1c001960:	28807073 	ld.w	$r19,$r3,28(0x1c)
1c001964:	0040848f 	slli.w	$r15,$r4,0x1
1c001968:	29803284 	st.w	$r4,$r20,12(0xc)
1c00196c:	00104de6 	add.w	$r6,$r15,$r19
1c001970:	2980c291 	st.w	$r17,$r20,48(0x30)
1c001974:	29804284 	st.w	$r4,$r20,16(0x10)
1c001978:	29805284 	st.w	$r4,$r20,20(0x14)
1c00197c:	2980d291 	st.w	$r17,$r20,52(0x34)
1c001980:	2980e291 	st.w	$r17,$r20,56(0x38)
1c001984:	29800320 	st.w	$r0,$r25,0
1c001988:	00150091 	move	$r17,$r4
1c00198c:	29803320 	st.w	$r0,$r25,12(0xc)
1c001990:	29806320 	st.w	$r0,$r25,24(0x18)
1c001994:	29809320 	st.w	$r0,$r25,36(0x24)
1c001998:	2980c320 	st.w	$r0,$r25,48(0x30)
1c00199c:	29800280 	st.w	$r0,$r20,0
1c0019a0:	29801280 	st.w	$r0,$r20,4(0x4)
1c0019a4:	29802280 	st.w	$r0,$r20,8(0x8)
1c0019a8:	29809286 	st.w	$r6,$r20,36(0x24)
1c0019ac:	2980a286 	st.w	$r6,$r20,40(0x28)
1c0019b0:	2980b286 	st.w	$r6,$r20,44(0x2c)
1c0019b4:	1c000fe1 	pcaddu12i	$r1,127(0x7f)
1c0019b8:	02a0f021 	addi.w	$r1,$r1,-1988(0x83c)
1c0019bc:	2980f06d 	st.w	$r13,$r3,60(0x3c)
1c0019c0:	2980807f 	st.w	$r31,$r3,32(0x20)
1c0019c4:	1c000feb 	pcaddu12i	$r11,127(0x7f)
1c0019c8:	2895416b 	ld.w	$r11,$r11,1360(0x550)
1c0019cc:	29816068 	st.w	$r8,$r3,88(0x58)
1c0019d0:	29817065 	st.w	$r5,$r3,92(0x5c)
1c0019d4:	29809069 	st.w	$r9,$r3,36(0x24)
1c0019d8:	00150224 	move	$r4,$r17
1c0019dc:	00103821 	add.w	$r1,$r1,$r14
1c0019e0:	00150288 	move	$r8,$r20
1c0019e4:	00150229 	move	$r9,$r17
1c0019e8:	02800c1f 	addi.w	$r31,$r0,3(0x3)
1c0019ec:	0020fe0d 	mod.w	$r13,$r16,$r31
1c0019f0:	5c000be0 	bne	$r31,$r0,8(0x8) # 1c0019f8 <shell15_main+0x1048>
1c0019f4:	002a0007 	break	0x7
1c0019f8:	034005a5 	andi	$r5,$r13,0x1
1c0019fc:	00150139 	move	$r25,$r9
1c001a00:	580008a0 	beq	$r5,$r0,8(0x8) # 1c001a08 <shell15_main+0x1058>
1c001a04:	28807079 	ld.w	$r25,$r3,28(0x1c)
1c001a08:	28800034 	ld.w	$r20,$r1,0
1c001a0c:	2880f071 	ld.w	$r17,$r3,60(0x3c)
1c001a10:	58000a80 	beq	$r20,$r0,8(0x8) # 1c001a18 <shell15_main+0x1068>
1c001a14:	28814071 	ld.w	$r17,$r3,80(0x50)
1c001a18:	2880010e 	ld.w	$r14,$r8,0
1c001a1c:	28800173 	ld.w	$r19,$r11,0
1c001a20:	001161cf 	sub.w	$r15,$r14,$r24
1c001a24:	001011e4 	add.w	$r4,$r15,$r4
1c001a28:	00104d94 	add.w	$r20,$r12,$r19
1c001a2c:	640229e4 	bge	$r15,$r4,552(0x228) # 1c001c54 <shell15_main+0x12a4>
1c001a30:	02804c12 	addi.w	$r18,$r0,19(0x13)
1c001a34:	001c1c86 	mul.w	$r6,$r4,$r7
1c001a38:	02800685 	addi.w	$r5,$r20,1(0x1)
1c001a3c:	00106684 	add.w	$r4,$r20,$r25
1c001a40:	001c49ff 	mul.w	$r31,$r15,$r18
1c001a44:	00101b46 	add.w	$r6,$r26,$r6
1c001a48:	001c1ded 	mul.w	$r13,$r15,$r7
1c001a4c:	001053f9 	add.w	$r25,$r31,$r20
1c001a50:	00408b33 	slli.w	$r19,$r25,0x2
1c001a54:	001010df 	add.w	$r31,$r6,$r4
1c001a58:	2980d07f 	st.w	$r31,$r3,52(0x34)
1c001a5c:	001034ae 	add.w	$r14,$r5,$r13
1c001a60:	0010374f 	add.w	$r15,$r26,$r13
1c001a64:	1c000fed 	pcaddu12i	$r13,127(0x7f)
1c001a68:	02a201ad 	addi.w	$r13,$r13,-1920(0x880)
1c001a6c:	00103b52 	add.w	$r18,$r26,$r14
1c001a70:	001011ef 	add.w	$r15,$r15,$r4
1c001a74:	00104db3 	add.w	$r19,$r13,$r19
1c001a78:	6401ca84 	bge	$r20,$r4,456(0x1c8) # 1c001c40 <shell15_main+0x1290>
1c001a7c:	283ffe45 	ld.b	$r5,$r18,-1(0xfff)
1c001a80:	5c0560b1 	bne	$r5,$r17,1376(0x560) # 1c001fe0 <shell15_main+0x1630>
1c001a84:	28800279 	ld.w	$r25,$r19,0
1c001a88:	5c054f20 	bne	$r25,$r0,1356(0x54c) # 1c001fd4 <shell15_main+0x1624>
1c001a8c:	001149ee 	sub.w	$r14,$r15,$r18
1c001a90:	03401ddf 	andi	$r31,$r14,0x7
1c001a94:	0015024d 	move	$r13,$r18
1c001a98:	0015026e 	move	$r14,$r19
1c001a9c:	5800dfe0 	beq	$r31,$r0,220(0xdc) # 1c001b78 <shell15_main+0x11c8>
1c001aa0:	28000246 	ld.b	$r6,$r18,0
1c001aa4:	5c0548d1 	bne	$r6,$r17,1352(0x548) # 1c001fec <shell15_main+0x163c>
1c001aa8:	28801265 	ld.w	$r5,$r19,4(0x4)
1c001aac:	0280126e 	addi.w	$r14,$r19,4(0x4)
1c001ab0:	0280064d 	addi.w	$r13,$r18,1(0x1)
1c001ab4:	5c0544a0 	bne	$r5,$r0,1348(0x544) # 1c001ff8 <shell15_main+0x1648>
1c001ab8:	02800419 	addi.w	$r25,$r0,1(0x1)
1c001abc:	5800bff9 	beq	$r31,$r25,188(0xbc) # 1c001b78 <shell15_main+0x11c8>
1c001ac0:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001ac4:	58009fe6 	beq	$r31,$r6,156(0x9c) # 1c001b60 <shell15_main+0x11b0>
1c001ac8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c001acc:	58007fe5 	beq	$r31,$r5,124(0x7c) # 1c001b48 <shell15_main+0x1198>
1c001ad0:	02801019 	addi.w	$r25,$r0,4(0x4)
1c001ad4:	58005ff9 	beq	$r31,$r25,92(0x5c) # 1c001b30 <shell15_main+0x1180>
1c001ad8:	02801406 	addi.w	$r6,$r0,5(0x5)
1c001adc:	58003fe6 	beq	$r31,$r6,60(0x3c) # 1c001b18 <shell15_main+0x1168>
1c001ae0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c001ae4:	58001fe5 	beq	$r31,$r5,28(0x1c) # 1c001b00 <shell15_main+0x1150>
1c001ae8:	280001bf 	ld.b	$r31,$r13,0
1c001aec:	5c0673f1 	bne	$r31,$r17,1648(0x670) # 1c00215c <shell15_main+0x17ac>
1c001af0:	288011d9 	ld.w	$r25,$r14,4(0x4)
1c001af4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001af8:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c001afc:	5c065720 	bne	$r25,$r0,1620(0x654) # 1c002150 <shell15_main+0x17a0>
1c001b00:	280001a6 	ld.b	$r6,$r13,0
1c001b04:	5c0630d1 	bne	$r6,$r17,1584(0x630) # 1c002134 <shell15_main+0x1784>
1c001b08:	288011c5 	ld.w	$r5,$r14,4(0x4)
1c001b0c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001b10:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c001b14:	5c0614a0 	bne	$r5,$r0,1556(0x614) # 1c002128 <shell15_main+0x1778>
1c001b18:	280001bf 	ld.b	$r31,$r13,0
1c001b1c:	5c05dbf1 	bne	$r31,$r17,1496(0x5d8) # 1c0020f4 <shell15_main+0x1744>
1c001b20:	288011d9 	ld.w	$r25,$r14,4(0x4)
1c001b24:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001b28:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c001b2c:	5c05bf20 	bne	$r25,$r0,1468(0x5bc) # 1c0020e8 <shell15_main+0x1738>
1c001b30:	280001a6 	ld.b	$r6,$r13,0
1c001b34:	5c05d8d1 	bne	$r6,$r17,1496(0x5d8) # 1c00210c <shell15_main+0x175c>
1c001b38:	288011c5 	ld.w	$r5,$r14,4(0x4)
1c001b3c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001b40:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c001b44:	5c05bca0 	bne	$r5,$r0,1468(0x5bc) # 1c002100 <shell15_main+0x1750>
1c001b48:	280001bf 	ld.b	$r31,$r13,0
1c001b4c:	5c057bf1 	bne	$r31,$r17,1400(0x578) # 1c0020c4 <shell15_main+0x1714>
1c001b50:	288011d9 	ld.w	$r25,$r14,4(0x4)
1c001b54:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001b58:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c001b5c:	5c058320 	bne	$r25,$r0,1408(0x580) # 1c0020dc <shell15_main+0x172c>
1c001b60:	280001a6 	ld.b	$r6,$r13,0
1c001b64:	5c053cd1 	bne	$r6,$r17,1340(0x53c) # 1c0020a0 <shell15_main+0x16f0>
1c001b68:	288011c5 	ld.w	$r5,$r14,4(0x4)
1c001b6c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001b70:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c001b74:	5c0520a0 	bne	$r5,$r0,1312(0x520) # 1c002094 <shell15_main+0x16e4>
1c001b78:	5800c9af 	beq	$r13,$r15,200(0xc8) # 1c001c40 <shell15_main+0x1290>
1c001b7c:	280001a5 	ld.b	$r5,$r13,0
1c001b80:	5c04a8b1 	bne	$r5,$r17,1192(0x4a8) # 1c002028 <shell15_main+0x1678>
1c001b84:	288011d9 	ld.w	$r25,$r14,4(0x4)
1c001b88:	028011df 	addi.w	$r31,$r14,4(0x4)
1c001b8c:	028005a6 	addi.w	$r6,$r13,1(0x1)
1c001b90:	5c048f20 	bne	$r25,$r0,1164(0x48c) # 1c00201c <shell15_main+0x166c>
1c001b94:	280005a5 	ld.b	$r5,$r13,1(0x1)
1c001b98:	5c0478b1 	bne	$r5,$r17,1144(0x478) # 1c002010 <shell15_main+0x1660>
1c001b9c:	288013f9 	ld.w	$r25,$r31,4(0x4)
1c001ba0:	5c046720 	bne	$r25,$r0,1124(0x464) # 1c002004 <shell15_main+0x1654>
1c001ba4:	280009a5 	ld.b	$r5,$r13,2(0x2)
1c001ba8:	5c04bcb1 	bne	$r5,$r17,1212(0x4bc) # 1c002064 <shell15_main+0x16b4>
1c001bac:	288031d9 	ld.w	$r25,$r14,12(0xc)
1c001bb0:	5c04ab20 	bne	$r25,$r0,1192(0x4a8) # 1c002058 <shell15_main+0x16a8>
1c001bb4:	28000da5 	ld.b	$r5,$r13,3(0x3)
1c001bb8:	5c0494b1 	bne	$r5,$r17,1172(0x494) # 1c00204c <shell15_main+0x169c>
1c001bbc:	288041d9 	ld.w	$r25,$r14,16(0x10)
1c001bc0:	028041ce 	addi.w	$r14,$r14,16(0x10)
1c001bc4:	5c047f20 	bne	$r25,$r0,1148(0x47c) # 1c002040 <shell15_main+0x1690>
1c001bc8:	280011ad 	ld.b	$r13,$r13,4(0x4)
1c001bcc:	5c0469b1 	bne	$r13,$r17,1128(0x468) # 1c002034 <shell15_main+0x1684>
1c001bd0:	288011c5 	ld.w	$r5,$r14,4(0x4)
1c001bd4:	5c049ca0 	bne	$r5,$r0,1180(0x49c) # 1c002070 <shell15_main+0x16c0>
1c001bd8:	280010d9 	ld.b	$r25,$r6,4(0x4)
1c001bdc:	5c04af31 	bne	$r25,$r17,1196(0x4ac) # 1c002088 <shell15_main+0x16d8>
1c001be0:	288053ee 	ld.w	$r14,$r31,20(0x14)
1c001be4:	5c0499c0 	bne	$r14,$r0,1176(0x498) # 1c00207c <shell15_main+0x16cc>
1c001be8:	280014cd 	ld.b	$r13,$r6,5(0x5)
1c001bec:	5c04cdb1 	bne	$r13,$r17,1228(0x4cc) # 1c0020b8 <shell15_main+0x1708>
1c001bf0:	288063e5 	ld.w	$r5,$r31,24(0x18)
1c001bf4:	5c04b8a0 	bne	$r5,$r0,1208(0x4b8) # 1c0020ac <shell15_main+0x16fc>
1c001bf8:	280018d9 	ld.b	$r25,$r6,6(0x6)
1c001bfc:	5c04d731 	bne	$r25,$r17,1236(0x4d4) # 1c0020d0 <shell15_main+0x1720>
1c001c00:	288073e5 	ld.w	$r5,$r31,28(0x1c)
1c001c04:	028073ee 	addi.w	$r14,$r31,28(0x1c)
1c001c08:	02801ccd 	addi.w	$r13,$r6,7(0x7)
1c001c0c:	5bff6ca0 	beq	$r5,$r0,-148(0x3ff6c) # 1c001b78 <shell15_main+0x11c8>
1c001c10:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c001c14:	28809069 	ld.w	$r9,$r3,36(0x24)
1c001c18:	53efabff 	b	-4184(0xfffefa8) # 1c000bc0 <shell15_main+0x210>
1c001c1c:	00116221 	sub.w	$r1,$r17,$r24
1c001c20:	29810061 	st.w	$r1,$r3,64(0x40)
1c001c24:	53f51fff 	b	-2788(0xffff51c) # 1c001140 <shell15_main+0x790>
1c001c28:	00150331 	move	$r17,$r25
1c001c2c:	53f657ff 	b	-2476(0xffff654) # 1c001280 <shell15_main+0x8d0>
1c001c30:	02800812 	addi.w	$r18,$r0,2(0x2)
1c001c34:	02800401 	addi.w	$r1,$r0,1(0x1)
1c001c38:	29815072 	st.w	$r18,$r3,84(0x54)
1c001c3c:	53fcdbff 	b	-808(0xffffcd8) # 1c001914 <shell15_main+0xf64>
1c001c40:	2880d06d 	ld.w	$r13,$r3,52(0x34)
1c001c44:	028055ef 	addi.w	$r15,$r15,21(0x15)
1c001c48:	02813273 	addi.w	$r19,$r19,76(0x4c)
1c001c4c:	02805652 	addi.w	$r18,$r18,21(0x15)
1c001c50:	5ffe29ed 	bne	$r15,$r13,-472(0x3fe28) # 1c001a78 <shell15_main+0x10c8>
1c001c54:	02800610 	addi.w	$r16,$r16,1(0x1)
1c001c58:	02803c0e 	addi.w	$r14,$r0,15(0xf)
1c001c5c:	5800360e 	beq	$r16,$r14,52(0x34) # 1c001c90 <shell15_main+0x12e0>
1c001c60:	02800c19 	addi.w	$r25,$r0,3(0x3)
1c001c64:	0020660e 	div.w	$r14,$r16,$r25
1c001c68:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c001c70 <shell15_main+0x12c0>
1c001c6c:	002a0007 	break	0x7
1c001c70:	034005df 	andi	$r31,$r14,0x1
1c001c74:	00150124 	move	$r4,$r9
1c001c78:	58000be0 	beq	$r31,$r0,8(0x8) # 1c001c80 <shell15_main+0x12d0>
1c001c7c:	28807064 	ld.w	$r4,$r3,28(0x1c)
1c001c80:	02801108 	addi.w	$r8,$r8,4(0x4)
1c001c84:	0280116b 	addi.w	$r11,$r11,4(0x4)
1c001c88:	02801021 	addi.w	$r1,$r1,4(0x4)
1c001c8c:	53fd5fff 	b	-676(0xffffd5c) # 1c0019e8 <shell15_main+0x1038>
1c001c90:	28816068 	ld.w	$r8,$r3,88(0x58)
1c001c94:	28817065 	ld.w	$r5,$r3,92(0x5c)
1c001c98:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c001c9c:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c001ca0:	28809069 	ld.w	$r9,$r3,36(0x24)
1c001ca4:	00146010 	nor	$r16,$r0,$r24
1c001ca8:	60030b28 	blt	$r25,$r8,776(0x308) # 1c001fb0 <shell15_main+0x1600>
1c001cac:	0280390e 	addi.w	$r14,$r8,14(0xe)
1c001cb0:	02803104 	addi.w	$r4,$r8,12(0xc)
1c001cb4:	0280350d 	addi.w	$r13,$r8,13(0xd)
1c001cb8:	2980c06e 	st.w	$r14,$r3,48(0x30)
1c001cbc:	2880e06e 	ld.w	$r14,$r3,56(0x38)
1c001cc0:	2980e069 	st.w	$r9,$r3,56(0x38)
1c001cc4:	2880a069 	ld.w	$r9,$r3,40(0x28)
1c001cc8:	1c000fc6 	pcaddu12i	$r6,126(0x7e)
1c001ccc:	029870c6 	addi.w	$r6,$r6,1564(0x61c)
1c001cd0:	02801d01 	addi.w	$r1,$r8,7(0x7)
1c001cd4:	29808064 	st.w	$r4,$r3,32(0x20)
1c001cd8:	2980906d 	st.w	$r13,$r3,36(0x24)
1c001cdc:	02803d04 	addi.w	$r4,$r8,15(0xf)
1c001ce0:	0280410d 	addi.w	$r13,$r8,16(0x10)
1c001ce4:	001058cf 	add.w	$r15,$r6,$r22
1c001ce8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001cec:	02800d14 	addi.w	$r20,$r8,3(0x3)
1c001cf0:	02801113 	addi.w	$r19,$r8,4(0x4)
1c001cf4:	02801512 	addi.w	$r18,$r8,5(0x5)
1c001cf8:	02801911 	addi.w	$r17,$r8,6(0x6)
1c001cfc:	02802106 	addi.w	$r6,$r8,8(0x8)
1c001d00:	0280250b 	addi.w	$r11,$r8,9(0x9)
1c001d04:	02802901 	addi.w	$r1,$r8,10(0xa)
1c001d08:	02802d19 	addi.w	$r25,$r8,11(0xb)
1c001d0c:	2980d064 	st.w	$r4,$r3,52(0x34)
1c001d10:	2980f06d 	st.w	$r13,$r3,60(0x3c)
1c001d14:	2981407f 	st.w	$r31,$r3,80(0x50)
1c001d18:	28bed1ff 	ld.w	$r31,$r15,-76(0xfb4)
1c001d1c:	028007e4 	addi.w	$r4,$r31,1(0x1)
1c001d20:	29bed1e4 	st.w	$r4,$r15,-76(0xfb4)
1c001d24:	600275c8 	blt	$r14,$r8,628(0x274) # 1c001f98 <shell15_main+0x15e8>
1c001d28:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c001d2c:	001c360d 	mul.w	$r13,$r16,$r13
1c001d30:	001031bf 	add.w	$r31,$r13,$r12
1c001d34:	00408be4 	slli.w	$r4,$r31,0x2
1c001d38:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001d3c:	0296b3ff 	addi.w	$r31,$r31,1452(0x5ac)
1c001d40:	001013e4 	add.w	$r4,$r31,$r4
1c001d44:	2880009f 	ld.w	$r31,$r4,0
1c001d48:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001d4c:	2980009f 	st.w	$r31,$r4,0
1c001d50:	64024805 	bge	$r0,$r5,584(0x248) # 1c001f98 <shell15_main+0x15e8>
1c001d54:	001025a4 	add.w	$r4,$r13,$r9
1c001d58:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001d5c:	029633ff 	addi.w	$r31,$r31,1420(0x58c)
1c001d60:	00408884 	slli.w	$r4,$r4,0x2
1c001d64:	001013e4 	add.w	$r4,$r31,$r4
1c001d68:	2880009f 	ld.w	$r31,$r4,0
1c001d6c:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001d70:	2980009f 	st.w	$r31,$r4,0
1c001d74:	600225c9 	blt	$r14,$r9,548(0x224) # 1c001f98 <shell15_main+0x15e8>
1c001d78:	001051a4 	add.w	$r4,$r13,$r20
1c001d7c:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001d80:	0295a3ff 	addi.w	$r31,$r31,1384(0x568)
1c001d84:	00408884 	slli.w	$r4,$r4,0x2
1c001d88:	001013e4 	add.w	$r4,$r31,$r4
1c001d8c:	2880009f 	ld.w	$r31,$r4,0
1c001d90:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001d94:	2980009f 	st.w	$r31,$r4,0
1c001d98:	600201d4 	blt	$r14,$r20,512(0x200) # 1c001f98 <shell15_main+0x15e8>
1c001d9c:	00104da4 	add.w	$r4,$r13,$r19
1c001da0:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001da4:	029513ff 	addi.w	$r31,$r31,1348(0x544)
1c001da8:	00408884 	slli.w	$r4,$r4,0x2
1c001dac:	001013e4 	add.w	$r4,$r31,$r4
1c001db0:	2880009f 	ld.w	$r31,$r4,0
1c001db4:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001db8:	2980009f 	st.w	$r31,$r4,0
1c001dbc:	6001ddd3 	blt	$r14,$r19,476(0x1dc) # 1c001f98 <shell15_main+0x15e8>
1c001dc0:	001049a4 	add.w	$r4,$r13,$r18
1c001dc4:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001dc8:	029483ff 	addi.w	$r31,$r31,1312(0x520)
1c001dcc:	00408884 	slli.w	$r4,$r4,0x2
1c001dd0:	001013e4 	add.w	$r4,$r31,$r4
1c001dd4:	2880009f 	ld.w	$r31,$r4,0
1c001dd8:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001ddc:	2980009f 	st.w	$r31,$r4,0
1c001de0:	6001b9d2 	blt	$r14,$r18,440(0x1b8) # 1c001f98 <shell15_main+0x15e8>
1c001de4:	001045a4 	add.w	$r4,$r13,$r17
1c001de8:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001dec:	0293f3ff 	addi.w	$r31,$r31,1276(0x4fc)
1c001df0:	00408884 	slli.w	$r4,$r4,0x2
1c001df4:	001013e4 	add.w	$r4,$r31,$r4
1c001df8:	2880009f 	ld.w	$r31,$r4,0
1c001dfc:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001e00:	2980009f 	st.w	$r31,$r4,0
1c001e04:	600195d1 	blt	$r14,$r17,404(0x194) # 1c001f98 <shell15_main+0x15e8>
1c001e08:	28807064 	ld.w	$r4,$r3,28(0x1c)
1c001e0c:	001011bf 	add.w	$r31,$r13,$r4
1c001e10:	00408be4 	slli.w	$r4,$r31,0x2
1c001e14:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001e18:	029343ff 	addi.w	$r31,$r31,1232(0x4d0)
1c001e1c:	001013e4 	add.w	$r4,$r31,$r4
1c001e20:	2880009f 	ld.w	$r31,$r4,0
1c001e24:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001e28:	2980009f 	st.w	$r31,$r4,0
1c001e2c:	28807064 	ld.w	$r4,$r3,28(0x1c)
1c001e30:	600169c4 	blt	$r14,$r4,360(0x168) # 1c001f98 <shell15_main+0x15e8>
1c001e34:	001019bf 	add.w	$r31,$r13,$r6
1c001e38:	00408be4 	slli.w	$r4,$r31,0x2
1c001e3c:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001e40:	0292a3ff 	addi.w	$r31,$r31,1192(0x4a8)
1c001e44:	001013e4 	add.w	$r4,$r31,$r4
1c001e48:	2880009f 	ld.w	$r31,$r4,0
1c001e4c:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001e50:	2980009f 	st.w	$r31,$r4,0
1c001e54:	600145c6 	blt	$r14,$r6,324(0x144) # 1c001f98 <shell15_main+0x15e8>
1c001e58:	00102dad 	add.w	$r13,$r13,$r11
1c001e5c:	004089a4 	slli.w	$r4,$r13,0x2
1c001e60:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001e64:	029213ff 	addi.w	$r31,$r31,1156(0x484)
1c001e68:	001013ed 	add.w	$r13,$r31,$r4
1c001e6c:	288001a4 	ld.w	$r4,$r13,0
1c001e70:	02800484 	addi.w	$r4,$r4,1(0x1)
1c001e74:	298001a4 	st.w	$r4,$r13,0
1c001e78:	600121cb 	blt	$r14,$r11,288(0x120) # 1c001f98 <shell15_main+0x15e8>
1c001e7c:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c001e80:	001c360d 	mul.w	$r13,$r16,$r13
1c001e84:	001005a4 	add.w	$r4,$r13,$r1
1c001e88:	00408884 	slli.w	$r4,$r4,0x2
1c001e8c:	001013e4 	add.w	$r4,$r31,$r4
1c001e90:	2880009f 	ld.w	$r31,$r4,0
1c001e94:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001e98:	2980009f 	st.w	$r31,$r4,0
1c001e9c:	6000fdc1 	blt	$r14,$r1,252(0xfc) # 1c001f98 <shell15_main+0x15e8>
1c001ea0:	001065a4 	add.w	$r4,$r13,$r25
1c001ea4:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001ea8:	029103ff 	addi.w	$r31,$r31,1088(0x440)
1c001eac:	00408884 	slli.w	$r4,$r4,0x2
1c001eb0:	001013e4 	add.w	$r4,$r31,$r4
1c001eb4:	2880009f 	ld.w	$r31,$r4,0
1c001eb8:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001ebc:	2980009f 	st.w	$r31,$r4,0
1c001ec0:	6000d9d9 	blt	$r14,$r25,216(0xd8) # 1c001f98 <shell15_main+0x15e8>
1c001ec4:	28808064 	ld.w	$r4,$r3,32(0x20)
1c001ec8:	001011bf 	add.w	$r31,$r13,$r4
1c001ecc:	00408be4 	slli.w	$r4,$r31,0x2
1c001ed0:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001ed4:	029053ff 	addi.w	$r31,$r31,1044(0x414)
1c001ed8:	001013e4 	add.w	$r4,$r31,$r4
1c001edc:	2880009f 	ld.w	$r31,$r4,0
1c001ee0:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001ee4:	2980009f 	st.w	$r31,$r4,0
1c001ee8:	28808064 	ld.w	$r4,$r3,32(0x20)
1c001eec:	6000adc4 	blt	$r14,$r4,172(0xac) # 1c001f98 <shell15_main+0x15e8>
1c001ef0:	2880907f 	ld.w	$r31,$r3,36(0x24)
1c001ef4:	00107da4 	add.w	$r4,$r13,$r31
1c001ef8:	00408884 	slli.w	$r4,$r4,0x2
1c001efc:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001f00:	028fa3ff 	addi.w	$r31,$r31,1000(0x3e8)
1c001f04:	001013e4 	add.w	$r4,$r31,$r4
1c001f08:	2880009f 	ld.w	$r31,$r4,0
1c001f0c:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001f10:	2980009f 	st.w	$r31,$r4,0
1c001f14:	28809064 	ld.w	$r4,$r3,36(0x24)
1c001f18:	600081c4 	blt	$r14,$r4,128(0x80) # 1c001f98 <shell15_main+0x15e8>
1c001f1c:	2880c07f 	ld.w	$r31,$r3,48(0x30)
1c001f20:	00107da4 	add.w	$r4,$r13,$r31
1c001f24:	00408884 	slli.w	$r4,$r4,0x2
1c001f28:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001f2c:	028ef3ff 	addi.w	$r31,$r31,956(0x3bc)
1c001f30:	001013e4 	add.w	$r4,$r31,$r4
1c001f34:	2880009f 	ld.w	$r31,$r4,0
1c001f38:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001f3c:	2980009f 	st.w	$r31,$r4,0
1c001f40:	2880c064 	ld.w	$r4,$r3,48(0x30)
1c001f44:	600055c4 	blt	$r14,$r4,84(0x54) # 1c001f98 <shell15_main+0x15e8>
1c001f48:	2880d07f 	ld.w	$r31,$r3,52(0x34)
1c001f4c:	00107da4 	add.w	$r4,$r13,$r31
1c001f50:	00408884 	slli.w	$r4,$r4,0x2
1c001f54:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001f58:	028e43ff 	addi.w	$r31,$r31,912(0x390)
1c001f5c:	001013e4 	add.w	$r4,$r31,$r4
1c001f60:	2880009f 	ld.w	$r31,$r4,0
1c001f64:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c001f68:	2980009f 	st.w	$r31,$r4,0
1c001f6c:	2880d064 	ld.w	$r4,$r3,52(0x34)
1c001f70:	600029c4 	blt	$r14,$r4,40(0x28) # 1c001f98 <shell15_main+0x15e8>
1c001f74:	2880f07f 	ld.w	$r31,$r3,60(0x3c)
1c001f78:	1c000fc4 	pcaddu12i	$r4,126(0x7e)
1c001f7c:	028db084 	addi.w	$r4,$r4,876(0x36c)
1c001f80:	00107dad 	add.w	$r13,$r13,$r31
1c001f84:	004089bf 	slli.w	$r31,$r13,0x2
1c001f88:	00107c8d 	add.w	$r13,$r4,$r31
1c001f8c:	288001bf 	ld.w	$r31,$r13,0
1c001f90:	028007e4 	addi.w	$r4,$r31,1(0x1)
1c001f94:	298001a4 	st.w	$r4,$r13,0
1c001f98:	2881006d 	ld.w	$r13,$r3,64(0x40)
1c001f9c:	02800610 	addi.w	$r16,$r16,1(0x1)
1c001fa0:	028131ef 	addi.w	$r15,$r15,76(0x4c)
1c001fa4:	67fd75b0 	bge	$r13,$r16,-652(0x3fd74) # 1c001d18 <shell15_main+0x1368>
1c001fa8:	2881407f 	ld.w	$r31,$r3,80(0x50)
1c001fac:	2880e069 	ld.w	$r9,$r3,56(0x38)
1c001fb0:	28815068 	ld.w	$r8,$r3,84(0x54)
1c001fb4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001fb8:	58016105 	beq	$r8,$r5,352(0x160) # 1c002118 <shell15_main+0x1768>
1c001fbc:	02800810 	addi.w	$r16,$r0,2(0x2)
1c001fc0:	58018110 	beq	$r8,$r16,384(0x180) # 1c002140 <shell15_main+0x1790>
1c001fc4:	2881306f 	ld.w	$r15,$r3,76(0x4c)
1c001fc8:	028005f4 	addi.w	$r20,$r15,1(0x1)
1c001fcc:	29813074 	st.w	$r20,$r3,76(0x4c)
1c001fd0:	53ebf3ff 	b	-5136(0xfffebf0) # 1c000bc0 <shell15_main+0x210>
1c001fd4:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c001fd8:	28809069 	ld.w	$r9,$r3,36(0x24)
1c001fdc:	53ebe7ff 	b	-5148(0xfffebe4) # 1c000bc0 <shell15_main+0x210>
1c001fe0:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c001fe4:	28809069 	ld.w	$r9,$r3,36(0x24)
1c001fe8:	53ebdbff 	b	-5160(0xfffebd8) # 1c000bc0 <shell15_main+0x210>
1c001fec:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c001ff0:	28809069 	ld.w	$r9,$r3,36(0x24)
1c001ff4:	53ebcfff 	b	-5172(0xfffebcc) # 1c000bc0 <shell15_main+0x210>
1c001ff8:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c001ffc:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002000:	53ebc3ff 	b	-5184(0xfffebc0) # 1c000bc0 <shell15_main+0x210>
1c002004:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002008:	28809069 	ld.w	$r9,$r3,36(0x24)
1c00200c:	53ebb7ff 	b	-5196(0xfffebb4) # 1c000bc0 <shell15_main+0x210>
1c002010:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002014:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002018:	53ebabff 	b	-5208(0xfffeba8) # 1c000bc0 <shell15_main+0x210>
1c00201c:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002020:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002024:	53eb9fff 	b	-5220(0xfffeb9c) # 1c000bc0 <shell15_main+0x210>
1c002028:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c00202c:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002030:	53eb93ff 	b	-5232(0xfffeb90) # 1c000bc0 <shell15_main+0x210>
1c002034:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002038:	28809069 	ld.w	$r9,$r3,36(0x24)
1c00203c:	53eb87ff 	b	-5244(0xfffeb84) # 1c000bc0 <shell15_main+0x210>
1c002040:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002044:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002048:	53eb7bff 	b	-5256(0xfffeb78) # 1c000bc0 <shell15_main+0x210>
1c00204c:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002050:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002054:	53eb6fff 	b	-5268(0xfffeb6c) # 1c000bc0 <shell15_main+0x210>
1c002058:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c00205c:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002060:	53eb63ff 	b	-5280(0xfffeb60) # 1c000bc0 <shell15_main+0x210>
1c002064:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002068:	28809069 	ld.w	$r9,$r3,36(0x24)
1c00206c:	53eb57ff 	b	-5292(0xfffeb54) # 1c000bc0 <shell15_main+0x210>
1c002070:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002074:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002078:	53eb4bff 	b	-5304(0xfffeb48) # 1c000bc0 <shell15_main+0x210>
1c00207c:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002080:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002084:	53eb3fff 	b	-5316(0xfffeb3c) # 1c000bc0 <shell15_main+0x210>
1c002088:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c00208c:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002090:	53eb33ff 	b	-5328(0xfffeb30) # 1c000bc0 <shell15_main+0x210>
1c002094:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002098:	28809069 	ld.w	$r9,$r3,36(0x24)
1c00209c:	53eb27ff 	b	-5340(0xfffeb24) # 1c000bc0 <shell15_main+0x210>
1c0020a0:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c0020a4:	28809069 	ld.w	$r9,$r3,36(0x24)
1c0020a8:	53eb1bff 	b	-5352(0xfffeb18) # 1c000bc0 <shell15_main+0x210>
1c0020ac:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c0020b0:	28809069 	ld.w	$r9,$r3,36(0x24)
1c0020b4:	53eb0fff 	b	-5364(0xfffeb0c) # 1c000bc0 <shell15_main+0x210>
1c0020b8:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c0020bc:	28809069 	ld.w	$r9,$r3,36(0x24)
1c0020c0:	53eb03ff 	b	-5376(0xfffeb00) # 1c000bc0 <shell15_main+0x210>
1c0020c4:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c0020c8:	28809069 	ld.w	$r9,$r3,36(0x24)
1c0020cc:	53eaf7ff 	b	-5388(0xfffeaf4) # 1c000bc0 <shell15_main+0x210>
1c0020d0:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c0020d4:	28809069 	ld.w	$r9,$r3,36(0x24)
1c0020d8:	53eaebff 	b	-5400(0xfffeae8) # 1c000bc0 <shell15_main+0x210>
1c0020dc:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c0020e0:	28809069 	ld.w	$r9,$r3,36(0x24)
1c0020e4:	53eadfff 	b	-5412(0xfffeadc) # 1c000bc0 <shell15_main+0x210>
1c0020e8:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c0020ec:	28809069 	ld.w	$r9,$r3,36(0x24)
1c0020f0:	53ead3ff 	b	-5424(0xfffead0) # 1c000bc0 <shell15_main+0x210>
1c0020f4:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c0020f8:	28809069 	ld.w	$r9,$r3,36(0x24)
1c0020fc:	53eac7ff 	b	-5436(0xfffeac4) # 1c000bc0 <shell15_main+0x210>
1c002100:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002104:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002108:	53eabbff 	b	-5448(0xfffeab8) # 1c000bc0 <shell15_main+0x210>
1c00210c:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002110:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002114:	53eaafff 	b	-5460(0xfffeaac) # 1c000bc0 <shell15_main+0x210>
1c002118:	28811071 	ld.w	$r17,$r3,68(0x44)
1c00211c:	02800626 	addi.w	$r6,$r17,1(0x1)
1c002120:	29811066 	st.w	$r6,$r3,68(0x44)
1c002124:	53ea9fff 	b	-5476(0xfffea9c) # 1c000bc0 <shell15_main+0x210>
1c002128:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c00212c:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002130:	53ea93ff 	b	-5488(0xfffea90) # 1c000bc0 <shell15_main+0x210>
1c002134:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002138:	28809069 	ld.w	$r9,$r3,36(0x24)
1c00213c:	53ea87ff 	b	-5500(0xfffea84) # 1c000bc0 <shell15_main+0x210>
1c002140:	28812073 	ld.w	$r19,$r3,72(0x48)
1c002144:	02800672 	addi.w	$r18,$r19,1(0x1)
1c002148:	29812072 	st.w	$r18,$r3,72(0x48)
1c00214c:	53ea77ff 	b	-5516(0xfffea74) # 1c000bc0 <shell15_main+0x210>
1c002150:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002154:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002158:	53ea6bff 	b	-5528(0xfffea68) # 1c000bc0 <shell15_main+0x210>
1c00215c:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c002160:	28809069 	ld.w	$r9,$r3,36(0x24)
1c002164:	53ea5fff 	b	-5540(0xfffea5c) # 1c000bc0 <shell15_main+0x210>
1c002168:	03400000 	andi	$r0,$r0,0x0
1c00216c:	03400000 	andi	$r0,$r0,0x0

1c002170 <shell15>:
shell15():
1c002170:	02bd0063 	addi.w	$r3,$r3,-192(0xf40)
1c002174:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002178:	1c000fc4 	pcaddu12i	$r4,126(0x7e)
1c00217c:	02ba5084 	addi.w	$r4,$r4,-364(0xe94)
1c002180:	2982f061 	st.w	$r1,$r3,188(0xbc)
1c002184:	2981a06c 	st.w	$r12,$r3,104(0x68)
1c002188:	2982907b 	st.w	$r27,$r3,164(0xa4)
1c00218c:	2982e076 	st.w	$r22,$r3,184(0xb8)
1c002190:	2982d077 	st.w	$r23,$r3,180(0xb4)
1c002194:	2982c078 	st.w	$r24,$r3,176(0xb0)
1c002198:	2982b079 	st.w	$r25,$r3,172(0xac)
1c00219c:	2982a07a 	st.w	$r26,$r3,168(0xa8)
1c0021a0:	2982807c 	st.w	$r28,$r3,160(0xa0)
1c0021a4:	2982707d 	st.w	$r29,$r3,156(0x9c)
1c0021a8:	2982607e 	st.w	$r30,$r3,152(0x98)
1c0021ac:	2982507f 	st.w	$r31,$r3,148(0x94)
1c0021b0:	1c000ffb 	pcaddu12i	$r27,127(0x7f)
1c0021b4:	02aad37b 	addi.w	$r27,$r27,-1356(0xab4)
1c0021b8:	29814060 	st.w	$r0,$r3,80(0x50)
1c0021bc:	542f9400 	bl	12180(0x2f94) # 1c005150 <puts>
1c0021c0:	02800764 	addi.w	$r4,$r27,1(0x1)
1c0021c4:	29813064 	st.w	$r4,$r3,76(0x4c)
1c0021c8:	54338800 	bl	13192(0x3388) # 1c005550 <get_count>
1c0021cc:	29822064 	st.w	$r4,$r3,136(0x88)
1c0021d0:	5433b000 	bl	13232(0x33b0) # 1c005580 <get_count_my>
1c0021d4:	157f5fe5 	lu12i.w	$r5,-263425(0xbfaff)
1c0021d8:	03bc80a6 	ori	$r6,$r5,0xf20
1c0021dc:	288000c7 	ld.w	$r7,$r6,0
1c0021e0:	29823064 	st.w	$r4,$r3,140(0x8c)
1c0021e4:	5c169ce0 	bne	$r7,$r0,5788(0x169c) # 1c003880 <shell15+0x1710>
1c0021e8:	02802801 	addi.w	$r1,$r0,10(0xa)
1c0021ec:	29812061 	st.w	$r1,$r3,72(0x48)
1c0021f0:	03a60006 	ori	$r6,$r0,0x980
1c0021f4:	00150005 	move	$r5,$r0
1c0021f8:	1c000fc4 	pcaddu12i	$r4,126(0x7e)
1c0021fc:	0283b084 	addi.w	$r4,$r4,236(0xec)
1c002200:	54322000 	bl	12832(0x3220) # 1c005420 <memset>
1c002204:	1c000fe8 	pcaddu12i	$r8,127(0x7f)
1c002208:	02b41108 	addi.w	$r8,$r8,-764(0xd04)
1c00220c:	28800109 	ld.w	$r9,$r8,0
1c002210:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c002214:	29807069 	st.w	$r9,$r3,28(0x1c)
1c002218:	64122da9 	bge	$r13,$r9,4652(0x122c) # 1c003444 <shell15+0x12d4>
1c00221c:	1c000fea 	pcaddu12i	$r10,127(0x7f)
1c002220:	02b3c14a 	addi.w	$r10,$r10,-784(0xcf0)
1c002224:	28800151 	ld.w	$r17,$r10,0
1c002228:	1c000fcb 	pcaddu12i	$r11,126(0x7e)
1c00222c:	0281f16b 	addi.w	$r11,$r11,124(0x7c)
1c002230:	2880016e 	ld.w	$r14,$r11,0
1c002234:	2880116f 	ld.w	$r15,$r11,4(0x4)
1c002238:	2980e071 	st.w	$r17,$r3,56(0x38)
1c00223c:	28802173 	ld.w	$r19,$r11,8(0x8)
1c002240:	28803176 	ld.w	$r22,$r11,12(0xc)
1c002244:	28804172 	ld.w	$r18,$r11,16(0x10)
1c002248:	28805177 	ld.w	$r23,$r11,20(0x14)
1c00224c:	28806174 	ld.w	$r20,$r11,24(0x18)
1c002250:	28807178 	ld.w	$r24,$r11,28(0x1c)
1c002254:	2880817e 	ld.w	$r30,$r11,32(0x20)
1c002258:	28809179 	ld.w	$r25,$r11,36(0x24)
1c00225c:	2880a164 	ld.w	$r4,$r11,40(0x28)
1c002260:	2880b17a 	ld.w	$r26,$r11,44(0x2c)
1c002264:	2880c167 	ld.w	$r7,$r11,48(0x30)
1c002268:	2880d17c 	ld.w	$r28,$r11,52(0x34)
1c00226c:	2880e170 	ld.w	$r16,$r11,56(0x38)
1c002270:	2880f17d 	ld.w	$r29,$r11,60(0x3c)
1c002274:	640319b1 	bge	$r13,$r17,792(0x318) # 1c00258c <shell15+0x41c>
1c002278:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00227c:	0280541f 	addi.w	$r31,$r0,21(0x15)
1c002280:	02bfac0c 	addi.w	$r12,$r0,-21(0xfeb)
1c002284:	001c7e86 	mul.w	$r6,$r20,$r31
1c002288:	0010476b 	add.w	$r11,$r27,$r17
1c00228c:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c002290:	001c3034 	mul.w	$r20,$r1,$r12
1c002294:	001c7dca 	mul.w	$r10,$r14,$r31
1c002298:	001c7e45 	mul.w	$r5,$r18,$r31
1c00229c:	0280b812 	addi.w	$r18,$r0,46(0x2e)
1c0022a0:	001c7e6e 	mul.w	$r14,$r19,$r31
1c0022a4:	001c7fc9 	mul.w	$r9,$r30,$r31
1c0022a8:	001c7cf3 	mul.w	$r19,$r7,$r31
1c0022ac:	001c7c88 	mul.w	$r8,$r4,$r31
1c0022b0:	001c7e07 	mul.w	$r7,$r16,$r31
1c0022b4:	02bf5810 	addi.w	$r16,$r0,-42(0xfd6)
1c0022b8:	02800b7f 	addi.w	$r31,$r27,2(0x2)
1c0022bc:	03400000 	andi	$r0,$r0,0x0
1c0022c0:	001143ec 	sub.w	$r12,$r31,$r16
1c0022c4:	00114164 	sub.w	$r4,$r11,$r16
1c0022c8:	0011309e 	sub.w	$r30,$r4,$r12
1c0022cc:	03400fd1 	andi	$r17,$r30,0x3
1c0022d0:	58007220 	beq	$r17,$r0,112(0x70) # 1c002340 <shell15+0x1d0>
1c0022d4:	02800401 	addi.w	$r1,$r0,1(0x1)
1c0022d8:	58002621 	beq	$r17,$r1,36(0x24) # 1c0022fc <shell15+0x18c>
1c0022dc:	0280081e 	addi.w	$r30,$r0,2(0x2)
1c0022e0:	5800123e 	beq	$r17,$r30,16(0x10) # 1c0022f0 <shell15+0x180>
1c0022e4:	28000181 	ld.b	$r1,$r12,0
1c0022e8:	580f802d 	beq	$r1,$r13,3968(0xf80) # 1c003268 <shell15+0x10f8>
1c0022ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022f0:	28000181 	ld.b	$r1,$r12,0
1c0022f4:	580eec2d 	beq	$r1,$r13,3820(0xeec) # 1c0031e0 <shell15+0x1070>
1c0022f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022fc:	28000191 	ld.b	$r17,$r12,0
1c002300:	5811722d 	beq	$r17,$r13,4464(0x1170) # 1c003470 <shell15+0x1300>
1c002304:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002308:	5c003984 	bne	$r12,$r4,56(0x38) # 1c002340 <shell15+0x1d0>
1c00230c:	50027800 	b	632(0x278) # 1c002584 <shell15+0x414>
1c002310:	28000581 	ld.b	$r1,$r12,1(0x1)
1c002314:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002318:	5800c02d 	beq	$r1,$r13,192(0xc0) # 1c0023d8 <shell15+0x268>
1c00231c:	28000591 	ld.b	$r17,$r12,1(0x1)
1c002320:	0280059e 	addi.w	$r30,$r12,1(0x1)
1c002324:	5801462d 	beq	$r17,$r13,324(0x144) # 1c002468 <shell15+0x2f8>
1c002328:	28000991 	ld.b	$r17,$r12,2(0x2)
1c00232c:	0280099e 	addi.w	$r30,$r12,2(0x2)
1c002330:	5801ca2d 	beq	$r17,$r13,456(0x1c8) # 1c0024f8 <shell15+0x388>
1c002334:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c002338:	58024d84 	beq	$r12,$r4,588(0x24c) # 1c002584 <shell15+0x414>
1c00233c:	03400000 	andi	$r0,$r0,0x0
1c002340:	2800019e 	ld.b	$r30,$r12,0
1c002344:	5fffcfcd 	bne	$r30,$r13,-52(0x3ffcc) # 1c002310 <shell15+0x1a0>
1c002348:	00102981 	add.w	$r1,$r12,$r10
1c00234c:	00103c31 	add.w	$r17,$r1,$r15
1c002350:	2800023e 	ld.b	$r30,$r17,0
1c002354:	5bffbfcd 	beq	$r30,$r13,-68(0x3ffbc) # 1c002310 <shell15+0x1a0>
1c002358:	00103981 	add.w	$r1,$r12,$r14
1c00235c:	00105831 	add.w	$r17,$r1,$r22
1c002360:	2800023e 	ld.b	$r30,$r17,0
1c002364:	5bffafcd 	beq	$r30,$r13,-84(0x3ffac) # 1c002310 <shell15+0x1a0>
1c002368:	00101581 	add.w	$r1,$r12,$r5
1c00236c:	00105c31 	add.w	$r17,$r1,$r23
1c002370:	2800023e 	ld.b	$r30,$r17,0
1c002374:	5bff9fcd 	beq	$r30,$r13,-100(0x3ff9c) # 1c002310 <shell15+0x1a0>
1c002378:	00101981 	add.w	$r1,$r12,$r6
1c00237c:	00106031 	add.w	$r17,$r1,$r24
1c002380:	2800023e 	ld.b	$r30,$r17,0
1c002384:	5bff8fcd 	beq	$r30,$r13,-116(0x3ff8c) # 1c002310 <shell15+0x1a0>
1c002388:	00102581 	add.w	$r1,$r12,$r9
1c00238c:	00106431 	add.w	$r17,$r1,$r25
1c002390:	2800023e 	ld.b	$r30,$r17,0
1c002394:	5bff7fcd 	beq	$r30,$r13,-132(0x3ff7c) # 1c002310 <shell15+0x1a0>
1c002398:	00102181 	add.w	$r1,$r12,$r8
1c00239c:	00106831 	add.w	$r17,$r1,$r26
1c0023a0:	2800023e 	ld.b	$r30,$r17,0
1c0023a4:	5bff6fcd 	beq	$r30,$r13,-148(0x3ff6c) # 1c002310 <shell15+0x1a0>
1c0023a8:	00104d81 	add.w	$r1,$r12,$r19
1c0023ac:	00107031 	add.w	$r17,$r1,$r28
1c0023b0:	2800023e 	ld.b	$r30,$r17,0
1c0023b4:	5bff5fcd 	beq	$r30,$r13,-164(0x3ff5c) # 1c002310 <shell15+0x1a0>
1c0023b8:	00101d81 	add.w	$r1,$r12,$r7
1c0023bc:	00107431 	add.w	$r17,$r1,$r29
1c0023c0:	2800023e 	ld.b	$r30,$r17,0
1c0023c4:	5bff4fcd 	beq	$r30,$r13,-180(0x3ff4c) # 1c002310 <shell15+0x1a0>
1c0023c8:	28000581 	ld.b	$r1,$r12,1(0x1)
1c0023cc:	29000192 	st.b	$r18,$r12,0
1c0023d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023d4:	5fff482d 	bne	$r1,$r13,-184(0x3ff48) # 1c00231c <shell15+0x1ac>
1c0023d8:	00102991 	add.w	$r17,$r12,$r10
1c0023dc:	00103e3e 	add.w	$r30,$r17,$r15
1c0023e0:	280003c1 	ld.b	$r1,$r30,0
1c0023e4:	5bff382d 	beq	$r1,$r13,-200(0x3ff38) # 1c00231c <shell15+0x1ac>
1c0023e8:	00103991 	add.w	$r17,$r12,$r14
1c0023ec:	00105a3e 	add.w	$r30,$r17,$r22
1c0023f0:	280003c1 	ld.b	$r1,$r30,0
1c0023f4:	5bff282d 	beq	$r1,$r13,-216(0x3ff28) # 1c00231c <shell15+0x1ac>
1c0023f8:	00101591 	add.w	$r17,$r12,$r5
1c0023fc:	00105e3e 	add.w	$r30,$r17,$r23
1c002400:	280003c1 	ld.b	$r1,$r30,0
1c002404:	5bff182d 	beq	$r1,$r13,-232(0x3ff18) # 1c00231c <shell15+0x1ac>
1c002408:	00101991 	add.w	$r17,$r12,$r6
1c00240c:	0010623e 	add.w	$r30,$r17,$r24
1c002410:	280003c1 	ld.b	$r1,$r30,0
1c002414:	5bff082d 	beq	$r1,$r13,-248(0x3ff08) # 1c00231c <shell15+0x1ac>
1c002418:	00102591 	add.w	$r17,$r12,$r9
1c00241c:	0010663e 	add.w	$r30,$r17,$r25
1c002420:	280003c1 	ld.b	$r1,$r30,0
1c002424:	5bfef82d 	beq	$r1,$r13,-264(0x3fef8) # 1c00231c <shell15+0x1ac>
1c002428:	00102191 	add.w	$r17,$r12,$r8
1c00242c:	00106a3e 	add.w	$r30,$r17,$r26
1c002430:	280003c1 	ld.b	$r1,$r30,0
1c002434:	5bfee82d 	beq	$r1,$r13,-280(0x3fee8) # 1c00231c <shell15+0x1ac>
1c002438:	00104d91 	add.w	$r17,$r12,$r19
1c00243c:	0010723e 	add.w	$r30,$r17,$r28
1c002440:	280003c1 	ld.b	$r1,$r30,0
1c002444:	5bfed82d 	beq	$r1,$r13,-296(0x3fed8) # 1c00231c <shell15+0x1ac>
1c002448:	00101d91 	add.w	$r17,$r12,$r7
1c00244c:	0010763e 	add.w	$r30,$r17,$r29
1c002450:	280003c1 	ld.b	$r1,$r30,0
1c002454:	5bfec82d 	beq	$r1,$r13,-312(0x3fec8) # 1c00231c <shell15+0x1ac>
1c002458:	28000591 	ld.b	$r17,$r12,1(0x1)
1c00245c:	29000192 	st.b	$r18,$r12,0
1c002460:	0280059e 	addi.w	$r30,$r12,1(0x1)
1c002464:	5ffec62d 	bne	$r17,$r13,-316(0x3fec4) # 1c002328 <shell15+0x1b8>
1c002468:	00102bc1 	add.w	$r1,$r30,$r10
1c00246c:	00103c31 	add.w	$r17,$r1,$r15
1c002470:	28000221 	ld.b	$r1,$r17,0
1c002474:	5bfeb42d 	beq	$r1,$r13,-332(0x3feb4) # 1c002328 <shell15+0x1b8>
1c002478:	00103bd1 	add.w	$r17,$r30,$r14
1c00247c:	00105a21 	add.w	$r1,$r17,$r22
1c002480:	28000031 	ld.b	$r17,$r1,0
1c002484:	5bfea62d 	beq	$r17,$r13,-348(0x3fea4) # 1c002328 <shell15+0x1b8>
1c002488:	001017c1 	add.w	$r1,$r30,$r5
1c00248c:	00105c31 	add.w	$r17,$r1,$r23
1c002490:	28000221 	ld.b	$r1,$r17,0
1c002494:	5bfe942d 	beq	$r1,$r13,-364(0x3fe94) # 1c002328 <shell15+0x1b8>
1c002498:	00101bd1 	add.w	$r17,$r30,$r6
1c00249c:	00106221 	add.w	$r1,$r17,$r24
1c0024a0:	28000031 	ld.b	$r17,$r1,0
1c0024a4:	5bfe862d 	beq	$r17,$r13,-380(0x3fe84) # 1c002328 <shell15+0x1b8>
1c0024a8:	001027c1 	add.w	$r1,$r30,$r9
1c0024ac:	00106431 	add.w	$r17,$r1,$r25
1c0024b0:	28000221 	ld.b	$r1,$r17,0
1c0024b4:	5bfe742d 	beq	$r1,$r13,-396(0x3fe74) # 1c002328 <shell15+0x1b8>
1c0024b8:	001023d1 	add.w	$r17,$r30,$r8
1c0024bc:	00106a21 	add.w	$r1,$r17,$r26
1c0024c0:	28000031 	ld.b	$r17,$r1,0
1c0024c4:	5bfe662d 	beq	$r17,$r13,-412(0x3fe64) # 1c002328 <shell15+0x1b8>
1c0024c8:	00104fc1 	add.w	$r1,$r30,$r19
1c0024cc:	00107031 	add.w	$r17,$r1,$r28
1c0024d0:	28000221 	ld.b	$r1,$r17,0
1c0024d4:	5bfe542d 	beq	$r1,$r13,-428(0x3fe54) # 1c002328 <shell15+0x1b8>
1c0024d8:	00101fde 	add.w	$r30,$r30,$r7
1c0024dc:	001077d1 	add.w	$r17,$r30,$r29
1c0024e0:	28000221 	ld.b	$r1,$r17,0
1c0024e4:	5bfe442d 	beq	$r1,$r13,-444(0x3fe44) # 1c002328 <shell15+0x1b8>
1c0024e8:	28000991 	ld.b	$r17,$r12,2(0x2)
1c0024ec:	29000592 	st.b	$r18,$r12,1(0x1)
1c0024f0:	0280099e 	addi.w	$r30,$r12,2(0x2)
1c0024f4:	5ffe422d 	bne	$r17,$r13,-448(0x3fe40) # 1c002334 <shell15+0x1c4>
1c0024f8:	00102bc1 	add.w	$r1,$r30,$r10
1c0024fc:	00103c31 	add.w	$r17,$r1,$r15
1c002500:	28000221 	ld.b	$r1,$r17,0
1c002504:	5bfe302d 	beq	$r1,$r13,-464(0x3fe30) # 1c002334 <shell15+0x1c4>
1c002508:	00103bd1 	add.w	$r17,$r30,$r14
1c00250c:	00105a21 	add.w	$r1,$r17,$r22
1c002510:	28000031 	ld.b	$r17,$r1,0
1c002514:	5bfe222d 	beq	$r17,$r13,-480(0x3fe20) # 1c002334 <shell15+0x1c4>
1c002518:	001017c1 	add.w	$r1,$r30,$r5
1c00251c:	00105c31 	add.w	$r17,$r1,$r23
1c002520:	28000221 	ld.b	$r1,$r17,0
1c002524:	5bfe102d 	beq	$r1,$r13,-496(0x3fe10) # 1c002334 <shell15+0x1c4>
1c002528:	00101bd1 	add.w	$r17,$r30,$r6
1c00252c:	00106221 	add.w	$r1,$r17,$r24
1c002530:	28000031 	ld.b	$r17,$r1,0
1c002534:	5bfe022d 	beq	$r17,$r13,-512(0x3fe00) # 1c002334 <shell15+0x1c4>
1c002538:	001027c1 	add.w	$r1,$r30,$r9
1c00253c:	00106431 	add.w	$r17,$r1,$r25
1c002540:	28000221 	ld.b	$r1,$r17,0
1c002544:	5bfdf02d 	beq	$r1,$r13,-528(0x3fdf0) # 1c002334 <shell15+0x1c4>
1c002548:	001023d1 	add.w	$r17,$r30,$r8
1c00254c:	00106a21 	add.w	$r1,$r17,$r26
1c002550:	28000031 	ld.b	$r17,$r1,0
1c002554:	5bfde22d 	beq	$r17,$r13,-544(0x3fde0) # 1c002334 <shell15+0x1c4>
1c002558:	00104fc1 	add.w	$r1,$r30,$r19
1c00255c:	00107031 	add.w	$r17,$r1,$r28
1c002560:	28000221 	ld.b	$r1,$r17,0
1c002564:	5bfdd02d 	beq	$r1,$r13,-560(0x3fdd0) # 1c002334 <shell15+0x1c4>
1c002568:	00101fde 	add.w	$r30,$r30,$r7
1c00256c:	001077d1 	add.w	$r17,$r30,$r29
1c002570:	28000221 	ld.b	$r1,$r17,0
1c002574:	5bfdc02d 	beq	$r1,$r13,-576(0x3fdc0) # 1c002334 <shell15+0x1c4>
1c002578:	29000992 	st.b	$r18,$r12,2(0x2)
1c00257c:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c002580:	5ffdc184 	bne	$r12,$r4,-576(0x3fdc0) # 1c002340 <shell15+0x1d0>
1c002584:	02bfae10 	addi.w	$r16,$r16,-21(0xfeb)
1c002588:	5ffd3a14 	bne	$r16,$r20,-712(0x3fd38) # 1c0022c0 <shell15+0x150>
1c00258c:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c002590:	2880e06f 	ld.w	$r15,$r3,56(0x38)
1c002594:	1c000fde 	pcaddu12i	$r30,126(0x7e)
1c002598:	02b543de 	addi.w	$r30,$r30,-688(0xd50)
1c00259c:	02bfff5c 	addi.w	$r28,$r26,-1(0xfff)
1c0025a0:	02bffdf6 	addi.w	$r22,$r15,-1(0xfff)
1c0025a4:	028263d8 	addi.w	$r24,$r30,152(0x98)
1c0025a8:	02805419 	addi.w	$r25,$r0,21(0x15)
1c0025ac:	02800c17 	addi.w	$r23,$r0,3(0x3)
1c0025b0:	02800801 	addi.w	$r1,$r0,2(0x2)
1c0025b4:	29808076 	st.w	$r22,$r3,32(0x20)
1c0025b8:	29809078 	st.w	$r24,$r3,36(0x24)
1c0025bc:	2981107c 	st.w	$r28,$r3,68(0x44)
1c0025c0:	29803077 	st.w	$r23,$r3,12(0xc)
1c0025c4:	2980b060 	st.w	$r0,$r3,44(0x2c)
1c0025c8:	2980d060 	st.w	$r0,$r3,52(0x34)
1c0025cc:	2980c060 	st.w	$r0,$r3,48(0x30)
1c0025d0:	02808c1a 	addi.w	$r26,$r0,35(0x23)
1c0025d4:	1c000ffd 	pcaddu12i	$r29,127(0x7f)
1c0025d8:	28a503bd 	ld.w	$r29,$r29,-1728(0x940)
1c0025dc:	1c000ffc 	pcaddu12i	$r28,127(0x7f)
1c0025e0:	28a4f39c 	ld.w	$r28,$r28,-1732(0x93c)
1c0025e4:	00150036 	move	$r22,$r1
1c0025e8:	00150338 	move	$r24,$r25
1c0025ec:	03400000 	andi	$r0,$r0,0x0
1c0025f0:	2880806e 	ld.w	$r14,$r3,32(0x20)
1c0025f4:	0280080a 	addi.w	$r10,$r0,2(0x2)
1c0025f8:	640cf94e 	bge	$r10,$r14,3320(0xcf8) # 1c0032f0 <shell15+0x1180>
1c0025fc:	0280540b 	addi.w	$r11,$r0,21(0x15)
1c002600:	028006c8 	addi.w	$r8,$r22,1(0x1)
1c002604:	001c2ed3 	mul.w	$r19,$r22,$r11
1c002608:	02bfac06 	addi.w	$r6,$r0,-21(0xfeb)
1c00260c:	2880907f 	ld.w	$r31,$r3,36(0x24)
1c002610:	02806367 	addi.w	$r7,$r27,24(0x18)
1c002614:	02800411 	addi.w	$r17,$r0,1(0x1)
1c002618:	001060f4 	add.w	$r20,$r7,$r24
1c00261c:	0280ab04 	addi.w	$r4,$r24,42(0x2a)
1c002620:	00115a2f 	sub.w	$r15,$r17,$r22
1c002624:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c002628:	02800812 	addi.w	$r18,$r0,2(0x2)
1c00262c:	2980407f 	st.w	$r31,$r3,16(0x10)
1c002630:	29802076 	st.w	$r22,$r3,8(0x8)
1c002634:	2980f068 	st.w	$r8,$r3,60(0x3c)
1c002638:	2980506d 	st.w	$r13,$r3,20(0x14)
1c00263c:	02800817 	addi.w	$r23,$r0,2(0x2)
1c002640:	29818064 	st.w	$r4,$r3,96(0x60)
1c002644:	001501ea 	move	$r10,$r15
1c002648:	001c1ac9 	mul.w	$r9,$r22,$r6
1c00264c:	00104f6c 	add.w	$r12,$r27,$r19
1c002650:	00150316 	move	$r22,$r24
1c002654:	2981006c 	st.w	$r12,$r3,64(0x40)
1c002658:	00150258 	move	$r24,$r18
1c00265c:	0015029f 	move	$r31,$r20
1c002660:	001c2d10 	mul.w	$r16,$r8,$r11
1c002664:	29817069 	st.w	$r9,$r3,92(0x5c)
1c002668:	29819070 	st.w	$r16,$r3,100(0x64)
1c00266c:	50003000 	b	48(0x30) # 1c00269c <shell15+0x52c>
1c002670:	28804068 	ld.w	$r8,$r3,16(0x10)
1c002674:	28805079 	ld.w	$r25,$r3,20(0x14)
1c002678:	28806078 	ld.w	$r24,$r3,24(0x18)
1c00267c:	28808070 	ld.w	$r16,$r3,32(0x20)
1c002680:	02801109 	addi.w	$r9,$r8,4(0x4)
1c002684:	02800721 	addi.w	$r1,$r25,1(0x1)
1c002688:	29804069 	st.w	$r9,$r3,16(0x10)
1c00268c:	29805061 	st.w	$r1,$r3,20(0x14)
1c002690:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c002694:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c002698:	640dcf10 	bge	$r24,$r16,3532(0xdcc) # 1c003464 <shell15+0x12f4>
1c00269c:	283ffff9 	ld.b	$r25,$r31,-1(0xfff)
1c0026a0:	02800701 	addi.w	$r1,$r24,1(0x1)
1c0026a4:	29806061 	st.w	$r1,$r3,24(0x18)
1c0026a8:	29815079 	st.w	$r25,$r3,84(0x54)
1c0026ac:	0280b80e 	addi.w	$r14,$r0,46(0x2e)
1c0026b0:	5fffc32e 	bne	$r25,$r14,-64(0x3ffc0) # 1c002670 <shell15+0x500>
1c0026b4:	280003e5 	ld.b	$r5,$r31,0
1c0026b8:	5fffb8ba 	bne	$r5,$r26,-72(0x3ffb8) # 1c002670 <shell15+0x500>
1c0026bc:	28804066 	ld.w	$r6,$r3,16(0x10)
1c0026c0:	288020c9 	ld.w	$r9,$r6,8(0x8)
1c0026c4:	5fffad20 	bne	$r9,$r0,-84(0x3ffac) # 1c002670 <shell15+0x500>
1c0026c8:	28808068 	ld.w	$r8,$r3,32(0x20)
1c0026cc:	28805073 	ld.w	$r19,$r3,20(0x14)
1c0026d0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0026d4:	64014668 	bge	$r19,$r8,324(0x144) # 1c002818 <shell15+0x6a8>
1c0026d8:	280007e7 	ld.b	$r7,$r31,1(0x1)
1c0026dc:	5c013cfa 	bne	$r7,$r26,316(0x13c) # 1c002818 <shell15+0x6a8>
1c0026e0:	2880e074 	ld.w	$r20,$r3,56(0x38)
1c0026e4:	02bfffed 	addi.w	$r13,$r31,-1(0xfff)
1c0026e8:	00114e92 	sub.w	$r18,$r20,$r19
1c0026ec:	02bffa50 	addi.w	$r16,$r18,-2(0xffe)
1c0026f0:	03401e04 	andi	$r4,$r16,0x7
1c0026f4:	58009c80 	beq	$r4,$r0,156(0x9c) # 1c002790 <shell15+0x620>
1c0026f8:	28000bf1 	ld.b	$r17,$r31,2(0x2)
1c0026fc:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002700:	5c011a3a 	bne	$r17,$r26,280(0x118) # 1c002818 <shell15+0x6a8>
1c002704:	0280040f 	addi.w	$r15,$r0,1(0x1)
1c002708:	5800888f 	beq	$r4,$r15,136(0x88) # 1c002790 <shell15+0x620>
1c00270c:	5800748c 	beq	$r4,$r12,116(0x74) # 1c002780 <shell15+0x610>
1c002710:	02800c19 	addi.w	$r25,$r0,3(0x3)
1c002714:	58005c99 	beq	$r4,$r25,92(0x5c) # 1c002770 <shell15+0x600>
1c002718:	02801001 	addi.w	$r1,$r0,4(0x4)
1c00271c:	58004481 	beq	$r4,$r1,68(0x44) # 1c002760 <shell15+0x5f0>
1c002720:	0280140e 	addi.w	$r14,$r0,5(0x5)
1c002724:	58002c8e 	beq	$r4,$r14,44(0x2c) # 1c002750 <shell15+0x5e0>
1c002728:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00272c:	58001485 	beq	$r4,$r5,20(0x14) # 1c002740 <shell15+0x5d0>
1c002730:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002734:	001031a6 	add.w	$r6,$r13,$r12
1c002738:	280004c8 	ld.b	$r8,$r6,1(0x1)
1c00273c:	5c00dd1a 	bne	$r8,$r26,220(0xdc) # 1c002818 <shell15+0x6a8>
1c002740:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002744:	001031b3 	add.w	$r19,$r13,$r12
1c002748:	28000667 	ld.b	$r7,$r19,1(0x1)
1c00274c:	5c00ccfa 	bne	$r7,$r26,204(0xcc) # 1c002818 <shell15+0x6a8>
1c002750:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002754:	001031b4 	add.w	$r20,$r13,$r12
1c002758:	28000690 	ld.b	$r16,$r20,1(0x1)
1c00275c:	5c00be1a 	bne	$r16,$r26,188(0xbc) # 1c002818 <shell15+0x6a8>
1c002760:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002764:	001031a4 	add.w	$r4,$r13,$r12
1c002768:	28000491 	ld.b	$r17,$r4,1(0x1)
1c00276c:	5c00ae3a 	bne	$r17,$r26,172(0xac) # 1c002818 <shell15+0x6a8>
1c002770:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002774:	001031af 	add.w	$r15,$r13,$r12
1c002778:	280005f9 	ld.b	$r25,$r15,1(0x1)
1c00277c:	5c009f3a 	bne	$r25,$r26,156(0x9c) # 1c002818 <shell15+0x6a8>
1c002780:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002784:	001031a1 	add.w	$r1,$r13,$r12
1c002788:	2800042e 	ld.b	$r14,$r1,1(0x1)
1c00278c:	5c008dda 	bne	$r14,$r26,140(0x8c) # 1c002818 <shell15+0x6a8>
1c002790:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002794:	001031a5 	add.w	$r5,$r13,$r12
1c002798:	00150186 	move	$r6,$r12
1c00279c:	58007d92 	beq	$r12,$r18,124(0x7c) # 1c002818 <shell15+0x6a8>
1c0027a0:	280004a8 	ld.b	$r8,$r5,1(0x1)
1c0027a4:	5c00751a 	bne	$r8,$r26,116(0x74) # 1c002818 <shell15+0x6a8>
1c0027a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0027ac:	001031b3 	add.w	$r19,$r13,$r12
1c0027b0:	28000667 	ld.b	$r7,$r19,1(0x1)
1c0027b4:	5c0064fa 	bne	$r7,$r26,100(0x64) # 1c002818 <shell15+0x6a8>
1c0027b8:	028008cc 	addi.w	$r12,$r6,2(0x2)
1c0027bc:	001031b4 	add.w	$r20,$r13,$r12
1c0027c0:	28000690 	ld.b	$r16,$r20,1(0x1)
1c0027c4:	5c00561a 	bne	$r16,$r26,84(0x54) # 1c002818 <shell15+0x6a8>
1c0027c8:	02800ccc 	addi.w	$r12,$r6,3(0x3)
1c0027cc:	001031a4 	add.w	$r4,$r13,$r12
1c0027d0:	28000491 	ld.b	$r17,$r4,1(0x1)
1c0027d4:	5c00463a 	bne	$r17,$r26,68(0x44) # 1c002818 <shell15+0x6a8>
1c0027d8:	028010cc 	addi.w	$r12,$r6,4(0x4)
1c0027dc:	001031af 	add.w	$r15,$r13,$r12
1c0027e0:	280005f9 	ld.b	$r25,$r15,1(0x1)
1c0027e4:	5c00373a 	bne	$r25,$r26,52(0x34) # 1c002818 <shell15+0x6a8>
1c0027e8:	028014cc 	addi.w	$r12,$r6,5(0x5)
1c0027ec:	001031a1 	add.w	$r1,$r13,$r12
1c0027f0:	2800042e 	ld.b	$r14,$r1,1(0x1)
1c0027f4:	5c0025da 	bne	$r14,$r26,36(0x24) # 1c002818 <shell15+0x6a8>
1c0027f8:	028018cc 	addi.w	$r12,$r6,6(0x6)
1c0027fc:	001031a5 	add.w	$r5,$r13,$r12
1c002800:	280004a8 	ld.b	$r8,$r5,1(0x1)
1c002804:	5c00151a 	bne	$r8,$r26,20(0x14) # 1c002818 <shell15+0x6a8>
1c002808:	02801ccc 	addi.w	$r12,$r6,7(0x7)
1c00280c:	001031a6 	add.w	$r6,$r13,$r12
1c002810:	280004d3 	ld.b	$r19,$r6,1(0x1)
1c002814:	5bff7e7a 	beq	$r19,$r26,-132(0x3ff7c) # 1c002790 <shell15+0x620>
1c002818:	28803072 	ld.w	$r18,$r3,12(0xc)
1c00281c:	28811067 	ld.w	$r7,$r3,68(0x44)
1c002820:	0015024e 	move	$r14,$r18
1c002824:	67fe4e47 	bge	$r18,$r7,-436(0x3fe4c) # 1c002670 <shell15+0x500>
1c002828:	2881706d 	ld.w	$r13,$r3,92(0x5c)
1c00282c:	28818070 	ld.w	$r16,$r3,96(0x60)
1c002830:	001037f4 	add.w	$r20,$r31,$r13
1c002834:	00104284 	add.w	$r4,$r20,$r16
1c002838:	28000091 	ld.b	$r17,$r4,0
1c00283c:	001503ed 	move	$r13,$r31
1c002840:	5ffe323a 	bne	$r17,$r26,-464(0x3fe30) # 1c002670 <shell15+0x500>
1c002844:	00144819 	nor	$r25,$r0,$r18
1c002848:	00101f21 	add.w	$r1,$r25,$r7
1c00284c:	03401c25 	andi	$r5,$r1,0x7
1c002850:	5800c0a0 	beq	$r5,$r0,192(0xc0) # 1c002910 <shell15+0x7a0>
1c002854:	028057ed 	addi.w	$r13,$r31,21(0x15)
1c002858:	280055a8 	ld.b	$r8,$r13,21(0x15)
1c00285c:	00104952 	add.w	$r18,$r10,$r18
1c002860:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c002864:	5c013d1a 	bne	$r8,$r26,316(0x13c) # 1c0029a0 <shell15+0x830>
1c002868:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00286c:	5800a4a6 	beq	$r5,$r6,164(0xa4) # 1c002910 <shell15+0x7a0>
1c002870:	02800813 	addi.w	$r19,$r0,2(0x2)
1c002874:	580088b3 	beq	$r5,$r19,136(0x88) # 1c0028fc <shell15+0x78c>
1c002878:	02800c12 	addi.w	$r18,$r0,3(0x3)
1c00287c:	58006cb2 	beq	$r5,$r18,108(0x6c) # 1c0028e8 <shell15+0x778>
1c002880:	02801007 	addi.w	$r7,$r0,4(0x4)
1c002884:	580050a7 	beq	$r5,$r7,80(0x50) # 1c0028d4 <shell15+0x764>
1c002888:	02801414 	addi.w	$r20,$r0,5(0x5)
1c00288c:	580034b4 	beq	$r5,$r20,52(0x34) # 1c0028c0 <shell15+0x750>
1c002890:	02801810 	addi.w	$r16,$r0,6(0x6)
1c002894:	580018b0 	beq	$r5,$r16,24(0x18) # 1c0028ac <shell15+0x73c>
1c002898:	2800a9a4 	ld.b	$r4,$r13,42(0x2a)
1c00289c:	00103952 	add.w	$r18,$r10,$r14
1c0028a0:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c0028a4:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c0028a8:	5c00f89a 	bne	$r4,$r26,248(0xf8) # 1c0029a0 <shell15+0x830>
1c0028ac:	2800a9b1 	ld.b	$r17,$r13,42(0x2a)
1c0028b0:	00103952 	add.w	$r18,$r10,$r14
1c0028b4:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c0028b8:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c0028bc:	5c00e63a 	bne	$r17,$r26,228(0xe4) # 1c0029a0 <shell15+0x830>
1c0028c0:	2800a9af 	ld.b	$r15,$r13,42(0x2a)
1c0028c4:	00103952 	add.w	$r18,$r10,$r14
1c0028c8:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c0028cc:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c0028d0:	5c00d1fa 	bne	$r15,$r26,208(0xd0) # 1c0029a0 <shell15+0x830>
1c0028d4:	2800a9b9 	ld.b	$r25,$r13,42(0x2a)
1c0028d8:	00103952 	add.w	$r18,$r10,$r14
1c0028dc:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c0028e0:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c0028e4:	5c00bf3a 	bne	$r25,$r26,188(0xbc) # 1c0029a0 <shell15+0x830>
1c0028e8:	2800a9a1 	ld.b	$r1,$r13,42(0x2a)
1c0028ec:	00103952 	add.w	$r18,$r10,$r14
1c0028f0:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c0028f4:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c0028f8:	5c00a83a 	bne	$r1,$r26,168(0xa8) # 1c0029a0 <shell15+0x830>
1c0028fc:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c002900:	280055a5 	ld.b	$r5,$r13,21(0x15)
1c002904:	00103952 	add.w	$r18,$r10,$r14
1c002908:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c00290c:	5c0094ba 	bne	$r5,$r26,148(0x94) # 1c0029a0 <shell15+0x830>
1c002910:	28811066 	ld.w	$r6,$r3,68(0x44)
1c002914:	028005c8 	addi.w	$r8,$r14,1(0x1)
1c002918:	00103952 	add.w	$r18,$r10,$r14
1c00291c:	028009c7 	addi.w	$r7,$r14,2(0x2)
1c002920:	02800dc4 	addi.w	$r4,$r14,3(0x3)
1c002924:	64007d06 	bge	$r8,$r6,124(0x7c) # 1c0029a0 <shell15+0x830>
1c002928:	2800a9af 	ld.b	$r15,$r13,42(0x2a)
1c00292c:	028011d4 	addi.w	$r20,$r14,4(0x4)
1c002930:	028015d3 	addi.w	$r19,$r14,5(0x5)
1c002934:	028019d1 	addi.w	$r17,$r14,6(0x6)
1c002938:	02801dd0 	addi.w	$r16,$r14,7(0x7)
1c00293c:	028021ce 	addi.w	$r14,$r14,8(0x8)
1c002940:	5c0061fa 	bne	$r15,$r26,96(0x60) # 1c0029a0 <shell15+0x830>
1c002944:	2800fdb9 	ld.b	$r25,$r13,63(0x3f)
1c002948:	00102152 	add.w	$r18,$r10,$r8
1c00294c:	5c00573a 	bne	$r25,$r26,84(0x54) # 1c0029a0 <shell15+0x830>
1c002950:	280151a1 	ld.b	$r1,$r13,84(0x54)
1c002954:	00101d52 	add.w	$r18,$r10,$r7
1c002958:	5c00483a 	bne	$r1,$r26,72(0x48) # 1c0029a0 <shell15+0x830>
1c00295c:	2801a5a5 	ld.b	$r5,$r13,105(0x69)
1c002960:	00101152 	add.w	$r18,$r10,$r4
1c002964:	5c003cba 	bne	$r5,$r26,60(0x3c) # 1c0029a0 <shell15+0x830>
1c002968:	2801f9a8 	ld.b	$r8,$r13,126(0x7e)
1c00296c:	00105152 	add.w	$r18,$r10,$r20
1c002970:	5c00311a 	bne	$r8,$r26,48(0x30) # 1c0029a0 <shell15+0x830>
1c002974:	28024da7 	ld.b	$r7,$r13,147(0x93)
1c002978:	00104d52 	add.w	$r18,$r10,$r19
1c00297c:	5c0024fa 	bne	$r7,$r26,36(0x24) # 1c0029a0 <shell15+0x830>
1c002980:	0282a1ad 	addi.w	$r13,$r13,168(0xa8)
1c002984:	280001a4 	ld.b	$r4,$r13,0
1c002988:	00104552 	add.w	$r18,$r10,$r17
1c00298c:	5c00149a 	bne	$r4,$r26,20(0x14) # 1c0029a0 <shell15+0x830>
1c002990:	280055a6 	ld.b	$r6,$r13,21(0x15)
1c002994:	00104152 	add.w	$r18,$r10,$r16
1c002998:	5bff78da 	beq	$r6,$r26,-136(0x3ff78) # 1c002910 <shell15+0x7a0>
1c00299c:	03400000 	andi	$r0,$r0,0x0
1c0029a0:	0040858f 	slli.w	$r15,$r12,0x1
1c0029a4:	001149f0 	sub.w	$r16,$r15,$r18
1c0029a8:	67fcc810 	bge	$r0,$r16,-824(0x3fcc8) # 1c002670 <shell15+0x500>
1c0029ac:	02bff414 	addi.w	$r20,$r0,-3(0xffd)
1c0029b0:	001c5193 	mul.w	$r19,$r12,$r20
1c0029b4:	00408651 	slli.w	$r17,$r18,0x1
1c0029b8:	00104e28 	add.w	$r8,$r17,$r19
1c0029bc:	67fcb408 	bge	$r0,$r8,-844(0x3fcb4) # 1c002670 <shell15+0x500>
1c0029c0:	00106181 	add.w	$r1,$r12,$r24
1c0029c4:	02800427 	addi.w	$r7,$r1,1(0x1)
1c0029c8:	600e3cf7 	blt	$r7,$r23,3644(0xe3c) # 1c003804 <shell15+0x1694>
1c0029cc:	283fabe5 	ld.b	$r5,$r31,-22(0xfea)
1c0029d0:	5bfca0ba 	beq	$r5,$r26,-864(0x3fca0) # 1c002670 <shell15+0x500>
1c0029d4:	2880206d 	ld.w	$r13,$r3,8(0x8)
1c0029d8:	001049a4 	add.w	$r4,$r13,$r18
1c0029dc:	001c2c86 	mul.w	$r6,$r4,$r11
1c0029e0:	2980a064 	st.w	$r4,$r3,40(0x28)
1c0029e4:	00101b72 	add.w	$r18,$r27,$r6
1c0029e8:	0010624f 	add.w	$r15,$r18,$r24
1c0029ec:	280001f4 	ld.b	$r20,$r15,0
1c0029f0:	5bfc829a 	beq	$r20,$r26,-896(0x3fc80) # 1c002670 <shell15+0x500>
1c0029f4:	28813071 	ld.w	$r17,$r3,76(0x4c)
1c0029f8:	00105cd3 	add.w	$r19,$r6,$r23
1c0029fc:	00104f6d 	add.w	$r13,$r27,$r19
1c002a00:	0010062e 	add.w	$r14,$r17,$r1
1c002a04:	001019d9 	add.w	$r25,$r14,$r6
1c002a08:	02bfac05 	addi.w	$r5,$r0,-21(0xfeb)
1c002a0c:	001c1486 	mul.w	$r6,$r4,$r5
1c002a10:	00113724 	sub.w	$r4,$r25,$r13
1c002a14:	03401c92 	andi	$r18,$r4,0x7
1c002a18:	5800fa40 	beq	$r18,$r0,248(0xf8) # 1c002b10 <shell15+0x9a0>
1c002a1c:	001059af 	add.w	$r15,$r13,$r22
1c002a20:	001019f4 	add.w	$r20,$r15,$r6
1c002a24:	28000693 	ld.b	$r19,$r20,1(0x1)
1c002a28:	5bfc4a7a 	beq	$r19,$r26,-952(0x3fc48) # 1c002670 <shell15+0x500>
1c002a2c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002a30:	280001b1 	ld.b	$r17,$r13,0
1c002a34:	5bfc3e3a 	beq	$r17,$r26,-964(0x3fc3c) # 1c002670 <shell15+0x500>
1c002a38:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002a3c:	5800d64e 	beq	$r18,$r14,212(0xd4) # 1c002b10 <shell15+0x9a0>
1c002a40:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002a44:	5800b245 	beq	$r18,$r5,176(0xb0) # 1c002af4 <shell15+0x984>
1c002a48:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c002a4c:	58008e44 	beq	$r18,$r4,140(0x8c) # 1c002ad8 <shell15+0x968>
1c002a50:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c002a54:	58006a4f 	beq	$r18,$r15,104(0x68) # 1c002abc <shell15+0x94c>
1c002a58:	02801414 	addi.w	$r20,$r0,5(0x5)
1c002a5c:	58004654 	beq	$r18,$r20,68(0x44) # 1c002aa0 <shell15+0x930>
1c002a60:	02801813 	addi.w	$r19,$r0,6(0x6)
1c002a64:	58002253 	beq	$r18,$r19,32(0x20) # 1c002a84 <shell15+0x914>
1c002a68:	001059b2 	add.w	$r18,$r13,$r22
1c002a6c:	00101a51 	add.w	$r17,$r18,$r6
1c002a70:	2800062e 	ld.b	$r14,$r17,1(0x1)
1c002a74:	5bfbfdda 	beq	$r14,$r26,-1028(0x3fbfc) # 1c002670 <shell15+0x500>
1c002a78:	280005a5 	ld.b	$r5,$r13,1(0x1)
1c002a7c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002a80:	5bfbf0ba 	beq	$r5,$r26,-1040(0x3fbf0) # 1c002670 <shell15+0x500>
1c002a84:	001059a4 	add.w	$r4,$r13,$r22
1c002a88:	0010188f 	add.w	$r15,$r4,$r6
1c002a8c:	280005f4 	ld.b	$r20,$r15,1(0x1)
1c002a90:	5bfbe29a 	beq	$r20,$r26,-1056(0x3fbe0) # 1c002670 <shell15+0x500>
1c002a94:	280005b3 	ld.b	$r19,$r13,1(0x1)
1c002a98:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002a9c:	5bfbd67a 	beq	$r19,$r26,-1068(0x3fbd4) # 1c002670 <shell15+0x500>
1c002aa0:	001059b2 	add.w	$r18,$r13,$r22
1c002aa4:	00101a51 	add.w	$r17,$r18,$r6
1c002aa8:	2800062e 	ld.b	$r14,$r17,1(0x1)
1c002aac:	5bfbc5da 	beq	$r14,$r26,-1084(0x3fbc4) # 1c002670 <shell15+0x500>
1c002ab0:	280005a5 	ld.b	$r5,$r13,1(0x1)
1c002ab4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002ab8:	5bfbb8ba 	beq	$r5,$r26,-1096(0x3fbb8) # 1c002670 <shell15+0x500>
1c002abc:	001059a4 	add.w	$r4,$r13,$r22
1c002ac0:	0010188f 	add.w	$r15,$r4,$r6
1c002ac4:	280005f4 	ld.b	$r20,$r15,1(0x1)
1c002ac8:	5bfbaa9a 	beq	$r20,$r26,-1112(0x3fba8) # 1c002670 <shell15+0x500>
1c002acc:	280005b3 	ld.b	$r19,$r13,1(0x1)
1c002ad0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002ad4:	5bfb9e7a 	beq	$r19,$r26,-1124(0x3fb9c) # 1c002670 <shell15+0x500>
1c002ad8:	001059b2 	add.w	$r18,$r13,$r22
1c002adc:	00101a51 	add.w	$r17,$r18,$r6
1c002ae0:	2800062e 	ld.b	$r14,$r17,1(0x1)
1c002ae4:	5bfb8dda 	beq	$r14,$r26,-1140(0x3fb8c) # 1c002670 <shell15+0x500>
1c002ae8:	280005a5 	ld.b	$r5,$r13,1(0x1)
1c002aec:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002af0:	5bfb80ba 	beq	$r5,$r26,-1152(0x3fb80) # 1c002670 <shell15+0x500>
1c002af4:	001059a4 	add.w	$r4,$r13,$r22
1c002af8:	0010188f 	add.w	$r15,$r4,$r6
1c002afc:	280005f4 	ld.b	$r20,$r15,1(0x1)
1c002b00:	5bfb729a 	beq	$r20,$r26,-1168(0x3fb70) # 1c002670 <shell15+0x500>
1c002b04:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002b08:	280001b3 	ld.b	$r19,$r13,0
1c002b0c:	5bfb667a 	beq	$r19,$r26,-1180(0x3fb64) # 1c002670 <shell15+0x500>
1c002b10:	5800e9b9 	beq	$r13,$r25,232(0xe8) # 1c002bf8 <shell15+0xa88>
1c002b14:	001059af 	add.w	$r15,$r13,$r22
1c002b18:	001019f4 	add.w	$r20,$r15,$r6
1c002b1c:	28000693 	ld.b	$r19,$r20,1(0x1)
1c002b20:	5bfb527a 	beq	$r19,$r26,-1200(0x3fb50) # 1c002670 <shell15+0x500>
1c002b24:	280005a4 	ld.b	$r4,$r13,1(0x1)
1c002b28:	028005b2 	addi.w	$r18,$r13,1(0x1)
1c002b2c:	5bfb449a 	beq	$r4,$r26,-1212(0x3fb44) # 1c002670 <shell15+0x500>
1c002b30:	00105a51 	add.w	$r17,$r18,$r22
1c002b34:	00101a2e 	add.w	$r14,$r17,$r6
1c002b38:	280005c5 	ld.b	$r5,$r14,1(0x1)
1c002b3c:	5bfb34ba 	beq	$r5,$r26,-1228(0x3fb34) # 1c002670 <shell15+0x500>
1c002b40:	280009af 	ld.b	$r15,$r13,2(0x2)
1c002b44:	028009b4 	addi.w	$r20,$r13,2(0x2)
1c002b48:	5bfb29fa 	beq	$r15,$r26,-1240(0x3fb28) # 1c002670 <shell15+0x500>
1c002b4c:	00105a93 	add.w	$r19,$r20,$r22
1c002b50:	00101a64 	add.w	$r4,$r19,$r6
1c002b54:	28000491 	ld.b	$r17,$r4,1(0x1)
1c002b58:	5bfb1a3a 	beq	$r17,$r26,-1256(0x3fb18) # 1c002670 <shell15+0x500>
1c002b5c:	28000dae 	ld.b	$r14,$r13,3(0x3)
1c002b60:	02800da5 	addi.w	$r5,$r13,3(0x3)
1c002b64:	5bfb0dda 	beq	$r14,$r26,-1268(0x3fb0c) # 1c002670 <shell15+0x500>
1c002b68:	001058af 	add.w	$r15,$r5,$r22
1c002b6c:	001019f4 	add.w	$r20,$r15,$r6
1c002b70:	28000693 	ld.b	$r19,$r20,1(0x1)
1c002b74:	5bfafe7a 	beq	$r19,$r26,-1284(0x3fafc) # 1c002670 <shell15+0x500>
1c002b78:	280011a4 	ld.b	$r4,$r13,4(0x4)
1c002b7c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c002b80:	5bfaf09a 	beq	$r4,$r26,-1296(0x3faf0) # 1c002670 <shell15+0x500>
1c002b84:	001059b1 	add.w	$r17,$r13,$r22
1c002b88:	00101a2e 	add.w	$r14,$r17,$r6
1c002b8c:	280005c5 	ld.b	$r5,$r14,1(0x1)
1c002b90:	5bfae0ba 	beq	$r5,$r26,-1312(0x3fae0) # 1c002670 <shell15+0x500>
1c002b94:	2800124f 	ld.b	$r15,$r18,4(0x4)
1c002b98:	02801254 	addi.w	$r20,$r18,4(0x4)
1c002b9c:	5bfad5fa 	beq	$r15,$r26,-1324(0x3fad4) # 1c002670 <shell15+0x500>
1c002ba0:	00105a93 	add.w	$r19,$r20,$r22
1c002ba4:	00101a64 	add.w	$r4,$r19,$r6
1c002ba8:	2800048d 	ld.b	$r13,$r4,1(0x1)
1c002bac:	5bfac5ba 	beq	$r13,$r26,-1340(0x3fac4) # 1c002670 <shell15+0x500>
1c002bb0:	28001651 	ld.b	$r17,$r18,5(0x5)
1c002bb4:	0280164e 	addi.w	$r14,$r18,5(0x5)
1c002bb8:	5bfaba3a 	beq	$r17,$r26,-1352(0x3fab8) # 1c002670 <shell15+0x500>
1c002bbc:	001059c5 	add.w	$r5,$r14,$r22
1c002bc0:	001018af 	add.w	$r15,$r5,$r6
1c002bc4:	280005f4 	ld.b	$r20,$r15,1(0x1)
1c002bc8:	5bfaaa9a 	beq	$r20,$r26,-1368(0x3faa8) # 1c002670 <shell15+0x500>
1c002bcc:	28001a53 	ld.b	$r19,$r18,6(0x6)
1c002bd0:	02801a44 	addi.w	$r4,$r18,6(0x6)
1c002bd4:	5bfa9e7a 	beq	$r19,$r26,-1380(0x3fa9c) # 1c002670 <shell15+0x500>
1c002bd8:	0010588d 	add.w	$r13,$r4,$r22
1c002bdc:	001019b1 	add.w	$r17,$r13,$r6
1c002be0:	2800062e 	ld.b	$r14,$r17,1(0x1)
1c002be4:	5bfa8dda 	beq	$r14,$r26,-1396(0x3fa8c) # 1c002670 <shell15+0x500>
1c002be8:	28001e45 	ld.b	$r5,$r18,7(0x7)
1c002bec:	02801e4d 	addi.w	$r13,$r18,7(0x7)
1c002bf0:	5bfa80ba 	beq	$r5,$r26,-1408(0x3fa80) # 1c002670 <shell15+0x500>
1c002bf4:	5fff21b9 	bne	$r13,$r25,-224(0x3ff20) # 1c002b14 <shell15+0x9a4>
1c002bf8:	2880206d 	ld.w	$r13,$r3,8(0x8)
1c002bfc:	2880a079 	ld.w	$r25,$r3,40(0x28)
1c002c00:	640221b9 	bge	$r13,$r25,544(0x220) # 1c002e20 <shell15+0xcb0>
1c002c04:	28810066 	ld.w	$r6,$r3,64(0x40)
1c002c08:	00101cd2 	add.w	$r18,$r6,$r7
1c002c0c:	28000251 	ld.b	$r17,$r18,0
1c002c10:	5bfa623a 	beq	$r17,$r26,-1440(0x3fa60) # 1c002670 <shell15+0x500>
1c002c14:	001c2f2e 	mul.w	$r14,$r25,$r11
1c002c18:	28819065 	ld.w	$r5,$r3,100(0x64)
1c002c1c:	00101f6f 	add.w	$r15,$r27,$r7
1c002c20:	1479e794 	lu12i.w	$r20,249660(0x3cf3c)
1c002c24:	00101ca4 	add.w	$r4,$r5,$r7
1c002c28:	0010136d 	add.w	$r13,$r27,$r4
1c002c2c:	03bcf693 	ori	$r19,$r20,0xf3d
1c002c30:	001039f9 	add.w	$r25,$r15,$r14
1c002c34:	00113726 	sub.w	$r6,$r25,$r13
1c002c38:	001c4cd2 	mul.w	$r18,$r6,$r19
1c002c3c:	03401e51 	andi	$r17,$r18,0x7
1c002c40:	5800fa20 	beq	$r17,$r0,248(0xf8) # 1c002d38 <shell15+0xbc8>
1c002c44:	00111dae 	sub.w	$r14,$r13,$r7
1c002c48:	00105dc5 	add.w	$r5,$r14,$r23
1c002c4c:	280000a4 	ld.b	$r4,$r5,0
1c002c50:	5bfa209a 	beq	$r4,$r26,-1504(0x3fa20) # 1c002670 <shell15+0x500>
1c002c54:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c002c58:	283fadaf 	ld.b	$r15,$r13,-21(0xfeb)
1c002c5c:	5bfa15fa 	beq	$r15,$r26,-1516(0x3fa14) # 1c002670 <shell15+0x500>
1c002c60:	02800414 	addi.w	$r20,$r0,1(0x1)
1c002c64:	5800d634 	beq	$r17,$r20,212(0xd4) # 1c002d38 <shell15+0xbc8>
1c002c68:	02800813 	addi.w	$r19,$r0,2(0x2)
1c002c6c:	5800b233 	beq	$r17,$r19,176(0xb0) # 1c002d1c <shell15+0xbac>
1c002c70:	02800c06 	addi.w	$r6,$r0,3(0x3)
1c002c74:	58008e26 	beq	$r17,$r6,140(0x8c) # 1c002d00 <shell15+0xb90>
1c002c78:	02801012 	addi.w	$r18,$r0,4(0x4)
1c002c7c:	58006a32 	beq	$r17,$r18,104(0x68) # 1c002ce4 <shell15+0xb74>
1c002c80:	0280140e 	addi.w	$r14,$r0,5(0x5)
1c002c84:	5800462e 	beq	$r17,$r14,68(0x44) # 1c002cc8 <shell15+0xb58>
1c002c88:	02801805 	addi.w	$r5,$r0,6(0x6)
1c002c8c:	58002225 	beq	$r17,$r5,32(0x20) # 1c002cac <shell15+0xb3c>
1c002c90:	00111db1 	sub.w	$r17,$r13,$r7
1c002c94:	00105e24 	add.w	$r4,$r17,$r23
1c002c98:	2800008f 	ld.b	$r15,$r4,0
1c002c9c:	5bf9d5fa 	beq	$r15,$r26,-1580(0x3f9d4) # 1c002670 <shell15+0x500>
1c002ca0:	280001b4 	ld.b	$r20,$r13,0
1c002ca4:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c002ca8:	5bf9ca9a 	beq	$r20,$r26,-1592(0x3f9c8) # 1c002670 <shell15+0x500>
1c002cac:	00111db3 	sub.w	$r19,$r13,$r7
1c002cb0:	00105e66 	add.w	$r6,$r19,$r23
1c002cb4:	280000d2 	ld.b	$r18,$r6,0
1c002cb8:	5bf9ba5a 	beq	$r18,$r26,-1608(0x3f9b8) # 1c002670 <shell15+0x500>
1c002cbc:	280001ae 	ld.b	$r14,$r13,0
1c002cc0:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c002cc4:	5bf9adda 	beq	$r14,$r26,-1620(0x3f9ac) # 1c002670 <shell15+0x500>
1c002cc8:	00111da5 	sub.w	$r5,$r13,$r7
1c002ccc:	00105cb1 	add.w	$r17,$r5,$r23
1c002cd0:	28000224 	ld.b	$r4,$r17,0
1c002cd4:	5bf99c9a 	beq	$r4,$r26,-1636(0x3f99c) # 1c002670 <shell15+0x500>
1c002cd8:	280001af 	ld.b	$r15,$r13,0
1c002cdc:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c002ce0:	5bf991fa 	beq	$r15,$r26,-1648(0x3f990) # 1c002670 <shell15+0x500>
1c002ce4:	00111db4 	sub.w	$r20,$r13,$r7
1c002ce8:	00105e93 	add.w	$r19,$r20,$r23
1c002cec:	28000266 	ld.b	$r6,$r19,0
1c002cf0:	5bf980da 	beq	$r6,$r26,-1664(0x3f980) # 1c002670 <shell15+0x500>
1c002cf4:	280001b2 	ld.b	$r18,$r13,0
1c002cf8:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c002cfc:	5bf9765a 	beq	$r18,$r26,-1676(0x3f974) # 1c002670 <shell15+0x500>
1c002d00:	00111dae 	sub.w	$r14,$r13,$r7
1c002d04:	00105dc5 	add.w	$r5,$r14,$r23
1c002d08:	280000b1 	ld.b	$r17,$r5,0
1c002d0c:	5bf9663a 	beq	$r17,$r26,-1692(0x3f964) # 1c002670 <shell15+0x500>
1c002d10:	280001a4 	ld.b	$r4,$r13,0
1c002d14:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c002d18:	5bf9589a 	beq	$r4,$r26,-1704(0x3f958) # 1c002670 <shell15+0x500>
1c002d1c:	00111daf 	sub.w	$r15,$r13,$r7
1c002d20:	00105df4 	add.w	$r20,$r15,$r23
1c002d24:	28000293 	ld.b	$r19,$r20,0
1c002d28:	5bf94a7a 	beq	$r19,$r26,-1720(0x3f948) # 1c002670 <shell15+0x500>
1c002d2c:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c002d30:	283fada6 	ld.b	$r6,$r13,-21(0xfeb)
1c002d34:	5bf93cda 	beq	$r6,$r26,-1732(0x3f93c) # 1c002670 <shell15+0x500>
1c002d38:	5800e9b9 	beq	$r13,$r25,232(0xe8) # 1c002e20 <shell15+0xcb0>
1c002d3c:	00111db1 	sub.w	$r17,$r13,$r7
1c002d40:	00105e2e 	add.w	$r14,$r17,$r23
1c002d44:	280001cf 	ld.b	$r15,$r14,0
1c002d48:	5bf929fa 	beq	$r15,$r26,-1752(0x3f928) # 1c002670 <shell15+0x500>
1c002d4c:	028055a5 	addi.w	$r5,$r13,21(0x15)
1c002d50:	283facb4 	ld.b	$r20,$r5,-21(0xfeb)
1c002d54:	5bf91e9a 	beq	$r20,$r26,-1764(0x3f91c) # 1c002670 <shell15+0x500>
1c002d58:	00111cb3 	sub.w	$r19,$r5,$r7
1c002d5c:	00105e66 	add.w	$r6,$r19,$r23
1c002d60:	280000d2 	ld.b	$r18,$r6,0
1c002d64:	5bf90e5a 	beq	$r18,$r26,-1780(0x3f90c) # 1c002670 <shell15+0x500>
1c002d68:	280055b1 	ld.b	$r17,$r13,21(0x15)
1c002d6c:	0280a9a4 	addi.w	$r4,$r13,42(0x2a)
1c002d70:	5bf9023a 	beq	$r17,$r26,-1792(0x3f900) # 1c002670 <shell15+0x500>
1c002d74:	00111c8e 	sub.w	$r14,$r4,$r7
1c002d78:	00105dcf 	add.w	$r15,$r14,$r23
1c002d7c:	280001f4 	ld.b	$r20,$r15,0
1c002d80:	5bf8f29a 	beq	$r20,$r26,-1808(0x3f8f0) # 1c002670 <shell15+0x500>
1c002d84:	2800a9a6 	ld.b	$r6,$r13,42(0x2a)
1c002d88:	0280fdb3 	addi.w	$r19,$r13,63(0x3f)
1c002d8c:	5bf8e4da 	beq	$r6,$r26,-1820(0x3f8e4) # 1c002670 <shell15+0x500>
1c002d90:	00111e72 	sub.w	$r18,$r19,$r7
1c002d94:	00105e44 	add.w	$r4,$r18,$r23
1c002d98:	28000091 	ld.b	$r17,$r4,0
1c002d9c:	5bf8d63a 	beq	$r17,$r26,-1836(0x3f8d4) # 1c002670 <shell15+0x500>
1c002da0:	2800fdae 	ld.b	$r14,$r13,63(0x3f)
1c002da4:	028151ad 	addi.w	$r13,$r13,84(0x54)
1c002da8:	5bf8c9da 	beq	$r14,$r26,-1848(0x3f8c8) # 1c002670 <shell15+0x500>
1c002dac:	00111daf 	sub.w	$r15,$r13,$r7
1c002db0:	00105df4 	add.w	$r20,$r15,$r23
1c002db4:	28000293 	ld.b	$r19,$r20,0
1c002db8:	5bf8ba7a 	beq	$r19,$r26,-1864(0x3f8b8) # 1c002670 <shell15+0x500>
1c002dbc:	2800fcb2 	ld.b	$r18,$r5,63(0x3f)
1c002dc0:	028150a6 	addi.w	$r6,$r5,84(0x54)
1c002dc4:	5bf8ae5a 	beq	$r18,$r26,-1876(0x3f8ac) # 1c002670 <shell15+0x500>
1c002dc8:	00111cc4 	sub.w	$r4,$r6,$r7
1c002dcc:	00105c91 	add.w	$r17,$r4,$r23
1c002dd0:	2800022e 	ld.b	$r14,$r17,0
1c002dd4:	5bf89dda 	beq	$r14,$r26,-1892(0x3f89c) # 1c002670 <shell15+0x500>
1c002dd8:	280150af 	ld.b	$r15,$r5,84(0x54)
1c002ddc:	0281a4ad 	addi.w	$r13,$r5,105(0x69)
1c002de0:	5bf891fa 	beq	$r15,$r26,-1904(0x3f890) # 1c002670 <shell15+0x500>
1c002de4:	00111db4 	sub.w	$r20,$r13,$r7
1c002de8:	00105e93 	add.w	$r19,$r20,$r23
1c002dec:	28000266 	ld.b	$r6,$r19,0
1c002df0:	5bf880da 	beq	$r6,$r26,-1920(0x3f880) # 1c002670 <shell15+0x500>
1c002df4:	2801a4a4 	ld.b	$r4,$r5,105(0x69)
1c002df8:	0281f8b2 	addi.w	$r18,$r5,126(0x7e)
1c002dfc:	5bf8749a 	beq	$r4,$r26,-1932(0x3f874) # 1c002670 <shell15+0x500>
1c002e00:	00111e51 	sub.w	$r17,$r18,$r7
1c002e04:	00105e2e 	add.w	$r14,$r17,$r23
1c002e08:	280001cd 	ld.b	$r13,$r14,0
1c002e0c:	5bf865ba 	beq	$r13,$r26,-1948(0x3f864) # 1c002670 <shell15+0x500>
1c002e10:	02824cad 	addi.w	$r13,$r5,147(0x93)
1c002e14:	283fada5 	ld.b	$r5,$r13,-21(0xfeb)
1c002e18:	5bf858ba 	beq	$r5,$r26,-1960(0x3f858) # 1c002670 <shell15+0x500>
1c002e1c:	5fff21b9 	bne	$r13,$r25,-224(0x3ff20) # 1c002d3c <shell15+0xbcc>
1c002e20:	28810072 	ld.w	$r18,$r3,64(0x40)
1c002e24:	0010620d 	add.w	$r13,$r16,$r24
1c002e28:	028005b9 	addi.w	$r25,$r13,1(0x1)
1c002e2c:	0010664e 	add.w	$r14,$r18,$r25
1c002e30:	280001c5 	ld.b	$r5,$r14,0
1c002e34:	29816065 	st.w	$r5,$r3,88(0x58)
1c002e38:	5ff838ba 	bne	$r5,$r26,-1992(0x3f838) # 1c002670 <shell15+0x500>
1c002e3c:	28802071 	ld.w	$r17,$r3,8(0x8)
1c002e40:	0010220d 	add.w	$r13,$r16,$r8
1c002e44:	001045a4 	add.w	$r4,$r13,$r17
1c002e48:	001c2c8f 	mul.w	$r15,$r4,$r11
1c002e4c:	00103f74 	add.w	$r20,$r27,$r15
1c002e50:	00106693 	add.w	$r19,$r20,$r25
1c002e54:	28000266 	ld.b	$r6,$r19,0
1c002e58:	5809bcda 	beq	$r6,$r26,2492(0x9bc) # 1c003814 <shell15+0x16a4>
1c002e5c:	0280b812 	addi.w	$r18,$r0,46(0x2e)
1c002e60:	5ff810d2 	bne	$r6,$r18,-2032(0x3f810) # 1c002670 <shell15+0x500>
1c002e64:	2880206e 	ld.w	$r14,$r3,8(0x8)
1c002e68:	004085b1 	slli.w	$r17,$r13,0x1
1c002e6c:	00103a25 	add.w	$r5,$r17,$r14
1c002e70:	001c2ca4 	mul.w	$r4,$r5,$r11
1c002e74:	0010136f 	add.w	$r15,$r27,$r4
1c002e78:	001065f9 	add.w	$r25,$r15,$r25
1c002e7c:	28000334 	ld.b	$r20,$r25,0
1c002e80:	5ff7f29a 	bne	$r20,$r26,-2064(0x3f7f0) # 1c002670 <shell15+0x500>
1c002e84:	02800c13 	addi.w	$r19,$r0,3(0x3)
1c002e88:	02800806 	addi.w	$r6,$r0,2(0x2)
1c002e8c:	29820073 	st.w	$r19,$r3,128(0x80)
1c002e90:	298013b0 	st.w	$r16,$r29,4(0x4)
1c002e94:	298023ad 	st.w	$r13,$r29,8(0x8)
1c002e98:	298043b0 	st.w	$r16,$r29,16(0x10)
1c002e9c:	298053ad 	st.w	$r13,$r29,20(0x14)
1c002ea0:	298073b0 	st.w	$r16,$r29,28(0x1c)
1c002ea4:	298083ad 	st.w	$r13,$r29,32(0x20)
1c002ea8:	2980a3b0 	st.w	$r16,$r29,40(0x28)
1c002eac:	2980b3ad 	st.w	$r13,$r29,44(0x2c)
1c002eb0:	2980d3b0 	st.w	$r16,$r29,52(0x34)
1c002eb4:	2980e3ad 	st.w	$r13,$r29,56(0x38)
1c002eb8:	2980638d 	st.w	$r13,$r28,24(0x18)
1c002ebc:	2980738d 	st.w	$r13,$r28,28(0x1c)
1c002ec0:	2980838d 	st.w	$r13,$r28,32(0x20)
1c002ec4:	0280f00d 	addi.w	$r13,$r0,60(0x3c)
1c002ec8:	2980c391 	st.w	$r17,$r28,48(0x30)
1c002ecc:	2980d391 	st.w	$r17,$r28,52(0x34)
1c002ed0:	2980e391 	st.w	$r17,$r28,56(0x38)
1c002ed4:	001c34d1 	mul.w	$r17,$r6,$r13
1c002ed8:	00408612 	slli.w	$r18,$r16,0x1
1c002edc:	0010224e 	add.w	$r14,$r18,$r8
1c002ee0:	298003a0 	st.w	$r0,$r29,0
1c002ee4:	298033a0 	st.w	$r0,$r29,12(0xc)
1c002ee8:	298063a0 	st.w	$r0,$r29,24(0x18)
1c002eec:	298093a0 	st.w	$r0,$r29,36(0x24)
1c002ef0:	2980c3a0 	st.w	$r0,$r29,48(0x30)
1c002ef4:	29800380 	st.w	$r0,$r28,0
1c002ef8:	29803390 	st.w	$r16,$r28,12(0xc)
1c002efc:	29801380 	st.w	$r0,$r28,4(0x4)
1c002f00:	29802380 	st.w	$r0,$r28,8(0x8)
1c002f04:	29804390 	st.w	$r16,$r28,16(0x10)
1c002f08:	29805390 	st.w	$r16,$r28,20(0x14)
1c002f0c:	2980938e 	st.w	$r14,$r28,36(0x24)
1c002f10:	2980a38e 	st.w	$r14,$r28,40(0x28)
1c002f14:	2980b38e 	st.w	$r14,$r28,44(0x2c)
1c002f18:	1c000fc4 	pcaddu12i	$r4,126(0x7e)
1c002f1c:	28800084 	ld.w	$r4,$r4,0
1c002f20:	1c000fa5 	pcaddu12i	$r5,125(0x7d)
1c002f24:	028b40a5 	addi.w	$r5,$r5,720(0x2d0)
1c002f28:	2981b06c 	st.w	$r12,$r3,108(0x6c)
1c002f2c:	2981c061 	st.w	$r1,$r3,112(0x70)
1c002f30:	2981d067 	st.w	$r7,$r3,116(0x74)
1c002f34:	2981e078 	st.w	$r24,$r3,120(0x78)
1c002f38:	1c000fd9 	pcaddu12i	$r25,126(0x7e)
1c002f3c:	28bf7339 	ld.w	$r25,$r25,-36(0xfdc)
1c002f40:	00150212 	move	$r18,$r16
1c002f44:	001044a5 	add.w	$r5,$r5,$r17
1c002f48:	00150098 	move	$r24,$r4
1c002f4c:	03400000 	andi	$r0,$r0,0x0
1c002f50:	02800c01 	addi.w	$r1,$r0,3(0x3)
1c002f54:	0020852c 	mod.w	$r12,$r9,$r1
1c002f58:	5c000820 	bne	$r1,$r0,8(0x8) # 1c002f60 <shell15+0xdf0>
1c002f5c:	002a0007 	break	0x7
1c002f60:	03400587 	andi	$r7,$r12,0x1
1c002f64:	0015020f 	move	$r15,$r16
1c002f68:	580008e0 	beq	$r7,$r0,8(0x8) # 1c002f70 <shell15+0xe00>
1c002f6c:	0015010f 	move	$r15,$r8
1c002f70:	288000b4 	ld.w	$r20,$r5,0
1c002f74:	28815071 	ld.w	$r17,$r3,84(0x54)
1c002f78:	58000a80 	beq	$r20,$r0,8(0x8) # 1c002f80 <shell15+0xe10>
1c002f7c:	28816071 	ld.w	$r17,$r3,88(0x58)
1c002f80:	28800313 	ld.w	$r19,$r24,0
1c002f84:	2880206d 	ld.w	$r13,$r3,8(0x8)
1c002f88:	28806064 	ld.w	$r4,$r3,24(0x18)
1c002f8c:	00104dae 	add.w	$r14,$r13,$r19
1c002f90:	001049c6 	add.w	$r6,$r14,$r18
1c002f94:	28800332 	ld.w	$r18,$r25,0
1c002f98:	00104892 	add.w	$r18,$r4,$r18
1c002f9c:	640209c6 	bge	$r14,$r6,520(0x208) # 1c0031a4 <shell15+0x1034>
1c002fa0:	02804c0c 	addi.w	$r12,$r0,19(0x13)
1c002fa4:	001c2cc1 	mul.w	$r1,$r6,$r11
1c002fa8:	00103e53 	add.w	$r19,$r18,$r15
1c002fac:	28813074 	ld.w	$r20,$r3,76(0x4c)
1c002fb0:	00144806 	nor	$r6,$r0,$r18
1c002fb4:	00104a8d 	add.w	$r13,$r20,$r18
1c002fb8:	00104cd4 	add.w	$r20,$r6,$r19
1c002fbc:	001c31c7 	mul.w	$r7,$r14,$r12
1c002fc0:	001005a6 	add.w	$r6,$r13,$r1
1c002fc4:	001c2dcf 	mul.w	$r15,$r14,$r11
1c002fc8:	001048e1 	add.w	$r1,$r7,$r18
1c002fcc:	0280064e 	addi.w	$r14,$r18,1(0x1)
1c002fd0:	0040882c 	slli.w	$r12,$r1,0x2
1c002fd4:	00150201 	move	$r1,$r16
1c002fd8:	00103dc4 	add.w	$r4,$r14,$r15
1c002fdc:	0010136e 	add.w	$r14,$r27,$r4
1c002fe0:	001033cf 	add.w	$r15,$r30,$r12
1c002fe4:	6401b253 	bge	$r18,$r19,432(0x1b0) # 1c003194 <shell15+0x1024>
1c002fe8:	283ffdd0 	ld.b	$r16,$r14,-1(0xfff)
1c002fec:	5ff68611 	bne	$r16,$r17,-2428(0x3f684) # 1c002670 <shell15+0x500>
1c002ff0:	288001e7 	ld.w	$r7,$r15,0
1c002ff4:	5ff67ce0 	bne	$r7,$r0,-2436(0x3f67c) # 1c002670 <shell15+0x500>
1c002ff8:	00103a84 	add.w	$r4,$r20,$r14
1c002ffc:	03401e90 	andi	$r16,$r20,0x7
1c003000:	2981f064 	st.w	$r4,$r3,124(0x7c)
1c003004:	001501cc 	move	$r12,$r14
1c003008:	001501ed 	move	$r13,$r15
1c00300c:	5800de00 	beq	$r16,$r0,220(0xdc) # 1c0030e8 <shell15+0xf78>
1c003010:	280001cd 	ld.b	$r13,$r14,0
1c003014:	5ff65db1 	bne	$r13,$r17,-2468(0x3f65c) # 1c002670 <shell15+0x500>
1c003018:	288011e7 	ld.w	$r7,$r15,4(0x4)
1c00301c:	028011ed 	addi.w	$r13,$r15,4(0x4)
1c003020:	028005cc 	addi.w	$r12,$r14,1(0x1)
1c003024:	5ff64ce0 	bne	$r7,$r0,-2484(0x3f64c) # 1c002670 <shell15+0x500>
1c003028:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00302c:	5800be04 	beq	$r16,$r4,188(0xbc) # 1c0030e8 <shell15+0xf78>
1c003030:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003034:	58009e07 	beq	$r16,$r7,156(0x9c) # 1c0030d0 <shell15+0xf60>
1c003038:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c00303c:	58007e04 	beq	$r16,$r4,124(0x7c) # 1c0030b8 <shell15+0xf48>
1c003040:	02801007 	addi.w	$r7,$r0,4(0x4)
1c003044:	58005e07 	beq	$r16,$r7,92(0x5c) # 1c0030a0 <shell15+0xf30>
1c003048:	02801404 	addi.w	$r4,$r0,5(0x5)
1c00304c:	58003e04 	beq	$r16,$r4,60(0x3c) # 1c003088 <shell15+0xf18>
1c003050:	02801807 	addi.w	$r7,$r0,6(0x6)
1c003054:	58001e07 	beq	$r16,$r7,28(0x1c) # 1c003070 <shell15+0xf00>
1c003058:	28000190 	ld.b	$r16,$r12,0
1c00305c:	5ff61611 	bne	$r16,$r17,-2540(0x3f614) # 1c002670 <shell15+0x500>
1c003060:	288011a4 	ld.w	$r4,$r13,4(0x4)
1c003064:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003068:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00306c:	5ff60480 	bne	$r4,$r0,-2556(0x3f604) # 1c002670 <shell15+0x500>
1c003070:	28000187 	ld.b	$r7,$r12,0
1c003074:	5ff5fcf1 	bne	$r7,$r17,-2564(0x3f5fc) # 1c002670 <shell15+0x500>
1c003078:	288011b0 	ld.w	$r16,$r13,4(0x4)
1c00307c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003080:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c003084:	5ff5ee00 	bne	$r16,$r0,-2580(0x3f5ec) # 1c002670 <shell15+0x500>
1c003088:	28000184 	ld.b	$r4,$r12,0
1c00308c:	5ff5e491 	bne	$r4,$r17,-2588(0x3f5e4) # 1c002670 <shell15+0x500>
1c003090:	288011a7 	ld.w	$r7,$r13,4(0x4)
1c003094:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003098:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00309c:	5ff5d4e0 	bne	$r7,$r0,-2604(0x3f5d4) # 1c002670 <shell15+0x500>
1c0030a0:	28000190 	ld.b	$r16,$r12,0
1c0030a4:	5ff5ce11 	bne	$r16,$r17,-2612(0x3f5cc) # 1c002670 <shell15+0x500>
1c0030a8:	288011a4 	ld.w	$r4,$r13,4(0x4)
1c0030ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0030b0:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0030b4:	5ff5bc80 	bne	$r4,$r0,-2628(0x3f5bc) # 1c002670 <shell15+0x500>
1c0030b8:	28000187 	ld.b	$r7,$r12,0
1c0030bc:	5ff5b4f1 	bne	$r7,$r17,-2636(0x3f5b4) # 1c002670 <shell15+0x500>
1c0030c0:	288011b0 	ld.w	$r16,$r13,4(0x4)
1c0030c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0030c8:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0030cc:	5ff5a600 	bne	$r16,$r0,-2652(0x3f5a4) # 1c002670 <shell15+0x500>
1c0030d0:	28000184 	ld.b	$r4,$r12,0
1c0030d4:	5ff59c91 	bne	$r4,$r17,-2660(0x3f59c) # 1c002670 <shell15+0x500>
1c0030d8:	288011a7 	ld.w	$r7,$r13,4(0x4)
1c0030dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0030e0:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0030e4:	5ff58ce0 	bne	$r7,$r0,-2676(0x3f58c) # 1c002670 <shell15+0x500>
1c0030e8:	2881f070 	ld.w	$r16,$r3,124(0x7c)
1c0030ec:	5800a990 	beq	$r12,$r16,168(0xa8) # 1c003194 <shell15+0x1024>
1c0030f0:	28000190 	ld.b	$r16,$r12,0
1c0030f4:	5ff57e11 	bne	$r16,$r17,-2692(0x3f57c) # 1c002670 <shell15+0x500>
1c0030f8:	288011a4 	ld.w	$r4,$r13,4(0x4)
1c0030fc:	02800587 	addi.w	$r7,$r12,1(0x1)
1c003100:	29821067 	st.w	$r7,$r3,132(0x84)
1c003104:	028011b0 	addi.w	$r16,$r13,4(0x4)
1c003108:	5ff56880 	bne	$r4,$r0,-2712(0x3f568) # 1c002670 <shell15+0x500>
1c00310c:	28000584 	ld.b	$r4,$r12,1(0x1)
1c003110:	5ff56091 	bne	$r4,$r17,-2720(0x3f560) # 1c002670 <shell15+0x500>
1c003114:	28801207 	ld.w	$r7,$r16,4(0x4)
1c003118:	5ff558e0 	bne	$r7,$r0,-2728(0x3f558) # 1c002670 <shell15+0x500>
1c00311c:	28000984 	ld.b	$r4,$r12,2(0x2)
1c003120:	5ff55091 	bne	$r4,$r17,-2736(0x3f550) # 1c002670 <shell15+0x500>
1c003124:	288031a7 	ld.w	$r7,$r13,12(0xc)
1c003128:	5ff548e0 	bne	$r7,$r0,-2744(0x3f548) # 1c002670 <shell15+0x500>
1c00312c:	28000d84 	ld.b	$r4,$r12,3(0x3)
1c003130:	5ff54091 	bne	$r4,$r17,-2752(0x3f540) # 1c002670 <shell15+0x500>
1c003134:	288041a7 	ld.w	$r7,$r13,16(0x10)
1c003138:	028041ad 	addi.w	$r13,$r13,16(0x10)
1c00313c:	5ff534e0 	bne	$r7,$r0,-2764(0x3f534) # 1c002670 <shell15+0x500>
1c003140:	2800118c 	ld.b	$r12,$r12,4(0x4)
1c003144:	5ff52d91 	bne	$r12,$r17,-2772(0x3f52c) # 1c002670 <shell15+0x500>
1c003148:	288011a4 	ld.w	$r4,$r13,4(0x4)
1c00314c:	5ff52480 	bne	$r4,$r0,-2780(0x3f524) # 1c002670 <shell15+0x500>
1c003150:	28821067 	ld.w	$r7,$r3,132(0x84)
1c003154:	280010ed 	ld.b	$r13,$r7,4(0x4)
1c003158:	5ff519b1 	bne	$r13,$r17,-2792(0x3f518) # 1c002670 <shell15+0x500>
1c00315c:	2880520c 	ld.w	$r12,$r16,20(0x14)
1c003160:	5ff51180 	bne	$r12,$r0,-2800(0x3f510) # 1c002670 <shell15+0x500>
1c003164:	280014e4 	ld.b	$r4,$r7,5(0x5)
1c003168:	5ff50891 	bne	$r4,$r17,-2808(0x3f508) # 1c002670 <shell15+0x500>
1c00316c:	2880620d 	ld.w	$r13,$r16,24(0x18)
1c003170:	5ff501a0 	bne	$r13,$r0,-2816(0x3f500) # 1c002670 <shell15+0x500>
1c003174:	280018ec 	ld.b	$r12,$r7,6(0x6)
1c003178:	5ff4f991 	bne	$r12,$r17,-2824(0x3f4f8) # 1c002670 <shell15+0x500>
1c00317c:	28807204 	ld.w	$r4,$r16,28(0x1c)
1c003180:	0280720d 	addi.w	$r13,$r16,28(0x1c)
1c003184:	02801cec 	addi.w	$r12,$r7,7(0x7)
1c003188:	5ff4e880 	bne	$r4,$r0,-2840(0x3f4e8) # 1c002670 <shell15+0x500>
1c00318c:	2881f070 	ld.w	$r16,$r3,124(0x7c)
1c003190:	5fff6190 	bne	$r12,$r16,-160(0x3ff60) # 1c0030f0 <shell15+0xf80>
1c003194:	028055ce 	addi.w	$r14,$r14,21(0x15)
1c003198:	028131ef 	addi.w	$r15,$r15,76(0x4c)
1c00319c:	5ffe49c6 	bne	$r14,$r6,-440(0x3fe48) # 1c002fe4 <shell15+0xe74>
1c0031a0:	00150030 	move	$r16,$r1
1c0031a4:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0031a8:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0031ac:	58034d2c 	beq	$r9,$r12,844(0x34c) # 1c0034f8 <shell15+0x1388>
1c0031b0:	02800c06 	addi.w	$r6,$r0,3(0x3)
1c0031b4:	00201927 	div.w	$r7,$r9,$r6
1c0031b8:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c0031c0 <shell15+0x1050>
1c0031bc:	002a0007 	break	0x7
1c0031c0:	034004ed 	andi	$r13,$r7,0x1
1c0031c4:	00150212 	move	$r18,$r16
1c0031c8:	580009a0 	beq	$r13,$r0,8(0x8) # 1c0031d0 <shell15+0x1060>
1c0031cc:	00150112 	move	$r18,$r8
1c0031d0:	02801318 	addi.w	$r24,$r24,4(0x4)
1c0031d4:	02801339 	addi.w	$r25,$r25,4(0x4)
1c0031d8:	028010a5 	addi.w	$r5,$r5,4(0x4)
1c0031dc:	53fd77ff 	b	-652(0xffffd74) # 1c002f50 <shell15+0xde0>
1c0031e0:	00102991 	add.w	$r17,$r12,$r10
1c0031e4:	00103e3e 	add.w	$r30,$r17,$r15
1c0031e8:	280003c1 	ld.b	$r1,$r30,0
1c0031ec:	5bf10c2d 	beq	$r1,$r13,-3828(0x3f10c) # 1c0022f8 <shell15+0x188>
1c0031f0:	00103991 	add.w	$r17,$r12,$r14
1c0031f4:	00105a3e 	add.w	$r30,$r17,$r22
1c0031f8:	280003c1 	ld.b	$r1,$r30,0
1c0031fc:	5bf0fc2d 	beq	$r1,$r13,-3844(0x3f0fc) # 1c0022f8 <shell15+0x188>
1c003200:	00101591 	add.w	$r17,$r12,$r5
1c003204:	00105e3e 	add.w	$r30,$r17,$r23
1c003208:	280003c1 	ld.b	$r1,$r30,0
1c00320c:	5bf0ec2d 	beq	$r1,$r13,-3860(0x3f0ec) # 1c0022f8 <shell15+0x188>
1c003210:	00101991 	add.w	$r17,$r12,$r6
1c003214:	0010623e 	add.w	$r30,$r17,$r24
1c003218:	280003c1 	ld.b	$r1,$r30,0
1c00321c:	5bf0dc2d 	beq	$r1,$r13,-3876(0x3f0dc) # 1c0022f8 <shell15+0x188>
1c003220:	00102591 	add.w	$r17,$r12,$r9
1c003224:	0010663e 	add.w	$r30,$r17,$r25
1c003228:	280003c1 	ld.b	$r1,$r30,0
1c00322c:	5bf0cc2d 	beq	$r1,$r13,-3892(0x3f0cc) # 1c0022f8 <shell15+0x188>
1c003230:	00102191 	add.w	$r17,$r12,$r8
1c003234:	00106a3e 	add.w	$r30,$r17,$r26
1c003238:	280003c1 	ld.b	$r1,$r30,0
1c00323c:	5bf0bc2d 	beq	$r1,$r13,-3908(0x3f0bc) # 1c0022f8 <shell15+0x188>
1c003240:	00104d91 	add.w	$r17,$r12,$r19
1c003244:	0010723e 	add.w	$r30,$r17,$r28
1c003248:	280003c1 	ld.b	$r1,$r30,0
1c00324c:	5bf0ac2d 	beq	$r1,$r13,-3924(0x3f0ac) # 1c0022f8 <shell15+0x188>
1c003250:	00101d91 	add.w	$r17,$r12,$r7
1c003254:	0010763e 	add.w	$r30,$r17,$r29
1c003258:	280003c1 	ld.b	$r1,$r30,0
1c00325c:	5bf09c2d 	beq	$r1,$r13,-3940(0x3f09c) # 1c0022f8 <shell15+0x188>
1c003260:	29000192 	st.b	$r18,$r12,0
1c003264:	53f097ff 	b	-3948(0xffff094) # 1c0022f8 <shell15+0x188>
1c003268:	00102991 	add.w	$r17,$r12,$r10
1c00326c:	00103e3e 	add.w	$r30,$r17,$r15
1c003270:	280003d1 	ld.b	$r17,$r30,0
1c003274:	5bf07a2d 	beq	$r17,$r13,-3976(0x3f078) # 1c0022ec <shell15+0x17c>
1c003278:	0010399e 	add.w	$r30,$r12,$r14
1c00327c:	00105bd1 	add.w	$r17,$r30,$r22
1c003280:	2800023e 	ld.b	$r30,$r17,0
1c003284:	5bf06bcd 	beq	$r30,$r13,-3992(0x3f068) # 1c0022ec <shell15+0x17c>
1c003288:	00101591 	add.w	$r17,$r12,$r5
1c00328c:	00105e3e 	add.w	$r30,$r17,$r23
1c003290:	280003d1 	ld.b	$r17,$r30,0
1c003294:	5bf05a2d 	beq	$r17,$r13,-4008(0x3f058) # 1c0022ec <shell15+0x17c>
1c003298:	0010199e 	add.w	$r30,$r12,$r6
1c00329c:	001063d1 	add.w	$r17,$r30,$r24
1c0032a0:	2800023e 	ld.b	$r30,$r17,0
1c0032a4:	5bf04bcd 	beq	$r30,$r13,-4024(0x3f048) # 1c0022ec <shell15+0x17c>
1c0032a8:	00102591 	add.w	$r17,$r12,$r9
1c0032ac:	0010663e 	add.w	$r30,$r17,$r25
1c0032b0:	280003d1 	ld.b	$r17,$r30,0
1c0032b4:	5bf03a2d 	beq	$r17,$r13,-4040(0x3f038) # 1c0022ec <shell15+0x17c>
1c0032b8:	0010219e 	add.w	$r30,$r12,$r8
1c0032bc:	00106bd1 	add.w	$r17,$r30,$r26
1c0032c0:	2800023e 	ld.b	$r30,$r17,0
1c0032c4:	5bf02bcd 	beq	$r30,$r13,-4056(0x3f028) # 1c0022ec <shell15+0x17c>
1c0032c8:	00104d91 	add.w	$r17,$r12,$r19
1c0032cc:	0010723e 	add.w	$r30,$r17,$r28
1c0032d0:	280003d1 	ld.b	$r17,$r30,0
1c0032d4:	5bf01a21 	beq	$r17,$r1,-4072(0x3f018) # 1c0022ec <shell15+0x17c>
1c0032d8:	00101d9e 	add.w	$r30,$r12,$r7
1c0032dc:	001077d1 	add.w	$r17,$r30,$r29
1c0032e0:	2800023e 	ld.b	$r30,$r17,0
1c0032e4:	5bf00bc1 	beq	$r30,$r1,-4088(0x3f008) # 1c0022ec <shell15+0x17c>
1c0032e8:	29000192 	st.b	$r18,$r12,0
1c0032ec:	53f003ff 	b	-4096(0xffff000) # 1c0022ec <shell15+0x17c>
1c0032f0:	028006c5 	addi.w	$r5,$r22,1(0x1)
1c0032f4:	2980f065 	st.w	$r5,$r3,60(0x3c)
1c0032f8:	2880306b 	ld.w	$r11,$r3,12(0xc)
1c0032fc:	2880907f 	ld.w	$r31,$r3,36(0x24)
1c003300:	2880f076 	ld.w	$r22,$r3,60(0x3c)
1c003304:	28807067 	ld.w	$r7,$r3,28(0x1c)
1c003308:	02800577 	addi.w	$r23,$r11,1(0x1)
1c00330c:	028133ea 	addi.w	$r10,$r31,76(0x4c)
1c003310:	29803077 	st.w	$r23,$r3,12(0xc)
1c003314:	2980906a 	st.w	$r10,$r3,36(0x24)
1c003318:	02805718 	addi.w	$r24,$r24,21(0x15)
1c00331c:	5ff2d4f6 	bne	$r7,$r22,-3372(0x3f2d4) # 1c0025f0 <shell15+0x480>
1c003320:	2881207a 	ld.w	$r26,$r3,72(0x48)
1c003324:	02bfff5c 	addi.w	$r28,$r26,-1(0xfff)
1c003328:	2981207c 	st.w	$r28,$r3,72(0x48)
1c00332c:	5feec780 	bne	$r28,$r0,-4412(0x3eec4) # 1c0021f0 <shell15+0x80>
1c003330:	2880d07e 	ld.w	$r30,$r3,52(0x34)
1c003334:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c003338:	2880b07d 	ld.w	$r29,$r3,44(0x2c)
1c00333c:	001503c6 	move	$r6,$r30
1c003340:	00150325 	move	$r5,$r25
1c003344:	001503a7 	move	$r7,$r29
1c003348:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c00334c:	02b2e084 	addi.w	$r4,$r4,-840(0xcb8)
1c003350:	541ac000 	bl	6848(0x1ac0) # 1c004e10 <printf>
1c003354:	001567c6 	or	$r6,$r30,$r25
1c003358:	5c0440c0 	bne	$r6,$r0,1088(0x440) # 1c003798 <shell15+0x1628>
1c00335c:	2881a06f 	ld.w	$r15,$r3,104(0x68)
1c003360:	28814064 	ld.w	$r4,$r3,80(0x50)
1c003364:	03c007b2 	xori	$r18,$r29,0x1
1c003368:	0012c813 	sltu	$r19,$r0,$r18
1c00336c:	02bffdf4 	addi.w	$r20,$r15,-1(0xfff)
1c003370:	00104c91 	add.w	$r17,$r4,$r19
1c003374:	2981a074 	st.w	$r20,$r3,104(0x68)
1c003378:	29814071 	st.w	$r17,$r3,80(0x50)
1c00337c:	5fee6e80 	bne	$r20,$r0,-4500(0x3ee6c) # 1c0021e8 <shell15+0x78>
1c003380:	54220000 	bl	8704(0x2200) # 1c005580 <get_count_my>
1c003384:	0015009b 	move	$r27,$r4
1c003388:	5421c800 	bl	8648(0x21c8) # 1c005550 <get_count>
1c00338c:	2882306e 	ld.w	$r14,$r3,140(0x8c)
1c003390:	28822065 	ld.w	$r5,$r3,136(0x88)
1c003394:	2881406d 	ld.w	$r13,$r3,80(0x50)
1c003398:	00113b76 	sub.w	$r22,$r27,$r14
1c00339c:	0011149a 	sub.w	$r26,$r4,$r5
1c0033a0:	5c0431a0 	bne	$r13,$r0,1072(0x430) # 1c0037d0 <shell15+0x1660>
1c0033a4:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c0033a8:	02b20084 	addi.w	$r4,$r4,-896(0xc80)
1c0033ac:	541da400 	bl	7588(0x1da4) # 1c005150 <puts>
1c0033b0:	157f5fe6 	lu12i.w	$r6,-263425(0xbfaff)
1c0033b4:	02800408 	addi.w	$r8,$r0,1(0x1)
1c0033b8:	038100d0 	ori	$r16,$r6,0x40
1c0033bc:	29800208 	st.w	$r8,$r16,0
1c0033c0:	140001ed 	lu12i.w	$r13,15(0xf)
1c0033c4:	0380c0cf 	ori	$r15,$r6,0x30
1c0033c8:	038080d1 	ori	$r17,$r6,0x20
1c0033cc:	03bffda5 	ori	$r5,$r13,0xfff
1c0033d0:	298001e8 	st.w	$r8,$r15,0
1c0033d4:	29800225 	st.w	$r5,$r17,0
1c0033d8:	157f5fe1 	lu12i.w	$r1,-263425(0xbfaff)
1c0033dc:	0381403c 	ori	$r28,$r1,0x50
1c0033e0:	29800396 	st.w	$r22,$r28,0
1c0033e4:	157f5f1b 	lu12i.w	$r27,-263432(0xbfaf8)
1c0033e8:	29800376 	st.w	$r22,$r27,0
1c0033ec:	0380437e 	ori	$r30,$r27,0x10
1c0033f0:	00150345 	move	$r5,$r26
1c0033f4:	298003da 	st.w	$r26,$r30,0
1c0033f8:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c0033fc:	02b14084 	addi.w	$r4,$r4,-944(0xc50)
1c003400:	541a1000 	bl	6672(0x1a10) # 1c004e10 <printf>
1c003404:	001502c5 	move	$r5,$r22
1c003408:	2882e076 	ld.w	$r22,$r3,184(0xb8)
1c00340c:	2882f061 	ld.w	$r1,$r3,188(0xbc)
1c003410:	2882d077 	ld.w	$r23,$r3,180(0xb4)
1c003414:	2882c078 	ld.w	$r24,$r3,176(0xb0)
1c003418:	2882b079 	ld.w	$r25,$r3,172(0xac)
1c00341c:	2882a07a 	ld.w	$r26,$r3,168(0xa8)
1c003420:	2882907b 	ld.w	$r27,$r3,164(0xa4)
1c003424:	2882807c 	ld.w	$r28,$r3,160(0xa0)
1c003428:	2882707d 	ld.w	$r29,$r3,156(0x9c)
1c00342c:	2882607e 	ld.w	$r30,$r3,152(0x98)
1c003430:	2882507f 	ld.w	$r31,$r3,148(0x94)
1c003434:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c003438:	02b10084 	addi.w	$r4,$r4,-960(0xc40)
1c00343c:	02830063 	addi.w	$r3,$r3,192(0xc0)
1c003440:	5019d000 	b	6608(0x19d0) # 1c004e10 <printf>
1c003444:	2881207a 	ld.w	$r26,$r3,72(0x48)
1c003448:	2980b060 	st.w	$r0,$r3,44(0x2c)
1c00344c:	2980d060 	st.w	$r0,$r3,52(0x34)
1c003450:	02bfff5c 	addi.w	$r28,$r26,-1(0xfff)
1c003454:	2980c060 	st.w	$r0,$r3,48(0x30)
1c003458:	2981207c 	st.w	$r28,$r3,72(0x48)
1c00345c:	5fed9780 	bne	$r28,$r0,-4716(0x3ed94) # 1c0021f0 <shell15+0x80>
1c003460:	53fed3ff 	b	-304(0xffffed0) # 1c003330 <shell15+0x11c0>
1c003464:	001502d8 	move	$r24,$r22
1c003468:	53fe93ff 	b	-368(0xffffe90) # 1c0032f8 <shell15+0x1188>
1c00346c:	03400000 	andi	$r0,$r0,0x0
1c003470:	0010299e 	add.w	$r30,$r12,$r10
1c003474:	00103fc1 	add.w	$r1,$r30,$r15
1c003478:	28000031 	ld.b	$r17,$r1,0
1c00347c:	5bee8a2d 	beq	$r17,$r13,-4472(0x3ee88) # 1c002304 <shell15+0x194>
1c003480:	0010399e 	add.w	$r30,$r12,$r14
1c003484:	00105bc1 	add.w	$r1,$r30,$r22
1c003488:	28000031 	ld.b	$r17,$r1,0
1c00348c:	5bee7a2d 	beq	$r17,$r13,-4488(0x3ee78) # 1c002304 <shell15+0x194>
1c003490:	0010159e 	add.w	$r30,$r12,$r5
1c003494:	00105fc1 	add.w	$r1,$r30,$r23
1c003498:	28000031 	ld.b	$r17,$r1,0
1c00349c:	5bee6a2d 	beq	$r17,$r13,-4504(0x3ee68) # 1c002304 <shell15+0x194>
1c0034a0:	0010199e 	add.w	$r30,$r12,$r6
1c0034a4:	001063c1 	add.w	$r1,$r30,$r24
1c0034a8:	28000031 	ld.b	$r17,$r1,0
1c0034ac:	5bee5a2d 	beq	$r17,$r13,-4520(0x3ee58) # 1c002304 <shell15+0x194>
1c0034b0:	0010259e 	add.w	$r30,$r12,$r9
1c0034b4:	001067c1 	add.w	$r1,$r30,$r25
1c0034b8:	28000031 	ld.b	$r17,$r1,0
1c0034bc:	5bee4a2d 	beq	$r17,$r13,-4536(0x3ee48) # 1c002304 <shell15+0x194>
1c0034c0:	0010219e 	add.w	$r30,$r12,$r8
1c0034c4:	00106bc1 	add.w	$r1,$r30,$r26
1c0034c8:	28000031 	ld.b	$r17,$r1,0
1c0034cc:	5bee3a2d 	beq	$r17,$r13,-4552(0x3ee38) # 1c002304 <shell15+0x194>
1c0034d0:	00104d9e 	add.w	$r30,$r12,$r19
1c0034d4:	001073c1 	add.w	$r1,$r30,$r28
1c0034d8:	28000031 	ld.b	$r17,$r1,0
1c0034dc:	5bee2a2d 	beq	$r17,$r13,-4568(0x3ee28) # 1c002304 <shell15+0x194>
1c0034e0:	00101d9e 	add.w	$r30,$r12,$r7
1c0034e4:	001077c1 	add.w	$r1,$r30,$r29
1c0034e8:	28000031 	ld.b	$r17,$r1,0
1c0034ec:	5bee1a2d 	beq	$r17,$r13,-4584(0x3ee18) # 1c002304 <shell15+0x194>
1c0034f0:	29000192 	st.b	$r18,$r12,0
1c0034f4:	53ee13ff 	b	-4592(0xfffee10) # 1c002304 <shell15+0x194>
1c0034f8:	28802068 	ld.w	$r8,$r3,8(0x8)
1c0034fc:	2881d069 	ld.w	$r9,$r3,116(0x74)
1c003500:	2881e061 	ld.w	$r1,$r3,120(0x78)
1c003504:	2881b06c 	ld.w	$r12,$r3,108(0x6c)
1c003508:	2881c071 	ld.w	$r17,$r3,112(0x70)
1c00350c:	02bffd0e 	addi.w	$r14,$r8,-1(0xfff)
1c003510:	60026537 	blt	$r9,$r23,612(0x264) # 1c003774 <shell15+0x1604>
1c003514:	2880406d 	ld.w	$r13,$r3,16(0x10)
1c003518:	02803838 	addi.w	$r24,$r1,14(0xe)
1c00351c:	02800c25 	addi.w	$r5,$r1,3(0x3)
1c003520:	028021af 	addi.w	$r15,$r13,8(0x8)
1c003524:	02801024 	addi.w	$r4,$r1,4(0x4)
1c003528:	02803c2d 	addi.w	$r13,$r1,15(0xf)
1c00352c:	02801434 	addi.w	$r20,$r1,5(0x5)
1c003530:	02801833 	addi.w	$r19,$r1,6(0x6)
1c003534:	02801c32 	addi.w	$r18,$r1,7(0x7)
1c003538:	02802030 	addi.w	$r16,$r1,8(0x8)
1c00353c:	02802426 	addi.w	$r6,$r1,9(0x9)
1c003540:	02802827 	addi.w	$r7,$r1,10(0xa)
1c003544:	02802c28 	addi.w	$r8,$r1,11(0xb)
1c003548:	02803029 	addi.w	$r9,$r1,12(0xc)
1c00354c:	02803439 	addi.w	$r25,$r1,13(0xd)
1c003550:	02804021 	addi.w	$r1,$r1,16(0x10)
1c003554:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c003558:	2981c06a 	st.w	$r10,$r3,112(0x70)
1c00355c:	2880506a 	ld.w	$r10,$r3,20(0x14)
1c003560:	29815078 	st.w	$r24,$r3,84(0x54)
1c003564:	2981606d 	st.w	$r13,$r3,88(0x58)
1c003568:	28bed1f8 	ld.w	$r24,$r15,-76(0xfb4)
1c00356c:	0280070d 	addi.w	$r13,$r24,1(0x1)
1c003570:	29bed1ed 	st.w	$r13,$r15,-76(0xfb4)
1c003574:	6001ee37 	blt	$r17,$r23,492(0x1ec) # 1c003760 <shell15+0x15f0>
1c003578:	02804c01 	addi.w	$r1,$r0,19(0x13)
1c00357c:	001c05cd 	mul.w	$r13,$r14,$r1
1c003580:	28806078 	ld.w	$r24,$r3,24(0x18)
1c003584:	001061a1 	add.w	$r1,$r13,$r24
1c003588:	00408838 	slli.w	$r24,$r1,0x2
1c00358c:	001063c1 	add.w	$r1,$r30,$r24
1c003590:	28800038 	ld.w	$r24,$r1,0
1c003594:	02800718 	addi.w	$r24,$r24,1(0x1)
1c003598:	29800038 	st.w	$r24,$r1,0
1c00359c:	6401c40c 	bge	$r0,$r12,452(0x1c4) # 1c003760 <shell15+0x15f0>
1c0035a0:	001029a1 	add.w	$r1,$r13,$r10
1c0035a4:	00408838 	slli.w	$r24,$r1,0x2
1c0035a8:	001063c1 	add.w	$r1,$r30,$r24
1c0035ac:	28800038 	ld.w	$r24,$r1,0
1c0035b0:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0035b4:	29800038 	st.w	$r24,$r1,0
1c0035b8:	6001aa2a 	blt	$r17,$r10,424(0x1a8) # 1c003760 <shell15+0x15f0>
1c0035bc:	001015a1 	add.w	$r1,$r13,$r5
1c0035c0:	00408838 	slli.w	$r24,$r1,0x2
1c0035c4:	001063c1 	add.w	$r1,$r30,$r24
1c0035c8:	28800038 	ld.w	$r24,$r1,0
1c0035cc:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0035d0:	29800038 	st.w	$r24,$r1,0
1c0035d4:	60018e25 	blt	$r17,$r5,396(0x18c) # 1c003760 <shell15+0x15f0>
1c0035d8:	001011a1 	add.w	$r1,$r13,$r4
1c0035dc:	00408838 	slli.w	$r24,$r1,0x2
1c0035e0:	001063c1 	add.w	$r1,$r30,$r24
1c0035e4:	28800038 	ld.w	$r24,$r1,0
1c0035e8:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0035ec:	29800038 	st.w	$r24,$r1,0
1c0035f0:	60017224 	blt	$r17,$r4,368(0x170) # 1c003760 <shell15+0x15f0>
1c0035f4:	001051a1 	add.w	$r1,$r13,$r20
1c0035f8:	00408838 	slli.w	$r24,$r1,0x2
1c0035fc:	001063c1 	add.w	$r1,$r30,$r24
1c003600:	28800038 	ld.w	$r24,$r1,0
1c003604:	02800718 	addi.w	$r24,$r24,1(0x1)
1c003608:	29800038 	st.w	$r24,$r1,0
1c00360c:	60015634 	blt	$r17,$r20,340(0x154) # 1c003760 <shell15+0x15f0>
1c003610:	00104da1 	add.w	$r1,$r13,$r19
1c003614:	00408838 	slli.w	$r24,$r1,0x2
1c003618:	001063c1 	add.w	$r1,$r30,$r24
1c00361c:	28800038 	ld.w	$r24,$r1,0
1c003620:	02800718 	addi.w	$r24,$r24,1(0x1)
1c003624:	29800038 	st.w	$r24,$r1,0
1c003628:	60013a33 	blt	$r17,$r19,312(0x138) # 1c003760 <shell15+0x15f0>
1c00362c:	001049a1 	add.w	$r1,$r13,$r18
1c003630:	00408838 	slli.w	$r24,$r1,0x2
1c003634:	001063c1 	add.w	$r1,$r30,$r24
1c003638:	28800038 	ld.w	$r24,$r1,0
1c00363c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c003640:	29800038 	st.w	$r24,$r1,0
1c003644:	60011e32 	blt	$r17,$r18,284(0x11c) # 1c003760 <shell15+0x15f0>
1c003648:	001041a1 	add.w	$r1,$r13,$r16
1c00364c:	00408838 	slli.w	$r24,$r1,0x2
1c003650:	001063c1 	add.w	$r1,$r30,$r24
1c003654:	28800038 	ld.w	$r24,$r1,0
1c003658:	02800718 	addi.w	$r24,$r24,1(0x1)
1c00365c:	29800038 	st.w	$r24,$r1,0
1c003660:	60010230 	blt	$r17,$r16,256(0x100) # 1c003760 <shell15+0x15f0>
1c003664:	001019ad 	add.w	$r13,$r13,$r6
1c003668:	004089a1 	slli.w	$r1,$r13,0x2
1c00366c:	001007d8 	add.w	$r24,$r30,$r1
1c003670:	2880030d 	ld.w	$r13,$r24,0
1c003674:	028005a1 	addi.w	$r1,$r13,1(0x1)
1c003678:	29800301 	st.w	$r1,$r24,0
1c00367c:	6000e626 	blt	$r17,$r6,228(0xe4) # 1c003760 <shell15+0x15f0>
1c003680:	02804c18 	addi.w	$r24,$r0,19(0x13)
1c003684:	001c61cd 	mul.w	$r13,$r14,$r24
1c003688:	00101da1 	add.w	$r1,$r13,$r7
1c00368c:	00408838 	slli.w	$r24,$r1,0x2
1c003690:	001063c1 	add.w	$r1,$r30,$r24
1c003694:	28800038 	ld.w	$r24,$r1,0
1c003698:	02800718 	addi.w	$r24,$r24,1(0x1)
1c00369c:	29800038 	st.w	$r24,$r1,0
1c0036a0:	6000c227 	blt	$r17,$r7,192(0xc0) # 1c003760 <shell15+0x15f0>
1c0036a4:	001021a1 	add.w	$r1,$r13,$r8
1c0036a8:	00408838 	slli.w	$r24,$r1,0x2
1c0036ac:	001063c1 	add.w	$r1,$r30,$r24
1c0036b0:	28800038 	ld.w	$r24,$r1,0
1c0036b4:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0036b8:	29800038 	st.w	$r24,$r1,0
1c0036bc:	6000a628 	blt	$r17,$r8,164(0xa4) # 1c003760 <shell15+0x15f0>
1c0036c0:	001025a1 	add.w	$r1,$r13,$r9
1c0036c4:	00408838 	slli.w	$r24,$r1,0x2
1c0036c8:	001063c1 	add.w	$r1,$r30,$r24
1c0036cc:	28800038 	ld.w	$r24,$r1,0
1c0036d0:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0036d4:	29800038 	st.w	$r24,$r1,0
1c0036d8:	60008a29 	blt	$r17,$r9,136(0x88) # 1c003760 <shell15+0x15f0>
1c0036dc:	001065a1 	add.w	$r1,$r13,$r25
1c0036e0:	00408838 	slli.w	$r24,$r1,0x2
1c0036e4:	001063c1 	add.w	$r1,$r30,$r24
1c0036e8:	28800038 	ld.w	$r24,$r1,0
1c0036ec:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0036f0:	29800038 	st.w	$r24,$r1,0
1c0036f4:	60006e39 	blt	$r17,$r25,108(0x6c) # 1c003760 <shell15+0x15f0>
1c0036f8:	28815061 	ld.w	$r1,$r3,84(0x54)
1c0036fc:	001005b8 	add.w	$r24,$r13,$r1
1c003700:	00408b01 	slli.w	$r1,$r24,0x2
1c003704:	001007c1 	add.w	$r1,$r30,$r1
1c003708:	28800038 	ld.w	$r24,$r1,0
1c00370c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c003710:	29800038 	st.w	$r24,$r1,0
1c003714:	28815061 	ld.w	$r1,$r3,84(0x54)
1c003718:	60004a21 	blt	$r17,$r1,72(0x48) # 1c003760 <shell15+0x15f0>
1c00371c:	28816078 	ld.w	$r24,$r3,88(0x58)
1c003720:	001061a1 	add.w	$r1,$r13,$r24
1c003724:	00408838 	slli.w	$r24,$r1,0x2
1c003728:	001063c1 	add.w	$r1,$r30,$r24
1c00372c:	28800038 	ld.w	$r24,$r1,0
1c003730:	02800718 	addi.w	$r24,$r24,1(0x1)
1c003734:	29800038 	st.w	$r24,$r1,0
1c003738:	28816061 	ld.w	$r1,$r3,88(0x58)
1c00373c:	60002621 	blt	$r17,$r1,36(0x24) # 1c003760 <shell15+0x15f0>
1c003740:	2881b078 	ld.w	$r24,$r3,108(0x6c)
1c003744:	001061ad 	add.w	$r13,$r13,$r24
1c003748:	004089a1 	slli.w	$r1,$r13,0x2
1c00374c:	001007d8 	add.w	$r24,$r30,$r1
1c003750:	2880030d 	ld.w	$r13,$r24,0
1c003754:	028005a1 	addi.w	$r1,$r13,1(0x1)
1c003758:	29800301 	st.w	$r1,$r24,0
1c00375c:	03400000 	andi	$r0,$r0,0x0
1c003760:	2880a078 	ld.w	$r24,$r3,40(0x28)
1c003764:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c003768:	028131ef 	addi.w	$r15,$r15,76(0x4c)
1c00376c:	67fdff0e 	bge	$r24,$r14,-516(0x3fdfc) # 1c003568 <shell15+0x13f8>
1c003770:	2881c06a 	ld.w	$r10,$r3,112(0x70)
1c003774:	2882006c 	ld.w	$r12,$r3,128(0x80)
1c003778:	02800411 	addi.w	$r17,$r0,1(0x1)
1c00377c:	5800d591 	beq	$r12,$r17,212(0xd4) # 1c003850 <shell15+0x16e0>
1c003780:	0280080e 	addi.w	$r14,$r0,2(0x2)
1c003784:	5800dd8e 	beq	$r12,$r14,220(0xdc) # 1c003860 <shell15+0x16f0>
1c003788:	2880b06f 	ld.w	$r15,$r3,44(0x2c)
1c00378c:	028005e5 	addi.w	$r5,$r15,1(0x1)
1c003790:	2980b065 	st.w	$r5,$r3,44(0x2c)
1c003794:	53eedfff 	b	-4388(0xfffeedc) # 1c002670 <shell15+0x500>
1c003798:	2881a068 	ld.w	$r8,$r3,104(0x68)
1c00379c:	28814061 	ld.w	$r1,$r3,80(0x50)
1c0037a0:	02bffd09 	addi.w	$r9,$r8,-1(0xfff)
1c0037a4:	02800430 	addi.w	$r16,$r1,1(0x1)
1c0037a8:	2981a069 	st.w	$r9,$r3,104(0x68)
1c0037ac:	29814070 	st.w	$r16,$r3,80(0x50)
1c0037b0:	5fea3920 	bne	$r9,$r0,-5576(0x3ea38) # 1c0021e8 <shell15+0x78>
1c0037b4:	541dcc00 	bl	7628(0x1dcc) # 1c005580 <get_count_my>
1c0037b8:	0015009f 	move	$r31,$r4
1c0037bc:	541d9400 	bl	7572(0x1d94) # 1c005550 <get_count>
1c0037c0:	2882306e 	ld.w	$r14,$r3,140(0x8c)
1c0037c4:	28822074 	ld.w	$r20,$r3,136(0x88)
1c0037c8:	00113bf6 	sub.w	$r22,$r31,$r14
1c0037cc:	0011509a 	sub.w	$r26,$r4,$r20
1c0037d0:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c0037d4:	02a19084 	addi.w	$r4,$r4,-1948(0x864)
1c0037d8:	54197800 	bl	6520(0x1978) # 1c005150 <puts>
1c0037dc:	157f5fe4 	lu12i.w	$r4,-263425(0xbfaff)
1c0037e0:	02800413 	addi.w	$r19,$r0,1(0x1)
1c0037e4:	0381008a 	ori	$r10,$r4,0x40
1c0037e8:	29800153 	st.w	$r19,$r10,0
1c0037ec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0037f0:	0380c08b 	ori	$r11,$r4,0x30
1c0037f4:	0380808c 	ori	$r12,$r4,0x20
1c0037f8:	29800167 	st.w	$r7,$r11,0
1c0037fc:	29800180 	st.w	$r0,$r12,0
1c003800:	53fbdbff 	b	-1064(0xffffbd8) # 1c0033d8 <shell15+0x1268>
1c003804:	2880206e 	ld.w	$r14,$r3,8(0x8)
1c003808:	001049d9 	add.w	$r25,$r14,$r18
1c00380c:	2980a079 	st.w	$r25,$r3,40(0x28)
1c003810:	53f3ebff 	b	-3096(0xffff3e8) # 1c002bf8 <shell15+0xa88>
1c003814:	28802066 	ld.w	$r6,$r3,8(0x8)
1c003818:	004085b1 	slli.w	$r17,$r13,0x1
1c00381c:	00101a32 	add.w	$r18,$r17,$r6
1c003820:	001c2e4e 	mul.w	$r14,$r18,$r11
1c003824:	00103b65 	add.w	$r5,$r27,$r14
1c003828:	001064a4 	add.w	$r4,$r5,$r25
1c00382c:	2800008f 	ld.b	$r15,$r4,0
1c003830:	580041fa 	beq	$r15,$r26,64(0x40) # 1c003870 <shell15+0x1700>
1c003834:	0280b819 	addi.w	$r25,$r0,46(0x2e)
1c003838:	5fee39f9 	bne	$r15,$r25,-4552(0x3ee38) # 1c002670 <shell15+0x500>
1c00383c:	02800414 	addi.w	$r20,$r0,1(0x1)
1c003840:	00150006 	move	$r6,$r0
1c003844:	29820074 	st.w	$r20,$r3,128(0x80)
1c003848:	53f64bff 	b	-2488(0xffff648) # 1c002e90 <shell15+0xd20>
1c00384c:	03400000 	andi	$r0,$r0,0x0
1c003850:	2880c073 	ld.w	$r19,$r3,48(0x30)
1c003854:	02800672 	addi.w	$r18,$r19,1(0x1)
1c003858:	2980c072 	st.w	$r18,$r3,48(0x30)
1c00385c:	53ee17ff 	b	-4588(0xfffee14) # 1c002670 <shell15+0x500>
1c003860:	2880d064 	ld.w	$r4,$r3,52(0x34)
1c003864:	02800494 	addi.w	$r20,$r4,1(0x1)
1c003868:	2980d074 	st.w	$r20,$r3,52(0x34)
1c00386c:	53ee07ff 	b	-4604(0xfffee04) # 1c002670 <shell15+0x500>
1c003870:	02800813 	addi.w	$r19,$r0,2(0x2)
1c003874:	02800406 	addi.w	$r6,$r0,1(0x1)
1c003878:	29820073 	st.w	$r19,$r3,128(0x80)
1c00387c:	53f617ff 	b	-2540(0xffff614) # 1c002e90 <shell15+0xd20>
1c003880:	02802816 	addi.w	$r22,$r0,10(0xa)
1c003884:	1c000fab 	pcaddu12i	$r11,125(0x7d)
1c003888:	029a116b 	addi.w	$r11,$r11,1668(0x684)
1c00388c:	0015037c 	move	$r28,$r27
1c003890:	2980c076 	st.w	$r22,$r3,48(0x30)
1c003894:	2981506b 	st.w	$r11,$r3,84(0x54)
1c003898:	03a60006 	ori	$r6,$r0,0x980
1c00389c:	00150005 	move	$r5,$r0
1c0038a0:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c0038a4:	02a91084 	addi.w	$r4,$r4,-1468(0xa44)
1c0038a8:	541b7800 	bl	7032(0x1b78) # 1c005420 <memset>
1c0038ac:	28815077 	ld.w	$r23,$r3,84(0x54)
1c0038b0:	02800818 	addi.w	$r24,$r0,2(0x2)
1c0038b4:	288002f9 	ld.w	$r25,$r23,0
1c0038b8:	640e7319 	bge	$r24,$r25,3696(0xe70) # 1c004728 <shell15+0x25b8>
1c0038bc:	1c000fbf 	pcaddu12i	$r31,125(0x7d)
1c0038c0:	029943ff 	addi.w	$r31,$r31,1616(0x650)
1c0038c4:	288003fe 	ld.w	$r30,$r31,0
1c0038c8:	1c000fba 	pcaddu12i	$r26,125(0x7d)
1c0038cc:	02a7735a 	addi.w	$r26,$r26,-1572(0x9dc)
1c0038d0:	2880035d 	ld.w	$r29,$r26,0
1c0038d4:	28801354 	ld.w	$r20,$r26,4(0x4)
1c0038d8:	2980807e 	st.w	$r30,$r3,32(0x20)
1c0038dc:	28802353 	ld.w	$r19,$r26,8(0x8)
1c0038e0:	28803345 	ld.w	$r5,$r26,12(0xc)
1c0038e4:	28804351 	ld.w	$r17,$r26,16(0x10)
1c0038e8:	28805347 	ld.w	$r7,$r26,20(0x14)
1c0038ec:	28806352 	ld.w	$r18,$r26,24(0x18)
1c0038f0:	28807349 	ld.w	$r9,$r26,28(0x1c)
1c0038f4:	28808344 	ld.w	$r4,$r26,32(0x20)
1c0038f8:	2880934b 	ld.w	$r11,$r26,36(0x24)
1c0038fc:	2880a346 	ld.w	$r6,$r26,40(0x28)
1c003900:	2880b341 	ld.w	$r1,$r26,44(0x2c)
1c003904:	2880c35b 	ld.w	$r27,$r26,48(0x30)
1c003908:	2880d357 	ld.w	$r23,$r26,52(0x34)
1c00390c:	2880e34a 	ld.w	$r10,$r26,56(0x38)
1c003910:	2880f35a 	ld.w	$r26,$r26,60(0x3c)
1c003914:	64009b1e 	bge	$r24,$r30,152(0x98) # 1c0039ac <shell15+0x183c>
1c003918:	0280540c 	addi.w	$r12,$r0,21(0x15)
1c00391c:	02bfac0e 	addi.w	$r14,$r0,-21(0xfeb)
1c003920:	001c33af 	mul.w	$r15,$r29,$r12
1c003924:	02800b9f 	addi.w	$r31,$r28,2(0x2)
1c003928:	00107b9e 	add.w	$r30,$r28,$r30
1c00392c:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c003930:	001c3231 	mul.w	$r17,$r17,$r12
1c003934:	001c3252 	mul.w	$r18,$r18,$r12
1c003938:	001c3084 	mul.w	$r4,$r4,$r12
1c00393c:	001c30c6 	mul.w	$r6,$r6,$r12
1c003940:	001c314a 	mul.w	$r10,$r10,$r12
1c003944:	001c3b3d 	mul.w	$r29,$r25,$r14
1c003948:	001c3270 	mul.w	$r16,$r19,$r12
1c00394c:	02bf5813 	addi.w	$r19,$r0,-42(0xfd6)
1c003950:	001c3368 	mul.w	$r8,$r27,$r12
1c003954:	0280b81b 	addi.w	$r27,$r0,46(0x2e)
1c003958:	00114fec 	sub.w	$r12,$r31,$r19
1c00395c:	00114fd8 	sub.w	$r24,$r30,$r19
1c003960:	00113316 	sub.w	$r22,$r24,$r12
1c003964:	03400ece 	andi	$r14,$r22,0x3
1c003968:	580721c0 	beq	$r14,$r0,1824(0x720) # 1c004088 <shell15+0x1f18>
1c00396c:	02800416 	addi.w	$r22,$r0,1(0x1)
1c003970:	580025d6 	beq	$r14,$r22,36(0x24) # 1c003994 <shell15+0x1824>
1c003974:	02800816 	addi.w	$r22,$r0,2(0x2)
1c003978:	580011d6 	beq	$r14,$r22,16(0x10) # 1c003988 <shell15+0x1818>
1c00397c:	2800018e 	ld.b	$r14,$r12,0
1c003980:	5808c9cd 	beq	$r14,$r13,2248(0x8c8) # 1c004248 <shell15+0x20d8>
1c003984:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003988:	2800018e 	ld.b	$r14,$r12,0
1c00398c:	580835cd 	beq	$r14,$r13,2100(0x834) # 1c0041c0 <shell15+0x2050>
1c003990:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003994:	28000196 	ld.b	$r22,$r12,0
1c003998:	580a3acd 	beq	$r22,$r13,2616(0xa38) # 1c0043d0 <shell15+0x2260>
1c00399c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0039a0:	5c06e998 	bne	$r12,$r24,1768(0x6e8) # 1c004088 <shell15+0x1f18>
1c0039a4:	02bfae73 	addi.w	$r19,$r19,-21(0xfeb)
1c0039a8:	5fffb27d 	bne	$r19,$r29,-80(0x3ffb0) # 1c003958 <shell15+0x17e8>
1c0039ac:	02805414 	addi.w	$r20,$r0,21(0x15)
1c0039b0:	001c5329 	mul.w	$r9,$r25,$r20
1c0039b4:	28808065 	ld.w	$r5,$r3,32(0x20)
1c0039b8:	1c000fab 	pcaddu12i	$r11,125(0x7d)
1c0039bc:	02a4b16b 	addi.w	$r11,$r11,-1748(0x92c)
1c0039c0:	02826161 	addi.w	$r1,$r11,152(0x98)
1c0039c4:	02bffca7 	addi.w	$r7,$r5,-1(0xfff)
1c0039c8:	02bfff39 	addi.w	$r25,$r25,-1(0xfff)
1c0039cc:	02805416 	addi.w	$r22,$r0,21(0x15)
1c0039d0:	02800c18 	addi.w	$r24,$r0,3(0x3)
1c0039d4:	29812060 	st.w	$r0,$r3,72(0x48)
1c0039d8:	29814060 	st.w	$r0,$r3,80(0x50)
1c0039dc:	29813060 	st.w	$r0,$r3,76(0x4c)
1c0039e0:	02808c1b 	addi.w	$r27,$r0,35(0x23)
1c0039e4:	29802067 	st.w	$r7,$r3,8(0x8)
1c0039e8:	29803079 	st.w	$r25,$r3,12(0xc)
1c0039ec:	0015003a 	move	$r26,$r1
1c0039f0:	02bfad37 	addi.w	$r23,$r9,-21(0xfeb)
1c0039f4:	29809077 	st.w	$r23,$r3,36(0x24)
1c0039f8:	28802071 	ld.w	$r17,$r3,8(0x8)
1c0039fc:	02bfff0f 	addi.w	$r15,$r24,-1(0xfff)
1c003a00:	2980406f 	st.w	$r15,$r3,16(0x10)
1c003a04:	02800810 	addi.w	$r16,$r0,2(0x2)
1c003a08:	6408ca11 	bge	$r16,$r17,2248(0x8c8) # 1c0042d0 <shell15+0x2160>
1c003a0c:	0280541e 	addi.w	$r30,$r0,21(0x15)
1c003a10:	02bfff06 	addi.w	$r6,$r24,-1(0xfff)
1c003a14:	02805412 	addi.w	$r18,$r0,21(0x15)
1c003a18:	001c78c8 	mul.w	$r8,$r6,$r30
1c003a1c:	2880807f 	ld.w	$r31,$r3,32(0x20)
1c003a20:	0280638a 	addi.w	$r10,$r28,24(0x18)
1c003a24:	02bfac1d 	addi.w	$r29,$r0,-21(0xfeb)
1c003a28:	00105957 	add.w	$r23,$r10,$r22
1c003a2c:	00115bb3 	sub.w	$r19,$r29,$r22
1c003a30:	0280080a 	addi.w	$r10,$r0,2(0x2)
1c003a34:	02bffbed 	addi.w	$r13,$r31,-2(0xffe)
1c003a38:	00150359 	move	$r25,$r26
1c003a3c:	29806073 	st.w	$r19,$r3,24(0x18)
1c003a40:	0011614b 	sub.w	$r11,$r10,$r24
1c003a44:	2980706d 	st.w	$r13,$r3,28(0x1c)
1c003a48:	001c4b04 	mul.w	$r4,$r24,$r18
1c003a4c:	0010238e 	add.w	$r14,$r28,$r8
1c003a50:	2980b06e 	st.w	$r14,$r3,44(0x2c)
1c003a54:	29805064 	st.w	$r4,$r3,20(0x14)
1c003a58:	50001c00 	b	28(0x1c) # 1c003a74 <shell15+0x1904>
1c003a5c:	03400000 	andi	$r0,$r0,0x0
1c003a60:	001503ea 	move	$r10,$r31
1c003a64:	2880207f 	ld.w	$r31,$r3,8(0x8)
1c003a68:	02801339 	addi.w	$r25,$r25,4(0x4)
1c003a6c:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c003a70:	6408615f 	bge	$r10,$r31,2144(0x860) # 1c0042d0 <shell15+0x2160>
1c003a74:	283ffee9 	ld.b	$r9,$r23,-1(0xfff)
1c003a78:	0280b80c 	addi.w	$r12,$r0,46(0x2e)
1c003a7c:	0280055f 	addi.w	$r31,$r10,1(0x1)
1c003a80:	5fffe12c 	bne	$r9,$r12,-32(0x3ffe0) # 1c003a60 <shell15+0x18f0>
1c003a84:	280002f4 	ld.b	$r20,$r23,0
1c003a88:	5fffda9b 	bne	$r20,$r27,-40(0x3ffd8) # 1c003a60 <shell15+0x18f0>
1c003a8c:	2880233d 	ld.w	$r29,$r25,8(0x8)
1c003a90:	5fffd3a0 	bne	$r29,$r0,-48(0x3ffd0) # 1c003a60 <shell15+0x18f0>
1c003a94:	28802067 	ld.w	$r7,$r3,8(0x8)
1c003a98:	02800945 	addi.w	$r5,$r10,2(0x2)
1c003a9c:	2980d065 	st.w	$r5,$r3,52(0x34)
1c003aa0:	02800410 	addi.w	$r16,$r0,1(0x1)
1c003aa4:	640150a7 	bge	$r5,$r7,336(0x150) # 1c003bf4 <shell15+0x1a84>
1c003aa8:	280006e1 	ld.b	$r1,$r23,1(0x1)
1c003aac:	5c01483b 	bne	$r1,$r27,328(0x148) # 1c003bf4 <shell15+0x1a84>
1c003ab0:	2880706f 	ld.w	$r15,$r3,28(0x1c)
1c003ab4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003ab8:	02bffee4 	addi.w	$r4,$r23,-1(0xfff)
1c003abc:	001129f2 	sub.w	$r18,$r15,$r10
1c003ac0:	02bffa51 	addi.w	$r17,$r18,-2(0xffe)
1c003ac4:	03401e26 	andi	$r6,$r17,0x7
1c003ac8:	580098c0 	beq	$r6,$r0,152(0x98) # 1c003b60 <shell15+0x19f0>
1c003acc:	28000ae8 	ld.b	$r8,$r23,2(0x2)
1c003ad0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003ad4:	5c011d1b 	bne	$r8,$r27,284(0x11c) # 1c003bf0 <shell15+0x1a80>
1c003ad8:	580088d0 	beq	$r6,$r16,136(0x88) # 1c003b60 <shell15+0x19f0>
1c003adc:	580074cc 	beq	$r6,$r12,116(0x74) # 1c003b50 <shell15+0x19e0>
1c003ae0:	02800c10 	addi.w	$r16,$r0,3(0x3)
1c003ae4:	58005cd0 	beq	$r6,$r16,92(0x5c) # 1c003b40 <shell15+0x19d0>
1c003ae8:	02801013 	addi.w	$r19,$r0,4(0x4)
1c003aec:	580044d3 	beq	$r6,$r19,68(0x44) # 1c003b30 <shell15+0x19c0>
1c003af0:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c003af4:	58002ccd 	beq	$r6,$r13,44(0x2c) # 1c003b20 <shell15+0x19b0>
1c003af8:	0280180e 	addi.w	$r14,$r0,6(0x6)
1c003afc:	580014ce 	beq	$r6,$r14,20(0x14) # 1c003b10 <shell15+0x19a0>
1c003b00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b04:	00103094 	add.w	$r20,$r4,$r12
1c003b08:	28000685 	ld.b	$r5,$r20,1(0x1)
1c003b0c:	5c00e4bb 	bne	$r5,$r27,228(0xe4) # 1c003bf0 <shell15+0x1a80>
1c003b10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b14:	00103087 	add.w	$r7,$r4,$r12
1c003b18:	280004e1 	ld.b	$r1,$r7,1(0x1)
1c003b1c:	5c00d43b 	bne	$r1,$r27,212(0xd4) # 1c003bf0 <shell15+0x1a80>
1c003b20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b24:	0010308f 	add.w	$r15,$r4,$r12
1c003b28:	280005f1 	ld.b	$r17,$r15,1(0x1)
1c003b2c:	5c00c63b 	bne	$r17,$r27,196(0xc4) # 1c003bf0 <shell15+0x1a80>
1c003b30:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b34:	00103086 	add.w	$r6,$r4,$r12
1c003b38:	280004c8 	ld.b	$r8,$r6,1(0x1)
1c003b3c:	5c00b51b 	bne	$r8,$r27,180(0xb4) # 1c003bf0 <shell15+0x1a80>
1c003b40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b44:	00103090 	add.w	$r16,$r4,$r12
1c003b48:	28000613 	ld.b	$r19,$r16,1(0x1)
1c003b4c:	5c00a67b 	bne	$r19,$r27,164(0xa4) # 1c003bf0 <shell15+0x1a80>
1c003b50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b54:	0010308d 	add.w	$r13,$r4,$r12
1c003b58:	280005ae 	ld.b	$r14,$r13,1(0x1)
1c003b5c:	5c0095db 	bne	$r14,$r27,148(0x94) # 1c003bf0 <shell15+0x1a80>
1c003b60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b64:	00150250 	move	$r16,$r18
1c003b68:	00103094 	add.w	$r20,$r4,$r12
1c003b6c:	00150185 	move	$r5,$r12
1c003b70:	58008592 	beq	$r12,$r18,132(0x84) # 1c003bf4 <shell15+0x1a84>
1c003b74:	28000687 	ld.b	$r7,$r20,1(0x1)
1c003b78:	5c0078fb 	bne	$r7,$r27,120(0x78) # 1c003bf0 <shell15+0x1a80>
1c003b7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b80:	00103081 	add.w	$r1,$r4,$r12
1c003b84:	2800042f 	ld.b	$r15,$r1,1(0x1)
1c003b88:	5c0069fb 	bne	$r15,$r27,104(0x68) # 1c003bf0 <shell15+0x1a80>
1c003b8c:	028008ac 	addi.w	$r12,$r5,2(0x2)
1c003b90:	00103091 	add.w	$r17,$r4,$r12
1c003b94:	28000626 	ld.b	$r6,$r17,1(0x1)
1c003b98:	5c0058db 	bne	$r6,$r27,88(0x58) # 1c003bf0 <shell15+0x1a80>
1c003b9c:	02800cac 	addi.w	$r12,$r5,3(0x3)
1c003ba0:	00103088 	add.w	$r8,$r4,$r12
1c003ba4:	28000510 	ld.b	$r16,$r8,1(0x1)
1c003ba8:	5c004a1b 	bne	$r16,$r27,72(0x48) # 1c003bf0 <shell15+0x1a80>
1c003bac:	028010ac 	addi.w	$r12,$r5,4(0x4)
1c003bb0:	00103093 	add.w	$r19,$r4,$r12
1c003bb4:	2800066d 	ld.b	$r13,$r19,1(0x1)
1c003bb8:	5c0039bb 	bne	$r13,$r27,56(0x38) # 1c003bf0 <shell15+0x1a80>
1c003bbc:	028014ac 	addi.w	$r12,$r5,5(0x5)
1c003bc0:	0010308e 	add.w	$r14,$r4,$r12
1c003bc4:	280005d4 	ld.b	$r20,$r14,1(0x1)
1c003bc8:	5c002a9b 	bne	$r20,$r27,40(0x28) # 1c003bf0 <shell15+0x1a80>
1c003bcc:	028018ac 	addi.w	$r12,$r5,6(0x6)
1c003bd0:	00103087 	add.w	$r7,$r4,$r12
1c003bd4:	280004e1 	ld.b	$r1,$r7,1(0x1)
1c003bd8:	5c00183b 	bne	$r1,$r27,24(0x18) # 1c003bf0 <shell15+0x1a80>
1c003bdc:	02801cac 	addi.w	$r12,$r5,7(0x7)
1c003be0:	00103085 	add.w	$r5,$r4,$r12
1c003be4:	280004af 	ld.b	$r15,$r5,1(0x1)
1c003be8:	5bff79fb 	beq	$r15,$r27,-136(0x3ff78) # 1c003b60 <shell15+0x19f0>
1c003bec:	03400000 	andi	$r0,$r0,0x0
1c003bf0:	00150190 	move	$r16,$r12
1c003bf4:	28803072 	ld.w	$r18,$r3,12(0xc)
1c003bf8:	67fe6b12 	bge	$r24,$r18,-408(0x3fe68) # 1c003a60 <shell15+0x18f0>
1c003bfc:	28806064 	ld.w	$r4,$r3,24(0x18)
1c003c00:	28805066 	ld.w	$r6,$r3,20(0x14)
1c003c04:	001502ed 	move	$r13,$r23
1c003c08:	00105c91 	add.w	$r17,$r4,$r23
1c003c0c:	00101a28 	add.w	$r8,$r17,$r6
1c003c10:	28000113 	ld.b	$r19,$r8,0
1c003c14:	0015030c 	move	$r12,$r24
1c003c18:	5ffe4a7b 	bne	$r19,$r27,-440(0x3fe48) # 1c003a60 <shell15+0x18f0>
1c003c1c:	0014600e 	nor	$r14,$r0,$r24
1c003c20:	001049d4 	add.w	$r20,$r14,$r18
1c003c24:	03401e87 	andi	$r7,$r20,0x7
1c003c28:	5800c0e0 	beq	$r7,$r0,192(0xc0) # 1c003ce8 <shell15+0x1b78>
1c003c2c:	028056ed 	addi.w	$r13,$r23,21(0x15)
1c003c30:	280055a1 	ld.b	$r1,$r13,21(0x15)
1c003c34:	0010616e 	add.w	$r14,$r11,$r24
1c003c38:	0280070c 	addi.w	$r12,$r24,1(0x1)
1c003c3c:	5c01383b 	bne	$r1,$r27,312(0x138) # 1c003d74 <shell15+0x1c04>
1c003c40:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003c44:	5800a4e5 	beq	$r7,$r5,164(0xa4) # 1c003ce8 <shell15+0x1b78>
1c003c48:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c003c4c:	580088ef 	beq	$r7,$r15,136(0x88) # 1c003cd4 <shell15+0x1b64>
1c003c50:	02800c12 	addi.w	$r18,$r0,3(0x3)
1c003c54:	58006cf2 	beq	$r7,$r18,108(0x6c) # 1c003cc0 <shell15+0x1b50>
1c003c58:	02801004 	addi.w	$r4,$r0,4(0x4)
1c003c5c:	580050e4 	beq	$r7,$r4,80(0x50) # 1c003cac <shell15+0x1b3c>
1c003c60:	02801411 	addi.w	$r17,$r0,5(0x5)
1c003c64:	580034f1 	beq	$r7,$r17,52(0x34) # 1c003c98 <shell15+0x1b28>
1c003c68:	02801806 	addi.w	$r6,$r0,6(0x6)
1c003c6c:	580018e6 	beq	$r7,$r6,24(0x18) # 1c003c84 <shell15+0x1b14>
1c003c70:	2800a9a8 	ld.b	$r8,$r13,42(0x2a)
1c003c74:	0010316e 	add.w	$r14,$r11,$r12
1c003c78:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c003c7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003c80:	5c00f51b 	bne	$r8,$r27,244(0xf4) # 1c003d74 <shell15+0x1c04>
1c003c84:	2800a9b3 	ld.b	$r19,$r13,42(0x2a)
1c003c88:	0010316e 	add.w	$r14,$r11,$r12
1c003c8c:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c003c90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003c94:	5c00e27b 	bne	$r19,$r27,224(0xe0) # 1c003d74 <shell15+0x1c04>
1c003c98:	2800a9b4 	ld.b	$r20,$r13,42(0x2a)
1c003c9c:	0010316e 	add.w	$r14,$r11,$r12
1c003ca0:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c003ca4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ca8:	5c00ce9b 	bne	$r20,$r27,204(0xcc) # 1c003d74 <shell15+0x1c04>
1c003cac:	2800a9a7 	ld.b	$r7,$r13,42(0x2a)
1c003cb0:	0010316e 	add.w	$r14,$r11,$r12
1c003cb4:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c003cb8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003cbc:	5c00b8fb 	bne	$r7,$r27,184(0xb8) # 1c003d74 <shell15+0x1c04>
1c003cc0:	2800a9a1 	ld.b	$r1,$r13,42(0x2a)
1c003cc4:	0010316e 	add.w	$r14,$r11,$r12
1c003cc8:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c003ccc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003cd0:	5c00a43b 	bne	$r1,$r27,164(0xa4) # 1c003d74 <shell15+0x1c04>
1c003cd4:	028055ad 	addi.w	$r13,$r13,21(0x15)
1c003cd8:	280055a5 	ld.b	$r5,$r13,21(0x15)
1c003cdc:	0010316e 	add.w	$r14,$r11,$r12
1c003ce0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ce4:	5c0090bb 	bne	$r5,$r27,144(0x90) # 1c003d74 <shell15+0x1c04>
1c003ce8:	28803064 	ld.w	$r4,$r3,12(0xc)
1c003cec:	0280058f 	addi.w	$r15,$r12,1(0x1)
1c003cf0:	0010316e 	add.w	$r14,$r11,$r12
1c003cf4:	02800992 	addi.w	$r18,$r12,2(0x2)
1c003cf8:	02800d88 	addi.w	$r8,$r12,3(0x3)
1c003cfc:	640079e4 	bge	$r15,$r4,120(0x78) # 1c003d74 <shell15+0x1c04>
1c003d00:	2800a9b1 	ld.b	$r17,$r13,42(0x2a)
1c003d04:	02801193 	addi.w	$r19,$r12,4(0x4)
1c003d08:	02801594 	addi.w	$r20,$r12,5(0x5)
1c003d0c:	02801986 	addi.w	$r6,$r12,6(0x6)
1c003d10:	02801d87 	addi.w	$r7,$r12,7(0x7)
1c003d14:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c003d18:	5c005e3b 	bne	$r17,$r27,92(0x5c) # 1c003d74 <shell15+0x1c04>
1c003d1c:	2800fda1 	ld.b	$r1,$r13,63(0x3f)
1c003d20:	00103d6e 	add.w	$r14,$r11,$r15
1c003d24:	5c00503b 	bne	$r1,$r27,80(0x50) # 1c003d74 <shell15+0x1c04>
1c003d28:	280151a5 	ld.b	$r5,$r13,84(0x54)
1c003d2c:	0010496e 	add.w	$r14,$r11,$r18
1c003d30:	5c0044bb 	bne	$r5,$r27,68(0x44) # 1c003d74 <shell15+0x1c04>
1c003d34:	2801a5af 	ld.b	$r15,$r13,105(0x69)
1c003d38:	0010216e 	add.w	$r14,$r11,$r8
1c003d3c:	5c0039fb 	bne	$r15,$r27,56(0x38) # 1c003d74 <shell15+0x1c04>
1c003d40:	2801f9b2 	ld.b	$r18,$r13,126(0x7e)
1c003d44:	00104d6e 	add.w	$r14,$r11,$r19
1c003d48:	5c002e5b 	bne	$r18,$r27,44(0x2c) # 1c003d74 <shell15+0x1c04>
1c003d4c:	28024da8 	ld.b	$r8,$r13,147(0x93)
1c003d50:	0010516e 	add.w	$r14,$r11,$r20
1c003d54:	5c00211b 	bne	$r8,$r27,32(0x20) # 1c003d74 <shell15+0x1c04>
1c003d58:	0282a1ad 	addi.w	$r13,$r13,168(0xa8)
1c003d5c:	280001a4 	ld.b	$r4,$r13,0
1c003d60:	0010196e 	add.w	$r14,$r11,$r6
1c003d64:	5c00109b 	bne	$r4,$r27,16(0x10) # 1c003d74 <shell15+0x1c04>
1c003d68:	280055b1 	ld.b	$r17,$r13,21(0x15)
1c003d6c:	00101d6e 	add.w	$r14,$r11,$r7
1c003d70:	5bff7a3b 	beq	$r17,$r27,-136(0x3ff78) # 1c003ce8 <shell15+0x1b78>
1c003d74:	00408613 	slli.w	$r19,$r16,0x1
1c003d78:	00113a72 	sub.w	$r18,$r19,$r14
1c003d7c:	67fce412 	bge	$r0,$r18,-796(0x3fce4) # 1c003a60 <shell15+0x18f0>
1c003d80:	02bff414 	addi.w	$r20,$r0,-3(0xffd)
1c003d84:	001c5206 	mul.w	$r6,$r16,$r20
1c003d88:	004085c7 	slli.w	$r7,$r14,0x1
1c003d8c:	001018ec 	add.w	$r12,$r7,$r6
1c003d90:	2980a06c 	st.w	$r12,$r3,40(0x28)
1c003d94:	67fccc0c 	bge	$r0,$r12,-820(0x3fccc) # 1c003a60 <shell15+0x18f0>
1c003d98:	00104150 	add.w	$r16,$r10,$r16
1c003d9c:	02800601 	addi.w	$r1,$r16,1(0x1)
1c003da0:	29810070 	st.w	$r16,$r3,64(0x40)
1c003da4:	2980e061 	st.w	$r1,$r3,56(0x38)
1c003da8:	6006b02a 	blt	$r1,$r10,1712(0x6b0) # 1c004458 <shell15+0x22e8>
1c003dac:	283faae8 	ld.b	$r8,$r23,-22(0xfea)
1c003db0:	5bfcb11b 	beq	$r8,$r27,-848(0x3fcb0) # 1c003a60 <shell15+0x18f0>
1c003db4:	2880406d 	ld.w	$r13,$r3,16(0x10)
1c003db8:	001035c4 	add.w	$r4,$r14,$r13
1c003dbc:	001c7891 	mul.w	$r17,$r4,$r30
1c003dc0:	29816064 	st.w	$r4,$r3,88(0x58)
1c003dc4:	0010478e 	add.w	$r14,$r28,$r17
1c003dc8:	001029d3 	add.w	$r19,$r14,$r10
1c003dcc:	28000274 	ld.b	$r20,$r19,0
1c003dd0:	5bfc929b 	beq	$r20,$r27,-880(0x3fc90) # 1c003a60 <shell15+0x18f0>
1c003dd4:	28810070 	ld.w	$r16,$r3,64(0x40)
1c003dd8:	1c000fa7 	pcaddu12i	$r7,125(0x7d)
1c003ddc:	02ba30e7 	addi.w	$r7,$r7,-372(0xe8c)
1c003de0:	028004e1 	addi.w	$r1,$r7,1(0x1)
1c003de4:	00102a26 	add.w	$r6,$r17,$r10
1c003de8:	00104025 	add.w	$r5,$r1,$r16
1c003dec:	001044af 	add.w	$r15,$r5,$r17
1c003df0:	00101b8c 	add.w	$r12,$r28,$r6
1c003df4:	02bfac08 	addi.w	$r8,$r0,-21(0xfeb)
1c003df8:	001c208d 	mul.w	$r13,$r4,$r8
1c003dfc:	001131e4 	sub.w	$r4,$r15,$r12
1c003e00:	03401c91 	andi	$r17,$r4,0x7
1c003e04:	5800fa20 	beq	$r17,$r0,248(0xf8) # 1c003efc <shell15+0x1d8c>
1c003e08:	0010598e 	add.w	$r14,$r12,$r22
1c003e0c:	001035d3 	add.w	$r19,$r14,$r13
1c003e10:	28000674 	ld.b	$r20,$r19,1(0x1)
1c003e14:	5bfc4e9b 	beq	$r20,$r27,-948(0x3fc4c) # 1c003a60 <shell15+0x18f0>
1c003e18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003e1c:	28000186 	ld.b	$r6,$r12,0
1c003e20:	5bfc40db 	beq	$r6,$r27,-960(0x3fc40) # 1c003a60 <shell15+0x18f0>
1c003e24:	02800407 	addi.w	$r7,$r0,1(0x1)
1c003e28:	5800d627 	beq	$r17,$r7,212(0xd4) # 1c003efc <shell15+0x1d8c>
1c003e2c:	02800801 	addi.w	$r1,$r0,2(0x2)
1c003e30:	5800b221 	beq	$r17,$r1,176(0xb0) # 1c003ee0 <shell15+0x1d70>
1c003e34:	02800c10 	addi.w	$r16,$r0,3(0x3)
1c003e38:	58008e30 	beq	$r17,$r16,140(0x8c) # 1c003ec4 <shell15+0x1d54>
1c003e3c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003e40:	58006a25 	beq	$r17,$r5,104(0x68) # 1c003ea8 <shell15+0x1d38>
1c003e44:	02801408 	addi.w	$r8,$r0,5(0x5)
1c003e48:	58004628 	beq	$r17,$r8,68(0x44) # 1c003e8c <shell15+0x1d1c>
1c003e4c:	02801804 	addi.w	$r4,$r0,6(0x6)
1c003e50:	58002224 	beq	$r17,$r4,32(0x20) # 1c003e70 <shell15+0x1d00>
1c003e54:	00105991 	add.w	$r17,$r12,$r22
1c003e58:	0010362e 	add.w	$r14,$r17,$r13
1c003e5c:	280005d3 	ld.b	$r19,$r14,1(0x1)
1c003e60:	5bfc027b 	beq	$r19,$r27,-1024(0x3fc00) # 1c003a60 <shell15+0x18f0>
1c003e64:	28000594 	ld.b	$r20,$r12,1(0x1)
1c003e68:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003e6c:	5bfbf69b 	beq	$r20,$r27,-1036(0x3fbf4) # 1c003a60 <shell15+0x18f0>
1c003e70:	00105986 	add.w	$r6,$r12,$r22
1c003e74:	001034c7 	add.w	$r7,$r6,$r13
1c003e78:	280004e1 	ld.b	$r1,$r7,1(0x1)
1c003e7c:	5bfbe43b 	beq	$r1,$r27,-1052(0x3fbe4) # 1c003a60 <shell15+0x18f0>
1c003e80:	28000590 	ld.b	$r16,$r12,1(0x1)
1c003e84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003e88:	5bfbda1b 	beq	$r16,$r27,-1064(0x3fbd8) # 1c003a60 <shell15+0x18f0>
1c003e8c:	00105985 	add.w	$r5,$r12,$r22
1c003e90:	001034a8 	add.w	$r8,$r5,$r13
1c003e94:	28000504 	ld.b	$r4,$r8,1(0x1)
1c003e98:	5bfbc89b 	beq	$r4,$r27,-1080(0x3fbc8) # 1c003a60 <shell15+0x18f0>
1c003e9c:	28000591 	ld.b	$r17,$r12,1(0x1)
1c003ea0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ea4:	5bfbbe3b 	beq	$r17,$r27,-1092(0x3fbbc) # 1c003a60 <shell15+0x18f0>
1c003ea8:	0010598e 	add.w	$r14,$r12,$r22
1c003eac:	001035d3 	add.w	$r19,$r14,$r13
1c003eb0:	28000674 	ld.b	$r20,$r19,1(0x1)
1c003eb4:	5bfbae9b 	beq	$r20,$r27,-1108(0x3fbac) # 1c003a60 <shell15+0x18f0>
1c003eb8:	28000586 	ld.b	$r6,$r12,1(0x1)
1c003ebc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ec0:	5bfba0db 	beq	$r6,$r27,-1120(0x3fba0) # 1c003a60 <shell15+0x18f0>
1c003ec4:	00105987 	add.w	$r7,$r12,$r22
1c003ec8:	001034e1 	add.w	$r1,$r7,$r13
1c003ecc:	28000430 	ld.b	$r16,$r1,1(0x1)
1c003ed0:	5bfb921b 	beq	$r16,$r27,-1136(0x3fb90) # 1c003a60 <shell15+0x18f0>
1c003ed4:	28000585 	ld.b	$r5,$r12,1(0x1)
1c003ed8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003edc:	5bfb84bb 	beq	$r5,$r27,-1148(0x3fb84) # 1c003a60 <shell15+0x18f0>
1c003ee0:	00105988 	add.w	$r8,$r12,$r22
1c003ee4:	00103504 	add.w	$r4,$r8,$r13
1c003ee8:	28000491 	ld.b	$r17,$r4,1(0x1)
1c003eec:	5bfb763b 	beq	$r17,$r27,-1164(0x3fb74) # 1c003a60 <shell15+0x18f0>
1c003ef0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ef4:	2800018e 	ld.b	$r14,$r12,0
1c003ef8:	5bfb69db 	beq	$r14,$r27,-1176(0x3fb68) # 1c003a60 <shell15+0x18f0>
1c003efc:	5805698f 	beq	$r12,$r15,1384(0x568) # 1c004464 <shell15+0x22f4>
1c003f00:	00105985 	add.w	$r5,$r12,$r22
1c003f04:	001034ae 	add.w	$r14,$r5,$r13
1c003f08:	280005d4 	ld.b	$r20,$r14,1(0x1)
1c003f0c:	5bfb569b 	beq	$r20,$r27,-1196(0x3fb54) # 1c003a60 <shell15+0x18f0>
1c003f10:	28000584 	ld.b	$r4,$r12,1(0x1)
1c003f14:	02800586 	addi.w	$r6,$r12,1(0x1)
1c003f18:	5bfb489b 	beq	$r4,$r27,-1208(0x3fb48) # 1c003a60 <shell15+0x18f0>
1c003f1c:	001058d3 	add.w	$r19,$r6,$r22
1c003f20:	00103667 	add.w	$r7,$r19,$r13
1c003f24:	280004e1 	ld.b	$r1,$r7,1(0x1)
1c003f28:	5bfb383b 	beq	$r1,$r27,-1224(0x3fb38) # 1c003a60 <shell15+0x18f0>
1c003f2c:	28000988 	ld.b	$r8,$r12,2(0x2)
1c003f30:	02800990 	addi.w	$r16,$r12,2(0x2)
1c003f34:	5bfb2d1b 	beq	$r8,$r27,-1236(0x3fb2c) # 1c003a60 <shell15+0x18f0>
1c003f38:	00105a11 	add.w	$r17,$r16,$r22
1c003f3c:	00103625 	add.w	$r5,$r17,$r13
1c003f40:	280004ae 	ld.b	$r14,$r5,1(0x1)
1c003f44:	5bfb1ddb 	beq	$r14,$r27,-1252(0x3fb1c) # 1c003a60 <shell15+0x18f0>
1c003f48:	28000d94 	ld.b	$r20,$r12,3(0x3)
1c003f4c:	02800d84 	addi.w	$r4,$r12,3(0x3)
1c003f50:	5bfb129b 	beq	$r20,$r27,-1264(0x3fb10) # 1c003a60 <shell15+0x18f0>
1c003f54:	00105893 	add.w	$r19,$r4,$r22
1c003f58:	00103667 	add.w	$r7,$r19,$r13
1c003f5c:	280004e1 	ld.b	$r1,$r7,1(0x1)
1c003f60:	5bfb003b 	beq	$r1,$r27,-1280(0x3fb00) # 1c003a60 <shell15+0x18f0>
1c003f64:	28001188 	ld.b	$r8,$r12,4(0x4)
1c003f68:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003f6c:	5bfaf51b 	beq	$r8,$r27,-1292(0x3faf4) # 1c003a60 <shell15+0x18f0>
1c003f70:	00105990 	add.w	$r16,$r12,$r22
1c003f74:	00103611 	add.w	$r17,$r16,$r13
1c003f78:	28000625 	ld.b	$r5,$r17,1(0x1)
1c003f7c:	5bfae4bb 	beq	$r5,$r27,-1308(0x3fae4) # 1c003a60 <shell15+0x18f0>
1c003f80:	280010ce 	ld.b	$r14,$r6,4(0x4)
1c003f84:	028010d4 	addi.w	$r20,$r6,4(0x4)
1c003f88:	5bfad9db 	beq	$r14,$r27,-1320(0x3fad8) # 1c003a60 <shell15+0x18f0>
1c003f8c:	00105a84 	add.w	$r4,$r20,$r22
1c003f90:	00103493 	add.w	$r19,$r4,$r13
1c003f94:	28000667 	ld.b	$r7,$r19,1(0x1)
1c003f98:	5bfac8fb 	beq	$r7,$r27,-1336(0x3fac8) # 1c003a60 <shell15+0x18f0>
1c003f9c:	280014c1 	ld.b	$r1,$r6,5(0x5)
1c003fa0:	028014c8 	addi.w	$r8,$r6,5(0x5)
1c003fa4:	5bfabc3b 	beq	$r1,$r27,-1348(0x3fabc) # 1c003a60 <shell15+0x18f0>
1c003fa8:	0010590c 	add.w	$r12,$r8,$r22
1c003fac:	00103590 	add.w	$r16,$r12,$r13
1c003fb0:	28000611 	ld.b	$r17,$r16,1(0x1)
1c003fb4:	5bfaae3b 	beq	$r17,$r27,-1364(0x3faac) # 1c003a60 <shell15+0x18f0>
1c003fb8:	280018c5 	ld.b	$r5,$r6,6(0x6)
1c003fbc:	028018ce 	addi.w	$r14,$r6,6(0x6)
1c003fc0:	5bfaa0bb 	beq	$r5,$r27,-1376(0x3faa0) # 1c003a60 <shell15+0x18f0>
1c003fc4:	001059d4 	add.w	$r20,$r14,$r22
1c003fc8:	00103684 	add.w	$r4,$r20,$r13
1c003fcc:	28000493 	ld.b	$r19,$r4,1(0x1)
1c003fd0:	5bfa927b 	beq	$r19,$r27,-1392(0x3fa90) # 1c003a60 <shell15+0x18f0>
1c003fd4:	28001cc7 	ld.b	$r7,$r6,7(0x7)
1c003fd8:	02801ccc 	addi.w	$r12,$r6,7(0x7)
1c003fdc:	5fff20fb 	bne	$r7,$r27,-224(0x3ff20) # 1c003efc <shell15+0x1d8c>
1c003fe0:	53fa83ff 	b	-1408(0xffffa80) # 1c003a60 <shell15+0x18f0>
1c003fe4:	00103d8e 	add.w	$r14,$r12,$r15
1c003fe8:	001051d6 	add.w	$r22,$r14,$r20
1c003fec:	280002ce 	ld.b	$r14,$r22,0
1c003ff0:	580079cd 	beq	$r14,$r13,120(0x78) # 1c004068 <shell15+0x1ef8>
1c003ff4:	00104196 	add.w	$r22,$r12,$r16
1c003ff8:	001016ce 	add.w	$r14,$r22,$r5
1c003ffc:	280001d6 	ld.b	$r22,$r14,0
1c004000:	58006acd 	beq	$r22,$r13,104(0x68) # 1c004068 <shell15+0x1ef8>
1c004004:	0010458e 	add.w	$r14,$r12,$r17
1c004008:	00101dd6 	add.w	$r22,$r14,$r7
1c00400c:	280002ce 	ld.b	$r14,$r22,0
1c004010:	580059cd 	beq	$r14,$r13,88(0x58) # 1c004068 <shell15+0x1ef8>
1c004014:	00104996 	add.w	$r22,$r12,$r18
1c004018:	001026ce 	add.w	$r14,$r22,$r9
1c00401c:	280001d6 	ld.b	$r22,$r14,0
1c004020:	58004acd 	beq	$r22,$r13,72(0x48) # 1c004068 <shell15+0x1ef8>
1c004024:	0010118e 	add.w	$r14,$r12,$r4
1c004028:	00102dd6 	add.w	$r22,$r14,$r11
1c00402c:	280002ce 	ld.b	$r14,$r22,0
1c004030:	580039cd 	beq	$r14,$r13,56(0x38) # 1c004068 <shell15+0x1ef8>
1c004034:	00101996 	add.w	$r22,$r12,$r6
1c004038:	001006ce 	add.w	$r14,$r22,$r1
1c00403c:	280001d6 	ld.b	$r22,$r14,0
1c004040:	58002acd 	beq	$r22,$r13,40(0x28) # 1c004068 <shell15+0x1ef8>
1c004044:	0010218e 	add.w	$r14,$r12,$r8
1c004048:	00105dd6 	add.w	$r22,$r14,$r23
1c00404c:	280002ce 	ld.b	$r14,$r22,0
1c004050:	580019cd 	beq	$r14,$r13,24(0x18) # 1c004068 <shell15+0x1ef8>
1c004054:	00102996 	add.w	$r22,$r12,$r10
1c004058:	00106ace 	add.w	$r14,$r22,$r26
1c00405c:	280001d6 	ld.b	$r22,$r14,0
1c004060:	58000acd 	beq	$r22,$r13,8(0x8) # 1c004068 <shell15+0x1ef8>
1c004064:	2900019b 	st.b	$r27,$r12,0
1c004068:	28000596 	ld.b	$r22,$r12,1(0x1)
1c00406c:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c004070:	58003acd 	beq	$r22,$r13,56(0x38) # 1c0040a8 <shell15+0x1f38>
1c004074:	28000996 	ld.b	$r22,$r12,2(0x2)
1c004078:	0280098e 	addi.w	$r14,$r12,2(0x2)
1c00407c:	5800becd 	beq	$r22,$r13,188(0xbc) # 1c004138 <shell15+0x1fc8>
1c004080:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c004084:	5bf92198 	beq	$r12,$r24,-1760(0x3f920) # 1c0039a4 <shell15+0x1834>
1c004088:	2800018e 	ld.b	$r14,$r12,0
1c00408c:	5802bdcd 	beq	$r14,$r13,700(0x2bc) # 1c004348 <shell15+0x21d8>
1c004090:	28000596 	ld.b	$r22,$r12,1(0x1)
1c004094:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004098:	5bff4ecd 	beq	$r22,$r13,-180(0x3ff4c) # 1c003fe4 <shell15+0x1e74>
1c00409c:	28000596 	ld.b	$r22,$r12,1(0x1)
1c0040a0:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c0040a4:	5fffd2cd 	bne	$r22,$r13,-48(0x3ffd0) # 1c004074 <shell15+0x1f04>
1c0040a8:	00103dd6 	add.w	$r22,$r14,$r15
1c0040ac:	001052d6 	add.w	$r22,$r22,$r20
1c0040b0:	280002d6 	ld.b	$r22,$r22,0
1c0040b4:	5bffc2cd 	beq	$r22,$r13,-64(0x3ffc0) # 1c004074 <shell15+0x1f04>
1c0040b8:	001041d6 	add.w	$r22,$r14,$r16
1c0040bc:	001016d6 	add.w	$r22,$r22,$r5
1c0040c0:	280002d6 	ld.b	$r22,$r22,0
1c0040c4:	5bffb2cd 	beq	$r22,$r13,-80(0x3ffb0) # 1c004074 <shell15+0x1f04>
1c0040c8:	001045d6 	add.w	$r22,$r14,$r17
1c0040cc:	00101ed6 	add.w	$r22,$r22,$r7
1c0040d0:	280002d6 	ld.b	$r22,$r22,0
1c0040d4:	5bffa2cd 	beq	$r22,$r13,-96(0x3ffa0) # 1c004074 <shell15+0x1f04>
1c0040d8:	001049d6 	add.w	$r22,$r14,$r18
1c0040dc:	001026d6 	add.w	$r22,$r22,$r9
1c0040e0:	280002d6 	ld.b	$r22,$r22,0
1c0040e4:	5bff92cd 	beq	$r22,$r13,-112(0x3ff90) # 1c004074 <shell15+0x1f04>
1c0040e8:	001011d6 	add.w	$r22,$r14,$r4
1c0040ec:	00102ed6 	add.w	$r22,$r22,$r11
1c0040f0:	280002d6 	ld.b	$r22,$r22,0
1c0040f4:	5bff82cd 	beq	$r22,$r13,-128(0x3ff80) # 1c004074 <shell15+0x1f04>
1c0040f8:	001019d6 	add.w	$r22,$r14,$r6
1c0040fc:	001006d6 	add.w	$r22,$r22,$r1
1c004100:	280002d6 	ld.b	$r22,$r22,0
1c004104:	5bff72cd 	beq	$r22,$r13,-144(0x3ff70) # 1c004074 <shell15+0x1f04>
1c004108:	001021d6 	add.w	$r22,$r14,$r8
1c00410c:	00105ed6 	add.w	$r22,$r22,$r23
1c004110:	280002d6 	ld.b	$r22,$r22,0
1c004114:	5bff62cd 	beq	$r22,$r13,-160(0x3ff60) # 1c004074 <shell15+0x1f04>
1c004118:	001029ce 	add.w	$r14,$r14,$r10
1c00411c:	001069d6 	add.w	$r22,$r14,$r26
1c004120:	280002ce 	ld.b	$r14,$r22,0
1c004124:	5bff51cd 	beq	$r14,$r13,-176(0x3ff50) # 1c004074 <shell15+0x1f04>
1c004128:	28000996 	ld.b	$r22,$r12,2(0x2)
1c00412c:	2900059b 	st.b	$r27,$r12,1(0x1)
1c004130:	0280098e 	addi.w	$r14,$r12,2(0x2)
1c004134:	5fff4ecd 	bne	$r22,$r13,-180(0x3ff4c) # 1c004080 <shell15+0x1f10>
1c004138:	00103dd6 	add.w	$r22,$r14,$r15
1c00413c:	001052d6 	add.w	$r22,$r22,$r20
1c004140:	280002d6 	ld.b	$r22,$r22,0
1c004144:	5bff3ecd 	beq	$r22,$r13,-196(0x3ff3c) # 1c004080 <shell15+0x1f10>
1c004148:	001041d6 	add.w	$r22,$r14,$r16
1c00414c:	001016d6 	add.w	$r22,$r22,$r5
1c004150:	280002d6 	ld.b	$r22,$r22,0
1c004154:	5bff2ecd 	beq	$r22,$r13,-212(0x3ff2c) # 1c004080 <shell15+0x1f10>
1c004158:	001045d6 	add.w	$r22,$r14,$r17
1c00415c:	00101ed6 	add.w	$r22,$r22,$r7
1c004160:	280002d6 	ld.b	$r22,$r22,0
1c004164:	5bff1ecd 	beq	$r22,$r13,-228(0x3ff1c) # 1c004080 <shell15+0x1f10>
1c004168:	001049d6 	add.w	$r22,$r14,$r18
1c00416c:	001026d6 	add.w	$r22,$r22,$r9
1c004170:	280002d6 	ld.b	$r22,$r22,0
1c004174:	5bff0ecd 	beq	$r22,$r13,-244(0x3ff0c) # 1c004080 <shell15+0x1f10>
1c004178:	001011d6 	add.w	$r22,$r14,$r4
1c00417c:	00102ed6 	add.w	$r22,$r22,$r11
1c004180:	280002d6 	ld.b	$r22,$r22,0
1c004184:	5bfefecd 	beq	$r22,$r13,-260(0x3fefc) # 1c004080 <shell15+0x1f10>
1c004188:	001019d6 	add.w	$r22,$r14,$r6
1c00418c:	001006d6 	add.w	$r22,$r22,$r1
1c004190:	280002d6 	ld.b	$r22,$r22,0
1c004194:	5bfeeecd 	beq	$r22,$r13,-276(0x3feec) # 1c004080 <shell15+0x1f10>
1c004198:	001021d6 	add.w	$r22,$r14,$r8
1c00419c:	00105ed6 	add.w	$r22,$r22,$r23
1c0041a0:	280002d6 	ld.b	$r22,$r22,0
1c0041a4:	5bfedecd 	beq	$r22,$r13,-292(0x3fedc) # 1c004080 <shell15+0x1f10>
1c0041a8:	001029ce 	add.w	$r14,$r14,$r10
1c0041ac:	001069d6 	add.w	$r22,$r14,$r26
1c0041b0:	280002ce 	ld.b	$r14,$r22,0
1c0041b4:	5bfecdcd 	beq	$r14,$r13,-308(0x3fecc) # 1c004080 <shell15+0x1f10>
1c0041b8:	2900099b 	st.b	$r27,$r12,2(0x2)
1c0041bc:	53fec7ff 	b	-316(0xffffec4) # 1c004080 <shell15+0x1f10>
1c0041c0:	00103d96 	add.w	$r22,$r12,$r15
1c0041c4:	001052ce 	add.w	$r14,$r22,$r20
1c0041c8:	280001d6 	ld.b	$r22,$r14,0
1c0041cc:	5bf7c6cd 	beq	$r22,$r13,-2108(0x3f7c4) # 1c003990 <shell15+0x1820>
1c0041d0:	0010418e 	add.w	$r14,$r12,$r16
1c0041d4:	001015d6 	add.w	$r22,$r14,$r5
1c0041d8:	280002ce 	ld.b	$r14,$r22,0
1c0041dc:	5bf7b5cd 	beq	$r14,$r13,-2124(0x3f7b4) # 1c003990 <shell15+0x1820>
1c0041e0:	00104596 	add.w	$r22,$r12,$r17
1c0041e4:	00101ece 	add.w	$r14,$r22,$r7
1c0041e8:	280001d6 	ld.b	$r22,$r14,0
1c0041ec:	5bf7a6cd 	beq	$r22,$r13,-2140(0x3f7a4) # 1c003990 <shell15+0x1820>
1c0041f0:	0010498e 	add.w	$r14,$r12,$r18
1c0041f4:	001025d6 	add.w	$r22,$r14,$r9
1c0041f8:	280002ce 	ld.b	$r14,$r22,0
1c0041fc:	5bf795cd 	beq	$r14,$r13,-2156(0x3f794) # 1c003990 <shell15+0x1820>
1c004200:	00101196 	add.w	$r22,$r12,$r4
1c004204:	00102ece 	add.w	$r14,$r22,$r11
1c004208:	280001d6 	ld.b	$r22,$r14,0
1c00420c:	5bf786cd 	beq	$r22,$r13,-2172(0x3f784) # 1c003990 <shell15+0x1820>
1c004210:	0010198e 	add.w	$r14,$r12,$r6
1c004214:	001005d6 	add.w	$r22,$r14,$r1
1c004218:	280002ce 	ld.b	$r14,$r22,0
1c00421c:	5bf775cd 	beq	$r14,$r13,-2188(0x3f774) # 1c003990 <shell15+0x1820>
1c004220:	00102196 	add.w	$r22,$r12,$r8
1c004224:	00105ece 	add.w	$r14,$r22,$r23
1c004228:	280001d6 	ld.b	$r22,$r14,0
1c00422c:	5bf766cd 	beq	$r22,$r13,-2204(0x3f764) # 1c003990 <shell15+0x1820>
1c004230:	0010298e 	add.w	$r14,$r12,$r10
1c004234:	001069d6 	add.w	$r22,$r14,$r26
1c004238:	280002ce 	ld.b	$r14,$r22,0
1c00423c:	5bf755cd 	beq	$r14,$r13,-2220(0x3f754) # 1c003990 <shell15+0x1820>
1c004240:	2900019b 	st.b	$r27,$r12,0
1c004244:	53f74fff 	b	-2228(0xffff74c) # 1c003990 <shell15+0x1820>
1c004248:	00103d96 	add.w	$r22,$r12,$r15
1c00424c:	001052d6 	add.w	$r22,$r22,$r20
1c004250:	280002d6 	ld.b	$r22,$r22,0
1c004254:	5bf732cd 	beq	$r22,$r13,-2256(0x3f730) # 1c003984 <shell15+0x1814>
1c004258:	00104196 	add.w	$r22,$r12,$r16
1c00425c:	001016d6 	add.w	$r22,$r22,$r5
1c004260:	280002d6 	ld.b	$r22,$r22,0
1c004264:	5bf722cd 	beq	$r22,$r13,-2272(0x3f720) # 1c003984 <shell15+0x1814>
1c004268:	00104596 	add.w	$r22,$r12,$r17
1c00426c:	00101ed6 	add.w	$r22,$r22,$r7
1c004270:	280002d6 	ld.b	$r22,$r22,0
1c004274:	5bf712cd 	beq	$r22,$r13,-2288(0x3f710) # 1c003984 <shell15+0x1814>
1c004278:	00104996 	add.w	$r22,$r12,$r18
1c00427c:	001026d6 	add.w	$r22,$r22,$r9
1c004280:	280002d6 	ld.b	$r22,$r22,0
1c004284:	5bf702cd 	beq	$r22,$r13,-2304(0x3f700) # 1c003984 <shell15+0x1814>
1c004288:	00101196 	add.w	$r22,$r12,$r4
1c00428c:	00102ed6 	add.w	$r22,$r22,$r11
1c004290:	280002d6 	ld.b	$r22,$r22,0
1c004294:	5bf6f2cd 	beq	$r22,$r13,-2320(0x3f6f0) # 1c003984 <shell15+0x1814>
1c004298:	00101996 	add.w	$r22,$r12,$r6
1c00429c:	001006d6 	add.w	$r22,$r22,$r1
1c0042a0:	280002d6 	ld.b	$r22,$r22,0
1c0042a4:	5bf6e2cd 	beq	$r22,$r13,-2336(0x3f6e0) # 1c003984 <shell15+0x1814>
1c0042a8:	00102196 	add.w	$r22,$r12,$r8
1c0042ac:	00105ed6 	add.w	$r22,$r22,$r23
1c0042b0:	280002d6 	ld.b	$r22,$r22,0
1c0042b4:	5bf6d2ce 	beq	$r22,$r14,-2352(0x3f6d0) # 1c003984 <shell15+0x1814>
1c0042b8:	00102996 	add.w	$r22,$r12,$r10
1c0042bc:	00106ad6 	add.w	$r22,$r22,$r26
1c0042c0:	280002d6 	ld.b	$r22,$r22,0
1c0042c4:	5bf6c2ce 	beq	$r22,$r14,-2368(0x3f6c0) # 1c003984 <shell15+0x1814>
1c0042c8:	2900019b 	st.b	$r27,$r12,0
1c0042cc:	53f6bbff 	b	-2376(0xffff6b8) # 1c003984 <shell15+0x1814>
1c0042d0:	2880906b 	ld.w	$r11,$r3,36(0x24)
1c0042d4:	028056d6 	addi.w	$r22,$r22,21(0x15)
1c0042d8:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0042dc:	0281335a 	addi.w	$r26,$r26,76(0x4c)
1c0042e0:	5ff71acb 	bne	$r22,$r11,-2280(0x3f718) # 1c0039f8 <shell15+0x1888>
1c0042e4:	2880c076 	ld.w	$r22,$r3,48(0x30)
1c0042e8:	02bffeda 	addi.w	$r26,$r22,-1(0xfff)
1c0042ec:	2980c07a 	st.w	$r26,$r3,48(0x30)
1c0042f0:	5ff5ab40 	bne	$r26,$r0,-2648(0x3f5a8) # 1c003898 <shell15+0x1728>
1c0042f4:	2881407c 	ld.w	$r28,$r3,80(0x50)
1c0042f8:	2881307e 	ld.w	$r30,$r3,76(0x4c)
1c0042fc:	2881207b 	ld.w	$r27,$r3,72(0x48)
1c004300:	00150386 	move	$r6,$r28
1c004304:	001503c5 	move	$r5,$r30
1c004308:	00150367 	move	$r7,$r27
1c00430c:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c004310:	02b3d084 	addi.w	$r4,$r4,-780(0xcf4)
1c004314:	001573d7 	or	$r23,$r30,$r28
1c004318:	540af800 	bl	2808(0xaf8) # 1c004e10 <printf>
1c00431c:	5ff49ae0 	bne	$r23,$r0,-2920(0x3f498) # 1c0037b4 <shell15+0x1644>
1c004320:	02800418 	addi.w	$r24,$r0,1(0x1)
1c004324:	5ff49378 	bne	$r27,$r24,-2928(0x3f490) # 1c0037b4 <shell15+0x1644>
1c004328:	54125800 	bl	4696(0x1258) # 1c005580 <get_count_my>
1c00432c:	00150099 	move	$r25,$r4
1c004330:	54122000 	bl	4640(0x1220) # 1c005550 <get_count>
1c004334:	28823072 	ld.w	$r18,$r3,140(0x8c)
1c004338:	28822069 	ld.w	$r9,$r3,136(0x88)
1c00433c:	00114b36 	sub.w	$r22,$r25,$r18
1c004340:	0011249a 	sub.w	$r26,$r4,$r9
1c004344:	53f063ff 	b	-4000(0xffff060) # 1c0033a4 <shell15+0x1234>
1c004348:	00103d96 	add.w	$r22,$r12,$r15
1c00434c:	001052ce 	add.w	$r14,$r22,$r20
1c004350:	280001d6 	ld.b	$r22,$r14,0
1c004354:	5bfd3ecd 	beq	$r22,$r13,-708(0x3fd3c) # 1c004090 <shell15+0x1f20>
1c004358:	0010418e 	add.w	$r14,$r12,$r16
1c00435c:	001015d6 	add.w	$r22,$r14,$r5
1c004360:	280002ce 	ld.b	$r14,$r22,0
1c004364:	5bfd2dcd 	beq	$r14,$r13,-724(0x3fd2c) # 1c004090 <shell15+0x1f20>
1c004368:	00104596 	add.w	$r22,$r12,$r17
1c00436c:	00101ece 	add.w	$r14,$r22,$r7
1c004370:	280001d6 	ld.b	$r22,$r14,0
1c004374:	5bfd1ecd 	beq	$r22,$r13,-740(0x3fd1c) # 1c004090 <shell15+0x1f20>
1c004378:	0010498e 	add.w	$r14,$r12,$r18
1c00437c:	001025d6 	add.w	$r22,$r14,$r9
1c004380:	280002ce 	ld.b	$r14,$r22,0
1c004384:	5bfd0dcd 	beq	$r14,$r13,-756(0x3fd0c) # 1c004090 <shell15+0x1f20>
1c004388:	00101196 	add.w	$r22,$r12,$r4
1c00438c:	00102ece 	add.w	$r14,$r22,$r11
1c004390:	280001d6 	ld.b	$r22,$r14,0
1c004394:	5bfcfecd 	beq	$r22,$r13,-772(0x3fcfc) # 1c004090 <shell15+0x1f20>
1c004398:	0010198e 	add.w	$r14,$r12,$r6
1c00439c:	001005d6 	add.w	$r22,$r14,$r1
1c0043a0:	280002ce 	ld.b	$r14,$r22,0
1c0043a4:	5bfcedcd 	beq	$r14,$r13,-788(0x3fcec) # 1c004090 <shell15+0x1f20>
1c0043a8:	00102196 	add.w	$r22,$r12,$r8
1c0043ac:	00105ece 	add.w	$r14,$r22,$r23
1c0043b0:	280001d6 	ld.b	$r22,$r14,0
1c0043b4:	5bfcdecd 	beq	$r22,$r13,-804(0x3fcdc) # 1c004090 <shell15+0x1f20>
1c0043b8:	0010298e 	add.w	$r14,$r12,$r10
1c0043bc:	001069d6 	add.w	$r22,$r14,$r26
1c0043c0:	280002ce 	ld.b	$r14,$r22,0
1c0043c4:	5bfccdcd 	beq	$r14,$r13,-820(0x3fccc) # 1c004090 <shell15+0x1f20>
1c0043c8:	2900019b 	st.b	$r27,$r12,0
1c0043cc:	53fcc7ff 	b	-828(0xffffcc4) # 1c004090 <shell15+0x1f20>
1c0043d0:	00103d8e 	add.w	$r14,$r12,$r15
1c0043d4:	001051d6 	add.w	$r22,$r14,$r20
1c0043d8:	280002ce 	ld.b	$r14,$r22,0
1c0043dc:	5bf5c1cd 	beq	$r14,$r13,-2624(0x3f5c0) # 1c00399c <shell15+0x182c>
1c0043e0:	00104196 	add.w	$r22,$r12,$r16
1c0043e4:	001016ce 	add.w	$r14,$r22,$r5
1c0043e8:	280001d6 	ld.b	$r22,$r14,0
1c0043ec:	5bf5b2cd 	beq	$r22,$r13,-2640(0x3f5b0) # 1c00399c <shell15+0x182c>
1c0043f0:	0010458e 	add.w	$r14,$r12,$r17
1c0043f4:	00101dd6 	add.w	$r22,$r14,$r7
1c0043f8:	280002ce 	ld.b	$r14,$r22,0
1c0043fc:	5bf5a1cd 	beq	$r14,$r13,-2656(0x3f5a0) # 1c00399c <shell15+0x182c>
1c004400:	00104996 	add.w	$r22,$r12,$r18
1c004404:	001026ce 	add.w	$r14,$r22,$r9
1c004408:	280001d6 	ld.b	$r22,$r14,0
1c00440c:	5bf592cd 	beq	$r22,$r13,-2672(0x3f590) # 1c00399c <shell15+0x182c>
1c004410:	0010118e 	add.w	$r14,$r12,$r4
1c004414:	00102dd6 	add.w	$r22,$r14,$r11
1c004418:	280002ce 	ld.b	$r14,$r22,0
1c00441c:	5bf581cd 	beq	$r14,$r13,-2688(0x3f580) # 1c00399c <shell15+0x182c>
1c004420:	00101996 	add.w	$r22,$r12,$r6
1c004424:	001006ce 	add.w	$r14,$r22,$r1
1c004428:	280001d6 	ld.b	$r22,$r14,0
1c00442c:	5bf572cd 	beq	$r22,$r13,-2704(0x3f570) # 1c00399c <shell15+0x182c>
1c004430:	0010218e 	add.w	$r14,$r12,$r8
1c004434:	00105dd6 	add.w	$r22,$r14,$r23
1c004438:	280002ce 	ld.b	$r14,$r22,0
1c00443c:	5bf561cd 	beq	$r14,$r13,-2720(0x3f560) # 1c00399c <shell15+0x182c>
1c004440:	00102996 	add.w	$r22,$r12,$r10
1c004444:	00106ace 	add.w	$r14,$r22,$r26
1c004448:	280001d6 	ld.b	$r22,$r14,0
1c00444c:	5bf552cd 	beq	$r22,$r13,-2736(0x3f550) # 1c00399c <shell15+0x182c>
1c004450:	2900019b 	st.b	$r27,$r12,0
1c004454:	53f54bff 	b	-2744(0xffff548) # 1c00399c <shell15+0x182c>
1c004458:	28804065 	ld.w	$r5,$r3,16(0x10)
1c00445c:	001015cf 	add.w	$r15,$r14,$r5
1c004460:	2981606f 	st.w	$r15,$r3,88(0x58)
1c004464:	2881606f 	ld.w	$r15,$r3,88(0x58)
1c004468:	2880406c 	ld.w	$r12,$r3,16(0x10)
1c00446c:	6402458f 	bge	$r12,$r15,580(0x244) # 1c0046b0 <shell15+0x2540>
1c004470:	2880b073 	ld.w	$r19,$r3,44(0x2c)
1c004474:	2880e06d 	ld.w	$r13,$r3,56(0x38)
1c004478:	00103674 	add.w	$r20,$r19,$r13
1c00447c:	28000286 	ld.b	$r6,$r20,0
1c004480:	5bf5e0db 	beq	$r6,$r27,-2592(0x3f5e0) # 1c003a60 <shell15+0x18f0>
1c004484:	001c79e7 	mul.w	$r7,$r15,$r30
1c004488:	28805061 	ld.w	$r1,$r3,20(0x14)
1c00448c:	00103785 	add.w	$r5,$r28,$r13
1c004490:	1479e788 	lu12i.w	$r8,249660(0x3cf3c)
1c004494:	001005b0 	add.w	$r16,$r13,$r1
1c004498:	0010438c 	add.w	$r12,$r28,$r16
1c00449c:	03bcf504 	ori	$r4,$r8,0xf3d
1c0044a0:	001014ee 	add.w	$r14,$r7,$r5
1c0044a4:	001131cf 	sub.w	$r15,$r14,$r12
1c0044a8:	001c11f3 	mul.w	$r19,$r15,$r4
1c0044ac:	03401e6d 	andi	$r13,$r19,0x7
1c0044b0:	580111a0 	beq	$r13,$r0,272(0x110) # 1c0045c0 <shell15+0x2450>
1c0044b4:	2880e074 	ld.w	$r20,$r3,56(0x38)
1c0044b8:	00115186 	sub.w	$r6,$r12,$r20
1c0044bc:	001028c7 	add.w	$r7,$r6,$r10
1c0044c0:	280000e1 	ld.b	$r1,$r7,0
1c0044c4:	5bf59c3b 	beq	$r1,$r27,-2660(0x3f59c) # 1c003a60 <shell15+0x18f0>
1c0044c8:	0280558c 	addi.w	$r12,$r12,21(0x15)
1c0044cc:	283fad90 	ld.b	$r16,$r12,-21(0xfeb)
1c0044d0:	5bf5921b 	beq	$r16,$r27,-2672(0x3f590) # 1c003a60 <shell15+0x18f0>
1c0044d4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0044d8:	5808f9a5 	beq	$r13,$r5,2296(0x8f8) # 1c004dd0 <shell15+0x2c60>
1c0044dc:	02800808 	addi.w	$r8,$r0,2(0x2)
1c0044e0:	5800c1a8 	beq	$r13,$r8,192(0xc0) # 1c0045a0 <shell15+0x2430>
1c0044e4:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0044e8:	580099a4 	beq	$r13,$r4,152(0x98) # 1c004580 <shell15+0x2410>
1c0044ec:	02801011 	addi.w	$r17,$r0,4(0x4)
1c0044f0:	580071b1 	beq	$r13,$r17,112(0x70) # 1c004560 <shell15+0x23f0>
1c0044f4:	0280140f 	addi.w	$r15,$r0,5(0x5)
1c0044f8:	580049af 	beq	$r13,$r15,72(0x48) # 1c004540 <shell15+0x23d0>
1c0044fc:	02801813 	addi.w	$r19,$r0,6(0x6)
1c004500:	580021b3 	beq	$r13,$r19,32(0x20) # 1c004520 <shell15+0x23b0>
1c004504:	0011518d 	sub.w	$r13,$r12,$r20
1c004508:	001029b4 	add.w	$r20,$r13,$r10
1c00450c:	28000286 	ld.b	$r6,$r20,0
1c004510:	5bf550db 	beq	$r6,$r27,-2736(0x3f550) # 1c003a60 <shell15+0x18f0>
1c004514:	28000187 	ld.b	$r7,$r12,0
1c004518:	0280558c 	addi.w	$r12,$r12,21(0x15)
1c00451c:	5bf544fb 	beq	$r7,$r27,-2748(0x3f544) # 1c003a60 <shell15+0x18f0>
1c004520:	2880e061 	ld.w	$r1,$r3,56(0x38)
1c004524:	00110590 	sub.w	$r16,$r12,$r1
1c004528:	00102a05 	add.w	$r5,$r16,$r10
1c00452c:	280000a8 	ld.b	$r8,$r5,0
1c004530:	5bf5311b 	beq	$r8,$r27,-2768(0x3f530) # 1c003a60 <shell15+0x18f0>
1c004534:	28000184 	ld.b	$r4,$r12,0
1c004538:	0280558c 	addi.w	$r12,$r12,21(0x15)
1c00453c:	5bf5249b 	beq	$r4,$r27,-2780(0x3f524) # 1c003a60 <shell15+0x18f0>
1c004540:	2880e071 	ld.w	$r17,$r3,56(0x38)
1c004544:	0011458f 	sub.w	$r15,$r12,$r17
1c004548:	001029f3 	add.w	$r19,$r15,$r10
1c00454c:	2800026d 	ld.b	$r13,$r19,0
1c004550:	5bf511bb 	beq	$r13,$r27,-2800(0x3f510) # 1c003a60 <shell15+0x18f0>
1c004554:	28000194 	ld.b	$r20,$r12,0
1c004558:	0280558c 	addi.w	$r12,$r12,21(0x15)
1c00455c:	5bf5069b 	beq	$r20,$r27,-2812(0x3f504) # 1c003a60 <shell15+0x18f0>
1c004560:	2880e066 	ld.w	$r6,$r3,56(0x38)
1c004564:	00111987 	sub.w	$r7,$r12,$r6
1c004568:	001028e1 	add.w	$r1,$r7,$r10
1c00456c:	28000030 	ld.b	$r16,$r1,0
1c004570:	5bf4f21b 	beq	$r16,$r27,-2832(0x3f4f0) # 1c003a60 <shell15+0x18f0>
1c004574:	28000185 	ld.b	$r5,$r12,0
1c004578:	0280558c 	addi.w	$r12,$r12,21(0x15)
1c00457c:	5bf4e4bb 	beq	$r5,$r27,-2844(0x3f4e4) # 1c003a60 <shell15+0x18f0>
1c004580:	2880e068 	ld.w	$r8,$r3,56(0x38)
1c004584:	00112184 	sub.w	$r4,$r12,$r8
1c004588:	00102891 	add.w	$r17,$r4,$r10
1c00458c:	2800022f 	ld.b	$r15,$r17,0
1c004590:	5bf4d1fb 	beq	$r15,$r27,-2864(0x3f4d0) # 1c003a60 <shell15+0x18f0>
1c004594:	28000193 	ld.b	$r19,$r12,0
1c004598:	0280558c 	addi.w	$r12,$r12,21(0x15)
1c00459c:	5bf4c67b 	beq	$r19,$r27,-2876(0x3f4c4) # 1c003a60 <shell15+0x18f0>
1c0045a0:	2880e06d 	ld.w	$r13,$r3,56(0x38)
1c0045a4:	00113594 	sub.w	$r20,$r12,$r13
1c0045a8:	00102a86 	add.w	$r6,$r20,$r10
1c0045ac:	280000c7 	ld.b	$r7,$r6,0
1c0045b0:	5bf4b0fb 	beq	$r7,$r27,-2896(0x3f4b0) # 1c003a60 <shell15+0x18f0>
1c0045b4:	0280558c 	addi.w	$r12,$r12,21(0x15)
1c0045b8:	283fad81 	ld.b	$r1,$r12,-21(0xfeb)
1c0045bc:	5bf4a43b 	beq	$r1,$r27,-2908(0x3f4a4) # 1c003a60 <shell15+0x18f0>
1c0045c0:	2880e065 	ld.w	$r5,$r3,56(0x38)
1c0045c4:	5800edcc 	beq	$r14,$r12,236(0xec) # 1c0046b0 <shell15+0x2540>
1c0045c8:	00111587 	sub.w	$r7,$r12,$r5
1c0045cc:	001028e1 	add.w	$r1,$r7,$r10
1c0045d0:	28000028 	ld.b	$r8,$r1,0
1c0045d4:	5bf48d1b 	beq	$r8,$r27,-2932(0x3f48c) # 1c003a60 <shell15+0x18f0>
1c0045d8:	0280558f 	addi.w	$r15,$r12,21(0x15)
1c0045dc:	283fadf0 	ld.b	$r16,$r15,-21(0xfeb)
1c0045e0:	5bf4821b 	beq	$r16,$r27,-2944(0x3f480) # 1c003a60 <shell15+0x18f0>
1c0045e4:	001115f1 	sub.w	$r17,$r15,$r5
1c0045e8:	00102a34 	add.w	$r20,$r17,$r10
1c0045ec:	28000284 	ld.b	$r4,$r20,0
1c0045f0:	5bf4709b 	beq	$r4,$r27,-2960(0x3f470) # 1c003a60 <shell15+0x18f0>
1c0045f4:	28005593 	ld.b	$r19,$r12,21(0x15)
1c0045f8:	0280a986 	addi.w	$r6,$r12,42(0x2a)
1c0045fc:	5bf4667b 	beq	$r19,$r27,-2972(0x3f464) # 1c003a60 <shell15+0x18f0>
1c004600:	001114cd 	sub.w	$r13,$r6,$r5
1c004604:	001029a7 	add.w	$r7,$r13,$r10
1c004608:	280000e1 	ld.b	$r1,$r7,0
1c00460c:	5bf4543b 	beq	$r1,$r27,-2988(0x3f454) # 1c003a60 <shell15+0x18f0>
1c004610:	2800a990 	ld.b	$r16,$r12,42(0x2a)
1c004614:	0280fd88 	addi.w	$r8,$r12,63(0x3f)
1c004618:	5bf44a1b 	beq	$r16,$r27,-3000(0x3f448) # 1c003a60 <shell15+0x18f0>
1c00461c:	00111511 	sub.w	$r17,$r8,$r5
1c004620:	00102a34 	add.w	$r20,$r17,$r10
1c004624:	28000284 	ld.b	$r4,$r20,0
1c004628:	5bf4389b 	beq	$r4,$r27,-3016(0x3f438) # 1c003a60 <shell15+0x18f0>
1c00462c:	2800fd86 	ld.b	$r6,$r12,63(0x3f)
1c004630:	0281518c 	addi.w	$r12,$r12,84(0x54)
1c004634:	5bf42cdb 	beq	$r6,$r27,-3028(0x3f42c) # 1c003a60 <shell15+0x18f0>
1c004638:	00111593 	sub.w	$r19,$r12,$r5
1c00463c:	00102a6d 	add.w	$r13,$r19,$r10
1c004640:	280001a7 	ld.b	$r7,$r13,0
1c004644:	5bf41cfb 	beq	$r7,$r27,-3044(0x3f41c) # 1c003a60 <shell15+0x18f0>
1c004648:	2800fde8 	ld.b	$r8,$r15,63(0x3f)
1c00464c:	028151e1 	addi.w	$r1,$r15,84(0x54)
1c004650:	5bf4111b 	beq	$r8,$r27,-3056(0x3f410) # 1c003a60 <shell15+0x18f0>
1c004654:	00111430 	sub.w	$r16,$r1,$r5
1c004658:	00102a11 	add.w	$r17,$r16,$r10
1c00465c:	28000234 	ld.b	$r20,$r17,0
1c004660:	5bf4029b 	beq	$r20,$r27,-3072(0x3f400) # 1c003a60 <shell15+0x18f0>
1c004664:	280151e6 	ld.b	$r6,$r15,84(0x54)
1c004668:	0281a5e4 	addi.w	$r4,$r15,105(0x69)
1c00466c:	5bf3f4db 	beq	$r6,$r27,-3084(0x3f3f4) # 1c003a60 <shell15+0x18f0>
1c004670:	0011148c 	sub.w	$r12,$r4,$r5
1c004674:	00102993 	add.w	$r19,$r12,$r10
1c004678:	2800026d 	ld.b	$r13,$r19,0
1c00467c:	5bf3e5bb 	beq	$r13,$r27,-3100(0x3f3e4) # 1c003a60 <shell15+0x18f0>
1c004680:	2801a5e1 	ld.b	$r1,$r15,105(0x69)
1c004684:	0281f9e7 	addi.w	$r7,$r15,126(0x7e)
1c004688:	5bf3d83b 	beq	$r1,$r27,-3112(0x3f3d8) # 1c003a60 <shell15+0x18f0>
1c00468c:	001114e8 	sub.w	$r8,$r7,$r5
1c004690:	00102910 	add.w	$r16,$r8,$r10
1c004694:	28000211 	ld.b	$r17,$r16,0
1c004698:	5bf3ca3b 	beq	$r17,$r27,-3128(0x3f3c8) # 1c003a60 <shell15+0x18f0>
1c00469c:	02824dec 	addi.w	$r12,$r15,147(0x93)
1c0046a0:	283fad8f 	ld.b	$r15,$r12,-21(0xfeb)
1c0046a4:	5fff21fb 	bne	$r15,$r27,-224(0x3ff20) # 1c0045c4 <shell15+0x2454>
1c0046a8:	53f3bbff 	b	-3144(0xffff3b8) # 1c003a60 <shell15+0x18f0>
1c0046ac:	03400000 	andi	$r0,$r0,0x0
1c0046b0:	2880b06e 	ld.w	$r14,$r3,44(0x2c)
1c0046b4:	00102a4c 	add.w	$r12,$r18,$r10
1c0046b8:	02800590 	addi.w	$r16,$r12,1(0x1)
1c0046bc:	001041c8 	add.w	$r8,$r14,$r16
1c0046c0:	28000104 	ld.b	$r4,$r8,0
1c0046c4:	29817064 	st.w	$r4,$r3,92(0x5c)
1c0046c8:	5ff3989b 	bne	$r4,$r27,-3176(0x3f398) # 1c003a60 <shell15+0x18f0>
1c0046cc:	2880a071 	ld.w	$r17,$r3,40(0x28)
1c0046d0:	2880406f 	ld.w	$r15,$r3,16(0x10)
1c0046d4:	00104645 	add.w	$r5,$r18,$r17
1c0046d8:	00103cb3 	add.w	$r19,$r5,$r15
1c0046dc:	001c7a6d 	mul.w	$r13,$r19,$r30
1c0046e0:	00103794 	add.w	$r20,$r28,$r13
1c0046e4:	00104286 	add.w	$r6,$r20,$r16
1c0046e8:	280000c7 	ld.b	$r7,$r6,0
1c0046ec:	58005cfb 	beq	$r7,$r27,92(0x5c) # 1c004748 <shell15+0x25d8>
1c0046f0:	0280b801 	addi.w	$r1,$r0,46(0x2e)
1c0046f4:	5ff36ce1 	bne	$r7,$r1,-3220(0x3f36c) # 1c003a60 <shell15+0x18f0>
1c0046f8:	2880406e 	ld.w	$r14,$r3,16(0x10)
1c0046fc:	004084ac 	slli.w	$r12,$r5,0x1
1c004700:	00103988 	add.w	$r8,$r12,$r14
1c004704:	001c7904 	mul.w	$r4,$r8,$r30
1c004708:	00101391 	add.w	$r17,$r28,$r4
1c00470c:	00104230 	add.w	$r16,$r17,$r16
1c004710:	2800020f 	ld.b	$r15,$r16,0
1c004714:	5ff34dfb 	bne	$r15,$r27,-3252(0x3f34c) # 1c003a60 <shell15+0x18f0>
1c004718:	02800c13 	addi.w	$r19,$r0,3(0x3)
1c00471c:	02800811 	addi.w	$r17,$r0,2(0x2)
1c004720:	29819073 	st.w	$r19,$r3,100(0x64)
1c004724:	50005800 	b	88(0x58) # 1c00477c <shell15+0x260c>
1c004728:	2880c076 	ld.w	$r22,$r3,48(0x30)
1c00472c:	29812060 	st.w	$r0,$r3,72(0x48)
1c004730:	29814060 	st.w	$r0,$r3,80(0x50)
1c004734:	02bffeda 	addi.w	$r26,$r22,-1(0xfff)
1c004738:	29813060 	st.w	$r0,$r3,76(0x4c)
1c00473c:	2980c07a 	st.w	$r26,$r3,48(0x30)
1c004740:	5ff15b40 	bne	$r26,$r0,-3752(0x3f158) # 1c003898 <shell15+0x1728>
1c004744:	53fbb3ff 	b	-1104(0xffffbb0) # 1c0042f4 <shell15+0x2184>
1c004748:	2880406d 	ld.w	$r13,$r3,16(0x10)
1c00474c:	004084ac 	slli.w	$r12,$r5,0x1
1c004750:	00103594 	add.w	$r20,$r12,$r13
1c004754:	001c7a86 	mul.w	$r6,$r20,$r30
1c004758:	00101b87 	add.w	$r7,$r28,$r6
1c00475c:	001040e1 	add.w	$r1,$r7,$r16
1c004760:	2800002e 	ld.b	$r14,$r1,0
1c004764:	580695db 	beq	$r14,$r27,1684(0x694) # 1c004df8 <shell15+0x2c88>
1c004768:	0280b808 	addi.w	$r8,$r0,46(0x2e)
1c00476c:	5ff2f5c8 	bne	$r14,$r8,-3340(0x3f2f4) # 1c003a60 <shell15+0x18f0>
1c004770:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004774:	00150011 	move	$r17,$r0
1c004778:	29819064 	st.w	$r4,$r3,100(0x64)
1c00477c:	1c000f81 	pcaddu12i	$r1,124(0x7c)
1c004780:	289e7021 	ld.w	$r1,$r1,1948(0x79c)
1c004784:	1c000f8f 	pcaddu12i	$r15,124(0x7c)
1c004788:	289e41ef 	ld.w	$r15,$r15,1936(0x790)
1c00478c:	298011f2 	st.w	$r18,$r15,4(0x4)
1c004790:	298021e5 	st.w	$r5,$r15,8(0x8)
1c004794:	298041f2 	st.w	$r18,$r15,16(0x10)
1c004798:	298051e5 	st.w	$r5,$r15,20(0x14)
1c00479c:	298071f2 	st.w	$r18,$r15,28(0x1c)
1c0047a0:	298081e5 	st.w	$r5,$r15,32(0x20)
1c0047a4:	2980a1f2 	st.w	$r18,$r15,40(0x28)
1c0047a8:	2980b1e5 	st.w	$r5,$r15,44(0x2c)
1c0047ac:	2980d1f2 	st.w	$r18,$r15,52(0x34)
1c0047b0:	2980e1e5 	st.w	$r5,$r15,56(0x38)
1c0047b4:	29806025 	st.w	$r5,$r1,24(0x18)
1c0047b8:	29807025 	st.w	$r5,$r1,28(0x1c)
1c0047bc:	29808025 	st.w	$r5,$r1,32(0x20)
1c0047c0:	0280f005 	addi.w	$r5,$r0,60(0x3c)
1c0047c4:	001c1633 	mul.w	$r19,$r17,$r5
1c0047c8:	2880a06d 	ld.w	$r13,$r3,40(0x28)
1c0047cc:	2980c02c 	st.w	$r12,$r1,48(0x30)
1c0047d0:	2980d02c 	st.w	$r12,$r1,52(0x34)
1c0047d4:	2980e02c 	st.w	$r12,$r1,56(0x38)
1c0047d8:	0040864c 	slli.w	$r12,$r18,0x1
1c0047dc:	00103594 	add.w	$r20,$r12,$r13
1c0047e0:	298001e0 	st.w	$r0,$r15,0
1c0047e4:	298031e0 	st.w	$r0,$r15,12(0xc)
1c0047e8:	298061e0 	st.w	$r0,$r15,24(0x18)
1c0047ec:	298091e0 	st.w	$r0,$r15,36(0x24)
1c0047f0:	2980c1e0 	st.w	$r0,$r15,48(0x30)
1c0047f4:	29800020 	st.w	$r0,$r1,0
1c0047f8:	29803032 	st.w	$r18,$r1,12(0xc)
1c0047fc:	29801020 	st.w	$r0,$r1,4(0x4)
1c004800:	29802020 	st.w	$r0,$r1,8(0x8)
1c004804:	29804032 	st.w	$r18,$r1,16(0x10)
1c004808:	29805032 	st.w	$r18,$r1,20(0x14)
1c00480c:	29809034 	st.w	$r20,$r1,36(0x24)
1c004810:	2980a034 	st.w	$r20,$r1,40(0x28)
1c004814:	2980b034 	st.w	$r20,$r1,44(0x2c)
1c004818:	1c000f86 	pcaddu12i	$r6,124(0x7c)
1c00481c:	02a760c6 	addi.w	$r6,$r6,-1576(0x9d8)
1c004820:	29811069 	st.w	$r9,$r3,68(0x44)
1c004824:	1c000f87 	pcaddu12i	$r7,124(0x7c)
1c004828:	289bc0e7 	ld.w	$r7,$r7,1776(0x6f0)
1c00482c:	0015024d 	move	$r13,$r18
1c004830:	00104cc8 	add.w	$r8,$r6,$r19
1c004834:	2981806a 	st.w	$r10,$r3,96(0x60)
1c004838:	02800c0a 	addi.w	$r10,$r0,3(0x3)
1c00483c:	0020aba9 	mod.w	$r9,$r29,$r10
1c004840:	5c000940 	bne	$r10,$r0,8(0x8) # 1c004848 <shell15+0x26d8>
1c004844:	002a0007 	break	0x7
1c004848:	0340052e 	andi	$r14,$r9,0x1
1c00484c:	00150244 	move	$r4,$r18
1c004850:	580009c0 	beq	$r14,$r0,8(0x8) # 1c004858 <shell15+0x26e8>
1c004854:	2880a064 	ld.w	$r4,$r3,40(0x28)
1c004858:	28800111 	ld.w	$r17,$r8,0
1c00485c:	2881106f 	ld.w	$r15,$r3,68(0x44)
1c004860:	58000a20 	beq	$r17,$r0,8(0x8) # 1c004868 <shell15+0x26f8>
1c004864:	2881706f 	ld.w	$r15,$r3,92(0x5c)
1c004868:	28800030 	ld.w	$r16,$r1,0
1c00486c:	28804073 	ld.w	$r19,$r3,16(0x10)
1c004870:	0010426c 	add.w	$r12,$r19,$r16
1c004874:	00103585 	add.w	$r5,$r12,$r13
1c004878:	288000ed 	ld.w	$r13,$r7,0
1c00487c:	001037f1 	add.w	$r17,$r31,$r13
1c004880:	64020585 	bge	$r12,$r5,516(0x204) # 1c004a84 <shell15+0x2914>
1c004884:	02804c0a 	addi.w	$r10,$r0,19(0x13)
1c004888:	001c7990 	mul.w	$r16,$r12,$r30
1c00488c:	1c000f8e 	pcaddu12i	$r14,124(0x7c)
1c004890:	028f61ce 	addi.w	$r14,$r14,984(0x3d8)
1c004894:	00101234 	add.w	$r20,$r17,$r4
1c004898:	028005c4 	addi.w	$r4,$r14,1(0x1)
1c00489c:	02800633 	addi.w	$r19,$r17,1(0x1)
1c0048a0:	0010448d 	add.w	$r13,$r4,$r17
1c0048a4:	001c2989 	mul.w	$r9,$r12,$r10
1c0048a8:	0014440c 	nor	$r12,$r0,$r17
1c0048ac:	00105184 	add.w	$r4,$r12,$r20
1c0048b0:	001c78a6 	mul.w	$r6,$r5,$r30
1c0048b4:	00104529 	add.w	$r9,$r9,$r17
1c0048b8:	00104e05 	add.w	$r5,$r16,$r19
1c0048bc:	00408930 	slli.w	$r16,$r9,0x2
1c0048c0:	1c000f93 	pcaddu12i	$r19,124(0x7c)
1c0048c4:	02a89273 	addi.w	$r19,$r19,-1500(0xa24)
1c0048c8:	0010178c 	add.w	$r12,$r28,$r5
1c0048cc:	00104270 	add.w	$r16,$r19,$r16
1c0048d0:	001019a6 	add.w	$r6,$r13,$r6
1c0048d4:	2980f066 	st.w	$r6,$r3,60(0x3c)
1c0048d8:	64019e34 	bge	$r17,$r20,412(0x19c) # 1c004a74 <shell15+0x2904>
1c0048dc:	283ffd8e 	ld.b	$r14,$r12,-1(0xfff)
1c0048e0:	5ff181cf 	bne	$r14,$r15,-3712(0x3f180) # 1c003a60 <shell15+0x18f0>
1c0048e4:	2880020d 	ld.w	$r13,$r16,0
1c0048e8:	5ff179a0 	bne	$r13,$r0,-3720(0x3f178) # 1c003a60 <shell15+0x18f0>
1c0048ec:	03401c85 	andi	$r5,$r4,0x7
1c0048f0:	0015018d 	move	$r13,$r12
1c0048f4:	0015020e 	move	$r14,$r16
1c0048f8:	00103089 	add.w	$r9,$r4,$r12
1c0048fc:	5800dca0 	beq	$r5,$r0,220(0xdc) # 1c0049d8 <shell15+0x2868>
1c004900:	2800018a 	ld.b	$r10,$r12,0
1c004904:	5ff15d4f 	bne	$r10,$r15,-3748(0x3f15c) # 1c003a60 <shell15+0x18f0>
1c004908:	28801206 	ld.w	$r6,$r16,4(0x4)
1c00490c:	0280120e 	addi.w	$r14,$r16,4(0x4)
1c004910:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c004914:	5ff14cc0 	bne	$r6,$r0,-3764(0x3f14c) # 1c003a60 <shell15+0x18f0>
1c004918:	02800413 	addi.w	$r19,$r0,1(0x1)
1c00491c:	5800bcb3 	beq	$r5,$r19,188(0xbc) # 1c0049d8 <shell15+0x2868>
1c004920:	0280080a 	addi.w	$r10,$r0,2(0x2)
1c004924:	58009caa 	beq	$r5,$r10,156(0x9c) # 1c0049c0 <shell15+0x2850>
1c004928:	02800c06 	addi.w	$r6,$r0,3(0x3)
1c00492c:	58007ca6 	beq	$r5,$r6,124(0x7c) # 1c0049a8 <shell15+0x2838>
1c004930:	02801013 	addi.w	$r19,$r0,4(0x4)
1c004934:	58005cb3 	beq	$r5,$r19,92(0x5c) # 1c004990 <shell15+0x2820>
1c004938:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c00493c:	58003caa 	beq	$r5,$r10,60(0x3c) # 1c004978 <shell15+0x2808>
1c004940:	02801806 	addi.w	$r6,$r0,6(0x6)
1c004944:	58001ca6 	beq	$r5,$r6,28(0x1c) # 1c004960 <shell15+0x27f0>
1c004948:	280001a5 	ld.b	$r5,$r13,0
1c00494c:	5ff114af 	bne	$r5,$r15,-3820(0x3f114) # 1c003a60 <shell15+0x18f0>
1c004950:	288011d3 	ld.w	$r19,$r14,4(0x4)
1c004954:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c004958:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c00495c:	5ff10660 	bne	$r19,$r0,-3836(0x3f104) # 1c003a60 <shell15+0x18f0>
1c004960:	280001aa 	ld.b	$r10,$r13,0
1c004964:	5ff0fd4f 	bne	$r10,$r15,-3844(0x3f0fc) # 1c003a60 <shell15+0x18f0>
1c004968:	288011c6 	ld.w	$r6,$r14,4(0x4)
1c00496c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c004970:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c004974:	5ff0ecc0 	bne	$r6,$r0,-3860(0x3f0ec) # 1c003a60 <shell15+0x18f0>
1c004978:	280001a5 	ld.b	$r5,$r13,0
1c00497c:	5ff0e4af 	bne	$r5,$r15,-3868(0x3f0e4) # 1c003a60 <shell15+0x18f0>
1c004980:	288011d3 	ld.w	$r19,$r14,4(0x4)
1c004984:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c004988:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c00498c:	5ff0d660 	bne	$r19,$r0,-3884(0x3f0d4) # 1c003a60 <shell15+0x18f0>
1c004990:	280001aa 	ld.b	$r10,$r13,0
1c004994:	5ff0cd4f 	bne	$r10,$r15,-3892(0x3f0cc) # 1c003a60 <shell15+0x18f0>
1c004998:	288011c6 	ld.w	$r6,$r14,4(0x4)
1c00499c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0049a0:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0049a4:	5ff0bcc0 	bne	$r6,$r0,-3908(0x3f0bc) # 1c003a60 <shell15+0x18f0>
1c0049a8:	280001a5 	ld.b	$r5,$r13,0
1c0049ac:	5ff0b4af 	bne	$r5,$r15,-3916(0x3f0b4) # 1c003a60 <shell15+0x18f0>
1c0049b0:	288011d3 	ld.w	$r19,$r14,4(0x4)
1c0049b4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0049b8:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0049bc:	5ff0a660 	bne	$r19,$r0,-3932(0x3f0a4) # 1c003a60 <shell15+0x18f0>
1c0049c0:	280001aa 	ld.b	$r10,$r13,0
1c0049c4:	5ff09d4f 	bne	$r10,$r15,-3940(0x3f09c) # 1c003a60 <shell15+0x18f0>
1c0049c8:	288011c6 	ld.w	$r6,$r14,4(0x4)
1c0049cc:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0049d0:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0049d4:	5ff08cc0 	bne	$r6,$r0,-3956(0x3f08c) # 1c003a60 <shell15+0x18f0>
1c0049d8:	58009d2d 	beq	$r9,$r13,156(0x9c) # 1c004a74 <shell15+0x2904>
1c0049dc:	280001aa 	ld.b	$r10,$r13,0
1c0049e0:	5ff0814f 	bne	$r10,$r15,-3968(0x3f080) # 1c003a60 <shell15+0x18f0>
1c0049e4:	288011d3 	ld.w	$r19,$r14,4(0x4)
1c0049e8:	028011c5 	addi.w	$r5,$r14,4(0x4)
1c0049ec:	028005a6 	addi.w	$r6,$r13,1(0x1)
1c0049f0:	5ff07260 	bne	$r19,$r0,-3984(0x3f070) # 1c003a60 <shell15+0x18f0>
1c0049f4:	280005aa 	ld.b	$r10,$r13,1(0x1)
1c0049f8:	5ff0694f 	bne	$r10,$r15,-3992(0x3f068) # 1c003a60 <shell15+0x18f0>
1c0049fc:	288010b3 	ld.w	$r19,$r5,4(0x4)
1c004a00:	5ff06260 	bne	$r19,$r0,-4000(0x3f060) # 1c003a60 <shell15+0x18f0>
1c004a04:	280009aa 	ld.b	$r10,$r13,2(0x2)
1c004a08:	5ff0594f 	bne	$r10,$r15,-4008(0x3f058) # 1c003a60 <shell15+0x18f0>
1c004a0c:	288031d3 	ld.w	$r19,$r14,12(0xc)
1c004a10:	5ff05260 	bne	$r19,$r0,-4016(0x3f050) # 1c003a60 <shell15+0x18f0>
1c004a14:	28000daa 	ld.b	$r10,$r13,3(0x3)
1c004a18:	5ff0494f 	bne	$r10,$r15,-4024(0x3f048) # 1c003a60 <shell15+0x18f0>
1c004a1c:	288041d3 	ld.w	$r19,$r14,16(0x10)
1c004a20:	028041ce 	addi.w	$r14,$r14,16(0x10)
1c004a24:	5ff03e60 	bne	$r19,$r0,-4036(0x3f03c) # 1c003a60 <shell15+0x18f0>
1c004a28:	280011ad 	ld.b	$r13,$r13,4(0x4)
1c004a2c:	5ff035af 	bne	$r13,$r15,-4044(0x3f034) # 1c003a60 <shell15+0x18f0>
1c004a30:	288011ca 	ld.w	$r10,$r14,4(0x4)
1c004a34:	5ff02d40 	bne	$r10,$r0,-4052(0x3f02c) # 1c003a60 <shell15+0x18f0>
1c004a38:	280010d3 	ld.b	$r19,$r6,4(0x4)
1c004a3c:	5ff0266f 	bne	$r19,$r15,-4060(0x3f024) # 1c003a60 <shell15+0x18f0>
1c004a40:	288050ae 	ld.w	$r14,$r5,20(0x14)
1c004a44:	5ff01dc0 	bne	$r14,$r0,-4068(0x3f01c) # 1c003a60 <shell15+0x18f0>
1c004a48:	280014cd 	ld.b	$r13,$r6,5(0x5)
1c004a4c:	5ff015af 	bne	$r13,$r15,-4076(0x3f014) # 1c003a60 <shell15+0x18f0>
1c004a50:	288060aa 	ld.w	$r10,$r5,24(0x18)
1c004a54:	5ff00d40 	bne	$r10,$r0,-4084(0x3f00c) # 1c003a60 <shell15+0x18f0>
1c004a58:	280018d3 	ld.b	$r19,$r6,6(0x6)
1c004a5c:	5ff0066f 	bne	$r19,$r15,-4092(0x3f004) # 1c003a60 <shell15+0x18f0>
1c004a60:	288070aa 	ld.w	$r10,$r5,28(0x1c)
1c004a64:	028070ae 	addi.w	$r14,$r5,28(0x1c)
1c004a68:	02801ccd 	addi.w	$r13,$r6,7(0x7)
1c004a6c:	5feff540 	bne	$r10,$r0,-4108(0x3eff4) # 1c003a60 <shell15+0x18f0>
1c004a70:	5fff6d2d 	bne	$r9,$r13,-148(0x3ff6c) # 1c0049dc <shell15+0x286c>
1c004a74:	2880f06e 	ld.w	$r14,$r3,60(0x3c)
1c004a78:	0280558c 	addi.w	$r12,$r12,21(0x15)
1c004a7c:	02813210 	addi.w	$r16,$r16,76(0x4c)
1c004a80:	5ffe59cc 	bne	$r14,$r12,-424(0x3fe58) # 1c0048d8 <shell15+0x2768>
1c004a84:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c004a88:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004a8c:	580037ad 	beq	$r29,$r13,52(0x34) # 1c004ac0 <shell15+0x2950>
1c004a90:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c004a94:	002017a6 	div.w	$r6,$r29,$r5
1c004a98:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1c004aa0 <shell15+0x2930>
1c004a9c:	002a0007 	break	0x7
1c004aa0:	034004c9 	andi	$r9,$r6,0x1
1c004aa4:	0015024d 	move	$r13,$r18
1c004aa8:	58000920 	beq	$r9,$r0,8(0x8) # 1c004ab0 <shell15+0x2940>
1c004aac:	2880a06d 	ld.w	$r13,$r3,40(0x28)
1c004ab0:	02801021 	addi.w	$r1,$r1,4(0x4)
1c004ab4:	028010e7 	addi.w	$r7,$r7,4(0x4)
1c004ab8:	02801108 	addi.w	$r8,$r8,4(0x4)
1c004abc:	53fd7fff 	b	-644(0xffffd7c) # 1c004838 <shell15+0x26c8>
1c004ac0:	2881806a 	ld.w	$r10,$r3,96(0x60)
1c004ac4:	2880e07d 	ld.w	$r29,$r3,56(0x38)
1c004ac8:	02bffb0e 	addi.w	$r14,$r24,-2(0xffe)
1c004acc:	6002dfaa 	blt	$r29,$r10,732(0x2dc) # 1c004da8 <shell15+0x2c38>
1c004ad0:	2881006d 	ld.w	$r13,$r3,64(0x40)
1c004ad4:	2980f079 	st.w	$r25,$r3,60(0x3c)
1c004ad8:	29810077 	st.w	$r23,$r3,64(0x40)
1c004adc:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c004ae0:	2980d078 	st.w	$r24,$r3,52(0x34)
1c004ae4:	28816078 	ld.w	$r24,$r3,88(0x58)
1c004ae8:	02803d48 	addi.w	$r8,$r10,15(0xf)
1c004aec:	0280414c 	addi.w	$r12,$r10,16(0x10)
1c004af0:	0280232f 	addi.w	$r15,$r25,8(0x8)
1c004af4:	02800d50 	addi.w	$r16,$r10,3(0x3)
1c004af8:	02801151 	addi.w	$r17,$r10,4(0x4)
1c004afc:	02801552 	addi.w	$r18,$r10,5(0x5)
1c004b00:	02801953 	addi.w	$r19,$r10,6(0x6)
1c004b04:	02801d54 	addi.w	$r20,$r10,7(0x7)
1c004b08:	02802144 	addi.w	$r4,$r10,8(0x8)
1c004b0c:	02802545 	addi.w	$r5,$r10,9(0x9)
1c004b10:	02802946 	addi.w	$r6,$r10,10(0xa)
1c004b14:	02802d47 	addi.w	$r7,$r10,11(0xb)
1c004b18:	02803149 	addi.w	$r9,$r10,12(0xc)
1c004b1c:	02803541 	addi.w	$r1,$r10,13(0xd)
1c004b20:	0280395d 	addi.w	$r29,$r10,14(0xe)
1c004b24:	2980a068 	st.w	$r8,$r3,40(0x28)
1c004b28:	2980e06c 	st.w	$r12,$r3,56(0x38)
1c004b2c:	03400000 	andi	$r0,$r0,0x0
1c004b30:	28bed1f9 	ld.w	$r25,$r15,-76(0xfb4)
1c004b34:	02800728 	addi.w	$r8,$r25,1(0x1)
1c004b38:	29bed1e8 	st.w	$r8,$r15,-76(0xfb4)
1c004b3c:	600255aa 	blt	$r13,$r10,596(0x254) # 1c004d90 <shell15+0x2c20>
1c004b40:	02804c0c 	addi.w	$r12,$r0,19(0x13)
1c004b44:	001c31cc 	mul.w	$r12,$r14,$r12
1c004b48:	00107d99 	add.w	$r25,$r12,$r31
1c004b4c:	00408b28 	slli.w	$r8,$r25,0x2
1c004b50:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004b54:	029e5339 	addi.w	$r25,$r25,1940(0x794)
1c004b58:	00102328 	add.w	$r8,$r25,$r8
1c004b5c:	28800119 	ld.w	$r25,$r8,0
1c004b60:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004b64:	29800119 	st.w	$r25,$r8,0
1c004b68:	600229bf 	blt	$r13,$r31,552(0x228) # 1c004d90 <shell15+0x2c20>
1c004b6c:	00105d88 	add.w	$r8,$r12,$r23
1c004b70:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004b74:	029dd339 	addi.w	$r25,$r25,1908(0x774)
1c004b78:	00408908 	slli.w	$r8,$r8,0x2
1c004b7c:	00102328 	add.w	$r8,$r25,$r8
1c004b80:	28800119 	ld.w	$r25,$r8,0
1c004b84:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004b88:	29800119 	st.w	$r25,$r8,0
1c004b8c:	600205b7 	blt	$r13,$r23,516(0x204) # 1c004d90 <shell15+0x2c20>
1c004b90:	00104188 	add.w	$r8,$r12,$r16
1c004b94:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004b98:	029d4339 	addi.w	$r25,$r25,1872(0x750)
1c004b9c:	00408908 	slli.w	$r8,$r8,0x2
1c004ba0:	00102328 	add.w	$r8,$r25,$r8
1c004ba4:	28800119 	ld.w	$r25,$r8,0
1c004ba8:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004bac:	29800119 	st.w	$r25,$r8,0
1c004bb0:	6001e1b0 	blt	$r13,$r16,480(0x1e0) # 1c004d90 <shell15+0x2c20>
1c004bb4:	00104588 	add.w	$r8,$r12,$r17
1c004bb8:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004bbc:	029cb339 	addi.w	$r25,$r25,1836(0x72c)
1c004bc0:	00408908 	slli.w	$r8,$r8,0x2
1c004bc4:	00102328 	add.w	$r8,$r25,$r8
1c004bc8:	28800119 	ld.w	$r25,$r8,0
1c004bcc:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004bd0:	29800119 	st.w	$r25,$r8,0
1c004bd4:	6001bdb1 	blt	$r13,$r17,444(0x1bc) # 1c004d90 <shell15+0x2c20>
1c004bd8:	00104988 	add.w	$r8,$r12,$r18
1c004bdc:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004be0:	029c2339 	addi.w	$r25,$r25,1800(0x708)
1c004be4:	00408908 	slli.w	$r8,$r8,0x2
1c004be8:	00102328 	add.w	$r8,$r25,$r8
1c004bec:	28800119 	ld.w	$r25,$r8,0
1c004bf0:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004bf4:	29800119 	st.w	$r25,$r8,0
1c004bf8:	600199b2 	blt	$r13,$r18,408(0x198) # 1c004d90 <shell15+0x2c20>
1c004bfc:	00104d88 	add.w	$r8,$r12,$r19
1c004c00:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004c04:	029b9339 	addi.w	$r25,$r25,1764(0x6e4)
1c004c08:	00408908 	slli.w	$r8,$r8,0x2
1c004c0c:	00102328 	add.w	$r8,$r25,$r8
1c004c10:	28800119 	ld.w	$r25,$r8,0
1c004c14:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004c18:	29800119 	st.w	$r25,$r8,0
1c004c1c:	600175b3 	blt	$r13,$r19,372(0x174) # 1c004d90 <shell15+0x2c20>
1c004c20:	00105188 	add.w	$r8,$r12,$r20
1c004c24:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004c28:	029b0339 	addi.w	$r25,$r25,1728(0x6c0)
1c004c2c:	00408908 	slli.w	$r8,$r8,0x2
1c004c30:	00102328 	add.w	$r8,$r25,$r8
1c004c34:	28800119 	ld.w	$r25,$r8,0
1c004c38:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004c3c:	29800119 	st.w	$r25,$r8,0
1c004c40:	600151b4 	blt	$r13,$r20,336(0x150) # 1c004d90 <shell15+0x2c20>
1c004c44:	00101188 	add.w	$r8,$r12,$r4
1c004c48:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004c4c:	029a7339 	addi.w	$r25,$r25,1692(0x69c)
1c004c50:	00408908 	slli.w	$r8,$r8,0x2
1c004c54:	00102328 	add.w	$r8,$r25,$r8
1c004c58:	28800119 	ld.w	$r25,$r8,0
1c004c5c:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004c60:	29800119 	st.w	$r25,$r8,0
1c004c64:	60012da4 	blt	$r13,$r4,300(0x12c) # 1c004d90 <shell15+0x2c20>
1c004c68:	0010158c 	add.w	$r12,$r12,$r5
1c004c6c:	00408988 	slli.w	$r8,$r12,0x2
1c004c70:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004c74:	0299d339 	addi.w	$r25,$r25,1652(0x674)
1c004c78:	0010232c 	add.w	$r12,$r25,$r8
1c004c7c:	28800188 	ld.w	$r8,$r12,0
1c004c80:	02800508 	addi.w	$r8,$r8,1(0x1)
1c004c84:	29800188 	st.w	$r8,$r12,0
1c004c88:	600109a5 	blt	$r13,$r5,264(0x108) # 1c004d90 <shell15+0x2c20>
1c004c8c:	02804c0c 	addi.w	$r12,$r0,19(0x13)
1c004c90:	001c31cc 	mul.w	$r12,$r14,$r12
1c004c94:	00101988 	add.w	$r8,$r12,$r6
1c004c98:	00408908 	slli.w	$r8,$r8,0x2
1c004c9c:	00102328 	add.w	$r8,$r25,$r8
1c004ca0:	28800119 	ld.w	$r25,$r8,0
1c004ca4:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004ca8:	29800119 	st.w	$r25,$r8,0
1c004cac:	6000e5a6 	blt	$r13,$r6,228(0xe4) # 1c004d90 <shell15+0x2c20>
1c004cb0:	00101d88 	add.w	$r8,$r12,$r7
1c004cb4:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004cb8:	0298c339 	addi.w	$r25,$r25,1584(0x630)
1c004cbc:	00408908 	slli.w	$r8,$r8,0x2
1c004cc0:	00102328 	add.w	$r8,$r25,$r8
1c004cc4:	28800119 	ld.w	$r25,$r8,0
1c004cc8:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004ccc:	29800119 	st.w	$r25,$r8,0
1c004cd0:	6000c1a7 	blt	$r13,$r7,192(0xc0) # 1c004d90 <shell15+0x2c20>
1c004cd4:	00102588 	add.w	$r8,$r12,$r9
1c004cd8:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004cdc:	02983339 	addi.w	$r25,$r25,1548(0x60c)
1c004ce0:	00408908 	slli.w	$r8,$r8,0x2
1c004ce4:	00102328 	add.w	$r8,$r25,$r8
1c004ce8:	28800119 	ld.w	$r25,$r8,0
1c004cec:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004cf0:	29800119 	st.w	$r25,$r8,0
1c004cf4:	60009da9 	blt	$r13,$r9,156(0x9c) # 1c004d90 <shell15+0x2c20>
1c004cf8:	00100588 	add.w	$r8,$r12,$r1
1c004cfc:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004d00:	0297a339 	addi.w	$r25,$r25,1512(0x5e8)
1c004d04:	00408908 	slli.w	$r8,$r8,0x2
1c004d08:	00102328 	add.w	$r8,$r25,$r8
1c004d0c:	28800119 	ld.w	$r25,$r8,0
1c004d10:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004d14:	29800119 	st.w	$r25,$r8,0
1c004d18:	600079a1 	blt	$r13,$r1,120(0x78) # 1c004d90 <shell15+0x2c20>
1c004d1c:	00107588 	add.w	$r8,$r12,$r29
1c004d20:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004d24:	02971339 	addi.w	$r25,$r25,1476(0x5c4)
1c004d28:	00408908 	slli.w	$r8,$r8,0x2
1c004d2c:	00102328 	add.w	$r8,$r25,$r8
1c004d30:	28800119 	ld.w	$r25,$r8,0
1c004d34:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004d38:	29800119 	st.w	$r25,$r8,0
1c004d3c:	600055bd 	blt	$r13,$r29,84(0x54) # 1c004d90 <shell15+0x2c20>
1c004d40:	2880a068 	ld.w	$r8,$r3,40(0x28)
1c004d44:	00102199 	add.w	$r25,$r12,$r8
1c004d48:	00408b28 	slli.w	$r8,$r25,0x2
1c004d4c:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c004d50:	02966339 	addi.w	$r25,$r25,1432(0x598)
1c004d54:	00102328 	add.w	$r8,$r25,$r8
1c004d58:	28800119 	ld.w	$r25,$r8,0
1c004d5c:	02800739 	addi.w	$r25,$r25,1(0x1)
1c004d60:	29800119 	st.w	$r25,$r8,0
1c004d64:	2880a068 	ld.w	$r8,$r3,40(0x28)
1c004d68:	600029a8 	blt	$r13,$r8,40(0x28) # 1c004d90 <shell15+0x2c20>
1c004d6c:	2880e079 	ld.w	$r25,$r3,56(0x38)
1c004d70:	1c000f68 	pcaddu12i	$r8,123(0x7b)
1c004d74:	0295d108 	addi.w	$r8,$r8,1396(0x574)
1c004d78:	0010658c 	add.w	$r12,$r12,$r25
1c004d7c:	00408999 	slli.w	$r25,$r12,0x2
1c004d80:	0010650c 	add.w	$r12,$r8,$r25
1c004d84:	28800199 	ld.w	$r25,$r12,0
1c004d88:	02800728 	addi.w	$r8,$r25,1(0x1)
1c004d8c:	29800188 	st.w	$r8,$r12,0
1c004d90:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c004d94:	028131ef 	addi.w	$r15,$r15,76(0x4c)
1c004d98:	67fd9b0e 	bge	$r24,$r14,-616(0x3fd98) # 1c004b30 <shell15+0x29c0>
1c004d9c:	2880f079 	ld.w	$r25,$r3,60(0x3c)
1c004da0:	28810077 	ld.w	$r23,$r3,64(0x40)
1c004da4:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c004da8:	2881906a 	ld.w	$r10,$r3,100(0x64)
1c004dac:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c004db0:	5800294e 	beq	$r10,$r14,40(0x28) # 1c004dd8 <shell15+0x2c68>
1c004db4:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c004db8:	5800314f 	beq	$r10,$r15,48(0x30) # 1c004de8 <shell15+0x2c78>
1c004dbc:	28812070 	ld.w	$r16,$r3,72(0x48)
1c004dc0:	02800611 	addi.w	$r17,$r16,1(0x1)
1c004dc4:	29812071 	st.w	$r17,$r3,72(0x48)
1c004dc8:	53ec9bff 	b	-4968(0xfffec98) # 1c003a60 <shell15+0x18f0>
1c004dcc:	03400000 	andi	$r0,$r0,0x0
1c004dd0:	00150285 	move	$r5,$r20
1c004dd4:	53f7f3ff 	b	-2064(0xffff7f0) # 1c0045c4 <shell15+0x2454>
1c004dd8:	28813074 	ld.w	$r20,$r3,76(0x4c)
1c004ddc:	02800684 	addi.w	$r4,$r20,1(0x1)
1c004de0:	29813064 	st.w	$r4,$r3,76(0x4c)
1c004de4:	53ec7fff 	b	-4996(0xfffec7c) # 1c003a60 <shell15+0x18f0>
1c004de8:	28814072 	ld.w	$r18,$r3,80(0x50)
1c004dec:	02800653 	addi.w	$r19,$r18,1(0x1)
1c004df0:	29814073 	st.w	$r19,$r3,80(0x50)
1c004df4:	53ec6fff 	b	-5012(0xfffec6c) # 1c003a60 <shell15+0x18f0>
1c004df8:	02800810 	addi.w	$r16,$r0,2(0x2)
1c004dfc:	02800411 	addi.w	$r17,$r0,1(0x1)
1c004e00:	29819070 	st.w	$r16,$r3,100(0x64)
1c004e04:	53f97bff 	b	-1672(0xffff978) # 1c00477c <shell15+0x260c>
1c004e08:	03400000 	andi	$r0,$r0,0x0
1c004e0c:	03400000 	andi	$r0,$r0,0x0

1c004e10 <printf>:
printf():
/code/fpga/nscscc-team/software/perf/lib/printf.c:2
int printf(const char *fmt,...)
{
1c004e10:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c004e14:	2980b07a 	st.w	$r26,$r3,44(0x2c)
1c004e18:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c004e1c:	2980e077 	st.w	$r23,$r3,56(0x38)
1c004e20:	2980d078 	st.w	$r24,$r3,52(0x34)
1c004e24:	2980c079 	st.w	$r25,$r3,48(0x30)
1c004e28:	2980a07b 	st.w	$r27,$r3,40(0x28)
1c004e2c:	2980907c 	st.w	$r28,$r3,36(0x24)
1c004e30:	29811065 	st.w	$r5,$r3,68(0x44)
1c004e34:	29812066 	st.w	$r6,$r3,72(0x48)
/code/fpga/nscscc-team/software/perf/lib/printf.c:10
void **arg;
void *ap;
int w;
__builtin_va_start(ap,fmt);
arg=ap;
for(i=0;fmt[i];i++)
1c004e38:	28000097 	ld.b	$r23,$r4,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c004e3c:	0281107a 	addi.w	$r26,$r3,68(0x44)
/code/fpga/nscscc-team/software/perf/lib/printf.c:2
{
1c004e40:	29813067 	st.w	$r7,$r3,76(0x4c)
1c004e44:	29814068 	st.w	$r8,$r3,80(0x50)
1c004e48:	29815069 	st.w	$r9,$r3,84(0x54)
1c004e4c:	2981606a 	st.w	$r10,$r3,88(0x58)
1c004e50:	2981706b 	st.w	$r11,$r3,92(0x5c)
/code/fpga/nscscc-team/software/perf/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c004e54:	2980707a 	st.w	$r26,$r3,28(0x1c)
/code/fpga/nscscc-team/software/perf/lib/printf.c:10
for(i=0;fmt[i];i++)
1c004e58:	58008ae0 	beq	$r23,$r0,136(0x88) # 1c004ee0 <printf+0xd0>
1c004e5c:	00150099 	move	$r25,$r4
1c004e60:	00150018 	move	$r24,$r0
1c004e64:	1c000f7c 	pcaddu12i	$r28,123(0x7b)
1c004e68:	0288f39c 	addi.w	$r28,$r28,572(0x23c)
1c004e6c:	0280201b 	addi.w	$r27,$r0,8(0x8)
1c004e70:	50001c00 	b	28(0x1c) # 1c004e8c <printf+0x7c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:80
		}

	}
	else{
		if(c=='\n') putchar('\r');
		putchar(c);
1c004e74:	001502e4 	move	$r4,$r23
1c004e78:	5401d800 	bl	472(0x1d8) # 1c005050 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:10 (discriminator 2)
for(i=0;fmt[i];i++)
1c004e7c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c004e80:	0010632c 	add.w	$r12,$r25,$r24
1c004e84:	28000197 	ld.b	$r23,$r12,0
1c004e88:	58005ae0 	beq	$r23,$r0,88(0x58) # 1c004ee0 <printf+0xd0>
/code/fpga/nscscc-team/software/perf/lib/printf.c:13
	if(c=='%')
1c004e8c:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c004e90:	58001aec 	beq	$r23,$r12,24(0x18) # 1c004ea8 <printf+0x98>
/code/fpga/nscscc-team/software/perf/lib/printf.c:79
		if(c=='\n') putchar('\r');
1c004e94:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004e98:	5fffdeec 	bne	$r23,$r12,-36(0x3ffdc) # 1c004e74 <printf+0x64>
/code/fpga/nscscc-team/software/perf/lib/printf.c:79 (discriminator 1)
1c004e9c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c004ea0:	5401b000 	bl	432(0x1b0) # 1c005050 <putchar>
1c004ea4:	53ffd3ff 	b	-48(0xfffffd0) # 1c004e74 <printf+0x64>
1c004ea8:	0010632c 	add.w	$r12,$r25,$r24
1c004eac:	2800058d 	ld.b	$r13,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:15
		w=1;
1c004eb0:	02800405 	addi.w	$r5,$r0,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:17
		switch(fmt[i+1])
1c004eb4:	02814c10 	addi.w	$r16,$r0,83(0x53)
/code/fpga/nscscc-team/software/perf/lib/printf.c:68
				 w=w*10+(fmt[i+1]-'0');
1c004eb8:	0280280f 	addi.w	$r15,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:17
		switch(fmt[i+1])
1c004ebc:	02bf6dac 	addi.w	$r12,$r13,-37(0xfdb)
1c004ec0:	2980306c 	st.w	$r12,$r3,12(0xc)
1c004ec4:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c004ec8:	68017a0c 	bltu	$r16,$r12,376(0x178) # 1c005040 <printf+0x230>
1c004ecc:	0040898c 	slli.w	$r12,$r12,0x2
1c004ed0:	0010338c 	add.w	$r12,$r28,$r12
1c004ed4:	2880018c 	ld.w	$r12,$r12,0
1c004ed8:	4c000180 	jirl	$r0,$r12,0
1c004edc:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:84
	}
}
	return 0;
}
1c004ee0:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c004ee4:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c004ee8:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c004eec:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c004ef0:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c004ef4:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c004ef8:	2880907c 	ld.w	$r28,$r3,36(0x24)
1c004efc:	00150004 	move	$r4,$r0
1c004f00:	02818063 	addi.w	$r3,$r3,96(0x60)
1c004f04:	4c000020 	jirl	$r0,$r1,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:65
				i++;
1c004f08:	0010632c 	add.w	$r12,$r25,$r24
1c004f0c:	2800098d 	ld.b	$r13,$r12,2(0x2)
1c004f10:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 1)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c004f14:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c004f18:	2980306c 	st.w	$r12,$r3,12(0xc)
1c004f1c:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c004f20:	00150005 	move	$r5,$r0
1c004f24:	6bff9b6c 	bltu	$r27,$r12,-104(0x3ff98) # 1c004ebc <printf+0xac>
/code/fpga/nscscc-team/software/perf/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c004f28:	001c3ca5 	mul.w	$r5,$r5,$r15
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c004f2c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c004f30:	0010632c 	add.w	$r12,$r25,$r24
/code/fpga/nscscc-team/software/perf/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c004f34:	02bf41ae 	addi.w	$r14,$r13,-48(0xfd0)
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c004f38:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c004f3c:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c004f40:	2980306c 	st.w	$r12,$r3,12(0xc)
1c004f44:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c004f48:	001015c5 	add.w	$r5,$r14,$r5
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c004f4c:	6fffdf6c 	bgeu	$r27,$r12,-36(0x3ffdc) # 1c004f28 <printf+0x118>
1c004f50:	53ff6fff 	b	-148(0xfffff6c) # 1c004ebc <printf+0xac>
/code/fpga/nscscc-team/software/perf/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c004f54:	28800344 	ld.w	$r4,$r26,0
1c004f58:	00150007 	move	$r7,$r0
1c004f5c:	02800806 	addi.w	$r6,$r0,2(0x2)
/code/fpga/nscscc-team/software/perf/lib/printf.c:51
				arg++;
1c004f60:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:52
				i++;
1c004f64:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c004f68:	54021800 	bl	536(0x218) # 1c005180 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:53
				break;
1c004f6c:	53ff13ff 	b	-240(0xfffff10) # 1c004e7c <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:25
				putchar((long)*arg);
1c004f70:	28800344 	ld.w	$r4,$r26,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:27
				i++;
1c004f74:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:26
				arg++;
1c004f78:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:25
				putchar((long)*arg);
1c004f7c:	5400d400 	bl	212(0xd4) # 1c005050 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:28
				break;
1c004f80:	53feffff 	b	-260(0xffffefc) # 1c004e7c <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c004f84:	28800344 	ld.w	$r4,$r26,0
1c004f88:	02800407 	addi.w	$r7,$r0,1(0x1)
1c004f8c:	02802806 	addi.w	$r6,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:36
				arg++;
1c004f90:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:37
				i++;
1c004f94:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c004f98:	5401e800 	bl	488(0x1e8) # 1c005180 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:38
				break;
1c004f9c:	53fee3ff 	b	-288(0xffffee0) # 1c004e7c <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c004fa0:	28800344 	ld.w	$r4,$r26,0
1c004fa4:	00150007 	move	$r7,$r0
1c004fa8:	02802806 	addi.w	$r6,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:41
                arg++;
1c004fac:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:42
                i=i+2;
1c004fb0:	02800b18 	addi.w	$r24,$r24,2(0x2)
/code/fpga/nscscc-team/software/perf/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c004fb4:	5401cc00 	bl	460(0x1cc) # 1c005180 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:43
                break;
1c004fb8:	53fec7ff 	b	-316(0xffffec4) # 1c004e7c <printf+0x6c>
1c004fbc:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c004fc0:	28800344 	ld.w	$r4,$r26,0
1c004fc4:	00150007 	move	$r7,$r0
1c004fc8:	02802006 	addi.w	$r6,$r0,8(0x8)
/code/fpga/nscscc-team/software/perf/lib/printf.c:46
				arg++;
1c004fcc:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:47
				i++;
1c004fd0:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c004fd4:	5401ac00 	bl	428(0x1ac) # 1c005180 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:48
				break;
1c004fd8:	53fea7ff 	b	-348(0xffffea4) # 1c004e7c <printf+0x6c>
1c004fdc:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c004fe0:	28800344 	ld.w	$r4,$r26,0
1c004fe4:	00150007 	move	$r7,$r0
1c004fe8:	02804006 	addi.w	$r6,$r0,16(0x10)
/code/fpga/nscscc-team/software/perf/lib/printf.c:57
				arg++;
1c004fec:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:58
				i++;
1c004ff0:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c004ff4:	54018c00 	bl	396(0x18c) # 1c005180 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:59
				break;
1c004ff8:	53fe87ff 	b	-380(0xffffe84) # 1c004e7c <printf+0x6c>
1c004ffc:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:20
				putstring(*arg);
1c005000:	28800344 	ld.w	$r4,$r26,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:22
				i++;
1c005004:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:21
				arg++;
1c005008:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:20
				putstring(*arg);
1c00500c:	5400c400 	bl	196(0xc4) # 1c0050d0 <putstring>
/code/fpga/nscscc-team/software/perf/lib/printf.c:23
				break;
1c005010:	53fe6fff 	b	-404(0xffffe6c) # 1c004e7c <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c005014:	28800344 	ld.w	$r4,$r26,0
1c005018:	00150007 	move	$r7,$r0
1c00501c:	02802806 	addi.w	$r6,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:31
				arg++;
1c005020:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:32
				i++;
1c005024:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c005028:	54015800 	bl	344(0x158) # 1c005180 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:33
				break;
1c00502c:	53fe53ff 	b	-432(0xffffe50) # 1c004e7c <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:61
				putchar('%');
1c005030:	02809404 	addi.w	$r4,$r0,37(0x25)
/code/fpga/nscscc-team/software/perf/lib/printf.c:62
				i++;
1c005034:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:61
				putchar('%');
1c005038:	54001800 	bl	24(0x18) # 1c005050 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:63
				break;
1c00503c:	53fe43ff 	b	-448(0xffffe40) # 1c004e7c <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:73
				putchar('%');
1c005040:	02809404 	addi.w	$r4,$r0,37(0x25)
1c005044:	54000c00 	bl	12(0xc) # 1c005050 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:74
				break;
1c005048:	53fe37ff 	b	-460(0xffffe34) # 1c004e7c <printf+0x6c>
1c00504c:	03400000 	andi	$r0,$r0,0x0

1c005050 <putchar>:
putchar():
/code/fpga/nscscc-team/software/perf/lib/putchar.c:2
int putchar(int c)
{
1c005050:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005054:	29803079 	st.w	$r25,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/putchar.c:9
return 0;
}

void tgt_putchar(c)
{   //UART_ADDR
    asm(
1c005058:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c00505c:	03bc4339 	ori	$r25,$r25,0xf10
1c005060:	29000324 	st.b	$r4,$r25,0
1c005064:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/putchar.c:5
}
1c005068:	00150004 	move	$r4,$r0
1c00506c:	28803079 	ld.w	$r25,$r3,12(0xc)
1c005070:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005074:	4c000020 	jirl	$r0,$r1,0
1c005078:	03400000 	andi	$r0,$r0,0x0
1c00507c:	03400000 	andi	$r0,$r0,0x0

1c005080 <tgt_putchar>:
tgt_putchar():
/code/fpga/nscscc-team/software/perf/lib/putchar.c:8
{   //UART_ADDR
1c005080:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005084:	29803079 	st.w	$r25,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/putchar.c:9
    asm(
1c005088:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c00508c:	03bc4339 	ori	$r25,$r25,0xf10
1c005090:	29000324 	st.b	$r4,$r25,0
1c005094:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/putchar.c:16
        "st.b %0,$r25,0\n\t"        
        "nop\n\t"
        :
        :"r"(c)
        :"$r25");
}
1c005098:	28803079 	ld.w	$r25,$r3,12(0xc)
1c00509c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0050a0:	4c000020 	jirl	$r0,$r1,0
1c0050a4:	03400000 	andi	$r0,$r0,0x0
1c0050a8:	03400000 	andi	$r0,$r0,0x0
1c0050ac:	03400000 	andi	$r0,$r0,0x0

1c0050b0 <uart_putchar>:
uart_putchar():
/code/fpga/nscscc-team/software/perf/lib/putchar.c:20

void uart_putchar (int c)
{
    while ((*((volatile uint32_t *)0xbeaf0004)) & 0x1);
1c0050b0:	157d5e0e 	lu12i.w	$r14,-267536(0xbeaf0)
1c0050b4:	038011cd 	ori	$r13,$r14,0x4
/code/fpga/nscscc-team/software/perf/lib/putchar.c:20 (discriminator 1)
1c0050b8:	288001ac 	ld.w	$r12,$r13,0
1c0050bc:	0340058c 	andi	$r12,$r12,0x1
1c0050c0:	5ffff980 	bne	$r12,$r0,-8(0x3fff8) # 1c0050b8 <uart_putchar+0x8>
/code/fpga/nscscc-team/software/perf/lib/putchar.c:21
    (*((volatile uint32_t *)0xbeaf000c)) = c;
1c0050c4:	038031ce 	ori	$r14,$r14,0xc
1c0050c8:	298001c4 	st.w	$r4,$r14,0
/code/fpga/nscscc-team/software/perf/lib/putchar.c:22
}
1c0050cc:	4c000020 	jirl	$r0,$r1,0

1c0050d0 <putstring>:
putstring():
/code/fpga/nscscc-team/software/perf/lib/puts.c:2
int putstring(char *s)
{
1c0050d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0050d4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0050d8:	29802077 	st.w	$r23,$r3,8(0x8)
1c0050dc:	29801078 	st.w	$r24,$r3,4(0x4)
1c0050e0:	29800079 	st.w	$r25,$r3,0
/code/fpga/nscscc-team/software/perf/lib/puts.c:4
char c;
while((c=*s))
1c0050e4:	28000097 	ld.b	$r23,$r4,0
1c0050e8:	580042e0 	beq	$r23,$r0,64(0x40) # 1c005128 <putstring+0x58>
1c0050ec:	00150098 	move	$r24,$r4
/code/fpga/nscscc-team/software/perf/lib/puts.c:6
{
 if(c == '\n') putchar('\r');
1c0050f0:	02802819 	addi.w	$r25,$r0,10(0xa)
1c0050f4:	50001400 	b	20(0x14) # 1c005108 <putstring+0x38>
/code/fpga/nscscc-team/software/perf/lib/puts.c:7
 putchar(c);
1c0050f8:	001502e4 	move	$r4,$r23
1c0050fc:	57ff57ff 	bl	-172(0xfffff54) # 1c005050 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:4
while((c=*s))
1c005100:	28000317 	ld.b	$r23,$r24,0
1c005104:	580026e0 	beq	$r23,$r0,36(0x24) # 1c005128 <putstring+0x58>
/code/fpga/nscscc-team/software/perf/lib/puts.c:8
 s++;
1c005108:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/puts.c:6
 if(c == '\n') putchar('\r');
1c00510c:	5fffeef9 	bne	$r23,$r25,-20(0x3ffec) # 1c0050f8 <putstring+0x28>
/code/fpga/nscscc-team/software/perf/lib/puts.c:6 (discriminator 1)
1c005110:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005114:	57ff3fff 	bl	-196(0xfffff3c) # 1c005050 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:7 (discriminator 1)
 putchar(c);
1c005118:	001502e4 	move	$r4,$r23
1c00511c:	57ff37ff 	bl	-204(0xfffff34) # 1c005050 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:4 (discriminator 1)
while((c=*s))
1c005120:	28000317 	ld.b	$r23,$r24,0
1c005124:	5fffe6e0 	bne	$r23,$r0,-28(0x3ffe4) # 1c005108 <putstring+0x38>
/code/fpga/nscscc-team/software/perf/lib/puts.c:11
}
return 0;
}
1c005128:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00512c:	28802077 	ld.w	$r23,$r3,8(0x8)
1c005130:	28801078 	ld.w	$r24,$r3,4(0x4)
1c005134:	28800079 	ld.w	$r25,$r3,0
1c005138:	00150004 	move	$r4,$r0
1c00513c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005140:	4c000020 	jirl	$r0,$r1,0
1c005144:	03400000 	andi	$r0,$r0,0x0
1c005148:	03400000 	andi	$r0,$r0,0x0
1c00514c:	03400000 	andi	$r0,$r0,0x0

1c005150 <puts>:
puts():
/code/fpga/nscscc-team/software/perf/lib/puts.c:15


int puts(char *s)
{
1c005150:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005154:	29803061 	st.w	$r1,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/puts.c:16
putstring(s);
1c005158:	57ff7bff 	bl	-136(0xfffff78) # 1c0050d0 <putstring>
/code/fpga/nscscc-team/software/perf/lib/puts.c:17
putchar('\r');
1c00515c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005160:	57fef3ff 	bl	-272(0xffffef0) # 1c005050 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:18
putchar('\n');
1c005164:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005168:	57feebff 	bl	-280(0xffffee8) # 1c005050 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:20
return 0;
}
1c00516c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005170:	00150004 	move	$r4,$r0
1c005174:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005178:	4c000020 	jirl	$r0,$r1,0
1c00517c:	03400000 	andi	$r0,$r0,0x0

1c005180 <printbase>:
printbase():
/code/fpga/nscscc-team/software/perf/lib/printbase.c:2
int printbase(long v,int w,int base,int sign)
{
1c005180:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c005184:	29816077 	st.w	$r23,$r3,88(0x58)
1c005188:	29817061 	st.w	$r1,$r3,92(0x5c)
1c00518c:	29815078 	st.w	$r24,$r3,84(0x54)
1c005190:	29814079 	st.w	$r25,$r3,80(0x50)
1c005194:	00150097 	move	$r23,$r4
/code/fpga/nscscc-team/software/perf/lib/printbase.c:7
	int i,j;
	int c;
	char buf[64];
	unsigned long value;
	if(sign && v<0)
1c005198:	580008e0 	beq	$r7,$r0,8(0x8) # 1c0051a0 <printbase+0x20>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:7 (discriminator 1)
1c00519c:	6000a480 	blt	$r4,$r0,164(0xa4) # 1c005240 <printbase+0xc0>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:14
	value = -v;
	putchar('-');
	}
	else value=v;

	for(i=0;value;i++)
1c0051a0:	5800c2e0 	beq	$r23,$r0,192(0xc0) # 1c005260 <printbase+0xe0>
1c0051a4:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c0051a8:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0051ac:	001131ce 	sub.w	$r14,$r14,$r12
1c0051b0:	50000800 	b	8(0x8) # 1c0051b8 <printbase+0x38>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:17
	{
	buf[i]=value%base;
	value=value/base;
1c0051b4:	001501b7 	move	$r23,$r13
/code/fpga/nscscc-team/software/perf/lib/printbase.c:16 (discriminator 3)
	buf[i]=value%base;
1c0051b8:	00219aed 	mod.wu	$r13,$r23,$r6
1c0051bc:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c0051c4 <printbase+0x44>
1c0051c0:	002a0007 	break	0x7
1c0051c4:	2900018d 	st.b	$r13,$r12,0
/code/fpga/nscscc-team/software/perf/lib/printbase.c:17 (discriminator 3)
	value=value/base;
1c0051c8:	001031d8 	add.w	$r24,$r14,$r12
1c0051cc:	00211aed 	div.wu	$r13,$r23,$r6
1c0051d0:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c0051d8 <printbase+0x58>
1c0051d4:	002a0007 	break	0x7
1c0051d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printbase.c:14 (discriminator 3)
	for(i=0;value;i++)
1c0051dc:	6fffdae6 	bgeu	$r23,$r6,-40(0x3ffd8) # 1c0051b4 <printbase+0x34>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22
	}

#define max(a,b) (((a)>(b))?(a):(b))

	for(j=max(w,i);j>0;j--)
1c0051e0:	600058b8 	blt	$r5,$r24,88(0x58) # 1c005238 <printbase+0xb8>
1c0051e4:	001500b7 	move	$r23,$r5
/code/fpga/nscscc-team/software/perf/lib/printbase.c:25
	{
		c=j>i?0:buf[j-1];
		putchar((c<=9)?c+'0':c-0xa+'a');
1c0051e8:	02802419 	addi.w	$r25,$r0,9(0x9)
1c0051ec:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printbase.c:24
		c=j>i?0:buf[j-1];
1c0051f0:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c0051f4:	00105d8c 	add.w	$r12,$r12,$r23
1c0051f8:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c0051fc:	60001717 	blt	$r24,$r23,20(0x14) # 1c005210 <printbase+0x90>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:24 (discriminator 1)
1c005200:	283ffd8c 	ld.b	$r12,$r12,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/printbase.c:25 (discriminator 1)
		putchar((c<=9)?c+'0':c-0xa+'a');
1c005204:	02815d84 	addi.w	$r4,$r12,87(0x57)
1c005208:	60000b2c 	blt	$r25,$r12,8(0x8) # 1c005210 <printbase+0x90>
1c00520c:	0280c184 	addi.w	$r4,$r12,48(0x30)
1c005210:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/printbase.c:25 (discriminator 4)
1c005214:	57fe3fff 	bl	-452(0xffffe3c) # 1c005050 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22 (discriminator 4)
	for(j=max(w,i);j>0;j--)
1c005218:	5fffdae0 	bne	$r23,$r0,-40(0x3ffd8) # 1c0051f0 <printbase+0x70>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:28
	}
	return 0;
}
1c00521c:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c005220:	28816077 	ld.w	$r23,$r3,88(0x58)
1c005224:	28815078 	ld.w	$r24,$r3,84(0x54)
1c005228:	28814079 	ld.w	$r25,$r3,80(0x50)
1c00522c:	00150004 	move	$r4,$r0
1c005230:	02818063 	addi.w	$r3,$r3,96(0x60)
1c005234:	4c000020 	jirl	$r0,$r1,0
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c005238:	00150305 	move	$r5,$r24
1c00523c:	53ffabff 	b	-88(0xfffffa8) # 1c0051e4 <printbase+0x64>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:10
	putchar('-');
1c005240:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c005244:	29803066 	st.w	$r6,$r3,12(0xc)
1c005248:	29802065 	st.w	$r5,$r3,8(0x8)
1c00524c:	57fe07ff 	bl	-508(0xffffe04) # 1c005050 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:9
	value = -v;
1c005250:	00115c17 	sub.w	$r23,$r0,$r23
/code/fpga/nscscc-team/software/perf/lib/printbase.c:10
	putchar('-');
1c005254:	28802065 	ld.w	$r5,$r3,8(0x8)
1c005258:	28803066 	ld.w	$r6,$r3,12(0xc)
1c00525c:	53ff4bff 	b	-184(0xfffff48) # 1c0051a4 <printbase+0x24>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c005260:	67ffbc05 	bge	$r0,$r5,-68(0x3ffbc) # 1c00521c <printbase+0x9c>
1c005264:	00150018 	move	$r24,$r0
1c005268:	53ff7fff 	b	-132(0xfffff7c) # 1c0051e4 <printbase+0x64>
1c00526c:	03400000 	andi	$r0,$r0,0x0

1c005270 <strlen>:
strlen():
/code/fpga/nscscc-team/software/perf/lib/string.c:14
 * The strlen() function returns the length of string @s.
 * */
size_t
strlen(const char *s) {
    size_t cnt = 0;
    while (*s ++ != '\0') {
1c005270:	2800008c 	ld.b	$r12,$r4,0
1c005274:	58002580 	beq	$r12,$r0,36(0x24) # 1c005298 <strlen+0x28>
/code/fpga/nscscc-team/software/perf/lib/string.c:13
    size_t cnt = 0;
1c005278:	0015000c 	move	$r12,$r0
1c00527c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:15
        cnt ++;
1c005280:	0280058c 	addi.w	$r12,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:14
    while (*s ++ != '\0') {
1c005284:	0010308d 	add.w	$r13,$r4,$r12
1c005288:	280001ad 	ld.b	$r13,$r13,0
1c00528c:	5ffff5a0 	bne	$r13,$r0,-12(0x3fff4) # 1c005280 <strlen+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:18
    }
    return cnt;
}
1c005290:	00150184 	move	$r4,$r12
1c005294:	4c000020 	jirl	$r0,$r1,0
/code/fpga/nscscc-team/software/perf/lib/string.c:13
    size_t cnt = 0;
1c005298:	0015000c 	move	$r12,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:18
}
1c00529c:	00150184 	move	$r4,$r12
1c0052a0:	4c000020 	jirl	$r0,$r1,0
1c0052a4:	03400000 	andi	$r0,$r0,0x0
1c0052a8:	03400000 	andi	$r0,$r0,0x0
1c0052ac:	03400000 	andi	$r0,$r0,0x0

1c0052b0 <strnlen>:
strnlen():
/code/fpga/nscscc-team/software/perf/lib/string.c:35
 * @len if there is no '\0' character among the first @len characters
 * pointed by @s.
 * */
size_t
strnlen(const char *s, size_t len) {
    size_t cnt = 0;
1c0052b0:	0015000c 	move	$r12,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c0052b4:	580028a0 	beq	$r5,$r0,40(0x28) # 1c0052dc <strnlen+0x2c>
1c0052b8:	2800008d 	ld.b	$r13,$r4,0
/code/fpga/nscscc-team/software/perf/lib/string.c:35
    size_t cnt = 0;
1c0052bc:	0015000c 	move	$r12,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c0052c0:	5c0011a0 	bne	$r13,$r0,16(0x10) # 1c0052d0 <strnlen+0x20>
1c0052c4:	50001800 	b	24(0x18) # 1c0052dc <strnlen+0x2c>
/code/fpga/nscscc-team/software/perf/lib/string.c:36 (discriminator 1)
1c0052c8:	280001ad 	ld.b	$r13,$r13,0
1c0052cc:	580011a0 	beq	$r13,$r0,16(0x10) # 1c0052dc <strnlen+0x2c>
/code/fpga/nscscc-team/software/perf/lib/string.c:37
        cnt ++;
1c0052d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c0052d4:	0010308d 	add.w	$r13,$r4,$r12
1c0052d8:	5ffff0ac 	bne	$r5,$r12,-16(0x3fff0) # 1c0052c8 <strnlen+0x18>
/code/fpga/nscscc-team/software/perf/lib/string.c:40
    }
    return cnt;
}
1c0052dc:	00150184 	move	$r4,$r12
1c0052e0:	4c000020 	jirl	$r0,$r1,0
1c0052e4:	03400000 	andi	$r0,$r0,0x0
1c0052e8:	03400000 	andi	$r0,$r0,0x0
1c0052ec:	03400000 	andi	$r0,$r0,0x0

1c0052f0 <strcpy>:
strcpy():
/code/fpga/nscscc-team/software/perf/lib/string.c:59
char *
strcpy(char *dst, const char *src) {
#ifdef __HAVE_ARCH_MEM_OPTS
    return __strcpy(dst, src);
#else
    char *p = dst;
1c0052f0:	0015008c 	move	$r12,$r4
/code/fpga/nscscc-team/software/perf/lib/string.c:60 (discriminator 1)
    while ((*p ++ = *src ++) != '\0')
1c0052f4:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c0052f8:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c0052fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005300:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
1c005304:	5ffff1a0 	bne	$r13,$r0,-16(0x3fff0) # 1c0052f4 <strcpy+0x4>
/code/fpga/nscscc-team/software/perf/lib/string.c:64
        /* nothing */;
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c005308:	4c000020 	jirl	$r0,$r1,0
1c00530c:	03400000 	andi	$r0,$r0,0x0

1c005310 <strncpy>:
strncpy():
/code/fpga/nscscc-team/software/perf/lib/string.c:79
 * The return value is @dst
 * */
char *
strncpy(char *dst, const char *src, size_t len) {
    char *p = dst;
    while (len > 0) {
1c005310:	580028c0 	beq	$r6,$r0,40(0x28) # 1c005338 <strncpy+0x28>
1c005314:	00101886 	add.w	$r6,$r4,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:78
    char *p = dst;
1c005318:	0015008d 	move	$r13,$r4
1c00531c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:80
        if ((*p = *src) != '\0') {
1c005320:	280000ac 	ld.b	$r12,$r5,0
/code/fpga/nscscc-team/software/perf/lib/string.c:83
            src ++;
        }
        p ++, len --;
1c005324:	028005ad 	addi.w	$r13,$r13,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:80
        if ((*p = *src) != '\0') {
1c005328:	293ffdac 	st.b	$r12,$r13,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:81
            src ++;
1c00532c:	0012b00c 	sltu	$r12,$r0,$r12
1c005330:	001030a5 	add.w	$r5,$r5,$r12
/code/fpga/nscscc-team/software/perf/lib/string.c:79
    while (len > 0) {
1c005334:	5fffeda6 	bne	$r13,$r6,-20(0x3ffec) # 1c005320 <strncpy+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:86
    }
    return dst;
}
1c005338:	4c000020 	jirl	$r0,$r1,0
1c00533c:	03400000 	andi	$r0,$r0,0x0

1c005340 <strncmp>:
strncmp():
/code/fpga/nscscc-team/software/perf/lib/string.c:101
 * the characters differ, until a terminating null-character is reached, or
 * until @n characters match in both strings, whichever happens first.
 * */
int
strncmp(const char *s1, const char *s2, size_t n) {
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
1c005340:	580040c0 	beq	$r6,$r0,64(0x40) # 1c005380 <strncmp+0x40>
1c005344:	2800008d 	ld.b	$r13,$r4,0
1c005348:	280000ae 	ld.b	$r14,$r5,0
1c00534c:	580041a0 	beq	$r13,$r0,64(0x40) # 1c00538c <strncmp+0x4c>
1c005350:	5c003dae 	bne	$r13,$r14,60(0x3c) # 1c00538c <strncmp+0x4c>
1c005354:	001018a6 	add.w	$r6,$r5,$r6
1c005358:	50001c00 	b	28(0x1c) # 1c005374 <strncmp+0x34>
1c00535c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:101 (discriminator 1)
1c005360:	2800008d 	ld.b	$r13,$r4,0
1c005364:	580025a0 	beq	$r13,$r0,36(0x24) # 1c005388 <strncmp+0x48>
/code/fpga/nscscc-team/software/perf/lib/string.c:101 (discriminator 2)
1c005368:	2800018e 	ld.b	$r14,$r12,0
1c00536c:	00150185 	move	$r5,$r12
1c005370:	5c001dae 	bne	$r13,$r14,28(0x1c) # 1c00538c <strncmp+0x4c>
/code/fpga/nscscc-team/software/perf/lib/string.c:102
        n --, s1 ++, s2 ++;
1c005374:	028004ac 	addi.w	$r12,$r5,1(0x1)
1c005378:	02800484 	addi.w	$r4,$r4,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:101
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
1c00537c:	5fffe586 	bne	$r12,$r6,-28(0x3ffe4) # 1c005360 <strncmp+0x20>
/code/fpga/nscscc-team/software/perf/lib/string.c:104
    }
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c005380:	00150004 	move	$r4,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:105
}
1c005384:	4c000020 	jirl	$r0,$r1,0
1c005388:	280004ae 	ld.b	$r14,$r5,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:100
strncmp(const char *s1, const char *s2, size_t n) {
1c00538c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
/code/fpga/nscscc-team/software/perf/lib/string.c:104
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c005390:	2980306d 	st.w	$r13,$r3,12(0xc)
1c005394:	2a00306d 	ld.bu	$r13,$r3,12(0xc)
1c005398:	2980306e 	st.w	$r14,$r3,12(0xc)
1c00539c:	2a003064 	ld.bu	$r4,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/string.c:105
}
1c0053a0:	02804063 	addi.w	$r3,$r3,16(0x10)
/code/fpga/nscscc-team/software/perf/lib/string.c:104
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c0053a4:	001111a4 	sub.w	$r4,$r13,$r4
/code/fpga/nscscc-team/software/perf/lib/string.c:105
}
1c0053a8:	4c000020 	jirl	$r0,$r1,0
1c0053ac:	03400000 	andi	$r0,$r0,0x0

1c0053b0 <strchr>:
strchr():
/code/fpga/nscscc-team/software/perf/lib/string.c:117
 * The strchr() function returns a pointer to the first occurrence of
 * character in @s. If the value is not found, the function returns 'NULL'.
 * */
char *
strchr(const char *s, char c) {
    while (*s != '\0') {
1c0053b0:	2800008d 	ld.b	$r13,$r4,0
/code/fpga/nscscc-team/software/perf/lib/string.c:116
strchr(const char *s, char c) {
1c0053b4:	0015008c 	move	$r12,$r4
/code/fpga/nscscc-team/software/perf/lib/string.c:117
    while (*s != '\0') {
1c0053b8:	58001da0 	beq	$r13,$r0,28(0x1c) # 1c0053d4 <strchr+0x24>
/code/fpga/nscscc-team/software/perf/lib/string.c:118
        if (*s == c) {
1c0053bc:	5c000da5 	bne	$r13,$r5,12(0xc) # 1c0053c8 <strchr+0x18>
1c0053c0:	50002800 	b	40(0x28) # 1c0053e8 <strchr+0x38>
1c0053c4:	58001da5 	beq	$r13,$r5,28(0x1c) # 1c0053e0 <strchr+0x30>
/code/fpga/nscscc-team/software/perf/lib/string.c:121
            return (char *)s;
        }
        s ++;
1c0053c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:117
    while (*s != '\0') {
1c0053cc:	2800018d 	ld.b	$r13,$r12,0
1c0053d0:	5ffff5a0 	bne	$r13,$r0,-12(0x3fff4) # 1c0053c4 <strchr+0x14>
/code/fpga/nscscc-team/software/perf/lib/string.c:123
    }
    return NULL;
1c0053d4:	00150004 	move	$r4,$r0
1c0053d8:	4c000020 	jirl	$r0,$r1,0
1c0053dc:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:121
        s ++;
1c0053e0:	00150184 	move	$r4,$r12
/code/fpga/nscscc-team/software/perf/lib/string.c:124
}
1c0053e4:	4c000020 	jirl	$r0,$r1,0
1c0053e8:	4c000020 	jirl	$r0,$r1,0
1c0053ec:	03400000 	andi	$r0,$r0,0x0

1c0053f0 <strfind>:
strfind():
/code/fpga/nscscc-team/software/perf/lib/string.c:137
 * not found in @s, then it returns a pointer to the null byte at the
 * end of @s, rather than 'NULL'.
 * */
char *
strfind(const char *s, char c) {
    while (*s != '\0') {
1c0053f0:	2800008c 	ld.b	$r12,$r4,0
1c0053f4:	58001d80 	beq	$r12,$r0,28(0x1c) # 1c005410 <strfind+0x20>
/code/fpga/nscscc-team/software/perf/lib/string.c:138
        if (*s == c) {
1c0053f8:	5c000cac 	bne	$r5,$r12,12(0xc) # 1c005404 <strfind+0x14>
1c0053fc:	50001800 	b	24(0x18) # 1c005414 <strfind+0x24>
1c005400:	58001185 	beq	$r12,$r5,16(0x10) # 1c005410 <strfind+0x20>
/code/fpga/nscscc-team/software/perf/lib/string.c:141
            break;
        }
        s ++;
1c005404:	02800484 	addi.w	$r4,$r4,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:137
    while (*s != '\0') {
1c005408:	2800008c 	ld.b	$r12,$r4,0
1c00540c:	5ffff580 	bne	$r12,$r0,-12(0x3fff4) # 1c005400 <strfind+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:144
    }
    return (char *)s;
}
1c005410:	4c000020 	jirl	$r0,$r1,0
1c005414:	4c000020 	jirl	$r0,$r1,0
1c005418:	03400000 	andi	$r0,$r0,0x0
1c00541c:	03400000 	andi	$r0,$r0,0x0

1c005420 <memset>:
memset():
/code/fpga/nscscc-team/software/perf/lib/string.c:251
memset(void *s, char c, size_t n) {
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memset(s, c, n);
#else
    char *p = s;
    while (n -- > 0) {
1c005420:	58001cc0 	beq	$r6,$r0,28(0x1c) # 1c00543c <memset+0x1c>
1c005424:	00101886 	add.w	$r6,$r4,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:250
    char *p = s;
1c005428:	0015008c 	move	$r12,$r4
1c00542c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:252
        *p ++ = c;
1c005430:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005434:	293ffd85 	st.b	$r5,$r12,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:251
    while (n -- > 0) {
1c005438:	5ffff986 	bne	$r12,$r6,-8(0x3fff8) # 1c005430 <memset+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:256
    }
    return s;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c00543c:	4c000020 	jirl	$r0,$r1,0

1c005440 <memcpy>:
memcpy():
/code/fpga/nscscc-team/software/perf/lib/string.c:279
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memcpy(dst, src, n);
#else
    const char *s = src;
    char *d = dst;
    while (n -- > 0) {
1c005440:	580024c0 	beq	$r6,$r0,36(0x24) # 1c005464 <memcpy+0x24>
1c005444:	001018a6 	add.w	$r6,$r5,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:278
    char *d = dst;
1c005448:	0015008c 	move	$r12,$r4
1c00544c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:280
        *d ++ = *s ++;
1c005450:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c005454:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c005458:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00545c:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:279
    while (n -- > 0) {
1c005460:	5ffff0a6 	bne	$r5,$r6,-16(0x3fff0) # 1c005450 <memcpy+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:284
    }
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c005464:	4c000020 	jirl	$r0,$r1,0
1c005468:	03400000 	andi	$r0,$r0,0x0
1c00546c:	03400000 	andi	$r0,$r0,0x0

1c005470 <memmove>:
memmove():
/code/fpga/nscscc-team/software/perf/lib/string.c:302
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memmove(dst, src, n);
#else
    const char *s = src;
    char *d = dst;
    if (s < d && s + n > d) {
1c005470:	6c0030a4 	bgeu	$r5,$r4,48(0x30) # 1c0054a0 <memmove+0x30>
/code/fpga/nscscc-team/software/perf/lib/string.c:302 (discriminator 1)
1c005474:	001018ac 	add.w	$r12,$r5,$r6
1c005478:	6c00288c 	bgeu	$r4,$r12,40(0x28) # 1c0054a0 <memmove+0x30>
/code/fpga/nscscc-team/software/perf/lib/string.c:303
        s += n, d += n;
1c00547c:	0010188d 	add.w	$r13,$r4,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:304
        while (n -- > 0) {
1c005480:	580044c0 	beq	$r6,$r0,68(0x44) # 1c0054c4 <memmove+0x54>
/code/fpga/nscscc-team/software/perf/lib/string.c:305
            *-- d = *-- s;
1c005484:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005488:	2800018e 	ld.b	$r14,$r12,0
1c00548c:	02bffdad 	addi.w	$r13,$r13,-1(0xfff)
1c005490:	290001ae 	st.b	$r14,$r13,0
/code/fpga/nscscc-team/software/perf/lib/string.c:304
        while (n -- > 0) {
1c005494:	5ffff0ac 	bne	$r5,$r12,-16(0x3fff0) # 1c005484 <memmove+0x14>
1c005498:	4c000020 	jirl	$r0,$r1,0
1c00549c:	03400000 	andi	$r0,$r0,0x0
1c0054a0:	001018ae 	add.w	$r14,$r5,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:308
        }
    } else {
        while (n -- > 0) {
1c0054a4:	0015008c 	move	$r12,$r4
1c0054a8:	580020c0 	beq	$r6,$r0,32(0x20) # 1c0054c8 <memmove+0x58>
1c0054ac:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:309
            *d ++ = *s ++;
1c0054b0:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c0054b4:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c0054b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0054bc:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:308
        while (n -- > 0) {
1c0054c0:	5ffff0ae 	bne	$r5,$r14,-16(0x3fff0) # 1c0054b0 <memmove+0x40>
/code/fpga/nscscc-team/software/perf/lib/string.c:314
        }
    }
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c0054c4:	4c000020 	jirl	$r0,$r1,0
1c0054c8:	4c000020 	jirl	$r0,$r1,0
1c0054cc:	03400000 	andi	$r0,$r0,0x0

1c0054d0 <memcmp>:
memcmp():
/code/fpga/nscscc-team/software/perf/lib/string.c:334
 * */
int
memcmp(const void *v1, const void *v2, size_t n) {
    const char *s1 = (const char *)v1;
    const char *s2 = (const char *)v2;
    while (n -- > 0) {
1c0054d0:	580030c0 	beq	$r6,$r0,48(0x30) # 1c005500 <memcmp+0x30>
/code/fpga/nscscc-team/software/perf/lib/string.c:335
        if (*s1 != *s2) {
1c0054d4:	2800008c 	ld.b	$r12,$r4,0
1c0054d8:	280000ad 	ld.b	$r13,$r5,0
1c0054dc:	00101886 	add.w	$r6,$r4,$r6
1c0054e0:	580015ac 	beq	$r13,$r12,20(0x14) # 1c0054f4 <memcmp+0x24>
1c0054e4:	50002400 	b	36(0x24) # 1c005508 <memcmp+0x38>
1c0054e8:	2800008c 	ld.b	$r12,$r4,0
1c0054ec:	280000ad 	ld.b	$r13,$r5,0
1c0054f0:	5c00198d 	bne	$r12,$r13,24(0x18) # 1c005508 <memcmp+0x38>
/code/fpga/nscscc-team/software/perf/lib/string.c:338
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
        }
        s1 ++, s2 ++;
1c0054f4:	02800484 	addi.w	$r4,$r4,1(0x1)
1c0054f8:	028004a5 	addi.w	$r5,$r5,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:334
    while (n -- > 0) {
1c0054fc:	5fffec86 	bne	$r4,$r6,-20(0x3ffec) # 1c0054e8 <memcmp+0x18>
/code/fpga/nscscc-team/software/perf/lib/string.c:340
    }
    return 0;
1c005500:	00150004 	move	$r4,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:341
}
1c005504:	4c000020 	jirl	$r0,$r1,0
/code/fpga/nscscc-team/software/perf/lib/string.c:331
memcmp(const void *v1, const void *v2, size_t n) {
1c005508:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
/code/fpga/nscscc-team/software/perf/lib/string.c:336
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
1c00550c:	2980306c 	st.w	$r12,$r3,12(0xc)
1c005510:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c005514:	2980306d 	st.w	$r13,$r3,12(0xc)
1c005518:	2a003064 	ld.bu	$r4,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/string.c:341
}
1c00551c:	02804063 	addi.w	$r3,$r3,16(0x10)
/code/fpga/nscscc-team/software/perf/lib/string.c:336
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
1c005520:	00111184 	sub.w	$r4,$r12,$r4
/code/fpga/nscscc-team/software/perf/lib/string.c:341
}
1c005524:	4c000020 	jirl	$r0,$r1,0
1c005528:	03400000 	andi	$r0,$r0,0x0
1c00552c:	03400000 	andi	$r0,$r0,0x0

1c005530 <bzero>:
memset():
/code/fpga/nscscc-team/software/perf/lib/string.c:251
    while (n -- > 0) {
1c005530:	580014a0 	beq	$r5,$r0,20(0x14) # 1c005544 <bzero+0x14>
1c005534:	00101485 	add.w	$r5,$r4,$r5
/code/fpga/nscscc-team/software/perf/lib/string.c:252
        *p ++ = c;
1c005538:	02800484 	addi.w	$r4,$r4,1(0x1)
1c00553c:	293ffc80 	st.b	$r0,$r4,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:251
    while (n -- > 0) {
1c005540:	5ffff885 	bne	$r4,$r5,-8(0x3fff8) # 1c005538 <bzero+0x8>
bzero():
/code/fpga/nscscc-team/software/perf/lib/string.c:345

void bzero(void *s, size_t n){
	memset(s, 0, n);
}
1c005544:	4c000020 	jirl	$r0,$r1,0
1c005548:	03400000 	andi	$r0,$r0,0x0
1c00554c:	03400000 	andi	$r0,$r0,0x0

1c005550 <get_count>:
get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:18
        );
    return  _contval;
}

unsigned long get_count()
{
1c005550:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005554:	29803079 	st.w	$r25,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c005558:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00555c:	28800324 	ld.w	$r4,$r25,0
/code/fpga/nscscc-team/software/perf/lib/time.c:20
    return  _get_count();
}
1c005560:	28803079 	ld.w	$r25,$r3,12(0xc)
1c005564:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005568:	4c000020 	jirl	$r0,$r1,0
1c00556c:	03400000 	andi	$r0,$r0,0x0

1c005570 <_get_count>:
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:20
1c005570:	53ffe3ff 	b	-32(0xfffffe0) # 1c005550 <get_count>
1c005574:	03400000 	andi	$r0,$r0,0x0
1c005578:	03400000 	andi	$r0,$r0,0x0
1c00557c:	03400000 	andi	$r0,$r0,0x0

1c005580 <get_count_my>:
get_count_my():
/code/fpga/nscscc-team/software/perf/lib/time.c:25

unsigned long get_count_my()
{
    unsigned long n;
    asm volatile(
1c005580:	00006004 	rdtimel.w	$r4,$r0
/code/fpga/nscscc-team/software/perf/lib/time.c:30
        "rdcntvl.w %0\n\t"
        :"=r"(n)
        );
    return  n;
}
1c005584:	4c000020 	jirl	$r0,$r1,0
1c005588:	03400000 	andi	$r0,$r0,0x0
1c00558c:	03400000 	andi	$r0,$r0,0x0

1c005590 <clock_gettime>:
clock_gettime():
/code/fpga/nscscc-team/software/perf/lib/time.c:33

unsigned long clock_gettime(int sel,struct timespec *tmp)
{
1c005590:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005594:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c005598:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00559c:	2880032f 	ld.w	$r15,$r25,0
clock_gettime():
/code/fpga/nscscc-team/software/perf/lib/time.c:36
    unsigned long n = 0;
    n = _get_count();
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c0055a0:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0055a4:	001c35ed 	mul.w	$r13,$r15,$r13
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c0055a8:	02819011 	addi.w	$r17,$r0,100(0x64)
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c0055ac:	1400030e 	lu12i.w	$r14,24(0x18)
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c0055b0:	002145f0 	div.wu	$r16,$r15,$r17
1c0055b4:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c0055bc <clock_gettime+0x2c>
1c0055b8:	002a0007 	break	0x7
/code/fpga/nscscc-team/software/perf/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c0055bc:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c0055c0:	039a81ce 	ori	$r14,$r14,0x6a0
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c0055c4:	0021b211 	mod.wu	$r17,$r16,$r12
1c0055c8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0055d0 <clock_gettime+0x40>
1c0055cc:	002a0007 	break	0x7
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c0055d0:	002139f0 	div.wu	$r16,$r15,$r14
1c0055d4:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c0055dc <clock_gettime+0x4c>
1c0055d8:	002a0007 	break	0x7
1c0055dc:	0021b20e 	mod.wu	$r14,$r16,$r12
1c0055e0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0055e8 <clock_gettime+0x58>
1c0055e4:	002a0007 	break	0x7
/code/fpga/nscscc-team/software/perf/lib/time.c:39
    tmp->tv_sec  = n/CPU_COUNT_PER_US/NSEC_PER_SEC;
1c0055e8:	298000a0 	st.w	$r0,$r5,0
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c0055ec:	298030ae 	st.w	$r14,$r5,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c0055f0:	298020b1 	st.w	$r17,$r5,8(0x8)
/code/fpga/nscscc-team/software/perf/lib/time.c:42
    //printf("clock ns=%d,sec=%d\n",tmp->tv_nsec,tmp->tv_sec);
    return 0;
}
1c0055f4:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0055f8:	00150004 	move	$r4,$r0
/code/fpga/nscscc-team/software/perf/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c0055fc:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005600:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005608 <clock_gettime+0x78>
1c005604:	002a0007 	break	0x7
1c005608:	298010ae 	st.w	$r14,$r5,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/time.c:42
}
1c00560c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005610:	4c000020 	jirl	$r0,$r1,0
1c005614:	03400000 	andi	$r0,$r0,0x0
1c005618:	03400000 	andi	$r0,$r0,0x0
1c00561c:	03400000 	andi	$r0,$r0,0x0

1c005620 <get_clock>:
get_clock():
/code/fpga/nscscc-team/software/perf/lib/time.c:42
1c005620:	53ff33ff 	b	-208(0xfffff30) # 1c005550 <get_count>
1c005624:	03400000 	andi	$r0,$r0,0x0
1c005628:	03400000 	andi	$r0,$r0,0x0
1c00562c:	03400000 	andi	$r0,$r0,0x0

1c005630 <get_ns>:
get_ns():
/code/fpga/nscscc-team/software/perf/lib/time.c:52
    n=_get_count();
    return n;
}

unsigned long get_ns(void)
{
1c005630:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005634:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c005638:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00563c:	28800324 	ld.w	$r4,$r25,0
get_ns():
/code/fpga/nscscc-team/software/perf/lib/time.c:55
    unsigned long n=0;
    n = _get_count();
    n=n*(NSEC_PER_USEC/CPU_COUNT_PER_US);
1c005640:	0280280c 	addi.w	$r12,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/time.c:57
    return n;
}
1c005644:	28803079 	ld.w	$r25,$r3,12(0xc)
1c005648:	001c3084 	mul.w	$r4,$r4,$r12
1c00564c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005650:	4c000020 	jirl	$r0,$r1,0
1c005654:	03400000 	andi	$r0,$r0,0x0
1c005658:	03400000 	andi	$r0,$r0,0x0
1c00565c:	03400000 	andi	$r0,$r0,0x0

1c005660 <get_us>:
get_us():
/code/fpga/nscscc-team/software/perf/lib/time.c:61


unsigned long get_us(void)
{
1c005660:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005664:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c005668:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00566c:	28800324 	ld.w	$r4,$r25,0
get_us():
/code/fpga/nscscc-team/software/perf/lib/time.c:64
    unsigned long n=0;
    n = _get_count();
    n=n/CPU_COUNT_PER_US;
1c005670:	0281900c 	addi.w	$r12,$r0,100(0x64)
/code/fpga/nscscc-team/software/perf/lib/time.c:66
    return n;
}
1c005674:	28803079 	ld.w	$r25,$r3,12(0xc)
1c005678:	0021308d 	div.wu	$r13,$r4,$r12
1c00567c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005684 <get_us+0x24>
1c005680:	002a0007 	break	0x7
1c005684:	001501a4 	move	$r4,$r13
1c005688:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00568c:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .data:

1c080000 <abc-0x1f0>:
1c080000:	25206425 	stptr.w	$r5,$r1,8292(0x2064)
1c080004:	64252064 	bge	$r3,$r4,9504(0x2520) # 1c082524 <_end+0x1564>
1c080008:	0000000a 	0x0000000a
1c08000c:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c097274 <_end+0x162b4>
1c080010:	49206579 	bcnez	$fcc3,-1761180(0x652064) # 1bed2074 <__stack_size+0x1bec2074>
1c080014:	65742032 	bge	$r1,$r18,95264(0x17420) # 1c097434 <_end+0x16474>
1c080018:	62207473 	blt	$r3,$r19,-122764(0x22074) # 1c06208c <_data_lma+0x5c9fc>
1c08001c:	6e696765 	bgeu	$r27,$r5,-104092(0x26964) # 1c066980 <_data_lma+0x612f0>
1c080020:	0000002e 	0x0000002e
1c080024:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c09728c <_end+0x162cc>
1c080028:	49206579 	bcnez	$fcc3,-1761180(0x652064) # 1bed208c <__stack_size+0x1bec208c>
1c08002c:	41502032 	beqz	$r1,-3583968(0x495020) # 1bd1504c <__stack_size+0x1bd0504c>
1c080030:	00215353 	div.wu	$r19,$r26,$r20
1c080034:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c09729c <_end+0x162dc>
1c080038:	49206579 	bcnez	$fcc3,-1761180(0x652064) # 1bed209c <__stack_size+0x1bec209c>
1c08003c:	52452032 	b	13255968(0xca4520) # 1cd2455c <_stack+0xc24560>
1c080040:	21454f52 	sc.w	$r18,$r26,17740(0x454c)
1c080044:	00002121 	clo.d	$r1,$r9
1c080048:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c0972b0 <_end+0x162f0>
1c08004c:	49206579 	bcnez	$fcc3,-1761180(0x652064) # 1bed20b0 <__stack_size+0x1bec20b0>
1c080050:	54203a32 	bl	-121102280(0x8c82038) # 14d02088 <__stack_size+0x14cf2088>
1c080054:	6c61746f 	bgeu	$r3,$r15,24948(0x6174) # 1c0861c8 <_end+0x5208>
1c080058:	756f4320 	0x756f4320
1c08005c:	5328746e 	b	29042804(0x1bb2874) # 1dc328d0 <_stack+0x1b328d4>
1c080060:	6320436f 	blt	$r27,$r15,-57280(0x32040) # 1c0720a0 <_data_lma+0x6ca10>
1c080064:	746e756f 	0x746e756f
1c080068:	203d2029 	ll.w	$r9,$r1,15648(0x3d20)
1c08006c:	78257830 	0x78257830
1c080070:	0000000a 	0x0000000a
1c080074:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c0972dc <_end+0x1631c>
1c080078:	49206579 	bcnez	$fcc3,-1761180(0x652064) # 1bed20dc <__stack_size+0x1bec20dc>
1c08007c:	54203a32 	bl	-121102280(0x8c82038) # 14d020b4 <__stack_size+0x14cf20b4>
1c080080:	6c61746f 	bgeu	$r3,$r15,24948(0x6174) # 1c0861f4 <_end+0x5234>
1c080084:	756f4320 	0x756f4320
1c080088:	4328746e 	beqz	$r3,3876980(0x3b2874) # 1c4328fc <_stack+0x332900>
1c08008c:	63205550 	blt	$r10,$r16,-57260(0x32054) # 1c0720e0 <_data_lma+0x6ca50>
1c080090:	746e756f 	0x746e756f
1c080094:	203d2029 	ll.w	$r9,$r1,15648(0x3d20)
1c080098:	78257830 	0x78257830
1c08009c:	0000000a 	0x0000000a
1c0800a0:	1c005030 	pcaddu12i	$r16,641(0x281)
1c0800a4:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800a8:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800ac:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800b0:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800b4:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800b8:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800bc:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800c0:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800c4:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800c8:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800cc:	1c004f08 	pcaddu12i	$r8,632(0x278)
1c0800d0:	1c004f14 	pcaddu12i	$r20,632(0x278)
1c0800d4:	1c004f14 	pcaddu12i	$r20,632(0x278)
1c0800d8:	1c004f14 	pcaddu12i	$r20,632(0x278)
1c0800dc:	1c004f14 	pcaddu12i	$r20,632(0x278)
1c0800e0:	1c004f14 	pcaddu12i	$r20,632(0x278)
1c0800e4:	1c004f14 	pcaddu12i	$r20,632(0x278)
1c0800e8:	1c004f14 	pcaddu12i	$r20,632(0x278)
1c0800ec:	1c004f14 	pcaddu12i	$r20,632(0x278)
1c0800f0:	1c004f14 	pcaddu12i	$r20,632(0x278)
1c0800f4:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800f8:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0800fc:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080100:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080104:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080108:	1c005040 	pcaddu12i	$r0,642(0x282)
1c08010c:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080110:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080114:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080118:	1c005040 	pcaddu12i	$r0,642(0x282)
1c08011c:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080120:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080124:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080128:	1c005040 	pcaddu12i	$r0,642(0x282)
1c08012c:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080130:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080134:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080138:	1c005040 	pcaddu12i	$r0,642(0x282)
1c08013c:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080140:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080144:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080148:	1c005040 	pcaddu12i	$r0,642(0x282)
1c08014c:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080150:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080154:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080158:	1c005040 	pcaddu12i	$r0,642(0x282)
1c08015c:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080160:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080164:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080168:	1c005040 	pcaddu12i	$r0,642(0x282)
1c08016c:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080170:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080174:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080178:	1c005040 	pcaddu12i	$r0,642(0x282)
1c08017c:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080180:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080184:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080188:	1c005040 	pcaddu12i	$r0,642(0x282)
1c08018c:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080190:	1c005040 	pcaddu12i	$r0,642(0x282)
1c080194:	1c004f54 	pcaddu12i	$r20,634(0x27a)
1c080198:	1c004f70 	pcaddu12i	$r16,635(0x27b)
1c08019c:	1c004f84 	pcaddu12i	$r4,636(0x27c)
1c0801a0:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801a4:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801a8:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801ac:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801b0:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801b4:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801b8:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801bc:	1c004fa0 	pcaddu12i	$r0,637(0x27d)
1c0801c0:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801c4:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801c8:	1c004fc0 	pcaddu12i	$r0,638(0x27e)
1c0801cc:	1c004fe0 	pcaddu12i	$r0,639(0x27f)
1c0801d0:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801d4:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801d8:	1c005000 	pcaddu12i	$r0,640(0x280)
1c0801dc:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801e0:	1c005014 	pcaddu12i	$r20,640(0x280)
1c0801e4:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801e8:	1c005040 	pcaddu12i	$r0,642(0x282)
1c0801ec:	1c004fe0 	pcaddu12i	$r0,639(0x27f)

1c0801f0 <abc>:
rodata_end():
1c0801f0:	00000001 	0x00000001
1c0801f4:	00000001 	0x00000001
1c0801f8:	00000001 	0x00000001
1c0801fc:	00000001 	0x00000001
1c080200:	00000000 	0x00000000
1c080204:	00000001 	0x00000001
1c080208:	00000001 	0x00000001
1c08020c:	00000001 	0x00000001
1c080210:	00000001 	0x00000001
1c080214:	00000001 	0x00000001
1c080218:	00000000 	0x00000000
1c08021c:	00000001 	0x00000001
1c080220:	00000001 	0x00000001
1c080224:	00000000 	0x00000000
1c080228:	00000001 	0x00000001
1c08022c:	00000001 	0x00000001
1c080230:	00000001 	0x00000001
1c080234:	00000001 	0x00000001
1c080238:	00000001 	0x00000001
1c08023c:	00000000 	0x00000000
1c080240:	00000001 	0x00000001
1c080244:	00000001 	0x00000001
1c080248:	00000001 	0x00000001
1c08024c:	00000001 	0x00000001
1c080250:	00000001 	0x00000001
1c080254:	00000000 	0x00000000
1c080258:	00000001 	0x00000001
1c08025c:	00000001 	0x00000001
1c080260:	00000001 	0x00000001
1c080264:	00000001 	0x00000001
1c080268:	00000001 	0x00000001
1c08026c:	00000001 	0x00000001
1c080270:	00000001 	0x00000001
1c080274:	00000001 	0x00000001
	...
1c080280:	00000001 	0x00000001
	...
1c08028c:	00000001 	0x00000001
	...
1c080298:	00000001 	0x00000001
1c08029c:	00000001 	0x00000001
1c0802a0:	00000001 	0x00000001

1c0802a4 <dd>:
1c0802a4:	ffffffff 	0xffffffff
1c0802a8:	00000000 	0x00000000
1c0802ac:	ffffffff 	0xffffffff
1c0802b0:	ffffffff 	0xffffffff
1c0802b4:	ffffffff 	0xffffffff
1c0802b8:	00000001 	0x00000001
1c0802bc:	00000000 	0x00000000
1c0802c0:	00000001 	0x00000001
1c0802c4:	00000000 	0x00000000
1c0802c8:	ffffffff 	0xffffffff
1c0802cc:	00000001 	0x00000001
1c0802d0:	00000000 	0x00000000
1c0802d4:	00000001 	0x00000001
1c0802d8:	ffffffff 	0xffffffff
1c0802dc:	00000001 	0x00000001
1c0802e0:	00000001 	0x00000001

1c0802e4 <vis>:
1c0802e4:	00000001 	0x00000001
	...

1c080c64 <s>:
1c080c64:	23232320 	sc.d	$r0,$r25,8992(0x2320)
1c080c68:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080c6c:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080c70:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080c74:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080c78:	2e232000 	0x2e232000
1c080c7c:	2e2e2e2e 	0x2e2e2e2e
1c080c80:	2e2e2e2e 	0x2e2e2e2e
1c080c84:	2e2e2e2e 	0x2e2e2e2e
1c080c88:	2e2e2e2e 	0x2e2e2e2e
1c080c8c:	23200023 	sc.d	$r3,$r1,8192(0x2000)
1c080c90:	2323232e 	sc.d	$r14,$r25,8992(0x2320)
1c080c94:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080c98:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080c9c:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080ca0:	2000232e 	ll.w	$r14,$r25,32(0x20)
1c080ca4:	23232e23 	sc.d	$r3,$r17,9004(0x232c)
1c080ca8:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080cac:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080cb0:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080cb4:	00232e23 	div.du	$r3,$r17,$r11
1c080cb8:	232e2320 	sc.d	$r0,$r25,11808(0x2e20)
1c080cbc:	2e2e2e23 	0x2e2e2e23
1c080cc0:	2e2e2e2e 	0x2e2e2e2e
1c080cc4:	2e2e2e2e 	0x2e2e2e2e
1c080cc8:	232e2e2e 	sc.d	$r14,$r17,11820(0x2e2c)
1c080ccc:	2e232000 	0x2e232000
1c080cd0:	2e2e2323 	0x2e2e2323
1c080cd4:	2e2e2e2e 	0x2e2e2e2e
1c080cd8:	2e2e2e2e 	0x2e2e2e2e
1c080cdc:	2e2e2e2e 	0x2e2e2e2e
1c080ce0:	23200023 	sc.d	$r3,$r1,8192(0x2000)
1c080ce4:	2e23232e 	0x2e23232e
1c080ce8:	2e2e2e2e 	0x2e2e2e2e
1c080cec:	2e2e2e2e 	0x2e2e2e2e
1c080cf0:	2e2e2e2e 	0x2e2e2e2e
1c080cf4:	2000232e 	ll.w	$r14,$r25,32(0x20)
1c080cf8:	23232e23 	sc.d	$r3,$r17,9004(0x232c)
1c080cfc:	2e2e2e2e 	0x2e2e2e2e
1c080d00:	2e2e2e2e 	0x2e2e2e2e
1c080d04:	2e2e2e2e 	0x2e2e2e2e
1c080d08:	00232e2e 	div.du	$r14,$r17,$r11
1c080d0c:	232e2320 	sc.d	$r0,$r25,11808(0x2e20)
1c080d10:	2e2e2e23 	0x2e2e2e23
1c080d14:	2e2e2e2e 	0x2e2e2e2e
1c080d18:	2e2e2e2e 	0x2e2e2e2e
1c080d1c:	232e2e2e 	sc.d	$r14,$r17,11820(0x2e2c)
1c080d20:	2e232000 	0x2e232000
1c080d24:	2e2e2323 	0x2e2e2323
1c080d28:	2e2e2e2e 	0x2e2e2e2e
1c080d2c:	2e2e2e2e 	0x2e2e2e2e
1c080d30:	2e2e2e2e 	0x2e2e2e2e
1c080d34:	23200023 	sc.d	$r3,$r1,8192(0x2000)
1c080d38:	2e23232e 	0x2e23232e
1c080d3c:	2e2e2e2e 	0x2e2e2e2e
1c080d40:	2e2e2e2e 	0x2e2e2e2e
1c080d44:	2e2e2e2e 	0x2e2e2e2e
1c080d48:	2000232e 	ll.w	$r14,$r25,32(0x20)
1c080d4c:	23232e23 	sc.d	$r3,$r17,9004(0x232c)
1c080d50:	2e2e2e2e 	0x2e2e2e2e
1c080d54:	2e2e2e2e 	0x2e2e2e2e
1c080d58:	2e2e2e2e 	0x2e2e2e2e
1c080d5c:	00232e2e 	div.du	$r14,$r17,$r11
1c080d60:	232e2320 	sc.d	$r0,$r25,11808(0x2e20)
1c080d64:	2e2e2e23 	0x2e2e2e23
1c080d68:	2e2e2e2e 	0x2e2e2e2e
1c080d6c:	2e2e2e2e 	0x2e2e2e2e
1c080d70:	232e2e2e 	sc.d	$r14,$r17,11820(0x2e2c)
1c080d74:	2e232000 	0x2e232000
1c080d78:	2e2e2323 	0x2e2e2323
1c080d7c:	2e2e2e2e 	0x2e2e2e2e
1c080d80:	2e2e2e2e 	0x2e2e2e2e
1c080d84:	2e2e2e2e 	0x2e2e2e2e
1c080d88:	23200023 	sc.d	$r3,$r1,8192(0x2000)
1c080d8c:	2e23232e 	0x2e23232e
1c080d90:	2e2e2e2e 	0x2e2e2e2e
1c080d94:	2e2e2e2e 	0x2e2e2e2e
1c080d98:	2e2e2e2e 	0x2e2e2e2e
1c080d9c:	2000232e 	ll.w	$r14,$r25,32(0x20)
1c080da0:	23232e23 	sc.d	$r3,$r17,9004(0x232c)
1c080da4:	2e2e2e2e 	0x2e2e2e2e
1c080da8:	2e2e2e2e 	0x2e2e2e2e
1c080dac:	2e2e2e2e 	0x2e2e2e2e
1c080db0:	00232e2e 	div.du	$r14,$r17,$r11
1c080db4:	232e2320 	sc.d	$r0,$r25,11808(0x2e20)
1c080db8:	2e2e2e23 	0x2e2e2e23
1c080dbc:	2e2e2e2e 	0x2e2e2e2e
1c080dc0:	2e2e2e2e 	0x2e2e2e2e
1c080dc4:	232e2e2e 	sc.d	$r14,$r17,11820(0x2e2c)
1c080dc8:	2e232000 	0x2e232000
1c080dcc:	2e2e2323 	0x2e2e2323
1c080dd0:	2e2e2e2e 	0x2e2e2e2e
1c080dd4:	2e2e2e2e 	0x2e2e2e2e
1c080dd8:	2e2e2e2e 	0x2e2e2e2e
1c080ddc:	23200023 	sc.d	$r3,$r1,8192(0x2000)
1c080de0:	2e23232e 	0x2e23232e
1c080de4:	2e2e2e2e 	0x2e2e2e2e
1c080de8:	2e2e2e2e 	0x2e2e2e2e
1c080dec:	2e2e2e2e 	0x2e2e2e2e
1c080df0:	2000232e 	ll.w	$r14,$r25,32(0x20)
1c080df4:	23232e23 	sc.d	$r3,$r17,9004(0x232c)
1c080df8:	2e2e2e2e 	0x2e2e2e2e
1c080dfc:	2e2e2e2e 	0x2e2e2e2e
1c080e00:	2e2e2e2e 	0x2e2e2e2e
1c080e04:	00232e2e 	div.du	$r14,$r17,$r11
1c080e08:	232e2320 	sc.d	$r0,$r25,11808(0x2e20)
1c080e0c:	2e2e2e23 	0x2e2e2e23
1c080e10:	2e2e2e2e 	0x2e2e2e2e
1c080e14:	2e2e2e2e 	0x2e2e2e2e
1c080e18:	232e2e2e 	sc.d	$r14,$r17,11820(0x2e2c)
1c080e1c:	2e232000 	0x2e232000
1c080e20:	2e2e2323 	0x2e2e2323
1c080e24:	2e2e2e2e 	0x2e2e2e2e
1c080e28:	2e2e2e2e 	0x2e2e2e2e
1c080e2c:	2e2e2e2e 	0x2e2e2e2e
1c080e30:	23200023 	sc.d	$r3,$r1,8192(0x2000)
1c080e34:	2e23232e 	0x2e23232e
1c080e38:	2e2e2e2e 	0x2e2e2e2e
1c080e3c:	2e2e2e2e 	0x2e2e2e2e
1c080e40:	2e2e2e2e 	0x2e2e2e2e
1c080e44:	2000232e 	ll.w	$r14,$r25,32(0x20)
1c080e48:	23232e23 	sc.d	$r3,$r17,9004(0x232c)
1c080e4c:	2e2e2e2e 	0x2e2e2e2e
1c080e50:	2e2e2e2e 	0x2e2e2e2e
1c080e54:	2e2e2e2e 	0x2e2e2e2e
1c080e58:	00232e2e 	div.du	$r14,$r17,$r11
1c080e5c:	232e2320 	sc.d	$r0,$r25,11808(0x2e20)
1c080e60:	2e2e2e23 	0x2e2e2e23
1c080e64:	2e2e2e2e 	0x2e2e2e2e
1c080e68:	2e2e2e2e 	0x2e2e2e2e
1c080e6c:	232e2e2e 	sc.d	$r14,$r17,11820(0x2e2c)
1c080e70:	2e232000 	0x2e232000
1c080e74:	2e2e2323 	0x2e2e2323
1c080e78:	2e2e2e2e 	0x2e2e2e2e
1c080e7c:	2e2e2e2e 	0x2e2e2e2e
1c080e80:	2e2e2e2e 	0x2e2e2e2e
1c080e84:	23200023 	sc.d	$r3,$r1,8192(0x2000)
1c080e88:	2e23232e 	0x2e23232e
1c080e8c:	2e2e2e2e 	0x2e2e2e2e
1c080e90:	2e2e2e2e 	0x2e2e2e2e
1c080e94:	2e2e2e2e 	0x2e2e2e2e
1c080e98:	2000232e 	ll.w	$r14,$r25,32(0x20)
1c080e9c:	23232e23 	sc.d	$r3,$r17,9004(0x232c)
1c080ea0:	2e2e2e2e 	0x2e2e2e2e
1c080ea4:	2e2e2e2e 	0x2e2e2e2e
1c080ea8:	2e2e2e2e 	0x2e2e2e2e
1c080eac:	00232e2e 	div.du	$r14,$r17,$r11
1c080eb0:	232e2320 	sc.d	$r0,$r25,11808(0x2e20)
1c080eb4:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080eb8:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080ebc:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080ec0:	232e2323 	sc.d	$r3,$r25,11808(0x2e20)
1c080ec4:	2e232000 	0x2e232000
1c080ec8:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080ecc:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080ed0:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080ed4:	2e232323 	0x2e232323
1c080ed8:	23200023 	sc.d	$r3,$r1,8192(0x2000)
1c080edc:	2e2e2e2e 	0x2e2e2e2e
1c080ee0:	2e2e2e2e 	0x2e2e2e2e
1c080ee4:	2e2e2e2e 	0x2e2e2e2e
1c080ee8:	2e2e2e2e 	0x2e2e2e2e
1c080eec:	2000232e 	ll.w	$r14,$r25,32(0x20)
1c080ef0:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080ef4:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080ef8:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080efc:	23232323 	sc.d	$r3,$r25,8992(0x2320)
1c080f00:	00232323 	div.du	$r3,$r25,$r8
1c080f04:	00000000 	0x00000000

1c080f08 <I2_n>:
1c080f08:	00000020 	0x00000020

1c080f0c <I2_m>:
1c080f0c:	00000013 	0x00000013

Disassembly of section .got:

1c080f10 <_GLOBAL_OFFSET_TABLE_>:
1c080f10:	00000000 	0x00000000
1c080f14:	1c080f1c 	pcaddu12i	$r28,16504(0x4078)
1c080f18:	1c080f6c 	pcaddu12i	$r12,16507(0x407b)

Disassembly of section .bss:

1c080f1c <add1>:
	...

1c080f6c <add2>:
	...

Disassembly of section .stack:

1c0f0000 <_stack-0xfffc>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	6f4c2820 	bgeu	$r1,$r0,-46040(0x34c28) # ffff4c2c <_stack+0xe3ef4c30>
   8:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d6774 <__stack_size+0x3c6774>
   c:	20686372 	ll.w	$r18,$r27,26720(0x6860)
  10:	20554e47 	ll.w	$r7,$r18,21836(0x554c)
  14:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 6f80 <__stack_size-0x9080>
  18:	69616863 	bltu	$r3,$r3,90472(0x16168) # 16180 <__stack_size+0x6180>
  1c:	414c206e 	beqz	$r3,3755040(0x394c20) # 394c3c <__stack_size+0x384c3c>
  20:	76203233 	0x76203233
  24:	20302e32 	ll.w	$r18,$r17,12332(0x302c)
  28:	32303228 	0x32303228
  2c:	30393033 	0x30393033
  30:	20292933 	ll.w	$r19,$r9,10536(0x2928)
  34:	2e332e38 	0x2e332e38
  38:	Address 0x0000000000000038 is out of bounds.


Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000268 	0x00000268
   4:	00000004 	0x00000004
   8:	01040000 	0x01040000
   c:	00000018 	0x00000018
  10:	0000d20c 	0x0000d20c
  14:	00009f00 	0x00009f00
  18:	004e1000 	0x004e1000
  1c:	00023c1c 	0x00023c1c
  20:	00000000 	0x00000000
  24:	03040200 	lu52i.d	$r0,$r16,256(0x100)
  28:	000b0704 	0x000b0704
  2c:	04030000 	csrrd	$r0,0xc0
  30:	00000607 	0x00000607
  34:	00e50400 	bstrpick.d	$r0,$r0,0x25,0x1
  38:	01010000 	fadd.d	$f0,$f0,$f0
  3c:	00022805 	0x00022805
  40:	004e1000 	0x004e1000
  44:	00023c1c 	0x00023c1c
  48:	289c0100 	ld.w	$r0,$r8,1792(0x700)
  4c:	05000002 	0x05000002
  50:	00746d66 	bstrins.w	$r6,$r11,0x14,0x1b
  54:	2f180101 	0x2f180101
  58:	08000002 	0x08000002
  5c:	00000000 	0x00000000
  60:	06000000 	cacop	0x0,$r0,0
  64:	01006907 	0x01006907
  68:	02280503 	slti	$r3,$r8,-1535(0xa01)
  6c:	00710000 	bstrins.w	$r0,$r0,0x11,0x0
  70:	003f0000 	0x003f0000
  74:	63070000 	blt	$r0,$r0,-63744(0x30700) # ffff0774 <_stack+0xe3ef0778>
  78:	06040100 	cacop	0x0,$r8,256(0x100)
  7c:	00000235 	0x00000235
  80:	000001a9 	0x000001a9
  84:	000001a3 	0x000001a3
  88:	67726107 	bge	$r8,$r7,-36256(0x37260) # ffff72e8 <_stack+0xe3ef72ec>
  8c:	08050100 	0x08050100
  90:	00000241 	0x00000241
  94:	000001f6 	0x000001f6
  98:	000001d2 	0x000001d2
  9c:	00706108 	bstrins.w	$r8,$r8,0x10,0x18
  a0:	25070601 	stptr.w	$r1,$r16,1796(0x704)
  a4:	03000000 	lu52i.d	$r0,$r0,0
  a8:	077fbc91 	0x077fbc91
  ac:	07010077 	0x07010077
  b0:	00022805 	0x00022805
  b4:	0002f000 	0x0002f000
  b8:	0002d400 	0x0002d400
  bc:	00000900 	0x00000900
  c0:	10010000 	addu16i.d	$r0,$r0,64(0x40)
  c4:	004ebc01 	0x004ebc01
  c8:	00180a1c 	sra.w	$r28,$r16,$r2
  cc:	01d00000 	0x01d00000
  d0:	c80b0000 	0xc80b0000
  d4:	01000000 	0x01000000
  d8:	02280514 	slti	$r20,$r8,-1535(0xa01)
  dc:	00e40000 	bstrpick.d	$r0,$r0,0x24,0x0
  e0:	00060000 	alsl.wu	$r0,$r0,$r0,0x1
  e4:	0000fd0b 	0x0000fd0b
  e8:	05190100 	0x05190100
  ec:	00000228 	0x00000228
  f0:	000000f6 	0x000000f6
  f4:	db0b0006 	0xdb0b0006
  f8:	01000000 	0x01000000
  fc:	0228051e 	slti	$r30,$r8,-1535(0xa01)
 100:	01080000 	0x01080000
 104:	00060000 	alsl.wu	$r0,$r0,$r0,0x1
 108:	004f6c0c 	0x004f6c0c
 10c:	0002471c 	0x0002471c
 110:	00012000 	asrtle.d	$r0,$r8
 114:	56010d00 	bl	67240204(0x402010c) # 4020220 <__stack_size+0x4010220>
 118:	010d3201 	fmaxa.d	$f1,$f16,$f12
 11c:	00300157 	0x00300157
 120:	004f800e 	0x004f800e
 124:	0002531c 	0x0002531c
 128:	4f9c0c00 	jirl	$r0,$r0,-25588(0x39c0c)
 12c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 130:	01410000 	0x01410000
 134:	010d0000 	fmaxa.d	$f0,$f0,$f0
 138:	0d3a0156 	0x0d3a0156
 13c:	31015701 	0x31015701
 140:	4fb80c00 	jirl	$r0,$r0,-18420(0x3b80c)
 144:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 148:	01590000 	0x01590000
 14c:	010d0000 	fmaxa.d	$f0,$f0,$f0
 150:	0d3a0156 	0x0d3a0156
 154:	30015701 	0x30015701
 158:	4fd80c00 	jirl	$r0,$r0,-10228(0x3d80c)
 15c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 160:	01720000 	0x01720000
 164:	010d0000 	fmaxa.d	$f0,$f0,$f0
 168:	008b0256 	bstrins.d	$r22,$r18,0xb,0x0
 16c:	0157010d 	0x0157010d
 170:	f80c0030 	0xf80c0030
 174:	471c004f 	bnez	$r2,4135936(0x3f1c00) # 3f1d74 <__stack_size+0x3e1d74>
 178:	8a000002 	0x8a000002
 17c:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 180:	40015601 	beqz	$r16,262484(0x40154) # 402d4 <__stack_size+0x302d4>
 184:	0157010d 	0x0157010d
 188:	100e0030 	addu16i.d	$r16,$r1,896(0x380)
 18c:	5f1c0050 	bne	$r2,$r16,-58368(0x31c00) # ffff1d8c <_stack+0xe3ef1d90>
 190:	0c000002 	0x0c000002
 194:	1c00502c 	pcaddu12i	$r12,641(0x281)
 198:	00000247 	0x00000247
 19c:	000001ab 	0x000001ab
 1a0:	0156010d 	0x0156010d
 1a4:	57010d3a 	bl	82510092(0x4eb010c) # 4eb02b0 <__stack_size+0x4ea02b0>
 1a8:	0c003001 	0x0c003001
 1ac:	1c00503c 	pcaddu12i	$r28,641(0x281)
 1b0:	00000253 	0x00000253
 1b4:	000001bf 	0x000001bf
 1b8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1bc:	0f002508 	0x0f002508
 1c0:	1c005048 	pcaddu12i	$r8,642(0x282)
 1c4:	00000253 	0x00000253
 1c8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1cc:	00002508 	clz.d	$r8,$r8
 1d0:	00000010 	0x00000010
 1d4:	00fd0b00 	bstrpick.d	$r0,$r24,0x3d,0x2
 1d8:	19010000 	pcaddi	$r0,-522240(0x80800)
 1dc:	00022805 	0x00022805
 1e0:	0001e700 	asrtgt.d	$r24,$r25
 1e4:	11000600 	addu16i.d	$r0,$r16,16385(0x4001)
 1e8:	1c004e9c 	pcaddu12i	$r28,628(0x274)
 1ec:	00000014 	0x00000014
 1f0:	00000216 	0x00000216
 1f4:	0000fd0b 	0x0000fd0b
 1f8:	05190100 	0x05190100
 1fc:	00000228 	0x00000228
 200:	00000206 	0x00000206
 204:	a40f0006 	0xa40f0006
 208:	531c004e 	b	20651008(0x13b1c00) # 13b1e08 <__stack_size+0x13a1e08>
 20c:	0d000002 	fsel	$f2,$f0,$f0,$fcc0
 210:	3d015401 	0x3d015401
 214:	7c0f0000 	0x7c0f0000
 218:	531c004e 	b	20651008(0x13b1c00) # 13b1e18 <__stack_size+0x13a1e18>
 21c:	0d000002 	fsel	$f2,$f0,$f0,$fcc0
 220:	87025401 	0x87025401
 224:	00000000 	0x00000000
 228:	69050412 	bltu	$r0,$r18,66820(0x10504) # 1072c <__stack_size+0x72c>
 22c:	1300746e 	addu16i.d	$r14,$r3,-16355(0xc01d)
 230:	00023c04 	0x00023c04
 234:	06010300 	cacop	0x0,$r24,64(0x40)
 238:	00000100 	0x00000100
 23c:	00023514 	0x00023514
 240:	25041300 	stptr.w	$r0,$r24,1040(0x410)
 244:	15000000 	lu12i.w	$r0,-524288(0x80000)
 248:	000000db 	0x000000db
 24c:	000000db 	0x000000db
 250:	15051e01 	lu12i.w	$r1,-513808(0x828f0)
 254:	000000fd 	0x000000fd
 258:	000000fd 	0x000000fd
 25c:	15051901 	lu12i.w	$r1,-513848(0x828c8)
 260:	000000c8 	0x000000c8
 264:	000000c8 	0x000000c8
 268:	00051401 	alsl.w	$r1,$r0,$r5,0x3
 26c:	000000f3 	0x000000f3
 270:	011e0004 	0x011e0004
 274:	01040000 	0x01040000
 278:	00000018 	0x00000018
 27c:	00010e0c 	0x00010e0c
 280:	00009f00 	0x00009f00
 284:	00505000 	0x00505000
 288:	0000801c 	0x0000801c
 28c:	0001a800 	asrtgt.d	$r0,$r10
 290:	07040200 	0x07040200
 294:	0000000b 	0x0000000b
 298:	06070402 	cacop	0x2,$r0,449(0x1c1)
 29c:	03000000 	lu52i.d	$r0,$r0,0
 2a0:	00000105 	0x00000105
 2a4:	25160e02 	stptr.w	$r2,$r16,5644(0x160c)
 2a8:	04000000 	csrrd	$r0,0x0
 2ac:	000000ec 	0x000000ec
 2b0:	b0061201 	0xb0061201
 2b4:	201c0050 	ll.w	$r16,$r2,7168(0x1c00)
 2b8:	01000000 	0x01000000
 2bc:	0000629c 	rdtimel.w	$r28,$r20
 2c0:	00630500 	bstrins.w	$r0,$r8,0x3,0x1
 2c4:	62181201 	blt	$r16,$r1,-124912(0x21810) # fffe1ad4 <_stack+0xe3ee1ad8>
 2c8:	01000000 	0x01000000
 2cc:	04060054 	csrxchg	$r20,$r2,0x180
 2d0:	746e6905 	0x746e6905
 2d4:	00f90700 	bstrpick.d	$r0,$r24,0x39,0x1
 2d8:	07010000 	0x07010000
 2dc:	00810106 	bstrins.d	$r6,$r8,0x1,0x0
 2e0:	63080000 	blt	$r0,$r0,-63488(0x30800) # ffff0ae0 <_stack+0xe3ef0ae4>
 2e4:	06070100 	cacop	0x0,$r8,448(0x1c0)
 2e8:	00000062 	0x00000062
 2ec:	00fd0900 	bstrpick.d	$r0,$r8,0x3d,0x2
 2f0:	01010000 	fadd.d	$f0,$f0,$f0
 2f4:	00006205 	rdtimel.w	$r5,$r16
 2f8:	00505000 	0x00505000
 2fc:	0000281c 	cto.d	$r28,$r0
 300:	df9c0100 	0xdf9c0100
 304:	0a000000 	0x0a000000
 308:	01010063 	fadd.d	$f3,$f3,$f0
 30c:	00006211 	rdtimel.w	$r17,$r16
 310:	00039700 	0x00039700
 314:	00039300 	0x00039300
 318:	00f90b00 	bstrpick.d	$r0,$r24,0x39,0x2
 31c:	03010000 	lu52i.d	$r0,$r0,64(0x40)
 320:	00006201 	rdtimel.w	$r1,$r16
 324:	0000bf00 	0x0000bf00
 328:	0d000c00 	fsel	$f0,$f0,$f3,$fcc0
 32c:	00000069 	0x00000069
 330:	1c005050 	pcaddu12i	$r16,642(0x282)
 334:	00003002 	revb.2h	$r2,$r0
 338:	01030100 	fsub.d	$f0,$f8,$f0
 33c:	0000760e 	0x0000760e
 340:	0003ba00 	0x0003ba00
 344:	0003b800 	0x0003b800
 348:	0f000000 	0x0f000000
 34c:	00000069 	0x00000069
 350:	1c005080 	pcaddu12i	$r0,644(0x284)
 354:	00000024 	0x00000024
 358:	76109c01 	0x76109c01
 35c:	01000000 	0x01000000
 360:	70000054 	vseq.b	$vr20,$vr2,$vr0
 364:	04000001 	csrrd	$r1,0x0
 368:	00022b00 	0x00022b00
 36c:	18010400 	pcaddi	$r0,2080(0x820)
 370:	0c000000 	0x0c000000
 374:	00000118 	0x00000118
 378:	0000009f 	0x0000009f
 37c:	1c0050d0 	pcaddu12i	$r16,646(0x286)
 380:	000000ac 	0x000000ac
 384:	00000255 	0x00000255
 388:	0b070402 	0x0b070402
 38c:	02000000 	slti	$r0,$r0,0
 390:	00060704 	alsl.wu	$r4,$r24,$r1,0x1
 394:	1f030000 	pcaddu18i	$r0,-518144(0x81800)
 398:	01000001 	0x01000001
 39c:	00a9050e 	bstrins.d	$r14,$r8,0x29,0x1
 3a0:	51500000 	b	86016(0x15000) # 153a0 <__stack_size+0x53a0>
 3a4:	002c1c00 	alsl.d	$r0,$r0,$r7,0x1
 3a8:	9c010000 	0x9c010000
 3ac:	000000a9 	0x000000a9
 3b0:	01007304 	0x01007304
 3b4:	00b0100e 	bstrins.d	$r14,$r0,0x30,0x4
 3b8:	03d10000 	xori	$r0,$r0,0x440
 3bc:	03cd0000 	xori	$r0,$r0,0x340
 3c0:	fd050000 	0xfd050000
 3c4:	01000000 	0x01000000
 3c8:	00a91006 	bstrins.d	$r6,$r0,0x29,0x4
 3cc:	00710000 	bstrins.w	$r0,$r0,0x11,0x0
 3d0:	00060000 	alsl.wu	$r0,$r0,$r0,0x1
 3d4:	00515c07 	0x00515c07
 3d8:	0000bd1c 	0x0000bd1c
 3dc:	00008600 	0x00008600
 3e0:	54010800 	bl	264(0x108) # 4e8 <__stack_size-0xfb18>
 3e4:	5401f303 	bl	-66321936(0xc0c01f0) # fc0c05d4 <_stack+0xdffc05d8>
 3e8:	51640700 	b	-67017724(0xc016404) # fc0167ec <_stack+0xdff167f0>
 3ec:	01671c00 	0x01671c00
 3f0:	00990000 	bstrins.d	$r0,$r0,0x19,0x0
 3f4:	01080000 	0x01080000
 3f8:	003d0154 	0x003d0154
 3fc:	00516c09 	0x00516c09
 400:	0001671c 	0x0001671c
 404:	54010800 	bl	264(0x108) # 50c <__stack_size-0xfaf4>
 408:	00003a01 	revb.2w	$r1,$r16
 40c:	6905040a 	bltu	$r0,$r10,66820(0x10504) # 10910 <__stack_size+0x910>
 410:	0b00746e 	0x0b00746e
 414:	0000b604 	0x0000b604
 418:	06010200 	cacop	0x0,$r16,64(0x40)
 41c:	00000100 	0x00000100
 420:	0000c803 	0x0000c803
 424:	05010100 	0x05010100
 428:	000000a9 	0x000000a9
 42c:	1c0050d0 	pcaddu12i	$r16,646(0x286)
 430:	00000074 	0x00000074
 434:	01679c01 	0x01679c01
 438:	73040000 	0x73040000
 43c:	15010100 	lu12i.w	$r0,-522232(0x80808)
 440:	000000b0 	0x000000b0
 444:	000003fc 	0x000003fc
 448:	000003f2 	0x000003f2
 44c:	0100630c 	0x0100630c
 450:	00b60603 	bstrins.d	$r3,$r16,0x36,0x1
 454:	04410000 	csrrd	$r0,0x1040
 458:	043f0000 	csrrd	$r0,0xfc0
 45c:	480d0000 	bceqz	$fcc0,3328(0xd00) # 115c <__stack_size-0xeea4>
 460:	05000000 	0x05000000
 464:	000000fd 	0x000000fd
 468:	a9100601 	0xa9100601
 46c:	12000000 	addu16i.d	$r0,$r0,-32768(0x8000)
 470:	06000001 	cacop	0x1,$r0,0
 474:	51100e00 	b	-134148084(0x801100c) # f8011480 <_stack+0xdbf11484>
 478:	00081c00 	bytepick.w	$r0,$r0,$r7,0x0
 47c:	01410000 	0x01410000
 480:	fd050000 	0xfd050000
 484:	01000000 	0x01000000
 488:	00a91006 	bstrins.d	$r6,$r0,0x29,0x4
 48c:	01310000 	0x01310000
 490:	00060000 	alsl.wu	$r0,$r0,$r0,0x1
 494:	00511809 	0x00511809
 498:	0001671c 	0x0001671c
 49c:	54010800 	bl	264(0x108) # 5a4 <__stack_size-0xfa5c>
 4a0:	00003d01 	revb.d	$r1,$r8
 4a4:	00510007 	0x00510007
 4a8:	0001671c 	0x0001671c
 4ac:	00015500 	asrtle.d	$r8,$r21
 4b0:	54010800 	bl	264(0x108) # 5b8 <__stack_size-0xfa48>
 4b4:	00008702 	0x00008702
 4b8:	00512009 	0x00512009
 4bc:	0001671c 	0x0001671c
 4c0:	54010800 	bl	264(0x108) # 5c8 <__stack_size-0xfa38>
 4c4:	00008702 	0x00008702
 4c8:	fd0f0000 	0xfd0f0000
 4cc:	fd000000 	0xfd000000
 4d0:	01000000 	0x01000000
 4d4:	77001006 	0x77001006
 4d8:	04000001 	csrrd	$r1,0x0
 4dc:	00030700 	0x00030700
 4e0:	18010400 	pcaddi	$r0,2080(0x820)
 4e4:	0c000000 	0x0c000000
 4e8:	00000124 	0x00000124
 4ec:	0000009f 	0x0000009f
 4f0:	1c005180 	pcaddu12i	$r0,652(0x28c)
 4f4:	000000ec 	0x000000ec
 4f8:	000002ed 	0x000002ed
 4fc:	0b070402 	0x0b070402
 500:	02000000 	slti	$r0,$r0,0
 504:	00060704 	alsl.wu	$r4,$r24,$r1,0x1
 508:	db030000 	0xdb030000
 50c:	01000000 	0x01000000
 510:	01490501 	0x01490501
 514:	51800000 	b	98304(0x18000) # 18514 <__stack_size+0x8514>
 518:	00ec1c00 	bstrpick.d	$r0,$r0,0x2c,0x7
 51c:	9c010000 	0x9c010000
 520:	00000149 	0x00000149
 524:	01007604 	0x01007604
 528:	01501401 	0x01501401
 52c:	04600000 	csrrd	$r0,0x1800
 530:	04540000 	csrrd	$r0,0x1500
 534:	77040000 	0x77040000
 538:	1a010100 	pcalau12i	$r0,2056(0x808)
 53c:	00000149 	0x00000149
 540:	000004ba 	0x000004ba
 544:	000004b0 	0x000004b0
 548:	0000e005 	0x0000e005
 54c:	20010100 	ll.w	$r0,$r8,256(0x100)
 550:	00000149 	0x00000149
 554:	00000508 	0x00000508
 558:	000004fe 	0x000004fe
 55c:	00013605 	0x00013605
 560:	29010100 	st.b	$r0,$r8,64(0x40)
 564:	00000149 	0x00000149
 568:	00000556 	0x00000556
 56c:	0000054c 	0x0000054c
 570:	01006906 	0x01006906
 574:	01490603 	0x01490603
 578:	05a70000 	0x05a70000
 57c:	059b0000 	0x059b0000
 580:	6a060000 	bltu	$r0,$r0,-129536(0x20600) # fffe0b80 <_stack+0xe3ee0b84>
 584:	08030100 	0x08030100
 588:	00000149 	0x00000149
 58c:	00000604 	0x00000604
 590:	000005fa 	0x000005fa
 594:	01006306 	0x01006306
 598:	01490604 	0x01490604
 59c:	06530000 	0x06530000
 5a0:	06510000 	0x06510000
 5a4:	62070000 	blt	$r0,$r0,-129280(0x20700) # fffe0ca4 <_stack+0xe3ee0ca8>
 5a8:	01006675 	0x01006675
 5ac:	01570705 	0x01570705
 5b0:	91030000 	0x91030000
 5b4:	30087fb0 	0x30087fb0
 5b8:	01000001 	0x01000001
 5bc:	002c1006 	alsl.d	$r6,$r0,$r4,0x1
 5c0:	06760000 	0x06760000
 5c4:	06660000 	0x06660000
 5c8:	40090000 	beqz	$r0,2304(0x900) # ec8 <__stack_size-0xf138>
 5cc:	201c0052 	ll.w	$r18,$r2,7168(0x1c00)
 5d0:	23000000 	sc.d	$r0,$r0,0
 5d4:	0a000001 	0x0a000001
 5d8:	000000fd 	0x000000fd
 5dc:	49020a01 	0x49020a01
 5e0:	12000001 	addu16i.d	$r1,$r0,-32768(0x8000)
 5e4:	0b000001 	0x0b000001
 5e8:	52500c00 	b	151564(0x2500c) # 255f4 <__stack_size+0x155f4>
 5ec:	016e1c00 	0x016e1c00
 5f0:	010d0000 	fmaxa.d	$f0,$f0,$f0
 5f4:	2d080254 	0x2d080254
 5f8:	e80e0000 	0xe80e0000
 5fc:	301c0051 	0x301c0051
 600:	0a000000 	0x0a000000
 604:	000000fd 	0x000000fd
 608:	49020a01 	0x49020a01
 60c:	3e000001 	0x3e000001
 610:	0b000001 	0x0b000001
 614:	52180f00 	b	-66971636(0xc02180c) # fc021e20 <_stack+0xdff21e24>
 618:	016e1c00 	0x016e1c00
 61c:	00000000 	0x00000000
 620:	69050410 	bltu	$r0,$r16,66820(0x10504) # 10b24 <__stack_size+0xb24>
 624:	0200746e 	slti	$r14,$r3,29(0x1d)
 628:	013b0504 	0x013b0504
 62c:	67110000 	bge	$r0,$r0,-61184(0x31100) # ffff172c <_stack+0xe3ef1730>
 630:	67000001 	bge	$r0,$r1,-65536(0x30000) # ffff0630 <_stack+0xe3ef0634>
 634:	12000001 	addu16i.d	$r1,$r0,-32768(0x8000)
 638:	00000025 	0x00000025
 63c:	0102003f 	0x0102003f
 640:	00010006 	0x00010006
 644:	00fd1300 	bstrpick.d	$r0,$r24,0x3d,0x4
 648:	00fd0000 	bstrpick.d	$r0,$r0,0x3d,0x0
 64c:	0a010000 	0x0a010000
 650:	04da0002 	csrrd	$r2,0x3680
 654:	00040000 	alsl.w	$r0,$r0,$r0,0x1
 658:	00000425 	0x00000425
 65c:	00180104 	sra.w	$r4,$r8,$r0
 660:	510c0000 	b	68608(0x10c00) # 11260 <__stack_size+0x1260>
 664:	9f000001 	0x9f000001
 668:	60000000 	blt	$r0,$r0,0 # 668 <__stack_size-0xf998>
 66c:	00000000 	0x00000000
 670:	d9000000 	0xd9000000
 674:	02000003 	slti	$r3,$r0,0
 678:	07040304 	0x07040304
 67c:	0000000b 	0x0000000b
 680:	06070403 	cacop	0x3,$r0,449(0x1c1)
 684:	04000000 	csrrd	$r0,0x0
 688:	0000015a 	0x0000015a
 68c:	27160f02 	stptr.d	$r2,$r24,5644(0x160c)
 690:	05000000 	0x05000000
 694:	0000014b 	0x0000014b
 698:	06015701 	cacop	0x1,$r24,85(0x55)
 69c:	1c005530 	pcaddu12i	$r16,681(0x2a9)
 6a0:	00000018 	0x00000018
 6a4:	00cd9c01 	bstrpick.d	$r1,$r0,0xd,0x27
 6a8:	73060000 	0x73060000
 6ac:	01570100 	0x01570100
 6b0:	00002512 	clz.d	$r18,$r8
 6b4:	0006da00 	alsl.wu	$r0,$r16,$r22,0x2
 6b8:	0006d600 	alsl.wu	$r0,$r16,$r21,0x2
 6bc:	006e0600 	bstrins.w	$r0,$r16,0xe,0x1
 6c0:	1c015701 	pcaddu12i	$r1,2744(0xab8)
 6c4:	00000035 	0x00000035
 6c8:	000006ff 	0x000006ff
 6cc:	000006fb 	0x000006fb
 6d0:	00026407 	0x00026407
 6d4:	00553000 	0x00553000
 6d8:	5530021c 	bl	-126799872(0x8713000) # f87136d8 <_stack+0xdc6136dc>
 6dc:	00141c00 	nor	$r0,$r0,$r7
 6e0:	58010000 	beq	$r0,$r0,256(0x100) # 7e0 <__stack_size-0xf820>
 6e4:	89080201 	0x89080201
 6e8:	26000002 	ldptr.d	$r2,$r0,0
 6ec:	20000007 	ll.w	$r7,$r0,0
 6f0:	09000007 	0x09000007
 6f4:	0000027f 	0x0000027f
 6f8:	02750800 	sltui	$r0,$r0,-702(0xd42)
 6fc:	075a0000 	0x075a0000
 700:	07560000 	0x07560000
 704:	300a0000 	0x300a0000
 708:	141c0055 	lu12i.w	$r21,57346(0xe002)
 70c:	0b000000 	0x0b000000
 710:	00000293 	0x00000293
 714:	0000077d 	0x0000077d
 718:	0000077b 	0x0000077b
 71c:	0c000000 	0x0c000000
 720:	00000161 	0x00000161
 724:	01014b01 	fadd.d	$f1,$f24,$f18
 728:	0000014c 	0x0000014c
 72c:	1c0054d0 	pcaddu12i	$r16,678(0x2a6)
 730:	00000058 	0x00000058
 734:	014c9c01 	0x014c9c01
 738:	76060000 	0x76060000
 73c:	4b010031 	bceqz	$fcc1,-3735296(0x470100) # ffc7083c <_stack+0xe3b70840>
 740:	01531401 	0x01531401
 744:	07940000 	0x07940000
 748:	07900000 	0x07900000
 74c:	76060000 	0x76060000
 750:	4b010032 	bceqz	$fcc1,-3473152(0x4b0100) # ffcb0850 <_stack+0xe3bb0854>
 754:	01532401 	0x01532401
 758:	07b90000 	0x07b90000
 75c:	07b50000 	0x07b50000
 760:	6e060000 	bgeu	$r0,$r0,-129536(0x20600) # fffe0d60 <_stack+0xe3ee0d64>
 764:	014b0100 	0x014b0100
 768:	0000352f 	revb.4h	$r15,$r9
 76c:	0007e200 	alsl.wu	$r0,$r16,$r24,0x4
 770:	0007da00 	alsl.wu	$r0,$r16,$r22,0x4
 774:	31730d00 	0x31730d00
 778:	014c0100 	0x014c0100
 77c:	00015a11 	0x00015a11
 780:	00082600 	bytepick.w	$r0,$r16,$r9,0x0
 784:	00082200 	bytepick.w	$r0,$r16,$r8,0x0
 788:	32730d00 	0x32730d00
 78c:	014d0100 	0x014d0100
 790:	00015a11 	0x00015a11
 794:	00084600 	bytepick.w	$r0,$r16,$r17,0x0
 798:	00084400 	bytepick.w	$r0,$r0,$r17,0x0
 79c:	040e0000 	csrrd	$r0,0x380
 7a0:	746e6905 	0x746e6905
 7a4:	59040f00 	beq	$r24,$r0,66572(0x1040c) # 10bb0 <__stack_size+0xbb0>
 7a8:	10000001 	addu16i.d	$r1,$r0,0
 7ac:	0167040f 	0x0167040f
 7b0:	01030000 	fsub.d	$f0,$f0,$f0
 7b4:	00010006 	0x00010006
 7b8:	01601100 	0x01601100
 7bc:	860c0000 	0x860c0000
 7c0:	01000001 	0x01000001
 7c4:	25010128 	stptr.w	$r8,$r9,256(0x100)
 7c8:	70000000 	vseq.b	$vr0,$vr0,$vr0
 7cc:	5c1c0054 	bne	$r2,$r20,7168(0x1c00) # 23cc <__stack_size-0xdc34>
 7d0:	01000000 	0x01000000
 7d4:	0001e59c 	0x0001e59c
 7d8:	73641200 	0x73641200
 7dc:	28010074 	ld.b	$r20,$r3,64(0x40)
 7e0:	00250f01 	crc.w.w.w	$r1,$r24,$r3
 7e4:	54010000 	bl	256(0x100) # 8e4 <__stack_size-0xf71c>
 7e8:	63727306 	blt	$r24,$r6,-36240(0x37270) # ffff7a58 <_stack+0xe3ef7a5c>
 7ec:	01280100 	0x01280100
 7f0:	00015320 	asrtle.d	$r25,$r20
 7f4:	00085f00 	bytepick.w	$r0,$r24,$r23,0x0
 7f8:	00085900 	bytepick.w	$r0,$r8,$r22,0x0
 7fc:	006e0600 	bstrins.w	$r0,$r16,0xe,0x1
 800:	2c012801 	vld	$vr1,$r0,74(0x4a)
 804:	00000035 	0x00000035
 808:	00000891 	0x00000891
 80c:	0000088b 	0x0000088b
 810:	0100730d 	0x0100730d
 814:	5a11012c 	beq	$r9,$r12,-126720(0x21100) # fffe1914 <_stack+0xe3ee1918>
 818:	c6000001 	0xc6000001
 81c:	be000008 	0xbe000008
 820:	0d000008 	fsel	$f8,$f0,$f0,$fcc0
 824:	2d010064 	0x2d010064
 828:	01e50b01 	0x01e50b01
 82c:	09040000 	0x09040000
 830:	08fa0000 	0x08fa0000
 834:	0f000000 	0x0f000000
 838:	00016004 	0x00016004
 83c:	019e0c00 	0x019e0c00
 840:	11010000 	addu16i.d	$r0,$r0,16448(0x4040)
 844:	00250101 	crc.w.w.w	$r1,$r8,$r0
 848:	54400000 	bl	16384(0x4000) # 4848 <__stack_size-0xb7b8>
 84c:	00281c00 	0x00281c00
 850:	9c010000 	0x9c010000
 854:	00000264 	0x00000264
 858:	74736412 	xvmin.w	$xr18,$xr0,$xr25
 85c:	01110100 	fscaleb.d	$f0,$f8,$f0
 860:	0000250e 	clz.d	$r14,$r8
 864:	06540100 	0x06540100
 868:	00637273 	bstrins.w	$r19,$r19,0x3,0x1c
 86c:	1f011101 	pcaddu18i	$r1,-522104(0x80888)
 870:	00000153 	0x00000153
 874:	00000947 	0x00000947
 878:	00000943 	0x00000943
 87c:	01006e06 	0x01006e06
 880:	352b0111 	0x352b0111
 884:	6e000000 	bgeu	$r0,$r0,-131072(0x20000) # fffe0884 <_stack+0xe3ee0888>
 888:	68000009 	bltu	$r0,$r9,0 # 888 <__stack_size-0xf778>
 88c:	0d000009 	fsel	$f9,$f0,$f0,$fcc0
 890:	15010073 	lu12i.w	$r19,-522237(0x80803)
 894:	015a1101 	0x015a1101
 898:	09a00000 	vfnmadd.d	$vr0,$vr0,$vr0,$vr0
 89c:	099e0000 	vfnmadd.s	$vr0,$vr0,$vr0,$vr28
 8a0:	640d0000 	bge	$r0,$r0,3328(0xd00) # 15a0 <__stack_size-0xea60>
 8a4:	01160100 	0x01160100
 8a8:	0001e50b 	0x0001e50b
 8ac:	0009b700 	bytepick.w	$r0,$r24,$r13,0x3
 8b0:	0009b300 	bytepick.w	$r0,$r24,$r12,0x3
 8b4:	a5130000 	0xa5130000
 8b8:	01000001 	0x01000001
 8bc:	002501f6 	crc.w.w.w	$r22,$r15,$r0
 8c0:	9e010000 	0x9e010000
 8c4:	14000002 	lu12i.w	$r2,0
 8c8:	f6010073 	0xf6010073
 8cc:	0000250e 	clz.d	$r14,$r8
 8d0:	00631400 	bstrins.w	$r0,$r0,0x3,0x5
 8d4:	6016f601 	blt	$r16,$r1,5876(0x16f4) # 1fc8 <__stack_size-0xe038>
 8d8:	14000001 	lu12i.w	$r1,0
 8dc:	f601006e 	0xf601006e
 8e0:	00003520 	revb.4h	$r0,$r9
 8e4:	00701500 	bstrins.w	$r0,$r8,0x10,0x5
 8e8:	e50bfa01 	0xe50bfa01
 8ec:	00000001 	0x00000001
 8f0:	00019616 	0x00019616
 8f4:	01880100 	0x01880100
 8f8:	000001e5 	0x000001e5
 8fc:	1c0053f0 	pcaddu12i	$r16,671(0x29f)
 900:	00000028 	0x00000028
 904:	02d79c01 	addi.d	$r1,$r0,1511(0x5e7)
 908:	73170000 	0x73170000
 90c:	15880100 	lu12i.w	$r0,-245752(0xc4008)
 910:	0000015a 	0x0000015a
 914:	000009d9 	0x000009d9
 918:	000009d5 	0x000009d5
 91c:	01006318 	0x01006318
 920:	01601d88 	0x01601d88
 924:	55010000 	bl	65792(0x10100) # 10a24 <__stack_size+0xa24>
 928:	01781600 	0x01781600
 92c:	74010000 	xvseq.w	$xr0,$xr0,$xr0
 930:	0001e501 	0x0001e501
 934:	0053b000 	0x0053b000
 938:	00003c1c 	revb.d	$r28,$r0
 93c:	109c0100 	addu16i.d	$r0,$r8,9984(0x2700)
 940:	17000003 	lu32i.d	$r3,-524288(0x80000)
 944:	74010073 	xvseq.w	$xr19,$xr3,$xr0
 948:	00015a14 	0x00015a14
 94c:	0009fd00 	bytepick.w	$r0,$r8,$r31,0x3
 950:	0009f700 	bytepick.w	$r0,$r24,$r29,0x3
 954:	00631800 	bstrins.w	$r0,$r0,0x3,0x6
 958:	601c7401 	blt	$r0,$r1,7284(0x1c74) # 25cc <__stack_size-0xda34>
 95c:	01000001 	0x01000001
 960:	8e160055 	0x8e160055
 964:	01000001 	0x01000001
 968:	014c0164 	0x014c0164
 96c:	53400000 	b	212992(0x34000) # 3496c <__stack_size+0x2496c>
 970:	006c1c00 	bstrins.w	$r0,$r0,0xc,0x7
 974:	9c010000 	0x9c010000
 978:	00000363 	0x00000363
 97c:	00317317 	0x00317317
 980:	5a156401 	beq	$r0,$r1,-125596(0x21564) # fffe1ee4 <_stack+0xe3ee1ee8>
 984:	2c000001 	vld	$vr1,$r0,0
 988:	2600000a 	ldptr.d	$r10,$r0,0
 98c:	1700000a 	lu32i.d	$r10,-524288(0x80000)
 990:	01003273 	0x01003273
 994:	015a2564 	0x015a2564
 998:	0a5f0000 	xvfmsub.s	$xr0,$xr0,$xr0,$xr30
 99c:	0a550000 	xvfmsub.s	$xr0,$xr0,$xr0,$xr10
 9a0:	6e170000 	bgeu	$r0,$r0,-125184(0x21700) # fffe20a0 <_stack+0xe3ee20a4>
 9a4:	30640100 	0x30640100
 9a8:	00000035 	0x00000035
 9ac:	00000aaa 	0x00000aaa
 9b0:	00000a9e 	0x00000a9e
 9b4:	01681600 	0x01681600
 9b8:	4d010000 	jirl	$r0,$r0,65792(0x10100)
 9bc:	0001e501 	0x0001e501
 9c0:	00531000 	0x00531000
 9c4:	00002c1c 	ctz.d	$r28,$r0
 9c8:	c69c0100 	0xc69c0100
 9cc:	18000003 	pcaddi	$r3,0
 9d0:	00747364 	bstrins.w	$r4,$r27,0x14,0x1c
 9d4:	e50f4d01 	0xe50f4d01
 9d8:	01000001 	0x01000001
 9dc:	72731754 	0x72731754
 9e0:	4d010063 	jirl	$r3,$r3,65792(0x10100)
 9e4:	00015a20 	asrtle.d	$r17,$r22
 9e8:	000b0d00 	0x000b0d00
 9ec:	000b0900 	0x000b0900
 9f0:	656c1700 	bge	$r24,$r0,93204(0x16c14) # 17604 <__stack_size+0x7604>
 9f4:	4d01006e 	jirl	$r14,$r3,65792(0x10100)
 9f8:	0000352c 	revb.4h	$r12,$r9
 9fc:	000b3500 	0x000b3500
 a00:	000b2b00 	0x000b2b00
 a04:	00701900 	bstrins.w	$r0,$r8,0x10,0x6
 a08:	e50b4e01 	0xe50b4e01
 a0c:	9c000001 	0x9c000001
 a10:	9400000b 	0x9400000b
 a14:	0000000b 	0x0000000b
 a18:	00014416 	0x00014416
 a1c:	01370100 	0x01370100
 a20:	000001e5 	0x000001e5
 a24:	1c0052f0 	pcaddu12i	$r16,663(0x297)
 a28:	0000001c 	0x0000001c
 a2c:	04159c01 	csrrd	$r1,0x567
 a30:	64180000 	bge	$r0,$r0,6144(0x1800) # 2230 <__stack_size-0xddd0>
 a34:	01007473 	0x01007473
 a38:	01e50e37 	0x01e50e37
 a3c:	54010000 	bl	256(0x100) # b3c <__stack_size-0xf4c4>
 a40:	63727317 	blt	$r24,$r23,-36240(0x37270) # ffff7cb0 <_stack+0xe3ef7cb4>
 a44:	1f370100 	pcaddu18i	$r0,-411640(0x9b808)
 a48:	0000015a 	0x0000015a
 a4c:	00000bd6 	0x00000bd6
 a50:	00000bd2 	0x00000bd2
 a54:	01007019 	0x01007019
 a58:	01e50b3b 	0x01e50b3b
 a5c:	0bf80000 	0x0bf80000
 a60:	0bf40000 	0x0bf40000
 a64:	16000000 	lu32i.d	$r0,0
 a68:	00000170 	0x00000170
 a6c:	35012201 	0x35012201
 a70:	b0000000 	0xb0000000
 a74:	341c0052 	0x341c0052
 a78:	01000000 	0x01000000
 a7c:	0004649c 	alsl.w	$r28,$r4,$r25,0x1
 a80:	00731700 	bstrins.w	$r0,$r24,0x13,0x5
 a84:	5a152201 	beq	$r16,$r1,-125664(0x21520) # fffe1fa4 <_stack+0xe3ee1fa8>
 a88:	1c000001 	pcaddu12i	$r1,0
 a8c:	1600000c 	lu32i.d	$r12,0
 a90:	1800000c 	pcaddi	$r12,0
 a94:	006e656c 	bstrins.w	$r12,$r11,0xe,0x19
 a98:	351f2201 	0x351f2201
 a9c:	01000000 	0x01000000
 aa0:	6e631955 	bgeu	$r10,$r21,-105704(0x26318) # fffe6db8 <_stack+0xe3ee6dbc>
 aa4:	23010074 	sc.d	$r20,$r3,256(0x100)
 aa8:	0000350c 	revb.4h	$r12,$r8
 aac:	000c5200 	bytepick.d	$r0,$r16,$r20,0x0
 ab0:	000c4e00 	bytepick.d	$r0,$r16,$r19,0x0
 ab4:	7f160000 	0x7f160000
 ab8:	01000001 	0x01000001
 abc:	0035010c 	0x0035010c
 ac0:	52700000 	b	159744(0x27000) # 27ac0 <__stack_size+0x17ac0>
 ac4:	00341c00 	0x00341c00
 ac8:	9c010000 	0x9c010000
 acc:	000004a5 	0x000004a5
 ad0:	01007317 	0x01007317
 ad4:	015a140c 	0x015a140c
 ad8:	0c7d0000 	0x0c7d0000
 adc:	0c710000 	0x0c710000
 ae0:	63190000 	blt	$r0,$r0,-59136(0x31900) # ffff23e0 <_stack+0xe3ef23e4>
 ae4:	0100746e 	0x0100746e
 ae8:	00350c0d 	0x00350c0d
 aec:	0ce50000 	0x0ce50000
 af0:	0cdf0000 	0x0cdf0000
 af4:	1a000000 	pcalau12i	$r0,0
 af8:	00000264 	0x00000264
 afc:	1c005420 	pcaddu12i	$r0,673(0x2a1)
 b00:	00000020 	0x00000020
 b04:	751b9c01 	xvilvl.d	$xr1,$xr0,$xr7
 b08:	01000002 	0x01000002
 b0c:	027f1b54 	sltui	$r20,$r26,-58(0xfc6)
 b10:	55010000 	bl	65792(0x10100) # 10c10 <__stack_size+0xc10>
 b14:	00028908 	0x00028908
 b18:	000d1c00 	bytepick.d	$r0,$r0,$r7,0x2
 b1c:	000d1000 	bytepick.d	$r0,$r0,$r4,0x2
 b20:	02930b00 	addi.w	$r0,$r24,1218(0x4c2)
 b24:	0d8e0000 	0x0d8e0000
 b28:	0d8a0000 	0x0d8a0000
 b2c:	00000000 	0x00000000
 b30:	00000245 	0x00000245
 b34:	05d20004 	0x05d20004
 b38:	01040000 	0x01040000
 b3c:	00000018 	0x00000018
 b40:	0001de0c 	0x0001de0c
 b44:	00009f00 	0x00009f00
 b48:	00555000 	0x00555000
 b4c:	0001401c 	0x0001401c
 b50:	0006dd00 	alsl.wu	$r0,$r8,$r23,0x2
 b54:	07040200 	0x07040200
 b58:	0000000b 	0x0000000b
 b5c:	06070402 	cacop	0x2,$r0,449(0x1c1)
 b60:	03000000 	lu52i.d	$r0,$r0,0
 b64:	000001cd 	0x000001cd
 b68:	2c170302 	vld	$vr2,$r24,1472(0x5c0)
 b6c:	04000000 	csrrd	$r0,0x0
 b70:	6e690504 	bgeu	$r8,$r4,-104188(0x26904) # fffe7474 <_stack+0xe3ee7478>
 b74:	c4050074 	0xc4050074
 b78:	10000001 	addu16i.d	$r1,$r0,0
 b7c:	88082002 	0x88082002
 b80:	06000000 	cacop	0x0,$r0,0
 b84:	00000207 	0x00000207
 b88:	330b2102 	0x330b2102
 b8c:	00000000 	0x00000000
 b90:	00021506 	0x00021506
 b94:	0b220200 	0x0b220200
 b98:	00000033 	0x00000033
 b9c:	01f60604 	0x01f60604
 ba0:	23020000 	sc.d	$r0,$r0,512(0x200)
 ba4:	0000330b 	revb.2h	$r11,$r24
 ba8:	d6060800 	0xd6060800
 bac:	02000001 	slti	$r1,$r0,0
 bb0:	00330b24 	0x00330b24
 bb4:	000c0000 	bytepick.d	$r0,$r0,$r0,0x0
 bb8:	0001e507 	0x0001e507
 bbc:	0f3c0100 	0x0f3c0100
 bc0:	0000002c 	0x0000002c
 bc4:	1c005660 	pcaddu12i	$r0,691(0x2b3)
 bc8:	00000030 	0x00000030
 bcc:	00da9c01 	bstrpick.d	$r1,$r0,0x1a,0x27
 bd0:	6e080000 	bgeu	$r0,$r0,-129024(0x20800) # fffe13d0 <_stack+0xe3ee13d4>
 bd4:	133e0100 	addu16i.d	$r0,$r8,-12416(0xcf80)
 bd8:	0000002c 	0x0000002c
 bdc:	00000db4 	0x00000db4
 be0:	00000dac 	0x00000dac
 be4:	00022e09 	0x00022e09
 be8:	00566000 	0x00566000
 bec:	00b8031c 	bstrins.d	$r28,$r24,0x38,0x0
 bf0:	3f010000 	0x3f010000
 bf4:	00b80a09 	bstrins.d	$r9,$r16,0x38,0x2
 bf8:	3b0b0000 	0x3b0b0000
 bfc:	f6000002 	0xf6000002
 c00:	f400000d 	0xf400000d
 c04:	0000000d 	0x0000000d
 c08:	0e070000 	0x0e070000
 c0c:	01000002 	0x01000002
 c10:	002c0f33 	alsl.d	$r19,$r25,$r3,0x1
 c14:	56300000 	bl	143360(0x23000) # 23c14 <__stack_size+0x13c14>
 c18:	00241c00 	crc.w.b.w	$r0,$r0,$r7
 c1c:	9c010000 	0x9c010000
 c20:	0000012c 	0x0000012c
 c24:	01006e08 	0x01006e08
 c28:	002c1335 	alsl.d	$r21,$r25,$r4,0x1
 c2c:	0e110000 	0x0e110000
 c30:	0e090000 	0x0e090000
 c34:	2e090000 	0x2e090000
 c38:	30000002 	0x30000002
 c3c:	031c0056 	lu52i.d	$r22,$r2,1792(0x700)
 c40:	000000a0 	0x000000a0
 c44:	0a093601 	0x0a093601
 c48:	000000a0 	0x000000a0
 c4c:	00023b0b 	0x00023b0b
 c50:	000e4c00 	bytepick.d	$r0,$r0,$r19,0x4
 c54:	000e4a00 	bytepick.d	$r0,$r16,$r18,0x4
 c58:	00000000 	0x00000000
 c5c:	0001ec0c 	0x0001ec0c
 c60:	0f2c0100 	0x0f2c0100
 c64:	0000002c 	0x0000002c
 c68:	00000147 	0x00000147
 c6c:	01006e0d 	0x01006e0d
 c70:	002c132e 	alsl.d	$r14,$r25,$r4,0x1
 c74:	07000000 	0x07000000
 c78:	0000021d 	0x0000021d
 c7c:	2c0f2001 	vld	$vr1,$r0,968(0x3c8)
 c80:	90000000 	0x90000000
 c84:	841c0055 	0x841c0055
 c88:	01000000 	0x01000000
 c8c:	0001bb9c 	0x0001bb9c
 c90:	65730e00 	bge	$r16,$r0,94988(0x1730c) # 17f9c <__stack_size+0x7f9c>
 c94:	2001006c 	ll.w	$r12,$r3,256(0x100)
 c98:	00003f21 	revb.d	$r1,$r25
 c9c:	000e6300 	bytepick.d	$r0,$r24,$r24,0x4
 ca0:	000e5f00 	bytepick.d	$r0,$r24,$r23,0x4
 ca4:	6d740f00 	bgeu	$r24,$r0,95244(0x1740c) # 180b0 <__stack_size+0x80b0>
 ca8:	20010070 	ll.w	$r16,$r3,256(0x100)
 cac:	0001bb36 	0x0001bb36
 cb0:	08550100 	fmsub.s	$f0,$f8,$f0,$f10
 cb4:	2201006e 	ll.d	$r14,$r3,256(0x100)
 cb8:	00002c13 	ctz.d	$r19,$r0
 cbc:	000e8800 	bytepick.d	$r0,$r0,$r2,0x5
 cc0:	000e8400 	bytepick.d	$r0,$r0,$r1,0x5
 cc4:	022e0900 	slti	$r0,$r8,-1150(0xb82)
 cc8:	55900000 	bl	102400(0x19000) # 19cc8 <__stack_size+0x9cc8>
 ccc:	88031c00 	0x88031c00
 cd0:	01000000 	0x01000000
 cd4:	880a0923 	0x880a0923
 cd8:	0b000000 	0x0b000000
 cdc:	0000023b 	0x0000023b
 ce0:	00000ea9 	0x00000ea9
 ce4:	00000ea7 	0x00000ea7
 ce8:	10000000 	addu16i.d	$r0,$r0,0
 cec:	00004604 	revh.d	$r4,$r16
 cf0:	01ac1100 	0x01ac1100
 cf4:	16010000 	lu32i.d	$r0,2048(0x800)
 cf8:	00002c0f 	ctz.d	$r15,$r0
 cfc:	00558000 	0x00558000
 d00:	0000081c 	0x0000081c
 d04:	ee9c0100 	0xee9c0100
 d08:	08000001 	0x08000001
 d0c:	1801006e 	pcaddi	$r14,2051(0x803)
 d10:	00002c13 	ctz.d	$r19,$r0
 d14:	000ebe00 	bytepick.d	$r0,$r16,$r15,0x5
 d18:	000ebc00 	bytepick.d	$r0,$r0,$r15,0x5
 d1c:	ba110000 	0xba110000
 d20:	01000001 	0x01000001
 d24:	002c0f11 	alsl.d	$r17,$r24,$r3,0x1
 d28:	55500000 	bl	86016(0x15000) # 15d28 <__stack_size+0x5d28>
 d2c:	001c1c00 	mul.w	$r0,$r0,$r7
 d30:	9c010000 	0x9c010000
 d34:	0000022e 	0x0000022e
 d38:	00022e09 	0x00022e09
 d3c:	00555000 	0x00555000
 d40:	0070021c 	bstrins.w	$r28,$r16,0x10,0x0
 d44:	13010000 	addu16i.d	$r0,$r0,-16320(0xc040)
 d48:	00700a0d 	bstrins.w	$r13,$r16,0x10,0x2
 d4c:	3b0b0000 	0x3b0b0000
 d50:	d3000002 	0xd3000002
 d54:	d100000e 	0xd100000e
 d58:	0000000e 	0x0000000e
 d5c:	b9120000 	0xb9120000
 d60:	01000001 	0x01000001
 d64:	002c0f04 	alsl.d	$r4,$r24,$r3,0x1
 d68:	13010000 	addu16i.d	$r0,$r0,-16320(0xc040)
 d6c:	000001fe 	0x000001fe
 d70:	2c130601 	vld	$vr1,$r16,1217(0x4c1)
 d74:	00000000 	0x00000000
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	stptr.w	$r1,$r8,272(0x110)
   4:	030b130e 	lu52i.d	$r14,$r24,708(0x2c4)
   8:	110e1b0e 	addu16i.d	$r14,$r24,17286(0x4386)
   c:	10061201 	addu16i.d	$r1,$r16,388(0x184)
  10:	02000017 	slti	$r23,$r0,0
  14:	0b0b000f 	0x0b0b000f
  18:	24030000 	ldptr.w	$r0,$r0,768(0x300)
  1c:	3e0b0b00 	0x3e0b0b00
  20:	000e030b 	bytepick.d	$r11,$r24,$r0,0x4
  24:	012e0400 	0x012e0400
  28:	0e03193f 	0x0e03193f
  2c:	0b3b0b3a 	0x0b3b0b3a
  30:	19270b39 	pcaddi	$r25,-444327(0x93859)
  34:	01111349 	fscaleb.d	$f9,$f26,$f4
  38:	18400612 	pcaddi	$r18,131120(0x20030)
  3c:	01194297 	0x01194297
  40:	05000013 	0x05000013
  44:	08030005 	0x08030005
  48:	0b3b0b3a 	0x0b3b0b3a
  4c:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
  50:	42b71702 	beqz	$r24,702228(0xab714) # ab764 <__stack_size+0x9b764>
  54:	06000017 	cacop	0x17,$r0,0
  58:	00000018 	0x00000018
  5c:	03003407 	lu52i.d	$r7,$r0,13(0xd)
  60:	3b0b3a08 	0x3b0b3a08
  64:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d0b9c <__stack_size+0x2c0b9c>
  68:	b7170213 	0xb7170213
  6c:	00001742 	clz.w	$r2,$r26
  70:	03003408 	lu52i.d	$r8,$r0,13(0xd)
  74:	3b0b3a08 	0x3b0b3a08
  78:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d0bb0 <__stack_size+0x2c0bb0>
  7c:	00180213 	sra.w	$r19,$r16,$r0
  80:	000a0900 	0x000a0900
  84:	0b3a0e03 	0x0b3a0e03
  88:	0b390b3b 	0x0b390b3b
  8c:	00000111 	0x00000111
  90:	55010b0a 	bl	-64421624(0xc290108) # fc290198 <_stack+0xe019019c>
  94:	00130117 	maskeqz	$r23,$r8,$r0
  98:	012e0b00 	0x012e0b00
  9c:	0e03193f 	0x0e03193f
  a0:	0b3b0b3a 	0x0b3b0b3a
  a4:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
  a8:	1301193c 	addu16i.d	$r28,$r9,-16314(0xc046)
  ac:	890c0000 	0x890c0000
  b0:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
  b4:	01133101 	fcopysign.d	$f1,$f8,$f12
  b8:	0d000013 	fsel	$f19,$f0,$f0,$fcc0
  bc:	0001828a 	0x0001828a
  c0:	42911802 	beqz	$r0,692504(0xa9118) # a91d8 <__stack_size+0x991d8>
  c4:	0e000018 	0x0e000018
  c8:	00018289 	0x00018289
  cc:	13310111 	addu16i.d	$r17,$r8,-13248(0xcc40)
  d0:	890f0000 	0x890f0000
  d4:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
  d8:	00133101 	maskeqz	$r1,$r8,$r12
  dc:	010b1000 	fmin.d	$f0,$f0,$f4
  e0:	00001755 	clz.w	$r21,$r26
  e4:	11010b11 	addu16i.d	$r17,$r24,16450(0x4042)
  e8:	01061201 	0x01061201
  ec:	12000013 	addu16i.d	$r19,$r0,-32768(0x8000)
  f0:	0b0b0024 	0x0b0b0024
  f4:	08030b3e 	0x08030b3e
  f8:	0f130000 	0x0f130000
  fc:	490b0b00 	0x490b0b00
 100:	14000013 	lu12i.w	$r19,0
 104:	13490026 	addu16i.d	$r6,$r1,-11712(0xd240)
 108:	2e150000 	0x2e150000
 10c:	3c193f00 	0x3c193f00
 110:	030e6e19 	lu52i.d	$r25,$r16,923(0x39b)
 114:	3b0b3a0e 	0x3b0b3a0e
 118:	000b390b 	0x000b390b
 11c:	11010000 	addu16i.d	$r0,$r0,16448(0x4040)
 120:	130e2501 	addu16i.d	$r1,$r8,-15479(0xc389)
 124:	1b0e030b 	pcalau12i	$r11,-495592(0x87018)
 128:	1201110e 	addu16i.d	$r14,$r8,-32700(0x8044)
 12c:	00171006 	sll.w	$r6,$r0,$r4
 130:	00240200 	crc.w.b.w	$r0,$r16,$r0
 134:	0b3e0b0b 	0x0b3e0b0b
 138:	00000e03 	0x00000e03
 13c:	03001603 	lu52i.d	$r3,$r16,5(0x5)
 140:	3b0b3a0e 	0x3b0b3a0e
 144:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d0c7c <__stack_size+0x2c0c7c>
 148:	04000013 	csrrd	$r19,0x0
 14c:	193f012e 	pcaddi	$r14,-395255(0x9f809)
 150:	0b3a0e03 	0x0b3a0e03
 154:	0b390b3b 	0x0b390b3b
 158:	01111927 	fscaleb.d	$f7,$f9,$f6
 15c:	18400612 	pcaddi	$r18,131120(0x20030)
 160:	01194297 	0x01194297
 164:	05000013 	0x05000013
 168:	08030005 	0x08030005
 16c:	0b3b0b3a 	0x0b3b0b3a
 170:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 174:	00001802 	cto.w	$r2,$r0
 178:	0b002406 	0x0b002406
 17c:	030b3e0b 	lu52i.d	$r11,$r16,719(0x2cf)
 180:	07000008 	0x07000008
 184:	193f012e 	pcaddi	$r14,-395255(0x9f809)
 188:	0b3a0e03 	0x0b3a0e03
 18c:	0b390b3b 	0x0b390b3b
 190:	13010b20 	addu16i.d	$r0,$r25,-16318(0xc042)
 194:	05080000 	0x05080000
 198:	3a080300 	0x3a080300
 19c:	390b3b0b 	0x390b3b0b
 1a0:	0013490b 	maskeqz	$r11,$r8,$r18
 1a4:	012e0900 	0x012e0900
 1a8:	0e03193f 	0x0e03193f
 1ac:	0b3b0b3a 	0x0b3b0b3a
 1b0:	19270b39 	pcaddi	$r25,-444327(0x93859)
 1b4:	01111349 	fscaleb.d	$f9,$f26,$f4
 1b8:	18400612 	pcaddi	$r18,131120(0x20030)
 1bc:	01194297 	0x01194297
 1c0:	0a000013 	0x0a000013
 1c4:	08030005 	0x08030005
 1c8:	0b3b0b3a 	0x0b3b0b3a
 1cc:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 1d0:	42b71702 	beqz	$r24,702228(0xab714) # ab8e4 <__stack_size+0x9b8e4>
 1d4:	0b000017 	0x0b000017
 1d8:	193f012e 	pcaddi	$r14,-395255(0x9f809)
 1dc:	0b3a0e03 	0x0b3a0e03
 1e0:	0b390b3b 	0x0b390b3b
 1e4:	193c1349 	pcaddi	$r9,-401254(0x9e09a)
 1e8:	00001301 	clo.w	$r1,$r24
 1ec:	0000180c 	cto.w	$r12,$r0
 1f0:	011d0d00 	0x011d0d00
 1f4:	01521331 	0x01521331
 1f8:	550b42b8 	bl	-85914816(0xae10b40) # fae10d38 <_stack+0xded10d3c>
 1fc:	590b5817 	beq	$r0,$r23,68440(0x10b58) # 10d54 <__stack_size+0xd54>
 200:	000b570b 	0x000b570b
 204:	00050e00 	alsl.w	$r0,$r16,$r3,0x3
 208:	17021331 	lu32i.d	$r17,-520039(0x81099)
 20c:	001742b7 	sll.w	$r23,$r21,$r16
 210:	012e0f00 	0x012e0f00
 214:	01111331 	fscaleb.d	$f17,$f25,$f4
 218:	18400612 	pcaddi	$r18,131120(0x20030)
 21c:	00194297 	srl.d	$r23,$r20,$r16
 220:	00051000 	alsl.w	$r0,$r0,$r4,0x3
 224:	18021331 	pcaddi	$r17,4249(0x1099)
 228:	01000000 	0x01000000
 22c:	0e250111 	0x0e250111
 230:	0e030b13 	0x0e030b13
 234:	01110e1b 	fscaleb.d	$f27,$f16,$f3
 238:	17100612 	lu32i.d	$r18,-491472(0x88030)
 23c:	24020000 	ldptr.w	$r0,$r0,512(0x200)
 240:	3e0b0b00 	0x3e0b0b00
 244:	000e030b 	bytepick.d	$r11,$r24,$r0,0x4
 248:	012e0300 	0x012e0300
 24c:	0e03193f 	0x0e03193f
 250:	0b3b0b3a 	0x0b3b0b3a
 254:	19270b39 	pcaddi	$r25,-444327(0x93859)
 258:	01111349 	fscaleb.d	$f9,$f26,$f4
 25c:	18400612 	pcaddi	$r18,131120(0x20030)
 260:	01194297 	0x01194297
 264:	04000013 	csrrd	$r19,0x0
 268:	08030005 	0x08030005
 26c:	0b3b0b3a 	0x0b3b0b3a
 270:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 274:	42b71702 	beqz	$r24,702228(0xab714) # ab988 <__stack_size+0x9b988>
 278:	05000017 	0x05000017
 27c:	193f012e 	pcaddi	$r14,-395255(0x9f809)
 280:	0b3a0e03 	0x0b3a0e03
 284:	0b390b3b 	0x0b390b3b
 288:	193c1349 	pcaddi	$r9,-401254(0x9e09a)
 28c:	00001301 	clo.w	$r1,$r24
 290:	00001806 	cto.w	$r6,$r0
 294:	82890700 	0x82890700
 298:	01110101 	fscaleb.d	$f1,$f8,$f0
 29c:	13011331 	addu16i.d	$r17,$r25,-16316(0xc044)
 2a0:	8a080000 	0x8a080000
 2a4:	02000182 	slti	$r2,$r12,0
 2a8:	18429118 	pcaddi	$r24,136328(0x21488)
 2ac:	89090000 	0x89090000
 2b0:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
 2b4:	00133101 	maskeqz	$r1,$r8,$r12
 2b8:	00240a00 	crc.w.b.w	$r0,$r16,$r2
 2bc:	0b3e0b0b 	0x0b3e0b0b
 2c0:	00000803 	0x00000803
 2c4:	0b000f0b 	0x0b000f0b
 2c8:	0013490b 	maskeqz	$r11,$r8,$r18
 2cc:	00340c00 	0x00340c00
 2d0:	0b3a0803 	0x0b3a0803
 2d4:	0b390b3b 	0x0b390b3b
 2d8:	17021349 	lu32i.d	$r9,-520038(0x8109a)
 2dc:	001742b7 	sll.w	$r23,$r21,$r16
 2e0:	010b0d00 	fmin.d	$f0,$f8,$f3
 2e4:	00001755 	clz.w	$r21,$r26
 2e8:	11010b0e 	addu16i.d	$r14,$r24,16450(0x4042)
 2ec:	01061201 	0x01061201
 2f0:	0f000013 	0x0f000013
 2f4:	193f002e 	pcaddi	$r14,-395263(0x9f801)
 2f8:	0e6e193c 	0x0e6e193c
 2fc:	0b3a0e03 	0x0b3a0e03
 300:	0b390b3b 	0x0b390b3b
 304:	01000000 	0x01000000
 308:	0e250111 	0x0e250111
 30c:	0e030b13 	0x0e030b13
 310:	01110e1b 	fscaleb.d	$f27,$f16,$f3
 314:	17100612 	lu32i.d	$r18,-491472(0x88030)
 318:	24020000 	ldptr.w	$r0,$r0,512(0x200)
 31c:	3e0b0b00 	0x3e0b0b00
 320:	000e030b 	bytepick.d	$r11,$r24,$r0,0x4
 324:	012e0300 	0x012e0300
 328:	0e03193f 	0x0e03193f
 32c:	0b3b0b3a 	0x0b3b0b3a
 330:	19270b39 	pcaddi	$r25,-444327(0x93859)
 334:	01111349 	fscaleb.d	$f9,$f26,$f4
 338:	18400612 	pcaddi	$r18,131120(0x20030)
 33c:	01194297 	0x01194297
 340:	04000013 	csrrd	$r19,0x0
 344:	08030005 	0x08030005
 348:	0b3b0b3a 	0x0b3b0b3a
 34c:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 350:	42b71702 	beqz	$r24,702228(0xab714) # aba64 <__stack_size+0x9ba64>
 354:	05000017 	0x05000017
 358:	0e030005 	0x0e030005
 35c:	0b3b0b3a 	0x0b3b0b3a
 360:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 364:	42b71702 	beqz	$r24,702228(0xab714) # aba78 <__stack_size+0x9ba78>
 368:	06000017 	cacop	0x17,$r0,0
 36c:	08030034 	0x08030034
 370:	0b3b0b3a 	0x0b3b0b3a
 374:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 378:	42b71702 	beqz	$r24,702228(0xab714) # aba8c <__stack_size+0x9ba8c>
 37c:	07000017 	0x07000017
 380:	08030034 	0x08030034
 384:	0b3b0b3a 	0x0b3b0b3a
 388:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 38c:	00001802 	cto.w	$r2,$r0
 390:	03003408 	lu52i.d	$r8,$r0,13(0xd)
 394:	3b0b3a0e 	0x3b0b3a0e
 398:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d0ed0 <__stack_size+0x2c0ed0>
 39c:	b7170213 	0xb7170213
 3a0:	00001742 	clz.w	$r2,$r26
 3a4:	11010b09 	addu16i.d	$r9,$r24,16450(0x4042)
 3a8:	01061201 	0x01061201
 3ac:	0a000013 	0x0a000013
 3b0:	193f012e 	pcaddi	$r14,-395255(0x9f809)
 3b4:	0b3a0e03 	0x0b3a0e03
 3b8:	0b390b3b 	0x0b390b3b
 3bc:	193c1349 	pcaddi	$r9,-401254(0x9e09a)
 3c0:	00001301 	clo.w	$r1,$r24
 3c4:	0000180b 	cto.w	$r11,$r0
 3c8:	82890c00 	0x82890c00
 3cc:	01110101 	fscaleb.d	$f1,$f8,$f0
 3d0:	00001331 	clo.w	$r17,$r25
 3d4:	01828a0d 	0x01828a0d
 3d8:	91180200 	0x91180200
 3dc:	00001842 	cto.w	$r2,$r2
 3e0:	11010b0e 	addu16i.d	$r14,$r24,16450(0x4042)
 3e4:	00061201 	alsl.wu	$r1,$r16,$r4,0x1
 3e8:	82890f00 	0x82890f00
 3ec:	01110001 	fscaleb.d	$f1,$f0,$f0
 3f0:	00001331 	clo.w	$r17,$r25
 3f4:	0b002410 	0x0b002410
 3f8:	030b3e0b 	lu52i.d	$r11,$r16,719(0x2cf)
 3fc:	11000008 	addu16i.d	$r8,$r0,16384(0x4000)
 400:	13490101 	addu16i.d	$r1,$r8,-11712(0xd240)
 404:	00001301 	clo.w	$r1,$r24
 408:	49002112 	bcnez	$fcc0,-3604448(0x490020) # ffc90428 <_stack+0xe3b9042c>
 40c:	000b2f13 	0x000b2f13
 410:	002e1300 	0x002e1300
 414:	193c193f 	pcaddi	$r31,-401207(0x9e0c9)
 418:	0e030e6e 	0x0e030e6e
 41c:	0b3b0b3a 	0x0b3b0b3a
 420:	00000b39 	0x00000b39
 424:	01110100 	fscaleb.d	$f0,$f8,$f0
 428:	0b130e25 	0x0b130e25
 42c:	0e1b0e03 	0x0e1b0e03
 430:	01111755 	fscaleb.d	$f21,$f26,$f5
 434:	00001710 	clz.w	$r16,$r24
 438:	0b000f02 	0x0b000f02
 43c:	0300000b 	lu52i.d	$r11,$r0,0
 440:	0b0b0024 	0x0b0b0024
 444:	0e030b3e 	0x0e030b3e
 448:	16040000 	lu32i.d	$r0,8192(0x2000)
 44c:	3a0e0300 	0x3a0e0300
 450:	390b3b0b 	0x390b3b0b
 454:	0013490b 	maskeqz	$r11,$r8,$r18
 458:	012e0500 	0x012e0500
 45c:	0e03193f 	0x0e03193f
 460:	053b0b3a 	0x053b0b3a
 464:	19270b39 	pcaddi	$r25,-444327(0x93859)
 468:	06120111 	cacop	0x11,$r8,1152(0x480)
 46c:	42971840 	beqz	$r2,169752(0x29718) # 29b84 <__stack_size+0x19b84>
 470:	00130119 	maskeqz	$r25,$r8,$r0
 474:	00050600 	alsl.w	$r0,$r16,$r1,0x3
 478:	0b3a0803 	0x0b3a0803
 47c:	0b39053b 	0x0b39053b
 480:	17021349 	lu32i.d	$r9,-520038(0x8109a)
 484:	001742b7 	sll.w	$r23,$r21,$r16
 488:	011d0700 	0x011d0700
 48c:	01521331 	0x01521331
 490:	110b42b8 	addu16i.d	$r24,$r21,17104(0x42d0)
 494:	58061201 	beq	$r16,$r1,1552(0x610) # aa4 <__stack_size-0xf55c>
 498:	5705590b 	bl	70190424(0x42f0558) # 42f09f0 <__stack_size+0x42e09f0>
 49c:	0800000b 	0x0800000b
 4a0:	13310005 	addu16i.d	$r5,$r0,-13248(0xcc40)
 4a4:	42b71702 	beqz	$r24,702228(0xab714) # abbb8 <__stack_size+0x9bbb8>
 4a8:	09000017 	0x09000017
 4ac:	13310005 	addu16i.d	$r5,$r0,-13248(0xcc40)
 4b0:	00000b1c 	0x00000b1c
 4b4:	11010b0a 	addu16i.d	$r10,$r24,16450(0x4042)
 4b8:	00061201 	alsl.wu	$r1,$r16,$r4,0x1
 4bc:	00340b00 	0x00340b00
 4c0:	17021331 	lu32i.d	$r17,-520039(0x81099)
 4c4:	001742b7 	sll.w	$r23,$r21,$r16
 4c8:	012e0c00 	0x012e0c00
 4cc:	0e03193f 	0x0e03193f
 4d0:	053b0b3a 	0x053b0b3a
 4d4:	19270b39 	pcaddi	$r25,-444327(0x93859)
 4d8:	01111349 	fscaleb.d	$f9,$f26,$f4
 4dc:	18400612 	pcaddi	$r18,131120(0x20030)
 4e0:	01194297 	0x01194297
 4e4:	0d000013 	fsel	$f19,$f0,$f0,$fcc0
 4e8:	08030034 	0x08030034
 4ec:	053b0b3a 	0x053b0b3a
 4f0:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 4f4:	42b71702 	beqz	$r24,702228(0xab714) # abc08 <__stack_size+0x9bc08>
 4f8:	0e000017 	0x0e000017
 4fc:	0b0b0024 	0x0b0b0024
 500:	08030b3e 	0x08030b3e
 504:	0f0f0000 	0x0f0f0000
 508:	490b0b00 	0x490b0b00
 50c:	10000013 	addu16i.d	$r19,$r0,0
 510:	00000026 	0x00000026
 514:	49002611 	0x49002611
 518:	12000013 	addu16i.d	$r19,$r0,-32768(0x8000)
 51c:	08030005 	0x08030005
 520:	053b0b3a 	0x053b0b3a
 524:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 528:	00001802 	cto.w	$r2,$r0
 52c:	3f012e13 	0x3f012e13
 530:	3a0e0319 	0x3a0e0319
 534:	390b3b0b 	0x390b3b0b
 538:	4919270b 	0x4919270b
 53c:	010b2013 	fmin.d	$f19,$f0,$f8
 540:	14000013 	lu12i.w	$r19,0
 544:	08030005 	0x08030005
 548:	0b3b0b3a 	0x0b3b0b3a
 54c:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 550:	34150000 	0x34150000
 554:	3a080300 	0x3a080300
 558:	390b3b0b 	0x390b3b0b
 55c:	0013490b 	maskeqz	$r11,$r8,$r18
 560:	012e1600 	0x012e1600
 564:	0e03193f 	0x0e03193f
 568:	0b3b0b3a 	0x0b3b0b3a
 56c:	19270b39 	pcaddi	$r25,-444327(0x93859)
 570:	01111349 	fscaleb.d	$f9,$f26,$f4
 574:	18400612 	pcaddi	$r18,131120(0x20030)
 578:	01194297 	0x01194297
 57c:	17000013 	lu32i.d	$r19,-524288(0x80000)
 580:	08030005 	0x08030005
 584:	0b3b0b3a 	0x0b3b0b3a
 588:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 58c:	42b71702 	beqz	$r24,702228(0xab714) # abca0 <__stack_size+0x9bca0>
 590:	18000017 	pcaddi	$r23,0
 594:	08030005 	0x08030005
 598:	0b3b0b3a 	0x0b3b0b3a
 59c:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 5a0:	00001802 	cto.w	$r2,$r0
 5a4:	03003419 	lu52i.d	$r25,$r0,13(0xd)
 5a8:	3b0b3a08 	0x3b0b3a08
 5ac:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d10e4 <__stack_size+0x2c10e4>
 5b0:	b7170213 	0xb7170213
 5b4:	00001742 	clz.w	$r2,$r26
 5b8:	31012e1a 	0x31012e1a
 5bc:	12011113 	addu16i.d	$r19,$r8,-32700(0x8044)
 5c0:	97184006 	0x97184006
 5c4:	00001942 	cto.w	$r2,$r10
 5c8:	3100051b 	0x3100051b
 5cc:	00180213 	sra.w	$r19,$r16,$r0
 5d0:	11010000 	addu16i.d	$r0,$r0,16448(0x4040)
 5d4:	130e2501 	addu16i.d	$r1,$r8,-15479(0xc389)
 5d8:	1b0e030b 	pcalau12i	$r11,-495592(0x87018)
 5dc:	1201110e 	addu16i.d	$r14,$r8,-32700(0x8044)
 5e0:	00171006 	sll.w	$r6,$r0,$r4
 5e4:	00240200 	crc.w.b.w	$r0,$r16,$r0
 5e8:	0b3e0b0b 	0x0b3e0b0b
 5ec:	00000e03 	0x00000e03
 5f0:	03001603 	lu52i.d	$r3,$r16,5(0x5)
 5f4:	3b0b3a0e 	0x3b0b3a0e
 5f8:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1130 <__stack_size+0x2c1130>
 5fc:	04000013 	csrrd	$r19,0x0
 600:	0b0b0024 	0x0b0b0024
 604:	08030b3e 	0x08030b3e
 608:	13050000 	addu16i.d	$r0,$r0,-16064(0xc140)
 60c:	0b0e0301 	0x0b0e0301
 610:	3b0b3a0b 	0x3b0b3a0b
 614:	010b390b 	fmin.d	$f11,$f8,$f14
 618:	06000013 	cacop	0x13,$r0,0
 61c:	0e03000d 	0x0e03000d
 620:	0b3b0b3a 	0x0b3b0b3a
 624:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 628:	00000b38 	0x00000b38
 62c:	3f012e07 	0x3f012e07
 630:	3a0e0319 	0x3a0e0319
 634:	390b3b0b 	0x390b3b0b
 638:	4919270b 	0x4919270b
 63c:	12011113 	addu16i.d	$r19,$r8,-32700(0x8044)
 640:	97184006 	0x97184006
 644:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
 648:	34080000 	0x34080000
 64c:	3a080300 	0x3a080300
 650:	390b3b0b 	0x390b3b0b
 654:	0213490b 	slti	$r11,$r8,1234(0x4d2)
 658:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
 65c:	1d090000 	pcaddu12i	$r0,-505856(0x84800)
 660:	52133101 	b	67506992(0x4061330) # 4061990 <__stack_size+0x4051990>
 664:	0b42b801 	0x0b42b801
 668:	0b581755 	0x0b581755
 66c:	0b570b59 	0x0b570b59
 670:	0b0a0000 	0x0b0a0000
 674:	00175501 	sll.w	$r1,$r8,$r21
 678:	00340b00 	0x00340b00
 67c:	17021331 	lu32i.d	$r17,-520039(0x81099)
 680:	001742b7 	sll.w	$r23,$r21,$r16
 684:	012e0c00 	0x012e0c00
 688:	0e03193f 	0x0e03193f
 68c:	0b3b0b3a 	0x0b3b0b3a
 690:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 694:	00001301 	clo.w	$r1,$r24
 698:	0300340d 	lu52i.d	$r13,$r0,13(0xd)
 69c:	3b0b3a08 	0x3b0b3a08
 6a0:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d11d8 <__stack_size+0x2c11d8>
 6a4:	0e000013 	0x0e000013
 6a8:	08030005 	0x08030005
 6ac:	0b3b0b3a 	0x0b3b0b3a
 6b0:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 6b4:	42b71702 	beqz	$r24,702228(0xab714) # abdc8 <__stack_size+0x9bdc8>
 6b8:	0f000017 	0x0f000017
 6bc:	08030005 	0x08030005
 6c0:	0b3b0b3a 	0x0b3b0b3a
 6c4:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 6c8:	00001802 	cto.w	$r2,$r0
 6cc:	0b000f10 	0x0b000f10
 6d0:	0013490b 	maskeqz	$r11,$r8,$r18
 6d4:	012e1100 	0x012e1100
 6d8:	0e03193f 	0x0e03193f
 6dc:	0b3b0b3a 	0x0b3b0b3a
 6e0:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 6e4:	06120111 	cacop	0x11,$r8,1152(0x480)
 6e8:	42971840 	beqz	$r2,169752(0x29718) # 29e00 <__stack_size+0x19e00>
 6ec:	00130119 	maskeqz	$r25,$r8,$r0
 6f0:	012e1200 	0x012e1200
 6f4:	0e03193f 	0x0e03193f
 6f8:	0b3b0b3a 	0x0b3b0b3a
 6fc:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 700:	00000b20 	0x00000b20
 704:	03003413 	lu52i.d	$r19,$r0,13(0xd)
 708:	3b0b3a0e 	0x3b0b3a0e
 70c:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1244 <__stack_size+0x2c1244>
 710:	00000013 	0x00000013

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
	...
   c:	00000064 	0x00000064
  10:	64540001 	bge	$r0,$r1,21504(0x5400) # 5410 <__stack_size-0xabf0>
  14:	cc000000 	0xcc000000
  18:	01000000 	0x01000000
  1c:	00cc6900 	bstrpick.d	$r0,$r8,0xc,0x1a
  20:	00f80000 	bstrpick.d	$r0,$r0,0x38,0x0
  24:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  28:	9f5401f3 	0x9f5401f3
  2c:	000000f8 	0x000000f8
  30:	0000023c 	0x0000023c
  34:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
  38:	00000000 	0x00000000
  3c:	02000000 	slti	$r0,$r0,0
  40:	00000000 	0x00000000
  44:	00000101 	0x00000101
  48:	00000000 	0x00000000
  4c:	02020000 	slti	$r0,$r0,128(0x80)
  50:	02020000 	slti	$r0,$r0,128(0x80)
  54:	02020000 	slti	$r0,$r0,128(0x80)
  58:	02020000 	slti	$r0,$r0,128(0x80)
  5c:	02020000 	slti	$r0,$r0,128(0x80)
  60:	02020000 	slti	$r0,$r0,128(0x80)
  64:	02020000 	slti	$r0,$r0,128(0x80)
  68:	02020000 	slti	$r0,$r0,128(0x80)
  6c:	01010000 	fadd.d	$f0,$f0,$f0
  70:	00004800 	bitrev.4b	$r0,$r0
  74:	00006400 	rdtimeh.w	$r0,$r0
  78:	30000200 	0x30000200
  7c:	0000649f 	rdtimeh.w	$r31,$r4
  80:	0000cc00 	0x0000cc00
  84:	68000100 	bltu	$r8,$r0,0 # 84 <__stack_size-0xff7c>
  88:	000000f8 	0x000000f8
  8c:	000000f8 	0x000000f8
  90:	f8680001 	0xf8680001
  94:	04000000 	csrrd	$r0,0x0
  98:	03000001 	lu52i.d	$r1,$r0,0
  9c:	9f018800 	0x9f018800
  a0:	00000104 	0x00000104
  a4:	00000120 	0x00000120
  a8:	20680001 	ll.w	$r1,$r0,26624(0x6800)
  ac:	3c000001 	0x3c000001
  b0:	03000001 	lu52i.d	$r1,$r0,0
  b4:	9f7f8800 	0x9f7f8800
  b8:	0000013c 	0x0000013c
  bc:	00000158 	0x00000158
  c0:	58680001 	beq	$r0,$r1,26624(0x6800) # 68c0 <__stack_size-0x9740>
  c4:	5c000001 	bne	$r0,$r1,0 # c4 <__stack_size-0xff3c>
  c8:	03000001 	lu52i.d	$r1,$r0,0
  cc:	9f7f8800 	0x9f7f8800
  d0:	0000015c 	0x0000015c
  d4:	00000168 	0x00000168
  d8:	68680001 	bltu	$r0,$r1,26624(0x6800) # 68d8 <__stack_size-0x9728>
  dc:	70000001 	vseq.b	$vr1,$vr0,$vr0
  e0:	03000001 	lu52i.d	$r1,$r0,0
  e4:	9f7f8800 	0x9f7f8800
  e8:	00000170 	0x00000170
  ec:	00000188 	0x00000188
  f0:	88680001 	0x88680001
  f4:	8c000001 	0x8c000001
  f8:	03000001 	lu52i.d	$r1,$r0,0
  fc:	9f7f8800 	0x9f7f8800
 100:	0000018c 	0x0000018c
 104:	000001a4 	0x000001a4
 108:	a4680001 	0xa4680001
 10c:	a8000001 	0xa8000001
 110:	03000001 	lu52i.d	$r1,$r0,0
 114:	9f7e8800 	0x9f7e8800
 118:	000001a8 	0x000001a8
 11c:	000001c4 	0x000001c4
 120:	c4680001 	0xc4680001
 124:	c8000001 	0xc8000001
 128:	03000001 	lu52i.d	$r1,$r0,0
 12c:	9f7f8800 	0x9f7f8800
 130:	000001c8 	0x000001c8
 134:	000001e4 	0x000001e4
 138:	e4680001 	0xe4680001
 13c:	e8000001 	0xe8000001
 140:	03000001 	lu52i.d	$r1,$r0,0
 144:	9f7f8800 	0x9f7f8800
 148:	000001e8 	0x000001e8
 14c:	000001f8 	0x000001f8
 150:	f8680001 	0xf8680001
 154:	00000001 	0x00000001
 158:	03000002 	lu52i.d	$r2,$r0,0
 15c:	9f7f8800 	0x9f7f8800
 160:	00000200 	0x00000200
 164:	00000218 	0x00000218
 168:	18680001 	pcaddi	$r1,212992(0x34000)
 16c:	1c000002 	pcaddu12i	$r2,0
 170:	03000002 	lu52i.d	$r2,$r0,0
 174:	9f7f8800 	0x9f7f8800
 178:	0000021c 	0x0000021c
 17c:	00000228 	0x00000228
 180:	28680001 	ld.h	$r1,$r0,-1536(0xa00)
 184:	2c000002 	vld	$vr2,$r0,0
 188:	03000002 	lu52i.d	$r2,$r0,0
 18c:	9f7f8800 	0x9f7f8800
 190:	0000022c 	0x0000022c
 194:	0000023c 	0x0000023c
 198:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
	...
 1a4:	00000100 	0x00000100
 1a8:	00006400 	rdtimeh.w	$r0,$r0
 1ac:	00007800 	0x00007800
 1b0:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff01b0 <_stack+0xe3ef01b4>
 1b4:	0000007c 	0x0000007c
 1b8:	000000cc 	0x000000cc
 1bc:	f8670001 	0xf8670001
 1c0:	3c000000 	0x3c000000
 1c4:	01000002 	0x01000002
 1c8:	00006700 	rdtimeh.w	$r0,$r24
 1cc:	00000000 	0x00000000
 1d0:	00010000 	asrtle.d	$r0,$r0
 1d4:	01000000 	0x01000000
 1d8:	01000001 	0x01000001
 1dc:	01000001 	0x01000001
 1e0:	01000001 	0x01000001
 1e4:	01000001 	0x01000001
 1e8:	01000001 	0x01000001
 1ec:	01000001 	0x01000001
 1f0:	01000001 	0x01000001
 1f4:	00480001 	0x00480001
 1f8:	00cc0000 	bstrpick.d	$r0,$r0,0xc,0x0
 1fc:	00010000 	asrtle.d	$r0,$r0
 200:	0000f86a 	0x0000f86a
 204:	00015400 	asrtle.d	$r0,$r21
 208:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe0208 <_stack+0xe3ee020c>
 20c:	00000154 	0x00000154
 210:	0000015c 	0x0000015c
 214:	7c8a0003 	0x7c8a0003
 218:	00015c9f 	0x00015c9f
 21c:	00016c00 	asrtle.d	$r0,$r27
 220:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe0220 <_stack+0xe3ee0224>
 224:	0000016c 	0x0000016c
 228:	00000170 	0x00000170
 22c:	7c8a0003 	0x7c8a0003
 230:	0001709f 	0x0001709f
 234:	00018400 	asrtgt.d	$r0,$r1
 238:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe0238 <_stack+0xe3ee023c>
 23c:	00000184 	0x00000184
 240:	0000018c 	0x0000018c
 244:	7c8a0003 	0x7c8a0003
 248:	00018c9f 	0x00018c9f
 24c:	0001a000 	asrtgt.d	$r0,$r8
 250:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe0250 <_stack+0xe3ee0254>
 254:	000001a0 	0x000001a0
 258:	000001a8 	0x000001a8
 25c:	7c8a0003 	0x7c8a0003
 260:	0001a89f 	0x0001a89f
 264:	0001c000 	asrtgt.d	$r0,$r16
 268:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe0268 <_stack+0xe3ee026c>
 26c:	000001c0 	0x000001c0
 270:	000001c8 	0x000001c8
 274:	7c8a0003 	0x7c8a0003
 278:	0001c89f 	0x0001c89f
 27c:	0001e000 	asrtgt.d	$r0,$r24
 280:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe0280 <_stack+0xe3ee0284>
 284:	000001e0 	0x000001e0
 288:	000001e8 	0x000001e8
 28c:	7c8a0003 	0x7c8a0003
 290:	0001e89f 	0x0001e89f
 294:	0001fc00 	asrtgt.d	$r0,$r31
 298:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe0298 <_stack+0xe3ee029c>
 29c:	000001fc 	0x000001fc
 2a0:	00000200 	0x00000200
 2a4:	7c8a0003 	0x7c8a0003
 2a8:	0002009f 	0x0002009f
 2ac:	00021400 	0x00021400
 2b0:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe02b0 <_stack+0xe3ee02b4>
 2b4:	00000214 	0x00000214
 2b8:	0000021c 	0x0000021c
 2bc:	7c8a0003 	0x7c8a0003
 2c0:	00021c9f 	0x00021c9f
 2c4:	00023c00 	0x00023c00
 2c8:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe02c8 <_stack+0xe3ee02cc>
	...
 2f0:	000000ac 	0x000000ac
 2f4:	000000cc 	0x000000cc
 2f8:	f8550001 	0xf8550001
 2fc:	04000000 	csrrd	$r0,0x0
 300:	01000001 	0x01000001
 304:	01045500 	0x01045500
 308:	01180000 	0x01180000
 30c:	00020000 	0x00020000
 310:	01189f30 	0x01189f30
 314:	011c0000 	0x011c0000
 318:	00010000 	asrtle.d	$r0,$r0
 31c:	00013c55 	0x00013c55
 320:	00015b00 	asrtle.d	$r24,$r22
 324:	55000100 	bl	67174400(0x4010000) # 4010324 <__stack_size+0x4000324>
 328:	00000160 	0x00000160
 32c:	0000016f 	0x0000016f
 330:	74550001 	xvhaddw.d.w	$xr1,$xr0,$xr0
 334:	8b000001 	0x8b000001
 338:	01000001 	0x01000001
 33c:	01905500 	0x01905500
 340:	01a70000 	0x01a70000
 344:	00010000 	asrtle.d	$r0,$r0
 348:	0001ac55 	0x0001ac55
 34c:	0001c700 	asrtgt.d	$r24,$r17
 350:	55000100 	bl	67174400(0x4010000) # 4010350 <__stack_size+0x4000350>
 354:	000001cc 	0x000001cc
 358:	000001e7 	0x000001e7
 35c:	ec550001 	0xec550001
 360:	ff000001 	0xff000001
 364:	01000001 	0x01000001
 368:	02045500 	slti	$r0,$r8,277(0x115)
 36c:	021b0000 	slti	$r0,$r0,1728(0x6c0)
 370:	00010000 	asrtle.d	$r0,$r0
 374:	00022055 	0x00022055
 378:	00022b00 	0x00022b00
 37c:	55000100 	bl	67174400(0x4010000) # 401037c <__stack_size+0x400037c>
 380:	00000230 	0x00000230
 384:	00000237 	0x00000237
 388:	00550001 	0x00550001
	...
 398:	1c000000 	pcaddu12i	$r0,0
 39c:	01000000 	0x01000000
 3a0:	001c5400 	mul.w	$r0,$r0,$r21
 3a4:	00280000 	0x00280000
 3a8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
 3ac:	9f5401f3 	0x9f5401f3
	...
 3b8:	00000002 	0x00000002
 3bc:	00180000 	sra.w	$r0,$r0,$r0
 3c0:	00010000 	asrtle.d	$r0,$r0
 3c4:	00000054 	0x00000054
	...
 3d0:	00008000 	0x00008000
 3d4:	00008b00 	0x00008b00
 3d8:	54000100 	bl	67108864(0x4000000) # 40003d8 <__stack_size+0x3ff03d8>
 3dc:	0000008b 	0x0000008b
 3e0:	000000ac 	0x000000ac
 3e4:	01f30004 	0x01f30004
 3e8:	00009f54 	0x00009f54
	...
 3f4:	00010100 	asrtle.d	$r8,$r0
 3f8:	00010100 	asrtle.d	$r8,$r0
 3fc:	00000000 	0x00000000
 400:	00000028 	0x00000028
 404:	28540001 	ld.h	$r1,$r0,1280(0x500)
 408:	30000000 	0x30000000
 40c:	03000000 	lu52i.d	$r0,$r0,0
 410:	9f7f8800 	0x9f7f8800
 414:	00000030 	0x00000030
 418:	0000003c 	0x0000003c
 41c:	3c680001 	0x3c680001
 420:	50000000 	b	0 # 420 <__stack_size-0xfbe0>
 424:	03000000 	lu52i.d	$r0,$r0,0
 428:	9f7f8800 	0x9f7f8800
 42c:	00000050 	0x00000050
 430:	00000058 	0x00000058
 434:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
	...
 440:	00001800 	cto.w	$r0,$r0
 444:	00006000 	rdtimel.w	$r0,$r0
 448:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff0448 <_stack+0xe3ef044c>
	...
 464:	00000024 	0x00000024
 468:	24540001 	ldptr.w	$r1,$r0,21504(0x5400)
 46c:	c0000000 	0xc0000000
 470:	04000000 	csrrd	$r0,0x0
 474:	5401f300 	bl	-67108368(0xc0001f0) # fc000664 <_stack+0xdff00668>
 478:	0000c09f 	0x0000c09f
 47c:	0000c400 	0x0000c400
 480:	54000100 	bl	67108864(0x4000000) # 4000480 <__stack_size+0x3ff0480>
 484:	000000c4 	0x000000c4
 488:	000000d4 	0x000000d4
 48c:	d4670001 	0xd4670001
 490:	e0000000 	0xe0000000
 494:	04000000 	csrrd	$r0,0x0
 498:	1f008700 	pcaddu18i	$r0,-523208(0x80438)
 49c:	0000e09f 	0x0000e09f
 4a0:	0000ec00 	0x0000ec00
 4a4:	54000100 	bl	67108864(0x4000000) # 40004a4 <__stack_size+0x3ff04a4>
	...
 4bc:	00240000 	crc.w.b.w	$r0,$r0,$r0
 4c0:	00010000 	asrtle.d	$r0,$r0
 4c4:	00002455 	clz.d	$r21,$r2
 4c8:	0000c000 	0x0000c000
 4cc:	f3000400 	0xf3000400
 4d0:	c09f5501 	0xc09f5501
 4d4:	cf000000 	0xcf000000
 4d8:	01000000 	0x01000000
 4dc:	00cf5500 	bstrpick.d	$r0,$r8,0xf,0x15
 4e0:	00e00000 	bstrpick.d	$r0,$r0,0x20,0x0
 4e4:	00030000 	0x00030000
 4e8:	e07fa891 	0xe07fa891
 4ec:	ec000000 	0xec000000
 4f0:	01000000 	0x01000000
 4f4:	00005500 	bitrev.d	$r0,$r8
	...
 50c:	00000024 	0x00000024
 510:	24560001 	ldptr.w	$r1,$r0,22016(0x5600)
 514:	c0000000 	0xc0000000
 518:	04000000 	csrrd	$r0,0x0
 51c:	5601f300 	bl	-66977296(0xc0201f0) # fc02070c <_stack+0xdff20710>
 520:	0000c09f 	0x0000c09f
 524:	0000cf00 	0x0000cf00
 528:	56000100 	bl	67239936(0x4020000) # 4020528 <__stack_size+0x4010528>
 52c:	000000cf 	0x000000cf
 530:	000000e0 	0x000000e0
 534:	ac910003 	0xac910003
 538:	0000e07f 	0x0000e07f
 53c:	0000ec00 	0x0000ec00
 540:	56000100 	bl	67239936(0x4020000) # 4020540 <__stack_size+0x4010540>
	...
 558:	00240000 	crc.w.b.w	$r0,$r0,$r0
 55c:	00010000 	asrtle.d	$r0,$r0
 560:	00002457 	clz.d	$r23,$r2
 564:	0000c000 	0x0000c000
 568:	f3000400 	0xf3000400
 56c:	c09f5701 	0xc09f5701
 570:	cf000000 	0xcf000000
 574:	01000000 	0x01000000
 578:	00cf5700 	bstrpick.d	$r0,$r24,0xf,0x15
 57c:	00e00000 	bstrpick.d	$r0,$r0,0x20,0x0
 580:	00040000 	alsl.w	$r0,$r0,$r0,0x1
 584:	9f5701f3 	0x9f5701f3
 588:	000000e0 	0x000000e0
 58c:	000000ec 	0x000000ec
 590:	00570001 	0x00570001
 594:	00000000 	0x00000000
 598:	01000000 	0x01000000
	...
 5a4:	20000100 	ll.w	$r0,$r8,0
 5a8:	34000000 	0x34000000
 5ac:	02000000 	slti	$r0,$r0,0
 5b0:	349f3000 	0x349f3000
 5b4:	38000000 	ldx.b	$r0,$r0,$r0
 5b8:	01000000 	0x01000000
 5bc:	00386800 	0x00386800
 5c0:	00580000 	0x00580000
 5c4:	00080000 	bytepick.w	$r0,$r0,$r0,0x0
 5c8:	0091007c 	bstrins.d	$r28,$r3,0x11,0x0
 5cc:	9f50231c 	0x9f50231c
 5d0:	00000058 	0x00000058
 5d4:	00000064 	0x00000064
 5d8:	b8680001 	0xb8680001
 5dc:	c0000000 	0xc0000000
 5e0:	01000000 	0x01000000
 5e4:	00d46800 	bstrpick.d	$r0,$r0,0x14,0x1a
 5e8:	00ec0000 	bstrpick.d	$r0,$r0,0x2c,0x0
 5ec:	00020000 	0x00020000
 5f0:	00009f30 	0x00009f30
	...
 600:	00020000 	0x00020000
 604:	00000070 	0x00000070
 608:	00000094 	0x00000094
 60c:	94670001 	0x94670001
 610:	98000000 	0x98000000
 614:	03000000 	lu52i.d	$r0,$r0,0
 618:	9f018700 	0x9f018700
 61c:	00000098 	0x00000098
 620:	0000009c 	0x0000009c
 624:	bc670001 	0xbc670001
 628:	c0000000 	0xc0000000
 62c:	01000000 	0x01000000
 630:	00e05500 	bstrpick.d	$r0,$r8,0x20,0x15
 634:	00ec0000 	bstrpick.d	$r0,$r0,0x2c,0x0
 638:	000d0000 	bytepick.d	$r0,$r0,$r0,0x2
 63c:	30120075 	vldrepl.d	$vr21,$r3,1024(0x400)
 640:	282b1416 	ld.b	$r22,$r0,-1339(0xac5)
 644:	13160001 	addu16i.d	$r1,$r0,-14976(0xc580)
 648:	0000009f 	0x0000009f
 64c:	00000000 	0x00000000
 650:	84000000 	0x84000000
 654:	90000000 	0x90000000
 658:	01000000 	0x01000000
 65c:	00005c00 	ext.w.b	$r0,$r0
 660:	00000000 	0x00000000
 664:	00010000 	asrtle.d	$r0,$r0
	...
 674:	00200000 	div.w	$r0,$r0,$r0
 678:	00240000 	crc.w.b.w	$r0,$r0,$r0
 67c:	00010000 	asrtle.d	$r0,$r0
 680:	00002454 	clz.d	$r20,$r2
 684:	00003400 	revb.4h	$r0,$r0
 688:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff0688 <_stack+0xe3ef068c>
 68c:	00000034 	0x00000034
 690:	00000038 	0x00000038
 694:	385d0001 	0x385d0001
 698:	58000000 	beq	$r0,$r0,0 # 698 <__stack_size-0xf968>
 69c:	01000000 	0x01000000
 6a0:	00586700 	0x00586700
 6a4:	00640000 	bstrins.w	$r0,$r0,0x4,0x0
 6a8:	00010000 	asrtle.d	$r0,$r0
 6ac:	0000b85d 	0x0000b85d
 6b0:	0000c000 	0x0000c000
 6b4:	5d000100 	bne	$r8,$r0,65536(0x10000) # 106b4 <__stack_size+0x6b4>
 6b8:	000000d4 	0x000000d4
 6bc:	000000e0 	0x000000e0
 6c0:	e0670001 	0xe0670001
 6c4:	ec000000 	0xec000000
 6c8:	01000000 	0x01000000
 6cc:	00005400 	bitrev.d	$r0,$r0
	...
 6d8:	55300000 	bl	77824(0x13000) # 136d8 <__stack_size+0x36d8>
 6dc:	55381c00 	bl	79900(0x1381c) # 13ef8 <__stack_size+0x3ef8>
 6e0:	00011c00 	asrtle.d	$r0,$r7
 6e4:	00553854 	0x00553854
 6e8:	0055481c 	0x0055481c
 6ec:	f300041c 	0xf300041c
 6f0:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
	...
 6fc:	30000000 	0x30000000
 700:	381c0055 	stx.d	$r21,$r2,$r0
 704:	011c0055 	0x011c0055
 708:	55385500 	bl	67188820(0x4013854) # 4013f5c <__stack_size+0x4003f5c>
 70c:	55481c00 	bl	83996(0x1481c) # 14f28 <__stack_size+0x4f28>
 710:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 714:	9f5501f3 	0x9f5501f3
	...
 720:	00050502 	alsl.w	$r2,$r8,$r1,0x3
 724:	55300000 	bl	77824(0x13000) # 13724 <__stack_size+0x3724>
 728:	55301c00 	bl	77852(0x1301c) # 13744 <__stack_size+0x3744>
 72c:	00011c00 	asrtle.d	$r0,$r7
 730:	00553055 	0x00553055
 734:	0055381c 	0x0055381c
 738:	7500031c 	0x7500031c
 73c:	55389f7f 	bl	-33736548(0xdfd389c) # fdfd3fd8 <_stack+0xe1ed3fdc>
 740:	55441c00 	bl	82972(0x1441c) # 14b5c <__stack_size+0x4b5c>
 744:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 748:	315501f3 	vstelm.h	$vr19,$r15,128(0x80),0x5
 74c:	00009f1c 	0x00009f1c
 750:	00000000 	0x00000000
 754:	00020000 	0x00020000
 758:	55300000 	bl	77824(0x13000) # 13758 <__stack_size+0x3758>
 75c:	55381c00 	bl	79900(0x1381c) # 13f78 <__stack_size+0x3f78>
 760:	00011c00 	asrtle.d	$r0,$r7
 764:	00553854 	0x00553854
 768:	0055481c 	0x0055481c
 76c:	f300041c 	0xf300041c
 770:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
 774:	00000000 	0x00000000
 778:	04000000 	csrrd	$r0,0x0
 77c:	00553000 	0x00553000
 780:	0055481c 	0x0055481c
 784:	5400011c 	bl	74448896(0x4700000) # 4700784 <__stack_size+0x46f0784>
	...
 794:	1c0054d0 	pcaddu12i	$r16,678(0x2a6)
 798:	1c0054e8 	pcaddu12i	$r8,679(0x2a7)
 79c:	e8540001 	0xe8540001
 7a0:	281c0054 	ld.b	$r20,$r2,1792(0x700)
 7a4:	041c0055 	csrxchg	$r21,$r2,0x700
 7a8:	5401f300 	bl	-67108368(0xc0001f0) # fc000998 <_stack+0xdff0099c>
 7ac:	0000009f 	0x0000009f
	...
 7b8:	0054d000 	0x0054d000
 7bc:	0054e81c 	0x0054e81c
 7c0:	5500011c 	bl	74514432(0x4710000) # 47107c0 <__stack_size+0x47007c0>
 7c4:	1c0054e8 	pcaddu12i	$r8,679(0x2a7)
 7c8:	1c005528 	pcaddu12i	$r8,681(0x2a9)
 7cc:	01f30004 	0x01f30004
 7d0:	00009f55 	0x00009f55
 7d4:	00000000 	0x00000000
 7d8:	04000000 	csrrd	$r0,0x0
 7dc:	00000004 	0x00000004
 7e0:	54d00001 	bl	315392(0x4d000) # 4d7e0 <__stack_size+0x3d7e0>
 7e4:	54d01c00 	bl	53276(0xd01c) # d800 <__stack_size-0x2800>
 7e8:	00011c00 	asrtle.d	$r0,$r7
 7ec:	0054d056 	0x0054d056
 7f0:	0054e01c 	0x0054e01c
 7f4:	7600031c 	0x7600031c
 7f8:	54e09f7f 	bl	-33759076(0xdfce09c) # fdfce894 <_stack+0xe1ece898>
 7fc:	54f41c00 	bl	62492(0xf41c) # fc18 <__stack_size-0x3e8>
 800:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 804:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 808:	54f49f1c 	bl	-59706212(0xc70f49c) # fc70fca4 <_stack+0xe060fca8>
 80c:	55001c00 	bl	65564(0x1001c) # 10828 <__stack_size+0x828>
 810:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 814:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 818:	00009f1c 	0x00009f1c
 81c:	00000000 	0x00000000
 820:	00020000 	0x00020000
 824:	54d00000 	bl	53248(0xd000) # d824 <__stack_size-0x27dc>
 828:	55041c00 	bl	66588(0x1041c) # 10c44 <__stack_size+0xc44>
 82c:	00011c00 	asrtle.d	$r0,$r7
 830:	00550854 	0x00550854
 834:	00551c1c 	0x00551c1c
 838:	5400011c 	bl	74448896(0x4700000) # 4700838 <__stack_size+0x46f0838>
	...
 844:	54d00003 	bl	839680(0xcd000) # cd844 <__stack_size+0xbd844>
 848:	55281c00 	bl	75804(0x1281c) # 13064 <__stack_size+0x3064>
 84c:	00011c00 	asrtle.d	$r0,$r7
 850:	00000055 	0x00000055
	...
 85c:	70000000 	vseq.b	$vr0,$vr0,$vr0
 860:	ac1c0054 	0xac1c0054
 864:	011c0054 	0x011c0054
 868:	54ac5500 	bl	67152980(0x400ac54) # 400b4bc <__stack_size+0x3ffb4bc>
 86c:	54c81c00 	bl	51228(0xc81c) # d088 <__stack_size-0x2f78>
 870:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 874:	9f5501f3 	0x9f5501f3
 878:	1c0054c8 	pcaddu12i	$r8,678(0x2a6)
 87c:	1c0054cc 	pcaddu12i	$r12,678(0x2a6)
 880:	00550001 	0x00550001
	...
 88c:	00000101 	0x00000101
 890:	00547000 	0x00547000
 894:	0054801c 	0x0054801c
 898:	5600011c 	bl	74579968(0x4720000) # 4720898 <__stack_size+0x4710898>
 89c:	1c005480 	pcaddu12i	$r0,676(0x2a4)
 8a0:	1c0054c4 	pcaddu12i	$r4,678(0x2a6)
 8a4:	7f760003 	0x7f760003
 8a8:	0054c89f 	0x0054c89f
 8ac:	0054cc1c 	0x0054cc1c
 8b0:	7600031c 	0x7600031c
 8b4:	00009f7f 	0x00009f7f
 8b8:	00000000 	0x00000000
 8bc:	01020000 	0x01020000
 8c0:	00000001 	0x00000001
 8c4:	54700000 	bl	28672(0x7000) # 78c4 <__stack_size-0x873c>
 8c8:	547c1c00 	bl	31772(0x7c1c) # 84e4 <__stack_size-0x7b1c>
 8cc:	00011c00 	asrtle.d	$r0,$r7
 8d0:	00547c55 	0x00547c55
 8d4:	00549c1c 	0x00549c1c
 8d8:	5c00011c 	bne	$r8,$r28,0 # 8d8 <__stack_size-0xf728>
 8dc:	1c00549c 	pcaddu12i	$r28,676(0x2a4)
 8e0:	1c0054c4 	pcaddu12i	$r4,678(0x2a6)
 8e4:	c8550001 	0xc8550001
 8e8:	cc1c0054 	0xcc1c0054
 8ec:	011c0054 	0x011c0054
 8f0:	00005500 	bitrev.d	$r0,$r8
 8f4:	00000000 	0x00000000
 8f8:	00030000 	0x00030000
	...
 904:	1c005470 	pcaddu12i	$r16,675(0x2a3)
 908:	1c005480 	pcaddu12i	$r0,676(0x2a4)
 90c:	80540001 	0x80540001
 910:	9c1c0054 	0x9c1c0054
 914:	011c0054 	0x011c0054
 918:	549c5d00 	bl	67148892(0x4009c5c) # 400a574 <__stack_size+0x3ffa574>
 91c:	54ac1c00 	bl	44060(0xac1c) # b538 <__stack_size-0x4ac8>
 920:	00011c00 	asrtle.d	$r0,$r7
 924:	0054ac54 	0x0054ac54
 928:	0054c41c 	0x0054c41c
 92c:	5c00011c 	bne	$r8,$r28,0 # 92c <__stack_size-0xf6d4>
 930:	1c0054c8 	pcaddu12i	$r8,678(0x2a6)
 934:	1c0054cc 	pcaddu12i	$r12,678(0x2a6)
 938:	00540001 	0x00540001
	...
 944:	40000000 	beqz	$r0,0 # 944 <__stack_size-0xf6bc>
 948:	4c1c0054 	jirl	$r20,$r2,7168(0x1c00)
 94c:	011c0054 	0x011c0054
 950:	544c5500 	bl	67128404(0x4004c54) # 40055a4 <__stack_size+0x3ff55a4>
 954:	54681c00 	bl	26652(0x681c) # 7170 <__stack_size-0x8e90>
 958:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 95c:	9f5501f3 	0x9f5501f3
	...
 968:	00040400 	alsl.w	$r0,$r0,$r1,0x1
 96c:	54400000 	bl	16384(0x4000) # 496c <__stack_size-0xb694>
 970:	54401c00 	bl	16412(0x401c) # 498c <__stack_size-0xb674>
 974:	00011c00 	asrtle.d	$r0,$r7
 978:	00544056 	0x00544056
 97c:	0054481c 	0x0054481c
 980:	7600031c 	0x7600031c
 984:	54489f7f 	bl	-33797988(0xdfc489c) # fdfc5220 <_stack+0xe1ec5224>
 988:	54641c00 	bl	25628(0x641c) # 6da4 <__stack_size-0x925c>
 98c:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 990:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 994:	00009f1c 	0x00009f1c
 998:	00000000 	0x00000000
 99c:	00020000 	0x00020000
 9a0:	1c005440 	pcaddu12i	$r0,674(0x2a2)
 9a4:	1c005468 	pcaddu12i	$r8,675(0x2a3)
 9a8:	00550001 	0x00550001
 9ac:	00000000 	0x00000000
 9b0:	03000000 	lu52i.d	$r0,$r0,0
 9b4:	40000000 	beqz	$r0,0 # 9b4 <__stack_size-0xf64c>
 9b8:	4c1c0054 	jirl	$r20,$r2,7168(0x1c00)
 9bc:	011c0054 	0x011c0054
 9c0:	544c5400 	bl	19540(0x4c54) # 5614 <__stack_size-0xa9ec>
 9c4:	54641c00 	bl	25628(0x641c) # 6de0 <__stack_size-0x9220>
 9c8:	00011c00 	asrtle.d	$r0,$r7
 9cc:	0000005c 	0x0000005c
	...
 9d8:	0053f000 	0x0053f000
 9dc:	0054081c 	0x0054081c
 9e0:	5400011c 	bl	74448896(0x4700000) # 47009e0 <__stack_size+0x46f09e0>
 9e4:	1c005408 	pcaddu12i	$r8,672(0x2a0)
 9e8:	1c005418 	pcaddu12i	$r24,672(0x2a0)
 9ec:	00540001 	0x00540001
	...
 9fc:	0053b000 	0x0053b000
 a00:	0053c41c 	0x0053c41c
 a04:	5400011c 	bl	74448896(0x4700000) # 4700a04 <__stack_size+0x46f0a04>
 a08:	1c0053c4 	pcaddu12i	$r4,670(0x29e)
 a0c:	1c0053e8 	pcaddu12i	$r8,671(0x29f)
 a10:	e85c0001 	0xe85c0001
 a14:	ec1c0053 	0xec1c0053
 a18:	011c0053 	0x011c0053
 a1c:	00005400 	bitrev.d	$r0,$r0
	...
 a2c:	1c005340 	pcaddu12i	$r0,666(0x29a)
 a30:	1c00537c 	pcaddu12i	$r28,667(0x29b)
 a34:	7c540001 	0x7c540001
 a38:	841c0053 	0x841c0053
 a3c:	011c0053 	0x011c0053
 a40:	53885400 	b	231508(0x38854) # 39294 <__stack_size+0x29294>
 a44:	53a01c00 	b	237596(0x3a01c) # 3aa60 <__stack_size+0x2aa60>
 a48:	00011c00 	asrtle.d	$r0,$r7
 a4c:	00000054 	0x00000054
	...
 a5c:	40000000 	beqz	$r0,0 # a5c <__stack_size-0xf5a4>
 a60:	5c1c0053 	bne	$r2,$r19,7168(0x1c00) # 2660 <__stack_size-0xd9a0>
 a64:	011c0053 	0x011c0053
 a68:	535c5500 	b	67329108(0x4035c54) # 40366bc <__stack_size+0x40266bc>
 a6c:	53741c00 	b	226332(0x3741c) # 37e88 <__stack_size+0x27e88>
 a70:	00011c00 	asrtle.d	$r0,$r7
 a74:	0053745c 	0x0053745c
 a78:	00537c1c 	0x00537c1c
 a7c:	5500011c 	bl	74514432(0x4710000) # 4710a7c <__stack_size+0x4700a7c>
 a80:	1c00537c 	pcaddu12i	$r28,667(0x29b)
 a84:	1c005380 	pcaddu12i	$r0,668(0x29c)
 a88:	885c0001 	0x885c0001
 a8c:	8c1c0053 	0x8c1c0053
 a90:	011c0053 	0x011c0053
 a94:	00005c00 	ext.w.b	$r0,$r0
	...
 aa4:	00010100 	asrtle.d	$r8,$r0
 aa8:	53400000 	b	212992(0x34000) # 34aa8 <__stack_size+0x24aa8>
 aac:	53581c00 	b	219164(0x3581c) # 362c8 <__stack_size+0x262c8>
 ab0:	00011c00 	asrtle.d	$r0,$r7
 ab4:	00535856 	0x00535856
 ab8:	00535c1c 	0x00535c1c
 abc:	f300041c 	0xf300041c
 ac0:	5c9f5601 	bne	$r16,$r1,40788(0x9f54) # aa14 <__stack_size-0x55ec>
 ac4:	741c0053 	0x741c0053
 ac8:	061c0053 	cacop	0x13,$r2,1792(0x700)
 acc:	5601f300 	bl	-66977296(0xc0201f0) # fc020cbc <_stack+0xdff20cc0>
 ad0:	749f1c31 	0x749f1c31
 ad4:	741c0053 	0x741c0053
 ad8:	041c0053 	csrxchg	$r19,$r2,0x700
 adc:	5601f300 	bl	-66977296(0xc0201f0) # fc020ccc <_stack+0xdff20cd0>
 ae0:	0053749f 	0x0053749f
 ae4:	0053801c 	0x0053801c
 ae8:	f300061c 	0xf300061c
 aec:	1c315601 	pcaddu12i	$r1,101040(0x18ab0)
 af0:	0053889f 	0x0053889f
 af4:	00538c1c 	0x00538c1c
 af8:	f300061c 	0xf300061c
 afc:	1c315601 	pcaddu12i	$r1,101040(0x18ab0)
 b00:	0000009f 	0x0000009f
	...
 b0c:	00531000 	0x00531000
 b10:	0053341c 	0x0053341c
 b14:	5500011c 	bl	74514432(0x4710000) # 4710b14 <__stack_size+0x4700b14>
 b18:	1c005334 	pcaddu12i	$r20,665(0x299)
 b1c:	1c00533c 	pcaddu12i	$r28,665(0x299)
 b20:	00550001 	0x00550001
	...
 b30:	01010000 	fadd.d	$f0,$f0,$f0
 b34:	00531000 	0x00531000
 b38:	0053181c 	0x0053181c
 b3c:	5600011c 	bl	74579968(0x4720000) # 4720b3c <__stack_size+0x4710b3c>
 b40:	1c005318 	pcaddu12i	$r24,664(0x298)
 b44:	1c00531c 	pcaddu12i	$r28,664(0x298)
 b48:	01f30004 	0x01f30004
 b4c:	531c9f56 	b	-44360548(0xd5b1c9c) # fd5b27e8 <_stack+0xe14b27ec>
 b50:	53281c00 	b	206876(0x3281c) # 3336c <__stack_size+0x2336c>
 b54:	000a1c00 	0x000a1c00
 b58:	007d0074 	bstrins.w	$r20,$r3,0x1d,0x0
 b5c:	5601f31c 	bl	-59637264(0xc7201f0) # fc720d4c <_stack+0xe0620d50>
 b60:	53289f22 	b	-57988964(0xc8b289c) # fc8b33fc <_stack+0xe07b3400>
 b64:	53341c00 	b	209948(0x3341c) # 33f80 <__stack_size+0x23f80>
 b68:	000c1c00 	bytepick.d	$r0,$r0,$r7,0x0
 b6c:	007d0074 	bstrins.w	$r20,$r3,0x1d,0x0
 b70:	5601f31c 	bl	-59637264(0xc7201f0) # fc720d60 <_stack+0xe0620d64>
 b74:	9f012322 	0x9f012322
 b78:	1c005334 	pcaddu12i	$r20,665(0x299)
 b7c:	1c005338 	pcaddu12i	$r24,665(0x299)
 b80:	0074000a 	bstrins.w	$r10,$r0,0x14,0x0
 b84:	f31c007d 	0xf31c007d
 b88:	9f225601 	0x9f225601
	...
 b94:	00000002 	0x00000002
 b98:	00010100 	asrtle.d	$r8,$r0
 b9c:	1c005310 	pcaddu12i	$r16,664(0x298)
 ba0:	1c00531c 	pcaddu12i	$r28,664(0x298)
 ba4:	1c540001 	pcaddu12i	$r1,172032(0x2a000)
 ba8:	281c0053 	ld.b	$r19,$r2,1792(0x700)
 bac:	011c0053 	0x011c0053
 bb0:	53285d00 	b	67315804(0x403285c) # 403340c <__stack_size+0x402340c>
 bb4:	53341c00 	b	209948(0x3341c) # 33fd0 <__stack_size+0x23fd0>
 bb8:	00031c00 	0x00031c00
 bbc:	349f7f7d 	0x349f7f7d
 bc0:	381c0053 	stx.d	$r19,$r2,$r0
 bc4:	011c0053 	0x011c0053
 bc8:	00005d00 	ext.w.b	$r0,$r8
	...
 bd4:	52f00000 	b	192512(0x2f000) # 2fbd4 <__stack_size+0x1fbd4>
 bd8:	52f81c00 	b	194588(0x2f81c) # 303f4 <__stack_size+0x203f4>
 bdc:	00011c00 	asrtle.d	$r0,$r7
 be0:	0052f855 	0x0052f855
 be4:	00530c1c 	0x00530c1c
 be8:	5500011c 	bl	74514432(0x4710000) # 4710be8 <__stack_size+0x4700be8>
	...
 bf4:	00000002 	0x00000002
 bf8:	1c0052f0 	pcaddu12i	$r16,663(0x297)
 bfc:	1c0052f4 	pcaddu12i	$r20,663(0x297)
 c00:	f4540001 	0xf4540001
 c04:	0c1c0052 	0x0c1c0052
 c08:	011c0053 	0x011c0053
 c0c:	00005c00 	ext.w.b	$r0,$r0
	...
 c1c:	1c0052b0 	pcaddu12i	$r16,661(0x295)
 c20:	1c0052b8 	pcaddu12i	$r24,661(0x295)
 c24:	b8540001 	0xb8540001
 c28:	c81c0052 	0xc81c0052
 c2c:	031c0052 	lu52i.d	$r18,$r2,1792(0x700)
 c30:	9f017400 	0x9f017400
 c34:	1c0052c8 	pcaddu12i	$r8,662(0x296)
 c38:	1c0052dc 	pcaddu12i	$r28,662(0x296)
 c3c:	00740008 	bstrins.w	$r8,$r0,0x14,0x0
 c40:	2322007c 	sc.d	$r28,$r3,8704(0x2200)
 c44:	00009f01 	0x00009f01
 c48:	00000000 	0x00000000
 c4c:	00020000 	0x00020000
 c50:	52b00000 	b	176128(0x2b000) # 2bc50 <__stack_size+0x1bc50>
 c54:	52c81c00 	b	182300(0x2c81c) # 2d470 <__stack_size+0x1d470>
 c58:	00021c00 	0x00021c00
 c5c:	52c89f30 	b	-54343524(0xcc2c89c) # fcc2d4f8 <_stack+0xe0b2d4fc>
 c60:	52dc1c00 	b	187420(0x2dc1c) # 2e87c <__stack_size+0x1e87c>
 c64:	00011c00 	asrtle.d	$r0,$r7
 c68:	0000005c 	0x0000005c
 c6c:	00000000 	0x00000000
 c70:	03030000 	lu52i.d	$r0,$r0,192(0xc0)
	...
 c7c:	00527000 	0x00527000
 c80:	0052701c 	0x0052701c
 c84:	5400011c 	bl	74448896(0x4700000) # 4700c84 <__stack_size+0x46f0c84>
 c88:	1c005270 	pcaddu12i	$r16,659(0x293)
 c8c:	1c00527c 	pcaddu12i	$r28,659(0x293)
 c90:	01740003 	0x01740003
 c94:	00527c9f 	0x00527c9f
 c98:	0052941c 	0x0052941c
 c9c:	7400081c 	xvseq.b	$xr28,$xr0,$xr2
 ca0:	22007c00 	ll.d	$r0,$r0,124(0x7c)
 ca4:	949f0123 	0x949f0123
 ca8:	981c0052 	0x981c0052
 cac:	091c0052 	vfmadd.s	$vr18,$vr2,$vr0,$vr24
 cb0:	5401f300 	bl	-67108368(0xc0001f0) # fc000ea0 <_stack+0xdff00ea4>
 cb4:	2322007c 	sc.d	$r28,$r3,8704(0x2200)
 cb8:	52989f01 	b	-66676580(0xc06989c) # fc06a554 <_stack+0xdff6a558>
 cbc:	52a01c00 	b	172060(0x2a01c) # 2acd8 <__stack_size+0x1acd8>
 cc0:	00031c00 	0x00031c00
 cc4:	a09f0174 	0xa09f0174
 cc8:	a41c0052 	0xa41c0052
 ccc:	061c0052 	cacop	0x12,$r2,1792(0x700)
 cd0:	5401f300 	bl	-67108368(0xc0001f0) # fc000ec0 <_stack+0xdff00ec4>
 cd4:	009f0123 	bstrins.d	$r3,$r9,0x1f,0x0
 cd8:	00000000 	0x00000000
 cdc:	02000000 	slti	$r0,$r0,0
 ce0:	00000000 	0x00000000
 ce4:	00527000 	0x00527000
 ce8:	00527c1c 	0x00527c1c
 cec:	3000021c 	0x3000021c
 cf0:	00527c9f 	0x00527c9f
 cf4:	0052981c 	0x0052981c
 cf8:	5c00011c 	bne	$r8,$r28,0 # cf8 <__stack_size-0xf308>
 cfc:	1c005298 	pcaddu12i	$r24,660(0x294)
 d00:	1c0052a4 	pcaddu12i	$r4,661(0x295)
 d04:	9f300002 	0x9f300002
	...
 d10:	00030300 	0x00030300
	...
 d1c:	1c005420 	pcaddu12i	$r0,673(0x2a1)
 d20:	1c005420 	pcaddu12i	$r0,673(0x2a1)
 d24:	20560001 	ll.w	$r1,$r0,22016(0x5600)
 d28:	281c0054 	ld.b	$r20,$r2,1792(0x700)
 d2c:	031c0054 	lu52i.d	$r20,$r2,1792(0x700)
 d30:	9f7f7600 	0x9f7f7600
 d34:	1c005428 	pcaddu12i	$r8,673(0x2a1)
 d38:	1c00542c 	pcaddu12i	$r12,673(0x2a1)
 d3c:	01f30006 	0x01f30006
 d40:	9f1c3156 	0x9f1c3156
 d44:	1c00542c 	pcaddu12i	$r12,673(0x2a1)
 d48:	1c005434 	pcaddu12i	$r20,673(0x2a1)
 d4c:	007c000b 	bstrins.w	$r11,$r0,0x1c,0x0
 d50:	5601f320 	bl	-58588688(0xc8201f0) # fc820f40 <_stack+0xe0720f44>
 d54:	22007422 	ll.d	$r2,$r1,116(0x74)
 d58:	0054349f 	0x0054349f
 d5c:	0054381c 	0x0054381c
 d60:	74000a1c 	xvseq.b	$xr28,$xr16,$xr2
 d64:	1c007c00 	pcaddu12i	$r0,992(0x3e0)
 d68:	225601f3 	ll.d	$r19,$r15,22016(0x5600)
 d6c:	0054389f 	0x0054389f
 d70:	00543c1c 	0x00543c1c
 d74:	7c000b1c 	0x7c000b1c
 d78:	01f32000 	0x01f32000
 d7c:	00742256 	bstrins.w	$r22,$r18,0x14,0x8
 d80:	00009f22 	0x00009f22
 d84:	00000000 	0x00000000
 d88:	00020000 	0x00020000
 d8c:	54200000 	bl	8192(0x2000) # 2d8c <__stack_size-0xd274>
 d90:	542c1c00 	bl	11292(0x2c1c) # 39ac <__stack_size-0xc654>
 d94:	00011c00 	asrtle.d	$r0,$r7
 d98:	00542c54 	0x00542c54
 d9c:	00543c1c 	0x00543c1c
 da0:	5c00011c 	bne	$r8,$r28,0 # da0 <__stack_size-0xf260>
	...
 dac:	03010102 	lu52i.d	$r2,$r8,64(0x40)
 db0:	00000003 	0x00000003
 db4:	00000110 	0x00000110
 db8:	00000120 	0x00000120
 dbc:	9f300002 	0x9f300002
 dc0:	00000120 	0x00000120
 dc4:	00000120 	0x00000120
 dc8:	20540001 	ll.w	$r1,$r0,21504(0x5400)
 dcc:	34000001 	0x34000001
 dd0:	0c000001 	0x0c000001
 dd4:	f7007400 	0xf7007400
 dd8:	f7640825 	0xf7640825
 ddc:	00f71b25 	bstrpick.d	$r5,$r25,0x37,0x6
 de0:	0001349f 	0x0001349f
 de4:	00014000 	asrtle.d	$r0,$r16
 de8:	5d000100 	bne	$r8,$r0,65536(0x10000) # 10de8 <__stack_size+0xde8>
	...
 df4:	01200100 	0x01200100
 df8:	01200000 	0x01200000
 dfc:	00010000 	asrtle.d	$r0,$r0
 e00:	00000054 	0x00000054
 e04:	00000000 	0x00000000
 e08:	01010200 	fadd.d	$f0,$f16,$f0
 e0c:	00000303 	0x00000303
 e10:	0000e000 	0x0000e000
 e14:	0000f000 	0x0000f000
 e18:	30000200 	0x30000200
 e1c:	0000f09f 	0x0000f09f
 e20:	0000f000 	0x0000f000
 e24:	54000100 	bl	67108864(0x4000000) # 4000e24 <__stack_size+0x3ff0e24>
 e28:	000000f0 	0x000000f0
 e2c:	000000fc 	0x000000fc
 e30:	00740005 	bstrins.w	$r5,$r0,0x14,0x0
 e34:	fc9f1e3a 	0xfc9f1e3a
 e38:	04000000 	csrrd	$r0,0x0
 e3c:	01000001 	0x01000001
 e40:	00005400 	bitrev.d	$r0,$r0
 e44:	00000000 	0x00000000
 e48:	01000000 	0x01000000
 e4c:	000000f0 	0x000000f0
 e50:	000000f0 	0x000000f0
 e54:	00540001 	0x00540001
	...
 e60:	40000000 	beqz	$r0,0 # e60 <__stack_size-0xf1a0>
 e64:	ac000000 	0xac000000
 e68:	01000000 	0x01000000
 e6c:	00ac5400 	bstrins.d	$r0,$r0,0x2c,0x15
 e70:	00c40000 	bstrpick.d	$r0,$r0,0x4,0x0
 e74:	00040000 	alsl.w	$r0,$r0,$r0,0x1
 e78:	9f5401f3 	0x9f5401f3
	...
 e84:	00010102 	0x00010102
 e88:	00000040 	0x00000040
 e8c:	00000050 	0x00000050
 e90:	9f300002 	0x9f300002
 e94:	00000050 	0x00000050
 e98:	000000c4 	0x000000c4
 e9c:	005f0001 	0x005f0001
	...
 ea8:	00005001 	bitrev.w	$r1,$r0
 eac:	00005000 	bitrev.w	$r0,$r0
 eb0:	5f000100 	bne	$r8,$r0,-65536(0x30000) # ffff0eb0 <_stack+0xe3ef0eb4>
	...
 ebc:	00340000 	0x00340000
 ec0:	00380000 	0x00380000
 ec4:	00010000 	asrtle.d	$r0,$r0
 ec8:	00000054 	0x00000054
 ecc:	00000000 	0x00000000
 ed0:	10010000 	addu16i.d	$r0,$r0,64(0x40)
 ed4:	10000000 	addu16i.d	$r0,$r0,0
 ed8:	01000000 	0x01000000
 edc:	00005400 	bitrev.d	$r0,$r0
 ee0:	00000000 	0x00000000
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	0x0000001c
   4:	00000002 	0x00000002
   8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
   c:	00000000 	0x00000000
  10:	1c004e10 	pcaddu12i	$r16,624(0x270)
  14:	0000023c 	0x0000023c
	...
  20:	0000001c 	0x0000001c
  24:	026c0002 	sltui	$r2,$r0,-1280(0xb00)
  28:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  2c:	00000000 	0x00000000
  30:	1c005050 	pcaddu12i	$r16,642(0x282)
  34:	00000080 	0x00000080
	...
  40:	0000001c 	0x0000001c
  44:	03630002 	andi	$r2,$r0,0x8c0
  48:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  4c:	00000000 	0x00000000
  50:	1c0050d0 	pcaddu12i	$r16,646(0x286)
  54:	000000ac 	0x000000ac
	...
  60:	0000001c 	0x0000001c
  64:	04d70002 	csrrd	$r2,0x35c0
  68:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  6c:	00000000 	0x00000000
  70:	1c005180 	pcaddu12i	$r0,652(0x28c)
  74:	000000ec 	0x000000ec
	...
  80:	0000001c 	0x0000001c
  84:	06520002 	0x06520002
  88:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  8c:	00000000 	0x00000000
  90:	1c005270 	pcaddu12i	$r16,659(0x293)
  94:	000002d8 	0x000002d8
	...
  a0:	0000001c 	0x0000001c
  a4:	0b300002 	0x0b300002
  a8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  ac:	00000000 	0x00000000
  b0:	1c005550 	pcaddu12i	$r16,682(0x2aa)
  b4:	00000140 	0x00000140
	...

Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
   0:	00000064 	0x00000064
   4:	0000006c 	0x0000006c
   8:	00000084 	0x00000084
   c:	000000a0 	0x000000a0
	...
  18:	000000a8 	0x000000a8
  1c:	000000ac 	0x000000ac
  20:	000000f8 	0x000000f8
  24:	0000023c 	0x0000023c
	...
  38:	00000008 	0x00000008
  3c:	00000018 	0x00000018
	...
  48:	00000020 	0x00000020
  4c:	00000030 	0x00000030
  50:	00000038 	0x00000038
  54:	00000050 	0x00000050
	...
  60:	1c005270 	pcaddu12i	$r16,659(0x293)
  64:	1c005548 	pcaddu12i	$r8,682(0x2aa)
	...
  78:	00000008 	0x00000008
  7c:	00000010 	0x00000010
	...
  88:	00000040 	0x00000040
  8c:	00000040 	0x00000040
  90:	00000048 	0x00000048
  94:	00000050 	0x00000050
	...
  a0:	000000e0 	0x000000e0
  a4:	000000e0 	0x000000e0
  a8:	000000e8 	0x000000e8
  ac:	000000f0 	0x000000f0
	...
  b8:	00000110 	0x00000110
  bc:	00000110 	0x00000110
  c0:	00000118 	0x00000118
  c4:	00000120 	0x00000120
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	000001a4 	0x000001a4
   4:	001f0002 	mulw.d.w	$r2,$r0,$r0
   8:	01010000 	fadd.d	$f0,$f0,$f0
   c:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
  10:	01010101 	fadd.d	$f1,$f8,$f0
  14:	01000000 	0x01000000
  18:	00010000 	asrtle.d	$r0,$r0
  1c:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # fffe698c <_stack+0xe3ee6990>
  20:	632e6674 	blt	$r19,$r20,-53660(0x32e64) # ffff2e84 <_stack+0xe3ef2e88>
  24:	00000000 	0x00000000
  28:	00010500 	asrtle.d	$r8,$r1
  2c:	4e100205 	jirl	$r5,$r16,-126976(0x21000)
  30:	13131c00 	addu16i.d	$r0,$r0,-15161(0xc4c7)
  34:	13131313 	addu16i.d	$r19,$r24,-15164(0xc4c4)
  38:	7a030613 	0x7a030613
  3c:	05e40801 	0x05e40801
  40:	01058a0c 	0x01058a0c
  44:	4a7a0348 	0x4a7a0348
  48:	4b064208 	0x4b064208
  4c:	05010613 	0x05010613
  50:	c6030603 	0xc6030603
  54:	06ac0800 	0x06ac0800
  58:	00110582 	sub.w	$r2,$r12,$r1
  5c:	03020402 	lu52i.d	$r2,$r0,129(0x81)
  60:	05017fba 	0x05017fba
  64:	0402000c 	csrrd	$r12,0x80
  68:	01054a02 	fmul.d	$f2,$f16,$f18
  6c:	02040200 	slti	$r0,$r16,256(0x100)
  70:	06020582 	cacop	0x2,$r12,129(0x81)
  74:	0405134c 	csrxchg	$r12,$r26,0x144
  78:	03050106 	lu52i.d	$r6,$r8,320(0x140)
  7c:	00c20306 	bstrpick.d	$r6,$r24,0x2,0x0
  80:	06050582 	cacop	0x2,$r12,321(0x141)
  84:	000f0501 	bytepick.d	$r1,$r8,$r1,0x6
  88:	06010402 	cacop	0x2,$r0,65(0x41)
  8c:	06040582 	cacop	0x2,$r12,257(0x101)
  90:	3c084003 	0x3c084003
  94:	054c0305 	0x054c0305
  98:	4a330309 	0x4a330309
  9c:	0603054a 	cacop	0xa,$r10,193(0xc1)
  a0:	06014d03 	cacop	0x3,$r8,83(0x53)
  a4:	030105f2 	lu52i.d	$r18,$r15,65(0x41)
  a8:	3c0800c3 	0x3c0800c3
  ac:	03060505 	lu52i.d	$r5,$r8,385(0x181)
  b0:	0128026d 	0x0128026d
  b4:	1a050106 	pcalau12i	$r6,10248(0x2808)
  b8:	01040200 	0x01040200
  bc:	000505bc 	alsl.w	$r28,$r13,$r1,0x3
  c0:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a01c4 <__stack_size+0x901c4>
  c4:	02000605 	slti	$r5,$r16,1(0x1)
  c8:	f3060304 	0xf3060304
  cc:	02000905 	slti	$r5,$r8,2(0x2)
  d0:	01060304 	0x01060304
  d4:	02002c05 	slti	$r5,$r0,11(0xb)
  d8:	05490304 	0x05490304
  dc:	04020010 	csrrd	$r16,0x80
  e0:	16054a03 	lu32i.d	$r3,10832(0x2a50)
  e4:	03040200 	lu52i.d	$r0,$r16,256(0x100)
  e8:	0010054b 	add.w	$r11,$r10,$r1
  ec:	49030402 	bceqz	$fcc0,590596(0x90304) # 903f0 <__stack_size+0x803f0>
  f0:	02001a05 	slti	$r5,$r16,6(0x6)
  f4:	054a0304 	0x054a0304
  f8:	04020005 	csrrd	$r5,0x80
  fc:	07054a03 	0x07054a03
 100:	03040200 	lu52i.d	$r0,$r16,256(0x100)
 104:	00050583 	alsl.w	$r3,$r12,$r1,0x3
 108:	49030402 	bceqz	$fcc0,590596(0x90304) # 9040c <__stack_size+0x8040c>
 10c:	826f0306 	0x826f0306
 110:	bb060805 	0xbb060805
 114:	054b0605 	0x054b0605
 118:	4b064805 	bceqz	$fcc0,1508936(0x170648) # 170760 <__stack_size+0x160760>
 11c:	64031313 	bge	$r24,$r19,784(0x310) # 42c <__stack_size-0xfbd4>
 120:	0606054a 	cacop	0xa,$r10,385(0x181)
 124:	4908054c 	bcnez	$fcc2,3213316(0x310804) # 310928 <__stack_size+0x300928>
 128:	06490505 	0x06490505
 12c:	5113134b 	b	-47377648(0xd2d1310) # fd2d143c <_stack+0xe11d1440>
 130:	bb060805 	0xbb060805
 134:	054b0605 	0x054b0605
 138:	4b064805 	bceqz	$fcc0,1508936(0x170648) # 170780 <__stack_size+0x160780>
 13c:	11051313 	addu16i.d	$r19,$r24,16708(0x4144)
 140:	0614054c 	cacop	0xc,$r10,1281(0x501)
 144:	4b1205bb 	bcnez	$fcc5,-1109500(0x6f1204) # ffef1348 <_stack+0xe3df134c>
 148:	06481105 	iocsrwr.b	$r5,$r8
 14c:	0513134b 	0x0513134b
 150:	08058405 	0x08058405
 154:	0605bb06 	cacop	0x6,$r24,366(0x16e)
 158:	4805054b 	bcnez	$fcc2,2884868(0x2c0504) # 2c065c <__stack_size+0x2b065c>
 15c:	13134b06 	addu16i.d	$r6,$r24,-15150(0xc4d2)
 160:	0608058a 	cacop	0xa,$r12,513(0x201)
 164:	4b0605bb 	bcnez	$fcc5,-1112572(0x6f0604) # ffef0768 <_stack+0xe3df076c>
 168:	06480505 	iocsrrd.h	$r5,$r8
 16c:	0313134b 	lu52i.d	$r11,$r26,1220(0x4c4)
 170:	06058259 	cacop	0x19,$r18,352(0x160)
 174:	08054c06 	0x08054c06
 178:	49050549 	bcnez	$fcc2,2426116(0x250504) # 25067c <__stack_size+0x24067c>
 17c:	13134b06 	addu16i.d	$r6,$r24,-15150(0xc4d2)
 180:	06080551 	cacop	0x11,$r10,513(0x201)
 184:	4b0605bb 	bcnez	$fcc5,-1112572(0x6f0604) # ffef0788 <_stack+0xe3df078c>
 188:	06480505 	iocsrrd.h	$r5,$r8
 18c:	0313134b 	lu52i.d	$r11,$r26,1220(0x4c4)
 190:	06054a1c 	cacop	0x1c,$r16,338(0x152)
 194:	05054b06 	0x05054b06
 198:	134b0649 	addu16i.d	$r9,$r18,-11583(0xd2c1)
 19c:	05510605 	0x05510605
 1a0:	02831505 	addi.w	$r5,$r8,197(0xc5)
 1a4:	01010004 	fadd.d	$f4,$f0,$f0
 1a8:	000000a9 	0x000000a9
 1ac:	00390002 	0x00390002
 1b0:	01010000 	fadd.d	$f0,$f0,$f0
 1b4:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
 1b8:	01010101 	fadd.d	$f1,$f8,$f0
 1bc:	01000000 	0x01000000
 1c0:	2e010000 	0x2e010000
 1c4:	2f2e2e2f 	0x2f2e2e2f
 1c8:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 6534 <__stack_size-0x9acc>
 1cc:	00656475 	bstrins.w	$r21,$r3,0x5,0x19
 1d0:	74757000 	xvmax.wu	$xr0,$xr0,$xr28
 1d4:	72616863 	0x72616863
 1d8:	0000632e 	rdtimel.w	$r14,$r25
 1dc:	6f630000 	bgeu	$r0,$r0,-40192(0x36300) # ffff64dc <_stack+0xe3ef64e0>
 1e0:	6e6f6d6d 	bgeu	$r11,$r13,-102548(0x26f6c) # fffe714c <_stack+0xe3ee7150>
 1e4:	0100682e 	0x0100682e
 1e8:	05000000 	0x05000000
 1ec:	02050001 	slti	$r1,$r0,320(0x140)
 1f0:	1c005050 	pcaddu12i	$r16,642(0x282)
 1f4:	06051313 	cacop	0x13,$r24,324(0x144)
 1f8:	14050516 	lu12i.w	$r22,10280(0x2828)
 1fc:	03060105 	lu52i.d	$r5,$r8,384(0x180)
 200:	05050179 	0x05050179
 204:	0105f289 	0x0105f289
 208:	13060d06 	addu16i.d	$r6,$r8,-15997(0xc183)
 20c:	3f08064a 	0x3f08064a
 210:	05130505 	0x05130505
 214:	05110601 	0x05110601
 218:	01058305 	0x01058305
 21c:	770806f9 	0x770806f9
 220:	05130505 	0x05130505
 224:	0501060d 	0x0501060d
 228:	04020037 	csrwr	$r23,0x80
 22c:	05820601 	0x05820601
 230:	0402000d 	csrrd	$r13,0x80
 234:	05010601 	0x05010601
 238:	04020031 	csrwr	$r17,0x80
 23c:	0b054a01 	0x0b054a01
 240:	01040200 	0x01040200
 244:	0605054a 	cacop	0xa,$r10,321(0x141)
 248:	062a054b 	cacop	0xb,$r10,-1407(0xa81)
 24c:	83010501 	0x83010501
 250:	01000402 	0x01000402
 254:	00009401 	0x00009401
 258:	1d000200 	pcaddu12i	$r0,-524272(0x80010)
 25c:	01000000 	0x01000000
 260:	0d0efb01 	0x0d0efb01
 264:	01010100 	fadd.d	$f0,$f8,$f0
 268:	00000001 	0x00000001
 26c:	01000001 	0x01000001
 270:	74757000 	xvmax.wu	$xr0,$xr0,$xr28
 274:	00632e73 	bstrins.w	$r19,$r19,0x3,0xb
 278:	00000000 	0x00000000
 27c:	05000105 	0x05000105
 280:	0050d002 	0x0050d002
 284:	1313131c 	addu16i.d	$r28,$r24,-15164(0xc4c4)
 288:	09051006 	0x09051006
 28c:	06053e08 	cacop	0x8,$r16,335(0x14f)
 290:	8404054a 	0x8404054a
 294:	83060205 	0x83060205
 298:	05010683 	0x05010683
 29c:	06050e09 	cacop	0x9,$r16,323(0x143)
 2a0:	0602054a 	cacop	0xa,$r10,129(0x81)
 2a4:	0603054c 	cacop	0xc,$r10,193(0xc1)
 2a8:	48040514 	bcnez	$fcc0,-3144700(0x500404) # ffd006ac <_stack+0xe3c006b0>
 2ac:	02001005 	slti	$r5,$r0,4(0x4)
 2b0:	4a060104 	bcnez	$fcc0,1181184(0x120600) # 1208b0 <__stack_size+0x1108b0>
 2b4:	02000205 	slti	$r5,$r16,0
 2b8:	00830104 	bstrins.d	$r4,$r8,0x3,0x0
 2bc:	83010402 	0x83010402
 2c0:	01040200 	0x01040200
 2c4:	09050106 	0x09050106
 2c8:	01040200 	0x01040200
 2cc:	0006050e 	alsl.wu	$r14,$r8,$r1,0x1
 2d0:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a03d4 <__stack_size+0x903d4>
 2d4:	50060105 	b	68421120(0x4140600) # 41408d4 <__stack_size+0x41308d4>
 2d8:	06821306 	0x06821306
 2dc:	0613e808 	cacop	0x8,$r0,1274(0x4fa)
 2e0:	4b068311 	0x4b068311
 2e4:	13068383 	addu16i.d	$r3,$r28,-15968(0xc1a0)
 2e8:	01001002 	0x01001002
 2ec:	0000e801 	0x0000e801
 2f0:	22000200 	ll.d	$r0,$r16,0
 2f4:	01000000 	0x01000000
 2f8:	0d0efb01 	0x0d0efb01
 2fc:	01010100 	fadd.d	$f0,$f8,$f0
 300:	00000001 	0x00000001
 304:	01000001 	0x01000001
 308:	69727000 	bltu	$r0,$r0,94832(0x17270) # 17578 <__stack_size+0x7578>
 30c:	6162746e 	blt	$r3,$r14,90740(0x16274) # 16580 <__stack_size+0x6580>
 310:	632e6573 	blt	$r11,$r19,-53660(0x32e64) # ffff3174 <_stack+0xe3ef3178>
 314:	00000000 	0x00000000
 318:	00010500 	asrtle.d	$r8,$r1
 31c:	51800205 	b	-132808704(0x8158000) # f815831c <_stack+0xdc058320>
 320:	05131c00 	0x05131c00
 324:	13131302 	addu16i.d	$r2,$r24,-15164(0xc4c4)
 328:	01051313 	fmul.d	$f19,$f24,$f4
 32c:	3c080d06 	0x3c080d06
 330:	054f0405 	0x054f0405
 334:	0402000a 	csrrd	$r10,0x80
 338:	07054a01 	0x07054a01
 33c:	02054f06 	slti	$r6,$r24,339(0x153)
 340:	054a1406 	0x054a1406
 344:	0205f507 	slti	$r7,$r8,381(0x17d)
 348:	03040200 	lu52i.d	$r0,$r16,256(0x100)
 34c:	0e054906 	0x0e054906
 350:	03040200 	lu52i.d	$r0,$r16,256(0x100)
 354:	08050106 	0x08050106
 358:	03040200 	lu52i.d	$r0,$r16,256(0x100)
 35c:	000205ba 	0x000205ba
 360:	06030402 	cacop	0x2,$r0,193(0xc1)
 364:	0007054b 	alsl.wu	$r11,$r10,$r1,0x3
 368:	06030402 	cacop	0x2,$r0,193(0xc1)
 36c:	0402004a 	csrxchg	$r10,$r2,0x80
 370:	0205ba03 	slti	$r3,$r16,366(0x16e)
 374:	03040200 	lu52i.d	$r0,$r16,256(0x100)
 378:	05520647 	0x05520647
 37c:	4a010607 	0x4a010607
 380:	064d0305 	0x064d0305
 384:	060e0581 	cacop	0x1,$r12,897(0x381)
 388:	ba0a0501 	0xba0a0501
 38c:	01040200 	0x01040200
 390:	0003054a 	0x0003054a
 394:	06010402 	cacop	0x2,$r0,65(0x41)
 398:	0402004b 	csrxchg	$r11,$r2,0x80
 39c:	00ba0601 	bstrins.d	$r1,$r16,0x3a,0x1
 3a0:	4a040402 	bceqz	$fcc0,656388(0xa0404) # a07a4 <__stack_size+0x907a4>
 3a4:	04040200 	csrxchg	$r0,$r16,0x100
 3a8:	0002054a 	0x0002054a
 3ac:	0f040402 	0x0f040402
 3b0:	05500105 	0x05500105
 3b4:	087a0307 	0x087a0307
 3b8:	02054aac 	slti	$r12,$r21,338(0x152)
 3bc:	4a4a7403 	bceqz	$fcc0,936564(0xe4a74) # e4e30 <__stack_size+0xd4e30>
 3c0:	13068106 	addu16i.d	$r6,$r8,-15968(0xc1a0)
 3c4:	05490a05 	0x05490a05
 3c8:	064b0602 	0x064b0602
 3cc:	0306ba01 	lu52i.d	$r1,$r16,430(0x1ae)
 3d0:	0106010c 	0x0106010c
 3d4:	01000c02 	0x01000c02
 3d8:	00030001 	0x00030001
 3dc:	38000200 	ldx.b	$r0,$r16,$r0
 3e0:	01000000 	0x01000000
 3e4:	0d0efb01 	0x0d0efb01
 3e8:	01010100 	fadd.d	$f0,$f8,$f0
 3ec:	00000001 	0x00000001
 3f0:	01000001 	0x01000001
 3f4:	2e2e2f2e 	0x2e2e2f2e
 3f8:	636e692f 	blt	$r9,$r15,-37272(0x36e68) # ffff7260 <_stack+0xe3ef7264>
 3fc:	6564756c 	bge	$r11,$r12,91252(0x16474) # 16870 <__stack_size+0x6870>
 400:	74730000 	xvmin.w	$xr0,$xr0,$xr0
 404:	676e6972 	bge	$r11,$r18,-37272(0x36e68) # ffff726c <_stack+0xe3ef7270>
 408:	0000632e 	rdtimel.w	$r14,$r25
 40c:	6f630000 	bgeu	$r0,$r0,-40192(0x36300) # ffff670c <_stack+0xe3ef6710>
 410:	6e6f6d6d 	bgeu	$r11,$r13,-102548(0x26f6c) # fffe737c <_stack+0xe3ee7380>
 414:	0100682e 	0x0100682e
 418:	05000000 	0x05000000
 41c:	02050017 	slti	$r23,$r0,320(0x140)
 420:	1c005270 	pcaddu12i	$r16,659(0x293)
 424:	05010b03 	0x05010b03
 428:	05131305 	0x05131305
 42c:	0501060b 	0x0501060b
 430:	0905810c 	0x0905810c
 434:	0d058406 	0x0d058406
 438:	0c050106 	0x0c050106
 43c:	4a0b0549 	bcnez	$fcc2,2493188(0x260b04) # 260f40 <__stack_size+0x250f40>
 440:	4a860105 	bcnez	$fcc0,1476096(0x168600) # 168a40 <__stack_size+0x158a40>
 444:	05450c05 	0x05450c05
 448:	054e0605 	0x054e0605
 44c:	4a130601 	0x4a130601
 450:	03062405 	lu52i.d	$r5,$r0,393(0x189)
 454:	0505f210 	0x0505f210
 458:	0c051313 	0x0c051313
 45c:	0b051106 	0x0b051106
 460:	4a16054b 	bcnez	$fcc2,3020292(0x2e1604) # 2e1a64 <__stack_size+0x2d1a64>
 464:	05490c05 	0x05490c05
 468:	02004b16 	slti	$r22,$r24,18(0x12)
 46c:	05820104 	0x05820104
 470:	05830609 	0x05830609
 474:	0501060d 	0x0501060d
 478:	0b054919 	0x0b054919
 47c:	4e01054a 	jirl	$r10,$r10,-130812(0x20104)
 480:	03062405 	lu52i.d	$r5,$r0,393(0x189)
 484:	053c080f 	0x053c080f
 488:	05131605 	0x05131605
 48c:	0511060b 	0x0511060b
 490:	04020016 	csrrd	$r22,0x80
 494:	054c0601 	0x054c0601
 498:	0402001a 	csrrd	$r26,0x80
 49c:	05110601 	0x05110601
 4a0:	04020015 	csrrd	$r21,0x80
 4a4:	10054a01 	addu16i.d	$r1,$r16,338(0x152)
 4a8:	01040200 	0x01040200
 4ac:	0013054a 	maskeqz	$r10,$r10,$r1
 4b0:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a05b4 <__stack_size+0x905b4>
 4b4:	02000b05 	slti	$r5,$r24,2(0x2)
 4b8:	054a0104 	0x054a0104
 4bc:	31054e01 	0x31054e01
 4c0:	820d0306 	0x820d0306
 4c4:	13130505 	addu16i.d	$r5,$r8,-15167(0xc4c1)
 4c8:	01060b05 	0x01060b05
 4cc:	06090581 	cacop	0x1,$r12,577(0x241)
 4d0:	06130584 	cacop	0x4,$r12,1217(0x4c1)
 4d4:	4d0b0501 	jirl	$r1,$r8,68356(0x10b04)
 4d8:	4b471105 	bcnez	$fcc0,1525520(0x174710) # 174be8 <__stack_size+0x164be8>
 4dc:	84060905 	0x84060905
 4e0:	0e060b05 	0x0e060b05
 4e4:	50060505 	b	68421124(0x4140604) # 4140ae8 <__stack_size+0x4130ae8>
 4e8:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
 4ec:	03063305 	lu52i.d	$r5,$r24,396(0x18c)
 4f0:	0505820e 	0x0505820e
 4f4:	060b0513 	cacop	0x13,$r8,705(0x2c1)
 4f8:	4a150501 	bcnez	$fcc0,398596(0x61504) # 619fc <__stack_size+0x519fc>
 4fc:	05821205 	0x05821205
 500:	05824a21 	0x05824a21
 504:	04020015 	csrrd	$r21,0x80
 508:	12058201 	addu16i.d	$r1,$r16,-32416(0x8160)
 50c:	01040200 	0x01040200
 510:	002b054a 	syscall	0x54a
 514:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a0718 <__stack_size+0x90718>
 518:	02002105 	slti	$r5,$r8,8(0x8)
 51c:	05820204 	0x05820204
 520:	054b0609 	0x054b0609
 524:	05010619 	0x05010619
 528:	0b054a12 	0x0b054a12
 52c:	4d190549 	jirl	$r9,$r10,71940(0x11904)
 530:	4a4b0105 	bcnez	$fcc0,1460992(0x164b00) # 165030 <__stack_size+0x155030>
 534:	49060505 	bcnez	$fcc0,1377796(0x150604) # 150b38 <__stack_size+0x140b38>
 538:	0e063305 	0x0e063305
 53c:	054e2105 	0x054e2105
 540:	01058236 	0x01058236
 544:	49190583 	bcnez	$fcc4,858372(0xd1904) # d1e48 <__stack_size+0xc1e48>
 548:	054b0105 	0x054b0105
 54c:	0b03061f 	0x0b03061f
 550:	13050582 	addu16i.d	$r2,$r12,-16063(0xc141)
 554:	01060c05 	0x01060c05
 558:	05491f05 	0x05491f05
 55c:	09054b0b 	0x09054b0b
 560:	0c054b06 	0x0c054b06
 564:	05820106 	0x05820106
 568:	154a0609 	lu12i.w	$r9,-372688(0xa5030)
 56c:	01060b05 	0x01060b05
 570:	05460c05 	0x05460c05
 574:	0c054a0b 	0x0c054a0b
 578:	b80b0550 	0xb80b0550
 57c:	4a4d0105 	bcnez	$fcc0,1461504(0x164d00) # 16527c <__stack_size+0x15527c>
 580:	03062005 	lu52i.d	$r5,$r0,392(0x188)
 584:	0505820c 	0x0505820c
 588:	060c0513 	cacop	0x13,$r8,769(0x301)
 58c:	4a0b0501 	bcnez	$fcc0,396036(0x60b04) # 61090 <__stack_size+0x51090>
 590:	4b060905 	bcnez	$fcc0,1508872(0x170608) # 170b98 <__stack_size+0x160b98>
 594:	01060c05 	0x01060c05
 598:	06090582 	cacop	0x2,$r12,577(0x241)
 59c:	0b05154a 	0x0b05154a
 5a0:	0c050106 	0x0c050106
 5a4:	4a0b0546 	bcnez	$fcc2,1706756(0x1a0b04) # 1a10a8 <__stack_size+0x1910a8>
 5a8:	50060505 	b	68421124(0x4140604) # 4140bac <__stack_size+0x4130bac>
 5ac:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
 5b0:	0623054a 	cacop	0xa,$r10,-1855(0x8c1)
 5b4:	ba00e603 	0xba00e603
 5b8:	13160505 	addu16i.d	$r5,$r8,-14975(0xc581)
 5bc:	01060b05 	0x01060b05
 5c0:	06090581 	cacop	0x1,$r12,577(0x241)
 5c4:	060c0584 	cacop	0x4,$r12,769(0x301)
 5c8:	4a0f0501 	bcnez	$fcc0,397060(0x60f04) # 614cc <__stack_size+0x514cc>
 5cc:	05490b05 	0x05490b05
 5d0:	054d0605 	0x054d0605
 5d4:	05140601 	0x05140601
 5d8:	1103062e 	addu16i.d	$r14,$r17,16577(0x40c1)
 5dc:	1605054a 	lu32i.d	$r10,10282(0x282a)
 5e0:	0b051313 	0x0b051313
 5e4:	05810106 	0x05810106
 5e8:	05840609 	0x05840609
 5ec:	05010614 	0x05010614
 5f0:	0c054a11 	0x0c054a11
 5f4:	4a0f054a 	bcnez	$fcc2,2756356(0x2a0f04) # 2a14f8 <__stack_size+0x2914f8>
 5f8:	05490b05 	0x05490b05
 5fc:	054d0605 	0x054d0605
 600:	05140601 	0x05140601
 604:	0c03062f 	0x0c03062f
 608:	160505ba 	lu32i.d	$r26,10285(0x282d)
 60c:	08051313 	0x08051313
 610:	14050106 	lu12i.w	$r6,10248(0x2808)
 614:	01040200 	0x01040200
 618:	000f054a 	bytepick.d	$r10,$r10,$r1,0x6
 61c:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a0720 <__stack_size+0x90720>
 620:	4b060905 	bcnez	$fcc0,1508872(0x170608) # 170c28 <__stack_size+0x160c28>
 624:	01061305 	0x01061305
 628:	4b060905 	bcnez	$fcc0,1508872(0x170608) # 170c30 <__stack_size+0x160c30>
 62c:	01060f05 	0x01060f05
 630:	4b060d05 	bcnez	$fcc0,1508876(0x17060c) # 170c3c <__stack_size+0x160c3c>
 634:	01061305 	0x01061305
 638:	054a1505 	0x054a1505
 63c:	054a4a13 	0x054a4a13
 640:	4eba490f 	jirl	$r15,$r8,-83384(0x2ba48)
 644:	bb060d05 	0xbb060d05
 648:	01061805 	0x01061805
 64c:	054a1505 	0x054a1505
 650:	13054a10 	addu16i.d	$r16,$r16,-16046(0xc152)
 654:	490f054a 	bcnez	$fcc2,2690820(0x290f04) # 291558 <__stack_size+0x281558>
 658:	4a500105 	bcnez	$fcc0,1462272(0x165000) # 165658 <__stack_size+0x155658>
 65c:	03063205 	lu52i.d	$r5,$r16,396(0x18c)
 660:	05058211 	0x05058211
 664:	05131313 	0x05131313
 668:	0501060b 	0x0501060b
 66c:	054b0609 	0x054b0609
 670:	0501060d 	0x0501060d
 674:	0c054a14 	0x0c054a14
 678:	820d0582 	0x820d0582
 67c:	054a1405 	0x054a1405
 680:	09054a0c 	0x09054a0c
 684:	05154a06 	0x05154a06
 688:	0501060c 	0x0501060c
 68c:	0b054a13 	0x0b054a13
 690:	500c0546 	b	85462020(0x5180c04) # 5181294 <__stack_size+0x5171294>
 694:	054b0105 	0x054b0105
 698:	0545060d 	0x0545060d
 69c:	050d0632 	0x050d0632
 6a0:	2f054f1a 	0x2f054f1a
 6a4:	87010582 	0x87010582
 6a8:	05451405 	0x05451405
 6ac:	1e054f01 	pcaddu18i	$r1,10872(0x2a78)
 6b0:	0205bc06 	slti	$r6,$r0,367(0x16f)
 6b4:	03010513 	lu52i.d	$r19,$r8,65(0x41)
 6b8:	05017f9e 	0x05017f9e
 6bc:	05131605 	0x05131605
 6c0:	0501060b 	0x0501060b
 6c4:	05830609 	0x05830609
 6c8:	0501060c 	0x0501060c
 6cc:	0b054a0f 	0x0b054a0f
 6d0:	01054a49 	fmul.d	$f9,$f18,$f18
 6d4:	0100de03 	fadd.s	$f3,$f16,$f23
 6d8:	01000402 	0x01000402
 6dc:	00012701 	0x00012701
 6e0:	32000200 	0x32000200
 6e4:	01000000 	0x01000000
 6e8:	0d0efb01 	0x0d0efb01
 6ec:	01010100 	fadd.d	$f0,$f8,$f0
 6f0:	00000001 	0x00000001
 6f4:	01000001 	0x01000001
 6f8:	692f2e2e 	bltu	$r17,$r14,77612(0x12f2c) # 13624 <__stack_size+0x3624>
 6fc:	756c636e 	0x756c636e
 700:	00006564 	rdtimeh.w	$r4,$r11
 704:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1746c <__stack_size+0x746c>
 708:	0000632e 	rdtimel.w	$r14,$r25
 70c:	69740000 	bltu	$r0,$r0,95232(0x17400) # 17b0c <__stack_size+0x7b0c>
 710:	682e656d 	bltu	$r11,$r13,11876(0x2e64) # 3574 <__stack_size-0xca8c>
 714:	00000100 	0x00000100
 718:	00010500 	asrtle.d	$r8,$r1
 71c:	55500205 	bl	-132820992(0x8155000) # f815571c <_stack+0xdc055720>
 720:	11031c00 	addu16i.d	$r0,$r0,16583(0x40c7)
 724:	13050501 	addu16i.d	$r1,$r8,-16063(0xc141)
 728:	71030f05 	vssrarn.h.w	$vr5,$vr24,$vr3
 72c:	14050501 	lu12i.w	$r1,10280(0x2828)
 730:	06010513 	cacop	0x13,$r8,65(0x41)
 734:	05010b03 	0x05010b03
 738:	82750305 	0x82750305
 73c:	01068906 	fdiv.s	$f6,$f8,$f2
 740:	06180105 	cacop	0x5,$r8,1536(0x600)
 744:	0505e708 	0x0505e708
 748:	054e1313 	0x054e1313
 74c:	06130601 	cacop	0x1,$r16,1217(0x4c1)
 750:	130505bd 	addu16i.d	$r29,$r13,-16063(0xc141)
 754:	030f0513 	lu52i.d	$r19,$r8,961(0x3c1)
 758:	05050161 	0x05050161
 75c:	01051314 	fmul.d	$f20,$f24,$f4
 760:	011a0306 	0x011a0306
 764:	66030505 	bge	$r8,$r5,-130300(0x20304) # fffe0a68 <_stack+0xe3ee0a6c>
 768:	06890682 	0x06890682
 76c:	16030601 	lu32i.d	$r1,6192(0x1830)
 770:	06150501 	cacop	0x1,$r8,1345(0x541)
 774:	83160501 	0x83160501
 778:	054b2705 	0x054b2705
 77c:	36054916 	0x36054916
 780:	4c2705b9 	jirl	$r25,$r13,9988(0x2704)
 784:	05492805 	0x05492805
 788:	3605bb27 	0x3605bb27
 78c:	bb1205ba 	0xbb1205ba
 790:	01054949 	fmul.d	$f9,$f10,$f18
 794:	0336054f 	lu52i.d	$r15,$r10,-639(0xd81)
 798:	1205827a 	addu16i.d	$r26,$r19,-32416(0x8160)
 79c:	060505ba 	cacop	0x1a,$r13,321(0x141)
 7a0:	1413134b 	lu12i.w	$r11,39066(0x989a)
 7a4:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
 7a8:	020a0306 	slti	$r6,$r24,640(0x280)
 7ac:	05050124 	0x05050124
 7b0:	0f051313 	0x0f051313
 7b4:	05014e03 	0x05014e03
 7b8:	05131405 	0x05131405
 7bc:	2d030601 	0x2d030601
 7c0:	03050501 	lu52i.d	$r1,$r8,321(0x141)
 7c4:	89068253 	0x89068253
 7c8:	03060106 	lu52i.d	$r6,$r8,384(0x180)
 7cc:	05130129 	0x05130129
 7d0:	05110606 	0x05110606
 7d4:	06824c01 	0x06824c01
 7d8:	05054008 	0x05054008
 7dc:	0f051313 	0x0f051313
 7e0:	05014503 	0x05014503
 7e4:	05131405 	0x05131405
 7e8:	36030601 	0x36030601
 7ec:	03050501 	lu52i.d	$r1,$r8,321(0x141)
 7f0:	8906824a 	0x8906824a
 7f4:	03060106 	lu52i.d	$r6,$r8,384(0x180)
 7f8:	05130132 	0x05130132
 7fc:	05110606 	0x05110606
 800:	02f24c01 	addi.d	$r1,$r0,-877(0xc93)
 804:	0101000c 	fadd.d	$f12,$f0,$f0

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	69616761 	bltu	$r27,$r1,90468(0x16164) # 16164 <__stack_size+0x6164>
   4:	6f6c006e 	bgeu	$r3,$r14,-37888(0x36c00) # ffff6c04 <_stack+0xe3ef6c08>
   8:	7520676e 	xvpickod.b	$xr14,$xr27,$xr25
   c:	6769736e 	bge	$r27,$r14,-38544(0x36970) # ffff697c <_stack+0xe3ef6980>
  10:	2064656e 	ll.w	$r14,$r11,25700(0x6464)
  14:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
  18:	20554e47 	ll.w	$r7,$r18,21836(0x554c)
  1c:	20373143 	ll.w	$r3,$r10,14128(0x3730)
  20:	2e332e38 	0x2e332e38
  24:	6d2d2030 	bgeu	$r1,$r16,77088(0x12d20) # 12d44 <__stack_size+0x2d44>
  28:	3d696261 	0x3d696261
  2c:	33706c69 	xvstelm.h	$xr9,$r3,54(0x36),0xc
  30:	2d207332 	0x2d207332
  34:	6372616d 	blt	$r11,$r13,-36256(0x37260) # ffff7294 <_stack+0xe3ef7298>
  38:	6f6c3d68 	bgeu	$r11,$r8,-37828(0x36c3c) # ffff6c74 <_stack+0xe3ef6c78>
  3c:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 167a8 <__stack_size+0x67a8>
  40:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
  44:	2d207232 	0x2d207232
  48:	7570666d 	0x7570666d
  4c:	6e6f6e3d 	bgeu	$r17,$r29,-102548(0x26f6c) # fffe6fb8 <_stack+0xe3ee6fbc>
  50:	6d2d2065 	bgeu	$r3,$r5,77088(0x12d20) # 12d70 <__stack_size+0x2d70>
  54:	646d6973 	bge	$r11,$r19,28008(0x6d68) # 6dbc <__stack_size-0x9244>
  58:	6e6f6e3d 	bgeu	$r17,$r29,-102548(0x26f6c) # fffe6fc4 <_stack+0xe3ee6fc8>
  5c:	6d2d2065 	bgeu	$r3,$r5,77088(0x12d20) # 12d7c <__stack_size+0x2d7c>
  60:	646f6d63 	bge	$r11,$r3,28524(0x6f6c) # 6fcc <__stack_size-0x9034>
  64:	6e3d6c65 	bgeu	$r3,$r5,-115348(0x23d6c) # fffe3dd0 <_stack+0xe3ee3dd4>
  68:	616d726f 	blt	$r19,$r15,93552(0x16d70) # 16dd8 <__stack_size+0x6dd8>
  6c:	6d2d206c 	bgeu	$r3,$r12,77088(0x12d20) # 12d8c <__stack_size+0x2d8c>
  70:	656e7574 	bge	$r11,$r20,93812(0x16e74) # 16ee4 <__stack_size+0x6ee4>
  74:	6f6f6c3d 	bgeu	$r1,$r29,-37012(0x36f6c) # ffff6fe0 <_stack+0xe3ef6fe4>
  78:	7261676e 	0x7261676e
  7c:	32336863 	0x32336863
  80:	672d2072 	bge	$r3,$r18,-53984(0x32d20) # ffff2da0 <_stack+0xe3ef2da4>
  84:	324f2d20 	xvldrepl.h	$xr0,$r9,1942(0x796)
  88:	6e662d20 	bgeu	$r9,$r0,-104916(0x2662c) # fffe66b4 <_stack+0xe3ee66b8>
  8c:	75622d6f 	0x75622d6f
  90:	69746c69 	bltu	$r3,$r9,95340(0x1746c) # 174fc <__stack_size+0x74fc>
  94:	662d206e 	bge	$r3,$r14,-119520(0x22d20) # fffe2db4 <_stack+0xe3ee2db8>
  98:	702d6f6e 	0x702d6f6e
  9c:	2f006369 	0x2f006369
  a0:	65646f63 	bge	$r27,$r3,91244(0x1646c) # 1650c <__stack_size+0x650c>
  a4:	6770662f 	bge	$r17,$r15,-36764(0x37064) # ffff7108 <_stack+0xe3ef710c>
  a8:	736e2f61 	vssrarni.du.q	$vr1,$vr27,0xb
  ac:	63637363 	blt	$r27,$r3,-40080(0x36370) # ffff641c <_stack+0xe3ef6420>
  b0:	6165742d 	blt	$r1,$r13,91508(0x16574) # 16624 <__stack_size+0x6624>
  b4:	6f732f6d 	bgeu	$r27,$r13,-36052(0x3732c) # ffff73e0 <_stack+0xe3ef73e4>
  b8:	61777466 	blt	$r3,$r6,96116(0x17774) # 1782c <__stack_size+0x782c>
  bc:	702f6572 	vaddwev.d.wu	$vr18,$vr11,$vr25
  c0:	2f667265 	0x2f667265
  c4:	0062696c 	bstrins.w	$r12,$r11,0x2,0x1a
  c8:	73747570 	0x73747570
  cc:	6e697274 	bgeu	$r19,$r20,-104080(0x26970) # fffe6a3c <_stack+0xe3ee6a40>
  d0:	72700067 	0x72700067
  d4:	66746e69 	bge	$r19,$r9,-101268(0x2746c) # fffe7540 <_stack+0xe3ee7544>
  d8:	7000632e 	vseq.b	$vr14,$vr25,$vr24
  dc:	746e6972 	0x746e6972
  e0:	65736162 	bge	$r11,$r2,95072(0x17360) # 17440 <__stack_size+0x7440>
  e4:	69727000 	bltu	$r0,$r0,94832(0x17270) # 17354 <__stack_size+0x7354>
  e8:	0066746e 	bstrins.w	$r14,$r3,0x6,0x1d
  ec:	74726175 	xvmin.b	$xr21,$xr11,$xr24
  f0:	7475705f 	xvmax.wu	$xr31,$xr2,$xr28
  f4:	72616863 	0x72616863
  f8:	74677400 	xvavg.wu	$xr0,$xr0,$xr29
  fc:	7475705f 	xvmax.wu	$xr31,$xr2,$xr28
 100:	72616863 	0x72616863
 104:	6e697500 	bgeu	$r8,$r0,-104076(0x26974) # fffe6a78 <_stack+0xe3ee6a7c>
 108:	5f323374 	bne	$r27,$r20,-52688(0x33230) # ffff3338 <_stack+0xe3ef333c>
 10c:	75700074 	0x75700074
 110:	61686374 	blt	$r27,$r20,92256(0x16860) # 16970 <__stack_size+0x6970>
 114:	00632e72 	bstrins.w	$r18,$r19,0x3,0xb
 118:	73747570 	0x73747570
 11c:	7000632e 	vseq.b	$vr14,$vr25,$vr24
 120:	00737475 	bstrins.w	$r21,$r3,0x13,0x1d
 124:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # fffe6a94 <_stack+0xe3ee6a98>
 128:	73616274 	vssrani.w.d	$vr20,$vr19,0x18
 12c:	00632e65 	bstrins.w	$r5,$r19,0x3,0xb
 130:	756c6176 	0x756c6176
 134:	69730065 	bltu	$r3,$r5,94976(0x17300) # 17434 <__stack_size+0x7434>
 138:	6c006e67 	bgeu	$r19,$r7,108(0x6c) # 1a4 <__stack_size-0xfe5c>
 13c:	20676e6f 	ll.w	$r15,$r19,26476(0x676c)
 140:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
 144:	63727473 	blt	$r3,$r19,-36236(0x37274) # ffff73b8 <_stack+0xe3ef73bc>
 148:	62007970 	blt	$r11,$r16,-130952(0x20078) # fffe01c0 <_stack+0xe3ee01c4>
 14c:	6f72657a 	bgeu	$r11,$r26,-36252(0x37264) # ffff73b0 <_stack+0xe3ef73b4>
 150:	72747300 	0x72747300
 154:	2e676e69 	0x2e676e69
 158:	69730063 	bltu	$r3,$r3,94976(0x17300) # 17458 <__stack_size+0x7458>
 15c:	745f657a 	0x745f657a
 160:	6d656d00 	bgeu	$r8,$r0,91500(0x1656c) # 166cc <__stack_size+0x66cc>
 164:	00706d63 	bstrins.w	$r3,$r11,0x10,0x1b
 168:	6e727473 	bgeu	$r3,$r19,-101772(0x27274) # fffe73dc <_stack+0xe3ee73e0>
 16c:	00797063 	bstrins.w	$r3,$r3,0x19,0x1c
 170:	6e727473 	bgeu	$r3,$r19,-101772(0x27274) # fffe73e4 <_stack+0xe3ee73e8>
 174:	006e656c 	bstrins.w	$r12,$r11,0xe,0x19
 178:	63727473 	blt	$r3,$r19,-36236(0x37274) # ffff73ec <_stack+0xe3ef73f0>
 17c:	73007268 	0x73007268
 180:	656c7274 	bge	$r19,$r20,93296(0x16c70) # 16df0 <__stack_size+0x6df0>
 184:	656d006e 	bge	$r3,$r14,93440(0x16d00) # 16e84 <__stack_size+0x6e84>
 188:	766f6d6d 	0x766f6d6d
 18c:	74730065 	xvmin.w	$xr5,$xr3,$xr0
 190:	6d636e72 	bgeu	$r19,$r18,90988(0x1636c) # 164fc <__stack_size+0x64fc>
 194:	74730070 	xvmin.w	$xr16,$xr3,$xr0
 198:	6e696672 	bgeu	$r19,$r18,-104092(0x26964) # fffe6afc <_stack+0xe3ee6b00>
 19c:	656d0064 	bge	$r3,$r4,93440(0x16d00) # 16e9c <__stack_size+0x6e9c>
 1a0:	7970636d 	0x7970636d
 1a4:	6d656d00 	bgeu	$r8,$r0,91500(0x1656c) # 16710 <__stack_size+0x6710>
 1a8:	00746573 	bstrins.w	$r19,$r11,0x14,0x19
 1ac:	5f746567 	bne	$r11,$r7,-35740(0x37464) # ffff7610 <_stack+0xe3ef7614>
 1b0:	6e756f63 	bgeu	$r27,$r3,-101012(0x2756c) # fffe771c <_stack+0xe3ee7720>
 1b4:	796d5f74 	0x796d5f74
 1b8:	65675f00 	bge	$r24,$r0,91996(0x1675c) # 16914 <__stack_size+0x6914>
 1bc:	6f635f74 	bgeu	$r27,$r20,-40100(0x3635c) # ffff6518 <_stack+0xe3ef651c>
 1c0:	00746e75 	bstrins.w	$r21,$r19,0x14,0x1b
 1c4:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 16f2c <__stack_size+0x6f2c>
 1c8:	63657073 	blt	$r3,$r19,-39568(0x36570) # ffff6738 <_stack+0xe3ef673c>
 1cc:	6c635f00 	bgeu	$r24,$r0,25436(0x635c) # 6528 <__stack_size-0x9ad8>
 1d0:	5f6b636f 	bne	$r27,$r15,-38048(0x36b60) # ffff6d30 <_stack+0xe3ef6d34>
 1d4:	76740074 	0x76740074
 1d8:	65736d5f 	bge	$r10,$r31,95084(0x1736c) # 17544 <__stack_size+0x7544>
 1dc:	69740063 	bltu	$r3,$r3,95232(0x17400) # 175dc <__stack_size+0x75dc>
 1e0:	632e656d 	blt	$r11,$r13,-53660(0x32e64) # ffff3044 <_stack+0xe3ef3048>
 1e4:	74656700 	xvavg.w	$xr0,$xr24,$xr25
 1e8:	0073755f 	bstrins.w	$r31,$r10,0x13,0x1d
 1ec:	5f746567 	bne	$r11,$r7,-35740(0x37464) # ffff7650 <_stack+0xe3ef7654>
 1f0:	636f6c63 	blt	$r3,$r3,-37012(0x36f6c) # ffff715c <_stack+0xe3ef7160>
 1f4:	7674006b 	0x7674006b
 1f8:	6573755f 	bge	$r10,$r31,95092(0x17374) # 1756c <__stack_size+0x756c>
 1fc:	635f0063 	blt	$r3,$r3,-41216(0x35f00) # ffff60fc <_stack+0xe3ef6100>
 200:	76746e6f 	0x76746e6f
 204:	74006c61 	xvseq.b	$xr1,$xr3,$xr27
 208:	65735f76 	bge	$r27,$r22,95068(0x1735c) # 17564 <__stack_size+0x7564>
 20c:	65670063 	bge	$r3,$r3,91904(0x16700) # 1690c <__stack_size+0x690c>
 210:	736e5f74 	vssrarni.du.q	$vr20,$vr27,0x17
 214:	5f767400 	bne	$r0,$r0,-35212(0x37674) # ffff7888 <_stack+0xe3ef788c>
 218:	6365736e 	blt	$r27,$r14,-39568(0x36570) # ffff6788 <_stack+0xe3ef678c>
 21c:	6f6c6300 	bgeu	$r24,$r0,-37792(0x36c60) # ffff6e7c <_stack+0xe3ef6e80>
 220:	675f6b63 	bge	$r27,$r3,-41112(0x35f68) # ffff6188 <_stack+0xe3ef618c>
 224:	69747465 	bltu	$r3,$r5,95348(0x17474) # 17698 <__stack_size+0x7698>
 228:	Address 0x0000000000000228 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	0x0000000c
   4:	ffffffff 	0xffffffff
   8:	7c010001 	0x7c010001
   c:	00030d01 	0x00030d01
  10:	00000034 	0x00000034
  14:	00000000 	0x00000000
  18:	1c004e10 	pcaddu12i	$r16,624(0x270)
  1c:	0000023c 	0x0000023c
  20:	5c600e44 	bne	$r18,$r4,24588(0x600c) # 602c <__stack_size-0x9fd4>
  24:	09810d9a 	0x09810d9a
  28:	0b980a97 	0x0b980a97
  2c:	0e9b0c99 	0x0e9b0c99
  30:	b4020f9c 	0xb4020f9c
  34:	d744c10a 	0xd744c10a
  38:	d944d844 	0xd944d844
  3c:	db44da44 	0xdb44da44
  40:	0e48dc44 	0x0e48dc44
  44:	000b4400 	0x000b4400
  48:	0000000c 	0x0000000c
  4c:	ffffffff 	0xffffffff
  50:	7c010001 	0x7c010001
  54:	00030d01 	0x00030d01
  58:	00000018 	0x00000018
  5c:	00000048 	0x00000048
  60:	1c005050 	pcaddu12i	$r16,642(0x282)
  64:	00000028 	0x00000028
  68:	44100e44 	bnez	$r18,1052684(0x10100c) # 101074 <__stack_size+0xf1074>
  6c:	d9580199 	0xd9580199
  70:	00000e44 	0x00000e44
  74:	00000018 	0x00000018
  78:	00000048 	0x00000048
  7c:	1c005080 	pcaddu12i	$r0,644(0x284)
  80:	00000024 	0x00000024
  84:	44100e44 	bnez	$r18,1052684(0x10100c) # 101090 <__stack_size+0xf1090>
  88:	d9540199 	0xd9540199
  8c:	00000e44 	0x00000e44
  90:	0000000c 	0x0000000c
  94:	00000048 	0x00000048
  98:	1c0050b0 	pcaddu12i	$r16,645(0x285)
  9c:	00000020 	0x00000020
  a0:	0000000c 	0x0000000c
  a4:	ffffffff 	0xffffffff
  a8:	7c010001 	0x7c010001
  ac:	00030d01 	0x00030d01
  b0:	00000024 	0x00000024
  b4:	000000a0 	0x000000a0
  b8:	1c0050d0 	pcaddu12i	$r16,646(0x286)
  bc:	00000074 	0x00000074
  c0:	50100e44 	b	-116387828(0x910100c) # f91010cc <_stack+0xdd0010d0>
  c4:	02970181 	addi.w	$r1,$r12,1472(0x5c0)
  c8:	04990398 	csrxchg	$r24,$r28,0x2640
  cc:	44c14802 	bnez	$r0,573768(0x8c148) # 8c214 <__stack_size+0x7c214>
  d0:	44d844d7 	bnez	$r6,-2303932(0x5cd844) # ffdcd914 <_stack+0xe3ccd918>
  d4:	000e48d9 	bytepick.d	$r25,$r6,$r18,0x4
  d8:	00000018 	0x00000018
  dc:	000000a0 	0x000000a0
  e0:	1c005150 	pcaddu12i	$r16,650(0x28a)
  e4:	0000002c 	0x0000002c
  e8:	44100e44 	bnez	$r18,1052684(0x10100c) # 1010f4 <__stack_size+0xf10f4>
  ec:	c1580181 	0xc1580181
  f0:	00000e48 	0x00000e48
  f4:	0000000c 	0x0000000c
  f8:	ffffffff 	0xffffffff
  fc:	7c010001 	0x7c010001
 100:	00030d01 	0x00030d01
 104:	00000028 	0x00000028
 108:	000000f4 	0x000000f4
 10c:	1c005180 	pcaddu12i	$r0,652(0x28c)
 110:	000000ec 	0x000000ec
 114:	50600e44 	b	-116367348(0x910600c) # f9106120 <_stack+0xdd006124>
 118:	01810297 	0x01810297
 11c:	04990398 	csrxchg	$r24,$r28,0x2640
 120:	c10a8c02 	0xc10a8c02
 124:	d844d744 	0xd844d744
 128:	0e48d944 	0x0e48d944
 12c:	000b4400 	0x000b4400
 130:	0000000c 	0x0000000c
 134:	ffffffff 	0xffffffff
 138:	7c010001 	0x7c010001
 13c:	00030d01 	0x00030d01
 140:	0000000c 	0x0000000c
 144:	00000130 	0x00000130
 148:	1c005270 	pcaddu12i	$r16,659(0x293)
 14c:	00000034 	0x00000034
 150:	0000000c 	0x0000000c
 154:	00000130 	0x00000130
 158:	1c0052b0 	pcaddu12i	$r16,661(0x295)
 15c:	00000034 	0x00000034
 160:	0000000c 	0x0000000c
 164:	00000130 	0x00000130
 168:	1c0052f0 	pcaddu12i	$r16,663(0x297)
 16c:	0000001c 	0x0000001c
 170:	0000000c 	0x0000000c
 174:	00000130 	0x00000130
 178:	1c005310 	pcaddu12i	$r16,664(0x298)
 17c:	0000002c 	0x0000002c
 180:	00000014 	0x00000014
 184:	00000130 	0x00000130
 188:	1c005340 	pcaddu12i	$r0,666(0x29a)
 18c:	0000006c 	0x0000006c
 190:	100e5002 	addu16i.d	$r2,$r0,916(0x394)
 194:	00000e54 	0x00000e54
 198:	0000000c 	0x0000000c
 19c:	00000130 	0x00000130
 1a0:	1c0053b0 	pcaddu12i	$r16,669(0x29d)
 1a4:	0000003c 	0x0000003c
 1a8:	0000000c 	0x0000000c
 1ac:	00000130 	0x00000130
 1b0:	1c0053f0 	pcaddu12i	$r16,671(0x29f)
 1b4:	00000028 	0x00000028
 1b8:	0000000c 	0x0000000c
 1bc:	00000130 	0x00000130
 1c0:	1c005420 	pcaddu12i	$r0,673(0x2a1)
 1c4:	00000020 	0x00000020
 1c8:	0000000c 	0x0000000c
 1cc:	00000130 	0x00000130
 1d0:	1c005440 	pcaddu12i	$r0,674(0x2a2)
 1d4:	00000028 	0x00000028
 1d8:	0000000c 	0x0000000c
 1dc:	00000130 	0x00000130
 1e0:	1c005470 	pcaddu12i	$r16,675(0x2a3)
 1e4:	0000005c 	0x0000005c
 1e8:	00000014 	0x00000014
 1ec:	00000130 	0x00000130
 1f0:	1c0054d0 	pcaddu12i	$r16,678(0x2a6)
 1f4:	00000058 	0x00000058
 1f8:	54100e7c 	bl	-101707764(0x9f0100c) # f9f01204 <_stack+0xdde01208>
 1fc:	0000000e 	0x0000000e
 200:	0000000c 	0x0000000c
 204:	00000130 	0x00000130
 208:	1c005530 	pcaddu12i	$r16,681(0x2a9)
 20c:	00000018 	0x00000018
 210:	0000000c 	0x0000000c
 214:	ffffffff 	0xffffffff
 218:	7c010001 	0x7c010001
 21c:	00030d01 	0x00030d01
 220:	00000018 	0x00000018
 224:	00000210 	0x00000210
 228:	1c005550 	pcaddu12i	$r16,682(0x2aa)
 22c:	0000001c 	0x0000001c
 230:	44100e44 	bnez	$r18,1052684(0x10100c) # 10123c <__stack_size+0xf123c>
 234:	d94c0199 	0xd94c0199
 238:	00000e44 	0x00000e44
 23c:	0000000c 	0x0000000c
 240:	00000210 	0x00000210
 244:	1c005570 	pcaddu12i	$r16,683(0x2ab)
 248:	00000004 	0x00000004
 24c:	0000000c 	0x0000000c
 250:	00000210 	0x00000210
 254:	1c005580 	pcaddu12i	$r0,684(0x2ac)
 258:	00000008 	0x00000008
 25c:	00000018 	0x00000018
 260:	00000210 	0x00000210
 264:	1c005590 	pcaddu12i	$r16,684(0x2ac)
 268:	00000084 	0x00000084
 26c:	44100e44 	bnez	$r18,1052684(0x10100c) # 101278 <__stack_size+0xf1278>
 270:	60020199 	blt	$r12,$r25,512(0x200) # 470 <__stack_size-0xfb90>
 274:	000e58d9 	bytepick.d	$r25,$r6,$r22,0x4
 278:	0000000c 	0x0000000c
 27c:	00000210 	0x00000210
 280:	1c005620 	pcaddu12i	$r0,689(0x2b1)
 284:	00000004 	0x00000004
 288:	00000018 	0x00000018
 28c:	00000210 	0x00000210
 290:	1c005630 	pcaddu12i	$r16,689(0x2b1)
 294:	00000024 	0x00000024
 298:	44100e44 	bnez	$r18,1052684(0x10100c) # 1012a4 <__stack_size+0xf12a4>
 29c:	d9500199 	0xd9500199
 2a0:	00000e48 	0x00000e48
 2a4:	00000018 	0x00000018
 2a8:	00000210 	0x00000210
 2ac:	1c005660 	pcaddu12i	$r0,691(0x2b3)
 2b0:	00000030 	0x00000030
 2b4:	44100e44 	bnez	$r18,1052684(0x10100c) # 1012c0 <__stack_size+0xf12c0>
 2b8:	d9500199 	0xd9500199
 2bc:	00000e54 	0x00000e54
