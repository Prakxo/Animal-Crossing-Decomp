lbl_8050802C:
/* 8050802C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80508030  7C 08 02 A6 */	mflr r0
/* 80508034  90 01 00 44 */	stw r0, 0x44(r1)
/* 80508038  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8050803C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80508040  39 61 00 30 */	addi r11, r1, 0x30
/* 80508044  4B B9 2E 8D */	bl func_8009AED0
/* 80508048  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 8050804C  7C 7D 1B 78 */	mr r29, r3
/* 80508050  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 80508054  7C 9E 23 78 */	mr r30, r4
/* 80508058  3B FD 01 74 */	addi r31, r29, 0x174
/* 8050805C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80508060  38 C1 00 08 */	addi r6, r1, 8
/* 80508064  38 80 00 8A */	li r4, 0x8a
/* 80508068  4B FD 1E F9 */	bl Player_actor_SetupItem_Base1
/* 8050806C  80 7D 0D 60 */	lwz r3, 0xd60(r29)
/* 80508070  80 1D 0D 64 */	lwz r0, 0xd64(r29)
/* 80508074  90 61 00 10 */	stw r3, 0x10(r1)
/* 80508078  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050807C  80 1D 0D 68 */	lwz r0, 0xd68(r29)
/* 80508080  90 01 00 18 */	stw r0, 0x18(r1)
/* 80508084  AB 9D 0D 6C */	lha r28, 0xd6c(r29)
/* 80508088  7F 83 E3 78 */	mr r3, r28
/* 8050808C  4B EB 2A 11 */	bl cos_s
/* 80508090  FF E0 08 90 */	fmr f31, f1
/* 80508094  7F 83 E3 78 */	mr r3, r28
/* 80508098  4B EB 2A 59 */	bl sin_s
/* 8050809C  3C 60 80 65 */	lis r3, lit_12515@ha /* 0x80648548@ha */
/* 805080A0  3C 80 80 64 */	lis r4, lit_5979@ha /* 0x80647DC4@ha */
/* 805080A4  38 A3 85 48 */	addi r5, r3, lit_12515@l /* 0x80648548@l */
/* 805080A8  C0 04 7D C4 */	lfs f0, lit_5979@l(r4)  /* 0x80647DC4@l */
/* 805080AC  C0 45 00 00 */	lfs f2, 0(r5)
/* 805080B0  3C 60 80 64 */	lis r3, lit_1077@ha /* 0x80646A1C@ha */
/* 805080B4  EC 7F 00 32 */	fmuls f3, f31, f0
/* 805080B8  38 C3 6A 1C */	addi r6, r3, lit_1077@l /* 0x80646A1C@l */
/* 805080BC  EC 81 00 B2 */	fmuls f4, f1, f2
/* 805080C0  3C 60 80 64 */	lis r3, lit_801@ha /* 0x80646674@ha */
/* 805080C4  38 83 66 74 */	addi r4, r3, lit_801@l /* 0x80646674@l */
/* 805080C8  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 805080CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805080D0  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 805080D4  EC 64 18 2A */	fadds f3, f4, f3
/* 805080D8  C0 A1 00 10 */	lfs f5, 0x10(r1)
/* 805080DC  C0 86 00 00 */	lfs f4, 0(r6)
/* 805080E0  7F E3 FB 78 */	mr r3, r31
/* 805080E4  EC C5 18 28 */	fsubs f6, f5, f3
/* 805080E8  C0 A1 00 14 */	lfs f5, 0x14(r1)
/* 805080EC  C0 25 65 68 */	lfs f1, lit_604@l(r5)  /* 0x80646568@l */
/* 805080F0  EC 02 00 28 */	fsubs f0, f2, f0
/* 805080F4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 805080F8  EC 85 20 28 */	fsubs f4, f5, f4
/* 805080FC  EC 02 00 28 */	fsubs f0, f2, f0
/* 80508100  C0 44 00 00 */	lfs f2, 0(r4)
/* 80508104  FC 60 08 90 */	fmr f3, f1
/* 80508108  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 8050810C  38 80 00 00 */	li r4, 0
/* 80508110  38 A0 00 00 */	li r5, 0
/* 80508114  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80508118  38 C0 40 00 */	li r6, 0x4000
/* 8050811C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80508120  4B E6 A3 D1 */	bl cKF_SkeletonInfo_R_Animation_Set_base_shape_trs
/* 80508124  3C 60 80 64 */	lis r3, lit_6257@ha /* 0x80647E60@ha */
/* 80508128  A8 BD 00 DE */	lha r5, 0xde(r29)
/* 8050812C  C0 23 7E 60 */	lfs f1, lit_6257@l(r3)  /* 0x80647E60@l */
/* 80508130  7F E7 FB 78 */	mr r7, r31
/* 80508134  A8 DD 00 36 */	lha r6, 0x36(r29)
/* 80508138  38 7D 00 28 */	addi r3, r29, 0x28
/* 8050813C  38 81 00 10 */	addi r4, r1, 0x10
/* 80508140  39 00 00 07 */	li r8, 7
/* 80508144  4B E6 A3 D5 */	bl cKF_SkeletonInfo_R_AnimationMove_ct_base
/* 80508148  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 8050814C  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80508150  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80508154  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 80508158  C0 25 00 00 */	lfs f1, 0(r5)
/* 8050815C  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80508160  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 80508164  7F A3 EB 78 */	mr r3, r29
/* 80508168  FC 40 08 90 */	fmr f2, f1
/* 8050816C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80508170  81 01 00 08 */	lwz r8, 8(r1)
/* 80508174  7F C4 F3 78 */	mr r4, r30
/* 80508178  38 A0 00 8A */	li r5, 0x8a
/* 8050817C  38 E0 00 00 */	li r7, 0
/* 80508180  4B FC E6 91 */	bl Player_actor_InitAnimation_Base2
/* 80508184  7F A3 EB 78 */	mr r3, r29
/* 80508188  7F C4 F3 78 */	mr r4, r30
/* 8050818C  4B FC D7 6D */	bl Player_actor_setup_main_Base
/* 80508190  7F A3 EB 78 */	mr r3, r29
/* 80508194  4B FD 74 81 */	bl Player_actor_sound_JUMP
/* 80508198  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8050819C  39 61 00 30 */	addi r11, r1, 0x30
/* 805081A0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805081A4  4B B9 2D 79 */	bl func_8009AF1C
/* 805081A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805081AC  7C 08 03 A6 */	mtlr r0
/* 805081B0  38 21 00 40 */	addi r1, r1, 0x40
/* 805081B4  4E 80 00 20 */	blr 
