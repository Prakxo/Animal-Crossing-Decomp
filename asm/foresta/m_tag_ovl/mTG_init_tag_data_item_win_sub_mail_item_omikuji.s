lbl_805F04F4:
/* 805F04F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F04F8  7C 08 02 A6 */	mflr r0
/* 805F04FC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D03D@ha */
/* 805F0500  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F0504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F0508  7C 9F 23 78 */	mr r31, r4
/* 805F050C  93 C1 00 08 */	stw r30, 8(r1)
/* 805F0510  7C 7E 1B 78 */	mr r30, r3
/* 805F0514  38 65 D0 3D */	addi r3, r5, 0xD03D /* 0x0000D03D@l */
/* 805F0518  4B DE 16 2D */	bl mNpc_GetNpcWorldNameP
/* 805F051C  7C 64 1B 78 */	mr r4, r3
/* 805F0520  38 7F 00 2C */	addi r3, r31, 0x2c
/* 805F0524  38 A0 00 23 */	li r5, 0x23
/* 805F0528  38 C0 00 08 */	li r6, 8
/* 805F052C  4B FF FC 0D */	bl mTG_strcpy
/* 805F0530  38 00 00 08 */	li r0, 8
/* 805F0534  38 80 00 04 */	li r4, 4
/* 805F0538  90 1F 00 50 */	stw r0, 0x50(r31)
/* 805F053C  38 00 00 09 */	li r0, 9
/* 805F0540  38 60 00 04 */	li r3, 4
/* 805F0544  90 9F 00 54 */	stw r4, 0x54(r31)
/* 805F0548  98 1E 00 02 */	stb r0, 2(r30)
/* 805F054C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F0550  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F0554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F0558  7C 08 03 A6 */	mtlr r0
/* 805F055C  38 21 00 10 */	addi r1, r1, 0x10
/* 805F0560  4E 80 00 20 */	blr 
