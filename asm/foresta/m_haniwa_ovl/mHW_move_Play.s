lbl_805E0204:
/* 805E0204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E0208  7C 08 02 A6 */	mflr r0
/* 805E020C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E0210  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E0214  7C 9F 23 78 */	mr r31, r4
/* 805E0218  93 C1 00 08 */	stw r30, 8(r1)
/* 805E021C  7C 7E 1B 78 */	mr r30, r3
/* 805E0220  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 805E0224  2C 00 00 00 */	cmpwi r0, 0
/* 805E0228  40 82 00 3C */	bne lbl_805E0264
/* 805E022C  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805E0230  3C 80 80 65 */	lis r4, data_8064B35C@ha /* 0x8064B35C@ha */
/* 805E0234  38 C4 B3 5C */	addi r6, r4, data_8064B35C@l /* 0x8064B35C@l */
/* 805E0238  38 80 00 06 */	li r4, 6
/* 805E023C  80 E5 09 7C */	lwz r7, 0x97c(r5)
/* 805E0240  38 A0 00 00 */	li r5, 0
/* 805E0244  C0 26 00 00 */	lfs f1, 0(r6)
/* 805E0248  38 C0 00 00 */	li r6, 0
/* 805E024C  81 87 02 E4 */	lwz r12, 0x2e4(r7)
/* 805E0250  FC 40 08 90 */	fmr f2, f1
/* 805E0254  7D 89 03 A6 */	mtctr r12
/* 805E0258  4E 80 04 21 */	bctrl 
/* 805E025C  38 00 00 01 */	li r0, 1
/* 805E0260  90 1F 00 2C */	stw r0, 0x2c(r31)
lbl_805E0264:
/* 805E0264  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805E0268  7F C3 F3 78 */	mr r3, r30
/* 805E026C  7F E4 FB 78 */	mr r4, r31
/* 805E0270  81 85 09 1C */	lwz r12, 0x91c(r5)
/* 805E0274  7D 89 03 A6 */	mtctr r12
/* 805E0278  4E 80 04 21 */	bctrl 
/* 805E027C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E0280  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E0284  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E0288  7C 08 03 A6 */	mtlr r0
/* 805E028C  38 21 00 10 */	addi r1, r1, 0x10
/* 805E0290  4E 80 00 20 */	blr 
