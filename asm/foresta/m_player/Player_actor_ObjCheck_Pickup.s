lbl_804ED5EC:
/* 804ED5EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ED5F0  7C 08 02 A6 */	mflr r0
/* 804ED5F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ED5F8  4B FE 95 3D */	bl Player_actor_Excute_Corect_forStand
/* 804ED5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ED600  7C 08 03 A6 */	mtlr r0
/* 804ED604  38 21 00 10 */	addi r1, r1, 0x10
/* 804ED608  4E 80 00 20 */	blr 
