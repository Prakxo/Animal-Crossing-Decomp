lbl_804F2018:
/* 804F2018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F201C  7C 08 02 A6 */	mflr r0
/* 804F2020  3C 80 80 65 */	lis r4, lit_7470@ha /* 0x8064835C@ha */
/* 804F2024  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F2028  C0 24 83 5C */	lfs f1, lit_7470@l(r4)  /* 0x8064835C@l */
/* 804F202C  4B FE 39 11 */	bl Player_actor_Movement_Base_Braking_common
/* 804F2030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F2034  7C 08 03 A6 */	mtlr r0
/* 804F2038  38 21 00 10 */	addi r1, r1, 0x10
/* 804F203C  4E 80 00 20 */	blr 
