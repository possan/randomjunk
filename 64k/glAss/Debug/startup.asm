	TITLE	D:\prj64k\glAss (eventad)\misccode\startup.cpp
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
;	COMDAT ??_C@_0N@NBJB@160?5x?5120?5?3?$CJ?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_09MOED@320?5x?5240?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_09BJFK@400?5x?5300?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_09NBBP@512?5x?5384?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_09LGEF@640?5x?5480?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_09BIHH@800?5x?5600?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_0L@NKMD@1024?5x?5768?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_0L@NHAP@1152?5x?5864?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_0L@DLDO@1280?5x?5720?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_0M@HHGD@1280?5x?51024?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_0BC@IOON@1600?5x?51200?5?$CKgah?$CK?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_0BJ@HCO@error?5?$CFd?5?$CIlasterror?$CJ?6?$CFs?6?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_05EFDD@ERROR?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_0BP@POIE@Couldn?8t?5initialize?5soundcard?4?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_C@_0BG@CODL@Couldn?8t?5load?5module?4?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT _IsEqualGUID
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _==
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?memopen@@YAIPAD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?memclose@@YAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?memread@@YAHPAXHI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?memseek@@YAXIHC@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?memtell@@YAHI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?StartupDialog@@YGHPAUHWND__@@IIJ@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?upload_images@@YAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Error@@YAXPAD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _WinMain@16
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?StartupFlags@@3JA				; StartupFlags
_BSS	SEGMENT
?StartupFlags@@3JA DD 01H DUP (?)			; StartupFlags
_BSS	ENDS
PUBLIC	?memopen@@YAIPAD@Z				; memopen
EXTRN	__imp__GlobalAlloc@8:NEAR
EXTRN	_intromusic:BYTE
;	COMDAT ?memopen@@YAIPAD@Z
_TEXT	SEGMENT
_memfile$ = -4
?memopen@@YAIPAD@Z PROC NEAR				; memopen, COMDAT
; File D:\prj64k\glAss (eventad)\misccode\startup.cpp
; Line 55
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 58
	push	8
	push	4096					; 00001000H
	call	DWORD PTR __imp__GlobalAlloc@8
	mov	DWORD PTR _memfile$[ebp], eax
; Line 60
	mov	eax, DWORD PTR _memfile$[ebp]
	mov	DWORD PTR [eax+4], OFFSET FLAT:_intromusic
; Line 61
	mov	ecx, DWORD PTR _memfile$[ebp]
	mov	DWORD PTR [ecx], 0
; Line 62
	mov	eax, DWORD PTR _memfile$[ebp]
; Line 63
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?memopen@@YAIPAD@Z ENDP					; memopen
_TEXT	ENDS
PUBLIC	?memclose@@YAXI@Z				; memclose
EXTRN	__imp__GlobalFree@4:NEAR
;	COMDAT ?memclose@@YAXI@Z
_TEXT	SEGMENT
_handle$ = 8
_memfile$ = -4
?memclose@@YAXI@Z PROC NEAR				; memclose, COMDAT
; Line 66
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 67
	mov	eax, DWORD PTR _handle$[ebp]
	mov	DWORD PTR _memfile$[ebp], eax
; Line 68
	mov	ecx, DWORD PTR _memfile$[ebp]
	push	ecx
	call	DWORD PTR __imp__GlobalFree@4
; Line 69
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?memclose@@YAXI@Z ENDP					; memclose
_TEXT	ENDS
PUBLIC	?memread@@YAHPAXHI@Z				; memread
EXTRN	_memcpy:NEAR
;	COMDAT ?memread@@YAHPAXHI@Z
_TEXT	SEGMENT
_buffer$ = 8
_size$ = 12
_handle$ = 16
_memfile$ = -4
?memread@@YAHPAXHI@Z PROC NEAR				; memread, COMDAT
; Line 72
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 73
	mov	eax, DWORD PTR _handle$[ebp]
	mov	DWORD PTR _memfile$[ebp], eax
; Line 78
	mov	ecx, DWORD PTR _size$[ebp]
	push	ecx
	mov	edx, DWORD PTR _memfile$[ebp]
	mov	eax, DWORD PTR [edx+4]
	mov	ecx, DWORD PTR _memfile$[ebp]
	add	eax, DWORD PTR [ecx]
	push	eax
	mov	edx, DWORD PTR _buffer$[ebp]
	push	edx
	call	_memcpy
	add	esp, 12					; 0000000cH
; Line 79
	mov	eax, DWORD PTR _memfile$[ebp]
	mov	ecx, DWORD PTR [eax]
	add	ecx, DWORD PTR _size$[ebp]
	mov	edx, DWORD PTR _memfile$[ebp]
	mov	DWORD PTR [edx], ecx
; Line 80
	mov	eax, DWORD PTR _size$[ebp]
; Line 81
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?memread@@YAHPAXHI@Z ENDP				; memread
_TEXT	ENDS
PUBLIC	?memseek@@YAXIHC@Z				; memseek
;	COMDAT ?memseek@@YAXIHC@Z
_TEXT	SEGMENT
_handle$ = 8
_pos$ = 12
_mode$ = 16
_memfile$ = -4
?memseek@@YAXIHC@Z PROC NEAR				; memseek, COMDAT
; Line 84
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 85
	mov	eax, DWORD PTR _handle$[ebp]
	mov	DWORD PTR _memfile$[ebp], eax
; Line 87
	movsx	ecx, BYTE PTR _mode$[ebp]
	test	ecx, ecx
	jne	SHORT $L19546
; Line 88
	mov	edx, DWORD PTR _memfile$[ebp]
	mov	eax, DWORD PTR _pos$[ebp]
	mov	DWORD PTR [edx], eax
; Line 89
	jmp	SHORT $L19548
$L19546:
	movsx	ecx, BYTE PTR _mode$[ebp]
	cmp	ecx, 1
	jne	SHORT $L19548
; Line 90
	mov	edx, DWORD PTR _memfile$[ebp]
	mov	eax, DWORD PTR [edx]
	add	eax, DWORD PTR _pos$[ebp]
	mov	ecx, DWORD PTR _memfile$[ebp]
	mov	DWORD PTR [ecx], eax
$L19548:
; Line 97
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?memseek@@YAXIHC@Z ENDP					; memseek
_TEXT	ENDS
PUBLIC	?memtell@@YAHI@Z				; memtell
;	COMDAT ?memtell@@YAHI@Z
_TEXT	SEGMENT
_handle$ = 8
_memfile$ = -4
?memtell@@YAHI@Z PROC NEAR				; memtell, COMDAT
; Line 100
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
; Line 101
	mov	eax, DWORD PTR _handle$[ebp]
	mov	DWORD PTR _memfile$[ebp], eax
; Line 102
	mov	ecx, DWORD PTR _memfile$[ebp]
	mov	eax, DWORD PTR [ecx]
; Line 103
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?memtell@@YAHI@Z ENDP					; memtell
_TEXT	ENDS
PUBLIC	?StartupDialog@@YGHPAUHWND__@@IIJ@Z		; StartupDialog
PUBLIC	??_C@_0N@NBJB@160?5x?5120?5?3?$CJ?$AA@		; `string'
PUBLIC	??_C@_09MOED@320?5x?5240?$AA@			; `string'
PUBLIC	??_C@_09BJFK@400?5x?5300?$AA@			; `string'
PUBLIC	??_C@_09NBBP@512?5x?5384?$AA@			; `string'
PUBLIC	??_C@_09LGEF@640?5x?5480?$AA@			; `string'
PUBLIC	??_C@_09BIHH@800?5x?5600?$AA@			; `string'
PUBLIC	??_C@_0L@NKMD@1024?5x?5768?$AA@			; `string'
PUBLIC	??_C@_0L@NHAP@1152?5x?5864?$AA@			; `string'
PUBLIC	??_C@_0L@DLDO@1280?5x?5720?$AA@			; `string'
PUBLIC	??_C@_0M@HHGD@1280?5x?51024?$AA@		; `string'
PUBLIC	??_C@_0BC@IOON@1600?5x?51200?5?$CKgah?$CK?$AA@	; `string'
EXTRN	__imp__EndDialog@8:NEAR
EXTRN	__imp__CheckDlgButton@12:NEAR
EXTRN	__imp__IsDlgButtonChecked@8:NEAR
EXTRN	__imp__SendDlgItemMessageA@20:NEAR
;	COMDAT ??_C@_0N@NBJB@160?5x?5120?5?3?$CJ?$AA@
; File D:\prj64k\glAss (eventad)\misccode\startup.cpp
CONST	SEGMENT
??_C@_0N@NBJB@160?5x?5120?5?3?$CJ?$AA@ DB '160 x 120 :)', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_09MOED@320?5x?5240?$AA@
CONST	SEGMENT
??_C@_09MOED@320?5x?5240?$AA@ DB '320 x 240', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_09BJFK@400?5x?5300?$AA@
CONST	SEGMENT
??_C@_09BJFK@400?5x?5300?$AA@ DB '400 x 300', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_09NBBP@512?5x?5384?$AA@
CONST	SEGMENT
??_C@_09NBBP@512?5x?5384?$AA@ DB '512 x 384', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_09LGEF@640?5x?5480?$AA@
CONST	SEGMENT
??_C@_09LGEF@640?5x?5480?$AA@ DB '640 x 480', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_09BIHH@800?5x?5600?$AA@
CONST	SEGMENT
??_C@_09BIHH@800?5x?5600?$AA@ DB '800 x 600', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0L@NKMD@1024?5x?5768?$AA@
CONST	SEGMENT
??_C@_0L@NKMD@1024?5x?5768?$AA@ DB '1024 x 768', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0L@NHAP@1152?5x?5864?$AA@
CONST	SEGMENT
??_C@_0L@NHAP@1152?5x?5864?$AA@ DB '1152 x 864', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0L@DLDO@1280?5x?5720?$AA@
CONST	SEGMENT
??_C@_0L@DLDO@1280?5x?5720?$AA@ DB '1280 x 720', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0M@HHGD@1280?5x?51024?$AA@
CONST	SEGMENT
??_C@_0M@HHGD@1280?5x?51024?$AA@ DB '1280 x 1024', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0BC@IOON@1600?5x?51200?5?$CKgah?$CK?$AA@
CONST	SEGMENT
??_C@_0BC@IOON@1600?5x?51200?5?$CKgah?$CK?$AA@ DB '1600 x 1200 *gah*', 00H ; `string'
CONST	ENDS
;	COMDAT ?StartupDialog@@YGHPAUHWND__@@IIJ@Z
_TEXT	SEGMENT
_hWnd$ = 8
_uMsg$ = 12
_wParam$ = 16
_r$19606 = -4
?StartupDialog@@YGHPAUHWND__@@IIJ@Z PROC NEAR		; StartupDialog, COMDAT
; File D:\prj64k\glAss (eventad)\misccode\startup.cpp
; Line 107
	push	ebp
	mov	ebp, esp
	sub	esp, 76					; 0000004cH
	push	ebx
	push	esi
	push	edi
; Line 109
	mov	eax, DWORD PTR _uMsg$[ebp]
	mov	DWORD PTR -8+[ebp], eax
	cmp	DWORD PTR -8+[ebp], 272			; 00000110H
	je	SHORT $L19564
	cmp	DWORD PTR -8+[ebp], 273			; 00000111H
	je	$L19598
	jmp	$L19610
$L19564:
; Line 112
	push	OFFSET FLAT:??_C@_0N@NBJB@160?5x?5120?5?3?$CJ?$AA@ ; `string'
	push	0
	push	384					; 00000180H
	push	1001					; 000003e9H
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	DWORD PTR __imp__SendDlgItemMessageA@20
; Line 113
	push	OFFSET FLAT:??_C@_09MOED@320?5x?5240?$AA@ ; `string'
	push	0
	push	384					; 00000180H
	push	1001					; 000003e9H
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__SendDlgItemMessageA@20
; Line 114
	push	OFFSET FLAT:??_C@_09BJFK@400?5x?5300?$AA@ ; `string'
	push	0
	push	384					; 00000180H
	push	1001					; 000003e9H
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	DWORD PTR __imp__SendDlgItemMessageA@20
; Line 115
	push	OFFSET FLAT:??_C@_09NBBP@512?5x?5384?$AA@ ; `string'
	push	0
	push	384					; 00000180H
	push	1001					; 000003e9H
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	DWORD PTR __imp__SendDlgItemMessageA@20
; Line 116
	push	OFFSET FLAT:??_C@_09LGEF@640?5x?5480?$AA@ ; `string'
	push	0
	push	384					; 00000180H
	push	1001					; 000003e9H
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__SendDlgItemMessageA@20
; Line 117
	push	OFFSET FLAT:??_C@_09BIHH@800?5x?5600?$AA@ ; `string'
	push	0
	push	384					; 00000180H
	push	1001					; 000003e9H
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	DWORD PTR __imp__SendDlgItemMessageA@20
; Line 118
	push	OFFSET FLAT:??_C@_0L@NKMD@1024?5x?5768?$AA@ ; `string'
	push	0
	push	384					; 00000180H
	push	1001					; 000003e9H
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	DWORD PTR __imp__SendDlgItemMessageA@20
; Line 119
	push	OFFSET FLAT:??_C@_0L@NHAP@1152?5x?5864?$AA@ ; `string'
	push	0
	push	384					; 00000180H
	push	1001					; 000003e9H
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__SendDlgItemMessageA@20
; Line 120
	push	OFFSET FLAT:??_C@_0L@DLDO@1280?5x?5720?$AA@ ; `string'
	push	0
	push	384					; 00000180H
	push	1001					; 000003e9H
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	DWORD PTR __imp__SendDlgItemMessageA@20
; Line 121
	push	OFFSET FLAT:??_C@_0M@HHGD@1280?5x?51024?$AA@ ; `string'
	push	0
	push	384					; 00000180H
	push	1001					; 000003e9H
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	DWORD PTR __imp__SendDlgItemMessageA@20
; Line 122
	push	OFFSET FLAT:??_C@_0BC@IOON@1600?5x?51200?5?$CKgah?$CK?$AA@ ; `string'
	push	0
	push	384					; 00000180H
	push	1001					; 000003e9H
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__SendDlgItemMessageA@20
; Line 123
	push	0
	push	5
	push	390					; 00000186H
	push	1001					; 000003e9H
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	DWORD PTR __imp__SendDlgItemMessageA@20
; Line 127
	push	1
	push	1002					; 000003eaH
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	DWORD PTR __imp__CheckDlgButton@12
; Line 129
	push	1
	push	1003					; 000003ebH
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__CheckDlgButton@12
; Line 130
	jmp	$L19561
$L19598:
; Line 133
	mov	eax, DWORD PTR _wParam$[ebp]
	and	eax, 65535				; 0000ffffH
	and	eax, 65535				; 0000ffffH
	mov	DWORD PTR -12+[ebp], eax
	cmp	DWORD PTR -12+[ebp], 1
	je	SHORT $L19605
	cmp	DWORD PTR -12+[ebp], 2
	je	$L19609
	jmp	$L19602
$L19605:
; Line 137
	push	0
	push	0
	push	392					; 00000188H
	push	1001					; 000003e9H
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	DWORD PTR __imp__SendDlgItemMessageA@20
	mov	DWORD PTR _r$19606[ebp], eax
; Line 138
	mov	edx, 1
	mov	ecx, DWORD PTR _r$19606[ebp]
	shl	edx, cl
	mov	DWORD PTR ?StartupFlags@@3JA, edx	; StartupFlags
; Line 139
	push	1002					; 000003eaH
	mov	eax, DWORD PTR _hWnd$[ebp]
	push	eax
	call	DWORD PTR __imp__IsDlgButtonChecked@8
	test	eax, eax
	jne	SHORT $L19607
	mov	ecx, DWORD PTR ?StartupFlags@@3JA	; StartupFlags
	or	ch, 32					; 00000020H
	mov	DWORD PTR ?StartupFlags@@3JA, ecx	; StartupFlags
$L19607:
; Line 140
	push	1003					; 000003ebH
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__IsDlgButtonChecked@8
	test	eax, eax
	je	SHORT $L19608
	mov	eax, DWORD PTR ?StartupFlags@@3JA	; StartupFlags
	or	ah, -128				; ffffff80H
	mov	DWORD PTR ?StartupFlags@@3JA, eax	; StartupFlags
$L19608:
; Line 141
	push	0
	mov	ecx, DWORD PTR _hWnd$[ebp]
	push	ecx
	call	DWORD PTR __imp__EndDialog@8
; Line 143
	jmp	SHORT $L19602
$L19609:
; Line 146
	mov	DWORD PTR ?StartupFlags@@3JA, 0		; StartupFlags
; Line 147
	push	0
	mov	edx, DWORD PTR _hWnd$[ebp]
	push	edx
	call	DWORD PTR __imp__EndDialog@8
$L19602:
$L19610:
$L19561:
; Line 158
	xor	eax, eax
; Line 159
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
?StartupDialog@@YGHPAUHWND__@@IIJ@Z ENDP		; StartupDialog
_TEXT	ENDS
PUBLIC	?upload_images@@YAXXZ				; upload_images
EXTRN	?glaUploadGif@@YAXHPAEJ@Z:NEAR			; glaUploadGif
EXTRN	_gif_flare:BYTE
EXTRN	_gif_psikorp2:BYTE
EXTRN	_gif_grid:BYTE
EXTRN	_gif_rost:BYTE
EXTRN	_gif_clouds:BYTE
EXTRN	_gif_psikorp3:BYTE
EXTRN	_gif_title:BYTE
EXTRN	_gif_twister2:BYTE
EXTRN	_gif_green:BYTE
EXTRN	_gif_silu:BYTE
EXTRN	_gif_names:BYTE
EXTRN	_gif_psikorp4:BYTE
;	COMDAT ?upload_images@@YAXXZ
_TEXT	SEGMENT
?upload_images@@YAXXZ PROC NEAR				; upload_images, COMDAT
; Line 164
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
; Line 165
	push	1
	push	OFFSET FLAT:_gif_flare
	push	102					; 00000066H
	call	?glaUploadGif@@YAXHPAEJ@Z		; glaUploadGif
	add	esp, 12					; 0000000cH
; Line 166
	push	1
	push	OFFSET FLAT:_gif_psikorp2
	push	103					; 00000067H
	call	?glaUploadGif@@YAXHPAEJ@Z		; glaUploadGif
	add	esp, 12					; 0000000cH
; Line 168
	push	1
	push	OFFSET FLAT:_gif_grid
	push	105					; 00000069H
	call	?glaUploadGif@@YAXHPAEJ@Z		; glaUploadGif
	add	esp, 12					; 0000000cH
; Line 170
	push	1
	push	OFFSET FLAT:_gif_rost
	push	109					; 0000006dH
	call	?glaUploadGif@@YAXHPAEJ@Z		; glaUploadGif
	add	esp, 12					; 0000000cH
; Line 172
	push	1
	push	OFFSET FLAT:_gif_clouds
	push	111					; 0000006fH
	call	?glaUploadGif@@YAXHPAEJ@Z		; glaUploadGif
	add	esp, 12					; 0000000cH
; Line 173
	push	1
	push	OFFSET FLAT:_gif_psikorp3
	push	112					; 00000070H
	call	?glaUploadGif@@YAXHPAEJ@Z		; glaUploadGif
	add	esp, 12					; 0000000cH
; Line 174
	push	1
	push	OFFSET FLAT:_gif_title
	push	113					; 00000071H
	call	?glaUploadGif@@YAXHPAEJ@Z		; glaUploadGif
	add	esp, 12					; 0000000cH
; Line 177
	push	1
	push	OFFSET FLAT:_gif_twister2
	push	117					; 00000075H
	call	?glaUploadGif@@YAXHPAEJ@Z		; glaUploadGif
	add	esp, 12					; 0000000cH
; Line 181
	push	1
	push	OFFSET FLAT:_gif_psikorp4
	push	123					; 0000007bH
	call	?glaUploadGif@@YAXHPAEJ@Z		; glaUploadGif
	add	esp, 12					; 0000000cH
; Line 182
	push	1
	push	OFFSET FLAT:_gif_green
	push	120					; 00000078H
	call	?glaUploadGif@@YAXHPAEJ@Z		; glaUploadGif
	add	esp, 12					; 0000000cH
; Line 183
	push	1
	push	OFFSET FLAT:_gif_silu
	push	121					; 00000079H
	call	?glaUploadGif@@YAXHPAEJ@Z		; glaUploadGif
	add	esp, 12					; 0000000cH
; Line 184
	push	1
	push	OFFSET FLAT:_gif_names
	push	122					; 0000007aH
	call	?glaUploadGif@@YAXHPAEJ@Z		; glaUploadGif
	add	esp, 12					; 0000000cH
; Line 185
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?upload_images@@YAXXZ ENDP				; upload_images
_TEXT	ENDS
PUBLIC	??_C@_0BJ@HCO@error?5?$CFd?5?$CIlasterror?$CJ?6?$CFs?6?$AA@ ; `string'
PUBLIC	??_C@_05EFDD@ERROR?$AA@				; `string'
PUBLIC	?Error@@YAXPAD@Z				; Error
EXTRN	__imp__MessageBoxA@16:NEAR
EXTRN	__imp__wsprintfA:NEAR
EXTRN	__imp__ExitProcess@4:NEAR
EXTRN	__imp__GetLastError@0:NEAR
;	COMDAT ??_C@_0BJ@HCO@error?5?$CFd?5?$CIlasterror?$CJ?6?$CFs?6?$AA@
; File D:\prj64k\glAss (eventad)\misccode\startup.cpp
CONST	SEGMENT
??_C@_0BJ@HCO@error?5?$CFd?5?$CIlasterror?$CJ?6?$CFs?6?$AA@ DB 'error %d '
	DB	'(lasterror)', 0aH, '%s', 0aH, 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_05EFDD@ERROR?$AA@
CONST	SEGMENT
??_C@_05EFDD@ERROR?$AA@ DB 'ERROR', 00H			; `string'
CONST	ENDS
;	COMDAT ?Error@@YAXPAD@Z
_TEXT	SEGMENT
_string$ = 8
_dum$ = -1024
?Error@@YAXPAD@Z PROC NEAR				; Error, COMDAT
; File D:\prj64k\glAss (eventad)\misccode\startup.cpp
; Line 187
	push	ebp
	mov	ebp, esp
	sub	esp, 1088				; 00000440H
	push	ebx
	push	esi
	push	edi
; Line 191
	mov	eax, DWORD PTR _string$[ebp]
	push	eax
	call	DWORD PTR __imp__GetLastError@0
	push	eax
	push	OFFSET FLAT:??_C@_0BJ@HCO@error?5?$CFd?5?$CIlasterror?$CJ?6?$CFs?6?$AA@ ; `string'
	lea	ecx, DWORD PTR _dum$[ebp]
	push	ecx
	call	DWORD PTR __imp__wsprintfA
	add	esp, 16					; 00000010H
; Line 192
	push	0
	push	OFFSET FLAT:??_C@_05EFDD@ERROR?$AA@	; `string'
	lea	edx, DWORD PTR _dum$[ebp]
	push	edx
	push	0
	call	DWORD PTR __imp__MessageBoxA@16
; Line 194
	push	0
	call	DWORD PTR __imp__ExitProcess@4
$L19627:
; Line 195
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?Error@@YAXPAD@Z ENDP					; Error
_TEXT	ENDS
PUBLIC	??_C@_0BP@POIE@Couldn?8t?5initialize?5soundcard?4?$AA@ ; `string'
PUBLIC	??_C@_0BG@CODL@Couldn?8t?5load?5module?4?$AA@	; `string'
PUBLIC	_WinMain@16
PUBLIC	__real@4@40068e00000000000000
EXTRN	__imp__DialogBoxParamA@20:NEAR
EXTRN	__fltused:NEAR
EXTRN	_FSOUND_File_SetCallbacks:NEAR
EXTRN	_FSOUND_Init:NEAR
EXTRN	_FSOUND_Close:NEAR
EXTRN	_FMUSIC_LoadSong:NEAR
EXTRN	_FMUSIC_FreeSong:NEAR
EXTRN	_FMUSIC_PlaySong:NEAR
EXTRN	?glaBlit@@YAXXZ:NEAR				; glaBlit
EXTRN	?glaCls@@YAXM@Z:NEAR				; glaCls
EXTRN	?glaStartup@@YAXHIII@Z:NEAR			; glaStartup
EXTRN	?glaShutdown@@YAXXZ:NEAR			; glaShutdown
EXTRN	?glaDefaultProjection@@YAXXZ:NEAR		; glaDefaultProjection
EXTRN	?glaExit@@YAHXZ:NEAR				; glaExit
EXTRN	?glaReset@@YAXXZ:NEAR				; glaReset
EXTRN	?glaTime@@YAMXZ:NEAR				; glaTime
EXTRN	?_pd@@3PAMA:DWORD				; _pd
EXTRN	?_pu@@3PAMA:DWORD				; _pu
EXTRN	?_pv@@3PAMA:DWORD				; _pv
EXTRN	?_pu2@@3PAMA:DWORD				; _pu2
EXTRN	?_pv2@@3PAMA:DWORD				; _pv2
EXTRN	?event_run@@YAXMM@Z:NEAR			; event_run
EXTRN	__imp__Sleep@4:NEAR
EXTRN	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z:NEAR	; event_register
EXTRN	?event_init@@YAXXZ:NEAR				; event_init
EXTRN	?event_free@@YAXXZ:NEAR				; event_free
EXTRN	?p_cubes_init@@YAXXZ:NEAR			; p_cubes_init
EXTRN	?p_cubes_run@@YAXPAUEVENT@@@Z:NEAR		; p_cubes_run
EXTRN	?p_greetings_init@@YAXXZ:NEAR			; p_greetings_init
EXTRN	?p_greetings_run@@YAXPAUEVENT@@@Z:NEAR		; p_greetings_run
EXTRN	?p_psyk_run@@YAXPAUEVENT@@@Z:NEAR		; p_psyk_run
EXTRN	?p_twister_run@@YAXPAUEVENT@@@Z:NEAR		; p_twister_run
EXTRN	?p_klask_init@@YAXXZ:NEAR			; p_klask_init
EXTRN	?p_klask_run@@YAXPAUEVENT@@@Z:NEAR		; p_klask_run
EXTRN	?p_wirelandscape_run@@YAXPAUEVENT@@@Z:NEAR	; p_wirelandscape_run
EXTRN	?p_aftershit_run@@YAXPAUEVENT@@@Z:NEAR		; p_aftershit_run
EXTRN	?p_twist3d_run@@YAXPAUEVENT@@@Z:NEAR		; p_twist3d_run
EXTRN	?p_sphere_run@@YAXPAUEVENT@@@Z:NEAR		; p_sphere_run
EXTRN	?p_name_run@@YAXPAUEVENT@@@Z:NEAR		; p_name_run
EXTRN	?p_title_run@@YAXPAUEVENT@@@Z:NEAR		; p_title_run
EXTRN	?p_whiteflash_run@@YAXPAUEVENT@@@Z:NEAR		; p_whiteflash_run
EXTRN	?p_static_run@@YAXPAUEVENT@@@Z:NEAR		; p_static_run
EXTRN	?p_tunnel_run@@YAXPAUEVENT@@@Z:NEAR		; p_tunnel_run
EXTRN	?p_fulintro_run@@YAXPAUEVENT@@@Z:NEAR		; p_fulintro_run
EXTRN	?p_hanzon_run@@YAXPAUEVENT@@@Z:NEAR		; p_hanzon_run
EXTRN	?p_fadeblack_run@@YAXPAUEVENT@@@Z:NEAR		; p_fadeblack_run
EXTRN	?p_loading_draw@@YAXHH@Z:NEAR			; p_loading_draw
EXTRN	_gif_font:BYTE
;	COMDAT ??_C@_0BP@POIE@Couldn?8t?5initialize?5soundcard?4?$AA@
; File D:\prj64k\glAss (eventad)\misccode\startup.cpp
CONST	SEGMENT
??_C@_0BP@POIE@Couldn?8t?5initialize?5soundcard?4?$AA@ DB 'Couldn''t init'
	DB	'ialize soundcard.', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0BG@CODL@Couldn?8t?5load?5module?4?$AA@
CONST	SEGMENT
??_C@_0BG@CODL@Couldn?8t?5load?5module?4?$AA@ DB 'Couldn''t load module.', 00H ; `string'
CONST	ENDS
;	COMDAT __real@4@40068e00000000000000
CONST	SEGMENT
__real@4@40068e00000000000000 DD 0430e0000r	; 142
CONST	ENDS
;	COMDAT _WinMain@16
_TEXT	SEGMENT
_hInstance$ = 8
_mod$ = -4
_w$19643 = -8
_h$19644 = -12
_t$19672 = -16
_WinMain@16 PROC NEAR					; COMDAT
; File D:\prj64k\glAss (eventad)\misccode\startup.cpp
; Line 197
	push	ebp
	mov	ebp, esp
	sub	esp, 80					; 00000050H
	push	ebx
	push	esi
	push	edi
; Line 201
	mov	DWORD PTR ?StartupFlags@@3JA, 0		; StartupFlags
; Line 203
	push	0
	push	OFFSET FLAT:?StartupDialog@@YGHPAUHWND__@@IIJ@Z ; StartupDialog
	push	0
	push	101					; 00000065H
	mov	eax, DWORD PTR _hInstance$[ebp]
	push	eax
	call	DWORD PTR __imp__DialogBoxParamA@20
; Line 205
	cmp	DWORD PTR ?StartupFlags@@3JA, 0		; StartupFlags
	je	$L19642
; Line 210
	mov	DWORD PTR _w$19643[ebp], 640		; 00000280H
; Line 211
	mov	DWORD PTR _h$19644[ebp], 480		; 000001e0H
; Line 212
	mov	ecx, DWORD PTR ?StartupFlags@@3JA	; StartupFlags
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L19645
	mov	DWORD PTR _w$19643[ebp], 160		; 000000a0H
	mov	DWORD PTR _h$19644[ebp], 120		; 00000078H
$L19645:
; Line 213
	mov	edx, DWORD PTR ?StartupFlags@@3JA	; StartupFlags
	and	edx, 2
	test	edx, edx
	je	SHORT $L19646
	mov	DWORD PTR _w$19643[ebp], 320		; 00000140H
	mov	DWORD PTR _h$19644[ebp], 240		; 000000f0H
$L19646:
; Line 214
	mov	eax, DWORD PTR ?StartupFlags@@3JA	; StartupFlags
	and	eax, 4
	test	eax, eax
	je	SHORT $L19647
	mov	DWORD PTR _w$19643[ebp], 400		; 00000190H
	mov	DWORD PTR _h$19644[ebp], 300		; 0000012cH
$L19647:
; Line 215
	mov	ecx, DWORD PTR ?StartupFlags@@3JA	; StartupFlags
	and	ecx, 8
	test	ecx, ecx
	je	SHORT $L19648
	mov	DWORD PTR _w$19643[ebp], 512		; 00000200H
	mov	DWORD PTR _h$19644[ebp], 384		; 00000180H
$L19648:
; Line 216
	mov	edx, DWORD PTR ?StartupFlags@@3JA	; StartupFlags
	and	edx, 32					; 00000020H
	test	edx, edx
	je	SHORT $L19649
	mov	DWORD PTR _w$19643[ebp], 800		; 00000320H
	mov	DWORD PTR _h$19644[ebp], 600		; 00000258H
$L19649:
; Line 217
	mov	eax, DWORD PTR ?StartupFlags@@3JA	; StartupFlags
	and	eax, 64					; 00000040H
	test	eax, eax
	je	SHORT $L19650
	mov	DWORD PTR _w$19643[ebp], 1024		; 00000400H
	mov	DWORD PTR _h$19644[ebp], 768		; 00000300H
$L19650:
; Line 218
	mov	ecx, DWORD PTR ?StartupFlags@@3JA	; StartupFlags
	and	ecx, 128				; 00000080H
	test	ecx, ecx
	je	SHORT $L19651
	mov	DWORD PTR _w$19643[ebp], 1152		; 00000480H
	mov	DWORD PTR _h$19644[ebp], 864		; 00000360H
$L19651:
; Line 219
	mov	edx, DWORD PTR ?StartupFlags@@3JA	; StartupFlags
	and	edx, 256				; 00000100H
	test	edx, edx
	je	SHORT $L19652
	mov	DWORD PTR _w$19643[ebp], 1280		; 00000500H
	mov	DWORD PTR _h$19644[ebp], 720		; 000002d0H
$L19652:
; Line 220
	mov	eax, DWORD PTR ?StartupFlags@@3JA	; StartupFlags
	and	eax, 512				; 00000200H
	test	eax, eax
	je	SHORT $L19653
	mov	DWORD PTR _w$19643[ebp], 1280		; 00000500H
	mov	DWORD PTR _h$19644[ebp], 1024		; 00000400H
$L19653:
; Line 221
	mov	ecx, DWORD PTR ?StartupFlags@@3JA	; StartupFlags
	and	ecx, 1024				; 00000400H
	test	ecx, ecx
	je	SHORT $L19654
	mov	DWORD PTR _w$19643[ebp], 1600		; 00000640H
	mov	DWORD PTR _h$19644[ebp], 1200		; 000004b0H
$L19654:
; Line 223
	push	32					; 00000020H
	mov	edx, DWORD PTR _h$19644[ebp]
	push	edx
	mov	eax, DWORD PTR _w$19643[ebp]
	push	eax
	mov	ecx, DWORD PTR ?StartupFlags@@3JA	; StartupFlags
	and	ecx, 8192				; 00002000H
	neg	ecx
	sbb	ecx, ecx
	inc	ecx
	push	ecx
	call	?glaStartup@@YAXHIII@Z			; glaStartup
	add	esp, 16					; 00000010H
; Line 233
	push	24000					; 00005dc0H
	push	4096					; 00001000H
	call	DWORD PTR __imp__GlobalAlloc@8
	mov	DWORD PTR ?_pd@@3PAMA, eax		; _pd
; Line 234
	push	24000					; 00005dc0H
	push	4096					; 00001000H
	call	DWORD PTR __imp__GlobalAlloc@8
	mov	DWORD PTR ?_pu@@3PAMA, eax		; _pu
; Line 235
	push	24000					; 00005dc0H
	push	4096					; 00001000H
	call	DWORD PTR __imp__GlobalAlloc@8
	mov	DWORD PTR ?_pv@@3PAMA, eax		; _pv
; Line 236
	push	24000					; 00005dc0H
	push	4096					; 00001000H
	call	DWORD PTR __imp__GlobalAlloc@8
	mov	DWORD PTR ?_pu2@@3PAMA, eax		; _pu2
; Line 237
	push	24000					; 00005dc0H
	push	4096					; 00001000H
	call	DWORD PTR __imp__GlobalAlloc@8
	mov	DWORD PTR ?_pv2@@3PAMA, eax		; _pv2
; Line 240
	push	1
	push	OFFSET FLAT:_gif_font
	push	106					; 0000006aH
	call	?glaUploadGif@@YAXHPAEJ@Z		; glaUploadGif
	add	esp, 12					; 0000000cH
; Line 242
	push	16					; 00000010H
	push	0
	call	?p_loading_draw@@YAXHH@Z		; p_loading_draw
	add	esp, 8
; Line 250
	call	?event_init@@YAXXZ			; event_init
; Line 253
	push	16					; 00000010H
	push	1
	call	?p_loading_draw@@YAXHH@Z		; p_loading_draw
	add	esp, 8
; Line 254
	call	?upload_images@@YAXXZ			; upload_images
; Line 256
	push	16					; 00000010H
	push	5
	call	?p_loading_draw@@YAXHH@Z		; p_loading_draw
	add	esp, 8
; Line 257
	call	?p_cubes_init@@YAXXZ			; p_cubes_init
; Line 259
	push	16					; 00000010H
	push	9
	call	?p_loading_draw@@YAXHH@Z		; p_loading_draw
	add	esp, 8
; Line 260
	call	?p_greetings_init@@YAXXZ		; p_greetings_init
; Line 262
	push	16					; 00000010H
	push	12					; 0000000cH
	call	?p_loading_draw@@YAXHH@Z		; p_loading_draw
	add	esp, 8
; Line 263
	call	?p_klask_init@@YAXXZ			; p_klask_init
; Line 265
	push	16					; 00000010H
	push	15					; 0000000fH
	call	?p_loading_draw@@YAXHH@Z		; p_loading_draw
	add	esp, 8
; Line 271
	mov	edx, DWORD PTR ?StartupFlags@@3JA	; StartupFlags
	and	edx, 32768				; 00008000H
	test	edx, edx
	je	SHORT $L19669
; Line 276
	push	OFFSET FLAT:?memtell@@YAHI@Z		; memtell
	push	OFFSET FLAT:?memseek@@YAXIHC@Z		; memseek
	push	OFFSET FLAT:?memread@@YAHPAXHI@Z	; memread
	push	OFFSET FLAT:?memclose@@YAXI@Z		; memclose
	push	OFFSET FLAT:?memopen@@YAIPAD@Z		; memopen
	call	_FSOUND_File_SetCallbacks
	add	esp, 20					; 00000014H
; Line 279
	push	0
	push	44100					; 0000ac44H
	call	_FSOUND_Init
	add	esp, 8
	movsx	eax, al
	test	eax, eax
	jne	SHORT $L19667
	push	OFFSET FLAT:??_C@_0BP@POIE@Couldn?8t?5initialize?5soundcard?4?$AA@ ; `string'
	call	?Error@@YAXPAD@Z			; Error
	add	esp, 4
$L19667:
; Line 284
	push	0
	push	0
	call	_FMUSIC_LoadSong
	add	esp, 8
	mov	DWORD PTR _mod$[ebp], eax
; Line 286
	cmp	DWORD PTR _mod$[ebp], 0
	jne	SHORT $L19669
	push	OFFSET FLAT:??_C@_0BG@CODL@Couldn?8t?5load?5module?4?$AA@ ; `string'
	call	?Error@@YAXPAD@Z			; Error
	add	esp, 4
$L19669:
; Line 291
	push	100					; 00000064H
	call	DWORD PTR __imp__Sleep@4
; Line 292
	push	1051260355				; 3ea8f5c3H
	call	?glaCls@@YAXM@Z				; glaCls
	add	esp, 4
; Line 295
	push	1
	push	OFFSET FLAT:?p_tunnel_run@@YAXPAUEVENT@@@Z ; p_tunnel_run
	push	1084647014				; 40a66666H
	push	1084227584				; 40a00000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 296
	push	0
	push	OFFSET FLAT:?p_wirelandscape_run@@YAXPAUEVENT@@@Z ; p_wirelandscape_run
	push	1084856730				; 40a9999aH
	push	1084437299				; 40a33333H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 297
	push	0
	push	OFFSET FLAT:?p_sphere_run@@YAXPAUEVENT@@@Z ; p_sphere_run
	push	1085066445				; 40accccdH
	push	1084647014				; 40a66666H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 298
	push	0
	push	OFFSET FLAT:?p_fulintro_run@@YAXPAUEVENT@@@Z ; p_fulintro_run
	push	1085276160				; 40b00000H
	push	1073741824				; 40000000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 301
	push	0
	push	OFFSET FLAT:?p_cubes_run@@YAXPAUEVENT@@@Z ; p_cubes_run
	push	1091777331				; 41133333H
	push	1091567616				; 41100000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 302
	push	0
	push	OFFSET FLAT:?p_psyk_run@@YAXPAUEVENT@@@Z ; p_psyk_run
	push	1091882189				; 4114cccdH
	push	1091672474				; 4111999aH
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 303
	push	0
	push	OFFSET FLAT:?p_twist3d_run@@YAXPAUEVENT@@@Z ; p_twist3d_run
	push	1091987046				; 41166666H
	push	1091777331				; 41133333H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 304
	push	1
	push	OFFSET FLAT:?p_fulintro_run@@YAXPAUEVENT@@@Z ; p_fulintro_run
	push	1092091904				; 41180000H
	push	1086324736				; 40c00000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 307
	push	0
	push	OFFSET FLAT:?p_twist3d_run@@YAXPAUEVENT@@@Z ; p_twist3d_run
	push	1095971635				; 41533333H
	push	1095761920				; 41500000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 308
	push	0
	push	OFFSET FLAT:?p_psyk_run@@YAXPAUEVENT@@@Z ; p_psyk_run
	push	1096076493				; 4154cccdH
	push	1095866778				; 4151999aH
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 309
	push	1
	push	OFFSET FLAT:?p_tunnel_run@@YAXPAUEVENT@@@Z ; p_tunnel_run
	push	1096181350				; 41566666H
	push	1095971635				; 41533333H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 310
	push	2
	push	OFFSET FLAT:?p_fulintro_run@@YAXPAUEVENT@@@Z ; p_fulintro_run
	push	1096286208				; 41580000H
	push	1092616192				; 41200000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 313
	push	256					; 00000100H
	push	OFFSET FLAT:?p_static_run@@YAXPAUEVENT@@@Z ; p_static_run
	push	1096495923				; 415b3333H
	push	1065353216				; 3f800000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 316
	push	0
	push	OFFSET FLAT:?p_whiteflash_run@@YAXPAUEVENT@@@Z ; p_whiteflash_run
	push	1097859072				; 41700000H
	push	1096810496				; 41600000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 317
	push	0
	push	OFFSET FLAT:?p_wirelandscape_run@@YAXPAUEVENT@@@Z ; p_wirelandscape_run
	push	1105723392				; 41e80000H
	push	1096810496				; 41600000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 320
	push	0
	push	OFFSET FLAT:?p_whiteflash_run@@YAXPAUEVENT@@@Z ; p_whiteflash_run
	push	1106247680				; 41f00000H
	push	1105723392				; 41e80000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 321
	push	0
	push	OFFSET FLAT:?p_psyk_run@@YAXPAUEVENT@@@Z ; p_psyk_run
	push	1109917696				; 42280000H
	push	1105723392				; 41e80000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 322
	push	3
	push	OFFSET FLAT:?p_title_run@@YAXPAUEVENT@@@Z ; p_title_run
	push	1114112000				; 42680000H
	push	1109655552				; 42240000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 323
	push	0
	push	OFFSET FLAT:?p_hanzon_run@@YAXPAUEVENT@@@Z ; p_hanzon_run
	push	1107820544				; 42080000H
	push	1105723392				; 41e80000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 326
	push	0
	push	OFFSET FLAT:?p_name_run@@YAXPAUEVENT@@@Z ; p_name_run
	push	1108082688				; 420c0000H
	push	1107296256				; 42000000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 327
	push	1
	push	OFFSET FLAT:?p_name_run@@YAXPAUEVENT@@@Z ; p_name_run
	push	1109131264				; 421c0000H
	push	1108344832				; 42100000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 330
	push	0
	push	OFFSET FLAT:?p_twist3d_run@@YAXPAUEVENT@@@Z ; p_twist3d_run
	push	1114112000				; 42680000H
	push	1109917696				; 42280000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 331
	push	0
	push	OFFSET FLAT:?p_whiteflash_run@@YAXPAUEVENT@@@Z ; p_whiteflash_run
	push	1110179840				; 422c0000H
	push	1109917696				; 42280000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 332
	push	0
	push	OFFSET FLAT:?p_twister_run@@YAXPAUEVENT@@@Z ; p_twister_run
	push	1112539136				; 42500000H
	push	1109131264				; 421c0000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 335
	push	0
	push	OFFSET FLAT:?p_cubes_run@@YAXPAUEVENT@@@Z ; p_cubes_run
	push	1117650944				; 429e0000H
	push	1114112000				; 42680000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 336
	push	0
	push	OFFSET FLAT:?p_whiteflash_run@@YAXPAUEVENT@@@Z ; p_whiteflash_run
	push	1114374144				; 426c0000H
	push	1114112000				; 42680000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 339
	push	0
	push	OFFSET FLAT:?p_whiteflash_run@@YAXPAUEVENT@@@Z ; p_whiteflash_run
	push	1117782016				; 42a00000H
	push	1117650944				; 429e0000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 340
	push	512					; 00000200H
	push	OFFSET FLAT:?p_tunnel_run@@YAXPAUEVENT@@@Z ; p_tunnel_run
	push	1118437376				; 42aa0000H
	push	1117650944				; 429e0000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 341
	push	0
	push	OFFSET FLAT:?p_sphere_run@@YAXPAUEVENT@@@Z ; p_sphere_run
	push	1118437376				; 42aa0000H
	push	1117650944				; 429e0000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 344
	push	264					; 00000108H
	push	OFFSET FLAT:?p_klask_run@@YAXPAUEVENT@@@Z ; p_klask_run
	push	1124925440				; 430d0000H
	push	1118437376				; 42aa0000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 347
	push	0
	push	OFFSET FLAT:?p_greetings_run@@YAXPAUEVENT@@@Z ; p_greetings_run
	push	1124073472				; 43000000H
	push	1118437376				; 42aa0000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 348
	push	0
	push	OFFSET FLAT:?p_whiteflash_run@@YAXPAUEVENT@@@Z ; p_whiteflash_run
	push	1118568448				; 42ac0000H
	push	1118437376				; 42aa0000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 349
	push	512					; 00000200H
	push	OFFSET FLAT:?p_tunnel_run@@YAXPAUEVENT@@@Z ; p_tunnel_run
	push	1124925440				; 430d0000H
	push	1120403456				; 42c80000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 352
	push	0
	push	OFFSET FLAT:?p_wirelandscape_run@@YAXPAUEVENT@@@Z ; p_wirelandscape_run
	push	1123549184				; 42f80000H
	push	1122238464				; 42e40000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 353
	push	2
	push	OFFSET FLAT:?p_psyk_run@@YAXPAUEVENT@@@Z ; p_psyk_run
	push	1123549184				; 42f80000H
	push	1122238464				; 42e40000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 354
	push	0
	push	OFFSET FLAT:?p_whiteflash_run@@YAXPAUEVENT@@@Z ; p_whiteflash_run
	push	1122369536				; 42e60000H
	push	1122238464				; 42e40000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 358
	push	0
	push	OFFSET FLAT:?p_aftershit_run@@YAXPAUEVENT@@@Z ; p_aftershit_run
	push	1124925440				; 430d0000H
	push	1123549184				; 42f80000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 359
	push	0
	push	OFFSET FLAT:?p_fadeblack_run@@YAXPAUEVENT@@@Z ; p_fadeblack_run
	push	1124925440				; 430d0000H
	push	1124761600				; 430a8000H
	call	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ; event_register
	add	esp, 16					; 00000010H
; Line 361
	call	?glaReset@@YAXXZ			; glaReset
; Line 363
	mov	ecx, DWORD PTR ?StartupFlags@@3JA	; StartupFlags
	and	ecx, 32768				; 00008000H
	test	ecx, ecx
	je	SHORT $L19671
; Line 364
	mov	edx, DWORD PTR _mod$[ebp]
	push	edx
	call	_FMUSIC_PlaySong
	add	esp, 4
$L19671:
; Line 368
	call	?glaTime@@YAMXZ				; glaTime
	fstp	DWORD PTR _t$19672[ebp]
; Line 369
	call	?glaDefaultProjection@@YAXXZ		; glaDefaultProjection
; Line 370
	push	1051260355				; 3ea8f5c3H
	call	?glaCls@@YAXM@Z				; glaCls
	add	esp, 4
; Line 371
	push	0
	mov	eax, DWORD PTR _t$19672[ebp]
	push	eax
	call	?event_run@@YAXMM@Z			; event_run
	add	esp, 8
; Line 372
	call	?glaBlit@@YAXXZ				; glaBlit
; Line 373
	call	?glaExit@@YAHXZ				; glaExit
	test	eax, eax
	jne	SHORT $L19676
	fld	DWORD PTR _t$19672[ebp]
	fcomp	DWORD PTR __real@4@40068e00000000000000
	fnstsw	ax
	test	ah, 1
	jne	SHORT $L19671
$L19676:
; Line 377
	mov	ecx, DWORD PTR ?StartupFlags@@3JA	; StartupFlags
	and	ecx, 32768				; 00008000H
	test	ecx, ecx
	je	SHORT $L19677
; Line 378
	mov	edx, DWORD PTR _mod$[ebp]
	push	edx
	call	_FMUSIC_FreeSong
	add	esp, 4
; Line 379
	call	_FSOUND_Close
$L19677:
; Line 382
	call	?event_free@@YAXXZ			; event_free
; Line 383
	call	?glaShutdown@@YAXXZ			; glaShutdown
$L19642:
; Line 387
	xor	eax, eax
; Line 388
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_WinMain@16 ENDP
_TEXT	ENDS
END
