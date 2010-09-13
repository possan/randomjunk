	TITLE	D:\prj64k\glAss (eventad)\misccode\gla_stuff2.cpp
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
;	COMDAT ??_C@_04A@?$AA?$AA?$AA?$AA?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_0DC@MPAE@abcdefghijklmnopqrstuvwxyz012345@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT _IsEqualGUID
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _==
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pow2@@YAHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?init_exp@@YAFF@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?get_next_code@@YAFXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?decode@@YAFPAEFF@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaUploadTexture@@YAXHPAJHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaFreeTexture@@YAXH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaSetTexture@@YAXH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaUploadGif@@YAXHPAEJ@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaQuad@@YAXMMMMMMMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaRotate2d@@YAXPAM0MMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaQuadR@@YAXMMMMMMMMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaDefaultProjection@@YAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?misc_strlen@@YAJPAD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaDrawChar@@YAXMMMMMD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaDrawString@@YAXMMMMMMPAD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaDrawStringL@@YAXMMMMMMPAD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaReset@@YAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaTime@@YAMXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaRelBeat@@YAMXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?tex_id@@3PAIA					; tex_id
PUBLIC	?fonttable@@3PADA				; fonttable
PUBLIC	??_C@_0DC@MPAE@abcdefghijklmnopqrstuvwxyz012345@ ; `string'
PUBLIC	?resettime@@3KA					; resettime
PUBLIC	?resetbeat@@3MA					; resetbeat
_BSS	SEGMENT
?tex_id@@3PAIA DD 03e8H DUP (?)				; tex_id
?resettime@@3KA DD 01H DUP (?)				; resettime
?resetbeat@@3MA DD 01H DUP (?)				; resetbeat
_navail_bytes DW 01H DUP (?)
	ALIGN	4

_nbits_left DW	01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
_code_mask DD	00H
	DD	01H
	DD	03H
	DD	07H
	DD	0fH
	DD	01fH
	DD	03fH
	DD	07fH
	DD	0ffH
	DD	01ffH
	DD	03ffH
	DD	07ffH
	DD	0fffH
?fonttable@@3PADA DD FLAT:??_C@_0DC@MPAE@abcdefghijklmnopqrstuvwxyz012345@ ; fonttable
_DATA	ENDS
;	COMDAT ??_C@_0DC@MPAE@abcdefghijklmnopqrstuvwxyz012345@
CONST	SEGMENT
??_C@_0DC@MPAE@abcdefghijklmnopqrstuvwxyz012345@ DB 'abcdefghijklmnopqrst'
	DB	'uvwxyz0123456789!?@"'':,.-/()_', 00H	; `string'
CONST	ENDS
PUBLIC	?pow2@@YAHH@Z					; pow2
;	COMDAT ?pow2@@YAHH@Z
_TEXT	SEGMENT
_value$ = 8
_i$ = -4
_rvalue$ = -8
?pow2@@YAHH@Z PROC NEAR					; pow2, COMDAT
; File d:\prj64k\glass (eventad)\misccode\gla_stuff2.cpp
; Line 9
	push	ebp
	mov	ebp, esp
	sub	esp, 72					; 00000048H
	push	ebx
	push	esi
	push	edi
; Line 10
	mov	DWORD PTR _rvalue$[ebp], 2
; Line 11
	cmp	DWORD PTR _value$[ebp], 0
	jne	SHORT $L19414
; Line 12
	mov	eax, 1
	jmp	SHORT $L19417
$L19414:
; Line 13
	cmp	DWORD PTR _value$[ebp], 1
	jne	SHORT $L19416
; Line 14
	mov	eax, 2
	jmp	SHORT $L19417
$L19416:
; Line 17
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19418
$L19419:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$L19418:
	mov	ecx, DWORD PTR _value$[ebp]
	sub	ecx, 1
	cmp	DWORD PTR _i$[ebp], ecx
	jge	SHORT $L19420
; Line 18
	mov	edx, DWORD PTR _rvalue$[ebp]
	shl	edx, 1
	mov	DWORD PTR _rvalue$[ebp], edx
	jmp	SHORT $L19419
$L19420:
; Line 19
	mov	eax, DWORD PTR _rvalue$[ebp]
$L19417:
; Line 21
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?pow2@@YAHH@Z ENDP					; pow2
_TEXT	ENDS
PUBLIC	?init_exp@@YAFF@Z				; init_exp
_BSS	SEGMENT
	ALIGN	4

_curr_size DW	01H DUP (?)
	ALIGN	4

_clear	DW	01H DUP (?)
	ALIGN	4

_ending	DW	01H DUP (?)
	ALIGN	4

_newcodes DW	01H DUP (?)
	ALIGN	4

_top_slot DW	01H DUP (?)
	ALIGN	4

_slot	DW	01H DUP (?)
_BSS	ENDS
;	COMDAT ?init_exp@@YAFF@Z
_TEXT	SEGMENT
_size$ = 8
?init_exp@@YAFF@Z PROC NEAR				; init_exp, COMDAT
; Line 57
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 58
	movsx	eax, WORD PTR _size$[ebp]
	add	eax, 1
	mov	WORD PTR _curr_size, ax
; Line 59
	movsx	ecx, WORD PTR _curr_size
	mov	edx, 1
	shl	edx, cl
	mov	WORD PTR _top_slot, dx
; Line 60
	movsx	ecx, WORD PTR _size$[ebp]
	mov	eax, 1
	shl	eax, cl
	mov	WORD PTR _clear, ax
; Line 61
	movsx	ecx, WORD PTR _clear
	add	ecx, 1
	mov	WORD PTR _ending, cx
; Line 62
	movsx	edx, WORD PTR _ending
	add	edx, 1
	mov	WORD PTR _newcodes, dx
	mov	ax, WORD PTR _newcodes
	mov	WORD PTR _slot, ax
; Line 63
	mov	WORD PTR _nbits_left, 0
	mov	cx, WORD PTR _nbits_left
	mov	WORD PTR _navail_bytes, cx
; Line 64
	xor	ax, ax
; Line 65
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?init_exp@@YAFF@Z ENDP					; init_exp
_TEXT	ENDS
PUBLIC	?get_next_code@@YAFXZ				; get_next_code
_BSS	SEGMENT
	ALIGN	4

_b1	DB	01H DUP (?)
	ALIGN	4

_byte_buff DB	0101H DUP (?)
	ALIGN	4

_pbytes	DD	01H DUP (?)
_gifsource DD	01H DUP (?)
_BSS	ENDS
;	COMDAT ?get_next_code@@YAFXZ
_TEXT	SEGMENT
_i$ = -4
_x$ = -8
_ret$ = -12
?get_next_code@@YAFXZ PROC NEAR				; get_next_code, COMDAT
; Line 68
	push	ebp
	mov	ebp, esp
	sub	esp, 76					; 0000004cH
	push	ebx
	push	esi
	push	edi
; Line 72
	movsx	eax, WORD PTR _nbits_left
	test	eax, eax
	jne	$L19442
; Line 74
	movsx	ecx, WORD PTR _navail_bytes
	test	ecx, ecx
	jg	$L19449
; Line 79
	mov	DWORD PTR _pbytes, OFFSET FLAT:_byte_buff
; Line 80
	mov	edx, DWORD PTR _gifsource
	movzx	ax, BYTE PTR [edx]
	mov	WORD PTR _navail_bytes, ax
	mov	ecx, DWORD PTR _gifsource
	add	ecx, 1
	mov	DWORD PTR _gifsource, ecx
; Line 81
	movsx	edx, WORD PTR _navail_bytes
	test	edx, edx
	jge	SHORT $L19444
; Line 82
	mov	ax, WORD PTR _navail_bytes
	jmp	$L19438
$L19444:
; Line 83
	movsx	eax, WORD PTR _navail_bytes
	test	eax, eax
	je	SHORT $L19449
; Line 85
	mov	WORD PTR _i$[ebp], 0
	jmp	SHORT $L19447
$L19448:
	mov	cx, WORD PTR _i$[ebp]
	add	cx, 1
	mov	WORD PTR _i$[ebp], cx
$L19447:
	movsx	edx, WORD PTR _i$[ebp]
	movsx	eax, WORD PTR _navail_bytes
	cmp	edx, eax
	jge	SHORT $L19449
; Line 87
	mov	ecx, DWORD PTR _gifsource
	movzx	dx, BYTE PTR [ecx]
	mov	WORD PTR _x$[ebp], dx
	mov	eax, DWORD PTR _gifsource
	add	eax, 1
	mov	DWORD PTR _gifsource, eax
; Line 88
	movsx	ecx, WORD PTR _x$[ebp]
	test	ecx, ecx
	jge	SHORT $L19450
; Line 89
	mov	ax, WORD PTR _x$[ebp]
	jmp	$L19438
$L19450:
; Line 90
	movsx	edx, WORD PTR _i$[ebp]
	mov	al, BYTE PTR _x$[ebp]
	mov	BYTE PTR _byte_buff[edx], al
; Line 91
	jmp	SHORT $L19448
$L19449:
; Line 94
	mov	ecx, DWORD PTR _pbytes
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR _b1, dl
	mov	eax, DWORD PTR _pbytes
	add	eax, 1
	mov	DWORD PTR _pbytes, eax
; Line 95
	mov	WORD PTR _nbits_left, 8
; Line 96
	mov	cx, WORD PTR _navail_bytes
	sub	cx, 1
	mov	WORD PTR _navail_bytes, cx
$L19442:
; Line 99
	xor	edx, edx
	mov	dl, BYTE PTR _b1
	movsx	eax, WORD PTR _nbits_left
	mov	ecx, 8
	sub	ecx, eax
	sar	edx, cl
	mov	DWORD PTR _ret$[ebp], edx
$L19453:
; Line 100
	movsx	ecx, WORD PTR _curr_size
	movsx	edx, WORD PTR _nbits_left
	cmp	ecx, edx
	jle	$L19454
; Line 102
	movsx	eax, WORD PTR _navail_bytes
	test	eax, eax
	jg	$L19461
; Line 107
	mov	DWORD PTR _pbytes, OFFSET FLAT:_byte_buff
; Line 108
	mov	ecx, DWORD PTR _gifsource
	movzx	dx, BYTE PTR [ecx]
	mov	WORD PTR _navail_bytes, dx
	mov	eax, DWORD PTR _gifsource
	add	eax, 1
	mov	DWORD PTR _gifsource, eax
; Line 109
	movsx	ecx, WORD PTR _navail_bytes
	test	ecx, ecx
	jge	SHORT $L19456
; Line 110
	mov	ax, WORD PTR _navail_bytes
	jmp	$L19438
$L19456:
; Line 111
	movsx	edx, WORD PTR _navail_bytes
	test	edx, edx
	je	SHORT $L19461
; Line 113
	mov	WORD PTR _i$[ebp], 0
	jmp	SHORT $L19459
$L19460:
	mov	ax, WORD PTR _i$[ebp]
	add	ax, 1
	mov	WORD PTR _i$[ebp], ax
$L19459:
	movsx	ecx, WORD PTR _i$[ebp]
	movsx	edx, WORD PTR _navail_bytes
	cmp	ecx, edx
	jge	SHORT $L19461
; Line 115
	mov	eax, DWORD PTR _gifsource
	movzx	cx, BYTE PTR [eax]
	mov	WORD PTR _x$[ebp], cx
	mov	edx, DWORD PTR _gifsource
	add	edx, 1
	mov	DWORD PTR _gifsource, edx
; Line 116
	movsx	eax, WORD PTR _x$[ebp]
	test	eax, eax
	jge	SHORT $L19462
; Line 117
	mov	ax, WORD PTR _x$[ebp]
	jmp	$L19438
$L19462:
; Line 118
	movsx	ecx, WORD PTR _i$[ebp]
	mov	dl, BYTE PTR _x$[ebp]
	mov	BYTE PTR _byte_buff[ecx], dl
; Line 119
	jmp	SHORT $L19460
$L19461:
; Line 122
	mov	eax, DWORD PTR _pbytes
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR _b1, cl
	mov	edx, DWORD PTR _pbytes
	add	edx, 1
	mov	DWORD PTR _pbytes, edx
; Line 123
	xor	eax, eax
	mov	al, BYTE PTR _b1
	movsx	ecx, WORD PTR _nbits_left
	shl	eax, cl
	mov	ecx, DWORD PTR _ret$[ebp]
	or	ecx, eax
	mov	DWORD PTR _ret$[ebp], ecx
; Line 124
	mov	dx, WORD PTR _nbits_left
	add	dx, 8
	mov	WORD PTR _nbits_left, dx
; Line 125
	mov	ax, WORD PTR _navail_bytes
	sub	ax, 1
	mov	WORD PTR _navail_bytes, ax
; Line 126
	jmp	$L19453
$L19454:
; Line 127
	mov	cx, WORD PTR _nbits_left
	sub	cx, WORD PTR _curr_size
	mov	WORD PTR _nbits_left, cx
; Line 128
	movsx	edx, WORD PTR _curr_size
	mov	eax, DWORD PTR _ret$[ebp]
	and	eax, DWORD PTR _code_mask[edx*4]
	mov	DWORD PTR _ret$[ebp], eax
; Line 129
	mov	ax, WORD PTR _ret$[ebp]
$L19438:
; Line 130
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?get_next_code@@YAFXZ ENDP				; get_next_code
_TEXT	ENDS
PUBLIC	?decode@@YAFPAEFF@Z				; decode
EXTRN	__imp__GlobalAlloc@8:NEAR
EXTRN	__imp__GlobalFree@4:NEAR
_BSS	SEGMENT
_stack	DB	01000H DUP (?)
_suffix	DB	01000H DUP (?)
_prefix	DW	01000H DUP (?)
_BSS	ENDS
;	COMDAT ?decode@@YAFPAEFF@Z
_TEXT	SEGMENT
_buffer$ = 8
_width$ = 12
_height$ = 16
_sp$ = -4
_bufptr$ = -8
_buf$ = -12
_code$ = -16
_fc$ = -20
_oc$ = -24
_bufcnt$ = -28
_output$ = -32
_c$ = -36
_size$ = -40
_ret$ = -44
?decode@@YAFPAEFF@Z PROC NEAR				; decode, COMDAT
; Line 137
	push	ebp
	mov	ebp, esp
	sub	esp, 108				; 0000006cH
	push	ebx
	push	esi
	push	edi
; Line 144
	mov	ax, WORD PTR _height$[ebp]
	sub	ax, 1
	mov	WORD PTR _height$[ebp], ax
; Line 145
	mov	WORD PTR _height$[ebp], 0
; Line 146
	mov	ecx, DWORD PTR _buffer$[ebp]
	mov	DWORD PTR _output$[ebp], ecx
; Line 150
	mov	edx, DWORD PTR _gifsource
	movzx	ax, BYTE PTR [edx]
	mov	WORD PTR _size$[ebp], ax
	mov	ecx, DWORD PTR _gifsource
	add	ecx, 1
	mov	DWORD PTR _gifsource, ecx
; Line 151
	movsx	edx, WORD PTR _size$[ebp]
	test	edx, edx
	jge	SHORT $L19485
; Line 152
	mov	ax, WORD PTR _size$[ebp]
	jmp	$L19472
$L19485:
; Line 153
	movsx	eax, WORD PTR _size$[ebp]
	cmp	eax, 2
	jl	SHORT $L19487
	movsx	ecx, WORD PTR _size$[ebp]
	cmp	ecx, 9
	jle	SHORT $L19486
$L19487:
; Line 154
	or	ax, -1
	jmp	$L19472
$L19486:
; Line 155
	mov	dx, WORD PTR _size$[ebp]
	push	edx
	call	?init_exp@@YAFF@Z			; init_exp
	add	esp, 4
; Line 160
	mov	WORD PTR _fc$[ebp], 0
	mov	ax, WORD PTR _fc$[ebp]
	mov	WORD PTR _oc$[ebp], ax
; Line 164
	movsx	ecx, WORD PTR _width$[ebp]
	add	ecx, 10					; 0000000aH
	push	ecx
	push	4096					; 00001000H
	call	DWORD PTR __imp__GlobalAlloc@8
	mov	DWORD PTR _buf$[ebp], eax
; Line 170
	mov	DWORD PTR _sp$[ebp], OFFSET FLAT:_stack
; Line 171
	mov	edx, DWORD PTR _buf$[ebp]
	mov	DWORD PTR _bufptr$[ebp], edx
; Line 172
	mov	ax, WORD PTR _width$[ebp]
	mov	WORD PTR _bufcnt$[ebp], ax
$L19490:
; Line 182
	call	?get_next_code@@YAFXZ			; get_next_code
	mov	WORD PTR _c$[ebp], ax
	movsx	ecx, WORD PTR _c$[ebp]
	movsx	edx, WORD PTR _ending
	cmp	ecx, edx
	je	$L19491
; Line 187
	movsx	eax, WORD PTR _c$[ebp]
	test	eax, eax
	jge	SHORT $L19492
; Line 189
	mov	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	call	DWORD PTR __imp__GlobalFree@4
; Line 190
	xor	ax, ax
	jmp	$L19472
$L19492:
; Line 195
	movsx	edx, WORD PTR _c$[ebp]
	movsx	eax, WORD PTR _clear
	cmp	edx, eax
	jne	$L19493
; Line 197
	movsx	ecx, WORD PTR _size$[ebp]
	add	ecx, 1
	mov	WORD PTR _curr_size, cx
; Line 198
	mov	dx, WORD PTR _newcodes
	mov	WORD PTR _slot, dx
; Line 199
	movsx	ecx, WORD PTR _curr_size
	mov	eax, 1
	shl	eax, cl
	mov	WORD PTR _top_slot, ax
$L19495:
; Line 204
	call	?get_next_code@@YAFXZ			; get_next_code
	mov	WORD PTR _c$[ebp], ax
	movsx	ecx, WORD PTR _c$[ebp]
	movsx	edx, WORD PTR _clear
	cmp	ecx, edx
	jne	SHORT $L19496
	jmp	SHORT $L19495
$L19496:
; Line 209
	movsx	eax, WORD PTR _c$[ebp]
	movsx	ecx, WORD PTR _ending
	cmp	eax, ecx
	jne	SHORT $L19497
; Line 210
	jmp	$L19491
$L19497:
; Line 217
	movsx	edx, WORD PTR _c$[ebp]
	movsx	eax, WORD PTR _slot
	cmp	edx, eax
	jl	SHORT $L19498
; Line 218
	mov	WORD PTR _c$[ebp], 0
$L19498:
; Line 220
	mov	cx, WORD PTR _c$[ebp]
	mov	WORD PTR _fc$[ebp], cx
	mov	dx, WORD PTR _fc$[ebp]
	mov	WORD PTR _oc$[ebp], dx
; Line 230
	mov	eax, DWORD PTR _bufptr$[ebp]
	mov	cl, BYTE PTR _c$[ebp]
	mov	BYTE PTR [eax], cl
	mov	edx, DWORD PTR _bufptr$[ebp]
	add	edx, 1
	mov	DWORD PTR _bufptr$[ebp], edx
; Line 231
	mov	eax, DWORD PTR _output$[ebp]
	mov	cl, BYTE PTR _c$[ebp]
	mov	BYTE PTR [eax], cl
	mov	edx, DWORD PTR _output$[ebp]
	add	edx, 1
	mov	DWORD PTR _output$[ebp], edx
; Line 233
	mov	ax, WORD PTR _bufcnt$[ebp]
	sub	ax, 1
	mov	WORD PTR _bufcnt$[ebp], ax
	movsx	ecx, WORD PTR _bufcnt$[ebp]
	test	ecx, ecx
	jne	SHORT $L19501
; Line 235
	mov	edx, DWORD PTR _buf$[ebp]
	mov	DWORD PTR _bufptr$[ebp], edx
; Line 236
	mov	ax, WORD PTR _width$[ebp]
	mov	WORD PTR _bufcnt$[ebp], ax
$L19501:
; Line 239
	jmp	$L19515
$L19493:
; Line 246
	mov	cx, WORD PTR _c$[ebp]
	mov	WORD PTR _code$[ebp], cx
; Line 254
	movsx	edx, WORD PTR _code$[ebp]
	movsx	eax, WORD PTR _slot
	cmp	edx, eax
	jl	SHORT $L19503
; Line 256
	mov	cx, WORD PTR _oc$[ebp]
	mov	WORD PTR _code$[ebp], cx
; Line 257
	mov	edx, DWORD PTR _sp$[ebp]
	mov	al, BYTE PTR _fc$[ebp]
	mov	BYTE PTR [edx], al
	mov	ecx, DWORD PTR _sp$[ebp]
	add	ecx, 1
	mov	DWORD PTR _sp$[ebp], ecx
$L19503:
; Line 263
	movsx	edx, WORD PTR _code$[ebp]
	movsx	eax, WORD PTR _newcodes
	cmp	edx, eax
	jl	SHORT $L19507
; Line 265
	movsx	ecx, WORD PTR _code$[ebp]
	mov	edx, DWORD PTR _sp$[ebp]
	mov	al, BYTE PTR _suffix[ecx]
	mov	BYTE PTR [edx], al
	mov	ecx, DWORD PTR _sp$[ebp]
	add	ecx, 1
	mov	DWORD PTR _sp$[ebp], ecx
; Line 266
	movsx	edx, WORD PTR _code$[ebp]
	mov	ax, WORD PTR _prefix[edx*2]
	mov	WORD PTR _code$[ebp], ax
; Line 267
	jmp	SHORT $L19503
$L19507:
; Line 276
	mov	ecx, DWORD PTR _sp$[ebp]
	mov	dl, BYTE PTR _code$[ebp]
	mov	BYTE PTR [ecx], dl
	mov	eax, DWORD PTR _sp$[ebp]
	add	eax, 1
	mov	DWORD PTR _sp$[ebp], eax
; Line 277
	movsx	ecx, WORD PTR _slot
	movsx	edx, WORD PTR _top_slot
	cmp	ecx, edx
	jge	SHORT $L19509
; Line 279
	mov	ax, WORD PTR _code$[ebp]
	mov	WORD PTR _fc$[ebp], ax
; Line 280
	movsx	ecx, WORD PTR _slot
	mov	dl, BYTE PTR _code$[ebp]
	mov	BYTE PTR _suffix[ecx], dl
; Line 281
	movsx	eax, WORD PTR _slot
	mov	cx, WORD PTR _oc$[ebp]
	mov	WORD PTR _prefix[eax*2], cx
	mov	dx, WORD PTR _slot
	add	dx, 1
	mov	WORD PTR _slot, dx
; Line 282
	mov	ax, WORD PTR _c$[ebp]
	mov	WORD PTR _oc$[ebp], ax
$L19509:
; Line 284
	movsx	ecx, WORD PTR _slot
	movsx	edx, WORD PTR _top_slot
	cmp	ecx, edx
	jl	SHORT $L19512
; Line 285
	movsx	eax, WORD PTR _curr_size
	cmp	eax, 12					; 0000000cH
	jge	SHORT $L19512
; Line 287
	mov	cx, WORD PTR _top_slot
	shl	cx, 1
	mov	WORD PTR _top_slot, cx
; Line 288
	mov	dx, WORD PTR _curr_size
	add	dx, 1
	mov	WORD PTR _curr_size, dx
$L19512:
; Line 296
	cmp	DWORD PTR _sp$[ebp], OFFSET FLAT:_stack
	jbe	SHORT $L19515
; Line 297
	mov	eax, DWORD PTR _sp$[ebp]
	sub	eax, 1
	mov	DWORD PTR _sp$[ebp], eax
	mov	ecx, DWORD PTR _bufptr$[ebp]
	mov	edx, DWORD PTR _sp$[ebp]
	mov	al, BYTE PTR [edx]
	mov	BYTE PTR [ecx], al
	mov	ecx, DWORD PTR _bufptr$[ebp]
	add	ecx, 1
	mov	DWORD PTR _bufptr$[ebp], ecx
; Line 298
	mov	edx, DWORD PTR _output$[ebp]
	mov	eax, DWORD PTR _sp$[ebp]
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR [edx], cl
	mov	edx, DWORD PTR _output$[ebp]
	add	edx, 1
	mov	DWORD PTR _output$[ebp], edx
; Line 299
	mov	ax, WORD PTR _bufcnt$[ebp]
	sub	ax, 1
	mov	WORD PTR _bufcnt$[ebp], ax
	movsx	ecx, WORD PTR _bufcnt$[ebp]
	test	ecx, ecx
	jne	SHORT $L19516
; Line 301
	mov	edx, DWORD PTR _buf$[ebp]
	mov	DWORD PTR _bufptr$[ebp], edx
; Line 302
	mov	ax, WORD PTR _width$[ebp]
	mov	WORD PTR _bufcnt$[ebp], ax
$L19516:
; Line 304
	jmp	SHORT $L19512
$L19515:
; Line 306
	jmp	$L19490
$L19491:
; Line 307
	mov	WORD PTR _ret$[ebp], 0
; Line 309
	mov	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	call	DWORD PTR __imp__GlobalFree@4
; Line 310
	mov	ax, WORD PTR _ret$[ebp]
$L19472:
; Line 311
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?decode@@YAFPAEFF@Z ENDP				; decode
_TEXT	ENDS
PUBLIC	?glaUploadTexture@@YAXHPAJHH@Z			; glaUploadTexture
EXTRN	__imp__glGenTextures@8:NEAR
EXTRN	__fltused:NEAR
EXTRN	__imp__glPixelStorei@8:NEAR
EXTRN	__imp__glShadeModel@4:NEAR
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glTexImage2D@36:NEAR
EXTRN	__imp__glTexParameterf@12:NEAR
EXTRN	__imp__glBindTexture@8:NEAR
;	COMDAT ?glaUploadTexture@@YAXHPAJHH@Z
_TEXT	SEGMENT
_n$ = 8
_source$ = 12
_w$ = 16
_h$ = 20
?glaUploadTexture@@YAXHPAJHH@Z PROC NEAR		; glaUploadTexture, COMDAT
; Line 315
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 316
	push	1
	push	3317					; 00000cf5H
	call	DWORD PTR __imp__glPixelStorei@8
; Line 317
	mov	eax, DWORD PTR _n$[ebp]
	lea	ecx, DWORD PTR ?tex_id@@3PAIA[eax*4]
	push	ecx
	push	1
	call	DWORD PTR __imp__glGenTextures@8
; Line 319
	push	7425					; 00001d01H
	call	DWORD PTR __imp__glShadeModel@4
; Line 321
	mov	edx, DWORD PTR _n$[ebp]
	mov	eax, DWORD PTR ?tex_id@@3PAIA[edx*4]
	push	eax
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glBindTexture@8
; Line 323
	push	1176765440				; 46240400H
	push	10242					; 00002802H
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glTexParameterf@12
; Line 324
	push	1176765440				; 46240400H
	push	10243					; 00002803H
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glTexParameterf@12
; Line 325
	push	1175979008				; 46180400H
	push	10240					; 00002800H
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glTexParameterf@12
; Line 326
	push	1175979008				; 46180400H
	push	10241					; 00002801H
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glTexParameterf@12
; Line 328
	push	8449					; 00002101H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12
; Line 334
	mov	ecx, DWORD PTR _source$[ebp]
	push	ecx
	push	5121					; 00001401H
	push	6408					; 00001908H
	push	0
	mov	edx, DWORD PTR _h$[ebp]
	push	edx
	mov	eax, DWORD PTR _w$[ebp]
	push	eax
	push	4
	push	0
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glTexImage2D@36
; Line 335
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?glaUploadTexture@@YAXHPAJHH@Z ENDP			; glaUploadTexture
_TEXT	ENDS
PUBLIC	?glaFreeTexture@@YAXH@Z				; glaFreeTexture
;	COMDAT ?glaFreeTexture@@YAXH@Z
_TEXT	SEGMENT
?glaFreeTexture@@YAXH@Z PROC NEAR			; glaFreeTexture, COMDAT
; Line 337
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 339
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?glaFreeTexture@@YAXH@Z ENDP				; glaFreeTexture
_TEXT	ENDS
PUBLIC	?glaSetTexture@@YAXH@Z				; glaSetTexture
EXTRN	__imp__glEnable@4:NEAR
;	COMDAT ?glaSetTexture@@YAXH@Z
_TEXT	SEGMENT
_n$ = 8
?glaSetTexture@@YAXH@Z PROC NEAR			; glaSetTexture, COMDAT
; Line 341
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 343
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glEnable@4
; Line 344
	mov	eax, DWORD PTR _n$[ebp]
	mov	ecx, DWORD PTR ?tex_id@@3PAIA[eax*4]
	push	ecx
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glBindTexture@8
; Line 345
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?glaSetTexture@@YAXH@Z ENDP				; glaSetTexture
_TEXT	ENDS
PUBLIC	??_C@_04A@?$AA?$AA?$AA?$AA?$AA@			; `string'
PUBLIC	?glaUploadGif@@YAXHPAEJ@Z			; glaUploadGif
EXTRN	_memcpy:NEAR
;	COMDAT ??_C@_04A@?$AA?$AA?$AA?$AA?$AA@
; File d:\prj64k\glass (eventad)\misccode\gla_stuff2.cpp
CONST	SEGMENT
??_C@_04A@?$AA?$AA?$AA?$AA?$AA@ DB 00H, 00H, 00H, 00H, 00H ; `string'
CONST	ENDS
;	COMDAT ?glaUploadGif@@YAXHPAEJ@Z
_TEXT	SEGMENT
_n$ = 8
_packedgif$ = 12
_transparentcolor$ = 16
__image$ = -4
__rgb$ = -8
_palette$ = -12
_w$ = -16
_h$ = -20
_packed$ = -24
_i$ = -28
_signature$ = -36
_version$ = -44
_endoffile$ = -48
_shitt$19554 = -52
_s$19574 = -56
_c$19575 = -60
?glaUploadGif@@YAXHPAEJ@Z PROC NEAR			; glaUploadGif, COMDAT
; File d:\prj64k\glass (eventad)\misccode\gla_stuff2.cpp
; Line 347
	push	ebp
	mov	ebp, esp
	sub	esp, 128				; 00000080H
	push	ebx
	push	esi
	push	edi
; Line 355
	mov	eax, DWORD PTR ??_C@_04A@?$AA?$AA?$AA?$AA?$AA@
	mov	DWORD PTR _signature$[ebp], eax
	mov	cl, BYTE PTR ??_C@_04A@?$AA?$AA?$AA?$AA?$AA@+4
	mov	BYTE PTR _signature$[ebp+4], cl
; Line 356
	mov	edx, DWORD PTR ??_C@_04A@?$AA?$AA?$AA?$AA?$AA@
	mov	DWORD PTR _version$[ebp], edx
	mov	al, BYTE PTR ??_C@_04A@?$AA?$AA?$AA?$AA?$AA@+4
	mov	BYTE PTR _version$[ebp+4], al
; Line 357
	mov	DWORD PTR _endoffile$[ebp], 0
; Line 359
	mov	ecx, DWORD PTR _packedgif$[ebp]
	mov	DWORD PTR _gifsource, ecx
; Line 361
	push	3
	mov	edx, DWORD PTR _gifsource
	push	edx
	lea	eax, DWORD PTR _signature$[ebp]
	push	eax
	call	_memcpy
	add	esp, 12					; 0000000cH
	mov	ecx, DWORD PTR _gifsource
	add	ecx, 3
	mov	DWORD PTR _gifsource, ecx
; Line 362
	push	3
	mov	edx, DWORD PTR _gifsource
	push	edx
	lea	eax, DWORD PTR _version$[ebp]
	push	eax
	call	_memcpy
	add	esp, 12					; 0000000cH
	mov	ecx, DWORD PTR _gifsource
	add	ecx, 3
	mov	DWORD PTR _gifsource, ecx
; Line 364
	mov	edx, DWORD PTR _gifsource
	add	edx, 2
	mov	DWORD PTR _gifsource, edx
; Line 365
	mov	eax, DWORD PTR _gifsource
	add	eax, 2
	mov	DWORD PTR _gifsource, eax
; Line 366
	mov	ecx, DWORD PTR _gifsource
	xor	edx, edx
	mov	dl, BYTE PTR [ecx]
	mov	DWORD PTR _packed$[ebp], edx
	mov	eax, DWORD PTR _gifsource
	add	eax, 1
	mov	DWORD PTR _gifsource, eax
; Line 367
	mov	ecx, DWORD PTR _gifsource
	add	ecx, 1
	mov	DWORD PTR _gifsource, ecx
; Line 368
	mov	edx, DWORD PTR _gifsource
	add	edx, 1
	mov	DWORD PTR _gifsource, edx
; Line 370
	push	1024					; 00000400H
	push	4096					; 00001000H
	call	DWORD PTR __imp__GlobalAlloc@8
	mov	DWORD PTR _palette$[ebp], eax
; Line 372
	mov	eax, DWORD PTR _packed$[ebp]
	and	eax, 128				; 00000080H
	test	eax, eax
	je	$L19550
; Line 374
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19548
$L19549:
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 1
	mov	DWORD PTR _i$[ebp], ecx
$L19548:
	mov	edx, DWORD PTR _packed$[ebp]
	and	edx, 7
	add	edx, 1
	push	edx
	call	?pow2@@YAHH@Z				; pow2
	add	esp, 4
	cmp	DWORD PTR _i$[ebp], eax
	jge	SHORT $L19550
; Line 376
	mov	eax, DWORD PTR _i$[ebp]
	imul	eax, 3
	mov	ecx, DWORD PTR _palette$[ebp]
	mov	edx, DWORD PTR _gifsource
	mov	dl, BYTE PTR [edx]
	mov	BYTE PTR [ecx+eax], dl
	mov	eax, DWORD PTR _gifsource
	add	eax, 1
	mov	DWORD PTR _gifsource, eax
; Line 377
	mov	ecx, DWORD PTR _i$[ebp]
	imul	ecx, 3
	mov	edx, DWORD PTR _palette$[ebp]
	mov	eax, DWORD PTR _gifsource
	mov	al, BYTE PTR [eax]
	mov	BYTE PTR [edx+ecx+1], al
	mov	ecx, DWORD PTR _gifsource
	add	ecx, 1
	mov	DWORD PTR _gifsource, ecx
; Line 378
	mov	edx, DWORD PTR _i$[ebp]
	imul	edx, 3
	mov	eax, DWORD PTR _palette$[ebp]
	mov	ecx, DWORD PTR _gifsource
	mov	cl, BYTE PTR [ecx]
	mov	BYTE PTR [eax+edx+2], cl
	mov	edx, DWORD PTR _gifsource
	add	edx, 1
	mov	DWORD PTR _gifsource, edx
; Line 379
	jmp	$L19549
$L19550:
; Line 384
	mov	eax, DWORD PTR _gifsource
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR _shitt$19554[ebp], cl
	mov	edx, DWORD PTR _gifsource
	add	edx, 1
	mov	DWORD PTR _gifsource, edx
; Line 386
	mov	al, BYTE PTR _shitt$19554[ebp]
	mov	BYTE PTR -64+[ebp], al
	cmp	BYTE PTR -64+[ebp], 33			; 00000021H
	je	$L19566
	cmp	BYTE PTR -64+[ebp], 44			; 0000002cH
	je	SHORT $L19559
	cmp	BYTE PTR -64+[ebp], 59			; 0000003bH
	je	$L19565
	jmp	$L19556
$L19559:
; Line 389
	mov	ecx, DWORD PTR _gifsource
	add	ecx, 2
	mov	DWORD PTR _gifsource, ecx
; Line 390
	mov	edx, DWORD PTR _gifsource
	add	edx, 2
	mov	DWORD PTR _gifsource, edx
; Line 391
	push	2
	mov	eax, DWORD PTR _gifsource
	push	eax
	lea	ecx, DWORD PTR _w$[ebp]
	push	ecx
	call	_memcpy
	add	esp, 12					; 0000000cH
	mov	edx, DWORD PTR _gifsource
	add	edx, 2
	mov	DWORD PTR _gifsource, edx
; Line 392
	push	2
	mov	eax, DWORD PTR _gifsource
	push	eax
	lea	ecx, DWORD PTR _h$[ebp]
	push	ecx
	call	_memcpy
	add	esp, 12					; 0000000cH
	mov	edx, DWORD PTR _gifsource
	add	edx, 2
	mov	DWORD PTR _gifsource, edx
; Line 393
	mov	eax, DWORD PTR _gifsource
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax]
	mov	DWORD PTR _packed$[ebp], ecx
	mov	edx, DWORD PTR _gifsource
	add	edx, 1
	mov	DWORD PTR _gifsource, edx
; Line 395
	mov	eax, DWORD PTR _w$[ebp]
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _h$[ebp]
	and	ecx, 65535				; 0000ffffH
	imul	eax, ecx
	push	eax
	push	4096					; 00001000H
	call	DWORD PTR __imp__GlobalAlloc@8
	mov	DWORD PTR __image$[ebp], eax
; Line 397
	mov	edx, DWORD PTR _packed$[ebp]
	and	edx, 128				; 00000080H
	test	edx, edx
	je	$L19564
; Line 399
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19562
$L19563:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$L19562:
	mov	ecx, DWORD PTR _packed$[ebp]
	and	ecx, 7
	add	ecx, 1
	push	ecx
	call	?pow2@@YAHH@Z				; pow2
	add	esp, 4
	cmp	DWORD PTR _i$[ebp], eax
	jge	SHORT $L19564
; Line 401
	mov	edx, DWORD PTR _i$[ebp]
	imul	edx, 3
	mov	eax, DWORD PTR _palette$[ebp]
	mov	ecx, DWORD PTR _gifsource
	mov	cl, BYTE PTR [ecx]
	mov	BYTE PTR [eax+edx], cl
	mov	edx, DWORD PTR _gifsource
	add	edx, 1
	mov	DWORD PTR _gifsource, edx
; Line 402
	mov	eax, DWORD PTR _i$[ebp]
	imul	eax, 3
	mov	ecx, DWORD PTR _palette$[ebp]
	mov	edx, DWORD PTR _gifsource
	mov	dl, BYTE PTR [edx]
	mov	BYTE PTR [ecx+eax+1], dl
	mov	eax, DWORD PTR _gifsource
	add	eax, 1
	mov	DWORD PTR _gifsource, eax
; Line 403
	mov	ecx, DWORD PTR _i$[ebp]
	imul	ecx, 3
	mov	edx, DWORD PTR _palette$[ebp]
	mov	eax, DWORD PTR _gifsource
	mov	al, BYTE PTR [eax]
	mov	BYTE PTR [edx+ecx+2], al
	mov	ecx, DWORD PTR _gifsource
	add	ecx, 1
	mov	DWORD PTR _gifsource, ecx
; Line 404
	jmp	$L19563
$L19564:
; Line 414
	mov	dx, WORD PTR _h$[ebp]
	push	edx
	mov	ax, WORD PTR _w$[ebp]
	push	eax
	mov	ecx, DWORD PTR __image$[ebp]
	push	ecx
	call	?decode@@YAFPAEFF@Z			; decode
	add	esp, 12					; 0000000cH
; Line 415
	mov	DWORD PTR _endoffile$[ebp], 1
; Line 417
	jmp	SHORT $L19556
$L19565:
; Line 421
	mov	DWORD PTR _endoffile$[ebp], 1
; Line 422
	jmp	SHORT $L19556
$L19566:
; Line 426
	mov	edx, DWORD PTR _gifsource
	add	edx, 1
	mov	DWORD PTR _gifsource, edx
$L19568:
; Line 427
	mov	eax, DWORD PTR _gifsource
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $L19569
	mov	edx, DWORD PTR _gifsource
	add	edx, 1
	mov	DWORD PTR _gifsource, edx
	jmp	SHORT $L19568
$L19569:
$L19556:
; Line 430
	cmp	DWORD PTR _endoffile$[ebp], 0
	je	$L19550
; Line 432
	mov	eax, DWORD PTR _w$[ebp]
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _h$[ebp]
	and	ecx, 65535				; 0000ffffH
	imul	eax, ecx
	shl	eax, 2
	push	eax
	push	4096					; 00001000H
	call	DWORD PTR __imp__GlobalAlloc@8
	mov	DWORD PTR __rgb$[ebp], eax
; Line 434
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19571
$L19572:
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, 1
	mov	DWORD PTR _i$[ebp], edx
$L19571:
	mov	eax, DWORD PTR _w$[ebp]
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _h$[ebp]
	and	ecx, 65535				; 0000ffffH
	imul	eax, ecx
	cmp	DWORD PTR _i$[ebp], eax
	jge	SHORT $L19573
; Line 435
	mov	edx, DWORD PTR __image$[ebp]
	add	edx, DWORD PTR _i$[ebp]
	xor	eax, eax
	mov	al, BYTE PTR [edx]
	imul	eax, 3
	mov	DWORD PTR _s$19574[ebp], eax
; Line 436
	mov	ecx, DWORD PTR _palette$[ebp]
	add	ecx, DWORD PTR _s$19574[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx]
	mov	eax, DWORD PTR _palette$[ebp]
	add	eax, DWORD PTR _s$19574[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+1]
	shl	ecx, 8
	add	edx, ecx
	mov	eax, DWORD PTR _palette$[ebp]
	add	eax, DWORD PTR _s$19574[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+2]
	shl	ecx, 16					; 00000010H
	add	edx, ecx
	mov	DWORD PTR _c$19575[ebp], edx
; Line 437
	mov	edx, DWORD PTR _c$19575[ebp]
	cmp	edx, DWORD PTR _transparentcolor$[ebp]
	jne	SHORT $L19576
; Line 438
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR __rgb$[ebp]
	mov	DWORD PTR [ecx+eax*4], 0
; Line 439
	jmp	SHORT $L19577
$L19576:
; Line 440
	mov	edx, DWORD PTR _c$19575[ebp]
	or	edx, -16777216				; ff000000H
	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR __rgb$[ebp]
	mov	DWORD PTR [ecx+eax*4], edx
$L19577:
; Line 444
	jmp	$L19572
$L19573:
; Line 448
	mov	edx, DWORD PTR _h$[ebp]
	and	edx, 65535				; 0000ffffH
	push	edx
	mov	eax, DWORD PTR _w$[ebp]
	and	eax, 65535				; 0000ffffH
	push	eax
	mov	ecx, DWORD PTR __rgb$[ebp]
	push	ecx
	mov	edx, DWORD PTR _n$[ebp]
	push	edx
	call	?glaUploadTexture@@YAXHPAJHH@Z		; glaUploadTexture
	add	esp, 16					; 00000010H
; Line 450
	mov	eax, DWORD PTR _palette$[ebp]
	push	eax
	call	DWORD PTR __imp__GlobalFree@4
; Line 451
	mov	ecx, DWORD PTR __rgb$[ebp]
	push	ecx
	call	DWORD PTR __imp__GlobalFree@4
; Line 452
	mov	edx, DWORD PTR __image$[ebp]
	push	edx
	call	DWORD PTR __imp__GlobalFree@4
; Line 455
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?glaUploadGif@@YAXHPAEJ@Z ENDP				; glaUploadGif
_TEXT	ENDS
PUBLIC	?glaQuad@@YAXMMMMMMMMM@Z			; glaQuad
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
;	COMDAT ?glaQuad@@YAXMMMMMMMMM@Z
_TEXT	SEGMENT
_xc$ = 8
_yc$ = 12
_zc$ = 16
_xr$ = 20
_yr$ = 24
_u1$ = 28
_v1$ = 32
_u2$ = 36
_v2$ = 40
?glaQuad@@YAXMMMMMMMMM@Z PROC NEAR			; glaQuad, COMDAT
; Line 457
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 458
	mov	eax, DWORD PTR _v1$[ebp]
	push	eax
	mov	ecx, DWORD PTR _u1$[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 459
	mov	edx, DWORD PTR _zc$[ebp]
	push	edx
	fld	DWORD PTR _yc$[ebp]
	fsub	DWORD PTR _yr$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _xc$[ebp]
	fsub	DWORD PTR _xr$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 461
	mov	eax, DWORD PTR _v1$[ebp]
	push	eax
	mov	ecx, DWORD PTR _u2$[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 462
	mov	edx, DWORD PTR _zc$[ebp]
	push	edx
	fld	DWORD PTR _yc$[ebp]
	fsub	DWORD PTR _yr$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _xc$[ebp]
	fadd	DWORD PTR _xr$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 464
	mov	eax, DWORD PTR _v2$[ebp]
	push	eax
	mov	ecx, DWORD PTR _u2$[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 465
	mov	edx, DWORD PTR _zc$[ebp]
	push	edx
	fld	DWORD PTR _yc$[ebp]
	fadd	DWORD PTR _yr$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _xc$[ebp]
	fadd	DWORD PTR _xr$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 467
	mov	eax, DWORD PTR _v2$[ebp]
	push	eax
	mov	ecx, DWORD PTR _u1$[ebp]
	push	ecx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 468
	mov	edx, DWORD PTR _zc$[ebp]
	push	edx
	fld	DWORD PTR _yc$[ebp]
	fadd	DWORD PTR _yr$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _xc$[ebp]
	fsub	DWORD PTR _xr$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 469
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?glaQuad@@YAXMMMMMMMMM@Z ENDP				; glaQuad
_TEXT	ENDS
PUBLIC	?glaRotate2d@@YAXPAM0MMM@Z			; glaRotate2d
EXTRN	_cos:NEAR
EXTRN	_sin:NEAR
;	COMDAT ?glaRotate2d@@YAXPAM0MMM@Z
_TEXT	SEGMENT
_x2$ = 8
_y2$ = 12
_x$ = 16
_y$ = 20
_r$ = 24
_xx$ = -4
_yy$ = -8
?glaRotate2d@@YAXPAM0MMM@Z PROC NEAR			; glaRotate2d, COMDAT
; Line 471
	push	ebp
	mov	ebp, esp
	sub	esp, 96					; 00000060H
	push	ebx
	push	esi
	push	edi
; Line 473
	fld	DWORD PTR _r$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -12+[ebp]
	fmul	DWORD PTR _x$[ebp]
	fstp	DWORD PTR -16+[ebp]
	fld	DWORD PTR _r$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -20+[ebp]
	fmul	DWORD PTR _y$[ebp]
	fadd	DWORD PTR -16+[ebp]
	fstp	DWORD PTR _xx$[ebp]
; Line 474
	fld	DWORD PTR _r$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -24+[ebp]
	fchs
	fmul	DWORD PTR _x$[ebp]
	fstp	DWORD PTR -28+[ebp]
	fld	DWORD PTR _r$[ebp]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_cos
	add	esp, 8
	fst	DWORD PTR -32+[ebp]
	fmul	DWORD PTR _y$[ebp]
	fadd	DWORD PTR -28+[ebp]
	fstp	DWORD PTR _yy$[ebp]
; Line 475
	mov	eax, DWORD PTR _x2$[ebp]
	mov	ecx, DWORD PTR _xx$[ebp]
	mov	DWORD PTR [eax], ecx
; Line 476
	mov	edx, DWORD PTR _y2$[ebp]
	mov	eax, DWORD PTR _yy$[ebp]
	mov	DWORD PTR [edx], eax
; Line 477
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?glaRotate2d@@YAXPAM0MMM@Z ENDP				; glaRotate2d
_TEXT	ENDS
PUBLIC	__real@4@4000c90fdb0000000000
PUBLIC	__real@4@4006b400000000000000
PUBLIC	?glaQuadR@@YAXMMMMMMMMMM@Z			; glaQuadR
;	COMDAT __real@4@4000c90fdb0000000000
; File d:\prj64k\glass (eventad)\misccode\gla_stuff2.cpp
CONST	SEGMENT
__real@4@4000c90fdb0000000000 DD 040490fdbr	; 3.14159
CONST	ENDS
;	COMDAT __real@4@4006b400000000000000
CONST	SEGMENT
__real@4@4006b400000000000000 DD 043340000r	; 180
CONST	ENDS
;	COMDAT ?glaQuadR@@YAXMMMMMMMMMM@Z
_TEXT	SEGMENT
_xc$ = 8
_yc$ = 12
_zc$ = 16
_angle$ = 20
_xr$ = 24
_yr$ = 28
_u1$ = 32
_v1$ = 36
_u2$ = 40
_v2$ = 44
_rx$ = -16
_ry$ = -32
_rangle$ = -36
?glaQuadR@@YAXMMMMMMMMMM@Z PROC NEAR			; glaQuadR, COMDAT
; File d:\prj64k\glass (eventad)\misccode\gla_stuff2.cpp
; Line 479
	push	ebp
	mov	ebp, esp
	sub	esp, 100				; 00000064H
	push	ebx
	push	esi
	push	edi
; Line 483
	fld	DWORD PTR _angle$[ebp]
	fmul	DWORD PTR __real@4@4000c90fdb0000000000
	fdiv	DWORD PTR __real@4@4006b400000000000000
	fstp	DWORD PTR _rangle$[ebp]
; Line 485
	mov	eax, DWORD PTR _rangle$[ebp]
	push	eax
	fld	DWORD PTR _yr$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _xr$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	lea	ecx, DWORD PTR _ry$[ebp]
	push	ecx
	lea	edx, DWORD PTR _rx$[ebp]
	push	edx
	call	?glaRotate2d@@YAXPAM0MMM@Z		; glaRotate2d
	add	esp, 20					; 00000014H
; Line 486
	mov	eax, DWORD PTR _rangle$[ebp]
	push	eax
	fld	DWORD PTR _yr$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR _xr$[ebp]
	push	ecx
	lea	edx, DWORD PTR _ry$[ebp+4]
	push	edx
	lea	eax, DWORD PTR _rx$[ebp+4]
	push	eax
	call	?glaRotate2d@@YAXPAM0MMM@Z		; glaRotate2d
	add	esp, 20					; 00000014H
; Line 487
	mov	ecx, DWORD PTR _rangle$[ebp]
	push	ecx
	mov	edx, DWORD PTR _yr$[ebp]
	push	edx
	mov	eax, DWORD PTR _xr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _ry$[ebp+8]
	push	ecx
	lea	edx, DWORD PTR _rx$[ebp+8]
	push	edx
	call	?glaRotate2d@@YAXPAM0MMM@Z		; glaRotate2d
	add	esp, 20					; 00000014H
; Line 488
	mov	eax, DWORD PTR _rangle$[ebp]
	push	eax
	mov	ecx, DWORD PTR _yr$[ebp]
	push	ecx
	fld	DWORD PTR _xr$[ebp]
	fchs
	push	ecx
	fstp	DWORD PTR [esp]
	lea	edx, DWORD PTR _ry$[ebp+12]
	push	edx
	lea	eax, DWORD PTR _rx$[ebp+12]
	push	eax
	call	?glaRotate2d@@YAXPAM0MMM@Z		; glaRotate2d
	add	esp, 20					; 00000014H
; Line 490
	mov	ecx, DWORD PTR _v1$[ebp]
	push	ecx
	mov	edx, DWORD PTR _u1$[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 491
	mov	eax, DWORD PTR _zc$[ebp]
	push	eax
	fld	DWORD PTR _yc$[ebp]
	fadd	DWORD PTR _ry$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _xc$[ebp]
	fadd	DWORD PTR _rx$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 493
	mov	ecx, DWORD PTR _v1$[ebp]
	push	ecx
	mov	edx, DWORD PTR _u2$[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 494
	mov	eax, DWORD PTR _zc$[ebp]
	push	eax
	fld	DWORD PTR _yc$[ebp]
	fadd	DWORD PTR _ry$[ebp+4]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _xc$[ebp]
	fadd	DWORD PTR _rx$[ebp+4]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 496
	mov	ecx, DWORD PTR _v2$[ebp]
	push	ecx
	mov	edx, DWORD PTR _u2$[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 497
	mov	eax, DWORD PTR _zc$[ebp]
	push	eax
	fld	DWORD PTR _yc$[ebp]
	fadd	DWORD PTR _ry$[ebp+8]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _xc$[ebp]
	fadd	DWORD PTR _rx$[ebp+8]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 499
	mov	ecx, DWORD PTR _v2$[ebp]
	push	ecx
	mov	edx, DWORD PTR _u1$[ebp]
	push	edx
	call	DWORD PTR __imp__glTexCoord2f@8
; Line 500
	mov	eax, DWORD PTR _zc$[ebp]
	push	eax
	fld	DWORD PTR _yc$[ebp]
	fadd	DWORD PTR _ry$[ebp+12]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _xc$[ebp]
	fadd	DWORD PTR _rx$[ebp+12]
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glVertex3f@12
; Line 502
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?glaQuadR@@YAXMMMMMMMMMM@Z ENDP				; glaQuadR
_TEXT	ENDS
PUBLIC	?glaDefaultProjection@@YAXXZ			; glaDefaultProjection
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glOrtho@48:NEAR
EXTRN	__imp__glClearColor@16:NEAR
EXTRN	__imp__glClearDepth@8:NEAR
EXTRN	__imp__glDepthFunc@4:NEAR
;	COMDAT ?glaDefaultProjection@@YAXXZ
_TEXT	SEGMENT
?glaDefaultProjection@@YAXXZ PROC NEAR			; glaDefaultProjection, COMDAT
; Line 504
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 506
	push	0
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glClearColor@16
; Line 508
	push	5889					; 00001701H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 509
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 511
	push	1079574528				; 40590000H
	push	0
	push	-1067909120				; c0590000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	-1074790400				; bff00000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	-1074790400				; bff00000H
	push	0
	call	DWORD PTR __imp__glOrtho@48
; Line 513
	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 514
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 516
	push	5890					; 00001702H
	call	DWORD PTR __imp__glMatrixMode@4
; Line 517
	call	DWORD PTR __imp__glLoadIdentity@0
; Line 519
	push	2929					; 00000b71H
	call	DWORD PTR __imp__glEnable@4
; Line 520
	push	515					; 00000203H
	call	DWORD PTR __imp__glDepthFunc@4
; Line 521
	push	1072693248				; 3ff00000H
	push	0
	call	DWORD PTR __imp__glClearDepth@8
; Line 522
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?glaDefaultProjection@@YAXXZ ENDP			; glaDefaultProjection
_TEXT	ENDS
PUBLIC	?misc_strlen@@YAJPAD@Z				; misc_strlen
;	COMDAT ?misc_strlen@@YAJPAD@Z
_TEXT	SEGMENT
_str$ = 8
_l$ = -4
?misc_strlen@@YAJPAD@Z PROC NEAR			; misc_strlen, COMDAT
; Line 527
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 528
	mov	DWORD PTR _l$[ebp], 0
$L19626:
; Line 529
	mov	eax, DWORD PTR _str$[ebp]
	add	eax, DWORD PTR _l$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $L19627
	mov	edx, DWORD PTR _l$[ebp]
	add	edx, 1
	mov	DWORD PTR _l$[ebp], edx
	jmp	SHORT $L19626
$L19627:
; Line 530
	mov	eax, DWORD PTR _l$[ebp]
; Line 531
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?misc_strlen@@YAJPAD@Z ENDP				; misc_strlen
_TEXT	ENDS
PUBLIC	__real@4@00000000000000000000
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@4002f000000000000000
PUBLIC	__real@4@40038000000000000000
PUBLIC	?glaDrawChar@@YAXMMMMMD@Z			; glaDrawChar
;	COMDAT __real@4@00000000000000000000
; File d:\prj64k\glass (eventad)\misccode\gla_stuff2.cpp
CONST	SEGMENT
__real@4@00000000000000000000 DD 000000000r	; 0
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@4002f000000000000000
CONST	SEGMENT
__real@4@4002f000000000000000 DD 041700000r	; 15
CONST	ENDS
;	COMDAT __real@4@40038000000000000000
CONST	SEGMENT
__real@4@40038000000000000000 DD 041800000r	; 16
CONST	ENDS
;	COMDAT ?glaDrawChar@@YAXMMMMMD@Z
_TEXT	SEGMENT
_x$ = 8
_y$ = 12
_z$ = 16
_width$ = 20
_height$ = 24
_ch$ = 28
_ctn$ = -4
_f$ = -8
_n$ = -12
_num$ = -16
_one$ = -20
_v1$ = -24
_v2$ = -28
?glaDrawChar@@YAXMMMMMD@Z PROC NEAR			; glaDrawChar, COMDAT
; File d:\prj64k\glass (eventad)\misccode\gla_stuff2.cpp
; Line 533
	push	ebp
	mov	ebp, esp
	sub	esp, 92					; 0000005cH
	push	ebx
	push	esi
	push	edi
; Line 535
	mov	eax, DWORD PTR ?fonttable@@3PADA	; fonttable
	push	eax
	call	?misc_strlen@@YAJPAD@Z			; misc_strlen
	add	esp, 4
	mov	DWORD PTR _ctn$[ebp], eax
; Line 536
	mov	DWORD PTR _f$[ebp], -1
; Line 538
	movsx	ecx, BYTE PTR _ch$[ebp]
	cmp	ecx, 32					; 00000020H
	jne	SHORT $L19638
	jmp	$L19635
$L19638:
; Line 541
	fld	DWORD PTR _height$[ebp]
	fcomp	DWORD PTR __real@4@00000000000000000000
	fnstsw	ax
	test	ah, 64					; 00000040H
	jne	SHORT $L19641
	fld	DWORD PTR _width$[ebp]
	fcomp	DWORD PTR __real@4@00000000000000000000
	fnstsw	ax
	test	ah, 64					; 00000040H
	je	SHORT $L19640
$L19641:
	jmp	$L19635
$L19640:
; Line 543
	mov	DWORD PTR _n$[ebp], 0
	jmp	SHORT $L19642
$L19643:
	mov	edx, DWORD PTR _n$[ebp]
	add	edx, 1
	mov	DWORD PTR _n$[ebp], edx
$L19642:
	mov	eax, DWORD PTR _n$[ebp]
	cmp	eax, DWORD PTR _ctn$[ebp]
	jge	SHORT $L19644
	mov	ecx, DWORD PTR ?fonttable@@3PADA	; fonttable
	add	ecx, DWORD PTR _n$[ebp]
	movsx	edx, BYTE PTR [ecx]
	movsx	eax, BYTE PTR _ch$[ebp]
	cmp	edx, eax
	jne	SHORT $L19645
	mov	ecx, DWORD PTR _n$[ebp]
	mov	DWORD PTR _f$[ebp], ecx
$L19645:
; Line 544
	jmp	SHORT $L19643
$L19644:
	cmp	DWORD PTR _f$[ebp], -1
	jne	SHORT $L19646
	jmp	SHORT $L19635
$L19646:
; Line 546
	mov	DWORD PTR _num$[ebp], 1115684864	; 42800000H
; Line 547
	fld	DWORD PTR __real@4@3fff8000000000000000
	fdiv	DWORD PTR _num$[ebp]
	fstp	DWORD PTR _one$[ebp]
; Line 549
	fild	DWORD PTR _f$[ebp]
	fmul	DWORD PTR _one$[ebp]
	fstp	DWORD PTR _v2$[ebp]
; Line 550
	fld	DWORD PTR _one$[ebp]
	fmul	DWORD PTR __real@4@4002f000000000000000
	fdiv	DWORD PTR __real@4@40038000000000000000
	fadd	DWORD PTR _v2$[ebp]
	fstp	DWORD PTR _v1$[ebp]
; Line 552
	mov	edx, DWORD PTR _v2$[ebp]
	push	edx
	push	1065353216				; 3f800000H
	mov	eax, DWORD PTR _v1$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR _height$[ebp]
	push	ecx
	mov	edx, DWORD PTR _width$[ebp]
	push	edx
	mov	eax, DWORD PTR _z$[ebp]
	push	eax
	mov	ecx, DWORD PTR _y$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x$[ebp]
	push	edx
	call	?glaQuad@@YAXMMMMMMMMM@Z		; glaQuad
	add	esp, 36					; 00000024H
$L19635:
; Line 553
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?glaDrawChar@@YAXMMMMMD@Z ENDP				; glaDrawChar
_TEXT	ENDS
PUBLIC	__real@4@40008000000000000000
PUBLIC	?glaDrawString@@YAXMMMMMMPAD@Z			; glaDrawString
;	COMDAT __real@4@40008000000000000000
; File d:\prj64k\glass (eventad)\misccode\gla_stuff2.cpp
CONST	SEGMENT
__real@4@40008000000000000000 DD 040000000r	; 2
CONST	ENDS
;	COMDAT ?glaDrawString@@YAXMMMMMMPAD@Z
_TEXT	SEGMENT
_xc$ = 8
_yc$ = 12
_zc$ = 16
_w$ = 20
_h$ = 24
_spacing$ = 28
_texten$ = 32
_l$ = -4
_x1$ = -8
_j$ = -12
?glaDrawString@@YAXMMMMMMPAD@Z PROC NEAR		; glaDrawString, COMDAT
; File d:\prj64k\glass (eventad)\misccode\gla_stuff2.cpp
; Line 555
	push	ebp
	mov	ebp, esp
	sub	esp, 76					; 0000004cH
	push	ebx
	push	esi
	push	edi
; Line 556
	mov	eax, DWORD PTR _texten$[ebp]
	push	eax
	call	?misc_strlen@@YAJPAD@Z			; misc_strlen
	add	esp, 4
	mov	DWORD PTR _l$[ebp], eax
; Line 557
	fild	DWORD PTR _l$[ebp]
	fmul	DWORD PTR _spacing$[ebp]
	fdiv	DWORD PTR __real@4@40008000000000000000
	fsubr	DWORD PTR _xc$[ebp]
	fstp	DWORD PTR _x1$[ebp]
; Line 559
	mov	DWORD PTR _j$[ebp], 0
	jmp	SHORT $L19663
$L19664:
	mov	ecx, DWORD PTR _j$[ebp]
	add	ecx, 1
	mov	DWORD PTR _j$[ebp], ecx
$L19663:
	mov	edx, DWORD PTR _j$[ebp]
	cmp	edx, DWORD PTR _l$[ebp]
	jge	SHORT $L19665
; Line 560
	mov	eax, DWORD PTR _texten$[ebp]
	add	eax, DWORD PTR _j$[ebp]
	mov	cl, BYTE PTR [eax]
	push	ecx
	mov	edx, DWORD PTR _h$[ebp]
	push	edx
	mov	eax, DWORD PTR _w$[ebp]
	push	eax
	mov	ecx, DWORD PTR _zc$[ebp]
	push	ecx
	mov	edx, DWORD PTR _yc$[ebp]
	push	edx
	fild	DWORD PTR _j$[ebp]
	fmul	DWORD PTR _spacing$[ebp]
	fadd	DWORD PTR _x1$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	?glaDrawChar@@YAXMMMMMD@Z		; glaDrawChar
	add	esp, 24					; 00000018H
; Line 561
	jmp	SHORT $L19664
$L19665:
; Line 562
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?glaDrawString@@YAXMMMMMMPAD@Z ENDP			; glaDrawString
_TEXT	ENDS
PUBLIC	?glaDrawStringL@@YAXMMMMMMPAD@Z			; glaDrawStringL
;	COMDAT ?glaDrawStringL@@YAXMMMMMMPAD@Z
_TEXT	SEGMENT
_xc$ = 8
_yc$ = 12
_zc$ = 16
_w$ = 20
_h$ = 24
_spacing$ = 28
_texten$ = 32
_l$ = -4
_j$ = -8
?glaDrawStringL@@YAXMMMMMMPAD@Z PROC NEAR		; glaDrawStringL, COMDAT
; Line 564
	push	ebp
	mov	ebp, esp
	sub	esp, 72					; 00000048H
	push	ebx
	push	esi
	push	edi
; Line 565
	mov	eax, DWORD PTR _texten$[ebp]
	push	eax
	call	?misc_strlen@@YAJPAD@Z			; misc_strlen
	add	esp, 4
	mov	DWORD PTR _l$[ebp], eax
; Line 567
	mov	DWORD PTR _j$[ebp], 0
	jmp	SHORT $L19677
$L19678:
	mov	ecx, DWORD PTR _j$[ebp]
	add	ecx, 1
	mov	DWORD PTR _j$[ebp], ecx
$L19677:
	mov	edx, DWORD PTR _j$[ebp]
	cmp	edx, DWORD PTR _l$[ebp]
	jge	SHORT $L19679
; Line 568
	mov	eax, DWORD PTR _texten$[ebp]
	add	eax, DWORD PTR _j$[ebp]
	mov	cl, BYTE PTR [eax]
	push	ecx
	mov	edx, DWORD PTR _h$[ebp]
	push	edx
	mov	eax, DWORD PTR _w$[ebp]
	push	eax
	mov	ecx, DWORD PTR _zc$[ebp]
	push	ecx
	mov	edx, DWORD PTR _yc$[ebp]
	push	edx
	fild	DWORD PTR _j$[ebp]
	fmul	DWORD PTR _spacing$[ebp]
	fadd	DWORD PTR _xc$[ebp]
	push	ecx
	fstp	DWORD PTR [esp]
	call	?glaDrawChar@@YAXMMMMMD@Z		; glaDrawChar
	add	esp, 24					; 00000018H
; Line 569
	jmp	SHORT $L19678
$L19679:
; Line 570
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?glaDrawStringL@@YAXMMMMMMPAD@Z ENDP			; glaDrawStringL
_TEXT	ENDS
PUBLIC	?glaReset@@YAXXZ				; glaReset
EXTRN	__imp__GetTickCount@0:NEAR
;	COMDAT ?glaReset@@YAXXZ
_TEXT	SEGMENT
?glaReset@@YAXXZ PROC NEAR				; glaReset, COMDAT
; Line 576
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 578
	call	DWORD PTR __imp__GetTickCount@0
	mov	DWORD PTR ?resettime@@3KA, eax		; resettime
; Line 580
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?glaReset@@YAXXZ ENDP					; glaReset
_TEXT	ENDS
PUBLIC	__real@4@4008fa00000000000000
PUBLIC	?glaTime@@YAMXZ					; glaTime
;	COMDAT __real@4@4008fa00000000000000
; File d:\prj64k\glass (eventad)\misccode\gla_stuff2.cpp
CONST	SEGMENT
__real@4@4008fa00000000000000 DD 0447a0000r	; 1000
CONST	ENDS
;	COMDAT ?glaTime@@YAMXZ
_TEXT	SEGMENT
_t$ = -4
?glaTime@@YAMXZ PROC NEAR				; glaTime, COMDAT
; File d:\prj64k\glass (eventad)\misccode\gla_stuff2.cpp
; Line 582
	push	ebp
	mov	ebp, esp
	sub	esp, 76					; 0000004cH
	push	ebx
	push	esi
	push	edi
; Line 583
	call	DWORD PTR __imp__GetTickCount@0
	sub	eax, DWORD PTR ?resettime@@3KA		; resettime
	mov	DWORD PTR _t$[ebp], eax
; Line 584
	mov	eax, DWORD PTR _t$[ebp]
	mov	DWORD PTR -12+[ebp], eax
	mov	DWORD PTR -12+[ebp+4], 0
	fild	QWORD PTR -12+[ebp]
	fdiv	DWORD PTR __real@4@4008fa00000000000000
; Line 585
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?glaTime@@YAMXZ ENDP					; glaTime
_TEXT	ENDS
PUBLIC	?glaRelBeat@@YAMXZ				; glaRelBeat
;	COMDAT ?glaRelBeat@@YAMXZ
_TEXT	SEGMENT
?glaRelBeat@@YAMXZ PROC NEAR				; glaRelBeat, COMDAT
; Line 587
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 588
	call	?glaTime@@YAMXZ				; glaTime
; Line 590
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?glaRelBeat@@YAMXZ ENDP					; glaRelBeat
_TEXT	ENDS
END
