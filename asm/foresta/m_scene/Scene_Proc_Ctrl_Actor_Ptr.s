lbl_803F1024:
/* 803F1024  80 A4 00 04 */	lwz r5, 4(r4)
/* 803F1028  88 04 00 01 */	lbz r0, 1(r4)
/* 803F102C  98 03 20 96 */	stb r0, 0x2096(r3)
/* 803F1030  90 A3 20 A0 */	stw r5, 0x20a0(r3)
/* 803F1034  4E 80 00 20 */	blr 
