	TITLE	D:\prj64k\glAss (eventad)\parts\p_loading.cpp
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
;	COMDAT ??_C@_0BN@LEHE@hey?5guys?8n?8gals?0?5this?5is?5not?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_0BM@BGGL@a?5accelerated?5demo?0?5this?5is?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_0BJ@ONGB@a?5accelerated?564k?5intro?$CB?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_0BB@HOEE@gl?5ass?5?1?5psikorp?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_0BB@ICHF@?$CIc?$CJopywr0ng?51999?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT _IsEqualGUID
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _==
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?plobox@@YAXMMH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_loading_draw@@YAXHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?plobox@@YAXMMH@Z				; plobox
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__fltused:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	__imp__glEnd@0:NEAR
;	COMDAT ?plobox@@YAXMMH@Z
_TEXT	SEGMENT
_x$ = 8
_y$ = 12
_f$ = 16
_r$ = -4
?plobox@@YAXMMH@Z PROC NEAR				; plobox, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_loading.cpp
; Line 5
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 6
	mov	DWORD PTR _r$[ebp], 1024416809		; 3d0f5c29H
; Line 18
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 19
	push	1050253722				; 3e99999aH
	push	1045220557				; 3e4ccccdH
	push	1036831949				; 3dcccccdH
	call	DWORD PTR __imp__glColor3f@12
; Line 20
	cmp	DWORD PTR _f$[ebp], 0
	jle	SHORT $L19110
	push	1061997773				; 3f4ccccdH
	push	1058642330				; 3f19999aH
	push	1053609165				; 3ecccccdH
	call	DWORD PTR __imp__glColor3f@12
$L19110:
; Line 21
	cmp	DWORD PTR _f$[ebp], 0
	jne	SHORT $L19111
	push	1065353216				; 3f800000H
	push	1063675494				; 3f666666H
	push	1056964608				; 3f000000H
	call	DWORD PTR __imp__glColor3f@12
$L19111:
; Line 22
	push	0
	fld	DWORD PTR _y$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 23
	push	0
	fld	DWORD PTR _y$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 24
	push	0
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 25
	push	0
	fld	DWORD PTR _y$[ebp]
	fadd	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR _r$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 26
	call	DWORD PTR __imp__glEnd@0
; Line 28
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?plobox@@YAXMMH@Z ENDP					; plobox
_TEXT	ENDS
PUBLIC	?p_loading_draw@@YAXHH@Z			; p_loading_draw
PUBLIC	??_C@_0BN@LEHE@hey?5guys?8n?8gals?0?5this?5is?5not?$AA@ ; `string'
PUBLIC	??_C@_0BM@BGGL@a?5accelerated?5demo?0?5this?5is?$AA@ ; `string'
PUBLIC	??_C@_0BJ@ONGB@a?5accelerated?564k?5intro?$CB?$AA@ ; `string'
PUBLIC	??_C@_0BB@HOEE@gl?5ass?5?1?5psikorp?$AA@	; `string'
PUBLIC	??_C@_0BB@ICHF@?$CIc?$CJopywr0ng?51999?$AA@	; `string'
PUBLIC	__real@4@3fffcccccd0000000000
PUBLIC	__real@4@bffecccccd0000000000
EXTRN	?glaBlit@@YAXXZ:NEAR				; glaBlit
EXTRN	?glaCls@@YAXM@Z:NEAR				; glaCls
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	?glaDrawString@@YAXMMMMMMPAD@Z:NEAR		; glaDrawString
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__imp__glClearColor@16:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
;	COMDAT ??_C@_0BN@LEHE@hey?5guys?8n?8gals?0?5this?5is?5not?$AA@
; File D:\prj64k\glAss (eventad)\parts\p_loading.cpp
CONST	SEGMENT
??_C@_0BN@LEHE@hey?5guys?8n?8gals?0?5this?5is?5not?$AA@ DB 'hey guys''n'''
	DB	'gals, this is not', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0BM@BGGL@a?5accelerated?5demo?0?5this?5is?$AA@
CONST	SEGMENT
??_C@_0BM@BGGL@a?5accelerated?5demo?0?5this?5is?$AA@ DB 'a accelerated de'
	DB	'mo, this is', 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0BJ@ONGB@a?5accelerated?564k?5intro?$CB?$AA@
CONST	SEGMENT
??_C@_0BJ@ONGB@a?5accelerated?564k?5intro?$CB?$AA@ DB 'a accelerated 64k '
	DB	'intro!', 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0BB@HOEE@gl?5ass?5?1?5psikorp?$AA@
CONST	SEGMENT
??_C@_0BB@HOEE@gl?5ass?5?1?5psikorp?$AA@ DB 'gl ass / psikorp', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BB@ICHF@?$CIc?$CJopywr0ng?51999?$AA@
CONST	SEGMENT
??_C@_0BB@ICHF@?$CIc?$CJopywr0ng?51999?$AA@ DB '(c)opywr0ng 1999', 00H ; `string'
CONST	ENDS
;	COMDAT __real@4@3fffcccccd0000000000
CONST	SEGMENT
__real@4@3fffcccccd0000000000 DD 03fcccccdr	; 1.6
CONST	ENDS
;	COMDAT __real@4@bffecccccd0000000000
CONST	SEGMENT
__real@4@bffecccccd0000000000 DD 0bf4ccccdr	; -0.8
CONST	ENDS
;	COMDAT ?p_loading_draw@@YAXHH@Z
_TEXT	SEGMENT
_step$ = 8
_max$ = 12
_i$ = -4
_x$19125 = -8
?p_loading_draw@@YAXHH@Z PROC NEAR			; p_loading_draw, COMDAT
; File D:\prj64k\glAss (eventad)\parts\p_loading.cpp
; Line 30
	push	ebp
	mov	ebp, esp
	sub	esp, 72					; 00000048H
	push	ebx
	push	esi
	push	edi
; Line 31
	push	1065353216				; 3f800000H
	push	1050253722				; 3e99999aH
	push	1045220557				; 3e4ccccdH
	push	1036831949				; 3dcccccdH
	call	DWORD PTR __imp__glClearColor@16
; Line 32
	push	0
	call	?glaCls@@YAXM@Z				; glaCls
	add	esp, 4
; Line 34
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 35
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 37
	push	106					; 0000006aH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 38
	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12
; Line 39
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 42
	push	1059648963				; 3f28f5c3H
	push	1059648963				; 3f28f5c3H
	push	1059648963				; 3f28f5c3H
	call	DWORD PTR __imp__glColor3f@12
; Line 43
	push	OFFSET FLAT:??_C@_0BN@LEHE@hey?5guys?8n?8gals?0?5this?5is?5not?$AA@ ; `string'
	push	1028443341				; 3d4ccccdH
	push	1028443341				; 3d4ccccdH
	push	1028443341				; 3d4ccccdH
	push	0
	push	1028443341				; 3d4ccccdH
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString
	add	esp, 28					; 0000001cH
; Line 44
	push	OFFSET FLAT:??_C@_0BM@BGGL@a?5accelerated?5demo?0?5this?5is?$AA@ ; `string'
	push	1028443341				; 3d4ccccdH
	push	1028443341				; 3d4ccccdH
	push	1028443341				; 3d4ccccdH
	push	0
	push	-1119040307				; bd4ccccdH
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString
	add	esp, 28					; 0000001cH
; Line 45
	push	OFFSET FLAT:??_C@_0BJ@ONGB@a?5accelerated?564k?5intro?$CB?$AA@ ; `string'
	push	1028443341				; 3d4ccccdH
	push	1028443341				; 3d4ccccdH
	push	1028443341				; 3d4ccccdH
	push	0
	push	-1105618534				; be19999aH
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString
	add	esp, 28					; 0000001cH
; Line 47
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glColor3f@12
; Line 48
	push	OFFSET FLAT:??_C@_0BB@HOEE@gl?5ass?5?1?5psikorp?$AA@ ; `string'
	push	1033476506				; 3d99999aH
	push	1028443341				; 3d4ccccdH
	push	1028443341				; 3d4ccccdH
	push	0
	push	1056964608				; 3f000000H
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString
	add	esp, 28					; 0000001cH
; Line 50
	push	1061997773				; 3f4ccccdH
	push	1061997773				; 3f4ccccdH
	push	1061997773				; 3f4ccccdH
	call	DWORD PTR __imp__glColor3f@12
; Line 51
	push	OFFSET FLAT:??_C@_0BB@ICHF@?$CIc?$CJopywr0ng?51999?$AA@ ; `string'
	push	1036831949				; 3dcccccdH
	push	1028443341				; 3d4ccccdH
	push	1028443341				; 3d4ccccdH
	push	0
	push	1051931443				; 3eb33333H
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString
	add	esp, 28					; 0000001cH
; Line 53
	call	DWORD PTR __imp__glEnd@0
; Line 55
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glDisable@4
; Line 56
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19122
$L19123:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$L19122:
	mov	ecx, DWORD PTR _i$[ebp]
	cmp	ecx, DWORD PTR _max$[ebp]
	jg	SHORT $L19124
; Line 57
	fild	DWORD PTR _i$[ebp]
	fmul	DWORD PTR __real@4@3fffcccccd0000000000
	fidiv	DWORD PTR _max$[ebp]
	fadd	DWORD PTR __real@4@bffecccccd0000000000
	fstp	DWORD PTR _x$19125[ebp]
; Line 58
	mov	edx, DWORD PTR _step$[ebp]
	sub	edx, DWORD PTR _i$[ebp]
	push	edx
	push	-1086828052				; bf3851ecH
	mov	eax, DWORD PTR _x$19125[ebp]
	push	eax
	call	?plobox@@YAXMMH@Z			; plobox
	add	esp, 12					; 0000000cH
; Line 59
	jmp	SHORT $L19123
$L19124:
; Line 61
	call	?glaBlit@@YAXXZ				; glaBlit
; Line 63
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_loading_draw@@YAXHH@Z ENDP				; p_loading_draw
_TEXT	ENDS
END
