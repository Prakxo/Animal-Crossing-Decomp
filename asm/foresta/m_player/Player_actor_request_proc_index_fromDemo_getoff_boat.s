lbl_80508348:
/* 80508348  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050834C  7C 08 02 A6 */	mflr r0
/* 80508350  2C 05 00 00 */	cmpwi r5, 0
/* 80508354  90 01 00 14 */	stw r0, 0x14(r1)
/* 80508358  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050835C  7C 9F 23 78 */	mr r31, r4
/* 80508360  41 82 00 1C */	beq lbl_8050837C
/* 80508364  4B FC D0 09 */	bl Player_actor_SettleRequestMainIndexPriority
/* 80508368  7F E3 FB 78 */	mr r3, r31
/* 8050836C  38 80 00 00 */	li r4, 0
/* 80508370  38 A0 00 00 */	li r5, 0
/* 80508374  38 C0 00 13 */	li r6, 0x13
/* 80508378  4B FF 49 C9 */	bl func_804FCD40
lbl_8050837C:
/* 8050837C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80508380  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80508384  7C 08 03 A6 */	mtlr r0
/* 80508388  38 21 00 10 */	addi r1, r1, 0x10
/* 8050838C  4E 80 00 20 */	blr 
