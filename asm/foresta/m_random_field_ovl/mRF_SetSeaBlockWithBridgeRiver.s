lbl_8050B07C:
/* 8050B07C  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 8050B080  40 82 00 3C */	bne lbl_8050B0BC
/* 8050B084  38 00 00 38 */	li r0, 0x38
/* 8050B088  7C 64 1B 78 */	mr r4, r3
/* 8050B08C  38 A0 00 00 */	li r5, 0
/* 8050B090  7C 09 03 A6 */	mtctr r0
lbl_8050B094:
/* 8050B094  88 04 00 00 */	lbz r0, 0(r4)
/* 8050B098  28 00 00 40 */	cmplwi r0, 0x40
/* 8050B09C  40 82 00 14 */	bne lbl_8050B0B0
/* 8050B0A0  38 00 00 52 */	li r0, 0x52
/* 8050B0A4  7C 03 29 AE */	stbx r0, r3, r5
/* 8050B0A8  38 60 00 08 */	li r3, 8
/* 8050B0AC  4E 80 00 20 */	blr 
lbl_8050B0B0:
/* 8050B0B0  38 A5 00 01 */	addi r5, r5, 1
/* 8050B0B4  38 84 00 01 */	addi r4, r4, 1
/* 8050B0B8  42 00 FF DC */	bdnz lbl_8050B094
lbl_8050B0BC:
/* 8050B0BC  38 60 00 00 */	li r3, 0
/* 8050B0C0  4E 80 00 20 */	blr 
