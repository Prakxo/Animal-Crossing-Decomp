lbl_804D50E4:
/* 804D50E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D50E8  7C 08 02 A6 */	mflr r0
/* 804D50EC  38 60 00 00 */	li r3, 0
/* 804D50F0  38 80 00 07 */	li r4, 7
/* 804D50F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D50F8  4B EC 33 85 */	bl mDemo_Get_OrderValue
/* 804D50FC  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 804D5100  3C 00 43 30 */	lis r0, 0x4330
/* 804D5104  90 01 00 08 */	stw r0, 8(r1)
/* 804D5108  3C 60 80 64 */	lis r3, lit_792@ha /* 0x8064666C@ha */
/* 804D510C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5110  90 81 00 0C */	stw r4, 0xc(r1)
/* 804D5114  38 83 66 6C */	addi r4, r3, lit_792@l /* 0x8064666C@l */
/* 804D5118  C8 44 00 00 */	lfd f2, 0(r4)
/* 804D511C  3C 60 80 64 */	lis r3, lit_790@ha /* 0x80646668@ha */
/* 804D5120  C8 21 00 08 */	lfd f1, 8(r1)
/* 804D5124  C0 03 66 68 */	lfs f0, lit_790@l(r3)  /* 0x80646668@l */
/* 804D5128  EC 21 10 28 */	fsubs f1, f1, f2
/* 804D512C  EC 20 00 72 */	fmuls f1, f0, f1
/* 804D5130  7C 08 03 A6 */	mtlr r0
/* 804D5134  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5138  4E 80 00 20 */	blr 
