.include "macros.inc"

.section .text

.org 0x8006FE30

.global __ct__10JUTDbPrintFP7JUTFontP7JKRHeap
__ct__10JUTDbPrintFP7JUTFontP7JKRHeap:
/* 8006FE30 0006CD90  38 00 FF FF */	li r0, -1
/* 8006FE34 0006CD94  28 05 00 00 */	cmplwi r5, 0
/* 8006FE38 0006CD98  90 03 00 08 */	stw r0, 8(r3)
/* 8006FE3C 0006CD9C  38 00 00 00 */	li r0, 0
/* 8006FE40 0006CDA0  90 83 00 04 */	stw r4, 4(r3)
/* 8006FE44 0006CDA4  90 03 00 00 */	stw r0, 0(r3)
/* 8006FE48 0006CDA8  41 82 00 08 */	beq lbl_8006FE50
/* 8006FE4C 0006CDAC  48 00 00 08 */	b lbl_8006FE54
lbl_8006FE50:
/* 8006FE50 0006CDB0  80 AD 8B 5C */	lwz r5, sCurrentHeap__7JKRHeap-_SDA_BASE_(r13)
lbl_8006FE54:
/* 8006FE54 0006CDB4  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8006FE58 0006CDB8  38 80 00 FF */	li r4, 0xff
/* 8006FE5C 0006CDBC  38 00 00 01 */	li r0, 1
/* 8006FE60 0006CDC0  98 83 00 08 */	stb r4, 8(r3)
/* 8006FE64 0006CDC4  98 83 00 09 */	stb r4, 9(r3)
/* 8006FE68 0006CDC8  98 83 00 0A */	stb r4, 0xa(r3)
/* 8006FE6C 0006CDCC  98 83 00 0B */	stb r4, 0xb(r3)
/* 8006FE70 0006CDD0  98 03 00 0C */	stb r0, 0xc(r3)
/* 8006FE74 0006CDD4  4E 80 00 20 */	blr 

.global start__10JUTDbPrintFP7JUTFontP7JKRHeap
start__10JUTDbPrintFP7JUTFontP7JKRHeap:
/* 8006FE78 0006CDD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006FE7C 0006CDDC  7C 08 02 A6 */	mflr r0
/* 8006FE80 0006CDE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006FE84 0006CDE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8006FE88 0006CDE8  7C 9F 23 78 */	mr r31, r4
/* 8006FE8C 0006CDEC  93 C1 00 08 */	stw r30, 8(r1)
/* 8006FE90 0006CDF0  7C 7E 1B 78 */	mr r30, r3
/* 8006FE94 0006CDF4  80 0D 8C 80 */	lwz r0, sDebugPrint__10JUTDbPrint-_SDA_BASE_(r13)
/* 8006FE98 0006CDF8  28 00 00 00 */	cmplwi r0, 0
/* 8006FE9C 0006CDFC  40 82 00 34 */	bne lbl_8006FED0
/* 8006FEA0 0006CE00  28 1F 00 00 */	cmplwi r31, 0
/* 8006FEA4 0006CE04  40 82 00 08 */	bne lbl_8006FEAC
/* 8006FEA8 0006CE08  83 ED 8B 5C */	lwz r31, sCurrentHeap__7JKRHeap-_SDA_BASE_(r13)
lbl_8006FEAC:
/* 8006FEAC 0006CE0C  38 60 00 14 */	li r3, 0x14
/* 8006FEB0 0006CE10  4B FF 40 81 */	bl __nw__FUl
/* 8006FEB4 0006CE14  7C 60 1B 79 */	or. r0, r3, r3
/* 8006FEB8 0006CE18  41 82 00 14 */	beq lbl_8006FECC
/* 8006FEBC 0006CE1C  7F C4 F3 78 */	mr r4, r30
/* 8006FEC0 0006CE20  7F E5 FB 78 */	mr r5, r31
/* 8006FEC4 0006CE24  4B FF FF 6D */	bl __ct__10JUTDbPrintFP7JUTFontP7JKRHeap
/* 8006FEC8 0006CE28  7C 60 1B 78 */	mr r0, r3
lbl_8006FECC:
/* 8006FECC 0006CE2C  90 0D 8C 80 */	stw r0, sDebugPrint__10JUTDbPrint-_SDA_BASE_(r13)
lbl_8006FED0:
/* 8006FED0 0006CE30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006FED4 0006CE34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8006FED8 0006CE38  80 6D 8C 80 */	lwz r3, sDebugPrint__10JUTDbPrint-_SDA_BASE_(r13)
/* 8006FEDC 0006CE3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8006FEE0 0006CE40  7C 08 03 A6 */	mtlr r0
/* 8006FEE4 0006CE44  38 21 00 10 */	addi r1, r1, 0x10
/* 8006FEE8 0006CE48  4E 80 00 20 */	blr 

.global changeFont__10JUTDbPrintFP7JUTFont
changeFont__10JUTDbPrintFP7JUTFont:
/* 8006FEEC 0006CE4C  28 04 00 00 */	cmplwi r4, 0
/* 8006FEF0 0006CE50  80 03 00 04 */	lwz r0, 4(r3)
/* 8006FEF4 0006CE54  41 82 00 08 */	beq lbl_8006FEFC
/* 8006FEF8 0006CE58  90 83 00 04 */	stw r4, 4(r3)
lbl_8006FEFC:
/* 8006FEFC 0006CE5C  7C 03 03 78 */	mr r3, r0
/* 8006FF00 0006CE60  4E 80 00 20 */	blr 

.global enter__10JUTDbPrintFiiiPCci
enter__10JUTDbPrintFiiiPCci:
/* 8006FF04 0006CE64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8006FF08 0006CE68  7C 08 02 A6 */	mflr r0
/* 8006FF0C 0006CE6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8006FF10 0006CE70  39 61 00 30 */	addi r11, r1, 0x30
/* 8006FF14 0006CE74  48 02 AF B1 */	bl func_8009AEC4
/* 8006FF18 0006CE78  7D 1E 43 79 */	or. r30, r8, r8
/* 8006FF1C 0006CE7C  7C 79 1B 78 */	mr r25, r3
/* 8006FF20 0006CE80  7C 9A 23 78 */	mr r26, r4
/* 8006FF24 0006CE84  7C BB 2B 78 */	mr r27, r5
/* 8006FF28 0006CE88  7C DC 33 78 */	mr r28, r6
/* 8006FF2C 0006CE8C  7C FD 3B 78 */	mr r29, r7
/* 8006FF30 0006CE90  40 81 00 44 */	ble lbl_8006FF74
/* 8006FF34 0006CE94  80 B9 00 10 */	lwz r5, 0x10(r25)
/* 8006FF38 0006CE98  38 7E 00 10 */	addi r3, r30, 0x10
/* 8006FF3C 0006CE9C  38 80 FF FC */	li r4, -4
/* 8006FF40 0006CEA0  4B FF 3B 11 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 8006FF44 0006CEA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8006FF48 0006CEA8  41 82 00 2C */	beq lbl_8006FF74
/* 8006FF4C 0006CEAC  B3 5F 00 04 */	sth r26, 4(r31)
/* 8006FF50 0006CEB0  7F A4 EB 78 */	mr r4, r29
/* 8006FF54 0006CEB4  38 7F 00 0C */	addi r3, r31, 0xc
/* 8006FF58 0006CEB8  B3 7F 00 06 */	sth r27, 6(r31)
/* 8006FF5C 0006CEBC  B3 9F 00 08 */	sth r28, 8(r31)
/* 8006FF60 0006CEC0  B3 DF 00 0A */	sth r30, 0xa(r31)
/* 8006FF64 0006CEC4  48 02 F8 31 */	bl strcpy
/* 8006FF68 0006CEC8  80 19 00 00 */	lwz r0, 0(r25)
/* 8006FF6C 0006CECC  90 1F 00 00 */	stw r0, 0(r31)
/* 8006FF70 0006CED0  93 F9 00 00 */	stw r31, 0(r25)
lbl_8006FF74:
/* 8006FF74 0006CED4  39 61 00 30 */	addi r11, r1, 0x30
/* 8006FF78 0006CED8  48 02 AF 99 */	bl func_8009AF10
/* 8006FF7C 0006CEDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8006FF80 0006CEE0  7C 08 03 A6 */	mtlr r0
/* 8006FF84 0006CEE4  38 21 00 30 */	addi r1, r1, 0x30
/* 8006FF88 0006CEE8  4E 80 00 20 */	blr 

.global flush__10JUTDbPrintFv
flush__10JUTDbPrintFv:
/* 8006FF8C 0006CEEC  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8006FF90 0006CEF0  7C 08 02 A6 */	mflr r0
/* 8006FF94 0006CEF4  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8006FF98 0006CEF8  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8006FF9C 0006CEFC  48 02 AF 35 */	bl func_8009AED0
/* 8006FFA0 0006CF00  7C 7C 1B 78 */	mr r28, r3
/* 8006FFA4 0006CF04  80 03 00 04 */	lwz r0, 4(r3)
/* 8006FFA8 0006CF08  7F 9F E3 78 */	mr r31, r28
/* 8006FFAC 0006CF0C  83 C3 00 00 */	lwz r30, 0(r3)
/* 8006FFB0 0006CF10  28 00 00 00 */	cmplwi r0, 0
/* 8006FFB4 0006CF14  41 82 00 DC */	beq lbl_80070090
/* 8006FFB8 0006CF18  28 1E 00 00 */	cmplwi r30, 0
/* 8006FFBC 0006CF1C  41 82 00 D4 */	beq lbl_80070090
/* 8006FFC0 0006CF20  C0 22 86 C0 */	lfs f1, @719-_SDA2_BASE_(r2)
/* 8006FFC4 0006CF24  38 61 00 0C */	addi r3, r1, 0xc
/* 8006FFC8 0006CF28  C0 62 86 C4 */	lfs f3, @720-_SDA2_BASE_(r2)
/* 8006FFCC 0006CF2C  FC 40 08 90 */	fmr f2, f1
/* 8006FFD0 0006CF30  C0 82 86 C8 */	lfs f4, @721-_SDA2_BASE_(r2)
/* 8006FFD4 0006CF34  C0 A2 86 CC */	lfs f5, @722-_SDA2_BASE_(r2)
/* 8006FFD8 0006CF38  C0 C2 86 D0 */	lfs f6, @723-_SDA2_BASE_(r2)
/* 8006FFDC 0006CF3C  48 00 81 FD */	bl __ct__13J2DOrthoGraphFffffff
/* 8006FFE0 0006CF40  38 61 00 0C */	addi r3, r1, 0xc
/* 8006FFE4 0006CF44  48 00 82 D1 */	bl setPort__13J2DOrthoGraphFv
/* 8006FFE8 0006CF48  80 7C 00 04 */	lwz r3, 4(r28)
/* 8006FFEC 0006CF4C  81 83 00 00 */	lwz r12, 0(r3)
/* 8006FFF0 0006CF50  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8006FFF4 0006CF54  7D 89 03 A6 */	mtctr r12
/* 8006FFF8 0006CF58  4E 80 04 21 */	bctrl 
/* 8006FFFC 0006CF5C  80 1C 00 08 */	lwz r0, 8(r28)
/* 80070000 0006CF60  38 81 00 08 */	addi r4, r1, 8
/* 80070004 0006CF64  90 01 00 08 */	stw r0, 8(r1)
/* 80070008 0006CF68  80 7C 00 04 */	lwz r3, 4(r28)
/* 8007000C 0006CF6C  4B FF EA 0D */	bl setCharColor__7JUTFontFQ28JUtility6TColor
/* 80070010 0006CF70  48 00 00 60 */	b lbl_80070070
lbl_80070014:
/* 80070014 0006CF74  88 1C 00 0C */	lbz r0, 0xc(r28)
/* 80070018 0006CF78  28 00 00 00 */	cmplwi r0, 0
/* 8007001C 0006CF7C  41 82 00 1C */	beq lbl_80070038
/* 80070020 0006CF80  A8 9E 00 04 */	lha r4, 4(r30)
/* 80070024 0006CF84  7F 83 E3 78 */	mr r3, r28
/* 80070028 0006CF88  A8 BE 00 06 */	lha r5, 6(r30)
/* 8007002C 0006CF8C  38 FE 00 0C */	addi r7, r30, 0xc
/* 80070030 0006CF90  A8 DE 00 0A */	lha r6, 0xa(r30)
/* 80070034 0006CF94  48 00 00 75 */	bl drawString__10JUTDbPrintFiiiPCUc
lbl_80070038:
/* 80070038 0006CF98  A8 7E 00 08 */	lha r3, 8(r30)
/* 8007003C 0006CF9C  38 63 FF FF */	addi r3, r3, -1
/* 80070040 0006CFA0  7C 60 07 35 */	extsh. r0, r3
/* 80070044 0006CFA4  B0 7E 00 08 */	sth r3, 8(r30)
/* 80070048 0006CFA8  41 81 00 20 */	bgt lbl_80070068
/* 8007004C 0006CFAC  83 BE 00 00 */	lwz r29, 0(r30)
/* 80070050 0006CFB0  7F C3 F3 78 */	mr r3, r30
/* 80070054 0006CFB4  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 80070058 0006CFB8  4B FF 3A 9D */	bl free__7JKRHeapFPvP7JKRHeap
/* 8007005C 0006CFBC  93 BF 00 00 */	stw r29, 0(r31)
/* 80070060 0006CFC0  7F BE EB 78 */	mr r30, r29
/* 80070064 0006CFC4  48 00 00 0C */	b lbl_80070070
lbl_80070068:
/* 80070068 0006CFC8  7F DF F3 78 */	mr r31, r30
/* 8007006C 0006CFCC  83 DE 00 00 */	lwz r30, 0(r30)
lbl_80070070:
/* 80070070 0006CFD0  28 1E 00 00 */	cmplwi r30, 0
/* 80070074 0006CFD4  40 82 FF A0 */	bne lbl_80070014
/* 80070078 0006CFD8  3C 80 80 0E */	lis r4, __vt__13J2DOrthoGraph@ha
/* 8007007C 0006CFDC  3C 60 80 0E */	lis r3, __vt__14J2DGrafContext@ha
/* 80070080 0006CFE0  38 04 F7 94 */	addi r0, r4, __vt__13J2DOrthoGraph@l
/* 80070084 0006CFE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80070088 0006CFE8  38 03 F7 40 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 8007008C 0006CFEC  90 01 00 0C */	stw r0, 0xc(r1)
lbl_80070090:
/* 80070090 0006CFF0  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80070094 0006CFF4  48 02 AE 89 */	bl func_8009AF1C
/* 80070098 0006CFF8  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8007009C 0006CFFC  7C 08 03 A6 */	mtlr r0
/* 800700A0 0006D000  38 21 00 F0 */	addi r1, r1, 0xf0
/* 800700A4 0006D004  4E 80 00 20 */	blr 

.global drawString__10JUTDbPrintFiiiPCUc
drawString__10JUTDbPrintFiiiPCUc:
/* 800700A8 0006D008  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800700AC 0006D00C  7C 08 02 A6 */	mflr r0
/* 800700B0 0006D010  90 01 00 54 */	stw r0, 0x54(r1)
/* 800700B4 0006D014  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800700B8 0006D018  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 800700BC 0006D01C  39 61 00 40 */	addi r11, r1, 0x40
/* 800700C0 0006D020  48 02 AE 0D */	bl func_8009AECC
/* 800700C4 0006D024  83 E3 00 04 */	lwz r31, 4(r3)
/* 800700C8 0006D028  7C 9B 23 78 */	mr r27, r4
/* 800700CC 0006D02C  7C BC 2B 78 */	mr r28, r5
/* 800700D0 0006D030  7C DD 33 78 */	mr r29, r6
/* 800700D4 0006D034  7F E3 FB 78 */	mr r3, r31
/* 800700D8 0006D038  7C FE 3B 78 */	mr r30, r7
/* 800700DC 0006D03C  81 9F 00 00 */	lwz r12, 0(r31)
/* 800700E0 0006D040  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800700E4 0006D044  7D 89 03 A6 */	mtctr r12
/* 800700E8 0006D048  4E 80 04 21 */	bctrl 
/* 800700EC 0006D04C  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 800700F0 0006D050  3C 00 43 30 */	lis r0, 0x4330
/* 800700F4 0006D054  7F E3 FB 78 */	mr r3, r31
/* 800700F8 0006D058  90 81 00 0C */	stw r4, 0xc(r1)
/* 800700FC 0006D05C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80070100 0006D060  90 01 00 08 */	stw r0, 8(r1)
/* 80070104 0006D064  C8 22 86 D8 */	lfd f1, @736-_SDA2_BASE_(r2)
/* 80070108 0006D068  C8 01 00 08 */	lfd f0, 8(r1)
/* 8007010C 0006D06C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80070110 0006D070  EF E0 08 28 */	fsubs f31, f0, f1
/* 80070114 0006D074  7D 89 03 A6 */	mtctr r12
/* 80070118 0006D078  4E 80 04 21 */	bctrl 
/* 8007011C 0006D07C  3C E0 43 30 */	lis r7, 0x4330
/* 80070120 0006D080  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80070124 0006D084  90 01 00 14 */	stw r0, 0x14(r1)
/* 80070128 0006D088  6F 66 80 00 */	xoris r6, r27, 0x8000
/* 8007012C 0006D08C  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 80070130 0006D090  C8 42 86 D8 */	lfd f2, @736-_SDA2_BASE_(r2)
/* 80070134 0006D094  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80070138 0006D098  FC 80 F8 90 */	fmr f4, f31
/* 8007013C 0006D09C  7F E3 FB 78 */	mr r3, r31
/* 80070140 0006D0A0  7F C4 F3 78 */	mr r4, r30
/* 80070144 0006D0A4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80070148 0006D0A8  7F A5 EB 78 */	mr r5, r29
/* 8007014C 0006D0AC  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 80070150 0006D0B0  EC 60 10 28 */	fsubs f3, f0, f2
/* 80070154 0006D0B4  38 C0 00 01 */	li r6, 1
/* 80070158 0006D0B8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8007015C 0006D0BC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80070160 0006D0C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80070164 0006D0C4  EC 20 10 28 */	fsubs f1, f0, f2
/* 80070168 0006D0C8  90 E1 00 20 */	stw r7, 0x20(r1)
/* 8007016C 0006D0CC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80070170 0006D0D0  EC 40 10 28 */	fsubs f2, f0, f2
/* 80070174 0006D0D4  4B FF E9 29 */	bl drawString_size_scale__7JUTFontFffffPCcUlb
/* 80070178 0006D0D8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8007017C 0006D0DC  39 61 00 40 */	addi r11, r1, 0x40
/* 80070180 0006D0E0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80070184 0006D0E4  48 02 AD 95 */	bl func_8009AF18
/* 80070188 0006D0E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8007018C 0006D0EC  7C 08 03 A6 */	mtlr r0
/* 80070190 0006D0F0  38 21 00 50 */	addi r1, r1, 0x50
/* 80070194 0006D0F4  4E 80 00 20 */	blr 

.global JUTReport__FiiiPCce
JUTReport__FiiiPCce:
/* 80070198 0006D0F8  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 8007019C 0006D0FC  7C 08 02 A6 */	mflr r0
/* 800701A0 0006D100  90 01 01 94 */	stw r0, 0x194(r1)
/* 800701A4 0006D104  39 61 01 90 */	addi r11, r1, 0x190
/* 800701A8 0006D108  48 02 AD 29 */	bl func_8009AED0
/* 800701AC 0006D10C  7C 7C 1B 78 */	mr r28, r3
/* 800701B0 0006D110  7C 9D 23 78 */	mr r29, r4
/* 800701B4 0006D114  7C BE 2B 78 */	mr r30, r5
/* 800701B8 0006D118  40 86 00 24 */	bne cr1, lbl_800701DC
/* 800701BC 0006D11C  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 800701C0 0006D120  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 800701C4 0006D124  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 800701C8 0006D128  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 800701CC 0006D12C  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 800701D0 0006D130  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 800701D4 0006D134  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 800701D8 0006D138  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_800701DC:
/* 800701DC 0006D13C  39 61 01 98 */	addi r11, r1, 0x198
/* 800701E0 0006D140  38 01 00 08 */	addi r0, r1, 8
/* 800701E4 0006D144  3D 80 04 00 */	lis r12, 0x400
/* 800701E8 0006D148  90 61 00 08 */	stw r3, 8(r1)
/* 800701EC 0006D14C  3B E1 00 68 */	addi r31, r1, 0x68
/* 800701F0 0006D150  38 61 00 74 */	addi r3, r1, 0x74
/* 800701F4 0006D154  90 81 00 0C */	stw r4, 0xc(r1)
/* 800701F8 0006D158  38 80 01 00 */	li r4, 0x100
/* 800701FC 0006D15C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80070200 0006D160  7C C5 33 78 */	mr r5, r6
/* 80070204 0006D164  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80070208 0006D168  7F E6 FB 78 */	mr r6, r31
/* 8007020C 0006D16C  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80070210 0006D170  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80070214 0006D174  91 21 00 20 */	stw r9, 0x20(r1)
/* 80070218 0006D178  91 41 00 24 */	stw r10, 0x24(r1)
/* 8007021C 0006D17C  91 81 00 68 */	stw r12, 0x68(r1)
/* 80070220 0006D180  91 61 00 6C */	stw r11, 0x6c(r1)
/* 80070224 0006D184  90 01 00 70 */	stw r0, 0x70(r1)
/* 80070228 0006D188  48 02 D3 01 */	bl vsnprintf
/* 8007022C 0006D18C  7C 60 1B 79 */	or. r0, r3, r3
/* 80070230 0006D190  41 80 00 2C */	blt lbl_8007025C
/* 80070234 0006D194  2C 00 01 00 */	cmpwi r0, 0x100
/* 80070238 0006D198  80 6D 8C 80 */	lwz r3, sDebugPrint__10JUTDbPrint-_SDA_BASE_(r13)
/* 8007023C 0006D19C  7F 84 E3 78 */	mr r4, r28
/* 80070240 0006D1A0  7F A5 EB 78 */	mr r5, r29
/* 80070244 0006D1A4  7F C6 F3 78 */	mr r6, r30
/* 80070248 0006D1A8  38 E1 00 74 */	addi r7, r1, 0x74
/* 8007024C 0006D1AC  39 00 00 FF */	li r8, 0xff
/* 80070250 0006D1B0  40 80 00 08 */	bge lbl_80070258
/* 80070254 0006D1B4  7C 08 03 78 */	mr r8, r0
lbl_80070258:
/* 80070258 0006D1B8  4B FF FC AD */	bl enter__10JUTDbPrintFiiiPCci
lbl_8007025C:
/* 8007025C 0006D1BC  39 61 01 90 */	addi r11, r1, 0x190
/* 80070260 0006D1C0  48 02 AC BD */	bl func_8009AF1C
/* 80070264 0006D1C4  80 01 01 94 */	lwz r0, 0x194(r1)
/* 80070268 0006D1C8  7C 08 03 A6 */	mtlr r0
/* 8007026C 0006D1CC  38 21 01 90 */	addi r1, r1, 0x190
/* 80070270 0006D1D0  4E 80 00 20 */	blr 
