lbl_806010AC:
/* 806010AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806010B0  7C 08 02 A6 */	mflr r0
/* 806010B4  39 40 00 00 */	li r10, 0
/* 806010B8  39 20 00 03 */	li r9, 3
/* 806010BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806010C0  38 00 00 05 */	li r0, 5
/* 806010C4  38 80 00 0A */	li r4, 0xa
/* 806010C8  38 A0 00 06 */	li r5, 6
/* 806010CC  81 63 00 2C */	lwz r11, 0x2c(r3)
/* 806010D0  38 C0 00 00 */	li r6, 0
/* 806010D4  39 00 00 50 */	li r8, 0x50
/* 806010D8  80 EB 09 F0 */	lwz r7, 0x9f0(r11)
/* 806010DC  91 4B 09 3C */	stw r10, 0x93c(r11)
/* 806010E0  38 E7 00 06 */	addi r7, r7, 6
/* 806010E4  91 4B 08 80 */	stw r10, 0x880(r11)
/* 806010E8  91 2B 08 AC */	stw r9, 0x8ac(r11)
/* 806010EC  B0 0B 08 B0 */	sth r0, 0x8b0(r11)
/* 806010F0  4B DE E6 39 */	bl mSM_open_submenu_new2
/* 806010F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806010F8  7C 08 03 A6 */	mtlr r0
/* 806010FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80601100  4E 80 00 20 */	blr 
