lbl_803C0140:
/* 803C0140  7C 03 20 AE */	lbzx r0, r3, r4
/* 803C0144  28 00 00 7F */	cmplwi r0, 0x7f
/* 803C0148  40 82 00 1C */	bne lbl_803C0164
/* 803C014C  7C 63 22 14 */	add r3, r3, r4
/* 803C0150  88 03 00 01 */	lbz r0, 1(r3)
/* 803C0154  28 00 00 01 */	cmplwi r0, 1
/* 803C0158  40 82 00 0C */	bne lbl_803C0164
/* 803C015C  38 60 00 01 */	li r3, 1
/* 803C0160  4E 80 00 20 */	blr 
lbl_803C0164:
/* 803C0164  38 60 00 00 */	li r3, 0
/* 803C0168  4E 80 00 20 */	blr 
