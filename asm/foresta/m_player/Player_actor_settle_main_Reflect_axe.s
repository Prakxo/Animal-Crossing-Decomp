lbl_804F0C04:
/* 804F0C04  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F0C08  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804F0C0C  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 804F0C10  A8 03 00 DE */	lha r0, 0xde(r3)
/* 804F0C14  B0 03 00 36 */	sth r0, 0x36(r3)
/* 804F0C18  4E 80 00 20 */	blr 
