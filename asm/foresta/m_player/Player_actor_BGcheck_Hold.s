lbl_804EA294:
/* 804EA294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EA298  7C 08 02 A6 */	mflr r0
/* 804EA29C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EA2A0  4B FE DA 95 */	bl Player_actor_BGcheck_common_type3
/* 804EA2A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EA2A8  7C 08 03 A6 */	mtlr r0
/* 804EA2AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804EA2B0  4E 80 00 20 */	blr 
