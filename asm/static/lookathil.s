.include "macros.inc"

.section .text

.org 0x8005D52C

.global guLookAtHiliteF
guLookAtHiliteF:
/* 8005D52C 0005A48C  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 8005D530 0005A490  7C 08 02 A6 */	mflr r0
/* 8005D534 0005A494  90 01 01 64 */	stw r0, 0x164(r1)
/* 8005D538 0005A498  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 8005D53C 0005A49C  F3 E1 01 58 */	psq_st f31, 344(r1), 0, qr0
/* 8005D540 0005A4A0  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 8005D544 0005A4A4  F3 C1 01 48 */	xsmaddmdp f30, f1, f0
/* 8005D548 0005A4A8  DB A1 01 30 */	stfd f29, 0x130(r1)
/* 8005D54C 0005A4AC  F3 A1 01 38 */	psq_st f29, 312(r1), 0, qr0
/* 8005D550 0005A4B0  DB 81 01 20 */	stfd f28, 0x120(r1)
/* 8005D554 0005A4B4  F3 81 01 28 */	psq_st f28, 296(r1), 0, qr0
/* 8005D558 0005A4B8  DB 61 01 10 */	stfd f27, 0x110(r1)
/* 8005D55C 0005A4BC  F3 61 01 18 */	psq_st f27, 280(r1), 0, qr0
/* 8005D560 0005A4C0  DB 41 01 00 */	stfd f26, 0x100(r1)
/* 8005D564 0005A4C4  F3 41 01 08 */	xsmaddadp f26, f1, f0
/* 8005D568 0005A4C8  DB 21 00 F0 */	stfd f25, 0xf0(r1)
/* 8005D56C 0005A4CC  F3 21 00 F8 */	psq_st f25, 248(r1), 0, qr0
/* 8005D570 0005A4D0  DB 01 00 E0 */	stfd f24, 0xe0(r1)
/* 8005D574 0005A4D4  F3 01 00 E8 */	psq_st f24, 232(r1), 0, qr0
/* 8005D578 0005A4D8  DA E1 00 D0 */	stfd f23, 0xd0(r1)
/* 8005D57C 0005A4DC  F2 E1 00 D8 */	psq_st f23, 216(r1), 0, qr0
/* 8005D580 0005A4E0  DA C1 00 C0 */	stfd f22, 0xc0(r1)
/* 8005D584 0005A4E4  F2 C1 00 C8 */	psq_st f22, 200(r1), 0, qr0
/* 8005D588 0005A4E8  DA A1 00 B0 */	stfd f21, 0xb0(r1)
/* 8005D58C 0005A4EC  F2 A1 00 B8 */	psq_st f21, 184(r1), 0, qr0
/* 8005D590 0005A4F0  DA 81 00 A0 */	stfd f20, 0xa0(r1)
/* 8005D594 0005A4F4  F2 81 00 A8 */	psq_st f20, 168(r1), 0, qr0
/* 8005D598 0005A4F8  DA 61 00 90 */	stfd f19, 0x90(r1)
/* 8005D59C 0005A4FC  F2 61 00 98 */	psq_st f19, 152(r1), 0, qr0
/* 8005D5A0 0005A500  DA 41 00 80 */	stfd f18, 0x80(r1)
/* 8005D5A4 0005A504  F2 41 00 88 */	psq_st f18, 136(r1), 0, qr0
/* 8005D5A8 0005A508  DA 21 00 70 */	stfd f17, 0x70(r1)
/* 8005D5AC 0005A50C  F2 21 00 78 */	psq_st f17, 120(r1), 0, qr0
/* 8005D5B0 0005A510  39 61 00 70 */	addi r11, r1, 0x70
/* 8005D5B4 0005A514  48 03 D9 19 */	bl func_8009AECC
/* 8005D5B8 0005A518  FF A0 08 90 */	fmr f29, f1
/* 8005D5BC 0005A51C  C3 81 01 68 */	lfs f28, 0x168(r1)
/* 8005D5C0 0005A520  FF C0 10 90 */	fmr f30, f2
/* 8005D5C4 0005A524  C2 81 01 6C */	lfs f20, 0x16c(r1)
/* 8005D5C8 0005A528  FF E0 18 90 */	fmr f31, f3
/* 8005D5CC 0005A52C  C2 A1 01 70 */	lfs f21, 0x170(r1)
/* 8005D5D0 0005A530  FE 20 20 90 */	fmr f17, f4
/* 8005D5D4 0005A534  C2 C1 01 74 */	lfs f22, 0x174(r1)
/* 8005D5D8 0005A538  FE 40 28 90 */	fmr f18, f5
/* 8005D5DC 0005A53C  C2 E1 01 78 */	lfs f23, 0x178(r1)
/* 8005D5E0 0005A540  FE 60 30 90 */	fmr f19, f6
/* 8005D5E4 0005A544  C3 01 01 7C */	lfs f24, 0x17c(r1)
/* 8005D5E8 0005A548  FF 40 38 90 */	fmr f26, f7
/* 8005D5EC 0005A54C  C3 21 01 80 */	lfs f25, 0x180(r1)
/* 8005D5F0 0005A550  FF 60 40 90 */	fmr f27, f8
/* 8005D5F4 0005A554  7C 7B 1B 78 */	mr r27, r3
/* 8005D5F8 0005A558  7C 9C 23 78 */	mr r28, r4
/* 8005D5FC 0005A55C  7C BD 2B 78 */	mr r29, r5
/* 8005D600 0005A560  7C DE 33 78 */	mr r30, r6
/* 8005D604 0005A564  7C FF 3B 78 */	mr r31, r7
/* 8005D608 0005A568  48 00 09 9D */	bl guMtxIdentF
/* 8005D60C 0005A56C  EC 11 E8 28 */	fsubs f0, f17, f29
/* 8005D610 0005A570  C0 82 85 78 */	lfs f4, @361-_SDA2_BASE_(r2)
/* 8005D614 0005A574  EC 32 F0 28 */	fsubs f1, f18, f30
/* 8005D618 0005A578  EC 53 F8 28 */	fsubs f2, f19, f31
/* 8005D61C 0005A57C  EC A0 00 32 */	fmuls f5, f0, f0
/* 8005D620 0005A580  EC 61 00 72 */	fmuls f3, f1, f1
/* 8005D624 0005A584  EC C2 00 B2 */	fmuls f6, f2, f2
/* 8005D628 0005A588  EC 65 18 2A */	fadds f3, f5, f3
/* 8005D62C 0005A58C  EC 66 18 2A */	fadds f3, f6, f3
/* 8005D630 0005A590  FC 03 20 40 */	fcmpo cr0, f3, f4
/* 8005D634 0005A594  40 81 00 5C */	ble lbl_8005D690
/* 8005D638 0005A598  FC A0 18 34 */	frsqrte f5, f3
/* 8005D63C 0005A59C  C8 E2 85 80 */	lfd f7, @362-_SDA2_BASE_(r2)
/* 8005D640 0005A5A0  C8 C2 85 88 */	lfd f6, @363-_SDA2_BASE_(r2)
/* 8005D644 0005A5A4  FC 85 01 72 */	fmul f4, f5, f5
/* 8005D648 0005A5A8  FC A7 01 72 */	fmul f5, f7, f5
/* 8005D64C 0005A5AC  FC 83 01 32 */	fmul f4, f3, f4
/* 8005D650 0005A5B0  FC 86 20 28 */	fsub f4, f6, f4
/* 8005D654 0005A5B4  FC A5 01 32 */	fmul f5, f5, f4
/* 8005D658 0005A5B8  FC 85 01 72 */	fmul f4, f5, f5
/* 8005D65C 0005A5BC  FC A7 01 72 */	fmul f5, f7, f5
/* 8005D660 0005A5C0  FC 83 01 32 */	fmul f4, f3, f4
/* 8005D664 0005A5C4  FC 86 20 28 */	fsub f4, f6, f4
/* 8005D668 0005A5C8  FC A5 01 32 */	fmul f5, f5, f4
/* 8005D66C 0005A5CC  FC 85 01 72 */	fmul f4, f5, f5
/* 8005D670 0005A5D0  FC A7 01 72 */	fmul f5, f7, f5
/* 8005D674 0005A5D4  FC 83 01 32 */	fmul f4, f3, f4
/* 8005D678 0005A5D8  FC 86 20 28 */	fsub f4, f6, f4
/* 8005D67C 0005A5DC  FC 85 01 32 */	fmul f4, f5, f4
/* 8005D680 0005A5E0  FC 63 01 32 */	fmul f3, f3, f4
/* 8005D684 0005A5E4  FC 60 18 18 */	frsp f3, f3
/* 8005D688 0005A5E8  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8005D68C 0005A5EC  C0 61 00 20 */	lfs f3, 0x20(r1)
lbl_8005D690:
/* 8005D690 0005A5F0  C0 82 85 90 */	lfs f4, @364-_SDA2_BASE_(r2)
/* 8005D694 0005A5F4  C0 E2 85 78 */	lfs f7, @361-_SDA2_BASE_(r2)
/* 8005D698 0005A5F8  EC 64 18 24 */	fdivs f3, f4, f3
/* 8005D69C 0005A5FC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8005D6A0 0005A600  EC 21 00 F2 */	fmuls f1, f1, f3
/* 8005D6A4 0005A604  EC 42 00 F2 */	fmuls f2, f2, f3
/* 8005D6A8 0005A608  EC BC 00 32 */	fmuls f5, f28, f0
/* 8005D6AC 0005A60C  EC 7C 00 72 */	fmuls f3, f28, f1
/* 8005D6B0 0005A610  EC DB 00 B2 */	fmuls f6, f27, f2
/* 8005D6B4 0005A614  EC 9A 00 B2 */	fmuls f4, f26, f2
/* 8005D6B8 0005A618  ED 3A 00 72 */	fmuls f9, f26, f1
/* 8005D6BC 0005A61C  EC 66 18 28 */	fsubs f3, f6, f3
/* 8005D6C0 0005A620  EC 85 20 28 */	fsubs f4, f5, f4
/* 8005D6C4 0005A624  EC BB 00 32 */	fmuls f5, f27, f0
/* 8005D6C8 0005A628  ED 03 00 F2 */	fmuls f8, f3, f3
/* 8005D6CC 0005A62C  EC C4 01 32 */	fmuls f6, f4, f4
/* 8005D6D0 0005A630  EC A9 28 28 */	fsubs f5, f9, f5
/* 8005D6D4 0005A634  EC C8 30 2A */	fadds f6, f8, f6
/* 8005D6D8 0005A638  ED 05 01 72 */	fmuls f8, f5, f5
/* 8005D6DC 0005A63C  EC C8 30 2A */	fadds f6, f8, f6
/* 8005D6E0 0005A640  FC 06 38 40 */	fcmpo cr0, f6, f7
/* 8005D6E4 0005A644  40 81 00 5C */	ble lbl_8005D740
/* 8005D6E8 0005A648  FD 00 30 34 */	frsqrte f8, f6
/* 8005D6EC 0005A64C  C9 42 85 80 */	lfd f10, @362-_SDA2_BASE_(r2)
/* 8005D6F0 0005A650  C9 22 85 88 */	lfd f9, @363-_SDA2_BASE_(r2)
/* 8005D6F4 0005A654  FC E8 02 32 */	fmul f7, f8, f8
/* 8005D6F8 0005A658  FD 0A 02 32 */	fmul f8, f10, f8
/* 8005D6FC 0005A65C  FC E6 01 F2 */	fmul f7, f6, f7
/* 8005D700 0005A660  FC E9 38 28 */	fsub f7, f9, f7
/* 8005D704 0005A664  FD 08 01 F2 */	fmul f8, f8, f7
/* 8005D708 0005A668  FC E8 02 32 */	fmul f7, f8, f8
/* 8005D70C 0005A66C  FD 0A 02 32 */	fmul f8, f10, f8
/* 8005D710 0005A670  FC E6 01 F2 */	fmul f7, f6, f7
/* 8005D714 0005A674  FC E9 38 28 */	fsub f7, f9, f7
/* 8005D718 0005A678  FD 08 01 F2 */	fmul f8, f8, f7
/* 8005D71C 0005A67C  FC E8 02 32 */	fmul f7, f8, f8
/* 8005D720 0005A680  FD 0A 02 32 */	fmul f8, f10, f8
/* 8005D724 0005A684  FC E6 01 F2 */	fmul f7, f6, f7
/* 8005D728 0005A688  FC E9 38 28 */	fsub f7, f9, f7
/* 8005D72C 0005A68C  FC E8 01 F2 */	fmul f7, f8, f7
/* 8005D730 0005A690  FC C6 01 F2 */	fmul f6, f6, f7
/* 8005D734 0005A694  FC C0 30 18 */	frsp f6, f6
/* 8005D738 0005A698  D0 C1 00 1C */	stfs f6, 0x1c(r1)
/* 8005D73C 0005A69C  C0 C1 00 1C */	lfs f6, 0x1c(r1)
lbl_8005D740:
/* 8005D740 0005A6A0  C1 02 85 94 */	lfs f8, @365-_SDA2_BASE_(r2)
/* 8005D744 0005A6A4  C0 E2 85 78 */	lfs f7, @361-_SDA2_BASE_(r2)
/* 8005D748 0005A6A8  EC C8 30 24 */	fdivs f6, f8, f6
/* 8005D74C 0005A6AC  EC 63 01 B2 */	fmuls f3, f3, f6
/* 8005D750 0005A6B0  EC 84 01 B2 */	fmuls f4, f4, f6
/* 8005D754 0005A6B4  EC A5 01 B2 */	fmuls f5, f5, f6
/* 8005D758 0005A6B8  ED 02 00 F2 */	fmuls f8, f2, f3
/* 8005D75C 0005A6BC  ED 22 01 32 */	fmuls f9, f2, f4
/* 8005D760 0005A6C0  ED 61 01 72 */	fmuls f11, f1, f5
/* 8005D764 0005A6C4  EC C0 01 72 */	fmuls f6, f0, f5
/* 8005D768 0005A6C8  ED 40 01 32 */	fmuls f10, f0, f4
/* 8005D76C 0005A6CC  EF 4B 48 28 */	fsubs f26, f11, f9
/* 8005D770 0005A6D0  EF 68 30 28 */	fsubs f27, f8, f6
/* 8005D774 0005A6D4  ED 21 00 F2 */	fmuls f9, f1, f3
/* 8005D778 0005A6D8  ED 1A 06 B2 */	fmuls f8, f26, f26
/* 8005D77C 0005A6DC  EC DB 06 F2 */	fmuls f6, f27, f27
/* 8005D780 0005A6E0  EF 8A 48 28 */	fsubs f28, f10, f9
/* 8005D784 0005A6E4  EC C8 30 2A */	fadds f6, f8, f6
/* 8005D788 0005A6E8  ED 1C 07 32 */	fmuls f8, f28, f28
/* 8005D78C 0005A6EC  EC C8 30 2A */	fadds f6, f8, f6
/* 8005D790 0005A6F0  FC 06 38 40 */	fcmpo cr0, f6, f7
/* 8005D794 0005A6F4  40 81 00 5C */	ble lbl_8005D7F0
/* 8005D798 0005A6F8  FD 00 30 34 */	frsqrte f8, f6
/* 8005D79C 0005A6FC  C9 42 85 80 */	lfd f10, @362-_SDA2_BASE_(r2)
/* 8005D7A0 0005A700  C9 22 85 88 */	lfd f9, @363-_SDA2_BASE_(r2)
/* 8005D7A4 0005A704  FC E8 02 32 */	fmul f7, f8, f8
/* 8005D7A8 0005A708  FD 0A 02 32 */	fmul f8, f10, f8
/* 8005D7AC 0005A70C  FC E6 01 F2 */	fmul f7, f6, f7
/* 8005D7B0 0005A710  FC E9 38 28 */	fsub f7, f9, f7
/* 8005D7B4 0005A714  FD 08 01 F2 */	fmul f8, f8, f7
/* 8005D7B8 0005A718  FC E8 02 32 */	fmul f7, f8, f8
/* 8005D7BC 0005A71C  FD 0A 02 32 */	fmul f8, f10, f8
/* 8005D7C0 0005A720  FC E6 01 F2 */	fmul f7, f6, f7
/* 8005D7C4 0005A724  FC E9 38 28 */	fsub f7, f9, f7
/* 8005D7C8 0005A728  FD 08 01 F2 */	fmul f8, f8, f7
/* 8005D7CC 0005A72C  FC E8 02 32 */	fmul f7, f8, f8
/* 8005D7D0 0005A730  FD 0A 02 32 */	fmul f8, f10, f8
/* 8005D7D4 0005A734  FC E6 01 F2 */	fmul f7, f6, f7
/* 8005D7D8 0005A738  FC E9 38 28 */	fsub f7, f9, f7
/* 8005D7DC 0005A73C  FC E8 01 F2 */	fmul f7, f8, f7
/* 8005D7E0 0005A740  FC C6 01 F2 */	fmul f6, f6, f7
/* 8005D7E4 0005A744  FC C0 30 18 */	frsp f6, f6
/* 8005D7E8 0005A748  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 8005D7EC 0005A74C  C0 C1 00 18 */	lfs f6, 0x18(r1)
lbl_8005D7F0:
/* 8005D7F0 0005A750  C1 42 85 94 */	lfs f10, @365-_SDA2_BASE_(r2)
/* 8005D7F4 0005A754  ED 34 05 32 */	fmuls f9, f20, f20
/* 8005D7F8 0005A758  ED 15 05 72 */	fmuls f8, f21, f21
/* 8005D7FC 0005A75C  C0 E2 85 78 */	lfs f7, @361-_SDA2_BASE_(r2)
/* 8005D800 0005A760  ED 6A 30 24 */	fdivs f11, f10, f6
/* 8005D804 0005A764  ED 56 05 B2 */	fmuls f10, f22, f22
/* 8005D808 0005A768  EC C9 40 2A */	fadds f6, f9, f8
/* 8005D80C 0005A76C  EF 5A 02 F2 */	fmuls f26, f26, f11
/* 8005D810 0005A770  EF 7B 02 F2 */	fmuls f27, f27, f11
/* 8005D814 0005A774  EC CA 30 2A */	fadds f6, f10, f6
/* 8005D818 0005A778  EF 9C 02 F2 */	fmuls f28, f28, f11
/* 8005D81C 0005A77C  FC 06 38 40 */	fcmpo cr0, f6, f7
/* 8005D820 0005A780  40 81 00 5C */	ble lbl_8005D87C
/* 8005D824 0005A784  FD 00 30 34 */	frsqrte f8, f6
/* 8005D828 0005A788  C9 42 85 80 */	lfd f10, @362-_SDA2_BASE_(r2)
/* 8005D82C 0005A78C  C9 22 85 88 */	lfd f9, @363-_SDA2_BASE_(r2)
/* 8005D830 0005A790  FC E8 02 32 */	fmul f7, f8, f8
/* 8005D834 0005A794  FD 0A 02 32 */	fmul f8, f10, f8
/* 8005D838 0005A798  FC E6 01 F2 */	fmul f7, f6, f7
/* 8005D83C 0005A79C  FC E9 38 28 */	fsub f7, f9, f7
/* 8005D840 0005A7A0  FD 08 01 F2 */	fmul f8, f8, f7
/* 8005D844 0005A7A4  FC E8 02 32 */	fmul f7, f8, f8
/* 8005D848 0005A7A8  FD 0A 02 32 */	fmul f8, f10, f8
/* 8005D84C 0005A7AC  FC E6 01 F2 */	fmul f7, f6, f7
/* 8005D850 0005A7B0  FC E9 38 28 */	fsub f7, f9, f7
/* 8005D854 0005A7B4  FD 08 01 F2 */	fmul f8, f8, f7
/* 8005D858 0005A7B8  FC E8 02 32 */	fmul f7, f8, f8
/* 8005D85C 0005A7BC  FD 0A 02 32 */	fmul f8, f10, f8
/* 8005D860 0005A7C0  FC E6 01 F2 */	fmul f7, f6, f7
/* 8005D864 0005A7C4  FC E9 38 28 */	fsub f7, f9, f7
/* 8005D868 0005A7C8  FC E8 01 F2 */	fmul f7, f8, f7
/* 8005D86C 0005A7CC  FC C6 01 F2 */	fmul f6, f6, f7
/* 8005D870 0005A7D0  FC C0 30 18 */	frsp f6, f6
/* 8005D874 0005A7D4  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 8005D878 0005A7D8  C0 C1 00 14 */	lfs f6, 0x14(r1)
lbl_8005D87C:
/* 8005D87C 0005A7DC  C1 02 85 94 */	lfs f8, @365-_SDA2_BASE_(r2)
/* 8005D880 0005A7E0  C0 E2 85 78 */	lfs f7, @361-_SDA2_BASE_(r2)
/* 8005D884 0005A7E4  EC C8 30 24 */	fdivs f6, f8, f6
/* 8005D888 0005A7E8  EE 94 01 B2 */	fmuls f20, f20, f6
/* 8005D88C 0005A7EC  EE B5 01 B2 */	fmuls f21, f21, f6
/* 8005D890 0005A7F0  EE D6 01 B2 */	fmuls f22, f22, f6
/* 8005D894 0005A7F4  ED 14 00 2A */	fadds f8, f20, f0
/* 8005D898 0005A7F8  ED 35 08 2A */	fadds f9, f21, f1
/* 8005D89C 0005A7FC  ED 56 10 2A */	fadds f10, f22, f2
/* 8005D8A0 0005A800  ED 68 02 32 */	fmuls f11, f8, f8
/* 8005D8A4 0005A804  EC C9 02 72 */	fmuls f6, f9, f9
/* 8005D8A8 0005A808  ED 8A 02 B2 */	fmuls f12, f10, f10
/* 8005D8AC 0005A80C  EC CB 30 2A */	fadds f6, f11, f6
/* 8005D8B0 0005A810  EC CC 30 2A */	fadds f6, f12, f6
/* 8005D8B4 0005A814  FC 06 38 40 */	fcmpo cr0, f6, f7
/* 8005D8B8 0005A818  40 81 00 5C */	ble lbl_8005D914
/* 8005D8BC 0005A81C  FD 60 30 34 */	frsqrte f11, f6
/* 8005D8C0 0005A820  C9 A2 85 80 */	lfd f13, @362-_SDA2_BASE_(r2)
/* 8005D8C4 0005A824  C9 82 85 88 */	lfd f12, @363-_SDA2_BASE_(r2)
/* 8005D8C8 0005A828  FC EB 02 F2 */	fmul f7, f11, f11
/* 8005D8CC 0005A82C  FD 6D 02 F2 */	fmul f11, f13, f11
/* 8005D8D0 0005A830  FC E6 01 F2 */	fmul f7, f6, f7
/* 8005D8D4 0005A834  FC EC 38 28 */	fsub f7, f12, f7
/* 8005D8D8 0005A838  FD 6B 01 F2 */	fmul f11, f11, f7
/* 8005D8DC 0005A83C  FC EB 02 F2 */	fmul f7, f11, f11
/* 8005D8E0 0005A840  FD 6D 02 F2 */	fmul f11, f13, f11
/* 8005D8E4 0005A844  FC E6 01 F2 */	fmul f7, f6, f7
/* 8005D8E8 0005A848  FC EC 38 28 */	fsub f7, f12, f7
/* 8005D8EC 0005A84C  FD 6B 01 F2 */	fmul f11, f11, f7
/* 8005D8F0 0005A850  FC EB 02 F2 */	fmul f7, f11, f11
/* 8005D8F4 0005A854  FD 6D 02 F2 */	fmul f11, f13, f11
/* 8005D8F8 0005A858  FC E6 01 F2 */	fmul f7, f6, f7
/* 8005D8FC 0005A85C  FC EC 38 28 */	fsub f7, f12, f7
/* 8005D900 0005A860  FC EB 01 F2 */	fmul f7, f11, f7
/* 8005D904 0005A864  FC C6 01 F2 */	fmul f6, f6, f7
/* 8005D908 0005A868  FC C0 30 18 */	frsp f6, f6
/* 8005D90C 0005A86C  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 8005D910 0005A870  C0 C1 00 10 */	lfs f6, 0x10(r1)
lbl_8005D914:
/* 8005D914 0005A874  C8 E2 85 98 */	lfd f7, @366-_SDA2_BASE_(r2)
/* 8005D918 0005A878  FC 06 38 40 */	fcmpo cr0, f6, f7
/* 8005D91C 0005A87C  40 81 00 E0 */	ble lbl_8005D9FC
/* 8005D920 0005A880  C0 E2 85 94 */	lfs f7, @365-_SDA2_BASE_(r2)
/* 8005D924 0005A884  3C A0 43 30 */	lis r5, 0x4330
/* 8005D928 0005A888  6F C4 80 00 */	xoris r4, r30, 0x8000
/* 8005D92C 0005A88C  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 8005D930 0005A890  EC C7 30 24 */	fdivs f6, f7, f6
/* 8005D934 0005A894  57 C3 10 3A */	slwi r3, r30, 2
/* 8005D938 0005A898  6C 66 80 00 */	xoris r6, r3, 0x8000
/* 8005D93C 0005A89C  57 E3 10 3A */	slwi r3, r31, 2
/* 8005D940 0005A8A0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8005D944 0005A8A4  90 81 00 34 */	stw r4, 0x34(r1)
/* 8005D948 0005A8A8  ED 08 01 B2 */	fmuls f8, f8, f6
/* 8005D94C 0005A8AC  90 A1 00 30 */	stw r5, 0x30(r1)
/* 8005D950 0005A8B0  ED 29 01 B2 */	fmuls f9, f9, f6
/* 8005D954 0005A8B4  C8 E2 85 B0 */	lfd f7, @371-_SDA2_BASE_(r2)
/* 8005D958 0005A8B8  ED 4A 01 B2 */	fmuls f10, f10, f6
/* 8005D95C 0005A8BC  CA C1 00 30 */	lfd f22, 0x30(r1)
/* 8005D960 0005A8C0  EE 88 00 F2 */	fmuls f20, f8, f3
/* 8005D964 0005A8C4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8005D968 0005A8C8  ED A9 01 32 */	fmuls f13, f9, f4
/* 8005D96C 0005A8CC  C0 C2 85 A0 */	lfs f6, @367-_SDA2_BASE_(r2)
/* 8005D970 0005A8D0  90 A1 00 48 */	stw r5, 0x48(r1)
/* 8005D974 0005A8D4  ED 68 06 B2 */	fmuls f11, f8, f26
/* 8005D978 0005A8D8  ED 09 06 F2 */	fmuls f8, f9, f27
/* 8005D97C 0005A8DC  C9 81 00 48 */	lfd f12, 0x48(r1)
/* 8005D980 0005A8E0  EE AA 01 72 */	fmuls f21, f10, f5
/* 8005D984 0005A8E4  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 8005D988 0005A8E8  ED B4 68 2A */	fadds f13, f20, f13
/* 8005D98C 0005A8EC  90 A1 00 28 */	stw r5, 0x28(r1)
/* 8005D990 0005A8F0  ED 2A 07 32 */	fmuls f9, f10, f28
/* 8005D994 0005A8F4  ED 0B 40 2A */	fadds f8, f11, f8
/* 8005D998 0005A8F8  CA 61 00 28 */	lfd f19, 0x28(r1)
/* 8005D99C 0005A8FC  EE 96 38 28 */	fsubs f20, f22, f7
/* 8005D9A0 0005A900  90 61 00 44 */	stw r3, 0x44(r1)
/* 8005D9A4 0005A904  ED 75 68 2A */	fadds f11, f21, f13
/* 8005D9A8 0005A908  90 A1 00 40 */	stw r5, 0x40(r1)
/* 8005D9AC 0005A90C  ED 4C 38 28 */	fsubs f10, f12, f7
/* 8005D9B0 0005A910  ED 09 40 2A */	fadds f8, f9, f8
/* 8005D9B4 0005A914  C9 21 00 40 */	lfd f9, 0x40(r1)
/* 8005D9B8 0005A918  ED 74 02 F2 */	fmuls f11, f20, f11
/* 8005D9BC 0005A91C  ED 93 38 28 */	fsubs f12, f19, f7
/* 8005D9C0 0005A920  ED 0A 02 32 */	fmuls f8, f10, f8
/* 8005D9C4 0005A924  ED 46 02 F2 */	fmuls f10, f6, f11
/* 8005D9C8 0005A928  EC E9 38 28 */	fsubs f7, f9, f7
/* 8005D9CC 0005A92C  EC C6 02 32 */	fmuls f6, f6, f8
/* 8005D9D0 0005A930  ED 0C 50 2A */	fadds f8, f12, f10
/* 8005D9D4 0005A934  EC C7 30 2A */	fadds f6, f7, f6
/* 8005D9D8 0005A938  FC E0 40 1E */	fctiwz f7, f8
/* 8005D9DC 0005A93C  FC C0 30 1E */	fctiwz f6, f6
/* 8005D9E0 0005A940  D8 E1 00 38 */	stfd f7, 0x38(r1)
/* 8005D9E4 0005A944  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8005D9E8 0005A948  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 8005D9EC 0005A94C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8005D9F0 0005A950  90 7D 00 00 */	stw r3, 0(r29)
/* 8005D9F4 0005A954  90 1D 00 04 */	stw r0, 4(r29)
/* 8005D9F8 0005A958  48 00 00 14 */	b lbl_8005DA0C
lbl_8005D9FC:
/* 8005D9FC 0005A95C  57 C3 08 3C */	slwi r3, r30, 1
/* 8005DA00 0005A960  57 E0 08 3C */	slwi r0, r31, 1
/* 8005DA04 0005A964  90 7D 00 00 */	stw r3, 0(r29)
/* 8005DA08 0005A968  90 1D 00 04 */	stw r0, 4(r29)
lbl_8005DA0C:
/* 8005DA0C 0005A96C  ED 17 05 F2 */	fmuls f8, f23, f23
/* 8005DA10 0005A970  C0 E2 85 78 */	lfs f7, @361-_SDA2_BASE_(r2)
/* 8005DA14 0005A974  EC D8 06 32 */	fmuls f6, f24, f24
/* 8005DA18 0005A978  ED 39 06 72 */	fmuls f9, f25, f25
/* 8005DA1C 0005A97C  EC C8 30 2A */	fadds f6, f8, f6
/* 8005DA20 0005A980  EC C9 30 2A */	fadds f6, f9, f6
/* 8005DA24 0005A984  FC 06 38 40 */	fcmpo cr0, f6, f7
/* 8005DA28 0005A988  40 81 00 5C */	ble lbl_8005DA84
/* 8005DA2C 0005A98C  FD 00 30 34 */	frsqrte f8, f6
/* 8005DA30 0005A990  C9 42 85 80 */	lfd f10, @362-_SDA2_BASE_(r2)
/* 8005DA34 0005A994  C9 22 85 88 */	lfd f9, @363-_SDA2_BASE_(r2)
/* 8005DA38 0005A998  FC E8 02 32 */	fmul f7, f8, f8
/* 8005DA3C 0005A99C  FD 0A 02 32 */	fmul f8, f10, f8
/* 8005DA40 0005A9A0  FC E6 01 F2 */	fmul f7, f6, f7
/* 8005DA44 0005A9A4  FC E9 38 28 */	fsub f7, f9, f7
/* 8005DA48 0005A9A8  FD 08 01 F2 */	fmul f8, f8, f7
/* 8005DA4C 0005A9AC  FC E8 02 32 */	fmul f7, f8, f8
/* 8005DA50 0005A9B0  FD 0A 02 32 */	fmul f8, f10, f8
/* 8005DA54 0005A9B4  FC E6 01 F2 */	fmul f7, f6, f7
/* 8005DA58 0005A9B8  FC E9 38 28 */	fsub f7, f9, f7
/* 8005DA5C 0005A9BC  FD 08 01 F2 */	fmul f8, f8, f7
/* 8005DA60 0005A9C0  FC E8 02 32 */	fmul f7, f8, f8
/* 8005DA64 0005A9C4  FD 0A 02 32 */	fmul f8, f10, f8
/* 8005DA68 0005A9C8  FC E6 01 F2 */	fmul f7, f6, f7
/* 8005DA6C 0005A9CC  FC E9 38 28 */	fsub f7, f9, f7
/* 8005DA70 0005A9D0  FC E8 01 F2 */	fmul f7, f8, f7
/* 8005DA74 0005A9D4  FC C6 01 F2 */	fmul f6, f6, f7
/* 8005DA78 0005A9D8  FC C0 30 18 */	frsp f6, f6
/* 8005DA7C 0005A9DC  D0 C1 00 0C */	stfs f6, 0xc(r1)
/* 8005DA80 0005A9E0  C0 C1 00 0C */	lfs f6, 0xc(r1)
lbl_8005DA84:
/* 8005DA84 0005A9E4  C1 02 85 94 */	lfs f8, @365-_SDA2_BASE_(r2)
/* 8005DA88 0005A9E8  C0 E2 85 78 */	lfs f7, @361-_SDA2_BASE_(r2)
/* 8005DA8C 0005A9EC  EC C8 30 24 */	fdivs f6, f8, f6
/* 8005DA90 0005A9F0  EE F7 01 B2 */	fmuls f23, f23, f6
/* 8005DA94 0005A9F4  EF 18 01 B2 */	fmuls f24, f24, f6
/* 8005DA98 0005A9F8  EF 39 01 B2 */	fmuls f25, f25, f6
/* 8005DA9C 0005A9FC  ED 17 00 2A */	fadds f8, f23, f0
/* 8005DAA0 0005AA00  ED 38 08 2A */	fadds f9, f24, f1
/* 8005DAA4 0005AA04  ED 59 10 2A */	fadds f10, f25, f2
/* 8005DAA8 0005AA08  ED 68 02 32 */	fmuls f11, f8, f8
/* 8005DAAC 0005AA0C  EC C9 02 72 */	fmuls f6, f9, f9
/* 8005DAB0 0005AA10  ED 8A 02 B2 */	fmuls f12, f10, f10
/* 8005DAB4 0005AA14  EC CB 30 2A */	fadds f6, f11, f6
/* 8005DAB8 0005AA18  EC CC 30 2A */	fadds f6, f12, f6
/* 8005DABC 0005AA1C  FC 06 38 40 */	fcmpo cr0, f6, f7
/* 8005DAC0 0005AA20  40 81 00 5C */	ble lbl_8005DB1C
/* 8005DAC4 0005AA24  FD 60 30 34 */	frsqrte f11, f6
/* 8005DAC8 0005AA28  C9 A2 85 80 */	lfd f13, @362-_SDA2_BASE_(r2)
/* 8005DACC 0005AA2C  C9 82 85 88 */	lfd f12, @363-_SDA2_BASE_(r2)
/* 8005DAD0 0005AA30  FC EB 02 F2 */	fmul f7, f11, f11
/* 8005DAD4 0005AA34  FD 6D 02 F2 */	fmul f11, f13, f11
/* 8005DAD8 0005AA38  FC E6 01 F2 */	fmul f7, f6, f7
/* 8005DADC 0005AA3C  FC EC 38 28 */	fsub f7, f12, f7
/* 8005DAE0 0005AA40  FD 6B 01 F2 */	fmul f11, f11, f7
/* 8005DAE4 0005AA44  FC EB 02 F2 */	fmul f7, f11, f11
/* 8005DAE8 0005AA48  FD 6D 02 F2 */	fmul f11, f13, f11
/* 8005DAEC 0005AA4C  FC E6 01 F2 */	fmul f7, f6, f7
/* 8005DAF0 0005AA50  FC EC 38 28 */	fsub f7, f12, f7
/* 8005DAF4 0005AA54  FD 6B 01 F2 */	fmul f11, f11, f7
/* 8005DAF8 0005AA58  FC EB 02 F2 */	fmul f7, f11, f11
/* 8005DAFC 0005AA5C  FD 6D 02 F2 */	fmul f11, f13, f11
/* 8005DB00 0005AA60  FC E6 01 F2 */	fmul f7, f6, f7
/* 8005DB04 0005AA64  FC EC 38 28 */	fsub f7, f12, f7
/* 8005DB08 0005AA68  FC EB 01 F2 */	fmul f7, f11, f7
/* 8005DB0C 0005AA6C  FC C6 01 F2 */	fmul f6, f6, f7
/* 8005DB10 0005AA70  FC C0 30 18 */	frsp f6, f6
/* 8005DB14 0005AA74  D0 C1 00 08 */	stfs f6, 8(r1)
/* 8005DB18 0005AA78  C0 C1 00 08 */	lfs f6, 8(r1)
lbl_8005DB1C:
/* 8005DB1C 0005AA7C  C8 E2 85 98 */	lfd f7, @366-_SDA2_BASE_(r2)
/* 8005DB20 0005AA80  FC 06 38 40 */	fcmpo cr0, f6, f7
/* 8005DB24 0005AA84  40 81 00 E0 */	ble lbl_8005DC04
/* 8005DB28 0005AA88  C0 E2 85 94 */	lfs f7, @365-_SDA2_BASE_(r2)
/* 8005DB2C 0005AA8C  3C A0 43 30 */	lis r5, 0x4330
/* 8005DB30 0005AA90  6F C4 80 00 */	xoris r4, r30, 0x8000
/* 8005DB34 0005AA94  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 8005DB38 0005AA98  EC C7 30 24 */	fdivs f6, f7, f6
/* 8005DB3C 0005AA9C  57 C3 10 3A */	slwi r3, r30, 2
/* 8005DB40 0005AAA0  6C 66 80 00 */	xoris r6, r3, 0x8000
/* 8005DB44 0005AAA4  57 E3 10 3A */	slwi r3, r31, 2
/* 8005DB48 0005AAA8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8005DB4C 0005AAAC  90 81 00 4C */	stw r4, 0x4c(r1)
/* 8005DB50 0005AAB0  ED 08 01 B2 */	fmuls f8, f8, f6
/* 8005DB54 0005AAB4  90 A1 00 48 */	stw r5, 0x48(r1)
/* 8005DB58 0005AAB8  ED 29 01 B2 */	fmuls f9, f9, f6
/* 8005DB5C 0005AABC  C8 E2 85 B0 */	lfd f7, @371-_SDA2_BASE_(r2)
/* 8005DB60 0005AAC0  ED 4A 01 B2 */	fmuls f10, f10, f6
/* 8005DB64 0005AAC4  CA C1 00 48 */	lfd f22, 0x48(r1)
/* 8005DB68 0005AAC8  EE 88 00 F2 */	fmuls f20, f8, f3
/* 8005DB6C 0005AACC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8005DB70 0005AAD0  ED A9 01 32 */	fmuls f13, f9, f4
/* 8005DB74 0005AAD4  C0 C2 85 A0 */	lfs f6, @367-_SDA2_BASE_(r2)
/* 8005DB78 0005AAD8  90 A1 00 30 */	stw r5, 0x30(r1)
/* 8005DB7C 0005AADC  ED 68 06 B2 */	fmuls f11, f8, f26
/* 8005DB80 0005AAE0  ED 09 06 F2 */	fmuls f8, f9, f27
/* 8005DB84 0005AAE4  C9 81 00 30 */	lfd f12, 0x30(r1)
/* 8005DB88 0005AAE8  EE AA 01 72 */	fmuls f21, f10, f5
/* 8005DB8C 0005AAEC  90 C1 00 54 */	stw r6, 0x54(r1)
/* 8005DB90 0005AAF0  ED B4 68 2A */	fadds f13, f20, f13
/* 8005DB94 0005AAF4  90 A1 00 50 */	stw r5, 0x50(r1)
/* 8005DB98 0005AAF8  ED 2A 07 32 */	fmuls f9, f10, f28
/* 8005DB9C 0005AAFC  ED 0B 40 2A */	fadds f8, f11, f8
/* 8005DBA0 0005AB00  CA E1 00 50 */	lfd f23, 0x50(r1)
/* 8005DBA4 0005AB04  EE 96 38 28 */	fsubs f20, f22, f7
/* 8005DBA8 0005AB08  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8005DBAC 0005AB0C  ED 75 68 2A */	fadds f11, f21, f13
/* 8005DBB0 0005AB10  90 A1 00 38 */	stw r5, 0x38(r1)
/* 8005DBB4 0005AB14  ED 4C 38 28 */	fsubs f10, f12, f7
/* 8005DBB8 0005AB18  ED 09 40 2A */	fadds f8, f9, f8
/* 8005DBBC 0005AB1C  C9 21 00 38 */	lfd f9, 0x38(r1)
/* 8005DBC0 0005AB20  ED 74 02 F2 */	fmuls f11, f20, f11
/* 8005DBC4 0005AB24  ED 97 38 28 */	fsubs f12, f23, f7
/* 8005DBC8 0005AB28  ED 0A 02 32 */	fmuls f8, f10, f8
/* 8005DBCC 0005AB2C  ED 46 02 F2 */	fmuls f10, f6, f11
/* 8005DBD0 0005AB30  EC E9 38 28 */	fsubs f7, f9, f7
/* 8005DBD4 0005AB34  EC C6 02 32 */	fmuls f6, f6, f8
/* 8005DBD8 0005AB38  ED 0C 50 2A */	fadds f8, f12, f10
/* 8005DBDC 0005AB3C  EC C7 30 2A */	fadds f6, f7, f6
/* 8005DBE0 0005AB40  FC E0 40 1E */	fctiwz f7, f8
/* 8005DBE4 0005AB44  FC C0 30 1E */	fctiwz f6, f6
/* 8005DBE8 0005AB48  D8 E1 00 40 */	stfd f7, 0x40(r1)
/* 8005DBEC 0005AB4C  D8 C1 00 28 */	stfd f6, 0x28(r1)
/* 8005DBF0 0005AB50  80 61 00 44 */	lwz r3, 0x44(r1)
/* 8005DBF4 0005AB54  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8005DBF8 0005AB58  90 7D 00 08 */	stw r3, 8(r29)
/* 8005DBFC 0005AB5C  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8005DC00 0005AB60  48 00 00 14 */	b lbl_8005DC14
lbl_8005DC04:
/* 8005DC04 0005AB64  57 C3 08 3C */	slwi r3, r30, 1
/* 8005DC08 0005AB68  57 E0 08 3C */	slwi r0, r31, 1
/* 8005DC0C 0005AB6C  90 7D 00 08 */	stw r3, 8(r29)
/* 8005DC10 0005AB70  90 1D 00 0C */	stw r0, 0xc(r29)
lbl_8005DC14:
/* 8005DC14 0005AB74  C0 E2 85 A8 */	lfs f7, @369-_SDA2_BASE_(r2)
/* 8005DC18 0005AB78  C0 C2 85 A4 */	lfs f6, @368-_SDA2_BASE_(r2)
/* 8005DC1C 0005AB7C  EC E7 00 F2 */	fmuls f7, f7, f3
/* 8005DC20 0005AB80  FC 07 30 40 */	fcmpo cr0, f7, f6
/* 8005DC24 0005AB84  40 80 00 08 */	bge lbl_8005DC2C
/* 8005DC28 0005AB88  48 00 00 08 */	b lbl_8005DC30
lbl_8005DC2C:
/* 8005DC2C 0005AB8C  FC E0 30 90 */	fmr f7, f6
lbl_8005DC30:
/* 8005DC30 0005AB90  FD 00 38 1E */	fctiwz f8, f7
/* 8005DC34 0005AB94  C0 E2 85 A8 */	lfs f7, @369-_SDA2_BASE_(r2)
/* 8005DC38 0005AB98  C0 C2 85 A4 */	lfs f6, @368-_SDA2_BASE_(r2)
/* 8005DC3C 0005AB9C  EC E7 01 32 */	fmuls f7, f7, f4
/* 8005DC40 0005ABA0  D9 01 00 50 */	stfd f8, 0x50(r1)
/* 8005DC44 0005ABA4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8005DC48 0005ABA8  FC 07 30 40 */	fcmpo cr0, f7, f6
/* 8005DC4C 0005ABAC  98 1C 00 08 */	stb r0, 8(r28)
/* 8005DC50 0005ABB0  40 80 00 08 */	bge lbl_8005DC58
/* 8005DC54 0005ABB4  48 00 00 08 */	b lbl_8005DC5C
lbl_8005DC58:
/* 8005DC58 0005ABB8  FC E0 30 90 */	fmr f7, f6
lbl_8005DC5C:
/* 8005DC5C 0005ABBC  FD 00 38 1E */	fctiwz f8, f7
/* 8005DC60 0005ABC0  C0 E2 85 A8 */	lfs f7, @369-_SDA2_BASE_(r2)
/* 8005DC64 0005ABC4  C0 C2 85 A4 */	lfs f6, @368-_SDA2_BASE_(r2)
/* 8005DC68 0005ABC8  EC E7 01 72 */	fmuls f7, f7, f5
/* 8005DC6C 0005ABCC  D9 01 00 48 */	stfd f8, 0x48(r1)
/* 8005DC70 0005ABD0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8005DC74 0005ABD4  FC 07 30 40 */	fcmpo cr0, f7, f6
/* 8005DC78 0005ABD8  98 1C 00 09 */	stb r0, 9(r28)
/* 8005DC7C 0005ABDC  40 80 00 08 */	bge lbl_8005DC84
/* 8005DC80 0005ABE0  48 00 00 08 */	b lbl_8005DC88
lbl_8005DC84:
/* 8005DC84 0005ABE4  FC E0 30 90 */	fmr f7, f6
lbl_8005DC88:
/* 8005DC88 0005ABE8  FD 00 38 1E */	fctiwz f8, f7
/* 8005DC8C 0005ABEC  C0 E2 85 A8 */	lfs f7, @369-_SDA2_BASE_(r2)
/* 8005DC90 0005ABF0  C0 C2 85 A4 */	lfs f6, @368-_SDA2_BASE_(r2)
/* 8005DC94 0005ABF4  EC E7 06 B2 */	fmuls f7, f7, f26
/* 8005DC98 0005ABF8  D9 01 00 40 */	stfd f8, 0x40(r1)
/* 8005DC9C 0005ABFC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8005DCA0 0005AC00  FC 07 30 40 */	fcmpo cr0, f7, f6
/* 8005DCA4 0005AC04  98 1C 00 0A */	stb r0, 0xa(r28)
/* 8005DCA8 0005AC08  40 80 00 08 */	bge lbl_8005DCB0
/* 8005DCAC 0005AC0C  48 00 00 08 */	b lbl_8005DCB4
lbl_8005DCB0:
/* 8005DCB0 0005AC10  FC E0 30 90 */	fmr f7, f6
lbl_8005DCB4:
/* 8005DCB4 0005AC14  FD 00 38 1E */	fctiwz f8, f7
/* 8005DCB8 0005AC18  C0 E2 85 A8 */	lfs f7, @369-_SDA2_BASE_(r2)
/* 8005DCBC 0005AC1C  C0 C2 85 A4 */	lfs f6, @368-_SDA2_BASE_(r2)
/* 8005DCC0 0005AC20  EC E7 06 F2 */	fmuls f7, f7, f27
/* 8005DCC4 0005AC24  D9 01 00 38 */	stfd f8, 0x38(r1)
/* 8005DCC8 0005AC28  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8005DCCC 0005AC2C  FC 07 30 40 */	fcmpo cr0, f7, f6
/* 8005DCD0 0005AC30  98 1C 00 18 */	stb r0, 0x18(r28)
/* 8005DCD4 0005AC34  40 80 00 08 */	bge lbl_8005DCDC
/* 8005DCD8 0005AC38  48 00 00 08 */	b lbl_8005DCE0
lbl_8005DCDC:
/* 8005DCDC 0005AC3C  FC E0 30 90 */	fmr f7, f6
lbl_8005DCE0:
/* 8005DCE0 0005AC40  FD 00 38 1E */	fctiwz f8, f7
/* 8005DCE4 0005AC44  C0 E2 85 A8 */	lfs f7, @369-_SDA2_BASE_(r2)
/* 8005DCE8 0005AC48  C0 C2 85 A4 */	lfs f6, @368-_SDA2_BASE_(r2)
/* 8005DCEC 0005AC4C  EC E7 07 32 */	fmuls f7, f7, f28
/* 8005DCF0 0005AC50  D9 01 00 30 */	stfd f8, 0x30(r1)
/* 8005DCF4 0005AC54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8005DCF8 0005AC58  FC 07 30 40 */	fcmpo cr0, f7, f6
/* 8005DCFC 0005AC5C  98 1C 00 19 */	stb r0, 0x19(r28)
/* 8005DD00 0005AC60  40 80 00 08 */	bge lbl_8005DD08
/* 8005DD04 0005AC64  48 00 00 08 */	b lbl_8005DD0C
lbl_8005DD08:
/* 8005DD08 0005AC68  FC E0 30 90 */	fmr f7, f6
lbl_8005DD0C:
/* 8005DD0C 0005AC6C  FD 20 38 1E */	fctiwz f9, f7
/* 8005DD10 0005AC70  38 60 00 00 */	li r3, 0
/* 8005DD14 0005AC74  38 00 00 80 */	li r0, 0x80
/* 8005DD18 0005AC78  ED 1D 00 F2 */	fmuls f8, f29, f3
/* 8005DD1C 0005AC7C  EC DE 01 32 */	fmuls f6, f30, f4
/* 8005DD20 0005AC80  C0 E2 85 78 */	lfs f7, @361-_SDA2_BASE_(r2)
/* 8005DD24 0005AC84  D9 21 00 28 */	stfd f9, 0x28(r1)
/* 8005DD28 0005AC88  ED 7F 01 72 */	fmuls f11, f31, f5
/* 8005DD2C 0005AC8C  ED 48 30 2A */	fadds f10, f8, f6
/* 8005DD30 0005AC90  C0 C2 85 94 */	lfs f6, @365-_SDA2_BASE_(r2)
/* 8005DD34 0005AC94  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8005DD38 0005AC98  ED 3D 06 B2 */	fmuls f9, f29, f26
/* 8005DD3C 0005AC9C  ED 1E 06 F2 */	fmuls f8, f30, f27
/* 8005DD40 0005ACA0  98 9C 00 1A */	stb r4, 0x1a(r28)
/* 8005DD44 0005ACA4  ED 6B 50 2A */	fadds f11, f11, f10
/* 8005DD48 0005ACA8  98 7C 00 00 */	stb r3, 0(r28)
/* 8005DD4C 0005ACAC  ED 09 40 2A */	fadds f8, f9, f8
/* 8005DD50 0005ACB0  ED 5F 07 32 */	fmuls f10, f31, f28
/* 8005DD54 0005ACB4  98 7C 00 01 */	stb r3, 1(r28)
/* 8005DD58 0005ACB8  FD 80 58 50 */	fneg f12, f11
/* 8005DD5C 0005ACBC  ED 3D 00 32 */	fmuls f9, f29, f0
/* 8005DD60 0005ACC0  98 7C 00 02 */	stb r3, 2(r28)
/* 8005DD64 0005ACC4  ED 4A 40 2A */	fadds f10, f10, f8
/* 8005DD68 0005ACC8  ED 1E 00 72 */	fmuls f8, f30, f1
/* 8005DD6C 0005ACCC  98 7C 00 03 */	stb r3, 3(r28)
/* 8005DD70 0005ACD0  FD 60 50 50 */	fneg f11, f10
/* 8005DD74 0005ACD4  98 7C 00 04 */	stb r3, 4(r28)
/* 8005DD78 0005ACD8  ED 5F 00 B2 */	fmuls f10, f31, f2
/* 8005DD7C 0005ACDC  ED 09 40 2A */	fadds f8, f9, f8
/* 8005DD80 0005ACE0  98 7C 00 05 */	stb r3, 5(r28)
/* 8005DD84 0005ACE4  98 7C 00 06 */	stb r3, 6(r28)
/* 8005DD88 0005ACE8  ED 0A 40 2A */	fadds f8, f10, f8
/* 8005DD8C 0005ACEC  98 7C 00 07 */	stb r3, 7(r28)
/* 8005DD90 0005ACF0  FD 00 40 50 */	fneg f8, f8
/* 8005DD94 0005ACF4  98 7C 00 10 */	stb r3, 0x10(r28)
/* 8005DD98 0005ACF8  98 1C 00 11 */	stb r0, 0x11(r28)
/* 8005DD9C 0005ACFC  98 7C 00 12 */	stb r3, 0x12(r28)
/* 8005DDA0 0005AD00  98 7C 00 13 */	stb r3, 0x13(r28)
/* 8005DDA4 0005AD04  98 7C 00 14 */	stb r3, 0x14(r28)
/* 8005DDA8 0005AD08  98 1C 00 15 */	stb r0, 0x15(r28)
/* 8005DDAC 0005AD0C  98 7C 00 16 */	stb r3, 0x16(r28)
/* 8005DDB0 0005AD10  98 7C 00 17 */	stb r3, 0x17(r28)
/* 8005DDB4 0005AD14  D0 7B 00 00 */	stfs f3, 0(r27)
/* 8005DDB8 0005AD18  D0 9B 00 10 */	stfs f4, 0x10(r27)
/* 8005DDBC 0005AD1C  D0 BB 00 20 */	stfs f5, 0x20(r27)
/* 8005DDC0 0005AD20  D1 9B 00 30 */	stfs f12, 0x30(r27)
/* 8005DDC4 0005AD24  D3 5B 00 04 */	stfs f26, 4(r27)
/* 8005DDC8 0005AD28  D3 7B 00 14 */	stfs f27, 0x14(r27)
/* 8005DDCC 0005AD2C  D3 9B 00 24 */	stfs f28, 0x24(r27)
/* 8005DDD0 0005AD30  D1 7B 00 34 */	stfs f11, 0x34(r27)
/* 8005DDD4 0005AD34  D0 1B 00 08 */	stfs f0, 8(r27)
/* 8005DDD8 0005AD38  D0 3B 00 18 */	stfs f1, 0x18(r27)
/* 8005DDDC 0005AD3C  D0 5B 00 28 */	stfs f2, 0x28(r27)
/* 8005DDE0 0005AD40  D1 1B 00 38 */	stfs f8, 0x38(r27)
/* 8005DDE4 0005AD44  D0 FB 00 0C */	stfs f7, 0xc(r27)
/* 8005DDE8 0005AD48  D0 FB 00 1C */	stfs f7, 0x1c(r27)
/* 8005DDEC 0005AD4C  D0 FB 00 2C */	stfs f7, 0x2c(r27)
/* 8005DDF0 0005AD50  D0 DB 00 3C */	stfs f6, 0x3c(r27)
/* 8005DDF4 0005AD54  E3 E1 01 58 */	psq_l f31, 344(r1), 0, qr0
/* 8005DDF8 0005AD58  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 8005DDFC 0005AD5C  E3 C1 01 48 */	psq_l f30, 328(r1), 0, qr0
/* 8005DE00 0005AD60  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 8005DE04 0005AD64  E3 A1 01 38 */	psq_l f29, 312(r1), 0, qr0
/* 8005DE08 0005AD68  CB A1 01 30 */	lfd f29, 0x130(r1)
/* 8005DE0C 0005AD6C  E3 81 01 28 */	psq_l f28, 296(r1), 0, qr0
/* 8005DE10 0005AD70  CB 81 01 20 */	lfd f28, 0x120(r1)
/* 8005DE14 0005AD74  E3 61 01 18 */	psq_l f27, 280(r1), 0, qr0
/* 8005DE18 0005AD78  CB 61 01 10 */	lfd f27, 0x110(r1)
/* 8005DE1C 0005AD7C  E3 41 01 08 */	psq_l f26, 264(r1), 0, qr0
/* 8005DE20 0005AD80  CB 41 01 00 */	lfd f26, 0x100(r1)
/* 8005DE24 0005AD84  E3 21 00 F8 */	psq_l f25, 248(r1), 0, qr0
/* 8005DE28 0005AD88  CB 21 00 F0 */	lfd f25, 0xf0(r1)
/* 8005DE2C 0005AD8C  E3 01 00 E8 */	psq_l f24, 232(r1), 0, qr0
/* 8005DE30 0005AD90  CB 01 00 E0 */	lfd f24, 0xe0(r1)
/* 8005DE34 0005AD94  E2 E1 00 D8 */	psq_l f23, 216(r1), 0, qr0
/* 8005DE38 0005AD98  CA E1 00 D0 */	lfd f23, 0xd0(r1)
/* 8005DE3C 0005AD9C  E2 C1 00 C8 */	psq_l f22, 200(r1), 0, qr0
/* 8005DE40 0005ADA0  CA C1 00 C0 */	lfd f22, 0xc0(r1)
/* 8005DE44 0005ADA4  E2 A1 00 B8 */	psq_l f21, 184(r1), 0, qr0
/* 8005DE48 0005ADA8  CA A1 00 B0 */	lfd f21, 0xb0(r1)
/* 8005DE4C 0005ADAC  E2 81 00 A8 */	psq_l f20, 168(r1), 0, qr0
/* 8005DE50 0005ADB0  CA 81 00 A0 */	lfd f20, 0xa0(r1)
/* 8005DE54 0005ADB4  E2 61 00 98 */	psq_l f19, 152(r1), 0, qr0
/* 8005DE58 0005ADB8  CA 61 00 90 */	lfd f19, 0x90(r1)
/* 8005DE5C 0005ADBC  E2 41 00 88 */	psq_l f18, 136(r1), 0, qr0
/* 8005DE60 0005ADC0  CA 41 00 80 */	lfd f18, 0x80(r1)
/* 8005DE64 0005ADC4  E2 21 00 78 */	psq_l f17, 120(r1), 0, qr0
/* 8005DE68 0005ADC8  39 61 00 70 */	addi r11, r1, 0x70
/* 8005DE6C 0005ADCC  CA 21 00 70 */	lfd f17, 0x70(r1)
/* 8005DE70 0005ADD0  48 03 D0 A9 */	bl func_8009AF18
/* 8005DE74 0005ADD4  80 01 01 64 */	lwz r0, 0x164(r1)
/* 8005DE78 0005ADD8  7C 08 03 A6 */	mtlr r0
/* 8005DE7C 0005ADDC  38 21 01 60 */	addi r1, r1, 0x160
/* 8005DE80 0005ADE0  4E 80 00 20 */	blr 

.global guLookAtHilite
guLookAtHilite:
/* 8005DE84 0005ADE4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8005DE88 0005ADE8  7C 08 02 A6 */	mflr r0
/* 8005DE8C 0005ADEC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8005DE90 0005ADF0  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8005DE94 0005ADF4  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8005DE98 0005ADF8  7C 7F 1B 78 */	mr r31, r3
/* 8005DE9C 0005ADFC  C1 21 00 7C */	lfs f9, 0x7c(r1)
/* 8005DEA0 0005AE00  38 61 00 28 */	addi r3, r1, 0x28
/* 8005DEA4 0005AE04  D0 01 00 08 */	stfs f0, 8(r1)
/* 8005DEA8 0005AE08  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8005DEAC 0005AE0C  D1 21 00 0C */	stfs f9, 0xc(r1)
/* 8005DEB0 0005AE10  C1 21 00 84 */	lfs f9, 0x84(r1)
/* 8005DEB4 0005AE14  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8005DEB8 0005AE18  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8005DEBC 0005AE1C  D1 21 00 14 */	stfs f9, 0x14(r1)
/* 8005DEC0 0005AE20  C1 21 00 8C */	lfs f9, 0x8c(r1)
/* 8005DEC4 0005AE24  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8005DEC8 0005AE28  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8005DECC 0005AE2C  D1 21 00 1C */	stfs f9, 0x1c(r1)
/* 8005DED0 0005AE30  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8005DED4 0005AE34  4B FF F6 59 */	bl guLookAtHiliteF
/* 8005DED8 0005AE38  7F E4 FB 78 */	mr r4, r31
/* 8005DEDC 0005AE3C  38 61 00 28 */	addi r3, r1, 0x28
/* 8005DEE0 0005AE40  48 00 00 19 */	bl guMtxF2L
/* 8005DEE4 0005AE44  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8005DEE8 0005AE48  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8005DEEC 0005AE4C  7C 08 03 A6 */	mtlr r0
/* 8005DEF0 0005AE50  38 21 00 70 */	addi r1, r1, 0x70
/* 8005DEF4 0005AE54  4E 80 00 20 */	blr 
