lbl_80585A1C:
/* 80585A1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585A20  7C 08 02 A6 */	mflr r0
/* 80585A24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585A28  A0 63 09 BA */	lhz r3, 0x9ba(r3)
/* 80585A2C  4B E6 2C 75 */	bl mSP_ItemNo2ItemPrice
/* 80585A30  38 80 00 03 */	li r4, 3
/* 80585A34  4B FF B6 95 */	bl aNSC_set_value_str
/* 80585A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585A3C  7C 08 03 A6 */	mtlr r0
/* 80585A40  38 21 00 10 */	addi r1, r1, 0x10
/* 80585A44  4E 80 00 20 */	blr 
