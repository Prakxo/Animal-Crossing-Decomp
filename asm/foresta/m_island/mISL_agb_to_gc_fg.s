lbl_803B4564:
/* 803B4564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B4568  7C 08 02 A6 */	mflr r0
/* 803B456C  38 A0 01 00 */	li r5, 0x100
/* 803B4570  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B4574  4B FF FB A9 */	bl mISL_short
/* 803B4578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B457C  7C 08 03 A6 */	mtlr r0
/* 803B4580  38 21 00 10 */	addi r1, r1, 0x10
/* 803B4584  4E 80 00 20 */	blr 
