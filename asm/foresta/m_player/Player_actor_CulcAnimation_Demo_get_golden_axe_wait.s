lbl_80508C44:
/* 80508C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80508C48  7C 08 02 A6 */	mflr r0
/* 80508C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80508C50  4B FC D8 FD */	bl Player_actor_CulcAnimation_Base
/* 80508C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80508C58  7C 08 03 A6 */	mtlr r0
/* 80508C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80508C60  4E 80 00 20 */	blr 
