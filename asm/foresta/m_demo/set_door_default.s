lbl_80399180:
/* 80399180  3C 80 80 64 */	lis r4, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399184  3C 60 80 64 */	lis r3, lit_672@ha /* 0x80641CC8@ha */
/* 80399188  80 A4 1C BC */	lwz r5, data_80641CBC@l(r4)  /* 0x80641CBC@l */
/* 8039918C  38 00 00 00 */	li r0, 0
/* 80399190  C0 03 1C C8 */	lfs f0, lit_672@l(r3)  /* 0x80641CC8@l */
/* 80399194  38 80 00 04 */	li r4, 4
/* 80399198  90 05 03 00 */	stw r0, 0x300(r5)
/* 8039919C  38 00 00 01 */	li r0, 1
/* 803991A0  38 60 00 01 */	li r3, 1
/* 803991A4  D0 05 03 04 */	stfs f0, 0x304(r5)
/* 803991A8  90 85 03 08 */	stw r4, 0x308(r5)
/* 803991AC  90 05 02 F8 */	stw r0, 0x2f8(r5)
/* 803991B0  4E 80 00 20 */	blr 
