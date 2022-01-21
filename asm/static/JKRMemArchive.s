.include "macros.inc"

.section .text

.org 0x80069530

.global __ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
__ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection:
/* 80069530 00066490  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80069534 00066494  7C 08 02 A6 */	mflr r0
/* 80069538 00066498  90 01 00 24 */	stw r0, 0x24(r1)
/* 8006953C 0006649C  39 61 00 20 */	addi r11, r1, 0x20
/* 80069540 000664A0  48 03 19 95 */	bl func_8009AED4
/* 80069544 000664A4  7C BF 2B 78 */	mr r31, r5
/* 80069548 000664A8  7C 7D 1B 78 */	mr r29, r3
/* 8006954C 000664AC  7C 9E 23 78 */	mr r30, r4
/* 80069550 000664B0  38 A0 00 01 */	li r5, 1
/* 80069554 000664B4  4B FF F9 C9 */	bl __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
/* 80069558 000664B8  3C 60 80 0E */	lis r3, __vt__13JKRMemArchive@ha
/* 8006955C 000664BC  38 00 00 00 */	li r0, 0
/* 80069560 000664C0  38 83 E7 E0 */	addi r4, r3, __vt__13JKRMemArchive@l
/* 80069564 000664C4  7F A3 EB 78 */	mr r3, r29
/* 80069568 000664C8  90 9D 00 00 */	stw r4, 0(r29)
/* 8006956C 000664CC  7F C4 F3 78 */	mr r4, r30
/* 80069570 000664D0  98 1D 00 30 */	stb r0, 0x30(r29)
/* 80069574 000664D4  93 FD 00 5C */	stw r31, 0x5c(r29)
/* 80069578 000664D8  80 BD 00 5C */	lwz r5, 0x5c(r29)
/* 8006957C 000664DC  48 00 01 11 */	bl open__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
/* 80069580 000664E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80069584 000664E4  40 82 00 0C */	bne lbl_80069590
/* 80069588 000664E8  7F A3 EB 78 */	mr r3, r29
/* 8006958C 000664EC  48 00 00 40 */	b lbl_800695CC
lbl_80069590:
/* 80069590 000664F0  3C 80 52 41 */	lis r4, 0x52415243@ha
/* 80069594 000664F4  3C 60 80 20 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 80069598 000664F8  38 04 52 43 */	addi r0, r4, 0x52415243@l
/* 8006959C 000664FC  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 800695A0 00066500  38 9D 00 18 */	addi r4, r29, 0x18
/* 800695A4 00066504  38 63 70 8C */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 800695A8 00066508  80 BD 00 48 */	lwz r5, 0x48(r29)
/* 800695AC 0006650C  80 DD 00 50 */	lwz r6, 0x50(r29)
/* 800695B0 00066510  80 05 00 04 */	lwz r0, 4(r5)
/* 800695B4 00066514  7C 06 02 14 */	add r0, r6, r0
/* 800695B8 00066518  90 1D 00 28 */	stw r0, 0x28(r29)
/* 800695BC 0006651C  48 00 49 91 */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 800695C0 00066520  38 00 00 01 */	li r0, 1
/* 800695C4 00066524  7F A3 EB 78 */	mr r3, r29
/* 800695C8 00066528  98 1D 00 30 */	stb r0, 0x30(r29)
lbl_800695CC:
/* 800695CC 0006652C  39 61 00 20 */	addi r11, r1, 0x20
/* 800695D0 00066530  48 03 19 51 */	bl func_8009AF20
/* 800695D4 00066534  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800695D8 00066538  7C 08 03 A6 */	mtlr r0
/* 800695DC 0006653C  38 21 00 20 */	addi r1, r1, 0x20
/* 800695E0 00066540  4E 80 00 20 */	blr 

.global __dt__13JKRMemArchiveFv
__dt__13JKRMemArchiveFv:
/* 800695E4 00066544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800695E8 00066548  7C 08 02 A6 */	mflr r0
/* 800695EC 0006654C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800695F0 00066550  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800695F4 00066554  7C 9F 23 78 */	mr r31, r4
/* 800695F8 00066558  93 C1 00 08 */	stw r30, 8(r1)
/* 800695FC 0006655C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80069600 00066560  41 82 00 70 */	beq lbl_80069670
/* 80069604 00066564  3C 60 80 0E */	lis r3, __vt__13JKRMemArchive@ha
/* 80069608 00066568  38 03 E7 E0 */	addi r0, r3, __vt__13JKRMemArchive@l
/* 8006960C 0006656C  90 1E 00 00 */	stw r0, 0(r30)
/* 80069610 00066570  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 80069614 00066574  28 00 00 01 */	cmplwi r0, 1
/* 80069618 00066578  40 82 00 3C */	bne lbl_80069654
/* 8006961C 0006657C  88 1E 00 68 */	lbz r0, 0x68(r30)
/* 80069620 00066580  28 00 00 00 */	cmplwi r0, 0
/* 80069624 00066584  41 82 00 18 */	beq lbl_8006963C
/* 80069628 00066588  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 8006962C 0006658C  28 03 00 00 */	cmplwi r3, 0
/* 80069630 00066590  41 82 00 0C */	beq lbl_8006963C
/* 80069634 00066594  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 80069638 00066598  4B FF A4 BD */	bl free__7JKRHeapFPvP7JKRHeap
lbl_8006963C:
/* 8006963C 0006659C  3C 60 80 20 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 80069640 000665A0  38 9E 00 18 */	addi r4, r30, 0x18
/* 80069644 000665A4  38 63 70 8C */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 80069648 000665A8  48 00 4A 71 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 8006964C 000665AC  38 00 00 00 */	li r0, 0
/* 80069650 000665B0  98 1E 00 30 */	stb r0, 0x30(r30)
lbl_80069654:
/* 80069654 000665B4  7F C3 F3 78 */	mr r3, r30
/* 80069658 000665B8  38 80 00 00 */	li r4, 0
/* 8006965C 000665BC  4B FF F9 61 */	bl __dt__10JKRArchiveFv
/* 80069660 000665C0  7F E0 07 35 */	extsh. r0, r31
/* 80069664 000665C4  40 81 00 0C */	ble lbl_80069670
/* 80069668 000665C8  7F C3 F3 78 */	mr r3, r30
/* 8006966C 000665CC  4B FF A9 45 */	bl __dl__FPv
lbl_80069670:
/* 80069670 000665D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80069674 000665D4  7F C3 F3 78 */	mr r3, r30
/* 80069678 000665D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8006967C 000665DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80069680 000665E0  7C 08 03 A6 */	mtlr r0
/* 80069684 000665E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80069688 000665E8  4E 80 00 20 */	blr 

.global open__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
open__13JKRMemArchiveFlQ210JKRArchive15EMountDirection:
/* 8006968C 000665EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80069690 000665F0  7C 08 02 A6 */	mflr r0
/* 80069694 000665F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80069698 000665F8  38 00 00 00 */	li r0, 0
/* 8006969C 000665FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800696A0 00066600  7C 7F 1B 78 */	mr r31, r3
/* 800696A4 00066604  90 03 00 60 */	stw r0, 0x60(r3)
/* 800696A8 00066608  90 03 00 44 */	stw r0, 0x44(r3)
/* 800696AC 0006660C  90 03 00 64 */	stw r0, 0x64(r3)
/* 800696B0 00066610  90 03 00 48 */	stw r0, 0x48(r3)
/* 800696B4 00066614  90 03 00 4C */	stw r0, 0x4c(r3)
/* 800696B8 00066618  90 03 00 50 */	stw r0, 0x50(r3)
/* 800696BC 0006661C  98 03 00 68 */	stb r0, 0x68(r3)
/* 800696C0 00066620  90 A3 00 5C */	stw r5, 0x5c(r3)
/* 800696C4 00066624  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 800696C8 00066628  2C 00 00 01 */	cmpwi r0, 1
/* 800696CC 0006662C  40 82 00 30 */	bne lbl_800696FC
/* 800696D0 00066630  80 FF 00 38 */	lwz r7, 0x38(r31)
/* 800696D4 00066634  7C 83 23 78 */	mr r3, r4
/* 800696D8 00066638  39 5F 00 58 */	addi r10, r31, 0x58
/* 800696DC 0006663C  38 80 00 00 */	li r4, 0
/* 800696E0 00066640  38 A0 00 01 */	li r5, 1
/* 800696E4 00066644  38 C0 00 00 */	li r6, 0
/* 800696E8 00066648  39 00 00 01 */	li r8, 1
/* 800696EC 0006664C  39 20 00 00 */	li r9, 0
/* 800696F0 00066650  48 00 27 D1 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
/* 800696F4 00066654  90 7F 00 60 */	stw r3, 0x60(r31)
/* 800696F8 00066658  48 00 00 2C */	b lbl_80069724
lbl_800696FC:
/* 800696FC 0006665C  80 FF 00 38 */	lwz r7, 0x38(r31)
/* 80069700 00066660  7C 83 23 78 */	mr r3, r4
/* 80069704 00066664  39 5F 00 58 */	addi r10, r31, 0x58
/* 80069708 00066668  38 80 00 00 */	li r4, 0
/* 8006970C 0006666C  38 A0 00 01 */	li r5, 1
/* 80069710 00066670  38 C0 00 00 */	li r6, 0
/* 80069714 00066674  39 00 00 02 */	li r8, 2
/* 80069718 00066678  39 20 00 00 */	li r9, 0
/* 8006971C 0006667C  48 00 27 A5 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
/* 80069720 00066680  90 7F 00 60 */	stw r3, 0x60(r31)
lbl_80069724:
/* 80069724 00066684  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80069728 00066688  28 04 00 00 */	cmplwi r4, 0
/* 8006972C 0006668C  40 82 00 10 */	bne lbl_8006973C
/* 80069730 00066690  38 00 00 00 */	li r0, 0
/* 80069734 00066694  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 80069738 00066698  48 00 00 60 */	b lbl_80069798
lbl_8006973C:
/* 8006973C 0006669C  80 64 00 08 */	lwz r3, 8(r4)
/* 80069740 000666A0  38 00 00 01 */	li r0, 1
/* 80069744 000666A4  7C 64 1A 14 */	add r3, r4, r3
/* 80069748 000666A8  90 7F 00 44 */	stw r3, 0x44(r31)
/* 8006974C 000666AC  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 80069750 000666B0  80 64 00 04 */	lwz r3, 4(r4)
/* 80069754 000666B4  7C 64 1A 14 */	add r3, r4, r3
/* 80069758 000666B8  90 7F 00 48 */	stw r3, 0x48(r31)
/* 8006975C 000666BC  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 80069760 000666C0  80 64 00 0C */	lwz r3, 0xc(r4)
/* 80069764 000666C4  7C 64 1A 14 */	add r3, r4, r3
/* 80069768 000666C8  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 8006976C 000666CC  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 80069770 000666D0  80 64 00 14 */	lwz r3, 0x14(r4)
/* 80069774 000666D4  7C 64 1A 14 */	add r3, r4, r3
/* 80069778 000666D8  90 7F 00 50 */	stw r3, 0x50(r31)
/* 8006977C 000666DC  80 BF 00 60 */	lwz r5, 0x60(r31)
/* 80069780 000666E0  80 85 00 0C */	lwz r4, 0xc(r5)
/* 80069784 000666E4  80 65 00 08 */	lwz r3, 8(r5)
/* 80069788 000666E8  7C 63 22 14 */	add r3, r3, r4
/* 8006978C 000666EC  7C 65 1A 14 */	add r3, r5, r3
/* 80069790 000666F0  90 7F 00 64 */	stw r3, 0x64(r31)
/* 80069794 000666F4  98 1F 00 68 */	stb r0, 0x68(r31)
lbl_80069798:
/* 80069798 000666F8  88 7F 00 3C */	lbz r3, 0x3c(r31)
/* 8006979C 000666FC  30 03 FF FF */	addic r0, r3, -1
/* 800697A0 00066700  7C 60 19 10 */	subfe r3, r0, r3
/* 800697A4 00066704  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800697A8 00066708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800697AC 0006670C  7C 08 03 A6 */	mtlr r0
/* 800697B0 00066710  38 21 00 10 */	addi r1, r1, 0x10
/* 800697B4 00066714  4E 80 00 20 */	blr 

.global fetchResource__13JKRMemArchiveFPQ210JKRArchive12SDIFileEntryPUl
fetchResource__13JKRMemArchiveFPQ210JKRArchive12SDIFileEntryPUl:
/* 800697B8 00066718  80 04 00 10 */	lwz r0, 0x10(r4)
/* 800697BC 0006671C  28 00 00 00 */	cmplwi r0, 0
/* 800697C0 00066720  40 82 00 14 */	bne lbl_800697D4
/* 800697C4 00066724  80 63 00 64 */	lwz r3, 0x64(r3)
/* 800697C8 00066728  80 04 00 08 */	lwz r0, 8(r4)
/* 800697CC 0006672C  7C 03 02 14 */	add r0, r3, r0
/* 800697D0 00066730  90 04 00 10 */	stw r0, 0x10(r4)
lbl_800697D4:
/* 800697D4 00066734  28 05 00 00 */	cmplwi r5, 0
/* 800697D8 00066738  41 82 00 0C */	beq lbl_800697E4
/* 800697DC 0006673C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800697E0 00066740  90 05 00 00 */	stw r0, 0(r5)
lbl_800697E4:
/* 800697E4 00066744  80 64 00 10 */	lwz r3, 0x10(r4)
/* 800697E8 00066748  4E 80 00 20 */	blr 

.global fetchResource__13JKRMemArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl15JKRExpandSwitch
fetchResource__13JKRMemArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl15JKRExpandSwitch:
/* 800697EC 0006674C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800697F0 00066750  7C 08 02 A6 */	mflr r0
/* 800697F4 00066754  90 01 00 24 */	stw r0, 0x24(r1)
/* 800697F8 00066758  39 61 00 20 */	addi r11, r1, 0x20
/* 800697FC 0006675C  48 03 16 D9 */	bl func_8009AED4
/* 80069800 00066760  81 26 00 0C */	lwz r9, 0xc(r6)
/* 80069804 00066764  54 AA 00 34 */	rlwinm r10, r5, 0, 0, 0x1a
/* 80069808 00066768  7C 9D 23 78 */	mr r29, r4
/* 8006980C 0006676C  7C FE 3B 78 */	mr r30, r7
/* 80069810 00066770  38 09 00 1F */	addi r0, r9, 0x1f
/* 80069814 00066774  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 80069818 00066778  7C 1F 50 40 */	cmplw r31, r10
/* 8006981C 0006677C  40 81 00 08 */	ble lbl_80069824
/* 80069820 00066780  7D 5F 53 78 */	mr r31, r10
lbl_80069824:
/* 80069824 00066784  80 86 00 10 */	lwz r4, 0x10(r6)
/* 80069828 00066788  28 04 00 00 */	cmplwi r4, 0
/* 8006982C 0006678C  41 82 00 14 */	beq lbl_80069840
/* 80069830 00066790  7F A3 EB 78 */	mr r3, r29
/* 80069834 00066794  7F E5 FB 78 */	mr r5, r31
/* 80069838 00066798  4B FF A6 9D */	bl copyMemory__7JKRHeapFPvPvUl
/* 8006983C 0006679C  48 00 00 60 */	b lbl_8006989C
lbl_80069840:
/* 80069840 000667A0  80 86 00 04 */	lwz r4, 4(r6)
/* 80069844 000667A4  54 80 47 7B */	rlwinm. r0, r4, 8, 0x1d, 0x1d
/* 80069848 000667A8  54 84 46 3E */	srwi r4, r4, 0x18
/* 8006984C 000667AC  40 82 00 0C */	bne lbl_80069858
/* 80069850 000667B0  38 00 00 00 */	li r0, 0
/* 80069854 000667B4  48 00 00 18 */	b lbl_8006986C
lbl_80069858:
/* 80069858 000667B8  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 8006985C 000667BC  41 82 00 0C */	beq lbl_80069868
/* 80069860 000667C0  38 00 00 02 */	li r0, 2
/* 80069864 000667C4  48 00 00 08 */	b lbl_8006986C
lbl_80069868:
/* 80069868 000667C8  38 00 00 01 */	li r0, 1
lbl_8006986C:
/* 8006986C 000667CC  2C 08 00 01 */	cmpwi r8, 1
/* 80069870 000667D0  7C 07 03 78 */	mr r7, r0
/* 80069874 000667D4  41 82 00 08 */	beq lbl_8006987C
/* 80069878 000667D8  38 E0 00 00 */	li r7, 0
lbl_8006987C:
/* 8006987C 000667DC  80 06 00 08 */	lwz r0, 8(r6)
/* 80069880 000667E0  7F E4 FB 78 */	mr r4, r31
/* 80069884 000667E4  80 63 00 64 */	lwz r3, 0x64(r3)
/* 80069888 000667E8  7F A5 EB 78 */	mr r5, r29
/* 8006988C 000667EC  7D 46 53 78 */	mr r6, r10
/* 80069890 000667F0  7C 63 02 14 */	add r3, r3, r0
/* 80069894 000667F4  48 00 00 BD */	bl fetchResource_subroutine__13JKRMemArchiveFPUcUlPUcUli
/* 80069898 000667F8  7C 7F 1B 78 */	mr r31, r3
lbl_8006989C:
/* 8006989C 000667FC  28 1E 00 00 */	cmplwi r30, 0
/* 800698A0 00066800  41 82 00 08 */	beq lbl_800698A8
/* 800698A4 00066804  93 FE 00 00 */	stw r31, 0(r30)
lbl_800698A8:
/* 800698A8 00066808  7F A3 EB 78 */	mr r3, r29
/* 800698AC 0006680C  39 61 00 20 */	addi r11, r1, 0x20
/* 800698B0 00066810  48 03 16 71 */	bl func_8009AF20
/* 800698B4 00066814  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800698B8 00066818  7C 08 03 A6 */	mtlr r0
/* 800698BC 0006681C  38 21 00 20 */	addi r1, r1, 0x20
/* 800698C0 00066820  4E 80 00 20 */	blr 

.global removeResourceAll__13JKRMemArchiveFv
removeResourceAll__13JKRMemArchiveFv:
/* 800698C4 00066824  80 03 00 44 */	lwz r0, 0x44(r3)
/* 800698C8 00066828  28 00 00 00 */	cmplwi r0, 0
/* 800698CC 0006682C  4D 82 00 20 */	beqlr 
/* 800698D0 00066830  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 800698D4 00066834  28 00 00 01 */	cmplwi r0, 1
/* 800698D8 00066838  4D 82 00 20 */	beqlr 
/* 800698DC 0006683C  80 C3 00 4C */	lwz r6, 0x4c(r3)
/* 800698E0 00066840  38 E0 00 00 */	li r7, 0
/* 800698E4 00066844  38 A0 00 00 */	li r5, 0
/* 800698E8 00066848  48 00 00 18 */	b lbl_80069900
lbl_800698EC:
/* 800698EC 0006684C  80 06 00 10 */	lwz r0, 0x10(r6)
/* 800698F0 00066850  28 00 00 00 */	cmplwi r0, 0
/* 800698F4 00066854  41 82 00 08 */	beq lbl_800698FC
/* 800698F8 00066858  90 A6 00 10 */	stw r5, 0x10(r6)
lbl_800698FC:
/* 800698FC 0006685C  38 E7 00 01 */	addi r7, r7, 1
lbl_80069900:
/* 80069900 00066860  80 83 00 44 */	lwz r4, 0x44(r3)
/* 80069904 00066864  80 04 00 08 */	lwz r0, 8(r4)
/* 80069908 00066868  7C 07 00 40 */	cmplw r7, r0
/* 8006990C 0006686C  41 80 FF E0 */	blt lbl_800698EC
/* 80069910 00066870  4E 80 00 20 */	blr 

.global removeResource__13JKRMemArchiveFPv
removeResource__13JKRMemArchiveFPv:
/* 80069914 00066874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80069918 00066878  7C 08 02 A6 */	mflr r0
/* 8006991C 0006687C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80069920 00066880  4B FF FA 95 */	bl findPtrResource__10JKRArchiveCFPCv
/* 80069924 00066884  28 03 00 00 */	cmplwi r3, 0
/* 80069928 00066888  40 82 00 0C */	bne lbl_80069934
/* 8006992C 0006688C  38 60 00 00 */	li r3, 0
/* 80069930 00066890  48 00 00 10 */	b lbl_80069940
lbl_80069934:
/* 80069934 00066894  38 00 00 00 */	li r0, 0
/* 80069938 00066898  90 03 00 10 */	stw r0, 0x10(r3)
/* 8006993C 0006689C  38 60 00 01 */	li r3, 1
lbl_80069940:
/* 80069940 000668A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80069944 000668A4  7C 08 03 A6 */	mtlr r0
/* 80069948 000668A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8006994C 000668AC  4E 80 00 20 */	blr 

.global fetchResource_subroutine__13JKRMemArchiveFPUcUlPUcUli
fetchResource_subroutine__13JKRMemArchiveFPUcUlPUcUli:
/* 80069950 000668B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80069954 000668B4  7C 08 02 A6 */	mflr r0
/* 80069958 000668B8  2C 07 00 00 */	cmpwi r7, 0
/* 8006995C 000668BC  54 C8 00 34 */	rlwinm r8, r6, 0, 0, 0x1a
/* 80069960 000668C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80069964 000668C4  38 04 00 1F */	addi r0, r4, 0x1f
/* 80069968 000668C8  7C 64 1B 78 */	mr r4, r3
/* 8006996C 000668CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80069970 000668D0  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 80069974 000668D4  41 82 00 14 */	beq lbl_80069988
/* 80069978 000668D8  41 80 00 7C */	blt lbl_800699F4
/* 8006997C 000668DC  2C 07 00 03 */	cmpwi r7, 3
/* 80069980 000668E0  40 80 00 74 */	bge lbl_800699F4
/* 80069984 000668E4  48 00 00 24 */	b lbl_800699A8
lbl_80069988:
/* 80069988 000668E8  7C 1F 40 40 */	cmplw r31, r8
/* 8006998C 000668EC  40 81 00 08 */	ble lbl_80069994
/* 80069990 000668F0  7D 1F 43 78 */	mr r31, r8
lbl_80069994:
/* 80069994 000668F4  7C A3 2B 78 */	mr r3, r5
/* 80069998 000668F8  7F E5 FB 78 */	mr r5, r31
/* 8006999C 000668FC  4B FF A5 39 */	bl copyMemory__7JKRHeapFPvPvUl
/* 800699A0 00066900  7F E3 FB 78 */	mr r3, r31
/* 800699A4 00066904  48 00 00 70 */	b lbl_80069A14
lbl_800699A8:
/* 800699A8 00066908  88 04 00 05 */	lbz r0, 5(r4)
/* 800699AC 0006690C  88 64 00 04 */	lbz r3, 4(r4)
/* 800699B0 00066910  54 00 80 1E */	slwi r0, r0, 0x10
/* 800699B4 00066914  88 C4 00 06 */	lbz r6, 6(r4)
/* 800699B8 00066918  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 800699BC 0006691C  88 E4 00 07 */	lbz r7, 7(r4)
/* 800699C0 00066920  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 800699C4 00066924  7C E0 03 78 */	or r0, r7, r0
/* 800699C8 00066928  7C 00 40 40 */	cmplw r0, r8
/* 800699CC 0006692C  7C 1F 03 78 */	mr r31, r0
/* 800699D0 00066930  40 81 00 08 */	ble lbl_800699D8
/* 800699D4 00066934  7D 1F 43 78 */	mr r31, r8
lbl_800699D8:
/* 800699D8 00066938  7C 83 23 78 */	mr r3, r4
/* 800699DC 0006693C  7C A4 2B 78 */	mr r4, r5
/* 800699E0 00066940  7F E5 FB 78 */	mr r5, r31
/* 800699E4 00066944  38 C0 00 00 */	li r6, 0
/* 800699E8 00066948  48 00 3F 29 */	bl orderSync__9JKRDecompFPUcPUcUlUl
/* 800699EC 0006694C  7F E3 FB 78 */	mr r3, r31
/* 800699F0 00066950  48 00 00 24 */	b lbl_80069A14
lbl_800699F4:
/* 800699F4 00066954  3C 60 80 0E */	lis r3, @2311@ha
/* 800699F8 00066958  3C A0 80 0E */	lis r5, @2312@ha
/* 800699FC 0006695C  38 63 E7 40 */	addi r3, r3, @2311@l
/* 80069A00 00066960  38 80 02 C5 */	li r4, 0x2c5
/* 80069A04 00066964  38 A5 E7 54 */	addi r5, r5, @2312@l
/* 80069A08 00066968  4C C6 31 82 */	crclr 6
/* 80069A0C 0006696C  4B FF 0D D1 */	bl OSPanic
/* 80069A10 00066970  38 60 00 00 */	li r3, 0
lbl_80069A14:
/* 80069A14 00066974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80069A18 00066978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80069A1C 0006697C  7C 08 03 A6 */	mtlr r0
/* 80069A20 00066980  38 21 00 10 */	addi r1, r1, 0x10
/* 80069A24 00066984  4E 80 00 20 */	blr 
