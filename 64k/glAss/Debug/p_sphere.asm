	TITLE	D:\prj64k\glAss (eventad)\parts\p_sphere.cpp
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
;	COMDAT ?p_sf@@YAMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_sphere_function@@YA?AUVECTOR@@MMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_sphere_render@@YAXM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_sphere_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	?p_sf@@YAMMM@Z					; p_sf
EXTRN	__fltused:NEAR
;	COMDAT __real@4@3fff8000000000000000
; File D:\prj64k\glAss (eventad)\parts\p_sphere.cpp
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT ?p_sf@@YAMMM@Z
_TEXT	SEGMENT
?p_sf@@YAMMM@Z PROC NEAR				; p_sf, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_sphere.cpp
; Line 6
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 7
	fld	DWORD PTR __real@4@3fff8000000000000000
; Line 8
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_sf@@YAMMM@Z ENDP					; p_sf
_TEXT	ENDS
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@4000c000000000000000
PUBLIC	__real@4@4004a000000000000000
PUBLIC	__real@4@4000c916870000000000
PUBLIC	__real@4@4004c800000000000000
PUBLIC	__real@4@4004f000000000000000
PUBLIC	__real@4@4003f000000000000000
PUBLIC	__real@8@4000c916872b020c4800
PUBLIC	__real@8@4005c800000000000000
PUBLIC	__real@8@4004c800000000000000
PUBLIC	?p_sphere_function@@YA?AUVECTOR@@MMM@Z		; p_sphere_function
EXTRN	_cos:NEAR
EXTRN	_sin:NEAR
;	COMDAT __real@4@3ffd99999a0000000000
; File D:\prj64k\glAss (eventad)\parts\p_sphere.cpp
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@4000c000000000000000
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT __real@4@4004a000000000000000
CONST	SEGMENT
__real@4@4004a000000000000000 DD 042200000r	; 40
CONST	ENDS
;	COMDAT __real@4@4000c916870000000000
CONST	SEGMENT
__real@4@4000c916870000000000 DD 040491687r	; 3.142
CONST	ENDS
;	COMDAT __real@4@4004c800000000000000
CONST	SEGMENT
__real@4@4004c800000000000000 DD 042480000r	; 50
CONST	ENDS
;	COMDAT __real@4@4004f000000000000000
CONST	SEGMENT
__real@4@4004f000000000000000 DD 042700000r	; 60
CONST	ENDS
;	COMDAT __real@4@4003f000000000000000
CONST	SEGMENT
__real@4@4003f000000000000000 DD 041f00000r	; 30
CONST	ENDS
;	COMDAT __real@8@4000c916872b020c4800
CONST	SEGMENT
__real@8@4000c916872b020c4800 DQ 0400922d0e5604189r ; 3.142
CONST	ENDS
;	COMDAT __real@8@4005c800000000000000
CONST	SEGMENT
__real@8@4005c800000000000000 DQ 04059000000000000r ; 100
CONST	ENDS
;	COMDAT __real@8@4004c800000000000000
CONST	SEGMENT
__real@8@4004c800000000000000 DQ 04049000000000000r ; 50
CONST	ENDS
;	COMDAT ?p_sphere_function@@YA?AUVECTOR@@MMM@Z
_TEXT	SEGMENT
$T19512 = 8
_t$ = 12
_u$ = 16
_v$ = 20
_ve$ = -12
_a$ = -16
_b$ = -20
_r2$ = -24
_r$ = -28
_x$ = -32
_z$ = -36
_y$ = -40
?p_sphere_function@@YA?AUVECTOR@@MMM@Z PROC NEAR	; p_sphere_function, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_sphere.cpp
; Line 14
	push	ebp
	mov	ebp, esp
	sub	esp, 144				; 00000090H
	push	ebx
	push	esi
	push	edi
; Line 18
	fld	DWORD PTR _t$[ebp]
	fadd	ST(0), ST(0)
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -44+[ebp]
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR _a$[ebp]
; Line 19
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -48+[ebp]
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR _b$[ebp]
; Line 20
	fld	DWORD PTR _u$[ebp]
	fmul	DWORD PTR __real@4@4000c000000000000000
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4004a000000000000000
	fsubp	ST(1), ST(0)
	fmul	DWORD PTR __real@4@4000c916870000000000
	fdiv	DWORD PTR __real@4@4004c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -52+[ebp]
	fmul	DWORD PTR _a$[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _r2$[ebp]
; Line 21
	fld	DWORD PTR _v$[ebp]
	fadd	ST(0), ST(0)
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4004f000000000000000
	fsubp	ST(1), ST(0)
	fmul	DWORD PTR __real@4@4000c916870000000000
	fdiv	DWORD PTR __real@4@4004c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -56+[ebp]
	fmul	DWORD PTR _b$[ebp]
	fadd	DWORD PTR _r2$[ebp]
	fst	DWORD PTR _r2$[ebp]
; Line 23
	fmul	DWORD PTR __real@4@4003f000000000000000
	fstp	DWORD PTR -60+[ebp]
	fld	DWORD PTR _v$[ebp]
	fmul	QWORD PTR __real@8@4000c916872b020c4800
	fdiv	QWORD PTR __real@8@4005c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -64+[ebp]
	fmul	DWORD PTR -60+[ebp]
	fstp	DWORD PTR _r$[ebp]
; Line 24
	fld	DWORD PTR _u$[ebp]
	fmul	QWORD PTR __real@8@4000c916872b020c4800
	fdiv	QWORD PTR __real@8@4004c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -68+[ebp]
	fmul	DWORD PTR _r$[ebp]
	fstp	DWORD PTR _x$[ebp]
; Line 25
	fld	DWORD PTR _u$[ebp]
	fmul	QWORD PTR __real@8@4000c916872b020c4800
	fdiv	QWORD PTR __real@8@4004c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -72+[ebp]
	fmul	DWORD PTR _r$[ebp]
	fstp	DWORD PTR _z$[ebp]
; Line 26
	fld	DWORD PTR _r2$[ebp]
	fmul	DWORD PTR __real@4@4003f000000000000000
	fstp	DWORD PTR -76+[ebp]
	fld	DWORD PTR _v$[ebp]
	fmul	QWORD PTR __real@8@4000c916872b020c4800
	fdiv	QWORD PTR __real@8@4005c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -80+[ebp]
	fmul	DWORD PTR -76+[ebp]
	fstp	DWORD PTR _y$[ebp]
; Line 28
	mov	eax, DWORD PTR _x$[ebp]
	mov	DWORD PTR _ve$[ebp], eax
; Line 29
	mov	ecx, DWORD PTR _y$[ebp]
	mov	DWORD PTR _ve$[ebp+4], ecx
; Line 30
	mov	edx, DWORD PTR _z$[ebp]
	mov	DWORD PTR _ve$[ebp+8], edx
; Line 32
	mov	eax, DWORD PTR $T19512[ebp]
	mov	ecx, DWORD PTR _ve$[ebp]
	mov	DWORD PTR [eax], ecx
	mov	edx, DWORD PTR _ve$[ebp+4]
	mov	DWORD PTR [eax+4], edx
	mov	ecx, DWORD PTR _ve$[ebp+8]
	mov	DWORD PTR [eax+8], ecx
	mov	eax, DWORD PTR $T19512[ebp]
; Line 33
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_sphere_function@@YA?AUVECTOR@@MMM@Z ENDP		; p_sphere_function
_TEXT	ENDS
PUBLIC	__real@4@40008000000000000000
PUBLIC	__real@4@4005c800000000000000
PUBLIC	__real@4@4002a000000000000000
PUBLIC	__real@4@00000000000000000000
PUBLIC	?p_sphere_render@@YAXM@Z			; p_sphere_render
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	__imp__glEnd@0:NEAR
;	COMDAT __real@4@40008000000000000000
; File D:\prj64k\glAss (eventad)\parts\p_sphere.cpp
CONST	SEGMENT
__real@4@40008000000000000000 DD 040000000r	; 2
CONST	ENDS
;	COMDAT __real@4@4005c800000000000000
CONST	SEGMENT
__real@4@4005c800000000000000 DD 042c80000r	; 100
CONST	ENDS
;	COMDAT __real@4@4002a000000000000000
CONST	SEGMENT
__real@4@4002a000000000000000 DD 041200000r	; 10
CONST	ENDS
;	COMDAT __real@4@00000000000000000000
CONST	SEGMENT
__real@4@00000000000000000000 DD 000000000r	; 0
CONST	ENDS
;	COMDAT ?p_sphere_render@@YAXM@Z
_TEXT	SEGMENT
_a$19461 = -20
_b$19463 = -32
_c$19465 = -44
_d$19467 = -56
$T19537 = -68
$T19538 = -80
$T19539 = -92
$T19540 = -104
$T19541 = -116
$T19542 = -128
$T19543 = -140
$T19544 = -152
_t$ = 8
_u$ = -4
_v$ = -8
?p_sphere_render@@YAXM@Z PROC NEAR			; p_sphere_render, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_sphere.cpp
; Line 35
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
; Line 39
	push	111					; 0000006fH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 56
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 58
	mov	DWORD PTR _v$[ebp], 0
	jmp	SHORT $L19455
$L19456:
	fld	DWORD PTR _v$[ebp]
	fadd	DWORD PTR __real@4@40008000000000000000
	fstp	DWORD PTR _v$[ebp]
$L19455:
	fld	DWORD PTR _v$[ebp]
	fcomp	DWORD PTR __real@4@4005c800000000000000
	fnstsw	ax
	test	ah, 1
	je	$L19457
; Line 60
	mov	DWORD PTR _u$[ebp], 0
	jmp	SHORT $L19458
$L19459:
	fld	DWORD PTR _u$[ebp]
	fadd	DWORD PTR __real@4@40008000000000000000
	fstp	DWORD PTR _u$[ebp]
$L19458:
	fld	DWORD PTR _u$[ebp]
	fcomp	DWORD PTR __real@4@4005c800000000000000
	fnstsw	ax
	test	ah, 1
	je	$L19460
; Line 62
	fld	DWORD PTR _v$[ebp]
	fadd	DWORD PTR __real@4@40008000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _u$[ebp]
	fadd	DWORD PTR __real@4@40008000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _t$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T19538[ebp]
	push	ecx
	call	?p_sphere_function@@YA?AUVECTOR@@MMM@Z	; p_sphere_function
	add	esp, 16					; 00000010H
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR $T19537[ebp], edx
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR $T19537[ebp+4], ecx
	mov	edx, DWORD PTR [eax+8]
	mov	DWORD PTR $T19537[ebp+8], edx
	mov	eax, DWORD PTR $T19537[ebp]
	mov	DWORD PTR _a$19461[ebp], eax
	mov	ecx, DWORD PTR $T19537[ebp+4]
	mov	DWORD PTR _a$19461[ebp+4], ecx
	mov	edx, DWORD PTR $T19537[ebp+8]
	mov	DWORD PTR _a$19461[ebp+8], edx
; Line 63
	fld	DWORD PTR _v$[ebp]
	fadd	DWORD PTR __real@4@40008000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _u$[ebp]
	push	eax
	mov	ecx, DWORD PTR _t$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T19540[ebp]
	push	edx
	call	?p_sphere_function@@YA?AUVECTOR@@MMM@Z	; p_sphere_function
	add	esp, 16					; 00000010H
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR $T19539[ebp], ecx
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR $T19539[ebp+4], edx
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR $T19539[ebp+8], eax
	mov	ecx, DWORD PTR $T19539[ebp]
	mov	DWORD PTR _b$19463[ebp], ecx
	mov	edx, DWORD PTR $T19539[ebp+4]
	mov	DWORD PTR _b$19463[ebp+4], edx
	mov	eax, DWORD PTR $T19539[ebp+8]
	mov	DWORD PTR _b$19463[ebp+8], eax
; Line 64
	mov	ecx, DWORD PTR _v$[ebp]
	push	ecx
	mov	edx, DWORD PTR _u$[ebp]
	push	edx
	mov	eax, DWORD PTR _t$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T19542[ebp]
	push	ecx
	call	?p_sphere_function@@YA?AUVECTOR@@MMM@Z	; p_sphere_function
	add	esp, 16					; 00000010H
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR $T19541[ebp], edx
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR $T19541[ebp+4], ecx
	mov	edx, DWORD PTR [eax+8]
	mov	DWORD PTR $T19541[ebp+8], edx
	mov	eax, DWORD PTR $T19541[ebp]
	mov	DWORD PTR _c$19465[ebp], eax
	mov	ecx, DWORD PTR $T19541[ebp+4]
	mov	DWORD PTR _c$19465[ebp+4], ecx
	mov	edx, DWORD PTR $T19541[ebp+8]
	mov	DWORD PTR _c$19465[ebp+8], edx
; Line 65
	mov	eax, DWORD PTR _v$[ebp]
	push	eax
	fld	DWORD PTR _u$[ebp]
	fadd	DWORD PTR __real@4@40008000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _t$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T19544[ebp]
	push	edx
	call	?p_sphere_function@@YA?AUVECTOR@@MMM@Z	; p_sphere_function
	add	esp, 16					; 00000010H
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR $T19543[ebp], ecx
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR $T19543[ebp+4], edx
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR $T19543[ebp+8], eax
	mov	ecx, DWORD PTR $T19543[ebp]
	mov	DWORD PTR _d$19467[ebp], ecx
	mov	edx, DWORD PTR $T19543[ebp+4]
	mov	DWORD PTR _d$19467[ebp+4], edx
	mov	eax, DWORD PTR $T19543[ebp+8]
	mov	DWORD PTR _d$19467[ebp+8], eax
; Line 69
	push	1036831949				; 3dcccccdH
	push	1050253722				; 3e99999aH
	push	1028443341				; 3d4ccccdH
	call	DWORD PTR __imp__glColor3f@12
; Line 71
	fld	DWORD PTR _v$[ebp]
	fadd	DWORD PTR __real@4@40008000000000000000
	fdiv	DWORD PTR __real@4@4002a000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _u$[ebp]
	fadd	DWORD PTR __real@4@40008000000000000000
	fdiv	DWORD PTR __real@4@4002a000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 72
	mov	ecx, DWORD PTR _a$19461[ebp+8]
	push	ecx
	mov	edx, DWORD PTR _a$19461[ebp+4]
	push	edx
	mov	eax, DWORD PTR _a$19461[ebp]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 74
	fld	DWORD PTR _v$[ebp]
	fadd	DWORD PTR __real@4@40008000000000000000
	fdiv	DWORD PTR __real@4@4002a000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _u$[ebp]
	fadd	DWORD PTR __real@4@00000000000000000000
	fdiv	DWORD PTR __real@4@4002a000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 75
	mov	ecx, DWORD PTR _b$19463[ebp+8]
	push	ecx
	mov	edx, DWORD PTR _b$19463[ebp+4]
	push	edx
	mov	eax, DWORD PTR _b$19463[ebp]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 77
	fld	DWORD PTR _v$[ebp]
	fadd	DWORD PTR __real@4@00000000000000000000
	fdiv	DWORD PTR __real@4@4002a000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _u$[ebp]
	fadd	DWORD PTR __real@4@00000000000000000000
	fdiv	DWORD PTR __real@4@4002a000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 78
	mov	ecx, DWORD PTR _c$19465[ebp+8]
	push	ecx
	mov	edx, DWORD PTR _c$19465[ebp+4]
	push	edx
	mov	eax, DWORD PTR _c$19465[ebp]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 80
	fld	DWORD PTR _v$[ebp]
	fadd	DWORD PTR __real@4@00000000000000000000
	fdiv	DWORD PTR __real@4@4002a000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _u$[ebp]
	fadd	DWORD PTR __real@4@40008000000000000000
	fdiv	DWORD PTR __real@4@4002a000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 81
	mov	ecx, DWORD PTR _d$19467[ebp+8]
	push	ecx
	mov	edx, DWORD PTR _d$19467[ebp+4]
	push	edx
	mov	eax, DWORD PTR _d$19467[ebp]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 83
	jmp	$L19459
$L19460:
; Line 85
	jmp	$L19456
$L19457:
; Line 87
	call	DWORD PTR __imp__glEnd@0
; Line 102
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_sphere_render@@YAXM@Z ENDP				; p_sphere_render
_TEXT	ENDS
PUBLIC	?p_sphere_run@@YAXPAUEVENT@@@Z			; p_sphere_run
PUBLIC	__real@4@40018000000000000000
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glRotatef@16:NEAR
EXTRN	__imp__glTranslatef@12:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	_gluPerspective@32:NEAR
EXTRN	__imp__glCullFace@4:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
;	COMDAT __real@4@40018000000000000000
; File D:\prj64k\glAss (eventad)\parts\p_sphere.cpp
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT ?p_sphere_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -4
?p_sphere_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_sphere_run, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_sphere.cpp
; Line 104
	push	ebp
	mov	ebp, esp
	sub	esp, 80					; 00000050H
	push	ebx
	push	esi
	push	edi
; Line 107
	push	1029					; 00000405H
	call	DWORD PTR __imp__glCullFace@4
; Line 109
	push	2929					; 00000b71H
	call	DWORD PTR __imp__glDisable@4
; Line 113
	mov	eax, DWORD PTR _e$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _t$[ebp], ecx
; Line 116
	push	2884					; 00000b44H
	call	DWORD PTR __imp__glDisable@4
; Line 118
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 119
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 121
	push	5890					; 00001702H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 123
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 125
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 126
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 128
	push	1083129856				; 408f4000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1079328768				; 40554000H
	push	0
	call	_gluPerspective@32
; Line 130
	push	-1031012352				; c28c0000H
	push	0
	push	0
	call	DWORD PTR __imp__glTranslatef@12
; Line 132
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -8+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fadd	ST(0), ST(0)
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -12+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -16+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	1114636288				; 42700000H
	call	DWORD PTR __imp__glRotatef@16
; Line 134
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 135
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 137
	mov	edx, DWORD PTR _t$[ebp]
	push	edx
	call	?p_sphere_render@@YAXM@Z		; p_sphere_render
	add	esp, 4
; Line 139
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_sphere_run@@YAXPAUEVENT@@@Z ENDP			; p_sphere_run
_TEXT	ENDS
END
