lbl_8060128C:
/* 8060128C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80601290  7C 08 02 A6 */	mflr r0
/* 80601294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80601298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060129C  93 C1 00 08 */	stw r30, 8(r1)
/* 806012A0  7C 7E 1B 78 */	mr r30, r3
/* 806012A4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 806012A8  81 84 08 D0 */	lwz r12, 0x8d0(r4)
/* 806012AC  3B E4 08 C4 */	addi r31, r4, 0x8c4
/* 806012B0  7D 89 03 A6 */	mtctr r12
/* 806012B4  4E 80 04 21 */	bctrl 
/* 806012B8  80 1F 00 04 */	lwz r0, 4(r31)
/* 806012BC  3C 60 80 6D */	lis r3, data_806D1C18@ha /* 0x806D1C18@ha */
/* 806012C0  38 A3 1C 18 */	addi r5, r3, data_806D1C18@l /* 0x806D1C18@l */
/* 806012C4  7F C3 F3 78 */	mr r3, r30
/* 806012C8  54 00 10 3A */	slwi r0, r0, 2
/* 806012CC  7F E4 FB 78 */	mr r4, r31
/* 806012D0  7D 85 00 2E */	lwzx r12, r5, r0
/* 806012D4  7D 89 03 A6 */	mtctr r12
/* 806012D8  4E 80 04 21 */	bctrl 
/* 806012DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806012E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806012E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 806012E8  7C 08 03 A6 */	mtlr r0
/* 806012EC  38 21 00 10 */	addi r1, r1, 0x10
/* 806012F0  4E 80 00 20 */	blr 
