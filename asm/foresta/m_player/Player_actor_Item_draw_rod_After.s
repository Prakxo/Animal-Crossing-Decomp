lbl_804E2874:
/* 804E2874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E2878  7C 08 02 A6 */	mflr r0
/* 804E287C  2C 05 00 00 */	cmpwi r5, 0
/* 804E2880  7C 8B 23 78 */	mr r11, r4
/* 804E2884  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E2888  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E288C  7C 7F 1B 78 */	mr r31, r3
/* 804E2890  41 80 00 40 */	blt lbl_804E28D0
/* 804E2894  2C 05 00 05 */	cmpwi r5, 5
/* 804E2898  40 80 00 38 */	bge lbl_804E28D0
/* 804E289C  3C 60 80 65 */	lis r3, proc_6501@ha /* 0x80648098@ha */
/* 804E28A0  54 A0 10 3A */	slwi r0, r5, 2
/* 804E28A4  38 63 80 98 */	addi r3, r3, proc_6501@l /* 0x80648098@l */
/* 804E28A8  7D 83 00 2E */	lwzx r12, r3, r0
/* 804E28AC  28 0C 00 00 */	cmplwi r12, 0
/* 804E28B0  41 82 00 20 */	beq lbl_804E28D0
/* 804E28B4  7D 03 43 78 */	mr r3, r8
/* 804E28B8  7D 28 4B 78 */	mr r8, r9
/* 804E28BC  7F E4 FB 78 */	mr r4, r31
/* 804E28C0  7D 65 5B 78 */	mr r5, r11
/* 804E28C4  7D 49 53 78 */	mr r9, r10
/* 804E28C8  7D 89 03 A6 */	mtctr r12
/* 804E28CC  4E 80 04 21 */	bctrl 
lbl_804E28D0:
/* 804E28D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E28D4  38 60 00 01 */	li r3, 1
/* 804E28D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E28DC  7C 08 03 A6 */	mtlr r0
/* 804E28E0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E28E4  4E 80 00 20 */	blr 
