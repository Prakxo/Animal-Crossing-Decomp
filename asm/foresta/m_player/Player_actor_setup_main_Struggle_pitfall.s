lbl_8050210C:
/* 8050210C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80502110  7C 08 02 A6 */	mflr r0
/* 80502114  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 80502118  3C C0 80 64 */	lis r6, lit_2671@ha /* 0x80646C4C@ha */
/* 8050211C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80502120  38 E5 65 68 */	addi r7, r5, lit_604@l /* 0x80646568@l */
/* 80502124  C0 07 00 00 */	lfs f0, 0(r7)
/* 80502128  38 E6 6C 4C */	addi r7, r6, lit_2671@l /* 0x80646C4C@l */
/* 8050212C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80502130  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 80502134  38 C5 83 54 */	addi r6, r5, lit_7381@l /* 0x80648354@l */
/* 80502138  7C 9F 23 78 */	mr r31, r4
/* 8050213C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80502140  7C 7E 1B 78 */	mr r30, r3
/* 80502144  C0 26 00 00 */	lfs f1, 0(r6)
/* 80502148  38 A1 00 0C */	addi r5, r1, 0xc
/* 8050214C  D0 03 0D 18 */	stfs f0, 0xd18(r3)
/* 80502150  38 C1 00 08 */	addi r6, r1, 8
/* 80502154  C0 07 00 00 */	lfs f0, 0(r7)
/* 80502158  38 80 00 72 */	li r4, 0x72
/* 8050215C  D0 03 0D 1C */	stfs f0, 0xd1c(r3)
/* 80502160  4B FD 7E 01 */	bl Player_actor_SetupItem_Base1
/* 80502164  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80502168  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 8050216C  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80502170  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 80502174  C0 25 00 00 */	lfs f1, 0(r5)
/* 80502178  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 8050217C  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 80502180  7F C3 F3 78 */	mr r3, r30
/* 80502184  FC 40 08 90 */	fmr f2, f1
/* 80502188  7F E4 FB 78 */	mr r4, r31
/* 8050218C  38 A0 00 72 */	li r5, 0x72
/* 80502190  38 C0 00 72 */	li r6, 0x72
/* 80502194  38 E0 00 00 */	li r7, 0
/* 80502198  4B FD 45 61 */	bl Player_actor_InitAnimation_Base1
/* 8050219C  38 00 00 1F */	li r0, 0x1f
/* 805021A0  7F C3 F3 78 */	mr r3, r30
/* 805021A4  90 1E 11 0C */	stw r0, 0x110c(r30)
/* 805021A8  7F E4 FB 78 */	mr r4, r31
/* 805021AC  4B FD 37 4D */	bl Player_actor_setup_main_Base
/* 805021B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805021B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805021B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805021BC  7C 08 03 A6 */	mtlr r0
/* 805021C0  38 21 00 20 */	addi r1, r1, 0x20
/* 805021C4  4E 80 00 20 */	blr 
