lbl_804E5AA8:
/* 804E5AA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5AAC  7C 08 02 A6 */	mflr r0
/* 804E5AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5AB4  4B FF 10 81 */	bl Player_actor_Excute_Corect_forStand
/* 804E5AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5ABC  7C 08 03 A6 */	mtlr r0
/* 804E5AC0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5AC4  4E 80 00 20 */	blr 
