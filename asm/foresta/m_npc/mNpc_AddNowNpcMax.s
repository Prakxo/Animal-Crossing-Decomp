lbl_803CB354:
/* 803CB354  88 83 00 00 */	lbz r4, 0(r3)
/* 803CB358  28 04 00 0F */	cmplwi r4, 0xf
/* 803CB35C  4C 80 00 20 */	bgelr 
/* 803CB360  38 04 00 01 */	addi r0, r4, 1
/* 803CB364  98 03 00 00 */	stb r0, 0(r3)
/* 803CB368  4E 80 00 20 */	blr 
