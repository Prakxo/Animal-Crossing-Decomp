lbl_804EFA88:
/* 804EFA88  80 C3 00 00 */	lwz r6, 0(r3)
/* 804EFA8C  38 00 00 00 */	li r0, 0
/* 804EFA90  80 A3 00 04 */	lwz r5, 4(r3)
/* 804EFA94  90 C4 00 00 */	stw r6, 0(r4)
/* 804EFA98  90 A4 00 04 */	stw r5, 4(r4)
/* 804EFA9C  80 A3 00 08 */	lwz r5, 8(r3)
/* 804EFAA0  90 A4 00 08 */	stw r5, 8(r4)
/* 804EFAA4  A0 A3 00 0C */	lhz r5, 0xc(r3)
/* 804EFAA8  B0 A4 00 0C */	sth r5, 0xc(r4)
/* 804EFAAC  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 804EFAB0  90 A4 00 10 */	stw r5, 0x10(r4)
/* 804EFAB4  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 804EFAB8  90 A4 00 14 */	stw r5, 0x14(r4)
/* 804EFABC  A0 63 00 0E */	lhz r3, 0xe(r3)
/* 804EFAC0  B0 64 00 0E */	sth r3, 0xe(r4)
/* 804EFAC4  90 04 00 18 */	stw r0, 0x18(r4)
/* 804EFAC8  B0 04 00 1C */	sth r0, 0x1c(r4)
/* 804EFACC  90 04 00 20 */	stw r0, 0x20(r4)
/* 804EFAD0  4E 80 00 20 */	blr 
