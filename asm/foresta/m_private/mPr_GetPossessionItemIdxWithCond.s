lbl_803E0770:
/* 803E0770  28 03 00 00 */	cmplwi r3, 0
/* 803E0774  38 E0 FF FF */	li r7, -1
/* 803E0778  41 82 00 54 */	beq lbl_803E07CC
/* 803E077C  38 00 00 0F */	li r0, 0xf
/* 803E0780  39 03 00 68 */	addi r8, r3, 0x68
/* 803E0784  54 86 04 3E */	clrlwi r6, r4, 0x10
/* 803E0788  39 20 00 00 */	li r9, 0
/* 803E078C  38 80 00 00 */	li r4, 0
/* 803E0790  7C 09 03 A6 */	mtctr r0
lbl_803E0794:
/* 803E0794  A0 08 00 00 */	lhz r0, 0(r8)
/* 803E0798  7C 00 30 40 */	cmplw r0, r6
/* 803E079C  40 82 00 20 */	bne lbl_803E07BC
/* 803E07A0  80 03 00 88 */	lwz r0, 0x88(r3)
/* 803E07A4  7C 00 24 30 */	srw r0, r0, r4
/* 803E07A8  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 803E07AC  7C 05 00 40 */	cmplw r5, r0
/* 803E07B0  40 82 00 0C */	bne lbl_803E07BC
/* 803E07B4  7D 27 4B 78 */	mr r7, r9
/* 803E07B8  48 00 00 14 */	b lbl_803E07CC
lbl_803E07BC:
/* 803E07BC  39 08 00 02 */	addi r8, r8, 2
/* 803E07C0  39 29 00 01 */	addi r9, r9, 1
/* 803E07C4  38 84 00 02 */	addi r4, r4, 2
/* 803E07C8  42 00 FF CC */	bdnz lbl_803E0794
lbl_803E07CC:
/* 803E07CC  7C E3 3B 78 */	mr r3, r7
/* 803E07D0  4E 80 00 20 */	blr 
