.include "macros.inc"

.section .text

.org 0x800A1A48

.global floor
floor:
/* 800A1A48 0009E9A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A1A4C 0009E9AC  D8 21 00 08 */	stfd f1, 8(r1)
/* 800A1A50 0009E9B0  80 A1 00 08 */	lwz r5, 8(r1)
/* 800A1A54 0009E9B4  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 800A1A58 0009E9B8  54 A3 65 7E */	rlwinm r3, r5, 0xc, 0x15, 0x1f
/* 800A1A5C 0009E9BC  38 E3 FC 01 */	addi r7, r3, -1023
/* 800A1A60 0009E9C0  2C 07 00 14 */	cmpwi r7, 0x14
/* 800A1A64 0009E9C4  40 80 00 98 */	bge lbl_800A1AFC
/* 800A1A68 0009E9C8  2C 07 00 00 */	cmpwi r7, 0
/* 800A1A6C 0009E9CC  40 80 00 44 */	bge lbl_800A1AB0
/* 800A1A70 0009E9D0  C8 42 8A E8 */	lfd f2, @125-_SDA2_BASE_(r2)
/* 800A1A74 0009E9D4  C8 02 8A F0 */	lfd f0, @126-_SDA2_BASE_(r2)
/* 800A1A78 0009E9D8  FC 22 08 2A */	fadd f1, f2, f1
/* 800A1A7C 0009E9DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A1A80 0009E9E0  40 81 00 FC */	ble lbl_800A1B7C
/* 800A1A84 0009E9E4  2C 05 00 00 */	cmpwi r5, 0
/* 800A1A88 0009E9E8  41 80 00 10 */	blt lbl_800A1A98
/* 800A1A8C 0009E9EC  38 C0 00 00 */	li r6, 0
/* 800A1A90 0009E9F0  38 A0 00 00 */	li r5, 0
/* 800A1A94 0009E9F4  48 00 00 E8 */	b lbl_800A1B7C
lbl_800A1A98:
/* 800A1A98 0009E9F8  54 A0 00 7E */	clrlwi r0, r5, 1
/* 800A1A9C 0009E9FC  7C 00 33 79 */	or. r0, r0, r6
/* 800A1AA0 0009EA00  41 82 00 DC */	beq lbl_800A1B7C
/* 800A1AA4 0009EA04  3C A0 BF F0 */	lis r5, 0xbff0
/* 800A1AA8 0009EA08  38 C0 00 00 */	li r6, 0
/* 800A1AAC 0009EA0C  48 00 00 D0 */	b lbl_800A1B7C
lbl_800A1AB0:
/* 800A1AB0 0009EA10  3C 60 00 10 */	lis r3, 0x000FFFFF@ha
/* 800A1AB4 0009EA14  38 03 FF FF */	addi r0, r3, 0x000FFFFF@l
/* 800A1AB8 0009EA18  7C 04 3E 30 */	sraw r4, r0, r7
/* 800A1ABC 0009EA1C  7C A0 20 38 */	and r0, r5, r4
/* 800A1AC0 0009EA20  7C C0 03 79 */	or. r0, r6, r0
/* 800A1AC4 0009EA24  40 82 00 08 */	bne lbl_800A1ACC
/* 800A1AC8 0009EA28  48 00 00 C0 */	b lbl_800A1B88
lbl_800A1ACC:
/* 800A1ACC 0009EA2C  C8 42 8A E8 */	lfd f2, @125-_SDA2_BASE_(r2)
/* 800A1AD0 0009EA30  C8 02 8A F0 */	lfd f0, @126-_SDA2_BASE_(r2)
/* 800A1AD4 0009EA34  FC 22 08 2A */	fadd f1, f2, f1
/* 800A1AD8 0009EA38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A1ADC 0009EA3C  40 81 00 A0 */	ble lbl_800A1B7C
/* 800A1AE0 0009EA40  2C 05 00 00 */	cmpwi r5, 0
/* 800A1AE4 0009EA44  40 80 00 0C */	bge lbl_800A1AF0
/* 800A1AE8 0009EA48  7C 60 3E 30 */	sraw r0, r3, r7
/* 800A1AEC 0009EA4C  7C A5 02 14 */	add r5, r5, r0
lbl_800A1AF0:
/* 800A1AF0 0009EA50  7C A5 20 78 */	andc r5, r5, r4
/* 800A1AF4 0009EA54  38 C0 00 00 */	li r6, 0
/* 800A1AF8 0009EA58  48 00 00 84 */	b lbl_800A1B7C
lbl_800A1AFC:
/* 800A1AFC 0009EA5C  2C 07 00 33 */	cmpwi r7, 0x33
/* 800A1B00 0009EA60  40 81 00 14 */	ble lbl_800A1B14
/* 800A1B04 0009EA64  2C 07 04 00 */	cmpwi r7, 0x400
/* 800A1B08 0009EA68  40 82 00 80 */	bne lbl_800A1B88
/* 800A1B0C 0009EA6C  FC 21 08 2A */	fadd f1, f1, f1
/* 800A1B10 0009EA70  48 00 00 78 */	b lbl_800A1B88
lbl_800A1B14:
/* 800A1B14 0009EA74  38 07 FF EC */	addi r0, r7, -20
/* 800A1B18 0009EA78  38 60 FF FF */	li r3, -1
/* 800A1B1C 0009EA7C  7C 64 04 30 */	srw r4, r3, r0
/* 800A1B20 0009EA80  7C C0 20 39 */	and. r0, r6, r4
/* 800A1B24 0009EA84  40 82 00 08 */	bne lbl_800A1B2C
/* 800A1B28 0009EA88  48 00 00 60 */	b lbl_800A1B88
lbl_800A1B2C:
/* 800A1B2C 0009EA8C  C8 42 8A E8 */	lfd f2, @125-_SDA2_BASE_(r2)
/* 800A1B30 0009EA90  C8 02 8A F0 */	lfd f0, @126-_SDA2_BASE_(r2)
/* 800A1B34 0009EA94  FC 22 08 2A */	fadd f1, f2, f1
/* 800A1B38 0009EA98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A1B3C 0009EA9C  40 81 00 40 */	ble lbl_800A1B7C
/* 800A1B40 0009EAA0  2C 05 00 00 */	cmpwi r5, 0
/* 800A1B44 0009EAA4  40 80 00 34 */	bge lbl_800A1B78
/* 800A1B48 0009EAA8  2C 07 00 14 */	cmpwi r7, 0x14
/* 800A1B4C 0009EAAC  40 82 00 0C */	bne lbl_800A1B58
/* 800A1B50 0009EAB0  38 A5 00 01 */	addi r5, r5, 1
/* 800A1B54 0009EAB4  48 00 00 24 */	b lbl_800A1B78
lbl_800A1B58:
/* 800A1B58 0009EAB8  20 07 00 34 */	subfic r0, r7, 0x34
/* 800A1B5C 0009EABC  38 60 00 01 */	li r3, 1
/* 800A1B60 0009EAC0  7C 60 00 30 */	slw r0, r3, r0
/* 800A1B64 0009EAC4  7C 06 02 14 */	add r0, r6, r0
/* 800A1B68 0009EAC8  7C 00 30 40 */	cmplw r0, r6
/* 800A1B6C 0009EACC  40 80 00 08 */	bge lbl_800A1B74
/* 800A1B70 0009EAD0  38 A5 00 01 */	addi r5, r5, 1
lbl_800A1B74:
/* 800A1B74 0009EAD4  7C 06 03 78 */	mr r6, r0
lbl_800A1B78:
/* 800A1B78 0009EAD8  7C C6 20 78 */	andc r6, r6, r4
lbl_800A1B7C:
/* 800A1B7C 0009EADC  90 A1 00 08 */	stw r5, 8(r1)
/* 800A1B80 0009EAE0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 800A1B84 0009EAE4  C8 21 00 08 */	lfd f1, 8(r1)
lbl_800A1B88:
/* 800A1B88 0009EAE8  38 21 00 10 */	addi r1, r1, 0x10
/* 800A1B8C 0009EAEC  4E 80 00 20 */	blr 
