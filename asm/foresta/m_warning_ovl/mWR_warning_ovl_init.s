lbl_80600964:
/* 80600964  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 80600968  3C 60 80 65 */	lis r3, lit_409@ha /* 0x8064B970@ha */
/* 8060096C  38 80 00 00 */	li r4, 0
/* 80600970  38 00 00 01 */	li r0, 1
/* 80600974  80 C5 09 A8 */	lwz r6, 0x9a8(r5)
/* 80600978  C0 03 B9 70 */	lfs f0, lit_409@l(r3)  /* 0x8064B970@l */
/* 8060097C  90 85 09 3C */	stw r4, 0x93c(r5)
/* 80600980  90 85 04 D8 */	stw r4, 0x4d8(r5)
/* 80600984  90 05 05 04 */	stw r0, 0x504(r5)
/* 80600988  98 06 00 00 */	stb r0, 0(r6)
/* 8060098C  D0 06 00 04 */	stfs f0, 4(r6)
/* 80600990  98 06 00 01 */	stb r0, 1(r6)
/* 80600994  4E 80 00 20 */	blr 
