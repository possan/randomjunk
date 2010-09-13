	TITLE	E:\prj64k\glAss (eventad)\parts\p_flareblob.cpp
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
PUBLIC	?p_flareblob_init@@YAXXZ			; p_flareblob_init
_TEXT	SEGMENT
?p_flareblob_init@@YAXXZ PROC NEAR			; p_flareblob_init
; File E:\prj64k\glAss (eventad)\parts\p_flareblob.cpp
; Line 8
	push	ebp
	mov	ebp, esp
; Line 11
	pop	ebp
	ret	0
?p_flareblob_init@@YAXXZ ENDP				; p_flareblob_init
_TEXT	ENDS
PUBLIC	?p_flareblob_kill@@YAXXZ			; p_flareblob_kill
_TEXT	SEGMENT
?p_flareblob_kill@@YAXXZ PROC NEAR			; p_flareblob_kill
; Line 13
	push	ebp
	mov	ebp, esp
; Line 14
	pop	ebp
	ret	0
?p_flareblob_kill@@YAXXZ ENDP				; p_flareblob_kill
_TEXT	ENDS
PUBLIC	?p_flareblob_run@@YAXXZ				; p_flareblob_run
PUBLIC	__real@4@40008000000000000000
PUBLIC	__real@4@40048000000000000000
PUBLIC	__real@4@4000c90fdb0000000000
PUBLIC	__real@4@40019000000000000000
PUBLIC	__real@8@4001a000000000000000
PUBLIC	__real@4@4002f000000000000000
PUBLIC	__real@4@40008ccccd0000000000
PUBLIC	__real@4@40058200000000000000
PUBLIC	__real@4@4001c9999a0000000000
PUBLIC	__real@4@4004ac00000000000000
PUBLIC	__real@4@4001a333330000000000
PUBLIC	__real@4@4004e400000000000000
PUBLIC	__real@4@4000e000000000000000
PUBLIC	__real@4@4005ba00000000000000
PUBLIC	__real@4@4001eccccd0000000000
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@4@400a85f6660000000000
PUBLIC	__real@4@400abec4cd0000000000
PUBLIC	__real@4@400b985ccd0000000000
PUBLIC	__real@4@4001c000000000000000
PUBLIC	__real@4@40028000000000000000
PUBLIC	__real@4@400ac446660000000000
PUBLIC	__real@4@400b9c52660000000000
PUBLIC	__real@4@400a94299a0000000000
PUBLIC	__real@4@4002a000000000000000
PUBLIC	__real@4@4002c000000000000000
PUBLIC	__real@4@400cae119a0000000000
PUBLIC	__real@4@400c8ca9330000000000
PUBLIC	__real@4@400d87b5330000000000
PUBLIC	__real@4@40068f66660000000000
PUBLIC	__real@4@400a8044cd0000000000
PUBLIC	__real@4@400af2399a0000000000
PUBLIC	__real@4@4000a666660000000000
PUBLIC	__real@4@4003c800000000000000
PUBLIC	__real@4@3ffccccccd0000000000
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@4000c666660000000000
PUBLIC	__real@4@4003f000000000000000
PUBLIC	__real@4@4005dc00000000000000
PUBLIC	__real@4@40069600000000000000
PUBLIC	__real@4@3ffea3d70a0000000000
PUBLIC	__real@4@4000a3d70a0000000000
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@40009333330000000000
PUBLIC	__real@4@3ffdcccccd0000000000
PUBLIC	__real@4@400a9c40000000000000
PUBLIC	__real@8@3fff8000000000000000
PUBLIC	__real@4@3ffba3d70a0000000000
PUBLIC	__real@4@00000000000000000000
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glEnd@0:NEAR
EXTRN	_cos:NEAR
EXTRN	_fabs:NEAR
EXTRN	_sin:NEAR
EXTRN	_sqrt:NEAR
EXTRN	?build_rotation_matrix@@YAXMMMPAUMATRIX@@@Z:NEAR ; build_rotation_matrix
EXTRN	?vector_mul@@YAXPAUMATRIX@@PAUVECTOR@@1@Z:NEAR	; vector_mul
EXTRN	?vector_project@@YAXPAUVECTOR@@0MM@Z:NEAR	; vector_project
EXTRN	?glaBlit@@YAXXZ:NEAR				; glaBlit
EXTRN	?glaCls@@YAXM@Z:NEAR				; glaCls
EXTRN	?glaExit@@YAHXZ:NEAR				; glaExit
EXTRN	?glaReset@@YAXXZ:NEAR				; glaReset
EXTRN	?glaRelBeat@@YAMXZ:NEAR				; glaRelBeat
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	?glaQuad@@YAXMMMMMMMMM@Z:NEAR			; glaQuad
EXTRN	?glaQuadR@@YAXMMMMMMMMMM@Z:NEAR			; glaQuadR
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	__fltused:NEAR
;	COMDAT __real@4@40008000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_flareblob.cpp
CONST	SEGMENT
__real@4@40008000000000000000 DD 040000000r	; 2
CONST	ENDS
;	COMDAT __real@4@40048000000000000000
CONST	SEGMENT
__real@4@40048000000000000000 DD 042000000r	; 32
CONST	ENDS
;	COMDAT __real@4@4000c90fdb0000000000
CONST	SEGMENT
__real@4@4000c90fdb0000000000 DD 040490fdbr	; 3.14159
CONST	ENDS
;	COMDAT __real@4@40019000000000000000
CONST	SEGMENT
__real@4@40019000000000000000 DD 040900000r	; 4.5
CONST	ENDS
;	COMDAT __real@8@4001a000000000000000
CONST	SEGMENT
__real@8@4001a000000000000000 DQ 04014000000000000r ; 5
CONST	ENDS
;	COMDAT __real@4@4002f000000000000000
CONST	SEGMENT
__real@4@4002f000000000000000 DD 041700000r	; 15
CONST	ENDS
;	COMDAT __real@4@40008ccccd0000000000
CONST	SEGMENT
__real@4@40008ccccd0000000000 DD 0400ccccdr	; 2.2
CONST	ENDS
;	COMDAT __real@4@40058200000000000000
CONST	SEGMENT
__real@4@40058200000000000000 DD 042820000r	; 65
CONST	ENDS
;	COMDAT __real@4@4001c9999a0000000000
CONST	SEGMENT
__real@4@4001c9999a0000000000 DD 040c9999ar	; 6.3
CONST	ENDS
;	COMDAT __real@4@4004ac00000000000000
CONST	SEGMENT
__real@4@4004ac00000000000000 DD 0422c0000r	; 43
CONST	ENDS
;	COMDAT __real@4@4001a333330000000000
CONST	SEGMENT
__real@4@4001a333330000000000 DD 040a33333r	; 5.1
CONST	ENDS
;	COMDAT __real@4@4004e400000000000000
CONST	SEGMENT
__real@4@4004e400000000000000 DD 042640000r	; 57
CONST	ENDS
;	COMDAT __real@4@4000e000000000000000
CONST	SEGMENT
__real@4@4000e000000000000000 DD 040600000r	; 3.5
CONST	ENDS
;	COMDAT __real@4@4005ba00000000000000
CONST	SEGMENT
__real@4@4005ba00000000000000 DD 042ba0000r	; 93
CONST	ENDS
;	COMDAT __real@4@4001eccccd0000000000
CONST	SEGMENT
__real@4@4001eccccd0000000000 DD 040eccccdr	; 7.4
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@4@400a85f6660000000000
CONST	SEGMENT
__real@4@400a85f6660000000000 DD 04505f666r	; 2143.4
CONST	ENDS
;	COMDAT __real@4@400abec4cd0000000000
CONST	SEGMENT
__real@4@400abec4cd0000000000 DD 0453ec4cdr	; 3052.3
CONST	ENDS
;	COMDAT __real@4@400b985ccd0000000000
CONST	SEGMENT
__real@4@400b985ccd0000000000 DD 045985ccdr	; 4875.6
CONST	ENDS
;	COMDAT __real@4@4001c000000000000000
CONST	SEGMENT
__real@4@4001c000000000000000 DD 040c00000r	; 6
CONST	ENDS
;	COMDAT __real@4@40028000000000000000
CONST	SEGMENT
__real@4@40028000000000000000 DD 041000000r	; 8
CONST	ENDS
;	COMDAT __real@4@400ac446660000000000
CONST	SEGMENT
__real@4@400ac446660000000000 DD 045444666r	; 3140.4
CONST	ENDS
;	COMDAT __real@4@400b9c52660000000000
CONST	SEGMENT
__real@4@400b9c52660000000000 DD 0459c5266r	; 5002.3
CONST	ENDS
;	COMDAT __real@4@400a94299a0000000000
CONST	SEGMENT
__real@4@400a94299a0000000000 DD 04514299ar	; 2370.6
CONST	ENDS
;	COMDAT __real@4@4002a000000000000000
CONST	SEGMENT
__real@4@4002a000000000000000 DD 041200000r	; 10
CONST	ENDS
;	COMDAT __real@4@4002c000000000000000
CONST	SEGMENT
__real@4@4002c000000000000000 DD 041400000r	; 12
CONST	ENDS
;	COMDAT __real@4@400cae119a0000000000
CONST	SEGMENT
__real@4@400cae119a0000000000 DD 0462e119ar	; 11140.4
CONST	ENDS
;	COMDAT __real@4@400c8ca9330000000000
CONST	SEGMENT
__real@4@400c8ca9330000000000 DD 0460ca933r	; 9002.3
CONST	ENDS
;	COMDAT __real@4@400d87b5330000000000
CONST	SEGMENT
__real@4@400d87b5330000000000 DD 04687b533r	; 17370.6
CONST	ENDS
;	COMDAT __real@4@40068f66660000000000
CONST	SEGMENT
__real@4@40068f66660000000000 DD 0430f6666r	; 143.4
CONST	ENDS
;	COMDAT __real@4@400a8044cd0000000000
CONST	SEGMENT
__real@4@400a8044cd0000000000 DD 0450044cdr	; 2052.3
CONST	ENDS
;	COMDAT __real@4@400af2399a0000000000
CONST	SEGMENT
__real@4@400af2399a0000000000 DD 04572399ar	; 3875.6
CONST	ENDS
;	COMDAT __real@4@4000a666660000000000
CONST	SEGMENT
__real@4@4000a666660000000000 DD 040266666r	; 2.6
CONST	ENDS
;	COMDAT __real@4@4003c800000000000000
CONST	SEGMENT
__real@4@4003c800000000000000 DD 041c80000r	; 25
CONST	ENDS
;	COMDAT __real@4@3ffccccccd0000000000
CONST	SEGMENT
__real@4@3ffccccccd0000000000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@4000c666660000000000
CONST	SEGMENT
__real@4@4000c666660000000000 DD 040466666r	; 3.1
CONST	ENDS
;	COMDAT __real@4@4003f000000000000000
CONST	SEGMENT
__real@4@4003f000000000000000 DD 041f00000r	; 30
CONST	ENDS
;	COMDAT __real@4@4005dc00000000000000
CONST	SEGMENT
__real@4@4005dc00000000000000 DD 042dc0000r	; 110
CONST	ENDS
;	COMDAT __real@4@40069600000000000000
CONST	SEGMENT
__real@4@40069600000000000000 DD 043160000r	; 150
CONST	ENDS
;	COMDAT __real@4@3ffea3d70a0000000000
CONST	SEGMENT
__real@4@3ffea3d70a0000000000 DD 03f23d70ar	; 0.64
CONST	ENDS
;	COMDAT __real@4@4000a3d70a0000000000
CONST	SEGMENT
__real@4@4000a3d70a0000000000 DD 04023d70ar	; 2.56
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@40009333330000000000
CONST	SEGMENT
__real@4@40009333330000000000 DD 040133333r	; 2.3
CONST	ENDS
;	COMDAT __real@4@3ffdcccccd0000000000
CONST	SEGMENT
__real@4@3ffdcccccd0000000000 DD 03ecccccdr	; 0.4
CONST	ENDS
;	COMDAT __real@4@400a9c40000000000000
CONST	SEGMENT
__real@4@400a9c40000000000000 DD 0451c4000r	; 2500
CONST	ENDS
;	COMDAT __real@8@3fff8000000000000000
CONST	SEGMENT
__real@8@3fff8000000000000000 DQ 03ff0000000000000r ; 1
CONST	ENDS
;	COMDAT __real@4@3ffba3d70a0000000000
CONST	SEGMENT
__real@4@3ffba3d70a0000000000 DD 03da3d70ar	; 0.08
CONST	ENDS
;	COMDAT __real@4@00000000000000000000
CONST	SEGMENT
__real@4@00000000000000000000 DD 000000000r	; 0
CONST	ENDS
_TEXT	SEGMENT
_rx$ = -16
_ry$ = -20
_rz$ = -28
_t$ = -4
_mbx1$ = -8
_mby1$ = -24
_mbz1$ = -36
_mbx2$ = -12
_mby2$ = -32
_mbz2$ = -40
_m$17237 = -108
_r$17238 = -112
_k$17239 = -116
_k$17251 = -44
_j$17255 = -120
_i$17259 = -124
_v$17263 = -152
_r$17264 = -140
_d1$17265 = -156
_d2$17267 = -160
_ra$17269 = -128
?p_flareblob_run@@YAXXZ PROC NEAR			; p_flareblob_run
; File E:\prj64k\glAss (eventad)\parts\p_flareblob.cpp
; Line 18
	push	ebp
	mov	ebp, esp
	sub	esp, 180				; 000000b4H
; Line 24
	call	?glaReset@@YAXXZ			; glaReset
$L17222:
; Line 26
	call	?glaRelBeat@@YAMXZ			; glaRelBeat
	fdiv	DWORD PTR __real@4@40008000000000000000
	fstp	DWORD PTR _t$[ebp]
; Line 29
	push	1051260355				; 3ea8f5c3H
	call	?glaCls@@YAXM@Z				; glaCls
	add	esp, 4
; Line 30
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 32
	fld	DWORD PTR _t$[ebp]
	fadd	DWORD PTR __real@4@40048000000000000000
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@40019000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fmul	QWORD PTR __real@8@4001a000000000000000
	fstp	DWORD PTR _mbx1$[ebp]
; Line 33
	fld	DWORD PTR _t$[ebp]
	fadd	DWORD PTR __real@4@4002f000000000000000
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@40008ccccd0000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@4001a000000000000000
	fstp	DWORD PTR _mby1$[ebp]
; Line 34
	fld	DWORD PTR _t$[ebp]
	fadd	DWORD PTR __real@4@40058200000000000000
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@4001c9999a0000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@4001a000000000000000
	fstp	DWORD PTR _mbz1$[ebp]
; Line 35
	fld	DWORD PTR _t$[ebp]
	fadd	DWORD PTR __real@4@4004ac00000000000000
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@4001a333330000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fmul	QWORD PTR __real@8@4001a000000000000000
	fstp	DWORD PTR _mbx2$[ebp]
; Line 36
	fld	DWORD PTR _t$[ebp]
	fadd	DWORD PTR __real@4@4004e400000000000000
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@4000e000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fmul	QWORD PTR __real@8@4001a000000000000000
	fstp	DWORD PTR _mby2$[ebp]
; Line 37
	fld	DWORD PTR _t$[ebp]
	fadd	DWORD PTR __real@4@4005ba00000000000000
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@4001eccccd0000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fmul	QWORD PTR __real@8@4001a000000000000000
	fstp	DWORD PTR _mbz2$[ebp]
; Line 39
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@40008000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17231
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@40018000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L17231
; Line 40
	fld	DWORD PTR __real@4@400a85f6660000000000
	fmul	DWORD PTR _t$[ebp]
	fstp	DWORD PTR _rx$[ebp]
; Line 41
	fld	DWORD PTR __real@4@400abec4cd0000000000
	fmul	DWORD PTR _t$[ebp]
	fstp	DWORD PTR _ry$[ebp]
; Line 42
	fld	DWORD PTR __real@4@400b985ccd0000000000
	fmul	DWORD PTR _t$[ebp]
	fstp	DWORD PTR _rz$[ebp]
; Line 43
	jmp	$L17236
$L17231:
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@4001c000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17233
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@40028000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L17233
; Line 44
	fld	DWORD PTR __real@4@400ac446660000000000
	fmul	DWORD PTR _t$[ebp]
	fstp	DWORD PTR _rx$[ebp]
; Line 45
	fld	DWORD PTR __real@4@400b9c52660000000000
	fmul	DWORD PTR _t$[ebp]
	fstp	DWORD PTR _ry$[ebp]
; Line 46
	fld	DWORD PTR __real@4@400a94299a0000000000
	fmul	DWORD PTR _t$[ebp]
	fstp	DWORD PTR _rz$[ebp]
; Line 47
	jmp	SHORT $L17236
$L17233:
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@4002a000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17235
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@4002c000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L17235
; Line 48
	fld	DWORD PTR __real@4@400cae119a0000000000
	fmul	DWORD PTR _t$[ebp]
	fstp	DWORD PTR _rx$[ebp]
; Line 49
	fld	DWORD PTR __real@4@400c8ca9330000000000
	fmul	DWORD PTR _t$[ebp]
	fstp	DWORD PTR _ry$[ebp]
; Line 50
	fld	DWORD PTR __real@4@400d87b5330000000000
	fmul	DWORD PTR _t$[ebp]
	fstp	DWORD PTR _rz$[ebp]
; Line 51
	jmp	SHORT $L17236
$L17235:
; Line 52
	fld	DWORD PTR __real@4@40068f66660000000000
	fmul	DWORD PTR _t$[ebp]
	fstp	DWORD PTR _rx$[ebp]
; Line 53
	fld	DWORD PTR __real@4@400a8044cd0000000000
	fmul	DWORD PTR _t$[ebp]
	fstp	DWORD PTR _ry$[ebp]
; Line 54
	fld	DWORD PTR __real@4@400af2399a0000000000
	fmul	DWORD PTR _t$[ebp]
	fstp	DWORD PTR _rz$[ebp]
$L17236:
; Line 58
	lea	eax, DWORD PTR _m$17237[ebp]
	push	eax
	mov	ecx, DWORD PTR _rz$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ry$[ebp]
	push	edx
	mov	eax, DWORD PTR _rx$[ebp]
	push	eax
	call	?build_rotation_matrix@@YAXMMMPAUMATRIX@@@Z ; build_rotation_matrix
	add	esp, 16					; 00000010H
; Line 67
	push	108					; 0000006cH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 68
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 72
	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12
; Line 73
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 74
	mov	DWORD PTR _k$17239[ebp], 0
	jmp	SHORT $L17240
$L17241:
	mov	ecx, DWORD PTR _k$17239[ebp]
	add	ecx, 1
	mov	DWORD PTR _k$17239[ebp], ecx
$L17240:
	cmp	DWORD PTR _k$17239[ebp], 15		; 0000000fH
	jge	$L17242
; Line 75
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000a666660000000000
	fild	DWORD PTR _k$17239[ebp]
	fmul	DWORD PTR __real@4@4003c800000000000000
	fsubp	ST(1), ST(0)
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -164+[ebp]
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	fadd	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR -168+[ebp]
	fld	DWORD PTR _t$[ebp]
	fmul	DWORD PTR __real@4@4000c666660000000000
	fild	DWORD PTR _k$17239[ebp]
	fmul	DWORD PTR __real@4@4003f000000000000000
	faddp	ST(1), ST(0)
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -172+[ebp]
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	fadd	DWORD PTR -168+[ebp]
	fstp	DWORD PTR _r$17238[ebp]
; Line 76
	fild	DWORD PTR _k$17239[ebp]
	fdiv	DWORD PTR __real@4@4005dc00000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fild	DWORD PTR _k$17239[ebp]
	fdiv	DWORD PTR __real@4@4003f000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fild	DWORD PTR _k$17239[ebp]
	fdiv	DWORD PTR __real@4@40069600000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12
; Line 77
	push	0
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	0
	fld	DWORD PTR _r$17238[ebp]
	fmul	DWORD PTR __real@4@3ffea3d70a0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _r$17238[ebp]
	fmul	DWORD PTR __real@4@4000a3d70a0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	1119092736				; 42b40000H
	push	0
	fild	DWORD PTR _k$17239[ebp]
	fld	DWORD PTR _t$[ebp]
	fdiv	DWORD PTR __real@4@40028000000000000000
	faddp	ST(1), ST(0)
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -176+[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	push	1061158912				; 3f400000H
	call	?glaQuadR@@YAXMMMMMMMMMM@Z		; glaQuadR
	add	esp, 40					; 00000028H
; Line 78
	jmp	$L17241
$L17242:
; Line 79
	call	DWORD PTR __imp__glEnd@0
; Line 91
	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12
; Line 92
	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8
; Line 94
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glDisable@4
; Line 95
	push	2929					; 00000b71H
	call	DWORD PTR __imp__glDisable@4
; Line 106
	push	102					; 00000066H
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
; Line 107
	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4
; Line 109
	push	7
	call	DWORD PTR __imp__glBegin@4
; Line 110
	push	1053609165				; 3ecccccdH
	push	1053609165				; 3ecccccdH
	push	1053609165				; 3ecccccdH
	call	DWORD PTR __imp__glColor3f@12
; Line 112
	mov	DWORD PTR _k$17251[ebp], -1061158912	; c0c00000H
	jmp	SHORT $L17252
$L17253:
	fld	DWORD PTR _k$17251[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _k$17251[ebp]
$L17252:
	fld	DWORD PTR _k$17251[ebp]
	fcomp	DWORD PTR __real@4@4001c000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	je	$L17254
; Line 113
	mov	DWORD PTR _j$17255[ebp], -1061158912	; c0c00000H
	jmp	SHORT $L17256
$L17257:
	fld	DWORD PTR _j$17255[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _j$17255[ebp]
$L17256:
	fld	DWORD PTR _j$17255[ebp]
	fcomp	DWORD PTR __real@4@4001c000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	je	$L17258
; Line 114
	mov	DWORD PTR _i$17259[ebp], -1061158912	; c0c00000H
	jmp	SHORT $L17260
$L17261:
	fld	DWORD PTR _i$17259[ebp]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _i$17259[ebp]
$L17260:
	fld	DWORD PTR _i$17259[ebp]
	fcomp	DWORD PTR __real@4@4001c000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	je	$L17262
; Line 117
	mov	edx, DWORD PTR _i$17259[ebp]
	mov	DWORD PTR _v$17263[ebp], edx
; Line 118
	mov	eax, DWORD PTR _j$17255[ebp]
	mov	DWORD PTR _v$17263[ebp+4], eax
; Line 119
	mov	ecx, DWORD PTR _k$17251[ebp]
	mov	DWORD PTR _v$17263[ebp+8], ecx
; Line 123
	fld	DWORD PTR _v$17263[ebp]
	fsub	DWORD PTR _mbx1$[ebp]
	fld	DWORD PTR _v$17263[ebp]
	fsub	DWORD PTR _mbx1$[ebp]
	fmulp	ST(1), ST(0)
	fld	DWORD PTR _v$17263[ebp+4]
	fsub	DWORD PTR _mby1$[ebp]
	fld	DWORD PTR _v$17263[ebp+4]
	fsub	DWORD PTR _mby1$[ebp]
	fmulp	ST(1), ST(0)
	faddp	ST(1), ST(0)
	fld	DWORD PTR _v$17263[ebp+8]
	fsub	DWORD PTR _mbz1$[ebp]
	fld	DWORD PTR _v$17263[ebp+8]
	fsub	DWORD PTR _mbz1$[ebp]
	fmulp	ST(1), ST(0)
	faddp	ST(1), ST(0)
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sqrt
	add	esp, 8
	fstp	DWORD PTR _d1$17265[ebp]
; Line 124
	fld	DWORD PTR _v$17263[ebp]
	fsub	DWORD PTR _mbx2$[ebp]
	fld	DWORD PTR _v$17263[ebp]
	fsub	DWORD PTR _mbx2$[ebp]
	fmulp	ST(1), ST(0)
	fld	DWORD PTR _v$17263[ebp+4]
	fsub	DWORD PTR _mby2$[ebp]
	fld	DWORD PTR _v$17263[ebp+4]
	fsub	DWORD PTR _mby2$[ebp]
	fmulp	ST(1), ST(0)
	faddp	ST(1), ST(0)
	fld	DWORD PTR _v$17263[ebp+8]
	fsub	DWORD PTR _mbz2$[ebp]
	fld	DWORD PTR _v$17263[ebp+8]
	fsub	DWORD PTR _mbz2$[ebp]
	fmulp	ST(1), ST(0)
	faddp	ST(1), ST(0)
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sqrt
	add	esp, 8
	fstp	DWORD PTR _d2$17267[ebp]
; Line 129
	fld	DWORD PTR _d1$17265[ebp]
	fmul	DWORD PTR _d2$17267[ebp]
	fdiv	DWORD PTR __real@4@4002c000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR _ra$17269[ebp]
; Line 132
	fmul	DWORD PTR __real@4@40009333330000000000
	fstp	DWORD PTR _ra$17269[ebp]
; Line 136
	lea	edx, DWORD PTR _r$17264[ebp]
	push	edx
	lea	eax, DWORD PTR _v$17263[ebp]
	push	eax
	lea	ecx, DWORD PTR _m$17237[ebp]
	push	ecx
	call	?vector_mul@@YAXPAUMATRIX@@PAUVECTOR@@1@Z ; vector_mul
	add	esp, 12					; 0000000cH
; Line 138
	push	-1049624576				; c1700000H
	push	1116078080				; 42860000H
	lea	edx, DWORD PTR _v$17263[ebp]
	push	edx
	lea	eax, DWORD PTR _r$17264[ebp]
	push	eax
	call	?vector_project@@YAXPAUVECTOR@@0MM@Z	; vector_project
	add	esp, 16					; 00000010H
; Line 140
	fld	DWORD PTR _v$17263[ebp]
	fsub	DWORD PTR __real@4@3ffdcccccd0000000000
	fstp	DWORD PTR _v$17263[ebp]
; Line 142
	fld	DWORD PTR _v$17263[ebp+8]
	fmul	DWORD PTR _v$17263[ebp+8]
	fmul	DWORD PTR __real@4@400a9c40000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_fabs
	add	esp, 8
	fadd	QWORD PTR __real@8@3fff8000000000000000
	fst	DWORD PTR -180+[ebp]
	fdivr	DWORD PTR _ra$17269[ebp]
	fst	DWORD PTR _ra$17269[ebp]
; Line 144
	fsub	DWORD PTR __real@4@3ffba3d70a0000000000
	fstp	DWORD PTR _ra$17269[ebp]
; Line 145
	fld	DWORD PTR _ra$17269[ebp]
	fcomp	DWORD PTR __real@4@3ffd99999a0000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17272
	mov	DWORD PTR _ra$17269[ebp], 1050253722	; 3e99999aH
$L17272:
; Line 147
	fld	DWORD PTR _ra$17269[ebp]
	fcomp	DWORD PTR __real@4@00000000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17273
; Line 151
	push	1063675494				; 3f666666H
	push	1061997773				; 3f4ccccdH
	push	1060320051				; 3f333333H
	call	DWORD PTR __imp__glColor3f@12
; Line 152
	push	0
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	0
	mov	ecx, DWORD PTR _ra$17269[ebp]
	push	ecx
	mov	edx, DWORD PTR _ra$17269[ebp]
	push	edx
	mov	eax, DWORD PTR _v$17263[ebp+8]
	push	eax
	mov	ecx, DWORD PTR _v$17263[ebp+4]
	push	ecx
	mov	edx, DWORD PTR _v$17263[ebp]
	push	edx
	call	?glaQuad@@YAXMMMMMMMMM@Z		; glaQuad
	add	esp, 36					; 00000024H
$L17273:
; Line 154
	jmp	$L17261
$L17262:
; Line 155
	jmp	$L17257
$L17258:
; Line 156
	jmp	$L17253
$L17254:
; Line 158
	call	DWORD PTR __imp__glEnd@0
; Line 163
	call	?glaBlit@@YAXXZ				; glaBlit
; Line 165
	call	?glaExit@@YAHXZ				; glaExit
	test	eax, eax
	jne	SHORT $L17274
	fld	DWORD PTR _t$[ebp]
	fcomp	DWORD PTR __real@4@4002c000000000000000
	fnstsw	ax
	test	ah, 1
	jne	$L17222
$L17274:
; Line 167
	mov	esp, ebp
	pop	ebp
	ret	0
?p_flareblob_run@@YAXXZ ENDP				; p_flareblob_run
_TEXT	ENDS
END
