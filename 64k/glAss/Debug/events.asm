	TITLE	D:\prj64k\glAss (eventad)\events.cpp
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
;	COMDAT ?event_run@@YAXMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?event_init@@YAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?event_free@@YAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?pEvent@@3PAPAUONEEVENT@@A			; pEvent
PUBLIC	?nEvents@@3HA					; nEvents
_BSS	SEGMENT
?pEvent@@3PAPAUONEEVENT@@A DD 0400H DUP (?)		; pEvent
?nEvents@@3HA DD 01H DUP (?)				; nEvents
_BSS	ENDS
PUBLIC	?event_run@@YAXMM@Z				; event_run
PUBLIC	__real@8@4000c916872b020c4800
PUBLIC	__real@4@3fff8000000000000000
EXTRN	_sin:NEAR
EXTRN	__imp__glPopAttrib@0:NEAR
EXTRN	__imp__glPopMatrix@0:NEAR
EXTRN	__imp__glPushAttrib@4:NEAR
EXTRN	__imp__glPushMatrix@0:NEAR
EXTRN	__fltused:NEAR
;	COMDAT __real@8@4000c916872b020c4800
; File d:\prj64k\glass (eventad)\events.cpp
CONST	SEGMENT
__real@8@4000c916872b020c4800 DQ 0400922d0e5604189r ; 3.142
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT ?event_run@@YAXMM@Z
_TEXT	SEGMENT
_time$ = 8
_beat$ = 12
_e2$ = -24
_i$ = -28
_e$19113 = -32
?event_run@@YAXMM@Z PROC NEAR				; event_run, COMDAT
; File d:\prj64k\glass (eventad)\events.cpp
; Line 17
	push	ebp
	mov	ebp, esp
	sub	esp, 100				; 00000064H
	push	ebx
	push	esi
	push	edi
; Line 19
	mov	eax, DWORD PTR _time$[ebp]
	mov	DWORD PTR _e2$[ebp], eax
; Line 20
	mov	ecx, DWORD PTR _beat$[ebp]
	mov	DWORD PTR _e2$[ebp+8], ecx
; Line 21
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19110
$L19111:
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, 1
	mov	DWORD PTR _i$[ebp], edx
$L19110:
	mov	eax, DWORD PTR _i$[ebp]
	cmp	eax, DWORD PTR ?nEvents@@3HA		; nEvents
	jge	$L19112
; Line 22
	mov	ecx, DWORD PTR _i$[ebp]
	mov	edx, DWORD PTR ?pEvent@@3PAPAUONEEVENT@@A[ecx*4]
	mov	DWORD PTR _e$19113[ebp], edx
; Line 23
	cmp	DWORD PTR _e$19113[ebp], 0
	je	$L19114
	mov	eax, DWORD PTR _e$19113[ebp]
	fld	DWORD PTR _time$[ebp]
	fcomp	DWORD PTR [eax]
	fnstsw	ax
	test	ah, 1
	jne	SHORT $L19114
	mov	ecx, DWORD PTR _e$19113[ebp]
	fld	DWORD PTR _time$[ebp]
	fcomp	DWORD PTR [ecx+4]
	fnstsw	ax
	test	ah, 1
	je	SHORT $L19114
; Line 24
	mov	edx, DWORD PTR _e$19113[ebp]
	mov	eax, DWORD PTR [edx+16]
	mov	DWORD PTR _e2$[ebp+16], eax
; Line 25
	mov	ecx, DWORD PTR _e$19113[ebp]
	fld	DWORD PTR _time$[ebp]
	fsub	DWORD PTR [ecx]
	fstp	DWORD PTR _e2$[ebp+4]
; Line 26
	mov	DWORD PTR _e2$[ebp+12], 0
; Line 29
	fld	DWORD PTR _e2$[ebp+4]
	fmul	QWORD PTR __real@8@4000c916872b020c4800
	mov	edx, DWORD PTR _e$19113[ebp]
	fdiv	DWORD PTR [edx+8]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_sin
	add	esp, 8
	fst	DWORD PTR -36+[ebp]
	fmul	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _e2$[ebp+20]
; Line 32
	call	DWORD PTR __imp__glPushMatrix@0
; Line 33
	push	1048575					; 000fffffH
	call	DWORD PTR __imp__glPushAttrib@4
; Line 35
	lea	eax, DWORD PTR _e2$[ebp]
	push	eax
	mov	ecx, DWORD PTR _e$19113[ebp]
	call	DWORD PTR [ecx+12]
	add	esp, 4
; Line 37
	call	DWORD PTR __imp__glPopAttrib@0
; Line 38
	call	DWORD PTR __imp__glPopMatrix@0
$L19114:
; Line 40
	jmp	$L19111
$L19112:
; Line 41
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?event_run@@YAXMM@Z ENDP				; event_run
_TEXT	ENDS
PUBLIC	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z	; event_register
EXTRN	__imp__GlobalAlloc@8:NEAR
;	COMDAT ?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z
_TEXT	SEGMENT
_starttime$ = 8
_endtime$ = 12
_er$ = 16
_custom$ = 20
_e$ = -4
?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z PROC NEAR	; event_register, COMDAT
; Line 43
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 44
	push	20					; 00000014H
	push	4096					; 00001000H
	call	DWORD PTR __imp__GlobalAlloc@8
	mov	DWORD PTR _e$[ebp], eax
; Line 46
	mov	eax, DWORD PTR _e$[ebp]
	mov	ecx, DWORD PTR _starttime$[ebp]
	mov	DWORD PTR [eax], ecx
; Line 47
	mov	edx, DWORD PTR _e$[ebp]
	mov	eax, DWORD PTR _endtime$[ebp]
	mov	DWORD PTR [edx+4], eax
; Line 48
	fld	DWORD PTR _endtime$[ebp]
	fsub	DWORD PTR _starttime$[ebp]
	mov	ecx, DWORD PTR _e$[ebp]
	fstp	DWORD PTR [ecx+8]
; Line 50
	mov	edx, DWORD PTR _e$[ebp]
	mov	eax, DWORD PTR _er$[ebp]
	mov	DWORD PTR [edx+12], eax
; Line 51
	mov	ecx, DWORD PTR _e$[ebp]
	mov	edx, DWORD PTR _custom$[ebp]
	mov	DWORD PTR [ecx+16], edx
; Line 53
	mov	eax, DWORD PTR ?nEvents@@3HA		; nEvents
	mov	ecx, DWORD PTR _e$[ebp]
	mov	DWORD PTR ?pEvent@@3PAPAUONEEVENT@@A[eax*4], ecx
; Line 54
	mov	edx, DWORD PTR ?nEvents@@3HA		; nEvents
	add	edx, 1
	mov	DWORD PTR ?nEvents@@3HA, edx		; nEvents
; Line 55
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ENDP		; event_register
_TEXT	ENDS
PUBLIC	?event_init@@YAXXZ				; event_init
;	COMDAT ?event_init@@YAXXZ
_TEXT	SEGMENT
_i$ = -4
?event_init@@YAXXZ PROC NEAR				; event_init, COMDAT
; Line 57
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 58
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19128
$L19129:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$L19128:
	cmp	DWORD PTR _i$[ebp], 1024		; 00000400H
	jge	SHORT $L19130
; Line 59
	mov	ecx, DWORD PTR _i$[ebp]
	mov	DWORD PTR ?pEvent@@3PAPAUONEEVENT@@A[ecx*4], 0
	jmp	SHORT $L19129
$L19130:
; Line 60
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?event_init@@YAXXZ ENDP					; event_init
_TEXT	ENDS
PUBLIC	?event_free@@YAXXZ				; event_free
EXTRN	__imp__GlobalFree@4:NEAR
;	COMDAT ?event_free@@YAXXZ
_TEXT	SEGMENT
_i$ = -4
?event_free@@YAXXZ PROC NEAR				; event_free, COMDAT
; Line 62
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 63
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $L19134
$L19135:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$L19134:
	cmp	DWORD PTR _i$[ebp], 1024		; 00000400H
	jge	SHORT $L19136
; Line 64
	mov	ecx, DWORD PTR _i$[ebp]
	cmp	DWORD PTR ?pEvent@@3PAPAUONEEVENT@@A[ecx*4], 0
	je	SHORT $L19137
; Line 65
	mov	edx, DWORD PTR _i$[ebp]
	mov	eax, DWORD PTR ?pEvent@@3PAPAUONEEVENT@@A[edx*4]
	push	eax
	call	DWORD PTR __imp__GlobalFree@4
$L19137:
; Line 66
	jmp	SHORT $L19135
$L19136:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?event_free@@YAXXZ ENDP					; event_free
_TEXT	ENDS
END
