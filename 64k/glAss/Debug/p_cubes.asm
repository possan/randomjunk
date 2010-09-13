	TITLE	D:\prj64k\glAss (eventad)\parts\p_cubes.cpp
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
;	COMDAT ?p_cubes_init@@YAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_cubes_render_world@@YAXM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_cubes_render_flow@@YAXMMMMMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_cubes_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?old_matrix@@3PAMA				; old_matrix
_BSS	SEGMENT
?old_matrix@@3PAMA DD 010H DUP (?)			; old_matrix
_BSS	ENDS
PUBLIC	?p_cubes_init@@YAXXZ				; p_cubes_init
EXTRN	__imp__glNewList@8:NEAR
EXTRN	__imp__glNormal3f@12:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	__fltused:NEAR
EXTRN	__imp__glEnd@0:NEAR
EXTRN	__imp__glEndList@0:NEAR
;	COMDAT ?p_cubes_init@@YAXXZ
_TEXT	SEGMENT
_r$ = -4
?p_cubes_init@@YAXXZ PROC NEAR				; p_cubes_init, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_cubes.cpp
; Line 9
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 13
	push	4864					; 00001300H
	push	20					; 00000014H
	call	DWORD PTR __imp__glNewList@8
; Line 15
	mov	DWORD PTR _r$[ebp], 1065353216		; 3f800000H
; Line 17
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 20
	push	1041865114				; 3e19999aH
	push	1036831949				; 3dcccccdH
	push	1028443341				; 3d4ccccdH
	call	DWORD PTR __imp__glColor3f@12
; Line 24
	push	-1082130432				; bf800000H
	push	0
	push	0
	call	DWORD PTR __imp__glNormal3f@12
; Line 25
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 26
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 27
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 28
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 31
	push	1065353216				; 3f800000H
	push	0
	push	0
	call	DWORD PTR __imp__glNormal3f@12
; Line 32
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 33
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 34
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 35
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 40
	push	0
	push	-1082130432				; bf800000H
	push	0
	call	DWORD PTR __imp__glNormal3f@12
; Line 41
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 42
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 43
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 44
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 47
	push	0
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glNormal3f@12
; Line 48
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 49
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 50
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 51
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 56
	push	0
	push	0
	push	-1082130432				; bf800000H
	call	DWORD PTR __imp__glNormal3f@12
; Line 57
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 58
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 59
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 60
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 63
	push	0
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glNormal3f@12
; Line 64
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 65
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	call	DWORD PTR __imp__glVertex3f@12
; Line 66
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	fld	DWORD PTR _r$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 67
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 70
	call	DWORD PTR __imp__glEnd@0
; Line 72
	call	DWORD PTR __imp__glEndList@0
; Line 73
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_cubes_init@@YAXXZ ENDP				; p_cubes_init
_TEXT	ENDS
PUBLIC	?p_cubes_render_world@@YAXM@Z			; p_cubes_render_world
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@40018000000000000000
EXTRN	__imp__glPopMatrix@0:NEAR
EXTRN	__imp__glPushMatrix@0:NEAR
EXTRN	__imp__glScalef@12:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	__imp__glTranslatef@12:NEAR
EXTRN	__imp__glCallList@4:NEAR
;	COMDAT __real@4@3fff8000000000000000
; File D:\prj64k\glAss (eventad)\parts\p_cubes.cpp
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT ?p_cubes_render_world@@YAXM@Z
_TEXT	SEGMENT
_k$ = -4
_j$19114 = -8
_i$19118 = -12
?p_cubes_render_world@@YAXM@Z PROC NEAR			; p_cubes_render_world, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_cubes.cpp
; Line 108
	push	ebp
	mov	ebp, esp
	sub	esp, 76					; 0000004cH
	push	ebx
	push	esi
	push	edi
; Line 110
	call	DWORD PTR __imp__glPushMatrix@0
; Line 111
	push	109					; 0000006dH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 114
	mov	DWORD PTR _k$[ebp], -1065353216		; c0800000H
	jmp	SHORT $L19111
$L19112:
	fld	DWORD PTR _k$[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _k$[ebp]
$L19111:
	fld	DWORD PTR _k$[ebp]
	fcomp	DWORD PTR __real@4@40018000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	je	$L19113
; Line 115
	mov	DWORD PTR _j$19114[ebp], -1065353216	; c0800000H
	jmp	SHORT $L19115
$L19116:
	fld	DWORD PTR _j$19114[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _j$19114[ebp]
$L19115:
	fld	DWORD PTR _j$19114[ebp]
	fcomp	DWORD PTR __real@4@40018000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	je	SHORT $L19117
; Line 116
	mov	DWORD PTR _i$19118[ebp], -1065353216	; c0800000H
	jmp	SHORT $L19119
$L19120:
	fld	DWORD PTR _i$19118[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _i$19118[ebp]
$L19119:
	fld	DWORD PTR _i$19118[ebp]
	fcomp	DWORD PTR __real@4@40018000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	je	SHORT $L19121
; Line 117
	call	DWORD PTR __imp__glPushMatrix@0
; Line 121
	fld	DWORD PTR _k$[ebp]
	fadd	ST(0), ST(0)
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _j$19114[ebp]
	fadd	ST(0), ST(0)
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _i$19118[ebp]
	fadd	ST(0), ST(0)
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTranslatef@12
; Line 122
	push	1048576000				; 3e800000H
	push	1048576000				; 3e800000H
	push	1048576000				; 3e800000H
	call	DWORD PTR __imp__glScalef@12
; Line 126
	push	20					; 00000014H
	call	DWORD PTR __imp__glCallList@4
; Line 128
	call	DWORD PTR __imp__glPopMatrix@0
; Line 129
	jmp	SHORT $L19120
$L19121:
; Line 130
	jmp	$L19116
$L19117:
; Line 131
	jmp	$L19112
$L19113:
; Line 132
	call	DWORD PTR __imp__glPopMatrix@0
; Line 134
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_cubes_render_world@@YAXM@Z ENDP			; p_cubes_render_world
_TEXT	ENDS
PUBLIC	?p_cubes_render_flow@@YAXMMMMMMM@Z		; p_cubes_render_flow
PUBLIC	__real@4@4000c916870000000000
PUBLIC	__real@4@3fff99999a0000000000
PUBLIC	__real@4@3ffe8000000000000000
PUBLIC	__real@4@4000f333330000000000
PUBLIC	__real@4@40009333330000000000
PUBLIC	__real@4@40028000000000000000
PUBLIC	__real@4@4001c800000000000000
PUBLIC	__real@4@3ffccccccd0000000000
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@40029000000000000000
PUBLIC	__real@4@4001a000000000000000
PUBLIC	__real@4@4001e000000000000000
PUBLIC	__real@4@4003c800000000000000
PUBLIC	__real@4@4000c000000000000000
PUBLIC	__real@4@4004c800000000000000
EXTRN	_cos:NEAR
EXTRN	_sin:NEAR
EXTRN	__imp__glRotatef@16:NEAR
;	COMDAT __real@4@4000c916870000000000
; File D:\prj64k\glAss (eventad)\parts\p_cubes.cpp
CONST	SEGMENT
__real@4@4000c916870000000000 DD 040491687r	; 3.142
CONST	ENDS
;	COMDAT __real@4@3fff99999a0000000000
CONST	SEGMENT
__real@4@3fff99999a0000000000 DD 03f99999ar	; 1.2
CONST	ENDS
;	COMDAT __real@4@3ffe8000000000000000
CONST	SEGMENT
__real@4@3ffe8000000000000000 DD 03f000000r	; 0.5
CONST	ENDS
;	COMDAT __real@4@4000f333330000000000
CONST	SEGMENT
__real@4@4000f333330000000000 DD 040733333r	; 3.8
CONST	ENDS
;	COMDAT __real@4@40009333330000000000
CONST	SEGMENT
__real@4@40009333330000000000 DD 040133333r	; 2.3
CONST	ENDS
;	COMDAT __real@4@40028000000000000000
CONST	SEGMENT
__real@4@40028000000000000000 DD 041000000r	; 8
CONST	ENDS
;	COMDAT __real@4@4001c800000000000000
CONST	SEGMENT
__real@4@4001c800000000000000 DD 040c80000r	; 6.25
CONST	ENDS
;	COMDAT __real@4@3ffccccccd0000000000
CONST	SEGMENT
__real@4@3ffccccccd0000000000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@40029000000000000000
CONST	SEGMENT
__real@4@40029000000000000000 DD 041100000r	; 9
CONST	ENDS
;	COMDAT __real@4@4001a000000000000000
CONST	SEGMENT
__real@4@4001a000000000000000 DD 040a00000r	; 5
CONST	ENDS
;	COMDAT __real@4@4001e000000000000000
CONST	SEGMENT
__real@4@4001e000000000000000 DD 040e00000r	; 7
CONST	ENDS
;	COMDAT __real@4@4003c800000000000000
CONST	SEGMENT
__real@4@4003c800000000000000 DD 041c80000r	; 25
CONST	ENDS
;	COMDAT __real@4@4000c000000000000000
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT __real@4@4004c800000000000000
CONST	SEGMENT
__real@4@4004c800000000000000 DD 042480000r	; 50
CONST	ENDS
;	COMDAT ?p_cubes_render_flow@@YAXMMMMMMM@Z
_TEXT	SEGMENT
_t$ = 8
_x$ = 12
_y$ = 16
_z$ = 20
_r$ = 24
_g$ = 28
_b$ = 32
_rad$ = -204
_a0$ = -208
_a1$ = -212
_a2$ = -216
_j$ = -220
_c0$19143 = -224
_c1$19145 = -228
_c2$19147 = -232
_ra$ = -236
_i$ = -240
_x1$19157 = -244
_y1$19159 = -248
_x2$19161 = -252
_y2$19163 = -256
_u$19166 = -260
_u2$19168 = -264
?p_cubes_render_flow@@YAXMMMMMMM@Z PROC NEAR		; p_cubes_render_flow, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_cubes.cpp
; Line 138
	push	ebp
	mov	ebp, esp
	sub	esp, 392				; 00000188H
	push	ebx
	push	esi
	push	edi
; Line 142
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000c916870000000000
	fdiv	DWORD PTR __real@4@3fff99999a0000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -268+[ebp]
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fadd	DWORD PTR __real@4@3ffe8000000000000000
	fstp	DWORD PTR _a0$[ebp]
; Line 143
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000c916870000000000
	fdiv	DWORD PTR __real@4@4000f333330000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -272+[ebp]
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fadd	DWORD PTR __real@4@3ffe8000000000000000
	fstp	DWORD PTR _a1$[ebp]
; Line 144
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000c916870000000000
	fdiv	DWORD PTR __real@4@40009333330000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -276+[ebp]
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fsubr	DWORD PTR __real@4@3ffe8000000000000000
	fstp	DWORD PTR _a2$[ebp]
; Line 145
	mov	DWORD PTR _j$[ebp], 0
	jmp	SHORT $L19140
$L19141:
	mov	eax, DWORD PTR _j$[ebp]
	add	eax, 1
	mov	DWORD PTR _j$[ebp], eax
$L19140:
	cmp	DWORD PTR _j$[ebp], 51			; 00000033H
	jge	$L19142
; Line 146
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@40028000000000000000
	fiadd	DWORD PTR _j$[ebp]
	fmul	DWORD PTR __real@4@4000c916870000000000
	fdiv	DWORD PTR __real@4@4001c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -280+[ebp]
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	fadd	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR _c0$19143[ebp]
; Line 147
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@40029000000000000000
	fiadd	DWORD PTR _j$[ebp]
	fmul	DWORD PTR __real@4@4000c916870000000000
	fdiv	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -284+[ebp]
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	fadd	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR _c1$19145[ebp]
; Line 148
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4001e000000000000000
	fiadd	DWORD PTR _j$[ebp]
	fmul	DWORD PTR __real@4@4000c916870000000000
	fdiv	DWORD PTR __real@4@4003c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -288+[ebp]
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	fadd	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR _c2$19147[ebp]
; Line 149
	fld	DWORD PTR _c0$19143[ebp]
	fmul	DWORD PTR _a0$[ebp]
	fld	DWORD PTR _c1$19145[ebp]
	fmul	DWORD PTR _a1$[ebp]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _c2$19147[ebp]
	fmul	DWORD PTR _a2$[ebp]
	faddp	ST(1), ST(0)
	mov	ecx, DWORD PTR _j$[ebp]
	fstp	DWORD PTR _rad$[ebp+ecx*4]
; Line 150
	jmp	$L19141
$L19142:
; Line 152
	push	111					; 0000006fH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 155
	mov	DWORD PTR _ra$[ebp], 1082130432		; 40800000H
; Line 157
	call	DWORD PTR __imp__glPushMatrix@0
; Line 158
	mov	edx, DWORD PTR _z$[ebp]
	push	edx
	mov	eax, DWORD PTR _y$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x$[ebp]
	push	ecx
	call	DWORD PTR __imp__glTranslatef@12
; Line 159
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -292+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -296+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fadd	ST(0), ST(0)
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -300+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	1120403456				; 42c80000H
	call	DWORD PTR __imp__glRotatef@16
; Line 160
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 161
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19154
$L19155:
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, 1
	mov	DWORD PTR _i$[ebp], edx
$L19154:
	cmp	DWORD PTR _i$[ebp], 50			; 00000032H
	jge	$L19156
; Line 165
	fild	DWORD PTR _i$[ebp]
	fmul	DWORD PTR __real@4@4000c916870000000000
	fdiv	DWORD PTR __real@4@4003c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -304+[ebp]
	mov	eax, DWORD PTR _i$[ebp]
	fmul	DWORD PTR _rad$[ebp+eax*4]
	fstp	DWORD PTR _x1$19157[ebp]
; Line 166
	fild	DWORD PTR _i$[ebp]
	fmul	DWORD PTR __real@4@4000c916870000000000
	fdiv	DWORD PTR __real@4@4003c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -308+[ebp]
	mov	ecx, DWORD PTR _i$[ebp]
	fmul	DWORD PTR _rad$[ebp+ecx*4]
	fstp	DWORD PTR _y1$19159[ebp]
; Line 167
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, 1
	mov	DWORD PTR -312+[ebp], edx
	fild	DWORD PTR -312+[ebp]
	fmul	DWORD PTR __real@4@4000c916870000000000
	fdiv	DWORD PTR __real@4@4003c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -316+[ebp]
	mov	eax, DWORD PTR _i$[ebp]
	fmul	DWORD PTR _rad$[ebp+eax*4+4]
	fstp	DWORD PTR _x2$19161[ebp]
; Line 168
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	mov	DWORD PTR -320+[ebp], ecx
	fild	DWORD PTR -320+[ebp]
	fmul	DWORD PTR __real@4@4000c916870000000000
	fdiv	DWORD PTR __real@4@4003c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -324+[ebp]
	mov	edx, DWORD PTR _i$[ebp]
	fmul	DWORD PTR _rad$[ebp+edx*4+4]
	fstp	DWORD PTR _y2$19163[ebp]
; Line 170
	mov	eax, DWORD PTR _i$[ebp]
	cdq
	mov	ecx, 10					; 0000000aH
	idiv	ecx
	cmp	edx, 1
	jne	SHORT $L19165
	fld	DWORD PTR _x1$19157[ebp]
	fmul	DWORD PTR _ra$[ebp]
	fstp	DWORD PTR _x1$19157[ebp]
	fld	DWORD PTR _y1$19159[ebp]
	fmul	DWORD PTR _ra$[ebp]
	fstp	DWORD PTR _y1$19159[ebp]
	fld	DWORD PTR _x2$19161[ebp]
	fmul	DWORD PTR _ra$[ebp]
	fstp	DWORD PTR _x2$19161[ebp]
	fld	DWORD PTR _y2$19163[ebp]
	fmul	DWORD PTR _ra$[ebp]
	fstp	DWORD PTR _y2$19163[ebp]
$L19165:
; Line 172
	fild	DWORD PTR _i$[ebp]
	fdiv	DWORD PTR __real@4@4004c800000000000000
	fstp	DWORD PTR _u$19166[ebp]
; Line 173
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, 1
	mov	DWORD PTR -328+[ebp], edx
	fild	DWORD PTR -328+[ebp]
	fdiv	DWORD PTR __real@4@4004c800000000000000
	fstp	DWORD PTR _u2$19168[ebp]
; Line 175
	mov	eax, DWORD PTR _b$[ebp]
	push	eax
	mov	ecx, DWORD PTR _g$[ebp]
	push	ecx
	mov	edx, DWORD PTR _r$[ebp]
	push	edx
	call	DWORD PTR __imp__glColor3f@12
; Line 176
	push	0
	mov	eax, DWORD PTR _u2$19168[ebp]
	push	eax
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 177
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glVertex3f@12
; Line 178
	push	0
	mov	ecx, DWORD PTR _u$19166[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 179
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glVertex3f@12
; Line 181
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glColor3f@12
; Line 182
	push	1065353216				; 3f800000H
	mov	edx, DWORD PTR _u$19166[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 183
	push	0
	mov	eax, DWORD PTR _y1$19159[ebp]
	push	eax
	mov	ecx, DWORD PTR _x1$19157[ebp]
	push	ecx
	call	DWORD PTR __imp__glVertex3f@12
; Line 184
	push	1065353216				; 3f800000H
	mov	edx, DWORD PTR _u2$19168[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 185
	push	0
	mov	eax, DWORD PTR _y2$19163[ebp]
	push	eax
	mov	ecx, DWORD PTR _x2$19161[ebp]
	push	ecx
	call	DWORD PTR __imp__glVertex3f@12
; Line 187
	mov	edx, DWORD PTR _b$[ebp]
	push	edx
	mov	eax, DWORD PTR _g$[ebp]
	push	eax
	mov	ecx, DWORD PTR _r$[ebp]
	push	ecx
	call	DWORD PTR __imp__glColor3f@12
; Line 188
	push	0
	mov	edx, DWORD PTR _u2$19168[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 189
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glVertex3f@12
; Line 190
	push	0
	mov	eax, DWORD PTR _u$19166[ebp]
	push	eax
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 191
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glVertex3f@12
; Line 193
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glColor3f@12
; Line 194
	push	1065353216				; 3f800000H
	mov	ecx, DWORD PTR _u$19166[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 195
	mov	edx, DWORD PTR _y1$19159[ebp]
	push	edx
	mov	eax, DWORD PTR _x1$19157[ebp]
	push	eax
	push	0
	call	DWORD PTR __imp__glVertex3f@12
; Line 196
	push	1065353216				; 3f800000H
	mov	ecx, DWORD PTR _u2$19168[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 197
	mov	edx, DWORD PTR _y2$19163[ebp]
	push	edx
	mov	eax, DWORD PTR _x2$19161[ebp]
	push	eax
	push	0
	call	DWORD PTR __imp__glVertex3f@12
; Line 199
	mov	ecx, DWORD PTR _b$[ebp]
	push	ecx
	mov	edx, DWORD PTR _g$[ebp]
	push	edx
	mov	eax, DWORD PTR _r$[ebp]
	push	eax
	call	DWORD PTR __imp__glColor3f@12
; Line 200
	push	0
	mov	ecx, DWORD PTR _u2$19168[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 201
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glVertex3f@12
; Line 202
	push	0
	mov	edx, DWORD PTR _u$19166[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 203
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glVertex3f@12
; Line 205
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glColor3f@12
; Line 206
	push	1065353216				; 3f800000H
	mov	eax, DWORD PTR _u$19166[ebp]
	push	eax
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 207
	mov	ecx, DWORD PTR _y1$19159[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _x1$19157[ebp]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 208
	push	1065353216				; 3f800000H
	mov	eax, DWORD PTR _u2$19168[ebp]
	push	eax
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 209
	mov	ecx, DWORD PTR _y2$19163[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR _x2$19161[ebp]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 211
	jmp	$L19155
$L19156:
; Line 212
	call	DWORD PTR __imp__glEnd@0
; Line 213
	call	DWORD PTR __imp__glPopMatrix@0
; Line 214
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_cubes_render_flow@@YAXMMMMMMM@Z ENDP			; p_cubes_render_flow
_TEXT	ENDS
PUBLIC	?p_cubes_run@@YAXPAUEVENT@@@Z			; p_cubes_run
PUBLIC	__real@4@40008000000000000000
PUBLIC	__real@4@3ffd8000000000000000
PUBLIC	__real@8@3fff8000000000000000
PUBLIC	__real@4@4001c000000000000000
PUBLIC	__real@8@4001e000000000000000
PUBLIC	__real@8@4000c000000000000000
PUBLIC	__real@8@4001a000000000000000
PUBLIC	__real@4@4000d554ca0000000000
PUBLIC	__real@4@4002a000000000000000
PUBLIC	__real@4@4003a800000000000000
PUBLIC	__real@8@4000c916872b020c4800
PUBLIC	__real@8@40008000000000000000
PUBLIC	__real@8@40018000000000000000
EXTRN	_fmod:NEAR
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__ftol:NEAR
EXTRN	_gluPerspective@32:NEAR
EXTRN	_gluLookAt@72:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
;	COMDAT __real@4@40008000000000000000
; File D:\prj64k\glAss (eventad)\parts\p_cubes.cpp
CONST	SEGMENT
__real@4@40008000000000000000 DD 040000000r	; 2
CONST	ENDS
;	COMDAT __real@4@3ffd8000000000000000
CONST	SEGMENT
__real@4@3ffd8000000000000000 DD 03e800000r	; 0.25
CONST	ENDS
;	COMDAT __real@8@3fff8000000000000000
CONST	SEGMENT
__real@8@3fff8000000000000000 DQ 03ff0000000000000r ; 1
CONST	ENDS
;	COMDAT __real@4@4001c000000000000000
CONST	SEGMENT
__real@4@4001c000000000000000 DD 040c00000r	; 6
CONST	ENDS
;	COMDAT __real@8@4001e000000000000000
CONST	SEGMENT
__real@8@4001e000000000000000 DQ 0401c000000000000r ; 7
CONST	ENDS
;	COMDAT __real@8@4000c000000000000000
CONST	SEGMENT
__real@8@4000c000000000000000 DQ 04008000000000000r ; 3
CONST	ENDS
;	COMDAT __real@8@4001a000000000000000
CONST	SEGMENT
__real@8@4001a000000000000000 DQ 04014000000000000r ; 5
CONST	ENDS
;	COMDAT __real@4@4000d554ca0000000000
CONST	SEGMENT
__real@4@4000d554ca0000000000 DD 0405554car	; 3.3333
CONST	ENDS
;	COMDAT __real@4@4002a000000000000000
CONST	SEGMENT
__real@4@4002a000000000000000 DD 041200000r	; 10
CONST	ENDS
;	COMDAT __real@4@4003a800000000000000
CONST	SEGMENT
__real@4@4003a800000000000000 DD 041a80000r	; 21
CONST	ENDS
;	COMDAT __real@8@4000c916872b020c4800
CONST	SEGMENT
__real@8@4000c916872b020c4800 DQ 0400922d0e5604189r ; 3.142
CONST	ENDS
;	COMDAT __real@8@40008000000000000000
CONST	SEGMENT
__real@8@40008000000000000000 DQ 04000000000000000r ; 2
CONST	ENDS
;	COMDAT __real@8@40018000000000000000
CONST	SEGMENT
__real@8@40018000000000000000 DQ 04010000000000000r ; 4
CONST	ENDS
;	COMDAT ?p_cubes_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -4
_i$ = -8
__t$ = -12
__if$ = -16
_t2$19197 = -20
_x$19199 = -24
_y$19201 = -28
_z$19203 = -32
?p_cubes_run@@YAXPAUEVENT@@@Z PROC NEAR			; p_cubes_run, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_cubes.cpp
; Line 216
	push	ebp
	mov	ebp, esp
	sub	esp, 128				; 00000080H
	push	ebx
	push	esi
	push	edi
; Line 221
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 222
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 223
	push	2929					; 00000b71H
	call	DWORD PTR __imp__glDisable@4
; Line 225
	mov	eax, DWORD PTR _e$[ebp]
	fld	DWORD PTR [eax+4]
	fdiv	DWORD PTR __real@4@40008000000000000000
	fstp	DWORD PTR __t$[ebp]
; Line 227
	push	1072693248				; 3ff00000H
	push	0
	fld	DWORD PTR __t$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_fmod
	add	esp, 16					; 00000010H
	fstp	DWORD PTR __if$[ebp]
; Line 228
	fld	DWORD PTR __if$[ebp]
	fcomp	DWORD PTR __real@4@3ffd8000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L19178
; Line 229
	fld	DWORD PTR __if$[ebp]
	fadd	ST(0), ST(0)
	fstp	DWORD PTR _t$[ebp]
; Line 230
	jmp	SHORT $L19179
$L19178:
; Line 231
	fld	DWORD PTR __if$[ebp]
	fsub	DWORD PTR __real@4@3ffd8000000000000000
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	fadd	DWORD PTR __real@4@3ffe8000000000000000
	fstp	DWORD PTR _t$[ebp]
$L19179:
; Line 233
	fld	DWORD PTR __t$[ebp]
	fsub	DWORD PTR __real@4@3ffe8000000000000000
	call	__ftol
	mov	DWORD PTR -36+[ebp], eax
	fild	DWORD PTR -36+[ebp]
	fadd	DWORD PTR _t$[ebp]
	fstp	DWORD PTR _t$[ebp]
; Line 235
	push	5890					; 00001702H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 236
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 238
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 239
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 241
	push	1083129856				; 408f4000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1079738368				; 405b8000H
	push	0
	call	_gluPerspective@32
; Line 243
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	fsub	DWORD PTR __real@4@3ffe8000000000000000
	call	__ftol
	mov	DWORD PTR -40+[ebp], eax
	mov	ecx, DWORD PTR -40+[ebp]
	sub	ecx, 1
	mov	DWORD PTR -40+[ebp], ecx
	cmp	DWORD PTR -40+[ebp], 6
	ja	$L19188
	mov	edx, DWORD PTR -40+[ebp]
	jmp	DWORD PTR $L19302[edx*4]
$L19186:
; Line 246
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
	fmul	QWORD PTR __real@8@4001e000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72
; Line 247
	jmp	$L19183
$L19187:
; Line 250
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
	fmul	QWORD PTR __real@8@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@4001e000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72
; Line 251
	jmp	$L19183
$L19188:
; Line 253
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
	fmul	QWORD PTR __real@8@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@4001e000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72
$L19183:
; Line 257
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@4000c000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L19189
; Line 258
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000d554ca0000000000
	fsubr	DWORD PTR __real@4@4002a000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	0
	push	0
	call	DWORD PTR __imp__glTranslatef@12
$L19189:
; Line 261
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@4003a800000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L19190
; Line 262
	fld	DWORD PTR _t$[ebp]
	fsub	DWORD PTR __real@4@4003a800000000000000
	fld	DWORD PTR _t$[ebp]
	fsub	DWORD PTR __real@4@4003a800000000000000
	fmulp	ST(1), ST(0)
	fmul	DWORD PTR __real@4@4000c000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	0
	push	0
	call	DWORD PTR __imp__glTranslatef@12
$L19190:
; Line 265
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -44+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -48+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@40028000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -52+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	1124204544				; 43020000H
	call	DWORD PTR __imp__glRotatef@16
; Line 267
	mov	eax, DWORD PTR _t$[ebp]
	push	eax
	call	?p_cubes_render_world@@YAXM@Z		; p_cubes_render_world
	add	esp, 4
; Line 269
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19194
$L19195:
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$[ebp], ecx
$L19194:
	cmp	DWORD PTR _i$[ebp], 10			; 0000000aH
	jge	$L19196
; Line 270
	fild	DWORD PTR _i$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	fsubr	DWORD PTR _t$[ebp]
	fst	DWORD PTR _t2$19197[ebp]
; Line 271
	fmul	QWORD PTR __real@8@4000c916872b020c4800
	fdiv	QWORD PTR __real@8@40008000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -56+[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _x$19199[ebp]
; Line 272
	fld	DWORD PTR _t2$19197[ebp]
	fmul	QWORD PTR __real@8@4000c916872b020c4800
	fdiv	QWORD PTR __real@8@40018000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -60+[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _y$19201[ebp]
; Line 273
	fld	DWORD PTR _t2$19197[ebp]
	fmul	QWORD PTR __real@8@4000c916872b020c4800
	fdiv	QWORD PTR __real@8@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -64+[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _z$19203[ebp]
; Line 274
	push	1045220557				; 3e4ccccdH
	push	1050253722				; 3e99999aH
	push	1065353216				; 3f800000H
	mov	edx, DWORD PTR _z$19203[ebp]
	push	edx
	mov	eax, DWORD PTR _y$19201[ebp]
	push	eax
	mov	ecx, DWORD PTR _x$19199[ebp]
	push	ecx
	fild	DWORD PTR _i$[ebp]
	fadd	DWORD PTR _t$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	?p_cubes_render_flow@@YAXMMMMMMM@Z	; p_cubes_render_flow
	add	esp, 28					; 0000001cH
; Line 275
	push	1045220557				; 3e4ccccdH
	push	1065353216				; 3f800000H
	push	1050253722				; 3e99999aH
	mov	edx, DWORD PTR _x$19199[ebp]
	push	edx
	mov	eax, DWORD PTR _z$19203[ebp]
	push	eax
	mov	ecx, DWORD PTR _y$19201[ebp]
	push	ecx
	fild	DWORD PTR _i$[ebp]
	fadd	DWORD PTR _t$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	?p_cubes_render_flow@@YAXMMMMMMM@Z	; p_cubes_render_flow
	add	esp, 28					; 0000001cH
; Line 276
	push	1065353216				; 3f800000H
	push	1050253722				; 3e99999aH
	push	1045220557				; 3e4ccccdH
	mov	edx, DWORD PTR _y$19201[ebp]
	push	edx
	mov	eax, DWORD PTR _x$19199[ebp]
	push	eax
	mov	ecx, DWORD PTR _z$19203[ebp]
	push	ecx
	fild	DWORD PTR _i$[ebp]
	fadd	DWORD PTR _t$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	?p_cubes_render_flow@@YAXMMMMMMM@Z	; p_cubes_render_flow
	add	esp, 28					; 0000001cH
; Line 277
	jmp	$L19195
$L19196:
; Line 279
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
$L19302:
	DD	$L19186
	DD	$L19188
	DD	$L19187
	DD	$L19188
	DD	$L19186
	DD	$L19188
	DD	$L19187
?p_cubes_run@@YAXPAUEVENT@@@Z ENDP			; p_cubes_run
_TEXT	ENDS
END
