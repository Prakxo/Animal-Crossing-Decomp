.include "macros.inc"

.section .text

.org 0x80018640

.global Jac_imixcopy__FPsPsPsl
Jac_imixcopy__FPsPsPsl:
/* 80018640 000155A0  7C C9 03 A6 */	mtctr r6
/* 80018644 000155A4  2C 06 00 00 */	cmpwi r6, 0
/* 80018648 000155A8  4C 81 00 20 */	blelr 
lbl_8001864C:
/* 8001864C 000155AC  A8 03 00 00 */	lha r0, 0(r3)
/* 80018650 000155B0  38 63 00 02 */	addi r3, r3, 2
/* 80018654 000155B4  B0 05 00 00 */	sth r0, 0(r5)
/* 80018658 000155B8  A8 04 00 00 */	lha r0, 0(r4)
/* 8001865C 000155BC  38 84 00 02 */	addi r4, r4, 2
/* 80018660 000155C0  B0 05 00 02 */	sth r0, 2(r5)
/* 80018664 000155C4  38 A5 00 04 */	addi r5, r5, 4
/* 80018668 000155C8  42 00 FF E4 */	bdnz lbl_8001864C
/* 8001866C 000155CC  4E 80 00 20 */	blr 
/* 80018670 000155D0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018674 000155D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018678 000155D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8001867C 000155DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_bcopyfast__FPUlPUlUl
Jac_bcopyfast__FPUlPUlUl:
/* 80018680 000155E0  54 A0 E1 3F */	rlwinm. r0, r5, 0x1c, 4, 0x1f
/* 80018684 000155E4  7C 09 03 A6 */	mtctr r0
/* 80018688 000155E8  4D 82 00 20 */	beqlr 
lbl_8001868C:
/* 8001868C 000155EC  80 03 00 00 */	lwz r0, 0(r3)
/* 80018690 000155F0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80018694 000155F4  80 C3 00 08 */	lwz r6, 8(r3)
/* 80018698 000155F8  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 8001869C 000155FC  38 63 00 10 */	addi r3, r3, 0x10
/* 800186A0 00015600  90 04 00 00 */	stw r0, 0(r4)
/* 800186A4 00015604  90 A4 00 04 */	stw r5, 4(r4)
/* 800186A8 00015608  90 C4 00 08 */	stw r6, 8(r4)
/* 800186AC 0001560C  90 E4 00 0C */	stw r7, 0xc(r4)
/* 800186B0 00015610  38 84 00 10 */	addi r4, r4, 0x10
/* 800186B4 00015614  42 00 FF D8 */	bdnz lbl_8001868C
/* 800186B8 00015618  4E 80 00 20 */	blr 
/* 800186BC 0001561C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_bcopy__FPvPvl
Jac_bcopy__FPvPvl:
/* 800186C0 00015620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800186C4 00015624  7C 08 02 A6 */	mflr r0
/* 800186C8 00015628  54 67 07 BE */	clrlwi r7, r3, 0x1e
/* 800186CC 0001562C  54 86 07 BE */	clrlwi r6, r4, 0x1e
/* 800186D0 00015630  7C 07 30 40 */	cmplw r7, r6
/* 800186D4 00015634  90 01 00 14 */	stw r0, 0x14(r1)
/* 800186D8 00015638  7C 68 1B 78 */	mr r8, r3
/* 800186DC 0001563C  7C 89 23 78 */	mr r9, r4
/* 800186E0 00015640  40 82 00 14 */	bne lbl_800186F4
/* 800186E4 00015644  54 A0 07 3F */	clrlwi. r0, r5, 0x1c
/* 800186E8 00015648  40 82 00 0C */	bne lbl_800186F4
/* 800186EC 0001564C  4B FF FF 95 */	bl Jac_bcopyfast__FPUlPUlUl
/* 800186F0 00015650  48 00 00 C4 */	b lbl_800187B4
lbl_800186F4:
/* 800186F4 00015654  7C 07 30 40 */	cmplw r7, r6
/* 800186F8 00015658  40 82 00 98 */	bne lbl_80018790
/* 800186FC 0001565C  2C 05 00 10 */	cmpwi r5, 0x10
/* 80018700 00015660  41 80 00 90 */	blt lbl_80018790
/* 80018704 00015664  28 07 00 00 */	cmplwi r7, 0
/* 80018708 00015668  41 82 00 30 */	beq lbl_80018738
/* 8001870C 0001566C  20 07 00 04 */	subfic r0, r7, 4
/* 80018710 00015670  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80018714 00015674  48 00 00 1C */	b lbl_80018730
lbl_80018718:
/* 80018718 00015678  88 08 00 00 */	lbz r0, 0(r8)
/* 8001871C 0001567C  38 A5 FF FF */	addi r5, r5, -1
/* 80018720 00015680  38 63 FF FF */	addi r3, r3, -1
/* 80018724 00015684  39 08 00 01 */	addi r8, r8, 1
/* 80018728 00015688  98 09 00 00 */	stb r0, 0(r9)
/* 8001872C 0001568C  39 29 00 01 */	addi r9, r9, 1
lbl_80018730:
/* 80018730 00015690  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80018734 00015694  40 82 FF E4 */	bne lbl_80018718
lbl_80018738:
/* 80018738 00015698  54 A0 F0 BE */	srwi r0, r5, 2
/* 8001873C 0001569C  7D 24 4B 78 */	mr r4, r9
/* 80018740 000156A0  7D 03 43 78 */	mr r3, r8
/* 80018744 000156A4  7C 09 03 A6 */	mtctr r0
/* 80018748 000156A8  2C 05 00 04 */	cmpwi r5, 4
/* 8001874C 000156AC  41 80 00 1C */	blt lbl_80018768
lbl_80018750:
/* 80018750 000156B0  80 03 00 00 */	lwz r0, 0(r3)
/* 80018754 000156B4  38 A5 FF FC */	addi r5, r5, -4
/* 80018758 000156B8  38 63 00 04 */	addi r3, r3, 4
/* 8001875C 000156BC  90 04 00 00 */	stw r0, 0(r4)
/* 80018760 000156C0  38 84 00 04 */	addi r4, r4, 4
/* 80018764 000156C4  42 00 FF EC */	bdnz lbl_80018750
lbl_80018768:
/* 80018768 000156C8  2C 05 00 00 */	cmpwi r5, 0
/* 8001876C 000156CC  41 82 00 48 */	beq lbl_800187B4
/* 80018770 000156D0  7C A9 03 A6 */	mtctr r5
/* 80018774 000156D4  40 81 00 40 */	ble lbl_800187B4
lbl_80018778:
/* 80018778 000156D8  88 03 00 00 */	lbz r0, 0(r3)
/* 8001877C 000156DC  38 63 00 01 */	addi r3, r3, 1
/* 80018780 000156E0  98 04 00 00 */	stb r0, 0(r4)
/* 80018784 000156E4  38 84 00 01 */	addi r4, r4, 1
/* 80018788 000156E8  42 00 FF F0 */	bdnz lbl_80018778
/* 8001878C 000156EC  48 00 00 28 */	b lbl_800187B4
lbl_80018790:
/* 80018790 000156F0  7C A9 03 A6 */	mtctr r5
/* 80018794 000156F4  2C 05 00 00 */	cmpwi r5, 0
/* 80018798 000156F8  40 81 00 1C */	ble lbl_800187B4
/* 8001879C 000156FC  60 00 00 00 */	nop 
lbl_800187A0:
/* 800187A0 00015700  88 08 00 00 */	lbz r0, 0(r8)
/* 800187A4 00015704  39 08 00 01 */	addi r8, r8, 1
/* 800187A8 00015708  98 09 00 00 */	stb r0, 0(r9)
/* 800187AC 0001570C  39 29 00 01 */	addi r9, r9, 1
/* 800187B0 00015710  42 00 FF F0 */	bdnz lbl_800187A0
lbl_800187B4:
/* 800187B4 00015714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800187B8 00015718  7C 08 03 A6 */	mtlr r0
/* 800187BC 0001571C  38 21 00 10 */	addi r1, r1, 0x10
/* 800187C0 00015720  4E 80 00 20 */	blr 
/* 800187C4 00015724  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800187C8 00015728  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800187CC 0001572C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800187D0 00015730  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800187D4 00015734  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800187D8 00015738  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800187DC 0001573C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_bzerofast__FPUlUl
Jac_bzerofast__FPUlUl:
/* 800187E0 00015740  54 84 E1 3F */	rlwinm. r4, r4, 0x1c, 4, 0x1f
/* 800187E4 00015744  38 00 00 00 */	li r0, 0
/* 800187E8 00015748  7C 89 03 A6 */	mtctr r4
/* 800187EC 0001574C  4D 82 00 20 */	beqlr 
lbl_800187F0:
/* 800187F0 00015750  90 03 00 00 */	stw r0, 0(r3)
/* 800187F4 00015754  90 03 00 04 */	stw r0, 4(r3)
/* 800187F8 00015758  90 03 00 08 */	stw r0, 8(r3)
/* 800187FC 0001575C  90 03 00 0C */	stw r0, 0xc(r3)
/* 80018800 00015760  38 63 00 10 */	addi r3, r3, 0x10
/* 80018804 00015764  42 00 FF EC */	bdnz lbl_800187F0
/* 80018808 00015768  4E 80 00 20 */	blr 
/* 8001880C 0001576C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018810 00015770  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018814 00015774  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018818 00015778  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8001881C 0001577C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_bzero__FPvl
Jac_bzero__FPvl:
/* 80018820 00015780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018824 00015784  7C 08 02 A6 */	mflr r0
/* 80018828 00015788  54 65 07 BF */	clrlwi. r5, r3, 0x1e
/* 8001882C 0001578C  7C 66 1B 78 */	mr r6, r3
/* 80018830 00015790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018834 00015794  40 82 00 24 */	bne lbl_80018858
/* 80018838 00015798  54 80 06 FF */	clrlwi. r0, r4, 0x1b
/* 8001883C 0001579C  40 82 00 0C */	bne lbl_80018848
/* 80018840 000157A0  48 06 14 0D */	bl DCZeroRange
/* 80018844 000157A4  48 00 00 B8 */	b lbl_800188FC
lbl_80018848:
/* 80018848 000157A8  54 80 07 3F */	clrlwi. r0, r4, 0x1c
/* 8001884C 000157AC  40 82 00 0C */	bne lbl_80018858
/* 80018850 000157B0  4B FF FF 91 */	bl Jac_bzerofast__FPUlUl
/* 80018854 000157B4  48 00 00 A8 */	b lbl_800188FC
lbl_80018858:
/* 80018858 000157B8  2C 04 00 10 */	cmpwi r4, 0x10
/* 8001885C 000157BC  41 80 00 84 */	blt lbl_800188E0
/* 80018860 000157C0  28 05 00 00 */	cmplwi r5, 0
/* 80018864 000157C4  41 82 00 2C */	beq lbl_80018890
/* 80018868 000157C8  20 05 00 04 */	subfic r0, r5, 4
/* 8001886C 000157CC  38 60 00 00 */	li r3, 0
/* 80018870 000157D0  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80018874 000157D4  48 00 00 14 */	b lbl_80018888
lbl_80018878:
/* 80018878 000157D8  98 66 00 00 */	stb r3, 0(r6)
/* 8001887C 000157DC  38 C6 00 01 */	addi r6, r6, 1
/* 80018880 000157E0  38 84 FF FF */	addi r4, r4, -1
/* 80018884 000157E4  38 A5 FF FF */	addi r5, r5, -1
lbl_80018888:
/* 80018888 000157E8  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8001888C 000157EC  40 82 FF EC */	bne lbl_80018878
lbl_80018890:
/* 80018890 000157F0  54 80 F0 BE */	srwi r0, r4, 2
/* 80018894 000157F4  7C C5 33 78 */	mr r5, r6
/* 80018898 000157F8  38 60 00 00 */	li r3, 0
/* 8001889C 000157FC  7C 09 03 A6 */	mtctr r0
/* 800188A0 00015800  2C 04 00 04 */	cmpwi r4, 4
/* 800188A4 00015804  41 80 00 14 */	blt lbl_800188B8
lbl_800188A8:
/* 800188A8 00015808  90 65 00 00 */	stw r3, 0(r5)
/* 800188AC 0001580C  38 A5 00 04 */	addi r5, r5, 4
/* 800188B0 00015810  38 84 FF FC */	addi r4, r4, -4
/* 800188B4 00015814  42 00 FF F4 */	bdnz lbl_800188A8
lbl_800188B8:
/* 800188B8 00015818  2C 04 00 00 */	cmpwi r4, 0
/* 800188BC 0001581C  41 82 00 40 */	beq lbl_800188FC
/* 800188C0 00015820  7C A3 2B 78 */	mr r3, r5
/* 800188C4 00015824  38 00 00 00 */	li r0, 0
/* 800188C8 00015828  7C 89 03 A6 */	mtctr r4
/* 800188CC 0001582C  40 81 00 30 */	ble lbl_800188FC
lbl_800188D0:
/* 800188D0 00015830  98 03 00 00 */	stb r0, 0(r3)
/* 800188D4 00015834  38 63 00 01 */	addi r3, r3, 1
/* 800188D8 00015838  42 00 FF F8 */	bdnz lbl_800188D0
/* 800188DC 0001583C  48 00 00 20 */	b lbl_800188FC
lbl_800188E0:
/* 800188E0 00015840  38 00 00 00 */	li r0, 0
/* 800188E4 00015844  7C 89 03 A6 */	mtctr r4
/* 800188E8 00015848  2C 04 00 00 */	cmpwi r4, 0
/* 800188EC 0001584C  40 81 00 10 */	ble lbl_800188FC
lbl_800188F0:
/* 800188F0 00015850  98 06 00 00 */	stb r0, 0(r6)
/* 800188F4 00015854  38 C6 00 01 */	addi r6, r6, 1
/* 800188F8 00015858  42 00 FF F8 */	bdnz lbl_800188F0
lbl_800188FC:
/* 800188FC 0001585C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018900 00015860  7C 08 03 A6 */	mtlr r0
/* 80018904 00015864  38 21 00 10 */	addi r1, r1, 0x10
/* 80018908 00015868  4E 80 00 20 */	blr 
/* 8001890C 0001586C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018910 00015870  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018914 00015874  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80018918 00015878  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8001891C 0001587C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
