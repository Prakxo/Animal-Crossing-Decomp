lbl_8039E664:
/* 8039E664  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039E668  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8039E66C  3C 64 00 03 */	addis r3, r4, 3
/* 8039E670  A8 03 85 94 */	lha r0, -0x7a6c(r3)
/* 8039E674  2C 00 00 C6 */	cmpwi r0, 0xc6
/* 8039E678  40 82 00 0C */	bne lbl_8039E684
/* 8039E67C  38 60 00 01 */	li r3, 1
/* 8039E680  4E 80 00 20 */	blr 
lbl_8039E684:
/* 8039E684  3C 64 00 02 */	addis r3, r4, 2
/* 8039E688  80 63 60 B0 */	lwz r3, 0x60b0(r3)
/* 8039E68C  28 03 00 00 */	cmplwi r3, 0
/* 8039E690  41 82 00 18 */	beq lbl_8039E6A8
/* 8039E694  80 03 00 04 */	lwz r0, 4(r3)
/* 8039E698  2C 00 00 03 */	cmpwi r0, 3
/* 8039E69C  40 82 00 0C */	bne lbl_8039E6A8
/* 8039E6A0  38 60 00 01 */	li r3, 1
/* 8039E6A4  4E 80 00 20 */	blr 
lbl_8039E6A8:
/* 8039E6A8  38 60 00 00 */	li r3, 0
/* 8039E6AC  4E 80 00 20 */	blr 
