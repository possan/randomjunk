	TITLE	D:\prj64k\glAss (eventad)\parts\p_psyk.cpp
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
;	COMDAT ?pp_glMappa@@YAXMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pp_generateScene@@YAXM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_psyk_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?tuo@@3MA					; tuo
PUBLIC	?tvo@@3MA					; tvo
_BSS	SEGMENT
?tuo@@3MA DD	01H DUP (?)				; tuo
?tvo@@3MA DD	01H DUP (?)				; tvo
_BSS	ENDS
PUBLIC	__real@4@4000c000000000000000
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	?pp_glMappa@@YAXMM@Z				; pp_glMappa
EXTRN	__fltused:NEAR
EXTRN	_sqrt:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
;	COMDAT __real@4@4000c000000000000000
; File D:\prj64k\glAss (eventad)\parts\p_psyk.cpp
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT ?pp_glMappa@@YAXMM@Z
_TEXT	SEGMENT
_x$ = 8
_y$ = 12
_x2$ = -4
_y2$ = -8
_r$ = -12
?pp_glMappa@@YAXMM@Z PROC NEAR				; pp_glMappa, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_psyk.cpp
; Line 21
	push	ebp
	mov	ebp, esp
	sub	esp, 80					; 00000050H
	push	ebx
	push	esi
	push	edi
; Line 28
	fld	DWORD PTR _x$[ebp]
	fmul	DWORD PTR _x$[ebp]
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR _y$[ebp]
	faddp	ST(1), ST(0)
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sqrt
	add	esp, 8
	fst	DWORD PTR -16+[ebp]
	fmul	DWORD PTR __real@4@4000c000000000000000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _r$[ebp]
; Line 30
	fld	DWORD PTR _x$[ebp]
	fmul	DWORD PTR _r$[ebp]
	fstp	DWORD PTR _x2$[ebp]
; Line 31
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR _r$[ebp]
	fstp	DWORD PTR _y2$[ebp]
; Line 36
	fld	DWORD PTR _x2$[ebp]
	fadd	DWORD PTR ?tuo@@3MA			; tuo
	fstp	DWORD PTR _x2$[ebp]
; Line 37
	fld	DWORD PTR _y2$[ebp]
	fadd	DWORD PTR ?tvo@@3MA			; tvo
	fstp	DWORD PTR _y2$[ebp]
; Line 39
	mov	eax, DWORD PTR _y2$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x2$[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 40
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?pp_glMappa@@YAXMM@Z ENDP				; pp_glMappa
_TEXT	ENDS
PUBLIC	__real@4@3ffed020c50000000000
PUBLIC	__real@4@3ffde666660000000000
PUBLIC	__real@4@3ffe8000000000000000
PUBLIC	__real@4@3fffa978d50000000000
PUBLIC	__real@4@4000c90fdb0000000000
PUBLIC	__real@4@40029000000000000000
PUBLIC	__real@8@3fff8000000000000000
PUBLIC	__real@8@4000c90fdb0000000000
PUBLIC	__real@8@40029000000000000000
PUBLIC	__real@4@3fffc000000000000000
PUBLIC	?pp_generateScene@@YAXM@Z			; pp_generateScene
EXTRN	_cos:NEAR
EXTRN	_sin:NEAR
EXTRN	__imp__glNewList@8:NEAR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glEnd@0:NEAR
EXTRN	__imp__glEndList@0:NEAR
;	COMDAT __real@4@3ffed020c50000000000
; File D:\prj64k\glAss (eventad)\parts\p_psyk.cpp
CONST	SEGMENT
__real@4@3ffed020c50000000000 DD 03f5020c5r	; 0.813
CONST	ENDS
;	COMDAT __real@4@3ffde666660000000000
CONST	SEGMENT
__real@4@3ffde666660000000000 DD 03ee66666r	; 0.45
CONST	ENDS
;	COMDAT __real@4@3ffe8000000000000000
CONST	SEGMENT
__real@4@3ffe8000000000000000 DD 03f000000r	; 0.5
CONST	ENDS
;	COMDAT __real@4@3fffa978d50000000000
CONST	SEGMENT
__real@4@3fffa978d50000000000 DD 03fa978d5r	; 1.324
CONST	ENDS
;	COMDAT __real@4@4000c90fdb0000000000
CONST	SEGMENT
__real@4@4000c90fdb0000000000 DD 040490fdbr	; 3.14159
CONST	ENDS
;	COMDAT __real@4@40029000000000000000
CONST	SEGMENT
__real@4@40029000000000000000 DD 041100000r	; 9
CONST	ENDS
;	COMDAT __real@8@3fff8000000000000000
CONST	SEGMENT
__real@8@3fff8000000000000000 DQ 03ff0000000000000r ; 1
CONST	ENDS
;	COMDAT __real@8@4000c90fdb0000000000
CONST	SEGMENT
__real@8@4000c90fdb0000000000 DQ 0400921fb60000000r ; 3.14159
CONST	ENDS
;	COMDAT __real@8@40029000000000000000
CONST	SEGMENT
__real@8@40029000000000000000 DQ 04022000000000000r ; 9
CONST	ENDS
;	COMDAT __real@4@3fffc000000000000000
CONST	SEGMENT
__real@4@3fffc000000000000000 DD 03fc00000r	; 1.5
CONST	ENDS
;	COMDAT ?pp_generateScene@@YAXM@Z
_TEXT	SEGMENT
_frame$ = 8
_i$ = -4
_x$ = -8
_y$ = -12
_x2$ = -16
_y2$ = -20
?pp_generateScene@@YAXM@Z PROC NEAR			; pp_generateScene, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_psyk.cpp
; Line 42
	push	ebp
	mov	ebp, esp
	sub	esp, 92					; 0000005cH
	push	ebx
	push	esi
	push	edi
; Line 47
	fld	DWORD PTR _frame$[ebp]
	fmul	DWORD PTR __real@4@3ffed020c50000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -24+[ebp]
	fmul	DWORD PTR __real@4@3ffde666660000000000
	fadd	DWORD PTR __real@4@3ffe8000000000000000
	fstp	DWORD PTR ?tuo@@3MA			; tuo
; Line 48
	fld	DWORD PTR _frame$[ebp]
	fmul	DWORD PTR __real@4@3fffa978d50000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -28+[ebp]
	fmul	DWORD PTR __real@4@3ffde666660000000000
	fadd	DWORD PTR __real@4@3ffe8000000000000000
	fstp	DWORD PTR ?tvo@@3MA			; tvo
; Line 50
	push	4864					; 00001300H
	push	71					; 00000047H
	call	DWORD PTR __imp__glNewList@8
; Line 52
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19445
$L19446:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$L19445:
	cmp	DWORD PTR _i$[ebp], 9
	jge	$L19447
; Line 54
	push	4
	call	DWORD PTR __imp__glBegin@4
; Line 56
	fild	DWORD PTR _i$[ebp]
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fadd	ST(0), ST(0)
	fdiv	DWORD PTR __real@4@40029000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fstp	DWORD PTR _x$[ebp]
; Line 57
	fild	DWORD PTR _i$[ebp]
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fadd	ST(0), ST(0)
	fdiv	DWORD PTR __real@4@40029000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fstp	DWORD PTR _y$[ebp]
; Line 59
	fild	DWORD PTR _i$[ebp]
	fadd	QWORD PTR __real@8@3fff8000000000000000
	fmul	QWORD PTR __real@8@4000c90fdb0000000000
	fadd	ST(0), ST(0)
	fdiv	QWORD PTR __real@8@40029000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fstp	DWORD PTR _x2$[ebp]
; Line 60
	fild	DWORD PTR _i$[ebp]
	fadd	QWORD PTR __real@8@3fff8000000000000000
	fmul	QWORD PTR __real@8@4000c90fdb0000000000
	fadd	ST(0), ST(0)
	fdiv	QWORD PTR __real@8@40029000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fstp	DWORD PTR _y2$[ebp]
; Line 62
	mov	ecx, DWORD PTR _y2$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x2$[ebp]
	push	edx
	call	?pp_glMappa@@YAXMM@Z			; pp_glMappa
	add	esp, 8
; Line 63
	push	-1065353216				; c0800000H
	fld	DWORD PTR _y2$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x2$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 65
	mov	eax, DWORD PTR _y$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x$[ebp]
	push	ecx
	call	?pp_glMappa@@YAXMM@Z			; pp_glMappa
	add	esp, 8
; Line 66
	push	-1065353216				; c0800000H
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 68
	push	0
	push	0
	call	?pp_glMappa@@YAXMM@Z			; pp_glMappa
	add	esp, 8
; Line 69
	push	-1061997773				; c0b33333H
	push	0
	push	0
	call	DWORD PTR __imp__glVertex3f@12
; Line 71
	mov	edx, DWORD PTR _y$[ebp]
	push	edx
	mov	eax, DWORD PTR _x$[ebp]
	push	eax
	call	?pp_glMappa@@YAXMM@Z			; pp_glMappa
	add	esp, 8
; Line 72
	push	1082130432				; 40800000H
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 74
	mov	ecx, DWORD PTR _y2$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x2$[ebp]
	push	edx
	call	?pp_glMappa@@YAXMM@Z			; pp_glMappa
	add	esp, 8
; Line 75
	push	1082130432				; 40800000H
	fld	DWORD PTR _y2$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x2$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 77
	push	0
	push	0
	call	?pp_glMappa@@YAXMM@Z			; pp_glMappa
	add	esp, 8
; Line 78
	push	1085485875				; 40b33333H
	push	0
	push	0
	call	DWORD PTR __imp__glVertex3f@12
; Line 80
	call	DWORD PTR __imp__glEnd@0
; Line 83
	jmp	$L19446
$L19447:
; Line 85
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19452
$L19453:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$L19452:
	cmp	DWORD PTR _i$[ebp], 9
	jge	$L19454
; Line 87
	fild	DWORD PTR _i$[ebp]
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fadd	ST(0), ST(0)
	fdiv	DWORD PTR __real@4@40029000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fstp	DWORD PTR _x$[ebp]
; Line 88
	fild	DWORD PTR _i$[ebp]
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fadd	ST(0), ST(0)
	fdiv	DWORD PTR __real@4@40029000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fstp	DWORD PTR _y$[ebp]
; Line 90
	fild	DWORD PTR _i$[ebp]
	fadd	QWORD PTR __real@8@3fff8000000000000000
	fmul	QWORD PTR __real@8@4000c90fdb0000000000
	fadd	ST(0), ST(0)
	fdiv	QWORD PTR __real@8@40029000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fstp	DWORD PTR _x2$[ebp]
; Line 91
	fild	DWORD PTR _i$[ebp]
	fadd	QWORD PTR __real@8@3fff8000000000000000
	fmul	QWORD PTR __real@8@4000c90fdb0000000000
	fadd	ST(0), ST(0)
	fdiv	QWORD PTR __real@8@40029000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fstp	DWORD PTR _y2$[ebp]
; Line 93
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 95
	mov	ecx, DWORD PTR _y$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x$[ebp]
	push	edx
	call	?pp_glMappa@@YAXMM@Z			; pp_glMappa
	add	esp, 8
; Line 97
	push	-1065353216				; c0800000H
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 99
	mov	eax, DWORD PTR _y2$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x2$[ebp]
	push	ecx
	call	?pp_glMappa@@YAXMM@Z			; pp_glMappa
	add	esp, 8
; Line 101
	push	-1065353216				; c0800000H
	fld	DWORD PTR _y2$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x2$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 103
	push	1082130432				; 40800000H
	fld	DWORD PTR _y2$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x2$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 105
	mov	edx, DWORD PTR _y$[ebp]
	push	edx
	mov	eax, DWORD PTR _x$[ebp]
	push	eax
	call	?pp_glMappa@@YAXMM@Z			; pp_glMappa
	add	esp, 8
; Line 107
	push	1082130432				; 40800000H
	fld	DWORD PTR _y$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 109
	call	DWORD PTR __imp__glEnd@0
; Line 111
	jmp	$L19453
$L19454:
; Line 113
	call	DWORD PTR __imp__glEndList@0
; Line 114
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?pp_generateScene@@YAXM@Z ENDP				; pp_generateScene
_TEXT	ENDS
PUBLIC	?p_psyk_run@@YAXPAUEVENT@@@Z			; p_psyk_run
PUBLIC	__real@4@40008000000000000000
PUBLIC	__real@4@3ffeb333330000000000
PUBLIC	__real@4@4001a000000000000000
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@4000d9999a0000000000
PUBLIC	__real@4@4000a666660000000000
PUBLIC	__real@4@4003a800000000000000
PUBLIC	__real@4@4002d000000000000000
PUBLIC	__real@4@4001e000000000000000
PUBLIC	__real@4@3ffff333330000000000
PUBLIC	__real@4@40008ccccd0000000000
PUBLIC	__real@4@4000e666660000000000
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@4@4005b400000000000000
PUBLIC	__real@4@40018ccccd0000000000
PUBLIC	__real@4@40059000000000000000
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glPopMatrix@0:NEAR
EXTRN	__imp__glPushMatrix@0:NEAR
EXTRN	__imp__glRotatef@16:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__imp__glCallList@4:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	_gluPerspective@32:NEAR
EXTRN	__imp__glCullFace@4:NEAR
EXTRN	_gluLookAt@72:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
;	COMDAT __real@4@40008000000000000000
; File D:\prj64k\glAss (eventad)\parts\p_psyk.cpp
CONST	SEGMENT
__real@4@40008000000000000000 DD 040000000r	; 2
CONST	ENDS
;	COMDAT __real@4@3ffeb333330000000000
CONST	SEGMENT
__real@4@3ffeb333330000000000 DD 03f333333r	; 0.7
CONST	ENDS
;	COMDAT __real@4@4001a000000000000000
CONST	SEGMENT
__real@4@4001a000000000000000 DD 040a00000r	; 5
CONST	ENDS
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@4000d9999a0000000000
CONST	SEGMENT
__real@4@4000d9999a0000000000 DD 04059999ar	; 3.4
CONST	ENDS
;	COMDAT __real@4@4000a666660000000000
CONST	SEGMENT
__real@4@4000a666660000000000 DD 040266666r	; 2.6
CONST	ENDS
;	COMDAT __real@4@4003a800000000000000
CONST	SEGMENT
__real@4@4003a800000000000000 DD 041a80000r	; 21
CONST	ENDS
;	COMDAT __real@4@4002d000000000000000
CONST	SEGMENT
__real@4@4002d000000000000000 DD 041500000r	; 13
CONST	ENDS
;	COMDAT __real@4@4001e000000000000000
CONST	SEGMENT
__real@4@4001e000000000000000 DD 040e00000r	; 7
CONST	ENDS
;	COMDAT __real@4@3ffff333330000000000
CONST	SEGMENT
__real@4@3ffff333330000000000 DD 03ff33333r	; 1.9
CONST	ENDS
;	COMDAT __real@4@40008ccccd0000000000
CONST	SEGMENT
__real@4@40008ccccd0000000000 DD 0400ccccdr	; 2.2
CONST	ENDS
;	COMDAT __real@4@4000e666660000000000
CONST	SEGMENT
__real@4@4000e666660000000000 DD 040666666r	; 3.6
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@4@4005b400000000000000
CONST	SEGMENT
__real@4@4005b400000000000000 DD 042b40000r	; 90
CONST	ENDS
;	COMDAT __real@4@40018ccccd0000000000
CONST	SEGMENT
__real@4@40018ccccd0000000000 DD 0408ccccdr	; 4.4
CONST	ENDS
;	COMDAT __real@4@40059000000000000000
CONST	SEGMENT
__real@4@40059000000000000000 DD 042900000r	; 72
CONST	ENDS
;	COMDAT ?p_psyk_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -4
_a$ = -8
?p_psyk_run@@YAXPAUEVENT@@@Z PROC NEAR			; p_psyk_run, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_psyk.cpp
; Line 116
	push	ebp
	mov	ebp, esp
	sub	esp, 132				; 00000084H
	push	ebx
	push	esi
	push	edi
; Line 118
	push	1028					; 00000404H
	call	DWORD PTR __imp__glCullFace@4
; Line 120
	push	2929					; 00000b71H
	call	DWORD PTR __imp__glDisable@4
; Line 122
	mov	eax, DWORD PTR _e$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _t$[ebp], ecx
; Line 124
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 126
	push	2884					; 00000b44H
	call	DWORD PTR __imp__glEnable@4
; Line 128
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 130
	mov	edx, DWORD PTR _t$[ebp]
	push	edx
	call	?pp_generateScene@@YAXM@Z		; pp_generateScene
	add	esp, 4
; Line 132
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 133
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 134
	push	1083129856				; 408f4000H
	push	0
	push	0
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1079656448				; 405a4000H
	push	0
	call	_gluPerspective@32
; Line 135
	push	0
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	0
	push	0
	push	0
	push	0
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
	fst	DWORD PTR -12+[ebp]
	fmul	DWORD PTR __real@4@3ffeb333330000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@40008000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -16+[ebp]
	fmul	DWORD PTR __real@4@3ffeb333330000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -20+[ebp]
	fmul	DWORD PTR __real@4@3ffeb333330000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72
; Line 139
	call	DWORD PTR __imp__glPushMatrix@0
; Line 141
	push	111					; 0000006fH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 142
	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12
; Line 144
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -24+[ebp]
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fadd	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR _a$[ebp]
; Line 148
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000d9999a0000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -28+[ebp]
	fmul	DWORD PTR _a$[ebp]
	fadd	DWORD PTR _a$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000a666660000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -32+[ebp]
	fmul	DWORD PTR _a$[ebp]
	fadd	DWORD PTR _a$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -36+[ebp]
	fmul	DWORD PTR _a$[ebp]
	fadd	DWORD PTR _a$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12
; Line 150
	push	0
	push	0
	push	1065353216				; 3f800000H
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4003a800000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 151
	push	0
	push	1065353216				; 3f800000H
	push	0
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4002d000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 152
	push	1065353216				; 3f800000H
	push	0
	push	0
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4001e000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 154
	push	71					; 00000047H
	call	DWORD PTR __imp__glCallList@4
; Line 156
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@3ffff333330000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -40+[ebp]
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fadd	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR _a$[ebp]
; Line 160
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@40008ccccd0000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -44+[ebp]
	fmul	DWORD PTR _a$[ebp]
	fadd	DWORD PTR _a$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000e666660000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -48+[ebp]
	fmul	DWORD PTR _a$[ebp]
	fadd	DWORD PTR _a$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@40018000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -52+[ebp]
	fmul	DWORD PTR _a$[ebp]
	fadd	DWORD PTR _a$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12
; Line 162
	push	0
	push	0
	push	1065353216				; 3f800000H
	push	1119092736				; 42b40000H
	call	DWORD PTR __imp__glRotatef@16
; Line 163
	push	0
	push	0
	push	1065353216				; 3f800000H
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4005b400000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 165
	push	71					; 00000047H
	call	DWORD PTR __imp__glCallList@4
; Line 167
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@40008ccccd0000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -56+[ebp]
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fadd	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR _a$[ebp]
; Line 171
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@40018ccccd0000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -60+[ebp]
	fmul	DWORD PTR _a$[ebp]
	fadd	DWORD PTR _a$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000a666660000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -64+[ebp]
	fmul	DWORD PTR _a$[ebp]
	fadd	DWORD PTR _a$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -68+[ebp]
	fmul	DWORD PTR _a$[ebp]
	fadd	DWORD PTR _a$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12
; Line 173
	push	0
	push	1065353216				; 3f800000H
	push	0
	push	1119092736				; 42b40000H
	call	DWORD PTR __imp__glRotatef@16
; Line 174
	push	1065353216				; 3f800000H
	push	0
	push	0
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@40059000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 176
	push	71					; 00000047H
	call	DWORD PTR __imp__glCallList@4
; Line 178
	call	DWORD PTR __imp__glPopMatrix@0
; Line 180
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 182
	push	2884					; 00000b44H
	call	DWORD PTR __imp__glDisable@4
; Line 184
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_psyk_run@@YAXPAUEVENT@@@Z ENDP			; p_psyk_run
_TEXT	ENDS
END
