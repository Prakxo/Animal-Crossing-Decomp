.include "macros.inc"

.section .text

.org 0x80030EC0

.global UpdateWave__FP12WaveArchive_P5Ctrl_Ul
UpdateWave__FP12WaveArchive_P5Ctrl_Ul:
/* 80030EC0 0002DE20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80030EC4 0002DE24  7C 08 02 A6 */	mflr r0
/* 80030EC8 0002DE28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80030ECC 0002DE2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80030ED0 0002DE30  48 06 9F FD */	bl func_8009AECC
/* 80030ED4 0002DE34  7C 7B 1B 78 */	mr r27, r3
/* 80030ED8 0002DE38  7C 9C 23 78 */	mr r28, r4
/* 80030EDC 0002DE3C  7C BD 2B 78 */	mr r29, r5
/* 80030EE0 0002DE40  3B C0 00 00 */	li r30, 0
/* 80030EE4 0002DE44  3B E0 00 00 */	li r31, 0
/* 80030EE8 0002DE48  48 00 00 58 */	b lbl_80030F40
lbl_80030EEC:
/* 80030EEC 0002DE4C  7C 1E EA 14 */	add r0, r30, r29
/* 80030EF0 0002DE50  38 9F 00 08 */	addi r4, r31, 8
/* 80030EF4 0002DE54  54 03 10 3A */	slwi r3, r0, 2
/* 80030EF8 0002DE58  7C 9C 20 2E */	lwzx r4, r28, r4
/* 80030EFC 0002DE5C  38 03 00 74 */	addi r0, r3, 0x74
/* 80030F00 0002DE60  7C 1B 00 2E */	lwzx r0, r27, r0
/* 80030F04 0002DE64  90 04 00 34 */	stw r0, 0x34(r4)
/* 80030F08 0002DE68  80 DB 00 48 */	lwz r6, 0x48(r27)
/* 80030F0C 0002DE6C  28 06 00 00 */	cmplwi r6, 0
/* 80030F10 0002DE70  41 82 00 28 */	beq lbl_80030F38
/* 80030F14 0002DE74  80 E4 00 34 */	lwz r7, 0x34(r4)
/* 80030F18 0002DE78  38 64 00 04 */	addi r3, r4, 4
/* 80030F1C 0002DE7C  38 9B 00 40 */	addi r4, r27, 0x40
/* 80030F20 0002DE80  80 A7 00 0C */	lwz r5, 0xc(r7)
/* 80030F24 0002DE84  80 07 00 08 */	lwz r0, 8(r7)
/* 80030F28 0002DE88  38 A5 00 1F */	addi r5, r5, 0x1f
/* 80030F2C 0002DE8C  54 A5 00 34 */	rlwinm r5, r5, 0, 0, 0x1a
/* 80030F30 0002DE90  7C C6 02 14 */	add r6, r6, r0
/* 80030F34 0002DE94  48 00 1A 0D */	bl Jac_SelfAllocHeap__FP7jaheap_P7jaheap_UlUl
lbl_80030F38:
/* 80030F38 0002DE98  3B DE 00 01 */	addi r30, r30, 1
/* 80030F3C 0002DE9C  3B FF 00 04 */	addi r31, r31, 4
lbl_80030F40:
/* 80030F40 0002DEA0  80 1C 00 04 */	lwz r0, 4(r28)
/* 80030F44 0002DEA4  7C 1E 00 40 */	cmplw r30, r0
/* 80030F48 0002DEA8  41 80 FF A4 */	blt lbl_80030EEC
/* 80030F4C 0002DEAC  7C 7E EA 14 */	add r3, r30, r29
/* 80030F50 0002DEB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80030F54 0002DEB4  48 06 9F C5 */	bl func_8009AF18
/* 80030F58 0002DEB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80030F5C 0002DEBC  7C 08 03 A6 */	mtlr r0
/* 80030F60 0002DEC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80030F64 0002DEC4  4E 80 00 20 */	blr 
/* 80030F68 0002DEC8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80030F6C 0002DECC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80030F70 0002DED0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80030F74 0002DED4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80030F78 0002DED8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80030F7C 0002DEDC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global UpdateWave_Extern__FP16WaveArchiveBank_P10CtrlGroup_P5Ctrl_
UpdateWave_Extern__FP16WaveArchiveBank_P10CtrlGroup_P5Ctrl_:
/* 80030F80 0002DEE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80030F84 0002DEE4  7C 08 02 A6 */	mflr r0
/* 80030F88 0002DEE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80030F8C 0002DEEC  39 61 00 30 */	addi r11, r1, 0x30
/* 80030F90 0002DEF0  48 06 9F 31 */	bl func_8009AEC0
/* 80030F94 0002DEF4  7C 7A 1B 78 */	mr r26, r3
/* 80030F98 0002DEF8  7C 9B 23 78 */	mr r27, r4
/* 80030F9C 0002DEFC  7C BC 2B 78 */	mr r28, r5
/* 80030FA0 0002DF00  3B C0 00 00 */	li r30, 0
/* 80030FA4 0002DF04  3B 20 00 00 */	li r25, 0
/* 80030FA8 0002DF08  48 00 01 1C */	b lbl_800310C4
lbl_80030FAC:
/* 80030FAC 0002DF0C  38 19 00 08 */	addi r0, r25, 8
/* 80030FB0 0002DF10  7F FC 00 2E */	lwzx r31, r28, r0
/* 80030FB4 0002DF14  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80030FB8 0002DF18  80 7F 00 00 */	lwz r3, 0(r31)
/* 80030FBC 0002DF1C  28 00 00 00 */	cmplwi r0, 0
/* 80030FC0 0002DF20  54 60 84 3E */	srwi r0, r3, 0x10
/* 80030FC4 0002DF24  54 67 04 3E */	clrlwi r7, r3, 0x10
/* 80030FC8 0002DF28  40 82 00 F4 */	bne lbl_800310BC
/* 80030FCC 0002DF2C  54 06 10 3A */	slwi r6, r0, 2
/* 80030FD0 0002DF30  39 00 00 00 */	li r8, 0
/* 80030FD4 0002DF34  38 06 00 0C */	addi r0, r6, 0xc
/* 80030FD8 0002DF38  38 60 00 00 */	li r3, 0
/* 80030FDC 0002DF3C  7C 9B 00 2E */	lwzx r4, r27, r0
/* 80030FE0 0002DF40  83 A4 00 0C */	lwz r29, 0xc(r4)
/* 80030FE4 0002DF44  80 BD 00 04 */	lwz r5, 4(r29)
/* 80030FE8 0002DF48  7C A9 03 A6 */	mtctr r5
/* 80030FEC 0002DF4C  28 05 00 00 */	cmplwi r5, 0
/* 80030FF0 0002DF50  40 81 00 2C */	ble lbl_8003101C
/* 80030FF4 0002DF54  60 00 00 00 */	nop 
lbl_80030FF8:
/* 80030FF8 0002DF58  38 03 00 08 */	addi r0, r3, 8
/* 80030FFC 0002DF5C  7C 9D 00 2E */	lwzx r4, r29, r0
/* 80031000 0002DF60  80 04 00 00 */	lwz r0, 0(r4)
/* 80031004 0002DF64  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80031008 0002DF68  7C 00 38 40 */	cmplw r0, r7
/* 8003100C 0002DF6C  41 82 00 10 */	beq lbl_8003101C
/* 80031010 0002DF70  39 08 00 01 */	addi r8, r8, 1
/* 80031014 0002DF74  38 63 00 04 */	addi r3, r3, 4
/* 80031018 0002DF78  42 00 FF E0 */	bdnz lbl_80030FF8
lbl_8003101C:
/* 8003101C 0002DF7C  7C 08 28 40 */	cmplw r8, r5
/* 80031020 0002DF80  41 82 00 9C */	beq lbl_800310BC
/* 80031024 0002DF84  55 04 10 3A */	slwi r4, r8, 2
/* 80031028 0002DF88  3B 04 00 08 */	addi r24, r4, 8
/* 8003102C 0002DF8C  7C 7D C0 2E */	lwzx r3, r29, r24
/* 80031030 0002DF90  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80031034 0002DF94  28 00 00 00 */	cmplwi r0, 0
/* 80031038 0002DF98  41 82 00 38 */	beq lbl_80031070
/* 8003103C 0002DF9C  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80031040 0002DFA0  38 7F 00 04 */	addi r3, r31, 4
/* 80031044 0002DFA4  38 A0 00 00 */	li r5, 0
/* 80031048 0002DFA8  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8003104C 0002DFAC  7C DD C0 2E */	lwzx r6, r29, r24
/* 80031050 0002DFB0  80 86 00 0C */	lwz r4, 0xc(r6)
/* 80031054 0002DFB4  88 C6 00 05 */	lbz r6, 5(r6)
/* 80031058 0002DFB8  48 00 18 A9 */	bl Jac_SelfInitHeap__FP7jaheap_UlUlUl
/* 8003105C 0002DFBC  7C 9D C0 2E */	lwzx r4, r29, r24
/* 80031060 0002DFC0  38 7F 00 04 */	addi r3, r31, 4
/* 80031064 0002DFC4  38 84 00 04 */	addi r4, r4, 4
/* 80031068 0002DFC8  48 00 19 F9 */	bl Jac_SetGroupHeap__FP7jaheap_P7jaheap_
/* 8003106C 0002DFCC  48 00 00 50 */	b lbl_800310BC
lbl_80031070:
/* 80031070 0002DFD0  38 06 00 08 */	addi r0, r6, 8
/* 80031074 0002DFD4  38 64 00 74 */	addi r3, r4, 0x74
/* 80031078 0002DFD8  7F 1A 00 2E */	lwzx r24, r26, r0
/* 8003107C 0002DFDC  38 00 00 00 */	li r0, 0
/* 80031080 0002DFE0  38 DF 00 30 */	addi r6, r31, 0x30
/* 80031084 0002DFE4  38 FF 00 04 */	addi r7, r31, 4
/* 80031088 0002DFE8  7C 98 18 2E */	lwzx r4, r24, r3
/* 8003108C 0002DFEC  7F 03 C3 78 */	mr r3, r24
/* 80031090 0002DFF0  90 9F 00 34 */	stw r4, 0x34(r31)
/* 80031094 0002DFF4  90 1F 00 30 */	stw r0, 0x30(r31)
/* 80031098 0002DFF8  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 8003109C 0002DFFC  90 C4 00 24 */	stw r6, 0x24(r4)
/* 800310A0 0002E000  80 BF 00 34 */	lwz r5, 0x34(r31)
/* 800310A4 0002E004  80 85 00 08 */	lwz r4, 8(r5)
/* 800310A8 0002E008  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 800310AC 0002E00C  48 00 0F D5 */	bl LoadAram_One__FPcUlUlPUlP7jaheap_
/* 800310B0 0002E010  38 7F 00 04 */	addi r3, r31, 4
/* 800310B4 0002E014  38 98 00 40 */	addi r4, r24, 0x40
/* 800310B8 0002E018  48 00 19 A9 */	bl Jac_SetGroupHeap__FP7jaheap_P7jaheap_
lbl_800310BC:
/* 800310BC 0002E01C  3B DE 00 01 */	addi r30, r30, 1
/* 800310C0 0002E020  3B 39 00 04 */	addi r25, r25, 4
lbl_800310C4:
/* 800310C4 0002E024  80 1C 00 04 */	lwz r0, 4(r28)
/* 800310C8 0002E028  7C 1E 00 40 */	cmplw r30, r0
/* 800310CC 0002E02C  41 80 FE E0 */	blt lbl_80030FAC
/* 800310D0 0002E030  38 60 00 01 */	li r3, 1
/* 800310D4 0002E034  39 61 00 30 */	addi r11, r1, 0x30
/* 800310D8 0002E038  48 06 9E 35 */	bl func_8009AF0C
/* 800310DC 0002E03C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800310E0 0002E040  7C 08 03 A6 */	mtlr r0
/* 800310E4 0002E044  38 21 00 30 */	addi r1, r1, 0x30
/* 800310E8 0002E048  4E 80 00 20 */	blr 
/* 800310EC 0002E04C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800310F0 0002E050  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800310F4 0002E054  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800310F8 0002E058  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800310FC 0002E05C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_SceneSet__FP16WaveArchiveBank_P10CtrlGroup_Uli
Jac_SceneSet__FP16WaveArchiveBank_P10CtrlGroup_Uli:
/* 80031100 0002E060  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80031104 0002E064  7C 08 02 A6 */	mflr r0
/* 80031108 0002E068  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003110C 0002E06C  39 61 00 30 */	addi r11, r1, 0x30
/* 80031110 0002E070  48 06 9D B5 */	bl func_8009AEC4
/* 80031114 0002E074  7C BB 2B 78 */	mr r27, r5
/* 80031118 0002E078  7C 79 1B 78 */	mr r25, r3
/* 8003111C 0002E07C  54 BF 10 3A */	slwi r31, r5, 2
/* 80031120 0002E080  7C 9A 23 78 */	mr r26, r4
/* 80031124 0002E084  7C 79 FA 14 */	add r3, r25, r31
/* 80031128 0002E088  7C DC 33 78 */	mr r28, r6
/* 8003112C 0002E08C  83 C3 00 08 */	lwz r30, 8(r3)
/* 80031130 0002E090  3B A0 00 00 */	li r29, 0
/* 80031134 0002E094  80 1E 00 48 */	lwz r0, 0x48(r30)
/* 80031138 0002E098  28 00 00 00 */	cmplwi r0, 0
/* 8003113C 0002E09C  41 82 00 48 */	beq lbl_80031184
/* 80031140 0002E0A0  80 1E 00 6C */	lwz r0, 0x6c(r30)
/* 80031144 0002E0A4  28 00 00 00 */	cmplwi r0, 0
/* 80031148 0002E0A8  41 82 00 3C */	beq lbl_80031184
/* 8003114C 0002E0AC  38 BE 00 6C */	addi r5, r30, 0x6c
/* 80031150 0002E0B0  38 C0 00 00 */	li r6, 0
/* 80031154 0002E0B4  38 60 00 00 */	li r3, 0
/* 80031158 0002E0B8  48 00 00 1C */	b lbl_80031174
/* 8003115C 0002E0BC  60 00 00 00 */	nop 
lbl_80031160:
/* 80031160 0002E0C0  38 03 00 74 */	addi r0, r3, 0x74
/* 80031164 0002E0C4  38 C6 00 01 */	addi r6, r6, 1
/* 80031168 0002E0C8  7C 9E 00 2E */	lwzx r4, r30, r0
/* 8003116C 0002E0CC  38 63 00 04 */	addi r3, r3, 4
/* 80031170 0002E0D0  90 A4 00 24 */	stw r5, 0x24(r4)
lbl_80031174:
/* 80031174 0002E0D4  80 1E 00 70 */	lwz r0, 0x70(r30)
/* 80031178 0002E0D8  7C 06 00 40 */	cmplw r6, r0
/* 8003117C 0002E0DC  41 80 FF E4 */	blt lbl_80031160
/* 80031180 0002E0E0  48 00 00 58 */	b lbl_800311D8
lbl_80031184:
/* 80031184 0002E0E4  38 C0 00 00 */	li r6, 0
/* 80031188 0002E0E8  38 BE 00 6C */	addi r5, r30, 0x6c
/* 8003118C 0002E0EC  90 DE 00 6C */	stw r6, 0x6c(r30)
/* 80031190 0002E0F0  38 60 00 00 */	li r3, 0
/* 80031194 0002E0F4  48 00 00 18 */	b lbl_800311AC
lbl_80031198:
/* 80031198 0002E0F8  38 03 00 74 */	addi r0, r3, 0x74
/* 8003119C 0002E0FC  38 C6 00 01 */	addi r6, r6, 1
/* 800311A0 0002E100  7C 9E 00 2E */	lwzx r4, r30, r0
/* 800311A4 0002E104  38 63 00 04 */	addi r3, r3, 4
/* 800311A8 0002E108  90 A4 00 24 */	stw r5, 0x24(r4)
lbl_800311AC:
/* 800311AC 0002E10C  80 1E 00 70 */	lwz r0, 0x70(r30)
/* 800311B0 0002E110  7C 06 00 40 */	cmplw r6, r0
/* 800311B4 0002E114  41 80 FF E4 */	blt lbl_80031198
/* 800311B8 0002E118  7F C3 F3 78 */	mr r3, r30
/* 800311BC 0002E11C  38 9E 00 6C */	addi r4, r30, 0x6c
/* 800311C0 0002E120  38 BE 00 40 */	addi r5, r30, 0x40
/* 800311C4 0002E124  48 00 0E 7D */	bl LoadAram_All__FPcPUlP7jaheap_
/* 800311C8 0002E128  28 03 00 00 */	cmplwi r3, 0
/* 800311CC 0002E12C  40 82 00 0C */	bne lbl_800311D8
/* 800311D0 0002E130  38 60 00 00 */	li r3, 0
/* 800311D4 0002E134  48 00 00 70 */	b lbl_80031244
lbl_800311D8:
/* 800311D8 0002E138  7C 7A FA 14 */	add r3, r26, r31
/* 800311DC 0002E13C  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 800311E0 0002E140  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 800311E4 0002E144  28 04 00 00 */	cmplwi r4, 0
/* 800311E8 0002E148  41 82 00 14 */	beq lbl_800311FC
/* 800311EC 0002E14C  7F C3 F3 78 */	mr r3, r30
/* 800311F0 0002E150  38 A0 00 00 */	li r5, 0
/* 800311F4 0002E154  4B FF FC CD */	bl UpdateWave__FP12WaveArchive_P5Ctrl_Ul
/* 800311F8 0002E158  7C 7D 1B 78 */	mr r29, r3
lbl_800311FC:
/* 800311FC 0002E15C  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 80031200 0002E160  28 05 00 00 */	cmplwi r5, 0
/* 80031204 0002E164  41 82 00 30 */	beq lbl_80031234
/* 80031208 0002E168  80 1F 00 04 */	lwz r0, 4(r31)
/* 8003120C 0002E16C  28 00 00 00 */	cmplwi r0, 0
/* 80031210 0002E170  40 82 00 18 */	bne lbl_80031228
/* 80031214 0002E174  7F C3 F3 78 */	mr r3, r30
/* 80031218 0002E178  7C A4 2B 78 */	mr r4, r5
/* 8003121C 0002E17C  7F A5 EB 78 */	mr r5, r29
/* 80031220 0002E180  4B FF FC A1 */	bl UpdateWave__FP12WaveArchive_P5Ctrl_Ul
/* 80031224 0002E184  48 00 00 10 */	b lbl_80031234
lbl_80031228:
/* 80031228 0002E188  7F 23 CB 78 */	mr r3, r25
/* 8003122C 0002E18C  7F 44 D3 78 */	mr r4, r26
/* 80031230 0002E190  4B FF FD 51 */	bl UpdateWave_Extern__FP16WaveArchiveBank_P10CtrlGroup_P5Ctrl_
lbl_80031234:
/* 80031234 0002E194  2C 1C 00 00 */	cmpwi r28, 0
/* 80031238 0002E198  41 82 00 08 */	beq lbl_80031240
/* 8003123C 0002E19C  93 7A 00 04 */	stw r27, 4(r26)
lbl_80031240:
/* 80031240 0002E1A0  38 60 00 01 */	li r3, 1
lbl_80031244:
/* 80031244 0002E1A4  39 61 00 30 */	addi r11, r1, 0x30
/* 80031248 0002E1A8  48 06 9C C9 */	bl func_8009AF10
/* 8003124C 0002E1AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80031250 0002E1B0  7C 08 03 A6 */	mtlr r0
/* 80031254 0002E1B4  38 21 00 30 */	addi r1, r1, 0x30
/* 80031258 0002E1B8  4E 80 00 20 */	blr 
/* 8003125C 0002E1BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global SearchWave__FP5Ctrl_Ul
SearchWave__FP5Ctrl_Ul:
/* 80031260 0002E1C0  80 03 00 04 */	lwz r0, 4(r3)
/* 80031264 0002E1C4  38 A0 00 00 */	li r5, 0
/* 80031268 0002E1C8  7C 09 03 A6 */	mtctr r0
/* 8003126C 0002E1CC  28 00 00 00 */	cmplwi r0, 0
/* 80031270 0002E1D0  40 81 00 30 */	ble lbl_800312A0
/* 80031274 0002E1D4  60 00 00 00 */	nop 
lbl_80031278:
/* 80031278 0002E1D8  38 05 00 08 */	addi r0, r5, 8
/* 8003127C 0002E1DC  7C C3 00 2E */	lwzx r6, r3, r0
/* 80031280 0002E1E0  80 06 00 00 */	lwz r0, 0(r6)
/* 80031284 0002E1E4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80031288 0002E1E8  7C 00 20 40 */	cmplw r0, r4
/* 8003128C 0002E1EC  40 82 00 0C */	bne lbl_80031298
/* 80031290 0002E1F0  7C C3 33 78 */	mr r3, r6
/* 80031294 0002E1F4  4E 80 00 20 */	blr 
lbl_80031298:
/* 80031298 0002E1F8  38 A5 00 04 */	addi r5, r5, 4
/* 8003129C 0002E1FC  42 00 FF DC */	bdnz lbl_80031278
lbl_800312A0:
/* 800312A0 0002E200  38 60 00 00 */	li r3, 0
/* 800312A4 0002E204  4E 80 00 20 */	blr 
/* 800312A8 0002E208  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800312AC 0002E20C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800312B0 0002E210  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800312B4 0002E214  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800312B8 0002E218  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800312BC 0002E21C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global __GetSoundHandle__FP10CtrlGroup_UlUl
__GetSoundHandle__FP10CtrlGroup_UlUl:
/* 800312C0 0002E220  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800312C4 0002E224  7C 08 02 A6 */	mflr r0
/* 800312C8 0002E228  90 01 00 24 */	stw r0, 0x24(r1)
/* 800312CC 0002E22C  39 61 00 20 */	addi r11, r1, 0x20
/* 800312D0 0002E230  48 06 9B FD */	bl func_8009AECC
/* 800312D4 0002E234  7C 7B 1B 78 */	mr r27, r3
/* 800312D8 0002E238  54 A0 10 3A */	slwi r0, r5, 2
/* 800312DC 0002E23C  7C 7B 02 14 */	add r3, r27, r0
/* 800312E0 0002E240  7C 9C 23 78 */	mr r28, r4
/* 800312E4 0002E244  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 800312E8 0002E248  54 9F 04 3E */	clrlwi r31, r4, 0x10
/* 800312EC 0002E24C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 800312F0 0002E250  28 03 00 00 */	cmplwi r3, 0
/* 800312F4 0002E254  41 82 00 30 */	beq lbl_80031324
/* 800312F8 0002E258  7F E4 FB 78 */	mr r4, r31
/* 800312FC 0002E25C  4B FF FF 65 */	bl SearchWave__FP5Ctrl_Ul
/* 80031300 0002E260  28 03 00 00 */	cmplwi r3, 0
/* 80031304 0002E264  41 82 00 20 */	beq lbl_80031324
/* 80031308 0002E268  80 83 00 34 */	lwz r4, 0x34(r3)
/* 8003130C 0002E26C  28 04 00 00 */	cmplwi r4, 0
/* 80031310 0002E270  41 82 00 14 */	beq lbl_80031324
/* 80031314 0002E274  3C 04 00 01 */	addis r0, r4, 1
/* 80031318 0002E278  28 00 FF FF */	cmplwi r0, 0xffff
/* 8003131C 0002E27C  41 82 00 08 */	beq lbl_80031324
/* 80031320 0002E280  48 00 00 98 */	b lbl_800313B8
lbl_80031324:
/* 80031324 0002E284  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80031328 0002E288  28 03 00 00 */	cmplwi r3, 0
/* 8003132C 0002E28C  41 82 00 30 */	beq lbl_8003135C
/* 80031330 0002E290  7F E4 FB 78 */	mr r4, r31
/* 80031334 0002E294  4B FF FF 2D */	bl SearchWave__FP5Ctrl_Ul
/* 80031338 0002E298  28 03 00 00 */	cmplwi r3, 0
/* 8003133C 0002E29C  41 82 00 20 */	beq lbl_8003135C
/* 80031340 0002E2A0  80 83 00 34 */	lwz r4, 0x34(r3)
/* 80031344 0002E2A4  28 04 00 00 */	cmplwi r4, 0
/* 80031348 0002E2A8  41 82 00 14 */	beq lbl_8003135C
/* 8003134C 0002E2AC  3C 04 00 01 */	addis r0, r4, 1
/* 80031350 0002E2B0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80031354 0002E2B4  41 82 00 08 */	beq lbl_8003135C
/* 80031358 0002E2B8  48 00 00 60 */	b lbl_800313B8
lbl_8003135C:
/* 8003135C 0002E2BC  3B A0 00 00 */	li r29, 0
/* 80031360 0002E2C0  3B E0 00 00 */	li r31, 0
/* 80031364 0002E2C4  48 00 00 44 */	b lbl_800313A8
lbl_80031368:
/* 80031368 0002E2C8  38 1F 00 18 */	addi r0, r31, 0x18
/* 8003136C 0002E2CC  7F 63 DB 78 */	mr r3, r27
/* 80031370 0002E2D0  7C BE 00 2E */	lwzx r5, r30, r0
/* 80031374 0002E2D4  7F 84 E3 78 */	mr r4, r28
/* 80031378 0002E2D8  4B FF FF 49 */	bl __GetSoundHandle__FP10CtrlGroup_UlUl
/* 8003137C 0002E2DC  28 03 00 00 */	cmplwi r3, 0
/* 80031380 0002E2E0  41 82 00 20 */	beq lbl_800313A0
/* 80031384 0002E2E4  80 83 00 34 */	lwz r4, 0x34(r3)
/* 80031388 0002E2E8  28 04 00 00 */	cmplwi r4, 0
/* 8003138C 0002E2EC  41 82 00 14 */	beq lbl_800313A0
/* 80031390 0002E2F0  3C 04 00 01 */	addis r0, r4, 1
/* 80031394 0002E2F4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80031398 0002E2F8  41 82 00 08 */	beq lbl_800313A0
/* 8003139C 0002E2FC  48 00 00 1C */	b lbl_800313B8
lbl_800313A0:
/* 800313A0 0002E300  3B BD 00 01 */	addi r29, r29, 1
/* 800313A4 0002E304  3B FF 00 04 */	addi r31, r31, 4
lbl_800313A8:
/* 800313A8 0002E308  80 1E 00 08 */	lwz r0, 8(r30)
/* 800313AC 0002E30C  7C 1D 00 40 */	cmplw r29, r0
/* 800313B0 0002E310  41 80 FF B8 */	blt lbl_80031368
/* 800313B4 0002E314  38 60 00 00 */	li r3, 0
lbl_800313B8:
/* 800313B8 0002E318  39 61 00 20 */	addi r11, r1, 0x20
/* 800313BC 0002E31C  48 06 9B 5D */	bl func_8009AF18
/* 800313C0 0002E320  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800313C4 0002E324  7C 08 03 A6 */	mtlr r0
/* 800313C8 0002E328  38 21 00 20 */	addi r1, r1, 0x20
/* 800313CC 0002E32C  4E 80 00 20 */	blr 
/* 800313D0 0002E330  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800313D4 0002E334  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800313D8 0002E338  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800313DC 0002E33C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global GetSoundHandle__FP10CtrlGroup_Ul
GetSoundHandle__FP10CtrlGroup_Ul:
/* 800313E0 0002E340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800313E4 0002E344  7C 08 02 A6 */	mflr r0
/* 800313E8 0002E348  90 01 00 14 */	stw r0, 0x14(r1)
/* 800313EC 0002E34C  80 A3 00 04 */	lwz r5, 4(r3)
/* 800313F0 0002E350  4B FF FE D1 */	bl __GetSoundHandle__FP10CtrlGroup_UlUl
/* 800313F4 0002E354  28 03 00 00 */	cmplwi r3, 0
/* 800313F8 0002E358  40 82 00 0C */	bne lbl_80031404
/* 800313FC 0002E35C  38 60 00 00 */	li r3, 0
/* 80031400 0002E360  48 00 00 3C */	b lbl_8003143C
lbl_80031404:
/* 80031404 0002E364  80 83 00 34 */	lwz r4, 0x34(r3)
/* 80031408 0002E368  28 04 00 00 */	cmplwi r4, 0
/* 8003140C 0002E36C  40 82 00 0C */	bne lbl_80031418
/* 80031410 0002E370  38 60 00 00 */	li r3, 0
/* 80031414 0002E374  48 00 00 28 */	b lbl_8003143C
lbl_80031418:
/* 80031418 0002E378  80 84 00 24 */	lwz r4, 0x24(r4)
/* 8003141C 0002E37C  28 04 00 00 */	cmplwi r4, 0
/* 80031420 0002E380  40 82 00 0C */	bne lbl_8003142C
/* 80031424 0002E384  38 60 00 00 */	li r3, 0
/* 80031428 0002E388  48 00 00 14 */	b lbl_8003143C
lbl_8003142C:
/* 8003142C 0002E38C  80 04 00 00 */	lwz r0, 0(r4)
/* 80031430 0002E390  28 00 00 00 */	cmplwi r0, 0
/* 80031434 0002E394  40 82 00 08 */	bne lbl_8003143C
/* 80031438 0002E398  38 60 00 00 */	li r3, 0
lbl_8003143C:
/* 8003143C 0002E39C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031440 0002E3A0  7C 08 03 A6 */	mtlr r0
/* 80031444 0002E3A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80031448 0002E3A8  4E 80 00 20 */	blr 
/* 8003144C 0002E3AC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031450 0002E3B0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031454 0002E3B4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031458 0002E3B8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003145C 0002E3BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_WsVirtualToPhysical__FUs
Jac_WsVirtualToPhysical__FUs:
/* 80031460 0002E3C0  3C 80 80 1B */	lis r4, WS_V2P_TABLE@ha
/* 80031464 0002E3C4  54 60 0B FC */	rlwinm r0, r3, 1, 0xf, 0x1e
/* 80031468 0002E3C8  38 64 A3 C0 */	addi r3, r4, WS_V2P_TABLE@l
/* 8003146C 0002E3CC  7C 03 02 AE */	lhax r0, r3, r0
/* 80031470 0002E3D0  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80031474 0002E3D4  4E 80 00 20 */	blr 
/* 80031478 0002E3D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003147C 0002E3DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_BnkVirtualToPhysical__FUs
Jac_BnkVirtualToPhysical__FUs:
/* 80031480 0002E3E0  3C 80 80 1B */	lis r4, BNK_V2P_TABLE@ha
/* 80031484 0002E3E4  54 60 0B FC */	rlwinm r0, r3, 1, 0xf, 0x1e
/* 80031488 0002E3E8  38 64 A5 C0 */	addi r3, r4, BNK_V2P_TABLE@l
/* 8003148C 0002E3EC  7C 03 02 AE */	lhax r0, r3, r0
/* 80031490 0002E3F0  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80031494 0002E3F4  4E 80 00 20 */	blr 
/* 80031498 0002E3F8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003149C 0002E3FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_WsConnectTableSet__FUlUl
Jac_WsConnectTableSet__FUlUl:
/* 800314A0 0002E400  28 03 FF FF */	cmplwi r3, 0xffff
/* 800314A4 0002E404  4D 82 00 20 */	beqlr 
/* 800314A8 0002E408  28 03 01 00 */	cmplwi r3, 0x100
/* 800314AC 0002E40C  4C 80 00 20 */	bgelr 
/* 800314B0 0002E410  3C A0 80 1B */	lis r5, WS_V2P_TABLE@ha
/* 800314B4 0002E414  54 66 08 3C */	slwi r6, r3, 1
/* 800314B8 0002E418  38 65 A3 C0 */	addi r3, r5, WS_V2P_TABLE@l
/* 800314BC 0002E41C  7C 03 32 AE */	lhax r0, r3, r6
/* 800314C0 0002E420  2C 00 FF FF */	cmpwi r0, -1
/* 800314C4 0002E424  4C 82 00 20 */	bnelr 
/* 800314C8 0002E428  7C 83 33 2E */	sthx r4, r3, r6
/* 800314CC 0002E42C  4E 80 00 20 */	blr 
/* 800314D0 0002E430  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800314D4 0002E434  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800314D8 0002E438  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800314DC 0002E43C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_BnkConnectTableSet__FUlUl
Jac_BnkConnectTableSet__FUlUl:
/* 800314E0 0002E440  28 03 FF FF */	cmplwi r3, 0xffff
/* 800314E4 0002E444  4D 82 00 20 */	beqlr 
/* 800314E8 0002E448  28 03 01 00 */	cmplwi r3, 0x100
/* 800314EC 0002E44C  4C 80 00 20 */	bgelr 
/* 800314F0 0002E450  3C A0 80 1B */	lis r5, BNK_V2P_TABLE@ha
/* 800314F4 0002E454  54 66 08 3C */	slwi r6, r3, 1
/* 800314F8 0002E458  38 65 A5 C0 */	addi r3, r5, BNK_V2P_TABLE@l
/* 800314FC 0002E45C  7C 03 32 AE */	lhax r0, r3, r6
/* 80031500 0002E460  2C 00 FF FF */	cmpwi r0, -1
/* 80031504 0002E464  4C 82 00 20 */	bnelr 
/* 80031508 0002E468  7C 83 33 2E */	sthx r4, r3, r6
/* 8003150C 0002E46C  4E 80 00 20 */	blr 
/* 80031510 0002E470  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031514 0002E474  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031518 0002E478  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003151C 0002E47C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_ConnectTableInit__Fv
Jac_ConnectTableInit__Fv:
/* 80031520 0002E480  3C 80 80 1B */	lis r4, WS_V2P_TABLE@ha
/* 80031524 0002E484  3C 60 80 1B */	lis r3, BNK_V2P_TABLE@ha
/* 80031528 0002E488  38 A4 A3 C0 */	addi r5, r4, WS_V2P_TABLE@l
/* 8003152C 0002E48C  38 00 01 00 */	li r0, 0x100
/* 80031530 0002E490  38 83 A5 C0 */	addi r4, r3, BNK_V2P_TABLE@l
/* 80031534 0002E494  38 60 00 00 */	li r3, 0
/* 80031538 0002E498  38 C0 FF FF */	li r6, -1
/* 8003153C 0002E49C  7C 09 03 A6 */	mtctr r0
lbl_80031540:
/* 80031540 0002E4A0  7C C5 1B 2E */	sthx r6, r5, r3
/* 80031544 0002E4A4  7C C4 1B 2E */	sthx r6, r4, r3
/* 80031548 0002E4A8  38 63 00 02 */	addi r3, r3, 2
/* 8003154C 0002E4AC  42 00 FF F4 */	bdnz lbl_80031540
/* 80031550 0002E4B0  4E 80 00 20 */	blr 
/* 80031554 0002E4B4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031558 0002E4B8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003155C 0002E4BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
