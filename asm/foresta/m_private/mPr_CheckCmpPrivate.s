lbl_803E066C:
/* 803E066C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E0670  7C 08 02 A6 */	mflr r0
/* 803E0674  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E0678  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E067C  3B E0 00 00 */	li r31, 0
/* 803E0680  4B FF FA C5 */	bl mPr_CheckCmpPersonalID
/* 803E0684  2C 03 00 01 */	cmpwi r3, 1
/* 803E0688  40 82 00 08 */	bne lbl_803E0690
/* 803E068C  3B E0 00 01 */	li r31, 1
lbl_803E0690:
/* 803E0690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E0694  7F E3 FB 78 */	mr r3, r31
/* 803E0698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E069C  7C 08 03 A6 */	mtlr r0
/* 803E06A0  38 21 00 10 */	addi r1, r1, 0x10
/* 803E06A4  4E 80 00 20 */	blr 
