	TITLE	D:\prj64k\glAss (eventad)\parts\p_twister.cpp
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
;	COMDAT ?pt_funktionen_f@@YAMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?ptffff@@YAMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pt_draw@@YAXM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_twister_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?pt_x@@3PAY04MA					; pt_x
PUBLIC	?pt_b@@3PAY04MA					; pt_b
PUBLIC	?pt_c@@3PAY02MA					; pt_c
_BSS	SEGMENT
?pt_x@@3PAY04MA DD 022bH DUP (?)			; pt_x
?pt_b@@3PAY04MA DD 022bH DUP (?)			; pt_b
?pt_c@@3PAY02MA DD 0fH DUP (?)				; pt_c
_BSS	ENDS
PUBLIC	?pt_funktionen_f@@YAMMM@Z			; pt_funktionen_f
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@4@4004a800000000000000
PUBLIC	__real@4@40048000000000000000
PUBLIC	__real@4@4000c000000000000000
EXTRN	_sin:NEAR
EXTRN	__fltused:NEAR
;	COMDAT __real@4@3fff8000000000000000
; File d:\prj64k\glass (eventad)\parts\p_twister.cpp
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@4@4004a800000000000000
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
;	COMDAT ?pt_funktionen_f@@YAMMM@Z
_TEXT	SEGMENT
_t$ = 8
_offset$ = 12
_f$ = -4
?pt_funktionen_f@@YAMMM@Z PROC NEAR			; pt_funktionen_f, COMDAT
; File d:\prj64k\glass (eventad)\parts\p_twister.cpp
; Line 11
	push	ebp
	mov	ebp, esp
	sub	esp, 76					; 0000004cH
	push	ebx
	push	esi
	push	edi
; Line 13
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _f$[ebp]
; Line 14
	fld	DWORD PTR _offset$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	fsubr	DWORD PTR _f$[ebp]
	fstp	DWORD PTR _f$[ebp]
; Line 15
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
; Line 17
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
; Line 22
	fmul	DWORD PTR __real@4@4000c000000000000000
	fst	DWORD PTR _f$[ebp]
; Line 24
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?pt_funktionen_f@@YAMMM@Z ENDP				; pt_funktionen_f
_TEXT	ENDS
PUBLIC	?ptffff@@YAMM@Z					; ptffff
PUBLIC	__real@4@3fffc000000000000000
PUBLIC	__real@4@4000c90fdb0000000000
PUBLIC	__real@4@c000a000000000000000
PUBLIC	__real@4@40028000000000000000
PUBLIC	__real@4@4002a000000000000000
PUBLIC	__real@4@bffe8000000000000000
;	COMDAT __real@4@3fffc000000000000000
; File d:\prj64k\glass (eventad)\parts\p_twister.cpp
CONST	SEGMENT
__real@4@3fffc000000000000000 DD 03fc00000r	; 1.5
CONST	ENDS
;	COMDAT __real@4@4000c90fdb0000000000
CONST	SEGMENT
__real@4@4000c90fdb0000000000 DD 040490fdbr	; 3.14159
CONST	ENDS
;	COMDAT __real@4@c000a000000000000000
CONST	SEGMENT
__real@4@c000a000000000000000 DD 0c0200000r	; -2.5
CONST	ENDS
;	COMDAT __real@4@40028000000000000000
CONST	SEGMENT
__real@4@40028000000000000000 DD 041000000r	; 8
CONST	ENDS
;	COMDAT __real@4@4002a000000000000000
CONST	SEGMENT
__real@4@4002a000000000000000 DD 041200000r	; 10
CONST	ENDS
;	COMDAT __real@4@bffe8000000000000000
CONST	SEGMENT
__real@4@bffe8000000000000000 DD 0bf000000r	; -0.5
CONST	ENDS
;	COMDAT ?ptffff@@YAMM@Z
_TEXT	SEGMENT
_time$ = 8
?ptffff@@YAMM@Z PROC NEAR				; ptffff, COMDAT
; File d:\prj64k\glass (eventad)\parts\p_twister.cpp
; Line 26
	push	ebp
	mov	ebp, esp
	sub	esp, 72					; 00000048H
	push	ebx
	push	esi
	push	edi
; Line 27
	fld	DWORD PTR _time$[ebp]
	fcomp	DWORD PTR __real@4@3fffc000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L19116
; Line 28
	fld	DWORD PTR _time$[ebp]
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -4+[ebp]
	fadd	ST(0), ST(0)
	fadd	DWORD PTR __real@4@c000a000000000000000
	jmp	SHORT $L19115
$L19116:
; Line 32
	fld	DWORD PTR _time$[ebp]
	fcomp	DWORD PTR __real@4@40028000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L19118
; Line 33
	fld	DWORD PTR __real@4@4002a000000000000000
	fsub	DWORD PTR _time$[ebp]
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@40018000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -8+[ebp]
	fadd	ST(0), ST(0)
	fadd	DWORD PTR __real@4@c000a000000000000000
	jmp	SHORT $L19115
$L19118:
; Line 40
	fld	DWORD PTR __real@4@bffe8000000000000000
$L19115:
; Line 41
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?ptffff@@YAMM@Z ENDP					; ptffff
_TEXT	ENDS
PUBLIC	?pt_draw@@YAXM@Z				; pt_draw
PUBLIC	__real@4@40059600000000000000
PUBLIC	__real@4@3ffc99999a0000000000
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@4000a000000000000000
PUBLIC	__real@4@3ffdcccccd0000000000
PUBLIC	__real@4@3ffeb333330000000000
PUBLIC	__real@4@4004c800000000000000
PUBLIC	__real@4@4005c800000000000000
PUBLIC	__real@4@3ffd8000000000000000
PUBLIC	__real@4@3fff99999a0000000000
PUBLIC	__real@4@3ffccccccd0000000000
EXTRN	_cos:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glEnd@0:NEAR
;	COMDAT __real@4@40059600000000000000
; File d:\prj64k\glass (eventad)\parts\p_twister.cpp
CONST	SEGMENT
__real@4@40059600000000000000 DD 042960000r	; 75
CONST	ENDS
;	COMDAT __real@4@3ffc99999a0000000000
CONST	SEGMENT
__real@4@3ffc99999a0000000000 DD 03e19999ar	; 0.15
CONST	ENDS
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@4000a000000000000000
CONST	SEGMENT
__real@4@4000a000000000000000 DD 040200000r	; 2.5
CONST	ENDS
;	COMDAT __real@4@3ffdcccccd0000000000
CONST	SEGMENT
__real@4@3ffdcccccd0000000000 DD 03ecccccdr	; 0.4
CONST	ENDS
;	COMDAT __real@4@3ffeb333330000000000
CONST	SEGMENT
__real@4@3ffeb333330000000000 DD 03f333333r	; 0.7
CONST	ENDS
;	COMDAT __real@4@4004c800000000000000
CONST	SEGMENT
__real@4@4004c800000000000000 DD 042480000r	; 50
CONST	ENDS
;	COMDAT __real@4@4005c800000000000000
CONST	SEGMENT
__real@4@4005c800000000000000 DD 042c80000r	; 100
CONST	ENDS
;	COMDAT __real@4@3ffd8000000000000000
CONST	SEGMENT
__real@4@3ffd8000000000000000 DD 03e800000r	; 0.25
CONST	ENDS
;	COMDAT __real@4@3fff99999a0000000000
CONST	SEGMENT
__real@4@3fff99999a0000000000 DD 03f99999ar	; 1.2
CONST	ENDS
;	COMDAT __real@4@3ffccccccd0000000000
CONST	SEGMENT
__real@4@3ffccccccd0000000000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT ?pt_draw@@YAXM@Z
_TEXT	SEGMENT
_t$ = 8
_i$ = -4
_j$ = -8
_a$19128 = -12
_r$19130 = -16
_a2$19135 = -20
_y1$19143 = -24
_y2$19145 = -28
_xd1$19147 = -32
_xd2$19149 = -36
_x1$19154 = -40
_x2$19155 = -44
_x3$19156 = -48
_x4$19157 = -52
_j2$19158 = -56
_v1$19159 = -60
_v2$19161 = -64
_b1$19163 = -68
_u1$19165 = -72
_u2$19167 = -76
_y1$19172 = -80
_y2$19174 = -84
_xd1$19176 = -88
_xd2$19178 = -92
_x1$19183 = -96
_x2$19184 = -100
_x3$19185 = -104
_x4$19186 = -108
_j2$19187 = -112
_v1$19188 = -116
_v2$19190 = -120
_b1$19192 = -124
_u1$19194 = -128
_u2$19196 = -132
?pt_draw@@YAXM@Z PROC NEAR				; pt_draw, COMDAT
; File d:\prj64k\glass (eventad)\parts\p_twister.cpp
; Line 43
	push	ebp
	mov	ebp, esp
	sub	esp, 248				; 000000f8H
	push	ebx
	push	esi
	push	edi
; Line 47
	mov	DWORD PTR ?pt_c@@3PAY02MA, 1060320051	; 3f333333H
	mov	DWORD PTR ?pt_c@@3PAY02MA+4, 1060320051	; 3f333333H
	mov	DWORD PTR ?pt_c@@3PAY02MA+8, 1056964608	; 3f000000H
; Line 48
	mov	DWORD PTR ?pt_c@@3PAY02MA+12, 1056964608 ; 3f000000H
	mov	DWORD PTR ?pt_c@@3PAY02MA+16, 0
	mov	DWORD PTR ?pt_c@@3PAY02MA+20, 1061997773 ; 3f4ccccdH
; Line 49
	mov	DWORD PTR ?pt_c@@3PAY02MA+24, 1061997773 ; 3f4ccccdH
	mov	DWORD PTR ?pt_c@@3PAY02MA+28, 1061997773 ; 3f4ccccdH
	mov	DWORD PTR ?pt_c@@3PAY02MA+32, 1056964608 ; 3f000000H
; Line 50
	mov	DWORD PTR ?pt_c@@3PAY02MA+36, 0
	mov	DWORD PTR ?pt_c@@3PAY02MA+40, 1056964608 ; 3f000000H
	mov	DWORD PTR ?pt_c@@3PAY02MA+44, 1061997773 ; 3f4ccccdH
; Line 51
	mov	DWORD PTR ?pt_c@@3PAY02MA+48, 1060320051 ; 3f333333H
	mov	DWORD PTR ?pt_c@@3PAY02MA+52, 1056964608 ; 3f000000H
	mov	DWORD PTR ?pt_c@@3PAY02MA+56, 1058642330 ; 3f19999aH
; Line 53
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19125
$L19126:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$L19125:
	cmp	DWORD PTR _i$[ebp], 110			; 0000006eH
	jge	$L19127
; Line 54
	fild	DWORD PTR _i$[ebp]
	fdiv	DWORD PTR __real@4@40059600000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _t$[ebp]
	push	ecx
	call	?pt_funktionen_f@@YAMMM@Z		; pt_funktionen_f
	add	esp, 8
	fstp	DWORD PTR _a$19128[ebp]
; Line 56
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000c000000000000000
	fsubr	DWORD PTR _a$19128[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -136+[ebp]
	fmul	DWORD PTR __real@4@3ffc99999a0000000000
	fadd	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR _r$19130[ebp]
; Line 58
	mov	DWORD PTR _j$[ebp], 0
	jmp	SHORT $L19132
$L19133:
	mov	edx, DWORD PTR _j$[ebp]
	add	edx, 1
	mov	DWORD PTR _j$[ebp], edx
$L19132:
	cmp	DWORD PTR _j$[ebp], 5
	jge	SHORT $L19134
; Line 59
	fild	DWORD PTR _j$[ebp]
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@4000a000000000000000
	fadd	DWORD PTR _a$19128[ebp]
	fst	DWORD PTR _a2$19135[ebp]
; Line 60
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -140+[ebp]
	fmul	DWORD PTR _r$19130[ebp]
	mov	eax, DWORD PTR _i$[ebp]
	imul	eax, 20					; 00000014H
	mov	ecx, DWORD PTR _j$[ebp]
	fstp	DWORD PTR ?pt_x@@3PAY04MA[eax+ecx*4]
; Line 61
	fld	DWORD PTR _a2$19135[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -144+[ebp]
	fmul	DWORD PTR __real@4@3ffdcccccd0000000000
	fadd	DWORD PTR __real@4@3ffeb333330000000000
	mov	edx, DWORD PTR _i$[ebp]
	imul	edx, 20					; 00000014H
	mov	eax, DWORD PTR _j$[ebp]
	fstp	DWORD PTR ?pt_b@@3PAY04MA[edx+eax*4]
; Line 62
	jmp	SHORT $L19133
$L19134:
; Line 63
	jmp	$L19126
$L19127:
; Line 65
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glDisable@4
; Line 66
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 67
	push	769					; 00000301H
	push	0
	call	DWORD PTR __imp__glBlendFunc@8
; Line 68
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 70
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19140
$L19141:
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$[ebp], ecx
$L19140:
	cmp	DWORD PTR _i$[ebp], 100			; 00000064H
	jge	$L19142
; Line 72
	mov	edx, DWORD PTR _i$[ebp]
	sub	edx, 50					; 00000032H
	mov	DWORD PTR -148+[ebp], edx
	fild	DWORD PTR -148+[ebp]
	fdiv	DWORD PTR __real@4@4004c800000000000000
	fstp	DWORD PTR _y1$19143[ebp]
; Line 73
	mov	eax, DWORD PTR _i$[ebp]
	sub	eax, 49					; 00000031H
	mov	DWORD PTR -152+[ebp], eax
	fild	DWORD PTR -152+[ebp]
	fdiv	DWORD PTR __real@4@4004c800000000000000
	fstp	DWORD PTR _y2$19145[ebp]
; Line 75
	fild	DWORD PTR _i$[ebp]
	fdiv	DWORD PTR __real@4@4005c800000000000000
	fsubr	DWORD PTR _t$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	?ptffff@@YAMM@Z				; ptffff
	add	esp, 4
	fstp	DWORD PTR _xd1$19147[ebp]
; Line 76
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	mov	DWORD PTR -156+[ebp], ecx
	fild	DWORD PTR -156+[ebp]
	fdiv	DWORD PTR __real@4@4005c800000000000000
	fsubr	DWORD PTR _t$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	?ptffff@@YAMM@Z				; ptffff
	add	esp, 4
	fstp	DWORD PTR _xd2$19149[ebp]
; Line 78
	mov	DWORD PTR _j$[ebp], 0
	jmp	SHORT $L19151
$L19152:
	mov	edx, DWORD PTR _j$[ebp]
	add	edx, 1
	mov	DWORD PTR _j$[ebp], edx
$L19151:
	cmp	DWORD PTR _j$[ebp], 5
	jge	$L19153
; Line 80
	mov	eax, DWORD PTR _i$[ebp]
	imul	eax, 20					; 00000014H
	mov	ecx, DWORD PTR _j$[ebp]
	mov	edx, DWORD PTR ?pt_x@@3PAY04MA[eax+ecx*4]
	mov	DWORD PTR _x1$19154[ebp], edx
; Line 81
	mov	ecx, DWORD PTR _i$[ebp]
	imul	ecx, 20					; 00000014H
	mov	eax, DWORD PTR _j$[ebp]
	add	eax, 1
	cdq
	mov	esi, 5
	idiv	esi
	mov	edx, DWORD PTR ?pt_x@@3PAY04MA[ecx+edx*4]
	mov	DWORD PTR _x2$19155[ebp], edx
; Line 82
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	imul	ecx, 20					; 00000014H
	mov	eax, DWORD PTR _j$[ebp]
	add	eax, 1
	cdq
	mov	esi, 5
	idiv	esi
	mov	edx, DWORD PTR ?pt_x@@3PAY04MA[ecx+edx*4]
	mov	DWORD PTR _x3$19156[ebp], edx
; Line 83
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	imul	eax, 20					; 00000014H
	mov	ecx, DWORD PTR _j$[ebp]
	mov	edx, DWORD PTR ?pt_x@@3PAY04MA[eax+ecx*4]
	mov	DWORD PTR _x4$19157[ebp], edx
; Line 85
	mov	eax, DWORD PTR _j$[ebp]
	mov	DWORD PTR _j2$19158[ebp], eax
; Line 87
	fild	DWORD PTR _i$[ebp]
	fdiv	DWORD PTR __real@4@4005c800000000000000
	fsubr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _v1$19159[ebp]
; Line 88
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	mov	DWORD PTR -160+[ebp], ecx
	fild	DWORD PTR -160+[ebp]
	fdiv	DWORD PTR __real@4@4005c800000000000000
	fsubr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _v2$19161[ebp]
; Line 90
	mov	edx, DWORD PTR _i$[ebp]
	imul	edx, 20					; 00000014H
	mov	eax, DWORD PTR _j$[ebp]
	mov	ecx, DWORD PTR ?pt_b@@3PAY04MA[edx+eax*4]
	mov	DWORD PTR _b1$19163[ebp], ecx
; Line 93
	fld	DWORD PTR _x2$19155[ebp]
	fcomp	DWORD PTR _x1$19154[ebp]
	fnstsw	ax
	test	ah, 65					; 00000041H
	je	$L19164
; Line 99
	fild	DWORD PTR _j2$19158[ebp]
	fmul	DWORD PTR __real@4@3ffd8000000000000000
	fstp	DWORD PTR _u1$19165[ebp]
; Line 100
	mov	edx, DWORD PTR _j2$19158[ebp]
	add	edx, 1
	mov	DWORD PTR -164+[ebp], edx
	fild	DWORD PTR -164+[ebp]
	fmul	DWORD PTR __real@4@3ffd8000000000000000
	fstp	DWORD PTR _u2$19167[ebp]
; Line 103
	push	1048911544				; 3e851eb8H
	push	1049582633				; 3e8f5c29H
	push	1050253722				; 3e99999aH
	call	DWORD PTR __imp__glColor3f@12
; Line 105
	push	0
	mov	eax, DWORD PTR _y1$19143[ebp]
	push	eax
	fld	DWORD PTR _x1$19154[ebp]
	fmul	DWORD PTR __real@4@3fff99999a0000000000
	fadd	DWORD PTR _xd1$19147[ebp]
	fadd	DWORD PTR __real@4@3ffccccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 106
	push	0
	mov	ecx, DWORD PTR _y1$19143[ebp]
	push	ecx
	fld	DWORD PTR _x2$19155[ebp]
	fmul	DWORD PTR __real@4@3fff99999a0000000000
	fadd	DWORD PTR _xd1$19147[ebp]
	fadd	DWORD PTR __real@4@3ffccccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 107
	push	0
	mov	edx, DWORD PTR _y2$19145[ebp]
	push	edx
	fld	DWORD PTR _x3$19156[ebp]
	fmul	DWORD PTR __real@4@3fff99999a0000000000
	fadd	DWORD PTR _xd2$19149[ebp]
	fadd	DWORD PTR __real@4@3ffccccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 108
	push	0
	mov	eax, DWORD PTR _y2$19145[ebp]
	push	eax
	fld	DWORD PTR _x4$19157[ebp]
	fmul	DWORD PTR __real@4@3fff99999a0000000000
	fadd	DWORD PTR _xd2$19149[ebp]
	fadd	DWORD PTR __real@4@3ffccccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
$L19164:
; Line 112
	jmp	$L19152
$L19153:
; Line 114
	jmp	$L19141
$L19142:
; Line 116
	call	DWORD PTR __imp__glEnd@0
; Line 118
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glDisable@4
; Line 119
	push	117					; 00000075H
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 120
	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12
; Line 122
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 124
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19169
$L19170:
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$[ebp], ecx
$L19169:
	cmp	DWORD PTR _i$[ebp], 100			; 00000064H
	jge	$L19171
; Line 126
	mov	edx, DWORD PTR _i$[ebp]
	sub	edx, 50					; 00000032H
	mov	DWORD PTR -168+[ebp], edx
	fild	DWORD PTR -168+[ebp]
	fdiv	DWORD PTR __real@4@4004c800000000000000
	fstp	DWORD PTR _y1$19172[ebp]
; Line 127
	mov	eax, DWORD PTR _i$[ebp]
	sub	eax, 49					; 00000031H
	mov	DWORD PTR -172+[ebp], eax
	fild	DWORD PTR -172+[ebp]
	fdiv	DWORD PTR __real@4@4004c800000000000000
	fstp	DWORD PTR _y2$19174[ebp]
; Line 129
	fild	DWORD PTR _i$[ebp]
	fdiv	DWORD PTR __real@4@4005c800000000000000
	fsubr	DWORD PTR _t$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	?ptffff@@YAMM@Z				; ptffff
	add	esp, 4
	fstp	DWORD PTR _xd1$19176[ebp]
; Line 130
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	mov	DWORD PTR -176+[ebp], ecx
	fild	DWORD PTR -176+[ebp]
	fdiv	DWORD PTR __real@4@4005c800000000000000
	fsubr	DWORD PTR _t$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	?ptffff@@YAMM@Z				; ptffff
	add	esp, 4
	fstp	DWORD PTR _xd2$19178[ebp]
; Line 132
	mov	DWORD PTR _j$[ebp], 0
	jmp	SHORT $L19180
$L19181:
	mov	edx, DWORD PTR _j$[ebp]
	add	edx, 1
	mov	DWORD PTR _j$[ebp], edx
$L19180:
	cmp	DWORD PTR _j$[ebp], 5
	jge	$L19182
; Line 134
	mov	eax, DWORD PTR _i$[ebp]
	imul	eax, 20					; 00000014H
	mov	ecx, DWORD PTR _j$[ebp]
	mov	edx, DWORD PTR ?pt_x@@3PAY04MA[eax+ecx*4]
	mov	DWORD PTR _x1$19183[ebp], edx
; Line 135
	mov	ecx, DWORD PTR _i$[ebp]
	imul	ecx, 20					; 00000014H
	mov	eax, DWORD PTR _j$[ebp]
	add	eax, 1
	cdq
	mov	esi, 5
	idiv	esi
	mov	edx, DWORD PTR ?pt_x@@3PAY04MA[ecx+edx*4]
	mov	DWORD PTR _x2$19184[ebp], edx
; Line 136
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	imul	ecx, 20					; 00000014H
	mov	eax, DWORD PTR _j$[ebp]
	add	eax, 1
	cdq
	mov	esi, 5
	idiv	esi
	mov	edx, DWORD PTR ?pt_x@@3PAY04MA[ecx+edx*4]
	mov	DWORD PTR _x3$19185[ebp], edx
; Line 137
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	imul	eax, 20					; 00000014H
	mov	ecx, DWORD PTR _j$[ebp]
	mov	edx, DWORD PTR ?pt_x@@3PAY04MA[eax+ecx*4]
	mov	DWORD PTR _x4$19186[ebp], edx
; Line 139
	mov	eax, DWORD PTR _j$[ebp]
	mov	DWORD PTR _j2$19187[ebp], eax
; Line 141
	fild	DWORD PTR _i$[ebp]
	fdiv	DWORD PTR __real@4@4005c800000000000000
	fsubr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _v1$19188[ebp]
; Line 142
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	mov	DWORD PTR -180+[ebp], ecx
	fild	DWORD PTR -180+[ebp]
	fdiv	DWORD PTR __real@4@4005c800000000000000
	fsubr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _v2$19190[ebp]
; Line 144
	mov	edx, DWORD PTR _i$[ebp]
	imul	edx, 20					; 00000014H
	mov	eax, DWORD PTR _j$[ebp]
	mov	ecx, DWORD PTR ?pt_b@@3PAY04MA[edx+eax*4]
	mov	DWORD PTR _b1$19192[ebp], ecx
; Line 147
	fld	DWORD PTR _x2$19184[ebp]
	fcomp	DWORD PTR _x1$19183[ebp]
	fnstsw	ax
	test	ah, 65					; 00000041H
	je	$L19193
; Line 153
	fild	DWORD PTR _j2$19187[ebp]
	fmul	DWORD PTR __real@4@3ffd8000000000000000
	fstp	DWORD PTR _u1$19194[ebp]
; Line 154
	mov	edx, DWORD PTR _j2$19187[ebp]
	add	edx, 1
	mov	DWORD PTR -184+[ebp], edx
	fild	DWORD PTR -184+[ebp]
	fmul	DWORD PTR __real@4@3ffd8000000000000000
	fstp	DWORD PTR _u2$19196[ebp]
; Line 156
	mov	DWORD PTR _u1$19194[ebp], 0
; Line 157
	mov	DWORD PTR _u2$19196[ebp], 1065353216	; 3f800000H
; Line 160
	mov	eax, DWORD PTR _j$[ebp]
	imul	eax, 12					; 0000000cH
	mov	ecx, DWORD PTR ?pt_c@@3PAY02MA[eax+8]
	push	ecx
	mov	edx, DWORD PTR _j$[ebp]
	imul	edx, 12					; 0000000cH
	mov	eax, DWORD PTR ?pt_c@@3PAY02MA[edx+4]
	push	eax
	mov	ecx, DWORD PTR _j$[ebp]
	imul	ecx, 12					; 0000000cH
	mov	edx, DWORD PTR ?pt_c@@3PAY02MA[ecx]
	push	edx
	call	DWORD PTR __imp__glColor3f@12
; Line 162
	mov	eax, DWORD PTR _v1$19188[ebp]
	push	eax
	mov	ecx, DWORD PTR _u1$19194[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 163
	push	0
	mov	edx, DWORD PTR _y1$19172[ebp]
	push	edx
	fld	DWORD PTR _x1$19183[ebp]
	fadd	DWORD PTR _xd1$19176[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 165
	mov	eax, DWORD PTR _v1$19188[ebp]
	push	eax
	mov	ecx, DWORD PTR _u2$19196[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 166
	push	0
	mov	edx, DWORD PTR _y1$19172[ebp]
	push	edx
	fld	DWORD PTR _x2$19184[ebp]
	fadd	DWORD PTR _xd1$19176[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 168
	mov	eax, DWORD PTR _v2$19190[ebp]
	push	eax
	mov	ecx, DWORD PTR _u2$19196[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 169
	push	0
	mov	edx, DWORD PTR _y2$19174[ebp]
	push	edx
	fld	DWORD PTR _x3$19185[ebp]
	fadd	DWORD PTR _xd2$19178[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 171
	mov	eax, DWORD PTR _v2$19190[ebp]
	push	eax
	mov	ecx, DWORD PTR _u1$19194[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 172
	push	0
	mov	edx, DWORD PTR _y2$19174[ebp]
	push	edx
	fld	DWORD PTR _x4$19186[ebp]
	fadd	DWORD PTR _xd2$19178[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
$L19193:
; Line 176
	jmp	$L19181
$L19182:
; Line 178
	jmp	$L19170
$L19171:
; Line 180
	call	DWORD PTR __imp__glEnd@0
; Line 182
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?pt_draw@@YAXM@Z ENDP					; pt_draw
_TEXT	ENDS
PUBLIC	?p_twister_run@@YAXPAUEVENT@@@Z			; p_twister_run
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glTranslatef@12:NEAR
EXTRN	__imp__glClearColor@16:NEAR
EXTRN	__imp__glClearDepth@8:NEAR
;	COMDAT ?p_twister_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -4
?p_twister_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_twister_run, COMDAT
; Line 217
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 221
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 222
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 223
	push	-1082130432				; bf800000H
	push	0
	push	0
	call	DWORD PTR __imp__glTranslatef@12
; Line 225
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 226
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 228
	push	2884					; 00000b44H
	call	DWORD PTR __imp__glDisable@4
; Line 230
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glClearColor@16
; Line 232
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glDisable@4
; Line 233
	push	1077149696				; 40340000H
	push	0
	call	DWORD PTR __imp__glClearDepth@8
; Line 234
	push	2929					; 00000b71H
	call	DWORD PTR __imp__glDisable@4
; Line 236
	push	2912					; 00000b60H
	call	DWORD PTR __imp__glDisable@4
; Line 240
	mov	eax, DWORD PTR _e$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _t$[ebp], ecx
; Line 244
	mov	edx, DWORD PTR _t$[ebp]
	push	edx
	call	?pt_draw@@YAXM@Z			; pt_draw
	add	esp, 4
; Line 246
	push	2912					; 00000b60H
	call	DWORD PTR __imp__glDisable@4
; Line 248
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_twister_run@@YAXPAUEVENT@@@Z ENDP			; p_twister_run
_TEXT	ENDS
END
