lbl_803F2324:
/* 803F2324  3C 80 81 17 */	lis r4, data_81171540@ha /* 0x81171540@ha */
/* 803F2328  38 60 00 01 */	li r3, 1
/* 803F232C  80 04 15 40 */	lwz r0, data_81171540@l(r4)  /* 0x81171540@l */
/* 803F2330  2C 00 0D CA */	cmpwi r0, 0xdca
/* 803F2334  4D 80 00 20 */	bltlr 
/* 803F2338  38 60 00 00 */	li r3, 0
/* 803F233C  4E 80 00 20 */	blr 
