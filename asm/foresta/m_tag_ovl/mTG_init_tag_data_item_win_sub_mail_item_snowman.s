lbl_805F05CC:
/* 805F05CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F05D0  7C 08 02 A6 */	mflr r0
/* 805F05D4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000800D@ha */
/* 805F05D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F05DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F05E0  7C 9F 23 78 */	mr r31, r4
/* 805F05E4  93 C1 00 08 */	stw r30, 8(r1)
/* 805F05E8  7C 7E 1B 78 */	mr r30, r3
/* 805F05EC  38 65 80 0D */	addi r3, r5, 0x800D /* 0x0000800D@l */
/* 805F05F0  4B DE 15 55 */	bl mNpc_GetNpcWorldNameP
/* 805F05F4  7C 64 1B 78 */	mr r4, r3
/* 805F05F8  38 7F 00 2C */	addi r3, r31, 0x2c
/* 805F05FC  38 A0 00 23 */	li r5, 0x23
/* 805F0600  38 C0 00 08 */	li r6, 8
/* 805F0604  4B FF FB 35 */	bl mTG_strcpy
/* 805F0608  38 00 00 08 */	li r0, 8
/* 805F060C  38 80 00 03 */	li r4, 3
/* 805F0610  90 1F 00 50 */	stw r0, 0x50(r31)
/* 805F0614  38 00 00 05 */	li r0, 5
/* 805F0618  38 60 00 01 */	li r3, 1
/* 805F061C  90 9F 00 54 */	stw r4, 0x54(r31)
/* 805F0620  98 1E 00 02 */	stb r0, 2(r30)
/* 805F0624  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F0628  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F062C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F0630  7C 08 03 A6 */	mtlr r0
/* 805F0634  38 21 00 10 */	addi r1, r1, 0x10
/* 805F0638  4E 80 00 20 */	blr 
