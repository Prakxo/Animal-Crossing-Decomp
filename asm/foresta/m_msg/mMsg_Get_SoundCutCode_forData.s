lbl_803C039C:
/* 803C039C  7C 03 20 AE */	lbzx r0, r3, r4
/* 803C03A0  28 00 00 7F */	cmplwi r0, 0x7f
/* 803C03A4  40 82 00 1C */	bne lbl_803C03C0
/* 803C03A8  7C 63 22 14 */	add r3, r3, r4
/* 803C03AC  88 03 00 01 */	lbz r0, 1(r3)
/* 803C03B0  28 00 00 51 */	cmplwi r0, 0x51
/* 803C03B4  40 82 00 0C */	bne lbl_803C03C0
/* 803C03B8  88 63 00 02 */	lbz r3, 2(r3)
/* 803C03BC  4E 80 00 20 */	blr 
lbl_803C03C0:
/* 803C03C0  38 60 00 00 */	li r3, 0
/* 803C03C4  4E 80 00 20 */	blr 
