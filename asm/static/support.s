.include "macros.inc"

.section .text

.org 0x800A5DF0

.global HandlePositionFileSupportRequest
HandlePositionFileSupportRequest:
/* 800A5DF0 000A2D50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A5DF4 000A2D54  7C 08 02 A6 */	mflr r0
/* 800A5DF8 000A2D58  90 01 00 34 */	stw r0, 0x34(r1)
/* 800A5DFC 000A2D5C  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 800A5E00 000A2D60  7C 7A 1B 78 */	mr r26, r3
/* 800A5E04 000A2D64  7C 9C 23 78 */	mr r28, r4
/* 800A5E08 000A2D68  7C BD 2B 78 */	mr r29, r5
/* 800A5E0C 000A2D6C  7C DE 33 78 */	mr r30, r6
/* 800A5E10 000A2D70  38 61 00 0C */	addi r3, r1, 0xc
/* 800A5E14 000A2D74  38 81 00 08 */	addi r4, r1, 8
/* 800A5E18 000A2D78  4B FF D1 49 */	bl TRKGetFreeBuffer
/* 800A5E1C 000A2D7C  7C 7B 1B 79 */	or. r27, r3, r3
/* 800A5E20 000A2D80  40 82 00 44 */	bne lbl_800A5E64
/* 800A5E24 000A2D84  80 A1 00 08 */	lwz r5, 8(r1)
/* 800A5E28 000A2D88  80 65 00 0C */	lwz r3, 0xc(r5)
/* 800A5E2C 000A2D8C  28 03 08 80 */	cmplwi r3, 0x880
/* 800A5E30 000A2D90  41 80 00 0C */	blt lbl_800A5E3C
/* 800A5E34 000A2D94  38 80 03 01 */	li r4, 0x301
/* 800A5E38 000A2D98  48 00 00 28 */	b lbl_800A5E60
lbl_800A5E3C:
/* 800A5E3C 000A2D9C  38 03 00 01 */	addi r0, r3, 1
/* 800A5E40 000A2DA0  7C 65 1A 14 */	add r3, r5, r3
/* 800A5E44 000A2DA4  90 05 00 0C */	stw r0, 0xc(r5)
/* 800A5E48 000A2DA8  38 00 00 D4 */	li r0, 0xd4
/* 800A5E4C 000A2DAC  38 80 00 00 */	li r4, 0
/* 800A5E50 000A2DB0  98 03 00 10 */	stb r0, 0x10(r3)
/* 800A5E54 000A2DB4  80 65 00 08 */	lwz r3, 8(r5)
/* 800A5E58 000A2DB8  38 03 00 01 */	addi r0, r3, 1
/* 800A5E5C 000A2DBC  90 05 00 08 */	stw r0, 8(r5)
lbl_800A5E60:
/* 800A5E60 000A2DC0  7C 9B 23 78 */	mr r27, r4
lbl_800A5E64:
/* 800A5E64 000A2DC4  2C 1B 00 00 */	cmpwi r27, 0
/* 800A5E68 000A2DC8  40 82 00 14 */	bne lbl_800A5E7C
/* 800A5E6C 000A2DCC  80 61 00 08 */	lwz r3, 8(r1)
/* 800A5E70 000A2DD0  7F 44 D3 78 */	mr r4, r26
/* 800A5E74 000A2DD4  4B FF CE 05 */	bl TRKAppendBuffer1_ui32
/* 800A5E78 000A2DD8  7C 7B 1B 78 */	mr r27, r3
lbl_800A5E7C:
/* 800A5E7C 000A2DDC  2C 1B 00 00 */	cmpwi r27, 0
/* 800A5E80 000A2DE0  40 82 00 14 */	bne lbl_800A5E94
/* 800A5E84 000A2DE4  80 61 00 08 */	lwz r3, 8(r1)
/* 800A5E88 000A2DE8  80 9C 00 00 */	lwz r4, 0(r28)
/* 800A5E8C 000A2DEC  4B FF CD ED */	bl TRKAppendBuffer1_ui32
/* 800A5E90 000A2DF0  7C 7B 1B 78 */	mr r27, r3
lbl_800A5E94:
/* 800A5E94 000A2DF4  2C 1B 00 00 */	cmpwi r27, 0
/* 800A5E98 000A2DF8  40 82 00 40 */	bne lbl_800A5ED8
/* 800A5E9C 000A2DFC  80 A1 00 08 */	lwz r5, 8(r1)
/* 800A5EA0 000A2E00  80 65 00 0C */	lwz r3, 0xc(r5)
/* 800A5EA4 000A2E04  28 03 08 80 */	cmplwi r3, 0x880
/* 800A5EA8 000A2E08  41 80 00 0C */	blt lbl_800A5EB4
/* 800A5EAC 000A2E0C  38 80 03 01 */	li r4, 0x301
/* 800A5EB0 000A2E10  48 00 00 24 */	b lbl_800A5ED4
lbl_800A5EB4:
/* 800A5EB4 000A2E14  38 03 00 01 */	addi r0, r3, 1
/* 800A5EB8 000A2E18  7C 65 1A 14 */	add r3, r5, r3
/* 800A5EBC 000A2E1C  90 05 00 0C */	stw r0, 0xc(r5)
/* 800A5EC0 000A2E20  38 80 00 00 */	li r4, 0
/* 800A5EC4 000A2E24  9B A3 00 10 */	stb r29, 0x10(r3)
/* 800A5EC8 000A2E28  80 65 00 08 */	lwz r3, 8(r5)
/* 800A5ECC 000A2E2C  38 03 00 01 */	addi r0, r3, 1
/* 800A5ED0 000A2E30  90 05 00 08 */	stw r0, 8(r5)
lbl_800A5ED4:
/* 800A5ED4 000A2E34  7C 9B 23 78 */	mr r27, r4
lbl_800A5ED8:
/* 800A5ED8 000A2E38  2C 1B 00 00 */	cmpwi r27, 0
/* 800A5EDC 000A2E3C  40 82 00 84 */	bne lbl_800A5F60
/* 800A5EE0 000A2E40  38 00 00 00 */	li r0, 0
/* 800A5EE4 000A2E44  38 81 00 10 */	addi r4, r1, 0x10
/* 800A5EE8 000A2E48  98 1E 00 00 */	stb r0, 0(r30)
/* 800A5EEC 000A2E4C  38 A0 00 03 */	li r5, 3
/* 800A5EF0 000A2E50  38 C0 00 03 */	li r6, 3
/* 800A5EF4 000A2E54  38 E0 00 00 */	li r7, 0
/* 800A5EF8 000A2E58  80 61 00 08 */	lwz r3, 8(r1)
/* 800A5EFC 000A2E5C  48 00 03 4D */	bl TRKRequestSend
/* 800A5F00 000A2E60  7C 7B 1B 79 */	or. r27, r3, r3
/* 800A5F04 000A2E64  40 82 00 18 */	bne lbl_800A5F1C
/* 800A5F08 000A2E68  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800A5F0C 000A2E6C  4B FF D0 29 */	bl TRKGetBuffer
/* 800A5F10 000A2E70  38 80 00 02 */	li r4, 2
/* 800A5F14 000A2E74  7C 7F 1B 78 */	mr r31, r3
/* 800A5F18 000A2E78  4B FF CF 49 */	bl TRKSetBufferPosition
lbl_800A5F1C:
/* 800A5F1C 000A2E7C  2C 1B 00 00 */	cmpwi r27, 0
/* 800A5F20 000A2E80  40 82 00 14 */	bne lbl_800A5F34
/* 800A5F24 000A2E84  7F E3 FB 78 */	mr r3, r31
/* 800A5F28 000A2E88  7F C4 F3 78 */	mr r4, r30
/* 800A5F2C 000A2E8C  4B FF CB 35 */	bl TRKReadBuffer1_ui8
/* 800A5F30 000A2E90  7C 7B 1B 78 */	mr r27, r3
lbl_800A5F34:
/* 800A5F34 000A2E94  2C 1B 00 00 */	cmpwi r27, 0
/* 800A5F38 000A2E98  40 82 00 18 */	bne lbl_800A5F50
/* 800A5F3C 000A2E9C  7F E3 FB 78 */	mr r3, r31
/* 800A5F40 000A2EA0  7F 84 E3 78 */	mr r4, r28
/* 800A5F44 000A2EA4  4B FF C9 9D */	bl TRKReadBuffer1_ui32
/* 800A5F48 000A2EA8  7C 7B 1B 78 */	mr r27, r3
/* 800A5F4C 000A2EAC  48 00 00 0C */	b lbl_800A5F58
lbl_800A5F50:
/* 800A5F50 000A2EB0  38 00 FF FF */	li r0, -1
/* 800A5F54 000A2EB4  90 1C 00 00 */	stw r0, 0(r28)
lbl_800A5F58:
/* 800A5F58 000A2EB8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800A5F5C 000A2EBC  4B FF CF 75 */	bl TRKReleaseBuffer
lbl_800A5F60:
/* 800A5F60 000A2EC0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800A5F64 000A2EC4  4B FF CF 6D */	bl TRKReleaseBuffer
/* 800A5F68 000A2EC8  7F 63 DB 78 */	mr r3, r27
/* 800A5F6C 000A2ECC  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 800A5F70 000A2ED0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A5F74 000A2ED4  7C 08 03 A6 */	mtlr r0
/* 800A5F78 000A2ED8  38 21 00 30 */	addi r1, r1, 0x30
/* 800A5F7C 000A2EDC  4E 80 00 20 */	blr 

.global HandleCloseFileSupportRequest
HandleCloseFileSupportRequest:
/* 800A5F80 000A2EE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A5F84 000A2EE4  7C 08 02 A6 */	mflr r0
/* 800A5F88 000A2EE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 800A5F8C 000A2EEC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800A5F90 000A2EF0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800A5F94 000A2EF4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 800A5F98 000A2EF8  7C 9D 23 78 */	mr r29, r4
/* 800A5F9C 000A2EFC  38 81 00 08 */	addi r4, r1, 8
/* 800A5FA0 000A2F00  93 81 00 20 */	stw r28, 0x20(r1)
/* 800A5FA4 000A2F04  7C 7C 1B 78 */	mr r28, r3
/* 800A5FA8 000A2F08  38 61 00 0C */	addi r3, r1, 0xc
/* 800A5FAC 000A2F0C  4B FF CF B5 */	bl TRKGetFreeBuffer
/* 800A5FB0 000A2F10  7C 7F 1B 79 */	or. r31, r3, r3
/* 800A5FB4 000A2F14  40 82 00 44 */	bne lbl_800A5FF8
/* 800A5FB8 000A2F18  80 A1 00 08 */	lwz r5, 8(r1)
/* 800A5FBC 000A2F1C  80 65 00 0C */	lwz r3, 0xc(r5)
/* 800A5FC0 000A2F20  28 03 08 80 */	cmplwi r3, 0x880
/* 800A5FC4 000A2F24  41 80 00 0C */	blt lbl_800A5FD0
/* 800A5FC8 000A2F28  38 80 03 01 */	li r4, 0x301
/* 800A5FCC 000A2F2C  48 00 00 28 */	b lbl_800A5FF4
lbl_800A5FD0:
/* 800A5FD0 000A2F30  38 03 00 01 */	addi r0, r3, 1
/* 800A5FD4 000A2F34  7C 65 1A 14 */	add r3, r5, r3
/* 800A5FD8 000A2F38  90 05 00 0C */	stw r0, 0xc(r5)
/* 800A5FDC 000A2F3C  38 00 00 D3 */	li r0, 0xd3
/* 800A5FE0 000A2F40  38 80 00 00 */	li r4, 0
/* 800A5FE4 000A2F44  98 03 00 10 */	stb r0, 0x10(r3)
/* 800A5FE8 000A2F48  80 65 00 08 */	lwz r3, 8(r5)
/* 800A5FEC 000A2F4C  38 03 00 01 */	addi r0, r3, 1
/* 800A5FF0 000A2F50  90 05 00 08 */	stw r0, 8(r5)
lbl_800A5FF4:
/* 800A5FF4 000A2F54  7C 9F 23 78 */	mr r31, r4
lbl_800A5FF8:
/* 800A5FF8 000A2F58  2C 1F 00 00 */	cmpwi r31, 0
/* 800A5FFC 000A2F5C  40 82 00 14 */	bne lbl_800A6010
/* 800A6000 000A2F60  80 61 00 08 */	lwz r3, 8(r1)
/* 800A6004 000A2F64  7F 84 E3 78 */	mr r4, r28
/* 800A6008 000A2F68  4B FF CC 71 */	bl TRKAppendBuffer1_ui32
/* 800A600C 000A2F6C  7C 7F 1B 78 */	mr r31, r3
lbl_800A6010:
/* 800A6010 000A2F70  2C 1F 00 00 */	cmpwi r31, 0
/* 800A6014 000A2F74  40 82 00 60 */	bne lbl_800A6074
/* 800A6018 000A2F78  38 00 00 00 */	li r0, 0
/* 800A601C 000A2F7C  38 81 00 10 */	addi r4, r1, 0x10
/* 800A6020 000A2F80  98 1D 00 00 */	stb r0, 0(r29)
/* 800A6024 000A2F84  38 A0 00 03 */	li r5, 3
/* 800A6028 000A2F88  38 C0 00 03 */	li r6, 3
/* 800A602C 000A2F8C  38 E0 00 00 */	li r7, 0
/* 800A6030 000A2F90  80 61 00 08 */	lwz r3, 8(r1)
/* 800A6034 000A2F94  48 00 02 15 */	bl TRKRequestSend
/* 800A6038 000A2F98  7C 7F 1B 79 */	or. r31, r3, r3
/* 800A603C 000A2F9C  40 82 00 18 */	bne lbl_800A6054
/* 800A6040 000A2FA0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800A6044 000A2FA4  4B FF CE F1 */	bl TRKGetBuffer
/* 800A6048 000A2FA8  38 80 00 02 */	li r4, 2
/* 800A604C 000A2FAC  7C 7E 1B 78 */	mr r30, r3
/* 800A6050 000A2FB0  4B FF CE 11 */	bl TRKSetBufferPosition
lbl_800A6054:
/* 800A6054 000A2FB4  2C 1F 00 00 */	cmpwi r31, 0
/* 800A6058 000A2FB8  40 82 00 14 */	bne lbl_800A606C
/* 800A605C 000A2FBC  7F C3 F3 78 */	mr r3, r30
/* 800A6060 000A2FC0  7F A4 EB 78 */	mr r4, r29
/* 800A6064 000A2FC4  4B FF C9 FD */	bl TRKReadBuffer1_ui8
/* 800A6068 000A2FC8  7C 7F 1B 78 */	mr r31, r3
lbl_800A606C:
/* 800A606C 000A2FCC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800A6070 000A2FD0  4B FF CE 61 */	bl TRKReleaseBuffer
lbl_800A6074:
/* 800A6074 000A2FD4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800A6078 000A2FD8  4B FF CE 59 */	bl TRKReleaseBuffer
/* 800A607C 000A2FDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A6080 000A2FE0  7F E3 FB 78 */	mr r3, r31
/* 800A6084 000A2FE4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800A6088 000A2FE8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800A608C 000A2FEC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800A6090 000A2FF0  83 81 00 20 */	lwz r28, 0x20(r1)
/* 800A6094 000A2FF4  7C 08 03 A6 */	mtlr r0
/* 800A6098 000A2FF8  38 21 00 30 */	addi r1, r1, 0x30
/* 800A609C 000A2FFC  4E 80 00 20 */	blr 

.global HandleOpenFileSupportRequest
HandleOpenFileSupportRequest:
/* 800A60A0 000A3000  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A60A4 000A3004  7C 08 02 A6 */	mflr r0
/* 800A60A8 000A3008  90 01 00 34 */	stw r0, 0x34(r1)
/* 800A60AC 000A300C  38 00 00 00 */	li r0, 0
/* 800A60B0 000A3010  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 800A60B4 000A3014  7C 7B 1B 78 */	mr r27, r3
/* 800A60B8 000A3018  7C 9C 23 78 */	mr r28, r4
/* 800A60BC 000A301C  7C BD 2B 78 */	mr r29, r5
/* 800A60C0 000A3020  7C DE 33 78 */	mr r30, r6
/* 800A60C4 000A3024  38 61 00 0C */	addi r3, r1, 0xc
/* 800A60C8 000A3028  38 81 00 08 */	addi r4, r1, 8
/* 800A60CC 000A302C  90 05 00 00 */	stw r0, 0(r5)
/* 800A60D0 000A3030  4B FF CE 91 */	bl TRKGetFreeBuffer
/* 800A60D4 000A3034  7C 7A 1B 79 */	or. r26, r3, r3
/* 800A60D8 000A3038  40 82 00 44 */	bne lbl_800A611C
/* 800A60DC 000A303C  80 A1 00 08 */	lwz r5, 8(r1)
/* 800A60E0 000A3040  80 65 00 0C */	lwz r3, 0xc(r5)
/* 800A60E4 000A3044  28 03 08 80 */	cmplwi r3, 0x880
/* 800A60E8 000A3048  41 80 00 0C */	blt lbl_800A60F4
/* 800A60EC 000A304C  38 80 03 01 */	li r4, 0x301
/* 800A60F0 000A3050  48 00 00 28 */	b lbl_800A6118
lbl_800A60F4:
/* 800A60F4 000A3054  38 03 00 01 */	addi r0, r3, 1
/* 800A60F8 000A3058  7C 65 1A 14 */	add r3, r5, r3
/* 800A60FC 000A305C  90 05 00 0C */	stw r0, 0xc(r5)
/* 800A6100 000A3060  38 00 00 D2 */	li r0, 0xd2
/* 800A6104 000A3064  38 80 00 00 */	li r4, 0
/* 800A6108 000A3068  98 03 00 10 */	stb r0, 0x10(r3)
/* 800A610C 000A306C  80 65 00 08 */	lwz r3, 8(r5)
/* 800A6110 000A3070  38 03 00 01 */	addi r0, r3, 1
/* 800A6114 000A3074  90 05 00 08 */	stw r0, 8(r5)
lbl_800A6118:
/* 800A6118 000A3078  7C 9A 23 78 */	mr r26, r4
lbl_800A611C:
/* 800A611C 000A307C  2C 1A 00 00 */	cmpwi r26, 0
/* 800A6120 000A3080  40 82 00 40 */	bne lbl_800A6160
/* 800A6124 000A3084  80 A1 00 08 */	lwz r5, 8(r1)
/* 800A6128 000A3088  80 65 00 0C */	lwz r3, 0xc(r5)
/* 800A612C 000A308C  28 03 08 80 */	cmplwi r3, 0x880
/* 800A6130 000A3090  41 80 00 0C */	blt lbl_800A613C
/* 800A6134 000A3094  38 80 03 01 */	li r4, 0x301
/* 800A6138 000A3098  48 00 00 24 */	b lbl_800A615C
lbl_800A613C:
/* 800A613C 000A309C  38 03 00 01 */	addi r0, r3, 1
/* 800A6140 000A30A0  7C 65 1A 14 */	add r3, r5, r3
/* 800A6144 000A30A4  90 05 00 0C */	stw r0, 0xc(r5)
/* 800A6148 000A30A8  38 80 00 00 */	li r4, 0
/* 800A614C 000A30AC  9B 83 00 10 */	stb r28, 0x10(r3)
/* 800A6150 000A30B0  80 65 00 08 */	lwz r3, 8(r5)
/* 800A6154 000A30B4  38 03 00 01 */	addi r0, r3, 1
/* 800A6158 000A30B8  90 05 00 08 */	stw r0, 8(r5)
lbl_800A615C:
/* 800A615C 000A30BC  7C 9A 23 78 */	mr r26, r4
lbl_800A6160:
/* 800A6160 000A30C0  2C 1A 00 00 */	cmpwi r26, 0
/* 800A6164 000A30C4  40 82 00 20 */	bne lbl_800A6184
/* 800A6168 000A30C8  7F 63 DB 78 */	mr r3, r27
/* 800A616C 000A30CC  4B FF 96 E1 */	bl strlen
/* 800A6170 000A30D0  38 03 00 01 */	addi r0, r3, 1
/* 800A6174 000A30D4  80 61 00 08 */	lwz r3, 8(r1)
/* 800A6178 000A30D8  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 800A617C 000A30DC  4B FF CB 61 */	bl TRKAppendBuffer1_ui16
/* 800A6180 000A30E0  7C 7A 1B 78 */	mr r26, r3
lbl_800A6184:
/* 800A6184 000A30E4  2C 1A 00 00 */	cmpwi r26, 0
/* 800A6188 000A30E8  40 82 00 24 */	bne lbl_800A61AC
/* 800A618C 000A30EC  7F 63 DB 78 */	mr r3, r27
/* 800A6190 000A30F0  4B FF 96 BD */	bl strlen
/* 800A6194 000A30F4  7C 65 1B 78 */	mr r5, r3
/* 800A6198 000A30F8  80 61 00 08 */	lwz r3, 8(r1)
/* 800A619C 000A30FC  7F 64 DB 78 */	mr r4, r27
/* 800A61A0 000A3100  38 A5 00 01 */	addi r5, r5, 1
/* 800A61A4 000A3104  4B FF C9 E5 */	bl TRKAppendBuffer_ui8
/* 800A61A8 000A3108  7C 7A 1B 78 */	mr r26, r3
lbl_800A61AC:
/* 800A61AC 000A310C  2C 1A 00 00 */	cmpwi r26, 0
/* 800A61B0 000A3110  40 82 00 78 */	bne lbl_800A6228
/* 800A61B4 000A3114  38 00 00 00 */	li r0, 0
/* 800A61B8 000A3118  38 81 00 10 */	addi r4, r1, 0x10
/* 800A61BC 000A311C  98 1E 00 00 */	stb r0, 0(r30)
/* 800A61C0 000A3120  38 A0 00 07 */	li r5, 7
/* 800A61C4 000A3124  38 C0 00 03 */	li r6, 3
/* 800A61C8 000A3128  38 E0 00 00 */	li r7, 0
/* 800A61CC 000A312C  80 61 00 08 */	lwz r3, 8(r1)
/* 800A61D0 000A3130  48 00 00 79 */	bl TRKRequestSend
/* 800A61D4 000A3134  7C 7A 1B 79 */	or. r26, r3, r3
/* 800A61D8 000A3138  40 82 00 18 */	bne lbl_800A61F0
/* 800A61DC 000A313C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800A61E0 000A3140  4B FF CD 55 */	bl TRKGetBuffer
/* 800A61E4 000A3144  38 80 00 02 */	li r4, 2
/* 800A61E8 000A3148  7C 7F 1B 78 */	mr r31, r3
/* 800A61EC 000A314C  4B FF CC 75 */	bl TRKSetBufferPosition
lbl_800A61F0:
/* 800A61F0 000A3150  2C 1A 00 00 */	cmpwi r26, 0
/* 800A61F4 000A3154  40 82 00 14 */	bne lbl_800A6208
/* 800A61F8 000A3158  7F E3 FB 78 */	mr r3, r31
/* 800A61FC 000A315C  7F C4 F3 78 */	mr r4, r30
/* 800A6200 000A3160  4B FF C8 61 */	bl TRKReadBuffer1_ui8
/* 800A6204 000A3164  7C 7A 1B 78 */	mr r26, r3
lbl_800A6208:
/* 800A6208 000A3168  2C 1A 00 00 */	cmpwi r26, 0
/* 800A620C 000A316C  40 82 00 14 */	bne lbl_800A6220
/* 800A6210 000A3170  7F E3 FB 78 */	mr r3, r31
/* 800A6214 000A3174  7F A4 EB 78 */	mr r4, r29
/* 800A6218 000A3178  4B FF C6 C9 */	bl TRKReadBuffer1_ui32
/* 800A621C 000A317C  7C 7A 1B 78 */	mr r26, r3
lbl_800A6220:
/* 800A6220 000A3180  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800A6224 000A3184  4B FF CC AD */	bl TRKReleaseBuffer
lbl_800A6228:
/* 800A6228 000A3188  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800A622C 000A318C  4B FF CC A5 */	bl TRKReleaseBuffer
/* 800A6230 000A3190  7F 43 D3 78 */	mr r3, r26
/* 800A6234 000A3194  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 800A6238 000A3198  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A623C 000A319C  7C 08 03 A6 */	mtlr r0
/* 800A6240 000A31A0  38 21 00 30 */	addi r1, r1, 0x30
/* 800A6244 000A31A4  4E 80 00 20 */	blr 

.global TRKRequestSend
TRKRequestSend:
/* 800A6248 000A31A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800A624C 000A31AC  7C 08 02 A6 */	mflr r0
/* 800A6250 000A31B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 800A6254 000A31B4  38 00 FF FF */	li r0, -1
/* 800A6258 000A31B8  BE E1 00 1C */	stmw r23, 0x1c(r1)
/* 800A625C 000A31BC  7C 98 23 78 */	mr r24, r4
/* 800A6260 000A31C0  7C 77 1B 78 */	mr r23, r3
/* 800A6264 000A31C4  7C B9 2B 78 */	mr r25, r5
/* 800A6268 000A31C8  7C FA 3B 78 */	mr r26, r7
/* 800A626C 000A31CC  3B 86 00 01 */	addi r28, r6, 1
/* 800A6270 000A31D0  3B E0 00 00 */	li r31, 0
/* 800A6274 000A31D4  3B 60 00 01 */	li r27, 1
/* 800A6278 000A31D8  90 04 00 00 */	stw r0, 0(r4)
/* 800A627C 000A31DC  48 00 01 2C */	b lbl_800A63A8
lbl_800A6280:
/* 800A6280 000A31E0  7E E3 BB 78 */	mr r3, r23
/* 800A6284 000A31E4  4B FF C2 11 */	bl TRKMessageSend
/* 800A6288 000A31E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 800A628C 000A31EC  40 82 01 18 */	bne lbl_800A63A4
/* 800A6290 000A31F0  2C 1A 00 00 */	cmpwi r26, 0
/* 800A6294 000A31F4  41 82 00 08 */	beq lbl_800A629C
/* 800A6298 000A31F8  3B A0 00 00 */	li r29, 0
lbl_800A629C:
/* 800A629C 000A31FC  4B FF CF 15 */	bl TRKTestForPacket
/* 800A62A0 000A3200  90 78 00 00 */	stw r3, 0(r24)
/* 800A62A4 000A3204  80 78 00 00 */	lwz r3, 0(r24)
/* 800A62A8 000A3208  2C 03 FF FF */	cmpwi r3, -1
/* 800A62AC 000A320C  40 82 00 20 */	bne lbl_800A62CC
/* 800A62B0 000A3210  2C 1A 00 00 */	cmpwi r26, 0
/* 800A62B4 000A3214  41 82 FF E8 */	beq lbl_800A629C
/* 800A62B8 000A3218  3C 80 04 C5 */	lis r4, 0x04C4B3EC@ha
/* 800A62BC 000A321C  3B BD 00 01 */	addi r29, r29, 1
/* 800A62C0 000A3220  38 04 B3 EC */	addi r0, r4, 0x04C4B3EC@l
/* 800A62C4 000A3224  7C 1D 00 40 */	cmplw r29, r0
/* 800A62C8 000A3228  41 80 FF D4 */	blt lbl_800A629C
lbl_800A62CC:
/* 800A62CC 000A322C  2C 03 FF FF */	cmpwi r3, -1
/* 800A62D0 000A3230  41 82 00 4C */	beq lbl_800A631C
/* 800A62D4 000A3234  3B 60 00 00 */	li r27, 0
/* 800A62D8 000A3238  4B FF CC 5D */	bl TRKGetBuffer
/* 800A62DC 000A323C  38 80 00 00 */	li r4, 0
/* 800A62E0 000A3240  7C 7E 1B 78 */	mr r30, r3
/* 800A62E4 000A3244  4B FF CB 7D */	bl TRKSetBufferPosition
/* 800A62E8 000A3248  7F C3 F3 78 */	mr r3, r30
/* 800A62EC 000A324C  38 81 00 09 */	addi r4, r1, 9
/* 800A62F0 000A3250  4B FF C7 71 */	bl TRKReadBuffer1_ui8
/* 800A62F4 000A3254  7C 7F 1B 79 */	or. r31, r3, r3
/* 800A62F8 000A3258  40 82 00 24 */	bne lbl_800A631C
/* 800A62FC 000A325C  88 01 00 09 */	lbz r0, 9(r1)
/* 800A6300 000A3260  28 00 00 80 */	cmplwi r0, 0x80
/* 800A6304 000A3264  40 80 00 18 */	bge lbl_800A631C
/* 800A6308 000A3268  80 78 00 00 */	lwz r3, 0(r24)
/* 800A630C 000A326C  4B FF CD BD */	bl TRKProcessInput
/* 800A6310 000A3270  38 00 FF FF */	li r0, -1
/* 800A6314 000A3274  90 18 00 00 */	stw r0, 0(r24)
/* 800A6318 000A3278  4B FF FF 84 */	b lbl_800A629C
lbl_800A631C:
/* 800A631C 000A327C  80 18 00 00 */	lwz r0, 0(r24)
/* 800A6320 000A3280  2C 00 FF FF */	cmpwi r0, -1
/* 800A6324 000A3284  41 82 00 80 */	beq lbl_800A63A4
/* 800A6328 000A3288  80 1E 00 08 */	lwz r0, 8(r30)
/* 800A632C 000A328C  7C 00 C8 40 */	cmplw r0, r25
/* 800A6330 000A3290  40 80 00 08 */	bge lbl_800A6338
/* 800A6334 000A3294  3B 60 00 01 */	li r27, 1
lbl_800A6338:
/* 800A6338 000A3298  2C 1F 00 00 */	cmpwi r31, 0
/* 800A633C 000A329C  40 82 00 1C */	bne lbl_800A6358
/* 800A6340 000A32A0  2C 1B 00 00 */	cmpwi r27, 0
/* 800A6344 000A32A4  40 82 00 14 */	bne lbl_800A6358
/* 800A6348 000A32A8  7F C3 F3 78 */	mr r3, r30
/* 800A634C 000A32AC  38 81 00 08 */	addi r4, r1, 8
/* 800A6350 000A32B0  4B FF C7 11 */	bl TRKReadBuffer1_ui8
/* 800A6354 000A32B4  7C 7F 1B 78 */	mr r31, r3
lbl_800A6358:
/* 800A6358 000A32B8  2C 1F 00 00 */	cmpwi r31, 0
/* 800A635C 000A32BC  40 82 00 28 */	bne lbl_800A6384
/* 800A6360 000A32C0  2C 1B 00 00 */	cmpwi r27, 0
/* 800A6364 000A32C4  40 82 00 20 */	bne lbl_800A6384
/* 800A6368 000A32C8  88 01 00 09 */	lbz r0, 9(r1)
/* 800A636C 000A32CC  28 00 00 80 */	cmplwi r0, 0x80
/* 800A6370 000A32D0  40 82 00 10 */	bne lbl_800A6380
/* 800A6374 000A32D4  88 01 00 08 */	lbz r0, 8(r1)
/* 800A6378 000A32D8  28 00 00 00 */	cmplwi r0, 0
/* 800A637C 000A32DC  41 82 00 08 */	beq lbl_800A6384
lbl_800A6380:
/* 800A6380 000A32E0  3B 60 00 01 */	li r27, 1
lbl_800A6384:
/* 800A6384 000A32E4  2C 1F 00 00 */	cmpwi r31, 0
/* 800A6388 000A32E8  40 82 00 0C */	bne lbl_800A6394
/* 800A638C 000A32EC  2C 1B 00 00 */	cmpwi r27, 0
/* 800A6390 000A32F0  41 82 00 14 */	beq lbl_800A63A4
lbl_800A6394:
/* 800A6394 000A32F4  80 78 00 00 */	lwz r3, 0(r24)
/* 800A6398 000A32F8  4B FF CB 39 */	bl TRKReleaseBuffer
/* 800A639C 000A32FC  38 00 FF FF */	li r0, -1
/* 800A63A0 000A3300  90 18 00 00 */	stw r0, 0(r24)
lbl_800A63A4:
/* 800A63A4 000A3304  3B 9C FF FF */	addi r28, r28, -1
lbl_800A63A8:
/* 800A63A8 000A3308  2C 1C 00 00 */	cmpwi r28, 0
/* 800A63AC 000A330C  41 82 00 18 */	beq lbl_800A63C4
/* 800A63B0 000A3310  80 18 00 00 */	lwz r0, 0(r24)
/* 800A63B4 000A3314  2C 00 FF FF */	cmpwi r0, -1
/* 800A63B8 000A3318  40 82 00 0C */	bne lbl_800A63C4
/* 800A63BC 000A331C  2C 1F 00 00 */	cmpwi r31, 0
/* 800A63C0 000A3320  41 82 FE C0 */	beq lbl_800A6280
lbl_800A63C4:
/* 800A63C4 000A3324  80 18 00 00 */	lwz r0, 0(r24)
/* 800A63C8 000A3328  2C 00 FF FF */	cmpwi r0, -1
/* 800A63CC 000A332C  40 82 00 08 */	bne lbl_800A63D4
/* 800A63D0 000A3330  3B E0 08 00 */	li r31, 0x800
lbl_800A63D4:
/* 800A63D4 000A3334  7F E3 FB 78 */	mr r3, r31
/* 800A63D8 000A3338  BA E1 00 1C */	lmw r23, 0x1c(r1)
/* 800A63DC 000A333C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800A63E0 000A3340  7C 08 03 A6 */	mtlr r0
/* 800A63E4 000A3344  38 21 00 40 */	addi r1, r1, 0x40
/* 800A63E8 000A3348  4E 80 00 20 */	blr 

.global TRKSuppAccessFile
TRKSuppAccessFile:
/* 800A63EC 000A334C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800A63F0 000A3350  7C 08 02 A6 */	mflr r0
/* 800A63F4 000A3354  90 01 00 54 */	stw r0, 0x54(r1)
/* 800A63F8 000A3358  BE A1 00 24 */	stmw r21, 0x24(r1)
/* 800A63FC 000A335C  7C 9B 23 79 */	or. r27, r4, r4
/* 800A6400 000A3360  7C 77 1B 78 */	mr r23, r3
/* 800A6404 000A3364  7C B8 2B 78 */	mr r24, r5
/* 800A6408 000A3368  7C DA 33 78 */	mr r26, r6
/* 800A640C 000A336C  7C F6 3B 78 */	mr r22, r7
/* 800A6410 000A3370  7D 1D 43 78 */	mr r29, r8
/* 800A6414 000A3374  41 82 00 10 */	beq lbl_800A6424
/* 800A6418 000A3378  80 18 00 00 */	lwz r0, 0(r24)
/* 800A641C 000A337C  28 00 00 00 */	cmplwi r0, 0
/* 800A6420 000A3380  40 82 00 0C */	bne lbl_800A642C
lbl_800A6424:
/* 800A6424 000A3384  38 60 00 02 */	li r3, 2
/* 800A6428 000A3388  48 00 02 74 */	b lbl_800A669C
lbl_800A642C:
/* 800A642C 000A338C  38 00 00 00 */	li r0, 0
/* 800A6430 000A3390  3B 20 00 00 */	li r25, 0
/* 800A6434 000A3394  98 1A 00 00 */	stb r0, 0(r26)
/* 800A6438 000A3398  3B C0 00 00 */	li r30, 0
/* 800A643C 000A339C  3A A0 00 00 */	li r21, 0
/* 800A6440 000A33A0  48 00 02 2C */	b lbl_800A666C
lbl_800A6444:
/* 800A6444 000A33A4  7C 7E 18 50 */	subf r3, r30, r3
/* 800A6448 000A33A8  38 00 08 00 */	li r0, 0x800
/* 800A644C 000A33AC  28 03 08 00 */	cmplwi r3, 0x800
/* 800A6450 000A33B0  41 81 00 08 */	bgt lbl_800A6458
/* 800A6454 000A33B4  7C 60 1B 78 */	mr r0, r3
lbl_800A6458:
/* 800A6458 000A33B8  7C 1F 03 78 */	mr r31, r0
/* 800A645C 000A33BC  38 61 00 10 */	addi r3, r1, 0x10
/* 800A6460 000A33C0  38 81 00 0C */	addi r4, r1, 0xc
/* 800A6464 000A33C4  4B FF CA FD */	bl TRKGetFreeBuffer
/* 800A6468 000A33C8  7C 75 1B 79 */	or. r21, r3, r3
/* 800A646C 000A33CC  40 82 00 50 */	bne lbl_800A64BC
/* 800A6470 000A33D0  2C 1D 00 00 */	cmpwi r29, 0
/* 800A6474 000A33D4  38 A0 00 D0 */	li r5, 0xd0
/* 800A6478 000A33D8  41 82 00 08 */	beq lbl_800A6480
/* 800A647C 000A33DC  38 A0 00 D1 */	li r5, 0xd1
lbl_800A6480:
/* 800A6480 000A33E0  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 800A6484 000A33E4  80 86 00 0C */	lwz r4, 0xc(r6)
/* 800A6488 000A33E8  28 04 08 80 */	cmplwi r4, 0x880
/* 800A648C 000A33EC  41 80 00 0C */	blt lbl_800A6498
/* 800A6490 000A33F0  38 80 03 01 */	li r4, 0x301
/* 800A6494 000A33F4  48 00 00 24 */	b lbl_800A64B8
lbl_800A6498:
/* 800A6498 000A33F8  38 64 00 01 */	addi r3, r4, 1
/* 800A649C 000A33FC  38 04 00 10 */	addi r0, r4, 0x10
/* 800A64A0 000A3400  90 66 00 0C */	stw r3, 0xc(r6)
/* 800A64A4 000A3404  38 80 00 00 */	li r4, 0
/* 800A64A8 000A3408  7C A6 01 AE */	stbx r5, r6, r0
/* 800A64AC 000A340C  80 66 00 08 */	lwz r3, 8(r6)
/* 800A64B0 000A3410  38 03 00 01 */	addi r0, r3, 1
/* 800A64B4 000A3414  90 06 00 08 */	stw r0, 8(r6)
lbl_800A64B8:
/* 800A64B8 000A3418  7C 95 23 78 */	mr r21, r4
lbl_800A64BC:
/* 800A64BC 000A341C  2C 15 00 00 */	cmpwi r21, 0
/* 800A64C0 000A3420  40 82 00 14 */	bne lbl_800A64D4
/* 800A64C4 000A3424  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800A64C8 000A3428  7E E4 BB 78 */	mr r4, r23
/* 800A64CC 000A342C  4B FF C7 AD */	bl TRKAppendBuffer1_ui32
/* 800A64D0 000A3430  7C 75 1B 78 */	mr r21, r3
lbl_800A64D4:
/* 800A64D4 000A3434  2C 15 00 00 */	cmpwi r21, 0
/* 800A64D8 000A3438  40 82 00 14 */	bne lbl_800A64EC
/* 800A64DC 000A343C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800A64E0 000A3440  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 800A64E4 000A3444  4B FF C7 F9 */	bl TRKAppendBuffer1_ui16
/* 800A64E8 000A3448  7C 75 1B 78 */	mr r21, r3
lbl_800A64EC:
/* 800A64EC 000A344C  2C 1D 00 00 */	cmpwi r29, 0
/* 800A64F0 000A3450  40 82 00 20 */	bne lbl_800A6510
/* 800A64F4 000A3454  2C 15 00 00 */	cmpwi r21, 0
/* 800A64F8 000A3458  40 82 00 18 */	bne lbl_800A6510
/* 800A64FC 000A345C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800A6500 000A3460  7F E5 FB 78 */	mr r5, r31
/* 800A6504 000A3464  7C 9B F2 14 */	add r4, r27, r30
/* 800A6508 000A3468  4B FF C6 81 */	bl TRKAppendBuffer_ui8
/* 800A650C 000A346C  7C 75 1B 78 */	mr r21, r3
lbl_800A6510:
/* 800A6510 000A3470  2C 15 00 00 */	cmpwi r21, 0
/* 800A6514 000A3474  40 82 01 4C */	bne lbl_800A6660
/* 800A6518 000A3478  2C 16 00 00 */	cmpwi r22, 0
/* 800A651C 000A347C  41 82 01 38 */	beq lbl_800A6654
/* 800A6520 000A3480  38 00 00 00 */	li r0, 0
/* 800A6524 000A3484  2C 1D 00 00 */	cmpwi r29, 0
/* 800A6528 000A3488  B0 01 00 0A */	sth r0, 0xa(r1)
/* 800A652C 000A348C  98 01 00 08 */	stb r0, 8(r1)
/* 800A6530 000A3490  41 82 00 10 */	beq lbl_800A6540
/* 800A6534 000A3494  28 17 00 00 */	cmplwi r23, 0
/* 800A6538 000A3498  40 82 00 08 */	bne lbl_800A6540
/* 800A653C 000A349C  38 00 00 01 */	li r0, 1
lbl_800A6540:
/* 800A6540 000A34A0  2C 1D 00 00 */	cmpwi r29, 0
/* 800A6544 000A34A4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800A6548 000A34A8  38 81 00 14 */	addi r4, r1, 0x14
/* 800A654C 000A34AC  38 A0 00 05 */	li r5, 5
/* 800A6550 000A34B0  7C 00 00 34 */	cntlzw r0, r0
/* 800A6554 000A34B4  38 C0 00 03 */	li r6, 3
/* 800A6558 000A34B8  54 07 D9 7E */	srwi r7, r0, 5
/* 800A655C 000A34BC  4B FF FC ED */	bl TRKRequestSend
/* 800A6560 000A34C0  7C 75 1B 79 */	or. r21, r3, r3
/* 800A6564 000A34C4  40 82 00 18 */	bne lbl_800A657C
/* 800A6568 000A34C8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800A656C 000A34CC  4B FF C9 C9 */	bl TRKGetBuffer
/* 800A6570 000A34D0  38 80 00 02 */	li r4, 2
/* 800A6574 000A34D4  7C 7C 1B 78 */	mr r28, r3
/* 800A6578 000A34D8  4B FF C8 E9 */	bl TRKSetBufferPosition
lbl_800A657C:
/* 800A657C 000A34DC  2C 15 00 00 */	cmpwi r21, 0
/* 800A6580 000A34E0  40 82 00 14 */	bne lbl_800A6594
/* 800A6584 000A34E4  7F 83 E3 78 */	mr r3, r28
/* 800A6588 000A34E8  38 81 00 08 */	addi r4, r1, 8
/* 800A658C 000A34EC  4B FF C4 D5 */	bl TRKReadBuffer1_ui8
/* 800A6590 000A34F0  7C 75 1B 78 */	mr r21, r3
lbl_800A6594:
/* 800A6594 000A34F4  2C 15 00 00 */	cmpwi r21, 0
/* 800A6598 000A34F8  40 82 00 14 */	bne lbl_800A65AC
/* 800A659C 000A34FC  7F 83 E3 78 */	mr r3, r28
/* 800A65A0 000A3500  38 81 00 0A */	addi r4, r1, 0xa
/* 800A65A4 000A3504  4B FF C4 05 */	bl TRKReadBuffer1_ui16
/* 800A65A8 000A3508  7C 75 1B 78 */	mr r21, r3
lbl_800A65AC:
/* 800A65AC 000A350C  2C 1D 00 00 */	cmpwi r29, 0
/* 800A65B0 000A3510  41 82 00 58 */	beq lbl_800A6608
/* 800A65B4 000A3514  2C 15 00 00 */	cmpwi r21, 0
/* 800A65B8 000A3518  40 82 00 50 */	bne lbl_800A6608
/* 800A65BC 000A351C  A0 61 00 0A */	lhz r3, 0xa(r1)
/* 800A65C0 000A3520  80 9C 00 08 */	lwz r4, 8(r28)
/* 800A65C4 000A3524  38 03 00 05 */	addi r0, r3, 5
/* 800A65C8 000A3528  7C 04 00 40 */	cmplw r4, r0
/* 800A65CC 000A352C  41 82 00 20 */	beq lbl_800A65EC
/* 800A65D0 000A3530  88 01 00 08 */	lbz r0, 8(r1)
/* 800A65D4 000A3534  38 64 FF FB */	addi r3, r4, -5
/* 800A65D8 000A3538  B0 61 00 0A */	sth r3, 0xa(r1)
/* 800A65DC 000A353C  28 00 00 00 */	cmplwi r0, 0
/* 800A65E0 000A3540  40 82 00 0C */	bne lbl_800A65EC
/* 800A65E4 000A3544  38 00 00 01 */	li r0, 1
/* 800A65E8 000A3548  98 01 00 08 */	stb r0, 8(r1)
lbl_800A65EC:
/* 800A65EC 000A354C  A0 A1 00 0A */	lhz r5, 0xa(r1)
/* 800A65F0 000A3550  7C 05 F8 40 */	cmplw r5, r31
/* 800A65F4 000A3554  41 81 00 14 */	bgt lbl_800A6608
/* 800A65F8 000A3558  7F 83 E3 78 */	mr r3, r28
/* 800A65FC 000A355C  7C 9B F2 14 */	add r4, r27, r30
/* 800A6600 000A3560  4B FF C1 61 */	bl TRKReadBuffer_ui8
/* 800A6604 000A3564  7C 75 1B 78 */	mr r21, r3
lbl_800A6608:
/* 800A6608 000A3568  A0 61 00 0A */	lhz r3, 0xa(r1)
/* 800A660C 000A356C  7C 03 F8 40 */	cmplw r3, r31
/* 800A6610 000A3570  41 82 00 30 */	beq lbl_800A6640
/* 800A6614 000A3574  2C 1D 00 00 */	cmpwi r29, 0
/* 800A6618 000A3578  41 82 00 0C */	beq lbl_800A6624
/* 800A661C 000A357C  7C 03 F8 40 */	cmplw r3, r31
/* 800A6620 000A3580  41 80 00 18 */	blt lbl_800A6638
lbl_800A6624:
/* 800A6624 000A3584  88 01 00 08 */	lbz r0, 8(r1)
/* 800A6628 000A3588  28 00 00 00 */	cmplwi r0, 0
/* 800A662C 000A358C  40 82 00 0C */	bne lbl_800A6638
/* 800A6630 000A3590  38 00 00 01 */	li r0, 1
/* 800A6634 000A3594  98 01 00 08 */	stb r0, 8(r1)
lbl_800A6638:
/* 800A6638 000A3598  7C 7F 1B 78 */	mr r31, r3
/* 800A663C 000A359C  3B 20 00 01 */	li r25, 1
lbl_800A6640:
/* 800A6640 000A35A0  88 01 00 08 */	lbz r0, 8(r1)
/* 800A6644 000A35A4  98 1A 00 00 */	stb r0, 0(r26)
/* 800A6648 000A35A8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800A664C 000A35AC  4B FF C8 85 */	bl TRKReleaseBuffer
/* 800A6650 000A35B0  48 00 00 10 */	b lbl_800A6660
lbl_800A6654:
/* 800A6654 000A35B4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800A6658 000A35B8  4B FF BE 3D */	bl TRKMessageSend
/* 800A665C 000A35BC  7C 75 1B 78 */	mr r21, r3
lbl_800A6660:
/* 800A6660 000A35C0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800A6664 000A35C4  4B FF C8 6D */	bl TRKReleaseBuffer
/* 800A6668 000A35C8  7F DE FA 14 */	add r30, r30, r31
lbl_800A666C:
/* 800A666C 000A35CC  2C 19 00 00 */	cmpwi r25, 0
/* 800A6670 000A35D0  40 82 00 24 */	bne lbl_800A6694
/* 800A6674 000A35D4  80 78 00 00 */	lwz r3, 0(r24)
/* 800A6678 000A35D8  7C 1E 18 40 */	cmplw r30, r3
/* 800A667C 000A35DC  40 80 00 18 */	bge lbl_800A6694
/* 800A6680 000A35E0  2C 15 00 00 */	cmpwi r21, 0
/* 800A6684 000A35E4  40 82 00 10 */	bne lbl_800A6694
/* 800A6688 000A35E8  88 1A 00 00 */	lbz r0, 0(r26)
/* 800A668C 000A35EC  28 00 00 00 */	cmplwi r0, 0
/* 800A6690 000A35F0  41 82 FD B4 */	beq lbl_800A6444
lbl_800A6694:
/* 800A6694 000A35F4  93 D8 00 00 */	stw r30, 0(r24)
/* 800A6698 000A35F8  7E A3 AB 78 */	mr r3, r21
lbl_800A669C:
/* 800A669C 000A35FC  BA A1 00 24 */	lmw r21, 0x24(r1)
/* 800A66A0 000A3600  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800A66A4 000A3604  7C 08 03 A6 */	mtlr r0
/* 800A66A8 000A3608  38 21 00 50 */	addi r1, r1, 0x50
/* 800A66AC 000A360C  4E 80 00 20 */	blr 
