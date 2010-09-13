	TITLE	D:\prj64k\glAss (eventad)\parts\p_name.cpp
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
;	COMDAT ??_C@_0M@ELBL@illuminator?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_05EMO@h?9ecs?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_05BKGA@bajs1?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_05OFNJ@bajs2?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT _IsEqualGUID
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _==
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_name_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_title_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?p_name_name@@3PAPADA				; p_name_name
PUBLIC	??_C@_0M@ELBL@illuminator?$AA@			; `string'
PUBLIC	??_C@_05EMO@h?9ecs?$AA@				; `string'
PUBLIC	??_C@_05BKGA@bajs1?$AA@				; `string'
PUBLIC	??_C@_05OFNJ@bajs2?$AA@				; `string'
_DATA	SEGMENT
?p_name_name@@3PAPADA DD FLAT:??_C@_0M@ELBL@illuminator?$AA@ ; p_name_name
	DD	FLAT:??_C@_05EMO@h?9ecs?$AA@
	DD	FLAT:??_C@_05BKGA@bajs1?$AA@
	DD	FLAT:??_C@_05OFNJ@bajs2?$AA@
_DATA	ENDS
;	COMDAT ??_C@_0M@ELBL@illuminator?$AA@
CONST	SEGMENT
??_C@_0M@ELBL@illuminator?$AA@ DB 'illuminator', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_05EMO@h?9ecs?$AA@
CONST	SEGMENT
??_C@_05EMO@h?9ecs?$AA@ DB 'h-ecs', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_05BKGA@bajs1?$AA@
CONST	SEGMENT
??_C@_05BKGA@bajs1?$AA@ DB 'bajs1', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_05OFNJ@bajs2?$AA@
CONST	SEGMENT
??_C@_05OFNJ@bajs2?$AA@ DB 'bajs2', 00H			; `string'
CONST	ENDS
PUBLIC	__real@4@40008000000000000000
PUBLIC	__real@4@3ffbcccccd0000000000
PUBLIC	__real@4@3ffe8000000000000000
PUBLIC	__real@4@4001a000000000000000
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@8@3ffccccccd0000000000
PUBLIC	__real@8@3fff8000000000000000
PUBLIC	__real@4@4000c000000000000000
PUBLIC	__real@8@4002a000000000000000
PUBLIC	__real@4@4005c800000000000000
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@3ff8a3d70a0000000000
PUBLIC	__real@4@3ffdfae1480000000000
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	?p_name_run@@YAXPAUEVENT@@@Z			; p_name_run
EXTRN	__fltused:NEAR
EXTRN	_cos:NEAR
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	_sin:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glOrtho@48:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	?glaQuadR@@YAXMMMMMMMMMM@Z:NEAR			; glaQuadR
EXTRN	__imp__glTexParameteri@12:NEAR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glEnd@0:NEAR
;	COMDAT __real@4@40008000000000000000
; File d:\prj64k\glass (eventad)\parts\p_name.cpp
CONST	SEGMENT
__real@4@40008000000000000000 DD 040000000r	; 2
CONST	ENDS
;	COMDAT __real@4@3ffbcccccd0000000000
CONST	SEGMENT
__real@4@3ffbcccccd0000000000 DD 03dcccccdr	; 0.1
CONST	ENDS
;	COMDAT __real@4@3ffe8000000000000000
CONST	SEGMENT
__real@4@3ffe8000000000000000 DD 03f000000r	; 0.5
CONST	ENDS
;	COMDAT __real@4@4001a000000000000000
CONST	SEGMENT
__real@4@4001a000000000000000 DD 040a00000r	; 5
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@8@3ffccccccd0000000000
CONST	SEGMENT
__real@8@3ffccccccd0000000000 DQ 03fc99999a0000000r ; 0.2
CONST	ENDS
;	COMDAT __real@8@3fff8000000000000000
CONST	SEGMENT
__real@8@3fff8000000000000000 DQ 03ff0000000000000r ; 1
CONST	ENDS
;	COMDAT __real@4@4000c000000000000000
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT __real@8@4002a000000000000000
CONST	SEGMENT
__real@8@4002a000000000000000 DQ 04024000000000000r ; 10
CONST	ENDS
;	COMDAT __real@4@4005c800000000000000
CONST	SEGMENT
__real@4@4005c800000000000000 DD 042c80000r	; 100
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@3ff8a3d70a0000000000
CONST	SEGMENT
__real@4@3ff8a3d70a0000000000 DD 03c23d70ar	; 0.01
CONST	ENDS
;	COMDAT __real@4@3ffdfae1480000000000
CONST	SEGMENT
__real@4@3ffdfae1480000000000 DD 03efae148r	; 0.49
CONST	ENDS
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT ?p_name_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -4
_v$ = -8
_i$ = -12
_t2$19439 = -16
_xs$19440 = -20
_ys$19441 = -24
_r$19442 = -28
_b$19443 = -32
_s$19444 = -36
?p_name_run@@YAXPAUEVENT@@@Z PROC NEAR			; p_name_run, COMDAT
; File d:\prj64k\glass (eventad)\parts\p_name.cpp
; Line 13
	push	ebp
	mov	ebp, esp
	sub	esp, 100				; 00000064H
	push	ebx
	push	esi
	push	edi
; Line 15
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 17
	push	9728					; 00002600H
	push	10241					; 00002801H
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glTexParameteri@12
; Line 19
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 21
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 22
	push	1079574528				; 40590000H
	push	0
	push	-1067909120				; c0590000H
	push	0
	push	1072168960				; 3fe80000H
	push	0
	push	-1075314688				; bfe80000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	-1074790400				; bff00000H
	push	0
	call	DWORD PTR __imp__glOrtho@48
; Line 24
	mov	eax, DWORD PTR _e$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _t$[ebp], ecx
; Line 26
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 27
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 28
	push	122					; 0000007aH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 30
	mov	DWORD PTR _v$[ebp], 0
; Line 31
	mov	edx, DWORD PTR _e$[ebp]
	fild	DWORD PTR [edx+16]
	fdiv	DWORD PTR __real@4@40008000000000000000
	fstp	DWORD PTR _v$[ebp]
; Line 34
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 35
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 37
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19436
$L19437:
	fld	DWORD PTR _i$[ebp]
	fadd	DWORD PTR __real@4@3ffbcccccd0000000000
	fstp	DWORD PTR _i$[ebp]
$L19436:
	fld	DWORD PTR _i$[ebp]
	fcomp	DWORD PTR __real@4@3ffe8000000000000000
	fnstsw	ax
	test	ah, 1
	je	$L19438
; Line 39
	fld	DWORD PTR _i$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	fsubr	DWORD PTR _t$[ebp]
	fst	DWORD PTR _t2$19439[ebp]
; Line 40
	fmul	DWORD PTR __real@4@40018000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@3ffccccccd0000000000
	fadd	QWORD PTR __real@8@3fff8000000000000000
	fstp	DWORD PTR _xs$19440[ebp]
; Line 41
	fld	DWORD PTR _t2$19439[ebp]
	fmul	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fmul	QWORD PTR __real@8@3ffccccccd0000000000
	fadd	QWORD PTR __real@8@3fff8000000000000000
	fstp	DWORD PTR _ys$19441[ebp]
; Line 42
	fld	DWORD PTR _t2$19439[ebp]
	fmul	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@4002a000000000000000
	fstp	DWORD PTR _r$19442[ebp]
; Line 44
	fld	DWORD PTR _i$[ebp]
	fmul	DWORD PTR __real@4@4005c800000000000000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _b$19443[ebp]
; Line 45
	fld	DWORD PTR __real@4@3fff8000000000000000
	fadd	DWORD PTR _i$[ebp]
	fstp	DWORD PTR _s$19444[ebp]
; Line 47
	mov	eax, DWORD PTR _b$19443[ebp]
	push	eax
	mov	ecx, DWORD PTR _b$19443[ebp]
	push	ecx
	mov	edx, DWORD PTR _b$19443[ebp]
	push	edx
	call	DWORD PTR __imp__glColor3f@12
; Line 48
	fld	DWORD PTR _v$[ebp]
	fadd	DWORD PTR __real@4@3ff8a3d70a0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	1065353216				; 3f800000H
	fld	DWORD PTR _v$[ebp]
	fadd	DWORD PTR __real@4@3ffdfae1480000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	0
	fld	DWORD PTR __real@4@3ffd99999a0000000000
	fmul	DWORD PTR _ys$19441[ebp]
	fmul	DWORD PTR _s$19444[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR _xs$19440[ebp]
	fmul	DWORD PTR _s$19444[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	eax, DWORD PTR _r$19442[ebp]
	push	eax
	push	0
	push	0
	push	0
	call	?glaQuadR@@YAXMMMMMMMMMM@Z		; glaQuadR
	add	esp, 40					; 00000028H
; Line 50
	jmp	$L19437
$L19438:
; Line 51
	call	DWORD PTR __imp__glEnd@0
; Line 63
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_name_run@@YAXPAUEVENT@@@Z ENDP			; p_name_run
_TEXT	ENDS
PUBLIC	__real@4@3ffeb333330000000000
PUBLIC	__real@4@3fffc000000000000000
PUBLIC	__real@4@bffd83126f0000000000
PUBLIC	__real@4@bfff83126f0000000000
PUBLIC	__real@4@3fff83126f0000000000
PUBLIC	__real@4@3ffd83126f0000000000
PUBLIC	?p_title_run@@YAXPAUEVENT@@@Z			; p_title_run
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glDisable@4:NEAR
;	COMDAT __real@4@3ffeb333330000000000
; File d:\prj64k\glass (eventad)\parts\p_name.cpp
CONST	SEGMENT
__real@4@3ffeb333330000000000 DD 03f333333r	; 0.7
CONST	ENDS
;	COMDAT __real@4@3fffc000000000000000
CONST	SEGMENT
__real@4@3fffc000000000000000 DD 03fc00000r	; 1.5
CONST	ENDS
;	COMDAT __real@4@bffd83126f0000000000
CONST	SEGMENT
__real@4@bffd83126f0000000000 DD 0be83126fr	; -0.256
CONST	ENDS
;	COMDAT __real@4@bfff83126f0000000000
CONST	SEGMENT
__real@4@bfff83126f0000000000 DD 0bf83126fr	; -1.024
CONST	ENDS
;	COMDAT __real@4@3fff83126f0000000000
CONST	SEGMENT
__real@4@3fff83126f0000000000 DD 03f83126fr	; 1.024
CONST	ENDS
;	COMDAT __real@4@3ffd83126f0000000000
CONST	SEGMENT
__real@4@3ffd83126f0000000000 DD 03e83126fr	; 0.256
CONST	ENDS
;	COMDAT ?p_title_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_cd$ = -4
_s$ = -8
_f$ = -12
?p_title_run@@YAXPAUEVENT@@@Z PROC NEAR			; p_title_run, COMDAT
; File d:\prj64k\glass (eventad)\parts\p_name.cpp
; Line 65
	push	ebp
	mov	ebp, esp
	sub	esp, 76					; 0000004cH
	push	ebx
	push	esi
	push	edi
; Line 67
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glDisable@4
; Line 68
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 70
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 72
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 73
	push	1079574528				; 40590000H
	push	0
	push	-1067909120				; c0590000H
	push	0
	push	1072168960				; 3fe80000H
	push	0
	push	-1075314688				; bfe80000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	-1074790400				; bff00000H
	push	0
	call	DWORD PTR __imp__glOrtho@48
; Line 75
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 76
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 77
	push	113					; 00000071H
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 79
	push	3042					; 00000be2H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12
; Line 80
	push	769					; 00000301H
	push	0
	call	DWORD PTR __imp__glBlendFunc@8
; Line 81
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 82
	mov	eax, DWORD PTR _e$[ebp]
	fld	DWORD PTR [eax+4]
	fst	DWORD PTR _cd$[ebp]
; Line 84
	fmul	DWORD PTR _cd$[ebp]
	fdivr	DWORD PTR __real@4@4000c000000000000000
	fadd	DWORD PTR __real@4@3ffeb333330000000000
	fstp	DWORD PTR _s$[ebp]
; Line 85
	fld	DWORD PTR _s$[ebp]
	fcomp	DWORD PTR __real@4@3ffeb333330000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L19450
	mov	DWORD PTR _s$[ebp], 1060320051		; 3f333333H
$L19450:
; Line 86
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 87
	mov	ecx, DWORD PTR _e$[ebp]
	fld	DWORD PTR [ecx+4]
	fsub	DWORD PTR __real@4@3fffc000000000000000
	fdiv	DWORD PTR __real@4@4000c000000000000000
	fstp	DWORD PTR _f$[ebp]
; Line 88
	fld	DWORD PTR _f$[ebp]
	fcomp	DWORD PTR __real@4@3fff8000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L19452
	mov	DWORD PTR _f$[ebp], 1065353216		; 3f800000H
$L19452:
; Line 89
	mov	edx, DWORD PTR _f$[ebp]
	push	edx
	mov	eax, DWORD PTR _f$[ebp]
	push	eax
	mov	ecx, DWORD PTR _f$[ebp]
	push	ecx
	call	DWORD PTR __imp__glColor3f@12
; Line 90
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 91
	push	0
	fld	DWORD PTR __real@4@bffd83126f0000000000
	fmul	DWORD PTR _s$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@bfff83126f0000000000
	fmul	DWORD PTR _s$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 92
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 93
	push	0
	fld	DWORD PTR __real@4@bffd83126f0000000000
	fmul	DWORD PTR _s$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3fff83126f0000000000
	fmul	DWORD PTR _s$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 94
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 95
	push	0
	fld	DWORD PTR __real@4@3ffd83126f0000000000
	fmul	DWORD PTR _s$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3fff83126f0000000000
	fmul	DWORD PTR _s$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 96
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 97
	push	0
	fld	DWORD PTR __real@4@3ffd83126f0000000000
	fmul	DWORD PTR _s$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@bfff83126f0000000000
	fmul	DWORD PTR _s$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 98
	call	DWORD PTR __imp__glEnd@0
; Line 99
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_title_run@@YAXPAUEVENT@@@Z ENDP			; p_title_run
_TEXT	ENDS
END
