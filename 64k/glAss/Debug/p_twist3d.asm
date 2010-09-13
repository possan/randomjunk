	TITLE	D:\prj64k\glAss (eventad)\parts\p_twist3d.cpp
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
;	COMDAT ?p_twist3d_render_section@@YAXMMMMMMMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pt3d_funktionen_f@@YAMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_twist3d_render@@YAXMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_twist3d_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?p_twist3d_render_section@@YAXMMMMMMMMM@Z	; p_twist3d_render_section
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@4000c916870000000000
PUBLIC	__real@4@40008000000000000000
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@4@3ffec916870000000000
EXTRN	_cos:NEAR
EXTRN	_sin:NEAR
EXTRN	__imp__glNormal3f@12:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	__fltused:NEAR
EXTRN	__imp__glEnd@0:NEAR
;	COMDAT __real@4@3fff8000000000000000
; File d:\prj64k\glass (eventad)\parts\p_twist3d.cpp
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@4000c916870000000000
CONST	SEGMENT
__real@4@4000c916870000000000 DD 040491687r	; 3.142
CONST	ENDS
;	COMDAT __real@4@40008000000000000000
CONST	SEGMENT
__real@4@40008000000000000000 DD 040000000r	; 2
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@4@3ffec916870000000000
CONST	SEGMENT
__real@4@3ffec916870000000000 DD 03f491687r	; 0.7855
CONST	ENDS
;	COMDAT ?p_twist3d_render_section@@YAXMMMMMMMMM@Z
_TEXT	SEGMENT
_y0$ = 8
_b0$ = 12
_a0$ = 20
_a1$ = 24
_v0$ = 28
_v1$ = 32
_r0$ = 36
_r1$ = 40
_x$ = -32
_z$ = -64
_nx$ = -96
_nz$ = -128
_y1$ = -132
_i$ = -136
_aa0$19123 = -140
_aa1$19124 = -144
?p_twist3d_render_section@@YAXMMMMMMMMM@Z PROC NEAR	; p_twist3d_render_section, COMDAT
; File d:\prj64k\glass (eventad)\parts\p_twist3d.cpp
; Line 13
	push	ebp
	mov	ebp, esp
	sub	esp, 240				; 000000f0H
	push	ebx
	push	esi
	push	edi
; Line 19
	fld	DWORD PTR _y0$[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _y1$[ebp]
; Line 21
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19120
$L19121:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$L19120:
	cmp	DWORD PTR _i$[ebp], 4
	jge	$L19122
; Line 23
	fild	DWORD PTR _i$[ebp]
	fmul	DWORD PTR __real@4@4000c916870000000000
	fdiv	DWORD PTR __real@4@40008000000000000000
	fadd	DWORD PTR _a0$[ebp]
	fstp	DWORD PTR _aa0$19123[ebp]
; Line 24
	fild	DWORD PTR _i$[ebp]
	fmul	DWORD PTR __real@4@4000c916870000000000
	fdiv	DWORD PTR __real@4@40008000000000000000
	fadd	DWORD PTR _a1$[ebp]
	fstp	DWORD PTR _aa1$19124[ebp]
; Line 25
	fld	DWORD PTR _r0$[ebp]
	fmul	DWORD PTR __real@4@40018000000000000000
	fstp	DWORD PTR -148+[ebp]
	fld	DWORD PTR _aa0$19123[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -152+[ebp]
	fmul	DWORD PTR -148+[ebp]
	mov	ecx, DWORD PTR _i$[ebp]
	fstp	DWORD PTR _x$[ebp+ecx*8]
; Line 26
	fld	DWORD PTR _r0$[ebp]
	fmul	DWORD PTR __real@4@40018000000000000000
	fstp	DWORD PTR -156+[ebp]
	fld	DWORD PTR _aa0$19123[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -160+[ebp]
	fmul	DWORD PTR -156+[ebp]
	mov	edx, DWORD PTR _i$[ebp]
	fstp	DWORD PTR _z$[ebp+edx*8]
; Line 27
	fld	DWORD PTR _r1$[ebp]
	fmul	DWORD PTR __real@4@40018000000000000000
	fstp	DWORD PTR -164+[ebp]
	fld	DWORD PTR _aa1$19124[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -168+[ebp]
	fmul	DWORD PTR -164+[ebp]
	mov	eax, DWORD PTR _i$[ebp]
	fstp	DWORD PTR _x$[ebp+eax*8+4]
; Line 28
	fld	DWORD PTR _r1$[ebp]
	fmul	DWORD PTR __real@4@40018000000000000000
	fstp	DWORD PTR -172+[ebp]
	fld	DWORD PTR _aa1$19124[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -176+[ebp]
	fmul	DWORD PTR -172+[ebp]
	mov	ecx, DWORD PTR _i$[ebp]
	fstp	DWORD PTR _z$[ebp+ecx*8+4]
; Line 29
	fld	DWORD PTR _aa0$19123[ebp]
	fsub	DWORD PTR __real@4@3ffec916870000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	mov	edx, DWORD PTR _i$[ebp]
	fstp	DWORD PTR _nx$[ebp+edx*8]
; Line 30
	fld	DWORD PTR _aa0$19123[ebp]
	fsub	DWORD PTR __real@4@3ffec916870000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	mov	eax, DWORD PTR _i$[ebp]
	fstp	DWORD PTR _nz$[ebp+eax*8]
; Line 31
	fld	DWORD PTR _aa1$19124[ebp]
	fsub	DWORD PTR __real@4@3ffec916870000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	mov	ecx, DWORD PTR _i$[ebp]
	fstp	DWORD PTR _nx$[ebp+ecx*8+4]
; Line 32
	fld	DWORD PTR _aa1$19124[ebp]
	fsub	DWORD PTR __real@4@3ffec916870000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	mov	edx, DWORD PTR _i$[ebp]
	fstp	DWORD PTR _nz$[ebp+edx*8+4]
; Line 33
	jmp	$L19121
$L19122:
; Line 45
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 47
	fld	DWORD PTR _b0$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _b0$[ebp]
	fdiv	DWORD PTR __real@4@40008000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _b0$[ebp]
	push	eax
	call	DWORD PTR __imp__glColor3f@12
; Line 51
	mov	ecx, DWORD PTR _v0$[ebp]
	push	ecx
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 52
	mov	edx, DWORD PTR _z$[ebp]
	push	edx
	mov	eax, DWORD PTR _y0$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x$[ebp]
	push	ecx
	call	DWORD PTR __imp__glVertex3f@12
; Line 54
	mov	edx, DWORD PTR _v0$[ebp]
	push	edx
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 55
	mov	eax, DWORD PTR _z$[ebp+8]
	push	eax
	mov	ecx, DWORD PTR _y0$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x$[ebp+8]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 58
	mov	eax, DWORD PTR _v1$[ebp]
	push	eax
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 59
	mov	ecx, DWORD PTR _z$[ebp+12]
	push	ecx
	mov	edx, DWORD PTR _y1$[ebp]
	push	edx
	mov	eax, DWORD PTR _x$[ebp+12]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 61
	mov	ecx, DWORD PTR _v1$[ebp]
	push	ecx
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 62
	mov	edx, DWORD PTR _z$[ebp+4]
	push	edx
	mov	eax, DWORD PTR _y1$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x$[ebp+4]
	push	ecx
	call	DWORD PTR __imp__glVertex3f@12
; Line 66
	mov	edx, DWORD PTR _b0$[ebp]
	push	edx
	fld	DWORD PTR _b0$[ebp]
	fdiv	DWORD PTR __real@4@40008000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _b0$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12
; Line 69
	mov	eax, DWORD PTR _v0$[ebp]
	push	eax
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 70
	mov	ecx, DWORD PTR _z$[ebp+8]
	push	ecx
	mov	edx, DWORD PTR _y0$[ebp]
	push	edx
	mov	eax, DWORD PTR _x$[ebp+8]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 72
	mov	ecx, DWORD PTR _v0$[ebp]
	push	ecx
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 73
	mov	edx, DWORD PTR _z$[ebp+16]
	push	edx
	mov	eax, DWORD PTR _y0$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x$[ebp+16]
	push	ecx
	call	DWORD PTR __imp__glVertex3f@12
; Line 76
	mov	edx, DWORD PTR _v1$[ebp]
	push	edx
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 77
	mov	eax, DWORD PTR _z$[ebp+20]
	push	eax
	mov	ecx, DWORD PTR _y1$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x$[ebp+20]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 79
	mov	eax, DWORD PTR _v1$[ebp]
	push	eax
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 80
	mov	ecx, DWORD PTR _z$[ebp+12]
	push	ecx
	mov	edx, DWORD PTR _y1$[ebp]
	push	edx
	mov	eax, DWORD PTR _x$[ebp+12]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 84
	fld	DWORD PTR _b0$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _b0$[ebp]
	fdiv	DWORD PTR __real@4@40008000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _b0$[ebp]
	push	ecx
	call	DWORD PTR __imp__glColor3f@12
; Line 86
	mov	edx, DWORD PTR _nz$[ebp+16]
	push	edx
	push	0
	mov	eax, DWORD PTR _nx$[ebp+16]
	push	eax
	call	DWORD PTR __imp__glNormal3f@12
; Line 87
	mov	ecx, DWORD PTR _v0$[ebp]
	push	ecx
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 88
	mov	edx, DWORD PTR _z$[ebp+16]
	push	edx
	mov	eax, DWORD PTR _y0$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x$[ebp+16]
	push	ecx
	call	DWORD PTR __imp__glVertex3f@12
; Line 90
	mov	edx, DWORD PTR _v0$[ebp]
	push	edx
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 91
	mov	eax, DWORD PTR _z$[ebp+24]
	push	eax
	mov	ecx, DWORD PTR _y0$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x$[ebp+24]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 93
	mov	eax, DWORD PTR _nz$[ebp+20]
	push	eax
	push	0
	mov	ecx, DWORD PTR _nx$[ebp+20]
	push	ecx
	call	DWORD PTR __imp__glNormal3f@12
; Line 95
	mov	edx, DWORD PTR _v1$[ebp]
	push	edx
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 96
	mov	eax, DWORD PTR _z$[ebp+28]
	push	eax
	mov	ecx, DWORD PTR _y1$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x$[ebp+28]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 97
	mov	eax, DWORD PTR _v1$[ebp]
	push	eax
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 98
	mov	ecx, DWORD PTR _z$[ebp+20]
	push	ecx
	mov	edx, DWORD PTR _y1$[ebp]
	push	edx
	mov	eax, DWORD PTR _x$[ebp+20]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 102
	mov	ecx, DWORD PTR _b0$[ebp]
	push	ecx
	fld	DWORD PTR _b0$[ebp]
	fdiv	DWORD PTR __real@4@40008000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _b0$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12
; Line 105
	mov	edx, DWORD PTR _v0$[ebp]
	push	edx
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 106
	mov	eax, DWORD PTR _z$[ebp+24]
	push	eax
	mov	ecx, DWORD PTR _y0$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x$[ebp+24]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 108
	mov	eax, DWORD PTR _v0$[ebp]
	push	eax
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 109
	mov	ecx, DWORD PTR _z$[ebp]
	push	ecx
	mov	edx, DWORD PTR _y0$[ebp]
	push	edx
	mov	eax, DWORD PTR _x$[ebp]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 111
	mov	ecx, DWORD PTR _v1$[ebp]
	push	ecx
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 112
	mov	edx, DWORD PTR _z$[ebp+4]
	push	edx
	mov	eax, DWORD PTR _y1$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x$[ebp+4]
	push	ecx
	call	DWORD PTR __imp__glVertex3f@12
; Line 113
	mov	edx, DWORD PTR _v1$[ebp]
	push	edx
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 114
	mov	eax, DWORD PTR _z$[ebp+28]
	push	eax
	mov	ecx, DWORD PTR _y1$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x$[ebp+28]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 116
	call	DWORD PTR __imp__glEnd@0
; Line 117
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_twist3d_render_section@@YAXMMMMMMMMM@Z ENDP		; p_twist3d_render_section
_TEXT	ENDS
PUBLIC	?pt3d_funktionen_f@@YAMMM@Z			; pt3d_funktionen_f
PUBLIC	__real@4@4004a800000000000000
PUBLIC	__real@4@40048000000000000000
PUBLIC	__real@4@4000c000000000000000
;	COMDAT __real@4@4004a800000000000000
; File d:\prj64k\glass (eventad)\parts\p_twist3d.cpp
CONST	SEGMENT
__real@4@4004a800000000000000 DD 042280000r	; 42
CONST	ENDS
;	COMDAT __real@4@40048000000000000000
CONST	SEGMENT
__real@4@40048000000000000000 DD 042000000r	; 32
CONST	ENDS
;	COMDAT __real@4@4000c000000000000000
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT ?pt3d_funktionen_f@@YAMMM@Z
_TEXT	SEGMENT
_t$ = 8
_offset$ = 12
_f$ = -4
?pt3d_funktionen_f@@YAMMM@Z PROC NEAR			; pt3d_funktionen_f, COMDAT
; File d:\prj64k\glass (eventad)\parts\p_twist3d.cpp
; Line 137
	push	ebp
	mov	ebp, esp
	sub	esp, 76					; 0000004cH
	push	ebx
	push	esi
	push	edi
; Line 139
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _f$[ebp]
; Line 140
	fld	DWORD PTR _offset$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	fsubr	DWORD PTR _f$[ebp]
	fstp	DWORD PTR _f$[ebp]
; Line 141
	fld	DWORD PTR _t$[ebp]
	fsub	DWORD PTR _offset$[ebp]
	fadd	DWORD PTR __real@4@4004a800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -8+[ebp]
	fadd	DWORD PTR _f$[ebp]
	fstp	DWORD PTR _f$[ebp]
; Line 143
	fld	DWORD PTR _t$[ebp]
	fadd	DWORD PTR __real@4@40048000000000000000
	fdiv	DWORD PTR __real@4@4000c000000000000000
	fsub	DWORD PTR _offset$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -12+[ebp]
	fadd	ST(0), ST(0)
	fsubr	DWORD PTR _f$[ebp]
	fst	DWORD PTR _f$[ebp]
; Line 148
	fmul	DWORD PTR __real@4@4000c000000000000000
	fst	DWORD PTR _f$[ebp]
; Line 150
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?pt3d_funktionen_f@@YAMMM@Z ENDP			; pt3d_funktionen_f
_TEXT	ENDS
PUBLIC	?p_twist3d_render@@YAXMM@Z			; p_twist3d_render
PUBLIC	__real@4@40048c00000000000000
PUBLIC	__real@4@4002f000000000000000
PUBLIC	__real@4@3ffe8000000000000000
PUBLIC	__real@4@40028000000000000000
EXTRN	_fabs:NEAR
;	COMDAT __real@4@40048c00000000000000
; File d:\prj64k\glass (eventad)\parts\p_twist3d.cpp
CONST	SEGMENT
__real@4@40048c00000000000000 DD 0420c0000r	; 35
CONST	ENDS
;	COMDAT __real@4@4002f000000000000000
CONST	SEGMENT
__real@4@4002f000000000000000 DD 041700000r	; 15
CONST	ENDS
;	COMDAT __real@4@3ffe8000000000000000
CONST	SEGMENT
__real@4@3ffe8000000000000000 DD 03f000000r	; 0.5
CONST	ENDS
;	COMDAT __real@4@40028000000000000000
CONST	SEGMENT
__real@4@40028000000000000000 DD 041000000r	; 8
CONST	ENDS
;	COMDAT ?p_twist3d_render@@YAXMM@Z
_TEXT	SEGMENT
_t$ = 8
_bb$ = 12
_angle$ = -400
_rad$ = -800
_i$ = -804
_a$19150 = -808
_r$19152 = -812
_b0$19158 = -816
_b1$19160 = -820
_a0$19162 = -824
_a1$19163 = -828
_r0$19164 = -832
_r1$19165 = -836
_v0$19166 = -840
_v1$19168 = -844
?p_twist3d_render@@YAXMM@Z PROC NEAR			; p_twist3d_render, COMDAT
; File d:\prj64k\glass (eventad)\parts\p_twist3d.cpp
; Line 152
	push	ebp
	mov	ebp, esp
	sub	esp, 932				; 000003a4H
	push	ebx
	push	esi
	push	edi
; Line 158
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19147
$L19148:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$L19147:
	cmp	DWORD PTR _i$[ebp], 100			; 00000064H
	jge	$L19149
; Line 159
	fild	DWORD PTR _i$[ebp]
	fdiv	DWORD PTR __real@4@40048c00000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _t$[ebp]
	push	ecx
	call	?pt3d_funktionen_f@@YAMMM@Z		; pt3d_funktionen_f
	add	esp, 8
	fstp	DWORD PTR _a$19150[ebp]
; Line 160
	fild	DWORD PTR _i$[ebp]
	fadd	DWORD PTR _a$19150[ebp]
	fadd	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4002f000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -848+[ebp]
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _r$19152[ebp]
; Line 161
	mov	edx, DWORD PTR _i$[ebp]
	mov	eax, DWORD PTR _a$19150[ebp]
	mov	DWORD PTR _angle$[ebp+edx*4], eax
; Line 162
	mov	ecx, DWORD PTR _i$[ebp]
	mov	edx, DWORD PTR _r$19152[ebp]
	mov	DWORD PTR _rad$[ebp+ecx*4], edx
; Line 163
	jmp	$L19148
$L19149:
; Line 165
	mov	DWORD PTR _i$[ebp], -40			; ffffffd8H
	jmp	SHORT $L19155
$L19156:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$L19155:
	cmp	DWORD PTR _i$[ebp], 40			; 00000028H
	jge	$L19157
; Line 167
	fild	DWORD PTR _i$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_fabs
	add	esp, 8
	fst	DWORD PTR -852+[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _b0$19158[ebp]
; Line 168
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	mov	DWORD PTR -856+[ebp], ecx
	fild	DWORD PTR -856+[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_fabs
	add	esp, 8
	fst	DWORD PTR -860+[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _b1$19160[ebp]
; Line 170
	fld	DWORD PTR _b0$19158[ebp]
	fmul	DWORD PTR _bb$[ebp]
	fstp	DWORD PTR _b0$19158[ebp]
; Line 171
	fld	DWORD PTR _b1$19160[ebp]
	fmul	DWORD PTR _bb$[ebp]
	fstp	DWORD PTR _b1$19160[ebp]
; Line 173
	mov	edx, DWORD PTR _i$[ebp]
	mov	eax, DWORD PTR _angle$[ebp+edx*4+200]
	mov	DWORD PTR _a0$19162[ebp], eax
; Line 174
	mov	ecx, DWORD PTR _i$[ebp]
	mov	edx, DWORD PTR _angle$[ebp+ecx*4+204]
	mov	DWORD PTR _a1$19163[ebp], edx
; Line 175
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _rad$[ebp+eax*4+200]
	mov	DWORD PTR _r0$19164[ebp], ecx
; Line 176
	mov	edx, DWORD PTR _i$[ebp]
	mov	eax, DWORD PTR _rad$[ebp+edx*4+204]
	mov	DWORD PTR _r1$19165[ebp], eax
; Line 178
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 40					; 00000028H
	mov	DWORD PTR -864+[ebp], ecx
	fild	DWORD PTR -864+[ebp]
	fdiv	DWORD PTR __real@4@40028000000000000000
	fstp	DWORD PTR _v0$19166[ebp]
; Line 179
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, 41					; 00000029H
	mov	DWORD PTR -868+[ebp], edx
	fild	DWORD PTR -868+[ebp]
	fdiv	DWORD PTR __real@4@40028000000000000000
	fstp	DWORD PTR _v1$19168[ebp]
; Line 181
	mov	eax, DWORD PTR _r1$19165[ebp]
	push	eax
	mov	ecx, DWORD PTR _r0$19164[ebp]
	push	ecx
	mov	edx, DWORD PTR _v1$19168[ebp]
	push	edx
	mov	eax, DWORD PTR _v0$19166[ebp]
	push	eax
	mov	ecx, DWORD PTR _a1$19163[ebp]
	push	ecx
	mov	edx, DWORD PTR _a0$19162[ebp]
	push	edx
	mov	eax, DWORD PTR _b1$19160[ebp]
	push	eax
	mov	ecx, DWORD PTR _b0$19158[ebp]
	push	ecx
	fild	DWORD PTR _i$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	?p_twist3d_render_section@@YAXMMMMMMMMM@Z ; p_twist3d_render_section
	add	esp, 36					; 00000024H
; Line 183
	jmp	$L19156
$L19157:
; Line 184
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_twist3d_render@@YAXMM@Z ENDP				; p_twist3d_render
_TEXT	ENDS
PUBLIC	?p_twist3d_run@@YAXPAUEVENT@@@Z			; p_twist3d_run
PUBLIC	__real@4@4001e000000000000000
PUBLIC	__real@8@3fff8000000000000000
PUBLIC	__real@4@4001c000000000000000
PUBLIC	__real@8@40038800000000000000
PUBLIC	__real@8@00000000000000000000
PUBLIC	__real@4@4001a000000000000000
PUBLIC	__real@8@40039800000000000000
PUBLIC	__real@4@4004f000000000000000
PUBLIC	__real@4@40058c00000000000000
PUBLIC	__real@8@40039000000000000000
PUBLIC	__real@4@40068400000000000000
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glRotatef@16:NEAR
EXTRN	__imp__glScalef@12:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glTranslatef@12:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__imp__glClearDepth@8:NEAR
EXTRN	__ftol:NEAR
EXTRN	_gluPerspective@32:NEAR
EXTRN	_gluLookAt@72:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
;	COMDAT __real@4@4001e000000000000000
; File d:\prj64k\glass (eventad)\parts\p_twist3d.cpp
CONST	SEGMENT
__real@4@4001e000000000000000 DD 040e00000r	; 7
CONST	ENDS
;	COMDAT __real@8@3fff8000000000000000
CONST	SEGMENT
__real@8@3fff8000000000000000 DQ 03ff0000000000000r ; 1
CONST	ENDS
;	COMDAT __real@4@4001c000000000000000
CONST	SEGMENT
__real@4@4001c000000000000000 DD 040c00000r	; 6
CONST	ENDS
;	COMDAT __real@8@40038800000000000000
CONST	SEGMENT
__real@8@40038800000000000000 DQ 04031000000000000r ; 17
CONST	ENDS
;	COMDAT __real@8@00000000000000000000
CONST	SEGMENT
__real@8@00000000000000000000 DQ 00000000000000000r ; 0
CONST	ENDS
;	COMDAT __real@4@4001a000000000000000
CONST	SEGMENT
__real@4@4001a000000000000000 DD 040a00000r	; 5
CONST	ENDS
;	COMDAT __real@8@40039800000000000000
CONST	SEGMENT
__real@8@40039800000000000000 DQ 04033000000000000r ; 19
CONST	ENDS
;	COMDAT __real@4@4004f000000000000000
CONST	SEGMENT
__real@4@4004f000000000000000 DD 042700000r	; 60
CONST	ENDS
;	COMDAT __real@4@40058c00000000000000
CONST	SEGMENT
__real@4@40058c00000000000000 DD 0428c0000r	; 70
CONST	ENDS
;	COMDAT __real@8@40039000000000000000
CONST	SEGMENT
__real@8@40039000000000000000 DQ 04032000000000000r ; 18
CONST	ENDS
;	COMDAT __real@4@40068400000000000000
CONST	SEGMENT
__real@4@40068400000000000000 DD 043040000r	; 132
CONST	ENDS
;	COMDAT ?p_twist3d_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -4
?p_twist3d_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_twist3d_run, COMDAT
; File d:\prj64k\glass (eventad)\parts\p_twist3d.cpp
; Line 186
	push	ebp
	mov	ebp, esp
	sub	esp, 96					; 00000060H
	push	ebx
	push	esi
	push	edi
; Line 191
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 192
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 193
	push	-1082130432				; bf800000H
	push	0
	push	0
	call	DWORD PTR __imp__glTranslatef@12
; Line 195
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 196
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 223
	push	1072693248				; 3ff00000H
	push	0
	call	DWORD PTR __imp__glClearDepth@8
; Line 224
	push	2929					; 00000b71H
	call	DWORD PTR __imp__glDisable@4
; Line 225
	push	3008					; 00000bc0H
	call	DWORD PTR __imp__glDisable@4
; Line 230
	mov	eax, DWORD PTR _e$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _t$[ebp], ecx
; Line 245
	push	2929					; 00000b71H
	call	DWORD PTR __imp__glDisable@4
; Line 246
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 247
	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12
; Line 248
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 250
	push	1079574528				; 40590000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1079164928				; 4052c000H
	push	0
	call	_gluPerspective@32
; Line 252
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	fsub	DWORD PTR __real@4@3ffe8000000000000000
	call	__ftol
	mov	DWORD PTR -8+[ebp], eax
	mov	edx, DWORD PTR -8+[ebp]
	sub	edx, 1
	mov	DWORD PTR -8+[ebp], edx
	cmp	DWORD PTR -8+[ebp], 5
	ja	$L19186
	mov	eax, DWORD PTR -8+[ebp]
	jmp	DWORD PTR $L19270[eax*4]
$L19180:
; Line 255
	push	0
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	0
	push	0
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001e000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fmul	QWORD PTR __real@8@3fff8000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@3fff8000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@3fff8000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fmul	QWORD PTR __real@8@40038800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@00000000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@40039800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72
; Line 256
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -12+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -16+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@40028000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -20+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	1121058816				; 42d20000H
	call	DWORD PTR __imp__glRotatef@16
; Line 257
	jmp	$L19177
$L19184:
; Line 264
	push	0
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	0
	push	0
	push	0
	push	0
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@40018000000000000000
	fsubr	DWORD PTR __real@4@4004f000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	push	0
	push	0
	push	1072693248				; 3ff00000H
	push	0
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@40018000000000000000
	fsubr	DWORD PTR __real@4@40058c00000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@3fff8000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72
; Line 265
	jmp	$L19177
$L19185:
; Line 267
	push	0
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	0
	push	0
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fmul	QWORD PTR __real@8@3fff8000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@3fff8000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@3fff8000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fmul	QWORD PTR __real@8@40039000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@00000000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@40038800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72
; Line 268
	jmp	$L19177
$L19186:
; Line 270
	push	0
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	0
	push	0
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fmul	QWORD PTR __real@8@3fff8000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001e000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@3fff8000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@3fff8000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fmul	QWORD PTR __real@8@40039800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@00000000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fmul	QWORD PTR __real@8@40039000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72
; Line 271
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -24+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -28+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@40028000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -32+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	-1036779520				; c2340000H
	call	DWORD PTR __imp__glRotatef@16
$L19177:
; Line 287
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 288
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 290
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 291
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 292
	push	117					; 00000075H
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 294
	push	1065353216				; 3f800000H
	mov	ecx, DWORD PTR _t$[ebp]
	push	ecx
	call	?p_twist3d_render@@YAXMM@Z		; p_twist3d_render
	add	esp, 8
; Line 297
	push	1082130432				; 40800000H
	push	1082130432				; 40800000H
	push	1082130432				; 40800000H
	call	DWORD PTR __imp__glScalef@12
; Line 299
	push	1048576000				; 3e800000H
	fld	DWORD PTR _t$[ebp]
	fadd	DWORD PTR __real@4@40068400000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?p_twist3d_render@@YAXMM@Z		; p_twist3d_render
	add	esp, 8
; Line 322
	push	2912					; 00000b60H
	call	DWORD PTR __imp__glDisable@4
; Line 323
	push	16384					; 00004000H
	call	DWORD PTR __imp__glDisable@4
; Line 324
	push	2896					; 00000b50H
	call	DWORD PTR __imp__glDisable@4
; Line 326
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
$L19270:
	DD	$L19180
	DD	$L19184
	DD	$L19186
	DD	$L19185
	DD	$L19180
	DD	$L19184
?p_twist3d_run@@YAXPAUEVENT@@@Z ENDP			; p_twist3d_run
_TEXT	ENDS
END
