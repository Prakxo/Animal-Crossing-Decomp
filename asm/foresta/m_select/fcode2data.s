lbl_80627F30:
/* 80627F30  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80627F34  38 80 00 00 */	li r4, 0
/* 80627F38  28 00 00 20 */	cmplwi r0, 0x20
/* 80627F3C  41 82 00 0C */	beq lbl_80627F48
/* 80627F40  38 03 FF 70 */	addi r0, r3, -144
/* 80627F44  54 04 06 3E */	clrlwi r4, r0, 0x18
lbl_80627F48:
/* 80627F48  7C 83 23 78 */	mr r3, r4
/* 80627F4C  4E 80 00 20 */	blr 
