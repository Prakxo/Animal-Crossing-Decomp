lbl_805F984C:
/* 805F984C  80 83 00 40 */	lwz r4, 0x40(r3)
/* 805F9850  2C 04 00 00 */	cmpwi r4, 0
/* 805F9854  40 81 00 14 */	ble lbl_805F9868
/* 805F9858  38 04 FF FF */	addi r0, r4, -1
/* 805F985C  38 80 00 01 */	li r4, 1
/* 805F9860  90 03 00 40 */	stw r0, 0x40(r3)
/* 805F9864  48 00 00 08 */	b lbl_805F986C
lbl_805F9868:
/* 805F9868  38 80 00 00 */	li r4, 0
lbl_805F986C:
/* 805F986C  7C 83 23 78 */	mr r3, r4
/* 805F9870  4E 80 00 20 */	blr 
