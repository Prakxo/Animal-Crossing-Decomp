lbl_804EC378:
/* 804EC378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EC37C  7C 08 02 A6 */	mflr r0
/* 804EC380  2C 04 00 00 */	cmpwi r4, 0
/* 804EC384  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EC388  41 82 00 0C */	beq lbl_804EC394
/* 804EC38C  38 80 00 15 */	li r4, 0x15
/* 804EC390  48 00 00 E5 */	bl Player_actor_request_main_wait_bed
lbl_804EC394:
/* 804EC394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EC398  7C 08 03 A6 */	mtlr r0
/* 804EC39C  38 21 00 10 */	addi r1, r1, 0x10
/* 804EC3A0  4E 80 00 20 */	blr 
