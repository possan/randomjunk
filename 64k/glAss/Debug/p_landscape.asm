	TITLE	E:\prj64k\glAss (eventad)\parts\p_landscape.cpp
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
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?p_landscape_init@@YAXXZ			; p_landscape_init
_TEXT	SEGMENT
?p_landscape_init@@YAXXZ PROC NEAR			; p_landscape_init
; File E:\prj64k\glAss (eventad)\parts\p_landscape.cpp
; Line 11
	push	ebp
	mov	ebp, esp
; Line 17
	pop	ebp
	ret	0
?p_landscape_init@@YAXXZ ENDP				; p_landscape_init
_TEXT	ENDS
PUBLIC	?p_landscape_kill@@YAXXZ			; p_landscape_kill
_TEXT	SEGMENT
?p_landscape_kill@@YAXXZ PROC NEAR			; p_landscape_kill
; Line 19
	push	ebp
	mov	ebp, esp
; Line 20
	pop	ebp
	ret	0
?p_landscape_kill@@YAXXZ ENDP				; p_landscape_kill
_TEXT	ENDS
PUBLIC	?p_landscape_run@@YAXPAUEVENT@@@Z		; p_landscape_run
PUBLIC	__real@4@4001c000000000000000
PUBLIC	__real@4@4000c000000000000000
PUBLIC	__real@8@3ffe8000000000000000
PUBLIC	__real@8@bfff8000000000000000
PUBLIC	__real@4@4001a000000000000000
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@4003a000000000000000
PUBLIC	__real@4@4003f000000000000000
PUBLIC	__real@4@4002a000000000000000
PUBLIC	__real@4@40008000000000000000
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@4@3ffeb333330000000000
PUBLIC	__real@4@3fffc000000000000000
PUBLIC	__real@4@bffd83126f0000000000
PUBLIC	__real@4@bfff83126f0000000000
PUBLIC	__real@4@3fff83126f0000000000
PUBLIC	__real@4@3ffd83126f0000000000
EXTRN	_gluPerspective@32:NEAR
EXTRN	_gluLookAt@72:NEAR
EXTRN	__imp__glDepthFunc@4:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glEnd@0:NEAR
EXTRN	__imp__glFogf@8:NEAR
EXTRN	__imp__glFogfv@8:NEAR
EXTRN	__imp__glFogi@8:NEAR
EXTRN	_cos:NEAR
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	_sin:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glPopMatrix@0:NEAR
EXTRN	__imp__glPushMatrix@0:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glTranslatef@12:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__imp__glClearDepth@8:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	__fltused:NEAR
;	COMDAT __real@4@4001c000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_landscape.cpp
CONST	SEGMENT
__real@4@4001c000000000000000 DD 040c00000r	; 6
CONST	ENDS
;	COMDAT __real@4@4000c000000000000000
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT __real@8@3ffe8000000000000000
CONST	SEGMENT
__real@8@3ffe8000000000000000 DQ 03fe0000000000000r ; 0.5
CONST	ENDS
;	COMDAT __real@8@bfff8000000000000000
CONST	SEGMENT
__real@8@bfff8000000000000000 DQ 0bff0000000000000r ; -1
CONST	ENDS
;	COMDAT __real@4@4001a000000000000000
CONST	SEGMENT
__real@4@4001a000000000000000 DD 040a00000r	; 5
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@4003a000000000000000
CONST	SEGMENT
__real@4@4003a000000000000000 DD 041a00000r	; 20
CONST	ENDS
;	COMDAT __real@4@4003f000000000000000
CONST	SEGMENT
__real@4@4003f000000000000000 DD 041f00000r	; 30
CONST	ENDS
;	COMDAT __real@4@4002a000000000000000
CONST	SEGMENT
__real@4@4002a000000000000000 DD 041200000r	; 10
CONST	ENDS
;	COMDAT __real@4@40008000000000000000
CONST	SEGMENT
__real@4@40008000000000000000 DD 040000000r	; 2
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@4@3ffeb333330000000000
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
_TEXT	SEGMENT
_e$ = 8
_t$ = -4
_f_c$ = -16
_j$17220 = -20
_i$17224 = -24
_ud$17244 = -40
_vd$17245 = -28
_i$17246 = -32
_j$17247 = -36
_f$17293 = -44
_cd$17295 = -56
_s$17296 = -48
_f$17298 = -52
?p_landscape_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_landscape_run
; File E:\prj64k\glAss (eventad)\parts\p_landscape.cpp
; Line 24
	push	ebp
	mov	ebp, esp
	sub	esp, 104				; 00000068H
; Line 28
	mov	DWORD PTR _f_c$[ebp], 1065353216	; 3f800000H
	mov	DWORD PTR _f_c$[ebp+4], 1065353216	; 3f800000H
	mov	DWORD PTR _f_c$[ebp+8], 1065353216	; 3f800000H
; Line 30
	push	1077149696				; 40340000H
	push	0
	call	DWORD PTR __imp__glClearDepth@8
; Line 31
	push	2929					; 00000b71H
	call	DWORD PTR __imp__glDisable@4
; Line 32
	push	513					; 00000201H
	call	DWORD PTR __imp__glDepthFunc@4
; Line 34
	push	2912					; 00000b60H
	call	DWORD PTR __imp__glEnable@4
; Line 35
	push	2049					; 00000801H
	push	2917					; 00000b65H
	call	DWORD PTR __imp__glFogi@8
; Line 36
	push	1092616192				; 41200000H
	push	2915					; 00000b63H
	call	DWORD PTR __imp__glFogf@8
; Line 37
	push	1097859072				; 41700000H
	push	2916					; 00000b64H
	call	DWORD PTR __imp__glFogf@8
; Line 38
	push	1048576000				; 3e800000H
	push	2914					; 00000b62H
	call	DWORD PTR __imp__glFogf@8
; Line 39
	lea	eax, DWORD PTR _f_c$[ebp]
	push	eax
	push	2918					; 00000b66H
	call	DWORD PTR __imp__glFogfv@8
; Line 43
	mov	ecx, DWORD PTR _e$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR _t$[ebp], edx
; Line 46
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 47
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 49
	push	1083129856				; 408f4000H
	push	0
	push	0
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1079656448				; 405a4000H
	push	0
	call	_gluPerspective@32
; Line 51
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
	fdiv	DWORD PTR __real@4@4001c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fadd	ST(0), ST(0)
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@3ffe8000000000000000
	fadd	QWORD PTR __real@8@bfff8000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fadd	ST(0), ST(0)
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72
; Line 52
	push	-1082130432				; bf800000H
	push	0
	push	0
	call	DWORD PTR __imp__glTranslatef@12
; Line 56
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glDisable@4
; Line 57
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 66
	push	110					; 0000006eH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 67
	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12
; Line 68
	call	DWORD PTR __imp__glPushMatrix@0
; Line 69
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 70
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glColor3f@12
; Line 71
	mov	DWORD PTR _j$17220[ebp], -10		; fffffff6H
	jmp	SHORT $L17221
$L17222:
	mov	eax, DWORD PTR _j$17220[ebp]
	add	eax, 1
	mov	DWORD PTR _j$17220[ebp], eax
$L17221:
	cmp	DWORD PTR _j$17220[ebp], 10		; 0000000aH
	jge	$L17223
; Line 72
	mov	DWORD PTR _i$17224[ebp], -10		; fffffff6H
	jmp	SHORT $L17225
$L17226:
	mov	ecx, DWORD PTR _i$17224[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$17224[ebp], ecx
$L17225:
	cmp	DWORD PTR _i$17224[ebp], 10		; 0000000aH
	jge	$L17227
; Line 74
	fild	DWORD PTR _j$17220[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fild	DWORD PTR _i$17224[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 75
	fild	DWORD PTR _j$17220[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	-1073741824				; c0000000H
	fild	DWORD PTR _i$17224[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 77
	fild	DWORD PTR _j$17220[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	edx, DWORD PTR _i$17224[ebp]
	add	edx, 1
	mov	DWORD PTR -60+[ebp], edx
	fild	DWORD PTR -60+[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 78
	fild	DWORD PTR _j$17220[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	-1073741824				; c0000000H
	fild	DWORD PTR _i$17224[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 80
	mov	eax, DWORD PTR _j$17220[ebp]
	add	eax, 1
	mov	DWORD PTR -64+[ebp], eax
	fild	DWORD PTR -64+[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _i$17224[ebp]
	add	ecx, 1
	mov	DWORD PTR -68+[ebp], ecx
	fild	DWORD PTR -68+[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 81
	fild	DWORD PTR _j$17220[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	-1073741824				; c0000000H
	fild	DWORD PTR _i$17224[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 83
	mov	edx, DWORD PTR _j$17220[ebp]
	add	edx, 1
	mov	DWORD PTR -72+[ebp], edx
	fild	DWORD PTR -72+[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fild	DWORD PTR _i$17224[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 84
	fild	DWORD PTR _j$17220[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	-1073741824				; c0000000H
	fild	DWORD PTR _i$17224[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 86
	jmp	$L17226
$L17227:
; Line 87
	jmp	$L17222
$L17223:
; Line 88
	call	DWORD PTR __imp__glEnd@0
; Line 89
	call	DWORD PTR __imp__glPopMatrix@0
; Line 94
	push	111					; 0000006fH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 95
	push	3042					; 00000be2H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12
; Line 96
	call	DWORD PTR __imp__glPushMatrix@0
; Line 97
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 98
	push	1056964608				; 3f000000H
	push	1048576000				; 3e800000H
	push	0
	call	DWORD PTR __imp__glColor3f@12
; Line 100
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4003a000000000000000
	fstp	DWORD PTR _ud$17244[ebp]
; Line 101
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4003f000000000000000
	fstp	DWORD PTR _vd$17245[ebp]
; Line 104
	mov	DWORD PTR _j$17247[ebp], -10		; fffffff6H
	jmp	SHORT $L17248
$L17249:
	mov	eax, DWORD PTR _j$17247[ebp]
	add	eax, 1
	mov	DWORD PTR _j$17247[ebp], eax
$L17248:
	cmp	DWORD PTR _j$17247[ebp], 10		; 0000000aH
	jge	$L17250
; Line 105
	mov	DWORD PTR _i$17246[ebp], -10		; fffffff6H
	jmp	SHORT $L17251
$L17252:
	mov	ecx, DWORD PTR _i$17246[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$17246[ebp], ecx
$L17251:
	cmp	DWORD PTR _i$17246[ebp], 10		; 0000000aH
	jge	$L17253
; Line 107
	fild	DWORD PTR _j$17247[ebp]
	fdiv	DWORD PTR __real@4@4002a000000000000000
	fadd	DWORD PTR _vd$17245[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fild	DWORD PTR _i$17246[ebp]
	fdiv	DWORD PTR __real@4@4002a000000000000000
	fadd	DWORD PTR _ud$17244[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 108
	fild	DWORD PTR _j$17247[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	1065353216				; 3f800000H
	fild	DWORD PTR _i$17246[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 110
	fild	DWORD PTR _j$17247[ebp]
	fdiv	DWORD PTR __real@4@4002a000000000000000
	fadd	DWORD PTR _vd$17245[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	edx, DWORD PTR _i$17246[ebp]
	add	edx, 1
	mov	DWORD PTR -76+[ebp], edx
	fild	DWORD PTR -76+[ebp]
	fdiv	DWORD PTR __real@4@4002a000000000000000
	fadd	DWORD PTR _ud$17244[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 111
	fild	DWORD PTR _j$17247[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	1065353216				; 3f800000H
	fild	DWORD PTR _i$17246[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 113
	mov	eax, DWORD PTR _j$17247[ebp]
	add	eax, 1
	mov	DWORD PTR -80+[ebp], eax
	fild	DWORD PTR -80+[ebp]
	fdiv	DWORD PTR __real@4@4002a000000000000000
	fadd	DWORD PTR _vd$17245[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _i$17246[ebp]
	add	ecx, 1
	mov	DWORD PTR -84+[ebp], ecx
	fild	DWORD PTR -84+[ebp]
	fdiv	DWORD PTR __real@4@4002a000000000000000
	fadd	DWORD PTR _ud$17244[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 114
	fild	DWORD PTR _j$17247[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	1065353216				; 3f800000H
	fild	DWORD PTR _i$17246[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 116
	mov	edx, DWORD PTR _j$17247[ebp]
	add	edx, 1
	mov	DWORD PTR -88+[ebp], edx
	fild	DWORD PTR -88+[ebp]
	fdiv	DWORD PTR __real@4@4002a000000000000000
	fadd	DWORD PTR _vd$17245[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fild	DWORD PTR _i$17246[ebp]
	fdiv	DWORD PTR __real@4@4002a000000000000000
	fadd	DWORD PTR _ud$17244[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 117
	fild	DWORD PTR _j$17247[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	1065353216				; 3f800000H
	fild	DWORD PTR _i$17246[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 118
	jmp	$L17252
$L17253:
; Line 119
	jmp	$L17249
$L17250:
; Line 120
	call	DWORD PTR __imp__glEnd@0
; Line 122
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 123
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 124
	push	1058642330				; 3f19999aH
	push	1053609165				; 3ecccccdH
	push	1045220557				; 3e4ccccdH
	call	DWORD PTR __imp__glColor3f@12
; Line 126
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4002a000000000000000
	fstp	DWORD PTR _ud$17244[ebp]
; Line 128
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@4003a000000000000000
	fstp	DWORD PTR _vd$17245[ebp]
; Line 130
	mov	DWORD PTR _j$17247[ebp], -10		; fffffff6H
	jmp	SHORT $L17270
$L17271:
	mov	eax, DWORD PTR _j$17247[ebp]
	add	eax, 1
	mov	DWORD PTR _j$17247[ebp], eax
$L17270:
	cmp	DWORD PTR _j$17247[ebp], 10		; 0000000aH
	jge	$L17272
; Line 131
	mov	DWORD PTR _i$17246[ebp], -10		; fffffff6H
	jmp	SHORT $L17273
$L17274:
	mov	ecx, DWORD PTR _i$17246[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$17246[ebp], ecx
$L17273:
	cmp	DWORD PTR _i$17246[ebp], 10		; 0000000aH
	jge	$L17275
; Line 133
	fild	DWORD PTR _j$17247[ebp]
	fdiv	DWORD PTR __real@4@4001c000000000000000
	fadd	DWORD PTR _vd$17245[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fild	DWORD PTR _i$17246[ebp]
	fdiv	DWORD PTR __real@4@4001c000000000000000
	fadd	DWORD PTR _ud$17244[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 134
	fild	DWORD PTR _j$17247[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	1058642330				; 3f19999aH
	fild	DWORD PTR _i$17246[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 136
	fild	DWORD PTR _j$17247[ebp]
	fdiv	DWORD PTR __real@4@4001c000000000000000
	fadd	DWORD PTR _vd$17245[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	edx, DWORD PTR _i$17246[ebp]
	add	edx, 1
	mov	DWORD PTR -92+[ebp], edx
	fild	DWORD PTR -92+[ebp]
	fdiv	DWORD PTR __real@4@4001c000000000000000
	fadd	DWORD PTR _ud$17244[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 137
	fild	DWORD PTR _j$17247[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	1058642330				; 3f19999aH
	fild	DWORD PTR _i$17246[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 139
	mov	eax, DWORD PTR _j$17247[ebp]
	add	eax, 1
	mov	DWORD PTR -96+[ebp], eax
	fild	DWORD PTR -96+[ebp]
	fdiv	DWORD PTR __real@4@4001c000000000000000
	fadd	DWORD PTR _vd$17245[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _i$17246[ebp]
	add	ecx, 1
	mov	DWORD PTR -100+[ebp], ecx
	fild	DWORD PTR -100+[ebp]
	fdiv	DWORD PTR __real@4@4001c000000000000000
	fadd	DWORD PTR _ud$17244[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 140
	fild	DWORD PTR _j$17247[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	1058642330				; 3f19999aH
	fild	DWORD PTR _i$17246[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 142
	mov	edx, DWORD PTR _j$17247[ebp]
	add	edx, 1
	mov	DWORD PTR -104+[ebp], edx
	fild	DWORD PTR -104+[ebp]
	fdiv	DWORD PTR __real@4@4001c000000000000000
	fadd	DWORD PTR _vd$17245[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fild	DWORD PTR _i$17246[ebp]
	fdiv	DWORD PTR __real@4@4001c000000000000000
	fadd	DWORD PTR _ud$17244[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 143
	fild	DWORD PTR _j$17247[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	1058642330				; 3f19999aH
	fild	DWORD PTR _i$17246[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 145
	jmp	$L17274
$L17275:
; Line 146
	jmp	$L17271
$L17272:
; Line 147
	call	DWORD PTR __imp__glEnd@0
; Line 148
	call	DWORD PTR __imp__glPopMatrix@0
; Line 152
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glDisable@4
; Line 153
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 154
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glColor3f@12
; Line 155
	push	-1054867456				; c1200000H
	push	1065353216				; 3f800000H
	push	-1054867456				; c1200000H
	call	DWORD PTR __imp__glVertex3f@12
; Line 156
	push	-1054867456				; c1200000H
	push	1065353216				; 3f800000H
	push	1092616192				; 41200000H
	call	DWORD PTR __imp__glVertex3f@12
; Line 157
	push	-1054867456				; c1200000H
	push	-1073741824				; c0000000H
	push	1092616192				; 41200000H
	call	DWORD PTR __imp__glVertex3f@12
; Line 158
	push	-1054867456				; c1200000H
	push	-1073741824				; c0000000H
	push	-1054867456				; c1200000H
	call	DWORD PTR __imp__glVertex3f@12
; Line 160
	push	-1054867456				; c1200000H
	push	1065353216				; 3f800000H
	push	-1054867456				; c1200000H
	call	DWORD PTR __imp__glVertex3f@12
; Line 161
	push	1092616192				; 41200000H
	push	1065353216				; 3f800000H
	push	-1054867456				; c1200000H
	call	DWORD PTR __imp__glVertex3f@12
; Line 162
	push	1092616192				; 41200000H
	push	-1073741824				; c0000000H
	push	-1054867456				; c1200000H
	call	DWORD PTR __imp__glVertex3f@12
; Line 163
	push	-1054867456				; c1200000H
	push	-1073741824				; c0000000H
	push	-1054867456				; c1200000H
	call	DWORD PTR __imp__glVertex3f@12
; Line 165
	push	-1054867456				; c1200000H
	push	1065353216				; 3f800000H
	push	1092616192				; 41200000H
	call	DWORD PTR __imp__glVertex3f@12
; Line 166
	push	1092616192				; 41200000H
	push	1065353216				; 3f800000H
	push	1092616192				; 41200000H
	call	DWORD PTR __imp__glVertex3f@12
; Line 167
	push	1092616192				; 41200000H
	push	-1073741824				; c0000000H
	push	1092616192				; 41200000H
	call	DWORD PTR __imp__glVertex3f@12
; Line 168
	push	-1054867456				; c1200000H
	push	-1073741824				; c0000000H
	push	1092616192				; 41200000H
	call	DWORD PTR __imp__glVertex3f@12
; Line 170
	call	DWORD PTR __imp__glEnd@0
; Line 174
	push	113					; 00000071H
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 175
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 178
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@40008000000000000000
	fnstsw	ax
	test	ah, 1
	je	$L17292
; Line 179
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@40018000000000000000
	fsubr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _f$17293[ebp]
; Line 181
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glDisable@4
; Line 182
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 183
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 184
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 186
	mov	eax, DWORD PTR _f$17293[ebp]
	push	eax
	mov	ecx, DWORD PTR _f$17293[ebp]
	push	ecx
	mov	edx, DWORD PTR _f$17293[ebp]
	push	edx
	call	DWORD PTR __imp__glColor3f@12
; Line 188
	push	0
	push	-1082130432				; bf800000H
	push	-1082130432				; bf800000H
	call	DWORD PTR __imp__glVertex3f@12
; Line 189
	push	0
	push	-1082130432				; bf800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glVertex3f@12
; Line 190
	push	0
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glVertex3f@12
; Line 191
	push	0
	push	1065353216				; 3f800000H
	push	-1082130432				; bf800000H
	call	DWORD PTR __imp__glVertex3f@12
; Line 193
	call	DWORD PTR __imp__glEnd@0
$L17292:
; Line 197
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@4000c000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	$L17294
; Line 199
	push	3042					; 00000be2H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12
; Line 200
	push	769					; 00000301H
	push	0
	call	DWORD PTR __imp__glBlendFunc@8
; Line 201
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 203
	fld	DWORD PTR _t$[ebp]
	fsub	DWORD PTR __real@4@4000c000000000000000
	fst	DWORD PTR _cd$17295[ebp]
; Line 206
	fmul	DWORD PTR _cd$17295[ebp]
	fdivr	DWORD PTR __real@4@4000c000000000000000
	fadd	DWORD PTR __real@4@3ffeb333330000000000
	fstp	DWORD PTR _s$17296[ebp]
; Line 207
	fld	DWORD PTR _s$17296[ebp]
	fcomp	DWORD PTR __real@4@3ffeb333330000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L17297
	mov	DWORD PTR _s$17296[ebp], 1060320051	; 3f333333H
$L17297:
; Line 209
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 211
	fld	DWORD PTR _t$[ebp]
	fsub	DWORD PTR __real@4@3fffc000000000000000
	fdiv	DWORD PTR __real@4@4000c000000000000000
	fstp	DWORD PTR _f$17298[ebp]
; Line 212
	fld	DWORD PTR _f$17298[ebp]
	fcomp	DWORD PTR __real@4@3fff8000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17299
	mov	DWORD PTR _f$17298[ebp], 1065353216	; 3f800000H
$L17299:
; Line 213
	mov	eax, DWORD PTR _f$17298[ebp]
	push	eax
	mov	ecx, DWORD PTR _f$17298[ebp]
	push	ecx
	mov	edx, DWORD PTR _f$17298[ebp]
	push	edx
	call	DWORD PTR __imp__glColor3f@12
; Line 215
	push	1065353216				; 3f800000H
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 216
	push	0
	fld	DWORD PTR __real@4@bffd83126f0000000000
	fmul	DWORD PTR _s$17296[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@bfff83126f0000000000
	fmul	DWORD PTR _s$17296[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 217
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 218
	push	0
	fld	DWORD PTR __real@4@bffd83126f0000000000
	fmul	DWORD PTR _s$17296[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3fff83126f0000000000
	fmul	DWORD PTR _s$17296[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 219
	push	0
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 220
	push	0
	fld	DWORD PTR __real@4@3ffd83126f0000000000
	fmul	DWORD PTR _s$17296[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@3fff83126f0000000000
	fmul	DWORD PTR _s$17296[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 221
	push	0
	push	0
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 222
	push	0
	fld	DWORD PTR __real@4@3ffd83126f0000000000
	fmul	DWORD PTR _s$17296[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR __real@4@bfff83126f0000000000
	fmul	DWORD PTR _s$17296[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 224
	call	DWORD PTR __imp__glEnd@0
$L17294:
; Line 284
	push	2912					; 00000b60H
	call	DWORD PTR __imp__glDisable@4
; Line 286
	mov	esp, ebp
	pop	ebp
	ret	0
?p_landscape_run@@YAXPAUEVENT@@@Z ENDP			; p_landscape_run
_TEXT	ENDS
PUBLIC	?plobj@@YAXPAM00M@Z				; plobj
PUBLIC	__real@4@4000b000000000000000
PUBLIC	__real@4@3ffe8000000000000000
PUBLIC	__real@4@3fff99999a0000000000
PUBLIC	__real@4@4000d333330000000000
PUBLIC	__real@4@3fffa666660000000000
;	COMDAT __real@4@4000b000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_landscape.cpp
CONST	SEGMENT
__real@4@4000b000000000000000 DD 040300000r	; 2.75
CONST	ENDS
;	COMDAT __real@4@3ffe8000000000000000
CONST	SEGMENT
__real@4@3ffe8000000000000000 DD 03f000000r	; 0.5
CONST	ENDS
;	COMDAT __real@4@3fff99999a0000000000
CONST	SEGMENT
__real@4@3fff99999a0000000000 DD 03f99999ar	; 1.2
CONST	ENDS
;	COMDAT __real@4@4000d333330000000000
CONST	SEGMENT
__real@4@4000d333330000000000 DD 040533333r	; 3.3
CONST	ENDS
;	COMDAT __real@4@3fffa666660000000000
CONST	SEGMENT
__real@4@3fffa666660000000000 DD 03fa66666r	; 1.3
CONST	ENDS
_TEXT	SEGMENT
_x$ = 8
_y$ = 12
_z$ = 16
_time$ = 20
_xr$ = -8
_yr$ = -12
_zr$ = -4
?plobj@@YAXPAM00M@Z PROC NEAR				; plobj
; File E:\prj64k\glAss (eventad)\parts\p_landscape.cpp
; Line 288
	push	ebp
	mov	ebp, esp
	sub	esp, 72					; 00000048H
; Line 293
	fld	DWORD PTR _time$[ebp]
	fdiv	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -16+[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _xr$[ebp]
; Line 294
	fld	DWORD PTR _time$[ebp]
	fdiv	DWORD PTR __real@4@40008000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -20+[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _yr$[ebp]
; Line 295
	fld	DWORD PTR _time$[ebp]
	fdiv	DWORD PTR __real@4@4000b000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -24+[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _zr$[ebp]
; Line 297
	fld	DWORD PTR _time$[ebp]
	fmul	DWORD PTR __real@4@4000c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -28+[ebp]
	fmul	DWORD PTR _xr$[ebp]
	fstp	DWORD PTR -32+[ebp]
	fld	DWORD PTR __real@4@3ffe8000000000000000
	fmul	DWORD PTR _yr$[ebp]
	fstp	DWORD PTR -36+[ebp]
	fld	DWORD PTR _time$[ebp]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -40+[ebp]
	fmul	DWORD PTR -36+[ebp]
	fsubr	DWORD PTR -32+[ebp]
	mov	eax, DWORD PTR _x$[ebp]
	fstp	DWORD PTR [eax]
; Line 298
	fld	DWORD PTR _time$[ebp]
	fadd	ST(0), ST(0)
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -44+[ebp]
	fmul	DWORD PTR _yr$[ebp]
	fstp	DWORD PTR -48+[ebp]
	fld	DWORD PTR __real@4@3ffe8000000000000000
	fmul	DWORD PTR _zr$[ebp]
	fstp	DWORD PTR -52+[ebp]
	fld	DWORD PTR _time$[ebp]
	fmul	DWORD PTR __real@4@3fff99999a0000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -56+[ebp]
	fmul	DWORD PTR -52+[ebp]
	fsubr	DWORD PTR -48+[ebp]
	mov	ecx, DWORD PTR _y$[ebp]
	fstp	DWORD PTR [ecx]
; Line 299
	fld	DWORD PTR _time$[ebp]
	fmul	DWORD PTR __real@4@4000d333330000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -60+[ebp]
	fmul	DWORD PTR _zr$[ebp]
	fstp	DWORD PTR -64+[ebp]
	fld	DWORD PTR __real@4@3ffe8000000000000000
	fmul	DWORD PTR _zr$[ebp]
	fstp	DWORD PTR -68+[ebp]
	fld	DWORD PTR _time$[ebp]
	fmul	DWORD PTR __real@4@3fffa666660000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -72+[ebp]
	fmul	DWORD PTR -68+[ebp]
	fsubr	DWORD PTR -64+[ebp]
	mov	edx, DWORD PTR _z$[ebp]
	fstp	DWORD PTR [edx]
; Line 300
	mov	esp, ebp
	pop	ebp
	ret	0
?plobj@@YAXPAM00M@Z ENDP				; plobj
_TEXT	ENDS
END
