lbl_804EC904:
/* 804EC904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EC908  7C 08 02 A6 */	mflr r0
/* 804EC90C  38 63 01 74 */	addi r3, r3, 0x174
/* 804EC910  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EC914  4B E8 5D 21 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 804EC918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EC91C  7C 08 03 A6 */	mtlr r0
/* 804EC920  38 21 00 10 */	addi r1, r1, 0x10
/* 804EC924  4E 80 00 20 */	blr 
