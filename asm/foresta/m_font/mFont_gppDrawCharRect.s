lbl_803B027C:
/* 803B027C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803B0280  7C 08 02 A6 */	mflr r0
/* 803B0284  90 01 00 54 */	stw r0, 0x54(r1)
/* 803B0288  39 61 00 50 */	addi r11, r1, 0x50
/* 803B028C  4B CE AC 39 */	bl func_8009AEC4
/* 803B0290  80 04 00 00 */	lwz r0, 0(r4)
/* 803B0294  7C 99 23 78 */	mr r25, r4
/* 803B0298  7C DA 33 78 */	mr r26, r6
/* 803B029C  7C FB 3B 78 */	mr r27, r7
/* 803B02A0  90 01 00 20 */	stw r0, 0x20(r1)
/* 803B02A4  7D 1C 43 78 */	mr r28, r8
/* 803B02A8  7C A4 2B 78 */	mr r4, r5
/* 803B02AC  83 E1 00 58 */	lwz r31, 0x58(r1)
/* 803B02B0  7D 3D 4B 78 */	mr r29, r9
/* 803B02B4  7D 5E 53 78 */	mr r30, r10
/* 803B02B8  38 61 00 20 */	addi r3, r1, 0x20
/* 803B02BC  38 A1 00 1C */	addi r5, r1, 0x1c
/* 803B02C0  38 C1 00 18 */	addi r6, r1, 0x18
/* 803B02C4  38 E1 00 14 */	addi r7, r1, 0x14
/* 803B02C8  39 01 00 10 */	addi r8, r1, 0x10
/* 803B02CC  4B FF F7 DD */	bl mFont_gppLoadTexture
/* 803B02D0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803B02D4  7F 44 D3 78 */	mr r4, r26
/* 803B02D8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 803B02DC  7F 65 DB 78 */	mr r5, r27
/* 803B02E0  54 63 28 34 */	slwi r3, r3, 5
/* 803B02E4  7F 86 E3 78 */	mr r6, r28
/* 803B02E8  54 00 28 34 */	slwi r0, r0, 5
/* 803B02EC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 803B02F0  7F A7 EB 78 */	mr r7, r29
/* 803B02F4  39 00 00 00 */	li r8, 0
/* 803B02F8  90 01 00 18 */	stw r0, 0x18(r1)
/* 803B02FC  93 C1 00 08 */	stw r30, 8(r1)
/* 803B0300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B0304  80 61 00 20 */	lwz r3, 0x20(r1)
/* 803B0308  81 21 00 1C */	lwz r9, 0x1c(r1)
/* 803B030C  81 41 00 18 */	lwz r10, 0x18(r1)
/* 803B0310  48 03 57 11 */	bl gfx_gSPTextureRectangle1
/* 803B0314  90 61 00 20 */	stw r3, 0x20(r1)
/* 803B0318  39 61 00 50 */	addi r11, r1, 0x50
/* 803B031C  90 79 00 00 */	stw r3, 0(r25)
/* 803B0320  4B CE AB F1 */	bl func_8009AF10
/* 803B0324  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803B0328  7C 08 03 A6 */	mtlr r0
/* 803B032C  38 21 00 50 */	addi r1, r1, 0x50
/* 803B0330  4E 80 00 20 */	blr 
