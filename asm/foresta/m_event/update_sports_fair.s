lbl_8039C5C8:
/* 8039C5C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039C5CC  7C 08 02 A6 */	mflr r0
/* 8039C5D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039C5D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8039C5D8  4B CF E8 FD */	bl func_8009AED4
/* 8039C5DC  7C 7F 1B 78 */	mr r31, r3
/* 8039C5E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039C5E4  A8 1F 00 0A */	lha r0, 0xa(r31)
/* 8039C5E8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039C5EC  7C 9D 23 78 */	mr r29, r4
/* 8039C5F0  2C 00 00 29 */	cmpwi r0, 0x29
/* 8039C5F4  3F C3 00 02 */	addis r30, r3, 2
/* 8039C5F8  41 82 00 BC */	beq lbl_8039C6B4
/* 8039C5FC  40 80 00 30 */	bge lbl_8039C62C
/* 8039C600  2C 00 00 0B */	cmpwi r0, 0xb
/* 8039C604  41 82 00 4C */	beq lbl_8039C650
/* 8039C608  40 80 00 10 */	bge lbl_8039C618
/* 8039C60C  2C 00 00 0A */	cmpwi r0, 0xa
/* 8039C610  40 80 00 88 */	bge lbl_8039C698
/* 8039C614  48 00 01 2C */	b lbl_8039C740
lbl_8039C618:
/* 8039C618  2C 00 00 28 */	cmpwi r0, 0x28
/* 8039C61C  40 80 00 E0 */	bge lbl_8039C6FC
/* 8039C620  2C 00 00 11 */	cmpwi r0, 0x11
/* 8039C624  40 80 01 1C */	bge lbl_8039C740
/* 8039C628  48 00 00 F0 */	b lbl_8039C718
lbl_8039C62C:
/* 8039C62C  2C 00 00 60 */	cmpwi r0, 0x60
/* 8039C630  41 82 00 84 */	beq lbl_8039C6B4
/* 8039C634  40 80 00 10 */	bge lbl_8039C644
/* 8039C638  2C 00 00 52 */	cmpwi r0, 0x52
/* 8039C63C  41 82 00 14 */	beq lbl_8039C650
/* 8039C640  48 00 01 00 */	b lbl_8039C740
lbl_8039C644:
/* 8039C644  2C 00 00 6F */	cmpwi r0, 0x6f
/* 8039C648  41 82 00 D0 */	beq lbl_8039C718
/* 8039C64C  48 00 00 F4 */	b lbl_8039C740
lbl_8039C650:
/* 8039C650  88 1E 61 25 */	lbz r0, 0x6125(r30)
/* 8039C654  28 00 00 03 */	cmplwi r0, 3
/* 8039C658  40 82 00 18 */	bne lbl_8039C670
/* 8039C65C  A0 7E 61 26 */	lhz r3, 0x6126(r30)
/* 8039C660  48 06 B2 69 */	bl lbRk_VernalEquinoxDay
/* 8039C664  88 1E 61 23 */	lbz r0, 0x6123(r30)
/* 8039C668  7C 00 18 00 */	cmpw r0, r3
/* 8039C66C  41 82 00 14 */	beq lbl_8039C680
lbl_8039C670:
/* 8039C670  38 00 00 00 */	li r0, 0
/* 8039C674  90 1F 00 04 */	stw r0, 4(r31)
/* 8039C678  90 1F 00 00 */	stw r0, 0(r31)
/* 8039C67C  48 00 00 C4 */	b lbl_8039C740
lbl_8039C680:
/* 8039C680  98 1F 00 01 */	stb r0, 1(r31)
/* 8039C684  88 1E 61 23 */	lbz r0, 0x6123(r30)
/* 8039C688  98 1F 00 05 */	stb r0, 5(r31)
/* 8039C68C  88 1E 61 23 */	lbz r0, 0x6123(r30)
/* 8039C690  98 1D 00 00 */	stb r0, 0(r29)
/* 8039C694  48 00 00 AC */	b lbl_8039C740
lbl_8039C698:
/* 8039C698  A0 7E 61 26 */	lhz r3, 0x6126(r30)
/* 8039C69C  48 06 B2 2D */	bl lbRk_VernalEquinoxDay
/* 8039C6A0  38 83 FF F6 */	addi r4, r3, -10
/* 8039C6A4  38 03 FF FF */	addi r0, r3, -1
/* 8039C6A8  98 9F 00 01 */	stb r4, 1(r31)
/* 8039C6AC  98 1F 00 05 */	stb r0, 5(r31)
/* 8039C6B0  48 00 00 90 */	b lbl_8039C740
lbl_8039C6B4:
/* 8039C6B4  88 1E 61 25 */	lbz r0, 0x6125(r30)
/* 8039C6B8  28 00 00 09 */	cmplwi r0, 9
/* 8039C6BC  40 82 00 18 */	bne lbl_8039C6D4
/* 8039C6C0  A0 7E 61 26 */	lhz r3, 0x6126(r30)
/* 8039C6C4  48 06 B2 69 */	bl lbRk_AutumnalEquinoxDay
/* 8039C6C8  88 1E 61 23 */	lbz r0, 0x6123(r30)
/* 8039C6CC  7C 00 18 00 */	cmpw r0, r3
/* 8039C6D0  41 82 00 14 */	beq lbl_8039C6E4
lbl_8039C6D4:
/* 8039C6D4  38 00 00 00 */	li r0, 0
/* 8039C6D8  90 1F 00 04 */	stw r0, 4(r31)
/* 8039C6DC  90 1F 00 00 */	stw r0, 0(r31)
/* 8039C6E0  48 00 00 60 */	b lbl_8039C740
lbl_8039C6E4:
/* 8039C6E4  98 1F 00 01 */	stb r0, 1(r31)
/* 8039C6E8  88 1E 61 23 */	lbz r0, 0x6123(r30)
/* 8039C6EC  98 1F 00 05 */	stb r0, 5(r31)
/* 8039C6F0  88 1E 61 23 */	lbz r0, 0x6123(r30)
/* 8039C6F4  98 1D 00 00 */	stb r0, 0(r29)
/* 8039C6F8  48 00 00 48 */	b lbl_8039C740
lbl_8039C6FC:
/* 8039C6FC  A0 7E 61 26 */	lhz r3, 0x6126(r30)
/* 8039C700  48 06 B2 2D */	bl lbRk_AutumnalEquinoxDay
/* 8039C704  38 83 FF F6 */	addi r4, r3, -10
/* 8039C708  38 03 FF FF */	addi r0, r3, -1
/* 8039C70C  98 9F 00 01 */	stb r4, 1(r31)
/* 8039C710  98 1F 00 05 */	stb r0, 5(r31)
/* 8039C714  48 00 00 2C */	b lbl_8039C740
lbl_8039C718:
/* 8039C718  88 1D 00 00 */	lbz r0, 0(r29)
/* 8039C71C  28 00 00 00 */	cmplwi r0, 0
/* 8039C720  40 82 00 14 */	bne lbl_8039C734
/* 8039C724  38 00 00 00 */	li r0, 0
/* 8039C728  90 1F 00 04 */	stw r0, 4(r31)
/* 8039C72C  90 1F 00 00 */	stw r0, 0(r31)
/* 8039C730  48 00 00 10 */	b lbl_8039C740
lbl_8039C734:
/* 8039C734  98 1F 00 01 */	stb r0, 1(r31)
/* 8039C738  88 1D 00 00 */	lbz r0, 0(r29)
/* 8039C73C  98 1F 00 05 */	stb r0, 5(r31)
lbl_8039C740:
/* 8039C740  39 61 00 20 */	addi r11, r1, 0x20
/* 8039C744  4B CF E7 DD */	bl func_8009AF20
/* 8039C748  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039C74C  7C 08 03 A6 */	mtlr r0
/* 8039C750  38 21 00 20 */	addi r1, r1, 0x20
/* 8039C754  4E 80 00 20 */	blr 
