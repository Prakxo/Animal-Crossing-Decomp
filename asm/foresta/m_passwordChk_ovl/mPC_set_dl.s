lbl_80601644:
/* 80601644  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80601648  7C 08 02 A6 */	mflr r0
/* 8060164C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80601650  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80601654  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80601658  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8060165C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80601660  39 61 00 20 */	addi r11, r1, 0x20
/* 80601664  4B A9 98 71 */	bl func_8009AED4
/* 80601668  C3 E5 00 18 */	lfs f31, 0x18(r5)
/* 8060166C  7C 9E 23 78 */	mr r30, r4
/* 80601670  C3 C5 00 1C */	lfs f30, 0x1c(r5)
/* 80601674  7C 7D 1B 78 */	mr r29, r3
/* 80601678  83 E4 00 00 */	lwz r31, 0(r4)
/* 8060167C  FC 20 F8 90 */	fmr f1, f31
/* 80601680  FC 40 F0 90 */	fmr f2, f30
/* 80601684  7F E4 FB 78 */	mr r4, r31
/* 80601688  4B FF FC 6D */	bl mPC_set_frame_dl
/* 8060168C  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 80601690  7F E3 FB 78 */	mr r3, r31
/* 80601694  81 84 09 50 */	lwz r12, 0x950(r4)
/* 80601698  7D 89 03 A6 */	mtctr r12
/* 8060169C  4E 80 04 21 */	bctrl 
/* 806016A0  FC 20 F8 90 */	fmr f1, f31
/* 806016A4  7F A3 EB 78 */	mr r3, r29
/* 806016A8  FC 40 F0 90 */	fmr f2, f30
/* 806016AC  7F C4 F3 78 */	mr r4, r30
/* 806016B0  4B FF FD 89 */	bl mPC_set_character
/* 806016B4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806016B8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806016BC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806016C0  39 61 00 20 */	addi r11, r1, 0x20
/* 806016C4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806016C8  4B A9 98 59 */	bl func_8009AF20
/* 806016CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806016D0  7C 08 03 A6 */	mtlr r0
/* 806016D4  38 21 00 40 */	addi r1, r1, 0x40
/* 806016D8  4E 80 00 20 */	blr 
