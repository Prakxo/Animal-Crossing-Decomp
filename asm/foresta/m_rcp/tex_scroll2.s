lbl_803E5408:
/* 803E5408  81 03 02 D4 */	lwz r8, 0x2d4(r3)
/* 803E540C  35 48 FF E8 */	addic. r10, r8, -24
/* 803E5410  91 43 02 D4 */	stw r10, 0x2d4(r3)
/* 803E5414  7D 43 53 78 */	mr r3, r10
/* 803E5418  4D 82 00 20 */	beqlr 
/* 803E541C  3C 00 E8 00 */	lis r0, 0xe800
/* 803E5420  54 88 62 66 */	rlwinm r8, r4, 0xc, 9, 0x13
/* 803E5424  90 0A 00 00 */	stw r0, 0(r10)
/* 803E5428  38 07 FF FF */	addi r0, r7, -1
/* 803E542C  39 20 00 00 */	li r9, 0
/* 803E5430  65 07 F2 00 */	oris r7, r8, 0xf200
/* 803E5434  54 A5 05 7E */	clrlwi r5, r5, 0x15
/* 803E5438  38 C6 FF FF */	addi r6, r6, -1
/* 803E543C  54 00 10 3A */	slwi r0, r0, 2
/* 803E5440  54 88 05 7E */	clrlwi r8, r4, 0x15
/* 803E5444  91 2A 00 04 */	stw r9, 4(r10)
/* 803E5448  7C E7 2B 78 */	or r7, r7, r5
/* 803E544C  54 C4 10 3A */	slwi r4, r6, 2
/* 803E5450  7C 05 02 14 */	add r0, r5, r0
/* 803E5454  7C A8 22 14 */	add r5, r8, r4
/* 803E5458  90 EA 00 08 */	stw r7, 8(r10)
/* 803E545C  54 04 05 3E */	clrlwi r4, r0, 0x14
/* 803E5460  3C 00 DF 00 */	lis r0, 0xdf00
/* 803E5464  50 A4 62 26 */	rlwimi r4, r5, 0xc, 8, 0x13
/* 803E5468  90 8A 00 0C */	stw r4, 0xc(r10)
/* 803E546C  90 0A 00 10 */	stw r0, 0x10(r10)
/* 803E5470  91 2A 00 14 */	stw r9, 0x14(r10)
/* 803E5474  4E 80 00 20 */	blr 
