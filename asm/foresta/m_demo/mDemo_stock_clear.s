lbl_8039A140:
/* 8039A140  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A144  38 00 00 00 */	li r0, 0
/* 8039A148  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A14C  80 63 00 00 */	lwz r3, 0(r3)
/* 8039A150  90 03 02 F0 */	stw r0, 0x2f0(r3)
/* 8039A154  90 03 02 F4 */	stw r0, 0x2f4(r3)
/* 8039A158  4E 80 00 20 */	blr 
