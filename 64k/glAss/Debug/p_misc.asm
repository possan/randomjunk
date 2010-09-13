	TITLE	D:\prj64k\glAss (eventad)\p_misc.cpp
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
;	COMDAT ??_C@_0BG@KNEM@april?52000?0?5norway?4?4?4?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_0BH@NLAD@you?8re?5not?5dreaming?4?4?4?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_0BN@CEMB@vi?5kan?5it?5och?5multimedia?$CB?5?3?$CJ?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT _IsEqualGUID
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _==
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_whiteflash_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_fadeblack_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_static_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_futurama_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_fulintro_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_hanzon_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?p_whiteflash_run@@YAXPAUEVENT@@@Z		; p_whiteflash_run
PUBLIC	__real@4@4002a000000000000000
PUBLIC	__real@4@3fff8000000000000000
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	?glaQuadR@@YAXMMMMMMMMMM@Z:NEAR			; glaQuadR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__fltused:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glEnd@0:NEAR
;	COMDAT __real@4@4002a000000000000000
; File d:\prj64k\glass (eventad)\p_misc.cpp
CONST	SEGMENT
__real@4@4002a000000000000000 DD 041200000r	; 10
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT ?p_whiteflash_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_b$ = -4
?p_whiteflash_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_whiteflash_run, COMDAT
; File d:\prj64k\glass (eventad)\p_misc.cpp
; Line 5
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 6
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 7
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 8
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 9
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 11
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glDisable@4
; Line 12
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 13
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 14
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 16
	mov	eax, DWORD PTR _e$[ebp]
	fld	DWORD PTR [eax+4]
	fmul	DWORD PTR __real@4@4002a000000000000000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _b$[ebp]
; Line 17
	mov	ecx, DWORD PTR _b$[ebp]
	push	ecx
	mov	edx, DWORD PTR _b$[ebp]
	push	edx
	mov	eax, DWORD PTR _b$[ebp]
	push	eax
	call	DWORD PTR __imp__glColor3f@12
; Line 19
	push	0
	push	0
	push	0
	push	0
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	0
	push	0
	push	0
	push	0
	call	?glaQuadR@@YAXMMMMMMMMMM@Z		; glaQuadR
	add	esp, 40					; 00000028H
; Line 21
	call	DWORD PTR __imp__glEnd@0
; Line 22
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_whiteflash_run@@YAXPAUEVENT@@@Z ENDP			; p_whiteflash_run
_TEXT	ENDS
PUBLIC	?p_fadeblack_run@@YAXPAUEVENT@@@Z		; p_fadeblack_run
PUBLIC	__real@4@4003a000000000000000
EXTRN	__imp__glTexEnvi@12:NEAR
;	COMDAT __real@4@4003a000000000000000
; File d:\prj64k\glass (eventad)\p_misc.cpp
CONST	SEGMENT
__real@4@4003a000000000000000 DD 041a00000r	; 20
CONST	ENDS
;	COMDAT ?p_fadeblack_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_b$ = -4
?p_fadeblack_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_fadeblack_run, COMDAT
; File d:\prj64k\glass (eventad)\p_misc.cpp
; Line 24
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 25
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 26
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 27
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 28
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 30
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glDisable@4
; Line 31
	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12
; Line 32
	push	769					; 00000301H
	push	0
	call	DWORD PTR __imp__glBlendFunc@8
; Line 33
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 34
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 36
	mov	eax, DWORD PTR _e$[ebp]
	fld	DWORD PTR [eax+4]
	fmul	DWORD PTR __real@4@4003a000000000000000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3fff8000000000000000
	fsubr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _b$[ebp]
; Line 37
	mov	ecx, DWORD PTR _b$[ebp]
	push	ecx
	mov	edx, DWORD PTR _b$[ebp]
	push	edx
	mov	eax, DWORD PTR _b$[ebp]
	push	eax
	call	DWORD PTR __imp__glColor3f@12
; Line 38
	push	0
	push	0
	push	0
	push	0
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	0
	push	0
	push	0
	push	0
	call	?glaQuadR@@YAXMMMMMMMMMM@Z		; glaQuadR
	add	esp, 40					; 00000028H
; Line 40
	call	DWORD PTR __imp__glEnd@0
; Line 41
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_fadeblack_run@@YAXPAUEVENT@@@Z ENDP			; p_fadeblack_run
_TEXT	ENDS
PUBLIC	?p_static_run@@YAXPAUEVENT@@@Z			; p_static_run
PUBLIC	__real@4@4006ff00000000000000
PUBLIC	__real@4@3ff8a3d70a0000000000
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
;	COMDAT __real@4@4006ff00000000000000
; File d:\prj64k\glass (eventad)\p_misc.cpp
CONST	SEGMENT
__real@4@4006ff00000000000000 DD 0437f0000r	; 255
CONST	ENDS
;	COMDAT __real@4@3ff8a3d70a0000000000
CONST	SEGMENT
__real@4@3ff8a3d70a0000000000 DD 03c23d70ar	; 0.01
CONST	ENDS
;	COMDAT ?p_static_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_u$ = -4
_b$ = -8
?p_static_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_static_run, COMDAT
; File d:\prj64k\glass (eventad)\p_misc.cpp
; Line 43
	push	ebp
	mov	ebp, esp
	sub	esp, 72					; 00000048H
	push	ebx
	push	esi
	push	edi
; Line 44
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 45
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 46
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 47
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 49
	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12
; Line 50
	push	769					; 00000301H
	push	0
	call	DWORD PTR __imp__glBlendFunc@8
; Line 51
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 52
	mov	eax, DWORD PTR _e$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _u$[ebp], ecx
; Line 53
	mov	edx, DWORD PTR _e$[ebp]
	fild	DWORD PTR [edx+16]
	fdiv	DWORD PTR __real@4@4006ff00000000000000
	fstp	DWORD PTR _b$[ebp]
; Line 54
	push	111					; 0000006fH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 55
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 56
	mov	eax, DWORD PTR _b$[ebp]
	push	eax
	mov	ecx, DWORD PTR _b$[ebp]
	push	ecx
	mov	edx, DWORD PTR _b$[ebp]
	push	edx
	call	DWORD PTR __imp__glColor3f@12
; Line 57
	push	-1080452710				; bf99999aH
	fld	DWORD PTR _u$[ebp]
	fadd	DWORD PTR __real@4@3ff8a3d70a0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	1036831949				; 3dcccccdH
	mov	eax, DWORD PTR _u$[ebp]
	push	eax
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	0
	push	0
	push	0
	push	0
	call	?glaQuadR@@YAXMMMMMMMMMM@Z		; glaQuadR
	add	esp, 40					; 00000028H
; Line 59
	call	DWORD PTR __imp__glEnd@0
; Line 60
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_static_run@@YAXPAUEVENT@@@Z ENDP			; p_static_run
_TEXT	ENDS
PUBLIC	?p_futurama_run@@YAXPAUEVENT@@@Z		; p_futurama_run
PUBLIC	__real@4@40048400000000000000
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@8@4000c916872b020c4800
PUBLIC	__real@8@4004c800000000000000
PUBLIC	__real@4@3ffeb333330000000000
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@3ffbcccccd0000000000
PUBLIC	__real@4@3ff7c49ba60000000000
PUBLIC	__real@4@3ff6c49ba60000000000
PUBLIC	__real@4@3ff583126f0000000000
EXTRN	_cos:NEAR
EXTRN	_sin:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
;	COMDAT __real@4@40048400000000000000
; File d:\prj64k\glass (eventad)\p_misc.cpp
CONST	SEGMENT
__real@4@40048400000000000000 DD 042040000r	; 33
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@8@4000c916872b020c4800
CONST	SEGMENT
__real@8@4000c916872b020c4800 DQ 0400922d0e5604189r ; 3.142
CONST	ENDS
;	COMDAT __real@8@4004c800000000000000
CONST	SEGMENT
__real@8@4004c800000000000000 DQ 04049000000000000r ; 50
CONST	ENDS
;	COMDAT __real@4@3ffeb333330000000000
CONST	SEGMENT
__real@4@3ffeb333330000000000 DD 03f333333r	; 0.7
CONST	ENDS
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@3ffbcccccd0000000000
CONST	SEGMENT
__real@4@3ffbcccccd0000000000 DD 03dcccccdr	; 0.1
CONST	ENDS
;	COMDAT __real@4@3ff7c49ba60000000000
CONST	SEGMENT
__real@4@3ff7c49ba60000000000 DD 03bc49ba6r	; 0.006
CONST	ENDS
;	COMDAT __real@4@3ff6c49ba60000000000
CONST	SEGMENT
__real@4@3ff6c49ba60000000000 DD 03b449ba6r	; 0.003
CONST	ENDS
;	COMDAT __real@4@3ff583126f0000000000
CONST	SEGMENT
__real@4@3ff583126f0000000000 DD 03a83126fr	; 0.001
CONST	ENDS
;	COMDAT ?p_futurama_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_x0$ = -4
_y0$ = -8
_x1$ = -12
_y1$ = -16
_u0$ = -20
_u1$ = -24
_v0$ = -28
_v1$ = -32
_b$ = -36
_t$ = -40
_i$ = -44
?p_futurama_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_futurama_run, COMDAT
; File d:\prj64k\glass (eventad)\p_misc.cpp
; Line 62
	push	ebp
	mov	ebp, esp
	sub	esp, 128				; 00000080H
	push	ebx
	push	esi
	push	edi
; Line 65
	mov	eax, DWORD PTR _e$[ebp]
	mov	ecx, DWORD PTR [eax+20]
	mov	DWORD PTR _b$[ebp], ecx
; Line 66
	mov	edx, DWORD PTR _e$[ebp]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR _t$[ebp], eax
; Line 68
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 69
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 70
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 71
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 73
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 74
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 75
	push	111					; 0000006fH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 76
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 78
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19131
$L19132:
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$[ebp], ecx
$L19131:
	cmp	DWORD PTR _i$[ebp], 100			; 00000064H
	jge	$L19133
; Line 80
	fild	DWORD PTR _i$[ebp]
	fdiv	DWORD PTR __real@4@40048400000000000000
	fstp	DWORD PTR _u0$[ebp]
; Line 81
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, 1
	mov	DWORD PTR -48+[ebp], edx
	fild	DWORD PTR -48+[ebp]
	fdiv	DWORD PTR __real@4@40048400000000000000
	fstp	DWORD PTR _u1$[ebp]
; Line 82
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	fst	DWORD PTR _v0$[ebp]
; Line 83
	fsub	DWORD PTR __real@4@3ff8a3d70a0000000000
	fstp	DWORD PTR _v1$[ebp]
; Line 85
	fild	DWORD PTR _i$[ebp]
	fmul	QWORD PTR __real@8@4000c916872b020c4800
	fdiv	QWORD PTR __real@8@4004c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -52+[ebp]
	fadd	ST(0), ST(0)
	fstp	DWORD PTR _x0$[ebp]
; Line 86
	fild	DWORD PTR _i$[ebp]
	fmul	QWORD PTR __real@8@4000c916872b020c4800
	fdiv	QWORD PTR __real@8@4004c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -56+[ebp]
	fadd	ST(0), ST(0)
	fstp	DWORD PTR _y0$[ebp]
; Line 87
	fild	DWORD PTR _i$[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fmul	QWORD PTR __real@8@4000c916872b020c4800
	fdiv	QWORD PTR __real@8@4004c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -60+[ebp]
	fadd	ST(0), ST(0)
	fstp	DWORD PTR _x1$[ebp]
; Line 88
	fild	DWORD PTR _i$[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fmul	QWORD PTR __real@8@4000c916872b020c4800
	fdiv	QWORD PTR __real@8@4004c800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -64+[ebp]
	fadd	ST(0), ST(0)
	fstp	DWORD PTR _y1$[ebp]
; Line 90
	fld	DWORD PTR __real@4@3ffeb333330000000000
	fmul	DWORD PTR _b$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ffd99999a0000000000
	fmul	DWORD PTR _b$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ffbcccccd0000000000
	fmul	DWORD PTR _b$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12
; Line 92
	mov	eax, DWORD PTR _v0$[ebp]
	push	eax
	mov	ecx, DWORD PTR _u1$[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 93
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glVertex3f@12
; Line 95
	mov	edx, DWORD PTR _v0$[ebp]
	push	edx
	mov	eax, DWORD PTR _u0$[ebp]
	push	eax
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 96
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glVertex3f@12
; Line 98
	fld	DWORD PTR __real@4@3ff7c49ba60000000000
	fmul	DWORD PTR _b$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ff6c49ba60000000000
	fmul	DWORD PTR _b$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3ff583126f0000000000
	fmul	DWORD PTR _b$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12
; Line 100
	mov	ecx, DWORD PTR _v1$[ebp]
	push	ecx
	mov	edx, DWORD PTR _u0$[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 101
	push	0
	mov	eax, DWORD PTR _y0$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x0$[ebp]
	push	ecx
	call	DWORD PTR __imp__glVertex3f@12
; Line 103
	mov	edx, DWORD PTR _v1$[ebp]
	push	edx
	mov	eax, DWORD PTR _u1$[ebp]
	push	eax
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 104
	push	0
	mov	ecx, DWORD PTR _y1$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x1$[ebp]
	push	edx
	call	DWORD PTR __imp__glVertex3f@12
; Line 106
	jmp	$L19132
$L19133:
; Line 107
	call	DWORD PTR __imp__glEnd@0
; Line 108
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_futurama_run@@YAXPAUEVENT@@@Z ENDP			; p_futurama_run
_TEXT	ENDS
PUBLIC	?p_fulintro_run@@YAXPAUEVENT@@@Z		; p_fulintro_run
PUBLIC	??_C@_0BG@KNEM@april?52000?0?5norway?4?4?4?$AA@	; `string'
PUBLIC	??_C@_0BH@NLAD@you?8re?5not?5dreaming?4?4?4?$AA@ ; `string'
PUBLIC	??_C@_0BN@CEMB@vi?5kan?5it?5och?5multimedia?$CB?5?3?$CJ?$AA@ ; `string'
EXTRN	?glaDrawString@@YAXMMMMMMPAD@Z:NEAR		; glaDrawString
;	COMDAT ??_C@_0BG@KNEM@april?52000?0?5norway?4?4?4?$AA@
; File d:\prj64k\glass (eventad)\p_misc.cpp
CONST	SEGMENT
??_C@_0BG@KNEM@april?52000?0?5norway?4?4?4?$AA@ DB 'april 2000, norway...'
	DB	00H						; `string'
CONST	ENDS
;	COMDAT ??_C@_0BH@NLAD@you?8re?5not?5dreaming?4?4?4?$AA@
CONST	SEGMENT
??_C@_0BH@NLAD@you?8re?5not?5dreaming?4?4?4?$AA@ DB 'you''re not dreaming'
	DB	'...', 00H					; `string'
CONST	ENDS
;	COMDAT ??_C@_0BN@CEMB@vi?5kan?5it?5och?5multimedia?$CB?5?3?$CJ?$AA@
CONST	SEGMENT
??_C@_0BN@CEMB@vi?5kan?5it?5och?5multimedia?$CB?5?3?$CJ?$AA@ DB 'vi kan i'
	DB	't och multimedia! :)', 00H			; `string'
CONST	ENDS
;	COMDAT ?p_fulintro_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_b$ = -4
_t$ = -8
?p_fulintro_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_fulintro_run, COMDAT
; File d:\prj64k\glass (eventad)\p_misc.cpp
; Line 110
	push	ebp
	mov	ebp, esp
	sub	esp, 76					; 0000004cH
	push	ebx
	push	esi
	push	edi
; Line 112
	mov	DWORD PTR _b$[ebp], 1065353216		; 3f800000H
; Line 113
	mov	eax, DWORD PTR _e$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _t$[ebp], ecx
; Line 115
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 116
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 117
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 118
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 120
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 121
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 122
	push	111					; 0000006fH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 123
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 156
	push	106					; 0000006aH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 157
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 158
	mov	edx, DWORD PTR _e$[ebp]
	mov	eax, DWORD PTR [edx+20]
	mov	DWORD PTR _b$[ebp], eax
; Line 159
	mov	ecx, DWORD PTR _b$[ebp]
	push	ecx
	mov	edx, DWORD PTR _b$[ebp]
	push	edx
	mov	eax, DWORD PTR _b$[ebp]
	push	eax
	call	DWORD PTR __imp__glColor3f@12
; Line 160
	mov	ecx, DWORD PTR _e$[ebp]
	mov	edx, DWORD PTR [ecx+16]
	mov	DWORD PTR -12+[ebp], edx
	cmp	DWORD PTR -12+[ebp], 0
	je	SHORT $L19153
	cmp	DWORD PTR -12+[ebp], 1
	je	SHORT $L19155
	cmp	DWORD PTR -12+[ebp], 2
	je	SHORT $L19157
	jmp	SHORT $L19150
$L19153:
; Line 162
	push	OFFSET FLAT:??_C@_0BG@KNEM@april?52000?0?5norway?4?4?4?$AA@ ; `string'
	push	1025758986				; 3d23d70aH
	push	1025758986				; 3d23d70aH
	push	1025758986				; 3d23d70aH
	push	0
	push	0
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString
	add	esp, 28					; 0000001cH
; Line 163
	jmp	SHORT $L19150
$L19155:
; Line 165
	push	OFFSET FLAT:??_C@_0BH@NLAD@you?8re?5not?5dreaming?4?4?4?$AA@ ; `string'
	push	1025758986				; 3d23d70aH
	push	1025758986				; 3d23d70aH
	push	1025758986				; 3d23d70aH
	push	0
	push	0
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString
	add	esp, 28					; 0000001cH
; Line 166
	jmp	SHORT $L19150
$L19157:
; Line 168
	push	OFFSET FLAT:??_C@_0BN@CEMB@vi?5kan?5it?5och?5multimedia?$CB?5?3?$CJ?$AA@ ; `string'
	push	1025758986				; 3d23d70aH
	push	1025758986				; 3d23d70aH
	push	1025758986				; 3d23d70aH
	push	0
	push	0
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString
	add	esp, 28					; 0000001cH
$L19150:
; Line 171
	call	DWORD PTR __imp__glEnd@0
; Line 173
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_fulintro_run@@YAXPAUEVENT@@@Z ENDP			; p_fulintro_run
_TEXT	ENDS
PUBLIC	?p_hanzon_run@@YAXPAUEVENT@@@Z			; p_hanzon_run
;	COMDAT ?p_hanzon_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_b$ = -4
?p_hanzon_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_hanzon_run, COMDAT
; Line 175
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 176
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 177
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 178
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 179
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 181
	mov	eax, DWORD PTR _e$[ebp]
	fld	DWORD PTR __real@4@3ffd99999a0000000000
	fmul	DWORD PTR [eax+20]
	fstp	DWORD PTR _b$[ebp]
; Line 184
	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12
; Line 185
	push	769					; 00000301H
	push	0
	call	DWORD PTR __imp__glBlendFunc@8
; Line 186
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 187
	push	121					; 00000079H
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 188
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 189
	mov	ecx, DWORD PTR _b$[ebp]
	push	ecx
	mov	edx, DWORD PTR _b$[ebp]
	push	edx
	mov	eax, DWORD PTR _b$[ebp]
	push	eax
	call	DWORD PTR __imp__glColor3f@12
; Line 190
	push	1008981770				; 3c23d70aH
	push	1065185444				; 3f7d70a4H
	push	1065185444				; 3f7d70a4H
	push	1008981770				; 3c23d70aH
	push	1065353216				; 3f800000H
	push	1053609165				; 3ecccccdH
	push	0
	push	0
	push	-1110651699				; bdcccccdH
	push	-1090519040				; bf000000H
	call	?glaQuadR@@YAXMMMMMMMMMM@Z		; glaQuadR
	add	esp, 40					; 00000028H
; Line 191
	call	DWORD PTR __imp__glEnd@0
; Line 192
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_hanzon_run@@YAXPAUEVENT@@@Z ENDP			; p_hanzon_run
_TEXT	ENDS
END
