lbl_8050597C:
/* 8050597C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80505980  7C 08 02 A6 */	mflr r0
/* 80505984  3C 80 80 64 */	lis r4, lit_1011@ha /* 0x806469F0@ha */
/* 80505988  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050598C  C0 24 69 F0 */	lfs f1, lit_1011@l(r4)  /* 0x806469F0@l */
/* 80505990  4B FC FF AD */	bl Player_actor_Movement_Base_Braking_common
/* 80505994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80505998  7C 08 03 A6 */	mtlr r0
/* 8050599C  38 21 00 10 */	addi r1, r1, 0x10
/* 805059A0  4E 80 00 20 */	blr 
