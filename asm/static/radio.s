.include "macros.inc"

.section .text

.org 0x800165EC

.global Na_GetRadioCounter
Na_GetRadioCounter:
/* 800165EC 0001354C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800165F0 00013550  7C 08 02 A6 */	mflr r0
/* 800165F4 00013554  90 01 00 24 */	stw r0, 0x24(r1)
/* 800165F8 00013558  39 61 00 20 */	addi r11, r1, 0x20
/* 800165FC 0001355C  48 08 48 D5 */	bl func_8009AED0
/* 80016600 00013560  3B A0 00 00 */	li r29, 0
/* 80016604 00013564  3B C0 00 00 */	li r30, 0
/* 80016608 00013568  3B 80 00 00 */	li r28, 0
/* 8001660C 0001356C  88 0D 80 40 */	lbz r0, lbl_80217BC0-_SDA_BASE_(r13)
/* 80016610 00013570  1C A0 01 60 */	mulli r5, r0, 0x160
/* 80016614 00013574  3C 80 80 21 */	lis r4, AG@ha
/* 80016618 00013578  38 04 E8 08 */	addi r0, r4, AG@l
/* 8001661C 0001357C  7C 80 2A 14 */	add r4, r0, r5
/* 80016620 00013580  88 04 37 88 */	lbz r0, 0x3788(r4)
/* 80016624 00013584  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 80016628 00013588  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8001662C 0001358C  28 00 00 00 */	cmplwi r0, 0
/* 80016630 00013590  41 82 00 40 */	beq lbl_80016670
/* 80016634 00013594  88 0D 80 40 */	lbz r0, lbl_80217BC0-_SDA_BASE_(r13)
/* 80016638 00013598  1C A0 01 60 */	mulli r5, r0, 0x160
/* 8001663C 0001359C  3C 80 80 21 */	lis r4, AG@ha
/* 80016640 000135A0  38 04 E8 08 */	addi r0, r4, AG@l
/* 80016644 000135A4  7C 80 2A 14 */	add r4, r0, r5
/* 80016648 000135A8  88 04 37 8C */	lbz r0, 0x378c(r4)
/* 8001664C 000135AC  28 00 00 DA */	cmplwi r0, 0xda
/* 80016650 000135B0  40 82 00 20 */	bne lbl_80016670
/* 80016654 000135B4  88 0D 80 40 */	lbz r0, lbl_80217BC0-_SDA_BASE_(r13)
/* 80016658 000135B8  1C A0 01 60 */	mulli r5, r0, 0x160
/* 8001665C 000135BC  3C 80 80 21 */	lis r4, AG@ha
/* 80016660 000135C0  38 04 E8 08 */	addi r0, r4, AG@l
/* 80016664 000135C4  7C 80 2A 14 */	add r4, r0, r5
/* 80016668 000135C8  3B C4 37 88 */	addi r30, r4, 0x3788
/* 8001666C 000135CC  48 00 00 0C */	b lbl_80016678
lbl_80016670:
/* 80016670 000135D0  38 60 FF FF */	li r3, -1
/* 80016674 000135D4  48 00 00 E0 */	b lbl_80016754
lbl_80016678:
/* 80016678 000135D8  A3 FE 00 16 */	lhz r31, 0x16(r30)
/* 8001667C 000135DC  2C 1F 02 E8 */	cmpwi r31, 0x2e8
/* 80016680 000135E0  40 80 00 10 */	bge lbl_80016690
/* 80016684 000135E4  38 00 00 00 */	li r0, 0
/* 80016688 000135E8  98 03 00 00 */	stb r0, 0(r3)
/* 8001668C 000135EC  48 00 00 34 */	b lbl_800166C0
lbl_80016690:
/* 80016690 000135F0  3B FF FD 18 */	addi r31, r31, -744
/* 80016694 000135F4  38 00 03 00 */	li r0, 0x300
/* 80016698 000135F8  7C 1F 03 D6 */	divw r0, r31, r0
/* 8001669C 000135FC  7C 00 07 74 */	extsb r0, r0
/* 800166A0 00013600  98 03 00 00 */	stb r0, 0(r3)
/* 800166A4 00013604  88 03 00 00 */	lbz r0, 0(r3)
/* 800166A8 00013608  7C 00 07 74 */	extsb r0, r0
/* 800166AC 0001360C  1C 00 03 00 */	mulli r0, r0, 0x300
/* 800166B0 00013610  7F E0 F8 50 */	subf r31, r0, r31
/* 800166B4 00013614  88 83 00 00 */	lbz r4, 0(r3)
/* 800166B8 00013618  38 04 00 01 */	addi r0, r4, 1
/* 800166BC 0001361C  98 03 00 00 */	stb r0, 0(r3)
lbl_800166C0:
/* 800166C0 00013620  88 03 00 00 */	lbz r0, 0(r3)
/* 800166C4 00013624  7C 00 07 74 */	extsb r0, r0
/* 800166C8 00013628  2C 00 00 09 */	cmpwi r0, 9
/* 800166CC 0001362C  40 82 00 30 */	bne lbl_800166FC
/* 800166D0 00013630  C8 22 81 A0 */	lfd f1, @187-_SDA2_BASE_(r2)
/* 800166D4 00013634  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 800166D8 00013638  90 01 00 0C */	stw r0, 0xc(r1)
/* 800166DC 0001363C  3C 00 43 30 */	lis r0, 0x4330
/* 800166E0 00013640  90 01 00 08 */	stw r0, 8(r1)
/* 800166E4 00013644  C8 01 00 08 */	lfd f0, 8(r1)
/* 800166E8 00013648  EC 20 08 28 */	fsubs f1, f0, f1
/* 800166EC 0001364C  C0 02 81 98 */	lfs f0, @184-_SDA2_BASE_(r2)
/* 800166F0 00013650  EC 01 00 24 */	fdivs f0, f1, f0
/* 800166F4 00013654  D0 03 00 04 */	stfs f0, 4(r3)
/* 800166F8 00013658  48 00 00 2C */	b lbl_80016724
lbl_800166FC:
/* 800166FC 0001365C  C8 22 81 A0 */	lfd f1, @187-_SDA2_BASE_(r2)
/* 80016700 00013660  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80016704 00013664  90 01 00 0C */	stw r0, 0xc(r1)
/* 80016708 00013668  3C 00 43 30 */	lis r0, 0x4330
/* 8001670C 0001366C  90 01 00 08 */	stw r0, 8(r1)
/* 80016710 00013670  C8 01 00 08 */	lfd f0, 8(r1)
/* 80016714 00013674  EC 20 08 28 */	fsubs f1, f0, f1
/* 80016718 00013678  C0 02 81 9C */	lfs f0, @185-_SDA2_BASE_(r2)
/* 8001671C 0001367C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80016720 00013680  D0 03 00 04 */	stfs f0, 4(r3)
lbl_80016724:
/* 80016724 00013684  88 0D 80 40 */	lbz r0, lbl_80217BC0-_SDA_BASE_(r13)
/* 80016728 00013688  1C A0 01 60 */	mulli r5, r0, 0x160
/* 8001672C 0001368C  3C 80 80 21 */	lis r4, AG@ha
/* 80016730 00013690  38 04 E8 08 */	addi r0, r4, AG@l
/* 80016734 00013694  7C 80 2A 14 */	add r4, r0, r5
/* 80016738 00013698  A0 84 37 90 */	lhz r4, 0x3790(r4)
/* 8001673C 0001369C  38 00 00 30 */	li r0, 0x30
/* 80016740 000136A0  7C 04 03 D6 */	divw r0, r4, r0
/* 80016744 000136A4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80016748 000136A8  B0 03 00 08 */	sth r0, 8(r3)
/* 8001674C 000136AC  A3 A3 00 08 */	lhz r29, 8(r3)
/* 80016750 000136B0  38 60 00 00 */	li r3, 0
lbl_80016754:
/* 80016754 000136B4  39 61 00 20 */	addi r11, r1, 0x20
/* 80016758 000136B8  48 08 47 C5 */	bl func_8009AF1C
/* 8001675C 000136BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80016760 000136C0  7C 08 03 A6 */	mtlr r0
/* 80016764 000136C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80016768 000136C8  4E 80 00 20 */	blr 
