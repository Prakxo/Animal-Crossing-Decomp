lbl_80408FD0:
/* 80408FD0  C0 63 00 04 */	lfs f3, 4(r3)
/* 80408FD4  C0 44 00 08 */	lfs f2, 8(r4)
/* 80408FD8  C0 23 00 08 */	lfs f1, 8(r3)
/* 80408FDC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80408FE0  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80408FE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80408FE8  EC 02 00 28 */	fsubs f0, f2, f0
/* 80408FEC  D0 05 00 00 */	stfs f0, 0(r5)
/* 80408FF0  C0 63 00 08 */	lfs f3, 8(r3)
/* 80408FF4  C0 44 00 00 */	lfs f2, 0(r4)
/* 80408FF8  C0 23 00 00 */	lfs f1, 0(r3)
/* 80408FFC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80409000  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80409004  EC 01 00 32 */	fmuls f0, f1, f0
/* 80409008  EC 02 00 28 */	fsubs f0, f2, f0
/* 8040900C  D0 05 00 04 */	stfs f0, 4(r5)
/* 80409010  C0 63 00 00 */	lfs f3, 0(r3)
/* 80409014  C0 44 00 04 */	lfs f2, 4(r4)
/* 80409018  C0 23 00 04 */	lfs f1, 4(r3)
/* 8040901C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80409020  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80409024  EC 01 00 32 */	fmuls f0, f1, f0
/* 80409028  EC 02 00 28 */	fsubs f0, f2, f0
/* 8040902C  D0 05 00 08 */	stfs f0, 8(r5)
/* 80409030  4E 80 00 20 */	blr 
