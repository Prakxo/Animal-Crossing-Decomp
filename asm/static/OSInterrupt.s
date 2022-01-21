.include "macros.inc"

.section .text

.org 0x8007AC24

.global OSDisableInterrupts
OSDisableInterrupts:
/* 8007AC24 00077B84  7C 60 00 A6 */	mfmsr r3
/* 8007AC28 00077B88  54 64 04 5E */	rlwinm r4, r3, 0, 0x11, 0xf
/* 8007AC2C 00077B8C  7C 80 01 24 */	mtmsr r4
/* 8007AC30 00077B90  54 63 8F FE */	rlwinm r3, r3, 0x11, 0x1f, 0x1f
lbl_8007AC34:
/* 8007AC34 00077B94  4E 80 00 20 */	blr 

.global OSEnableInterrupts
OSEnableInterrupts:
/* 8007AC38 00077B98  7C 60 00 A6 */	mfmsr r3
/* 8007AC3C 00077B9C  60 64 80 00 */	ori r4, r3, 0x8000
/* 8007AC40 00077BA0  7C 80 01 24 */	mtmsr r4
/* 8007AC44 00077BA4  54 63 8F FE */	rlwinm r3, r3, 0x11, 0x1f, 0x1f
/* 8007AC48 00077BA8  4E 80 00 20 */	blr 

.global OSRestoreInterrupts
OSRestoreInterrupts:
/* 8007AC4C 00077BAC  2C 03 00 00 */	cmpwi r3, 0
/* 8007AC50 00077BB0  7C 80 00 A6 */	mfmsr r4
/* 8007AC54 00077BB4  41 82 00 0C */	beq lbl_8007AC60
/* 8007AC58 00077BB8  60 85 80 00 */	ori r5, r4, 0x8000
/* 8007AC5C 00077BBC  48 00 00 08 */	b lbl_8007AC64
lbl_8007AC60:
/* 8007AC60 00077BC0  54 85 04 5E */	rlwinm r5, r4, 0, 0x11, 0xf
lbl_8007AC64:
/* 8007AC64 00077BC4  7C A0 01 24 */	mtmsr r5
/* 8007AC68 00077BC8  54 83 8F FE */	rlwinm r3, r4, 0x11, 0x1f, 0x1f
/* 8007AC6C 00077BCC  4E 80 00 20 */	blr 

.global __OSSetInterruptHandler
__OSSetInterruptHandler:
/* 8007AC70 00077BD0  7C 60 07 34 */	extsh r0, r3
/* 8007AC74 00077BD4  80 6D 8D 80 */	lwz r3, InterruptHandlerTable-_SDA_BASE_(r13)
/* 8007AC78 00077BD8  54 00 10 3A */	slwi r0, r0, 2
/* 8007AC7C 00077BDC  7C A3 02 14 */	add r5, r3, r0
/* 8007AC80 00077BE0  80 65 00 00 */	lwz r3, 0(r5)
/* 8007AC84 00077BE4  90 85 00 00 */	stw r4, 0(r5)
/* 8007AC88 00077BE8  4E 80 00 20 */	blr 

.global __OSGetInterruptHandler
__OSGetInterruptHandler:
/* 8007AC8C 00077BEC  7C 60 07 34 */	extsh r0, r3
/* 8007AC90 00077BF0  80 6D 8D 80 */	lwz r3, InterruptHandlerTable-_SDA_BASE_(r13)
/* 8007AC94 00077BF4  54 00 10 3A */	slwi r0, r0, 2
/* 8007AC98 00077BF8  7C 63 00 2E */	lwzx r3, r3, r0
/* 8007AC9C 00077BFC  4E 80 00 20 */	blr 

.global __OSInterruptInit
__OSInterruptInit:
/* 8007ACA0 00077C00  7C 08 02 A6 */	mflr r0
/* 8007ACA4 00077C04  90 01 00 04 */	stw r0, 4(r1)
/* 8007ACA8 00077C08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007ACAC 00077C0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007ACB0 00077C10  3F E0 80 00 */	lis r31, 0x80003040@ha
/* 8007ACB4 00077C14  38 1F 30 40 */	addi r0, r31, 0x80003040@l
/* 8007ACB8 00077C18  90 0D 8D 80 */	stw r0, InterruptHandlerTable-_SDA_BASE_(r13)
/* 8007ACBC 00077C1C  38 80 00 00 */	li r4, 0
/* 8007ACC0 00077C20  38 A0 00 80 */	li r5, 0x80
/* 8007ACC4 00077C24  80 6D 8D 80 */	lwz r3, InterruptHandlerTable-_SDA_BASE_(r13)
/* 8007ACC8 00077C28  4B F8 86 E1 */	bl memset
/* 8007ACCC 00077C2C  38 00 00 00 */	li r0, 0
/* 8007ACD0 00077C30  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 8007ACD4 00077C34  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 8007ACD8 00077C38  38 83 30 00 */	addi r4, r3, 0xCC003000@l
/* 8007ACDC 00077C3C  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 8007ACE0 00077C40  38 00 00 F0 */	li r0, 0xf0
/* 8007ACE4 00077C44  38 60 FF E0 */	li r3, -32
/* 8007ACE8 00077C48  90 04 00 04 */	stw r0, 4(r4)
/* 8007ACEC 00077C4C  48 00 03 01 */	bl __OSMaskInterrupts
/* 8007ACF0 00077C50  3C 60 80 08 */	lis r3, ExternalInterruptHandler@ha
/* 8007ACF4 00077C54  38 83 B4 40 */	addi r4, r3, ExternalInterruptHandler@l
/* 8007ACF8 00077C58  38 60 00 04 */	li r3, 4
/* 8007ACFC 00077C5C  4B FF E2 09 */	bl __OSSetExceptionHandler
/* 8007AD00 00077C60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007AD04 00077C64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007AD08 00077C68  38 21 00 10 */	addi r1, r1, 0x10
/* 8007AD0C 00077C6C  7C 08 03 A6 */	mtlr r0
/* 8007AD10 00077C70  4E 80 00 20 */	blr 

.global SetInterruptMask
SetInterruptMask:
/* 8007AD14 00077C74  7C 60 00 34 */	cntlzw r0, r3
/* 8007AD18 00077C78  2C 00 00 0C */	cmpwi r0, 0xc
/* 8007AD1C 00077C7C  40 80 00 24 */	bge lbl_8007AD40
/* 8007AD20 00077C80  2C 00 00 08 */	cmpwi r0, 8
/* 8007AD24 00077C84  41 82 00 FC */	beq lbl_8007AE20
/* 8007AD28 00077C88  40 80 01 28 */	bge lbl_8007AE50
/* 8007AD2C 00077C8C  2C 00 00 05 */	cmpwi r0, 5
/* 8007AD30 00077C90  40 80 00 9C */	bge lbl_8007ADCC
/* 8007AD34 00077C94  2C 00 00 00 */	cmpwi r0, 0
/* 8007AD38 00077C98  40 80 00 28 */	bge lbl_8007AD60
/* 8007AD3C 00077C9C  48 00 02 AC */	b lbl_8007AFE8
lbl_8007AD40:
/* 8007AD40 00077CA0  2C 00 00 11 */	cmpwi r0, 0x11
/* 8007AD44 00077CA4  40 80 00 10 */	bge lbl_8007AD54
/* 8007AD48 00077CA8  2C 00 00 0F */	cmpwi r0, 0xf
/* 8007AD4C 00077CAC  40 80 01 A8 */	bge lbl_8007AEF4
/* 8007AD50 00077CB0  48 00 01 50 */	b lbl_8007AEA0
lbl_8007AD54:
/* 8007AD54 00077CB4  2C 00 00 1B */	cmpwi r0, 0x1b
/* 8007AD58 00077CB8  40 80 02 90 */	bge lbl_8007AFE8
/* 8007AD5C 00077CBC  48 00 01 D8 */	b lbl_8007AF34
lbl_8007AD60:
/* 8007AD60 00077CC0  54 80 00 00 */	rlwinm r0, r4, 0, 0, 0
/* 8007AD64 00077CC4  28 00 00 00 */	cmplwi r0, 0
/* 8007AD68 00077CC8  38 A0 00 00 */	li r5, 0
/* 8007AD6C 00077CCC  40 82 00 08 */	bne lbl_8007AD74
/* 8007AD70 00077CD0  60 A5 00 01 */	ori r5, r5, 1
lbl_8007AD74:
/* 8007AD74 00077CD4  54 80 00 42 */	rlwinm r0, r4, 0, 1, 1
/* 8007AD78 00077CD8  28 00 00 00 */	cmplwi r0, 0
/* 8007AD7C 00077CDC  40 82 00 08 */	bne lbl_8007AD84
/* 8007AD80 00077CE0  60 A5 00 02 */	ori r5, r5, 2
lbl_8007AD84:
/* 8007AD84 00077CE4  54 80 00 84 */	rlwinm r0, r4, 0, 2, 2
/* 8007AD88 00077CE8  28 00 00 00 */	cmplwi r0, 0
/* 8007AD8C 00077CEC  40 82 00 08 */	bne lbl_8007AD94
/* 8007AD90 00077CF0  60 A5 00 04 */	ori r5, r5, 4
lbl_8007AD94:
/* 8007AD94 00077CF4  54 80 00 C6 */	rlwinm r0, r4, 0, 3, 3
/* 8007AD98 00077CF8  28 00 00 00 */	cmplwi r0, 0
/* 8007AD9C 00077CFC  40 82 00 08 */	bne lbl_8007ADA4
/* 8007ADA0 00077D00  60 A5 00 08 */	ori r5, r5, 8
lbl_8007ADA4:
/* 8007ADA4 00077D04  54 80 01 08 */	rlwinm r0, r4, 0, 4, 4
/* 8007ADA8 00077D08  28 00 00 00 */	cmplwi r0, 0
/* 8007ADAC 00077D0C  40 82 00 08 */	bne lbl_8007ADB4
/* 8007ADB0 00077D10  60 A5 00 10 */	ori r5, r5, 0x10
lbl_8007ADB4:
/* 8007ADB4 00077D14  3C 80 CC 00 */	lis r4, 0xCC004000@ha
/* 8007ADB8 00077D18  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 8007ADBC 00077D1C  38 84 40 00 */	addi r4, r4, 0xCC004000@l
/* 8007ADC0 00077D20  B0 04 00 1C */	sth r0, 0x1c(r4)
/* 8007ADC4 00077D24  54 63 01 7E */	clrlwi r3, r3, 5
/* 8007ADC8 00077D28  48 00 02 20 */	b lbl_8007AFE8
lbl_8007ADCC:
/* 8007ADCC 00077D2C  3C A0 CC 00 */	lis r5, 0xCC005000@ha
/* 8007ADD0 00077D30  38 A5 50 00 */	addi r5, r5, 0xCC005000@l
/* 8007ADD4 00077D34  38 A5 00 0A */	addi r5, r5, 0xa
/* 8007ADD8 00077D38  54 80 01 4A */	rlwinm r0, r4, 0, 5, 5
/* 8007ADDC 00077D3C  A0 C5 00 00 */	lhz r6, 0(r5)
/* 8007ADE0 00077D40  28 00 00 00 */	cmplwi r0, 0
/* 8007ADE4 00077D44  54 C6 07 6C */	rlwinm r6, r6, 0, 0x1d, 0x16
/* 8007ADE8 00077D48  40 82 00 08 */	bne lbl_8007ADF0
/* 8007ADEC 00077D4C  60 C6 00 10 */	ori r6, r6, 0x10
lbl_8007ADF0:
/* 8007ADF0 00077D50  54 80 01 8C */	rlwinm r0, r4, 0, 6, 6
/* 8007ADF4 00077D54  28 00 00 00 */	cmplwi r0, 0
/* 8007ADF8 00077D58  40 82 00 08 */	bne lbl_8007AE00
/* 8007ADFC 00077D5C  60 C6 00 40 */	ori r6, r6, 0x40
lbl_8007AE00:
/* 8007AE00 00077D60  54 80 01 CE */	rlwinm r0, r4, 0, 7, 7
/* 8007AE04 00077D64  28 00 00 00 */	cmplwi r0, 0
/* 8007AE08 00077D68  40 82 00 08 */	bne lbl_8007AE10
/* 8007AE0C 00077D6C  60 C6 01 00 */	ori r6, r6, 0x100
lbl_8007AE10:
/* 8007AE10 00077D70  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 8007AE14 00077D74  B0 05 00 00 */	sth r0, 0(r5)
/* 8007AE18 00077D78  54 63 02 08 */	rlwinm r3, r3, 0, 8, 4
/* 8007AE1C 00077D7C  48 00 01 CC */	b lbl_8007AFE8
lbl_8007AE20:
/* 8007AE20 00077D80  54 80 02 10 */	rlwinm r0, r4, 0, 8, 8
/* 8007AE24 00077D84  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 8007AE28 00077D88  28 00 00 00 */	cmplwi r0, 0
/* 8007AE2C 00077D8C  80 A4 6C 00 */	lwz r5, 0xCC006C00@l(r4)
/* 8007AE30 00077D90  38 00 FF D3 */	li r0, -45
/* 8007AE34 00077D94  7C A5 00 38 */	and r5, r5, r0
/* 8007AE38 00077D98  40 82 00 08 */	bne lbl_8007AE40
/* 8007AE3C 00077D9C  60 A5 00 04 */	ori r5, r5, 4
lbl_8007AE40:
/* 8007AE40 00077DA0  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 8007AE44 00077DA4  90 A4 6C 00 */	stw r5, 0xCC006C00@l(r4)
/* 8007AE48 00077DA8  54 63 02 4E */	rlwinm r3, r3, 0, 9, 7
/* 8007AE4C 00077DAC  48 00 01 9C */	b lbl_8007AFE8
lbl_8007AE50:
/* 8007AE50 00077DB0  54 80 02 52 */	rlwinm r0, r4, 0, 9, 9
/* 8007AE54 00077DB4  3C A0 CC 00 */	lis r5, 0xCC006800@ha
/* 8007AE58 00077DB8  28 00 00 00 */	cmplwi r0, 0
/* 8007AE5C 00077DBC  80 A5 68 00 */	lwz r5, 0xCC006800@l(r5)
/* 8007AE60 00077DC0  38 00 D3 F0 */	li r0, -11280
/* 8007AE64 00077DC4  7C A5 00 38 */	and r5, r5, r0
/* 8007AE68 00077DC8  40 82 00 08 */	bne lbl_8007AE70
/* 8007AE6C 00077DCC  60 A5 00 01 */	ori r5, r5, 1
lbl_8007AE70:
/* 8007AE70 00077DD0  54 80 02 94 */	rlwinm r0, r4, 0, 0xa, 0xa
/* 8007AE74 00077DD4  28 00 00 00 */	cmplwi r0, 0
/* 8007AE78 00077DD8  40 82 00 08 */	bne lbl_8007AE80
/* 8007AE7C 00077DDC  60 A5 00 04 */	ori r5, r5, 4
lbl_8007AE80:
/* 8007AE80 00077DE0  54 80 02 D6 */	rlwinm r0, r4, 0, 0xb, 0xb
/* 8007AE84 00077DE4  28 00 00 00 */	cmplwi r0, 0
/* 8007AE88 00077DE8  40 82 00 08 */	bne lbl_8007AE90
/* 8007AE8C 00077DEC  60 A5 04 00 */	ori r5, r5, 0x400
lbl_8007AE90:
/* 8007AE90 00077DF0  3C 80 CC 00 */	lis r4, 0xCC006800@ha
/* 8007AE94 00077DF4  90 A4 68 00 */	stw r5, 0xCC006800@l(r4)
/* 8007AE98 00077DF8  54 63 03 10 */	rlwinm r3, r3, 0, 0xc, 8
/* 8007AE9C 00077DFC  48 00 01 4C */	b lbl_8007AFE8
lbl_8007AEA0:
/* 8007AEA0 00077E00  3C A0 CC 00 */	lis r5, 0xCC006800@ha
/* 8007AEA4 00077E04  38 C5 68 00 */	addi r6, r5, 0xCC006800@l
/* 8007AEA8 00077E08  38 C6 00 14 */	addi r6, r6, 0x14
/* 8007AEAC 00077E0C  54 80 03 18 */	rlwinm r0, r4, 0, 0xc, 0xc
/* 8007AEB0 00077E10  80 E6 00 00 */	lwz r7, 0(r6)
/* 8007AEB4 00077E14  38 A0 F3 F0 */	li r5, -3088
/* 8007AEB8 00077E18  28 00 00 00 */	cmplwi r0, 0
/* 8007AEBC 00077E1C  7C E7 28 38 */	and r7, r7, r5
/* 8007AEC0 00077E20  40 82 00 08 */	bne lbl_8007AEC8
/* 8007AEC4 00077E24  60 E7 00 01 */	ori r7, r7, 1
lbl_8007AEC8:
/* 8007AEC8 00077E28  54 80 03 5A */	rlwinm r0, r4, 0, 0xd, 0xd
/* 8007AECC 00077E2C  28 00 00 00 */	cmplwi r0, 0
/* 8007AED0 00077E30  40 82 00 08 */	bne lbl_8007AED8
/* 8007AED4 00077E34  60 E7 00 04 */	ori r7, r7, 4
lbl_8007AED8:
/* 8007AED8 00077E38  54 80 03 9C */	rlwinm r0, r4, 0, 0xe, 0xe
/* 8007AEDC 00077E3C  28 00 00 00 */	cmplwi r0, 0
/* 8007AEE0 00077E40  40 82 00 08 */	bne lbl_8007AEE8
/* 8007AEE4 00077E44  60 E7 04 00 */	ori r7, r7, 0x400
lbl_8007AEE8:
/* 8007AEE8 00077E48  90 E6 00 00 */	stw r7, 0(r6)
/* 8007AEEC 00077E4C  54 63 03 D6 */	rlwinm r3, r3, 0, 0xf, 0xb
/* 8007AEF0 00077E50  48 00 00 F8 */	b lbl_8007AFE8
lbl_8007AEF4:
/* 8007AEF4 00077E54  3C A0 CC 00 */	lis r5, 0xCC006800@ha
/* 8007AEF8 00077E58  38 A5 68 00 */	addi r5, r5, 0xCC006800@l
/* 8007AEFC 00077E5C  38 A5 00 28 */	addi r5, r5, 0x28
/* 8007AF00 00077E60  54 80 03 DE */	rlwinm r0, r4, 0, 0xf, 0xf
/* 8007AF04 00077E64  80 C5 00 00 */	lwz r6, 0(r5)
/* 8007AF08 00077E68  28 00 00 00 */	cmplwi r0, 0
/* 8007AF0C 00077E6C  54 C6 00 36 */	rlwinm r6, r6, 0, 0, 0x1b
/* 8007AF10 00077E70  40 82 00 08 */	bne lbl_8007AF18
/* 8007AF14 00077E74  60 C6 00 01 */	ori r6, r6, 1
lbl_8007AF18:
/* 8007AF18 00077E78  54 80 04 20 */	rlwinm r0, r4, 0, 0x10, 0x10
/* 8007AF1C 00077E7C  28 00 00 00 */	cmplwi r0, 0
/* 8007AF20 00077E80  40 82 00 08 */	bne lbl_8007AF28
/* 8007AF24 00077E84  60 C6 00 04 */	ori r6, r6, 4
lbl_8007AF28:
/* 8007AF28 00077E88  90 C5 00 00 */	stw r6, 0(r5)
/* 8007AF2C 00077E8C  54 63 04 5C */	rlwinm r3, r3, 0, 0x11, 0xe
/* 8007AF30 00077E90  48 00 00 B8 */	b lbl_8007AFE8
lbl_8007AF34:
/* 8007AF34 00077E94  54 80 04 62 */	rlwinm r0, r4, 0, 0x11, 0x11
/* 8007AF38 00077E98  28 00 00 00 */	cmplwi r0, 0
/* 8007AF3C 00077E9C  38 A0 00 F0 */	li r5, 0xf0
/* 8007AF40 00077EA0  40 82 00 08 */	bne lbl_8007AF48
/* 8007AF44 00077EA4  60 A5 08 00 */	ori r5, r5, 0x800
lbl_8007AF48:
/* 8007AF48 00077EA8  54 80 05 28 */	rlwinm r0, r4, 0, 0x14, 0x14
/* 8007AF4C 00077EAC  28 00 00 00 */	cmplwi r0, 0
/* 8007AF50 00077EB0  40 82 00 08 */	bne lbl_8007AF58
/* 8007AF54 00077EB4  60 A5 00 08 */	ori r5, r5, 8
lbl_8007AF58:
/* 8007AF58 00077EB8  54 80 05 6A */	rlwinm r0, r4, 0, 0x15, 0x15
/* 8007AF5C 00077EBC  28 00 00 00 */	cmplwi r0, 0
/* 8007AF60 00077EC0  40 82 00 08 */	bne lbl_8007AF68
/* 8007AF64 00077EC4  60 A5 00 04 */	ori r5, r5, 4
lbl_8007AF68:
/* 8007AF68 00077EC8  54 80 05 AC */	rlwinm r0, r4, 0, 0x16, 0x16
/* 8007AF6C 00077ECC  28 00 00 00 */	cmplwi r0, 0
/* 8007AF70 00077ED0  40 82 00 08 */	bne lbl_8007AF78
/* 8007AF74 00077ED4  60 A5 00 02 */	ori r5, r5, 2
lbl_8007AF78:
/* 8007AF78 00077ED8  54 80 05 EE */	rlwinm r0, r4, 0, 0x17, 0x17
/* 8007AF7C 00077EDC  28 00 00 00 */	cmplwi r0, 0
/* 8007AF80 00077EE0  40 82 00 08 */	bne lbl_8007AF88
/* 8007AF84 00077EE4  60 A5 00 01 */	ori r5, r5, 1
lbl_8007AF88:
/* 8007AF88 00077EE8  54 80 06 30 */	rlwinm r0, r4, 0, 0x18, 0x18
/* 8007AF8C 00077EEC  28 00 00 00 */	cmplwi r0, 0
/* 8007AF90 00077EF0  40 82 00 08 */	bne lbl_8007AF98
/* 8007AF94 00077EF4  60 A5 01 00 */	ori r5, r5, 0x100
lbl_8007AF98:
/* 8007AF98 00077EF8  54 80 06 72 */	rlwinm r0, r4, 0, 0x19, 0x19
/* 8007AF9C 00077EFC  28 00 00 00 */	cmplwi r0, 0
/* 8007AFA0 00077F00  40 82 00 08 */	bne lbl_8007AFA8
/* 8007AFA4 00077F04  60 A5 10 00 */	ori r5, r5, 0x1000
lbl_8007AFA8:
/* 8007AFA8 00077F08  54 80 04 A4 */	rlwinm r0, r4, 0, 0x12, 0x12
/* 8007AFAC 00077F0C  28 00 00 00 */	cmplwi r0, 0
/* 8007AFB0 00077F10  40 82 00 08 */	bne lbl_8007AFB8
/* 8007AFB4 00077F14  60 A5 02 00 */	ori r5, r5, 0x200
lbl_8007AFB8:
/* 8007AFB8 00077F18  54 80 04 E6 */	rlwinm r0, r4, 0, 0x13, 0x13
/* 8007AFBC 00077F1C  28 00 00 00 */	cmplwi r0, 0
/* 8007AFC0 00077F20  40 82 00 08 */	bne lbl_8007AFC8
/* 8007AFC4 00077F24  60 A5 04 00 */	ori r5, r5, 0x400
lbl_8007AFC8:
/* 8007AFC8 00077F28  54 80 06 B4 */	rlwinm r0, r4, 0, 0x1a, 0x1a
/* 8007AFCC 00077F2C  28 00 00 00 */	cmplwi r0, 0
/* 8007AFD0 00077F30  40 82 00 08 */	bne lbl_8007AFD8
/* 8007AFD4 00077F34  60 A5 20 00 */	ori r5, r5, 0x2000
lbl_8007AFD8:
/* 8007AFD8 00077F38  3C 80 CC 00 */	lis r4, 0xCC003000@ha
/* 8007AFDC 00077F3C  38 84 30 00 */	addi r4, r4, 0xCC003000@l
/* 8007AFE0 00077F40  90 A4 00 04 */	stw r5, 4(r4)
/* 8007AFE4 00077F44  54 63 06 E0 */	rlwinm r3, r3, 0, 0x1b, 0x10
lbl_8007AFE8:
/* 8007AFE8 00077F48  4E 80 00 20 */	blr 

.global __OSMaskInterrupts
__OSMaskInterrupts:
/* 8007AFEC 00077F4C  7C 08 02 A6 */	mflr r0
/* 8007AFF0 00077F50  90 01 00 04 */	stw r0, 4(r1)
/* 8007AFF4 00077F54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007AFF8 00077F58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8007AFFC 00077F5C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8007B000 00077F60  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8007B004 00077F64  7C 7F 1B 78 */	mr r31, r3
/* 8007B008 00077F68  4B FF FC 1D */	bl OSDisableInterrupts
/* 8007B00C 00077F6C  3C 80 80 00 */	lis r4, 0x800000C4@ha
/* 8007B010 00077F70  83 A4 00 C4 */	lwz r29, 0x800000C4@l(r4)
/* 8007B014 00077F74  7C 7E 1B 78 */	mr r30, r3
/* 8007B018 00077F78  80 A4 00 C8 */	lwz r5, 0xc8(r4)
/* 8007B01C 00077F7C  7F A0 2B 78 */	or r0, r29, r5
/* 8007B020 00077F80  7F E3 00 78 */	andc r3, r31, r0
/* 8007B024 00077F84  7F FF EB 78 */	or r31, r31, r29
/* 8007B028 00077F88  93 E4 00 C4 */	stw r31, 0xc4(r4)
/* 8007B02C 00077F8C  7F FF 2B 78 */	or r31, r31, r5
/* 8007B030 00077F90  48 00 00 04 */	b lbl_8007B034
lbl_8007B034:
/* 8007B034 00077F94  48 00 00 04 */	b lbl_8007B038
lbl_8007B038:
/* 8007B038 00077F98  48 00 00 0C */	b lbl_8007B044
lbl_8007B03C:
/* 8007B03C 00077F9C  7F E4 FB 78 */	mr r4, r31
/* 8007B040 00077FA0  4B FF FC D5 */	bl SetInterruptMask
lbl_8007B044:
/* 8007B044 00077FA4  28 03 00 00 */	cmplwi r3, 0
/* 8007B048 00077FA8  40 82 FF F4 */	bne lbl_8007B03C
/* 8007B04C 00077FAC  7F C3 F3 78 */	mr r3, r30
/* 8007B050 00077FB0  4B FF FB FD */	bl OSRestoreInterrupts
/* 8007B054 00077FB4  7F A3 EB 78 */	mr r3, r29
/* 8007B058 00077FB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007B05C 00077FBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007B060 00077FC0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8007B064 00077FC4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8007B068 00077FC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8007B06C 00077FCC  7C 08 03 A6 */	mtlr r0
/* 8007B070 00077FD0  4E 80 00 20 */	blr 

.global __OSUnmaskInterrupts
__OSUnmaskInterrupts:
/* 8007B074 00077FD4  7C 08 02 A6 */	mflr r0
/* 8007B078 00077FD8  90 01 00 04 */	stw r0, 4(r1)
/* 8007B07C 00077FDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007B080 00077FE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8007B084 00077FE4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8007B088 00077FE8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8007B08C 00077FEC  7C 7F 1B 78 */	mr r31, r3
/* 8007B090 00077FF0  4B FF FB 95 */	bl OSDisableInterrupts
/* 8007B094 00077FF4  3C 80 80 00 */	lis r4, 0x800000C4@ha
/* 8007B098 00077FF8  83 A4 00 C4 */	lwz r29, 0x800000C4@l(r4)
/* 8007B09C 00077FFC  7C 7E 1B 78 */	mr r30, r3
/* 8007B0A0 00078000  80 A4 00 C8 */	lwz r5, 0xc8(r4)
/* 8007B0A4 00078004  7F A0 2B 78 */	or r0, r29, r5
/* 8007B0A8 00078008  7F E3 00 38 */	and r3, r31, r0
/* 8007B0AC 0007800C  7F BF F8 78 */	andc r31, r29, r31
/* 8007B0B0 00078010  93 E4 00 C4 */	stw r31, 0xc4(r4)
/* 8007B0B4 00078014  7F FF 2B 78 */	or r31, r31, r5
/* 8007B0B8 00078018  48 00 00 04 */	b lbl_8007B0BC
lbl_8007B0BC:
/* 8007B0BC 0007801C  48 00 00 04 */	b lbl_8007B0C0
lbl_8007B0C0:
/* 8007B0C0 00078020  48 00 00 0C */	b lbl_8007B0CC
lbl_8007B0C4:
/* 8007B0C4 00078024  7F E4 FB 78 */	mr r4, r31
/* 8007B0C8 00078028  4B FF FC 4D */	bl SetInterruptMask
lbl_8007B0CC:
/* 8007B0CC 0007802C  28 03 00 00 */	cmplwi r3, 0
/* 8007B0D0 00078030  40 82 FF F4 */	bne lbl_8007B0C4
/* 8007B0D4 00078034  7F C3 F3 78 */	mr r3, r30
/* 8007B0D8 00078038  4B FF FB 75 */	bl OSRestoreInterrupts
/* 8007B0DC 0007803C  7F A3 EB 78 */	mr r3, r29
/* 8007B0E0 00078040  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007B0E4 00078044  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007B0E8 00078048  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8007B0EC 0007804C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8007B0F0 00078050  38 21 00 20 */	addi r1, r1, 0x20
/* 8007B0F4 00078054  7C 08 03 A6 */	mtlr r0
/* 8007B0F8 00078058  4E 80 00 20 */	blr 

.global __OSDispatchInterrupt
__OSDispatchInterrupt:
/* 8007B0FC 0007805C  7C 08 02 A6 */	mflr r0
/* 8007B100 00078060  90 01 00 04 */	stw r0, 4(r1)
/* 8007B104 00078064  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8007B108 00078068  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8007B10C 0007806C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8007B110 00078070  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8007B114 00078074  7C 9E 23 78 */	mr r30, r4
/* 8007B118 00078078  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 8007B11C 0007807C  83 E3 30 00 */	lwz r31, 0xCC003000@l(r3)
/* 8007B120 00078080  57 FF 04 1C */	rlwinm r31, r31, 0, 0x10, 0xe
/* 8007B124 00078084  28 1F 00 00 */	cmplwi r31, 0
/* 8007B128 00078088  41 82 00 18 */	beq lbl_8007B140
/* 8007B12C 0007808C  38 63 30 00 */	addi r3, r3, 0x3000
/* 8007B130 00078090  80 03 00 04 */	lwz r0, 4(r3)
/* 8007B134 00078094  7F E0 00 38 */	and r0, r31, r0
/* 8007B138 00078098  28 00 00 00 */	cmplwi r0, 0
/* 8007B13C 0007809C  40 82 00 0C */	bne lbl_8007B148
lbl_8007B140:
/* 8007B140 000780A0  7F C3 F3 78 */	mr r3, r30
/* 8007B144 000780A4  4B FF F2 0D */	bl OSLoadContext
lbl_8007B148:
/* 8007B148 000780A8  57 E0 06 30 */	rlwinm r0, r31, 0, 0x18, 0x18
/* 8007B14C 000780AC  28 00 00 00 */	cmplwi r0, 0
/* 8007B150 000780B0  38 00 00 00 */	li r0, 0
/* 8007B154 000780B4  41 82 00 60 */	beq lbl_8007B1B4
/* 8007B158 000780B8  3C 60 CC 00 */	lis r3, 0xCC004000@ha
/* 8007B15C 000780BC  38 63 40 00 */	addi r3, r3, 0xCC004000@l
/* 8007B160 000780C0  A0 83 00 1E */	lhz r4, 0x1e(r3)
/* 8007B164 000780C4  54 83 07 FE */	clrlwi r3, r4, 0x1f
/* 8007B168 000780C8  28 03 00 00 */	cmplwi r3, 0
/* 8007B16C 000780CC  41 82 00 08 */	beq lbl_8007B174
/* 8007B170 000780D0  64 00 80 00 */	oris r0, r0, 0x8000
lbl_8007B174:
/* 8007B174 000780D4  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 8007B178 000780D8  28 03 00 00 */	cmplwi r3, 0
/* 8007B17C 000780DC  41 82 00 08 */	beq lbl_8007B184
/* 8007B180 000780E0  64 00 40 00 */	oris r0, r0, 0x4000
lbl_8007B184:
/* 8007B184 000780E4  54 83 07 7A */	rlwinm r3, r4, 0, 0x1d, 0x1d
/* 8007B188 000780E8  28 03 00 00 */	cmplwi r3, 0
/* 8007B18C 000780EC  41 82 00 08 */	beq lbl_8007B194
/* 8007B190 000780F0  64 00 20 00 */	oris r0, r0, 0x2000
lbl_8007B194:
/* 8007B194 000780F4  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 8007B198 000780F8  28 03 00 00 */	cmplwi r3, 0
/* 8007B19C 000780FC  41 82 00 08 */	beq lbl_8007B1A4
/* 8007B1A0 00078100  64 00 10 00 */	oris r0, r0, 0x1000
lbl_8007B1A4:
/* 8007B1A4 00078104  54 83 06 F6 */	rlwinm r3, r4, 0, 0x1b, 0x1b
/* 8007B1A8 00078108  28 03 00 00 */	cmplwi r3, 0
/* 8007B1AC 0007810C  41 82 00 08 */	beq lbl_8007B1B4
/* 8007B1B0 00078110  64 00 08 00 */	oris r0, r0, 0x800
lbl_8007B1B4:
/* 8007B1B4 00078114  57 E3 06 72 */	rlwinm r3, r31, 0, 0x19, 0x19
/* 8007B1B8 00078118  28 03 00 00 */	cmplwi r3, 0
/* 8007B1BC 0007811C  41 82 00 40 */	beq lbl_8007B1FC
/* 8007B1C0 00078120  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8007B1C4 00078124  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 8007B1C8 00078128  A0 83 00 0A */	lhz r4, 0xa(r3)
/* 8007B1CC 0007812C  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 8007B1D0 00078130  28 03 00 00 */	cmplwi r3, 0
/* 8007B1D4 00078134  41 82 00 08 */	beq lbl_8007B1DC
/* 8007B1D8 00078138  64 00 04 00 */	oris r0, r0, 0x400
lbl_8007B1DC:
/* 8007B1DC 0007813C  54 83 06 B4 */	rlwinm r3, r4, 0, 0x1a, 0x1a
/* 8007B1E0 00078140  28 03 00 00 */	cmplwi r3, 0
/* 8007B1E4 00078144  41 82 00 08 */	beq lbl_8007B1EC
/* 8007B1E8 00078148  64 00 02 00 */	oris r0, r0, 0x200
lbl_8007B1EC:
/* 8007B1EC 0007814C  54 83 06 30 */	rlwinm r3, r4, 0, 0x18, 0x18
/* 8007B1F0 00078150  28 03 00 00 */	cmplwi r3, 0
/* 8007B1F4 00078154  41 82 00 08 */	beq lbl_8007B1FC
/* 8007B1F8 00078158  64 00 01 00 */	oris r0, r0, 0x100
lbl_8007B1FC:
/* 8007B1FC 0007815C  57 E3 06 B4 */	rlwinm r3, r31, 0, 0x1a, 0x1a
/* 8007B200 00078160  28 03 00 00 */	cmplwi r3, 0
/* 8007B204 00078164  41 82 00 1C */	beq lbl_8007B220
/* 8007B208 00078168  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 8007B20C 0007816C  80 63 6C 00 */	lwz r3, 0xCC006C00@l(r3)
/* 8007B210 00078170  54 63 07 38 */	rlwinm r3, r3, 0, 0x1c, 0x1c
/* 8007B214 00078174  28 03 00 00 */	cmplwi r3, 0
/* 8007B218 00078178  41 82 00 08 */	beq lbl_8007B220
/* 8007B21C 0007817C  64 00 00 80 */	oris r0, r0, 0x80
lbl_8007B220:
/* 8007B220 00078180  57 E3 06 F6 */	rlwinm r3, r31, 0, 0x1b, 0x1b
/* 8007B224 00078184  28 03 00 00 */	cmplwi r3, 0
/* 8007B228 00078188  41 82 00 A4 */	beq lbl_8007B2CC
/* 8007B22C 0007818C  3C 60 CC 00 */	lis r3, 0xCC006800@ha
/* 8007B230 00078190  80 83 68 00 */	lwz r4, 0xCC006800@l(r3)
/* 8007B234 00078194  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 8007B238 00078198  28 03 00 00 */	cmplwi r3, 0
/* 8007B23C 0007819C  41 82 00 08 */	beq lbl_8007B244
/* 8007B240 000781A0  64 00 00 40 */	oris r0, r0, 0x40
lbl_8007B244:
/* 8007B244 000781A4  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 8007B248 000781A8  28 03 00 00 */	cmplwi r3, 0
/* 8007B24C 000781AC  41 82 00 08 */	beq lbl_8007B254
/* 8007B250 000781B0  64 00 00 20 */	oris r0, r0, 0x20
lbl_8007B254:
/* 8007B254 000781B4  54 83 05 28 */	rlwinm r3, r4, 0, 0x14, 0x14
/* 8007B258 000781B8  28 03 00 00 */	cmplwi r3, 0
/* 8007B25C 000781BC  41 82 00 08 */	beq lbl_8007B264
/* 8007B260 000781C0  64 00 00 10 */	oris r0, r0, 0x10
lbl_8007B264:
/* 8007B264 000781C4  3C 60 CC 00 */	lis r3, 0xCC006800@ha
/* 8007B268 000781C8  38 63 68 00 */	addi r3, r3, 0xCC006800@l
/* 8007B26C 000781CC  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8007B270 000781D0  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 8007B274 000781D4  28 03 00 00 */	cmplwi r3, 0
/* 8007B278 000781D8  41 82 00 08 */	beq lbl_8007B280
/* 8007B27C 000781DC  64 00 00 08 */	oris r0, r0, 8
lbl_8007B280:
/* 8007B280 000781E0  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 8007B284 000781E4  28 03 00 00 */	cmplwi r3, 0
/* 8007B288 000781E8  41 82 00 08 */	beq lbl_8007B290
/* 8007B28C 000781EC  64 00 00 04 */	oris r0, r0, 4
lbl_8007B290:
/* 8007B290 000781F0  54 83 05 28 */	rlwinm r3, r4, 0, 0x14, 0x14
/* 8007B294 000781F4  28 03 00 00 */	cmplwi r3, 0
/* 8007B298 000781F8  41 82 00 08 */	beq lbl_8007B2A0
/* 8007B29C 000781FC  64 00 00 02 */	oris r0, r0, 2
lbl_8007B2A0:
/* 8007B2A0 00078200  3C 60 CC 00 */	lis r3, 0xCC006800@ha
/* 8007B2A4 00078204  38 63 68 00 */	addi r3, r3, 0xCC006800@l
/* 8007B2A8 00078208  80 83 00 28 */	lwz r4, 0x28(r3)
/* 8007B2AC 0007820C  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 8007B2B0 00078210  28 03 00 00 */	cmplwi r3, 0
/* 8007B2B4 00078214  41 82 00 08 */	beq lbl_8007B2BC
/* 8007B2B8 00078218  64 00 00 01 */	oris r0, r0, 1
lbl_8007B2BC:
/* 8007B2BC 0007821C  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 8007B2C0 00078220  28 03 00 00 */	cmplwi r3, 0
/* 8007B2C4 00078224  41 82 00 08 */	beq lbl_8007B2CC
/* 8007B2C8 00078228  60 00 80 00 */	ori r0, r0, 0x8000
lbl_8007B2CC:
/* 8007B2CC 0007822C  57 E3 04 A4 */	rlwinm r3, r31, 0, 0x12, 0x12
/* 8007B2D0 00078230  28 03 00 00 */	cmplwi r3, 0
/* 8007B2D4 00078234  41 82 00 08 */	beq lbl_8007B2DC
/* 8007B2D8 00078238  60 00 00 20 */	ori r0, r0, 0x20
lbl_8007B2DC:
/* 8007B2DC 0007823C  57 E3 04 E6 */	rlwinm r3, r31, 0, 0x13, 0x13
/* 8007B2E0 00078240  28 03 00 00 */	cmplwi r3, 0
/* 8007B2E4 00078244  41 82 00 08 */	beq lbl_8007B2EC
/* 8007B2E8 00078248  60 00 00 40 */	ori r0, r0, 0x40
lbl_8007B2EC:
/* 8007B2EC 0007824C  57 E3 05 6A */	rlwinm r3, r31, 0, 0x15, 0x15
/* 8007B2F0 00078250  28 03 00 00 */	cmplwi r3, 0
/* 8007B2F4 00078254  41 82 00 08 */	beq lbl_8007B2FC
/* 8007B2F8 00078258  60 00 10 00 */	ori r0, r0, 0x1000
lbl_8007B2FC:
/* 8007B2FC 0007825C  57 E3 05 AC */	rlwinm r3, r31, 0, 0x16, 0x16
/* 8007B300 00078260  28 03 00 00 */	cmplwi r3, 0
/* 8007B304 00078264  41 82 00 08 */	beq lbl_8007B30C
/* 8007B308 00078268  60 00 20 00 */	ori r0, r0, 0x2000
lbl_8007B30C:
/* 8007B30C 0007826C  57 E3 05 EE */	rlwinm r3, r31, 0, 0x17, 0x17
/* 8007B310 00078270  28 03 00 00 */	cmplwi r3, 0
/* 8007B314 00078274  41 82 00 08 */	beq lbl_8007B31C
/* 8007B318 00078278  60 00 00 80 */	ori r0, r0, 0x80
lbl_8007B31C:
/* 8007B31C 0007827C  57 E3 07 38 */	rlwinm r3, r31, 0, 0x1c, 0x1c
/* 8007B320 00078280  28 03 00 00 */	cmplwi r3, 0
/* 8007B324 00078284  41 82 00 08 */	beq lbl_8007B32C
/* 8007B328 00078288  60 00 08 00 */	ori r0, r0, 0x800
lbl_8007B32C:
/* 8007B32C 0007828C  57 E3 07 7A */	rlwinm r3, r31, 0, 0x1d, 0x1d
/* 8007B330 00078290  28 03 00 00 */	cmplwi r3, 0
/* 8007B334 00078294  41 82 00 08 */	beq lbl_8007B33C
/* 8007B338 00078298  60 00 04 00 */	ori r0, r0, 0x400
lbl_8007B33C:
/* 8007B33C 0007829C  57 E3 07 BC */	rlwinm r3, r31, 0, 0x1e, 0x1e
/* 8007B340 000782A0  28 03 00 00 */	cmplwi r3, 0
/* 8007B344 000782A4  41 82 00 08 */	beq lbl_8007B34C
/* 8007B348 000782A8  60 00 02 00 */	ori r0, r0, 0x200
lbl_8007B34C:
/* 8007B34C 000782AC  57 E3 05 28 */	rlwinm r3, r31, 0, 0x14, 0x14
/* 8007B350 000782B0  28 03 00 00 */	cmplwi r3, 0
/* 8007B354 000782B4  41 82 00 08 */	beq lbl_8007B35C
/* 8007B358 000782B8  60 00 40 00 */	ori r0, r0, 0x4000
lbl_8007B35C:
/* 8007B35C 000782BC  57 E3 07 FE */	clrlwi r3, r31, 0x1f
/* 8007B360 000782C0  28 03 00 00 */	cmplwi r3, 0
/* 8007B364 000782C4  41 82 00 08 */	beq lbl_8007B36C
/* 8007B368 000782C8  60 00 01 00 */	ori r0, r0, 0x100
lbl_8007B36C:
/* 8007B36C 000782CC  3C 60 80 00 */	lis r3, 0x800000C4@ha
/* 8007B370 000782D0  80 83 00 C4 */	lwz r4, 0x800000C4@l(r3)
/* 8007B374 000782D4  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 8007B378 000782D8  7C 83 1B 78 */	or r3, r4, r3
/* 8007B37C 000782DC  7C 04 18 78 */	andc r4, r0, r3
/* 8007B380 000782E0  28 04 00 00 */	cmplwi r4, 0
/* 8007B384 000782E4  41 82 00 98 */	beq lbl_8007B41C
/* 8007B388 000782E8  3C 60 80 0E */	lis r3, InterruptPrioTable@ha
/* 8007B38C 000782EC  38 03 01 28 */	addi r0, r3, InterruptPrioTable@l
/* 8007B390 000782F0  7C 03 03 78 */	mr r3, r0
/* 8007B394 000782F4  48 00 00 04 */	b lbl_8007B398
lbl_8007B398:
/* 8007B398 000782F8  48 00 00 04 */	b lbl_8007B39C
lbl_8007B39C:
/* 8007B39C 000782FC  80 03 00 00 */	lwz r0, 0(r3)
/* 8007B3A0 00078300  7C 80 00 38 */	and r0, r4, r0
/* 8007B3A4 00078304  28 00 00 00 */	cmplwi r0, 0
/* 8007B3A8 00078308  41 82 00 10 */	beq lbl_8007B3B8
/* 8007B3AC 0007830C  7C 00 00 34 */	cntlzw r0, r0
/* 8007B3B0 00078310  7C 1D 07 34 */	extsh r29, r0
/* 8007B3B4 00078314  48 00 00 0C */	b lbl_8007B3C0
lbl_8007B3B8:
/* 8007B3B8 00078318  38 63 00 04 */	addi r3, r3, 4
/* 8007B3BC 0007831C  4B FF FF E0 */	b lbl_8007B39C
lbl_8007B3C0:
/* 8007B3C0 00078320  80 6D 8D 80 */	lwz r3, InterruptHandlerTable-_SDA_BASE_(r13)
/* 8007B3C4 00078324  57 A0 10 3A */	slwi r0, r29, 2
/* 8007B3C8 00078328  7F E3 00 2E */	lwzx r31, r3, r0
/* 8007B3CC 0007832C  28 1F 00 00 */	cmplwi r31, 0
/* 8007B3D0 00078330  41 82 00 4C */	beq lbl_8007B41C
/* 8007B3D4 00078334  2C 1D 00 04 */	cmpwi r29, 4
/* 8007B3D8 00078338  40 81 00 1C */	ble lbl_8007B3F4
/* 8007B3DC 0007833C  B3 AD 8D 88 */	sth r29, __OSLastInterrupt-_SDA_BASE_(r13)
/* 8007B3E0 00078340  48 00 43 19 */	bl OSGetTime
/* 8007B3E4 00078344  90 8D 8D 94 */	stw r4, lbl_80218914-_SDA_BASE_(r13)
/* 8007B3E8 00078348  90 6D 8D 90 */	stw r3, __OSLastInterruptTime-_SDA_BASE_(r13)
/* 8007B3EC 0007834C  80 1E 01 98 */	lwz r0, 0x198(r30)
/* 8007B3F0 00078350  90 0D 8D 84 */	stw r0, __OSLastInterruptSrr0-_SDA_BASE_(r13)
lbl_8007B3F4:
/* 8007B3F4 00078354  48 00 29 29 */	bl OSDisableScheduler
/* 8007B3F8 00078358  7F A3 EB 78 */	mr r3, r29
/* 8007B3FC 0007835C  7F C4 F3 78 */	mr r4, r30
/* 8007B400 00078360  7F EC FB 78 */	mr r12, r31
/* 8007B404 00078364  7D 88 03 A6 */	mtlr r12
/* 8007B408 00078368  4E 80 00 21 */	blrl 
/* 8007B40C 0007836C  48 00 29 51 */	bl OSEnableScheduler
/* 8007B410 00078370  48 00 2E 41 */	bl __OSReschedule
/* 8007B414 00078374  7F C3 F3 78 */	mr r3, r30
/* 8007B418 00078378  4B FF EF 39 */	bl OSLoadContext
lbl_8007B41C:
/* 8007B41C 0007837C  7F C3 F3 78 */	mr r3, r30
/* 8007B420 00078380  4B FF EF 31 */	bl OSLoadContext
/* 8007B424 00078384  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8007B428 00078388  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8007B42C 0007838C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8007B430 00078390  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8007B434 00078394  38 21 00 28 */	addi r1, r1, 0x28
/* 8007B438 00078398  7C 08 03 A6 */	mtlr r0
/* 8007B43C 0007839C  4E 80 00 20 */	blr 

.global ExternalInterruptHandler
ExternalInterruptHandler:
/* 8007B440 000783A0  90 04 00 00 */	stw r0, 0(r4)
/* 8007B444 000783A4  90 24 00 04 */	stw r1, 4(r4)
/* 8007B448 000783A8  90 44 00 08 */	stw r2, 8(r4)
/* 8007B44C 000783AC  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 8007B450 000783B0  7C 11 E2 A6 */	mfspr r0, 0x391
/* 8007B454 000783B4  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 8007B458 000783B8  7C 12 E2 A6 */	mfspr r0, 0x392
/* 8007B45C 000783BC  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 8007B460 000783C0  7C 13 E2 A6 */	mfspr r0, 0x393
/* 8007B464 000783C4  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 8007B468 000783C8  7C 14 E2 A6 */	mfspr r0, 0x394
/* 8007B46C 000783CC  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 8007B470 000783D0  7C 15 E2 A6 */	mfspr r0, 0x395
/* 8007B474 000783D4  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 8007B478 000783D8  7C 16 E2 A6 */	mfspr r0, 0x396
/* 8007B47C 000783DC  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 8007B480 000783E0  7C 17 E2 A6 */	mfspr r0, 0x397
/* 8007B484 000783E4  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 8007B488 000783E8  94 21 FF F8 */	stwu r1, -8(r1)
/* 8007B48C 000783EC  4B FF FC 70 */	b __OSDispatchInterrupt
