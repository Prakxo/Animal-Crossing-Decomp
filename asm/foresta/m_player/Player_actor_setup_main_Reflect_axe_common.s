lbl_804F0B48:
/* 804F0B48  80 A3 00 00 */	lwz r5, 0(r3)
/* 804F0B4C  80 03 00 04 */	lwz r0, 4(r3)
/* 804F0B50  90 A4 00 00 */	stw r5, 0(r4)
/* 804F0B54  90 04 00 04 */	stw r0, 4(r4)
/* 804F0B58  80 03 00 08 */	lwz r0, 8(r3)
/* 804F0B5C  90 04 00 08 */	stw r0, 8(r4)
/* 804F0B60  80 03 00 10 */	lwz r0, 0x10(r3)
/* 804F0B64  90 04 00 10 */	stw r0, 0x10(r4)
/* 804F0B68  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 804F0B6C  B0 04 00 0C */	sth r0, 0xc(r4)
/* 804F0B70  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 804F0B74  B0 04 00 0E */	sth r0, 0xe(r4)
/* 804F0B78  4E 80 00 20 */	blr 
