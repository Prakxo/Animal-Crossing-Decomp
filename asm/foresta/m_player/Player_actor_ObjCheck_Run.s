lbl_804E6E6C:
/* 804E6E6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E6E70  7C 08 02 A6 */	mflr r0
/* 804E6E74  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E6E78  4B FE FC BD */	bl Player_actor_Excute_Corect_forStand
/* 804E6E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E6E80  7C 08 03 A6 */	mtlr r0
/* 804E6E84  38 21 00 10 */	addi r1, r1, 0x10
/* 804E6E88  4E 80 00 20 */	blr 
