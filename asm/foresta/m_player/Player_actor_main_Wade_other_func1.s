lbl_804DFED4:
/* 804DFED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFED8  7C 08 02 A6 */	mflr r0
/* 804DFEDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFEE0  C0 23 0D 34 */	lfs f1, 0xd34(r3)
/* 804DFEE4  4B FF FF 79 */	bl Player_actor_ChangeFace_for_Wade
/* 804DFEE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFEEC  7C 08 03 A6 */	mtlr r0
/* 804DFEF0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFEF4  4E 80 00 20 */	blr 
