lbl_804E4BC0:
/* 804E4BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4BC4  7C 08 02 A6 */	mflr r0
/* 804E4BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4BCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E4BD0  7C 9F 23 78 */	mr r31, r4
/* 804E4BD4  7F E5 FB 78 */	mr r5, r31
/* 804E4BD8  38 80 00 01 */	li r4, 1
/* 804E4BDC  93 C1 00 08 */	stw r30, 8(r1)
/* 804E4BE0  7C 7E 1B 78 */	mr r30, r3
/* 804E4BE4  4B FF 58 75 */	bl Player_actor_check_request_main_able
/* 804E4BE8  2C 03 00 00 */	cmpwi r3, 0
/* 804E4BEC  41 82 00 1C */	beq lbl_804E4C08
/* 804E4BF0  7F C3 F3 78 */	mr r3, r30
/* 804E4BF4  7F E5 FB 78 */	mr r5, r31
/* 804E4BF8  38 80 00 01 */	li r4, 1
/* 804E4BFC  4B FF 04 19 */	bl Player_actor_request_main_index
/* 804E4C00  38 60 00 01 */	li r3, 1
/* 804E4C04  48 00 00 08 */	b lbl_804E4C0C
lbl_804E4C08:
/* 804E4C08  38 60 00 00 */	li r3, 0
lbl_804E4C0C:
/* 804E4C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4C10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E4C14  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E4C18  7C 08 03 A6 */	mtlr r0
/* 804E4C1C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4C20  4E 80 00 20 */	blr 
