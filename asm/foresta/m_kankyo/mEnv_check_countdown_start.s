lbl_803B8834:
/* 803B8834  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B8838  7C 08 02 A6 */	mflr r0
/* 803B883C  38 80 00 08 */	li r4, 8
/* 803B8840  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B8844  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B8848  7C 7F 1B 78 */	mr r31, r3
/* 803B884C  38 60 00 40 */	li r3, 0x40
/* 803B8850  4B FE 52 B1 */	bl mEv_check_status
/* 803B8854  2C 03 00 00 */	cmpwi r3, 0
/* 803B8858  40 82 00 6C */	bne lbl_803B88C4
/* 803B885C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008000@ha */
/* 803B8860  38 61 00 0C */	addi r3, r1, 0xc
/* 803B8864  38 81 00 08 */	addi r4, r1, 8
/* 803B8868  38 A5 80 00 */	addi r5, r5, 0x8000 /* 0x00008000@l */
/* 803B886C  4B FE DB 95 */	bl mFI_BlockKind2BkNum
/* 803B8870  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 803B8874  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803B8878  7C 00 07 74 */	extsb r0, r0
/* 803B887C  7C 03 00 00 */	cmpw r3, r0
/* 803B8880  40 82 00 18 */	bne lbl_803B8898
/* 803B8884  88 1F 00 E5 */	lbz r0, 0xe5(r31)
/* 803B8888  80 61 00 08 */	lwz r3, 8(r1)
/* 803B888C  7C 00 07 74 */	extsb r0, r0
/* 803B8890  7C 03 00 00 */	cmpw r3, r0
/* 803B8894  41 82 00 30 */	beq lbl_803B88C4
lbl_803B8898:
/* 803B8898  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B889C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00015144@ha */
/* 803B88A0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803B88A4  3C 84 00 02 */	addis r4, r4, 2
/* 803B88A8  38 03 51 44 */	addi r0, r3, 0x5144 /* 0x00015144@l */
/* 803B88AC  80 64 61 1C */	lwz r3, 0x611c(r4)
/* 803B88B0  7C 03 00 00 */	cmpw r3, r0
/* 803B88B4  41 80 00 10 */	blt lbl_803B88C4
/* 803B88B8  38 60 00 40 */	li r3, 0x40
/* 803B88BC  38 80 00 08 */	li r4, 8
/* 803B88C0  4B FE 51 11 */	bl mEv_set_status
lbl_803B88C4:
/* 803B88C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B88C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B88CC  7C 08 03 A6 */	mtlr r0
/* 803B88D0  38 21 00 20 */	addi r1, r1, 0x20
/* 803B88D4  4E 80 00 20 */	blr 
