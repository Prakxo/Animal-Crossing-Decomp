.include "macros.inc"

.section .text

.org 0x80081764

.global InitializeUART
InitializeUART:
/* 80081764 0007E6C4  7C 08 02 A6 */	mflr r0
/* 80081768 0007E6C8  90 01 00 04 */	stw r0, 4(r1)
/* 8008176C 0007E6CC  94 21 FF F8 */	stwu r1, -8(r1)
/* 80081770 0007E6D0  80 6D 8D EC */	lwz r3, BarnacleEnabled-_SDA_BASE_(r13)
/* 80081774 0007E6D4  3C 03 5A 01 */	addis r0, r3, 0x5a01
/* 80081778 0007E6D8  28 00 00 5A */	cmplwi r0, 0x5a
/* 8008177C 0007E6DC  40 82 00 0C */	bne lbl_80081788
/* 80081780 0007E6E0  38 60 00 00 */	li r3, 0
/* 80081784 0007E6E4  48 00 00 40 */	b lbl_800817C4
lbl_80081788:
/* 80081788 0007E6E8  4B FF 6F 91 */	bl OSGetConsoleType
/* 8008178C 0007E6EC  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 80081790 0007E6F0  40 82 00 14 */	bne lbl_800817A4
/* 80081794 0007E6F4  38 00 00 00 */	li r0, 0
/* 80081798 0007E6F8  90 0D 8D E8 */	stw r0, Enabled-_SDA_BASE_(r13)
/* 8008179C 0007E6FC  38 60 00 02 */	li r3, 2
/* 800817A0 0007E700  48 00 00 24 */	b lbl_800817C4
lbl_800817A4:
/* 800817A4 0007E704  3C 60 A5 FF */	lis r3, 0xA5FF005A@ha
/* 800817A8 0007E708  38 03 00 5A */	addi r0, r3, 0xA5FF005A@l
/* 800817AC 0007E70C  38 60 00 00 */	li r3, 0
/* 800817B0 0007E710  90 0D 8D E8 */	stw r0, Enabled-_SDA_BASE_(r13)
/* 800817B4 0007E714  38 00 00 01 */	li r0, 1
/* 800817B8 0007E718  90 6D 8D E0 */	stw r3, Chan-_SDA_BASE_(r13)
/* 800817BC 0007E71C  38 60 00 00 */	li r3, 0
/* 800817C0 0007E720  90 0D 8D E4 */	stw r0, Dev-_SDA_BASE_(r13)
lbl_800817C4:
/* 800817C4 0007E724  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800817C8 0007E728  38 21 00 08 */	addi r1, r1, 8
/* 800817CC 0007E72C  7C 08 03 A6 */	mtlr r0
/* 800817D0 0007E730  4E 80 00 20 */	blr 

.global WriteUARTN
WriteUARTN:
/* 800817D4 0007E734  7C 08 02 A6 */	mflr r0
/* 800817D8 0007E738  90 01 00 04 */	stw r0, 4(r1)
/* 800817DC 0007E73C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800817E0 0007E740  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 800817E4 0007E744  3B C3 00 00 */	addi r30, r3, 0
/* 800817E8 0007E748  3B E4 00 00 */	addi r31, r4, 0
/* 800817EC 0007E74C  80 AD 8D E8 */	lwz r5, Enabled-_SDA_BASE_(r13)
/* 800817F0 0007E750  3C 05 5A 01 */	addis r0, r5, 0x5a01
/* 800817F4 0007E754  28 00 00 5A */	cmplwi r0, 0x5a
/* 800817F8 0007E758  41 82 00 0C */	beq lbl_80081804
/* 800817FC 0007E75C  38 60 00 02 */	li r3, 2
/* 80081800 0007E760  48 00 01 C0 */	b lbl_800819C0
lbl_80081804:
/* 80081804 0007E764  80 6D 8D E0 */	lwz r3, Chan-_SDA_BASE_(r13)
/* 80081808 0007E768  38 A0 00 00 */	li r5, 0
/* 8008180C 0007E76C  80 8D 8D E4 */	lwz r4, Dev-_SDA_BASE_(r13)
/* 80081810 0007E770  4B FF F9 C9 */	bl EXILock
/* 80081814 0007E774  2C 03 00 00 */	cmpwi r3, 0
/* 80081818 0007E778  40 82 00 0C */	bne lbl_80081824
/* 8008181C 0007E77C  38 60 00 00 */	li r3, 0
/* 80081820 0007E780  48 00 01 A0 */	b lbl_800819C0
lbl_80081824:
/* 80081824 0007E784  38 9E 00 00 */	addi r4, r30, 0
/* 80081828 0007E788  38 60 00 0D */	li r3, 0xd
/* 8008182C 0007E78C  48 00 00 18 */	b lbl_80081844
lbl_80081830:
/* 80081830 0007E790  88 04 00 00 */	lbz r0, 0(r4)
/* 80081834 0007E794  2C 00 00 0A */	cmpwi r0, 0xa
/* 80081838 0007E798  40 82 00 08 */	bne lbl_80081840
/* 8008183C 0007E79C  98 64 00 00 */	stb r3, 0(r4)
lbl_80081840:
/* 80081840 0007E7A0  38 84 00 01 */	addi r4, r4, 1
lbl_80081844:
/* 80081844 0007E7A4  7C 1E 20 50 */	subf r0, r30, r4
/* 80081848 0007E7A8  7C 00 F8 40 */	cmplw r0, r31
/* 8008184C 0007E7AC  41 80 FF E4 */	blt lbl_80081830
/* 80081850 0007E7B0  3C 00 A0 01 */	lis r0, 0xa001
/* 80081854 0007E7B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80081858 0007E7B8  3B 40 00 00 */	li r26, 0
/* 8008185C 0007E7BC  3F A0 20 01 */	lis r29, 0x2001
/* 80081860 0007E7C0  48 00 01 4C */	b lbl_800819AC
lbl_80081864:
/* 80081864 0007E7C4  80 6D 8D E0 */	lwz r3, Chan-_SDA_BASE_(r13)
/* 80081868 0007E7C8  38 A0 00 03 */	li r5, 3
/* 8008186C 0007E7CC  80 8D 8D E4 */	lwz r4, Dev-_SDA_BASE_(r13)
/* 80081870 0007E7D0  4B FF F2 69 */	bl EXISelect
/* 80081874 0007E7D4  2C 03 00 00 */	cmpwi r3, 0
/* 80081878 0007E7D8  40 82 00 0C */	bne lbl_80081884
/* 8008187C 0007E7DC  38 00 FF FF */	li r0, -1
/* 80081880 0007E7E0  48 00 00 5C */	b lbl_800818DC
lbl_80081884:
/* 80081884 0007E7E4  93 A1 00 10 */	stw r29, 0x10(r1)
/* 80081888 0007E7E8  38 81 00 10 */	addi r4, r1, 0x10
/* 8008188C 0007E7EC  80 6D 8D E0 */	lwz r3, Chan-_SDA_BASE_(r13)
/* 80081890 0007E7F0  38 A0 00 04 */	li r5, 4
/* 80081894 0007E7F4  38 C0 00 01 */	li r6, 1
/* 80081898 0007E7F8  38 E0 00 00 */	li r7, 0
/* 8008189C 0007E7FC  4B FF E6 E9 */	bl EXIImm
/* 800818A0 0007E800  80 6D 8D E0 */	lwz r3, Chan-_SDA_BASE_(r13)
/* 800818A4 0007E804  4B FF EA C9 */	bl EXISync
/* 800818A8 0007E808  80 6D 8D E0 */	lwz r3, Chan-_SDA_BASE_(r13)
/* 800818AC 0007E80C  38 81 00 10 */	addi r4, r1, 0x10
/* 800818B0 0007E810  38 A0 00 01 */	li r5, 1
/* 800818B4 0007E814  38 C0 00 00 */	li r6, 0
/* 800818B8 0007E818  38 E0 00 00 */	li r7, 0
/* 800818BC 0007E81C  4B FF E6 C9 */	bl EXIImm
/* 800818C0 0007E820  80 6D 8D E0 */	lwz r3, Chan-_SDA_BASE_(r13)
/* 800818C4 0007E824  4B FF EA A9 */	bl EXISync
/* 800818C8 0007E828  80 6D 8D E0 */	lwz r3, Chan-_SDA_BASE_(r13)
/* 800818CC 0007E82C  4B FF F3 39 */	bl EXIDeselect
/* 800818D0 0007E830  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800818D4 0007E834  54 00 46 3E */	srwi r0, r0, 0x18
/* 800818D8 0007E838  20 00 00 10 */	subfic r0, r0, 0x10
lbl_800818DC:
/* 800818DC 0007E83C  2C 00 00 00 */	cmpwi r0, 0
/* 800818E0 0007E840  7C 1B 03 78 */	mr r27, r0
/* 800818E4 0007E844  40 80 00 0C */	bge lbl_800818F0
/* 800818E8 0007E848  3B 40 00 03 */	li r26, 3
/* 800818EC 0007E84C  48 00 00 C8 */	b lbl_800819B4
lbl_800818F0:
/* 800818F0 0007E850  2C 00 00 0C */	cmpwi r0, 0xc
/* 800818F4 0007E854  40 80 00 0C */	bge lbl_80081900
/* 800818F8 0007E858  7C 00 F8 40 */	cmplw r0, r31
/* 800818FC 0007E85C  41 80 00 B0 */	blt lbl_800819AC
lbl_80081900:
/* 80081900 0007E860  80 6D 8D E0 */	lwz r3, Chan-_SDA_BASE_(r13)
/* 80081904 0007E864  38 A0 00 03 */	li r5, 3
/* 80081908 0007E868  80 8D 8D E4 */	lwz r4, Dev-_SDA_BASE_(r13)
/* 8008190C 0007E86C  4B FF F1 CD */	bl EXISelect
/* 80081910 0007E870  2C 03 00 00 */	cmpwi r3, 0
/* 80081914 0007E874  40 82 00 0C */	bne lbl_80081920
/* 80081918 0007E878  3B 40 00 03 */	li r26, 3
/* 8008191C 0007E87C  48 00 00 98 */	b lbl_800819B4
lbl_80081920:
/* 80081920 0007E880  80 6D 8D E0 */	lwz r3, Chan-_SDA_BASE_(r13)
/* 80081924 0007E884  38 81 00 14 */	addi r4, r1, 0x14
/* 80081928 0007E888  38 A0 00 04 */	li r5, 4
/* 8008192C 0007E88C  38 C0 00 01 */	li r6, 1
/* 80081930 0007E890  38 E0 00 00 */	li r7, 0
/* 80081934 0007E894  4B FF E6 51 */	bl EXIImm
/* 80081938 0007E898  80 6D 8D E0 */	lwz r3, Chan-_SDA_BASE_(r13)
/* 8008193C 0007E89C  4B FF EA 31 */	bl EXISync
/* 80081940 0007E8A0  48 00 00 54 */	b lbl_80081994
lbl_80081944:
/* 80081944 0007E8A4  2C 1B 00 04 */	cmpwi r27, 4
/* 80081948 0007E8A8  40 80 00 0C */	bge lbl_80081954
/* 8008194C 0007E8AC  7C 1B F8 40 */	cmplw r27, r31
/* 80081950 0007E8B0  41 80 00 54 */	blt lbl_800819A4
lbl_80081954:
/* 80081954 0007E8B4  28 1F 00 04 */	cmplwi r31, 4
/* 80081958 0007E8B8  40 80 00 0C */	bge lbl_80081964
/* 8008195C 0007E8BC  7F FC FB 78 */	mr r28, r31
/* 80081960 0007E8C0  48 00 00 08 */	b lbl_80081968
lbl_80081964:
/* 80081964 0007E8C4  3B 80 00 04 */	li r28, 4
lbl_80081968:
/* 80081968 0007E8C8  80 6D 8D E0 */	lwz r3, Chan-_SDA_BASE_(r13)
/* 8008196C 0007E8CC  7F 85 E3 78 */	mr r5, r28
/* 80081970 0007E8D0  38 9E 00 00 */	addi r4, r30, 0
/* 80081974 0007E8D4  38 C0 00 01 */	li r6, 1
/* 80081978 0007E8D8  38 E0 00 00 */	li r7, 0
/* 8008197C 0007E8DC  4B FF E6 09 */	bl EXIImm
/* 80081980 0007E8E0  80 6D 8D E0 */	lwz r3, Chan-_SDA_BASE_(r13)
/* 80081984 0007E8E4  7F DE E2 14 */	add r30, r30, r28
/* 80081988 0007E8E8  7F FC F8 50 */	subf r31, r28, r31
/* 8008198C 0007E8EC  7F 7C D8 50 */	subf r27, r28, r27
/* 80081990 0007E8F0  4B FF E9 DD */	bl EXISync
lbl_80081994:
/* 80081994 0007E8F4  2C 1B 00 00 */	cmpwi r27, 0
/* 80081998 0007E8F8  41 82 00 0C */	beq lbl_800819A4
/* 8008199C 0007E8FC  28 1F 00 00 */	cmplwi r31, 0
/* 800819A0 0007E900  40 82 FF A4 */	bne lbl_80081944
lbl_800819A4:
/* 800819A4 0007E904  80 6D 8D E0 */	lwz r3, Chan-_SDA_BASE_(r13)
/* 800819A8 0007E908  4B FF F2 5D */	bl EXIDeselect
lbl_800819AC:
/* 800819AC 0007E90C  28 1F 00 00 */	cmplwi r31, 0
/* 800819B0 0007E910  40 82 FE B4 */	bne lbl_80081864
lbl_800819B4:
/* 800819B4 0007E914  80 6D 8D E0 */	lwz r3, Chan-_SDA_BASE_(r13)
/* 800819B8 0007E918  4B FF F9 15 */	bl EXIUnlock
/* 800819BC 0007E91C  7F 43 D3 78 */	mr r3, r26
lbl_800819C0:
/* 800819C0 0007E920  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 800819C4 0007E924  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800819C8 0007E928  38 21 00 30 */	addi r1, r1, 0x30
/* 800819CC 0007E92C  7C 08 03 A6 */	mtlr r0
/* 800819D0 0007E930  4E 80 00 20 */	blr 
