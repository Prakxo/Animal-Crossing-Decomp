lbl_804E4CB8:
/* 804E4CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4CBC  7C 08 02 A6 */	mflr r0
/* 804E4CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4CC4  38 81 00 08 */	addi r4, r1, 8
/* 804E4CC8  4B FF 18 C1 */	bl Player_actor_CulcAnimation_Base2
/* 804E4CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4CD0  7C 08 03 A6 */	mtlr r0
/* 804E4CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4CD8  4E 80 00 20 */	blr 
