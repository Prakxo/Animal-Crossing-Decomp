lbl_805D9690:
/* 805D9690  A8 83 00 16 */	lha r4, 0x16(r3)
/* 805D9694  2C 04 00 00 */	cmpwi r4, 0
/* 805D9698  4C 81 00 20 */	blelr 
/* 805D969C  38 84 FF FF */	addi r4, r4, -1
/* 805D96A0  38 00 00 01 */	li r0, 1
/* 805D96A4  B0 83 00 16 */	sth r4, 0x16(r3)
/* 805D96A8  98 03 00 15 */	stb r0, 0x15(r3)
/* 805D96AC  4E 80 00 20 */	blr 
