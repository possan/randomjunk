	TITLE	E:\prj64k\glAss (eventad)\parts\p_silu.cpp
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
;	COMDAT ?p_silu_rit@@YAXM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_silu_klutt@@YAXMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_silu_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?psilufunc@@YAXMMPAM00MM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?psilufunc@@YAXMMPAM00MM@Z			; psilufunc
PUBLIC	?p_silu_rit@@YAXM@Z				; p_silu_rit
PUBLIC	__real@4@4001a000000000000000
PUBLIC	__real@4@4004a000000000000000
PUBLIC	__real@4@4000c000000000000000
PUBLIC	__real@4@40008000000000000000
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@4@4002f000000000000000
PUBLIC	__real@4@4003f000000000000000
PUBLIC	__real@4@4002a000000000000000
PUBLIC	__real@4@4001c000000000000000
PUBLIC	__real@4@40028000000000000000
PUBLIC	__real@4@40048c00000000000000
PUBLIC	__real@4@4001e000000000000000
PUBLIC	__real@4@3ff8a3d70a3d70a3d800
PUBLIC	__real@4@3fff8ccccd0000000000
PUBLIC	__real@4@3fff99999a0000000000
PUBLIC	__real@4@3fffa666660000000000
PUBLIC	__real@4@3fffb333330000000000
PUBLIC	__real@4@3fffc000000000000000
PUBLIC	__real@4@3fffcccccd0000000000
PUBLIC	__real@4@3fffd9999a0000000000
PUBLIC	__real@4@3fffe666660000000000
PUBLIC	__real@4@3ffff333330000000000
PUBLIC	__real@4@40008666660000000000
PUBLIC	__real@4@40008ccccd0000000000
PUBLIC	__real@4@40009333330000000000
EXTRN	__imp__glEnd@0:NEAR
EXTRN	__fltused:NEAR
EXTRN	__imp__glPointSize@4:NEAR
EXTRN	__imp__glPopMatrix@0:NEAR
EXTRN	__imp__glPushMatrix@0:NEAR
EXTRN	__imp__glRotatef@16:NEAR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
;	COMDAT __real@4@4001a000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_silu.cpp
CONST	SEGMENT
__real@4@4001a000000000000000 DD 040a00000r	; 5
CONST	ENDS
;	COMDAT __real@4@4004a000000000000000
CONST	SEGMENT
__real@4@4004a000000000000000 DD 042200000r	; 40
CONST	ENDS
;	COMDAT __real@4@4000c000000000000000
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT __real@4@40008000000000000000
CONST	SEGMENT
__real@4@40008000000000000000 DD 040000000r	; 2
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@4@4002f000000000000000
CONST	SEGMENT
__real@4@4002f000000000000000 DD 041700000r	; 15
CONST	ENDS
;	COMDAT __real@4@4003f000000000000000
CONST	SEGMENT
__real@4@4003f000000000000000 DD 041f00000r	; 30
CONST	ENDS
;	COMDAT __real@4@4002a000000000000000
CONST	SEGMENT
__real@4@4002a000000000000000 DD 041200000r	; 10
CONST	ENDS
;	COMDAT __real@4@4001c000000000000000
CONST	SEGMENT
__real@4@4001c000000000000000 DD 040c00000r	; 6
CONST	ENDS
;	COMDAT __real@4@40028000000000000000
CONST	SEGMENT
__real@4@40028000000000000000 DD 041000000r	; 8
CONST	ENDS
;	COMDAT __real@4@40048c00000000000000
CONST	SEGMENT
__real@4@40048c00000000000000 DD 0420c0000r	; 35
CONST	ENDS
;	COMDAT __real@4@4001e000000000000000
CONST	SEGMENT
__real@4@4001e000000000000000 DD 040e00000r	; 7
CONST	ENDS
;	COMDAT __real@4@3ff8a3d70a3d70a3d800
CONST	SEGMENT
__real@4@3ff8a3d70a3d70a3d800 DD 03c23d70ar	; 0.01
CONST	ENDS
;	COMDAT __real@4@3fff8ccccd0000000000
CONST	SEGMENT
__real@4@3fff8ccccd0000000000 DD 03f8ccccdr	; 1.1
CONST	ENDS
;	COMDAT __real@4@3fff99999a0000000000
CONST	SEGMENT
__real@4@3fff99999a0000000000 DD 03f99999ar	; 1.2
CONST	ENDS
;	COMDAT __real@4@3fffa666660000000000
CONST	SEGMENT
__real@4@3fffa666660000000000 DD 03fa66666r	; 1.3
CONST	ENDS
;	COMDAT __real@4@3fffb333330000000000
CONST	SEGMENT
__real@4@3fffb333330000000000 DD 03fb33333r	; 1.4
CONST	ENDS
;	COMDAT __real@4@3fffc000000000000000
CONST	SEGMENT
__real@4@3fffc000000000000000 DD 03fc00000r	; 1.5
CONST	ENDS
;	COMDAT __real@4@3fffcccccd0000000000
CONST	SEGMENT
__real@4@3fffcccccd0000000000 DD 03fcccccdr	; 1.6
CONST	ENDS
;	COMDAT __real@4@3fffd9999a0000000000
CONST	SEGMENT
__real@4@3fffd9999a0000000000 DD 03fd9999ar	; 1.7
CONST	ENDS
;	COMDAT __real@4@3fffe666660000000000
CONST	SEGMENT
__real@4@3fffe666660000000000 DD 03fe66666r	; 1.8
CONST	ENDS
;	COMDAT __real@4@3ffff333330000000000
CONST	SEGMENT
__real@4@3ffff333330000000000 DD 03ff33333r	; 1.9
CONST	ENDS
;	COMDAT __real@4@40008666660000000000
CONST	SEGMENT
__real@4@40008666660000000000 DD 040066666r	; 2.1
CONST	ENDS
;	COMDAT __real@4@40008ccccd0000000000
CONST	SEGMENT
__real@4@40008ccccd0000000000 DD 0400ccccdr	; 2.2
CONST	ENDS
;	COMDAT __real@4@40009333330000000000
CONST	SEGMENT
__real@4@40009333330000000000 DD 040133333r	; 2.3
CONST	ENDS
;	COMDAT ?p_silu_rit@@YAXM@Z
_TEXT	SEGMENT
_t$ = 8
_u$ = -8
_v$ = 8
_x$ = -12
_y$ = -16
_z$ = -20
?p_silu_rit@@YAXM@Z PROC NEAR				; p_silu_rit, COMDAT

; 12   : void p_silu_rit( float t ) {

	sub	esp, 20					; 00000014H
	push	ebx
	push	ebp
	push	esi
	push	edi

; 13   : 	int u, v;
; 14   : 	float x, y, z;
; 15   : 
; 16   : 	glPushMatrix();

	call	DWORD PTR __imp__glPushMatrix@0

; 17   : 
; 18   : 	glRotatef( t*5, 1,0,0 );

	fld	DWORD PTR _t$[esp+32]
	fmul	DWORD PTR __real@4@4001a000000000000000
	mov	esi, DWORD PTR __imp__glRotatef@16
	push	0
	push	0
	push	1065353216				; 3f800000H
	push	ecx
	fstp	DWORD PTR [esp]
	call	esi

; 19   : 	glRotatef( t*40, 0,1,0 );

	fld	DWORD PTR _t$[esp+32]
	push	0
	fmul	DWORD PTR __real@4@4004a000000000000000
	push	1065353216				; 3f800000H
	push	0
	push	ecx
	fstp	DWORD PTR [esp]
	call	esi

; 20   : 	glRotatef( t*3, 0,0,1 );

	fld	DWORD PTR _t$[esp+32]
	push	1065353216				; 3f800000H
	fmul	DWORD PTR __real@4@4000c000000000000000
	push	0
	push	0
	push	ecx
	fstp	DWORD PTR [esp]
	call	esi

; 21   : 	if( t>2 && t<4 ) {

	fld	DWORD PTR _t$[esp+32]
	fcomp	DWORD PTR __real@4@40008000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17531
	fld	DWORD PTR _t$[esp+32]
	fcomp	DWORD PTR __real@4@40018000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L17531

; 22   : 		glRotatef( t*15, 1,0,0 );

	fld	DWORD PTR _t$[esp+32]
	push	0
	fmul	DWORD PTR __real@4@4002f000000000000000
	push	0
	push	1065353216				; 3f800000H
	push	ecx
	fstp	DWORD PTR [esp]
	call	esi

; 23   : 		glRotatef( t*30, 0,1,0 );

	fld	DWORD PTR _t$[esp+32]
	push	0
	fmul	DWORD PTR __real@4@4003f000000000000000
	push	1065353216				; 3f800000H
	push	0
	push	ecx
	fstp	DWORD PTR [esp]
	call	esi

; 24   : 		glRotatef( t*10, 0,0,1 );

	fld	DWORD PTR _t$[esp+32]
	push	1065353216				; 3f800000H
	fmul	DWORD PTR __real@4@4002a000000000000000
	push	0
	push	0

; 25   : 	} else if( t>6 && t<8 ) {

	jmp	SHORT $L17701
$L17531:
	fld	DWORD PTR _t$[esp+32]
	fcomp	DWORD PTR __real@4@4001c000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17533
	fld	DWORD PTR _t$[esp+32]
	fcomp	DWORD PTR __real@4@40028000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L17533

; 26   : 		glRotatef( t*35, 1,0,0 );

	fld	DWORD PTR _t$[esp+32]
	push	0
	fmul	DWORD PTR __real@4@40048c00000000000000
	push	0
	push	1065353216				; 3f800000H
	push	ecx
	fstp	DWORD PTR [esp]
	call	esi

; 27   : 		glRotatef( t*4, 0,1,0 );

	fld	DWORD PTR _t$[esp+32]
	push	0
	fmul	DWORD PTR __real@4@40018000000000000000
	push	1065353216				; 3f800000H
	push	0
	push	ecx
	fstp	DWORD PTR [esp]
	call	esi

; 28   : 		glRotatef( t*7, 0,0,1 );

	fld	DWORD PTR _t$[esp+32]
	push	1065353216				; 3f800000H
	fmul	DWORD PTR __real@4@4001e000000000000000
	push	0
	push	0
$L17701:
	push	ecx
	fstp	DWORD PTR [esp]
	call	esi
$L17533:

; 29   : 	};
; 30   : 	glPointSize( 3 );

	push	1077936128				; 40400000H
	call	DWORD PTR __imp__glPointSize@4

; 31   : 
; 32   : 
; 33   : 	glBegin( GL_POINTS );

	push	0
	call	DWORD PTR __imp__glBegin@4

; 34   : 	for( u=0; u<100; u++ ) {

	mov	ebx, DWORD PTR _t$[esp+32]
	mov	edi, DWORD PTR __imp__glColor3f@12
	mov	esi, DWORD PTR __imp__glVertex3f@12
	mov	DWORD PTR _u$[esp+36], 0
$L17534:

; 35   : 		for( v=0; v<=100; v++ ) {
; 36   : 			if( u%10==0 || v%10==0 ) {

	mov	eax, DWORD PTR _u$[esp+36]
	cdq
	xor	ebp, ebp
	mov	ecx, 10					; 0000000aH
	idiv	ecx
	mov	DWORD PTR _v$[esp+32], ebp
	mov	DWORD PTR -4+[esp+36], edx
$L17537:
	mov	eax, DWORD PTR -4+[esp+36]
	test	eax, eax
	je	SHORT $L17541
	mov	eax, ebp
	cdq
	mov	ecx, 10					; 0000000aH
	idiv	ecx
	test	edx, edx
	jne	SHORT $L17538
$L17541:

; 37   : 				psilufunc( 0, t, &x, &y, &z, (float)u/100.0f, (float)v/100.0f ); 

	fild	DWORD PTR _v$[esp+32]
	push	ecx
	lea	edx, DWORD PTR _z$[esp+40]
	lea	eax, DWORD PTR _y$[esp+40]
	fmul	DWORD PTR __real@4@3ff8a3d70a3d70a3d800
	fstp	DWORD PTR [esp]
	push	ecx
	fild	DWORD PTR _u$[esp+44]
	lea	ecx, DWORD PTR _x$[esp+44]
	fmul	DWORD PTR __real@4@3ff8a3d70a3d70a3d800
	fstp	DWORD PTR [esp]
	push	edx
	push	eax
	push	ecx
	push	ebx
	push	0
	call	?psilufunc@@YAXMMPAM00MM@Z		; psilufunc
	add	esp, 28					; 0000001cH

; 38   : 				glColor3f( 1, 0.5f, 0.1f );

	push	1036831949				; 3dcccccdH
	push	1056964608				; 3f000000H
	push	1065353216				; 3f800000H
	call	edi

; 39   : 				glVertex3f( x, y, z );

	mov	edx, DWORD PTR _z$[esp+36]
	mov	eax, DWORD PTR _y$[esp+36]
	mov	ecx, DWORD PTR _x$[esp+36]
	push	edx
	push	eax
	push	ecx
	call	esi
$L17538:
	inc	ebp
	cmp	ebp, 100				; 00000064H
	mov	DWORD PTR _v$[esp+32], ebp
	jle	SHORT $L17537
	mov	eax, DWORD PTR _u$[esp+36]
	inc	eax
	cmp	eax, 100				; 00000064H
	mov	DWORD PTR _u$[esp+36], eax
	jl	$L17534

; 40   : 			};
; 41   : 		};
; 42   : 	};
; 43   : 	for( u=0; u<100; u++ ) {

	mov	DWORD PTR _u$[esp+36], 0
$L17544:

; 44   : 		for( v=0; v<=100; v++ ) {

	xor	ebp, ebp
	mov	DWORD PTR _v$[esp+32], ebp
$L17547:

; 45   : 			if( v%10==0 /*&& v%10==0*/ ) {

	mov	eax, ebp
	cdq
	mov	ecx, 10					; 0000000aH
	idiv	ecx
	test	edx, edx
	jne	$L17548

; 46   : 				psilufunc( 0, t, &x, &y, &z, (float)u/100.0f, (float)v/100.0f ); 

	fild	DWORD PTR _v$[esp+32]
	push	ecx
	lea	edx, DWORD PTR _z$[esp+40]
	lea	eax, DWORD PTR _y$[esp+40]
	fmul	DWORD PTR __real@4@3ff8a3d70a3d70a3d800
	fstp	DWORD PTR [esp]
	push	ecx
	fild	DWORD PTR _u$[esp+44]
	lea	ecx, DWORD PTR _x$[esp+44]
	fmul	DWORD PTR __real@4@3ff8a3d70a3d70a3d800
	fstp	DWORD PTR [esp]
	push	edx
	push	eax
	push	ecx
	push	ebx
	push	0
	call	?psilufunc@@YAXMMPAM00MM@Z		; psilufunc
	add	esp, 28					; 0000001cH

; 47   : 				
; 48   : 				glColor3f( 0.1f, 0.15f, 0.207f );

	push	1045690319				; 3e53f7cfH
	push	1041865114				; 3e19999aH
	push	1036831949				; 3dcccccdH
	call	edi

; 49   : 				glVertex3f( x*1.1f, y*1.0f, z*1.1f );

	fld	DWORD PTR _z$[esp+36]
	fmul	DWORD PTR __real@4@3fff8ccccd0000000000
	mov	edx, DWORD PTR _y$[esp+36]
	push	ecx
	fstp	DWORD PTR [esp]
	push	edx
	fld	DWORD PTR _x$[esp+44]
	push	ecx
	fmul	DWORD PTR __real@4@3fff8ccccd0000000000
	fstp	DWORD PTR [esp]
	call	esi

; 50   : 				glVertex3f( x*1.2f, y*1.0f, z*1.2f );

	fld	DWORD PTR _z$[esp+36]
	mov	eax, DWORD PTR _y$[esp+36]
	fmul	DWORD PTR __real@4@3fff99999a0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	eax
	fld	DWORD PTR _x$[esp+44]
	push	ecx
	fmul	DWORD PTR __real@4@3fff99999a0000000000
	fstp	DWORD PTR [esp]
	call	esi

; 51   : 				glVertex3f( x*1.3f, y*1.0f, z*1.3f );

	fld	DWORD PTR _z$[esp+36]
	push	ecx
	fmul	DWORD PTR __real@4@3fffa666660000000000
	mov	ecx, DWORD PTR _y$[esp+40]
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _x$[esp+44]
	push	ecx
	fmul	DWORD PTR __real@4@3fffa666660000000000
	fstp	DWORD PTR [esp]
	call	esi

; 52   : 
; 53   : 				glColor3f( 0.08f, 0.11f, 0.107f );

	push	1037771473				; 3ddb22d1H
	push	1038174126				; 3de147aeH
	push	1034147594				; 3da3d70aH
	call	edi

; 54   : 				glVertex3f( x*1.4f, y*1.0f, z*1.4f  );

	fld	DWORD PTR _z$[esp+36]
	fmul	DWORD PTR __real@4@3fffb333330000000000
	mov	edx, DWORD PTR _y$[esp+36]
	push	ecx
	fstp	DWORD PTR [esp]
	push	edx
	fld	DWORD PTR _x$[esp+44]
	push	ecx
	fmul	DWORD PTR __real@4@3fffb333330000000000
	fstp	DWORD PTR [esp]
	call	esi

; 55   : 				glVertex3f( x*1.5f, y*1.0f, z*1.5f  );

	fld	DWORD PTR _z$[esp+36]
	mov	eax, DWORD PTR _y$[esp+36]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	eax
	fld	DWORD PTR _x$[esp+44]
	push	ecx
	fmul	DWORD PTR __real@4@3fffc000000000000000
	fstp	DWORD PTR [esp]
	call	esi

; 56   : 
; 57   : 				glColor3f( 0.06f, 0.09f, 0.057f );

	push	1030322389				; 3d6978d5H
	push	1035489772				; 3db851ecH
	push	1031127695				; 3d75c28fH
	call	edi

; 58   : 				glVertex3f( x*1.6f, y*1.0f, z*1.6f  );

	fld	DWORD PTR _z$[esp+36]
	fmul	DWORD PTR __real@4@3fffcccccd0000000000
	push	ecx
	mov	ecx, DWORD PTR _y$[esp+40]
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _x$[esp+44]
	push	ecx
	fmul	DWORD PTR __real@4@3fffcccccd0000000000
	fstp	DWORD PTR [esp]
	call	esi

; 59   : 				glVertex3f( x*1.7f, y*1.0f, z*1.7f  );

	fld	DWORD PTR _z$[esp+36]
	mov	edx, DWORD PTR _y$[esp+36]
	fmul	DWORD PTR __real@4@3fffd9999a0000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	edx
	fld	DWORD PTR _x$[esp+44]
	push	ecx
	fmul	DWORD PTR __real@4@3fffd9999a0000000000
	fstp	DWORD PTR [esp]
	call	esi

; 60   : 
; 61   : 				glColor3f( 0.04f, 0.07f, 0.017f );

	push	1015759766				; 3c8b4396H
	push	1032805417				; 3d8f5c29H
	push	1025758986				; 3d23d70aH
	call	edi

; 62   : 				glVertex3f( x*1.8f, y*1.0f, z*1.8f  );

	fld	DWORD PTR _z$[esp+36]
	fmul	DWORD PTR __real@4@3fffe666660000000000
	mov	eax, DWORD PTR _y$[esp+36]
	push	ecx
	fstp	DWORD PTR [esp]
	push	eax
	fld	DWORD PTR _x$[esp+44]
	push	ecx
	fmul	DWORD PTR __real@4@3fffe666660000000000
	fstp	DWORD PTR [esp]
	call	esi

; 63   : 				glVertex3f( x*1.9f, y*1.0f, z*1.9f  );

	fld	DWORD PTR _z$[esp+36]
	push	ecx
	fmul	DWORD PTR __real@4@3ffff333330000000000
	mov	ecx, DWORD PTR _y$[esp+40]
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _x$[esp+44]
	push	ecx
	fmul	DWORD PTR __real@4@3ffff333330000000000
	fstp	DWORD PTR [esp]
	call	esi

; 64   : 
; 65   : 				glColor3f( 0.02f, 0.05f, 0.007f );

	push	1004888130				; 3be56042H
	push	1028443341				; 3d4ccccdH
	push	1017370378				; 3ca3d70aH
	call	edi

; 66   : 				glVertex3f( x*2.0f, y*1.0f, z*2.0f  );

	fld	DWORD PTR _z$[esp+36]
	mov	edx, DWORD PTR _y$[esp+36]
	fadd	ST(0), ST(0)
	push	ecx
	fstp	DWORD PTR [esp]
	push	edx
	fld	DWORD PTR _x$[esp+44]
	push	ecx
	fadd	ST(0), ST(0)
	fstp	DWORD PTR [esp]
	call	esi

; 67   : 				glVertex3f( x*2.1f, y*1.0f, z*2.1f  );

	fld	DWORD PTR _z$[esp+36]
	mov	eax, DWORD PTR _y$[esp+36]
	fmul	DWORD PTR __real@4@40008666660000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	eax
	fld	DWORD PTR _x$[esp+44]
	push	ecx
	fmul	DWORD PTR __real@4@40008666660000000000
	fstp	DWORD PTR [esp]
	call	esi

; 68   : 
; 69   : 				glColor3f( 0.01f, 0.025f, 0.0035f );

	push	996499522				; 3b656042H
	push	1020054733				; 3ccccccdH
	push	1008981770				; 3c23d70aH
	call	edi

; 70   : 				glVertex3f( x*2.2f, y*1.0f, z*2.2f  );

	fld	DWORD PTR _z$[esp+36]
	fmul	DWORD PTR __real@4@40008ccccd0000000000
	push	ecx
	mov	ecx, DWORD PTR _y$[esp+40]
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _x$[esp+44]
	push	ecx
	fmul	DWORD PTR __real@4@40008ccccd0000000000
	fstp	DWORD PTR [esp]
	call	esi

; 71   : 				glVertex3f( x*2.3f, y*1.0f, z*2.3f  );

	fld	DWORD PTR _z$[esp+36]
	mov	edx, DWORD PTR _y$[esp+36]
	fmul	DWORD PTR __real@4@40009333330000000000
	push	ecx
	fstp	DWORD PTR [esp]
	push	edx
	fld	DWORD PTR _x$[esp+44]
	push	ecx
	fmul	DWORD PTR __real@4@40009333330000000000
	fstp	DWORD PTR [esp]
	call	esi
$L17548:
	inc	ebp
	cmp	ebp, 100				; 00000064H
	mov	DWORD PTR _v$[esp+32], ebp
	jle	$L17547
	mov	eax, DWORD PTR _u$[esp+36]
	inc	eax
	cmp	eax, 100				; 00000064H
	mov	DWORD PTR _u$[esp+36], eax
	jl	$L17544

; 72   : 			};
; 73   : 		};
; 74   : 	};
; 75   : 	glEnd();

	call	DWORD PTR __imp__glEnd@0

; 76   : 
; 77   : 
; 78   : 
; 79   : 	glPopMatrix();

	call	DWORD PTR __imp__glPopMatrix@0
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 80   : };

	add	esp, 20					; 00000014H
	ret	0
?p_silu_rit@@YAXM@Z ENDP				; p_silu_rit
_TEXT	ENDS
PUBLIC	?p_silu_klutt@@YAXMMM@Z				; p_silu_klutt
PUBLIC	__real@4@3ffe8000000000000000
PUBLIC	__real@4@3ffbccccccccccccd000
PUBLIC	__real@4@3ffdaaaaaaaaaaaaa800
PUBLIC	__real@4@3ffcccccccccccccd000
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@8@3ffb80b242070b8cf800
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
;	COMDAT __real@4@3ffe8000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_silu.cpp
CONST	SEGMENT
__real@4@3ffe8000000000000000 DD 03f000000r	; 0.5
CONST	ENDS
;	COMDAT __real@4@3ffbccccccccccccd000
CONST	SEGMENT
__real@4@3ffbccccccccccccd000 DD 03dcccccdr	; 0.1
CONST	ENDS
;	COMDAT __real@4@3ffdaaaaaaaaaaaaa800
CONST	SEGMENT
__real@4@3ffdaaaaaaaaaaaaa800 DD 03eaaaaabr	; 0.333333
CONST	ENDS
;	COMDAT __real@4@3ffcccccccccccccd000
CONST	SEGMENT
__real@4@3ffcccccccccccccd000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@8@3ffb80b242070b8cf800
CONST	SEGMENT
__real@8@3ffb80b242070b8cf800 DQ 03fb0164840e1719fr ; 0.06284
CONST	ENDS
;	COMDAT ?p_silu_klutt@@YAXMMM@Z
_TEXT	SEGMENT
_a$ = 8
_b$ = 12
_r0$ = 16
_r1$ = -24
_r2$ = 16
_i$ = 12
_x1$17570 = -12
_y1$17571 = -16
_x2$17572 = -4
_y2$17573 = -8
_u1$17574 = 12
_u2$17575 = -20
?p_silu_klutt@@YAXMMM@Z PROC NEAR			; p_silu_klutt, COMDAT

; 82   : void p_silu_klutt( float a, float b, float r0 ) {

	sub	esp, 24					; 00000018H
	push	ebx
	push	ebp
	push	esi
	push	edi

; 83   : 
; 84   : 	glaSetTexture( GIF_PSIKORP2 );

	push	103					; 00000067H
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4

; 85   : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4

; 86   : 
; 87   : 	float r1 = r0 + (r0/10)*(float)cos((a/2));

	fld	DWORD PTR _a$[esp+36]
	fmul	DWORD PTR __real@4@3ffe8000000000000000

; 88   : 	float r2 = r0 - (r0/5)*(float)sin((a/3));
; 89   : 
; 90   : 	glColor3f( b*(float)(0.3f+0.3f*(float)cos(a)), b*(float)(0.3f+0.3f*(float)sin(a)), 0.0f );

	push	0
	push	ecx
	fcos
	fld	DWORD PTR _r0$[esp+44]
	fmul	DWORD PTR __real@4@3ffbccccccccccccd000
	fmulp	ST(1), ST(0)
	fadd	DWORD PTR _r0$[esp+44]
	fstp	DWORD PTR _r1$[esp+48]
	fld	DWORD PTR _a$[esp+44]
	fmul	DWORD PTR __real@4@3ffdaaaaaaaaaaaaa800
	fsin
	fld	DWORD PTR _r0$[esp+44]
	fmul	DWORD PTR __real@4@3ffcccccccccccccd000
	fmulp	ST(1), ST(0)
	fsubr	DWORD PTR _r0$[esp+44]
	fstp	DWORD PTR _r2$[esp+44]
	fld	DWORD PTR _a$[esp+44]
	fsin
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fmul	DWORD PTR _b$[esp+44]
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _a$[esp+48]
	fcos
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fmul	DWORD PTR _b$[esp+48]
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12

; 91   : 
; 92   : 	for( int i=0; i<100; i++ ) {

	mov	esi, DWORD PTR __imp__glTexCoord2f@8
	mov	edi, DWORD PTR __imp__glVertex3f@12
	xor	eax, eax
	mov	DWORD PTR _i$[esp+36], eax
$L17567:

; 93   : 		float x1, y1, x2, y2;
; 94   : 		float u1, u2;
; 95   : 		
; 96   : 		x1 = (float)cos( (i)*3.142/50 );

	fild	DWORD PTR _i$[esp+36]

; 97   : 		y1 = (float)sin( (i)*3.142/50 );
; 98   : 		x2 = (float)cos( (i+1)*3.142/50 );

	lea	ebx, DWORD PTR [eax+1]
	mov	DWORD PTR -20+[esp+40], ebx

; 99   : 		y2 = (float)sin( (i+1)*3.142/50 );
; 100  : 
; 101  : 		u1 = -((float)(i) / 5.0f)+a;
; 102  : 		u2 = -((float)(i+1) / 5.0f)+a;
; 103  : 		
; 104  : 		glTexCoord2f( u1, 1 );

	push	1065353216				; 3f800000H
	fmul	QWORD PTR __real@8@3ffb80b242070b8cf800
	fld	ST(0)
	fcos
	fstp	DWORD PTR _x1$17570[esp+44]
	fsin
	fstp	DWORD PTR _y1$17571[esp+44]
	fild	DWORD PTR -20+[esp+44]
	fmul	QWORD PTR __real@8@3ffb80b242070b8cf800
	fld	ST(0)
	fcos
	fstp	DWORD PTR _x2$17572[esp+44]
	fsin
	fstp	DWORD PTR _y2$17573[esp+44]
	fild	DWORD PTR _i$[esp+40]
	fmul	DWORD PTR __real@4@3ffcccccccccccccd000
	fsubr	DWORD PTR _a$[esp+40]
	fstp	DWORD PTR _u1$17574[esp+40]
	fild	DWORD PTR -20+[esp+44]
	mov	ebp, DWORD PTR _u1$17574[esp+40]
	push	ebp
	fmul	DWORD PTR __real@4@3ffcccccccccccccd000
	fsubr	DWORD PTR _a$[esp+44]
	fstp	DWORD PTR _u2$17575[esp+48]
	call	esi

; 105  : 		glVertex3f( r1*x1, r1*y1, 0 );

	fld	DWORD PTR _y1$17571[esp+40]
	push	0
	fmul	DWORD PTR _r1$[esp+44]
	push	ecx
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _x1$17570[esp+52]
	fmul	DWORD PTR _r1$[esp+52]
	fstp	DWORD PTR [esp]
	call	edi

; 106  : 		glTexCoord2f( u1, 0 );

	push	0
	push	ebp
	call	esi

; 107  : 		glVertex3f( r2*x1, r2*y1, 0 );

	fld	DWORD PTR _y1$17571[esp+40]
	fmul	DWORD PTR _r2$[esp+36]
	push	0
	push	ecx
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _x1$17570[esp+52]
	fmul	DWORD PTR _r2$[esp+48]
	fstp	DWORD PTR [esp]
	call	edi

; 108  : 
; 109  : 		glTexCoord2f( u2, 0 );

	mov	ebp, DWORD PTR _u2$17575[esp+40]
	push	0
	push	ebp
	call	esi

; 110  : 		glVertex3f( r2*x2, r2*y2, 0 );

	fld	DWORD PTR _y2$17573[esp+40]
	fmul	DWORD PTR _r2$[esp+36]
	push	0
	push	ecx
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _x2$17572[esp+52]
	fmul	DWORD PTR _r2$[esp+48]
	fstp	DWORD PTR [esp]
	call	edi

; 111  : 		glTexCoord2f( u2, 1 );

	push	1065353216				; 3f800000H
	push	ebp
	call	esi

; 112  : 		glVertex3f( r1*x2, r1*y2, 0 );

	fld	DWORD PTR _y2$17573[esp+40]
	fmul	DWORD PTR _r1$[esp+40]
	push	0
	push	ecx
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _x2$17572[esp+52]
	fmul	DWORD PTR _r1$[esp+52]
	fstp	DWORD PTR [esp]
	call	edi
	mov	eax, ebx
	cmp	eax, 100				; 00000064H
	mov	DWORD PTR _i$[esp+36], eax
	jl	$L17567

; 113  : 
; 114  : 	};
; 115  : 	glEnd();

	call	DWORD PTR __imp__glEnd@0
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 116  : 
; 117  : };

	add	esp, 24					; 00000018H
	ret	0
?p_silu_klutt@@YAXMMM@Z ENDP				; p_silu_klutt
_TEXT	ENDS
PUBLIC	?p_silu_run@@YAXPAUEVENT@@@Z			; p_silu_run
PUBLIC	__real@4@4002c000000000000000
PUBLIC	__real@4@3ffd8000000000000000
PUBLIC	__real@4@3ffccccccd0000000000
PUBLIC	__real@4@3ffdcccccd0000000000
PUBLIC	__real@4@3ffbcccccd0000000000
PUBLIC	__real@4@3ffe99999a0000000000
PUBLIC	__real@4@3ffacccccd0000000000
PUBLIC	__real@4@3ffecccccd0000000000
PUBLIC	__real@4@3ff9cccccd0000000000
PUBLIC	__real@4@c0018000000000000000
PUBLIC	__real@4@4002d000000000000000
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glFrustum@48:NEAR
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glOrtho@48:NEAR
EXTRN	__imp__glTranslatef@12:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
;	COMDAT __real@4@4002c000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_silu.cpp
CONST	SEGMENT
__real@4@4002c000000000000000 DD 041400000r	; 12
CONST	ENDS
;	COMDAT __real@4@3ffd8000000000000000
CONST	SEGMENT
__real@4@3ffd8000000000000000 DD 03e800000r	; 0.25
CONST	ENDS
;	COMDAT __real@4@3ffccccccd0000000000
CONST	SEGMENT
__real@4@3ffccccccd0000000000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@3ffdcccccd0000000000
CONST	SEGMENT
__real@4@3ffdcccccd0000000000 DD 03ecccccdr	; 0.4
CONST	ENDS
;	COMDAT __real@4@3ffbcccccd0000000000
CONST	SEGMENT
__real@4@3ffbcccccd0000000000 DD 03dcccccdr	; 0.1
CONST	ENDS
;	COMDAT __real@4@3ffe99999a0000000000
CONST	SEGMENT
__real@4@3ffe99999a0000000000 DD 03f19999ar	; 0.6
CONST	ENDS
;	COMDAT __real@4@3ffacccccd0000000000
CONST	SEGMENT
__real@4@3ffacccccd0000000000 DD 03d4ccccdr	; 0.05
CONST	ENDS
;	COMDAT __real@4@3ffecccccd0000000000
CONST	SEGMENT
__real@4@3ffecccccd0000000000 DD 03f4ccccdr	; 0.8
CONST	ENDS
;	COMDAT __real@4@3ff9cccccd0000000000
CONST	SEGMENT
__real@4@3ff9cccccd0000000000 DD 03ccccccdr	; 0.025
CONST	ENDS
;	COMDAT __real@4@c0018000000000000000
CONST	SEGMENT
__real@4@c0018000000000000000 DD 0c0800000r	; -4
CONST	ENDS
;	COMDAT __real@4@4002d000000000000000
CONST	SEGMENT
__real@4@4002d000000000000000 DD 041500000r	; 13
CONST	ENDS
;	COMDAT ?p_silu_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -8
_b$ = -4
?p_silu_run@@YAXPAUEVENT@@@Z PROC NEAR			; p_silu_run, COMDAT

; 160  : void p_silu_run( EVENT *e ) {

	push	ebp
	mov	ebp, esp
	and	esp, -8					; fffffff8H
	sub	esp, 12					; 0000000cH
	push	ebx

; 161  : 
; 162  : 	glDisable( GL_DEPTH_TEST );	

	mov	ebx, DWORD PTR __imp__glDisable@4
	push	esi
	push	edi
	push	2929					; 00000b71H
	call	ebx

; 163  : 
; 164  : 	float t = e->localTime;

	mov	eax, DWORD PTR _e$[ebp]
	mov	ecx, DWORD PTR [eax+4]

; 165  : 	float b = e->localBeat;
; 166  : 		
; 167  : 	glEnable( GL_BLEND );

	push	3042					; 00000be2H
	mov	DWORD PTR _t$[esp+28], ecx
	call	DWORD PTR __imp__glEnable@4

; 168  : 	glBlendFunc( GL_ONE, GL_ONE );

	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8

; 169  : 
; 170  : 	glMatrixMode( GL_PROJECTION );

	mov	edi, DWORD PTR __imp__glMatrixMode@4
	push	5889					; 00001701H
	call	edi

; 171  : 	//glScalef( 0.2, 0.3, 0.4 );
; 172  : 	glLoadIdentity();

	mov	esi, DWORD PTR __imp__glLoadIdentity@0
	call	esi

; 173  : 	glOrtho( -1, 1, -1, 1, -100, 100 );

	push	1079574528				; 40590000H
	push	0
	push	-1067909120				; c0590000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	-1074790400				; bff00000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	-1074790400				; bff00000H
	push	0
	call	DWORD PTR __imp__glOrtho@48

; 174  : 
; 175  : 	glMatrixMode( GL_MODELVIEW );

	push	5888					; 00001700H
	call	edi

; 176  : 	glLoadIdentity();

	call	esi

; 177  : 
; 178  : 	// rita distad bild
; 179  : 	/*-
; 180  : 		{
; 181  : 
; 182  : 			glaSetTexture( GIF_TITLE );
; 183  : 			glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );
; 184  : 
; 185  : 			glBegin( GL_QUADS );
; 186  : 
; 187  : 			float u1, u2;
; 188  : 
; 189  : 			float d;
; 190  : 			glColor3f( 0.1f, 0.05f, 0.0f );
; 191  : 			for( d=0; d<2; d++ ) {
; 192  : 				u1 = 0.1f+0.4f*(float)cos(t+d*1);
; 193  : 				u2 = 0.9f+0.4f*(float)sin(t-d*2);
; 194  : 				glTexCoord2f( u1, 0 );	glVertex3f( -1, 0.5f+(d/80), 0 );
; 195  : 				glTexCoord2f( u2, 0 );	glVertex3f( 1, 0.5f+(d/80), 0 );
; 196  : 				glTexCoord2f( u2, 1 );	glVertex3f( 1, -0.5f-(d/80), 0 );
; 197  : 				glTexCoord2f( u1, 1 );	glVertex3f( -1, -0.5f-(d/80), 0 );
; 198  : 			};
; 199  : 
; 200  : 				glEnd();
; 201  : 		}
; 202  : */
; 203  : /*
; 204  : 		glEnable( GL_BLEND );
; 205  : 		glBlendFunc( GL_ONE, GL_ONE );
; 206  : 		glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );
; 207  : 		glaSetTexture( GIF_FONT );
; 208  : 		glBegin( GL_QUADS );
; 209  : 		char s[10];
; 210  : 		unsigned char hex;
; 211  : 		for( int i=0; i<20; i++ ) {
; 212  : 			hex = (unsigned char)(128 + 127*(float)sin(t*(1+i)));
; 213  : 			wsprintf( s, "%02x", hex );
; 214  : 			float x = (float)i / 10;
; 215  : 
; 216  : 			float y = 0.5f;
; 217  : 
; 218  : 		glColor3f( 0.7f*x, 0.34f*x, 0*x );
; 219  : 			glaDrawString( 1-x, -y, 0, 0.025f, 0.025f, 0.04f, s );
; 220  : 			glaDrawString( -1+x, y, 0, 0.025f, 0.025f, 0.04f, s );
; 221  : 
; 222  : 		glColor3f( 0.1f*x, 0.04f*x, 0*x );
; 223  : 			glaDrawString( -1+x, -y, 0, 0.05f, 0.05f, 0.04f, s );
; 224  : 			glaDrawString( 1-x, y, 0, 0.05f, 0.05f, 0.04f, s );
; 225  : 		};
; 226  : 		glEnd();
; 227  : 
; 228  : 		glDisable( GL_BLEND );
; 229  : */
; 230  : 		glDisable( GL_TEXTURE_2D );

	push	3553					; 00000de1H
	call	ebx

; 231  : 		// rita bakgrunden
; 232  : 		{
; 233  : 
; 234  : 			/*glBegin( GL_QUADS );
; 235  : 			glColor3f( 0.0f,0.1f,0.2f );
; 236  : 			glVertex3f( -1, -0.75f, 0 );
; 237  : 			glVertex3f( 1, -0.75f, 0 );
; 238  : 			glVertex3f( 1, -0.3f, 0 );
; 239  : 			glVertex3f( -1, -0.3f, 0 );
; 240  : 			glVertex3f( -1, 0.3f, 0 );
; 241  : 			glVertex3f( 1, 0.3f, 0 );
; 242  : 			glVertex3f( 1, 0.75f, 0 );
; 243  : 			glVertex3f( -1, 0.75f, 0 );
; 244  : 			glEnd();*/
; 245  : 
; 246  : 		}
; 247  : 
; 248  : 	glMatrixMode( GL_MODELVIEW );

	push	5888					; 00001700H
	call	edi

; 249  : 	glLoadIdentity();

	call	esi

; 250  : 
; 251  : 	b = 1;
; 252  : 	if( t>=12 ) {

	fld	DWORD PTR _t$[esp+24]
	fcomp	DWORD PTR __real@4@4002c000000000000000
	mov	DWORD PTR _b$[esp+24], 1065353216	; 3f800000H
	fnstsw	ax
	test	ah, 1
	jne	SHORT $L17587

; 253  : 		b = 1-((t-12)/3.0f);

	fld	DWORD PTR _t$[esp+24]
	fsub	DWORD PTR __real@4@4002c000000000000000
	fmul	DWORD PTR __real@4@3ffdaaaaaaaaaaaaa800
	fsubr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _b$[esp+24]
$L17587:

; 254  : 	};
; 255  : 
; 256  : //	p_silu_klutt2( t, b );
; 257  : 
; 258  : //		p_silu_klutt( t,   0.2f, 0.7f );
; 259  : 
; 260  : 	p_silu_klutt( t-0.0f, 0.3f*b, 0.7f );

	fld	DWORD PTR _b$[esp+24]
	mov	edi, DWORD PTR _t$[esp+24]
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	push	1060320051				; 3f333333H
	push	ecx
	fstp	DWORD PTR [esp]
	push	edi
	call	?p_silu_klutt@@YAXMMM@Z			; p_silu_klutt

; 261  : 	p_silu_klutt( t-0.2f, 0.25f*b, 0.75f );

	fld	DWORD PTR _b$[esp+36]
	fmul	DWORD PTR __real@4@3ffd8000000000000000
	add	esp, 12					; 0000000cH
	push	1061158912				; 3f400000H
	push	ecx
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _t$[esp+36]
	fsub	DWORD PTR __real@4@3ffccccccd0000000000
	fstp	DWORD PTR [esp]
	call	?p_silu_klutt@@YAXMMM@Z			; p_silu_klutt

; 262  : 	p_silu_klutt( t-0.4f, 0.2f*b, 0.8f );

	fld	DWORD PTR _b$[esp+36]
	add	esp, 12					; 0000000cH
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	push	1061997773				; 3f4ccccdH
	push	ecx
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _t$[esp+36]
	fsub	DWORD PTR __real@4@3ffdcccccd0000000000
	fstp	DWORD PTR [esp]
	call	?p_silu_klutt@@YAXMMM@Z			; p_silu_klutt

; 263  : 	p_silu_klutt( t-0.6f, 0.1f*b, 0.85f );

	fld	DWORD PTR _b$[esp+36]
	add	esp, 12					; 0000000cH
	fmul	DWORD PTR __real@4@3ffbcccccd0000000000
	push	1062836634				; 3f59999aH
	push	ecx
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _t$[esp+36]
	fsub	DWORD PTR __real@4@3ffe99999a0000000000
	fstp	DWORD PTR [esp]
	call	?p_silu_klutt@@YAXMMM@Z			; p_silu_klutt

; 264  : 	p_silu_klutt( t-0.8f, 0.05f*b, 0.9f );

	fld	DWORD PTR _b$[esp+36]
	add	esp, 12					; 0000000cH
	fmul	DWORD PTR __real@4@3ffacccccd0000000000
	push	1063675494				; 3f666666H
	push	ecx
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _t$[esp+36]
	fsub	DWORD PTR __real@4@3ffecccccd0000000000
	fstp	DWORD PTR [esp]
	call	?p_silu_klutt@@YAXMMM@Z			; p_silu_klutt

; 265  : 	p_silu_klutt( t-1.0f, 0.025f*b, 0.95f );

	fld	DWORD PTR _b$[esp+36]
	add	esp, 12					; 0000000cH
	fmul	DWORD PTR __real@4@3ff9cccccd0000000000
	push	1064514355				; 3f733333H
	push	ecx
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _t$[esp+36]
	fsub	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR [esp]
	call	?p_silu_klutt@@YAXMMM@Z			; p_silu_klutt
	add	esp, 12					; 0000000cH

; 266  : 
; 267  : /*		p_silu_klutt( t/5, 0.2f, 1.7f );
; 268  : 		p_silu_klutt( t/2, 0.2f, 1.4f );
; 269  : 		p_silu_klutt( t/2, 0.2f, 1.4f );
; 270  : 		p_silu_klutt( t/4, 0.2f, 0.9f );
; 271  : 		p_silu_klutt( t/3, 0.2f, 1.3f );*/
; 272  : 
; 273  : 	glFrustum( -1, 1, -0.75f, 0.75f, 1.0f, 15.0f );

	push	1076756480				; 402e0000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1072168960				; 3fe80000H
	push	0
	push	-1075314688				; bfe80000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	-1074790400				; bff00000H
	push	0
	call	DWORD PTR __imp__glFrustum@48

; 274  : 
; 275  : 	if( t<2 ) {

	fld	DWORD PTR _t$[esp+24]
	fcomp	DWORD PTR __real@4@40008000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L17588

; 276  : 		float p = 0 - (((2-t)*(2-t))/4.0f);

	fld	DWORD PTR __real@4@40008000000000000000

; 277  : 		glTranslatef( 0.0f+p, 0, -4-(t*3) );

	push	ecx
	fsub	DWORD PTR _t$[esp+28]
	fld	DWORD PTR _t$[esp+28]
	fmul	DWORD PTR __real@4@4000c000000000000000
	fsubr	DWORD PTR __real@4@c0018000000000000000
	fstp	DWORD PTR [esp]
	push	0
	push	ecx
	fld	ST(0)
	fmul	ST(0), ST(1)
	fmul	DWORD PTR __real@4@3ffd8000000000000000
	fchs
	fstp	DWORD PTR [esp]
	fstp	ST(0)

; 278  : 	} else if( t>13 ) {

	jmp	SHORT $L17746
$L17588:
	fld	DWORD PTR _t$[esp+24]
	fcomp	DWORD PTR __real@4@4002d000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17591

; 279  : 		glTranslatef( 0.0f, 0, -10+((t-13)*5) );

	fld	DWORD PTR _t$[esp+24]
	push	ecx
	fsub	DWORD PTR __real@4@4002d000000000000000
	fmul	DWORD PTR __real@4@4001a000000000000000
	fsub	DWORD PTR __real@4@4002a000000000000000
	fstp	DWORD PTR [esp]

; 280  : 	} else {

	jmp	SHORT $L17747
$L17591:

; 281  : 		glTranslatef( 0.0f, 0, -10 );

	push	-1054867456				; c1200000H
$L17747:
	push	0
	push	0
$L17746:
	call	DWORD PTR __imp__glTranslatef@12

; 282  : 	};
; 283  : 	
; 284  : //	glScalef( 0.2, 0.3, 0.4 );
; 285  : 
; 286  : 		glDisable( GL_TEXTURE_2D );

	push	3553					; 00000de1H
	call	ebx

; 287  : 		glEnable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4

; 288  : 		glBlendFunc( GL_ONE, GL_ONE );

	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8

; 289  : 
; 290  : 		// siluett/wireframe/nurbsliknande sak
; 291  : 		p_silu_rit( t );

	push	edi
	call	?p_silu_rit@@YAXM@Z			; p_silu_rit
	add	esp, 4

; 292  : 
; 293  : 	glLoadIdentity();

	call	esi

; 294  : 
; 295  : 		float h = 0.4f;
; 296  : 		if( t<3 ) {
; 297  : 			h = 0.4f + ( ((3-t)*(3-t))/9.0f);
; 298  : 		};
; 299  : 
; 300  : };

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_silu_run@@YAXPAUEVENT@@@Z ENDP			; p_silu_run
_TEXT	ENDS
PUBLIC	__real@8@3fffe666666666666800
PUBLIC	__real@4@4001c90fdb0000000000
;	COMDAT __real@8@3fffe666666666666800
; File E:\prj64k\glAss (eventad)\parts\p_silu.cpp
CONST	SEGMENT
__real@8@3fffe666666666666800 DQ 03ffccccccccccccdr ; 1.8
CONST	ENDS
;	COMDAT __real@4@4001c90fdb0000000000
CONST	SEGMENT
__real@4@4001c90fdb0000000000 DD 040c90fdbr	; 6.28319
CONST	ENDS
;	COMDAT ?psilufunc@@YAXMMPAM00MM@Z
_TEXT	SEGMENT
_model$ = 8
_time$ = 12
_px$ = 16
_py$ = 20
_pz$ = 24
_u$ = 28
_v$ = 32
?psilufunc@@YAXMMPAM00MM@Z PROC NEAR			; psilufunc, COMDAT

; 303  : 
; 304  : 
; 305  : 	float r2 = 0.05f + 0.05f*(float)cos( (time*v*3+model) ) + 0.05f*(float)sin( (time*v*1.8+model) );

	fld	DWORD PTR _time$[esp-4]

; 306  : 	float r = 0.2f + r2*(float)sin( (model+v+time)*(model+3) );
; 307  : //	r = 1.0f;
; 308  : 	
; 309  : 	*px = r * (float)cos( u*M_PI/0.5f );

	mov	eax, DWORD PTR _px$[esp-4]
	fmul	DWORD PTR _v$[esp-4]

; 310  : 	*pz = r * (float)sin( u*M_PI/0.5f );

	mov	ecx, DWORD PTR _pz$[esp-4]

; 311  : 	*py = v-0.5f;

	mov	edx, DWORD PTR _py$[esp-4]
	fld	ST(0)
	fmul	QWORD PTR __real@8@3fffe666666666666800
	fadd	DWORD PTR _model$[esp-4]
	fsin

; 312  : 
; 313  : 	*px *= 6;
; 314  : 	*py *= 6;
; 315  : 	*pz *= 6;

	fxch	ST(1)
	fmul	DWORD PTR __real@4@4000c000000000000000
	fadd	DWORD PTR _model$[esp-4]
	fcos
	fxch	ST(1)
	fxch	ST(1)
	faddp	ST(1), ST(0)
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR __real@4@3ffacccccd0000000000
	fld	DWORD PTR _model$[esp-4]
	fadd	DWORD PTR _time$[esp-4]
	fadd	DWORD PTR _v$[esp-4]
	fld	DWORD PTR _model$[esp-4]
	fadd	DWORD PTR __real@4@4000c000000000000000
	fmulp	ST(1), ST(0)
	fsin
	fst	DWORD PTR 8+[esp-4]
	fmulp	ST(1), ST(0)
	fadd	DWORD PTR __real@4@3ffccccccd0000000000
	fld	DWORD PTR _u$[esp-4]
	fmul	DWORD PTR __real@4@4001c90fdb0000000000
	fld	ST(0)
	fcos
	fmul	ST(0), ST(2)
	fstp	DWORD PTR [eax]
	fsin
	fmul	ST(0), ST(1)
	fstp	DWORD PTR [ecx]
	fstp	ST(0)
	fld	DWORD PTR _v$[esp-4]
	fsub	DWORD PTR __real@4@3ffe8000000000000000
	fstp	DWORD PTR [edx]
	fld	DWORD PTR [eax]
	fmul	DWORD PTR __real@4@4001c000000000000000
	fstp	DWORD PTR [eax]
	fld	DWORD PTR [edx]
	fmul	DWORD PTR __real@4@4001c000000000000000
	fstp	DWORD PTR [edx]
	fld	DWORD PTR [ecx]
	fmul	DWORD PTR __real@4@4001c000000000000000
	fstp	DWORD PTR [ecx]

; 316  : 
; 317  : };

	ret	0
?psilufunc@@YAXMMPAM00MM@Z ENDP				; psilufunc
_TEXT	ENDS
END
