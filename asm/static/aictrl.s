.include "macros.inc"

.section .text

.org 0x80017E80

.global Jac_HeapSetup
Jac_HeapSetup:
/* 80017E80 00014DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80017E84 00014DE4  7C 08 02 A6 */	mflr r0
/* 80017E88 00014DE8  28 03 00 00 */	cmplwi r3, 0
/* 80017E8C 00014DEC  7C 85 23 78 */	mr r5, r4
/* 80017E90 00014DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80017E94 00014DF4  41 82 00 20 */	beq lbl_80017EB4
/* 80017E98 00014DF8  3C C0 80 18 */	lis r6, audio_hp@ha
/* 80017E9C 00014DFC  7C 64 1B 78 */	mr r4, r3
/* 80017EA0 00014E00  38 66 CF AC */	addi r3, r6, audio_hp@l
/* 80017EA4 00014E04  48 00 62 7D */	bl Nas_HeapInit__FP6ALHeapPUcl
/* 80017EA8 00014E08  38 00 00 01 */	li r0, 1
/* 80017EAC 00014E0C  90 0D 88 74 */	stw r0, audio_hp_exist-_SDA_BASE_(r13)
/* 80017EB0 00014E10  48 00 00 0C */	b lbl_80017EBC
lbl_80017EB4:
/* 80017EB4 00014E14  38 00 00 00 */	li r0, 0
/* 80017EB8 00014E18  90 0D 88 74 */	stw r0, audio_hp_exist-_SDA_BASE_(r13)
lbl_80017EBC:
/* 80017EBC 00014E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80017EC0 00014E20  7C 08 03 A6 */	mtlr r0
/* 80017EC4 00014E24  38 21 00 10 */	addi r1, r1, 0x10
/* 80017EC8 00014E28  4E 80 00 20 */	blr 
/* 80017ECC 00014E2C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80017ED0 00014E30  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80017ED4 00014E34  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80017ED8 00014E38  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80017EDC 00014E3C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global OSAlloc2
OSAlloc2:
/* 80017EE0 00014E40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80017EE4 00014E44  7C 08 02 A6 */	mflr r0
/* 80017EE8 00014E48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80017EEC 00014E4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80017EF0 00014E50  48 08 2F E5 */	bl func_8009AED4
/* 80017EF4 00014E54  7C 7D 1B 78 */	mr r29, r3
/* 80017EF8 00014E58  48 06 2D 2D */	bl OSDisableInterrupts
/* 80017EFC 00014E5C  80 0D 88 74 */	lwz r0, audio_hp_exist-_SDA_BASE_(r13)
/* 80017F00 00014E60  7C 7E 1B 78 */	mr r30, r3
/* 80017F04 00014E64  2C 00 00 01 */	cmpwi r0, 1
/* 80017F08 00014E68  41 82 00 28 */	beq lbl_80017F30
/* 80017F0C 00014E6C  40 80 00 38 */	bge lbl_80017F44
/* 80017F10 00014E70  2C 00 00 00 */	cmpwi r0, 0
/* 80017F14 00014E74  40 80 00 08 */	bge lbl_80017F1C
/* 80017F18 00014E78  48 00 00 2C */	b lbl_80017F44
lbl_80017F1C:
/* 80017F1C 00014E7C  80 6D 85 F0 */	lwz r3, __OSCurrHeap-_SDA_BASE_(r13)
/* 80017F20 00014E80  7F A4 EB 78 */	mr r4, r29
/* 80017F24 00014E84  48 06 17 FD */	bl OSAllocFromHeap
/* 80017F28 00014E88  7C 7F 1B 78 */	mr r31, r3
/* 80017F2C 00014E8C  48 00 00 18 */	b lbl_80017F44
lbl_80017F30:
/* 80017F30 00014E90  3C 60 80 18 */	lis r3, audio_hp@ha
/* 80017F34 00014E94  7F A4 EB 78 */	mr r4, r29
/* 80017F38 00014E98  38 63 CF AC */	addi r3, r3, audio_hp@l
/* 80017F3C 00014E9C  48 00 61 45 */	bl Nas_HeapAlloc__FP6ALHeapl
/* 80017F40 00014EA0  7C 7F 1B 78 */	mr r31, r3
lbl_80017F44:
/* 80017F44 00014EA4  7F C3 F3 78 */	mr r3, r30
/* 80017F48 00014EA8  48 06 2D 05 */	bl OSRestoreInterrupts
/* 80017F4C 00014EAC  7F E3 FB 78 */	mr r3, r31
/* 80017F50 00014EB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80017F54 00014EB4  48 08 2F CD */	bl func_8009AF20
/* 80017F58 00014EB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80017F5C 00014EBC  7C 08 03 A6 */	mtlr r0
/* 80017F60 00014EC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80017F64 00014EC4  4E 80 00 20 */	blr 
/* 80017F68 00014EC8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80017F6C 00014ECC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80017F70 00014ED0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80017F74 00014ED4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80017F78 00014ED8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80017F7C 00014EDC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_Init
Jac_Init:
/* 80017F80 00014EE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80017F84 00014EE4  7C 08 02 A6 */	mflr r0
/* 80017F88 00014EE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80017F8C 00014EEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80017F90 00014EF0  48 08 2F 45 */	bl func_8009AED4
/* 80017F94 00014EF4  3C 60 80 18 */	lis r3, dac@ha
/* 80017F98 00014EF8  3B A0 00 00 */	li r29, 0
/* 80017F9C 00014EFC  3B C3 CF A0 */	addi r30, r3, dac@l
/* 80017FA0 00014F00  3B E0 00 00 */	li r31, 0
/* 80017FA4 00014F04  60 00 00 00 */	nop 
lbl_80017FA8:
/* 80017FA8 00014F08  80 0D 80 74 */	lwz r0, DAC_SIZE-_SDA_BASE_(r13)
/* 80017FAC 00014F0C  54 03 08 3C */	slwi r3, r0, 1
/* 80017FB0 00014F10  4B FF FF 31 */	bl OSAlloc2
/* 80017FB4 00014F14  7C 7E F9 2E */	stwx r3, r30, r31
/* 80017FB8 00014F18  80 0D 80 74 */	lwz r0, DAC_SIZE-_SDA_BASE_(r13)
/* 80017FBC 00014F1C  7C 7E F8 2E */	lwzx r3, r30, r31
/* 80017FC0 00014F20  54 04 08 3C */	slwi r4, r0, 1
/* 80017FC4 00014F24  48 00 08 5D */	bl Jac_bzero__FPvl
/* 80017FC8 00014F28  80 0D 80 74 */	lwz r0, DAC_SIZE-_SDA_BASE_(r13)
/* 80017FCC 00014F2C  7C 7E F8 2E */	lwzx r3, r30, r31
/* 80017FD0 00014F30  54 04 08 3C */	slwi r4, r0, 1
/* 80017FD4 00014F34  48 06 1B E5 */	bl DCStoreRange
/* 80017FD8 00014F38  3B BD 00 01 */	addi r29, r29, 1
/* 80017FDC 00014F3C  3B FF 00 04 */	addi r31, r31, 4
/* 80017FE0 00014F40  2C 1D 00 03 */	cmpwi r29, 3
/* 80017FE4 00014F44  41 80 FF C4 */	blt lbl_80017FA8
/* 80017FE8 00014F48  38 60 00 00 */	li r3, 0
/* 80017FEC 00014F4C  48 07 3D 99 */	bl AIInit
/* 80017FF0 00014F50  3C 60 80 18 */	lis r3, dac@ha
/* 80017FF4 00014F54  80 0D 80 74 */	lwz r0, DAC_SIZE-_SDA_BASE_(r13)
/* 80017FF8 00014F58  38 63 CF A0 */	addi r3, r3, dac@l
/* 80017FFC 00014F5C  80 63 00 08 */	lwz r3, 8(r3)
/* 80018000 00014F60  54 04 08 3C */	slwi r4, r0, 1
/* 80018004 00014F64  48 07 39 69 */	bl AIInitDMA
/* 80018008 00014F68  39 61 00 20 */	addi r11, r1, 0x20
/* 8001800C 00014F6C  48 08 2F 15 */	bl func_8009AF20
/* 80018010 00014F70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80018014 00014F74  7C 08 03 A6 */	mtlr r0
/* 80018018 00014F78  38 21 00 20 */	addi r1, r1, 0x20
/* 8001801C 00014F7C  4E 80 00 20 */	blr 

.global MixMonoTrack__FPslPFl_Ps
MixMonoTrack__FPslPFl_Ps:
/* 80018020 00014F80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80018024 00014F84  7C 08 02 A6 */	mflr r0
/* 80018028 00014F88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001802C 00014F8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80018030 00014F90  48 08 2E A5 */	bl func_8009AED4
/* 80018034 00014F94  3C C0 80 0B */	lis r6, @287@ha
/* 80018038 00014F98  7C 7D 1B 78 */	mr r29, r3
/* 8001803C 00014F9C  38 06 A5 00 */	addi r0, r6, @287@l
/* 80018040 00014FA0  7C 9E 23 78 */	mr r30, r4
/* 80018044 00014FA4  7C BF 2B 78 */	mr r31, r5
/* 80018048 00014FA8  38 60 00 05 */	li r3, 5
/* 8001804C 00014FAC  7C 04 03 78 */	mr r4, r0
/* 80018050 00014FB0  4B FF 03 A9 */	bl Probe_Start
/* 80018054 00014FB4  7F EC FB 78 */	mr r12, r31
/* 80018058 00014FB8  7F C3 F3 78 */	mr r3, r30
/* 8001805C 00014FBC  7D 89 03 A6 */	mtctr r12
/* 80018060 00014FC0  4E 80 04 21 */	bctrl 
/* 80018064 00014FC4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80018068 00014FC8  41 82 00 7C */	beq lbl_800180E4
/* 8001806C 00014FCC  38 60 00 05 */	li r3, 5
/* 80018070 00014FD0  4B FF 03 8D */	bl Probe_Finish
/* 80018074 00014FD4  7F A4 EB 78 */	mr r4, r29
/* 80018078 00014FD8  7F E5 FB 78 */	mr r5, r31
/* 8001807C 00014FDC  7F C9 03 A6 */	mtctr r30
/* 80018080 00014FE0  2C 1E 00 00 */	cmpwi r30, 0
/* 80018084 00014FE4  40 81 00 60 */	ble lbl_800180E4
lbl_80018088:
/* 80018088 00014FE8  A8 64 00 00 */	lha r3, 0(r4)
/* 8001808C 00014FEC  A8 05 00 00 */	lha r0, 0(r5)
/* 80018090 00014FF0  7C 03 02 14 */	add r0, r3, r0
/* 80018094 00014FF4  2C 00 80 00 */	cmpwi r0, -32768
/* 80018098 00014FF8  40 80 00 08 */	bge lbl_800180A0
/* 8001809C 00014FFC  38 00 80 01 */	li r0, -32767
lbl_800180A0:
/* 800180A0 00015000  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 800180A4 00015004  40 81 00 08 */	ble lbl_800180AC
/* 800180A8 00015008  38 00 7F FF */	li r0, 0x7fff
lbl_800180AC:
/* 800180AC 0001500C  B0 04 00 00 */	sth r0, 0(r4)
/* 800180B0 00015010  A8 64 00 02 */	lha r3, 2(r4)
/* 800180B4 00015014  A8 05 00 00 */	lha r0, 0(r5)
/* 800180B8 00015018  7C 03 02 14 */	add r0, r3, r0
/* 800180BC 0001501C  2C 00 80 00 */	cmpwi r0, -32768
/* 800180C0 00015020  40 80 00 08 */	bge lbl_800180C8
/* 800180C4 00015024  38 00 80 01 */	li r0, -32767
lbl_800180C8:
/* 800180C8 00015028  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 800180CC 0001502C  40 81 00 08 */	ble lbl_800180D4
/* 800180D0 00015030  38 00 7F FF */	li r0, 0x7fff
lbl_800180D4:
/* 800180D4 00015034  B0 04 00 02 */	sth r0, 2(r4)
/* 800180D8 00015038  38 84 00 04 */	addi r4, r4, 4
/* 800180DC 0001503C  38 A5 00 02 */	addi r5, r5, 2
/* 800180E0 00015040  42 00 FF A8 */	bdnz lbl_80018088
lbl_800180E4:
/* 800180E4 00015044  39 61 00 20 */	addi r11, r1, 0x20
/* 800180E8 00015048  48 08 2E 39 */	bl func_8009AF20
/* 800180EC 0001504C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800180F0 00015050  7C 08 03 A6 */	mtlr r0
/* 800180F4 00015054  38 21 00 20 */	addi r1, r1, 0x20
/* 800180F8 00015058  4E 80 00 20 */	blr 
/* 800180FC 0001505C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global MixMonoTrackWide__FPslPFl_Ps
MixMonoTrackWide__FPslPFl_Ps:
/* 80018100 00015060  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80018104 00015064  7C 08 02 A6 */	mflr r0
/* 80018108 00015068  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001810C 0001506C  39 61 00 20 */	addi r11, r1, 0x20
/* 80018110 00015070  48 08 2D C5 */	bl func_8009AED4
/* 80018114 00015074  3C C0 80 0B */	lis r6, @307@ha
/* 80018118 00015078  7C 7D 1B 78 */	mr r29, r3
/* 8001811C 0001507C  38 06 A5 0C */	addi r0, r6, @307@l
/* 80018120 00015080  7C 9E 23 78 */	mr r30, r4
/* 80018124 00015084  7C BF 2B 78 */	mr r31, r5
/* 80018128 00015088  38 60 00 05 */	li r3, 5
/* 8001812C 0001508C  7C 04 03 78 */	mr r4, r0
/* 80018130 00015090  4B FF 02 C9 */	bl Probe_Start
/* 80018134 00015094  7F EC FB 78 */	mr r12, r31
/* 80018138 00015098  7F C3 F3 78 */	mr r3, r30
/* 8001813C 0001509C  7D 89 03 A6 */	mtctr r12
/* 80018140 000150A0  4E 80 04 21 */	bctrl 
/* 80018144 000150A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80018148 000150A8  41 82 00 7C */	beq lbl_800181C4
/* 8001814C 000150AC  38 60 00 05 */	li r3, 5
/* 80018150 000150B0  4B FF 02 AD */	bl Probe_Finish
/* 80018154 000150B4  7F A4 EB 78 */	mr r4, r29
/* 80018158 000150B8  7F E5 FB 78 */	mr r5, r31
/* 8001815C 000150BC  7F C9 03 A6 */	mtctr r30
/* 80018160 000150C0  2C 1E 00 00 */	cmpwi r30, 0
/* 80018164 000150C4  40 81 00 60 */	ble lbl_800181C4
lbl_80018168:
/* 80018168 000150C8  A8 64 00 00 */	lha r3, 0(r4)
/* 8001816C 000150CC  A8 05 00 00 */	lha r0, 0(r5)
/* 80018170 000150D0  7C 03 02 14 */	add r0, r3, r0
/* 80018174 000150D4  2C 00 80 00 */	cmpwi r0, -32768
/* 80018178 000150D8  40 80 00 08 */	bge lbl_80018180
/* 8001817C 000150DC  38 00 80 01 */	li r0, -32767
lbl_80018180:
/* 80018180 000150E0  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 80018184 000150E4  40 81 00 08 */	ble lbl_8001818C
/* 80018188 000150E8  38 00 7F FF */	li r0, 0x7fff
lbl_8001818C:
/* 8001818C 000150EC  B0 04 00 00 */	sth r0, 0(r4)
/* 80018190 000150F0  A8 65 00 00 */	lha r3, 0(r5)
/* 80018194 000150F4  A8 04 00 02 */	lha r0, 2(r4)
/* 80018198 000150F8  7C 03 00 50 */	subf r0, r3, r0
/* 8001819C 000150FC  2C 00 80 00 */	cmpwi r0, -32768
/* 800181A0 00015100  40 80 00 08 */	bge lbl_800181A8
/* 800181A4 00015104  38 00 80 01 */	li r0, -32767
lbl_800181A8:
/* 800181A8 00015108  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 800181AC 0001510C  40 81 00 08 */	ble lbl_800181B4
/* 800181B0 00015110  38 00 7F FF */	li r0, 0x7fff
lbl_800181B4:
/* 800181B4 00015114  B0 04 00 02 */	sth r0, 2(r4)
/* 800181B8 00015118  38 84 00 04 */	addi r4, r4, 4
/* 800181BC 0001511C  38 A5 00 02 */	addi r5, r5, 2
/* 800181C0 00015120  42 00 FF A8 */	bdnz lbl_80018168
lbl_800181C4:
/* 800181C4 00015124  39 61 00 20 */	addi r11, r1, 0x20
/* 800181C8 00015128  48 08 2D 59 */	bl func_8009AF20
/* 800181CC 0001512C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800181D0 00015130  7C 08 03 A6 */	mtlr r0
/* 800181D4 00015134  38 21 00 20 */	addi r1, r1, 0x20
/* 800181D8 00015138  4E 80 00 20 */	blr 
/* 800181DC 0001513C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global MixExtraTrack__FPslPFl_Ps
MixExtraTrack__FPslPFl_Ps:
/* 800181E0 00015140  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800181E4 00015144  7C 08 02 A6 */	mflr r0
/* 800181E8 00015148  90 01 00 24 */	stw r0, 0x24(r1)
/* 800181EC 0001514C  39 61 00 20 */	addi r11, r1, 0x20
/* 800181F0 00015150  48 08 2C E5 */	bl func_8009AED4
/* 800181F4 00015154  7C 7D 1B 78 */	mr r29, r3
/* 800181F8 00015158  7C 9E 23 78 */	mr r30, r4
/* 800181FC 0001515C  7C BF 2B 78 */	mr r31, r5
/* 80018200 00015160  38 60 00 05 */	li r3, 5
/* 80018204 00015164  38 82 81 C8 */	addi r4, r2, @327-_SDA2_BASE_
/* 80018208 00015168  4B FF 01 F1 */	bl Probe_Start
/* 8001820C 0001516C  7F EC FB 78 */	mr r12, r31
/* 80018210 00015170  7F C3 F3 78 */	mr r3, r30
/* 80018214 00015174  7D 89 03 A6 */	mtctr r12
/* 80018218 00015178  4E 80 04 21 */	bctrl 
/* 8001821C 0001517C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80018220 00015180  41 82 00 A0 */	beq lbl_800182C0
/* 80018224 00015184  38 60 00 05 */	li r3, 5
/* 80018228 00015188  4B FF 01 D5 */	bl Probe_Finish
/* 8001822C 0001518C  38 60 00 06 */	li r3, 6
/* 80018230 00015190  38 82 81 D0 */	addi r4, r2, @328-_SDA2_BASE_
/* 80018234 00015194  4B FF 01 C5 */	bl Probe_Start
/* 80018238 00015198  80 0D 80 70 */	lwz r0, JAC_FRAMESAMPLES-_SDA_BASE_(r13)
/* 8001823C 0001519C  7F A4 EB 78 */	mr r4, r29
/* 80018240 000151A0  7F E6 FB 78 */	mr r6, r31
/* 80018244 000151A4  54 00 08 3C */	slwi r0, r0, 1
/* 80018248 000151A8  7C BF 02 14 */	add r5, r31, r0
/* 8001824C 000151AC  7F C9 03 A6 */	mtctr r30
/* 80018250 000151B0  2C 1E 00 00 */	cmpwi r30, 0
/* 80018254 000151B4  40 81 00 64 */	ble lbl_800182B8
lbl_80018258:
/* 80018258 000151B8  A8 64 00 00 */	lha r3, 0(r4)
/* 8001825C 000151BC  A8 05 00 00 */	lha r0, 0(r5)
/* 80018260 000151C0  7C 03 02 14 */	add r0, r3, r0
/* 80018264 000151C4  2C 00 80 00 */	cmpwi r0, -32768
/* 80018268 000151C8  40 80 00 08 */	bge lbl_80018270
/* 8001826C 000151CC  38 00 80 01 */	li r0, -32767
lbl_80018270:
/* 80018270 000151D0  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 80018274 000151D4  40 81 00 08 */	ble lbl_8001827C
/* 80018278 000151D8  38 00 7F FF */	li r0, 0x7fff
lbl_8001827C:
/* 8001827C 000151DC  B0 04 00 00 */	sth r0, 0(r4)
/* 80018280 000151E0  A8 64 00 02 */	lha r3, 2(r4)
/* 80018284 000151E4  A8 06 00 00 */	lha r0, 0(r6)
/* 80018288 000151E8  7C 03 02 14 */	add r0, r3, r0
/* 8001828C 000151EC  2C 00 80 00 */	cmpwi r0, -32768
/* 80018290 000151F0  40 80 00 08 */	bge lbl_80018298
/* 80018294 000151F4  38 00 80 01 */	li r0, -32767
lbl_80018298:
/* 80018298 000151F8  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 8001829C 000151FC  40 81 00 08 */	ble lbl_800182A4
/* 800182A0 00015200  38 00 7F FF */	li r0, 0x7fff
lbl_800182A4:
/* 800182A4 00015204  B0 04 00 02 */	sth r0, 2(r4)
/* 800182A8 00015208  38 84 00 04 */	addi r4, r4, 4
/* 800182AC 0001520C  38 A5 00 02 */	addi r5, r5, 2
/* 800182B0 00015210  38 C6 00 02 */	addi r6, r6, 2
/* 800182B4 00015214  42 00 FF A4 */	bdnz lbl_80018258
lbl_800182B8:
/* 800182B8 00015218  38 60 00 06 */	li r3, 6
/* 800182BC 0001521C  4B FF 01 41 */	bl Probe_Finish
lbl_800182C0:
/* 800182C0 00015220  39 61 00 20 */	addi r11, r1, 0x20
/* 800182C4 00015224  48 08 2C 5D */	bl func_8009AF20
/* 800182C8 00015228  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800182CC 0001522C  7C 08 03 A6 */	mtlr r0
/* 800182D0 00015230  38 21 00 20 */	addi r1, r1, 0x20
/* 800182D4 00015234  4E 80 00 20 */	blr 
/* 800182D8 00015238  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800182DC 0001523C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global MixInterleaveTrack__FPslPFl_Ps
MixInterleaveTrack__FPslPFl_Ps:
/* 800182E0 00015240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800182E4 00015244  7C 08 02 A6 */	mflr r0
/* 800182E8 00015248  7C AC 2B 78 */	mr r12, r5
/* 800182EC 0001524C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800182F0 00015250  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800182F4 00015254  7C 9F 23 78 */	mr r31, r4
/* 800182F8 00015258  93 C1 00 08 */	stw r30, 8(r1)
/* 800182FC 0001525C  7C 7E 1B 78 */	mr r30, r3
/* 80018300 00015260  7F E3 FB 78 */	mr r3, r31
/* 80018304 00015264  7D 89 03 A6 */	mtctr r12
/* 80018308 00015268  4E 80 04 21 */	bctrl 
/* 8001830C 0001526C  28 03 00 00 */	cmplwi r3, 0
/* 80018310 00015270  41 82 00 4C */	beq lbl_8001835C
/* 80018314 00015274  57 E0 08 3D */	rlwinm. r0, r31, 1, 0, 0x1e
/* 80018318 00015278  7F C5 F3 78 */	mr r5, r30
/* 8001831C 0001527C  7C 09 03 A6 */	mtctr r0
/* 80018320 00015280  40 81 00 3C */	ble lbl_8001835C
/* 80018324 00015284  60 00 00 00 */	nop 
lbl_80018328:
/* 80018328 00015288  A8 85 00 00 */	lha r4, 0(r5)
/* 8001832C 0001528C  A8 03 00 00 */	lha r0, 0(r3)
/* 80018330 00015290  7C 04 02 14 */	add r0, r4, r0
/* 80018334 00015294  2C 00 80 00 */	cmpwi r0, -32768
/* 80018338 00015298  40 80 00 08 */	bge lbl_80018340
/* 8001833C 0001529C  38 00 80 01 */	li r0, -32767
lbl_80018340:
/* 80018340 000152A0  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 80018344 000152A4  40 81 00 08 */	ble lbl_8001834C
/* 80018348 000152A8  38 00 7F FF */	li r0, 0x7fff
lbl_8001834C:
/* 8001834C 000152AC  B0 05 00 00 */	sth r0, 0(r5)
/* 80018350 000152B0  38 A5 00 02 */	addi r5, r5, 2
/* 80018354 000152B4  38 63 00 02 */	addi r3, r3, 2
/* 80018358 000152B8  42 00 FF D0 */	bdnz lbl_80018328
lbl_8001835C:
/* 8001835C 000152BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018360 000152C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80018364 000152C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80018368 000152C8  7C 08 03 A6 */	mtlr r0
/* 8001836C 000152CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80018370 000152D0  4E 80 00 20 */	blr 
/* 80018374 000152D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018378 000152D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8001837C 000152DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_GetMixcallback
Jac_GetMixcallback:
/* 80018380 000152E0  88 0D 88 90 */	lbz r0, lbl_80218410-_SDA_BASE_(r13)
/* 80018384 000152E4  98 03 00 00 */	stb r0, 0(r3)
/* 80018388 000152E8  80 6D 88 8C */	lwz r3, ext_mixcallback-_SDA_BASE_(r13)
/* 8001838C 000152EC  4E 80 00 20 */	blr 
/* 80018390 000152F0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018394 000152F4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018398 000152F8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8001839C 000152FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_RegisterMixcallback
Jac_RegisterMixcallback:
/* 800183A0 00015300  90 6D 88 8C */	stw r3, ext_mixcallback-_SDA_BASE_(r13)
/* 800183A4 00015304  98 8D 88 90 */	stb r4, lbl_80218410-_SDA_BASE_(r13)
/* 800183A8 00015308  4E 80 00 20 */	blr 
/* 800183AC 0001530C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800183B0 00015310  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800183B4 00015314  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800183B8 00015318  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800183BC 0001531C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_VframeWork
Jac_VframeWork:
/* 800183C0 00015320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800183C4 00015324  7C 08 02 A6 */	mflr r0
/* 800183C8 00015328  90 01 00 14 */	stw r0, 0x14(r1)
/* 800183CC 0001532C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800183D0 00015330  88 0D 88 98 */	lbz r0, lbl_80218418-_SDA_BASE_(r13)
/* 800183D4 00015334  7C 00 07 75 */	extsb. r0, r0
/* 800183D8 00015338  40 82 00 14 */	bne lbl_800183EC
/* 800183DC 0001533C  38 60 00 00 */	li r3, 0
/* 800183E0 00015340  38 00 00 01 */	li r0, 1
/* 800183E4 00015344  90 6D 88 94 */	stw r3, dacp$354-_SDA_BASE_(r13)
/* 800183E8 00015348  98 0D 88 98 */	stb r0, lbl_80218418-_SDA_BASE_(r13)
lbl_800183EC:
/* 800183EC 0001534C  80 6D 88 88 */	lwz r3, JAC_VFRAME_COUNTER-_SDA_BASE_(r13)
/* 800183F0 00015350  80 0D 80 74 */	lwz r0, DAC_SIZE-_SDA_BASE_(r13)
/* 800183F4 00015354  38 63 00 01 */	addi r3, r3, 1
/* 800183F8 00015358  90 6D 88 88 */	stw r3, JAC_VFRAME_COUNTER-_SDA_BASE_(r13)
/* 800183FC 0001535C  54 03 F8 7E */	srwi r3, r0, 1
/* 80018400 00015360  48 00 16 61 */	bl MixDsp__Fl
/* 80018404 00015364  80 AD 88 94 */	lwz r5, dacp$354-_SDA_BASE_(r13)
/* 80018408 00015368  3C 80 80 18 */	lis r4, dac@ha
/* 8001840C 0001536C  80 CD 80 70 */	lwz r6, JAC_FRAMESAMPLES-_SDA_BASE_(r13)
/* 80018410 00015370  38 84 CF A0 */	addi r4, r4, dac@l
/* 80018414 00015374  54 A5 10 3A */	slwi r5, r5, 2
/* 80018418 00015378  80 0D 80 74 */	lwz r0, DAC_SIZE-_SDA_BASE_(r13)
/* 8001841C 0001537C  54 C7 08 3C */	slwi r7, r6, 1
/* 80018420 00015380  7C A4 28 2E */	lwzx r5, r4, r5
/* 80018424 00015384  7C 64 1B 78 */	mr r4, r3
/* 80018428 00015388  54 06 F8 7E */	srwi r6, r0, 1
/* 8001842C 0001538C  7C 63 3A 14 */	add r3, r3, r7
/* 80018430 00015390  48 00 02 11 */	bl Jac_imixcopy__FPsPsPsl
/* 80018434 00015394  80 AD 88 8C */	lwz r5, ext_mixcallback-_SDA_BASE_(r13)
/* 80018438 00015398  28 05 00 00 */	cmplwi r5, 0
/* 8001843C 0001539C  41 82 00 BC */	beq lbl_800184F8
/* 80018440 000153A0  88 0D 88 90 */	lbz r0, lbl_80218410-_SDA_BASE_(r13)
/* 80018444 000153A4  2C 00 00 02 */	cmpwi r0, 2
/* 80018448 000153A8  41 82 00 6C */	beq lbl_800184B4
/* 8001844C 000153AC  40 80 00 14 */	bge lbl_80018460
/* 80018450 000153B0  2C 00 00 00 */	cmpwi r0, 0
/* 80018454 000153B4  41 82 00 18 */	beq lbl_8001846C
/* 80018458 000153B8  40 80 00 38 */	bge lbl_80018490
/* 8001845C 000153BC  48 00 00 9C */	b lbl_800184F8
lbl_80018460:
/* 80018460 000153C0  2C 00 00 04 */	cmpwi r0, 4
/* 80018464 000153C4  40 80 00 94 */	bge lbl_800184F8
/* 80018468 000153C8  48 00 00 70 */	b lbl_800184D8
lbl_8001846C:
/* 8001846C 000153CC  80 8D 88 94 */	lwz r4, dacp$354-_SDA_BASE_(r13)
/* 80018470 000153D0  3C 60 80 18 */	lis r3, dac@ha
/* 80018474 000153D4  80 0D 80 74 */	lwz r0, DAC_SIZE-_SDA_BASE_(r13)
/* 80018478 000153D8  38 63 CF A0 */	addi r3, r3, dac@l
/* 8001847C 000153DC  54 84 10 3A */	slwi r4, r4, 2
/* 80018480 000153E0  7C 63 20 2E */	lwzx r3, r3, r4
/* 80018484 000153E4  54 04 F8 7E */	srwi r4, r0, 1
/* 80018488 000153E8  4B FF FB 99 */	bl MixMonoTrack__FPslPFl_Ps
/* 8001848C 000153EC  48 00 00 6C */	b lbl_800184F8
lbl_80018490:
/* 80018490 000153F0  80 8D 88 94 */	lwz r4, dacp$354-_SDA_BASE_(r13)
/* 80018494 000153F4  3C 60 80 18 */	lis r3, dac@ha
/* 80018498 000153F8  80 0D 80 74 */	lwz r0, DAC_SIZE-_SDA_BASE_(r13)
/* 8001849C 000153FC  38 63 CF A0 */	addi r3, r3, dac@l
/* 800184A0 00015400  54 84 10 3A */	slwi r4, r4, 2
/* 800184A4 00015404  7C 63 20 2E */	lwzx r3, r3, r4
/* 800184A8 00015408  54 04 F8 7E */	srwi r4, r0, 1
/* 800184AC 0001540C  4B FF FC 55 */	bl MixMonoTrackWide__FPslPFl_Ps
/* 800184B0 00015410  48 00 00 48 */	b lbl_800184F8
lbl_800184B4:
/* 800184B4 00015414  80 8D 88 94 */	lwz r4, dacp$354-_SDA_BASE_(r13)
/* 800184B8 00015418  3C 60 80 18 */	lis r3, dac@ha
/* 800184BC 0001541C  80 0D 80 74 */	lwz r0, DAC_SIZE-_SDA_BASE_(r13)
/* 800184C0 00015420  38 63 CF A0 */	addi r3, r3, dac@l
/* 800184C4 00015424  54 84 10 3A */	slwi r4, r4, 2
/* 800184C8 00015428  7C 63 20 2E */	lwzx r3, r3, r4
/* 800184CC 0001542C  54 04 F8 7E */	srwi r4, r0, 1
/* 800184D0 00015430  4B FF FD 11 */	bl MixExtraTrack__FPslPFl_Ps
/* 800184D4 00015434  48 00 00 24 */	b lbl_800184F8
lbl_800184D8:
/* 800184D8 00015438  80 8D 88 94 */	lwz r4, dacp$354-_SDA_BASE_(r13)
/* 800184DC 0001543C  3C 60 80 18 */	lis r3, dac@ha
/* 800184E0 00015440  80 0D 80 74 */	lwz r0, DAC_SIZE-_SDA_BASE_(r13)
/* 800184E4 00015444  38 63 CF A0 */	addi r3, r3, dac@l
/* 800184E8 00015448  54 84 10 3A */	slwi r4, r4, 2
/* 800184EC 0001544C  7C 63 20 2E */	lwzx r3, r3, r4
/* 800184F0 00015450  54 04 F8 7E */	srwi r4, r0, 1
/* 800184F4 00015454  4B FF FD ED */	bl MixInterleaveTrack__FPslPFl_Ps
lbl_800184F8:
/* 800184F8 00015458  48 06 27 2D */	bl OSDisableInterrupts
/* 800184FC 0001545C  80 AD 88 94 */	lwz r5, dacp$354-_SDA_BASE_(r13)
/* 80018500 00015460  3C 80 80 18 */	lis r4, dac@ha
/* 80018504 00015464  80 0D 80 74 */	lwz r0, DAC_SIZE-_SDA_BASE_(r13)
/* 80018508 00015468  7C 66 1B 78 */	mr r6, r3
/* 8001850C 0001546C  54 A5 10 3A */	slwi r5, r5, 2
/* 80018510 00015470  38 64 CF A0 */	addi r3, r4, dac@l
/* 80018514 00015474  7C 63 28 2E */	lwzx r3, r3, r5
/* 80018518 00015478  7C DF 33 78 */	mr r31, r6
/* 8001851C 0001547C  54 04 08 3C */	slwi r4, r0, 1
/* 80018520 00015480  48 06 16 99 */	bl DCStoreRange
/* 80018524 00015484  7F E3 FB 78 */	mr r3, r31
/* 80018528 00015488  48 06 27 25 */	bl OSRestoreInterrupts
/* 8001852C 0001548C  80 AD 88 94 */	lwz r5, dacp$354-_SDA_BASE_(r13)
/* 80018530 00015490  3C 60 80 18 */	lis r3, dac@ha
/* 80018534 00015494  38 63 CF A0 */	addi r3, r3, dac@l
/* 80018538 00015498  54 A4 10 3A */	slwi r4, r5, 2
/* 8001853C 0001549C  38 05 00 01 */	addi r0, r5, 1
/* 80018540 000154A0  7C 63 20 2E */	lwzx r3, r3, r4
/* 80018544 000154A4  28 00 00 03 */	cmplwi r0, 3
/* 80018548 000154A8  90 0D 88 94 */	stw r0, dacp$354-_SDA_BASE_(r13)
/* 8001854C 000154AC  90 6D 88 78 */	stw r3, last_rsp_madep-_SDA_BASE_(r13)
/* 80018550 000154B0  40 82 00 0C */	bne lbl_8001855C
/* 80018554 000154B4  38 00 00 00 */	li r0, 0
/* 80018558 000154B8  90 0D 88 94 */	stw r0, dacp$354-_SDA_BASE_(r13)
lbl_8001855C:
/* 8001855C 000154BC  38 00 00 00 */	li r0, 0
/* 80018560 000154C0  90 0D 88 80 */	stw r0, vframe_work_running-_SDA_BASE_(r13)
/* 80018564 000154C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018568 000154C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001856C 000154CC  7C 08 03 A6 */	mtlr r0
/* 80018570 000154D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80018574 000154D4  4E 80 00 20 */	blr 
/* 80018578 000154D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8001857C 000154DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_UpdateDAC
Jac_UpdateDAC:
/* 80018580 000154E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018584 000154E4  7C 08 02 A6 */	mflr r0
/* 80018588 000154E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001858C 000154EC  80 0D 88 7C */	lwz r0, use_rsp_madep-_SDA_BASE_(r13)
/* 80018590 000154F0  28 00 00 00 */	cmplwi r0, 0
/* 80018594 000154F4  40 82 00 14 */	bne lbl_800185A8
/* 80018598 000154F8  80 6D 88 78 */	lwz r3, last_rsp_madep-_SDA_BASE_(r13)
/* 8001859C 000154FC  38 00 00 00 */	li r0, 0
/* 800185A0 00015500  90 6D 88 7C */	stw r3, use_rsp_madep-_SDA_BASE_(r13)
/* 800185A4 00015504  90 0D 88 78 */	stw r0, last_rsp_madep-_SDA_BASE_(r13)
lbl_800185A8:
/* 800185A8 00015508  80 6D 88 7C */	lwz r3, use_rsp_madep-_SDA_BASE_(r13)
/* 800185AC 0001550C  28 03 00 00 */	cmplwi r3, 0
/* 800185B0 00015510  41 82 00 1C */	beq lbl_800185CC
/* 800185B4 00015514  80 0D 80 74 */	lwz r0, DAC_SIZE-_SDA_BASE_(r13)
/* 800185B8 00015518  54 04 08 3C */	slwi r4, r0, 1
/* 800185BC 0001551C  48 07 33 B1 */	bl AIInitDMA
/* 800185C0 00015520  38 00 00 00 */	li r0, 0
/* 800185C4 00015524  90 0D 88 7C */	stw r0, use_rsp_madep-_SDA_BASE_(r13)
/* 800185C8 00015528  48 00 00 10 */	b lbl_800185D8
lbl_800185CC:
/* 800185CC 0001552C  80 6D 88 70 */	lwz r3, UNIVERSAL_DACCOUNTER-_SDA_BASE_(r13)
/* 800185D0 00015530  38 03 00 01 */	addi r0, r3, 1
/* 800185D4 00015534  90 0D 88 70 */	stw r0, UNIVERSAL_DACCOUNTER-_SDA_BASE_(r13)
lbl_800185D8:
/* 800185D8 00015538  80 0D 88 78 */	lwz r0, last_rsp_madep-_SDA_BASE_(r13)
/* 800185DC 0001553C  28 00 00 00 */	cmplwi r0, 0
/* 800185E0 00015540  40 82 00 14 */	bne lbl_800185F4
/* 800185E4 00015544  80 0D 88 80 */	lwz r0, vframe_work_running-_SDA_BASE_(r13)
/* 800185E8 00015548  2C 00 00 00 */	cmpwi r0, 0
/* 800185EC 0001554C  40 82 00 08 */	bne lbl_800185F4
/* 800185F0 00015550  4B FF FD D1 */	bl Jac_VframeWork
lbl_800185F4:
/* 800185F4 00015554  48 00 0D 8D */	bl StreamMain__Fv
/* 800185F8 00015558  81 8D 88 84 */	lwz r12, DAC_CALLBACK_FUNC-_SDA_BASE_(r13)
/* 800185FC 0001555C  28 0C 00 00 */	cmplwi r12, 0
/* 80018600 00015560  41 82 00 18 */	beq lbl_80018618
/* 80018604 00015564  80 0D 80 74 */	lwz r0, DAC_SIZE-_SDA_BASE_(r13)
/* 80018608 00015568  80 6D 88 78 */	lwz r3, last_rsp_madep-_SDA_BASE_(r13)
/* 8001860C 0001556C  54 04 F8 7E */	srwi r4, r0, 1
/* 80018610 00015570  7D 89 03 A6 */	mtctr r12
/* 80018614 00015574  4E 80 04 21 */	bctrl 
lbl_80018618:
/* 80018618 00015578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001861C 0001557C  7C 08 03 A6 */	mtlr r0
/* 80018620 00015580  38 21 00 10 */	addi r1, r1, 0x10
/* 80018624 00015584  4E 80 00 20 */	blr 
/* 80018628 00015588  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8001862C 0001558C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018630 00015590  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018634 00015594  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018638 00015598  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8001863C 0001559C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
