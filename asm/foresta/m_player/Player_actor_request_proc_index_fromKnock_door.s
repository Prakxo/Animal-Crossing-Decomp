lbl_80504130:
/* 80504130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80504134  7C 08 02 A6 */	mflr r0
/* 80504138  2C 05 00 00 */	cmpwi r5, 0
/* 8050413C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80504140  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80504144  93 C1 00 08 */	stw r30, 8(r1)
/* 80504148  7C 9E 23 78 */	mr r30, r4
/* 8050414C  41 82 00 28 */	beq lbl_80504174
/* 80504150  3B E3 0D 18 */	addi r31, r3, 0xd18
/* 80504154  38 83 0D 60 */	addi r4, r3, 0xd60
/* 80504158  7F E3 FB 78 */	mr r3, r31
/* 8050415C  38 A0 00 30 */	li r5, 0x30
/* 80504160  4B B5 8E BD */	bl func_8005D01C
/* 80504164  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 80504168  7F C3 F3 78 */	mr r3, r30
/* 8050416C  38 A0 00 27 */	li r5, 0x27
/* 80504170  4B FD 0E A5 */	bl Player_actor_request_main_index
lbl_80504174:
/* 80504174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80504178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050417C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80504180  7C 08 03 A6 */	mtlr r0
/* 80504184  38 21 00 10 */	addi r1, r1, 0x10
/* 80504188  4E 80 00 20 */	blr 
