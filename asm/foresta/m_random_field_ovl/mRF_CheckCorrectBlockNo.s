lbl_80508E78:
/* 80508E78  7C 03 28 00 */	cmpw r3, r5
/* 80508E7C  40 80 00 0C */	bge lbl_80508E88
/* 80508E80  38 60 00 00 */	li r3, 0
/* 80508E84  4E 80 00 20 */	blr 
lbl_80508E88:
/* 80508E88  7C 03 30 00 */	cmpw r3, r6
/* 80508E8C  40 81 00 0C */	ble lbl_80508E98
/* 80508E90  38 60 00 00 */	li r3, 0
/* 80508E94  4E 80 00 20 */	blr 
lbl_80508E98:
/* 80508E98  7C 04 38 00 */	cmpw r4, r7
/* 80508E9C  40 80 00 0C */	bge lbl_80508EA8
/* 80508EA0  38 60 00 00 */	li r3, 0
/* 80508EA4  4E 80 00 20 */	blr 
lbl_80508EA8:
/* 80508EA8  7D 05 FE 70 */	srawi r5, r8, 0x1f
/* 80508EAC  54 83 0F FE */	srwi r3, r4, 0x1f
/* 80508EB0  7C 04 40 10 */	subfc r0, r4, r8
/* 80508EB4  7C 65 19 14 */	adde r3, r5, r3
/* 80508EB8  4E 80 00 20 */	blr 
