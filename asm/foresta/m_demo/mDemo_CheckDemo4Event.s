lbl_8039A354:
/* 8039A354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039A358  7C 08 02 A6 */	mflr r0
/* 8039A35C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039A360  4B FF E5 ED */	bl mDemo_CheckDemoType
/* 8039A364  2C 03 00 0D */	cmpwi r3, 0xd
/* 8039A368  40 80 00 10 */	bge lbl_8039A378
/* 8039A36C  2C 03 00 00 */	cmpwi r3, 0
/* 8039A370  41 82 00 10 */	beq lbl_8039A380
/* 8039A374  48 00 00 14 */	b lbl_8039A388
lbl_8039A378:
/* 8039A378  2C 03 00 0F */	cmpwi r3, 0xf
/* 8039A37C  40 80 00 0C */	bge lbl_8039A388
lbl_8039A380:
/* 8039A380  38 60 00 00 */	li r3, 0
/* 8039A384  48 00 00 08 */	b lbl_8039A38C
lbl_8039A388:
/* 8039A388  38 60 00 01 */	li r3, 1
lbl_8039A38C:
/* 8039A38C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039A390  7C 08 03 A6 */	mtlr r0
/* 8039A394  38 21 00 10 */	addi r1, r1, 0x10
/* 8039A398  4E 80 00 20 */	blr 
