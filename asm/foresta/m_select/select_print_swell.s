lbl_8062946C:
/* 8062946C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80629470  7C 08 02 A6 */	mflr r0
/* 80629474  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80629478  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062947C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80629480  3C C5 00 03 */	addis r6, r5, 3
/* 80629484  38 80 00 17 */	li r4, 0x17
/* 80629488  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062948C  38 A0 00 0D */	li r5, 0xd
/* 80629490  93 C1 00 08 */	stw r30, 8(r1)
/* 80629494  7C 7E 1B 78 */	mr r30, r3
/* 80629498  8B E6 88 38 */	lbz r31, -0x77c8(r6)
/* 8062949C  7F FF 07 74 */	extsb r31, r31
/* 806294A0  4B A3 1D 71 */	bl gfxprint_locate8x8
/* 806294A4  2C 1F 00 00 */	cmpwi r31, 0
/* 806294A8  40 82 00 1C */	bne lbl_806294C4
/* 806294AC  3C 80 80 6D */	lis r4, lit_1011@ha /* 0x806D4484@ha */
/* 806294B0  7F C3 F3 78 */	mr r3, r30
/* 806294B4  38 84 44 84 */	addi r4, r4, lit_1011@l /* 0x806D4484@l */
/* 806294B8  4C C6 31 82 */	crclr 6
/* 806294BC  4B A3 24 61 */	bl gfxprint_printf
/* 806294C0  48 00 00 18 */	b lbl_806294D8
lbl_806294C4:
/* 806294C4  3C 80 80 6D */	lis r4, lit_1012@ha /* 0x806D4494@ha */
/* 806294C8  7F C3 F3 78 */	mr r3, r30
/* 806294CC  38 84 44 94 */	addi r4, r4, lit_1012@l /* 0x806D4494@l */
/* 806294D0  4C C6 31 82 */	crclr 6
/* 806294D4  4B A3 24 49 */	bl gfxprint_printf
lbl_806294D8:
/* 806294D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806294DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806294E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 806294E4  7C 08 03 A6 */	mtlr r0
/* 806294E8  38 21 00 10 */	addi r1, r1, 0x10
/* 806294EC  4E 80 00 20 */	blr 
