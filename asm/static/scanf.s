.include "macros.inc"

.section .text

.org 0x8009F494

.global __StringRead
__StringRead:
/* 8009F494 0009C3F4  2C 05 00 01 */	cmpwi r5, 1
/* 8009F498 0009C3F8  7C 66 1B 78 */	mr r6, r3
/* 8009F49C 0009C3FC  41 82 00 4C */	beq lbl_8009F4E8
/* 8009F4A0 0009C400  40 80 00 10 */	bge lbl_8009F4B0
/* 8009F4A4 0009C404  2C 05 00 00 */	cmpwi r5, 0
/* 8009F4A8 0009C408  40 80 00 14 */	bge lbl_8009F4BC
/* 8009F4AC 0009C40C  48 00 00 70 */	b lbl_8009F51C
lbl_8009F4B0:
/* 8009F4B0 0009C410  2C 05 00 03 */	cmpwi r5, 3
/* 8009F4B4 0009C414  40 80 00 68 */	bge lbl_8009F51C
/* 8009F4B8 0009C418  48 00 00 5C */	b lbl_8009F514
lbl_8009F4BC:
/* 8009F4BC 0009C41C  80 86 00 00 */	lwz r4, 0(r6)
/* 8009F4C0 0009C420  88 64 00 00 */	lbz r3, 0(r4)
/* 8009F4C4 0009C424  7C 60 07 75 */	extsb. r0, r3
/* 8009F4C8 0009C428  40 82 00 14 */	bne lbl_8009F4DC
/* 8009F4CC 0009C42C  38 00 00 01 */	li r0, 1
/* 8009F4D0 0009C430  38 60 FF FF */	li r3, -1
/* 8009F4D4 0009C434  90 06 00 04 */	stw r0, 4(r6)
/* 8009F4D8 0009C438  4E 80 00 20 */	blr 
lbl_8009F4DC:
/* 8009F4DC 0009C43C  38 04 00 01 */	addi r0, r4, 1
/* 8009F4E0 0009C440  90 06 00 00 */	stw r0, 0(r6)
/* 8009F4E4 0009C444  4E 80 00 20 */	blr 
lbl_8009F4E8:
/* 8009F4E8 0009C448  80 06 00 04 */	lwz r0, 4(r6)
/* 8009F4EC 0009C44C  2C 00 00 00 */	cmpwi r0, 0
/* 8009F4F0 0009C450  40 82 00 14 */	bne lbl_8009F504
/* 8009F4F4 0009C454  80 66 00 00 */	lwz r3, 0(r6)
/* 8009F4F8 0009C458  38 03 FF FF */	addi r0, r3, -1
/* 8009F4FC 0009C45C  90 06 00 00 */	stw r0, 0(r6)
/* 8009F500 0009C460  48 00 00 0C */	b lbl_8009F50C
lbl_8009F504:
/* 8009F504 0009C464  38 00 00 00 */	li r0, 0
/* 8009F508 0009C468  90 06 00 04 */	stw r0, 4(r6)
lbl_8009F50C:
/* 8009F50C 0009C46C  7C 83 23 78 */	mr r3, r4
/* 8009F510 0009C470  4E 80 00 20 */	blr 
lbl_8009F514:
/* 8009F514 0009C474  80 66 00 04 */	lwz r3, 4(r6)
/* 8009F518 0009C478  4E 80 00 20 */	blr 
lbl_8009F51C:
/* 8009F51C 0009C47C  38 60 00 00 */	li r3, 0
/* 8009F520 0009C480  4E 80 00 20 */	blr 
