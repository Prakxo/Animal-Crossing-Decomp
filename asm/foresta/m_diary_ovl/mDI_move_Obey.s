lbl_805D0410:
/* 805D0410  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D0414  7C 08 02 A6 */	mflr r0
/* 805D0418  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D041C  39 61 00 20 */	addi r11, r1, 0x20
/* 805D0420  4B AC AA B5 */	bl func_8009AED4
/* 805D0424  7C 7D 1B 78 */	mr r29, r3
/* 805D0428  7C 9E 23 78 */	mr r30, r4
/* 805D042C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805D0430  80 03 04 90 */	lwz r0, 0x490(r3)
/* 805D0434  80 A3 09 E8 */	lwz r5, 0x9e8(r3)
/* 805D0438  2C 00 00 00 */	cmpwi r0, 0
/* 805D043C  40 82 00 94 */	bne lbl_805D04D0
/* 805D0440  80 03 04 BC */	lwz r0, 0x4bc(r3)
/* 805D0444  2C 00 00 04 */	cmpwi r0, 4
/* 805D0448  40 82 00 88 */	bne lbl_805D04D0
/* 805D044C  80 03 04 C8 */	lwz r0, 0x4c8(r3)
/* 805D0450  83 E3 09 8C */	lwz r31, 0x98c(r3)
/* 805D0454  2C 00 00 00 */	cmpwi r0, 0
/* 805D0458  40 82 00 38 */	bne lbl_805D0490
/* 805D045C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000BA20@ha */
/* 805D0460  80 65 00 00 */	lwz r3, 0(r5)
/* 805D0464  38 84 BA 20 */	addi r4, r4, 0xBA20 /* 0x0000BA20@l */
/* 805D0468  38 A0 00 02 */	li r5, 2
/* 805D046C  4B E2 9B 71 */	bl mCD_save_data_main_to_aram
/* 805D0470  7F A3 EB 78 */	mr r3, r29
/* 805D0474  38 80 00 12 */	li r4, 0x12
/* 805D0478  38 A0 00 00 */	li r5, 0
/* 805D047C  38 C0 00 00 */	li r6, 0
/* 805D0480  4B E1 F2 5D */	bl mSM_open_submenu
/* 805D0484  38 00 00 02 */	li r0, 2
/* 805D0488  90 1E 00 04 */	stw r0, 4(r30)
/* 805D048C  48 00 00 2C */	b lbl_805D04B8
lbl_805D0490:
/* 805D0490  2C 00 00 01 */	cmpwi r0, 1
/* 805D0494  40 82 00 24 */	bne lbl_805D04B8
/* 805D0498  38 80 00 01 */	li r4, 1
/* 805D049C  38 00 00 00 */	li r0, 0
/* 805D04A0  B0 85 00 42 */	sth r4, 0x42(r5)
/* 805D04A4  A8 65 00 46 */	lha r3, 0x46(r5)
/* 805D04A8  90 65 00 18 */	stw r3, 0x18(r5)
/* 805D04AC  98 05 00 04 */	stb r0, 4(r5)
/* 805D04B0  B0 85 00 1C */	sth r4, 0x1c(r5)
/* 805D04B4  90 9E 00 04 */	stw r4, 4(r30)
lbl_805D04B8:
/* 805D04B8  28 1F 00 00 */	cmplwi r31, 0
/* 805D04BC  41 82 00 14 */	beq lbl_805D04D0
/* 805D04C0  38 00 00 00 */	li r0, 0
/* 805D04C4  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 805D04C8  B0 1F 00 22 */	sth r0, 0x22(r31)
/* 805D04CC  B0 1F 00 24 */	sth r0, 0x24(r31)
lbl_805D04D0:
/* 805D04D0  39 61 00 20 */	addi r11, r1, 0x20
/* 805D04D4  4B AC AA 4D */	bl func_8009AF20
/* 805D04D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D04DC  7C 08 03 A6 */	mtlr r0
/* 805D04E0  38 21 00 20 */	addi r1, r1, 0x20
/* 805D04E4  4E 80 00 20 */	blr 
