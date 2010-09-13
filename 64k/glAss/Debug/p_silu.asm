	TITLE	D:\prj64k\glAss (eventad)\parts\p_silu.cpp
	.386P
include listing.inc
if @Version gt 510
.model FLAT
else
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
_BSS	SEGMENT DWORD USE32 PUBLIC 'BSS'
_BSS	ENDS
$$SYMBOLS	SEGMENT BYTE USE32 'DEBSYM'
$$SYMBOLS	ENDS
$$TYPES	SEGMENT BYTE USE32 'DEBTYP'
$$TYPES	ENDS
_TLS	SEGMENT DWORD USE32 PUBLIC 'TLS'
_TLS	ENDS
;	COMDAT _IsEqualGUID
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _==
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_silu_rit@@YAXM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_silu_klutt@@YAXMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_silu_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?psilufunc@@YAXMMPAM00MM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	__real@4@4001a000000000000000
PUBLIC	__real@4@4004a000000000000000
PUBLIC	__real@4@4000c000000000000000
PUBLIC	__real@4@40008000000000000000
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@4@4002f000000000000000
PUBLIC	__real@4@4003f000000000000000
PUBLIC	__real@4@4002a000000000000000
PUBLIC	__real@4@4001c000000000000000
PUBLIC	__real@4@40028000000000000000
PUBLIC	__real@4@40048c00000000000000
PUBLIC	__real@4@4001e000000000000000
PUBLIC	__real@4@4005c800000000000000
PUBLIC	__real@4@3fff8ccccd0000000000
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@3fff99999a0000000000
PUBLIC	__real@4@3fffa666660000000000
PUBLIC	__real@4@3fffb333330000000000
PUBLIC	__real@4@3fffc000000000000000
PUBLIC	__real@4@3fffcccccd0000000000
PUBLIC	__real@4@3fffd9999a0000000000
PUBLIC	__real@4@3fffe666660000000000
PUBLIC	__real@4@3ffff333330000000000
PUBLIC	__real@4@40008666660000000000
PUBLIC	__real@4@40008ccccd0000000000
PUBLIC	__real@4@40009333330000000000
PUBLIC	?psilufunc@@YAXMMPAM00MM@Z			; psilufunc
PUBLIC	?p_silu_rit@@YAXM@Z				; p_silu_rit
EXTRN	__fltused:NEAR
EXTRN	__imp__glPointSize@4:NEAR
EXTRN	__imp__glPopMatrix@0:NEAR
EXTRN	__imp__glPushMatrix@0:NEAR
EXTRN	__imp__glRotatef@16:NEAR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	__imp__glEnd@0:NEAR
;	COMDAT __real@4@4001a000000000000000
; File D:\prj64k\glAss (eventad)\parts\p_silu.cpp
CONST	SEGMENT
__real@4@4001a000000000000000 DD 040a00000r	; 5
CONST	ENDS
;	COMDAT __real@4@4004a000000000000000
CONST	SEGMENT
__real@4@4004a000000000000000 DD 042200000r	; 40
CONST	ENDS
;	COMDAT __real@4@4000c000000000000000
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT __real@4@40008000000000000000
CONST	SEGMENT
__real@4@40008000000000000000 DD 040000000r	; 2
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@4@4002f000000000000000
CONST	SEGMENT
__real@4@4002f000000000000000 DD 041700000r	; 15
CONST	ENDS
;	COMDAT __real@4@4003f000000000000000
CONST	SEGMENT
__real@4@4003f000000000000000 DD 041f00000r	; 30
CONST	ENDS
;	COMDAT __real@4@4002a000000000000000
CONST	SEGMENT
__real@4@4002a000000000000000 DD 041200000r	; 10
CONST	ENDS
;	COMDAT __real@4@4001c000000000000000
CONST	SEGMENT
__real@4@4001c000000000000000 DD 040c00000r	; 6
CONST	ENDS
;	COMDAT __real@4@40028000000000000000
CONST	SEGMENT
__real@4@40028000000000000000 DD 041000000r	; 8
CONST	ENDS
;	COMDAT __real@4@40048c00000000000000
CONST	SEGMENT
__real@4@40048c00000000000000 DD 0420c0000r	; 35
CONST	ENDS
;	COMDAT __real@4@4001e000000000000000
CONST	SEGMENT
__real@4@4001e000000000000000 DD 040e00000r	; 7
CONST	ENDS
;	COMDAT __real@4@4005c800000000000000
CONST	SEGMENT
__real@4@4005c800000000000000 DD 042c80000r	; 100
CONST	ENDS
;	COMDAT __real@4@3fff8ccccd0000000000
CONST	SEGMENT
__real@4@3fff8ccccd0000000000 DD 03f8ccccdr	; 1.1
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@3fff99999a0000000000
CONST	SEGMENT
__real@4@3fff99999a0000000000 DD 03f99999ar	; 1.2
CONST	ENDS
;	COMDAT __real@4@3fffa666660000000000
CONST	SEGMENT
__real@4@3fffa666660000000000 DD 03fa66666r	; 1.3
CONST	ENDS
;	COMDAT __real@4@3fffb333330000000000
CONST	SEGMENT
__real@4@3fffb333330000000000 DD 03fb33333r	; 1.4
CONST	ENDS
;	COMDAT __real@4@3fffc000000000000000
CONST	SEGMENT
__real@4@3fffc000000000000000 DD 03fc00000r	; 1.5
CONST	ENDS
;	COMDAT __real@4@3fffcccccd0000000000
CONST	SEGMENT
__real@4@3fffcccccd0000000000 DD 03fcccccdr	; 1.6
CONST	ENDS
;	COMDAT __real@4@3fffd9999a0000000000
CONST	SEGMENT
__real@4@3fffd9999a0000000000 DD 03fd9999ar	; 1.7
CONST	ENDS
;	COMDAT __real@4@3fffe666660000000000
CONST	SEGMENT
__real@4@3fffe666660000000000 DD 03fe66666r	; 1.8
CONST	ENDS
;	COMDAT __real@4@3ffff333330000000000
CONST	SEGMENT
__real@4@3ffff333330000000000 DD 03ff33333r	; 1.9
CONST	ENDS
;	COMDAT __real@4@40008666660000000000
CONST	SEGMENT
__real@4@40008666660000000000 DD 040066666r	; 2.1
CONST	ENDS
;	COMDAT __real@4@40008ccccd0000000000
CONST	SEGMENT
__real@4@40008ccccd0000000000 DD 0400ccccdr	; 2.2
CONST	ENDS
;	COMDAT __real@4@40009333330000000000
CONST	SEGMENT
__real@4@40009333330000000000 DD 040133333r	; 2.3
CONST	ENDS
;	COMDAT ?p_silu_rit@@YAXM@Z
_TEXT	SEGMENT
_t$ = 8
_u$ = -4
_v$ = -8
_x$ = -12
_y$ = -16
_z$ = -20
?p_silu_rit@@YAXM@Z PROC NEAR				; p_silu_rit, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_silu.cpp
; Line 12
	push	ebp
	mov	ebp, esp
	sub	esp, 84					; 00000054H
	push	ebx
	push	esi
	push	edi
; Line 16
	call	DWORD PTR __imp__glPushMatrix@0
; Line 18
	push	0
	push	0
	push	1065353216				; 3f800000H
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4001a000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 19
	push	0
	push	1065353216				; 3f800000H
	push	0
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4004a000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 20
	push	1065353216				; 3f800000H
	push	0
	push	0
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000c000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 21
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@40008000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L19441
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@40018000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L19441
; Line 22
	push	0
	push	0
	push	1065353216				; 3f800000H
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4002f000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 23
	push	0
	push	1065353216				; 3f800000H
	push	0
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4003f000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 24
	push	1065353216				; 3f800000H
	push	0
	push	0
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4002a000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 25
	jmp	SHORT $L19443
$L19441:
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@4001c000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L19443
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@40028000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L19443
; Line 26
	push	0
	push	0
	push	1065353216				; 3f800000H
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@40048c00000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 27
	push	0
	push	1065353216				; 3f800000H
	push	0
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@40018000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 28
	push	1065353216				; 3f800000H
	push	0
	push	0
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4001e000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
$L19443:
; Line 30
	push	1077936128				; 40400000H
	call	DWORD PTR __imp__glPointSize@4
; Line 33
	push	0
	call	DWORD PTR __imp__glBegin@4
; Line 34
	mov	DWORD PTR _u$[ebp], 0
	jmp	SHORT $L19444
$L19445:
	mov	eax, DWORD PTR _u$[ebp]
	add	eax, 1
	mov	DWORD PTR _u$[ebp], eax
$L19444:
	cmp	DWORD PTR _u$[ebp], 100			; 00000064H
	jge	$L19446
; Line 35
	mov	DWORD PTR _v$[ebp], 0
	jmp	SHORT $L19447
$L19448:
	mov	ecx, DWORD PTR _v$[ebp]
	add	ecx, 1
	mov	DWORD PTR _v$[ebp], ecx
$L19447:
	cmp	DWORD PTR _v$[ebp], 100			; 00000064H
	jg	SHORT $L19449
; Line 36
	mov	eax, DWORD PTR _u$[ebp]
	cdq
	mov	ecx, 10					; 0000000aH
	idiv	ecx
	test	edx, edx
	je	SHORT $L19451
	mov	eax, DWORD PTR _v$[ebp]
	cdq
	mov	ecx, 10					; 0000000aH
	idiv	ecx
	test	edx, edx
	jne	SHORT $L19450
$L19451:
; Line 37
	fild	DWORD PTR _v$[ebp]
	fdiv	DWORD PTR __real@4@4005c800000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fild	DWORD PTR _u$[ebp]
	fdiv	DWORD PTR __real@4@4005c800000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	lea	edx, DWORD PTR _z$[ebp]
	push	edx
	lea	eax, DWORD PTR _y$[ebp]
	push	eax
	lea	ecx, DWORD PTR _x$[ebp]
	push	ecx
	mov	edx, DWORD PTR _t$[ebp]
	push	edx
	push	0
	call	?psilufunc@@YAXMMPAM00MM@Z		; psilufunc
	add	esp, 28					; 0000001cH
; Line 38
	push	1036831949				; 3dcccccdH
	push	1056964608				; 3f000000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glColor3f@12
; Line 39
	mov	eax, DWORD PTR _z$[ebp]
	push	eax
	mov	ecx, DWORD PTR _y$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x$[ebp]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
$L19450:
; Line 41
	jmp	$L19448
$L19449:
; Line 42
	jmp	$L19445
$L19446:
; Line 43
	mov	DWORD PTR _u$[ebp], 0
	jmp	SHORT $L19454
$L19455:
	mov	eax, DWORD PTR _u$[ebp]
	add	eax, 1
	mov	DWORD PTR _u$[ebp], eax
$L19454:
	cmp	DWORD PTR _u$[ebp], 100			; 00000064H
	jge	$L19456
; Line 44
	mov	DWORD PTR _v$[ebp], 0
	jmp	SHORT $L19457
$L19458:
	mov	ecx, DWORD PTR _v$[ebp]
	add	ecx, 1
	mov	DWORD PTR _v$[ebp], ecx
$L19457:
	cmp	DWORD PTR _v$[ebp], 100			; 00000064H
	jg	$L19459
; Line 45
	mov	eax, DWORD PTR _v$[ebp]
	cdq
	mov	ecx, 10					; 0000000aH
	idiv	ecx
	test	edx, edx
	jne	$L19460
; Line 46
	fild	DWORD PTR _v$[ebp]
	fdiv	DWORD PTR __real@4@4005c800000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fild	DWORD PTR _u$[ebp]
	fdiv	DWORD PTR __real@4@4005c800000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	lea	edx, DWORD PTR _z$[ebp]
	push	edx
	lea	eax, DWORD PTR _y$[ebp]
	push	eax
	lea	ecx, DWORD PTR _x$[ebp]
	push	ecx
	mov	edx, DWORD PTR _t$[ebp]
	push	edx
	push	0
	call	?psilufunc@@YAXMMPAM00MM@Z		; psilufunc
	add	esp, 28					; 0000001cH
; Line 48
	push	1045690319				; 3e53f7cfH
	push	1041865114				; 3e19999aH
	push	1036831949				; 3dcccccdH
	call	DWORD PTR __imp__glColor3f@12
; Line 49
	fld	DWORD PTR _z$[ebp]
	fmul	DWORD PTR __real@4@3fff8ccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fmul	DWORD PTR __real@4@3fff8ccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 50
	fld	DWORD PTR _z$[ebp]
	fmul	DWORD PTR __real@4@3fff99999a0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fmul	DWORD PTR __real@4@3fff99999a0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 51
	fld	DWORD PTR _z$[ebp]
	fmul	DWORD PTR __real@4@3fffa666660000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fmul	DWORD PTR __real@4@3fffa666660000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 53
	push	1037771473				; 3ddb22d1H
	push	1038174126				; 3de147aeH
	push	1034147594				; 3da3d70aH
	call	DWORD PTR __imp__glColor3f@12
; Line 54
	fld	DWORD PTR _z$[ebp]
	fmul	DWORD PTR __real@4@3fffb333330000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fmul	DWORD PTR __real@4@3fffb333330000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 55
	fld	DWORD PTR _z$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 57
	push	1030322389				; 3d6978d5H
	push	1035489772				; 3db851ecH
	push	1031127695				; 3d75c28fH
	call	DWORD PTR __imp__glColor3f@12
; Line 58
	fld	DWORD PTR _z$[ebp]
	fmul	DWORD PTR __real@4@3fffcccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fmul	DWORD PTR __real@4@3fffcccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 59
	fld	DWORD PTR _z$[ebp]
	fmul	DWORD PTR __real@4@3fffd9999a0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fmul	DWORD PTR __real@4@3fffd9999a0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 61
	push	1015759766				; 3c8b4396H
	push	1032805417				; 3d8f5c29H
	push	1025758986				; 3d23d70aH
	call	DWORD PTR __imp__glColor3f@12
; Line 62
	fld	DWORD PTR _z$[ebp]
	fmul	DWORD PTR __real@4@3fffe666660000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fmul	DWORD PTR __real@4@3fffe666660000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 63
	fld	DWORD PTR _z$[ebp]
	fmul	DWORD PTR __real@4@3ffff333330000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fmul	DWORD PTR __real@4@3ffff333330000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 65
	push	1004888130				; 3be56042H
	push	1028443341				; 3d4ccccdH
	push	1017370378				; 3ca3d70aH
	call	DWORD PTR __imp__glColor3f@12
; Line 66
	fld	DWORD PTR _z$[ebp]
	fadd	ST(0), ST(0)
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	ST(0), ST(0)
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 67
	fld	DWORD PTR _z$[ebp]
	fmul	DWORD PTR __real@4@40008666660000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fmul	DWORD PTR __real@4@40008666660000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 69
	push	996499522				; 3b656042H
	push	1020054733				; 3ccccccdH
	push	1008981770				; 3c23d70aH
	call	DWORD PTR __imp__glColor3f@12
; Line 70
	fld	DWORD PTR _z$[ebp]
	fmul	DWORD PTR __real@4@40008ccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fmul	DWORD PTR __real@4@40008ccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 71
	fld	DWORD PTR _z$[ebp]
	fmul	DWORD PTR __real@4@40009333330000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fmul	DWORD PTR __real@4@40009333330000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
$L19460:
; Line 73
	jmp	$L19458
$L19459:
; Line 74
	jmp	$L19455
$L19456:
; Line 75
	call	DWORD PTR __imp__glEnd@0
; Line 79
	call	DWORD PTR __imp__glPopMatrix@0
; Line 80
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_silu_rit@@YAXM@Z ENDP				; p_silu_rit
_TEXT	ENDS
PUBLIC	?p_silu_klutt@@YAXMMM@Z				; p_silu_klutt
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@8@4000c916872b020c4800
PUBLIC	__real@8@4004c800000000000000
EXTRN	_cos:NEAR
EXTRN	_sin:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
;	COMDAT __real@4@3ffd99999a0000000000
; File D:\prj64k\glAss (eventad)\parts\p_silu.cpp
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@8@4000c916872b020c4800
CONST	SEGMENT
__real@8@4000c916872b020c4800 DQ 0400922d0e5604189r ; 3.142
CONST	ENDS
;	COMDAT __real@8@4004c800000000000000
CONST	SEGMENT
__real@8@4004c800000000000000 DQ 04049000000000000r ; 50
CONST	ENDS
;	COMDAT ?p_silu_klutt@@YAXMMM@Z
_TEXT	SEGMENT
_a$ = 8
_b$ = 12
_r0$ = 16
_r1$ = -4
_r2$ = -8
_i$ = -12
_x1$19480 = -16
_y1$19481 = -20
_x2$19482 = -24
_y2$19483 = -28
_u1$19484 = -32
_u2$19485 = -36
?p_silu_klutt@@YAXMMM@Z PROC NEAR			; p_silu_klutt, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_silu.cpp
; Line 82
	push	ebp
	mov	ebp, esp
	sub	esp, 136				; 00000088H
	push	ebx
	push	esi
	push	edi
; Line 84
	push	103					; 00000067H
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 85
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 87
	fld	DWORD PTR _r0$[ebp]
	fdiv	DWORD PTR __real@4@4002a000000000000000
	fstp	DWORD PTR -40+[ebp]
	fld	DWORD PTR _a$[ebp]
	fdiv	DWORD PTR __real@4@40008000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -44+[ebp]
	fmul	DWORD PTR -40+[ebp]
	fadd	DWORD PTR _r0$[ebp]
	fstp	DWORD PTR _r1$[ebp]
; Line 88
	fld	DWORD PTR _r0$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	fstp	DWORD PTR -48+[ebp]
	fld	DWORD PTR _a$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -52+[ebp]
	fmul	DWORD PTR -48+[ebp]
	fsubr	DWORD PTR _r0$[ebp]
	fstp	DWORD PTR _r2$[ebp]
; Line 90
	push	0
	fld	DWORD PTR _a$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -56+[ebp]
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fadd	DWORD PTR __real@4@3ffd99999a0000000000
	fmul	DWORD PTR _b$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _a$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -60+[ebp]
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fadd	DWORD PTR __real@4@3ffd99999a0000000000
	fmul	DWORD PTR _b$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12
; Line 92
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19477
$L19478:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$L19477:
	cmp	DWORD PTR _i$[ebp], 100			; 00000064H
	jge	$L19479
; Line 96
	fild	DWORD PTR _i$[ebp]
	fmul	QWORD PTR __real@8@4000c916872b020c4800
	fdiv	QWORD PTR __real@8@4004c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fstp	DWORD PTR _x1$19480[ebp]
; Line 97
	fild	DWORD PTR _i$[ebp]
	fmul	QWORD PTR __real@8@4000c916872b020c4800
	fdiv	QWORD PTR __real@8@4004c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fstp	DWORD PTR _y1$19481[ebp]
; Line 98
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	mov	DWORD PTR -64+[ebp], ecx
	fild	DWORD PTR -64+[ebp]
	fmul	QWORD PTR __real@8@4000c916872b020c4800
	fdiv	QWORD PTR __real@8@4004c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fstp	DWORD PTR _x2$19482[ebp]
; Line 99
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, 1
	mov	DWORD PTR -68+[ebp], edx
	fild	DWORD PTR -68+[ebp]
	fmul	QWORD PTR __real@8@4000c916872b020c4800
	fdiv	QWORD PTR __real@8@4004c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fstp	DWORD PTR _y2$19483[ebp]
; Line 101
	fild	DWORD PTR _i$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	fchs
	fadd	DWORD PTR _a$[ebp]
	fstp	DWORD PTR _u1$19484[ebp]
; Line 102
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR -72+[ebp], eax
	fild	DWORD PTR -72+[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	fchs
	fadd	DWORD PTR _a$[ebp]
	fstp	DWORD PTR _u2$19485[ebp]
; Line 104
	push	1065353216				; 3f800000H
	mov	ecx, DWORD PTR _u1$19484[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 105
	push	0
	fld	DWORD PTR _r1$[ebp]
	fmul	DWORD PTR _y1$19481[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _r1$[ebp]
	fmul	DWORD PTR _x1$19480[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 106
	push	0
	mov	edx, DWORD PTR _u1$19484[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 107
	push	0
	fld	DWORD PTR _r2$[ebp]
	fmul	DWORD PTR _y1$19481[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _r2$[ebp]
	fmul	DWORD PTR _x1$19480[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 109
	push	0
	mov	eax, DWORD PTR _u2$19485[ebp]
	push	eax
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 110
	push	0
	fld	DWORD PTR _r2$[ebp]
	fmul	DWORD PTR _y2$19483[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _r2$[ebp]
	fmul	DWORD PTR _x2$19482[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 111
	push	1065353216				; 3f800000H
	mov	ecx, DWORD PTR _u2$19485[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 112
	push	0
	fld	DWORD PTR _r1$[ebp]
	fmul	DWORD PTR _y2$19483[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _r1$[ebp]
	fmul	DWORD PTR _x2$19482[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 114
	jmp	$L19478
$L19479:
; Line 115
	call	DWORD PTR __imp__glEnd@0
; Line 117
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_silu_klutt@@YAXMMM@Z ENDP				; p_silu_klutt
_TEXT	ENDS
PUBLIC	?p_silu_run@@YAXPAUEVENT@@@Z			; p_silu_run
PUBLIC	__real@4@4002c000000000000000
PUBLIC	__real@4@00000000000000000000
PUBLIC	__real@4@3ffd8000000000000000
PUBLIC	__real@4@3ffccccccd0000000000
PUBLIC	__real@4@3ffdcccccd0000000000
PUBLIC	__real@4@3ffbcccccd0000000000
PUBLIC	__real@4@3ffe99999a0000000000
PUBLIC	__real@4@3ffacccccd0000000000
PUBLIC	__real@4@3ffecccccd0000000000
PUBLIC	__real@4@3ff9cccccd0000000000
PUBLIC	__real@4@c0018000000000000000
PUBLIC	__real@4@4002d000000000000000
PUBLIC	__real@4@c002a000000000000000
PUBLIC	__real@4@40029000000000000000
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glOrtho@48:NEAR
EXTRN	__imp__glTranslatef@12:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glFrustum@48:NEAR
;	COMDAT __real@4@4002c000000000000000
; File D:\prj64k\glAss (eventad)\parts\p_silu.cpp
CONST	SEGMENT
__real@4@4002c000000000000000 DD 041400000r	; 12
CONST	ENDS
;	COMDAT __real@4@00000000000000000000
CONST	SEGMENT
__real@4@00000000000000000000 DD 000000000r	; 0
CONST	ENDS
;	COMDAT __real@4@3ffd8000000000000000
CONST	SEGMENT
__real@4@3ffd8000000000000000 DD 03e800000r	; 0.25
CONST	ENDS
;	COMDAT __real@4@3ffccccccd0000000000
CONST	SEGMENT
__real@4@3ffccccccd0000000000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@3ffdcccccd0000000000
CONST	SEGMENT
__real@4@3ffdcccccd0000000000 DD 03ecccccdr	; 0.4
CONST	ENDS
;	COMDAT __real@4@3ffbcccccd0000000000
CONST	SEGMENT
__real@4@3ffbcccccd0000000000 DD 03dcccccdr	; 0.1
CONST	ENDS
;	COMDAT __real@4@3ffe99999a0000000000
CONST	SEGMENT
__real@4@3ffe99999a0000000000 DD 03f19999ar	; 0.6
CONST	ENDS
;	COMDAT __real@4@3ffacccccd0000000000
CONST	SEGMENT
__real@4@3ffacccccd0000000000 DD 03d4ccccdr	; 0.05
CONST	ENDS
;	COMDAT __real@4@3ffecccccd0000000000
CONST	SEGMENT
__real@4@3ffecccccd0000000000 DD 03f4ccccdr	; 0.8
CONST	ENDS
;	COMDAT __real@4@3ff9cccccd0000000000
CONST	SEGMENT
__real@4@3ff9cccccd0000000000 DD 03ccccccdr	; 0.025
CONST	ENDS
;	COMDAT __real@4@c0018000000000000000
CONST	SEGMENT
__real@4@c0018000000000000000 DD 0c0800000r	; -4
CONST	ENDS
;	COMDAT __real@4@4002d000000000000000
CONST	SEGMENT
__real@4@4002d000000000000000 DD 041500000r	; 13
CONST	ENDS
;	COMDAT __real@4@c002a000000000000000
CONST	SEGMENT
__real@4@c002a000000000000000 DD 0c1200000r	; -10
CONST	ENDS
;	COMDAT __real@4@40029000000000000000
CONST	SEGMENT
__real@4@40029000000000000000 DD 041100000r	; 9
CONST	ENDS
;	COMDAT ?p_silu_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -4
_b$ = -8
_p$19499 = -12
_h$ = -16
?p_silu_run@@YAXPAUEVENT@@@Z PROC NEAR			; p_silu_run, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_silu.cpp
; Line 160
	push	ebp
	mov	ebp, esp
	sub	esp, 80					; 00000050H
	push	ebx
	push	esi
	push	edi
; Line 162
	push	2929					; 00000b71H
	call	DWORD PTR __imp__glDisable@4
; Line 164
	mov	eax, DWORD PTR _e$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _t$[ebp], ecx
; Line 165
	mov	edx, DWORD PTR _e$[ebp]
	mov	eax, DWORD PTR [edx+12]
	mov	DWORD PTR _b$[ebp], eax
; Line 167
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 168
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 170
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 172
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 173
	push	1079574528				; 40590000H
	push	0
	push	-1067909120				; c0590000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	-1074790400				; bff00000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	-1074790400				; bff00000H
	push	0
	call	DWORD PTR __imp__glOrtho@48
; Line 175
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 176
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 230
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glDisable@4
; Line 248
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 249
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 251
	mov	DWORD PTR _b$[ebp], 1065353216		; 3f800000H
; Line 252
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@4002c000000000000000
	fnstsw	ax
	test	ah, 1
	jne	SHORT $L19497
; Line 253
	fld	DWORD PTR _t$[ebp]
	fsub	DWORD PTR __real@4@4002c000000000000000
	fdiv	DWORD PTR __real@4@4000c000000000000000
	fsubr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _b$[ebp]
$L19497:
; Line 260
	push	1060320051				; 3f333333H
	fld	DWORD PTR __real@4@3ffd99999a0000000000
	fmul	DWORD PTR _b$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fsub	DWORD PTR __real@4@00000000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?p_silu_klutt@@YAXMMM@Z			; p_silu_klutt
	add	esp, 12					; 0000000cH
; Line 261
	push	1061158912				; 3f400000H
	fld	DWORD PTR __real@4@3ffd8000000000000000
	fmul	DWORD PTR _b$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fsub	DWORD PTR __real@4@3ffccccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?p_silu_klutt@@YAXMMM@Z			; p_silu_klutt
	add	esp, 12					; 0000000cH
; Line 262
	push	1061997773				; 3f4ccccdH
	fld	DWORD PTR __real@4@3ffccccccd0000000000
	fmul	DWORD PTR _b$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fsub	DWORD PTR __real@4@3ffdcccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?p_silu_klutt@@YAXMMM@Z			; p_silu_klutt
	add	esp, 12					; 0000000cH
; Line 263
	push	1062836634				; 3f59999aH
	fld	DWORD PTR __real@4@3ffbcccccd0000000000
	fmul	DWORD PTR _b$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fsub	DWORD PTR __real@4@3ffe99999a0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?p_silu_klutt@@YAXMMM@Z			; p_silu_klutt
	add	esp, 12					; 0000000cH
; Line 264
	push	1063675494				; 3f666666H
	fld	DWORD PTR __real@4@3ffacccccd0000000000
	fmul	DWORD PTR _b$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fsub	DWORD PTR __real@4@3ffecccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?p_silu_klutt@@YAXMMM@Z			; p_silu_klutt
	add	esp, 12					; 0000000cH
; Line 265
	push	1064514355				; 3f733333H
	fld	DWORD PTR __real@4@3ff9cccccd0000000000
	fmul	DWORD PTR _b$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fsub	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?p_silu_klutt@@YAXMMM@Z			; p_silu_klutt
	add	esp, 12					; 0000000cH
; Line 273
	push	1076756480				; 402e0000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1072168960				; 3fe80000H
	push	0
	push	-1075314688				; bfe80000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	-1074790400				; bff00000H
	push	0
	call	DWORD PTR __imp__glFrustum@48
; Line 275
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@40008000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L19498
; Line 276
	fld	DWORD PTR __real@4@40008000000000000000
	fsub	DWORD PTR _t$[ebp]
	fld	DWORD PTR __real@4@40008000000000000000
	fsub	DWORD PTR _t$[ebp]
	fmulp	ST(1), ST(0)
	fdiv	DWORD PTR __real@4@40018000000000000000
	fsubr	DWORD PTR __real@4@00000000000000000000
	fstp	DWORD PTR _p$19499[ebp]
; Line 277
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000c000000000000000
	fsubr	DWORD PTR __real@4@c0018000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	0
	fld	DWORD PTR __real@4@00000000000000000000
	fadd	DWORD PTR _p$19499[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTranslatef@12
; Line 278
	jmp	SHORT $L19502
$L19498:
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@4002d000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L19501
; Line 279
	fld	DWORD PTR _t$[ebp]
	fsub	DWORD PTR __real@4@4002d000000000000000
	fmul	DWORD PTR __real@4@4001a000000000000000
	fadd	DWORD PTR __real@4@c002a000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	0
	push	0
	call	DWORD PTR __imp__glTranslatef@12
; Line 280
	jmp	SHORT $L19502
$L19501:
; Line 281
	push	-1054867456				; c1200000H
	push	0
	push	0
	call	DWORD PTR __imp__glTranslatef@12
$L19502:
; Line 286
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glDisable@4
; Line 287
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 288
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 291
	mov	ecx, DWORD PTR _t$[ebp]
	push	ecx
	call	?p_silu_rit@@YAXM@Z			; p_silu_rit
	add	esp, 4
; Line 293
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 295
	mov	DWORD PTR _h$[ebp], 1053609165		; 3ecccccdH
; Line 296
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@4000c000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L19504
; Line 297
	fld	DWORD PTR __real@4@4000c000000000000000
	fsub	DWORD PTR _t$[ebp]
	fld	DWORD PTR __real@4@4000c000000000000000
	fsub	DWORD PTR _t$[ebp]
	fmulp	ST(1), ST(0)
	fdiv	DWORD PTR __real@4@40029000000000000000
	fadd	DWORD PTR __real@4@3ffdcccccd0000000000
	fstp	DWORD PTR _h$[ebp]
$L19504:
; Line 300
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_silu_run@@YAXPAUEVENT@@@Z ENDP			; p_silu_run
_TEXT	ENDS
PUBLIC	__real@8@3fffe666666666666800
PUBLIC	__real@4@4000c90fdb0000000000
PUBLIC	__real@4@3ffe8000000000000000
;	COMDAT __real@8@3fffe666666666666800
; File D:\prj64k\glAss (eventad)\parts\p_silu.cpp
CONST	SEGMENT
__real@8@3fffe666666666666800 DQ 03ffccccccccccccdr ; 1.8
CONST	ENDS
;	COMDAT __real@4@4000c90fdb0000000000
CONST	SEGMENT
__real@4@4000c90fdb0000000000 DD 040490fdbr	; 3.14159
CONST	ENDS
;	COMDAT __real@4@3ffe8000000000000000
CONST	SEGMENT
__real@4@3ffe8000000000000000 DD 03f000000r	; 0.5
CONST	ENDS
;	COMDAT ?psilufunc@@YAXMMPAM00MM@Z
_TEXT	SEGMENT
_model$ = 8
_time$ = 12
_px$ = 16
_py$ = 20
_pz$ = 24
_u$ = 28
_v$ = 32
_r2$ = -4
_r$ = -8
?psilufunc@@YAXMMPAM00MM@Z PROC NEAR			; psilufunc, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_silu.cpp
; Line 302
	push	ebp
	mov	ebp, esp
	sub	esp, 96					; 00000060H
	push	ebx
	push	esi
	push	edi
; Line 305
	fld	DWORD PTR _time$[ebp]
	fmul	DWORD PTR _v$[ebp]
	fmul	DWORD PTR __real@4@4000c000000000000000
	fadd	DWORD PTR _model$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -12+[ebp]
	fmul	DWORD PTR __real@4@3ffacccccd0000000000
	fadd	DWORD PTR __real@4@3ffacccccd0000000000
	fstp	DWORD PTR -16+[ebp]
	fld	DWORD PTR _time$[ebp]
	fmul	DWORD PTR _v$[ebp]
	fmul	QWORD PTR __real@8@3fffe666666666666800
	fadd	DWORD PTR _model$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -20+[ebp]
	fmul	DWORD PTR __real@4@3ffacccccd0000000000
	fadd	DWORD PTR -16+[ebp]
	fstp	DWORD PTR _r2$[ebp]
; Line 306
	fld	DWORD PTR _model$[ebp]
	fadd	DWORD PTR _v$[ebp]
	fadd	DWORD PTR _time$[ebp]
	fld	DWORD PTR _model$[ebp]
	fadd	DWORD PTR __real@4@4000c000000000000000
	fmulp	ST(1), ST(0)
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -24+[ebp]
	fmul	DWORD PTR _r2$[ebp]
	fadd	DWORD PTR __real@4@3ffccccccd0000000000
	fstp	DWORD PTR _r$[ebp]
; Line 309
	fld	DWORD PTR _u$[ebp]
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@3ffe8000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -28+[ebp]
	fmul	DWORD PTR _r$[ebp]
	mov	eax, DWORD PTR _px$[ebp]
	fstp	DWORD PTR [eax]
; Line 310
	fld	DWORD PTR _u$[ebp]
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@3ffe8000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -32+[ebp]
	fmul	DWORD PTR _r$[ebp]
	mov	ecx, DWORD PTR _pz$[ebp]
	fstp	DWORD PTR [ecx]
; Line 311
	fld	DWORD PTR _v$[ebp]
	fsub	DWORD PTR __real@4@3ffe8000000000000000
	mov	edx, DWORD PTR _py$[ebp]
	fstp	DWORD PTR [edx]
; Line 313
	mov	eax, DWORD PTR _px$[ebp]
	fld	DWORD PTR [eax]
	fmul	DWORD PTR __real@4@4001c000000000000000
	mov	ecx, DWORD PTR _px$[ebp]
	fstp	DWORD PTR [ecx]
; Line 314
	mov	edx, DWORD PTR _py$[ebp]
	fld	DWORD PTR [edx]
	fmul	DWORD PTR __real@4@4001c000000000000000
	mov	eax, DWORD PTR _py$[ebp]
	fstp	DWORD PTR [eax]
; Line 315
	mov	ecx, DWORD PTR _pz$[ebp]
	fld	DWORD PTR [ecx]
	fmul	DWORD PTR __real@4@4001c000000000000000
	mov	edx, DWORD PTR _pz$[ebp]
	fstp	DWORD PTR [edx]
; Line 317
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?psilufunc@@YAXMMPAM00MM@Z ENDP				; psilufunc
_TEXT	ENDS
END
