lbl_8039A5EC:
/* 8039A5EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039A5F0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039A5F4  3C A3 00 02 */	addis r5, r3, 2
/* 8039A5F8  80 85 61 3C */	lwz r4, 0x613c(r5)
/* 8039A5FC  A4 04 23 E0 */	lhzu r0, 0x23e0(r4)
/* 8039A600  A0 65 61 26 */	lhz r3, 0x6126(r5)
/* 8039A604  88 C4 00 02 */	lbz r6, 2(r4)
/* 8039A608  7C 03 00 40 */	cmplw r3, r0
/* 8039A60C  88 64 00 03 */	lbz r3, 3(r4)
/* 8039A610  40 82 00 1C */	bne lbl_8039A62C
/* 8039A614  88 05 61 25 */	lbz r0, 0x6125(r5)
/* 8039A618  7C 00 30 40 */	cmplw r0, r6
/* 8039A61C  40 82 00 10 */	bne lbl_8039A62C
/* 8039A620  88 05 61 23 */	lbz r0, 0x6123(r5)
/* 8039A624  7C 00 18 40 */	cmplw r0, r3
/* 8039A628  4D 82 00 20 */	beqlr 
lbl_8039A62C:
/* 8039A62C  38 00 00 2E */	li r0, 0x2e
/* 8039A630  38 A0 00 00 */	li r5, 0
/* 8039A634  38 60 00 00 */	li r3, 0
/* 8039A638  7C 09 03 A6 */	mtctr r0
lbl_8039A63C:
/* 8039A63C  38 05 00 04 */	addi r0, r5, 4
/* 8039A640  38 A5 00 01 */	addi r5, r5, 1
/* 8039A644  7C 64 01 AE */	stbx r3, r4, r0
/* 8039A648  42 00 FF F4 */	bdnz lbl_8039A63C
/* 8039A64C  4E 80 00 20 */	blr 
