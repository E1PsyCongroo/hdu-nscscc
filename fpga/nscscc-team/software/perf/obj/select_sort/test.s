
obj/select_sort/main.elf:     file format elf32-loongarch
obj/select_sort/main.elf


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
1c000054:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c000058:	02beb18c 	addi.w	$r12,$r12,-84(0xfac)
1c00005c:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c000060:	02be91ad 	addi.w	$r13,$r13,-92(0xfa4)
1c000064:	1c00100e 	pcaddu12i	$r14,128(0x80)
1c000068:	029f51ce 	addi.w	$r14,$r14,2004(0x7d4)
1c00006c:	6c0019ae 	bgeu	$r13,$r14,24(0x18) # 1c000084 <_start+0x84>
1c000070:	2880018f 	ld.w	$r15,$r12,0
1c000074:	298001af 	st.w	$r15,$r13,0
1c000078:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00007c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000080:	6bfff1ae 	bltu	$r13,$r14,-16(0x3fff0) # 1c000070 <_start+0x70>
1c000084:	1c00100c 	pcaddu12i	$r12,128(0x80)
1c000088:	029ed18c 	addi.w	$r12,$r12,1972(0x7b4)
1c00008c:	1c00102d 	pcaddu12i	$r13,129(0x81)
1c000090:	029d31ad 	addi.w	$r13,$r13,1868(0x74c)
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
1c00038c:	54001400 	bl	20(0x14) # 1c0003a0 <shell7>
1c000390:	03400000 	andi	$r0,$r0,0x0

1c000394 <go_finish>:
go_finish():
1c000394:	53fd6fff 	b	-660(0xffffd6c) # 1c000100 <test_finish>

Disassembly of section .text:

1c0003a0 <shell7>:
shell7():
1c0003a0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0003a4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0003a8:	157f5fcc 	lu12i.w	$r12,-263426(0xbfafe)
1c0003ac:	2980a077 	st.w	$r23,$r3,40(0x28)
1c0003b0:	29809078 	st.w	$r24,$r3,36(0x24)
1c0003b4:	29808079 	st.w	$r25,$r3,32(0x20)
1c0003b8:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c0003bc:	2980607b 	st.w	$r27,$r3,24(0x18)
1c0003c0:	2980507c 	st.w	$r28,$r3,20(0x14)
1c0003c4:	2980407d 	st.w	$r29,$r3,16(0x10)
1c0003c8:	2980307e 	st.w	$r30,$r3,12(0xc)
1c0003cc:	29800180 	st.w	$r0,$r12,0
1c0003d0:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0003d4:	02b0c084 	addi.w	$r4,$r4,-976(0xc30)
1c0003d8:	5409c800 	bl	2504(0x9c8) # 1c000da0 <puts>
1c0003dc:	540ae400 	bl	2788(0xae4) # 1c000ec0 <get_count>
1c0003e0:	00150099 	move	$r25,$r4
1c0003e4:	540b0c00 	bl	2828(0xb0c) # 1c000ef0 <get_count_my>
1c0003e8:	0015009a 	move	$r26,$r4
1c0003ec:	157f5fe4 	lu12i.w	$r4,-263425(0xbfaff)
1c0003f0:	03bc8085 	ori	$r5,$r4,0xf20
1c0003f4:	288000a6 	ld.w	$r6,$r5,0
1c0003f8:	1c00101e 	pcaddu12i	$r30,128(0x80)
1c0003fc:	02b293de 	addi.w	$r30,$r30,-860(0xca4)
1c000400:	028c83dc 	addi.w	$r28,$r30,800(0x320)
1c000404:	1c001018 	pcaddu12i	$r24,128(0x80)
1c000408:	02842318 	addi.w	$r24,$r24,264(0x108)
1c00040c:	0280281b 	addi.w	$r27,$r0,10(0xa)
1c000410:	00150017 	move	$r23,$r0
1c000414:	001503dd 	move	$r29,$r30
1c000418:	5c0280c0 	bne	$r6,$r0,640(0x280) # 1c000698 <shell7+0x2f8>
1c00041c:	03400000 	andi	$r0,$r0,0x0
1c000420:	02832005 	addi.w	$r5,$r0,200(0xc8)
1c000424:	00150304 	move	$r4,$r24
1c000428:	54031800 	bl	792(0x318) # 1c000740 <select_sort>
1c00042c:	0011778d 	sub.w	$r13,$r28,$r29
1c000430:	02bff1a7 	addi.w	$r7,$r13,-4(0xffc)
1c000434:	004488e9 	srli.w	$r9,$r7,0x2
1c000438:	0280052a 	addi.w	$r10,$r9,1(0x1)
1c00043c:	03401d4b 	andi	$r11,$r10,0x7
1c000440:	1c00100c 	pcaddu12i	$r12,128(0x80)
1c000444:	02b1718c 	addi.w	$r12,$r12,-932(0xc5c)
1c000448:	00117488 	sub.w	$r8,$r4,$r29
1c00044c:	5800c560 	beq	$r11,$r0,196(0xc4) # 1c000510 <shell7+0x170>
1c000450:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c000454:	5800a56e 	beq	$r11,$r14,164(0xa4) # 1c0004f8 <shell7+0x158>
1c000458:	02800801 	addi.w	$r1,$r0,2(0x2)
1c00045c:	58008961 	beq	$r11,$r1,136(0x88) # 1c0004e4 <shell7+0x144>
1c000460:	02800c0f 	addi.w	$r15,$r0,3(0x3)
1c000464:	58006d6f 	beq	$r11,$r15,108(0x6c) # 1c0004d0 <shell7+0x130>
1c000468:	02801010 	addi.w	$r16,$r0,4(0x4)
1c00046c:	58005170 	beq	$r11,$r16,80(0x50) # 1c0004bc <shell7+0x11c>
1c000470:	02801411 	addi.w	$r17,$r0,5(0x5)
1c000474:	58003571 	beq	$r11,$r17,52(0x34) # 1c0004a8 <shell7+0x108>
1c000478:	02801812 	addi.w	$r18,$r0,6(0x6)
1c00047c:	58001972 	beq	$r11,$r18,24(0x18) # 1c000494 <shell7+0xf4>
1c000480:	001023b3 	add.w	$r19,$r29,$r8
1c000484:	288003b4 	ld.w	$r20,$r29,0
1c000488:	2880027e 	ld.w	$r30,$r19,0
1c00048c:	028013ac 	addi.w	$r12,$r29,4(0x4)
1c000490:	5c01fbd4 	bne	$r30,$r20,504(0x1f8) # 1c000688 <shell7+0x2e8>
1c000494:	00103104 	add.w	$r4,$r8,$r12
1c000498:	28800185 	ld.w	$r5,$r12,0
1c00049c:	28800086 	ld.w	$r6,$r4,0
1c0004a0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0004a4:	5c01e4c5 	bne	$r6,$r5,484(0x1e4) # 1c000688 <shell7+0x2e8>
1c0004a8:	0010310d 	add.w	$r13,$r8,$r12
1c0004ac:	28800187 	ld.w	$r7,$r12,0
1c0004b0:	288001a9 	ld.w	$r9,$r13,0
1c0004b4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0004b8:	5c01d127 	bne	$r9,$r7,464(0x1d0) # 1c000688 <shell7+0x2e8>
1c0004bc:	0010310a 	add.w	$r10,$r8,$r12
1c0004c0:	2880018b 	ld.w	$r11,$r12,0
1c0004c4:	2880014e 	ld.w	$r14,$r10,0
1c0004c8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0004cc:	5c01bdcb 	bne	$r14,$r11,444(0x1bc) # 1c000688 <shell7+0x2e8>
1c0004d0:	00103101 	add.w	$r1,$r8,$r12
1c0004d4:	2880018f 	ld.w	$r15,$r12,0
1c0004d8:	28800030 	ld.w	$r16,$r1,0
1c0004dc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0004e0:	5c01aa0f 	bne	$r16,$r15,424(0x1a8) # 1c000688 <shell7+0x2e8>
1c0004e4:	00103111 	add.w	$r17,$r8,$r12
1c0004e8:	28800192 	ld.w	$r18,$r12,0
1c0004ec:	28800233 	ld.w	$r19,$r17,0
1c0004f0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0004f4:	5c019672 	bne	$r19,$r18,404(0x194) # 1c000688 <shell7+0x2e8>
1c0004f8:	00103114 	add.w	$r20,$r8,$r12
1c0004fc:	2880019e 	ld.w	$r30,$r12,0
1c000500:	28800284 	ld.w	$r4,$r20,0
1c000504:	5c01849e 	bne	$r4,$r30,388(0x184) # 1c000688 <shell7+0x2e8>
1c000508:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00050c:	58007f8c 	beq	$r28,$r12,124(0x7c) # 1c000588 <shell7+0x1e8>
1c000510:	00103106 	add.w	$r6,$r8,$r12
1c000514:	2880018e 	ld.w	$r14,$r12,0
1c000518:	288000cd 	ld.w	$r13,$r6,0
1c00051c:	001500c9 	move	$r9,$r6
1c000520:	001500cb 	move	$r11,$r6
1c000524:	001500cf 	move	$r15,$r6
1c000528:	5c0161ae 	bne	$r13,$r14,352(0x160) # 1c000688 <shell7+0x2e8>
1c00052c:	28801190 	ld.w	$r16,$r12,4(0x4)
1c000530:	288010d1 	ld.w	$r17,$r6,4(0x4)
1c000534:	5c015630 	bne	$r17,$r16,340(0x154) # 1c000688 <shell7+0x2e8>
1c000538:	28802192 	ld.w	$r18,$r12,8(0x8)
1c00053c:	288020d3 	ld.w	$r19,$r6,8(0x8)
1c000540:	5c014a72 	bne	$r19,$r18,328(0x148) # 1c000688 <shell7+0x2e8>
1c000544:	28803194 	ld.w	$r20,$r12,12(0xc)
1c000548:	288030de 	ld.w	$r30,$r6,12(0xc)
1c00054c:	5c013fd4 	bne	$r30,$r20,316(0x13c) # 1c000688 <shell7+0x2e8>
1c000550:	28804184 	ld.w	$r4,$r12,16(0x10)
1c000554:	288040c6 	ld.w	$r6,$r6,16(0x10)
1c000558:	5c0130c4 	bne	$r6,$r4,304(0x130) # 1c000688 <shell7+0x2e8>
1c00055c:	28805187 	ld.w	$r7,$r12,20(0x14)
1c000560:	28805129 	ld.w	$r9,$r9,20(0x14)
1c000564:	5c012527 	bne	$r9,$r7,292(0x124) # 1c000688 <shell7+0x2e8>
1c000568:	2880618a 	ld.w	$r10,$r12,24(0x18)
1c00056c:	2880616b 	ld.w	$r11,$r11,24(0x18)
1c000570:	5c01196a 	bne	$r11,$r10,280(0x118) # 1c000688 <shell7+0x2e8>
1c000574:	28807181 	ld.w	$r1,$r12,28(0x1c)
1c000578:	288071ef 	ld.w	$r15,$r15,28(0x1c)
1c00057c:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c000580:	5c0109e1 	bne	$r15,$r1,264(0x108) # 1c000688 <shell7+0x2e8>
1c000584:	5fff8f8c 	bne	$r28,$r12,-116(0x3ff8c) # 1c000510 <shell7+0x170>
1c000588:	02bfff7b 	addi.w	$r27,$r27,-1(0xfff)
1c00058c:	5ffe9760 	bne	$r27,$r0,-364(0x3fe94) # 1c000420 <shell7+0x80>
1c000590:	54096000 	bl	2400(0x960) # 1c000ef0 <get_count_my>
1c000594:	0015009c 	move	$r28,$r4
1c000598:	54092800 	bl	2344(0x928) # 1c000ec0 <get_count>
1c00059c:	00116b9a 	sub.w	$r26,$r28,$r26
1c0005a0:	00116499 	sub.w	$r25,$r4,$r25
1c0005a4:	5c00b2e0 	bne	$r23,$r0,176(0xb0) # 1c000654 <shell7+0x2b4>
1c0005a8:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0005ac:	02a9c084 	addi.w	$r4,$r4,-1424(0xa70)
1c0005b0:	5407f000 	bl	2032(0x7f0) # 1c000da0 <puts>
1c0005b4:	157f5ff8 	lu12i.w	$r24,-263425(0xbfaff)
1c0005b8:	02800414 	addi.w	$r20,$r0,1(0x1)
1c0005bc:	03810310 	ori	$r16,$r24,0x40
1c0005c0:	29800214 	st.w	$r20,$r16,0
1c0005c4:	140001e5 	lu12i.w	$r5,15(0xf)
1c0005c8:	0380c313 	ori	$r19,$r24,0x30
1c0005cc:	03808312 	ori	$r18,$r24,0x20
1c0005d0:	03bffcae 	ori	$r14,$r5,0xfff
1c0005d4:	29800274 	st.w	$r20,$r19,0
1c0005d8:	2980024e 	st.w	$r14,$r18,0
1c0005dc:	157f5feb 	lu12i.w	$r11,-263425(0xbfaff)
1c0005e0:	0381416f 	ori	$r15,$r11,0x50
1c0005e4:	157f5f01 	lu12i.w	$r1,-263432(0xbfaf8)
1c0005e8:	298001fa 	st.w	$r26,$r15,0
1c0005ec:	03804037 	ori	$r23,$r1,0x10
1c0005f0:	2980003a 	st.w	$r26,$r1,0
1c0005f4:	00150325 	move	$r5,$r25
1c0005f8:	298002f9 	st.w	$r25,$r23,0
1c0005fc:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000600:	02a92084 	addi.w	$r4,$r4,-1464(0xa48)
1c000604:	54045c00 	bl	1116(0x45c) # 1c000a60 <printf>
1c000608:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00060c:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c000610:	28809078 	ld.w	$r24,$r3,36(0x24)
1c000614:	28808079 	ld.w	$r25,$r3,32(0x20)
1c000618:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c00061c:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c000620:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c000624:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c000628:	00150345 	move	$r5,$r26
1c00062c:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c000630:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000634:	02a90084 	addi.w	$r4,$r4,-1472(0xa40)
1c000638:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00063c:	50042400 	b	1060(0x424) # 1c000a60 <printf>
1c000640:	5408b000 	bl	2224(0x8b0) # 1c000ef0 <get_count_my>
1c000644:	0015009e 	move	$r30,$r4
1c000648:	54087800 	bl	2168(0x878) # 1c000ec0 <get_count>
1c00064c:	00116bda 	sub.w	$r26,$r30,$r26
1c000650:	00116499 	sub.w	$r25,$r4,$r25
1c000654:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000658:	02a76084 	addi.w	$r4,$r4,-1576(0x9d8)
1c00065c:	54074400 	bl	1860(0x744) # 1c000da0 <puts>
1c000660:	157f5fe4 	lu12i.w	$r4,-263425(0xbfaff)
1c000664:	02800406 	addi.w	$r6,$r0,1(0x1)
1c000668:	03810089 	ori	$r9,$r4,0x40
1c00066c:	29800126 	st.w	$r6,$r9,0
1c000670:	02800807 	addi.w	$r7,$r0,2(0x2)
1c000674:	0380c08d 	ori	$r13,$r4,0x30
1c000678:	0380808a 	ori	$r10,$r4,0x20
1c00067c:	298001a7 	st.w	$r7,$r13,0
1c000680:	29800140 	st.w	$r0,$r10,0
1c000684:	53ff5bff 	b	-168(0xfffff58) # 1c0005dc <shell7+0x23c>
1c000688:	02bfff7b 	addi.w	$r27,$r27,-1(0xfff)
1c00068c:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c000690:	5ffd9360 	bne	$r27,$r0,-624(0x3fd90) # 1c000420 <shell7+0x80>
1c000694:	53feffff 	b	-260(0xffffefc) # 1c000590 <shell7+0x1f0>
1c000698:	00150304 	move	$r4,$r24
1c00069c:	02832005 	addi.w	$r5,$r0,200(0xc8)
1c0006a0:	5400a000 	bl	160(0xa0) # 1c000740 <select_sort>
1c0006a4:	001503cc 	move	$r12,$r30
1c0006a8:	00117898 	sub.w	$r24,$r4,$r30
1c0006ac:	0010331d 	add.w	$r29,$r24,$r12
1c0006b0:	2880018e 	ld.w	$r14,$r12,0
1c0006b4:	288003ad 	ld.w	$r13,$r29,0
1c0006b8:	001503b1 	move	$r17,$r29
1c0006bc:	5fff85ae 	bne	$r13,$r14,-124(0x3ff84) # 1c000640 <shell7+0x2a0>
1c0006c0:	2880119e 	ld.w	$r30,$r12,4(0x4)
1c0006c4:	288013a4 	ld.w	$r4,$r29,4(0x4)
1c0006c8:	5fff789e 	bne	$r4,$r30,-136(0x3ff78) # 1c000640 <shell7+0x2a0>
1c0006cc:	28802186 	ld.w	$r6,$r12,8(0x8)
1c0006d0:	288023a7 	ld.w	$r7,$r29,8(0x8)
1c0006d4:	5fff6ce6 	bne	$r7,$r6,-148(0x3ff6c) # 1c000640 <shell7+0x2a0>
1c0006d8:	28803189 	ld.w	$r9,$r12,12(0xc)
1c0006dc:	288033aa 	ld.w	$r10,$r29,12(0xc)
1c0006e0:	5fff6149 	bne	$r10,$r9,-160(0x3ff60) # 1c000640 <shell7+0x2a0>
1c0006e4:	2880418b 	ld.w	$r11,$r12,16(0x10)
1c0006e8:	288043a1 	ld.w	$r1,$r29,16(0x10)
1c0006ec:	5fff542b 	bne	$r1,$r11,-172(0x3ff54) # 1c000640 <shell7+0x2a0>
1c0006f0:	2880518f 	ld.w	$r15,$r12,20(0x14)
1c0006f4:	288053b7 	ld.w	$r23,$r29,20(0x14)
1c0006f8:	5fff4aef 	bne	$r23,$r15,-184(0x3ff48) # 1c000640 <shell7+0x2a0>
1c0006fc:	2880619b 	ld.w	$r27,$r12,24(0x18)
1c000700:	288063bd 	ld.w	$r29,$r29,24(0x18)
1c000704:	5fff3fbb 	bne	$r29,$r27,-196(0x3ff3c) # 1c000640 <shell7+0x2a0>
1c000708:	28807188 	ld.w	$r8,$r12,28(0x1c)
1c00070c:	28807231 	ld.w	$r17,$r17,28(0x1c)
1c000710:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c000714:	5fff2e28 	bne	$r17,$r8,-212(0x3ff2c) # 1c000640 <shell7+0x2a0>
1c000718:	5fff978c 	bne	$r28,$r12,-108(0x3ff94) # 1c0006ac <shell7+0x30c>
1c00071c:	5407d400 	bl	2004(0x7d4) # 1c000ef0 <get_count_my>
1c000720:	0015009c 	move	$r28,$r4
1c000724:	54079c00 	bl	1948(0x79c) # 1c000ec0 <get_count>
1c000728:	00116b9a 	sub.w	$r26,$r28,$r26
1c00072c:	00116499 	sub.w	$r25,$r4,$r25
1c000730:	53fe7bff 	b	-392(0xffffe78) # 1c0005a8 <shell7+0x208>
1c000734:	03400000 	andi	$r0,$r0,0x0
1c000738:	03400000 	andi	$r0,$r0,0x0
1c00073c:	03400000 	andi	$r0,$r0,0x0

1c000740 <select_sort>:
select_sort():
1c000740:	1c001014 	pcaddu12i	$r20,128(0x80)
1c000744:	2883d294 	ld.w	$r20,$r20,244(0xf4)
1c000748:	0280108f 	addi.w	$r15,$r4,4(0x4)
1c00074c:	004088ad 	slli.w	$r13,$r5,0x2
1c000750:	0015028e 	move	$r14,$r20
1c000754:	001035e6 	add.w	$r6,$r15,$r13
1c000758:	6000fca0 	blt	$r5,$r0,252(0xfc) # 1c000854 <select_sort+0x114>
1c00075c:	001110cc 	sub.w	$r12,$r6,$r4
1c000760:	02bff187 	addi.w	$r7,$r12,-4(0xffc)
1c000764:	004488e8 	srli.w	$r8,$r7,0x2
1c000768:	02800509 	addi.w	$r9,$r8,1(0x1)
1c00076c:	03401d2a 	andi	$r10,$r9,0x7
1c000770:	58009940 	beq	$r10,$r0,152(0x98) # 1c000808 <select_sort+0xc8>
1c000774:	02800410 	addi.w	$r16,$r0,1(0x1)
1c000778:	58007d50 	beq	$r10,$r16,124(0x7c) # 1c0007f4 <select_sort+0xb4>
1c00077c:	0280080b 	addi.w	$r11,$r0,2(0x2)
1c000780:	5800654b 	beq	$r10,$r11,100(0x64) # 1c0007e4 <select_sort+0xa4>
1c000784:	02800c11 	addi.w	$r17,$r0,3(0x3)
1c000788:	58004d51 	beq	$r10,$r17,76(0x4c) # 1c0007d4 <select_sort+0x94>
1c00078c:	02801012 	addi.w	$r18,$r0,4(0x4)
1c000790:	58003552 	beq	$r10,$r18,52(0x34) # 1c0007c4 <select_sort+0x84>
1c000794:	02801413 	addi.w	$r19,$r0,5(0x5)
1c000798:	58001d53 	beq	$r10,$r19,28(0x1c) # 1c0007b4 <select_sort+0x74>
1c00079c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0007a0:	5c02a94d 	bne	$r10,$r13,680(0x2a8) # 1c000a48 <select_sort+0x308>
1c0007a4:	2880008f 	ld.w	$r15,$r4,0
1c0007a8:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0007ac:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0007b0:	29bff1cf 	st.w	$r15,$r14,-4(0xffc)
1c0007b4:	28800087 	ld.w	$r7,$r4,0
1c0007b8:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0007bc:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0007c0:	29bff1c7 	st.w	$r7,$r14,-4(0xffc)
1c0007c4:	28800088 	ld.w	$r8,$r4,0
1c0007c8:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0007cc:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0007d0:	29bff1c8 	st.w	$r8,$r14,-4(0xffc)
1c0007d4:	28800089 	ld.w	$r9,$r4,0
1c0007d8:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0007dc:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0007e0:	29bff1c9 	st.w	$r9,$r14,-4(0xffc)
1c0007e4:	2880008a 	ld.w	$r10,$r4,0
1c0007e8:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0007ec:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0007f0:	29bff1ca 	st.w	$r10,$r14,-4(0xffc)
1c0007f4:	28800090 	ld.w	$r16,$r4,0
1c0007f8:	028011ce 	addi.w	$r14,$r14,4(0x4)
1c0007fc:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000800:	29bff1d0 	st.w	$r16,$r14,-4(0xffc)
1c000804:	58005086 	beq	$r4,$r6,80(0x50) # 1c000854 <select_sort+0x114>
1c000808:	2880008b 	ld.w	$r11,$r4,0
1c00080c:	028081ce 	addi.w	$r14,$r14,32(0x20)
1c000810:	02808084 	addi.w	$r4,$r4,32(0x20)
1c000814:	29bf81cb 	st.w	$r11,$r14,-32(0xfe0)
1c000818:	28bf9091 	ld.w	$r17,$r4,-28(0xfe4)
1c00081c:	29bf91d1 	st.w	$r17,$r14,-28(0xfe4)
1c000820:	28bfa092 	ld.w	$r18,$r4,-24(0xfe8)
1c000824:	29bfa1d2 	st.w	$r18,$r14,-24(0xfe8)
1c000828:	28bfb093 	ld.w	$r19,$r4,-20(0xfec)
1c00082c:	29bfb1d3 	st.w	$r19,$r14,-20(0xfec)
1c000830:	28bfc08d 	ld.w	$r13,$r4,-16(0xff0)
1c000834:	29bfc1cd 	st.w	$r13,$r14,-16(0xff0)
1c000838:	28bfd08c 	ld.w	$r12,$r4,-12(0xff4)
1c00083c:	29bfd1cc 	st.w	$r12,$r14,-12(0xff4)
1c000840:	28bfe08f 	ld.w	$r15,$r4,-8(0xff8)
1c000844:	29bfe1cf 	st.w	$r15,$r14,-8(0xff8)
1c000848:	28bff087 	ld.w	$r7,$r4,-4(0xffc)
1c00084c:	29bff1c7 	st.w	$r7,$r14,-4(0xffc)
1c000850:	5fffb886 	bne	$r4,$r6,-72(0x3ffb8) # 1c000808 <select_sort+0xc8>
1c000854:	02800406 	addi.w	$r6,$r0,1(0x1)
1c000858:	1c001011 	pcaddu12i	$r17,128(0x80)
1c00085c:	28bf7231 	ld.w	$r17,$r17,-36(0xfdc)
1c000860:	02bffca4 	addi.w	$r4,$r5,-1(0xfff)
1c000864:	00150010 	move	$r16,$r0
1c000868:	6401c8c5 	bge	$r6,$r5,456(0x1c8) # 1c000a30 <select_sort+0x2f0>
1c00086c:	03400000 	andi	$r0,$r0,0x0
1c000870:	28800228 	ld.w	$r8,$r17,0
1c000874:	02800609 	addi.w	$r9,$r16,1(0x1)
1c000878:	0015010f 	move	$r15,$r8
1c00087c:	64019925 	bge	$r9,$r5,408(0x198) # 1c000a14 <select_sort+0x2d4>
1c000880:	001124aa 	sub.w	$r10,$r5,$r9
1c000884:	03401d4e 	andi	$r14,$r10,0x7
1c000888:	0015022c 	move	$r12,$r17
1c00088c:	0015012d 	move	$r13,$r9
1c000890:	5800d9c0 	beq	$r14,$r0,216(0xd8) # 1c000968 <select_sort+0x228>
1c000894:	0280040b 	addi.w	$r11,$r0,1(0x1)
1c000898:	5800b5cb 	beq	$r14,$r11,180(0xb4) # 1c00094c <select_sort+0x20c>
1c00089c:	02800812 	addi.w	$r18,$r0,2(0x2)
1c0008a0:	580095d2 	beq	$r14,$r18,148(0x94) # 1c000934 <select_sort+0x1f4>
1c0008a4:	02800c13 	addi.w	$r19,$r0,3(0x3)
1c0008a8:	580075d3 	beq	$r14,$r19,116(0x74) # 1c00091c <select_sort+0x1dc>
1c0008ac:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0008b0:	580055c7 	beq	$r14,$r7,84(0x54) # 1c000904 <select_sort+0x1c4>
1c0008b4:	02801406 	addi.w	$r6,$r0,5(0x5)
1c0008b8:	580035c6 	beq	$r14,$r6,52(0x34) # 1c0008ec <select_sort+0x1ac>
1c0008bc:	0280180a 	addi.w	$r10,$r0,6(0x6)
1c0008c0:	580015ca 	beq	$r14,$r10,20(0x14) # 1c0008d4 <select_sort+0x194>
1c0008c4:	2880122d 	ld.w	$r13,$r17,4(0x4)
1c0008c8:	600175a8 	blt	$r13,$r8,372(0x174) # 1c000a3c <select_sort+0x2fc>
1c0008cc:	0280052d 	addi.w	$r13,$r9,1(0x1)
1c0008d0:	0280122c 	addi.w	$r12,$r17,4(0x4)
1c0008d4:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c0008d8:	64000dcf 	bge	$r14,$r15,12(0xc) # 1c0008e4 <select_sort+0x1a4>
1c0008dc:	001501cf 	move	$r15,$r14
1c0008e0:	001501b0 	move	$r16,$r13
1c0008e4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0008e8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0008ec:	2880118b 	ld.w	$r11,$r12,4(0x4)
1c0008f0:	64000d6f 	bge	$r11,$r15,12(0xc) # 1c0008fc <select_sort+0x1bc>
1c0008f4:	0015016f 	move	$r15,$r11
1c0008f8:	001501b0 	move	$r16,$r13
1c0008fc:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000900:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000904:	28801192 	ld.w	$r18,$r12,4(0x4)
1c000908:	64000e4f 	bge	$r18,$r15,12(0xc) # 1c000914 <select_sort+0x1d4>
1c00090c:	0015024f 	move	$r15,$r18
1c000910:	001501b0 	move	$r16,$r13
1c000914:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000918:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00091c:	28801193 	ld.w	$r19,$r12,4(0x4)
1c000920:	64000e6f 	bge	$r19,$r15,12(0xc) # 1c00092c <select_sort+0x1ec>
1c000924:	0015026f 	move	$r15,$r19
1c000928:	001501b0 	move	$r16,$r13
1c00092c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000930:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000934:	28801187 	ld.w	$r7,$r12,4(0x4)
1c000938:	64000cef 	bge	$r7,$r15,12(0xc) # 1c000944 <select_sort+0x204>
1c00093c:	001500ef 	move	$r15,$r7
1c000940:	001501b0 	move	$r16,$r13
1c000944:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000948:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00094c:	28801186 	ld.w	$r6,$r12,4(0x4)
1c000950:	64000ccf 	bge	$r6,$r15,12(0xc) # 1c00095c <select_sort+0x21c>
1c000954:	001500cf 	move	$r15,$r6
1c000958:	001501b0 	move	$r16,$r13
1c00095c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000960:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000964:	5800b1a5 	beq	$r13,$r5,176(0xb0) # 1c000a14 <select_sort+0x2d4>
1c000968:	2880118a 	ld.w	$r10,$r12,4(0x4)
1c00096c:	64000d4f 	bge	$r10,$r15,12(0xc) # 1c000978 <select_sort+0x238>
1c000970:	0015014f 	move	$r15,$r10
1c000974:	001501b0 	move	$r16,$r13
1c000978:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00097c:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c000980:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000984:	64000dcf 	bge	$r14,$r15,12(0xc) # 1c000990 <select_sort+0x250>
1c000988:	001501cf 	move	$r15,$r14
1c00098c:	001501b0 	move	$r16,$r13
1c000990:	2880218b 	ld.w	$r11,$r12,8(0x8)
1c000994:	028005b2 	addi.w	$r18,$r13,1(0x1)
1c000998:	64000d6f 	bge	$r11,$r15,12(0xc) # 1c0009a4 <select_sort+0x264>
1c00099c:	0015016f 	move	$r15,$r11
1c0009a0:	00150250 	move	$r16,$r18
1c0009a4:	28803193 	ld.w	$r19,$r12,12(0xc)
1c0009a8:	028009a7 	addi.w	$r7,$r13,2(0x2)
1c0009ac:	64000e6f 	bge	$r19,$r15,12(0xc) # 1c0009b8 <select_sort+0x278>
1c0009b0:	0015026f 	move	$r15,$r19
1c0009b4:	001500f0 	move	$r16,$r7
1c0009b8:	2880418a 	ld.w	$r10,$r12,16(0x10)
1c0009bc:	02800da6 	addi.w	$r6,$r13,3(0x3)
1c0009c0:	64000d4f 	bge	$r10,$r15,12(0xc) # 1c0009cc <select_sort+0x28c>
1c0009c4:	0015014f 	move	$r15,$r10
1c0009c8:	001500d0 	move	$r16,$r6
1c0009cc:	2880518e 	ld.w	$r14,$r12,20(0x14)
1c0009d0:	028011ab 	addi.w	$r11,$r13,4(0x4)
1c0009d4:	64000dcf 	bge	$r14,$r15,12(0xc) # 1c0009e0 <select_sort+0x2a0>
1c0009d8:	001501cf 	move	$r15,$r14
1c0009dc:	00150170 	move	$r16,$r11
1c0009e0:	28806192 	ld.w	$r18,$r12,24(0x18)
1c0009e4:	028015b3 	addi.w	$r19,$r13,5(0x5)
1c0009e8:	64000e4f 	bge	$r18,$r15,12(0xc) # 1c0009f4 <select_sort+0x2b4>
1c0009ec:	0015024f 	move	$r15,$r18
1c0009f0:	00150270 	move	$r16,$r19
1c0009f4:	28807187 	ld.w	$r7,$r12,28(0x1c)
1c0009f8:	028019aa 	addi.w	$r10,$r13,6(0x6)
1c0009fc:	64000cef 	bge	$r7,$r15,12(0xc) # 1c000a08 <select_sort+0x2c8>
1c000a00:	001500ef 	move	$r15,$r7
1c000a04:	00150150 	move	$r16,$r10
1c000a08:	02801dad 	addi.w	$r13,$r13,7(0x7)
1c000a0c:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c000a10:	5fff59a5 	bne	$r13,$r5,-168(0x3ff58) # 1c000968 <select_sort+0x228>
1c000a14:	00408a06 	slli.w	$r6,$r16,0x2
1c000a18:	2980022f 	st.w	$r15,$r17,0
1c000a1c:	00150130 	move	$r16,$r9
1c000a20:	00101a89 	add.w	$r9,$r20,$r6
1c000a24:	29800128 	st.w	$r8,$r9,0
1c000a28:	02801231 	addi.w	$r17,$r17,4(0x4)
1c000a2c:	5ffe4490 	bne	$r4,$r16,-444(0x3fe44) # 1c000870 <select_sort+0x130>
1c000a30:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000a34:	28b81084 	ld.w	$r4,$r4,-508(0xe04)
1c000a38:	4c000020 	jirl	$r0,$r1,0
1c000a3c:	001501af 	move	$r15,$r13
1c000a40:	00150130 	move	$r16,$r9
1c000a44:	53fe8bff 	b	-376(0xffffe88) # 1c0008cc <select_sort+0x18c>
1c000a48:	2880008c 	ld.w	$r12,$r4,0
1c000a4c:	0280128e 	addi.w	$r14,$r20,4(0x4)
1c000a50:	001501e4 	move	$r4,$r15
1c000a54:	2980028c 	st.w	$r12,$r20,0
1c000a58:	53fd4fff 	b	-692(0xffffd4c) # 1c0007a4 <select_sort+0x64>
1c000a5c:	03400000 	andi	$r0,$r0,0x0

1c000a60 <printf>:
printf():
/code/fpga/nscscc-team/software/perf/lib/printf.c:2
int printf(const char *fmt,...)
{
1c000a60:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c000a64:	2980b07a 	st.w	$r26,$r3,44(0x2c)
1c000a68:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c000a6c:	2980e077 	st.w	$r23,$r3,56(0x38)
1c000a70:	2980d078 	st.w	$r24,$r3,52(0x34)
1c000a74:	2980c079 	st.w	$r25,$r3,48(0x30)
1c000a78:	2980a07b 	st.w	$r27,$r3,40(0x28)
1c000a7c:	2980907c 	st.w	$r28,$r3,36(0x24)
1c000a80:	29811065 	st.w	$r5,$r3,68(0x44)
1c000a84:	29812066 	st.w	$r6,$r3,72(0x48)
/code/fpga/nscscc-team/software/perf/lib/printf.c:10
void **arg;
void *ap;
int w;
__builtin_va_start(ap,fmt);
arg=ap;
for(i=0;fmt[i];i++)
1c000a88:	28000097 	ld.b	$r23,$r4,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c000a8c:	0281107a 	addi.w	$r26,$r3,68(0x44)
/code/fpga/nscscc-team/software/perf/lib/printf.c:2
{
1c000a90:	29813067 	st.w	$r7,$r3,76(0x4c)
1c000a94:	29814068 	st.w	$r8,$r3,80(0x50)
1c000a98:	29815069 	st.w	$r9,$r3,84(0x54)
1c000a9c:	2981606a 	st.w	$r10,$r3,88(0x58)
1c000aa0:	2981706b 	st.w	$r11,$r3,92(0x5c)
/code/fpga/nscscc-team/software/perf/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c000aa4:	2980707a 	st.w	$r26,$r3,28(0x1c)
/code/fpga/nscscc-team/software/perf/lib/printf.c:10
for(i=0;fmt[i];i++)
1c000aa8:	58008ae0 	beq	$r23,$r0,136(0x88) # 1c000b30 <printf+0xd0>
1c000aac:	00150099 	move	$r25,$r4
1c000ab0:	00150018 	move	$r24,$r0
1c000ab4:	1c00101c 	pcaddu12i	$r28,128(0x80)
1c000ab8:	02a4239c 	addi.w	$r28,$r28,-1784(0x908)
1c000abc:	0280201b 	addi.w	$r27,$r0,8(0x8)
1c000ac0:	50001c00 	b	28(0x1c) # 1c000adc <printf+0x7c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:80
		}

	}
	else{
		if(c=='\n') putchar('\r');
		putchar(c);
1c000ac4:	001502e4 	move	$r4,$r23
1c000ac8:	5401d800 	bl	472(0x1d8) # 1c000ca0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:10 (discriminator 2)
for(i=0;fmt[i];i++)
1c000acc:	02800718 	addi.w	$r24,$r24,1(0x1)
1c000ad0:	0010632c 	add.w	$r12,$r25,$r24
1c000ad4:	28000197 	ld.b	$r23,$r12,0
1c000ad8:	58005ae0 	beq	$r23,$r0,88(0x58) # 1c000b30 <printf+0xd0>
/code/fpga/nscscc-team/software/perf/lib/printf.c:13
	if(c=='%')
1c000adc:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c000ae0:	58001aec 	beq	$r23,$r12,24(0x18) # 1c000af8 <printf+0x98>
/code/fpga/nscscc-team/software/perf/lib/printf.c:79
		if(c=='\n') putchar('\r');
1c000ae4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c000ae8:	5fffdeec 	bne	$r23,$r12,-36(0x3ffdc) # 1c000ac4 <printf+0x64>
/code/fpga/nscscc-team/software/perf/lib/printf.c:79 (discriminator 1)
1c000aec:	02803404 	addi.w	$r4,$r0,13(0xd)
1c000af0:	5401b000 	bl	432(0x1b0) # 1c000ca0 <putchar>
1c000af4:	53ffd3ff 	b	-48(0xfffffd0) # 1c000ac4 <printf+0x64>
1c000af8:	0010632c 	add.w	$r12,$r25,$r24
1c000afc:	2800058d 	ld.b	$r13,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:15
		w=1;
1c000b00:	02800405 	addi.w	$r5,$r0,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:17
		switch(fmt[i+1])
1c000b04:	02814c10 	addi.w	$r16,$r0,83(0x53)
/code/fpga/nscscc-team/software/perf/lib/printf.c:68
				 w=w*10+(fmt[i+1]-'0');
1c000b08:	0280280f 	addi.w	$r15,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:17
		switch(fmt[i+1])
1c000b0c:	02bf6dac 	addi.w	$r12,$r13,-37(0xfdb)
1c000b10:	2980306c 	st.w	$r12,$r3,12(0xc)
1c000b14:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c000b18:	68017a0c 	bltu	$r16,$r12,376(0x178) # 1c000c90 <printf+0x230>
1c000b1c:	0040898c 	slli.w	$r12,$r12,0x2
1c000b20:	0010338c 	add.w	$r12,$r28,$r12
1c000b24:	2880018c 	ld.w	$r12,$r12,0
1c000b28:	4c000180 	jirl	$r0,$r12,0
1c000b2c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:84
	}
}
	return 0;
}
1c000b30:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c000b34:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c000b38:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c000b3c:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c000b40:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c000b44:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c000b48:	2880907c 	ld.w	$r28,$r3,36(0x24)
1c000b4c:	00150004 	move	$r4,$r0
1c000b50:	02818063 	addi.w	$r3,$r3,96(0x60)
1c000b54:	4c000020 	jirl	$r0,$r1,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:65
				i++;
1c000b58:	0010632c 	add.w	$r12,$r25,$r24
1c000b5c:	2800098d 	ld.b	$r13,$r12,2(0x2)
1c000b60:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 1)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000b64:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c000b68:	2980306c 	st.w	$r12,$r3,12(0xc)
1c000b6c:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c000b70:	00150005 	move	$r5,$r0
1c000b74:	6bff9b6c 	bltu	$r27,$r12,-104(0x3ff98) # 1c000b0c <printf+0xac>
/code/fpga/nscscc-team/software/perf/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c000b78:	001c3ca5 	mul.w	$r5,$r5,$r15
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000b7c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c000b80:	0010632c 	add.w	$r12,$r25,$r24
/code/fpga/nscscc-team/software/perf/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c000b84:	02bf41ae 	addi.w	$r14,$r13,-48(0xfd0)
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000b88:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c000b8c:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c000b90:	2980306c 	st.w	$r12,$r3,12(0xc)
1c000b94:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c000b98:	001015c5 	add.w	$r5,$r14,$r5
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000b9c:	6fffdf6c 	bgeu	$r27,$r12,-36(0x3ffdc) # 1c000b78 <printf+0x118>
1c000ba0:	53ff6fff 	b	-148(0xfffff6c) # 1c000b0c <printf+0xac>
/code/fpga/nscscc-team/software/perf/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c000ba4:	28800344 	ld.w	$r4,$r26,0
1c000ba8:	00150007 	move	$r7,$r0
1c000bac:	02800806 	addi.w	$r6,$r0,2(0x2)
/code/fpga/nscscc-team/software/perf/lib/printf.c:51
				arg++;
1c000bb0:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:52
				i++;
1c000bb4:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c000bb8:	54021800 	bl	536(0x218) # 1c000dd0 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:53
				break;
1c000bbc:	53ff13ff 	b	-240(0xfffff10) # 1c000acc <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:25
				putchar((long)*arg);
1c000bc0:	28800344 	ld.w	$r4,$r26,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:27
				i++;
1c000bc4:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:26
				arg++;
1c000bc8:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:25
				putchar((long)*arg);
1c000bcc:	5400d400 	bl	212(0xd4) # 1c000ca0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:28
				break;
1c000bd0:	53feffff 	b	-260(0xffffefc) # 1c000acc <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c000bd4:	28800344 	ld.w	$r4,$r26,0
1c000bd8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c000bdc:	02802806 	addi.w	$r6,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:36
				arg++;
1c000be0:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:37
				i++;
1c000be4:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c000be8:	5401e800 	bl	488(0x1e8) # 1c000dd0 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:38
				break;
1c000bec:	53fee3ff 	b	-288(0xffffee0) # 1c000acc <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c000bf0:	28800344 	ld.w	$r4,$r26,0
1c000bf4:	00150007 	move	$r7,$r0
1c000bf8:	02802806 	addi.w	$r6,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:41
                arg++;
1c000bfc:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:42
                i=i+2;
1c000c00:	02800b18 	addi.w	$r24,$r24,2(0x2)
/code/fpga/nscscc-team/software/perf/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c000c04:	5401cc00 	bl	460(0x1cc) # 1c000dd0 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:43
                break;
1c000c08:	53fec7ff 	b	-316(0xffffec4) # 1c000acc <printf+0x6c>
1c000c0c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c000c10:	28800344 	ld.w	$r4,$r26,0
1c000c14:	00150007 	move	$r7,$r0
1c000c18:	02802006 	addi.w	$r6,$r0,8(0x8)
/code/fpga/nscscc-team/software/perf/lib/printf.c:46
				arg++;
1c000c1c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:47
				i++;
1c000c20:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c000c24:	5401ac00 	bl	428(0x1ac) # 1c000dd0 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:48
				break;
1c000c28:	53fea7ff 	b	-348(0xffffea4) # 1c000acc <printf+0x6c>
1c000c2c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c000c30:	28800344 	ld.w	$r4,$r26,0
1c000c34:	00150007 	move	$r7,$r0
1c000c38:	02804006 	addi.w	$r6,$r0,16(0x10)
/code/fpga/nscscc-team/software/perf/lib/printf.c:57
				arg++;
1c000c3c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:58
				i++;
1c000c40:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c000c44:	54018c00 	bl	396(0x18c) # 1c000dd0 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:59
				break;
1c000c48:	53fe87ff 	b	-380(0xffffe84) # 1c000acc <printf+0x6c>
1c000c4c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:20
				putstring(*arg);
1c000c50:	28800344 	ld.w	$r4,$r26,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:22
				i++;
1c000c54:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:21
				arg++;
1c000c58:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:20
				putstring(*arg);
1c000c5c:	5400c400 	bl	196(0xc4) # 1c000d20 <putstring>
/code/fpga/nscscc-team/software/perf/lib/printf.c:23
				break;
1c000c60:	53fe6fff 	b	-404(0xffffe6c) # 1c000acc <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c000c64:	28800344 	ld.w	$r4,$r26,0
1c000c68:	00150007 	move	$r7,$r0
1c000c6c:	02802806 	addi.w	$r6,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:31
				arg++;
1c000c70:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:32
				i++;
1c000c74:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c000c78:	54015800 	bl	344(0x158) # 1c000dd0 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:33
				break;
1c000c7c:	53fe53ff 	b	-432(0xffffe50) # 1c000acc <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:61
				putchar('%');
1c000c80:	02809404 	addi.w	$r4,$r0,37(0x25)
/code/fpga/nscscc-team/software/perf/lib/printf.c:62
				i++;
1c000c84:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:61
				putchar('%');
1c000c88:	54001800 	bl	24(0x18) # 1c000ca0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:63
				break;
1c000c8c:	53fe43ff 	b	-448(0xffffe40) # 1c000acc <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:73
				putchar('%');
1c000c90:	02809404 	addi.w	$r4,$r0,37(0x25)
1c000c94:	54000c00 	bl	12(0xc) # 1c000ca0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:74
				break;
1c000c98:	53fe37ff 	b	-460(0xffffe34) # 1c000acc <printf+0x6c>
1c000c9c:	03400000 	andi	$r0,$r0,0x0

1c000ca0 <putchar>:
putchar():
/code/fpga/nscscc-team/software/perf/lib/putchar.c:2
int putchar(int c)
{
1c000ca0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000ca4:	29803079 	st.w	$r25,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/putchar.c:9
return 0;
}

void tgt_putchar(c)
{   //UART_ADDR
    asm(
1c000ca8:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c000cac:	03bc4339 	ori	$r25,$r25,0xf10
1c000cb0:	29000324 	st.b	$r4,$r25,0
1c000cb4:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/putchar.c:5
}
1c000cb8:	00150004 	move	$r4,$r0
1c000cbc:	28803079 	ld.w	$r25,$r3,12(0xc)
1c000cc0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000cc4:	4c000020 	jirl	$r0,$r1,0
1c000cc8:	03400000 	andi	$r0,$r0,0x0
1c000ccc:	03400000 	andi	$r0,$r0,0x0

1c000cd0 <tgt_putchar>:
tgt_putchar():
/code/fpga/nscscc-team/software/perf/lib/putchar.c:8
{   //UART_ADDR
1c000cd0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000cd4:	29803079 	st.w	$r25,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/putchar.c:9
    asm(
1c000cd8:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c000cdc:	03bc4339 	ori	$r25,$r25,0xf10
1c000ce0:	29000324 	st.b	$r4,$r25,0
1c000ce4:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/putchar.c:16
        "st.b %0,$r25,0\n\t"        
        "nop\n\t"
        :
        :"r"(c)
        :"$r25");
}
1c000ce8:	28803079 	ld.w	$r25,$r3,12(0xc)
1c000cec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000cf0:	4c000020 	jirl	$r0,$r1,0
1c000cf4:	03400000 	andi	$r0,$r0,0x0
1c000cf8:	03400000 	andi	$r0,$r0,0x0
1c000cfc:	03400000 	andi	$r0,$r0,0x0

1c000d00 <uart_putchar>:
uart_putchar():
/code/fpga/nscscc-team/software/perf/lib/putchar.c:20

void uart_putchar (int c)
{
    while ((*((volatile uint32_t *)0xbeaf0004)) & 0x1);
1c000d00:	157d5e0e 	lu12i.w	$r14,-267536(0xbeaf0)
1c000d04:	038011cd 	ori	$r13,$r14,0x4
/code/fpga/nscscc-team/software/perf/lib/putchar.c:20 (discriminator 1)
1c000d08:	288001ac 	ld.w	$r12,$r13,0
1c000d0c:	0340058c 	andi	$r12,$r12,0x1
1c000d10:	5ffff980 	bne	$r12,$r0,-8(0x3fff8) # 1c000d08 <uart_putchar+0x8>
/code/fpga/nscscc-team/software/perf/lib/putchar.c:21
    (*((volatile uint32_t *)0xbeaf000c)) = c;
1c000d14:	038031ce 	ori	$r14,$r14,0xc
1c000d18:	298001c4 	st.w	$r4,$r14,0
/code/fpga/nscscc-team/software/perf/lib/putchar.c:22
}
1c000d1c:	4c000020 	jirl	$r0,$r1,0

1c000d20 <putstring>:
putstring():
/code/fpga/nscscc-team/software/perf/lib/puts.c:2
int putstring(char *s)
{
1c000d20:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000d24:	29803061 	st.w	$r1,$r3,12(0xc)
1c000d28:	29802077 	st.w	$r23,$r3,8(0x8)
1c000d2c:	29801078 	st.w	$r24,$r3,4(0x4)
1c000d30:	29800079 	st.w	$r25,$r3,0
/code/fpga/nscscc-team/software/perf/lib/puts.c:4
char c;
while((c=*s))
1c000d34:	28000097 	ld.b	$r23,$r4,0
1c000d38:	580042e0 	beq	$r23,$r0,64(0x40) # 1c000d78 <putstring+0x58>
1c000d3c:	00150098 	move	$r24,$r4
/code/fpga/nscscc-team/software/perf/lib/puts.c:6
{
 if(c == '\n') putchar('\r');
1c000d40:	02802819 	addi.w	$r25,$r0,10(0xa)
1c000d44:	50001400 	b	20(0x14) # 1c000d58 <putstring+0x38>
/code/fpga/nscscc-team/software/perf/lib/puts.c:7
 putchar(c);
1c000d48:	001502e4 	move	$r4,$r23
1c000d4c:	57ff57ff 	bl	-172(0xfffff54) # 1c000ca0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:4
while((c=*s))
1c000d50:	28000317 	ld.b	$r23,$r24,0
1c000d54:	580026e0 	beq	$r23,$r0,36(0x24) # 1c000d78 <putstring+0x58>
/code/fpga/nscscc-team/software/perf/lib/puts.c:8
 s++;
1c000d58:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/puts.c:6
 if(c == '\n') putchar('\r');
1c000d5c:	5fffeef9 	bne	$r23,$r25,-20(0x3ffec) # 1c000d48 <putstring+0x28>
/code/fpga/nscscc-team/software/perf/lib/puts.c:6 (discriminator 1)
1c000d60:	02803404 	addi.w	$r4,$r0,13(0xd)
1c000d64:	57ff3fff 	bl	-196(0xfffff3c) # 1c000ca0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:7 (discriminator 1)
 putchar(c);
1c000d68:	001502e4 	move	$r4,$r23
1c000d6c:	57ff37ff 	bl	-204(0xfffff34) # 1c000ca0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:4 (discriminator 1)
while((c=*s))
1c000d70:	28000317 	ld.b	$r23,$r24,0
1c000d74:	5fffe6e0 	bne	$r23,$r0,-28(0x3ffe4) # 1c000d58 <putstring+0x38>
/code/fpga/nscscc-team/software/perf/lib/puts.c:11
}
return 0;
}
1c000d78:	28803061 	ld.w	$r1,$r3,12(0xc)
1c000d7c:	28802077 	ld.w	$r23,$r3,8(0x8)
1c000d80:	28801078 	ld.w	$r24,$r3,4(0x4)
1c000d84:	28800079 	ld.w	$r25,$r3,0
1c000d88:	00150004 	move	$r4,$r0
1c000d8c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000d90:	4c000020 	jirl	$r0,$r1,0
1c000d94:	03400000 	andi	$r0,$r0,0x0
1c000d98:	03400000 	andi	$r0,$r0,0x0
1c000d9c:	03400000 	andi	$r0,$r0,0x0

1c000da0 <puts>:
puts():
/code/fpga/nscscc-team/software/perf/lib/puts.c:15


int puts(char *s)
{
1c000da0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000da4:	29803061 	st.w	$r1,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/puts.c:16
putstring(s);
1c000da8:	57ff7bff 	bl	-136(0xfffff78) # 1c000d20 <putstring>
/code/fpga/nscscc-team/software/perf/lib/puts.c:17
putchar('\r');
1c000dac:	02803404 	addi.w	$r4,$r0,13(0xd)
1c000db0:	57fef3ff 	bl	-272(0xffffef0) # 1c000ca0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:18
putchar('\n');
1c000db4:	02802804 	addi.w	$r4,$r0,10(0xa)
1c000db8:	57feebff 	bl	-280(0xffffee8) # 1c000ca0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:20
return 0;
}
1c000dbc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c000dc0:	00150004 	move	$r4,$r0
1c000dc4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000dc8:	4c000020 	jirl	$r0,$r1,0
1c000dcc:	03400000 	andi	$r0,$r0,0x0

1c000dd0 <printbase>:
printbase():
/code/fpga/nscscc-team/software/perf/lib/printbase.c:2
int printbase(long v,int w,int base,int sign)
{
1c000dd0:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c000dd4:	29816077 	st.w	$r23,$r3,88(0x58)
1c000dd8:	29817061 	st.w	$r1,$r3,92(0x5c)
1c000ddc:	29815078 	st.w	$r24,$r3,84(0x54)
1c000de0:	29814079 	st.w	$r25,$r3,80(0x50)
1c000de4:	00150097 	move	$r23,$r4
/code/fpga/nscscc-team/software/perf/lib/printbase.c:7
	int i,j;
	int c;
	char buf[64];
	unsigned long value;
	if(sign && v<0)
1c000de8:	580008e0 	beq	$r7,$r0,8(0x8) # 1c000df0 <printbase+0x20>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:7 (discriminator 1)
1c000dec:	6000a480 	blt	$r4,$r0,164(0xa4) # 1c000e90 <printbase+0xc0>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:14
	value = -v;
	putchar('-');
	}
	else value=v;

	for(i=0;value;i++)
1c000df0:	5800c2e0 	beq	$r23,$r0,192(0xc0) # 1c000eb0 <printbase+0xe0>
1c000df4:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c000df8:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c000dfc:	001131ce 	sub.w	$r14,$r14,$r12
1c000e00:	50000800 	b	8(0x8) # 1c000e08 <printbase+0x38>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:17
	{
	buf[i]=value%base;
	value=value/base;
1c000e04:	001501b7 	move	$r23,$r13
/code/fpga/nscscc-team/software/perf/lib/printbase.c:16 (discriminator 3)
	buf[i]=value%base;
1c000e08:	00219aed 	mod.wu	$r13,$r23,$r6
1c000e0c:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c000e14 <printbase+0x44>
1c000e10:	002a0007 	break	0x7
1c000e14:	2900018d 	st.b	$r13,$r12,0
/code/fpga/nscscc-team/software/perf/lib/printbase.c:17 (discriminator 3)
	value=value/base;
1c000e18:	001031d8 	add.w	$r24,$r14,$r12
1c000e1c:	00211aed 	div.wu	$r13,$r23,$r6
1c000e20:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c000e28 <printbase+0x58>
1c000e24:	002a0007 	break	0x7
1c000e28:	0280058c 	addi.w	$r12,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printbase.c:14 (discriminator 3)
	for(i=0;value;i++)
1c000e2c:	6fffdae6 	bgeu	$r23,$r6,-40(0x3ffd8) # 1c000e04 <printbase+0x34>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22
	}

#define max(a,b) (((a)>(b))?(a):(b))

	for(j=max(w,i);j>0;j--)
1c000e30:	600058b8 	blt	$r5,$r24,88(0x58) # 1c000e88 <printbase+0xb8>
1c000e34:	001500b7 	move	$r23,$r5
/code/fpga/nscscc-team/software/perf/lib/printbase.c:25
	{
		c=j>i?0:buf[j-1];
		putchar((c<=9)?c+'0':c-0xa+'a');
1c000e38:	02802419 	addi.w	$r25,$r0,9(0x9)
1c000e3c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printbase.c:24
		c=j>i?0:buf[j-1];
1c000e40:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c000e44:	00105d8c 	add.w	$r12,$r12,$r23
1c000e48:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c000e4c:	60001717 	blt	$r24,$r23,20(0x14) # 1c000e60 <printbase+0x90>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:24 (discriminator 1)
1c000e50:	283ffd8c 	ld.b	$r12,$r12,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/printbase.c:25 (discriminator 1)
		putchar((c<=9)?c+'0':c-0xa+'a');
1c000e54:	02815d84 	addi.w	$r4,$r12,87(0x57)
1c000e58:	60000b2c 	blt	$r25,$r12,8(0x8) # 1c000e60 <printbase+0x90>
1c000e5c:	0280c184 	addi.w	$r4,$r12,48(0x30)
1c000e60:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/printbase.c:25 (discriminator 4)
1c000e64:	57fe3fff 	bl	-452(0xffffe3c) # 1c000ca0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22 (discriminator 4)
	for(j=max(w,i);j>0;j--)
1c000e68:	5fffdae0 	bne	$r23,$r0,-40(0x3ffd8) # 1c000e40 <printbase+0x70>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:28
	}
	return 0;
}
1c000e6c:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c000e70:	28816077 	ld.w	$r23,$r3,88(0x58)
1c000e74:	28815078 	ld.w	$r24,$r3,84(0x54)
1c000e78:	28814079 	ld.w	$r25,$r3,80(0x50)
1c000e7c:	00150004 	move	$r4,$r0
1c000e80:	02818063 	addi.w	$r3,$r3,96(0x60)
1c000e84:	4c000020 	jirl	$r0,$r1,0
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c000e88:	00150305 	move	$r5,$r24
1c000e8c:	53ffabff 	b	-88(0xfffffa8) # 1c000e34 <printbase+0x64>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:10
	putchar('-');
1c000e90:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c000e94:	29803066 	st.w	$r6,$r3,12(0xc)
1c000e98:	29802065 	st.w	$r5,$r3,8(0x8)
1c000e9c:	57fe07ff 	bl	-508(0xffffe04) # 1c000ca0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:9
	value = -v;
1c000ea0:	00115c17 	sub.w	$r23,$r0,$r23
/code/fpga/nscscc-team/software/perf/lib/printbase.c:10
	putchar('-');
1c000ea4:	28802065 	ld.w	$r5,$r3,8(0x8)
1c000ea8:	28803066 	ld.w	$r6,$r3,12(0xc)
1c000eac:	53ff4bff 	b	-184(0xfffff48) # 1c000df4 <printbase+0x24>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c000eb0:	67ffbc05 	bge	$r0,$r5,-68(0x3ffbc) # 1c000e6c <printbase+0x9c>
1c000eb4:	00150018 	move	$r24,$r0
1c000eb8:	53ff7fff 	b	-132(0xfffff7c) # 1c000e34 <printbase+0x64>
1c000ebc:	03400000 	andi	$r0,$r0,0x0

1c000ec0 <get_count>:
get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:18
        );
    return  _contval;
}

unsigned long get_count()
{
1c000ec0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000ec4:	29803079 	st.w	$r25,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c000ec8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c000ecc:	28800324 	ld.w	$r4,$r25,0
/code/fpga/nscscc-team/software/perf/lib/time.c:20
    return  _get_count();
}
1c000ed0:	28803079 	ld.w	$r25,$r3,12(0xc)
1c000ed4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000ed8:	4c000020 	jirl	$r0,$r1,0
1c000edc:	03400000 	andi	$r0,$r0,0x0

1c000ee0 <_get_count>:
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:20
1c000ee0:	53ffe3ff 	b	-32(0xfffffe0) # 1c000ec0 <get_count>
1c000ee4:	03400000 	andi	$r0,$r0,0x0
1c000ee8:	03400000 	andi	$r0,$r0,0x0
1c000eec:	03400000 	andi	$r0,$r0,0x0

1c000ef0 <get_count_my>:
get_count_my():
/code/fpga/nscscc-team/software/perf/lib/time.c:25

unsigned long get_count_my()
{
    unsigned long n;
    asm volatile(
1c000ef0:	00006004 	rdtimel.w	$r4,$r0
/code/fpga/nscscc-team/software/perf/lib/time.c:30
        "rdcntvl.w %0\n\t"
        :"=r"(n)
        );
    return  n;
}
1c000ef4:	4c000020 	jirl	$r0,$r1,0
1c000ef8:	03400000 	andi	$r0,$r0,0x0
1c000efc:	03400000 	andi	$r0,$r0,0x0

1c000f00 <clock_gettime>:
clock_gettime():
/code/fpga/nscscc-team/software/perf/lib/time.c:33

unsigned long clock_gettime(int sel,struct timespec *tmp)
{
1c000f00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000f04:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c000f08:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c000f0c:	2880032f 	ld.w	$r15,$r25,0
clock_gettime():
/code/fpga/nscscc-team/software/perf/lib/time.c:36
    unsigned long n = 0;
    n = _get_count();
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c000f10:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c000f14:	001c35ed 	mul.w	$r13,$r15,$r13
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c000f18:	02819011 	addi.w	$r17,$r0,100(0x64)
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c000f1c:	1400030e 	lu12i.w	$r14,24(0x18)
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c000f20:	002145f0 	div.wu	$r16,$r15,$r17
1c000f24:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c000f2c <clock_gettime+0x2c>
1c000f28:	002a0007 	break	0x7
/code/fpga/nscscc-team/software/perf/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c000f2c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c000f30:	039a81ce 	ori	$r14,$r14,0x6a0
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c000f34:	0021b211 	mod.wu	$r17,$r16,$r12
1c000f38:	5c000980 	bne	$r12,$r0,8(0x8) # 1c000f40 <clock_gettime+0x40>
1c000f3c:	002a0007 	break	0x7
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c000f40:	002139f0 	div.wu	$r16,$r15,$r14
1c000f44:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c000f4c <clock_gettime+0x4c>
1c000f48:	002a0007 	break	0x7
1c000f4c:	0021b20e 	mod.wu	$r14,$r16,$r12
1c000f50:	5c000980 	bne	$r12,$r0,8(0x8) # 1c000f58 <clock_gettime+0x58>
1c000f54:	002a0007 	break	0x7
/code/fpga/nscscc-team/software/perf/lib/time.c:39
    tmp->tv_sec  = n/CPU_COUNT_PER_US/NSEC_PER_SEC;
1c000f58:	298000a0 	st.w	$r0,$r5,0
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c000f5c:	298030ae 	st.w	$r14,$r5,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c000f60:	298020b1 	st.w	$r17,$r5,8(0x8)
/code/fpga/nscscc-team/software/perf/lib/time.c:42
    //printf("clock ns=%d,sec=%d\n",tmp->tv_nsec,tmp->tv_sec);
    return 0;
}
1c000f64:	28803079 	ld.w	$r25,$r3,12(0xc)
1c000f68:	00150004 	move	$r4,$r0
/code/fpga/nscscc-team/software/perf/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c000f6c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c000f70:	5c000980 	bne	$r12,$r0,8(0x8) # 1c000f78 <clock_gettime+0x78>
1c000f74:	002a0007 	break	0x7
1c000f78:	298010ae 	st.w	$r14,$r5,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/time.c:42
}
1c000f7c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000f80:	4c000020 	jirl	$r0,$r1,0
1c000f84:	03400000 	andi	$r0,$r0,0x0
1c000f88:	03400000 	andi	$r0,$r0,0x0
1c000f8c:	03400000 	andi	$r0,$r0,0x0

1c000f90 <get_clock>:
get_clock():
/code/fpga/nscscc-team/software/perf/lib/time.c:42
1c000f90:	53ff33ff 	b	-208(0xfffff30) # 1c000ec0 <get_count>
1c000f94:	03400000 	andi	$r0,$r0,0x0
1c000f98:	03400000 	andi	$r0,$r0,0x0
1c000f9c:	03400000 	andi	$r0,$r0,0x0

1c000fa0 <get_ns>:
get_ns():
/code/fpga/nscscc-team/software/perf/lib/time.c:52
    n=_get_count();
    return n;
}

unsigned long get_ns(void)
{
1c000fa0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000fa4:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c000fa8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c000fac:	28800324 	ld.w	$r4,$r25,0
get_ns():
/code/fpga/nscscc-team/software/perf/lib/time.c:55
    unsigned long n=0;
    n = _get_count();
    n=n*(NSEC_PER_USEC/CPU_COUNT_PER_US);
1c000fb0:	0280280c 	addi.w	$r12,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/time.c:57
    return n;
}
1c000fb4:	28803079 	ld.w	$r25,$r3,12(0xc)
1c000fb8:	001c3084 	mul.w	$r4,$r4,$r12
1c000fbc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000fc0:	4c000020 	jirl	$r0,$r1,0
1c000fc4:	03400000 	andi	$r0,$r0,0x0
1c000fc8:	03400000 	andi	$r0,$r0,0x0
1c000fcc:	03400000 	andi	$r0,$r0,0x0

1c000fd0 <get_us>:
get_us():
/code/fpga/nscscc-team/software/perf/lib/time.c:61


unsigned long get_us(void)
{
1c000fd0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000fd4:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c000fd8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c000fdc:	28800324 	ld.w	$r4,$r25,0
get_us():
/code/fpga/nscscc-team/software/perf/lib/time.c:64
    unsigned long n=0;
    n = _get_count();
    n=n/CPU_COUNT_PER_US;
1c000fe0:	0281900c 	addi.w	$r12,$r0,100(0x64)
/code/fpga/nscscc-team/software/perf/lib/time.c:66
    return n;
}
1c000fe4:	28803079 	ld.w	$r25,$r3,12(0xc)
1c000fe8:	0021308d 	div.wu	$r13,$r4,$r12
1c000fec:	5c000980 	bne	$r12,$r0,8(0x8) # 1c000ff4 <get_us+0x24>
1c000ff0:	002a0007 	break	0x7
1c000ff4:	001501a4 	move	$r4,$r13
1c000ff8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000ffc:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .data:

1c080000 <a_ref-0x9c>:
1c080000:	656c6573 	bge	$r11,$r19,93284(0x16c64) # 1c096c64 <_end+0x1548c>
1c080004:	73207463 	0x73207463
1c080008:	2074726f 	ll.w	$r15,$r19,29808(0x7470)
1c08000c:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c080010:	67656220 	bge	$r17,$r0,-39584(0x36560) # 1c076570 <_data_lma+0x75570>
1c080014:	002e6e69 	0x002e6e69
1c080018:	656c6573 	bge	$r11,$r19,93284(0x16c64) # 1c096c7c <_end+0x154a4>
1c08001c:	73207463 	0x73207463
1c080020:	2074726f 	ll.w	$r15,$r19,29808(0x7470)
1c080024:	53534150 	b	88298304(0x5435340) # 214b5364 <_stack+0x53b5368>
1c080028:	00000021 	0x00000021
1c08002c:	656c6573 	bge	$r11,$r19,93284(0x16c64) # 1c096c90 <_end+0x154b8>
1c080030:	73207463 	0x73207463
1c080034:	2074726f 	ll.w	$r15,$r19,29808(0x7470)
1c080038:	4f525245 	jirl	$r5,$r18,-44464(0x35250)
1c08003c:	21212152 	sc.w	$r18,$r10,8480(0x2120)
1c080040:	00000000 	0x00000000
1c080044:	656c6573 	bge	$r11,$r19,93284(0x16c64) # 1c096ca8 <_end+0x154d0>
1c080048:	73207463 	0x73207463
1c08004c:	3a74726f 	0x3a74726f
1c080050:	746f5420 	0x746f5420
1c080054:	43206c61 	beqz	$r3,467052(0x7206c) # 1c0f20c0 <_end+0x708e8>
1c080058:	746e756f 	0x746e756f
1c08005c:	436f5328 	beqz	$r25,2322256(0x236f50) # 1c2b6fac <_stack+0x1b6fb0>
1c080060:	756f6320 	0x756f6320
1c080064:	2029746e 	ll.w	$r14,$r3,10612(0x2974)
1c080068:	7830203d 	0x7830203d
1c08006c:	000a7825 	0x000a7825
1c080070:	656c6573 	bge	$r11,$r19,93284(0x16c64) # 1c096cd4 <_end+0x154fc>
1c080074:	73207463 	0x73207463
1c080078:	3a74726f 	0x3a74726f
1c08007c:	746f5420 	0x746f5420
1c080080:	43206c61 	beqz	$r3,467052(0x7206c) # 1c0f20ec <_end+0x70914>
1c080084:	746e756f 	0x746e756f
1c080088:	55504328 	bl	-56537024(0xca15040) # 18a950c8 <__stack_size+0x18a850c8>
1c08008c:	756f6320 	0x756f6320
1c080090:	2029746e 	ll.w	$r14,$r3,10612(0x2974)
1c080094:	7830203d 	0x7830203d
1c080098:	000a7825 	0x000a7825

1c08009c <a_ref>:
1c08009c:	00000014 	0x00000014
1c0800a0:	000000ab 	0x000000ab
1c0800a4:	0000014b 	0x0000014b
1c0800a8:	00000257 	0x00000257
1c0800ac:	000002e5 	0x000002e5
1c0800b0:	000002f8 	0x000002f8
1c0800b4:	0000045e 	0x0000045e
1c0800b8:	000005da 	0x000005da
1c0800bc:	000005f4 	0x000005f4
1c0800c0:	0000062f 	0x0000062f
1c0800c4:	00000736 	0x00000736
1c0800c8:	000007b8 	0x000007b8
1c0800cc:	00000810 	0x00000810
1c0800d0:	0000081f 	0x0000081f
1c0800d4:	00000859 	0x00000859
1c0800d8:	000008a4 	0x000008a4
1c0800dc:	000008a5 	0x000008a5
1c0800e0:	0000096c 	0x0000096c
1c0800e4:	00000a16 	0x00000a16
1c0800e8:	00000afb 	0x00000afb
1c0800ec:	00000b21 	0x00000b21
1c0800f0:	00000bf8 	0x00000bf8
1c0800f4:	00000c49 	0x00000c49
1c0800f8:	00000cc6 	0x00000cc6
1c0800fc:	00000ce5 	0x00000ce5
1c080100:	00000e1f 	0x00000e1f
1c080104:	00000e75 	0x00000e75
1c080108:	00000eae 	0x00000eae
1c08010c:	00001079 	clo.w	$r25,$r3
1c080110:	000010d0 	clo.w	$r16,$r6
1c080114:	000010f8 	clo.w	$r24,$r7
1c080118:	00001254 	clo.w	$r20,$r18
1c08011c:	0000135f 	clo.w	$r31,$r26
1c080120:	00001473 	clz.w	$r19,$r3
1c080124:	000014fd 	clz.w	$r29,$r7
1c080128:	000015f4 	clz.w	$r20,$r15
1c08012c:	000015f8 	clz.w	$r24,$r15
1c080130:	00001646 	clz.w	$r6,$r18
1c080134:	000017b7 	clz.w	$r23,$r29
1c080138:	000017c4 	clz.w	$r4,$r30
1c08013c:	000017da 	clz.w	$r26,$r30
1c080140:	00001824 	cto.w	$r4,$r1
1c080144:	00001863 	cto.w	$r3,$r3
1c080148:	00001b60 	cto.w	$r0,$r27
1c08014c:	00001cd7 	ctz.w	$r23,$r6
1c080150:	00001daf 	ctz.w	$r15,$r13
1c080154:	00001dca 	ctz.w	$r10,$r14
1c080158:	00001e1e 	ctz.w	$r30,$r16
1c08015c:	00001e4f 	ctz.w	$r15,$r18
1c080160:	000020ad 	clo.d	$r13,$r5
1c080164:	000020fe 	clo.d	$r30,$r7
1c080168:	00002237 	clo.d	$r23,$r17
1c08016c:	000022b1 	clo.d	$r17,$r21
1c080170:	00002314 	clo.d	$r20,$r24
1c080174:	000024be 	clz.d	$r30,$r5
1c080178:	000024ca 	clz.d	$r10,$r6
1c08017c:	00002550 	clz.d	$r16,$r10
1c080180:	00002560 	clz.d	$r0,$r11
1c080184:	00002610 	clz.d	$r16,$r16
1c080188:	000026a7 	clz.d	$r7,$r21
1c08018c:	0000273a 	clz.d	$r26,$r25
1c080190:	0000274c 	clz.d	$r12,$r26
1c080194:	00002985 	cto.d	$r5,$r12
1c080198:	00002986 	cto.d	$r6,$r12
1c08019c:	0000299f 	cto.d	$r31,$r12
1c0801a0:	00002a0d 	cto.d	$r13,$r16
1c0801a4:	00002b87 	cto.d	$r7,$r28
1c0801a8:	00002bcd 	cto.d	$r13,$r30
1c0801ac:	00002c57 	ctz.d	$r23,$r2
1c0801b0:	00002c8e 	ctz.d	$r14,$r4
1c0801b4:	00002d18 	ctz.d	$r24,$r8
1c0801b8:	00002e0f 	ctz.d	$r15,$r16
1c0801bc:	00002f2a 	ctz.d	$r10,$r25
1c0801c0:	00002f69 	ctz.d	$r9,$r27
1c0801c4:	00002f79 	ctz.d	$r25,$r27
1c0801c8:	00002fb8 	ctz.d	$r24,$r29
1c0801cc:	00003197 	revb.2h	$r23,$r12
1c0801d0:	00003280 	revb.2h	$r0,$r20
1c0801d4:	0000339a 	revb.2h	$r26,$r28
1c0801d8:	00003440 	revb.4h	$r0,$r2
1c0801dc:	0000354f 	revb.4h	$r15,$r10
1c0801e0:	000035a9 	revb.4h	$r9,$r13
1c0801e4:	000035b9 	revb.4h	$r25,$r13
1c0801e8:	000036e1 	revb.4h	$r1,$r23
1c0801ec:	0000389c 	revb.2w	$r28,$r4
1c0801f0:	000038ed 	revb.2w	$r13,$r7
1c0801f4:	000038f4 	revb.2w	$r20,$r7
1c0801f8:	0000399c 	revb.2w	$r28,$r12
1c0801fc:	000039e1 	revb.2w	$r1,$r15
1c080200:	000039ec 	revb.2w	$r12,$r15
1c080204:	00003a01 	revb.2w	$r1,$r16
1c080208:	00003b73 	revb.2w	$r19,$r27
1c08020c:	00003c03 	revb.d	$r3,$r0
1c080210:	00003d22 	revb.d	$r2,$r9
1c080214:	00003d80 	revb.d	$r0,$r12
1c080218:	000040f0 	revh.2w	$r16,$r7
1c08021c:	0000418d 	revh.2w	$r13,$r12
1c080220:	000041ac 	revh.2w	$r12,$r13
1c080224:	000041b2 	revh.2w	$r18,$r13
1c080228:	00004220 	revh.2w	$r0,$r17
1c08022c:	000043a7 	revh.2w	$r7,$r29
1c080230:	000043c8 	revh.2w	$r8,$r30
1c080234:	0000441a 	revh.d	$r26,$r0
1c080238:	0000445a 	revh.d	$r26,$r2
1c08023c:	000044ad 	revh.d	$r13,$r5
1c080240:	000044b6 	revh.d	$r22,$r5
1c080244:	000044b7 	revh.d	$r23,$r5
1c080248:	000044e3 	revh.d	$r3,$r7
1c08024c:	000044f8 	revh.d	$r24,$r7
1c080250:	00004611 	revh.d	$r17,$r16
1c080254:	0000469d 	revh.d	$r29,$r20
1c080258:	00004723 	revh.d	$r3,$r25
1c08025c:	0000475a 	revh.d	$r26,$r26
1c080260:	0000479b 	revh.d	$r27,$r28
1c080264:	00004882 	bitrev.4b	$r2,$r4
1c080268:	000048cd 	bitrev.4b	$r13,$r6
1c08026c:	0000498a 	bitrev.4b	$r10,$r12
1c080270:	00004998 	bitrev.4b	$r24,$r12
1c080274:	00004a8e 	bitrev.4b	$r14,$r20
1c080278:	00004c07 	bitrev.8b	$r7,$r0
1c08027c:	00004c2b 	bitrev.8b	$r11,$r1
1c080280:	00004c6f 	bitrev.8b	$r15,$r3
1c080284:	00004ea7 	bitrev.8b	$r7,$r21
1c080288:	00004f93 	bitrev.8b	$r19,$r28
1c08028c:	00004fb2 	bitrev.8b	$r18,$r29
1c080290:	0000508d 	bitrev.w	$r13,$r4
1c080294:	000050b6 	bitrev.w	$r22,$r5
1c080298:	000050ff 	bitrev.w	$r31,$r7
1c08029c:	0000511a 	bitrev.w	$r26,$r8
1c0802a0:	00005130 	bitrev.w	$r16,$r9
1c0802a4:	000051fd 	bitrev.w	$r29,$r15
1c0802a8:	0000532f 	bitrev.w	$r15,$r25
1c0802ac:	00005493 	bitrev.d	$r19,$r4
1c0802b0:	000054b6 	bitrev.d	$r22,$r5
1c0802b4:	00005792 	bitrev.d	$r18,$r28
1c0802b8:	000058c7 	ext.w.h	$r7,$r6
1c0802bc:	00005989 	ext.w.h	$r9,$r12
1c0802c0:	00005ae1 	ext.w.h	$r1,$r23
1c0802c4:	00005b3d 	ext.w.h	$r29,$r25
1c0802c8:	00005b9a 	ext.w.h	$r26,$r28
1c0802cc:	00005cdc 	ext.w.b	$r28,$r6
1c0802d0:	00005ce6 	ext.w.b	$r6,$r7
1c0802d4:	00005cf0 	ext.w.b	$r16,$r7
1c0802d8:	00005e2f 	ext.w.b	$r15,$r17
1c0802dc:	00005e84 	ext.w.b	$r4,$r20
1c0802e0:	00005eac 	ext.w.b	$r12,$r21
1c0802e4:	00005ef0 	ext.w.b	$r16,$r23
1c0802e8:	00005f16 	ext.w.b	$r22,$r24
1c0802ec:	00005f33 	ext.w.b	$r19,$r25
1c0802f0:	00005f36 	ext.w.b	$r22,$r25
1c0802f4:	0000618b 	rdtimel.w	$r11,$r12
1c0802f8:	000062ba 	rdtimel.w	$r26,$r21
1c0802fc:	000062f3 	rdtimel.w	$r19,$r23
1c080300:	00006302 	rdtimel.w	$r2,$r24
1c080304:	00006372 	rdtimel.w	$r18,$r27
1c080308:	0000643d 	rdtimeh.w	$r29,$r1
1c08030c:	000064b4 	rdtimeh.w	$r20,$r5
1c080310:	00006537 	rdtimeh.w	$r23,$r9
1c080314:	00006594 	rdtimeh.w	$r20,$r12
1c080318:	0000659e 	rdtimeh.w	$r30,$r12
1c08031c:	00006730 	rdtimeh.w	$r16,$r25
1c080320:	000067e7 	rdtimeh.w	$r7,$r31
1c080324:	0000685a 	rdtime.d	$r26,$r2
1c080328:	00006935 	rdtime.d	$r21,$r9
1c08032c:	00006944 	rdtime.d	$r4,$r10
1c080330:	0000695e 	rdtime.d	$r30,$r10
1c080334:	000069ab 	rdtime.d	$r11,$r13
1c080338:	00006a52 	rdtime.d	$r18,$r18
1c08033c:	00006aad 	rdtime.d	$r13,$r21
1c080340:	00006c45 	cpucfg	$r5,$r2
1c080344:	00006d30 	cpucfg	$r16,$r9
1c080348:	00006d69 	cpucfg	$r9,$r11
1c08034c:	00006ead 	cpucfg	$r13,$r21
1c080350:	00006ee0 	cpucfg	$r0,$r23
1c080354:	00006f32 	cpucfg	$r18,$r25
1c080358:	00006f95 	cpucfg	$r21,$r28
1c08035c:	0000701d 	0x0000701d
1c080360:	00007065 	0x00007065
1c080364:	000070c1 	0x000070c1
1c080368:	00007173 	0x00007173
1c08036c:	000071a1 	0x000071a1
1c080370:	000071bb 	0x000071bb
1c080374:	000071e6 	0x000071e6
1c080378:	0000725c 	0x0000725c
1c08037c:	0000732c 	0x0000732c
1c080380:	00007366 	0x00007366
1c080384:	0000739e 	0x0000739e
1c080388:	000074d3 	0x000074d3
1c08038c:	00007620 	0x00007620
1c080390:	00007647 	0x00007647
1c080394:	0000783c 	0x0000783c
1c080398:	000078c2 	0x000078c2
1c08039c:	000079e1 	0x000079e1
1c0803a0:	000079f6 	0x000079f6
1c0803a4:	00007a46 	0x00007a46
1c0803a8:	00007a8e 	0x00007a8e
1c0803ac:	00007af5 	0x00007af5
1c0803b0:	00007f27 	0x00007f27
1c0803b4:	00007f93 	0x00007f93
1c0803b8:	00007ff2 	0x00007ff2
1c0803bc:	1c000c80 	pcaddu12i	$r0,100(0x64)
1c0803c0:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0803c4:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0803c8:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0803cc:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0803d0:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0803d4:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0803d8:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0803dc:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0803e0:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0803e4:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0803e8:	1c000b58 	pcaddu12i	$r24,90(0x5a)
1c0803ec:	1c000b64 	pcaddu12i	$r4,91(0x5b)
1c0803f0:	1c000b64 	pcaddu12i	$r4,91(0x5b)
1c0803f4:	1c000b64 	pcaddu12i	$r4,91(0x5b)
1c0803f8:	1c000b64 	pcaddu12i	$r4,91(0x5b)
1c0803fc:	1c000b64 	pcaddu12i	$r4,91(0x5b)
1c080400:	1c000b64 	pcaddu12i	$r4,91(0x5b)
1c080404:	1c000b64 	pcaddu12i	$r4,91(0x5b)
1c080408:	1c000b64 	pcaddu12i	$r4,91(0x5b)
1c08040c:	1c000b64 	pcaddu12i	$r4,91(0x5b)
1c080410:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080414:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080418:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c08041c:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080420:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080424:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080428:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c08042c:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080430:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080434:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080438:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c08043c:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080440:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080444:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080448:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c08044c:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080450:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080454:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080458:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c08045c:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080460:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080464:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080468:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c08046c:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080470:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080474:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080478:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c08047c:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080480:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080484:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080488:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c08048c:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080490:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080494:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080498:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c08049c:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0804a0:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0804a4:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0804a8:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0804ac:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0804b0:	1c000ba4 	pcaddu12i	$r4,93(0x5d)
1c0804b4:	1c000bc0 	pcaddu12i	$r0,94(0x5e)
1c0804b8:	1c000bd4 	pcaddu12i	$r20,94(0x5e)
1c0804bc:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0804c0:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0804c4:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0804c8:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0804cc:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0804d0:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0804d4:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0804d8:	1c000bf0 	pcaddu12i	$r16,95(0x5f)
1c0804dc:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0804e0:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0804e4:	1c000c10 	pcaddu12i	$r16,96(0x60)
1c0804e8:	1c000c30 	pcaddu12i	$r16,97(0x61)
1c0804ec:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0804f0:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0804f4:	1c000c50 	pcaddu12i	$r16,98(0x62)
1c0804f8:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c0804fc:	1c000c64 	pcaddu12i	$r4,99(0x63)
1c080500:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080504:	1c000c90 	pcaddu12i	$r16,100(0x64)
1c080508:	1c000c30 	pcaddu12i	$r16,97(0x61)

1c08050c <rodata_end>:
rodata_end():
1c08050c:	00000736 	0x00000736
1c080510:	00002237 	clo.d	$r23,$r17
1c080514:	000008a4 	0x000008a4
1c080518:	00007f27 	0x00007f27
1c08051c:	00000257 	0x00000257
1c080520:	00005e2f 	ext.w.b	$r15,$r17
1c080524:	000038ed 	revb.2w	$r13,$r7
1c080528:	00002560 	clz.d	$r0,$r11
1c08052c:	00007ff2 	0x00007ff2
1c080530:	00000e1f 	0x00000e1f
1c080534:	0000354f 	revb.4h	$r15,$r10
1c080538:	000015f8 	clz.w	$r24,$r15
1c08053c:	00000cc6 	0x00000cc6
1c080540:	0000618b 	rdtimel.w	$r11,$r12
1c080544:	0000096c 	0x0000096c
1c080548:	00005b9a 	ext.w.h	$r26,$r28
1c08054c:	00007a46 	0x00007a46
1c080550:	000035a9 	revb.4h	$r9,$r13
1c080554:	0000273a 	clz.d	$r26,$r25
1c080558:	000010f8 	clo.w	$r24,$r7
1c08055c:	00005cf0 	ext.w.b	$r16,$r7
1c080560:	00005493 	bitrev.d	$r19,$r4
1c080564:	00002610 	clz.d	$r16,$r16
1c080568:	0000045e 	0x0000045e
1c08056c:	000058c7 	ext.w.h	$r7,$r6
1c080570:	000024ca 	clz.d	$r10,$r6
1c080574:	00006a52 	rdtime.d	$r18,$r18
1c080578:	00006ee0 	cpucfg	$r0,$r23
1c08057c:	000002e5 	0x000002e5
1c080580:	00002550 	clz.d	$r16,$r10
1c080584:	00005eac 	ext.w.b	$r12,$r21
1c080588:	00001079 	clo.w	$r25,$r3
1c08058c:	0000479b 	revh.d	$r27,$r28
1c080590:	00006944 	rdtime.d	$r4,$r10
1c080594:	0000475a 	revh.d	$r26,$r26
1c080598:	00001e4f 	ctz.w	$r15,$r18
1c08059c:	000017c4 	clz.w	$r4,$r30
1c0805a0:	0000725c 	0x0000725c
1c0805a4:	000043a7 	revh.2w	$r7,$r29
1c0805a8:	000044b7 	revh.d	$r23,$r5
1c0805ac:	00001b60 	cto.w	$r0,$r27
1c0805b0:	00000bf8 	0x00000bf8
1c0805b4:	0000732c 	0x0000732c
1c0805b8:	000020ad 	clo.d	$r13,$r5
1c0805bc:	000071a1 	0x000071a1
1c0805c0:	0000399c 	revb.2w	$r28,$r12
1c0805c4:	0000511a 	bitrev.w	$r26,$r8
1c0805c8:	00004f93 	bitrev.8b	$r19,$r28
1c0805cc:	000079f6 	0x000079f6
1c0805d0:	000048cd 	bitrev.4b	$r13,$r6
1c0805d4:	0000299f 	cto.d	$r31,$r12
1c0805d8:	00002f79 	ctz.d	$r25,$r27
1c0805dc:	00006537 	rdtimeh.w	$r23,$r9
1c0805e0:	000039e1 	revb.2w	$r1,$r15
1c0805e4:	000002f8 	0x000002f8
1c0805e8:	00001863 	cto.w	$r3,$r3
1c0805ec:	000067e7 	rdtimeh.w	$r7,$r31
1c0805f0:	000014fd 	clz.w	$r29,$r7
1c0805f4:	00003b73 	revb.2w	$r19,$r27
1c0805f8:	00002b87 	cto.d	$r7,$r28
1c0805fc:	00007647 	0x00007647
1c080600:	00005ce6 	ext.w.b	$r6,$r7
1c080604:	00002985 	cto.d	$r5,$r12
1c080608:	000005da 	0x000005da
1c08060c:	00000a16 	0x00000a16
1c080610:	00006d30 	cpucfg	$r16,$r9
1c080614:	00001254 	clo.w	$r20,$r18
1c080618:	0000695e 	rdtime.d	$r30,$r10
1c08061c:	00006372 	rdtimel.w	$r18,$r27
1c080620:	00001824 	cto.w	$r4,$r1
1c080624:	00000e75 	0x00000e75
1c080628:	00007f93 	0x00007f93
1c08062c:	000044e3 	revh.d	$r3,$r7
1c080630:	00004fb2 	bitrev.8b	$r18,$r29
1c080634:	00000b21 	0x00000b21
1c080638:	000062ba 	rdtimel.w	$r26,$r21
1c08063c:	00005ef0 	ext.w.b	$r16,$r23
1c080640:	000024be 	clz.d	$r30,$r5
1c080644:	00005b3d 	ext.w.h	$r29,$r25
1c080648:	00004882 	bitrev.4b	$r2,$r4
1c08064c:	0000701d 	0x0000701d
1c080650:	00001e1e 	ctz.w	$r30,$r16
1c080654:	000064b4 	rdtimeh.w	$r20,$r5
1c080658:	000005f4 	0x000005f4
1c08065c:	00000859 	0x00000859
1c080660:	00002c57 	ctz.d	$r23,$r2
1c080664:	000050ff 	bitrev.w	$r31,$r7
1c080668:	00003440 	revb.4h	$r0,$r2
1c08066c:	000074d3 	0x000074d3
1c080670:	00001daf 	ctz.w	$r15,$r13
1c080674:	0000739e 	0x0000739e
1c080678:	00005cdc 	ext.w.b	$r28,$r6
1c08067c:	0000498a 	bitrev.4b	$r10,$r12
1c080680:	000050b6 	bitrev.w	$r22,$r5
1c080684:	00003a01 	revb.2w	$r1,$r16
1c080688:	0000508d 	bitrev.w	$r13,$r4
1c08068c:	00001646 	clz.w	$r6,$r18
1c080690:	00002314 	clo.d	$r20,$r24
1c080694:	00002d18 	ctz.d	$r24,$r8
1c080698:	000041ac 	revh.2w	$r12,$r13
1c08069c:	000038f4 	revb.2w	$r20,$r7
1c0806a0:	000078c2 	0x000078c2
1c0806a4:	00005f36 	ext.w.b	$r22,$r25
1c0806a8:	0000274c 	clz.d	$r12,$r26
1c0806ac:	00003197 	revb.2h	$r23,$r12
1c0806b0:	00007620 	0x00007620
1c0806b4:	00006935 	rdtime.d	$r21,$r9
1c0806b8:	00005ae1 	ext.w.h	$r1,$r23
1c0806bc:	00003d80 	revb.d	$r0,$r12
1c0806c0:	000043c8 	revh.2w	$r8,$r30
1c0806c4:	0000445a 	revh.d	$r26,$r2
1c0806c8:	00004ea7 	bitrev.8b	$r7,$r21
1c0806cc:	000010d0 	clo.w	$r16,$r6
1c0806d0:	00000014 	0x00000014
1c0806d4:	0000469d 	revh.d	$r29,$r20
1c0806d8:	000040f0 	revh.2w	$r16,$r7
1c0806dc:	00000ce5 	0x00000ce5
1c0806e0:	00006730 	rdtimeh.w	$r16,$r25
1c0806e4:	00002a0d 	cto.d	$r13,$r16
1c0806e8:	00001473 	clz.w	$r19,$r3
1c0806ec:	00003d22 	revb.d	$r2,$r9
1c0806f0:	000039ec 	revb.2w	$r12,$r15
1c0806f4:	000079e1 	0x000079e1
1c0806f8:	00007065 	0x00007065
1c0806fc:	00003c03 	revb.d	$r3,$r0
1c080700:	00002f2a 	ctz.d	$r10,$r25
1c080704:	00002bcd 	cto.d	$r13,$r30
1c080708:	00004c07 	bitrev.8b	$r7,$r0
1c08070c:	00002fb8 	ctz.d	$r24,$r29
1c080710:	00001dca 	ctz.w	$r10,$r14
1c080714:	00006ead 	cpucfg	$r13,$r21
1c080718:	000044f8 	revh.d	$r24,$r7
1c08071c:	00004c6f 	bitrev.8b	$r15,$r3
1c080720:	00004723 	revh.d	$r3,$r25
1c080724:	000008a5 	0x000008a5
1c080728:	000041b2 	revh.2w	$r18,$r13
1c08072c:	00004611 	revh.d	$r17,$r16
1c080730:	00004998 	bitrev.4b	$r24,$r12
1c080734:	00005e84 	ext.w.b	$r4,$r20
1c080738:	000071bb 	0x000071bb
1c08073c:	00004a8e 	bitrev.4b	$r14,$r20
1c080740:	00000c49 	0x00000c49
1c080744:	00005792 	bitrev.d	$r18,$r28
1c080748:	00000eae 	0x00000eae
1c08074c:	0000014b 	0x0000014b
1c080750:	000022b1 	clo.d	$r17,$r21
1c080754:	000069ab 	rdtime.d	$r11,$r13
1c080758:	000035b9 	revb.4h	$r25,$r13
1c08075c:	0000389c 	revb.2w	$r28,$r4
1c080760:	000054b6 	bitrev.d	$r22,$r5
1c080764:	000015f4 	clz.w	$r20,$r15
1c080768:	00007366 	0x00007366
1c08076c:	00000afb 	0x00000afb
1c080770:	000036e1 	revb.4h	$r1,$r23
1c080774:	00002e0f 	ctz.d	$r15,$r16
1c080778:	00007a8e 	0x00007a8e
1c08077c:	000020fe 	clo.d	$r30,$r7
1c080780:	0000532f 	bitrev.w	$r15,$r25
1c080784:	000000ab 	0x000000ab
1c080788:	00002c8e 	ctz.d	$r14,$r4
1c08078c:	00006594 	rdtimeh.w	$r20,$r12
1c080790:	0000135f 	clo.w	$r31,$r26
1c080794:	00007af5 	0x00007af5
1c080798:	000026a7 	clz.d	$r7,$r21
1c08079c:	00006c45 	cpucfg	$r5,$r2
1c0807a0:	0000659e 	rdtimeh.w	$r30,$r12
1c0807a4:	00002986 	cto.d	$r6,$r12
1c0807a8:	0000783c 	0x0000783c
1c0807ac:	0000081f 	0x0000081f
1c0807b0:	00006f32 	cpucfg	$r18,$r25
1c0807b4:	0000685a 	rdtime.d	$r26,$r2
1c0807b8:	000017da 	clz.w	$r26,$r30
1c0807bc:	000044b6 	revh.d	$r22,$r5
1c0807c0:	00005f16 	ext.w.b	$r22,$r24
1c0807c4:	00007173 	0x00007173
1c0807c8:	000007b8 	0x000007b8
1c0807cc:	000062f3 	rdtimel.w	$r19,$r23
1c0807d0:	000071e6 	0x000071e6
1c0807d4:	0000062f 	0x0000062f
1c0807d8:	00003280 	revb.2h	$r0,$r20
1c0807dc:	000017b7 	clz.w	$r23,$r29
1c0807e0:	000044ad 	revh.d	$r13,$r5
1c0807e4:	000070c1 	0x000070c1
1c0807e8:	0000339a 	revb.2h	$r26,$r28
1c0807ec:	00006d69 	cpucfg	$r9,$r11
1c0807f0:	00005130 	bitrev.w	$r16,$r9
1c0807f4:	00006aad 	rdtime.d	$r13,$r21
1c0807f8:	00004c2b 	bitrev.8b	$r11,$r1
1c0807fc:	00006302 	rdtimel.w	$r2,$r24
1c080800:	00005989 	ext.w.h	$r9,$r12
1c080804:	00006f95 	cpucfg	$r21,$r28
1c080808:	00005f33 	ext.w.b	$r19,$r25
1c08080c:	000051fd 	bitrev.w	$r29,$r15
1c080810:	0000643d 	rdtimeh.w	$r29,$r1
1c080814:	00002f69 	ctz.d	$r9,$r27
1c080818:	0000441a 	revh.d	$r26,$r0
1c08081c:	00004220 	revh.2w	$r0,$r17
1c080820:	00000810 	0x00000810
1c080824:	00001cd7 	ctz.w	$r23,$r6
1c080828:	0000418d 	revh.2w	$r13,$r12
1c08082c:	00000000 	0x00000000

Disassembly of section .got:

1c080830 <_GLOBAL_OFFSET_TABLE_>:
1c080830:	00000000 	0x00000000
1c080834:	1c080838 	pcaddu12i	$r24,16449(0x4041)

Disassembly of section .bss:

1c080838 <result>:
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
  18:	000a6000 	0x000a6000
  1c:	00023c1c 	0x00023c1c
  20:	00000000 	0x00000000
  24:	03040200 	lu52i.d	$r0,$r16,256(0x100)
  28:	000b0704 	0x000b0704
  2c:	04030000 	csrrd	$r0,0xc0
  30:	00000607 	0x00000607
  34:	00e50400 	bstrpick.d	$r0,$r0,0x25,0x1
  38:	01010000 	fadd.d	$f0,$f0,$f0
  3c:	00022805 	0x00022805
  40:	000a6000 	0x000a6000
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
  c4:	000b0c01 	0x000b0c01
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
 108:	000bbc0c 	0x000bbc0c
 10c:	0002471c 	0x0002471c
 110:	00012000 	asrtle.d	$r0,$r8
 114:	56010d00 	bl	67240204(0x402010c) # 4020220 <__stack_size+0x4010220>
 118:	010d3201 	fmaxa.d	$f1,$f16,$f12
 11c:	00300157 	0x00300157
 120:	000bd00e 	0x000bd00e
 124:	0002531c 	0x0002531c
 128:	0bec0c00 	0x0bec0c00
 12c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 130:	01410000 	0x01410000
 134:	010d0000 	fmaxa.d	$f0,$f0,$f0
 138:	0d3a0156 	0x0d3a0156
 13c:	31015701 	0x31015701
 140:	0c080c00 	0x0c080c00
 144:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 148:	01590000 	0x01590000
 14c:	010d0000 	fmaxa.d	$f0,$f0,$f0
 150:	0d3a0156 	0x0d3a0156
 154:	30015701 	0x30015701
 158:	0c280c00 	fcmp.cne.d	$fcc0,$f0,$f3
 15c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 160:	01720000 	0x01720000
 164:	010d0000 	fmaxa.d	$f0,$f0,$f0
 168:	008b0256 	bstrins.d	$r22,$r18,0xb,0x0
 16c:	0157010d 	0x0157010d
 170:	480c0030 	bceqz	$fcc1,-4191232(0x400c00) # ffc00d70 <_stack+0xe3b00d74>
 174:	471c000c 	bnez	$r0,3349504(0x331c00) # 331d74 <__stack_size+0x321d74>
 178:	8a000002 	0x8a000002
 17c:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 180:	40015601 	beqz	$r16,262484(0x40154) # 402d4 <__stack_size+0x302d4>
 184:	0157010d 	0x0157010d
 188:	600e0030 	blt	$r1,$r16,3584(0xe00) # f88 <__stack_size-0xf078>
 18c:	5f1c000c 	bne	$r0,$r12,-58368(0x31c00) # ffff1d8c <_stack+0xe3ef1d90>
 190:	0c000002 	0x0c000002
 194:	1c000c7c 	pcaddu12i	$r28,99(0x63)
 198:	00000247 	0x00000247
 19c:	000001ab 	0x000001ab
 1a0:	0156010d 	0x0156010d
 1a4:	57010d3a 	bl	82510092(0x4eb010c) # 4eb02b0 <__stack_size+0x4ea02b0>
 1a8:	0c003001 	0x0c003001
 1ac:	1c000c8c 	pcaddu12i	$r12,100(0x64)
 1b0:	00000253 	0x00000253
 1b4:	000001bf 	0x000001bf
 1b8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1bc:	0f002508 	0x0f002508
 1c0:	1c000c98 	pcaddu12i	$r24,100(0x64)
 1c4:	00000253 	0x00000253
 1c8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1cc:	00002508 	clz.d	$r8,$r8
 1d0:	00000010 	0x00000010
 1d4:	00fd0b00 	bstrpick.d	$r0,$r24,0x3d,0x2
 1d8:	19010000 	pcaddi	$r0,-522240(0x80800)
 1dc:	00022805 	0x00022805
 1e0:	0001e700 	asrtgt.d	$r24,$r25
 1e4:	11000600 	addu16i.d	$r0,$r16,16385(0x4001)
 1e8:	1c000aec 	pcaddu12i	$r12,87(0x57)
 1ec:	00000014 	0x00000014
 1f0:	00000216 	0x00000216
 1f4:	0000fd0b 	0x0000fd0b
 1f8:	05190100 	0x05190100
 1fc:	00000228 	0x00000228
 200:	00000206 	0x00000206
 204:	f40f0006 	0xf40f0006
 208:	531c000a 	b	2825216(0x2b1c00) # 2b1e08 <__stack_size+0x2a1e08>
 20c:	0d000002 	fsel	$f2,$f0,$f0,$fcc0
 210:	3d015401 	0x3d015401
 214:	cc0f0000 	0xcc0f0000
 218:	531c000a 	b	2825216(0x2b1c00) # 2b1e18 <__stack_size+0x2a1e18>
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
 284:	000ca000 	bytepick.d	$r0,$r0,$r8,0x1
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
 2b0:	00061201 	alsl.wu	$r1,$r16,$r4,0x1
 2b4:	201c000d 	ll.w	$r13,$r0,7168(0x1c00)
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
 2f8:	000ca000 	bytepick.d	$r0,$r0,$r8,0x1
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
 330:	1c000ca0 	pcaddu12i	$r0,101(0x65)
 334:	00003002 	revb.2h	$r2,$r0
 338:	01030100 	fsub.d	$f0,$f8,$f0
 33c:	0000760e 	0x0000760e
 340:	0003ba00 	0x0003ba00
 344:	0003b800 	0x0003b800
 348:	0f000000 	0x0f000000
 34c:	00000069 	0x00000069
 350:	1c000cd0 	pcaddu12i	$r16,102(0x66)
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
 37c:	1c000d20 	pcaddu12i	$r0,105(0x69)
 380:	000000ac 	0x000000ac
 384:	00000255 	0x00000255
 388:	0b070402 	0x0b070402
 38c:	02000000 	slti	$r0,$r0,0
 390:	00060704 	alsl.wu	$r4,$r24,$r1,0x1
 394:	1f030000 	pcaddu18i	$r0,-518144(0x81800)
 398:	01000001 	0x01000001
 39c:	00a9050e 	bstrins.d	$r14,$r8,0x29,0x1
 3a0:	0da00000 	0x0da00000
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
 3d4:	000dac07 	bytepick.d	$r7,$r0,$r11,0x3
 3d8:	0000bd1c 	0x0000bd1c
 3dc:	00008600 	0x00008600
 3e0:	54010800 	bl	264(0x108) # 4e8 <__stack_size-0xfb18>
 3e4:	5401f303 	bl	-66321936(0xc0c01f0) # fc0c05d4 <_stack+0xdffc05d8>
 3e8:	0db40700 	0x0db40700
 3ec:	01671c00 	0x01671c00
 3f0:	00990000 	bstrins.d	$r0,$r0,0x19,0x0
 3f4:	01080000 	0x01080000
 3f8:	003d0154 	0x003d0154
 3fc:	000dbc09 	bytepick.d	$r9,$r0,$r15,0x3
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
 42c:	1c000d20 	pcaddu12i	$r0,105(0x69)
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
 474:	0d600e00 	xvshuf.b	$xr0,$xr16,$xr3,$xr0
 478:	00081c00 	bytepick.w	$r0,$r0,$r7,0x0
 47c:	01410000 	0x01410000
 480:	fd050000 	0xfd050000
 484:	01000000 	0x01000000
 488:	00a91006 	bstrins.d	$r6,$r0,0x29,0x4
 48c:	01310000 	0x01310000
 490:	00060000 	alsl.wu	$r0,$r0,$r0,0x1
 494:	000d6809 	bytepick.d	$r9,$r0,$r26,0x2
 498:	0001671c 	0x0001671c
 49c:	54010800 	bl	264(0x108) # 5a4 <__stack_size-0xfa5c>
 4a0:	00003d01 	revb.d	$r1,$r8
 4a4:	000d5007 	bytepick.d	$r7,$r0,$r20,0x2
 4a8:	0001671c 	0x0001671c
 4ac:	00015500 	asrtle.d	$r8,$r21
 4b0:	54010800 	bl	264(0x108) # 5b8 <__stack_size-0xfa48>
 4b4:	00008702 	0x00008702
 4b8:	000d7009 	bytepick.d	$r9,$r0,$r28,0x2
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
 4f0:	1c000dd0 	pcaddu12i	$r16,110(0x6e)
 4f4:	000000ec 	0x000000ec
 4f8:	000002ed 	0x000002ed
 4fc:	0b070402 	0x0b070402
 500:	02000000 	slti	$r0,$r0,0
 504:	00060704 	alsl.wu	$r4,$r24,$r1,0x1
 508:	db030000 	0xdb030000
 50c:	01000000 	0x01000000
 510:	01490501 	0x01490501
 514:	0dd00000 	0x0dd00000
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
 5c8:	90090000 	0x90090000
 5cc:	201c000e 	ll.w	$r14,$r0,7168(0x1c00)
 5d0:	23000000 	sc.d	$r0,$r0,0
 5d4:	0a000001 	0x0a000001
 5d8:	000000fd 	0x000000fd
 5dc:	49020a01 	0x49020a01
 5e0:	12000001 	addu16i.d	$r1,$r0,-32768(0x8000)
 5e4:	0b000001 	0x0b000001
 5e8:	0ea00c00 	0x0ea00c00
 5ec:	016e1c00 	0x016e1c00
 5f0:	010d0000 	fmaxa.d	$f0,$f0,$f0
 5f4:	2d080254 	0x2d080254
 5f8:	380e0000 	0x380e0000
 5fc:	301c000e 	0x301c000e
 600:	0a000000 	0x0a000000
 604:	000000fd 	0x000000fd
 608:	49020a01 	0x49020a01
 60c:	3e000001 	0x3e000001
 610:	0b000001 	0x0b000001
 614:	0e680f00 	0x0e680f00
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
 650:	02450002 	sltui	$r2,$r0,320(0x140)
 654:	00040000 	alsl.w	$r0,$r0,$r0,0x1
 658:	00000425 	0x00000425
 65c:	00180104 	sra.w	$r4,$r8,$r0
 660:	760c0000 	0x760c0000
 664:	9f000001 	0x9f000001
 668:	c0000000 	0xc0000000
 66c:	401c000e 	beqz	$r0,3677184(0x381c00) # 38226c <__stack_size+0x37226c>
 670:	d9000001 	0xd9000001
 674:	02000003 	slti	$r3,$r0,0
 678:	000b0704 	0x000b0704
 67c:	04020000 	csrrd	$r0,0x80
 680:	00000607 	0x00000607
 684:	01650300 	0x01650300
 688:	03020000 	lu52i.d	$r0,$r0,128(0x80)
 68c:	00002c17 	ctz.d	$r23,$r0
 690:	05040400 	0x05040400
 694:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
 698:	00015c05 	0x00015c05
 69c:	20021000 	ll.w	$r0,$r0,528(0x210)
 6a0:	00008808 	0x00008808
 6a4:	019f0600 	0x019f0600
 6a8:	21020000 	sc.w	$r0,$r0,512(0x200)
 6ac:	0000330b 	revb.2h	$r11,$r24
 6b0:	ad060000 	0xad060000
 6b4:	02000001 	slti	$r1,$r0,0
 6b8:	00330b22 	0x00330b22
 6bc:	06040000 	cacop	0x0,$r0,256(0x100)
 6c0:	0000018e 	0x0000018e
 6c4:	330b2302 	0x330b2302
 6c8:	08000000 	0x08000000
 6cc:	00016e06 	0x00016e06
 6d0:	0b240200 	0x0b240200
 6d4:	00000033 	0x00000033
 6d8:	7d07000c 	0x7d07000c
 6dc:	01000001 	0x01000001
 6e0:	002c0f3c 	alsl.d	$r28,$r25,$r3,0x1
 6e4:	0fd00000 	0x0fd00000
 6e8:	00301c00 	0x00301c00
 6ec:	9c010000 	0x9c010000
 6f0:	000000da 	0x000000da
 6f4:	01006e08 	0x01006e08
 6f8:	002c133e 	alsl.d	$r30,$r25,$r4,0x1
 6fc:	06de0000 	0x06de0000
 700:	06d60000 	0x06d60000
 704:	2e090000 	0x2e090000
 708:	d0000002 	0xd0000002
 70c:	031c000f 	lu52i.d	$r15,$r0,1792(0x700)
 710:	000000a8 	0x000000a8
 714:	0a093f01 	0x0a093f01
 718:	000000a8 	0x000000a8
 71c:	00023b0b 	0x00023b0b
 720:	00072000 	alsl.wu	$r0,$r0,$r8,0x3
 724:	00071e00 	alsl.wu	$r0,$r16,$r7,0x3
 728:	00000000 	0x00000000
 72c:	0001a607 	0x0001a607
 730:	0f330100 	0x0f330100
 734:	0000002c 	0x0000002c
 738:	1c000fa0 	pcaddu12i	$r0,125(0x7d)
 73c:	00000024 	0x00000024
 740:	012c9c01 	0x012c9c01
 744:	6e080000 	bgeu	$r0,$r0,-129024(0x20800) # fffe0f44 <_stack+0xe3ee0f48>
 748:	13350100 	addu16i.d	$r0,$r8,-12992(0xcd40)
 74c:	0000002c 	0x0000002c
 750:	0000073b 	0x0000073b
 754:	00000733 	0x00000733
 758:	00022e09 	0x00022e09
 75c:	000fa000 	bytepick.d	$r0,$r0,$r8,0x7
 760:	0090031c 	bstrins.d	$r28,$r24,0x10,0x0
 764:	36010000 	0x36010000
 768:	00900a09 	bstrins.d	$r9,$r16,0x10,0x2
 76c:	3b0b0000 	0x3b0b0000
 770:	76000002 	0x76000002
 774:	74000007 	xvseq.b	$xr7,$xr0,$xr0
 778:	00000007 	0x00000007
 77c:	840c0000 	0x840c0000
 780:	01000001 	0x01000001
 784:	002c0f2c 	alsl.d	$r12,$r25,$r3,0x1
 788:	01470000 	0x01470000
 78c:	6e0d0000 	bgeu	$r0,$r0,-127744(0x20d00) # fffe148c <_stack+0xe3ee1490>
 790:	132e0100 	addu16i.d	$r0,$r8,-13440(0xcb80)
 794:	0000002c 	0x0000002c
 798:	01b50700 	0x01b50700
 79c:	20010000 	ll.w	$r0,$r0,256(0x100)
 7a0:	00002c0f 	ctz.d	$r15,$r0
 7a4:	000f0000 	bytepick.d	$r0,$r0,$r0,0x6
 7a8:	0000841c 	0x0000841c
 7ac:	bb9c0100 	0xbb9c0100
 7b0:	0e000001 	0x0e000001
 7b4:	006c6573 	bstrins.w	$r19,$r11,0xc,0x19
 7b8:	3f212001 	0x3f212001
 7bc:	8d000000 	0x8d000000
 7c0:	89000007 	0x89000007
 7c4:	0f000007 	0x0f000007
 7c8:	00706d74 	bstrins.w	$r20,$r11,0x10,0x1b
 7cc:	bb362001 	0xbb362001
 7d0:	01000001 	0x01000001
 7d4:	006e0855 	bstrins.w	$r21,$r2,0xe,0x2
 7d8:	2c132201 	vld	$vr1,$r16,1224(0x4c8)
 7dc:	b2000000 	0xb2000000
 7e0:	ae000007 	0xae000007
 7e4:	09000007 	0x09000007
 7e8:	0000022e 	0x0000022e
 7ec:	1c000f00 	pcaddu12i	$r0,120(0x78)
 7f0:	00007803 	0x00007803
 7f4:	09230100 	vfmadd.d	$vr0,$vr8,$vr0,$vr6
 7f8:	0000780a 	0x0000780a
 7fc:	023b0b00 	slti	$r0,$r24,-318(0xec2)
 800:	07d30000 	0x07d30000
 804:	07d10000 	0x07d10000
 808:	00000000 	0x00000000
 80c:	46041000 	bnez	$r0,132112(0x20410) # 20c1c <__stack_size+0x10c1c>
 810:	11000000 	addu16i.d	$r0,$r0,16384(0x4000)
 814:	00000144 	0x00000144
 818:	2c0f1601 	vld	$vr1,$r16,965(0x3c5)
 81c:	f0000000 	0xf0000000
 820:	081c000e 	fmadd.s	$f14,$f0,$f0,$f24
 824:	01000000 	0x01000000
 828:	0001ee9c 	0x0001ee9c
 82c:	006e0800 	bstrins.w	$r0,$r0,0xe,0x2
 830:	2c131801 	vld	$vr1,$r0,1222(0x4c6)
 834:	e8000000 	0xe8000000
 838:	e6000007 	0xe6000007
 83c:	00000007 	0x00000007
 840:	00015211 	0x00015211
 844:	0f110100 	0x0f110100
 848:	0000002c 	0x0000002c
 84c:	1c000ec0 	pcaddu12i	$r0,118(0x76)
 850:	0000001c 	0x0000001c
 854:	022e9c01 	slti	$r1,$r0,-1113(0xba7)
 858:	2e090000 	0x2e090000
 85c:	c0000002 	0xc0000002
 860:	021c000e 	slti	$r14,$r0,1792(0x700)
 864:	00000060 	0x00000060
 868:	0a0d1301 	0x0a0d1301
 86c:	00000060 	0x00000060
 870:	00023b0b 	0x00023b0b
 874:	0007fd00 	alsl.wu	$r0,$r8,$r31,0x4
 878:	0007fb00 	alsl.wu	$r0,$r24,$r30,0x4
 87c:	00000000 	0x00000000
 880:	00015112 	0x00015112
 884:	0f040100 	0x0f040100
 888:	0000002c 	0x0000002c
 88c:	01961301 	0x01961301
 890:	06010000 	cacop	0x0,$r0,64(0x40)
 894:	00002c13 	ctz.d	$r19,$r0
 898:	Address 0x0000000000000898 is out of bounds.


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
 430:	06120111 	cacop	0x11,$r8,1152(0x480)
 434:	00001710 	clz.w	$r16,$r24
 438:	0b002402 	0x0b002402
 43c:	030b3e0b 	lu52i.d	$r11,$r16,719(0x2cf)
 440:	0300000e 	lu52i.d	$r14,$r0,0
 444:	0e030016 	0x0e030016
 448:	0b3b0b3a 	0x0b3b0b3a
 44c:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 450:	24040000 	ldptr.w	$r0,$r0,1024(0x400)
 454:	3e0b0b00 	0x3e0b0b00
 458:	0008030b 	bytepick.w	$r11,$r24,$r0,0x0
 45c:	01130500 	fcopysign.d	$f0,$f8,$f1
 460:	0b0b0e03 	0x0b0b0e03
 464:	0b3b0b3a 	0x0b3b0b3a
 468:	13010b39 	addu16i.d	$r25,$r25,-16318(0xc042)
 46c:	0d060000 	0x0d060000
 470:	3a0e0300 	0x3a0e0300
 474:	390b3b0b 	0x390b3b0b
 478:	3813490b 	0x3813490b
 47c:	0700000b 	0x0700000b
 480:	193f012e 	pcaddi	$r14,-395255(0x9f809)
 484:	0b3a0e03 	0x0b3a0e03
 488:	0b390b3b 	0x0b390b3b
 48c:	13491927 	addu16i.d	$r7,$r9,-11706(0xd246)
 490:	06120111 	cacop	0x11,$r8,1152(0x480)
 494:	42971840 	beqz	$r2,169752(0x29718) # 29bac <__stack_size+0x19bac>
 498:	00130119 	maskeqz	$r25,$r8,$r0
 49c:	00340800 	0x00340800
 4a0:	0b3a0803 	0x0b3a0803
 4a4:	0b390b3b 	0x0b390b3b
 4a8:	17021349 	lu32i.d	$r9,-520038(0x8109a)
 4ac:	001742b7 	sll.w	$r23,$r21,$r16
 4b0:	011d0900 	0x011d0900
 4b4:	01521331 	0x01521331
 4b8:	550b42b8 	bl	-85914816(0xae10b40) # fae10ff8 <_stack+0xded10ffc>
 4bc:	590b5817 	beq	$r0,$r23,68440(0x10b58) # 11014 <__stack_size+0x1014>
 4c0:	000b570b 	0x000b570b
 4c4:	010b0a00 	fmin.d	$f0,$f16,$f2
 4c8:	00001755 	clz.w	$r21,$r26
 4cc:	3100340b 	0x3100340b
 4d0:	b7170213 	0xb7170213
 4d4:	00001742 	clz.w	$r2,$r26
 4d8:	3f012e0c 	0x3f012e0c
 4dc:	3a0e0319 	0x3a0e0319
 4e0:	390b3b0b 	0x390b3b0b
 4e4:	0113490b 	fcopysign.d	$f11,$f8,$f18
 4e8:	0d000013 	fsel	$f19,$f0,$f0,$fcc0
 4ec:	08030034 	0x08030034
 4f0:	0b3b0b3a 	0x0b3b0b3a
 4f4:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 4f8:	050e0000 	0x050e0000
 4fc:	3a080300 	0x3a080300
 500:	390b3b0b 	0x390b3b0b
 504:	0213490b 	slti	$r11,$r8,1234(0x4d2)
 508:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
 50c:	050f0000 	0x050f0000
 510:	3a080300 	0x3a080300
 514:	390b3b0b 	0x390b3b0b
 518:	0213490b 	slti	$r11,$r8,1234(0x4d2)
 51c:	10000018 	addu16i.d	$r24,$r0,0
 520:	0b0b000f 	0x0b0b000f
 524:	00001349 	clo.w	$r9,$r26
 528:	3f012e11 	0x3f012e11
 52c:	3a0e0319 	0x3a0e0319
 530:	390b3b0b 	0x390b3b0b
 534:	1113490b 	addu16i.d	$r11,$r8,17618(0x44d2)
 538:	40061201 	beqz	$r16,263696(0x40610) # 40b48 <__stack_size+0x30b48>
 53c:	19429718 	pcaddi	$r24,-387912(0xa14b8)
 540:	00001301 	clo.w	$r1,$r24
 544:	3f012e12 	0x3f012e12
 548:	3a0e0319 	0x3a0e0319
 54c:	390b3b0b 	0x390b3b0b
 550:	2013490b 	ll.w	$r11,$r8,4936(0x1348)
 554:	1300000b 	addu16i.d	$r11,$r0,-16384(0xc000)
 558:	0e030034 	0x0e030034
 55c:	0b3b0b3a 	0x0b3b0b3a
 560:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
 564:	Address 0x0000000000000564 is out of bounds.


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
 6d0:	00000000 	0x00000000
 6d4:	01020000 	0x01020000
 6d8:	00030301 	0x00030301
 6dc:	01100000 	0x01100000
 6e0:	01200000 	0x01200000
 6e4:	00020000 	0x00020000
 6e8:	01209f30 	0x01209f30
 6ec:	01200000 	0x01200000
 6f0:	00010000 	asrtle.d	$r0,$r0
 6f4:	00012054 	0x00012054
 6f8:	00013400 	asrtle.d	$r0,$r13
 6fc:	74000c00 	xvseq.b	$xr0,$xr0,$xr3
 700:	0825f700 	fmadd.d	$f0,$f24,$f29,$f11
 704:	1b25f764 	pcalau12i	$r4,-446533(0x92fbb)
 708:	349f00f7 	0x349f00f7
 70c:	40000001 	beqz	$r0,262144(0x40000) # 4070c <__stack_size+0x3070c>
 710:	01000001 	0x01000001
 714:	00005d00 	ext.w.b	$r0,$r8
 718:	00000000 	0x00000000
 71c:	01000000 	0x01000000
 720:	00000120 	0x00000120
 724:	00000120 	0x00000120
 728:	00540001 	0x00540001
 72c:	00000000 	0x00000000
 730:	02000000 	slti	$r0,$r0,0
 734:	03030101 	lu52i.d	$r1,$r8,192(0xc0)
 738:	e0000000 	0xe0000000
 73c:	f0000000 	0xf0000000
 740:	02000000 	slti	$r0,$r0,0
 744:	f09f3000 	0xf09f3000
 748:	f0000000 	0xf0000000
 74c:	01000000 	0x01000000
 750:	00f05400 	bstrpick.d	$r0,$r0,0x30,0x15
 754:	00fc0000 	bstrpick.d	$r0,$r0,0x3c,0x0
 758:	00050000 	alsl.w	$r0,$r0,$r0,0x3
 75c:	1e3a0074 	pcaddu18i	$r20,118787(0x1d003)
 760:	0000fc9f 	0x0000fc9f
 764:	00010400 	asrtle.d	$r0,$r1
 768:	54000100 	bl	67108864(0x4000000) # 4000768 <__stack_size+0x3ff0768>
	...
 774:	00f00100 	bstrpick.d	$r0,$r8,0x30,0x0
 778:	00f00000 	bstrpick.d	$r0,$r0,0x30,0x0
 77c:	00010000 	asrtle.d	$r0,$r0
 780:	00000054 	0x00000054
	...
 78c:	00004000 	revh.2w	$r0,$r0
 790:	0000ac00 	0x0000ac00
 794:	54000100 	bl	67108864(0x4000000) # 4000794 <__stack_size+0x3ff0794>
 798:	000000ac 	0x000000ac
 79c:	000000c4 	0x000000c4
 7a0:	01f30004 	0x01f30004
 7a4:	00009f54 	0x00009f54
 7a8:	00000000 	0x00000000
 7ac:	01020000 	0x01020000
 7b0:	00400001 	0x00400001
 7b4:	00500000 	0x00500000
 7b8:	00020000 	0x00020000
 7bc:	00509f30 	0x00509f30
 7c0:	00c40000 	bstrpick.d	$r0,$r0,0x4,0x0
 7c4:	00010000 	asrtle.d	$r0,$r0
 7c8:	0000005f 	0x0000005f
 7cc:	00000000 	0x00000000
 7d0:	50010000 	b	256(0x100) # 8d0 <__stack_size-0xf730>
 7d4:	50000000 	b	0 # 7d4 <__stack_size-0xf82c>
 7d8:	01000000 	0x01000000
 7dc:	00005f00 	ext.w.b	$r0,$r24
	...
 7e8:	00000034 	0x00000034
 7ec:	00000038 	0x00000038
 7f0:	00540001 	0x00540001
	...
 7fc:	00001001 	clo.w	$r1,$r0
 800:	00001000 	clo.w	$r0,$r0
 804:	54000100 	bl	67108864(0x4000000) # 4000804 <__stack_size+0x3ff0804>
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	0x0000001c
   4:	00000002 	0x00000002
   8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
   c:	00000000 	0x00000000
  10:	1c000a60 	pcaddu12i	$r0,83(0x53)
  14:	0000023c 	0x0000023c
	...
  20:	0000001c 	0x0000001c
  24:	026c0002 	sltui	$r2,$r0,-1280(0xb00)
  28:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  2c:	00000000 	0x00000000
  30:	1c000ca0 	pcaddu12i	$r0,101(0x65)
  34:	00000080 	0x00000080
	...
  40:	0000001c 	0x0000001c
  44:	03630002 	andi	$r2,$r0,0x8c0
  48:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  4c:	00000000 	0x00000000
  50:	1c000d20 	pcaddu12i	$r0,105(0x69)
  54:	000000ac 	0x000000ac
	...
  60:	0000001c 	0x0000001c
  64:	04d70002 	csrrd	$r2,0x35c0
  68:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  6c:	00000000 	0x00000000
  70:	1c000dd0 	pcaddu12i	$r16,110(0x6e)
  74:	000000ec 	0x000000ec
	...
  80:	0000001c 	0x0000001c
  84:	06520002 	0x06520002
  88:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  8c:	00000000 	0x00000000
  90:	1c000ec0 	pcaddu12i	$r0,118(0x76)
  94:	00000140 	0x00000140
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
  68:	00000008 	0x00000008
  6c:	00000010 	0x00000010
	...
  78:	00000040 	0x00000040
  7c:	00000040 	0x00000040
  80:	00000048 	0x00000048
  84:	00000050 	0x00000050
	...
  90:	000000e0 	0x000000e0
  94:	000000e0 	0x000000e0
  98:	000000e8 	0x000000e8
  9c:	000000f0 	0x000000f0
	...
  a8:	00000110 	0x00000110
  ac:	00000110 	0x00000110
  b0:	00000118 	0x00000118
  b4:	00000120 	0x00000120
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
  2c:	0a600205 	xvfmsub.d	$xr5,$xr16,$xr0,$xr0
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
 1f0:	1c000ca0 	pcaddu12i	$r0,101(0x65)
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
 280:	000d2002 	bytepick.d	$r2,$r0,$r8,0x2
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
 31c:	0dd00205 	0x0dd00205
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
 3d8:	00012701 	0x00012701
 3dc:	32000200 	0x32000200
 3e0:	01000000 	0x01000000
 3e4:	0d0efb01 	0x0d0efb01
 3e8:	01010100 	fadd.d	$f0,$f8,$f0
 3ec:	00000001 	0x00000001
 3f0:	01000001 	0x01000001
 3f4:	692f2e2e 	bltu	$r17,$r14,77612(0x12f2c) # 13320 <__stack_size+0x3320>
 3f8:	756c636e 	0x756c636e
 3fc:	00006564 	rdtimeh.w	$r4,$r11
 400:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 17168 <__stack_size+0x7168>
 404:	0000632e 	rdtimel.w	$r14,$r25
 408:	69740000 	bltu	$r0,$r0,95232(0x17400) # 17808 <__stack_size+0x7808>
 40c:	682e656d 	bltu	$r11,$r13,11876(0x2e64) # 3270 <__stack_size-0xcd90>
 410:	00000100 	0x00000100
 414:	00010500 	asrtle.d	$r8,$r1
 418:	0ec00205 	0x0ec00205
 41c:	11031c00 	addu16i.d	$r0,$r0,16583(0x40c7)
 420:	13050501 	addu16i.d	$r1,$r8,-16063(0xc141)
 424:	71030f05 	vssrarn.h.w	$vr5,$vr24,$vr3
 428:	14050501 	lu12i.w	$r1,10280(0x2828)
 42c:	06010513 	cacop	0x13,$r8,65(0x41)
 430:	05010b03 	0x05010b03
 434:	82750305 	0x82750305
 438:	01068906 	fdiv.s	$f6,$f8,$f2
 43c:	06180105 	cacop	0x5,$r8,1536(0x600)
 440:	0505e708 	0x0505e708
 444:	054e1313 	0x054e1313
 448:	06130601 	cacop	0x1,$r16,1217(0x4c1)
 44c:	130505bd 	addu16i.d	$r29,$r13,-16063(0xc141)
 450:	030f0513 	lu52i.d	$r19,$r8,961(0x3c1)
 454:	05050161 	0x05050161
 458:	01051314 	fmul.d	$f20,$f24,$f4
 45c:	011a0306 	0x011a0306
 460:	66030505 	bge	$r8,$r5,-130300(0x20304) # fffe0764 <_stack+0xe3ee0768>
 464:	06890682 	0x06890682
 468:	16030601 	lu32i.d	$r1,6192(0x1830)
 46c:	06150501 	cacop	0x1,$r8,1345(0x541)
 470:	83160501 	0x83160501
 474:	054b2705 	0x054b2705
 478:	36054916 	0x36054916
 47c:	4c2705b9 	jirl	$r25,$r13,9988(0x2704)
 480:	05492805 	0x05492805
 484:	3605bb27 	0x3605bb27
 488:	bb1205ba 	0xbb1205ba
 48c:	01054949 	fmul.d	$f9,$f10,$f18
 490:	0336054f 	lu52i.d	$r15,$r10,-639(0xd81)
 494:	1205827a 	addu16i.d	$r26,$r19,-32416(0x8160)
 498:	060505ba 	cacop	0x1a,$r13,321(0x141)
 49c:	1413134b 	lu12i.w	$r11,39066(0x989a)
 4a0:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
 4a4:	020a0306 	slti	$r6,$r24,640(0x280)
 4a8:	05050124 	0x05050124
 4ac:	0f051313 	0x0f051313
 4b0:	05014e03 	0x05014e03
 4b4:	05131405 	0x05131405
 4b8:	2d030601 	0x2d030601
 4bc:	03050501 	lu52i.d	$r1,$r8,321(0x141)
 4c0:	89068253 	0x89068253
 4c4:	03060106 	lu52i.d	$r6,$r8,384(0x180)
 4c8:	05130129 	0x05130129
 4cc:	05110606 	0x05110606
 4d0:	06824c01 	0x06824c01
 4d4:	05054008 	0x05054008
 4d8:	0f051313 	0x0f051313
 4dc:	05014503 	0x05014503
 4e0:	05131405 	0x05131405
 4e4:	36030601 	0x36030601
 4e8:	03050501 	lu52i.d	$r1,$r8,321(0x141)
 4ec:	8906824a 	0x8906824a
 4f0:	03060106 	lu52i.d	$r6,$r8,384(0x180)
 4f4:	05130132 	0x05130132
 4f8:	05110606 	0x05110606
 4fc:	02f24c01 	addi.d	$r1,$r0,-877(0xc93)
 500:	0101000c 	fadd.d	$f12,$f0,$f0

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
 144:	5f746567 	bne	$r11,$r7,-35740(0x37464) # ffff75a8 <_stack+0xe3ef75ac>
 148:	6e756f63 	bgeu	$r27,$r3,-101012(0x2756c) # fffe76b4 <_stack+0xe3ee76b8>
 14c:	796d5f74 	0x796d5f74
 150:	65675f00 	bge	$r24,$r0,91996(0x1675c) # 168ac <__stack_size+0x68ac>
 154:	6f635f74 	bgeu	$r27,$r20,-40100(0x3635c) # ffff64b0 <_stack+0xe3ef64b4>
 158:	00746e75 	bstrins.w	$r21,$r19,0x14,0x1b
 15c:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 16ec4 <__stack_size+0x6ec4>
 160:	63657073 	blt	$r3,$r19,-39568(0x36570) # ffff66d0 <_stack+0xe3ef66d4>
 164:	6c635f00 	bgeu	$r24,$r0,25436(0x635c) # 64c0 <__stack_size-0x9b40>
 168:	5f6b636f 	bne	$r27,$r15,-38048(0x36b60) # ffff6cc8 <_stack+0xe3ef6ccc>
 16c:	76740074 	0x76740074
 170:	65736d5f 	bge	$r10,$r31,95084(0x1736c) # 174dc <__stack_size+0x74dc>
 174:	69740063 	bltu	$r3,$r3,95232(0x17400) # 17574 <__stack_size+0x7574>
 178:	632e656d 	blt	$r11,$r13,-53660(0x32e64) # ffff2fdc <_stack+0xe3ef2fe0>
 17c:	74656700 	xvavg.w	$xr0,$xr24,$xr25
 180:	0073755f 	bstrins.w	$r31,$r10,0x13,0x1d
 184:	5f746567 	bne	$r11,$r7,-35740(0x37464) # ffff75e8 <_stack+0xe3ef75ec>
 188:	636f6c63 	blt	$r3,$r3,-37012(0x36f6c) # ffff70f4 <_stack+0xe3ef70f8>
 18c:	7674006b 	0x7674006b
 190:	6573755f 	bge	$r10,$r31,95092(0x17374) # 17504 <__stack_size+0x7504>
 194:	635f0063 	blt	$r3,$r3,-41216(0x35f00) # ffff6094 <_stack+0xe3ef6098>
 198:	76746e6f 	0x76746e6f
 19c:	74006c61 	xvseq.b	$xr1,$xr3,$xr27
 1a0:	65735f76 	bge	$r27,$r22,95068(0x1735c) # 174fc <__stack_size+0x74fc>
 1a4:	65670063 	bge	$r3,$r3,91904(0x16700) # 168a4 <__stack_size+0x68a4>
 1a8:	736e5f74 	vssrarni.du.q	$vr20,$vr27,0x17
 1ac:	5f767400 	bne	$r0,$r0,-35212(0x37674) # ffff7820 <_stack+0xe3ef7824>
 1b0:	6365736e 	blt	$r27,$r14,-39568(0x36570) # ffff6720 <_stack+0xe3ef6724>
 1b4:	6f6c6300 	bgeu	$r24,$r0,-37792(0x36c60) # ffff6e14 <_stack+0xe3ef6e18>
 1b8:	675f6b63 	bge	$r27,$r3,-41112(0x35f68) # ffff6120 <_stack+0xe3ef6124>
 1bc:	69747465 	bltu	$r3,$r5,95348(0x17474) # 17630 <__stack_size+0x7630>
 1c0:	Address 0x00000000000001c0 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	0x0000000c
   4:	ffffffff 	0xffffffff
   8:	7c010001 	0x7c010001
   c:	00030d01 	0x00030d01
  10:	00000034 	0x00000034
  14:	00000000 	0x00000000
  18:	1c000a60 	pcaddu12i	$r0,83(0x53)
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
  60:	1c000ca0 	pcaddu12i	$r0,101(0x65)
  64:	00000028 	0x00000028
  68:	44100e44 	bnez	$r18,1052684(0x10100c) # 101074 <__stack_size+0xf1074>
  6c:	d9580199 	0xd9580199
  70:	00000e44 	0x00000e44
  74:	00000018 	0x00000018
  78:	00000048 	0x00000048
  7c:	1c000cd0 	pcaddu12i	$r16,102(0x66)
  80:	00000024 	0x00000024
  84:	44100e44 	bnez	$r18,1052684(0x10100c) # 101090 <__stack_size+0xf1090>
  88:	d9540199 	0xd9540199
  8c:	00000e44 	0x00000e44
  90:	0000000c 	0x0000000c
  94:	00000048 	0x00000048
  98:	1c000d00 	pcaddu12i	$r0,104(0x68)
  9c:	00000020 	0x00000020
  a0:	0000000c 	0x0000000c
  a4:	ffffffff 	0xffffffff
  a8:	7c010001 	0x7c010001
  ac:	00030d01 	0x00030d01
  b0:	00000024 	0x00000024
  b4:	000000a0 	0x000000a0
  b8:	1c000d20 	pcaddu12i	$r0,105(0x69)
  bc:	00000074 	0x00000074
  c0:	50100e44 	b	-116387828(0x910100c) # f91010cc <_stack+0xdd0010d0>
  c4:	02970181 	addi.w	$r1,$r12,1472(0x5c0)
  c8:	04990398 	csrxchg	$r24,$r28,0x2640
  cc:	44c14802 	bnez	$r0,573768(0x8c148) # 8c214 <__stack_size+0x7c214>
  d0:	44d844d7 	bnez	$r6,-2303932(0x5cd844) # ffdcd914 <_stack+0xe3ccd918>
  d4:	000e48d9 	bytepick.d	$r25,$r6,$r18,0x4
  d8:	00000018 	0x00000018
  dc:	000000a0 	0x000000a0
  e0:	1c000da0 	pcaddu12i	$r0,109(0x6d)
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
 10c:	1c000dd0 	pcaddu12i	$r16,110(0x6e)
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
 140:	00000018 	0x00000018
 144:	00000130 	0x00000130
 148:	1c000ec0 	pcaddu12i	$r0,118(0x76)
 14c:	0000001c 	0x0000001c
 150:	44100e44 	bnez	$r18,1052684(0x10100c) # 10115c <__stack_size+0xf115c>
 154:	d94c0199 	0xd94c0199
 158:	00000e44 	0x00000e44
 15c:	0000000c 	0x0000000c
 160:	00000130 	0x00000130
 164:	1c000ee0 	pcaddu12i	$r0,119(0x77)
 168:	00000004 	0x00000004
 16c:	0000000c 	0x0000000c
 170:	00000130 	0x00000130
 174:	1c000ef0 	pcaddu12i	$r16,119(0x77)
 178:	00000008 	0x00000008
 17c:	00000018 	0x00000018
 180:	00000130 	0x00000130
 184:	1c000f00 	pcaddu12i	$r0,120(0x78)
 188:	00000084 	0x00000084
 18c:	44100e44 	bnez	$r18,1052684(0x10100c) # 101198 <__stack_size+0xf1198>
 190:	60020199 	blt	$r12,$r25,512(0x200) # 390 <__stack_size-0xfc70>
 194:	000e58d9 	bytepick.d	$r25,$r6,$r22,0x4
 198:	0000000c 	0x0000000c
 19c:	00000130 	0x00000130
 1a0:	1c000f90 	pcaddu12i	$r16,124(0x7c)
 1a4:	00000004 	0x00000004
 1a8:	00000018 	0x00000018
 1ac:	00000130 	0x00000130
 1b0:	1c000fa0 	pcaddu12i	$r0,125(0x7d)
 1b4:	00000024 	0x00000024
 1b8:	44100e44 	bnez	$r18,1052684(0x10100c) # 1011c4 <__stack_size+0xf11c4>
 1bc:	d9500199 	0xd9500199
 1c0:	00000e48 	0x00000e48
 1c4:	00000018 	0x00000018
 1c8:	00000130 	0x00000130
 1cc:	1c000fd0 	pcaddu12i	$r16,126(0x7e)
 1d0:	00000030 	0x00000030
 1d4:	44100e44 	bnez	$r18,1052684(0x10100c) # 1011e0 <__stack_size+0xf11e0>
 1d8:	d9500199 	0xd9500199
 1dc:	00000e54 	0x00000e54
