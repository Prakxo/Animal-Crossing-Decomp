lbl_804DFFA8:
/* 804DFFA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFFAC  7C 08 02 A6 */	mflr r0
/* 804DFFB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFFB4  4B FF AC 79 */	bl Player_actor_request_camera2_main_simple_fishing
/* 804DFFB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFFBC  7C 08 03 A6 */	mtlr r0
/* 804DFFC0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFFC4  4E 80 00 20 */	blr 
