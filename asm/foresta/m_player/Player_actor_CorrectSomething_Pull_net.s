lbl_804F3900:
/* 804F3900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F3904  7C 08 02 A6 */	mflr r0
/* 804F3908  3C 80 80 64 */	lis r4, lit_3046@ha /* 0x80646E54@ha */
/* 804F390C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F3910  C0 04 6E 54 */	lfs f0, lit_3046@l(r4)  /* 0x80646E54@l */
/* 804F3914  C0 23 01 84 */	lfs f1, 0x184(r3)
/* 804F3918  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F391C  40 81 00 2C */	ble lbl_804F3948
/* 804F3920  80 83 0E 70 */	lwz r4, 0xe70(r3)
/* 804F3924  28 04 00 00 */	cmplwi r4, 0
/* 804F3928  41 82 00 18 */	beq lbl_804F3940
/* 804F392C  88 03 0E 74 */	lbz r0, 0xe74(r3)
/* 804F3930  7C 00 07 75 */	extsb. r0, r0
/* 804F3934  40 82 00 0C */	bne lbl_804F3940
/* 804F3938  38 00 00 01 */	li r0, 1
/* 804F393C  98 04 00 B5 */	stb r0, 0xb5(r4)
lbl_804F3940:
/* 804F3940  38 83 10 5C */	addi r4, r3, 0x105c
/* 804F3944  48 00 00 08 */	b lbl_804F394C
lbl_804F3948:
/* 804F3948  38 83 0E 38 */	addi r4, r3, 0xe38
lbl_804F394C:
/* 804F394C  4B FE D8 D5 */	bl Player_actor_CorrectSomething_net
/* 804F3950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F3954  7C 08 03 A6 */	mtlr r0
/* 804F3958  38 21 00 10 */	addi r1, r1, 0x10
/* 804F395C  4E 80 00 20 */	blr 
