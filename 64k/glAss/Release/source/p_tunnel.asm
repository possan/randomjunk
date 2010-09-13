	TITLE	E:\prj64k\glAss (eventad)\parts\p_tunnel.cpp
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
;	COMDAT ?p_tunnel_function@@YA?AUVECTOR@@MM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_tunnel_render@@YAXMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_tunnel_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?p_tunnel_function@@YA?AUVECTOR@@MM@Z		; p_tunnel_function
PUBLIC	__real@4@4000c000000000000000
PUBLIC	__real@4@4004a000000000000000
PUBLIC	__real@4@3ffb80b241eb851eb800
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@4@3ffccccccd0000000000
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@4004f000000000000000
PUBLIC	__real@4@4001a000000000000000
PUBLIC	__real@4@3ffb80adfcccccccd000
EXTRN	__fltused:NEAR
;	COMDAT __real@4@4000c000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_tunnel.cpp
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT __real@4@4004a000000000000000
CONST	SEGMENT
__real@4@4004a000000000000000 DD 042200000r	; 40
CONST	ENDS
;	COMDAT __real@4@3ffb80b241eb851eb800
CONST	SEGMENT
__real@4@3ffb80b241eb851eb800 DD 03d80b242r	; 0.06284
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@4@3ffccccccd0000000000
CONST	SEGMENT
__real@4@3ffccccccd0000000000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@4004f000000000000000
CONST	SEGMENT
__real@4@4004f000000000000000 DD 042700000r	; 60
CONST	ENDS
;	COMDAT __real@4@4001a000000000000000
CONST	SEGMENT
__real@4@4001a000000000000000 DD 040a00000r	; 5
CONST	ENDS
;	COMDAT __real@4@3ffb80adfcccccccd000
CONST	SEGMENT
__real@4@3ffb80adfcccccccd000 DD 03d80adfdr	; 0.0628319
CONST	ENDS
;	COMDAT ?p_tunnel_function@@YA?AUVECTOR@@MM@Z
_TEXT	SEGMENT
_t$ = 12
_u$ = 16
_ve$ = -12
$T17586 = 8
?p_tunnel_function@@YA?AUVECTOR@@MM@Z PROC NEAR		; p_tunnel_function, COMDAT

; 6    : VECTOR p_tunnel_function( float t, float u ) {

	sub	esp, 16					; 00000010H

; 7    : 
; 8    : 	VECTOR ve;
; 9    : 
; 10   : 	float a = 0.2f*(float)cos(t*4);
; 11   : 	float b = 0.2f*(float)sin(t*5);
; 12   : 	float r2 = 1.0f + a * (float)cos( ((u*3)-(t*40))*3.142f/50.0f );

	fld	DWORD PTR _u$[esp+12]

; 13   : 	r2 += b * (float)cos( ((u*2)-(t*60))*3.142f/50.0f );
; 14   : 
; 15   : 	float r = r2*40;//*sin( u*3.142/100 );
; 16   : 	float x = r*(float)cos( u*M_PI/50 );
; 17   : 	float y = r*(float)sin( u*M_PI/50 );
; 18   : 	//float y = r2*40*cos( u*3.142/100 );//(v-50);//40*sin( v*3.142/50 );
; 19   : 
; 20   : 	ve.x = x;
; 21   : 	ve.y = y;
; 22   : 	//ve.z = z;
; 23   : 
; 24   : 	return ve;

	mov	eax, DWORD PTR $T17586[esp+12]
	fmul	DWORD PTR __real@4@4000c000000000000000
	mov	ecx, eax
	fld	DWORD PTR _t$[esp+12]
	fmul	DWORD PTR __real@4@4004a000000000000000
	fsubp	ST(1), ST(0)
	fmul	DWORD PTR __real@4@3ffb80b241eb851eb800
	fcos
	fld	DWORD PTR _t$[esp+12]
	fmul	DWORD PTR __real@4@40018000000000000000
	fcos
	fxch	ST(1)
	fxch	ST(1)
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	fmulp	ST(1), ST(0)
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fld	DWORD PTR _u$[esp+12]
	fadd	ST(0), ST(0)
	fld	DWORD PTR _t$[esp+12]
	fmul	DWORD PTR __real@4@4004f000000000000000
	fsubp	ST(1), ST(0)
	fmul	DWORD PTR __real@4@3ffb80b241eb851eb800
	fcos
	fst	DWORD PTR -16+[esp+16]
	fld	DWORD PTR _t$[esp+12]
	fmul	DWORD PTR __real@4@4001a000000000000000
	fsin
	fst	DWORD PTR 12+[esp+12]
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	fmulp	ST(1), ST(0)
	faddp	ST(1), ST(0)
	fmul	DWORD PTR __real@4@4004a000000000000000
	fld	DWORD PTR _u$[esp+12]
	fmul	DWORD PTR __real@4@3ffb80adfcccccccd000
	fld	ST(0)
	fcos
	fmul	ST(0), ST(2)
	fstp	DWORD PTR _ve$[esp+16]
	mov	edx, DWORD PTR _ve$[esp+16]
	fsin
	mov	DWORD PTR [ecx], edx
	fmul	ST(0), ST(1)
	fstp	DWORD PTR _ve$[esp+20]
	mov	edx, DWORD PTR _ve$[esp+20]
	mov	DWORD PTR [ecx+4], edx
	fstp	ST(0)
	mov	edx, DWORD PTR _ve$[esp+24]
	mov	DWORD PTR [ecx+8], edx

; 25   : };

	add	esp, 16					; 00000010H
	ret	0
?p_tunnel_function@@YA?AUVECTOR@@MM@Z ENDP		; p_tunnel_function
_TEXT	ENDS
PUBLIC	?p_tunnel_render@@YAXMM@Z			; p_tunnel_render
PUBLIC	__real@4@40008000000000000000
PUBLIC	__real@4@3ffcccccccccccccd000
PUBLIC	__real@4@3ffbcccccd0000000000
PUBLIC	__real@4@3ffdcccccd0000000000
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@3ffe99999a0000000000
PUBLIC	__real@4@3ff8a3d70a3d70a3d800
PUBLIC	__real@4@4005c800000000000000
EXTRN	__imp__glEnd@0:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
;	COMDAT __real@4@40008000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_tunnel.cpp
CONST	SEGMENT
__real@4@40008000000000000000 DD 040000000r	; 2
CONST	ENDS
;	COMDAT __real@4@3ffcccccccccccccd000
CONST	SEGMENT
__real@4@3ffcccccccccccccd000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@3ffbcccccd0000000000
CONST	SEGMENT
__real@4@3ffbcccccd0000000000 DD 03dcccccdr	; 0.1
CONST	ENDS
;	COMDAT __real@4@3ffdcccccd0000000000
CONST	SEGMENT
__real@4@3ffdcccccd0000000000 DD 03ecccccdr	; 0.4
CONST	ENDS
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@3ffe99999a0000000000
CONST	SEGMENT
__real@4@3ffe99999a0000000000 DD 03f19999ar	; 0.6
CONST	ENDS
;	COMDAT __real@4@3ff8a3d70a3d70a3d800
CONST	SEGMENT
__real@4@3ff8a3d70a3d70a3d800 DD 03c23d70ar	; 0.01
CONST	ENDS
;	COMDAT __real@4@4005c800000000000000
CONST	SEGMENT
__real@4@4005c800000000000000 DD 042c80000r	; 100
CONST	ENDS
;	COMDAT ?p_tunnel_render@@YAXMM@Z
_TEXT	SEGMENT
_t$ = 8
_br$ = 12
_u$ = -88
_v$ = -100
_u1$17542 = -92
_u2$17544 = -96
_a$17546 = -24
_b$17548 = -48
$T17611 = -36
$T17613 = -12
?p_tunnel_render@@YAXMM@Z PROC NEAR			; p_tunnel_render, COMDAT

; 27   : void p_tunnel_render( float t, float br ) {

	sub	esp, 100				; 00000064H
	push	ebx
	push	ebp
	push	esi
	push	edi

; 28   : 
; 29   : 	float u, v;
; 30   : 
; 31   : 	glaSetTexture( GIF_CLOUDS );

	push	111					; 0000006fH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4

; 32   : 
; 33   : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4

; 34   : 
; 35   : 	v = (float)t/5.0f;

	fld	DWORD PTR _t$[esp+112]
	fmul	DWORD PTR __real@4@3ffcccccccccccccd000

; 36   : 
; 37   : 	for( u=0; u<100; u+=2 ) {
; 38   : 
; 39   : 		float u1 = (float)u / 100.0f;
; 40   : 		float u2 = (float)(u+2) / 100.0f;
; 41   : 
; 42   : 		VECTOR a = p_tunnel_function( t, u );
; 43   : 		VECTOR b = p_tunnel_function( t, u+2 );
; 44   : 
; 45   : 		glColor3f( 0, 0, 0 );
; 46   : 
; 47   : 		glTexCoord2f( u2,v-0.2f );
; 48   : 		glVertex3f( b.x, b.y, -700 );
; 49   : 		
; 50   : 		glTexCoord2f( u1,v-0.2f );
; 51   : 		glVertex3f( a.x, a.y, -700 );
; 52   : 
; 53   : 		glColor3f( 1.0f*br, 0.6f*br, 0.3f*br );
; 54   : 
; 55   : 		glTexCoord2f( u1,v-0.1f );
; 56   : 		glVertex3f( a.x, a.y, -200 );
; 57   : 
; 58   : 		glTexCoord2f( u2,v-0.1f );
; 59   : 		glVertex3f( b.x, b.y, -200 );
; 60   : 
; 61   : 		//glColor3f( 1.0f, 0.6f, 0.3f );
; 62   : 
; 63   : 		glTexCoord2f( u1,v-0.1f );
; 64   : 		glVertex3f( a.x, a.y, -200 );
; 65   : 
; 66   : 		glTexCoord2f( u2,v-0.1f );
; 67   : 		glVertex3f( b.x, b.y, -200 );
; 68   : 
; 69   : 		glColor3f( 0.2f*br, 0.4f*br, 0.6f*br );
; 70   : //		glColor3f( 0.2f, 0.05f, 0.12f );
; 71   : 		
; 72   : 		glTexCoord2f( u2,v );
; 73   : 		glVertex3f( b.x, b.y, 0 );
; 74   : 
; 75   : 		glTexCoord2f( u1,v );
; 76   : 		glVertex3f( a.x, a.y, 0 );
; 77   : 
; 78   : 		glTexCoord2f( u1,v );
; 79   : 		glVertex3f( a.x, a.y, 0 );
; 80   : 
; 81   : 		glTexCoord2f( u2,v );
; 82   : 		glVertex3f( b.x, b.y, 0 );
; 83   : 
; 84   : 		glColor3f( 1.0f*br, 0.6f*br, 0.3f*br );
; 85   : 
; 86   : 		glTexCoord2f( u2,v+0.1f );
; 87   : 		glVertex3f( b.x, b.y, 200 );
; 88   : 
; 89   : 		glTexCoord2f( u1,v+0.1f );
; 90   : 		glVertex3f( a.x, a.y, 200 );
; 91   : 
; 92   : //		glColor3f( 1.0f, 0.6f, 0.3f );
; 93   : 
; 94   : 		glTexCoord2f( u1,v+0.1f );
; 95   : 		glVertex3f( a.x, a.y, 200 );
; 96   : 
; 97   : 		glTexCoord2f( u2,v+0.1f );
; 98   : 		glVertex3f( b.x, b.y, 200 );
; 99   : 
; 100  : 		glColor3f( 0, 0, 0 );
; 101  : 
; 102  : 		glTexCoord2f( u2,v+0.2f );
; 103  : 		glVertex3f( b.x, b.y, 700 );
; 104  : 		
; 105  : 		glTexCoord2f( u1,v+0.2f );

	mov	esi, DWORD PTR __imp__glTexCoord2f@8
	mov	edi, DWORD PTR __imp__glVertex3f@12
	mov	DWORD PTR _u$[esp+116], 0
	fstp	DWORD PTR _v$[esp+116]
	fld	DWORD PTR _v$[esp+116]
	fsub	DWORD PTR __real@4@3ffccccccd0000000000
	fstp	DWORD PTR -68+[esp+116]
	fld	DWORD PTR _v$[esp+116]
	fsub	DWORD PTR __real@4@3ffbcccccd0000000000
	fstp	DWORD PTR -84+[esp+116]
	fld	DWORD PTR _br$[esp+112]
	fmul	DWORD PTR __real@4@3ffdcccccd0000000000
	fstp	DWORD PTR -56+[esp+116]
	fld	DWORD PTR _br$[esp+112]
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	fstp	DWORD PTR -52+[esp+116]
	fld	DWORD PTR _br$[esp+112]
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR -64+[esp+116]
	fld	DWORD PTR _br$[esp+112]
	fmul	DWORD PTR __real@4@3ffe99999a0000000000
	fstp	DWORD PTR -76+[esp+116]
	fld	DWORD PTR _v$[esp+116]
	fadd	DWORD PTR __real@4@3ffbcccccd0000000000
	fstp	DWORD PTR -80+[esp+116]
	fld	DWORD PTR _v$[esp+116]
	fadd	DWORD PTR __real@4@3ffccccccd0000000000
	fstp	DWORD PTR -60+[esp+116]
$L17539:
	fld	DWORD PTR _u$[esp+116]
	mov	eax, DWORD PTR _u$[esp+116]
	fmul	DWORD PTR __real@4@3ff8a3d70a3d70a3d800
	mov	ecx, DWORD PTR _t$[esp+112]
	push	eax
	push	ecx
	fstp	DWORD PTR _u1$17542[esp+124]
	lea	edx, DWORD PTR $T17611[esp+124]
	fld	DWORD PTR _u$[esp+124]
	push	edx
	fadd	DWORD PTR __real@4@40008000000000000000
	fst	DWORD PTR -72+[esp+128]
	fmul	DWORD PTR __real@4@3ff8a3d70a3d70a3d800
	fstp	DWORD PTR _u2$17544[esp+128]
	call	?p_tunnel_function@@YA?AUVECTOR@@MM@Z	; p_tunnel_function
	mov	ebx, DWORD PTR [eax]
	mov	ebp, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [eax+8]
	mov	ecx, DWORD PTR -72+[esp+128]
	mov	edx, DWORD PTR _t$[esp+124]
	push	ecx
	mov	DWORD PTR _a$17546[esp+140], eax
	push	edx
	lea	eax, DWORD PTR $T17613[esp+136]
	push	eax
	call	?p_tunnel_function@@YA?AUVECTOR@@MM@Z	; p_tunnel_function
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [eax+8]
	add	esp, 24					; 00000018H
	push	0
	push	0
	push	0
	mov	DWORD PTR _b$17548[esp+128], ecx
	mov	DWORD PTR _b$17548[esp+132], edx
	mov	DWORD PTR _b$17548[esp+136], eax
	call	DWORD PTR __imp__glColor3f@12
	mov	ecx, DWORD PTR -68+[esp+116]
	mov	edx, DWORD PTR _u2$17544[esp+116]
	push	ecx
	push	edx
	call	esi
	mov	eax, DWORD PTR _b$17548[esp+120]
	mov	ecx, DWORD PTR _b$17548[esp+116]
	push	-1003552768				; c42f0000H
	push	eax
	push	ecx
	call	edi
	mov	edx, DWORD PTR -68+[esp+116]
	mov	eax, DWORD PTR _u1$17542[esp+116]
	push	edx
	push	eax
	call	esi
	push	-1003552768				; c42f0000H
	push	ebp
	push	ebx
	call	edi
	mov	ecx, DWORD PTR -64+[esp+116]
	mov	edx, DWORD PTR -76+[esp+116]
	mov	eax, DWORD PTR _br$[esp+112]
	push	ecx
	push	edx
	push	eax
	call	DWORD PTR __imp__glColor3f@12
	mov	ecx, DWORD PTR -84+[esp+116]
	mov	edx, DWORD PTR _u1$17542[esp+116]
	push	ecx
	push	edx
	call	esi
	push	-1018691584				; c3480000H
	push	ebp
	push	ebx
	call	edi
	mov	eax, DWORD PTR -84+[esp+116]
	mov	ecx, DWORD PTR _u2$17544[esp+116]
	push	eax
	push	ecx
	call	esi
	mov	edx, DWORD PTR _b$17548[esp+120]
	push	-1018691584				; c3480000H
	push	edx
	mov	eax, DWORD PTR _b$17548[esp+124]
	push	eax
	call	edi
	mov	ecx, DWORD PTR -84+[esp+116]
	mov	edx, DWORD PTR _u1$17542[esp+116]
	push	ecx
	push	edx
	call	esi
	push	-1018691584				; c3480000H
	push	ebp
	push	ebx
	call	edi
	mov	eax, DWORD PTR -84+[esp+116]
	mov	ecx, DWORD PTR _u2$17544[esp+116]
	push	eax
	push	ecx
	call	esi
	mov	edx, DWORD PTR _b$17548[esp+120]
	mov	eax, DWORD PTR _b$17548[esp+116]
	push	-1018691584				; c3480000H
	push	edx
	push	eax
	call	edi
	mov	ecx, DWORD PTR -76+[esp+116]
	mov	edx, DWORD PTR -56+[esp+116]
	mov	eax, DWORD PTR -52+[esp+116]
	push	ecx
	push	edx
	push	eax
	call	DWORD PTR __imp__glColor3f@12
	mov	ecx, DWORD PTR _v$[esp+116]
	mov	edx, DWORD PTR _u2$17544[esp+116]
	push	ecx
	push	edx
	call	esi
	mov	eax, DWORD PTR _b$17548[esp+120]
	mov	ecx, DWORD PTR _b$17548[esp+116]
	push	0
	push	eax
	push	ecx
	call	edi
	mov	edx, DWORD PTR _v$[esp+116]
	mov	eax, DWORD PTR _u1$17542[esp+116]
	push	edx
	push	eax
	call	esi
	push	0
	push	ebp
	push	ebx
	call	edi
	mov	ecx, DWORD PTR _v$[esp+116]
	mov	edx, DWORD PTR _u1$17542[esp+116]
	push	ecx
	push	edx
	call	esi
	push	0
	push	ebp
	push	ebx
	call	edi
	mov	eax, DWORD PTR _v$[esp+116]
	mov	ecx, DWORD PTR _u2$17544[esp+116]
	push	eax
	push	ecx
	call	esi
	mov	edx, DWORD PTR _b$17548[esp+120]
	mov	eax, DWORD PTR _b$17548[esp+116]
	push	0
	push	edx
	push	eax
	call	edi
	mov	ecx, DWORD PTR -64+[esp+116]
	mov	edx, DWORD PTR -76+[esp+116]
	mov	eax, DWORD PTR _br$[esp+112]
	push	ecx
	push	edx
	push	eax
	call	DWORD PTR __imp__glColor3f@12
	mov	ecx, DWORD PTR -80+[esp+116]
	mov	edx, DWORD PTR _u2$17544[esp+116]
	push	ecx
	push	edx
	call	esi
	mov	eax, DWORD PTR _b$17548[esp+120]
	mov	ecx, DWORD PTR _b$17548[esp+116]
	push	1128792064				; 43480000H
	push	eax
	push	ecx
	call	edi
	mov	edx, DWORD PTR -80+[esp+116]
	mov	eax, DWORD PTR _u1$17542[esp+116]
	push	edx
	push	eax
	call	esi
	push	1128792064				; 43480000H
	push	ebp
	push	ebx
	call	edi
	mov	ecx, DWORD PTR -80+[esp+116]
	mov	edx, DWORD PTR _u1$17542[esp+116]
	push	ecx
	push	edx
	call	esi
	push	1128792064				; 43480000H
	push	ebp
	push	ebx
	call	edi
	mov	eax, DWORD PTR -80+[esp+116]
	mov	ecx, DWORD PTR _u2$17544[esp+116]
	push	eax
	push	ecx
	call	esi
	mov	edx, DWORD PTR _b$17548[esp+120]
	mov	eax, DWORD PTR _b$17548[esp+116]
	push	1128792064				; 43480000H
	push	edx
	push	eax
	call	edi
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glColor3f@12
	mov	ecx, DWORD PTR -60+[esp+116]
	mov	edx, DWORD PTR _u2$17544[esp+116]
	push	ecx
	push	edx
	call	esi
	mov	eax, DWORD PTR _b$17548[esp+120]
	mov	ecx, DWORD PTR _b$17548[esp+116]
	push	1143930880				; 442f0000H
	push	eax
	push	ecx
	call	edi
	mov	edx, DWORD PTR -60+[esp+116]
	mov	eax, DWORD PTR _u1$17542[esp+116]
	push	edx
	push	eax
	call	esi

; 106  : 		glVertex3f( a.x, a.y, 700 );

	push	1143930880				; 442f0000H
	push	ebp
	push	ebx
	call	edi
	mov	ecx, DWORD PTR -72+[esp+116]
	mov	DWORD PTR _u$[esp+116], ecx
	fld	DWORD PTR _u$[esp+116]
	fcomp	DWORD PTR __real@4@4005c800000000000000
	fnstsw	ax
	test	ah, 1
	jne	$L17539

; 107  : 
; 108  : 	};
; 109  : /*
; 110  : 	glColor3f( 10, 10, 10 );
; 111  : 	glVertex3f( 0, 0, -300 );
; 112  : 	glVertex3f( 0, 0, -300 );
; 113  : 	glVertex3f( a.x, a.y, -300 );
; 114  : 	glVertex3f( b.x, b.y, -300 );
; 115  : 
; 116  : 	glVertex3f( 0, 0, 300 );
; 117  : 	glVertex3f( 0, 0, 300 );
; 118  : 	glVertex3f( a.x, a.y, 300 );
; 119  : 	glVertex3f( b.x, b.y, 300 );
; 120  : */		
; 121  : 	glEnd();

	call	DWORD PTR __imp__glEnd@0
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 122  : /*
; 123  : 	glaSetTexture( GIF_FLARE );
; 124  : 	glBegin( GL_QUADS );
; 125  : 
; 126  : 	float r = 100.0f;
; 127  : 		glColor3f( 1.0f, 0.6f, 0.3f );
; 128  : 
; 129  : 	glTexCoord2f( 0, 0 ); glVertex3f( -r, -r, 300 );
; 130  : 	glTexCoord2f( 1, 0 ); glVertex3f(  r, -r, 300 );
; 131  : 	glTexCoord2f( 1, 1 ); glVertex3f(  r,  r, 300 );
; 132  : 	glTexCoord2f( 0, 1 ); glVertex3f( -r,  r, 300 );
; 133  : 
; 134  : 	glTexCoord2f( 0, 0 ); glVertex3f( -r, -r, -300 );
; 135  : 	glTexCoord2f( 1, 0 ); glVertex3f(  r, -r, -300 );
; 136  : 	glTexCoord2f( 1, 1 ); glVertex3f(  r,  r, -300 );
; 137  : 	glTexCoord2f( 0, 1 ); glVertex3f( -r,  r, -300 );
; 138  : 
; 139  : 	glEnd();
; 140  : */
; 141  : };

	add	esp, 100				; 00000064H
	ret	0
?p_tunnel_render@@YAXMM@Z ENDP				; p_tunnel_render
_TEXT	ENDS
PUBLIC	?p_tunnel_run@@YAXPAUEVENT@@@Z			; p_tunnel_run
PUBLIC	__real@4@4002a000000000000000
PUBLIC	__real@4@3ffe8000000000000000
PUBLIC	__real@4@3ff78000000000000000
EXTRN	_gluPerspective@32:NEAR
EXTRN	_gluLookAt@72:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
;	COMDAT __real@4@4002a000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_tunnel.cpp
CONST	SEGMENT
__real@4@4002a000000000000000 DD 041200000r	; 10
CONST	ENDS
;	COMDAT __real@4@3ffe8000000000000000
CONST	SEGMENT
__real@4@3ffe8000000000000000 DD 03f000000r	; 0.5
CONST	ENDS
;	COMDAT __real@4@3ff78000000000000000
CONST	SEGMENT
__real@4@3ff78000000000000000 DD 03b800000r	; 0.00390625
CONST	ENDS
;	COMDAT ?p_tunnel_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -12
_z0$ = -4
_z1$ = -8
_b$ = -8
?p_tunnel_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_tunnel_run, COMDAT

; 143  : void p_tunnel_run( EVENT *e ) {

	push	ebp
	mov	ebp, esp
	and	esp, -8					; fffffff8H
	sub	esp, 12					; 0000000cH
	push	ebx
	push	esi

; 144  : 	float t;
; 145  : 
; 146  : 	glDisable( GL_DEPTH_TEST );

	mov	esi, DWORD PTR __imp__glDisable@4
	push	edi
	push	2929					; 00000b71H
	call	esi

; 147  : 	glDisable( GL_CULL_FACE );

	push	2884					; 00000b44H
	call	esi

; 148  : 
; 149  : 	t = e->localTime;

	mov	ebx, DWORD PTR _e$[ebp]
	mov	eax, DWORD PTR [ebx+4]

; 150  : 
; 151  : 	glEnable( GL_BLEND );

	push	3042					; 00000be2H
	mov	DWORD PTR _t$[esp+28], eax
	call	DWORD PTR __imp__glEnable@4

; 152  : 	glBlendFunc( GL_ONE, GL_ONE );

	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8

; 153  : 		
; 154  : 	glMatrixMode( GL_TEXTURE );

	mov	esi, DWORD PTR __imp__glMatrixMode@4
	push	5890					; 00001702H
	call	esi

; 155  : //	gluLookAt( -0.7f*(float)cos(t/5), -0.7f*(float)cos(t/2), -0.7f*(float)sin(t*1), 0, 0, 0, 0, 1, 0 );
; 156  : 	glLoadIdentity();

	mov	edi, DWORD PTR __imp__glLoadIdentity@0
	call	edi

; 157  : 
; 158  : 	glMatrixMode( GL_PROJECTION );

	push	5889					; 00001701H
	call	esi

; 159  : 	glLoadIdentity();

	call	edi

; 160  : 	gluPerspective( 125, 4/3, 1, 1000 );

	push	1083129856				; 408f4000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1079984128				; 405f4000H
	push	0
	call	_gluPerspective@32

; 161  : 	//glTranslatef( 0,0,-70 );
; 162  : 
; 163  : 	float z0, z1, r0;
; 164  : 
; 165  : 	z0 = -10 + t;

	fld	DWORD PTR _t$[esp+24]
	fsub	DWORD PTR __real@4@4002a000000000000000
	fstp	DWORD PTR _z0$[esp+24]

; 166  : 	z1 = 10 - t;

	fld	DWORD PTR __real@4@4002a000000000000000
	fsub	DWORD PTR _t$[esp+24]
	fstp	DWORD PTR _z1$[esp+24]

; 167  : 	r0 = t*2;

	fld	DWORD PTR _t$[esp+24]
	fadd	ST(0), ST(0)

; 168  : 	if( r0>10 ) r0=10.0f;

	fcom	DWORD PTR __real@4@4002a000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17557
	fstp	ST(0)
	fld	DWORD PTR __real@4@4002a000000000000000
$L17557:

; 169  : 	//r1 = 0;
; 170  : 
; 171  : 	gluLookAt( r0*(float)cos(t/5), r0*(float)cos(t/2), z0+r0*(float)sin(t*1), 0, 0, z1, 0, 1, 0 );

	fld	DWORD PTR _z1$[esp+24]
	push	0
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	0
	push	0
	sub	esp, 8
	fstp	QWORD PTR [esp]
	push	0
	fld	DWORD PTR _t$[esp+60]
	push	0
	fsin
	push	0
	push	0
	sub	esp, 8
	sub	esp, 8
	sub	esp, 8
	fmul	ST(0), ST(1)
	fadd	DWORD PTR _z0$[esp+96]
	fstp	QWORD PTR [esp+16]
	fld	DWORD PTR _t$[esp+96]
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fcos
	fmul	ST(0), ST(1)
	fstp	QWORD PTR [esp+8]
	fld	DWORD PTR _t$[esp+96]
	fmul	DWORD PTR __real@4@3ffcccccccccccccd000
	fcos
	fmul	ST(0), ST(1)
	fstp	QWORD PTR [esp]
	fstp	ST(0)
	call	_gluLookAt@72

; 172  : //		glRotatef( 60, cos(t*3),sin(t*2),cos(t/4) );
; 173  : 
; 174  : 	glMatrixMode( GL_MODELVIEW );

	push	5888					; 00001700H
	call	esi

; 175  : 	glLoadIdentity();

	call	edi

; 176  : 	glTexEnvi( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12

; 177  : 
; 178  : 	float b = t / ((float)e->customData / 256.0f);

	fild	DWORD PTR [ebx+16]
	fmul	DWORD PTR __real@4@3ff78000000000000000
	fdivr	DWORD PTR _t$[esp+24]
	fst	DWORD PTR _b$[esp+24]

; 179  : 	if( b>1.0f ) b=1.0f;

	fcomp	DWORD PTR __real@4@3fff8000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17563
	mov	DWORD PTR _b$[esp+24], 1065353216	; 3f800000H
$L17563:

; 180  : 	p_tunnel_render( t, b );

	mov	ecx, DWORD PTR _b$[esp+24]
	mov	edx, DWORD PTR _t$[esp+24]
	push	ecx
	push	edx
	call	?p_tunnel_render@@YAXMM@Z		; p_tunnel_render
	add	esp, 8

; 181  : 
; 182  : };

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_tunnel_run@@YAXPAUEVENT@@@Z ENDP			; p_tunnel_run
_TEXT	ENDS
END
