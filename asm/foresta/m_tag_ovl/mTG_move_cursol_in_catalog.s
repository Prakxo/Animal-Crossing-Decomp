lbl_805F9570:
/* 805F9570  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F9574  7C 08 02 A6 */	mflr r0
/* 805F9578  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F957C  39 61 00 20 */	addi r11, r1, 0x20
/* 805F9580  4B AA 19 51 */	bl func_8009AED0
/* 805F9584  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F9588  7C 9E 23 78 */	mr r30, r4
/* 805F958C  7C BC 2B 78 */	mr r28, r5
/* 805F9590  83 E3 09 CC */	lwz r31, 0x9cc(r3)
/* 805F9594  4B D9 C9 DD */	bl getTrigger
/* 805F9598  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 805F959C  4B D9 C9 35 */	bl getButton
/* 805F95A0  3C BF 00 01 */	addis r5, r31, 1
/* 805F95A4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805F95A8  88 65 D9 F4 */	lbz r3, -0x260c(r5)
/* 805F95AC  7C 04 EB 78 */	or r4, r0, r29
/* 805F95B0  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 805F95B4  80 DE 00 40 */	lwz r6, 0x40(r30)
/* 805F95B8  1C 63 06 44 */	mulli r3, r3, 0x644
/* 805F95BC  54 88 07 3E */	clrlwi r8, r4, 0x1c
/* 805F95C0  3C 63 00 01 */	addis r3, r3, 1
/* 805F95C4  38 63 A1 48 */	addi r3, r3, -24248
/* 805F95C8  7C 7F 1A 14 */	add r3, r31, r3
/* 805F95CC  A8 83 00 02 */	lha r4, 2(r3)
/* 805F95D0  7C E4 32 14 */	add r7, r4, r6
/* 805F95D4  41 82 00 30 */	beq lbl_805F9604
/* 805F95D8  7C 80 07 35 */	extsh. r0, r4
/* 805F95DC  40 82 00 0C */	bne lbl_805F95E8
/* 805F95E0  2C 06 00 00 */	cmpwi r6, 0
/* 805F95E4  41 82 01 E0 */	beq lbl_805F97C4
lbl_805F95E8:
/* 805F95E8  38 A0 00 00 */	li r5, 0
/* 805F95EC  3C 9F 00 01 */	addis r4, r31, 1
/* 805F95F0  B0 A3 00 02 */	sth r5, 2(r3)
/* 805F95F4  38 00 00 01 */	li r0, 1
/* 805F95F8  90 BE 00 40 */	stw r5, 0x40(r30)
/* 805F95FC  98 04 D9 FD */	stb r0, -0x2603(r4)
/* 805F9600  48 00 01 C4 */	b lbl_805F97C4
lbl_805F9604:
/* 805F9604  55 00 07 FF */	clrlwi. r0, r8, 0x1f
/* 805F9608  41 82 00 54 */	beq lbl_805F965C
/* 805F960C  A8 A3 00 00 */	lha r5, 0(r3)
/* 805F9610  7C A0 07 35 */	extsh. r0, r5
/* 805F9614  40 81 01 B0 */	ble lbl_805F97C4
/* 805F9618  2C 05 00 07 */	cmpwi r5, 7
/* 805F961C  40 80 00 10 */	bge lbl_805F962C
/* 805F9620  38 A5 FF FF */	addi r5, r5, -1
/* 805F9624  38 00 00 00 */	li r0, 0
/* 805F9628  48 00 00 0C */	b lbl_805F9634
lbl_805F962C:
/* 805F962C  38 05 FF F9 */	addi r0, r5, -7
/* 805F9630  38 A0 00 06 */	li r5, 6
lbl_805F9634:
/* 805F9634  7C 04 00 00 */	cmpw r4, r0
/* 805F9638  40 82 00 0C */	bne lbl_805F9644
/* 805F963C  7C 06 28 00 */	cmpw r6, r5
/* 805F9640  41 82 01 84 */	beq lbl_805F97C4
lbl_805F9644:
/* 805F9644  B0 03 00 02 */	sth r0, 2(r3)
/* 805F9648  3C 7F 00 01 */	addis r3, r31, 1
/* 805F964C  38 00 00 01 */	li r0, 1
/* 805F9650  90 BE 00 40 */	stw r5, 0x40(r30)
/* 805F9654  98 03 D9 FD */	stb r0, -0x2603(r3)
/* 805F9658  48 00 01 6C */	b lbl_805F97C4
lbl_805F965C:
/* 805F965C  57 80 07 7B */	rlwinm. r0, r28, 0, 0x1d, 0x1d
/* 805F9660  41 82 00 D0 */	beq lbl_805F9730
/* 805F9664  55 00 07 7B */	rlwinm. r0, r8, 0, 0x1d, 0x1d
/* 805F9668  41 82 00 70 */	beq lbl_805F96D8
/* 805F966C  A8 C3 00 00 */	lha r6, 0(r3)
/* 805F9670  38 04 00 07 */	addi r0, r4, 7
/* 805F9674  38 86 FF F9 */	addi r4, r6, -7
/* 805F9678  7C 00 20 00 */	cmpw r0, r4
/* 805F967C  41 81 00 14 */	bgt lbl_805F9690
/* 805F9680  B0 03 00 02 */	sth r0, 2(r3)
/* 805F9684  38 00 00 01 */	li r0, 1
/* 805F9688  98 05 D9 FD */	stb r0, -0x2603(r5)
/* 805F968C  48 00 01 38 */	b lbl_805F97C4
lbl_805F9690:
/* 805F9690  38 06 FF FF */	addi r0, r6, -1
/* 805F9694  7C 07 00 00 */	cmpw r7, r0
/* 805F9698  40 80 01 2C */	bge lbl_805F97C4
/* 805F969C  B0 83 00 02 */	sth r4, 2(r3)
/* 805F96A0  A8 03 00 02 */	lha r0, 2(r3)
/* 805F96A4  2C 00 00 00 */	cmpwi r0, 0
/* 805F96A8  40 80 00 0C */	bge lbl_805F96B4
/* 805F96AC  38 00 00 00 */	li r0, 0
/* 805F96B0  B0 03 00 02 */	sth r0, 2(r3)
lbl_805F96B4:
/* 805F96B4  A8 A3 00 02 */	lha r5, 2(r3)
/* 805F96B8  3C 9F 00 01 */	addis r4, r31, 1
/* 805F96BC  A8 63 00 00 */	lha r3, 0(r3)
/* 805F96C0  38 00 00 01 */	li r0, 1
/* 805F96C4  7C 65 18 50 */	subf r3, r5, r3
/* 805F96C8  38 63 FF FF */	addi r3, r3, -1
/* 805F96CC  90 7E 00 40 */	stw r3, 0x40(r30)
/* 805F96D0  98 04 D9 FD */	stb r0, -0x2603(r4)
/* 805F96D4  48 00 00 F0 */	b lbl_805F97C4
lbl_805F96D8:
/* 805F96D8  A8 83 00 00 */	lha r4, 0(r3)
/* 805F96DC  38 04 FF FF */	addi r0, r4, -1
/* 805F96E0  7C 07 00 00 */	cmpw r7, r0
/* 805F96E4  40 80 00 E0 */	bge lbl_805F97C4
/* 805F96E8  2C 06 00 05 */	cmpwi r6, 5
/* 805F96EC  41 80 00 18 */	blt lbl_805F9704
/* 805F96F0  38 04 FF FE */	addi r0, r4, -2
/* 805F96F4  7C 07 00 00 */	cmpw r7, r0
/* 805F96F8  40 82 00 1C */	bne lbl_805F9714
/* 805F96FC  2C 06 00 06 */	cmpwi r6, 6
/* 805F9700  40 80 00 14 */	bge lbl_805F9714
lbl_805F9704:
/* 805F9704  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 805F9708  38 03 00 01 */	addi r0, r3, 1
/* 805F970C  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805F9710  48 00 00 10 */	b lbl_805F9720
lbl_805F9714:
/* 805F9714  A8 83 00 02 */	lha r4, 2(r3)
/* 805F9718  38 04 00 01 */	addi r0, r4, 1
/* 805F971C  B0 03 00 02 */	sth r0, 2(r3)
lbl_805F9720:
/* 805F9720  3C 7F 00 01 */	addis r3, r31, 1
/* 805F9724  38 00 00 01 */	li r0, 1
/* 805F9728  98 03 D9 FD */	stb r0, -0x2603(r3)
/* 805F972C  48 00 00 98 */	b lbl_805F97C4
lbl_805F9730:
/* 805F9730  57 80 07 39 */	rlwinm. r0, r28, 0, 0x1c, 0x1c
/* 805F9734  41 82 00 90 */	beq lbl_805F97C4
/* 805F9738  55 00 07 39 */	rlwinm. r0, r8, 0, 0x1c, 0x1c
/* 805F973C  41 82 00 40 */	beq lbl_805F977C
/* 805F9740  34 04 FF F9 */	addic. r0, r4, -7
/* 805F9744  41 80 00 18 */	blt lbl_805F975C
/* 805F9748  38 84 FF F9 */	addi r4, r4, -7
/* 805F974C  38 00 00 01 */	li r0, 1
/* 805F9750  B0 83 00 02 */	sth r4, 2(r3)
/* 805F9754  98 05 D9 FD */	stb r0, -0x2603(r5)
/* 805F9758  48 00 00 6C */	b lbl_805F97C4
lbl_805F975C:
/* 805F975C  2C 07 00 00 */	cmpwi r7, 0
/* 805F9760  40 81 00 64 */	ble lbl_805F97C4
/* 805F9764  38 80 00 00 */	li r4, 0
/* 805F9768  38 00 00 01 */	li r0, 1
/* 805F976C  B0 83 00 02 */	sth r4, 2(r3)
/* 805F9770  90 9E 00 40 */	stw r4, 0x40(r30)
/* 805F9774  98 05 D9 FD */	stb r0, -0x2603(r5)
/* 805F9778  48 00 00 4C */	b lbl_805F97C4
lbl_805F977C:
/* 805F977C  2C 07 00 00 */	cmpwi r7, 0
/* 805F9780  40 81 00 44 */	ble lbl_805F97C4
/* 805F9784  2C 06 00 01 */	cmpwi r6, 1
/* 805F9788  41 81 00 14 */	bgt lbl_805F979C
/* 805F978C  2C 07 00 01 */	cmpwi r7, 1
/* 805F9790  40 82 00 1C */	bne lbl_805F97AC
/* 805F9794  2C 06 00 00 */	cmpwi r6, 0
/* 805F9798  40 81 00 14 */	ble lbl_805F97AC
lbl_805F979C:
/* 805F979C  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 805F97A0  38 03 FF FF */	addi r0, r3, -1
/* 805F97A4  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805F97A8  48 00 00 10 */	b lbl_805F97B8
lbl_805F97AC:
/* 805F97AC  A8 83 00 02 */	lha r4, 2(r3)
/* 805F97B0  38 04 FF FF */	addi r0, r4, -1
/* 805F97B4  B0 03 00 02 */	sth r0, 2(r3)
lbl_805F97B8:
/* 805F97B8  3C 7F 00 01 */	addis r3, r31, 1
/* 805F97BC  38 00 00 01 */	li r0, 1
/* 805F97C0  98 03 D9 FD */	stb r0, -0x2603(r3)
lbl_805F97C4:
/* 805F97C4  3C 7F 00 01 */	addis r3, r31, 1
/* 805F97C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805F97CC  88 63 D9 FD */	lbz r3, -0x2603(r3)
/* 805F97D0  4B AA 17 4D */	bl func_8009AF1C
/* 805F97D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F97D8  7C 08 03 A6 */	mtlr r0
/* 805F97DC  38 21 00 20 */	addi r1, r1, 0x20
/* 805F97E0  4E 80 00 20 */	blr 
