lbl_803DE784:
/* 803DE784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DE788  7C 08 02 A6 */	mflr r0
/* 803DE78C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DE790  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DE794  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DE798  80 63 00 00 */	lwz r3, 0(r3)
/* 803DE79C  4B FF AE A5 */	bl get_player_actor_withoutCheck
/* 803DE7A0  38 00 00 01 */	li r0, 1
/* 803DE7A4  90 03 12 4C */	stw r0, 0x124c(r3)
/* 803DE7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE7AC  7C 08 03 A6 */	mtlr r0
/* 803DE7B0  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE7B4  4E 80 00 20 */	blr 
