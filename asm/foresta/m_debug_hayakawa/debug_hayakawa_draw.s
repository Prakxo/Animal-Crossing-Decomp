lbl_80396F68:
/* 80396F68  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80396F6C  7C 08 02 A6 */	mflr r0
/* 80396F70  90 01 00 64 */	stw r0, 0x64(r1)
/* 80396F74  39 61 00 60 */	addi r11, r1, 0x60
/* 80396F78  4B D0 3F 51 */	bl func_8009AEC8
/* 80396F7C  7C 7D 1B 78 */	mr r29, r3
/* 80396F80  3B C1 00 0C */	addi r30, r1, 0xc
/* 80396F84  83 E3 02 D0 */	lwz r31, 0x2d0(r3)
/* 80396F88  7F E3 FB 78 */	mr r3, r31
/* 80396F8C  48 06 E4 3D */	bl func_804053C8
/* 80396F90  90 61 00 08 */	stw r3, 8(r1)
/* 80396F94  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80396F98  3B 63 61 38 */	addi r27, r3, debug_mode@l /* 0x81166138@l */
/* 80396F9C  3C 00 DE 00 */	lis r0, 0xde00
/* 80396FA0  80 9D 02 C0 */	lwz r4, 0x2c0(r29)
/* 80396FA4  38 64 00 08 */	addi r3, r4, 8
/* 80396FA8  90 7D 02 C0 */	stw r3, 0x2c0(r29)
/* 80396FAC  90 04 00 00 */	stw r0, 0(r4)
/* 80396FB0  80 01 00 08 */	lwz r0, 8(r1)
/* 80396FB4  90 04 00 04 */	stw r0, 4(r4)
/* 80396FB8  80 7B 00 00 */	lwz r3, 0(r27)
/* 80396FBC  A8 03 10 32 */	lha r0, 0x1032(r3)
/* 80396FC0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80396FC4  41 82 00 40 */	beq lbl_80397004
/* 80396FC8  3B 40 00 00 */	li r26, 0
/* 80396FCC  3B 80 00 00 */	li r28, 0
lbl_80396FD0:
/* 80396FD0  80 7B 00 00 */	lwz r3, 0(r27)
/* 80396FD4  38 1C 10 24 */	addi r0, r28, 0x1024
/* 80396FD8  7C 03 02 AE */	lhax r0, r3, r0
/* 80396FDC  7C 00 07 35 */	extsh. r0, r0
/* 80396FE0  41 82 00 14 */	beq lbl_80396FF4
/* 80396FE4  57 43 06 3E */	clrlwi r3, r26, 0x18
/* 80396FE8  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80396FEC  38 A1 00 08 */	addi r5, r1, 8
/* 80396FF0  4B FF FD 4D */	bl pad_disp
lbl_80396FF4:
/* 80396FF4  3B 5A 00 01 */	addi r26, r26, 1
/* 80396FF8  3B 9C 00 02 */	addi r28, r28, 2
/* 80396FFC  2C 1A 00 04 */	cmpwi r26, 4
/* 80397000  41 80 FF D0 */	blt lbl_80396FD0
lbl_80397004:
/* 80397004  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80397008  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8039700C  80 63 00 00 */	lwz r3, 0(r3)
/* 80397010  A8 03 10 74 */	lha r0, 0x1074(r3)
/* 80397014  2C 00 00 29 */	cmpwi r0, 0x29
/* 80397018  40 82 00 5C */	bne lbl_80397074
/* 8039701C  38 60 00 29 */	li r3, 0x29
/* 80397020  48 00 02 85 */	bl hreg_init_check
/* 80397024  2C 03 00 00 */	cmpwi r3, 0
/* 80397028  41 82 00 4C */	beq lbl_80397074
/* 8039702C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80397030  38 C0 00 1F */	li r6, 0x1f
/* 80397034  38 E3 61 38 */	addi r7, r3, debug_mode@l /* 0x81166138@l */
/* 80397038  38 A0 00 16 */	li r5, 0x16
/* 8039703C  81 07 00 00 */	lwz r8, 0(r7)
/* 80397040  38 80 01 21 */	li r4, 0x121
/* 80397044  38 00 00 DA */	li r0, 0xda
/* 80397048  A8 68 10 22 */	lha r3, 0x1022(r8)
/* 8039704C  54 63 FF FE */	rlwinm r3, r3, 0x1f, 0x1f, 0x1f
/* 80397050  B0 68 10 76 */	sth r3, 0x1076(r8)
/* 80397054  80 67 00 00 */	lwz r3, 0(r7)
/* 80397058  B0 C3 10 78 */	sth r6, 0x1078(r3)
/* 8039705C  80 67 00 00 */	lwz r3, 0(r7)
/* 80397060  B0 A3 10 7A */	sth r5, 0x107a(r3)
/* 80397064  80 67 00 00 */	lwz r3, 0(r7)
/* 80397068  B0 83 10 7C */	sth r4, 0x107c(r3)
/* 8039706C  80 67 00 00 */	lwz r3, 0(r7)
/* 80397070  B0 03 10 7E */	sth r0, 0x107e(r3)
lbl_80397074:
/* 80397074  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80397078  80 A3 61 38 */	lwz r5, debug_mode@l(r3)  /* 0x81166138@l */
/* 8039707C  A8 05 10 22 */	lha r0, 0x1022(r5)
/* 80397080  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80397084  40 82 00 1C */	bne lbl_803970A0
/* 80397088  A8 05 10 74 */	lha r0, 0x1074(r5)
/* 8039708C  2C 00 00 29 */	cmpwi r0, 0x29
/* 80397090  40 82 00 A4 */	bne lbl_80397134
/* 80397094  A8 05 10 76 */	lha r0, 0x1076(r5)
/* 80397098  7C 00 07 35 */	extsh. r0, r0
/* 8039709C  41 82 00 98 */	beq lbl_80397134
lbl_803970A0:
/* 803970A0  A8 05 10 74 */	lha r0, 0x1074(r5)
/* 803970A4  38 C0 00 1F */	li r6, 0x1f
/* 803970A8  38 E0 00 16 */	li r7, 0x16
/* 803970AC  38 60 01 21 */	li r3, 0x121
/* 803970B0  2C 00 00 29 */	cmpwi r0, 0x29
/* 803970B4  38 00 00 DA */	li r0, 0xda
/* 803970B8  40 82 00 14 */	bne lbl_803970CC
/* 803970BC  A8 C5 10 78 */	lha r6, 0x1078(r5)
/* 803970C0  A8 E5 10 7A */	lha r7, 0x107a(r5)
/* 803970C4  A8 65 10 7C */	lha r3, 0x107c(r5)
/* 803970C8  A8 05 10 7E */	lha r0, 0x107e(r5)
lbl_803970CC:
/* 803970CC  28 06 01 3F */	cmplwi r6, 0x13f
/* 803970D0  38 80 01 3F */	li r4, 0x13f
/* 803970D4  41 81 00 08 */	bgt lbl_803970DC
/* 803970D8  7C C4 33 78 */	mr r4, r6
lbl_803970DC:
/* 803970DC  28 07 00 EF */	cmplwi r7, 0xef
/* 803970E0  38 A0 00 EF */	li r5, 0xef
/* 803970E4  41 81 00 08 */	bgt lbl_803970EC
/* 803970E8  7C E5 3B 78 */	mr r5, r7
lbl_803970EC:
/* 803970EC  7C 03 20 40 */	cmplw r3, r4
/* 803970F0  40 80 00 0C */	bge lbl_803970FC
/* 803970F4  7C 86 23 78 */	mr r6, r4
/* 803970F8  48 00 00 14 */	b lbl_8039710C
lbl_803970FC:
/* 803970FC  28 03 01 3E */	cmplwi r3, 0x13e
/* 80397100  38 C0 01 3E */	li r6, 0x13e
/* 80397104  41 81 00 08 */	bgt lbl_8039710C
/* 80397108  7C 66 1B 78 */	mr r6, r3
lbl_8039710C:
/* 8039710C  7C 00 28 40 */	cmplw r0, r5
/* 80397110  38 61 00 08 */	addi r3, r1, 8
/* 80397114  40 80 00 0C */	bge lbl_80397120
/* 80397118  7C A7 2B 78 */	mr r7, r5
/* 8039711C  48 00 00 14 */	b lbl_80397130
lbl_80397120:
/* 80397120  28 00 00 EE */	cmplwi r0, 0xee
/* 80397124  38 E0 00 EE */	li r7, 0xee
/* 80397128  41 81 00 08 */	bgt lbl_80397130
/* 8039712C  7C 07 03 78 */	mr r7, r0
lbl_80397130:
/* 80397130  4B FF FD 3D */	bl debug_hayakawa_draw_safetyframe
lbl_80397134:
/* 80397134  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80397138  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8039713C  80 63 00 00 */	lwz r3, 0(r3)
/* 80397140  A8 03 10 74 */	lha r0, 0x1074(r3)
/* 80397144  2C 00 00 2A */	cmpwi r0, 0x2a
/* 80397148  40 82 00 A8 */	bne lbl_803971F0
/* 8039714C  38 60 00 2A */	li r3, 0x2a
/* 80397150  48 00 01 55 */	bl hreg_init_check
/* 80397154  2C 03 00 00 */	cmpwi r3, 0
/* 80397158  40 82 00 28 */	bne lbl_80397180
/* 8039715C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80397160  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80397164  80 63 00 00 */	lwz r3, 0(r3)
/* 80397168  A8 03 10 74 */	lha r0, 0x1074(r3)
/* 8039716C  2C 00 00 2A */	cmpwi r0, 0x2a
/* 80397170  40 82 00 54 */	bne lbl_803971C4
/* 80397174  A8 03 10 76 */	lha r0, 0x1076(r3)
/* 80397178  7C 00 07 35 */	extsh. r0, r0
/* 8039717C  41 82 00 48 */	beq lbl_803971C4
lbl_80397180:
/* 80397180  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80397184  39 00 00 00 */	li r8, 0
/* 80397188  38 E3 61 38 */	addi r7, r3, debug_mode@l /* 0x81166138@l */
/* 8039718C  38 C0 00 1E */	li r6, 0x1e
/* 80397190  80 67 00 00 */	lwz r3, 0(r7)
/* 80397194  38 A0 00 06 */	li r5, 6
/* 80397198  38 80 02 44 */	li r4, 0x244
/* 8039719C  38 00 01 D0 */	li r0, 0x1d0
/* 803971A0  B1 03 10 76 */	sth r8, 0x1076(r3)
/* 803971A4  80 67 00 00 */	lwz r3, 0(r7)
/* 803971A8  B0 C3 10 78 */	sth r6, 0x1078(r3)
/* 803971AC  80 67 00 00 */	lwz r3, 0(r7)
/* 803971B0  B0 A3 10 7A */	sth r5, 0x107a(r3)
/* 803971B4  80 67 00 00 */	lwz r3, 0(r7)
/* 803971B8  B0 83 10 7C */	sth r4, 0x107c(r3)
/* 803971BC  80 67 00 00 */	lwz r3, 0(r7)
/* 803971C0  B0 03 10 7E */	sth r0, 0x107e(r3)
lbl_803971C4:
/* 803971C4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 803971C8  80 C3 61 38 */	lwz r6, debug_mode@l(r3)  /* 0x81166138@l */
/* 803971CC  A8 66 10 78 */	lha r3, 0x1078(r6)
/* 803971D0  A8 86 10 7A */	lha r4, 0x107a(r6)
/* 803971D4  A8 A6 10 7C */	lha r5, 0x107c(r6)
/* 803971D8  54 63 04 3C */	rlwinm r3, r3, 0, 0x10, 0x1e
/* 803971DC  A8 06 10 7E */	lha r0, 0x107e(r6)
/* 803971E0  54 84 04 3C */	rlwinm r4, r4, 0, 0x10, 0x1e
/* 803971E4  54 A5 04 3C */	rlwinm r5, r5, 0, 0x10, 0x1e
/* 803971E8  54 06 04 3C */	rlwinm r6, r0, 0, 0x10, 0x1e
/* 803971EC  4B CF 21 B9 */	bl VIConfigurePan
lbl_803971F0:
/* 803971F0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 803971F4  80 A3 61 38 */	lwz r5, debug_mode@l(r3)  /* 0x81166138@l */
/* 803971F8  A8 05 10 74 */	lha r0, 0x1074(r5)
/* 803971FC  2C 00 02 9B */	cmpwi r0, 0x29b
/* 80397200  40 82 00 38 */	bne lbl_80397238
/* 80397204  A8 05 10 76 */	lha r0, 0x1076(r5)
/* 80397208  2C 00 00 00 */	cmpwi r0, 0
/* 8039720C  41 82 00 2C */	beq lbl_80397238
/* 80397210  80 81 00 08 */	lwz r4, 8(r1)
/* 80397214  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 80397218  A8 A5 10 78 */	lha r5, 0x1078(r5)
/* 8039721C  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 80397220  38 64 00 08 */	addi r3, r4, 8
/* 80397224  90 61 00 08 */	stw r3, 8(r1)
/* 80397228  54 A3 A0 16 */	slwi r3, r5, 0x14
/* 8039722C  3C 63 80 00 */	addis r3, r3, 0x8000
/* 80397230  90 04 00 00 */	stw r0, 0(r4)
/* 80397234  90 64 00 04 */	stw r3, 4(r4)
lbl_80397238:
/* 80397238  7F C3 F3 78 */	mr r3, r30
/* 8039723C  4B CC 45 A9 */	bl gfxprint_init
/* 80397240  80 81 00 08 */	lwz r4, 8(r1)
/* 80397244  7F C3 F3 78 */	mr r3, r30
/* 80397248  4B CC 46 31 */	bl gfxprint_open
/* 8039724C  7F C3 F3 78 */	mr r3, r30
/* 80397250  4B CC 46 75 */	bl gfxprint_close
/* 80397254  90 61 00 08 */	stw r3, 8(r1)
/* 80397258  38 A3 00 08 */	addi r5, r3, 8
/* 8039725C  3C 80 DF 00 */	lis r4, 0xdf00
/* 80397260  38 00 00 00 */	li r0, 0
/* 80397264  90 A1 00 08 */	stw r5, 8(r1)
/* 80397268  90 83 00 00 */	stw r4, 0(r3)
/* 8039726C  90 03 00 04 */	stw r0, 4(r3)
/* 80397270  7F E3 FB 78 */	mr r3, r31
/* 80397274  80 81 00 08 */	lwz r4, 8(r1)
/* 80397278  48 06 E1 59 */	bl gfxclose
/* 8039727C  80 01 00 08 */	lwz r0, 8(r1)
/* 80397280  7F C3 F3 78 */	mr r3, r30
/* 80397284  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 80397288  4B CC 45 ED */	bl gfxprint_cleanup
/* 8039728C  39 61 00 60 */	addi r11, r1, 0x60
/* 80397290  4B D0 3C 85 */	bl func_8009AF14
/* 80397294  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80397298  7C 08 03 A6 */	mtlr r0
/* 8039729C  38 21 00 60 */	addi r1, r1, 0x60
/* 803972A0  4E 80 00 20 */	blr 
