lbl_805F62CC:
/* 805F62CC  28 03 00 18 */	cmplwi r3, 0x18
/* 805F62D0  39 00 00 00 */	li r8, 0
/* 805F62D4  41 81 00 E8 */	bgt lbl_805F63BC
/* 805F62D8  3C E0 80 6D */	lis r7, lit_2529@ha /* 0x806D0BC0@ha */
/* 805F62DC  54 60 10 3A */	slwi r0, r3, 2
/* 805F62E0  38 67 0B C0 */	addi r3, r7, lit_2529@l /* 0x806D0BC0@l */
/* 805F62E4  7C 03 00 2E */	lwzx r0, r3, r0
/* 805F62E8  7C 09 03 A6 */	mtctr r0
/* 805F62EC  4E 80 04 20 */	bctr 
lbl_805F62F0:
/* 805F62F0  2C 04 00 01 */	cmpwi r4, 1
/* 805F62F4  41 82 00 7C */	beq lbl_805F6370
/* 805F62F8  40 80 00 10 */	bge lbl_805F6308
/* 805F62FC  2C 04 00 00 */	cmpwi r4, 0
/* 805F6300  40 80 00 14 */	bge lbl_805F6314
/* 805F6304  48 00 00 B8 */	b lbl_805F63BC
lbl_805F6308:
/* 805F6308  2C 04 00 05 */	cmpwi r4, 5
/* 805F630C  41 82 00 6C */	beq lbl_805F6378
/* 805F6310  48 00 00 AC */	b lbl_805F63BC
lbl_805F6314:
/* 805F6314  2C 05 00 01 */	cmpwi r5, 1
/* 805F6318  41 82 00 48 */	beq lbl_805F6360
/* 805F631C  40 80 00 A0 */	bge lbl_805F63BC
/* 805F6320  2C 05 00 00 */	cmpwi r5, 0
/* 805F6324  40 80 00 08 */	bge lbl_805F632C
/* 805F6328  48 00 00 94 */	b lbl_805F63BC
lbl_805F632C:
/* 805F632C  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 805F6330  2C 00 00 01 */	cmpwi r0, 1
/* 805F6334  41 82 00 1C */	beq lbl_805F6350
/* 805F6338  40 80 00 20 */	bge lbl_805F6358
/* 805F633C  2C 00 00 00 */	cmpwi r0, 0
/* 805F6340  40 80 00 08 */	bge lbl_805F6348
/* 805F6344  48 00 00 14 */	b lbl_805F6358
lbl_805F6348:
/* 805F6348  39 00 00 01 */	li r8, 1
/* 805F634C  48 00 00 70 */	b lbl_805F63BC
lbl_805F6350:
/* 805F6350  39 00 00 02 */	li r8, 2
/* 805F6354  48 00 00 68 */	b lbl_805F63BC
lbl_805F6358:
/* 805F6358  39 00 00 03 */	li r8, 3
/* 805F635C  48 00 00 60 */	b lbl_805F63BC
lbl_805F6360:
/* 805F6360  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 805F6364  40 82 00 58 */	bne lbl_805F63BC
/* 805F6368  39 00 00 05 */	li r8, 5
/* 805F636C  48 00 00 50 */	b lbl_805F63BC
lbl_805F6370:
/* 805F6370  39 00 00 06 */	li r8, 6
/* 805F6374  48 00 00 48 */	b lbl_805F63BC
lbl_805F6378:
/* 805F6378  2C 05 00 00 */	cmpwi r5, 0
/* 805F637C  40 82 00 40 */	bne lbl_805F63BC
/* 805F6380  39 00 00 04 */	li r8, 4
/* 805F6384  48 00 00 38 */	b lbl_805F63BC
lbl_805F6388:
/* 805F6388  39 00 00 08 */	li r8, 8
/* 805F638C  48 00 00 30 */	b lbl_805F63BC
lbl_805F6390:
/* 805F6390  2C 05 00 09 */	cmpwi r5, 9
/* 805F6394  41 82 00 14 */	beq lbl_805F63A8
/* 805F6398  40 80 00 24 */	bge lbl_805F63BC
/* 805F639C  2C 05 00 01 */	cmpwi r5, 1
/* 805F63A0  41 82 00 10 */	beq lbl_805F63B0
/* 805F63A4  48 00 00 18 */	b lbl_805F63BC
lbl_805F63A8:
/* 805F63A8  39 00 00 09 */	li r8, 9
/* 805F63AC  48 00 00 10 */	b lbl_805F63BC
lbl_805F63B0:
/* 805F63B0  39 00 00 07 */	li r8, 7
/* 805F63B4  48 00 00 08 */	b lbl_805F63BC
lbl_805F63B8:
/* 805F63B8  39 00 00 0A */	li r8, 0xa
lbl_805F63BC:
/* 805F63BC  7D 03 43 78 */	mr r3, r8
/* 805F63C0  4E 80 00 20 */	blr 
