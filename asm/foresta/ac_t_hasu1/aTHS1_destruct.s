lbl_804A89D8:
/* 804A89D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A89DC  7C 08 02 A6 */	mflr r0
/* 804A89E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A89E4  4B EC BA 5D */	bl Actor_delete
/* 804A89E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A89EC  7C 08 03 A6 */	mtlr r0
/* 804A89F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804A89F4  4E 80 00 20 */	blr 
