lbl_80591A4C:
/* 80591A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591A50  7C 08 02 A6 */	mflr r0
/* 80591A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591A58  4B E0 89 5D */	bl mDemo_Set_ListenAble
/* 80591A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591A60  38 60 00 01 */	li r3, 1
/* 80591A64  7C 08 03 A6 */	mtlr r0
/* 80591A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80591A6C  4E 80 00 20 */	blr 
