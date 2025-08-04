
obj/inner_product/main.elf:     file format elf32-loongarch
obj/inner_product/main.elf


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
1c000054:	1c0000cc 	pcaddu12i	$r12,6(0x6)
1c000058:	0297718c 	addi.w	$r12,$r12,1500(0x5dc)
1c00005c:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c000060:	02be91ad 	addi.w	$r13,$r13,-92(0xfa4)
1c000064:	1c00100e 	pcaddu12i	$r14,128(0x80)
1c000068:	028aa1ce 	addi.w	$r14,$r14,680(0x2a8)
1c00006c:	6c0019ae 	bgeu	$r13,$r14,24(0x18) # 1c000084 <_start+0x84>
1c000070:	2880018f 	ld.w	$r15,$r12,0
1c000074:	298001af 	st.w	$r15,$r13,0
1c000078:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00007c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c000080:	6bfff1ae 	bltu	$r13,$r14,-16(0x3fff0) # 1c000070 <_start+0x70>
1c000084:	1c00100c 	pcaddu12i	$r12,128(0x80)
1c000088:	028a218c 	addi.w	$r12,$r12,648(0x288)
1c00008c:	1c00100d 	pcaddu12i	$r13,128(0x80)
1c000090:	028a31ad 	addi.w	$r13,$r13,652(0x28c)
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
1c00038c:	543dc400 	bl	15812(0x3dc4) # 1c004150 <shell16>
1c000390:	03400000 	andi	$r0,$r0,0x0

1c000394 <go_finish>:
go_finish():
1c000394:	53fd6fff 	b	-660(0xffffd6c) # 1c000100 <test_finish>

Disassembly of section .text:

1c0003a0 <inner_product_fill8>:
inner_product_fill8():
1c0003a0:	001500cd 	move	$r13,$r6
1c0003a4:	58001085 	beq	$r4,$r5,16(0x10) # 1c0003b4 <inner_product_fill8+0x14>
1c0003a8:	001110a6 	sub.w	$r6,$r5,$r4
1c0003ac:	001501a5 	move	$r5,$r13
1c0003b0:	50601000 	b	24592(0x6010) # 1c0063c0 <memset>
1c0003b4:	4c000020 	jirl	$r0,$r1,0
1c0003b8:	03400000 	andi	$r0,$r0,0x0
1c0003bc:	03400000 	andi	$r0,$r0,0x0

1c0003c0 <inner_product_fillu8>:
inner_product_fillu8():
1c0003c0:	001500cd 	move	$r13,$r6
1c0003c4:	58001085 	beq	$r4,$r5,16(0x10) # 1c0003d4 <inner_product_fillu8+0x14>
1c0003c8:	001110a6 	sub.w	$r6,$r5,$r4
1c0003cc:	001501a5 	move	$r5,$r13
1c0003d0:	505ff000 	b	24560(0x5ff0) # 1c0063c0 <memset>
1c0003d4:	4c000020 	jirl	$r0,$r1,0
1c0003d8:	03400000 	andi	$r0,$r0,0x0
1c0003dc:	03400000 	andi	$r0,$r0,0x0

1c0003e0 <inner_product_fill16>:
inner_product_fill16():
1c0003e0:	58019c85 	beq	$r4,$r5,412(0x19c) # 1c00057c <inner_product_fill16+0x19c>
1c0003e4:	02bff8ad 	addi.w	$r13,$r5,-2(0xffe)
1c0003e8:	14ffffee 	lu12i.w	$r14,524287(0x7ffff)
1c0003ec:	001111a7 	sub.w	$r7,$r13,$r4
1c0003f0:	03bfe1c8 	ori	$r8,$r14,0xff8
1c0003f4:	004484ea 	srli.w	$r10,$r7,0x1
1c0003f8:	0044848c 	srli.w	$r12,$r4,0x1
1c0003fc:	0014a14b 	and	$r11,$r10,$r8
1c000400:	03400589 	andi	$r9,$r12,0x1
1c000404:	58016160 	beq	$r11,$r0,352(0x160) # 1c000564 <inner_product_fill16+0x184>
1c000408:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00040c:	00150087 	move	$r7,$r4
1c000410:	58000d20 	beq	$r9,$r0,12(0xc) # 1c00041c <inner_product_fill16+0x3c>
1c000414:	02800887 	addi.w	$r7,$r4,2(0x2)
1c000418:	29400086 	st.h	$r6,$r4,0
1c00041c:	02800408 	addi.w	$r8,$r0,1(0x1)
1c000420:	0011250c 	sub.w	$r12,$r8,$r9
1c000424:	0040852e 	slli.w	$r14,$r9,0x1
1c000428:	00102989 	add.w	$r9,$r12,$r10
1c00042c:	0044852a 	srli.w	$r10,$r9,0x1
1c000430:	0040894f 	slli.w	$r15,$r10,0x2
1c000434:	29803066 	st.w	$r6,$r3,12(0xc)
1c000438:	2a40306b 	ld.hu	$r11,$r3,12(0xc)
1c00043c:	02bff1f2 	addi.w	$r18,$r15,-4(0xffc)
1c000440:	00448a54 	srli.w	$r20,$r18,0x2
1c000444:	0280068d 	addi.w	$r13,$r20,1(0x1)
1c000448:	00103884 	add.w	$r4,$r4,$r14
1c00044c:	0040c170 	slli.w	$r16,$r11,0x10
1c000450:	03401dae 	andi	$r14,$r13,0x7
1c000454:	00154171 	or	$r17,$r11,$r16
1c000458:	001011f3 	add.w	$r19,$r15,$r4
1c00045c:	58006dc0 	beq	$r14,$r0,108(0x6c) # 1c0004c8 <inner_product_fill16+0xe8>
1c000460:	58005dc8 	beq	$r14,$r8,92(0x5c) # 1c0004bc <inner_product_fill16+0xdc>
1c000464:	02800808 	addi.w	$r8,$r0,2(0x2)
1c000468:	58004dc8 	beq	$r14,$r8,76(0x4c) # 1c0004b4 <inner_product_fill16+0xd4>
1c00046c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c000470:	58003dcc 	beq	$r14,$r12,60(0x3c) # 1c0004ac <inner_product_fill16+0xcc>
1c000474:	0280100a 	addi.w	$r10,$r0,4(0x4)
1c000478:	58002dca 	beq	$r14,$r10,44(0x2c) # 1c0004a4 <inner_product_fill16+0xc4>
1c00047c:	0280140b 	addi.w	$r11,$r0,5(0x5)
1c000480:	58001dcb 	beq	$r14,$r11,28(0x1c) # 1c00049c <inner_product_fill16+0xbc>
1c000484:	02801810 	addi.w	$r16,$r0,6(0x6)
1c000488:	58000dd0 	beq	$r14,$r16,12(0xc) # 1c000494 <inner_product_fill16+0xb4>
1c00048c:	29800091 	st.w	$r17,$r4,0
1c000490:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000494:	29800091 	st.w	$r17,$r4,0
1c000498:	02801084 	addi.w	$r4,$r4,4(0x4)
1c00049c:	29800091 	st.w	$r17,$r4,0
1c0004a0:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0004a4:	29800091 	st.w	$r17,$r4,0
1c0004a8:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0004ac:	29800091 	st.w	$r17,$r4,0
1c0004b0:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0004b4:	29800091 	st.w	$r17,$r4,0
1c0004b8:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0004bc:	29800091 	st.w	$r17,$r4,0
1c0004c0:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0004c4:	58002c93 	beq	$r4,$r19,44(0x2c) # 1c0004f0 <inner_product_fill16+0x110>
1c0004c8:	29800091 	st.w	$r17,$r4,0
1c0004cc:	29801091 	st.w	$r17,$r4,4(0x4)
1c0004d0:	29802091 	st.w	$r17,$r4,8(0x8)
1c0004d4:	29803091 	st.w	$r17,$r4,12(0xc)
1c0004d8:	29804091 	st.w	$r17,$r4,16(0x10)
1c0004dc:	29805091 	st.w	$r17,$r4,20(0x14)
1c0004e0:	29806091 	st.w	$r17,$r4,24(0x18)
1c0004e4:	29807091 	st.w	$r17,$r4,28(0x1c)
1c0004e8:	02808084 	addi.w	$r4,$r4,32(0x20)
1c0004ec:	5fffdc93 	bne	$r4,$r19,-36(0x3ffdc) # 1c0004c8 <inner_product_fill16+0xe8>
1c0004f0:	02bff80f 	addi.w	$r15,$r0,-2(0xffe)
1c0004f4:	0014bd31 	and	$r17,$r9,$r15
1c0004f8:	00408632 	slli.w	$r18,$r17,0x1
1c0004fc:	001048e7 	add.w	$r7,$r7,$r18
1c000500:	58005d31 	beq	$r9,$r17,92(0x5c) # 1c00055c <inner_product_fill16+0x17c>
1c000504:	294000e6 	st.h	$r6,$r7,0
1c000508:	028008e9 	addi.w	$r9,$r7,2(0x2)
1c00050c:	580050a9 	beq	$r5,$r9,80(0x50) # 1c00055c <inner_product_fill16+0x17c>
1c000510:	294008e6 	st.h	$r6,$r7,2(0x2)
1c000514:	028010f3 	addi.w	$r19,$r7,4(0x4)
1c000518:	580044b3 	beq	$r5,$r19,68(0x44) # 1c00055c <inner_product_fill16+0x17c>
1c00051c:	294010e6 	st.h	$r6,$r7,4(0x4)
1c000520:	028018f4 	addi.w	$r20,$r7,6(0x6)
1c000524:	580038b4 	beq	$r5,$r20,56(0x38) # 1c00055c <inner_product_fill16+0x17c>
1c000528:	294018e6 	st.h	$r6,$r7,6(0x6)
1c00052c:	028020ed 	addi.w	$r13,$r7,8(0x8)
1c000530:	58002cad 	beq	$r5,$r13,44(0x2c) # 1c00055c <inner_product_fill16+0x17c>
1c000534:	294020e6 	st.h	$r6,$r7,8(0x8)
1c000538:	028028ee 	addi.w	$r14,$r7,10(0xa)
1c00053c:	580020ae 	beq	$r5,$r14,32(0x20) # 1c00055c <inner_product_fill16+0x17c>
1c000540:	294028e6 	st.h	$r6,$r7,10(0xa)
1c000544:	028030e8 	addi.w	$r8,$r7,12(0xc)
1c000548:	580014a8 	beq	$r5,$r8,20(0x14) # 1c00055c <inner_product_fill16+0x17c>
1c00054c:	294030e6 	st.h	$r6,$r7,12(0xc)
1c000550:	028038ec 	addi.w	$r12,$r7,14(0xe)
1c000554:	580008ac 	beq	$r5,$r12,8(0x8) # 1c00055c <inner_product_fill16+0x17c>
1c000558:	294038e6 	st.h	$r6,$r7,14(0xe)
1c00055c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c000560:	4c000020 	jirl	$r0,$r1,0
1c000564:	29400086 	st.h	$r6,$r4,0
1c000568:	0280088f 	addi.w	$r15,$r4,2(0x2)
1c00056c:	580010af 	beq	$r5,$r15,16(0x10) # 1c00057c <inner_product_fill16+0x19c>
1c000570:	29400886 	st.h	$r6,$r4,2(0x2)
1c000574:	02801090 	addi.w	$r16,$r4,4(0x4)
1c000578:	5c0008b0 	bne	$r5,$r16,8(0x8) # 1c000580 <inner_product_fill16+0x1a0>
1c00057c:	4c000020 	jirl	$r0,$r1,0
1c000580:	29401086 	st.h	$r6,$r4,4(0x4)
1c000584:	02801891 	addi.w	$r17,$r4,6(0x6)
1c000588:	5bfff4b1 	beq	$r5,$r17,-12(0x3fff4) # 1c00057c <inner_product_fill16+0x19c>
1c00058c:	29401886 	st.h	$r6,$r4,6(0x6)
1c000590:	02802092 	addi.w	$r18,$r4,8(0x8)
1c000594:	5bffe8b2 	beq	$r5,$r18,-24(0x3ffe8) # 1c00057c <inner_product_fill16+0x19c>
1c000598:	29402086 	st.h	$r6,$r4,8(0x8)
1c00059c:	02802893 	addi.w	$r19,$r4,10(0xa)
1c0005a0:	5bffdcb3 	beq	$r5,$r19,-36(0x3ffdc) # 1c00057c <inner_product_fill16+0x19c>
1c0005a4:	29402886 	st.h	$r6,$r4,10(0xa)
1c0005a8:	02803094 	addi.w	$r20,$r4,12(0xc)
1c0005ac:	5bffd0b4 	beq	$r5,$r20,-48(0x3ffd0) # 1c00057c <inner_product_fill16+0x19c>
1c0005b0:	29403086 	st.h	$r6,$r4,12(0xc)
1c0005b4:	0280388d 	addi.w	$r13,$r4,14(0xe)
1c0005b8:	5bffc4ad 	beq	$r5,$r13,-60(0x3ffc4) # 1c00057c <inner_product_fill16+0x19c>
1c0005bc:	29403886 	st.h	$r6,$r4,14(0xe)
1c0005c0:	4c000020 	jirl	$r0,$r1,0
1c0005c4:	03400000 	andi	$r0,$r0,0x0
1c0005c8:	03400000 	andi	$r0,$r0,0x0
1c0005cc:	03400000 	andi	$r0,$r0,0x0

1c0005d0 <inner_product_fillu16>:
inner_product_fillu16():
1c0005d0:	58017085 	beq	$r4,$r5,368(0x170) # 1c000740 <inner_product_fillu16+0x170>
1c0005d4:	02bff8ae 	addi.w	$r14,$r5,-2(0xffe)
1c0005d8:	14ffffed 	lu12i.w	$r13,524287(0x7ffff)
1c0005dc:	001111c7 	sub.w	$r7,$r14,$r4
1c0005e0:	03bfe1a8 	ori	$r8,$r13,0xff8
1c0005e4:	004484ea 	srli.w	$r10,$r7,0x1
1c0005e8:	0044848c 	srli.w	$r12,$r4,0x1
1c0005ec:	0014a14b 	and	$r11,$r10,$r8
1c0005f0:	03400589 	andi	$r9,$r12,0x1
1c0005f4:	5800f560 	beq	$r11,$r0,244(0xf4) # 1c0006e8 <inner_product_fillu16+0x118>
1c0005f8:	00150091 	move	$r17,$r4
1c0005fc:	58000d20 	beq	$r9,$r0,12(0xc) # 1c000608 <inner_product_fillu16+0x38>
1c000600:	02800891 	addi.w	$r17,$r4,2(0x2)
1c000604:	29400086 	st.h	$r6,$r4,0
1c000608:	02800410 	addi.w	$r16,$r0,1(0x1)
1c00060c:	00112613 	sub.w	$r19,$r16,$r9
1c000610:	00102a6c 	add.w	$r12,$r19,$r10
1c000614:	0044858e 	srli.w	$r14,$r12,0x1
1c000618:	004089cd 	slli.w	$r13,$r14,0x2
1c00061c:	02bff1a7 	addi.w	$r7,$r13,-4(0xffc)
1c000620:	0040852f 	slli.w	$r15,$r9,0x1
1c000624:	004488e9 	srli.w	$r9,$r7,0x2
1c000628:	0280052a 	addi.w	$r10,$r9,1(0x1)
1c00062c:	0040c0d2 	slli.w	$r18,$r6,0x10
1c000630:	00103c84 	add.w	$r4,$r4,$r15
1c000634:	03401d4b 	andi	$r11,$r10,0x7
1c000638:	001548d4 	or	$r20,$r6,$r18
1c00063c:	001011a8 	add.w	$r8,$r13,$r4
1c000640:	58006d60 	beq	$r11,$r0,108(0x6c) # 1c0006ac <inner_product_fillu16+0xdc>
1c000644:	58005d70 	beq	$r11,$r16,92(0x5c) # 1c0006a0 <inner_product_fillu16+0xd0>
1c000648:	02800810 	addi.w	$r16,$r0,2(0x2)
1c00064c:	58004d70 	beq	$r11,$r16,76(0x4c) # 1c000698 <inner_product_fillu16+0xc8>
1c000650:	02800c0f 	addi.w	$r15,$r0,3(0x3)
1c000654:	58003d6f 	beq	$r11,$r15,60(0x3c) # 1c000690 <inner_product_fillu16+0xc0>
1c000658:	02801012 	addi.w	$r18,$r0,4(0x4)
1c00065c:	58002d72 	beq	$r11,$r18,44(0x2c) # 1c000688 <inner_product_fillu16+0xb8>
1c000660:	02801413 	addi.w	$r19,$r0,5(0x5)
1c000664:	58001d73 	beq	$r11,$r19,28(0x1c) # 1c000680 <inner_product_fillu16+0xb0>
1c000668:	0280180e 	addi.w	$r14,$r0,6(0x6)
1c00066c:	58000d6e 	beq	$r11,$r14,12(0xc) # 1c000678 <inner_product_fillu16+0xa8>
1c000670:	29800094 	st.w	$r20,$r4,0
1c000674:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000678:	29800094 	st.w	$r20,$r4,0
1c00067c:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000680:	29800094 	st.w	$r20,$r4,0
1c000684:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000688:	29800094 	st.w	$r20,$r4,0
1c00068c:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000690:	29800094 	st.w	$r20,$r4,0
1c000694:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000698:	29800094 	st.w	$r20,$r4,0
1c00069c:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0006a0:	29800094 	st.w	$r20,$r4,0
1c0006a4:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0006a8:	58002c88 	beq	$r4,$r8,44(0x2c) # 1c0006d4 <inner_product_fillu16+0x104>
1c0006ac:	29800094 	st.w	$r20,$r4,0
1c0006b0:	29801094 	st.w	$r20,$r4,4(0x4)
1c0006b4:	29802094 	st.w	$r20,$r4,8(0x8)
1c0006b8:	29803094 	st.w	$r20,$r4,12(0xc)
1c0006bc:	29804094 	st.w	$r20,$r4,16(0x10)
1c0006c0:	29805094 	st.w	$r20,$r4,20(0x14)
1c0006c4:	29806094 	st.w	$r20,$r4,24(0x18)
1c0006c8:	29807094 	st.w	$r20,$r4,28(0x1c)
1c0006cc:	02808084 	addi.w	$r4,$r4,32(0x20)
1c0006d0:	5fffdc88 	bne	$r4,$r8,-36(0x3ffdc) # 1c0006ac <inner_product_fillu16+0xdc>
1c0006d4:	02bff814 	addi.w	$r20,$r0,-2(0xffe)
1c0006d8:	0014d18d 	and	$r13,$r12,$r20
1c0006dc:	004085a7 	slli.w	$r7,$r13,0x1
1c0006e0:	00101e24 	add.w	$r4,$r17,$r7
1c0006e4:	58005d8d 	beq	$r12,$r13,92(0x5c) # 1c000740 <inner_product_fillu16+0x170>
1c0006e8:	29400086 	st.h	$r6,$r4,0
1c0006ec:	02800891 	addi.w	$r17,$r4,2(0x2)
1c0006f0:	580050b1 	beq	$r5,$r17,80(0x50) # 1c000740 <inner_product_fillu16+0x170>
1c0006f4:	29400886 	st.h	$r6,$r4,2(0x2)
1c0006f8:	0280108c 	addi.w	$r12,$r4,4(0x4)
1c0006fc:	580044ac 	beq	$r5,$r12,68(0x44) # 1c000740 <inner_product_fillu16+0x170>
1c000700:	29401086 	st.h	$r6,$r4,4(0x4)
1c000704:	02801888 	addi.w	$r8,$r4,6(0x6)
1c000708:	580038a8 	beq	$r5,$r8,56(0x38) # 1c000740 <inner_product_fillu16+0x170>
1c00070c:	29401886 	st.h	$r6,$r4,6(0x6)
1c000710:	02802089 	addi.w	$r9,$r4,8(0x8)
1c000714:	58002ca9 	beq	$r5,$r9,44(0x2c) # 1c000740 <inner_product_fillu16+0x170>
1c000718:	29402086 	st.h	$r6,$r4,8(0x8)
1c00071c:	0280288a 	addi.w	$r10,$r4,10(0xa)
1c000720:	580020aa 	beq	$r5,$r10,32(0x20) # 1c000740 <inner_product_fillu16+0x170>
1c000724:	29402886 	st.h	$r6,$r4,10(0xa)
1c000728:	0280308b 	addi.w	$r11,$r4,12(0xc)
1c00072c:	580014ab 	beq	$r5,$r11,20(0x14) # 1c000740 <inner_product_fillu16+0x170>
1c000730:	29403086 	st.h	$r6,$r4,12(0xc)
1c000734:	02803890 	addi.w	$r16,$r4,14(0xe)
1c000738:	580008b0 	beq	$r5,$r16,8(0x8) # 1c000740 <inner_product_fillu16+0x170>
1c00073c:	29403886 	st.h	$r6,$r4,14(0xe)
1c000740:	4c000020 	jirl	$r0,$r1,0
1c000744:	03400000 	andi	$r0,$r0,0x0
1c000748:	03400000 	andi	$r0,$r0,0x0
1c00074c:	03400000 	andi	$r0,$r0,0x0

1c000750 <fill_32>:
fill_32():
1c000750:	5800b085 	beq	$r4,$r5,176(0xb0) # 1c000800 <fill_32+0xb0>
1c000754:	001110ac 	sub.w	$r12,$r5,$r4
1c000758:	02bff187 	addi.w	$r7,$r12,-4(0xffc)
1c00075c:	004488e8 	srli.w	$r8,$r7,0x2
1c000760:	02800509 	addi.w	$r9,$r8,1(0x1)
1c000764:	03401d2a 	andi	$r10,$r9,0x7
1c000768:	58007140 	beq	$r10,$r0,112(0x70) # 1c0007d8 <fill_32+0x88>
1c00076c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c000770:	58005d4d 	beq	$r10,$r13,92(0x5c) # 1c0007cc <fill_32+0x7c>
1c000774:	0280080b 	addi.w	$r11,$r0,2(0x2)
1c000778:	58004d4b 	beq	$r10,$r11,76(0x4c) # 1c0007c4 <fill_32+0x74>
1c00077c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c000780:	58003d4e 	beq	$r10,$r14,60(0x3c) # 1c0007bc <fill_32+0x6c>
1c000784:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c000788:	58002d4f 	beq	$r10,$r15,44(0x2c) # 1c0007b4 <fill_32+0x64>
1c00078c:	02801410 	addi.w	$r16,$r0,5(0x5)
1c000790:	58001d50 	beq	$r10,$r16,28(0x1c) # 1c0007ac <fill_32+0x5c>
1c000794:	02801811 	addi.w	$r17,$r0,6(0x6)
1c000798:	58000d51 	beq	$r10,$r17,12(0xc) # 1c0007a4 <fill_32+0x54>
1c00079c:	29800086 	st.w	$r6,$r4,0
1c0007a0:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0007a4:	29800086 	st.w	$r6,$r4,0
1c0007a8:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0007ac:	29800086 	st.w	$r6,$r4,0
1c0007b0:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0007b4:	29800086 	st.w	$r6,$r4,0
1c0007b8:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0007bc:	29800086 	st.w	$r6,$r4,0
1c0007c0:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0007c4:	29800086 	st.w	$r6,$r4,0
1c0007c8:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0007cc:	02801084 	addi.w	$r4,$r4,4(0x4)
1c0007d0:	29bff086 	st.w	$r6,$r4,-4(0xffc)
1c0007d4:	580030a4 	beq	$r5,$r4,48(0x30) # 1c000804 <fill_32+0xb4>
1c0007d8:	29800086 	st.w	$r6,$r4,0
1c0007dc:	29801086 	st.w	$r6,$r4,4(0x4)
1c0007e0:	29802086 	st.w	$r6,$r4,8(0x8)
1c0007e4:	29803086 	st.w	$r6,$r4,12(0xc)
1c0007e8:	29804086 	st.w	$r6,$r4,16(0x10)
1c0007ec:	29805086 	st.w	$r6,$r4,20(0x14)
1c0007f0:	29806086 	st.w	$r6,$r4,24(0x18)
1c0007f4:	02808084 	addi.w	$r4,$r4,32(0x20)
1c0007f8:	29bff086 	st.w	$r6,$r4,-4(0xffc)
1c0007fc:	5fffdca4 	bne	$r5,$r4,-36(0x3ffdc) # 1c0007d8 <fill_32+0x88>
1c000800:	4c000020 	jirl	$r0,$r1,0
1c000804:	4c000020 	jirl	$r0,$r1,0
1c000808:	03400000 	andi	$r0,$r0,0x0
1c00080c:	03400000 	andi	$r0,$r0,0x0

1c000810 <fill_u32>:
fill_u32():
1c000810:	5800b085 	beq	$r4,$r5,176(0xb0) # 1c0008c0 <fill_u32+0xb0>
1c000814:	001110ac 	sub.w	$r12,$r5,$r4
1c000818:	02bff187 	addi.w	$r7,$r12,-4(0xffc)
1c00081c:	004488e8 	srli.w	$r8,$r7,0x2
1c000820:	02800509 	addi.w	$r9,$r8,1(0x1)
1c000824:	03401d2a 	andi	$r10,$r9,0x7
1c000828:	58007140 	beq	$r10,$r0,112(0x70) # 1c000898 <fill_u32+0x88>
1c00082c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c000830:	58005d4d 	beq	$r10,$r13,92(0x5c) # 1c00088c <fill_u32+0x7c>
1c000834:	0280080b 	addi.w	$r11,$r0,2(0x2)
1c000838:	58004d4b 	beq	$r10,$r11,76(0x4c) # 1c000884 <fill_u32+0x74>
1c00083c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c000840:	58003d4e 	beq	$r10,$r14,60(0x3c) # 1c00087c <fill_u32+0x6c>
1c000844:	0280100f 	addi.w	$r15,$r0,4(0x4)
1c000848:	58002d4f 	beq	$r10,$r15,44(0x2c) # 1c000874 <fill_u32+0x64>
1c00084c:	02801410 	addi.w	$r16,$r0,5(0x5)
1c000850:	58001d50 	beq	$r10,$r16,28(0x1c) # 1c00086c <fill_u32+0x5c>
1c000854:	02801811 	addi.w	$r17,$r0,6(0x6)
1c000858:	58000d51 	beq	$r10,$r17,12(0xc) # 1c000864 <fill_u32+0x54>
1c00085c:	29800086 	st.w	$r6,$r4,0
1c000860:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000864:	29800086 	st.w	$r6,$r4,0
1c000868:	02801084 	addi.w	$r4,$r4,4(0x4)
1c00086c:	29800086 	st.w	$r6,$r4,0
1c000870:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000874:	29800086 	st.w	$r6,$r4,0
1c000878:	02801084 	addi.w	$r4,$r4,4(0x4)
1c00087c:	29800086 	st.w	$r6,$r4,0
1c000880:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000884:	29800086 	st.w	$r6,$r4,0
1c000888:	02801084 	addi.w	$r4,$r4,4(0x4)
1c00088c:	02801084 	addi.w	$r4,$r4,4(0x4)
1c000890:	29bff086 	st.w	$r6,$r4,-4(0xffc)
1c000894:	580030a4 	beq	$r5,$r4,48(0x30) # 1c0008c4 <fill_u32+0xb4>
1c000898:	29800086 	st.w	$r6,$r4,0
1c00089c:	29801086 	st.w	$r6,$r4,4(0x4)
1c0008a0:	29802086 	st.w	$r6,$r4,8(0x8)
1c0008a4:	29803086 	st.w	$r6,$r4,12(0xc)
1c0008a8:	29804086 	st.w	$r6,$r4,16(0x10)
1c0008ac:	29805086 	st.w	$r6,$r4,20(0x14)
1c0008b0:	29806086 	st.w	$r6,$r4,24(0x18)
1c0008b4:	02808084 	addi.w	$r4,$r4,32(0x20)
1c0008b8:	29bff086 	st.w	$r6,$r4,-4(0xffc)
1c0008bc:	5fffdca4 	bne	$r5,$r4,-36(0x3ffdc) # 1c000898 <fill_u32+0x88>
1c0008c0:	4c000020 	jirl	$r0,$r1,0
1c0008c4:	4c000020 	jirl	$r0,$r1,0
1c0008c8:	03400000 	andi	$r0,$r0,0x0
1c0008cc:	03400000 	andi	$r0,$r0,0x0

1c0008d0 <test_inner_product_8>:
test_inner_product_8():
1c0008d0:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0008d4:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0008d8:	2980d077 	st.w	$r23,$r3,52(0x34)
1c0008dc:	2980c078 	st.w	$r24,$r3,48(0x30)
1c0008e0:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c0008e4:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c0008e8:	2980907b 	st.w	$r27,$r3,36(0x24)
1c0008ec:	2980807c 	st.w	$r28,$r3,32(0x20)
1c0008f0:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c0008f4:	2980607e 	st.w	$r30,$r3,24(0x18)
1c0008f8:	2980507f 	st.w	$r31,$r3,20(0x14)
1c0008fc:	0015009d 	move	$r29,$r4
1c000900:	001500de 	move	$r30,$r6
1c000904:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c000908:	1c001018 	pcaddu12i	$r24,128(0x80)
1c00090c:	02a7c318 	addi.w	$r24,$r24,-1552(0x9f0)
1c000910:	001500b6 	move	$r22,$r5
1c000914:	001500f7 	move	$r23,$r7
1c000918:	545ca800 	bl	23720(0x5ca8) # 1c0065c0 <get_clock>
1c00091c:	28800312 	ld.w	$r18,$r24,0
1c000920:	1c00100c 	pcaddu12i	$r12,128(0x80)
1c000924:	28a7a18c 	ld.w	$r12,$r12,-1560(0x9e8)
1c000928:	29800184 	st.w	$r4,$r12,0
1c00092c:	0015001b 	move	$r27,$r0
1c000930:	0015001f 	move	$r31,$r0
1c000934:	1c00101a 	pcaddu12i	$r26,128(0x80)
1c000938:	02a6f35a 	addi.w	$r26,$r26,-1604(0x9bc)
1c00093c:	00107bbc 	add.w	$r28,$r29,$r30
1c000940:	1c000ff9 	pcaddu12i	$r25,127(0x7f)
1c000944:	029b0339 	addi.w	$r25,$r25,1728(0x6c0)
1c000948:	6401e812 	bge	$r0,$r18,488(0x1e8) # 1c000b30 <test_inner_product_8+0x260>
1c00094c:	03400000 	andi	$r0,$r0,0x0
1c000950:	001503ac 	move	$r12,$r29
1c000954:	001502cd 	move	$r13,$r22
1c000958:	00150010 	move	$r16,$r0
1c00095c:	580287c0 	beq	$r30,$r0,644(0x284) # 1c000be0 <test_inner_product_8+0x310>
1c000960:	0011778e 	sub.w	$r14,$r28,$r29
1c000964:	03401dc1 	andi	$r1,$r14,0x7
1c000968:	58011420 	beq	$r1,$r0,276(0x114) # 1c000a7c <test_inner_product_8+0x1ac>
1c00096c:	0280040f 	addi.w	$r15,$r0,1(0x1)
1c000970:	5800e82f 	beq	$r1,$r15,232(0xe8) # 1c000a58 <test_inner_product_8+0x188>
1c000974:	02800804 	addi.w	$r4,$r0,2(0x2)
1c000978:	5800c024 	beq	$r1,$r4,192(0xc0) # 1c000a38 <test_inner_product_8+0x168>
1c00097c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c000980:	58009825 	beq	$r1,$r5,152(0x98) # 1c000a18 <test_inner_product_8+0x148>
1c000984:	02801006 	addi.w	$r6,$r0,4(0x4)
1c000988:	58007026 	beq	$r1,$r6,112(0x70) # 1c0009f8 <test_inner_product_8+0x128>
1c00098c:	02801407 	addi.w	$r7,$r0,5(0x5)
1c000990:	58004827 	beq	$r1,$r7,72(0x48) # 1c0009d8 <test_inner_product_8+0x108>
1c000994:	02801808 	addi.w	$r8,$r0,6(0x6)
1c000998:	58002028 	beq	$r1,$r8,32(0x20) # 1c0009b8 <test_inner_product_8+0xe8>
1c00099c:	2a0002d0 	ld.bu	$r16,$r22,0
1c0009a0:	2a0003a9 	ld.bu	$r9,$r29,0
1c0009a4:	028007ac 	addi.w	$r12,$r29,1(0x1)
1c0009a8:	028006cd 	addi.w	$r13,$r22,1(0x1)
1c0009ac:	001c412a 	mul.w	$r10,$r9,$r16
1c0009b0:	2980306a 	st.w	$r10,$r3,12(0xc)
1c0009b4:	28003070 	ld.b	$r16,$r3,12(0xc)
1c0009b8:	2a00018b 	ld.bu	$r11,$r12,0
1c0009bc:	2a0001b1 	ld.bu	$r17,$r13,0
1c0009c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0009c4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0009c8:	001c4573 	mul.w	$r19,$r11,$r17
1c0009cc:	00104274 	add.w	$r20,$r19,$r16
1c0009d0:	29803074 	st.w	$r20,$r3,12(0xc)
1c0009d4:	28003070 	ld.b	$r16,$r3,12(0xc)
1c0009d8:	2a000181 	ld.bu	$r1,$r12,0
1c0009dc:	2a0001ae 	ld.bu	$r14,$r13,0
1c0009e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0009e4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0009e8:	001c382f 	mul.w	$r15,$r1,$r14
1c0009ec:	001041e4 	add.w	$r4,$r15,$r16
1c0009f0:	29803064 	st.w	$r4,$r3,12(0xc)
1c0009f4:	28003070 	ld.b	$r16,$r3,12(0xc)
1c0009f8:	2a000185 	ld.bu	$r5,$r12,0
1c0009fc:	2a0001a6 	ld.bu	$r6,$r13,0
1c000a00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a04:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000a08:	001c18a7 	mul.w	$r7,$r5,$r6
1c000a0c:	001040e8 	add.w	$r8,$r7,$r16
1c000a10:	29803068 	st.w	$r8,$r3,12(0xc)
1c000a14:	28003070 	ld.b	$r16,$r3,12(0xc)
1c000a18:	2a000189 	ld.bu	$r9,$r12,0
1c000a1c:	2a0001aa 	ld.bu	$r10,$r13,0
1c000a20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a24:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000a28:	001c292b 	mul.w	$r11,$r9,$r10
1c000a2c:	00104170 	add.w	$r16,$r11,$r16
1c000a30:	29803070 	st.w	$r16,$r3,12(0xc)
1c000a34:	28003070 	ld.b	$r16,$r3,12(0xc)
1c000a38:	2a000191 	ld.bu	$r17,$r12,0
1c000a3c:	2a0001b3 	ld.bu	$r19,$r13,0
1c000a40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a44:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000a48:	001c4e34 	mul.w	$r20,$r17,$r19
1c000a4c:	00104281 	add.w	$r1,$r20,$r16
1c000a50:	29803061 	st.w	$r1,$r3,12(0xc)
1c000a54:	28003070 	ld.b	$r16,$r3,12(0xc)
1c000a58:	2a00018f 	ld.bu	$r15,$r12,0
1c000a5c:	2a0001ae 	ld.bu	$r14,$r13,0
1c000a60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000a64:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000a68:	001c39e4 	mul.w	$r4,$r15,$r14
1c000a6c:	00104085 	add.w	$r5,$r4,$r16
1c000a70:	29803065 	st.w	$r5,$r3,12(0xc)
1c000a74:	28003070 	ld.b	$r16,$r3,12(0xc)
1c000a78:	5800999c 	beq	$r12,$r28,152(0x98) # 1c000b10 <test_inner_product_8+0x240>
1c000a7c:	2a000189 	ld.bu	$r9,$r12,0
1c000a80:	2a0001aa 	ld.bu	$r10,$r13,0
1c000a84:	2a0005b1 	ld.bu	$r17,$r13,1(0x1)
1c000a88:	2a000588 	ld.bu	$r8,$r12,1(0x1)
1c000a8c:	2a000981 	ld.bu	$r1,$r12,2(0x2)
1c000a90:	001c292f 	mul.w	$r15,$r9,$r10
1c000a94:	2a0009a7 	ld.bu	$r7,$r13,2(0x2)
1c000a98:	2a000d86 	ld.bu	$r6,$r12,3(0x3)
1c000a9c:	2a000db4 	ld.bu	$r20,$r13,3(0x3)
1c000aa0:	2a00118b 	ld.bu	$r11,$r12,4(0x4)
1c000aa4:	2a0011ae 	ld.bu	$r14,$r13,4(0x4)
1c000aa8:	2a001584 	ld.bu	$r4,$r12,5(0x5)
1c000aac:	2a0015b3 	ld.bu	$r19,$r13,5(0x5)
1c000ab0:	2a00198a 	ld.bu	$r10,$r12,6(0x6)
1c000ab4:	2a001d89 	ld.bu	$r9,$r12,7(0x7)
1c000ab8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c000abc:	028021ad 	addi.w	$r13,$r13,8(0x8)
1c000ac0:	001c4508 	mul.w	$r8,$r8,$r17
1c000ac4:	001041f0 	add.w	$r16,$r15,$r16
1c000ac8:	001c1c31 	mul.w	$r17,$r1,$r7
1c000acc:	2a3ff9a7 	ld.bu	$r7,$r13,-2(0xffe)
1c000ad0:	001c50c1 	mul.w	$r1,$r6,$r20
1c000ad4:	001c3965 	mul.w	$r5,$r11,$r14
1c000ad8:	2a3ffdab 	ld.bu	$r11,$r13,-1(0xfff)
1c000adc:	0010220e 	add.w	$r14,$r16,$r8
1c000ae0:	001045cf 	add.w	$r15,$r14,$r17
1c000ae4:	001005e8 	add.w	$r8,$r15,$r1
1c000ae8:	001c4c86 	mul.w	$r6,$r4,$r19
1c000aec:	00101513 	add.w	$r19,$r8,$r5
1c000af0:	001c1d54 	mul.w	$r20,$r10,$r7
1c000af4:	00101a6a 	add.w	$r10,$r19,$r6
1c000af8:	001c2d24 	mul.w	$r4,$r9,$r11
1c000afc:	00105151 	add.w	$r17,$r10,$r20
1c000b00:	00101221 	add.w	$r1,$r17,$r4
1c000b04:	29803061 	st.w	$r1,$r3,12(0xc)
1c000b08:	28003070 	ld.b	$r16,$r3,12(0xc)
1c000b0c:	5fff719c 	bne	$r12,$r28,-144(0x3ff70) # 1c000a7c <test_inner_product_8+0x1ac>
1c000b10:	2a00034c 	ld.bu	$r12,$r26,0
1c000b14:	001c318d 	mul.w	$r13,$r12,$r12
1c000b18:	004099a7 	slli.w	$r7,$r13,0x6
1c000b1c:	29803067 	st.w	$r7,$r3,12(0xc)
1c000b20:	28003069 	ld.b	$r9,$r3,12(0xc)
1c000b24:	5c009130 	bne	$r9,$r16,144(0x90) # 1c000bb4 <test_inner_product_8+0x2e4>
1c000b28:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c000b2c:	63fe2772 	blt	$r27,$r18,-476(0x3fe24) # 1c000950 <test_inner_product_8+0x80>
1c000b30:	1c000ff6 	pcaddu12i	$r22,127(0x7f)
1c000b34:	289f62d6 	ld.w	$r22,$r22,2008(0x7d8)
1c000b38:	545a8800 	bl	23176(0x5a88) # 1c0065c0 <get_clock>
1c000b3c:	288002d8 	ld.w	$r24,$r22,0
1c000b40:	00150092 	move	$r18,$r4
1c000b44:	14001e99 	lu12i.w	$r25,244(0xf4)
1c000b48:	0389033a 	ori	$r26,$r25,0x240
1c000b4c:	1c000ffc 	pcaddu12i	$r28,127(0x7f)
1c000b50:	289ee39c 	ld.w	$r28,$r28,1976(0x7b8)
1c000b54:	001503c6 	move	$r6,$r30
1c000b58:	001502e5 	move	$r5,$r23
1c000b5c:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000b60:	0292d084 	addi.w	$r4,$r4,1204(0x4b4)
1c000b64:	00116257 	sub.w	$r23,$r18,$r24
1c000b68:	00216ae7 	div.wu	$r7,$r23,$r26
1c000b6c:	5c000b40 	bne	$r26,$r0,8(0x8) # 1c000b74 <test_inner_product_8+0x2a4>
1c000b70:	002a0007 	break	0x7
1c000b74:	29800392 	st.w	$r18,$r28,0
1c000b78:	54523800 	bl	21048(0x5238) # 1c005db0 <printf>
1c000b7c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c000b80:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c000b84:	001503e4 	move	$r4,$r31
1c000b88:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c000b8c:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c000b90:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c000b94:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c000b98:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c000b9c:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c000ba0:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c000ba4:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c000ba8:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c000bac:	02810063 	addi.w	$r3,$r3,64(0x40)
1c000bb0:	4c000020 	jirl	$r0,$r1,0
1c000bb4:	001502e5 	move	$r5,$r23
1c000bb8:	00150324 	move	$r4,$r25
1c000bbc:	5451f400 	bl	20980(0x51f4) # 1c005db0 <printf>
1c000bc0:	28800312 	ld.w	$r18,$r24,0
1c000bc4:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c000bc8:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c000bcc:	67ff6772 	bge	$r27,$r18,-156(0x3ff64) # 1c000b30 <test_inner_product_8+0x260>
1c000bd0:	001503ac 	move	$r12,$r29
1c000bd4:	001502cd 	move	$r13,$r22
1c000bd8:	00150010 	move	$r16,$r0
1c000bdc:	5ffd87c0 	bne	$r30,$r0,-636(0x3fd84) # 1c000960 <test_inner_product_8+0x90>
1c000be0:	001503d0 	move	$r16,$r30
1c000be4:	53ff2fff 	b	-212(0xfffff2c) # 1c000b10 <test_inner_product_8+0x240>
1c000be8:	03400000 	andi	$r0,$r0,0x0
1c000bec:	03400000 	andi	$r0,$r0,0x0

1c000bf0 <test_inner_product_u8>:
test_inner_product_u8():
1c000bf0:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c000bf4:	2980e076 	st.w	$r22,$r3,56(0x38)
1c000bf8:	2980d077 	st.w	$r23,$r3,52(0x34)
1c000bfc:	2980c078 	st.w	$r24,$r3,48(0x30)
1c000c00:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c000c04:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c000c08:	2980907b 	st.w	$r27,$r3,36(0x24)
1c000c0c:	2980807c 	st.w	$r28,$r3,32(0x20)
1c000c10:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c000c14:	2980607e 	st.w	$r30,$r3,24(0x18)
1c000c18:	2980507f 	st.w	$r31,$r3,20(0x14)
1c000c1c:	0015009d 	move	$r29,$r4
1c000c20:	001500de 	move	$r30,$r6
1c000c24:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c000c28:	1c000ff8 	pcaddu12i	$r24,127(0x7f)
1c000c2c:	029b4318 	addi.w	$r24,$r24,1744(0x6d0)
1c000c30:	001500b6 	move	$r22,$r5
1c000c34:	001500f7 	move	$r23,$r7
1c000c38:	54598800 	bl	22920(0x5988) # 1c0065c0 <get_clock>
1c000c3c:	28800312 	ld.w	$r18,$r24,0
1c000c40:	1c000fec 	pcaddu12i	$r12,127(0x7f)
1c000c44:	289b218c 	ld.w	$r12,$r12,1736(0x6c8)
1c000c48:	29800184 	st.w	$r4,$r12,0
1c000c4c:	0015001f 	move	$r31,$r0
1c000c50:	001077dc 	add.w	$r28,$r30,$r29
1c000c54:	0015001b 	move	$r27,$r0
1c000c58:	1c000ffa 	pcaddu12i	$r26,127(0x7f)
1c000c5c:	029a635a 	addi.w	$r26,$r26,1688(0x698)
1c000c60:	1c000ff9 	pcaddu12i	$r25,127(0x7f)
1c000c64:	028e8339 	addi.w	$r25,$r25,928(0x3a0)
1c000c68:	64020012 	bge	$r0,$r18,512(0x200) # 1c000e68 <test_inner_product_u8+0x278>
1c000c6c:	03400000 	andi	$r0,$r0,0x0
1c000c70:	001503ac 	move	$r12,$r29
1c000c74:	001502cd 	move	$r13,$r22
1c000c78:	00150010 	move	$r16,$r0
1c000c7c:	5801e7c0 	beq	$r30,$r0,484(0x1e4) # 1c000e60 <test_inner_product_u8+0x270>
1c000c80:	0011778e 	sub.w	$r14,$r28,$r29
1c000c84:	03401dc1 	andi	$r1,$r14,0x7
1c000c88:	58011420 	beq	$r1,$r0,276(0x114) # 1c000d9c <test_inner_product_u8+0x1ac>
1c000c8c:	0280040f 	addi.w	$r15,$r0,1(0x1)
1c000c90:	5800e82f 	beq	$r1,$r15,232(0xe8) # 1c000d78 <test_inner_product_u8+0x188>
1c000c94:	02800804 	addi.w	$r4,$r0,2(0x2)
1c000c98:	5800c024 	beq	$r1,$r4,192(0xc0) # 1c000d58 <test_inner_product_u8+0x168>
1c000c9c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c000ca0:	58009825 	beq	$r1,$r5,152(0x98) # 1c000d38 <test_inner_product_u8+0x148>
1c000ca4:	02801006 	addi.w	$r6,$r0,4(0x4)
1c000ca8:	58007026 	beq	$r1,$r6,112(0x70) # 1c000d18 <test_inner_product_u8+0x128>
1c000cac:	02801407 	addi.w	$r7,$r0,5(0x5)
1c000cb0:	58004827 	beq	$r1,$r7,72(0x48) # 1c000cf8 <test_inner_product_u8+0x108>
1c000cb4:	02801808 	addi.w	$r8,$r0,6(0x6)
1c000cb8:	58002028 	beq	$r1,$r8,32(0x20) # 1c000cd8 <test_inner_product_u8+0xe8>
1c000cbc:	2a0002d0 	ld.bu	$r16,$r22,0
1c000cc0:	2a0003a9 	ld.bu	$r9,$r29,0
1c000cc4:	028007ac 	addi.w	$r12,$r29,1(0x1)
1c000cc8:	028006cd 	addi.w	$r13,$r22,1(0x1)
1c000ccc:	001c412a 	mul.w	$r10,$r9,$r16
1c000cd0:	2980306a 	st.w	$r10,$r3,12(0xc)
1c000cd4:	2a003070 	ld.bu	$r16,$r3,12(0xc)
1c000cd8:	2a00018b 	ld.bu	$r11,$r12,0
1c000cdc:	2a0001b1 	ld.bu	$r17,$r13,0
1c000ce0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000ce4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000ce8:	001c4573 	mul.w	$r19,$r11,$r17
1c000cec:	00104e14 	add.w	$r20,$r16,$r19
1c000cf0:	29803074 	st.w	$r20,$r3,12(0xc)
1c000cf4:	2a003070 	ld.bu	$r16,$r3,12(0xc)
1c000cf8:	2a000181 	ld.bu	$r1,$r12,0
1c000cfc:	2a0001ae 	ld.bu	$r14,$r13,0
1c000d00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000d04:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000d08:	001c382f 	mul.w	$r15,$r1,$r14
1c000d0c:	00103e04 	add.w	$r4,$r16,$r15
1c000d10:	29803064 	st.w	$r4,$r3,12(0xc)
1c000d14:	2a003070 	ld.bu	$r16,$r3,12(0xc)
1c000d18:	2a000185 	ld.bu	$r5,$r12,0
1c000d1c:	2a0001a6 	ld.bu	$r6,$r13,0
1c000d20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000d24:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000d28:	001c18a7 	mul.w	$r7,$r5,$r6
1c000d2c:	00101e08 	add.w	$r8,$r16,$r7
1c000d30:	29803068 	st.w	$r8,$r3,12(0xc)
1c000d34:	2a003070 	ld.bu	$r16,$r3,12(0xc)
1c000d38:	2a000189 	ld.bu	$r9,$r12,0
1c000d3c:	2a0001aa 	ld.bu	$r10,$r13,0
1c000d40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000d44:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000d48:	001c292b 	mul.w	$r11,$r9,$r10
1c000d4c:	00102e10 	add.w	$r16,$r16,$r11
1c000d50:	29803070 	st.w	$r16,$r3,12(0xc)
1c000d54:	2a003070 	ld.bu	$r16,$r3,12(0xc)
1c000d58:	2a000191 	ld.bu	$r17,$r12,0
1c000d5c:	2a0001b3 	ld.bu	$r19,$r13,0
1c000d60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000d64:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000d68:	001c4e34 	mul.w	$r20,$r17,$r19
1c000d6c:	00105201 	add.w	$r1,$r16,$r20
1c000d70:	29803061 	st.w	$r1,$r3,12(0xc)
1c000d74:	2a003070 	ld.bu	$r16,$r3,12(0xc)
1c000d78:	2a00018f 	ld.bu	$r15,$r12,0
1c000d7c:	2a0001ae 	ld.bu	$r14,$r13,0
1c000d80:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c000d84:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c000d88:	001c39e4 	mul.w	$r4,$r15,$r14
1c000d8c:	00101205 	add.w	$r5,$r16,$r4
1c000d90:	29803065 	st.w	$r5,$r3,12(0xc)
1c000d94:	2a003070 	ld.bu	$r16,$r3,12(0xc)
1c000d98:	58009b8c 	beq	$r28,$r12,152(0x98) # 1c000e30 <test_inner_product_u8+0x240>
1c000d9c:	2a000189 	ld.bu	$r9,$r12,0
1c000da0:	2a0001aa 	ld.bu	$r10,$r13,0
1c000da4:	2a0005b1 	ld.bu	$r17,$r13,1(0x1)
1c000da8:	2a000588 	ld.bu	$r8,$r12,1(0x1)
1c000dac:	2a000981 	ld.bu	$r1,$r12,2(0x2)
1c000db0:	001c292f 	mul.w	$r15,$r9,$r10
1c000db4:	2a0009a7 	ld.bu	$r7,$r13,2(0x2)
1c000db8:	2a000d86 	ld.bu	$r6,$r12,3(0x3)
1c000dbc:	2a000db4 	ld.bu	$r20,$r13,3(0x3)
1c000dc0:	2a00118b 	ld.bu	$r11,$r12,4(0x4)
1c000dc4:	2a0011ae 	ld.bu	$r14,$r13,4(0x4)
1c000dc8:	2a001584 	ld.bu	$r4,$r12,5(0x5)
1c000dcc:	2a0015b3 	ld.bu	$r19,$r13,5(0x5)
1c000dd0:	2a00198a 	ld.bu	$r10,$r12,6(0x6)
1c000dd4:	2a001d89 	ld.bu	$r9,$r12,7(0x7)
1c000dd8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c000ddc:	028021ad 	addi.w	$r13,$r13,8(0x8)
1c000de0:	001c4508 	mul.w	$r8,$r8,$r17
1c000de4:	00103e10 	add.w	$r16,$r16,$r15
1c000de8:	001c1c31 	mul.w	$r17,$r1,$r7
1c000dec:	2a3ff9a7 	ld.bu	$r7,$r13,-2(0xffe)
1c000df0:	001c50c1 	mul.w	$r1,$r6,$r20
1c000df4:	001c3965 	mul.w	$r5,$r11,$r14
1c000df8:	2a3ffdab 	ld.bu	$r11,$r13,-1(0xfff)
1c000dfc:	0010220e 	add.w	$r14,$r16,$r8
1c000e00:	001045cf 	add.w	$r15,$r14,$r17
1c000e04:	001005e8 	add.w	$r8,$r15,$r1
1c000e08:	001c4c86 	mul.w	$r6,$r4,$r19
1c000e0c:	00101513 	add.w	$r19,$r8,$r5
1c000e10:	001c1d54 	mul.w	$r20,$r10,$r7
1c000e14:	00101a6a 	add.w	$r10,$r19,$r6
1c000e18:	001c2d24 	mul.w	$r4,$r9,$r11
1c000e1c:	00105151 	add.w	$r17,$r10,$r20
1c000e20:	00101221 	add.w	$r1,$r17,$r4
1c000e24:	29803061 	st.w	$r1,$r3,12(0xc)
1c000e28:	2a003070 	ld.bu	$r16,$r3,12(0xc)
1c000e2c:	5fff738c 	bne	$r28,$r12,-144(0x3ff70) # 1c000d9c <test_inner_product_u8+0x1ac>
1c000e30:	2a00034c 	ld.bu	$r12,$r26,0
1c000e34:	001c318d 	mul.w	$r13,$r12,$r12
1c000e38:	004099a7 	slli.w	$r7,$r13,0x6
1c000e3c:	29803067 	st.w	$r7,$r3,12(0xc)
1c000e40:	2a003069 	ld.bu	$r9,$r3,12(0xc)
1c000e44:	00112605 	sub.w	$r5,$r16,$r9
1c000e48:	64001805 	bge	$r0,$r5,24(0x18) # 1c000e60 <test_inner_product_u8+0x270>
1c000e4c:	001502e5 	move	$r5,$r23
1c000e50:	00150324 	move	$r4,$r25
1c000e54:	544f5c00 	bl	20316(0x4f5c) # 1c005db0 <printf>
1c000e58:	28800312 	ld.w	$r18,$r24,0
1c000e5c:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c000e60:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c000e64:	63fe0f72 	blt	$r27,$r18,-500(0x3fe0c) # 1c000c70 <test_inner_product_u8+0x80>
1c000e68:	1c000ff8 	pcaddu12i	$r24,127(0x7f)
1c000e6c:	28928318 	ld.w	$r24,$r24,1184(0x4a0)
1c000e70:	54575000 	bl	22352(0x5750) # 1c0065c0 <get_clock>
1c000e74:	28800319 	ld.w	$r25,$r24,0
1c000e78:	00150096 	move	$r22,$r4
1c000e7c:	14001e9a 	lu12i.w	$r26,244(0xf4)
1c000e80:	0389035c 	ori	$r28,$r26,0x240
1c000e84:	1c000ffd 	pcaddu12i	$r29,127(0x7f)
1c000e88:	289203bd 	ld.w	$r29,$r29,1152(0x480)
1c000e8c:	001503c6 	move	$r6,$r30
1c000e90:	001502e5 	move	$r5,$r23
1c000e94:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c000e98:	0285f084 	addi.w	$r4,$r4,380(0x17c)
1c000e9c:	001166d7 	sub.w	$r23,$r22,$r25
1c000ea0:	298003b6 	st.w	$r22,$r29,0
1c000ea4:	002172e7 	div.wu	$r7,$r23,$r28
1c000ea8:	5c000b80 	bne	$r28,$r0,8(0x8) # 1c000eb0 <test_inner_product_u8+0x2c0>
1c000eac:	002a0007 	break	0x7
1c000eb0:	544f0000 	bl	20224(0x4f00) # 1c005db0 <printf>
1c000eb4:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c000eb8:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c000ebc:	001503e4 	move	$r4,$r31
1c000ec0:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c000ec4:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c000ec8:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c000ecc:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c000ed0:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c000ed4:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c000ed8:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c000edc:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c000ee0:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c000ee4:	02810063 	addi.w	$r3,$r3,64(0x40)
1c000ee8:	4c000020 	jirl	$r0,$r1,0
1c000eec:	03400000 	andi	$r0,$r0,0x0

1c000ef0 <test_inner_product_16>:
test_inner_product_16():
1c000ef0:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c000ef4:	2980e076 	st.w	$r22,$r3,56(0x38)
1c000ef8:	2980d077 	st.w	$r23,$r3,52(0x34)
1c000efc:	2980c078 	st.w	$r24,$r3,48(0x30)
1c000f00:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c000f04:	2980607e 	st.w	$r30,$r3,24(0x18)
1c000f08:	2980507f 	st.w	$r31,$r3,20(0x14)
1c000f0c:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c000f10:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c000f14:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c000f18:	2980907b 	st.w	$r27,$r3,36(0x24)
1c000f1c:	2980807c 	st.w	$r28,$r3,32(0x20)
1c000f20:	1c000ff8 	pcaddu12i	$r24,127(0x7f)
1c000f24:	028f6318 	addi.w	$r24,$r24,984(0x3d8)
1c000f28:	0015009d 	move	$r29,$r4
1c000f2c:	001500bf 	move	$r31,$r5
1c000f30:	001500de 	move	$r30,$r6
1c000f34:	001500f7 	move	$r23,$r7
1c000f38:	54568800 	bl	22152(0x5688) # 1c0065c0 <get_clock>
1c000f3c:	28800313 	ld.w	$r19,$r24,0
1c000f40:	1c000fec 	pcaddu12i	$r12,127(0x7f)
1c000f44:	288f218c 	ld.w	$r12,$r12,968(0x3c8)
1c000f48:	29800184 	st.w	$r4,$r12,0
1c000f4c:	00150016 	move	$r22,$r0
1c000f50:	64021013 	bge	$r0,$r19,528(0x210) # 1c001160 <test_inner_product_16+0x270>
1c000f54:	004087db 	slli.w	$r27,$r30,0x1
1c000f58:	14000031 	lu12i.w	$r17,1(0x1)
1c000f5c:	0015001c 	move	$r28,$r0
1c000f60:	00150016 	move	$r22,$r0
1c000f64:	00106fbb 	add.w	$r27,$r29,$r27
1c000f68:	1c000ff9 	pcaddu12i	$r25,127(0x7f)
1c000f6c:	028e1339 	addi.w	$r25,$r25,900(0x384)
1c000f70:	03bd023a 	ori	$r26,$r17,0xf40
1c000f74:	001503ed 	move	$r13,$r31
1c000f78:	001503ac 	move	$r12,$r29
1c000f7c:	00150014 	move	$r20,$r0
1c000f80:	580297c0 	beq	$r30,$r0,660(0x294) # 1c001214 <test_inner_product_16+0x324>
1c000f84:	00117770 	sub.w	$r16,$r27,$r29
1c000f88:	02bffa01 	addi.w	$r1,$r16,-2(0xffe)
1c000f8c:	00448424 	srli.w	$r4,$r1,0x1
1c000f90:	02800485 	addi.w	$r5,$r4,1(0x1)
1c000f94:	03401ca6 	andi	$r6,$r5,0x7
1c000f98:	580114c0 	beq	$r6,$r0,276(0x114) # 1c0010ac <test_inner_product_16+0x1bc>
1c000f9c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c000fa0:	5800e8ce 	beq	$r6,$r14,232(0xe8) # 1c001088 <test_inner_product_16+0x198>
1c000fa4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c000fa8:	5800c0c7 	beq	$r6,$r7,192(0xc0) # 1c001068 <test_inner_product_16+0x178>
1c000fac:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c000fb0:	580098c8 	beq	$r6,$r8,152(0x98) # 1c001048 <test_inner_product_16+0x158>
1c000fb4:	02801009 	addi.w	$r9,$r0,4(0x4)
1c000fb8:	580070c9 	beq	$r6,$r9,112(0x70) # 1c001028 <test_inner_product_16+0x138>
1c000fbc:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c000fc0:	580048ca 	beq	$r6,$r10,72(0x48) # 1c001008 <test_inner_product_16+0x118>
1c000fc4:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c000fc8:	580020cb 	beq	$r6,$r11,32(0x20) # 1c000fe8 <test_inner_product_16+0xf8>
1c000fcc:	2a4003ad 	ld.hu	$r13,$r29,0
1c000fd0:	2a4003f4 	ld.hu	$r20,$r31,0
1c000fd4:	02800bac 	addi.w	$r12,$r29,2(0x2)
1c000fd8:	001c51af 	mul.w	$r15,$r13,$r20
1c000fdc:	02800bed 	addi.w	$r13,$r31,2(0x2)
1c000fe0:	2980306f 	st.w	$r15,$r3,12(0xc)
1c000fe4:	28403074 	ld.h	$r20,$r3,12(0xc)
1c000fe8:	2a400192 	ld.hu	$r18,$r12,0
1c000fec:	2a4001b1 	ld.hu	$r17,$r13,0
1c000ff0:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c000ff4:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c000ff8:	001c4650 	mul.w	$r16,$r18,$r17
1c000ffc:	00105201 	add.w	$r1,$r16,$r20
1c001000:	29803061 	st.w	$r1,$r3,12(0xc)
1c001004:	28403074 	ld.h	$r20,$r3,12(0xc)
1c001008:	2a400184 	ld.hu	$r4,$r12,0
1c00100c:	2a4001a5 	ld.hu	$r5,$r13,0
1c001010:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001014:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c001018:	001c1486 	mul.w	$r6,$r4,$r5
1c00101c:	001050ce 	add.w	$r14,$r6,$r20
1c001020:	2980306e 	st.w	$r14,$r3,12(0xc)
1c001024:	28403074 	ld.h	$r20,$r3,12(0xc)
1c001028:	2a400187 	ld.hu	$r7,$r12,0
1c00102c:	2a4001a8 	ld.hu	$r8,$r13,0
1c001030:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001034:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c001038:	001c20e9 	mul.w	$r9,$r7,$r8
1c00103c:	0010512a 	add.w	$r10,$r9,$r20
1c001040:	2980306a 	st.w	$r10,$r3,12(0xc)
1c001044:	28403074 	ld.h	$r20,$r3,12(0xc)
1c001048:	2a40018b 	ld.hu	$r11,$r12,0
1c00104c:	2a4001af 	ld.hu	$r15,$r13,0
1c001050:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001054:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c001058:	001c3d72 	mul.w	$r18,$r11,$r15
1c00105c:	00105254 	add.w	$r20,$r18,$r20
1c001060:	29803074 	st.w	$r20,$r3,12(0xc)
1c001064:	28403074 	ld.h	$r20,$r3,12(0xc)
1c001068:	2a400191 	ld.hu	$r17,$r12,0
1c00106c:	2a4001b0 	ld.hu	$r16,$r13,0
1c001070:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001074:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c001078:	001c4221 	mul.w	$r1,$r17,$r16
1c00107c:	00105024 	add.w	$r4,$r1,$r20
1c001080:	29803064 	st.w	$r4,$r3,12(0xc)
1c001084:	28403074 	ld.h	$r20,$r3,12(0xc)
1c001088:	2a400185 	ld.hu	$r5,$r12,0
1c00108c:	2a4001a6 	ld.hu	$r6,$r13,0
1c001090:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001094:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c001098:	001c18ae 	mul.w	$r14,$r5,$r6
1c00109c:	001051c7 	add.w	$r7,$r14,$r20
1c0010a0:	29803067 	st.w	$r7,$r3,12(0xc)
1c0010a4:	28403074 	ld.h	$r20,$r3,12(0xc)
1c0010a8:	5800999b 	beq	$r12,$r27,152(0x98) # 1c001140 <test_inner_product_16+0x250>
1c0010ac:	2a40018b 	ld.hu	$r11,$r12,0
1c0010b0:	2a4001af 	ld.hu	$r15,$r13,0
1c0010b4:	2a4009b2 	ld.hu	$r18,$r13,2(0x2)
1c0010b8:	2a400989 	ld.hu	$r9,$r12,2(0x2)
1c0010bc:	2a401191 	ld.hu	$r17,$r12,4(0x4)
1c0010c0:	001c3d6e 	mul.w	$r14,$r11,$r15
1c0010c4:	2a4011a8 	ld.hu	$r8,$r13,4(0x4)
1c0010c8:	2a401981 	ld.hu	$r1,$r12,6(0x6)
1c0010cc:	2a4019a4 	ld.hu	$r4,$r13,6(0x6)
1c0010d0:	2a40218a 	ld.hu	$r10,$r12,8(0x8)
1c0010d4:	2a4021a6 	ld.hu	$r6,$r13,8(0x8)
1c0010d8:	2a402985 	ld.hu	$r5,$r12,10(0xa)
1c0010dc:	2a4029b0 	ld.hu	$r16,$r13,10(0xa)
1c0010e0:	2a40318b 	ld.hu	$r11,$r12,12(0xc)
1c0010e4:	2a4031af 	ld.hu	$r15,$r13,12(0xc)
1c0010e8:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c0010ec:	028041ad 	addi.w	$r13,$r13,16(0x10)
1c0010f0:	001c4929 	mul.w	$r9,$r9,$r18
1c0010f4:	001051d4 	add.w	$r20,$r14,$r20
1c0010f8:	001c2232 	mul.w	$r18,$r17,$r8
1c0010fc:	0010268e 	add.w	$r14,$r20,$r9
1c001100:	001c1027 	mul.w	$r7,$r1,$r4
1c001104:	2a7ff981 	ld.hu	$r1,$r12,-2(0xffe)
1c001108:	001049c9 	add.w	$r9,$r14,$r18
1c00110c:	001c1951 	mul.w	$r17,$r10,$r6
1c001110:	2a7ff9aa 	ld.hu	$r10,$r13,-2(0xffe)
1c001114:	001c40a8 	mul.w	$r8,$r5,$r16
1c001118:	00101d25 	add.w	$r5,$r9,$r7
1c00111c:	001044b0 	add.w	$r16,$r5,$r17
1c001120:	001c3d64 	mul.w	$r4,$r11,$r15
1c001124:	00102212 	add.w	$r18,$r16,$r8
1c001128:	001c2826 	mul.w	$r6,$r1,$r10
1c00112c:	00101247 	add.w	$r7,$r18,$r4
1c001130:	001018eb 	add.w	$r11,$r7,$r6
1c001134:	2980306b 	st.w	$r11,$r3,12(0xc)
1c001138:	28403074 	ld.h	$r20,$r3,12(0xc)
1c00113c:	5fff719b 	bne	$r12,$r27,-144(0x3ff70) # 1c0010ac <test_inner_product_16+0x1bc>
1c001140:	2a40032c 	ld.hu	$r12,$r25,0
1c001144:	001c318d 	mul.w	$r13,$r12,$r12
1c001148:	001c69af 	mul.w	$r15,$r13,$r26
1c00114c:	2980306f 	st.w	$r15,$r3,12(0xc)
1c001150:	28403071 	ld.h	$r17,$r3,12(0xc)
1c001154:	5c009234 	bne	$r17,$r20,144(0x90) # 1c0011e4 <test_inner_product_16+0x2f4>
1c001158:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c00115c:	63fe1b93 	blt	$r28,$r19,-488(0x3fe18) # 1c000f74 <test_inner_product_16+0x84>
1c001160:	1c000ff8 	pcaddu12i	$r24,127(0x7f)
1c001164:	2886a318 	ld.w	$r24,$r24,424(0x1a8)
1c001168:	54545800 	bl	21592(0x5458) # 1c0065c0 <get_clock>
1c00116c:	28800319 	ld.w	$r25,$r24,0
1c001170:	00150093 	move	$r19,$r4
1c001174:	14001e9a 	lu12i.w	$r26,244(0xf4)
1c001178:	0389035b 	ori	$r27,$r26,0x240
1c00117c:	1c000ffd 	pcaddu12i	$r29,127(0x7f)
1c001180:	288623bd 	ld.w	$r29,$r29,392(0x188)
1c001184:	001503c6 	move	$r6,$r30
1c001188:	001502e5 	move	$r5,$r23
1c00118c:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c001190:	02ba1084 	addi.w	$r4,$r4,-380(0xe84)
1c001194:	00116677 	sub.w	$r23,$r19,$r25
1c001198:	00216ee7 	div.wu	$r7,$r23,$r27
1c00119c:	5c000b60 	bne	$r27,$r0,8(0x8) # 1c0011a4 <test_inner_product_16+0x2b4>
1c0011a0:	002a0007 	break	0x7
1c0011a4:	298003b3 	st.w	$r19,$r29,0
1c0011a8:	544c0800 	bl	19464(0x4c08) # 1c005db0 <printf>
1c0011ac:	001502c4 	move	$r4,$r22
1c0011b0:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0011b4:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0011b8:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c0011bc:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c0011c0:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c0011c4:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c0011c8:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c0011cc:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c0011d0:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c0011d4:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c0011d8:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c0011dc:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0011e0:	4c000020 	jirl	$r0,$r1,0
1c0011e4:	001502e5 	move	$r5,$r23
1c0011e8:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c0011ec:	02b86084 	addi.w	$r4,$r4,-488(0xe18)
1c0011f0:	544bc000 	bl	19392(0x4bc0) # 1c005db0 <printf>
1c0011f4:	28800313 	ld.w	$r19,$r24,0
1c0011f8:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c0011fc:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c001200:	67ff6393 	bge	$r28,$r19,-160(0x3ff60) # 1c001160 <test_inner_product_16+0x270>
1c001204:	001503ed 	move	$r13,$r31
1c001208:	001503ac 	move	$r12,$r29
1c00120c:	00150014 	move	$r20,$r0
1c001210:	5ffd77c0 	bne	$r30,$r0,-652(0x3fd74) # 1c000f84 <test_inner_product_16+0x94>
1c001214:	001503d4 	move	$r20,$r30
1c001218:	53ff2bff 	b	-216(0xfffff28) # 1c001140 <test_inner_product_16+0x250>
1c00121c:	03400000 	andi	$r0,$r0,0x0

1c001220 <test_inner_product_u16>:
test_inner_product_u16():
1c001220:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c001224:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001228:	2980d077 	st.w	$r23,$r3,52(0x34)
1c00122c:	2980c078 	st.w	$r24,$r3,48(0x30)
1c001230:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c001234:	2980607e 	st.w	$r30,$r3,24(0x18)
1c001238:	2980507f 	st.w	$r31,$r3,20(0x14)
1c00123c:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001240:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c001244:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c001248:	2980907b 	st.w	$r27,$r3,36(0x24)
1c00124c:	2980807c 	st.w	$r28,$r3,32(0x20)
1c001250:	1c000ff8 	pcaddu12i	$r24,127(0x7f)
1c001254:	0282a318 	addi.w	$r24,$r24,168(0xa8)
1c001258:	0015009d 	move	$r29,$r4
1c00125c:	001500bf 	move	$r31,$r5
1c001260:	001500de 	move	$r30,$r6
1c001264:	001500f7 	move	$r23,$r7
1c001268:	54535800 	bl	21336(0x5358) # 1c0065c0 <get_clock>
1c00126c:	28800313 	ld.w	$r19,$r24,0
1c001270:	1c000fec 	pcaddu12i	$r12,127(0x7f)
1c001274:	2882618c 	ld.w	$r12,$r12,152(0x98)
1c001278:	29800184 	st.w	$r4,$r12,0
1c00127c:	00150016 	move	$r22,$r0
1c001280:	64022c13 	bge	$r0,$r19,556(0x22c) # 1c0014ac <test_inner_product_u16+0x28c>
1c001284:	004087dc 	slli.w	$r28,$r30,0x1
1c001288:	14000031 	lu12i.w	$r17,1(0x1)
1c00128c:	0015001b 	move	$r27,$r0
1c001290:	00150016 	move	$r22,$r0
1c001294:	001073bc 	add.w	$r28,$r29,$r28
1c001298:	1c000ff9 	pcaddu12i	$r25,127(0x7f)
1c00129c:	02815339 	addi.w	$r25,$r25,84(0x54)
1c0012a0:	03bd023a 	ori	$r26,$r17,0xf40
1c0012a4:	001503ed 	move	$r13,$r31
1c0012a8:	001503ac 	move	$r12,$r29
1c0012ac:	00150014 	move	$r20,$r0
1c0012b0:	5801f7c0 	beq	$r30,$r0,500(0x1f4) # 1c0014a4 <test_inner_product_u16+0x284>
1c0012b4:	00117790 	sub.w	$r16,$r28,$r29
1c0012b8:	02bffa01 	addi.w	$r1,$r16,-2(0xffe)
1c0012bc:	00448424 	srli.w	$r4,$r1,0x1
1c0012c0:	02800485 	addi.w	$r5,$r4,1(0x1)
1c0012c4:	03401ca6 	andi	$r6,$r5,0x7
1c0012c8:	580114c0 	beq	$r6,$r0,276(0x114) # 1c0013dc <test_inner_product_u16+0x1bc>
1c0012cc:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0012d0:	5800e8ce 	beq	$r6,$r14,232(0xe8) # 1c0013b8 <test_inner_product_u16+0x198>
1c0012d4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0012d8:	5800c0c7 	beq	$r6,$r7,192(0xc0) # 1c001398 <test_inner_product_u16+0x178>
1c0012dc:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c0012e0:	580098c8 	beq	$r6,$r8,152(0x98) # 1c001378 <test_inner_product_u16+0x158>
1c0012e4:	02801009 	addi.w	$r9,$r0,4(0x4)
1c0012e8:	580070c9 	beq	$r6,$r9,112(0x70) # 1c001358 <test_inner_product_u16+0x138>
1c0012ec:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c0012f0:	580048ca 	beq	$r6,$r10,72(0x48) # 1c001338 <test_inner_product_u16+0x118>
1c0012f4:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c0012f8:	580020cb 	beq	$r6,$r11,32(0x20) # 1c001318 <test_inner_product_u16+0xf8>
1c0012fc:	2a4003ad 	ld.hu	$r13,$r29,0
1c001300:	2a4003f4 	ld.hu	$r20,$r31,0
1c001304:	02800bac 	addi.w	$r12,$r29,2(0x2)
1c001308:	001c51af 	mul.w	$r15,$r13,$r20
1c00130c:	02800bed 	addi.w	$r13,$r31,2(0x2)
1c001310:	2980306f 	st.w	$r15,$r3,12(0xc)
1c001314:	2a403074 	ld.hu	$r20,$r3,12(0xc)
1c001318:	2a400192 	ld.hu	$r18,$r12,0
1c00131c:	2a4001b1 	ld.hu	$r17,$r13,0
1c001320:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001324:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c001328:	001c4650 	mul.w	$r16,$r18,$r17
1c00132c:	00104281 	add.w	$r1,$r20,$r16
1c001330:	29803061 	st.w	$r1,$r3,12(0xc)
1c001334:	2a403074 	ld.hu	$r20,$r3,12(0xc)
1c001338:	2a400184 	ld.hu	$r4,$r12,0
1c00133c:	2a4001a5 	ld.hu	$r5,$r13,0
1c001340:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001344:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c001348:	001c1486 	mul.w	$r6,$r4,$r5
1c00134c:	00101a8e 	add.w	$r14,$r20,$r6
1c001350:	2980306e 	st.w	$r14,$r3,12(0xc)
1c001354:	2a403074 	ld.hu	$r20,$r3,12(0xc)
1c001358:	2a400187 	ld.hu	$r7,$r12,0
1c00135c:	2a4001a8 	ld.hu	$r8,$r13,0
1c001360:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001364:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c001368:	001c20e9 	mul.w	$r9,$r7,$r8
1c00136c:	0010268a 	add.w	$r10,$r20,$r9
1c001370:	2980306a 	st.w	$r10,$r3,12(0xc)
1c001374:	2a403074 	ld.hu	$r20,$r3,12(0xc)
1c001378:	2a40018b 	ld.hu	$r11,$r12,0
1c00137c:	2a4001af 	ld.hu	$r15,$r13,0
1c001380:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c001384:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c001388:	001c3d72 	mul.w	$r18,$r11,$r15
1c00138c:	00104a94 	add.w	$r20,$r20,$r18
1c001390:	29803074 	st.w	$r20,$r3,12(0xc)
1c001394:	2a403074 	ld.hu	$r20,$r3,12(0xc)
1c001398:	2a400191 	ld.hu	$r17,$r12,0
1c00139c:	2a4001b0 	ld.hu	$r16,$r13,0
1c0013a0:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0013a4:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0013a8:	001c4221 	mul.w	$r1,$r17,$r16
1c0013ac:	00100684 	add.w	$r4,$r20,$r1
1c0013b0:	29803064 	st.w	$r4,$r3,12(0xc)
1c0013b4:	2a403074 	ld.hu	$r20,$r3,12(0xc)
1c0013b8:	2a400185 	ld.hu	$r5,$r12,0
1c0013bc:	2a4001a6 	ld.hu	$r6,$r13,0
1c0013c0:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0013c4:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0013c8:	001c18ae 	mul.w	$r14,$r5,$r6
1c0013cc:	00103a87 	add.w	$r7,$r20,$r14
1c0013d0:	29803067 	st.w	$r7,$r3,12(0xc)
1c0013d4:	2a403074 	ld.hu	$r20,$r3,12(0xc)
1c0013d8:	58009b8c 	beq	$r28,$r12,152(0x98) # 1c001470 <test_inner_product_u16+0x250>
1c0013dc:	2a40018b 	ld.hu	$r11,$r12,0
1c0013e0:	2a4001af 	ld.hu	$r15,$r13,0
1c0013e4:	2a4009b2 	ld.hu	$r18,$r13,2(0x2)
1c0013e8:	2a400989 	ld.hu	$r9,$r12,2(0x2)
1c0013ec:	2a401191 	ld.hu	$r17,$r12,4(0x4)
1c0013f0:	001c3d6e 	mul.w	$r14,$r11,$r15
1c0013f4:	2a4011a8 	ld.hu	$r8,$r13,4(0x4)
1c0013f8:	2a401981 	ld.hu	$r1,$r12,6(0x6)
1c0013fc:	2a4019a4 	ld.hu	$r4,$r13,6(0x6)
1c001400:	2a40218a 	ld.hu	$r10,$r12,8(0x8)
1c001404:	2a4021a6 	ld.hu	$r6,$r13,8(0x8)
1c001408:	2a402985 	ld.hu	$r5,$r12,10(0xa)
1c00140c:	2a4029b0 	ld.hu	$r16,$r13,10(0xa)
1c001410:	2a40318b 	ld.hu	$r11,$r12,12(0xc)
1c001414:	2a4031af 	ld.hu	$r15,$r13,12(0xc)
1c001418:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c00141c:	028041ad 	addi.w	$r13,$r13,16(0x10)
1c001420:	001c4929 	mul.w	$r9,$r9,$r18
1c001424:	00103a94 	add.w	$r20,$r20,$r14
1c001428:	001c2232 	mul.w	$r18,$r17,$r8
1c00142c:	0010268e 	add.w	$r14,$r20,$r9
1c001430:	001c1027 	mul.w	$r7,$r1,$r4
1c001434:	2a7ff981 	ld.hu	$r1,$r12,-2(0xffe)
1c001438:	001049c9 	add.w	$r9,$r14,$r18
1c00143c:	001c1951 	mul.w	$r17,$r10,$r6
1c001440:	2a7ff9aa 	ld.hu	$r10,$r13,-2(0xffe)
1c001444:	001c40a8 	mul.w	$r8,$r5,$r16
1c001448:	00101d25 	add.w	$r5,$r9,$r7
1c00144c:	001044b0 	add.w	$r16,$r5,$r17
1c001450:	001c3d64 	mul.w	$r4,$r11,$r15
1c001454:	00102212 	add.w	$r18,$r16,$r8
1c001458:	001c2826 	mul.w	$r6,$r1,$r10
1c00145c:	00101247 	add.w	$r7,$r18,$r4
1c001460:	001018eb 	add.w	$r11,$r7,$r6
1c001464:	2980306b 	st.w	$r11,$r3,12(0xc)
1c001468:	2a403074 	ld.hu	$r20,$r3,12(0xc)
1c00146c:	5fff738c 	bne	$r28,$r12,-144(0x3ff70) # 1c0013dc <test_inner_product_u16+0x1bc>
1c001470:	2a40032c 	ld.hu	$r12,$r25,0
1c001474:	001c318d 	mul.w	$r13,$r12,$r12
1c001478:	001c69af 	mul.w	$r15,$r13,$r26
1c00147c:	2980306f 	st.w	$r15,$r3,12(0xc)
1c001480:	2a403071 	ld.hu	$r17,$r3,12(0xc)
1c001484:	00114688 	sub.w	$r8,$r20,$r17
1c001488:	64001c08 	bge	$r0,$r8,28(0x1c) # 1c0014a4 <test_inner_product_u16+0x284>
1c00148c:	001502e5 	move	$r5,$r23
1c001490:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c001494:	02adc084 	addi.w	$r4,$r4,-1168(0xb70)
1c001498:	54491800 	bl	18712(0x4918) # 1c005db0 <printf>
1c00149c:	28800313 	ld.w	$r19,$r24,0
1c0014a0:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c0014a4:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c0014a8:	63fdff73 	blt	$r27,$r19,-516(0x3fdfc) # 1c0012a4 <test_inner_product_u16+0x84>
1c0014ac:	1c000ff9 	pcaddu12i	$r25,127(0x7f)
1c0014b0:	28b97339 	ld.w	$r25,$r25,-420(0xe5c)
1c0014b4:	54510c00 	bl	20748(0x510c) # 1c0065c0 <get_clock>
1c0014b8:	2880033a 	ld.w	$r26,$r25,0
1c0014bc:	00150098 	move	$r24,$r4
1c0014c0:	14001e9c 	lu12i.w	$r28,244(0xf4)
1c0014c4:	0389039d 	ori	$r29,$r28,0x240
1c0014c8:	1c000fff 	pcaddu12i	$r31,127(0x7f)
1c0014cc:	28b8f3ff 	ld.w	$r31,$r31,-452(0xe3c)
1c0014d0:	001503c6 	move	$r6,$r30
1c0014d4:	001502e5 	move	$r5,$r23
1c0014d8:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c0014dc:	02ace084 	addi.w	$r4,$r4,-1224(0xb38)
1c0014e0:	00116b17 	sub.w	$r23,$r24,$r26
1c0014e4:	298003f8 	st.w	$r24,$r31,0
1c0014e8:	002176e7 	div.wu	$r7,$r23,$r29
1c0014ec:	5c000ba0 	bne	$r29,$r0,8(0x8) # 1c0014f4 <test_inner_product_u16+0x2d4>
1c0014f0:	002a0007 	break	0x7
1c0014f4:	5448bc00 	bl	18620(0x48bc) # 1c005db0 <printf>
1c0014f8:	001502c4 	move	$r4,$r22
1c0014fc:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001500:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001504:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c001508:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c00150c:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c001510:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c001514:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c001518:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c00151c:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c001520:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c001524:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c001528:	02810063 	addi.w	$r3,$r3,64(0x40)
1c00152c:	4c000020 	jirl	$r0,$r1,0

1c001530 <test_inner_product_32>:
test_inner_product_32():
1c001530:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001534:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001538:	29809077 	st.w	$r23,$r3,36(0x24)
1c00153c:	29808078 	st.w	$r24,$r3,32(0x20)
1c001540:	2980307d 	st.w	$r29,$r3,12(0xc)
1c001544:	2980207e 	st.w	$r30,$r3,8(0x8)
1c001548:	2980107f 	st.w	$r31,$r3,4(0x4)
1c00154c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001550:	29807079 	st.w	$r25,$r3,28(0x1c)
1c001554:	2980607a 	st.w	$r26,$r3,24(0x18)
1c001558:	2980507b 	st.w	$r27,$r3,20(0x14)
1c00155c:	2980407c 	st.w	$r28,$r3,16(0x10)
1c001560:	1c000ff8 	pcaddu12i	$r24,127(0x7f)
1c001564:	02b66318 	addi.w	$r24,$r24,-616(0xd98)
1c001568:	0015009d 	move	$r29,$r4
1c00156c:	001500bf 	move	$r31,$r5
1c001570:	001500de 	move	$r30,$r6
1c001574:	001500f7 	move	$r23,$r7
1c001578:	54504800 	bl	20552(0x5048) # 1c0065c0 <get_clock>
1c00157c:	28800313 	ld.w	$r19,$r24,0
1c001580:	1c000fec 	pcaddu12i	$r12,127(0x7f)
1c001584:	28b6218c 	ld.w	$r12,$r12,-632(0xd88)
1c001588:	29800184 	st.w	$r4,$r12,0
1c00158c:	00150016 	move	$r22,$r0
1c001590:	6401c813 	bge	$r0,$r19,456(0x1c8) # 1c001758 <test_inner_product_32+0x228>
1c001594:	00408bdb 	slli.w	$r27,$r30,0x2
1c001598:	14000031 	lu12i.w	$r17,1(0x1)
1c00159c:	0015001c 	move	$r28,$r0
1c0015a0:	00150016 	move	$r22,$r0
1c0015a4:	00106fbb 	add.w	$r27,$r29,$r27
1c0015a8:	1c000ff9 	pcaddu12i	$r25,127(0x7f)
1c0015ac:	02b50339 	addi.w	$r25,$r25,-704(0xd40)
1c0015b0:	03bd023a 	ori	$r26,$r17,0xf40
1c0015b4:	001503ed 	move	$r13,$r31
1c0015b8:	001503ac 	move	$r12,$r29
1c0015bc:	00150014 	move	$r20,$r0
1c0015c0:	580253c0 	beq	$r30,$r0,592(0x250) # 1c001810 <test_inner_product_32+0x2e0>
1c0015c4:	00117770 	sub.w	$r16,$r27,$r29
1c0015c8:	02bff201 	addi.w	$r1,$r16,-4(0xffc)
1c0015cc:	00448824 	srli.w	$r4,$r1,0x2
1c0015d0:	02800485 	addi.w	$r5,$r4,1(0x1)
1c0015d4:	03401ca6 	andi	$r6,$r5,0x7
1c0015d8:	5800dcc0 	beq	$r6,$r0,220(0xdc) # 1c0016b4 <test_inner_product_32+0x184>
1c0015dc:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0015e0:	5800b8ce 	beq	$r6,$r14,184(0xb8) # 1c001698 <test_inner_product_32+0x168>
1c0015e4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0015e8:	580098c7 	beq	$r6,$r7,152(0x98) # 1c001680 <test_inner_product_32+0x150>
1c0015ec:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c0015f0:	580078c8 	beq	$r6,$r8,120(0x78) # 1c001668 <test_inner_product_32+0x138>
1c0015f4:	02801009 	addi.w	$r9,$r0,4(0x4)
1c0015f8:	580058c9 	beq	$r6,$r9,88(0x58) # 1c001650 <test_inner_product_32+0x120>
1c0015fc:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c001600:	580038ca 	beq	$r6,$r10,56(0x38) # 1c001638 <test_inner_product_32+0x108>
1c001604:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c001608:	580018cb 	beq	$r6,$r11,24(0x18) # 1c001620 <test_inner_product_32+0xf0>
1c00160c:	288003ed 	ld.w	$r13,$r31,0
1c001610:	288003af 	ld.w	$r15,$r29,0
1c001614:	028013ac 	addi.w	$r12,$r29,4(0x4)
1c001618:	001c35f4 	mul.w	$r20,$r15,$r13
1c00161c:	028013ed 	addi.w	$r13,$r31,4(0x4)
1c001620:	28800192 	ld.w	$r18,$r12,0
1c001624:	288001b1 	ld.w	$r17,$r13,0
1c001628:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00162c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c001630:	001c4650 	mul.w	$r16,$r18,$r17
1c001634:	00104294 	add.w	$r20,$r20,$r16
1c001638:	28800181 	ld.w	$r1,$r12,0
1c00163c:	288001a4 	ld.w	$r4,$r13,0
1c001640:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001644:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c001648:	001c1025 	mul.w	$r5,$r1,$r4
1c00164c:	00101694 	add.w	$r20,$r20,$r5
1c001650:	28800186 	ld.w	$r6,$r12,0
1c001654:	288001ae 	ld.w	$r14,$r13,0
1c001658:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00165c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c001660:	001c38c7 	mul.w	$r7,$r6,$r14
1c001664:	00101e94 	add.w	$r20,$r20,$r7
1c001668:	28800188 	ld.w	$r8,$r12,0
1c00166c:	288001a9 	ld.w	$r9,$r13,0
1c001670:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001674:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c001678:	001c250a 	mul.w	$r10,$r8,$r9
1c00167c:	00102a94 	add.w	$r20,$r20,$r10
1c001680:	2880018b 	ld.w	$r11,$r12,0
1c001684:	288001af 	ld.w	$r15,$r13,0
1c001688:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00168c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c001690:	001c3d72 	mul.w	$r18,$r11,$r15
1c001694:	00104a94 	add.w	$r20,$r20,$r18
1c001698:	28800191 	ld.w	$r17,$r12,0
1c00169c:	288001b0 	ld.w	$r16,$r13,0
1c0016a0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0016a4:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0016a8:	001c4221 	mul.w	$r1,$r17,$r16
1c0016ac:	00100694 	add.w	$r20,$r20,$r1
1c0016b0:	5800936c 	beq	$r27,$r12,144(0x90) # 1c001740 <test_inner_product_32+0x210>
1c0016b4:	28800185 	ld.w	$r5,$r12,0
1c0016b8:	288001a9 	ld.w	$r9,$r13,0
1c0016bc:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c0016c0:	288011b2 	ld.w	$r18,$r13,4(0x4)
1c0016c4:	2880218b 	ld.w	$r11,$r12,8(0x8)
1c0016c8:	001c24af 	mul.w	$r15,$r5,$r9
1c0016cc:	288021a8 	ld.w	$r8,$r13,8(0x8)
1c0016d0:	28803187 	ld.w	$r7,$r12,12(0xc)
1c0016d4:	288031a4 	ld.w	$r4,$r13,12(0xc)
1c0016d8:	2880418a 	ld.w	$r10,$r12,16(0x10)
1c0016dc:	288041a6 	ld.w	$r6,$r13,16(0x10)
1c0016e0:	28805181 	ld.w	$r1,$r12,20(0x14)
1c0016e4:	288051b0 	ld.w	$r16,$r13,20(0x14)
1c0016e8:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c0016ec:	028081ad 	addi.w	$r13,$r13,32(0x20)
1c0016f0:	001c49d1 	mul.w	$r17,$r14,$r18
1c0016f4:	28bfe18e 	ld.w	$r14,$r12,-8(0xff8)
1c0016f8:	00103e94 	add.w	$r20,$r20,$r15
1c0016fc:	001c2169 	mul.w	$r9,$r11,$r8
1c001700:	28bfe1ab 	ld.w	$r11,$r13,-8(0xff8)
1c001704:	0010468f 	add.w	$r15,$r20,$r17
1c001708:	001c10f2 	mul.w	$r18,$r7,$r4
1c00170c:	28bff187 	ld.w	$r7,$r12,-4(0xffc)
1c001710:	001025f1 	add.w	$r17,$r15,$r9
1c001714:	001c1948 	mul.w	$r8,$r10,$r6
1c001718:	28bff1aa 	ld.w	$r10,$r13,-4(0xffc)
1c00171c:	001c4025 	mul.w	$r5,$r1,$r16
1c001720:	00104a21 	add.w	$r1,$r17,$r18
1c001724:	00102030 	add.w	$r16,$r1,$r8
1c001728:	001c2dc4 	mul.w	$r4,$r14,$r11
1c00172c:	00101609 	add.w	$r9,$r16,$r5
1c001730:	001c28e6 	mul.w	$r6,$r7,$r10
1c001734:	00101132 	add.w	$r18,$r9,$r4
1c001738:	00101a54 	add.w	$r20,$r18,$r6
1c00173c:	5fff7b6c 	bne	$r27,$r12,-136(0x3ff78) # 1c0016b4 <test_inner_product_32+0x184>
1c001740:	2880032c 	ld.w	$r12,$r25,0
1c001744:	001c318d 	mul.w	$r13,$r12,$r12
1c001748:	001c69ae 	mul.w	$r14,$r13,$r26
1c00174c:	5c0095d4 	bne	$r14,$r20,148(0x94) # 1c0017e0 <test_inner_product_32+0x2b0>
1c001750:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c001754:	63fe6393 	blt	$r28,$r19,-416(0x3fe60) # 1c0015b4 <test_inner_product_32+0x84>
1c001758:	1c000ff8 	pcaddu12i	$r24,127(0x7f)
1c00175c:	28aec318 	ld.w	$r24,$r24,-1104(0xbb0)
1c001760:	544e6000 	bl	20064(0x4e60) # 1c0065c0 <get_clock>
1c001764:	28800319 	ld.w	$r25,$r24,0
1c001768:	00150093 	move	$r19,$r4
1c00176c:	14001e9a 	lu12i.w	$r26,244(0xf4)
1c001770:	0389035b 	ori	$r27,$r26,0x240
1c001774:	1c000ffd 	pcaddu12i	$r29,127(0x7f)
1c001778:	28ae43bd 	ld.w	$r29,$r29,-1136(0xb90)
1c00177c:	001503c6 	move	$r6,$r30
1c001780:	001502e5 	move	$r5,$r23
1c001784:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c001788:	02a23084 	addi.w	$r4,$r4,-1908(0x88c)
1c00178c:	00116677 	sub.w	$r23,$r19,$r25
1c001790:	00216ee7 	div.wu	$r7,$r23,$r27
1c001794:	5c000b60 	bne	$r27,$r0,8(0x8) # 1c00179c <test_inner_product_32+0x26c>
1c001798:	002a0007 	break	0x7
1c00179c:	298003b3 	st.w	$r19,$r29,0
1c0017a0:	54461000 	bl	17936(0x4610) # 1c005db0 <printf>
1c0017a4:	001502c4 	move	$r4,$r22
1c0017a8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0017ac:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0017b0:	28809077 	ld.w	$r23,$r3,36(0x24)
1c0017b4:	28808078 	ld.w	$r24,$r3,32(0x20)
1c0017b8:	28807079 	ld.w	$r25,$r3,28(0x1c)
1c0017bc:	2880607a 	ld.w	$r26,$r3,24(0x18)
1c0017c0:	2880507b 	ld.w	$r27,$r3,20(0x14)
1c0017c4:	2880407c 	ld.w	$r28,$r3,16(0x10)
1c0017c8:	2880307d 	ld.w	$r29,$r3,12(0xc)
1c0017cc:	2880207e 	ld.w	$r30,$r3,8(0x8)
1c0017d0:	2880107f 	ld.w	$r31,$r3,4(0x4)
1c0017d4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0017d8:	4c000020 	jirl	$r0,$r1,0
1c0017dc:	03400000 	andi	$r0,$r0,0x0
1c0017e0:	001502e5 	move	$r5,$r23
1c0017e4:	1c000fe4 	pcaddu12i	$r4,127(0x7f)
1c0017e8:	02a07084 	addi.w	$r4,$r4,-2020(0x81c)
1c0017ec:	5445c400 	bl	17860(0x45c4) # 1c005db0 <printf>
1c0017f0:	28800313 	ld.w	$r19,$r24,0
1c0017f4:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c0017f8:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c0017fc:	67ff5f93 	bge	$r28,$r19,-164(0x3ff5c) # 1c001758 <test_inner_product_32+0x228>
1c001800:	001503ed 	move	$r13,$r31
1c001804:	001503ac 	move	$r12,$r29
1c001808:	00150014 	move	$r20,$r0
1c00180c:	5ffdbbc0 	bne	$r30,$r0,-584(0x3fdb8) # 1c0015c4 <test_inner_product_32+0x94>
1c001810:	001503d4 	move	$r20,$r30
1c001814:	53ff2fff 	b	-212(0xfffff2c) # 1c001740 <test_inner_product_32+0x210>
1c001818:	03400000 	andi	$r0,$r0,0x0
1c00181c:	03400000 	andi	$r0,$r0,0x0

1c001820 <test_inner_product_u32>:
test_inner_product_u32():
1c001820:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001824:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001828:	29809077 	st.w	$r23,$r3,36(0x24)
1c00182c:	29808078 	st.w	$r24,$r3,32(0x20)
1c001830:	2980307d 	st.w	$r29,$r3,12(0xc)
1c001834:	2980207e 	st.w	$r30,$r3,8(0x8)
1c001838:	2980107f 	st.w	$r31,$r3,4(0x4)
1c00183c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001840:	29807079 	st.w	$r25,$r3,28(0x1c)
1c001844:	2980607a 	st.w	$r26,$r3,24(0x18)
1c001848:	2980507b 	st.w	$r27,$r3,20(0x14)
1c00184c:	2980407c 	st.w	$r28,$r3,16(0x10)
1c001850:	1c000ff8 	pcaddu12i	$r24,127(0x7f)
1c001854:	02aaa318 	addi.w	$r24,$r24,-1368(0xaa8)
1c001858:	0015009d 	move	$r29,$r4
1c00185c:	001500bf 	move	$r31,$r5
1c001860:	001500de 	move	$r30,$r6
1c001864:	001500f7 	move	$r23,$r7
1c001868:	544d5800 	bl	19800(0x4d58) # 1c0065c0 <get_clock>
1c00186c:	28800313 	ld.w	$r19,$r24,0
1c001870:	1c000fec 	pcaddu12i	$r12,127(0x7f)
1c001874:	28aa618c 	ld.w	$r12,$r12,-1384(0xa98)
1c001878:	29800184 	st.w	$r4,$r12,0
1c00187c:	00150016 	move	$r22,$r0
1c001880:	6401e013 	bge	$r0,$r19,480(0x1e0) # 1c001a60 <test_inner_product_u32+0x240>
1c001884:	00408bdb 	slli.w	$r27,$r30,0x2
1c001888:	14000031 	lu12i.w	$r17,1(0x1)
1c00188c:	0015001c 	move	$r28,$r0
1c001890:	00150016 	move	$r22,$r0
1c001894:	00106fbb 	add.w	$r27,$r29,$r27
1c001898:	1c000ff9 	pcaddu12i	$r25,127(0x7f)
1c00189c:	02a94339 	addi.w	$r25,$r25,-1456(0xa50)
1c0018a0:	03bd023a 	ori	$r26,$r17,0xf40
1c0018a4:	001503ed 	move	$r13,$r31
1c0018a8:	001503ac 	move	$r12,$r29
1c0018ac:	00150014 	move	$r20,$r0
1c0018b0:	58024fc0 	beq	$r30,$r0,588(0x24c) # 1c001afc <test_inner_product_u32+0x2dc>
1c0018b4:	00117770 	sub.w	$r16,$r27,$r29
1c0018b8:	02bff201 	addi.w	$r1,$r16,-4(0xffc)
1c0018bc:	00448824 	srli.w	$r4,$r1,0x2
1c0018c0:	02800485 	addi.w	$r5,$r4,1(0x1)
1c0018c4:	03401ca6 	andi	$r6,$r5,0x7
1c0018c8:	5800dcc0 	beq	$r6,$r0,220(0xdc) # 1c0019a4 <test_inner_product_u32+0x184>
1c0018cc:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0018d0:	5800b8ce 	beq	$r6,$r14,184(0xb8) # 1c001988 <test_inner_product_u32+0x168>
1c0018d4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0018d8:	580098c7 	beq	$r6,$r7,152(0x98) # 1c001970 <test_inner_product_u32+0x150>
1c0018dc:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c0018e0:	580078c8 	beq	$r6,$r8,120(0x78) # 1c001958 <test_inner_product_u32+0x138>
1c0018e4:	02801009 	addi.w	$r9,$r0,4(0x4)
1c0018e8:	580058c9 	beq	$r6,$r9,88(0x58) # 1c001940 <test_inner_product_u32+0x120>
1c0018ec:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c0018f0:	580038ca 	beq	$r6,$r10,56(0x38) # 1c001928 <test_inner_product_u32+0x108>
1c0018f4:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c0018f8:	580018cb 	beq	$r6,$r11,24(0x18) # 1c001910 <test_inner_product_u32+0xf0>
1c0018fc:	288003ed 	ld.w	$r13,$r31,0
1c001900:	288003af 	ld.w	$r15,$r29,0
1c001904:	028013ac 	addi.w	$r12,$r29,4(0x4)
1c001908:	001c35f4 	mul.w	$r20,$r15,$r13
1c00190c:	028013ed 	addi.w	$r13,$r31,4(0x4)
1c001910:	28800192 	ld.w	$r18,$r12,0
1c001914:	288001b1 	ld.w	$r17,$r13,0
1c001918:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00191c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c001920:	001c4650 	mul.w	$r16,$r18,$r17
1c001924:	00104294 	add.w	$r20,$r20,$r16
1c001928:	28800181 	ld.w	$r1,$r12,0
1c00192c:	288001a4 	ld.w	$r4,$r13,0
1c001930:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001934:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c001938:	001c1025 	mul.w	$r5,$r1,$r4
1c00193c:	00101694 	add.w	$r20,$r20,$r5
1c001940:	28800186 	ld.w	$r6,$r12,0
1c001944:	288001ae 	ld.w	$r14,$r13,0
1c001948:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00194c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c001950:	001c38c7 	mul.w	$r7,$r6,$r14
1c001954:	00101e94 	add.w	$r20,$r20,$r7
1c001958:	28800188 	ld.w	$r8,$r12,0
1c00195c:	288001a9 	ld.w	$r9,$r13,0
1c001960:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001964:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c001968:	001c250a 	mul.w	$r10,$r8,$r9
1c00196c:	00102a94 	add.w	$r20,$r20,$r10
1c001970:	2880018b 	ld.w	$r11,$r12,0
1c001974:	288001af 	ld.w	$r15,$r13,0
1c001978:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00197c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c001980:	001c3d72 	mul.w	$r18,$r11,$r15
1c001984:	00104a94 	add.w	$r20,$r20,$r18
1c001988:	28800191 	ld.w	$r17,$r12,0
1c00198c:	288001b0 	ld.w	$r16,$r13,0
1c001990:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001994:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c001998:	001c4221 	mul.w	$r1,$r17,$r16
1c00199c:	00100694 	add.w	$r20,$r20,$r1
1c0019a0:	5800936c 	beq	$r27,$r12,144(0x90) # 1c001a30 <test_inner_product_u32+0x210>
1c0019a4:	28800185 	ld.w	$r5,$r12,0
1c0019a8:	288001a9 	ld.w	$r9,$r13,0
1c0019ac:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c0019b0:	288011b2 	ld.w	$r18,$r13,4(0x4)
1c0019b4:	2880218b 	ld.w	$r11,$r12,8(0x8)
1c0019b8:	001c24af 	mul.w	$r15,$r5,$r9
1c0019bc:	288021a8 	ld.w	$r8,$r13,8(0x8)
1c0019c0:	28803187 	ld.w	$r7,$r12,12(0xc)
1c0019c4:	288031a4 	ld.w	$r4,$r13,12(0xc)
1c0019c8:	2880418a 	ld.w	$r10,$r12,16(0x10)
1c0019cc:	288041a6 	ld.w	$r6,$r13,16(0x10)
1c0019d0:	28805181 	ld.w	$r1,$r12,20(0x14)
1c0019d4:	288051b0 	ld.w	$r16,$r13,20(0x14)
1c0019d8:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c0019dc:	028081ad 	addi.w	$r13,$r13,32(0x20)
1c0019e0:	001c49d1 	mul.w	$r17,$r14,$r18
1c0019e4:	28bfe18e 	ld.w	$r14,$r12,-8(0xff8)
1c0019e8:	00103e94 	add.w	$r20,$r20,$r15
1c0019ec:	001c2169 	mul.w	$r9,$r11,$r8
1c0019f0:	28bfe1ab 	ld.w	$r11,$r13,-8(0xff8)
1c0019f4:	0010468f 	add.w	$r15,$r20,$r17
1c0019f8:	001c10f2 	mul.w	$r18,$r7,$r4
1c0019fc:	28bff187 	ld.w	$r7,$r12,-4(0xffc)
1c001a00:	001025f1 	add.w	$r17,$r15,$r9
1c001a04:	001c1948 	mul.w	$r8,$r10,$r6
1c001a08:	28bff1aa 	ld.w	$r10,$r13,-4(0xffc)
1c001a0c:	001c4025 	mul.w	$r5,$r1,$r16
1c001a10:	00104a21 	add.w	$r1,$r17,$r18
1c001a14:	00102030 	add.w	$r16,$r1,$r8
1c001a18:	001c2dc4 	mul.w	$r4,$r14,$r11
1c001a1c:	00101609 	add.w	$r9,$r16,$r5
1c001a20:	001c28e6 	mul.w	$r6,$r7,$r10
1c001a24:	00101132 	add.w	$r18,$r9,$r4
1c001a28:	00101a54 	add.w	$r20,$r18,$r6
1c001a2c:	5fff7b6c 	bne	$r27,$r12,-136(0x3ff78) # 1c0019a4 <test_inner_product_u32+0x184>
1c001a30:	2880032c 	ld.w	$r12,$r25,0
1c001a34:	001c318d 	mul.w	$r13,$r12,$r12
1c001a38:	001c69ae 	mul.w	$r14,$r13,$r26
1c001a3c:	5800a9d4 	beq	$r14,$r20,168(0xa8) # 1c001ae4 <test_inner_product_u32+0x2c4>
1c001a40:	001502e5 	move	$r5,$r23
1c001a44:	1c000fc4 	pcaddu12i	$r4,126(0x7e)
1c001a48:	0296f084 	addi.w	$r4,$r4,1468(0x5bc)
1c001a4c:	54436400 	bl	17252(0x4364) # 1c005db0 <printf>
1c001a50:	28800313 	ld.w	$r19,$r24,0
1c001a54:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c001a58:	028006d6 	addi.w	$r22,$r22,1(0x1)
1c001a5c:	63fe4b93 	blt	$r28,$r19,-440(0x3fe48) # 1c0018a4 <test_inner_product_u32+0x84>
1c001a60:	1c000ff8 	pcaddu12i	$r24,127(0x7f)
1c001a64:	28a2a318 	ld.w	$r24,$r24,-1880(0x8a8)
1c001a68:	544b5800 	bl	19288(0x4b58) # 1c0065c0 <get_clock>
1c001a6c:	28800319 	ld.w	$r25,$r24,0
1c001a70:	00150093 	move	$r19,$r4
1c001a74:	14001e9a 	lu12i.w	$r26,244(0xf4)
1c001a78:	0389035b 	ori	$r27,$r26,0x240
1c001a7c:	1c000ffd 	pcaddu12i	$r29,127(0x7f)
1c001a80:	28a223bd 	ld.w	$r29,$r29,-1912(0x888)
1c001a84:	001503c6 	move	$r6,$r30
1c001a88:	001502e5 	move	$r5,$r23
1c001a8c:	1c000fc4 	pcaddu12i	$r4,126(0x7e)
1c001a90:	02961084 	addi.w	$r4,$r4,1412(0x584)
1c001a94:	00116677 	sub.w	$r23,$r19,$r25
1c001a98:	00216ee7 	div.wu	$r7,$r23,$r27
1c001a9c:	5c000b60 	bne	$r27,$r0,8(0x8) # 1c001aa4 <test_inner_product_u32+0x284>
1c001aa0:	002a0007 	break	0x7
1c001aa4:	298003b3 	st.w	$r19,$r29,0
1c001aa8:	54430800 	bl	17160(0x4308) # 1c005db0 <printf>
1c001aac:	001502c4 	move	$r4,$r22
1c001ab0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001ab4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001ab8:	28809077 	ld.w	$r23,$r3,36(0x24)
1c001abc:	28808078 	ld.w	$r24,$r3,32(0x20)
1c001ac0:	28807079 	ld.w	$r25,$r3,28(0x1c)
1c001ac4:	2880607a 	ld.w	$r26,$r3,24(0x18)
1c001ac8:	2880507b 	ld.w	$r27,$r3,20(0x14)
1c001acc:	2880407c 	ld.w	$r28,$r3,16(0x10)
1c001ad0:	2880307d 	ld.w	$r29,$r3,12(0xc)
1c001ad4:	2880207e 	ld.w	$r30,$r3,8(0x8)
1c001ad8:	2880107f 	ld.w	$r31,$r3,4(0x4)
1c001adc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001ae0:	4c000020 	jirl	$r0,$r1,0
1c001ae4:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c001ae8:	67ff7b93 	bge	$r28,$r19,-136(0x3ff78) # 1c001a60 <test_inner_product_u32+0x240>
1c001aec:	001503ed 	move	$r13,$r31
1c001af0:	001503ac 	move	$r12,$r29
1c001af4:	00150014 	move	$r20,$r0
1c001af8:	5ffdbfc0 	bne	$r30,$r0,-580(0x3fdbc) # 1c0018b4 <test_inner_product_u32+0x94>
1c001afc:	001503d4 	move	$r20,$r30
1c001b00:	53ff33ff 	b	-208(0xfffff30) # 1c001a30 <test_inner_product_u32+0x210>
1c001b04:	03400000 	andi	$r0,$r0,0x0
1c001b08:	03400000 	andi	$r0,$r0,0x0
1c001b0c:	03400000 	andi	$r0,$r0,0x0

1c001b10 <inner_product_TestOneType_8>:
inner_product_TestOneType_8():
1c001b10:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c001b14:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001b18:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001b1c:	2980d077 	st.w	$r23,$r3,52(0x34)
1c001b20:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001b24:	2980c078 	st.w	$r24,$r3,48(0x30)
1c001b28:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c001b2c:	2980807c 	st.w	$r28,$r3,32(0x20)
1c001b30:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c001b34:	2980507f 	st.w	$r31,$r3,20(0x14)
1c001b38:	15ffffcc 	lu12i.w	$r12,-2(0xffffe)
1c001b3c:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c001b40:	2980907b 	st.w	$r27,$r3,36(0x24)
1c001b44:	2980607e 	st.w	$r30,$r3,24(0x18)
1c001b48:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001b4c:	029ea3ff 	addi.w	$r31,$r31,1960(0x7a8)
1c001b50:	03830181 	ori	$r1,$r12,0xc0
1c001b54:	280003f9 	ld.b	$r25,$r31,0
1c001b58:	00100463 	add.w	$r3,$r3,$r1
1c001b5c:	1400003c 	lu12i.w	$r28,1(0x1)
1c001b60:	0015007d 	move	$r29,$r3
1c001b64:	03bd0386 	ori	$r6,$r28,0xf40
1c001b68:	00100463 	add.w	$r3,$r3,$r1
1c001b6c:	00150325 	move	$r5,$r25
1c001b70:	001503a4 	move	$r4,$r29
1c001b74:	54484c00 	bl	18508(0x484c) # 1c0063c0 <memset>
1c001b78:	00150325 	move	$r5,$r25
1c001b7c:	03bd0386 	ori	$r6,$r28,0xf40
1c001b80:	00150064 	move	$r4,$r3
1c001b84:	54483c00 	bl	18492(0x483c) # 1c0063c0 <memset>
1c001b88:	544a3800 	bl	19000(0x4a38) # 1c0065c0 <get_clock>
1c001b8c:	1c000fd8 	pcaddu12i	$r24,126(0x7e)
1c001b90:	029db318 	addi.w	$r24,$r24,1900(0x76c)
1c001b94:	28800312 	ld.w	$r18,$r24,0
1c001b98:	1c000fc5 	pcaddu12i	$r5,126(0x7e)
1c001b9c:	289dc0a5 	ld.w	$r5,$r5,1904(0x770)
1c001ba0:	298000a4 	st.w	$r4,$r5,0
1c001ba4:	00150017 	move	$r23,$r0
1c001ba8:	64022812 	bge	$r0,$r18,552(0x228) # 1c001dd0 <inner_product_TestOneType_8+0x2c0>
1c001bac:	03bd0384 	ori	$r4,$r28,0xf40
1c001bb0:	0015007e 	move	$r30,$r3
1c001bb4:	0015001b 	move	$r27,$r0
1c001bb8:	1c000fda 	pcaddu12i	$r26,126(0x7e)
1c001bbc:	0291c35a 	addi.w	$r26,$r26,1136(0x470)
1c001bc0:	1c000fd9 	pcaddu12i	$r25,126(0x7e)
1c001bc4:	02910339 	addi.w	$r25,$r25,1088(0x440)
1c001bc8:	001013bc 	add.w	$r28,$r29,$r4
1c001bcc:	03400000 	andi	$r0,$r0,0x0
1c001bd0:	0011778e 	sub.w	$r14,$r28,$r29
1c001bd4:	03401dc6 	andi	$r6,$r14,0x7
1c001bd8:	001503ac 	move	$r12,$r29
1c001bdc:	001503cd 	move	$r13,$r30
1c001be0:	00150011 	move	$r17,$r0
1c001be4:	580130c0 	beq	$r6,$r0,304(0x130) # 1c001d14 <inner_product_TestOneType_8+0x204>
1c001be8:	0280040f 	addi.w	$r15,$r0,1(0x1)
1c001bec:	580100cf 	beq	$r6,$r15,256(0x100) # 1c001cec <inner_product_TestOneType_8+0x1dc>
1c001bf0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c001bf4:	5800d4c7 	beq	$r6,$r7,212(0xd4) # 1c001cc8 <inner_product_TestOneType_8+0x1b8>
1c001bf8:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c001bfc:	5800a8c8 	beq	$r6,$r8,168(0xa8) # 1c001ca4 <inner_product_TestOneType_8+0x194>
1c001c00:	02801009 	addi.w	$r9,$r0,4(0x4)
1c001c04:	58007cc9 	beq	$r6,$r9,124(0x7c) # 1c001c80 <inner_product_TestOneType_8+0x170>
1c001c08:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c001c0c:	580050ca 	beq	$r6,$r10,80(0x50) # 1c001c5c <inner_product_TestOneType_8+0x14c>
1c001c10:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c001c14:	580024cb 	beq	$r6,$r11,36(0x24) # 1c001c38 <inner_product_TestOneType_8+0x128>
1c001c18:	2a0003b1 	ld.bu	$r17,$r29,0
1c001c1c:	2a0003d0 	ld.bu	$r16,$r30,0
1c001c20:	028007ac 	addi.w	$r12,$r29,1(0x1)
1c001c24:	028007cd 	addi.w	$r13,$r30,1(0x1)
1c001c28:	001c422e 	mul.w	$r14,$r17,$r16
1c001c2c:	293f2ece 	st.b	$r14,$r22,-53(0xfcb)
1c001c30:	283f2ed1 	ld.b	$r17,$r22,-53(0xfcb)
1c001c34:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c001c38:	2a000194 	ld.bu	$r20,$r12,0
1c001c3c:	2a0001a1 	ld.bu	$r1,$r13,0
1c001c40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c44:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001c48:	001c0685 	mul.w	$r5,$r20,$r1
1c001c4c:	001044ae 	add.w	$r14,$r5,$r17
1c001c50:	293f2ece 	st.b	$r14,$r22,-53(0xfcb)
1c001c54:	283f2ed1 	ld.b	$r17,$r22,-53(0xfcb)
1c001c58:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c001c5c:	2a000186 	ld.bu	$r6,$r12,0
1c001c60:	2a0001af 	ld.bu	$r15,$r13,0
1c001c64:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c68:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001c6c:	001c3cc7 	mul.w	$r7,$r6,$r15
1c001c70:	001044ee 	add.w	$r14,$r7,$r17
1c001c74:	293f2ece 	st.b	$r14,$r22,-53(0xfcb)
1c001c78:	283f2ed1 	ld.b	$r17,$r22,-53(0xfcb)
1c001c7c:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c001c80:	2a000189 	ld.bu	$r9,$r12,0
1c001c84:	2a0001aa 	ld.bu	$r10,$r13,0
1c001c88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c8c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001c90:	001c292b 	mul.w	$r11,$r9,$r10
1c001c94:	0010456e 	add.w	$r14,$r11,$r17
1c001c98:	293f2ece 	st.b	$r14,$r22,-53(0xfcb)
1c001c9c:	283f2ed1 	ld.b	$r17,$r22,-53(0xfcb)
1c001ca0:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c001ca4:	2a000193 	ld.bu	$r19,$r12,0
1c001ca8:	2a0001b4 	ld.bu	$r20,$r13,0
1c001cac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001cb0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001cb4:	001c5261 	mul.w	$r1,$r19,$r20
1c001cb8:	0010442e 	add.w	$r14,$r1,$r17
1c001cbc:	293f2ece 	st.b	$r14,$r22,-53(0xfcb)
1c001cc0:	283f2ed1 	ld.b	$r17,$r22,-53(0xfcb)
1c001cc4:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c001cc8:	2a000185 	ld.bu	$r5,$r12,0
1c001ccc:	2a0001a4 	ld.bu	$r4,$r13,0
1c001cd0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001cd4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001cd8:	001c10a6 	mul.w	$r6,$r5,$r4
1c001cdc:	001044ce 	add.w	$r14,$r6,$r17
1c001ce0:	293f2ece 	st.b	$r14,$r22,-53(0xfcb)
1c001ce4:	283f2ed1 	ld.b	$r17,$r22,-53(0xfcb)
1c001ce8:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c001cec:	2a000187 	ld.bu	$r7,$r12,0
1c001cf0:	2a0001a8 	ld.bu	$r8,$r13,0
1c001cf4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001cf8:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001cfc:	001c20e9 	mul.w	$r9,$r7,$r8
1c001d00:	0010452e 	add.w	$r14,$r9,$r17
1c001d04:	293f2ece 	st.b	$r14,$r22,-53(0xfcb)
1c001d08:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c001d0c:	283f2ed1 	ld.b	$r17,$r22,-53(0xfcb)
1c001d10:	58009d9c 	beq	$r12,$r28,156(0x9c) # 1c001dac <inner_product_TestOneType_8+0x29c>
1c001d14:	2a000190 	ld.bu	$r16,$r12,0
1c001d18:	2a0001af 	ld.bu	$r15,$r13,0
1c001d1c:	2a000588 	ld.bu	$r8,$r12,1(0x1)
1c001d20:	2a0005b4 	ld.bu	$r20,$r13,1(0x1)
1c001d24:	2a000989 	ld.bu	$r9,$r12,2(0x2)
1c001d28:	001c3e0e 	mul.w	$r14,$r16,$r15
1c001d2c:	2a0009a7 	ld.bu	$r7,$r13,2(0x2)
1c001d30:	2a000d86 	ld.bu	$r6,$r12,3(0x3)
1c001d34:	2a000db3 	ld.bu	$r19,$r13,3(0x3)
1c001d38:	2a0011a5 	ld.bu	$r5,$r13,4(0x4)
1c001d3c:	2a001181 	ld.bu	$r1,$r12,4(0x4)
1c001d40:	2a00158b 	ld.bu	$r11,$r12,5(0x5)
1c001d44:	2a0015a4 	ld.bu	$r4,$r13,5(0x5)
1c001d48:	2a00198a 	ld.bu	$r10,$r12,6(0x6)
1c001d4c:	2a0019af 	ld.bu	$r15,$r13,6(0x6)
1c001d50:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c001d54:	028021ad 	addi.w	$r13,$r13,8(0x8)
1c001d58:	001c5110 	mul.w	$r16,$r8,$r20
1c001d5c:	001045d1 	add.w	$r17,$r14,$r17
1c001d60:	001c1d28 	mul.w	$r8,$r9,$r7
1c001d64:	2a3ffd89 	ld.bu	$r9,$r12,-1(0xfff)
1c001d68:	001c4cc7 	mul.w	$r7,$r6,$r19
1c001d6c:	2a3ffda6 	ld.bu	$r6,$r13,-1(0xfff)
1c001d70:	001c1421 	mul.w	$r1,$r1,$r5
1c001d74:	001c1165 	mul.w	$r5,$r11,$r4
1c001d78:	0010422b 	add.w	$r11,$r17,$r16
1c001d7c:	00102164 	add.w	$r4,$r11,$r8
1c001d80:	00101c8e 	add.w	$r14,$r4,$r7
1c001d84:	001005d0 	add.w	$r16,$r14,$r1
1c001d88:	001c3d54 	mul.w	$r20,$r10,$r15
1c001d8c:	0010160a 	add.w	$r10,$r16,$r5
1c001d90:	001c1933 	mul.w	$r19,$r9,$r6
1c001d94:	0010514f 	add.w	$r15,$r10,$r20
1c001d98:	00104de8 	add.w	$r8,$r15,$r19
1c001d9c:	293f2ec8 	st.b	$r8,$r22,-53(0xfcb)
1c001da0:	29bf32c8 	st.w	$r8,$r22,-52(0xfcc)
1c001da4:	283f2ed1 	ld.b	$r17,$r22,-53(0xfcb)
1c001da8:	5fff6d9c 	bne	$r12,$r28,-148(0x3ff6c) # 1c001d14 <inner_product_TestOneType_8+0x204>
1c001dac:	2a0003ec 	ld.bu	$r12,$r31,0
1c001db0:	001c318d 	mul.w	$r13,$r12,$r12
1c001db4:	004099a7 	slli.w	$r7,$r13,0x6
1c001db8:	293f2ec7 	st.b	$r7,$r22,-53(0xfcb)
1c001dbc:	283f2ec9 	ld.b	$r9,$r22,-53(0xfcb)
1c001dc0:	29bf32c7 	st.w	$r7,$r22,-52(0xfcc)
1c001dc4:	5c009e29 	bne	$r17,$r9,156(0x9c) # 1c001e60 <inner_product_TestOneType_8+0x350>
1c001dc8:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c001dcc:	63fe0772 	blt	$r27,$r18,-508(0x3fe04) # 1c001bd0 <inner_product_TestOneType_8+0xc0>
1c001dd0:	1c000fd8 	pcaddu12i	$r24,126(0x7e)
1c001dd4:	2894e318 	ld.w	$r24,$r24,1336(0x538)
1c001dd8:	5447e800 	bl	18408(0x47e8) # 1c0065c0 <get_clock>
1c001ddc:	2880031d 	ld.w	$r29,$r24,0
1c001de0:	0015009f 	move	$r31,$r4
1c001de4:	14001e9e 	lu12i.w	$r30,244(0xf4)
1c001de8:	1400003a 	lu12i.w	$r26,1(0x1)
1c001dec:	001177f4 	sub.w	$r20,$r31,$r29
1c001df0:	038903d9 	ori	$r25,$r30,0x240
1c001df4:	1c000fdc 	pcaddu12i	$r28,126(0x7e)
1c001df8:	2894439c 	ld.w	$r28,$r28,1296(0x510)
1c001dfc:	00216687 	div.wu	$r7,$r20,$r25
1c001e00:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c001e08 <inner_product_TestOneType_8+0x2f8>
1c001e04:	002a0007 	break	0x7
1c001e08:	03bd0346 	ori	$r6,$r26,0xf40
1c001e0c:	1c000fc5 	pcaddu12i	$r5,126(0x7e)
1c001e10:	028870a5 	addi.w	$r5,$r5,540(0x21c)
1c001e14:	1c000fc4 	pcaddu12i	$r4,126(0x7e)
1c001e18:	0287f084 	addi.w	$r4,$r4,508(0x1fc)
1c001e1c:	2980039f 	st.w	$r31,$r28,0
1c001e20:	543f9000 	bl	16272(0x3f90) # 1c005db0 <printf>
1c001e24:	02bf02c3 	addi.w	$r3,$r22,-64(0xfc0)
1c001e28:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001e2c:	001502e4 	move	$r4,$r23
1c001e30:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001e34:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c001e38:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c001e3c:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c001e40:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c001e44:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c001e48:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c001e4c:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c001e50:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c001e54:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c001e58:	02810063 	addi.w	$r3,$r3,64(0x40)
1c001e5c:	4c000020 	jirl	$r0,$r1,0
1c001e60:	00150345 	move	$r5,$r26
1c001e64:	00150324 	move	$r4,$r25
1c001e68:	543f4800 	bl	16200(0x3f48) # 1c005db0 <printf>
1c001e6c:	28800312 	ld.w	$r18,$r24,0
1c001e70:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c001e74:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c001e78:	63fd5b72 	blt	$r27,$r18,-680(0x3fd58) # 1c001bd0 <inner_product_TestOneType_8+0xc0>
1c001e7c:	53ff57ff 	b	-172(0xfffff54) # 1c001dd0 <inner_product_TestOneType_8+0x2c0>

1c001e80 <inner_product_TestOneType_u8>:
inner_product_TestOneType_u8():
1c001e80:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c001e84:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001e88:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001e8c:	2980d077 	st.w	$r23,$r3,52(0x34)
1c001e90:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001e94:	2980c078 	st.w	$r24,$r3,48(0x30)
1c001e98:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c001e9c:	2980807c 	st.w	$r28,$r3,32(0x20)
1c001ea0:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c001ea4:	2980507f 	st.w	$r31,$r3,20(0x14)
1c001ea8:	15ffffcc 	lu12i.w	$r12,-2(0xffffe)
1c001eac:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c001eb0:	2980907b 	st.w	$r27,$r3,36(0x24)
1c001eb4:	2980607e 	st.w	$r30,$r3,24(0x18)
1c001eb8:	1c000fdf 	pcaddu12i	$r31,126(0x7e)
1c001ebc:	0290e3ff 	addi.w	$r31,$r31,1080(0x438)
1c001ec0:	03830181 	ori	$r1,$r12,0xc0
1c001ec4:	2a0003f9 	ld.bu	$r25,$r31,0
1c001ec8:	00100463 	add.w	$r3,$r3,$r1
1c001ecc:	1400003c 	lu12i.w	$r28,1(0x1)
1c001ed0:	0015007d 	move	$r29,$r3
1c001ed4:	03bd0386 	ori	$r6,$r28,0xf40
1c001ed8:	00100463 	add.w	$r3,$r3,$r1
1c001edc:	00150325 	move	$r5,$r25
1c001ee0:	001503a4 	move	$r4,$r29
1c001ee4:	5444dc00 	bl	17628(0x44dc) # 1c0063c0 <memset>
1c001ee8:	00150325 	move	$r5,$r25
1c001eec:	03bd0386 	ori	$r6,$r28,0xf40
1c001ef0:	00150064 	move	$r4,$r3
1c001ef4:	5444cc00 	bl	17612(0x44cc) # 1c0063c0 <memset>
1c001ef8:	5446c800 	bl	18120(0x46c8) # 1c0065c0 <get_clock>
1c001efc:	1c000fd8 	pcaddu12i	$r24,126(0x7e)
1c001f00:	028ff318 	addi.w	$r24,$r24,1020(0x3fc)
1c001f04:	28800312 	ld.w	$r18,$r24,0
1c001f08:	1c000fc5 	pcaddu12i	$r5,126(0x7e)
1c001f0c:	289000a5 	ld.w	$r5,$r5,1024(0x400)
1c001f10:	298000a4 	st.w	$r4,$r5,0
1c001f14:	00150017 	move	$r23,$r0
1c001f18:	64022c12 	bge	$r0,$r18,556(0x22c) # 1c002144 <inner_product_TestOneType_u8+0x2c4>
1c001f1c:	03bd0384 	ori	$r4,$r28,0xf40
1c001f20:	0015007e 	move	$r30,$r3
1c001f24:	0015001b 	move	$r27,$r0
1c001f28:	1c000fda 	pcaddu12i	$r26,126(0x7e)
1c001f2c:	0284835a 	addi.w	$r26,$r26,288(0x120)
1c001f30:	1c000fd9 	pcaddu12i	$r25,126(0x7e)
1c001f34:	02834339 	addi.w	$r25,$r25,208(0xd0)
1c001f38:	001013bc 	add.w	$r28,$r29,$r4
1c001f3c:	03400000 	andi	$r0,$r0,0x0
1c001f40:	0011778e 	sub.w	$r14,$r28,$r29
1c001f44:	03401dc6 	andi	$r6,$r14,0x7
1c001f48:	001503ac 	move	$r12,$r29
1c001f4c:	001503cd 	move	$r13,$r30
1c001f50:	00150011 	move	$r17,$r0
1c001f54:	580130c0 	beq	$r6,$r0,304(0x130) # 1c002084 <inner_product_TestOneType_u8+0x204>
1c001f58:	0280040f 	addi.w	$r15,$r0,1(0x1)
1c001f5c:	580100cf 	beq	$r6,$r15,256(0x100) # 1c00205c <inner_product_TestOneType_u8+0x1dc>
1c001f60:	02800807 	addi.w	$r7,$r0,2(0x2)
1c001f64:	5800d4c7 	beq	$r6,$r7,212(0xd4) # 1c002038 <inner_product_TestOneType_u8+0x1b8>
1c001f68:	02800c08 	addi.w	$r8,$r0,3(0x3)
1c001f6c:	5800a8c8 	beq	$r6,$r8,168(0xa8) # 1c002014 <inner_product_TestOneType_u8+0x194>
1c001f70:	02801009 	addi.w	$r9,$r0,4(0x4)
1c001f74:	58007cc9 	beq	$r6,$r9,124(0x7c) # 1c001ff0 <inner_product_TestOneType_u8+0x170>
1c001f78:	0280140a 	addi.w	$r10,$r0,5(0x5)
1c001f7c:	580050ca 	beq	$r6,$r10,80(0x50) # 1c001fcc <inner_product_TestOneType_u8+0x14c>
1c001f80:	0280180b 	addi.w	$r11,$r0,6(0x6)
1c001f84:	580024cb 	beq	$r6,$r11,36(0x24) # 1c001fa8 <inner_product_TestOneType_u8+0x128>
1c001f88:	2a0003b1 	ld.bu	$r17,$r29,0
1c001f8c:	2a0003d0 	ld.bu	$r16,$r30,0
1c001f90:	028007ac 	addi.w	$r12,$r29,1(0x1)
1c001f94:	028007cd 	addi.w	$r13,$r30,1(0x1)
1c001f98:	001c422e 	mul.w	$r14,$r17,$r16
1c001f9c:	293f2ece 	st.b	$r14,$r22,-53(0xfcb)
1c001fa0:	2a3f2ed1 	ld.bu	$r17,$r22,-53(0xfcb)
1c001fa4:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c001fa8:	2a000194 	ld.bu	$r20,$r12,0
1c001fac:	2a0001a1 	ld.bu	$r1,$r13,0
1c001fb0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fb4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001fb8:	001c0685 	mul.w	$r5,$r20,$r1
1c001fbc:	0010162e 	add.w	$r14,$r17,$r5
1c001fc0:	293f2ece 	st.b	$r14,$r22,-53(0xfcb)
1c001fc4:	2a3f2ed1 	ld.bu	$r17,$r22,-53(0xfcb)
1c001fc8:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c001fcc:	2a000186 	ld.bu	$r6,$r12,0
1c001fd0:	2a0001af 	ld.bu	$r15,$r13,0
1c001fd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fd8:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c001fdc:	001c3cc7 	mul.w	$r7,$r6,$r15
1c001fe0:	00101e2e 	add.w	$r14,$r17,$r7
1c001fe4:	293f2ece 	st.b	$r14,$r22,-53(0xfcb)
1c001fe8:	2a3f2ed1 	ld.bu	$r17,$r22,-53(0xfcb)
1c001fec:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c001ff0:	2a000189 	ld.bu	$r9,$r12,0
1c001ff4:	2a0001aa 	ld.bu	$r10,$r13,0
1c001ff8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ffc:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002000:	001c292b 	mul.w	$r11,$r9,$r10
1c002004:	00102e2e 	add.w	$r14,$r17,$r11
1c002008:	293f2ece 	st.b	$r14,$r22,-53(0xfcb)
1c00200c:	2a3f2ed1 	ld.bu	$r17,$r22,-53(0xfcb)
1c002010:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c002014:	2a000193 	ld.bu	$r19,$r12,0
1c002018:	2a0001b4 	ld.bu	$r20,$r13,0
1c00201c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002020:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002024:	001c5261 	mul.w	$r1,$r19,$r20
1c002028:	0010062e 	add.w	$r14,$r17,$r1
1c00202c:	293f2ece 	st.b	$r14,$r22,-53(0xfcb)
1c002030:	2a3f2ed1 	ld.bu	$r17,$r22,-53(0xfcb)
1c002034:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c002038:	2a000185 	ld.bu	$r5,$r12,0
1c00203c:	2a0001a4 	ld.bu	$r4,$r13,0
1c002040:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002044:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c002048:	001c10a6 	mul.w	$r6,$r5,$r4
1c00204c:	00101a2e 	add.w	$r14,$r17,$r6
1c002050:	293f2ece 	st.b	$r14,$r22,-53(0xfcb)
1c002054:	2a3f2ed1 	ld.bu	$r17,$r22,-53(0xfcb)
1c002058:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c00205c:	2a000187 	ld.bu	$r7,$r12,0
1c002060:	2a0001a8 	ld.bu	$r8,$r13,0
1c002064:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002068:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c00206c:	001c20e9 	mul.w	$r9,$r7,$r8
1c002070:	0010262e 	add.w	$r14,$r17,$r9
1c002074:	293f2ece 	st.b	$r14,$r22,-53(0xfcb)
1c002078:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c00207c:	2a3f2ed1 	ld.bu	$r17,$r22,-53(0xfcb)
1c002080:	58009d9c 	beq	$r12,$r28,156(0x9c) # 1c00211c <inner_product_TestOneType_u8+0x29c>
1c002084:	2a000190 	ld.bu	$r16,$r12,0
1c002088:	2a0001af 	ld.bu	$r15,$r13,0
1c00208c:	2a000588 	ld.bu	$r8,$r12,1(0x1)
1c002090:	2a0005b4 	ld.bu	$r20,$r13,1(0x1)
1c002094:	2a000989 	ld.bu	$r9,$r12,2(0x2)
1c002098:	001c3e0e 	mul.w	$r14,$r16,$r15
1c00209c:	2a0009a7 	ld.bu	$r7,$r13,2(0x2)
1c0020a0:	2a000d86 	ld.bu	$r6,$r12,3(0x3)
1c0020a4:	2a000db3 	ld.bu	$r19,$r13,3(0x3)
1c0020a8:	2a0011a5 	ld.bu	$r5,$r13,4(0x4)
1c0020ac:	2a001181 	ld.bu	$r1,$r12,4(0x4)
1c0020b0:	2a00158b 	ld.bu	$r11,$r12,5(0x5)
1c0020b4:	2a0015a4 	ld.bu	$r4,$r13,5(0x5)
1c0020b8:	2a00198a 	ld.bu	$r10,$r12,6(0x6)
1c0020bc:	2a0019af 	ld.bu	$r15,$r13,6(0x6)
1c0020c0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0020c4:	028021ad 	addi.w	$r13,$r13,8(0x8)
1c0020c8:	001c5110 	mul.w	$r16,$r8,$r20
1c0020cc:	00103a31 	add.w	$r17,$r17,$r14
1c0020d0:	001c1d28 	mul.w	$r8,$r9,$r7
1c0020d4:	2a3ffd89 	ld.bu	$r9,$r12,-1(0xfff)
1c0020d8:	001c4cc7 	mul.w	$r7,$r6,$r19
1c0020dc:	2a3ffda6 	ld.bu	$r6,$r13,-1(0xfff)
1c0020e0:	001c1421 	mul.w	$r1,$r1,$r5
1c0020e4:	001c1165 	mul.w	$r5,$r11,$r4
1c0020e8:	0010422b 	add.w	$r11,$r17,$r16
1c0020ec:	00102164 	add.w	$r4,$r11,$r8
1c0020f0:	00101c8e 	add.w	$r14,$r4,$r7
1c0020f4:	001005d0 	add.w	$r16,$r14,$r1
1c0020f8:	001c3d54 	mul.w	$r20,$r10,$r15
1c0020fc:	0010160a 	add.w	$r10,$r16,$r5
1c002100:	001c1933 	mul.w	$r19,$r9,$r6
1c002104:	0010514f 	add.w	$r15,$r10,$r20
1c002108:	00104de8 	add.w	$r8,$r15,$r19
1c00210c:	293f2ec8 	st.b	$r8,$r22,-53(0xfcb)
1c002110:	29bf32c8 	st.w	$r8,$r22,-52(0xfcc)
1c002114:	2a3f2ed1 	ld.bu	$r17,$r22,-53(0xfcb)
1c002118:	5fff6d9c 	bne	$r12,$r28,-148(0x3ff6c) # 1c002084 <inner_product_TestOneType_u8+0x204>
1c00211c:	2a0003ec 	ld.bu	$r12,$r31,0
1c002120:	001c318d 	mul.w	$r13,$r12,$r12
1c002124:	004099ac 	slli.w	$r12,$r13,0x6
1c002128:	293f2ecc 	st.b	$r12,$r22,-53(0xfcb)
1c00212c:	2a3f2ec9 	ld.bu	$r9,$r22,-53(0xfcb)
1c002130:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c002134:	00112626 	sub.w	$r6,$r17,$r9
1c002138:	60009c06 	blt	$r0,$r6,156(0x9c) # 1c0021d4 <inner_product_TestOneType_u8+0x354>
1c00213c:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c002140:	63fe0372 	blt	$r27,$r18,-512(0x3fe00) # 1c001f40 <inner_product_TestOneType_u8+0xc0>
1c002144:	1c000fd8 	pcaddu12i	$r24,126(0x7e)
1c002148:	28871318 	ld.w	$r24,$r24,452(0x1c4)
1c00214c:	54447400 	bl	17524(0x4474) # 1c0065c0 <get_clock>
1c002150:	2880031d 	ld.w	$r29,$r24,0
1c002154:	0015009f 	move	$r31,$r4
1c002158:	14001e9e 	lu12i.w	$r30,244(0xf4)
1c00215c:	1400003a 	lu12i.w	$r26,1(0x1)
1c002160:	001177f4 	sub.w	$r20,$r31,$r29
1c002164:	038903d9 	ori	$r25,$r30,0x240
1c002168:	1c000fdc 	pcaddu12i	$r28,126(0x7e)
1c00216c:	2886739c 	ld.w	$r28,$r28,412(0x19c)
1c002170:	00216687 	div.wu	$r7,$r20,$r25
1c002174:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c00217c <inner_product_TestOneType_u8+0x2fc>
1c002178:	002a0007 	break	0x7
1c00217c:	03bd0346 	ori	$r6,$r26,0xf40
1c002180:	1c000fc5 	pcaddu12i	$r5,126(0x7e)
1c002184:	02bb20a5 	addi.w	$r5,$r5,-312(0xec8)
1c002188:	1c000fc4 	pcaddu12i	$r4,126(0x7e)
1c00218c:	02ba2084 	addi.w	$r4,$r4,-376(0xe88)
1c002190:	2980039f 	st.w	$r31,$r28,0
1c002194:	543c1c00 	bl	15388(0x3c1c) # 1c005db0 <printf>
1c002198:	02bf02c3 	addi.w	$r3,$r22,-64(0xfc0)
1c00219c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0021a0:	001502e4 	move	$r4,$r23
1c0021a4:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0021a8:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c0021ac:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c0021b0:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c0021b4:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c0021b8:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c0021bc:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c0021c0:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c0021c4:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c0021c8:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c0021cc:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0021d0:	4c000020 	jirl	$r0,$r1,0
1c0021d4:	00150345 	move	$r5,$r26
1c0021d8:	00150324 	move	$r4,$r25
1c0021dc:	543bd400 	bl	15316(0x3bd4) # 1c005db0 <printf>
1c0021e0:	28800312 	ld.w	$r18,$r24,0
1c0021e4:	0280077b 	addi.w	$r27,$r27,1(0x1)
1c0021e8:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c0021ec:	63fd5772 	blt	$r27,$r18,-684(0x3fd54) # 1c001f40 <inner_product_TestOneType_u8+0xc0>
1c0021f0:	53ff57ff 	b	-172(0xfffff54) # 1c002144 <inner_product_TestOneType_u8+0x2c4>
1c0021f4:	03400000 	andi	$r0,$r0,0x0
1c0021f8:	03400000 	andi	$r0,$r0,0x0
1c0021fc:	03400000 	andi	$r0,$r0,0x0

1c002200 <inner_product_TestOneType_16>:
inner_product_TestOneType_16():
1c002200:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c002204:	15ffff8c 	lu12i.w	$r12,-4(0xffffc)
1c002208:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00220c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c002210:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c002214:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c002218:	2980607e 	st.w	$r30,$r3,24(0x18)
1c00221c:	2980d077 	st.w	$r23,$r3,52(0x34)
1c002220:	2980c078 	st.w	$r24,$r3,48(0x30)
1c002224:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c002228:	2980907b 	st.w	$r27,$r3,36(0x24)
1c00222c:	2980807c 	st.w	$r28,$r3,32(0x20)
1c002230:	2980507f 	st.w	$r31,$r3,20(0x14)
1c002234:	02810076 	addi.w	$r22,$r3,64(0x40)
1c002238:	03860181 	ori	$r1,$r12,0x180
1c00223c:	00100463 	add.w	$r3,$r3,$r1
1c002240:	0015007d 	move	$r29,$r3
1c002244:	004487b0 	srli.w	$r16,$r29,0x1
1c002248:	1c000fda 	pcaddu12i	$r26,126(0x7e)
1c00224c:	0282935a 	addi.w	$r26,$r26,164(0xa4)
1c002250:	00100463 	add.w	$r3,$r3,$r1
1c002254:	03400604 	andi	$r4,$r16,0x1
1c002258:	2840034e 	ld.h	$r14,$r26,0
1c00225c:	0015007e 	move	$r30,$r3
1c002260:	001503b3 	move	$r19,$r29
1c002264:	58000c80 	beq	$r4,$r0,12(0xc) # 1c002270 <inner_product_TestOneType_16+0x70>
1c002268:	02800bb3 	addi.w	$r19,$r29,2(0x2)
1c00226c:	294003ae 	st.h	$r14,$r29,0
1c002270:	14000025 	lu12i.w	$r5,1(0x1)
1c002274:	03bd00a6 	ori	$r6,$r5,0xf40
1c002278:	001110c7 	sub.w	$r7,$r6,$r4
1c00227c:	004484f1 	srli.w	$r17,$r7,0x1
1c002280:	00408a2a 	slli.w	$r10,$r17,0x2
1c002284:	297f2ace 	st.h	$r14,$r22,-54(0xfca)
1c002288:	2a7f2ac9 	ld.hu	$r9,$r22,-54(0xfca)
1c00228c:	02bff152 	addi.w	$r18,$r10,-4(0xffc)
1c002290:	00448a54 	srli.w	$r20,$r18,0x2
1c002294:	0040848d 	slli.w	$r13,$r4,0x1
1c002298:	02800698 	addi.w	$r24,$r20,1(0x1)
1c00229c:	001037a5 	add.w	$r5,$r29,$r13
1c0022a0:	0040c12f 	slli.w	$r15,$r9,0x10
1c0022a4:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c0022a8:	03401f19 	andi	$r25,$r24,0x7
1c0022ac:	00153d2b 	or	$r11,$r9,$r15
1c0022b0:	00101557 	add.w	$r23,$r10,$r5
1c0022b4:	58007320 	beq	$r25,$r0,112(0x70) # 1c002324 <inner_product_TestOneType_16+0x124>
1c0022b8:	0280041b 	addi.w	$r27,$r0,1(0x1)
1c0022bc:	58005f3b 	beq	$r25,$r27,92(0x5c) # 1c002318 <inner_product_TestOneType_16+0x118>
1c0022c0:	0280081c 	addi.w	$r28,$r0,2(0x2)
1c0022c4:	58004f3c 	beq	$r25,$r28,76(0x4c) # 1c002310 <inner_product_TestOneType_16+0x110>
1c0022c8:	02800c1f 	addi.w	$r31,$r0,3(0x3)
1c0022cc:	58003f3f 	beq	$r25,$r31,60(0x3c) # 1c002308 <inner_product_TestOneType_16+0x108>
1c0022d0:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0022d4:	58002f2c 	beq	$r25,$r12,44(0x2c) # 1c002300 <inner_product_TestOneType_16+0x100>
1c0022d8:	02801401 	addi.w	$r1,$r0,5(0x5)
1c0022dc:	58001f21 	beq	$r25,$r1,28(0x1c) # 1c0022f8 <inner_product_TestOneType_16+0xf8>
1c0022e0:	02801810 	addi.w	$r16,$r0,6(0x6)
1c0022e4:	58000f30 	beq	$r25,$r16,12(0xc) # 1c0022f0 <inner_product_TestOneType_16+0xf0>
1c0022e8:	298000ab 	st.w	$r11,$r5,0
1c0022ec:	028010a5 	addi.w	$r5,$r5,4(0x4)
1c0022f0:	298000ab 	st.w	$r11,$r5,0
1c0022f4:	028010a5 	addi.w	$r5,$r5,4(0x4)
1c0022f8:	298000ab 	st.w	$r11,$r5,0
1c0022fc:	028010a5 	addi.w	$r5,$r5,4(0x4)
1c002300:	298000ab 	st.w	$r11,$r5,0
1c002304:	028010a5 	addi.w	$r5,$r5,4(0x4)
1c002308:	298000ab 	st.w	$r11,$r5,0
1c00230c:	028010a5 	addi.w	$r5,$r5,4(0x4)
1c002310:	298000ab 	st.w	$r11,$r5,0
1c002314:	028010a5 	addi.w	$r5,$r5,4(0x4)
1c002318:	298000ab 	st.w	$r11,$r5,0
1c00231c:	028010a5 	addi.w	$r5,$r5,4(0x4)
1c002320:	58002cb7 	beq	$r5,$r23,44(0x2c) # 1c00234c <inner_product_TestOneType_16+0x14c>
1c002324:	298000ab 	st.w	$r11,$r5,0
1c002328:	298010ab 	st.w	$r11,$r5,4(0x4)
1c00232c:	298020ab 	st.w	$r11,$r5,8(0x8)
1c002330:	298030ab 	st.w	$r11,$r5,12(0xc)
1c002334:	298040ab 	st.w	$r11,$r5,16(0x10)
1c002338:	298050ab 	st.w	$r11,$r5,20(0x14)
1c00233c:	298060ab 	st.w	$r11,$r5,24(0x18)
1c002340:	298070ab 	st.w	$r11,$r5,28(0x1c)
1c002344:	028080a5 	addi.w	$r5,$r5,32(0x20)
1c002348:	5fffdcb7 	bne	$r5,$r23,-36(0x3ffdc) # 1c002324 <inner_product_TestOneType_16+0x124>
1c00234c:	02bff804 	addi.w	$r4,$r0,-2(0xffe)
1c002350:	001490e6 	and	$r6,$r7,$r4
1c002354:	004084cd 	slli.w	$r13,$r6,0x1
1c002358:	00103673 	add.w	$r19,$r19,$r13
1c00235c:	580008e6 	beq	$r7,$r6,8(0x8) # 1c002364 <inner_product_TestOneType_16+0x164>
1c002360:	2940026e 	st.h	$r14,$r19,0
1c002364:	004487c7 	srli.w	$r7,$r30,0x1
1c002368:	034004f1 	andi	$r17,$r7,0x1
1c00236c:	001503c8 	move	$r8,$r30
1c002370:	58000e20 	beq	$r17,$r0,12(0xc) # 1c00237c <inner_product_TestOneType_16+0x17c>
1c002374:	02800bc8 	addi.w	$r8,$r30,2(0x2)
1c002378:	294003ce 	st.h	$r14,$r30,0
1c00237c:	14000029 	lu12i.w	$r9,1(0x1)
1c002380:	03bd012a 	ori	$r10,$r9,0xf40
1c002384:	00114552 	sub.w	$r18,$r10,$r17
1c002388:	00448657 	srli.w	$r23,$r18,0x1
1c00238c:	00408af4 	slli.w	$r20,$r23,0x2
1c002390:	02bff298 	addi.w	$r24,$r20,-4(0xffc)
1c002394:	00448b1b 	srli.w	$r27,$r24,0x2
1c002398:	0040862f 	slli.w	$r15,$r17,0x1
1c00239c:	0280077c 	addi.w	$r28,$r27,1(0x1)
1c0023a0:	00103fcd 	add.w	$r13,$r30,$r15
1c0023a4:	03401f9f 	andi	$r31,$r28,0x7
1c0023a8:	00103699 	add.w	$r25,$r20,$r13
1c0023ac:	580073e0 	beq	$r31,$r0,112(0x70) # 1c00241c <inner_product_TestOneType_16+0x21c>
1c0023b0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0023b4:	58005fec 	beq	$r31,$r12,92(0x5c) # 1c002410 <inner_product_TestOneType_16+0x210>
1c0023b8:	02800801 	addi.w	$r1,$r0,2(0x2)
1c0023bc:	58004fe1 	beq	$r31,$r1,76(0x4c) # 1c002408 <inner_product_TestOneType_16+0x208>
1c0023c0:	02800c10 	addi.w	$r16,$r0,3(0x3)
1c0023c4:	58003ff0 	beq	$r31,$r16,60(0x3c) # 1c002400 <inner_product_TestOneType_16+0x200>
1c0023c8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0023cc:	58002fe5 	beq	$r31,$r5,44(0x2c) # 1c0023f8 <inner_product_TestOneType_16+0x1f8>
1c0023d0:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0023d4:	58001fe4 	beq	$r31,$r4,28(0x1c) # 1c0023f0 <inner_product_TestOneType_16+0x1f0>
1c0023d8:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0023dc:	58000fe6 	beq	$r31,$r6,12(0xc) # 1c0023e8 <inner_product_TestOneType_16+0x1e8>
1c0023e0:	298001ab 	st.w	$r11,$r13,0
1c0023e4:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0023e8:	298001ab 	st.w	$r11,$r13,0
1c0023ec:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0023f0:	298001ab 	st.w	$r11,$r13,0
1c0023f4:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0023f8:	298001ab 	st.w	$r11,$r13,0
1c0023fc:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c002400:	298001ab 	st.w	$r11,$r13,0
1c002404:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c002408:	298001ab 	st.w	$r11,$r13,0
1c00240c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c002410:	298001ab 	st.w	$r11,$r13,0
1c002414:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c002418:	58002f2d 	beq	$r25,$r13,44(0x2c) # 1c002444 <inner_product_TestOneType_16+0x244>
1c00241c:	298001ab 	st.w	$r11,$r13,0
1c002420:	298011ab 	st.w	$r11,$r13,4(0x4)
1c002424:	298021ab 	st.w	$r11,$r13,8(0x8)
1c002428:	298031ab 	st.w	$r11,$r13,12(0xc)
1c00242c:	298041ab 	st.w	$r11,$r13,16(0x10)
1c002430:	298051ab 	st.w	$r11,$r13,20(0x14)
1c002434:	298061ab 	st.w	$r11,$r13,24(0x18)
1c002438:	298071ab 	st.w	$r11,$r13,28(0x1c)
1c00243c:	028081ad 	addi.w	$r13,$r13,32(0x20)
1c002440:	5fffdf2d 	bne	$r25,$r13,-36(0x3ffdc) # 1c00241c <inner_product_TestOneType_16+0x21c>
1c002444:	02bff80b 	addi.w	$r11,$r0,-2(0xffe)
1c002448:	0014ae53 	and	$r19,$r18,$r11
1c00244c:	00408667 	slli.w	$r7,$r19,0x1
1c002450:	00101d11 	add.w	$r17,$r8,$r7
1c002454:	58000a72 	beq	$r19,$r18,8(0x8) # 1c00245c <inner_product_TestOneType_16+0x25c>
1c002458:	2940022e 	st.h	$r14,$r17,0
1c00245c:	54416400 	bl	16740(0x4164) # 1c0065c0 <get_clock>
1c002460:	1c000fd7 	pcaddu12i	$r23,126(0x7e)
1c002464:	02ba62f7 	addi.w	$r23,$r23,-360(0xe98)
1c002468:	288002f3 	ld.w	$r19,$r23,0
1c00246c:	1c000fce 	pcaddu12i	$r14,126(0x7e)
1c002470:	28ba71ce 	ld.w	$r14,$r14,-356(0xe9c)
1c002474:	298001c4 	st.w	$r4,$r14,0
1c002478:	0015001f 	move	$r31,$r0
1c00247c:	64023013 	bge	$r0,$r19,560(0x230) # 1c0026ac <inner_product_TestOneType_16+0x4ac>
1c002480:	14000068 	lu12i.w	$r8,3(0x3)
1c002484:	14000029 	lu12i.w	$r9,1(0x1)
1c002488:	03ba010f 	ori	$r15,$r8,0xe80
1c00248c:	0015001c 	move	$r28,$r0
1c002490:	1c000fd9 	pcaddu12i	$r25,126(0x7e)
1c002494:	02af6339 	addi.w	$r25,$r25,-1064(0xbd8)
1c002498:	03bd0138 	ori	$r24,$r9,0xf40
1c00249c:	00103fbb 	add.w	$r27,$r29,$r15
1c0024a0:	0011776a 	sub.w	$r10,$r27,$r29
1c0024a4:	02bff952 	addi.w	$r18,$r10,-2(0xffe)
1c0024a8:	00448641 	srli.w	$r1,$r18,0x1
1c0024ac:	02800430 	addi.w	$r16,$r1,1(0x1)
1c0024b0:	03401e05 	andi	$r5,$r16,0x7
1c0024b4:	001503cd 	move	$r13,$r30
1c0024b8:	001503ac 	move	$r12,$r29
1c0024bc:	00150014 	move	$r20,$r0
1c0024c0:	580130a0 	beq	$r5,$r0,304(0x130) # 1c0025f0 <inner_product_TestOneType_16+0x3f0>
1c0024c4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0024c8:	580100a4 	beq	$r5,$r4,256(0x100) # 1c0025c8 <inner_product_TestOneType_16+0x3c8>
1c0024cc:	02800806 	addi.w	$r6,$r0,2(0x2)
1c0024d0:	5800d4a6 	beq	$r5,$r6,212(0xd4) # 1c0025a4 <inner_product_TestOneType_16+0x3a4>
1c0024d4:	02800c0b 	addi.w	$r11,$r0,3(0x3)
1c0024d8:	5800a8ab 	beq	$r5,$r11,168(0xa8) # 1c002580 <inner_product_TestOneType_16+0x380>
1c0024dc:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0024e0:	58007ca7 	beq	$r5,$r7,124(0x7c) # 1c00255c <inner_product_TestOneType_16+0x35c>
1c0024e4:	02801411 	addi.w	$r17,$r0,5(0x5)
1c0024e8:	580050b1 	beq	$r5,$r17,80(0x50) # 1c002538 <inner_product_TestOneType_16+0x338>
1c0024ec:	0280180e 	addi.w	$r14,$r0,6(0x6)
1c0024f0:	580024ae 	beq	$r5,$r14,36(0x24) # 1c002514 <inner_product_TestOneType_16+0x314>
1c0024f4:	2a4003d4 	ld.hu	$r20,$r30,0
1c0024f8:	2a4003a8 	ld.hu	$r8,$r29,0
1c0024fc:	02800bac 	addi.w	$r12,$r29,2(0x2)
1c002500:	02800bcd 	addi.w	$r13,$r30,2(0x2)
1c002504:	001c510e 	mul.w	$r14,$r8,$r20
1c002508:	297f2ace 	st.h	$r14,$r22,-54(0xfca)
1c00250c:	287f2ad4 	ld.h	$r20,$r22,-54(0xfca)
1c002510:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c002514:	2a40018f 	ld.hu	$r15,$r12,0
1c002518:	2a4001aa 	ld.hu	$r10,$r13,0
1c00251c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002520:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c002524:	001c29f2 	mul.w	$r18,$r15,$r10
1c002528:	0010524e 	add.w	$r14,$r18,$r20
1c00252c:	297f2ace 	st.h	$r14,$r22,-54(0xfca)
1c002530:	287f2ad4 	ld.h	$r20,$r22,-54(0xfca)
1c002534:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c002538:	2a400190 	ld.hu	$r16,$r12,0
1c00253c:	2a4001a5 	ld.hu	$r5,$r13,0
1c002540:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002544:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c002548:	001c1604 	mul.w	$r4,$r16,$r5
1c00254c:	0010508e 	add.w	$r14,$r4,$r20
1c002550:	297f2ace 	st.h	$r14,$r22,-54(0xfca)
1c002554:	287f2ad4 	ld.h	$r20,$r22,-54(0xfca)
1c002558:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c00255c:	2a40018b 	ld.hu	$r11,$r12,0
1c002560:	2a4001a7 	ld.hu	$r7,$r13,0
1c002564:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002568:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c00256c:	001c1d71 	mul.w	$r17,$r11,$r7
1c002570:	0010522e 	add.w	$r14,$r17,$r20
1c002574:	297f2ace 	st.h	$r14,$r22,-54(0xfca)
1c002578:	287f2ad4 	ld.h	$r20,$r22,-54(0xfca)
1c00257c:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c002580:	2a400189 	ld.hu	$r9,$r12,0
1c002584:	2a4001af 	ld.hu	$r15,$r13,0
1c002588:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00258c:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c002590:	001c3d2a 	mul.w	$r10,$r9,$r15
1c002594:	0010514e 	add.w	$r14,$r10,$r20
1c002598:	297f2ace 	st.h	$r14,$r22,-54(0xfca)
1c00259c:	287f2ad4 	ld.h	$r20,$r22,-54(0xfca)
1c0025a0:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c0025a4:	2a400192 	ld.hu	$r18,$r12,0
1c0025a8:	2a4001a1 	ld.hu	$r1,$r13,0
1c0025ac:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0025b0:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0025b4:	001c0650 	mul.w	$r16,$r18,$r1
1c0025b8:	0010520e 	add.w	$r14,$r16,$r20
1c0025bc:	297f2ace 	st.h	$r14,$r22,-54(0xfca)
1c0025c0:	287f2ad4 	ld.h	$r20,$r22,-54(0xfca)
1c0025c4:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c0025c8:	2a400184 	ld.hu	$r4,$r12,0
1c0025cc:	2a4001a6 	ld.hu	$r6,$r13,0
1c0025d0:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0025d4:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c0025d8:	001c188b 	mul.w	$r11,$r4,$r6
1c0025dc:	0010516e 	add.w	$r14,$r11,$r20
1c0025e0:	297f2ace 	st.h	$r14,$r22,-54(0xfca)
1c0025e4:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c0025e8:	287f2ad4 	ld.h	$r20,$r22,-54(0xfca)
1c0025ec:	58009f6c 	beq	$r27,$r12,156(0x9c) # 1c002688 <inner_product_TestOneType_16+0x488>
1c0025f0:	2a4001af 	ld.hu	$r15,$r13,0
1c0025f4:	2a400191 	ld.hu	$r17,$r12,0
1c0025f8:	2a4009b2 	ld.hu	$r18,$r13,2(0x2)
1c0025fc:	2a400989 	ld.hu	$r9,$r12,2(0x2)
1c002600:	2a40118a 	ld.hu	$r10,$r12,4(0x4)
1c002604:	001c3e31 	mul.w	$r17,$r17,$r15
1c002608:	2a4011a8 	ld.hu	$r8,$r13,4(0x4)
1c00260c:	2a401987 	ld.hu	$r7,$r12,6(0x6)
1c002610:	2a4019b0 	ld.hu	$r16,$r13,6(0x6)
1c002614:	2a40218e 	ld.hu	$r14,$r12,8(0x8)
1c002618:	2a4021a6 	ld.hu	$r6,$r13,8(0x8)
1c00261c:	2a402981 	ld.hu	$r1,$r12,10(0xa)
1c002620:	2a4029a5 	ld.hu	$r5,$r13,10(0xa)
1c002624:	2a40318b 	ld.hu	$r11,$r12,12(0xc)
1c002628:	2a4031a4 	ld.hu	$r4,$r13,12(0xc)
1c00262c:	2a40398f 	ld.hu	$r15,$r12,14(0xe)
1c002630:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c002634:	028041ad 	addi.w	$r13,$r13,16(0x10)
1c002638:	001c4929 	mul.w	$r9,$r9,$r18
1c00263c:	00105234 	add.w	$r20,$r17,$r20
1c002640:	001c2152 	mul.w	$r18,$r10,$r8
1c002644:	2a7ff9aa 	ld.hu	$r10,$r13,-2(0xffe)
1c002648:	001c40e8 	mul.w	$r8,$r7,$r16
1c00264c:	001c19c7 	mul.w	$r7,$r14,$r6
1c002650:	0010268e 	add.w	$r14,$r20,$r9
1c002654:	001c1426 	mul.w	$r6,$r1,$r5
1c002658:	001049c5 	add.w	$r5,$r14,$r18
1c00265c:	001020b1 	add.w	$r17,$r5,$r8
1c002660:	00101e29 	add.w	$r9,$r17,$r7
1c002664:	001c1161 	mul.w	$r1,$r11,$r4
1c002668:	0010192b 	add.w	$r11,$r9,$r6
1c00266c:	001c29f0 	mul.w	$r16,$r15,$r10
1c002670:	00100564 	add.w	$r4,$r11,$r1
1c002674:	00104092 	add.w	$r18,$r4,$r16
1c002678:	297f2ad2 	st.h	$r18,$r22,-54(0xfca)
1c00267c:	29bf32d2 	st.w	$r18,$r22,-52(0xfcc)
1c002680:	287f2ad4 	ld.h	$r20,$r22,-54(0xfca)
1c002684:	5fff6f6c 	bne	$r27,$r12,-148(0x3ff6c) # 1c0025f0 <inner_product_TestOneType_16+0x3f0>
1c002688:	2a40034c 	ld.hu	$r12,$r26,0
1c00268c:	001c318d 	mul.w	$r13,$r12,$r12
1c002690:	001c61a8 	mul.w	$r8,$r13,$r24
1c002694:	297f2ac8 	st.h	$r8,$r22,-54(0xfca)
1c002698:	287f2acf 	ld.h	$r15,$r22,-54(0xfca)
1c00269c:	29bf32c8 	st.w	$r8,$r22,-52(0xfcc)
1c0026a0:	5c00a28f 	bne	$r20,$r15,160(0xa0) # 1c002740 <inner_product_TestOneType_16+0x540>
1c0026a4:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c0026a8:	63fdfb93 	blt	$r28,$r19,-520(0x3fdf8) # 1c0024a0 <inner_product_TestOneType_16+0x2a0>
1c0026ac:	1c000fdd 	pcaddu12i	$r29,126(0x7e)
1c0026b0:	28b173bd 	ld.w	$r29,$r29,-932(0xc5c)
1c0026b4:	543f0c00 	bl	16140(0x3f0c) # 1c0065c0 <get_clock>
1c0026b8:	288003be 	ld.w	$r30,$r29,0
1c0026bc:	0015009a 	move	$r26,$r4
1c0026c0:	14001e97 	lu12i.w	$r23,244(0xf4)
1c0026c4:	14000039 	lu12i.w	$r25,1(0x1)
1c0026c8:	00117b4a 	sub.w	$r10,$r26,$r30
1c0026cc:	038902f8 	ori	$r24,$r23,0x240
1c0026d0:	1c000fdb 	pcaddu12i	$r27,126(0x7e)
1c0026d4:	28b0d37b 	ld.w	$r27,$r27,-972(0xc34)
1c0026d8:	00216147 	div.wu	$r7,$r10,$r24
1c0026dc:	5c000b00 	bne	$r24,$r0,8(0x8) # 1c0026e4 <inner_product_TestOneType_16+0x4e4>
1c0026e0:	002a0007 	break	0x7
1c0026e4:	03bd0326 	ori	$r6,$r25,0xf40
1c0026e8:	1c000fc5 	pcaddu12i	$r5,126(0x7e)
1c0026ec:	02a600a5 	addi.w	$r5,$r5,-1664(0x980)
1c0026f0:	1c000fc4 	pcaddu12i	$r4,126(0x7e)
1c0026f4:	02a48084 	addi.w	$r4,$r4,-1760(0x920)
1c0026f8:	2980037a 	st.w	$r26,$r27,0
1c0026fc:	5436b400 	bl	14004(0x36b4) # 1c005db0 <printf>
1c002700:	02bf02c3 	addi.w	$r3,$r22,-64(0xfc0)
1c002704:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c002708:	001503e4 	move	$r4,$r31
1c00270c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c002710:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c002714:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c002718:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c00271c:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c002720:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c002724:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c002728:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c00272c:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c002730:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c002734:	02810063 	addi.w	$r3,$r3,64(0x40)
1c002738:	4c000020 	jirl	$r0,$r1,0
1c00273c:	03400000 	andi	$r0,$r0,0x0
1c002740:	00150325 	move	$r5,$r25
1c002744:	1c000fc4 	pcaddu12i	$r4,126(0x7e)
1c002748:	02a2f084 	addi.w	$r4,$r4,-1860(0x8bc)
1c00274c:	54366400 	bl	13924(0x3664) # 1c005db0 <printf>
1c002750:	288002f3 	ld.w	$r19,$r23,0
1c002754:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c002758:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c00275c:	63fd4793 	blt	$r28,$r19,-700(0x3fd44) # 1c0024a0 <inner_product_TestOneType_16+0x2a0>
1c002760:	53ff4fff 	b	-180(0xfffff4c) # 1c0026ac <inner_product_TestOneType_16+0x4ac>
1c002764:	03400000 	andi	$r0,$r0,0x0
1c002768:	03400000 	andi	$r0,$r0,0x0
1c00276c:	03400000 	andi	$r0,$r0,0x0

1c002770 <inner_product_TestOneType_u16>:
inner_product_TestOneType_u16():
1c002770:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c002774:	15ffff8c 	lu12i.w	$r12,-4(0xffffc)
1c002778:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00277c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c002780:	2980a07a 	st.w	$r26,$r3,40(0x28)
1c002784:	2980707d 	st.w	$r29,$r3,28(0x1c)
1c002788:	2980607e 	st.w	$r30,$r3,24(0x18)
1c00278c:	2980d077 	st.w	$r23,$r3,52(0x34)
1c002790:	2980c078 	st.w	$r24,$r3,48(0x30)
1c002794:	2980b079 	st.w	$r25,$r3,44(0x2c)
1c002798:	2980907b 	st.w	$r27,$r3,36(0x24)
1c00279c:	2980807c 	st.w	$r28,$r3,32(0x20)
1c0027a0:	2980507f 	st.w	$r31,$r3,20(0x14)
1c0027a4:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0027a8:	03860181 	ori	$r1,$r12,0x180
1c0027ac:	00100463 	add.w	$r3,$r3,$r1
1c0027b0:	0015007d 	move	$r29,$r3
1c0027b4:	004487b0 	srli.w	$r16,$r29,0x1
1c0027b8:	1c000fda 	pcaddu12i	$r26,126(0x7e)
1c0027bc:	02acd35a 	addi.w	$r26,$r26,-1228(0xb34)
1c0027c0:	00100463 	add.w	$r3,$r3,$r1
1c0027c4:	0340060f 	andi	$r15,$r16,0x1
1c0027c8:	2a40034e 	ld.hu	$r14,$r26,0
1c0027cc:	0015007e 	move	$r30,$r3
1c0027d0:	001503b3 	move	$r19,$r29
1c0027d4:	58000de0 	beq	$r15,$r0,12(0xc) # 1c0027e0 <inner_product_TestOneType_u16+0x70>
1c0027d8:	02800bb3 	addi.w	$r19,$r29,2(0x2)
1c0027dc:	294003ae 	st.h	$r14,$r29,0
1c0027e0:	14000024 	lu12i.w	$r4,1(0x1)
1c0027e4:	03bd0086 	ori	$r6,$r4,0xf40
1c0027e8:	00113cc8 	sub.w	$r8,$r6,$r15
1c0027ec:	00448511 	srli.w	$r17,$r8,0x1
1c0027f0:	00408a29 	slli.w	$r9,$r17,0x2
1c0027f4:	02bff12a 	addi.w	$r10,$r9,-4(0xffc)
1c0027f8:	00448952 	srli.w	$r18,$r10,0x2
1c0027fc:	004085e5 	slli.w	$r5,$r15,0x1
1c002800:	02800654 	addi.w	$r20,$r18,1(0x1)
1c002804:	0040c1cd 	slli.w	$r13,$r14,0x10
1c002808:	001017ac 	add.w	$r12,$r29,$r5
1c00280c:	03401e97 	andi	$r23,$r20,0x7
1c002810:	001535c7 	or	$r7,$r14,$r13
1c002814:	0010312b 	add.w	$r11,$r9,$r12
1c002818:	580072e0 	beq	$r23,$r0,112(0x70) # 1c002888 <inner_product_TestOneType_u16+0x118>
1c00281c:	02800418 	addi.w	$r24,$r0,1(0x1)
1c002820:	58005ef8 	beq	$r23,$r24,92(0x5c) # 1c00287c <inner_product_TestOneType_u16+0x10c>
1c002824:	02800819 	addi.w	$r25,$r0,2(0x2)
1c002828:	58004ef9 	beq	$r23,$r25,76(0x4c) # 1c002874 <inner_product_TestOneType_u16+0x104>
1c00282c:	02800c1b 	addi.w	$r27,$r0,3(0x3)
1c002830:	58003efb 	beq	$r23,$r27,60(0x3c) # 1c00286c <inner_product_TestOneType_u16+0xfc>
1c002834:	0280101c 	addi.w	$r28,$r0,4(0x4)
1c002838:	58002efc 	beq	$r23,$r28,44(0x2c) # 1c002864 <inner_product_TestOneType_u16+0xf4>
1c00283c:	0280141f 	addi.w	$r31,$r0,5(0x5)
1c002840:	58001eff 	beq	$r23,$r31,28(0x1c) # 1c00285c <inner_product_TestOneType_u16+0xec>
1c002844:	02801801 	addi.w	$r1,$r0,6(0x6)
1c002848:	58000ee1 	beq	$r23,$r1,12(0xc) # 1c002854 <inner_product_TestOneType_u16+0xe4>
1c00284c:	29800187 	st.w	$r7,$r12,0
1c002850:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002854:	29800187 	st.w	$r7,$r12,0
1c002858:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00285c:	29800187 	st.w	$r7,$r12,0
1c002860:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002864:	29800187 	st.w	$r7,$r12,0
1c002868:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00286c:	29800187 	st.w	$r7,$r12,0
1c002870:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002874:	29800187 	st.w	$r7,$r12,0
1c002878:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00287c:	29800187 	st.w	$r7,$r12,0
1c002880:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002884:	58002d8b 	beq	$r12,$r11,44(0x2c) # 1c0028b0 <inner_product_TestOneType_u16+0x140>
1c002888:	29800187 	st.w	$r7,$r12,0
1c00288c:	29801187 	st.w	$r7,$r12,4(0x4)
1c002890:	29802187 	st.w	$r7,$r12,8(0x8)
1c002894:	29803187 	st.w	$r7,$r12,12(0xc)
1c002898:	29804187 	st.w	$r7,$r12,16(0x10)
1c00289c:	29805187 	st.w	$r7,$r12,20(0x14)
1c0028a0:	29806187 	st.w	$r7,$r12,24(0x18)
1c0028a4:	29807187 	st.w	$r7,$r12,28(0x1c)
1c0028a8:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c0028ac:	5fffdd8b 	bne	$r12,$r11,-36(0x3ffdc) # 1c002888 <inner_product_TestOneType_u16+0x118>
1c0028b0:	02bff810 	addi.w	$r16,$r0,-2(0xffe)
1c0028b4:	0014c10f 	and	$r15,$r8,$r16
1c0028b8:	004085e4 	slli.w	$r4,$r15,0x1
1c0028bc:	00101273 	add.w	$r19,$r19,$r4
1c0028c0:	5800090f 	beq	$r8,$r15,8(0x8) # 1c0028c8 <inner_product_TestOneType_u16+0x158>
1c0028c4:	2940026e 	st.h	$r14,$r19,0
1c0028c8:	004487c5 	srli.w	$r5,$r30,0x1
1c0028cc:	034004ad 	andi	$r13,$r5,0x1
1c0028d0:	001503c6 	move	$r6,$r30
1c0028d4:	58000da0 	beq	$r13,$r0,12(0xc) # 1c0028e0 <inner_product_TestOneType_u16+0x170>
1c0028d8:	02800bc6 	addi.w	$r6,$r30,2(0x2)
1c0028dc:	294003ce 	st.h	$r14,$r30,0
1c0028e0:	14000028 	lu12i.w	$r8,1(0x1)
1c0028e4:	03bd0109 	ori	$r9,$r8,0xf40
1c0028e8:	0011352a 	sub.w	$r10,$r9,$r13
1c0028ec:	0044854b 	srli.w	$r11,$r10,0x1
1c0028f0:	00408972 	slli.w	$r18,$r11,0x2
1c0028f4:	02bff254 	addi.w	$r20,$r18,-4(0xffc)
1c0028f8:	00448a98 	srli.w	$r24,$r20,0x2
1c0028fc:	004085b1 	slli.w	$r17,$r13,0x1
1c002900:	02800719 	addi.w	$r25,$r24,1(0x1)
1c002904:	001047cc 	add.w	$r12,$r30,$r17
1c002908:	03401f3b 	andi	$r27,$r25,0x7
1c00290c:	00103257 	add.w	$r23,$r18,$r12
1c002910:	58007360 	beq	$r27,$r0,112(0x70) # 1c002980 <inner_product_TestOneType_u16+0x210>
1c002914:	0280041c 	addi.w	$r28,$r0,1(0x1)
1c002918:	58005f7c 	beq	$r27,$r28,92(0x5c) # 1c002974 <inner_product_TestOneType_u16+0x204>
1c00291c:	0280081f 	addi.w	$r31,$r0,2(0x2)
1c002920:	58004f7f 	beq	$r27,$r31,76(0x4c) # 1c00296c <inner_product_TestOneType_u16+0x1fc>
1c002924:	02800c01 	addi.w	$r1,$r0,3(0x3)
1c002928:	58003f61 	beq	$r27,$r1,60(0x3c) # 1c002964 <inner_product_TestOneType_u16+0x1f4>
1c00292c:	02801010 	addi.w	$r16,$r0,4(0x4)
1c002930:	58002f70 	beq	$r27,$r16,44(0x2c) # 1c00295c <inner_product_TestOneType_u16+0x1ec>
1c002934:	0280140f 	addi.w	$r15,$r0,5(0x5)
1c002938:	58001f6f 	beq	$r27,$r15,28(0x1c) # 1c002954 <inner_product_TestOneType_u16+0x1e4>
1c00293c:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002940:	58000f64 	beq	$r27,$r4,12(0xc) # 1c00294c <inner_product_TestOneType_u16+0x1dc>
1c002944:	29800187 	st.w	$r7,$r12,0
1c002948:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00294c:	29800187 	st.w	$r7,$r12,0
1c002950:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002954:	29800187 	st.w	$r7,$r12,0
1c002958:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00295c:	29800187 	st.w	$r7,$r12,0
1c002960:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002964:	29800187 	st.w	$r7,$r12,0
1c002968:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00296c:	29800187 	st.w	$r7,$r12,0
1c002970:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002974:	29800187 	st.w	$r7,$r12,0
1c002978:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00297c:	58002eec 	beq	$r23,$r12,44(0x2c) # 1c0029a8 <inner_product_TestOneType_u16+0x238>
1c002980:	29800187 	st.w	$r7,$r12,0
1c002984:	29801187 	st.w	$r7,$r12,4(0x4)
1c002988:	29802187 	st.w	$r7,$r12,8(0x8)
1c00298c:	29803187 	st.w	$r7,$r12,12(0xc)
1c002990:	29804187 	st.w	$r7,$r12,16(0x10)
1c002994:	29805187 	st.w	$r7,$r12,20(0x14)
1c002998:	29806187 	st.w	$r7,$r12,24(0x18)
1c00299c:	29807187 	st.w	$r7,$r12,28(0x1c)
1c0029a0:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c0029a4:	5fffdeec 	bne	$r23,$r12,-36(0x3ffdc) # 1c002980 <inner_product_TestOneType_u16+0x210>
1c0029a8:	02bff807 	addi.w	$r7,$r0,-2(0xffe)
1c0029ac:	00149d53 	and	$r19,$r10,$r7
1c0029b0:	00408665 	slli.w	$r5,$r19,0x1
1c0029b4:	001014cd 	add.w	$r13,$r6,$r5
1c0029b8:	58000953 	beq	$r10,$r19,8(0x8) # 1c0029c0 <inner_product_TestOneType_u16+0x250>
1c0029bc:	294001ae 	st.h	$r14,$r13,0
1c0029c0:	543c0000 	bl	15360(0x3c00) # 1c0065c0 <get_clock>
1c0029c4:	1c000fd7 	pcaddu12i	$r23,126(0x7e)
1c0029c8:	02a4d2f7 	addi.w	$r23,$r23,-1740(0x934)
1c0029cc:	288002f3 	ld.w	$r19,$r23,0
1c0029d0:	1c000fce 	pcaddu12i	$r14,126(0x7e)
1c0029d4:	28a4e1ce 	ld.w	$r14,$r14,-1736(0x938)
1c0029d8:	298001c4 	st.w	$r4,$r14,0
1c0029dc:	0015001f 	move	$r31,$r0
1c0029e0:	64023413 	bge	$r0,$r19,564(0x234) # 1c002c14 <inner_product_TestOneType_u16+0x4a4>
1c0029e4:	14000066 	lu12i.w	$r6,3(0x3)
1c0029e8:	14000028 	lu12i.w	$r8,1(0x1)
1c0029ec:	03ba00d1 	ori	$r17,$r6,0xe80
1c0029f0:	0015001c 	move	$r28,$r0
1c0029f4:	1c000fb9 	pcaddu12i	$r25,125(0x7d)
1c0029f8:	029a5339 	addi.w	$r25,$r25,1684(0x694)
1c0029fc:	03bd0118 	ori	$r24,$r8,0xf40
1c002a00:	001047bb 	add.w	$r27,$r29,$r17
1c002a04:	00117769 	sub.w	$r9,$r27,$r29
1c002a08:	02bff92a 	addi.w	$r10,$r9,-2(0xffe)
1c002a0c:	0044854b 	srli.w	$r11,$r10,0x1
1c002a10:	02800572 	addi.w	$r18,$r11,1(0x1)
1c002a14:	03401e41 	andi	$r1,$r18,0x7
1c002a18:	001503cd 	move	$r13,$r30
1c002a1c:	001503ac 	move	$r12,$r29
1c002a20:	00150014 	move	$r20,$r0
1c002a24:	58013020 	beq	$r1,$r0,304(0x130) # 1c002b54 <inner_product_TestOneType_u16+0x3e4>
1c002a28:	02800410 	addi.w	$r16,$r0,1(0x1)
1c002a2c:	58010030 	beq	$r1,$r16,256(0x100) # 1c002b2c <inner_product_TestOneType_u16+0x3bc>
1c002a30:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c002a34:	5800d42f 	beq	$r1,$r15,212(0xd4) # 1c002b08 <inner_product_TestOneType_u16+0x398>
1c002a38:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c002a3c:	5800a824 	beq	$r1,$r4,168(0xa8) # 1c002ae4 <inner_product_TestOneType_u16+0x374>
1c002a40:	02801007 	addi.w	$r7,$r0,4(0x4)
1c002a44:	58007c27 	beq	$r1,$r7,124(0x7c) # 1c002ac0 <inner_product_TestOneType_u16+0x350>
1c002a48:	02801405 	addi.w	$r5,$r0,5(0x5)
1c002a4c:	58005025 	beq	$r1,$r5,80(0x50) # 1c002a9c <inner_product_TestOneType_u16+0x32c>
1c002a50:	0280180e 	addi.w	$r14,$r0,6(0x6)
1c002a54:	5800242e 	beq	$r1,$r14,36(0x24) # 1c002a78 <inner_product_TestOneType_u16+0x308>
1c002a58:	2a4003d4 	ld.hu	$r20,$r30,0
1c002a5c:	2a4003a6 	ld.hu	$r6,$r29,0
1c002a60:	02800bac 	addi.w	$r12,$r29,2(0x2)
1c002a64:	02800bcd 	addi.w	$r13,$r30,2(0x2)
1c002a68:	001c50ce 	mul.w	$r14,$r6,$r20
1c002a6c:	297f2ace 	st.h	$r14,$r22,-54(0xfca)
1c002a70:	2a7f2ad4 	ld.hu	$r20,$r22,-54(0xfca)
1c002a74:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c002a78:	2a400191 	ld.hu	$r17,$r12,0
1c002a7c:	2a4001a9 	ld.hu	$r9,$r13,0
1c002a80:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002a84:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c002a88:	001c262a 	mul.w	$r10,$r17,$r9
1c002a8c:	00102a8e 	add.w	$r14,$r20,$r10
1c002a90:	297f2ace 	st.h	$r14,$r22,-54(0xfca)
1c002a94:	2a7f2ad4 	ld.hu	$r20,$r22,-54(0xfca)
1c002a98:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c002a9c:	2a400192 	ld.hu	$r18,$r12,0
1c002aa0:	2a4001a1 	ld.hu	$r1,$r13,0
1c002aa4:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002aa8:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c002aac:	001c0650 	mul.w	$r16,$r18,$r1
1c002ab0:	0010428e 	add.w	$r14,$r20,$r16
1c002ab4:	297f2ace 	st.h	$r14,$r22,-54(0xfca)
1c002ab8:	2a7f2ad4 	ld.hu	$r20,$r22,-54(0xfca)
1c002abc:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c002ac0:	2a400184 	ld.hu	$r4,$r12,0
1c002ac4:	2a4001a7 	ld.hu	$r7,$r13,0
1c002ac8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002acc:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c002ad0:	001c1c85 	mul.w	$r5,$r4,$r7
1c002ad4:	0010168e 	add.w	$r14,$r20,$r5
1c002ad8:	297f2ace 	st.h	$r14,$r22,-54(0xfca)
1c002adc:	2a7f2ad4 	ld.hu	$r20,$r22,-54(0xfca)
1c002ae0:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c002ae4:	2a400188 	ld.hu	$r8,$r12,0
1c002ae8:	2a4001b1 	ld.hu	$r17,$r13,0
1c002aec:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002af0:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c002af4:	001c4509 	mul.w	$r9,$r8,$r17
1c002af8:	0010268e 	add.w	$r14,$r20,$r9
1c002afc:	297f2ace 	st.h	$r14,$r22,-54(0xfca)
1c002b00:	2a7f2ad4 	ld.hu	$r20,$r22,-54(0xfca)
1c002b04:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c002b08:	2a40018a 	ld.hu	$r10,$r12,0
1c002b0c:	2a4001ab 	ld.hu	$r11,$r13,0
1c002b10:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002b14:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c002b18:	001c2d52 	mul.w	$r18,$r10,$r11
1c002b1c:	00104a8e 	add.w	$r14,$r20,$r18
1c002b20:	297f2ace 	st.h	$r14,$r22,-54(0xfca)
1c002b24:	2a7f2ad4 	ld.hu	$r20,$r22,-54(0xfca)
1c002b28:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c002b2c:	2a400190 	ld.hu	$r16,$r12,0
1c002b30:	2a4001af 	ld.hu	$r15,$r13,0
1c002b34:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002b38:	028009ad 	addi.w	$r13,$r13,2(0x2)
1c002b3c:	001c3e04 	mul.w	$r4,$r16,$r15
1c002b40:	0010128e 	add.w	$r14,$r20,$r4
1c002b44:	297f2ace 	st.h	$r14,$r22,-54(0xfca)
1c002b48:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c002b4c:	2a7f2ad4 	ld.hu	$r20,$r22,-54(0xfca)
1c002b50:	58009f6c 	beq	$r27,$r12,156(0x9c) # 1c002bec <inner_product_TestOneType_u16+0x47c>
1c002b54:	2a400191 	ld.hu	$r17,$r12,0
1c002b58:	2a4001ab 	ld.hu	$r11,$r13,0
1c002b5c:	2a400989 	ld.hu	$r9,$r12,2(0x2)
1c002b60:	2a4009b2 	ld.hu	$r18,$r13,2(0x2)
1c002b64:	2a40118a 	ld.hu	$r10,$r12,4(0x4)
1c002b68:	001c2e2f 	mul.w	$r15,$r17,$r11
1c002b6c:	2a4011a8 	ld.hu	$r8,$r13,4(0x4)
1c002b70:	2a401987 	ld.hu	$r7,$r12,6(0x6)
1c002b74:	2a4019b0 	ld.hu	$r16,$r13,6(0x6)
1c002b78:	2a40218e 	ld.hu	$r14,$r12,8(0x8)
1c002b7c:	2a4021a6 	ld.hu	$r6,$r13,8(0x8)
1c002b80:	2a402981 	ld.hu	$r1,$r12,10(0xa)
1c002b84:	2a4029a5 	ld.hu	$r5,$r13,10(0xa)
1c002b88:	2a40318b 	ld.hu	$r11,$r12,12(0xc)
1c002b8c:	2a4031a4 	ld.hu	$r4,$r13,12(0xc)
1c002b90:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c002b94:	028041ad 	addi.w	$r13,$r13,16(0x10)
1c002b98:	001c4931 	mul.w	$r17,$r9,$r18
1c002b9c:	00103e94 	add.w	$r20,$r20,$r15
1c002ba0:	001c2149 	mul.w	$r9,$r10,$r8
1c002ba4:	2a7ff98a 	ld.hu	$r10,$r12,-2(0xffe)
1c002ba8:	2a7ff9a8 	ld.hu	$r8,$r13,-2(0xffe)
1c002bac:	001c40f2 	mul.w	$r18,$r7,$r16
1c002bb0:	001c19c7 	mul.w	$r7,$r14,$r6
1c002bb4:	0010468e 	add.w	$r14,$r20,$r17
1c002bb8:	001c1426 	mul.w	$r6,$r1,$r5
1c002bbc:	001025c5 	add.w	$r5,$r14,$r9
1c002bc0:	001048af 	add.w	$r15,$r5,$r18
1c002bc4:	00101df1 	add.w	$r17,$r15,$r7
1c002bc8:	001c1161 	mul.w	$r1,$r11,$r4
1c002bcc:	00101a2b 	add.w	$r11,$r17,$r6
1c002bd0:	001c2150 	mul.w	$r16,$r10,$r8
1c002bd4:	00100564 	add.w	$r4,$r11,$r1
1c002bd8:	00104089 	add.w	$r9,$r4,$r16
1c002bdc:	297f2ac9 	st.h	$r9,$r22,-54(0xfca)
1c002be0:	29bf32c9 	st.w	$r9,$r22,-52(0xfcc)
1c002be4:	2a7f2ad4 	ld.hu	$r20,$r22,-54(0xfca)
1c002be8:	5fff6f6c 	bne	$r27,$r12,-148(0x3ff6c) # 1c002b54 <inner_product_TestOneType_u16+0x3e4>
1c002bec:	2a40034c 	ld.hu	$r12,$r26,0
1c002bf0:	001c318d 	mul.w	$r13,$r12,$r12
1c002bf4:	001c61ac 	mul.w	$r12,$r13,$r24
1c002bf8:	297f2acc 	st.h	$r12,$r22,-54(0xfca)
1c002bfc:	2a7f2aca 	ld.hu	$r10,$r22,-54(0xfca)
1c002c00:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c002c04:	00112a88 	sub.w	$r8,$r20,$r10
1c002c08:	6000a008 	blt	$r0,$r8,160(0xa0) # 1c002ca8 <inner_product_TestOneType_u16+0x538>
1c002c0c:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c002c10:	63fdf793 	blt	$r28,$r19,-524(0x3fdf4) # 1c002a04 <inner_product_TestOneType_u16+0x294>
1c002c14:	1c000fbd 	pcaddu12i	$r29,125(0x7d)
1c002c18:	289bd3bd 	ld.w	$r29,$r29,1780(0x6f4)
1c002c1c:	5439a400 	bl	14756(0x39a4) # 1c0065c0 <get_clock>
1c002c20:	288003be 	ld.w	$r30,$r29,0
1c002c24:	0015009a 	move	$r26,$r4
1c002c28:	14001e97 	lu12i.w	$r23,244(0xf4)
1c002c2c:	00117b47 	sub.w	$r7,$r26,$r30
1c002c30:	038902f8 	ori	$r24,$r23,0x240
1c002c34:	14000039 	lu12i.w	$r25,1(0x1)
1c002c38:	002160f0 	div.wu	$r16,$r7,$r24
1c002c3c:	5c000b00 	bne	$r24,$r0,8(0x8) # 1c002c44 <inner_product_TestOneType_u16+0x4d4>
1c002c40:	002a0007 	break	0x7
1c002c44:	1c000fbb 	pcaddu12i	$r27,125(0x7d)
1c002c48:	289b037b 	ld.w	$r27,$r27,1728(0x6c0)
1c002c4c:	03bd0326 	ori	$r6,$r25,0xf40
1c002c50:	1c000fa5 	pcaddu12i	$r5,125(0x7d)
1c002c54:	0290e0a5 	addi.w	$r5,$r5,1080(0x438)
1c002c58:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c002c5c:	028ee084 	addi.w	$r4,$r4,952(0x3b8)
1c002c60:	00150207 	move	$r7,$r16
1c002c64:	2980037a 	st.w	$r26,$r27,0
1c002c68:	54314800 	bl	12616(0x3148) # 1c005db0 <printf>
1c002c6c:	02bf02c3 	addi.w	$r3,$r22,-64(0xfc0)
1c002c70:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c002c74:	001503e4 	move	$r4,$r31
1c002c78:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c002c7c:	2880d077 	ld.w	$r23,$r3,52(0x34)
1c002c80:	2880c078 	ld.w	$r24,$r3,48(0x30)
1c002c84:	2880b079 	ld.w	$r25,$r3,44(0x2c)
1c002c88:	2880a07a 	ld.w	$r26,$r3,40(0x28)
1c002c8c:	2880907b 	ld.w	$r27,$r3,36(0x24)
1c002c90:	2880807c 	ld.w	$r28,$r3,32(0x20)
1c002c94:	2880707d 	ld.w	$r29,$r3,28(0x1c)
1c002c98:	2880607e 	ld.w	$r30,$r3,24(0x18)
1c002c9c:	2880507f 	ld.w	$r31,$r3,20(0x14)
1c002ca0:	02810063 	addi.w	$r3,$r3,64(0x40)
1c002ca4:	4c000020 	jirl	$r0,$r1,0
1c002ca8:	00150325 	move	$r5,$r25
1c002cac:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c002cb0:	028d5084 	addi.w	$r4,$r4,852(0x354)
1c002cb4:	5430fc00 	bl	12540(0x30fc) # 1c005db0 <printf>
1c002cb8:	288002f3 	ld.w	$r19,$r23,0
1c002cbc:	0280079c 	addi.w	$r28,$r28,1(0x1)
1c002cc0:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c002cc4:	63fd4393 	blt	$r28,$r19,-704(0x3fd40) # 1c002a04 <inner_product_TestOneType_u16+0x294>
1c002cc8:	53ff4fff 	b	-180(0xfffff4c) # 1c002c14 <inner_product_TestOneType_u16+0x4a4>
1c002ccc:	03400000 	andi	$r0,$r0,0x0

1c002cd0 <inner_product_TestOneType_32>:
inner_product_TestOneType_32():
1c002cd0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002cd4:	15ffff0d 	lu12i.w	$r13,-8(0xffff8)
1c002cd8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002cdc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002ce0:	29807079 	st.w	$r25,$r3,28(0x1c)
1c002ce4:	2980207e 	st.w	$r30,$r3,8(0x8)
1c002ce8:	2980107f 	st.w	$r31,$r3,4(0x4)
1c002cec:	29809077 	st.w	$r23,$r3,36(0x24)
1c002cf0:	29808078 	st.w	$r24,$r3,32(0x20)
1c002cf4:	2980607a 	st.w	$r26,$r3,24(0x18)
1c002cf8:	2980507b 	st.w	$r27,$r3,20(0x14)
1c002cfc:	2980407c 	st.w	$r28,$r3,16(0x10)
1c002d00:	2980307d 	st.w	$r29,$r3,12(0xc)
1c002d04:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d08:	038c01a1 	ori	$r1,$r13,0x300
1c002d0c:	1c000fb9 	pcaddu12i	$r25,125(0x7d)
1c002d10:	02977339 	addi.w	$r25,$r25,1500(0x5dc)
1c002d14:	00100463 	add.w	$r3,$r3,$r1
1c002d18:	140000ee 	lu12i.w	$r14,7(0x7)
1c002d1c:	2880032c 	ld.w	$r12,$r25,0
1c002d20:	0015007e 	move	$r30,$r3
1c002d24:	03b401c4 	ori	$r4,$r14,0xd00
1c002d28:	00100463 	add.w	$r3,$r3,$r1
1c002d2c:	0015007f 	move	$r31,$r3
1c002d30:	001013c5 	add.w	$r5,$r30,$r4
1c002d34:	001503c6 	move	$r6,$r30
1c002d38:	298000cc 	st.w	$r12,$r6,0
1c002d3c:	298010cc 	st.w	$r12,$r6,4(0x4)
1c002d40:	298020cc 	st.w	$r12,$r6,8(0x8)
1c002d44:	298030cc 	st.w	$r12,$r6,12(0xc)
1c002d48:	298040cc 	st.w	$r12,$r6,16(0x10)
1c002d4c:	298050cc 	st.w	$r12,$r6,20(0x14)
1c002d50:	298060cc 	st.w	$r12,$r6,24(0x18)
1c002d54:	028080c6 	addi.w	$r6,$r6,32(0x20)
1c002d58:	29bff0cc 	st.w	$r12,$r6,-4(0xffc)
1c002d5c:	5fffdcc5 	bne	$r6,$r5,-36(0x3ffdc) # 1c002d38 <inner_product_TestOneType_32+0x68>
1c002d60:	140000e7 	lu12i.w	$r7,7(0x7)
1c002d64:	03b400e8 	ori	$r8,$r7,0xd00
1c002d68:	001503ea 	move	$r10,$r31
1c002d6c:	001023e9 	add.w	$r9,$r31,$r8
1c002d70:	2980014c 	st.w	$r12,$r10,0
1c002d74:	2980114c 	st.w	$r12,$r10,4(0x4)
1c002d78:	2980214c 	st.w	$r12,$r10,8(0x8)
1c002d7c:	2980314c 	st.w	$r12,$r10,12(0xc)
1c002d80:	2980414c 	st.w	$r12,$r10,16(0x10)
1c002d84:	2980514c 	st.w	$r12,$r10,20(0x14)
1c002d88:	2980614c 	st.w	$r12,$r10,24(0x18)
1c002d8c:	0280814a 	addi.w	$r10,$r10,32(0x20)
1c002d90:	29bff14c 	st.w	$r12,$r10,-4(0xffc)
1c002d94:	5fffdd49 	bne	$r10,$r9,-36(0x3ffdc) # 1c002d70 <inner_product_TestOneType_32+0xa0>
1c002d98:	54382800 	bl	14376(0x3828) # 1c0065c0 <get_clock>
1c002d9c:	1c000fb8 	pcaddu12i	$r24,125(0x7d)
1c002da0:	02957318 	addi.w	$r24,$r24,1372(0x55c)
1c002da4:	28800311 	ld.w	$r17,$r24,0
1c002da8:	1c000fab 	pcaddu12i	$r11,125(0x7d)
1c002dac:	2895816b 	ld.w	$r11,$r11,1376(0x560)
1c002db0:	29800164 	st.w	$r4,$r11,0
1c002db4:	00150017 	move	$r23,$r0
1c002db8:	6401c811 	bge	$r0,$r17,456(0x1c8) # 1c002f80 <inner_product_TestOneType_32+0x2b0>
1c002dbc:	140000fc 	lu12i.w	$r28,7(0x7)
1c002dc0:	1400002f 	lu12i.w	$r15,1(0x1)
1c002dc4:	03b40390 	ori	$r16,$r28,0xd00
1c002dc8:	0015001d 	move	$r29,$r0
1c002dcc:	1c000fba 	pcaddu12i	$r26,125(0x7d)
1c002dd0:	028b835a 	addi.w	$r26,$r26,736(0x2e0)
1c002dd4:	03bd01fb 	ori	$r27,$r15,0xf40
1c002dd8:	001043dc 	add.w	$r28,$r30,$r16
1c002ddc:	03400000 	andi	$r0,$r0,0x0
1c002de0:	00117b92 	sub.w	$r18,$r28,$r30
1c002de4:	02bff254 	addi.w	$r20,$r18,-4(0xffc)
1c002de8:	00448a8e 	srli.w	$r14,$r20,0x2
1c002dec:	028005c1 	addi.w	$r1,$r14,1(0x1)
1c002df0:	03401c24 	andi	$r4,$r1,0x7
1c002df4:	001503cc 	move	$r12,$r30
1c002df8:	001503ed 	move	$r13,$r31
1c002dfc:	00150013 	move	$r19,$r0
1c002e00:	5800dc80 	beq	$r4,$r0,220(0xdc) # 1c002edc <inner_product_TestOneType_32+0x20c>
1c002e04:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002e08:	5800b885 	beq	$r4,$r5,184(0xb8) # 1c002ec0 <inner_product_TestOneType_32+0x1f0>
1c002e0c:	02800806 	addi.w	$r6,$r0,2(0x2)
1c002e10:	58009886 	beq	$r4,$r6,152(0x98) # 1c002ea8 <inner_product_TestOneType_32+0x1d8>
1c002e14:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c002e18:	58007887 	beq	$r4,$r7,120(0x78) # 1c002e90 <inner_product_TestOneType_32+0x1c0>
1c002e1c:	02801008 	addi.w	$r8,$r0,4(0x4)
1c002e20:	58005888 	beq	$r4,$r8,88(0x58) # 1c002e78 <inner_product_TestOneType_32+0x1a8>
1c002e24:	02801409 	addi.w	$r9,$r0,5(0x5)
1c002e28:	58003889 	beq	$r4,$r9,56(0x38) # 1c002e60 <inner_product_TestOneType_32+0x190>
1c002e2c:	0280180a 	addi.w	$r10,$r0,6(0x6)
1c002e30:	5800188a 	beq	$r4,$r10,24(0x18) # 1c002e48 <inner_product_TestOneType_32+0x178>
1c002e34:	288003d3 	ld.w	$r19,$r30,0
1c002e38:	288003eb 	ld.w	$r11,$r31,0
1c002e3c:	028013cc 	addi.w	$r12,$r30,4(0x4)
1c002e40:	028013ed 	addi.w	$r13,$r31,4(0x4)
1c002e44:	001c2e73 	mul.w	$r19,$r19,$r11
1c002e48:	2880018f 	ld.w	$r15,$r12,0
1c002e4c:	288001b0 	ld.w	$r16,$r13,0
1c002e50:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002e54:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c002e58:	001c41f2 	mul.w	$r18,$r15,$r16
1c002e5c:	00104a73 	add.w	$r19,$r19,$r18
1c002e60:	28800194 	ld.w	$r20,$r12,0
1c002e64:	288001ae 	ld.w	$r14,$r13,0
1c002e68:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002e6c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c002e70:	001c3a81 	mul.w	$r1,$r20,$r14
1c002e74:	00100673 	add.w	$r19,$r19,$r1
1c002e78:	28800184 	ld.w	$r4,$r12,0
1c002e7c:	288001a5 	ld.w	$r5,$r13,0
1c002e80:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002e84:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c002e88:	001c1486 	mul.w	$r6,$r4,$r5
1c002e8c:	00101a73 	add.w	$r19,$r19,$r6
1c002e90:	28800187 	ld.w	$r7,$r12,0
1c002e94:	288001a8 	ld.w	$r8,$r13,0
1c002e98:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002e9c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c002ea0:	001c20e9 	mul.w	$r9,$r7,$r8
1c002ea4:	00102673 	add.w	$r19,$r19,$r9
1c002ea8:	2880018a 	ld.w	$r10,$r12,0
1c002eac:	288001ab 	ld.w	$r11,$r13,0
1c002eb0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002eb4:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c002eb8:	001c2d4f 	mul.w	$r15,$r10,$r11
1c002ebc:	00103e73 	add.w	$r19,$r19,$r15
1c002ec0:	28800190 	ld.w	$r16,$r12,0
1c002ec4:	288001b2 	ld.w	$r18,$r13,0
1c002ec8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002ecc:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c002ed0:	001c4a14 	mul.w	$r20,$r16,$r18
1c002ed4:	00105273 	add.w	$r19,$r19,$r20
1c002ed8:	5800919c 	beq	$r12,$r28,144(0x90) # 1c002f68 <inner_product_TestOneType_32+0x298>
1c002edc:	28800181 	ld.w	$r1,$r12,0
1c002ee0:	288001a9 	ld.w	$r9,$r13,0
1c002ee4:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c002ee8:	288011a4 	ld.w	$r4,$r13,4(0x4)
1c002eec:	2880218a 	ld.w	$r10,$r12,8(0x8)
1c002ef0:	001c2430 	mul.w	$r16,$r1,$r9
1c002ef4:	288021a8 	ld.w	$r8,$r13,8(0x8)
1c002ef8:	288031af 	ld.w	$r15,$r13,12(0xc)
1c002efc:	288041a6 	ld.w	$r6,$r13,16(0x10)
1c002f00:	28803187 	ld.w	$r7,$r12,12(0xc)
1c002f04:	288051a5 	ld.w	$r5,$r13,20(0x14)
1c002f08:	2880618b 	ld.w	$r11,$r12,24(0x18)
1c002f0c:	288061b2 	ld.w	$r18,$r13,24(0x18)
1c002f10:	288071b4 	ld.w	$r20,$r13,28(0x1c)
1c002f14:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c002f18:	028081ad 	addi.w	$r13,$r13,32(0x20)
1c002f1c:	001c11c1 	mul.w	$r1,$r14,$r4
1c002f20:	28bfc18e 	ld.w	$r14,$r12,-16(0xff0)
1c002f24:	28bfd184 	ld.w	$r4,$r12,-12(0xff4)
1c002f28:	00104273 	add.w	$r19,$r19,$r16
1c002f2c:	001c2149 	mul.w	$r9,$r10,$r8
1c002f30:	28bff18a 	ld.w	$r10,$r12,-4(0xffc)
1c002f34:	00100670 	add.w	$r16,$r19,$r1
1c002f38:	001c3ce8 	mul.w	$r8,$r7,$r15
1c002f3c:	00102601 	add.w	$r1,$r16,$r9
1c002f40:	001c19c7 	mul.w	$r7,$r14,$r6
1c002f44:	001c148f 	mul.w	$r15,$r4,$r5
1c002f48:	001c4966 	mul.w	$r6,$r11,$r18
1c002f4c:	0010202b 	add.w	$r11,$r1,$r8
1c002f50:	00101d72 	add.w	$r18,$r11,$r7
1c002f54:	00103e49 	add.w	$r9,$r18,$r15
1c002f58:	001c5145 	mul.w	$r5,$r10,$r20
1c002f5c:	00101928 	add.w	$r8,$r9,$r6
1c002f60:	00101513 	add.w	$r19,$r8,$r5
1c002f64:	5fff799c 	bne	$r12,$r28,-136(0x3ff78) # 1c002edc <inner_product_TestOneType_32+0x20c>
1c002f68:	2880032c 	ld.w	$r12,$r25,0
1c002f6c:	001c318d 	mul.w	$r13,$r12,$r12
1c002f70:	001c6daa 	mul.w	$r10,$r13,$r27
1c002f74:	5c009e6a 	bne	$r19,$r10,156(0x9c) # 1c003010 <inner_product_TestOneType_32+0x340>
1c002f78:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c002f7c:	63fe67b1 	blt	$r29,$r17,-412(0x3fe64) # 1c002de0 <inner_product_TestOneType_32+0x110>
1c002f80:	1c000fbe 	pcaddu12i	$r30,125(0x7d)
1c002f84:	288e23de 	ld.w	$r30,$r30,904(0x388)
1c002f88:	54363800 	bl	13880(0x3638) # 1c0065c0 <get_clock>
1c002f8c:	288003df 	ld.w	$r31,$r30,0
1c002f90:	00150099 	move	$r25,$r4
1c002f94:	14001e98 	lu12i.w	$r24,244(0xf4)
1c002f98:	1400003a 	lu12i.w	$r26,1(0x1)
1c002f9c:	00117f34 	sub.w	$r20,$r25,$r31
1c002fa0:	0389031b 	ori	$r27,$r24,0x240
1c002fa4:	1c000fbc 	pcaddu12i	$r28,125(0x7d)
1c002fa8:	288d839c 	ld.w	$r28,$r28,864(0x360)
1c002fac:	00216e87 	div.wu	$r7,$r20,$r27
1c002fb0:	5c000b60 	bne	$r27,$r0,8(0x8) # 1c002fb8 <inner_product_TestOneType_32+0x2e8>
1c002fb4:	002a0007 	break	0x7
1c002fb8:	03bd0346 	ori	$r6,$r26,0xf40
1c002fbc:	1c000fa5 	pcaddu12i	$r5,125(0x7d)
1c002fc0:	0283c0a5 	addi.w	$r5,$r5,240(0xf0)
1c002fc4:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c002fc8:	02813084 	addi.w	$r4,$r4,76(0x4c)
1c002fcc:	29800399 	st.w	$r25,$r28,0
1c002fd0:	542de000 	bl	11744(0x2de0) # 1c005db0 <printf>
1c002fd4:	02bf42c3 	addi.w	$r3,$r22,-48(0xfd0)
1c002fd8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002fdc:	001502e4 	move	$r4,$r23
1c002fe0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002fe4:	28809077 	ld.w	$r23,$r3,36(0x24)
1c002fe8:	28808078 	ld.w	$r24,$r3,32(0x20)
1c002fec:	28807079 	ld.w	$r25,$r3,28(0x1c)
1c002ff0:	2880607a 	ld.w	$r26,$r3,24(0x18)
1c002ff4:	2880507b 	ld.w	$r27,$r3,20(0x14)
1c002ff8:	2880407c 	ld.w	$r28,$r3,16(0x10)
1c002ffc:	2880307d 	ld.w	$r29,$r3,12(0xc)
1c003000:	2880207e 	ld.w	$r30,$r3,8(0x8)
1c003004:	2880107f 	ld.w	$r31,$r3,4(0x4)
1c003008:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00300c:	4c000020 	jirl	$r0,$r1,0
1c003010:	00150345 	move	$r5,$r26
1c003014:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c003018:	02bfb084 	addi.w	$r4,$r4,-20(0xfec)
1c00301c:	542d9400 	bl	11668(0x2d94) # 1c005db0 <printf>
1c003020:	28800311 	ld.w	$r17,$r24,0
1c003024:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c003028:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c00302c:	63fdb7b1 	blt	$r29,$r17,-588(0x3fdb4) # 1c002de0 <inner_product_TestOneType_32+0x110>
1c003030:	53ff53ff 	b	-176(0xfffff50) # 1c002f80 <inner_product_TestOneType_32+0x2b0>
1c003034:	03400000 	andi	$r0,$r0,0x0
1c003038:	03400000 	andi	$r0,$r0,0x0
1c00303c:	03400000 	andi	$r0,$r0,0x0

1c003040 <inner_product_TestOneType_u32>:
inner_product_TestOneType_u32():
1c003040:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003044:	15ffff0d 	lu12i.w	$r13,-8(0xffff8)
1c003048:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00304c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003050:	29807079 	st.w	$r25,$r3,28(0x1c)
1c003054:	2980207e 	st.w	$r30,$r3,8(0x8)
1c003058:	2980107f 	st.w	$r31,$r3,4(0x4)
1c00305c:	29809077 	st.w	$r23,$r3,36(0x24)
1c003060:	29808078 	st.w	$r24,$r3,32(0x20)
1c003064:	2980607a 	st.w	$r26,$r3,24(0x18)
1c003068:	2980507b 	st.w	$r27,$r3,20(0x14)
1c00306c:	2980407c 	st.w	$r28,$r3,16(0x10)
1c003070:	2980307d 	st.w	$r29,$r3,12(0xc)
1c003074:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003078:	038c01a1 	ori	$r1,$r13,0x300
1c00307c:	1c000fb9 	pcaddu12i	$r25,125(0x7d)
1c003080:	0289b339 	addi.w	$r25,$r25,620(0x26c)
1c003084:	00100463 	add.w	$r3,$r3,$r1
1c003088:	140000ee 	lu12i.w	$r14,7(0x7)
1c00308c:	2880032c 	ld.w	$r12,$r25,0
1c003090:	0015007e 	move	$r30,$r3
1c003094:	03b401c4 	ori	$r4,$r14,0xd00
1c003098:	00100463 	add.w	$r3,$r3,$r1
1c00309c:	0015007f 	move	$r31,$r3
1c0030a0:	001013c5 	add.w	$r5,$r30,$r4
1c0030a4:	001503c6 	move	$r6,$r30
1c0030a8:	298000cc 	st.w	$r12,$r6,0
1c0030ac:	298010cc 	st.w	$r12,$r6,4(0x4)
1c0030b0:	298020cc 	st.w	$r12,$r6,8(0x8)
1c0030b4:	298030cc 	st.w	$r12,$r6,12(0xc)
1c0030b8:	298040cc 	st.w	$r12,$r6,16(0x10)
1c0030bc:	298050cc 	st.w	$r12,$r6,20(0x14)
1c0030c0:	298060cc 	st.w	$r12,$r6,24(0x18)
1c0030c4:	028080c6 	addi.w	$r6,$r6,32(0x20)
1c0030c8:	29bff0cc 	st.w	$r12,$r6,-4(0xffc)
1c0030cc:	5fffdcc5 	bne	$r6,$r5,-36(0x3ffdc) # 1c0030a8 <inner_product_TestOneType_u32+0x68>
1c0030d0:	140000e7 	lu12i.w	$r7,7(0x7)
1c0030d4:	03b400e8 	ori	$r8,$r7,0xd00
1c0030d8:	001503ea 	move	$r10,$r31
1c0030dc:	001023e9 	add.w	$r9,$r31,$r8
1c0030e0:	2980014c 	st.w	$r12,$r10,0
1c0030e4:	2980114c 	st.w	$r12,$r10,4(0x4)
1c0030e8:	2980214c 	st.w	$r12,$r10,8(0x8)
1c0030ec:	2980314c 	st.w	$r12,$r10,12(0xc)
1c0030f0:	2980414c 	st.w	$r12,$r10,16(0x10)
1c0030f4:	2980514c 	st.w	$r12,$r10,20(0x14)
1c0030f8:	2980614c 	st.w	$r12,$r10,24(0x18)
1c0030fc:	0280814a 	addi.w	$r10,$r10,32(0x20)
1c003100:	29bff14c 	st.w	$r12,$r10,-4(0xffc)
1c003104:	5fffdd49 	bne	$r10,$r9,-36(0x3ffdc) # 1c0030e0 <inner_product_TestOneType_u32+0xa0>
1c003108:	5434b800 	bl	13496(0x34b8) # 1c0065c0 <get_clock>
1c00310c:	1c000fb8 	pcaddu12i	$r24,125(0x7d)
1c003110:	0287b318 	addi.w	$r24,$r24,492(0x1ec)
1c003114:	28800311 	ld.w	$r17,$r24,0
1c003118:	1c000fab 	pcaddu12i	$r11,125(0x7d)
1c00311c:	2887c16b 	ld.w	$r11,$r11,496(0x1f0)
1c003120:	29800164 	st.w	$r4,$r11,0
1c003124:	00150017 	move	$r23,$r0
1c003128:	6401e011 	bge	$r0,$r17,480(0x1e0) # 1c003308 <inner_product_TestOneType_u32+0x2c8>
1c00312c:	140000fc 	lu12i.w	$r28,7(0x7)
1c003130:	1400002f 	lu12i.w	$r15,1(0x1)
1c003134:	03b40390 	ori	$r16,$r28,0xd00
1c003138:	0015001d 	move	$r29,$r0
1c00313c:	1c000fba 	pcaddu12i	$r26,125(0x7d)
1c003140:	02be435a 	addi.w	$r26,$r26,-112(0xf90)
1c003144:	03bd01fb 	ori	$r27,$r15,0xf40
1c003148:	001043dc 	add.w	$r28,$r30,$r16
1c00314c:	03400000 	andi	$r0,$r0,0x0
1c003150:	00117b92 	sub.w	$r18,$r28,$r30
1c003154:	02bff254 	addi.w	$r20,$r18,-4(0xffc)
1c003158:	00448a8e 	srli.w	$r14,$r20,0x2
1c00315c:	028005c1 	addi.w	$r1,$r14,1(0x1)
1c003160:	03401c24 	andi	$r4,$r1,0x7
1c003164:	001503cc 	move	$r12,$r30
1c003168:	001503ed 	move	$r13,$r31
1c00316c:	00150013 	move	$r19,$r0
1c003170:	5800dc80 	beq	$r4,$r0,220(0xdc) # 1c00324c <inner_product_TestOneType_u32+0x20c>
1c003174:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003178:	5800b885 	beq	$r4,$r5,184(0xb8) # 1c003230 <inner_product_TestOneType_u32+0x1f0>
1c00317c:	02800806 	addi.w	$r6,$r0,2(0x2)
1c003180:	58009886 	beq	$r4,$r6,152(0x98) # 1c003218 <inner_product_TestOneType_u32+0x1d8>
1c003184:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c003188:	58007887 	beq	$r4,$r7,120(0x78) # 1c003200 <inner_product_TestOneType_u32+0x1c0>
1c00318c:	02801008 	addi.w	$r8,$r0,4(0x4)
1c003190:	58005888 	beq	$r4,$r8,88(0x58) # 1c0031e8 <inner_product_TestOneType_u32+0x1a8>
1c003194:	02801409 	addi.w	$r9,$r0,5(0x5)
1c003198:	58003889 	beq	$r4,$r9,56(0x38) # 1c0031d0 <inner_product_TestOneType_u32+0x190>
1c00319c:	0280180a 	addi.w	$r10,$r0,6(0x6)
1c0031a0:	5800188a 	beq	$r4,$r10,24(0x18) # 1c0031b8 <inner_product_TestOneType_u32+0x178>
1c0031a4:	288003d3 	ld.w	$r19,$r30,0
1c0031a8:	288003eb 	ld.w	$r11,$r31,0
1c0031ac:	028013cc 	addi.w	$r12,$r30,4(0x4)
1c0031b0:	028013ed 	addi.w	$r13,$r31,4(0x4)
1c0031b4:	001c2e73 	mul.w	$r19,$r19,$r11
1c0031b8:	2880018f 	ld.w	$r15,$r12,0
1c0031bc:	288001b0 	ld.w	$r16,$r13,0
1c0031c0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0031c4:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0031c8:	001c41f2 	mul.w	$r18,$r15,$r16
1c0031cc:	00104a73 	add.w	$r19,$r19,$r18
1c0031d0:	28800194 	ld.w	$r20,$r12,0
1c0031d4:	288001ae 	ld.w	$r14,$r13,0
1c0031d8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0031dc:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0031e0:	001c3a81 	mul.w	$r1,$r20,$r14
1c0031e4:	00100673 	add.w	$r19,$r19,$r1
1c0031e8:	28800184 	ld.w	$r4,$r12,0
1c0031ec:	288001a5 	ld.w	$r5,$r13,0
1c0031f0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0031f4:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c0031f8:	001c1486 	mul.w	$r6,$r4,$r5
1c0031fc:	00101a73 	add.w	$r19,$r19,$r6
1c003200:	28800187 	ld.w	$r7,$r12,0
1c003204:	288001a8 	ld.w	$r8,$r13,0
1c003208:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00320c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c003210:	001c20e9 	mul.w	$r9,$r7,$r8
1c003214:	00102673 	add.w	$r19,$r19,$r9
1c003218:	2880018a 	ld.w	$r10,$r12,0
1c00321c:	288001ab 	ld.w	$r11,$r13,0
1c003220:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003224:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c003228:	001c2d4f 	mul.w	$r15,$r10,$r11
1c00322c:	00103e73 	add.w	$r19,$r19,$r15
1c003230:	28800190 	ld.w	$r16,$r12,0
1c003234:	288001b2 	ld.w	$r18,$r13,0
1c003238:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00323c:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c003240:	001c4a14 	mul.w	$r20,$r16,$r18
1c003244:	00105273 	add.w	$r19,$r19,$r20
1c003248:	5800919c 	beq	$r12,$r28,144(0x90) # 1c0032d8 <inner_product_TestOneType_u32+0x298>
1c00324c:	28800181 	ld.w	$r1,$r12,0
1c003250:	288001a9 	ld.w	$r9,$r13,0
1c003254:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c003258:	288011a4 	ld.w	$r4,$r13,4(0x4)
1c00325c:	2880218a 	ld.w	$r10,$r12,8(0x8)
1c003260:	001c2430 	mul.w	$r16,$r1,$r9
1c003264:	288021a8 	ld.w	$r8,$r13,8(0x8)
1c003268:	288031af 	ld.w	$r15,$r13,12(0xc)
1c00326c:	288041a6 	ld.w	$r6,$r13,16(0x10)
1c003270:	28803187 	ld.w	$r7,$r12,12(0xc)
1c003274:	288051a5 	ld.w	$r5,$r13,20(0x14)
1c003278:	2880618b 	ld.w	$r11,$r12,24(0x18)
1c00327c:	288061b2 	ld.w	$r18,$r13,24(0x18)
1c003280:	288071b4 	ld.w	$r20,$r13,28(0x1c)
1c003284:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c003288:	028081ad 	addi.w	$r13,$r13,32(0x20)
1c00328c:	001c11c1 	mul.w	$r1,$r14,$r4
1c003290:	28bfc18e 	ld.w	$r14,$r12,-16(0xff0)
1c003294:	28bfd184 	ld.w	$r4,$r12,-12(0xff4)
1c003298:	00104273 	add.w	$r19,$r19,$r16
1c00329c:	001c2149 	mul.w	$r9,$r10,$r8
1c0032a0:	28bff18a 	ld.w	$r10,$r12,-4(0xffc)
1c0032a4:	00100670 	add.w	$r16,$r19,$r1
1c0032a8:	001c3ce8 	mul.w	$r8,$r7,$r15
1c0032ac:	00102601 	add.w	$r1,$r16,$r9
1c0032b0:	001c19c7 	mul.w	$r7,$r14,$r6
1c0032b4:	001c148f 	mul.w	$r15,$r4,$r5
1c0032b8:	001c4966 	mul.w	$r6,$r11,$r18
1c0032bc:	0010202b 	add.w	$r11,$r1,$r8
1c0032c0:	00101d72 	add.w	$r18,$r11,$r7
1c0032c4:	00103e49 	add.w	$r9,$r18,$r15
1c0032c8:	001c5145 	mul.w	$r5,$r10,$r20
1c0032cc:	00101928 	add.w	$r8,$r9,$r6
1c0032d0:	00101513 	add.w	$r19,$r8,$r5
1c0032d4:	5fff799c 	bne	$r12,$r28,-136(0x3ff78) # 1c00324c <inner_product_TestOneType_u32+0x20c>
1c0032d8:	2880032c 	ld.w	$r12,$r25,0
1c0032dc:	001c318d 	mul.w	$r13,$r12,$r12
1c0032e0:	001c6daa 	mul.w	$r10,$r13,$r27
1c0032e4:	5800b66a 	beq	$r19,$r10,180(0xb4) # 1c003398 <inner_product_TestOneType_u32+0x358>
1c0032e8:	00150345 	move	$r5,$r26
1c0032ec:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c0032f0:	02b45084 	addi.w	$r4,$r4,-748(0xd14)
1c0032f4:	542abc00 	bl	10940(0x2abc) # 1c005db0 <printf>
1c0032f8:	28800311 	ld.w	$r17,$r24,0
1c0032fc:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c003300:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c003304:	63fe4fb1 	blt	$r29,$r17,-436(0x3fe4c) # 1c003150 <inner_product_TestOneType_u32+0x110>
1c003308:	1c000fbe 	pcaddu12i	$r30,125(0x7d)
1c00330c:	288003de 	ld.w	$r30,$r30,0
1c003310:	5432b000 	bl	12976(0x32b0) # 1c0065c0 <get_clock>
1c003314:	288003df 	ld.w	$r31,$r30,0
1c003318:	00150099 	move	$r25,$r4
1c00331c:	14001e98 	lu12i.w	$r24,244(0xf4)
1c003320:	1400003a 	lu12i.w	$r26,1(0x1)
1c003324:	00117f34 	sub.w	$r20,$r25,$r31
1c003328:	0389031b 	ori	$r27,$r24,0x240
1c00332c:	1c000fbc 	pcaddu12i	$r28,125(0x7d)
1c003330:	28bf639c 	ld.w	$r28,$r28,-40(0xfd8)
1c003334:	00216e87 	div.wu	$r7,$r20,$r27
1c003338:	5c000b60 	bne	$r27,$r0,8(0x8) # 1c003340 <inner_product_TestOneType_u32+0x300>
1c00333c:	002a0007 	break	0x7
1c003340:	03bd0346 	ori	$r6,$r26,0xf40
1c003344:	1c000fa5 	pcaddu12i	$r5,125(0x7d)
1c003348:	02b620a5 	addi.w	$r5,$r5,-632(0xd88)
1c00334c:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c003350:	02b31084 	addi.w	$r4,$r4,-828(0xcc4)
1c003354:	29800399 	st.w	$r25,$r28,0
1c003358:	542a5800 	bl	10840(0x2a58) # 1c005db0 <printf>
1c00335c:	02bf42c3 	addi.w	$r3,$r22,-48(0xfd0)
1c003360:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003364:	001502e4 	move	$r4,$r23
1c003368:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00336c:	28809077 	ld.w	$r23,$r3,36(0x24)
1c003370:	28808078 	ld.w	$r24,$r3,32(0x20)
1c003374:	28807079 	ld.w	$r25,$r3,28(0x1c)
1c003378:	2880607a 	ld.w	$r26,$r3,24(0x18)
1c00337c:	2880507b 	ld.w	$r27,$r3,20(0x14)
1c003380:	2880407c 	ld.w	$r28,$r3,16(0x10)
1c003384:	2880307d 	ld.w	$r29,$r3,12(0xc)
1c003388:	2880207e 	ld.w	$r30,$r3,8(0x8)
1c00338c:	2880107f 	ld.w	$r31,$r3,4(0x4)
1c003390:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003394:	4c000020 	jirl	$r0,$r1,0
1c003398:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c00339c:	63fdb7b1 	blt	$r29,$r17,-588(0x3fdb4) # 1c003150 <inner_product_TestOneType_u32+0x110>
1c0033a0:	53ff6bff 	b	-152(0xfffff68) # 1c003308 <inner_product_TestOneType_u32+0x2c8>
1c0033a4:	03400000 	andi	$r0,$r0,0x0
1c0033a8:	03400000 	andi	$r0,$r0,0x0
1c0033ac:	03400000 	andi	$r0,$r0,0x0

1c0033b0 <shell16_main>:
shell16_main():
1c0033b0:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c0033b4:	29813061 	st.w	$r1,$r3,76(0x4c)
1c0033b8:	29812076 	st.w	$r22,$r3,72(0x48)
1c0033bc:	29811077 	st.w	$r23,$r3,68(0x44)
1c0033c0:	02814076 	addi.w	$r22,$r3,80(0x50)
1c0033c4:	29810078 	st.w	$r24,$r3,64(0x40)
1c0033c8:	2980f079 	st.w	$r25,$r3,60(0x3c)
1c0033cc:	2980e07a 	st.w	$r26,$r3,56(0x38)
1c0033d0:	2980d07b 	st.w	$r27,$r3,52(0x34)
1c0033d4:	2980c07c 	st.w	$r28,$r3,48(0x30)
1c0033d8:	2980a07e 	st.w	$r30,$r3,40(0x28)
1c0033dc:	2980907f 	st.w	$r31,$r3,36(0x24)
1c0033e0:	15ffffcc 	lu12i.w	$r12,-2(0xffffe)
1c0033e4:	2980b07d 	st.w	$r29,$r3,44(0x2c)
1c0033e8:	1c000fbb 	pcaddu12i	$r27,125(0x7d)
1c0033ec:	02bc237b 	addi.w	$r27,$r27,-248(0xf08)
1c0033f0:	03830181 	ori	$r1,$r12,0xc0
1c0033f4:	2800037a 	ld.b	$r26,$r27,0
1c0033f8:	0015007c 	move	$r28,$r3
1c0033fc:	00100463 	add.w	$r3,$r3,$r1
1c003400:	1400003e 	lu12i.w	$r30,1(0x1)
1c003404:	0015007f 	move	$r31,$r3
1c003408:	03bd03c6 	ori	$r6,$r30,0xf40
1c00340c:	00100463 	add.w	$r3,$r3,$r1
1c003410:	00150345 	move	$r5,$r26
1c003414:	001503e4 	move	$r4,$r31
1c003418:	542fa800 	bl	12200(0x2fa8) # 1c0063c0 <memset>
1c00341c:	03bd03c6 	ori	$r6,$r30,0xf40
1c003420:	00150345 	move	$r5,$r26
1c003424:	00150064 	move	$r4,$r3
1c003428:	542f9800 	bl	12184(0x2f98) # 1c0063c0 <memset>
1c00342c:	54319400 	bl	12692(0x3194) # 1c0065c0 <get_clock>
1c003430:	1c000fb8 	pcaddu12i	$r24,125(0x7d)
1c003434:	02bb2318 	addi.w	$r24,$r24,-312(0xec8)
1c003438:	28800312 	ld.w	$r18,$r24,0
1c00343c:	1c000fb9 	pcaddu12i	$r25,125(0x7d)
1c003440:	28bb3339 	ld.w	$r25,$r25,-308(0xecc)
1c003444:	29800324 	st.w	$r4,$r25,0
1c003448:	00150017 	move	$r23,$r0
1c00344c:	64021412 	bge	$r0,$r18,532(0x214) # 1c003660 <shell16_main+0x2b0>
1c003450:	03bd03c4 	ori	$r4,$r30,0xf40
1c003454:	0015007d 	move	$r29,$r3
1c003458:	0015001a 	move	$r26,$r0
1c00345c:	001013fe 	add.w	$r30,$r31,$r4
1c003460:	00117fcf 	sub.w	$r15,$r30,$r31
1c003464:	03401de5 	andi	$r5,$r15,0x7
1c003468:	001503ec 	move	$r12,$r31
1c00346c:	001503ad 	move	$r13,$r29
1c003470:	0015000e 	move	$r14,$r0
1c003474:	580130a0 	beq	$r5,$r0,304(0x130) # 1c0035a4 <shell16_main+0x1f4>
1c003478:	02800413 	addi.w	$r19,$r0,1(0x1)
1c00347c:	580100b3 	beq	$r5,$r19,256(0x100) # 1c00357c <shell16_main+0x1cc>
1c003480:	02800806 	addi.w	$r6,$r0,2(0x2)
1c003484:	5800d4a6 	beq	$r5,$r6,212(0xd4) # 1c003558 <shell16_main+0x1a8>
1c003488:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c00348c:	5800a8a7 	beq	$r5,$r7,168(0xa8) # 1c003534 <shell16_main+0x184>
1c003490:	02801008 	addi.w	$r8,$r0,4(0x4)
1c003494:	58007ca8 	beq	$r5,$r8,124(0x7c) # 1c003510 <shell16_main+0x160>
1c003498:	02801409 	addi.w	$r9,$r0,5(0x5)
1c00349c:	580050a9 	beq	$r5,$r9,80(0x50) # 1c0034ec <shell16_main+0x13c>
1c0034a0:	0280180a 	addi.w	$r10,$r0,6(0x6)
1c0034a4:	580024aa 	beq	$r5,$r10,36(0x24) # 1c0034c8 <shell16_main+0x118>
1c0034a8:	2a0003ee 	ld.bu	$r14,$r31,0
1c0034ac:	2a0003ab 	ld.bu	$r11,$r29,0
1c0034b0:	028007ec 	addi.w	$r12,$r31,1(0x1)
1c0034b4:	028007ad 	addi.w	$r13,$r29,1(0x1)
1c0034b8:	001c2dd0 	mul.w	$r16,$r14,$r11
1c0034bc:	293efad0 	st.b	$r16,$r22,-66(0xfbe)
1c0034c0:	283eface 	ld.b	$r14,$r22,-66(0xfbe)
1c0034c4:	29bf32d0 	st.w	$r16,$r22,-52(0xfcc)
1c0034c8:	2a000191 	ld.bu	$r17,$r12,0
1c0034cc:	2a0001b4 	ld.bu	$r20,$r13,0
1c0034d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0034d4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0034d8:	001c5221 	mul.w	$r1,$r17,$r20
1c0034dc:	00103824 	add.w	$r4,$r1,$r14
1c0034e0:	293efac4 	st.b	$r4,$r22,-66(0xfbe)
1c0034e4:	283eface 	ld.b	$r14,$r22,-66(0xfbe)
1c0034e8:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c0034ec:	2a00018f 	ld.bu	$r15,$r12,0
1c0034f0:	2a0001a5 	ld.bu	$r5,$r13,0
1c0034f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0034f8:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0034fc:	001c15f3 	mul.w	$r19,$r15,$r5
1c003500:	00103a66 	add.w	$r6,$r19,$r14
1c003504:	293efac6 	st.b	$r6,$r22,-66(0xfbe)
1c003508:	283eface 	ld.b	$r14,$r22,-66(0xfbe)
1c00350c:	29bf32c6 	st.w	$r6,$r22,-52(0xfcc)
1c003510:	2a000187 	ld.bu	$r7,$r12,0
1c003514:	2a0001a8 	ld.bu	$r8,$r13,0
1c003518:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00351c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c003520:	001c20e9 	mul.w	$r9,$r7,$r8
1c003524:	0010392a 	add.w	$r10,$r9,$r14
1c003528:	293efaca 	st.b	$r10,$r22,-66(0xfbe)
1c00352c:	283eface 	ld.b	$r14,$r22,-66(0xfbe)
1c003530:	29bf32ca 	st.w	$r10,$r22,-52(0xfcc)
1c003534:	2a00018b 	ld.bu	$r11,$r12,0
1c003538:	2a0001b0 	ld.bu	$r16,$r13,0
1c00353c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003540:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c003544:	001c4171 	mul.w	$r17,$r11,$r16
1c003548:	00103a2e 	add.w	$r14,$r17,$r14
1c00354c:	293eface 	st.b	$r14,$r22,-66(0xfbe)
1c003550:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c003554:	283eface 	ld.b	$r14,$r22,-66(0xfbe)
1c003558:	2a000194 	ld.bu	$r20,$r12,0
1c00355c:	2a0001a1 	ld.bu	$r1,$r13,0
1c003560:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003564:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c003568:	001c0684 	mul.w	$r4,$r20,$r1
1c00356c:	0010388f 	add.w	$r15,$r4,$r14
1c003570:	293efacf 	st.b	$r15,$r22,-66(0xfbe)
1c003574:	283eface 	ld.b	$r14,$r22,-66(0xfbe)
1c003578:	29bf32cf 	st.w	$r15,$r22,-52(0xfcc)
1c00357c:	2a000185 	ld.bu	$r5,$r12,0
1c003580:	2a0001b3 	ld.bu	$r19,$r13,0
1c003584:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003588:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c00358c:	001c4ca6 	mul.w	$r6,$r5,$r19
1c003590:	001038c7 	add.w	$r7,$r6,$r14
1c003594:	293efac7 	st.b	$r7,$r22,-66(0xfbe)
1c003598:	29bf32c7 	st.w	$r7,$r22,-52(0xfcc)
1c00359c:	283eface 	ld.b	$r14,$r22,-66(0xfbe)
1c0035a0:	58009fcc 	beq	$r30,$r12,156(0x9c) # 1c00363c <shell16_main+0x28c>
1c0035a4:	2a000188 	ld.bu	$r8,$r12,0
1c0035a8:	2a0001a9 	ld.bu	$r9,$r13,0
1c0035ac:	2a00058b 	ld.bu	$r11,$r12,1(0x1)
1c0035b0:	2a0005b0 	ld.bu	$r16,$r13,1(0x1)
1c0035b4:	2a000994 	ld.bu	$r20,$r12,2(0x2)
1c0035b8:	001c250a 	mul.w	$r10,$r8,$r9
1c0035bc:	2a0009a1 	ld.bu	$r1,$r13,2(0x2)
1c0035c0:	2a000d85 	ld.bu	$r5,$r12,3(0x3)
1c0035c4:	2a000daf 	ld.bu	$r15,$r13,3(0x3)
1c0035c8:	2a001187 	ld.bu	$r7,$r12,4(0x4)
1c0035cc:	2a0011a6 	ld.bu	$r6,$r13,4(0x4)
1c0035d0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0035d4:	028021ad 	addi.w	$r13,$r13,8(0x8)
1c0035d8:	001c4171 	mul.w	$r17,$r11,$r16
1c0035dc:	0010394e 	add.w	$r14,$r10,$r14
1c0035e0:	001c0684 	mul.w	$r4,$r20,$r1
1c0035e4:	001045c9 	add.w	$r9,$r14,$r17
1c0035e8:	2a3ff5b4 	ld.bu	$r20,$r13,-3(0xffd)
1c0035ec:	2a3ff591 	ld.bu	$r17,$r12,-3(0xffd)
1c0035f0:	001c3cb3 	mul.w	$r19,$r5,$r15
1c0035f4:	0010112a 	add.w	$r10,$r9,$r4
1c0035f8:	2a3ff9a5 	ld.bu	$r5,$r13,-2(0xffe)
1c0035fc:	2a3ff984 	ld.bu	$r4,$r12,-2(0xffe)
1c003600:	001c18e8 	mul.w	$r8,$r7,$r6
1c003604:	00104d4b 	add.w	$r11,$r10,$r19
1c003608:	2a3ffda7 	ld.bu	$r7,$r13,-1(0xfff)
1c00360c:	2a3ffd93 	ld.bu	$r19,$r12,-1(0xfff)
1c003610:	001c5221 	mul.w	$r1,$r17,$r20
1c003614:	00102170 	add.w	$r16,$r11,$r8
1c003618:	001c148f 	mul.w	$r15,$r4,$r5
1c00361c:	00100608 	add.w	$r8,$r16,$r1
1c003620:	001c1e66 	mul.w	$r6,$r19,$r7
1c003624:	00103d0e 	add.w	$r14,$r8,$r15
1c003628:	001019c9 	add.w	$r9,$r14,$r6
1c00362c:	293efac9 	st.b	$r9,$r22,-66(0xfbe)
1c003630:	29bf32c9 	st.w	$r9,$r22,-52(0xfcc)
1c003634:	283eface 	ld.b	$r14,$r22,-66(0xfbe)
1c003638:	5fff6fcc 	bne	$r30,$r12,-148(0x3ff6c) # 1c0035a4 <shell16_main+0x1f4>
1c00363c:	2a00036c 	ld.bu	$r12,$r27,0
1c003640:	001c318d 	mul.w	$r13,$r12,$r12
1c003644:	004099aa 	slli.w	$r10,$r13,0x6
1c003648:	293efaca 	st.b	$r10,$r22,-66(0xfbe)
1c00364c:	283efacb 	ld.b	$r11,$r22,-66(0xfbe)
1c003650:	29bf32ca 	st.w	$r10,$r22,-52(0xfcc)
1c003654:	5c0a4dcb 	bne	$r14,$r11,2636(0xa4c) # 1c0040a0 <shell16_main+0xcf0>
1c003658:	0280075a 	addi.w	$r26,$r26,1(0x1)
1c00365c:	63fe0752 	blt	$r26,$r18,-508(0x3fe04) # 1c003460 <shell16_main+0xb0>
1c003660:	542f6000 	bl	12128(0x2f60) # 1c0065c0 <get_clock>
1c003664:	2880033e 	ld.w	$r30,$r25,0
1c003668:	14001e90 	lu12i.w	$r16,244(0xf4)
1c00366c:	0015009f 	move	$r31,$r4
1c003670:	1400003d 	lu12i.w	$r29,1(0x1)
1c003674:	00117bf4 	sub.w	$r20,$r31,$r30
1c003678:	03890211 	ori	$r17,$r16,0x240
1c00367c:	03bd03a6 	ori	$r6,$r29,0xf40
1c003680:	00214687 	div.wu	$r7,$r20,$r17
1c003684:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c00368c <shell16_main+0x2dc>
1c003688:	002a0007 	break	0x7
1c00368c:	1c000fa5 	pcaddu12i	$r5,125(0x7d)
1c003690:	02a670a5 	addi.w	$r5,$r5,-1636(0x99c)
1c003694:	1c000fba 	pcaddu12i	$r26,125(0x7d)
1c003698:	28b1c35a 	ld.w	$r26,$r26,-912(0xc70)
1c00369c:	1c000fa4 	pcaddu12i	$r4,125(0x7d)
1c0036a0:	02a5d084 	addi.w	$r4,$r4,-1676(0x974)
1c0036a4:	2980035f 	st.w	$r31,$r26,0
1c0036a8:	54270800 	bl	9992(0x2708) # 1c005db0 <printf>
1c0036ac:	15ffffc4 	lu12i.w	$r4,-2(0xffffe)
1c0036b0:	03830085 	ori	$r5,$r4,0xc0
1c0036b4:	2a00037e 	ld.bu	$r30,$r27,0
1c0036b8:	00150383 	move	$r3,$r28
1c0036bc:	00101463 	add.w	$r3,$r3,$r5
1c0036c0:	0015007f 	move	$r31,$r3
1c0036c4:	00101463 	add.w	$r3,$r3,$r5
1c0036c8:	0015006f 	move	$r15,$r3
1c0036cc:	03bd03a6 	ori	$r6,$r29,0xf40
1c0036d0:	001503c5 	move	$r5,$r30
1c0036d4:	001503e4 	move	$r4,$r31
1c0036d8:	29bf32cf 	st.w	$r15,$r22,-52(0xfcc)
1c0036dc:	542ce400 	bl	11492(0x2ce4) # 1c0063c0 <memset>
1c0036e0:	03bd03a6 	ori	$r6,$r29,0xf40
1c0036e4:	001503c5 	move	$r5,$r30
1c0036e8:	00150064 	move	$r4,$r3
1c0036ec:	542cd400 	bl	11476(0x2cd4) # 1c0063c0 <memset>
1c0036f0:	542ed000 	bl	11984(0x2ed0) # 1c0065c0 <get_clock>
1c0036f4:	28800314 	ld.w	$r20,$r24,0
1c0036f8:	29800324 	st.w	$r4,$r25,0
1c0036fc:	6401a014 	bge	$r0,$r20,416(0x1a0) # 1c00389c <shell16_main+0x4ec>
1c003700:	28bf32d1 	ld.w	$r17,$r22,-52(0xfcc)
1c003704:	03bd03a1 	ori	$r1,$r29,0xf40
1c003708:	00150012 	move	$r18,$r0
1c00370c:	0015001e 	move	$r30,$r0
1c003710:	001007f0 	add.w	$r16,$r31,$r1
1c003714:	1c000fbd 	pcaddu12i	$r29,125(0x7d)
1c003718:	02a3b3bd 	addi.w	$r29,$r29,-1812(0x8ec)
1c00371c:	03400000 	andi	$r0,$r0,0x0
1c003720:	00150013 	move	$r19,$r0
1c003724:	001503ec 	move	$r12,$r31
1c003728:	0015022d 	move	$r13,$r17
1c00372c:	00150007 	move	$r7,$r0
1c003730:	5800aa60 	beq	$r19,$r0,168(0xa8) # 1c0037d8 <shell16_main+0x428>
1c003734:	2a0003e8 	ld.bu	$r8,$r31,0
1c003738:	2a000226 	ld.bu	$r6,$r17,0
1c00373c:	2a0007ec 	ld.bu	$r12,$r31,1(0x1)
1c003740:	2a00062e 	ld.bu	$r14,$r17,1(0x1)
1c003744:	001c1909 	mul.w	$r9,$r8,$r6
1c003748:	2a000bea 	ld.bu	$r10,$r31,2(0x2)
1c00374c:	2a000a2b 	ld.bu	$r11,$r17,2(0x2)
1c003750:	2a000fe4 	ld.bu	$r4,$r31,3(0x3)
1c003754:	2a000e25 	ld.bu	$r5,$r17,3(0x3)
1c003758:	001c398d 	mul.w	$r13,$r12,$r14
1c00375c:	293efac9 	st.b	$r9,$r22,-66(0xfbe)
1c003760:	2a3efad3 	ld.bu	$r19,$r22,-66(0xfbe)
1c003764:	001c2d47 	mul.w	$r7,$r10,$r11
1c003768:	00103668 	add.w	$r8,$r19,$r13
1c00376c:	293efac8 	st.b	$r8,$r22,-66(0xfbe)
1c003770:	2a3efac6 	ld.bu	$r6,$r22,-66(0xfbe)
1c003774:	2a0013ea 	ld.bu	$r10,$r31,4(0x4)
1c003778:	2a00122b 	ld.bu	$r11,$r17,4(0x4)
1c00377c:	001c148f 	mul.w	$r15,$r4,$r5
1c003780:	00101cc9 	add.w	$r9,$r6,$r7
1c003784:	293efac9 	st.b	$r9,$r22,-66(0xfbe)
1c003788:	2a3efacc 	ld.bu	$r12,$r22,-66(0xfbe)
1c00378c:	2a0017e4 	ld.bu	$r4,$r31,5(0x5)
1c003790:	2a001625 	ld.bu	$r5,$r17,5(0x5)
1c003794:	2a001be9 	ld.bu	$r9,$r31,6(0x6)
1c003798:	001c2d47 	mul.w	$r7,$r10,$r11
1c00379c:	00103d8e 	add.w	$r14,$r12,$r15
1c0037a0:	293eface 	st.b	$r14,$r22,-66(0xfbe)
1c0037a4:	2a3efacd 	ld.bu	$r13,$r22,-66(0xfbe)
1c0037a8:	2a001a2e 	ld.bu	$r14,$r17,6(0x6)
1c0037ac:	02801fec 	addi.w	$r12,$r31,7(0x7)
1c0037b0:	001c148f 	mul.w	$r15,$r4,$r5
1c0037b4:	00101da1 	add.w	$r1,$r13,$r7
1c0037b8:	293efac1 	st.b	$r1,$r22,-66(0xfbe)
1c0037bc:	2a3efad3 	ld.bu	$r19,$r22,-66(0xfbe)
1c0037c0:	02801e2d 	addi.w	$r13,$r17,7(0x7)
1c0037c4:	00103e68 	add.w	$r8,$r19,$r15
1c0037c8:	001c392a 	mul.w	$r10,$r9,$r14
1c0037cc:	293efac8 	st.b	$r8,$r22,-66(0xfbe)
1c0037d0:	2a3efac6 	ld.bu	$r6,$r22,-66(0xfbe)
1c0037d4:	50008800 	b	136(0x88) # 1c00385c <shell16_main+0x4ac>
1c0037d8:	2a000185 	ld.bu	$r5,$r12,0
1c0037dc:	2a0001b3 	ld.bu	$r19,$r13,0
1c0037e0:	2a00058f 	ld.bu	$r15,$r12,1(0x1)
1c0037e4:	2a0005a9 	ld.bu	$r9,$r13,1(0x1)
1c0037e8:	001c4ca8 	mul.w	$r8,$r5,$r19
1c0037ec:	2a000981 	ld.bu	$r1,$r12,2(0x2)
1c0037f0:	2a0009a6 	ld.bu	$r6,$r13,2(0x2)
1c0037f4:	2a000d84 	ld.bu	$r4,$r12,3(0x3)
1c0037f8:	2a000da5 	ld.bu	$r5,$r13,3(0x3)
1c0037fc:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c003800:	028021ad 	addi.w	$r13,$r13,8(0x8)
1c003804:	001c25eb 	mul.w	$r11,$r15,$r9
1c003808:	001020e7 	add.w	$r7,$r7,$r8
1c00380c:	2a3ff189 	ld.bu	$r9,$r12,-4(0xffc)
1c003810:	001c182a 	mul.w	$r10,$r1,$r6
1c003814:	00102cee 	add.w	$r14,$r7,$r11
1c003818:	2a3ff1ab 	ld.bu	$r11,$r13,-4(0xffc)
1c00381c:	2a3ff5a1 	ld.bu	$r1,$r13,-3(0xffd)
1c003820:	001c1493 	mul.w	$r19,$r4,$r5
1c003824:	001029c8 	add.w	$r8,$r14,$r10
1c003828:	2a3ff58e 	ld.bu	$r14,$r12,-3(0xffd)
1c00382c:	2a3ff984 	ld.bu	$r4,$r12,-2(0xffe)
1c003830:	2a3ff9a5 	ld.bu	$r5,$r13,-2(0xffe)
1c003834:	001c2d27 	mul.w	$r7,$r9,$r11
1c003838:	00104d0f 	add.w	$r15,$r8,$r19
1c00383c:	2a3ffda9 	ld.bu	$r9,$r13,-1(0xfff)
1c003840:	001c05c6 	mul.w	$r6,$r14,$r1
1c003844:	00101dea 	add.w	$r10,$r15,$r7
1c003848:	2a3ffd8f 	ld.bu	$r15,$r12,-1(0xfff)
1c00384c:	001c1488 	mul.w	$r8,$r4,$r5
1c003850:	00101953 	add.w	$r19,$r10,$r6
1c003854:	001c25ea 	mul.w	$r10,$r15,$r9
1c003858:	00102266 	add.w	$r6,$r19,$r8
1c00385c:	001028cb 	add.w	$r11,$r6,$r10
1c003860:	293efacb 	st.b	$r11,$r22,-66(0xfbe)
1c003864:	29bf32cb 	st.w	$r11,$r22,-52(0xfcc)
1c003868:	2a3efac7 	ld.bu	$r7,$r22,-66(0xfbe)
1c00386c:	5fff6e0c 	bne	$r16,$r12,-148(0x3ff6c) # 1c0037d8 <shell16_main+0x428>
1c003870:	2a000364 	ld.bu	$r4,$r27,0
1c003874:	001c1085 	mul.w	$r5,$r4,$r4
1c003878:	004098af 	slli.w	$r15,$r5,0x6
1c00387c:	293efacf 	st.b	$r15,$r22,-66(0xfbe)
1c003880:	2a3efac1 	ld.bu	$r1,$r22,-66(0xfbe)
1c003884:	29bf32cf 	st.w	$r15,$r22,-52(0xfcc)
1c003888:	001104f3 	sub.w	$r19,$r7,$r1
1c00388c:	60088413 	blt	$r0,$r19,2180(0x884) # 1c004110 <shell16_main+0xd60>
1c003890:	02800652 	addi.w	$r18,$r18,1(0x1)
1c003894:	63fe8e54 	blt	$r18,$r20,-372(0x3fe8c) # 1c003720 <shell16_main+0x370>
1c003898:	00107af7 	add.w	$r23,$r23,$r30
1c00389c:	542d2400 	bl	11556(0x2d24) # 1c0065c0 <get_clock>
1c0038a0:	2880032c 	ld.w	$r12,$r25,0
1c0038a4:	00150089 	move	$r9,$r4
1c0038a8:	14001e8e 	lu12i.w	$r14,244(0xf4)
1c0038ac:	14000026 	lu12i.w	$r6,1(0x1)
1c0038b0:	038901ca 	ori	$r10,$r14,0x240
1c0038b4:	1c000f85 	pcaddu12i	$r5,124(0x7c)
1c0038b8:	029e50a5 	addi.w	$r5,$r5,1940(0x794)
1c0038bc:	0011312b 	sub.w	$r11,$r9,$r12
1c0038c0:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c0038c4:	029d4084 	addi.w	$r4,$r4,1872(0x750)
1c0038c8:	00212967 	div.wu	$r7,$r11,$r10
1c0038cc:	5c000940 	bne	$r10,$r0,8(0x8) # 1c0038d4 <shell16_main+0x524>
1c0038d0:	002a0007 	break	0x7
1c0038d4:	03bd00c6 	ori	$r6,$r6,0xf40
1c0038d8:	29800349 	st.w	$r9,$r26,0
1c0038dc:	5424d400 	bl	9428(0x24d4) # 1c005db0 <printf>
1c0038e0:	15ffff8d 	lu12i.w	$r13,-4(0xffffc)
1c0038e4:	038601b0 	ori	$r16,$r13,0x180
1c0038e8:	00150383 	move	$r3,$r28
1c0038ec:	00104063 	add.w	$r3,$r3,$r16
1c0038f0:	0015007e 	move	$r30,$r3
1c0038f4:	1c000fbb 	pcaddu12i	$r27,125(0x7d)
1c0038f8:	02a7e37b 	addi.w	$r27,$r27,-1544(0x9f8)
1c0038fc:	00104063 	add.w	$r3,$r3,$r16
1c003900:	00150011 	move	$r17,$r0
1c003904:	2840037d 	ld.h	$r29,$r27,0
1c003908:	0015007f 	move	$r31,$r3
1c00390c:	001503c5 	move	$r5,$r30
1c003910:	58000e20 	beq	$r17,$r0,12(0xc) # 1c00391c <shell16_main+0x56c>
1c003914:	02800bc5 	addi.w	$r5,$r30,2(0x2)
1c003918:	294003dd 	st.h	$r29,$r30,0
1c00391c:	297efadd 	st.h	$r29,$r22,-66(0xfbe)
1c003920:	2a7efad2 	ld.hu	$r18,$r22,-66(0xfbe)
1c003924:	14000024 	lu12i.w	$r4,1(0x1)
1c003928:	03bd008f 	ori	$r15,$r4,0xf40
1c00392c:	004085e1 	slli.w	$r1,$r15,0x1
1c003930:	0040c248 	slli.w	$r8,$r18,0x10
1c003934:	00150014 	move	$r20,$r0
1c003938:	29bf32dd 	st.w	$r29,$r22,-52(0xfcc)
1c00393c:	001503cc 	move	$r12,$r30
1c003940:	00107829 	add.w	$r9,$r1,$r30
1c003944:	00152246 	or	$r6,$r18,$r8
1c003948:	58002a80 	beq	$r20,$r0,40(0x28) # 1c003970 <shell16_main+0x5c0>
1c00394c:	298003c6 	st.w	$r6,$r30,0
1c003950:	298013c6 	st.w	$r6,$r30,4(0x4)
1c003954:	298023c6 	st.w	$r6,$r30,8(0x8)
1c003958:	298033c6 	st.w	$r6,$r30,12(0xc)
1c00395c:	298043c6 	st.w	$r6,$r30,16(0x10)
1c003960:	298053c6 	st.w	$r6,$r30,20(0x14)
1c003964:	298063c6 	st.w	$r6,$r30,24(0x18)
1c003968:	028073cc 	addi.w	$r12,$r30,28(0x1c)
1c00396c:	58002d2c 	beq	$r9,$r12,44(0x2c) # 1c003998 <shell16_main+0x5e8>
1c003970:	29800186 	st.w	$r6,$r12,0
1c003974:	29801186 	st.w	$r6,$r12,4(0x4)
1c003978:	29802186 	st.w	$r6,$r12,8(0x8)
1c00397c:	29803186 	st.w	$r6,$r12,12(0xc)
1c003980:	29804186 	st.w	$r6,$r12,16(0x10)
1c003984:	29805186 	st.w	$r6,$r12,20(0x14)
1c003988:	29806186 	st.w	$r6,$r12,24(0x18)
1c00398c:	29807186 	st.w	$r6,$r12,28(0x1c)
1c003990:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c003994:	5fffdd2c 	bne	$r9,$r12,-36(0x3ffdc) # 1c003970 <shell16_main+0x5c0>
1c003998:	004085ee 	slli.w	$r14,$r15,0x1
1c00399c:	001038ab 	add.w	$r11,$r5,$r14
1c0039a0:	580009ef 	beq	$r15,$r15,8(0x8) # 1c0039a8 <shell16_main+0x5f8>
1c0039a4:	2940017d 	st.h	$r29,$r11,0
1c0039a8:	004487e7 	srli.w	$r7,$r31,0x1
1c0039ac:	034004ed 	andi	$r13,$r7,0x1
1c0039b0:	001503f0 	move	$r16,$r31
1c0039b4:	58000da0 	beq	$r13,$r0,12(0xc) # 1c0039c0 <shell16_main+0x610>
1c0039b8:	02800bf0 	addi.w	$r16,$r31,2(0x2)
1c0039bc:	294003fd 	st.h	$r29,$r31,0
1c0039c0:	14000031 	lu12i.w	$r17,1(0x1)
1c0039c4:	03bd0224 	ori	$r4,$r17,0xf40
1c0039c8:	00113494 	sub.w	$r20,$r4,$r13
1c0039cc:	0044868f 	srli.w	$r15,$r20,0x1
1c0039d0:	004089e1 	slli.w	$r1,$r15,0x2
1c0039d4:	02bff033 	addi.w	$r19,$r1,-4(0xffc)
1c0039d8:	00448a68 	srli.w	$r8,$r19,0x2
1c0039dc:	004085a5 	slli.w	$r5,$r13,0x1
1c0039e0:	02800509 	addi.w	$r9,$r8,1(0x1)
1c0039e4:	001017ec 	add.w	$r12,$r31,$r5
1c0039e8:	03401d2a 	andi	$r10,$r9,0x7
1c0039ec:	00103032 	add.w	$r18,$r1,$r12
1c0039f0:	58007140 	beq	$r10,$r0,112(0x70) # 1c003a60 <shell16_main+0x6b0>
1c0039f4:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0039f8:	58005d4e 	beq	$r10,$r14,92(0x5c) # 1c003a54 <shell16_main+0x6a4>
1c0039fc:	0280080b 	addi.w	$r11,$r0,2(0x2)
1c003a00:	58004d4b 	beq	$r10,$r11,76(0x4c) # 1c003a4c <shell16_main+0x69c>
1c003a04:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c003a08:	58003d47 	beq	$r10,$r7,60(0x3c) # 1c003a44 <shell16_main+0x694>
1c003a0c:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003a10:	58002d4d 	beq	$r10,$r13,44(0x2c) # 1c003a3c <shell16_main+0x68c>
1c003a14:	02801411 	addi.w	$r17,$r0,5(0x5)
1c003a18:	58001d51 	beq	$r10,$r17,28(0x1c) # 1c003a34 <shell16_main+0x684>
1c003a1c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c003a20:	58000d45 	beq	$r10,$r5,12(0xc) # 1c003a2c <shell16_main+0x67c>
1c003a24:	29800186 	st.w	$r6,$r12,0
1c003a28:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003a2c:	29800186 	st.w	$r6,$r12,0
1c003a30:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003a34:	29800186 	st.w	$r6,$r12,0
1c003a38:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003a3c:	29800186 	st.w	$r6,$r12,0
1c003a40:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003a44:	29800186 	st.w	$r6,$r12,0
1c003a48:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003a4c:	29800186 	st.w	$r6,$r12,0
1c003a50:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003a54:	29800186 	st.w	$r6,$r12,0
1c003a58:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003a5c:	58002d92 	beq	$r12,$r18,44(0x2c) # 1c003a88 <shell16_main+0x6d8>
1c003a60:	29800186 	st.w	$r6,$r12,0
1c003a64:	29801186 	st.w	$r6,$r12,4(0x4)
1c003a68:	29802186 	st.w	$r6,$r12,8(0x8)
1c003a6c:	29803186 	st.w	$r6,$r12,12(0xc)
1c003a70:	29804186 	st.w	$r6,$r12,16(0x10)
1c003a74:	29805186 	st.w	$r6,$r12,20(0x14)
1c003a78:	29806186 	st.w	$r6,$r12,24(0x18)
1c003a7c:	29807186 	st.w	$r6,$r12,28(0x1c)
1c003a80:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c003a84:	5fffdd92 	bne	$r12,$r18,-36(0x3ffdc) # 1c003a60 <shell16_main+0x6b0>
1c003a88:	02bff806 	addi.w	$r6,$r0,-2(0xffe)
1c003a8c:	00149a84 	and	$r4,$r20,$r6
1c003a90:	0040848f 	slli.w	$r15,$r4,0x1
1c003a94:	00103e10 	add.w	$r16,$r16,$r15
1c003a98:	58000894 	beq	$r4,$r20,8(0x8) # 1c003aa0 <shell16_main+0x6f0>
1c003a9c:	2940021d 	st.h	$r29,$r16,0
1c003aa0:	542b2000 	bl	11040(0x2b20) # 1c0065c0 <get_clock>
1c003aa4:	28800305 	ld.w	$r5,$r24,0
1c003aa8:	29800324 	st.w	$r4,$r25,0
1c003aac:	64019c05 	bge	$r0,$r5,412(0x19c) # 1c003c48 <shell16_main+0x898>
1c003ab0:	14000061 	lu12i.w	$r1,3(0x3)
1c003ab4:	1400003d 	lu12i.w	$r29,1(0x1)
1c003ab8:	03ba0033 	ori	$r19,$r1,0xe80
1c003abc:	00150012 	move	$r18,$r0
1c003ac0:	00150014 	move	$r20,$r0
1c003ac4:	03bd03bd 	ori	$r29,$r29,0xf40
1c003ac8:	00104fd3 	add.w	$r19,$r30,$r19
1c003acc:	03400000 	andi	$r0,$r0,0x0
1c003ad0:	00150008 	move	$r8,$r0
1c003ad4:	001503ed 	move	$r13,$r31
1c003ad8:	001503c7 	move	$r7,$r30
1c003adc:	00150010 	move	$r16,$r0
1c003ae0:	5800a900 	beq	$r8,$r0,168(0xa8) # 1c003b88 <shell16_main+0x7d8>
1c003ae4:	2a4003c9 	ld.hu	$r9,$r30,0
1c003ae8:	2a4003ea 	ld.hu	$r10,$r31,0
1c003aec:	2a400bc7 	ld.hu	$r7,$r30,2(0x2)
1c003af0:	2a400bee 	ld.hu	$r14,$r31,2(0x2)
1c003af4:	001c292b 	mul.w	$r11,$r9,$r10
1c003af8:	2a4013d1 	ld.hu	$r17,$r30,4(0x4)
1c003afc:	2a4013ec 	ld.hu	$r12,$r31,4(0x4)
1c003b00:	2a401bc4 	ld.hu	$r4,$r30,6(0x6)
1c003b04:	2a401bef 	ld.hu	$r15,$r31,6(0x6)
1c003b08:	001c38ed 	mul.w	$r13,$r7,$r14
1c003b0c:	297efacb 	st.h	$r11,$r22,-66(0xfbe)
1c003b10:	287efac8 	ld.h	$r8,$r22,-66(0xfbe)
1c003b14:	001c3226 	mul.w	$r6,$r17,$r12
1c003b18:	001021a9 	add.w	$r9,$r13,$r8
1c003b1c:	297efac9 	st.h	$r9,$r22,-66(0xfbe)
1c003b20:	287efaca 	ld.h	$r10,$r22,-66(0xfbe)
1c003b24:	2a4023d1 	ld.hu	$r17,$r30,8(0x8)
1c003b28:	2a4023ec 	ld.hu	$r12,$r31,8(0x8)
1c003b2c:	001c3c90 	mul.w	$r16,$r4,$r15
1c003b30:	001028cb 	add.w	$r11,$r6,$r10
1c003b34:	297efacb 	st.h	$r11,$r22,-66(0xfbe)
1c003b38:	287efac7 	ld.h	$r7,$r22,-66(0xfbe)
1c003b3c:	2a402bcf 	ld.hu	$r15,$r30,10(0xa)
1c003b40:	2a402be6 	ld.hu	$r6,$r31,10(0xa)
1c003b44:	2a4033cb 	ld.hu	$r11,$r30,12(0xc)
1c003b48:	001c3224 	mul.w	$r4,$r17,$r12
1c003b4c:	00101e0e 	add.w	$r14,$r16,$r7
1c003b50:	297eface 	st.h	$r14,$r22,-66(0xfbe)
1c003b54:	287efacd 	ld.h	$r13,$r22,-66(0xfbe)
1c003b58:	2a4033ee 	ld.hu	$r14,$r31,12(0xc)
1c003b5c:	02803bc7 	addi.w	$r7,$r30,14(0xe)
1c003b60:	001c19f0 	mul.w	$r16,$r15,$r6
1c003b64:	00103481 	add.w	$r1,$r4,$r13
1c003b68:	297efac1 	st.h	$r1,$r22,-66(0xfbe)
1c003b6c:	287efac8 	ld.h	$r8,$r22,-66(0xfbe)
1c003b70:	02803bed 	addi.w	$r13,$r31,14(0xe)
1c003b74:	00102209 	add.w	$r9,$r16,$r8
1c003b78:	001c3971 	mul.w	$r17,$r11,$r14
1c003b7c:	297efac9 	st.h	$r9,$r22,-66(0xfbe)
1c003b80:	287efaca 	ld.h	$r10,$r22,-66(0xfbe)
1c003b84:	50008800 	b	136(0x88) # 1c003c0c <shell16_main+0x85c>
1c003b88:	2a4000e1 	ld.hu	$r1,$r7,0
1c003b8c:	2a4001b1 	ld.hu	$r17,$r13,0
1c003b90:	2a4008ec 	ld.hu	$r12,$r7,2(0x2)
1c003b94:	2a4009a4 	ld.hu	$r4,$r13,2(0x2)
1c003b98:	001c442a 	mul.w	$r10,$r1,$r17
1c003b9c:	2a4010e9 	ld.hu	$r9,$r7,4(0x4)
1c003ba0:	2a4011ab 	ld.hu	$r11,$r13,4(0x4)
1c003ba4:	2a4018e1 	ld.hu	$r1,$r7,6(0x6)
1c003ba8:	2a4019a6 	ld.hu	$r6,$r13,6(0x6)
1c003bac:	028040e7 	addi.w	$r7,$r7,16(0x10)
1c003bb0:	028041ad 	addi.w	$r13,$r13,16(0x10)
1c003bb4:	001c118f 	mul.w	$r15,$r12,$r4
1c003bb8:	00104150 	add.w	$r16,$r10,$r16
1c003bbc:	2a7fe0e4 	ld.hu	$r4,$r7,-8(0xff8)
1c003bc0:	00103e08 	add.w	$r8,$r16,$r15
1c003bc4:	001c2d2e 	mul.w	$r14,$r9,$r11
1c003bc8:	2a7fe1af 	ld.hu	$r15,$r13,-8(0xff8)
1c003bcc:	2a7fe9a9 	ld.hu	$r9,$r13,-6(0xffa)
1c003bd0:	001c1831 	mul.w	$r17,$r1,$r6
1c003bd4:	0010390a 	add.w	$r10,$r8,$r14
1c003bd8:	2a7fe8e8 	ld.hu	$r8,$r7,-6(0xffa)
1c003bdc:	2a7ff0e6 	ld.hu	$r6,$r7,-4(0xffc)
1c003be0:	001c3c90 	mul.w	$r16,$r4,$r15
1c003be4:	0010454c 	add.w	$r12,$r10,$r17
1c003be8:	2a7ff1b1 	ld.hu	$r17,$r13,-4(0xffc)
1c003bec:	2a7ff9a4 	ld.hu	$r4,$r13,-2(0xffe)
1c003bf0:	0010418e 	add.w	$r14,$r12,$r16
1c003bf4:	001c250b 	mul.w	$r11,$r8,$r9
1c003bf8:	2a7ff8ec 	ld.hu	$r12,$r7,-2(0xffe)
1c003bfc:	001c44ca 	mul.w	$r10,$r6,$r17
1c003c00:	00102dc1 	add.w	$r1,$r14,$r11
1c003c04:	001c1191 	mul.w	$r17,$r12,$r4
1c003c08:	0010282a 	add.w	$r10,$r1,$r10
1c003c0c:	00102a2c 	add.w	$r12,$r17,$r10
1c003c10:	297efacc 	st.h	$r12,$r22,-66(0xfbe)
1c003c14:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c003c18:	287efad0 	ld.h	$r16,$r22,-66(0xfbe)
1c003c1c:	5fff6cf3 	bne	$r7,$r19,-148(0x3ff6c) # 1c003b88 <shell16_main+0x7d8>
1c003c20:	2a400364 	ld.hu	$r4,$r27,0
1c003c24:	001c108f 	mul.w	$r15,$r4,$r4
1c003c28:	001c75e6 	mul.w	$r6,$r15,$r29
1c003c2c:	297efac6 	st.h	$r6,$r22,-66(0xfbe)
1c003c30:	287efac1 	ld.h	$r1,$r22,-66(0xfbe)
1c003c34:	29bf32c6 	st.w	$r6,$r22,-52(0xfcc)
1c003c38:	5c049201 	bne	$r16,$r1,1168(0x490) # 1c0040c8 <shell16_main+0xd18>
1c003c3c:	02800652 	addi.w	$r18,$r18,1(0x1)
1c003c40:	63fe9245 	blt	$r18,$r5,-368(0x3fe90) # 1c003ad0 <shell16_main+0x720>
1c003c44:	001052f7 	add.w	$r23,$r23,$r20
1c003c48:	54297800 	bl	10616(0x2978) # 1c0065c0 <get_clock>
1c003c4c:	2880032b 	ld.w	$r11,$r25,0
1c003c50:	0015008a 	move	$r10,$r4
1c003c54:	14001e87 	lu12i.w	$r7,244(0xf4)
1c003c58:	1400002e 	lu12i.w	$r14,1(0x1)
1c003c5c:	038900f1 	ori	$r17,$r7,0x240
1c003c60:	1c000f85 	pcaddu12i	$r5,124(0x7c)
1c003c64:	029020a5 	addi.w	$r5,$r5,1032(0x408)
1c003c68:	00112d4c 	sub.w	$r12,$r10,$r11
1c003c6c:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c003c70:	028e9084 	addi.w	$r4,$r4,932(0x3a4)
1c003c74:	00214587 	div.wu	$r7,$r12,$r17
1c003c78:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c003c80 <shell16_main+0x8d0>
1c003c7c:	002a0007 	break	0x7
1c003c80:	03bd01c6 	ori	$r6,$r14,0xf40
1c003c84:	2980034a 	st.w	$r10,$r26,0
1c003c88:	54212800 	bl	8488(0x2128) # 1c005db0 <printf>
1c003c8c:	15ffff8d 	lu12i.w	$r13,-4(0xffffc)
1c003c90:	00150383 	move	$r3,$r28
1c003c94:	038601b0 	ori	$r16,$r13,0x180
1c003c98:	00104063 	add.w	$r3,$r3,$r16
1c003c9c:	0015007d 	move	$r29,$r3
1c003ca0:	00150005 	move	$r5,$r0
1c003ca4:	00104063 	add.w	$r3,$r3,$r16
1c003ca8:	2a40037c 	ld.hu	$r28,$r27,0
1c003cac:	0015007f 	move	$r31,$r3
1c003cb0:	001503b4 	move	$r20,$r29
1c003cb4:	58000ca0 	beq	$r5,$r0,12(0xc) # 1c003cc0 <shell16_main+0x910>
1c003cb8:	02800bb4 	addi.w	$r20,$r29,2(0x2)
1c003cbc:	294003bc 	st.h	$r28,$r29,0
1c003cc0:	1400003e 	lu12i.w	$r30,1(0x1)
1c003cc4:	03bd03cf 	ori	$r15,$r30,0xf40
1c003cc8:	0040c384 	slli.w	$r4,$r28,0x10
1c003ccc:	004085e1 	slli.w	$r1,$r15,0x1
1c003cd0:	00150013 	move	$r19,$r0
1c003cd4:	001503a8 	move	$r8,$r29
1c003cd8:	00151386 	or	$r6,$r28,$r4
1c003cdc:	00107432 	add.w	$r18,$r1,$r29
1c003ce0:	58002a60 	beq	$r19,$r0,40(0x28) # 1c003d08 <shell16_main+0x958>
1c003ce4:	298003a6 	st.w	$r6,$r29,0
1c003ce8:	298013a6 	st.w	$r6,$r29,4(0x4)
1c003cec:	298023a6 	st.w	$r6,$r29,8(0x8)
1c003cf0:	298033a6 	st.w	$r6,$r29,12(0xc)
1c003cf4:	298043a6 	st.w	$r6,$r29,16(0x10)
1c003cf8:	298053a6 	st.w	$r6,$r29,20(0x14)
1c003cfc:	298063a6 	st.w	$r6,$r29,24(0x18)
1c003d00:	028073a8 	addi.w	$r8,$r29,28(0x1c)
1c003d04:	58002d12 	beq	$r8,$r18,44(0x2c) # 1c003d30 <shell16_main+0x980>
1c003d08:	29800106 	st.w	$r6,$r8,0
1c003d0c:	29801106 	st.w	$r6,$r8,4(0x4)
1c003d10:	29802106 	st.w	$r6,$r8,8(0x8)
1c003d14:	29803106 	st.w	$r6,$r8,12(0xc)
1c003d18:	29804106 	st.w	$r6,$r8,16(0x10)
1c003d1c:	29805106 	st.w	$r6,$r8,20(0x14)
1c003d20:	29806106 	st.w	$r6,$r8,24(0x18)
1c003d24:	29807106 	st.w	$r6,$r8,28(0x1c)
1c003d28:	02808108 	addi.w	$r8,$r8,32(0x20)
1c003d2c:	5fffdd12 	bne	$r8,$r18,-36(0x3ffdc) # 1c003d08 <shell16_main+0x958>
1c003d30:	004085ea 	slli.w	$r10,$r15,0x1
1c003d34:	00102a8b 	add.w	$r11,$r20,$r10
1c003d38:	580009ef 	beq	$r15,$r15,8(0x8) # 1c003d40 <shell16_main+0x990>
1c003d3c:	2940017c 	st.h	$r28,$r11,0
1c003d40:	004487ee 	srli.w	$r14,$r31,0x1
1c003d44:	034005d1 	andi	$r17,$r14,0x1
1c003d48:	001503e7 	move	$r7,$r31
1c003d4c:	58000e20 	beq	$r17,$r0,12(0xc) # 1c003d58 <shell16_main+0x9a8>
1c003d50:	02800be7 	addi.w	$r7,$r31,2(0x2)
1c003d54:	294003fc 	st.h	$r28,$r31,0
1c003d58:	1400002d 	lu12i.w	$r13,1(0x1)
1c003d5c:	03bd01b0 	ori	$r16,$r13,0xf40
1c003d60:	00114605 	sub.w	$r5,$r16,$r17
1c003d64:	004484b4 	srli.w	$r20,$r5,0x1
1c003d68:	00408a9e 	slli.w	$r30,$r20,0x2
1c003d6c:	02bff3c4 	addi.w	$r4,$r30,-4(0xffc)
1c003d70:	0044888f 	srli.w	$r15,$r4,0x2
1c003d74:	0040862c 	slli.w	$r12,$r17,0x1
1c003d78:	028005e1 	addi.w	$r1,$r15,1(0x1)
1c003d7c:	001033ed 	add.w	$r13,$r31,$r12
1c003d80:	03401c32 	andi	$r18,$r1,0x7
1c003d84:	001037d3 	add.w	$r19,$r30,$r13
1c003d88:	58007240 	beq	$r18,$r0,112(0x70) # 1c003df8 <shell16_main+0xa48>
1c003d8c:	02800408 	addi.w	$r8,$r0,1(0x1)
1c003d90:	58005e48 	beq	$r18,$r8,92(0x5c) # 1c003dec <shell16_main+0xa3c>
1c003d94:	02800809 	addi.w	$r9,$r0,2(0x2)
1c003d98:	58004e49 	beq	$r18,$r9,76(0x4c) # 1c003de4 <shell16_main+0xa34>
1c003d9c:	02800c0a 	addi.w	$r10,$r0,3(0x3)
1c003da0:	58003e4a 	beq	$r18,$r10,60(0x3c) # 1c003ddc <shell16_main+0xa2c>
1c003da4:	0280100b 	addi.w	$r11,$r0,4(0x4)
1c003da8:	58002e4b 	beq	$r18,$r11,44(0x2c) # 1c003dd4 <shell16_main+0xa24>
1c003dac:	0280140e 	addi.w	$r14,$r0,5(0x5)
1c003db0:	58001e4e 	beq	$r18,$r14,28(0x1c) # 1c003dcc <shell16_main+0xa1c>
1c003db4:	02801811 	addi.w	$r17,$r0,6(0x6)
1c003db8:	58000e51 	beq	$r18,$r17,12(0xc) # 1c003dc4 <shell16_main+0xa14>
1c003dbc:	298001a6 	st.w	$r6,$r13,0
1c003dc0:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c003dc4:	298001a6 	st.w	$r6,$r13,0
1c003dc8:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c003dcc:	298001a6 	st.w	$r6,$r13,0
1c003dd0:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c003dd4:	298001a6 	st.w	$r6,$r13,0
1c003dd8:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c003ddc:	298001a6 	st.w	$r6,$r13,0
1c003de0:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c003de4:	298001a6 	st.w	$r6,$r13,0
1c003de8:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c003dec:	298001a6 	st.w	$r6,$r13,0
1c003df0:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c003df4:	58002e6d 	beq	$r19,$r13,44(0x2c) # 1c003e20 <shell16_main+0xa70>
1c003df8:	298001a6 	st.w	$r6,$r13,0
1c003dfc:	298011a6 	st.w	$r6,$r13,4(0x4)
1c003e00:	298021a6 	st.w	$r6,$r13,8(0x8)
1c003e04:	298031a6 	st.w	$r6,$r13,12(0xc)
1c003e08:	298041a6 	st.w	$r6,$r13,16(0x10)
1c003e0c:	298051a6 	st.w	$r6,$r13,20(0x14)
1c003e10:	298061a6 	st.w	$r6,$r13,24(0x18)
1c003e14:	298071a6 	st.w	$r6,$r13,28(0x1c)
1c003e18:	028081ad 	addi.w	$r13,$r13,32(0x20)
1c003e1c:	5fffde6d 	bne	$r19,$r13,-36(0x3ffdc) # 1c003df8 <shell16_main+0xa48>
1c003e20:	02bff806 	addi.w	$r6,$r0,-2(0xffe)
1c003e24:	001498ac 	and	$r12,$r5,$r6
1c003e28:	00408590 	slli.w	$r16,$r12,0x1
1c003e2c:	001040e7 	add.w	$r7,$r7,$r16
1c003e30:	580008ac 	beq	$r5,$r12,8(0x8) # 1c003e38 <shell16_main+0xa88>
1c003e34:	294000fc 	st.h	$r28,$r7,0
1c003e38:	54278800 	bl	10120(0x2788) # 1c0065c0 <get_clock>
1c003e3c:	28800305 	ld.w	$r5,$r24,0
1c003e40:	29800324 	st.w	$r4,$r25,0
1c003e44:	6401a005 	bge	$r0,$r5,416(0x1a0) # 1c003fe4 <shell16_main+0xc34>
1c003e48:	14000074 	lu12i.w	$r20,3(0x3)
1c003e4c:	1400003c 	lu12i.w	$r28,1(0x1)
1c003e50:	03ba0284 	ori	$r4,$r20,0xe80
1c003e54:	00150011 	move	$r17,$r0
1c003e58:	0015001e 	move	$r30,$r0
1c003e5c:	03bd039c 	ori	$r28,$r28,0xf40
1c003e60:	001013b2 	add.w	$r18,$r29,$r4
1c003e64:	00150013 	move	$r19,$r0
1c003e68:	001503ea 	move	$r10,$r31
1c003e6c:	001503a1 	move	$r1,$r29
1c003e70:	0015000d 	move	$r13,$r0
1c003e74:	5800ae60 	beq	$r19,$r0,172(0xac) # 1c003f20 <shell16_main+0xb70>
1c003e78:	2a4003af 	ld.hu	$r15,$r29,0
1c003e7c:	2a4003e1 	ld.hu	$r1,$r31,0
1c003e80:	2a400ba9 	ld.hu	$r9,$r29,2(0x2)
1c003e84:	2a400bea 	ld.hu	$r10,$r31,2(0x2)
1c003e88:	001c05e8 	mul.w	$r8,$r15,$r1
1c003e8c:	2a4013ad 	ld.hu	$r13,$r29,4(0x4)
1c003e90:	2a4013ee 	ld.hu	$r14,$r31,4(0x4)
1c003e94:	2a401bac 	ld.hu	$r12,$r29,6(0x6)
1c003e98:	2a401bf0 	ld.hu	$r16,$r31,6(0x6)
1c003e9c:	001c292b 	mul.w	$r11,$r9,$r10
1c003ea0:	297efac8 	st.h	$r8,$r22,-66(0xfbe)
1c003ea4:	2a7efac4 	ld.hu	$r4,$r22,-66(0xfbe)
1c003ea8:	001c39a6 	mul.w	$r6,$r13,$r14
1c003eac:	00102c93 	add.w	$r19,$r4,$r11
1c003eb0:	2a4023ed 	ld.hu	$r13,$r31,8(0x8)
1c003eb4:	2a4023ab 	ld.hu	$r11,$r29,8(0x8)
1c003eb8:	297efad3 	st.h	$r19,$r22,-66(0xfbe)
1c003ebc:	2a7efacf 	ld.hu	$r15,$r22,-66(0xfbe)
1c003ec0:	001c4187 	mul.w	$r7,$r12,$r16
1c003ec4:	001019e1 	add.w	$r1,$r15,$r6
1c003ec8:	2a402bec 	ld.hu	$r12,$r31,10(0xa)
1c003ecc:	2a402ba6 	ld.hu	$r6,$r29,10(0xa)
1c003ed0:	297efac1 	st.h	$r1,$r22,-66(0xfbe)
1c003ed4:	2a7efac8 	ld.hu	$r8,$r22,-66(0xfbe)
1c003ed8:	2a4033af 	ld.hu	$r15,$r29,12(0xc)
1c003edc:	02803ba1 	addi.w	$r1,$r29,14(0xe)
1c003ee0:	001c356e 	mul.w	$r14,$r11,$r13
1c003ee4:	00101d09 	add.w	$r9,$r8,$r7
1c003ee8:	297efac9 	st.h	$r9,$r22,-66(0xfbe)
1c003eec:	2a7efaca 	ld.hu	$r10,$r22,-66(0xfbe)
1c003ef0:	2a4033e8 	ld.hu	$r8,$r31,12(0xc)
1c003ef4:	001c30d0 	mul.w	$r16,$r6,$r12
1c003ef8:	00103947 	add.w	$r7,$r10,$r14
1c003efc:	297efac7 	st.h	$r7,$r22,-66(0xfbe)
1c003f00:	2a7efad4 	ld.hu	$r20,$r22,-66(0xfbe)
1c003f04:	02803bea 	addi.w	$r10,$r31,14(0xe)
1c003f08:	00104284 	add.w	$r4,$r20,$r16
1c003f0c:	001c21e9 	mul.w	$r9,$r15,$r8
1c003f10:	297efac4 	st.h	$r4,$r22,-66(0xfbe)
1c003f14:	2a7efad3 	ld.hu	$r19,$r22,-66(0xfbe)
1c003f18:	50008c00 	b	140(0x8c) # 1c003fa4 <shell16_main+0xbf4>
1c003f1c:	03400000 	andi	$r0,$r0,0x0
1c003f20:	2a40002b 	ld.hu	$r11,$r1,0
1c003f24:	2a40014e 	ld.hu	$r14,$r10,0
1c003f28:	2a40082c 	ld.hu	$r12,$r1,2(0x2)
1c003f2c:	2a400950 	ld.hu	$r16,$r10,2(0x2)
1c003f30:	001c3966 	mul.w	$r6,$r11,$r14
1c003f34:	2a401024 	ld.hu	$r4,$r1,4(0x4)
1c003f38:	2a40114f 	ld.hu	$r15,$r10,4(0x4)
1c003f3c:	2a401829 	ld.hu	$r9,$r1,6(0x6)
1c003f40:	2a401947 	ld.hu	$r7,$r10,6(0x6)
1c003f44:	02804021 	addi.w	$r1,$r1,16(0x10)
1c003f48:	0280414a 	addi.w	$r10,$r10,16(0x10)
1c003f4c:	001c4194 	mul.w	$r20,$r12,$r16
1c003f50:	2a7fe02c 	ld.hu	$r12,$r1,-8(0xff8)
1c003f54:	2a7fe150 	ld.hu	$r16,$r10,-8(0xff8)
1c003f58:	001019ad 	add.w	$r13,$r13,$r6
1c003f5c:	001c3c88 	mul.w	$r8,$r4,$r15
1c003f60:	001051b3 	add.w	$r19,$r13,$r20
1c003f64:	2a7fe954 	ld.hu	$r20,$r10,-6(0xffa)
1c003f68:	001c1d2b 	mul.w	$r11,$r9,$r7
1c003f6c:	0010226e 	add.w	$r14,$r19,$r8
1c003f70:	2a7fe833 	ld.hu	$r19,$r1,-6(0xffa)
1c003f74:	2a7ff029 	ld.hu	$r9,$r1,-4(0xffc)
1c003f78:	2a7ff147 	ld.hu	$r7,$r10,-4(0xffc)
1c003f7c:	001c418d 	mul.w	$r13,$r12,$r16
1c003f80:	00102dc6 	add.w	$r6,$r14,$r11
1c003f84:	2a7ff82e 	ld.hu	$r14,$r1,-2(0xffe)
1c003f88:	001034cf 	add.w	$r15,$r6,$r13
1c003f8c:	001c5264 	mul.w	$r4,$r19,$r20
1c003f90:	2a7ff946 	ld.hu	$r6,$r10,-2(0xffe)
1c003f94:	001c1d2b 	mul.w	$r11,$r9,$r7
1c003f98:	001011e8 	add.w	$r8,$r15,$r4
1c003f9c:	001c19c9 	mul.w	$r9,$r14,$r6
1c003fa0:	00102d13 	add.w	$r19,$r8,$r11
1c003fa4:	0010266b 	add.w	$r11,$r19,$r9
1c003fa8:	297efacb 	st.h	$r11,$r22,-66(0xfbe)
1c003fac:	29bf32cb 	st.w	$r11,$r22,-52(0xfcc)
1c003fb0:	2a7efacd 	ld.hu	$r13,$r22,-66(0xfbe)
1c003fb4:	5fff6c32 	bne	$r1,$r18,-148(0x3ff6c) # 1c003f20 <shell16_main+0xb70>
1c003fb8:	2a40036e 	ld.hu	$r14,$r27,0
1c003fbc:	001c39c6 	mul.w	$r6,$r14,$r14
1c003fc0:	001c70cc 	mul.w	$r12,$r6,$r28
1c003fc4:	297efacc 	st.h	$r12,$r22,-66(0xfbe)
1c003fc8:	2a7efad0 	ld.hu	$r16,$r22,-66(0xfbe)
1c003fcc:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c003fd0:	001141a7 	sub.w	$r7,$r13,$r16
1c003fd4:	60009007 	blt	$r0,$r7,144(0x90) # 1c004064 <shell16_main+0xcb4>
1c003fd8:	02800631 	addi.w	$r17,$r17,1(0x1)
1c003fdc:	63fe8a25 	blt	$r17,$r5,-376(0x3fe88) # 1c003e64 <shell16_main+0xab4>
1c003fe0:	00107af7 	add.w	$r23,$r23,$r30
1c003fe4:	5425dc00 	bl	9692(0x25dc) # 1c0065c0 <get_clock>
1c003fe8:	2880032f 	ld.w	$r15,$r25,0
1c003fec:	00150093 	move	$r19,$r4
1c003ff0:	14000028 	lu12i.w	$r8,1(0x1)
1c003ff4:	14001e84 	lu12i.w	$r4,244(0xf4)
1c003ff8:	03890089 	ori	$r9,$r4,0x240
1c003ffc:	00113e6a 	sub.w	$r10,$r19,$r15
1c004000:	1c000f85 	pcaddu12i	$r5,124(0x7c)
1c004004:	028220a5 	addi.w	$r5,$r5,136(0x88)
1c004008:	00212547 	div.wu	$r7,$r10,$r9
1c00400c:	5c000920 	bne	$r9,$r0,8(0x8) # 1c004014 <shell16_main+0xc64>
1c004010:	002a0007 	break	0x7
1c004014:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c004018:	02bff084 	addi.w	$r4,$r4,-4(0xffc)
1c00401c:	03bd0106 	ori	$r6,$r8,0xf40
1c004020:	29800353 	st.w	$r19,$r26,0
1c004024:	541d8c00 	bl	7564(0x1d8c) # 1c005db0 <printf>
1c004028:	02bec2c3 	addi.w	$r3,$r22,-80(0xfb0)
1c00402c:	28813061 	ld.w	$r1,$r3,76(0x4c)
1c004030:	001502e4 	move	$r4,$r23
1c004034:	28812076 	ld.w	$r22,$r3,72(0x48)
1c004038:	28811077 	ld.w	$r23,$r3,68(0x44)
1c00403c:	28810078 	ld.w	$r24,$r3,64(0x40)
1c004040:	2880f079 	ld.w	$r25,$r3,60(0x3c)
1c004044:	2880e07a 	ld.w	$r26,$r3,56(0x38)
1c004048:	2880d07b 	ld.w	$r27,$r3,52(0x34)
1c00404c:	2880c07c 	ld.w	$r28,$r3,48(0x30)
1c004050:	2880b07d 	ld.w	$r29,$r3,44(0x2c)
1c004054:	2880a07e 	ld.w	$r30,$r3,40(0x28)
1c004058:	2880907f 	ld.w	$r31,$r3,36(0x24)
1c00405c:	02814063 	addi.w	$r3,$r3,80(0x50)
1c004060:	4c000020 	jirl	$r0,$r1,0
1c004064:	02800634 	addi.w	$r20,$r17,1(0x1)
1c004068:	1c000f85 	pcaddu12i	$r5,124(0x7c)
1c00406c:	028080a5 	addi.w	$r5,$r5,32(0x20)
1c004070:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c004074:	02be4084 	addi.w	$r4,$r4,-112(0xf90)
1c004078:	29bf22d2 	st.w	$r18,$r22,-56(0xfc8)
1c00407c:	29bf32d4 	st.w	$r20,$r22,-52(0xfcc)
1c004080:	29bf12d4 	st.w	$r20,$r22,-60(0xfc4)
1c004084:	541d2c00 	bl	7468(0x1d2c) # 1c005db0 <printf>
1c004088:	28800305 	ld.w	$r5,$r24,0
1c00408c:	28bf32d1 	ld.w	$r17,$r22,-52(0xfcc)
1c004090:	28bf22d2 	ld.w	$r18,$r22,-56(0xfc8)
1c004094:	028007de 	addi.w	$r30,$r30,1(0x1)
1c004098:	63fdce25 	blt	$r17,$r5,-564(0x3fdcc) # 1c003e64 <shell16_main+0xab4>
1c00409c:	53ff47ff 	b	-188(0xfffff44) # 1c003fe0 <shell16_main+0xc30>
1c0040a0:	1c000f85 	pcaddu12i	$r5,124(0x7c)
1c0040a4:	02be20a5 	addi.w	$r5,$r5,-120(0xf88)
1c0040a8:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c0040ac:	02bd6084 	addi.w	$r4,$r4,-168(0xf58)
1c0040b0:	541d0000 	bl	7424(0x1d00) # 1c005db0 <printf>
1c0040b4:	28800312 	ld.w	$r18,$r24,0
1c0040b8:	0280075a 	addi.w	$r26,$r26,1(0x1)
1c0040bc:	028006f7 	addi.w	$r23,$r23,1(0x1)
1c0040c0:	63f3a352 	blt	$r26,$r18,-3168(0x3f3a0) # 1c003460 <shell16_main+0xb0>
1c0040c4:	53f59fff 	b	-2660(0xffff59c) # 1c003660 <shell16_main+0x2b0>
1c0040c8:	02800689 	addi.w	$r9,$r20,1(0x1)
1c0040cc:	02800648 	addi.w	$r8,$r18,1(0x1)
1c0040d0:	1c000f85 	pcaddu12i	$r5,124(0x7c)
1c0040d4:	02be60a5 	addi.w	$r5,$r5,-104(0xf98)
1c0040d8:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c0040dc:	02bca084 	addi.w	$r4,$r4,-216(0xf28)
1c0040e0:	29bf12d3 	st.w	$r19,$r22,-60(0xfc4)
1c0040e4:	29bf22c8 	st.w	$r8,$r22,-56(0xfc8)
1c0040e8:	29bf32c9 	st.w	$r9,$r22,-52(0xfcc)
1c0040ec:	29bf02c9 	st.w	$r9,$r22,-64(0xfc0)
1c0040f0:	541cc000 	bl	7360(0x1cc0) # 1c005db0 <printf>
1c0040f4:	28800305 	ld.w	$r5,$r24,0
1c0040f8:	28bf32d4 	ld.w	$r20,$r22,-52(0xfcc)
1c0040fc:	28bf22d2 	ld.w	$r18,$r22,-56(0xfc8)
1c004100:	28bf12d3 	ld.w	$r19,$r22,-60(0xfc4)
1c004104:	63f9ce45 	blt	$r18,$r5,-1588(0x3f9cc) # 1c003ad0 <shell16_main+0x720>
1c004108:	53fb3fff 	b	-1220(0xffffb3c) # 1c003c44 <shell16_main+0x894>
1c00410c:	03400000 	andi	$r0,$r0,0x0
1c004110:	02800648 	addi.w	$r8,$r18,1(0x1)
1c004114:	1c000f85 	pcaddu12i	$r5,124(0x7c)
1c004118:	02bcd0a5 	addi.w	$r5,$r5,-204(0xf34)
1c00411c:	001503a4 	move	$r4,$r29
1c004120:	29bf12d0 	st.w	$r16,$r22,-60(0xfc4)
1c004124:	29bf22d1 	st.w	$r17,$r22,-56(0xfc8)
1c004128:	29bf32c8 	st.w	$r8,$r22,-52(0xfcc)
1c00412c:	29bf02c8 	st.w	$r8,$r22,-64(0xfc0)
1c004130:	541c8000 	bl	7296(0x1c80) # 1c005db0 <printf>
1c004134:	28800314 	ld.w	$r20,$r24,0
1c004138:	28bf32d2 	ld.w	$r18,$r22,-52(0xfcc)
1c00413c:	28bf22d1 	ld.w	$r17,$r22,-56(0xfc8)
1c004140:	028007de 	addi.w	$r30,$r30,1(0x1)
1c004144:	28bf12d0 	ld.w	$r16,$r22,-60(0xfc4)
1c004148:	63f5da54 	blt	$r18,$r20,-2600(0x3f5d8) # 1c003720 <shell16_main+0x370>
1c00414c:	53f74fff 	b	-2228(0xffff74c) # 1c003898 <shell16_main+0x4e8>

1c004150 <shell16>:
shell16():
1c004150:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c004154:	29817061 	st.w	$r1,$r3,92(0x5c)
1c004158:	29816076 	st.w	$r22,$r3,88(0x58)
1c00415c:	29815077 	st.w	$r23,$r3,84(0x54)
1c004160:	02818076 	addi.w	$r22,$r3,96(0x60)
1c004164:	29814078 	st.w	$r24,$r3,80(0x50)
1c004168:	29813079 	st.w	$r25,$r3,76(0x4c)
1c00416c:	2981207a 	st.w	$r26,$r3,72(0x48)
1c004170:	2981107b 	st.w	$r27,$r3,68(0x44)
1c004174:	2981007c 	st.w	$r28,$r3,64(0x40)
1c004178:	2980f07d 	st.w	$r29,$r3,60(0x3c)
1c00417c:	2980e07e 	st.w	$r30,$r3,56(0x38)
1c004180:	2980d07f 	st.w	$r31,$r3,52(0x34)
1c004184:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c004188:	02bdb084 	addi.w	$r4,$r4,-148(0xf6c)
1c00418c:	541f6400 	bl	8036(0x1f64) # 1c0060f0 <puts>
1c004190:	54236000 	bl	9056(0x2360) # 1c0064f0 <get_count>
1c004194:	29bec2c4 	st.w	$r4,$r22,-80(0xfb0)
1c004198:	54238800 	bl	9096(0x2388) # 1c006520 <get_count_my>
1c00419c:	157f5fec 	lu12i.w	$r12,-263425(0xbfaff)
1c0041a0:	29beb2c4 	st.w	$r4,$r22,-84(0xfac)
1c0041a4:	03bc8184 	ori	$r4,$r12,0xf20
1c0041a8:	28800085 	ld.w	$r5,$r4,0
1c0041ac:	5c0e84a0 	bne	$r5,$r0,3716(0xe84) # 1c005030 <shell16+0xee0>
1c0041b0:	15ffffcd 	lu12i.w	$r13,-2(0xffffe)
1c0041b4:	14001e81 	lu12i.w	$r1,244(0xf4)
1c0041b8:	14000037 	lu12i.w	$r23,1(0x1)
1c0041bc:	0280280e 	addi.w	$r14,$r0,10(0xa)
1c0041c0:	038301a6 	ori	$r6,$r13,0xc0
1c0041c4:	03890027 	ori	$r7,$r1,0x240
1c0041c8:	29bef2ce 	st.w	$r14,$r22,-68(0xfbc)
1c0041cc:	29bf12c0 	st.w	$r0,$r22,-60(0xfc4)
1c0041d0:	1c000f9c 	pcaddu12i	$r28,124(0x7c)
1c0041d4:	0284839c 	addi.w	$r28,$r28,288(0x120)
1c0041d8:	1c000f9a 	pcaddu12i	$r26,124(0x7c)
1c0041dc:	2884c35a 	ld.w	$r26,$r26,304(0x130)
1c0041e0:	1c000f99 	pcaddu12i	$r25,124(0x7c)
1c0041e4:	02846339 	addi.w	$r25,$r25,280(0x118)
1c0041e8:	29bee2c6 	st.w	$r6,$r22,-72(0xfb8)
1c0041ec:	03bd02f7 	ori	$r23,$r23,0xf40
1c0041f0:	29bf32c7 	st.w	$r7,$r22,-52(0xfcc)
1c0041f4:	28bee2c8 	ld.w	$r8,$r22,-72(0xfb8)
1c0041f8:	2800039e 	ld.b	$r30,$r28,0
1c0041fc:	0015007b 	move	$r27,$r3
1c004200:	00102063 	add.w	$r3,$r3,$r8
1c004204:	0015007d 	move	$r29,$r3
1c004208:	001502e6 	move	$r6,$r23
1c00420c:	00102063 	add.w	$r3,$r3,$r8
1c004210:	001503c5 	move	$r5,$r30
1c004214:	001503a4 	move	$r4,$r29
1c004218:	29bf22c3 	st.w	$r3,$r22,-56(0xfc8)
1c00421c:	5421a400 	bl	8612(0x21a4) # 1c0063c0 <memset>
1c004220:	001502e6 	move	$r6,$r23
1c004224:	001503c5 	move	$r5,$r30
1c004228:	00150064 	move	$r4,$r3
1c00422c:	54219400 	bl	8596(0x2194) # 1c0063c0 <memset>
1c004230:	54239000 	bl	9104(0x2390) # 1c0065c0 <get_clock>
1c004234:	28800331 	ld.w	$r17,$r25,0
1c004238:	29800344 	st.w	$r4,$r26,0
1c00423c:	00150018 	move	$r24,$r0
1c004240:	64021011 	bge	$r0,$r17,528(0x210) # 1c004450 <shell16+0x300>
1c004244:	0015001f 	move	$r31,$r0
1c004248:	00105fbe 	add.w	$r30,$r29,$r23
1c00424c:	03400000 	andi	$r0,$r0,0x0
1c004250:	001177c9 	sub.w	$r9,$r30,$r29
1c004254:	03401d2a 	andi	$r10,$r9,0x7
1c004258:	001503af 	move	$r15,$r29
1c00425c:	28bf22d0 	ld.w	$r16,$r22,-56(0xfc8)
1c004260:	0015000c 	move	$r12,$r0
1c004264:	58013140 	beq	$r10,$r0,304(0x130) # 1c004394 <shell16+0x244>
1c004268:	0280040b 	addi.w	$r11,$r0,1(0x1)
1c00426c:	5801014b 	beq	$r10,$r11,256(0x100) # 1c00436c <shell16+0x21c>
1c004270:	02800812 	addi.w	$r18,$r0,2(0x2)
1c004274:	5800d552 	beq	$r10,$r18,212(0xd4) # 1c004348 <shell16+0x1f8>
1c004278:	02800c13 	addi.w	$r19,$r0,3(0x3)
1c00427c:	5800a953 	beq	$r10,$r19,168(0xa8) # 1c004324 <shell16+0x1d4>
1c004280:	02801014 	addi.w	$r20,$r0,4(0x4)
1c004284:	58007d54 	beq	$r10,$r20,124(0x7c) # 1c004300 <shell16+0x1b0>
1c004288:	02801404 	addi.w	$r4,$r0,5(0x5)
1c00428c:	58005144 	beq	$r10,$r4,80(0x50) # 1c0042dc <shell16+0x18c>
1c004290:	02801805 	addi.w	$r5,$r0,6(0x6)
1c004294:	58002545 	beq	$r10,$r5,36(0x24) # 1c0042b8 <shell16+0x168>
1c004298:	2a0003ac 	ld.bu	$r12,$r29,0
1c00429c:	2a00020d 	ld.bu	$r13,$r16,0
1c0042a0:	028007af 	addi.w	$r15,$r29,1(0x1)
1c0042a4:	02800610 	addi.w	$r16,$r16,1(0x1)
1c0042a8:	001c3581 	mul.w	$r1,$r12,$r13
1c0042ac:	293eaac1 	st.b	$r1,$r22,-86(0xfaa)
1c0042b0:	283eaacc 	ld.b	$r12,$r22,-86(0xfaa)
1c0042b4:	29bf02c1 	st.w	$r1,$r22,-64(0xfc0)
1c0042b8:	2a0001e6 	ld.bu	$r6,$r15,0
1c0042bc:	2a00020e 	ld.bu	$r14,$r16,0
1c0042c0:	028005ef 	addi.w	$r15,$r15,1(0x1)
1c0042c4:	02800610 	addi.w	$r16,$r16,1(0x1)
1c0042c8:	001c38c7 	mul.w	$r7,$r6,$r14
1c0042cc:	001030e8 	add.w	$r8,$r7,$r12
1c0042d0:	293eaac8 	st.b	$r8,$r22,-86(0xfaa)
1c0042d4:	283eaacc 	ld.b	$r12,$r22,-86(0xfaa)
1c0042d8:	29bf02c8 	st.w	$r8,$r22,-64(0xfc0)
1c0042dc:	2a0001e9 	ld.bu	$r9,$r15,0
1c0042e0:	2a00020a 	ld.bu	$r10,$r16,0
1c0042e4:	028005ef 	addi.w	$r15,$r15,1(0x1)
1c0042e8:	02800610 	addi.w	$r16,$r16,1(0x1)
1c0042ec:	001c292b 	mul.w	$r11,$r9,$r10
1c0042f0:	00103172 	add.w	$r18,$r11,$r12
1c0042f4:	293eaad2 	st.b	$r18,$r22,-86(0xfaa)
1c0042f8:	283eaacc 	ld.b	$r12,$r22,-86(0xfaa)
1c0042fc:	29bf02d2 	st.w	$r18,$r22,-64(0xfc0)
1c004300:	2a0001f3 	ld.bu	$r19,$r15,0
1c004304:	2a000214 	ld.bu	$r20,$r16,0
1c004308:	028005ef 	addi.w	$r15,$r15,1(0x1)
1c00430c:	02800610 	addi.w	$r16,$r16,1(0x1)
1c004310:	001c5264 	mul.w	$r4,$r19,$r20
1c004314:	00103085 	add.w	$r5,$r4,$r12
1c004318:	293eaac5 	st.b	$r5,$r22,-86(0xfaa)
1c00431c:	283eaacc 	ld.b	$r12,$r22,-86(0xfaa)
1c004320:	29bf02c5 	st.w	$r5,$r22,-64(0xfc0)
1c004324:	2a0001ed 	ld.bu	$r13,$r15,0
1c004328:	2a000201 	ld.bu	$r1,$r16,0
1c00432c:	028005ef 	addi.w	$r15,$r15,1(0x1)
1c004330:	02800610 	addi.w	$r16,$r16,1(0x1)
1c004334:	001c05a6 	mul.w	$r6,$r13,$r1
1c004338:	001030cc 	add.w	$r12,$r6,$r12
1c00433c:	293eaacc 	st.b	$r12,$r22,-86(0xfaa)
1c004340:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c004344:	283eaacc 	ld.b	$r12,$r22,-86(0xfaa)
1c004348:	2a0001e7 	ld.bu	$r7,$r15,0
1c00434c:	2a00020e 	ld.bu	$r14,$r16,0
1c004350:	028005ef 	addi.w	$r15,$r15,1(0x1)
1c004354:	02800610 	addi.w	$r16,$r16,1(0x1)
1c004358:	001c38e8 	mul.w	$r8,$r7,$r14
1c00435c:	00103109 	add.w	$r9,$r8,$r12
1c004360:	293eaac9 	st.b	$r9,$r22,-86(0xfaa)
1c004364:	283eaacc 	ld.b	$r12,$r22,-86(0xfaa)
1c004368:	29bf02c9 	st.w	$r9,$r22,-64(0xfc0)
1c00436c:	2a0001ea 	ld.bu	$r10,$r15,0
1c004370:	2a00020b 	ld.bu	$r11,$r16,0
1c004374:	028005ef 	addi.w	$r15,$r15,1(0x1)
1c004378:	02800610 	addi.w	$r16,$r16,1(0x1)
1c00437c:	001c2d52 	mul.w	$r18,$r10,$r11
1c004380:	00103253 	add.w	$r19,$r18,$r12
1c004384:	293eaad3 	st.b	$r19,$r22,-86(0xfaa)
1c004388:	29bf02d3 	st.w	$r19,$r22,-64(0xfc0)
1c00438c:	283eaacc 	ld.b	$r12,$r22,-86(0xfaa)
1c004390:	58009fcf 	beq	$r30,$r15,156(0x9c) # 1c00442c <shell16+0x2dc>
1c004394:	2a0001e4 	ld.bu	$r4,$r15,0
1c004398:	2a000205 	ld.bu	$r5,$r16,0
1c00439c:	2a0005f4 	ld.bu	$r20,$r15,1(0x1)
1c0043a0:	2a00060d 	ld.bu	$r13,$r16,1(0x1)
1c0043a4:	2a0009e7 	ld.bu	$r7,$r15,2(0x2)
1c0043a8:	001c1481 	mul.w	$r1,$r4,$r5
1c0043ac:	2a000a0e 	ld.bu	$r14,$r16,2(0x2)
1c0043b0:	2a000de9 	ld.bu	$r9,$r15,3(0x3)
1c0043b4:	2a000e0a 	ld.bu	$r10,$r16,3(0x3)
1c0043b8:	2a0011f2 	ld.bu	$r18,$r15,4(0x4)
1c0043bc:	2a001213 	ld.bu	$r19,$r16,4(0x4)
1c0043c0:	028021ef 	addi.w	$r15,$r15,8(0x8)
1c0043c4:	02802210 	addi.w	$r16,$r16,8(0x8)
1c0043c8:	001c3686 	mul.w	$r6,$r20,$r13
1c0043cc:	0010302c 	add.w	$r12,$r1,$r12
1c0043d0:	001c38e8 	mul.w	$r8,$r7,$r14
1c0043d4:	00101985 	add.w	$r5,$r12,$r6
1c0043d8:	2a3ff607 	ld.bu	$r7,$r16,-3(0xffd)
1c0043dc:	2a3ff5e6 	ld.bu	$r6,$r15,-3(0xffd)
1c0043e0:	2a3ffa0e 	ld.bu	$r14,$r16,-2(0xffe)
1c0043e4:	001c292b 	mul.w	$r11,$r9,$r10
1c0043e8:	001020b4 	add.w	$r20,$r5,$r8
1c0043ec:	2a3ff9e8 	ld.bu	$r8,$r15,-2(0xffe)
1c0043f0:	001c4e44 	mul.w	$r4,$r18,$r19
1c0043f4:	00102e81 	add.w	$r1,$r20,$r11
1c0043f8:	2a3ffe12 	ld.bu	$r18,$r16,-1(0xfff)
1c0043fc:	2a3ffdeb 	ld.bu	$r11,$r15,-1(0xfff)
1c004400:	001c1cc9 	mul.w	$r9,$r6,$r7
1c004404:	0010102d 	add.w	$r13,$r1,$r4
1c004408:	001c390a 	mul.w	$r10,$r8,$r14
1c00440c:	001025a4 	add.w	$r4,$r13,$r9
1c004410:	001c4973 	mul.w	$r19,$r11,$r18
1c004414:	0010288c 	add.w	$r12,$r4,$r10
1c004418:	00104d85 	add.w	$r5,$r12,$r19
1c00441c:	293eaac5 	st.b	$r5,$r22,-86(0xfaa)
1c004420:	29bf02c5 	st.w	$r5,$r22,-64(0xfc0)
1c004424:	283eaacc 	ld.b	$r12,$r22,-86(0xfaa)
1c004428:	5fff6fcf 	bne	$r30,$r15,-148(0x3ff6c) # 1c004394 <shell16+0x244>
1c00442c:	2a00038f 	ld.bu	$r15,$r28,0
1c004430:	001c3df0 	mul.w	$r16,$r15,$r15
1c004434:	00409a14 	slli.w	$r20,$r16,0x6
1c004438:	293eaad4 	st.b	$r20,$r22,-86(0xfaa)
1c00443c:	283eaac1 	ld.b	$r1,$r22,-86(0xfaa)
1c004440:	29bf02d4 	st.w	$r20,$r22,-64(0xfc0)
1c004444:	5c0b4d81 	bne	$r12,$r1,2892(0xb4c) # 1c004f90 <shell16+0xe40>
1c004448:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c00444c:	63fe07f1 	blt	$r31,$r17,-508(0x3fe04) # 1c004250 <shell16+0x100>
1c004450:	54217000 	bl	8560(0x2170) # 1c0065c0 <get_clock>
1c004454:	2880035e 	ld.w	$r30,$r26,0
1c004458:	28bf32c8 	ld.w	$r8,$r22,-52(0xfcc)
1c00445c:	0015009d 	move	$r29,$r4
1c004460:	00117ba7 	sub.w	$r7,$r29,$r30
1c004464:	1c000f8d 	pcaddu12i	$r13,124(0x7c)
1c004468:	28ba81ad 	ld.w	$r13,$r13,-352(0xea0)
1c00446c:	002120e9 	div.wu	$r9,$r7,$r8
1c004470:	5c000900 	bne	$r8,$r0,8(0x8) # 1c004478 <shell16+0x328>
1c004474:	002a0007 	break	0x7
1c004478:	001502e6 	move	$r6,$r23
1c00447c:	00150127 	move	$r7,$r9
1c004480:	1c000f85 	pcaddu12i	$r5,124(0x7c)
1c004484:	02aea0a5 	addi.w	$r5,$r5,-1112(0xba8)
1c004488:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c00448c:	02ae2084 	addi.w	$r4,$r4,-1144(0xb88)
1c004490:	298001bd 	st.w	$r29,$r13,0
1c004494:	54191c00 	bl	6428(0x191c) # 1c005db0 <printf>
1c004498:	28bee2ce 	ld.w	$r14,$r22,-72(0xfb8)
1c00449c:	2a00039e 	ld.bu	$r30,$r28,0
1c0044a0:	00150363 	move	$r3,$r27
1c0044a4:	00103863 	add.w	$r3,$r3,$r14
1c0044a8:	0015007f 	move	$r31,$r3
1c0044ac:	001502e6 	move	$r6,$r23
1c0044b0:	00103863 	add.w	$r3,$r3,$r14
1c0044b4:	001503c5 	move	$r5,$r30
1c0044b8:	001503e4 	move	$r4,$r31
1c0044bc:	541f0400 	bl	7940(0x1f04) # 1c0063c0 <memset>
1c0044c0:	001502e6 	move	$r6,$r23
1c0044c4:	001503c5 	move	$r5,$r30
1c0044c8:	00150064 	move	$r4,$r3
1c0044cc:	541ef400 	bl	7924(0x1ef4) # 1c0063c0 <memset>
1c0044d0:	5420f000 	bl	8432(0x20f0) # 1c0065c0 <get_clock>
1c0044d4:	28800332 	ld.w	$r18,$r25,0
1c0044d8:	29800344 	st.w	$r4,$r26,0
1c0044dc:	0015007d 	move	$r29,$r3
1c0044e0:	64019c12 	bge	$r0,$r18,412(0x19c) # 1c00467c <shell16+0x52c>
1c0044e4:	0015000e 	move	$r14,$r0
1c0044e8:	0015001e 	move	$r30,$r0
1c0044ec:	00105fef 	add.w	$r15,$r31,$r23
1c0044f0:	00150006 	move	$r6,$r0
1c0044f4:	001503e8 	move	$r8,$r31
1c0044f8:	001503aa 	move	$r10,$r29
1c0044fc:	00150001 	move	$r1,$r0
1c004500:	5800b8c0 	beq	$r6,$r0,184(0xb8) # 1c0045b8 <shell16+0x468>
1c004504:	2a0003ea 	ld.bu	$r10,$r31,0
1c004508:	2a0003ab 	ld.bu	$r11,$r29,0
1c00450c:	2a0007e4 	ld.bu	$r4,$r31,1(0x1)
1c004510:	2a0007ac 	ld.bu	$r12,$r29,1(0x1)
1c004514:	001c2d53 	mul.w	$r19,$r10,$r11
1c004518:	2a000bf0 	ld.bu	$r16,$r31,2(0x2)
1c00451c:	2a000bb4 	ld.bu	$r20,$r29,2(0x2)
1c004520:	2a000ff1 	ld.bu	$r17,$r31,3(0x3)
1c004524:	2a000fad 	ld.bu	$r13,$r29,3(0x3)
1c004528:	02801fe8 	addi.w	$r8,$r31,7(0x7)
1c00452c:	001c3085 	mul.w	$r5,$r4,$r12
1c004530:	293eaad3 	st.b	$r19,$r22,-86(0xfaa)
1c004534:	2a3eaac9 	ld.bu	$r9,$r22,-86(0xfaa)
1c004538:	001c5201 	mul.w	$r1,$r16,$r20
1c00453c:	00101526 	add.w	$r6,$r9,$r5
1c004540:	293eaac6 	st.b	$r6,$r22,-86(0xfaa)
1c004544:	2a3eaaca 	ld.bu	$r10,$r22,-86(0xfaa)
1c004548:	2a0013e5 	ld.bu	$r5,$r31,4(0x4)
1c00454c:	2a0013b0 	ld.bu	$r16,$r29,4(0x4)
1c004550:	2a001ba9 	ld.bu	$r9,$r29,6(0x6)
1c004554:	001c3627 	mul.w	$r7,$r17,$r13
1c004558:	0010054b 	add.w	$r11,$r10,$r1
1c00455c:	293eaacb 	st.b	$r11,$r22,-86(0xfaa)
1c004560:	2a3eaad3 	ld.bu	$r19,$r22,-86(0xfaa)
1c004564:	2a0017e1 	ld.bu	$r1,$r31,5(0x5)
1c004568:	2a0017b1 	ld.bu	$r17,$r29,5(0x5)
1c00456c:	2a001bed 	ld.bu	$r13,$r31,6(0x6)
1c004570:	02801faa 	addi.w	$r10,$r29,7(0x7)
1c004574:	001c40b4 	mul.w	$r20,$r5,$r16
1c004578:	00101e64 	add.w	$r4,$r19,$r7
1c00457c:	293eaac4 	st.b	$r4,$r22,-86(0xfaa)
1c004580:	2a3eaacc 	ld.bu	$r12,$r22,-86(0xfaa)
1c004584:	001c4427 	mul.w	$r7,$r1,$r17
1c004588:	0010518b 	add.w	$r11,$r12,$r20
1c00458c:	293eaacb 	st.b	$r11,$r22,-86(0xfaa)
1c004590:	2a3eaad3 	ld.bu	$r19,$r22,-86(0xfaa)
1c004594:	001c25a6 	mul.w	$r6,$r13,$r9
1c004598:	00101e64 	add.w	$r4,$r19,$r7
1c00459c:	293eaac4 	st.b	$r4,$r22,-86(0xfaa)
1c0045a0:	2a3eaac5 	ld.bu	$r5,$r22,-86(0xfaa)
1c0045a4:	001018ac 	add.w	$r12,$r5,$r6
1c0045a8:	293eaacc 	st.b	$r12,$r22,-86(0xfaa)
1c0045ac:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c0045b0:	2a3eaac1 	ld.bu	$r1,$r22,-86(0xfaa)
1c0045b4:	58009de8 	beq	$r15,$r8,156(0x9c) # 1c004650 <shell16+0x500>
1c0045b8:	2a000110 	ld.bu	$r16,$r8,0
1c0045bc:	2a000154 	ld.bu	$r20,$r10,0
1c0045c0:	2a000507 	ld.bu	$r7,$r8,1(0x1)
1c0045c4:	2a00054d 	ld.bu	$r13,$r10,1(0x1)
1c0045c8:	2a000906 	ld.bu	$r6,$r8,2(0x2)
1c0045cc:	001c5211 	mul.w	$r17,$r16,$r20
1c0045d0:	2a00094b 	ld.bu	$r11,$r10,2(0x2)
1c0045d4:	2a000d04 	ld.bu	$r4,$r8,3(0x3)
1c0045d8:	2a000d45 	ld.bu	$r5,$r10,3(0x3)
1c0045dc:	2a00110c 	ld.bu	$r12,$r8,4(0x4)
1c0045e0:	2a001154 	ld.bu	$r20,$r10,4(0x4)
1c0045e4:	02802108 	addi.w	$r8,$r8,8(0x8)
1c0045e8:	0280214a 	addi.w	$r10,$r10,8(0x8)
1c0045ec:	001c34e9 	mul.w	$r9,$r7,$r13
1c0045f0:	00104421 	add.w	$r1,$r1,$r17
1c0045f4:	001c2cd3 	mul.w	$r19,$r6,$r11
1c0045f8:	00102431 	add.w	$r17,$r1,$r9
1c0045fc:	2a3ff50b 	ld.bu	$r11,$r8,-3(0xffd)
1c004600:	001c1490 	mul.w	$r16,$r4,$r5
1c004604:	00104e2d 	add.w	$r13,$r17,$r19
1c004608:	2a3ff553 	ld.bu	$r19,$r10,-3(0xffd)
1c00460c:	2a3ff904 	ld.bu	$r4,$r8,-2(0xffe)
1c004610:	001c5187 	mul.w	$r7,$r12,$r20
1c004614:	001041a9 	add.w	$r9,$r13,$r16
1c004618:	2a3ff950 	ld.bu	$r16,$r10,-2(0xffe)
1c00461c:	2a3ffd0c 	ld.bu	$r12,$r8,-1(0xfff)
1c004620:	00101d26 	add.w	$r6,$r9,$r7
1c004624:	001c4d65 	mul.w	$r5,$r11,$r19
1c004628:	2a3ffd47 	ld.bu	$r7,$r10,-1(0xfff)
1c00462c:	001c4094 	mul.w	$r20,$r4,$r16
1c004630:	001014d1 	add.w	$r17,$r6,$r5
1c004634:	001c1d81 	mul.w	$r1,$r12,$r7
1c004638:	0010522d 	add.w	$r13,$r17,$r20
1c00463c:	001005a9 	add.w	$r9,$r13,$r1
1c004640:	293eaac9 	st.b	$r9,$r22,-86(0xfaa)
1c004644:	29bf22c9 	st.w	$r9,$r22,-56(0xfc8)
1c004648:	2a3eaac1 	ld.bu	$r1,$r22,-86(0xfaa)
1c00464c:	5fff6de8 	bne	$r15,$r8,-148(0x3ff6c) # 1c0045b8 <shell16+0x468>
1c004650:	2a000388 	ld.bu	$r8,$r28,0
1c004654:	001c210a 	mul.w	$r10,$r8,$r8
1c004658:	00409946 	slli.w	$r6,$r10,0x6
1c00465c:	293eaac6 	st.b	$r6,$r22,-86(0xfaa)
1c004660:	2a3eaacb 	ld.bu	$r11,$r22,-86(0xfaa)
1c004664:	29bf22c6 	st.w	$r6,$r22,-56(0xfc8)
1c004668:	00112c33 	sub.w	$r19,$r1,$r11
1c00466c:	60094c13 	blt	$r0,$r19,2380(0x94c) # 1c004fb8 <shell16+0xe68>
1c004670:	028005ce 	addi.w	$r14,$r14,1(0x1)
1c004674:	63fe7dd2 	blt	$r14,$r18,-388(0x3fe7c) # 1c0044f0 <shell16+0x3a0>
1c004678:	00107b18 	add.w	$r24,$r24,$r30
1c00467c:	541f4400 	bl	8004(0x1f44) # 1c0065c0 <get_clock>
1c004680:	2880035d 	ld.w	$r29,$r26,0
1c004684:	28bf32c7 	ld.w	$r7,$r22,-52(0xfcc)
1c004688:	0015009f 	move	$r31,$r4
1c00468c:	001177f4 	sub.w	$r20,$r31,$r29
1c004690:	1c000f85 	pcaddu12i	$r5,124(0x7c)
1c004694:	02a6e0a5 	addi.w	$r5,$r5,-1608(0x9b8)
1c004698:	00211e8c 	div.wu	$r12,$r20,$r7
1c00469c:	5c0008e0 	bne	$r7,$r0,8(0x8) # 1c0046a4 <shell16+0x554>
1c0046a0:	002a0007 	break	0x7
1c0046a4:	1c000f90 	pcaddu12i	$r16,124(0x7c)
1c0046a8:	28b18210 	ld.w	$r16,$r16,-928(0xc60)
1c0046ac:	001502e6 	move	$r6,$r23
1c0046b0:	1c000f84 	pcaddu12i	$r4,124(0x7c)
1c0046b4:	02a58084 	addi.w	$r4,$r4,-1696(0x960)
1c0046b8:	00150187 	move	$r7,$r12
1c0046bc:	2980021f 	st.w	$r31,$r16,0
1c0046c0:	5416f000 	bl	5872(0x16f0) # 1c005db0 <printf>
1c0046c4:	15ffff85 	lu12i.w	$r5,-4(0xffffc)
1c0046c8:	038600a4 	ori	$r4,$r5,0x180
1c0046cc:	00150363 	move	$r3,$r27
1c0046d0:	00101063 	add.w	$r3,$r3,$r4
1c0046d4:	0015007d 	move	$r29,$r3
1c0046d8:	1c000f91 	pcaddu12i	$r17,124(0x7c)
1c0046dc:	02b05231 	addi.w	$r17,$r17,-1004(0xc14)
1c0046e0:	00101063 	add.w	$r3,$r3,$r4
1c0046e4:	0015000d 	move	$r13,$r0
1c0046e8:	28400229 	ld.h	$r9,$r17,0
1c0046ec:	0015007f 	move	$r31,$r3
1c0046f0:	001503a8 	move	$r8,$r29
1c0046f4:	58000da0 	beq	$r13,$r0,12(0xc) # 1c004700 <shell16+0x5b0>
1c0046f8:	02800ba8 	addi.w	$r8,$r29,2(0x2)
1c0046fc:	294003a9 	st.h	$r9,$r29,0
1c004700:	297eaac9 	st.h	$r9,$r22,-86(0xfaa)
1c004704:	2a7eaace 	ld.hu	$r14,$r22,-86(0xfaa)
1c004708:	004086e1 	slli.w	$r1,$r23,0x1
1c00470c:	0015000a 	move	$r10,$r0
1c004710:	0040c1de 	slli.w	$r30,$r14,0x10
1c004714:	29bf22c9 	st.w	$r9,$r22,-56(0xfc8)
1c004718:	001503b2 	move	$r18,$r29
1c00471c:	001136e6 	sub.w	$r6,$r23,$r13
1c004720:	0010742b 	add.w	$r11,$r1,$r29
1c004724:	001579cf 	or	$r15,$r14,$r30
1c004728:	58002940 	beq	$r10,$r0,40(0x28) # 1c004750 <shell16+0x600>
1c00472c:	298003af 	st.w	$r15,$r29,0
1c004730:	298013af 	st.w	$r15,$r29,4(0x4)
1c004734:	298023af 	st.w	$r15,$r29,8(0x8)
1c004738:	298033af 	st.w	$r15,$r29,12(0xc)
1c00473c:	298043af 	st.w	$r15,$r29,16(0x10)
1c004740:	298053af 	st.w	$r15,$r29,20(0x14)
1c004744:	298063af 	st.w	$r15,$r29,24(0x18)
1c004748:	028073b2 	addi.w	$r18,$r29,28(0x1c)
1c00474c:	58002e4b 	beq	$r18,$r11,44(0x2c) # 1c004778 <shell16+0x628>
1c004750:	2980024f 	st.w	$r15,$r18,0
1c004754:	2980124f 	st.w	$r15,$r18,4(0x4)
1c004758:	2980224f 	st.w	$r15,$r18,8(0x8)
1c00475c:	2980324f 	st.w	$r15,$r18,12(0xc)
1c004760:	2980424f 	st.w	$r15,$r18,16(0x10)
1c004764:	2980524f 	st.w	$r15,$r18,20(0x14)
1c004768:	2980624f 	st.w	$r15,$r18,24(0x18)
1c00476c:	2980724f 	st.w	$r15,$r18,28(0x1c)
1c004770:	02808252 	addi.w	$r18,$r18,32(0x20)
1c004774:	5fffde4b 	bne	$r18,$r11,-36(0x3ffdc) # 1c004750 <shell16+0x600>
1c004778:	02bff810 	addi.w	$r16,$r0,-2(0xffe)
1c00477c:	0014c0d4 	and	$r20,$r6,$r16
1c004780:	00408687 	slli.w	$r7,$r20,0x1
1c004784:	00101d0c 	add.w	$r12,$r8,$r7
1c004788:	58000a86 	beq	$r20,$r6,8(0x8) # 1c004790 <shell16+0x640>
1c00478c:	29400189 	st.h	$r9,$r12,0
1c004790:	004487e5 	srli.w	$r5,$r31,0x1
1c004794:	034004a4 	andi	$r4,$r5,0x1
1c004798:	001503f1 	move	$r17,$r31
1c00479c:	58000c80 	beq	$r4,$r0,12(0xc) # 1c0047a8 <shell16+0x658>
1c0047a0:	02800bf1 	addi.w	$r17,$r31,2(0x2)
1c0047a4:	294003e9 	st.h	$r9,$r31,0
1c0047a8:	001112e8 	sub.w	$r8,$r23,$r4
1c0047ac:	00448501 	srli.w	$r1,$r8,0x1
1c0047b0:	0040882a 	slli.w	$r10,$r1,0x2
1c0047b4:	02bff146 	addi.w	$r6,$r10,-4(0xffc)
1c0047b8:	004488d3 	srli.w	$r19,$r6,0x2
1c0047bc:	0040848d 	slli.w	$r13,$r4,0x1
1c0047c0:	0280066e 	addi.w	$r14,$r19,1(0x1)
1c0047c4:	001037ec 	add.w	$r12,$r31,$r13
1c0047c8:	03401dde 	andi	$r30,$r14,0x7
1c0047cc:	0010314b 	add.w	$r11,$r10,$r12
1c0047d0:	580073c0 	beq	$r30,$r0,112(0x70) # 1c004840 <shell16+0x6f0>
1c0047d4:	02800412 	addi.w	$r18,$r0,1(0x1)
1c0047d8:	58005fd2 	beq	$r30,$r18,92(0x5c) # 1c004834 <shell16+0x6e4>
1c0047dc:	02800810 	addi.w	$r16,$r0,2(0x2)
1c0047e0:	58004fd0 	beq	$r30,$r16,76(0x4c) # 1c00482c <shell16+0x6dc>
1c0047e4:	02800c14 	addi.w	$r20,$r0,3(0x3)
1c0047e8:	58003fd4 	beq	$r30,$r20,60(0x3c) # 1c004824 <shell16+0x6d4>
1c0047ec:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0047f0:	58002fc7 	beq	$r30,$r7,44(0x2c) # 1c00481c <shell16+0x6cc>
1c0047f4:	02801405 	addi.w	$r5,$r0,5(0x5)
1c0047f8:	58001fc5 	beq	$r30,$r5,28(0x1c) # 1c004814 <shell16+0x6c4>
1c0047fc:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004800:	58000fc4 	beq	$r30,$r4,12(0xc) # 1c00480c <shell16+0x6bc>
1c004804:	2980018f 	st.w	$r15,$r12,0
1c004808:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00480c:	2980018f 	st.w	$r15,$r12,0
1c004810:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004814:	2980018f 	st.w	$r15,$r12,0
1c004818:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00481c:	2980018f 	st.w	$r15,$r12,0
1c004820:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004824:	2980018f 	st.w	$r15,$r12,0
1c004828:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00482c:	2980018f 	st.w	$r15,$r12,0
1c004830:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004834:	2980018f 	st.w	$r15,$r12,0
1c004838:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00483c:	58002d6c 	beq	$r11,$r12,44(0x2c) # 1c004868 <shell16+0x718>
1c004840:	2980018f 	st.w	$r15,$r12,0
1c004844:	2980118f 	st.w	$r15,$r12,4(0x4)
1c004848:	2980218f 	st.w	$r15,$r12,8(0x8)
1c00484c:	2980318f 	st.w	$r15,$r12,12(0xc)
1c004850:	2980418f 	st.w	$r15,$r12,16(0x10)
1c004854:	2980518f 	st.w	$r15,$r12,20(0x14)
1c004858:	2980618f 	st.w	$r15,$r12,24(0x18)
1c00485c:	2980718f 	st.w	$r15,$r12,28(0x1c)
1c004860:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c004864:	5fffdd6c 	bne	$r11,$r12,-36(0x3ffdc) # 1c004840 <shell16+0x6f0>
1c004868:	02bff80f 	addi.w	$r15,$r0,-2(0xffe)
1c00486c:	0014bd01 	and	$r1,$r8,$r15
1c004870:	0040842d 	slli.w	$r13,$r1,0x1
1c004874:	00103631 	add.w	$r17,$r17,$r13
1c004878:	58000828 	beq	$r1,$r8,8(0x8) # 1c004880 <shell16+0x730>
1c00487c:	29400229 	st.h	$r9,$r17,0
1c004880:	541d4000 	bl	7488(0x1d40) # 1c0065c0 <get_clock>
1c004884:	28800334 	ld.w	$r20,$r25,0
1c004888:	29800344 	st.w	$r4,$r26,0
1c00488c:	6401ac14 	bge	$r0,$r20,428(0x1ac) # 1c004a38 <shell16+0x8e8>
1c004890:	14000069 	lu12i.w	$r9,3(0x3)
1c004894:	03ba0128 	ori	$r8,$r9,0xe80
1c004898:	00150010 	move	$r16,$r0
1c00489c:	0015001e 	move	$r30,$r0
1c0048a0:	001023b1 	add.w	$r17,$r29,$r8
1c0048a4:	0015000a 	move	$r10,$r0
1c0048a8:	001503eb 	move	$r11,$r31
1c0048ac:	001503a8 	move	$r8,$r29
1c0048b0:	00150001 	move	$r1,$r0
1c0048b4:	5800bd40 	beq	$r10,$r0,188(0xbc) # 1c004970 <shell16+0x820>
1c0048b8:	2a4003a6 	ld.hu	$r6,$r29,0
1c0048bc:	2a4003eb 	ld.hu	$r11,$r31,0
1c0048c0:	2a400bb3 	ld.hu	$r19,$r29,2(0x2)
1c0048c4:	2a400bee 	ld.hu	$r14,$r31,2(0x2)
1c0048c8:	001c2cd2 	mul.w	$r18,$r6,$r11
1c0048cc:	2a4013a5 	ld.hu	$r5,$r29,4(0x4)
1c0048d0:	2a4013e4 	ld.hu	$r4,$r31,4(0x4)
1c0048d4:	2a401ba1 	ld.hu	$r1,$r29,6(0x6)
1c0048d8:	2a401bec 	ld.hu	$r12,$r31,6(0x6)
1c0048dc:	001c3a67 	mul.w	$r7,$r19,$r14
1c0048e0:	297eaad2 	st.h	$r18,$r22,-86(0xfaa)
1c0048e4:	287eaac8 	ld.h	$r8,$r22,-86(0xfaa)
1c0048e8:	2a4023b3 	ld.hu	$r19,$r29,8(0x8)
1c0048ec:	001c10af 	mul.w	$r15,$r5,$r4
1c0048f0:	001020ea 	add.w	$r10,$r7,$r8
1c0048f4:	2a4023e5 	ld.hu	$r5,$r31,8(0x8)
1c0048f8:	297eaaca 	st.h	$r10,$r22,-86(0xfaa)
1c0048fc:	287eaac6 	ld.h	$r6,$r22,-86(0xfaa)
1c004900:	2a402ba4 	ld.hu	$r4,$r29,10(0xa)
1c004904:	02803ba8 	addi.w	$r8,$r29,14(0xe)
1c004908:	001c302d 	mul.w	$r13,$r1,$r12
1c00490c:	001019eb 	add.w	$r11,$r15,$r6
1c004910:	2a402bef 	ld.hu	$r15,$r31,10(0xa)
1c004914:	297eaacb 	st.h	$r11,$r22,-86(0xfaa)
1c004918:	287eaad2 	ld.h	$r18,$r22,-86(0xfaa)
1c00491c:	2a4033ac 	ld.hu	$r12,$r29,12(0xc)
1c004920:	02803beb 	addi.w	$r11,$r31,14(0xe)
1c004924:	001c1661 	mul.w	$r1,$r19,$r5
1c004928:	001049ae 	add.w	$r14,$r13,$r18
1c00492c:	2a4033ed 	ld.hu	$r13,$r31,12(0xc)
1c004930:	297eaace 	st.h	$r14,$r22,-86(0xfaa)
1c004934:	287eaac7 	ld.h	$r7,$r22,-86(0xfaa)
1c004938:	001c3c89 	mul.w	$r9,$r4,$r15
1c00493c:	00101c26 	add.w	$r6,$r1,$r7
1c004940:	297eaac6 	st.h	$r6,$r22,-86(0xfaa)
1c004944:	287eaad2 	ld.h	$r18,$r22,-86(0xfaa)
1c004948:	001c358a 	mul.w	$r10,$r12,$r13
1c00494c:	0010492e 	add.w	$r14,$r9,$r18
1c004950:	297eaace 	st.h	$r14,$r22,-86(0xfaa)
1c004954:	287eaad3 	ld.h	$r19,$r22,-86(0xfaa)
1c004958:	00104d47 	add.w	$r7,$r10,$r19
1c00495c:	297eaac7 	st.h	$r7,$r22,-86(0xfaa)
1c004960:	29bf22c7 	st.w	$r7,$r22,-56(0xfc8)
1c004964:	287eaac1 	ld.h	$r1,$r22,-86(0xfaa)
1c004968:	5800a111 	beq	$r8,$r17,160(0xa0) # 1c004a08 <shell16+0x8b8>
1c00496c:	03400000 	andi	$r0,$r0,0x0
1c004970:	2a400105 	ld.hu	$r5,$r8,0
1c004974:	2a400164 	ld.hu	$r4,$r11,0
1c004978:	2a400909 	ld.hu	$r9,$r8,2(0x2)
1c00497c:	2a40096c 	ld.hu	$r12,$r11,2(0x2)
1c004980:	2a401106 	ld.hu	$r6,$r8,4(0x4)
1c004984:	001c10af 	mul.w	$r15,$r5,$r4
1c004988:	2a40116d 	ld.hu	$r13,$r11,4(0x4)
1c00498c:	2a40190e 	ld.hu	$r14,$r8,6(0x6)
1c004990:	2a401973 	ld.hu	$r19,$r11,6(0x6)
1c004994:	2a402105 	ld.hu	$r5,$r8,8(0x8)
1c004998:	2a402164 	ld.hu	$r4,$r11,8(0x8)
1c00499c:	02804108 	addi.w	$r8,$r8,16(0x10)
1c0049a0:	0280416b 	addi.w	$r11,$r11,16(0x10)
1c0049a4:	001c312a 	mul.w	$r10,$r9,$r12
1c0049a8:	001005e1 	add.w	$r1,$r15,$r1
1c0049ac:	001c34d2 	mul.w	$r18,$r6,$r13
1c0049b0:	0010282f 	add.w	$r15,$r1,$r10
1c0049b4:	2a7fe90d 	ld.hu	$r13,$r8,-6(0xffa)
1c0049b8:	001c4dc7 	mul.w	$r7,$r14,$r19
1c0049bc:	001049ec 	add.w	$r12,$r15,$r18
1c0049c0:	2a7fe972 	ld.hu	$r18,$r11,-6(0xffa)
1c0049c4:	2a7ff113 	ld.hu	$r19,$r8,-4(0xffc)
1c0049c8:	2a7ff16e 	ld.hu	$r14,$r11,-4(0xffc)
1c0049cc:	001c10a9 	mul.w	$r9,$r5,$r4
1c0049d0:	00101d8a 	add.w	$r10,$r12,$r7
1c0049d4:	2a7ff964 	ld.hu	$r4,$r11,-2(0xffe)
1c0049d8:	00102546 	add.w	$r6,$r10,$r9
1c0049dc:	001c49a7 	mul.w	$r7,$r13,$r18
1c0049e0:	2a7ff909 	ld.hu	$r9,$r8,-2(0xffe)
1c0049e4:	001c3a65 	mul.w	$r5,$r19,$r14
1c0049e8:	00101ccf 	add.w	$r15,$r6,$r7
1c0049ec:	001c1121 	mul.w	$r1,$r9,$r4
1c0049f0:	001015ec 	add.w	$r12,$r15,$r5
1c0049f4:	0010058a 	add.w	$r10,$r12,$r1
1c0049f8:	297eaaca 	st.h	$r10,$r22,-86(0xfaa)
1c0049fc:	29bf22ca 	st.w	$r10,$r22,-56(0xfc8)
1c004a00:	287eaac1 	ld.h	$r1,$r22,-86(0xfaa)
1c004a04:	5fff6d11 	bne	$r8,$r17,-148(0x3ff6c) # 1c004970 <shell16+0x820>
1c004a08:	1c000f88 	pcaddu12i	$r8,124(0x7c)
1c004a0c:	02a39108 	addi.w	$r8,$r8,-1820(0x8e4)
1c004a10:	2a40010b 	ld.hu	$r11,$r8,0
1c004a14:	001c2d66 	mul.w	$r6,$r11,$r11
1c004a18:	001c5ccd 	mul.w	$r13,$r6,$r23
1c004a1c:	297eaacd 	st.h	$r13,$r22,-86(0xfaa)
1c004a20:	287eaad2 	ld.h	$r18,$r22,-86(0xfaa)
1c004a24:	29bf22cd 	st.w	$r13,$r22,-56(0xfc8)
1c004a28:	5c052c32 	bne	$r1,$r18,1324(0x52c) # 1c004f54 <shell16+0xe04>
1c004a2c:	02800610 	addi.w	$r16,$r16,1(0x1)
1c004a30:	63fe7614 	blt	$r16,$r20,-396(0x3fe74) # 1c0048a4 <shell16+0x754>
1c004a34:	00107b18 	add.w	$r24,$r24,$r30
1c004a38:	541b8800 	bl	7048(0x1b88) # 1c0065c0 <get_clock>
1c004a3c:	2880035f 	ld.w	$r31,$r26,0
1c004a40:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c004a44:	0015009d 	move	$r29,$r4
1c004a48:	00117fb3 	sub.w	$r19,$r29,$r31
1c004a4c:	1c000f65 	pcaddu12i	$r5,123(0x7b)
1c004a50:	029870a5 	addi.w	$r5,$r5,1564(0x61c)
1c004a54:	1c000f87 	pcaddu12i	$r7,124(0x7c)
1c004a58:	28a2c0e7 	ld.w	$r7,$r7,-1872(0x8b0)
1c004a5c:	001502e6 	move	$r6,$r23
1c004a60:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c004a64:	0296c084 	addi.w	$r4,$r4,1456(0x5b0)
1c004a68:	298000fd 	st.w	$r29,$r7,0
1c004a6c:	00213a67 	div.wu	$r7,$r19,$r14
1c004a70:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c004a78 <shell16+0x928>
1c004a74:	002a0007 	break	0x7
1c004a78:	54133800 	bl	4920(0x1338) # 1c005db0 <printf>
1c004a7c:	15ffff85 	lu12i.w	$r5,-4(0xffffc)
1c004a80:	038600a9 	ori	$r9,$r5,0x180
1c004a84:	00150363 	move	$r3,$r27
1c004a88:	00102463 	add.w	$r3,$r3,$r9
1c004a8c:	0015007d 	move	$r29,$r3
1c004a90:	1c000f8f 	pcaddu12i	$r15,124(0x7c)
1c004a94:	02a171ef 	addi.w	$r15,$r15,-1956(0x85c)
1c004a98:	00102463 	add.w	$r3,$r3,$r9
1c004a9c:	00150004 	move	$r4,$r0
1c004aa0:	2a4001ea 	ld.hu	$r10,$r15,0
1c004aa4:	0015007f 	move	$r31,$r3
1c004aa8:	001503a8 	move	$r8,$r29
1c004aac:	58000c80 	beq	$r4,$r0,12(0xc) # 1c004ab8 <shell16+0x968>
1c004ab0:	02800ba8 	addi.w	$r8,$r29,2(0x2)
1c004ab4:	294003aa 	st.h	$r10,$r29,0
1c004ab8:	0040c141 	slli.w	$r1,$r10,0x10
1c004abc:	004086eb 	slli.w	$r11,$r23,0x1
1c004ac0:	00150006 	move	$r6,$r0
1c004ac4:	001503ac 	move	$r12,$r29
1c004ac8:	0015055e 	or	$r30,$r10,$r1
1c004acc:	001112ed 	sub.w	$r13,$r23,$r4
1c004ad0:	00107572 	add.w	$r18,$r11,$r29
1c004ad4:	58002cc0 	beq	$r6,$r0,44(0x2c) # 1c004b00 <shell16+0x9b0>
1c004ad8:	298003be 	st.w	$r30,$r29,0
1c004adc:	298013be 	st.w	$r30,$r29,4(0x4)
1c004ae0:	298023be 	st.w	$r30,$r29,8(0x8)
1c004ae4:	298033be 	st.w	$r30,$r29,12(0xc)
1c004ae8:	298043be 	st.w	$r30,$r29,16(0x10)
1c004aec:	298053be 	st.w	$r30,$r29,20(0x14)
1c004af0:	298063be 	st.w	$r30,$r29,24(0x18)
1c004af4:	028073ac 	addi.w	$r12,$r29,28(0x1c)
1c004af8:	5800324c 	beq	$r18,$r12,48(0x30) # 1c004b28 <shell16+0x9d8>
1c004afc:	03400000 	andi	$r0,$r0,0x0
1c004b00:	2980019e 	st.w	$r30,$r12,0
1c004b04:	2980119e 	st.w	$r30,$r12,4(0x4)
1c004b08:	2980219e 	st.w	$r30,$r12,8(0x8)
1c004b0c:	2980319e 	st.w	$r30,$r12,12(0xc)
1c004b10:	2980419e 	st.w	$r30,$r12,16(0x10)
1c004b14:	2980519e 	st.w	$r30,$r12,20(0x14)
1c004b18:	2980619e 	st.w	$r30,$r12,24(0x18)
1c004b1c:	2980719e 	st.w	$r30,$r12,28(0x1c)
1c004b20:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c004b24:	5fffde4c 	bne	$r18,$r12,-36(0x3ffdc) # 1c004b00 <shell16+0x9b0>
1c004b28:	02bff810 	addi.w	$r16,$r0,-2(0xffe)
1c004b2c:	0014c1b4 	and	$r20,$r13,$r16
1c004b30:	00408691 	slli.w	$r17,$r20,0x1
1c004b34:	00104513 	add.w	$r19,$r8,$r17
1c004b38:	58000a8d 	beq	$r20,$r13,8(0x8) # 1c004b40 <shell16+0x9f0>
1c004b3c:	2940026a 	st.h	$r10,$r19,0
1c004b40:	004487ee 	srli.w	$r14,$r31,0x1
1c004b44:	034005c7 	andi	$r7,$r14,0x1
1c004b48:	001503e5 	move	$r5,$r31
1c004b4c:	58000ce0 	beq	$r7,$r0,12(0xc) # 1c004b58 <shell16+0xa08>
1c004b50:	02800be5 	addi.w	$r5,$r31,2(0x2)
1c004b54:	294003ea 	st.h	$r10,$r31,0
1c004b58:	00111ee9 	sub.w	$r9,$r23,$r7
1c004b5c:	0044852f 	srli.w	$r15,$r9,0x1
1c004b60:	004089e8 	slli.w	$r8,$r15,0x2
1c004b64:	02bff101 	addi.w	$r1,$r8,-4(0xffc)
1c004b68:	00448826 	srli.w	$r6,$r1,0x2
1c004b6c:	004084e4 	slli.w	$r4,$r7,0x1
1c004b70:	028004d2 	addi.w	$r18,$r6,1(0x1)
1c004b74:	001013ed 	add.w	$r13,$r31,$r4
1c004b78:	03401e4c 	andi	$r12,$r18,0x7
1c004b7c:	0010350b 	add.w	$r11,$r8,$r13
1c004b80:	58007180 	beq	$r12,$r0,112(0x70) # 1c004bf0 <shell16+0xaa0>
1c004b84:	02800410 	addi.w	$r16,$r0,1(0x1)
1c004b88:	58005d90 	beq	$r12,$r16,92(0x5c) # 1c004be4 <shell16+0xa94>
1c004b8c:	02800814 	addi.w	$r20,$r0,2(0x2)
1c004b90:	58004d94 	beq	$r12,$r20,76(0x4c) # 1c004bdc <shell16+0xa8c>
1c004b94:	02800c11 	addi.w	$r17,$r0,3(0x3)
1c004b98:	58003d91 	beq	$r12,$r17,60(0x3c) # 1c004bd4 <shell16+0xa84>
1c004b9c:	02801013 	addi.w	$r19,$r0,4(0x4)
1c004ba0:	58002d93 	beq	$r12,$r19,44(0x2c) # 1c004bcc <shell16+0xa7c>
1c004ba4:	0280140e 	addi.w	$r14,$r0,5(0x5)
1c004ba8:	58001d8e 	beq	$r12,$r14,28(0x1c) # 1c004bc4 <shell16+0xa74>
1c004bac:	02801807 	addi.w	$r7,$r0,6(0x6)
1c004bb0:	58000d87 	beq	$r12,$r7,12(0xc) # 1c004bbc <shell16+0xa6c>
1c004bb4:	298001be 	st.w	$r30,$r13,0
1c004bb8:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c004bbc:	298001be 	st.w	$r30,$r13,0
1c004bc0:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c004bc4:	298001be 	st.w	$r30,$r13,0
1c004bc8:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c004bcc:	298001be 	st.w	$r30,$r13,0
1c004bd0:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c004bd4:	298001be 	st.w	$r30,$r13,0
1c004bd8:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c004bdc:	298001be 	st.w	$r30,$r13,0
1c004be0:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c004be4:	298001be 	st.w	$r30,$r13,0
1c004be8:	028011ad 	addi.w	$r13,$r13,4(0x4)
1c004bec:	58002dab 	beq	$r13,$r11,44(0x2c) # 1c004c18 <shell16+0xac8>
1c004bf0:	298001be 	st.w	$r30,$r13,0
1c004bf4:	298011be 	st.w	$r30,$r13,4(0x4)
1c004bf8:	298021be 	st.w	$r30,$r13,8(0x8)
1c004bfc:	298031be 	st.w	$r30,$r13,12(0xc)
1c004c00:	298041be 	st.w	$r30,$r13,16(0x10)
1c004c04:	298051be 	st.w	$r30,$r13,20(0x14)
1c004c08:	298061be 	st.w	$r30,$r13,24(0x18)
1c004c0c:	298071be 	st.w	$r30,$r13,28(0x1c)
1c004c10:	028081ad 	addi.w	$r13,$r13,32(0x20)
1c004c14:	5fffddab 	bne	$r13,$r11,-36(0x3ffdc) # 1c004bf0 <shell16+0xaa0>
1c004c18:	02bff81e 	addi.w	$r30,$r0,-2(0xffe)
1c004c1c:	0014f924 	and	$r4,$r9,$r30
1c004c20:	0040848f 	slli.w	$r15,$r4,0x1
1c004c24:	00103ca5 	add.w	$r5,$r5,$r15
1c004c28:	58000889 	beq	$r4,$r9,8(0x8) # 1c004c30 <shell16+0xae0>
1c004c2c:	294000aa 	st.h	$r10,$r5,0
1c004c30:	54199000 	bl	6544(0x1990) # 1c0065c0 <get_clock>
1c004c34:	28800332 	ld.w	$r18,$r25,0
1c004c38:	29800344 	st.w	$r4,$r26,0
1c004c3c:	6401b012 	bge	$r0,$r18,432(0x1b0) # 1c004dec <shell16+0xc9c>
1c004c40:	1400006a 	lu12i.w	$r10,3(0x3)
1c004c44:	03ba0149 	ori	$r9,$r10,0xe80
1c004c48:	0015000f 	move	$r15,$r0
1c004c4c:	0015001e 	move	$r30,$r0
1c004c50:	001027b0 	add.w	$r16,$r29,$r9
1c004c54:	00150008 	move	$r8,$r0
1c004c58:	001503e1 	move	$r1,$r31
1c004c5c:	001503a9 	move	$r9,$r29
1c004c60:	00150011 	move	$r17,$r0
1c004c64:	5800bd00 	beq	$r8,$r0,188(0xbc) # 1c004d20 <shell16+0xbd0>
1c004c68:	2a4003a1 	ld.hu	$r1,$r29,0
1c004c6c:	2a4003eb 	ld.hu	$r11,$r31,0
1c004c70:	2a400bb4 	ld.hu	$r20,$r29,2(0x2)
1c004c74:	2a400bec 	ld.hu	$r12,$r31,2(0x2)
1c004c78:	001c2c26 	mul.w	$r6,$r1,$r11
1c004c7c:	2a4013b3 	ld.hu	$r19,$r29,4(0x4)
1c004c80:	2a4013ee 	ld.hu	$r14,$r31,4(0x4)
1c004c84:	2a401bad 	ld.hu	$r13,$r29,6(0x6)
1c004c88:	2a401be4 	ld.hu	$r4,$r31,6(0x6)
1c004c8c:	001c3291 	mul.w	$r17,$r20,$r12
1c004c90:	297eaac6 	st.h	$r6,$r22,-86(0xfaa)
1c004c94:	2a7eaac9 	ld.hu	$r9,$r22,-86(0xfaa)
1c004c98:	2a4023b4 	ld.hu	$r20,$r29,8(0x8)
1c004c9c:	001c3a67 	mul.w	$r7,$r19,$r14
1c004ca0:	00104528 	add.w	$r8,$r9,$r17
1c004ca4:	297eaac8 	st.h	$r8,$r22,-86(0xfaa)
1c004ca8:	2a7eaac1 	ld.hu	$r1,$r22,-86(0xfaa)
1c004cac:	2a4023f1 	ld.hu	$r17,$r31,8(0x8)
1c004cb0:	2a402bb3 	ld.hu	$r19,$r29,10(0xa)
1c004cb4:	2a402bee 	ld.hu	$r14,$r31,10(0xa)
1c004cb8:	02803ba9 	addi.w	$r9,$r29,14(0xe)
1c004cbc:	001c11a5 	mul.w	$r5,$r13,$r4
1c004cc0:	00101c2b 	add.w	$r11,$r1,$r7
1c004cc4:	297eaacb 	st.h	$r11,$r22,-86(0xfaa)
1c004cc8:	2a7eaac6 	ld.hu	$r6,$r22,-86(0xfaa)
1c004ccc:	2a4033ad 	ld.hu	$r13,$r29,12(0xc)
1c004cd0:	2a4033e4 	ld.hu	$r4,$r31,12(0xc)
1c004cd4:	02803be1 	addi.w	$r1,$r31,14(0xe)
1c004cd8:	001014cc 	add.w	$r12,$r6,$r5
1c004cdc:	001c4685 	mul.w	$r5,$r20,$r17
1c004ce0:	297eaacc 	st.h	$r12,$r22,-86(0xfaa)
1c004ce4:	2a7eaac7 	ld.hu	$r7,$r22,-86(0xfaa)
1c004ce8:	001c3a6a 	mul.w	$r10,$r19,$r14
1c004cec:	001014eb 	add.w	$r11,$r7,$r5
1c004cf0:	297eaacb 	st.h	$r11,$r22,-86(0xfaa)
1c004cf4:	2a7eaac6 	ld.hu	$r6,$r22,-86(0xfaa)
1c004cf8:	001c11a8 	mul.w	$r8,$r13,$r4
1c004cfc:	001028cc 	add.w	$r12,$r6,$r10
1c004d00:	297eaacc 	st.h	$r12,$r22,-86(0xfaa)
1c004d04:	2a7eaad4 	ld.hu	$r20,$r22,-86(0xfaa)
1c004d08:	00102287 	add.w	$r7,$r20,$r8
1c004d0c:	297eaac7 	st.h	$r7,$r22,-86(0xfaa)
1c004d10:	29bf22c7 	st.w	$r7,$r22,-56(0xfc8)
1c004d14:	2a7eaad1 	ld.hu	$r17,$r22,-86(0xfaa)
1c004d18:	5800a130 	beq	$r9,$r16,160(0xa0) # 1c004db8 <shell16+0xc68>
1c004d1c:	03400000 	andi	$r0,$r0,0x0
1c004d20:	2a400125 	ld.hu	$r5,$r9,0
1c004d24:	2a400033 	ld.hu	$r19,$r1,0
1c004d28:	2a40092a 	ld.hu	$r10,$r9,2(0x2)
1c004d2c:	2a40082d 	ld.hu	$r13,$r1,2(0x2)
1c004d30:	2a401124 	ld.hu	$r4,$r9,4(0x4)
1c004d34:	001c4cae 	mul.w	$r14,$r5,$r19
1c004d38:	2a40102b 	ld.hu	$r11,$r1,4(0x4)
1c004d3c:	2a401926 	ld.hu	$r6,$r9,6(0x6)
1c004d40:	2a40182c 	ld.hu	$r12,$r1,6(0x6)
1c004d44:	2a402125 	ld.hu	$r5,$r9,8(0x8)
1c004d48:	2a402033 	ld.hu	$r19,$r1,8(0x8)
1c004d4c:	02804129 	addi.w	$r9,$r9,16(0x10)
1c004d50:	02804021 	addi.w	$r1,$r1,16(0x10)
1c004d54:	001c3548 	mul.w	$r8,$r10,$r13
1c004d58:	00103a31 	add.w	$r17,$r17,$r14
1c004d5c:	001c2c87 	mul.w	$r7,$r4,$r11
1c004d60:	0010222e 	add.w	$r14,$r17,$r8
1c004d64:	2a7fe924 	ld.hu	$r4,$r9,-6(0xffa)
1c004d68:	001c30d4 	mul.w	$r20,$r6,$r12
1c004d6c:	00101dcd 	add.w	$r13,$r14,$r7
1c004d70:	2a7fe827 	ld.hu	$r7,$r1,-6(0xffa)
1c004d74:	2a7ff12c 	ld.hu	$r12,$r9,-4(0xffc)
1c004d78:	001c4caa 	mul.w	$r10,$r5,$r19
1c004d7c:	001051a8 	add.w	$r8,$r13,$r20
1c004d80:	2a7ff034 	ld.hu	$r20,$r1,-4(0xffc)
1c004d84:	2a7ff933 	ld.hu	$r19,$r9,-2(0xffe)
1c004d88:	0010290b 	add.w	$r11,$r8,$r10
1c004d8c:	001c1c86 	mul.w	$r6,$r4,$r7
1c004d90:	2a7ff82a 	ld.hu	$r10,$r1,-2(0xffe)
1c004d94:	001c5185 	mul.w	$r5,$r12,$r20
1c004d98:	0010196e 	add.w	$r14,$r11,$r6
1c004d9c:	001c2a71 	mul.w	$r17,$r19,$r10
1c004da0:	001015cd 	add.w	$r13,$r14,$r5
1c004da4:	001045a8 	add.w	$r8,$r13,$r17
1c004da8:	297eaac8 	st.h	$r8,$r22,-86(0xfaa)
1c004dac:	29bf22c8 	st.w	$r8,$r22,-56(0xfc8)
1c004db0:	2a7eaad1 	ld.hu	$r17,$r22,-86(0xfaa)
1c004db4:	5fff6d30 	bne	$r9,$r16,-148(0x3ff6c) # 1c004d20 <shell16+0xbd0>
1c004db8:	1c000f69 	pcaddu12i	$r9,123(0x7b)
1c004dbc:	0294d129 	addi.w	$r9,$r9,1332(0x534)
1c004dc0:	2a400121 	ld.hu	$r1,$r9,0
1c004dc4:	001c042b 	mul.w	$r11,$r1,$r1
1c004dc8:	001c5d64 	mul.w	$r4,$r11,$r23
1c004dcc:	297eaac4 	st.h	$r4,$r22,-86(0xfaa)
1c004dd0:	2a7eaac7 	ld.hu	$r7,$r22,-86(0xfaa)
1c004dd4:	29bf22c4 	st.w	$r4,$r22,-56(0xfc8)
1c004dd8:	00111e26 	sub.w	$r6,$r17,$r7
1c004ddc:	60013c06 	blt	$r0,$r6,316(0x13c) # 1c004f18 <shell16+0xdc8>
1c004de0:	028005ef 	addi.w	$r15,$r15,1(0x1)
1c004de4:	63fe71f2 	blt	$r15,$r18,-400(0x3fe70) # 1c004c54 <shell16+0xb04>
1c004de8:	00107b18 	add.w	$r24,$r24,$r30
1c004dec:	5417d400 	bl	6100(0x17d4) # 1c0065c0 <get_clock>
1c004df0:	28bf12d3 	ld.w	$r19,$r22,-60(0xfc4)
1c004df4:	28bef2dd 	ld.w	$r29,$r22,-68(0xfbc)
1c004df8:	2880034c 	ld.w	$r12,$r26,0
1c004dfc:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c004e00:	0015009f 	move	$r31,$r4
1c004e04:	1c000f74 	pcaddu12i	$r20,123(0x7b)
1c004e08:	28940294 	ld.w	$r20,$r20,1280(0x500)
1c004e0c:	0010626a 	add.w	$r10,$r19,$r24
1c004e10:	001133f1 	sub.w	$r17,$r31,$r12
1c004e14:	02bfffbe 	addi.w	$r30,$r29,-1(0xfff)
1c004e18:	00213a27 	div.wu	$r7,$r17,$r14
1c004e1c:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c004e24 <shell16+0xcd4>
1c004e20:	002a0007 	break	0x7
1c004e24:	001502e6 	move	$r6,$r23
1c004e28:	1c000f65 	pcaddu12i	$r5,123(0x7b)
1c004e2c:	028980a5 	addi.w	$r5,$r5,608(0x260)
1c004e30:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c004e34:	02878084 	addi.w	$r4,$r4,480(0x1e0)
1c004e38:	29bef2de 	st.w	$r30,$r22,-68(0xfbc)
1c004e3c:	2980029f 	st.w	$r31,$r20,0
1c004e40:	29bf12ca 	st.w	$r10,$r22,-60(0xfc4)
1c004e44:	540f6c00 	bl	3948(0xf6c) # 1c005db0 <printf>
1c004e48:	00150363 	move	$r3,$r27
1c004e4c:	5ff3abc0 	bne	$r30,$r0,-3160(0x3f3a8) # 1c0041f4 <shell16+0xa4>
1c004e50:	5416d000 	bl	5840(0x16d0) # 1c006520 <get_count_my>
1c004e54:	0015009e 	move	$r30,$r4
1c004e58:	54169800 	bl	5784(0x1698) # 1c0064f0 <get_count>
1c004e5c:	28beb2c6 	ld.w	$r6,$r22,-84(0xfac)
1c004e60:	28bec2c8 	ld.w	$r8,$r22,-80(0xfb0)
1c004e64:	28bf12d4 	ld.w	$r20,$r22,-60(0xfc4)
1c004e68:	00111bdd 	sub.w	$r29,$r30,$r6
1c004e6c:	00112098 	sub.w	$r24,$r4,$r8
1c004e70:	58018680 	beq	$r20,$r0,388(0x184) # 1c004ff4 <shell16+0xea4>
1c004e74:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c004e78:	028ab084 	addi.w	$r4,$r4,684(0x2ac)
1c004e7c:	54127400 	bl	4724(0x1274) # 1c0060f0 <puts>
1c004e80:	157f5feb 	lu12i.w	$r11,-263425(0xbfaff)
1c004e84:	02800410 	addi.w	$r16,$r0,1(0x1)
1c004e88:	03810172 	ori	$r18,$r11,0x40
1c004e8c:	29800250 	st.w	$r16,$r18,0
1c004e90:	02800811 	addi.w	$r17,$r0,2(0x2)
1c004e94:	0380c16d 	ori	$r13,$r11,0x30
1c004e98:	03808165 	ori	$r5,$r11,0x20
1c004e9c:	298001b1 	st.w	$r17,$r13,0
1c004ea0:	298000a0 	st.w	$r0,$r5,0
1c004ea4:	157f5fe1 	lu12i.w	$r1,-263425(0xbfaff)
1c004ea8:	0381403f 	ori	$r31,$r1,0x50
1c004eac:	298003fd 	st.w	$r29,$r31,0
1c004eb0:	157f5f19 	lu12i.w	$r25,-263432(0xbfaf8)
1c004eb4:	2980033d 	st.w	$r29,$r25,0
1c004eb8:	0380433b 	ori	$r27,$r25,0x10
1c004ebc:	00150305 	move	$r5,$r24
1c004ec0:	29800378 	st.w	$r24,$r27,0
1c004ec4:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c004ec8:	0289d084 	addi.w	$r4,$r4,628(0x274)
1c004ecc:	540ee400 	bl	3812(0xee4) # 1c005db0 <printf>
1c004ed0:	001503a5 	move	$r5,$r29
1c004ed4:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c004ed8:	028a5084 	addi.w	$r4,$r4,660(0x294)
1c004edc:	540ed400 	bl	3796(0xed4) # 1c005db0 <printf>
1c004ee0:	02be82c3 	addi.w	$r3,$r22,-96(0xfa0)
1c004ee4:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c004ee8:	28816076 	ld.w	$r22,$r3,88(0x58)
1c004eec:	28815077 	ld.w	$r23,$r3,84(0x54)
1c004ef0:	28814078 	ld.w	$r24,$r3,80(0x50)
1c004ef4:	28813079 	ld.w	$r25,$r3,76(0x4c)
1c004ef8:	2881207a 	ld.w	$r26,$r3,72(0x48)
1c004efc:	2881107b 	ld.w	$r27,$r3,68(0x44)
1c004f00:	2881007c 	ld.w	$r28,$r3,64(0x40)
1c004f04:	2880f07d 	ld.w	$r29,$r3,60(0x3c)
1c004f08:	2880e07e 	ld.w	$r30,$r3,56(0x38)
1c004f0c:	2880d07f 	ld.w	$r31,$r3,52(0x34)
1c004f10:	02818063 	addi.w	$r3,$r3,96(0x60)
1c004f14:	4c000020 	jirl	$r0,$r1,0
1c004f18:	028005f2 	addi.w	$r18,$r15,1(0x1)
1c004f1c:	1c000f65 	pcaddu12i	$r5,123(0x7b)
1c004f20:	0285b0a5 	addi.w	$r5,$r5,364(0x16c)
1c004f24:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c004f28:	02837084 	addi.w	$r4,$r4,220(0xdc)
1c004f2c:	29bf02d0 	st.w	$r16,$r22,-64(0xfc0)
1c004f30:	29bf22d2 	st.w	$r18,$r22,-56(0xfc8)
1c004f34:	29bed2d2 	st.w	$r18,$r22,-76(0xfb4)
1c004f38:	540e7800 	bl	3704(0xe78) # 1c005db0 <printf>
1c004f3c:	28800332 	ld.w	$r18,$r25,0
1c004f40:	28bf22cf 	ld.w	$r15,$r22,-56(0xfc8)
1c004f44:	028007de 	addi.w	$r30,$r30,1(0x1)
1c004f48:	28bf02d0 	ld.w	$r16,$r22,-64(0xfc0)
1c004f4c:	63fd09f2 	blt	$r15,$r18,-760(0x3fd08) # 1c004c54 <shell16+0xb04>
1c004f50:	53fe9bff 	b	-360(0xffffe98) # 1c004de8 <shell16+0xc98>
1c004f54:	02800614 	addi.w	$r20,$r16,1(0x1)
1c004f58:	1c000f65 	pcaddu12i	$r5,123(0x7b)
1c004f5c:	028440a5 	addi.w	$r5,$r5,272(0x110)
1c004f60:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c004f64:	02828084 	addi.w	$r4,$r4,160(0xa0)
1c004f68:	29bf02d1 	st.w	$r17,$r22,-64(0xfc0)
1c004f6c:	29bf22d4 	st.w	$r20,$r22,-56(0xfc8)
1c004f70:	29bed2d4 	st.w	$r20,$r22,-76(0xfb4)
1c004f74:	540e3c00 	bl	3644(0xe3c) # 1c005db0 <printf>
1c004f78:	28800334 	ld.w	$r20,$r25,0
1c004f7c:	28bf22d0 	ld.w	$r16,$r22,-56(0xfc8)
1c004f80:	028007de 	addi.w	$r30,$r30,1(0x1)
1c004f84:	28bf02d1 	ld.w	$r17,$r22,-64(0xfc0)
1c004f88:	63f91e14 	blt	$r16,$r20,-1764(0x3f91c) # 1c0048a4 <shell16+0x754>
1c004f8c:	53faabff 	b	-1368(0xffffaa8) # 1c004a34 <shell16+0x8e4>
1c004f90:	1c000f65 	pcaddu12i	$r5,123(0x7b)
1c004f94:	028260a5 	addi.w	$r5,$r5,152(0x98)
1c004f98:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c004f9c:	0281a084 	addi.w	$r4,$r4,104(0x68)
1c004fa0:	540e1000 	bl	3600(0xe10) # 1c005db0 <printf>
1c004fa4:	28800331 	ld.w	$r17,$r25,0
1c004fa8:	028007ff 	addi.w	$r31,$r31,1(0x1)
1c004fac:	02800718 	addi.w	$r24,$r24,1(0x1)
1c004fb0:	63f2a3f1 	blt	$r31,$r17,-3424(0x3f2a0) # 1c004250 <shell16+0x100>
1c004fb4:	53f49fff 	b	-2916(0xffff49c) # 1c004450 <shell16+0x300>
1c004fb8:	028005d2 	addi.w	$r18,$r14,1(0x1)
1c004fbc:	1c000f65 	pcaddu12i	$r5,123(0x7b)
1c004fc0:	028230a5 	addi.w	$r5,$r5,140(0x8c)
1c004fc4:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c004fc8:	0280f084 	addi.w	$r4,$r4,60(0x3c)
1c004fcc:	29bf02cf 	st.w	$r15,$r22,-64(0xfc0)
1c004fd0:	29bf22d2 	st.w	$r18,$r22,-56(0xfc8)
1c004fd4:	29bed2d2 	st.w	$r18,$r22,-76(0xfb4)
1c004fd8:	540dd800 	bl	3544(0xdd8) # 1c005db0 <printf>
1c004fdc:	28800332 	ld.w	$r18,$r25,0
1c004fe0:	28bf22ce 	ld.w	$r14,$r22,-56(0xfc8)
1c004fe4:	028007de 	addi.w	$r30,$r30,1(0x1)
1c004fe8:	28bf02cf 	ld.w	$r15,$r22,-64(0xfc0)
1c004fec:	63f505d2 	blt	$r14,$r18,-2812(0x3f504) # 1c0044f0 <shell16+0x3a0>
1c004ff0:	53f68bff 	b	-2424(0xffff688) # 1c004678 <shell16+0x528>
1c004ff4:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c004ff8:	02846084 	addi.w	$r4,$r4,280(0x118)
1c004ffc:	5410f400 	bl	4340(0x10f4) # 1c0060f0 <puts>
1c005000:	157f5fea 	lu12i.w	$r10,-263425(0xbfaff)
1c005004:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005008:	0381014e 	ori	$r14,$r10,0x40
1c00500c:	298001c4 	st.w	$r4,$r14,0
1c005010:	140001e9 	lu12i.w	$r9,15(0xf)
1c005014:	0380c153 	ori	$r19,$r10,0x30
1c005018:	03808157 	ori	$r23,$r10,0x20
1c00501c:	03bffd3c 	ori	$r28,$r9,0xfff
1c005020:	29800264 	st.w	$r4,$r19,0
1c005024:	298002fc 	st.w	$r28,$r23,0
1c005028:	53fe7fff 	b	-388(0xffffe7c) # 1c004ea4 <shell16+0xd54>
1c00502c:	03400000 	andi	$r0,$r0,0x0
1c005030:	15ffffdc 	lu12i.w	$r28,-2(0xffffe)
1c005034:	1c000f77 	pcaddu12i	$r23,123(0x7b)
1c005038:	028af2f7 	addi.w	$r23,$r23,700(0x2bc)
1c00503c:	03830385 	ori	$r5,$r28,0xc0
1c005040:	280002fb 	ld.b	$r27,$r23,0
1c005044:	29bf22c3 	st.w	$r3,$r22,-56(0xfc8)
1c005048:	00101463 	add.w	$r3,$r3,$r5
1c00504c:	1400003a 	lu12i.w	$r26,1(0x1)
1c005050:	0015007e 	move	$r30,$r3
1c005054:	03bd0346 	ori	$r6,$r26,0xf40
1c005058:	00101463 	add.w	$r3,$r3,$r5
1c00505c:	001503c4 	move	$r4,$r30
1c005060:	00150365 	move	$r5,$r27
1c005064:	29bf12c0 	st.w	$r0,$r22,-60(0xfc4)
1c005068:	54135800 	bl	4952(0x1358) # 1c0063c0 <memset>
1c00506c:	03bd0346 	ori	$r6,$r26,0xf40
1c005070:	00150365 	move	$r5,$r27
1c005074:	00150064 	move	$r4,$r3
1c005078:	54134800 	bl	4936(0x1348) # 1c0063c0 <memset>
1c00507c:	54154400 	bl	5444(0x1544) # 1c0065c0 <get_clock>
1c005080:	1c000f78 	pcaddu12i	$r24,123(0x7b)
1c005084:	0289e318 	addi.w	$r24,$r24,632(0x278)
1c005088:	28800312 	ld.w	$r18,$r24,0
1c00508c:	1c000f79 	pcaddu12i	$r25,123(0x7b)
1c005090:	2889f339 	ld.w	$r25,$r25,636(0x27c)
1c005094:	29800324 	st.w	$r4,$r25,0
1c005098:	0015007f 	move	$r31,$r3
1c00509c:	64022412 	bge	$r0,$r18,548(0x224) # 1c0052c0 <shell16+0x1170>
1c0050a0:	03bd034d 	ori	$r13,$r26,0xf40
1c0050a4:	1c000f7c 	pcaddu12i	$r28,123(0x7b)
1c0050a8:	02be139c 	addi.w	$r28,$r28,-124(0xf84)
1c0050ac:	0015001a 	move	$r26,$r0
1c0050b0:	1c000f7b 	pcaddu12i	$r27,123(0x7b)
1c0050b4:	02bd437b 	addi.w	$r27,$r27,-176(0xf50)
1c0050b8:	001037dd 	add.w	$r29,$r30,$r13
1c0050bc:	03400000 	andi	$r0,$r0,0x0
1c0050c0:	00117ba8 	sub.w	$r8,$r29,$r30
1c0050c4:	03401d09 	andi	$r9,$r8,0x7
1c0050c8:	001503cc 	move	$r12,$r30
1c0050cc:	001503ed 	move	$r13,$r31
1c0050d0:	00150010 	move	$r16,$r0
1c0050d4:	58013120 	beq	$r9,$r0,304(0x130) # 1c005204 <shell16+0x10b4>
1c0050d8:	02800401 	addi.w	$r1,$r0,1(0x1)
1c0050dc:	58010121 	beq	$r9,$r1,256(0x100) # 1c0051dc <shell16+0x108c>
1c0050e0:	0280080b 	addi.w	$r11,$r0,2(0x2)
1c0050e4:	5800d52b 	beq	$r9,$r11,212(0xd4) # 1c0051b8 <shell16+0x1068>
1c0050e8:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0050ec:	5800a924 	beq	$r9,$r4,168(0xa8) # 1c005194 <shell16+0x1044>
1c0050f0:	02801006 	addi.w	$r6,$r0,4(0x4)
1c0050f4:	58007d26 	beq	$r9,$r6,124(0x7c) # 1c005170 <shell16+0x1020>
1c0050f8:	0280140f 	addi.w	$r15,$r0,5(0x5)
1c0050fc:	5800512f 	beq	$r9,$r15,80(0x50) # 1c00514c <shell16+0xffc>
1c005100:	02801814 	addi.w	$r20,$r0,6(0x6)
1c005104:	58002534 	beq	$r9,$r20,36(0x24) # 1c005128 <shell16+0xfd8>
1c005108:	2a0003f0 	ld.bu	$r16,$r31,0
1c00510c:	2a0003d3 	ld.bu	$r19,$r30,0
1c005110:	028007cc 	addi.w	$r12,$r30,1(0x1)
1c005114:	028007ed 	addi.w	$r13,$r31,1(0x1)
1c005118:	001c426e 	mul.w	$r14,$r19,$r16
1c00511c:	293eaace 	st.b	$r14,$r22,-86(0xfaa)
1c005120:	283eaad0 	ld.b	$r16,$r22,-86(0xfaa)
1c005124:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c005128:	2a000191 	ld.bu	$r17,$r12,0
1c00512c:	2a0001a7 	ld.bu	$r7,$r13,0
1c005130:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005134:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c005138:	001c1e25 	mul.w	$r5,$r17,$r7
1c00513c:	001040ae 	add.w	$r14,$r5,$r16
1c005140:	293eaace 	st.b	$r14,$r22,-86(0xfaa)
1c005144:	283eaad0 	ld.b	$r16,$r22,-86(0xfaa)
1c005148:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c00514c:	2a000189 	ld.bu	$r9,$r12,0
1c005150:	2a0001a1 	ld.bu	$r1,$r13,0
1c005154:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005158:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c00515c:	001c052b 	mul.w	$r11,$r9,$r1
1c005160:	0010416e 	add.w	$r14,$r11,$r16
1c005164:	293eaace 	st.b	$r14,$r22,-86(0xfaa)
1c005168:	283eaad0 	ld.b	$r16,$r22,-86(0xfaa)
1c00516c:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c005170:	2a000186 	ld.bu	$r6,$r12,0
1c005174:	2a0001af 	ld.bu	$r15,$r13,0
1c005178:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00517c:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c005180:	001c3cd4 	mul.w	$r20,$r6,$r15
1c005184:	0010428e 	add.w	$r14,$r20,$r16
1c005188:	293eaace 	st.b	$r14,$r22,-86(0xfaa)
1c00518c:	283eaad0 	ld.b	$r16,$r22,-86(0xfaa)
1c005190:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c005194:	2a00018a 	ld.bu	$r10,$r12,0
1c005198:	2a0001b1 	ld.bu	$r17,$r13,0
1c00519c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0051a0:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0051a4:	001c4547 	mul.w	$r7,$r10,$r17
1c0051a8:	001040ee 	add.w	$r14,$r7,$r16
1c0051ac:	293eaace 	st.b	$r14,$r22,-86(0xfaa)
1c0051b0:	283eaad0 	ld.b	$r16,$r22,-86(0xfaa)
1c0051b4:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c0051b8:	2a000185 	ld.bu	$r5,$r12,0
1c0051bc:	2a0001a8 	ld.bu	$r8,$r13,0
1c0051c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0051c4:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0051c8:	001c20a9 	mul.w	$r9,$r5,$r8
1c0051cc:	0010412e 	add.w	$r14,$r9,$r16
1c0051d0:	293eaace 	st.b	$r14,$r22,-86(0xfaa)
1c0051d4:	283eaad0 	ld.b	$r16,$r22,-86(0xfaa)
1c0051d8:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c0051dc:	2a00018b 	ld.bu	$r11,$r12,0
1c0051e0:	2a0001a4 	ld.bu	$r4,$r13,0
1c0051e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0051e8:	028005ad 	addi.w	$r13,$r13,1(0x1)
1c0051ec:	001c1166 	mul.w	$r6,$r11,$r4
1c0051f0:	001040ce 	add.w	$r14,$r6,$r16
1c0051f4:	293eaace 	st.b	$r14,$r22,-86(0xfaa)
1c0051f8:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c0051fc:	283eaad0 	ld.b	$r16,$r22,-86(0xfaa)
1c005200:	58009d9d 	beq	$r12,$r29,156(0x9c) # 1c00529c <shell16+0x114c>
1c005204:	2a000194 	ld.bu	$r20,$r12,0
1c005208:	2a0001aa 	ld.bu	$r10,$r13,0
1c00520c:	2a000587 	ld.bu	$r7,$r12,1(0x1)
1c005210:	2a0005b1 	ld.bu	$r17,$r13,1(0x1)
1c005214:	2a000985 	ld.bu	$r5,$r12,2(0x2)
1c005218:	001c2a89 	mul.w	$r9,$r20,$r10
1c00521c:	2a0009b3 	ld.bu	$r19,$r13,2(0x2)
1c005220:	2a000d88 	ld.bu	$r8,$r12,3(0x3)
1c005224:	2a000dab 	ld.bu	$r11,$r13,3(0x3)
1c005228:	2a001186 	ld.bu	$r6,$r12,4(0x4)
1c00522c:	2a0011ae 	ld.bu	$r14,$r13,4(0x4)
1c005230:	2a00158f 	ld.bu	$r15,$r12,5(0x5)
1c005234:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005238:	028021ad 	addi.w	$r13,$r13,8(0x8)
1c00523c:	001c44e1 	mul.w	$r1,$r7,$r17
1c005240:	00104130 	add.w	$r16,$r9,$r16
1c005244:	2a3ff5a7 	ld.bu	$r7,$r13,-3(0xffd)
1c005248:	2a3ff991 	ld.bu	$r17,$r12,-2(0xffe)
1c00524c:	001c4caa 	mul.w	$r10,$r5,$r19
1c005250:	00100609 	add.w	$r9,$r16,$r1
1c005254:	2a3ff9b3 	ld.bu	$r19,$r13,-2(0xffe)
1c005258:	001c2d04 	mul.w	$r4,$r8,$r11
1c00525c:	00102921 	add.w	$r1,$r9,$r10
1c005260:	2a3ffdaa 	ld.bu	$r10,$r13,-1(0xfff)
1c005264:	001c38d4 	mul.w	$r20,$r6,$r14
1c005268:	2a3ffd86 	ld.bu	$r6,$r12,-1(0xfff)
1c00526c:	0010102b 	add.w	$r11,$r1,$r4
1c005270:	001c1de5 	mul.w	$r5,$r15,$r7
1c005274:	0010516e 	add.w	$r14,$r11,$r20
1c005278:	001c4e28 	mul.w	$r8,$r17,$r19
1c00527c:	001015cf 	add.w	$r15,$r14,$r5
1c005280:	001c28c4 	mul.w	$r4,$r6,$r10
1c005284:	001021f4 	add.w	$r20,$r15,$r8
1c005288:	00101287 	add.w	$r7,$r20,$r4
1c00528c:	293eaac7 	st.b	$r7,$r22,-86(0xfaa)
1c005290:	29bf32c7 	st.w	$r7,$r22,-52(0xfcc)
1c005294:	283eaad0 	ld.b	$r16,$r22,-86(0xfaa)
1c005298:	5fff6d9d 	bne	$r12,$r29,-148(0x3ff6c) # 1c005204 <shell16+0x10b4>
1c00529c:	2a0002ec 	ld.bu	$r12,$r23,0
1c0052a0:	001c318d 	mul.w	$r13,$r12,$r12
1c0052a4:	004099a5 	slli.w	$r5,$r13,0x6
1c0052a8:	293eaac5 	st.b	$r5,$r22,-86(0xfaa)
1c0052ac:	283eaad1 	ld.b	$r17,$r22,-86(0xfaa)
1c0052b0:	29bf32c5 	st.w	$r5,$r22,-52(0xfcc)
1c0052b4:	5c0aae11 	bne	$r16,$r17,2732(0xaac) # 1c005d60 <shell16+0x1c10>
1c0052b8:	0280075a 	addi.w	$r26,$r26,1(0x1)
1c0052bc:	63fe0752 	blt	$r26,$r18,-508(0x3fe04) # 1c0050c0 <shell16+0xf70>
1c0052c0:	54130000 	bl	4864(0x1300) # 1c0065c0 <get_clock>
1c0052c4:	2880033c 	ld.w	$r28,$r25,0
1c0052c8:	0015009e 	move	$r30,$r4
1c0052cc:	1400003f 	lu12i.w	$r31,1(0x1)
1c0052d0:	14001e9b 	lu12i.w	$r27,244(0xf4)
1c0052d4:	1c000f68 	pcaddu12i	$r8,123(0x7b)
1c0052d8:	2880c108 	ld.w	$r8,$r8,48(0x30)
1c0052dc:	001173d0 	sub.w	$r16,$r30,$r28
1c0052e0:	0389037d 	ori	$r29,$r27,0x240
1c0052e4:	03bd03e6 	ori	$r6,$r31,0xf40
1c0052e8:	00217607 	div.wu	$r7,$r16,$r29
1c0052ec:	5c000ba0 	bne	$r29,$r0,8(0x8) # 1c0052f4 <shell16+0x11a4>
1c0052f0:	002a0007 	break	0x7
1c0052f4:	1c000f65 	pcaddu12i	$r5,123(0x7b)
1c0052f8:	02b4d0a5 	addi.w	$r5,$r5,-716(0xd34)
1c0052fc:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c005300:	02b45084 	addi.w	$r4,$r4,-748(0xd14)
1c005304:	2980011e 	st.w	$r30,$r8,0
1c005308:	540aa800 	bl	2728(0xaa8) # 1c005db0 <printf>
1c00530c:	28bf22c3 	ld.w	$r3,$r22,-56(0xfc8)
1c005310:	15ffffc9 	lu12i.w	$r9,-2(0xffffe)
1c005314:	0383012b 	ori	$r11,$r9,0xc0
1c005318:	2a0002fa 	ld.bu	$r26,$r23,0
1c00531c:	00102c63 	add.w	$r3,$r3,$r11
1c005320:	0015007b 	move	$r27,$r3
1c005324:	03bd03e6 	ori	$r6,$r31,0xf40
1c005328:	00102c63 	add.w	$r3,$r3,$r11
1c00532c:	00150345 	move	$r5,$r26
1c005330:	00150364 	move	$r4,$r27
1c005334:	54108c00 	bl	4236(0x108c) # 1c0063c0 <memset>
1c005338:	03bd03e6 	ori	$r6,$r31,0xf40
1c00533c:	00150345 	move	$r5,$r26
1c005340:	00150064 	move	$r4,$r3
1c005344:	54107c00 	bl	4220(0x107c) # 1c0063c0 <memset>
1c005348:	54127800 	bl	4728(0x1278) # 1c0065c0 <get_clock>
1c00534c:	28800313 	ld.w	$r19,$r24,0
1c005350:	29800324 	st.w	$r4,$r25,0
1c005354:	0015007d 	move	$r29,$r3
1c005358:	6401b413 	bge	$r0,$r19,436(0x1b4) # 1c00550c <shell16+0x13bc>
1c00535c:	03bd03e1 	ori	$r1,$r31,0xf40
1c005360:	0015001e 	move	$r30,$r0
1c005364:	0015001a 	move	$r26,$r0
1c005368:	0010077f 	add.w	$r31,$r27,$r1
1c00536c:	1c000f7c 	pcaddu12i	$r28,123(0x7b)
1c005370:	02b2539c 	addi.w	$r28,$r28,-876(0xc94)
1c005374:	00150006 	move	$r6,$r0
1c005378:	00150369 	move	$r9,$r27
1c00537c:	001503aa 	move	$r10,$r29
1c005380:	0015000f 	move	$r15,$r0
1c005384:	5800bcc0 	beq	$r6,$r0,188(0xbc) # 1c005440 <shell16+0x12f0>
1c005388:	2a00036a 	ld.bu	$r10,$r27,0
1c00538c:	2a0003a4 	ld.bu	$r4,$r29,0
1c005390:	2a00076f 	ld.bu	$r15,$r27,1(0x1)
1c005394:	2a0007b4 	ld.bu	$r20,$r29,1(0x1)
1c005398:	001c114e 	mul.w	$r14,$r10,$r4
1c00539c:	2a000b6d 	ld.bu	$r13,$r27,2(0x2)
1c0053a0:	2a000ba5 	ld.bu	$r5,$r29,2(0x2)
1c0053a4:	2a000f71 	ld.bu	$r17,$r27,3(0x3)
1c0053a8:	2a000fa8 	ld.bu	$r8,$r29,3(0x3)
1c0053ac:	001c51ec 	mul.w	$r12,$r15,$r20
1c0053b0:	293eaace 	st.b	$r14,$r22,-86(0xfaa)
1c0053b4:	2a0013af 	ld.bu	$r15,$r29,4(0x4)
1c0053b8:	2a00136e 	ld.bu	$r14,$r27,4(0x4)
1c0053bc:	2a3eaad0 	ld.bu	$r16,$r22,-86(0xfaa)
1c0053c0:	001c15b2 	mul.w	$r18,$r13,$r5
1c0053c4:	00103209 	add.w	$r9,$r16,$r12
1c0053c8:	2a0017ad 	ld.bu	$r13,$r29,5(0x5)
1c0053cc:	2a00176c 	ld.bu	$r12,$r27,5(0x5)
1c0053d0:	293eaac9 	st.b	$r9,$r22,-86(0xfaa)
1c0053d4:	2a3eaacb 	ld.bu	$r11,$r22,-86(0xfaa)
1c0053d8:	2a001b70 	ld.bu	$r16,$r27,6(0x6)
1c0053dc:	02801f69 	addi.w	$r9,$r27,7(0x7)
1c0053e0:	001c2227 	mul.w	$r7,$r17,$r8
1c0053e4:	00104961 	add.w	$r1,$r11,$r18
1c0053e8:	2a001bab 	ld.bu	$r11,$r29,6(0x6)
1c0053ec:	293eaac1 	st.b	$r1,$r22,-86(0xfaa)
1c0053f0:	2a3eaac6 	ld.bu	$r6,$r22,-86(0xfaa)
1c0053f4:	001c3dd4 	mul.w	$r20,$r14,$r15
1c0053f8:	00101cca 	add.w	$r10,$r6,$r7
1c0053fc:	293eaaca 	st.b	$r10,$r22,-86(0xfaa)
1c005400:	2a3eaac4 	ld.bu	$r4,$r22,-86(0xfaa)
1c005404:	02801faa 	addi.w	$r10,$r29,7(0x7)
1c005408:	001c3585 	mul.w	$r5,$r12,$r13
1c00540c:	00105092 	add.w	$r18,$r4,$r20
1c005410:	293eaad2 	st.b	$r18,$r22,-86(0xfaa)
1c005414:	2a3eaad1 	ld.bu	$r17,$r22,-86(0xfaa)
1c005418:	001c2e01 	mul.w	$r1,$r16,$r11
1c00541c:	00101628 	add.w	$r8,$r17,$r5
1c005420:	293eaac8 	st.b	$r8,$r22,-86(0xfaa)
1c005424:	2a3eaac7 	ld.bu	$r7,$r22,-86(0xfaa)
1c005428:	001004e6 	add.w	$r6,$r7,$r1
1c00542c:	293eaac6 	st.b	$r6,$r22,-86(0xfaa)
1c005430:	29bf32c6 	st.w	$r6,$r22,-52(0xfcc)
1c005434:	2a3eaacf 	ld.bu	$r15,$r22,-86(0xfaa)
1c005438:	5800a13f 	beq	$r9,$r31,160(0xa0) # 1c0054d8 <shell16+0x1388>
1c00543c:	03400000 	andi	$r0,$r0,0x0
1c005440:	2a00012e 	ld.bu	$r14,$r9,0
1c005444:	2a000154 	ld.bu	$r20,$r10,0
1c005448:	2a00052c 	ld.bu	$r12,$r9,1(0x1)
1c00544c:	2a000545 	ld.bu	$r5,$r10,1(0x1)
1c005450:	2a000924 	ld.bu	$r4,$r9,2(0x2)
1c005454:	001c51cd 	mul.w	$r13,$r14,$r20
1c005458:	2a000952 	ld.bu	$r18,$r10,2(0x2)
1c00545c:	2a000d31 	ld.bu	$r17,$r9,3(0x3)
1c005460:	2a000d50 	ld.bu	$r16,$r10,3(0x3)
1c005464:	2a001121 	ld.bu	$r1,$r9,4(0x4)
1c005468:	2a001146 	ld.bu	$r6,$r10,4(0x4)
1c00546c:	2a001534 	ld.bu	$r20,$r9,5(0x5)
1c005470:	02802129 	addi.w	$r9,$r9,8(0x8)
1c005474:	0280214a 	addi.w	$r10,$r10,8(0x8)
1c005478:	001c1588 	mul.w	$r8,$r12,$r5
1c00547c:	001035ef 	add.w	$r15,$r15,$r13
1c005480:	2a3ff54c 	ld.bu	$r12,$r10,-3(0xffd)
1c005484:	001c4887 	mul.w	$r7,$r4,$r18
1c005488:	001021e4 	add.w	$r4,$r15,$r8
1c00548c:	2a3ff932 	ld.bu	$r18,$r9,-2(0xffe)
1c005490:	001c422b 	mul.w	$r11,$r17,$r16
1c005494:	2a3ff951 	ld.bu	$r17,$r10,-2(0xffe)
1c005498:	00101c8d 	add.w	$r13,$r4,$r7
1c00549c:	2a3ffd27 	ld.bu	$r7,$r9,-1(0xfff)
1c0054a0:	001c182e 	mul.w	$r14,$r1,$r6
1c0054a4:	2a3ffd46 	ld.bu	$r6,$r10,-1(0xfff)
1c0054a8:	00102da8 	add.w	$r8,$r13,$r11
1c0054ac:	001c3285 	mul.w	$r5,$r20,$r12
1c0054b0:	0010390b 	add.w	$r11,$r8,$r14
1c0054b4:	001c4650 	mul.w	$r16,$r18,$r17
1c0054b8:	00101561 	add.w	$r1,$r11,$r5
1c0054bc:	001c18ee 	mul.w	$r14,$r7,$r6
1c0054c0:	00104034 	add.w	$r20,$r1,$r16
1c0054c4:	00103a8c 	add.w	$r12,$r20,$r14
1c0054c8:	293eaacc 	st.b	$r12,$r22,-86(0xfaa)
1c0054cc:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c0054d0:	2a3eaacf 	ld.bu	$r15,$r22,-86(0xfaa)
1c0054d4:	5fff6d3f 	bne	$r9,$r31,-148(0x3ff6c) # 1c005440 <shell16+0x12f0>
1c0054d8:	2a0002e9 	ld.bu	$r9,$r23,0
1c0054dc:	001c252a 	mul.w	$r10,$r9,$r9
1c0054e0:	00409945 	slli.w	$r5,$r10,0x6
1c0054e4:	293eaac5 	st.b	$r5,$r22,-86(0xfaa)
1c0054e8:	2a3eaac4 	ld.bu	$r4,$r22,-86(0xfaa)
1c0054ec:	29bf32c5 	st.w	$r5,$r22,-52(0xfcc)
1c0054f0:	001111ef 	sub.w	$r15,$r15,$r4
1c0054f4:	6008940f 	blt	$r0,$r15,2196(0x894) # 1c005d88 <shell16+0x1c38>
1c0054f8:	028007de 	addi.w	$r30,$r30,1(0x1)
1c0054fc:	63fe7bd3 	blt	$r30,$r19,-392(0x3fe78) # 1c005374 <shell16+0x1224>
1c005500:	28bf12d7 	ld.w	$r23,$r22,-60(0xfc4)
1c005504:	00106afb 	add.w	$r27,$r23,$r26
1c005508:	29bf12db 	st.w	$r27,$r22,-60(0xfc4)
1c00550c:	5410b400 	bl	4276(0x10b4) # 1c0065c0 <get_clock>
1c005510:	2880033f 	ld.w	$r31,$r25,0
1c005514:	0015009d 	move	$r29,$r4
1c005518:	14001e9c 	lu12i.w	$r28,244(0xf4)
1c00551c:	1400002d 	lu12i.w	$r13,1(0x1)
1c005520:	03890388 	ori	$r8,$r28,0x240
1c005524:	00117fb1 	sub.w	$r17,$r29,$r31
1c005528:	03bd01a6 	ori	$r6,$r13,0xf40
1c00552c:	00212227 	div.wu	$r7,$r17,$r8
1c005530:	5c000900 	bne	$r8,$r0,8(0x8) # 1c005538 <shell16+0x13e8>
1c005534:	002a0007 	break	0x7
1c005538:	1c000f72 	pcaddu12i	$r18,123(0x7b)
1c00553c:	28b73252 	ld.w	$r18,$r18,-564(0xdcc)
1c005540:	1c000f65 	pcaddu12i	$r5,123(0x7b)
1c005544:	02ac20a5 	addi.w	$r5,$r5,-1272(0xb08)
1c005548:	1c000f64 	pcaddu12i	$r4,123(0x7b)
1c00554c:	02ab2084 	addi.w	$r4,$r4,-1336(0xac8)
1c005550:	2980025d 	st.w	$r29,$r18,0
1c005554:	54085c00 	bl	2140(0x85c) # 1c005db0 <printf>
1c005558:	28bf22c3 	ld.w	$r3,$r22,-56(0xfc8)
1c00555c:	15ffff90 	lu12i.w	$r16,-4(0xffffc)
1c005560:	0386020b 	ori	$r11,$r16,0x180
1c005564:	00102c63 	add.w	$r3,$r3,$r11
1c005568:	0015007c 	move	$r28,$r3
1c00556c:	1c000f77 	pcaddu12i	$r23,123(0x7b)
1c005570:	02b602f7 	addi.w	$r23,$r23,-640(0xd80)
1c005574:	00102c63 	add.w	$r3,$r3,$r11
1c005578:	00150006 	move	$r6,$r0
1c00557c:	284002ee 	ld.h	$r14,$r23,0
1c005580:	0015007f 	move	$r31,$r3
1c005584:	00150389 	move	$r9,$r28
1c005588:	58000cc0 	beq	$r6,$r0,12(0xc) # 1c005594 <shell16+0x1444>
1c00558c:	02800b89 	addi.w	$r9,$r28,2(0x2)
1c005590:	2940038e 	st.h	$r14,$r28,0
1c005594:	297eaace 	st.h	$r14,$r22,-86(0xfaa)
1c005598:	2a7eaacf 	ld.hu	$r15,$r22,-86(0xfaa)
1c00559c:	14000021 	lu12i.w	$r1,1(0x1)
1c0055a0:	03bd0025 	ori	$r5,$r1,0xf40
1c0055a4:	004084a4 	slli.w	$r4,$r5,0x1
1c0055a8:	0040c1fe 	slli.w	$r30,$r15,0x10
1c0055ac:	0015000a 	move	$r10,$r0
1c0055b0:	29bf32ce 	st.w	$r14,$r22,-52(0xfcc)
1c0055b4:	0015038c 	move	$r12,$r28
1c0055b8:	001579fa 	or	$r26,$r15,$r30
1c0055bc:	00107093 	add.w	$r19,$r4,$r28
1c0055c0:	58002940 	beq	$r10,$r0,40(0x28) # 1c0055e8 <shell16+0x1498>
1c0055c4:	2980039a 	st.w	$r26,$r28,0
1c0055c8:	2980139a 	st.w	$r26,$r28,4(0x4)
1c0055cc:	2980239a 	st.w	$r26,$r28,8(0x8)
1c0055d0:	2980339a 	st.w	$r26,$r28,12(0xc)
1c0055d4:	2980439a 	st.w	$r26,$r28,16(0x10)
1c0055d8:	2980539a 	st.w	$r26,$r28,20(0x14)
1c0055dc:	2980639a 	st.w	$r26,$r28,24(0x18)
1c0055e0:	0280738c 	addi.w	$r12,$r28,28(0x1c)
1c0055e4:	58002e6c 	beq	$r19,$r12,44(0x2c) # 1c005610 <shell16+0x14c0>
1c0055e8:	2980019a 	st.w	$r26,$r12,0
1c0055ec:	2980119a 	st.w	$r26,$r12,4(0x4)
1c0055f0:	2980219a 	st.w	$r26,$r12,8(0x8)
1c0055f4:	2980319a 	st.w	$r26,$r12,12(0xc)
1c0055f8:	2980419a 	st.w	$r26,$r12,16(0x10)
1c0055fc:	2980519a 	st.w	$r26,$r12,20(0x14)
1c005600:	2980619a 	st.w	$r26,$r12,24(0x18)
1c005604:	2980719a 	st.w	$r26,$r12,28(0x1c)
1c005608:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c00560c:	5fffde6c 	bne	$r19,$r12,-36(0x3ffdc) # 1c0055e8 <shell16+0x1498>
1c005610:	004084bb 	slli.w	$r27,$r5,0x1
1c005614:	00106d3d 	add.w	$r29,$r9,$r27
1c005618:	580008a5 	beq	$r5,$r5,8(0x8) # 1c005620 <shell16+0x14d0>
1c00561c:	294003ae 	st.h	$r14,$r29,0
1c005620:	004487ed 	srli.w	$r13,$r31,0x1
1c005624:	034005a8 	andi	$r8,$r13,0x1
1c005628:	001503f2 	move	$r18,$r31
1c00562c:	58000d00 	beq	$r8,$r0,12(0xc) # 1c005638 <shell16+0x14e8>
1c005630:	02800bf2 	addi.w	$r18,$r31,2(0x2)
1c005634:	294003ee 	st.h	$r14,$r31,0
1c005638:	14000031 	lu12i.w	$r17,1(0x1)
1c00563c:	03bd0230 	ori	$r16,$r17,0xf40
1c005640:	0011220b 	sub.w	$r11,$r16,$r8
1c005644:	00448566 	srli.w	$r6,$r11,0x1
1c005648:	004088c9 	slli.w	$r9,$r6,0x2
1c00564c:	02bff12a 	addi.w	$r10,$r9,-4(0xffc)
1c005650:	00448945 	srli.w	$r5,$r10,0x2
1c005654:	00408507 	slli.w	$r7,$r8,0x1
1c005658:	028004a4 	addi.w	$r4,$r5,1(0x1)
1c00565c:	00101fec 	add.w	$r12,$r31,$r7
1c005660:	03401c8f 	andi	$r15,$r4,0x7
1c005664:	00103121 	add.w	$r1,$r9,$r12
1c005668:	580071e0 	beq	$r15,$r0,112(0x70) # 1c0056d8 <shell16+0x1588>
1c00566c:	02800414 	addi.w	$r20,$r0,1(0x1)
1c005670:	58005df4 	beq	$r15,$r20,92(0x5c) # 1c0056cc <shell16+0x157c>
1c005674:	0280081e 	addi.w	$r30,$r0,2(0x2)
1c005678:	58004dfe 	beq	$r15,$r30,76(0x4c) # 1c0056c4 <shell16+0x1574>
1c00567c:	02800c13 	addi.w	$r19,$r0,3(0x3)
1c005680:	58003df3 	beq	$r15,$r19,60(0x3c) # 1c0056bc <shell16+0x156c>
1c005684:	0280101b 	addi.w	$r27,$r0,4(0x4)
1c005688:	58002dfb 	beq	$r15,$r27,44(0x2c) # 1c0056b4 <shell16+0x1564>
1c00568c:	0280141d 	addi.w	$r29,$r0,5(0x5)
1c005690:	58001dfd 	beq	$r15,$r29,28(0x1c) # 1c0056ac <shell16+0x155c>
1c005694:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c005698:	58000ded 	beq	$r15,$r13,12(0xc) # 1c0056a4 <shell16+0x1554>
1c00569c:	2980019a 	st.w	$r26,$r12,0
1c0056a0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0056a4:	2980019a 	st.w	$r26,$r12,0
1c0056a8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0056ac:	2980019a 	st.w	$r26,$r12,0
1c0056b0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0056b4:	2980019a 	st.w	$r26,$r12,0
1c0056b8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0056bc:	2980019a 	st.w	$r26,$r12,0
1c0056c0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0056c4:	2980019a 	st.w	$r26,$r12,0
1c0056c8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0056cc:	2980019a 	st.w	$r26,$r12,0
1c0056d0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0056d4:	58002c2c 	beq	$r1,$r12,44(0x2c) # 1c005700 <shell16+0x15b0>
1c0056d8:	2980019a 	st.w	$r26,$r12,0
1c0056dc:	2980119a 	st.w	$r26,$r12,4(0x4)
1c0056e0:	2980219a 	st.w	$r26,$r12,8(0x8)
1c0056e4:	2980319a 	st.w	$r26,$r12,12(0xc)
1c0056e8:	2980419a 	st.w	$r26,$r12,16(0x10)
1c0056ec:	2980519a 	st.w	$r26,$r12,20(0x14)
1c0056f0:	2980619a 	st.w	$r26,$r12,24(0x18)
1c0056f4:	2980719a 	st.w	$r26,$r12,28(0x1c)
1c0056f8:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c0056fc:	5fffdc2c 	bne	$r1,$r12,-36(0x3ffdc) # 1c0056d8 <shell16+0x1588>
1c005700:	02bff81a 	addi.w	$r26,$r0,-2(0xffe)
1c005704:	0014e968 	and	$r8,$r11,$r26
1c005708:	00408511 	slli.w	$r17,$r8,0x1
1c00570c:	00104652 	add.w	$r18,$r18,$r17
1c005710:	5800090b 	beq	$r8,$r11,8(0x8) # 1c005718 <shell16+0x15c8>
1c005714:	2940024e 	st.h	$r14,$r18,0
1c005718:	540ea800 	bl	3752(0xea8) # 1c0065c0 <get_clock>
1c00571c:	28800313 	ld.w	$r19,$r24,0
1c005720:	29800324 	st.w	$r4,$r25,0
1c005724:	6401b413 	bge	$r0,$r19,436(0x1b4) # 1c0058d8 <shell16+0x1788>
1c005728:	1400006e 	lu12i.w	$r14,3(0x3)
1c00572c:	14000027 	lu12i.w	$r7,1(0x1)
1c005730:	03ba01d0 	ori	$r16,$r14,0xe80
1c005734:	0015001e 	move	$r30,$r0
1c005738:	0015001a 	move	$r26,$r0
1c00573c:	03bd00fd 	ori	$r29,$r7,0xf40
1c005740:	0010439b 	add.w	$r27,$r28,$r16
1c005744:	0015000b 	move	$r11,$r0
1c005748:	001503e6 	move	$r6,$r31
1c00574c:	0015038e 	move	$r14,$r28
1c005750:	00150001 	move	$r1,$r0
1c005754:	5800bd60 	beq	$r11,$r0,188(0xbc) # 1c005810 <shell16+0x16c0>
1c005758:	2a400386 	ld.hu	$r6,$r28,0
1c00575c:	2a4003e9 	ld.hu	$r9,$r31,0
1c005760:	2a400b8a 	ld.hu	$r10,$r28,2(0x2)
1c005764:	2a400be5 	ld.hu	$r5,$r31,2(0x2)
1c005768:	001c24c1 	mul.w	$r1,$r6,$r9
1c00576c:	2a40138f 	ld.hu	$r15,$r28,4(0x4)
1c005770:	2a4013f4 	ld.hu	$r20,$r31,4(0x4)
1c005774:	2a401b88 	ld.hu	$r8,$r28,6(0x6)
1c005778:	2a401bec 	ld.hu	$r12,$r31,6(0x6)
1c00577c:	001c1544 	mul.w	$r4,$r10,$r5
1c005780:	297eaac1 	st.h	$r1,$r22,-86(0xfaa)
1c005784:	287eaace 	ld.h	$r14,$r22,-86(0xfaa)
1c005788:	2a40238a 	ld.hu	$r10,$r28,8(0x8)
1c00578c:	2a4023e5 	ld.hu	$r5,$r31,8(0x8)
1c005790:	001c51ed 	mul.w	$r13,$r15,$r20
1c005794:	00103887 	add.w	$r7,$r4,$r14
1c005798:	2a402b8f 	ld.hu	$r15,$r28,10(0xa)
1c00579c:	2a402bf4 	ld.hu	$r20,$r31,10(0xa)
1c0057a0:	297eaac7 	st.h	$r7,$r22,-86(0xfaa)
1c0057a4:	287eaad0 	ld.h	$r16,$r22,-86(0xfaa)
1c0057a8:	2a403387 	ld.hu	$r7,$r28,12(0xc)
1c0057ac:	02803b8e 	addi.w	$r14,$r28,14(0xe)
1c0057b0:	001c3111 	mul.w	$r17,$r8,$r12
1c0057b4:	001041ab 	add.w	$r11,$r13,$r16
1c0057b8:	2a4033f0 	ld.hu	$r16,$r31,12(0xc)
1c0057bc:	297eaacb 	st.h	$r11,$r22,-86(0xfaa)
1c0057c0:	287eaac6 	ld.h	$r6,$r22,-86(0xfaa)
1c0057c4:	001c1544 	mul.w	$r4,$r10,$r5
1c0057c8:	00101a29 	add.w	$r9,$r17,$r6
1c0057cc:	297eaac9 	st.h	$r9,$r22,-86(0xfaa)
1c0057d0:	287eaac1 	ld.h	$r1,$r22,-86(0xfaa)
1c0057d4:	02803be6 	addi.w	$r6,$r31,14(0xe)
1c0057d8:	001c51e8 	mul.w	$r8,$r15,$r20
1c0057dc:	0010048d 	add.w	$r13,$r4,$r1
1c0057e0:	297eaacd 	st.h	$r13,$r22,-86(0xfaa)
1c0057e4:	287eaacc 	ld.h	$r12,$r22,-86(0xfaa)
1c0057e8:	001c40eb 	mul.w	$r11,$r7,$r16
1c0057ec:	00103111 	add.w	$r17,$r8,$r12
1c0057f0:	297eaad1 	st.h	$r17,$r22,-86(0xfaa)
1c0057f4:	287eaad2 	ld.h	$r18,$r22,-86(0xfaa)
1c0057f8:	00104969 	add.w	$r9,$r11,$r18
1c0057fc:	297eaac9 	st.h	$r9,$r22,-86(0xfaa)
1c005800:	29bf32c9 	st.w	$r9,$r22,-52(0xfcc)
1c005804:	287eaac1 	ld.h	$r1,$r22,-86(0xfaa)
1c005808:	5800a1db 	beq	$r14,$r27,160(0xa0) # 1c0058a8 <shell16+0x1758>
1c00580c:	03400000 	andi	$r0,$r0,0x0
1c005810:	2a4001ca 	ld.hu	$r10,$r14,0
1c005814:	2a4000c5 	ld.hu	$r5,$r6,0
1c005818:	2a4009c4 	ld.hu	$r4,$r14,2(0x2)
1c00581c:	2a4008cf 	ld.hu	$r15,$r6,2(0x2)
1c005820:	2a4011d4 	ld.hu	$r20,$r14,4(0x4)
1c005824:	001c1548 	mul.w	$r8,$r10,$r5
1c005828:	2a4010cd 	ld.hu	$r13,$r6,4(0x4)
1c00582c:	2a4019d1 	ld.hu	$r17,$r14,6(0x6)
1c005830:	2a4018cc 	ld.hu	$r12,$r6,6(0x6)
1c005834:	2a4021d2 	ld.hu	$r18,$r14,8(0x8)
1c005838:	2a4020c9 	ld.hu	$r9,$r6,8(0x8)
1c00583c:	2a4029c5 	ld.hu	$r5,$r14,10(0xa)
1c005840:	028041ce 	addi.w	$r14,$r14,16(0x10)
1c005844:	028040c6 	addi.w	$r6,$r6,16(0x10)
1c005848:	001c3c87 	mul.w	$r7,$r4,$r15
1c00584c:	00100501 	add.w	$r1,$r8,$r1
1c005850:	2a7fe8c4 	ld.hu	$r4,$r6,-6(0xffa)
1c005854:	001c3690 	mul.w	$r16,$r20,$r13
1c005858:	00101c28 	add.w	$r8,$r1,$r7
1c00585c:	2a7ff9cd 	ld.hu	$r13,$r14,-2(0xffe)
1c005860:	001c322b 	mul.w	$r11,$r17,$r12
1c005864:	00104107 	add.w	$r7,$r8,$r16
1c005868:	2a7ff0cc 	ld.hu	$r12,$r6,-4(0xffc)
1c00586c:	2a7ff1d0 	ld.hu	$r16,$r14,-4(0xffc)
1c005870:	001c264a 	mul.w	$r10,$r18,$r9
1c005874:	2a7ff8c9 	ld.hu	$r9,$r6,-2(0xffe)
1c005878:	00102cf4 	add.w	$r20,$r7,$r11
1c00587c:	001c10af 	mul.w	$r15,$r5,$r4
1c005880:	00102a91 	add.w	$r17,$r20,$r10
1c005884:	001c320b 	mul.w	$r11,$r16,$r12
1c005888:	00103e32 	add.w	$r18,$r17,$r15
1c00588c:	001c25aa 	mul.w	$r10,$r13,$r9
1c005890:	00102e45 	add.w	$r5,$r18,$r11
1c005894:	001028a4 	add.w	$r4,$r5,$r10
1c005898:	297eaac4 	st.h	$r4,$r22,-86(0xfaa)
1c00589c:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c0058a0:	287eaac1 	ld.h	$r1,$r22,-86(0xfaa)
1c0058a4:	5fff6ddb 	bne	$r14,$r27,-148(0x3ff6c) # 1c005810 <shell16+0x16c0>
1c0058a8:	2a4002ee 	ld.hu	$r14,$r23,0
1c0058ac:	001c39c6 	mul.w	$r6,$r14,$r14
1c0058b0:	001c74cc 	mul.w	$r12,$r6,$r29
1c0058b4:	297eaacc 	st.h	$r12,$r22,-86(0xfaa)
1c0058b8:	287eaac8 	ld.h	$r8,$r22,-86(0xfaa)
1c0058bc:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c0058c0:	5c047828 	bne	$r1,$r8,1144(0x478) # 1c005d38 <shell16+0x1be8>
1c0058c4:	028007de 	addi.w	$r30,$r30,1(0x1)
1c0058c8:	63fe7fd3 	blt	$r30,$r19,-388(0x3fe7c) # 1c005744 <shell16+0x15f4>
1c0058cc:	28bf12dc 	ld.w	$r28,$r22,-60(0xfc4)
1c0058d0:	00106b9f 	add.w	$r31,$r28,$r26
1c0058d4:	29bf12df 	st.w	$r31,$r22,-60(0xfc4)
1c0058d8:	540ce800 	bl	3304(0xce8) # 1c0065c0 <get_clock>
1c0058dc:	2880033b 	ld.w	$r27,$r25,0
1c0058e0:	0015009d 	move	$r29,$r4
1c0058e4:	14001e87 	lu12i.w	$r7,244(0xf4)
1c0058e8:	14000034 	lu12i.w	$r20,1(0x1)
1c0058ec:	038900f1 	ori	$r17,$r7,0x240
1c0058f0:	1c000f45 	pcaddu12i	$r5,122(0x7a)
1c0058f4:	029de0a5 	addi.w	$r5,$r5,1912(0x778)
1c0058f8:	1c000f70 	pcaddu12i	$r16,123(0x7b)
1c0058fc:	28a83210 	ld.w	$r16,$r16,-1524(0xa0c)
1c005900:	00116fab 	sub.w	$r11,$r29,$r27
1c005904:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005908:	029c3084 	addi.w	$r4,$r4,1804(0x70c)
1c00590c:	00214567 	div.wu	$r7,$r11,$r17
1c005910:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c005918 <shell16+0x17c8>
1c005914:	002a0007 	break	0x7
1c005918:	03bd0286 	ori	$r6,$r20,0xf40
1c00591c:	2980021d 	st.w	$r29,$r16,0
1c005920:	54049000 	bl	1168(0x490) # 1c005db0 <printf>
1c005924:	28bf22c3 	ld.w	$r3,$r22,-56(0xfc8)
1c005928:	15ffff8d 	lu12i.w	$r13,-4(0xffffc)
1c00592c:	038601b2 	ori	$r18,$r13,0x180
1c005930:	00104863 	add.w	$r3,$r3,$r18
1c005934:	0015007c 	move	$r28,$r3
1c005938:	00150009 	move	$r9,$r0
1c00593c:	00104863 	add.w	$r3,$r3,$r18
1c005940:	2a4002ea 	ld.hu	$r10,$r23,0
1c005944:	0015007f 	move	$r31,$r3
1c005948:	00150385 	move	$r5,$r28
1c00594c:	58000d20 	beq	$r9,$r0,12(0xc) # 1c005958 <shell16+0x1808>
1c005950:	02800b85 	addi.w	$r5,$r28,2(0x2)
1c005954:	2940038a 	st.h	$r10,$r28,0
1c005958:	14000021 	lu12i.w	$r1,1(0x1)
1c00595c:	03bd0026 	ori	$r6,$r1,0xf40
1c005960:	0040c144 	slli.w	$r4,$r10,0x10
1c005964:	004084cf 	slli.w	$r15,$r6,0x1
1c005968:	0015000e 	move	$r14,$r0
1c00596c:	0015038c 	move	$r12,$r28
1c005970:	00151148 	or	$r8,$r10,$r4
1c005974:	001071fe 	add.w	$r30,$r15,$r28
1c005978:	580029c0 	beq	$r14,$r0,40(0x28) # 1c0059a0 <shell16+0x1850>
1c00597c:	29800388 	st.w	$r8,$r28,0
1c005980:	29801388 	st.w	$r8,$r28,4(0x4)
1c005984:	29802388 	st.w	$r8,$r28,8(0x8)
1c005988:	29803388 	st.w	$r8,$r28,12(0xc)
1c00598c:	29804388 	st.w	$r8,$r28,16(0x10)
1c005990:	29805388 	st.w	$r8,$r28,20(0x14)
1c005994:	29806388 	st.w	$r8,$r28,24(0x18)
1c005998:	0280738c 	addi.w	$r12,$r28,28(0x1c)
1c00599c:	58002fcc 	beq	$r30,$r12,44(0x2c) # 1c0059c8 <shell16+0x1878>
1c0059a0:	29800188 	st.w	$r8,$r12,0
1c0059a4:	29801188 	st.w	$r8,$r12,4(0x4)
1c0059a8:	29802188 	st.w	$r8,$r12,8(0x8)
1c0059ac:	29803188 	st.w	$r8,$r12,12(0xc)
1c0059b0:	29804188 	st.w	$r8,$r12,16(0x10)
1c0059b4:	29805188 	st.w	$r8,$r12,20(0x14)
1c0059b8:	29806188 	st.w	$r8,$r12,24(0x18)
1c0059bc:	29807188 	st.w	$r8,$r12,28(0x1c)
1c0059c0:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c0059c4:	5fffdfcc 	bne	$r30,$r12,-36(0x3ffdc) # 1c0059a0 <shell16+0x1850>
1c0059c8:	004084da 	slli.w	$r26,$r6,0x1
1c0059cc:	001068b3 	add.w	$r19,$r5,$r26
1c0059d0:	580008c6 	beq	$r6,$r6,8(0x8) # 1c0059d8 <shell16+0x1888>
1c0059d4:	2940026a 	st.h	$r10,$r19,0
1c0059d8:	004487fd 	srli.w	$r29,$r31,0x1
1c0059dc:	034007bb 	andi	$r27,$r29,0x1
1c0059e0:	001503f1 	move	$r17,$r31
1c0059e4:	58000f60 	beq	$r27,$r0,12(0xc) # 1c0059f0 <shell16+0x18a0>
1c0059e8:	02800bf1 	addi.w	$r17,$r31,2(0x2)
1c0059ec:	294003ea 	st.h	$r10,$r31,0
1c0059f0:	14000034 	lu12i.w	$r20,1(0x1)
1c0059f4:	03bd0290 	ori	$r16,$r20,0xf40
1c0059f8:	00116e07 	sub.w	$r7,$r16,$r27
1c0059fc:	004484ed 	srli.w	$r13,$r7,0x1
1c005a00:	004089b2 	slli.w	$r18,$r13,0x2
1c005a04:	02bff245 	addi.w	$r5,$r18,-4(0xffc)
1c005a08:	004488a1 	srli.w	$r1,$r5,0x2
1c005a0c:	0040876b 	slli.w	$r11,$r27,0x1
1c005a10:	02800424 	addi.w	$r4,$r1,1(0x1)
1c005a14:	00102ffd 	add.w	$r29,$r31,$r11
1c005a18:	03401c8e 	andi	$r14,$r4,0x7
1c005a1c:	00107649 	add.w	$r9,$r18,$r29
1c005a20:	580071c0 	beq	$r14,$r0,112(0x70) # 1c005a90 <shell16+0x1940>
1c005a24:	02800406 	addi.w	$r6,$r0,1(0x1)
1c005a28:	58005dc6 	beq	$r14,$r6,92(0x5c) # 1c005a84 <shell16+0x1934>
1c005a2c:	0280080f 	addi.w	$r15,$r0,2(0x2)
1c005a30:	58004dcf 	beq	$r14,$r15,76(0x4c) # 1c005a7c <shell16+0x192c>
1c005a34:	02800c1e 	addi.w	$r30,$r0,3(0x3)
1c005a38:	58003dde 	beq	$r14,$r30,60(0x3c) # 1c005a74 <shell16+0x1924>
1c005a3c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005a40:	58002dcc 	beq	$r14,$r12,44(0x2c) # 1c005a6c <shell16+0x191c>
1c005a44:	0280141a 	addi.w	$r26,$r0,5(0x5)
1c005a48:	58001dda 	beq	$r14,$r26,28(0x1c) # 1c005a64 <shell16+0x1914>
1c005a4c:	02801813 	addi.w	$r19,$r0,6(0x6)
1c005a50:	58000dd3 	beq	$r14,$r19,12(0xc) # 1c005a5c <shell16+0x190c>
1c005a54:	298003a8 	st.w	$r8,$r29,0
1c005a58:	028013bd 	addi.w	$r29,$r29,4(0x4)
1c005a5c:	298003a8 	st.w	$r8,$r29,0
1c005a60:	028013bd 	addi.w	$r29,$r29,4(0x4)
1c005a64:	298003a8 	st.w	$r8,$r29,0
1c005a68:	028013bd 	addi.w	$r29,$r29,4(0x4)
1c005a6c:	298003a8 	st.w	$r8,$r29,0
1c005a70:	028013bd 	addi.w	$r29,$r29,4(0x4)
1c005a74:	298003a8 	st.w	$r8,$r29,0
1c005a78:	028013bd 	addi.w	$r29,$r29,4(0x4)
1c005a7c:	298003a8 	st.w	$r8,$r29,0
1c005a80:	028013bd 	addi.w	$r29,$r29,4(0x4)
1c005a84:	298003a8 	st.w	$r8,$r29,0
1c005a88:	028013bd 	addi.w	$r29,$r29,4(0x4)
1c005a8c:	58002d3d 	beq	$r9,$r29,44(0x2c) # 1c005ab8 <shell16+0x1968>
1c005a90:	298003a8 	st.w	$r8,$r29,0
1c005a94:	298013a8 	st.w	$r8,$r29,4(0x4)
1c005a98:	298023a8 	st.w	$r8,$r29,8(0x8)
1c005a9c:	298033a8 	st.w	$r8,$r29,12(0xc)
1c005aa0:	298043a8 	st.w	$r8,$r29,16(0x10)
1c005aa4:	298053a8 	st.w	$r8,$r29,20(0x14)
1c005aa8:	298063a8 	st.w	$r8,$r29,24(0x18)
1c005aac:	298073a8 	st.w	$r8,$r29,28(0x1c)
1c005ab0:	028083bd 	addi.w	$r29,$r29,32(0x20)
1c005ab4:	5fffdd3d 	bne	$r9,$r29,-36(0x3ffdc) # 1c005a90 <shell16+0x1940>
1c005ab8:	02bff808 	addi.w	$r8,$r0,-2(0xffe)
1c005abc:	0014a0fb 	and	$r27,$r7,$r8
1c005ac0:	00408774 	slli.w	$r20,$r27,0x1
1c005ac4:	00105231 	add.w	$r17,$r17,$r20
1c005ac8:	58000b67 	beq	$r27,$r7,8(0x8) # 1c005ad0 <shell16+0x1980>
1c005acc:	2940022a 	st.h	$r10,$r17,0
1c005ad0:	540af000 	bl	2800(0xaf0) # 1c0065c0 <get_clock>
1c005ad4:	28800313 	ld.w	$r19,$r24,0
1c005ad8:	29800324 	st.w	$r4,$r25,0
1c005adc:	6401b813 	bge	$r0,$r19,440(0x1b8) # 1c005c94 <shell16+0x1b44>
1c005ae0:	1400006a 	lu12i.w	$r10,3(0x3)
1c005ae4:	1400002b 	lu12i.w	$r11,1(0x1)
1c005ae8:	03ba0150 	ori	$r16,$r10,0xe80
1c005aec:	0015001e 	move	$r30,$r0
1c005af0:	0015001d 	move	$r29,$r0
1c005af4:	03bd017b 	ori	$r27,$r11,0xf40
1c005af8:	0010439a 	add.w	$r26,$r28,$r16
1c005afc:	03400000 	andi	$r0,$r0,0x0
1c005b00:	00150007 	move	$r7,$r0
1c005b04:	001503e9 	move	$r9,$r31
1c005b08:	0015038a 	move	$r10,$r28
1c005b0c:	00150001 	move	$r1,$r0
1c005b10:	5800b8e0 	beq	$r7,$r0,184(0xb8) # 1c005bc8 <shell16+0x1a78>
1c005b14:	2a40038d 	ld.hu	$r13,$r28,0
1c005b18:	2a4003f2 	ld.hu	$r18,$r31,0
1c005b1c:	2a400b85 	ld.hu	$r5,$r28,2(0x2)
1c005b20:	2a400be1 	ld.hu	$r1,$r31,2(0x2)
1c005b24:	001c49a9 	mul.w	$r9,$r13,$r18
1c005b28:	2a40138e 	ld.hu	$r14,$r28,4(0x4)
1c005b2c:	2a4013e6 	ld.hu	$r6,$r31,4(0x4)
1c005b30:	2a401b8c 	ld.hu	$r12,$r28,6(0x6)
1c005b34:	2a401be8 	ld.hu	$r8,$r31,6(0x6)
1c005b38:	001c04a4 	mul.w	$r4,$r5,$r1
1c005b3c:	297eaac9 	st.h	$r9,$r22,-86(0xfaa)
1c005b40:	2a4023e5 	ld.hu	$r5,$r31,8(0x8)
1c005b44:	2a402389 	ld.hu	$r9,$r28,8(0x8)
1c005b48:	2a7eaad1 	ld.hu	$r17,$r22,-86(0xfaa)
1c005b4c:	001c19cf 	mul.w	$r15,$r14,$r6
1c005b50:	0010122a 	add.w	$r10,$r17,$r4
1c005b54:	2a402bee 	ld.hu	$r14,$r31,10(0xa)
1c005b58:	2a402b84 	ld.hu	$r4,$r28,10(0xa)
1c005b5c:	297eaaca 	st.h	$r10,$r22,-86(0xfaa)
1c005b60:	2a7eaacb 	ld.hu	$r11,$r22,-86(0xfaa)
1c005b64:	2a403391 	ld.hu	$r17,$r28,12(0xc)
1c005b68:	02803b8a 	addi.w	$r10,$r28,14(0xe)
1c005b6c:	001c2194 	mul.w	$r20,$r12,$r8
1c005b70:	00103d70 	add.w	$r16,$r11,$r15
1c005b74:	2a4033eb 	ld.hu	$r11,$r31,12(0xc)
1c005b78:	297eaad0 	st.h	$r16,$r22,-86(0xfaa)
1c005b7c:	2a7eaac7 	ld.hu	$r7,$r22,-86(0xfaa)
1c005b80:	001c1521 	mul.w	$r1,$r9,$r5
1c005b84:	001050ed 	add.w	$r13,$r7,$r20
1c005b88:	297eaacd 	st.h	$r13,$r22,-86(0xfaa)
1c005b8c:	2a7eaad2 	ld.hu	$r18,$r22,-86(0xfaa)
1c005b90:	02803be9 	addi.w	$r9,$r31,14(0xe)
1c005b94:	001c3886 	mul.w	$r6,$r4,$r14
1c005b98:	0010064f 	add.w	$r15,$r18,$r1
1c005b9c:	297eaacf 	st.h	$r15,$r22,-86(0xfaa)
1c005ba0:	2a7eaacc 	ld.hu	$r12,$r22,-86(0xfaa)
1c005ba4:	001c2e30 	mul.w	$r16,$r17,$r11
1c005ba8:	00101988 	add.w	$r8,$r12,$r6
1c005bac:	297eaac8 	st.h	$r8,$r22,-86(0xfaa)
1c005bb0:	2a7eaad4 	ld.hu	$r20,$r22,-86(0xfaa)
1c005bb4:	00104287 	add.w	$r7,$r20,$r16
1c005bb8:	297eaac7 	st.h	$r7,$r22,-86(0xfaa)
1c005bbc:	29bf32c7 	st.w	$r7,$r22,-52(0xfcc)
1c005bc0:	2a7eaac1 	ld.hu	$r1,$r22,-86(0xfaa)
1c005bc4:	58009d5a 	beq	$r10,$r26,156(0x9c) # 1c005c60 <shell16+0x1b10>
1c005bc8:	2a400152 	ld.hu	$r18,$r10,0
1c005bcc:	2a40012d 	ld.hu	$r13,$r9,0
1c005bd0:	2a400945 	ld.hu	$r5,$r10,2(0x2)
1c005bd4:	2a400924 	ld.hu	$r4,$r9,2(0x2)
1c005bd8:	2a40114f 	ld.hu	$r15,$r10,4(0x4)
1c005bdc:	001c364e 	mul.w	$r14,$r18,$r13
1c005be0:	2a40112c 	ld.hu	$r12,$r9,4(0x4)
1c005be4:	2a401954 	ld.hu	$r20,$r10,6(0x6)
1c005be8:	2a401931 	ld.hu	$r17,$r9,6(0x6)
1c005bec:	2a402150 	ld.hu	$r16,$r10,8(0x8)
1c005bf0:	2a402127 	ld.hu	$r7,$r9,8(0x8)
1c005bf4:	2a40294d 	ld.hu	$r13,$r10,10(0xa)
1c005bf8:	0280414a 	addi.w	$r10,$r10,16(0x10)
1c005bfc:	02804129 	addi.w	$r9,$r9,16(0x10)
1c005c00:	001c10a6 	mul.w	$r6,$r5,$r4
1c005c04:	00103821 	add.w	$r1,$r1,$r14
1c005c08:	2a7fe925 	ld.hu	$r5,$r9,-6(0xffa)
1c005c0c:	001c31e8 	mul.w	$r8,$r15,$r12
1c005c10:	0010182e 	add.w	$r14,$r1,$r6
1c005c14:	001c468b 	mul.w	$r11,$r20,$r17
1c005c18:	001021c6 	add.w	$r6,$r14,$r8
1c005c1c:	2a7ff134 	ld.hu	$r20,$r9,-4(0xffc)
1c005c20:	2a7ff148 	ld.hu	$r8,$r10,-4(0xffc)
1c005c24:	2a7ff931 	ld.hu	$r17,$r9,-2(0xffe)
1c005c28:	001c1e12 	mul.w	$r18,$r16,$r7
1c005c2c:	00102ccf 	add.w	$r15,$r6,$r11
1c005c30:	2a7ff94b 	ld.hu	$r11,$r10,-2(0xffe)
1c005c34:	001c15a4 	mul.w	$r4,$r13,$r5
1c005c38:	001049ec 	add.w	$r12,$r15,$r18
1c005c3c:	001c5110 	mul.w	$r16,$r8,$r20
1c005c40:	00101187 	add.w	$r7,$r12,$r4
1c005c44:	001c4572 	mul.w	$r18,$r11,$r17
1c005c48:	001040ed 	add.w	$r13,$r7,$r16
1c005c4c:	001049a5 	add.w	$r5,$r13,$r18
1c005c50:	297eaac5 	st.h	$r5,$r22,-86(0xfaa)
1c005c54:	29bf32c5 	st.w	$r5,$r22,-52(0xfcc)
1c005c58:	2a7eaac1 	ld.hu	$r1,$r22,-86(0xfaa)
1c005c5c:	5fff6d5a 	bne	$r10,$r26,-148(0x3ff6c) # 1c005bc8 <shell16+0x1a78>
1c005c60:	2a4002ea 	ld.hu	$r10,$r23,0
1c005c64:	001c2949 	mul.w	$r9,$r10,$r10
1c005c68:	001c6d24 	mul.w	$r4,$r9,$r27
1c005c6c:	297eaac4 	st.h	$r4,$r22,-86(0xfaa)
1c005c70:	2a7eaace 	ld.hu	$r14,$r22,-86(0xfaa)
1c005c74:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c005c78:	00113821 	sub.w	$r1,$r1,$r14
1c005c7c:	60009401 	blt	$r0,$r1,148(0x94) # 1c005d10 <shell16+0x1bc0>
1c005c80:	028007de 	addi.w	$r30,$r30,1(0x1)
1c005c84:	63fe7fd3 	blt	$r30,$r19,-388(0x3fe7c) # 1c005b00 <shell16+0x19b0>
1c005c88:	28bf12d8 	ld.w	$r24,$r22,-60(0xfc4)
1c005c8c:	00107717 	add.w	$r23,$r24,$r29
1c005c90:	29bf12d7 	st.w	$r23,$r22,-60(0xfc4)
1c005c94:	54092c00 	bl	2348(0x92c) # 1c0065c0 <get_clock>
1c005c98:	28800339 	ld.w	$r25,$r25,0
1c005c9c:	0015009c 	move	$r28,$r4
1c005ca0:	14001e9f 	lu12i.w	$r31,244(0xf4)
1c005ca4:	1400003b 	lu12i.w	$r27,1(0x1)
1c005ca8:	03bd0366 	ori	$r6,$r27,0xf40
1c005cac:	1c000f4f 	pcaddu12i	$r15,122(0x7a)
1c005cb0:	289961ef 	ld.w	$r15,$r15,1624(0x658)
1c005cb4:	0011678c 	sub.w	$r12,$r28,$r25
1c005cb8:	1c000f45 	pcaddu12i	$r5,122(0x7a)
1c005cbc:	028f40a5 	addi.w	$r5,$r5,976(0x3d0)
1c005cc0:	038903fa 	ori	$r26,$r31,0x240
1c005cc4:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005cc8:	028d3084 	addi.w	$r4,$r4,844(0x34c)
1c005ccc:	00216987 	div.wu	$r7,$r12,$r26
1c005cd0:	5c000b40 	bne	$r26,$r0,8(0x8) # 1c005cd8 <shell16+0x1b88>
1c005cd4:	002a0007 	break	0x7
1c005cd8:	298001fc 	st.w	$r28,$r15,0
1c005cdc:	5400d400 	bl	212(0xd4) # 1c005db0 <printf>
1c005ce0:	28bf22c3 	ld.w	$r3,$r22,-56(0xfc8)
1c005ce4:	54083c00 	bl	2108(0x83c) # 1c006520 <get_count_my>
1c005ce8:	0015009e 	move	$r30,$r4
1c005cec:	54080400 	bl	2052(0x804) # 1c0064f0 <get_count>
1c005cf0:	28beb2c6 	ld.w	$r6,$r22,-84(0xfac)
1c005cf4:	28bec2c8 	ld.w	$r8,$r22,-80(0xfb0)
1c005cf8:	28bf12d4 	ld.w	$r20,$r22,-60(0xfc4)
1c005cfc:	00111bdd 	sub.w	$r29,$r30,$r6
1c005d00:	00112098 	sub.w	$r24,$r4,$r8
1c005d04:	5ff17280 	bne	$r20,$r0,-3728(0x3f170) # 1c004e74 <shell16+0xd24>
1c005d08:	53f2efff 	b	-3348(0xffff2ec) # 1c004ff4 <shell16+0xea4>
1c005d0c:	03400000 	andi	$r0,$r0,0x0
1c005d10:	1c000f45 	pcaddu12i	$r5,122(0x7a)
1c005d14:	028de0a5 	addi.w	$r5,$r5,888(0x378)
1c005d18:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005d1c:	028ba084 	addi.w	$r4,$r4,744(0x2e8)
1c005d20:	54009000 	bl	144(0x90) # 1c005db0 <printf>
1c005d24:	28800313 	ld.w	$r19,$r24,0
1c005d28:	028007de 	addi.w	$r30,$r30,1(0x1)
1c005d2c:	028007bd 	addi.w	$r29,$r29,1(0x1)
1c005d30:	63fdd3d3 	blt	$r30,$r19,-560(0x3fdd0) # 1c005b00 <shell16+0x19b0>
1c005d34:	53ff57ff 	b	-172(0xfffff54) # 1c005c88 <shell16+0x1b38>
1c005d38:	1c000f45 	pcaddu12i	$r5,122(0x7a)
1c005d3c:	028cc0a5 	addi.w	$r5,$r5,816(0x330)
1c005d40:	1c000f44 	pcaddu12i	$r4,122(0x7a)
1c005d44:	028b0084 	addi.w	$r4,$r4,704(0x2c0)
1c005d48:	54006800 	bl	104(0x68) # 1c005db0 <printf>
1c005d4c:	28800313 	ld.w	$r19,$r24,0
1c005d50:	028007de 	addi.w	$r30,$r30,1(0x1)
1c005d54:	0280075a 	addi.w	$r26,$r26,1(0x1)
1c005d58:	63f9efd3 	blt	$r30,$r19,-1556(0x3f9ec) # 1c005744 <shell16+0x15f4>
1c005d5c:	53fb73ff 	b	-1168(0xffffb70) # 1c0058cc <shell16+0x177c>
1c005d60:	28bf12d2 	ld.w	$r18,$r22,-60(0xfc4)
1c005d64:	00150385 	move	$r5,$r28
1c005d68:	00150364 	move	$r4,$r27
1c005d6c:	02800653 	addi.w	$r19,$r18,1(0x1)
1c005d70:	29bf12d3 	st.w	$r19,$r22,-60(0xfc4)
1c005d74:	54003c00 	bl	60(0x3c) # 1c005db0 <printf>
1c005d78:	28800312 	ld.w	$r18,$r24,0
1c005d7c:	0280075a 	addi.w	$r26,$r26,1(0x1)
1c005d80:	63f34352 	blt	$r26,$r18,-3264(0x3f340) # 1c0050c0 <shell16+0xf70>
1c005d84:	53f53fff 	b	-2756(0xffff53c) # 1c0052c0 <shell16+0x1170>
1c005d88:	1c000f45 	pcaddu12i	$r5,122(0x7a)
1c005d8c:	028b00a5 	addi.w	$r5,$r5,704(0x2c0)
1c005d90:	00150384 	move	$r4,$r28
1c005d94:	54001c00 	bl	28(0x1c) # 1c005db0 <printf>
1c005d98:	28800313 	ld.w	$r19,$r24,0
1c005d9c:	028007de 	addi.w	$r30,$r30,1(0x1)
1c005da0:	0280075a 	addi.w	$r26,$r26,1(0x1)
1c005da4:	63f5d3d3 	blt	$r30,$r19,-2608(0x3f5d0) # 1c005374 <shell16+0x1224>
1c005da8:	53f75bff 	b	-2216(0xffff758) # 1c005500 <shell16+0x13b0>
1c005dac:	03400000 	andi	$r0,$r0,0x0

1c005db0 <printf>:
printf():
/code/fpga/nscscc-team/software/perf/lib/printf.c:2
int printf(const char *fmt,...)
{
1c005db0:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c005db4:	2980b07a 	st.w	$r26,$r3,44(0x2c)
1c005db8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c005dbc:	2980e077 	st.w	$r23,$r3,56(0x38)
1c005dc0:	2980d078 	st.w	$r24,$r3,52(0x34)
1c005dc4:	2980c079 	st.w	$r25,$r3,48(0x30)
1c005dc8:	2980a07b 	st.w	$r27,$r3,40(0x28)
1c005dcc:	2980907c 	st.w	$r28,$r3,36(0x24)
1c005dd0:	29811065 	st.w	$r5,$r3,68(0x44)
1c005dd4:	29812066 	st.w	$r6,$r3,72(0x48)
/code/fpga/nscscc-team/software/perf/lib/printf.c:10
void **arg;
void *ap;
int w;
__builtin_va_start(ap,fmt);
arg=ap;
for(i=0;fmt[i];i++)
1c005dd8:	28000097 	ld.b	$r23,$r4,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c005ddc:	0281107a 	addi.w	$r26,$r3,68(0x44)
/code/fpga/nscscc-team/software/perf/lib/printf.c:2
{
1c005de0:	29813067 	st.w	$r7,$r3,76(0x4c)
1c005de4:	29814068 	st.w	$r8,$r3,80(0x50)
1c005de8:	29815069 	st.w	$r9,$r3,84(0x54)
1c005dec:	2981606a 	st.w	$r10,$r3,88(0x58)
1c005df0:	2981706b 	st.w	$r11,$r3,92(0x5c)
/code/fpga/nscscc-team/software/perf/lib/printf.c:8
__builtin_va_start(ap,fmt);
1c005df4:	2980707a 	st.w	$r26,$r3,28(0x1c)
/code/fpga/nscscc-team/software/perf/lib/printf.c:10
for(i=0;fmt[i];i++)
1c005df8:	58008ae0 	beq	$r23,$r0,136(0x88) # 1c005e80 <printf+0xd0>
1c005dfc:	00150099 	move	$r25,$r4
1c005e00:	00150018 	move	$r24,$r0
1c005e04:	1c000f5c 	pcaddu12i	$r28,122(0x7a)
1c005e08:	028e539c 	addi.w	$r28,$r28,916(0x394)
1c005e0c:	0280201b 	addi.w	$r27,$r0,8(0x8)
1c005e10:	50001c00 	b	28(0x1c) # 1c005e2c <printf+0x7c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:80
		}

	}
	else{
		if(c=='\n') putchar('\r');
		putchar(c);
1c005e14:	001502e4 	move	$r4,$r23
1c005e18:	5401d800 	bl	472(0x1d8) # 1c005ff0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:10 (discriminator 2)
for(i=0;fmt[i];i++)
1c005e1c:	02800718 	addi.w	$r24,$r24,1(0x1)
1c005e20:	0010632c 	add.w	$r12,$r25,$r24
1c005e24:	28000197 	ld.b	$r23,$r12,0
1c005e28:	58005ae0 	beq	$r23,$r0,88(0x58) # 1c005e80 <printf+0xd0>
/code/fpga/nscscc-team/software/perf/lib/printf.c:13
	if(c=='%')
1c005e2c:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c005e30:	58001aec 	beq	$r23,$r12,24(0x18) # 1c005e48 <printf+0x98>
/code/fpga/nscscc-team/software/perf/lib/printf.c:79
		if(c=='\n') putchar('\r');
1c005e34:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005e38:	5fffdeec 	bne	$r23,$r12,-36(0x3ffdc) # 1c005e14 <printf+0x64>
/code/fpga/nscscc-team/software/perf/lib/printf.c:79 (discriminator 1)
1c005e3c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005e40:	5401b000 	bl	432(0x1b0) # 1c005ff0 <putchar>
1c005e44:	53ffd3ff 	b	-48(0xfffffd0) # 1c005e14 <printf+0x64>
1c005e48:	0010632c 	add.w	$r12,$r25,$r24
1c005e4c:	2800058d 	ld.b	$r13,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:15
		w=1;
1c005e50:	02800405 	addi.w	$r5,$r0,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:17
		switch(fmt[i+1])
1c005e54:	02814c10 	addi.w	$r16,$r0,83(0x53)
/code/fpga/nscscc-team/software/perf/lib/printf.c:68
				 w=w*10+(fmt[i+1]-'0');
1c005e58:	0280280f 	addi.w	$r15,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:17
		switch(fmt[i+1])
1c005e5c:	02bf6dac 	addi.w	$r12,$r13,-37(0xfdb)
1c005e60:	2980306c 	st.w	$r12,$r3,12(0xc)
1c005e64:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c005e68:	68017a0c 	bltu	$r16,$r12,376(0x178) # 1c005fe0 <printf+0x230>
1c005e6c:	0040898c 	slli.w	$r12,$r12,0x2
1c005e70:	0010338c 	add.w	$r12,$r28,$r12
1c005e74:	2880018c 	ld.w	$r12,$r12,0
1c005e78:	4c000180 	jirl	$r0,$r12,0
1c005e7c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:84
	}
}
	return 0;
}
1c005e80:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c005e84:	2880e077 	ld.w	$r23,$r3,56(0x38)
1c005e88:	2880d078 	ld.w	$r24,$r3,52(0x34)
1c005e8c:	2880c079 	ld.w	$r25,$r3,48(0x30)
1c005e90:	2880b07a 	ld.w	$r26,$r3,44(0x2c)
1c005e94:	2880a07b 	ld.w	$r27,$r3,40(0x28)
1c005e98:	2880907c 	ld.w	$r28,$r3,36(0x24)
1c005e9c:	00150004 	move	$r4,$r0
1c005ea0:	02818063 	addi.w	$r3,$r3,96(0x60)
1c005ea4:	4c000020 	jirl	$r0,$r1,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:65
				i++;
1c005ea8:	0010632c 	add.w	$r12,$r25,$r24
1c005eac:	2800098d 	ld.b	$r13,$r12,2(0x2)
1c005eb0:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 1)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c005eb4:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c005eb8:	2980306c 	st.w	$r12,$r3,12(0xc)
1c005ebc:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c005ec0:	00150005 	move	$r5,$r0
1c005ec4:	6bff9b6c 	bltu	$r27,$r12,-104(0x3ff98) # 1c005e5c <printf+0xac>
/code/fpga/nscscc-team/software/perf/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c005ec8:	001c3ca5 	mul.w	$r5,$r5,$r15
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c005ecc:	02800718 	addi.w	$r24,$r24,1(0x1)
1c005ed0:	0010632c 	add.w	$r12,$r25,$r24
/code/fpga/nscscc-team/software/perf/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c005ed4:	02bf41ae 	addi.w	$r14,$r13,-48(0xfd0)
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c005ed8:	2800058d 	ld.b	$r13,$r12,1(0x1)
1c005edc:	02bf3dac 	addi.w	$r12,$r13,-49(0xfcf)
1c005ee0:	2980306c 	st.w	$r12,$r3,12(0xc)
1c005ee4:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/printf.c:68 (discriminator 3)
				 w=w*10+(fmt[i+1]-'0');
1c005ee8:	001015c5 	add.w	$r5,$r14,$r5
/code/fpga/nscscc-team/software/perf/lib/printf.c:67 (discriminator 3)
				for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
1c005eec:	6fffdf6c 	bgeu	$r27,$r12,-36(0x3ffdc) # 1c005ec8 <printf+0x118>
1c005ef0:	53ff6fff 	b	-148(0xfffff6c) # 1c005e5c <printf+0xac>
/code/fpga/nscscc-team/software/perf/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c005ef4:	28800344 	ld.w	$r4,$r26,0
1c005ef8:	00150007 	move	$r7,$r0
1c005efc:	02800806 	addi.w	$r6,$r0,2(0x2)
/code/fpga/nscscc-team/software/perf/lib/printf.c:51
				arg++;
1c005f00:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:52
				i++;
1c005f04:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:50
				printbase((long)*arg,w,2,0);
1c005f08:	54021800 	bl	536(0x218) # 1c006120 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:53
				break;
1c005f0c:	53ff13ff 	b	-240(0xfffff10) # 1c005e1c <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:25
				putchar((long)*arg);
1c005f10:	28800344 	ld.w	$r4,$r26,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:27
				i++;
1c005f14:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:26
				arg++;
1c005f18:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:25
				putchar((long)*arg);
1c005f1c:	5400d400 	bl	212(0xd4) # 1c005ff0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:28
				break;
1c005f20:	53feffff 	b	-260(0xffffefc) # 1c005e1c <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c005f24:	28800344 	ld.w	$r4,$r26,0
1c005f28:	02800407 	addi.w	$r7,$r0,1(0x1)
1c005f2c:	02802806 	addi.w	$r6,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:36
				arg++;
1c005f30:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:37
				i++;
1c005f34:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:35
				printbase((long)*arg,w,10,1);
1c005f38:	5401e800 	bl	488(0x1e8) # 1c006120 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:38
				break;
1c005f3c:	53fee3ff 	b	-288(0xffffee0) # 1c005e1c <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c005f40:	28800344 	ld.w	$r4,$r26,0
1c005f44:	00150007 	move	$r7,$r0
1c005f48:	02802806 	addi.w	$r6,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:41
                arg++;
1c005f4c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:42
                i=i+2;
1c005f50:	02800b18 	addi.w	$r24,$r24,2(0x2)
/code/fpga/nscscc-team/software/perf/lib/printf.c:40
                printbase((long)*arg,w,10,0);
1c005f54:	5401cc00 	bl	460(0x1cc) # 1c006120 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:43
                break;
1c005f58:	53fec7ff 	b	-316(0xffffec4) # 1c005e1c <printf+0x6c>
1c005f5c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c005f60:	28800344 	ld.w	$r4,$r26,0
1c005f64:	00150007 	move	$r7,$r0
1c005f68:	02802006 	addi.w	$r6,$r0,8(0x8)
/code/fpga/nscscc-team/software/perf/lib/printf.c:46
				arg++;
1c005f6c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:47
				i++;
1c005f70:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:45
				printbase((long)*arg,w,8,0);
1c005f74:	5401ac00 	bl	428(0x1ac) # 1c006120 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:48
				break;
1c005f78:	53fea7ff 	b	-348(0xffffea4) # 1c005e1c <printf+0x6c>
1c005f7c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c005f80:	28800344 	ld.w	$r4,$r26,0
1c005f84:	00150007 	move	$r7,$r0
1c005f88:	02804006 	addi.w	$r6,$r0,16(0x10)
/code/fpga/nscscc-team/software/perf/lib/printf.c:57
				arg++;
1c005f8c:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:58
				i++;
1c005f90:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:56
				printbase((long)*arg,w,16,0);
1c005f94:	54018c00 	bl	396(0x18c) # 1c006120 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:59
				break;
1c005f98:	53fe87ff 	b	-380(0xffffe84) # 1c005e1c <printf+0x6c>
1c005f9c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printf.c:20
				putstring(*arg);
1c005fa0:	28800344 	ld.w	$r4,$r26,0
/code/fpga/nscscc-team/software/perf/lib/printf.c:22
				i++;
1c005fa4:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:21
				arg++;
1c005fa8:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:20
				putstring(*arg);
1c005fac:	5400c400 	bl	196(0xc4) # 1c006070 <putstring>
/code/fpga/nscscc-team/software/perf/lib/printf.c:23
				break;
1c005fb0:	53fe6fff 	b	-404(0xffffe6c) # 1c005e1c <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c005fb4:	28800344 	ld.w	$r4,$r26,0
1c005fb8:	00150007 	move	$r7,$r0
1c005fbc:	02802806 	addi.w	$r6,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/printf.c:31
				arg++;
1c005fc0:	0280135a 	addi.w	$r26,$r26,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/printf.c:32
				i++;
1c005fc4:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:30
				printbase((long)*arg,w,10,0);
1c005fc8:	54015800 	bl	344(0x158) # 1c006120 <printbase>
/code/fpga/nscscc-team/software/perf/lib/printf.c:33
				break;
1c005fcc:	53fe53ff 	b	-432(0xffffe50) # 1c005e1c <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:61
				putchar('%');
1c005fd0:	02809404 	addi.w	$r4,$r0,37(0x25)
/code/fpga/nscscc-team/software/perf/lib/printf.c:62
				i++;
1c005fd4:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printf.c:61
				putchar('%');
1c005fd8:	54001800 	bl	24(0x18) # 1c005ff0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:63
				break;
1c005fdc:	53fe43ff 	b	-448(0xffffe40) # 1c005e1c <printf+0x6c>
/code/fpga/nscscc-team/software/perf/lib/printf.c:73
				putchar('%');
1c005fe0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c005fe4:	54000c00 	bl	12(0xc) # 1c005ff0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printf.c:74
				break;
1c005fe8:	53fe37ff 	b	-460(0xffffe34) # 1c005e1c <printf+0x6c>
1c005fec:	03400000 	andi	$r0,$r0,0x0

1c005ff0 <putchar>:
putchar():
/code/fpga/nscscc-team/software/perf/lib/putchar.c:2
int putchar(int c)
{
1c005ff0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005ff4:	29803079 	st.w	$r25,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/putchar.c:9
return 0;
}

void tgt_putchar(c)
{   //UART_ADDR
    asm(
1c005ff8:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c005ffc:	03bc4339 	ori	$r25,$r25,0xf10
1c006000:	29000324 	st.b	$r4,$r25,0
1c006004:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/putchar.c:5
}
1c006008:	00150004 	move	$r4,$r0
1c00600c:	28803079 	ld.w	$r25,$r3,12(0xc)
1c006010:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006014:	4c000020 	jirl	$r0,$r1,0
1c006018:	03400000 	andi	$r0,$r0,0x0
1c00601c:	03400000 	andi	$r0,$r0,0x0

1c006020 <tgt_putchar>:
tgt_putchar():
/code/fpga/nscscc-team/software/perf/lib/putchar.c:8
{   //UART_ADDR
1c006020:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006024:	29803079 	st.w	$r25,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/putchar.c:9
    asm(
1c006028:	157f5ff9 	lu12i.w	$r25,-263425(0xbfaff)
1c00602c:	03bc4339 	ori	$r25,$r25,0xf10
1c006030:	29000324 	st.b	$r4,$r25,0
1c006034:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/putchar.c:16
        "st.b %0,$r25,0\n\t"        
        "nop\n\t"
        :
        :"r"(c)
        :"$r25");
}
1c006038:	28803079 	ld.w	$r25,$r3,12(0xc)
1c00603c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006040:	4c000020 	jirl	$r0,$r1,0
1c006044:	03400000 	andi	$r0,$r0,0x0
1c006048:	03400000 	andi	$r0,$r0,0x0
1c00604c:	03400000 	andi	$r0,$r0,0x0

1c006050 <uart_putchar>:
uart_putchar():
/code/fpga/nscscc-team/software/perf/lib/putchar.c:20

void uart_putchar (int c)
{
    while ((*((volatile uint32_t *)0xbeaf0004)) & 0x1);
1c006050:	157d5e0e 	lu12i.w	$r14,-267536(0xbeaf0)
1c006054:	038011cd 	ori	$r13,$r14,0x4
/code/fpga/nscscc-team/software/perf/lib/putchar.c:20 (discriminator 1)
1c006058:	288001ac 	ld.w	$r12,$r13,0
1c00605c:	0340058c 	andi	$r12,$r12,0x1
1c006060:	5ffff980 	bne	$r12,$r0,-8(0x3fff8) # 1c006058 <uart_putchar+0x8>
/code/fpga/nscscc-team/software/perf/lib/putchar.c:21
    (*((volatile uint32_t *)0xbeaf000c)) = c;
1c006064:	038031ce 	ori	$r14,$r14,0xc
1c006068:	298001c4 	st.w	$r4,$r14,0
/code/fpga/nscscc-team/software/perf/lib/putchar.c:22
}
1c00606c:	4c000020 	jirl	$r0,$r1,0

1c006070 <putstring>:
putstring():
/code/fpga/nscscc-team/software/perf/lib/puts.c:2
int putstring(char *s)
{
1c006070:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006074:	29803061 	st.w	$r1,$r3,12(0xc)
1c006078:	29802077 	st.w	$r23,$r3,8(0x8)
1c00607c:	29801078 	st.w	$r24,$r3,4(0x4)
1c006080:	29800079 	st.w	$r25,$r3,0
/code/fpga/nscscc-team/software/perf/lib/puts.c:4
char c;
while((c=*s))
1c006084:	28000097 	ld.b	$r23,$r4,0
1c006088:	580042e0 	beq	$r23,$r0,64(0x40) # 1c0060c8 <putstring+0x58>
1c00608c:	00150098 	move	$r24,$r4
/code/fpga/nscscc-team/software/perf/lib/puts.c:6
{
 if(c == '\n') putchar('\r');
1c006090:	02802819 	addi.w	$r25,$r0,10(0xa)
1c006094:	50001400 	b	20(0x14) # 1c0060a8 <putstring+0x38>
/code/fpga/nscscc-team/software/perf/lib/puts.c:7
 putchar(c);
1c006098:	001502e4 	move	$r4,$r23
1c00609c:	57ff57ff 	bl	-172(0xfffff54) # 1c005ff0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:4
while((c=*s))
1c0060a0:	28000317 	ld.b	$r23,$r24,0
1c0060a4:	580026e0 	beq	$r23,$r0,36(0x24) # 1c0060c8 <putstring+0x58>
/code/fpga/nscscc-team/software/perf/lib/puts.c:8
 s++;
1c0060a8:	02800718 	addi.w	$r24,$r24,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/puts.c:6
 if(c == '\n') putchar('\r');
1c0060ac:	5fffeef9 	bne	$r23,$r25,-20(0x3ffec) # 1c006098 <putstring+0x28>
/code/fpga/nscscc-team/software/perf/lib/puts.c:6 (discriminator 1)
1c0060b0:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0060b4:	57ff3fff 	bl	-196(0xfffff3c) # 1c005ff0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:7 (discriminator 1)
 putchar(c);
1c0060b8:	001502e4 	move	$r4,$r23
1c0060bc:	57ff37ff 	bl	-204(0xfffff34) # 1c005ff0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:4 (discriminator 1)
while((c=*s))
1c0060c0:	28000317 	ld.b	$r23,$r24,0
1c0060c4:	5fffe6e0 	bne	$r23,$r0,-28(0x3ffe4) # 1c0060a8 <putstring+0x38>
/code/fpga/nscscc-team/software/perf/lib/puts.c:11
}
return 0;
}
1c0060c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0060cc:	28802077 	ld.w	$r23,$r3,8(0x8)
1c0060d0:	28801078 	ld.w	$r24,$r3,4(0x4)
1c0060d4:	28800079 	ld.w	$r25,$r3,0
1c0060d8:	00150004 	move	$r4,$r0
1c0060dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0060e0:	4c000020 	jirl	$r0,$r1,0
1c0060e4:	03400000 	andi	$r0,$r0,0x0
1c0060e8:	03400000 	andi	$r0,$r0,0x0
1c0060ec:	03400000 	andi	$r0,$r0,0x0

1c0060f0 <puts>:
puts():
/code/fpga/nscscc-team/software/perf/lib/puts.c:15


int puts(char *s)
{
1c0060f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0060f4:	29803061 	st.w	$r1,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/puts.c:16
putstring(s);
1c0060f8:	57ff7bff 	bl	-136(0xfffff78) # 1c006070 <putstring>
/code/fpga/nscscc-team/software/perf/lib/puts.c:17
putchar('\r');
1c0060fc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c006100:	57fef3ff 	bl	-272(0xffffef0) # 1c005ff0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:18
putchar('\n');
1c006104:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006108:	57feebff 	bl	-280(0xffffee8) # 1c005ff0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/puts.c:20
return 0;
}
1c00610c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006110:	00150004 	move	$r4,$r0
1c006114:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006118:	4c000020 	jirl	$r0,$r1,0
1c00611c:	03400000 	andi	$r0,$r0,0x0

1c006120 <printbase>:
printbase():
/code/fpga/nscscc-team/software/perf/lib/printbase.c:2
int printbase(long v,int w,int base,int sign)
{
1c006120:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c006124:	29816077 	st.w	$r23,$r3,88(0x58)
1c006128:	29817061 	st.w	$r1,$r3,92(0x5c)
1c00612c:	29815078 	st.w	$r24,$r3,84(0x54)
1c006130:	29814079 	st.w	$r25,$r3,80(0x50)
1c006134:	00150097 	move	$r23,$r4
/code/fpga/nscscc-team/software/perf/lib/printbase.c:7
	int i,j;
	int c;
	char buf[64];
	unsigned long value;
	if(sign && v<0)
1c006138:	580008e0 	beq	$r7,$r0,8(0x8) # 1c006140 <printbase+0x20>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:7 (discriminator 1)
1c00613c:	6000a480 	blt	$r4,$r0,164(0xa4) # 1c0061e0 <printbase+0xc0>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:14
	value = -v;
	putchar('-');
	}
	else value=v;

	for(i=0;value;i++)
1c006140:	5800c2e0 	beq	$r23,$r0,192(0xc0) # 1c006200 <printbase+0xe0>
1c006144:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c006148:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00614c:	001131ce 	sub.w	$r14,$r14,$r12
1c006150:	50000800 	b	8(0x8) # 1c006158 <printbase+0x38>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:17
	{
	buf[i]=value%base;
	value=value/base;
1c006154:	001501b7 	move	$r23,$r13
/code/fpga/nscscc-team/software/perf/lib/printbase.c:16 (discriminator 3)
	buf[i]=value%base;
1c006158:	00219aed 	mod.wu	$r13,$r23,$r6
1c00615c:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c006164 <printbase+0x44>
1c006160:	002a0007 	break	0x7
1c006164:	2900018d 	st.b	$r13,$r12,0
/code/fpga/nscscc-team/software/perf/lib/printbase.c:17 (discriminator 3)
	value=value/base;
1c006168:	001031d8 	add.w	$r24,$r14,$r12
1c00616c:	00211aed 	div.wu	$r13,$r23,$r6
1c006170:	5c0008c0 	bne	$r6,$r0,8(0x8) # 1c006178 <printbase+0x58>
1c006174:	002a0007 	break	0x7
1c006178:	0280058c 	addi.w	$r12,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/printbase.c:14 (discriminator 3)
	for(i=0;value;i++)
1c00617c:	6fffdae6 	bgeu	$r23,$r6,-40(0x3ffd8) # 1c006154 <printbase+0x34>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22
	}

#define max(a,b) (((a)>(b))?(a):(b))

	for(j=max(w,i);j>0;j--)
1c006180:	600058b8 	blt	$r5,$r24,88(0x58) # 1c0061d8 <printbase+0xb8>
1c006184:	001500b7 	move	$r23,$r5
/code/fpga/nscscc-team/software/perf/lib/printbase.c:25
	{
		c=j>i?0:buf[j-1];
		putchar((c<=9)?c+'0':c-0xa+'a');
1c006188:	02802419 	addi.w	$r25,$r0,9(0x9)
1c00618c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/printbase.c:24
		c=j>i?0:buf[j-1];
1c006190:	0280406c 	addi.w	$r12,$r3,16(0x10)
1c006194:	00105d8c 	add.w	$r12,$r12,$r23
1c006198:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c00619c:	60001717 	blt	$r24,$r23,20(0x14) # 1c0061b0 <printbase+0x90>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:24 (discriminator 1)
1c0061a0:	283ffd8c 	ld.b	$r12,$r12,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/printbase.c:25 (discriminator 1)
		putchar((c<=9)?c+'0':c-0xa+'a');
1c0061a4:	02815d84 	addi.w	$r4,$r12,87(0x57)
1c0061a8:	60000b2c 	blt	$r25,$r12,8(0x8) # 1c0061b0 <printbase+0x90>
1c0061ac:	0280c184 	addi.w	$r4,$r12,48(0x30)
1c0061b0:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/printbase.c:25 (discriminator 4)
1c0061b4:	57fe3fff 	bl	-452(0xffffe3c) # 1c005ff0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22 (discriminator 4)
	for(j=max(w,i);j>0;j--)
1c0061b8:	5fffdae0 	bne	$r23,$r0,-40(0x3ffd8) # 1c006190 <printbase+0x70>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:28
	}
	return 0;
}
1c0061bc:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c0061c0:	28816077 	ld.w	$r23,$r3,88(0x58)
1c0061c4:	28815078 	ld.w	$r24,$r3,84(0x54)
1c0061c8:	28814079 	ld.w	$r25,$r3,80(0x50)
1c0061cc:	00150004 	move	$r4,$r0
1c0061d0:	02818063 	addi.w	$r3,$r3,96(0x60)
1c0061d4:	4c000020 	jirl	$r0,$r1,0
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c0061d8:	00150305 	move	$r5,$r24
1c0061dc:	53ffabff 	b	-88(0xfffffa8) # 1c006184 <printbase+0x64>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:10
	putchar('-');
1c0061e0:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c0061e4:	29803066 	st.w	$r6,$r3,12(0xc)
1c0061e8:	29802065 	st.w	$r5,$r3,8(0x8)
1c0061ec:	57fe07ff 	bl	-508(0xffffe04) # 1c005ff0 <putchar>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:9
	value = -v;
1c0061f0:	00115c17 	sub.w	$r23,$r0,$r23
/code/fpga/nscscc-team/software/perf/lib/printbase.c:10
	putchar('-');
1c0061f4:	28802065 	ld.w	$r5,$r3,8(0x8)
1c0061f8:	28803066 	ld.w	$r6,$r3,12(0xc)
1c0061fc:	53ff4bff 	b	-184(0xfffff48) # 1c006144 <printbase+0x24>
/code/fpga/nscscc-team/software/perf/lib/printbase.c:22
	for(j=max(w,i);j>0;j--)
1c006200:	67ffbc05 	bge	$r0,$r5,-68(0x3ffbc) # 1c0061bc <printbase+0x9c>
1c006204:	00150018 	move	$r24,$r0
1c006208:	53ff7fff 	b	-132(0xfffff7c) # 1c006184 <printbase+0x64>
1c00620c:	03400000 	andi	$r0,$r0,0x0

1c006210 <strlen>:
strlen():
/code/fpga/nscscc-team/software/perf/lib/string.c:14
 * The strlen() function returns the length of string @s.
 * */
size_t
strlen(const char *s) {
    size_t cnt = 0;
    while (*s ++ != '\0') {
1c006210:	2800008c 	ld.b	$r12,$r4,0
1c006214:	58002580 	beq	$r12,$r0,36(0x24) # 1c006238 <strlen+0x28>
/code/fpga/nscscc-team/software/perf/lib/string.c:13
    size_t cnt = 0;
1c006218:	0015000c 	move	$r12,$r0
1c00621c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:15
        cnt ++;
1c006220:	0280058c 	addi.w	$r12,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:14
    while (*s ++ != '\0') {
1c006224:	0010308d 	add.w	$r13,$r4,$r12
1c006228:	280001ad 	ld.b	$r13,$r13,0
1c00622c:	5ffff5a0 	bne	$r13,$r0,-12(0x3fff4) # 1c006220 <strlen+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:18
    }
    return cnt;
}
1c006230:	00150184 	move	$r4,$r12
1c006234:	4c000020 	jirl	$r0,$r1,0
/code/fpga/nscscc-team/software/perf/lib/string.c:13
    size_t cnt = 0;
1c006238:	0015000c 	move	$r12,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:18
}
1c00623c:	00150184 	move	$r4,$r12
1c006240:	4c000020 	jirl	$r0,$r1,0
1c006244:	03400000 	andi	$r0,$r0,0x0
1c006248:	03400000 	andi	$r0,$r0,0x0
1c00624c:	03400000 	andi	$r0,$r0,0x0

1c006250 <strnlen>:
strnlen():
/code/fpga/nscscc-team/software/perf/lib/string.c:35
 * @len if there is no '\0' character among the first @len characters
 * pointed by @s.
 * */
size_t
strnlen(const char *s, size_t len) {
    size_t cnt = 0;
1c006250:	0015000c 	move	$r12,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c006254:	580028a0 	beq	$r5,$r0,40(0x28) # 1c00627c <strnlen+0x2c>
1c006258:	2800008d 	ld.b	$r13,$r4,0
/code/fpga/nscscc-team/software/perf/lib/string.c:35
    size_t cnt = 0;
1c00625c:	0015000c 	move	$r12,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c006260:	5c0011a0 	bne	$r13,$r0,16(0x10) # 1c006270 <strnlen+0x20>
1c006264:	50001800 	b	24(0x18) # 1c00627c <strnlen+0x2c>
/code/fpga/nscscc-team/software/perf/lib/string.c:36 (discriminator 1)
1c006268:	280001ad 	ld.b	$r13,$r13,0
1c00626c:	580011a0 	beq	$r13,$r0,16(0x10) # 1c00627c <strnlen+0x2c>
/code/fpga/nscscc-team/software/perf/lib/string.c:37
        cnt ++;
1c006270:	0280058c 	addi.w	$r12,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:36
    while (cnt < len && *s ++ != '\0') {
1c006274:	0010308d 	add.w	$r13,$r4,$r12
1c006278:	5ffff0ac 	bne	$r5,$r12,-16(0x3fff0) # 1c006268 <strnlen+0x18>
/code/fpga/nscscc-team/software/perf/lib/string.c:40
    }
    return cnt;
}
1c00627c:	00150184 	move	$r4,$r12
1c006280:	4c000020 	jirl	$r0,$r1,0
1c006284:	03400000 	andi	$r0,$r0,0x0
1c006288:	03400000 	andi	$r0,$r0,0x0
1c00628c:	03400000 	andi	$r0,$r0,0x0

1c006290 <strcpy>:
strcpy():
/code/fpga/nscscc-team/software/perf/lib/string.c:59
char *
strcpy(char *dst, const char *src) {
#ifdef __HAVE_ARCH_MEM_OPTS
    return __strcpy(dst, src);
#else
    char *p = dst;
1c006290:	0015008c 	move	$r12,$r4
/code/fpga/nscscc-team/software/perf/lib/string.c:60 (discriminator 1)
    while ((*p ++ = *src ++) != '\0')
1c006294:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c006298:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c00629c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0062a0:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
1c0062a4:	5ffff1a0 	bne	$r13,$r0,-16(0x3fff0) # 1c006294 <strcpy+0x4>
/code/fpga/nscscc-team/software/perf/lib/string.c:64
        /* nothing */;
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c0062a8:	4c000020 	jirl	$r0,$r1,0
1c0062ac:	03400000 	andi	$r0,$r0,0x0

1c0062b0 <strncpy>:
strncpy():
/code/fpga/nscscc-team/software/perf/lib/string.c:79
 * The return value is @dst
 * */
char *
strncpy(char *dst, const char *src, size_t len) {
    char *p = dst;
    while (len > 0) {
1c0062b0:	580028c0 	beq	$r6,$r0,40(0x28) # 1c0062d8 <strncpy+0x28>
1c0062b4:	00101886 	add.w	$r6,$r4,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:78
    char *p = dst;
1c0062b8:	0015008d 	move	$r13,$r4
1c0062bc:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:80
        if ((*p = *src) != '\0') {
1c0062c0:	280000ac 	ld.b	$r12,$r5,0
/code/fpga/nscscc-team/software/perf/lib/string.c:83
            src ++;
        }
        p ++, len --;
1c0062c4:	028005ad 	addi.w	$r13,$r13,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:80
        if ((*p = *src) != '\0') {
1c0062c8:	293ffdac 	st.b	$r12,$r13,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:81
            src ++;
1c0062cc:	0012b00c 	sltu	$r12,$r0,$r12
1c0062d0:	001030a5 	add.w	$r5,$r5,$r12
/code/fpga/nscscc-team/software/perf/lib/string.c:79
    while (len > 0) {
1c0062d4:	5fffeda6 	bne	$r13,$r6,-20(0x3ffec) # 1c0062c0 <strncpy+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:86
    }
    return dst;
}
1c0062d8:	4c000020 	jirl	$r0,$r1,0
1c0062dc:	03400000 	andi	$r0,$r0,0x0

1c0062e0 <strncmp>:
strncmp():
/code/fpga/nscscc-team/software/perf/lib/string.c:101
 * the characters differ, until a terminating null-character is reached, or
 * until @n characters match in both strings, whichever happens first.
 * */
int
strncmp(const char *s1, const char *s2, size_t n) {
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
1c0062e0:	580040c0 	beq	$r6,$r0,64(0x40) # 1c006320 <strncmp+0x40>
1c0062e4:	2800008d 	ld.b	$r13,$r4,0
1c0062e8:	280000ae 	ld.b	$r14,$r5,0
1c0062ec:	580041a0 	beq	$r13,$r0,64(0x40) # 1c00632c <strncmp+0x4c>
1c0062f0:	5c003dae 	bne	$r13,$r14,60(0x3c) # 1c00632c <strncmp+0x4c>
1c0062f4:	001018a6 	add.w	$r6,$r5,$r6
1c0062f8:	50001c00 	b	28(0x1c) # 1c006314 <strncmp+0x34>
1c0062fc:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:101 (discriminator 1)
1c006300:	2800008d 	ld.b	$r13,$r4,0
1c006304:	580025a0 	beq	$r13,$r0,36(0x24) # 1c006328 <strncmp+0x48>
/code/fpga/nscscc-team/software/perf/lib/string.c:101 (discriminator 2)
1c006308:	2800018e 	ld.b	$r14,$r12,0
1c00630c:	00150185 	move	$r5,$r12
1c006310:	5c001dae 	bne	$r13,$r14,28(0x1c) # 1c00632c <strncmp+0x4c>
/code/fpga/nscscc-team/software/perf/lib/string.c:102
        n --, s1 ++, s2 ++;
1c006314:	028004ac 	addi.w	$r12,$r5,1(0x1)
1c006318:	02800484 	addi.w	$r4,$r4,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:101
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
1c00631c:	5fffe586 	bne	$r12,$r6,-28(0x3ffe4) # 1c006300 <strncmp+0x20>
/code/fpga/nscscc-team/software/perf/lib/string.c:104
    }
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c006320:	00150004 	move	$r4,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:105
}
1c006324:	4c000020 	jirl	$r0,$r1,0
1c006328:	280004ae 	ld.b	$r14,$r5,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:100
strncmp(const char *s1, const char *s2, size_t n) {
1c00632c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
/code/fpga/nscscc-team/software/perf/lib/string.c:104
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c006330:	2980306d 	st.w	$r13,$r3,12(0xc)
1c006334:	2a00306d 	ld.bu	$r13,$r3,12(0xc)
1c006338:	2980306e 	st.w	$r14,$r3,12(0xc)
1c00633c:	2a003064 	ld.bu	$r4,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/string.c:105
}
1c006340:	02804063 	addi.w	$r3,$r3,16(0x10)
/code/fpga/nscscc-team/software/perf/lib/string.c:104
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
1c006344:	001111a4 	sub.w	$r4,$r13,$r4
/code/fpga/nscscc-team/software/perf/lib/string.c:105
}
1c006348:	4c000020 	jirl	$r0,$r1,0
1c00634c:	03400000 	andi	$r0,$r0,0x0

1c006350 <strchr>:
strchr():
/code/fpga/nscscc-team/software/perf/lib/string.c:117
 * The strchr() function returns a pointer to the first occurrence of
 * character in @s. If the value is not found, the function returns 'NULL'.
 * */
char *
strchr(const char *s, char c) {
    while (*s != '\0') {
1c006350:	2800008d 	ld.b	$r13,$r4,0
/code/fpga/nscscc-team/software/perf/lib/string.c:116
strchr(const char *s, char c) {
1c006354:	0015008c 	move	$r12,$r4
/code/fpga/nscscc-team/software/perf/lib/string.c:117
    while (*s != '\0') {
1c006358:	58001da0 	beq	$r13,$r0,28(0x1c) # 1c006374 <strchr+0x24>
/code/fpga/nscscc-team/software/perf/lib/string.c:118
        if (*s == c) {
1c00635c:	5c000da5 	bne	$r13,$r5,12(0xc) # 1c006368 <strchr+0x18>
1c006360:	50002800 	b	40(0x28) # 1c006388 <strchr+0x38>
1c006364:	58001da5 	beq	$r13,$r5,28(0x1c) # 1c006380 <strchr+0x30>
/code/fpga/nscscc-team/software/perf/lib/string.c:121
            return (char *)s;
        }
        s ++;
1c006368:	0280058c 	addi.w	$r12,$r12,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:117
    while (*s != '\0') {
1c00636c:	2800018d 	ld.b	$r13,$r12,0
1c006370:	5ffff5a0 	bne	$r13,$r0,-12(0x3fff4) # 1c006364 <strchr+0x14>
/code/fpga/nscscc-team/software/perf/lib/string.c:123
    }
    return NULL;
1c006374:	00150004 	move	$r4,$r0
1c006378:	4c000020 	jirl	$r0,$r1,0
1c00637c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:121
        s ++;
1c006380:	00150184 	move	$r4,$r12
/code/fpga/nscscc-team/software/perf/lib/string.c:124
}
1c006384:	4c000020 	jirl	$r0,$r1,0
1c006388:	4c000020 	jirl	$r0,$r1,0
1c00638c:	03400000 	andi	$r0,$r0,0x0

1c006390 <strfind>:
strfind():
/code/fpga/nscscc-team/software/perf/lib/string.c:137
 * not found in @s, then it returns a pointer to the null byte at the
 * end of @s, rather than 'NULL'.
 * */
char *
strfind(const char *s, char c) {
    while (*s != '\0') {
1c006390:	2800008c 	ld.b	$r12,$r4,0
1c006394:	58001d80 	beq	$r12,$r0,28(0x1c) # 1c0063b0 <strfind+0x20>
/code/fpga/nscscc-team/software/perf/lib/string.c:138
        if (*s == c) {
1c006398:	5c000cac 	bne	$r5,$r12,12(0xc) # 1c0063a4 <strfind+0x14>
1c00639c:	50001800 	b	24(0x18) # 1c0063b4 <strfind+0x24>
1c0063a0:	58001185 	beq	$r12,$r5,16(0x10) # 1c0063b0 <strfind+0x20>
/code/fpga/nscscc-team/software/perf/lib/string.c:141
            break;
        }
        s ++;
1c0063a4:	02800484 	addi.w	$r4,$r4,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:137
    while (*s != '\0') {
1c0063a8:	2800008c 	ld.b	$r12,$r4,0
1c0063ac:	5ffff580 	bne	$r12,$r0,-12(0x3fff4) # 1c0063a0 <strfind+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:144
    }
    return (char *)s;
}
1c0063b0:	4c000020 	jirl	$r0,$r1,0
1c0063b4:	4c000020 	jirl	$r0,$r1,0
1c0063b8:	03400000 	andi	$r0,$r0,0x0
1c0063bc:	03400000 	andi	$r0,$r0,0x0

1c0063c0 <memset>:
memset():
/code/fpga/nscscc-team/software/perf/lib/string.c:251
memset(void *s, char c, size_t n) {
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memset(s, c, n);
#else
    char *p = s;
    while (n -- > 0) {
1c0063c0:	58001cc0 	beq	$r6,$r0,28(0x1c) # 1c0063dc <memset+0x1c>
1c0063c4:	00101886 	add.w	$r6,$r4,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:250
    char *p = s;
1c0063c8:	0015008c 	move	$r12,$r4
1c0063cc:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:252
        *p ++ = c;
1c0063d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0063d4:	293ffd85 	st.b	$r5,$r12,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:251
    while (n -- > 0) {
1c0063d8:	5ffff986 	bne	$r12,$r6,-8(0x3fff8) # 1c0063d0 <memset+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:256
    }
    return s;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c0063dc:	4c000020 	jirl	$r0,$r1,0

1c0063e0 <memcpy>:
memcpy():
/code/fpga/nscscc-team/software/perf/lib/string.c:279
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memcpy(dst, src, n);
#else
    const char *s = src;
    char *d = dst;
    while (n -- > 0) {
1c0063e0:	580024c0 	beq	$r6,$r0,36(0x24) # 1c006404 <memcpy+0x24>
1c0063e4:	001018a6 	add.w	$r6,$r5,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:278
    char *d = dst;
1c0063e8:	0015008c 	move	$r12,$r4
1c0063ec:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:280
        *d ++ = *s ++;
1c0063f0:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c0063f4:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c0063f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0063fc:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:279
    while (n -- > 0) {
1c006400:	5ffff0a6 	bne	$r5,$r6,-16(0x3fff0) # 1c0063f0 <memcpy+0x10>
/code/fpga/nscscc-team/software/perf/lib/string.c:284
    }
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c006404:	4c000020 	jirl	$r0,$r1,0
1c006408:	03400000 	andi	$r0,$r0,0x0
1c00640c:	03400000 	andi	$r0,$r0,0x0

1c006410 <memmove>:
memmove():
/code/fpga/nscscc-team/software/perf/lib/string.c:302
#ifdef __HAVE_ARCH_MEM_OPTS
    return __memmove(dst, src, n);
#else
    const char *s = src;
    char *d = dst;
    if (s < d && s + n > d) {
1c006410:	6c0030a4 	bgeu	$r5,$r4,48(0x30) # 1c006440 <memmove+0x30>
/code/fpga/nscscc-team/software/perf/lib/string.c:302 (discriminator 1)
1c006414:	001018ac 	add.w	$r12,$r5,$r6
1c006418:	6c00288c 	bgeu	$r4,$r12,40(0x28) # 1c006440 <memmove+0x30>
/code/fpga/nscscc-team/software/perf/lib/string.c:303
        s += n, d += n;
1c00641c:	0010188d 	add.w	$r13,$r4,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:304
        while (n -- > 0) {
1c006420:	580044c0 	beq	$r6,$r0,68(0x44) # 1c006464 <memmove+0x54>
/code/fpga/nscscc-team/software/perf/lib/string.c:305
            *-- d = *-- s;
1c006424:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006428:	2800018e 	ld.b	$r14,$r12,0
1c00642c:	02bffdad 	addi.w	$r13,$r13,-1(0xfff)
1c006430:	290001ae 	st.b	$r14,$r13,0
/code/fpga/nscscc-team/software/perf/lib/string.c:304
        while (n -- > 0) {
1c006434:	5ffff0ac 	bne	$r5,$r12,-16(0x3fff0) # 1c006424 <memmove+0x14>
1c006438:	4c000020 	jirl	$r0,$r1,0
1c00643c:	03400000 	andi	$r0,$r0,0x0
1c006440:	001018ae 	add.w	$r14,$r5,$r6
/code/fpga/nscscc-team/software/perf/lib/string.c:308
        }
    } else {
        while (n -- > 0) {
1c006444:	0015008c 	move	$r12,$r4
1c006448:	580020c0 	beq	$r6,$r0,32(0x20) # 1c006468 <memmove+0x58>
1c00644c:	03400000 	andi	$r0,$r0,0x0
/code/fpga/nscscc-team/software/perf/lib/string.c:309
            *d ++ = *s ++;
1c006450:	028004a5 	addi.w	$r5,$r5,1(0x1)
1c006454:	283ffcad 	ld.b	$r13,$r5,-1(0xfff)
1c006458:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00645c:	293ffd8d 	st.b	$r13,$r12,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:308
        while (n -- > 0) {
1c006460:	5ffff0ae 	bne	$r5,$r14,-16(0x3fff0) # 1c006450 <memmove+0x40>
/code/fpga/nscscc-team/software/perf/lib/string.c:314
        }
    }
    return dst;
#endif /* __HAVE_ARCH_MEM_OPTS */
}
1c006464:	4c000020 	jirl	$r0,$r1,0
1c006468:	4c000020 	jirl	$r0,$r1,0
1c00646c:	03400000 	andi	$r0,$r0,0x0

1c006470 <memcmp>:
memcmp():
/code/fpga/nscscc-team/software/perf/lib/string.c:334
 * */
int
memcmp(const void *v1, const void *v2, size_t n) {
    const char *s1 = (const char *)v1;
    const char *s2 = (const char *)v2;
    while (n -- > 0) {
1c006470:	580030c0 	beq	$r6,$r0,48(0x30) # 1c0064a0 <memcmp+0x30>
/code/fpga/nscscc-team/software/perf/lib/string.c:335
        if (*s1 != *s2) {
1c006474:	2800008c 	ld.b	$r12,$r4,0
1c006478:	280000ad 	ld.b	$r13,$r5,0
1c00647c:	00101886 	add.w	$r6,$r4,$r6
1c006480:	580015ac 	beq	$r13,$r12,20(0x14) # 1c006494 <memcmp+0x24>
1c006484:	50002400 	b	36(0x24) # 1c0064a8 <memcmp+0x38>
1c006488:	2800008c 	ld.b	$r12,$r4,0
1c00648c:	280000ad 	ld.b	$r13,$r5,0
1c006490:	5c00198d 	bne	$r12,$r13,24(0x18) # 1c0064a8 <memcmp+0x38>
/code/fpga/nscscc-team/software/perf/lib/string.c:338
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
        }
        s1 ++, s2 ++;
1c006494:	02800484 	addi.w	$r4,$r4,1(0x1)
1c006498:	028004a5 	addi.w	$r5,$r5,1(0x1)
/code/fpga/nscscc-team/software/perf/lib/string.c:334
    while (n -- > 0) {
1c00649c:	5fffec86 	bne	$r4,$r6,-20(0x3ffec) # 1c006488 <memcmp+0x18>
/code/fpga/nscscc-team/software/perf/lib/string.c:340
    }
    return 0;
1c0064a0:	00150004 	move	$r4,$r0
/code/fpga/nscscc-team/software/perf/lib/string.c:341
}
1c0064a4:	4c000020 	jirl	$r0,$r1,0
/code/fpga/nscscc-team/software/perf/lib/string.c:331
memcmp(const void *v1, const void *v2, size_t n) {
1c0064a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
/code/fpga/nscscc-team/software/perf/lib/string.c:336
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
1c0064ac:	2980306c 	st.w	$r12,$r3,12(0xc)
1c0064b0:	2a00306c 	ld.bu	$r12,$r3,12(0xc)
1c0064b4:	2980306d 	st.w	$r13,$r3,12(0xc)
1c0064b8:	2a003064 	ld.bu	$r4,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/string.c:341
}
1c0064bc:	02804063 	addi.w	$r3,$r3,16(0x10)
/code/fpga/nscscc-team/software/perf/lib/string.c:336
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
1c0064c0:	00111184 	sub.w	$r4,$r12,$r4
/code/fpga/nscscc-team/software/perf/lib/string.c:341
}
1c0064c4:	4c000020 	jirl	$r0,$r1,0
1c0064c8:	03400000 	andi	$r0,$r0,0x0
1c0064cc:	03400000 	andi	$r0,$r0,0x0

1c0064d0 <bzero>:
memset():
/code/fpga/nscscc-team/software/perf/lib/string.c:251
    while (n -- > 0) {
1c0064d0:	580014a0 	beq	$r5,$r0,20(0x14) # 1c0064e4 <bzero+0x14>
1c0064d4:	00101485 	add.w	$r5,$r4,$r5
/code/fpga/nscscc-team/software/perf/lib/string.c:252
        *p ++ = c;
1c0064d8:	02800484 	addi.w	$r4,$r4,1(0x1)
1c0064dc:	293ffc80 	st.b	$r0,$r4,-1(0xfff)
/code/fpga/nscscc-team/software/perf/lib/string.c:251
    while (n -- > 0) {
1c0064e0:	5ffff885 	bne	$r4,$r5,-8(0x3fff8) # 1c0064d8 <bzero+0x8>
bzero():
/code/fpga/nscscc-team/software/perf/lib/string.c:345

void bzero(void *s, size_t n){
	memset(s, 0, n);
}
1c0064e4:	4c000020 	jirl	$r0,$r1,0
1c0064e8:	03400000 	andi	$r0,$r0,0x0
1c0064ec:	03400000 	andi	$r0,$r0,0x0

1c0064f0 <get_count>:
get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:18
        );
    return  _contval;
}

unsigned long get_count()
{
1c0064f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0064f4:	29803079 	st.w	$r25,$r3,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c0064f8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c0064fc:	28800324 	ld.w	$r4,$r25,0
/code/fpga/nscscc-team/software/perf/lib/time.c:20
    return  _get_count();
}
1c006500:	28803079 	ld.w	$r25,$r3,12(0xc)
1c006504:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006508:	4c000020 	jirl	$r0,$r1,0
1c00650c:	03400000 	andi	$r0,$r0,0x0

1c006510 <_get_count>:
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:20
1c006510:	53ffe3ff 	b	-32(0xfffffe0) # 1c0064f0 <get_count>
1c006514:	03400000 	andi	$r0,$r0,0x0
1c006518:	03400000 	andi	$r0,$r0,0x0
1c00651c:	03400000 	andi	$r0,$r0,0x0

1c006520 <get_count_my>:
get_count_my():
/code/fpga/nscscc-team/software/perf/lib/time.c:25

unsigned long get_count_my()
{
    unsigned long n;
    asm volatile(
1c006520:	00006004 	rdtimel.w	$r4,$r0
/code/fpga/nscscc-team/software/perf/lib/time.c:30
        "rdcntvl.w %0\n\t"
        :"=r"(n)
        );
    return  n;
}
1c006524:	4c000020 	jirl	$r0,$r1,0
1c006528:	03400000 	andi	$r0,$r0,0x0
1c00652c:	03400000 	andi	$r0,$r0,0x0

1c006530 <clock_gettime>:
clock_gettime():
/code/fpga/nscscc-team/software/perf/lib/time.c:33

unsigned long clock_gettime(int sel,struct timespec *tmp)
{
1c006530:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006534:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c006538:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00653c:	2880032f 	ld.w	$r15,$r25,0
clock_gettime():
/code/fpga/nscscc-team/software/perf/lib/time.c:36
    unsigned long n = 0;
    n = _get_count();
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c006540:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c006544:	001c35ed 	mul.w	$r13,$r15,$r13
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c006548:	02819011 	addi.w	$r17,$r0,100(0x64)
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c00654c:	1400030e 	lu12i.w	$r14,24(0x18)
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c006550:	002145f0 	div.wu	$r16,$r15,$r17
1c006554:	5c000a20 	bne	$r17,$r0,8(0x8) # 1c00655c <clock_gettime+0x2c>
1c006558:	002a0007 	break	0x7
/code/fpga/nscscc-team/software/perf/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c00655c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c006560:	039a81ce 	ori	$r14,$r14,0x6a0
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c006564:	0021b211 	mod.wu	$r17,$r16,$r12
1c006568:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006570 <clock_gettime+0x40>
1c00656c:	002a0007 	break	0x7
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c006570:	002139f0 	div.wu	$r16,$r15,$r14
1c006574:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c00657c <clock_gettime+0x4c>
1c006578:	002a0007 	break	0x7
1c00657c:	0021b20e 	mod.wu	$r14,$r16,$r12
1c006580:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006588 <clock_gettime+0x58>
1c006584:	002a0007 	break	0x7
/code/fpga/nscscc-team/software/perf/lib/time.c:39
    tmp->tv_sec  = n/CPU_COUNT_PER_US/NSEC_PER_SEC;
1c006588:	298000a0 	st.w	$r0,$r5,0
/code/fpga/nscscc-team/software/perf/lib/time.c:38
    tmp->tv_msec = (n/CPU_COUNT_PER_US/USEC_PER_MSEC)%MSEC_PER_SEC;
1c00658c:	298030ae 	st.w	$r14,$r5,12(0xc)
/code/fpga/nscscc-team/software/perf/lib/time.c:37
    tmp->tv_usec = (n/CPU_COUNT_PER_US)%USEC_PER_MSEC;
1c006590:	298020b1 	st.w	$r17,$r5,8(0x8)
/code/fpga/nscscc-team/software/perf/lib/time.c:42
    //printf("clock ns=%d,sec=%d\n",tmp->tv_nsec,tmp->tv_sec);
    return 0;
}
1c006594:	28803079 	ld.w	$r25,$r3,12(0xc)
1c006598:	00150004 	move	$r4,$r0
/code/fpga/nscscc-team/software/perf/lib/time.c:36
    tmp->tv_nsec = n*(NSEC_PER_USEC/CPU_COUNT_PER_US)%NSEC_PER_USEC;
1c00659c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0065a0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0065a8 <clock_gettime+0x78>
1c0065a4:	002a0007 	break	0x7
1c0065a8:	298010ae 	st.w	$r14,$r5,4(0x4)
/code/fpga/nscscc-team/software/perf/lib/time.c:42
}
1c0065ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0065b0:	4c000020 	jirl	$r0,$r1,0
1c0065b4:	03400000 	andi	$r0,$r0,0x0
1c0065b8:	03400000 	andi	$r0,$r0,0x0
1c0065bc:	03400000 	andi	$r0,$r0,0x0

1c0065c0 <get_clock>:
get_clock():
/code/fpga/nscscc-team/software/perf/lib/time.c:42
1c0065c0:	53ff33ff 	b	-208(0xfffff30) # 1c0064f0 <get_count>
1c0065c4:	03400000 	andi	$r0,$r0,0x0
1c0065c8:	03400000 	andi	$r0,$r0,0x0
1c0065cc:	03400000 	andi	$r0,$r0,0x0

1c0065d0 <get_ns>:
get_ns():
/code/fpga/nscscc-team/software/perf/lib/time.c:52
    n=_get_count();
    return n;
}

unsigned long get_ns(void)
{
1c0065d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0065d4:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c0065d8:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c0065dc:	28800324 	ld.w	$r4,$r25,0
get_ns():
/code/fpga/nscscc-team/software/perf/lib/time.c:55
    unsigned long n=0;
    n = _get_count();
    n=n*(NSEC_PER_USEC/CPU_COUNT_PER_US);
1c0065e0:	0280280c 	addi.w	$r12,$r0,10(0xa)
/code/fpga/nscscc-team/software/perf/lib/time.c:57
    return n;
}
1c0065e4:	28803079 	ld.w	$r25,$r3,12(0xc)
1c0065e8:	001c3084 	mul.w	$r4,$r4,$r12
1c0065ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0065f0:	4c000020 	jirl	$r0,$r1,0
1c0065f4:	03400000 	andi	$r0,$r0,0x0
1c0065f8:	03400000 	andi	$r0,$r0,0x0
1c0065fc:	03400000 	andi	$r0,$r0,0x0

1c006600 <get_us>:
get_us():
/code/fpga/nscscc-team/software/perf/lib/time.c:61


unsigned long get_us(void)
{
1c006600:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006604:	29803079 	st.w	$r25,$r3,12(0xc)
_get_count():
/code/fpga/nscscc-team/software/perf/lib/time.c:7
    asm volatile(
1c006608:	157f5fd9 	lu12i.w	$r25,-263426(0xbfafe)
1c00660c:	28800324 	ld.w	$r4,$r25,0
get_us():
/code/fpga/nscscc-team/software/perf/lib/time.c:64
    unsigned long n=0;
    n = _get_count();
    n=n/CPU_COUNT_PER_US;
1c006610:	0281900c 	addi.w	$r12,$r0,100(0x64)
/code/fpga/nscscc-team/software/perf/lib/time.c:66
    return n;
}
1c006614:	28803079 	ld.w	$r25,$r3,12(0xc)
1c006618:	0021308d 	div.wu	$r13,$r4,$r12
1c00661c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006624 <get_us+0x24>
1c006620:	002a0007 	break	0x7
1c006624:	001501a4 	move	$r4,$r13
1c006628:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00662c:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .data:

1c080000 <init_value_32-0x2e8>:
1c080000:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c080004:	20732520 	ll.w	$r0,$r9,29476(0x7324)
1c080008:	6c696166 	bgeu	$r11,$r6,26976(0x6960) # 1c086968 <_end+0x6650>
1c08000c:	000a6465 	0x000a6465
1c080010:	2c732522 	vst	$vr2,$r9,-823(0xcc9)
1c080014:	20752520 	ll.w	$r0,$r9,29988(0x7524)
1c080018:	6d657469 	bgeu	$r3,$r9,91508(0x16574) # 1c09658c <_end+0x16274>
1c08001c:	20202273 	ll.w	$r19,$r19,8224(0x2020)
1c080020:	73206425 	0x73206425
1c080024:	000a6365 	0x000a6365
1c080028:	5f746e69 	bne	$r19,$r9,-35732(0x3746c) # 1c077494 <_data_lma+0x70e64>
1c08002c:	6e692038 	bgeu	$r1,$r24,-104160(0x26920) # 1c06694c <_data_lma+0x6031c>
1c080030:	5f72656e 	bne	$r11,$r14,-36252(0x37264) # 1c077294 <_data_lma+0x70c64>
1c080034:	646f7270 	bge	$r19,$r16,28528(0x6f70) # 1c086fa4 <_end+0x6c8c>
1c080038:	31746375 	0x31746375
1c08003c:	206f7420 	ll.w	$r0,$r1,28532(0x6f74)
1c080040:	5f746e69 	bne	$r19,$r9,-35732(0x3746c) # 1c0774ac <_data_lma+0x70e7c>
1c080044:	00000038 	0x00000038
1c080048:	746e6975 	0x746e6975
1c08004c:	6920385f 	bltu	$r2,$r31,73784(0x12038) # 1c092084 <_end+0x11d6c>
1c080050:	72656e6e 	0x72656e6e
1c080054:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # 1c0772c4 <_data_lma+0x70c94>
1c080058:	74637564 	xvabsd.wu	$xr4,$xr11,$xr29
1c08005c:	6f742031 	bgeu	$r1,$r17,-35808(0x37420) # 1c07747c <_data_lma+0x70e4c>
1c080060:	6e697520 	bgeu	$r9,$r0,-104076(0x26974) # 1c0669d4 <_data_lma+0x603a4>
1c080064:	00385f74 	0x00385f74
1c080068:	5f746e69 	bne	$r19,$r9,-35732(0x3746c) # 1c0774d4 <_data_lma+0x70ea4>
1c08006c:	69203631 	bltu	$r17,$r17,73780(0x12034) # 1c0920a0 <_end+0x11d88>
1c080070:	72656e6e 	0x72656e6e
1c080074:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # 1c0772e4 <_data_lma+0x70cb4>
1c080078:	74637564 	xvabsd.wu	$xr4,$xr11,$xr29
1c08007c:	6f742031 	bgeu	$r1,$r17,-35808(0x37420) # 1c07749c <_data_lma+0x70e6c>
1c080080:	746e6920 	0x746e6920
1c080084:	0036315f 	0x0036315f
1c080088:	746e6975 	0x746e6975
1c08008c:	2036315f 	ll.w	$r31,$r10,13872(0x3630)
1c080090:	656e6e69 	bge	$r19,$r9,93804(0x16e6c) # 1c096efc <_end+0x16be4>
1c080094:	72705f72 	0x72705f72
1c080098:	6375646f 	blt	$r3,$r15,-35484(0x37564) # 1c0775fc <_data_lma+0x70fcc>
1c08009c:	74203174 	xvsubwev.h.b	$xr20,$xr11,$xr12
1c0800a0:	6975206f 	bltu	$r3,$r15,95520(0x17520) # 1c0975c0 <_end+0x172a8>
1c0800a4:	315f746e 	vstelm.h	$vr14,$r3,-70(0x1ba),0x7
1c0800a8:	00000036 	0x00000036
1c0800ac:	5f746e69 	bne	$r19,$r9,-35732(0x3746c) # 1c077518 <_data_lma+0x70ee8>
1c0800b0:	69203233 	bltu	$r17,$r19,73776(0x12030) # 1c0920e0 <_end+0x11dc8>
1c0800b4:	72656e6e 	0x72656e6e
1c0800b8:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # 1c077328 <_data_lma+0x70cf8>
1c0800bc:	74637564 	xvabsd.wu	$xr4,$xr11,$xr29
1c0800c0:	6f742031 	bgeu	$r1,$r17,-35808(0x37420) # 1c0774e0 <_data_lma+0x70eb0>
1c0800c4:	746e6920 	0x746e6920
1c0800c8:	0032335f 	0x0032335f
1c0800cc:	746e6975 	0x746e6975
1c0800d0:	2032335f 	ll.w	$r31,$r26,12848(0x3230)
1c0800d4:	656e6e69 	bge	$r19,$r9,93804(0x16e6c) # 1c096f40 <_end+0x16c28>
1c0800d8:	72705f72 	0x72705f72
1c0800dc:	6375646f 	blt	$r3,$r15,-35484(0x37564) # 1c077640 <_data_lma+0x71010>
1c0800e0:	74203174 	xvsubwev.h.b	$xr20,$xr11,$xr12
1c0800e4:	6975206f 	bltu	$r3,$r15,95520(0x17520) # 1c097604 <_end+0x172ec>
1c0800e8:	335f746e 	xvstelm.h	$xr14,$r3,-70(0x1ba),0x7
1c0800ec:	00000032 	0x00000032
1c0800f0:	656e6e69 	bge	$r19,$r9,93804(0x16e6c) # 1c096f5c <_end+0x16c44>
1c0800f4:	72702072 	0x72702072
1c0800f8:	6375646f 	blt	$r3,$r15,-35484(0x37564) # 1c07765c <_data_lma+0x7102c>
1c0800fc:	65742074 	bge	$r3,$r20,95264(0x17420) # 1c09751c <_end+0x17204>
1c080100:	62207473 	blt	$r3,$r19,-122764(0x22074) # 1c062174 <_data_lma+0x5bb44>
1c080104:	6e696765 	bgeu	$r27,$r5,-104092(0x26964) # 1c066a68 <_data_lma+0x60438>
1c080108:	0000002e 	0x0000002e
1c08010c:	656e6e69 	bge	$r19,$r9,93804(0x16e6c) # 1c096f78 <_end+0x16c60>
1c080110:	72702072 	0x72702072
1c080114:	6375646f 	blt	$r3,$r15,-35484(0x37564) # 1c077678 <_data_lma+0x71048>
1c080118:	41502074 	beqz	$r3,-3059680(0x515020) # 1bd95138 <__stack_size+0x1bd85138>
1c08011c:	00215353 	div.wu	$r19,$r26,$r20
1c080120:	656e6e69 	bge	$r19,$r9,93804(0x16e6c) # 1c096f8c <_end+0x16c74>
1c080124:	72702072 	0x72702072
1c080128:	6375646f 	blt	$r3,$r15,-35484(0x37564) # 1c07768c <_data_lma+0x7105c>
1c08012c:	52452074 	b	30557472(0x1d24520) # 1dda464c <_stack+0x1ca4650>
1c080130:	21454f52 	sc.w	$r18,$r26,17740(0x454c)
1c080134:	00002121 	clo.d	$r1,$r9
1c080138:	656e6e69 	bge	$r19,$r9,93804(0x16e6c) # 1c096fa4 <_end+0x16c8c>
1c08013c:	72702072 	0x72702072
1c080140:	6375646f 	blt	$r3,$r15,-35484(0x37564) # 1c0776a4 <_data_lma+0x71074>
1c080144:	54203a74 	bl	-103800776(0x9d02038) # 15d8217c <__stack_size+0x15d7217c>
1c080148:	6c61746f 	bgeu	$r3,$r15,24948(0x6174) # 1c0862bc <_end+0x5fa4>
1c08014c:	756f4320 	0x756f4320
1c080150:	5328746e 	b	29042804(0x1bb2874) # 1dc329c4 <_stack+0x1b329c8>
1c080154:	6320436f 	blt	$r27,$r15,-57280(0x32040) # 1c072194 <_data_lma+0x6bb64>
1c080158:	746e756f 	0x746e756f
1c08015c:	203d2029 	ll.w	$r9,$r1,15648(0x3d20)
1c080160:	78257830 	0x78257830
1c080164:	0000000a 	0x0000000a
1c080168:	656e6e69 	bge	$r19,$r9,93804(0x16e6c) # 1c096fd4 <_end+0x16cbc>
1c08016c:	72702072 	0x72702072
1c080170:	6375646f 	blt	$r3,$r15,-35484(0x37564) # 1c0776d4 <_data_lma+0x710a4>
1c080174:	54203a74 	bl	-103800776(0x9d02038) # 15d821ac <__stack_size+0x15d721ac>
1c080178:	6c61746f 	bgeu	$r3,$r15,24948(0x6174) # 1c0862ec <_end+0x5fd4>
1c08017c:	756f4320 	0x756f4320
1c080180:	4328746e 	beqz	$r3,3876980(0x3b2874) # 1c4329f4 <_stack+0x3329f8>
1c080184:	63205550 	blt	$r10,$r16,-57260(0x32054) # 1c0721d8 <_data_lma+0x6bba8>
1c080188:	746e756f 	0x746e756f
1c08018c:	203d2029 	ll.w	$r9,$r1,15648(0x3d20)
1c080190:	78257830 	0x78257830
1c080194:	0000000a 	0x0000000a
1c080198:	1c005fd0 	pcaddu12i	$r16,766(0x2fe)
1c08019c:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0801a0:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0801a4:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0801a8:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0801ac:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0801b0:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0801b4:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0801b8:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0801bc:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0801c0:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0801c4:	1c005ea8 	pcaddu12i	$r8,757(0x2f5)
1c0801c8:	1c005eb4 	pcaddu12i	$r20,757(0x2f5)
1c0801cc:	1c005eb4 	pcaddu12i	$r20,757(0x2f5)
1c0801d0:	1c005eb4 	pcaddu12i	$r20,757(0x2f5)
1c0801d4:	1c005eb4 	pcaddu12i	$r20,757(0x2f5)
1c0801d8:	1c005eb4 	pcaddu12i	$r20,757(0x2f5)
1c0801dc:	1c005eb4 	pcaddu12i	$r20,757(0x2f5)
1c0801e0:	1c005eb4 	pcaddu12i	$r20,757(0x2f5)
1c0801e4:	1c005eb4 	pcaddu12i	$r20,757(0x2f5)
1c0801e8:	1c005eb4 	pcaddu12i	$r20,757(0x2f5)
1c0801ec:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0801f0:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0801f4:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0801f8:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0801fc:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080200:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080204:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080208:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c08020c:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080210:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080214:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080218:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c08021c:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080220:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080224:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080228:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c08022c:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080230:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080234:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080238:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c08023c:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080240:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080244:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080248:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c08024c:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080250:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080254:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080258:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c08025c:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080260:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080264:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080268:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c08026c:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080270:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080274:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080278:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c08027c:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080280:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080284:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c080288:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c08028c:	1c005ef4 	pcaddu12i	$r20,759(0x2f7)
1c080290:	1c005f10 	pcaddu12i	$r16,760(0x2f8)
1c080294:	1c005f24 	pcaddu12i	$r4,761(0x2f9)
1c080298:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c08029c:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0802a0:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0802a4:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0802a8:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0802ac:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0802b0:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0802b4:	1c005f40 	pcaddu12i	$r0,762(0x2fa)
1c0802b8:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0802bc:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0802c0:	1c005f60 	pcaddu12i	$r0,763(0x2fb)
1c0802c4:	1c005f80 	pcaddu12i	$r0,764(0x2fc)
1c0802c8:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0802cc:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0802d0:	1c005fa0 	pcaddu12i	$r0,765(0x2fd)
1c0802d4:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0802d8:	1c005fb4 	pcaddu12i	$r20,765(0x2fd)
1c0802dc:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0802e0:	1c005fe0 	pcaddu12i	$r0,767(0x2ff)
1c0802e4:	1c005f80 	pcaddu12i	$r0,764(0x2fc)

1c0802e8 <init_value_32>:
rodata_end():
1c0802e8:	00000429 	0x00000429

1c0802ec <init_value_16>:
1c0802ec:	000000d3 	0x000000d3

1c0802f0 <init_value_8>:
1c0802f0:	00000003 	0x00000003

1c0802f4 <inner_product_SIZE>:
1c0802f4:	00001f40 	ctz.w	$r0,$r26

1c0802f8 <inner_product_iter>:
1c0802f8:	00000002 	0x00000002
1c0802fc:	00000000 	0x00000000

Disassembly of section .got:

1c080300 <_GLOBAL_OFFSET_TABLE_>:
1c080300:	00000000 	0x00000000
1c080304:	1c08030c 	pcaddu12i	$r12,16408(0x4018)
1c080308:	1c080310 	pcaddu12i	$r16,16408(0x4018)

Disassembly of section .bss:

1c08030c <end_time>:
__bss_start():
1c08030c:	00000000 	0x00000000

1c080310 <start_time>:
1c080310:	00000000 	0x00000000

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
  18:	005db000 	0x005db000
  1c:	00023c1c 	0x00023c1c
  20:	00000000 	0x00000000
  24:	03040200 	lu52i.d	$r0,$r16,256(0x100)
  28:	000b0704 	0x000b0704
  2c:	04030000 	csrrd	$r0,0xc0
  30:	00000607 	0x00000607
  34:	00e50400 	bstrpick.d	$r0,$r0,0x25,0x1
  38:	01010000 	fadd.d	$f0,$f0,$f0
  3c:	00022805 	0x00022805
  40:	005db000 	0x005db000
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
  c4:	005e5c01 	0x005e5c01
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
 108:	005f0c0c 	0x005f0c0c
 10c:	0002471c 	0x0002471c
 110:	00012000 	asrtle.d	$r0,$r8
 114:	56010d00 	bl	67240204(0x402010c) # 4020220 <__stack_size+0x4010220>
 118:	010d3201 	fmaxa.d	$f1,$f16,$f12
 11c:	00300157 	0x00300157
 120:	005f200e 	0x005f200e
 124:	0002531c 	0x0002531c
 128:	5f3c0c00 	bne	$r0,$r0,-50164(0x33c0c) # ffff3d34 <_stack+0xe3ef3d38>
 12c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 130:	01410000 	0x01410000
 134:	010d0000 	fmaxa.d	$f0,$f0,$f0
 138:	0d3a0156 	0x0d3a0156
 13c:	31015701 	0x31015701
 140:	5f580c00 	bne	$r0,$r0,-42996(0x3580c) # ffff594c <_stack+0xe3ef5950>
 144:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 148:	01590000 	0x01590000
 14c:	010d0000 	fmaxa.d	$f0,$f0,$f0
 150:	0d3a0156 	0x0d3a0156
 154:	30015701 	0x30015701
 158:	5f780c00 	bne	$r0,$r0,-34804(0x3780c) # ffff7964 <_stack+0xe3ef7968>
 15c:	02471c00 	sltui	$r0,$r0,455(0x1c7)
 160:	01720000 	0x01720000
 164:	010d0000 	fmaxa.d	$f0,$f0,$f0
 168:	008b0256 	bstrins.d	$r22,$r18,0xb,0x0
 16c:	0157010d 	0x0157010d
 170:	980c0030 	0x980c0030
 174:	471c005f 	bnez	$r2,-58368(0x7f1c00) # ffff1d74 <_stack+0xe3ef1d78>
 178:	8a000002 	0x8a000002
 17c:	0d000001 	fsel	$f1,$f0,$f0,$fcc0
 180:	40015601 	beqz	$r16,262484(0x40154) # 402d4 <__stack_size+0x302d4>
 184:	0157010d 	0x0157010d
 188:	b00e0030 	0xb00e0030
 18c:	5f1c005f 	bne	$r2,$r31,-58368(0x31c00) # ffff1d8c <_stack+0xe3ef1d90>
 190:	0c000002 	0x0c000002
 194:	1c005fcc 	pcaddu12i	$r12,766(0x2fe)
 198:	00000247 	0x00000247
 19c:	000001ab 	0x000001ab
 1a0:	0156010d 	0x0156010d
 1a4:	57010d3a 	bl	82510092(0x4eb010c) # 4eb02b0 <__stack_size+0x4ea02b0>
 1a8:	0c003001 	0x0c003001
 1ac:	1c005fdc 	pcaddu12i	$r28,766(0x2fe)
 1b0:	00000253 	0x00000253
 1b4:	000001bf 	0x000001bf
 1b8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1bc:	0f002508 	0x0f002508
 1c0:	1c005fe8 	pcaddu12i	$r8,767(0x2ff)
 1c4:	00000253 	0x00000253
 1c8:	0254010d 	sltui	$r13,$r8,1280(0x500)
 1cc:	00002508 	clz.d	$r8,$r8
 1d0:	00000010 	0x00000010
 1d4:	00fd0b00 	bstrpick.d	$r0,$r24,0x3d,0x2
 1d8:	19010000 	pcaddi	$r0,-522240(0x80800)
 1dc:	00022805 	0x00022805
 1e0:	0001e700 	asrtgt.d	$r24,$r25
 1e4:	11000600 	addu16i.d	$r0,$r16,16385(0x4001)
 1e8:	1c005e3c 	pcaddu12i	$r28,753(0x2f1)
 1ec:	00000014 	0x00000014
 1f0:	00000216 	0x00000216
 1f4:	0000fd0b 	0x0000fd0b
 1f8:	05190100 	0x05190100
 1fc:	00000228 	0x00000228
 200:	00000206 	0x00000206
 204:	440f0006 	bnez	$r0,1576704(0x180f00) # 181104 <__stack_size+0x171104>
 208:	531c005e 	b	24845312(0x17b1c00) # 17b1e08 <__stack_size+0x17a1e08>
 20c:	0d000002 	fsel	$f2,$f0,$f0,$fcc0
 210:	3d015401 	0x3d015401
 214:	1c0f0000 	pcaddu12i	$r0,30720(0x7800)
 218:	531c005e 	b	24845312(0x17b1c00) # 17b1e18 <__stack_size+0x17a1e18>
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
 284:	005ff000 	0x005ff000
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
 2b4:	201c0060 	ll.w	$r0,$r3,7168(0x1c00)
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
 2f8:	005ff000 	0x005ff000
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
 330:	1c005ff0 	pcaddu12i	$r16,767(0x2ff)
 334:	00003002 	revb.2h	$r2,$r0
 338:	01030100 	fsub.d	$f0,$f8,$f0
 33c:	0000760e 	0x0000760e
 340:	0003ba00 	0x0003ba00
 344:	0003b800 	0x0003b800
 348:	0f000000 	0x0f000000
 34c:	00000069 	0x00000069
 350:	1c006020 	pcaddu12i	$r0,769(0x301)
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
 37c:	1c006070 	pcaddu12i	$r16,771(0x303)
 380:	000000ac 	0x000000ac
 384:	00000255 	0x00000255
 388:	0b070402 	0x0b070402
 38c:	02000000 	slti	$r0,$r0,0
 390:	00060704 	alsl.wu	$r4,$r24,$r1,0x1
 394:	1f030000 	pcaddu18i	$r0,-518144(0x81800)
 398:	01000001 	0x01000001
 39c:	00a9050e 	bstrins.d	$r14,$r8,0x29,0x1
 3a0:	60f00000 	blt	$r0,$r0,61440(0xf000) # f3a0 <__stack_size-0xc60>
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
 3d4:	0060fc07 	bstrpick.w	$r7,$r0,0x0,0x1f
 3d8:	0000bd1c 	0x0000bd1c
 3dc:	00008600 	0x00008600
 3e0:	54010800 	bl	264(0x108) # 4e8 <__stack_size-0xfb18>
 3e4:	5401f303 	bl	-66321936(0xc0c01f0) # fc0c05d4 <_stack+0xdffc05d8>
 3e8:	61040700 	blt	$r24,$r0,66564(0x10404) # 107ec <__stack_size+0x7ec>
 3ec:	01671c00 	0x01671c00
 3f0:	00990000 	bstrins.d	$r0,$r0,0x19,0x0
 3f4:	01080000 	0x01080000
 3f8:	003d0154 	0x003d0154
 3fc:	00610c09 	bstrins.w	$r9,$r0,0x1,0x3
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
 42c:	1c006070 	pcaddu12i	$r16,771(0x303)
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
 474:	60b00e00 	blt	$r16,$r0,45068(0xb00c) # b480 <__stack_size-0x4b80>
 478:	00081c00 	bytepick.w	$r0,$r0,$r7,0x0
 47c:	01410000 	0x01410000
 480:	fd050000 	0xfd050000
 484:	01000000 	0x01000000
 488:	00a91006 	bstrins.d	$r6,$r0,0x29,0x4
 48c:	01310000 	0x01310000
 490:	00060000 	alsl.wu	$r0,$r0,$r0,0x1
 494:	0060b809 	bstrpick.w	$r9,$r0,0x0,0xe
 498:	0001671c 	0x0001671c
 49c:	54010800 	bl	264(0x108) # 5a4 <__stack_size-0xfa5c>
 4a0:	00003d01 	revb.d	$r1,$r8
 4a4:	0060a007 	bstrpick.w	$r7,$r0,0x0,0x8
 4a8:	0001671c 	0x0001671c
 4ac:	00015500 	asrtle.d	$r8,$r21
 4b0:	54010800 	bl	264(0x108) # 5b8 <__stack_size-0xfa48>
 4b4:	00008702 	0x00008702
 4b8:	0060c009 	bstrpick.w	$r9,$r0,0x0,0x10
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
 4f0:	1c006120 	pcaddu12i	$r0,777(0x309)
 4f4:	000000ec 	0x000000ec
 4f8:	000002ed 	0x000002ed
 4fc:	0b070402 	0x0b070402
 500:	02000000 	slti	$r0,$r0,0
 504:	00060704 	alsl.wu	$r4,$r24,$r1,0x1
 508:	db030000 	0xdb030000
 50c:	01000000 	0x01000000
 510:	01490501 	0x01490501
 514:	61200000 	blt	$r0,$r0,73728(0x12000) # 12514 <__stack_size+0x2514>
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
 5cc:	201c0061 	ll.w	$r1,$r3,7168(0x1c00)
 5d0:	23000000 	sc.d	$r0,$r0,0
 5d4:	0a000001 	0x0a000001
 5d8:	000000fd 	0x000000fd
 5dc:	49020a01 	0x49020a01
 5e0:	12000001 	addu16i.d	$r1,$r0,-32768(0x8000)
 5e4:	0b000001 	0x0b000001
 5e8:	61f00c00 	blt	$r0,$r0,126988(0x1f00c) # 1f5f4 <__stack_size+0xf5f4>
 5ec:	016e1c00 	0x016e1c00
 5f0:	010d0000 	fmaxa.d	$f0,$f0,$f0
 5f4:	2d080254 	0x2d080254
 5f8:	880e0000 	0x880e0000
 5fc:	301c0061 	0x301c0061
 600:	0a000000 	0x0a000000
 604:	000000fd 	0x000000fd
 608:	49020a01 	0x49020a01
 60c:	3e000001 	0x3e000001
 610:	0b000001 	0x0b000001
 614:	61b80f00 	blt	$r24,$r0,112652(0x1b80c) # 1be20 <__stack_size+0xbe20>
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
 69c:	1c0064d0 	pcaddu12i	$r16,806(0x326)
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
 6d4:	0064d000 	bstrpick.w	$r0,$r0,0x4,0x14
 6d8:	64d0021c 	bge	$r16,$r28,53248(0xd000) # d6d8 <__stack_size-0x2928>
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
 708:	141c0064 	lu12i.w	$r4,57347(0xe003)
 70c:	0b000000 	0x0b000000
 710:	00000293 	0x00000293
 714:	0000077d 	0x0000077d
 718:	0000077b 	0x0000077b
 71c:	0c000000 	0x0c000000
 720:	00000161 	0x00000161
 724:	01014b01 	fadd.d	$f1,$f24,$f18
 728:	0000014c 	0x0000014c
 72c:	1c006470 	pcaddu12i	$r16,803(0x323)
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
 7cc:	5c1c0064 	bne	$r3,$r4,7168(0x1c00) # 23cc <__stack_size-0xdc34>
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
 848:	63e00000 	blt	$r0,$r0,-8192(0x3e000) # ffffe848 <_stack+0xe3efe84c>
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
 8fc:	1c006390 	pcaddu12i	$r16,796(0x31c)
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
 934:	00635000 	bstrins.w	$r0,$r0,0x3,0x14
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
 96c:	62e00000 	blt	$r0,$r0,-73728(0x2e000) # fffee96c <_stack+0xe3eee970>
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
 9c0:	0062b000 	bstrpick.w	$r0,$r0,0x2,0xc
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
 a24:	1c006290 	pcaddu12i	$r16,788(0x314)
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
 a74:	341c0062 	0x341c0062
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
 ac0:	62100000 	blt	$r0,$r0,-126976(0x21000) # fffe1ac0 <_stack+0xe3ee1ac4>
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
 afc:	1c0063c0 	pcaddu12i	$r0,798(0x31e)
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
 b48:	0064f000 	bstrpick.w	$r0,$r0,0x4,0x1c
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
 bc4:	1c006600 	pcaddu12i	$r0,816(0x330)
 bc8:	00000030 	0x00000030
 bcc:	00da9c01 	bstrpick.d	$r1,$r0,0x1a,0x27
 bd0:	6e080000 	bgeu	$r0,$r0,-129024(0x20800) # fffe13d0 <_stack+0xe3ee13d4>
 bd4:	133e0100 	addu16i.d	$r0,$r8,-12416(0xcf80)
 bd8:	0000002c 	0x0000002c
 bdc:	00000db4 	0x00000db4
 be0:	00000dac 	0x00000dac
 be4:	00022e09 	0x00022e09
 be8:	00660000 	bstrins.w	$r0,$r0,0x6,0x0
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
 c14:	65d00000 	bge	$r0,$r0,118784(0x1d000) # 1dc14 <__stack_size+0xdc14>
 c18:	00241c00 	crc.w.b.w	$r0,$r0,$r7
 c1c:	9c010000 	0x9c010000
 c20:	0000012c 	0x0000012c
 c24:	01006e08 	0x01006e08
 c28:	002c1335 	alsl.d	$r21,$r25,$r4,0x1
 c2c:	0e110000 	0x0e110000
 c30:	0e090000 	0x0e090000
 c34:	2e090000 	0x2e090000
 c38:	d0000002 	0xd0000002
 c3c:	031c0065 	lu52i.d	$r5,$r3,1792(0x700)
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
 c84:	841c0065 	0x841c0065
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
 cc8:	65300000 	bge	$r0,$r0,77824(0x13000) # 13cc8 <__stack_size+0x3cc8>
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
 cfc:	00652000 	bstrins.w	$r0,$r0,0x5,0x8
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
 d28:	64f00000 	bge	$r0,$r0,61440(0xf000) # fd28 <__stack_size-0x2d8>
 d2c:	001c1c00 	mul.w	$r0,$r0,$r7
 d30:	9c010000 	0x9c010000
 d34:	0000022e 	0x0000022e
 d38:	00022e09 	0x00022e09
 d3c:	0064f000 	bstrpick.w	$r0,$r0,0x4,0x1c
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
 6d8:	64d00000 	bge	$r0,$r0,53248(0xd000) # d6d8 <__stack_size-0x2928>
 6dc:	64d81c00 	bge	$r0,$r0,55324(0xd81c) # def8 <__stack_size-0x2108>
 6e0:	00011c00 	asrtle.d	$r0,$r7
 6e4:	0064d854 	bstrpick.w	$r20,$r2,0x4,0x16
 6e8:	0064e81c 	bstrpick.w	$r28,$r0,0x4,0x1a
 6ec:	f300041c 	0xf300041c
 6f0:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
	...
 6fc:	d0000000 	0xd0000000
 700:	d81c0064 	0xd81c0064
 704:	011c0064 	0x011c0064
 708:	64d85500 	bge	$r8,$r0,55380(0xd854) # df5c <__stack_size-0x20a4>
 70c:	64e81c00 	bge	$r0,$r0,59420(0xe81c) # ef28 <__stack_size-0x10d8>
 710:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 714:	9f5501f3 	0x9f5501f3
	...
 720:	00050502 	alsl.w	$r2,$r8,$r1,0x3
 724:	64d00000 	bge	$r0,$r0,53248(0xd000) # d724 <__stack_size-0x28dc>
 728:	64d01c00 	bge	$r0,$r0,53276(0xd01c) # d744 <__stack_size-0x28bc>
 72c:	00011c00 	asrtle.d	$r0,$r7
 730:	0064d055 	bstrpick.w	$r21,$r2,0x4,0x14
 734:	0064d81c 	bstrpick.w	$r28,$r0,0x4,0x16
 738:	7500031c 	0x7500031c
 73c:	64d89f7f 	bge	$r27,$r31,55452(0xd89c) # dfd8 <__stack_size-0x2028>
 740:	64e41c00 	bge	$r0,$r0,58396(0xe41c) # eb5c <__stack_size-0x14a4>
 744:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 748:	315501f3 	vstelm.h	$vr19,$r15,128(0x80),0x5
 74c:	00009f1c 	0x00009f1c
 750:	00000000 	0x00000000
 754:	00020000 	0x00020000
 758:	64d00000 	bge	$r0,$r0,53248(0xd000) # d758 <__stack_size-0x28a8>
 75c:	64d81c00 	bge	$r0,$r0,55324(0xd81c) # df78 <__stack_size-0x2088>
 760:	00011c00 	asrtle.d	$r0,$r7
 764:	0064d854 	bstrpick.w	$r20,$r2,0x4,0x16
 768:	0064e81c 	bstrpick.w	$r28,$r0,0x4,0x1a
 76c:	f300041c 	0xf300041c
 770:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
 774:	00000000 	0x00000000
 778:	04000000 	csrrd	$r0,0x0
 77c:	0064d000 	bstrpick.w	$r0,$r0,0x4,0x14
 780:	0064e81c 	bstrpick.w	$r28,$r0,0x4,0x1a
 784:	5400011c 	bl	74448896(0x4700000) # 4700784 <__stack_size+0x46f0784>
	...
 794:	1c006470 	pcaddu12i	$r16,803(0x323)
 798:	1c006488 	pcaddu12i	$r8,804(0x324)
 79c:	88540001 	0x88540001
 7a0:	c81c0064 	0xc81c0064
 7a4:	041c0064 	csrxchg	$r4,$r3,0x700
 7a8:	5401f300 	bl	-67108368(0xc0001f0) # fc000998 <_stack+0xdff0099c>
 7ac:	0000009f 	0x0000009f
	...
 7b8:	00647000 	bstrins.w	$r0,$r0,0x4,0x1c
 7bc:	0064881c 	bstrpick.w	$r28,$r0,0x4,0x2
 7c0:	5500011c 	bl	74514432(0x4710000) # 47107c0 <__stack_size+0x47007c0>
 7c4:	1c006488 	pcaddu12i	$r8,804(0x324)
 7c8:	1c0064c8 	pcaddu12i	$r8,806(0x326)
 7cc:	01f30004 	0x01f30004
 7d0:	00009f55 	0x00009f55
 7d4:	00000000 	0x00000000
 7d8:	04000000 	csrrd	$r0,0x0
 7dc:	00000004 	0x00000004
 7e0:	64700001 	bge	$r0,$r1,28672(0x7000) # 77e0 <__stack_size-0x8820>
 7e4:	64701c00 	bge	$r0,$r0,28700(0x701c) # 7800 <__stack_size-0x8800>
 7e8:	00011c00 	asrtle.d	$r0,$r7
 7ec:	00647056 	bstrins.w	$r22,$r2,0x4,0x1c
 7f0:	0064801c 	bstrpick.w	$r28,$r0,0x4,0x0
 7f4:	7600031c 	0x7600031c
 7f8:	64809f7f 	bge	$r27,$r31,32924(0x809c) # 8894 <__stack_size-0x776c>
 7fc:	64941c00 	bge	$r0,$r0,37916(0x941c) # 9c18 <__stack_size-0x63e8>
 800:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 804:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 808:	64949f1c 	bge	$r24,$r28,38044(0x949c) # 9ca4 <__stack_size-0x635c>
 80c:	64a01c00 	bge	$r0,$r0,40988(0xa01c) # a828 <__stack_size-0x57d8>
 810:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 814:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 818:	00009f1c 	0x00009f1c
 81c:	00000000 	0x00000000
 820:	00020000 	0x00020000
 824:	64700000 	bge	$r0,$r0,28672(0x7000) # 7824 <__stack_size-0x87dc>
 828:	64a41c00 	bge	$r0,$r0,42012(0xa41c) # ac44 <__stack_size-0x53bc>
 82c:	00011c00 	asrtle.d	$r0,$r7
 830:	0064a854 	bstrpick.w	$r20,$r2,0x4,0xa
 834:	0064bc1c 	bstrpick.w	$r28,$r0,0x4,0xf
 838:	5400011c 	bl	74448896(0x4700000) # 4700838 <__stack_size+0x46f0838>
	...
 844:	64700003 	bge	$r0,$r3,28672(0x7000) # 7844 <__stack_size-0x87bc>
 848:	64c81c00 	bge	$r0,$r0,51228(0xc81c) # d064 <__stack_size-0x2f9c>
 84c:	00011c00 	asrtle.d	$r0,$r7
 850:	00000055 	0x00000055
	...
 85c:	10000000 	addu16i.d	$r0,$r0,0
 860:	4c1c0064 	jirl	$r4,$r3,7168(0x1c00)
 864:	011c0064 	0x011c0064
 868:	644c5500 	bge	$r8,$r0,19540(0x4c54) # 54bc <__stack_size-0xab44>
 86c:	64681c00 	bge	$r0,$r0,26652(0x681c) # 7088 <__stack_size-0x8f78>
 870:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 874:	9f5501f3 	0x9f5501f3
 878:	1c006468 	pcaddu12i	$r8,803(0x323)
 87c:	1c00646c 	pcaddu12i	$r12,803(0x323)
 880:	00550001 	0x00550001
	...
 88c:	00000101 	0x00000101
 890:	00641000 	bstrins.w	$r0,$r0,0x4,0x4
 894:	0064201c 	bstrins.w	$r28,$r0,0x4,0x8
 898:	5600011c 	bl	74579968(0x4720000) # 4720898 <__stack_size+0x4710898>
 89c:	1c006420 	pcaddu12i	$r0,801(0x321)
 8a0:	1c006464 	pcaddu12i	$r4,803(0x323)
 8a4:	7f760003 	0x7f760003
 8a8:	0064689f 	bstrins.w	$r31,$r4,0x4,0x1a
 8ac:	00646c1c 	bstrins.w	$r28,$r0,0x4,0x1b
 8b0:	7600031c 	0x7600031c
 8b4:	00009f7f 	0x00009f7f
 8b8:	00000000 	0x00000000
 8bc:	01020000 	0x01020000
 8c0:	00000001 	0x00000001
 8c4:	64100000 	bge	$r0,$r0,4096(0x1000) # 18c4 <__stack_size-0xe73c>
 8c8:	641c1c00 	bge	$r0,$r0,7196(0x1c1c) # 24e4 <__stack_size-0xdb1c>
 8cc:	00011c00 	asrtle.d	$r0,$r7
 8d0:	00641c55 	bstrins.w	$r21,$r2,0x4,0x7
 8d4:	00643c1c 	bstrins.w	$r28,$r0,0x4,0xf
 8d8:	5c00011c 	bne	$r8,$r28,0 # 8d8 <__stack_size-0xf728>
 8dc:	1c00643c 	pcaddu12i	$r28,801(0x321)
 8e0:	1c006464 	pcaddu12i	$r4,803(0x323)
 8e4:	68550001 	bltu	$r0,$r1,21760(0x5500) # 5de4 <__stack_size-0xa21c>
 8e8:	6c1c0064 	bgeu	$r3,$r4,7168(0x1c00) # 24e8 <__stack_size-0xdb18>
 8ec:	011c0064 	0x011c0064
 8f0:	00005500 	bitrev.d	$r0,$r8
 8f4:	00000000 	0x00000000
 8f8:	00030000 	0x00030000
	...
 904:	1c006410 	pcaddu12i	$r16,800(0x320)
 908:	1c006420 	pcaddu12i	$r0,801(0x321)
 90c:	20540001 	ll.w	$r1,$r0,21504(0x5400)
 910:	3c1c0064 	0x3c1c0064
 914:	011c0064 	0x011c0064
 918:	643c5d00 	bge	$r8,$r0,15452(0x3c5c) # 4574 <__stack_size-0xba8c>
 91c:	644c1c00 	bge	$r0,$r0,19484(0x4c1c) # 5538 <__stack_size-0xaac8>
 920:	00011c00 	asrtle.d	$r0,$r7
 924:	00644c54 	bstrins.w	$r20,$r2,0x4,0x13
 928:	0064641c 	bstrins.w	$r28,$r0,0x4,0x19
 92c:	5c00011c 	bne	$r8,$r28,0 # 92c <__stack_size-0xf6d4>
 930:	1c006468 	pcaddu12i	$r8,803(0x323)
 934:	1c00646c 	pcaddu12i	$r12,803(0x323)
 938:	00540001 	0x00540001
	...
 944:	e0000000 	0xe0000000
 948:	ec1c0063 	0xec1c0063
 94c:	011c0063 	0x011c0063
 950:	63ec5500 	blt	$r8,$r0,-5036(0x3ec54) # fffff5a4 <_stack+0xe3eff5a8>
 954:	64081c00 	bge	$r0,$r0,2076(0x81c) # 1170 <__stack_size-0xee90>
 958:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
 95c:	9f5501f3 	0x9f5501f3
	...
 968:	00040400 	alsl.w	$r0,$r0,$r1,0x1
 96c:	63e00000 	blt	$r0,$r0,-8192(0x3e000) # ffffe96c <_stack+0xe3efe970>
 970:	63e01c00 	blt	$r0,$r0,-8164(0x3e01c) # ffffe98c <_stack+0xe3efe990>
 974:	00011c00 	asrtle.d	$r0,$r7
 978:	0063e056 	bstrpick.w	$r22,$r2,0x3,0x18
 97c:	0063e81c 	bstrpick.w	$r28,$r0,0x3,0x1a
 980:	7600031c 	0x7600031c
 984:	63e89f7f 	blt	$r27,$r31,-5988(0x3e89c) # fffff220 <_stack+0xe3eff224>
 988:	64041c00 	bge	$r0,$r0,1052(0x41c) # da4 <__stack_size-0xf25c>
 98c:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
 990:	315601f3 	vstelm.h	$vr19,$r15,-256(0x100),0x5
 994:	00009f1c 	0x00009f1c
 998:	00000000 	0x00000000
 99c:	00020000 	0x00020000
 9a0:	1c0063e0 	pcaddu12i	$r0,799(0x31f)
 9a4:	1c006408 	pcaddu12i	$r8,800(0x320)
 9a8:	00550001 	0x00550001
 9ac:	00000000 	0x00000000
 9b0:	03000000 	lu52i.d	$r0,$r0,0
 9b4:	e0000000 	0xe0000000
 9b8:	ec1c0063 	0xec1c0063
 9bc:	011c0063 	0x011c0063
 9c0:	63ec5400 	blt	$r0,$r0,-5036(0x3ec54) # fffff614 <_stack+0xe3eff618>
 9c4:	64041c00 	bge	$r0,$r0,1052(0x41c) # de0 <__stack_size-0xf220>
 9c8:	00011c00 	asrtle.d	$r0,$r7
 9cc:	0000005c 	0x0000005c
	...
 9d8:	00639000 	bstrpick.w	$r0,$r0,0x3,0x4
 9dc:	0063a81c 	bstrpick.w	$r28,$r0,0x3,0xa
 9e0:	5400011c 	bl	74448896(0x4700000) # 47009e0 <__stack_size+0x46f09e0>
 9e4:	1c0063a8 	pcaddu12i	$r8,797(0x31d)
 9e8:	1c0063b8 	pcaddu12i	$r24,797(0x31d)
 9ec:	00540001 	0x00540001
	...
 9fc:	00635000 	bstrins.w	$r0,$r0,0x3,0x14
 a00:	0063641c 	bstrins.w	$r28,$r0,0x3,0x19
 a04:	5400011c 	bl	74448896(0x4700000) # 4700a04 <__stack_size+0x46f0a04>
 a08:	1c006364 	pcaddu12i	$r4,795(0x31b)
 a0c:	1c006388 	pcaddu12i	$r8,796(0x31c)
 a10:	885c0001 	0x885c0001
 a14:	8c1c0063 	0x8c1c0063
 a18:	011c0063 	0x011c0063
 a1c:	00005400 	bitrev.d	$r0,$r0
	...
 a2c:	1c0062e0 	pcaddu12i	$r0,791(0x317)
 a30:	1c00631c 	pcaddu12i	$r28,792(0x318)
 a34:	1c540001 	pcaddu12i	$r1,172032(0x2a000)
 a38:	241c0063 	ldptr.w	$r3,$r3,7168(0x1c00)
 a3c:	011c0063 	0x011c0063
 a40:	63285400 	blt	$r0,$r0,-55212(0x32854) # ffff3294 <_stack+0xe3ef3298>
 a44:	63401c00 	blt	$r0,$r0,-49124(0x3401c) # ffff4a60 <_stack+0xe3ef4a64>
 a48:	00011c00 	asrtle.d	$r0,$r7
 a4c:	00000054 	0x00000054
	...
 a5c:	e0000000 	0xe0000000
 a60:	fc1c0062 	0xfc1c0062
 a64:	011c0062 	0x011c0062
 a68:	62fc5500 	blt	$r8,$r0,-66476(0x2fc54) # ffff06bc <_stack+0xe3ef06c0>
 a6c:	63141c00 	blt	$r0,$r0,-60388(0x3141c) # ffff1e88 <_stack+0xe3ef1e8c>
 a70:	00011c00 	asrtle.d	$r0,$r7
 a74:	0063145c 	bstrins.w	$r28,$r2,0x3,0x5
 a78:	00631c1c 	bstrins.w	$r28,$r0,0x3,0x7
 a7c:	5500011c 	bl	74514432(0x4710000) # 4710a7c <__stack_size+0x4700a7c>
 a80:	1c00631c 	pcaddu12i	$r28,792(0x318)
 a84:	1c006320 	pcaddu12i	$r0,793(0x319)
 a88:	285c0001 	ld.h	$r1,$r0,1792(0x700)
 a8c:	2c1c0063 	vld	$vr3,$r3,1792(0x700)
 a90:	011c0063 	0x011c0063
 a94:	00005c00 	ext.w.b	$r0,$r0
	...
 aa4:	00010100 	asrtle.d	$r8,$r0
 aa8:	62e00000 	blt	$r0,$r0,-73728(0x2e000) # fffeeaa8 <_stack+0xe3eeeaac>
 aac:	62f81c00 	blt	$r0,$r0,-67556(0x2f81c) # ffff02c8 <_stack+0xe3ef02cc>
 ab0:	00011c00 	asrtle.d	$r0,$r7
 ab4:	0062f856 	bstrpick.w	$r22,$r2,0x2,0x1e
 ab8:	0062fc1c 	bstrpick.w	$r28,$r0,0x2,0x1f
 abc:	f300041c 	0xf300041c
 ac0:	fc9f5601 	0xfc9f5601
 ac4:	141c0062 	lu12i.w	$r2,57347(0xe003)
 ac8:	061c0063 	cacop	0x3,$r3,1792(0x700)
 acc:	5601f300 	bl	-66977296(0xc0201f0) # fc020cbc <_stack+0xdff20cc0>
 ad0:	149f1c31 	lu12i.w	$r17,325857(0x4f8e1)
 ad4:	141c0063 	lu12i.w	$r3,57347(0xe003)
 ad8:	041c0063 	csrxchg	$r3,$r3,0x700
 adc:	5601f300 	bl	-66977296(0xc0201f0) # fc020ccc <_stack+0xdff20cd0>
 ae0:	0063149f 	bstrins.w	$r31,$r4,0x3,0x5
 ae4:	0063201c 	bstrins.w	$r28,$r0,0x3,0x8
 ae8:	f300061c 	0xf300061c
 aec:	1c315601 	pcaddu12i	$r1,101040(0x18ab0)
 af0:	0063289f 	bstrins.w	$r31,$r4,0x3,0xa
 af4:	00632c1c 	bstrins.w	$r28,$r0,0x3,0xb
 af8:	f300061c 	0xf300061c
 afc:	1c315601 	pcaddu12i	$r1,101040(0x18ab0)
 b00:	0000009f 	0x0000009f
	...
 b0c:	0062b000 	bstrpick.w	$r0,$r0,0x2,0xc
 b10:	0062d41c 	bstrpick.w	$r28,$r0,0x2,0x15
 b14:	5500011c 	bl	74514432(0x4710000) # 4710b14 <__stack_size+0x4700b14>
 b18:	1c0062d4 	pcaddu12i	$r20,790(0x316)
 b1c:	1c0062dc 	pcaddu12i	$r28,790(0x316)
 b20:	00550001 	0x00550001
	...
 b30:	01010000 	fadd.d	$f0,$f0,$f0
 b34:	0062b000 	bstrpick.w	$r0,$r0,0x2,0xc
 b38:	0062b81c 	bstrpick.w	$r28,$r0,0x2,0xe
 b3c:	5600011c 	bl	74579968(0x4720000) # 4720b3c <__stack_size+0x4710b3c>
 b40:	1c0062b8 	pcaddu12i	$r24,789(0x315)
 b44:	1c0062bc 	pcaddu12i	$r28,789(0x315)
 b48:	01f30004 	0x01f30004
 b4c:	62bc9f56 	blt	$r26,$r22,-82788(0x2bc9c) # fffec7e8 <_stack+0xe3eec7ec>
 b50:	62c81c00 	blt	$r0,$r0,-79844(0x2c81c) # fffed36c <_stack+0xe3eed370>
 b54:	000a1c00 	0x000a1c00
 b58:	007d0074 	bstrins.w	$r20,$r3,0x1d,0x0
 b5c:	5601f31c 	bl	-59637264(0xc7201f0) # fc720d4c <_stack+0xe0620d50>
 b60:	62c89f22 	blt	$r25,$r2,-79716(0x2c89c) # fffed3fc <_stack+0xe3eed400>
 b64:	62d41c00 	blt	$r0,$r0,-76772(0x2d41c) # fffedf80 <_stack+0xe3eedf84>
 b68:	000c1c00 	bytepick.d	$r0,$r0,$r7,0x0
 b6c:	007d0074 	bstrins.w	$r20,$r3,0x1d,0x0
 b70:	5601f31c 	bl	-59637264(0xc7201f0) # fc720d60 <_stack+0xe0620d64>
 b74:	9f012322 	0x9f012322
 b78:	1c0062d4 	pcaddu12i	$r20,790(0x316)
 b7c:	1c0062d8 	pcaddu12i	$r24,790(0x316)
 b80:	0074000a 	bstrins.w	$r10,$r0,0x14,0x0
 b84:	f31c007d 	0xf31c007d
 b88:	9f225601 	0x9f225601
	...
 b94:	00000002 	0x00000002
 b98:	00010100 	asrtle.d	$r8,$r0
 b9c:	1c0062b0 	pcaddu12i	$r16,789(0x315)
 ba0:	1c0062bc 	pcaddu12i	$r28,789(0x315)
 ba4:	bc540001 	0xbc540001
 ba8:	c81c0062 	0xc81c0062
 bac:	011c0062 	0x011c0062
 bb0:	62c85d00 	blt	$r8,$r0,-79780(0x2c85c) # fffed40c <_stack+0xe3eed410>
 bb4:	62d41c00 	blt	$r0,$r0,-76772(0x2d41c) # fffedfd0 <_stack+0xe3eedfd4>
 bb8:	00031c00 	0x00031c00
 bbc:	d49f7f7d 	0xd49f7f7d
 bc0:	d81c0062 	0xd81c0062
 bc4:	011c0062 	0x011c0062
 bc8:	00005d00 	ext.w.b	$r0,$r8
	...
 bd4:	62900000 	blt	$r0,$r0,-94208(0x29000) # fffe9bd4 <_stack+0xe3ee9bd8>
 bd8:	62981c00 	blt	$r0,$r0,-92132(0x2981c) # fffea3f4 <_stack+0xe3eea3f8>
 bdc:	00011c00 	asrtle.d	$r0,$r7
 be0:	00629855 	bstrpick.w	$r21,$r2,0x2,0x6
 be4:	0062ac1c 	bstrpick.w	$r28,$r0,0x2,0xb
 be8:	5500011c 	bl	74514432(0x4710000) # 4710be8 <__stack_size+0x4700be8>
	...
 bf4:	00000002 	0x00000002
 bf8:	1c006290 	pcaddu12i	$r16,788(0x314)
 bfc:	1c006294 	pcaddu12i	$r20,788(0x314)
 c00:	94540001 	0x94540001
 c04:	ac1c0062 	0xac1c0062
 c08:	011c0062 	0x011c0062
 c0c:	00005c00 	ext.w.b	$r0,$r0
	...
 c1c:	1c006250 	pcaddu12i	$r16,786(0x312)
 c20:	1c006258 	pcaddu12i	$r24,786(0x312)
 c24:	58540001 	beq	$r0,$r1,21504(0x5400) # 6024 <__stack_size-0x9fdc>
 c28:	681c0062 	bltu	$r3,$r2,7168(0x1c00) # 2828 <__stack_size-0xd7d8>
 c2c:	031c0062 	lu52i.d	$r2,$r3,1792(0x700)
 c30:	9f017400 	0x9f017400
 c34:	1c006268 	pcaddu12i	$r8,787(0x313)
 c38:	1c00627c 	pcaddu12i	$r28,787(0x313)
 c3c:	00740008 	bstrins.w	$r8,$r0,0x14,0x0
 c40:	2322007c 	sc.d	$r28,$r3,8704(0x2200)
 c44:	00009f01 	0x00009f01
 c48:	00000000 	0x00000000
 c4c:	00020000 	0x00020000
 c50:	62500000 	blt	$r0,$r0,-110592(0x25000) # fffe5c50 <_stack+0xe3ee5c54>
 c54:	62681c00 	blt	$r0,$r0,-104420(0x2681c) # fffe7470 <_stack+0xe3ee7474>
 c58:	00021c00 	0x00021c00
 c5c:	62689f30 	blt	$r25,$r16,-104292(0x2689c) # fffe74f8 <_stack+0xe3ee74fc>
 c60:	627c1c00 	blt	$r0,$r0,-99300(0x27c1c) # fffe887c <_stack+0xe3ee8880>
 c64:	00011c00 	asrtle.d	$r0,$r7
 c68:	0000005c 	0x0000005c
 c6c:	00000000 	0x00000000
 c70:	03030000 	lu52i.d	$r0,$r0,192(0xc0)
	...
 c7c:	00621000 	bstrins.w	$r0,$r0,0x2,0x4
 c80:	0062101c 	bstrins.w	$r28,$r0,0x2,0x4
 c84:	5400011c 	bl	74448896(0x4700000) # 4700c84 <__stack_size+0x46f0c84>
 c88:	1c006210 	pcaddu12i	$r16,784(0x310)
 c8c:	1c00621c 	pcaddu12i	$r28,784(0x310)
 c90:	01740003 	0x01740003
 c94:	00621c9f 	bstrins.w	$r31,$r4,0x2,0x7
 c98:	0062341c 	bstrins.w	$r28,$r0,0x2,0xd
 c9c:	7400081c 	xvseq.b	$xr28,$xr0,$xr2
 ca0:	22007c00 	ll.d	$r0,$r0,124(0x7c)
 ca4:	349f0123 	0x349f0123
 ca8:	381c0062 	stx.d	$r2,$r3,$r0
 cac:	091c0062 	vfmadd.s	$vr2,$vr3,$vr0,$vr24
 cb0:	5401f300 	bl	-67108368(0xc0001f0) # fc000ea0 <_stack+0xdff00ea4>
 cb4:	2322007c 	sc.d	$r28,$r3,8704(0x2200)
 cb8:	62389f01 	blt	$r24,$r1,-116580(0x2389c) # fffe4554 <_stack+0xe3ee4558>
 cbc:	62401c00 	blt	$r0,$r0,-114660(0x2401c) # fffe4cd8 <_stack+0xe3ee4cdc>
 cc0:	00031c00 	0x00031c00
 cc4:	409f0174 	beqz	$r11,-3105024(0x509f00) # ffd0abc4 <_stack+0xe3c0abc8>
 cc8:	441c0062 	bnez	$r3,531456(0x81c00) # 828c8 <__stack_size+0x728c8>
 ccc:	061c0062 	cacop	0x2,$r3,1792(0x700)
 cd0:	5401f300 	bl	-67108368(0xc0001f0) # fc000ec0 <_stack+0xdff00ec4>
 cd4:	009f0123 	bstrins.d	$r3,$r9,0x1f,0x0
 cd8:	00000000 	0x00000000
 cdc:	02000000 	slti	$r0,$r0,0
 ce0:	00000000 	0x00000000
 ce4:	00621000 	bstrins.w	$r0,$r0,0x2,0x4
 ce8:	00621c1c 	bstrins.w	$r28,$r0,0x2,0x7
 cec:	3000021c 	0x3000021c
 cf0:	00621c9f 	bstrins.w	$r31,$r4,0x2,0x7
 cf4:	0062381c 	bstrins.w	$r28,$r0,0x2,0xe
 cf8:	5c00011c 	bne	$r8,$r28,0 # cf8 <__stack_size-0xf308>
 cfc:	1c006238 	pcaddu12i	$r24,785(0x311)
 d00:	1c006244 	pcaddu12i	$r4,786(0x312)
 d04:	9f300002 	0x9f300002
	...
 d10:	00030300 	0x00030300
	...
 d1c:	1c0063c0 	pcaddu12i	$r0,798(0x31e)
 d20:	1c0063c0 	pcaddu12i	$r0,798(0x31e)
 d24:	c0560001 	0xc0560001
 d28:	c81c0063 	0xc81c0063
 d2c:	031c0063 	lu52i.d	$r3,$r3,1792(0x700)
 d30:	9f7f7600 	0x9f7f7600
 d34:	1c0063c8 	pcaddu12i	$r8,798(0x31e)
 d38:	1c0063cc 	pcaddu12i	$r12,798(0x31e)
 d3c:	01f30006 	0x01f30006
 d40:	9f1c3156 	0x9f1c3156
 d44:	1c0063cc 	pcaddu12i	$r12,798(0x31e)
 d48:	1c0063d4 	pcaddu12i	$r20,798(0x31e)
 d4c:	007c000b 	bstrins.w	$r11,$r0,0x1c,0x0
 d50:	5601f320 	bl	-58588688(0xc8201f0) # fc820f40 <_stack+0xe0720f44>
 d54:	22007422 	ll.d	$r2,$r1,116(0x74)
 d58:	0063d49f 	bstrpick.w	$r31,$r4,0x3,0x15
 d5c:	0063d81c 	bstrpick.w	$r28,$r0,0x3,0x16
 d60:	74000a1c 	xvseq.b	$xr28,$xr16,$xr2
 d64:	1c007c00 	pcaddu12i	$r0,992(0x3e0)
 d68:	225601f3 	ll.d	$r19,$r15,22016(0x5600)
 d6c:	0063d89f 	bstrpick.w	$r31,$r4,0x3,0x16
 d70:	0063dc1c 	bstrpick.w	$r28,$r0,0x3,0x17
 d74:	7c000b1c 	0x7c000b1c
 d78:	01f32000 	0x01f32000
 d7c:	00742256 	bstrins.w	$r22,$r18,0x14,0x8
 d80:	00009f22 	0x00009f22
 d84:	00000000 	0x00000000
 d88:	00020000 	0x00020000
 d8c:	63c00000 	blt	$r0,$r0,-16384(0x3c000) # ffffcd8c <_stack+0xe3efcd90>
 d90:	63cc1c00 	blt	$r0,$r0,-13284(0x3cc1c) # ffffd9ac <_stack+0xe3efd9b0>
 d94:	00011c00 	asrtle.d	$r0,$r7
 d98:	0063cc54 	bstrpick.w	$r20,$r2,0x3,0x13
 d9c:	0063dc1c 	bstrpick.w	$r28,$r0,0x3,0x17
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
  10:	1c005db0 	pcaddu12i	$r16,749(0x2ed)
  14:	0000023c 	0x0000023c
	...
  20:	0000001c 	0x0000001c
  24:	026c0002 	sltui	$r2,$r0,-1280(0xb00)
  28:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  2c:	00000000 	0x00000000
  30:	1c005ff0 	pcaddu12i	$r16,767(0x2ff)
  34:	00000080 	0x00000080
	...
  40:	0000001c 	0x0000001c
  44:	03630002 	andi	$r2,$r0,0x8c0
  48:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  4c:	00000000 	0x00000000
  50:	1c006070 	pcaddu12i	$r16,771(0x303)
  54:	000000ac 	0x000000ac
	...
  60:	0000001c 	0x0000001c
  64:	04d70002 	csrrd	$r2,0x35c0
  68:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  6c:	00000000 	0x00000000
  70:	1c006120 	pcaddu12i	$r0,777(0x309)
  74:	000000ec 	0x000000ec
	...
  80:	0000001c 	0x0000001c
  84:	06520002 	0x06520002
  88:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  8c:	00000000 	0x00000000
  90:	1c006210 	pcaddu12i	$r16,784(0x310)
  94:	000002d8 	0x000002d8
	...
  a0:	0000001c 	0x0000001c
  a4:	0b300002 	0x0b300002
  a8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  ac:	00000000 	0x00000000
  b0:	1c0064f0 	pcaddu12i	$r16,807(0x327)
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
  60:	1c006210 	pcaddu12i	$r16,784(0x310)
  64:	1c0064e8 	pcaddu12i	$r8,807(0x327)
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
  2c:	5db00205 	bne	$r16,$r5,110592(0x1b000) # 1b02c <__stack_size+0xb02c>
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
 1f0:	1c005ff0 	pcaddu12i	$r16,767(0x2ff)
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
 280:	00607002 	bstrins.w	$r2,$r0,0x0,0x1c
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
 31c:	61200205 	blt	$r16,$r5,73728(0x12000) # 1231c <__stack_size+0x231c>
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
 420:	1c006210 	pcaddu12i	$r16,784(0x310)
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
 71c:	64f00205 	bge	$r16,$r5,61440(0xf000) # f71c <__stack_size-0x8e4>
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
  18:	1c005db0 	pcaddu12i	$r16,749(0x2ed)
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
  60:	1c005ff0 	pcaddu12i	$r16,767(0x2ff)
  64:	00000028 	0x00000028
  68:	44100e44 	bnez	$r18,1052684(0x10100c) # 101074 <__stack_size+0xf1074>
  6c:	d9580199 	0xd9580199
  70:	00000e44 	0x00000e44
  74:	00000018 	0x00000018
  78:	00000048 	0x00000048
  7c:	1c006020 	pcaddu12i	$r0,769(0x301)
  80:	00000024 	0x00000024
  84:	44100e44 	bnez	$r18,1052684(0x10100c) # 101090 <__stack_size+0xf1090>
  88:	d9540199 	0xd9540199
  8c:	00000e44 	0x00000e44
  90:	0000000c 	0x0000000c
  94:	00000048 	0x00000048
  98:	1c006050 	pcaddu12i	$r16,770(0x302)
  9c:	00000020 	0x00000020
  a0:	0000000c 	0x0000000c
  a4:	ffffffff 	0xffffffff
  a8:	7c010001 	0x7c010001
  ac:	00030d01 	0x00030d01
  b0:	00000024 	0x00000024
  b4:	000000a0 	0x000000a0
  b8:	1c006070 	pcaddu12i	$r16,771(0x303)
  bc:	00000074 	0x00000074
  c0:	50100e44 	b	-116387828(0x910100c) # f91010cc <_stack+0xdd0010d0>
  c4:	02970181 	addi.w	$r1,$r12,1472(0x5c0)
  c8:	04990398 	csrxchg	$r24,$r28,0x2640
  cc:	44c14802 	bnez	$r0,573768(0x8c148) # 8c214 <__stack_size+0x7c214>
  d0:	44d844d7 	bnez	$r6,-2303932(0x5cd844) # ffdcd914 <_stack+0xe3ccd918>
  d4:	000e48d9 	bytepick.d	$r25,$r6,$r18,0x4
  d8:	00000018 	0x00000018
  dc:	000000a0 	0x000000a0
  e0:	1c0060f0 	pcaddu12i	$r16,775(0x307)
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
 10c:	1c006120 	pcaddu12i	$r0,777(0x309)
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
 148:	1c006210 	pcaddu12i	$r16,784(0x310)
 14c:	00000034 	0x00000034
 150:	0000000c 	0x0000000c
 154:	00000130 	0x00000130
 158:	1c006250 	pcaddu12i	$r16,786(0x312)
 15c:	00000034 	0x00000034
 160:	0000000c 	0x0000000c
 164:	00000130 	0x00000130
 168:	1c006290 	pcaddu12i	$r16,788(0x314)
 16c:	0000001c 	0x0000001c
 170:	0000000c 	0x0000000c
 174:	00000130 	0x00000130
 178:	1c0062b0 	pcaddu12i	$r16,789(0x315)
 17c:	0000002c 	0x0000002c
 180:	00000014 	0x00000014
 184:	00000130 	0x00000130
 188:	1c0062e0 	pcaddu12i	$r0,791(0x317)
 18c:	0000006c 	0x0000006c
 190:	100e5002 	addu16i.d	$r2,$r0,916(0x394)
 194:	00000e54 	0x00000e54
 198:	0000000c 	0x0000000c
 19c:	00000130 	0x00000130
 1a0:	1c006350 	pcaddu12i	$r16,794(0x31a)
 1a4:	0000003c 	0x0000003c
 1a8:	0000000c 	0x0000000c
 1ac:	00000130 	0x00000130
 1b0:	1c006390 	pcaddu12i	$r16,796(0x31c)
 1b4:	00000028 	0x00000028
 1b8:	0000000c 	0x0000000c
 1bc:	00000130 	0x00000130
 1c0:	1c0063c0 	pcaddu12i	$r0,798(0x31e)
 1c4:	00000020 	0x00000020
 1c8:	0000000c 	0x0000000c
 1cc:	00000130 	0x00000130
 1d0:	1c0063e0 	pcaddu12i	$r0,799(0x31f)
 1d4:	00000028 	0x00000028
 1d8:	0000000c 	0x0000000c
 1dc:	00000130 	0x00000130
 1e0:	1c006410 	pcaddu12i	$r16,800(0x320)
 1e4:	0000005c 	0x0000005c
 1e8:	00000014 	0x00000014
 1ec:	00000130 	0x00000130
 1f0:	1c006470 	pcaddu12i	$r16,803(0x323)
 1f4:	00000058 	0x00000058
 1f8:	54100e7c 	bl	-101707764(0x9f0100c) # f9f01204 <_stack+0xdde01208>
 1fc:	0000000e 	0x0000000e
 200:	0000000c 	0x0000000c
 204:	00000130 	0x00000130
 208:	1c0064d0 	pcaddu12i	$r16,806(0x326)
 20c:	00000018 	0x00000018
 210:	0000000c 	0x0000000c
 214:	ffffffff 	0xffffffff
 218:	7c010001 	0x7c010001
 21c:	00030d01 	0x00030d01
 220:	00000018 	0x00000018
 224:	00000210 	0x00000210
 228:	1c0064f0 	pcaddu12i	$r16,807(0x327)
 22c:	0000001c 	0x0000001c
 230:	44100e44 	bnez	$r18,1052684(0x10100c) # 10123c <__stack_size+0xf123c>
 234:	d94c0199 	0xd94c0199
 238:	00000e44 	0x00000e44
 23c:	0000000c 	0x0000000c
 240:	00000210 	0x00000210
 244:	1c006510 	pcaddu12i	$r16,808(0x328)
 248:	00000004 	0x00000004
 24c:	0000000c 	0x0000000c
 250:	00000210 	0x00000210
 254:	1c006520 	pcaddu12i	$r0,809(0x329)
 258:	00000008 	0x00000008
 25c:	00000018 	0x00000018
 260:	00000210 	0x00000210
 264:	1c006530 	pcaddu12i	$r16,809(0x329)
 268:	00000084 	0x00000084
 26c:	44100e44 	bnez	$r18,1052684(0x10100c) # 101278 <__stack_size+0xf1278>
 270:	60020199 	blt	$r12,$r25,512(0x200) # 470 <__stack_size-0xfb90>
 274:	000e58d9 	bytepick.d	$r25,$r6,$r22,0x4
 278:	0000000c 	0x0000000c
 27c:	00000210 	0x00000210
 280:	1c0065c0 	pcaddu12i	$r0,814(0x32e)
 284:	00000004 	0x00000004
 288:	00000018 	0x00000018
 28c:	00000210 	0x00000210
 290:	1c0065d0 	pcaddu12i	$r16,814(0x32e)
 294:	00000024 	0x00000024
 298:	44100e44 	bnez	$r18,1052684(0x10100c) # 1012a4 <__stack_size+0xf12a4>
 29c:	d9500199 	0xd9500199
 2a0:	00000e48 	0x00000e48
 2a4:	00000018 	0x00000018
 2a8:	00000210 	0x00000210
 2ac:	1c006600 	pcaddu12i	$r0,816(0x330)
 2b0:	00000030 	0x00000030
 2b4:	44100e44 	bnez	$r18,1052684(0x10100c) # 1012c0 <__stack_size+0xf12c0>
 2b8:	d9500199 	0xd9500199
 2bc:	00000e54 	0x00000e54
