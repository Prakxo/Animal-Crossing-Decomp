.include "macros.inc"

.section .text

.org 0x800322A0

.global FAT_AllocateMemory__FUl
FAT_AllocateMemory__FUl:
/* 800322A0 0002F200  3C 80 80 1B */	lis r4, FH_TO_FAT@ha
/* 800322A4 0002F204  38 00 01 00 */	li r0, 0x100
/* 800322A8 0002F208  38 C4 AB C8 */	addi r6, r4, FH_TO_FAT@l
/* 800322AC 0002F20C  38 E0 00 00 */	li r7, 0
/* 800322B0 0002F210  38 80 00 00 */	li r4, 0
/* 800322B4 0002F214  7C 09 03 A6 */	mtctr r0
lbl_800322B8:
/* 800322B8 0002F218  7C A6 22 14 */	add r5, r6, r4
/* 800322BC 0002F21C  A0 05 00 02 */	lhz r0, 2(r5)
/* 800322C0 0002F220  28 00 00 00 */	cmplwi r0, 0
/* 800322C4 0002F224  41 82 00 10 */	beq lbl_800322D4
/* 800322C8 0002F228  38 E7 00 01 */	addi r7, r7, 1
/* 800322CC 0002F22C  38 84 00 04 */	addi r4, r4, 4
/* 800322D0 0002F230  42 00 FF E8 */	bdnz lbl_800322B8
lbl_800322D4:
/* 800322D4 0002F234  28 07 01 00 */	cmplwi r7, 0x100
/* 800322D8 0002F238  40 82 00 10 */	bne lbl_800322E8
/* 800322DC 0002F23C  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 800322E0 0002F240  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 800322E4 0002F244  4E 80 00 20 */	blr 
lbl_800322E8:
/* 800322E8 0002F248  28 03 00 00 */	cmplwi r3, 0
/* 800322EC 0002F24C  54 E8 04 3E */	clrlwi r8, r7, 0x10
/* 800322F0 0002F250  40 82 00 10 */	bne lbl_80032300
/* 800322F4 0002F254  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 800322F8 0002F258  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 800322FC 0002F25C  4E 80 00 20 */	blr 
lbl_80032300:
/* 80032300 0002F260  80 CD 89 F4 */	lwz r6, USEFAT_TAIL-_SDA_BASE_(r13)
/* 80032304 0002F264  38 63 0F FF */	addi r3, r3, 0xfff
/* 80032308 0002F268  80 0D 89 F0 */	lwz r0, ACTIVE_FATS-_SDA_BASE_(r13)
/* 8003230C 0002F26C  54 67 A3 3E */	srwi r7, r3, 0xc
/* 80032310 0002F270  7C 06 00 50 */	subf r0, r6, r0
/* 80032314 0002F274  7C 00 38 00 */	cmpw r0, r7
/* 80032318 0002F278  40 80 00 10 */	bge lbl_80032328
/* 8003231C 0002F27C  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 80032320 0002F280  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 80032324 0002F284  4E 80 00 20 */	blr 
lbl_80032328:
/* 80032328 0002F288  7C A6 3A 14 */	add r5, r6, r7
/* 8003232C 0002F28C  3C 80 80 1B */	lis r4, FAT@ha
/* 80032330 0002F290  7C 06 28 50 */	subf r0, r6, r5
/* 80032334 0002F294  54 C3 18 38 */	slwi r3, r6, 3
/* 80032338 0002F298  38 84 AF C8 */	addi r4, r4, FAT@l
/* 8003233C 0002F29C  7C 09 03 A6 */	mtctr r0
/* 80032340 0002F2A0  7C 06 28 40 */	cmplw r6, r5
/* 80032344 0002F2A4  40 80 00 10 */	bge lbl_80032354
lbl_80032348:
/* 80032348 0002F2A8  7D 04 1B 2E */	sthx r8, r4, r3
/* 8003234C 0002F2AC  38 63 00 08 */	addi r3, r3, 8
/* 80032350 0002F2B0  42 00 FF F8 */	bdnz lbl_80032348
lbl_80032354:
/* 80032354 0002F2B4  3C 80 80 1B */	lis r4, FH_TO_FAT@ha
/* 80032358 0002F2B8  80 0D 89 F4 */	lwz r0, USEFAT_TAIL-_SDA_BASE_(r13)
/* 8003235C 0002F2BC  55 05 13 BA */	rlwinm r5, r8, 2, 0xe, 0x1d
/* 80032360 0002F2C0  7D 03 43 78 */	mr r3, r8
/* 80032364 0002F2C4  38 84 AB C8 */	addi r4, r4, FH_TO_FAT@l
/* 80032368 0002F2C8  7C 00 3A 14 */	add r0, r0, r7
/* 8003236C 0002F2CC  7C C4 2B 2E */	sthx r6, r4, r5
/* 80032370 0002F2D0  7C 84 2A 14 */	add r4, r4, r5
/* 80032374 0002F2D4  B0 E4 00 02 */	sth r7, 2(r4)
/* 80032378 0002F2D8  90 0D 89 F4 */	stw r0, USEFAT_TAIL-_SDA_BASE_(r13)
/* 8003237C 0002F2DC  4E 80 00 20 */	blr 

.global FAT_FreeMemory__FUs
FAT_FreeMemory__FUs:
/* 80032380 0002F2E0  94 21 F7 D0 */	stwu r1, -0x830(r1)
/* 80032384 0002F2E4  7C 08 02 A6 */	mflr r0
/* 80032388 0002F2E8  90 01 08 34 */	stw r0, 0x834(r1)
/* 8003238C 0002F2EC  39 61 08 30 */	addi r11, r1, 0x830
/* 80032390 0002F2F0  48 06 8B 29 */	bl func_8009AEB8
/* 80032394 0002F2F4  3C 80 80 1B */	lis r4, FH_TO_FAT@ha
/* 80032398 0002F2F8  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 8003239C 0002F2FC  38 84 AB C8 */	addi r4, r4, FH_TO_FAT@l
/* 800323A0 0002F300  80 6D 89 F4 */	lwz r3, USEFAT_TAIL-_SDA_BASE_(r13)
/* 800323A4 0002F304  7C A4 02 14 */	add r5, r4, r0
/* 800323A8 0002F308  7F C4 02 2E */	lhzx r30, r4, r0
/* 800323AC 0002F30C  A3 65 00 02 */	lhz r27, 2(r5)
/* 800323B0 0002F310  3A C0 00 00 */	li r22, 0
/* 800323B4 0002F314  7C 1E DA 14 */	add r0, r30, r27
/* 800323B8 0002F318  B2 C5 00 02 */	sth r22, 2(r5)
/* 800323BC 0002F31C  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 800323C0 0002F320  7C 1D 18 50 */	subf r0, r29, r3
/* 800323C4 0002F324  54 1A 04 3F */	clrlwi. r26, r0, 0x10
/* 800323C8 0002F328  40 82 00 4C */	bne lbl_80032414
/* 800323CC 0002F32C  7C BB 18 50 */	subf r5, r27, r3
/* 800323D0 0002F330  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 800323D4 0002F334  3C 60 80 1B */	lis r3, FAT@ha
/* 800323D8 0002F338  90 AD 89 F4 */	stw r5, USEFAT_TAIL-_SDA_BASE_(r13)
/* 800323DC 0002F33C  38 84 FF FF */	addi r4, r4, 0x0000FFFF@l
/* 800323E0 0002F340  38 C0 00 00 */	li r6, 0
/* 800323E4 0002F344  38 63 AF C8 */	addi r3, r3, FAT@l
/* 800323E8 0002F348  7F 69 03 A6 */	mtctr r27
/* 800323EC 0002F34C  28 1B 00 00 */	cmplwi r27, 0
/* 800323F0 0002F350  40 81 00 1C */	ble lbl_8003240C
/* 800323F4 0002F354  60 00 00 00 */	nop 
lbl_800323F8:
/* 800323F8 0002F358  7C 05 32 14 */	add r0, r5, r6
/* 800323FC 0002F35C  38 C6 00 01 */	addi r6, r6, 1
/* 80032400 0002F360  54 00 18 38 */	slwi r0, r0, 3
/* 80032404 0002F364  7C 83 03 2E */	sthx r4, r3, r0
/* 80032408 0002F368  42 00 FF F0 */	bdnz lbl_800323F8
lbl_8003240C:
/* 8003240C 0002F36C  38 60 00 00 */	li r3, 0
/* 80032410 0002F370  48 00 01 08 */	b lbl_80032518
lbl_80032414:
/* 80032414 0002F374  3C 80 80 1B */	lis r4, FAT@ha
/* 80032418 0002F378  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 8003241C 0002F37C  7E DC B3 78 */	mr r28, r22
/* 80032420 0002F380  3B 24 AF C8 */	addi r25, r4, FAT@l
/* 80032424 0002F384  3B 03 FF FF */	addi r24, r3, 0x0000FFFF@l
/* 80032428 0002F388  48 00 00 30 */	b lbl_80032458
/* 8003242C 0002F38C  60 00 00 00 */	nop 
lbl_80032430:
/* 80032430 0002F390  3B E1 00 08 */	addi r31, r1, 8
/* 80032434 0002F394  7C 1E B2 14 */	add r0, r30, r22
/* 80032438 0002F398  7F FF E2 14 */	add r31, r31, r28
/* 8003243C 0002F39C  54 00 18 38 */	slwi r0, r0, 3
/* 80032440 0002F3A0  7F E3 FB 78 */	mr r3, r31
/* 80032444 0002F3A4  7C 99 02 14 */	add r4, r25, r0
/* 80032448 0002F3A8  48 00 00 F9 */	bl __as__4FAT_FRC4FAT_
/* 8003244C 0002F3AC  B3 1F 00 00 */	sth r24, 0(r31)
/* 80032450 0002F3B0  3A D6 00 01 */	addi r22, r22, 1
/* 80032454 0002F3B4  3B 9C 00 08 */	addi r28, r28, 8
lbl_80032458:
/* 80032458 0002F3B8  7C 16 D8 40 */	cmplw r22, r27
/* 8003245C 0002F3BC  41 80 FF D4 */	blt lbl_80032430
/* 80032460 0002F3C0  3C A0 00 01 */	lis r5, 0x0000FFFF@ha
/* 80032464 0002F3C4  3C 80 80 1B */	lis r4, FAT@ha
/* 80032468 0002F3C8  3C 60 80 1B */	lis r3, FH_TO_FAT@ha
/* 8003246C 0002F3CC  3B E0 00 00 */	li r31, 0
/* 80032470 0002F3D0  3B 85 FF FF */	addi r28, r5, 0x0000FFFF@l
/* 80032474 0002F3D4  3B 04 AF C8 */	addi r24, r4, FAT@l
/* 80032478 0002F3D8  3B 23 AB C8 */	addi r25, r3, FH_TO_FAT@l
/* 8003247C 0002F3DC  48 00 00 44 */	b lbl_800324C0
lbl_80032480:
/* 80032480 0002F3E0  7C 1D FA 14 */	add r0, r29, r31
/* 80032484 0002F3E4  7E DE FA 14 */	add r22, r30, r31
/* 80032488 0002F3E8  54 00 18 38 */	slwi r0, r0, 3
/* 8003248C 0002F3EC  56 C3 18 38 */	slwi r3, r22, 3
/* 80032490 0002F3F0  7E F8 02 14 */	add r23, r24, r0
/* 80032494 0002F3F4  7E E4 BB 78 */	mr r4, r23
/* 80032498 0002F3F8  7C 78 1A 14 */	add r3, r24, r3
/* 8003249C 0002F3FC  48 00 00 A5 */	bl __as__4FAT_FRC4FAT_
/* 800324A0 0002F400  A0 77 00 00 */	lhz r3, 0(r23)
/* 800324A4 0002F404  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 800324A8 0002F408  7C 00 18 40 */	cmplw r0, r3
/* 800324AC 0002F40C  41 82 00 10 */	beq lbl_800324BC
/* 800324B0 0002F410  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 800324B4 0002F414  7C 7C 1B 78 */	mr r28, r3
/* 800324B8 0002F418  7E D9 03 2E */	sthx r22, r25, r0
lbl_800324BC:
/* 800324BC 0002F41C  3B FF 00 01 */	addi r31, r31, 1
lbl_800324C0:
/* 800324C0 0002F420  7C 1F D0 40 */	cmplw r31, r26
/* 800324C4 0002F424  41 80 FF BC */	blt lbl_80032480
/* 800324C8 0002F428  80 0D 89 F4 */	lwz r0, USEFAT_TAIL-_SDA_BASE_(r13)
/* 800324CC 0002F42C  3C 60 80 1B */	lis r3, FAT@ha
/* 800324D0 0002F430  3B 83 AF C8 */	addi r28, r3, FAT@l
/* 800324D4 0002F434  3A C0 00 00 */	li r22, 0
/* 800324D8 0002F438  7C 1B 00 50 */	subf r0, r27, r0
/* 800324DC 0002F43C  3B 40 00 00 */	li r26, 0
/* 800324E0 0002F440  90 0D 89 F4 */	stw r0, USEFAT_TAIL-_SDA_BASE_(r13)
/* 800324E4 0002F444  48 00 00 28 */	b lbl_8003250C
lbl_800324E8:
/* 800324E8 0002F448  80 0D 89 F4 */	lwz r0, USEFAT_TAIL-_SDA_BASE_(r13)
/* 800324EC 0002F44C  38 81 00 08 */	addi r4, r1, 8
/* 800324F0 0002F450  7C 84 D2 14 */	add r4, r4, r26
/* 800324F4 0002F454  7C 00 B2 14 */	add r0, r0, r22
/* 800324F8 0002F458  54 00 18 38 */	slwi r0, r0, 3
/* 800324FC 0002F45C  7C 7C 02 14 */	add r3, r28, r0
/* 80032500 0002F460  48 00 00 41 */	bl __as__4FAT_FRC4FAT_
/* 80032504 0002F464  3A D6 00 01 */	addi r22, r22, 1
/* 80032508 0002F468  3B 5A 00 08 */	addi r26, r26, 8
lbl_8003250C:
/* 8003250C 0002F46C  7C 16 D8 40 */	cmplw r22, r27
/* 80032510 0002F470  41 80 FF D8 */	blt lbl_800324E8
/* 80032514 0002F474  38 60 00 00 */	li r3, 0
lbl_80032518:
/* 80032518 0002F478  39 61 08 30 */	addi r11, r1, 0x830
/* 8003251C 0002F47C  48 06 89 E9 */	bl func_8009AF04
/* 80032520 0002F480  80 01 08 34 */	lwz r0, 0x834(r1)
/* 80032524 0002F484  7C 08 03 A6 */	mtlr r0
/* 80032528 0002F488  38 21 08 30 */	addi r1, r1, 0x830
/* 8003252C 0002F48C  4E 80 00 20 */	blr 
/* 80032530 0002F490  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032534 0002F494  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032538 0002F498  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003253C 0002F49C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global __as__4FAT_FRC4FAT_
__as__4FAT_FRC4FAT_:
/* 80032540 0002F4A0  A0 04 00 00 */	lhz r0, 0(r4)
/* 80032544 0002F4A4  B0 03 00 00 */	sth r0, 0(r3)
/* 80032548 0002F4A8  A0 04 00 02 */	lhz r0, 2(r4)
/* 8003254C 0002F4AC  B0 03 00 02 */	sth r0, 2(r3)
/* 80032550 0002F4B0  80 04 00 04 */	lwz r0, 4(r4)
/* 80032554 0002F4B4  90 03 00 04 */	stw r0, 4(r3)
/* 80032558 0002F4B8  4E 80 00 20 */	blr 
/* 8003255C 0002F4BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global FAT_GetPointer__FUsUl
FAT_GetPointer__FUsUl:
/* 80032560 0002F4C0  3C A0 80 1B */	lis r5, FH_TO_FAT@ha
/* 80032564 0002F4C4  54 66 13 BA */	rlwinm r6, r3, 2, 0xe, 0x1d
/* 80032568 0002F4C8  38 A5 AB C8 */	addi r5, r5, FH_TO_FAT@l
/* 8003256C 0002F4CC  54 87 A3 3E */	srwi r7, r4, 0xc
/* 80032570 0002F4D0  7C 65 32 14 */	add r3, r5, r6
/* 80032574 0002F4D4  A0 03 00 02 */	lhz r0, 2(r3)
/* 80032578 0002F4D8  7C 00 38 40 */	cmplw r0, r7
/* 8003257C 0002F4DC  41 81 00 0C */	bgt lbl_80032588
/* 80032580 0002F4E0  38 60 00 00 */	li r3, 0
/* 80032584 0002F4E4  4E 80 00 20 */	blr 
lbl_80032588:
/* 80032588 0002F4E8  7C 65 32 2E */	lhzx r3, r5, r6
/* 8003258C 0002F4EC  3C A0 80 1B */	lis r5, FAT@ha
/* 80032590 0002F4F0  38 A5 AF C8 */	addi r5, r5, FAT@l
/* 80032594 0002F4F4  54 80 05 3E */	clrlwi r0, r4, 0x14
/* 80032598 0002F4F8  7C 67 1A 14 */	add r3, r7, r3
/* 8003259C 0002F4FC  54 63 18 38 */	slwi r3, r3, 3
/* 800325A0 0002F500  7C 65 1A 14 */	add r3, r5, r3
/* 800325A4 0002F504  80 63 00 04 */	lwz r3, 4(r3)
/* 800325A8 0002F508  7C 63 02 14 */	add r3, r3, r0
/* 800325AC 0002F50C  4E 80 00 20 */	blr 
/* 800325B0 0002F510  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800325B4 0002F514  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800325B8 0002F518  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800325BC 0002F51C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global FAT_ReadByte__FUsUl
FAT_ReadByte__FUsUl:
/* 800325C0 0002F520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800325C4 0002F524  7C 08 02 A6 */	mflr r0
/* 800325C8 0002F528  90 01 00 14 */	stw r0, 0x14(r1)
/* 800325CC 0002F52C  4B FF FF 95 */	bl FAT_GetPointer__FUsUl
/* 800325D0 0002F530  28 03 00 00 */	cmplwi r3, 0
/* 800325D4 0002F534  40 82 00 0C */	bne lbl_800325E0
/* 800325D8 0002F538  38 60 00 00 */	li r3, 0
/* 800325DC 0002F53C  48 00 00 08 */	b lbl_800325E4
lbl_800325E0:
/* 800325E0 0002F540  88 63 00 00 */	lbz r3, 0(r3)
lbl_800325E4:
/* 800325E4 0002F544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800325E8 0002F548  7C 08 03 A6 */	mtlr r0
/* 800325EC 0002F54C  38 21 00 10 */	addi r1, r1, 0x10
/* 800325F0 0002F550  4E 80 00 20 */	blr 
/* 800325F4 0002F554  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800325F8 0002F558  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800325FC 0002F55C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global FAT_StoreBlock__FPUcUsUlUl
FAT_StoreBlock__FPUcUsUlUl:
/* 80032600 0002F560  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80032604 0002F564  7C 08 02 A6 */	mflr r0
/* 80032608 0002F568  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003260C 0002F56C  39 61 00 20 */	addi r11, r1, 0x20
/* 80032610 0002F570  48 06 88 BD */	bl func_8009AECC
/* 80032614 0002F574  7C 9C 23 78 */	mr r28, r4
/* 80032618 0002F578  7C BD 2B 78 */	mr r29, r5
/* 8003261C 0002F57C  7C 7B 1B 78 */	mr r27, r3
/* 80032620 0002F580  7C DE 33 78 */	mr r30, r6
/* 80032624 0002F584  7F 83 E3 78 */	mr r3, r28
/* 80032628 0002F588  7F A4 EB 78 */	mr r4, r29
/* 8003262C 0002F58C  4B FF FF 35 */	bl FAT_GetPointer__FUsUl
/* 80032630 0002F590  7F BF EB 78 */	mr r31, r29
/* 80032634 0002F594  57 BD 05 3E */	clrlwi r29, r29, 0x14
/* 80032638 0002F598  7C 64 1B 78 */	mr r4, r3
/* 8003263C 0002F59C  7F FD F8 50 */	subf r31, r29, r31
/* 80032640 0002F5A0  48 00 00 3C */	b lbl_8003267C
lbl_80032644:
/* 80032644 0002F5A4  88 1B 00 00 */	lbz r0, 0(r27)
/* 80032648 0002F5A8  3B BD 00 01 */	addi r29, r29, 1
/* 8003264C 0002F5AC  28 1D 10 00 */	cmplwi r29, 0x1000
/* 80032650 0002F5B0  3B DE FF FF */	addi r30, r30, -1
/* 80032654 0002F5B4  98 04 00 00 */	stb r0, 0(r4)
/* 80032658 0002F5B8  38 84 00 01 */	addi r4, r4, 1
/* 8003265C 0002F5BC  3B 7B 00 01 */	addi r27, r27, 1
/* 80032660 0002F5C0  40 82 00 20 */	bne lbl_80032680
/* 80032664 0002F5C4  3B FF 10 00 */	addi r31, r31, 0x1000
/* 80032668 0002F5C8  7F 83 E3 78 */	mr r3, r28
/* 8003266C 0002F5CC  7F E4 FB 78 */	mr r4, r31
/* 80032670 0002F5D0  4B FF FE F1 */	bl FAT_GetPointer__FUsUl
/* 80032674 0002F5D4  7C 64 1B 78 */	mr r4, r3
/* 80032678 0002F5D8  48 00 00 40 */	b lbl_800326B8
lbl_8003267C:
/* 8003267C 0002F5DC  60 00 00 00 */	nop 
lbl_80032680:
/* 80032680 0002F5E0  28 1E 00 00 */	cmplwi r30, 0
/* 80032684 0002F5E4  40 82 FF C0 */	bne lbl_80032644
/* 80032688 0002F5E8  48 00 00 30 */	b lbl_800326B8
/* 8003268C 0002F5EC  60 00 00 00 */	nop 
lbl_80032690:
/* 80032690 0002F5F0  7F 63 DB 78 */	mr r3, r27
/* 80032694 0002F5F4  38 A0 10 00 */	li r5, 0x1000
/* 80032698 0002F5F8  4B FE 60 29 */	bl Jac_bcopy__FPvPvl
/* 8003269C 0002F5FC  3B FF 10 00 */	addi r31, r31, 0x1000
/* 800326A0 0002F600  7F 83 E3 78 */	mr r3, r28
/* 800326A4 0002F604  7F E4 FB 78 */	mr r4, r31
/* 800326A8 0002F608  3B DE F0 00 */	addi r30, r30, -4096
/* 800326AC 0002F60C  3B 7B 10 00 */	addi r27, r27, 0x1000
/* 800326B0 0002F610  4B FF FE B1 */	bl FAT_GetPointer__FUsUl
/* 800326B4 0002F614  7C 64 1B 78 */	mr r4, r3
lbl_800326B8:
/* 800326B8 0002F618  28 1E 10 00 */	cmplwi r30, 0x1000
/* 800326BC 0002F61C  40 80 FF D4 */	bge lbl_80032690
/* 800326C0 0002F620  28 1E 00 00 */	cmplwi r30, 0
/* 800326C4 0002F624  41 82 00 10 */	beq lbl_800326D4
/* 800326C8 0002F628  7F 63 DB 78 */	mr r3, r27
/* 800326CC 0002F62C  7F C5 F3 78 */	mr r5, r30
/* 800326D0 0002F630  4B FE 5F F1 */	bl Jac_bcopy__FPvPvl
lbl_800326D4:
/* 800326D4 0002F634  38 60 00 00 */	li r3, 0
/* 800326D8 0002F638  39 61 00 20 */	addi r11, r1, 0x20
/* 800326DC 0002F63C  48 06 88 3D */	bl func_8009AF18
/* 800326E0 0002F640  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800326E4 0002F644  7C 08 03 A6 */	mtlr r0
/* 800326E8 0002F648  38 21 00 20 */	addi r1, r1, 0x20
/* 800326EC 0002F64C  4E 80 00 20 */	blr 
/* 800326F0 0002F650  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800326F4 0002F654  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800326F8 0002F658  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800326FC 0002F65C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
