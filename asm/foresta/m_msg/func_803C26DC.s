lbl_803C26DC:
/* 803C26DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C26E0  7C 08 02 A6 */	mflr r0
/* 803C26E4  3C 80 80 64 */	lis r4, lit_1467@ha /* 0x80642634@ha */
/* 803C26E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C26EC  C0 64 26 34 */	lfs f3, lit_1467@l(r4)  /* 0x80642634@l */
/* 803C26F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C26F4  7C 7F 1B 78 */	mr r31, r3
/* 803C26F8  C0 23 04 10 */	lfs f1, 0x410(r3)
/* 803C26FC  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 803C2700  40 80 00 3C */	bge lbl_803C273C
/* 803C2704  3C 80 80 64 */	lis r4, lit_947@ha /* 0x80642630@ha */
/* 803C2708  3C 60 80 64 */	lis r3, lit_725@ha /* 0x80642618@ha */
/* 803C270C  C0 04 26 30 */	lfs f0, lit_947@l(r4)  /* 0x80642630@l */
/* 803C2710  C0 43 26 18 */	lfs f2, lit_725@l(r3)  /* 0x80642618@l */
/* 803C2714  EC 01 00 2A */	fadds f0, f1, f0
/* 803C2718  FC 80 10 90 */	fmr f4, f2
/* 803C271C  FC A0 10 90 */	fmr f5, f2
/* 803C2720  D0 1F 04 10 */	stfs f0, 0x410(r31)
/* 803C2724  C0 3F 04 10 */	lfs f1, 0x410(r31)
/* 803C2728  4B FF 8E D5 */	bl get_percent_forAccelBrake
/* 803C272C  D0 3F 04 24 */	stfs f1, 0x424(r31)
/* 803C2730  38 60 00 00 */	li r3, 0
/* 803C2734  D0 3F 04 28 */	stfs f1, 0x428(r31)
/* 803C2738  48 00 00 28 */	b lbl_803C2760
lbl_803C273C:
/* 803C273C  3C 60 80 64 */	lis r3, lit_947@ha /* 0x80642630@ha */
/* 803C2740  3C 80 80 64 */	lis r4, lit_725@ha /* 0x80642618@ha */
/* 803C2744  38 A3 26 30 */	addi r5, r3, lit_947@l /* 0x80642630@l */
/* 803C2748  C0 04 26 18 */	lfs f0, lit_725@l(r4)  /* 0x80642618@l */
/* 803C274C  C0 25 00 00 */	lfs f1, 0(r5)
/* 803C2750  38 60 00 01 */	li r3, 1
/* 803C2754  D0 3F 04 24 */	stfs f1, 0x424(r31)
/* 803C2758  D0 3F 04 28 */	stfs f1, 0x428(r31)
/* 803C275C  D0 1F 04 10 */	stfs f0, 0x410(r31)
lbl_803C2760:
/* 803C2760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2764  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C2768  7C 08 03 A6 */	mtlr r0
/* 803C276C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2770  4E 80 00 20 */	blr 
