lbl_804F17B0:
/* 804F17B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F17B4  7C 08 02 A6 */	mflr r0
/* 804F17B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F17BC  4B FE 64 DD */	bl Player_actor_BGcheck_common_type1
/* 804F17C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F17C4  7C 08 03 A6 */	mtlr r0
/* 804F17C8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F17CC  4E 80 00 20 */	blr 
