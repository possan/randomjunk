	TITLE	D:\prj64k\glAss (eventad)\parts\p_greetings.cpp
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
;	COMDAT ??_C@_09DMFC@we?5luhv?4?4?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_0L@OJOM@neurodruid?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_04IBLB@mind?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_00A@?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_07GNCA@aardbei?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_09EBMO@former?5k2?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_07IIGO@woorlic?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_03PFCJ@tbl?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_07DBAH@jeskola?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_05DFFL@yodel?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_06GDLG@trauma?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_0N@NPHF@mediascience?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_07EIKO@komplex?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_0L@OAAJ@bingoberra?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_08LALN@grilla?$CB?$DP?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT _IsEqualGUID
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _==
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_greetings_init@@YAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_greetings_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pgot@@YAXMMPADM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	??_C@_07EIKO@komplex?$AA@			; `string'
PUBLIC	??_C@_0L@OAAJ@bingoberra?$AA@			; `string'
PUBLIC	??_C@_08LALN@grilla?$CB?$DP?$AA@		; `string'
PUBLIC	?pgtext@@3PAPADA				; pgtext
PUBLIC	??_C@_09DMFC@we?5luhv?4?4?$AA@			; `string'
PUBLIC	??_C@_0L@OJOM@neurodruid?$AA@			; `string'
PUBLIC	??_C@_04IBLB@mind?$AA@				; `string'
PUBLIC	??_C@_00A@?$AA@					; `string'
PUBLIC	??_C@_07GNCA@aardbei?$AA@			; `string'
PUBLIC	??_C@_09EBMO@former?5k2?$AA@			; `string'
PUBLIC	??_C@_07IIGO@woorlic?$AA@			; `string'
PUBLIC	??_C@_03PFCJ@tbl?$AA@				; `string'
PUBLIC	??_C@_07DBAH@jeskola?$AA@			; `string'
PUBLIC	??_C@_05DFFL@yodel?$AA@				; `string'
PUBLIC	??_C@_06GDLG@trauma?$AA@			; `string'
PUBLIC	??_C@_0N@NPHF@mediascience?$AA@			; `string'
_DATA	SEGMENT
?pgtext@@3PAPADA DD FLAT:??_C@_09DMFC@we?5luhv?4?4?$AA@	; pgtext
	DD	FLAT:??_C@_0L@OJOM@neurodruid?$AA@
	DD	FLAT:??_C@_04IBLB@mind?$AA@
	DD	FLAT:??_C@_00A@?$AA@
	DD	FLAT:??_C@_07GNCA@aardbei?$AA@
	DD	FLAT:??_C@_09EBMO@former?5k2?$AA@
	DD	FLAT:??_C@_07IIGO@woorlic?$AA@
	DD	FLAT:??_C@_03PFCJ@tbl?$AA@
	DD	FLAT:??_C@_07DBAH@jeskola?$AA@
	DD	FLAT:??_C@_05DFFL@yodel?$AA@
	DD	FLAT:??_C@_06GDLG@trauma?$AA@
	DD	FLAT:??_C@_0N@NPHF@mediascience?$AA@
	DD	FLAT:??_C@_07EIKO@komplex?$AA@
	DD	FLAT:??_C@_0L@OAAJ@bingoberra?$AA@
	DD	FLAT:??_C@_00A@?$AA@
	DD	FLAT:??_C@_08LALN@grilla?$CB?$DP?$AA@
_DATA	ENDS
;	COMDAT ??_C@_09DMFC@we?5luhv?4?4?$AA@
CONST	SEGMENT
??_C@_09DMFC@we?5luhv?4?4?$AA@ DB 'we luhv..', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0L@OJOM@neurodruid?$AA@
CONST	SEGMENT
??_C@_0L@OJOM@neurodruid?$AA@ DB 'neurodruid', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_04IBLB@mind?$AA@
CONST	SEGMENT
??_C@_04IBLB@mind?$AA@ DB 'mind', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_00A@?$AA@
CONST	SEGMENT
??_C@_00A@?$AA@ DB 00H					; `string'
CONST	ENDS
;	COMDAT ??_C@_07GNCA@aardbei?$AA@
CONST	SEGMENT
??_C@_07GNCA@aardbei?$AA@ DB 'aardbei', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_09EBMO@former?5k2?$AA@
CONST	SEGMENT
??_C@_09EBMO@former?5k2?$AA@ DB 'former k2', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_07IIGO@woorlic?$AA@
CONST	SEGMENT
??_C@_07IIGO@woorlic?$AA@ DB 'woorlic', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_03PFCJ@tbl?$AA@
CONST	SEGMENT
??_C@_03PFCJ@tbl?$AA@ DB 'tbl', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_07DBAH@jeskola?$AA@
CONST	SEGMENT
??_C@_07DBAH@jeskola?$AA@ DB 'jeskola', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_05DFFL@yodel?$AA@
CONST	SEGMENT
??_C@_05DFFL@yodel?$AA@ DB 'yodel', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_06GDLG@trauma?$AA@
CONST	SEGMENT
??_C@_06GDLG@trauma?$AA@ DB 'trauma', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_0N@NPHF@mediascience?$AA@
CONST	SEGMENT
??_C@_0N@NPHF@mediascience?$AA@ DB 'mediascience', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_07EIKO@komplex?$AA@
CONST	SEGMENT
??_C@_07EIKO@komplex?$AA@ DB 'komplex', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_0L@OAAJ@bingoberra?$AA@
CONST	SEGMENT
??_C@_0L@OAAJ@bingoberra?$AA@ DB 'bingoberra', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_08LALN@grilla?$CB?$DP?$AA@
CONST	SEGMENT
??_C@_08LALN@grilla?$CB?$DP?$AA@ DB 'grilla!?', 00H	; `string'
CONST	ENDS
PUBLIC	__real@4@4005c800000000000000
PUBLIC	__real@4@c005c800000000000000
PUBLIC	__real@4@4003b000000000000000
PUBLIC	__real@4@40008000000000000000
PUBLIC	__real@4@3ffe8000000000000000
PUBLIC	?p_greetings_init@@YAXXZ			; p_greetings_init
EXTRN	__fltused:NEAR
EXTRN	__imp__glNewList@8:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	_rand:NEAR
EXTRN	_srand:NEAR
EXTRN	__imp__glEndList@0:NEAR
;	COMDAT __real@4@4005c800000000000000
; File D:\prj64k\glAss (eventad)\parts\p_greetings.cpp
CONST	SEGMENT
__real@4@4005c800000000000000 DD 042c80000r	; 100
CONST	ENDS
;	COMDAT __real@4@c005c800000000000000
CONST	SEGMENT
__real@4@c005c800000000000000 DD 0c2c80000r	; -100
CONST	ENDS
;	COMDAT __real@4@4003b000000000000000
CONST	SEGMENT
__real@4@4003b000000000000000 DD 041b00000r	; 22
CONST	ENDS
;	COMDAT __real@4@40008000000000000000
CONST	SEGMENT
__real@4@40008000000000000000 DD 040000000r	; 2
CONST	ENDS
;	COMDAT __real@4@3ffe8000000000000000
CONST	SEGMENT
__real@4@3ffe8000000000000000 DD 03f000000r	; 0.5
CONST	ENDS
;	COMDAT ?p_greetings_init@@YAXXZ
_TEXT	SEGMENT
_x$ = -4
_y$ = -8
_z$ = -12
_r$ = -16
_u$ = -20
_v$ = -24
_i$ = -28
?p_greetings_init@@YAXXZ PROC NEAR			; p_greetings_init, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_greetings.cpp
; Line 10
	push	ebp
	mov	ebp, esp
	sub	esp, 116				; 00000074H
	push	ebx
	push	esi
	push	edi
; Line 17
	push	4864					; 00001300H
	push	232					; 000000e8H
	call	DWORD PTR __imp__glNewList@8
; Line 19
	push	12345					; 00003039H
	call	_srand
	add	esp, 4
; Line 21
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19434
$L19435:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$L19434:
	cmp	DWORD PTR _i$[ebp], 1000		; 000003e8H
	jge	$L19436
; Line 25
	call	_rand
	cdq
	mov	ecx, 20000				; 00004e20H
	idiv	ecx
	mov	DWORD PTR -32+[ebp], edx
	fild	DWORD PTR -32+[ebp]
	fdiv	DWORD PTR __real@4@4005c800000000000000
	fadd	DWORD PTR __real@4@c005c800000000000000
	fstp	DWORD PTR _x$[ebp]
; Line 26
	call	_rand
	cdq
	mov	ecx, 16000				; 00003e80H
	idiv	ecx
	mov	DWORD PTR -36+[ebp], edx
	fild	DWORD PTR -36+[ebp]
	fchs
	fdiv	DWORD PTR __real@4@4005c800000000000000
	fstp	DWORD PTR _y$[ebp]
; Line 27
	call	_rand
	cdq
	mov	ecx, 20000				; 00004e20H
	idiv	ecx
	mov	DWORD PTR -40+[ebp], edx
	fild	DWORD PTR -40+[ebp]
	fdiv	DWORD PTR __real@4@4005c800000000000000
	fadd	DWORD PTR __real@4@c005c800000000000000
	fstp	DWORD PTR _z$[ebp]
; Line 28
	call	_rand
	cdq
	mov	ecx, 100				; 00000064H
	idiv	ecx
	mov	DWORD PTR -44+[ebp], edx
	fild	DWORD PTR -44+[ebp]
	fdiv	DWORD PTR __real@4@4003b000000000000000
	fstp	DWORD PTR _r$[ebp]
; Line 33
	call	_rand
	and	eax, -2147483647			; 80000001H
	jns	SHORT $L19542
	dec	eax
	or	eax, -2					; fffffffeH
	inc	eax
$L19542:
	mov	DWORD PTR -48+[ebp], eax
	fild	DWORD PTR -48+[ebp]
	fdiv	DWORD PTR __real@4@40008000000000000000
	fstp	DWORD PTR _u$[ebp]
; Line 34
	call	_rand
	and	eax, -2147483647			; 80000001H
	jns	SHORT $L19543
	dec	eax
	or	eax, -2					; fffffffeH
	inc	eax
$L19543:
	mov	DWORD PTR -52+[ebp], eax
	fild	DWORD PTR -52+[ebp]
	fdiv	DWORD PTR __real@4@40008000000000000000
	fstp	DWORD PTR _v$[ebp]
; Line 36
	push	1036831949				; 3dcccccdH
	push	1036831949				; 3dcccccdH
	push	1036831949				; 3dcccccdH
	call	DWORD PTR __imp__glColor3f@12
; Line 46
	mov	edx, DWORD PTR _v$[ebp]
	push	edx
	mov	eax, DWORD PTR _u$[ebp]
	push	eax
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _y$[ebp]
	push	ecx
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 47
	mov	edx, DWORD PTR _v$[ebp]
	push	edx
	fld	DWORD PTR __real@4@3ffe8000000000000000
	fadd	DWORD PTR _u$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _y$[ebp]
	push	eax
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 48
	fld	DWORD PTR __real@4@3ffe8000000000000000
	fadd	DWORD PTR _v$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ffe8000000000000000
	fadd	DWORD PTR _u$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8
	fld	DWORD PTR _z$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _y$[ebp]
	push	ecx
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 49
	fld	DWORD PTR __real@4@3ffe8000000000000000
	fadd	DWORD PTR _v$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	edx, DWORD PTR _u$[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
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
; Line 60
	jmp	$L19435
$L19436:
; Line 62
	call	DWORD PTR __imp__glEndList@0
; Line 63
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_greetings_init@@YAXXZ ENDP				; p_greetings_init
_TEXT	ENDS
PUBLIC	?p_greetings_run@@YAXPAUEVENT@@@Z		; p_greetings_run
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@4@4001e000000000000000
PUBLIC	__real@4@4003c800000000000000
PUBLIC	__real@4@4000c916870000000000
PUBLIC	__real@4@4001a000000000000000
PUBLIC	__real@8@3fff8000000000000000
PUBLIC	__real@8@4005d200000000000000
PUBLIC	__real@8@3ffbcccccd0000000000
PUBLIC	__real@4@4000c000000000000000
EXTRN	_cos:NEAR
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glRotatef@16:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	?glaDrawString@@YAXMMMMMMPAD@Z:NEAR		; glaDrawString
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__imp__glCallList@4:NEAR
EXTRN	_gluPerspective@32:NEAR
EXTRN	_gluLookAt@72:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glEnd@0:NEAR
;	COMDAT __real@4@40018000000000000000
; File D:\prj64k\glAss (eventad)\parts\p_greetings.cpp
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@4@4001e000000000000000
CONST	SEGMENT
__real@4@4001e000000000000000 DD 040e00000r	; 7
CONST	ENDS
;	COMDAT __real@4@4003c800000000000000
CONST	SEGMENT
__real@4@4003c800000000000000 DD 041c80000r	; 25
CONST	ENDS
;	COMDAT __real@4@4000c916870000000000
CONST	SEGMENT
__real@4@4000c916870000000000 DD 040491687r	; 3.142
CONST	ENDS
;	COMDAT __real@4@4001a000000000000000
CONST	SEGMENT
__real@4@4001a000000000000000 DD 040a00000r	; 5
CONST	ENDS
;	COMDAT __real@8@3fff8000000000000000
CONST	SEGMENT
__real@8@3fff8000000000000000 DQ 03ff0000000000000r ; 1
CONST	ENDS
;	COMDAT __real@8@4005d200000000000000
CONST	SEGMENT
__real@8@4005d200000000000000 DQ 0405a400000000000r ; 105
CONST	ENDS
;	COMDAT __real@8@3ffbcccccd0000000000
CONST	SEGMENT
__real@8@3ffbcccccd0000000000 DQ 03fb99999a0000000r ; 0.1
CONST	ENDS
;	COMDAT __real@4@4000c000000000000000
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT ?p_greetings_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -4
_y0$ = -8
_y1$ = -12
_i$ = -16
?p_greetings_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_greetings_run, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_greetings.cpp
; Line 90
	push	ebp
	mov	ebp, esp
	sub	esp, 84					; 00000054H
	push	ebx
	push	esi
	push	edi
; Line 101
	mov	eax, DWORD PTR _e$[ebp]
	fld	DWORD PTR [eax+4]
	fdiv	DWORD PTR __real@4@40018000000000000000
	fstp	DWORD PTR _t$[ebp]
; Line 103
	push	2884					; 00000b44H
	call	DWORD PTR __imp__glDisable@4
; Line 104
	push	2929					; 00000b71H
	call	DWORD PTR __imp__glDisable@4
; Line 106
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 107
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 109
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 110
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 113
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4001e000000000000000
	fchs
	fstp	DWORD PTR _y0$[ebp]
; Line 114
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4003c800000000000000
	fchs
	fstp	DWORD PTR _y1$[ebp]
; Line 116
	push	1081262080				; 4072c000H
	push	0
	push	1069128089				; 3fb99999H
	push	-1610612736				; a0000000H
	push	1072693248				; 3ff00000H
	push	0
	fld	DWORD PTR _y0$[ebp]
	fmul	DWORD PTR __real@4@4000c916870000000000
	fdiv	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@3fff8000000000000000
	fadd	QWORD PTR __real@8@4005d200000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_gluPerspective@32
; Line 120
	push	0
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	0
	push	0
	push	-1074790400				; bff00000H
	push	0
	fld	DWORD PTR _y1$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	push	0
	push	0
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@3ffbcccccd0000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _y0$[ebp]
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
; Line 123
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 124
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 125
	push	120					; 00000078H
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 126
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 127
	push	232					; 000000e8H
	call	DWORD PTR __imp__glCallList@4
; Line 128
	call	DWORD PTR __imp__glEnd@0
; Line 132
	push	106					; 0000006aH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 133
	push	0
	push	0
	push	1065353216				; 3f800000H
	push	1132920832				; 43870000H
	call	DWORD PTR __imp__glRotatef@16
; Line 134
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 135
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glColor3f@12
; Line 136
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19471
$L19472:
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$[ebp], ecx
$L19471:
	cmp	DWORD PTR _i$[ebp], 16			; 00000010H
	jge	SHORT $L19473
; Line 140
	push	1060320051				; 3f333333H
	push	1053609165				; 3ecccccdH
	push	1045220557				; 3e4ccccdH
	call	DWORD PTR __imp__glColor3f@12
; Line 142
	mov	edx, DWORD PTR _i$[ebp]
	mov	eax, DWORD PTR ?pgtext@@3PAPADA[edx*4]
	push	eax
	push	1056964608				; 3f000000H
	push	1059481190				; 3f266666H
	push	1056964608				; 3f000000H
	mov	ecx, DWORD PTR _i$[ebp]
	imul	ecx, -10				; fffffff6H
	sub	ecx, 10					; 0000000aH
	mov	DWORD PTR -20+[ebp], ecx
	fild	DWORD PTR -20+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	0
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString
	add	esp, 28					; 0000001cH
; Line 149
	jmp	SHORT $L19472
$L19473:
; Line 150
	call	DWORD PTR __imp__glEnd@0
; Line 275
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_greetings_run@@YAXPAUEVENT@@@Z ENDP			; p_greetings_run
_TEXT	ENDS
PUBLIC	?pgot@@YAXMMPADM@Z				; pgot
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@3ffbcccccd0000000000
EXTRN	_sin:NEAR
;	COMDAT __real@4@3fff8000000000000000
; File D:\prj64k\glAss (eventad)\parts\p_greetings.cpp
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@3ffbcccccd0000000000
CONST	SEGMENT
__real@4@3ffbcccccd0000000000 DD 03dcccccdr	; 0.1
CONST	ENDS
;	COMDAT ?pgot@@YAXMMPADM@Z
_TEXT	SEGMENT
_x$ = 8
_y$ = 12
_str$ = 16
_time$ = 20
_i$ = -4
_s$19485 = -8
_b$19486 = -12
_s2$19487 = -16
_s3$19489 = -20
?pgot@@YAXMMPADM@Z PROC NEAR				; pgot, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_greetings.cpp
; Line 277
	push	ebp
	mov	ebp, esp
	sub	esp, 108				; 0000006cH
	push	ebx
	push	esi
	push	edi
; Line 279
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19482
$L19483:
	fld	DWORD PTR _i$[ebp]
	fadd	DWORD PTR __real@4@3ffe8000000000000000
	fstp	DWORD PTR _i$[ebp]
$L19482:
	fld	DWORD PTR _i$[ebp]
	fcomp	DWORD PTR __real@4@4001a000000000000000
	fnstsw	ax
	test	ah, 1
	je	$L19484
; Line 281
	fld	DWORD PTR _i$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _s$19485[ebp]
; Line 283
	fld	DWORD PTR _i$[ebp]
	fadd	ST(0), ST(0)
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _b$19486[ebp]
; Line 288
	fld	DWORD PTR _i$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _s2$19487[ebp]
; Line 289
	fld	DWORD PTR _i$[ebp]
	fmul	DWORD PTR _i$[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _s3$19489[ebp]
; Line 290
	fld	DWORD PTR _b$19486[ebp]
	fmul	DWORD PTR _s3$19489[ebp]
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fstp	DWORD PTR -24+[ebp]
	fld	DWORD PTR _b$19486[ebp]
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR -28+[ebp]
	fld	DWORD PTR _time$[ebp]
	fmul	DWORD PTR __real@4@4001e000000000000000
	fsub	DWORD PTR _y$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -32+[ebp]
	fmul	DWORD PTR -28+[ebp]
	fadd	DWORD PTR -24+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _b$19486[ebp]
	fmul	DWORD PTR _s3$19489[ebp]
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fstp	DWORD PTR -36+[ebp]
	fld	DWORD PTR _b$19486[ebp]
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR -40+[ebp]
	fld	DWORD PTR _time$[ebp]
	fmul	DWORD PTR __real@4@4001e000000000000000
	fadd	DWORD PTR _y$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -44+[ebp]
	fmul	DWORD PTR -40+[ebp]
	fadd	DWORD PTR -36+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _b$19486[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR _s3$19489[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12
; Line 292
	mov	eax, DWORD PTR _str$[ebp]
	push	eax
	fld	DWORD PTR __real@4@3ffbcccccd0000000000
	fmul	DWORD PTR _s$19485[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ffbcccccd0000000000
	fmul	DWORD PTR _s$19485[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ffbcccccd0000000000
	fmul	DWORD PTR _s$19485[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	0
	mov	ecx, DWORD PTR _y$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x$[ebp]
	push	edx
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString
	add	esp, 28					; 0000001cH
; Line 294
	jmp	$L19483
$L19484:
; Line 296
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?pgot@@YAXMMPADM@Z ENDP					; pgot
_TEXT	ENDS
END
