lbl_806002F0:
/* 806002F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806002F4  7C 08 02 A6 */	mflr r0
/* 806002F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806002FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80600300  93 C1 00 08 */	stw r30, 8(r1)
/* 80600304  7C 9E 23 78 */	mr r30, r4
/* 80600308  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8060030C  80 A3 09 28 */	lwz r5, 0x928(r3)
/* 80600310  83 E3 09 A8 */	lwz r31, 0x9a8(r3)
/* 80600314  70 A0 D0 00 */	andi. r0, r5, 0xd000
/* 80600318  41 82 00 58 */	beq lbl_80600370
/* 8060031C  38 80 00 00 */	li r4, 0
/* 80600320  38 60 00 04 */	li r3, 4
/* 80600324  90 9E 00 04 */	stw r4, 4(r30)
/* 80600328  54 A0 04 63 */	rlwinm. r0, r5, 0, 0x11, 0x11
/* 8060032C  90 7E 00 30 */	stw r3, 0x30(r30)
/* 80600330  98 9F 00 01 */	stb r4, 1(r31)
/* 80600334  41 82 00 10 */	beq lbl_80600344
/* 80600338  38 00 00 01 */	li r0, 1
/* 8060033C  98 1F 00 00 */	stb r0, 0(r31)
/* 80600340  48 00 00 18 */	b lbl_80600358
lbl_80600344:
/* 80600344  88 1F 00 00 */	lbz r0, 0(r31)
/* 80600348  28 00 00 00 */	cmplwi r0, 0
/* 8060034C  40 82 00 0C */	bne lbl_80600358
/* 80600350  38 60 04 35 */	li r3, 0x435
/* 80600354  48 02 D9 B1 */	bl sAdo_SysTrgStart
lbl_80600358:
/* 80600358  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 8060035C  2C 00 00 00 */	cmpwi r0, 0
/* 80600360  40 82 00 68 */	bne lbl_806003C8
/* 80600364  88 1F 00 00 */	lbz r0, 0(r31)
/* 80600368  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8060036C  48 00 00 5C */	b lbl_806003C8
lbl_80600370:
/* 80600370  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80600374  2C 00 00 00 */	cmpwi r0, 0
/* 80600378  40 82 00 50 */	bne lbl_806003C8
/* 8060037C  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 80600380  41 82 00 24 */	beq lbl_806003A4
/* 80600384  88 1F 00 00 */	lbz r0, 0(r31)
/* 80600388  28 00 00 01 */	cmplwi r0, 1
/* 8060038C  40 82 00 3C */	bne lbl_806003C8
/* 80600390  38 00 00 00 */	li r0, 0
/* 80600394  38 60 00 01 */	li r3, 1
/* 80600398  98 1F 00 00 */	stb r0, 0(r31)
/* 8060039C  48 02 D9 69 */	bl sAdo_SysTrgStart
/* 806003A0  48 00 00 28 */	b lbl_806003C8
lbl_806003A4:
/* 806003A4  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 806003A8  41 82 00 20 */	beq lbl_806003C8
/* 806003AC  88 1F 00 00 */	lbz r0, 0(r31)
/* 806003B0  28 00 00 00 */	cmplwi r0, 0
/* 806003B4  40 82 00 14 */	bne lbl_806003C8
/* 806003B8  38 00 00 01 */	li r0, 1
/* 806003BC  38 60 00 01 */	li r3, 1
/* 806003C0  98 1F 00 00 */	stb r0, 0(r31)
/* 806003C4  48 02 D9 41 */	bl sAdo_SysTrgStart
lbl_806003C8:
/* 806003C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806003CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806003D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 806003D4  7C 08 03 A6 */	mtlr r0
/* 806003D8  38 21 00 10 */	addi r1, r1, 0x10
/* 806003DC  4E 80 00 20 */	blr 
