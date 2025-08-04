
obj/stringsearch/main.elf:     file format elf32-loongarch
obj/stringsearch/main.elf


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
1c000058:	0293718c 	addi.w	$r12,$r12,1244(0x4dc)
1c00005c:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c000060:	02be91ad 	addi.w	$r13,$r13,-92(0xfa4)
1c000064:	1c00102e 	pcaddu12i	$r14,129(0x81)
1c000068:	02b131ce 	addi.w	$r14,$r14,-948(0xc4c)
1c00006c:	6c0019ae 	bgeu	$r13,$r14,24(0x18) # 1c000084 <_start+0x84>
1c000070:	2880018f 	ld.w	$r15,$r12,0
1c000074:	298001af 	st.w	$r15,$r13,0
1c000078:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00007c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000080:	6bfff1ae 	bltu	$r13,$r14,-16(0x3fff0) # 1c000070 <_start+0x70>
1c000084:	1c00102c 	pcaddu12i	$r12,129(0x81)
1c000088:	02b0b18c 	addi.w	$r12,$r12,-980(0xc2c)
1c00008c:	1c00102d 	pcaddu12i	$r13,129(0x81)
1c000090:	0280b1ad 	addi.w	$r13,$r13,44(0x2c)
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
1c00038c:	54001400 	bl	20(0x14) # 1c0003a0 <shell10>
1c000390:	03400000 	andi	$r0,$r0,0x0

1c000394 <go_finish>:
go_finish():
1c000394:	53fd6fff 	b	-660(0xffffd6c) # 1c000100 <test_finish>

Disassembly of section .text:

1c0003a0 <shell10>:
shell10():
1c0003a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0003a4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0003a8:	157f5fcc 	lu12i.w	$r12,-263426(0xbfafe)
1c0003ac:	29806077 	st.w	$r23,$r3,24(0x18)
1c0003b0:	29805078 	st.w	$r24,$r3,20(0x14)
1c0003b4:	29804079 	st.w	$r25,$r3,16(0x10)
1c0003b8:	2980307a 	st.w	$r26,$r3,12(0xc)
1c0003bc:	29800180 	st.w	$r0,$r12,0
1c0003c0:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0003c4:	02b10084 	addi.w	$r4,$r4,-960(0xc40)
1c0003c8:	540c2800 	bl	3112(0xc28) # 1c000ff0 <puts>
1c0003cc:	54102400 	bl	4132(0x1024) # 1c0013f0 <get_count>
1c0003d0:	00150099 	move	$r25,$r4
1c0003d4:	54104c00 	bl	4172(0x104c) # 1c001420 <get_count_my>
1c0003d8:	0015009a 	move	$r26,$r4
1c0003dc:	157f5fe4 	lu12i.w	$r4,-263425(0xbfaff)
1c0003e0:	03bc8085 	ori	$r5,$r4,0xf20
1c0003e4:	288000a6 	ld.w	$r6,$r5,0
1c0003e8:	02802817 	addi.w	$r23,$r0,10(0xa)
1c0003ec:	00150018 	move	$r24,$r0
1c0003f0:	5c00e8c0 	bne	$r6,$r0,232(0xe8) # 1c0004d8 <shell10+0x138>
1c0003f4:	54042c00 	bl	1068(0x42c) # 1c000820 <search_small>
1c0003f8:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
1c0003fc:	00101318 	add.w	$r24,$r24,$r4
1c000400:	5ffff6e0 	bne	$r23,$r0,-12(0x3fff4) # 1c0003f4 <shell10+0x54>
1c000404:	54101c00 	bl	4124(0x101c) # 1c001420 <get_count_my>
1c000408:	00150097 	move	$r23,$r4
1c00040c:	540fe400 	bl	4068(0xfe4) # 1c0013f0 <get_count>
1c000410:	00116afa 	sub.w	$r26,$r23,$r26
1c000414:	00116499 	sub.w	$r25,$r4,$r25
1c000418:	58008b00 	beq	$r24,$r0,136(0x88) # 1c0004a0 <shell10+0x100>
1c00041c:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000420:	02b05084 	addi.w	$r4,$r4,-1004(0xc14)
1c000424:	540bcc00 	bl	3020(0xbcc) # 1c000ff0 <puts>
1c000428:	157f5fe7 	lu12i.w	$r7,-263425(0xbfaff)
1c00042c:	02800410 	addi.w	$r16,$r0,1(0x1)
1c000430:	038100ef 	ori	$r15,$r7,0x40
1c000434:	298001f0 	st.w	$r16,$r15,0
1c000438:	0280080e 	addi.w	$r14,$r0,2(0x2)
1c00043c:	0380c0ed 	ori	$r13,$r7,0x30
1c000440:	038080e8 	ori	$r8,$r7,0x20
1c000444:	298001ae 	st.w	$r14,$r13,0
1c000448:	29800100 	st.w	$r0,$r8,0
1c00044c:	157f5fe1 	lu12i.w	$r1,-263425(0xbfaff)
1c000450:	0381402c 	ori	$r12,$r1,0x50
1c000454:	2980019a 	st.w	$r26,$r12,0
1c000458:	157f5f06 	lu12i.w	$r6,-263432(0xbfaf8)
1c00045c:	038040d8 	ori	$r24,$r6,0x10
1c000460:	298000da 	st.w	$r26,$r6,0
1c000464:	00150325 	move	$r5,$r25
1c000468:	29800319 	st.w	$r25,$r24,0
1c00046c:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000470:	02af7084 	addi.w	$r4,$r4,-1060(0xbdc)
1c000474:	54083c00 	bl	2108(0x83c) # 1c000cb0 <printf>
1c000478:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00047c:	28806077 	ld.w	$r23,$r3,24(0x18)
1c000480:	28805078 	ld.w	$r24,$r3,20(0x14)
1c000484:	28804079 	ld.w	$r25,$r3,16(0x10)
1c000488:	00150345 	move	$r5,$r26
1c00048c:	2880307a 	ld.w	$r26,$r3,12(0xc)
1c000490:	1c001004 	pcaddu12i	$r4,128(0x80)
1c000494:	02afa084 	addi.w	$r4,$r4,-1048(0xbe8)
1c000498:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00049c:	50081400 	b	2068(0x814) # 1c000cb0 <printf>
1c0004a0:	1c001004 	pcaddu12i	$r4,128(0x80)
1c0004a4:	02adf084 	addi.w	$r4,$r4,-1156(0xb7c)
1c0004a8:	540b4800 	bl	2888(0xb48) # 1c000ff0 <puts>
1c0004ac:	157f5fe9 	lu12i.w	$r9,-263425(0xbfaff)
1c0004b0:	0280040b 	addi.w	$r11,$r0,1(0x1)
1c0004b4:	03810131 	ori	$r17,$r9,0x40
1c0004b8:	2980022b 	st.w	$r11,$r17,0
1c0004bc:	140001ea 	lu12i.w	$r10,15(0xf)
1c0004c0:	0380c132 	ori	$r18,$r9,0x30
1c0004c4:	03808133 	ori	$r19,$r9,0x20
1c0004c8:	03bffd54 	ori	$r20,$r10,0xfff
1c0004cc:	2980024b 	st.w	$r11,$r18,0
1c0004d0:	29800274 	st.w	$r20,$r19,0
1c0004d4:	53ff7bff 	b	-136(0xfffff78) # 1c00044c <shell10+0xac>
1c0004d8:	54034800 	bl	840(0x348) # 1c000820 <search_small>
1c0004dc:	00150098 	move	$r24,$r4
1c0004e0:	540f4000 	bl	3904(0xf40) # 1c001420 <get_count_my>
1c0004e4:	00150097 	move	$r23,$r4
1c0004e8:	540f0800 	bl	3848(0xf08) # 1c0013f0 <get_count>
1c0004ec:	00116afa 	sub.w	$r26,$r23,$r26
1c0004f0:	00116499 	sub.w	$r25,$r4,$r25
1c0004f4:	5fff2b00 	bne	$r24,$r0,-216(0x3ff28) # 1c00041c <shell10+0x7c>
1c0004f8:	53ffabff 	b	-88(0xfffffa8) # 1c0004a0 <shell10+0x100>
1c0004fc:	03400000 	andi	$r0,$r0,0x0

1c000500 <init_search>:
init_search():
1c000500:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000504:	29802077 	st.w	$r23,$r3,8(0x8)
1c000508:	29803061 	st.w	$r1,$r3,12(0xc)
1c00050c:	00150097 	move	$r23,$r4
1c000510:	540c0000 	bl	3072(0xc00) # 1c001110 <strlen>
1c000514:	1c00100e 	pcaddu12i	$r14,128(0x80)
1c000518:	029e91ce 	addi.w	$r14,$r14,1956(0x7a4)
1c00051c:	1c00100f 	pcaddu12i	$r15,128(0x80)
1c000520:	029e61ef 	addi.w	$r15,$r15,1944(0x798)
1c000524:	001501cc 	move	$r12,$r14
1c000528:	029001cd 	addi.w	$r13,$r14,1024(0x400)
1c00052c:	298001e4 	st.w	$r4,$r15,0
1c000530:	29800184 	st.w	$r4,$r12,0
1c000534:	29801184 	st.w	$r4,$r12,4(0x4)
1c000538:	29802184 	st.w	$r4,$r12,8(0x8)
1c00053c:	29803184 	st.w	$r4,$r12,12(0xc)
1c000540:	29804184 	st.w	$r4,$r12,16(0x10)
1c000544:	29805184 	st.w	$r4,$r12,20(0x14)
1c000548:	29806184 	st.w	$r4,$r12,24(0x18)
1c00054c:	29807184 	st.w	$r4,$r12,28(0x1c)
1c000550:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c000554:	5fffdd8d 	bne	$r12,$r13,-36(0x3ffdc) # 1c000530 <init_search+0x30>
1c000558:	00105c81 	add.w	$r1,$r4,$r23
1c00055c:	001502ec 	move	$r12,$r23
1c000560:	02bffef0 	addi.w	$r16,$r23,-1(0xfff)
1c000564:	58019c80 	beq	$r4,$r0,412(0x19c) # 1c000700 <init_search+0x200>
1c000568:	00115c25 	sub.w	$r5,$r1,$r23
1c00056c:	03401ca6 	andi	$r6,$r5,0x7
1c000570:	00101204 	add.w	$r4,$r16,$r4
1c000574:	5800c8c0 	beq	$r6,$r0,200(0xc8) # 1c00063c <init_search+0x13c>
1c000578:	02800407 	addi.w	$r7,$r0,1(0x1)
1c00057c:	5800a4c7 	beq	$r6,$r7,164(0xa4) # 1c000620 <init_search+0x120>
1c000580:	02800808 	addi.w	$r8,$r0,2(0x2)
1c000584:	580084c8 	beq	$r6,$r8,132(0x84) # 1c000608 <init_search+0x108>
1c000588:	02800c09 	addi.w	$r9,$r0,3(0x3)
1c00058c:	580064c9 	beq	$r6,$r9,100(0x64) # 1c0005f0 <init_search+0xf0>
1c000590:	0280100a 	addi.w	$r10,$r0,4(0x4)
1c000594:	580044ca 	beq	$r6,$r10,68(0x44) # 1c0005d8 <init_search+0xd8>
1c000598:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c00059c:	580024cb 	beq	$r6,$r11,36(0x24) # 1c0005c0 <init_search+0xc0>
1c0005a0:	02801811 	addi.w	$r17,$r0,6(0x6)
1c0005a4:	5c0178d1 	bne	$r6,$r17,376(0x178) # 1c00071c <init_search+0x21c>
1c0005a8:	2a00018d 	ld.bu	$r13,$r12,0
1c0005ac:	00113090 	sub.w	$r16,$r4,$r12
1c0005b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0005b4:	004089a5 	slli.w	$r5,$r13,0x2
1c0005b8:	001015c6 	add.w	$r6,$r14,$r5
1c0005bc:	298000d0 	st.w	$r16,$r6,0
1c0005c0:	2a000187 	ld.bu	$r7,$r12,0
1c0005c4:	00113088 	sub.w	$r8,$r4,$r12
1c0005c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0005cc:	004088e9 	slli.w	$r9,$r7,0x2
1c0005d0:	001025ca 	add.w	$r10,$r14,$r9
1c0005d4:	29800148 	st.w	$r8,$r10,0
1c0005d8:	2a00018b 	ld.bu	$r11,$r12,0
1c0005dc:	00113091 	sub.w	$r17,$r4,$r12
1c0005e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0005e4:	00408972 	slli.w	$r18,$r11,0x2
1c0005e8:	001049d3 	add.w	$r19,$r14,$r18
1c0005ec:	29800271 	st.w	$r17,$r19,0
1c0005f0:	2a000194 	ld.bu	$r20,$r12,0
1c0005f4:	0011308f 	sub.w	$r15,$r4,$r12
1c0005f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0005fc:	00408a8d 	slli.w	$r13,$r20,0x2
1c000600:	001035d0 	add.w	$r16,$r14,$r13
1c000604:	2980020f 	st.w	$r15,$r16,0
1c000608:	2a000185 	ld.bu	$r5,$r12,0
1c00060c:	00113086 	sub.w	$r6,$r4,$r12
1c000610:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000614:	004088a7 	slli.w	$r7,$r5,0x2
1c000618:	00101dc8 	add.w	$r8,$r14,$r7
1c00061c:	29800106 	st.w	$r6,$r8,0
1c000620:	2a000189 	ld.bu	$r9,$r12,0
1c000624:	0011308a 	sub.w	$r10,$r4,$r12
1c000628:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00062c:	0040892b 	slli.w	$r11,$r9,0x2
1c000630:	00102dd1 	add.w	$r17,$r14,$r11
1c000634:	2980022a 	st.w	$r10,$r17,0
1c000638:	5800c82c 	beq	$r1,$r12,200(0xc8) # 1c000700 <init_search+0x200>
1c00063c:	2a00018f 	ld.bu	$r15,$r12,0
1c000640:	02800993 	addi.w	$r19,$r12,2(0x2)
1c000644:	02800592 	addi.w	$r18,$r12,1(0x1)
1c000648:	004089eb 	slli.w	$r11,$r15,0x2
1c00064c:	00113087 	sub.w	$r7,$r4,$r12
1c000650:	00114c85 	sub.w	$r5,$r4,$r19
1c000654:	00102dd3 	add.w	$r19,$r14,$r11
1c000658:	29800267 	st.w	$r7,$r19,0
1c00065c:	02800d94 	addi.w	$r20,$r12,3(0x3)
1c000660:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c000664:	02801590 	addi.w	$r16,$r12,5(0x5)
1c000668:	0280198a 	addi.w	$r10,$r12,6(0x6)
1c00066c:	00114886 	sub.w	$r6,$r4,$r18
1c000670:	02801d92 	addi.w	$r18,$r12,7(0x7)
1c000674:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c000678:	2a3fe587 	ld.bu	$r7,$r12,-7(0xff9)
1c00067c:	00113489 	sub.w	$r9,$r4,$r13
1c000680:	0011408f 	sub.w	$r15,$r4,$r16
1c000684:	004088ed 	slli.w	$r13,$r7,0x2
1c000688:	001035d0 	add.w	$r16,$r14,$r13
1c00068c:	29800206 	st.w	$r6,$r16,0
1c000690:	2a3fe986 	ld.bu	$r6,$r12,-6(0xffa)
1c000694:	00112891 	sub.w	$r17,$r4,$r10
1c000698:	00115088 	sub.w	$r8,$r4,$r20
1c00069c:	004088ca 	slli.w	$r10,$r6,0x2
1c0006a0:	001029cb 	add.w	$r11,$r14,$r10
1c0006a4:	29800165 	st.w	$r5,$r11,0
1c0006a8:	2a3fed85 	ld.bu	$r5,$r12,-5(0xffb)
1c0006ac:	00114894 	sub.w	$r20,$r4,$r18
1c0006b0:	004088b2 	slli.w	$r18,$r5,0x2
1c0006b4:	001049d3 	add.w	$r19,$r14,$r18
1c0006b8:	29800268 	st.w	$r8,$r19,0
1c0006bc:	2a3ff188 	ld.bu	$r8,$r12,-4(0xffc)
1c0006c0:	00408907 	slli.w	$r7,$r8,0x2
1c0006c4:	00101dcd 	add.w	$r13,$r14,$r7
1c0006c8:	298001a9 	st.w	$r9,$r13,0
1c0006cc:	2a3ff589 	ld.bu	$r9,$r12,-3(0xffd)
1c0006d0:	00408930 	slli.w	$r16,$r9,0x2
1c0006d4:	001041c6 	add.w	$r6,$r14,$r16
1c0006d8:	298000cf 	st.w	$r15,$r6,0
1c0006dc:	2a3ff98f 	ld.bu	$r15,$r12,-2(0xffe)
1c0006e0:	004089ea 	slli.w	$r10,$r15,0x2
1c0006e4:	001029cb 	add.w	$r11,$r14,$r10
1c0006e8:	29800171 	st.w	$r17,$r11,0
1c0006ec:	2a3ffd91 	ld.bu	$r17,$r12,-1(0xfff)
1c0006f0:	00408a25 	slli.w	$r5,$r17,0x2
1c0006f4:	001015d2 	add.w	$r18,$r14,$r5
1c0006f8:	29800254 	st.w	$r20,$r18,0
1c0006fc:	5fff402c 	bne	$r1,$r12,-192(0x3ff40) # 1c00063c <init_search+0x13c>
1c000700:	28803061 	ld.w	$r1,$r3,12(0xc)
1c000704:	1c00100e 	pcaddu12i	$r14,128(0x80)
1c000708:	0296b1ce 	addi.w	$r14,$r14,1452(0x5ac)
1c00070c:	298001d7 	st.w	$r23,$r14,0
1c000710:	28802077 	ld.w	$r23,$r3,8(0x8)
1c000714:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000718:	4c000020 	jirl	$r0,$r1,0
1c00071c:	2a0002f2 	ld.bu	$r18,$r23,0
1c000720:	00115c93 	sub.w	$r19,$r4,$r23
1c000724:	028006ec 	addi.w	$r12,$r23,1(0x1)
1c000728:	00408a54 	slli.w	$r20,$r18,0x2
1c00072c:	001051cf 	add.w	$r15,$r14,$r20
1c000730:	298001f3 	st.w	$r19,$r15,0
1c000734:	53fe77ff 	b	-396(0xffffe74) # 1c0005a8 <init_search+0xa8>
1c000738:	03400000 	andi	$r0,$r0,0x0
1c00073c:	03400000 	andi	$r0,$r0,0x0

1c000740 <strsearch>:
strsearch():
1c000740:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c000744:	1c00100c 	pcaddu12i	$r12,128(0x80)
1c000748:	0295c18c 	addi.w	$r12,$r12,1392(0x570)
1c00074c:	2980407d 	st.w	$r29,$r3,16(0x10)
1c000750:	2880019d 	ld.w	$r29,$r12,0
1c000754:	2980a077 	st.w	$r23,$r3,40(0x28)
1c000758:	29809078 	st.w	$r24,$r3,36(0x24)
1c00075c:	29808079 	st.w	$r25,$r3,32(0x20)
1c000760:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c000764:	2980507c 	st.w	$r28,$r3,20(0x14)
1c000768:	2980307e 	st.w	$r30,$r3,12(0xc)
1c00076c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c000770:	2980607b 	st.w	$r27,$r3,24(0x18)
1c000774:	00150098 	move	$r24,$r4
1c000778:	54099800 	bl	2456(0x998) # 1c001110 <strlen>
1c00077c:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c000780:	0294d1ad 	addi.w	$r13,$r13,1332(0x534)
1c000784:	02800405 	addi.w	$r5,$r0,1(0x1)
1c000788:	02bfffb7 	addi.w	$r23,$r29,-1(0xfff)
1c00078c:	1c001019 	pcaddu12i	$r25,128(0x80)
1c000790:	0294b339 	addi.w	$r25,$r25,1324(0x52c)
1c000794:	0015009a 	move	$r26,$r4
1c000798:	288001be 	ld.w	$r30,$r13,0
1c00079c:	001174bc 	sub.w	$r28,$r5,$r29
1c0007a0:	6c0026e4 	bgeu	$r23,$r4,36(0x24) # 1c0007c4 <strsearch+0x84>
1c0007a4:	00105f01 	add.w	$r1,$r24,$r23
1c0007a8:	2a000024 	ld.bu	$r4,$r1,0
1c0007ac:	00408886 	slli.w	$r6,$r4,0x2
1c0007b0:	00101b27 	add.w	$r7,$r25,$r6
1c0007b4:	288000e8 	ld.w	$r8,$r7,0
1c0007b8:	58004100 	beq	$r8,$r0,64(0x40) # 1c0007f8 <strsearch+0xb8>
1c0007bc:	001022f7 	add.w	$r23,$r23,$r8
1c0007c0:	6bffe6fa 	bltu	$r23,$r26,-28(0x3ffe4) # 1c0007a4 <strsearch+0x64>
1c0007c4:	0015001b 	move	$r27,$r0
1c0007c8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0007cc:	00150364 	move	$r4,$r27
1c0007d0:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c0007d4:	28809078 	ld.w	$r24,$r3,36(0x24)
1c0007d8:	28808079 	ld.w	$r25,$r3,32(0x20)
1c0007dc:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c0007e0:	2880607b 	ld.w	$r27,$r3,24(0x18)
1c0007e4:	2880507c 	ld.w	$r28,$r3,20(0x14)
1c0007e8:	2880407d 	ld.w	$r29,$r3,16(0x10)
1c0007ec:	2880307e 	ld.w	$r30,$r3,12(0xc)
1c0007f0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0007f4:	4c000020 	jirl	$r0,$r1,0
1c0007f8:	00105f9b 	add.w	$r27,$r28,$r23
1c0007fc:	00106f1b 	add.w	$r27,$r24,$r27
1c000800:	001503a6 	move	$r6,$r29
1c000804:	001503c4 	move	$r4,$r30
1c000808:	00150365 	move	$r5,$r27
1c00080c:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c000810:	5409d000 	bl	2512(0x9d0) # 1c0011e0 <strncmp>
1c000814:	5fffac80 	bne	$r4,$r0,-84(0x3ffac) # 1c0007c0 <strsearch+0x80>
1c000818:	53ffb3ff 	b	-80(0xfffffb0) # 1c0007c8 <strsearch+0x88>
1c00081c:	03400000 	andi	$r0,$r0,0x0

1c000820 <search_small>:
search_small():
1c000820:	02b44063 	addi.w	$r3,$r3,-752(0xd10)
1c000824:	1c00100c 	pcaddu12i	$r12,128(0x80)
1c000828:	0282318c 	addi.w	$r12,$r12,140(0x8c)
1c00082c:	298bb061 	st.w	$r1,$r3,748(0x2ec)
1c000830:	298ba076 	st.w	$r22,$r3,744(0x2e8)
1c000834:	298b9077 	st.w	$r23,$r3,740(0x2e4)
1c000838:	298b8078 	st.w	$r24,$r3,736(0x2e0)
1c00083c:	298b7079 	st.w	$r25,$r3,732(0x2dc)
1c000840:	298b607a 	st.w	$r26,$r3,728(0x2d8)
1c000844:	298b507b 	st.w	$r27,$r3,724(0x2d4)
1c000848:	298b407c 	st.w	$r28,$r3,720(0x2d0)
1c00084c:	298b307d 	st.w	$r29,$r3,716(0x2cc)
1c000850:	298b207e 	st.w	$r30,$r3,712(0x2c8)
1c000854:	298b107f 	st.w	$r31,$r3,708(0x2c4)
1c000858:	0287606d 	addi.w	$r13,$r3,472(0x1d8)
1c00085c:	02838192 	addi.w	$r18,$r12,224(0xe0)
1c000860:	28800191 	ld.w	$r17,$r12,0
1c000864:	28801190 	ld.w	$r16,$r12,4(0x4)
1c000868:	2880218f 	ld.w	$r15,$r12,8(0x8)
1c00086c:	2880318e 	ld.w	$r14,$r12,12(0xc)
1c000870:	028041ad 	addi.w	$r13,$r13,16(0x10)
1c000874:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c000878:	29bfc1b1 	st.w	$r17,$r13,-16(0xff0)
1c00087c:	29bfd1b0 	st.w	$r16,$r13,-12(0xff4)
1c000880:	29bfe1af 	st.w	$r15,$r13,-8(0xff8)
1c000884:	29bff1ae 	st.w	$r14,$r13,-4(0xffc)
1c000888:	5fffd992 	bne	$r12,$r18,-40(0x3ffd8) # 1c000860 <search_small+0x40>
1c00088c:	28800181 	ld.w	$r1,$r12,0
1c000890:	28801184 	ld.w	$r4,$r12,4(0x4)
1c000894:	1c00100a 	pcaddu12i	$r10,128(0x80)
1c000898:	0284114a 	addi.w	$r10,$r10,260(0x104)
1c00089c:	0280406b 	addi.w	$r11,$r3,16(0x10)
1c0008a0:	02838145 	addi.w	$r5,$r10,224(0xe0)
1c0008a4:	298001a1 	st.w	$r1,$r13,0
1c0008a8:	298011a4 	st.w	$r4,$r13,4(0x4)
1c0008ac:	28800146 	ld.w	$r6,$r10,0
1c0008b0:	28801147 	ld.w	$r7,$r10,4(0x4)
1c0008b4:	28802148 	ld.w	$r8,$r10,8(0x8)
1c0008b8:	28803149 	ld.w	$r9,$r10,12(0xc)
1c0008bc:	0280416b 	addi.w	$r11,$r11,16(0x10)
1c0008c0:	0280414a 	addi.w	$r10,$r10,16(0x10)
1c0008c4:	29bfc166 	st.w	$r6,$r11,-16(0xff0)
1c0008c8:	29bfd167 	st.w	$r7,$r11,-12(0xff4)
1c0008cc:	29bfe168 	st.w	$r8,$r11,-8(0xff8)
1c0008d0:	29bff169 	st.w	$r9,$r11,-4(0xffc)
1c0008d4:	5fffd945 	bne	$r10,$r5,-40(0x3ffd8) # 1c0008ac <search_small+0x8c>
1c0008d8:	28800153 	ld.w	$r19,$r10,0
1c0008dc:	1c00101a 	pcaddu12i	$r26,128(0x80)
1c0008e0:	0286835a 	addi.w	$r26,$r26,416(0x1a0)
1c0008e4:	0283d07c 	addi.w	$r28,$r3,244(0xf4)
1c0008e8:	02838354 	addi.w	$r20,$r26,224(0xe0)
1c0008ec:	29800173 	st.w	$r19,$r11,0
1c0008f0:	28800356 	ld.w	$r22,$r26,0
1c0008f4:	28801357 	ld.w	$r23,$r26,4(0x4)
1c0008f8:	28802358 	ld.w	$r24,$r26,8(0x8)
1c0008fc:	28803359 	ld.w	$r25,$r26,12(0xc)
1c000900:	0280439c 	addi.w	$r28,$r28,16(0x10)
1c000904:	0280435a 	addi.w	$r26,$r26,16(0x10)
1c000908:	29bfc396 	st.w	$r22,$r28,-16(0xff0)
1c00090c:	29bfd397 	st.w	$r23,$r28,-12(0xff4)
1c000910:	29bfe398 	st.w	$r24,$r28,-8(0xff8)
1c000914:	29bff399 	st.w	$r25,$r28,-4(0xffc)
1c000918:	5fffdb54 	bne	$r26,$r20,-40(0x3ffd8) # 1c0008f0 <search_small+0xd0>
1c00091c:	2880035d 	ld.w	$r29,$r26,0
1c000920:	2887607f 	ld.w	$r31,$r3,472(0x1d8)
1c000924:	0015001b 	move	$r27,$r0
1c000928:	2980039d 	st.w	$r29,$r28,0
1c00092c:	5802bfe0 	beq	$r31,$r0,700(0x2bc) # 1c000be8 <search_small+0x3c8>
1c000930:	1c001016 	pcaddu12i	$r22,128(0x80)
1c000934:	028e22d6 	addi.w	$r22,$r22,904(0x388)
1c000938:	0287707a 	addi.w	$r26,$r3,476(0x1dc)
1c00093c:	0283d078 	addi.w	$r24,$r3,244(0xf4)
1c000940:	02804079 	addi.w	$r25,$r3,16(0x10)
1c000944:	001503e4 	move	$r4,$r31
1c000948:	5407c800 	bl	1992(0x7c8) # 1c001110 <strlen>
1c00094c:	1c001012 	pcaddu12i	$r18,128(0x80)
1c000950:	028da252 	addi.w	$r18,$r18,872(0x368)
1c000954:	0015009e 	move	$r30,$r4
1c000958:	1c001011 	pcaddu12i	$r17,128(0x80)
1c00095c:	028d8231 	addi.w	$r17,$r17,864(0x360)
1c000960:	29800244 	st.w	$r4,$r18,0
1c000964:	1c001010 	pcaddu12i	$r16,128(0x80)
1c000968:	028d5210 	addi.w	$r16,$r16,852(0x354)
1c00096c:	2980023e 	st.w	$r30,$r17,0
1c000970:	2980123e 	st.w	$r30,$r17,4(0x4)
1c000974:	2980223e 	st.w	$r30,$r17,8(0x8)
1c000978:	2980323e 	st.w	$r30,$r17,12(0xc)
1c00097c:	2980423e 	st.w	$r30,$r17,16(0x10)
1c000980:	2980523e 	st.w	$r30,$r17,20(0x14)
1c000984:	2980623e 	st.w	$r30,$r17,24(0x18)
1c000988:	2980723e 	st.w	$r30,$r17,28(0x1c)
1c00098c:	0290020f 	addi.w	$r15,$r16,1024(0x400)
1c000990:	02808231 	addi.w	$r17,$r17,32(0x20)
1c000994:	5fffd1f1 	bne	$r15,$r17,-48(0x3ffd0) # 1c000964 <search_small+0x144>
1c000998:	02bfffdd 	addi.w	$r29,$r30,-1(0xfff)
1c00099c:	00107fce 	add.w	$r14,$r30,$r31
1c0009a0:	001503ec 	move	$r12,$r31
1c0009a4:	001077ed 	add.w	$r13,$r31,$r29
1c0009a8:	5802f3c0 	beq	$r30,$r0,752(0x2f0) # 1c000c98 <search_small+0x478>
1c0009ac:	00117dc1 	sub.w	$r1,$r14,$r31
1c0009b0:	03401c24 	andi	$r4,$r1,0x7
1c0009b4:	5800e080 	beq	$r4,$r0,224(0xe0) # 1c000a94 <search_small+0x274>
1c0009b8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0009bc:	5800bc85 	beq	$r4,$r5,188(0xbc) # 1c000a78 <search_small+0x258>
1c0009c0:	02800806 	addi.w	$r6,$r0,2(0x2)
1c0009c4:	58009c86 	beq	$r4,$r6,156(0x9c) # 1c000a60 <search_small+0x240>
1c0009c8:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c0009cc:	58007c87 	beq	$r4,$r7,124(0x7c) # 1c000a48 <search_small+0x228>
1c0009d0:	02801008 	addi.w	$r8,$r0,4(0x4)
1c0009d4:	58005c88 	beq	$r4,$r8,92(0x5c) # 1c000a30 <search_small+0x210>
1c0009d8:	02801409 	addi.w	$r9,$r0,5(0x5)
1c0009dc:	58003c89 	beq	$r4,$r9,60(0x3c) # 1c000a18 <search_small+0x1f8>
1c0009e0:	0280180a 	addi.w	$r10,$r0,6(0x6)
1c0009e4:	58001c8a 	beq	$r4,$r10,28(0x1c) # 1c000a00 <search_small+0x1e0>
1c0009e8:	2a0003ec 	ld.bu	$r12,$r31,0
1c0009ec:	00117db4 	sub.w	$r20,$r13,$r31
1c0009f0:	0040898b 	slli.w	$r11,$r12,0x2
1c0009f4:	00102ed3 	add.w	$r19,$r22,$r11
1c0009f8:	29800274 	st.w	$r20,$r19,0
1c0009fc:	028007ec 	addi.w	$r12,$r31,1(0x1)
1c000a00:	2a000197 	ld.bu	$r23,$r12,0
1c000a04:	001131b1 	sub.w	$r17,$r13,$r12
1c000a08:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a0c:	00408af2 	slli.w	$r18,$r23,0x2
1c000a10:	00104ad0 	add.w	$r16,$r22,$r18
1c000a14:	29800211 	st.w	$r17,$r16,0
1c000a18:	2a00018f 	ld.bu	$r15,$r12,0
1c000a1c:	001131bc 	sub.w	$r28,$r13,$r12
1c000a20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a24:	004089e1 	slli.w	$r1,$r15,0x2
1c000a28:	001006c4 	add.w	$r4,$r22,$r1
1c000a2c:	2980009c 	st.w	$r28,$r4,0
1c000a30:	2a000185 	ld.bu	$r5,$r12,0
1c000a34:	001131a6 	sub.w	$r6,$r13,$r12
1c000a38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a3c:	004088a7 	slli.w	$r7,$r5,0x2
1c000a40:	00101ec8 	add.w	$r8,$r22,$r7
1c000a44:	29800106 	st.w	$r6,$r8,0
1c000a48:	2a000189 	ld.bu	$r9,$r12,0
1c000a4c:	001131aa 	sub.w	$r10,$r13,$r12
1c000a50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a54:	0040892b 	slli.w	$r11,$r9,0x2
1c000a58:	00102ed3 	add.w	$r19,$r22,$r11
1c000a5c:	2980026a 	st.w	$r10,$r19,0
1c000a60:	2a000197 	ld.bu	$r23,$r12,0
1c000a64:	001131b4 	sub.w	$r20,$r13,$r12
1c000a68:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a6c:	00408af1 	slli.w	$r17,$r23,0x2
1c000a70:	001046d2 	add.w	$r18,$r22,$r17
1c000a74:	29800254 	st.w	$r20,$r18,0
1c000a78:	2a000190 	ld.bu	$r16,$r12,0
1c000a7c:	001131af 	sub.w	$r15,$r13,$r12
1c000a80:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a84:	00408a1c 	slli.w	$r28,$r16,0x2
1c000a88:	001072c1 	add.w	$r1,$r22,$r28
1c000a8c:	2980002f 	st.w	$r15,$r1,0
1c000a90:	5800c9cc 	beq	$r14,$r12,200(0xc8) # 1c000b58 <search_small+0x338>
1c000a94:	2a000189 	ld.bu	$r9,$r12,0
1c000a98:	001131a4 	sub.w	$r4,$r13,$r12
1c000a9c:	02800585 	addi.w	$r5,$r12,1(0x1)
1c000aa0:	00408931 	slli.w	$r17,$r9,0x2
1c000aa4:	001046d2 	add.w	$r18,$r22,$r17
1c000aa8:	29800244 	st.w	$r4,$r18,0
1c000aac:	2a00058f 	ld.bu	$r15,$r12,1(0x1)
1c000ab0:	001115a8 	sub.w	$r8,$r13,$r5
1c000ab4:	02800986 	addi.w	$r6,$r12,2(0x2)
1c000ab8:	004089e9 	slli.w	$r9,$r15,0x2
1c000abc:	001026c4 	add.w	$r4,$r22,$r9
1c000ac0:	29800088 	st.w	$r8,$r4,0
1c000ac4:	2a000985 	ld.bu	$r5,$r12,2(0x2)
1c000ac8:	001119aa 	sub.w	$r10,$r13,$r6
1c000acc:	02801594 	addi.w	$r20,$r12,5(0x5)
1c000ad0:	004088a6 	slli.w	$r6,$r5,0x2
1c000ad4:	00101ac8 	add.w	$r8,$r22,$r6
1c000ad8:	2980010a 	st.w	$r10,$r8,0
1c000adc:	2a000d8a 	ld.bu	$r10,$r12,3(0x3)
1c000ae0:	02800d87 	addi.w	$r7,$r12,3(0x3)
1c000ae4:	001151b0 	sub.w	$r16,$r13,$r20
1c000ae8:	00408954 	slli.w	$r20,$r10,0x2
1c000aec:	00111db3 	sub.w	$r19,$r13,$r7
1c000af0:	001052d1 	add.w	$r17,$r22,$r20
1c000af4:	29800233 	st.w	$r19,$r17,0
1c000af8:	2a001193 	ld.bu	$r19,$r12,4(0x4)
1c000afc:	0280118b 	addi.w	$r11,$r12,4(0x4)
1c000b00:	00112db7 	sub.w	$r23,$r13,$r11
1c000b04:	00408a72 	slli.w	$r18,$r19,0x2
1c000b08:	00104acf 	add.w	$r15,$r22,$r18
1c000b0c:	298001f7 	st.w	$r23,$r15,0
1c000b10:	2a001597 	ld.bu	$r23,$r12,5(0x5)
1c000b14:	0280199c 	addi.w	$r28,$r12,6(0x6)
1c000b18:	001171a1 	sub.w	$r1,$r13,$r28
1c000b1c:	00408afc 	slli.w	$r28,$r23,0x2
1c000b20:	001072c9 	add.w	$r9,$r22,$r28
1c000b24:	02801d87 	addi.w	$r7,$r12,7(0x7)
1c000b28:	29800130 	st.w	$r16,$r9,0
1c000b2c:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c000b30:	2a3ff990 	ld.bu	$r16,$r12,-2(0xffe)
1c000b34:	00111dab 	sub.w	$r11,$r13,$r7
1c000b38:	00408a04 	slli.w	$r4,$r16,0x2
1c000b3c:	001012c5 	add.w	$r5,$r22,$r4
1c000b40:	298000a1 	st.w	$r1,$r5,0
1c000b44:	2a3ffd81 	ld.bu	$r1,$r12,-1(0xfff)
1c000b48:	00408826 	slli.w	$r6,$r1,0x2
1c000b4c:	00101ac8 	add.w	$r8,$r22,$r6
1c000b50:	2980010b 	st.w	$r11,$r8,0
1c000b54:	5fff41cc 	bne	$r14,$r12,-192(0x3ff40) # 1c000a94 <search_small+0x274>
1c000b58:	2880033c 	ld.w	$r28,$r25,0
1c000b5c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c000b60:	1c00100e 	pcaddu12i	$r14,128(0x80)
1c000b64:	028541ce 	addi.w	$r14,$r14,336(0x150)
1c000b68:	001179ac 	sub.w	$r12,$r13,$r30
1c000b6c:	00150384 	move	$r4,$r28
1c000b70:	298001df 	st.w	$r31,$r14,0
1c000b74:	2980206c 	st.w	$r12,$r3,8(0x8)
1c000b78:	54059800 	bl	1432(0x598) # 1c001110 <strlen>
1c000b7c:	0015008f 	move	$r15,$r4
1c000b80:	6c0027a4 	bgeu	$r29,$r4,36(0x24) # 1c000ba4 <search_small+0x384>
1c000b84:	0010778a 	add.w	$r10,$r28,$r29
1c000b88:	2a000147 	ld.bu	$r7,$r10,0
1c000b8c:	004088eb 	slli.w	$r11,$r7,0x2
1c000b90:	00102ed4 	add.w	$r20,$r22,$r11
1c000b94:	28800291 	ld.w	$r17,$r20,0
1c000b98:	58008a20 	beq	$r17,$r0,136(0x88) # 1c000c20 <search_small+0x400>
1c000b9c:	001047bd 	add.w	$r29,$r29,$r17
1c000ba0:	6bffe7af 	bltu	$r29,$r15,-28(0x3ffe4) # 1c000b84 <search_small+0x364>
1c000ba4:	00150387 	move	$r7,$r28
1c000ba8:	1c001006 	pcaddu12i	$r6,128(0x80)
1c000bac:	02a350c6 	addi.w	$r6,$r6,-1836(0x8d4)
1c000bb0:	001503e5 	move	$r5,$r31
1c000bb4:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000bb8:	0293d084 	addi.w	$r4,$r4,1268(0x4f4)
1c000bbc:	5400f400 	bl	244(0xf4) # 1c000cb0 <printf>
1c000bc0:	02802804 	addi.w	$r4,$r0,10(0xa)
1c000bc4:	54032c00 	bl	812(0x32c) # 1c000ef0 <putchar>
1c000bc8:	2880031c 	ld.w	$r28,$r24,0
1c000bcc:	0012f009 	sltu	$r9,$r0,$r28
1c000bd0:	0010277b 	add.w	$r27,$r27,$r9
1c000bd4:	2880035f 	ld.w	$r31,$r26,0
1c000bd8:	02801318 	addi.w	$r24,$r24,4(0x4)
1c000bdc:	0280135a 	addi.w	$r26,$r26,4(0x4)
1c000be0:	02801339 	addi.w	$r25,$r25,4(0x4)
1c000be4:	5ffd63e0 	bne	$r31,$r0,-672(0x3fd60) # 1c000944 <search_small+0x124>
1c000be8:	288bb061 	ld.w	$r1,$r3,748(0x2ec)
1c000bec:	288ba076 	ld.w	$r22,$r3,744(0x2e8)
1c000bf0:	00150364 	move	$r4,$r27
1c000bf4:	288b9077 	ld.w	$r23,$r3,740(0x2e4)
1c000bf8:	288b8078 	ld.w	$r24,$r3,736(0x2e0)
1c000bfc:	288b7079 	ld.w	$r25,$r3,732(0x2dc)
1c000c00:	288b607a 	ld.w	$r26,$r3,728(0x2d8)
1c000c04:	288b507b 	ld.w	$r27,$r3,724(0x2d4)
1c000c08:	288b407c 	ld.w	$r28,$r3,720(0x2d0)
1c000c0c:	288b307d 	ld.w	$r29,$r3,716(0x2cc)
1c000c10:	288b207e 	ld.w	$r30,$r3,712(0x2c8)
1c000c14:	288b107f 	ld.w	$r31,$r3,708(0x2c4)
1c000c18:	028bc063 	addi.w	$r3,$r3,752(0x2f0)
1c000c1c:	4c000020 	jirl	$r0,$r1,0
1c000c20:	28802073 	ld.w	$r19,$r3,8(0x8)
1c000c24:	001503c6 	move	$r6,$r30
1c000c28:	001503e4 	move	$r4,$r31
1c000c2c:	00107672 	add.w	$r18,$r19,$r29
1c000c30:	00104b97 	add.w	$r23,$r28,$r18
1c000c34:	001502e5 	move	$r5,$r23
1c000c38:	2980306f 	st.w	$r15,$r3,12(0xc)
1c000c3c:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c000c40:	5405a000 	bl	1440(0x5a0) # 1c0011e0 <strncmp>
1c000c44:	58001080 	beq	$r4,$r0,16(0x10) # 1c000c54 <search_small+0x434>
1c000c48:	2880306f 	ld.w	$r15,$r3,12(0xc)
1c000c4c:	6bff3baf 	bltu	$r29,$r15,-200(0x3ff38) # 1c000b84 <search_small+0x364>
1c000c50:	53ff57ff 	b	-172(0xfffff54) # 1c000ba4 <search_small+0x384>
1c000c54:	00150387 	move	$r7,$r28
1c000c58:	1c000fe6 	pcaddu12i	$r6,127(0x7f)
1c000c5c:	029f70c6 	addi.w	$r6,$r6,2012(0x7dc)
1c000c60:	001503e5 	move	$r5,$r31
1c000c64:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000c68:	02911084 	addi.w	$r4,$r4,1092(0x444)
1c000c6c:	54004400 	bl	68(0x44) # 1c000cb0 <printf>
1c000c70:	001502e5 	move	$r5,$r23
1c000c74:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000c78:	02912084 	addi.w	$r4,$r4,1096(0x448)
1c000c7c:	54003400 	bl	52(0x34) # 1c000cb0 <printf>
1c000c80:	02802804 	addi.w	$r4,$r0,10(0xa)
1c000c84:	54026c00 	bl	620(0x26c) # 1c000ef0 <putchar>
1c000c88:	2880031f 	ld.w	$r31,$r24,0
1c000c8c:	024007fe 	sltui	$r30,$r31,1(0x1)
1c000c90:	00107b7b 	add.w	$r27,$r27,$r30
1c000c94:	53ff43ff 	b	-192(0xfffff40) # 1c000bd4 <search_small+0x3b4>
1c000c98:	1c00101e 	pcaddu12i	$r30,128(0x80)
1c000c9c:	028063de 	addi.w	$r30,$r30,24(0x18)
1c000ca0:	298003df 	st.w	$r31,$r30,0
1c000ca4:	2880033c 	ld.w	$r28,$r25,0
1c000ca8:	53feffff 	b	-260(0xffffefc) # 1c000ba4 <search_small+0x384>
1c000cac:	03400000 	andi	$r0,$r0,0x0

1c000cb0 <printf>:
printf():
/code/fpga/nscscc-team/software/perf/lib/printf.c:2
int printf(const char *fmt,...)
{
1c000cb0:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c000cb4:	2980b07a 	st.w	$r26,$r3,44(0x2c)
1c000cb8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c000cbc:	2980e077 	st.w	$r23,$r3,56(0x38)
1c000cc0:	2980d078 	st.w	$r24,$r3,52(0x34)
1c000cc4:	2980c079 	st.w	$r25,$r3,48(0x30)
1c000cc8:	2980a07b 	st.w	$r27,$r3,40(0x28)
1c000ccc:	2980907c 	st.w	$r28,$r3,36(0x24)
1c000cd0:	29811065 	st.w	$r5,$r3,68(0x44)
1c000cd4:	29812066 	st.w	$r6,$r3,72(0x48)
/code/fpga/nscscc-team/software/perf/lib/printf.c:10
void **arg;
void *ap;
int w;
__builtin_va_start(ap,fmt);
arg=ap;
for(i=0;fmt[i];i++)
1c000cd8:	28000097 	ld.b	$r23,$r4,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c000cdc:	0281107a 	addi.w	$r26,$r3,68(0x44)
/code/fpga/nscscc-team/software/perf/lib/printf.c:2
{
1c000ce0:	29813067 	st.w	$r7,$r3,76(0x4c)
1c000ce4:	29814068 	st.w	$r8,$r3,80(0x50)
1c000ce8:	29815069 	st.w	$r9,$r3,84(0x54)
1c000cec:	2981606a 	st.w	$r10,$r3,88(0x58)
1c000cf0:	2981706b 	st.w	$r11,$r3,92(0x5c)
/code/fpga/nscscc-team/software/perf/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c000cf4:	2980707a 	st.w	$r26,$r3,28(0x1c)
/code/fpga/nscscc-team/software/perf/lib/printf.c:10
for(i=0;fmt[i];i++)
1c000cf8:	58008ae0 	beq	$r23,$r0,136(0x88) # 1c000d80 <printf+0xd0>
1c000cfc:	00150099 	move	$r25,$r4
1c000d00:	00150018 	move	$r24,$r0
1c000d04:	1c00101c 	pcaddu12i	$r28,128(0x80)
1c000d08:	02b9739c 	addi.w	$r28,$r28,-420(0xe5c)
1c000d0c:	0280201b 	addi.w	$r27,$r0,8(0x8)
1c000d10:	50001c00 	b	28(0x1c) # 1c000d2c <printf+0x7c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:80
		}

	}
	else{
		if(c=='\n') putchar('\r');
		putchar(c);
1c000d14:	001502e4 	move	$r4,$r23
1c000d18:	5401d800 	bl	472(0x1d8) # 1c000ef0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:10 (discriminator 2)
for(i=0;fmt[i];i++)
1c000d1c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c000d20:	0010632c 	add.w	$r12,$r25,$r24
1c000d24:	28000197 	ld.b	$r23,$r12,0
1c000d28:	58005ae0 	beq	$r23,$r0,88(0x58) # 1c000d80 <printf+0xd0>
/code/fpga/nscscc-team/software/perf/lib/printf.c:13
	if(c=='%')
1c000d2c:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c000d30:	58001aec 	beq	$r23,$r12,24(0x18) # 1c000d48 <printf+0x98>
/code/fpga/nscscc-team/software/perf/lib/printf.c:79
		if(c=='\n') putchar('\r');
1c000d34:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c000d38:	5fffdeec 	bne	$r23,$r12,-36(0x3ffdc) # 1c000d14 <printf+0x64>
/code/fpga/nscscc-team/software/perf/lib/printf.c:79 (discriminator 1)
1c000d3c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c000d40:	5401b000 	bl	432(0x1b0) # 1c000ef0 <putchar>
1c000d44:	53ffd3ff 	b	-48(0xfffffd0) # 1c000d14 <printf+0x64>
1c000d48:	0010632c 	add.w	$r12,$r25,$r24
1c000d4c:	2800058d 	ld.b	$r13,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:15
		w=1;
1c000d50:	02800405 	addi.w	$r5,$r0,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:17
		switch(fmt[i+1])
1c000d54:	02814c10 	addi.w	$r16,$r0,83(0x53)
/code/fpga/nscscc-team/software/perf/lib/printf.c:68
				 w=w*10+(fmt[i+1]-'0');
1c000d58:	0280280f 	addi.w	$r15,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:17
		switch(fmt[i+1])
1c000d5c:	02bf6dac 	addi.w	$r12,$r13,-37(0xfdb)
1c000d60:	2980306c 	st.w	$r12,$r3,12(0xc)
1c000d64:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c000d68:	68017a0c 	bltu	$r16,$r12,376(0x178) # 1c000ee0 <printf+0x230>
1c000d6c:	0040898c 	slli.w	$r12,$r12,0x2
1c000d70:	0010338c 	add.w	$r12,$r28,$r12
1c000d74:	2880018c 	ld.w	$r12,$r12,0
1c000d78:	4c000180 	jirl	$r0,$r12,0
1c000d7c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:84
	}
}
	return 0;
}
1c000d80:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c000d84:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c000d88:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c000d8c:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c000d90:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c000d94:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c000d98:	2880907c 	ld.w	$r28,$r3,36(0x24)
1c000d9c:	00150004 	move	$r4,$r0
1c000da0:	02818063 	addi.w	$r3,$r3,96(0x60)
1c000da4:	4c000020 	jirl	$r0,$r1,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:65
				i++;
1c000da8:	0010632c 	add.w	$r12,$r25,$r24
1c000dac:	2800098d 	ld.b	$r13,$r12,2(0x2)
1c000db0:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 1)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000db4:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c000db8:	2980306c 	st.w	$r12,$r3,12(0xc)
1c000dbc:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c000dc0:	00150005 	move	$r5,$r0
1c000dc4:	6bff9b6c 	bltu	$r27,$r12,-104(0x3ff98) # 1c000d5c <printf+0xac>
/code/fpga/nscscc-team/software/perf/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c000dc8:	001c3ca5 	mul.w	$r5,$r5,$r15
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000dcc:	02800718 	addi.w	$r24,$r24,1(0x1)
1c000dd0:	0010632c 	add.w	$r12,$r25,$r24
/code/fpga/nscscc-team/software/perf/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c000dd4:	02bf41ae 	addi.w	$r14,$r13,-48(0xfd0)
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000dd8:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c000ddc:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c000de0:	2980306c 	st.w	$r12,$r3,12(0xc)
1c000de4:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c000de8:	001015c5 	add.w	$r5,$r14,$r5
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c000dec:	6fffdf6c 	bgeu	$r27,$r12,-36(0x3ffdc) # 1c000dc8 <printf+0x118>
1c000df0:	53ff6fff 	b	-148(0xfffff6c) # 1c000d5c <printf+0xac>
/code/fpga/nscscc-team/software/perf/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c000df4:	28800344 	ld.w	$r4,$r26,0
1c000df8:	00150007 	move	$r7,$r0
1c000dfc:	02800806 	addi.w	$r6,$r0,2(0x2)
/code/fpga/nscscc-team/software/perf/lib/printf.c:51
				arg++;
1c000e00:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:52
				i++;
1c000e04:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c000e08:	54021800 	bl	536(0x218) # 1c001020 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:53
				break;
1c000e0c:	53ff13ff 	b	-240(0xfffff10) # 1c000d1c <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:25
				putchar((long)*arg);
1c000e10:	28800344 	ld.w	$r4,$r26,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:27
				i++;
1c000e14:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:26
				arg++;
1c000e18:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:25
				putchar((long)*arg);
1c000e1c:	5400d400 	bl	212(0xd4) # 1c000ef0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:28
				break;
1c000e20:	53feffff 	b	-260(0xffffefc) # 1c000d1c <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c000e24:	28800344 	ld.w	$r4,$r26,0
1c000e28:	02800407 	addi.w	$r7,$r0,1(0x1)
1c000e2c:	02802806 	addi.w	$r6,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:36
				arg++;
1c000e30:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:37
				i++;
1c000e34:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c000e38:	5401e800 	bl	488(0x1e8) # 1c001020 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:38
				break;
1c000e3c:	53fee3ff 	b	-288(0xffffee0) # 1c000d1c <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c000e40:	28800344 	ld.w	$r4,$r26,0
1c000e44:	00150007 	move	$r7,$r0
1c000e48:	02802806 	addi.w	$r6,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:41
                arg++;
1c000e4c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:42
                i=i+2;
1c000e50:	02800b18 	addi.w	$r24,$r24,2(0x2)
/code/fpga/nscscc-team/software/perf/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c000e54:	5401cc00 	bl	460(0x1cc) # 1c001020 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:43
                break;
1c000e58:	53fec7ff 	b	-316(0xffffec4) # 1c000d1c <printf+0x6c>
1c000e5c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c000e60:	28800344 	ld.w	$r4,$r26,0
1c000e64:	00150007 	move	$r7,$r0
1c000e68:	02802006 	addi.w	$r6,$r0,8(0x8)
/code/fpga/nscscc-team/software/perf/lib/printf.c:46
				arg++;
1c000e6c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:47
				i++;
1c000e70:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c000e74:	5401ac00 	bl	428(0x1ac) # 1c001020 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:48
				break;
1c000e78:	53fea7ff 	b	-348(0xffffea4) # 1c000d1c <printf+0x6c>
1c000e7c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c000e80:	28800344 	ld.w	$r4,$r26,0
1c000e84:	00150007 	move	$r7,$r0
1c000e88:	02804006 	addi.w	$r6,$r0,16(0x10)
/code/fpga/nscscc-team/software/perf/lib/printf.c:57
				arg++;
1c000e8c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:58
				i++;
1c000e90:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c000e94:	54018c00 	bl	396(0x18c) # 1c001020 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:59
				break;
1c000e98:	53fe87ff 	b	-380(0xffffe84) # 1c000d1c <printf+0x6c>
1c000e9c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:20
				putstring(*arg);
1c000ea0:	28800344 	ld.w	$r4,$r26,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:22
				i++;
1c000ea4:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:21
				arg++;
1c000ea8:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:20
				putstring(*arg);
1c000eac:	5400c400 	bl	196(0xc4) # 1c000f70 <putstring>
/code/fpga/nscscc-team/software/perf/lib/printf.c:23
				break;
1c000eb0:	53fe6fff 	b	-404(0xffffe6c) # 1c000d1c <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c000eb4:	28800344 	ld.w	$r4,$r26,0
1c000eb8:	00150007 	move	$r7,$r0
1c000ebc:	02802806 	addi.w	$r6,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:31
				arg++;
1c000ec0:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:32
				i++;
1c000ec4:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c000ec8:	54015800 	bl	344(0x158) # 1c001020 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:33
				break;
1c000ecc:	53fe53ff 	b	-432(0xffffe50) # 1c000d1c <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:61
				putchar('%');
1c000ed0:	02809404 	addi.w	$r4,$r0,37(0x25)
/code/fpga/nscscc-team/software/perf/lib/printf.c:62
				i++;
1c000ed4:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:61
				putchar('%');
1c000ed8:	54001800 	bl	24(0x18) # 1c000ef0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:63
				break;
1c000edc:	53fe43ff 	b	-448(0xffffe40) # 1c000d1c <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:73
				putchar('%');
1c000ee0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c000ee4:	54000c00 	bl	12(0xc) # 1c000ef0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:74
				break;
1c000ee8:	53fe37ff 	b	-460(0xffffe34) # 1c000d1c <printf+0x6c>
1c000eec:	03400000 	andi	$r0,$r0,0x0

1c000ef0 <putchar>:
putchar():
/code/fpga/nscscc-team/software/perf/lib/putchar.c:2
int putchar(int c)
{
1c000ef0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000ef4:	29803079 	st.w	$r25,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/putchar.c:9
return 0;
}

void tgt_putchar(c)
{   //UART_ADDR
    asm(
1c000ef8:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c000efc:	03bc4339 	ori	$r25,$r25,0xf10
1c000f00:	29000324 	st.b	$r4,$r25,0
1c000f04:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/putchar.c:5
}
1c000f08:	00150004 	move	$r4,$r0
1c000f0c:	28803079 	ld.w	$r25,$r3,12(0xc)
1c000f10:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000f14:	4c000020 	jirl	$r0,$r1,0
1c000f18:	03400000 	andi	$r0,$r0,0x0
1c000f1c:	03400000 	andi	$r0,$r0,0x0

1c000f20 <tgt_putchar>:
tgt_putchar():
/code/fpga/nscscc-team/software/perf/lib/putchar.c:8
{   //UART_ADDR
1c000f20:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000f24:	29803079 	st.w	$r25,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/putchar.c:9
    asm(
1c000f28:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c000f2c:	03bc4339 	ori	$r25,$r25,0xf10
1c000f30:	29000324 	st.b	$r4,$r25,0
1c000f34:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/putchar.c:16
        "st.b %0,$r25,0\n\t"        
        "nop\n\t"
        :
        :"r"(c)
        :"$r25");
}
1c000f38:	28803079 	ld.w	$r25,$r3,12(0xc)
1c000f3c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000f40:	4c000020 	jirl	$r0,$r1,0
1c000f44:	03400000 	andi	$r0,$r0,0x0
1c000f48:	03400000 	andi	$r0,$r0,0x0
1c000f4c:	03400000 	andi	$r0,$r0,0x0

1c000f50 <uart_putchar>:
uart_putchar():
/code/fpga/nscscc-team/software/perf/lib/putchar.c:20

void uart_putchar (int c)
{
    while ((*((volatile uint32_t *)0xbeaf0004)) & 0x1);
1c000f50:	157d5e0e 	lu12i.w	$r14,-267536(0xbeaf0)
1c000f54:	038011cd 	ori	$r13,$r14,0x4
/code/fpga/nscscc-team/software/perf/lib/putchar.c:20 (discriminator 1)
1c000f58:	288001ac 	ld.w	$r12,$r13,0
1c000f5c:	0340058c 	andi	$r12,$r12,0x1
1c000f60:	5ffff980 	bne	$r12,$r0,-8(0x3fff8) # 1c000f58 <uart_putchar+0x8>
/code/fpga/nscscc-team/software/perf/lib/putchar.c:21
    (*((volatile uint32_t *)0xbeaf000c)) = c;
1c000f64:	038031ce 	ori	$r14,$r14,0xc
1c000f68:	298001c4 	st.w	$r4,$r14,0
/code/fpga/nscscc-team/software/perf/lib/putchar.c:22
}
1c000f6c:	4c000020 	jirl	$r0,$r1,0

1c000f70 <putstring>:
putstring():
/code/fpga/nscscc-team/software/perf/lib/puts.c:2
int putstring(char *s)
{
1c000f70:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000f74:	29803061 	st.w	$r1,$r3,12(0xc)
1c000f78:	29802077 	st.w	$r23,$r3,8(0x8)
1c000f7c:	29801078 	st.w	$r24,$r3,4(0x4)
1c000f80:	29800079 	st.w	$r25,$r3,0
/code/fpga/nscscc-team/software/perf/lib/puts.c:4
char c;
while((c=*s))
1c000f84:	28000097 	ld.b	$r23,$r4,0
1c000f88:	580042e0 	beq	$r23,$r0,64(0x40) # 1c000fc8 <putstring+0x58>
1c000f8c:	00150098 	move	$r24,$r4
/code/fpga/nscscc-team/software/perf/lib/puts.c:6
{
 if(c == '\n') putchar('\r');
1c000f90:	02802819 	addi.w	$r25,$r0,10(0xa)
1c000f94:	50001400 	b	20(0x14) # 1c000fa8 <putstring+0x38>
/code/fpga/nscscc-team/software/perf/lib/puts.c:7
 putchar(c);
1c000f98:	001502e4 	move	$r4,$r23
1c000f9c:	57ff57ff 	bl	-172(0xfffff54) # 1c000ef0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:4
while((c=*s))
1c000fa0:	28000317 	ld.b	$r23,$r24,0
1c000fa4:	580026e0 	beq	$r23,$r0,36(0x24) # 1c000fc8 <putstring+0x58>
/code/fpga/nscscc-team/software/perf/lib/puts.c:8
 s++;
1c000fa8:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/puts.c:6
 if(c == '\n') putchar('\r');
1c000fac:	5fffeef9 	bne	$r23,$r25,-20(0x3ffec) # 1c000f98 <putstring+0x28>
/code/fpga/nscscc-team/software/perf/lib/puts.c:6 (discriminator 1)
1c000fb0:	02803404 	addi.w	$r4,$r0,13(0xd)
1c000fb4:	57ff3fff 	bl	-196(0xfffff3c) # 1c000ef0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:7 (discriminator 1)
 putchar(c);
1c000fb8:	001502e4 	move	$r4,$r23
1c000fbc:	57ff37ff 	bl	-204(0xfffff34) # 1c000ef0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:4 (discriminator 1)
while((c=*s))
1c000fc0:	28000317 	ld.b	$r23,$r24,0
1c000fc4:	5fffe6e0 	bne	$r23,$r0,-28(0x3ffe4) # 1c000fa8 <putstring+0x38>
/code/fpga/nscscc-team/software/perf/lib/puts.c:11
}
return 0;
}
1c000fc8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c000fcc:	28802077 	ld.w	$r23,$r3,8(0x8)
1c000fd0:	28801078 	ld.w	$r24,$r3,4(0x4)
1c000fd4:	28800079 	ld.w	$r25,$r3,0
1c000fd8:	00150004 	move	$r4,$r0
1c000fdc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000fe0:	4c000020 	jirl	$r0,$r1,0
1c000fe4:	03400000 	andi	$r0,$r0,0x0
1c000fe8:	03400000 	andi	$r0,$r0,0x0
1c000fec:	03400000 	andi	$r0,$r0,0x0

1c000ff0 <puts>:
puts():
/code/fpga/nscscc-team/software/perf/lib/puts.c:15


int puts(char *s)
{
1c000ff0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c000ff4:	29803061 	st.w	$r1,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/puts.c:16
putstring(s);
1c000ff8:	57ff7bff 	bl	-136(0xfffff78) # 1c000f70 <putstring>
/code/fpga/nscscc-team/software/perf/lib/puts.c:17
putchar('\r');
1c000ffc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001000:	57fef3ff 	bl	-272(0xffffef0) # 1c000ef0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:18
putchar('\n');
1c001004:	02802804 	addi.w	$r4,$r0,10(0xa)
1c001008:	57feebff 	bl	-280(0xffffee8) # 1c000ef0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:20
return 0;
}
1c00100c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001010:	00150004 	move	$r4,$r0
1c001014:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001018:	4c000020 	jirl	$r0,$r1,0
1c00101c:	03400000 	andi	$r0,$r0,0x0

1c001020 <printbase>:
printbase():
/code/fpga/nscscc-team/software/perf/lib/printbase.c:2
int printbase(long v,int w,int base,int sign)
{
1c001020:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001024:	29816077 	st.w	$r23,$r3,88(0x58)
1c001028:	29817061 	st.w	$r1,$r3,92(0x5c)
1c00102c:	29815078 	st.w	$r24,$r3,84(0x54)
1c001030:	29814079 	st.w	$r25,$r3,80(0x50)
1c001034:	00150097 	move	$r23,$r4
/code/fpga/nscscc-team/software/perf/lib/printbase.c:7
	int i,j;
	int c;
	char buf[64];
	unsigned long value;
	if(sign && v<0)
1c001038:	580008e0 	beq	$r7,$r0,8(0x8) # 1c001040 <printbase+0x20>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:7 (discriminator 1)
1c00103c:	6000a480 	blt	$r4,$r0,164(0xa4) # 1c0010e0 <printbase+0xc0>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:14
	value = -v;
	putchar('-');
	}
	else value=v;

	for(i=0;value;i++)
1c001040:	5800c2e0 	beq	$r23,$r0,192(0xc0) # 1c001100 <printbase+0xe0>
1c001044:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c001048:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00104c:	001131ce 	sub.w	$r14,$r14,$r12
1c001050:	50000800 	b	8(0x8) # 1c001058 <printbase+0x38>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:17
	{
	buf[i]=value%base;
	value=value/base;
1c001054:	001501b7 	move	$r23,$r13
/code/fpga/nscscc-team/software/perf/lib/printbase.c:16 (discriminator 3)
	buf[i]=value%base;
1c001058:	00219aed 	mod.wu	$r13,$r23,$r6
1c00105c:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c001064 <printbase+0x44>
1c001060:	002a0007 	break	0x7
1c001064:	2900018d 	st.b	$r13,$r12,0
/code/fpga/nscscc-team/software/perf/lib/printbase.c:17 (discriminator 3)
	value=value/base;
1c001068:	001031d8 	add.w	$r24,$r14,$r12
1c00106c:	00211aed 	div.wu	$r13,$r23,$r6
1c001070:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c001078 <printbase+0x58>
1c001074:	002a0007 	break	0x7
1c001078:	0280058c 	addi.w	$r12,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printbase.c:14 (discriminator 3)
	for(i=0;value;i++)
1c00107c:	6fffdae6 	bgeu	$r23,$r6,-40(0x3ffd8) # 1c001054 <printbase+0x34>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22
	}

#define max(a,b) (((a)>(b))?(a):(b))

	for(j=max(w,i);j>0;j--)
1c001080:	600058b8 	blt	$r5,$r24,88(0x58) # 1c0010d8 <printbase+0xb8>
1c001084:	001500b7 	move	$r23,$r5
/code/fpga/nscscc-team/software/perf/lib/printbase.c:25
	{
		c=j>i?0:buf[j-1];
		putchar((c<=9)?c+'0':c-0xa+'a');
1c001088:	02802419 	addi.w	$r25,$r0,9(0x9)
1c00108c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printbase.c:24
		c=j>i?0:buf[j-1];
1c001090:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c001094:	00105d8c 	add.w	$r12,$r12,$r23
1c001098:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c00109c:	60001717 	blt	$r24,$r23,20(0x14) # 1c0010b0 <printbase+0x90>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:24 (discriminator 1)
1c0010a0:	283ffd8c 	ld.b	$r12,$r12,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/printbase.c:25 (discriminator 1)
		putchar((c<=9)?c+'0':c-0xa+'a');
1c0010a4:	02815d84 	addi.w	$r4,$r12,87(0x57)
1c0010a8:	60000b2c 	blt	$r25,$r12,8(0x8) # 1c0010b0 <printbase+0x90>
1c0010ac:	0280c184 	addi.w	$r4,$r12,48(0x30)
1c0010b0:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/printbase.c:25 (discriminator 4)
1c0010b4:	57fe3fff 	bl	-452(0xffffe3c) # 1c000ef0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22 (discriminator 4)
	for(j=max(w,i);j>0;j--)
1c0010b8:	5fffdae0 	bne	$r23,$r0,-40(0x3ffd8) # 1c001090 <printbase+0x70>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:28
	}
	return 0;
}
1c0010bc:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c0010c0:	28816077 	ld.w	$r23,$r3,88(0x58)
1c0010c4:	28815078 	ld.w	$r24,$r3,84(0x54)
1c0010c8:	28814079 	ld.w	$r25,$r3,80(0x50)
1c0010cc:	00150004 	move	$r4,$r0
1c0010d0:	02818063 	addi.w	$r3,$r3,96(0x60)
1c0010d4:	4c000020 	jirl	$r0,$r1,0
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c0010d8:	00150305 	move	$r5,$r24
1c0010dc:	53ffabff 	b	-88(0xfffffa8) # 1c001084 <printbase+0x64>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:10
	putchar('-');
1c0010e0:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c0010e4:	29803066 	st.w	$r6,$r3,12(0xc)
1c0010e8:	29802065 	st.w	$r5,$r3,8(0x8)
1c0010ec:	57fe07ff 	bl	-508(0xffffe04) # 1c000ef0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:9
	value = -v;
1c0010f0:	00115c17 	sub.w	$r23,$r0,$r23
/code/fpga/nscscc-team/software/perf/lib/printbase.c:10
	putchar('-');
1c0010f4:	28802065 	ld.w	$r5,$r3,8(0x8)
1c0010f8:	28803066 	ld.w	$r6,$r3,12(0xc)
1c0010fc:	53ff4bff 	b	-184(0xfffff48) # 1c001044 <printbase+0x24>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c001100:	67ffbc05 	bge	$r0,$r5,-68(0x3ffbc) # 1c0010bc <printbase+0x9c>
1c001104:	00150018 	move	$r24,$r0
1c001108:	53ff7fff 	b	-132(0xfffff7c) # 1c001084 <printbase+0x64>
1c00110c:	03400000 	andi	$r0,$r0,0x0

1c001110 <strlen>:
strlen():
/code/fpga/nscscc-team/software/perf/lib/string.c:14
 * The strlen() function returns the length of string @s.
 * */
size_t
strlen(const char *s) {
    size_t cnt = 0;
    while (*s ++ != '\0') {
1c001110:	2800008c 	ld.b	$r12,$r4,0
1c001114:	58002580 	beq	$r12,$r0,36(0x24) # 1c001138 <strlen+0x28>
/code/fpga/nscscc-team/software/perf/lib/string.c:13
    size_t cnt = 0;
1c001118:	0015000c 	move	$r12,$r0
1c00111c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:15
        cnt ++;
1c001120:	0280058c 	addi.w	$r12,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:14
    while (*s ++ != '\0') {
1c001124:	0010308d 	add.w	$r13,$r4,$r12
1c001128:	280001ad 	ld.b	$r13,$r13,0
1c00112c:	5ffff5a0 	bne	$r13,$r0,-12(0x3fff4) # 1c001120 <strlen+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:18
    }
    return cnt;
}
1c001130:	00150184 	move	$r4,$r12
1c001134:	4c000020 	jirl	$r0,$r1,0
/code/fpga/nscscc-team/software/perf/lib/string.c:13
    size_t cnt = 0;
1c001138:	0015000c 	move	$r12,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:18
}
1c00113c:	00150184 	move	$r4,$r12
1c001140:	4c000020 	jirl	$r0,$r1,0
1c001144:	03400000 	andi	$r0,$r0,0x0
1c001148:	03400000 	andi	$r0,$r0,0x0
1c00114c:	03400000 	andi	$r0,$r0,0x0

1c001150 <strnlen>:
strnlen():
/code/fpga/nscscc-team/software/perf/lib/string.c:35
 * @len if there is no '\0' character among the first @len characters
 * pointed by @s.
 * */
size_t
strnlen(const char *s, size_t len) {
    size_t cnt = 0;
1c001150:	0015000c 	move	$r12,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c001154:	580028a0 	beq	$r5,$r0,40(0x28) # 1c00117c <strnlen+0x2c>
1c001158:	2800008d 	ld.b	$r13,$r4,0
/code/fpga/nscscc-team/software/perf/lib/string.c:35
    size_t cnt = 0;
1c00115c:	0015000c 	move	$r12,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c001160:	5c0011a0 	bne	$r13,$r0,16(0x10) # 1c001170 <strnlen+0x20>
1c001164:	50001800 	b	24(0x18) # 1c00117c <strnlen+0x2c>
/code/fpga/nscscc-team/software/perf/lib/string.c:36 (discriminator 1)
1c001168:	280001ad 	ld.b	$r13,$r13,0
1c00116c:	580011a0 	beq	$r13,$r0,16(0x10) # 1c00117c <strnlen+0x2c>
/code/fpga/nscscc-team/software/perf/lib/string.c:37
        cnt ++;
1c001170:	0280058c 	addi.w	$r12,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c001174:	0010308d 	add.w	$r13,$r4,$r12
1c001178:	5ffff0ac 	bne	$r5,$r12,-16(0x3fff0) # 1c001168 <strnlen+0x18>
/code/fpga/nscscc-team/software/perf/lib/string.c:40
    }
    return cnt;
}
1c00117c:	00150184 	move	$r4,$r12
1c001180:	4c000020 	jirl	$r0,$r1,0
1c001184:	03400000 	andi	$r0,$r0,0x0
1c001188:	03400000 	andi	$r0,$r0,0x0
1c00118c:	03400000 	andi	$r0,$r0,0x0

1c001190 <strcpy>:
strcpy():
/code/fpga/nscscc-team/software/perf/lib/string.c:59
char *
strcpy(char *dst, const char *src) {
#ifdef __HAVE_ARCH_MEM_OPTS
    return __strcpy(dst, src);
#else
    char *p = dst;
1c001190:	0015008c 	move	$r12,$r4
/code/fpga/nscscc-team/software/perf/lib/string.c:60 (discriminator 1)
    while ((*p ++ = *src ++) != '\0')
1c001194:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c001198:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c00119c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0011a0:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
1c0011a4:	5ffff1a0 	bne	$r13,$r0,-16(0x3fff0) # 1c001194 <strcpy+0x4>
/code/fpga/nscscc-team/software/perf/lib/string.c:64
        /* nothing */;
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c0011a8:	4c000020 	jirl	$r0,$r1,0
1c0011ac:	03400000 	andi	$r0,$r0,0x0

1c0011b0 <strncpy>:
strncpy():
/code/fpga/nscscc-team/software/perf/lib/string.c:79
 * The return value is @dst
 * */
char *
strncpy(char *dst, const char *src, size_t len) {
    char *p = dst;
    while (len > 0) {
1c0011b0:	580028c0 	beq	$r6,$r0,40(0x28) # 1c0011d8 <strncpy+0x28>
1c0011b4:	00101886 	add.w	$r6,$r4,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:78
    char *p = dst;
1c0011b8:	0015008d 	move	$r13,$r4
1c0011bc:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:80
        if ((*p = *src) != '\0') {
1c0011c0:	280000ac 	ld.b	$r12,$r5,0
/code/fpga/nscscc-team/software/perf/lib/string.c:83
            src ++;
        }
        p ++, len --;
1c0011c4:	028005ad 	addi.w	$r13,$r13,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:80
        if ((*p = *src) != '\0') {
1c0011c8:	293ffdac 	st.b	$r12,$r13,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:81
            src ++;
1c0011cc:	0012b00c 	sltu	$r12,$r0,$r12
1c0011d0:	001030a5 	add.w	$r5,$r5,$r12
/code/fpga/nscscc-team/software/perf/lib/string.c:79
    while (len > 0) {
1c0011d4:	5fffeda6 	bne	$r13,$r6,-20(0x3ffec) # 1c0011c0 <strncpy+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:86
    }
    return dst;
}
1c0011d8:	4c000020 	jirl	$r0,$r1,0
1c0011dc:	03400000 	andi	$r0,$r0,0x0

1c0011e0 <strncmp>:
strncmp():
/code/fpga/nscscc-team/software/perf/lib/string.c:101
 * the characters differ, until a terminating null-character is reached, or
 * until @n characters match in both strings, whichever happens first.
 * */
int
strncmp(const char *s1, const char *s2, size_t n) {
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
1c0011e0:	580040c0 	beq	$r6,$r0,64(0x40) # 1c001220 <strncmp+0x40>
1c0011e4:	2800008d 	ld.b	$r13,$r4,0
1c0011e8:	280000ae 	ld.b	$r14,$r5,0
1c0011ec:	580041a0 	beq	$r13,$r0,64(0x40) # 1c00122c <strncmp+0x4c>
1c0011f0:	5c003dae 	bne	$r13,$r14,60(0x3c) # 1c00122c <strncmp+0x4c>
1c0011f4:	001018a6 	add.w	$r6,$r5,$r6
1c0011f8:	50001c00 	b	28(0x1c) # 1c001214 <strncmp+0x34>
1c0011fc:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:101 (discriminator 1)
1c001200:	2800008d 	ld.b	$r13,$r4,0
1c001204:	580025a0 	beq	$r13,$r0,36(0x24) # 1c001228 <strncmp+0x48>
/code/fpga/nscscc-team/software/perf/lib/string.c:101 (discriminator 2)
1c001208:	2800018e 	ld.b	$r14,$r12,0
1c00120c:	00150185 	move	$r5,$r12
1c001210:	5c001dae 	bne	$r13,$r14,28(0x1c) # 1c00122c <strncmp+0x4c>
/code/fpga/nscscc-team/software/perf/lib/string.c:102
        n --, s1 ++, s2 ++;
1c001214:	028004ac 	addi.w	$r12,$r5,1(0x1)
1c001218:	02800484 	addi.w	$r4,$r4,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:101
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
1c00121c:	5fffe586 	bne	$r12,$r6,-28(0x3ffe4) # 1c001200 <strncmp+0x20>
/code/fpga/nscscc-team/software/perf/lib/string.c:104
    }
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c001220:	00150004 	move	$r4,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:105
}
1c001224:	4c000020 	jirl	$r0,$r1,0
1c001228:	280004ae 	ld.b	$r14,$r5,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:100
strncmp(const char *s1, const char *s2, size_t n) {
1c00122c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
/code/fpga/nscscc-team/software/perf/lib/string.c:104
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c001230:	2980306d 	st.w	$r13,$r3,12(0xc)
1c001234:	2a00306d 	ld.bu	$r13,$r3,12(0xc)
1c001238:	2980306e 	st.w	$r14,$r3,12(0xc)
1c00123c:	2a003064 	ld.bu	$r4,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/string.c:105
}
1c001240:	02804063 	addi.w	$r3,$r3,16(0x10)
/code/fpga/nscscc-team/software/perf/lib/string.c:104
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c001244:	001111a4 	sub.w	$r4,$r13,$r4
/code/fpga/nscscc-team/software/perf/lib/string.c:105
}
1c001248:	4c000020 	jirl	$r0,$r1,0
1c00124c:	03400000 	andi	$r0,$r0,0x0

1c001250 <strchr>:
strchr():
/code/fpga/nscscc-team/software/perf/lib/string.c:117
 * The strchr() function returns a pointer to the first occurrence of
 * character in @s. If the value is not found, the function returns 'NULL'.
 * */
char *
strchr(const char *s, char c) {
    while (*s != '\0') {
1c001250:	2800008d 	ld.b	$r13,$r4,0
/code/fpga/nscscc-team/software/perf/lib/string.c:116
strchr(const char *s, char c) {
1c001254:	0015008c 	move	$r12,$r4
/code/fpga/nscscc-team/software/perf/lib/string.c:117
    while (*s != '\0') {
1c001258:	58001da0 	beq	$r13,$r0,28(0x1c) # 1c001274 <strchr+0x24>
/code/fpga/nscscc-team/software/perf/lib/string.c:118
        if (*s == c) {
1c00125c:	5c000da5 	bne	$r13,$r5,12(0xc) # 1c001268 <strchr+0x18>
1c001260:	50002800 	b	40(0x28) # 1c001288 <strchr+0x38>
1c001264:	58001da5 	beq	$r13,$r5,28(0x1c) # 1c001280 <strchr+0x30>
/code/fpga/nscscc-team/software/perf/lib/string.c:121
            return (char *)s;
        }
        s ++;
1c001268:	0280058c 	addi.w	$r12,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:117
    while (*s != '\0') {
1c00126c:	2800018d 	ld.b	$r13,$r12,0
1c001270:	5ffff5a0 	bne	$r13,$r0,-12(0x3fff4) # 1c001264 <strchr+0x14>
/code/fpga/nscscc-team/software/perf/lib/string.c:123
    }
    return NULL;
1c001274:	00150004 	move	$r4,$r0
1c001278:	4c000020 	jirl	$r0,$r1,0
1c00127c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:121
        s ++;
1c001280:	00150184 	move	$r4,$r12
/code/fpga/nscscc-team/software/perf/lib/string.c:124
}
1c001284:	4c000020 	jirl	$r0,$r1,0
1c001288:	4c000020 	jirl	$r0,$r1,0
1c00128c:	03400000 	andi	$r0,$r0,0x0

1c001290 <strfind>:
strfind():
/code/fpga/nscscc-team/software/perf/lib/string.c:137
 * not found in @s, then it returns a pointer to the null byte at the
 * end of @s, rather than 'NULL'.
 * */
char *
strfind(const char *s, char c) {
    while (*s != '\0') {
1c001290:	2800008c 	ld.b	$r12,$r4,0
1c001294:	58001d80 	beq	$r12,$r0,28(0x1c) # 1c0012b0 <strfind+0x20>
/code/fpga/nscscc-team/software/perf/lib/string.c:138
        if (*s == c) {
1c001298:	5c000cac 	bne	$r5,$r12,12(0xc) # 1c0012a4 <strfind+0x14>
1c00129c:	50001800 	b	24(0x18) # 1c0012b4 <strfind+0x24>
1c0012a0:	58001185 	beq	$r12,$r5,16(0x10) # 1c0012b0 <strfind+0x20>
/code/fpga/nscscc-team/software/perf/lib/string.c:141
            break;
        }
        s ++;
1c0012a4:	02800484 	addi.w	$r4,$r4,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:137
    while (*s != '\0') {
1c0012a8:	2800008c 	ld.b	$r12,$r4,0
1c0012ac:	5ffff580 	bne	$r12,$r0,-12(0x3fff4) # 1c0012a0 <strfind+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:144
    }
    return (char *)s;
}
1c0012b0:	4c000020 	jirl	$r0,$r1,0
1c0012b4:	4c000020 	jirl	$r0,$r1,0
1c0012b8:	03400000 	andi	$r0,$r0,0x0
1c0012bc:	03400000 	andi	$r0,$r0,0x0

1c0012c0 <memset>:
memset():
/code/fpga/nscscc-team/software/perf/lib/string.c:251
memset(void *s, char c, size_t n) {
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memset(s, c, n);
#else
    char *p = s;
    while (n -- > 0) {
1c0012c0:	58001cc0 	beq	$r6,$r0,28(0x1c) # 1c0012dc <memset+0x1c>
1c0012c4:	00101886 	add.w	$r6,$r4,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:250
    char *p = s;
1c0012c8:	0015008c 	move	$r12,$r4
1c0012cc:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:252
        *p ++ = c;
1c0012d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0012d4:	293ffd85 	st.b	$r5,$r12,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:251
    while (n -- > 0) {
1c0012d8:	5ffff986 	bne	$r12,$r6,-8(0x3fff8) # 1c0012d0 <memset+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:256
    }
    return s;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c0012dc:	4c000020 	jirl	$r0,$r1,0

1c0012e0 <memcpy>:
memcpy():
/code/fpga/nscscc-team/software/perf/lib/string.c:279
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memcpy(dst, src, n);
#else
    const char *s = src;
    char *d = dst;
    while (n -- > 0) {
1c0012e0:	580024c0 	beq	$r6,$r0,36(0x24) # 1c001304 <memcpy+0x24>
1c0012e4:	001018a6 	add.w	$r6,$r5,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:278
    char *d = dst;
1c0012e8:	0015008c 	move	$r12,$r4
1c0012ec:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:280
        *d ++ = *s ++;
1c0012f0:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c0012f4:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c0012f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0012fc:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:279
    while (n -- > 0) {
1c001300:	5ffff0a6 	bne	$r5,$r6,-16(0x3fff0) # 1c0012f0 <memcpy+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:284
    }
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c001304:	4c000020 	jirl	$r0,$r1,0
1c001308:	03400000 	andi	$r0,$r0,0x0
1c00130c:	03400000 	andi	$r0,$r0,0x0

1c001310 <memmove>:
memmove():
/code/fpga/nscscc-team/software/perf/lib/string.c:302
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memmove(dst, src, n);
#else
    const char *s = src;
    char *d = dst;
    if (s < d && s + n > d) {
1c001310:	6c0030a4 	bgeu	$r5,$r4,48(0x30) # 1c001340 <memmove+0x30>
/code/fpga/nscscc-team/software/perf/lib/string.c:302 (discriminator 1)
1c001314:	001018ac 	add.w	$r12,$r5,$r6
1c001318:	6c00288c 	bgeu	$r4,$r12,40(0x28) # 1c001340 <memmove+0x30>
/code/fpga/nscscc-team/software/perf/lib/string.c:303
        s += n, d += n;
1c00131c:	0010188d 	add.w	$r13,$r4,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:304
        while (n -- > 0) {
1c001320:	580044c0 	beq	$r6,$r0,68(0x44) # 1c001364 <memmove+0x54>
/code/fpga/nscscc-team/software/perf/lib/string.c:305
            *-- d = *-- s;
1c001324:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001328:	2800018e 	ld.b	$r14,$r12,0
1c00132c:	02bffdad 	addi.w	$r13,$r13,-1(0xfff)
1c001330:	290001ae 	st.b	$r14,$r13,0
/code/fpga/nscscc-team/software/perf/lib/string.c:304
        while (n -- > 0) {
1c001334:	5ffff0ac 	bne	$r5,$r12,-16(0x3fff0) # 1c001324 <memmove+0x14>
1c001338:	4c000020 	jirl	$r0,$r1,0
1c00133c:	03400000 	andi	$r0,$r0,0x0
1c001340:	001018ae 	add.w	$r14,$r5,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:308
        }
    } else {
        while (n -- > 0) {
1c001344:	0015008c 	move	$r12,$r4
1c001348:	580020c0 	beq	$r6,$r0,32(0x20) # 1c001368 <memmove+0x58>
1c00134c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:309
            *d ++ = *s ++;
1c001350:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c001354:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c001358:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00135c:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:308
        while (n -- > 0) {
1c001360:	5ffff0ae 	bne	$r5,$r14,-16(0x3fff0) # 1c001350 <memmove+0x40>
/code/fpga/nscscc-team/software/perf/lib/string.c:314
        }
    }
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c001364:	4c000020 	jirl	$r0,$r1,0
1c001368:	4c000020 	jirl	$r0,$r1,0
1c00136c:	03400000 	andi	$r0,$r0,0x0

1c001370 <memcmp>:
memcmp():
/code/fpga/nscscc-team/software/perf/lib/string.c:334
 * */
int
memcmp(const void *v1, const void *v2, size_t n) {
    const char *s1 = (const char *)v1;
    const char *s2 = (const char *)v2;
    while (n -- > 0) {
1c001370:	580030c0 	beq	$r6,$r0,48(0x30) # 1c0013a0 <memcmp+0x30>
/code/fpga/nscscc-team/software/perf/lib/string.c:335
        if (*s1 != *s2) {
1c001374:	2800008c 	ld.b	$r12,$r4,0
1c001378:	280000ad 	ld.b	$r13,$r5,0
1c00137c:	00101886 	add.w	$r6,$r4,$r6
1c001380:	580015ac 	beq	$r13,$r12,20(0x14) # 1c001394 <memcmp+0x24>
1c001384:	50002400 	b	36(0x24) # 1c0013a8 <memcmp+0x38>
1c001388:	2800008c 	ld.b	$r12,$r4,0
1c00138c:	280000ad 	ld.b	$r13,$r5,0
1c001390:	5c00198d 	bne	$r12,$r13,24(0x18) # 1c0013a8 <memcmp+0x38>
/code/fpga/nscscc-team/software/perf/lib/string.c:338
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
        }
        s1 ++, s2 ++;
1c001394:	02800484 	addi.w	$r4,$r4,1(0x1)
1c001398:	028004a5 	addi.w	$r5,$r5,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:334
    while (n -- > 0) {
1c00139c:	5fffec86 	bne	$r4,$r6,-20(0x3ffec) # 1c001388 <memcmp+0x18>
/code/fpga/nscscc-team/software/perf/lib/string.c:340
    }
    return 0;
1c0013a0:	00150004 	move	$r4,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:341
}
1c0013a4:	4c000020 	jirl	$r0,$r1,0
/code/fpga/nscscc-team/software/perf/lib/string.c:331
memcmp(const void *v1, const void *v2, size_t n) {
1c0013a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
/code/fpga/nscscc-team/software/perf/lib/string.c:336
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
1c0013ac:	2980306c 	st.w	$r12,$r3,12(0xc)
1c0013b0:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c0013b4:	2980306d 	st.w	$r13,$r3,12(0xc)
1c0013b8:	2a003064 	ld.bu	$r4,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/string.c:341
}
1c0013bc:	02804063 	addi.w	$r3,$r3,16(0x10)
/code/fpga/nscscc-team/software/perf/lib/string.c:336
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
1c0013c0:	00111184 	sub.w	$r4,$r12,$r4
/code/fpga/nscscc-team/software/perf/lib/string.c:341
}
1c0013c4:	4c000020 	jirl	$r0,$r1,0
1c0013c8:	03400000 	andi	$r0,$r0,0x0
1c0013cc:	03400000 	andi	$r0,$r0,0x0

1c0013d0 <bzero>:
memset():
/code/fpga/nscscc-team/software/perf/lib/string.c:251
    while (n -- > 0) {
1c0013d0:	580014a0 	beq	$r5,$r0,20(0x14) # 1c0013e4 <bzero+0x14>
1c0013d4:	00101485 	add.w	$r5,$r4,$r5
/code/fpga/nscscc-team/software/perf/lib/string.c:252
        *p ++ = c;
1c0013d8:	02800484 	addi.w	$r4,$r4,1(0x1)
1c0013dc:	293ffc80 	st.b	$r0,$r4,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:251
    while (n -- > 0) {
1c0013e0:	5ffff885 	bne	$r4,$r5,-8(0x3fff8) # 1c0013d8 <bzero+0x8>
bzero():
/code/fpga/nscscc-team/software/perf/lib/string.c:345

void bzero(void *s, size_t n){
	memset(s, 0, n);
}
1c0013e4:	4c000020 	jirl	$r0,$r1,0
1c0013e8:	03400000 	andi	$r0,$r0,0x0
1c0013ec:	03400000 	andi	$r0,$r0,0x0

1c0013f0 <get_count>:
get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:18
        );
    return  _contval;
}

unsigned long get_count()
{
1c0013f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0013f4:	29803079 	st.w	$r25,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c0013f8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c0013fc:	28800324 	ld.w	$r4,$r25,0
/code/fpga/nscscc-team/software/perf/lib/time.c:20
    return  _get_count();
}
1c001400:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001404:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001408:	4c000020 	jirl	$r0,$r1,0
1c00140c:	03400000 	andi	$r0,$r0,0x0

1c001410 <_get_count>:
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:20
1c001410:	53ffe3ff 	b	-32(0xfffffe0) # 1c0013f0 <get_count>
1c001414:	03400000 	andi	$r0,$r0,0x0
1c001418:	03400000 	andi	$r0,$r0,0x0
1c00141c:	03400000 	andi	$r0,$r0,0x0

1c001420 <get_count_my>:
get_count_my():
/code/fpga/nscscc-team/software/perf/lib/time.c:25

unsigned long get_count_my()
{
    unsigned long n;
    asm volatile(
1c001420:	00006004 	rdtimel.w	$r4,$r0
/code/fpga/nscscc-team/software/perf/lib/time.c:30
        "rdcntvl.w %0\n\t"
        :"=r"(n)
        );
    return  n;
}
1c001424:	4c000020 	jirl	$r0,$r1,0
1c001428:	03400000 	andi	$r0,$r0,0x0
1c00142c:	03400000 	andi	$r0,$r0,0x0

1c001430 <clock_gettime>:
clock_gettime():
/code/fpga/nscscc-team/software/perf/lib/time.c:33

unsigned long clock_gettime(int sel,struct timespec *tmp)
{
1c001430:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001434:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c001438:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00143c:	2880032f 	ld.w	$r15,$r25,0
clock_gettime():
/code/fpga/nscscc-team/software/perf/lib/time.c:36
    unsigned long n = 0;
    n = _get_count();
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c001440:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c001444:	001c35ed 	mul.w	$r13,$r15,$r13
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001448:	02819011 	addi.w	$r17,$r0,100(0x64)
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c00144c:	1400030e 	lu12i.w	$r14,24(0x18)
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001450:	002145f0 	div.wu	$r16,$r15,$r17
1c001454:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c00145c <clock_gettime+0x2c>
1c001458:	002a0007 	break	0x7
/code/fpga/nscscc-team/software/perf/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c00145c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001460:	039a81ce 	ori	$r14,$r14,0x6a0
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001464:	0021b211 	mod.wu	$r17,$r16,$r12
1c001468:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001470 <clock_gettime+0x40>
1c00146c:	002a0007 	break	0x7
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c001470:	002139f0 	div.wu	$r16,$r15,$r14
1c001474:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c00147c <clock_gettime+0x4c>
1c001478:	002a0007 	break	0x7
1c00147c:	0021b20e 	mod.wu	$r14,$r16,$r12
1c001480:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001488 <clock_gettime+0x58>
1c001484:	002a0007 	break	0x7
/code/fpga/nscscc-team/software/perf/lib/time.c:39
    tmp->tv_sec  = n/CPU_COUNT_PER_US/NSEC_PER_SEC;
1c001488:	298000a0 	st.w	$r0,$r5,0
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c00148c:	298030ae 	st.w	$r14,$r5,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c001490:	298020b1 	st.w	$r17,$r5,8(0x8)
/code/fpga/nscscc-team/software/perf/lib/time.c:42
    //printf("clock ns=%d,sec=%d\n",tmp->tv_nsec,tmp->tv_sec);
    return 0;
}
1c001494:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001498:	00150004 	move	$r4,$r0
/code/fpga/nscscc-team/software/perf/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c00149c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0014a0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0014a8 <clock_gettime+0x78>
1c0014a4:	002a0007 	break	0x7
1c0014a8:	298010ae 	st.w	$r14,$r5,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/time.c:42
}
1c0014ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0014b0:	4c000020 	jirl	$r0,$r1,0
1c0014b4:	03400000 	andi	$r0,$r0,0x0
1c0014b8:	03400000 	andi	$r0,$r0,0x0
1c0014bc:	03400000 	andi	$r0,$r0,0x0

1c0014c0 <get_clock>:
get_clock():
/code/fpga/nscscc-team/software/perf/lib/time.c:42
1c0014c0:	53ff33ff 	b	-208(0xfffff30) # 1c0013f0 <get_count>
1c0014c4:	03400000 	andi	$r0,$r0,0x0
1c0014c8:	03400000 	andi	$r0,$r0,0x0
1c0014cc:	03400000 	andi	$r0,$r0,0x0

1c0014d0 <get_ns>:
get_ns():
/code/fpga/nscscc-team/software/perf/lib/time.c:52
    n=_get_count();
    return n;
}

unsigned long get_ns(void)
{
1c0014d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0014d4:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c0014d8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c0014dc:	28800324 	ld.w	$r4,$r25,0
get_ns():
/code/fpga/nscscc-team/software/perf/lib/time.c:55
    unsigned long n=0;
    n = _get_count();
    n=n*(NSEC_PER_USEC/CPU_COUNT_PER_US);
1c0014e0:	0280280c 	addi.w	$r12,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/time.c:57
    return n;
}
1c0014e4:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0014e8:	001c3084 	mul.w	$r4,$r4,$r12
1c0014ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0014f0:	4c000020 	jirl	$r0,$r1,0
1c0014f4:	03400000 	andi	$r0,$r0,0x0
1c0014f8:	03400000 	andi	$r0,$r0,0x0
1c0014fc:	03400000 	andi	$r0,$r0,0x0

1c001500 <get_us>:
get_us():
/code/fpga/nscscc-team/software/perf/lib/time.c:61


unsigned long get_us(void)
{
1c001500:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001504:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c001508:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00150c:	28800324 	ld.w	$r4,$r25,0
get_us():
/code/fpga/nscscc-team/software/perf/lib/time.c:64
    unsigned long n=0;
    n = _get_count();
    n=n/CPU_COUNT_PER_US;
1c001510:	0281900c 	addi.w	$r12,$r0,100(0x64)
/code/fpga/nscscc-team/software/perf/lib/time.c:66
    return n;
}
1c001514:	28803079 	ld.w	$r25,$r3,12(0xc)
1c001518:	0021308d 	div.wu	$r13,$r4,$r12
1c00151c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001524 <get_us+0x24>
1c001520:	002a0007 	break	0x7
1c001524:	001501a4 	move	$r4,$r13
1c001528:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00152c:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .data:

1c080000 <rodata_end-0xcb0>:
1c080000:	69727473 	bltu	$r3,$r19,94836(0x17274) # 1c097274 <_end+0x161bc>
1c080004:	7320676e 	0x7320676e
1c080008:	63726165 	blt	$r11,$r5,-36256(0x37260) # 1c077268 <_data_lma+0x75d38>
1c08000c:	65742068 	bge	$r3,$r8,95264(0x17420) # 1c09742c <_end+0x16374>
1c080010:	62207473 	blt	$r3,$r19,-122764(0x22074) # 1c062084 <_data_lma+0x60b54>
1c080014:	6e696765 	bgeu	$r27,$r5,-104092(0x26964) # 1c066978 <_data_lma+0x65448>
1c080018:	0000002e 	0x0000002e
1c08001c:	69727473 	bltu	$r3,$r19,94836(0x17274) # 1c097290 <_end+0x161d8>
1c080020:	7320676e 	0x7320676e
1c080024:	63726165 	blt	$r11,$r5,-36256(0x37260) # 1c077284 <_data_lma+0x75d54>
1c080028:	41502068 	beqz	$r3,2183200(0x215020) # 1c295048 <_stack+0x19504c>
1c08002c:	00215353 	div.wu	$r19,$r26,$r20
1c080030:	69727473 	bltu	$r3,$r19,94836(0x17274) # 1c0972a4 <_end+0x161ec>
1c080034:	7320676e 	0x7320676e
1c080038:	63726165 	blt	$r11,$r5,-36256(0x37260) # 1c077298 <_data_lma+0x75d68>
1c08003c:	52452068 	b	27411744(0x1a24520) # 1daa455c <_stack+0x19a4560>
1c080040:	21524f52 	sc.w	$r18,$r26,21068(0x524c)
1c080044:	00002121 	clo.d	$r1,$r9
1c080048:	69727473 	bltu	$r3,$r19,94836(0x17274) # 1c0972bc <_end+0x16204>
1c08004c:	7320676e 	0x7320676e
1c080050:	63726165 	blt	$r11,$r5,-36256(0x37260) # 1c0772b0 <_data_lma+0x75d80>
1c080054:	54203a68 	bl	-106946504(0x9a02038) # 15a8208c <__stack_size+0x15a7208c>
1c080058:	6c61746f 	bgeu	$r3,$r15,24948(0x6174) # 1c0861cc <_end+0x5114>
1c08005c:	756f4320 	0x756f4320
1c080060:	5328746e 	b	29042804(0x1bb2874) # 1dc328d4 <_stack+0x1b328d8>
1c080064:	6320436f 	blt	$r27,$r15,-57280(0x32040) # 1c0720a4 <_data_lma+0x70b74>
1c080068:	746e756f 	0x746e756f
1c08006c:	203d2029 	ll.w	$r9,$r1,15648(0x3d20)
1c080070:	78257830 	0x78257830
1c080074:	0000000a 	0x0000000a
1c080078:	69727473 	bltu	$r3,$r19,94836(0x17274) # 1c0972ec <_end+0x16234>
1c08007c:	7320676e 	0x7320676e
1c080080:	63726165 	blt	$r11,$r5,-36256(0x37260) # 1c0772e0 <_data_lma+0x75db0>
1c080084:	54203a68 	bl	-106946504(0x9a02038) # 15a820bc <__stack_size+0x15a720bc>
1c080088:	6c61746f 	bgeu	$r3,$r15,24948(0x6174) # 1c0861fc <_end+0x5144>
1c08008c:	756f4320 	0x756f4320
1c080090:	4328746e 	beqz	$r3,3876980(0x3b2874) # 1c432904 <_stack+0x332908>
1c080094:	63205550 	blt	$r10,$r16,-57260(0x32054) # 1c0720e8 <_data_lma+0x70bb8>
1c080098:	746e756f 	0x746e756f
1c08009c:	203d2029 	ll.w	$r9,$r1,15648(0x3d20)
1c0800a0:	78257830 	0x78257830
1c0800a4:	0000000a 	0x0000000a
1c0800a8:	22732522 	ll.d	$r2,$r9,29476(0x7324)
1c0800ac:	25736920 	stptr.w	$r0,$r9,29544(0x7368)
1c0800b0:	6e692073 	bgeu	$r3,$r19,-104160(0x26920) # 1c0669d0 <_data_lma+0x654a0>
1c0800b4:	73252220 	vsat.d	$vr0,$vr17,0x8
1c0800b8:	00000022 	0x00000022
1c0800bc:	25225b20 	stptr.w	$r0,$r25,8792(0x2258)
1c0800c0:	005d2273 	0x005d2273
1c0800c4:	00626261 	bstrins.w	$r1,$r19,0x2,0x18
1c0800c8:	00756f79 	bstrins.w	$r25,$r27,0x15,0x1b
1c0800cc:	00746f6e 	bstrins.w	$r14,$r27,0x14,0x1b
1c0800d0:	00007469 	0x00007469
1c0800d4:	00646164 	bstrins.w	$r4,$r11,0x4,0x18
1c0800d8:	006f6f79 	bstrins.w	$r25,$r27,0xf,0x1b
1c0800dc:	006f6f68 	bstrins.w	$r8,$r27,0xf,0x1b
1c0800e0:	0000686f 	rdtime.d	$r15,$r3
1c0800e4:	00007878 	0x00007878
1c0800e8:	00000078 	0x00000078
1c0800ec:	6c656966 	bgeu	$r11,$r6,25960(0x6568) # 1c086654 <_end+0x559c>
1c0800f0:	00000064 	0x00000064
1c0800f4:	0077656e 	bstrins.w	$r14,$r11,0x17,0x19
1c0800f8:	00776f72 	bstrins.w	$r18,$r27,0x17,0x1b
1c0800fc:	69676572 	bltu	$r11,$r18,92004(0x16764) # 1c096860 <_end+0x157a8>
1c080100:	0000656d 	rdtimeh.w	$r13,$r11
1c080104:	6d6f6f62 	bgeu	$r27,$r2,94060(0x16f6c) # 1c097070 <_end+0x15fb8>
1c080108:	00000000 	0x00000000
1c08010c:	74616874 	xvabsd.w	$xr20,$xr3,$xr26
1c080110:	00000000 	0x00000000
1c080114:	61706d69 	blt	$r11,$r9,94316(0x1706c) # 1c097180 <_end+0x160c8>
1c080118:	00007463 	0x00007463
1c08011c:	00646e61 	bstrins.w	$r1,$r19,0x4,0x1b
1c080120:	6d6f6f7a 	bgeu	$r27,$r26,94060(0x16f6c) # 1c09708c <_end+0x15fd4>
1c080124:	00000000 	0x00000000
1c080128:	74786574 	0x74786574
1c08012c:	00657275 	bstrins.w	$r21,$r19,0x5,0x1c
1c080130:	6e67616d 	bgeu	$r11,$r13,-104608(0x26760) # 1c066890 <_data_lma+0x65360>
1c080134:	00007465 	0x00007465
1c080138:	6d6f6f64 	bgeu	$r27,$r4,94060(0x16f6c) # 1c0970a4 <_end+0x15fec>
1c08013c:	00000000 	0x00000000
1c080140:	6d6f6f6c 	bgeu	$r27,$r12,94060(0x16f6c) # 1c0970ac <_end+0x15ff4>
1c080144:	00000000 	0x00000000
1c080148:	71657266 	0x71657266
1c08014c:	00000000 	0x00000000
1c080150:	72727563 	0x72727563
1c080154:	00746e65 	bstrins.w	$r5,$r19,0x14,0x1b
1c080158:	73616870 	vssrani.w.d	$vr16,$vr3,0x1a
1c08015c:	00000065 	0x00000065
1c080160:	67616d69 	bge	$r11,$r9,-40596(0x3616c) # 1c0762cc <_data_lma+0x74d9c>
1c080164:	00007365 	0x00007365
1c080168:	65707061 	bge	$r3,$r1,94320(0x17070) # 1c0971d8 <_end+0x16120>
1c08016c:	00737261 	bstrins.w	$r1,$r19,0x13,0x1c
1c080170:	646e6f63 	bge	$r27,$r3,28268(0x6e6c) # 1c086fdc <_end+0x5f24>
1c080174:	6f746375 	bgeu	$r27,$r21,-35744(0x37460) # 1c0775d4 <_data_lma+0x760a4>
1c080178:	00000072 	0x00000072
1c08017c:	65766177 	bge	$r11,$r23,95840(0x17660) # 1c0977dc <_end+0x16724>
1c080180:	0000007a 	0x0000007a
1c080184:	65657266 	bge	$r19,$r6,91504(0x16570) # 1c0966f4 <_end+0x1563c>
1c080188:	00000000 	0x00000000
1c08018c:	6d726574 	bgeu	$r11,$r20,94820(0x17264) # 1c0973f0 <_end+0x16338>
1c080190:	00006465 	rdtimeh.w	$r5,$r3
1c080194:	766f7270 	0x766f7270
1c080198:	00656469 	bstrins.w	$r9,$r3,0x5,0x19
1c08019c:	00726f66 	bstrins.w	$r6,$r27,0x12,0x1b
1c0801a0:	75727473 	0x75727473
1c0801a4:	00007463 	0x00007463
1c0801a8:	756f6261 	0x756f6261
1c0801ac:	00000074 	0x00000074
1c0801b0:	65766168 	bge	$r11,$r8,95840(0x17660) # 1c097810 <_end+0x16758>
1c0801b4:	00000000 	0x00000000
1c0801b8:	706f7270 	0x706f7270
1c0801bc:	00007265 	0x00007265
1c0801c0:	6f766e69 	bgeu	$r19,$r9,-35220(0x3766c) # 1c07782c <_data_lma+0x762fc>
1c0801c4:	0065766c 	bstrins.w	$r12,$r19,0x5,0x1d
1c0801c8:	63736564 	blt	$r11,$r4,-35996(0x37364) # 1c07752c <_data_lma+0x75ffc>
1c0801cc:	65626972 	bge	$r11,$r18,90728(0x16268) # 1c096434 <_end+0x1537c>
1c0801d0:	00796c64 	bstrins.w	$r4,$r3,0x19,0x1b
1c0801d4:	74616874 	xvabsd.w	$xr20,$xr3,$xr26
1c0801d8:	00000073 	0x00000073
1c0801dc:	63617073 	blt	$r3,$r19,-40592(0x36170) # 1c07634c <_data_lma+0x74e1c>
1c0801e0:	00007365 	0x00007365
1c0801e4:	63726963 	blt	$r11,$r3,-36248(0x37268) # 1c07744c <_data_lma+0x75f1c>
1c0801e8:	74736d75 	xvmin.w	$xr21,$xr11,$xr27
1c0801ec:	65636e61 	bge	$r19,$r1,90988(0x1636c) # 1c096558 <_end+0x154a0>
1c0801f0:	00000000 	0x00000000
1c0801f4:	00656874 	bstrins.w	$r20,$r3,0x5,0x1a
1c0801f8:	626d656d 	blt	$r11,$r13,-103068(0x26d64) # 1c066f5c <_data_lma+0x65a2c>
1c0801fc:	00007265 	0x00007265
1c080200:	68637573 	bltu	$r11,$r19,25460(0x6374) # 1c086574 <_end+0x54bc>
1c080204:	00000000 	0x00000000
1c080208:	64697567 	bge	$r11,$r7,26996(0x6974) # 1c086b7c <_end+0x5ac4>
1c08020c:	00000065 	0x00000065
1c080210:	61676572 	blt	$r11,$r18,92004(0x16764) # 1c096974 <_end+0x158bc>
1c080214:	00006472 	rdtimeh.w	$r18,$r3
1c080218:	6966666f 	bltu	$r19,$r15,91748(0x16664) # 1c09687c <_end+0x157c4>
1c08021c:	73726563 	0x73726563
1c080220:	00000000 	0x00000000
1c080224:	6c706d69 	bgeu	$r11,$r9,28780(0x706c) # 1c087290 <_end+0x61d8>
1c080228:	6e656d65 	bgeu	$r11,$r5,-105108(0x2656c) # 1c066794 <_data_lma+0x65264>
1c08022c:	00000074 	0x00000074
1c080230:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # 1c066ba0 <_data_lma+0x65670>
1c080234:	61706963 	blt	$r11,$r3,94312(0x17068) # 1c09729c <_end+0x161e4>
1c080238:	6974696c 	bltu	$r11,$r12,95336(0x17468) # 1c0976a0 <_end+0x165e8>
1c08023c:	00007365 	0x00007365
1c080240:	62626163 	blt	$r11,$r3,-105888(0x26260) # 1c0664a0 <_data_lma+0x64f70>
1c080244:	00006569 	rdtimeh.w	$r9,$r11
1c080248:	72756f79 	0x72756f79
1c08024c:	00000000 	0x00000000
1c080250:	69207449 	bltu	$r2,$r9,73844(0x12074) # 1c0922c4 <_end+0x1120c>
1c080254:	74276e73 	0x74276e73
1c080258:	72656820 	0x72656820
1c08025c:	00000065 	0x00000065
1c080260:	20747542 	ll.w	$r2,$r10,29812(0x7474)
1c080264:	69207469 	bltu	$r3,$r9,73844(0x12074) # 1c0922d8 <_end+0x11220>
1c080268:	65682073 	bge	$r3,$r19,92192(0x16820) # 1c096a88 <_end+0x159d0>
1c08026c:	00006572 	rdtimeh.w	$r18,$r11
1c080270:	61646f68 	blt	$r27,$r8,91244(0x1646c) # 1c0966dc <_end+0x15624>
1c080274:	00000064 	0x00000064
1c080278:	686f6f79 	bltu	$r27,$r25,28524(0x6f6c) # 1c0871e4 <_end+0x612c>
1c08027c:	00006f6f 	cpucfg	$r15,$r27
1c080280:	72206e49 	0x72206e49
1c080284:	6e656365 	bgeu	$r27,$r5,-105120(0x26560) # 1c0667e4 <_data_lma+0x652b4>
1c080288:	65792074 	bge	$r3,$r20,96544(0x17920) # 1c097ba8 <_end+0x16af0>
1c08028c:	2c737261 	vst	$vr1,$r19,-804(0xcdc)
1c080290:	65687420 	bge	$r1,$r0,92276(0x16874) # 1c096b04 <_end+0x15a4c>
1c080294:	65696620 	bge	$r17,$r0,92516(0x16964) # 1c096bf8 <_end+0x15b40>
1c080298:	6f20646c 	bgeu	$r3,$r12,-57244(0x32064) # 1c0722fc <_data_lma+0x70dcc>
1c08029c:	68702066 	bltu	$r3,$r6,28704(0x7020) # 1c0872bc <_end+0x6204>
1c0802a0:	6e6f746f 	bgeu	$r3,$r15,-102540(0x26f74) # 1c067214 <_data_lma+0x65ce4>
1c0802a4:	00206369 	div.w	$r9,$r27,$r24
1c0802a8:	73797263 	0x73797263
1c0802ac:	736c6174 	vssrarni.bu.h	$vr20,$vr11,0x8
1c0802b0:	73616820 	vssrani.w.d	$vr0,$vr1,0x1a
1c0802b4:	756f6620 	0x756f6620
1c0802b8:	6e20646e 	bgeu	$r3,$r14,-122780(0x22064) # 1c06231c <_data_lma+0x60dec>
1c0802bc:	00007765 	0x00007765
1c0802c0:	6c707061 	bgeu	$r3,$r1,28784(0x7070) # 1c087330 <_end+0x6278>
1c0802c4:	74616369 	xvabsd.w	$xr9,$xr27,$xr24
1c0802c8:	736e6f69 	vssrarni.du.q	$vr9,$vr27,0x1b
1c0802cc:	206e6920 	ll.w	$r0,$r9,28264(0x6e68)
1c0802d0:	20656874 	ll.w	$r20,$r3,25960(0x6568)
1c0802d4:	61204652 	blt	$r18,$r18,73796(0x12044) # 1c092318 <_end+0x11260>
1c0802d8:	6d20646e 	bgeu	$r3,$r14,73828(0x12064) # 1c09233c <_end+0x11284>
1c0802dc:	6f726369 	bgeu	$r27,$r9,-36256(0x37260) # 1c07753c <_data_lma+0x7600c>
1c0802e0:	65766177 	bge	$r11,$r23,95840(0x17660) # 1c097940 <_end+0x16888>
1c0802e4:	00000000 	0x00000000
1c0802e8:	69676572 	bltu	$r11,$r18,92004(0x16764) # 1c096a4c <_end+0x15994>
1c0802ec:	202e656d 	ll.w	$r13,$r11,11876(0x2e64)
1c0802f0:	656e2041 	bge	$r2,$r1,93728(0x16e20) # 1c097110 <_end+0x16058>
1c0802f4:	79742077 	0x79742077
1c0802f8:	6f206570 	bgeu	$r11,$r16,-57244(0x32064) # 1c07235c <_data_lma+0x70e2c>
1c0802fc:	656d2066 	bge	$r3,$r6,93472(0x16d20) # 1c09701c <_end+0x15f64>
1c080300:	6c6c6174 	bgeu	$r11,$r20,27744(0x6c60) # 1c086f60 <_end+0x5ea8>
1c080304:	00006369 	rdtimel.w	$r9,$r27
1c080308:	63656c65 	blt	$r3,$r5,-39572(0x3656c) # 1c076874 <_data_lma+0x75344>
1c08030c:	6d6f7274 	bgeu	$r19,$r20,94064(0x16f70) # 1c09727c <_end+0x161c4>
1c080310:	656e6761 	bge	$r27,$r1,93796(0x16e64) # 1c097174 <_end+0x160bc>
1c080314:	20636974 	ll.w	$r20,$r11,25448(0x6368)
1c080318:	73797263 	0x73797263
1c08031c:	206c6174 	ll.w	$r20,$r11,27744(0x6c60)
1c080320:	20736168 	ll.w	$r8,$r11,29536(0x7360)
1c080324:	6e656562 	bgeu	$r11,$r2,-105116(0x26564) # 1c066888 <_data_lma+0x65358>
1c080328:	00000000 	0x00000000
1c08032c:	65766564 	bge	$r11,$r4,95844(0x17664) # 1c097990 <_end+0x168d8>
1c080330:	65706f6c 	bge	$r27,$r12,94316(0x1706c) # 1c09739c <_end+0x162e4>
1c080334:	68742064 	bltu	$r3,$r4,29728(0x7420) # 1c087754 <_end+0x669c>
1c080338:	69207461 	bltu	$r3,$r1,73844(0x12074) # 1c0923ac <_end+0x112f4>
1c08033c:	61682073 	blt	$r3,$r19,92192(0x16820) # 1c096b5c <_end+0x15aa4>
1c080340:	676e6976 	bge	$r11,$r22,-37272(0x36e68) # 1c0771a8 <_data_lma+0x75c78>
1c080344:	00006120 	rdtimel.w	$r0,$r9
1c080348:	6e676973 	bgeu	$r11,$r19,-104600(0x26768) # 1c066ab0 <_data_lma+0x65580>
1c08034c:	63696669 	blt	$r19,$r9,-38556(0x36964) # 1c076cb0 <_data_lma+0x75780>
1c080350:	20746e61 	ll.w	$r1,$r19,29804(0x746c)
1c080354:	61706d69 	blt	$r11,$r9,94316(0x1706c) # 1c0973c0 <_end+0x16308>
1c080358:	6f207463 	bgeu	$r3,$r3,-57228(0x32074) # 1c0723cc <_data_lma+0x70e9c>
1c08035c:	6874206e 	bltu	$r3,$r14,29728(0x7420) # 1c08777c <_end+0x66c4>
1c080360:	69662065 	bltu	$r3,$r5,91680(0x16620) # 1c096980 <_end+0x158c8>
1c080364:	20646c65 	ll.w	$r5,$r3,25708(0x646c)
1c080368:	0000666f 	rdtimeh.w	$r15,$r19
1c08036c:	65746e61 	bge	$r19,$r1,95340(0x1746c) # 1c0977d8 <_end+0x16720>
1c080370:	73616e6e 	vssrani.w.d	$vr14,$vr19,0x1b
1c080374:	7449202e 	xvssub.w	$xr14,$xr1,$xr8
1c080378:	6e6f6320 	bgeu	$r25,$r0,-102560(0x26f60) # 1c0672d8 <_data_lma+0x65da8>
1c08037c:	74736973 	xvmin.w	$xr19,$xr11,$xr26
1c080380:	666f2073 	bge	$r3,$r19,-102624(0x26f20) # 1c0672a0 <_data_lma+0x65d70>
1c080384:	00006120 	rdtimel.w	$r0,$r9
1c080388:	646e6f63 	bge	$r27,$r3,28268(0x6e6c) # 1c0871f4 <_end+0x613c>
1c08038c:	69746375 	bltu	$r27,$r21,95328(0x17460) # 1c0977ec <_end+0x16734>
1c080390:	73206576 	0x73206576
1c080394:	61667275 	blt	$r19,$r21,91760(0x16670) # 1c096a04 <_end+0x1594c>
1c080398:	202c6563 	ll.w	$r3,$r11,11364(0x2c64)
1c08039c:	65766f63 	bge	$r27,$r3,95852(0x1766c) # 1c097a08 <_end+0x16950>
1c0803a0:	20646572 	ll.w	$r18,$r11,25700(0x6464)
1c0803a4:	68746977 	bltu	$r11,$r23,29800(0x7468) # 1c08780c <_end+0x6754>
1c0803a8:	00006120 	rdtimel.w	$r0,$r9
1c0803ac:	63657073 	blt	$r3,$r19,-39568(0x36570) # 1c07691c <_data_lma+0x753ec>
1c0803b0:	206c6169 	ll.w	$r9,$r11,27744(0x6c60)
1c0803b4:	74786574 	0x74786574
1c0803b8:	20657275 	ll.w	$r21,$r19,25968(0x6570)
1c0803bc:	63696877 	blt	$r3,$r23,-38552(0x36968) # 1c076d24 <_data_lma+0x757f4>
1c0803c0:	6c612068 	bgeu	$r3,$r8,24864(0x6120) # 1c0864e0 <_end+0x5428>
1c0803c4:	73726574 	0x73726574
1c0803c8:	73746920 	0x73746920
1c0803cc:	00000000 	0x00000000
1c0803d0:	63656c65 	blt	$r3,$r5,-39572(0x3656c) # 1c07693c <_data_lma+0x7540c>
1c0803d4:	6d6f7274 	bgeu	$r19,$r20,94064(0x16f70) # 1c097344 <_end+0x1628c>
1c0803d8:	656e6761 	bge	$r27,$r1,93796(0x16e64) # 1c09723c <_end+0x16184>
1c0803dc:	20636974 	ll.w	$r20,$r11,25448(0x6368)
1c0803e0:	706f7270 	0x706f7270
1c0803e4:	69747265 	bltu	$r19,$r5,95344(0x17470) # 1c097854 <_end+0x1679c>
1c0803e8:	202e7365 	ll.w	$r5,$r27,11888(0x2e70)
1c0803ec:	6564614d 	bge	$r10,$r13,91232(0x16460) # 1c09684c <_end+0x15794>
1c0803f0:	20666f20 	ll.w	$r0,$r25,26220(0x666c)
1c0803f4:	696c6f73 	bltu	$r27,$r19,93292(0x16c6c) # 1c097060 <_end+0x15fa8>
1c0803f8:	00000064 	0x00000064
1c0803fc:	6174656d 	blt	$r11,$r13,95332(0x17464) # 1c097860 <_end+0x167a8>
1c080400:	74202c6c 	xvsubwev.h.b	$xr12,$xr3,$xr11
1c080404:	73206568 	0x73206568
1c080408:	63757274 	blt	$r19,$r20,-35472(0x37570) # 1c077978 <_data_lma+0x76448>
1c08040c:	65727574 	bge	$r11,$r20,94836(0x17274) # 1c097680 <_end+0x165c8>
1c080410:	00000000 	0x00000000
1c080414:	646e6f63 	bge	$r27,$r3,28268(0x6e6c) # 1c087280 <_end+0x61c8>
1c080418:	73746375 	0x73746375
1c08041c:	20434420 	ll.w	$r0,$r1,17220(0x4344)
1c080420:	72727563 	0x72727563
1c080424:	73746e65 	0x73746e65
1c080428:	7562202c 	0x7562202c
1c08042c:	766f2074 	0x766f2074
1c080430:	61207265 	blt	$r19,$r5,73840(0x12070) # 1c0924a0 <_end+0x113e8>
1c080434:	00000000 	0x00000000
1c080438:	74726170 	xvmin.b	$xr16,$xr11,$xr24
1c08043c:	6c756369 	bgeu	$r27,$r9,30048(0x7560) # 1c08799c <_end+0x68e4>
1c080440:	66207261 	bge	$r19,$r1,-122768(0x22070) # 1c0624b0 <_data_lma+0x60f80>
1c080444:	75716572 	0x75716572
1c080448:	79636e65 	0x79636e65
1c08044c:	6e617220 	bgeu	$r17,$r0,-106128(0x26170) # 1c0665bc <_data_lma+0x6508c>
1c080450:	69206567 	bltu	$r11,$r7,73828(0x12064) # 1c0924b4 <_end+0x113fc>
1c080454:	6f642074 	bgeu	$r3,$r20,-39904(0x36420) # 1c076874 <_data_lma+0x75344>
1c080458:	00007365 	0x00007365
1c08045c:	20746f6e 	ll.w	$r14,$r27,29804(0x746c)
1c080460:	646e6f63 	bge	$r27,$r3,28268(0x6e6c) # 1c0872cc <_end+0x6214>
1c080464:	20746375 	ll.w	$r21,$r27,29792(0x7460)
1c080468:	63204341 	blt	$r26,$r1,-57280(0x32040) # 1c0724a8 <_data_lma+0x70f78>
1c08046c:	65727275 	bge	$r19,$r21,94832(0x17270) # 1c0976dc <_end+0x16624>
1c080470:	2e73746e 	0x2e73746e
1c080474:	20744920 	ll.w	$r0,$r9,29768(0x7448)
1c080478:	73656f64 	vssrani.wu.d	$vr4,$vr27,0x1b
1c08047c:	746f6e20 	0x746f6e20
1c080480:	00000000 	0x00000000
1c080484:	65766572 	bge	$r11,$r18,95844(0x17664) # 1c097ae8 <_end+0x16a30>
1c080488:	20657372 	ll.w	$r18,$r27,25968(0x6570)
1c08048c:	20656874 	ll.w	$r20,$r3,25960(0x6568)
1c080490:	73616870 	vssrani.w.d	$vr16,$vr3,0x1a
1c080494:	666f2065 	bge	$r3,$r5,-102624(0x26f20) # 1c0673b4 <_data_lma+0x65e84>
1c080498:	66657220 	bge	$r17,$r0,-105104(0x26570) # 1c066a08 <_data_lma+0x654d8>
1c08049c:	7463656c 	xvabsd.wu	$xr12,$xr11,$xr25
1c0804a0:	00006465 	rdtimeh.w	$r5,$r3
1c0804a4:	65766177 	bge	$r11,$r23,95840(0x17660) # 1c097b04 <_end+0x16a4c>
1c0804a8:	61202c73 	blt	$r3,$r19,73772(0x1202c) # 1c0924d4 <_end+0x1141c>
1c0804ac:	7420646e 	xvsubwev.h.b	$xr14,$xr3,$xr25
1c0804b0:	65206568 	bge	$r11,$r8,73828(0x12064) # 1c092514 <_end+0x1145c>
1c0804b4:	63656666 	blt	$r19,$r6,-39580(0x36564) # 1c076a18 <_data_lma+0x754e8>
1c0804b8:	65766974 	bge	$r11,$r20,95848(0x17668) # 1c097b20 <_end+0x16a68>
1c0804bc:	616d6920 	blt	$r9,$r0,93544(0x16d68) # 1c097224 <_end+0x1616c>
1c0804c0:	63206567 	blt	$r11,$r7,-57244(0x32064) # 1c072524 <_data_lma+0x70ff4>
1c0804c4:	65727275 	bge	$r19,$r21,94832(0x17270) # 1c097734 <_end+0x1667c>
1c0804c8:	0073746e 	bstrins.w	$r14,$r3,0x13,0x1d
1c0804cc:	65707061 	bge	$r3,$r1,94320(0x17070) # 1c09753c <_end+0x16484>
1c0804d0:	69207261 	bltu	$r19,$r1,73840(0x12070) # 1c092540 <_end+0x11488>
1c0804d4:	68702d6e 	bltu	$r11,$r14,28716(0x702c) # 1c087500 <_end+0x6448>
1c0804d8:	2c657361 	vst	$vr1,$r27,-1700(0x95c)
1c0804dc:	74617220 	xvabsd.w	$xr0,$xr17,$xr28
1c0804e0:	20726568 	ll.w	$r8,$r11,29284(0x7264)
1c0804e4:	6e616874 	bgeu	$r3,$r20,-106136(0x26168) # 1c06664c <_data_lma+0x6511c>
1c0804e8:	00000000 	0x00000000
1c0804ec:	2d74756f 	0x2d74756f
1c0804f0:	702d666f 	0x702d666f
1c0804f4:	65736168 	bge	$r11,$r8,95072(0x17360) # 1c097854 <_end+0x1679c>
1c0804f8:	20736120 	ll.w	$r0,$r9,29536(0x7360)
1c0804fc:	79656874 	0x79656874
1c080500:	65726120 	bge	$r9,$r0,94816(0x17260) # 1c097760 <_end+0x166a8>
1c080504:	206e6f20 	ll.w	$r0,$r25,28268(0x6e6c)
1c080508:	6d726f6e 	bgeu	$r27,$r14,94828(0x1726c) # 1c097774 <_end+0x166bc>
1c08050c:	00006c61 	cpucfg	$r1,$r3
1c080510:	646e6f63 	bge	$r27,$r3,28268(0x6e6c) # 1c08737c <_end+0x62c4>
1c080514:	6f746375 	bgeu	$r27,$r21,-35744(0x37460) # 1c077974 <_data_lma+0x76444>
1c080518:	202e7372 	ll.w	$r18,$r27,11888(0x2e70)
1c08051c:	74727546 	xvmin.b	$xr6,$xr10,$xr29
1c080520:	6d726568 	bgeu	$r11,$r8,94820(0x17264) # 1c097784 <_end+0x166cc>
1c080524:	2c65726f 	vst	$vr15,$r19,-1700(0x95c)
1c080528:	72757320 	0x72757320
1c08052c:	65636166 	bge	$r11,$r6,90976(0x16360) # 1c09688c <_end+0x157d4>
1c080530:	00000000 	0x00000000
1c080534:	65766177 	bge	$r11,$r23,95840(0x17660) # 1c097b94 <_end+0x16adc>
1c080538:	6f642073 	bgeu	$r3,$r19,-39904(0x36420) # 1c076958 <_data_lma+0x75428>
1c08053c:	746f6e20 	0x746f6e20
1c080540:	6f727020 	bgeu	$r1,$r0,-36240(0x37270) # 1c0777b0 <_data_lma+0x76280>
1c080544:	61676170 	blt	$r11,$r16,92000(0x16760) # 1c096ca4 <_end+0x15bec>
1c080548:	202c6574 	ll.w	$r20,$r11,11364(0x2c64)
1c08054c:	20646e61 	ll.w	$r1,$r19,25708(0x646c)
1c080550:	74736e69 	xvmin.w	$xr9,$xr19,$xr27
1c080554:	00646165 	bstrins.w	$r5,$r11,0x4,0x18
1c080558:	69646172 	bltu	$r11,$r18,91232(0x16460) # 1c0969b8 <_end+0x15900>
1c08055c:	20657461 	ll.w	$r1,$r3,25972(0x6574)
1c080560:	69666665 	bltu	$r19,$r5,91748(0x16664) # 1c096bc4 <_end+0x15b0c>
1c080564:	6e656963 	bgeu	$r11,$r3,-105112(0x26568) # 1c066acc <_data_lma+0x6559c>
1c080568:	20796c74 	ll.w	$r20,$r3,31084(0x796c)
1c08056c:	6f746e69 	bgeu	$r19,$r9,-35732(0x3746c) # 1c0779d8 <_data_lma+0x764a8>
1c080570:	65726620 	bge	$r17,$r0,94820(0x17264) # 1c0977d4 <_end+0x1671c>
1c080574:	00000065 	0x00000065
1c080578:	63617073 	blt	$r3,$r19,-40592(0x36170) # 1c0766e8 <_data_lma+0x751b8>
1c08057c:	54202e65 	bl	-107732948(0x994202c) # 159c25a8 <__stack_size+0x159b25a8>
1c080580:	20736968 	ll.w	$r8,$r11,29544(0x7368)
1c080584:	2077656e 	ll.w	$r14,$r11,30564(0x7764)
1c080588:	6574616d 	bge	$r11,$r13,95328(0x17460) # 1c0979e8 <_end+0x16930>
1c08058c:	6c616972 	bgeu	$r11,$r18,24936(0x6168) # 1c0866f4 <_end+0x563c>
1c080590:	6574202c 	bge	$r1,$r12,95264(0x17420) # 1c0979b0 <_end+0x168f8>
1c080594:	64656d72 	bge	$r11,$r18,25964(0x656c) # 1c086b00 <_end+0x5a48>
1c080598:	00006120 	rdtimel.w	$r0,$r9
1c08059c:	68676968 	bltu	$r11,$r8,26472(0x6768) # 1c086d04 <_end+0x5c4c>
1c0805a0:	706d692d 	0x706d692d
1c0805a4:	6e616465 	bgeu	$r3,$r5,-106140(0x26164) # 1c066708 <_data_lma+0x651d8>
1c0805a8:	73206563 	0x73206563
1c0805ac:	61667275 	blt	$r19,$r21,91760(0x16670) # 1c096c1c <_end+0x15b64>
1c0805b0:	202c6563 	ll.w	$r3,$r11,11364(0x2c64)
1c0805b4:	766f7270 	0x766f7270
1c0805b8:	73656469 	vssrani.wu.d	$vr9,$vr3,0x19
1c0805bc:	00000000 	0x00000000
1c0805c0:	73752061 	0x73752061
1c0805c4:	6c756665 	bgeu	$r19,$r5,30052(0x7564) # 1c087b28 <_end+0x6a70>
1c0805c8:	77656e20 	xvssrani.wu.d	$xr0,$xr17,0x1b
1c0805cc:	6f726720 	bgeu	$r25,$r0,-36252(0x37264) # 1c077830 <_data_lma+0x76300>
1c0805d0:	20646e75 	ll.w	$r21,$r19,25708(0x646c)
1c0805d4:	6e616c70 	bgeu	$r3,$r16,-106132(0x2616c) # 1c066740 <_data_lma+0x65210>
1c0805d8:	6f662065 	bgeu	$r3,$r5,-39392(0x36620) # 1c076bf8 <_data_lma+0x756c8>
1c0805dc:	6f6e2072 	bgeu	$r3,$r18,-37344(0x36e20) # 1c0773fc <_data_lma+0x75ecc>
1c0805e0:	006c6576 	bstrins.w	$r22,$r11,0xc,0x19
1c0805e4:	2d776f6c 	0x2d776f6c
1c0805e8:	666f7270 	bge	$r19,$r16,-102544(0x26f70) # 1c067558 <_data_lma+0x66028>
1c0805ec:	20656c69 	ll.w	$r9,$r3,25964(0x656c)
1c0805f0:	65746e61 	bge	$r19,$r1,95340(0x1746c) # 1c097a5c <_end+0x169a4>
1c0805f4:	73616e6e 	vssrani.w.d	$vr14,$vr19,0x1b
1c0805f8:	646e6120 	bge	$r9,$r0,28256(0x6e60) # 1c087458 <_end+0x63a0>
1c0805fc:	68746f20 	bltu	$r25,$r0,29804(0x746c) # 1c087a68 <_end+0x69b0>
1c080600:	00007265 	0x00007265
1c080604:	63656c65 	blt	$r3,$r5,-39572(0x3656c) # 1c076b70 <_data_lma+0x75640>
1c080608:	6d6f7274 	bgeu	$r19,$r20,94064(0x16f70) # 1c097578 <_end+0x164c0>
1c08060c:	656e6761 	bge	$r27,$r1,93796(0x16e64) # 1c097470 <_end+0x163b8>
1c080610:	20636974 	ll.w	$r20,$r11,25448(0x6368)
1c080614:	75727473 	0x75727473
1c080618:	72757463 	0x72757463
1c08061c:	002e7365 	0x002e7365
1c080620:	20656854 	ll.w	$r20,$r2,25960(0x6568)
1c080624:	65636572 	bge	$r11,$r18,90980(0x16364) # 1c096988 <_end+0x158d0>
1c080628:	7020746e 	vsubwev.h.b	$vr14,$vr3,$vr29
1c08062c:	65746f72 	bge	$r27,$r18,95340(0x1746c) # 1c097a98 <_end+0x169e0>
1c080630:	20737473 	ll.w	$r19,$r3,29556(0x7374)
1c080634:	756f6261 	0x756f6261
1c080638:	68742074 	bltu	$r3,$r20,29728(0x7420) # 1c087a58 <_end+0x69a0>
1c08063c:	694d2065 	bltu	$r3,$r5,85280(0x14d20) # 1c09535c <_end+0x142a4>
1c080640:	67696863 	bge	$r3,$r3,-38552(0x36968) # 1c076fa8 <_data_lma+0x75a78>
1c080644:	61756d61 	blt	$r11,$r1,95596(0x1756c) # 1c097bb0 <_end+0x16af8>
1c080648:	00000000 	0x00000000
1c08064c:	64757473 	bge	$r3,$r19,30068(0x7574) # 1c087bc0 <_end+0x6b08>
1c080650:	20746e65 	ll.w	$r5,$r19,29804(0x746c)
1c080654:	6167726f 	blt	$r19,$r15,92016(0x16770) # 1c096dc4 <_end+0x15d0c>
1c080658:	617a696e 	blt	$r11,$r14,96872(0x17a68) # 1c0980c0 <_end+0x17008>
1c08065c:	6e6f6974 	bgeu	$r11,$r20,-102552(0x26f68) # 1c0675c4 <_data_lma+0x66094>
1c080660:	76616820 	0x76616820
1c080664:	61722065 	blt	$r3,$r5,94752(0x17220) # 1c097884 <_end+0x167cc>
1c080668:	64657369 	bge	$r27,$r9,25968(0x6570) # 1c086bd8 <_end+0x5b20>
1c08066c:	006e6120 	bstrins.w	$r0,$r9,0xe,0x18
1c080670:	6f706d69 	bgeu	$r11,$r9,-36756(0x3706c) # 1c0776dc <_data_lma+0x761ac>
1c080674:	6e617472 	bgeu	$r3,$r18,-106124(0x26174) # 1c0667e8 <_data_lma+0x652b8>
1c080678:	75712074 	0x75712074
1c08067c:	69747365 	bltu	$r27,$r5,95344(0x17470) # 1c097aec <_end+0x16a34>
1c080680:	61206e6f 	blt	$r19,$r15,73836(0x1206c) # 1c0926ec <_end+0x11634>
1c080684:	6f742073 	bgeu	$r3,$r19,-35808(0x37420) # 1c077aa4 <_data_lma+0x76574>
1c080688:	65687420 	bge	$r1,$r0,92276(0x16874) # 1c096efc <_end+0x15e44>
1c08068c:	6f727020 	bgeu	$r1,$r0,-36240(0x37270) # 1c0778fc <_data_lma+0x763cc>
1c080690:	20726570 	ll.w	$r16,$r11,29284(0x7264)
1c080694:	7574616e 	0x7574616e
1c080698:	00006572 	rdtimeh.w	$r18,$r11
1c08069c:	20646e61 	ll.w	$r1,$r19,25708(0x646c)
1c0806a0:	706f6373 	0x706f6373
1c0806a4:	666f2065 	bge	$r3,$r5,-102624(0x26f20) # 1c0675c4 <_data_lma+0x66094>
1c0806a8:	696e5520 	bltu	$r9,$r0,93780(0x16e54) # 1c0974fc <_end+0x16444>
1c0806ac:	73726576 	0x73726576
1c0806b0:	20797469 	ll.w	$r9,$r3,31092(0x7974)
1c0806b4:	6f766e69 	bgeu	$r19,$r9,-35220(0x3766c) # 1c077d20 <_data_lma+0x767f0>
1c0806b8:	6d65766c 	bgeu	$r19,$r12,91508(0x16574) # 1c096c2c <_end+0x15b74>
1c0806bc:	00746e65 	bstrins.w	$r5,$r19,0x14,0x1b
1c0806c0:	68746977 	bltu	$r11,$r23,29800(0x7468) # 1c087b28 <_end+0x6a70>
1c0806c4:	75747320 	0x75747320
1c0806c8:	746e6564 	0x746e6564
1c0806cc:	67726f20 	bge	$r25,$r0,-36244(0x3726c) # 1c077938 <_data_lma+0x76408>
1c0806d0:	7a696e61 	0x7a696e61
1c0806d4:	6f697461 	bgeu	$r3,$r1,-38540(0x36974) # 1c077048 <_data_lma+0x75b18>
1c0806d8:	202e736e 	ll.w	$r14,$r27,11888(0x2e70)
1c0806dc:	6f636341 	bgeu	$r26,$r1,-40096(0x36360) # 1c076a3c <_data_lma+0x7550c>
1c0806e0:	6e696472 	bgeu	$r3,$r18,-104092(0x26964) # 1c067044 <_data_lma+0x65b14>
1c0806e4:	00796c67 	bstrins.w	$r7,$r3,0x19,0x1b
1c0806e8:	20656874 	ll.w	$r20,$r3,25960(0x6568)
1c0806ec:	656e6170 	bge	$r11,$r16,93792(0x16e60) # 1c09754c <_end+0x16494>
1c0806f0:	6564206c 	bge	$r3,$r12,91168(0x16420) # 1c096b10 <_end+0x15a58>
1c0806f4:	69726373 	bltu	$r27,$r19,94816(0x17260) # 1c097954 <_end+0x1689c>
1c0806f8:	20646562 	ll.w	$r2,$r11,25700(0x6464)
1c0806fc:	6d206e69 	bgeu	$r19,$r9,73836(0x1206c) # 1c092768 <_end+0x116b0>
1c080700:	74532079 	0x74532079
1c080704:	6d657461 	bgeu	$r3,$r1,91508(0x16574) # 1c096c78 <_end+0x15bc0>
1c080708:	20746e65 	ll.w	$r5,$r19,29804(0x746c)
1c08070c:	0000666f 	rdtimeh.w	$r15,$r19
1c080710:	72626546 	0x72626546
1c080714:	79726175 	0x79726175
1c080718:	2c353220 	vld	$vr0,$r17,-692(0xd4c)
1c08071c:	30303220 	0x30303220
1c080720:	68742030 	bltu	$r1,$r16,29728(0x7420) # 1c087b40 <_end+0x6a88>
1c080724:	69207461 	bltu	$r3,$r1,73844(0x12074) # 1c092798 <_end+0x116e0>
1c080728:	6f632073 	bgeu	$r3,$r19,-40160(0x36320) # 1c076a48 <_data_lma+0x75518>
1c08072c:	6469736e 	bge	$r27,$r14,26992(0x6970) # 1c08709c <_end+0x5fe4>
1c080730:	6e697265 	bgeu	$r19,$r5,-104080(0x26970) # 1c0670a0 <_data_lma+0x65b70>
1c080734:	68742067 	bltu	$r3,$r7,29728(0x7420) # 1c087b54 <_end+0x6a9c>
1c080738:	00000065 	0x00000065
1c08073c:	73657571 	vssrani.wu.d	$vr17,$vr11,0x1d
1c080740:	6e6f6974 	bgeu	$r11,$r20,-102552(0x26f68) # 1c0676a8 <_data_lma+0x66178>
1c080744:	20666f20 	ll.w	$r0,$r25,26220(0x666c)
1c080748:	76697270 	0x76697270
1c08074c:	67656c69 	bge	$r3,$r9,-39572(0x3656c) # 1c076cb8 <_data_lma+0x75788>
1c080750:	73206465 	0x73206465
1c080754:	65636170 	bge	$r11,$r16,90976(0x16360) # 1c096ab4 <_end+0x159fc>
1c080758:	736c6120 	vssrarni.bu.h	$vr0,$vr9,0x8
1c08075c:	6977206f 	bltu	$r3,$r15,96032(0x17720) # 1c097e7c <_end+0x16dc4>
1c080760:	00006c6c 	cpucfg	$r12,$r3
1c080764:	736e6f63 	vssrarni.du.q	$vr3,$vr27,0x1b
1c080768:	72656469 	0x72656469
1c08076c:	646e7520 	bge	$r9,$r0,28276(0x6e74) # 1c0875e0 <_end+0x6528>
1c080770:	77207265 	0x77207265
1c080774:	20746168 	ll.w	$r8,$r11,29792(0x7460)
1c080778:	63726963 	blt	$r11,$r3,-36248(0x37268) # 1c0779e0 <_data_lma+0x764b0>
1c08077c:	74736d75 	xvmin.w	$xr21,$xr11,$xr27
1c080780:	65636e61 	bge	$r19,$r1,90988(0x1636c) # 1c096aec <_end+0x15a34>
1c080784:	6e612073 	bgeu	$r3,$r19,-106208(0x26120) # 1c0668a4 <_data_lma+0x65374>
1c080788:	6e692064 	bgeu	$r3,$r4,-104160(0x26920) # 1c0670a8 <_data_lma+0x65b78>
1c08078c:	00000000 	0x00000000
1c080790:	74616877 	xvabsd.w	$xr23,$xr3,$xr26
1c080794:	79617720 	0x79617720
1c080798:	68742073 	bltu	$r3,$r19,29728(0x7420) # 1c087bb8 <_end+0x6b00>
1c08079c:	6e552065 	bgeu	$r3,$r5,-109280(0x25520) # 1c065cbc <_data_lma+0x6478c>
1c0807a0:	72657669 	0x72657669
1c0807a4:	79746973 	0x79746973
1c0807a8:	7469202c 	xvavgr.w	$xr12,$xr1,$xr8
1c0807ac:	00000073 	0x00000073
1c0807b0:	696d6461 	bltu	$r3,$r1,93540(0x16d64) # 1c097514 <_end+0x1645c>
1c0807b4:	7473696e 	xvmin.w	$xr14,$xr11,$xr26
1c0807b8:	6f746172 	bgeu	$r11,$r18,-35744(0x37460) # 1c077c18 <_data_lma+0x766e8>
1c0807bc:	61207372 	blt	$r27,$r18,73840(0x12070) # 1c09282c <_end+0x11774>
1c0807c0:	6620646e 	bge	$r3,$r14,-122780(0x22064) # 1c062824 <_data_lma+0x612f4>
1c0807c4:	6c756361 	bgeu	$r27,$r1,30048(0x7560) # 1c087d24 <_end+0x6c6c>
1c0807c8:	6d207974 	bgeu	$r11,$r20,73848(0x12078) # 1c092840 <_end+0x11788>
1c0807cc:	65626d65 	bge	$r11,$r5,90732(0x1626c) # 1c096a38 <_end+0x15980>
1c0807d0:	73207372 	0x73207372
1c0807d4:	6c756f68 	bgeu	$r27,$r8,30060(0x756c) # 1c087d40 <_end+0x6c88>
1c0807d8:	00000064 	0x00000064
1c0807dc:	61206562 	blt	$r11,$r2,73828(0x12064) # 1c092840 <_end+0x11788>
1c0807e0:	636f7373 	blt	$r27,$r19,-37008(0x36f70) # 1c077750 <_data_lma+0x76220>
1c0807e4:	65746169 	bge	$r11,$r9,95328(0x17460) # 1c097c44 <_end+0x16b8c>
1c0807e8:	69772064 	bltu	$r3,$r4,96032(0x17720) # 1c097f08 <_end+0x16e50>
1c0807ec:	73206874 	0x73206874
1c0807f0:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c0807f4:	6167726f 	blt	$r19,$r15,92016(0x16770) # 1c096f64 <_end+0x15eac>
1c0807f8:	617a696e 	blt	$r11,$r14,96872(0x17a68) # 1c098260 <_end+0x171a8>
1c0807fc:	6e6f6974 	bgeu	$r11,$r20,-102552(0x26f68) # 1c067764 <_data_lma+0x66234>
1c080800:	00000073 	0x00000073
1c080804:	20646e61 	ll.w	$r1,$r19,25708(0x646c)
1c080808:	77207469 	0x77207469
1c08080c:	206c6c69 	ll.w	$r9,$r3,27756(0x6c6c)
1c080810:	6f636572 	bgeu	$r11,$r18,-40092(0x36364) # 1c076b74 <_data_lma+0x75644>
1c080814:	6e656d6d 	bgeu	$r11,$r13,-105108(0x2656c) # 1c066d80 <_data_lma+0x65850>
1c080818:	75672064 	0x75672064
1c08081c:	6e696469 	bgeu	$r3,$r9,-104092(0x26964) # 1c067180 <_data_lma+0x65c50>
1c080820:	72702067 	0x72702067
1c080824:	69636e69 	bltu	$r19,$r9,90988(0x1636c) # 1c096b90 <_end+0x15ad8>
1c080828:	73656c70 	vssrani.wu.d	$vr16,$vr3,0x1b
1c08082c:	00000000 	0x00000000
1c080830:	74206e69 	xvsubwev.h.b	$xr9,$xr19,$xr27
1c080834:	20736968 	ll.w	$r8,$r11,29544(0x7368)
1c080838:	61676572 	blt	$r11,$r18,92004(0x16764) # 1c096f9c <_end+0x15ee4>
1c08083c:	202e6472 	ll.w	$r18,$r3,11876(0x2e64)
1c080840:	20656854 	ll.w	$r20,$r2,25960(0x6568)
1c080844:	76696e55 	0x76696e55
1c080848:	69737265 	bltu	$r19,$r5,95088(0x17370) # 1c097bb8 <_end+0x16b00>
1c08084c:	73277974 	0x73277974
1c080850:	00000000 	0x00000000
1c080854:	63657845 	blt	$r2,$r5,-39560(0x36578) # 1c076dcc <_data_lma+0x7589c>
1c080858:	76697475 	0x76697475
1c08085c:	664f2065 	bge	$r3,$r5,-110816(0x24f20) # 1c06577c <_data_lma+0x6424c>
1c080860:	65636966 	bge	$r11,$r6,90984(0x16368) # 1c096bc8 <_end+0x15b10>
1c080864:	61207372 	blt	$r27,$r18,73840(0x12070) # 1c0928d4 <_end+0x1181c>
1c080868:	4920646e 	bceqz	$fcc3,3743844(0x392064) # 1c4128cc <_stack+0x3128d0>
1c08086c:	6c697720 	bgeu	$r25,$r0,26996(0x6974) # 1c0871e0 <_end+0x6128>
1c080870:	6874206c 	bltu	$r3,$r12,29728(0x7420) # 1c087c90 <_end+0x6bd8>
1c080874:	64206e65 	bge	$r19,$r5,8300(0x206c) # 1c0828e0 <_end+0x1828>
1c080878:	64696365 	bge	$r27,$r5,26976(0x6960) # 1c0871d8 <_end+0x6120>
1c08087c:	00000065 	0x00000065
1c080880:	74656877 	xvavg.w	$xr23,$xr3,$xr26
1c080884:	20726568 	ll.w	$r8,$r11,29284(0x7264)
1c080888:	20646e61 	ll.w	$r1,$r19,25708(0x646c)
1c08088c:	20776f68 	ll.w	$r8,$r27,30572(0x776c)
1c080890:	69206f74 	bltu	$r27,$r20,73836(0x1206c) # 1c0928fc <_end+0x11844>
1c080894:	656c706d 	bge	$r3,$r13,93296(0x16c70) # 1c097504 <_end+0x1644c>
1c080898:	746e656d 	0x746e656d
1c08089c:	63757320 	blt	$r25,$r0,-35472(0x37570) # 1c077e0c <_data_lma+0x768dc>
1c0808a0:	00000068 	0x00000068
1c0808a4:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # 1c067214 <_data_lma+0x65ce4>
1c0808a8:	6c706963 	bgeu	$r11,$r3,28776(0x7068) # 1c087910 <_end+0x6858>
1c0808ac:	002e7365 	0x002e7365
1c0808b0:	1c0800c4 	pcaddu12i	$r4,16390(0x4006)
1c0808b4:	1c0800c8 	pcaddu12i	$r8,16390(0x4006)
1c0808b8:	1c0800cc 	pcaddu12i	$r12,16390(0x4006)
1c0808bc:	1c0800d0 	pcaddu12i	$r16,16390(0x4006)
1c0808c0:	1c0800d4 	pcaddu12i	$r20,16390(0x4006)
1c0808c4:	1c0800d8 	pcaddu12i	$r24,16390(0x4006)
1c0808c8:	1c0800dc 	pcaddu12i	$r28,16390(0x4006)
1c0808cc:	1c08027c 	pcaddu12i	$r28,16403(0x4013)
1c0808d0:	1c0800e0 	pcaddu12i	$r0,16391(0x4007)
1c0808d4:	1c0800e4 	pcaddu12i	$r4,16391(0x4007)
1c0808d8:	1c0800e4 	pcaddu12i	$r4,16391(0x4007)
1c0808dc:	1c0800e8 	pcaddu12i	$r8,16391(0x4007)
1c0808e0:	1c0800e8 	pcaddu12i	$r8,16391(0x4007)
1c0808e4:	1c0800ec 	pcaddu12i	$r12,16391(0x4007)
1c0808e8:	1c0800f4 	pcaddu12i	$r20,16391(0x4007)
1c0808ec:	1c0800f8 	pcaddu12i	$r24,16391(0x4007)
1c0808f0:	1c0800fc 	pcaddu12i	$r28,16391(0x4007)
1c0808f4:	1c080104 	pcaddu12i	$r4,16392(0x4008)
1c0808f8:	1c08010c 	pcaddu12i	$r12,16392(0x4008)
1c0808fc:	1c080114 	pcaddu12i	$r20,16392(0x4008)
1c080900:	1c08011c 	pcaddu12i	$r28,16392(0x4008)
1c080904:	1c080120 	pcaddu12i	$r0,16393(0x4009)
1c080908:	1c080128 	pcaddu12i	$r8,16393(0x4009)
1c08090c:	1c080130 	pcaddu12i	$r16,16393(0x4009)
1c080910:	1c080138 	pcaddu12i	$r24,16393(0x4009)
1c080914:	1c080140 	pcaddu12i	$r0,16394(0x400a)
1c080918:	1c080148 	pcaddu12i	$r8,16394(0x400a)
1c08091c:	1c080150 	pcaddu12i	$r16,16394(0x400a)
1c080920:	1c080158 	pcaddu12i	$r24,16394(0x400a)
1c080924:	1c080160 	pcaddu12i	$r0,16395(0x400b)
1c080928:	1c080168 	pcaddu12i	$r8,16395(0x400b)
1c08092c:	1c080158 	pcaddu12i	$r24,16394(0x400a)
1c080930:	1c080170 	pcaddu12i	$r16,16395(0x400b)
1c080934:	1c08017c 	pcaddu12i	$r28,16395(0x400b)
1c080938:	1c080508 	pcaddu12i	$r8,16424(0x4028)
1c08093c:	1c080184 	pcaddu12i	$r4,16396(0x400c)
1c080940:	1c08018c 	pcaddu12i	$r12,16396(0x400c)
1c080944:	1c080194 	pcaddu12i	$r20,16396(0x400c)
1c080948:	1c08019c 	pcaddu12i	$r28,16396(0x400c)
1c08094c:	1c08011c 	pcaddu12i	$r28,16392(0x4008)
1c080950:	1c0801a0 	pcaddu12i	$r0,16397(0x400d)
1c080954:	1c0801a8 	pcaddu12i	$r8,16397(0x400d)
1c080958:	1c0801b0 	pcaddu12i	$r16,16397(0x400d)
1c08095c:	1c0801b8 	pcaddu12i	$r24,16397(0x400d)
1c080960:	1c0801c0 	pcaddu12i	$r0,16398(0x400e)
1c080964:	1c0801c8 	pcaddu12i	$r8,16398(0x400e)
1c080968:	1c0801d4 	pcaddu12i	$r20,16398(0x400e)
1c08096c:	1c0801dc 	pcaddu12i	$r28,16398(0x400e)
1c080970:	1c0801e4 	pcaddu12i	$r4,16399(0x400f)
1c080974:	1c0801f4 	pcaddu12i	$r20,16399(0x400f)
1c080978:	1c0801f8 	pcaddu12i	$r24,16399(0x400f)
1c08097c:	1c080200 	pcaddu12i	$r0,16400(0x4010)
1c080980:	1c080208 	pcaddu12i	$r8,16400(0x4010)
1c080984:	1c080210 	pcaddu12i	$r16,16400(0x4010)
1c080988:	1c080218 	pcaddu12i	$r24,16400(0x4010)
1c08098c:	1c080224 	pcaddu12i	$r4,16401(0x4011)
1c080990:	1c080230 	pcaddu12i	$r16,16401(0x4011)
1c080994:	00000000 	0x00000000
1c080998:	1c080240 	pcaddu12i	$r0,16402(0x4012)
1c08099c:	1c080248 	pcaddu12i	$r8,16402(0x4012)
1c0809a0:	1c080250 	pcaddu12i	$r16,16402(0x4012)
1c0809a4:	1c080260 	pcaddu12i	$r0,16403(0x4013)
1c0809a8:	1c080270 	pcaddu12i	$r16,16403(0x4013)
1c0809ac:	1c080278 	pcaddu12i	$r24,16403(0x4013)
1c0809b0:	1c080278 	pcaddu12i	$r24,16403(0x4013)
1c0809b4:	1c080278 	pcaddu12i	$r24,16403(0x4013)
1c0809b8:	1c080278 	pcaddu12i	$r24,16403(0x4013)
1c0809bc:	1c080278 	pcaddu12i	$r24,16403(0x4013)
1c0809c0:	1c0800e4 	pcaddu12i	$r4,16391(0x4007)
1c0809c4:	1c0800e8 	pcaddu12i	$r8,16391(0x4007)
1c0809c8:	1c080018 	pcaddu12i	$r24,16384(0x4000)
1c0809cc:	1c080280 	pcaddu12i	$r0,16404(0x4014)
1c0809d0:	1c0802a8 	pcaddu12i	$r8,16405(0x4015)
1c0809d4:	1c0802c0 	pcaddu12i	$r0,16406(0x4016)
1c0809d8:	1c0802e8 	pcaddu12i	$r8,16407(0x4017)
1c0809dc:	1c080308 	pcaddu12i	$r8,16408(0x4018)
1c0809e0:	1c08032c 	pcaddu12i	$r12,16409(0x4019)
1c0809e4:	1c080348 	pcaddu12i	$r8,16410(0x401a)
1c0809e8:	1c08036c 	pcaddu12i	$r12,16411(0x401b)
1c0809ec:	1c080388 	pcaddu12i	$r8,16412(0x401c)
1c0809f0:	1c0803ac 	pcaddu12i	$r12,16413(0x401d)
1c0809f4:	1c0803d0 	pcaddu12i	$r16,16414(0x401e)
1c0809f8:	1c0803fc 	pcaddu12i	$r28,16415(0x401f)
1c0809fc:	1c080414 	pcaddu12i	$r20,16416(0x4020)
1c080a00:	1c080438 	pcaddu12i	$r24,16417(0x4021)
1c080a04:	1c08045c 	pcaddu12i	$r28,16418(0x4022)
1c080a08:	1c080484 	pcaddu12i	$r4,16420(0x4024)
1c080a0c:	1c0804a4 	pcaddu12i	$r4,16421(0x4025)
1c080a10:	1c0804cc 	pcaddu12i	$r12,16422(0x4026)
1c080a14:	1c0804ec 	pcaddu12i	$r12,16423(0x4027)
1c080a18:	1c080510 	pcaddu12i	$r16,16424(0x4028)
1c080a1c:	1c080534 	pcaddu12i	$r20,16425(0x4029)
1c080a20:	1c080558 	pcaddu12i	$r24,16426(0x402a)
1c080a24:	1c080578 	pcaddu12i	$r24,16427(0x402b)
1c080a28:	1c08059c 	pcaddu12i	$r28,16428(0x402c)
1c080a2c:	1c0805c0 	pcaddu12i	$r0,16430(0x402e)
1c080a30:	1c0805e4 	pcaddu12i	$r4,16431(0x402f)
1c080a34:	1c080604 	pcaddu12i	$r4,16432(0x4030)
1c080a38:	1c080620 	pcaddu12i	$r0,16433(0x4031)
1c080a3c:	1c08064c 	pcaddu12i	$r12,16434(0x4032)
1c080a40:	1c080670 	pcaddu12i	$r16,16435(0x4033)
1c080a44:	1c08069c 	pcaddu12i	$r28,16436(0x4034)
1c080a48:	1c0806c0 	pcaddu12i	$r0,16438(0x4036)
1c080a4c:	1c0806e8 	pcaddu12i	$r8,16439(0x4037)
1c080a50:	1c080710 	pcaddu12i	$r16,16440(0x4038)
1c080a54:	1c08073c 	pcaddu12i	$r28,16441(0x4039)
1c080a58:	1c080764 	pcaddu12i	$r4,16443(0x403b)
1c080a5c:	1c080790 	pcaddu12i	$r16,16444(0x403c)
1c080a60:	1c0807b0 	pcaddu12i	$r16,16445(0x403d)
1c080a64:	1c0807dc 	pcaddu12i	$r28,16446(0x403e)
1c080a68:	1c080804 	pcaddu12i	$r4,16448(0x4040)
1c080a6c:	1c080830 	pcaddu12i	$r16,16449(0x4041)
1c080a70:	1c080854 	pcaddu12i	$r20,16450(0x4042)
1c080a74:	1c080880 	pcaddu12i	$r0,16452(0x4044)
1c080a78:	1c0808a4 	pcaddu12i	$r4,16453(0x4045)
1c080a7c:	00000001 	0x00000001
1c080a80:	00000001 	0x00000001
1c080a84:	00000000 	0x00000000
1c080a88:	00000001 	0x00000001
1c080a8c:	00000001 	0x00000001
1c080a90:	00000001 	0x00000001
1c080a94:	00000001 	0x00000001
1c080a98:	00000001 	0x00000001
1c080a9c:	00000001 	0x00000001
1c080aa0:	00000000 	0x00000000
1c080aa4:	00000001 	0x00000001
1c080aa8:	00000001 	0x00000001
1c080aac:	00000000 	0x00000000
1c080ab0:	00000001 	0x00000001
1c080ab4:	00000001 	0x00000001
1c080ab8:	00000001 	0x00000001
1c080abc:	00000001 	0x00000001
1c080ac0:	00000000 	0x00000000
1c080ac4:	00000001 	0x00000001
1c080ac8:	00000001 	0x00000001
	...
1c080ad4:	00000001 	0x00000001
1c080ad8:	00000001 	0x00000001
	...
1c080ae4:	00000001 	0x00000001
1c080ae8:	00000001 	0x00000001
1c080aec:	00000001 	0x00000001
	...
1c080af8:	00000001 	0x00000001
1c080afc:	00000001 	0x00000001
	...
1c080b3c:	00000001 	0x00000001
1c080b40:	00000001 	0x00000001
1c080b44:	00000001 	0x00000001
1c080b48:	00000001 	0x00000001
1c080b4c:	00000000 	0x00000000
1c080b50:	00000001 	0x00000001
1c080b54:	00000000 	0x00000000
1c080b58:	00000001 	0x00000001
1c080b5c:	00000000 	0x00000000
1c080b60:	1c000ed0 	pcaddu12i	$r16,118(0x76)
1c080b64:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b68:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b6c:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b70:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b74:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b78:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b7c:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b80:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b84:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b88:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080b8c:	1c000da8 	pcaddu12i	$r8,109(0x6d)
1c080b90:	1c000db4 	pcaddu12i	$r20,109(0x6d)
1c080b94:	1c000db4 	pcaddu12i	$r20,109(0x6d)
1c080b98:	1c000db4 	pcaddu12i	$r20,109(0x6d)
1c080b9c:	1c000db4 	pcaddu12i	$r20,109(0x6d)
1c080ba0:	1c000db4 	pcaddu12i	$r20,109(0x6d)
1c080ba4:	1c000db4 	pcaddu12i	$r20,109(0x6d)
1c080ba8:	1c000db4 	pcaddu12i	$r20,109(0x6d)
1c080bac:	1c000db4 	pcaddu12i	$r20,109(0x6d)
1c080bb0:	1c000db4 	pcaddu12i	$r20,109(0x6d)
1c080bb4:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bb8:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bbc:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bc0:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bc4:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bc8:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bcc:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bd0:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bd4:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bd8:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bdc:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080be0:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080be4:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080be8:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bec:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bf0:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bf4:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bf8:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080bfc:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c00:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c04:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c08:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c0c:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c10:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c14:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c18:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c1c:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c20:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c24:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c28:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c2c:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c30:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c34:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c38:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c3c:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c40:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c44:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c48:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c4c:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c50:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c54:	1c000df4 	pcaddu12i	$r20,111(0x6f)
1c080c58:	1c000e10 	pcaddu12i	$r16,112(0x70)
1c080c5c:	1c000e24 	pcaddu12i	$r4,113(0x71)
1c080c60:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c64:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c68:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c6c:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c70:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c74:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c78:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c7c:	1c000e40 	pcaddu12i	$r0,114(0x72)
1c080c80:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c84:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c88:	1c000e60 	pcaddu12i	$r0,115(0x73)
1c080c8c:	1c000e80 	pcaddu12i	$r0,116(0x74)
1c080c90:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c94:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080c98:	1c000ea0 	pcaddu12i	$r0,117(0x75)
1c080c9c:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080ca0:	1c000eb4 	pcaddu12i	$r20,117(0x75)
1c080ca4:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080ca8:	1c000ee0 	pcaddu12i	$r0,119(0x77)
1c080cac:	1c000e80 	pcaddu12i	$r0,116(0x74)

Disassembly of section .bss:

1c080cb0 <__bss_start>:
__bss_start():
1c080cb0:	00000000 	0x00000000

1c080cb4 <len>:
1c080cb4:	00000000 	0x00000000

1c080cb8 <table>:
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
  18:	000cb000 	bytepick.d	$r0,$r0,$r12,0x1
  1c:	00023c1c 	0x00023c1c
  20:	00000000 	0x00000000
  24:	03040200 	lu52i.d	$r0,$r16,256(0x100)
  28:	000b0704 	0x000b0704
  2c:	04030000 	csrrd	$r0,0xc0
  30:	00000607 	0x00000607
  34:	00e50400 	bstrpick.d	$r0,$r0,0x25,0x1
  38:	01010000 	fadd.d	$f0,$f0,$f0
  3c:	00022805 	0x00022805
  40:	000cb000 	bytepick.d	$r0,$r0,$r12,0x1
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
  c4:	000d5c01 	bytepick.d	$r1,$r0,$r23,0x2
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
 108:	000e0c0c 	bytepick.d	$r12,$r0,$r3,0x4
 10c:	0002471c 	0x0002471c
 110:	00012000 	asrtle.d	$r0,$r8
 114:	56010d00 	bl	67240204(0x402010c) # 4020220 <__stack_size+0x4010220>
 118:	010d3201 	fmaxa.d	$f1,$f16,$f12
 11c:	00300157 	0x00300157
 120:	000e200e 	bytepick.d	$r14,$r0,$r8,0x4
 124:	0002531c 	0x0002531c
 128:	0e3c0c00 	0x0e3c0c00
 12c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 130:	01410000 	0x01410000
 134:	010d0000 	fmaxa.d	$f0,$f0,$f0
 138:	0d3a0156 	0x0d3a0156
 13c:	31015701 	0x31015701
 140:	0e580c00 	0x0e580c00
 144:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 148:	01590000 	0x01590000
 14c:	010d0000 	fmaxa.d	$f0,$f0,$f0
 150:	0d3a0156 	0x0d3a0156
 154:	30015701 	0x30015701
 158:	0e780c00 	0x0e780c00
 15c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 160:	01720000 	0x01720000
 164:	010d0000 	fmaxa.d	$f0,$f0,$f0
 168:	008b0256 	bstrins.d	$r22,$r18,0xb,0x0
 16c:	0157010d 	0x0157010d
 170:	980c0030 	0x980c0030
 174:	471c000e 	bnez	$r0,3873792(0x3b1c00) # 3b1d74 <__stack_size+0x3a1d74>
 178:	8a000002 	0x8a000002
 17c:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 180:	40015601 	beqz	$r16,262484(0x40154) # 402d4 <__stack_size+0x302d4>
 184:	0157010d 	0x0157010d
 188:	b00e0030 	0xb00e0030
 18c:	5f1c000e 	bne	$r0,$r14,-58368(0x31c00) # ffff1d8c <_stack+0xe3ef1d90>
 190:	0c000002 	0x0c000002
 194:	1c000ecc 	pcaddu12i	$r12,118(0x76)
 198:	00000247 	0x00000247
 19c:	000001ab 	0x000001ab
 1a0:	0156010d 	0x0156010d
 1a4:	57010d3a 	bl	82510092(0x4eb010c) # 4eb02b0 <__stack_size+0x4ea02b0>
 1a8:	0c003001 	0x0c003001
 1ac:	1c000edc 	pcaddu12i	$r28,118(0x76)
 1b0:	00000253 	0x00000253
 1b4:	000001bf 	0x000001bf
 1b8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1bc:	0f002508 	0x0f002508
 1c0:	1c000ee8 	pcaddu12i	$r8,119(0x77)
 1c4:	00000253 	0x00000253
 1c8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1cc:	00002508 	clz.d	$r8,$r8
 1d0:	00000010 	0x00000010
 1d4:	00fd0b00 	bstrpick.d	$r0,$r24,0x3d,0x2
 1d8:	19010000 	pcaddi	$r0,-522240(0x80800)
 1dc:	00022805 	0x00022805
 1e0:	0001e700 	asrtgt.d	$r24,$r25
 1e4:	11000600 	addu16i.d	$r0,$r16,16385(0x4001)
 1e8:	1c000d3c 	pcaddu12i	$r28,105(0x69)
 1ec:	00000014 	0x00000014
 1f0:	00000216 	0x00000216
 1f4:	0000fd0b 	0x0000fd0b
 1f8:	05190100 	0x05190100
 1fc:	00000228 	0x00000228
 200:	00000206 	0x00000206
 204:	440f0006 	bnez	$r0,1576704(0x180f00) # 181104 <__stack_size+0x171104>
 208:	531c000d 	b	3611648(0x371c00) # 371e08 <__stack_size+0x361e08>
 20c:	0d000002 	fsel	$f2,$f0,$f0,$fcc0
 210:	3d015401 	0x3d015401
 214:	1c0f0000 	pcaddu12i	$r0,30720(0x7800)
 218:	531c000d 	b	3611648(0x371c00) # 371e18 <__stack_size+0x361e18>
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
 284:	000ef000 	bytepick.d	$r0,$r0,$r28,0x5
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
 2b0:	50061201 	b	-133954032(0x8040610) # f80408c0 <_stack+0xdbf408c4>
 2b4:	201c000f 	ll.w	$r15,$r0,7168(0x1c00)
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
 2f8:	000ef000 	bytepick.d	$r0,$r0,$r28,0x5
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
 330:	1c000ef0 	pcaddu12i	$r16,119(0x77)
 334:	00003002 	revb.2h	$r2,$r0
 338:	01030100 	fsub.d	$f0,$f8,$f0
 33c:	0000760e 	0x0000760e
 340:	0003ba00 	0x0003ba00
 344:	0003b800 	0x0003b800
 348:	0f000000 	0x0f000000
 34c:	00000069 	0x00000069
 350:	1c000f20 	pcaddu12i	$r0,121(0x79)
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
 37c:	1c000f70 	pcaddu12i	$r16,123(0x7b)
 380:	000000ac 	0x000000ac
 384:	00000255 	0x00000255
 388:	0b070402 	0x0b070402
 38c:	02000000 	slti	$r0,$r0,0
 390:	00060704 	alsl.wu	$r4,$r24,$r1,0x1
 394:	1f030000 	pcaddu18i	$r0,-518144(0x81800)
 398:	01000001 	0x01000001
 39c:	00a9050e 	bstrins.d	$r14,$r8,0x29,0x1
 3a0:	0ff00000 	0x0ff00000
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
 3d4:	000ffc07 	bytepick.d	$r7,$r0,$r31,0x7
 3d8:	0000bd1c 	0x0000bd1c
 3dc:	00008600 	0x00008600
 3e0:	54010800 	bl	264(0x108) # 4e8 <__stack_size-0xfb18>
 3e4:	5401f303 	bl	-66321936(0xc0c01f0) # fc0c05d4 <_stack+0xdffc05d8>
 3e8:	10040700 	addu16i.d	$r0,$r24,257(0x101)
 3ec:	01671c00 	0x01671c00
 3f0:	00990000 	bstrins.d	$r0,$r0,0x19,0x0
 3f4:	01080000 	0x01080000
 3f8:	003d0154 	0x003d0154
 3fc:	00100c09 	add.w	$r9,$r0,$r3
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
 42c:	1c000f70 	pcaddu12i	$r16,123(0x7b)
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
 474:	0fb00e00 	0x0fb00e00
 478:	00081c00 	bytepick.w	$r0,$r0,$r7,0x0
 47c:	01410000 	0x01410000
 480:	fd050000 	0xfd050000
 484:	01000000 	0x01000000
 488:	00a91006 	bstrins.d	$r6,$r0,0x29,0x4
 48c:	01310000 	0x01310000
 490:	00060000 	alsl.wu	$r0,$r0,$r0,0x1
 494:	000fb809 	bytepick.d	$r9,$r0,$r14,0x7
 498:	0001671c 	0x0001671c
 49c:	54010800 	bl	264(0x108) # 5a4 <__stack_size-0xfa5c>
 4a0:	00003d01 	revb.d	$r1,$r8
 4a4:	000fa007 	bytepick.d	$r7,$r0,$r8,0x7
 4a8:	0001671c 	0x0001671c
 4ac:	00015500 	asrtle.d	$r8,$r21
 4b0:	54010800 	bl	264(0x108) # 5b8 <__stack_size-0xfa48>
 4b4:	00008702 	0x00008702
 4b8:	000fc009 	bytepick.d	$r9,$r0,$r16,0x7
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
 4f0:	1c001020 	pcaddu12i	$r0,129(0x81)
 4f4:	000000ec 	0x000000ec
 4f8:	000002ed 	0x000002ed
 4fc:	0b070402 	0x0b070402
 500:	02000000 	slti	$r0,$r0,0
 504:	00060704 	alsl.wu	$r4,$r24,$r1,0x1
 508:	db030000 	0xdb030000
 50c:	01000000 	0x01000000
 510:	01490501 	0x01490501
 514:	10200000 	addu16i.d	$r0,$r0,2048(0x800)
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
 5c8:	e0090000 	0xe0090000
 5cc:	201c0010 	ll.w	$r16,$r0,7168(0x1c00)
 5d0:	23000000 	sc.d	$r0,$r0,0
 5d4:	0a000001 	0x0a000001
 5d8:	000000fd 	0x000000fd
 5dc:	49020a01 	0x49020a01
 5e0:	12000001 	addu16i.d	$r1,$r0,-32768(0x8000)
 5e4:	0b000001 	0x0b000001
 5e8:	10f00c00 	addu16i.d	$r0,$r0,15363(0x3c03)
 5ec:	016e1c00 	0x016e1c00
 5f0:	010d0000 	fmaxa.d	$f0,$f0,$f0
 5f4:	2d080254 	0x2d080254
 5f8:	880e0000 	0x880e0000
 5fc:	301c0010 	0x301c0010
 600:	0a000000 	0x0a000000
 604:	000000fd 	0x000000fd
 608:	49020a01 	0x49020a01
 60c:	3e000001 	0x3e000001
 610:	0b000001 	0x0b000001
 614:	10b80f00 	addu16i.d	$r0,$r24,11779(0x2e03)
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
 69c:	1c0013d0 	pcaddu12i	$r16,158(0x9e)
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
 6d4:	0013d000 	masknez	$r0,$r0,$r20
 6d8:	13d0021c 	addu16i.d	$r28,$r16,-3072(0xf400)
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
 704:	d00a0000 	0xd00a0000
 708:	141c0013 	lu12i.w	$r19,57344(0xe000)
 70c:	0b000000 	0x0b000000
 710:	00000293 	0x00000293
 714:	0000077d 	0x0000077d
 718:	0000077b 	0x0000077b
 71c:	0c000000 	0x0c000000
 720:	00000161 	0x00000161
 724:	01014b01 	fadd.d	$f1,$f24,$f18
 728:	0000014c 	0x0000014c
 72c:	1c001370 	pcaddu12i	$r16,155(0x9b)
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
 7c8:	10000000 	addu16i.d	$r0,$r0,0
 7cc:	5c1c0013 	bne	$r0,$r19,7168(0x1c00) # 23cc <__stack_size-0xdc34>
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
 848:	12e00000 	addu16i.d	$r0,$r0,-18432(0xb800)
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
 8fc:	1c001290 	pcaddu12i	$r16,148(0x94)
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
 934:	00125000 	slt	$r0,$r0,$r20
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
 96c:	11e00000 	addu16i.d	$r0,$r0,30720(0x7800)
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
 9c0:	0011b000 	sub.d	$r0,$r0,$r12
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
 a24:	1c001190 	pcaddu12i	$r16,140(0x8c)
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
 a70:	50000000 	b	0 # a70 <__stack_size-0xf590>
 a74:	341c0011 	0x341c0011
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
 ac0:	11100000 	addu16i.d	$r0,$r0,17408(0x4400)
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
 afc:	1c0012c0 	pcaddu12i	$r0,150(0x96)
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
 b48:	0013f000 	masknez	$r0,$r0,$r28
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
 bc4:	1c001500 	pcaddu12i	$r0,168(0xa8)
 bc8:	00000030 	0x00000030
 bcc:	00da9c01 	bstrpick.d	$r1,$r0,0x1a,0x27
 bd0:	6e080000 	bgeu	$r0,$r0,-129024(0x20800) # fffe13d0 <_stack+0xe3ee13d4>
 bd4:	133e0100 	addu16i.d	$r0,$r8,-12416(0xcf80)
 bd8:	0000002c 	0x0000002c
 bdc:	00000db4 	0x00000db4
 be0:	00000dac 	0x00000dac
 be4:	00022e09 	0x00022e09
 be8:	00150000 	move	$r0,$r0
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
 c14:	14d00000 	lu12i.w	$r0,425984(0x68000)
 c18:	00241c00 	crc.w.b.w	$r0,$r0,$r7
 c1c:	9c010000 	0x9c010000
 c20:	0000012c 	0x0000012c
 c24:	01006e08 	0x01006e08
 c28:	002c1335 	alsl.d	$r21,$r25,$r4,0x1
 c2c:	0e110000 	0x0e110000
 c30:	0e090000 	0x0e090000
 c34:	2e090000 	0x2e090000
 c38:	d0000002 	0xd0000002
 c3c:	031c0014 	lu52i.d	$r20,$r0,1792(0x700)
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
 c80:	30000000 	0x30000000
 c84:	841c0014 	0x841c0014
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
 cc8:	14300000 	lu12i.w	$r0,98304(0x18000)
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
 cfc:	00142000 	nor	$r0,$r0,$r8
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
 d28:	13f00000 	addu16i.d	$r0,$r0,-1024(0xfc00)
 d2c:	001c1c00 	mul.w	$r0,$r0,$r7
 d30:	9c010000 	0x9c010000
 d34:	0000022e 	0x0000022e
 d38:	00022e09 	0x00022e09
 d3c:	0013f000 	masknez	$r0,$r0,$r28
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
 6d8:	13d00000 	addu16i.d	$r0,$r0,-3072(0xf400)
 6dc:	13d81c00 	addu16i.d	$r0,$r0,-2553(0xf607)
 6e0:	00011c00 	asrtle.d	$r0,$r7
 6e4:	0013d854 	masknez	$r20,$r2,$r22
 6e8:	0013e81c 	masknez	$r28,$r0,$r26
 6ec:	f300041c 	0xf300041c
 6f0:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
	...
 6fc:	d0000000 	0xd0000000
 700:	d81c0013 	0xd81c0013
 704:	011c0013 	0x011c0013
 708:	13d85500 	addu16i.d	$r0,$r8,-2539(0xf615)
 70c:	13e81c00 	addu16i.d	$r0,$r0,-1529(0xfa07)
 710:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 714:	9f5501f3 	0x9f5501f3
	...
 720:	00050502 	alsl.w	$r2,$r8,$r1,0x3
 724:	13d00000 	addu16i.d	$r0,$r0,-3072(0xf400)
 728:	13d01c00 	addu16i.d	$r0,$r0,-3065(0xf407)
 72c:	00011c00 	asrtle.d	$r0,$r7
 730:	0013d055 	masknez	$r21,$r2,$r20
 734:	0013d81c 	masknez	$r28,$r0,$r22
 738:	7500031c 	0x7500031c
 73c:	13d89f7f 	addu16i.d	$r31,$r27,-2521(0xf627)
 740:	13e41c00 	addu16i.d	$r0,$r0,-1785(0xf907)
 744:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 748:	315501f3 	vstelm.h	$vr19,$r15,128(0x80),0x5
 74c:	00009f1c 	0x00009f1c
 750:	00000000 	0x00000000
 754:	00020000 	0x00020000
 758:	13d00000 	addu16i.d	$r0,$r0,-3072(0xf400)
 75c:	13d81c00 	addu16i.d	$r0,$r0,-2553(0xf607)
 760:	00011c00 	asrtle.d	$r0,$r7
 764:	0013d854 	masknez	$r20,$r2,$r22
 768:	0013e81c 	masknez	$r28,$r0,$r26
 76c:	f300041c 	0xf300041c
 770:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
 774:	00000000 	0x00000000
 778:	04000000 	csrrd	$r0,0x0
 77c:	0013d000 	masknez	$r0,$r0,$r20
 780:	0013e81c 	masknez	$r28,$r0,$r26
 784:	5400011c 	bl	74448896(0x4700000) # 4700784 <__stack_size+0x46f0784>
	...
 794:	1c001370 	pcaddu12i	$r16,155(0x9b)
 798:	1c001388 	pcaddu12i	$r8,156(0x9c)
 79c:	88540001 	0x88540001
 7a0:	c81c0013 	0xc81c0013
 7a4:	041c0013 	csrrd	$r19,0x700
 7a8:	5401f300 	bl	-67108368(0xc0001f0) # fc000998 <_stack+0xdff0099c>
 7ac:	0000009f 	0x0000009f
	...
 7b8:	00137000 	maskeqz	$r0,$r0,$r28
 7bc:	0013881c 	masknez	$r28,$r0,$r2
 7c0:	5500011c 	bl	74514432(0x4710000) # 47107c0 <__stack_size+0x47007c0>
 7c4:	1c001388 	pcaddu12i	$r8,156(0x9c)
 7c8:	1c0013c8 	pcaddu12i	$r8,158(0x9e)
 7cc:	01f30004 	0x01f30004
 7d0:	00009f55 	0x00009f55
 7d4:	00000000 	0x00000000
 7d8:	04000000 	csrrd	$r0,0x0
 7dc:	00000004 	0x00000004
 7e0:	13700001 	addu16i.d	$r1,$r0,-9216(0xdc00)
 7e4:	13701c00 	addu16i.d	$r0,$r0,-9209(0xdc07)
 7e8:	00011c00 	asrtle.d	$r0,$r7
 7ec:	00137056 	maskeqz	$r22,$r2,$r28
 7f0:	0013801c 	masknez	$r28,$r0,$r0
 7f4:	7600031c 	0x7600031c
 7f8:	13809f7f 	addu16i.d	$r31,$r27,-8153(0xe027)
 7fc:	13941c00 	addu16i.d	$r0,$r0,-6905(0xe507)
 800:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 804:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 808:	13949f1c 	addu16i.d	$r28,$r24,-6873(0xe527)
 80c:	13a01c00 	addu16i.d	$r0,$r0,-6137(0xe807)
 810:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 814:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 818:	00009f1c 	0x00009f1c
 81c:	00000000 	0x00000000
 820:	00020000 	0x00020000
 824:	13700000 	addu16i.d	$r0,$r0,-9216(0xdc00)
 828:	13a41c00 	addu16i.d	$r0,$r0,-5881(0xe907)
 82c:	00011c00 	asrtle.d	$r0,$r7
 830:	0013a854 	masknez	$r20,$r2,$r10
 834:	0013bc1c 	masknez	$r28,$r0,$r15
 838:	5400011c 	bl	74448896(0x4700000) # 4700838 <__stack_size+0x46f0838>
	...
 844:	13700003 	addu16i.d	$r3,$r0,-9216(0xdc00)
 848:	13c81c00 	addu16i.d	$r0,$r0,-3577(0xf207)
 84c:	00011c00 	asrtle.d	$r0,$r7
 850:	00000055 	0x00000055
	...
 85c:	10000000 	addu16i.d	$r0,$r0,0
 860:	4c1c0013 	jirl	$r19,$r0,7168(0x1c00)
 864:	011c0013 	0x011c0013
 868:	134c5500 	addu16i.d	$r0,$r8,-11499(0xd315)
 86c:	13681c00 	addu16i.d	$r0,$r0,-9721(0xda07)
 870:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 874:	9f5501f3 	0x9f5501f3
 878:	1c001368 	pcaddu12i	$r8,155(0x9b)
 87c:	1c00136c 	pcaddu12i	$r12,155(0x9b)
 880:	00550001 	0x00550001
	...
 88c:	00000101 	0x00000101
 890:	00131000 	maskeqz	$r0,$r0,$r4
 894:	0013201c 	maskeqz	$r28,$r0,$r8
 898:	5600011c 	bl	74579968(0x4720000) # 4720898 <__stack_size+0x4710898>
 89c:	1c001320 	pcaddu12i	$r0,153(0x99)
 8a0:	1c001364 	pcaddu12i	$r4,155(0x9b)
 8a4:	7f760003 	0x7f760003
 8a8:	0013689f 	maskeqz	$r31,$r4,$r26
 8ac:	00136c1c 	maskeqz	$r28,$r0,$r27
 8b0:	7600031c 	0x7600031c
 8b4:	00009f7f 	0x00009f7f
 8b8:	00000000 	0x00000000
 8bc:	01020000 	0x01020000
 8c0:	00000001 	0x00000001
 8c4:	13100000 	addu16i.d	$r0,$r0,-15360(0xc400)
 8c8:	131c1c00 	addu16i.d	$r0,$r0,-14585(0xc707)
 8cc:	00011c00 	asrtle.d	$r0,$r7
 8d0:	00131c55 	maskeqz	$r21,$r2,$r7
 8d4:	00133c1c 	maskeqz	$r28,$r0,$r15
 8d8:	5c00011c 	bne	$r8,$r28,0 # 8d8 <__stack_size-0xf728>
 8dc:	1c00133c 	pcaddu12i	$r28,153(0x99)
 8e0:	1c001364 	pcaddu12i	$r4,155(0x9b)
 8e4:	68550001 	bltu	$r0,$r1,21760(0x5500) # 5de4 <__stack_size-0xa21c>
 8e8:	6c1c0013 	bgeu	$r0,$r19,7168(0x1c00) # 24e8 <__stack_size-0xdb18>
 8ec:	011c0013 	0x011c0013
 8f0:	00005500 	bitrev.d	$r0,$r8
 8f4:	00000000 	0x00000000
 8f8:	00030000 	0x00030000
	...
 904:	1c001310 	pcaddu12i	$r16,152(0x98)
 908:	1c001320 	pcaddu12i	$r0,153(0x99)
 90c:	20540001 	ll.w	$r1,$r0,21504(0x5400)
 910:	3c1c0013 	0x3c1c0013
 914:	011c0013 	0x011c0013
 918:	133c5d00 	addu16i.d	$r0,$r8,-12521(0xcf17)
 91c:	134c1c00 	addu16i.d	$r0,$r0,-11513(0xd307)
 920:	00011c00 	asrtle.d	$r0,$r7
 924:	00134c54 	maskeqz	$r20,$r2,$r19
 928:	0013641c 	maskeqz	$r28,$r0,$r25
 92c:	5c00011c 	bne	$r8,$r28,0 # 92c <__stack_size-0xf6d4>
 930:	1c001368 	pcaddu12i	$r8,155(0x9b)
 934:	1c00136c 	pcaddu12i	$r12,155(0x9b)
 938:	00540001 	0x00540001
	...
 944:	e0000000 	0xe0000000
 948:	ec1c0012 	0xec1c0012
 94c:	011c0012 	0x011c0012
 950:	12ec5500 	addu16i.d	$r0,$r8,-17643(0xbb15)
 954:	13081c00 	addu16i.d	$r0,$r0,-15865(0xc207)
 958:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 95c:	9f5501f3 	0x9f5501f3
	...
 968:	00040400 	alsl.w	$r0,$r0,$r1,0x1
 96c:	12e00000 	addu16i.d	$r0,$r0,-18432(0xb800)
 970:	12e01c00 	addu16i.d	$r0,$r0,-18425(0xb807)
 974:	00011c00 	asrtle.d	$r0,$r7
 978:	0012e056 	sltu	$r22,$r2,$r24
 97c:	0012e81c 	sltu	$r28,$r0,$r26
 980:	7600031c 	0x7600031c
 984:	12e89f7f 	addu16i.d	$r31,$r27,-17881(0xba27)
 988:	13041c00 	addu16i.d	$r0,$r0,-16121(0xc107)
 98c:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 990:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 994:	00009f1c 	0x00009f1c
 998:	00000000 	0x00000000
 99c:	00020000 	0x00020000
 9a0:	1c0012e0 	pcaddu12i	$r0,151(0x97)
 9a4:	1c001308 	pcaddu12i	$r8,152(0x98)
 9a8:	00550001 	0x00550001
 9ac:	00000000 	0x00000000
 9b0:	03000000 	lu52i.d	$r0,$r0,0
 9b4:	e0000000 	0xe0000000
 9b8:	ec1c0012 	0xec1c0012
 9bc:	011c0012 	0x011c0012
 9c0:	12ec5400 	addu16i.d	$r0,$r0,-17643(0xbb15)
 9c4:	13041c00 	addu16i.d	$r0,$r0,-16121(0xc107)
 9c8:	00011c00 	asrtle.d	$r0,$r7
 9cc:	0000005c 	0x0000005c
	...
 9d8:	00129000 	sltu	$r0,$r0,$r4
 9dc:	0012a81c 	sltu	$r28,$r0,$r10
 9e0:	5400011c 	bl	74448896(0x4700000) # 47009e0 <__stack_size+0x46f09e0>
 9e4:	1c0012a8 	pcaddu12i	$r8,149(0x95)
 9e8:	1c0012b8 	pcaddu12i	$r24,149(0x95)
 9ec:	00540001 	0x00540001
	...
 9fc:	00125000 	slt	$r0,$r0,$r20
 a00:	0012641c 	slt	$r28,$r0,$r25
 a04:	5400011c 	bl	74448896(0x4700000) # 4700a04 <__stack_size+0x46f0a04>
 a08:	1c001264 	pcaddu12i	$r4,147(0x93)
 a0c:	1c001288 	pcaddu12i	$r8,148(0x94)
 a10:	885c0001 	0x885c0001
 a14:	8c1c0012 	0x8c1c0012
 a18:	011c0012 	0x011c0012
 a1c:	00005400 	bitrev.d	$r0,$r0
	...
 a2c:	1c0011e0 	pcaddu12i	$r0,143(0x8f)
 a30:	1c00121c 	pcaddu12i	$r28,144(0x90)
 a34:	1c540001 	pcaddu12i	$r1,172032(0x2a000)
 a38:	241c0012 	ldptr.w	$r18,$r0,7168(0x1c00)
 a3c:	011c0012 	0x011c0012
 a40:	12285400 	addu16i.d	$r0,$r0,-30187(0x8a15)
 a44:	12401c00 	addu16i.d	$r0,$r0,-28665(0x9007)
 a48:	00011c00 	asrtle.d	$r0,$r7
 a4c:	00000054 	0x00000054
	...
 a5c:	e0000000 	0xe0000000
 a60:	fc1c0011 	0xfc1c0011
 a64:	011c0011 	0x011c0011
 a68:	11fc5500 	addu16i.d	$r0,$r8,32533(0x7f15)
 a6c:	12141c00 	addu16i.d	$r0,$r0,-31481(0x8507)
 a70:	00011c00 	asrtle.d	$r0,$r7
 a74:	0012145c 	slt	$r28,$r2,$r5
 a78:	00121c1c 	slt	$r28,$r0,$r7
 a7c:	5500011c 	bl	74514432(0x4710000) # 4710a7c <__stack_size+0x4700a7c>
 a80:	1c00121c 	pcaddu12i	$r28,144(0x90)
 a84:	1c001220 	pcaddu12i	$r0,145(0x91)
 a88:	285c0001 	ld.h	$r1,$r0,1792(0x700)
 a8c:	2c1c0012 	vld	$vr18,$r0,1792(0x700)
 a90:	011c0012 	0x011c0012
 a94:	00005c00 	ext.w.b	$r0,$r0
	...
 aa4:	00010100 	asrtle.d	$r8,$r0
 aa8:	11e00000 	addu16i.d	$r0,$r0,30720(0x7800)
 aac:	11f81c00 	addu16i.d	$r0,$r0,32263(0x7e07)
 ab0:	00011c00 	asrtle.d	$r0,$r7
 ab4:	0011f856 	sub.d	$r22,$r2,$r30
 ab8:	0011fc1c 	sub.d	$r28,$r0,$r31
 abc:	f300041c 	0xf300041c
 ac0:	fc9f5601 	0xfc9f5601
 ac4:	141c0011 	lu12i.w	$r17,57344(0xe000)
 ac8:	061c0012 	cacop	0x12,$r0,1792(0x700)
 acc:	5601f300 	bl	-66977296(0xc0201f0) # fc020cbc <_stack+0xdff20cc0>
 ad0:	149f1c31 	lu12i.w	$r17,325857(0x4f8e1)
 ad4:	141c0012 	lu12i.w	$r18,57344(0xe000)
 ad8:	041c0012 	csrrd	$r18,0x700
 adc:	5601f300 	bl	-66977296(0xc0201f0) # fc020ccc <_stack+0xdff20cd0>
 ae0:	0012149f 	slt	$r31,$r4,$r5
 ae4:	0012201c 	slt	$r28,$r0,$r8
 ae8:	f300061c 	0xf300061c
 aec:	1c315601 	pcaddu12i	$r1,101040(0x18ab0)
 af0:	0012289f 	slt	$r31,$r4,$r10
 af4:	00122c1c 	slt	$r28,$r0,$r11
 af8:	f300061c 	0xf300061c
 afc:	1c315601 	pcaddu12i	$r1,101040(0x18ab0)
 b00:	0000009f 	0x0000009f
	...
 b0c:	0011b000 	sub.d	$r0,$r0,$r12
 b10:	0011d41c 	sub.d	$r28,$r0,$r21
 b14:	5500011c 	bl	74514432(0x4710000) # 4710b14 <__stack_size+0x4700b14>
 b18:	1c0011d4 	pcaddu12i	$r20,142(0x8e)
 b1c:	1c0011dc 	pcaddu12i	$r28,142(0x8e)
 b20:	00550001 	0x00550001
	...
 b30:	01010000 	fadd.d	$f0,$f0,$f0
 b34:	0011b000 	sub.d	$r0,$r0,$r12
 b38:	0011b81c 	sub.d	$r28,$r0,$r14
 b3c:	5600011c 	bl	74579968(0x4720000) # 4720b3c <__stack_size+0x4710b3c>
 b40:	1c0011b8 	pcaddu12i	$r24,141(0x8d)
 b44:	1c0011bc 	pcaddu12i	$r28,141(0x8d)
 b48:	01f30004 	0x01f30004
 b4c:	11bc9f56 	addu16i.d	$r22,$r26,28455(0x6f27)
 b50:	11c81c00 	addu16i.d	$r0,$r0,29191(0x7207)
 b54:	000a1c00 	0x000a1c00
 b58:	007d0074 	bstrins.w	$r20,$r3,0x1d,0x0
 b5c:	5601f31c 	bl	-59637264(0xc7201f0) # fc720d4c <_stack+0xe0620d50>
 b60:	11c89f22 	addu16i.d	$r2,$r25,29223(0x7227)
 b64:	11d41c00 	addu16i.d	$r0,$r0,29959(0x7507)
 b68:	000c1c00 	bytepick.d	$r0,$r0,$r7,0x0
 b6c:	007d0074 	bstrins.w	$r20,$r3,0x1d,0x0
 b70:	5601f31c 	bl	-59637264(0xc7201f0) # fc720d60 <_stack+0xe0620d64>
 b74:	9f012322 	0x9f012322
 b78:	1c0011d4 	pcaddu12i	$r20,142(0x8e)
 b7c:	1c0011d8 	pcaddu12i	$r24,142(0x8e)
 b80:	0074000a 	bstrins.w	$r10,$r0,0x14,0x0
 b84:	f31c007d 	0xf31c007d
 b88:	9f225601 	0x9f225601
	...
 b94:	00000002 	0x00000002
 b98:	00010100 	asrtle.d	$r8,$r0
 b9c:	1c0011b0 	pcaddu12i	$r16,141(0x8d)
 ba0:	1c0011bc 	pcaddu12i	$r28,141(0x8d)
 ba4:	bc540001 	0xbc540001
 ba8:	c81c0011 	0xc81c0011
 bac:	011c0011 	0x011c0011
 bb0:	11c85d00 	addu16i.d	$r0,$r8,29207(0x7217)
 bb4:	11d41c00 	addu16i.d	$r0,$r0,29959(0x7507)
 bb8:	00031c00 	0x00031c00
 bbc:	d49f7f7d 	0xd49f7f7d
 bc0:	d81c0011 	0xd81c0011
 bc4:	011c0011 	0x011c0011
 bc8:	00005d00 	ext.w.b	$r0,$r8
	...
 bd4:	11900000 	addu16i.d	$r0,$r0,25600(0x6400)
 bd8:	11981c00 	addu16i.d	$r0,$r0,26119(0x6607)
 bdc:	00011c00 	asrtle.d	$r0,$r7
 be0:	00119855 	sub.d	$r21,$r2,$r6
 be4:	0011ac1c 	sub.d	$r28,$r0,$r11
 be8:	5500011c 	bl	74514432(0x4710000) # 4710be8 <__stack_size+0x4700be8>
	...
 bf4:	00000002 	0x00000002
 bf8:	1c001190 	pcaddu12i	$r16,140(0x8c)
 bfc:	1c001194 	pcaddu12i	$r20,140(0x8c)
 c00:	94540001 	0x94540001
 c04:	ac1c0011 	0xac1c0011
 c08:	011c0011 	0x011c0011
 c0c:	00005c00 	ext.w.b	$r0,$r0
	...
 c1c:	1c001150 	pcaddu12i	$r16,138(0x8a)
 c20:	1c001158 	pcaddu12i	$r24,138(0x8a)
 c24:	58540001 	beq	$r0,$r1,21504(0x5400) # 6024 <__stack_size-0x9fdc>
 c28:	681c0011 	bltu	$r0,$r17,7168(0x1c00) # 2828 <__stack_size-0xd7d8>
 c2c:	031c0011 	lu52i.d	$r17,$r0,1792(0x700)
 c30:	9f017400 	0x9f017400
 c34:	1c001168 	pcaddu12i	$r8,139(0x8b)
 c38:	1c00117c 	pcaddu12i	$r28,139(0x8b)
 c3c:	00740008 	bstrins.w	$r8,$r0,0x14,0x0
 c40:	2322007c 	sc.d	$r28,$r3,8704(0x2200)
 c44:	00009f01 	0x00009f01
 c48:	00000000 	0x00000000
 c4c:	00020000 	0x00020000
 c50:	11500000 	addu16i.d	$r0,$r0,21504(0x5400)
 c54:	11681c00 	addu16i.d	$r0,$r0,23047(0x5a07)
 c58:	00021c00 	0x00021c00
 c5c:	11689f30 	addu16i.d	$r16,$r25,23079(0x5a27)
 c60:	117c1c00 	addu16i.d	$r0,$r0,24327(0x5f07)
 c64:	00011c00 	asrtle.d	$r0,$r7
 c68:	0000005c 	0x0000005c
 c6c:	00000000 	0x00000000
 c70:	03030000 	lu52i.d	$r0,$r0,192(0xc0)
	...
 c7c:	00111000 	sub.w	$r0,$r0,$r4
 c80:	0011101c 	sub.w	$r28,$r0,$r4
 c84:	5400011c 	bl	74448896(0x4700000) # 4700c84 <__stack_size+0x46f0c84>
 c88:	1c001110 	pcaddu12i	$r16,136(0x88)
 c8c:	1c00111c 	pcaddu12i	$r28,136(0x88)
 c90:	01740003 	0x01740003
 c94:	00111c9f 	sub.w	$r31,$r4,$r7
 c98:	0011341c 	sub.w	$r28,$r0,$r13
 c9c:	7400081c 	xvseq.b	$xr28,$xr0,$xr2
 ca0:	22007c00 	ll.d	$r0,$r0,124(0x7c)
 ca4:	349f0123 	0x349f0123
 ca8:	381c0011 	stx.d	$r17,$r0,$r0
 cac:	091c0011 	vfmadd.s	$vr17,$vr0,$vr0,$vr24
 cb0:	5401f300 	bl	-67108368(0xc0001f0) # fc000ea0 <_stack+0xdff00ea4>
 cb4:	2322007c 	sc.d	$r28,$r3,8704(0x2200)
 cb8:	11389f01 	addu16i.d	$r1,$r24,20007(0x4e27)
 cbc:	11401c00 	addu16i.d	$r0,$r0,20487(0x5007)
 cc0:	00031c00 	0x00031c00
 cc4:	409f0174 	beqz	$r11,-3105024(0x509f00) # ffd0abc4 <_stack+0xe3c0abc8>
 cc8:	441c0011 	bnez	$r0,-3924992(0x441c00) # ffc428c8 <_stack+0xe3b428cc>
 ccc:	061c0011 	cacop	0x11,$r0,1792(0x700)
 cd0:	5401f300 	bl	-67108368(0xc0001f0) # fc000ec0 <_stack+0xdff00ec4>
 cd4:	009f0123 	bstrins.d	$r3,$r9,0x1f,0x0
 cd8:	00000000 	0x00000000
 cdc:	02000000 	slti	$r0,$r0,0
 ce0:	00000000 	0x00000000
 ce4:	00111000 	sub.w	$r0,$r0,$r4
 ce8:	00111c1c 	sub.w	$r28,$r0,$r7
 cec:	3000021c 	0x3000021c
 cf0:	00111c9f 	sub.w	$r31,$r4,$r7
 cf4:	0011381c 	sub.w	$r28,$r0,$r14
 cf8:	5c00011c 	bne	$r8,$r28,0 # cf8 <__stack_size-0xf308>
 cfc:	1c001138 	pcaddu12i	$r24,137(0x89)
 d00:	1c001144 	pcaddu12i	$r4,138(0x8a)
 d04:	9f300002 	0x9f300002
	...
 d10:	00030300 	0x00030300
	...
 d1c:	1c0012c0 	pcaddu12i	$r0,150(0x96)
 d20:	1c0012c0 	pcaddu12i	$r0,150(0x96)
 d24:	c0560001 	0xc0560001
 d28:	c81c0012 	0xc81c0012
 d2c:	031c0012 	lu52i.d	$r18,$r0,1792(0x700)
 d30:	9f7f7600 	0x9f7f7600
 d34:	1c0012c8 	pcaddu12i	$r8,150(0x96)
 d38:	1c0012cc 	pcaddu12i	$r12,150(0x96)
 d3c:	01f30006 	0x01f30006
 d40:	9f1c3156 	0x9f1c3156
 d44:	1c0012cc 	pcaddu12i	$r12,150(0x96)
 d48:	1c0012d4 	pcaddu12i	$r20,150(0x96)
 d4c:	007c000b 	bstrins.w	$r11,$r0,0x1c,0x0
 d50:	5601f320 	bl	-58588688(0xc8201f0) # fc820f40 <_stack+0xe0720f44>
 d54:	22007422 	ll.d	$r2,$r1,116(0x74)
 d58:	0012d49f 	sltu	$r31,$r4,$r21
 d5c:	0012d81c 	sltu	$r28,$r0,$r22
 d60:	74000a1c 	xvseq.b	$xr28,$xr16,$xr2
 d64:	1c007c00 	pcaddu12i	$r0,992(0x3e0)
 d68:	225601f3 	ll.d	$r19,$r15,22016(0x5600)
 d6c:	0012d89f 	sltu	$r31,$r4,$r22
 d70:	0012dc1c 	sltu	$r28,$r0,$r23
 d74:	7c000b1c 	0x7c000b1c
 d78:	01f32000 	0x01f32000
 d7c:	00742256 	bstrins.w	$r22,$r18,0x14,0x8
 d80:	00009f22 	0x00009f22
 d84:	00000000 	0x00000000
 d88:	00020000 	0x00020000
 d8c:	12c00000 	addu16i.d	$r0,$r0,-20480(0xb000)
 d90:	12cc1c00 	addu16i.d	$r0,$r0,-19705(0xb307)
 d94:	00011c00 	asrtle.d	$r0,$r7
 d98:	0012cc54 	sltu	$r20,$r2,$r19
 d9c:	0012dc1c 	sltu	$r28,$r0,$r23
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
  10:	1c000cb0 	pcaddu12i	$r16,101(0x65)
  14:	0000023c 	0x0000023c
	...
  20:	0000001c 	0x0000001c
  24:	026c0002 	sltui	$r2,$r0,-1280(0xb00)
  28:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  2c:	00000000 	0x00000000
  30:	1c000ef0 	pcaddu12i	$r16,119(0x77)
  34:	00000080 	0x00000080
	...
  40:	0000001c 	0x0000001c
  44:	03630002 	andi	$r2,$r0,0x8c0
  48:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  4c:	00000000 	0x00000000
  50:	1c000f70 	pcaddu12i	$r16,123(0x7b)
  54:	000000ac 	0x000000ac
	...
  60:	0000001c 	0x0000001c
  64:	04d70002 	csrrd	$r2,0x35c0
  68:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  6c:	00000000 	0x00000000
  70:	1c001020 	pcaddu12i	$r0,129(0x81)
  74:	000000ec 	0x000000ec
	...
  80:	0000001c 	0x0000001c
  84:	06520002 	0x06520002
  88:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  8c:	00000000 	0x00000000
  90:	1c001110 	pcaddu12i	$r16,136(0x88)
  94:	000002d8 	0x000002d8
	...
  a0:	0000001c 	0x0000001c
  a4:	0b300002 	0x0b300002
  a8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  ac:	00000000 	0x00000000
  b0:	1c0013f0 	pcaddu12i	$r16,159(0x9f)
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
  60:	1c001110 	pcaddu12i	$r16,136(0x88)
  64:	1c0013e8 	pcaddu12i	$r8,159(0x9f)
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
  2c:	0cb00205 	0x0cb00205
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
 1f0:	1c000ef0 	pcaddu12i	$r16,119(0x77)
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
 280:	000f7002 	bytepick.d	$r2,$r0,$r28,0x6
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
 31c:	10200205 	addu16i.d	$r5,$r16,2048(0x800)
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
 420:	1c001110 	pcaddu12i	$r16,136(0x88)
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
 71c:	13f00205 	addu16i.d	$r5,$r16,-1024(0xfc00)
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
  18:	1c000cb0 	pcaddu12i	$r16,101(0x65)
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
  60:	1c000ef0 	pcaddu12i	$r16,119(0x77)
  64:	00000028 	0x00000028
  68:	44100e44 	bnez	$r18,1052684(0x10100c) # 101074 <__stack_size+0xf1074>
  6c:	d9580199 	0xd9580199
  70:	00000e44 	0x00000e44
  74:	00000018 	0x00000018
  78:	00000048 	0x00000048
  7c:	1c000f20 	pcaddu12i	$r0,121(0x79)
  80:	00000024 	0x00000024
  84:	44100e44 	bnez	$r18,1052684(0x10100c) # 101090 <__stack_size+0xf1090>
  88:	d9540199 	0xd9540199
  8c:	00000e44 	0x00000e44
  90:	0000000c 	0x0000000c
  94:	00000048 	0x00000048
  98:	1c000f50 	pcaddu12i	$r16,122(0x7a)
  9c:	00000020 	0x00000020
  a0:	0000000c 	0x0000000c
  a4:	ffffffff 	0xffffffff
  a8:	7c010001 	0x7c010001
  ac:	00030d01 	0x00030d01
  b0:	00000024 	0x00000024
  b4:	000000a0 	0x000000a0
  b8:	1c000f70 	pcaddu12i	$r16,123(0x7b)
  bc:	00000074 	0x00000074
  c0:	50100e44 	b	-116387828(0x910100c) # f91010cc <_stack+0xdd0010d0>
  c4:	02970181 	addi.w	$r1,$r12,1472(0x5c0)
  c8:	04990398 	csrxchg	$r24,$r28,0x2640
  cc:	44c14802 	bnez	$r0,573768(0x8c148) # 8c214 <__stack_size+0x7c214>
  d0:	44d844d7 	bnez	$r6,-2303932(0x5cd844) # ffdcd914 <_stack+0xe3ccd918>
  d4:	000e48d9 	bytepick.d	$r25,$r6,$r18,0x4
  d8:	00000018 	0x00000018
  dc:	000000a0 	0x000000a0
  e0:	1c000ff0 	pcaddu12i	$r16,127(0x7f)
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
 10c:	1c001020 	pcaddu12i	$r0,129(0x81)
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
 148:	1c001110 	pcaddu12i	$r16,136(0x88)
 14c:	00000034 	0x00000034
 150:	0000000c 	0x0000000c
 154:	00000130 	0x00000130
 158:	1c001150 	pcaddu12i	$r16,138(0x8a)
 15c:	00000034 	0x00000034
 160:	0000000c 	0x0000000c
 164:	00000130 	0x00000130
 168:	1c001190 	pcaddu12i	$r16,140(0x8c)
 16c:	0000001c 	0x0000001c
 170:	0000000c 	0x0000000c
 174:	00000130 	0x00000130
 178:	1c0011b0 	pcaddu12i	$r16,141(0x8d)
 17c:	0000002c 	0x0000002c
 180:	00000014 	0x00000014
 184:	00000130 	0x00000130
 188:	1c0011e0 	pcaddu12i	$r0,143(0x8f)
 18c:	0000006c 	0x0000006c
 190:	100e5002 	addu16i.d	$r2,$r0,916(0x394)
 194:	00000e54 	0x00000e54
 198:	0000000c 	0x0000000c
 19c:	00000130 	0x00000130
 1a0:	1c001250 	pcaddu12i	$r16,146(0x92)
 1a4:	0000003c 	0x0000003c
 1a8:	0000000c 	0x0000000c
 1ac:	00000130 	0x00000130
 1b0:	1c001290 	pcaddu12i	$r16,148(0x94)
 1b4:	00000028 	0x00000028
 1b8:	0000000c 	0x0000000c
 1bc:	00000130 	0x00000130
 1c0:	1c0012c0 	pcaddu12i	$r0,150(0x96)
 1c4:	00000020 	0x00000020
 1c8:	0000000c 	0x0000000c
 1cc:	00000130 	0x00000130
 1d0:	1c0012e0 	pcaddu12i	$r0,151(0x97)
 1d4:	00000028 	0x00000028
 1d8:	0000000c 	0x0000000c
 1dc:	00000130 	0x00000130
 1e0:	1c001310 	pcaddu12i	$r16,152(0x98)
 1e4:	0000005c 	0x0000005c
 1e8:	00000014 	0x00000014
 1ec:	00000130 	0x00000130
 1f0:	1c001370 	pcaddu12i	$r16,155(0x9b)
 1f4:	00000058 	0x00000058
 1f8:	54100e7c 	bl	-101707764(0x9f0100c) # f9f01204 <_stack+0xdde01208>
 1fc:	0000000e 	0x0000000e
 200:	0000000c 	0x0000000c
 204:	00000130 	0x00000130
 208:	1c0013d0 	pcaddu12i	$r16,158(0x9e)
 20c:	00000018 	0x00000018
 210:	0000000c 	0x0000000c
 214:	ffffffff 	0xffffffff
 218:	7c010001 	0x7c010001
 21c:	00030d01 	0x00030d01
 220:	00000018 	0x00000018
 224:	00000210 	0x00000210
 228:	1c0013f0 	pcaddu12i	$r16,159(0x9f)
 22c:	0000001c 	0x0000001c
 230:	44100e44 	bnez	$r18,1052684(0x10100c) # 10123c <__stack_size+0xf123c>
 234:	d94c0199 	0xd94c0199
 238:	00000e44 	0x00000e44
 23c:	0000000c 	0x0000000c
 240:	00000210 	0x00000210
 244:	1c001410 	pcaddu12i	$r16,160(0xa0)
 248:	00000004 	0x00000004
 24c:	0000000c 	0x0000000c
 250:	00000210 	0x00000210
 254:	1c001420 	pcaddu12i	$r0,161(0xa1)
 258:	00000008 	0x00000008
 25c:	00000018 	0x00000018
 260:	00000210 	0x00000210
 264:	1c001430 	pcaddu12i	$r16,161(0xa1)
 268:	00000084 	0x00000084
 26c:	44100e44 	bnez	$r18,1052684(0x10100c) # 101278 <__stack_size+0xf1278>
 270:	60020199 	blt	$r12,$r25,512(0x200) # 470 <__stack_size-0xfb90>
 274:	000e58d9 	bytepick.d	$r25,$r6,$r22,0x4
 278:	0000000c 	0x0000000c
 27c:	00000210 	0x00000210
 280:	1c0014c0 	pcaddu12i	$r0,166(0xa6)
 284:	00000004 	0x00000004
 288:	00000018 	0x00000018
 28c:	00000210 	0x00000210
 290:	1c0014d0 	pcaddu12i	$r16,166(0xa6)
 294:	00000024 	0x00000024
 298:	44100e44 	bnez	$r18,1052684(0x10100c) # 1012a4 <__stack_size+0xf12a4>
 29c:	d9500199 	0xd9500199
 2a0:	00000e48 	0x00000e48
 2a4:	00000018 	0x00000018
 2a8:	00000210 	0x00000210
 2ac:	1c001500 	pcaddu12i	$r0,168(0xa8)
 2b0:	00000030 	0x00000030
 2b4:	44100e44 	bnez	$r18,1052684(0x10100c) # 1012c0 <__stack_size+0xf12c0>
 2b8:	d9500199 	0xd9500199
 2bc:	00000e54 	0x00000e54
