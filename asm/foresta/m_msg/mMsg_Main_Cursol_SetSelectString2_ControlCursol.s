lbl_803C385C:
/* 803C385C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3860  7C 08 02 A6 */	mflr r0
/* 803C3864  38 A0 00 02 */	li r5, 2
/* 803C3868  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C386C  4B FF FD E5 */	bl mMsg_Main_Cursol_SetSelectString_ControlCursol
/* 803C3870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3874  7C 08 03 A6 */	mtlr r0
/* 803C3878  38 21 00 10 */	addi r1, r1, 0x10
/* 803C387C  4E 80 00 20 */	blr 
