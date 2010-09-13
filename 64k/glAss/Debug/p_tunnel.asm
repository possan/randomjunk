	TITLE	D:\prj64k\glAss (eventad)\parts\p_tunnel.cpp
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
;	COMDAT ?p_tunnel_function@@YA?AUVECTOR@@MM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_tunnel_render@@YAXMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_tunnel_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@4@3ffccccccd0000000000
PUBLIC	__real@4@4001a000000000000000
PUBLIC	__real@4@4000c000000000000000
PUBLIC	__real@4@4004a000000000000000
PUBLIC	__real@4@4000c916870000000000
PUBLIC	__real@4@4004c800000000000000
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@4004f000000000000000
PUBLIC	__real@4@4000c90fdb0000000000
PUBLIC	?p_tunnel_function@@YA?AUVECTOR@@MM@Z		; p_tunnel_function
EXTRN	__fltused:NEAR
EXTRN	_cos:NEAR
EXTRN	_sin:NEAR
;	COMDAT __real@4@40018000000000000000
; File D:\prj64k\glAss (eventad)\parts\p_tunnel.cpp
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@4@3ffccccccd0000000000
CONST	SEGMENT
__real@4@3ffccccccd0000000000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@4001a000000000000000
CONST	SEGMENT
__real@4@4001a000000000000000 DD 040a00000r	; 5
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
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@4004f000000000000000
CONST	SEGMENT
__real@4@4004f000000000000000 DD 042700000r	; 60
CONST	ENDS
;	COMDAT __real@4@4000c90fdb0000000000
CONST	SEGMENT
__real@4@4000c90fdb0000000000 DD 040490fdbr	; 3.14159
CONST	ENDS
;	COMDAT ?p_tunnel_function@@YA?AUVECTOR@@MM@Z
_TEXT	SEGMENT
$T19494 = 8
_t$ = 12
_u$ = 16
_ve$ = -12
_a$ = -16
_b$ = -20
_r2$ = -24
_r$ = -28
_x$ = -32
_y$ = -36
?p_tunnel_function@@YA?AUVECTOR@@MM@Z PROC NEAR		; p_tunnel_function, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_tunnel.cpp
; Line 6
	push	ebp
	mov	ebp, esp
	sub	esp, 124				; 0000007cH
	push	ebx
	push	esi
	push	edi
; Line 10
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@40018000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -40+[ebp]
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	fstp	DWORD PTR _a$[ebp]
; Line 11
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -44+[ebp]
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	fstp	DWORD PTR _b$[ebp]
; Line 12
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
	fst	DWORD PTR -48+[ebp]
	fmul	DWORD PTR _a$[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _r2$[ebp]
; Line 13
	fld	DWORD PTR _u$[ebp]
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
	fst	DWORD PTR -52+[ebp]
	fmul	DWORD PTR _b$[ebp]
	fadd	DWORD PTR _r2$[ebp]
	fst	DWORD PTR _r2$[ebp]
; Line 15
	fmul	DWORD PTR __real@4@4004a000000000000000
	fstp	DWORD PTR _r$[ebp]
; Line 16
	fld	DWORD PTR _u$[ebp]
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@4004c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -56+[ebp]
	fmul	DWORD PTR _r$[ebp]
	fstp	DWORD PTR _x$[ebp]
; Line 17
	fld	DWORD PTR _u$[ebp]
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@4004c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -60+[ebp]
	fmul	DWORD PTR _r$[ebp]
	fstp	DWORD PTR _y$[ebp]
; Line 20
	mov	eax, DWORD PTR _x$[ebp]
	mov	DWORD PTR _ve$[ebp], eax
; Line 21
	mov	ecx, DWORD PTR _y$[ebp]
	mov	DWORD PTR _ve$[ebp+4], ecx
; Line 24
	mov	edx, DWORD PTR $T19494[ebp]
	mov	eax, DWORD PTR _ve$[ebp]
	mov	DWORD PTR [edx], eax
	mov	ecx, DWORD PTR _ve$[ebp+4]
	mov	DWORD PTR [edx+4], ecx
	mov	eax, DWORD PTR _ve$[ebp+8]
	mov	DWORD PTR [edx+8], eax
	mov	eax, DWORD PTR $T19494[ebp]
; Line 25
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_tunnel_function@@YA?AUVECTOR@@MM@Z ENDP		; p_tunnel_function
_TEXT	ENDS
PUBLIC	__real@4@40008000000000000000
PUBLIC	__real@4@4005c800000000000000
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@3ffe99999a0000000000
PUBLIC	__real@4@3ffbcccccd0000000000
PUBLIC	__real@4@3ffdcccccd0000000000
PUBLIC	?p_tunnel_render@@YAXMM@Z			; p_tunnel_render
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	__imp__glEnd@0:NEAR
;	COMDAT __real@4@40008000000000000000
; File D:\prj64k\glAss (eventad)\parts\p_tunnel.cpp
CONST	SEGMENT
__real@4@40008000000000000000 DD 040000000r	; 2
CONST	ENDS
;	COMDAT __real@4@4005c800000000000000
CONST	SEGMENT
__real@4@4005c800000000000000 DD 042c80000r	; 100
CONST	ENDS
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@3ffe99999a0000000000
CONST	SEGMENT
__real@4@3ffe99999a0000000000 DD 03f19999ar	; 0.6
CONST	ENDS
;	COMDAT __real@4@3ffbcccccd0000000000
CONST	SEGMENT
__real@4@3ffbcccccd0000000000 DD 03dcccccdr	; 0.1
CONST	ENDS
;	COMDAT __real@4@3ffdcccccd0000000000
CONST	SEGMENT
__real@4@3ffdcccccd0000000000 DD 03ecccccdr	; 0.4
CONST	ENDS
;	COMDAT ?p_tunnel_render@@YAXMM@Z
_TEXT	SEGMENT
_a$19456 = -28
_b$19458 = -40
$T19520 = -52
$T19521 = -64
$T19522 = -76
$T19523 = -88
_t$ = 8
_br$ = 12
_u$ = -4
_v$ = -8
_u1$19452 = -12
_u2$19454 = -16
?p_tunnel_render@@YAXMM@Z PROC NEAR			; p_tunnel_render, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_tunnel.cpp
; Line 27
	push	ebp
	mov	ebp, esp
	sub	esp, 152				; 00000098H
	push	ebx
	push	esi
	push	edi
; Line 31
	push	111					; 0000006fH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 33
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 35
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	fstp	DWORD PTR _v$[ebp]
; Line 37
	mov	DWORD PTR _u$[ebp], 0
	jmp	SHORT $L19449
$L19450:
	fld	DWORD PTR _u$[ebp]
	fadd	DWORD PTR __real@4@40008000000000000000
	fstp	DWORD PTR _u$[ebp]
$L19449:
	fld	DWORD PTR _u$[ebp]
	fcomp	DWORD PTR __real@4@4005c800000000000000
	fnstsw	ax
	test	ah, 1
	je	$L19451
; Line 39
	fld	DWORD PTR _u$[ebp]
	fdiv	DWORD PTR __real@4@4005c800000000000000
	fstp	DWORD PTR _u1$19452[ebp]
; Line 40
	fld	DWORD PTR _u$[ebp]
	fadd	DWORD PTR __real@4@40008000000000000000
	fdiv	DWORD PTR __real@4@4005c800000000000000
	fstp	DWORD PTR _u2$19454[ebp]
; Line 42
	mov	eax, DWORD PTR _u$[ebp]
	push	eax
	mov	ecx, DWORD PTR _t$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T19521[ebp]
	push	edx
	call	?p_tunnel_function@@YA?AUVECTOR@@MM@Z	; p_tunnel_function
	add	esp, 12					; 0000000cH
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR $T19520[ebp], ecx
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR $T19520[ebp+4], edx
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR $T19520[ebp+8], eax
	mov	ecx, DWORD PTR $T19520[ebp]
	mov	DWORD PTR _a$19456[ebp], ecx
	mov	edx, DWORD PTR $T19520[ebp+4]
	mov	DWORD PTR _a$19456[ebp+4], edx
	mov	eax, DWORD PTR $T19520[ebp+8]
	mov	DWORD PTR _a$19456[ebp+8], eax
; Line 43
	fld	DWORD PTR _u$[ebp]
	fadd	DWORD PTR __real@4@40008000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _t$[ebp]
	push	ecx
	lea	edx, DWORD PTR $T19523[ebp]
	push	edx
	call	?p_tunnel_function@@YA?AUVECTOR@@MM@Z	; p_tunnel_function
	add	esp, 12					; 0000000cH
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR $T19522[ebp], ecx
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR $T19522[ebp+4], edx
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR $T19522[ebp+8], eax
	mov	ecx, DWORD PTR $T19522[ebp]
	mov	DWORD PTR _b$19458[ebp], ecx
	mov	edx, DWORD PTR $T19522[ebp+4]
	mov	DWORD PTR _b$19458[ebp+4], edx
	mov	eax, DWORD PTR $T19522[ebp+8]
	mov	DWORD PTR _b$19458[ebp+8], eax
; Line 45
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glColor3f@12
; Line 47
	fld	DWORD PTR _v$[ebp]
	fsub	DWORD PTR __real@4@3ffccccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _u2$19454[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 48
	push	-1003552768				; c42f0000H
	mov	edx, DWORD PTR _b$19458[ebp+4]
	push	edx
	mov	eax, DWORD PTR _b$19458[ebp]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 50
	fld	DWORD PTR _v$[ebp]
	fsub	DWORD PTR __real@4@3ffccccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _u1$19452[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 51
	push	-1003552768				; c42f0000H
	mov	edx, DWORD PTR _a$19456[ebp+4]
	push	edx
	mov	eax, DWORD PTR _a$19456[ebp]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 53
	fld	DWORD PTR __real@4@3ffd99999a0000000000
	fmul	DWORD PTR _br$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ffe99999a0000000000
	fmul	DWORD PTR _br$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR _br$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12
; Line 55
	fld	DWORD PTR _v$[ebp]
	fsub	DWORD PTR __real@4@3ffbcccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _u1$19452[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 56
	push	-1018691584				; c3480000H
	mov	edx, DWORD PTR _a$19456[ebp+4]
	push	edx
	mov	eax, DWORD PTR _a$19456[ebp]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 58
	fld	DWORD PTR _v$[ebp]
	fsub	DWORD PTR __real@4@3ffbcccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _u2$19454[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 59
	push	-1018691584				; c3480000H
	mov	edx, DWORD PTR _b$19458[ebp+4]
	push	edx
	mov	eax, DWORD PTR _b$19458[ebp]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 63
	fld	DWORD PTR _v$[ebp]
	fsub	DWORD PTR __real@4@3ffbcccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _u1$19452[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 64
	push	-1018691584				; c3480000H
	mov	edx, DWORD PTR _a$19456[ebp+4]
	push	edx
	mov	eax, DWORD PTR _a$19456[ebp]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 66
	fld	DWORD PTR _v$[ebp]
	fsub	DWORD PTR __real@4@3ffbcccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _u2$19454[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 67
	push	-1018691584				; c3480000H
	mov	edx, DWORD PTR _b$19458[ebp+4]
	push	edx
	mov	eax, DWORD PTR _b$19458[ebp]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 69
	fld	DWORD PTR __real@4@3ffe99999a0000000000
	fmul	DWORD PTR _br$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ffdcccccd0000000000
	fmul	DWORD PTR _br$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ffccccccd0000000000
	fmul	DWORD PTR _br$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12
; Line 72
	mov	ecx, DWORD PTR _v$[ebp]
	push	ecx
	mov	edx, DWORD PTR _u2$19454[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 73
	push	0
	mov	eax, DWORD PTR _b$19458[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _b$19458[ebp]
	push	ecx
	call	DWORD PTR __imp__glVertex3f@12
; Line 75
	mov	edx, DWORD PTR _v$[ebp]
	push	edx
	mov	eax, DWORD PTR _u1$19452[ebp]
	push	eax
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 76
	push	0
	mov	ecx, DWORD PTR _a$19456[ebp+4]
	push	ecx
	mov	edx, DWORD PTR _a$19456[ebp]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 78
	mov	eax, DWORD PTR _v$[ebp]
	push	eax
	mov	ecx, DWORD PTR _u1$19452[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 79
	push	0
	mov	edx, DWORD PTR _a$19456[ebp+4]
	push	edx
	mov	eax, DWORD PTR _a$19456[ebp]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 81
	mov	ecx, DWORD PTR _v$[ebp]
	push	ecx
	mov	edx, DWORD PTR _u2$19454[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 82
	push	0
	mov	eax, DWORD PTR _b$19458[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _b$19458[ebp]
	push	ecx
	call	DWORD PTR __imp__glVertex3f@12
; Line 84
	fld	DWORD PTR __real@4@3ffd99999a0000000000
	fmul	DWORD PTR _br$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ffe99999a0000000000
	fmul	DWORD PTR _br$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR _br$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12
; Line 86
	fld	DWORD PTR _v$[ebp]
	fadd	DWORD PTR __real@4@3ffbcccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	edx, DWORD PTR _u2$19454[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 87
	push	1128792064				; 43480000H
	mov	eax, DWORD PTR _b$19458[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _b$19458[ebp]
	push	ecx
	call	DWORD PTR __imp__glVertex3f@12
; Line 89
	fld	DWORD PTR _v$[ebp]
	fadd	DWORD PTR __real@4@3ffbcccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	edx, DWORD PTR _u1$19452[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 90
	push	1128792064				; 43480000H
	mov	eax, DWORD PTR _a$19456[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _a$19456[ebp]
	push	ecx
	call	DWORD PTR __imp__glVertex3f@12
; Line 94
	fld	DWORD PTR _v$[ebp]
	fadd	DWORD PTR __real@4@3ffbcccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	edx, DWORD PTR _u1$19452[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 95
	push	1128792064				; 43480000H
	mov	eax, DWORD PTR _a$19456[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _a$19456[ebp]
	push	ecx
	call	DWORD PTR __imp__glVertex3f@12
; Line 97
	fld	DWORD PTR _v$[ebp]
	fadd	DWORD PTR __real@4@3ffbcccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	edx, DWORD PTR _u2$19454[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 98
	push	1128792064				; 43480000H
	mov	eax, DWORD PTR _b$19458[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _b$19458[ebp]
	push	ecx
	call	DWORD PTR __imp__glVertex3f@12
; Line 100
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glColor3f@12
; Line 102
	fld	DWORD PTR _v$[ebp]
	fadd	DWORD PTR __real@4@3ffccccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	edx, DWORD PTR _u2$19454[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 103
	push	1143930880				; 442f0000H
	mov	eax, DWORD PTR _b$19458[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _b$19458[ebp]
	push	ecx
	call	DWORD PTR __imp__glVertex3f@12
; Line 105
	fld	DWORD PTR _v$[ebp]
	fadd	DWORD PTR __real@4@3ffccccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	edx, DWORD PTR _u1$19452[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 106
	push	1143930880				; 442f0000H
	mov	eax, DWORD PTR _a$19456[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _a$19456[ebp]
	push	ecx
	call	DWORD PTR __imp__glVertex3f@12
; Line 108
	jmp	$L19450
$L19451:
; Line 121
	call	DWORD PTR __imp__glEnd@0
; Line 141
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_tunnel_render@@YAXMM@Z ENDP				; p_tunnel_render
_TEXT	ENDS
PUBLIC	?p_tunnel_run@@YAXPAUEVENT@@@Z			; p_tunnel_run
PUBLIC	__real@4@c002a000000000000000
PUBLIC	__real@4@4002a000000000000000
PUBLIC	__real@4@40078000000000000000
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	_gluPerspective@32:NEAR
EXTRN	_gluLookAt@72:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
;	COMDAT __real@4@c002a000000000000000
; File D:\prj64k\glAss (eventad)\parts\p_tunnel.cpp
CONST	SEGMENT
__real@4@c002a000000000000000 DD 0c1200000r	; -10
CONST	ENDS
;	COMDAT __real@4@4002a000000000000000
CONST	SEGMENT
__real@4@4002a000000000000000 DD 041200000r	; 10
CONST	ENDS
;	COMDAT __real@4@40078000000000000000
CONST	SEGMENT
__real@4@40078000000000000000 DD 043800000r	; 256
CONST	ENDS
;	COMDAT ?p_tunnel_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -4
_z0$ = -8
_z1$ = -12
_r0$ = -16
_b$ = -20
?p_tunnel_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_tunnel_run, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_tunnel.cpp
; Line 143
	push	ebp
	mov	ebp, esp
	sub	esp, 96					; 00000060H
	push	ebx
	push	esi
	push	edi
; Line 146
	push	2929					; 00000b71H
	call	DWORD PTR __imp__glDisable@4
; Line 147
	push	2884					; 00000b44H
	call	DWORD PTR __imp__glDisable@4
; Line 149
	mov	eax, DWORD PTR _e$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _t$[ebp], ecx
; Line 151
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 152
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 154
	push	5890					; 00001702H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 156
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 158
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 159
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 160
	push	1083129856				; 408f4000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1079984128				; 405f4000H
	push	0
	call	_gluPerspective@32
; Line 165
	fld	DWORD PTR __real@4@c002a000000000000000
	fadd	DWORD PTR _t$[ebp]
	fstp	DWORD PTR _z0$[ebp]
; Line 166
	fld	DWORD PTR __real@4@4002a000000000000000
	fsub	DWORD PTR _t$[ebp]
	fstp	DWORD PTR _z1$[ebp]
; Line 167
	fld	DWORD PTR _t$[ebp]
	fadd	ST(0), ST(0)
	fstp	DWORD PTR _r0$[ebp]
; Line 168
	fld	DWORD PTR _r0$[ebp]
	fcomp	DWORD PTR __real@4@4002a000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L19467
	mov	DWORD PTR _r0$[ebp], 1092616192		; 41200000H
$L19467:
; Line 171
	push	0
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	0
	push	0
	fld	DWORD PTR _z1$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	push	0
	push	0
	push	0
	push	0
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -24+[ebp]
	fmul	DWORD PTR _r0$[ebp]
	fadd	DWORD PTR _z0$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@40008000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -28+[ebp]
	fmul	DWORD PTR _r0$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -32+[ebp]
	fmul	DWORD PTR _r0$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72
; Line 174
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 175
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 176
	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12
; Line 178
	mov	edx, DWORD PTR _e$[ebp]
	fild	DWORD PTR [edx+16]
	fdiv	DWORD PTR __real@4@40078000000000000000
	fdivr	DWORD PTR _t$[ebp]
	fstp	DWORD PTR _b$[ebp]
; Line 179
	fld	DWORD PTR _b$[ebp]
	fcomp	DWORD PTR __real@4@3fff8000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L19473
	mov	DWORD PTR _b$[ebp], 1065353216		; 3f800000H
$L19473:
; Line 180
	mov	eax, DWORD PTR _b$[ebp]
	push	eax
	mov	ecx, DWORD PTR _t$[ebp]
	push	ecx
	call	?p_tunnel_render@@YAXMM@Z		; p_tunnel_render
	add	esp, 8
; Line 182
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_tunnel_run@@YAXPAUEVENT@@@Z ENDP			; p_tunnel_run
_TEXT	ENDS
END
