	TITLE	E:\prj64k\nanolibc\c_functions.c
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
_TLS	SEGMENT DWORD USE32 PUBLIC 'TLS'
_TLS	ENDS
;	COMDAT __ftol
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	__ftol
;	COMDAT __ftol
_TEXT	SEGMENT
_skit$ = -4
__ftol	PROC NEAR					; COMDAT

; 13   : void __cdecl _ftol() {

	push	ebp
	mov	ebp, esp
	push	ecx

; 14   : 	long skit;
; 15   : 	__asm {
; 16   : //		fistp dword ptr [skit]
; 17   : //		mov eax, skit
; 18   : 		fistp dword ptr [skit]

	fistp	DWORD PTR _skit$[ebp]

; 19   : 		mov eax, skit

	mov	eax, DWORD PTR _skit$[ebp]

; 20   : 	};
; 21   : };

	leave
	ret	0
__ftol	ENDP
_TEXT	ENDS
END
