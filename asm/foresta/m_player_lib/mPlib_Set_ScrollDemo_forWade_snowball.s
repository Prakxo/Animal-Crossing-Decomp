lbl_803DDBB8:
/* 803DDBB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DDBBC  7C 08 02 A6 */	mflr r0
/* 803DDBC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DDBC4  39 61 00 20 */	addi r11, r1, 0x20
/* 803DDBC8  4B CB D3 0D */	bl func_8009AED4
/* 803DDBCC  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDBD0  7C 7D 1B 78 */	mr r29, r3
/* 803DDBD4  38 65 52 F0 */	addi r3, r5, data_811C52F0@l /* 0x811C52F0@l */
/* 803DDBD8  7C 9E 23 78 */	mr r30, r4
/* 803DDBDC  80 63 00 00 */	lwz r3, 0(r3)
/* 803DDBE0  4B FF BA 61 */	bl get_player_actor_withoutCheck
/* 803DDBE4  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDBE8  7C 7F 1B 78 */	mr r31, r3
/* 803DDBEC  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DDBF0  80 63 00 00 */	lwz r3, 0(r3)
/* 803DDBF4  4B FF BA 4D */	bl get_player_actor_withoutCheck
/* 803DDBF8  81 83 13 60 */	lwz r12, 0x1360(r3)
/* 803DDBFC  7F E3 FB 78 */	mr r3, r31
/* 803DDC00  7F A4 EB 78 */	mr r4, r29
/* 803DDC04  7F C5 F3 78 */	mr r5, r30
/* 803DDC08  7D 89 03 A6 */	mtctr r12
/* 803DDC0C  4E 80 04 21 */	bctrl 
/* 803DDC10  39 61 00 20 */	addi r11, r1, 0x20
/* 803DDC14  4B CB D3 0D */	bl func_8009AF20
/* 803DDC18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DDC1C  7C 08 03 A6 */	mtlr r0
/* 803DDC20  38 21 00 20 */	addi r1, r1, 0x20
/* 803DDC24  4E 80 00 20 */	blr 
