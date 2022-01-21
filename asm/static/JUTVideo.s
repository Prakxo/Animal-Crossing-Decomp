.include "macros.inc"

.section .text

.org 0x80073908

.global createManager__8JUTVideoFPC16_GXRenderModeObj
createManager__8JUTVideoFPC16_GXRenderModeObj:
/* 80073908 00070868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007390C 0007086C  7C 08 02 A6 */	mflr r0
/* 80073910 00070870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80073914 00070874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80073918 00070878  7C 7F 1B 78 */	mr r31, r3
/* 8007391C 0007087C  80 0D 8C E8 */	lwz r0, sManager__8JUTVideo-_SDA_BASE_(r13)
/* 80073920 00070880  28 00 00 00 */	cmplwi r0, 0
/* 80073924 00070884  40 82 00 24 */	bne lbl_80073948
/* 80073928 00070888  38 60 00 58 */	li r3, 0x58
/* 8007392C 0007088C  4B FF 06 05 */	bl __nw__FUl
/* 80073930 00070890  7C 60 1B 79 */	or. r0, r3, r3
/* 80073934 00070894  41 82 00 10 */	beq lbl_80073944
/* 80073938 00070898  7F E4 FB 78 */	mr r4, r31
/* 8007393C 0007089C  48 00 00 25 */	bl __ct__8JUTVideoFPC16_GXRenderModeObj
/* 80073940 000708A0  7C 60 1B 78 */	mr r0, r3
lbl_80073944:
/* 80073944 000708A4  90 0D 8C E8 */	stw r0, sManager__8JUTVideo-_SDA_BASE_(r13)
lbl_80073948:
/* 80073948 000708A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007394C 000708AC  80 6D 8C E8 */	lwz r3, sManager__8JUTVideo-_SDA_BASE_(r13)
/* 80073950 000708B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80073954 000708B4  7C 08 03 A6 */	mtlr r0
/* 80073958 000708B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8007395C 000708BC  4E 80 00 20 */	blr 

.global __ct__8JUTVideoFPC16_GXRenderModeObj
__ct__8JUTVideoFPC16_GXRenderModeObj:
/* 80073960 000708C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80073964 000708C4  7C 08 02 A6 */	mflr r0
/* 80073968 000708C8  3C A0 80 0E */	lis r5, __vt__8JUTVideo@ha
/* 8007396C 000708CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80073970 000708D0  38 00 00 00 */	li r0, 0
/* 80073974 000708D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80073978 000708D8  7C 7F 1B 78 */	mr r31, r3
/* 8007397C 000708DC  38 65 F6 D4 */	addi r3, r5, __vt__8JUTVideo@l
/* 80073980 000708E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80073984 000708E4  7C 9E 23 78 */	mr r30, r4
/* 80073988 000708E8  90 7F 00 00 */	stw r3, 0(r31)
/* 8007398C 000708EC  90 1F 00 04 */	stw r0, 4(r31)
/* 80073990 000708F0  48 01 49 39 */	bl VIInit
/* 80073994 000708F4  7F E3 FB 78 */	mr r3, r31
/* 80073998 000708F8  7F C4 F3 78 */	mr r4, r30
/* 8007399C 000708FC  48 00 04 4D */	bl setRenderMode__8JUTVideoFPC16_GXRenderModeObj
/* 800739A0 00070900  38 60 00 01 */	li r3, 1
/* 800739A4 00070904  38 00 00 02 */	li r0, 2
/* 800739A8 00070908  98 7F 00 2C */	stb r3, 0x2c(r31)
/* 800739AC 0007090C  38 60 00 01 */	li r3, 1
/* 800739B0 00070910  90 1F 00 30 */	stw r0, 0x30(r31)
/* 800739B4 00070914  48 01 5F 0D */	bl VISetBlack
/* 800739B8 00070918  48 01 5D 81 */	bl VIFlush
/* 800739BC 0007091C  38 00 00 00 */	li r0, 0
/* 800739C0 00070920  90 1F 00 08 */	stw r0, 8(r31)
/* 800739C4 00070924  48 01 5F 79 */	bl VIGetRetraceCount
/* 800739C8 00070928  90 7F 00 0C */	stw r3, 0xc(r31)
/* 800739CC 0007092C  38 60 00 01 */	li r3, 1
/* 800739D0 00070930  38 00 00 00 */	li r0, 0
/* 800739D4 00070934  90 7F 00 10 */	stw r3, 0x10(r31)
/* 800739D8 00070938  90 1F 00 18 */	stw r0, 0x18(r31)
/* 800739DC 0007093C  48 00 BD 35 */	bl OSGetTick
/* 800739E0 00070940  3C A0 00 0A */	lis r5, 0x000A3930@ha
/* 800739E4 00070944  3C 80 80 07 */	lis r4, preRetraceProc__8JUTVideoFUl@ha
/* 800739E8 00070948  38 05 39 30 */	addi r0, r5, 0x000A3930@l
/* 800739EC 0007094C  90 6D 8C EC */	stw r3, sVideoLastTick__8JUTVideo-_SDA_BASE_(r13)
/* 800739F0 00070950  38 64 3A BC */	addi r3, r4, preRetraceProc__8JUTVideoFUl@l
/* 800739F4 00070954  90 0D 8C F0 */	stw r0, sVideoInterval__8JUTVideo-_SDA_BASE_(r13)
/* 800739F8 00070958  48 01 45 C1 */	bl VISetPreRetraceCallback
/* 800739FC 0007095C  3C 80 80 07 */	lis r4, postRetraceProc__8JUTVideoFUl@ha
/* 80073A00 00070960  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 80073A04 00070964  38 64 3D 9C */	addi r3, r4, postRetraceProc__8JUTVideoFUl@l
/* 80073A08 00070968  48 01 45 F5 */	bl VISetPostRetraceCallback
/* 80073A0C 0007096C  90 7F 00 20 */	stw r3, 0x20(r31)
/* 80073A10 00070970  38 00 00 00 */	li r0, 0
/* 80073A14 00070974  38 7F 00 38 */	addi r3, r31, 0x38
/* 80073A18 00070978  38 9F 00 34 */	addi r4, r31, 0x34
/* 80073A1C 0007097C  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80073A20 00070980  38 A0 00 01 */	li r5, 1
/* 80073A24 00070984  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80073A28 00070988  48 00 81 F9 */	bl OSInitMessageQueue
/* 80073A2C 0007098C  3C 60 80 07 */	lis r3, drawDoneCallback__8JUTVideoFv@ha
/* 80073A30 00070990  38 63 3D 14 */	addi r3, r3, drawDoneCallback__8JUTVideoFv@l
/* 80073A34 00070994  48 02 21 A9 */	bl GXSetDrawDoneCallback
/* 80073A38 00070998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80073A3C 0007099C  7F E3 FB 78 */	mr r3, r31
/* 80073A40 000709A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80073A44 000709A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80073A48 000709A8  7C 08 03 A6 */	mtlr r0
/* 80073A4C 000709AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80073A50 000709B0  4E 80 00 20 */	blr 

.global __dt__8JUTVideoFv
__dt__8JUTVideoFv:
/* 80073A54 000709B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80073A58 000709B8  7C 08 02 A6 */	mflr r0
/* 80073A5C 000709BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80073A60 000709C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80073A64 000709C4  7C 9F 23 78 */	mr r31, r4
/* 80073A68 000709C8  93 C1 00 08 */	stw r30, 8(r1)
/* 80073A6C 000709CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80073A70 000709D0  41 82 00 30 */	beq lbl_80073AA0
/* 80073A74 000709D4  3C 60 80 0E */	lis r3, __vt__8JUTVideo@ha
/* 80073A78 000709D8  38 03 F6 D4 */	addi r0, r3, __vt__8JUTVideo@l
/* 80073A7C 000709DC  90 1E 00 00 */	stw r0, 0(r30)
/* 80073A80 000709E0  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80073A84 000709E4  48 01 45 35 */	bl VISetPreRetraceCallback
/* 80073A88 000709E8  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80073A8C 000709EC  48 01 45 71 */	bl VISetPostRetraceCallback
/* 80073A90 000709F0  7F E0 07 35 */	extsh. r0, r31
/* 80073A94 000709F4  40 81 00 0C */	ble lbl_80073AA0
/* 80073A98 000709F8  7F C3 F3 78 */	mr r3, r30
/* 80073A9C 000709FC  4B FF 05 15 */	bl __dl__FPv
lbl_80073AA0:
/* 80073AA0 00070A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80073AA4 00070A04  7F C3 F3 78 */	mr r3, r30
/* 80073AA8 00070A08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80073AAC 00070A0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80073AB0 00070A10  7C 08 03 A6 */	mtlr r0
/* 80073AB4 00070A14  38 21 00 10 */	addi r1, r1, 0x10
/* 80073AB8 00070A18  4E 80 00 20 */	blr 

.global preRetraceProc__8JUTVideoFUl
preRetraceProc__8JUTVideoFUl:
/* 80073ABC 00070A1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80073AC0 00070A20  7C 08 02 A6 */	mflr r0
/* 80073AC4 00070A24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80073AC8 00070A28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80073ACC 00070A2C  80 8D 8C E8 */	lwz r4, sManager__8JUTVideo-_SDA_BASE_(r13)
/* 80073AD0 00070A30  81 84 00 24 */	lwz r12, 0x24(r4)
/* 80073AD4 00070A34  28 0C 00 00 */	cmplwi r12, 0
/* 80073AD8 00070A38  41 82 00 0C */	beq lbl_80073AE4
/* 80073ADC 00070A3C  7D 89 03 A6 */	mtctr r12
/* 80073AE0 00070A40  4E 80 04 21 */	bctrl 
lbl_80073AE4:
/* 80073AE4 00070A44  48 00 BC 2D */	bl OSGetTick
/* 80073AE8 00070A48  80 0D 8C EC */	lwz r0, sVideoLastTick__8JUTVideo-_SDA_BASE_(r13)
/* 80073AEC 00070A4C  83 ED 8D 00 */	lwz r31, sManager__6JUTXfb-_SDA_BASE_(r13)
/* 80073AF0 00070A50  7C 00 18 50 */	subf r0, r0, r3
/* 80073AF4 00070A54  90 6D 8C EC */	stw r3, sVideoLastTick__8JUTVideo-_SDA_BASE_(r13)
/* 80073AF8 00070A58  28 1F 00 00 */	cmplwi r31, 0
/* 80073AFC 00070A5C  90 0D 8C F0 */	stw r0, sVideoInterval__8JUTVideo-_SDA_BASE_(r13)
/* 80073B00 00070A60  40 82 00 14 */	bne lbl_80073B14
/* 80073B04 00070A64  38 60 00 01 */	li r3, 1
/* 80073B08 00070A68  48 01 5D B9 */	bl VISetBlack
/* 80073B0C 00070A6C  48 01 5C 2D */	bl VIFlush
/* 80073B10 00070A70  48 00 01 BC */	b lbl_80073CCC
lbl_80073B14:
/* 80073B14 00070A74  88 0D 8C FC */	lbz r0, lbl_8021887C-_SDA_BASE_(r13)
/* 80073B18 00070A78  7C 00 07 75 */	extsb. r0, r0
/* 80073B1C 00070A7C  40 82 00 14 */	bne lbl_80073B30
/* 80073B20 00070A80  38 60 00 00 */	li r3, 0
/* 80073B24 00070A84  38 00 00 01 */	li r0, 1
/* 80073B28 00070A88  90 6D 8C F8 */	stw r3, frameBuffer$2132-_SDA_BASE_(r13)
/* 80073B2C 00070A8C  98 0D 8C FC */	stb r0, lbl_8021887C-_SDA_BASE_(r13)
lbl_80073B30:
/* 80073B30 00070A90  80 8D 8C F8 */	lwz r4, frameBuffer$2132-_SDA_BASE_(r13)
/* 80073B34 00070A94  28 04 00 00 */	cmplwi r4, 0
/* 80073B38 00070A98  41 82 00 1C */	beq lbl_80073B54
/* 80073B3C 00070A9C  80 AD 8C E8 */	lwz r5, sManager__8JUTVideo-_SDA_BASE_(r13)
/* 80073B40 00070AA0  80 6D 8C D8 */	lwz r3, sDirectPrint__14JUTDirectPrint-_SDA_BASE_(r13)
/* 80073B44 00070AA4  80 C5 00 04 */	lwz r6, 4(r5)
/* 80073B48 00070AA8  A0 A6 00 04 */	lhz r5, 4(r6)
/* 80073B4C 00070AAC  A0 C6 00 06 */	lhz r6, 6(r6)
/* 80073B50 00070AB0  4B FF F8 FD */	bl changeFrameBuffer__14JUTDirectPrintFPvUsUs
lbl_80073B54:
/* 80073B54 00070AB4  80 6D 8C E8 */	lwz r3, sManager__8JUTVideo-_SDA_BASE_(r13)
/* 80073B58 00070AB8  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 80073B5C 00070ABC  28 00 00 01 */	cmplwi r0, 1
/* 80073B60 00070AC0  40 82 00 38 */	bne lbl_80073B98
/* 80073B64 00070AC4  80 83 00 30 */	lwz r4, 0x30(r3)
/* 80073B68 00070AC8  2C 04 00 00 */	cmpwi r4, 0
/* 80073B6C 00070ACC  40 81 00 08 */	ble lbl_80073B74
/* 80073B70 00070AD0  38 84 FF FF */	addi r4, r4, -1
lbl_80073B74:
/* 80073B74 00070AD4  90 83 00 30 */	stw r4, 0x30(r3)
/* 80073B78 00070AD8  30 04 FF FF */	addic r0, r4, -1
/* 80073B7C 00070ADC  7C 00 21 10 */	subfe r0, r0, r4
/* 80073B80 00070AE0  38 60 00 01 */	li r3, 1
/* 80073B84 00070AE4  80 8D 8C E8 */	lwz r4, sManager__8JUTVideo-_SDA_BASE_(r13)
/* 80073B88 00070AE8  98 04 00 2C */	stb r0, 0x2c(r4)
/* 80073B8C 00070AEC  48 01 5D 35 */	bl VISetBlack
/* 80073B90 00070AF0  48 01 5B A9 */	bl VIFlush
/* 80073B94 00070AF4  48 00 01 38 */	b lbl_80073CCC
lbl_80073B98:
/* 80073B98 00070AF8  28 1F 00 00 */	cmplwi r31, 0
/* 80073B9C 00070AFC  40 82 00 14 */	bne lbl_80073BB0
/* 80073BA0 00070B00  38 60 00 01 */	li r3, 1
/* 80073BA4 00070B04  48 01 5D 1D */	bl VISetBlack
/* 80073BA8 00070B08  48 01 5B 91 */	bl VIFlush
/* 80073BAC 00070B0C  48 00 01 20 */	b lbl_80073CCC
lbl_80073BB0:
/* 80073BB0 00070B10  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80073BB4 00070B14  2C 00 00 03 */	cmpwi r0, 3
/* 80073BB8 00070B18  41 82 00 0C */	beq lbl_80073BC4
/* 80073BBC 00070B1C  2C 00 00 02 */	cmpwi r0, 2
/* 80073BC0 00070B20  40 82 00 80 */	bne lbl_80073C40
lbl_80073BC4:
/* 80073BC4 00070B24  88 0D 8C F4 */	lbz r0, lbl_80218874-_SDA_BASE_(r13)
/* 80073BC8 00070B28  28 00 00 00 */	cmplwi r0, 0
/* 80073BCC 00070B2C  40 82 01 00 */	bne lbl_80073CCC
/* 80073BD0 00070B30  A8 1F 00 16 */	lha r0, 0x16(r31)
/* 80073BD4 00070B34  7C 03 07 35 */	extsh. r3, r0
/* 80073BD8 00070B38  B0 1F 00 18 */	sth r0, 0x18(r31)
/* 80073BDC 00070B3C  40 80 00 14 */	bge lbl_80073BF0
/* 80073BE0 00070B40  38 60 00 01 */	li r3, 1
/* 80073BE4 00070B44  48 01 5C DD */	bl VISetBlack
/* 80073BE8 00070B48  48 01 5B 51 */	bl VIFlush
/* 80073BEC 00070B4C  48 00 00 E0 */	b lbl_80073CCC
lbl_80073BF0:
/* 80073BF0 00070B50  38 60 00 00 */	li r3, 0
/* 80073BF4 00070B54  48 01 5C CD */	bl VISetBlack
/* 80073BF8 00070B58  A8 7F 00 18 */	lha r3, 0x18(r31)
/* 80073BFC 00070B5C  7C 60 07 35 */	extsh. r0, r3
/* 80073C00 00070B60  41 80 00 10 */	blt lbl_80073C10
/* 80073C04 00070B64  54 60 10 3A */	slwi r0, r3, 2
/* 80073C08 00070B68  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80073C0C 00070B6C  48 00 00 08 */	b lbl_80073C14
lbl_80073C10:
/* 80073C10 00070B70  38 60 00 00 */	li r3, 0
lbl_80073C14:
/* 80073C14 00070B74  48 01 5C 41 */	bl VISetNextFrameBuffer
/* 80073C18 00070B78  48 01 5B 21 */	bl VIFlush
/* 80073C1C 00070B7C  A8 7F 00 18 */	lha r3, 0x18(r31)
/* 80073C20 00070B80  7C 60 07 35 */	extsh. r0, r3
/* 80073C24 00070B84  41 80 00 10 */	blt lbl_80073C34
/* 80073C28 00070B88  54 60 10 3A */	slwi r0, r3, 2
/* 80073C2C 00070B8C  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80073C30 00070B90  48 00 00 08 */	b lbl_80073C38
lbl_80073C34:
/* 80073C34 00070B94  38 00 00 00 */	li r0, 0
lbl_80073C38:
/* 80073C38 00070B98  90 0D 8C F8 */	stw r0, frameBuffer$2132-_SDA_BASE_(r13)
/* 80073C3C 00070B9C  48 00 00 90 */	b lbl_80073CCC
lbl_80073C40:
/* 80073C40 00070BA0  2C 00 00 01 */	cmpwi r0, 1
/* 80073C44 00070BA4  40 82 00 88 */	bne lbl_80073CCC
/* 80073C48 00070BA8  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80073C4C 00070BAC  2C 00 00 00 */	cmpwi r0, 0
/* 80073C50 00070BB0  40 82 00 78 */	bne lbl_80073CC8
/* 80073C54 00070BB4  A8 1F 00 16 */	lha r0, 0x16(r31)
/* 80073C58 00070BB8  7C 00 07 35 */	extsh. r0, r0
/* 80073C5C 00070BBC  41 80 00 64 */	blt lbl_80073CC0
/* 80073C60 00070BC0  B0 1F 00 18 */	sth r0, 0x18(r31)
/* 80073C64 00070BC4  A8 7F 00 18 */	lha r3, 0x18(r31)
/* 80073C68 00070BC8  7C 60 07 35 */	extsh. r0, r3
/* 80073C6C 00070BCC  41 80 00 10 */	blt lbl_80073C7C
/* 80073C70 00070BD0  54 60 10 3A */	slwi r0, r3, 2
/* 80073C74 00070BD4  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80073C78 00070BD8  48 00 00 08 */	b lbl_80073C80
lbl_80073C7C:
/* 80073C7C 00070BDC  38 60 00 00 */	li r3, 0
lbl_80073C80:
/* 80073C80 00070BE0  38 80 00 01 */	li r4, 1
/* 80073C84 00070BE4  48 02 2B DD */	bl GXCopyDisp
/* 80073C88 00070BE8  48 02 1B 29 */	bl GXFlush
/* 80073C8C 00070BEC  38 00 00 02 */	li r0, 2
/* 80073C90 00070BF0  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 80073C94 00070BF4  A8 7F 00 18 */	lha r3, 0x18(r31)
/* 80073C98 00070BF8  7C 60 07 35 */	extsh. r0, r3
/* 80073C9C 00070BFC  41 80 00 10 */	blt lbl_80073CAC
/* 80073CA0 00070C00  54 60 10 3A */	slwi r0, r3, 2
/* 80073CA4 00070C04  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80073CA8 00070C08  48 00 00 08 */	b lbl_80073CB0
lbl_80073CAC:
/* 80073CAC 00070C0C  38 00 00 00 */	li r0, 0
lbl_80073CB0:
/* 80073CB0 00070C10  90 0D 8C F8 */	stw r0, frameBuffer$2132-_SDA_BASE_(r13)
/* 80073CB4 00070C14  38 60 00 00 */	li r3, 0
/* 80073CB8 00070C18  48 01 5C 09 */	bl VISetBlack
/* 80073CBC 00070C1C  48 00 00 0C */	b lbl_80073CC8
lbl_80073CC0:
/* 80073CC0 00070C20  38 60 00 01 */	li r3, 1
/* 80073CC4 00070C24  48 01 5B FD */	bl VISetBlack
lbl_80073CC8:
/* 80073CC8 00070C28  48 01 5A 71 */	bl VIFlush
lbl_80073CCC:
/* 80073CCC 00070C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80073CD0 00070C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80073CD4 00070C34  7C 08 03 A6 */	mtlr r0
/* 80073CD8 00070C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80073CDC 00070C3C  4E 80 00 20 */	blr 

.global drawDoneStart__8JUTVideoFv
drawDoneStart__8JUTVideoFv:
/* 80073CE0 00070C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80073CE4 00070C44  7C 08 02 A6 */	mflr r0
/* 80073CE8 00070C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80073CEC 00070C4C  38 00 00 01 */	li r0, 1
/* 80073CF0 00070C50  98 0D 8C F4 */	stb r0, lbl_80218874-_SDA_BASE_(r13)
/* 80073CF4 00070C54  48 02 1B E5 */	bl GXSetDrawDone
/* 80073CF8 00070C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80073CFC 00070C5C  7C 08 03 A6 */	mtlr r0
/* 80073D00 00070C60  38 21 00 10 */	addi r1, r1, 0x10
/* 80073D04 00070C64  4E 80 00 20 */	blr 

.global dummyNoDrawWait__8JUTVideoFv
dummyNoDrawWait__8JUTVideoFv:
/* 80073D08 00070C68  38 00 00 00 */	li r0, 0
/* 80073D0C 00070C6C  98 0D 8C F4 */	stb r0, lbl_80218874-_SDA_BASE_(r13)
/* 80073D10 00070C70  4E 80 00 20 */	blr 

.global drawDoneCallback__8JUTVideoFv
drawDoneCallback__8JUTVideoFv:
/* 80073D14 00070C74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80073D18 00070C78  7C 08 02 A6 */	mflr r0
/* 80073D1C 00070C7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80073D20 00070C80  80 8D 8D 00 */	lwz r4, sManager__6JUTXfb-_SDA_BASE_(r13)
/* 80073D24 00070C84  28 04 00 00 */	cmplwi r4, 0
/* 80073D28 00070C88  41 82 00 64 */	beq lbl_80073D8C
/* 80073D2C 00070C8C  38 60 00 00 */	li r3, 0
/* 80073D30 00070C90  98 6D 8C F4 */	stb r3, lbl_80218874-_SDA_BASE_(r13)
/* 80073D34 00070C94  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80073D38 00070C98  2C 00 00 01 */	cmpwi r0, 1
/* 80073D3C 00070C9C  40 82 00 50 */	bne lbl_80073D8C
/* 80073D40 00070CA0  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80073D44 00070CA4  2C 00 00 01 */	cmpwi r0, 1
/* 80073D48 00070CA8  40 82 00 44 */	bne lbl_80073D8C
/* 80073D4C 00070CAC  90 64 00 1C */	stw r3, 0x1c(r4)
/* 80073D50 00070CB0  A8 A4 00 16 */	lha r5, 0x16(r4)
/* 80073D54 00070CB4  7C A0 07 35 */	extsh. r0, r5
/* 80073D58 00070CB8  41 80 00 0C */	blt lbl_80073D64
/* 80073D5C 00070CBC  54 A0 10 3A */	slwi r0, r5, 2
/* 80073D60 00070CC0  7C 64 00 2E */	lwzx r3, r4, r0
lbl_80073D64:
/* 80073D64 00070CC4  28 03 00 00 */	cmplwi r3, 0
/* 80073D68 00070CC8  41 82 00 24 */	beq lbl_80073D8C
/* 80073D6C 00070CCC  7C A0 07 35 */	extsh. r0, r5
/* 80073D70 00070CD0  41 80 00 10 */	blt lbl_80073D80
/* 80073D74 00070CD4  54 A0 10 3A */	slwi r0, r5, 2
/* 80073D78 00070CD8  7C 64 00 2E */	lwzx r3, r4, r0
/* 80073D7C 00070CDC  48 00 00 08 */	b lbl_80073D84
lbl_80073D80:
/* 80073D80 00070CE0  38 60 00 00 */	li r3, 0
lbl_80073D84:
/* 80073D84 00070CE4  48 01 5A D1 */	bl VISetNextFrameBuffer
/* 80073D88 00070CE8  48 01 59 B1 */	bl VIFlush
lbl_80073D8C:
/* 80073D8C 00070CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80073D90 00070CF0  7C 08 03 A6 */	mtlr r0
/* 80073D94 00070CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80073D98 00070CF8  4E 80 00 20 */	blr 

.global postRetraceProc__8JUTVideoFUl
postRetraceProc__8JUTVideoFUl:
/* 80073D9C 00070CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80073DA0 00070D00  7C 08 02 A6 */	mflr r0
/* 80073DA4 00070D04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80073DA8 00070D08  80 8D 8C E8 */	lwz r4, sManager__8JUTVideo-_SDA_BASE_(r13)
/* 80073DAC 00070D0C  81 84 00 28 */	lwz r12, 0x28(r4)
/* 80073DB0 00070D10  28 0C 00 00 */	cmplwi r12, 0
/* 80073DB4 00070D14  41 82 00 0C */	beq lbl_80073DC0
/* 80073DB8 00070D18  7D 89 03 A6 */	mtctr r12
/* 80073DBC 00070D1C  4E 80 04 21 */	bctrl 
lbl_80073DC0:
/* 80073DC0 00070D20  48 01 5B 7D */	bl VIGetRetraceCount
/* 80073DC4 00070D24  80 CD 8C E8 */	lwz r6, sManager__8JUTVideo-_SDA_BASE_(r13)
/* 80073DC8 00070D28  7C 64 1B 78 */	mr r4, r3
/* 80073DCC 00070D2C  38 A0 00 00 */	li r5, 0
/* 80073DD0 00070D30  38 66 00 38 */	addi r3, r6, 0x38
/* 80073DD4 00070D34  48 00 7E AD */	bl OSSendMessage
/* 80073DD8 00070D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80073DDC 00070D3C  7C 08 03 A6 */	mtlr r0
/* 80073DE0 00070D40  38 21 00 10 */	addi r1, r1, 0x10
/* 80073DE4 00070D44  4E 80 00 20 */	blr 

.global setRenderMode__8JUTVideoFPC16_GXRenderModeObj
setRenderMode__8JUTVideoFPC16_GXRenderModeObj:
/* 80073DE8 00070D48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80073DEC 00070D4C  7C 08 02 A6 */	mflr r0
/* 80073DF0 00070D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80073DF4 00070D54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80073DF8 00070D58  7C 7F 1B 78 */	mr r31, r3
/* 80073DFC 00070D5C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80073E00 00070D60  28 05 00 00 */	cmplwi r5, 0
/* 80073E04 00070D64  41 82 00 24 */	beq lbl_80073E28
/* 80073E08 00070D68  80 64 00 00 */	lwz r3, 0(r4)
/* 80073E0C 00070D6C  80 05 00 00 */	lwz r0, 0(r5)
/* 80073E10 00070D70  7C 03 00 00 */	cmpw r3, r0
/* 80073E14 00070D74  41 82 00 14 */	beq lbl_80073E28
/* 80073E18 00070D78  38 60 00 01 */	li r3, 1
/* 80073E1C 00070D7C  38 00 00 04 */	li r0, 4
/* 80073E20 00070D80  98 7F 00 2C */	stb r3, 0x2c(r31)
/* 80073E24 00070D84  90 1F 00 30 */	stw r0, 0x30(r31)
lbl_80073E28:
/* 80073E28 00070D88  90 9F 00 04 */	stw r4, 4(r31)
/* 80073E2C 00070D8C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80073E30 00070D90  48 01 4D D9 */	bl VIConfigure
/* 80073E34 00070D94  48 01 59 05 */	bl VIFlush
/* 80073E38 00070D98  88 1F 00 2C */	lbz r0, 0x2c(r31)
/* 80073E3C 00070D9C  28 00 00 00 */	cmplwi r0, 0
/* 80073E40 00070DA0  41 82 00 0C */	beq lbl_80073E4C
/* 80073E44 00070DA4  48 01 48 FD */	bl VIWaitForRetrace
/* 80073E48 00070DA8  48 01 48 F9 */	bl VIWaitForRetrace
lbl_80073E4C:
/* 80073E4C 00070DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80073E50 00070DB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80073E54 00070DB4  7C 08 03 A6 */	mtlr r0
/* 80073E58 00070DB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80073E5C 00070DBC  4E 80 00 20 */	blr 

.global waitRetraceIfNeed__8JUTVideoFv
waitRetraceIfNeed__8JUTVideoFv:
/* 80073E60 00070DC0  4E 80 00 20 */	blr 
