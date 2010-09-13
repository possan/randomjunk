	TITLE	E:\prj64k\glAss (eventad)\parts\p_loading.cpp
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
;	COMDAT ??_C@_0BN@LEHE@hey?5guys?8n?8gals?0?5this?5is?5not?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BM@BGGL@a?5accelerated?5demo?0?5this?5is?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@ONGB@a?5accelerated?564k?5intro?$CB?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@HOEE@gl?5ass?5?1?5psikorp?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BB@ICHF@?$CIc?$CJopywr0ng?51999?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
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
PUBLIC	__real@4@3ffa8f5c290000000000
EXTRN	__imp__glEnd@0:NEAR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__fltused:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
;	COMDAT __real@4@3ffa8f5c290000000000
; File E:\prj64k\glAss (eventad)\parts\p_loading.cpp
CONST	SEGMENT
__real@4@3ffa8f5c290000000000 DD 03d0f5c29r	; 0.035
CONST	ENDS
;	COMDAT ?plobox@@YAXMMH@Z
_TEXT	SEGMENT
_x$ = 8
_y$ = 12
_f$ = 16
?plobox@@YAXMMH@Z PROC NEAR				; plobox, COMDAT

; 5    : void plobox( float x, float y, int f ) {

	push	ecx
	push	ebx
	push	ebp
	push	esi
	push	edi

; 6    : 	float r = 0.035f;
; 7    : 	
; 8    : 	/*
; 9    : 	glBegin( GL_LINE_LOOP );
; 10   : 	glColor3f( 0.3, 0.6, 0.9 );
; 11   : 	glVertex3f( x-r, y-r, 0 );
; 12   : 	glVertex3f( x+r, y-r, 0 );
; 13   : 	glVertex3f( x+r, y+r, 0 );
; 14   : 	glVertex3f( x-r, y+r, 0 );
; 15   : 	glEnd();
; 16   : 	*/
; 17   : 
; 18   : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4

; 19   : 	glColor3f( 0.1f, 0.2f, 0.3f );

	mov	edi, DWORD PTR __imp__glColor3f@12
	push	1050253722				; 3e99999aH
	push	1045220557				; 3e4ccccdH
	push	1036831949				; 3dcccccdH
	call	edi

; 20   : 	if( f>0 ) glColor3f( 0.4f, 0.6f, 0.8f );

	mov	esi, DWORD PTR _f$[esp+16]
	test	esi, esi
	jle	SHORT $L17229
	push	1061997773				; 3f4ccccdH
	push	1058642330				; 3f19999aH
	push	1053609165				; 3ecccccdH
	call	edi

; 21   : 	if( f==0 ) glColor3f( 0.5f, 0.9f, 1 );

	test	esi, esi
$L17229:
	jne	SHORT $L17186
	push	1065353216				; 3f800000H
	push	1063675494				; 3f666666H
	push	1056964608				; 3f000000H
	call	edi
$L17186:

; 22   : 	glVertex3f( x-r, y-r, 0 );

	fld	DWORD PTR _y$[esp+16]
	mov	esi, DWORD PTR __imp__glVertex3f@12
	fsub	DWORD PTR __real@4@3ffa8f5c290000000000
	push	0
	fstp	DWORD PTR 16+[esp+20]
	fld	DWORD PTR _x$[esp+20]
	mov	edi, DWORD PTR 16+[esp+20]
	fsub	DWORD PTR __real@4@3ffa8f5c290000000000
	push	edi
	fstp	DWORD PTR -4+[esp+28]
	mov	ebx, DWORD PTR -4+[esp+28]
	push	ebx
	call	esi

; 23   : 	glVertex3f( x+r, y-r, 0 );

	fld	DWORD PTR _x$[esp+16]
	fadd	DWORD PTR __real@4@3ffa8f5c290000000000
	push	0
	push	edi
	fstp	DWORD PTR 8+[esp+24]
	mov	edi, DWORD PTR 8+[esp+24]
	push	edi
	call	esi

; 24   : 	glVertex3f( x+r, y+r, 0 );

	fld	DWORD PTR _y$[esp+16]
	fadd	DWORD PTR __real@4@3ffa8f5c290000000000
	push	0
	fstp	DWORD PTR 8+[esp+20]
	mov	ebp, DWORD PTR 8+[esp+20]
	push	ebp
	push	edi
	call	esi

; 25   : 	glVertex3f( x-r, y+r, 0 );

	push	0
	push	ebp
	push	ebx
	call	esi

; 26   : 	glEnd();

	call	DWORD PTR __imp__glEnd@0
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 27   : 
; 28   : };

	pop	ecx
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
PUBLIC	__real@4@3ffecccccd0000000000
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	?glaBlit@@YAXXZ:NEAR				; glaBlit
EXTRN	?glaCls@@YAXM@Z:NEAR				; glaCls
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	?glaDrawString@@YAXMMMMMMPAD@Z:NEAR		; glaDrawString
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__imp__glClearColor@16:NEAR
;	COMDAT ??_C@_0BN@LEHE@hey?5guys?8n?8gals?0?5this?5is?5not?$AA@
; File E:\prj64k\glAss (eventad)\parts\p_loading.cpp
_DATA	SEGMENT
??_C@_0BN@LEHE@hey?5guys?8n?8gals?0?5this?5is?5not?$AA@ DB 'hey guys''n'''
	DB	'gals, this is not', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BM@BGGL@a?5accelerated?5demo?0?5this?5is?$AA@
_DATA	SEGMENT
??_C@_0BM@BGGL@a?5accelerated?5demo?0?5this?5is?$AA@ DB 'a accelerated de'
	DB	'mo, this is', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BJ@ONGB@a?5accelerated?564k?5intro?$CB?$AA@
_DATA	SEGMENT
??_C@_0BJ@ONGB@a?5accelerated?564k?5intro?$CB?$AA@ DB 'a accelerated 64k '
	DB	'intro!', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@HOEE@gl?5ass?5?1?5psikorp?$AA@
_DATA	SEGMENT
??_C@_0BB@HOEE@gl?5ass?5?1?5psikorp?$AA@ DB 'gl ass / psikorp', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BB@ICHF@?$CIc?$CJopywr0ng?51999?$AA@
_DATA	SEGMENT
??_C@_0BB@ICHF@?$CIc?$CJopywr0ng?51999?$AA@ DB '(c)opywr0ng 1999', 00H ; `string'
_DATA	ENDS
;	COMDAT __real@4@3fffcccccd0000000000
CONST	SEGMENT
__real@4@3fffcccccd0000000000 DD 03fcccccdr	; 1.6
CONST	ENDS
;	COMDAT __real@4@3ffecccccd0000000000
CONST	SEGMENT
__real@4@3ffecccccd0000000000 DD 03f4ccccdr	; 0.8
CONST	ENDS
;	COMDAT ?p_loading_draw@@YAXHH@Z
_TEXT	SEGMENT
_step$ = 8
_max$ = 12
_i$ = -4
?p_loading_draw@@YAXHH@Z PROC NEAR			; p_loading_draw, COMDAT

; 30   : void p_loading_draw( int step, int max ) {

	push	ecx
	push	esi
	push	edi

; 31   : 	glClearColor( 0.1f, 0.2f, 0.3f, 1 );

	push	1065353216				; 3f800000H
	push	1050253722				; 3e99999aH
	push	1045220557				; 3e4ccccdH
	push	1036831949				; 3dcccccdH
	call	DWORD PTR __imp__glClearColor@16

; 32   : 	glaCls(0.0f);

	push	0
	call	?glaCls@@YAXM@Z				; glaCls
	add	esp, 4

; 33   : 
; 34   : 	glBlendFunc( GL_ONE, GL_ONE );

	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8

; 35   : 	glEnable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4

; 36   : 
; 37   : 	glaSetTexture( GIF_FONT );

	push	106					; 0000006aH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4

; 38   : 	glTexEnvi( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12

; 39   : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4

; 40   : 
; 41   : 
; 42   : 	glColor3f( 0.66f, 0.66f, 0.66f );

	mov	esi, DWORD PTR __imp__glColor3f@12
	push	1059648963				; 3f28f5c3H
	push	1059648963				; 3f28f5c3H
	push	1059648963				; 3f28f5c3H
	call	esi

; 43   : 	glaDrawString( 0, 0.05f, 0, 0.05f, 0.05f, 0.05f, "hey guys'n'gals, this is not" );

	push	OFFSET FLAT:??_C@_0BN@LEHE@hey?5guys?8n?8gals?0?5this?5is?5not?$AA@ ; `string'
	push	1028443341				; 3d4ccccdH
	push	1028443341				; 3d4ccccdH
	push	1028443341				; 3d4ccccdH
	push	0
	push	1028443341				; 3d4ccccdH
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString

; 44   : 	glaDrawString( 0, -0.05f, 0, 0.05f, 0.05f, 0.05f, "a accelerated demo, this is" );

	push	OFFSET FLAT:??_C@_0BM@BGGL@a?5accelerated?5demo?0?5this?5is?$AA@ ; `string'
	push	1028443341				; 3d4ccccdH
	push	1028443341				; 3d4ccccdH
	push	1028443341				; 3d4ccccdH
	push	0
	push	-1119040307				; bd4ccccdH
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString

; 45   : 	glaDrawString( 0, -0.15f, 0, 0.05f, 0.05f, 0.05f, "a accelerated 64k intro!" );

	push	OFFSET FLAT:??_C@_0BJ@ONGB@a?5accelerated?564k?5intro?$CB?$AA@ ; `string'
	push	1028443341				; 3d4ccccdH
	push	1028443341				; 3d4ccccdH
	push	1028443341				; 3d4ccccdH
	push	0
	push	-1105618534				; be19999aH
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString
	add	esp, 84					; 00000054H

; 46   : 
; 47   : 	glColor3f( 1, 1, 1 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi

; 48   : 	glaDrawString( 0, 0.5f, 0, 0.05f, 0.05f, 0.075f, "gl ass / psikorp" );

	push	OFFSET FLAT:??_C@_0BB@HOEE@gl?5ass?5?1?5psikorp?$AA@ ; `string'
	push	1033476506				; 3d99999aH
	push	1028443341				; 3d4ccccdH
	push	1028443341				; 3d4ccccdH
	push	0
	push	1056964608				; 3f000000H
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString
	add	esp, 28					; 0000001cH

; 49   : 
; 50   : 	glColor3f( 0.8f, 0.8f, 0.8f );

	push	1061997773				; 3f4ccccdH
	push	1061997773				; 3f4ccccdH
	push	1061997773				; 3f4ccccdH
	call	esi

; 51   : 	glaDrawString( 0, 0.35f, 0, 0.05f, 0.05f, 0.1f, "(c)opywr0ng 1999" );

	push	OFFSET FLAT:??_C@_0BB@ICHF@?$CIc?$CJopywr0ng?51999?$AA@ ; `string'
	push	1036831949				; 3dcccccdH
	push	1028443341				; 3d4ccccdH
	push	1028443341				; 3d4ccccdH
	push	0
	push	1051931443				; 3eb33333H
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString
	add	esp, 28					; 0000001cH

; 52   : 
; 53   : 	glEnd();

	call	DWORD PTR __imp__glEnd@0

; 54   : 
; 55   : 	glDisable( GL_TEXTURE_2D );

	push	3553					; 00000de1H
	call	DWORD PTR __imp__glDisable@4

; 56   : 	for( int i=0; i<=max; i++ ) {

	mov	edi, DWORD PTR _max$[esp+8]
	xor	esi, esi
	test	edi, edi
	mov	DWORD PTR _i$[esp+12], esi
	jl	SHORT $L17199

; 57   : 		float x = -0.8f + (float)i * 1.6f / (float)max;
; 58   : 		plobox( x, -0.72f, step-i );
; 59   : 	};
; 60   : 
; 61   : 	glaBlit();

	fild	DWORD PTR _max$[esp+8]
	push	ebx
	mov	ebx, DWORD PTR _step$[esp+12]
	fstp	DWORD PTR 12+[esp+12]
$L17197:
	fild	DWORD PTR _i$[esp+16]
	push	ebx
	push	-1086828052				; bf3851ecH
	push	ecx
	fmul	DWORD PTR __real@4@3fffcccccd0000000000
	fdiv	DWORD PTR 12+[esp+24]
	fsub	DWORD PTR __real@4@3ffecccccd0000000000
	fstp	DWORD PTR [esp]
	call	?plobox@@YAXMMH@Z			; plobox
	add	esp, 12					; 0000000cH
	inc	esi
	dec	ebx
	cmp	esi, edi
	mov	DWORD PTR _i$[esp+16], esi
	jle	SHORT $L17197
	pop	ebx
$L17199:
	call	?glaBlit@@YAXXZ				; glaBlit
	pop	edi
	pop	esi

; 62   : 	//Sleep( 150 );
; 63   : };

	pop	ecx
	ret	0
?p_loading_draw@@YAXHH@Z ENDP				; p_loading_draw
_TEXT	ENDS
END
