.include "macros.inc"

.section .text

.org 0x8005A654

.global OSReportDisable
OSReportDisable:
/* 8005A654 000575B4  38 00 00 01 */	li r0, 1
/* 8005A658 000575B8  90 0D 8A A0 */	stw r0, __OSReport_disable-_SDA_BASE_(r13)
/* 8005A65C 000575BC  4E 80 00 20 */	blr 

.global OSReportEnable
OSReportEnable:
/* 8005A660 000575C0  38 00 00 00 */	li r0, 0
/* 8005A664 000575C4  90 0D 8A A0 */	stw r0, __OSReport_disable-_SDA_BASE_(r13)
/* 8005A668 000575C8  4E 80 00 20 */	blr 

.global OSVReport
OSVReport:
/* 8005A66C 000575CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8005A670 000575D0  7C 08 02 A6 */	mflr r0
/* 8005A674 000575D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8005A678 000575D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8005A67C 000575DC  48 04 08 55 */	bl func_8009AED0
/* 8005A680 000575E0  80 0D 8A A0 */	lwz r0, __OSReport_disable-_SDA_BASE_(r13)
/* 8005A684 000575E4  7C 7C 1B 78 */	mr r28, r3
/* 8005A688 000575E8  7C 9D 23 78 */	mr r29, r4
/* 8005A68C 000575EC  2C 00 00 00 */	cmpwi r0, 0
/* 8005A690 000575F0  40 82 00 A8 */	bne lbl_8005A738
/* 8005A694 000575F4  48 02 36 49 */	bl OSGetCurrentThread
/* 8005A698 000575F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8005A69C 000575FC  41 82 00 14 */	beq lbl_8005A6B0
/* 8005A6A0 00057600  A0 1F 02 C8 */	lhz r0, 0x2c8(r31)
/* 8005A6A4 00057604  28 00 00 02 */	cmplwi r0, 2
/* 8005A6A8 00057608  41 82 00 08 */	beq lbl_8005A6B0
/* 8005A6AC 0005760C  3B E0 00 00 */	li r31, 0
lbl_8005A6B0:
/* 8005A6B0 00057610  80 0D 8A 9C */	lwz r0, __OSReport_MonopolyThread-_SDA_BASE_(r13)
/* 8005A6B4 00057614  28 00 00 00 */	cmplwi r0, 0
/* 8005A6B8 00057618  41 82 00 0C */	beq lbl_8005A6C4
/* 8005A6BC 0005761C  7C 00 F8 40 */	cmplw r0, r31
/* 8005A6C0 00057620  40 82 00 78 */	bne lbl_8005A738
lbl_8005A6C4:
/* 8005A6C4 00057624  48 02 05 61 */	bl OSDisableInterrupts
/* 8005A6C8 00057628  88 0D 8A 98 */	lbz r0, lbl_80218618-_SDA_BASE_(r13)
/* 8005A6CC 0005762C  7C 7E 1B 78 */	mr r30, r3
/* 8005A6D0 00057630  28 00 00 00 */	cmplwi r0, 0
/* 8005A6D4 00057634  40 82 00 28 */	bne lbl_8005A6FC
/* 8005A6D8 00057638  3C 60 80 20 */	lis r3, print_mutex@ha
/* 8005A6DC 0005763C  38 63 6F 08 */	addi r3, r3, print_mutex@l
/* 8005A6E0 00057640  48 02 1B C9 */	bl OSInitMutex
/* 8005A6E4 00057644  38 00 00 01 */	li r0, 1
/* 8005A6E8 00057648  3C 60 80 0E */	lis r3, @379@ha
/* 8005A6EC 0005764C  98 0D 8A 98 */	stb r0, lbl_80218618-_SDA_BASE_(r13)
/* 8005A6F0 00057650  38 63 C6 D8 */	addi r3, r3, @379@l
/* 8005A6F4 00057654  4C C6 31 82 */	crclr 6
/* 8005A6F8 00057658  48 04 2F 21 */	bl printf
lbl_8005A6FC:
/* 8005A6FC 0005765C  7F C3 F3 78 */	mr r3, r30
/* 8005A700 00057660  48 02 05 4D */	bl OSRestoreInterrupts
/* 8005A704 00057664  28 1F 00 00 */	cmplwi r31, 0
/* 8005A708 00057668  41 82 00 10 */	beq lbl_8005A718
/* 8005A70C 0005766C  3C 60 80 20 */	lis r3, print_mutex@ha
/* 8005A710 00057670  38 63 6F 08 */	addi r3, r3, print_mutex@l
/* 8005A714 00057674  48 02 1B CD */	bl OSLockMutex
lbl_8005A718:
/* 8005A718 00057678  7F 83 E3 78 */	mr r3, r28
/* 8005A71C 0005767C  7F A4 EB 78 */	mr r4, r29
/* 8005A720 00057680  48 04 2E 7D */	bl vprintf
/* 8005A724 00057684  28 1F 00 00 */	cmplwi r31, 0
/* 8005A728 00057688  41 82 00 10 */	beq lbl_8005A738
/* 8005A72C 0005768C  3C 60 80 20 */	lis r3, print_mutex@ha
/* 8005A730 00057690  38 63 6F 08 */	addi r3, r3, print_mutex@l
/* 8005A734 00057694  48 02 1C 89 */	bl OSUnlockMutex
lbl_8005A738:
/* 8005A738 00057698  39 61 00 20 */	addi r11, r1, 0x20
/* 8005A73C 0005769C  48 04 07 E1 */	bl func_8009AF1C
/* 8005A740 000576A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8005A744 000576A4  7C 08 03 A6 */	mtlr r0
/* 8005A748 000576A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8005A74C 000576AC  4E 80 00 20 */	blr 

.global OSReport
OSReport:
/* 8005A750 000576B0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8005A754 000576B4  7C 08 02 A6 */	mflr r0
/* 8005A758 000576B8  90 01 00 84 */	stw r0, 0x84(r1)
/* 8005A75C 000576BC  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8005A760 000576C0  40 86 00 24 */	bne cr1, lbl_8005A784
/* 8005A764 000576C4  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8005A768 000576C8  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8005A76C 000576CC  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8005A770 000576D0  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8005A774 000576D4  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8005A778 000576D8  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8005A77C 000576DC  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8005A780 000576E0  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_8005A784:
/* 8005A784 000576E4  39 61 00 88 */	addi r11, r1, 0x88
/* 8005A788 000576E8  38 01 00 08 */	addi r0, r1, 8
/* 8005A78C 000576EC  3D 80 01 00 */	lis r12, 0x100
/* 8005A790 000576F0  90 61 00 08 */	stw r3, 8(r1)
/* 8005A794 000576F4  3B E1 00 68 */	addi r31, r1, 0x68
/* 8005A798 000576F8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8005A79C 000576FC  7F E4 FB 78 */	mr r4, r31
/* 8005A7A0 00057700  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8005A7A4 00057704  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8005A7A8 00057708  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8005A7AC 0005770C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8005A7B0 00057710  91 21 00 20 */	stw r9, 0x20(r1)
/* 8005A7B4 00057714  91 41 00 24 */	stw r10, 0x24(r1)
/* 8005A7B8 00057718  91 81 00 68 */	stw r12, 0x68(r1)
/* 8005A7BC 0005771C  91 61 00 6C */	stw r11, 0x6c(r1)
/* 8005A7C0 00057720  90 01 00 70 */	stw r0, 0x70(r1)
/* 8005A7C4 00057724  4B FF FE A9 */	bl OSVReport
/* 8005A7C8 00057728  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8005A7CC 0005772C  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8005A7D0 00057730  7C 08 03 A6 */	mtlr r0
/* 8005A7D4 00057734  38 21 00 80 */	addi r1, r1, 0x80
/* 8005A7D8 00057738  4E 80 00 20 */	blr 

.global OSPanic
OSPanic:
/* 8005A7DC 0005773C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8005A7E0 00057740  7C 08 02 A6 */	mflr r0
/* 8005A7E4 00057744  90 01 00 94 */	stw r0, 0x94(r1)
/* 8005A7E8 00057748  39 61 00 90 */	addi r11, r1, 0x90
/* 8005A7EC 0005774C  48 04 06 E5 */	bl func_8009AED0
/* 8005A7F0 00057750  7C 7C 1B 78 */	mr r28, r3
/* 8005A7F4 00057754  7C 9D 23 78 */	mr r29, r4
/* 8005A7F8 00057758  7C BE 2B 78 */	mr r30, r5
/* 8005A7FC 0005775C  40 86 00 24 */	bne cr1, lbl_8005A820
/* 8005A800 00057760  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8005A804 00057764  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8005A808 00057768  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8005A80C 0005776C  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8005A810 00057770  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8005A814 00057774  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8005A818 00057778  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8005A81C 0005777C  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_8005A820:
/* 8005A820 00057780  90 61 00 08 */	stw r3, 8(r1)
/* 8005A824 00057784  90 81 00 0C */	stw r4, 0xc(r1)
/* 8005A828 00057788  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8005A82C 0005778C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8005A830 00057790  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8005A834 00057794  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8005A838 00057798  91 21 00 20 */	stw r9, 0x20(r1)
/* 8005A83C 0005779C  91 41 00 24 */	stw r10, 0x24(r1)
/* 8005A840 000577A0  48 02 03 E5 */	bl OSDisableInterrupts
/* 8005A844 000577A4  38 A1 00 98 */	addi r5, r1, 0x98
/* 8005A848 000577A8  38 01 00 08 */	addi r0, r1, 8
/* 8005A84C 000577AC  3C C0 03 00 */	lis r6, 0x300
/* 8005A850 000577B0  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 8005A854 000577B4  7C 7F 1B 78 */	mr r31, r3
/* 8005A858 000577B8  38 81 00 68 */	addi r4, r1, 0x68
/* 8005A85C 000577BC  90 C1 00 68 */	stw r6, 0x68(r1)
/* 8005A860 000577C0  7F C3 F3 78 */	mr r3, r30
/* 8005A864 000577C4  90 01 00 70 */	stw r0, 0x70(r1)
/* 8005A868 000577C8  48 04 2D 35 */	bl vprintf
/* 8005A86C 000577CC  3C 60 80 0E */	lis r3, @389@ha
/* 8005A870 000577D0  7F 84 E3 78 */	mr r4, r28
/* 8005A874 000577D4  38 63 C6 F8 */	addi r3, r3, @389@l
/* 8005A878 000577D8  7F A5 EB 78 */	mr r5, r29
/* 8005A87C 000577DC  4C C6 31 82 */	crclr 6
/* 8005A880 000577E0  48 04 2D 99 */	bl printf
/* 8005A884 000577E4  48 02 34 59 */	bl OSGetCurrentThread
/* 8005A888 000577E8  38 80 00 1F */	li r4, 0x1f
/* 8005A88C 000577EC  48 02 45 B9 */	bl OSSetThreadPriority
/* 8005A890 000577F0  7F E3 FB 78 */	mr r3, r31
/* 8005A894 000577F4  48 02 03 B9 */	bl OSRestoreInterrupts
/* 8005A898 000577F8  38 00 00 00 */	li r0, 0
/* 8005A89C 000577FC  39 61 00 90 */	addi r11, r1, 0x90
/* 8005A8A0 00057800  90 00 00 00 */	stw r0, 0(0)
/* 8005A8A4 00057804  48 04 06 79 */	bl func_8009AF1C
/* 8005A8A8 00057808  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8005A8AC 0005780C  7C 08 03 A6 */	mtlr r0
/* 8005A8B0 00057810  38 21 00 90 */	addi r1, r1, 0x90
/* 8005A8B4 00057814  4E 80 00 20 */	blr 

.global OSChangeBootMode
OSChangeBootMode:
/* 8005A8B8 00057818  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005A8BC 0005781C  7C 08 02 A6 */	mflr r0
/* 8005A8C0 00057820  20 63 00 00 */	subfic r3, r3, 0
/* 8005A8C4 00057824  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005A8C8 00057828  38 00 00 80 */	li r0, 0x80
/* 8005A8CC 0005782C  7C 63 19 10 */	subfe r3, r3, r3
/* 8005A8D0 00057830  7C 00 18 38 */	and r0, r0, r3
/* 8005A8D4 00057834  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8005A8D8 00057838  48 02 30 75 */	bl __OSSetBootMode
lbl_8005A8DC:
/* 8005A8DC 0005783C  48 02 2E 29 */	bl __OSSyncSram
/* 8005A8E0 00057840  2C 03 00 00 */	cmpwi r3, 0
/* 8005A8E4 00057844  41 82 FF F8 */	beq lbl_8005A8DC
/* 8005A8E8 00057848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005A8EC 0005784C  7C 08 03 A6 */	mtlr r0
/* 8005A8F0 00057850  38 21 00 10 */	addi r1, r1, 0x10
/* 8005A8F4 00057854  4E 80 00 20 */	blr 

.global OSDVDFatalError
OSDVDFatalError:
/* 8005A8F8 00057858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005A8FC 0005785C  7C 08 02 A6 */	mflr r0
/* 8005A900 00057860  3C 60 80 0E */	lis r3, @407@ha
/* 8005A904 00057864  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005A908 00057868  38 63 C7 10 */	addi r3, r3, @407@l
/* 8005A90C 0005786C  4C C6 31 82 */	crclr 6
/* 8005A910 00057870  4B FF FE 41 */	bl OSReport
/* 8005A914 00057874  38 60 00 00 */	li r3, 0
/* 8005A918 00057878  48 02 3A C5 */	bl OSExitThread
/* 8005A91C 0005787C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005A920 00057880  7C 08 03 A6 */	mtlr r0
/* 8005A924 00057884  38 21 00 10 */	addi r1, r1, 0x10
/* 8005A928 00057888  4E 80 00 20 */	blr 
