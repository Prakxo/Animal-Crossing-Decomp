lbl_80628970:
/* 80628970  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80628974  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80628978  3C A4 00 02 */	addis r5, r4, 2
/* 8062897C  88 05 61 21 */	lbz r0, 0x6121(r5)
/* 80628980  2C 00 00 00 */	cmpwi r0, 0
/* 80628984  40 82 00 14 */	bne lbl_80628998
/* 80628988  2C 03 00 00 */	cmpwi r3, 0
/* 8062898C  40 80 00 0C */	bge lbl_80628998
/* 80628990  38 00 00 3B */	li r0, 0x3b
/* 80628994  48 00 00 18 */	b lbl_806289AC
lbl_80628998:
/* 80628998  7C 80 1A 14 */	add r4, r0, r3
/* 8062899C  38 60 00 3C */	li r3, 0x3c
/* 806289A0  7C 04 1B D6 */	divw r0, r4, r3
/* 806289A4  7C 00 19 D6 */	mullw r0, r0, r3
/* 806289A8  7C 00 20 50 */	subf r0, r0, r4
lbl_806289AC:
/* 806289AC  98 05 61 21 */	stb r0, 0x6121(r5)
/* 806289B0  4E 80 00 20 */	blr 
