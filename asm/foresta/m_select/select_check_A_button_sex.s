lbl_806281B4:
/* 806281B4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 806281B8  38 60 00 00 */	li r3, 0
/* 806281BC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 806281C0  3C 84 00 02 */	addis r4, r4, 2
/* 806281C4  80 A4 61 3C */	lwz r5, 0x613c(r4)
/* 806281C8  88 85 00 14 */	lbz r4, 0x14(r5)
/* 806281CC  7C 84 07 74 */	extsb r4, r4
/* 806281D0  38 04 00 01 */	addi r0, r4, 1
/* 806281D4  54 04 0F FE */	srwi r4, r0, 0x1f
/* 806281D8  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 806281DC  7C 00 22 78 */	xor r0, r0, r4
/* 806281E0  7C 04 00 50 */	subf r0, r4, r0
/* 806281E4  98 05 00 14 */	stb r0, 0x14(r5)
/* 806281E8  4E 80 00 20 */	blr 
