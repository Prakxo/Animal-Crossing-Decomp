lbl_803C4AF0:
/* 803C4AF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4AF4  7C 08 02 A6 */	mflr r0
/* 803C4AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4AFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C4B00  7C 9F 23 78 */	mr r31, r4
/* 803C4B04  93 C1 00 08 */	stw r30, 8(r1)
/* 803C4B08  7C 7E 1B 78 */	mr r30, r3
/* 803C4B0C  80 84 00 00 */	lwz r4, 0(r4)
/* 803C4B10  4B FF B5 39 */	bl func_803C0048
/* 803C4B14  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C4B18  7C 00 1A 14 */	add r0, r0, r3
/* 803C4B1C  7F C3 F3 78 */	mr r3, r30
/* 803C4B20  90 1F 00 00 */	stw r0, 0(r31)
/* 803C4B24  4B FF DA 51 */	bl mMsg_sound_spec_change_true
/* 803C4B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4B2C  38 60 00 00 */	li r3, 0
/* 803C4B30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C4B34  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C4B38  7C 08 03 A6 */	mtlr r0
/* 803C4B3C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4B40  4E 80 00 20 */	blr 
