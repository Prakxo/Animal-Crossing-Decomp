lbl_804F5350:
/* 804F5350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5354  7C 08 02 A6 */	mflr r0
/* 804F5358  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F535C  4B FE 17 D9 */	bl Player_actor_Excute_Corect_forStand
/* 804F5360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5364  7C 08 03 A6 */	mtlr r0
/* 804F5368  38 21 00 10 */	addi r1, r1, 0x10
/* 804F536C  4E 80 00 20 */	blr 
