.include "macros.inc"

.section .text

.org 0x800A8290

.global TRKSaveExtended1Block
TRKSaveExtended1Block:
/* 800A8290 000A51F0  3C 40 80 20 */	lis r2, gTRKCPUState@h
/* 800A8294 000A51F4  60 42 B0 78 */	ori r2, r2, gTRKCPUState@l
/* 800A8298 000A51F8  7E 00 04 A6 */	mfsr r16, 0
/* 800A829C 000A51FC  7E 21 04 A6 */	mfsr r17, 1
/* 800A82A0 000A5200  7E 42 04 A6 */	mfsr r18, 2
/* 800A82A4 000A5204  7E 63 04 A6 */	mfsr r19, 3
/* 800A82A8 000A5208  7E 84 04 A6 */	mfsr r20, 4
/* 800A82AC 000A520C  7E A5 04 A6 */	mfsr r21, 5
/* 800A82B0 000A5210  7E C6 04 A6 */	mfsr r22, 6
/* 800A82B4 000A5214  7E E7 04 A6 */	mfsr r23, 7
/* 800A82B8 000A5218  7F 08 04 A6 */	mfsr r24, 8
/* 800A82BC 000A521C  7F 29 04 A6 */	mfsr r25, 9
/* 800A82C0 000A5220  7F 4A 04 A6 */	mfsr r26, 0xa
/* 800A82C4 000A5224  7F 6B 04 A6 */	mfsr r27, 0xb
/* 800A82C8 000A5228  7F 8C 04 A6 */	mfsr r28, 0xc
/* 800A82CC 000A522C  7F AD 04 A6 */	mfsr r29, 0xd
/* 800A82D0 000A5230  7F CE 04 A6 */	mfsr r30, 0xe
/* 800A82D4 000A5234  7F EF 04 A6 */	mfsr r31, 0xf
/* 800A82D8 000A5238  BE 02 01 A8 */	stmw r16, 0x1a8(r2)
/* 800A82DC 000A523C  7D 4C 42 E6 */	mftb r10, 0x10c
/* 800A82E0 000A5240  7D 6D 42 E6 */	mftbu r11
/* 800A82E4 000A5244  7D 90 FA A6 */	mfspr r12, 0x3f0
/* 800A82E8 000A5248  7D B1 FA A6 */	mfspr r13, 0x3f1
/* 800A82EC 000A524C  7D DB 02 A6 */	mfspr r14, 0x1b
/* 800A82F0 000A5250  7D FF 42 A6 */	mfpvr r15
/* 800A82F4 000A5254  7E 10 82 A6 */	mfibatu r16, 0
/* 800A82F8 000A5258  7E 31 82 A6 */	mfibatl r17, 0
/* 800A82FC 000A525C  7E 52 82 A6 */	mfibatu r18, 1
/* 800A8300 000A5260  7E 73 82 A6 */	mfibatl r19, 1
/* 800A8304 000A5264  7E 94 82 A6 */	mfibatu r20, 2
/* 800A8308 000A5268  7E B5 82 A6 */	mfibatl r21, 2
/* 800A830C 000A526C  7E D6 82 A6 */	mfibatu r22, 3
/* 800A8310 000A5270  7E F7 82 A6 */	mfibatl r23, 3
/* 800A8314 000A5274  7F 18 82 A6 */	mfdbatu r24, 0
/* 800A8318 000A5278  7F 39 82 A6 */	mfdbatl r25, 0
/* 800A831C 000A527C  7F 5A 82 A6 */	mfdbatu r26, 1
/* 800A8320 000A5280  7F 7B 82 A6 */	mfdbatl r27, 1
/* 800A8324 000A5284  7F 9C 82 A6 */	mfdbatu r28, 2
/* 800A8328 000A5288  7F BD 82 A6 */	mfdbatl r29, 2
/* 800A832C 000A528C  7F DE 82 A6 */	mfdbatu r30, 3
/* 800A8330 000A5290  7F FF 82 A6 */	mfdbatl r31, 3
/* 800A8334 000A5294  BD 42 01 E8 */	stmw r10, 0x1e8(r2)
/* 800A8338 000A5298  7E D9 02 A6 */	mfspr r22, 0x19
/* 800A833C 000A529C  7E F3 02 A6 */	mfdar r23
/* 800A8340 000A52A0  7F 12 02 A6 */	mfdsisr r24
/* 800A8344 000A52A4  7F 30 42 A6 */	mfspr r25, 0x110
/* 800A8348 000A52A8  7F 51 42 A6 */	mfspr r26, 0x111
/* 800A834C 000A52AC  7F 72 42 A6 */	mfspr r27, 0x112
/* 800A8350 000A52B0  7F 93 42 A6 */	mfspr r28, 0x113
/* 800A8354 000A52B4  3B A0 00 00 */	li r29, 0
/* 800A8358 000A52B8  7F D2 FA A6 */	mfspr r30, 0x3f2
/* 800A835C 000A52BC  7F FA 42 A6 */	mfspr r31, 0x11a
/* 800A8360 000A52C0  BE C2 02 5C */	stmw r22, 0x25c(r2)
/* 800A8364 000A52C4  7E 90 E2 A6 */	mfspr r20, 0x390
/* 800A8368 000A52C8  7E B1 E2 A6 */	mfspr r21, 0x391
/* 800A836C 000A52CC  7E D2 E2 A6 */	mfspr r22, 0x392
/* 800A8370 000A52D0  7E F3 E2 A6 */	mfspr r23, 0x393
/* 800A8374 000A52D4  7F 14 E2 A6 */	mfspr r24, 0x394
/* 800A8378 000A52D8  7F 35 E2 A6 */	mfspr r25, 0x395
/* 800A837C 000A52DC  7F 56 E2 A6 */	mfspr r26, 0x396
/* 800A8380 000A52E0  7F 77 E2 A6 */	mfspr r27, 0x397
/* 800A8384 000A52E4  7F 98 E2 A6 */	mfspr r28, 0x398
/* 800A8388 000A52E8  7F B9 E2 A6 */	mfspr r29, 0x399
/* 800A838C 000A52EC  7F DA E2 A6 */	mfspr r30, 0x39a
/* 800A8390 000A52F0  7F FB E2 A6 */	mfspr r31, 0x39b
/* 800A8394 000A52F4  BE 82 02 FC */	stmw r20, 0x2fc(r2)
/* 800A8398 000A52F8  48 00 00 48 */	b lbl_800A83E0
/* 800A839C 000A52FC  7E 00 EA A6 */	mfspr r16, 0x3a0
/* 800A83A0 000A5300  7E 27 EA A6 */	mfspr r17, 0x3a7
/* 800A83A4 000A5304  7E 48 EA A6 */	mfspr r18, 0x3a8
/* 800A83A8 000A5308  7E 69 EA A6 */	mfspr r19, 0x3a9
/* 800A83AC 000A530C  7E 8A EA A6 */	mfspr r20, 0x3aa
/* 800A83B0 000A5310  7E AB EA A6 */	mfspr r21, 0x3ab
/* 800A83B4 000A5314  7E CC EA A6 */	mfspr r22, 0x3ac
/* 800A83B8 000A5318  7E ED EA A6 */	mfspr r23, 0x3ad
/* 800A83BC 000A531C  7F 0E EA A6 */	mfspr r24, 0x3ae
/* 800A83C0 000A5320  7F 2F EA A6 */	mfspr r25, 0x3af
/* 800A83C4 000A5324  7F 50 EA A6 */	mfspr r26, 0x3b0
/* 800A83C8 000A5328  7F 77 EA A6 */	mfspr r27, 0x3b7
/* 800A83CC 000A532C  7F 9F EA A6 */	mfspr r28, 0x3bf
/* 800A83D0 000A5330  7F B6 FA A6 */	mfspr r29, 0x3f6
/* 800A83D4 000A5334  7F D7 FA A6 */	mfspr r30, 0x3f7
/* 800A83D8 000A5338  7F FF FA A6 */	mfspr r31, 0x3ff
/* 800A83DC 000A533C  BE 02 02 B8 */	stmw r16, 0x2b8(r2)
lbl_800A83E0:
/* 800A83E0 000A5340  7E 75 FA A6 */	mfspr r19, 0x3f5
/* 800A83E4 000A5344  7E 99 EA A6 */	mfspr r20, 0x3b9
/* 800A83E8 000A5348  7E BA EA A6 */	mfspr r21, 0x3ba
/* 800A83EC 000A534C  7E DD EA A6 */	mfspr r22, 0x3bd
/* 800A83F0 000A5350  7E FE EA A6 */	mfspr r23, 0x3be
/* 800A83F4 000A5354  7F 1B EA A6 */	mfspr r24, 0x3bb
/* 800A83F8 000A5358  7F 38 EA A6 */	mfspr r25, 0x3b8
/* 800A83FC 000A535C  7F 5C EA A6 */	mfspr r26, 0x3bc
/* 800A8400 000A5360  7F 7C FA A6 */	mfspr r27, 0x3fc
/* 800A8404 000A5364  7F 9D FA A6 */	mfspr r28, 0x3fd
/* 800A8408 000A5368  7F BE FA A6 */	mfspr r29, 0x3fe
/* 800A840C 000A536C  7F DB FA A6 */	mfspr r30, 0x3FB
/* 800A8410 000A5370  7F F9 FA A6 */	mfspr r31, 0x3f9
/* 800A8414 000A5374  BE 62 02 84 */	stmw r19, 0x284(r2)
/* 800A8418 000A5378  4E 80 00 20 */	blr 
/* 800A841C 000A537C  7F 30 F2 A6 */	mfspr r25, 0x3d0
/* 800A8420 000A5380  7F 51 F2 A6 */	mfspr r26, 0x3d1
/* 800A8424 000A5384  7F 72 F2 A6 */	mfspr r27, 0x3d2
/* 800A8428 000A5388  7F 93 F2 A6 */	mfspr r28, 0x3d3
/* 800A842C 000A538C  7F B4 F2 A6 */	mfspr r29, 0x3D4
/* 800A8430 000A5390  7F D5 F2 A6 */	mfspr r30, 0x3D5
/* 800A8434 000A5394  7F F6 F2 A6 */	mfspr r31, 0x3d6
/* 800A8438 000A5398  BF 22 02 40 */	stmw r25, 0x240(r2)
/* 800A843C 000A539C  7F F6 02 A6 */	mfspr r31, 0x16
/* 800A8440 000A53A0  93 E2 02 78 */	stw r31, 0x278(r2)
/* 800A8444 000A53A4  4E 80 00 20 */	blr 

.global TRKRestoreExtended1Block
TRKRestoreExtended1Block:
/* 800A8448 000A53A8  3C 40 80 20 */	lis r2, gTRKCPUState@h
/* 800A844C 000A53AC  60 42 B0 78 */	ori r2, r2, gTRKCPUState@l
/* 800A8450 000A53B0  3C A0 80 0E */	lis r5, gTRKRestoreFlags@h
/* 800A8454 000A53B4  60 A5 21 E8 */	ori r5, r5, gTRKRestoreFlags@l
/* 800A8458 000A53B8  88 65 00 00 */	lbz r3, 0(r5)
/* 800A845C 000A53BC  88 C5 00 01 */	lbz r6, 1(r5)
/* 800A8460 000A53C0  38 00 00 00 */	li r0, 0
/* 800A8464 000A53C4  98 05 00 00 */	stb r0, 0(r5)
/* 800A8468 000A53C8  98 05 00 01 */	stb r0, 1(r5)
/* 800A846C 000A53CC  2C 03 00 00 */	cmpwi r3, 0
/* 800A8470 000A53D0  41 82 00 14 */	beq lbl_800A8484
/* 800A8474 000A53D4  83 02 01 E8 */	lwz r24, 0x1e8(r2)
/* 800A8478 000A53D8  83 22 01 EC */	lwz r25, 0x1ec(r2)
/* 800A847C 000A53DC  7F 1C 43 A6 */	mttbl r24
/* 800A8480 000A53E0  7F 3D 43 A6 */	mttbu r25
lbl_800A8484:
/* 800A8484 000A53E4  BA 82 02 FC */	lmw r20, 0x2fc(r2)
/* 800A8488 000A53E8  7E 90 E3 A6 */	mtspr 0x390, r20
/* 800A848C 000A53EC  7E B1 E3 A6 */	mtspr 0x391, r21
/* 800A8490 000A53F0  7E D2 E3 A6 */	mtspr 0x392, r22
/* 800A8494 000A53F4  7E F3 E3 A6 */	mtspr 0x393, r23
/* 800A8498 000A53F8  7F 14 E3 A6 */	mtspr 0x394, r24
/* 800A849C 000A53FC  7F 35 E3 A6 */	mtspr 0x395, r25
/* 800A84A0 000A5400  7F 56 E3 A6 */	mtspr 0x396, r26
/* 800A84A4 000A5404  7F 77 E3 A6 */	mtspr 0x397, r27
/* 800A84A8 000A5408  7F 98 E3 A6 */	mtspr 0x398, r28
/* 800A84AC 000A540C  7F DA E3 A6 */	mtspr 0x39a, r30
/* 800A84B0 000A5410  7F FB E3 A6 */	mtspr 0x39b, r31
/* 800A84B4 000A5414  48 00 00 1C */	b lbl_800A84D0
/* 800A84B8 000A5418  BB 42 02 E0 */	lmw r26, 0x2e0(r2)
/* 800A84BC 000A541C  7F 50 EB A6 */	mtspr 0x3b0, r26
/* 800A84C0 000A5420  7F 77 EB A6 */	mtspr 0x3b7, r27
/* 800A84C4 000A5424  7F B6 FB A6 */	mtspr 0x3f6, r29
/* 800A84C8 000A5428  7F D7 FB A6 */	mtspr 0x3f7, r30
/* 800A84CC 000A542C  7F FF FB A6 */	mtspr 0x3ff, r31
lbl_800A84D0:
/* 800A84D0 000A5430  BA 62 02 84 */	lmw r19, 0x284(r2)
/* 800A84D4 000A5434  7E 75 FB A6 */	mtspr 0x3f5, r19
/* 800A84D8 000A5438  7E 99 EB A6 */	mtspr 0x3b9, r20
/* 800A84DC 000A543C  7E BA EB A6 */	mtspr 0x3ba, r21
/* 800A84E0 000A5440  7E DD EB A6 */	mtspr 0x3bd, r22
/* 800A84E4 000A5444  7E FE EB A6 */	mtspr 0x3be, r23
/* 800A84E8 000A5448  7F 1B EB A6 */	mtspr 0x3bb, r24
/* 800A84EC 000A544C  7F 38 EB A6 */	mtspr 0x3b8, r25
/* 800A84F0 000A5450  7F 5C EB A6 */	mtspr 0x3bc, r26
/* 800A84F4 000A5454  7F 7C FB A6 */	mtspr 0x3fc, r27
/* 800A84F8 000A5458  7F 9D FB A6 */	mtspr 0x3fd, r28
/* 800A84FC 000A545C  7F BE FB A6 */	mtspr 0x3fe, r29
/* 800A8500 000A5460  7F DB FB A6 */	mtictc r30
/* 800A8504 000A5464  7F F9 FB A6 */	mtspr 0x3f9, r31
/* 800A8508 000A5468  48 00 00 34 */	b lbl_800A853C
/* 800A850C 000A546C  2C 06 00 00 */	cmpwi r6, 0
/* 800A8510 000A5470  41 82 00 0C */	beq lbl_800A851C
/* 800A8514 000A5474  83 42 02 78 */	lwz r26, 0x278(r2)
/* 800A8518 000A5478  7F 56 03 A6 */	mtspr 0x16, r26
lbl_800A851C:
/* 800A851C 000A547C  BB 22 02 40 */	lmw r25, 0x240(r2)
/* 800A8520 000A5480  7F 30 F3 A6 */	mtspr 0x3d0, r25
/* 800A8524 000A5484  7F 51 F3 A6 */	mtspr 0x3d1, r26
/* 800A8528 000A5488  7F 72 F3 A6 */	mtspr 0x3d2, r27
/* 800A852C 000A548C  7F 93 F3 A6 */	mtspr 0x3d3, r28
/* 800A8530 000A5490  7F B4 F3 A6 */	mtspr 0x3D4, r29
/* 800A8534 000A5494  7F D5 F3 A6 */	mtspr 0x3D5, r30
/* 800A8538 000A5498  7F F6 F3 A6 */	mtspr 0x3d6, r31
lbl_800A853C:
/* 800A853C 000A549C  BA 02 01 A8 */	lmw r16, 0x1a8(r2)
/* 800A8540 000A54A0  7E 00 01 A4 */	mtsr 0, r16
/* 800A8544 000A54A4  7E 21 01 A4 */	mtsr 1, r17
/* 800A8548 000A54A8  7E 42 01 A4 */	mtsr 2, r18
/* 800A854C 000A54AC  7E 63 01 A4 */	mtsr 3, r19
/* 800A8550 000A54B0  7E 84 01 A4 */	mtsr 4, r20
/* 800A8554 000A54B4  7E A5 01 A4 */	mtsr 5, r21
/* 800A8558 000A54B8  7E C6 01 A4 */	mtsr 6, r22
/* 800A855C 000A54BC  7E E7 01 A4 */	mtsr 7, r23
/* 800A8560 000A54C0  7F 08 01 A4 */	mtsr 8, r24
/* 800A8564 000A54C4  7F 29 01 A4 */	mtsr 9, r25
/* 800A8568 000A54C8  7F 4A 01 A4 */	mtsr 0xa, r26
/* 800A856C 000A54CC  7F 6B 01 A4 */	mtsr 0xb, r27
/* 800A8570 000A54D0  7F 8C 01 A4 */	mtsr 0xc, r28
/* 800A8574 000A54D4  7F AD 01 A4 */	mtsr 0xd, r29
/* 800A8578 000A54D8  7F CE 01 A4 */	mtsr 0xe, r30
/* 800A857C 000A54DC  7F EF 01 A4 */	mtsr 0xf, r31
/* 800A8580 000A54E0  B9 82 01 F0 */	lmw r12, 0x1f0(r2)
/* 800A8584 000A54E4  7D 90 FB A6 */	mtspr 0x3f0, r12
/* 800A8588 000A54E8  7D B1 FB A6 */	mtspr 0x3f1, r13
/* 800A858C 000A54EC  7D DB 03 A6 */	mtspr 0x1b, r14
/* 800A8590 000A54F0  7D FF 43 A6 */	mtspr 0x11f, r15
/* 800A8594 000A54F4  7E 10 83 A6 */	mtibatu 0, r16
/* 800A8598 000A54F8  7E 31 83 A6 */	mtibatl 0, r17
/* 800A859C 000A54FC  7E 52 83 A6 */	mtibatu 1, r18
/* 800A85A0 000A5500  7E 73 83 A6 */	mtibatl 1, r19
/* 800A85A4 000A5504  7E 94 83 A6 */	mtibatu 2, r20
/* 800A85A8 000A5508  7E B5 83 A6 */	mtibatl 2, r21
/* 800A85AC 000A550C  7E D6 83 A6 */	mtibatu 3, r22
/* 800A85B0 000A5510  7E F7 83 A6 */	mtibatl 3, r23
/* 800A85B4 000A5514  7F 18 83 A6 */	mtdbatu 0, r24
/* 800A85B8 000A5518  7F 39 83 A6 */	mtdbatl 0, r25
/* 800A85BC 000A551C  7F 5A 83 A6 */	mtdbatu 1, r26
/* 800A85C0 000A5520  7F 7B 83 A6 */	mtdbatl 1, r27
/* 800A85C4 000A5524  7F 9C 83 A6 */	mtdbatu 2, r28
/* 800A85C8 000A5528  7F BD 83 A6 */	mtdbatl 2, r29
/* 800A85CC 000A552C  7F DE 83 A6 */	mtdbatu 3, r30
/* 800A85D0 000A5530  7F FF 83 A6 */	mtdbatl 3, r31
/* 800A85D4 000A5534  BA C2 02 5C */	lmw r22, 0x25c(r2)
/* 800A85D8 000A5538  7E D9 03 A6 */	mtspr 0x19, r22
/* 800A85DC 000A553C  7E F3 03 A6 */	mtdar r23
/* 800A85E0 000A5540  7F 12 03 A6 */	mtdsisr r24
/* 800A85E4 000A5544  7F 30 43 A6 */	mtspr 0x110, r25
/* 800A85E8 000A5548  7F 51 43 A6 */	mtspr 0x111, r26
/* 800A85EC 000A554C  7F 72 43 A6 */	mtspr 0x112, r27
/* 800A85F0 000A5550  7F 93 43 A6 */	mtspr 0x113, r28
/* 800A85F4 000A5554  7F D2 FB A6 */	mtspr 0x3f2, r30
/* 800A85F8 000A5558  7F FA 43 A6 */	mtspr 0x11a, r31
/* 800A85FC 000A555C  4E 80 00 20 */	blr 

.global TRKTargetCPUMinorType
TRKTargetCPUMinorType:
/* 800A8600 000A5560  38 60 00 54 */	li r3, 0x54
/* 800A8604 000A5564  4E 80 00 20 */	blr 
