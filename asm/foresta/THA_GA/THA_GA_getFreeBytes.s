lbl_80404A38:
/* 80404A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80404A3C  7C 08 02 A6 */	mflr r0
/* 80404A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80404A44  48 00 00 8D */	bl THA_getFreeBytes
/* 80404A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80404A4C  7C 08 03 A6 */	mtlr r0
/* 80404A50  38 21 00 10 */	addi r1, r1, 0x10
/* 80404A54  4E 80 00 20 */	blr 
