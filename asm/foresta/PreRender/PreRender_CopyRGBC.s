lbl_804045DC:
/* 804045DC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804045E0  7C 08 02 A6 */	mflr r0
/* 804045E4  90 01 00 74 */	stw r0, 0x74(r1)
/* 804045E8  39 61 00 70 */	addi r11, r1, 0x70
/* 804045EC  4B C9 68 AD */	bl __save_gpr
/* 804045F0  7C 9F 23 78 */	mr r31, r4
/* 804045F4  7C 7E 1B 78 */	mr r30, r3
/* 804045F8  80 84 00 00 */	lwz r4, 0(r4)
/* 804045FC  7C AF 2B 78 */	mr r15, r5
/* 80404600  7C CE 33 78 */	mr r14, r6
/* 80404604  90 81 00 10 */	stw r4, 0x10(r1)
/* 80404608  A0 03 00 04 */	lhz r0, 4(r3)
/* 8040460C  7C 00 7A 15 */	add. r0, r0, r15
/* 80404610  40 81 03 D0 */	ble lbl_804049E0
/* 80404614  A0 1E 00 06 */	lhz r0, 6(r30)
/* 80404618  7C 00 72 15 */	add. r0, r0, r14
/* 8040461C  41 81 00 08 */	bgt lbl_80404624
/* 80404620  48 00 03 C0 */	b lbl_804049E0
lbl_80404624:
/* 80404624  38 04 00 08 */	addi r0, r4, 8
/* 80404628  3C 60 E7 00 */	lis r3, 0xe700
/* 8040462C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80404630  38 00 00 00 */	li r0, 0
/* 80404634  90 64 00 00 */	stw r3, 0(r4)
/* 80404638  90 04 00 04 */	stw r0, 4(r4)
/* 8040463C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80404640  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80404644  A0 BE 00 00 */	lhz r5, 0(r30)
/* 80404648  A0 DE 00 02 */	lhz r6, 2(r30)
/* 8040464C  4B FF FD BD */	bl gfx_SetUpCFB
/* 80404650  90 61 00 10 */	stw r3, 0x10(r1)
/* 80404654  3D 60 43 30 */	lis r11, 0x4330
/* 80404658  38 03 00 08 */	addi r0, r3, 8
/* 8040465C  3C E0 FD 00 */	lis r7, 0xFD00 /* 0xFCFFFFFF@ha */
/* 80404660  3C 80 EF 00 */	lis r4, 0xEF00 /* 0xEF000CF0@ha */
/* 80404664  90 01 00 10 */	stw r0, 0x10(r1)
/* 80404668  38 04 0C F0 */	addi r0, r4, 0x0CF0 /* 0xEF000CF0@l */
/* 8040466C  3C C0 FF FD */	lis r6, 0xFFFD /* 0xFFFCFC7E@ha */
/* 80404670  3C 80 0F 0A */	lis r4, 0x0F0A /* 0x0F0A4004@ha */
/* 80404674  90 03 00 00 */	stw r0, 0(r3)
/* 80404678  38 04 40 04 */	addi r0, r4, 0x4004 /* 0x0F0A4004@l */
/* 8040467C  39 06 FC 7E */	addi r8, r6, 0xFC7E /* 0xFFFCFC7E@l */
/* 80404680  90 03 00 04 */	stw r0, 4(r3)
/* 80404684  6D E4 80 00 */	xoris r4, r15, 0x8000
/* 80404688  6D C0 80 00 */	xoris r0, r14, 0x8000
/* 8040468C  3C A0 80 64 */	lis r5, lit_411@ha /* 0x806435F4@ha */
/* 80404690  81 41 00 10 */	lwz r10, 0x10(r1)
/* 80404694  39 27 FF FF */	addi r9, r7, 0xFFFF /* 0xFCFFFFFF@l */
/* 80404698  C8 45 35 F4 */	lfd f2, lit_411@l(r5)  /* 0x806435F4@l */
/* 8040469C  3C 60 80 64 */	lis r3, lit_332@ha /* 0x806435EC@ha */
/* 804046A0  38 EA 00 08 */	addi r7, r10, 8
/* 804046A4  C0 63 35 EC */	lfs f3, lit_332@l(r3)  /* 0x806435EC@l */
/* 804046A8  90 E1 00 10 */	stw r7, 0x10(r1)
/* 804046AC  38 E0 00 00 */	li r7, 0
/* 804046B0  38 C0 00 0B */	li r6, 0xb
/* 804046B4  FC 80 18 90 */	fmr f4, f3
/* 804046B8  91 2A 00 00 */	stw r9, 0(r10)
/* 804046BC  38 61 00 10 */	addi r3, r1, 0x10
/* 804046C0  38 A0 00 00 */	li r5, 0
/* 804046C4  39 20 00 02 */	li r9, 2
/* 804046C8  91 0A 00 04 */	stw r8, 4(r10)
/* 804046CC  39 00 00 00 */	li r8, 0
/* 804046D0  39 40 00 00 */	li r10, 0
/* 804046D4  90 E1 00 08 */	stw r7, 8(r1)
/* 804046D8  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804046DC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804046E0  A0 DE 00 04 */	lhz r6, 4(r30)
/* 804046E4  91 61 00 18 */	stw r11, 0x18(r1)
/* 804046E8  A0 FE 00 06 */	lhz r7, 6(r30)
/* 804046EC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804046F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804046F4  EC 20 10 28 */	fsubs f1, f0, f2
/* 804046F8  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 804046FC  91 61 00 20 */	stw r11, 0x20(r1)
/* 80404700  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80404704  EC 40 10 28 */	fsubs f2, f0, f2
/* 80404708  4B FF FC 9D */	bl wallpaper_draw
/* 8040470C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80404710  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80404714  A0 BE 00 04 */	lhz r5, 4(r30)
/* 80404718  A0 DE 00 06 */	lhz r6, 6(r30)
/* 8040471C  4B FF FC ED */	bl gfx_SetUpCFB
/* 80404720  90 61 00 10 */	stw r3, 0x10(r1)
/* 80404724  38 61 00 10 */	addi r3, r1, 0x10
/* 80404728  38 80 00 00 */	li r4, 0
/* 8040472C  38 A0 00 00 */	li r5, 0
/* 80404730  A0 DE 00 04 */	lhz r6, 4(r30)
/* 80404734  A0 FE 00 06 */	lhz r7, 6(r30)
/* 80404738  4B FF FE 05 */	bl PreRender_ShowCoveredge
/* 8040473C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80404740  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80404744  A0 BE 00 00 */	lhz r5, 0(r30)
/* 80404748  A0 DE 00 02 */	lhz r6, 2(r30)
/* 8040474C  4B FF FC BD */	bl gfx_SetUpCFB
/* 80404750  90 61 00 10 */	stw r3, 0x10(r1)
/* 80404754  38 03 00 08 */	addi r0, r3, 8
/* 80404758  3C 80 EF 10 */	lis r4, 0xEF10 /* 0xEF100CF0@ha */
/* 8040475C  3C A0 0F 1A */	lis r5, 0x0F1A /* 0x0F1A714C@ha */
/* 80404760  90 01 00 10 */	stw r0, 0x10(r1)
/* 80404764  38 C4 0C F0 */	addi r6, r4, 0x0CF0 /* 0xEF100CF0@l */
/* 80404768  3C 80 FD 00 */	lis r4, 0xFD00 /* 0xFCFFE3FF@ha */
/* 8040476C  38 05 71 4C */	addi r0, r5, 0x714C /* 0x0F1A714C@l */
/* 80404770  90 C3 00 00 */	stw r6, 0(r3)
/* 80404774  38 C4 E3 FF */	addi r6, r4, 0xE3FF /* 0xFCFFE3FF@l */
/* 80404778  38 A0 FA 38 */	li r5, -1480
/* 8040477C  3C 80 FB 00 */	lis r4, 0xfb00
/* 80404780  90 03 00 04 */	stw r0, 4(r3)
/* 80404784  38 00 FF 20 */	li r0, -224
/* 80404788  38 60 10 00 */	li r3, 0x1000
/* 8040478C  2C 0F 00 00 */	cmpwi r15, 0
/* 80404790  81 01 00 10 */	lwz r8, 0x10(r1)
/* 80404794  38 E8 00 08 */	addi r7, r8, 8
/* 80404798  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8040479C  90 C8 00 00 */	stw r6, 0(r8)
/* 804047A0  90 A8 00 04 */	stw r5, 4(r8)
/* 804047A4  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 804047A8  38 A6 00 08 */	addi r5, r6, 8
/* 804047AC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 804047B0  90 86 00 00 */	stw r4, 0(r6)
/* 804047B4  90 06 00 04 */	stw r0, 4(r6)
/* 804047B8  A0 9E 00 04 */	lhz r4, 4(r30)
/* 804047BC  54 80 0B FC */	rlwinm r0, r4, 1, 0xf, 0x1e
/* 804047C0  7F 83 03 96 */	divwu r28, r3, r0
/* 804047C4  40 80 00 10 */	bge lbl_804047D4
/* 804047C8  7D 4F 00 D0 */	neg r10, r15
/* 804047CC  39 20 00 00 */	li r9, 0
/* 804047D0  48 00 00 0C */	b lbl_804047DC
lbl_804047D4:
/* 804047D4  39 40 00 00 */	li r10, 0
/* 804047D8  7D E9 7B 78 */	mr r9, r15
lbl_804047DC:
/* 804047DC  2C 0E 00 00 */	cmpwi r14, 0
/* 804047E0  40 80 00 18 */	bge lbl_804047F8
/* 804047E4  A0 1E 00 06 */	lhz r0, 6(r30)
/* 804047E8  7F 4E 00 D0 */	neg r26, r14
/* 804047EC  3B 20 00 00 */	li r25, 0
/* 804047F0  7F 60 72 14 */	add r27, r0, r14
/* 804047F4  48 00 00 10 */	b lbl_80404804
lbl_804047F8:
/* 804047F8  A3 7E 00 06 */	lhz r27, 6(r30)
/* 804047FC  7D D9 73 78 */	mr r25, r14
/* 80404800  3B 40 00 00 */	li r26, 0
lbl_80404804:
/* 80404804  54 86 0B FC */	rlwinm r6, r4, 1, 0xf, 0x1e
/* 80404808  7C 04 7A 14 */	add r0, r4, r15
/* 8040480C  55 45 08 3C */	slwi r5, r10, 1
/* 80404810  55 47 7A 20 */	rlwinm r7, r10, 0xf, 8, 0x10
/* 80404814  38 86 00 07 */	addi r4, r6, 7
/* 80404818  38 66 FF FF */	addi r3, r6, -1
/* 8040481C  54 6B 72 22 */	rlwinm r11, r3, 0xe, 8, 0x11
/* 80404820  55 29 72 22 */	rlwinm r9, r9, 0xe, 8, 0x11
/* 80404824  7C A5 20 50 */	subf r5, r5, r4
/* 80404828  54 04 72 22 */	rlwinm r4, r0, 0xe, 8, 0x11
/* 8040482C  54 A0 33 AC */	rlwinm r0, r5, 6, 0xe, 0x16
/* 80404830  3C 60 08 00 */	lis r3, 0x0800 /* 0x08000400@ha */
/* 80404834  64 E5 F4 00 */	oris r5, r7, 0xf400
/* 80404838  65 66 07 00 */	oris r6, r11, 0x700
/* 8040483C  64 00 F5 88 */	oris r0, r0, 0xf588
/* 80404840  64 E7 F2 00 */	oris r7, r7, 0xf200
/* 80404844  64 88 E4 00 */	oris r8, r4, 0xe400
/* 80404848  55 4A B0 12 */	slwi r10, r10, 0x16
/* 8040484C  3B 03 04 00 */	addi r24, r3, 0x0400 /* 0x08000400@l */
/* 80404850  3D E0 07 00 */	lis r15, 0x700
/* 80404854  3E 00 E6 00 */	lis r16, 0xe600
/* 80404858  3E 80 E7 00 */	lis r20, 0xe700
/* 8040485C  3D C0 E1 00 */	lis r14, 0xe100
/* 80404860  48 00 01 54 */	b lbl_804049B4
lbl_80404864:
/* 80404864  7C 1C D8 40 */	cmplw r28, r27
/* 80404868  40 81 00 08 */	ble lbl_80404870
/* 8040486C  7F 7C DB 78 */	mr r28, r27
lbl_80404870:
/* 80404870  A0 7E 00 04 */	lhz r3, 4(r30)
/* 80404874  7E 3A E2 14 */	add r17, r26, r28
/* 80404878  7C 11 18 40 */	cmplw r17, r3
/* 8040487C  40 81 00 0C */	ble lbl_80404888
/* 80404880  7C 71 1B 78 */	mr r17, r3
/* 80404884  7F 9A 18 50 */	subf r28, r26, r3
lbl_80404888:
/* 80404888  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8040488C  7C 79 E2 14 */	add r3, r25, r28
/* 80404890  57 36 15 3A */	rlwinm r22, r25, 2, 0x14, 0x1d
/* 80404894  3A 31 FF FF */	addi r17, r17, -1
/* 80404898  3A 44 00 08 */	addi r18, r4, 8
/* 8040489C  54 75 15 3A */	rlwinm r21, r3, 2, 0x14, 0x1d
/* 804048A0  92 41 00 10 */	stw r18, 0x10(r1)
/* 804048A4  56 3D 15 3A */	rlwinm r29, r17, 2, 0x14, 0x1d
/* 804048A8  57 4C 15 3A */	rlwinm r12, r26, 2, 0x14, 0x1d
/* 804048AC  57 57 2C 34 */	rlwinm r23, r26, 5, 0x10, 0x1a
/* 804048B0  A0 7E 00 04 */	lhz r3, 4(r30)
/* 804048B4  7D 92 2B 78 */	or r18, r12, r5
/* 804048B8  7F B3 33 78 */	or r19, r29, r6
/* 804048BC  3A 20 00 00 */	li r17, 0
/* 804048C0  54 63 08 3C */	slwi r3, r3, 1
/* 804048C4  7D 8C 3B 78 */	or r12, r12, r7
/* 804048C8  38 63 FF FF */	addi r3, r3, -1
/* 804048CC  7F BD 5B 78 */	or r29, r29, r11
/* 804048D0  54 63 05 3E */	clrlwi r3, r3, 0x14
/* 804048D4  7D 15 AB 78 */	or r21, r8, r21
/* 804048D8  64 63 FD 88 */	oris r3, r3, 0xfd88
/* 804048DC  7E D6 4B 78 */	or r22, r22, r9
/* 804048E0  90 64 00 00 */	stw r3, 0(r4)
/* 804048E4  7E E3 53 78 */	or r3, r23, r10
/* 804048E8  7F 7C D8 50 */	subf r27, r28, r27
/* 804048EC  7F 5A E2 14 */	add r26, r26, r28
/* 804048F0  82 FE 00 14 */	lwz r23, 0x14(r30)
/* 804048F4  7F 39 E2 14 */	add r25, r25, r28
/* 804048F8  92 E4 00 04 */	stw r23, 4(r4)
/* 804048FC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80404900  3A E4 00 08 */	addi r23, r4, 8
/* 80404904  92 E1 00 10 */	stw r23, 0x10(r1)
/* 80404908  90 04 00 00 */	stw r0, 0(r4)
/* 8040490C  91 E4 00 04 */	stw r15, 4(r4)
/* 80404910  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80404914  3A E4 00 08 */	addi r23, r4, 8
/* 80404918  92 E1 00 10 */	stw r23, 0x10(r1)
/* 8040491C  92 04 00 00 */	stw r16, 0(r4)
/* 80404920  92 24 00 04 */	stw r17, 4(r4)
/* 80404924  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80404928  3A E4 00 08 */	addi r23, r4, 8
/* 8040492C  92 E1 00 10 */	stw r23, 0x10(r1)
/* 80404930  92 44 00 00 */	stw r18, 0(r4)
/* 80404934  92 64 00 04 */	stw r19, 4(r4)
/* 80404938  82 41 00 10 */	lwz r18, 0x10(r1)
/* 8040493C  38 92 00 08 */	addi r4, r18, 8
/* 80404940  90 81 00 10 */	stw r4, 0x10(r1)
/* 80404944  92 92 00 00 */	stw r20, 0(r18)
/* 80404948  92 32 00 04 */	stw r17, 4(r18)
/* 8040494C  82 41 00 10 */	lwz r18, 0x10(r1)
/* 80404950  38 92 00 08 */	addi r4, r18, 8
/* 80404954  90 81 00 10 */	stw r4, 0x10(r1)
/* 80404958  90 12 00 00 */	stw r0, 0(r18)
/* 8040495C  92 32 00 04 */	stw r17, 4(r18)
/* 80404960  82 21 00 10 */	lwz r17, 0x10(r1)
/* 80404964  38 91 00 08 */	addi r4, r17, 8
/* 80404968  90 81 00 10 */	stw r4, 0x10(r1)
/* 8040496C  91 91 00 00 */	stw r12, 0(r17)
/* 80404970  93 B1 00 04 */	stw r29, 4(r17)
/* 80404974  81 81 00 10 */	lwz r12, 0x10(r1)
/* 80404978  38 8C 00 08 */	addi r4, r12, 8
/* 8040497C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80404980  92 AC 00 00 */	stw r21, 0(r12)
/* 80404984  92 CC 00 04 */	stw r22, 4(r12)
/* 80404988  81 81 00 10 */	lwz r12, 0x10(r1)
/* 8040498C  38 8C 00 08 */	addi r4, r12, 8
/* 80404990  90 81 00 10 */	stw r4, 0x10(r1)
/* 80404994  91 CC 00 00 */	stw r14, 0(r12)
/* 80404998  90 6C 00 04 */	stw r3, 4(r12)
/* 8040499C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 804049A0  38 64 00 08 */	addi r3, r4, 8
/* 804049A4  90 61 00 10 */	stw r3, 0x10(r1)
/* 804049A8  3C 60 F1 00 */	lis r3, 0xf100
/* 804049AC  90 64 00 00 */	stw r3, 0(r4)
/* 804049B0  93 04 00 04 */	stw r24, 4(r4)
lbl_804049B4:
/* 804049B4  28 1B 00 00 */	cmplwi r27, 0
/* 804049B8  40 82 FE AC */	bne lbl_80404864
/* 804049BC  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 804049C0  3C 60 E7 00 */	lis r3, 0xe700
/* 804049C4  38 00 00 00 */	li r0, 0
/* 804049C8  38 85 00 08 */	addi r4, r5, 8
/* 804049CC  90 81 00 10 */	stw r4, 0x10(r1)
/* 804049D0  90 65 00 00 */	stw r3, 0(r5)
/* 804049D4  90 05 00 04 */	stw r0, 4(r5)
/* 804049D8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 804049DC  90 1F 00 00 */	stw r0, 0(r31)
lbl_804049E0:
/* 804049E0  39 61 00 70 */	addi r11, r1, 0x70
/* 804049E4  4B C9 65 01 */	bl __restore_gpr
/* 804049E8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804049EC  7C 08 03 A6 */	mtlr r0
/* 804049F0  38 21 00 70 */	addi r1, r1, 0x70
/* 804049F4  4E 80 00 20 */	blr 
