lbl_803F2838:
/* 803F2838  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F283C  38 60 FF FF */	li r3, -1
/* 803F2840  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F2844  3C E4 00 02 */	addis r7, r4, 2
/* 803F2848  88 07 61 22 */	lbz r0, 0x6122(r7)
/* 803F284C  3C 84 00 03 */	addis r4, r4, 3
/* 803F2850  88 C7 61 21 */	lbz r6, 0x6121(r7)
/* 803F2854  1C A0 00 3C */	mulli r5, r0, 0x3c
/* 803F2858  88 E7 61 20 */	lbz r7, 0x6120(r7)
/* 803F285C  80 04 88 48 */	lwz r0, -0x77b8(r4)
/* 803F2860  7C 86 2A 14 */	add r4, r6, r5
/* 803F2864  1C 84 00 3C */	mulli r4, r4, 0x3c
/* 803F2868  7C 87 22 14 */	add r4, r7, r4
/* 803F286C  7C 00 20 10 */	subfc r0, r0, r4
/* 803F2870  7C 63 01 90 */	subfze r3, r3
/* 803F2874  4E 80 00 20 */	blr 
