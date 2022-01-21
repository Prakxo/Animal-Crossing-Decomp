.include "macros.inc"

.section .text

.org 0x8005CD64

.global csleep
csleep:
/* 8005CD64 00059CC4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8005CD68 00059CC8  7C 08 02 A6 */	mflr r0
/* 8005CD6C 00059CCC  38 A0 00 01 */	li r5, 1
/* 8005CD70 00059CD0  90 01 00 84 */	stw r0, 0x84(r1)
/* 8005CD74 00059CD4  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8005CD78 00059CD8  7C 7F 1B 78 */	mr r31, r3
/* 8005CD7C 00059CDC  38 61 00 0C */	addi r3, r1, 0xc
/* 8005CD80 00059CE0  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8005CD84 00059CE4  7C 9E 23 78 */	mr r30, r4
/* 8005CD88 00059CE8  38 81 00 08 */	addi r4, r1, 8
/* 8005CD8C 00059CEC  48 00 31 E9 */	bl osCreateMesgQueue
/* 8005CD90 00059CF0  7F C6 F3 78 */	mr r6, r30
/* 8005CD94 00059CF4  7F E5 FB 78 */	mr r5, r31
/* 8005CD98 00059CF8  38 61 00 30 */	addi r3, r1, 0x30
/* 8005CD9C 00059CFC  39 21 00 0C */	addi r9, r1, 0xc
/* 8005CDA0 00059D00  39 00 00 00 */	li r8, 0
/* 8005CDA4 00059D04  38 E0 00 00 */	li r7, 0
/* 8005CDA8 00059D08  39 40 00 00 */	li r10, 0
/* 8005CDAC 00059D0C  48 00 34 AD */	bl osSetTimer
/* 8005CDB0 00059D10  38 61 00 0C */	addi r3, r1, 0xc
/* 8005CDB4 00059D14  38 80 00 00 */	li r4, 0
/* 8005CDB8 00059D18  38 A0 00 01 */	li r5, 1
/* 8005CDBC 00059D1C  48 00 33 61 */	bl osRecvMesg
/* 8005CDC0 00059D20  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8005CDC4 00059D24  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8005CDC8 00059D28  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8005CDCC 00059D2C  7C 08 03 A6 */	mtlr r0
/* 8005CDD0 00059D30  38 21 00 80 */	addi r1, r1, 0x80
/* 8005CDD4 00059D34  4E 80 00 20 */	blr 

.global msleep
msleep:
/* 8005CDD8 00059D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005CDDC 00059D3C  7C 08 02 A6 */	mflr r0
/* 8005CDE0 00059D40  3C 80 80 00 */	lis r4, 0x800000F8@ha
/* 8005CDE4 00059D44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005CDE8 00059D48  38 00 03 E8 */	li r0, 0x3e8
/* 8005CDEC 00059D4C  80 84 00 F8 */	lwz r4, 0x800000F8@l(r4)
/* 8005CDF0 00059D50  54 84 F0 BE */	srwi r4, r4, 2
/* 8005CDF4 00059D54  7C 84 03 96 */	divwu r4, r4, r0
/* 8005CDF8 00059D58  7C 03 20 16 */	mulhwu r0, r3, r4
/* 8005CDFC 00059D5C  7C 83 21 D6 */	mullw r4, r3, r4
/* 8005CE00 00059D60  7C 03 03 78 */	mr r3, r0
/* 8005CE04 00059D64  4B FF FF 61 */	bl csleep
/* 8005CE08 00059D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005CE0C 00059D6C  7C 08 03 A6 */	mtlr r0
/* 8005CE10 00059D70  38 21 00 10 */	addi r1, r1, 0x10
/* 8005CE14 00059D74  4E 80 00 20 */	blr 
