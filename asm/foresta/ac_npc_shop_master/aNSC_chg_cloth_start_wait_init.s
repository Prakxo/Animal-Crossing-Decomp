lbl_8057C1A8:
/* 8057C1A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C1AC  7C 08 02 A6 */	mflr r0
/* 8057C1B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C1B4  4B E4 34 F5 */	bl func_803BF6A8
/* 8057C1B8  4B E4 4B 89 */	bl mMsg_Set_LockContinue
/* 8057C1BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C1C0  7C 08 03 A6 */	mtlr r0
/* 8057C1C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C1C8  4E 80 00 20 */	blr 
