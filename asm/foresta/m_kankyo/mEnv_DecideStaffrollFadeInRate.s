lbl_803B946C:
/* 803B946C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 803B9470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B9474  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 803B9478  3C 00 43 30 */	lis r0, 0x4330
/* 803B947C  80 A4 00 00 */	lwz r5, 0(r4)
/* 803B9480  3C 60 80 64 */	lis r3, lit_471@ha /* 0x806423EC@ha */
/* 803B9484  38 83 23 EC */	addi r4, r3, lit_471@l /* 0x806423EC@l */
/* 803B9488  90 01 00 08 */	stw r0, 8(r1)
/* 803B948C  A8 65 09 0A */	lha r3, 0x90a(r5)
/* 803B9490  3C C0 80 64 */	lis r6, lit_1502@ha /* 0x80642524@ha */
/* 803B9494  38 A6 25 24 */	addi r5, r6, lit_1502@l /* 0x80642524@l */
/* 803B9498  3C E0 80 64 */	lis r7, lit_1708@ha /* 0x8064253C@ha */
/* 803B949C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803B94A0  C8 24 00 00 */	lfd f1, 0(r4)
/* 803B94A4  90 61 00 0C */	stw r3, 0xc(r1)
/* 803B94A8  38 C7 25 3C */	addi r6, r7, lit_1708@l /* 0x8064253C@l */
/* 803B94AC  3C E0 80 64 */	lis r7, lit_1120@ha /* 0x806424FC@ha */
/* 803B94B0  C0 45 00 00 */	lfs f2, 0(r5)
/* 803B94B4  C8 01 00 08 */	lfd f0, 8(r1)
/* 803B94B8  38 67 24 FC */	addi r3, r7, lit_1120@l /* 0x806424FC@l */
/* 803B94BC  3D 00 80 64 */	lis r8, lit_545@ha /* 0x8064244C@ha */
/* 803B94C0  C0 63 00 00 */	lfs f3, 0(r3)
/* 803B94C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 803B94C8  38 E8 24 4C */	addi r7, r8, lit_545@l /* 0x8064244C@l */
/* 803B94CC  3D 00 81 17 */	lis r8, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B94D0  C0 26 00 00 */	lfs f1, 0(r6)
/* 803B94D4  C0 87 00 00 */	lfs f4, 0(r7)
/* 803B94D8  39 08 9B A0 */	addi r8, r8, data_81169BA0@l /* 0x81169BA0@l */
/* 803B94DC  EC 02 00 32 */	fmuls f0, f2, f0
/* 803B94E0  C0 48 00 28 */	lfs f2, 0x28(r8)
/* 803B94E4  EC 01 00 2A */	fadds f0, f1, f0
/* 803B94E8  EC 03 00 32 */	fmuls f0, f3, f0
/* 803B94EC  EC 04 00 24 */	fdivs f0, f4, f0
/* 803B94F0  EC 02 00 2A */	fadds f0, f2, f0
/* 803B94F4  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 803B94F8  D0 08 00 28 */	stfs f0, 0x28(r8)
/* 803B94FC  40 81 00 08 */	ble lbl_803B9504
/* 803B9500  D0 88 00 28 */	stfs f4, 0x28(r8)
lbl_803B9504:
/* 803B9504  38 21 00 10 */	addi r1, r1, 0x10
/* 803B9508  4E 80 00 20 */	blr 
