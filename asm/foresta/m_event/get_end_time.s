lbl_8039B618:
/* 8039B618  54 60 02 3F */	clrlwi. r0, r3, 8
/* 8039B61C  40 82 00 0C */	bne lbl_8039B628
/* 8039B620  38 60 FF FF */	li r3, -1
/* 8039B624  4E 80 00 20 */	blr 
lbl_8039B628:
/* 8039B628  38 00 00 18 */	li r0, 0x18
/* 8039B62C  38 80 00 17 */	li r4, 0x17
/* 8039B630  7C 09 03 A6 */	mtctr r0
lbl_8039B634:
/* 8039B634  54 60 02 11 */	rlwinm. r0, r3, 0, 8, 8
/* 8039B638  40 82 00 10 */	bne lbl_8039B648
/* 8039B63C  54 63 08 3C */	slwi r3, r3, 1
/* 8039B640  38 84 FF FF */	addi r4, r4, -1
/* 8039B644  42 00 FF F0 */	bdnz lbl_8039B634
lbl_8039B648:
/* 8039B648  7C 83 23 78 */	mr r3, r4
/* 8039B64C  4E 80 00 20 */	blr 
