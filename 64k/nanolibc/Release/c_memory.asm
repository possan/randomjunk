	TITLE	E:\prj64k\nanolibc\c_memory.c
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
;	COMDAT _malloc
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _calloc
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _free
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _memset
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _memcpy
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	_malloc
EXTRN	__imp__GlobalAlloc@8:NEAR
;	COMDAT _malloc
_TEXT	SEGMENT
_length$ = 8
_malloc	PROC NEAR					; COMDAT

; 10   : 	void *temp = GlobalAlloc( MEM_COMMIT, length+100 );

	mov	eax, DWORD PTR _length$[esp-4]
	add	eax, 100				; 00000064H
	push	eax
	push	4096					; 00001000H
	call	DWORD PTR __imp__GlobalAlloc@8

; 11   : 	return temp;
; 12   : };

	ret	0
_malloc	ENDP
_TEXT	ENDS
PUBLIC	_memset
PUBLIC	_calloc
;	COMDAT _calloc
_TEXT	SEGMENT
_length$ = 8
_calloc	PROC NEAR					; COMDAT

; 14   : void * __cdecl calloc( long length ) {

	push	esi

; 15   : 	void *temp = GlobalAlloc( MEM_COMMIT, length+100 );

	mov	esi, DWORD PTR _length$[esp]
	push	edi
	lea	eax, DWORD PTR [esi+100]
	push	eax
	push	4096					; 00001000H
	call	DWORD PTR __imp__GlobalAlloc@8
	mov	edi, eax

; 16   : 	memset( temp, 0, length );

	push	esi
	push	0
	push	edi
	call	_memset
	add	esp, 12					; 0000000cH

; 17   : 	return temp;

	mov	eax, edi
	pop	edi
	pop	esi

; 18   : };

	ret	0
_calloc	ENDP
_TEXT	ENDS
PUBLIC	_free
EXTRN	__imp__GlobalFree@4:NEAR
;	COMDAT _free
_TEXT	SEGMENT
_mem$ = 8
_free	PROC NEAR					; COMDAT

; 21   : 	GlobalFree( mem );

	push	DWORD PTR _mem$[esp-4]
	call	DWORD PTR __imp__GlobalFree@4

; 22   : };

	ret	0
_free	ENDP
_TEXT	ENDS
;	COMDAT _memset
_TEXT	SEGMENT
_destination$ = 8
_value$ = 12
_lengt$ = 16
_memset	PROC NEAR					; COMDAT

; 26   : void * __cdecl memset( void *destination, int value, unsigned int lengt ) {

	push	ebp
	mov	ebp, esp
	push	edi

; 27   : 	__asm {
; 28   : 		mov edi, destination

	mov	edi, DWORD PTR _destination$[ebp]

; 29   : 		mov eax, value

	mov	eax, DWORD PTR _value$[ebp]

; 30   : 		mov ecx, lengt

	mov	ecx, DWORD PTR _lengt$[ebp]

; 31   : 		rep stosb

	rep	 stosb

; 32   : 	};
; 33   : 	return destination;

	mov	eax, DWORD PTR _destination$[ebp]
	pop	edi

; 34   : };

	pop	ebp
	ret	0
_memset	ENDP
_TEXT	ENDS
PUBLIC	_memcpy
;	COMDAT _memcpy
_TEXT	SEGMENT
_destination$ = 8
_source$ = 12
_lengt$ = 16
_memcpy	PROC NEAR					; COMDAT

; 36   : void * __cdecl memcpy( void *destination, const void *source, unsigned int lengt ) {

	push	ebp
	mov	ebp, esp
	push	esi
	push	edi

; 37   : 	__asm {
; 38   : 		mov edi, destination

	mov	edi, DWORD PTR _destination$[ebp]

; 39   : 		mov esi, source

	mov	esi, DWORD PTR _source$[ebp]

; 40   : 		mov ecx, lengt

	mov	ecx, DWORD PTR _lengt$[ebp]

; 41   : 		rep movsb

	rep	 movsb

; 42   : 	};
; 43   : 	return destination;

	mov	eax, DWORD PTR _destination$[ebp]
	pop	edi
	pop	esi

; 44   : };

	pop	ebp
	ret	0
_memcpy	ENDP
_TEXT	ENDS
END
