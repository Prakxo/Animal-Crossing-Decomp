.include "macros.inc"

.section .text

.org 0x80067FF4

.global __ct__13JKRFileLoaderFv
__ct__13JKRFileLoaderFv:
/* 80067FF4 00064F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80067FF8 00064F58  7C 08 02 A6 */	mflr r0
/* 80067FFC 00064F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80068000 00064F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80068004 00064F64  7C 7F 1B 78 */	mr r31, r3
/* 80068008 00064F68  4B FF DA 99 */	bl __ct__11JKRDisposerFv
/* 8006800C 00064F6C  3C 60 80 0E */	lis r3, __vt__13JKRFileLoader@ha
/* 80068010 00064F70  7F E4 FB 78 */	mr r4, r31
/* 80068014 00064F74  38 03 E6 30 */	addi r0, r3, __vt__13JKRFileLoader@l
/* 80068018 00064F78  38 7F 00 18 */	addi r3, r31, 0x18
/* 8006801C 00064F7C  90 1F 00 00 */	stw r0, 0(r31)
/* 80068020 00064F80  48 00 5D 39 */	bl __ct__10JSUPtrLinkFPv
/* 80068024 00064F84  38 00 00 00 */	li r0, 0
/* 80068028 00064F88  7F E3 FB 78 */	mr r3, r31
/* 8006802C 00064F8C  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80068030 00064F90  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80068034 00064F94  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80068038 00064F98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8006803C 00064F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80068040 00064FA0  7C 08 03 A6 */	mtlr r0
/* 80068044 00064FA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80068048 00064FA8  4E 80 00 20 */	blr 

.global __dt__13JKRFileLoaderFv
__dt__13JKRFileLoaderFv:
/* 8006804C 00064FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80068050 00064FB0  7C 08 02 A6 */	mflr r0
/* 80068054 00064FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80068058 00064FB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8006805C 00064FBC  7C 9F 23 78 */	mr r31, r4
/* 80068060 00064FC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80068064 00064FC4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80068068 00064FC8  41 82 00 54 */	beq lbl_800680BC
/* 8006806C 00064FCC  3C 60 80 0E */	lis r3, __vt__13JKRFileLoader@ha
/* 80068070 00064FD0  38 03 E6 30 */	addi r0, r3, __vt__13JKRFileLoader@l
/* 80068074 00064FD4  90 1E 00 00 */	stw r0, 0(r30)
/* 80068078 00064FD8  80 0D 8B E8 */	lwz r0, sCurrentVolume__13JKRFileLoader-_SDA_BASE_(r13)
/* 8006807C 00064FDC  7C 00 F0 40 */	cmplw r0, r30
/* 80068080 00064FE0  40 82 00 0C */	bne lbl_8006808C
/* 80068084 00064FE4  38 00 00 00 */	li r0, 0
/* 80068088 00064FE8  90 0D 8B E8 */	stw r0, sCurrentVolume__13JKRFileLoader-_SDA_BASE_(r13)
lbl_8006808C:
/* 8006808C 00064FEC  34 1E 00 18 */	addic. r0, r30, 0x18
/* 80068090 00064FF0  41 82 00 10 */	beq lbl_800680A0
/* 80068094 00064FF4  38 7E 00 18 */	addi r3, r30, 0x18
/* 80068098 00064FF8  38 80 00 00 */	li r4, 0
/* 8006809C 00064FFC  48 00 5C D5 */	bl __dt__10JSUPtrLinkFv
lbl_800680A0:
/* 800680A0 00065000  7F C3 F3 78 */	mr r3, r30
/* 800680A4 00065004  38 80 00 00 */	li r4, 0
/* 800680A8 00065008  4B FF DA 61 */	bl __dt__11JKRDisposerFv
/* 800680AC 0006500C  7F E0 07 35 */	extsh. r0, r31
/* 800680B0 00065010  40 81 00 0C */	ble lbl_800680BC
/* 800680B4 00065014  7F C3 F3 78 */	mr r3, r30
/* 800680B8 00065018  4B FF BE F9 */	bl __dl__FPv
lbl_800680BC:
/* 800680BC 0006501C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800680C0 00065020  7F C3 F3 78 */	mr r3, r30
/* 800680C4 00065024  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800680C8 00065028  83 C1 00 08 */	lwz r30, 8(r1)
/* 800680CC 0006502C  7C 08 03 A6 */	mtlr r0
/* 800680D0 00065030  38 21 00 10 */	addi r1, r1, 0x10
/* 800680D4 00065034  4E 80 00 20 */	blr 

.global unmount__13JKRFileLoaderFv
unmount__13JKRFileLoaderFv:
/* 800680D8 00065038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800680DC 0006503C  7C 08 02 A6 */	mflr r0
/* 800680E0 00065040  90 01 00 14 */	stw r0, 0x14(r1)
/* 800680E4 00065044  80 83 00 34 */	lwz r4, 0x34(r3)
/* 800680E8 00065048  28 04 00 00 */	cmplwi r4, 0
/* 800680EC 0006504C  41 82 00 2C */	beq lbl_80068118
/* 800680F0 00065050  34 04 FF FF */	addic. r0, r4, -1
/* 800680F4 00065054  90 03 00 34 */	stw r0, 0x34(r3)
/* 800680F8 00065058  40 82 00 20 */	bne lbl_80068118
/* 800680FC 0006505C  28 03 00 00 */	cmplwi r3, 0
/* 80068100 00065060  41 82 00 18 */	beq lbl_80068118
/* 80068104 00065064  81 83 00 00 */	lwz r12, 0(r3)
/* 80068108 00065068  38 80 00 01 */	li r4, 1
/* 8006810C 0006506C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80068110 00065070  7D 89 03 A6 */	mtctr r12
/* 80068114 00065074  4E 80 04 21 */	bctrl 
lbl_80068118:
/* 80068118 00065078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006811C 0006507C  7C 08 03 A6 */	mtlr r0
/* 80068120 00065080  38 21 00 10 */	addi r1, r1, 0x10
/* 80068124 00065084  4E 80 00 20 */	blr 

.global changeDirectory__13JKRFileLoaderFPCc
changeDirectory__13JKRFileLoaderFPCc:
/* 80068128 00065088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006812C 0006508C  7C 08 02 A6 */	mflr r0
/* 80068130 00065090  90 01 00 14 */	stw r0, 0x14(r1)
/* 80068134 00065094  90 61 00 08 */	stw r3, 8(r1)
/* 80068138 00065098  38 61 00 08 */	addi r3, r1, 8
/* 8006813C 0006509C  48 00 02 21 */	bl findVolume__13JKRFileLoaderFPPCc
/* 80068140 000650A0  28 03 00 00 */	cmplwi r3, 0
/* 80068144 000650A4  41 82 00 18 */	beq lbl_8006815C
/* 80068148 000650A8  81 83 00 00 */	lwz r12, 0(r3)
/* 8006814C 000650AC  80 81 00 08 */	lwz r4, 8(r1)
/* 80068150 000650B0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80068154 000650B4  7D 89 03 A6 */	mtctr r12
/* 80068158 000650B8  4E 80 04 21 */	bctrl 
lbl_8006815C:
/* 8006815C 000650BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80068160 000650C0  7C 08 03 A6 */	mtlr r0
/* 80068164 000650C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80068168 000650C8  4E 80 00 20 */	blr 

.global getGlbResource__13JKRFileLoaderFPCc
getGlbResource__13JKRFileLoaderFPCc:
/* 8006816C 000650CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80068170 000650D0  7C 08 02 A6 */	mflr r0
/* 80068174 000650D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80068178 000650D8  90 61 00 08 */	stw r3, 8(r1)
/* 8006817C 000650DC  38 61 00 08 */	addi r3, r1, 8
/* 80068180 000650E0  48 00 01 DD */	bl findVolume__13JKRFileLoaderFPPCc
/* 80068184 000650E4  28 03 00 00 */	cmplwi r3, 0
/* 80068188 000650E8  40 82 00 0C */	bne lbl_80068194
/* 8006818C 000650EC  38 60 00 00 */	li r3, 0
/* 80068190 000650F0  48 00 00 18 */	b lbl_800681A8
lbl_80068194:
/* 80068194 000650F4  81 83 00 00 */	lwz r12, 0(r3)
/* 80068198 000650F8  80 81 00 08 */	lwz r4, 8(r1)
/* 8006819C 000650FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800681A0 00065100  7D 89 03 A6 */	mtctr r12
/* 800681A4 00065104  4E 80 04 21 */	bctrl 
lbl_800681A8:
/* 800681A8 00065108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800681AC 0006510C  7C 08 03 A6 */	mtlr r0
/* 800681B0 00065110  38 21 00 10 */	addi r1, r1, 0x10
/* 800681B4 00065114  4E 80 00 20 */	blr 

.global readGlbResource__13JKRFileLoaderFPvUlPCc15JKRExpandSwitch
readGlbResource__13JKRFileLoaderFPvUlPCc15JKRExpandSwitch:
/* 800681B8 00065118  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800681BC 0006511C  7C 08 02 A6 */	mflr r0
/* 800681C0 00065120  90 01 00 24 */	stw r0, 0x24(r1)
/* 800681C4 00065124  39 61 00 20 */	addi r11, r1, 0x20
/* 800681C8 00065128  48 03 2D 0D */	bl func_8009AED4
/* 800681CC 0006512C  90 A1 00 08 */	stw r5, 8(r1)
/* 800681D0 00065130  7C 7D 1B 78 */	mr r29, r3
/* 800681D4 00065134  7C 9E 23 78 */	mr r30, r4
/* 800681D8 00065138  7C DF 33 78 */	mr r31, r6
/* 800681DC 0006513C  38 61 00 08 */	addi r3, r1, 8
/* 800681E0 00065140  48 00 01 7D */	bl findVolume__13JKRFileLoaderFPPCc
/* 800681E4 00065144  28 03 00 00 */	cmplwi r3, 0
/* 800681E8 00065148  40 82 00 0C */	bne lbl_800681F4
/* 800681EC 0006514C  38 60 00 00 */	li r3, 0
/* 800681F0 00065150  48 00 00 24 */	b lbl_80068214
lbl_800681F4:
/* 800681F4 00065154  81 83 00 00 */	lwz r12, 0(r3)
/* 800681F8 00065158  7F A4 EB 78 */	mr r4, r29
/* 800681FC 0006515C  7F C5 F3 78 */	mr r5, r30
/* 80068200 00065160  7F E7 FB 78 */	mr r7, r31
/* 80068204 00065164  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80068208 00065168  80 C1 00 08 */	lwz r6, 8(r1)
/* 8006820C 0006516C  7D 89 03 A6 */	mtctr r12
/* 80068210 00065170  4E 80 04 21 */	bctrl 
lbl_80068214:
/* 80068214 00065174  39 61 00 20 */	addi r11, r1, 0x20
/* 80068218 00065178  48 03 2D 09 */	bl func_8009AF20
/* 8006821C 0006517C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80068220 00065180  7C 08 03 A6 */	mtlr r0
/* 80068224 00065184  38 21 00 20 */	addi r1, r1, 0x20
/* 80068228 00065188  4E 80 00 20 */	blr 

.global removeResource__13JKRFileLoaderFPvP13JKRFileLoader
removeResource__13JKRFileLoaderFPvP13JKRFileLoader:
/* 8006822C 0006518C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80068230 00065190  7C 08 02 A6 */	mflr r0
/* 80068234 00065194  28 04 00 00 */	cmplwi r4, 0
/* 80068238 00065198  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006823C 0006519C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80068240 000651A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80068244 000651A4  7C 7E 1B 78 */	mr r30, r3
/* 80068248 000651A8  41 82 00 20 */	beq lbl_80068268
/* 8006824C 000651AC  7C 83 23 78 */	mr r3, r4
/* 80068250 000651B0  7F C4 F3 78 */	mr r4, r30
/* 80068254 000651B4  81 83 00 00 */	lwz r12, 0(r3)
/* 80068258 000651B8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8006825C 000651BC  7D 89 03 A6 */	mtctr r12
/* 80068260 000651C0  4E 80 04 21 */	bctrl 
/* 80068264 000651C4  48 00 00 48 */	b lbl_800682AC
lbl_80068268:
/* 80068268 000651C8  3C 60 80 20 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 8006826C 000651CC  83 E3 70 8C */	lwz r31, sVolumeList__13JKRFileLoader@l(r3)
/* 80068270 000651D0  48 00 00 30 */	b lbl_800682A0
lbl_80068274:
/* 80068274 000651D4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80068278 000651D8  7F C4 F3 78 */	mr r4, r30
/* 8006827C 000651DC  81 83 00 00 */	lwz r12, 0(r3)
/* 80068280 000651E0  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80068284 000651E4  7D 89 03 A6 */	mtctr r12
/* 80068288 000651E8  4E 80 04 21 */	bctrl 
/* 8006828C 000651EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80068290 000651F0  41 82 00 0C */	beq lbl_8006829C
/* 80068294 000651F4  38 60 00 01 */	li r3, 1
/* 80068298 000651F8  48 00 00 14 */	b lbl_800682AC
lbl_8006829C:
/* 8006829C 000651FC  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_800682A0:
/* 800682A0 00065200  28 1F 00 00 */	cmplwi r31, 0
/* 800682A4 00065204  40 82 FF D0 */	bne lbl_80068274
/* 800682A8 00065208  38 60 00 00 */	li r3, 0
lbl_800682AC:
/* 800682AC 0006520C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800682B0 00065210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800682B4 00065214  83 C1 00 08 */	lwz r30, 8(r1)
/* 800682B8 00065218  7C 08 03 A6 */	mtlr r0
/* 800682BC 0006521C  38 21 00 10 */	addi r1, r1, 0x10
/* 800682C0 00065220  4E 80 00 20 */	blr 

.global detachResource__13JKRFileLoaderFPvP13JKRFileLoader
detachResource__13JKRFileLoaderFPvP13JKRFileLoader:
/* 800682C4 00065224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800682C8 00065228  7C 08 02 A6 */	mflr r0
/* 800682CC 0006522C  28 04 00 00 */	cmplwi r4, 0
/* 800682D0 00065230  90 01 00 14 */	stw r0, 0x14(r1)
/* 800682D4 00065234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800682D8 00065238  93 C1 00 08 */	stw r30, 8(r1)
/* 800682DC 0006523C  7C 7E 1B 78 */	mr r30, r3
/* 800682E0 00065240  41 82 00 20 */	beq lbl_80068300
/* 800682E4 00065244  7C 83 23 78 */	mr r3, r4
/* 800682E8 00065248  7F C4 F3 78 */	mr r4, r30
/* 800682EC 0006524C  81 83 00 00 */	lwz r12, 0(r3)
/* 800682F0 00065250  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800682F4 00065254  7D 89 03 A6 */	mtctr r12
/* 800682F8 00065258  4E 80 04 21 */	bctrl 
/* 800682FC 0006525C  48 00 00 48 */	b lbl_80068344
lbl_80068300:
/* 80068300 00065260  3C 60 80 20 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 80068304 00065264  83 E3 70 8C */	lwz r31, sVolumeList__13JKRFileLoader@l(r3)
/* 80068308 00065268  48 00 00 30 */	b lbl_80068338
lbl_8006830C:
/* 8006830C 0006526C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80068310 00065270  7F C4 F3 78 */	mr r4, r30
/* 80068314 00065274  81 83 00 00 */	lwz r12, 0(r3)
/* 80068318 00065278  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8006831C 0006527C  7D 89 03 A6 */	mtctr r12
/* 80068320 00065280  4E 80 04 21 */	bctrl 
/* 80068324 00065284  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80068328 00065288  41 82 00 0C */	beq lbl_80068334
/* 8006832C 0006528C  38 60 00 01 */	li r3, 1
/* 80068330 00065290  48 00 00 14 */	b lbl_80068344
lbl_80068334:
/* 80068334 00065294  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_80068338:
/* 80068338 00065298  28 1F 00 00 */	cmplwi r31, 0
/* 8006833C 0006529C  40 82 FF D0 */	bne lbl_8006830C
/* 80068340 000652A0  38 60 00 00 */	li r3, 0
lbl_80068344:
/* 80068344 000652A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80068348 000652A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8006834C 000652AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80068350 000652B0  7C 08 03 A6 */	mtlr r0
/* 80068354 000652B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80068358 000652B8  4E 80 00 20 */	blr 

.global findVolume__13JKRFileLoaderFPPCc
findVolume__13JKRFileLoaderFPPCc:
/* 8006835C 000652BC  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80068360 000652C0  7C 08 02 A6 */	mflr r0
/* 80068364 000652C4  90 01 01 24 */	stw r0, 0x124(r1)
/* 80068368 000652C8  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 8006836C 000652CC  7C 7F 1B 78 */	mr r31, r3
/* 80068370 000652D0  80 A3 00 00 */	lwz r5, 0(r3)
/* 80068374 000652D4  88 05 00 00 */	lbz r0, 0(r5)
/* 80068378 000652D8  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8006837C 000652DC  41 82 00 0C */	beq lbl_80068388
/* 80068380 000652E0  80 6D 8B E8 */	lwz r3, sCurrentVolume__13JKRFileLoader-_SDA_BASE_(r13)
/* 80068384 000652E4  48 00 00 50 */	b lbl_800683D4
lbl_80068388:
/* 80068388 000652E8  38 61 00 08 */	addi r3, r1, 8
/* 8006838C 000652EC  38 80 01 01 */	li r4, 0x101
/* 80068390 000652F0  48 00 00 B1 */	bl fetchVolumeName__13JKRFileLoaderFPclPCc
/* 80068394 000652F4  90 7F 00 00 */	stw r3, 0(r31)
/* 80068398 000652F8  3C 80 80 20 */	lis r4, sVolumeList__13JKRFileLoader@ha
/* 8006839C 000652FC  83 E4 70 8C */	lwz r31, sVolumeList__13JKRFileLoader@l(r4)
/* 800683A0 00065300  48 00 00 28 */	b lbl_800683C8
lbl_800683A4:
/* 800683A4 00065304  80 9F 00 00 */	lwz r4, 0(r31)
/* 800683A8 00065308  38 61 00 08 */	addi r3, r1, 8
/* 800683AC 0006530C  80 84 00 28 */	lwz r4, 0x28(r4)
/* 800683B0 00065310  48 03 72 4D */	bl strcmp
/* 800683B4 00065314  2C 03 00 00 */	cmpwi r3, 0
/* 800683B8 00065318  40 82 00 0C */	bne lbl_800683C4
/* 800683BC 0006531C  80 7F 00 00 */	lwz r3, 0(r31)
/* 800683C0 00065320  48 00 00 14 */	b lbl_800683D4
lbl_800683C4:
/* 800683C4 00065324  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_800683C8:
/* 800683C8 00065328  28 1F 00 00 */	cmplwi r31, 0
/* 800683CC 0006532C  40 82 FF D8 */	bne lbl_800683A4
/* 800683D0 00065330  38 60 00 00 */	li r3, 0
lbl_800683D4:
/* 800683D4 00065334  80 01 01 24 */	lwz r0, 0x124(r1)
/* 800683D8 00065338  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 800683DC 0006533C  7C 08 03 A6 */	mtlr r0
/* 800683E0 00065340  38 21 01 20 */	addi r1, r1, 0x120
/* 800683E4 00065344  4E 80 00 20 */	blr 

.global findFirstFile__13JKRFileLoaderFPCc
findFirstFile__13JKRFileLoaderFPCc:
/* 800683E8 00065348  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800683EC 0006534C  7C 08 02 A6 */	mflr r0
/* 800683F0 00065350  90 01 00 24 */	stw r0, 0x24(r1)
/* 800683F4 00065354  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800683F8 00065358  3B E0 00 00 */	li r31, 0
/* 800683FC 0006535C  90 61 00 08 */	stw r3, 8(r1)
/* 80068400 00065360  38 61 00 08 */	addi r3, r1, 8
/* 80068404 00065364  4B FF FF 59 */	bl findVolume__13JKRFileLoaderFPPCc
/* 80068408 00065368  28 03 00 00 */	cmplwi r3, 0
/* 8006840C 0006536C  41 82 00 1C */	beq lbl_80068428
/* 80068410 00065370  81 83 00 00 */	lwz r12, 0(r3)
/* 80068414 00065374  80 81 00 08 */	lwz r4, 8(r1)
/* 80068418 00065378  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8006841C 0006537C  7D 89 03 A6 */	mtctr r12
/* 80068420 00065380  4E 80 04 21 */	bctrl 
/* 80068424 00065384  7C 7F 1B 78 */	mr r31, r3
lbl_80068428:
/* 80068428 00065388  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8006842C 0006538C  7F E3 FB 78 */	mr r3, r31
/* 80068430 00065390  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80068434 00065394  7C 08 03 A6 */	mtlr r0
/* 80068438 00065398  38 21 00 20 */	addi r1, r1, 0x20
/* 8006843C 0006539C  4E 80 00 20 */	blr 

.global fetchVolumeName__13JKRFileLoaderFPclPCc
fetchVolumeName__13JKRFileLoaderFPclPCc:
/* 80068440 000653A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80068444 000653A4  7C 08 02 A6 */	mflr r0
/* 80068448 000653A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8006844C 000653AC  39 61 00 20 */	addi r11, r1, 0x20
/* 80068450 000653B0  48 03 2A 85 */	bl func_8009AED4
/* 80068454 000653B4  7C BF 2B 78 */	mr r31, r5
/* 80068458 000653B8  7C 7D 1B 78 */	mr r29, r3
/* 8006845C 000653BC  7C 9E 23 78 */	mr r30, r4
/* 80068460 000653C0  38 8D 83 BC */	addi r4, r13, @2432-_SDA_BASE_
/* 80068464 000653C4  7F E3 FB 78 */	mr r3, r31
/* 80068468 000653C8  48 03 71 95 */	bl strcmp
/* 8006846C 000653CC  2C 03 00 00 */	cmpwi r3, 0
/* 80068470 000653D0  40 82 00 18 */	bne lbl_80068488
/* 80068474 000653D4  7F A3 EB 78 */	mr r3, r29
/* 80068478 000653D8  38 8D 83 B8 */	addi r4, r13, rootPath$2412-_SDA_BASE_
/* 8006847C 000653DC  48 03 73 19 */	bl strcpy
/* 80068480 000653E0  38 6D 83 B8 */	addi r3, r13, rootPath$2412-_SDA_BASE_
/* 80068484 000653E4  48 00 00 7C */	b lbl_80068500
lbl_80068488:
/* 80068488 000653E8  3C 60 80 0E */	lis r3, __lower_map@ha
/* 8006848C 000653EC  3B FF 00 01 */	addi r31, r31, 1
/* 80068490 000653F0  38 63 1C B0 */	addi r3, r3, __lower_map@l
/* 80068494 000653F4  48 00 00 38 */	b lbl_800684CC
lbl_80068498:
/* 80068498 000653F8  2C 1E 00 01 */	cmpwi r30, 1
/* 8006849C 000653FC  40 81 00 2C */	ble lbl_800684C8
/* 800684A0 00065400  7C 80 07 74 */	extsb r0, r4
/* 800684A4 00065404  2C 00 FF FF */	cmpwi r0, -1
/* 800684A8 00065408  40 82 00 0C */	bne lbl_800684B4
/* 800684AC 0006540C  38 00 FF FF */	li r0, -1
/* 800684B0 00065410  48 00 00 0C */	b lbl_800684BC
lbl_800684B4:
/* 800684B4 00065414  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800684B8 00065418  7C 03 00 AE */	lbzx r0, r3, r0
lbl_800684BC:
/* 800684BC 0006541C  98 1D 00 00 */	stb r0, 0(r29)
/* 800684C0 00065420  3B BD 00 01 */	addi r29, r29, 1
/* 800684C4 00065424  3B DE FF FF */	addi r30, r30, -1
lbl_800684C8:
/* 800684C8 00065428  3B FF 00 01 */	addi r31, r31, 1
lbl_800684CC:
/* 800684CC 0006542C  88 9F 00 00 */	lbz r4, 0(r31)
/* 800684D0 00065430  7C 80 07 75 */	extsb. r0, r4
/* 800684D4 00065434  41 82 00 10 */	beq lbl_800684E4
/* 800684D8 00065438  7C 80 07 74 */	extsb r0, r4
/* 800684DC 0006543C  2C 00 00 2F */	cmpwi r0, 0x2f
/* 800684E0 00065440  40 82 FF B8 */	bne lbl_80068498
lbl_800684E4:
/* 800684E4 00065444  38 00 00 00 */	li r0, 0
/* 800684E8 00065448  98 1D 00 00 */	stb r0, 0(r29)
/* 800684EC 0006544C  88 1F 00 00 */	lbz r0, 0(r31)
/* 800684F0 00065450  7C 00 07 75 */	extsb. r0, r0
/* 800684F4 00065454  40 82 00 08 */	bne lbl_800684FC
/* 800684F8 00065458  3B ED 83 B8 */	addi r31, r13, rootPath$2412-_SDA_BASE_
lbl_800684FC:
/* 800684FC 0006545C  7F E3 FB 78 */	mr r3, r31
lbl_80068500:
/* 80068500 00065460  39 61 00 20 */	addi r11, r1, 0x20
/* 80068504 00065464  48 03 2A 1D */	bl func_8009AF20
/* 80068508 00065468  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8006850C 0006546C  7C 08 03 A6 */	mtlr r0
/* 80068510 00065470  38 21 00 20 */	addi r1, r1, 0x20
/* 80068514 00065474  4E 80 00 20 */	blr 

.global __sinit_JKRFileLoader_cpp
__sinit_JKRFileLoader_cpp:
/* 80068518 00065478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006851C 0006547C  7C 08 02 A6 */	mflr r0
/* 80068520 00065480  3C 60 80 20 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 80068524 00065484  90 01 00 14 */	stw r0, 0x14(r1)
/* 80068528 00065488  38 63 70 8C */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 8006852C 0006548C  48 00 59 45 */	bl initiate__10JSUPtrListFv
/* 80068530 00065490  3C 60 80 20 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 80068534 00065494  3C 80 80 07 */	lis r4, __dt__24JSUList<13JKRFileLoader>Fv@ha
/* 80068538 00065498  3C A0 80 20 */	lis r5, @2094@ha
/* 8006853C 0006549C  38 63 70 8C */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 80068540 000654A0  38 84 85 5C */	addi r4, r4, __dt__24JSUList<13JKRFileLoader>Fv@l
/* 80068544 000654A4  38 A5 70 80 */	addi r5, r5, @2094@l
/* 80068548 000654A8  48 03 25 95 */	bl __register_global_object
/* 8006854C 000654AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80068550 000654B0  7C 08 03 A6 */	mtlr r0
/* 80068554 000654B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80068558 000654B8  4E 80 00 20 */	blr 

.global __dt__24JSUList<13JKRFileLoader>Fv
__dt__24JSUList<13JKRFileLoader>Fv:
/* 8006855C 000654BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80068560 000654C0  7C 08 02 A6 */	mflr r0
/* 80068564 000654C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80068568 000654C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8006856C 000654CC  7C 9F 23 78 */	mr r31, r4
/* 80068570 000654D0  93 C1 00 08 */	stw r30, 8(r1)
/* 80068574 000654D4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80068578 000654D8  41 82 00 1C */	beq lbl_80068594
/* 8006857C 000654DC  38 80 00 00 */	li r4, 0
/* 80068580 000654E0  48 00 58 89 */	bl __dt__10JSUPtrListFv
/* 80068584 000654E4  7F E0 07 35 */	extsh. r0, r31
/* 80068588 000654E8  40 81 00 0C */	ble lbl_80068594
/* 8006858C 000654EC  7F C3 F3 78 */	mr r3, r30
/* 80068590 000654F0  4B FF BA 21 */	bl __dl__FPv
lbl_80068594:
/* 80068594 000654F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80068598 000654F8  7F C3 F3 78 */	mr r3, r30
/* 8006859C 000654FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800685A0 00065500  83 C1 00 08 */	lwz r30, 8(r1)
/* 800685A4 00065504  7C 08 03 A6 */	mtlr r0
/* 800685A8 00065508  38 21 00 10 */	addi r1, r1, 0x10
/* 800685AC 0006550C  4E 80 00 20 */	blr 
