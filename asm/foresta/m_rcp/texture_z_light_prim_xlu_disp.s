lbl_803E50B8:
/* 803E50B8  80 C3 02 E0 */	lwz r6, 0x2e0(r3)
/* 803E50BC  3C 80 80 66 */	lis r4, data_8065C488@ha /* 0x8065C488@ha */
/* 803E50C0  38 84 C4 88 */	addi r4, r4, data_8065C488@l /* 0x8065C488@l */
/* 803E50C4  3C A0 DE 00 */	lis r5, 0xde00
/* 803E50C8  38 06 00 08 */	addi r0, r6, 8
/* 803E50CC  90 03 02 E0 */	stw r0, 0x2e0(r3)
/* 803E50D0  38 04 00 60 */	addi r0, r4, 0x60
/* 803E50D4  90 A6 00 00 */	stw r5, 0(r6)
/* 803E50D8  90 06 00 04 */	stw r0, 4(r6)
/* 803E50DC  4E 80 00 20 */	blr 
