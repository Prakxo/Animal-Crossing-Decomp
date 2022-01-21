.include "macros.inc"

.section .text

.org 0x800998D8

.global GXBeginDisplayList
GXBeginDisplayList:
/* 800998D8 00096838  7C 08 02 A6 */	mflr r0
/* 800998DC 0009683C  3C A0 80 21 */	lis r5, DisplayListFifo@ha
/* 800998E0 00096840  90 01 00 04 */	stw r0, 4(r1)
/* 800998E4 00096844  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800998E8 00096848  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800998EC 0009684C  3B E5 8C 98 */	addi r31, r5, DisplayListFifo@l
/* 800998F0 00096850  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800998F4 00096854  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800998F8 00096858  3B A4 00 00 */	addi r29, r4, 0
/* 800998FC 0009685C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80099900 00096860  3B 83 00 00 */	addi r28, r3, 0
/* 80099904 00096864  4B FF AF FD */	bl GXGetCPUFifo
/* 80099908 00096868  80 8D 86 78 */	lwz r4, gx-_SDA_BASE_(r13)
/* 8009990C 0009686C  7C 7E 1B 78 */	mr r30, r3
/* 80099910 00096870  80 04 04 F4 */	lwz r0, 0x4f4(r4)
/* 80099914 00096874  28 00 00 00 */	cmplwi r0, 0
/* 80099918 00096878  41 82 00 08 */	beq lbl_80099920
/* 8009991C 0009687C  4B FF C4 09 */	bl __GXSetDirtyState
lbl_80099920:
/* 80099920 00096880  80 8D 86 78 */	lwz r4, gx-_SDA_BASE_(r13)
/* 80099924 00096884  88 04 04 F1 */	lbz r0, 0x4f1(r4)
/* 80099928 00096888  28 00 00 00 */	cmplwi r0, 0
/* 8009992C 0009688C  41 82 00 10 */	beq lbl_8009993C
/* 80099930 00096890  38 7F 00 24 */	addi r3, r31, 0x24
/* 80099934 00096894  38 A0 04 F8 */	li r5, 0x4f8
/* 80099938 00096898  4B F6 9B 59 */	bl memcpy
lbl_8009993C:
/* 8009993C 0009689C  38 1D FF FC */	addi r0, r29, -4
/* 80099940 000968A0  93 9F 00 00 */	stw r28, 0(r31)
/* 80099944 000968A4  7C 1C 02 14 */	add r0, r28, r0
/* 80099948 000968A8  90 1F 00 04 */	stw r0, 4(r31)
/* 8009994C 000968AC  38 80 00 00 */	li r4, 0
/* 80099950 000968B0  38 00 00 01 */	li r0, 1
/* 80099954 000968B4  93 BF 00 08 */	stw r29, 8(r31)
/* 80099958 000968B8  7F C3 F3 78 */	mr r3, r30
/* 8009995C 000968BC  90 9F 00 1C */	stw r4, 0x1c(r31)
/* 80099960 000968C0  93 9F 00 14 */	stw r28, 0x14(r31)
/* 80099964 000968C4  93 9F 00 18 */	stw r28, 0x18(r31)
/* 80099968 000968C8  80 8D 86 78 */	lwz r4, gx-_SDA_BASE_(r13)
/* 8009996C 000968CC  98 04 04 F0 */	stb r0, 0x4f0(r4)
/* 80099970 000968D0  4B FF AB 6D */	bl GXSaveCPUFifo
/* 80099974 000968D4  93 CD 90 18 */	stw r30, OldCPUFifo-_SDA_BASE_(r13)
/* 80099978 000968D8  7F E3 FB 78 */	mr r3, r31
/* 8009997C 000968DC  4B FF A8 D9 */	bl GXSetCPUFifo
/* 80099980 000968E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80099984 000968E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80099988 000968E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8009998C 000968EC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80099990 000968F0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80099994 000968F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80099998 000968F8  7C 08 03 A6 */	mtlr r0
/* 8009999C 000968FC  4E 80 00 20 */	blr 

.global GXEndDisplayList
GXEndDisplayList:
/* 800999A0 00096900  7C 08 02 A6 */	mflr r0
/* 800999A4 00096904  3C 80 80 21 */	lis r4, DisplayListFifo@ha
/* 800999A8 00096908  90 01 00 04 */	stw r0, 4(r1)
/* 800999AC 0009690C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800999B0 00096910  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800999B4 00096914  3B E4 8C 98 */	addi r31, r4, DisplayListFifo@l
/* 800999B8 00096918  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800999BC 0009691C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 800999C0 00096920  93 81 00 08 */	stw r28, 8(r1)
/* 800999C4 00096924  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 800999C8 00096928  80 03 04 F4 */	lwz r0, 0x4f4(r3)
/* 800999CC 0009692C  28 00 00 00 */	cmplwi r0, 0
/* 800999D0 00096930  41 82 00 08 */	beq lbl_800999D8
/* 800999D4 00096934  4B FF C3 51 */	bl __GXSetDirtyState
lbl_800999D8:
/* 800999D8 00096938  80 8D 8F D0 */	lwz r4, __piReg-_SDA_BASE_(r13)
/* 800999DC 0009693C  7F E3 FB 78 */	mr r3, r31
/* 800999E0 00096940  80 04 00 14 */	lwz r0, 0x14(r4)
/* 800999E4 00096944  54 1E 37 FE */	rlwinm r30, r0, 6, 0x1f, 0x1f
/* 800999E8 00096948  4B FF AB 15 */	bl __GXSaveCPUFifoAux
/* 800999EC 0009694C  80 6D 90 18 */	lwz r3, OldCPUFifo-_SDA_BASE_(r13)
/* 800999F0 00096950  4B FF A8 65 */	bl GXSetCPUFifo
/* 800999F4 00096954  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 800999F8 00096958  88 03 04 F1 */	lbz r0, 0x4f1(r3)
/* 800999FC 0009695C  28 00 00 00 */	cmplwi r0, 0
/* 80099A00 00096960  41 82 00 34 */	beq lbl_80099A34
/* 80099A04 00096964  4B FE 12 21 */	bl OSDisableInterrupts
/* 80099A08 00096968  80 8D 86 78 */	lwz r4, gx-_SDA_BASE_(r13)
/* 80099A0C 0009696C  7C 7D 1B 78 */	mr r29, r3
/* 80099A10 00096970  38 A0 04 F8 */	li r5, 0x4f8
/* 80099A14 00096974  83 84 00 08 */	lwz r28, 8(r4)
/* 80099A18 00096978  38 64 00 00 */	addi r3, r4, 0
/* 80099A1C 0009697C  38 9F 00 24 */	addi r4, r31, 0x24
/* 80099A20 00096980  4B F6 9A 71 */	bl memcpy
/* 80099A24 00096984  80 8D 86 78 */	lwz r4, gx-_SDA_BASE_(r13)
/* 80099A28 00096988  7F A3 EB 78 */	mr r3, r29
/* 80099A2C 0009698C  93 84 00 08 */	stw r28, 8(r4)
/* 80099A30 00096990  4B FE 12 1D */	bl OSRestoreInterrupts
lbl_80099A34:
/* 80099A34 00096994  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80099A38 00096998  38 00 00 00 */	li r0, 0
/* 80099A3C 0009699C  28 1E 00 00 */	cmplwi r30, 0
/* 80099A40 000969A0  98 03 04 F0 */	stb r0, 0x4f0(r3)
/* 80099A44 000969A4  40 82 00 0C */	bne lbl_80099A50
/* 80099A48 000969A8  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80099A4C 000969AC  48 00 00 08 */	b lbl_80099A54
lbl_80099A50:
/* 80099A50 000969B0  38 60 00 00 */	li r3, 0
lbl_80099A54:
/* 80099A54 000969B4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80099A58 000969B8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80099A5C 000969BC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80099A60 000969C0  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80099A64 000969C4  83 81 00 08 */	lwz r28, 8(r1)
/* 80099A68 000969C8  38 21 00 18 */	addi r1, r1, 0x18
/* 80099A6C 000969CC  7C 08 03 A6 */	mtlr r0
/* 80099A70 000969D0  4E 80 00 20 */	blr 

.global GXCallDisplayList
GXCallDisplayList:
/* 80099A74 000969D4  7C 08 02 A6 */	mflr r0
/* 80099A78 000969D8  90 01 00 04 */	stw r0, 4(r1)
/* 80099A7C 000969DC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80099A80 000969E0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80099A84 000969E4  3B E4 00 00 */	addi r31, r4, 0
/* 80099A88 000969E8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80099A8C 000969EC  3B C3 00 00 */	addi r30, r3, 0
/* 80099A90 000969F0  80 AD 86 78 */	lwz r5, gx-_SDA_BASE_(r13)
/* 80099A94 000969F4  80 05 04 F4 */	lwz r0, 0x4f4(r5)
/* 80099A98 000969F8  28 00 00 00 */	cmplwi r0, 0
/* 80099A9C 000969FC  41 82 00 08 */	beq lbl_80099AA4
/* 80099AA0 00096A00  4B FF C2 85 */	bl __GXSetDirtyState
lbl_80099AA4:
/* 80099AA4 00096A04  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80099AA8 00096A08  80 03 00 00 */	lwz r0, 0(r3)
/* 80099AAC 00096A0C  28 00 00 00 */	cmplwi r0, 0
/* 80099AB0 00096A10  40 82 00 08 */	bne lbl_80099AB8
/* 80099AB4 00096A14  4B FF C4 01 */	bl __GXSendFlushPrim
lbl_80099AB8:
/* 80099AB8 00096A18  38 00 00 40 */	li r0, 0x40
/* 80099ABC 00096A1C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80099AC0 00096A20  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80099AC4 00096A24  93 C3 80 00 */	stw r30, -0x8000(r3)
/* 80099AC8 00096A28  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 80099ACC 00096A2C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80099AD0 00096A30  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80099AD4 00096A34  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80099AD8 00096A38  38 21 00 18 */	addi r1, r1, 0x18
/* 80099ADC 00096A3C  7C 08 03 A6 */	mtlr r0
/* 80099AE0 00096A40  4E 80 00 20 */	blr 
