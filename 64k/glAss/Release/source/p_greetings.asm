	TITLE	E:\prj64k\glAss (eventad)\parts\p_greetings.cpp
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
;	COMDAT ??_C@_09DMFC@we?5luhv?4?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@OJOM@neurodruid?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04IBLB@mind?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_00A@?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07GNCA@aardbei?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_09EBMO@former?5k2?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07IIGO@woorlic?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_03PFCJ@tbl?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07DBAH@jeskola?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05DFFL@yodel?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_06GDLG@trauma?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0N@NPHF@mediascience?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_07EIKO@komplex?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@OAAJ@bingoberra?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_08LALN@grilla?$CB?$DP?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ?p_greetings_init@@YAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_greetings_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pgot@@YAXMMPADM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?pgtext@@3PAPADA				; pgtext
PUBLIC	??_C@_09DMFC@we?5luhv?4?4?$AA@			; `string'
PUBLIC	??_C@_0L@OJOM@neurodruid?$AA@			; `string'
PUBLIC	??_C@_04IBLB@mind?$AA@				; `string'
PUBLIC	??_C@_00A@?$AA@					; `string'
PUBLIC	??_C@_07GNCA@aardbei?$AA@			; `string'
PUBLIC	??_C@_09EBMO@former?5k2?$AA@			; `string'
PUBLIC	??_C@_07IIGO@woorlic?$AA@			; `string'
PUBLIC	??_C@_03PFCJ@tbl?$AA@				; `string'
PUBLIC	??_C@_07DBAH@jeskola?$AA@			; `string'
PUBLIC	??_C@_05DFFL@yodel?$AA@				; `string'
PUBLIC	??_C@_06GDLG@trauma?$AA@			; `string'
PUBLIC	??_C@_0N@NPHF@mediascience?$AA@			; `string'
PUBLIC	??_C@_07EIKO@komplex?$AA@			; `string'
PUBLIC	??_C@_0L@OAAJ@bingoberra?$AA@			; `string'
PUBLIC	??_C@_08LALN@grilla?$CB?$DP?$AA@		; `string'
;	COMDAT ??_C@_00A@?$AA@
_BSS	SEGMENT
??_C@_00A@?$AA@ DB 01H DUP (?)				; `string'
_BSS	ENDS
_DATA	SEGMENT
?pgtext@@3PAPADA DD FLAT:??_C@_09DMFC@we?5luhv?4?4?$AA@	; pgtext
	DD	FLAT:??_C@_0L@OJOM@neurodruid?$AA@
	DD	FLAT:??_C@_04IBLB@mind?$AA@
	DD	FLAT:??_C@_00A@?$AA@
	DD	FLAT:??_C@_07GNCA@aardbei?$AA@
	DD	FLAT:??_C@_09EBMO@former?5k2?$AA@
	DD	FLAT:??_C@_07IIGO@woorlic?$AA@
	DD	FLAT:??_C@_03PFCJ@tbl?$AA@
	DD	FLAT:??_C@_07DBAH@jeskola?$AA@
	DD	FLAT:??_C@_05DFFL@yodel?$AA@
	DD	FLAT:??_C@_06GDLG@trauma?$AA@
	DD	FLAT:??_C@_0N@NPHF@mediascience?$AA@
	DD	FLAT:??_C@_07EIKO@komplex?$AA@
	DD	FLAT:??_C@_0L@OAAJ@bingoberra?$AA@
	DD	FLAT:??_C@_00A@?$AA@
	DD	FLAT:??_C@_08LALN@grilla?$CB?$DP?$AA@
_DATA	ENDS
;	COMDAT ??_C@_09DMFC@we?5luhv?4?4?$AA@
_DATA	SEGMENT
??_C@_09DMFC@we?5luhv?4?4?$AA@ DB 'we luhv..', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@OJOM@neurodruid?$AA@
_DATA	SEGMENT
??_C@_0L@OJOM@neurodruid?$AA@ DB 'neurodruid', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_04IBLB@mind?$AA@
_DATA	SEGMENT
??_C@_04IBLB@mind?$AA@ DB 'mind', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_07GNCA@aardbei?$AA@
_DATA	SEGMENT
??_C@_07GNCA@aardbei?$AA@ DB 'aardbei', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_09EBMO@former?5k2?$AA@
_DATA	SEGMENT
??_C@_09EBMO@former?5k2?$AA@ DB 'former k2', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_07IIGO@woorlic?$AA@
_DATA	SEGMENT
??_C@_07IIGO@woorlic?$AA@ DB 'woorlic', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_03PFCJ@tbl?$AA@
_DATA	SEGMENT
??_C@_03PFCJ@tbl?$AA@ DB 'tbl', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_07DBAH@jeskola?$AA@
_DATA	SEGMENT
??_C@_07DBAH@jeskola?$AA@ DB 'jeskola', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_05DFFL@yodel?$AA@
_DATA	SEGMENT
??_C@_05DFFL@yodel?$AA@ DB 'yodel', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_06GDLG@trauma?$AA@
_DATA	SEGMENT
??_C@_06GDLG@trauma?$AA@ DB 'trauma', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0N@NPHF@mediascience?$AA@
_DATA	SEGMENT
??_C@_0N@NPHF@mediascience?$AA@ DB 'mediascience', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_07EIKO@komplex?$AA@
_DATA	SEGMENT
??_C@_07EIKO@komplex?$AA@ DB 'komplex', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@OAAJ@bingoberra?$AA@
_DATA	SEGMENT
??_C@_0L@OAAJ@bingoberra?$AA@ DB 'bingoberra', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_08LALN@grilla?$CB?$DP?$AA@
_DATA	SEGMENT
??_C@_08LALN@grilla?$CB?$DP?$AA@ DB 'grilla!?', 00H	; `string'
_DATA	ENDS
PUBLIC	?p_greetings_init@@YAXXZ			; p_greetings_init
PUBLIC	__real@4@3ff8a3d70a3d70a3d800
PUBLIC	__real@4@4005c800000000000000
PUBLIC	__real@4@bff8a3d70a3d70a3d800
PUBLIC	__real@4@3ffaba2e8ba2e8ba3000
PUBLIC	__real@4@3ffe8000000000000000
EXTRN	__imp__glEndList@0:NEAR
EXTRN	__fltused:NEAR
EXTRN	__imp__glNewList@8:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	__imp__rand:NEAR
EXTRN	__imp__srand:NEAR
;	COMDAT __real@4@3ff8a3d70a3d70a3d800
; File E:\prj64k\glAss (eventad)\parts\p_greetings.cpp
CONST	SEGMENT
__real@4@3ff8a3d70a3d70a3d800 DD 03c23d70ar	; 0.01
CONST	ENDS
;	COMDAT __real@4@4005c800000000000000
CONST	SEGMENT
__real@4@4005c800000000000000 DD 042c80000r	; 100
CONST	ENDS
;	COMDAT __real@4@bff8a3d70a3d70a3d800
CONST	SEGMENT
__real@4@bff8a3d70a3d70a3d800 DD 0bc23d70ar	; -0.01
CONST	ENDS
;	COMDAT __real@4@3ffaba2e8ba2e8ba3000
CONST	SEGMENT
__real@4@3ffaba2e8ba2e8ba3000 DD 03d3a2e8cr	; 0.0454545
CONST	ENDS
;	COMDAT __real@4@3ffe8000000000000000
CONST	SEGMENT
__real@4@3ffe8000000000000000 DD 03f000000r	; 0.5
CONST	ENDS
;	COMDAT ?p_greetings_init@@YAXXZ
_TEXT	SEGMENT
_x$ = -24
_y$ = -16
_z$ = -12
_r$ = -36
_u$ = -28
_v$ = -32
?p_greetings_init@@YAXXZ PROC NEAR			; p_greetings_init, COMDAT

; 10   : void p_greetings_init() {

	sub	esp, 36					; 00000024H
	push	ebx
	push	ebp
	push	esi
	push	edi

; 11   : //	glaUploadGif( GREET_FLOWER, (unsigned char *)&gif_flower, 0x0000FF );
; 12   : //	glaUploadGif( GREET_BACKGROUND, (unsigned char *)&gif_greetback, 0x0000FF );
; 13   : //	glaUploadGif( GREET_GRID, (unsigned char *)&gif_grid, 0x0000FF );
; 14   : 	float x, y, z, r, u, v;
; 15   : 	int i;
; 16   : 
; 17   : 	glNewList( GREET_LIST, GL_COMPILE );

	push	4864					; 00001300H
	push	232					; 000000e8H
	call	DWORD PTR __imp__glNewList@8

; 18   : 
; 19   : 	srand( 12345 );

	push	12345					; 00003039H
	call	DWORD PTR __imp__srand
	mov	esi, DWORD PTR __imp__rand
	mov	ebx, DWORD PTR __imp__glTexCoord2f@8
	mov	ebp, DWORD PTR __imp__glVertex3f@12
	add	esp, 4
	mov	DWORD PTR -4+[esp+52], 1000		; 000003e8H
$L17524:

; 20   : 
; 21   : 	for( i=0; i<1000; i++ ) {
; 22   : //		glPushMatrix();
; 23   : //		glRotatef( 312, cos(x), sin(y), cos(r) );
; 24   : 
; 25   : 		x = -100 + (float)(rand()%20000)/100.0f;

	call	esi
	cdq
	mov	ecx, 20000				; 00004e20H
	idiv	ecx
	mov	DWORD PTR -8+[esp+52], edx
	fild	DWORD PTR -8+[esp+52]
	fmul	DWORD PTR __real@4@3ff8a3d70a3d70a3d800
	fsub	DWORD PTR __real@4@4005c800000000000000
	fstp	DWORD PTR _x$[esp+52]

; 26   : 		y = -(float)(rand()%16000)/100.0f;

	call	esi
	cdq
	mov	ecx, 16000				; 00003e80H
	idiv	ecx
	mov	DWORD PTR -8+[esp+52], edx
	fild	DWORD PTR -8+[esp+52]
	fmul	DWORD PTR __real@4@bff8a3d70a3d70a3d800
	fstp	DWORD PTR _y$[esp+52]

; 27   : 		z = -100 + (float)(rand()%20000)/100.0f;

	call	esi
	cdq
	mov	ecx, 20000				; 00004e20H
	idiv	ecx
	mov	DWORD PTR -8+[esp+52], edx
	fild	DWORD PTR -8+[esp+52]
	fmul	DWORD PTR __real@4@3ff8a3d70a3d70a3d800
	fsub	DWORD PTR __real@4@4005c800000000000000
	fstp	DWORD PTR _z$[esp+52]

; 28   : 		r = (float)(rand()%100) / 22.0f;

	call	esi
	cdq
	mov	ecx, 100				; 00000064H
	idiv	ecx
	mov	DWORD PTR -8+[esp+52], edx
	fild	DWORD PTR -8+[esp+52]
	fmul	DWORD PTR __real@4@3ffaba2e8ba2e8ba3000
	fstp	DWORD PTR _r$[esp+52]

; 29   : 
; 30   : 		//a = rand()%360;
; 31   : 		//b = (float)(rand()%100) / 100.0f;
; 32   : 
; 33   : 		u = (float)(rand()%2) / 2.0f;

	call	esi
	and	eax, -2147483647			; 80000001H
	jns	SHORT $L17639
	dec	eax
	or	eax, -2					; fffffffeH
	inc	eax
$L17639:
	mov	DWORD PTR -8+[esp+52], eax
	fild	DWORD PTR -8+[esp+52]
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fstp	DWORD PTR _u$[esp+52]

; 34   : 		v = (float)(rand()%2) / 2.0f;

	call	esi
	and	eax, -2147483647			; 80000001H
	jns	SHORT $L17640
	dec	eax
	or	eax, -2					; fffffffeH
	inc	eax
$L17640:
	mov	DWORD PTR -8+[esp+52], eax
	fild	DWORD PTR -8+[esp+52]

; 35   : 
; 36   : 		glColor3f( 0.1f, 0.1f, 0.1f );

	push	1036831949				; 3dcccccdH
	push	1036831949				; 3dcccccdH
	push	1036831949				; 3dcccccdH
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fstp	DWORD PTR _v$[esp+64]
	call	DWORD PTR __imp__glColor3f@12

; 37   : 
; 38   : 		/*switch( i%2 ) {
; 39   : 			case 0:
; 40   : 				glTexCoord2f( u, v );			glVertex3f( x-r, y-r, z );
; 41   : 				glTexCoord2f( 0.5f+u, v );		glVertex3f( x+r, y-r, z );
; 42   : 				glTexCoord2f( 0.5f+u, 0.5f+v );	glVertex3f( x+r, y+r, z );
; 43   : 				glTexCoord2f( u, 0.5f+v );		glVertex3f( x-r, y+r, z );
; 44   : 				break;*/
; 45   : 		//	case 1:
; 46   : 				glTexCoord2f( u, v );			glVertex3f( x-r, y, z-r );

	mov	edx, DWORD PTR _v$[esp+52]
	mov	eax, DWORD PTR _u$[esp+52]
	push	edx
	push	eax
	call	ebx
	fld	DWORD PTR _z$[esp+52]
	fsub	DWORD PTR _r$[esp+52]
	mov	edi, DWORD PTR _y$[esp+52]
	fstp	DWORD PTR -20+[esp+52]
	fld	DWORD PTR _x$[esp+52]
	mov	ecx, DWORD PTR -20+[esp+52]
	fsub	DWORD PTR _r$[esp+52]
	push	ecx
	push	edi
	fstp	DWORD PTR -8+[esp+60]
	mov	edx, DWORD PTR -8+[esp+60]
	push	edx
	call	ebp

; 47   : 				glTexCoord2f( 0.5f+u, v );		glVertex3f( x+r, y, z-r );

	fld	DWORD PTR _u$[esp+52]
	fadd	DWORD PTR __real@4@3ffe8000000000000000
	mov	eax, DWORD PTR _v$[esp+52]
	push	eax
	fstp	DWORD PTR -16+[esp+56]
	mov	ecx, DWORD PTR -16+[esp+56]
	push	ecx
	call	ebx
	fld	DWORD PTR _r$[esp+52]
	fadd	DWORD PTR _x$[esp+52]
	mov	edx, DWORD PTR -20+[esp+52]
	push	edx
	push	edi
	fstp	DWORD PTR -24+[esp+60]
	mov	eax, DWORD PTR -24+[esp+60]
	push	eax
	call	ebp

; 48   : 				glTexCoord2f( 0.5f+u, 0.5f+v );	glVertex3f( x+r, y, z+r );

	fld	DWORD PTR _v$[esp+52]
	fadd	DWORD PTR __real@4@3ffe8000000000000000
	mov	edx, DWORD PTR -16+[esp+52]
	fstp	DWORD PTR -20+[esp+52]
	mov	ecx, DWORD PTR -20+[esp+52]
	push	ecx
	push	edx
	call	ebx
	fld	DWORD PTR _r$[esp+52]
	fadd	DWORD PTR _z$[esp+52]
	mov	ecx, DWORD PTR -24+[esp+52]
	fstp	DWORD PTR -12+[esp+52]
	mov	eax, DWORD PTR -12+[esp+52]
	push	eax
	push	edi
	push	ecx
	call	ebp

; 49   : 				glTexCoord2f( u, 0.5f+v );		glVertex3f( x-r, y, z+r );

	mov	edx, DWORD PTR -20+[esp+52]
	mov	eax, DWORD PTR _u$[esp+52]
	push	edx
	push	eax
	call	ebx
	mov	ecx, DWORD PTR -12+[esp+52]
	mov	edx, DWORD PTR -8+[esp+52]
	push	ecx
	push	edi
	push	edx
	call	ebp
	dec	DWORD PTR -4+[esp+52]
	jne	$L17524

; 50   : /*				glTexCoord2f( u, v );			glVertex3f( x, y-r, z-r );
; 51   : 				glTexCoord2f( 0.5f+u, v );		glVertex3f( x, y-r, z+r );
; 52   : 				glTexCoord2f( 0.5f+u, 0.5f+v );	glVertex3f( x, y+r, z+r );
; 53   : 				glTexCoord2f( u, 0.5f+v );		glVertex3f( x, y+r, z-r );
; 54   : 				break;
; 55   : 			default:
; 56   : 				break;
; 57   : 		};
; 58   : */
; 59   : //		glPopMatrix();
; 60   : 	};
; 61   : 
; 62   : 	glEndList();

	call	DWORD PTR __imp__glEndList@0
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 63   : };

	add	esp, 36					; 00000024H
	ret	0
?p_greetings_init@@YAXXZ ENDP				; p_greetings_init
_TEXT	ENDS
PUBLIC	?p_greetings_run@@YAXPAUEVENT@@@Z		; p_greetings_run
PUBLIC	__real@4@3ffd8000000000000000
PUBLIC	__real@4@4001e000000000000000
PUBLIC	__real@4@3ffea0ded26666666800
PUBLIC	__real@8@4005d200000000000000
PUBLIC	__real@4@4003c800000000000000
PUBLIC	__real@4@4001a000000000000000
PUBLIC	__real@8@3ffbcccccd0000000000
PUBLIC	__real@4@4000c000000000000000
EXTRN	_gluPerspective@32:NEAR
EXTRN	_gluLookAt@72:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glEnd@0:NEAR
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glRotatef@16:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	?glaDrawString@@YAXMMMMMMPAD@Z:NEAR		; glaDrawString
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__imp__glCallList@4:NEAR
;	COMDAT __real@4@3ffd8000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_greetings.cpp
CONST	SEGMENT
__real@4@3ffd8000000000000000 DD 03e800000r	; 0.25
CONST	ENDS
;	COMDAT __real@4@4001e000000000000000
CONST	SEGMENT
__real@4@4001e000000000000000 DD 040e00000r	; 7
CONST	ENDS
;	COMDAT __real@4@3ffea0ded26666666800
CONST	SEGMENT
__real@4@3ffea0ded26666666800 DD 03f20ded2r	; 0.6284
CONST	ENDS
;	COMDAT __real@8@4005d200000000000000
CONST	SEGMENT
__real@8@4005d200000000000000 DQ 0405a400000000000r ; 105
CONST	ENDS
;	COMDAT __real@4@4003c800000000000000
CONST	SEGMENT
__real@4@4003c800000000000000 DD 041c80000r	; 25
CONST	ENDS
;	COMDAT __real@4@4001a000000000000000
CONST	SEGMENT
__real@4@4001a000000000000000 DD 040a00000r	; 5
CONST	ENDS
;	COMDAT __real@8@3ffbcccccd0000000000
CONST	SEGMENT
__real@8@3ffbcccccd0000000000 DQ 03fb99999a0000000r ; 0.1
CONST	ENDS
;	COMDAT __real@4@4000c000000000000000
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT ?p_greetings_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -12
_y0$ = -4
?p_greetings_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_greetings_run, COMDAT

; 90   : void p_greetings_run( EVENT *e ) {

	push	ebp
	mov	ebp, esp
	and	esp, -8					; fffffff8H
	sub	esp, 12					; 0000000cH

; 91   : 
; 92   : 	/*
; 93   : 	float t;
; 94   : 
; 95   : 	glDisable( GL_FOG );
; 96   : 	glDisable( GL_LIGHTING );
; 97   : 
; 98   : 	glaReset();
; 99   : 	do {*/
; 100  : 
; 101  : 		float t = e->localTime / 4;

	mov	eax, DWORD PTR _e$[ebp]
	fld	DWORD PTR [eax+4]
	push	ebx
	fmul	DWORD PTR __real@4@3ffd8000000000000000
	push	esi

; 102  : 
; 103  : 	glDisable( GL_CULL_FACE );

	mov	esi, DWORD PTR __imp__glDisable@4
	push	edi
	push	2884					; 00000b44H
	fstp	DWORD PTR _t$[esp+28]
	call	esi

; 104  : 	glDisable( GL_DEPTH_TEST );

	push	2929					; 00000b71H
	call	esi

; 105  : 
; 106  : 	glEnable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4

; 107  : 	glBlendFunc( GL_ONE, GL_ONE );

	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8

; 108  : 
; 109  : 	glMatrixMode( GL_PROJECTION );

	mov	esi, DWORD PTR __imp__glMatrixMode@4
	push	5889					; 00001701H
	call	esi

; 110  : 	glLoadIdentity();

	mov	edi, DWORD PTR __imp__glLoadIdentity@0
	call	edi

; 111  : 
; 112  : 		float y0, y1;
; 113  : 		y0 = -(t*t*7);

	fld	DWORD PTR _t$[esp+24]
	fmul	DWORD PTR _t$[esp+24]

; 114  : 		y1 = -(t*t*25);
; 115  : 
; 116  : 		gluPerspective( 105+1*cos(y0*3.142f/5.0f), 4/3, 0.1f, 300 );

	push	1081262080				; 4072c000H
	push	0
	push	1069128089				; 3fb99999H
	fst	DWORD PTR -8+[esp+36]
	push	-1610612736				; a0000000H
	fmul	DWORD PTR __real@4@4001e000000000000000
	push	1072693248				; 3ff00000H
	push	0
	sub	esp, 8
	fchs
	fstp	DWORD PTR _y0$[esp+56]
	fld	DWORD PTR _y0$[esp+56]
	fmul	DWORD PTR __real@4@3ffea0ded26666666800
	fcos
	fadd	QWORD PTR __real@8@4005d200000000000000
	fstp	QWORD PTR [esp]
	call	_gluPerspective@32

; 117  : 		//ya = 45*(y0/5.0f);
; 118  : 
; 119  : //		gluLookAt( 19*cos(t/5), y0, 17*sin(t/6), 30*cos(t/4), y1, 30*sin(t/7), 0, 1, 0 );
; 120  : 		gluLookAt( 1*cos(t*3), y0, 0.1f*cos(t*5), 0, y1, -1, 0,1,0 );
; 121  : //		gluLookAt( 0, y0, 0, 0, y1, -1, 0,1,0 );
; 122  : 
; 123  : 	glMatrixMode( GL_MODELVIEW );
; 124  : 	glLoadIdentity();
; 125  : 	glaSetTexture( GIF_GREEN );
; 126  : 	glBegin( GL_QUADS );
; 127  : 	glCallList( GREET_LIST );
; 128  : 	glEnd();
; 129  : 
; 130  : 	//glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );
; 131  : 
; 132  : 	glaSetTexture( GIF_FONT );
; 133  : 	glRotatef( 270,1,0,0 );
; 134  : 	glBegin( GL_QUADS );
; 135  : 	glColor3f( 1, 1, 1 );
; 136  : 	for( int i=0; i<NPGTEXT; i++ ) {
; 137  : 		//glPushMatrix();
; 138  : 		//glRotatef( i*90, 1,0,0 );
; 139  : 		//glColor3f( 1, 0.5f + 0.3f*(float)sin(t+i), 0.5f + 0.3f*(float)cos(t-i) );
; 140  : 		glColor3f( 0.2f, 0.4f, 0.7f );
; 141  : 		//glaDrawString( 2*cos(i),4*sin(i/3),-10 + -10*i, 0.75f,0.75f,1.0f, pgtext[i] );
; 142  : 		glaDrawString( 0,0,(float)(-10+-10*i), 0.5f,0.65f,0.5f, pgtext[i] );
; 143  : 
; 144  : 		//glColor3f( 0.1f, 0.2f, 0.3f );
; 145  : 		//glaDrawString( 2*cos(i),4*sin(i/3),-10 + -10*i, 0.75f,0.75f,1.0f, pgtext[i] );
; 146  : 		//glaDrawString( 0,0,-10 + -10*i, 0.9f,0.9f,0.5f, pgtext[i] );
; 147  : 		
; 148  : 		//glPopMatrix();
; 149  : 	};
; 150  : 	glEnd();

	fld	DWORD PTR -8+[esp+24]
	push	0
	fmul	DWORD PTR __real@4@4003c800000000000000
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	0
	push	0
	push	-1074790400				; bff00000H
	push	0
	sub	esp, 8
	fchs
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[esp+64]
	push	0
	fmul	DWORD PTR __real@4@4001a000000000000000
	push	0
	sub	esp, 8
	sub	esp, 8
	fcos
	sub	esp, 8
	fmul	QWORD PTR __real@8@3ffbcccccd0000000000
	fstp	QWORD PTR [esp+16]
	fld	DWORD PTR _y0$[esp+96]
	fstp	QWORD PTR [esp+8]
	fld	DWORD PTR _t$[esp+96]
	fmul	DWORD PTR __real@4@4000c000000000000000
	fcos
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72
	push	5888					; 00001700H
	call	esi
	call	edi
	push	120					; 00000078H
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
	push	7
	mov	esi, DWORD PTR __imp__glBegin@4
	call	esi
	push	232					; 000000e8H
	call	DWORD PTR __imp__glCallList@4
	call	DWORD PTR __imp__glEnd@0
	push	106					; 0000006aH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
	push	0
	push	0
	push	1065353216				; 3f800000H
	push	1132920832				; 43870000H
	call	DWORD PTR __imp__glRotatef@16
	push	7
	call	esi
	mov	ebx, DWORD PTR __imp__glColor3f@12
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	ebx
	mov	edi, -10				; fffffff6H
	mov	esi, OFFSET FLAT:?pgtext@@3PAPADA	; pgtext
	mov	DWORD PTR -4+[esp+24], edi
$L17561:
	push	1060320051				; 3f333333H
	push	1053609165				; 3ecccccdH
	push	1045220557				; 3e4ccccdH
	call	ebx
	fild	DWORD PTR -4+[esp+24]
	mov	ecx, DWORD PTR [esi]
	push	ecx
	push	1056964608				; 3f000000H
	push	1059481190				; 3f266666H
	push	1056964608				; 3f000000H
	push	ecx
	fstp	DWORD PTR [esp]
	push	0
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString
	sub	edi, 10					; 0000000aH
	add	esp, 28					; 0000001cH
	add	esi, 4
	cmp	edi, -170				; ffffff56H
	mov	DWORD PTR -4+[esp+24], edi
	jg	SHORT $L17561
	call	DWORD PTR __imp__glEnd@0

; 151  : 
; 152  : //	glMatrixMode( GL_PROJECTION );
; 153  : //	glLoadIdentity();
; 154  : //	glMatrixMode( GL_MODELVIEW );
; 155  : //	glLoadIdentity();
; 156  : /*
; 157  : 	// en grid.
; 158  : 	{
; 159  : 		glaSetTexture( GIF_GRID );
; 160  : 		glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );
; 161  : 
; 162  : 		glBegin( GL_QUADS);
; 163  : 
; 164  : 		for( int shit=0; shit<3; shit++ ) {
; 165  : 
; 166  : 			float u[4], v[4];
; 167  : 			float t3 = t + (float)shit /1.0f;
; 168  : 			float fade = (float)shit / 3.0f;
; 169  : 			float r = t3/13;
; 170  : 			float s = 6 + 4*(float)cos(t3/2);
; 171  : 			float uc = 10*(float)cos(t3/2);
; 172  : 			float vc = 10*(float)sin(t3/3);
; 173  : 
; 174  : 			glaRotate2d( &u[0], &v[0], -s, s, r );
; 175  : 			glaRotate2d( &u[1], &v[1], s, s, r );
; 176  : 			glaRotate2d( &u[2], &v[2], s, -s, r );
; 177  : 			glaRotate2d( &u[3], &v[3], -s, -s, r );
; 178  : 
; 179  : 			glColor3f( 0, 0, 0 );
; 180  : 			glTexCoord2f( u[0]+uc, v[0]+vc );
; 181  : 			glVertex3f( -1, -1, 0 );
; 182  : 
; 183  : 			glColor3f( 0.0, 0.33f*fade, 0.66f*fade );
; 184  : 			glTexCoord2f( u[1]+uc, v[1]+vc );
; 185  : 			glVertex3f( 1, -1, 0 );
; 186  : 			glTexCoord2f( u[2]+uc, v[2]+vc );
; 187  : 			glVertex3f( 1, 1, 0 );
; 188  : 
; 189  : 			glColor3f( 0, 0, 0 );
; 190  : 			glTexCoord2f( u[3]+uc, v[3]+vc );
; 191  : 			glVertex3f( -1, 1, 0 );
; 192  : 
; 193  : 		};
; 194  : 
; 195  : 		glEnd();
; 196  : 
; 197  : 	}
; 198  : */
; 199  : 		// blommflumm
; 200  : 	/*
; 201  : 		{
; 202  : 
; 203  : 			glaSetTexture( GIF_FLOWER );
; 204  : 			glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );
; 205  : 
; 206  : 			glBegin( GL_QUADS );
; 207  : 
; 208  : 			for( int j=0; j<7; j++ ) {
; 209  : 
; 210  : 				float s = 0.2f + 0.1f*(float)sin((j+t)*4);
; 211  : 				float x = -0.61f + s*(float)sin((j)*2+j);
; 212  : 				float y = 0 + s*1.5f*(float)cos((j+t)*3);
; 213  : 				float r = ((t+j)*200)+(70*(float)cos((j-t)*4));
; 214  : 
; 215  : 				glColor4f( (float)j/10, (float)j/10, (float)j/10, 1 );
; 216  : 
; 217  : 				s *= ((j%3)+1);
; 218  : 				glaQuadR( x, y, 0, r, s, s, 0, 1, 1, 0 );
; 219  : 				
; 220  : 				//glaQuadR( -x, y, 0, r, s, s, 0, 1, 1, 0 );
; 221  : 				//glaQuadR( -x, -y, 0, r, s, s, 0, 1, 1, 0 );
; 222  : 				//glaQuadR( x, -y, 0, r, s, s, 0, 1, 1, 0 );
; 223  : 
; 224  : 			};
; 225  : 			glEnd();
; 226  : 
; 227  :   
; 228  : 
; 229  : 			if( t<2 ) {
; 230  : 				float r = 3 - t;
; 231  : 				float b = 1.0f - (t / 1.25f);
; 232  : 				glaSetTexture( GIF_SYMBOLER );
; 233  : 				glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );
; 234  : 				glBegin( GL_QUADS );
; 235  : 				glColor3f( b, b, b );
; 236  : 				glaQuadR( 0.5f, 0, 0, t*50, r, r, 0, 1, 0.1f, 0 );
; 237  : 				glEnd();
; 238  : 			};
; 239  : 
; 240  : 			if( t>8 ) {
; 241  : 				float r = (t-8) / 5.0f;
; 242  : 				float b = (t-8) / 4.0f;
; 243  : 				glaSetTexture( GIF_FLOWER );
; 244  : 				glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );
; 245  : 				glBegin( GL_QUADS );
; 246  : 				glColor3f( b, b, b );
; 247  : 				for( float j=-2; j<=2; j++ ) {
; 248  : 					for( float i=-3; i<=3; i++ ) {
; 249  : 						glaQuadR( i/3.0f, j/2.0f, 0, t*t*5, r, r, 0, 1, 1.0f, 0 );
; 250  : 					};
; 251  : 				};
; 252  : 				glEnd();
; 253  : 			};
; 254  : 			if( t>10 ) {
; 255  : 				float r = (t-10) / 2.0f;
; 256  : 				float b = (t-10) / 2.0f;
; 257  : 				glaSetTexture( GIF_SYMBOLER );
; 258  : 				glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );
; 259  : 				glBegin( GL_QUADS );
; 260  : 				glColor3f( b, b, b );
; 261  : 				for( float j=-2; j<=2; j+=1.5f ) {
; 262  : 					for( float i=-3; i<=3; i+=1.5f ) {
; 263  : 						glaQuadR( i/3.0f, j/2.0f, 0, t*t*8, r, r, 0, 1, 1.0f, 0 );
; 264  : 					};
; 265  : 				};
; 266  : 				glEnd();
; 267  : 			};
; 268  : 		}
; 269  : 		*/
; 270  : /*
; 271  : 		glaBlit();
; 272  : 
; 273  : 	} while( !glaExit() && t<5 );
; 274  : */	
; 275  : };

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_greetings_run@@YAXPAUEVENT@@@Z ENDP			; p_greetings_run
_TEXT	ENDS
PUBLIC	?pgot@@YAXMMPADM@Z				; pgot
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@3ffcccccccccccccd000
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@3ffbcccccd0000000000
;	COMDAT __real@4@3ffd99999a0000000000
; File E:\prj64k\glAss (eventad)\parts\p_greetings.cpp
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@3ffcccccccccccccd000
CONST	SEGMENT
__real@4@3ffcccccccccccccd000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@3ffbcccccd0000000000
CONST	SEGMENT
__real@4@3ffbcccccd0000000000 DD 03dcccccdr	; 0.1
CONST	ENDS
;	COMDAT ?pgot@@YAXMMPADM@Z
_TEXT	SEGMENT
_x$ = 8
_y$ = 12
_str$ = 16
_time$ = 20
_i$ = -8
_s$17575 = 12
?pgot@@YAXMMPADM@Z PROC NEAR				; pgot, COMDAT

; 277  : void pgot( float x, float y, char *str, float time ) {

	sub	esp, 8

; 278  : 
; 279  : 	for( float i=0; i<5; i+=0.5f ) {
; 280  : 
; 281  : 		float s = 1 + (i / 5.0f);
; 282  : 
; 283  : 		float b = 1 / (1 + i*2);
; 284  : 
; 285  : 		//glColor3f( b*0.7f, b*(0.7f + 0.35f*sin(time+i*30)), b*(0.6f + 0.3f*cos(time-i*21)) );
; 286  : 		//glColor3f( b/2.0f, b/1.5f, b );
; 287  : 
; 288  : 		float s2 = 1.0f + ((float)i / 3.0f);
; 289  : 		float s3 = 1.0f / (1 + (float)i*(float)i); 
; 290  : 		glColor3f( b*1*s3, b*s3*0.5f + b*0.3f*(float)sin(time*7+y), b*s3*0.5f + b*0.3f*(float)cos(time*7-y) );

	fld	DWORD PTR _time$[esp+4]
	push	ebx
	fmul	DWORD PTR __real@4@4001e000000000000000
	mov	ebx, DWORD PTR _x$[esp+8]
	push	ebp
	mov	ebp, DWORD PTR __imp__glColor3f@12
	fld	ST(0)
	push	esi
	fsub	DWORD PTR _y$[esp+16]
	mov	esi, DWORD PTR _str$[esp+16]
	push	edi
	mov	edi, DWORD PTR _y$[esp+20]
	fcos
	mov	DWORD PTR _i$[esp+24], 0
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR 20+[esp+20]
	fadd	DWORD PTR _y$[esp+20]
	fsin
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR -4+[esp+24]
$L17572:
	fld	DWORD PTR _i$[esp+24]
	push	ecx
	fmul	DWORD PTR __real@4@3ffcccccccccccccd000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _s$17575[esp+24]
	fld	DWORD PTR _i$[esp+28]
	fadd	ST(0), ST(0)
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3fff8000000000000000
	fld	DWORD PTR _i$[esp+28]
	fmul	DWORD PTR _i$[esp+28]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3fff8000000000000000
	fld	ST(0)
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fld	ST(0)
	fadd	DWORD PTR 20+[esp+24]
	fmul	ST(0), ST(3)
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR -4+[esp+32]
	fadd	ST(0), ST(1)
	fmul	ST(0), ST(3)
	fstp	DWORD PTR [esp]
	push	ecx
	fstp	ST(0)
	fmul	ST(0), ST(1)
	fstp	DWORD PTR [esp]
	fstp	ST(0)
	call	ebp

; 291  : 
; 292  : 		glaDrawString( x, y, 0, 0.1f*s, 0.1f*s, 0.1f*s, str );

	fld	DWORD PTR _s$17575[esp+20]
	push	esi
	fmul	DWORD PTR __real@4@3ffbcccccd0000000000
	fstp	DWORD PTR 12+[esp+24]
	mov	eax, DWORD PTR 12+[esp+24]
	push	eax
	push	eax
	push	eax
	push	0
	push	edi
	push	ebx
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString
	fld	DWORD PTR _i$[esp+52]
	fadd	DWORD PTR __real@4@3ffe8000000000000000
	add	esp, 28					; 0000001cH
	fst	DWORD PTR _i$[esp+24]
	fcomp	DWORD PTR __real@4@4001a000000000000000
	fnstsw	ax
	test	ah, 1
	jne	$L17572
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 293  : 
; 294  : 	};
; 295  : 
; 296  : };

	add	esp, 8
	ret	0
?pgot@@YAXMMPADM@Z ENDP					; pgot
_TEXT	ENDS
END
