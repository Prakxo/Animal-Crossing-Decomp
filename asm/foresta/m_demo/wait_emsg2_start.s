lbl_803997EC:
/* 803997EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803997F0  38 00 00 02 */	li r0, 2
/* 803997F4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803997F8  38 60 00 01 */	li r3, 1
/* 803997FC  3C 84 00 03 */	addis r4, r4, 3
/* 80399800  98 04 85 C6 */	stb r0, -0x7a3a(r4)
/* 80399804  4E 80 00 20 */	blr 
