.include "macros.inc"

.section .text

.org 0x8007C2A8

.global OSInitMutex
OSInitMutex:
/* 8007C2A8 00079208  7C 08 02 A6 */	mflr r0
/* 8007C2AC 0007920C  90 01 00 04 */	stw r0, 4(r1)
/* 8007C2B0 00079210  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8007C2B4 00079214  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8007C2B8 00079218  7C 7F 1B 78 */	mr r31, r3
/* 8007C2BC 0007921C  48 00 1A 11 */	bl OSInitThreadQueue
/* 8007C2C0 00079220  38 00 00 00 */	li r0, 0
/* 8007C2C4 00079224  90 1F 00 08 */	stw r0, 8(r31)
/* 8007C2C8 00079228  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8007C2CC 0007922C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8007C2D0 00079230  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8007C2D4 00079234  38 21 00 18 */	addi r1, r1, 0x18
/* 8007C2D8 00079238  7C 08 03 A6 */	mtlr r0
/* 8007C2DC 0007923C  4E 80 00 20 */	blr 

.global OSLockMutex
OSLockMutex:
/* 8007C2E0 00079240  7C 08 02 A6 */	mflr r0
/* 8007C2E4 00079244  90 01 00 04 */	stw r0, 4(r1)
/* 8007C2E8 00079248  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007C2EC 0007924C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8007C2F0 00079250  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8007C2F4 00079254  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8007C2F8 00079258  93 81 00 10 */	stw r28, 0x10(r1)
/* 8007C2FC 0007925C  7C 7C 1B 78 */	mr r28, r3
/* 8007C300 00079260  4B FF E9 25 */	bl OSDisableInterrupts
/* 8007C304 00079264  7C 7D 1B 78 */	mr r29, r3
/* 8007C308 00079268  48 00 19 D5 */	bl OSGetCurrentThread
/* 8007C30C 0007926C  3B C3 00 00 */	addi r30, r3, 0
/* 8007C310 00079270  3B E0 00 00 */	li r31, 0
lbl_8007C314:
/* 8007C314 00079274  80 1C 00 08 */	lwz r0, 8(r28)
/* 8007C318 00079278  28 00 00 00 */	cmplwi r0, 0
/* 8007C31C 0007927C  40 82 00 40 */	bne lbl_8007C35C
/* 8007C320 00079280  93 DC 00 08 */	stw r30, 8(r28)
/* 8007C324 00079284  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8007C328 00079288  38 03 00 01 */	addi r0, r3, 1
/* 8007C32C 0007928C  90 1C 00 0C */	stw r0, 0xc(r28)
/* 8007C330 00079290  80 7E 02 F8 */	lwz r3, 0x2f8(r30)
/* 8007C334 00079294  28 03 00 00 */	cmplwi r3, 0
/* 8007C338 00079298  40 82 00 0C */	bne lbl_8007C344
/* 8007C33C 0007929C  93 9E 02 F4 */	stw r28, 0x2f4(r30)
/* 8007C340 000792A0  48 00 00 08 */	b lbl_8007C348
lbl_8007C344:
/* 8007C344 000792A4  93 83 00 10 */	stw r28, 0x10(r3)
lbl_8007C348:
/* 8007C348 000792A8  90 7C 00 14 */	stw r3, 0x14(r28)
/* 8007C34C 000792AC  38 00 00 00 */	li r0, 0
/* 8007C350 000792B0  90 1C 00 10 */	stw r0, 0x10(r28)
/* 8007C354 000792B4  93 9E 02 F8 */	stw r28, 0x2f8(r30)
/* 8007C358 000792B8  48 00 00 3C */	b lbl_8007C394
lbl_8007C35C:
/* 8007C35C 000792BC  7C 00 F0 40 */	cmplw r0, r30
/* 8007C360 000792C0  40 82 00 14 */	bne lbl_8007C374
/* 8007C364 000792C4  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8007C368 000792C8  38 03 00 01 */	addi r0, r3, 1
/* 8007C36C 000792CC  90 1C 00 0C */	stw r0, 0xc(r28)
/* 8007C370 000792D0  48 00 00 24 */	b lbl_8007C394
lbl_8007C374:
/* 8007C374 000792D4  93 9E 02 F0 */	stw r28, 0x2f0(r30)
/* 8007C378 000792D8  80 7C 00 08 */	lwz r3, 8(r28)
/* 8007C37C 000792DC  80 9E 02 D0 */	lwz r4, 0x2d0(r30)
/* 8007C380 000792E0  48 00 1C 81 */	bl __OSPromoteThread
/* 8007C384 000792E4  7F 83 E3 78 */	mr r3, r28
/* 8007C388 000792E8  48 00 28 CD */	bl OSSleepThread
/* 8007C38C 000792EC  93 FE 02 F0 */	stw r31, 0x2f0(r30)
/* 8007C390 000792F0  4B FF FF 84 */	b lbl_8007C314
lbl_8007C394:
/* 8007C394 000792F4  7F A3 EB 78 */	mr r3, r29
/* 8007C398 000792F8  4B FF E8 B5 */	bl OSRestoreInterrupts
/* 8007C39C 000792FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007C3A0 00079300  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007C3A4 00079304  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8007C3A8 00079308  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8007C3AC 0007930C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8007C3B0 00079310  38 21 00 20 */	addi r1, r1, 0x20
/* 8007C3B4 00079314  7C 08 03 A6 */	mtlr r0
/* 8007C3B8 00079318  4E 80 00 20 */	blr 

.global OSUnlockMutex
OSUnlockMutex:
/* 8007C3BC 0007931C  7C 08 02 A6 */	mflr r0
/* 8007C3C0 00079320  90 01 00 04 */	stw r0, 4(r1)
/* 8007C3C4 00079324  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007C3C8 00079328  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8007C3CC 0007932C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8007C3D0 00079330  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8007C3D4 00079334  7C 7D 1B 78 */	mr r29, r3
/* 8007C3D8 00079338  4B FF E8 4D */	bl OSDisableInterrupts
/* 8007C3DC 0007933C  7C 7F 1B 78 */	mr r31, r3
/* 8007C3E0 00079340  48 00 18 FD */	bl OSGetCurrentThread
/* 8007C3E4 00079344  80 1D 00 08 */	lwz r0, 8(r29)
/* 8007C3E8 00079348  3B C3 00 00 */	addi r30, r3, 0
/* 8007C3EC 0007934C  7C 00 F0 40 */	cmplw r0, r30
/* 8007C3F0 00079350  40 82 00 70 */	bne lbl_8007C460
/* 8007C3F4 00079354  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8007C3F8 00079358  34 03 FF FF */	addic. r0, r3, -1
/* 8007C3FC 0007935C  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8007C400 00079360  40 82 00 60 */	bne lbl_8007C460
/* 8007C404 00079364  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8007C408 00079368  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 8007C40C 0007936C  28 03 00 00 */	cmplwi r3, 0
/* 8007C410 00079370  40 82 00 0C */	bne lbl_8007C41C
/* 8007C414 00079374  90 9E 02 F8 */	stw r4, 0x2f8(r30)
/* 8007C418 00079378  48 00 00 08 */	b lbl_8007C420
lbl_8007C41C:
/* 8007C41C 0007937C  90 83 00 14 */	stw r4, 0x14(r3)
lbl_8007C420:
/* 8007C420 00079380  28 04 00 00 */	cmplwi r4, 0
/* 8007C424 00079384  40 82 00 0C */	bne lbl_8007C430
/* 8007C428 00079388  90 7E 02 F4 */	stw r3, 0x2f4(r30)
/* 8007C42C 0007938C  48 00 00 08 */	b lbl_8007C434
lbl_8007C430:
/* 8007C430 00079390  90 64 00 10 */	stw r3, 0x10(r4)
lbl_8007C434:
/* 8007C434 00079394  38 00 00 00 */	li r0, 0
/* 8007C438 00079398  90 1D 00 08 */	stw r0, 8(r29)
/* 8007C43C 0007939C  80 7E 02 D0 */	lwz r3, 0x2d0(r30)
/* 8007C440 000793A0  80 1E 02 D4 */	lwz r0, 0x2d4(r30)
/* 8007C444 000793A4  7C 03 00 00 */	cmpw r3, r0
/* 8007C448 000793A8  40 80 00 10 */	bge lbl_8007C458
/* 8007C44C 000793AC  7F C3 F3 78 */	mr r3, r30
/* 8007C450 000793B0  48 00 19 B5 */	bl __OSGetEffectivePriority
/* 8007C454 000793B4  90 7E 02 D0 */	stw r3, 0x2d0(r30)
lbl_8007C458:
/* 8007C458 000793B8  7F A3 EB 78 */	mr r3, r29
/* 8007C45C 000793BC  48 00 28 E5 */	bl OSWakeupThread
lbl_8007C460:
/* 8007C460 000793C0  7F E3 FB 78 */	mr r3, r31
/* 8007C464 000793C4  4B FF E7 E9 */	bl OSRestoreInterrupts
/* 8007C468 000793C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007C46C 000793CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007C470 000793D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8007C474 000793D4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8007C478 000793D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8007C47C 000793DC  7C 08 03 A6 */	mtlr r0
/* 8007C480 000793E0  4E 80 00 20 */	blr 

.global __OSUnlockAllMutex
__OSUnlockAllMutex:
/* 8007C484 000793E4  7C 08 02 A6 */	mflr r0
/* 8007C488 000793E8  90 01 00 04 */	stw r0, 4(r1)
/* 8007C48C 000793EC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8007C490 000793F0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8007C494 000793F4  3B E0 00 00 */	li r31, 0
/* 8007C498 000793F8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8007C49C 000793FC  3B C3 00 00 */	addi r30, r3, 0
/* 8007C4A0 00079400  48 00 00 30 */	b lbl_8007C4D0
lbl_8007C4A4:
/* 8007C4A4 00079404  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8007C4A8 00079408  38 64 00 00 */	addi r3, r4, 0
/* 8007C4AC 0007940C  28 05 00 00 */	cmplwi r5, 0
/* 8007C4B0 00079410  40 82 00 0C */	bne lbl_8007C4BC
/* 8007C4B4 00079414  93 FE 02 F8 */	stw r31, 0x2f8(r30)
/* 8007C4B8 00079418  48 00 00 08 */	b lbl_8007C4C0
lbl_8007C4BC:
/* 8007C4BC 0007941C  93 E5 00 14 */	stw r31, 0x14(r5)
lbl_8007C4C0:
/* 8007C4C0 00079420  90 BE 02 F4 */	stw r5, 0x2f4(r30)
/* 8007C4C4 00079424  93 E4 00 0C */	stw r31, 0xc(r4)
/* 8007C4C8 00079428  93 E4 00 08 */	stw r31, 8(r4)
/* 8007C4CC 0007942C  48 00 28 75 */	bl OSWakeupThread
lbl_8007C4D0:
/* 8007C4D0 00079430  80 9E 02 F4 */	lwz r4, 0x2f4(r30)
/* 8007C4D4 00079434  28 04 00 00 */	cmplwi r4, 0
/* 8007C4D8 00079438  40 82 FF CC */	bne lbl_8007C4A4
/* 8007C4DC 0007943C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8007C4E0 00079440  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8007C4E4 00079444  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8007C4E8 00079448  38 21 00 18 */	addi r1, r1, 0x18
/* 8007C4EC 0007944C  7C 08 03 A6 */	mtlr r0
/* 8007C4F0 00079450  4E 80 00 20 */	blr 

.global __OSCheckMutex
__OSCheckMutex:
/* 8007C4F4 00079454  80 83 00 00 */	lwz r4, 0(r3)
/* 8007C4F8 00079458  38 E0 00 00 */	li r7, 0
/* 8007C4FC 0007945C  28 04 00 00 */	cmplwi r4, 0
/* 8007C500 00079460  41 82 00 18 */	beq lbl_8007C518
/* 8007C504 00079464  80 04 02 E4 */	lwz r0, 0x2e4(r4)
/* 8007C508 00079468  28 00 00 00 */	cmplwi r0, 0
/* 8007C50C 0007946C  41 82 00 0C */	beq lbl_8007C518
/* 8007C510 00079470  38 60 00 00 */	li r3, 0
/* 8007C514 00079474  4E 80 00 20 */	blr 
lbl_8007C518:
/* 8007C518 00079478  80 A3 00 04 */	lwz r5, 4(r3)
/* 8007C51C 0007947C  28 05 00 00 */	cmplwi r5, 0
/* 8007C520 00079480  41 82 00 18 */	beq lbl_8007C538
/* 8007C524 00079484  80 05 02 E0 */	lwz r0, 0x2e0(r5)
/* 8007C528 00079488  28 00 00 00 */	cmplwi r0, 0
/* 8007C52C 0007948C  41 82 00 0C */	beq lbl_8007C538
/* 8007C530 00079490  38 60 00 00 */	li r3, 0
/* 8007C534 00079494  4E 80 00 20 */	blr 
lbl_8007C538:
/* 8007C538 00079498  7C 86 23 78 */	mr r6, r4
/* 8007C53C 0007949C  48 00 00 74 */	b lbl_8007C5B0
lbl_8007C540:
/* 8007C540 000794A0  80 86 02 E0 */	lwz r4, 0x2e0(r6)
/* 8007C544 000794A4  28 04 00 00 */	cmplwi r4, 0
/* 8007C548 000794A8  41 82 00 18 */	beq lbl_8007C560
/* 8007C54C 000794AC  80 04 02 E4 */	lwz r0, 0x2e4(r4)
/* 8007C550 000794B0  7C 06 00 40 */	cmplw r6, r0
/* 8007C554 000794B4  41 82 00 0C */	beq lbl_8007C560
/* 8007C558 000794B8  38 60 00 00 */	li r3, 0
/* 8007C55C 000794BC  4E 80 00 20 */	blr 
lbl_8007C560:
/* 8007C560 000794C0  80 A6 02 E4 */	lwz r5, 0x2e4(r6)
/* 8007C564 000794C4  28 05 00 00 */	cmplwi r5, 0
/* 8007C568 000794C8  41 82 00 18 */	beq lbl_8007C580
/* 8007C56C 000794CC  80 05 02 E0 */	lwz r0, 0x2e0(r5)
/* 8007C570 000794D0  7C 06 00 40 */	cmplw r6, r0
/* 8007C574 000794D4  41 82 00 0C */	beq lbl_8007C580
/* 8007C578 000794D8  38 60 00 00 */	li r3, 0
/* 8007C57C 000794DC  4E 80 00 20 */	blr 
lbl_8007C580:
/* 8007C580 000794E0  A0 06 02 C8 */	lhz r0, 0x2c8(r6)
/* 8007C584 000794E4  28 00 00 04 */	cmplwi r0, 4
/* 8007C588 000794E8  41 82 00 0C */	beq lbl_8007C594
/* 8007C58C 000794EC  38 60 00 00 */	li r3, 0
/* 8007C590 000794F0  4E 80 00 20 */	blr 
lbl_8007C594:
/* 8007C594 000794F4  80 06 02 D0 */	lwz r0, 0x2d0(r6)
/* 8007C598 000794F8  7C 00 38 00 */	cmpw r0, r7
/* 8007C59C 000794FC  40 80 00 0C */	bge lbl_8007C5A8
/* 8007C5A0 00079500  38 60 00 00 */	li r3, 0
/* 8007C5A4 00079504  4E 80 00 20 */	blr 
lbl_8007C5A8:
/* 8007C5A8 00079508  7C 07 03 78 */	mr r7, r0
/* 8007C5AC 0007950C  38 C4 00 00 */	addi r6, r4, 0
lbl_8007C5B0:
/* 8007C5B0 00079510  28 06 00 00 */	cmplwi r6, 0
/* 8007C5B4 00079514  40 82 FF 8C */	bne lbl_8007C540
/* 8007C5B8 00079518  80 03 00 08 */	lwz r0, 8(r3)
/* 8007C5BC 0007951C  28 00 00 00 */	cmplwi r0, 0
/* 8007C5C0 00079520  41 82 00 18 */	beq lbl_8007C5D8
/* 8007C5C4 00079524  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8007C5C8 00079528  2C 00 00 00 */	cmpwi r0, 0
/* 8007C5CC 0007952C  41 81 00 20 */	bgt lbl_8007C5EC
/* 8007C5D0 00079530  38 60 00 00 */	li r3, 0
/* 8007C5D4 00079534  4E 80 00 20 */	blr 
lbl_8007C5D8:
/* 8007C5D8 00079538  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8007C5DC 0007953C  2C 00 00 00 */	cmpwi r0, 0
/* 8007C5E0 00079540  41 82 00 0C */	beq lbl_8007C5EC
/* 8007C5E4 00079544  38 60 00 00 */	li r3, 0
/* 8007C5E8 00079548  4E 80 00 20 */	blr 
lbl_8007C5EC:
/* 8007C5EC 0007954C  38 60 00 01 */	li r3, 1
/* 8007C5F0 00079550  4E 80 00 20 */	blr 

.global __OSCheckDeadLock
__OSCheckDeadLock:
/* 8007C5F4 00079554  80 83 02 F0 */	lwz r4, 0x2f0(r3)
/* 8007C5F8 00079558  48 00 00 18 */	b lbl_8007C610
lbl_8007C5FC:
/* 8007C5FC 0007955C  7C 04 18 40 */	cmplw r4, r3
/* 8007C600 00079560  40 82 00 0C */	bne lbl_8007C60C
/* 8007C604 00079564  38 60 00 01 */	li r3, 1
/* 8007C608 00079568  4E 80 00 20 */	blr 
lbl_8007C60C:
/* 8007C60C 0007956C  80 84 02 F0 */	lwz r4, 0x2f0(r4)
lbl_8007C610:
/* 8007C610 00079570  28 04 00 00 */	cmplwi r4, 0
/* 8007C614 00079574  41 82 00 10 */	beq lbl_8007C624
/* 8007C618 00079578  80 84 00 08 */	lwz r4, 8(r4)
/* 8007C61C 0007957C  28 04 00 00 */	cmplwi r4, 0
/* 8007C620 00079580  40 82 FF DC */	bne lbl_8007C5FC
lbl_8007C624:
/* 8007C624 00079584  38 60 00 00 */	li r3, 0
/* 8007C628 00079588  4E 80 00 20 */	blr 

.global __OSCheckMutexes
__OSCheckMutexes:
/* 8007C62C 0007958C  7C 08 02 A6 */	mflr r0
/* 8007C630 00079590  90 01 00 04 */	stw r0, 4(r1)
/* 8007C634 00079594  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8007C638 00079598  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8007C63C 0007959C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8007C640 000795A0  7C 7E 1B 78 */	mr r30, r3
/* 8007C644 000795A4  83 E3 02 F4 */	lwz r31, 0x2f4(r3)
/* 8007C648 000795A8  48 00 00 34 */	b lbl_8007C67C
lbl_8007C64C:
/* 8007C64C 000795AC  80 1F 00 08 */	lwz r0, 8(r31)
/* 8007C650 000795B0  7C 00 F0 40 */	cmplw r0, r30
/* 8007C654 000795B4  41 82 00 0C */	beq lbl_8007C660
/* 8007C658 000795B8  38 60 00 00 */	li r3, 0
/* 8007C65C 000795BC  48 00 00 2C */	b lbl_8007C688
lbl_8007C660:
/* 8007C660 000795C0  7F E3 FB 78 */	mr r3, r31
/* 8007C664 000795C4  4B FF FE 91 */	bl __OSCheckMutex
/* 8007C668 000795C8  2C 03 00 00 */	cmpwi r3, 0
/* 8007C66C 000795CC  40 82 00 0C */	bne lbl_8007C678
/* 8007C670 000795D0  38 60 00 00 */	li r3, 0
/* 8007C674 000795D4  48 00 00 14 */	b lbl_8007C688
lbl_8007C678:
/* 8007C678 000795D8  83 FF 00 10 */	lwz r31, 0x10(r31)
lbl_8007C67C:
/* 8007C67C 000795DC  28 1F 00 00 */	cmplwi r31, 0
/* 8007C680 000795E0  40 82 FF CC */	bne lbl_8007C64C
/* 8007C684 000795E4  38 60 00 01 */	li r3, 1
lbl_8007C688:
/* 8007C688 000795E8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8007C68C 000795EC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8007C690 000795F0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8007C694 000795F4  38 21 00 18 */	addi r1, r1, 0x18
/* 8007C698 000795F8  7C 08 03 A6 */	mtlr r0
/* 8007C69C 000795FC  4E 80 00 20 */	blr 
