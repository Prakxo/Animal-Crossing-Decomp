.include "macros.inc"

.section .text

.org 0x8005AED4

.global _dbg_hungup
_dbg_hungup:
/* 8005AED4 00057E34  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8005AED8 00057E38  7C 08 02 A6 */	mflr r0
/* 8005AEDC 00057E3C  90 01 01 14 */	stw r0, 0x114(r1)
/* 8005AEE0 00057E40  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 8005AEE4 00057E44  7C 9F 23 78 */	mr r31, r4
/* 8005AEE8 00057E48  93 C1 01 08 */	stw r30, 0x108(r1)
/* 8005AEEC 00057E4C  7C 7E 1B 78 */	mr r30, r3
/* 8005AEF0 00057E50  38 60 00 00 */	li r3, 0
/* 8005AEF4 00057E54  48 00 51 41 */	bl osGetThreadId
/* 8005AEF8 00057E58  3C 80 80 0E */	lis r4, @373@ha
/* 8005AEFC 00057E5C  7C 65 1B 78 */	mr r5, r3
/* 8005AF00 00057E60  38 84 C7 C8 */	addi r4, r4, @373@l
/* 8005AF04 00057E64  7F C6 F3 78 */	mr r6, r30
/* 8005AF08 00057E68  7F E7 FB 78 */	mr r7, r31
/* 8005AF0C 00057E6C  38 61 00 08 */	addi r3, r1, 8
/* 8005AF10 00057E70  4C C6 31 82 */	crclr 6
/* 8005AF14 00057E74  48 00 1F 35 */	bl sprintf
/* 8005AF18 00057E78  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8005AF1C 00057E7C  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 8005AF20 00057E80  83 C1 01 08 */	lwz r30, 0x108(r1)
/* 8005AF24 00057E84  7C 08 03 A6 */	mtlr r0
/* 8005AF28 00057E88  38 21 01 10 */	addi r1, r1, 0x110
/* 8005AF2C 00057E8C  4E 80 00 20 */	blr 
