lbl_803F2878:
/* 803F2878  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F287C  3C 80 80 64 */	lis r4, lit_479@ha /* 0x80643288@ha */
/* 803F2880  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 803F2884  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F2888  3C E5 00 03 */	addis r7, r5, 3
/* 803F288C  38 00 00 05 */	li r0, 5
/* 803F2890  98 07 88 44 */	stb r0, -0x77bc(r7)
/* 803F2894  3C 60 80 64 */	lis r3, lit_481@ha /* 0x80643290@ha */
/* 803F2898  3C A5 00 02 */	addis r5, r5, 2
/* 803F289C  38 C0 00 01 */	li r6, 1
/* 803F28A0  98 C5 65 23 */	stb r6, 0x6523(r5)
/* 803F28A4  C0 44 32 88 */	lfs f2, lit_479@l(r4)  /* 0x80643288@l */
/* 803F28A8  3C 80 80 64 */	lis r4, lit_480@ha /* 0x8064328C@ha */
/* 803F28AC  98 C7 88 42 */	stb r6, -0x77be(r7)
/* 803F28B0  C0 03 32 90 */	lfs f0, lit_481@l(r3)  /* 0x80643290@l */
/* 803F28B4  98 C7 88 40 */	stb r6, -0x77c0(r7)
/* 803F28B8  C0 24 32 8C */	lfs f1, lit_480@l(r4)  /* 0x8064328C@l */
/* 803F28BC  D0 41 00 08 */	stfs f2, 8(r1)
/* 803F28C0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 803F28C4  80 01 00 08 */	lwz r0, 8(r1)
/* 803F28C8  98 C7 88 41 */	stb r6, -0x77bf(r7)
/* 803F28CC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803F28D0  90 07 88 50 */	stw r0, -0x77b0(r7)
/* 803F28D4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 803F28D8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803F28DC  90 67 88 54 */	stw r3, -0x77ac(r7)
/* 803F28E0  90 07 88 58 */	stw r0, -0x77a8(r7)
/* 803F28E4  38 21 00 20 */	addi r1, r1, 0x20
/* 803F28E8  4E 80 00 20 */	blr 
