
obj/fireye_D1/main.elf:     file format elf32-loongarch
obj/fireye_D1/main.elf


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
1c000054:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c000058:	02ae718c 	addi.w	$r12,$r12,-1124(0xb9c)
1c00005c:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c000060:	02be91ad 	addi.w	$r13,$r13,-92(0xfa4)
1c000064:	1c00150e 	pcaddu12i	$r14,168(0xa8)
1c000068:	0287d1ce 	addi.w	$r14,$r14,500(0x1f4)
1c00006c:	6c0019ae 	bgeu	$r13,$r14,24(0x18) # 1c000084 <_start+0x84>
1c000070:	2880018f 	ld.w	$r15,$r12,0
1c000074:	298001af 	st.w	$r15,$r13,0
1c000078:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00007c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000080:	6bfff1ae 	bltu	$r13,$r14,-16(0x3fff0) # 1c000070 <_start+0x70>
1c000084:	1c00150c 	pcaddu12i	$r12,168(0xa8)
1c000088:	0287518c 	addi.w	$r12,$r12,468(0x1d4)
1c00008c:	1c00150d 	pcaddu12i	$r13,168(0xa8)
1c000090:	028731ad 	addi.w	$r13,$r13,460(0x1cc)
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
1c00038c:	54053400 	bl	1332(0x534) # 1c0008c0 <shell14>
1c000390:	03400000 	andi	$r0,$r0,0x0

1c000394 <go_finish>:
go_finish():
1c000394:	53fd6fff 	b	-660(0xffffd6c) # 1c000100 <test_finish>

Disassembly of section .text:

1c0003a0 <D1_max>:
D1_max():
1c0003a0:	640008a4 	bge	$r5,$r4,8(0x8) # 1c0003a8 <D1_max+0x8>
1c0003a4:	00150085 	move	$r5,$r4
1c0003a8:	001500a4 	move	$r4,$r5
1c0003ac:	4c000020 	jirl	$r0,$r1,0

1c0003b0 <D1_min>:
D1_min():
1c0003b0:	64000885 	bge	$r4,$r5,8(0x8) # 1c0003b8 <D1_min+0x8>
1c0003b4:	00150085 	move	$r5,$r4
1c0003b8:	001500a4 	move	$r4,$r5
1c0003bc:	4c000020 	jirl	$r0,$r1,0

1c0003c0 <shell14_main>:
shell14_main():
1c0003c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0003c4:	2980607a 	st.w	$r26,$r3,24(0x18)
1c0003c8:	1c00151a 	pcaddu12i	$r26,168(0xa8)
1c0003cc:	02ba135a 	addi.w	$r26,$r26,-380(0xe84)
1c0003d0:	2880034a 	ld.w	$r10,$r26,0
1c0003d4:	2980507b 	st.w	$r27,$r3,20(0x14)
1c0003d8:	14fffffb 	lu12i.w	$r27,524287(0x7ffff)
1c0003dc:	29809077 	st.w	$r23,$r3,36(0x24)
1c0003e0:	29808078 	st.w	$r24,$r3,32(0x20)
1c0003e4:	29807079 	st.w	$r25,$r3,28(0x1c)
1c0003e8:	2980407c 	st.w	$r28,$r3,16(0x10)
1c0003ec:	2980307d 	st.w	$r29,$r3,12(0xc)
1c0003f0:	2980207e 	st.w	$r30,$r3,8(0x8)
1c0003f4:	2980107f 	st.w	$r31,$r3,4(0x4)
1c0003f8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0003fc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c000400:	0280081c 	addi.w	$r28,$r0,2(0x2)
1c000404:	1c001519 	pcaddu12i	$r25,168(0xa8)
1c000408:	02b93339 	addi.w	$r25,$r25,-436(0xe4c)
1c00040c:	1c00151d 	pcaddu12i	$r29,168(0xa8)
1c000410:	02b8f3bd 	addi.w	$r29,$r29,-452(0xe3c)
1c000414:	1c00115f 	pcaddu12i	$r31,138(0x8a)
1c000418:	02a853ff 	addi.w	$r31,$r31,-1516(0xa14)
1c00041c:	1c00101e 	pcaddu12i	$r30,128(0x80)
1c000420:	02b733de 	addi.w	$r30,$r30,-564(0xdcc)
1c000424:	1c0013b8 	pcaddu12i	$r24,157(0x9d)
1c000428:	028a1318 	addi.w	$r24,$r24,644(0x284)
1c00042c:	1c001277 	pcaddu12i	$r23,147(0x93)
1c000430:	0298f2f7 	addi.w	$r23,$r23,1596(0x63c)
1c000434:	03bfff7b 	ori	$r27,$r27,0xfff
1c000438:	28800326 	ld.w	$r6,$r25,0
1c00043c:	640008ca 	bge	$r6,$r10,8(0x8) # 1c000444 <shell14_main+0x84>
1c000440:	00150146 	move	$r6,$r10
1c000444:	028004c1 	addi.w	$r1,$r6,1(0x1)
1c000448:	02bffc05 	addi.w	$r5,$r0,-1(0xfff)
1c00044c:	001503e4 	move	$r4,$r31
1c000450:	00408826 	slli.w	$r6,$r1,0x2
1c000454:	54152c00 	bl	5420(0x152c) # 1c001980 <memset>
1c000458:	2880034c 	ld.w	$r12,$r26,0
1c00045c:	28800324 	ld.w	$r4,$r25,0
1c000460:	6400088c 	bge	$r4,$r12,8(0x8) # 1c000468 <shell14_main+0xa8>
1c000464:	00150184 	move	$r4,$r12
1c000468:	02800487 	addi.w	$r7,$r4,1(0x1)
1c00046c:	02bffc05 	addi.w	$r5,$r0,-1(0xfff)
1c000470:	001503c4 	move	$r4,$r30
1c000474:	004088e6 	slli.w	$r6,$r7,0x2
1c000478:	54150800 	bl	5384(0x1508) # 1c001980 <memset>
1c00047c:	28800345 	ld.w	$r5,$r26,0
1c000480:	2880032c 	ld.w	$r12,$r25,0
1c000484:	64000985 	bge	$r12,$r5,8(0x8) # 1c00048c <shell14_main+0xcc>
1c000488:	001500ac 	move	$r12,$r5
1c00048c:	02800588 	addi.w	$r8,$r12,1(0x1)
1c000490:	00150005 	move	$r5,$r0
1c000494:	00150304 	move	$r4,$r24
1c000498:	00408906 	slli.w	$r6,$r8,0x2
1c00049c:	5414e400 	bl	5348(0x14e4) # 1c001980 <memset>
1c0004a0:	28800349 	ld.w	$r9,$r26,0
1c0004a4:	2880032c 	ld.w	$r12,$r25,0
1c0004a8:	64000989 	bge	$r12,$r9,8(0x8) # 1c0004b0 <shell14_main+0xf0>
1c0004ac:	0015012c 	move	$r12,$r9
1c0004b0:	0280058a 	addi.w	$r10,$r12,1(0x1)
1c0004b4:	00408946 	slli.w	$r6,$r10,0x2
1c0004b8:	00150005 	move	$r5,$r0
1c0004bc:	001502e4 	move	$r4,$r23
1c0004c0:	5414c000 	bl	5312(0x14c0) # 1c001980 <memset>
1c0004c4:	288003ab 	ld.w	$r11,$r29,0
1c0004c8:	1c0014ed 	pcaddu12i	$r13,167(0xa7)
1c0004cc:	029741ad 	addi.w	$r13,$r13,1488(0x5d0)
1c0004d0:	1c0014ef 	pcaddu12i	$r15,167(0xa7)
1c0004d4:	02b861ef 	addi.w	$r15,$r15,-488(0xe18)
1c0004d8:	00408974 	slli.w	$r20,$r11,0x2
1c0004dc:	02bffc16 	addi.w	$r22,$r0,-1(0xfff)
1c0004e0:	00103686 	add.w	$r6,$r20,$r13
1c0004e4:	64004c0b 	bge	$r0,$r11,76(0x4c) # 1c000530 <shell14_main+0x170>
1c0004e8:	288001b0 	ld.w	$r16,$r13,0
1c0004ec:	288001ee 	ld.w	$r14,$r15,0
1c0004f0:	00408a01 	slli.w	$r1,$r16,0x2
1c0004f4:	001007f1 	add.w	$r17,$r31,$r1
1c0004f8:	28800224 	ld.w	$r4,$r17,0
1c0004fc:	001007d3 	add.w	$r19,$r30,$r1
1c000500:	00150092 	move	$r18,$r4
1c000504:	58036496 	beq	$r4,$r22,868(0x364) # 1c000868 <shell14_main+0x4a8>
1c000508:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00050c:	640009c4 	bge	$r14,$r4,8(0x8) # 1c000514 <shell14_main+0x154>
1c000510:	001501d2 	move	$r18,$r14
1c000514:	28800267 	ld.w	$r7,$r19,0
1c000518:	29800232 	st.w	$r18,$r17,0
1c00051c:	028011ef 	addi.w	$r15,$r15,4(0x4)
1c000520:	640008ee 	bge	$r7,$r14,8(0x8) # 1c000528 <shell14_main+0x168>
1c000524:	001501c7 	move	$r7,$r14
1c000528:	29800267 	st.w	$r7,$r19,0
1c00052c:	5fffbda6 	bne	$r13,$r6,-68(0x3ffbc) # 1c0004e8 <shell14_main+0x128>
1c000530:	2880034a 	ld.w	$r10,$r26,0
1c000534:	0280054c 	addi.w	$r12,$r10,1(0x1)
1c000538:	60036140 	blt	$r10,$r0,864(0x360) # 1c000898 <shell14_main+0x4d8>
1c00053c:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c000540:	02b2b1ad 	addi.w	$r13,$r13,-852(0xcac)
1c000544:	0040894b 	slli.w	$r11,$r10,0x2
1c000548:	028011a9 	addi.w	$r9,$r13,4(0x4)
1c00054c:	00102561 	add.w	$r1,$r11,$r9
1c000550:	00113434 	sub.w	$r20,$r1,$r13
1c000554:	02bff286 	addi.w	$r6,$r20,-4(0xffc)
1c000558:	004488d1 	srli.w	$r17,$r6,0x2
1c00055c:	02800633 	addi.w	$r19,$r17,1(0x1)
1c000560:	03400e64 	andi	$r4,$r19,0x3
1c000564:	1c00114e 	pcaddu12i	$r14,138(0x8a)
1c000568:	02a311ce 	addi.w	$r14,$r14,-1852(0x8c4)
1c00056c:	0015000f 	move	$r15,$r0
1c000570:	00150010 	move	$r16,$r0
1c000574:	02bffc16 	addi.w	$r22,$r0,-1(0xfff)
1c000578:	5800e080 	beq	$r4,$r0,224(0xe0) # 1c000658 <shell14_main+0x298>
1c00057c:	02800412 	addi.w	$r18,$r0,1(0x1)
1c000580:	58009092 	beq	$r4,$r18,144(0x90) # 1c000610 <shell14_main+0x250>
1c000584:	02800807 	addi.w	$r7,$r0,2(0x2)
1c000588:	58004487 	beq	$r4,$r7,68(0x44) # 1c0005cc <shell14_main+0x20c>
1c00058c:	288001a5 	ld.w	$r5,$r13,0
1c000590:	580034b6 	beq	$r5,$r22,52(0x34) # 1c0005c4 <shell14_main+0x204>
1c000594:	288001cf 	ld.w	$r15,$r14,0
1c000598:	004088b0 	slli.w	$r16,$r5,0x2
1c00059c:	00104308 	add.w	$r8,$r24,$r16
1c0005a0:	004089e6 	slli.w	$r6,$r15,0x2
1c0005a4:	00101af1 	add.w	$r17,$r23,$r6
1c0005a8:	28800109 	ld.w	$r9,$r8,0
1c0005ac:	28800233 	ld.w	$r19,$r17,0
1c0005b0:	02800410 	addi.w	$r16,$r0,1(0x1)
1c0005b4:	02800534 	addi.w	$r20,$r9,1(0x1)
1c0005b8:	02800664 	addi.w	$r4,$r19,1(0x1)
1c0005bc:	29800114 	st.w	$r20,$r8,0
1c0005c0:	29800224 	st.w	$r4,$r17,0
1c0005c4:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0005c8:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0005cc:	288001b2 	ld.w	$r18,$r13,0
1c0005d0:	58003a56 	beq	$r18,$r22,56(0x38) # 1c000608 <shell14_main+0x248>
1c0005d4:	288001c8 	ld.w	$r8,$r14,0
1c0005d8:	00408a47 	slli.w	$r7,$r18,0x2
1c0005dc:	00101f05 	add.w	$r5,$r24,$r7
1c0005e0:	00408909 	slli.w	$r9,$r8,0x2
1c0005e4:	001026f4 	add.w	$r20,$r23,$r9
1c0005e8:	288000a6 	ld.w	$r6,$r5,0
1c0005ec:	28800293 	ld.w	$r19,$r20,0
1c0005f0:	02800610 	addi.w	$r16,$r16,1(0x1)
1c0005f4:	028004d1 	addi.w	$r17,$r6,1(0x1)
1c0005f8:	02800664 	addi.w	$r4,$r19,1(0x1)
1c0005fc:	001021ef 	add.w	$r15,$r15,$r8
1c000600:	298000b1 	st.w	$r17,$r5,0
1c000604:	29800284 	st.w	$r4,$r20,0
1c000608:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c00060c:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c000610:	288001b2 	ld.w	$r18,$r13,0
1c000614:	58003a56 	beq	$r18,$r22,56(0x38) # 1c00064c <shell14_main+0x28c>
1c000618:	288001c8 	ld.w	$r8,$r14,0
1c00061c:	00408a47 	slli.w	$r7,$r18,0x2
1c000620:	00101f05 	add.w	$r5,$r24,$r7
1c000624:	00408909 	slli.w	$r9,$r8,0x2
1c000628:	001026f4 	add.w	$r20,$r23,$r9
1c00062c:	288000a6 	ld.w	$r6,$r5,0
1c000630:	28800293 	ld.w	$r19,$r20,0
1c000634:	02800610 	addi.w	$r16,$r16,1(0x1)
1c000638:	028004d1 	addi.w	$r17,$r6,1(0x1)
1c00063c:	02800664 	addi.w	$r4,$r19,1(0x1)
1c000640:	001021ef 	add.w	$r15,$r15,$r8
1c000644:	298000b1 	st.w	$r17,$r5,0
1c000648:	29800284 	st.w	$r4,$r20,0
1c00064c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000650:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c000654:	5801082d 	beq	$r1,$r13,264(0x108) # 1c00075c <shell14_main+0x39c>
1c000658:	288001a7 	ld.w	$r7,$r13,0
1c00065c:	028011b2 	addi.w	$r18,$r13,4(0x4)
1c000660:	028011c5 	addi.w	$r5,$r14,4(0x4)
1c000664:	004088e9 	slli.w	$r9,$r7,0x2
1c000668:	580034f6 	beq	$r7,$r22,52(0x34) # 1c00069c <shell14_main+0x2dc>
1c00066c:	288001c8 	ld.w	$r8,$r14,0
1c000670:	00102714 	add.w	$r20,$r24,$r9
1c000674:	28800286 	ld.w	$r6,$r20,0
1c000678:	00408911 	slli.w	$r17,$r8,0x2
1c00067c:	001046f3 	add.w	$r19,$r23,$r17
1c000680:	28800267 	ld.w	$r7,$r19,0
1c000684:	028004c4 	addi.w	$r4,$r6,1(0x1)
1c000688:	02800610 	addi.w	$r16,$r16,1(0x1)
1c00068c:	028004e9 	addi.w	$r9,$r7,1(0x1)
1c000690:	001021ef 	add.w	$r15,$r15,$r8
1c000694:	29800284 	st.w	$r4,$r20,0
1c000698:	29800269 	st.w	$r9,$r19,0
1c00069c:	288011a8 	ld.w	$r8,$r13,4(0x4)
1c0006a0:	0040890d 	slli.w	$r13,$r8,0x2
1c0006a4:	58003516 	beq	$r8,$r22,52(0x34) # 1c0006d8 <shell14_main+0x318>
1c0006a8:	288011d4 	ld.w	$r20,$r14,4(0x4)
1c0006ac:	00103706 	add.w	$r6,$r24,$r13
1c0006b0:	288000d1 	ld.w	$r17,$r6,0
1c0006b4:	00408a8e 	slli.w	$r14,$r20,0x2
1c0006b8:	00103af3 	add.w	$r19,$r23,$r14
1c0006bc:	28800267 	ld.w	$r7,$r19,0
1c0006c0:	02800624 	addi.w	$r4,$r17,1(0x1)
1c0006c4:	02800610 	addi.w	$r16,$r16,1(0x1)
1c0006c8:	028004e9 	addi.w	$r9,$r7,1(0x1)
1c0006cc:	001051ef 	add.w	$r15,$r15,$r20
1c0006d0:	298000c4 	st.w	$r4,$r6,0
1c0006d4:	29800269 	st.w	$r9,$r19,0
1c0006d8:	28801248 	ld.w	$r8,$r18,4(0x4)
1c0006dc:	0280324d 	addi.w	$r13,$r18,12(0xc)
1c0006e0:	028030ae 	addi.w	$r14,$r5,12(0xc)
1c0006e4:	00408914 	slli.w	$r20,$r8,0x2
1c0006e8:	58003516 	beq	$r8,$r22,52(0x34) # 1c00071c <shell14_main+0x35c>
1c0006ec:	288010a6 	ld.w	$r6,$r5,4(0x4)
1c0006f0:	00105311 	add.w	$r17,$r24,$r20
1c0006f4:	28800233 	ld.w	$r19,$r17,0
1c0006f8:	004088c4 	slli.w	$r4,$r6,0x2
1c0006fc:	001012e7 	add.w	$r7,$r23,$r4
1c000700:	288000e8 	ld.w	$r8,$r7,0
1c000704:	02800669 	addi.w	$r9,$r19,1(0x1)
1c000708:	02800610 	addi.w	$r16,$r16,1(0x1)
1c00070c:	02800514 	addi.w	$r20,$r8,1(0x1)
1c000710:	001019ef 	add.w	$r15,$r15,$r6
1c000714:	29800229 	st.w	$r9,$r17,0
1c000718:	298000f4 	st.w	$r20,$r7,0
1c00071c:	28802246 	ld.w	$r6,$r18,8(0x8)
1c000720:	004088d2 	slli.w	$r18,$r6,0x2
1c000724:	580034d6 	beq	$r6,$r22,52(0x34) # 1c000758 <shell14_main+0x398>
1c000728:	288020a5 	ld.w	$r5,$r5,8(0x8)
1c00072c:	00104b11 	add.w	$r17,$r24,$r18
1c000730:	28800233 	ld.w	$r19,$r17,0
1c000734:	004088a4 	slli.w	$r4,$r5,0x2
1c000738:	001012e9 	add.w	$r9,$r23,$r4
1c00073c:	28800128 	ld.w	$r8,$r9,0
1c000740:	02800667 	addi.w	$r7,$r19,1(0x1)
1c000744:	02800610 	addi.w	$r16,$r16,1(0x1)
1c000748:	02800514 	addi.w	$r20,$r8,1(0x1)
1c00074c:	001015ef 	add.w	$r15,$r15,$r5
1c000750:	29800227 	st.w	$r7,$r17,0
1c000754:	29800134 	st.w	$r20,$r9,0
1c000758:	5fff002d 	bne	$r1,$r13,-256(0x3ff00) # 1c000658 <shell14_main+0x298>
1c00075c:	00102f12 	add.w	$r18,$r24,$r11
1c000760:	00102ef1 	add.w	$r17,$r23,$r11
1c000764:	00150013 	move	$r19,$r0
1c000768:	00150005 	move	$r5,$r0
1c00076c:	00150376 	move	$r22,$r27
1c000770:	02bffc0b 	addi.w	$r11,$r0,-1(0xfff)
1c000774:	28801241 	ld.w	$r1,$r18,4(0x4)
1c000778:	64001001 	bge	$r0,$r1,16(0x10) # 1c000788 <shell14_main+0x3c8>
1c00077c:	001c302d 	mul.w	$r13,$r1,$r12
1c000780:	001004a5 	add.w	$r5,$r5,$r1
1c000784:	00103673 	add.w	$r19,$r19,$r13
1c000788:	2880122e 	ld.w	$r14,$r17,4(0x4)
1c00078c:	6400a80e 	bge	$r0,$r14,168(0xa8) # 1c000834 <shell14_main+0x474>
1c000790:	001c31c1 	mul.w	$r1,$r14,$r12
1c000794:	00113a10 	sub.w	$r16,$r16,$r14
1c000798:	02bff252 	addi.w	$r18,$r18,-4(0xffc)
1c00079c:	02bff231 	addi.w	$r17,$r17,-4(0xffc)
1c0007a0:	001c30ae 	mul.w	$r14,$r5,$r12
1c0007a4:	001105ef 	sub.w	$r15,$r15,$r1
1c0007a8:	001c320d 	mul.w	$r13,$r16,$r12
1c0007ac:	00113a66 	sub.w	$r6,$r19,$r14
1c0007b0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0007b4:	00113da4 	sub.w	$r4,$r13,$r15
1c0007b8:	00101889 	add.w	$r9,$r4,$r6
1c0007bc:	00408534 	slli.w	$r20,$r9,0x1
1c0007c0:	60009e96 	blt	$r20,$r22,156(0x9c) # 1c00085c <shell14_main+0x49c>
1c0007c4:	5fffb18b 	bne	$r12,$r11,-80(0x3ffb0) # 1c000774 <shell14_main+0x3b4>
1c0007c8:	02800410 	addi.w	$r16,$r0,1(0x1)
1c0007cc:	5c00e790 	bne	$r28,$r16,228(0xe4) # 1c0008b0 <shell14_main+0x4f0>
1c0007d0:	28800337 	ld.w	$r23,$r25,0
1c0007d4:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0007d8:	02a0b084 	addi.w	$r4,$r4,-2004(0x82c)
1c0007dc:	15fff85a 	lu12i.w	$r26,-62(0xfffc2)
1c0007e0:	00105ed8 	add.w	$r24,$r22,$r23
1c0007e4:	02bfff05 	addi.w	$r5,$r24,-1(0xfff)
1c0007e8:	540b8800 	bl	2952(0xb88) # 1c001370 <printf>
1c0007ec:	28800339 	ld.w	$r25,$r25,0
1c0007f0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0007f4:	0384bb5c 	ori	$r28,$r26,0x12e
1c0007f8:	001066dd 	add.w	$r29,$r22,$r25
1c0007fc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c000800:	001073be 	add.w	$r30,$r29,$r28
1c000804:	0012f804 	sltu	$r4,$r0,$r30
1c000808:	28809077 	ld.w	$r23,$r3,36(0x24)
1c00080c:	28808078 	ld.w	$r24,$r3,32(0x20)
1c000810:	28807079 	ld.w	$r25,$r3,28(0x1c)
1c000814:	2880607a 	ld.w	$r26,$r3,24(0x18)
1c000818:	2880507b 	ld.w	$r27,$r3,20(0x14)
1c00081c:	2880407c 	ld.w	$r28,$r3,16(0x10)
1c000820:	2880307d 	ld.w	$r29,$r3,12(0xc)
1c000824:	2880207e 	ld.w	$r30,$r3,8(0x8)
1c000828:	2880107f 	ld.w	$r31,$r3,4(0x4)
1c00082c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c000830:	4c000020 	jirl	$r0,$r1,0
1c000834:	001c4186 	mul.w	$r6,$r12,$r16
1c000838:	02bff252 	addi.w	$r18,$r18,-4(0xffc)
1c00083c:	02bff231 	addi.w	$r17,$r17,-4(0xffc)
1c000840:	001c30a4 	mul.w	$r4,$r5,$r12
1c000844:	00113cc9 	sub.w	$r9,$r6,$r15
1c000848:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00084c:	00111267 	sub.w	$r7,$r19,$r4
1c000850:	00101d28 	add.w	$r8,$r9,$r7
1c000854:	00408514 	slli.w	$r20,$r8,0x1
1c000858:	67ff6e96 	bge	$r20,$r22,-148(0x3ff6c) # 1c0007c4 <shell14_main+0x404>
1c00085c:	00150296 	move	$r22,$r20
1c000860:	5fff158b 	bne	$r12,$r11,-236(0x3ff14) # 1c000774 <shell14_main+0x3b4>
1c000864:	53ff67ff 	b	-156(0xfffff64) # 1c0007c8 <shell14_main+0x408>
1c000868:	001007c5 	add.w	$r5,$r30,$r1
1c00086c:	288000a8 	ld.w	$r8,$r5,0
1c000870:	2980022e 	st.w	$r14,$r17,0
1c000874:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000878:	028011ef 	addi.w	$r15,$r15,4(0x4)
1c00087c:	6400090e 	bge	$r8,$r14,8(0x8) # 1c000884 <shell14_main+0x4c4>
1c000880:	001501c8 	move	$r8,$r14
1c000884:	298000a8 	st.w	$r8,$r5,0
1c000888:	5ffc60cd 	bne	$r6,$r13,-928(0x3fc60) # 1c0004e8 <shell14_main+0x128>
1c00088c:	2880034a 	ld.w	$r10,$r26,0
1c000890:	0280054c 	addi.w	$r12,$r10,1(0x1)
1c000894:	67fca940 	bge	$r10,$r0,-856(0x3fca8) # 1c00053c <shell14_main+0x17c>
1c000898:	00150376 	move	$r22,$r27
1c00089c:	63ff2d80 	blt	$r12,$r0,-212(0x3ff2c) # 1c0007c8 <shell14_main+0x408>
1c0008a0:	0015000f 	move	$r15,$r0
1c0008a4:	00150010 	move	$r16,$r0
1c0008a8:	0040894b 	slli.w	$r11,$r10,0x2
1c0008ac:	53feb3ff 	b	-336(0xffffeb0) # 1c00075c <shell14_main+0x39c>
1c0008b0:	0280041c 	addi.w	$r28,$r0,1(0x1)
1c0008b4:	53fb87ff 	b	-1148(0xffffb84) # 1c000438 <shell14_main+0x78>
1c0008b8:	03400000 	andi	$r0,$r0,0x0
1c0008bc:	03400000 	andi	$r0,$r0,0x0

1c0008c0 <shell14>:
shell14():
1c0008c0:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c0008c4:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c0008c8:	029d0084 	addi.w	$r4,$r4,1856(0x740)
1c0008cc:	29813061 	st.w	$r1,$r3,76(0x4c)
1c0008d0:	29812076 	st.w	$r22,$r3,72(0x48)
1c0008d4:	29811077 	st.w	$r23,$r3,68(0x44)
1c0008d8:	29810078 	st.w	$r24,$r3,64(0x40)
1c0008dc:	2980f079 	st.w	$r25,$r3,60(0x3c)
1c0008e0:	2980e07a 	st.w	$r26,$r3,56(0x38)
1c0008e4:	2980d07b 	st.w	$r27,$r3,52(0x34)
1c0008e8:	2980c07c 	st.w	$r28,$r3,48(0x30)
1c0008ec:	2980b07d 	st.w	$r29,$r3,44(0x2c)
1c0008f0:	2980a07e 	st.w	$r30,$r3,40(0x28)
1c0008f4:	2980907f 	st.w	$r31,$r3,36(0x24)
1c0008f8:	540db800 	bl	3512(0xdb8) # 1c0016b0 <puts>
1c0008fc:	5411b400 	bl	4532(0x11b4) # 1c001ab0 <get_count>
1c000900:	29806064 	st.w	$r4,$r3,24(0x18)
1c000904:	5411dc00 	bl	4572(0x11dc) # 1c001ae0 <get_count_my>
1c000908:	157f5fec 	lu12i.w	$r12,-263425(0xbfaff)
1c00090c:	29807064 	st.w	$r4,$r3,28(0x1c)
1c000910:	03bc8184 	ori	$r4,$r12,0xf20
1c000914:	28800085 	ld.w	$r5,$r4,0
1c000918:	5c05c0a0 	bne	$r5,$r0,1472(0x5c0) # 1c000ed8 <shell14+0x618>
1c00091c:	1c001517 	pcaddu12i	$r23,168(0xa8)
1c000920:	02a4d2f7 	addi.w	$r23,$r23,-1740(0x934)
1c000924:	14fffffe 	lu12i.w	$r30,524287(0x7ffff)
1c000928:	15fff85f 	lu12i.w	$r31,-62(0xfffc2)
1c00092c:	288002ea 	ld.w	$r10,$r23,0
1c000930:	0015001a 	move	$r26,$r0
1c000934:	03bfffc1 	ori	$r1,$r30,0xfff
1c000938:	0384bbe7 	ori	$r7,$r31,0x12e
1c00093c:	0280281c 	addi.w	$r28,$r0,10(0xa)
1c000940:	1c001518 	pcaddu12i	$r24,168(0xa8)
1c000944:	02a43318 	addi.w	$r24,$r24,-1780(0x90c)
1c000948:	1c001516 	pcaddu12i	$r22,168(0xa8)
1c00094c:	02a402d6 	addi.w	$r22,$r22,-1792(0x900)
1c000950:	1c00113d 	pcaddu12i	$r29,137(0x89)
1c000954:	029363bd 	addi.w	$r29,$r29,1240(0x4d8)
1c000958:	29804061 	st.w	$r1,$r3,16(0x10)
1c00095c:	29805067 	st.w	$r7,$r3,20(0x14)
1c000960:	2980307a 	st.w	$r26,$r3,12(0xc)
1c000964:	28800313 	ld.w	$r19,$r24,0
1c000968:	0280081b 	addi.w	$r27,$r0,2(0x2)
1c00096c:	1c001019 	pcaddu12i	$r25,128(0x80)
1c000970:	02a1f339 	addi.w	$r25,$r25,-1924(0x87c)
1c000974:	1c0013ba 	pcaddu12i	$r26,157(0x9d)
1c000978:	02b4d35a 	addi.w	$r26,$r26,-716(0xd34)
1c00097c:	1c00127f 	pcaddu12i	$r31,147(0x93)
1c000980:	0283b3ff 	addi.w	$r31,$r31,236(0xec)
1c000984:	64000953 	bge	$r10,$r19,8(0x8) # 1c00098c <shell14+0xcc>
1c000988:	0015026a 	move	$r10,$r19
1c00098c:	02800546 	addi.w	$r6,$r10,1(0x1)
1c000990:	02bffc05 	addi.w	$r5,$r0,-1(0xfff)
1c000994:	001503a4 	move	$r4,$r29
1c000998:	004088c6 	slli.w	$r6,$r6,0x2
1c00099c:	540fe400 	bl	4068(0xfe4) # 1c001980 <memset>
1c0009a0:	28800308 	ld.w	$r8,$r24,0
1c0009a4:	288002ec 	ld.w	$r12,$r23,0
1c0009a8:	64000988 	bge	$r12,$r8,8(0x8) # 1c0009b0 <shell14+0xf0>
1c0009ac:	0015010c 	move	$r12,$r8
1c0009b0:	02800589 	addi.w	$r9,$r12,1(0x1)
1c0009b4:	02bffc05 	addi.w	$r5,$r0,-1(0xfff)
1c0009b8:	00150324 	move	$r4,$r25
1c0009bc:	00408926 	slli.w	$r6,$r9,0x2
1c0009c0:	540fc000 	bl	4032(0xfc0) # 1c001980 <memset>
1c0009c4:	2880030a 	ld.w	$r10,$r24,0
1c0009c8:	288002ec 	ld.w	$r12,$r23,0
1c0009cc:	6400098a 	bge	$r12,$r10,8(0x8) # 1c0009d4 <shell14+0x114>
1c0009d0:	0015014c 	move	$r12,$r10
1c0009d4:	0280058b 	addi.w	$r11,$r12,1(0x1)
1c0009d8:	00150005 	move	$r5,$r0
1c0009dc:	00150344 	move	$r4,$r26
1c0009e0:	00408966 	slli.w	$r6,$r11,0x2
1c0009e4:	540f9c00 	bl	3996(0xf9c) # 1c001980 <memset>
1c0009e8:	2880030d 	ld.w	$r13,$r24,0
1c0009ec:	288002ec 	ld.w	$r12,$r23,0
1c0009f0:	6400098d 	bge	$r12,$r13,8(0x8) # 1c0009f8 <shell14+0x138>
1c0009f4:	001501ac 	move	$r12,$r13
1c0009f8:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c0009fc:	00150005 	move	$r5,$r0
1c000a00:	001503e4 	move	$r4,$r31
1c000a04:	004089c6 	slli.w	$r6,$r14,0x2
1c000a08:	540f7800 	bl	3960(0xf78) # 1c001980 <memset>
1c000a0c:	288002d1 	ld.w	$r17,$r22,0
1c000a10:	1c0014e9 	pcaddu12i	$r9,167(0xa7)
1c000a14:	02822129 	addi.w	$r9,$r9,136(0x88)
1c000a18:	1c0014ef 	pcaddu12i	$r15,167(0xa7)
1c000a1c:	02a341ef 	addi.w	$r15,$r15,-1840(0x8d0)
1c000a20:	00408a30 	slli.w	$r16,$r17,0x2
1c000a24:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
1c000a28:	00102605 	add.w	$r5,$r16,$r9
1c000a2c:	64004c11 	bge	$r0,$r17,76(0x4c) # 1c000a78 <shell14+0x1b8>
1c000a30:	28800132 	ld.w	$r18,$r9,0
1c000a34:	288001fe 	ld.w	$r30,$r15,0
1c000a38:	00408a41 	slli.w	$r1,$r18,0x2
1c000a3c:	001007a7 	add.w	$r7,$r29,$r1
1c000a40:	288000f4 	ld.w	$r20,$r7,0
1c000a44:	00100733 	add.w	$r19,$r25,$r1
1c000a48:	00150286 	move	$r6,$r20
1c000a4c:	5803d684 	beq	$r20,$r4,980(0x3d4) # 1c000e20 <shell14+0x560>
1c000a50:	02801129 	addi.w	$r9,$r9,4(0x4)
1c000a54:	64000bd4 	bge	$r30,$r20,8(0x8) # 1c000a5c <shell14+0x19c>
1c000a58:	001503c6 	move	$r6,$r30
1c000a5c:	2880026e 	ld.w	$r14,$r19,0
1c000a60:	298000e6 	st.w	$r6,$r7,0
1c000a64:	028011ef 	addi.w	$r15,$r15,4(0x4)
1c000a68:	640009de 	bge	$r14,$r30,8(0x8) # 1c000a70 <shell14+0x1b0>
1c000a6c:	001503ce 	move	$r14,$r30
1c000a70:	2980026e 	st.w	$r14,$r19,0
1c000a74:	5fffbca9 	bne	$r5,$r9,-68(0x3ffbc) # 1c000a30 <shell14+0x170>
1c000a78:	28800313 	ld.w	$r19,$r24,0
1c000a7c:	0280066f 	addi.w	$r15,$r19,1(0x1)
1c000a80:	6003d260 	blt	$r19,$r0,976(0x3d0) # 1c000e50 <shell14+0x590>
1c000a84:	1c000fee 	pcaddu12i	$r14,127(0x7f)
1c000a88:	029d91ce 	addi.w	$r14,$r14,1892(0x764)
1c000a8c:	00408a6a 	slli.w	$r10,$r19,0x2
1c000a90:	028011cb 	addi.w	$r11,$r14,4(0x4)
1c000a94:	00102d45 	add.w	$r5,$r10,$r11
1c000a98:	001138a4 	sub.w	$r4,$r5,$r14
1c000a9c:	02bff090 	addi.w	$r16,$r4,-4(0xffc)
1c000aa0:	00448a1e 	srli.w	$r30,$r16,0x2
1c000aa4:	028007c1 	addi.w	$r1,$r30,1(0x1)
1c000aa8:	03400c27 	andi	$r7,$r1,0x3
1c000aac:	1c001131 	pcaddu12i	$r17,137(0x89)
1c000ab0:	028df231 	addi.w	$r17,$r17,892(0x37c)
1c000ab4:	0015000d 	move	$r13,$r0
1c000ab8:	0015000c 	move	$r12,$r0
1c000abc:	02bffc12 	addi.w	$r18,$r0,-1(0xfff)
1c000ac0:	5800e0e0 	beq	$r7,$r0,224(0xe0) # 1c000ba0 <shell14+0x2e0>
1c000ac4:	02800414 	addi.w	$r20,$r0,1(0x1)
1c000ac8:	580090f4 	beq	$r7,$r20,144(0x90) # 1c000b58 <shell14+0x298>
1c000acc:	02800806 	addi.w	$r6,$r0,2(0x2)
1c000ad0:	580044e6 	beq	$r7,$r6,68(0x44) # 1c000b14 <shell14+0x254>
1c000ad4:	288001c8 	ld.w	$r8,$r14,0
1c000ad8:	58003512 	beq	$r8,$r18,52(0x34) # 1c000b0c <shell14+0x24c>
1c000adc:	2880022c 	ld.w	$r12,$r17,0
1c000ae0:	0040890d 	slli.w	$r13,$r8,0x2
1c000ae4:	00103749 	add.w	$r9,$r26,$r13
1c000ae8:	00408990 	slli.w	$r16,$r12,0x2
1c000aec:	001043fe 	add.w	$r30,$r31,$r16
1c000af0:	2880012b 	ld.w	$r11,$r9,0
1c000af4:	288003c1 	ld.w	$r1,$r30,0
1c000af8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c000afc:	02800564 	addi.w	$r4,$r11,1(0x1)
1c000b00:	02800427 	addi.w	$r7,$r1,1(0x1)
1c000b04:	29800124 	st.w	$r4,$r9,0
1c000b08:	298003c7 	st.w	$r7,$r30,0
1c000b0c:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c000b10:	02801231 	addi.w	$r17,$r17,4(0x4)
1c000b14:	288001d4 	ld.w	$r20,$r14,0
1c000b18:	58003a92 	beq	$r20,$r18,56(0x38) # 1c000b50 <shell14+0x290>
1c000b1c:	28800224 	ld.w	$r4,$r17,0
1c000b20:	00408a86 	slli.w	$r6,$r20,0x2
1c000b24:	00101b48 	add.w	$r8,$r26,$r6
1c000b28:	00408890 	slli.w	$r16,$r4,0x2
1c000b2c:	001043fe 	add.w	$r30,$r31,$r16
1c000b30:	28800109 	ld.w	$r9,$r8,0
1c000b34:	288003c1 	ld.w	$r1,$r30,0
1c000b38:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000b3c:	0280052b 	addi.w	$r11,$r9,1(0x1)
1c000b40:	02800427 	addi.w	$r7,$r1,1(0x1)
1c000b44:	2980010b 	st.w	$r11,$r8,0
1c000b48:	0010118c 	add.w	$r12,$r12,$r4
1c000b4c:	298003c7 	st.w	$r7,$r30,0
1c000b50:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c000b54:	02801231 	addi.w	$r17,$r17,4(0x4)
1c000b58:	288001d4 	ld.w	$r20,$r14,0
1c000b5c:	58003a92 	beq	$r20,$r18,56(0x38) # 1c000b94 <shell14+0x2d4>
1c000b60:	28800228 	ld.w	$r8,$r17,0
1c000b64:	00408a86 	slli.w	$r6,$r20,0x2
1c000b68:	00101b49 	add.w	$r9,$r26,$r6
1c000b6c:	00408904 	slli.w	$r4,$r8,0x2
1c000b70:	001013fe 	add.w	$r30,$r31,$r4
1c000b74:	2880012b 	ld.w	$r11,$r9,0
1c000b78:	288003c1 	ld.w	$r1,$r30,0
1c000b7c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000b80:	02800570 	addi.w	$r16,$r11,1(0x1)
1c000b84:	02800427 	addi.w	$r7,$r1,1(0x1)
1c000b88:	0010218c 	add.w	$r12,$r12,$r8
1c000b8c:	29800130 	st.w	$r16,$r9,0
1c000b90:	298003c7 	st.w	$r7,$r30,0
1c000b94:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c000b98:	02801231 	addi.w	$r17,$r17,4(0x4)
1c000b9c:	580109c5 	beq	$r14,$r5,264(0x108) # 1c000ca4 <shell14+0x3e4>
1c000ba0:	288001d4 	ld.w	$r20,$r14,0
1c000ba4:	028011cb 	addi.w	$r11,$r14,4(0x4)
1c000ba8:	02801226 	addi.w	$r6,$r17,4(0x4)
1c000bac:	00408a89 	slli.w	$r9,$r20,0x2
1c000bb0:	58003692 	beq	$r20,$r18,52(0x34) # 1c000be4 <shell14+0x324>
1c000bb4:	28800228 	ld.w	$r8,$r17,0
1c000bb8:	00102744 	add.w	$r4,$r26,$r9
1c000bbc:	2880009e 	ld.w	$r30,$r4,0
1c000bc0:	00408910 	slli.w	$r16,$r8,0x2
1c000bc4:	001043e1 	add.w	$r1,$r31,$r16
1c000bc8:	28800034 	ld.w	$r20,$r1,0
1c000bcc:	028007c7 	addi.w	$r7,$r30,1(0x1)
1c000bd0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000bd4:	02800689 	addi.w	$r9,$r20,1(0x1)
1c000bd8:	0010218c 	add.w	$r12,$r12,$r8
1c000bdc:	29800087 	st.w	$r7,$r4,0
1c000be0:	29800029 	st.w	$r9,$r1,0
1c000be4:	288011ce 	ld.w	$r14,$r14,4(0x4)
1c000be8:	004089c8 	slli.w	$r8,$r14,0x2
1c000bec:	580035d2 	beq	$r14,$r18,52(0x34) # 1c000c20 <shell14+0x360>
1c000bf0:	28801231 	ld.w	$r17,$r17,4(0x4)
1c000bf4:	0010235e 	add.w	$r30,$r26,$r8
1c000bf8:	288003c4 	ld.w	$r4,$r30,0
1c000bfc:	00408a30 	slli.w	$r16,$r17,0x2
1c000c00:	001043e1 	add.w	$r1,$r31,$r16
1c000c04:	28800034 	ld.w	$r20,$r1,0
1c000c08:	02800487 	addi.w	$r7,$r4,1(0x1)
1c000c0c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000c10:	02800689 	addi.w	$r9,$r20,1(0x1)
1c000c14:	0010458c 	add.w	$r12,$r12,$r17
1c000c18:	298003c7 	st.w	$r7,$r30,0
1c000c1c:	29800029 	st.w	$r9,$r1,0
1c000c20:	28801168 	ld.w	$r8,$r11,4(0x4)
1c000c24:	0280316e 	addi.w	$r14,$r11,12(0xc)
1c000c28:	028030d1 	addi.w	$r17,$r6,12(0xc)
1c000c2c:	0040891e 	slli.w	$r30,$r8,0x2
1c000c30:	58003512 	beq	$r8,$r18,52(0x34) # 1c000c64 <shell14+0x3a4>
1c000c34:	288010c1 	ld.w	$r1,$r6,4(0x4)
1c000c38:	00107b44 	add.w	$r4,$r26,$r30
1c000c3c:	28800087 	ld.w	$r7,$r4,0
1c000c40:	00408830 	slli.w	$r16,$r1,0x2
1c000c44:	001043f4 	add.w	$r20,$r31,$r16
1c000c48:	28800288 	ld.w	$r8,$r20,0
1c000c4c:	028004e9 	addi.w	$r9,$r7,1(0x1)
1c000c50:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000c54:	0280051e 	addi.w	$r30,$r8,1(0x1)
1c000c58:	0010058c 	add.w	$r12,$r12,$r1
1c000c5c:	29800089 	st.w	$r9,$r4,0
1c000c60:	2980029e 	st.w	$r30,$r20,0
1c000c64:	2880216b 	ld.w	$r11,$r11,8(0x8)
1c000c68:	00408961 	slli.w	$r1,$r11,0x2
1c000c6c:	58003572 	beq	$r11,$r18,52(0x34) # 1c000ca0 <shell14+0x3e0>
1c000c70:	288020c6 	ld.w	$r6,$r6,8(0x8)
1c000c74:	00100744 	add.w	$r4,$r26,$r1
1c000c78:	28800087 	ld.w	$r7,$r4,0
1c000c7c:	004088d0 	slli.w	$r16,$r6,0x2
1c000c80:	001043f4 	add.w	$r20,$r31,$r16
1c000c84:	28800288 	ld.w	$r8,$r20,0
1c000c88:	028004e9 	addi.w	$r9,$r7,1(0x1)
1c000c8c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000c90:	0280051e 	addi.w	$r30,$r8,1(0x1)
1c000c94:	0010198c 	add.w	$r12,$r12,$r6
1c000c98:	29800089 	st.w	$r9,$r4,0
1c000c9c:	2980029e 	st.w	$r30,$r20,0
1c000ca0:	5fff01c5 	bne	$r14,$r5,-256(0x3ff00) # 1c000ba0 <shell14+0x2e0>
1c000ca4:	2880407e 	ld.w	$r30,$r3,16(0x10)
1c000ca8:	00102b51 	add.w	$r17,$r26,$r10
1c000cac:	00102bf2 	add.w	$r18,$r31,$r10
1c000cb0:	00150001 	move	$r1,$r0
1c000cb4:	0015000b 	move	$r11,$r0
1c000cb8:	02bffc0a 	addi.w	$r10,$r0,-1(0xfff)
1c000cbc:	03400000 	andi	$r0,$r0,0x0
1c000cc0:	28801225 	ld.w	$r5,$r17,4(0x4)
1c000cc4:	64001005 	bge	$r0,$r5,16(0x10) # 1c000cd4 <shell14+0x414>
1c000cc8:	001c3cae 	mul.w	$r14,$r5,$r15
1c000ccc:	0010156b 	add.w	$r11,$r11,$r5
1c000cd0:	00103821 	add.w	$r1,$r1,$r14
1c000cd4:	28801244 	ld.w	$r4,$r18,4(0x4)
1c000cd8:	64019004 	bge	$r0,$r4,400(0x190) # 1c000e68 <shell14+0x5a8>
1c000cdc:	001c3c85 	mul.w	$r5,$r4,$r15
1c000ce0:	001111ad 	sub.w	$r13,$r13,$r4
1c000ce4:	02bff231 	addi.w	$r17,$r17,-4(0xffc)
1c000ce8:	02bff252 	addi.w	$r18,$r18,-4(0xffc)
1c000cec:	001c3d64 	mul.w	$r4,$r11,$r15
1c000cf0:	0011158c 	sub.w	$r12,$r12,$r5
1c000cf4:	001c3dae 	mul.w	$r14,$r13,$r15
1c000cf8:	00111026 	sub.w	$r6,$r1,$r4
1c000cfc:	02bffdef 	addi.w	$r15,$r15,-1(0xfff)
1c000d00:	001131c7 	sub.w	$r7,$r14,$r12
1c000d04:	001018f0 	add.w	$r16,$r7,$r6
1c000d08:	00408608 	slli.w	$r8,$r16,0x1
1c000d0c:	6400091e 	bge	$r8,$r30,8(0x8) # 1c000d14 <shell14+0x454>
1c000d10:	0015011e 	move	$r30,$r8
1c000d14:	5fffadea 	bne	$r15,$r10,-84(0x3ffac) # 1c000cc0 <shell14+0x400>
1c000d18:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c000d1c:	288002ea 	ld.w	$r10,$r23,0
1c000d20:	5c01776d 	bne	$r27,$r13,372(0x174) # 1c000e94 <shell14+0x5d4>
1c000d24:	00102bdb 	add.w	$r27,$r30,$r10
1c000d28:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000d2c:	028b6084 	addi.w	$r4,$r4,728(0x2d8)
1c000d30:	02bfff65 	addi.w	$r5,$r27,-1(0xfff)
1c000d34:	54063c00 	bl	1596(0x63c) # 1c001370 <printf>
1c000d38:	288002ea 	ld.w	$r10,$r23,0
1c000d3c:	2880507a 	ld.w	$r26,$r3,20(0x14)
1c000d40:	2880306c 	ld.w	$r12,$r3,12(0xc)
1c000d44:	00107959 	add.w	$r25,$r10,$r30
1c000d48:	00106b3f 	add.w	$r31,$r25,$r26
1c000d4c:	0012fc13 	sltu	$r19,$r0,$r31
1c000d50:	00104d8b 	add.w	$r11,$r12,$r19
1c000d54:	02bfff9c 	addi.w	$r28,$r28,-1(0xfff)
1c000d58:	2980306b 	st.w	$r11,$r3,12(0xc)
1c000d5c:	5ffc0b80 	bne	$r28,$r0,-1016(0x3fc08) # 1c000964 <shell14+0xa4>
1c000d60:	00150176 	move	$r22,$r11
1c000d64:	540d7c00 	bl	3452(0xd7c) # 1c001ae0 <get_count_my>
1c000d68:	00150098 	move	$r24,$r4
1c000d6c:	540d4400 	bl	3396(0xd44) # 1c001ab0 <get_count>
1c000d70:	2880606f 	ld.w	$r15,$r3,24(0x18)
1c000d74:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c000d78:	00113c9b 	sub.w	$r27,$r4,$r15
1c000d7c:	0011771e 	sub.w	$r30,$r24,$r29
1c000d80:	580122c0 	beq	$r22,$r0,288(0x120) # 1c000ea0 <shell14+0x5e0>
1c000d84:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000d88:	028aa084 	addi.w	$r4,$r4,680(0x2a8)
1c000d8c:	54092400 	bl	2340(0x924) # 1c0016b0 <puts>
1c000d90:	157f5fe4 	lu12i.w	$r4,-263425(0xbfaff)
1c000d94:	0280040a 	addi.w	$r10,$r0,1(0x1)
1c000d98:	03810087 	ori	$r7,$r4,0x40
1c000d9c:	298000ea 	st.w	$r10,$r7,0
1c000da0:	02800809 	addi.w	$r9,$r0,2(0x2)
1c000da4:	0380c091 	ori	$r17,$r4,0x30
1c000da8:	03808092 	ori	$r18,$r4,0x20
1c000dac:	29800229 	st.w	$r9,$r17,0
1c000db0:	29800240 	st.w	$r0,$r18,0
1c000db4:	157f5fe1 	lu12i.w	$r1,-263425(0xbfaff)
1c000db8:	03814033 	ori	$r19,$r1,0x50
1c000dbc:	2980027e 	st.w	$r30,$r19,0
1c000dc0:	157f5f06 	lu12i.w	$r6,-263432(0xbfaf8)
1c000dc4:	038040d6 	ori	$r22,$r6,0x10
1c000dc8:	298000de 	st.w	$r30,$r6,0
1c000dcc:	00150365 	move	$r5,$r27
1c000dd0:	298002db 	st.w	$r27,$r22,0
1c000dd4:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000dd8:	0289b084 	addi.w	$r4,$r4,620(0x26c)
1c000ddc:	54059400 	bl	1428(0x594) # 1c001370 <printf>
1c000de0:	28812076 	ld.w	$r22,$r3,72(0x48)
1c000de4:	28813061 	ld.w	$r1,$r3,76(0x4c)
1c000de8:	28811077 	ld.w	$r23,$r3,68(0x44)
1c000dec:	28810078 	ld.w	$r24,$r3,64(0x40)
1c000df0:	2880f079 	ld.w	$r25,$r3,60(0x3c)
1c000df4:	2880e07a 	ld.w	$r26,$r3,56(0x38)
1c000df8:	2880d07b 	ld.w	$r27,$r3,52(0x34)
1c000dfc:	2880c07c 	ld.w	$r28,$r3,48(0x30)
1c000e00:	2880b07d 	ld.w	$r29,$r3,44(0x2c)
1c000e04:	2880907f 	ld.w	$r31,$r3,36(0x24)
1c000e08:	001503c5 	move	$r5,$r30
1c000e0c:	2880a07e 	ld.w	$r30,$r3,40(0x28)
1c000e10:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000e14:	02897084 	addi.w	$r4,$r4,604(0x25c)
1c000e18:	02814063 	addi.w	$r3,$r3,80(0x50)
1c000e1c:	50055400 	b	1364(0x554) # 1c001370 <printf>
1c000e20:	00100728 	add.w	$r8,$r25,$r1
1c000e24:	2880010e 	ld.w	$r14,$r8,0
1c000e28:	298000fe 	st.w	$r30,$r7,0
1c000e2c:	02801129 	addi.w	$r9,$r9,4(0x4)
1c000e30:	028011ef 	addi.w	$r15,$r15,4(0x4)
1c000e34:	640009de 	bge	$r14,$r30,8(0x8) # 1c000e3c <shell14+0x57c>
1c000e38:	001503ce 	move	$r14,$r30
1c000e3c:	2980010e 	st.w	$r14,$r8,0
1c000e40:	5ffbf0a9 	bne	$r5,$r9,-1040(0x3fbf0) # 1c000a30 <shell14+0x170>
1c000e44:	28800313 	ld.w	$r19,$r24,0
1c000e48:	0280066f 	addi.w	$r15,$r19,1(0x1)
1c000e4c:	67fc3a60 	bge	$r19,$r0,-968(0x3fc38) # 1c000a84 <shell14+0x1c4>
1c000e50:	2880407e 	ld.w	$r30,$r3,16(0x10)
1c000e54:	63fec5e0 	blt	$r15,$r0,-316(0x3fec4) # 1c000d18 <shell14+0x458>
1c000e58:	0015000c 	move	$r12,$r0
1c000e5c:	0015000d 	move	$r13,$r0
1c000e60:	00408a6a 	slli.w	$r10,$r19,0x2
1c000e64:	53fe43ff 	b	-448(0xffffe40) # 1c000ca4 <shell14+0x3e4>
1c000e68:	001c3da6 	mul.w	$r6,$r13,$r15
1c000e6c:	02bff231 	addi.w	$r17,$r17,-4(0xffc)
1c000e70:	02bff252 	addi.w	$r18,$r18,-4(0xffc)
1c000e74:	001c3d67 	mul.w	$r7,$r11,$r15
1c000e78:	001130d0 	sub.w	$r16,$r6,$r12
1c000e7c:	02bffdef 	addi.w	$r15,$r15,-1(0xfff)
1c000e80:	00111c34 	sub.w	$r20,$r1,$r7
1c000e84:	00105209 	add.w	$r9,$r16,$r20
1c000e88:	00408528 	slli.w	$r8,$r9,0x1
1c000e8c:	67fe891e 	bge	$r8,$r30,-376(0x3fe88) # 1c000d14 <shell14+0x454>
1c000e90:	53fe83ff 	b	-384(0xffffe80) # 1c000d10 <shell14+0x450>
1c000e94:	0280041b 	addi.w	$r27,$r0,1(0x1)
1c000e98:	53faefff 	b	-1300(0xffffaec) # 1c000984 <shell14+0xc4>
1c000e9c:	03400000 	andi	$r0,$r0,0x0
1c000ea0:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000ea4:	0285f084 	addi.w	$r4,$r4,380(0x17c)
1c000ea8:	54080800 	bl	2056(0x808) # 1c0016b0 <puts>
1c000eac:	157f5fec 	lu12i.w	$r12,-263425(0xbfaff)
1c000eb0:	02800414 	addi.w	$r20,$r0,1(0x1)
1c000eb4:	03810185 	ori	$r5,$r12,0x40
1c000eb8:	298000b4 	st.w	$r20,$r5,0
1c000ebc:	140001e8 	lu12i.w	$r8,15(0xf)
1c000ec0:	0380c18b 	ori	$r11,$r12,0x30
1c000ec4:	0380818e 	ori	$r14,$r12,0x20
1c000ec8:	03bffd0d 	ori	$r13,$r8,0xfff
1c000ecc:	29800174 	st.w	$r20,$r11,0
1c000ed0:	298001cd 	st.w	$r13,$r14,0
1c000ed4:	53fee3ff 	b	-288(0xffffee0) # 1c000db4 <shell14+0x4f4>
1c000ed8:	1c0014f8 	pcaddu12i	$r24,167(0xa7)
1c000edc:	028dd318 	addi.w	$r24,$r24,884(0x374)
1c000ee0:	28800304 	ld.w	$r4,$r24,0
1c000ee4:	14ffffe1 	lu12i.w	$r1,524287(0x7ffff)
1c000ee8:	0280081a 	addi.w	$r26,$r0,2(0x2)
1c000eec:	1c0014f7 	pcaddu12i	$r23,167(0xa7)
1c000ef0:	028d92f7 	addi.w	$r23,$r23,868(0x364)
1c000ef4:	1c0014fb 	pcaddu12i	$r27,167(0xa7)
1c000ef8:	028d537b 	addi.w	$r27,$r27,852(0x354)
1c000efc:	1c00113d 	pcaddu12i	$r29,137(0x89)
1c000f00:	02bcb3bd 	addi.w	$r29,$r29,-212(0xf2c)
1c000f04:	1c000ffc 	pcaddu12i	$r28,127(0x7f)
1c000f08:	028b939c 	addi.w	$r28,$r28,740(0x2e4)
1c000f0c:	1c00139f 	pcaddu12i	$r31,156(0x9c)
1c000f10:	029e73ff 	addi.w	$r31,$r31,1948(0x79c)
1c000f14:	1c00127e 	pcaddu12i	$r30,147(0x93)
1c000f18:	02ad53de 	addi.w	$r30,$r30,-1196(0xb54)
1c000f1c:	03bffc39 	ori	$r25,$r1,0xfff
1c000f20:	288002f1 	ld.w	$r17,$r23,0
1c000f24:	64000a24 	bge	$r17,$r4,8(0x8) # 1c000f2c <shell14+0x66c>
1c000f28:	00150091 	move	$r17,$r4
1c000f2c:	02800632 	addi.w	$r18,$r17,1(0x1)
1c000f30:	02bffc05 	addi.w	$r5,$r0,-1(0xfff)
1c000f34:	001503a4 	move	$r4,$r29
1c000f38:	00408a46 	slli.w	$r6,$r18,0x2
1c000f3c:	540a4400 	bl	2628(0xa44) # 1c001980 <memset>
1c000f40:	28800314 	ld.w	$r20,$r24,0
1c000f44:	288002ec 	ld.w	$r12,$r23,0
1c000f48:	64000994 	bge	$r12,$r20,8(0x8) # 1c000f50 <shell14+0x690>
1c000f4c:	0015028c 	move	$r12,$r20
1c000f50:	0280058f 	addi.w	$r15,$r12,1(0x1)
1c000f54:	02bffc05 	addi.w	$r5,$r0,-1(0xfff)
1c000f58:	00150384 	move	$r4,$r28
1c000f5c:	004089e6 	slli.w	$r6,$r15,0x2
1c000f60:	540a2000 	bl	2592(0xa20) # 1c001980 <memset>
1c000f64:	28800309 	ld.w	$r9,$r24,0
1c000f68:	288002ec 	ld.w	$r12,$r23,0
1c000f6c:	64000989 	bge	$r12,$r9,8(0x8) # 1c000f74 <shell14+0x6b4>
1c000f70:	0015012c 	move	$r12,$r9
1c000f74:	02800588 	addi.w	$r8,$r12,1(0x1)
1c000f78:	00150005 	move	$r5,$r0
1c000f7c:	001503e4 	move	$r4,$r31
1c000f80:	00408906 	slli.w	$r6,$r8,0x2
1c000f84:	5409fc00 	bl	2556(0x9fc) # 1c001980 <memset>
1c000f88:	28800305 	ld.w	$r5,$r24,0
1c000f8c:	288002ec 	ld.w	$r12,$r23,0
1c000f90:	64000985 	bge	$r12,$r5,8(0x8) # 1c000f98 <shell14+0x6d8>
1c000f94:	001500ac 	move	$r12,$r5
1c000f98:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c000f9c:	004089c6 	slli.w	$r6,$r14,0x2
1c000fa0:	00150005 	move	$r5,$r0
1c000fa4:	001503c4 	move	$r4,$r30
1c000fa8:	5409d800 	bl	2520(0x9d8) # 1c001980 <memset>
1c000fac:	28800366 	ld.w	$r6,$r27,0
1c000fb0:	1c0014ed 	pcaddu12i	$r13,167(0xa7)
1c000fb4:	02aba1ad 	addi.w	$r13,$r13,-1304(0xae8)
1c000fb8:	1c0014cf 	pcaddu12i	$r15,166(0xa6)
1c000fbc:	028cc1ef 	addi.w	$r15,$r15,816(0x330)
1c000fc0:	004088c7 	slli.w	$r7,$r6,0x2
1c000fc4:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
1c000fc8:	001034ea 	add.w	$r10,$r7,$r13
1c000fcc:	64004c06 	bge	$r0,$r6,76(0x4c) # 1c001018 <shell14+0x758>
1c000fd0:	288001b0 	ld.w	$r16,$r13,0
1c000fd4:	288001eb 	ld.w	$r11,$r15,0
1c000fd8:	00408a16 	slli.w	$r22,$r16,0x2
1c000fdc:	00105ba1 	add.w	$r1,$r29,$r22
1c000fe0:	28800031 	ld.w	$r17,$r1,0
1c000fe4:	00105b93 	add.w	$r19,$r28,$r22
1c000fe8:	00150232 	move	$r18,$r17
1c000fec:	58033a24 	beq	$r17,$r4,824(0x338) # 1c001324 <shell14+0xa64>
1c000ff0:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000ff4:	64000971 	bge	$r11,$r17,8(0x8) # 1c000ffc <shell14+0x73c>
1c000ff8:	00150172 	move	$r18,$r11
1c000ffc:	2880026e 	ld.w	$r14,$r19,0
1c001000:	29800032 	st.w	$r18,$r1,0
1c001004:	028011ef 	addi.w	$r15,$r15,4(0x4)
1c001008:	640009cb 	bge	$r14,$r11,8(0x8) # 1c001010 <shell14+0x750>
1c00100c:	0015016e 	move	$r14,$r11
1c001010:	2980026e 	st.w	$r14,$r19,0
1c001014:	5fffbd4d 	bne	$r10,$r13,-68(0x3ffbc) # 1c000fd0 <shell14+0x710>
1c001018:	28800304 	ld.w	$r4,$r24,0
1c00101c:	0280048c 	addi.w	$r12,$r4,1(0x1)
1c001020:	60033880 	blt	$r4,$r0,824(0x338) # 1c001358 <shell14+0xa98>
1c001024:	1c000fed 	pcaddu12i	$r13,127(0x7f)
1c001028:	028711ad 	addi.w	$r13,$r13,452(0x1c4)
1c00102c:	028011a9 	addi.w	$r9,$r13,4(0x4)
1c001030:	0040888a 	slli.w	$r10,$r4,0x2
1c001034:	00102925 	add.w	$r5,$r9,$r10
1c001038:	001134a8 	sub.w	$r8,$r5,$r13
1c00103c:	02bff106 	addi.w	$r6,$r8,-4(0xffc)
1c001040:	004488c7 	srli.w	$r7,$r6,0x2
1c001044:	028004f6 	addi.w	$r22,$r7,1(0x1)
1c001048:	03400ec1 	andi	$r1,$r22,0x3
1c00104c:	1c00112e 	pcaddu12i	$r14,137(0x89)
1c001050:	02b771ce 	addi.w	$r14,$r14,-548(0xddc)
1c001054:	00150010 	move	$r16,$r0
1c001058:	0015000f 	move	$r15,$r0
1c00105c:	02bffc0b 	addi.w	$r11,$r0,-1(0xfff)
1c001060:	5800e020 	beq	$r1,$r0,224(0xe0) # 1c001140 <shell14+0x880>
1c001064:	02800413 	addi.w	$r19,$r0,1(0x1)
1c001068:	58009033 	beq	$r1,$r19,144(0x90) # 1c0010f8 <shell14+0x838>
1c00106c:	02800811 	addi.w	$r17,$r0,2(0x2)
1c001070:	58004431 	beq	$r1,$r17,68(0x44) # 1c0010b4 <shell14+0x7f4>
1c001074:	288001b2 	ld.w	$r18,$r13,0
1c001078:	5800364b 	beq	$r18,$r11,52(0x34) # 1c0010ac <shell14+0x7ec>
1c00107c:	288001cf 	ld.w	$r15,$r14,0
1c001080:	00408a50 	slli.w	$r16,$r18,0x2
1c001084:	001043e9 	add.w	$r9,$r31,$r16
1c001088:	004089e6 	slli.w	$r6,$r15,0x2
1c00108c:	00101bc7 	add.w	$r7,$r30,$r6
1c001090:	28800134 	ld.w	$r20,$r9,0
1c001094:	288000f6 	ld.w	$r22,$r7,0
1c001098:	02800410 	addi.w	$r16,$r0,1(0x1)
1c00109c:	02800688 	addi.w	$r8,$r20,1(0x1)
1c0010a0:	028006c1 	addi.w	$r1,$r22,1(0x1)
1c0010a4:	29800128 	st.w	$r8,$r9,0
1c0010a8:	298000e1 	st.w	$r1,$r7,0
1c0010ac:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0010b0:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0010b4:	288001b3 	ld.w	$r19,$r13,0
1c0010b8:	58003a6b 	beq	$r19,$r11,56(0x38) # 1c0010f0 <shell14+0x830>
1c0010bc:	288001c9 	ld.w	$r9,$r14,0
1c0010c0:	00408a71 	slli.w	$r17,$r19,0x2
1c0010c4:	001047f2 	add.w	$r18,$r31,$r17
1c0010c8:	00408934 	slli.w	$r20,$r9,0x2
1c0010cc:	001053c8 	add.w	$r8,$r30,$r20
1c0010d0:	28800246 	ld.w	$r6,$r18,0
1c0010d4:	28800116 	ld.w	$r22,$r8,0
1c0010d8:	02800610 	addi.w	$r16,$r16,1(0x1)
1c0010dc:	028004c7 	addi.w	$r7,$r6,1(0x1)
1c0010e0:	028006c1 	addi.w	$r1,$r22,1(0x1)
1c0010e4:	001025ef 	add.w	$r15,$r15,$r9
1c0010e8:	29800247 	st.w	$r7,$r18,0
1c0010ec:	29800101 	st.w	$r1,$r8,0
1c0010f0:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0010f4:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0010f8:	288001b3 	ld.w	$r19,$r13,0
1c0010fc:	58003a6b 	beq	$r19,$r11,56(0x38) # 1c001134 <shell14+0x874>
1c001100:	288001c9 	ld.w	$r9,$r14,0
1c001104:	00408a71 	slli.w	$r17,$r19,0x2
1c001108:	001047f2 	add.w	$r18,$r31,$r17
1c00110c:	00408934 	slli.w	$r20,$r9,0x2
1c001110:	001053c8 	add.w	$r8,$r30,$r20
1c001114:	28800246 	ld.w	$r6,$r18,0
1c001118:	28800116 	ld.w	$r22,$r8,0
1c00111c:	02800610 	addi.w	$r16,$r16,1(0x1)
1c001120:	028004c7 	addi.w	$r7,$r6,1(0x1)
1c001124:	028006c1 	addi.w	$r1,$r22,1(0x1)
1c001128:	001025ef 	add.w	$r15,$r15,$r9
1c00112c:	29800247 	st.w	$r7,$r18,0
1c001130:	29800101 	st.w	$r1,$r8,0
1c001134:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c001138:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c00113c:	580108ad 	beq	$r5,$r13,264(0x108) # 1c001244 <shell14+0x984>
1c001140:	288001b3 	ld.w	$r19,$r13,0
1c001144:	028011b1 	addi.w	$r17,$r13,4(0x4)
1c001148:	028011c6 	addi.w	$r6,$r14,4(0x4)
1c00114c:	00408a72 	slli.w	$r18,$r19,0x2
1c001150:	5800366b 	beq	$r19,$r11,52(0x34) # 1c001184 <shell14+0x8c4>
1c001154:	288001c8 	ld.w	$r8,$r14,0
1c001158:	00104bf4 	add.w	$r20,$r31,$r18
1c00115c:	28800289 	ld.w	$r9,$r20,0
1c001160:	00408907 	slli.w	$r7,$r8,0x2
1c001164:	00101fd6 	add.w	$r22,$r30,$r7
1c001168:	288002d3 	ld.w	$r19,$r22,0
1c00116c:	02800521 	addi.w	$r1,$r9,1(0x1)
1c001170:	02800610 	addi.w	$r16,$r16,1(0x1)
1c001174:	02800672 	addi.w	$r18,$r19,1(0x1)
1c001178:	001021ef 	add.w	$r15,$r15,$r8
1c00117c:	29800281 	st.w	$r1,$r20,0
1c001180:	298002d2 	st.w	$r18,$r22,0
1c001184:	288011a8 	ld.w	$r8,$r13,4(0x4)
1c001188:	0040890d 	slli.w	$r13,$r8,0x2
1c00118c:	5800350b 	beq	$r8,$r11,52(0x34) # 1c0011c0 <shell14+0x900>
1c001190:	288011d4 	ld.w	$r20,$r14,4(0x4)
1c001194:	001037e9 	add.w	$r9,$r31,$r13
1c001198:	28800127 	ld.w	$r7,$r9,0
1c00119c:	00408a8e 	slli.w	$r14,$r20,0x2
1c0011a0:	00103bd6 	add.w	$r22,$r30,$r14
1c0011a4:	288002d3 	ld.w	$r19,$r22,0
1c0011a8:	028004e1 	addi.w	$r1,$r7,1(0x1)
1c0011ac:	02800610 	addi.w	$r16,$r16,1(0x1)
1c0011b0:	02800672 	addi.w	$r18,$r19,1(0x1)
1c0011b4:	001051ef 	add.w	$r15,$r15,$r20
1c0011b8:	29800121 	st.w	$r1,$r9,0
1c0011bc:	298002d2 	st.w	$r18,$r22,0
1c0011c0:	28801228 	ld.w	$r8,$r17,4(0x4)
1c0011c4:	0280322d 	addi.w	$r13,$r17,12(0xc)
1c0011c8:	028030ce 	addi.w	$r14,$r6,12(0xc)
1c0011cc:	00408914 	slli.w	$r20,$r8,0x2
1c0011d0:	5800350b 	beq	$r8,$r11,52(0x34) # 1c001204 <shell14+0x944>
1c0011d4:	288010d6 	ld.w	$r22,$r6,4(0x4)
1c0011d8:	001053e1 	add.w	$r1,$r31,$r20
1c0011dc:	28800029 	ld.w	$r9,$r1,0
1c0011e0:	00408ac7 	slli.w	$r7,$r22,0x2
1c0011e4:	00101fd3 	add.w	$r19,$r30,$r7
1c0011e8:	28800268 	ld.w	$r8,$r19,0
1c0011ec:	02800532 	addi.w	$r18,$r9,1(0x1)
1c0011f0:	02800610 	addi.w	$r16,$r16,1(0x1)
1c0011f4:	02800514 	addi.w	$r20,$r8,1(0x1)
1c0011f8:	001059ef 	add.w	$r15,$r15,$r22
1c0011fc:	29800032 	st.w	$r18,$r1,0
1c001200:	29800274 	st.w	$r20,$r19,0
1c001204:	28802231 	ld.w	$r17,$r17,8(0x8)
1c001208:	00408a36 	slli.w	$r22,$r17,0x2
1c00120c:	5800362b 	beq	$r17,$r11,52(0x34) # 1c001240 <shell14+0x980>
1c001210:	288020c6 	ld.w	$r6,$r6,8(0x8)
1c001214:	00105be1 	add.w	$r1,$r31,$r22
1c001218:	28800029 	ld.w	$r9,$r1,0
1c00121c:	004088c7 	slli.w	$r7,$r6,0x2
1c001220:	00101fd3 	add.w	$r19,$r30,$r7
1c001224:	28800268 	ld.w	$r8,$r19,0
1c001228:	02800532 	addi.w	$r18,$r9,1(0x1)
1c00122c:	02800610 	addi.w	$r16,$r16,1(0x1)
1c001230:	02800514 	addi.w	$r20,$r8,1(0x1)
1c001234:	001019ef 	add.w	$r15,$r15,$r6
1c001238:	29800032 	st.w	$r18,$r1,0
1c00123c:	29800274 	st.w	$r20,$r19,0
1c001240:	5fff00ad 	bne	$r5,$r13,-256(0x3ff00) # 1c001140 <shell14+0x880>
1c001244:	00102be7 	add.w	$r7,$r31,$r10
1c001248:	00102bd1 	add.w	$r17,$r30,$r10
1c00124c:	00150336 	move	$r22,$r25
1c001250:	00150009 	move	$r9,$r0
1c001254:	00150001 	move	$r1,$r0
1c001258:	02bffc0a 	addi.w	$r10,$r0,-1(0xfff)
1c00125c:	03400000 	andi	$r0,$r0,0x0
1c001260:	288010e5 	ld.w	$r5,$r7,4(0x4)
1c001264:	64001005 	bge	$r0,$r5,16(0x10) # 1c001274 <shell14+0x9b4>
1c001268:	001c30ab 	mul.w	$r11,$r5,$r12
1c00126c:	00101421 	add.w	$r1,$r1,$r5
1c001270:	00102d29 	add.w	$r9,$r9,$r11
1c001274:	2880122d 	ld.w	$r13,$r17,4(0x4)
1c001278:	6400780d 	bge	$r0,$r13,120(0x78) # 1c0012f0 <shell14+0xa30>
1c00127c:	001c31a5 	mul.w	$r5,$r13,$r12
1c001280:	00113610 	sub.w	$r16,$r16,$r13
1c001284:	02bff0e7 	addi.w	$r7,$r7,-4(0xffc)
1c001288:	02bff231 	addi.w	$r17,$r17,-4(0xffc)
1c00128c:	001c302b 	mul.w	$r11,$r1,$r12
1c001290:	001115ef 	sub.w	$r15,$r15,$r5
1c001294:	001c320e 	mul.w	$r14,$r16,$r12
1c001298:	00112d2d 	sub.w	$r13,$r9,$r11
1c00129c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0012a0:	00113dc6 	sub.w	$r6,$r14,$r15
1c0012a4:	001019b3 	add.w	$r19,$r13,$r6
1c0012a8:	00408674 	slli.w	$r20,$r19,0x1
1c0012ac:	60006e96 	blt	$r20,$r22,108(0x6c) # 1c001318 <shell14+0xa58>
1c0012b0:	5fffb18a 	bne	$r12,$r10,-80(0x3ffb0) # 1c001260 <shell14+0x9a0>
1c0012b4:	02800410 	addi.w	$r16,$r0,1(0x1)
1c0012b8:	5c009b50 	bne	$r26,$r16,152(0x98) # 1c001350 <shell14+0xa90>
1c0012bc:	288002fe 	ld.w	$r30,$r23,0
1c0012c0:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c0012c4:	02b50084 	addi.w	$r4,$r4,-704(0xd40)
1c0012c8:	15fff859 	lu12i.w	$r25,-62(0xfffc2)
1c0012cc:	00107adb 	add.w	$r27,$r22,$r30
1c0012d0:	02bfff65 	addi.w	$r5,$r27,-1(0xfff)
1c0012d4:	54009c00 	bl	156(0x9c) # 1c001370 <printf>
1c0012d8:	288002fc 	ld.w	$r28,$r23,0
1c0012dc:	0384bb3f 	ori	$r31,$r25,0x12e
1c0012e0:	001072da 	add.w	$r26,$r22,$r28
1c0012e4:	00107f57 	add.w	$r23,$r26,$r31
1c0012e8:	0012dc16 	sltu	$r22,$r0,$r23
1c0012ec:	53fa7bff 	b	-1416(0xffffa78) # 1c000d64 <shell14+0x4a4>
1c0012f0:	001c320e 	mul.w	$r14,$r16,$r12
1c0012f4:	02bff0e7 	addi.w	$r7,$r7,-4(0xffc)
1c0012f8:	02bff231 	addi.w	$r17,$r17,-4(0xffc)
1c0012fc:	001c3026 	mul.w	$r6,$r1,$r12
1c001300:	00113dd3 	sub.w	$r19,$r14,$r15
1c001304:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001308:	00111932 	sub.w	$r18,$r9,$r6
1c00130c:	00104a68 	add.w	$r8,$r19,$r18
1c001310:	00408514 	slli.w	$r20,$r8,0x1
1c001314:	67ff9e96 	bge	$r20,$r22,-100(0x3ff9c) # 1c0012b0 <shell14+0x9f0>
1c001318:	00150296 	move	$r22,$r20
1c00131c:	5fff458a 	bne	$r12,$r10,-188(0x3ff44) # 1c001260 <shell14+0x9a0>
1c001320:	53ff97ff 	b	-108(0xfffff94) # 1c0012b4 <shell14+0x9f4>
1c001324:	00105b94 	add.w	$r20,$r28,$r22
1c001328:	2880028e 	ld.w	$r14,$r20,0
1c00132c:	2980002b 	st.w	$r11,$r1,0
1c001330:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c001334:	028011ef 	addi.w	$r15,$r15,4(0x4)
1c001338:	640009cb 	bge	$r14,$r11,8(0x8) # 1c001340 <shell14+0xa80>
1c00133c:	0015016e 	move	$r14,$r11
1c001340:	2980028e 	st.w	$r14,$r20,0
1c001344:	5ffc8d4d 	bne	$r10,$r13,-884(0x3fc8c) # 1c000fd0 <shell14+0x710>
1c001348:	53fcd3ff 	b	-816(0xffffcd0) # 1c001018 <shell14+0x758>
1c00134c:	03400000 	andi	$r0,$r0,0x0
1c001350:	0280041a 	addi.w	$r26,$r0,1(0x1)
1c001354:	53fbcfff 	b	-1076(0xffffbcc) # 1c000f20 <shell14+0x660>
1c001358:	00150336 	move	$r22,$r25
1c00135c:	63ff5980 	blt	$r12,$r0,-168(0x3ff58) # 1c0012b4 <shell14+0x9f4>
1c001360:	0015000f 	move	$r15,$r0
1c001364:	00150010 	move	$r16,$r0
1c001368:	0040888a 	slli.w	$r10,$r4,0x2
1c00136c:	53fedbff 	b	-296(0xffffed8) # 1c001244 <shell14+0x984>

1c001370 <printf>:
printf():
/code/fpga/nscscc-team/software/perf/lib/printf.c:2
int printf(const char *fmt,...)
{
1c001370:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001374:	2980b07a 	st.w	$r26,$r3,44(0x2c)
1c001378:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00137c:	2980e077 	st.w	$r23,$r3,56(0x38)
1c001380:	2980d078 	st.w	$r24,$r3,52(0x34)
1c001384:	2980c079 	st.w	$r25,$r3,48(0x30)
1c001388:	2980a07b 	st.w	$r27,$r3,40(0x28)
1c00138c:	2980907c 	st.w	$r28,$r3,36(0x24)
1c001390:	29811065 	st.w	$r5,$r3,68(0x44)
1c001394:	29812066 	st.w	$r6,$r3,72(0x48)
/code/fpga/nscscc-team/software/perf/lib/printf.c:10
void **arg;
void *ap;
int w;
__builtin_va_start(ap,fmt);
arg=ap;
for(i=0;fmt[i];i++)
1c001398:	28000097 	ld.b	$r23,$r4,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c00139c:	0281107a 	addi.w	$r26,$r3,68(0x44)
/code/fpga/nscscc-team/software/perf/lib/printf.c:2
{
1c0013a0:	29813067 	st.w	$r7,$r3,76(0x4c)
1c0013a4:	29814068 	st.w	$r8,$r3,80(0x50)
1c0013a8:	29815069 	st.w	$r9,$r3,84(0x54)
1c0013ac:	2981606a 	st.w	$r10,$r3,88(0x58)
1c0013b0:	2981706b 	st.w	$r11,$r3,92(0x5c)
/code/fpga/nscscc-team/software/perf/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c0013b4:	2980707a 	st.w	$r26,$r3,28(0x1c)
/code/fpga/nscscc-team/software/perf/lib/printf.c:10
for(i=0;fmt[i];i++)
1c0013b8:	58008ae0 	beq	$r23,$r0,136(0x88) # 1c001440 <printf+0xd0>
1c0013bc:	00150099 	move	$r25,$r4
1c0013c0:	00150018 	move	$r24,$r0
1c0013c4:	1c000ffc 	pcaddu12i	$r28,127(0x7f)
1c0013c8:	02b3539c 	addi.w	$r28,$r28,-812(0xcd4)
1c0013cc:	0280201b 	addi.w	$r27,$r0,8(0x8)
1c0013d0:	50001c00 	b	28(0x1c) # 1c0013ec <printf+0x7c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:80
		}

	}
	else{
		if(c=='\n') putchar('\r');
		putchar(c);
1c0013d4:	001502e4 	move	$r4,$r23
1c0013d8:	5401d800 	bl	472(0x1d8) # 1c0015b0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:10 (discriminator 2)
for(i=0;fmt[i];i++)
1c0013dc:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0013e0:	0010632c 	add.w	$r12,$r25,$r24
1c0013e4:	28000197 	ld.b	$r23,$r12,0
1c0013e8:	58005ae0 	beq	$r23,$r0,88(0x58) # 1c001440 <printf+0xd0>
/code/fpga/nscscc-team/software/perf/lib/printf.c:13
	if(c=='%')
1c0013ec:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c0013f0:	58001aec 	beq	$r23,$r12,24(0x18) # 1c001408 <printf+0x98>
/code/fpga/nscscc-team/software/perf/lib/printf.c:79
		if(c=='\n') putchar('\r');
1c0013f4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0013f8:	5fffdeec 	bne	$r23,$r12,-36(0x3ffdc) # 1c0013d4 <printf+0x64>
/code/fpga/nscscc-team/software/perf/lib/printf.c:79 (discriminator 1)
1c0013fc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001400:	5401b000 	bl	432(0x1b0) # 1c0015b0 <putchar>
1c001404:	53ffd3ff 	b	-48(0xfffffd0) # 1c0013d4 <printf+0x64>
1c001408:	0010632c 	add.w	$r12,$r25,$r24
1c00140c:	2800058d 	ld.b	$r13,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:15
		w=1;
1c001410:	02800405 	addi.w	$r5,$r0,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:17
		switch(fmt[i+1])
1c001414:	02814c10 	addi.w	$r16,$r0,83(0x53)
/code/fpga/nscscc-team/software/perf/lib/printf.c:68
				 w=w*10+(fmt[i+1]-'0');
1c001418:	0280280f 	addi.w	$r15,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:17
		switch(fmt[i+1])
1c00141c:	02bf6dac 	addi.w	$r12,$r13,-37(0xfdb)
1c001420:	2980306c 	st.w	$r12,$r3,12(0xc)
1c001424:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c001428:	68017a0c 	bltu	$r16,$r12,376(0x178) # 1c0015a0 <printf+0x230>
1c00142c:	0040898c 	slli.w	$r12,$r12,0x2
1c001430:	0010338c 	add.w	$r12,$r28,$r12
1c001434:	2880018c 	ld.w	$r12,$r12,0
1c001438:	4c000180 	jirl	$r0,$r12,0
1c00143c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:84
	}
}
	return 0;
}
1c001440:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001444:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c001448:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c00144c:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c001450:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c001454:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c001458:	2880907c 	ld.w	$r28,$r3,36(0x24)
1c00145c:	00150004 	move	$r4,$r0
1c001460:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001464:	4c000020 	jirl	$r0,$r1,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:65
				i++;
1c001468:	0010632c 	add.w	$r12,$r25,$r24
1c00146c:	2800098d 	ld.b	$r13,$r12,2(0x2)
1c001470:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 1)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c001474:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c001478:	2980306c 	st.w	$r12,$r3,12(0xc)
1c00147c:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c001480:	00150005 	move	$r5,$r0
1c001484:	6bff9b6c 	bltu	$r27,$r12,-104(0x3ff98) # 1c00141c <printf+0xac>
/code/fpga/nscscc-team/software/perf/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c001488:	001c3ca5 	mul.w	$r5,$r5,$r15
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c00148c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c001490:	0010632c 	add.w	$r12,$r25,$r24
/code/fpga/nscscc-team/software/perf/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c001494:	02bf41ae 	addi.w	$r14,$r13,-48(0xfd0)
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c001498:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c00149c:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c0014a0:	2980306c 	st.w	$r12,$r3,12(0xc)
1c0014a4:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c0014a8:	001015c5 	add.w	$r5,$r14,$r5
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c0014ac:	6fffdf6c 	bgeu	$r27,$r12,-36(0x3ffdc) # 1c001488 <printf+0x118>
1c0014b0:	53ff6fff 	b	-148(0xfffff6c) # 1c00141c <printf+0xac>
/code/fpga/nscscc-team/software/perf/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c0014b4:	28800344 	ld.w	$r4,$r26,0
1c0014b8:	00150007 	move	$r7,$r0
1c0014bc:	02800806 	addi.w	$r6,$r0,2(0x2)
/code/fpga/nscscc-team/software/perf/lib/printf.c:51
				arg++;
1c0014c0:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:52
				i++;
1c0014c4:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c0014c8:	54021800 	bl	536(0x218) # 1c0016e0 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:53
				break;
1c0014cc:	53ff13ff 	b	-240(0xfffff10) # 1c0013dc <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:25
				putchar((long)*arg);
1c0014d0:	28800344 	ld.w	$r4,$r26,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:27
				i++;
1c0014d4:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:26
				arg++;
1c0014d8:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:25
				putchar((long)*arg);
1c0014dc:	5400d400 	bl	212(0xd4) # 1c0015b0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:28
				break;
1c0014e0:	53feffff 	b	-260(0xffffefc) # 1c0013dc <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c0014e4:	28800344 	ld.w	$r4,$r26,0
1c0014e8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c0014ec:	02802806 	addi.w	$r6,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:36
				arg++;
1c0014f0:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:37
				i++;
1c0014f4:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c0014f8:	5401e800 	bl	488(0x1e8) # 1c0016e0 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:38
				break;
1c0014fc:	53fee3ff 	b	-288(0xffffee0) # 1c0013dc <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c001500:	28800344 	ld.w	$r4,$r26,0
1c001504:	00150007 	move	$r7,$r0
1c001508:	02802806 	addi.w	$r6,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:41
                arg++;
1c00150c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:42
                i=i+2;
1c001510:	02800b18 	addi.w	$r24,$r24,2(0x2)
/code/fpga/nscscc-team/software/perf/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c001514:	5401cc00 	bl	460(0x1cc) # 1c0016e0 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:43
                break;
1c001518:	53fec7ff 	b	-316(0xffffec4) # 1c0013dc <printf+0x6c>
1c00151c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c001520:	28800344 	ld.w	$r4,$r26,0
1c001524:	00150007 	move	$r7,$r0
1c001528:	02802006 	addi.w	$r6,$r0,8(0x8)
/code/fpga/nscscc-team/software/perf/lib/printf.c:46
				arg++;
1c00152c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:47
				i++;
1c001530:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c001534:	5401ac00 	bl	428(0x1ac) # 1c0016e0 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:48
				break;
1c001538:	53fea7ff 	b	-348(0xffffea4) # 1c0013dc <printf+0x6c>
1c00153c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c001540:	28800344 	ld.w	$r4,$r26,0
1c001544:	00150007 	move	$r7,$r0
1c001548:	02804006 	addi.w	$r6,$r0,16(0x10)
/code/fpga/nscscc-team/software/perf/lib/printf.c:57
				arg++;
1c00154c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:58
				i++;
1c001550:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c001554:	54018c00 	bl	396(0x18c) # 1c0016e0 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:59
				break;
1c001558:	53fe87ff 	b	-380(0xffffe84) # 1c0013dc <printf+0x6c>
1c00155c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:20
				putstring(*arg);
1c001560:	28800344 	ld.w	$r4,$r26,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:22
				i++;
1c001564:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:21
				arg++;
1c001568:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:20
				putstring(*arg);
1c00156c:	5400c400 	bl	196(0xc4) # 1c001630 <putstring>
/code/fpga/nscscc-team/software/perf/lib/printf.c:23
				break;
1c001570:	53fe6fff 	b	-404(0xffffe6c) # 1c0013dc <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c001574:	28800344 	ld.w	$r4,$r26,0
1c001578:	00150007 	move	$r7,$r0
1c00157c:	02802806 	addi.w	$r6,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:31
				arg++;
1c001580:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:32
				i++;
1c001584:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c001588:	54015800 	bl	344(0x158) # 1c0016e0 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:33
				break;
1c00158c:	53fe53ff 	b	-432(0xffffe50) # 1c0013dc <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:61
				putchar('%');
1c001590:	02809404 	addi.w	$r4,$r0,37(0x25)
/code/fpga/nscscc-team/software/perf/lib/printf.c:62
				i++;
1c001594:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:61
				putchar('%');
1c001598:	54001800 	bl	24(0x18) # 1c0015b0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:63
				break;
1c00159c:	53fe43ff 	b	-448(0xffffe40) # 1c0013dc <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:73
				putchar('%');
1c0015a0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c0015a4:	54000c00 	bl	12(0xc) # 1c0015b0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:74
				break;
1c0015a8:	53fe37ff 	b	-460(0xffffe34) # 1c0013dc <printf+0x6c>
1c0015ac:	03400000 	andi	$r0,$r0,0x0

1c0015b0 <putchar>:
putchar():
/code/fpga/nscscc-team/software/perf/lib/putchar.c:2
int putchar(int c)
{
1c0015b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0015b4:	29803079 	st.w	$r25,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/putchar.c:9
return 0;
}

void tgt_putchar(c)
{   //UART_ADDR
    asm(
1c0015b8:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c0015bc:	03bc4339 	ori	$r25,$r25,0xf10
1c0015c0:	29000324 	st.b	$r4,$r25,0
1c0015c4:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/putchar.c:5
}
1c0015c8:	00150004 	move	$r4,$r0
1c0015cc:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0015d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0015d4:	4c000020 	jirl	$r0,$r1,0
1c0015d8:	03400000 	andi	$r0,$r0,0x0
1c0015dc:	03400000 	andi	$r0,$r0,0x0

1c0015e0 <tgt_putchar>:
tgt_putchar():
/code/fpga/nscscc-team/software/perf/lib/putchar.c:8
{   //UART_ADDR
1c0015e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0015e4:	29803079 	st.w	$r25,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/putchar.c:9
    asm(
1c0015e8:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c0015ec:	03bc4339 	ori	$r25,$r25,0xf10
1c0015f0:	29000324 	st.b	$r4,$r25,0
1c0015f4:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/putchar.c:16
        "st.b %0,$r25,0\n\t"        
        "nop\n\t"
        :
        :"r"(c)
        :"$r25");
}
1c0015f8:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0015fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001600:	4c000020 	jirl	$r0,$r1,0
1c001604:	03400000 	andi	$r0,$r0,0x0
1c001608:	03400000 	andi	$r0,$r0,0x0
1c00160c:	03400000 	andi	$r0,$r0,0x0

1c001610 <uart_putchar>:
uart_putchar():
/code/fpga/nscscc-team/software/perf/lib/putchar.c:20

void uart_putchar (int c)
{
    while ((*((volatile uint32_t *)0xbeaf0004)) & 0x1);
1c001610:	157d5e0e 	lu12i.w	$r14,-267536(0xbeaf0)
1c001614:	038011cd 	ori	$r13,$r14,0x4
/code/fpga/nscscc-team/software/perf/lib/putchar.c:20 (discriminator 1)
1c001618:	288001ac 	ld.w	$r12,$r13,0
1c00161c:	0340058c 	andi	$r12,$r12,0x1
1c001620:	5ffff980 	bne	$r12,$r0,-8(0x3fff8) # 1c001618 <uart_putchar+0x8>
/code/fpga/nscscc-team/software/perf/lib/putchar.c:21
    (*((volatile uint32_t *)0xbeaf000c)) = c;
1c001624:	038031ce 	ori	$r14,$r14,0xc
1c001628:	298001c4 	st.w	$r4,$r14,0
/code/fpga/nscscc-team/software/perf/lib/putchar.c:22
}
1c00162c:	4c000020 	jirl	$r0,$r1,0

1c001630 <putstring>:
putstring():
/code/fpga/nscscc-team/software/perf/lib/puts.c:2
int putstring(char *s)
{
1c001630:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001634:	29803061 	st.w	$r1,$r3,12(0xc)
1c001638:	29802077 	st.w	$r23,$r3,8(0x8)
1c00163c:	29801078 	st.w	$r24,$r3,4(0x4)
1c001640:	29800079 	st.w	$r25,$r3,0
/code/fpga/nscscc-team/software/perf/lib/puts.c:4
char c;
while((c=*s))
1c001644:	28000097 	ld.b	$r23,$r4,0
1c001648:	580042e0 	beq	$r23,$r0,64(0x40) # 1c001688 <putstring+0x58>
1c00164c:	00150098 	move	$r24,$r4
/code/fpga/nscscc-team/software/perf/lib/puts.c:6
{
 if(c == '\n') putchar('\r');
1c001650:	02802819 	addi.w	$r25,$r0,10(0xa)
1c001654:	50001400 	b	20(0x14) # 1c001668 <putstring+0x38>
/code/fpga/nscscc-team/software/perf/lib/puts.c:7
 putchar(c);
1c001658:	001502e4 	move	$r4,$r23
1c00165c:	57ff57ff 	bl	-172(0xfffff54) # 1c0015b0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:4
while((c=*s))
1c001660:	28000317 	ld.b	$r23,$r24,0
1c001664:	580026e0 	beq	$r23,$r0,36(0x24) # 1c001688 <putstring+0x58>
/code/fpga/nscscc-team/software/perf/lib/puts.c:8
 s++;
1c001668:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/puts.c:6
 if(c == '\n') putchar('\r');
1c00166c:	5fffeef9 	bne	$r23,$r25,-20(0x3ffec) # 1c001658 <putstring+0x28>
/code/fpga/nscscc-team/software/perf/lib/puts.c:6 (discriminator 1)
1c001670:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001674:	57ff3fff 	bl	-196(0xfffff3c) # 1c0015b0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:7 (discriminator 1)
 putchar(c);
1c001678:	001502e4 	move	$r4,$r23
1c00167c:	57ff37ff 	bl	-204(0xfffff34) # 1c0015b0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:4 (discriminator 1)
while((c=*s))
1c001680:	28000317 	ld.b	$r23,$r24,0
1c001684:	5fffe6e0 	bne	$r23,$r0,-28(0x3ffe4) # 1c001668 <putstring+0x38>
/code/fpga/nscscc-team/software/perf/lib/puts.c:11
}
return 0;
}
1c001688:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00168c:	28802077 	ld.w	$r23,$r3,8(0x8)
1c001690:	28801078 	ld.w	$r24,$r3,4(0x4)
1c001694:	28800079 	ld.w	$r25,$r3,0
1c001698:	00150004 	move	$r4,$r0
1c00169c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0016a0:	4c000020 	jirl	$r0,$r1,0
1c0016a4:	03400000 	andi	$r0,$r0,0x0
1c0016a8:	03400000 	andi	$r0,$r0,0x0
1c0016ac:	03400000 	andi	$r0,$r0,0x0

1c0016b0 <puts>:
puts():
/code/fpga/nscscc-team/software/perf/lib/puts.c:15


int puts(char *s)
{
1c0016b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0016b4:	29803061 	st.w	$r1,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/puts.c:16
putstring(s);
1c0016b8:	57ff7bff 	bl	-136(0xfffff78) # 1c001630 <putstring>
/code/fpga/nscscc-team/software/perf/lib/puts.c:17
putchar('\r');
1c0016bc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0016c0:	57fef3ff 	bl	-272(0xffffef0) # 1c0015b0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:18
putchar('\n');
1c0016c4:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0016c8:	57feebff 	bl	-280(0xffffee8) # 1c0015b0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:20
return 0;
}
1c0016cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0016d0:	00150004 	move	$r4,$r0
1c0016d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0016d8:	4c000020 	jirl	$r0,$r1,0
1c0016dc:	03400000 	andi	$r0,$r0,0x0

1c0016e0 <printbase>:
printbase():
/code/fpga/nscscc-team/software/perf/lib/printbase.c:2
int printbase(long v,int w,int base,int sign)
{
1c0016e0:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c0016e4:	29816077 	st.w	$r23,$r3,88(0x58)
1c0016e8:	29817061 	st.w	$r1,$r3,92(0x5c)
1c0016ec:	29815078 	st.w	$r24,$r3,84(0x54)
1c0016f0:	29814079 	st.w	$r25,$r3,80(0x50)
1c0016f4:	00150097 	move	$r23,$r4
/code/fpga/nscscc-team/software/perf/lib/printbase.c:7
	int i,j;
	int c;
	char buf[64];
	unsigned long value;
	if(sign && v<0)
1c0016f8:	580008e0 	beq	$r7,$r0,8(0x8) # 1c001700 <printbase+0x20>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:7 (discriminator 1)
1c0016fc:	6000a480 	blt	$r4,$r0,164(0xa4) # 1c0017a0 <printbase+0xc0>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:14
	value = -v;
	putchar('-');
	}
	else value=v;

	for(i=0;value;i++)
1c001700:	5800c2e0 	beq	$r23,$r0,192(0xc0) # 1c0017c0 <printbase+0xe0>
1c001704:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c001708:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00170c:	001131ce 	sub.w	$r14,$r14,$r12
1c001710:	50000800 	b	8(0x8) # 1c001718 <printbase+0x38>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:17
	{
	buf[i]=value%base;
	value=value/base;
1c001714:	001501b7 	move	$r23,$r13
/code/fpga/nscscc-team/software/perf/lib/printbase.c:16 (discriminator 3)
	buf[i]=value%base;
1c001718:	00219aed 	mod.wu	$r13,$r23,$r6
1c00171c:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c001724 <printbase+0x44>
1c001720:	002a0007 	break	0x7
1c001724:	2900018d 	st.b	$r13,$r12,0
/code/fpga/nscscc-team/software/perf/lib/printbase.c:17 (discriminator 3)
	value=value/base;
1c001728:	001031d8 	add.w	$r24,$r14,$r12
1c00172c:	00211aed 	div.wu	$r13,$r23,$r6
1c001730:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c001738 <printbase+0x58>
1c001734:	002a0007 	break	0x7
1c001738:	0280058c 	addi.w	$r12,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printbase.c:14 (discriminator 3)
	for(i=0;value;i++)
1c00173c:	6fffdae6 	bgeu	$r23,$r6,-40(0x3ffd8) # 1c001714 <printbase+0x34>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22
	}

#define max(a,b) (((a)>(b))?(a):(b))

	for(j=max(w,i);j>0;j--)
1c001740:	600058b8 	blt	$r5,$r24,88(0x58) # 1c001798 <printbase+0xb8>
1c001744:	001500b7 	move	$r23,$r5
/code/fpga/nscscc-team/software/perf/lib/printbase.c:25
	{
		c=j>i?0:buf[j-1];
		putchar((c<=9)?c+'0':c-0xa+'a');
1c001748:	02802419 	addi.w	$r25,$r0,9(0x9)
1c00174c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printbase.c:24
		c=j>i?0:buf[j-1];
1c001750:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c001754:	00105d8c 	add.w	$r12,$r12,$r23
1c001758:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c00175c:	60001717 	blt	$r24,$r23,20(0x14) # 1c001770 <printbase+0x90>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:24 (discriminator 1)
1c001760:	283ffd8c 	ld.b	$r12,$r12,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/printbase.c:25 (discriminator 1)
		putchar((c<=9)?c+'0':c-0xa+'a');
1c001764:	02815d84 	addi.w	$r4,$r12,87(0x57)
1c001768:	60000b2c 	blt	$r25,$r12,8(0x8) # 1c001770 <printbase+0x90>
1c00176c:	0280c184 	addi.w	$r4,$r12,48(0x30)
1c001770:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/printbase.c:25 (discriminator 4)
1c001774:	57fe3fff 	bl	-452(0xffffe3c) # 1c0015b0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22 (discriminator 4)
	for(j=max(w,i);j>0;j--)
1c001778:	5fffdae0 	bne	$r23,$r0,-40(0x3ffd8) # 1c001750 <printbase+0x70>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:28
	}
	return 0;
}
1c00177c:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c001780:	28816077 	ld.w	$r23,$r3,88(0x58)
1c001784:	28815078 	ld.w	$r24,$r3,84(0x54)
1c001788:	28814079 	ld.w	$r25,$r3,80(0x50)
1c00178c:	00150004 	move	$r4,$r0
1c001790:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001794:	4c000020 	jirl	$r0,$r1,0
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c001798:	00150305 	move	$r5,$r24
1c00179c:	53ffabff 	b	-88(0xfffffa8) # 1c001744 <printbase+0x64>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:10
	putchar('-');
1c0017a0:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c0017a4:	29803066 	st.w	$r6,$r3,12(0xc)
1c0017a8:	29802065 	st.w	$r5,$r3,8(0x8)
1c0017ac:	57fe07ff 	bl	-508(0xffffe04) # 1c0015b0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:9
	value = -v;
1c0017b0:	00115c17 	sub.w	$r23,$r0,$r23
/code/fpga/nscscc-team/software/perf/lib/printbase.c:10
	putchar('-');
1c0017b4:	28802065 	ld.w	$r5,$r3,8(0x8)
1c0017b8:	28803066 	ld.w	$r6,$r3,12(0xc)
1c0017bc:	53ff4bff 	b	-184(0xfffff48) # 1c001704 <printbase+0x24>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c0017c0:	67ffbc05 	bge	$r0,$r5,-68(0x3ffbc) # 1c00177c <printbase+0x9c>
1c0017c4:	00150018 	move	$r24,$r0
1c0017c8:	53ff7fff 	b	-132(0xfffff7c) # 1c001744 <printbase+0x64>
1c0017cc:	03400000 	andi	$r0,$r0,0x0

1c0017d0 <strlen>:
strlen():
/code/fpga/nscscc-team/software/perf/lib/string.c:14
 * The strlen() function returns the length of string @s.
 * */
size_t
strlen(const char *s) {
    size_t cnt = 0;
    while (*s ++ != '\0') {
1c0017d0:	2800008c 	ld.b	$r12,$r4,0
1c0017d4:	58002580 	beq	$r12,$r0,36(0x24) # 1c0017f8 <strlen+0x28>
/code/fpga/nscscc-team/software/perf/lib/string.c:13
    size_t cnt = 0;
1c0017d8:	0015000c 	move	$r12,$r0
1c0017dc:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:15
        cnt ++;
1c0017e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:14
    while (*s ++ != '\0') {
1c0017e4:	0010308d 	add.w	$r13,$r4,$r12
1c0017e8:	280001ad 	ld.b	$r13,$r13,0
1c0017ec:	5ffff5a0 	bne	$r13,$r0,-12(0x3fff4) # 1c0017e0 <strlen+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:18
    }
    return cnt;
}
1c0017f0:	00150184 	move	$r4,$r12
1c0017f4:	4c000020 	jirl	$r0,$r1,0
/code/fpga/nscscc-team/software/perf/lib/string.c:13
    size_t cnt = 0;
1c0017f8:	0015000c 	move	$r12,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:18
}
1c0017fc:	00150184 	move	$r4,$r12
1c001800:	4c000020 	jirl	$r0,$r1,0
1c001804:	03400000 	andi	$r0,$r0,0x0
1c001808:	03400000 	andi	$r0,$r0,0x0
1c00180c:	03400000 	andi	$r0,$r0,0x0

1c001810 <strnlen>:
strnlen():
/code/fpga/nscscc-team/software/perf/lib/string.c:35
 * @len if there is no '\0' character among the first @len characters
 * pointed by @s.
 * */
size_t
strnlen(const char *s, size_t len) {
    size_t cnt = 0;
1c001810:	0015000c 	move	$r12,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c001814:	580028a0 	beq	$r5,$r0,40(0x28) # 1c00183c <strnlen+0x2c>
1c001818:	2800008d 	ld.b	$r13,$r4,0
/code/fpga/nscscc-team/software/perf/lib/string.c:35
    size_t cnt = 0;
1c00181c:	0015000c 	move	$r12,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c001820:	5c0011a0 	bne	$r13,$r0,16(0x10) # 1c001830 <strnlen+0x20>
1c001824:	50001800 	b	24(0x18) # 1c00183c <strnlen+0x2c>
/code/fpga/nscscc-team/software/perf/lib/string.c:36 (discriminator 1)
1c001828:	280001ad 	ld.b	$r13,$r13,0
1c00182c:	580011a0 	beq	$r13,$r0,16(0x10) # 1c00183c <strnlen+0x2c>
/code/fpga/nscscc-team/software/perf/lib/string.c:37
        cnt ++;
1c001830:	0280058c 	addi.w	$r12,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c001834:	0010308d 	add.w	$r13,$r4,$r12
1c001838:	5ffff0ac 	bne	$r5,$r12,-16(0x3fff0) # 1c001828 <strnlen+0x18>
/code/fpga/nscscc-team/software/perf/lib/string.c:40
    }
    return cnt;
}
1c00183c:	00150184 	move	$r4,$r12
1c001840:	4c000020 	jirl	$r0,$r1,0
1c001844:	03400000 	andi	$r0,$r0,0x0
1c001848:	03400000 	andi	$r0,$r0,0x0
1c00184c:	03400000 	andi	$r0,$r0,0x0

1c001850 <strcpy>:
strcpy():
/code/fpga/nscscc-team/software/perf/lib/string.c:59
char *
strcpy(char *dst, const char *src) {
#ifdef __HAVE_ARCH_MEM_OPTS
    return __strcpy(dst, src);
#else
    char *p = dst;
1c001850:	0015008c 	move	$r12,$r4
/code/fpga/nscscc-team/software/perf/lib/string.c:60 (discriminator 1)
    while ((*p ++ = *src ++) != '\0')
1c001854:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c001858:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c00185c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001860:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
1c001864:	5ffff1a0 	bne	$r13,$r0,-16(0x3fff0) # 1c001854 <strcpy+0x4>
/code/fpga/nscscc-team/software/perf/lib/string.c:64
        /* nothing */;
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c001868:	4c000020 	jirl	$r0,$r1,0
1c00186c:	03400000 	andi	$r0,$r0,0x0

1c001870 <strncpy>:
strncpy():
/code/fpga/nscscc-team/software/perf/lib/string.c:79
 * The return value is @dst
 * */
char *
strncpy(char *dst, const char *src, size_t len) {
    char *p = dst;
    while (len > 0) {
1c001870:	580028c0 	beq	$r6,$r0,40(0x28) # 1c001898 <strncpy+0x28>
1c001874:	00101886 	add.w	$r6,$r4,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:78
    char *p = dst;
1c001878:	0015008d 	move	$r13,$r4
1c00187c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:80
        if ((*p = *src) != '\0') {
1c001880:	280000ac 	ld.b	$r12,$r5,0
/code/fpga/nscscc-team/software/perf/lib/string.c:83
            src ++;
        }
        p ++, len --;
1c001884:	028005ad 	addi.w	$r13,$r13,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:80
        if ((*p = *src) != '\0') {
1c001888:	293ffdac 	st.b	$r12,$r13,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:81
            src ++;
1c00188c:	0012b00c 	sltu	$r12,$r0,$r12
1c001890:	001030a5 	add.w	$r5,$r5,$r12
/code/fpga/nscscc-team/software/perf/lib/string.c:79
    while (len > 0) {
1c001894:	5fffeda6 	bne	$r13,$r6,-20(0x3ffec) # 1c001880 <strncpy+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:86
    }
    return dst;
}
1c001898:	4c000020 	jirl	$r0,$r1,0
1c00189c:	03400000 	andi	$r0,$r0,0x0

1c0018a0 <strncmp>:
strncmp():
/code/fpga/nscscc-team/software/perf/lib/string.c:101
 * the characters differ, until a terminating null-character is reached, or
 * until @n characters match in both strings, whichever happens first.
 * */
int
strncmp(const char *s1, const char *s2, size_t n) {
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
1c0018a0:	580040c0 	beq	$r6,$r0,64(0x40) # 1c0018e0 <strncmp+0x40>
1c0018a4:	2800008d 	ld.b	$r13,$r4,0
1c0018a8:	280000ae 	ld.b	$r14,$r5,0
1c0018ac:	580041a0 	beq	$r13,$r0,64(0x40) # 1c0018ec <strncmp+0x4c>
1c0018b0:	5c003dae 	bne	$r13,$r14,60(0x3c) # 1c0018ec <strncmp+0x4c>
1c0018b4:	001018a6 	add.w	$r6,$r5,$r6
1c0018b8:	50001c00 	b	28(0x1c) # 1c0018d4 <strncmp+0x34>
1c0018bc:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:101 (discriminator 1)
1c0018c0:	2800008d 	ld.b	$r13,$r4,0
1c0018c4:	580025a0 	beq	$r13,$r0,36(0x24) # 1c0018e8 <strncmp+0x48>
/code/fpga/nscscc-team/software/perf/lib/string.c:101 (discriminator 2)
1c0018c8:	2800018e 	ld.b	$r14,$r12,0
1c0018cc:	00150185 	move	$r5,$r12
1c0018d0:	5c001dae 	bne	$r13,$r14,28(0x1c) # 1c0018ec <strncmp+0x4c>
/code/fpga/nscscc-team/software/perf/lib/string.c:102
        n --, s1 ++, s2 ++;
1c0018d4:	028004ac 	addi.w	$r12,$r5,1(0x1)
1c0018d8:	02800484 	addi.w	$r4,$r4,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:101
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
1c0018dc:	5fffe586 	bne	$r12,$r6,-28(0x3ffe4) # 1c0018c0 <strncmp+0x20>
/code/fpga/nscscc-team/software/perf/lib/string.c:104
    }
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c0018e0:	00150004 	move	$r4,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:105
}
1c0018e4:	4c000020 	jirl	$r0,$r1,0
1c0018e8:	280004ae 	ld.b	$r14,$r5,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:100
strncmp(const char *s1, const char *s2, size_t n) {
1c0018ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
/code/fpga/nscscc-team/software/perf/lib/string.c:104
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c0018f0:	2980306d 	st.w	$r13,$r3,12(0xc)
1c0018f4:	2a00306d 	ld.bu	$r13,$r3,12(0xc)
1c0018f8:	2980306e 	st.w	$r14,$r3,12(0xc)
1c0018fc:	2a003064 	ld.bu	$r4,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/string.c:105
}
1c001900:	02804063 	addi.w	$r3,$r3,16(0x10)
/code/fpga/nscscc-team/software/perf/lib/string.c:104
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c001904:	001111a4 	sub.w	$r4,$r13,$r4
/code/fpga/nscscc-team/software/perf/lib/string.c:105
}
1c001908:	4c000020 	jirl	$r0,$r1,0
1c00190c:	03400000 	andi	$r0,$r0,0x0

1c001910 <strchr>:
strchr():
/code/fpga/nscscc-team/software/perf/lib/string.c:117
 * The strchr() function returns a pointer to the first occurrence of
 * character in @s. If the value is not found, the function returns 'NULL'.
 * */
char *
strchr(const char *s, char c) {
    while (*s != '\0') {
1c001910:	2800008d 	ld.b	$r13,$r4,0
/code/fpga/nscscc-team/software/perf/lib/string.c:116
strchr(const char *s, char c) {
1c001914:	0015008c 	move	$r12,$r4
/code/fpga/nscscc-team/software/perf/lib/string.c:117
    while (*s != '\0') {
1c001918:	58001da0 	beq	$r13,$r0,28(0x1c) # 1c001934 <strchr+0x24>
/code/fpga/nscscc-team/software/perf/lib/string.c:118
        if (*s == c) {
1c00191c:	5c000da5 	bne	$r13,$r5,12(0xc) # 1c001928 <strchr+0x18>
1c001920:	50002800 	b	40(0x28) # 1c001948 <strchr+0x38>
1c001924:	58001da5 	beq	$r13,$r5,28(0x1c) # 1c001940 <strchr+0x30>
/code/fpga/nscscc-team/software/perf/lib/string.c:121
            return (char *)s;
        }
        s ++;
1c001928:	0280058c 	addi.w	$r12,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:117
    while (*s != '\0') {
1c00192c:	2800018d 	ld.b	$r13,$r12,0
1c001930:	5ffff5a0 	bne	$r13,$r0,-12(0x3fff4) # 1c001924 <strchr+0x14>
/code/fpga/nscscc-team/software/perf/lib/string.c:123
    }
    return NULL;
1c001934:	00150004 	move	$r4,$r0
1c001938:	4c000020 	jirl	$r0,$r1,0
1c00193c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:121
        s ++;
1c001940:	00150184 	move	$r4,$r12
/code/fpga/nscscc-team/software/perf/lib/string.c:124
}
1c001944:	4c000020 	jirl	$r0,$r1,0
1c001948:	4c000020 	jirl	$r0,$r1,0
1c00194c:	03400000 	andi	$r0,$r0,0x0

1c001950 <strfind>:
strfind():
/code/fpga/nscscc-team/software/perf/lib/string.c:137
 * not found in @s, then it returns a pointer to the null byte at the
 * end of @s, rather than 'NULL'.
 * */
char *
strfind(const char *s, char c) {
    while (*s != '\0') {
1c001950:	2800008c 	ld.b	$r12,$r4,0
1c001954:	58001d80 	beq	$r12,$r0,28(0x1c) # 1c001970 <strfind+0x20>
/code/fpga/nscscc-team/software/perf/lib/string.c:138
        if (*s == c) {
1c001958:	5c000cac 	bne	$r5,$r12,12(0xc) # 1c001964 <strfind+0x14>
1c00195c:	50001800 	b	24(0x18) # 1c001974 <strfind+0x24>
1c001960:	58001185 	beq	$r12,$r5,16(0x10) # 1c001970 <strfind+0x20>
/code/fpga/nscscc-team/software/perf/lib/string.c:141
            break;
        }
        s ++;
1c001964:	02800484 	addi.w	$r4,$r4,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:137
    while (*s != '\0') {
1c001968:	2800008c 	ld.b	$r12,$r4,0
1c00196c:	5ffff580 	bne	$r12,$r0,-12(0x3fff4) # 1c001960 <strfind+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:144
    }
    return (char *)s;
}
1c001970:	4c000020 	jirl	$r0,$r1,0
1c001974:	4c000020 	jirl	$r0,$r1,0
1c001978:	03400000 	andi	$r0,$r0,0x0
1c00197c:	03400000 	andi	$r0,$r0,0x0

1c001980 <memset>:
memset():
/code/fpga/nscscc-team/software/perf/lib/string.c:251
memset(void *s, char c, size_t n) {
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memset(s, c, n);
#else
    char *p = s;
    while (n -- > 0) {
1c001980:	58001cc0 	beq	$r6,$r0,28(0x1c) # 1c00199c <memset+0x1c>
1c001984:	00101886 	add.w	$r6,$r4,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:250
    char *p = s;
1c001988:	0015008c 	move	$r12,$r4
1c00198c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:252
        *p ++ = c;
1c001990:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001994:	293ffd85 	st.b	$r5,$r12,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:251
    while (n -- > 0) {
1c001998:	5ffff986 	bne	$r12,$r6,-8(0x3fff8) # 1c001990 <memset+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:256
    }
    return s;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c00199c:	4c000020 	jirl	$r0,$r1,0

1c0019a0 <memcpy>:
memcpy():
/code/fpga/nscscc-team/software/perf/lib/string.c:279
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memcpy(dst, src, n);
#else
    const char *s = src;
    char *d = dst;
    while (n -- > 0) {
1c0019a0:	580024c0 	beq	$r6,$r0,36(0x24) # 1c0019c4 <memcpy+0x24>
1c0019a4:	001018a6 	add.w	$r6,$r5,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:278
    char *d = dst;
1c0019a8:	0015008c 	move	$r12,$r4
1c0019ac:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:280
        *d ++ = *s ++;
1c0019b0:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c0019b4:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c0019b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0019bc:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:279
    while (n -- > 0) {
1c0019c0:	5ffff0a6 	bne	$r5,$r6,-16(0x3fff0) # 1c0019b0 <memcpy+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:284
    }
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c0019c4:	4c000020 	jirl	$r0,$r1,0
1c0019c8:	03400000 	andi	$r0,$r0,0x0
1c0019cc:	03400000 	andi	$r0,$r0,0x0

1c0019d0 <memmove>:
memmove():
/code/fpga/nscscc-team/software/perf/lib/string.c:302
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memmove(dst, src, n);
#else
    const char *s = src;
    char *d = dst;
    if (s < d && s + n > d) {
1c0019d0:	6c0030a4 	bgeu	$r5,$r4,48(0x30) # 1c001a00 <memmove+0x30>
/code/fpga/nscscc-team/software/perf/lib/string.c:302 (discriminator 1)
1c0019d4:	001018ac 	add.w	$r12,$r5,$r6
1c0019d8:	6c00288c 	bgeu	$r4,$r12,40(0x28) # 1c001a00 <memmove+0x30>
/code/fpga/nscscc-team/software/perf/lib/string.c:303
        s += n, d += n;
1c0019dc:	0010188d 	add.w	$r13,$r4,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:304
        while (n -- > 0) {
1c0019e0:	580044c0 	beq	$r6,$r0,68(0x44) # 1c001a24 <memmove+0x54>
/code/fpga/nscscc-team/software/perf/lib/string.c:305
            *-- d = *-- s;
1c0019e4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0019e8:	2800018e 	ld.b	$r14,$r12,0
1c0019ec:	02bffdad 	addi.w	$r13,$r13,-1(0xfff)
1c0019f0:	290001ae 	st.b	$r14,$r13,0
/code/fpga/nscscc-team/software/perf/lib/string.c:304
        while (n -- > 0) {
1c0019f4:	5ffff0ac 	bne	$r5,$r12,-16(0x3fff0) # 1c0019e4 <memmove+0x14>
1c0019f8:	4c000020 	jirl	$r0,$r1,0
1c0019fc:	03400000 	andi	$r0,$r0,0x0
1c001a00:	001018ae 	add.w	$r14,$r5,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:308
        }
    } else {
        while (n -- > 0) {
1c001a04:	0015008c 	move	$r12,$r4
1c001a08:	580020c0 	beq	$r6,$r0,32(0x20) # 1c001a28 <memmove+0x58>
1c001a0c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:309
            *d ++ = *s ++;
1c001a10:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c001a14:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c001a18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001a1c:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:308
        while (n -- > 0) {
1c001a20:	5ffff0ae 	bne	$r5,$r14,-16(0x3fff0) # 1c001a10 <memmove+0x40>
/code/fpga/nscscc-team/software/perf/lib/string.c:314
        }
    }
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c001a24:	4c000020 	jirl	$r0,$r1,0
1c001a28:	4c000020 	jirl	$r0,$r1,0
1c001a2c:	03400000 	andi	$r0,$r0,0x0

1c001a30 <memcmp>:
memcmp():
/code/fpga/nscscc-team/software/perf/lib/string.c:334
 * */
int
memcmp(const void *v1, const void *v2, size_t n) {
    const char *s1 = (const char *)v1;
    const char *s2 = (const char *)v2;
    while (n -- > 0) {
1c001a30:	580030c0 	beq	$r6,$r0,48(0x30) # 1c001a60 <memcmp+0x30>
/code/fpga/nscscc-team/software/perf/lib/string.c:335
        if (*s1 != *s2) {
1c001a34:	2800008c 	ld.b	$r12,$r4,0
1c001a38:	280000ad 	ld.b	$r13,$r5,0
1c001a3c:	00101886 	add.w	$r6,$r4,$r6
1c001a40:	580015ac 	beq	$r13,$r12,20(0x14) # 1c001a54 <memcmp+0x24>
1c001a44:	50002400 	b	36(0x24) # 1c001a68 <memcmp+0x38>
1c001a48:	2800008c 	ld.b	$r12,$r4,0
1c001a4c:	280000ad 	ld.b	$r13,$r5,0
1c001a50:	5c00198d 	bne	$r12,$r13,24(0x18) # 1c001a68 <memcmp+0x38>
/code/fpga/nscscc-team/software/perf/lib/string.c:338
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
        }
        s1 ++, s2 ++;
1c001a54:	02800484 	addi.w	$r4,$r4,1(0x1)
1c001a58:	028004a5 	addi.w	$r5,$r5,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:334
    while (n -- > 0) {
1c001a5c:	5fffec86 	bne	$r4,$r6,-20(0x3ffec) # 1c001a48 <memcmp+0x18>
/code/fpga/nscscc-team/software/perf/lib/string.c:340
    }
    return 0;
1c001a60:	00150004 	move	$r4,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:341
}
1c001a64:	4c000020 	jirl	$r0,$r1,0
/code/fpga/nscscc-team/software/perf/lib/string.c:331
memcmp(const void *v1, const void *v2, size_t n) {
1c001a68:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
/code/fpga/nscscc-team/software/perf/lib/string.c:336
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
1c001a6c:	2980306c 	st.w	$r12,$r3,12(0xc)
1c001a70:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c001a74:	2980306d 	st.w	$r13,$r3,12(0xc)
1c001a78:	2a003064 	ld.bu	$r4,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/string.c:341
}
1c001a7c:	02804063 	addi.w	$r3,$r3,16(0x10)
/code/fpga/nscscc-team/software/perf/lib/string.c:336
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
1c001a80:	00111184 	sub.w	$r4,$r12,$r4
/code/fpga/nscscc-team/software/perf/lib/string.c:341
}
1c001a84:	4c000020 	jirl	$r0,$r1,0
1c001a88:	03400000 	andi	$r0,$r0,0x0
1c001a8c:	03400000 	andi	$r0,$r0,0x0

1c001a90 <bzero>:
memset():
/code/fpga/nscscc-team/software/perf/lib/string.c:251
    while (n -- > 0) {
1c001a90:	580014a0 	beq	$r5,$r0,20(0x14) # 1c001aa4 <bzero+0x14>
1c001a94:	00101485 	add.w	$r5,$r4,$r5
/code/fpga/nscscc-team/software/perf/lib/string.c:252
        *p ++ = c;
1c001a98:	02800484 	addi.w	$r4,$r4,1(0x1)
1c001a9c:	293ffc80 	st.b	$r0,$r4,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:251
    while (n -- > 0) {
1c001aa0:	5ffff885 	bne	$r4,$r5,-8(0x3fff8) # 1c001a98 <bzero+0x8>
bzero():
/code/fpga/nscscc-team/software/perf/lib/string.c:345

void bzero(void *s, size_t n){
	memset(s, 0, n);
}
1c001aa4:	4c000020 	jirl	$r0,$r1,0
1c001aa8:	03400000 	andi	$r0,$r0,0x0
1c001aac:	03400000 	andi	$r0,$r0,0x0

1c001ab0 <get_count>:
get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:18
        );
    return  _contval;
}

unsigned long get_count()
{
1c001ab0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ab4:	29803079 	st.w	$r25,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c001ab8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c001abc:	28800324 	ld.w	$r4,$r25,0
/code/fpga/nscscc-team/software/perf/lib/time.c:20
    return  _get_count();
}
1c001ac0:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001ac4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ac8:	4c000020 	jirl	$r0,$r1,0
1c001acc:	03400000 	andi	$r0,$r0,0x0

1c001ad0 <_get_count>:
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:20
1c001ad0:	53ffe3ff 	b	-32(0xfffffe0) # 1c001ab0 <get_count>
1c001ad4:	03400000 	andi	$r0,$r0,0x0
1c001ad8:	03400000 	andi	$r0,$r0,0x0
1c001adc:	03400000 	andi	$r0,$r0,0x0

1c001ae0 <get_count_my>:
get_count_my():
/code/fpga/nscscc-team/software/perf/lib/time.c:25

unsigned long get_count_my()
{
    unsigned long n;
    asm volatile(
1c001ae0:	00006004 	rdtimel.w	$r4,$r0
/code/fpga/nscscc-team/software/perf/lib/time.c:30
        "rdcntvl.w %0\n\t"
        :"=r"(n)
        );
    return  n;
}
1c001ae4:	4c000020 	jirl	$r0,$r1,0
1c001ae8:	03400000 	andi	$r0,$r0,0x0
1c001aec:	03400000 	andi	$r0,$r0,0x0

1c001af0 <clock_gettime>:
clock_gettime():
/code/fpga/nscscc-team/software/perf/lib/time.c:33

unsigned long clock_gettime(int sel,struct timespec *tmp)
{
1c001af0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001af4:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c001af8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c001afc:	2880032f 	ld.w	$r15,$r25,0
clock_gettime():
/code/fpga/nscscc-team/software/perf/lib/time.c:36
    unsigned long n = 0;
    n = _get_count();
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c001b00:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c001b04:	001c35ed 	mul.w	$r13,$r15,$r13
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001b08:	02819011 	addi.w	$r17,$r0,100(0x64)
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001b0c:	1400030e 	lu12i.w	$r14,24(0x18)
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001b10:	002145f0 	div.wu	$r16,$r15,$r17
1c001b14:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c001b1c <clock_gettime+0x2c>
1c001b18:	002a0007 	break	0x7
/code/fpga/nscscc-team/software/perf/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c001b1c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001b20:	039a81ce 	ori	$r14,$r14,0x6a0
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001b24:	0021b211 	mod.wu	$r17,$r16,$r12
1c001b28:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001b30 <clock_gettime+0x40>
1c001b2c:	002a0007 	break	0x7
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001b30:	002139f0 	div.wu	$r16,$r15,$r14
1c001b34:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c001b3c <clock_gettime+0x4c>
1c001b38:	002a0007 	break	0x7
1c001b3c:	0021b20e 	mod.wu	$r14,$r16,$r12
1c001b40:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001b48 <clock_gettime+0x58>
1c001b44:	002a0007 	break	0x7
/code/fpga/nscscc-team/software/perf/lib/time.c:39
    tmp->tv_sec  = n/CPU_COUNT_PER_US/NSEC_PER_SEC;
1c001b48:	298000a0 	st.w	$r0,$r5,0
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001b4c:	298030ae 	st.w	$r14,$r5,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001b50:	298020b1 	st.w	$r17,$r5,8(0x8)
/code/fpga/nscscc-team/software/perf/lib/time.c:42
    //printf("clock ns=%d,sec=%d\n",tmp->tv_nsec,tmp->tv_sec);
    return 0;
}
1c001b54:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001b58:	00150004 	move	$r4,$r0
/code/fpga/nscscc-team/software/perf/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c001b5c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001b60:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001b68 <clock_gettime+0x78>
1c001b64:	002a0007 	break	0x7
1c001b68:	298010ae 	st.w	$r14,$r5,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/time.c:42
}
1c001b6c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001b70:	4c000020 	jirl	$r0,$r1,0
1c001b74:	03400000 	andi	$r0,$r0,0x0
1c001b78:	03400000 	andi	$r0,$r0,0x0
1c001b7c:	03400000 	andi	$r0,$r0,0x0

1c001b80 <get_clock>:
get_clock():
/code/fpga/nscscc-team/software/perf/lib/time.c:42
1c001b80:	53ff33ff 	b	-208(0xfffff30) # 1c001ab0 <get_count>
1c001b84:	03400000 	andi	$r0,$r0,0x0
1c001b88:	03400000 	andi	$r0,$r0,0x0
1c001b8c:	03400000 	andi	$r0,$r0,0x0

1c001b90 <get_ns>:
get_ns():
/code/fpga/nscscc-team/software/perf/lib/time.c:52
    n=_get_count();
    return n;
}

unsigned long get_ns(void)
{
1c001b90:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001b94:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c001b98:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c001b9c:	28800324 	ld.w	$r4,$r25,0
get_ns():
/code/fpga/nscscc-team/software/perf/lib/time.c:55
    unsigned long n=0;
    n = _get_count();
    n=n*(NSEC_PER_USEC/CPU_COUNT_PER_US);
1c001ba0:	0280280c 	addi.w	$r12,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/time.c:57
    return n;
}
1c001ba4:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001ba8:	001c3084 	mul.w	$r4,$r4,$r12
1c001bac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001bb0:	4c000020 	jirl	$r0,$r1,0
1c001bb4:	03400000 	andi	$r0,$r0,0x0
1c001bb8:	03400000 	andi	$r0,$r0,0x0
1c001bbc:	03400000 	andi	$r0,$r0,0x0

1c001bc0 <get_us>:
get_us():
/code/fpga/nscscc-team/software/perf/lib/time.c:61


unsigned long get_us(void)
{
1c001bc0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001bc4:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c001bc8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c001bcc:	28800324 	ld.w	$r4,$r25,0
get_us():
/code/fpga/nscscc-team/software/perf/lib/time.c:64
    unsigned long n=0;
    n = _get_count();
    n=n/CPU_COUNT_PER_US;
1c001bd0:	0281900c 	addi.w	$r12,$r0,100(0x64)
/code/fpga/nscscc-team/software/perf/lib/time.c:66
    return n;
}
1c001bd4:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001bd8:	0021308d 	div.wu	$r13,$r4,$r12
1c001bdc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001be4 <get_us+0x24>
1c001be0:	002a0007 	break	0x7
1c001be4:	001501a4 	move	$r4,$r13
1c001be8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001bec:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .data:

1c080000 <mx-0x1e8>:
1c080000:	000a6425 	0x000a6425
1c080004:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c09726c <out+0x3804>
1c080008:	44206579 	bnez	$r11,-1826716(0x642064) # 1bec206c <__stack_size+0x1beb206c>
1c08000c:	65742031 	bge	$r1,$r17,95264(0x17420) # 1c09742c <out+0x39c4>
1c080010:	62207473 	blt	$r3,$r19,-122764(0x22074) # 1c062084 <_data_lma+0x60494>
1c080014:	6e696765 	bgeu	$r27,$r5,-104092(0x26964) # 1c066978 <_data_lma+0x64d88>
1c080018:	0000002e 	0x0000002e
1c08001c:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c097284 <out+0x381c>
1c080020:	44206579 	bnez	$r11,-1826716(0x642064) # 1bec2084 <__stack_size+0x1beb2084>
1c080024:	41502031 	beqz	$r1,-3846112(0x455020) # 1bcd5044 <__stack_size+0x1bcc5044>
1c080028:	00215353 	div.wu	$r19,$r26,$r20
1c08002c:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c097294 <out+0x382c>
1c080030:	44206579 	bnez	$r11,-1826716(0x642064) # 1bec2094 <__stack_size+0x1beb2094>
1c080034:	52452031 	b	12993824(0xc64520) # 1cce4554 <_stack+0xbe4558>
1c080038:	21454f52 	sc.w	$r18,$r26,17740(0x454c)
1c08003c:	00002121 	clo.d	$r1,$r9
1c080040:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c0972a8 <out+0x3840>
1c080044:	44206579 	bnez	$r11,-1826716(0x642064) # 1bec20a8 <__stack_size+0x1beb20a8>
1c080048:	54203a31 	bl	-121364424(0x8c42038) # 14cc2080 <__stack_size+0x14cb2080>
1c08004c:	6c61746f 	bgeu	$r3,$r15,24948(0x6174) # 1c0861c0 <mx+0x5fd8>
1c080050:	756f4320 	0x756f4320
1c080054:	5328746e 	b	29042804(0x1bb2874) # 1dc328c8 <_stack+0x1b328cc>
1c080058:	6320436f 	blt	$r27,$r15,-57280(0x32040) # 1c072098 <_data_lma+0x704a8>
1c08005c:	746e756f 	0x746e756f
1c080060:	203d2029 	ll.w	$r9,$r1,15648(0x3d20)
1c080064:	78257830 	0x78257830
1c080068:	0000000a 	0x0000000a
1c08006c:	65726966 	bge	$r11,$r6,94824(0x17268) # 1c0972d4 <out+0x386c>
1c080070:	44206579 	bnez	$r11,-1826716(0x642064) # 1bec20d4 <__stack_size+0x1beb20d4>
1c080074:	54203a31 	bl	-121364424(0x8c42038) # 14cc20ac <__stack_size+0x14cb20ac>
1c080078:	6c61746f 	bgeu	$r3,$r15,24948(0x6174) # 1c0861ec <mx+0x6004>
1c08007c:	756f4320 	0x756f4320
1c080080:	4328746e 	beqz	$r3,3876980(0x3b2874) # 1c4328f4 <_stack+0x3328f8>
1c080084:	63205550 	blt	$r10,$r16,-57260(0x32054) # 1c0720d8 <_data_lma+0x704e8>
1c080088:	746e756f 	0x746e756f
1c08008c:	203d2029 	ll.w	$r9,$r1,15648(0x3d20)
1c080090:	78257830 	0x78257830
1c080094:	0000000a 	0x0000000a
1c080098:	1c001590 	pcaddu12i	$r16,172(0xac)
1c08009c:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0800a0:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0800a4:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0800a8:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0800ac:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0800b0:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0800b4:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0800b8:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0800bc:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0800c0:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0800c4:	1c001468 	pcaddu12i	$r8,163(0xa3)
1c0800c8:	1c001474 	pcaddu12i	$r20,163(0xa3)
1c0800cc:	1c001474 	pcaddu12i	$r20,163(0xa3)
1c0800d0:	1c001474 	pcaddu12i	$r20,163(0xa3)
1c0800d4:	1c001474 	pcaddu12i	$r20,163(0xa3)
1c0800d8:	1c001474 	pcaddu12i	$r20,163(0xa3)
1c0800dc:	1c001474 	pcaddu12i	$r20,163(0xa3)
1c0800e0:	1c001474 	pcaddu12i	$r20,163(0xa3)
1c0800e4:	1c001474 	pcaddu12i	$r20,163(0xa3)
1c0800e8:	1c001474 	pcaddu12i	$r20,163(0xa3)
1c0800ec:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0800f0:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0800f4:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0800f8:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0800fc:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080100:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080104:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080108:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c08010c:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080110:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080114:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080118:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c08011c:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080120:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080124:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080128:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c08012c:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080130:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080134:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080138:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c08013c:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080140:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080144:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080148:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c08014c:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080150:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080154:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080158:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c08015c:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080160:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080164:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080168:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c08016c:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080170:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080174:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080178:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c08017c:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080180:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080184:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c080188:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c08018c:	1c0014b4 	pcaddu12i	$r20,165(0xa5)
1c080190:	1c0014d0 	pcaddu12i	$r16,166(0xa6)
1c080194:	1c0014e4 	pcaddu12i	$r4,167(0xa7)
1c080198:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c08019c:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0801a0:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0801a4:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0801a8:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0801ac:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0801b0:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0801b4:	1c001500 	pcaddu12i	$r0,168(0xa8)
1c0801b8:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0801bc:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0801c0:	1c001520 	pcaddu12i	$r0,169(0xa9)
1c0801c4:	1c001540 	pcaddu12i	$r0,170(0xaa)
1c0801c8:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0801cc:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0801d0:	1c001560 	pcaddu12i	$r0,171(0xab)
1c0801d4:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0801d8:	1c001574 	pcaddu12i	$r20,171(0xab)
1c0801dc:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0801e0:	1c0015a0 	pcaddu12i	$r0,173(0xad)
1c0801e4:	1c001540 	pcaddu12i	$r0,170(0xaa)

1c0801e8 <mx>:
rodata_end():
1c0801e8:	00000001 	0x00000001
	...

1c089e28 <mn>:
1c089e28:	00000001 	0x00000001
	...

1c093a68 <out>:
1c093a68:	00000001 	0x00000001
	...

1c09d6a8 <in>:
1c09d6a8:	00000001 	0x00000001
	...

1c0a72e8 <D1_data1>:
1c0a72e8:	0000001d 	0x0000001d
1c0a72ec:	000003b7 	0x000003b7
1c0a72f0:	00000027 	0x00000027
1c0a72f4:	00000114 	0x00000114
1c0a72f8:	0000017c 	0x0000017c
1c0a72fc:	0000035d 	0x0000035d
1c0a7300:	00000165 	0x00000165
1c0a7304:	00000144 	0x00000144
1c0a7308:	00000270 	0x00000270
1c0a730c:	0000016b 	0x0000016b
1c0a7310:	000002f6 	0x000002f6
1c0a7314:	00000318 	0x00000318
1c0a7318:	000000e9 	0x000000e9
1c0a731c:	000002f0 	0x000002f0
1c0a7320:	000003b6 	0x000003b6
1c0a7324:	0000037e 	0x0000037e
1c0a7328:	000000d7 	0x000000d7
1c0a732c:	00000017 	0x00000017
1c0a7330:	0000020d 	0x0000020d
1c0a7334:	0000019e 	0x0000019e
1c0a7338:	000003a5 	0x000003a5
1c0a733c:	00000223 	0x00000223
1c0a7340:	0000016c 	0x0000016c
1c0a7344:	0000009b 	0x0000009b
1c0a7348:	00000100 	0x00000100
1c0a734c:	000003b9 	0x000003b9
1c0a7350:	000002ed 	0x000002ed
1c0a7354:	00000341 	0x00000341
1c0a7358:	00000158 	0x00000158
1c0a735c:	00000318 	0x00000318
1c0a7360:	00000266 	0x00000266
1c0a7364:	00000279 	0x00000279
1c0a7368:	00000145 	0x00000145
1c0a736c:	000002e8 	0x000002e8
1c0a7370:	00000368 	0x00000368
1c0a7374:	000000ef 	0x000000ef
1c0a7378:	0000013d 	0x0000013d
1c0a737c:	0000004d 	0x0000004d
1c0a7380:	0000001d 	0x0000001d
1c0a7384:	00000014 	0x00000014
1c0a7388:	00000221 	0x00000221
1c0a738c:	00000259 	0x00000259
1c0a7390:	000000a8 	0x000000a8
1c0a7394:	00000171 	0x00000171
1c0a7398:	0000007c 	0x0000007c
1c0a739c:	000002f8 	0x000002f8
1c0a73a0:	000002d7 	0x000002d7
1c0a73a4:	00000203 	0x00000203
1c0a73a8:	00000031 	0x00000031
1c0a73ac:	00000007 	0x00000007
1c0a73b0:	00000124 	0x00000124
1c0a73b4:	00000277 	0x00000277
1c0a73b8:	00000180 	0x00000180
1c0a73bc:	00000106 	0x00000106
1c0a73c0:	00000299 	0x00000299
1c0a73c4:	000001ae 	0x000001ae
1c0a73c8:	00000193 	0x00000193
1c0a73cc:	00000130 	0x00000130
1c0a73d0:	000001ca 	0x000001ca
1c0a73d4:	0000021d 	0x0000021d
1c0a73d8:	0000013a 	0x0000013a
1c0a73dc:	000003e6 	0x000003e6
1c0a73e0:	00000144 	0x00000144
1c0a73e4:	00000242 	0x00000242
1c0a73e8:	0000001b 	0x0000001b
1c0a73ec:	0000025f 	0x0000025f
1c0a73f0:	000000f5 	0x000000f5
1c0a73f4:	00000026 	0x00000026
1c0a73f8:	00000353 	0x00000353
1c0a73fc:	0000036a 	0x0000036a
1c0a7400:	000001de 	0x000001de
1c0a7404:	00000384 	0x00000384
1c0a7408:	00000172 	0x00000172
1c0a740c:	000000af 	0x000000af
1c0a7410:	00000202 	0x00000202
1c0a7414:	0000000d 	0x0000000d
1c0a7418:	0000034d 	0x0000034d
1c0a741c:	000002cd 	0x000002cd
1c0a7420:	00000043 	0x00000043
1c0a7424:	000002d3 	0x000002d3
1c0a7428:	00000385 	0x00000385
1c0a742c:	0000033c 	0x0000033c
1c0a7430:	000003a8 	0x000003a8
1c0a7434:	0000037b 	0x0000037b
1c0a7438:	00000048 	0x00000048
1c0a743c:	000003b8 	0x000003b8
1c0a7440:	000002fa 	0x000002fa
1c0a7444:	00000218 	0x00000218
1c0a7448:	000003d9 	0x000003d9
1c0a744c:	000001e8 	0x000001e8
1c0a7450:	000000e5 	0x000000e5
1c0a7454:	00000051 	0x00000051
1c0a7458:	0000038d 	0x0000038d
1c0a745c:	00000265 	0x00000265
1c0a7460:	00000348 	0x00000348
1c0a7464:	00000042 	0x00000042
1c0a7468:	00000385 	0x00000385
1c0a746c:	0000004f 	0x0000004f
1c0a7470:	0000032d 	0x0000032d
1c0a7474:	0000003b 	0x0000003b
1c0a7478:	000000d4 	0x000000d4
1c0a747c:	000001f6 	0x000001f6
1c0a7480:	000003d9 	0x000003d9
1c0a7484:	0000013d 	0x0000013d
1c0a7488:	00000070 	0x00000070
1c0a748c:	000000a1 	0x000000a1
1c0a7490:	000003ad 	0x000003ad
1c0a7494:	00000370 	0x00000370
1c0a7498:	00000096 	0x00000096
1c0a749c:	00000257 	0x00000257
1c0a74a0:	000002da 	0x000002da
1c0a74a4:	0000017a 	0x0000017a
1c0a74a8:	0000034f 	0x0000034f
1c0a74ac:	0000016f 	0x0000016f
1c0a74b0:	00000385 	0x00000385
1c0a74b4:	0000009b 	0x0000009b
1c0a74b8:	000003d6 	0x000003d6
1c0a74bc:	00000154 	0x00000154
1c0a74c0:	00000061 	0x00000061
1c0a74c4:	000003bd 	0x000003bd
1c0a74c8:	0000004e 	0x0000004e
1c0a74cc:	0000008a 	0x0000008a
1c0a74d0:	00000167 	0x00000167
1c0a74d4:	0000001d 	0x0000001d
1c0a74d8:	000003b6 	0x000003b6
1c0a74dc:	00000242 	0x00000242
1c0a74e0:	00000272 	0x00000272
1c0a74e4:	00000224 	0x00000224
1c0a74e8:	00000050 	0x00000050
1c0a74ec:	000002bf 	0x000002bf
1c0a74f0:	000002a2 	0x000002a2
1c0a74f4:	00000050 	0x00000050
1c0a74f8:	00000365 	0x00000365
1c0a74fc:	000003ad 	0x000003ad
1c0a7500:	00000144 	0x00000144
1c0a7504:	0000037d 	0x0000037d
1c0a7508:	0000004c 	0x0000004c
1c0a750c:	00000107 	0x00000107
1c0a7510:	00000344 	0x00000344
1c0a7514:	0000016d 	0x0000016d
1c0a7518:	000001c5 	0x000001c5
1c0a751c:	0000010e 	0x0000010e
1c0a7520:	000001fb 	0x000001fb
1c0a7524:	00000212 	0x00000212
1c0a7528:	00000361 	0x00000361
1c0a752c:	000003d6 	0x000003d6
1c0a7530:	000001ed 	0x000001ed
1c0a7534:	00000364 	0x00000364
1c0a7538:	00000094 	0x00000094
1c0a753c:	00000365 	0x00000365
1c0a7540:	000002a3 	0x000002a3
1c0a7544:	000001d6 	0x000001d6
1c0a7548:	000001b8 	0x000001b8
1c0a754c:	00000200 	0x00000200
1c0a7550:	0000031d 	0x0000031d
1c0a7554:	000003a1 	0x000003a1
1c0a7558:	00000381 	0x00000381
1c0a755c:	000000e0 	0x000000e0
1c0a7560:	0000026b 	0x0000026b
1c0a7564:	0000029a 	0x0000029a
1c0a7568:	000000fb 	0x000000fb
1c0a756c:	000001e5 	0x000001e5
1c0a7570:	000002c3 	0x000002c3
1c0a7574:	000002a8 	0x000002a8
1c0a7578:	00000119 	0x00000119
1c0a757c:	000003de 	0x000003de
1c0a7580:	000001b3 	0x000001b3
1c0a7584:	000002a3 	0x000002a3
1c0a7588:	000000bd 	0x000000bd
1c0a758c:	000001cf 	0x000001cf
1c0a7590:	000002e7 	0x000002e7
1c0a7594:	000001e9 	0x000001e9
1c0a7598:	00000296 	0x00000296
1c0a759c:	000000df 	0x000000df
1c0a75a0:	0000009b 	0x0000009b
1c0a75a4:	00000019 	0x00000019
1c0a75a8:	000001dc 	0x000001dc
1c0a75ac:	0000035e 	0x0000035e
1c0a75b0:	00000366 	0x00000366
1c0a75b4:	0000011c 	0x0000011c
1c0a75b8:	000001bd 	0x000001bd
1c0a75bc:	000000bf 	0x000000bf
1c0a75c0:	00000129 	0x00000129
1c0a75c4:	000000b5 	0x000000b5
1c0a75c8:	00000384 	0x00000384
1c0a75cc:	00000120 	0x00000120
1c0a75d0:	000000f9 	0x000000f9
1c0a75d4:	00000173 	0x00000173
1c0a75d8:	00000215 	0x00000215
1c0a75dc:	000003a1 	0x000003a1
1c0a75e0:	0000009f 	0x0000009f
1c0a75e4:	0000001e 	0x0000001e
1c0a75e8:	00000059 	0x00000059
1c0a75ec:	000003da 	0x000003da
1c0a75f0:	00000021 	0x00000021
1c0a75f4:	00000223 	0x00000223
1c0a75f8:	000000b2 	0x000000b2
1c0a75fc:	000003b5 	0x000003b5
1c0a7600:	000003c4 	0x000003c4
1c0a7604:	00000082 	0x00000082
1c0a7608:	000002bc 	0x000002bc
1c0a760c:	00000348 	0x00000348
1c0a7610:	0000007c 	0x0000007c
1c0a7614:	000000f2 	0x000000f2
1c0a7618:	00000178 	0x00000178
1c0a761c:	0000036f 	0x0000036f
1c0a7620:	000002ea 	0x000002ea
1c0a7624:	00000127 	0x00000127
1c0a7628:	000001c2 	0x000001c2
1c0a762c:	00000310 	0x00000310
1c0a7630:	0000034c 	0x0000034c
1c0a7634:	000002f1 	0x000002f1
1c0a7638:	00000026 	0x00000026
1c0a763c:	000001b2 	0x000001b2
1c0a7640:	00000193 	0x00000193
1c0a7644:	000001b7 	0x000001b7
1c0a7648:	00000256 	0x00000256
1c0a764c:	000002c9 	0x000002c9
1c0a7650:	000001e0 	0x000001e0
1c0a7654:	0000024d 	0x0000024d
1c0a7658:	000002e6 	0x000002e6
1c0a765c:	000000ea 	0x000000ea
1c0a7660:	0000028a 	0x0000028a
1c0a7664:	0000039a 	0x0000039a
1c0a7668:	00000003 	0x00000003
1c0a766c:	00000303 	0x00000303
1c0a7670:	00000010 	0x00000010
1c0a7674:	000001f2 	0x000001f2
1c0a7678:	00000173 	0x00000173
1c0a767c:	000003bc 	0x000003bc
1c0a7680:	000002eb 	0x000002eb
1c0a7684:	00000350 	0x00000350
1c0a7688:	0000001e 	0x0000001e
1c0a768c:	00000301 	0x00000301
1c0a7690:	000001e3 	0x000001e3
1c0a7694:	0000032a 	0x0000032a
1c0a7698:	000002ab 	0x000002ab
1c0a769c:	00000258 	0x00000258
1c0a76a0:	000003d5 	0x000003d5
1c0a76a4:	000000a8 	0x000000a8
1c0a76a8:	0000007f 	0x0000007f
1c0a76ac:	00000145 	0x00000145
1c0a76b0:	00000144 	0x00000144
1c0a76b4:	000000ff 	0x000000ff
1c0a76b8:	000001be 	0x000001be
1c0a76bc:	00000021 	0x00000021
1c0a76c0:	00000119 	0x00000119
1c0a76c4:	00000312 	0x00000312
1c0a76c8:	00000380 	0x00000380
1c0a76cc:	0000017f 	0x0000017f
1c0a76d0:	00000183 	0x00000183
1c0a76d4:	00000337 	0x00000337
1c0a76d8:	0000012e 	0x0000012e
1c0a76dc:	0000013a 	0x0000013a
1c0a76e0:	000001b5 	0x000001b5
1c0a76e4:	00000066 	0x00000066
1c0a76e8:	00000275 	0x00000275
1c0a76ec:	00000110 	0x00000110
1c0a76f0:	000001de 	0x000001de
1c0a76f4:	000001a3 	0x000001a3
1c0a76f8:	00000177 	0x00000177
1c0a76fc:	00000225 	0x00000225
1c0a7700:	000001a9 	0x000001a9
1c0a7704:	0000001b 	0x0000001b
1c0a7708:	0000019a 	0x0000019a
1c0a770c:	00000214 	0x00000214
1c0a7710:	0000002c 	0x0000002c
1c0a7714:	000003dc 	0x000003dc
1c0a7718:	000000c6 	0x000000c6
1c0a771c:	000000bb 	0x000000bb
1c0a7720:	000001f8 	0x000001f8
1c0a7724:	00000025 	0x00000025
1c0a7728:	00000345 	0x00000345
1c0a772c:	00000101 	0x00000101
1c0a7730:	00000152 	0x00000152
1c0a7734:	00000294 	0x00000294
1c0a7738:	0000007c 	0x0000007c
1c0a773c:	000003d2 	0x000003d2
1c0a7740:	0000032d 	0x0000032d
1c0a7744:	00000034 	0x00000034
1c0a7748:	00000209 	0x00000209
1c0a774c:	00000149 	0x00000149
1c0a7750:	00000184 	0x00000184
1c0a7754:	00000357 	0x00000357
1c0a7758:	000002d9 	0x000002d9
1c0a775c:	00000075 	0x00000075
1c0a7760:	0000013a 	0x0000013a
1c0a7764:	00000301 	0x00000301
1c0a7768:	0000007f 	0x0000007f
1c0a776c:	000000bf 	0x000000bf
1c0a7770:	00000124 	0x00000124
1c0a7774:	00000015 	0x00000015
1c0a7778:	0000037f 	0x0000037f
1c0a777c:	00000025 	0x00000025
1c0a7780:	000002ce 	0x000002ce
1c0a7784:	000000fa 	0x000000fa
1c0a7788:	00000202 	0x00000202
1c0a778c:	0000030b 	0x0000030b
1c0a7790:	00000146 	0x00000146
1c0a7794:	00000241 	0x00000241
1c0a7798:	00000132 	0x00000132
1c0a779c:	000002f5 	0x000002f5
1c0a77a0:	00000022 	0x00000022
1c0a77a4:	0000016b 	0x0000016b
1c0a77a8:	00000312 	0x00000312
1c0a77ac:	00000329 	0x00000329
1c0a77b0:	00000099 	0x00000099
1c0a77b4:	00000046 	0x00000046
1c0a77b8:	000002ca 	0x000002ca
1c0a77bc:	00000262 	0x00000262
1c0a77c0:	0000023f 	0x0000023f
1c0a77c4:	000000d5 	0x000000d5
1c0a77c8:	00000263 	0x00000263
1c0a77cc:	00000014 	0x00000014
1c0a77d0:	000003be 	0x000003be
1c0a77d4:	00000267 	0x00000267
1c0a77d8:	000003d9 	0x000003d9
1c0a77dc:	000000fb 	0x000000fb
1c0a77e0:	000000b5 	0x000000b5
1c0a77e4:	00000007 	0x00000007
1c0a77e8:	00000239 	0x00000239
1c0a77ec:	00000133 	0x00000133
1c0a77f0:	0000005b 	0x0000005b
1c0a77f4:	000003e4 	0x000003e4
1c0a77f8:	0000005d 	0x0000005d
1c0a77fc:	00000069 	0x00000069
1c0a7800:	0000008f 	0x0000008f
1c0a7804:	000003b0 	0x000003b0
1c0a7808:	00000360 	0x00000360
1c0a780c:	00000222 	0x00000222
1c0a7810:	000001bc 	0x000001bc
1c0a7814:	000001c5 	0x000001c5
1c0a7818:	0000013e 	0x0000013e
1c0a781c:	00000202 	0x00000202
1c0a7820:	0000017f 	0x0000017f
1c0a7824:	00000222 	0x00000222
1c0a7828:	00000051 	0x00000051
1c0a782c:	00000080 	0x00000080
1c0a7830:	0000030c 	0x0000030c
1c0a7834:	00000023 	0x00000023
1c0a7838:	00000209 	0x00000209
1c0a783c:	000002ca 	0x000002ca
1c0a7840:	00000120 	0x00000120
1c0a7844:	0000000e 	0x0000000e
1c0a7848:	0000026e 	0x0000026e
1c0a784c:	0000026d 	0x0000026d
1c0a7850:	000002bd 	0x000002bd
1c0a7854:	000001bd 	0x000001bd
1c0a7858:	000000bb 	0x000000bb
1c0a785c:	000000f6 	0x000000f6
1c0a7860:	00000251 	0x00000251
1c0a7864:	000002a2 	0x000002a2
1c0a7868:	0000014b 	0x0000014b
1c0a786c:	00000026 	0x00000026
1c0a7870:	00000078 	0x00000078
1c0a7874:	00000382 	0x00000382
1c0a7878:	0000016e 	0x0000016e
1c0a787c:	000001ad 	0x000001ad
1c0a7880:	00000123 	0x00000123
1c0a7884:	000000dd 	0x000000dd
1c0a7888:	00000229 	0x00000229
1c0a788c:	0000003b 	0x0000003b
1c0a7890:	00000146 	0x00000146
1c0a7894:	0000022e 	0x0000022e
1c0a7898:	00000235 	0x00000235
1c0a789c:	00000189 	0x00000189
1c0a78a0:	000003df 	0x000003df
1c0a78a4:	00000225 	0x00000225
1c0a78a8:	000000e8 	0x000000e8
1c0a78ac:	00000050 	0x00000050
1c0a78b0:	000003a7 	0x000003a7
1c0a78b4:	0000014a 	0x0000014a
1c0a78b8:	000001eb 	0x000001eb
1c0a78bc:	00000278 	0x00000278
1c0a78c0:	000001de 	0x000001de
1c0a78c4:	0000003a 	0x0000003a
1c0a78c8:	0000018c 	0x0000018c
1c0a78cc:	000000b7 	0x000000b7
1c0a78d0:	000000cd 	0x000000cd
1c0a78d4:	00000301 	0x00000301
1c0a78d8:	000000ec 	0x000000ec
1c0a78dc:	00000219 	0x00000219
1c0a78e0:	0000005c 	0x0000005c
1c0a78e4:	00000204 	0x00000204
1c0a78e8:	0000017b 	0x0000017b
1c0a78ec:	0000005a 	0x0000005a
1c0a78f0:	0000031c 	0x0000031c
1c0a78f4:	000000f8 	0x000000f8
1c0a78f8:	000001a2 	0x000001a2
1c0a78fc:	000000e6 	0x000000e6
1c0a7900:	00000170 	0x00000170
1c0a7904:	0000029a 	0x0000029a
1c0a7908:	00000260 	0x00000260
1c0a790c:	000003e1 	0x000003e1
1c0a7910:	000000db 	0x000000db
1c0a7914:	000002bc 	0x000002bc
1c0a7918:	000001c8 	0x000001c8
1c0a791c:	00000126 	0x00000126
1c0a7920:	00000395 	0x00000395
1c0a7924:	000001e2 	0x000001e2
1c0a7928:	00000265 	0x00000265
1c0a792c:	00000296 	0x00000296
1c0a7930:	00000186 	0x00000186
1c0a7934:	00000002 	0x00000002
1c0a7938:	000003b3 	0x000003b3
1c0a793c:	0000000b 	0x0000000b
1c0a7940:	00000051 	0x00000051
1c0a7944:	0000025f 	0x0000025f
1c0a7948:	00000382 	0x00000382
1c0a794c:	00000357 	0x00000357
1c0a7950:	00000012 	0x00000012
1c0a7954:	00000359 	0x00000359
1c0a7958:	00000136 	0x00000136
1c0a795c:	0000032b 	0x0000032b
1c0a7960:	0000029a 	0x0000029a
1c0a7964:	000003ac 	0x000003ac
1c0a7968:	00000167 	0x00000167
1c0a796c:	000000c7 	0x000000c7
1c0a7970:	00000094 	0x00000094
1c0a7974:	000001dc 	0x000001dc
1c0a7978:	0000013b 	0x0000013b
1c0a797c:	0000037a 	0x0000037a
1c0a7980:	00000136 	0x00000136
1c0a7984:	000003c8 	0x000003c8
1c0a7988:	000003d3 	0x000003d3
1c0a798c:	000000ae 	0x000000ae
1c0a7990:	0000037f 	0x0000037f
1c0a7994:	00000278 	0x00000278
1c0a7998:	00000255 	0x00000255
1c0a799c:	000002f7 	0x000002f7
1c0a79a0:	000000ff 	0x000000ff
1c0a79a4:	00000001 	0x00000001
1c0a79a8:	00000085 	0x00000085
1c0a79ac:	000002fb 	0x000002fb
1c0a79b0:	00000314 	0x00000314
1c0a79b4:	00000088 	0x00000088
1c0a79b8:	00000100 	0x00000100
1c0a79bc:	0000014f 	0x0000014f
1c0a79c0:	00000145 	0x00000145
1c0a79c4:	000002fe 	0x000002fe
1c0a79c8:	00000385 	0x00000385
1c0a79cc:	00000118 	0x00000118
1c0a79d0:	000000fe 	0x000000fe
1c0a79d4:	000002b0 	0x000002b0
1c0a79d8:	000002db 	0x000002db
1c0a79dc:	00000319 	0x00000319
1c0a79e0:	000003e4 	0x000003e4
1c0a79e4:	00000120 	0x00000120
1c0a79e8:	00000050 	0x00000050
1c0a79ec:	00000050 	0x00000050
1c0a79f0:	0000034a 	0x0000034a
1c0a79f4:	00000248 	0x00000248
1c0a79f8:	000003b7 	0x000003b7
1c0a79fc:	00000258 	0x00000258
1c0a7a00:	00000332 	0x00000332
1c0a7a04:	00000143 	0x00000143
1c0a7a08:	0000012f 	0x0000012f
1c0a7a0c:	0000012f 	0x0000012f
1c0a7a10:	0000013e 	0x0000013e
1c0a7a14:	00000327 	0x00000327
1c0a7a18:	0000002f 	0x0000002f
1c0a7a1c:	00000360 	0x00000360
1c0a7a20:	0000003f 	0x0000003f
1c0a7a24:	0000008c 	0x0000008c
1c0a7a28:	000001c2 	0x000001c2
1c0a7a2c:	000000e7 	0x000000e7
1c0a7a30:	00000389 	0x00000389
1c0a7a34:	000000c8 	0x000000c8
1c0a7a38:	000000f7 	0x000000f7
1c0a7a3c:	000002d5 	0x000002d5
1c0a7a40:	00000004 	0x00000004
1c0a7a44:	000002ca 	0x000002ca
1c0a7a48:	0000007a 	0x0000007a
1c0a7a4c:	0000012a 	0x0000012a
1c0a7a50:	0000003c 	0x0000003c
1c0a7a54:	00000223 	0x00000223
1c0a7a58:	000001b1 	0x000001b1
1c0a7a5c:	00000148 	0x00000148
1c0a7a60:	0000029a 	0x0000029a
1c0a7a64:	0000025e 	0x0000025e
1c0a7a68:	0000008f 	0x0000008f
1c0a7a6c:	00000283 	0x00000283
1c0a7a70:	000002b1 	0x000002b1
1c0a7a74:	000002cc 	0x000002cc
1c0a7a78:	000001a9 	0x000001a9
1c0a7a7c:	000002e1 	0x000002e1
1c0a7a80:	00000252 	0x00000252
1c0a7a84:	000000ff 	0x000000ff
1c0a7a88:	000000f3 	0x000000f3
1c0a7a8c:	000003a3 	0x000003a3
1c0a7a90:	00000219 	0x00000219
1c0a7a94:	00000166 	0x00000166

1c0a7a98 <D1_data0>:
1c0a7a98:	00000253 	0x00000253
1c0a7a9c:	000003d6 	0x000003d6
1c0a7aa0:	00000148 	0x00000148
1c0a7aa4:	0000021f 	0x0000021f
1c0a7aa8:	00000286 	0x00000286
1c0a7aac:	0000021d 	0x0000021d
1c0a7ab0:	000001e4 	0x000001e4
1c0a7ab4:	00000158 	0x00000158
1c0a7ab8:	0000035e 	0x0000035e
1c0a7abc:	00000189 	0x00000189
1c0a7ac0:	0000017a 	0x0000017a
1c0a7ac4:	000003e5 	0x000003e5
1c0a7ac8:	000002bb 	0x000002bb
1c0a7acc:	00000108 	0x00000108
1c0a7ad0:	00000080 	0x00000080
1c0a7ad4:	00000235 	0x00000235
1c0a7ad8:	00000246 	0x00000246
1c0a7adc:	00000088 	0x00000088
1c0a7ae0:	00000300 	0x00000300
1c0a7ae4:	00000368 	0x00000368
1c0a7ae8:	000003c7 	0x000003c7
1c0a7aec:	00000301 	0x00000301
1c0a7af0:	000003d3 	0x000003d3
1c0a7af4:	000001b7 	0x000001b7
1c0a7af8:	0000037c 	0x0000037c
1c0a7afc:	000000ae 	0x000000ae
1c0a7b00:	0000030b 	0x0000030b
1c0a7b04:	00000153 	0x00000153
1c0a7b08:	00000208 	0x00000208
1c0a7b0c:	000000af 	0x000000af
1c0a7b10:	000003a3 	0x000003a3
1c0a7b14:	0000025e 	0x0000025e
1c0a7b18:	00000092 	0x00000092
1c0a7b1c:	000001ae 	0x000001ae
1c0a7b20:	00000295 	0x00000295
1c0a7b24:	0000036d 	0x0000036d
1c0a7b28:	000003b6 	0x000003b6
1c0a7b2c:	00000067 	0x00000067
1c0a7b30:	00000233 	0x00000233
1c0a7b34:	00000387 	0x00000387
1c0a7b38:	000002a9 	0x000002a9
1c0a7b3c:	00000399 	0x00000399
1c0a7b40:	0000039c 	0x0000039c
1c0a7b44:	000000ba 	0x000000ba
1c0a7b48:	00000014 	0x00000014
1c0a7b4c:	0000024f 	0x0000024f
1c0a7b50:	000003b9 	0x000003b9
1c0a7b54:	000003c2 	0x000003c2
1c0a7b58:	000000fd 	0x000000fd
1c0a7b5c:	00000372 	0x00000372
1c0a7b60:	0000008d 	0x0000008d
1c0a7b64:	0000019d 	0x0000019d
1c0a7b68:	0000034d 	0x0000034d
1c0a7b6c:	00000151 	0x00000151
1c0a7b70:	000001d1 	0x000001d1
1c0a7b74:	000002df 	0x000002df
1c0a7b78:	00000293 	0x00000293
1c0a7b7c:	000002ee 	0x000002ee
1c0a7b80:	00000335 	0x00000335
1c0a7b84:	00000355 	0x00000355
1c0a7b88:	00000064 	0x00000064
1c0a7b8c:	00000209 	0x00000209
1c0a7b90:	00000010 	0x00000010
1c0a7b94:	000002e4 	0x000002e4
1c0a7b98:	00000244 	0x00000244
1c0a7b9c:	000001d4 	0x000001d4
1c0a7ba0:	00000232 	0x00000232
1c0a7ba4:	000000ce 	0x000000ce
1c0a7ba8:	000001dc 	0x000001dc
1c0a7bac:	000002aa 	0x000002aa
1c0a7bb0:	00000044 	0x00000044
1c0a7bb4:	0000027a 	0x0000027a
1c0a7bb8:	0000007e 	0x0000007e
1c0a7bbc:	0000037f 	0x0000037f
1c0a7bc0:	000003b3 	0x000003b3
1c0a7bc4:	000002b8 	0x000002b8
1c0a7bc8:	000000f6 	0x000000f6
1c0a7bcc:	000001ff 	0x000001ff
1c0a7bd0:	00000026 	0x00000026
1c0a7bd4:	00000164 	0x00000164
1c0a7bd8:	0000013f 	0x0000013f
1c0a7bdc:	00000123 	0x00000123
1c0a7be0:	00000207 	0x00000207
1c0a7be4:	0000016f 	0x0000016f
1c0a7be8:	000000a4 	0x000000a4
1c0a7bec:	00000117 	0x00000117
1c0a7bf0:	0000014a 	0x0000014a
1c0a7bf4:	00000230 	0x00000230
1c0a7bf8:	00000089 	0x00000089
1c0a7bfc:	0000015e 	0x0000015e
1c0a7c00:	00000234 	0x00000234
1c0a7c04:	00000033 	0x00000033
1c0a7c08:	0000014c 	0x0000014c
1c0a7c0c:	00000100 	0x00000100
1c0a7c10:	00000291 	0x00000291
1c0a7c14:	000001c7 	0x000001c7
1c0a7c18:	000001cb 	0x000001cb
1c0a7c1c:	000000f2 	0x000000f2
1c0a7c20:	00000219 	0x00000219
1c0a7c24:	00000017 	0x00000017
1c0a7c28:	0000020e 	0x0000020e
1c0a7c2c:	000002ca 	0x000002ca
1c0a7c30:	0000000a 	0x0000000a
1c0a7c34:	0000019c 	0x0000019c
1c0a7c38:	00000276 	0x00000276
1c0a7c3c:	0000011f 	0x0000011f
1c0a7c40:	0000019a 	0x0000019a
1c0a7c44:	00000348 	0x00000348
1c0a7c48:	000003db 	0x000003db
1c0a7c4c:	00000063 	0x00000063
1c0a7c50:	00000062 	0x00000062
1c0a7c54:	00000137 	0x00000137
1c0a7c58:	000000eb 	0x000000eb
1c0a7c5c:	000000c6 	0x000000c6
1c0a7c60:	0000024c 	0x0000024c
1c0a7c64:	000003d1 	0x000003d1
1c0a7c68:	0000011a 	0x0000011a
1c0a7c6c:	00000006 	0x00000006
1c0a7c70:	00000349 	0x00000349
1c0a7c74:	000002cf 	0x000002cf
1c0a7c78:	00000256 	0x00000256
1c0a7c7c:	00000103 	0x00000103
1c0a7c80:	000000cf 	0x000000cf
1c0a7c84:	000000ff 	0x000000ff
1c0a7c88:	000002d0 	0x000002d0
1c0a7c8c:	00000298 	0x00000298
1c0a7c90:	000002fe 	0x000002fe
1c0a7c94:	000001f5 	0x000001f5
1c0a7c98:	0000029f 	0x0000029f
1c0a7c9c:	00000143 	0x00000143
1c0a7ca0:	000003a9 	0x000003a9
1c0a7ca4:	000003b5 	0x000003b5
1c0a7ca8:	00000188 	0x00000188
1c0a7cac:	0000000e 	0x0000000e
1c0a7cb0:	000002e3 	0x000002e3
1c0a7cb4:	000000d9 	0x000000d9
1c0a7cb8:	000000e4 	0x000000e4
1c0a7cbc:	00000250 	0x00000250
1c0a7cc0:	000003bd 	0x000003bd
1c0a7cc4:	0000022c 	0x0000022c
1c0a7cc8:	00000196 	0x00000196
1c0a7ccc:	00000178 	0x00000178
1c0a7cd0:	0000005e 	0x0000005e
1c0a7cd4:	00000206 	0x00000206
1c0a7cd8:	0000029d 	0x0000029d
1c0a7cdc:	0000013b 	0x0000013b
1c0a7ce0:	000000df 	0x000000df
1c0a7ce4:	00000016 	0x00000016
1c0a7ce8:	000001e3 	0x000001e3
1c0a7cec:	00000271 	0x00000271
1c0a7cf0:	0000030c 	0x0000030c
1c0a7cf4:	000003de 	0x000003de
1c0a7cf8:	000002ec 	0x000002ec
1c0a7cfc:	000000ac 	0x000000ac
1c0a7d00:	00000021 	0x00000021
1c0a7d04:	00000374 	0x00000374
1c0a7d08:	00000155 	0x00000155
1c0a7d0c:	000003cc 	0x000003cc
1c0a7d10:	000001aa 	0x000001aa
1c0a7d14:	0000033f 	0x0000033f
1c0a7d18:	00000211 	0x00000211
1c0a7d1c:	000002d4 	0x000002d4
1c0a7d20:	00000313 	0x00000313
1c0a7d24:	000000f1 	0x000000f1
1c0a7d28:	00000274 	0x00000274
1c0a7d2c:	000002e8 	0x000002e8
1c0a7d30:	000001cd 	0x000001cd
1c0a7d34:	0000000c 	0x0000000c
1c0a7d38:	000002fb 	0x000002fb
1c0a7d3c:	00000352 	0x00000352
1c0a7d40:	000003cd 	0x000003cd
1c0a7d44:	000000f7 	0x000000f7
1c0a7d48:	00000193 	0x00000193
1c0a7d4c:	000000c3 	0x000000c3
1c0a7d50:	00000316 	0x00000316
1c0a7d54:	00000122 	0x00000122
1c0a7d58:	00000358 	0x00000358
1c0a7d5c:	000002fc 	0x000002fc
1c0a7d60:	0000014b 	0x0000014b
1c0a7d64:	0000031c 	0x0000031c
1c0a7d68:	00000045 	0x00000045
1c0a7d6c:	000002a5 	0x000002a5
1c0a7d70:	000002f2 	0x000002f2
1c0a7d74:	00000066 	0x00000066
1c0a7d78:	00000163 	0x00000163
1c0a7d7c:	00000324 	0x00000324
1c0a7d80:	000002e2 	0x000002e2
1c0a7d84:	0000002e 	0x0000002e
1c0a7d88:	00000398 	0x00000398
1c0a7d8c:	00000236 	0x00000236
1c0a7d90:	0000031b 	0x0000031b
1c0a7d94:	000003dd 	0x000003dd
1c0a7d98:	00000323 	0x00000323
1c0a7d9c:	00000202 	0x00000202
1c0a7da0:	000002e6 	0x000002e6
1c0a7da4:	0000016c 	0x0000016c
1c0a7da8:	0000007d 	0x0000007d
1c0a7dac:	00000275 	0x00000275
1c0a7db0:	00000379 	0x00000379
1c0a7db4:	0000023a 	0x0000023a
1c0a7db8:	00000308 	0x00000308
1c0a7dbc:	000000a1 	0x000000a1
1c0a7dc0:	00000018 	0x00000018
1c0a7dc4:	00000375 	0x00000375
1c0a7dc8:	00000259 	0x00000259
1c0a7dcc:	000003b4 	0x000003b4
1c0a7dd0:	00000336 	0x00000336
1c0a7dd4:	000002f9 	0x000002f9
1c0a7dd8:	00000325 	0x00000325
1c0a7ddc:	000001ef 	0x000001ef
1c0a7de0:	00000146 	0x00000146
1c0a7de4:	00000367 	0x00000367
1c0a7de8:	0000038f 	0x0000038f
1c0a7dec:	000003b8 	0x000003b8
1c0a7df0:	0000028b 	0x0000028b
1c0a7df4:	00000099 	0x00000099
1c0a7df8:	0000035a 	0x0000035a
1c0a7dfc:	000001fa 	0x000001fa
1c0a7e00:	00000391 	0x00000391
1c0a7e04:	00000397 	0x00000397
1c0a7e08:	0000031f 	0x0000031f
1c0a7e0c:	000000ec 	0x000000ec
1c0a7e10:	000002e1 	0x000002e1
1c0a7e14:	0000022f 	0x0000022f
1c0a7e18:	000000f9 	0x000000f9
1c0a7e1c:	000003c5 	0x000003c5
1c0a7e20:	000002d9 	0x000002d9
1c0a7e24:	000000d0 	0x000000d0
1c0a7e28:	000000ca 	0x000000ca
1c0a7e2c:	00000267 	0x00000267
1c0a7e30:	00000341 	0x00000341
1c0a7e34:	000001a1 	0x000001a1
1c0a7e38:	00000154 	0x00000154
1c0a7e3c:	000001b8 	0x000001b8
1c0a7e40:	00000342 	0x00000342
1c0a7e44:	00000101 	0x00000101
1c0a7e48:	000002e5 	0x000002e5
1c0a7e4c:	000002bc 	0x000002bc
1c0a7e50:	0000007a 	0x0000007a
1c0a7e54:	0000009e 	0x0000009e
1c0a7e58:	000001c4 	0x000001c4
1c0a7e5c:	00000074 	0x00000074
1c0a7e60:	000000d7 	0x000000d7
1c0a7e64:	000002f3 	0x000002f3
1c0a7e68:	00000353 	0x00000353
1c0a7e6c:	0000011b 	0x0000011b
1c0a7e70:	00000114 	0x00000114
1c0a7e74:	0000026a 	0x0000026a
1c0a7e78:	00000024 	0x00000024
1c0a7e7c:	00000333 	0x00000333
1c0a7e80:	00000085 	0x00000085
1c0a7e84:	00000258 	0x00000258
1c0a7e88:	00000285 	0x00000285
1c0a7e8c:	00000094 	0x00000094
1c0a7e90:	00000247 	0x00000247
1c0a7e94:	000003d7 	0x000003d7
1c0a7e98:	00000073 	0x00000073
1c0a7e9c:	000003a1 	0x000003a1
1c0a7ea0:	00000139 	0x00000139
1c0a7ea4:	0000003f 	0x0000003f
1c0a7ea8:	00000195 	0x00000195
1c0a7eac:	000000b5 	0x000000b5
1c0a7eb0:	00000216 	0x00000216
1c0a7eb4:	00000311 	0x00000311
1c0a7eb8:	000002ff 	0x000002ff
1c0a7ebc:	000003b1 	0x000003b1
1c0a7ec0:	0000015f 	0x0000015f
1c0a7ec4:	0000012f 	0x0000012f
1c0a7ec8:	0000031d 	0x0000031d
1c0a7ecc:	0000019f 	0x0000019f
1c0a7ed0:	000003a2 	0x000003a2
1c0a7ed4:	000000cc 	0x000000cc
1c0a7ed8:	00000190 	0x00000190
1c0a7edc:	000001d3 	0x000001d3
1c0a7ee0:	000002d7 	0x000002d7
1c0a7ee4:	000002b2 	0x000002b2
1c0a7ee8:	00000356 	0x00000356
1c0a7eec:	0000010c 	0x0000010c
1c0a7ef0:	00000315 	0x00000315
1c0a7ef4:	000002d8 	0x000002d8
1c0a7ef8:	0000025a 	0x0000025a
1c0a7efc:	00000133 	0x00000133
1c0a7f00:	000003d0 	0x000003d0
1c0a7f04:	00000168 	0x00000168
1c0a7f08:	000001bc 	0x000001bc
1c0a7f0c:	00000228 	0x00000228
1c0a7f10:	00000090 	0x00000090
1c0a7f14:	00000029 	0x00000029
1c0a7f18:	00000180 	0x00000180
1c0a7f1c:	000002c2 	0x000002c2
1c0a7f20:	00000389 	0x00000389
1c0a7f24:	00000383 	0x00000383
1c0a7f28:	0000033c 	0x0000033c
1c0a7f2c:	000001fe 	0x000001fe
1c0a7f30:	000002b6 	0x000002b6
1c0a7f34:	000000f5 	0x000000f5
1c0a7f38:	0000003e 	0x0000003e
1c0a7f3c:	0000029e 	0x0000029e
1c0a7f40:	000001a9 	0x000001a9
1c0a7f44:	00000255 	0x00000255
1c0a7f48:	0000018a 	0x0000018a
1c0a7f4c:	00000227 	0x00000227
1c0a7f50:	0000025f 	0x0000025f
1c0a7f54:	00000111 	0x00000111
1c0a7f58:	00000075 	0x00000075
1c0a7f5c:	0000002a 	0x0000002a
1c0a7f60:	00000347 	0x00000347
1c0a7f64:	000001f4 	0x000001f4
1c0a7f68:	000002ae 	0x000002ae
1c0a7f6c:	0000036f 	0x0000036f
1c0a7f70:	000003da 	0x000003da
1c0a7f74:	000001a7 	0x000001a7
1c0a7f78:	000001e6 	0x000001e6
1c0a7f7c:	00000214 	0x00000214
1c0a7f80:	000002e9 	0x000002e9
1c0a7f84:	00000126 	0x00000126
1c0a7f88:	00000041 	0x00000041
1c0a7f8c:	00000220 	0x00000220
1c0a7f90:	00000394 	0x00000394
1c0a7f94:	0000011e 	0x0000011e
1c0a7f98:	0000011c 	0x0000011c
1c0a7f9c:	00000078 	0x00000078
1c0a7fa0:	0000017f 	0x0000017f
1c0a7fa4:	000000aa 	0x000000aa
1c0a7fa8:	000000b3 	0x000000b3
1c0a7fac:	00000364 	0x00000364
1c0a7fb0:	00000332 	0x00000332
1c0a7fb4:	0000005a 	0x0000005a
1c0a7fb8:	00000268 	0x00000268
1c0a7fbc:	000003a8 	0x000003a8
1c0a7fc0:	00000337 	0x00000337
1c0a7fc4:	00000327 	0x00000327
1c0a7fc8:	00000238 	0x00000238
1c0a7fcc:	000000e9 	0x000000e9
1c0a7fd0:	000001bf 	0x000001bf
1c0a7fd4:	0000022d 	0x0000022d
1c0a7fd8:	000002d2 	0x000002d2
1c0a7fdc:	000002d3 	0x000002d3
1c0a7fe0:	00000129 	0x00000129
1c0a7fe4:	000001c0 	0x000001c0
1c0a7fe8:	00000290 	0x00000290
1c0a7fec:	00000282 	0x00000282
1c0a7ff0:	0000010a 	0x0000010a
1c0a7ff4:	000001b1 	0x000001b1
1c0a7ff8:	00000328 	0x00000328
1c0a7ffc:	0000033e 	0x0000033e
1c0a8000:	00000118 	0x00000118
1c0a8004:	00000169 	0x00000169
1c0a8008:	000000b9 	0x000000b9
1c0a800c:	000002c4 	0x000002c4
1c0a8010:	00000125 	0x00000125
1c0a8014:	00000221 	0x00000221
1c0a8018:	000000e1 	0x000000e1
1c0a801c:	000003bc 	0x000003bc
1c0a8020:	00000237 	0x00000237
1c0a8024:	000000e5 	0x000000e5
1c0a8028:	00000395 	0x00000395
1c0a802c:	0000018e 	0x0000018e
1c0a8030:	000002a1 	0x000002a1
1c0a8034:	000002ce 	0x000002ce
1c0a8038:	00000119 	0x00000119
1c0a803c:	0000024a 	0x0000024a
1c0a8040:	0000003c 	0x0000003c
1c0a8044:	00000005 	0x00000005
1c0a8048:	00000160 	0x00000160
1c0a804c:	0000010e 	0x0000010e
1c0a8050:	00000095 	0x00000095
1c0a8054:	00000252 	0x00000252
1c0a8058:	00000307 	0x00000307
1c0a805c:	000002a4 	0x000002a4
1c0a8060:	000001ca 	0x000001ca
1c0a8064:	000001b4 	0x000001b4
1c0a8068:	00000002 	0x00000002
1c0a806c:	00000210 	0x00000210
1c0a8070:	000001c3 	0x000001c3
1c0a8074:	000000f4 	0x000000f4
1c0a8078:	000003cf 	0x000003cf
1c0a807c:	0000016e 	0x0000016e
1c0a8080:	000000a2 	0x000000a2
1c0a8084:	0000005d 	0x0000005d
1c0a8088:	0000012a 	0x0000012a
1c0a808c:	00000112 	0x00000112
1c0a8090:	0000032a 	0x0000032a
1c0a8094:	00000354 	0x00000354
1c0a8098:	00000025 	0x00000025
1c0a809c:	00000083 	0x00000083
1c0a80a0:	0000033a 	0x0000033a
1c0a80a4:	00000277 	0x00000277
1c0a80a8:	0000015d 	0x0000015d
1c0a80ac:	000002bd 	0x000002bd
1c0a80b0:	00000310 	0x00000310
1c0a80b4:	00000393 	0x00000393
1c0a80b8:	00000059 	0x00000059
1c0a80bc:	00000022 	0x00000022
1c0a80c0:	0000032e 	0x0000032e
1c0a80c4:	00000200 	0x00000200
1c0a80c8:	00000174 	0x00000174
1c0a80cc:	000001f1 	0x000001f1
1c0a80d0:	0000013c 	0x0000013c
1c0a80d4:	00000390 	0x00000390
1c0a80d8:	000000d1 	0x000000d1
1c0a80dc:	00000266 	0x00000266
1c0a80e0:	000000e7 	0x000000e7
1c0a80e4:	000000bd 	0x000000bd
1c0a80e8:	000003d8 	0x000003d8
1c0a80ec:	00000084 	0x00000084
1c0a80f0:	00000197 	0x00000197
1c0a80f4:	000003b2 	0x000003b2
1c0a80f8:	00000134 	0x00000134
1c0a80fc:	0000012d 	0x0000012d
1c0a8100:	000000a6 	0x000000a6
1c0a8104:	00000053 	0x00000053
1c0a8108:	0000003a 	0x0000003a
1c0a810c:	00000165 	0x00000165
1c0a8110:	00000392 	0x00000392
1c0a8114:	000001ab 	0x000001ab
1c0a8118:	0000002c 	0x0000002c
1c0a811c:	000002cb 	0x000002cb
1c0a8120:	000001b2 	0x000001b2
1c0a8124:	000003c8 	0x000003c8
1c0a8128:	00000377 	0x00000377
1c0a812c:	00000007 	0x00000007
1c0a8130:	000001f9 	0x000001f9
1c0a8134:	0000018c 	0x0000018c
1c0a8138:	000000d6 	0x000000d6
1c0a813c:	000001a4 	0x000001a4
1c0a8140:	000002a2 	0x000002a2
1c0a8144:	0000026c 	0x0000026c
1c0a8148:	000001dd 	0x000001dd
1c0a814c:	00000318 	0x00000318
1c0a8150:	000002f8 	0x000002f8
1c0a8154:	0000039d 	0x0000039d
1c0a8158:	000003c1 	0x000003c1
1c0a815c:	0000029a 	0x0000029a
1c0a8160:	000003df 	0x000003df
1c0a8164:	000003b0 	0x000003b0
1c0a8168:	0000027d 	0x0000027d
1c0a816c:	0000021e 	0x0000021e
1c0a8170:	000002ba 	0x000002ba
1c0a8174:	000001ba 	0x000001ba
1c0a8178:	00000361 	0x00000361
1c0a817c:	0000006e 	0x0000006e
1c0a8180:	000002da 	0x000002da
1c0a8184:	000003a5 	0x000003a5
1c0a8188:	0000036b 	0x0000036b
1c0a818c:	000001f2 	0x000001f2
1c0a8190:	0000030f 	0x0000030f
1c0a8194:	000000ea 	0x000000ea
1c0a8198:	000002fd 	0x000002fd
1c0a819c:	0000018f 	0x0000018f
1c0a81a0:	00000058 	0x00000058
1c0a81a4:	000002c0 	0x000002c0
1c0a81a8:	00000217 	0x00000217
1c0a81ac:	000002c3 	0x000002c3
1c0a81b0:	00000012 	0x00000012
1c0a81b4:	000003e0 	0x000003e0
1c0a81b8:	000001bd 	0x000001bd
1c0a81bc:	000002cc 	0x000002cc
1c0a81c0:	00000136 	0x00000136
1c0a81c4:	0000037b 	0x0000037b
1c0a81c8:	00000020 	0x00000020
1c0a81cc:	00000115 	0x00000115
1c0a81d0:	00000338 	0x00000338
1c0a81d4:	000003aa 	0x000003aa
1c0a81d8:	000002ef 	0x000002ef
1c0a81dc:	0000005b 	0x0000005b
1c0a81e0:	00000187 	0x00000187
1c0a81e4:	000002a3 	0x000002a3
1c0a81e8:	00000181 	0x00000181
1c0a81ec:	00000052 	0x00000052
1c0a81f0:	0000034a 	0x0000034a
1c0a81f4:	00000046 	0x00000046
1c0a81f8:	00000144 	0x00000144
1c0a81fc:	00000264 	0x00000264
1c0a8200:	0000022e 	0x0000022e
1c0a8204:	00000070 	0x00000070
1c0a8208:	00000245 	0x00000245
1c0a820c:	00000167 	0x00000167
1c0a8210:	000002f0 	0x000002f0
1c0a8214:	000003e7 	0x000003e7
1c0a8218:	000001a8 	0x000001a8
1c0a821c:	00000340 	0x00000340
1c0a8220:	0000030e 	0x0000030e
1c0a8224:	0000012b 	0x0000012b
1c0a8228:	00000120 	0x00000120
1c0a822c:	000002ea 	0x000002ea
1c0a8230:	000001b6 	0x000001b6
1c0a8234:	00000257 	0x00000257
1c0a8238:	0000019e 	0x0000019e
1c0a823c:	000001e7 	0x000001e7
1c0a8240:	000000c9 	0x000000c9
1c0a8244:	000001d0 	0x000001d0

1c0a8248 <D1_n>:
1c0a8248:	000001ec 	0x000001ec

1c0a824c <y>:
1c0a824c:	000003e8 	0x000003e8

1c0a8250 <x>:
1c0a8250:	000003e8 	0x000003e8
1c0a8254:	00000000 	0x00000000

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
  18:	00137000 	maskeqz	$r0,$r0,$r28
  1c:	00023c1c 	0x00023c1c
  20:	00000000 	0x00000000
  24:	03040200 	lu52i.d	$r0,$r16,256(0x100)
  28:	000b0704 	0x000b0704
  2c:	04030000 	csrrd	$r0,0xc0
  30:	00000607 	0x00000607
  34:	00e50400 	bstrpick.d	$r0,$r0,0x25,0x1
  38:	01010000 	fadd.d	$f0,$f0,$f0
  3c:	00022805 	0x00022805
  40:	00137000 	maskeqz	$r0,$r0,$r28
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
  c4:	00141c01 	nor	$r1,$r0,$r7
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
 108:	0014cc0c 	and	$r12,$r0,$r19
 10c:	0002471c 	0x0002471c
 110:	00012000 	asrtle.d	$r0,$r8
 114:	56010d00 	bl	67240204(0x402010c) # 4020220 <__stack_size+0x4010220>
 118:	010d3201 	fmaxa.d	$f1,$f16,$f12
 11c:	00300157 	0x00300157
 120:	0014e00e 	and	$r14,$r0,$r24
 124:	0002531c 	0x0002531c
 128:	14fc0c00 	lu12i.w	$r0,516192(0x7e060)
 12c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 130:	01410000 	0x01410000
 134:	010d0000 	fmaxa.d	$f0,$f0,$f0
 138:	0d3a0156 	0x0d3a0156
 13c:	31015701 	0x31015701
 140:	15180c00 	lu12i.w	$r0,-475040(0x8c060)
 144:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 148:	01590000 	0x01590000
 14c:	010d0000 	fmaxa.d	$f0,$f0,$f0
 150:	0d3a0156 	0x0d3a0156
 154:	30015701 	0x30015701
 158:	15380c00 	lu12i.w	$r0,-409504(0x9c060)
 15c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 160:	01720000 	0x01720000
 164:	010d0000 	fmaxa.d	$f0,$f0,$f0
 168:	008b0256 	bstrins.d	$r22,$r18,0xb,0x0
 16c:	0157010d 	0x0157010d
 170:	580c0030 	beq	$r1,$r16,3072(0xc00) # d70 <__stack_size-0xf290>
 174:	471c0015 	bnez	$r0,-2679808(0x571c00) # ffd71d74 <_stack+0xe3c71d78>
 178:	8a000002 	0x8a000002
 17c:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 180:	40015601 	beqz	$r16,262484(0x40154) # 402d4 <__stack_size+0x302d4>
 184:	0157010d 	0x0157010d
 188:	700e0030 	0x700e0030
 18c:	5f1c0015 	bne	$r0,$r21,-58368(0x31c00) # ffff1d8c <_stack+0xe3ef1d90>
 190:	0c000002 	0x0c000002
 194:	1c00158c 	pcaddu12i	$r12,172(0xac)
 198:	00000247 	0x00000247
 19c:	000001ab 	0x000001ab
 1a0:	0156010d 	0x0156010d
 1a4:	57010d3a 	bl	82510092(0x4eb010c) # 4eb02b0 <__stack_size+0x4ea02b0>
 1a8:	0c003001 	0x0c003001
 1ac:	1c00159c 	pcaddu12i	$r28,172(0xac)
 1b0:	00000253 	0x00000253
 1b4:	000001bf 	0x000001bf
 1b8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1bc:	0f002508 	0x0f002508
 1c0:	1c0015a8 	pcaddu12i	$r8,173(0xad)
 1c4:	00000253 	0x00000253
 1c8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1cc:	00002508 	clz.d	$r8,$r8
 1d0:	00000010 	0x00000010
 1d4:	00fd0b00 	bstrpick.d	$r0,$r24,0x3d,0x2
 1d8:	19010000 	pcaddi	$r0,-522240(0x80800)
 1dc:	00022805 	0x00022805
 1e0:	0001e700 	asrtgt.d	$r24,$r25
 1e4:	11000600 	addu16i.d	$r0,$r16,16385(0x4001)
 1e8:	1c0013fc 	pcaddu12i	$r28,159(0x9f)
 1ec:	00000014 	0x00000014
 1f0:	00000216 	0x00000216
 1f4:	0000fd0b 	0x0000fd0b
 1f8:	05190100 	0x05190100
 1fc:	00000228 	0x00000228
 200:	00000206 	0x00000206
 204:	040f0006 	csrrd	$r6,0x3c0
 208:	531c0014 	b	5446656(0x531c00) # 531e08 <__stack_size+0x521e08>
 20c:	0d000002 	fsel	$f2,$f0,$f0,$fcc0
 210:	3d015401 	0x3d015401
 214:	dc0f0000 	0xdc0f0000
 218:	531c0013 	b	5184512(0x4f1c00) # 4f1e18 <__stack_size+0x4e1e18>
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
 284:	0015b000 	xor	$r0,$r0,$r12
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
 2b0:	10061201 	addu16i.d	$r1,$r16,388(0x184)
 2b4:	201c0016 	ll.w	$r22,$r0,7168(0x1c00)
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
 2f8:	0015b000 	xor	$r0,$r0,$r12
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
 330:	1c0015b0 	pcaddu12i	$r16,173(0xad)
 334:	00003002 	revb.2h	$r2,$r0
 338:	01030100 	fsub.d	$f0,$f8,$f0
 33c:	0000760e 	0x0000760e
 340:	0003ba00 	0x0003ba00
 344:	0003b800 	0x0003b800
 348:	0f000000 	0x0f000000
 34c:	00000069 	0x00000069
 350:	1c0015e0 	pcaddu12i	$r0,175(0xaf)
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
 37c:	1c001630 	pcaddu12i	$r16,177(0xb1)
 380:	000000ac 	0x000000ac
 384:	00000255 	0x00000255
 388:	0b070402 	0x0b070402
 38c:	02000000 	slti	$r0,$r0,0
 390:	00060704 	alsl.wu	$r4,$r24,$r1,0x1
 394:	1f030000 	pcaddu18i	$r0,-518144(0x81800)
 398:	01000001 	0x01000001
 39c:	00a9050e 	bstrins.d	$r14,$r8,0x29,0x1
 3a0:	16b00000 	lu32i.d	$r0,360448(0x58000)
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
 3d4:	0016bc07 	andn	$r7,$r0,$r15
 3d8:	0000bd1c 	0x0000bd1c
 3dc:	00008600 	0x00008600
 3e0:	54010800 	bl	264(0x108) # 4e8 <__stack_size-0xfb18>
 3e4:	5401f303 	bl	-66321936(0xc0c01f0) # fc0c05d4 <_stack+0xdffc05d8>
 3e8:	16c40700 	lu32i.d	$r0,401464(0x62038)
 3ec:	01671c00 	0x01671c00
 3f0:	00990000 	bstrins.d	$r0,$r0,0x19,0x0
 3f4:	01080000 	0x01080000
 3f8:	003d0154 	0x003d0154
 3fc:	0016cc09 	andn	$r9,$r0,$r19
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
 42c:	1c001630 	pcaddu12i	$r16,177(0xb1)
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
 474:	16700e00 	lu32i.d	$r0,229488(0x38070)
 478:	00081c00 	bytepick.w	$r0,$r0,$r7,0x0
 47c:	01410000 	0x01410000
 480:	fd050000 	0xfd050000
 484:	01000000 	0x01000000
 488:	00a91006 	bstrins.d	$r6,$r0,0x29,0x4
 48c:	01310000 	0x01310000
 490:	00060000 	alsl.wu	$r0,$r0,$r0,0x1
 494:	00167809 	orn	$r9,$r0,$r30
 498:	0001671c 	0x0001671c
 49c:	54010800 	bl	264(0x108) # 5a4 <__stack_size-0xfa5c>
 4a0:	00003d01 	revb.d	$r1,$r8
 4a4:	00166007 	orn	$r7,$r0,$r24
 4a8:	0001671c 	0x0001671c
 4ac:	00015500 	asrtle.d	$r8,$r21
 4b0:	54010800 	bl	264(0x108) # 5b8 <__stack_size-0xfa48>
 4b4:	00008702 	0x00008702
 4b8:	00168009 	andn	$r9,$r0,$r0
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
 4f0:	1c0016e0 	pcaddu12i	$r0,183(0xb7)
 4f4:	000000ec 	0x000000ec
 4f8:	000002ed 	0x000002ed
 4fc:	0b070402 	0x0b070402
 500:	02000000 	slti	$r0,$r0,0
 504:	00060704 	alsl.wu	$r4,$r24,$r1,0x1
 508:	db030000 	0xdb030000
 50c:	01000000 	0x01000000
 510:	01490501 	0x01490501
 514:	16e00000 	lu32i.d	$r0,458752(0x70000)
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
 5c8:	a0090000 	0xa0090000
 5cc:	201c0017 	ll.w	$r23,$r0,7168(0x1c00)
 5d0:	23000000 	sc.d	$r0,$r0,0
 5d4:	0a000001 	0x0a000001
 5d8:	000000fd 	0x000000fd
 5dc:	49020a01 	0x49020a01
 5e0:	12000001 	addu16i.d	$r1,$r0,-32768(0x8000)
 5e4:	0b000001 	0x0b000001
 5e8:	17b00c00 	lu32i.d	$r0,-163744(0xd8060)
 5ec:	016e1c00 	0x016e1c00
 5f0:	010d0000 	fmaxa.d	$f0,$f0,$f0
 5f4:	2d080254 	0x2d080254
 5f8:	480e0000 	bceqz	$fcc0,3584(0xe00) # 13f8 <__stack_size-0xec08>
 5fc:	301c0017 	0x301c0017
 600:	0a000000 	0x0a000000
 604:	000000fd 	0x000000fd
 608:	49020a01 	0x49020a01
 60c:	3e000001 	0x3e000001
 610:	0b000001 	0x0b000001
 614:	17780f00 	lu32i.d	$r0,-278408(0xbc078)
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
 69c:	1c001a90 	pcaddu12i	$r16,212(0xd4)
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
 6d4:	001a9000 	0x001a9000
 6d8:	1a90021c 	pcalau12i	$r28,294928(0x48010)
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
 704:	900a0000 	0x900a0000
 708:	141c001a 	lu12i.w	$r26,57344(0xe000)
 70c:	0b000000 	0x0b000000
 710:	00000293 	0x00000293
 714:	0000077d 	0x0000077d
 718:	0000077b 	0x0000077b
 71c:	0c000000 	0x0c000000
 720:	00000161 	0x00000161
 724:	01014b01 	fadd.d	$f1,$f24,$f18
 728:	0000014c 	0x0000014c
 72c:	1c001a30 	pcaddu12i	$r16,209(0xd1)
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
 7c8:	d0000000 	0xd0000000
 7cc:	5c1c0019 	bne	$r0,$r25,7168(0x1c00) # 23cc <__stack_size-0xdc34>
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
 848:	19a00000 	pcaddi	$r0,-196608(0xd0000)
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
 8fc:	1c001950 	pcaddu12i	$r16,202(0xca)
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
 934:	00191000 	srl.d	$r0,$r0,$r4
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
 96c:	18a00000 	pcaddi	$r0,327680(0x50000)
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
 9c0:	00187000 	sra.w	$r0,$r0,$r28
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
 a24:	1c001850 	pcaddu12i	$r16,194(0xc2)
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
 a70:	10000000 	addu16i.d	$r0,$r0,0
 a74:	341c0018 	0x341c0018
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
 ac0:	17d00000 	lu32i.d	$r0,-98304(0xe8000)
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
 afc:	1c001980 	pcaddu12i	$r0,204(0xcc)
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
 b48:	001ab000 	0x001ab000
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
 bc4:	1c001bc0 	pcaddu12i	$r0,222(0xde)
 bc8:	00000030 	0x00000030
 bcc:	00da9c01 	bstrpick.d	$r1,$r0,0x1a,0x27
 bd0:	6e080000 	bgeu	$r0,$r0,-129024(0x20800) # fffe13d0 <_stack+0xe3ee13d4>
 bd4:	133e0100 	addu16i.d	$r0,$r8,-12416(0xcf80)
 bd8:	0000002c 	0x0000002c
 bdc:	00000db4 	0x00000db4
 be0:	00000dac 	0x00000dac
 be4:	00022e09 	0x00022e09
 be8:	001bc000 	rotr.d	$r0,$r0,$r16
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
 c14:	1b900000 	pcalau12i	$r0,-229376(0xc8000)
 c18:	00241c00 	crc.w.b.w	$r0,$r0,$r7
 c1c:	9c010000 	0x9c010000
 c20:	0000012c 	0x0000012c
 c24:	01006e08 	0x01006e08
 c28:	002c1335 	alsl.d	$r21,$r25,$r4,0x1
 c2c:	0e110000 	0x0e110000
 c30:	0e090000 	0x0e090000
 c34:	2e090000 	0x2e090000
 c38:	90000002 	0x90000002
 c3c:	031c001b 	lu52i.d	$r27,$r0,1792(0x700)
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
 c80:	f0000000 	0xf0000000
 c84:	841c001a 	0x841c001a
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
 cc8:	1af00000 	pcalau12i	$r0,491520(0x78000)
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
 cfc:	001ae000 	0x001ae000
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
 d28:	1ab00000 	pcalau12i	$r0,360448(0x58000)
 d2c:	001c1c00 	mul.w	$r0,$r0,$r7
 d30:	9c010000 	0x9c010000
 d34:	0000022e 	0x0000022e
 d38:	00022e09 	0x00022e09
 d3c:	001ab000 	0x001ab000
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
 6d8:	1a900000 	pcalau12i	$r0,294912(0x48000)
 6dc:	1a981c00 	pcalau12i	$r0,311520(0x4c0e0)
 6e0:	00011c00 	asrtle.d	$r0,$r7
 6e4:	001a9854 	0x001a9854
 6e8:	001aa81c 	0x001aa81c
 6ec:	f300041c 	0xf300041c
 6f0:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
	...
 6fc:	90000000 	0x90000000
 700:	981c001a 	0x981c001a
 704:	011c001a 	0x011c001a
 708:	1a985500 	pcalau12i	$r0,311976(0x4c2a8)
 70c:	1aa81c00 	pcalau12i	$r0,344288(0x540e0)
 710:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 714:	9f5501f3 	0x9f5501f3
	...
 720:	00050502 	alsl.w	$r2,$r8,$r1,0x3
 724:	1a900000 	pcalau12i	$r0,294912(0x48000)
 728:	1a901c00 	pcalau12i	$r0,295136(0x480e0)
 72c:	00011c00 	asrtle.d	$r0,$r7
 730:	001a9055 	0x001a9055
 734:	001a981c 	0x001a981c
 738:	7500031c 	0x7500031c
 73c:	1a989f7f 	pcalau12i	$r31,312571(0x4c4fb)
 740:	1aa41c00 	pcalau12i	$r0,336096(0x520e0)
 744:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 748:	315501f3 	vstelm.h	$vr19,$r15,128(0x80),0x5
 74c:	00009f1c 	0x00009f1c
 750:	00000000 	0x00000000
 754:	00020000 	0x00020000
 758:	1a900000 	pcalau12i	$r0,294912(0x48000)
 75c:	1a981c00 	pcalau12i	$r0,311520(0x4c0e0)
 760:	00011c00 	asrtle.d	$r0,$r7
 764:	001a9854 	0x001a9854
 768:	001aa81c 	0x001aa81c
 76c:	f300041c 	0xf300041c
 770:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
 774:	00000000 	0x00000000
 778:	04000000 	csrrd	$r0,0x0
 77c:	001a9000 	0x001a9000
 780:	001aa81c 	0x001aa81c
 784:	5400011c 	bl	74448896(0x4700000) # 4700784 <__stack_size+0x46f0784>
	...
 794:	1c001a30 	pcaddu12i	$r16,209(0xd1)
 798:	1c001a48 	pcaddu12i	$r8,210(0xd2)
 79c:	48540001 	bceqz	$fcc0,283648(0x45400) # 45b9c <__stack_size+0x35b9c>
 7a0:	881c001a 	0x881c001a
 7a4:	041c001a 	csrrd	$r26,0x700
 7a8:	5401f300 	bl	-67108368(0xc0001f0) # fc000998 <_stack+0xdff0099c>
 7ac:	0000009f 	0x0000009f
	...
 7b8:	001a3000 	0x001a3000
 7bc:	001a481c 	0x001a481c
 7c0:	5500011c 	bl	74514432(0x4710000) # 47107c0 <__stack_size+0x47007c0>
 7c4:	1c001a48 	pcaddu12i	$r8,210(0xd2)
 7c8:	1c001a88 	pcaddu12i	$r8,212(0xd4)
 7cc:	01f30004 	0x01f30004
 7d0:	00009f55 	0x00009f55
 7d4:	00000000 	0x00000000
 7d8:	04000000 	csrrd	$r0,0x0
 7dc:	00000004 	0x00000004
 7e0:	1a300001 	pcalau12i	$r1,98304(0x18000)
 7e4:	1a301c00 	pcalau12i	$r0,98528(0x180e0)
 7e8:	00011c00 	asrtle.d	$r0,$r7
 7ec:	001a3056 	0x001a3056
 7f0:	001a401c 	0x001a401c
 7f4:	7600031c 	0x7600031c
 7f8:	1a409f7f 	pcalau12i	$r31,132347(0x204fb)
 7fc:	1a541c00 	pcalau12i	$r0,172256(0x2a0e0)
 800:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 804:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 808:	1a549f1c 	pcalau12i	$r28,173304(0x2a4f8)
 80c:	1a601c00 	pcalau12i	$r0,196832(0x300e0)
 810:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 814:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 818:	00009f1c 	0x00009f1c
 81c:	00000000 	0x00000000
 820:	00020000 	0x00020000
 824:	1a300000 	pcalau12i	$r0,98304(0x18000)
 828:	1a641c00 	pcalau12i	$r0,205024(0x320e0)
 82c:	00011c00 	asrtle.d	$r0,$r7
 830:	001a6854 	0x001a6854
 834:	001a7c1c 	0x001a7c1c
 838:	5400011c 	bl	74448896(0x4700000) # 4700838 <__stack_size+0x46f0838>
	...
 844:	1a300003 	pcalau12i	$r3,98304(0x18000)
 848:	1a881c00 	pcalau12i	$r0,278752(0x440e0)
 84c:	00011c00 	asrtle.d	$r0,$r7
 850:	00000055 	0x00000055
	...
 85c:	d0000000 	0xd0000000
 860:	0c1c0019 	0x0c1c0019
 864:	011c001a 	0x011c001a
 868:	1a0c5500 	pcalau12i	$r0,25256(0x62a8)
 86c:	1a281c00 	pcalau12i	$r0,82144(0x140e0)
 870:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 874:	9f5501f3 	0x9f5501f3
 878:	1c001a28 	pcaddu12i	$r8,209(0xd1)
 87c:	1c001a2c 	pcaddu12i	$r12,209(0xd1)
 880:	00550001 	0x00550001
	...
 88c:	00000101 	0x00000101
 890:	0019d000 	sra.d	$r0,$r0,$r20
 894:	0019e01c 	sra.d	$r28,$r0,$r24
 898:	5600011c 	bl	74579968(0x4720000) # 4720898 <__stack_size+0x4710898>
 89c:	1c0019e0 	pcaddu12i	$r0,207(0xcf)
 8a0:	1c001a24 	pcaddu12i	$r4,209(0xd1)
 8a4:	7f760003 	0x7f760003
 8a8:	001a289f 	0x001a289f
 8ac:	001a2c1c 	0x001a2c1c
 8b0:	7600031c 	0x7600031c
 8b4:	00009f7f 	0x00009f7f
 8b8:	00000000 	0x00000000
 8bc:	01020000 	0x01020000
 8c0:	00000001 	0x00000001
 8c4:	19d00000 	pcaddi	$r0,-98304(0xe8000)
 8c8:	19dc1c00 	pcaddi	$r0,-73504(0xee0e0)
 8cc:	00011c00 	asrtle.d	$r0,$r7
 8d0:	0019dc55 	sra.d	$r21,$r2,$r23
 8d4:	0019fc1c 	sra.d	$r28,$r0,$r31
 8d8:	5c00011c 	bne	$r8,$r28,0 # 8d8 <__stack_size-0xf728>
 8dc:	1c0019fc 	pcaddu12i	$r28,207(0xcf)
 8e0:	1c001a24 	pcaddu12i	$r4,209(0xd1)
 8e4:	28550001 	ld.h	$r1,$r0,1344(0x540)
 8e8:	2c1c001a 	vld	$vr26,$r0,1792(0x700)
 8ec:	011c001a 	0x011c001a
 8f0:	00005500 	bitrev.d	$r0,$r8
 8f4:	00000000 	0x00000000
 8f8:	00030000 	0x00030000
	...
 904:	1c0019d0 	pcaddu12i	$r16,206(0xce)
 908:	1c0019e0 	pcaddu12i	$r0,207(0xcf)
 90c:	e0540001 	0xe0540001
 910:	fc1c0019 	0xfc1c0019
 914:	011c0019 	0x011c0019
 918:	19fc5d00 	pcaddi	$r0,-7448(0xfe2e8)
 91c:	1a0c1c00 	pcalau12i	$r0,24800(0x60e0)
 920:	00011c00 	asrtle.d	$r0,$r7
 924:	001a0c54 	0x001a0c54
 928:	001a241c 	0x001a241c
 92c:	5c00011c 	bne	$r8,$r28,0 # 92c <__stack_size-0xf6d4>
 930:	1c001a28 	pcaddu12i	$r8,209(0xd1)
 934:	1c001a2c 	pcaddu12i	$r12,209(0xd1)
 938:	00540001 	0x00540001
	...
 944:	a0000000 	0xa0000000
 948:	ac1c0019 	0xac1c0019
 94c:	011c0019 	0x011c0019
 950:	19ac5500 	pcaddi	$r0,-171352(0xd62a8)
 954:	19c81c00 	pcaddi	$r0,-114464(0xe40e0)
 958:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 95c:	9f5501f3 	0x9f5501f3
	...
 968:	00040400 	alsl.w	$r0,$r0,$r1,0x1
 96c:	19a00000 	pcaddi	$r0,-196608(0xd0000)
 970:	19a01c00 	pcaddi	$r0,-196384(0xd00e0)
 974:	00011c00 	asrtle.d	$r0,$r7
 978:	0019a056 	sra.d	$r22,$r2,$r8
 97c:	0019a81c 	sra.d	$r28,$r0,$r10
 980:	7600031c 	0x7600031c
 984:	19a89f7f 	pcaddi	$r31,-178949(0xd44fb)
 988:	19c41c00 	pcaddi	$r0,-122656(0xe20e0)
 98c:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 990:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 994:	00009f1c 	0x00009f1c
 998:	00000000 	0x00000000
 99c:	00020000 	0x00020000
 9a0:	1c0019a0 	pcaddu12i	$r0,205(0xcd)
 9a4:	1c0019c8 	pcaddu12i	$r8,206(0xce)
 9a8:	00550001 	0x00550001
 9ac:	00000000 	0x00000000
 9b0:	03000000 	lu52i.d	$r0,$r0,0
 9b4:	a0000000 	0xa0000000
 9b8:	ac1c0019 	0xac1c0019
 9bc:	011c0019 	0x011c0019
 9c0:	19ac5400 	pcaddi	$r0,-171360(0xd62a0)
 9c4:	19c41c00 	pcaddi	$r0,-122656(0xe20e0)
 9c8:	00011c00 	asrtle.d	$r0,$r7
 9cc:	0000005c 	0x0000005c
	...
 9d8:	00195000 	srl.d	$r0,$r0,$r20
 9dc:	0019681c 	srl.d	$r28,$r0,$r26
 9e0:	5400011c 	bl	74448896(0x4700000) # 47009e0 <__stack_size+0x46f09e0>
 9e4:	1c001968 	pcaddu12i	$r8,203(0xcb)
 9e8:	1c001978 	pcaddu12i	$r24,203(0xcb)
 9ec:	00540001 	0x00540001
	...
 9fc:	00191000 	srl.d	$r0,$r0,$r4
 a00:	0019241c 	srl.d	$r28,$r0,$r9
 a04:	5400011c 	bl	74448896(0x4700000) # 4700a04 <__stack_size+0x46f0a04>
 a08:	1c001924 	pcaddu12i	$r4,201(0xc9)
 a0c:	1c001948 	pcaddu12i	$r8,202(0xca)
 a10:	485c0001 	bceqz	$fcc0,285696(0x45c00) # 46610 <__stack_size+0x36610>
 a14:	4c1c0019 	jirl	$r25,$r0,7168(0x1c00)
 a18:	011c0019 	0x011c0019
 a1c:	00005400 	bitrev.d	$r0,$r0
	...
 a2c:	1c0018a0 	pcaddu12i	$r0,197(0xc5)
 a30:	1c0018dc 	pcaddu12i	$r28,198(0xc6)
 a34:	dc540001 	0xdc540001
 a38:	e41c0018 	0xe41c0018
 a3c:	011c0018 	0x011c0018
 a40:	18e85400 	pcaddi	$r0,475808(0x742a0)
 a44:	19001c00 	pcaddi	$r0,-524064(0x800e0)
 a48:	00011c00 	asrtle.d	$r0,$r7
 a4c:	00000054 	0x00000054
	...
 a5c:	a0000000 	0xa0000000
 a60:	bc1c0018 	0xbc1c0018
 a64:	011c0018 	0x011c0018
 a68:	18bc5500 	pcaddi	$r0,385704(0x5e2a8)
 a6c:	18d41c00 	pcaddi	$r0,434400(0x6a0e0)
 a70:	00011c00 	asrtle.d	$r0,$r7
 a74:	0018d45c 	sll.d	$r28,$r2,$r21
 a78:	0018dc1c 	sll.d	$r28,$r0,$r23
 a7c:	5500011c 	bl	74514432(0x4710000) # 4710a7c <__stack_size+0x4700a7c>
 a80:	1c0018dc 	pcaddu12i	$r28,198(0xc6)
 a84:	1c0018e0 	pcaddu12i	$r0,199(0xc7)
 a88:	e85c0001 	0xe85c0001
 a8c:	ec1c0018 	0xec1c0018
 a90:	011c0018 	0x011c0018
 a94:	00005c00 	ext.w.b	$r0,$r0
	...
 aa4:	00010100 	asrtle.d	$r8,$r0
 aa8:	18a00000 	pcaddi	$r0,327680(0x50000)
 aac:	18b81c00 	pcaddi	$r0,377056(0x5c0e0)
 ab0:	00011c00 	asrtle.d	$r0,$r7
 ab4:	0018b856 	sll.d	$r22,$r2,$r14
 ab8:	0018bc1c 	sll.d	$r28,$r0,$r15
 abc:	f300041c 	0xf300041c
 ac0:	bc9f5601 	0xbc9f5601
 ac4:	d41c0018 	0xd41c0018
 ac8:	061c0018 	cacop	0x18,$r0,1792(0x700)
 acc:	5601f300 	bl	-66977296(0xc0201f0) # fc020cbc <_stack+0xdff20cc0>
 ad0:	d49f1c31 	0xd49f1c31
 ad4:	d41c0018 	0xd41c0018
 ad8:	041c0018 	csrrd	$r24,0x700
 adc:	5601f300 	bl	-66977296(0xc0201f0) # fc020ccc <_stack+0xdff20cd0>
 ae0:	0018d49f 	sll.d	$r31,$r4,$r21
 ae4:	0018e01c 	sll.d	$r28,$r0,$r24
 ae8:	f300061c 	0xf300061c
 aec:	1c315601 	pcaddu12i	$r1,101040(0x18ab0)
 af0:	0018e89f 	sll.d	$r31,$r4,$r26
 af4:	0018ec1c 	sll.d	$r28,$r0,$r27
 af8:	f300061c 	0xf300061c
 afc:	1c315601 	pcaddu12i	$r1,101040(0x18ab0)
 b00:	0000009f 	0x0000009f
	...
 b0c:	00187000 	sra.w	$r0,$r0,$r28
 b10:	0018941c 	sll.d	$r28,$r0,$r5
 b14:	5500011c 	bl	74514432(0x4710000) # 4710b14 <__stack_size+0x4700b14>
 b18:	1c001894 	pcaddu12i	$r20,196(0xc4)
 b1c:	1c00189c 	pcaddu12i	$r28,196(0xc4)
 b20:	00550001 	0x00550001
	...
 b30:	01010000 	fadd.d	$f0,$f0,$f0
 b34:	00187000 	sra.w	$r0,$r0,$r28
 b38:	0018781c 	sra.w	$r28,$r0,$r30
 b3c:	5600011c 	bl	74579968(0x4720000) # 4720b3c <__stack_size+0x4710b3c>
 b40:	1c001878 	pcaddu12i	$r24,195(0xc3)
 b44:	1c00187c 	pcaddu12i	$r28,195(0xc3)
 b48:	01f30004 	0x01f30004
 b4c:	187c9f56 	pcaddi	$r22,255226(0x3e4fa)
 b50:	18881c00 	pcaddi	$r0,278752(0x440e0)
 b54:	000a1c00 	0x000a1c00
 b58:	007d0074 	bstrins.w	$r20,$r3,0x1d,0x0
 b5c:	5601f31c 	bl	-59637264(0xc7201f0) # fc720d4c <_stack+0xe0620d50>
 b60:	18889f22 	pcaddi	$r2,279801(0x444f9)
 b64:	18941c00 	pcaddi	$r0,303328(0x4a0e0)
 b68:	000c1c00 	bytepick.d	$r0,$r0,$r7,0x0
 b6c:	007d0074 	bstrins.w	$r20,$r3,0x1d,0x0
 b70:	5601f31c 	bl	-59637264(0xc7201f0) # fc720d60 <_stack+0xe0620d64>
 b74:	9f012322 	0x9f012322
 b78:	1c001894 	pcaddu12i	$r20,196(0xc4)
 b7c:	1c001898 	pcaddu12i	$r24,196(0xc4)
 b80:	0074000a 	bstrins.w	$r10,$r0,0x14,0x0
 b84:	f31c007d 	0xf31c007d
 b88:	9f225601 	0x9f225601
	...
 b94:	00000002 	0x00000002
 b98:	00010100 	asrtle.d	$r8,$r0
 b9c:	1c001870 	pcaddu12i	$r16,195(0xc3)
 ba0:	1c00187c 	pcaddu12i	$r28,195(0xc3)
 ba4:	7c540001 	0x7c540001
 ba8:	881c0018 	0x881c0018
 bac:	011c0018 	0x011c0018
 bb0:	18885d00 	pcaddi	$r0,279272(0x442e8)
 bb4:	18941c00 	pcaddi	$r0,303328(0x4a0e0)
 bb8:	00031c00 	0x00031c00
 bbc:	949f7f7d 	0x949f7f7d
 bc0:	981c0018 	0x981c0018
 bc4:	011c0018 	0x011c0018
 bc8:	00005d00 	ext.w.b	$r0,$r8
	...
 bd4:	18500000 	pcaddi	$r0,163840(0x28000)
 bd8:	18581c00 	pcaddi	$r0,180448(0x2c0e0)
 bdc:	00011c00 	asrtle.d	$r0,$r7
 be0:	00185855 	sra.w	$r21,$r2,$r22
 be4:	00186c1c 	sra.w	$r28,$r0,$r27
 be8:	5500011c 	bl	74514432(0x4710000) # 4710be8 <__stack_size+0x4700be8>
	...
 bf4:	00000002 	0x00000002
 bf8:	1c001850 	pcaddu12i	$r16,194(0xc2)
 bfc:	1c001854 	pcaddu12i	$r20,194(0xc2)
 c00:	54540001 	bl	283648(0x45400) # 46000 <__stack_size+0x36000>
 c04:	6c1c0018 	bgeu	$r0,$r24,7168(0x1c00) # 2804 <__stack_size-0xd7fc>
 c08:	011c0018 	0x011c0018
 c0c:	00005c00 	ext.w.b	$r0,$r0
	...
 c1c:	1c001810 	pcaddu12i	$r16,192(0xc0)
 c20:	1c001818 	pcaddu12i	$r24,192(0xc0)
 c24:	18540001 	pcaddi	$r1,172032(0x2a000)
 c28:	281c0018 	ld.b	$r24,$r0,1792(0x700)
 c2c:	031c0018 	lu52i.d	$r24,$r0,1792(0x700)
 c30:	9f017400 	0x9f017400
 c34:	1c001828 	pcaddu12i	$r8,193(0xc1)
 c38:	1c00183c 	pcaddu12i	$r28,193(0xc1)
 c3c:	00740008 	bstrins.w	$r8,$r0,0x14,0x0
 c40:	2322007c 	sc.d	$r28,$r3,8704(0x2200)
 c44:	00009f01 	0x00009f01
 c48:	00000000 	0x00000000
 c4c:	00020000 	0x00020000
 c50:	18100000 	pcaddi	$r0,32768(0x8000)
 c54:	18281c00 	pcaddi	$r0,82144(0x140e0)
 c58:	00021c00 	0x00021c00
 c5c:	18289f30 	pcaddi	$r16,83193(0x144f9)
 c60:	183c1c00 	pcaddi	$r0,123104(0x1e0e0)
 c64:	00011c00 	asrtle.d	$r0,$r7
 c68:	0000005c 	0x0000005c
 c6c:	00000000 	0x00000000
 c70:	03030000 	lu52i.d	$r0,$r0,192(0xc0)
	...
 c7c:	0017d000 	srl.w	$r0,$r0,$r20
 c80:	0017d01c 	srl.w	$r28,$r0,$r20
 c84:	5400011c 	bl	74448896(0x4700000) # 4700c84 <__stack_size+0x46f0c84>
 c88:	1c0017d0 	pcaddu12i	$r16,190(0xbe)
 c8c:	1c0017dc 	pcaddu12i	$r28,190(0xbe)
 c90:	01740003 	0x01740003
 c94:	0017dc9f 	srl.w	$r31,$r4,$r23
 c98:	0017f41c 	srl.w	$r28,$r0,$r29
 c9c:	7400081c 	xvseq.b	$xr28,$xr0,$xr2
 ca0:	22007c00 	ll.d	$r0,$r0,124(0x7c)
 ca4:	f49f0123 	0xf49f0123
 ca8:	f81c0017 	0xf81c0017
 cac:	091c0017 	vfmadd.s	$vr23,$vr0,$vr0,$vr24
 cb0:	5401f300 	bl	-67108368(0xc0001f0) # fc000ea0 <_stack+0xdff00ea4>
 cb4:	2322007c 	sc.d	$r28,$r3,8704(0x2200)
 cb8:	17f89f01 	lu32i.d	$r1,-15112(0xfc4f8)
 cbc:	18001c00 	pcaddi	$r0,224(0xe0)
 cc0:	00031c00 	0x00031c00
 cc4:	009f0174 	bstrins.d	$r20,$r11,0x1f,0x0
 cc8:	041c0018 	csrrd	$r24,0x700
 ccc:	061c0018 	cacop	0x18,$r0,1792(0x700)
 cd0:	5401f300 	bl	-67108368(0xc0001f0) # fc000ec0 <_stack+0xdff00ec4>
 cd4:	009f0123 	bstrins.d	$r3,$r9,0x1f,0x0
 cd8:	00000000 	0x00000000
 cdc:	02000000 	slti	$r0,$r0,0
 ce0:	00000000 	0x00000000
 ce4:	0017d000 	srl.w	$r0,$r0,$r20
 ce8:	0017dc1c 	srl.w	$r28,$r0,$r23
 cec:	3000021c 	0x3000021c
 cf0:	0017dc9f 	srl.w	$r31,$r4,$r23
 cf4:	0017f81c 	srl.w	$r28,$r0,$r30
 cf8:	5c00011c 	bne	$r8,$r28,0 # cf8 <__stack_size-0xf308>
 cfc:	1c0017f8 	pcaddu12i	$r24,191(0xbf)
 d00:	1c001804 	pcaddu12i	$r4,192(0xc0)
 d04:	9f300002 	0x9f300002
	...
 d10:	00030300 	0x00030300
	...
 d1c:	1c001980 	pcaddu12i	$r0,204(0xcc)
 d20:	1c001980 	pcaddu12i	$r0,204(0xcc)
 d24:	80560001 	0x80560001
 d28:	881c0019 	0x881c0019
 d2c:	031c0019 	lu52i.d	$r25,$r0,1792(0x700)
 d30:	9f7f7600 	0x9f7f7600
 d34:	1c001988 	pcaddu12i	$r8,204(0xcc)
 d38:	1c00198c 	pcaddu12i	$r12,204(0xcc)
 d3c:	01f30006 	0x01f30006
 d40:	9f1c3156 	0x9f1c3156
 d44:	1c00198c 	pcaddu12i	$r12,204(0xcc)
 d48:	1c001994 	pcaddu12i	$r20,204(0xcc)
 d4c:	007c000b 	bstrins.w	$r11,$r0,0x1c,0x0
 d50:	5601f320 	bl	-58588688(0xc8201f0) # fc820f40 <_stack+0xe0720f44>
 d54:	22007422 	ll.d	$r2,$r1,116(0x74)
 d58:	0019949f 	sra.d	$r31,$r4,$r5
 d5c:	0019981c 	sra.d	$r28,$r0,$r6
 d60:	74000a1c 	xvseq.b	$xr28,$xr16,$xr2
 d64:	1c007c00 	pcaddu12i	$r0,992(0x3e0)
 d68:	225601f3 	ll.d	$r19,$r15,22016(0x5600)
 d6c:	0019989f 	sra.d	$r31,$r4,$r6
 d70:	00199c1c 	sra.d	$r28,$r0,$r7
 d74:	7c000b1c 	0x7c000b1c
 d78:	01f32000 	0x01f32000
 d7c:	00742256 	bstrins.w	$r22,$r18,0x14,0x8
 d80:	00009f22 	0x00009f22
 d84:	00000000 	0x00000000
 d88:	00020000 	0x00020000
 d8c:	19800000 	pcaddi	$r0,-262144(0xc0000)
 d90:	198c1c00 	pcaddi	$r0,-237344(0xc60e0)
 d94:	00011c00 	asrtle.d	$r0,$r7
 d98:	00198c54 	sra.d	$r20,$r2,$r3
 d9c:	00199c1c 	sra.d	$r28,$r0,$r7
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
  10:	1c001370 	pcaddu12i	$r16,155(0x9b)
  14:	0000023c 	0x0000023c
	...
  20:	0000001c 	0x0000001c
  24:	026c0002 	sltui	$r2,$r0,-1280(0xb00)
  28:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  2c:	00000000 	0x00000000
  30:	1c0015b0 	pcaddu12i	$r16,173(0xad)
  34:	00000080 	0x00000080
	...
  40:	0000001c 	0x0000001c
  44:	03630002 	andi	$r2,$r0,0x8c0
  48:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  4c:	00000000 	0x00000000
  50:	1c001630 	pcaddu12i	$r16,177(0xb1)
  54:	000000ac 	0x000000ac
	...
  60:	0000001c 	0x0000001c
  64:	04d70002 	csrrd	$r2,0x35c0
  68:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  6c:	00000000 	0x00000000
  70:	1c0016e0 	pcaddu12i	$r0,183(0xb7)
  74:	000000ec 	0x000000ec
	...
  80:	0000001c 	0x0000001c
  84:	06520002 	0x06520002
  88:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  8c:	00000000 	0x00000000
  90:	1c0017d0 	pcaddu12i	$r16,190(0xbe)
  94:	000002d8 	0x000002d8
	...
  a0:	0000001c 	0x0000001c
  a4:	0b300002 	0x0b300002
  a8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  ac:	00000000 	0x00000000
  b0:	1c001ab0 	pcaddu12i	$r16,213(0xd5)
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
  60:	1c0017d0 	pcaddu12i	$r16,190(0xbe)
  64:	1c001aa8 	pcaddu12i	$r8,213(0xd5)
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
  2c:	13700205 	addu16i.d	$r5,$r16,-9216(0xdc00)
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
 1f0:	1c0015b0 	pcaddu12i	$r16,173(0xad)
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
 280:	00163002 	orn	$r2,$r0,$r12
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
 31c:	16e00205 	lu32i.d	$r5,458768(0x70010)
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
 420:	1c0017d0 	pcaddu12i	$r16,190(0xbe)
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
 71c:	1ab00205 	pcalau12i	$r5,360464(0x58010)
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
  18:	1c001370 	pcaddu12i	$r16,155(0x9b)
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
  60:	1c0015b0 	pcaddu12i	$r16,173(0xad)
  64:	00000028 	0x00000028
  68:	44100e44 	bnez	$r18,1052684(0x10100c) # 101074 <__stack_size+0xf1074>
  6c:	d9580199 	0xd9580199
  70:	00000e44 	0x00000e44
  74:	00000018 	0x00000018
  78:	00000048 	0x00000048
  7c:	1c0015e0 	pcaddu12i	$r0,175(0xaf)
  80:	00000024 	0x00000024
  84:	44100e44 	bnez	$r18,1052684(0x10100c) # 101090 <__stack_size+0xf1090>
  88:	d9540199 	0xd9540199
  8c:	00000e44 	0x00000e44
  90:	0000000c 	0x0000000c
  94:	00000048 	0x00000048
  98:	1c001610 	pcaddu12i	$r16,176(0xb0)
  9c:	00000020 	0x00000020
  a0:	0000000c 	0x0000000c
  a4:	ffffffff 	0xffffffff
  a8:	7c010001 	0x7c010001
  ac:	00030d01 	0x00030d01
  b0:	00000024 	0x00000024
  b4:	000000a0 	0x000000a0
  b8:	1c001630 	pcaddu12i	$r16,177(0xb1)
  bc:	00000074 	0x00000074
  c0:	50100e44 	b	-116387828(0x910100c) # f91010cc <_stack+0xdd0010d0>
  c4:	02970181 	addi.w	$r1,$r12,1472(0x5c0)
  c8:	04990398 	csrxchg	$r24,$r28,0x2640
  cc:	44c14802 	bnez	$r0,573768(0x8c148) # 8c214 <__stack_size+0x7c214>
  d0:	44d844d7 	bnez	$r6,-2303932(0x5cd844) # ffdcd914 <_stack+0xe3ccd918>
  d4:	000e48d9 	bytepick.d	$r25,$r6,$r18,0x4
  d8:	00000018 	0x00000018
  dc:	000000a0 	0x000000a0
  e0:	1c0016b0 	pcaddu12i	$r16,181(0xb5)
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
 10c:	1c0016e0 	pcaddu12i	$r0,183(0xb7)
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
 148:	1c0017d0 	pcaddu12i	$r16,190(0xbe)
 14c:	00000034 	0x00000034
 150:	0000000c 	0x0000000c
 154:	00000130 	0x00000130
 158:	1c001810 	pcaddu12i	$r16,192(0xc0)
 15c:	00000034 	0x00000034
 160:	0000000c 	0x0000000c
 164:	00000130 	0x00000130
 168:	1c001850 	pcaddu12i	$r16,194(0xc2)
 16c:	0000001c 	0x0000001c
 170:	0000000c 	0x0000000c
 174:	00000130 	0x00000130
 178:	1c001870 	pcaddu12i	$r16,195(0xc3)
 17c:	0000002c 	0x0000002c
 180:	00000014 	0x00000014
 184:	00000130 	0x00000130
 188:	1c0018a0 	pcaddu12i	$r0,197(0xc5)
 18c:	0000006c 	0x0000006c
 190:	100e5002 	addu16i.d	$r2,$r0,916(0x394)
 194:	00000e54 	0x00000e54
 198:	0000000c 	0x0000000c
 19c:	00000130 	0x00000130
 1a0:	1c001910 	pcaddu12i	$r16,200(0xc8)
 1a4:	0000003c 	0x0000003c
 1a8:	0000000c 	0x0000000c
 1ac:	00000130 	0x00000130
 1b0:	1c001950 	pcaddu12i	$r16,202(0xca)
 1b4:	00000028 	0x00000028
 1b8:	0000000c 	0x0000000c
 1bc:	00000130 	0x00000130
 1c0:	1c001980 	pcaddu12i	$r0,204(0xcc)
 1c4:	00000020 	0x00000020
 1c8:	0000000c 	0x0000000c
 1cc:	00000130 	0x00000130
 1d0:	1c0019a0 	pcaddu12i	$r0,205(0xcd)
 1d4:	00000028 	0x00000028
 1d8:	0000000c 	0x0000000c
 1dc:	00000130 	0x00000130
 1e0:	1c0019d0 	pcaddu12i	$r16,206(0xce)
 1e4:	0000005c 	0x0000005c
 1e8:	00000014 	0x00000014
 1ec:	00000130 	0x00000130
 1f0:	1c001a30 	pcaddu12i	$r16,209(0xd1)
 1f4:	00000058 	0x00000058
 1f8:	54100e7c 	bl	-101707764(0x9f0100c) # f9f01204 <_stack+0xdde01208>
 1fc:	0000000e 	0x0000000e
 200:	0000000c 	0x0000000c
 204:	00000130 	0x00000130
 208:	1c001a90 	pcaddu12i	$r16,212(0xd4)
 20c:	00000018 	0x00000018
 210:	0000000c 	0x0000000c
 214:	ffffffff 	0xffffffff
 218:	7c010001 	0x7c010001
 21c:	00030d01 	0x00030d01
 220:	00000018 	0x00000018
 224:	00000210 	0x00000210
 228:	1c001ab0 	pcaddu12i	$r16,213(0xd5)
 22c:	0000001c 	0x0000001c
 230:	44100e44 	bnez	$r18,1052684(0x10100c) # 10123c <__stack_size+0xf123c>
 234:	d94c0199 	0xd94c0199
 238:	00000e44 	0x00000e44
 23c:	0000000c 	0x0000000c
 240:	00000210 	0x00000210
 244:	1c001ad0 	pcaddu12i	$r16,214(0xd6)
 248:	00000004 	0x00000004
 24c:	0000000c 	0x0000000c
 250:	00000210 	0x00000210
 254:	1c001ae0 	pcaddu12i	$r0,215(0xd7)
 258:	00000008 	0x00000008
 25c:	00000018 	0x00000018
 260:	00000210 	0x00000210
 264:	1c001af0 	pcaddu12i	$r16,215(0xd7)
 268:	00000084 	0x00000084
 26c:	44100e44 	bnez	$r18,1052684(0x10100c) # 101278 <__stack_size+0xf1278>
 270:	60020199 	blt	$r12,$r25,512(0x200) # 470 <__stack_size-0xfb90>
 274:	000e58d9 	bytepick.d	$r25,$r6,$r22,0x4
 278:	0000000c 	0x0000000c
 27c:	00000210 	0x00000210
 280:	1c001b80 	pcaddu12i	$r0,220(0xdc)
 284:	00000004 	0x00000004
 288:	00000018 	0x00000018
 28c:	00000210 	0x00000210
 290:	1c001b90 	pcaddu12i	$r16,220(0xdc)
 294:	00000024 	0x00000024
 298:	44100e44 	bnez	$r18,1052684(0x10100c) # 1012a4 <__stack_size+0xf12a4>
 29c:	d9500199 	0xd9500199
 2a0:	00000e48 	0x00000e48
 2a4:	00000018 	0x00000018
 2a8:	00000210 	0x00000210
 2ac:	1c001bc0 	pcaddu12i	$r0,222(0xde)
 2b0:	00000030 	0x00000030
 2b4:	44100e44 	bnez	$r18,1052684(0x10100c) # 1012c0 <__stack_size+0xf12c0>
 2b8:	d9500199 	0xd9500199
 2bc:	00000e54 	0x00000e54
