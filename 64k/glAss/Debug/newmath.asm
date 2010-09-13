	TITLE	D:\prj64k\glAss (eventad)\misccode\newmath.cpp
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
;	COMDAT ?Cos@@YAMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Sin@@YAMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?matrix_ident@@YAXPAUMATRIX@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?matrix_mul@@YAXPAUMATRIX@@00@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?rotate_z_matrix@@YAXMPAUMATRIX@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?rotate_x_matrix@@YAXMPAUMATRIX@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?rotate_y_matrix@@YAXMPAUMATRIX@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?build_rotation_matrix@@YAXMMMPAUMATRIX@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?matrix_from_vectors@@YAXPAUVECTOR@@0PAUMATRIX@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?vector_mul@@YAXPAUMATRIX@@PAUVECTOR@@1@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?vector_crossproduct@@YAXPAUVECTOR@@00@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?vector_dotproduct@@YAMPAUVECTOR@@0@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?vector_length@@YAMPAUVECTOR@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?vector_normalize@@YAMPAUVECTOR@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?vector@@YA?AUVECTOR@@MMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?vector_add@@YAXPAUVECTOR@@0@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?vector_sub@@YAXPAUVECTOR@@0@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?invert_matrix@@YAXPAUMATRIX@@0@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?vector_project@@YAXPAUVECTOR@@0MM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	__real@4@4000c90fdb0000000000
PUBLIC	__real@4@400e8000000000000000
PUBLIC	?Cos@@YAMM@Z					; Cos
EXTRN	__fltused:NEAR
EXTRN	_cos:NEAR
;	COMDAT __real@4@4000c90fdb0000000000
; File d:\prj64k\glass (eventad)\misccode\newmath.cpp
CONST	SEGMENT
__real@4@4000c90fdb0000000000 DD 040490fdbr	; 3.14159
CONST	ENDS
;	COMDAT __real@4@400e8000000000000000
CONST	SEGMENT
__real@4@400e8000000000000000 DD 047000000r	; 32768
CONST	ENDS
;	COMDAT ?Cos@@YAMM@Z
_TEXT	SEGMENT
_angle$ = 8
?Cos@@YAMM@Z PROC NEAR					; Cos, COMDAT
; File d:\prj64k\glass (eventad)\misccode\newmath.cpp
; Line 9
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 10
	fld	DWORD PTR _angle$[ebp]
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@400e8000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -4+[ebp]
; Line 11
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?Cos@@YAMM@Z ENDP					; Cos
_TEXT	ENDS
PUBLIC	?Sin@@YAMM@Z					; Sin
EXTRN	_sin:NEAR
;	COMDAT ?Sin@@YAMM@Z
_TEXT	SEGMENT
_angle$ = 8
?Sin@@YAMM@Z PROC NEAR					; Sin, COMDAT
; Line 13
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 14
	fld	DWORD PTR _angle$[ebp]
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@400e8000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -4+[ebp]
; Line 15
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?Sin@@YAMM@Z ENDP					; Sin
_TEXT	ENDS
PUBLIC	?matrix_ident@@YAXPAUMATRIX@@@Z			; matrix_ident
;	COMDAT ?matrix_ident@@YAXPAUMATRIX@@@Z
_TEXT	SEGMENT
_mat$ = 8
?matrix_ident@@YAXPAUMATRIX@@@Z PROC NEAR		; matrix_ident, COMDAT
; Line 17
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 18
	mov	eax, DWORD PTR _mat$[ebp]
	mov	DWORD PTR [eax], 1065353216		; 3f800000H
; Line 19
	mov	ecx, DWORD PTR _mat$[ebp]
	mov	DWORD PTR [ecx+16], 0
; Line 20
	mov	edx, DWORD PTR _mat$[ebp]
	mov	DWORD PTR [edx+32], 0
; Line 21
	mov	eax, DWORD PTR _mat$[ebp]
	mov	DWORD PTR [eax+48], 0
; Line 22
	mov	ecx, DWORD PTR _mat$[ebp]
	mov	DWORD PTR [ecx+4], 0
; Line 23
	mov	edx, DWORD PTR _mat$[ebp]
	mov	DWORD PTR [edx+20], 1065353216		; 3f800000H
; Line 24
	mov	eax, DWORD PTR _mat$[ebp]
	mov	DWORD PTR [eax+36], 0
; Line 25
	mov	ecx, DWORD PTR _mat$[ebp]
	mov	DWORD PTR [ecx+52], 0
; Line 26
	mov	edx, DWORD PTR _mat$[ebp]
	mov	DWORD PTR [edx+8], 0
; Line 27
	mov	eax, DWORD PTR _mat$[ebp]
	mov	DWORD PTR [eax+24], 0
; Line 28
	mov	ecx, DWORD PTR _mat$[ebp]
	mov	DWORD PTR [ecx+40], 1065353216		; 3f800000H
; Line 29
	mov	edx, DWORD PTR _mat$[ebp]
	mov	DWORD PTR [edx+56], 0
; Line 30
	mov	eax, DWORD PTR _mat$[ebp]
	mov	DWORD PTR [eax+12], 0
; Line 31
	mov	ecx, DWORD PTR _mat$[ebp]
	mov	DWORD PTR [ecx+28], 0
; Line 32
	mov	edx, DWORD PTR _mat$[ebp]
	mov	DWORD PTR [edx+44], 0
; Line 33
	mov	eax, DWORD PTR _mat$[ebp]
	mov	DWORD PTR [eax+60], 1065353216		; 3f800000H
; Line 34
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?matrix_ident@@YAXPAUMATRIX@@@Z ENDP			; matrix_ident
_TEXT	ENDS
PUBLIC	?matrix_mul@@YAXPAUMATRIX@@00@Z			; matrix_mul
;	COMDAT ?matrix_mul@@YAXPAUMATRIX@@00@Z
_TEXT	SEGMENT
_a$ = 8
_b$ = 12
_d$ = 16
?matrix_mul@@YAXPAUMATRIX@@00@Z PROC NEAR		; matrix_mul, COMDAT
; Line 36
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 37
	mov	eax, DWORD PTR _a$[ebp]
	mov	ecx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [eax]
	fmul	DWORD PTR [ecx]
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR _b$[ebp]
	fld	DWORD PTR [edx+4]
	fmul	DWORD PTR [eax+16]
	faddp	ST(1), ST(0)
	mov	ecx, DWORD PTR _a$[ebp]
	mov	edx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [ecx+8]
	fmul	DWORD PTR [edx+32]
	faddp	ST(1), ST(0)
	mov	eax, DWORD PTR _d$[ebp]
	fstp	DWORD PTR [eax]
; Line 38
	mov	ecx, DWORD PTR _a$[ebp]
	mov	edx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [ecx]
	fmul	DWORD PTR [edx+4]
	mov	eax, DWORD PTR _a$[ebp]
	mov	ecx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [eax+4]
	fmul	DWORD PTR [ecx+20]
	faddp	ST(1), ST(0)
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR _b$[ebp]
	fld	DWORD PTR [edx+8]
	fmul	DWORD PTR [eax+36]
	faddp	ST(1), ST(0)
	mov	ecx, DWORD PTR _d$[ebp]
	fstp	DWORD PTR [ecx+4]
; Line 39
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR _b$[ebp]
	fld	DWORD PTR [edx]
	fmul	DWORD PTR [eax+8]
	mov	ecx, DWORD PTR _a$[ebp]
	mov	edx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [ecx+4]
	fmul	DWORD PTR [edx+24]
	faddp	ST(1), ST(0)
	mov	eax, DWORD PTR _a$[ebp]
	mov	ecx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [eax+8]
	fmul	DWORD PTR [ecx+40]
	faddp	ST(1), ST(0)
	mov	edx, DWORD PTR _d$[ebp]
	fstp	DWORD PTR [edx+8]
; Line 40
	mov	eax, DWORD PTR _a$[ebp]
	mov	ecx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [eax+16]
	fmul	DWORD PTR [ecx]
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR _b$[ebp]
	fld	DWORD PTR [edx+20]
	fmul	DWORD PTR [eax+16]
	faddp	ST(1), ST(0)
	mov	ecx, DWORD PTR _a$[ebp]
	mov	edx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [ecx+24]
	fmul	DWORD PTR [edx+32]
	faddp	ST(1), ST(0)
	mov	eax, DWORD PTR _d$[ebp]
	fstp	DWORD PTR [eax+16]
; Line 41
	mov	ecx, DWORD PTR _a$[ebp]
	mov	edx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [ecx+16]
	fmul	DWORD PTR [edx+4]
	mov	eax, DWORD PTR _a$[ebp]
	mov	ecx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [eax+20]
	fmul	DWORD PTR [ecx+20]
	faddp	ST(1), ST(0)
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR _b$[ebp]
	fld	DWORD PTR [edx+24]
	fmul	DWORD PTR [eax+36]
	faddp	ST(1), ST(0)
	mov	ecx, DWORD PTR _d$[ebp]
	fstp	DWORD PTR [ecx+20]
; Line 42
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR _b$[ebp]
	fld	DWORD PTR [edx+16]
	fmul	DWORD PTR [eax+8]
	mov	ecx, DWORD PTR _a$[ebp]
	mov	edx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [ecx+20]
	fmul	DWORD PTR [edx+24]
	faddp	ST(1), ST(0)
	mov	eax, DWORD PTR _a$[ebp]
	mov	ecx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [eax+24]
	fmul	DWORD PTR [ecx+40]
	faddp	ST(1), ST(0)
	mov	edx, DWORD PTR _d$[ebp]
	fstp	DWORD PTR [edx+24]
; Line 43
	mov	eax, DWORD PTR _a$[ebp]
	mov	ecx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [eax+32]
	fmul	DWORD PTR [ecx]
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR _b$[ebp]
	fld	DWORD PTR [edx+36]
	fmul	DWORD PTR [eax+16]
	faddp	ST(1), ST(0)
	mov	ecx, DWORD PTR _a$[ebp]
	mov	edx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [ecx+40]
	fmul	DWORD PTR [edx+32]
	faddp	ST(1), ST(0)
	mov	eax, DWORD PTR _d$[ebp]
	fstp	DWORD PTR [eax+32]
; Line 44
	mov	ecx, DWORD PTR _a$[ebp]
	mov	edx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [ecx+32]
	fmul	DWORD PTR [edx+4]
	mov	eax, DWORD PTR _a$[ebp]
	mov	ecx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [eax+36]
	fmul	DWORD PTR [ecx+20]
	faddp	ST(1), ST(0)
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR _b$[ebp]
	fld	DWORD PTR [edx+40]
	fmul	DWORD PTR [eax+36]
	faddp	ST(1), ST(0)
	mov	ecx, DWORD PTR _d$[ebp]
	fstp	DWORD PTR [ecx+36]
; Line 45
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR _b$[ebp]
	fld	DWORD PTR [edx+32]
	fmul	DWORD PTR [eax+8]
	mov	ecx, DWORD PTR _a$[ebp]
	mov	edx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [ecx+36]
	fmul	DWORD PTR [edx+24]
	faddp	ST(1), ST(0)
	mov	eax, DWORD PTR _a$[ebp]
	mov	ecx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [eax+40]
	fmul	DWORD PTR [ecx+40]
	faddp	ST(1), ST(0)
	mov	edx, DWORD PTR _d$[ebp]
	fstp	DWORD PTR [edx+40]
; Line 46
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?matrix_mul@@YAXPAUMATRIX@@00@Z ENDP			; matrix_mul
_TEXT	ENDS
PUBLIC	?rotate_z_matrix@@YAXMPAUMATRIX@@@Z		; rotate_z_matrix
;	COMDAT ?rotate_z_matrix@@YAXMPAUMATRIX@@@Z
_TEXT	SEGMENT
_v$ = 8
_m$ = 12
?rotate_z_matrix@@YAXMPAUMATRIX@@@Z PROC NEAR		; rotate_z_matrix, COMDAT
; Line 48
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 49
	mov	eax, DWORD PTR _v$[ebp]
	push	eax
	call	?Cos@@YAMM@Z				; Cos
	add	esp, 4
	mov	ecx, DWORD PTR _m$[ebp]
	fstp	DWORD PTR [ecx]
; Line 50
	mov	edx, DWORD PTR _v$[ebp]
	push	edx
	call	?Sin@@YAMM@Z				; Sin
	add	esp, 4
	mov	eax, DWORD PTR _m$[ebp]
	fstp	DWORD PTR [eax+4]
; Line 51
	mov	ecx, DWORD PTR _v$[ebp]
	push	ecx
	call	?Sin@@YAMM@Z				; Sin
	add	esp, 4
	fchs
	mov	edx, DWORD PTR _m$[ebp]
	fstp	DWORD PTR [edx+16]
; Line 52
	mov	eax, DWORD PTR _v$[ebp]
	push	eax
	call	?Cos@@YAMM@Z				; Cos
	add	esp, 4
	mov	ecx, DWORD PTR _m$[ebp]
	fstp	DWORD PTR [ecx+20]
; Line 53
	mov	edx, DWORD PTR _m$[ebp]
	mov	DWORD PTR [edx+36], 0
	mov	eax, DWORD PTR _m$[ebp]
	mov	DWORD PTR [eax+32], 0
	mov	ecx, DWORD PTR _m$[ebp]
	mov	DWORD PTR [ecx+8], 0
	mov	edx, DWORD PTR _m$[ebp]
	mov	DWORD PTR [edx+24], 0
; Line 54
	mov	eax, DWORD PTR _m$[ebp]
	mov	DWORD PTR [eax+40], 1065353216		; 3f800000H
; Line 55
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?rotate_z_matrix@@YAXMPAUMATRIX@@@Z ENDP		; rotate_z_matrix
_TEXT	ENDS
PUBLIC	?rotate_x_matrix@@YAXMPAUMATRIX@@@Z		; rotate_x_matrix
;	COMDAT ?rotate_x_matrix@@YAXMPAUMATRIX@@@Z
_TEXT	SEGMENT
_v$ = 8
_m$ = 12
?rotate_x_matrix@@YAXMPAUMATRIX@@@Z PROC NEAR		; rotate_x_matrix, COMDAT
; Line 57
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 58
	mov	eax, DWORD PTR _v$[ebp]
	push	eax
	call	?Cos@@YAMM@Z				; Cos
	add	esp, 4
	mov	ecx, DWORD PTR _m$[ebp]
	fstp	DWORD PTR [ecx+20]
; Line 59
	mov	edx, DWORD PTR _v$[ebp]
	push	edx
	call	?Sin@@YAMM@Z				; Sin
	add	esp, 4
	mov	eax, DWORD PTR _m$[ebp]
	fstp	DWORD PTR [eax+24]
; Line 60
	mov	ecx, DWORD PTR _v$[ebp]
	push	ecx
	call	?Sin@@YAMM@Z				; Sin
	add	esp, 4
	fchs
	mov	edx, DWORD PTR _m$[ebp]
	fstp	DWORD PTR [edx+36]
; Line 61
	mov	eax, DWORD PTR _v$[ebp]
	push	eax
	call	?Cos@@YAMM@Z				; Cos
	add	esp, 4
	mov	ecx, DWORD PTR _m$[ebp]
	fstp	DWORD PTR [ecx+40]
; Line 62
	mov	edx, DWORD PTR _m$[ebp]
	mov	DWORD PTR [edx+8], 0
	mov	eax, DWORD PTR _m$[ebp]
	mov	DWORD PTR [eax+4], 0
	mov	ecx, DWORD PTR _m$[ebp]
	mov	DWORD PTR [ecx+32], 0
	mov	edx, DWORD PTR _m$[ebp]
	mov	DWORD PTR [edx+16], 0
; Line 63
	mov	eax, DWORD PTR _m$[ebp]
	mov	DWORD PTR [eax], 1065353216		; 3f800000H
; Line 64
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?rotate_x_matrix@@YAXMPAUMATRIX@@@Z ENDP		; rotate_x_matrix
_TEXT	ENDS
PUBLIC	?rotate_y_matrix@@YAXMPAUMATRIX@@@Z		; rotate_y_matrix
;	COMDAT ?rotate_y_matrix@@YAXMPAUMATRIX@@@Z
_TEXT	SEGMENT
_v$ = 8
_m$ = 12
?rotate_y_matrix@@YAXMPAUMATRIX@@@Z PROC NEAR		; rotate_y_matrix, COMDAT
; Line 66
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 67
	mov	eax, DWORD PTR _v$[ebp]
	push	eax
	call	?Cos@@YAMM@Z				; Cos
	add	esp, 4
	mov	ecx, DWORD PTR _m$[ebp]
	fstp	DWORD PTR [ecx]
; Line 68
	mov	edx, DWORD PTR _v$[ebp]
	push	edx
	call	?Sin@@YAMM@Z				; Sin
	add	esp, 4
	mov	eax, DWORD PTR _m$[ebp]
	fstp	DWORD PTR [eax+8]
; Line 69
	mov	ecx, DWORD PTR _v$[ebp]
	push	ecx
	call	?Sin@@YAMM@Z				; Sin
	add	esp, 4
	fchs
	mov	edx, DWORD PTR _m$[ebp]
	fstp	DWORD PTR [edx+32]
; Line 70
	mov	eax, DWORD PTR _v$[ebp]
	push	eax
	call	?Cos@@YAMM@Z				; Cos
	add	esp, 4
	mov	ecx, DWORD PTR _m$[ebp]
	fstp	DWORD PTR [ecx+40]
; Line 71
	mov	edx, DWORD PTR _m$[ebp]
	mov	DWORD PTR [edx+24], 0
	mov	eax, DWORD PTR _m$[ebp]
	mov	DWORD PTR [eax+16], 0
	mov	ecx, DWORD PTR _m$[ebp]
	mov	DWORD PTR [ecx+4], 0
	mov	edx, DWORD PTR _m$[ebp]
	mov	DWORD PTR [edx+36], 0
; Line 72
	mov	eax, DWORD PTR _m$[ebp]
	mov	DWORD PTR [eax+20], 1065353216		; 3f800000H
; Line 73
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?rotate_y_matrix@@YAXMPAUMATRIX@@@Z ENDP		; rotate_y_matrix
_TEXT	ENDS
PUBLIC	?build_rotation_matrix@@YAXMMMPAUMATRIX@@@Z	; build_rotation_matrix
;	COMDAT ?build_rotation_matrix@@YAXMMMPAUMATRIX@@@Z
_TEXT	SEGMENT
_x$ = 8
_y$ = 12
_z$ = 16
_m$ = 20
_xm$ = -64
_ym$ = -128
_zm$ = -192
_tmp$ = -256
?build_rotation_matrix@@YAXMMMPAUMATRIX@@@Z PROC NEAR	; build_rotation_matrix, COMDAT
; Line 75
	push	ebp
	mov	ebp, esp
	sub	esp, 320				; 00000140H
	push	ebx
	push	esi
	push	edi
; Line 77
	lea	eax, DWORD PTR _xm$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x$[ebp]
	push	ecx
	call	?rotate_x_matrix@@YAXMPAUMATRIX@@@Z	; rotate_x_matrix
	add	esp, 8
; Line 78
	lea	edx, DWORD PTR _ym$[ebp]
	push	edx
	mov	eax, DWORD PTR _y$[ebp]
	push	eax
	call	?rotate_y_matrix@@YAXMPAUMATRIX@@@Z	; rotate_y_matrix
	add	esp, 8
; Line 79
	lea	ecx, DWORD PTR _zm$[ebp]
	push	ecx
	mov	edx, DWORD PTR _z$[ebp]
	push	edx
	call	?rotate_z_matrix@@YAXMPAUMATRIX@@@Z	; rotate_z_matrix
	add	esp, 8
; Line 80
	lea	eax, DWORD PTR _tmp$[ebp]
	push	eax
	lea	ecx, DWORD PTR _ym$[ebp]
	push	ecx
	lea	edx, DWORD PTR _zm$[ebp]
	push	edx
	call	?matrix_mul@@YAXPAUMATRIX@@00@Z		; matrix_mul
	add	esp, 12					; 0000000cH
; Line 81
	mov	eax, DWORD PTR _m$[ebp]
	push	eax
	lea	ecx, DWORD PTR _xm$[ebp]
	push	ecx
	lea	edx, DWORD PTR _tmp$[ebp]
	push	edx
	call	?matrix_mul@@YAXPAUMATRIX@@00@Z		; matrix_mul
	add	esp, 12					; 0000000cH
; Line 82
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?build_rotation_matrix@@YAXMMMPAUMATRIX@@@Z ENDP	; build_rotation_matrix
_TEXT	ENDS
PUBLIC	?matrix_from_vectors@@YAXPAUVECTOR@@0PAUMATRIX@@@Z ; matrix_from_vectors
PUBLIC	?vector_crossproduct@@YAXPAUVECTOR@@00@Z	; vector_crossproduct
PUBLIC	?vector_dotproduct@@YAMPAUVECTOR@@0@Z		; vector_dotproduct
PUBLIC	?vector_normalize@@YAMPAUVECTOR@@@Z		; vector_normalize
;	COMDAT ?matrix_from_vectors@@YAXPAUVECTOR@@0PAUMATRIX@@@Z
_TEXT	SEGMENT
_upvect$ = 12
_m$ = 16
_w$ = -12
_v$ = -24
_u$ = -36
_lambda$ = -40
_direction$ = 8
?matrix_from_vectors@@YAXPAUVECTOR@@0PAUMATRIX@@@Z PROC NEAR ; matrix_from_vectors, COMDAT
; Line 85
	push	ebp
	mov	ebp, esp
	sub	esp, 104				; 00000068H
	push	ebx
	push	esi
	push	edi
; Line 89
	mov	eax, DWORD PTR _direction$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _v$[ebp], ecx
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR _v$[ebp+4], edx
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR _v$[ebp+8], eax
; Line 90
	mov	ecx, DWORD PTR _upvect$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _u$[ebp], edx
	mov	eax, DWORD PTR [ecx+4]
	mov	DWORD PTR _u$[ebp+4], eax
	mov	ecx, DWORD PTR [ecx+8]
	mov	DWORD PTR _u$[ebp+8], ecx
; Line 92
	lea	edx, DWORD PTR _v$[ebp]
	push	edx
	call	?vector_normalize@@YAMPAUVECTOR@@@Z	; vector_normalize
	fstp	ST(0)
	add	esp, 4
; Line 94
	lea	eax, DWORD PTR _v$[ebp]
	push	eax
	lea	ecx, DWORD PTR _u$[ebp]
	push	ecx
	call	?vector_dotproduct@@YAMPAUVECTOR@@0@Z	; vector_dotproduct
	add	esp, 8
	fst	DWORD PTR _lambda$[ebp]
; Line 95
	fmul	DWORD PTR _v$[ebp]
	fsubr	DWORD PTR _u$[ebp]
	fstp	DWORD PTR _u$[ebp]
; Line 96
	fld	DWORD PTR _lambda$[ebp]
	fmul	DWORD PTR _v$[ebp+4]
	fsubr	DWORD PTR _u$[ebp+4]
	fstp	DWORD PTR _u$[ebp+4]
; Line 97
	fld	DWORD PTR _lambda$[ebp]
	fmul	DWORD PTR _v$[ebp+8]
	fsubr	DWORD PTR _u$[ebp+8]
	fstp	DWORD PTR _u$[ebp+8]
; Line 98
	lea	edx, DWORD PTR _u$[ebp]
	push	edx
	call	?vector_normalize@@YAMPAUVECTOR@@@Z	; vector_normalize
	fstp	ST(0)
	add	esp, 4
; Line 100
	mov	eax, DWORD PTR _m$[ebp]
	push	eax
	call	?matrix_ident@@YAXPAUMATRIX@@@Z		; matrix_ident
	add	esp, 4
; Line 102
	lea	ecx, DWORD PTR _u$[ebp]
	push	ecx
	lea	edx, DWORD PTR _v$[ebp]
	push	edx
	lea	eax, DWORD PTR _w$[ebp]
	push	eax
	call	?vector_crossproduct@@YAXPAUVECTOR@@00@Z ; vector_crossproduct
	add	esp, 12					; 0000000cH
; Line 103
	mov	ecx, DWORD PTR _m$[ebp]
	mov	edx, DWORD PTR _w$[ebp]
	mov	DWORD PTR [ecx], edx
; Line 104
	mov	eax, DWORD PTR _m$[ebp]
	mov	ecx, DWORD PTR _w$[ebp+4]
	mov	DWORD PTR [eax+4], ecx
; Line 105
	mov	edx, DWORD PTR _m$[ebp]
	mov	eax, DWORD PTR _w$[ebp+8]
	mov	DWORD PTR [edx+8], eax
; Line 106
	mov	ecx, DWORD PTR _m$[ebp]
	mov	DWORD PTR [ecx+12], 0
; Line 108
	mov	edx, DWORD PTR _m$[ebp]
	mov	eax, DWORD PTR _u$[ebp]
	mov	DWORD PTR [edx+16], eax
; Line 109
	mov	ecx, DWORD PTR _m$[ebp]
	mov	edx, DWORD PTR _u$[ebp+4]
	mov	DWORD PTR [ecx+20], edx
; Line 110
	mov	eax, DWORD PTR _m$[ebp]
	mov	ecx, DWORD PTR _u$[ebp+8]
	mov	DWORD PTR [eax+24], ecx
; Line 111
	mov	edx, DWORD PTR _m$[ebp]
	mov	DWORD PTR [edx+28], 0
; Line 113
	mov	eax, DWORD PTR _m$[ebp]
	mov	ecx, DWORD PTR _v$[ebp]
	mov	DWORD PTR [eax+32], ecx
; Line 114
	mov	edx, DWORD PTR _m$[ebp]
	mov	eax, DWORD PTR _v$[ebp+4]
	mov	DWORD PTR [edx+36], eax
; Line 115
	mov	ecx, DWORD PTR _m$[ebp]
	mov	edx, DWORD PTR _v$[ebp+8]
	mov	DWORD PTR [ecx+40], edx
; Line 116
	mov	eax, DWORD PTR _m$[ebp]
	mov	DWORD PTR [eax+44], 0
; Line 118
	mov	ecx, DWORD PTR _m$[ebp]
	mov	DWORD PTR [ecx+48], 0
; Line 119
	mov	edx, DWORD PTR _m$[ebp]
	mov	DWORD PTR [edx+52], 0
; Line 120
	mov	eax, DWORD PTR _m$[ebp]
	mov	DWORD PTR [eax+56], 0
; Line 121
	mov	ecx, DWORD PTR _m$[ebp]
	mov	DWORD PTR [ecx+60], 1065353216		; 3f800000H
; Line 123
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?matrix_from_vectors@@YAXPAUVECTOR@@0PAUMATRIX@@@Z ENDP	; matrix_from_vectors
_TEXT	ENDS
PUBLIC	?vector_mul@@YAXPAUMATRIX@@PAUVECTOR@@1@Z	; vector_mul
;	COMDAT ?vector_mul@@YAXPAUMATRIX@@PAUVECTOR@@1@Z
_TEXT	SEGMENT
_m$ = 8
_v$ = 12
_dv$ = 16
?vector_mul@@YAXPAUMATRIX@@PAUVECTOR@@1@Z PROC NEAR	; vector_mul, COMDAT
; Line 125
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 126
	mov	eax, DWORD PTR _m$[ebp]
	mov	ecx, DWORD PTR _v$[ebp]
	fld	DWORD PTR [eax]
	fmul	DWORD PTR [ecx]
	mov	edx, DWORD PTR _m$[ebp]
	mov	eax, DWORD PTR _v$[ebp]
	fld	DWORD PTR [edx+4]
	fmul	DWORD PTR [eax+4]
	faddp	ST(1), ST(0)
	mov	ecx, DWORD PTR _m$[ebp]
	mov	edx, DWORD PTR _v$[ebp]
	fld	DWORD PTR [ecx+8]
	fmul	DWORD PTR [edx+8]
	faddp	ST(1), ST(0)
	mov	eax, DWORD PTR _dv$[ebp]
	fstp	DWORD PTR [eax]
; Line 127
	mov	ecx, DWORD PTR _m$[ebp]
	mov	edx, DWORD PTR _v$[ebp]
	fld	DWORD PTR [ecx+16]
	fmul	DWORD PTR [edx]
	mov	eax, DWORD PTR _m$[ebp]
	mov	ecx, DWORD PTR _v$[ebp]
	fld	DWORD PTR [eax+20]
	fmul	DWORD PTR [ecx+4]
	faddp	ST(1), ST(0)
	mov	edx, DWORD PTR _m$[ebp]
	mov	eax, DWORD PTR _v$[ebp]
	fld	DWORD PTR [edx+24]
	fmul	DWORD PTR [eax+8]
	faddp	ST(1), ST(0)
	mov	ecx, DWORD PTR _dv$[ebp]
	fstp	DWORD PTR [ecx+4]
; Line 128
	mov	edx, DWORD PTR _m$[ebp]
	mov	eax, DWORD PTR _v$[ebp]
	fld	DWORD PTR [edx+32]
	fmul	DWORD PTR [eax]
	mov	ecx, DWORD PTR _m$[ebp]
	mov	edx, DWORD PTR _v$[ebp]
	fld	DWORD PTR [ecx+36]
	fmul	DWORD PTR [edx+4]
	faddp	ST(1), ST(0)
	mov	eax, DWORD PTR _m$[ebp]
	mov	ecx, DWORD PTR _v$[ebp]
	fld	DWORD PTR [eax+40]
	fmul	DWORD PTR [ecx+8]
	faddp	ST(1), ST(0)
	mov	edx, DWORD PTR _dv$[ebp]
	fstp	DWORD PTR [edx+8]
; Line 129
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?vector_mul@@YAXPAUMATRIX@@PAUVECTOR@@1@Z ENDP		; vector_mul
_TEXT	ENDS
;	COMDAT ?vector_crossproduct@@YAXPAUVECTOR@@00@Z
_TEXT	SEGMENT
_dst$ = 8
_a$ = 12
_b$ = 16
?vector_crossproduct@@YAXPAUVECTOR@@00@Z PROC NEAR	; vector_crossproduct, COMDAT
; Line 131
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 132
	mov	eax, DWORD PTR _a$[ebp]
	mov	ecx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [eax+4]
	fmul	DWORD PTR [ecx+8]
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR _b$[ebp]
	fld	DWORD PTR [edx+8]
	fmul	DWORD PTR [eax+4]
	fsubp	ST(1), ST(0)
	mov	ecx, DWORD PTR _dst$[ebp]
	fstp	DWORD PTR [ecx]
; Line 133
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR _b$[ebp]
	fld	DWORD PTR [edx+8]
	fmul	DWORD PTR [eax]
	mov	ecx, DWORD PTR _a$[ebp]
	mov	edx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [ecx]
	fmul	DWORD PTR [edx+8]
	fsubp	ST(1), ST(0)
	mov	eax, DWORD PTR _dst$[ebp]
	fstp	DWORD PTR [eax+4]
; Line 134
	mov	ecx, DWORD PTR _a$[ebp]
	mov	edx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [ecx]
	fmul	DWORD PTR [edx+4]
	mov	eax, DWORD PTR _a$[ebp]
	mov	ecx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [eax+4]
	fmul	DWORD PTR [ecx]
	fsubp	ST(1), ST(0)
	mov	edx, DWORD PTR _dst$[ebp]
	fstp	DWORD PTR [edx+8]
; Line 135
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?vector_crossproduct@@YAXPAUVECTOR@@00@Z ENDP		; vector_crossproduct
_TEXT	ENDS
;	COMDAT ?vector_dotproduct@@YAMPAUVECTOR@@0@Z
_TEXT	SEGMENT
_a$ = 8
_b$ = 12
?vector_dotproduct@@YAMPAUVECTOR@@0@Z PROC NEAR		; vector_dotproduct, COMDAT
; Line 137
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 138
	mov	eax, DWORD PTR _a$[ebp]
	mov	ecx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [eax]
	fmul	DWORD PTR [ecx]
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR _b$[ebp]
	fld	DWORD PTR [edx+4]
	fmul	DWORD PTR [eax+4]
	faddp	ST(1), ST(0)
	mov	ecx, DWORD PTR _a$[ebp]
	mov	edx, DWORD PTR _b$[ebp]
	fld	DWORD PTR [ecx+8]
	fmul	DWORD PTR [edx+8]
	faddp	ST(1), ST(0)
; Line 139
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?vector_dotproduct@@YAMPAUVECTOR@@0@Z ENDP		; vector_dotproduct
_TEXT	ENDS
PUBLIC	?vector_length@@YAMPAUVECTOR@@@Z		; vector_length
EXTRN	_sqrt:NEAR
;	COMDAT ?vector_length@@YAMPAUVECTOR@@@Z
_TEXT	SEGMENT
_a$ = 8
?vector_length@@YAMPAUVECTOR@@@Z PROC NEAR		; vector_length, COMDAT
; Line 141
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 142
	mov	eax, DWORD PTR _a$[ebp]
	mov	ecx, DWORD PTR _a$[ebp]
	fld	DWORD PTR [eax]
	fmul	DWORD PTR [ecx]
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR _a$[ebp]
	fld	DWORD PTR [edx+4]
	fmul	DWORD PTR [eax+4]
	faddp	ST(1), ST(0)
	mov	ecx, DWORD PTR _a$[ebp]
	mov	edx, DWORD PTR _a$[ebp]
	fld	DWORD PTR [ecx+8]
	fmul	DWORD PTR [edx+8]
	faddp	ST(1), ST(0)
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sqrt
	add	esp, 8
	fst	DWORD PTR -4+[ebp]
; Line 143
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?vector_length@@YAMPAUVECTOR@@@Z ENDP			; vector_length
_TEXT	ENDS
;	COMDAT ?vector_normalize@@YAMPAUVECTOR@@@Z
_TEXT	SEGMENT
_a$ = 8
_l$ = -4
?vector_normalize@@YAMPAUVECTOR@@@Z PROC NEAR		; vector_normalize, COMDAT
; Line 145
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 146
	mov	eax, DWORD PTR _a$[ebp]
	mov	ecx, DWORD PTR _a$[ebp]
	fld	DWORD PTR [eax]
	fmul	DWORD PTR [ecx]
	mov	edx, DWORD PTR _a$[ebp]
	mov	eax, DWORD PTR _a$[ebp]
	fld	DWORD PTR [edx+4]
	fmul	DWORD PTR [eax+4]
	faddp	ST(1), ST(0)
	mov	ecx, DWORD PTR _a$[ebp]
	mov	edx, DWORD PTR _a$[ebp]
	fld	DWORD PTR [ecx+8]
	fmul	DWORD PTR [edx+8]
	faddp	ST(1), ST(0)
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sqrt
	add	esp, 8
	fstp	DWORD PTR _l$[ebp]
; Line 147
	mov	eax, DWORD PTR _a$[ebp]
	fld	DWORD PTR [eax]
	fdiv	DWORD PTR _l$[ebp]
	mov	ecx, DWORD PTR _a$[ebp]
	fstp	DWORD PTR [ecx]
; Line 148
	mov	edx, DWORD PTR _a$[ebp]
	fld	DWORD PTR [edx+4]
	fdiv	DWORD PTR _l$[ebp]
	mov	eax, DWORD PTR _a$[ebp]
	fstp	DWORD PTR [eax+4]
; Line 149
	mov	ecx, DWORD PTR _a$[ebp]
	fld	DWORD PTR [ecx+8]
	fdiv	DWORD PTR _l$[ebp]
	mov	edx, DWORD PTR _a$[ebp]
	fstp	DWORD PTR [edx+8]
; Line 150
	fld	DWORD PTR _l$[ebp]
; Line 151
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?vector_normalize@@YAMPAUVECTOR@@@Z ENDP		; vector_normalize
_TEXT	ENDS
PUBLIC	?vector@@YA?AUVECTOR@@MMM@Z			; vector
;	COMDAT ?vector@@YA?AUVECTOR@@MMM@Z
_TEXT	SEGMENT
_x$ = 12
_y$ = 16
_z$ = 20
_v$ = -12
$T52373 = 8
?vector@@YA?AUVECTOR@@MMM@Z PROC NEAR			; vector, COMDAT
; Line 153
	push	ebp
	mov	ebp, esp
	sub	esp, 76					; 0000004cH
	push	ebx
	push	esi
	push	edi
; Line 155
	mov	eax, DWORD PTR _x$[ebp]
	mov	DWORD PTR _v$[ebp], eax
; Line 156
	mov	ecx, DWORD PTR _y$[ebp]
	mov	DWORD PTR _v$[ebp+4], ecx
; Line 157
	mov	edx, DWORD PTR _z$[ebp]
	mov	DWORD PTR _v$[ebp+8], edx
; Line 158
	mov	eax, DWORD PTR $T52373[ebp]
	mov	ecx, DWORD PTR _v$[ebp]
	mov	DWORD PTR [eax], ecx
	mov	edx, DWORD PTR _v$[ebp+4]
	mov	DWORD PTR [eax+4], edx
	mov	ecx, DWORD PTR _v$[ebp+8]
	mov	DWORD PTR [eax+8], ecx
	mov	eax, DWORD PTR $T52373[ebp]
; Line 159
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?vector@@YA?AUVECTOR@@MMM@Z ENDP			; vector
_TEXT	ENDS
PUBLIC	?vector_add@@YAXPAUVECTOR@@0@Z			; vector_add
;	COMDAT ?vector_add@@YAXPAUVECTOR@@0@Z
_TEXT	SEGMENT
_dest$ = 8
_src$ = 12
?vector_add@@YAXPAUVECTOR@@0@Z PROC NEAR		; vector_add, COMDAT
; Line 161
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 162
	mov	eax, DWORD PTR _dest$[ebp]
	mov	ecx, DWORD PTR _src$[ebp]
	fld	DWORD PTR [eax]
	fadd	DWORD PTR [ecx]
	mov	edx, DWORD PTR _dest$[ebp]
	fstp	DWORD PTR [edx]
; Line 163
	mov	eax, DWORD PTR _dest$[ebp]
	mov	ecx, DWORD PTR _src$[ebp]
	fld	DWORD PTR [eax+4]
	fadd	DWORD PTR [ecx+4]
	mov	edx, DWORD PTR _dest$[ebp]
	fstp	DWORD PTR [edx+4]
; Line 164
	mov	eax, DWORD PTR _dest$[ebp]
	mov	ecx, DWORD PTR _src$[ebp]
	fld	DWORD PTR [eax+8]
	fadd	DWORD PTR [ecx+8]
	mov	edx, DWORD PTR _dest$[ebp]
	fstp	DWORD PTR [edx+8]
; Line 165
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?vector_add@@YAXPAUVECTOR@@0@Z ENDP			; vector_add
_TEXT	ENDS
PUBLIC	?vector_sub@@YAXPAUVECTOR@@0@Z			; vector_sub
;	COMDAT ?vector_sub@@YAXPAUVECTOR@@0@Z
_TEXT	SEGMENT
_dest$ = 8
_src$ = 12
?vector_sub@@YAXPAUVECTOR@@0@Z PROC NEAR		; vector_sub, COMDAT
; Line 167
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 168
	mov	eax, DWORD PTR _dest$[ebp]
	mov	ecx, DWORD PTR _src$[ebp]
	fld	DWORD PTR [eax]
	fsub	DWORD PTR [ecx]
	mov	edx, DWORD PTR _dest$[ebp]
	fstp	DWORD PTR [edx]
; Line 169
	mov	eax, DWORD PTR _dest$[ebp]
	mov	ecx, DWORD PTR _src$[ebp]
	fld	DWORD PTR [eax+4]
	fsub	DWORD PTR [ecx+4]
	mov	edx, DWORD PTR _dest$[ebp]
	fstp	DWORD PTR [edx+4]
; Line 170
	mov	eax, DWORD PTR _dest$[ebp]
	mov	ecx, DWORD PTR _src$[ebp]
	fld	DWORD PTR [eax+8]
	fsub	DWORD PTR [ecx+8]
	mov	edx, DWORD PTR _dest$[ebp]
	fstp	DWORD PTR [edx+8]
; Line 171
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?vector_sub@@YAXPAUVECTOR@@0@Z ENDP			; vector_sub
_TEXT	ENDS
PUBLIC	__real@8@00000000000000000000
PUBLIC	?invert_matrix@@YAXPAUMATRIX@@0@Z		; invert_matrix
;	COMDAT __real@8@00000000000000000000
; File d:\prj64k\glass (eventad)\misccode\newmath.cpp
CONST	SEGMENT
__real@8@00000000000000000000 DQ 00000000000000000r ; 0
CONST	ENDS
;	COMDAT ?invert_matrix@@YAXPAUMATRIX@@0@Z
_TEXT	SEGMENT
_m$ = 8
_r$ = 12
_d00$ = -4
_d01$ = -8
_d02$ = -12
_d03$ = -16
_d10$ = -20
_d11$ = -24
_d12$ = -28
_d13$ = -32
_d20$ = -36
_d21$ = -40
_d22$ = -44
_d23$ = -48
_d30$ = -52
_d31$ = -56
_d32$ = -60
_d33$ = -64
_m00$ = -68
_m01$ = -72
_m02$ = -76
_m03$ = -80
_m10$ = -84
_m11$ = -88
_m12$ = -92
_m13$ = -96
_m20$ = -100
_m21$ = -104
_m22$ = -108
_m23$ = -112
_m30$ = -116
_m31$ = -120
_m32$ = -124
_m33$ = -128
_D$ = -132
?invert_matrix@@YAXPAUMATRIX@@0@Z PROC NEAR		; invert_matrix, COMDAT
; File d:\prj64k\glass (eventad)\misccode\newmath.cpp
; Line 173
	push	ebp
	mov	ebp, esp
	sub	esp, 196				; 000000c4H
	push	ebx
	push	esi
	push	edi
; Line 186
	mov	eax, DWORD PTR _m$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _m00$[ebp], ecx
	mov	edx, DWORD PTR _m$[ebp]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR _m01$[ebp], eax
	mov	ecx, DWORD PTR _m$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR _m02$[ebp], edx
	mov	DWORD PTR _m03$[ebp], 0
; Line 187
	mov	eax, DWORD PTR _m$[ebp]
	mov	ecx, DWORD PTR [eax+16]
	mov	DWORD PTR _m10$[ebp], ecx
	mov	edx, DWORD PTR _m$[ebp]
	mov	eax, DWORD PTR [edx+20]
	mov	DWORD PTR _m11$[ebp], eax
	mov	ecx, DWORD PTR _m$[ebp]
	mov	edx, DWORD PTR [ecx+24]
	mov	DWORD PTR _m12$[ebp], edx
	mov	DWORD PTR _m13$[ebp], 0
; Line 188
	mov	eax, DWORD PTR _m$[ebp]
	mov	ecx, DWORD PTR [eax+32]
	mov	DWORD PTR _m20$[ebp], ecx
	mov	edx, DWORD PTR _m$[ebp]
	mov	eax, DWORD PTR [edx+36]
	mov	DWORD PTR _m21$[ebp], eax
	mov	ecx, DWORD PTR _m$[ebp]
	mov	edx, DWORD PTR [ecx+40]
	mov	DWORD PTR _m22$[ebp], edx
	mov	DWORD PTR _m23$[ebp], 0
; Line 189
	mov	DWORD PTR _m30$[ebp], 0
	mov	DWORD PTR _m31$[ebp], 0
	mov	DWORD PTR _m32$[ebp], 0
	mov	DWORD PTR _m33$[ebp], 1065353216	; 3f800000H
; Line 191
	fld	DWORD PTR _m11$[ebp]
	fmul	DWORD PTR _m22$[ebp]
	fmul	DWORD PTR _m33$[ebp]
	fld	DWORD PTR _m12$[ebp]
	fmul	DWORD PTR _m23$[ebp]
	fmul	DWORD PTR _m31$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m13$[ebp]
	fmul	DWORD PTR _m21$[ebp]
	fmul	DWORD PTR _m32$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m31$[ebp]
	fmul	DWORD PTR _m22$[ebp]
	fmul	DWORD PTR _m13$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m32$[ebp]
	fmul	DWORD PTR _m23$[ebp]
	fmul	DWORD PTR _m11$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m33$[ebp]
	fmul	DWORD PTR _m21$[ebp]
	fmul	DWORD PTR _m12$[ebp]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d00$[ebp]
; Line 192
	fld	DWORD PTR _m10$[ebp]
	fmul	DWORD PTR _m22$[ebp]
	fmul	DWORD PTR _m33$[ebp]
	fld	DWORD PTR _m12$[ebp]
	fmul	DWORD PTR _m23$[ebp]
	fmul	DWORD PTR _m30$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m13$[ebp]
	fmul	DWORD PTR _m20$[ebp]
	fmul	DWORD PTR _m32$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m30$[ebp]
	fmul	DWORD PTR _m22$[ebp]
	fmul	DWORD PTR _m13$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m32$[ebp]
	fmul	DWORD PTR _m23$[ebp]
	fmul	DWORD PTR _m10$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m33$[ebp]
	fmul	DWORD PTR _m20$[ebp]
	fmul	DWORD PTR _m12$[ebp]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d01$[ebp]
; Line 193
	fld	DWORD PTR _m10$[ebp]
	fmul	DWORD PTR _m21$[ebp]
	fmul	DWORD PTR _m33$[ebp]
	fld	DWORD PTR _m11$[ebp]
	fmul	DWORD PTR _m23$[ebp]
	fmul	DWORD PTR _m30$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m13$[ebp]
	fmul	DWORD PTR _m20$[ebp]
	fmul	DWORD PTR _m31$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m30$[ebp]
	fmul	DWORD PTR _m21$[ebp]
	fmul	DWORD PTR _m13$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m31$[ebp]
	fmul	DWORD PTR _m23$[ebp]
	fmul	DWORD PTR _m10$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m33$[ebp]
	fmul	DWORD PTR _m20$[ebp]
	fmul	DWORD PTR _m11$[ebp]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d02$[ebp]
; Line 194
	fld	DWORD PTR _m10$[ebp]
	fmul	DWORD PTR _m21$[ebp]
	fmul	DWORD PTR _m32$[ebp]
	fld	DWORD PTR _m11$[ebp]
	fmul	DWORD PTR _m22$[ebp]
	fmul	DWORD PTR _m30$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m12$[ebp]
	fmul	DWORD PTR _m20$[ebp]
	fmul	DWORD PTR _m31$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m30$[ebp]
	fmul	DWORD PTR _m21$[ebp]
	fmul	DWORD PTR _m12$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m31$[ebp]
	fmul	DWORD PTR _m22$[ebp]
	fmul	DWORD PTR _m10$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m32$[ebp]
	fmul	DWORD PTR _m20$[ebp]
	fmul	DWORD PTR _m11$[ebp]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d03$[ebp]
; Line 196
	fld	DWORD PTR _m01$[ebp]
	fmul	DWORD PTR _m22$[ebp]
	fmul	DWORD PTR _m33$[ebp]
	fld	DWORD PTR _m02$[ebp]
	fmul	DWORD PTR _m23$[ebp]
	fmul	DWORD PTR _m31$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m03$[ebp]
	fmul	DWORD PTR _m21$[ebp]
	fmul	DWORD PTR _m32$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m31$[ebp]
	fmul	DWORD PTR _m22$[ebp]
	fmul	DWORD PTR _m03$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m32$[ebp]
	fmul	DWORD PTR _m23$[ebp]
	fmul	DWORD PTR _m01$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m33$[ebp]
	fmul	DWORD PTR _m21$[ebp]
	fmul	DWORD PTR _m02$[ebp]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d10$[ebp]
; Line 197
	fld	DWORD PTR _m00$[ebp]
	fmul	DWORD PTR _m22$[ebp]
	fmul	DWORD PTR _m33$[ebp]
	fld	DWORD PTR _m02$[ebp]
	fmul	DWORD PTR _m23$[ebp]
	fmul	DWORD PTR _m30$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m03$[ebp]
	fmul	DWORD PTR _m20$[ebp]
	fmul	DWORD PTR _m32$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m30$[ebp]
	fmul	DWORD PTR _m22$[ebp]
	fmul	DWORD PTR _m03$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m32$[ebp]
	fmul	DWORD PTR _m23$[ebp]
	fmul	DWORD PTR _m00$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m33$[ebp]
	fmul	DWORD PTR _m20$[ebp]
	fmul	DWORD PTR _m02$[ebp]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d11$[ebp]
; Line 198
	fld	DWORD PTR _m00$[ebp]
	fmul	DWORD PTR _m21$[ebp]
	fmul	DWORD PTR _m33$[ebp]
	fld	DWORD PTR _m01$[ebp]
	fmul	DWORD PTR _m23$[ebp]
	fmul	DWORD PTR _m30$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m03$[ebp]
	fmul	DWORD PTR _m20$[ebp]
	fmul	DWORD PTR _m31$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m30$[ebp]
	fmul	DWORD PTR _m21$[ebp]
	fmul	DWORD PTR _m03$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m31$[ebp]
	fmul	DWORD PTR _m23$[ebp]
	fmul	DWORD PTR _m00$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m33$[ebp]
	fmul	DWORD PTR _m20$[ebp]
	fmul	DWORD PTR _m01$[ebp]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d12$[ebp]
; Line 199
	fld	DWORD PTR _m00$[ebp]
	fmul	DWORD PTR _m21$[ebp]
	fmul	DWORD PTR _m32$[ebp]
	fld	DWORD PTR _m01$[ebp]
	fmul	DWORD PTR _m22$[ebp]
	fmul	DWORD PTR _m30$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m02$[ebp]
	fmul	DWORD PTR _m20$[ebp]
	fmul	DWORD PTR _m31$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m30$[ebp]
	fmul	DWORD PTR _m21$[ebp]
	fmul	DWORD PTR _m02$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m31$[ebp]
	fmul	DWORD PTR _m22$[ebp]
	fmul	DWORD PTR _m00$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m32$[ebp]
	fmul	DWORD PTR _m20$[ebp]
	fmul	DWORD PTR _m01$[ebp]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d13$[ebp]
; Line 201
	fld	DWORD PTR _m01$[ebp]
	fmul	DWORD PTR _m12$[ebp]
	fmul	DWORD PTR _m33$[ebp]
	fld	DWORD PTR _m02$[ebp]
	fmul	DWORD PTR _m13$[ebp]
	fmul	DWORD PTR _m31$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m03$[ebp]
	fmul	DWORD PTR _m11$[ebp]
	fmul	DWORD PTR _m32$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m31$[ebp]
	fmul	DWORD PTR _m12$[ebp]
	fmul	DWORD PTR _m03$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m32$[ebp]
	fmul	DWORD PTR _m13$[ebp]
	fmul	DWORD PTR _m01$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m33$[ebp]
	fmul	DWORD PTR _m11$[ebp]
	fmul	DWORD PTR _m02$[ebp]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d20$[ebp]
; Line 202
	fld	DWORD PTR _m00$[ebp]
	fmul	DWORD PTR _m12$[ebp]
	fmul	DWORD PTR _m33$[ebp]
	fld	DWORD PTR _m02$[ebp]
	fmul	DWORD PTR _m13$[ebp]
	fmul	DWORD PTR _m30$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m03$[ebp]
	fmul	DWORD PTR _m10$[ebp]
	fmul	DWORD PTR _m32$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m30$[ebp]
	fmul	DWORD PTR _m12$[ebp]
	fmul	DWORD PTR _m03$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m32$[ebp]
	fmul	DWORD PTR _m13$[ebp]
	fmul	DWORD PTR _m00$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m33$[ebp]
	fmul	DWORD PTR _m10$[ebp]
	fmul	DWORD PTR _m02$[ebp]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d21$[ebp]
; Line 203
	fld	DWORD PTR _m00$[ebp]
	fmul	DWORD PTR _m11$[ebp]
	fmul	DWORD PTR _m33$[ebp]
	fld	DWORD PTR _m01$[ebp]
	fmul	DWORD PTR _m13$[ebp]
	fmul	DWORD PTR _m30$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m03$[ebp]
	fmul	DWORD PTR _m10$[ebp]
	fmul	DWORD PTR _m31$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m30$[ebp]
	fmul	DWORD PTR _m11$[ebp]
	fmul	DWORD PTR _m03$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m31$[ebp]
	fmul	DWORD PTR _m13$[ebp]
	fmul	DWORD PTR _m00$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m33$[ebp]
	fmul	DWORD PTR _m10$[ebp]
	fmul	DWORD PTR _m01$[ebp]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d22$[ebp]
; Line 204
	fld	DWORD PTR _m00$[ebp]
	fmul	DWORD PTR _m11$[ebp]
	fmul	DWORD PTR _m32$[ebp]
	fld	DWORD PTR _m01$[ebp]
	fmul	DWORD PTR _m12$[ebp]
	fmul	DWORD PTR _m30$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m02$[ebp]
	fmul	DWORD PTR _m10$[ebp]
	fmul	DWORD PTR _m31$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m30$[ebp]
	fmul	DWORD PTR _m11$[ebp]
	fmul	DWORD PTR _m02$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m31$[ebp]
	fmul	DWORD PTR _m12$[ebp]
	fmul	DWORD PTR _m00$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m32$[ebp]
	fmul	DWORD PTR _m10$[ebp]
	fmul	DWORD PTR _m01$[ebp]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d23$[ebp]
; Line 206
	fld	DWORD PTR _m01$[ebp]
	fmul	DWORD PTR _m12$[ebp]
	fmul	DWORD PTR _m23$[ebp]
	fld	DWORD PTR _m02$[ebp]
	fmul	DWORD PTR _m13$[ebp]
	fmul	DWORD PTR _m21$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m03$[ebp]
	fmul	DWORD PTR _m11$[ebp]
	fmul	DWORD PTR _m22$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m21$[ebp]
	fmul	DWORD PTR _m12$[ebp]
	fmul	DWORD PTR _m03$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m22$[ebp]
	fmul	DWORD PTR _m13$[ebp]
	fmul	DWORD PTR _m01$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m23$[ebp]
	fmul	DWORD PTR _m11$[ebp]
	fmul	DWORD PTR _m02$[ebp]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d30$[ebp]
; Line 207
	fld	DWORD PTR _m00$[ebp]
	fmul	DWORD PTR _m12$[ebp]
	fmul	DWORD PTR _m23$[ebp]
	fld	DWORD PTR _m02$[ebp]
	fmul	DWORD PTR _m13$[ebp]
	fmul	DWORD PTR _m20$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m03$[ebp]
	fmul	DWORD PTR _m10$[ebp]
	fmul	DWORD PTR _m22$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m20$[ebp]
	fmul	DWORD PTR _m12$[ebp]
	fmul	DWORD PTR _m03$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m22$[ebp]
	fmul	DWORD PTR _m13$[ebp]
	fmul	DWORD PTR _m00$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m23$[ebp]
	fmul	DWORD PTR _m10$[ebp]
	fmul	DWORD PTR _m02$[ebp]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d31$[ebp]
; Line 208
	fld	DWORD PTR _m00$[ebp]
	fmul	DWORD PTR _m11$[ebp]
	fmul	DWORD PTR _m23$[ebp]
	fld	DWORD PTR _m01$[ebp]
	fmul	DWORD PTR _m13$[ebp]
	fmul	DWORD PTR _m20$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m03$[ebp]
	fmul	DWORD PTR _m10$[ebp]
	fmul	DWORD PTR _m21$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m20$[ebp]
	fmul	DWORD PTR _m11$[ebp]
	fmul	DWORD PTR _m03$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m21$[ebp]
	fmul	DWORD PTR _m13$[ebp]
	fmul	DWORD PTR _m00$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m23$[ebp]
	fmul	DWORD PTR _m10$[ebp]
	fmul	DWORD PTR _m01$[ebp]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d32$[ebp]
; Line 209
	fld	DWORD PTR _m00$[ebp]
	fmul	DWORD PTR _m11$[ebp]
	fmul	DWORD PTR _m22$[ebp]
	fld	DWORD PTR _m01$[ebp]
	fmul	DWORD PTR _m12$[ebp]
	fmul	DWORD PTR _m20$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m02$[ebp]
	fmul	DWORD PTR _m10$[ebp]
	fmul	DWORD PTR _m21$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m20$[ebp]
	fmul	DWORD PTR _m11$[ebp]
	fmul	DWORD PTR _m02$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m21$[ebp]
	fmul	DWORD PTR _m12$[ebp]
	fmul	DWORD PTR _m00$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m22$[ebp]
	fmul	DWORD PTR _m10$[ebp]
	fmul	DWORD PTR _m01$[ebp]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d33$[ebp]
; Line 211
	fld	DWORD PTR _m00$[ebp]
	fmul	DWORD PTR _d00$[ebp]
	fld	DWORD PTR _m01$[ebp]
	fmul	DWORD PTR _d01$[ebp]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _m02$[ebp]
	fmul	DWORD PTR _d02$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _m03$[ebp]
	fmul	DWORD PTR _d03$[ebp]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _D$[ebp]
; Line 213
	fld	DWORD PTR _D$[ebp]
	fcomp	QWORD PTR __real@8@00000000000000000000
; Line 217
	fld	DWORD PTR _d00$[ebp]
	fdiv	DWORD PTR _D$[ebp]
	mov	eax, DWORD PTR _r$[ebp]
	fstp	DWORD PTR [eax]
	fld	DWORD PTR _d10$[ebp]
	fchs
	fdiv	DWORD PTR _D$[ebp]
	mov	ecx, DWORD PTR _r$[ebp]
	fstp	DWORD PTR [ecx+4]
	fld	DWORD PTR _d20$[ebp]
	fdiv	DWORD PTR _D$[ebp]
	mov	edx, DWORD PTR _r$[ebp]
	fstp	DWORD PTR [edx+8]
	mov	eax, DWORD PTR _r$[ebp]
	mov	DWORD PTR [eax+12], 0
; Line 218
	fld	DWORD PTR _d01$[ebp]
	fchs
	fdiv	DWORD PTR _D$[ebp]
	mov	ecx, DWORD PTR _r$[ebp]
	fstp	DWORD PTR [ecx+16]
	fld	DWORD PTR _d11$[ebp]
	fdiv	DWORD PTR _D$[ebp]
	mov	edx, DWORD PTR _r$[ebp]
	fstp	DWORD PTR [edx+20]
	fld	DWORD PTR _d21$[ebp]
	fchs
	fdiv	DWORD PTR _D$[ebp]
	mov	eax, DWORD PTR _r$[ebp]
	fstp	DWORD PTR [eax+24]
	mov	ecx, DWORD PTR _r$[ebp]
	mov	DWORD PTR [ecx+28], 0
; Line 219
	fld	DWORD PTR _d02$[ebp]
	fdiv	DWORD PTR _D$[ebp]
	mov	edx, DWORD PTR _r$[ebp]
	fstp	DWORD PTR [edx+32]
	fld	DWORD PTR _d12$[ebp]
	fchs
	fdiv	DWORD PTR _D$[ebp]
	mov	eax, DWORD PTR _r$[ebp]
	fstp	DWORD PTR [eax+36]
	fld	DWORD PTR _d22$[ebp]
	fdiv	DWORD PTR _D$[ebp]
	mov	ecx, DWORD PTR _r$[ebp]
	fstp	DWORD PTR [ecx+40]
	mov	edx, DWORD PTR _r$[ebp]
	mov	DWORD PTR [edx+44], 0
; Line 220
	mov	eax, DWORD PTR _r$[ebp]
	mov	DWORD PTR [eax+48], 0
	mov	ecx, DWORD PTR _r$[ebp]
	mov	DWORD PTR [ecx+52], 0
	mov	edx, DWORD PTR _r$[ebp]
	mov	DWORD PTR [edx+56], 0
	mov	eax, DWORD PTR _r$[ebp]
	mov	DWORD PTR [eax+60], 1065353216		; 3f800000H
; Line 221
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?invert_matrix@@YAXPAUMATRIX@@0@Z ENDP			; invert_matrix
_TEXT	ENDS
PUBLIC	__real@4@4004c800000000000000
PUBLIC	__real@4@00000000000000000000
PUBLIC	__real@4@4005c800000000000000
PUBLIC	?vector_project@@YAXPAUVECTOR@@0MM@Z		; vector_project
;	COMDAT __real@4@4004c800000000000000
; File d:\prj64k\glass (eventad)\misccode\newmath.cpp
CONST	SEGMENT
__real@4@4004c800000000000000 DD 042480000r	; 50
CONST	ENDS
;	COMDAT __real@4@00000000000000000000
CONST	SEGMENT
__real@4@00000000000000000000 DD 000000000r	; 0
CONST	ENDS
;	COMDAT __real@4@4005c800000000000000
CONST	SEGMENT
__real@4@4005c800000000000000 DD 042c80000r	; 100
CONST	ENDS
;	COMDAT ?vector_project@@YAXPAUVECTOR@@0MM@Z
_TEXT	SEGMENT
_src$ = 8
_dest$ = 12
_fov$ = 16
_dist$ = 20
_z2$ = -4
?vector_project@@YAXPAUVECTOR@@0MM@Z PROC NEAR		; vector_project, COMDAT
; File d:\prj64k\glass (eventad)\misccode\newmath.cpp
; Line 223
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 225
	fld	DWORD PTR _fov$[ebp]
	fdiv	DWORD PTR __real@4@4004c800000000000000
	mov	eax, DWORD PTR _src$[ebp]
	fmul	DWORD PTR [eax+8]
	fsub	DWORD PTR _dist$[ebp]
	fstp	DWORD PTR _z2$[ebp]
; Line 226
	fld	DWORD PTR _z2$[ebp]
	fcomp	DWORD PTR __real@4@00000000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L52314
	mov	DWORD PTR _z2$[ebp], 0
$L52314:
; Line 228
	mov	ecx, DWORD PTR _src$[ebp]
	fld	DWORD PTR [ecx]
	fdiv	DWORD PTR _z2$[ebp]
	mov	edx, DWORD PTR _dest$[ebp]
	fstp	DWORD PTR [edx]
; Line 229
	mov	eax, DWORD PTR _src$[ebp]
	fld	DWORD PTR [eax+4]
	fdiv	DWORD PTR _z2$[ebp]
	mov	ecx, DWORD PTR _dest$[ebp]
	fstp	DWORD PTR [ecx+4]
; Line 230
	fld	DWORD PTR _z2$[ebp]
	fdiv	DWORD PTR __real@4@4005c800000000000000
	mov	edx, DWORD PTR _dest$[ebp]
	fstp	DWORD PTR [edx+8]
; Line 232
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?vector_project@@YAXPAUVECTOR@@0MM@Z ENDP		; vector_project
_TEXT	ENDS
END
