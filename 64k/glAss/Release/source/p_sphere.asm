	TITLE	E:\prj64k\glAss (eventad)\parts\p_sphere.cpp
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
;	COMDAT ?p_sf@@YAMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_sphere_function@@YA?AUVECTOR@@MMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_sphere_render@@YAXM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_sphere_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?p_sf@@YAMMM@Z					; p_sf
PUBLIC	__real@4@3fff8000000000000000
EXTRN	__fltused:NEAR
;	COMDAT __real@4@3fff8000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_sphere.cpp
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT ?p_sf@@YAMMM@Z
_TEXT	SEGMENT
?p_sf@@YAMMM@Z PROC NEAR				; p_sf, COMDAT

; 7    : 	return 1.0f;

	fld	DWORD PTR __real@4@3fff8000000000000000

; 8    : };

	ret	0
?p_sf@@YAMMM@Z ENDP					; p_sf
_TEXT	ENDS
PUBLIC	?p_sphere_function@@YA?AUVECTOR@@MMM@Z		; p_sphere_function
PUBLIC	__real@4@4000c000000000000000
PUBLIC	__real@4@4004a000000000000000
PUBLIC	__real@4@3ffb80b241eb851eb800
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@4004f000000000000000
PUBLIC	__real@8@3ffa80b242070b8cf800
PUBLIC	__real@4@4003f000000000000000
PUBLIC	__real@8@3ffb80b242070b8cf800
;	COMDAT __real@4@4000c000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_sphere.cpp
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
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@4004f000000000000000
CONST	SEGMENT
__real@4@4004f000000000000000 DD 042700000r	; 60
CONST	ENDS
;	COMDAT __real@8@3ffa80b242070b8cf800
CONST	SEGMENT
__real@8@3ffa80b242070b8cf800 DQ 03fa0164840e1719fr ; 0.03142
CONST	ENDS
;	COMDAT __real@4@4003f000000000000000
CONST	SEGMENT
__real@4@4003f000000000000000 DD 041f00000r	; 30
CONST	ENDS
;	COMDAT __real@8@3ffb80b242070b8cf800
CONST	SEGMENT
__real@8@3ffb80b242070b8cf800 DQ 03fb0164840e1719fr ; 0.06284
CONST	ENDS
;	COMDAT ?p_sphere_function@@YA?AUVECTOR@@MMM@Z
_TEXT	SEGMENT
_t$ = 12
_u$ = 16
_v$ = 20
_ve$ = -12
_r$ = 12
$T17604 = 8
?p_sphere_function@@YA?AUVECTOR@@MMM@Z PROC NEAR	; p_sphere_function, COMDAT

; 14   : VECTOR p_sphere_function( float t, float u, float v ) {

	sub	esp, 20					; 00000014H

; 15   : 
; 16   : 	VECTOR ve;
; 17   : 
; 18   : 	float a = 0.3f*(float)cos(t*2);
; 19   : 	float b = 0.3f*(float)sin(t*3);
; 20   : 	float r2 = 1.0f + a * (float)cos( ((u*3)-(t*40))*3.142f/50.0f );

	fld	DWORD PTR _u$[esp+16]

; 21   : 	r2 += b * (float)cos( ((v*2)-(t*60))*3.142f/50.0f );
; 22   : 
; 23   : 	float r = r2*30*(float)sin( v*3.142/100 );
; 24   : 	float x = r*(float)cos( u*3.142/50 );
; 25   : 	float z = r*(float)sin( u*3.142/50 );
; 26   : 	float y = r2*30*(float)cos( v*3.142/100 );//(v-50);//40*sin( v*3.142/50 );
; 27   : 
; 28   : 	ve.x = x;
; 29   : 	ve.y = y;
; 30   : 	ve.z = z;
; 31   : 
; 32   : 	return ve;

	mov	eax, DWORD PTR $T17604[esp+16]
	fmul	DWORD PTR __real@4@4000c000000000000000
	mov	ecx, eax
	fld	DWORD PTR _t$[esp+16]
	fmul	DWORD PTR __real@4@4004a000000000000000
	fsubp	ST(1), ST(0)
	fmul	DWORD PTR __real@4@3ffb80b241eb851eb800
	fcos
	fld	DWORD PTR _t$[esp+16]
	fadd	ST(0), ST(0)
	fcos
	fxch	ST(1)
	fxch	ST(1)
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fmulp	ST(1), ST(0)
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fld	DWORD PTR _v$[esp+16]
	fadd	ST(0), ST(0)
	fld	DWORD PTR _t$[esp+16]
	fmul	DWORD PTR __real@4@4004f000000000000000
	fsubp	ST(1), ST(0)
	fmul	DWORD PTR __real@4@3ffb80b241eb851eb800
	fcos
	fst	DWORD PTR -20+[esp+20]
	fld	DWORD PTR _t$[esp+16]
	fmul	DWORD PTR __real@4@4000c000000000000000
	fsin
	fst	DWORD PTR 12+[esp+16]
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fmulp	ST(1), ST(0)
	faddp	ST(1), ST(0)
	fld	DWORD PTR _v$[esp+16]
	fmul	QWORD PTR __real@8@3ffa80b242070b8cf800
	fld	ST(0)
	fsin
	fmul	ST(0), ST(2)
	fmul	DWORD PTR __real@4@4003f000000000000000
	fstp	DWORD PTR _r$[esp+16]
	fld	DWORD PTR _u$[esp+16]
	fmul	QWORD PTR __real@8@3ffb80b242070b8cf800
	fst	QWORD PTR -20+[esp+20]
	fcos
	fmul	DWORD PTR _r$[esp+16]
	fstp	DWORD PTR _ve$[esp+20]
	mov	edx, DWORD PTR _ve$[esp+20]
	fcos
	mov	DWORD PTR [ecx], edx
	fmul	ST(0), ST(1)
	fmul	DWORD PTR __real@4@4003f000000000000000
	fstp	DWORD PTR _ve$[esp+24]
	mov	edx, DWORD PTR _ve$[esp+24]
	fstp	ST(0)
	mov	DWORD PTR [ecx+4], edx
	fld	QWORD PTR -20+[esp+20]
	fsin
	fmul	DWORD PTR _r$[esp+16]
	fstp	DWORD PTR _ve$[esp+28]
	mov	edx, DWORD PTR _ve$[esp+28]
	mov	DWORD PTR [ecx+8], edx

; 33   : };

	add	esp, 20					; 00000014H
	ret	0
?p_sphere_function@@YA?AUVECTOR@@MMM@Z ENDP		; p_sphere_function
_TEXT	ENDS
PUBLIC	?p_sphere_render@@YAXM@Z			; p_sphere_render
PUBLIC	__real@4@40008000000000000000
PUBLIC	__real@4@3ffbccccccccccccd000
PUBLIC	__real@4@4005c800000000000000
EXTRN	__imp__glEnd@0:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
;	COMDAT __real@4@40008000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_sphere.cpp
CONST	SEGMENT
__real@4@40008000000000000000 DD 040000000r	; 2
CONST	ENDS
;	COMDAT __real@4@3ffbccccccccccccd000
CONST	SEGMENT
__real@4@3ffbccccccccccccd000 DD 03dcccccdr	; 0.1
CONST	ENDS
;	COMDAT __real@4@4005c800000000000000
CONST	SEGMENT
__real@4@4005c800000000000000 DD 042c80000r	; 100
CONST	ENDS
;	COMDAT ?p_sphere_render@@YAXM@Z
_TEXT	SEGMENT
_t$ = 8
_u$ = -128
_v$ = -124
_a$17551 = -96
_b$17553 = -84
_c$17555 = -72
_d$17557 = -60
$T17626 = -48
$T17628 = -36
$T17630 = -24
$T17632 = -12
?p_sphere_render@@YAXM@Z PROC NEAR			; p_sphere_render, COMDAT

; 35   : void p_sphere_render( float t ) {

	sub	esp, 128				; 00000080H
	push	ebx
	push	ebp
	push	esi
	push	edi

; 36   : 
; 37   : 	float u, v;
; 38   : 
; 39   : 	glaSetTexture( GIF_CLOUDS );

	push	111					; 0000006fH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4

; 40   : /*
; 41   : 	static GLint s_vector[4] = { 0, 0.01f, 2, 1 };
; 42   : 	static GLint t_vector[4] = { 0.01f, 0, 3, 4 };
; 43   : 
; 44   : 	glTexGeni(GL_S, GL_TEXTURE_GEN_MODE, GL_SPHERE_MAP);
; 45   : 	glTexGeni(GL_T, GL_TEXTURE_GEN_MODE, GL_SPHERE_MAP);
; 46   : 	//glTexGeni(GL_R, GL_TEXTURE_GEN_MODE, GL_SPHERE_MAP);
; 47   : 
; 48   : 	glTexGeniv(GL_S, GL_EYE_PLANE, s_vector);
; 49   : 	glTexGeniv(GL_T, GL_EYE_PLANE, t_vector);
; 50   : 
; 51   : 	glEnable(GL_TEXTURE_GEN_S);
; 52   : 	glEnable(GL_TEXTURE_GEN_T);
; 53   : 	//glEnable(GL_TEXTURE_GEN_R);
; 54   : */
; 55   : 
; 56   : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4

; 57   : 	
; 58   : 	for( v=0; v<100; v+=2 ) {

	mov	esi, DWORD PTR _t$[esp+140]
	mov	edi, DWORD PTR __imp__glTexCoord2f@8
	mov	ebx, DWORD PTR __imp__glVertex3f@12
	mov	DWORD PTR _v$[esp+144], 0
$L17545:

; 59   : 
; 60   : 		for( u=0; u<100; u+=2 ) {
; 61   : 
; 62   : 			VECTOR a = p_sphere_function( t, u+2, v+2 );
; 63   : 			VECTOR b = p_sphere_function( t, u, v+2 );
; 64   : 			VECTOR c = p_sphere_function( t, u, v );
; 65   : 			VECTOR d = p_sphere_function( t, u+2, v );
; 66   : 
; 67   : 			//glColor3f( 0.3f + 0.2f*cos(t*14+(u*5+v*6)/125.0f), 0.1f, 0.3f + 0.2f*sin(t*20+(v*7+u*5)/125.0f) );
; 68   : 
; 69   : 			glColor3f( 0.05f, 0.3f, 0.1f );
; 70   : 
; 71   : 			glTexCoord2f( (float)(u+2)/10.0f, (float)(v+2)/10.0f );
; 72   : 			glVertex3f( a.x, a.y, a.z );
; 73   : 
; 74   : 			glTexCoord2f( (float)(u+0)/10.0f, (float)(v+2)/10.0f );

	fld	DWORD PTR _v$[esp+144]
	mov	DWORD PTR _u$[esp+144], 0
	fadd	DWORD PTR __real@4@40008000000000000000
	fst	DWORD PTR -120+[esp+144]
	fmul	DWORD PTR __real@4@3ffbccccccccccccd000
	fstp	DWORD PTR -112+[esp+144]

; 75   : 			glVertex3f( b.x, b.y, b.z );
; 76   : 
; 77   : 			glTexCoord2f( (float)(u+0)/10.0f, (float)(v+0)/10.0f );
; 78   : 			glVertex3f( c.x, c.y, c.z );
; 79   : 
; 80   : 			glTexCoord2f( (float)(u+2)/10.0f, (float)(v+0)/10.0f );

	fld	DWORD PTR _v$[esp+144]
	fmul	DWORD PTR __real@4@3ffbccccccccccccd000
	fstp	DWORD PTR -104+[esp+144]
$L17548:
	fld	DWORD PTR _u$[esp+144]
	mov	eax, DWORD PTR -120+[esp+144]
	fadd	DWORD PTR __real@4@40008000000000000000
	push	eax
	lea	ecx, DWORD PTR $T17626[esp+148]
	fstp	DWORD PTR -116+[esp+148]
	mov	ebp, DWORD PTR -116+[esp+148]
	push	ebp
	push	esi
	push	ecx
	call	?p_sphere_function@@YA?AUVECTOR@@MMM@Z	; p_sphere_function
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _a$17551[esp+160], edx
	mov	edx, DWORD PTR [eax+8]
	mov	eax, DWORD PTR -120+[esp+160]
	push	eax
	mov	DWORD PTR _a$17551[esp+168], ecx
	mov	ecx, DWORD PTR _u$[esp+164]
	push	ecx
	mov	DWORD PTR _a$17551[esp+176], edx
	lea	edx, DWORD PTR $T17628[esp+168]
	push	esi
	push	edx
	call	?p_sphere_function@@YA?AUVECTOR@@MMM@Z	; p_sphere_function
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR _b$17553[esp+176], ecx
	mov	ecx, DWORD PTR _v$[esp+176]
	push	ecx
	mov	DWORD PTR _b$17553[esp+184], edx
	mov	edx, DWORD PTR _u$[esp+180]
	push	edx
	mov	DWORD PTR _b$17553[esp+192], eax
	lea	eax, DWORD PTR $T17630[esp+184]
	push	esi
	push	eax
	call	?p_sphere_function@@YA?AUVECTOR@@MMM@Z	; p_sphere_function
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR _c$17555[esp+192], ecx
	mov	ecx, DWORD PTR _v$[esp+192]
	push	ecx
	push	ebp
	mov	DWORD PTR _c$17555[esp+204], edx
	lea	edx, DWORD PTR $T17632[esp+200]
	push	esi
	push	edx
	mov	DWORD PTR _c$17555[esp+216], eax
	call	?p_sphere_function@@YA?AUVECTOR@@MMM@Z	; p_sphere_function
	mov	ebp, DWORD PTR [eax]
	mov	ecx, DWORD PTR [eax+4]
	mov	edx, DWORD PTR [eax+8]
	add	esp, 64					; 00000040H
	push	1036831949				; 3dcccccdH
	push	1050253722				; 3e99999aH
	push	1028443341				; 3d4ccccdH
	mov	DWORD PTR _d$17557[esp+160], ecx
	mov	DWORD PTR _d$17557[esp+164], edx
	call	DWORD PTR __imp__glColor3f@12
	fld	DWORD PTR -116+[esp+144]
	fmul	DWORD PTR __real@4@3ffbccccccccccccd000
	mov	eax, DWORD PTR -112+[esp+144]
	push	eax
	fstp	DWORD PTR -100+[esp+148]
	mov	ecx, DWORD PTR -100+[esp+148]
	push	ecx
	call	edi
	mov	edx, DWORD PTR _a$17551[esp+152]
	mov	eax, DWORD PTR _a$17551[esp+148]
	mov	ecx, DWORD PTR _a$17551[esp+144]
	push	edx
	push	eax
	push	ecx
	call	ebx
	fld	DWORD PTR _u$[esp+144]
	fmul	DWORD PTR __real@4@3ffbccccccccccccd000
	fstp	DWORD PTR -108+[esp+144]
	mov	edx, DWORD PTR -112+[esp+144]
	mov	eax, DWORD PTR -108+[esp+144]
	push	edx
	push	eax
	call	edi
	mov	ecx, DWORD PTR _b$17553[esp+152]
	mov	edx, DWORD PTR _b$17553[esp+148]
	mov	eax, DWORD PTR _b$17553[esp+144]
	push	ecx
	push	edx
	push	eax
	call	ebx
	mov	ecx, DWORD PTR -104+[esp+144]
	mov	edx, DWORD PTR -108+[esp+144]
	push	ecx
	push	edx
	call	edi
	mov	eax, DWORD PTR _c$17555[esp+152]
	mov	ecx, DWORD PTR _c$17555[esp+148]
	mov	edx, DWORD PTR _c$17555[esp+144]
	push	eax
	push	ecx
	push	edx
	call	ebx
	mov	eax, DWORD PTR -104+[esp+144]
	mov	ecx, DWORD PTR -100+[esp+144]
	push	eax
	push	ecx
	call	edi

; 81   : 			glVertex3f( d.x, d.y, d.z );

	mov	edx, DWORD PTR _d$17557[esp+152]
	mov	eax, DWORD PTR _d$17557[esp+148]
	push	edx
	push	eax
	push	ebp
	call	ebx
	mov	ecx, DWORD PTR -116+[esp+144]
	mov	DWORD PTR _u$[esp+144], ecx
	fld	DWORD PTR _u$[esp+144]
	fcomp	DWORD PTR __real@4@4005c800000000000000
	fnstsw	ax
	test	ah, 1
	jne	$L17548
	mov	edx, DWORD PTR -120+[esp+144]
	mov	DWORD PTR _v$[esp+144], edx
	fld	DWORD PTR _v$[esp+144]
	fcomp	DWORD PTR __real@4@4005c800000000000000
	fnstsw	ax
	test	ah, 1
	jne	$L17545

; 82   : 			
; 83   : 		};
; 84   : 
; 85   : 	};
; 86   : 
; 87   : 	glEnd();

	call	DWORD PTR __imp__glEnd@0
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 88   : 
; 89   : /*
; 90   : 	glDisable( GL_TEXTURE_2D );
; 91   : 	glPointSize( 3 );
; 92   : 	glBegin( GL_POINTS );
; 93   : 	glColor3f( 0.01f, 0.03f, 0.02f );
; 94   : 	for( v=0; v<100; v+=0.5f ) {
; 95   : 		for( u=0; u<100; u+=0.5f ) {
; 96   : 			VECTOR a = p_sphere_function( t, u+1, v+1 );
; 97   : 			glVertex3f( a.x, a.y, a.z );
; 98   : 		};
; 99   : 	};
; 100  : 	glEnd();
; 101  : */
; 102  : };

	add	esp, 128				; 00000080H
	ret	0
?p_sphere_render@@YAXM@Z ENDP				; p_sphere_render
_TEXT	ENDS
PUBLIC	?p_sphere_run@@YAXPAUEVENT@@@Z			; p_sphere_run
PUBLIC	__real@4@3ffd8000000000000000
EXTRN	_gluPerspective@32:NEAR
EXTRN	__imp__glCullFace@4:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glRotatef@16:NEAR
EXTRN	__imp__glTranslatef@12:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
;	COMDAT __real@4@3ffd8000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_sphere.cpp
CONST	SEGMENT
__real@4@3ffd8000000000000000 DD 03e800000r	; 0.25
CONST	ENDS
;	COMDAT ?p_sphere_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = 8
?p_sphere_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_sphere_run, COMDAT

; 104  : void p_sphere_run( EVENT *e ) {

	push	esi
	push	edi

; 105  : 	float t;
; 106  : 
; 107  : 	glCullFace( GL_BACK );

	push	1029					; 00000405H
	call	DWORD PTR __imp__glCullFace@4

; 108  : 
; 109  : 	glDisable( GL_DEPTH_TEST );

	mov	esi, DWORD PTR __imp__glDisable@4
	push	2929					; 00000b71H
	call	esi

; 110  : 	//glEnable( GL_DEPTH_TEST );
; 111  : 	//glDepthFunc( GL_LESS );
; 112  : 
; 113  : 		t = e->localTime;

	mov	eax, DWORD PTR _e$[esp+4]
	mov	ecx, DWORD PTR [eax+4]

; 114  : 
; 115  : 
; 116  : 	glDisable( GL_CULL_FACE );

	push	2884					; 00000b44H
	mov	DWORD PTR _t$[esp+8], ecx
	call	esi

; 117  : 
; 118  : 		glEnable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4

; 119  : 	glBlendFunc( GL_ONE, GL_ONE );

	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8

; 120  : 		
; 121  : 		glMatrixMode( GL_TEXTURE );

	mov	esi, DWORD PTR __imp__glMatrixMode@4
	push	5890					; 00001702H
	call	esi

; 122  : 		//gluLookAt( -0.7f*(float)cos(t/5), -0.7f*(float)cos(t/2), -0.7f*(float)sin(t*1), 0, 0, 0, 0, 1, 0 );
; 123  : 		glLoadIdentity();

	mov	edi, DWORD PTR __imp__glLoadIdentity@0
	call	edi

; 124  : 
; 125  : 		glMatrixMode( GL_PROJECTION );

	push	5889					; 00001701H
	call	esi

; 126  : 	glLoadIdentity();

	call	edi

; 127  : 		//glFrustum( -1, 1, -0.75, 0.75, 0.1, 1 );
; 128  : 		gluPerspective( 85, 4/3, 1, 1000 );

	push	1083129856				; 408f4000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1079328768				; 40554000H
	push	0
	call	_gluPerspective@32

; 129  : 		//MATRIX m;
; 130  : 		glTranslatef( 0,0,-70 );

	push	-1031012352				; c28c0000H
	push	0
	push	0
	call	DWORD PTR __imp__glTranslatef@12

; 131  : 		//gluLookAt( 0.7f*(float)cos(t/5), 0.7f*(float)cos(t/2), 0.7f*(float)sin(t*1), 0, 0, 0, 0, 1, 0 );
; 132  : 		glRotatef( 60, (float)cos(t*3),(float)sin(t*2),(float)cos(t/4) );

	fld	DWORD PTR _t$[esp+4]
	fmul	DWORD PTR __real@4@3ffd8000000000000000
	push	ecx
	fcos
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[esp+8]
	fadd	ST(0), ST(0)
	push	ecx
	fsin
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[esp+12]
	fmul	DWORD PTR __real@4@4000c000000000000000
	push	ecx
	fcos
	fstp	DWORD PTR [esp]
	push	1114636288				; 42700000H
	call	DWORD PTR __imp__glRotatef@16

; 133  : 
; 134  : 		glMatrixMode( GL_MODELVIEW );

	push	5888					; 00001700H
	call	esi

; 135  : 	glLoadIdentity();

	call	edi

; 136  : 	
; 137  : 		p_sphere_render( t );

	mov	edx, DWORD PTR _t$[esp+4]
	push	edx
	call	?p_sphere_render@@YAXM@Z		; p_sphere_render
	add	esp, 4
	pop	edi
	pop	esi

; 138  : 
; 139  : };

	ret	0
?p_sphere_run@@YAXPAUEVENT@@@Z ENDP			; p_sphere_run
_TEXT	ENDS
END
