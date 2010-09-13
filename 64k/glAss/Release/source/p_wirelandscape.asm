	TITLE	E:\prj64k\glAss (eventad)\parts\p_wirelandscape.cpp
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
;	COMDAT ?pw_drawbuilding@@YAXMMMMMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pw_draw_tile@@YAXMMMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pw_draw_obj@@YAXMMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pw_draw_world@@YAXMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_wirelandscape_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?pw_drawbuilding@@YAXMMMMMMM@Z			; pw_drawbuilding
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	__fltused:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
;	COMDAT ?pw_drawbuilding@@YAXMMMMMMM@Z
_TEXT	SEGMENT
_x$ = 8
_y$ = 12
_z$ = 16
_height$ = 20
_r1$ = 24
_r2$ = 28
?pw_drawbuilding@@YAXMMMMMMM@Z PROC NEAR		; pw_drawbuilding, COMDAT

; 5    : void pw_drawbuilding( float x, float y, float z, float height, float r1, float r2, float t ) {

	sub	esp, 16					; 00000010H
	push	ebx
	push	ebp
	push	esi
	push	edi

; 6    : 	//glDisable( GL_TEXTURE_2D );
; 7    : 
; 8    : 	glColor3f( 0.4f, 0.2f, 0 );///(1.0f+10*height), 0 );

	push	0
	push	1045220557				; 3e4ccccdH
	push	1053609165				; 3ecccccdH
	call	DWORD PTR __imp__glColor3f@12

; 9    : 
; 10   : //lTexCoord2f( 0, 0 ); glVertex3f( x-r1, y z-r1 );
; 11   : //lTexCoord2f( 1, 0 ); glVertex3f( x+r1, y, z-r1 );
; 12   : //lTexCoord2f( 1, 1 ); glVertex3f( x+r1, y, z+r1 );
; 13   : //lTexCoord2f( 0, 1 ); glVertex3f( x-r1, y, z+r1 );
; 14   : 
; 15   : 	glTexCoord2f( 0, 0 ); glVertex3f( x-r2, y+height, z-r2 );

	mov	esi, DWORD PTR __imp__glTexCoord2f@8
	push	0
	push	0
	call	esi
	fld	DWORD PTR _z$[esp+28]
	fsub	DWORD PTR _r2$[esp+28]
	mov	edi, DWORD PTR __imp__glVertex3f@12
	fstp	DWORD PTR -16+[esp+32]
	fld	DWORD PTR _y$[esp+28]
	mov	ebp, DWORD PTR -16+[esp+32]
	fadd	DWORD PTR _height$[esp+28]
	push	ebp
	fstp	DWORD PTR -4+[esp+36]
	fld	DWORD PTR _x$[esp+32]
	mov	ebx, DWORD PTR -4+[esp+36]
	fsub	DWORD PTR _r2$[esp+32]
	push	ebx
	fstp	DWORD PTR 20+[esp+36]
	mov	eax, DWORD PTR 20+[esp+36]
	push	eax
	call	edi

; 16   : 	glTexCoord2f( 1, 0 ); glVertex3f( x+r2, y+height, z-r2 );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	fld	DWORD PTR _x$[esp+28]
	fadd	DWORD PTR _r2$[esp+28]
	push	ebp
	push	ebx
	fstp	DWORD PTR -12+[esp+40]
	mov	ebp, DWORD PTR -12+[esp+40]
	push	ebp
	call	edi

; 17   : 	glTexCoord2f( 1, 1 ); glVertex3f( x+r2, y+height, z+r2 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	fld	DWORD PTR _z$[esp+28]
	fadd	DWORD PTR _r2$[esp+28]
	fstp	DWORD PTR 28+[esp+28]
	mov	ecx, DWORD PTR 28+[esp+28]
	push	ecx
	push	ebx
	push	ebp
	call	edi

; 18   : 	glTexCoord2f( 0, 1 ); glVertex3f( x-r2, y+height, z+r2 );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	mov	edx, DWORD PTR 28+[esp+28]
	mov	eax, DWORD PTR 20+[esp+28]
	push	edx
	push	ebx
	push	eax
	call	edi

; 19   : 
; 20   : 	glTexCoord2f( 0, 0 ); glVertex3f( x-r1, y, z-r1 );

	push	0
	push	0
	call	esi
	fld	DWORD PTR _z$[esp+28]
	fsub	DWORD PTR _r1$[esp+28]
	mov	ebp, DWORD PTR _y$[esp+28]
	fstp	DWORD PTR -8+[esp+32]
	fld	DWORD PTR _x$[esp+28]
	mov	ecx, DWORD PTR -8+[esp+32]
	fsub	DWORD PTR _r1$[esp+28]
	push	ecx
	push	ebp
	fstp	DWORD PTR -4+[esp+40]
	mov	edx, DWORD PTR -4+[esp+40]
	push	edx
	call	edi

; 21   : 	glTexCoord2f( 1, 0 ); glVertex3f( x-r2, y+height, z-r2 );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	mov	eax, DWORD PTR -16+[esp+32]
	push	eax
	mov	ecx, DWORD PTR 20+[esp+32]
	push	ebx
	push	ecx
	call	edi

; 22   : 	glTexCoord2f( 1, 1 ); glVertex3f( x-r2, y+height, z+r2 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	mov	edx, DWORD PTR 28+[esp+28]
	mov	eax, DWORD PTR 20+[esp+28]
	push	edx
	push	ebx
	push	eax
	call	edi

; 23   : 	glTexCoord2f( 0, 1 ); glVertex3f( x-r1, y, z+r1 );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	fld	DWORD PTR _z$[esp+28]
	fadd	DWORD PTR _r1$[esp+28]
	mov	edx, DWORD PTR -4+[esp+32]
	fstp	DWORD PTR 16+[esp+28]
	mov	ecx, DWORD PTR 16+[esp+28]
	push	ecx
	push	ebp
	push	edx
	call	edi

; 24   : 
; 25   : 	glTexCoord2f( 0, 0 ); glVertex3f( x+r2, y+height, z-r2 );

	push	0
	push	0
	call	esi
	mov	eax, DWORD PTR -16+[esp+32]
	mov	ecx, DWORD PTR -12+[esp+32]
	push	eax
	push	ebx
	push	ecx
	call	edi

; 26   : 	glTexCoord2f( 1, 0 ); glVertex3f( x+r1, y, z-r1 );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	fld	DWORD PTR _x$[esp+28]
	fadd	DWORD PTR _r1$[esp+28]
	mov	edx, DWORD PTR -8+[esp+32]
	push	edx
	push	ebp
	fstp	DWORD PTR 8+[esp+36]
	mov	eax, DWORD PTR 8+[esp+36]
	push	eax
	call	edi

; 27   : 	glTexCoord2f( 1, 1 ); glVertex3f( x+r1, y, z+r1 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	mov	ecx, DWORD PTR 16+[esp+28]
	mov	edx, DWORD PTR 8+[esp+28]
	push	ecx
	push	ebp
	push	edx
	call	edi

; 28   : 	glTexCoord2f( 0, 1 ); glVertex3f( x+r2, y+height, z+r2 );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	mov	eax, DWORD PTR 28+[esp+28]
	mov	ecx, DWORD PTR -12+[esp+32]
	push	eax
	push	ebx
	push	ecx
	call	edi

; 29   : 
; 30   : 	glTexCoord2f( 0, 0 ); glVertex3f( x-r1, y, z-r1 );

	push	0
	push	0
	call	esi
	mov	edx, DWORD PTR -8+[esp+32]
	mov	eax, DWORD PTR -4+[esp+32]
	push	edx
	push	ebp
	push	eax
	call	edi

; 31   : 	glTexCoord2f( 1, 0 ); glVertex3f( x-r2, y+height, z-r2 );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	mov	ecx, DWORD PTR -16+[esp+32]
	mov	edx, DWORD PTR 20+[esp+28]
	push	ecx
	push	ebx
	push	edx
	call	edi

; 32   : 	glTexCoord2f( 1, 1 ); glVertex3f( x+r2, y+height, z-r2 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	mov	eax, DWORD PTR -16+[esp+32]
	mov	ecx, DWORD PTR -12+[esp+32]
	push	eax
	push	ebx
	push	ecx
	call	edi

; 33   : 	glTexCoord2f( 0, 1 ); glVertex3f( x+r1, y, z-r1 );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	mov	edx, DWORD PTR -8+[esp+32]
	mov	eax, DWORD PTR 8+[esp+28]
	push	edx
	push	ebp
	push	eax
	call	edi

; 34   : 
; 35   : 	glTexCoord2f( 0, 0 ); glVertex3f( x-r2, y+height, z+r2 );

	push	0
	push	0
	call	esi
	mov	ecx, DWORD PTR 28+[esp+28]
	mov	edx, DWORD PTR 20+[esp+28]
	push	ecx
	push	ebx
	push	edx
	call	edi

; 36   : 	glTexCoord2f( 1, 0 ); glVertex3f( x-r1, y, z+r1 );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	mov	eax, DWORD PTR 16+[esp+28]
	mov	ecx, DWORD PTR -4+[esp+32]
	push	eax
	push	ebp
	push	ecx
	call	edi

; 37   : 	glTexCoord2f( 1, 1 ); glVertex3f( x+r1, y, z+r1 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	mov	edx, DWORD PTR 16+[esp+28]
	mov	eax, DWORD PTR 8+[esp+28]
	push	edx
	push	ebp
	push	eax
	call	edi

; 38   : 	glTexCoord2f( 0, 1 ); glVertex3f( x+r2, y+height, z+r2 );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	mov	ecx, DWORD PTR 28+[esp+28]
	mov	edx, DWORD PTR -12+[esp+32]
	push	ecx
	push	ebx
	push	edx
	call	edi
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 39   : 
; 40   : };

	add	esp, 16					; 00000010H
	ret	0
?pw_drawbuilding@@YAXMMMMMMM@Z ENDP			; pw_drawbuilding
_TEXT	ENDS
PUBLIC	?pw_draw_tile@@YAXMMMMM@Z			; pw_draw_tile
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@3ffccccccd0000000000
PUBLIC	__real@4@3ffbcccccd0000000000
;	COMDAT __real@4@3ffd99999a0000000000
; File E:\prj64k\glAss (eventad)\parts\p_wirelandscape.cpp
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@3ffccccccd0000000000
CONST	SEGMENT
__real@4@3ffccccccd0000000000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@3ffbcccccd0000000000
CONST	SEGMENT
__real@4@3ffbcccccd0000000000 DD 03dcccccdr	; 0.1
CONST	ENDS
;	COMDAT ?pw_draw_tile@@YAXMMMMM@Z
_TEXT	SEGMENT
_x$ = 8
_y$ = 12
_z$ = 16
_r$ = 20
_b$ = 24
?pw_draw_tile@@YAXMMMMM@Z PROC NEAR			; pw_draw_tile, COMDAT

; 42   : void pw_draw_tile( float x, float y, float z, float r, float b ) {

	push	ecx

; 43   : 	glColor3f( 0.1f*b, 0.2f*b, 0.3f*b );

	fld	DWORD PTR _b$[esp]
	push	ebx
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	push	ebp
	push	esi
	push	edi
	push	ecx
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _b$[esp+24]
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _b$[esp+28]
	fmul	DWORD PTR __real@4@3ffbcccccd0000000000
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12

; 44   : 
; 45   : 	glTexCoord2f( 0,0 );

	mov	esi, DWORD PTR __imp__glTexCoord2f@8
	push	0
	push	0
	call	esi

; 46   : 	glVertex3f( x-r, y, z-r );

	fld	DWORD PTR _z$[esp+16]
	fsub	DWORD PTR _r$[esp+16]
	mov	edi, DWORD PTR _y$[esp+16]
	mov	ebx, DWORD PTR __imp__glVertex3f@12
	fstp	DWORD PTR -4+[esp+20]
	fld	DWORD PTR _x$[esp+16]
	mov	ebp, DWORD PTR -4+[esp+20]
	fsub	DWORD PTR _r$[esp+16]
	push	ebp
	push	edi
	fstp	DWORD PTR 24+[esp+24]
	mov	eax, DWORD PTR 24+[esp+24]
	push	eax
	call	ebx

; 47   : 
; 48   : 	glTexCoord2f( 1,0 );

	push	0
	push	1065353216				; 3f800000H
	call	esi

; 49   : 	glVertex3f( x+r, y, z-r );

	fld	DWORD PTR _x$[esp+16]
	fadd	DWORD PTR _r$[esp+16]
	push	ebp
	push	edi
	fstp	DWORD PTR 8+[esp+24]
	mov	ebp, DWORD PTR 8+[esp+24]
	push	ebp
	call	ebx

; 50   : 
; 51   : 	glTexCoord2f( 1,1 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi

; 52   : 	glVertex3f( x+r, y, z+r );

	fld	DWORD PTR _z$[esp+16]
	fadd	DWORD PTR _r$[esp+16]
	fstp	DWORD PTR 20+[esp+16]
	mov	ecx, DWORD PTR 20+[esp+16]
	push	ecx
	push	edi
	push	ebp
	call	ebx

; 53   : 	
; 54   : 	glTexCoord2f( 0,1 );

	push	1065353216				; 3f800000H
	push	0
	call	esi

; 55   : 	glVertex3f( x-r, y, z+r );

	mov	edx, DWORD PTR 20+[esp+16]
	mov	eax, DWORD PTR 24+[esp+16]
	push	edx
	push	edi
	push	eax
	call	ebx
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 56   : };

	pop	ecx
	ret	0
?pw_draw_tile@@YAXMMMMM@Z ENDP				; pw_draw_tile
_TEXT	ENDS
PUBLIC	?pw_draw_obj@@YAXMMMM@Z				; pw_draw_obj
EXTRN	__imp__glEnd@0:NEAR
EXTRN	__imp__glBegin@4:NEAR
;	COMDAT ?pw_draw_obj@@YAXMMMM@Z
_TEXT	SEGMENT
_x$ = 8
_y$ = 12
_z$ = 16
_r$ = 20
?pw_draw_obj@@YAXMMMM@Z PROC NEAR			; pw_draw_obj, COMDAT

; 58   : void pw_draw_obj( float x, float y, float z, float r ) {

	sub	esp, 12					; 0000000cH
	push	ebx
	push	ebp
	push	esi
	push	edi

; 59   : 
; 60   : 	//float r2 = r/4.0f;
; 61   : #define r2 r
; 62   : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4

; 63   : 	
; 64   : 	glColor3f( 0.4f, 0.3f, 0.2f );

	push	1045220557				; 3e4ccccdH
	push	1050253722				; 3e99999aH
	push	1053609165				; 3ecccccdH
	call	DWORD PTR __imp__glColor3f@12

; 65   : 	glTexCoord2f( 0,0 ); glVertex3f( x-r, y-r, z-r2 );

	mov	esi, DWORD PTR __imp__glTexCoord2f@8
	push	0
	push	0
	call	esi
	fld	DWORD PTR _z$[esp+24]
	fsub	DWORD PTR _r$[esp+24]
	mov	edi, DWORD PTR __imp__glVertex3f@12
	fstp	DWORD PTR -12+[esp+28]
	fld	DWORD PTR _y$[esp+24]
	mov	ebx, DWORD PTR -12+[esp+28]
	fsub	DWORD PTR _r$[esp+24]
	push	ebx
	fstp	DWORD PTR -8+[esp+32]
	fld	DWORD PTR _x$[esp+28]
	mov	eax, DWORD PTR -8+[esp+32]
	fsub	DWORD PTR _r$[esp+28]
	push	eax
	fstp	DWORD PTR -4+[esp+36]
	mov	ebp, DWORD PTR -4+[esp+36]
	push	ebp
	call	edi

; 66   : 	glTexCoord2f( 1,0 ); glVertex3f( x+r, y-r, z-r2 );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	fld	DWORD PTR _x$[esp+24]
	fadd	DWORD PTR _r$[esp+24]
	mov	ecx, DWORD PTR -8+[esp+28]
	push	ebx
	push	ecx
	fstp	DWORD PTR -12+[esp+36]
	mov	edx, DWORD PTR -12+[esp+36]
	push	edx
	call	edi

; 67   : 	glTexCoord2f( 1,1 ); glVertex3f( x+r, y-r, z+r2 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	fld	DWORD PTR _z$[esp+24]
	fadd	DWORD PTR _r$[esp+24]
	mov	ecx, DWORD PTR -8+[esp+28]
	mov	edx, DWORD PTR -12+[esp+28]
	fstp	DWORD PTR 8+[esp+24]
	mov	eax, DWORD PTR 8+[esp+24]
	push	eax
	push	ecx
	push	edx
	call	edi

; 68   : 	glTexCoord2f( 0,1 ); glVertex3f( x-r, y-r, z+r2 );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	mov	eax, DWORD PTR 8+[esp+24]
	mov	ecx, DWORD PTR -8+[esp+28]
	push	eax
	push	ecx
	push	ebp
	call	edi

; 69   : 	glTexCoord2f( 0,0 ); glVertex3f( x-r, y+r, z-r2 );

	push	0
	push	0
	call	esi
	fld	DWORD PTR _y$[esp+24]
	fadd	DWORD PTR _r$[esp+24]
	push	ebx
	fstp	DWORD PTR 16+[esp+28]
	mov	edx, DWORD PTR 16+[esp+28]
	push	edx
	push	ebp
	call	edi

; 70   : 	glTexCoord2f( 1,0 ); glVertex3f( x+r, y+r, z-r2 );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	mov	eax, DWORD PTR 16+[esp+24]
	push	ebx
	mov	ecx, DWORD PTR -12+[esp+32]
	push	eax
	push	ecx
	call	edi

; 71   : 	glTexCoord2f( 1,1 ); glVertex3f( x+r, y+r, z+r2 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	mov	edx, DWORD PTR 8+[esp+24]
	mov	eax, DWORD PTR 16+[esp+24]
	mov	ecx, DWORD PTR -12+[esp+28]
	push	edx
	push	eax
	push	ecx
	call	edi

; 72   : 	glTexCoord2f( 0,1 ); glVertex3f( x-r, y+r, z+r2 );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	mov	edx, DWORD PTR 8+[esp+24]
	mov	eax, DWORD PTR 16+[esp+24]
	push	edx
	push	eax
	push	ebp
	call	edi

; 73   : 	glTexCoord2f( 0,0 ); glVertex3f( x-r, y-r, z-r2 );

	push	0
	push	0
	call	esi
	mov	ecx, DWORD PTR -8+[esp+28]
	push	ebx
	push	ecx
	push	ebp
	call	edi

; 74   : 	glTexCoord2f( 1,0 ); glVertex3f( x+r, y-r, z-r2 );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	mov	edx, DWORD PTR -8+[esp+28]
	mov	eax, DWORD PTR -12+[esp+28]
	push	ebx
	push	edx
	push	eax
	call	edi

; 75   : 	glTexCoord2f( 1,1 ); glVertex3f( x+r, y+r, z-r2 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	mov	ecx, DWORD PTR 16+[esp+24]
	mov	edx, DWORD PTR -12+[esp+28]
	push	ebx
	push	ecx
	push	edx
	call	edi

; 76   : 	glTexCoord2f( 0,1 ); glVertex3f( x-r, y+r, z-r2 );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	mov	eax, DWORD PTR 16+[esp+24]
	push	ebx
	push	eax
	push	ebp
	call	edi

; 77   : 	glTexCoord2f( 0,0 ); glVertex3f( x-r, y-r, z+r2 );

	push	0
	push	0
	call	esi
	mov	ecx, DWORD PTR 8+[esp+24]
	mov	edx, DWORD PTR -8+[esp+28]
	push	ecx
	push	edx
	push	ebp
	call	edi

; 78   : 	glTexCoord2f( 1,0 ); glVertex3f( x+r, y-r, z+r2 );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	mov	eax, DWORD PTR 8+[esp+24]
	mov	ecx, DWORD PTR -8+[esp+28]
	mov	edx, DWORD PTR -12+[esp+28]
	push	eax
	push	ecx
	push	edx
	call	edi

; 79   : 	glTexCoord2f( 1,1 ); glVertex3f( x+r, y+r, z+r2 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	mov	eax, DWORD PTR 8+[esp+24]
	push	eax
	mov	ecx, DWORD PTR 16+[esp+28]
	mov	edx, DWORD PTR -12+[esp+32]
	push	ecx
	push	edx
	call	edi

; 80   : 	glTexCoord2f( 0,1 ); glVertex3f( x-r, y+r, z+r2 );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	mov	eax, DWORD PTR 8+[esp+24]
	mov	ecx, DWORD PTR 16+[esp+24]
	push	eax
	push	ecx
	push	ebp
	call	edi

; 81   : 	glTexCoord2f( 0,0 ); glVertex3f( x-r, y-r, z-r2 );

	push	0
	push	0
	call	esi
	mov	edx, DWORD PTR -8+[esp+28]
	push	ebx
	push	edx
	push	ebp
	call	edi

; 82   : 	glTexCoord2f( 1,0 ); glVertex3f( x-r, y-r, z+r2 );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	mov	eax, DWORD PTR 8+[esp+24]
	mov	ecx, DWORD PTR -8+[esp+28]
	push	eax
	push	ecx
	push	ebp
	call	edi

; 83   : 	glTexCoord2f( 1,1 ); glVertex3f( x-r, y+r, z+r2 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	mov	edx, DWORD PTR 8+[esp+24]
	mov	eax, DWORD PTR 16+[esp+24]
	push	edx
	push	eax
	push	ebp
	call	edi

; 84   : 	glTexCoord2f( 0,1 ); glVertex3f( x-r, y+r, z-r2 );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	mov	ecx, DWORD PTR 16+[esp+24]
	push	ebx
	push	ecx
	push	ebp
	call	edi

; 85   : 	glTexCoord2f( 0,0 ); glVertex3f( x+r, y-r, z-r2 );

	push	0
	push	0
	call	esi
	mov	edx, DWORD PTR -8+[esp+28]
	mov	eax, DWORD PTR -12+[esp+28]
	push	ebx
	push	edx
	push	eax
	call	edi

; 86   : 	glTexCoord2f( 1,0 ); glVertex3f( x+r, y-r, z+r2 );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	mov	ecx, DWORD PTR 8+[esp+24]
	mov	edx, DWORD PTR -8+[esp+28]
	mov	eax, DWORD PTR -12+[esp+28]
	push	ecx
	push	edx
	push	eax
	call	edi

; 87   : 	glTexCoord2f( 1,1 ); glVertex3f( x+r, y+r, z+r2 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	mov	ecx, DWORD PTR 8+[esp+24]
	mov	edx, DWORD PTR 16+[esp+24]
	mov	eax, DWORD PTR -12+[esp+28]
	push	ecx
	push	edx
	push	eax
	call	edi

; 88   : 	glTexCoord2f( 0,1 ); glVertex3f( x+r, y+r, z-r2 );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	push	ebx
	mov	ecx, DWORD PTR 16+[esp+28]
	mov	edx, DWORD PTR -12+[esp+32]
	push	ecx
	push	edx
	call	edi

; 89   : 
; 90   : 	glColor3f( 0.075f, 0.15f, 0.2f );

	push	1045220557				; 3e4ccccdH
	push	1041865114				; 3e19999aH
	push	1033476506				; 3d99999aH
	call	DWORD PTR __imp__glColor3f@12

; 91   : 	glTexCoord2f( 0,0 ); glVertex3f( x-r, -y-r, z-r2 );

	push	0
	push	0
	call	esi
	fld	DWORD PTR _y$[esp+24]
	fchs
	push	ebx
	fsub	DWORD PTR _r$[esp+28]
	fstp	DWORD PTR 16+[esp+28]
	mov	eax, DWORD PTR 16+[esp+28]
	push	eax
	push	ebp
	call	edi

; 92   : 	glTexCoord2f( 1,0 ); glVertex3f( x+r, -y-r, z-r2 );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	mov	ecx, DWORD PTR 16+[esp+24]
	mov	edx, DWORD PTR -12+[esp+28]
	push	ebx
	push	ecx
	push	edx
	call	edi

; 93   : 	glTexCoord2f( 1,1 ); glVertex3f( x+r, -y-r, z+r2 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	mov	eax, DWORD PTR 8+[esp+24]
	mov	ecx, DWORD PTR 16+[esp+24]
	mov	edx, DWORD PTR -12+[esp+28]
	push	eax
	push	ecx
	push	edx
	call	edi

; 94   : 	glTexCoord2f( 0,1 ); glVertex3f( x-r, -y-r, z+r2 );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	mov	eax, DWORD PTR 8+[esp+24]
	mov	ecx, DWORD PTR 16+[esp+24]
	push	eax
	push	ecx
	push	ebp
	call	edi

; 95   : 	glTexCoord2f( 0,0 ); glVertex3f( x-r, -y+r, z-r2 );

	push	0
	push	0
	call	esi
	fld	DWORD PTR _r$[esp+24]
	fsub	DWORD PTR _y$[esp+24]
	push	ebx
	fstp	DWORD PTR 20+[esp+28]
	mov	edx, DWORD PTR 20+[esp+28]
	push	edx
	push	ebp
	call	edi

; 96   : 	glTexCoord2f( 1,0 ); glVertex3f( x+r, -y+r, z-r2 );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	mov	eax, DWORD PTR 20+[esp+24]
	mov	ecx, DWORD PTR -12+[esp+28]
	push	ebx
	push	eax
	push	ecx
	call	edi

; 97   : 	glTexCoord2f( 1,1 ); glVertex3f( x+r, -y+r, z+r2 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	mov	edx, DWORD PTR 8+[esp+24]
	mov	eax, DWORD PTR 20+[esp+24]
	mov	ecx, DWORD PTR -12+[esp+28]
	push	edx
	push	eax
	push	ecx
	call	edi

; 98   : 	glTexCoord2f( 0,1 ); glVertex3f( x-r, -y+r, z+r2 );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	mov	edx, DWORD PTR 8+[esp+24]
	mov	eax, DWORD PTR 20+[esp+24]
	push	edx
	push	eax
	push	ebp
	call	edi

; 99   : 	glTexCoord2f( 0,0 ); glVertex3f( x-r, -y-r, z-r2 );

	push	0
	push	0
	call	esi
	mov	ecx, DWORD PTR 16+[esp+24]
	push	ebx
	push	ecx
	push	ebp
	call	edi

; 100  : 	glTexCoord2f( 1,0 ); glVertex3f( x+r, -y-r, z-r2 );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	mov	edx, DWORD PTR 16+[esp+24]
	mov	eax, DWORD PTR -12+[esp+28]
	push	ebx
	push	edx
	push	eax
	call	edi

; 101  : 	glTexCoord2f( 1,1 ); glVertex3f( x+r, -y+r, z-r2 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	mov	ecx, DWORD PTR 20+[esp+24]
	mov	edx, DWORD PTR -12+[esp+28]
	push	ebx
	push	ecx
	push	edx
	call	edi

; 102  : 	glTexCoord2f( 0,1 ); glVertex3f( x-r, -y+r, z-r2 );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	mov	eax, DWORD PTR 20+[esp+24]
	push	ebx
	push	eax
	push	ebp
	call	edi

; 103  : 	glTexCoord2f( 0,0 ); glVertex3f( x-r, -y-r, z+r2 );

	push	0
	push	0
	call	esi
	mov	ecx, DWORD PTR 8+[esp+24]
	mov	edx, DWORD PTR 16+[esp+24]
	push	ecx
	push	edx
	push	ebp
	call	edi

; 104  : 	glTexCoord2f( 1,0 ); glVertex3f( x+r, -y-r, z+r2 );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	mov	eax, DWORD PTR 8+[esp+24]
	mov	ecx, DWORD PTR 16+[esp+24]
	mov	edx, DWORD PTR -12+[esp+28]
	push	eax
	push	ecx
	push	edx
	call	edi

; 105  : 	glTexCoord2f( 1,1 ); glVertex3f( x+r, -y+r, z+r2 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	mov	eax, DWORD PTR 8+[esp+24]
	mov	ecx, DWORD PTR 20+[esp+24]
	mov	edx, DWORD PTR -12+[esp+28]
	push	eax
	push	ecx
	push	edx
	call	edi

; 106  : 	glTexCoord2f( 0,1 ); glVertex3f( x-r, -y+r, z+r2 );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	mov	eax, DWORD PTR 8+[esp+24]
	mov	ecx, DWORD PTR 20+[esp+24]
	push	eax
	push	ecx
	push	ebp
	call	edi

; 107  : 	glTexCoord2f( 0,0 ); glVertex3f( x-r, -y-r, z-r2 );

	push	0
	push	0
	call	esi
	mov	edx, DWORD PTR 16+[esp+24]
	push	ebx
	push	edx
	push	ebp
	call	edi

; 108  : 	glTexCoord2f( 1,0 ); glVertex3f( x-r, -y-r, z+r2 );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	mov	eax, DWORD PTR 8+[esp+24]
	mov	ecx, DWORD PTR 16+[esp+24]
	push	eax
	push	ecx
	push	ebp
	call	edi

; 109  : 	glTexCoord2f( 1,1 ); glVertex3f( x-r, -y+r, z+r2 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	mov	edx, DWORD PTR 8+[esp+24]
	mov	eax, DWORD PTR 20+[esp+24]
	push	edx
	push	eax
	push	ebp
	call	edi

; 110  : 	glTexCoord2f( 0,1 ); glVertex3f( x-r, -y+r, z-r2 );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	mov	ecx, DWORD PTR 20+[esp+24]
	push	ebx
	push	ecx
	push	ebp
	call	edi

; 111  : 	glTexCoord2f( 0,0 ); glVertex3f( x+r, -y-r, z-r2 );

	push	0
	push	0
	call	esi
	mov	edx, DWORD PTR 16+[esp+24]
	mov	ebp, DWORD PTR -12+[esp+28]
	push	ebx
	push	edx
	push	ebp
	call	edi

; 112  : 	glTexCoord2f( 1,0 ); glVertex3f( x+r, -y-r, z+r2 );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	mov	eax, DWORD PTR 8+[esp+24]
	mov	ecx, DWORD PTR 16+[esp+24]
	push	eax
	push	ecx
	push	ebp
	call	edi

; 113  : 	glTexCoord2f( 1,1 ); glVertex3f( x+r, -y+r, z+r2 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	mov	edx, DWORD PTR 8+[esp+24]
	mov	eax, DWORD PTR 20+[esp+24]
	push	edx
	push	eax
	push	ebp
	call	edi

; 114  : 	glTexCoord2f( 0,1 ); glVertex3f( x+r, -y+r, z-r2 );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	mov	ecx, DWORD PTR 20+[esp+24]
	push	ebx
	push	ecx
	push	ebp
	call	edi

; 115  : 
; 116  : 	glEnd();

	call	DWORD PTR __imp__glEnd@0
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 117  : #undef r2
; 118  : };

	add	esp, 12					; 0000000cH
	ret	0
?pw_draw_obj@@YAXMMMM@Z ENDP				; pw_draw_obj
_TEXT	ENDS
PUBLIC	?pw_draw_world@@YAXMM@Z				; pw_draw_world
PUBLIC	__real@4@3ffbccccccccccccd000
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@00000000000000000000
PUBLIC	__real@4@4002c000000000000000
PUBLIC	__real@4@4006b400000000000000
PUBLIC	__real@8@4000a000000000000000
PUBLIC	__real@4@4000a000000000000000
PUBLIC	__real@4@4001a000000000000000
PUBLIC	__real@8@4000d999999999999800
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@8@40008000000000000000
PUBLIC	__real@8@3fffa000000000000000
PUBLIC	__real@4@3fffc000000000000000
PUBLIC	__real@4@bfff8000000000000000
PUBLIC	__real@4@bfffc000000000000000
PUBLIC	__real@4@3ffcccccccccccccd000
PUBLIC	__real@4@4000c000000000000000
PUBLIC	__real@4@3ffdcccccd0000000000
PUBLIC	__real@4@4001e000000000000000
PUBLIC	__real@4@3ffc99999a0000000000
PUBLIC	__real@4@c0008000000000000000
PUBLIC	__real@4@c000c000000000000000
EXTRN	__imp__glPopMatrix@0:NEAR
EXTRN	__imp__glPushMatrix@0:NEAR
EXTRN	__imp__glRotatef@16:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__CIfmod:NEAR
;	COMDAT __real@4@3ffbccccccccccccd000
; File E:\prj64k\glAss (eventad)\parts\p_wirelandscape.cpp
CONST	SEGMENT
__real@4@3ffbccccccccccccd000 DD 03dcccccdr	; 0.1
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@00000000000000000000
CONST	SEGMENT
__real@4@00000000000000000000 DD 000000000r	; 0
CONST	ENDS
;	COMDAT __real@4@4002c000000000000000
CONST	SEGMENT
__real@4@4002c000000000000000 DD 041400000r	; 12
CONST	ENDS
;	COMDAT __real@4@4006b400000000000000
CONST	SEGMENT
__real@4@4006b400000000000000 DD 043340000r	; 180
CONST	ENDS
;	COMDAT __real@8@4000a000000000000000
CONST	SEGMENT
__real@8@4000a000000000000000 DQ 04004000000000000r ; 2.5
CONST	ENDS
;	COMDAT __real@4@4000a000000000000000
CONST	SEGMENT
__real@4@4000a000000000000000 DD 040200000r	; 2.5
CONST	ENDS
;	COMDAT __real@4@4001a000000000000000
CONST	SEGMENT
__real@4@4001a000000000000000 DD 040a00000r	; 5
CONST	ENDS
;	COMDAT __real@8@4000d999999999999800
CONST	SEGMENT
__real@8@4000d999999999999800 DQ 0400b333333333333r ; 3.4
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@8@40008000000000000000
CONST	SEGMENT
__real@8@40008000000000000000 DQ 04000000000000000r ; 2
CONST	ENDS
;	COMDAT __real@8@3fffa000000000000000
CONST	SEGMENT
__real@8@3fffa000000000000000 DQ 03ff4000000000000r ; 1.25
CONST	ENDS
;	COMDAT __real@4@3fffc000000000000000
CONST	SEGMENT
__real@4@3fffc000000000000000 DD 03fc00000r	; 1.5
CONST	ENDS
;	COMDAT __real@4@bfff8000000000000000
CONST	SEGMENT
__real@4@bfff8000000000000000 DD 0bf800000r	; -1
CONST	ENDS
;	COMDAT __real@4@bfffc000000000000000
CONST	SEGMENT
__real@4@bfffc000000000000000 DD 0bfc00000r	; -1.5
CONST	ENDS
;	COMDAT __real@4@3ffcccccccccccccd000
CONST	SEGMENT
__real@4@3ffcccccccccccccd000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@4000c000000000000000
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT __real@4@3ffdcccccd0000000000
CONST	SEGMENT
__real@4@3ffdcccccd0000000000 DD 03ecccccdr	; 0.4
CONST	ENDS
;	COMDAT __real@4@4001e000000000000000
CONST	SEGMENT
__real@4@4001e000000000000000 DD 040e00000r	; 7
CONST	ENDS
;	COMDAT __real@4@3ffc99999a0000000000
CONST	SEGMENT
__real@4@3ffc99999a0000000000 DD 03e19999ar	; 0.15
CONST	ENDS
;	COMDAT __real@4@c0008000000000000000
CONST	SEGMENT
__real@4@c0008000000000000000 DD 0c0000000r	; -2
CONST	ENDS
;	COMDAT __real@4@c000c000000000000000
CONST	SEGMENT
__real@4@c000c000000000000000 DD 0c0400000r	; -3
CONST	ENDS
;	COMDAT ?pw_draw_world@@YAXMM@Z
_TEXT	SEGMENT
_t$ = 8
_i$ = -40
_j$ = -32
_b$17213 = -20
_xs$ = -32
_ys$ = -36
_s$17227 = -20
_b$17228 = 8
?pw_draw_world@@YAXMM@Z PROC NEAR			; pw_draw_world, COMDAT

; 120  : void pw_draw_world( float t, float b ) {

	sub	esp, 40					; 00000028H
	push	ebx
	push	ebp
	push	esi
	push	edi

; 121  : 	float i, j;
; 122  : 
; 123  : 	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12

; 124  : 	glaSetTexture( GIF_GRID );

	push	105					; 00000069H
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture

; 125  : 
; 126  : 	glBegin( GL_QUADS );

	mov	edi, DWORD PTR __imp__glBegin@4
	add	esp, 4
	push	7
	call	edi

; 127  : 	for( j=-12; j<12; j++ ) {

	mov	DWORD PTR _j$[esp+56], -1052770304	; c1400000H
$L17207:

; 128  : 		for( i=-12; i<12; i++ ) {
; 129  : 			/*
; 130  : 			float d = sqrt( i*i + j*j );
; 131  : 			float y = 1.5f*sin( fmod( (t+d),2 )*3.142/1.0f );
; 132  : 			y *= y;
; 133  : 			y -= 2;
; 134  : 			float h = 0.4f + 0.2f * (float)cos( (t+d)*3.142/0.5f );
; 135  : 			//h *= h;
; 136  : 			h = 0.2f;
; 137  : 			y = 0;
; 138  : 			glPushMatrix();
; 139  : 			glRotatef( 130, sin(j), cos(i), 0 );
; 140  : 			pw_drawbuilding( i, y, j, h, 0.3f, 0.3f, t );
; 141  : 			glPopMatrix();
; 142  : 			*/
; 143  : 			float b = 1.0f - ((float)sqrt( i*i+j*j)/10.0f );

	fld	DWORD PTR _j$[esp+56]
	mov	esi, DWORD PTR _j$[esp+56]
	fmul	DWORD PTR _j$[esp+56]
	mov	DWORD PTR _i$[esp+56], -1052770304	; c1400000H
	fstp	DWORD PTR -16+[esp+56]
$L17210:
	fld	DWORD PTR _i$[esp+56]
	fmul	DWORD PTR _i$[esp+56]
	fadd	DWORD PTR -16+[esp+56]
	fsqrt
	fmul	DWORD PTR __real@4@3ffbccccccccccccd000
	fsubr	DWORD PTR __real@4@3fff8000000000000000
	fst	DWORD PTR _b$17213[esp+56]

; 144  : 			if( b>0 )

	fcomp	DWORD PTR __real@4@00000000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17211

; 145  : 				pw_draw_tile( i, 0, j, 0.5f, b );

	mov	eax, DWORD PTR _b$17213[esp+56]
	mov	ecx, DWORD PTR _i$[esp+56]
	push	eax
	push	1056964608				; 3f000000H
	push	esi
	push	0
	push	ecx
	call	?pw_draw_tile@@YAXMMMMM@Z		; pw_draw_tile
	add	esp, 20					; 00000014H
$L17211:
	fld	DWORD PTR _i$[esp+56]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fst	DWORD PTR _i$[esp+56]
	fcomp	DWORD PTR __real@4@4002c000000000000000
	fnstsw	ax
	test	ah, 1
	jne	SHORT $L17210
	fld	DWORD PTR _j$[esp+56]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fst	DWORD PTR _j$[esp+56]
	fcomp	DWORD PTR __real@4@4002c000000000000000
	fnstsw	ax
	test	ah, 1
	jne	$L17207

; 146  : 		};
; 147  : 	};
; 148  : 	glEnd();

	call	DWORD PTR __imp__glEnd@0

; 149  : 
; 150  : 	float r, x;
; 151  : 
; 152  : 	r = 0.4f;
; 153  : 
; 154  : 	glPushMatrix();

	call	DWORD PTR __imp__glPushMatrix@0

; 155  : 
; 156  : 	glRotatef( t*180, 0, 1, 0 );

	fld	DWORD PTR _t$[esp+52]
	fmul	DWORD PTR __real@4@4006b400000000000000
	push	0
	push	1065353216				; 3f800000H
	push	0
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glRotatef@16

; 157  : 
; 158  : 	x = -2.0f;
; 159  : 	pw_draw_obj( x-1, 5, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1084227584				; 40a00000H
	push	-1069547520				; c0400000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj

; 160  : 	pw_draw_obj( x-1, 4, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1082130432				; 40800000H
	push	-1069547520				; c0400000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj

; 161  : 	pw_draw_obj( x-1, 3, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1077936128				; 40400000H
	push	-1069547520				; c0400000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj

; 162  : 	pw_draw_obj( x+0, 3, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1077936128				; 40400000H
	push	-1073741824				; c0000000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 64					; 00000040H

; 163  : 	pw_draw_obj( x+1, 3, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1077936128				; 40400000H
	push	-1082130432				; bf800000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj

; 164  : 	pw_draw_obj( x-1, 2, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1073741824				; 40000000H
	push	-1069547520				; c0400000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj

; 165  : 	pw_draw_obj( x+1, 2, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1073741824				; 40000000H
	push	-1082130432				; bf800000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj

; 166  : 	pw_draw_obj( x-1, 1, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1065353216				; 3f800000H
	push	-1069547520				; c0400000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 64					; 00000040H

; 167  : 	pw_draw_obj( x+0, 1, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1065353216				; 3f800000H
	push	-1073741824				; c0000000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj

; 168  : 	pw_draw_obj( x+1, 1, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1065353216				; 3f800000H
	push	-1082130432				; bf800000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj

; 169  : 
; 170  : 	x = 2.0f;
; 171  : 	pw_draw_obj( x-1, 5, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1084227584				; 40a00000H
	push	1065353216				; 3f800000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj

; 172  : 	pw_draw_obj( x+1, 5, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1084227584				; 40a00000H
	push	1077936128				; 40400000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 64					; 00000040H

; 173  : 	pw_draw_obj( x-1, 4, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1082130432				; 40800000H
	push	1065353216				; 3f800000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj

; 174  : 	pw_draw_obj( x+1, 4, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1082130432				; 40800000H
	push	1077936128				; 40400000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj

; 175  : 	pw_draw_obj( x-1, 3, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1077936128				; 40400000H
	push	1065353216				; 3f800000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj

; 176  : 	pw_draw_obj( x+0, 3, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1077936128				; 40400000H
	push	1073741824				; 40000000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 64					; 00000040H

; 177  : 	pw_draw_obj( x+1, 3, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1077936128				; 40400000H
	push	1077936128				; 40400000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj

; 178  : 	pw_draw_obj( x+1, 2, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1073741824				; 40000000H
	push	1077936128				; 40400000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj

; 179  : 	pw_draw_obj( x+1, 1, 0, r );

	push	1053609165				; 3ecccccdH
	push	0
	push	1065353216				; 3f800000H
	push	1077936128				; 40400000H
	call	?pw_draw_obj@@YAXMMMM@Z			; pw_draw_obj
	add	esp, 48					; 00000030H

; 180  : /*
; 181  : 	x = 2;
; 182  : 	pw_draw_obj( x-1, 5, 0, r );
; 183  : 	pw_draw_obj( x-1, 4, 0, r );
; 184  : 	pw_draw_obj( x-1, 3, 0, r );
; 185  : 	pw_draw_obj( x-1, 2, 0, r );
; 186  : 	pw_draw_obj( x-1, 1, 0, r );
; 187  : 	pw_draw_obj( x+1, 3, 0, r );
; 188  : 	pw_draw_obj( x+0, 2, 0, r );
; 189  : 	pw_draw_obj( x+1, 1, 0, r );
; 190  : 
; 191  : 	x = 6;
; 192  : 	pw_draw_obj( x-1, 5, 0, r );
; 193  : 	pw_draw_obj( x-1, 4, 0, r );
; 194  : 	pw_draw_obj( x-1, 3, 0, r );
; 195  : 	pw_draw_obj( x-1, 2, 0, r );
; 196  : 	pw_draw_obj( x-1, 1, 0, r );
; 197  : 	pw_draw_obj( x+0, 3, 0, r );
; 198  : 	pw_draw_obj( x+1, 3, 0, r );
; 199  : 	pw_draw_obj( x+1, 2, 0, r );
; 200  : 	pw_draw_obj( x+0, 1, 0, r );
; 201  : 	pw_draw_obj( x+1, 1, 0, r );
; 202  : */
; 203  : 
; 204  : 	glPopMatrix();

	call	DWORD PTR __imp__glPopMatrix@0

; 205  : 
; 206  : 	glaSetTexture( GIF_PSIKORP4 );

	push	123					; 0000007bH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4

; 207  : 	glBegin( GL_QUADS );

	push	7
	call	edi

; 208  : 	
; 209  : 	float xs = 5 + 2.5f*(float)cos( t*2.5 );

	fld	DWORD PTR _t$[esp+52]
	fmul	QWORD PTR __real@8@4000a000000000000000

; 210  : 	float ys = 4 + 2.0f*(float)sin( t*3.4 );
; 211  : 
; 212  : 	glColor3f( 0.6f, 0.3f, 0.2f );

	mov	ebx, DWORD PTR __imp__glColor3f@12
	push	1045220557				; 3e4ccccdH
	push	1050253722				; 3e99999aH
	fcos
	push	1058642330				; 3f19999aH
	fmul	DWORD PTR __real@4@4000a000000000000000
	fadd	DWORD PTR __real@4@4001a000000000000000
	fstp	DWORD PTR _xs$[esp+68]
	fld	DWORD PTR _t$[esp+64]
	fmul	QWORD PTR __real@8@4000d999999999999800
	fsin
	fadd	ST(0), ST(0)
	fadd	DWORD PTR __real@4@40018000000000000000
	fstp	DWORD PTR _ys$[esp+68]
	call	ebx

; 213  : 	if( fmod(t,2.0f)>1.25f ) { 

	fld	DWORD PTR _t$[esp+52]
	fld	QWORD PTR __real@8@40008000000000000000
	call	__CIfmod
	fst	QWORD PTR -8+[esp+56]
	fcomp	QWORD PTR __real@8@3fffa000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17222

; 214  : 		xs *= 1.5f; 

	fld	DWORD PTR _xs$[esp+56]

; 215  : 		ys *= 1.5f; 
; 216  : 		glColor3f( 1.0f, 0.4f, 0.2f );

	push	1045220557				; 3e4ccccdH
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	1053609165				; 3ecccccdH
	push	1065353216				; 3f800000H
	fstp	DWORD PTR _xs$[esp+68]
	fld	DWORD PTR _ys$[esp+68]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	fstp	DWORD PTR _ys$[esp+68]
	call	ebx
$L17222:

; 217  : 	};
; 218  : 		////+(0.2f*((fmod(b,2.0f)-1.25f)*1.2f));//- 0.3f/(1+fmod(b,2.0f));
; 219  : 
; 220  : 		glTexCoord2f( 0, 1 ); glVertex3f( -1.5f*xs, 7, -1*ys );

	mov	esi, DWORD PTR __imp__glTexCoord2f@8
	push	1065353216				; 3f800000H
	push	0
	call	esi
	fld	DWORD PTR _ys$[esp+56]
	fmul	DWORD PTR __real@4@bfff8000000000000000
	mov	edi, DWORD PTR __imp__glVertex3f@12
	fstp	DWORD PTR -16+[esp+56]
	fld	DWORD PTR _xs$[esp+56]
	mov	ebp, DWORD PTR -16+[esp+56]
	fmul	DWORD PTR __real@4@bfffc000000000000000
	push	ebp
	push	1088421888				; 40e00000H
	fstp	DWORD PTR 8+[esp+60]
	mov	edx, DWORD PTR 8+[esp+60]
	push	edx
	call	edi

; 221  : 		glTexCoord2f( 1, 1 ); glVertex3f(  1.5f*xs, 7, -1*ys );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	fld	DWORD PTR _xs$[esp+56]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ebp
	push	1088421888				; 40e00000H
	fstp	DWORD PTR -24+[esp+64]
	mov	eax, DWORD PTR -24+[esp+64]
	push	eax
	call	edi

; 222  : 		glTexCoord2f( 1, 0 ); glVertex3f(  1.5f*xs, 7,  1*ys );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	mov	ecx, DWORD PTR _ys$[esp+56]
	mov	edx, DWORD PTR -24+[esp+56]
	push	ecx
	push	1088421888				; 40e00000H
	push	edx
	call	edi

; 223  : 		glTexCoord2f( 0, 0 ); glVertex3f( -1.5f*xs, 7,  1*ys );

	push	0
	push	0
	call	esi
	mov	eax, DWORD PTR _ys$[esp+56]
	mov	ecx, DWORD PTR 8+[esp+52]
	push	eax
	push	1088421888				; 40e00000H
	push	ecx
	call	edi

; 224  : 
; 225  : 	glColor3f( 0.1f, 0.2f, 0.3f );

	push	1050253722				; 3e99999aH
	push	1045220557				; 3e4ccccdH
	push	1036831949				; 3dcccccdH
	call	ebx

; 226  : 	if( fmod(t,2.0f)>1.25f ) { 

	fld	QWORD PTR -8+[esp+56]
	fcomp	QWORD PTR __real@8@3fffa000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17223

; 227  : 		glColor3f( 0.2f, 0.3f, 0.5f );

	push	1056964608				; 3f000000H
	push	1050253722				; 3e99999aH
	push	1045220557				; 3e4ccccdH
	call	ebx
$L17223:

; 228  : 	};
; 229  : 
; 230  : 		glTexCoord2f( 0, 1 ); glVertex3f( -1.5f*xs, -7, -1*ys );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	mov	edx, DWORD PTR 8+[esp+52]
	push	ebp
	push	-1059061760				; c0e00000H
	push	edx
	call	edi

; 231  : 		glTexCoord2f( 1, 1 ); glVertex3f(  1.5f*xs, -7, -1*ys );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	push	ebp
	mov	ebp, DWORD PTR -24+[esp+60]
	push	-1059061760				; c0e00000H
	push	ebp
	call	edi

; 232  : 		glTexCoord2f( 1, 0 ); glVertex3f(  1.5f*xs, -7,  1*ys );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	mov	eax, DWORD PTR _ys$[esp+56]
	push	eax
	push	-1059061760				; c0e00000H
	push	ebp
	call	edi

; 233  : 		glTexCoord2f( 0, 0 ); glVertex3f( -1.5f*xs, -7,  1*ys );

	push	0
	push	0
	call	esi
	mov	ecx, DWORD PTR _ys$[esp+56]
	mov	edx, DWORD PTR 8+[esp+52]
	push	ecx
	push	-1059061760				; c0e00000H
	push	edx
	call	edi

; 234  : 
; 235  : 		for( i=0; i<3; i+=0.15f ) {

	mov	DWORD PTR _i$[esp+56], 0
	jmp	SHORT $L17224
$L17331:
	mov	ebx, DWORD PTR __imp__glColor3f@12
$L17224:

; 236  : 
; 237  : 			float s = 1 + (i/5.0f);

	fld	DWORD PTR _i$[esp+56]
	fmul	DWORD PTR __real@4@3ffcccccccccccccd000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _s$17227[esp+56]

; 238  : 			float b = 0.2f / (1+i*3.0f);

	fld	DWORD PTR _i$[esp+56]
	fmul	DWORD PTR __real@4@4000c000000000000000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3ffccccccd0000000000
	fst	DWORD PTR _b$17228[esp+52]

; 239  : 			glColor3f( b, 0.4f*b, b*0.2f );

	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	fstp	DWORD PTR -16+[esp+56]
	mov	eax, DWORD PTR -16+[esp+56]
	fld	DWORD PTR _b$17228[esp+52]
	fmul	DWORD PTR __real@4@3ffdcccccd0000000000
	push	eax
	push	ecx
	mov	ecx, DWORD PTR _b$17228[esp+60]
	fstp	DWORD PTR [esp]
	push	ecx
	call	ebx

; 240  : 			glTexCoord2f( 0, 1 ); glVertex3f( -1.5f*xs*s, 7-i, -1*ys*s );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	fld	DWORD PTR _s$17227[esp+56]
	fmul	DWORD PTR _ys$[esp+56]
	fst	DWORD PTR -28+[esp+56]
	fmul	DWORD PTR __real@4@bfff8000000000000000
	fstp	DWORD PTR -12+[esp+56]
	fld	DWORD PTR __real@4@4001e000000000000000
	mov	ebx, DWORD PTR -12+[esp+56]
	fsub	DWORD PTR _i$[esp+56]
	push	ebx
	fstp	DWORD PTR -8+[esp+60]
	fld	DWORD PTR _s$17227[esp+60]
	mov	ebp, DWORD PTR -8+[esp+60]
	fmul	DWORD PTR _xs$[esp+60]
	push	ebp
	fst	DWORD PTR -20+[esp+64]
	fmul	DWORD PTR __real@4@bfffc000000000000000
	fstp	DWORD PTR -24+[esp+64]
	mov	edx, DWORD PTR -24+[esp+64]
	push	edx
	call	edi

; 241  : 			glTexCoord2f( 1, 1 ); glVertex3f(  1.5f*xs*s, 7-i, -1*ys*s );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	fld	DWORD PTR -20+[esp+56]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ebx
	push	ebp
	fstp	DWORD PTR -20+[esp+64]
	mov	eax, DWORD PTR -20+[esp+64]
	push	eax
	call	edi

; 242  : 			glTexCoord2f( 1, 0 ); glVertex3f(  1.5f*xs*s, 7-i,  1*ys*s );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	mov	ecx, DWORD PTR -28+[esp+56]
	mov	edx, DWORD PTR -20+[esp+56]
	push	ecx
	push	ebp
	push	edx
	call	edi

; 243  : 			glTexCoord2f( 0, 0 ); glVertex3f( -1.5f*xs*s, 7-i,  1*ys*s );

	push	0
	push	0
	call	esi
	mov	eax, DWORD PTR -28+[esp+56]
	mov	ecx, DWORD PTR -24+[esp+56]
	push	eax
	push	ebp
	push	ecx
	call	edi

; 244  : 
; 245  : 			glColor3f( 0.1f*b, 0.2f*b, 0.3f*b );

	fld	DWORD PTR _b$17228[esp+52]
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	mov	edx, DWORD PTR -16+[esp+56]
	push	ecx
	fstp	DWORD PTR [esp]
	push	edx
	fld	DWORD PTR _b$17228[esp+60]
	fmul	DWORD PTR __real@4@3ffbcccccd0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12

; 246  : 			glTexCoord2f( 0, 1 ); glVertex3f( -1.5f*xs*s, -7+i, -1*ys*s );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	fld	DWORD PTR _i$[esp+56]
	fsub	DWORD PTR __real@4@4001e000000000000000
	mov	eax, DWORD PTR -24+[esp+56]
	push	ebx
	fstp	DWORD PTR 8+[esp+56]
	mov	ebp, DWORD PTR 8+[esp+56]
	push	ebp
	push	eax
	call	edi

; 247  : 			glTexCoord2f( 1, 1 ); glVertex3f(  1.5f*xs*s, -7+i, -1*ys*s );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	push	ebx
	mov	ebx, DWORD PTR -20+[esp+60]
	push	ebp
	push	ebx
	call	edi

; 248  : 			glTexCoord2f( 1, 0 ); glVertex3f(  1.5f*xs*s, -7+i,  1*ys*s );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	mov	ecx, DWORD PTR -28+[esp+56]
	push	ecx
	push	ebp
	push	ebx
	call	edi

; 249  : 			glTexCoord2f( 0, 0 ); glVertex3f( -1.5f*xs*s, -7+i,  1*ys*s );

	push	0
	push	0
	call	esi
	mov	edx, DWORD PTR -28+[esp+56]
	mov	eax, DWORD PTR -24+[esp+56]
	push	edx
	push	ebp
	push	eax
	call	edi
	fld	DWORD PTR _i$[esp+56]
	fadd	DWORD PTR __real@4@3ffc99999a0000000000
	fst	DWORD PTR _i$[esp+56]
	fcomp	DWORD PTR __real@4@4000c000000000000000
	fnstsw	ax
	test	ah, 1
	jne	$L17331

; 250  : 		};
; 251  : 
; 252  : 		glColor3f( 0.4f, 0.2f, 0.1f );

	push	1036831949				; 3dcccccdH
	push	1045220557				; 3e4ccccdH
	push	1053609165				; 3ecccccdH
	call	DWORD PTR __imp__glColor3f@12

; 253  : 		glTexCoord2f( 0, 1 ); glVertex3f( -1.5f*xs*2, 0, -1*ys*2 );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	fld	DWORD PTR _ys$[esp+56]
	fmul	DWORD PTR __real@4@c0008000000000000000
	fstp	DWORD PTR 8+[esp+52]
	fld	DWORD PTR _xs$[esp+56]
	mov	ebx, DWORD PTR 8+[esp+52]
	fmul	DWORD PTR __real@4@c000c000000000000000
	push	ebx
	push	0
	fstp	DWORD PTR -8+[esp+64]
	mov	ebp, DWORD PTR -8+[esp+64]
	push	ebp
	call	edi

; 254  : 		glTexCoord2f( 1, 1 ); glVertex3f(  1.5f*xs*2, 0, -1*ys*2 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	fld	DWORD PTR _xs$[esp+56]
	fmul	DWORD PTR __real@4@4000c000000000000000
	push	ebx
	push	0
	fstp	DWORD PTR 8+[esp+60]
	mov	ebx, DWORD PTR 8+[esp+60]
	push	ebx
	call	edi

; 255  : 		glTexCoord2f( 1, 0 ); glVertex3f(  1.5f*xs*2, 0,  1*ys*2 );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	fld	DWORD PTR _ys$[esp+56]
	fadd	ST(0), ST(0)
	fstp	DWORD PTR 8+[esp+52]
	mov	ecx, DWORD PTR 8+[esp+52]
	push	ecx
	push	0
	push	ebx
	call	edi

; 256  : 		glTexCoord2f( 0, 0 ); glVertex3f( -1.5f*xs*2, 0,  1*ys*2 );

	push	0
	push	0
	call	esi
	mov	edx, DWORD PTR 8+[esp+52]
	push	edx
	push	0
	push	ebp
	call	edi

; 257  : 
; 258  : 	glEnd();

	call	DWORD PTR __imp__glEnd@0
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 259  : 
; 260  : };

	add	esp, 40					; 00000028H
	ret	0
?pw_draw_world@@YAXMM@Z ENDP				; pw_draw_world
_TEXT	ENDS
PUBLIC	?p_wirelandscape_run@@YAXPAUEVENT@@@Z		; p_wirelandscape_run
PUBLIC	__real@4@3ffdaaaaaaaaaaaaa800
PUBLIC	__real@4@3ffd8000000000000000
PUBLIC	__real@8@3ffe8000000000000000
PUBLIC	__real@8@3fff8000000000000000
PUBLIC	__real@8@4001e000000000000000
PUBLIC	__real@8@3ffd9999999999999800
PUBLIC	__real@8@4000c000000000000000
PUBLIC	__real@8@4001c000000000000000
EXTRN	_gluPerspective@32:NEAR
EXTRN	_gluLookAt@72:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glTranslatef@12:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
;	COMDAT __real@4@3ffdaaaaaaaaaaaaa800
; File E:\prj64k\glAss (eventad)\parts\p_wirelandscape.cpp
CONST	SEGMENT
__real@4@3ffdaaaaaaaaaaaaa800 DD 03eaaaaabr	; 0.333333
CONST	ENDS
;	COMDAT __real@4@3ffd8000000000000000
CONST	SEGMENT
__real@4@3ffd8000000000000000 DD 03e800000r	; 0.25
CONST	ENDS
;	COMDAT __real@8@3ffe8000000000000000
CONST	SEGMENT
__real@8@3ffe8000000000000000 DQ 03fe0000000000000r ; 0.5
CONST	ENDS
;	COMDAT __real@8@3fff8000000000000000
CONST	SEGMENT
__real@8@3fff8000000000000000 DQ 03ff0000000000000r ; 1
CONST	ENDS
;	COMDAT __real@8@4001e000000000000000
CONST	SEGMENT
__real@8@4001e000000000000000 DQ 0401c000000000000r ; 7
CONST	ENDS
;	COMDAT __real@8@3ffd9999999999999800
CONST	SEGMENT
__real@8@3ffd9999999999999800 DQ 03fd3333333333333r ; 0.3
CONST	ENDS
;	COMDAT __real@8@4000c000000000000000
CONST	SEGMENT
__real@8@4000c000000000000000 DQ 04008000000000000r ; 3
CONST	ENDS
;	COMDAT __real@8@4001c000000000000000
CONST	SEGMENT
__real@8@4001c000000000000000 DQ 04018000000000000r ; 6
CONST	ENDS
;	COMDAT ?p_wirelandscape_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -8
_b$ = -4
?p_wirelandscape_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_wirelandscape_run, COMDAT

; 262  : void p_wirelandscape_run( EVENT *e ) {

	push	ebp
	mov	ebp, esp
	and	esp, -8					; fffffff8H
	sub	esp, 12					; 0000000cH
	push	ebx
	push	esi
	push	edi

; 263  : 
; 264  : 	float t, b;
; 265  : 
; 266  : 	glMatrixMode( GL_PROJECTION );

	mov	edi, DWORD PTR __imp__glMatrixMode@4
	push	5889					; 00001701H
	call	edi

; 267  : 	glLoadIdentity();

	mov	esi, DWORD PTR __imp__glLoadIdentity@0
	call	esi

; 268  : 	glTranslatef( 0, 0, -1 );

	push	-1082130432				; bf800000H
	push	0
	push	0
	call	DWORD PTR __imp__glTranslatef@12

; 269  : 
; 270  : 	glMatrixMode( GL_MODELVIEW );

	push	5888					; 00001700H
	call	edi

; 271  : 	glLoadIdentity();

	call	esi

; 272  : 
; 273  : 	//glCullFace( GL_FRONT );
; 274  : 	glDisable( GL_CULL_FACE );

	mov	ebx, DWORD PTR __imp__glDisable@4
	push	2884					; 00000b44H
	call	ebx

; 275  : 
; 276  : 	//glClearDepth( 20 );
; 277  : 	glDisable( GL_DEPTH_TEST );

	push	2929					; 00000b71H
	call	ebx

; 278  : 	//glDepthFunc( GL_LESS );
; 279  : 
; 280  : 		t = e->localTime;

	mov	eax, DWORD PTR _e$[ebp]
	mov	ecx, DWORD PTR [eax+4]

; 281  : 		b = e->localBeat;

	mov	edx, DWORD PTR [eax+12]

; 282  : 		
; 283  : 		glMatrixMode( GL_PROJECTION );

	push	5889					; 00001701H
	mov	DWORD PTR _t$[esp+28], ecx
	mov	DWORD PTR _b$[esp+28], edx
	call	edi

; 284  : 	glLoadIdentity();

	call	esi

; 285  : 		
; 286  : 		glMatrixMode( GL_MODELVIEW );

	push	5888					; 00001700H
	call	edi

; 287  : 	glLoadIdentity();

	call	esi

; 288  : 		gluPerspective( 120, 4/3, 0, 1000 );

	push	1083129856				; 408f4000H
	push	0
	push	0
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1079902208				; 405e0000H
	push	0
	call	_gluPerspective@32

; 289  : 
; 290  : 		float r = 1;
; 291  : 		//if( fmod(b,2.0f)>1.25f ) r = 0.9f;//+(0.2f*((fmod(b,2.0f)-1.25f)*1.2f));//- 0.3f/(1+fmod(b,2.0f));
; 292  : 
; 293  : 		gluLookAt( r*6*cos(t/5), 3.0 + r*0.3*cos(t/3), r*7*sin(t/3), 0, 1.0f+0.5f*cos(t/3), 0, cos(t/4), 1, sin(t/5) );

	fld	DWORD PTR _t$[esp+24]
	fmul	DWORD PTR __real@4@3ffcccccccccccccd000
	sub	esp, 8
	fld	DWORD PTR _t$[esp+32]
	fmul	DWORD PTR __real@4@3ffdaaaaaaaaaaaaa800
	fld	ST(0)
	fcos
	fld	ST(2)
	fsin
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[esp+32]
	fmul	DWORD PTR __real@4@3ffd8000000000000000
	push	1072693248				; 3ff00000H
	push	0
	sub	esp, 8
	fcos
	fstp	QWORD PTR [esp]
	push	0
	push	0
	fld	ST(0)
	sub	esp, 8
	fmul	QWORD PTR __real@8@3ffe8000000000000000
	fadd	QWORD PTR __real@8@3fff8000000000000000
	fstp	QWORD PTR [esp]
	push	0
	fxch	ST(1)
	push	0
	fsin
	sub	esp, 8
	sub	esp, 8
	sub	esp, 8
	fmul	QWORD PTR __real@8@4001e000000000000000
	fstp	QWORD PTR [esp+16]
	fmul	QWORD PTR __real@8@3ffd9999999999999800
	fadd	QWORD PTR __real@8@4000c000000000000000
	fstp	QWORD PTR [esp+8]
	fcos
	fmul	QWORD PTR __real@8@4001c000000000000000
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72

; 294  : 
; 295  : 		glEnable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4

; 296  : 		glBlendFunc( GL_ONE, GL_ONE );

	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8

; 297  : 		
; 298  : 		//glEnable( GL_FOG );
; 299  : 		pw_draw_world(t,b);

	mov	eax, DWORD PTR _b$[esp+24]
	mov	ecx, DWORD PTR _t$[esp+24]
	push	eax
	push	ecx
	call	?pw_draw_world@@YAXMM@Z			; pw_draw_world
	add	esp, 8

; 300  : 
; 301  : 	glLoadIdentity();

	call	esi

; 302  : 		// rita introflashnnn
; 303  : /*
; 304  : 	if( b<1 ) {
; 305  : 
; 306  : 		float f = 1-(b*b/4);
; 307  : 		if( b>=40 ) f = (b-45)/2.0f;
; 308  : 
; 309  : 		if( f<0 ) f=0;
; 310  : 		if( f>1 ) f=1;
; 311  : 
; 312  : 		glDisable( GL_TEXTURE_2D );
; 313  : 		//glBlendFunc( GL_ONE, GL_ONE );
; 314  : 		//glEnable( GL_BLEND );
; 315  : 		glBegin( GL_QUADS );
; 316  : 		glColor3f( f, f, f );
; 317  : 		glVertex3f( -1, -1, 0 );
; 318  : 		glVertex3f(  1, -1, 0 );
; 319  : 		glVertex3f(  1,  1, 0 );
; 320  : 		glVertex3f( -1,  1, 0 );
; 321  : 		glEnd();
; 322  : 	};
; 323  : */
; 324  : };

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_wirelandscape_run@@YAXPAUEVENT@@@Z ENDP		; p_wirelandscape_run
_TEXT	ENDS
END
