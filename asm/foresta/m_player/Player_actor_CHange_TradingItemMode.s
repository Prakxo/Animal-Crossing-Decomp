lbl_804D7658:
/* 804D7658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D765C  7C 08 02 A6 */	mflr r0
/* 804D7660  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804D7664  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 804D7668  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804D766C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D7670  3C A5 00 02 */	addis r5, r5, 2
/* 804D7674  80 A5 60 94 */	lwz r5, 0x6094(r5)
/* 804D7678  81 85 00 08 */	lwz r12, 8(r5)
/* 804D767C  7D 89 03 A6 */	mtctr r12
/* 804D7680  4E 80 04 21 */	bctrl 
/* 804D7684  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D7688  7C 08 03 A6 */	mtlr r0
/* 804D768C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D7690  4E 80 00 20 */	blr 
