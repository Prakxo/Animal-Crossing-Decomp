lbl_803C4290:
/* 803C4290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4294  7C 08 02 A6 */	mflr r0
/* 803C4298  38 A0 00 01 */	li r5, 1
/* 803C429C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C42A0  80 84 00 00 */	lwz r4, 0(r4)
/* 803C42A4  4B FF FF 41 */	bl mMsg_Main_Cursol_PutString_Item
/* 803C42A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C42AC  7C 08 03 A6 */	mtlr r0
/* 803C42B0  38 21 00 10 */	addi r1, r1, 0x10
/* 803C42B4  4E 80 00 20 */	blr 
