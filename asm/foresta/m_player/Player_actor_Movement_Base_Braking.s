lbl_804D59A0:
/* 804D59A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D59A4  7C 08 02 A6 */	mflr r0
/* 804D59A8  3C 80 80 64 */	lis r4, lit_1011@ha /* 0x806469F0@ha */
/* 804D59AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D59B0  C0 24 69 F0 */	lfs f1, lit_1011@l(r4)  /* 0x806469F0@l */
/* 804D59B4  4B FF FF 89 */	bl Player_actor_Movement_Base_Braking_common
/* 804D59B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D59BC  7C 08 03 A6 */	mtlr r0
/* 804D59C0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D59C4  4E 80 00 20 */	blr 
