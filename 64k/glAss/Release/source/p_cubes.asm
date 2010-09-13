	TITLE	E:\prj64k\glAss (eventad)\parts\p_cubes.cpp
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
;	COMDAT ?p_cubes_init@@YAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_cubes_render_world@@YAXM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_cubes_render_flow@@YAXMMMMMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_cubes_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?old_matrix@@3PAMA				; old_matrix
_BSS	SEGMENT
?old_matrix@@3PAMA DD 010H DUP (?)			; old_matrix
_BSS	ENDS
PUBLIC	?p_cubes_init@@YAXXZ				; p_cubes_init
EXTRN	__imp__glEnd@0:NEAR
EXTRN	__imp__glEndList@0:NEAR
EXTRN	__imp__glNewList@8:NEAR
EXTRN	__imp__glNormal3f@12:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	__fltused:NEAR
;	COMDAT ?p_cubes_init@@YAXXZ
_TEXT	SEGMENT
?p_cubes_init@@YAXXZ PROC NEAR				; p_cubes_init, COMDAT

; 9    : void p_cubes_init() {

	push	ebx
	push	esi
	push	edi

; 10   : 
; 11   : //	glaUploadGif( CUBES_IMG, (unsigned char *)&gif_rost, 1 );
; 12   : 
; 13   : 	glNewList( CUBES_LIST, GL_COMPILE );

	push	4864					; 00001300H
	push	20					; 00000014H
	call	DWORD PTR __imp__glNewList@8

; 14   : 
; 15   : 	float r = 1.0f;
; 16   : 
; 17   : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4

; 18   : 
; 19   : 	//glColor3f( 1, 1, 1 );
; 20   : 	glColor3f( 0.05f, 0.1f, 0.15f );

	push	1041865114				; 3e19999aH
	push	1036831949				; 3dcccccdH
	push	1028443341				; 3d4ccccdH
	call	DWORD PTR __imp__glColor3f@12

; 21   : 	//toppen
; 22   : 	//glColor3f( 1, 0, 0 );
; 23   : 	//glBegin( GL_LINE_LOOP );
; 24   : 	glNormal3f( 0, 0, -1 );

	mov	ebx, DWORD PTR __imp__glNormal3f@12
	push	-1082130432				; bf800000H
	push	0
	push	0
	call	ebx

; 25   : 	glTexCoord2f( 0, 0 );	glVertex3f( -r, -r, -r );

	mov	esi, DWORD PTR __imp__glTexCoord2f@8
	push	0
	push	0
	call	esi
	mov	edi, DWORD PTR __imp__glVertex3f@12
	push	-1082130432				; bf800000H
	push	-1082130432				; bf800000H
	push	-1082130432				; bf800000H
	call	edi

; 26   : 	glTexCoord2f( 1, 0 );	glVertex3f(  r, -r, -r );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	push	-1082130432				; bf800000H
	push	-1082130432				; bf800000H
	push	1065353216				; 3f800000H
	call	edi

; 27   : 	glTexCoord2f( 1, 1 );	glVertex3f(  r,  r, -r );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	push	-1082130432				; bf800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	edi

; 28   : 	glTexCoord2f( 0, 1 );	glVertex3f( -r,  r, -r );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	push	-1082130432				; bf800000H
	push	1065353216				; 3f800000H
	push	-1082130432				; bf800000H
	call	edi

; 29   : 	//glEnd();
; 30   : 	//glBegin( GL_LINE_LOOP );
; 31   : 	glNormal3f( 0, 0, 1 );

	push	1065353216				; 3f800000H
	push	0
	push	0
	call	ebx

; 32   : 	glTexCoord2f( 0, 1 );	glVertex3f(  r, -r,  r );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	push	1065353216				; 3f800000H
	push	-1082130432				; bf800000H
	push	1065353216				; 3f800000H
	call	edi

; 33   : 	glTexCoord2f( 1, 1 );	glVertex3f( -r, -r,  r );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	push	1065353216				; 3f800000H
	push	-1082130432				; bf800000H
	push	-1082130432				; bf800000H
	call	edi

; 34   : 	glTexCoord2f( 1, 0 );	glVertex3f( -r,  r,  r );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	-1082130432				; bf800000H
	call	edi

; 35   : 	glTexCoord2f( 0, 0 );	glVertex3f(  r,  r,  r );

	push	0
	push	0
	call	esi
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	edi

; 36   : 	//glEnd();
; 37   : 
; 38   : 	//glColor3f( 0, 1, 0 );
; 39   : 	//glBegin( GL_LINE_LOOP );
; 40   : 	glNormal3f( 0, -1, 0 );

	push	0
	push	-1082130432				; bf800000H
	push	0
	call	ebx

; 41   : 	glTexCoord2f( 1, 1 );	glVertex3f( -r, -r, -r );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	push	-1082130432				; bf800000H
	push	-1082130432				; bf800000H
	push	-1082130432				; bf800000H
	call	edi

; 42   : 	glTexCoord2f( 0, 1 );	glVertex3f(  r, -r, -r );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	push	-1082130432				; bf800000H
	push	-1082130432				; bf800000H
	push	1065353216				; 3f800000H
	call	edi

; 43   : 	glTexCoord2f( 0, 0 );	glVertex3f(  r, -r,  r );

	push	0
	push	0
	call	esi
	push	1065353216				; 3f800000H
	push	-1082130432				; bf800000H
	push	1065353216				; 3f800000H
	call	edi

; 44   : 	glTexCoord2f( 1, 0 );	glVertex3f( -r, -r,  r );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	push	1065353216				; 3f800000H
	push	-1082130432				; bf800000H
	push	-1082130432				; bf800000H
	call	edi

; 45   : 	//glEnd();
; 46   : 	//glBegin( GL_LINE_LOOP );
; 47   : 	glNormal3f( 0, 1, 0 );

	push	0
	push	1065353216				; 3f800000H
	push	0
	call	ebx

; 48   : 	glTexCoord2f( 0, 0 );	glVertex3f(  r,  r, -r );

	push	0
	push	0
	call	esi
	push	-1082130432				; bf800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	edi

; 49   : 	glTexCoord2f( 1, 0 );	glVertex3f( -r,  r, -r );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	push	-1082130432				; bf800000H
	push	1065353216				; 3f800000H
	push	-1082130432				; bf800000H
	call	edi

; 50   : 	glTexCoord2f( 1, 1 );	glVertex3f( -r,  r,  r );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	-1082130432				; bf800000H
	call	edi

; 51   : 	glTexCoord2f( 0, 1 );	glVertex3f(  r,  r,  r );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	edi

; 52   : 	//glEnd();
; 53   : 
; 54   : 	//glColor3f( 0, 0, 1 );
; 55   : 	//glBegin( GL_LINE_LOOP );
; 56   : 	glNormal3f( -1, 0, 0 );

	push	0
	push	0
	push	-1082130432				; bf800000H
	call	ebx

; 57   : 	glTexCoord2f( 1, 1 );	glVertex3f( -r, -r, -r );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	push	-1082130432				; bf800000H
	push	-1082130432				; bf800000H
	push	-1082130432				; bf800000H
	call	edi

; 58   : 	glTexCoord2f( 0, 1 );	glVertex3f( -r,  r, -r );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	push	-1082130432				; bf800000H
	push	1065353216				; 3f800000H
	push	-1082130432				; bf800000H
	call	edi

; 59   : 	glTexCoord2f( 0, 0 );	glVertex3f( -r,  r,  r );

	push	0
	push	0
	call	esi
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	-1082130432				; bf800000H
	call	edi

; 60   : 	glTexCoord2f( 1, 0 );	glVertex3f( -r, -r,  r );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	push	1065353216				; 3f800000H
	push	-1082130432				; bf800000H
	push	-1082130432				; bf800000H
	call	edi

; 61   : 	//glEnd();
; 62   : 	//glBegin( GL_LINE_LOOP );
; 63   : 	glNormal3f( 1, 0, 0 );

	push	0
	push	0
	push	1065353216				; 3f800000H
	call	ebx

; 64   : 	glTexCoord2f( 0, 1 );	glVertex3f(  r,  r, -r );

	push	1065353216				; 3f800000H
	push	0
	call	esi
	push	-1082130432				; bf800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	edi

; 65   : 	glTexCoord2f( 1, 1 );	glVertex3f(  r, -r, -r );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi
	push	-1082130432				; bf800000H
	push	-1082130432				; bf800000H
	push	1065353216				; 3f800000H
	call	edi

; 66   : 	glTexCoord2f( 1, 0 );	glVertex3f(  r, -r,  r );

	push	0
	push	1065353216				; 3f800000H
	call	esi
	push	1065353216				; 3f800000H
	push	-1082130432				; bf800000H
	push	1065353216				; 3f800000H
	call	edi

; 67   : 	glTexCoord2f( 0, 0 );	glVertex3f(  r,  r,  r );

	push	0
	push	0
	call	esi
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	edi

; 68   : 	//glEnd();
; 69   : 
; 70   : 	glEnd();

	call	DWORD PTR __imp__glEnd@0

; 71   : 	
; 72   : 	glEndList();

	call	DWORD PTR __imp__glEndList@0
	pop	edi
	pop	esi
	pop	ebx

; 73   : };

	ret	0
?p_cubes_init@@YAXXZ ENDP				; p_cubes_init
_TEXT	ENDS
PUBLIC	?p_cubes_render_world@@YAXM@Z			; p_cubes_render_world
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@40018000000000000000
EXTRN	__imp__glPopMatrix@0:NEAR
EXTRN	__imp__glPushMatrix@0:NEAR
EXTRN	__imp__glScalef@12:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	__imp__glTranslatef@12:NEAR
EXTRN	__imp__glCallList@4:NEAR
;	COMDAT __real@4@3fff8000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_cubes.cpp
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT ?p_cubes_render_world@@YAXM@Z
_TEXT	SEGMENT
_k$ = -8
_j$17189 = -12
_i$17193 = -16
?p_cubes_render_world@@YAXM@Z PROC NEAR			; p_cubes_render_world, COMDAT

; 108  : void p_cubes_render_world( float t ) {

	sub	esp, 16					; 00000010H
	push	ebx
	push	ebp
	push	esi
	push	edi

; 109  : 
; 110  : 		glPushMatrix();

	call	DWORD PTR __imp__glPushMatrix@0

; 111  : 		glaSetTexture( GIF_ROST );

	push	109					; 0000006dH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture

; 112  : //		glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );
; 113  : 		
; 114  : 		for( float k=-4; k<=4; k++ ) {

	mov	ebp, DWORD PTR __imp__glTranslatef@12
	mov	ebx, DWORD PTR __imp__glPopMatrix@0
	add	esp, 4
	mov	DWORD PTR _k$[esp+32], -1065353216	; c0800000H
$L17186:

; 115  : 			for( float j=-4; j<=4; j++ ) {
; 116  : 				for( float i=-4; i<=4; i++ ) {
; 117  : 					glPushMatrix();
; 118  : 
; 119  : 					//float b = 1.0f / ((float)sqrt( (k*k)+(j*j)+(i*i) )) / 10.0f;
; 120  : 					//glColor3f( b,b,b );
; 121  : 					glTranslatef( i*2, j*2, k*2 );

	fld	DWORD PTR _k$[esp+32]
	mov	DWORD PTR _j$17189[esp+32], -1065353216	; c0800000H
	fadd	ST(0), ST(0)
	fstp	DWORD PTR -4+[esp+32]
	mov	edi, DWORD PTR -4+[esp+32]
$L17190:
	fld	DWORD PTR _j$17189[esp+32]
	mov	DWORD PTR _i$17193[esp+32], -1065353216	; c0800000H
	fadd	ST(0), ST(0)
	fstp	DWORD PTR -4+[esp+32]
	mov	esi, DWORD PTR -4+[esp+32]
$L17194:
	call	DWORD PTR __imp__glPushMatrix@0
	fld	DWORD PTR _i$17193[esp+32]
	push	edi
	fadd	ST(0), ST(0)
	push	esi
	push	ecx
	fstp	DWORD PTR [esp]
	call	ebp

; 122  : 					glScalef( 0.25f, 0.25f, 0.25f );

	push	1048576000				; 3e800000H
	push	1048576000				; 3e800000H
	push	1048576000				; 3e800000H
	call	DWORD PTR __imp__glScalef@12

; 123  : 					//glRotatef( 130, (float)cos(t*4+j*3), (float)sin(t*5-k*4), (float)cos(t*3-i*2) );
; 124  : 					//glScalef( (float)cos(t*5+j*3), (float)sin(t*4-k*4), (float)cos(t*3-i*5) );
; 125  : 					//glScalef( 0.5f, 0.5f, 0.5f );
; 126  : 					glCallList( CUBES_LIST );

	push	20					; 00000014H
	call	DWORD PTR __imp__glCallList@4

; 127  : 					
; 128  : 					glPopMatrix();

	call	ebx
	fld	DWORD PTR _i$17193[esp+32]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fst	DWORD PTR _i$17193[esp+32]
	fcomp	DWORD PTR __real@4@40018000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17194
	fld	DWORD PTR _j$17189[esp+32]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fst	DWORD PTR _j$17189[esp+32]
	fcomp	DWORD PTR __real@4@40018000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17190
	fld	DWORD PTR _k$[esp+32]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fst	DWORD PTR _k$[esp+32]
	fcomp	DWORD PTR __real@4@40018000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	$L17186

; 129  : 				};
; 130  : 			};
; 131  : 		};
; 132  : 		glPopMatrix();

	call	ebx
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 133  : 
; 134  : };

	add	esp, 16					; 00000010H
	ret	0
?p_cubes_render_world@@YAXM@Z ENDP			; p_cubes_render_world
_TEXT	ENDS
PUBLIC	?p_cubes_render_flow@@YAXMMMMMMM@Z		; p_cubes_render_flow
PUBLIC	__real@4@4000a792c5659e271000
PUBLIC	__real@4@3ffe8000000000000000
PUBLIC	__real@4@3ffed3abec985a16e000
PUBLIC	__real@4@3fffaedbf0104c800800
PUBLIC	__real@4@4001e000000000000000
PUBLIC	__real@4@40028000000000000000
PUBLIC	__real@4@40029000000000000000
PUBLIC	__real@4@3ffe80b241eb851eb800
PUBLIC	__real@4@3ffccccccd0000000000
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@3ffc80b241eb851eb800
PUBLIC	__real@4@3ffea0ded26666666800
PUBLIC	__real@4@4000c000000000000000
PUBLIC	__real@4@3ff9a3d70a3d70a3d800
EXTRN	__imp__glRotatef@16:NEAR
;	COMDAT __real@4@4000a792c5659e271000
; File E:\prj64k\glAss (eventad)\parts\p_cubes.cpp
CONST	SEGMENT
__real@4@4000a792c5659e271000 DD 0402792c5r	; 2.61833
CONST	ENDS
;	COMDAT __real@4@3ffe8000000000000000
CONST	SEGMENT
__real@4@3ffe8000000000000000 DD 03f000000r	; 0.5
CONST	ENDS
;	COMDAT __real@4@3ffed3abec985a16e000
CONST	SEGMENT
__real@4@3ffed3abec985a16e000 DD 03f53abedr	; 0.826842
CONST	ENDS
;	COMDAT __real@4@3fffaedbf0104c800800
CONST	SEGMENT
__real@4@3fffaedbf0104c800800 DD 03faedbf0r	; 1.36609
CONST	ENDS
;	COMDAT __real@4@4001e000000000000000
CONST	SEGMENT
__real@4@4001e000000000000000 DD 040e00000r	; 7
CONST	ENDS
;	COMDAT __real@4@40028000000000000000
CONST	SEGMENT
__real@4@40028000000000000000 DD 041000000r	; 8
CONST	ENDS
;	COMDAT __real@4@40029000000000000000
CONST	SEGMENT
__real@4@40029000000000000000 DD 041100000r	; 9
CONST	ENDS
;	COMDAT __real@4@3ffe80b241eb851eb800
CONST	SEGMENT
__real@4@3ffe80b241eb851eb800 DD 03f00b242r	; 0.50272
CONST	ENDS
;	COMDAT __real@4@3ffccccccd0000000000
CONST	SEGMENT
__real@4@3ffccccccd0000000000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@3ffc80b241eb851eb800
CONST	SEGMENT
__real@4@3ffc80b241eb851eb800 DD 03e00b242r	; 0.12568
CONST	ENDS
;	COMDAT __real@4@3ffea0ded26666666800
CONST	SEGMENT
__real@4@3ffea0ded26666666800 DD 03f20ded2r	; 0.6284
CONST	ENDS
;	COMDAT __real@4@4000c000000000000000
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT __real@4@3ff9a3d70a3d70a3d800
CONST	SEGMENT
__real@4@3ff9a3d70a3d70a3d800 DD 03ca3d70ar	; 0.02
CONST	ENDS
;	COMDAT ?p_cubes_render_flow@@YAXMMMMMMM@Z
_TEXT	SEGMENT
_t$ = 8
_x$ = 12
_y$ = 16
_z$ = 20
_r$ = 24
_g$ = 28
_b$ = 32
_rad$ = -204
_j$ = -232
_i$ = -228
_x1$17232 = -220
_y1$17234 = -216
_x2$17236 = -236
_y2$17238 = -212
_u$17241 = -208
_u2$17243 = -224
?p_cubes_render_flow@@YAXMMMMMMM@Z PROC NEAR		; p_cubes_render_flow, COMDAT

; 138  : void p_cubes_render_flow( float t, float x, float y, float z, float r, float g, float b ) {

	sub	esp, 236				; 000000ecH

; 139  : 
; 140  : 		float rad[51];
; 141  : 
; 142  : 		float a0 = 0.5f + 0.5f * (float)sin( t*3.142f/1.2f );

	fld	DWORD PTR _t$[esp+232]
	push	ebx
	fmul	DWORD PTR __real@4@4000a792c5659e271000
	push	ebp
	push	esi

; 143  : 		float a1 = 0.5f + 0.5f * (float)cos( t*3.142f/3.8f );
; 144  : 		float a2 = 0.5f - 0.5f * (float)sin( t*3.142f/2.3f );
; 145  : 		for( int j=0; j<51; j++ ) {

	xor	eax, eax
	fsin
	push	edi
	mov	DWORD PTR _j$[esp+252], eax
	lea	ecx, DWORD PTR _rad$[esp+252]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fld	DWORD PTR _t$[esp+248]
	fmul	DWORD PTR __real@4@3ffed3abec985a16e000
	fcos
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fld	DWORD PTR _t$[esp+248]
	fmul	DWORD PTR __real@4@3fffaedbf0104c800800
	fsin
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fsubr	DWORD PTR __real@4@3ffe8000000000000000

; 146  : 			float c0 = 0.3f + 0.2f*(float)sin((t*8+j)*3.142f/6.25f);
; 147  : 			float c1 = 0.3f + 0.2f*(float)sin((t*9+j)*3.142f/5.0f);
; 148  : 			float c2 = 0.3f + 0.2f*(float)sin((t*7+j)*3.142f/25.0f);

	fld	DWORD PTR _t$[esp+248]
	fmul	DWORD PTR __real@4@4001e000000000000000
	fld	DWORD PTR _t$[esp+248]
	fmul	DWORD PTR __real@4@40028000000000000000
	fstp	DWORD PTR -228+[esp+252]
	fld	DWORD PTR _t$[esp+248]
	fmul	DWORD PTR __real@4@40029000000000000000
	fstp	DWORD PTR -224+[esp+252]
$L17215:

; 213  : 		glPopMatrix();

	fild	DWORD PTR _j$[esp+252]
	inc	eax
	add	ecx, 4
	cmp	eax, 51					; 00000033H
	fstp	DWORD PTR -236+[esp+252]
	fld	DWORD PTR -228+[esp+252]
	fadd	DWORD PTR -236+[esp+252]
	fmul	DWORD PTR __real@4@3ffe80b241eb851eb800
	fsin
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	fadd	DWORD PTR __real@4@3ffd99999a0000000000
	fmul	ST(0), ST(4)
	fld	DWORD PTR -236+[esp+252]
	fadd	ST(0), ST(2)
	fmul	DWORD PTR __real@4@3ffc80b241eb851eb800
	fsin
	fxch	ST(1)
	fxch	ST(1)
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	fadd	DWORD PTR __real@4@3ffd99999a0000000000
	fmul	ST(0), ST(3)
	faddp	ST(1), ST(0)
	fld	DWORD PTR -224+[esp+252]
	fadd	DWORD PTR -236+[esp+252]
	fmul	DWORD PTR __real@4@3ffea0ded26666666800
	fsin
	fst	DWORD PTR -232+[esp+252]
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	mov	DWORD PTR _j$[esp+252], eax
	fadd	DWORD PTR __real@4@3ffd99999a0000000000
	fmul	ST(0), ST(4)
	faddp	ST(1), ST(0)
	fstp	DWORD PTR [ecx-4]
	jl	SHORT $L17215
	fstp	ST(0)
	push	111					; 0000006fH
	fstp	ST(0)
	fstp	ST(0)
	fstp	ST(0)
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4
	call	DWORD PTR __imp__glPushMatrix@0
	mov	eax, DWORD PTR _z$[esp+248]
	mov	ecx, DWORD PTR _y$[esp+248]
	mov	edx, DWORD PTR _x$[esp+248]
	push	eax
	push	ecx
	push	edx
	call	DWORD PTR __imp__glTranslatef@12
	fld	DWORD PTR _t$[esp+248]
	fmul	DWORD PTR __real@4@4000c000000000000000
	push	ecx
	fsin
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[esp+252]
	fcos
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[esp+256]
	fadd	ST(0), ST(0)
	push	ecx
	fsin
	fstp	DWORD PTR [esp]
	push	1120403456				; 42c80000H
	call	DWORD PTR __imp__glRotatef@16
	push	7
	call	DWORD PTR __imp__glBegin@4
	mov	esi, DWORD PTR __imp__glTexCoord2f@8
	mov	edi, DWORD PTR __imp__glVertex3f@12
	xor	eax, eax
	lea	ecx, DWORD PTR _rad$[esp+256]
	mov	DWORD PTR _i$[esp+252], eax
	mov	DWORD PTR -232+[esp+252], ecx
	jmp	SHORT $L17229
$L17364:

; 149  : 			rad[j] = c0*a0 + c1*a1 + c2*a2;
; 150  : 		};	
; 151  : 
; 152  : 		glaSetTexture( GIF_CLOUDS );

	mov	ecx, DWORD PTR -232+[esp+252]
$L17229:

; 153  : //		glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );
; 154  : 
; 155  : 		float ra = 4.0f ;//+ 3.0f*(float)cos( t );
; 156  : 
; 157  : 		glPushMatrix();
; 158  : 		glTranslatef( x,y,z );
; 159  : 		glRotatef( 100, (float)sin(t*2),(float)cos(t),(float)sin(t*3) );
; 160  : 		glBegin( GL_QUADS );
; 161  : 		for( int i=0; i<50; i++ ) {
; 162  : 
; 163  : 			//float x0 = rad[i]*(float)cos((i)*3.142f/25)*0.2f;
; 164  : 			//float y0 = rad[i]*(float)sin((i)*3.142f/25)*0.2f;
; 165  : 			float x1 = rad[i]*(float)cos((i+0)*3.142f/25);

	fild	DWORD PTR _i$[esp+252]

; 166  : 			float y1 = rad[i]*(float)sin((i+0)*3.142f/25);
; 167  : 			float x2 = rad[i+1]*(float)cos((i+1)*3.142f/25);

	lea	edx, DWORD PTR [eax+1]
	mov	DWORD PTR -228+[esp+252], edx

; 168  : 			float y2 = rad[i+1]*(float)sin((i+1)*3.142f/25);
; 169  : 
; 170  : 			if( i%10==1 ) { x1*=ra; y1*=ra; x2*=ra; y2*=ra; };

	cdq
	fld	ST(0)
	fmul	DWORD PTR __real@4@3ffc80b241eb851eb800
	fld	ST(0)
	fcos
	fmul	DWORD PTR [ecx-4]
	fstp	DWORD PTR _x1$17232[esp+252]
	fsin
	fmul	DWORD PTR [ecx-4]
	fstp	DWORD PTR _y1$17234[esp+252]
	fild	DWORD PTR -228+[esp+252]
	fst	DWORD PTR -224+[esp+252]
	fmul	DWORD PTR __real@4@3ffc80b241eb851eb800
	fld	ST(0)
	fcos
	fmul	DWORD PTR [ecx]
	fstp	DWORD PTR _x2$17236[esp+252]
	fsin
	fmul	DWORD PTR [ecx]
	mov	ecx, 10					; 0000000aH
	idiv	ecx
	fstp	DWORD PTR _y2$17238[esp+252]
	cmp	edx, 1
	jne	SHORT $L17240
	fld	DWORD PTR _x1$17232[esp+252]
	fmul	DWORD PTR __real@4@40018000000000000000
	fstp	DWORD PTR _x1$17232[esp+252]
	fld	DWORD PTR _y1$17234[esp+252]
	fmul	DWORD PTR __real@4@40018000000000000000
	fstp	DWORD PTR _y1$17234[esp+252]
	fld	DWORD PTR _x2$17236[esp+252]
	fmul	DWORD PTR __real@4@40018000000000000000
	fstp	DWORD PTR _x2$17236[esp+252]
	fld	DWORD PTR _y2$17238[esp+252]
	fmul	DWORD PTR __real@4@40018000000000000000
	fstp	DWORD PTR _y2$17238[esp+252]
$L17240:

; 171  : 			
; 172  : 			float u = (float)i / 50.0f;

	fmul	DWORD PTR __real@4@3ff9a3d70a3d70a3d800

; 173  : 			float u2 = (float)(i+1) / 50.0f;
; 174  : 
; 175  : 			glColor3f( r, g, b );

	mov	edx, DWORD PTR _b$[esp+248]
	mov	eax, DWORD PTR _g$[esp+248]
	mov	ecx, DWORD PTR _r$[esp+248]
	fstp	DWORD PTR _u$17241[esp+252]
	push	edx
	fld	DWORD PTR -224+[esp+256]
	push	eax
	fmul	DWORD PTR __real@4@3ff9a3d70a3d70a3d800
	push	ecx
	fstp	DWORD PTR _u2$17243[esp+264]
	call	DWORD PTR __imp__glColor3f@12

; 176  : 			glTexCoord2f( u2, 0 );

	mov	ebx, DWORD PTR _u2$17243[esp+252]
	push	0
	push	ebx
	call	esi

; 177  : 			glVertex3f( 0, 0, 0 );

	push	0
	push	0
	push	0
	call	edi

; 178  : 			glTexCoord2f( u, 0 );

	mov	ebp, DWORD PTR _u$17241[esp+252]
	push	0
	push	ebp
	call	esi

; 179  : 			glVertex3f( 0, 0, 0 );

	push	0
	push	0
	push	0
	call	edi

; 180  : 
; 181  : 			glColor3f( 0,0,0 );

	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glColor3f@12

; 182  : 			glTexCoord2f( u, 1 );

	push	1065353216				; 3f800000H
	push	ebp
	call	esi

; 183  : 			glVertex3f( x1, y1, 0 );

	mov	edx, DWORD PTR _y1$17234[esp+252]
	mov	eax, DWORD PTR _x1$17232[esp+252]
	push	0
	push	edx
	push	eax
	call	edi

; 184  : 			glTexCoord2f( u2, 1 );

	push	1065353216				; 3f800000H
	push	ebx
	call	esi

; 185  : 			glVertex3f( x2, y2, 0 );

	mov	ecx, DWORD PTR _y2$17238[esp+252]
	mov	edx, DWORD PTR _x2$17236[esp+252]
	push	0
	push	ecx
	push	edx
	call	edi

; 186  : 
; 187  : 			glColor3f( r, g, b );

	mov	eax, DWORD PTR _b$[esp+248]
	mov	ecx, DWORD PTR _g$[esp+248]
	mov	edx, DWORD PTR _r$[esp+248]
	push	eax
	push	ecx
	push	edx
	call	DWORD PTR __imp__glColor3f@12

; 188  : 			glTexCoord2f( u2, 0 );

	push	0
	push	ebx
	call	esi

; 189  : 			glVertex3f( 0, 0, 0 );

	push	0
	push	0
	push	0
	call	edi

; 190  : 			glTexCoord2f( u, 0 );

	push	0
	push	ebp
	call	esi

; 191  : 			glVertex3f( 0, 0, 0 );

	push	0
	push	0
	push	0
	call	edi

; 192  : 
; 193  : 			glColor3f( 0,0,0 );

	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glColor3f@12

; 194  : 			glTexCoord2f( u, 1 );

	push	1065353216				; 3f800000H
	push	ebp
	call	esi

; 195  : 			glVertex3f( 0, x1, y1 );

	mov	eax, DWORD PTR _y1$17234[esp+252]
	mov	ecx, DWORD PTR _x1$17232[esp+252]
	push	eax
	push	ecx
	push	0
	call	edi

; 196  : 			glTexCoord2f( u2, 1 );

	push	1065353216				; 3f800000H
	push	ebx
	call	esi

; 197  : 			glVertex3f( 0, x2, y2 );

	mov	edx, DWORD PTR _y2$17238[esp+252]
	mov	eax, DWORD PTR _x2$17236[esp+252]
	push	edx
	push	eax
	push	0
	call	edi

; 198  : 
; 199  : 			glColor3f( r, g, b );

	mov	ecx, DWORD PTR _b$[esp+248]
	mov	edx, DWORD PTR _g$[esp+248]
	mov	eax, DWORD PTR _r$[esp+248]
	push	ecx
	push	edx
	push	eax
	call	DWORD PTR __imp__glColor3f@12

; 200  : 			glTexCoord2f( u2, 0 );

	push	0
	push	ebx
	call	esi

; 201  : 			glVertex3f( 0, 0, 0 );

	push	0
	push	0
	push	0
	call	edi

; 202  : 			glTexCoord2f( u, 0 );

	push	0
	push	ebp
	call	esi

; 203  : 			glVertex3f( 0, 0, 0 );

	push	0
	push	0
	push	0
	call	edi

; 204  : 
; 205  : 			glColor3f( 0,0,0 );

	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glColor3f@12

; 206  : 			glTexCoord2f( u, 1 );

	push	1065353216				; 3f800000H
	push	ebp
	call	esi

; 207  : 			glVertex3f( x1, 0, y1 );

	mov	ecx, DWORD PTR _y1$17234[esp+252]
	mov	edx, DWORD PTR _x1$17232[esp+252]
	push	ecx
	push	0
	push	edx
	call	edi

; 208  : 			glTexCoord2f( u2, 1 );

	push	1065353216				; 3f800000H
	push	ebx
	call	esi

; 209  : 			glVertex3f( x2, 0, y2 );

	mov	eax, DWORD PTR _y2$17238[esp+252]
	mov	ecx, DWORD PTR _x2$17236[esp+252]
	push	eax
	push	0
	push	ecx
	call	edi
	mov	edx, DWORD PTR -232+[esp+252]
	mov	eax, DWORD PTR -228+[esp+252]
	add	edx, 4
	cmp	eax, 50					; 00000032H
	mov	DWORD PTR _i$[esp+252], eax
	mov	DWORD PTR -232+[esp+252], edx
	jl	$L17364

; 210  : 
; 211  : 		};
; 212  : 		glEnd();

	call	DWORD PTR __imp__glEnd@0

; 213  : 		glPopMatrix();

	call	DWORD PTR __imp__glPopMatrix@0
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 214  : };

	add	esp, 236				; 000000ecH
	ret	0
?p_cubes_render_flow@@YAXMMMMMMM@Z ENDP			; p_cubes_render_flow
_TEXT	ENDS
PUBLIC	?p_cubes_run@@YAXPAUEVENT@@@Z			; p_cubes_run
PUBLIC	__real@8@3fff8000000000000000
PUBLIC	__real@4@3ffd8000000000000000
PUBLIC	__real@4@3ffdaaaaaaaaaaaaa800
PUBLIC	__real@4@3ffcccccccccccccd000
PUBLIC	__real@4@3ffc9249249249249000
PUBLIC	__real@4@3ffcaaaaaaaaaaaaa800
PUBLIC	__real@8@4001e000000000000000
PUBLIC	__real@8@4000c000000000000000
PUBLIC	__real@8@4001a000000000000000
PUBLIC	__real@4@4000d554ca0000000000
PUBLIC	__real@4@4002a000000000000000
PUBLIC	__real@4@4003a800000000000000
PUBLIC	__real@4@3ffc8000000000000000
PUBLIC	__real@8@3fffc916872b020c4800
PUBLIC	__real@8@3ffec916872b020c4800
PUBLIC	__real@8@3fff860f04c756b2d800
EXTRN	_gluPerspective@32:NEAR
EXTRN	_gluLookAt@72:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__CIfmod:NEAR
EXTRN	__ftol:NEAR
;	COMDAT __real@8@3fff8000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_cubes.cpp
CONST	SEGMENT
__real@8@3fff8000000000000000 DQ 03ff0000000000000r ; 1
CONST	ENDS
;	COMDAT __real@4@3ffd8000000000000000
CONST	SEGMENT
__real@4@3ffd8000000000000000 DD 03e800000r	; 0.25
CONST	ENDS
;	COMDAT __real@4@3ffdaaaaaaaaaaaaa800
CONST	SEGMENT
__real@4@3ffdaaaaaaaaaaaaa800 DD 03eaaaaabr	; 0.333333
CONST	ENDS
;	COMDAT __real@4@3ffcccccccccccccd000
CONST	SEGMENT
__real@4@3ffcccccccccccccd000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@3ffc9249249249249000
CONST	SEGMENT
__real@4@3ffc9249249249249000 DD 03e124925r	; 0.142857
CONST	ENDS
;	COMDAT __real@4@3ffcaaaaaaaaaaaaa800
CONST	SEGMENT
__real@4@3ffcaaaaaaaaaaaaa800 DD 03e2aaaabr	; 0.166667
CONST	ENDS
;	COMDAT __real@8@4001e000000000000000
CONST	SEGMENT
__real@8@4001e000000000000000 DQ 0401c000000000000r ; 7
CONST	ENDS
;	COMDAT __real@8@4000c000000000000000
CONST	SEGMENT
__real@8@4000c000000000000000 DQ 04008000000000000r ; 3
CONST	ENDS
;	COMDAT __real@8@4001a000000000000000
CONST	SEGMENT
__real@8@4001a000000000000000 DQ 04014000000000000r ; 5
CONST	ENDS
;	COMDAT __real@4@4000d554ca0000000000
CONST	SEGMENT
__real@4@4000d554ca0000000000 DD 0405554car	; 3.3333
CONST	ENDS
;	COMDAT __real@4@4002a000000000000000
CONST	SEGMENT
__real@4@4002a000000000000000 DD 041200000r	; 10
CONST	ENDS
;	COMDAT __real@4@4003a800000000000000
CONST	SEGMENT
__real@4@4003a800000000000000 DD 041a80000r	; 21
CONST	ENDS
;	COMDAT __real@4@3ffc8000000000000000
CONST	SEGMENT
__real@4@3ffc8000000000000000 DD 03e000000r	; 0.125
CONST	ENDS
;	COMDAT __real@8@3fffc916872b020c4800
CONST	SEGMENT
__real@8@3fffc916872b020c4800 DQ 03ff922d0e5604189r ; 1.571
CONST	ENDS
;	COMDAT __real@8@3ffec916872b020c4800
CONST	SEGMENT
__real@8@3ffec916872b020c4800 DQ 03fe922d0e5604189r ; 0.7855
CONST	ENDS
;	COMDAT __real@8@3fff860f04c756b2d800
CONST	SEGMENT
__real@8@3fff860f04c756b2d800 DQ 03ff0c1e098ead65br ; 1.04733
CONST	ENDS
;	COMDAT ?p_cubes_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -28
_i$ = -24
__t$ = -20
_x$17274 = -8
_y$17276 = -12
_z$17278 = -16
?p_cubes_run@@YAXPAUEVENT@@@Z PROC NEAR			; p_cubes_run, COMDAT

; 216  : void p_cubes_run( EVENT *e ) {

	push	ebp
	mov	ebp, esp
	and	esp, -8					; fffffff8H
	sub	esp, 28					; 0000001cH
	push	ebx
	push	esi
	push	edi

; 217  : 
; 218  : 	float t;
; 219  : 	int i;
; 220  : 
; 221  : 	glEnable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4

; 222  : 	glBlendFunc( GL_ONE, GL_ONE );

	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8

; 223  : 	glDisable( GL_DEPTH_TEST );

	push	2929					; 00000b71H
	call	DWORD PTR __imp__glDisable@4

; 224  : 
; 225  : 	float _t = e->localTime/2.0f;

	mov	eax, DWORD PTR _e$[ebp]
	fld	DWORD PTR [eax+4]
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fst	DWORD PTR __t$[esp+40]

; 226  : 
; 227  : 	float _if = (float)fmod( _t, 1.0f );

	fld	QWORD PTR __real@8@3fff8000000000000000
	call	__CIfmod

; 228  : 	if( _if<0.25f ) {

	fcom	DWORD PTR __real@4@3ffd8000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L17253

; 229  : 		t = _if * 2.0f;

	fadd	ST(0), ST(0)

; 230  : 	} else {

	jmp	SHORT $L17254
$L17253:

; 231  : 		t = 0.5f + (_if-0.25f)*0.2f;

	fsub	DWORD PTR __real@4@3ffd8000000000000000
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	fadd	DWORD PTR __real@4@3ffe8000000000000000
$L17254:

; 232  : 	};
; 233  : 	t += (int)(_t-0.5f);

	fld	DWORD PTR __t$[esp+40]
	fsub	DWORD PTR __real@4@3ffe8000000000000000
	call	__ftol

; 234  : 
; 235  : 	glMatrixMode( GL_TEXTURE );

	mov	esi, DWORD PTR __imp__glMatrixMode@4
	mov	DWORD PTR -20+[esp+40], eax
	fild	DWORD PTR -20+[esp+40]
	push	5890					; 00001702H
	fadd	ST(0), ST(1)
	fstp	DWORD PTR _t$[esp+44]
	fstp	ST(0)
	call	esi

; 236  : 	glLoadIdentity();

	mov	edi, DWORD PTR __imp__glLoadIdentity@0
	call	edi

; 237  : 
; 238  : 	glMatrixMode( GL_PROJECTION );

	push	5889					; 00001701H
	call	esi

; 239  : 	glLoadIdentity();

	call	edi

; 240  : 
; 241  : 	gluPerspective( 110, 4/3, 1, 1000 );

	push	1083129856				; 408f4000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1079738368				; 405b8000H
	push	0
	call	_gluPerspective@32

; 242  : 
; 243  : 	switch( (int)((t/4)-0.5f) ) {

	fld	DWORD PTR _t$[esp+40]
	fmul	DWORD PTR __real@4@3ffd8000000000000000
	fld	ST(0)
	fsub	DWORD PTR __real@4@3ffe8000000000000000
	call	__ftol
	dec	eax
	cmp	eax, 6
	ja	$L17263
	jmp	DWORD PTR $L17406[eax*4]
$L17261:

; 244  : 		case 1:
; 245  : 		case 5:
; 246  : 			gluLookAt( 5*cos(t/5), 3*cos(t/3), 7*sin(t/6), 1*cos(t/3), 1*cos(t/4), 1*sin(t/7), 0, 1, 0 );

	fld	DWORD PTR _t$[esp+40]
	push	0
	fmul	DWORD PTR __real@4@3ffdaaaaaaaaaaaaa800
	push	0
	push	1072693248				; 3ff00000H
	push	0
	fst	DWORD PTR -20+[esp+56]
	push	0
	fcos
	push	0
	sub	esp, 8
	sub	esp, 8
	fstp	QWORD PTR -8+[esp+80]
	fld	DWORD PTR _t$[esp+80]
	fmul	DWORD PTR __real@4@3ffcccccccccccccd000
	mov	ecx, DWORD PTR -8+[esp+84]
	mov	edx, DWORD PTR -8+[esp+80]
	fstp	DWORD PTR -24+[esp+80]
	fld	DWORD PTR _t$[esp+80]
	fmul	DWORD PTR __real@4@3ffc9249249249249000
	fsin
	fstp	QWORD PTR [esp+8]
	fcos
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[esp+80]
	fmul	DWORD PTR __real@4@3ffcaaaaaaaaaaaaa800
	push	ecx
	push	edx
	sub	esp, 8
	sub	esp, 8
	fsin
	fmul	QWORD PTR __real@8@4001e000000000000000
	fstp	QWORD PTR [esp+8]
	fld	QWORD PTR -8+[esp+104]
	fmul	QWORD PTR __real@8@4000c000000000000000
	fstp	QWORD PTR [esp]
	fld	DWORD PTR -24+[esp+104]
	fcos
	fmul	QWORD PTR __real@8@4001a000000000000000

; 247  : 			break;

	jmp	$L17405
$L17262:

; 248  : 		case 3:
; 249  : 		case 7:
; 250  : 			gluLookAt( 7*cos(t/3), 5*cos(t/5), 3*sin(t/4), 1*cos(t/4), 1*cos(t/3), 1*sin(t/5), 0, 1, 0 );

	fld	DWORD PTR _t$[esp+40]
	push	0
	fmul	DWORD PTR __real@4@3ffcccccccccccccd000
	push	0
	push	1072693248				; 3ff00000H
	push	0
	fstp	DWORD PTR -24+[esp+56]
	push	0
	fld	DWORD PTR _t$[esp+60]
	push	0
	fmul	DWORD PTR __real@4@3ffdaaaaaaaaaaaaa800
	sub	esp, 8
	fst	DWORD PTR -20+[esp+72]
	fcos
	fstp	QWORD PTR -8+[esp+72]
	fld	DWORD PTR -24+[esp+72]
	fsin
	mov	eax, DWORD PTR -8+[esp+76]
	mov	ecx, DWORD PTR -8+[esp+72]
	fstp	QWORD PTR [esp]
	push	eax
	push	ecx
	fld	ST(0)
	sub	esp, 8
	fcos
	sub	esp, 8
	sub	esp, 8
	fstp	QWORD PTR [esp+16]
	fsin
	fmul	QWORD PTR __real@8@4000c000000000000000
	fstp	QWORD PTR [esp+8]
	fld	DWORD PTR -24+[esp+104]
	fcos
	fmul	QWORD PTR __real@8@4001a000000000000000
	fstp	QWORD PTR [esp]
	fld	QWORD PTR -8+[esp+104]
	fmul	QWORD PTR __real@8@4001e000000000000000

; 251  : 			break;

	jmp	$L17405
$L17263:

; 252  : 		default:
; 253  : 			gluLookAt( 3*cos(t/4), 7*cos(t/6), 5*sin(t/3), 1*cos(t/5), 1*cos(t/7), 1*sin(t/4), 0, 1, 0 );

	fld	DWORD PTR _t$[esp+40]
	push	0
	fmul	DWORD PTR __real@4@3ffcccccccccccccd000
	push	0
	push	1072693248				; 3ff00000H
	push	0
	fstp	DWORD PTR -24+[esp+56]
	push	0
	fld	DWORD PTR _t$[esp+60]
	push	0
	fmul	DWORD PTR __real@4@3ffdaaaaaaaaaaaaa800
	sub	esp, 8
	sub	esp, 8
	sub	esp, 8
	fstp	DWORD PTR -20+[esp+88]
	sub	esp, 8
	sub	esp, 8
	fld	ST(0)
	fsin
	fstp	QWORD PTR [esp+32]
	fld	DWORD PTR _t$[esp+104]
	fmul	DWORD PTR __real@4@3ffc9249249249249000
	fcos
	fstp	QWORD PTR [esp+24]
	fld	DWORD PTR -24+[esp+104]
	fcos
	fstp	QWORD PTR [esp+16]
	fld	DWORD PTR -20+[esp+104]
	fsin
	fmul	QWORD PTR __real@8@4001a000000000000000
	fstp	QWORD PTR [esp+8]
	fld	DWORD PTR _t$[esp+104]
	fmul	DWORD PTR __real@4@3ffcaaaaaaaaaaaaa800
	fcos
	fmul	QWORD PTR __real@8@4001e000000000000000
	fstp	QWORD PTR [esp]
	fcos
	fmul	QWORD PTR __real@8@4000c000000000000000
$L17405:
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72

; 254  : 			break;
; 255  : 	};
; 256  : 
; 257  : 	if( t<3 ) {

	fld	DWORD PTR _t$[esp+40]
	mov	esi, DWORD PTR __imp__glTranslatef@12
	fcomp	DWORD PTR __real@4@4000c000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L17264

; 258  : 		glTranslatef( 0, 0, 10-t*3.3333f );

	fld	DWORD PTR _t$[esp+40]
	push	ecx
	fmul	DWORD PTR __real@4@4000d554ca0000000000
	fsubr	DWORD PTR __real@4@4002a000000000000000
	fstp	DWORD PTR [esp]
	push	0
	push	0
	call	esi
$L17264:

; 259  : 	};
; 260  : 
; 261  : 	if( t>21 ) {

	fld	DWORD PTR _t$[esp+40]
	fcomp	DWORD PTR __real@4@4003a800000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17265

; 262  : 		glTranslatef( 0, 0, (t-21)*(t-21)*3 );

	fld	DWORD PTR _t$[esp+40]
	push	ecx
	fsub	DWORD PTR __real@4@4003a800000000000000
	fld	ST(0)
	fmul	ST(0), ST(1)
	fmul	DWORD PTR __real@4@4000c000000000000000
	fstp	DWORD PTR [esp]
	push	0
	push	0
	fstp	ST(0)
	call	esi
$L17265:

; 263  : 	};
; 264  : 
; 265  : 	glRotatef( 130, (float)sin(t/8), (float)sin(t/5), (float)cos(t/3) );

	fld	DWORD PTR -20+[esp+40]
	push	ecx
	fcos
	fstp	DWORD PTR [esp]
	fld	DWORD PTR -24+[esp+44]
	fsin
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[esp+48]
	fmul	DWORD PTR __real@4@3ffc8000000000000000
	push	ecx
	fsin
	fstp	DWORD PTR [esp]
	push	1124204544				; 43020000H
	call	DWORD PTR __imp__glRotatef@16

; 266  : 
; 267  : 	p_cubes_render_world( t );

	mov	edx, DWORD PTR _t$[esp+40]
	push	edx
	call	?p_cubes_render_world@@YAXM@Z		; p_cubes_render_world
	add	esp, 4

; 268  : 
; 269  : 	for( i=0; i<10; i++ ) {

	mov	DWORD PTR _i$[esp+40], 0
$L17269:

; 270  : 		float t2 = t-(float)i/3.0f;

	fild	DWORD PTR _i$[esp+40]

; 271  : 		float x = 1 * (float)cos( t2*3.142/2 );
; 272  : 		float y = 1 * (float)sin( t2*3.142/4 );
; 273  : 		float z = 1 * (float)cos( t2*3.142/3 );
; 274  : 		p_cubes_render_flow( t+i, x,y,z, 1,0.3f,0.2f );

	push	1045220557				; 3e4ccccdH
	push	1050253722				; 3e99999aH
	push	1065353216				; 3f800000H
	fld	ST(0)
	fmul	DWORD PTR __real@4@3ffdaaaaaaaaaaaaa800
	fsubr	DWORD PTR _t$[esp+52]
	fld	ST(0)
	fmul	QWORD PTR __real@8@3fffc916872b020c4800
	fcos
	fstp	DWORD PTR _x$17274[esp+52]
	mov	ebx, DWORD PTR _x$17274[esp+52]
	fld	ST(0)
	fmul	QWORD PTR __real@8@3ffec916872b020c4800
	fsin
	fstp	DWORD PTR _y$17276[esp+52]
	mov	edi, DWORD PTR _y$17276[esp+52]
	fmul	QWORD PTR __real@8@3fff860f04c756b2d800
	fcos
	fstp	DWORD PTR _z$17278[esp+52]
	mov	esi, DWORD PTR _z$17278[esp+52]
	fadd	DWORD PTR _t$[esp+52]
	push	esi
	push	edi
	push	ebx
	fstp	DWORD PTR -20+[esp+64]
	mov	eax, DWORD PTR -20+[esp+64]
	push	eax
	call	?p_cubes_render_flow@@YAXMMMMMMM@Z	; p_cubes_render_flow

; 275  : 		p_cubes_render_flow( t+i, y,z,x, 0.3f,1,0.2f );

	mov	ecx, DWORD PTR -20+[esp+68]
	push	1045220557				; 3e4ccccdH
	push	1065353216				; 3f800000H
	push	1050253722				; 3e99999aH
	push	ebx
	push	esi
	push	edi
	push	ecx
	call	?p_cubes_render_flow@@YAXMMMMMMM@Z	; p_cubes_render_flow

; 276  : 		p_cubes_render_flow( t+i, z,x,y, 0.2f,0.3f,1 );

	mov	edx, DWORD PTR -20+[esp+96]
	push	1065353216				; 3f800000H
	push	1050253722				; 3e99999aH
	push	1045220557				; 3e4ccccdH
	push	edi
	push	ebx
	push	esi
	push	edx
	call	?p_cubes_render_flow@@YAXMMMMMMM@Z	; p_cubes_render_flow
	mov	eax, DWORD PTR _i$[esp+124]
	add	esp, 84					; 00000054H
	inc	eax
	cmp	eax, 10					; 0000000aH
	mov	DWORD PTR _i$[esp+40], eax
	jl	$L17269

; 277  : 	};
; 278  : 		
; 279  : };

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
$L17406:
	DD	$L17261
	DD	$L17263
	DD	$L17262
	DD	$L17263
	DD	$L17261
	DD	$L17263
	DD	$L17262
?p_cubes_run@@YAXPAUEVENT@@@Z ENDP			; p_cubes_run
_TEXT	ENDS
END
