lbl_8039DFF4:
/* 8039DFF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039DFF8  7C 08 02 A6 */	mflr r0
/* 8039DFFC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8039E000  54 86 06 3E */	clrlwi r6, r4, 0x18
/* 8039E004  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039E008  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8039E00C  38 00 00 05 */	li r0, 5
/* 8039E010  39 60 FF FF */	li r11, -1
/* 8039E014  3D 25 00 03 */	addis r9, r5, 3
/* 8039E018  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039E01C  39 40 00 00 */	li r10, 0
/* 8039E020  38 A0 00 00 */	li r5, 0
/* 8039E024  39 00 00 01 */	li r8, 1
/* 8039E028  7C 09 03 A6 */	mtctr r0
/* 8039E02C  39 29 85 C8 */	addi r9, r9, -31288
lbl_8039E030:
/* 8039E030  A8 09 00 02 */	lha r0, 2(r9)
/* 8039E034  7D 07 50 30 */	slw r7, r8, r10
/* 8039E038  7C E0 00 39 */	and. r0, r7, r0
/* 8039E03C  40 82 00 0C */	bne lbl_8039E048
/* 8039E040  7D 4B 53 78 */	mr r11, r10
/* 8039E044  48 00 00 28 */	b lbl_8039E06C
lbl_8039E048:
/* 8039E048  7C E9 2A 14 */	add r7, r9, r5
/* 8039E04C  88 07 00 04 */	lbz r0, 4(r7)
/* 8039E050  7C 03 00 00 */	cmpw r3, r0
/* 8039E054  40 82 00 18 */	bne lbl_8039E06C
/* 8039E058  88 07 00 05 */	lbz r0, 5(r7)
/* 8039E05C  7C 06 00 40 */	cmplw r6, r0
/* 8039E060  40 82 00 0C */	bne lbl_8039E06C
/* 8039E064  7D 4B 53 78 */	mr r11, r10
/* 8039E068  48 00 00 10 */	b lbl_8039E078
lbl_8039E06C:
/* 8039E06C  39 4A 00 01 */	addi r10, r10, 1
/* 8039E070  38 A5 00 34 */	addi r5, r5, 0x34
/* 8039E074  42 00 FF BC */	bdnz lbl_8039E030
lbl_8039E078:
/* 8039E078  2C 0B FF FF */	cmpwi r11, -1
/* 8039E07C  41 82 00 48 */	beq lbl_8039E0C4
/* 8039E080  38 00 00 01 */	li r0, 1
/* 8039E084  A8 C9 00 02 */	lha r6, 2(r9)
/* 8039E088  1C EB 00 34 */	mulli r7, r11, 0x34
/* 8039E08C  38 A0 00 2C */	li r5, 0x2c
/* 8039E090  7C 00 58 30 */	slw r0, r0, r11
/* 8039E094  7C C0 03 78 */	or r0, r6, r0
/* 8039E098  B0 09 00 02 */	sth r0, 2(r9)
/* 8039E09C  7C C9 3A 14 */	add r6, r9, r7
/* 8039E0A0  3B E7 00 0C */	addi r31, r7, 0xc
/* 8039E0A4  98 66 00 04 */	stb r3, 4(r6)
/* 8039E0A8  7F E9 FA 14 */	add r31, r9, r31
/* 8039E0AC  7F E3 FB 78 */	mr r3, r31
/* 8039E0B0  98 86 00 05 */	stb r4, 5(r6)
/* 8039E0B4  38 80 00 00 */	li r4, 0
/* 8039E0B8  4B C6 52 F1 */	bl func_800033A8
/* 8039E0BC  7F E3 FB 78 */	mr r3, r31
/* 8039E0C0  48 00 00 08 */	b lbl_8039E0C8
lbl_8039E0C4:
/* 8039E0C4  38 60 00 00 */	li r3, 0
lbl_8039E0C8:
/* 8039E0C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039E0CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039E0D0  7C 08 03 A6 */	mtlr r0
/* 8039E0D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8039E0D8  4E 80 00 20 */	blr 
