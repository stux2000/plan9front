arg=0
sp=13
sb=12

#define NPRIVATES	16

GLOBL	_tos(SB), $4
GLOBL	_errnoloc(SB), $4
GLOBL	_privates(SB), $4
GLOBL	_nprivates(SB), $4

TEXT	_main(SB), 1, $(16+NPRIVATES*4)

	MOVW	$setR12(SB), R(sb)

	/* _tos = arg */
	MOVW	R(arg), _tos(SB)
	MOVW	$errno-68(SP), R1
	MOVW	R1, _errnoloc(SB)
	MOVW	$private-64(SP), R1
	MOVW	R1, _privates(SB)
	MOVW	$NPRIVATES, R1
	MOVW	R1, _nprivates(SB)

	BL	_envsetup(SB)

	/* main(argc, argv, environ); */
	MOVW	environ(SB), R(arg)
	MOVW	R(arg), 12(R(sp))
	MOVW	$inargv+0(FP), R(arg)
	MOVW	R(arg), 8(R(sp))
	MOVW	inargc-4(FP), R(arg)
	MOVW	R(arg), 4(R(sp))
	BL	main(SB)
loop:
	MOVW	R(arg), 4(R(sp))
	BL	exit(SB)
	BL	_div(SB)
	B	loop
