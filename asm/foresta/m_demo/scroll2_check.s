lbl_80399A4C:
/* 80399A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80399A50  7C 08 02 A6 */	mflr r0
/* 80399A54  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80399A58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80399A5C  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80399A60  80 63 00 00 */	lwz r3, 0(r3)
/* 80399A64  48 04 18 19 */	bl mPlib_check_request_main_demo_wade_priority
/* 80399A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80399A6C  7C 08 03 A6 */	mtlr r0
/* 80399A70  38 21 00 10 */	addi r1, r1, 0x10
/* 80399A74  4E 80 00 20 */	blr 
