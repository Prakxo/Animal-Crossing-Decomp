lbl_803DDA24:
/* 803DDA24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DDA28  7C 08 02 A6 */	mflr r0
/* 803DDA2C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDA30  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DDA34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DDA38  7C 7F 1B 78 */	mr r31, r3
/* 803DDA3C  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DDA40  80 63 00 00 */	lwz r3, 0(r3)
/* 803DDA44  4B FF BB FD */	bl get_player_actor_withoutCheck
/* 803DDA48  9B E3 0E 6D */	stb r31, 0xe6d(r3)
/* 803DDA4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DDA50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DDA54  7C 08 03 A6 */	mtlr r0
/* 803DDA58  38 21 00 10 */	addi r1, r1, 0x10
/* 803DDA5C  4E 80 00 20 */	blr 
