lbl_80407E88:
/* 80407E88  3C A0 80 66 */	lis r5, data_8065F038@ha /* 0x8065F038@ha */
/* 80407E8C  54 60 10 3A */	slwi r0, r3, 2
/* 80407E90  84 65 F0 38 */	lwzu r3, data_8065F038@l(r5)  /* 0x8065F038@l */
/* 80407E94  2C 04 00 01 */	cmpwi r4, 1
/* 80407E98  7C 63 02 14 */	add r3, r3, r0
/* 80407E9C  98 83 04 4B */	stb r4, 0x44b(r3)
/* 80407EA0  4D 82 00 20 */	beqlr 
/* 80407EA4  80 65 00 00 */	lwz r3, 0(r5)
/* 80407EA8  38 00 00 F0 */	li r0, 0xf0
/* 80407EAC  98 03 04 5C */	stb r0, 0x45c(r3)
/* 80407EB0  4E 80 00 20 */	blr 
