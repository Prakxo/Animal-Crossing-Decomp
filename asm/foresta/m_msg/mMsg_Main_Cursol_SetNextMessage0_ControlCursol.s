lbl_803C3434:
/* 803C3434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3438  7C 08 02 A6 */	mflr r0
/* 803C343C  38 A0 00 00 */	li r5, 0
/* 803C3440  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3444  4B FF FF 25 */	bl mMsg_Main_Cursol_SetNextMessage_ControlCursol
/* 803C3448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C344C  7C 08 03 A6 */	mtlr r0
/* 803C3450  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3454  4E 80 00 20 */	blr 
