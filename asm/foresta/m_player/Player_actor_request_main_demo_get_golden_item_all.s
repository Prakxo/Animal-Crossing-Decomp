lbl_8050849C:
/* 8050849C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805084A0  7C 08 02 A6 */	mflr r0
/* 805084A4  7C A6 2B 78 */	mr r6, r5
/* 805084A8  7C 85 23 78 */	mr r5, r4
/* 805084AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805084B0  38 80 00 76 */	li r4, 0x76
/* 805084B4  4B FF FF 71 */	bl func_80508424
/* 805084B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805084BC  7C 08 03 A6 */	mtlr r0
/* 805084C0  38 21 00 10 */	addi r1, r1, 0x10
/* 805084C4  4E 80 00 20 */	blr 
