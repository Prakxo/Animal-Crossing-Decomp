lbl_80503690:
/* 80503690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80503694  7C 08 02 A6 */	mflr r0
/* 80503698  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050369C  4B FD 34 99 */	bl Player_actor_Excute_Corect_forStand
/* 805036A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805036A4  7C 08 03 A6 */	mtlr r0
/* 805036A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805036AC  4E 80 00 20 */	blr 
