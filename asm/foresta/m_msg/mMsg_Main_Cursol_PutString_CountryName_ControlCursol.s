lbl_803C4144:
/* 803C4144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4148  7C 08 02 A6 */	mflr r0
/* 803C414C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4150  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C4154  7C 7F 1B 78 */	mr r31, r3
/* 803C4158  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803C415C  80 DF 04 0C */	lwz r6, 0x40c(r31)
/* 803C4160  80 A3 00 08 */	lwz r5, 8(r3)
/* 803C4164  38 63 00 20 */	addi r3, r3, 0x20
/* 803C4168  54 C0 04 1C */	rlwinm r0, r6, 0, 0x10, 0xe
/* 803C416C  54 C6 03 DE */	rlwinm r6, r6, 0, 0xf, 0xf
/* 803C4170  90 1F 04 0C */	stw r0, 0x40c(r31)
/* 803C4174  80 84 00 00 */	lwz r4, 0(r4)
/* 803C4178  4B FF D6 DD */	bl mMsg_CopyCountryName
/* 803C417C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 803C4180  90 64 00 08 */	stw r3, 8(r4)
/* 803C4184  38 60 00 00 */	li r3, 0
/* 803C4188  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C418C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4190  7C 08 03 A6 */	mtlr r0
/* 803C4194  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4198  4E 80 00 20 */	blr 
