lbl_80585F08:
/* 80585F08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585F0C  7C 08 02 A6 */	mflr r0
/* 80585F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585F14  4B FF AF A5 */	bl aNSC_set_walk_spd
/* 80585F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585F1C  7C 08 03 A6 */	mtlr r0
/* 80585F20  38 21 00 10 */	addi r1, r1, 0x10
/* 80585F24  4E 80 00 20 */	blr 
