	TITLE	D:\prj64k\glAss (eventad)\parts\p_klask.cpp
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
;	COMDAT ?p_klask_init@@YAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_klask_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?klr@@3PAY02MA					; klr
_BSS	SEGMENT
?klr@@3PAY02MA DD 04bH DUP (?)				; klr
_BSS	ENDS
PUBLIC	__real@4@4003f000000000000000
PUBLIC	__real@4@40008000000000000000
PUBLIC	__real@4@3ffe8000000000000000
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@4000c90fdb0000000000
PUBLIC	__real@4@4000c000000000000000
PUBLIC	__real@4@4001e000000000000000
PUBLIC	__real@4@400189999a0000000000
PUBLIC	__real@4@3ffacccccd0000000000
PUBLIC	__real@4@4000e666660000000000
PUBLIC	?p_klask_init@@YAXXZ				; p_klask_init
EXTRN	__fltused:NEAR
EXTRN	_cos:NEAR
EXTRN	_sin:NEAR
EXTRN	__imp__glNewList@8:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	_rand:NEAR
EXTRN	_srand:NEAR
EXTRN	__imp__glEndList@0:NEAR
;	COMDAT __real@4@4003f000000000000000
; File D:\prj64k\glAss (eventad)\parts\p_klask.cpp
CONST	SEGMENT
__real@4@4003f000000000000000 DD 041f00000r	; 30
CONST	ENDS
;	COMDAT __real@4@40008000000000000000
CONST	SEGMENT
__real@4@40008000000000000000 DD 040000000r	; 2
CONST	ENDS
;	COMDAT __real@4@3ffe8000000000000000
CONST	SEGMENT
__real@4@3ffe8000000000000000 DD 03f000000r	; 0.5
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@4000c90fdb0000000000
CONST	SEGMENT
__real@4@4000c90fdb0000000000 DD 040490fdbr	; 3.14159
CONST	ENDS
;	COMDAT __real@4@4000c000000000000000
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT __real@4@4001e000000000000000
CONST	SEGMENT
__real@4@4001e000000000000000 DD 040e00000r	; 7
CONST	ENDS
;	COMDAT __real@4@400189999a0000000000
CONST	SEGMENT
__real@4@400189999a0000000000 DD 04089999ar	; 4.3
CONST	ENDS
;	COMDAT __real@4@3ffacccccd0000000000
CONST	SEGMENT
__real@4@3ffacccccd0000000000 DD 03d4ccccdr	; 0.05
CONST	ENDS
;	COMDAT __real@4@4000e666660000000000
CONST	SEGMENT
__real@4@4000e666660000000000 DD 040666666r	; 3.6
CONST	ENDS
;	COMDAT ?p_klask_init@@YAXXZ
_TEXT	SEGMENT
_c$19457 = -64
_x1$19461 = -68
_y1$19464 = -72
_x2$19467 = -76
_y2$19470 = -80
_u1$19473 = -84
_u2$19476 = -88
_k$ = -4
_lxc$ = -8
_xc$ = -12
_lyc$ = -16
_yc$ = -20
_lzc$ = -24
_zc$ = -28
_lvc$ = -32
_vc$ = -36
_zd$ = -40
_vd$ = -44
_lra$ = -48
_ra$ = -52
_r$ = -56
_b$19453 = -60
?p_klask_init@@YAXXZ PROC NEAR				; p_klask_init, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_klask.cpp
; Line 21
	push	ebp
	mov	ebp, esp
	sub	esp, 184				; 000000b8H
	push	ebx
	push	esi
	push	edi
; Line 24
	push	4864					; 00001300H
	push	82					; 00000052H
	call	DWORD PTR __imp__glNewList@8
; Line 26
	push	12345					; 00003039H
	call	_srand
	add	esp, 4
; Line 27
	mov	DWORD PTR _k$[ebp], 0
	jmp	SHORT $L19429
$L19430:
	mov	eax, DWORD PTR _k$[ebp]
	add	eax, 1
	mov	DWORD PTR _k$[ebp], eax
$L19429:
	cmp	DWORD PTR _k$[ebp], 25			; 00000019H
	jge	SHORT $L19431
; Line 28
	call	_rand
	cdq
	mov	ecx, 360				; 00000168H
	idiv	ecx
	mov	DWORD PTR -92+[ebp], edx
	fild	DWORD PTR -92+[ebp]
	mov	edx, DWORD PTR _k$[ebp]
	imul	edx, 12					; 0000000cH
	fstp	DWORD PTR ?klr@@3PAY02MA[edx]
; Line 29
	call	_rand
	cdq
	mov	ecx, 360				; 00000168H
	idiv	ecx
	mov	DWORD PTR -96+[ebp], edx
	fild	DWORD PTR -96+[ebp]
	mov	edx, DWORD PTR _k$[ebp]
	imul	edx, 12					; 0000000cH
	fstp	DWORD PTR ?klr@@3PAY02MA[edx+4]
; Line 30
	call	_rand
	cdq
	mov	ecx, 360				; 00000168H
	idiv	ecx
	mov	DWORD PTR -100+[ebp], edx
	fild	DWORD PTR -100+[ebp]
	mov	edx, DWORD PTR _k$[ebp]
	imul	edx, 12					; 0000000cH
	fstp	DWORD PTR ?klr@@3PAY02MA[edx+8]
; Line 31
	jmp	SHORT $L19430
$L19431:
; Line 35
	mov	DWORD PTR _zd$[ebp], 1042983595		; 3e2aaaabH
; Line 36
	mov	DWORD PTR _vd$[ebp], 1023969417		; 3d088889H
; Line 38
	mov	DWORD PTR _xc$[ebp], 0
; Line 39
	mov	DWORD PTR _yc$[ebp], 0
; Line 40
	mov	eax, DWORD PTR _zd$[ebp]
	mov	DWORD PTR _zc$[ebp], eax
; Line 41
	mov	ecx, DWORD PTR _vd$[ebp]
	mov	DWORD PTR _vc$[ebp], ecx
; Line 43
	mov	DWORD PTR _lra$[ebp], 1050253722	; 3e99999aH
; Line 44
	mov	DWORD PTR _lxc$[ebp], 0
; Line 45
	mov	DWORD PTR _lyc$[ebp], 0
; Line 46
	mov	DWORD PTR _lzc$[ebp], 0
; Line 47
	mov	DWORD PTR _lvc$[ebp], 0
; Line 49
	mov	DWORD PTR _r$[ebp], 0
	jmp	SHORT $L19450
$L19451:
	mov	edx, DWORD PTR _r$[ebp]
	add	edx, 1
	mov	DWORD PTR _r$[ebp], edx
$L19450:
	cmp	DWORD PTR _r$[ebp], 30			; 0000001eH
	jge	$L19452
; Line 51
	fild	DWORD PTR _r$[ebp]
	fdiv	DWORD PTR __real@4@4003f000000000000000
	fdiv	DWORD PTR __real@4@40008000000000000000
	fsubr	DWORD PTR __real@4@3ffe8000000000000000
	fstp	DWORD PTR _b$19453[ebp]
; Line 53
	fild	DWORD PTR _r$[ebp]
	fdiv	DWORD PTR __real@4@40008000000000000000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR _ra$[ebp]
; Line 56
	mov	DWORD PTR _c$19457[ebp], 0
	jmp	SHORT $L19458
$L19459:
	mov	eax, DWORD PTR _c$19457[ebp]
	add	eax, 1
	mov	DWORD PTR _c$19457[ebp], eax
$L19458:
	cmp	DWORD PTR _c$19457[ebp], 7
	jge	$L19460
; Line 58
	fild	DWORD PTR _c$19457[ebp]
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fstp	DWORD PTR _x1$19461[ebp]
; Line 59
	fild	DWORD PTR _c$19457[ebp]
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fstp	DWORD PTR _y1$19464[ebp]
; Line 60
	mov	ecx, DWORD PTR _c$19457[ebp]
	add	ecx, 1
	mov	DWORD PTR -104+[ebp], ecx
	fild	DWORD PTR -104+[ebp]
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fstp	DWORD PTR _x2$19467[ebp]
; Line 61
	mov	edx, DWORD PTR _c$19457[ebp]
	add	edx, 1
	mov	DWORD PTR -108+[ebp], edx
	fild	DWORD PTR -108+[ebp]
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fstp	DWORD PTR _y2$19470[ebp]
; Line 63
	fild	DWORD PTR _c$19457[ebp]
	fdiv	DWORD PTR __real@4@4001e000000000000000
	fstp	DWORD PTR _u1$19473[ebp]
; Line 64
	mov	eax, DWORD PTR _c$19457[ebp]
	add	eax, 1
	mov	DWORD PTR -112+[ebp], eax
	fild	DWORD PTR -112+[ebp]
	fdiv	DWORD PTR __real@4@4001e000000000000000
	fstp	DWORD PTR _u2$19476[ebp]
; Line 70
	mov	ecx, DWORD PTR _b$19453[ebp]
	push	ecx
	mov	edx, DWORD PTR _b$19453[ebp]
	push	edx
	mov	eax, DWORD PTR _b$19453[ebp]
	push	eax
	call	DWORD PTR __imp__glColor3f@12
; Line 72
	mov	ecx, DWORD PTR _vc$[ebp]
	push	ecx
	mov	edx, DWORD PTR _u1$19473[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 73
	fld	DWORD PTR _ra$[ebp]
	fmul	DWORD PTR _y1$19464[ebp]
	fadd	DWORD PTR _yc$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _zc$[ebp]
	push	eax
	fld	DWORD PTR _ra$[ebp]
	fmul	DWORD PTR _x1$19461[ebp]
	fadd	DWORD PTR _xc$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 75
	mov	ecx, DWORD PTR _vc$[ebp]
	push	ecx
	mov	edx, DWORD PTR _u2$19476[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 76
	fld	DWORD PTR _ra$[ebp]
	fmul	DWORD PTR _y2$19470[ebp]
	fadd	DWORD PTR _yc$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _zc$[ebp]
	push	eax
	fld	DWORD PTR _ra$[ebp]
	fmul	DWORD PTR _x2$19467[ebp]
	fadd	DWORD PTR _xc$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 80
	mov	ecx, DWORD PTR _lvc$[ebp]
	push	ecx
	mov	edx, DWORD PTR _u2$19476[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 81
	fld	DWORD PTR _lra$[ebp]
	fmul	DWORD PTR _y2$19470[ebp]
	fadd	DWORD PTR _lyc$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _lzc$[ebp]
	push	eax
	fld	DWORD PTR _lra$[ebp]
	fmul	DWORD PTR _x2$19467[ebp]
	fadd	DWORD PTR _lxc$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 83
	mov	ecx, DWORD PTR _lvc$[ebp]
	push	ecx
	mov	edx, DWORD PTR _u1$19473[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 84
	fld	DWORD PTR _lra$[ebp]
	fmul	DWORD PTR _y1$19464[ebp]
	fadd	DWORD PTR _lyc$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _lzc$[ebp]
	push	eax
	fld	DWORD PTR _lra$[ebp]
	fmul	DWORD PTR _x1$19461[ebp]
	fadd	DWORD PTR _lxc$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 85
	jmp	$L19459
$L19460:
; Line 87
	mov	ecx, DWORD PTR _xc$[ebp]
	mov	DWORD PTR _lxc$[ebp], ecx
; Line 88
	mov	edx, DWORD PTR _yc$[ebp]
	mov	DWORD PTR _lyc$[ebp], edx
; Line 89
	mov	eax, DWORD PTR _zc$[ebp]
	mov	DWORD PTR _lzc$[ebp], eax
; Line 90
	mov	ecx, DWORD PTR _vc$[ebp]
	mov	DWORD PTR _lvc$[ebp], ecx
; Line 91
	mov	edx, DWORD PTR _ra$[ebp]
	mov	DWORD PTR _lra$[ebp], edx
; Line 96
	fild	DWORD PTR _r$[ebp]
	fdiv	DWORD PTR __real@4@400189999a0000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -116+[ebp]
	fmul	DWORD PTR __real@4@3ffacccccd0000000000
	fadd	DWORD PTR _xc$[ebp]
	fstp	DWORD PTR _xc$[ebp]
; Line 97
	fild	DWORD PTR _r$[ebp]
	fdiv	DWORD PTR __real@4@4000e666660000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -120+[ebp]
	fmul	DWORD PTR __real@4@3ffacccccd0000000000
	fadd	DWORD PTR _yc$[ebp]
	fstp	DWORD PTR _yc$[ebp]
; Line 101
	fld	DWORD PTR _zc$[ebp]
	fadd	DWORD PTR _zd$[ebp]
	fstp	DWORD PTR _zc$[ebp]
; Line 102
	fld	DWORD PTR _vc$[ebp]
	fadd	DWORD PTR _vd$[ebp]
	fstp	DWORD PTR _vc$[ebp]
; Line 107
	jmp	$L19451
$L19452:
; Line 108
	call	DWORD PTR __imp__glEndList@0
; Line 110
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_klask_init@@YAXXZ ENDP				; p_klask_init
_TEXT	ENDS
PUBLIC	?p_klask_run@@YAXPAUEVENT@@@Z			; p_klask_run
PUBLIC	__real@4@4001a000000000000000
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@4@4001c000000000000000
PUBLIC	__real@4@40038800000000000000
PUBLIC	__real@4@4002c000000000000000
PUBLIC	__real@4@4002a000000000000000
PUBLIC	__real@4@4003a000000000000000
PUBLIC	__real@4@3ffccccccd0000000000
PUBLIC	__real@4@3ffdcccccd0000000000
PUBLIC	__real@4@3ffe99999a0000000000
PUBLIC	__real@4@3ffeb333330000000000
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glPopMatrix@0:NEAR
EXTRN	__imp__glPushMatrix@0:NEAR
EXTRN	__imp__glRotatef@16:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glTranslatef@12:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__imp__glCallList@4:NEAR
EXTRN	_gluPerspective@32:NEAR
EXTRN	_gluLookAt@72:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glEnd@0:NEAR
;	COMDAT __real@4@4001a000000000000000
; File D:\prj64k\glAss (eventad)\parts\p_klask.cpp
CONST	SEGMENT
__real@4@4001a000000000000000 DD 040a00000r	; 5
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@4@4001c000000000000000
CONST	SEGMENT
__real@4@4001c000000000000000 DD 040c00000r	; 6
CONST	ENDS
;	COMDAT __real@4@40038800000000000000
CONST	SEGMENT
__real@4@40038800000000000000 DD 041880000r	; 17
CONST	ENDS
;	COMDAT __real@4@4002c000000000000000
CONST	SEGMENT
__real@4@4002c000000000000000 DD 041400000r	; 12
CONST	ENDS
;	COMDAT __real@4@4002a000000000000000
CONST	SEGMENT
__real@4@4002a000000000000000 DD 041200000r	; 10
CONST	ENDS
;	COMDAT __real@4@4003a000000000000000
CONST	SEGMENT
__real@4@4003a000000000000000 DD 041a00000r	; 20
CONST	ENDS
;	COMDAT __real@4@3ffccccccd0000000000
CONST	SEGMENT
__real@4@3ffccccccd0000000000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@3ffdcccccd0000000000
CONST	SEGMENT
__real@4@3ffdcccccd0000000000 DD 03ecccccdr	; 0.4
CONST	ENDS
;	COMDAT __real@4@3ffe99999a0000000000
CONST	SEGMENT
__real@4@3ffe99999a0000000000 DD 03f19999ar	; 0.6
CONST	ENDS
;	COMDAT __real@4@3ffeb333330000000000
CONST	SEGMENT
__real@4@3ffeb333330000000000 DD 03f333333r	; 0.7
CONST	ENDS
;	COMDAT ?p_klask_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -4
_t2$ = -8
_br$ = -12
_n$ = -16
?p_klask_run@@YAXPAUEVENT@@@Z PROC NEAR			; p_klask_run, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_klask.cpp
; Line 112
	push	ebp
	mov	ebp, esp
	sub	esp, 120				; 00000078H
	push	ebx
	push	esi
	push	edi
; Line 116
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 117
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 118
	push	-1082130432				; bf800000H
	push	0
	push	0
	call	DWORD PTR __imp__glTranslatef@12
; Line 120
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 121
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 123
	push	2884					; 00000b44H
	call	DWORD PTR __imp__glDisable@4
; Line 126
	push	2929					; 00000b71H
	call	DWORD PTR __imp__glDisable@4
; Line 128
	push	2912					; 00000b60H
	call	DWORD PTR __imp__glDisable@4
; Line 130
	mov	eax, DWORD PTR _e$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _t$[ebp], ecx
; Line 132
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 133
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 135
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 139
	mov	edx, DWORD PTR _t$[ebp]
	mov	DWORD PTR _t2$[ebp], edx
; Line 141
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 143
	push	1083129856				; 408f4000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1079656448				; 405a4000H
	push	0
	call	_gluPerspective@32
; Line 147
	push	0
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	0
	push	0
	fld	DWORD PTR _t2$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -20+[ebp]
	fmul	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t2$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -24+[ebp]
	fmul	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t2$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -28+[ebp]
	fmul	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t2$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -32+[ebp]
	fmul	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t2$[ebp]
	fdiv	DWORD PTR __real@4@4001e000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -36+[ebp]
	fmul	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t2$[ebp]
	fdiv	DWORD PTR __real@4@4001c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -40+[ebp]
	fmul	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72
; Line 149
	push	111					; 0000006fH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 150
	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12
; Line 152
	mov	eax, DWORD PTR _e$[ebp]
	fld	DWORD PTR __real@4@3ffe8000000000000000
	fmul	DWORD PTR [eax+20]
	fstp	DWORD PTR _br$[ebp]
; Line 154
	mov	DWORD PTR _n$[ebp], 0
	jmp	SHORT $L19496
$L19497:
	mov	ecx, DWORD PTR _n$[ebp]
	add	ecx, 1
	mov	DWORD PTR _n$[ebp], ecx
$L19496:
	cmp	DWORD PTR _n$[ebp], 25			; 00000019H
	jge	$L19498
; Line 155
	call	DWORD PTR __imp__glPushMatrix@0
; Line 157
	push	0
	push	0
	push	1065353216				; 3f800000H
	fld	DWORD PTR _t2$[ebp]
	fmul	DWORD PTR __real@4@40038800000000000000
	mov	edx, DWORD PTR _n$[ebp]
	imul	edx, 12					; 0000000cH
	fadd	DWORD PTR ?klr@@3PAY02MA[edx]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 158
	push	0
	push	1065353216				; 3f800000H
	push	0
	fld	DWORD PTR _t2$[ebp]
	fmul	DWORD PTR __real@4@4002c000000000000000
	mov	eax, DWORD PTR _n$[ebp]
	imul	eax, 12					; 0000000cH
	fsub	DWORD PTR ?klr@@3PAY02MA[eax+4]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 159
	push	1065353216				; 3f800000H
	push	0
	push	0
	fld	DWORD PTR _t2$[ebp]
	fmul	DWORD PTR __real@4@4002a000000000000000
	mov	ecx, DWORD PTR _n$[ebp]
	imul	ecx, 12					; 0000000cH
	fadd	DWORD PTR ?klr@@3PAY02MA[ecx+8]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 160
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	0
	fild	DWORD PTR _n$[ebp]
	fadd	DWORD PTR _t2$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -44+[ebp]
	fmul	DWORD PTR __real@4@4003a000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 161
	push	1065353216				; 3f800000H
	push	0
	push	1065353216				; 3f800000H
	mov	edx, DWORD PTR _n$[ebp]
	imul	edx, 3
	mov	DWORD PTR -48+[ebp], edx
	fild	DWORD PTR -48+[ebp]
	fsubr	DWORD PTR _t2$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -52+[ebp]
	fmul	DWORD PTR __real@4@4003a000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16
; Line 163
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 164
	mov	eax, DWORD PTR _n$[ebp]
	cdq
	mov	ecx, 3
	idiv	ecx
	mov	DWORD PTR -56+[ebp], edx
	cmp	DWORD PTR -56+[ebp], 0
	je	SHORT $L19505
	cmp	DWORD PTR -56+[ebp], 1
	je	SHORT $L19506
	cmp	DWORD PTR -56+[ebp], 2
	je	SHORT $L19507
	jmp	$L19502
$L19505:
; Line 166
	fld	DWORD PTR __real@4@3ffccccccd0000000000
	fmul	DWORD PTR _br$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ffdcccccd0000000000
	fmul	DWORD PTR _br$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ffe99999a0000000000
	fmul	DWORD PTR _br$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12
; Line 167
	jmp	SHORT $L19502
$L19506:
; Line 169
	fld	DWORD PTR __real@4@3ffdcccccd0000000000
	fmul	DWORD PTR _br$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ffeb333330000000000
	fmul	DWORD PTR _br$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ffd99999a0000000000
	fmul	DWORD PTR _br$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12
; Line 170
	jmp	SHORT $L19502
$L19507:
; Line 172
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
$L19502:
; Line 175
	push	82					; 00000052H
	call	DWORD PTR __imp__glCallList@4
; Line 176
	call	DWORD PTR __imp__glEnd@0
; Line 177
	call	DWORD PTR __imp__glPopMatrix@0
; Line 178
	jmp	$L19497
$L19498:
; Line 180
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_klask_run@@YAXPAUEVENT@@@Z ENDP			; p_klask_run
_TEXT	ENDS
END
