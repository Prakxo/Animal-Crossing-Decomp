lbl_804D4F68:
/* 804D4F68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4F6C  7C 08 02 A6 */	mflr r0
/* 804D4F70  38 60 00 64 */	li r3, 0x64
/* 804D4F74  38 80 00 01 */	li r4, 1
/* 804D4F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4F7C  38 A0 00 0C */	li r5, 0xc
/* 804D4F80  38 C0 00 01 */	li r6, 1
/* 804D4F84  38 E0 00 03 */	li r7, 3
/* 804D4F88  39 00 00 0E */	li r8, 0xe
/* 804D4F8C  39 20 00 00 */	li r9, 0
/* 804D4F90  4B FF FD 91 */	bl func_804D4D20
/* 804D4F94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4F98  7C 08 03 A6 */	mtlr r0
/* 804D4F9C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4FA0  4E 80 00 20 */	blr 
