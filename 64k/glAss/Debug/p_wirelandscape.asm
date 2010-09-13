	TITLE	D:\prj64k\glAss (eventad)\parts\p_wirelandscape.cpp
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
;	COMDAT ?pw_drawbuilding@@YAXMMMMMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pw_draw_tile@@YAXMMMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pw_draw_obj@@YAXMMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pw_draw_world@@YAXMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_wirelandscape_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?pw_drawbuilding@@YAXMMMMMMM@Z			; pw_drawbuilding
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__fltused:NEAR
EXTRN	__imp__glColor3f@12:NEAR
;	COMDAT ?pw_drawbuilding@@YAXMMMMMMM@Z
_TEXT	SEGMENT
_x$ = 8
_y$ = 12
_z$ = 16
_height$ = 20
_r1$ = 24
_r2$ = 28
?pw_drawbuilding@@YAXMMMMMMM@Z PROC NEAR		; pw_drawbuilding, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_wirelandscape.cpp
; Line 5
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 8
	push	0
	push	1045220557				; 3e4ccccdH
	push	1053609165				; 3ecccccdH
	call	DWORD PTR __imp__glColor3f@12
; Line 15
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _height$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 16
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _height$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 17
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _height$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 18
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _height$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 20
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r1$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _y$[ebp]
	push	eax
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r1$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 21
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _height$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 22
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _height$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 23
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r1$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _y$[ebp]
	push	ecx
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r1$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 25
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _height$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 26
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r1$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	edx, DWORD PTR _y$[ebp]
	push	edx
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r1$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 27
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r1$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _y$[ebp]
	push	eax
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r1$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 28
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _height$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 30
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r1$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _y$[ebp]
	push	ecx
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r1$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 31
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _height$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 32
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _height$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 33
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r1$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	edx, DWORD PTR _y$[ebp]
	push	edx
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r1$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 35
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _height$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 36
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r1$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _y$[ebp]
	push	eax
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r1$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 37
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r1$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _y$[ebp]
	push	ecx
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r1$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 38
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _height$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r2$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 40
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?pw_drawbuilding@@YAXMMMMMMM@Z ENDP			; pw_drawbuilding
_TEXT	ENDS
PUBLIC	?pw_draw_tile@@YAXMMMMM@Z			; pw_draw_tile
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@3ffccccccd0000000000
PUBLIC	__real@4@3ffbcccccd0000000000
;	COMDAT __real@4@3ffd99999a0000000000
; File D:\prj64k\glAss (eventad)\parts\p_wirelandscape.cpp
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@3ffccccccd0000000000
CONST	SEGMENT
__real@4@3ffccccccd0000000000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@3ffbcccccd0000000000
CONST	SEGMENT
__real@4@3ffbcccccd0000000000 DD 03dcccccdr	; 0.1
CONST	ENDS
;	COMDAT ?pw_draw_tile@@YAXMMMMM@Z
_TEXT	SEGMENT
_x$ = 8
_y$ = 12
_z$ = 16
_r$ = 20
_b$ = 24
?pw_draw_tile@@YAXMMMMM@Z PROC NEAR			; pw_draw_tile, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_wirelandscape.cpp
; Line 42
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 43
	fld	DWORD PTR __real@4@3ffd99999a0000000000
	fmul	DWORD PTR _b$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ffccccccd0000000000
	fmul	DWORD PTR _b$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ffbcccccd0000000000
	fmul	DWORD PTR _b$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12
; Line 45
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 46
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _y$[ebp]
	push	eax
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 48
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 49
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _y$[ebp]
	push	ecx
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 51
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 52
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	edx, DWORD PTR _y$[ebp]
	push	edx
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 54
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 55
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _y$[ebp]
	push	eax
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 56
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?pw_draw_tile@@YAXMMMMM@Z ENDP				; pw_draw_tile
_TEXT	ENDS
PUBLIC	?pw_draw_obj@@YAXMMMM@Z				; pw_draw_obj
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glEnd@0:NEAR
;	COMDAT ?pw_draw_obj@@YAXMMMM@Z
_TEXT	SEGMENT
_x$ = 8
_y$ = 12
_z$ = 16
_r$ = 20
?pw_draw_obj@@YAXMMMM@Z PROC NEAR			; pw_draw_obj, COMDAT
; Line 58
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 62
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 64
	push	1045220557				; 3e4ccccdH
	push	1050253722				; 3e99999aH
	push	1053609165				; 3ecccccdH
	call	DWORD PTR __imp__glColor3f@12
; Line 65
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 66
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 67
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 68
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 69
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 70
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 71
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 72
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 73
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 74
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 75
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 76
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 77
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 78
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 79
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 80
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 81
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 82
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 83
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 84
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 85
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 86
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 87
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 88
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 90
	push	1045220557				; 3e4ccccdH
	push	1041865114				; 3e19999aH
	push	1033476506				; 3d99999aH
	call	DWORD PTR __imp__glColor3f@12
; Line 91
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 92
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 93
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 94
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 95
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 96
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 97
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 98
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 99
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 100
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 101
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 102
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 103
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 104
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 105
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 106
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 107
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 108
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 109
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 110
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 111
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 112
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 113
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 114
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _y$[ebp]
	fchs
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 116
	call	DWORD PTR __imp__glEnd@0
; Line 118
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?pw_draw_obj@@YAXMMMM@Z ENDP				; pw_draw_obj
_TEXT	ENDS
PUBLIC	?pw_draw_world@@YAXMM@Z				; pw_draw_world
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@4002c000000000000000
PUBLIC	__real@4@4002a000000000000000
PUBLIC	__real@4@00000000000000000000
PUBLIC	__real@4@4006b400000000000000
PUBLIC	__real@8@4000a000000000000000
PUBLIC	__real@4@4000a000000000000000
PUBLIC	__real@4@4001a000000000000000
PUBLIC	__real@8@4000d999999999999800
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@8@3fffa000000000000000
PUBLIC	__real@4@3fffc000000000000000
PUBLIC	__real@4@bfff8000000000000000
PUBLIC	__real@4@bfffc000000000000000
PUBLIC	__real@4@3ffc99999a0000000000
PUBLIC	__real@4@4000c000000000000000
PUBLIC	__real@4@3ffdcccccd0000000000
PUBLIC	__real@4@4001e000000000000000
PUBLIC	__real@4@c001e000000000000000
EXTRN	_cos:NEAR
EXTRN	_fmod:NEAR
EXTRN	_sin:NEAR
EXTRN	_sqrt:NEAR
EXTRN	__imp__glPopMatrix@0:NEAR
EXTRN	__imp__glPushMatrix@0:NEAR
EXTRN	__imp__glRotatef@16:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	__imp__glTexEnvi@12:NEAR
;	COMDAT __real@4@3fff8000000000000000
; File D:\prj64k\glAss (eventad)\parts\p_wirelandscape.cpp
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@4002c000000000000000
CONST	SEGMENT
__real@4@4002c000000000000000 DD 041400000r	; 12
CONST	ENDS
;	COMDAT __real@4@4002a000000000000000
CONST	SEGMENT
__real@4@4002a000000000000000 DD 041200000r	; 10
CONST	ENDS
;	COMDAT __real@4@00000000000000000000
CONST	SEGMENT
__real@4@00000000000000000000 DD 000000000r	; 0
CONST	ENDS
;	COMDAT __real@4@4006b400000000000000
CONST	SEGMENT
__real@4@4006b400000000000000 DD 043340000r	; 180
CONST	ENDS
;	COMDAT __real@8@4000a000000000000000
CONST	SEGMENT
__real@8@4000a000000000000000 DQ 04004000000000000r ; 2.5
CONST	ENDS
;	COMDAT __real@4@4000a000000000000000
CONST	SEGMENT
__real@4@4000a000000000000000 DD 040200000r	; 2.5
CONST	ENDS
;	COMDAT __real@4@4001a000000000000000
CONST	SEGMENT
__real@4@4001a000000000000000 DD 040a00000r	; 5
CONST	ENDS
;	COMDAT __real@8@4000d999999999999800
CONST	SEGMENT
__real@8@4000d999999999999800 DQ 0400b333333333333r ; 3.4
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@8@3fffa000000000000000
CONST	SEGMENT
__real@8@3fffa000000000000000 DQ 03ff4000000000000r ; 1.25
CONST	ENDS
;	COMDAT __real@4@3fffc000000000000000
CONST	SEGMENT
__real@4@3fffc000000000000000 DD 03fc00000r	; 1.5
CONST	ENDS
;	COMDAT __real@4@bfff8000000000000000
CONST	SEGMENT
__real@4@bfff8000000000000000 DD 0bf800000r	; -1
CONST	ENDS
;	COMDAT __real@4@bfffc000000000000000
CONST	SEGMENT
__real@4@bfffc000000000000000 DD 0bfc00000r	; -1.5
CONST	ENDS
;	COMDAT __real@4@3ffc99999a0000000000
CONST	SEGMENT
__real@4@3ffc99999a0000000000 DD 03e19999ar	; 0.15
CONST	ENDS
;	COMDAT __real@4@4000c000000000000000
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT __real@4@3ffdcccccd0000000000
CONST	SEGMENT
__real@4@3ffdcccccd0000000000 DD 03ecccccdr	; 0.4
CONST	ENDS
;	COMDAT __real@4@4001e000000000000000
CONST	SEGMENT
__real@4@4001e000000000000000 DD 040e00000r	; 7
CONST	ENDS
;	COMDAT __real@4@c001e000000000000000
CONST	SEGMENT
__real@4@c001e000000000000000 DD 0c0e00000r	; -7
CONST	ENDS
;	COMDAT ?pw_draw_world@@YAXMM@Z
_TEXT	SEGMENT
_t$ = 8
_i$ = -4
_j$ = -8
_b$19138 = -12
_r$ = -16
_x$ = -20
_xs$ = -24
_ys$ = -28
_s$19152 = -32
_b$19153 = -36
?pw_draw_world@@YAXMM@Z PROC NEAR			; pw_draw_world, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_wirelandscape.cpp
; Line 120
	push	ebp
	mov	ebp, esp
	sub	esp, 112				; 00000070H
	push	ebx
	push	esi
	push	edi
; Line 123
	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12
; Line 124
	push	105					; 00000069H
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 126
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 127
	mov	DWORD PTR _j$[ebp], -1052770304		; c1400000H
	jmp	SHORT $L19132
$L19133:
	fld	DWORD PTR _j$[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _j$[ebp]
$L19132:
	fld	DWORD PTR _j$[ebp]
	fcomp	DWORD PTR __real@4@4002c000000000000000
	fnstsw	ax
	test	ah, 1
	je	$L19134
; Line 128
	mov	DWORD PTR _i$[ebp], -1052770304		; c1400000H
	jmp	SHORT $L19135
$L19136:
	fld	DWORD PTR _i$[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _i$[ebp]
$L19135:
	fld	DWORD PTR _i$[ebp]
	fcomp	DWORD PTR __real@4@4002c000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L19137
; Line 143
	fld	DWORD PTR _i$[ebp]
	fmul	DWORD PTR _i$[ebp]
	fld	DWORD PTR _j$[ebp]
	fmul	DWORD PTR _j$[ebp]
	faddp	ST(1), ST(0)
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sqrt
	add	esp, 8
	fst	DWORD PTR -40+[ebp]
	fdiv	DWORD PTR __real@4@4002a000000000000000
	fsubr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _b$19138[ebp]
; Line 144
	fld	DWORD PTR _b$19138[ebp]
	fcomp	DWORD PTR __real@4@00000000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L19140
; Line 145
	mov	eax, DWORD PTR _b$19138[ebp]
	push	eax
	push	1056964608				; 3f000000H
	mov	ecx, DWORD PTR _j$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _i$[ebp]
	push	edx
	call	?pw_draw_tile@@YAXMMMMM@Z		; pw_draw_tile
	add	esp, 20					; 00000014H
$L19140:
; Line 146
	jmp	SHORT $L19136
$L19137:
; Line 147
	jmp	$L19133
$L19134:
; Line 148
	call	DWORD PTR __imp__glEnd@0
; Line 152
	mov	DWORD PTR _r$[ebp], 1053609165		; 3ecccccdH
; Line 154
	call	DWORD PTR __imp__glPushMatrix@0
; Line 156
	push	0
	push	1065353216				; 3f800000H
	push	0
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4006b400000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 158
	mov	DWORD PTR _x$[ebp], -1073741824		; c0000000H
; Line 159
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	push	0
	push	1084227584				; 40a00000H
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 160
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	push	0
	push	1082130432				; 40800000H
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 161
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	push	0
	push	1077936128				; 40400000H
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 162
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	push	0
	push	1077936128				; 40400000H
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR __real@4@00000000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 163
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	push	0
	push	1077936128				; 40400000H
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 164
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	push	0
	push	1073741824				; 40000000H
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 165
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	push	0
	push	1073741824				; 40000000H
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 166
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	push	0
	push	1065353216				; 3f800000H
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 167
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	push	0
	push	1065353216				; 3f800000H
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR __real@4@00000000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 168
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	push	0
	push	1065353216				; 3f800000H
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 170
	mov	DWORD PTR _x$[ebp], 1073741824		; 40000000H
; Line 171
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	push	0
	push	1084227584				; 40a00000H
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 172
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	push	0
	push	1084227584				; 40a00000H
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 173
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	push	0
	push	1082130432				; 40800000H
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 174
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	push	0
	push	1082130432				; 40800000H
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 175
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	push	0
	push	1077936128				; 40400000H
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 176
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	push	0
	push	1077936128				; 40400000H
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR __real@4@00000000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 177
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	push	0
	push	1077936128				; 40400000H
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 178
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	push	0
	push	1073741824				; 40000000H
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 179
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	push	0
	push	1065353216				; 3f800000H
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 16					; 00000010H
; Line 204
	call	DWORD PTR __imp__glPopMatrix@0
; Line 206
	push	123					; 0000007bH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 207
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 209
	fld	DWORD PTR _t$[ebp]
	fmul	QWORD PTR __real@8@4000a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -44+[ebp]
	fmul	DWORD PTR __real@4@4000a000000000000000
	fadd	DWORD PTR __real@4@4001a000000000000000
	fstp	DWORD PTR _xs$[ebp]
; Line 210
	fld	DWORD PTR _t$[ebp]
	fmul	QWORD PTR __real@8@4000d999999999999800
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -48+[ebp]
	fadd	ST(0), ST(0)
	fadd	DWORD PTR __real@4@40018000000000000000
	fstp	DWORD PTR _ys$[ebp]
; Line 212
	push	1045220557				; 3e4ccccdH
	push	1050253722				; 3e99999aH
	push	1058642330				; 3f19999aH
	call	DWORD PTR __imp__glColor3f@12
; Line 213
	push	1073741824				; 40000000H
	push	0
	fld	DWORD PTR _t$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_fmod
	add	esp, 16					; 00000010H
	fcomp	QWORD PTR __real@8@3fffa000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L19147
; Line 214
	fld	DWORD PTR _xs$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	fstp	DWORD PTR _xs$[ebp]
; Line 215
	fld	DWORD PTR _ys$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	fstp	DWORD PTR _ys$[ebp]
; Line 216
	push	1045220557				; 3e4ccccdH
	push	1053609165				; 3ecccccdH
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glColor3f@12
$L19147:
; Line 220
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@bfff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	1088421888				; 40e00000H
	fld	DWORD PTR __real@4@bfffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 221
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@bfff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	1088421888				; 40e00000H
	fld	DWORD PTR __real@4@3fffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 222
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	1088421888				; 40e00000H
	fld	DWORD PTR __real@4@3fffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 223
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	1088421888				; 40e00000H
	fld	DWORD PTR __real@4@bfffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 225
	push	1050253722				; 3e99999aH
	push	1045220557				; 3e4ccccdH
	push	1036831949				; 3dcccccdH
	call	DWORD PTR __imp__glColor3f@12
; Line 226
	push	1073741824				; 40000000H
	push	0
	fld	DWORD PTR _t$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_fmod
	add	esp, 16					; 00000010H
	fcomp	QWORD PTR __real@8@3fffa000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L19148
; Line 227
	push	1056964608				; 3f000000H
	push	1050253722				; 3e99999aH
	push	1045220557				; 3e4ccccdH
	call	DWORD PTR __imp__glColor3f@12
$L19148:
; Line 230
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@bfff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	-1059061760				; c0e00000H
	fld	DWORD PTR __real@4@bfffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 231
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@bfff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	-1059061760				; c0e00000H
	fld	DWORD PTR __real@4@3fffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 232
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	-1059061760				; c0e00000H
	fld	DWORD PTR __real@4@3fffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 233
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	-1059061760				; c0e00000H
	fld	DWORD PTR __real@4@bfffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 235
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19149
$L19150:
	fld	DWORD PTR _i$[ebp]
	fadd	DWORD PTR __real@4@3ffc99999a0000000000
	fstp	DWORD PTR _i$[ebp]
$L19149:
	fld	DWORD PTR _i$[ebp]
	fcomp	DWORD PTR __real@4@4000c000000000000000
	fnstsw	ax
	test	ah, 1
	je	$L19151
; Line 237
	fld	DWORD PTR _i$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _s$19152[ebp]
; Line 238
	fld	DWORD PTR _i$[ebp]
	fmul	DWORD PTR __real@4@4000c000000000000000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3ffccccccd0000000000
	fst	DWORD PTR _b$19153[ebp]
; Line 239
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ffdcccccd0000000000
	fmul	DWORD PTR _b$19153[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _b$19153[ebp]
	push	ecx
	call	DWORD PTR __imp__glColor3f@12
; Line 240
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@bfff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	fmul	DWORD PTR _s$19152[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@4001e000000000000000
	fsub	DWORD PTR _i$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@bfffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	fmul	DWORD PTR _s$19152[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 241
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@bfff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	fmul	DWORD PTR _s$19152[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@4001e000000000000000
	fsub	DWORD PTR _i$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3fffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	fmul	DWORD PTR _s$19152[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 242
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	fmul	DWORD PTR _s$19152[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@4001e000000000000000
	fsub	DWORD PTR _i$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3fffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	fmul	DWORD PTR _s$19152[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 243
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	fmul	DWORD PTR _s$19152[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@4001e000000000000000
	fsub	DWORD PTR _i$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@bfffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	fmul	DWORD PTR _s$19152[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 245
	fld	DWORD PTR __real@4@3ffd99999a0000000000
	fmul	DWORD PTR _b$19153[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ffccccccd0000000000
	fmul	DWORD PTR _b$19153[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ffbcccccd0000000000
	fmul	DWORD PTR _b$19153[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12
; Line 246
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@bfff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	fmul	DWORD PTR _s$19152[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@c001e000000000000000
	fadd	DWORD PTR _i$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@bfffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	fmul	DWORD PTR _s$19152[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 247
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@bfff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	fmul	DWORD PTR _s$19152[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@c001e000000000000000
	fadd	DWORD PTR _i$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3fffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	fmul	DWORD PTR _s$19152[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 248
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	fmul	DWORD PTR _s$19152[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@c001e000000000000000
	fadd	DWORD PTR _i$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3fffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	fmul	DWORD PTR _s$19152[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 249
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	fmul	DWORD PTR _s$19152[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@c001e000000000000000
	fadd	DWORD PTR _i$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@bfffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	fmul	DWORD PTR _s$19152[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 250
	jmp	$L19150
$L19151:
; Line 252
	push	1036831949				; 3dcccccdH
	push	1045220557				; 3e4ccccdH
	push	1053609165				; 3ecccccdH
	call	DWORD PTR __imp__glColor3f@12
; Line 253
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@bfff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	fadd	ST(0), ST(0)
	push	ecx
	fstp	DWORD PTR [esp]
	push	0
	fld	DWORD PTR __real@4@bfffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	fadd	ST(0), ST(0)
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 254
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@bfff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	fadd	ST(0), ST(0)
	push	ecx
	fstp	DWORD PTR [esp]
	push	0
	fld	DWORD PTR __real@4@3fffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	fadd	ST(0), ST(0)
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 255
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	fadd	ST(0), ST(0)
	push	ecx
	fstp	DWORD PTR [esp]
	push	0
	fld	DWORD PTR __real@4@3fffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	fadd	ST(0), ST(0)
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 256
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR _ys$[ebp]
	fadd	ST(0), ST(0)
	push	ecx
	fstp	DWORD PTR [esp]
	push	0
	fld	DWORD PTR __real@4@bfffc000000000000000
	fmul	DWORD PTR _xs$[ebp]
	fadd	ST(0), ST(0)
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 258
	call	DWORD PTR __imp__glEnd@0
; Line 260
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?pw_draw_world@@YAXMM@Z ENDP				; pw_draw_world
_TEXT	ENDS
PUBLIC	?p_wirelandscape_run@@YAXPAUEVENT@@@Z		; p_wirelandscape_run
PUBLIC	__real@8@3ffe8000000000000000
PUBLIC	__real@8@3fff8000000000000000
PUBLIC	__real@8@3ffd9999999999999800
PUBLIC	__real@8@4000c000000000000000
PUBLIC	__real@4@4001c000000000000000
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glTranslatef@12:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	_gluPerspective@32:NEAR
EXTRN	_gluLookAt@72:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
;	COMDAT __real@8@3ffe8000000000000000
; File D:\prj64k\glAss (eventad)\parts\p_wirelandscape.cpp
CONST	SEGMENT
__real@8@3ffe8000000000000000 DQ 03fe0000000000000r ; 0.5
CONST	ENDS
;	COMDAT __real@8@3fff8000000000000000
CONST	SEGMENT
__real@8@3fff8000000000000000 DQ 03ff0000000000000r ; 1
CONST	ENDS
;	COMDAT __real@8@3ffd9999999999999800
CONST	SEGMENT
__real@8@3ffd9999999999999800 DQ 03fd3333333333333r ; 0.3
CONST	ENDS
;	COMDAT __real@8@4000c000000000000000
CONST	SEGMENT
__real@8@4000c000000000000000 DQ 04008000000000000r ; 3
CONST	ENDS
;	COMDAT __real@4@4001c000000000000000
CONST	SEGMENT
__real@4@4001c000000000000000 DD 040c00000r	; 6
CONST	ENDS
;	COMDAT ?p_wirelandscape_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -4
_b$ = -8
_r$ = -12
?p_wirelandscape_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_wirelandscape_run, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_wirelandscape.cpp
; Line 262
	push	ebp
	mov	ebp, esp
	sub	esp, 100				; 00000064H
	push	ebx
	push	esi
	push	edi
; Line 266
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 267
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 268
	push	-1082130432				; bf800000H
	push	0
	push	0
	call	DWORD PTR __imp__glTranslatef@12
; Line 270
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 271
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 274
	push	2884					; 00000b44H
	call	DWORD PTR __imp__glDisable@4
; Line 277
	push	2929					; 00000b71H
	call	DWORD PTR __imp__glDisable@4
; Line 280
	mov	eax, DWORD PTR _e$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _t$[ebp], ecx
; Line 281
	mov	edx, DWORD PTR _e$[ebp]
	mov	eax, DWORD PTR [edx+12]
	mov	DWORD PTR _b$[ebp], eax
; Line 283
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 284
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 286
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 287
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 288
	push	1083129856				; 408f4000H
	push	0
	push	0
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1079902208				; 405e0000H
	push	0
	call	_gluPerspective@32
; Line 290
	mov	DWORD PTR _r$[ebp], 1065353216		; 3f800000H
; Line 293
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	fstp	QWORD PTR [esp]
	push	1072693248				; 3ff00000H
	push	0
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	fstp	QWORD PTR [esp]
	push	0
	push	0
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@3ffe8000000000000000
	fadd	QWORD PTR __real@8@3fff8000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	push	0
	push	0
	fld	DWORD PTR _r$[ebp]
	fmul	DWORD PTR __real@4@4001e000000000000000
	fstp	QWORD PTR -20+[ebp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fmul	QWORD PTR -20+[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _r$[ebp]
	fmul	QWORD PTR __real@8@3ffd9999999999999800
	fstp	QWORD PTR -28+[ebp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR -28+[ebp]
	fadd	QWORD PTR __real@8@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _r$[ebp]
	fmul	DWORD PTR __real@4@4001c000000000000000
	fstp	QWORD PTR -36+[ebp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR -36+[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72
; Line 295
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 296
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 299
	mov	ecx, DWORD PTR _b$[ebp]
	push	ecx
	mov	edx, DWORD PTR _t$[ebp]
	push	edx
	call	?pw_draw_world@@YAXMM@Z			; pw_draw_world
	add	esp, 8
; Line 301
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 324
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_wirelandscape_run@@YAXPAUEVENT@@@Z ENDP		; p_wirelandscape_run
_TEXT	ENDS
END
