	TITLE	E:\prj64k\glAss (eventad)\parts\p_twist3d.cpp
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
;	COMDAT ?p_twist3d_render_section@@YAXMMMMMMMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pt3d_funktionen_f@@YAMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_twist3d_render@@YAXMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_twist3d_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?p_twist3d_render_section@@YAXMMMMMMMMM@Z	; p_twist3d_render_section
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@3fffc916870000000000
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@4@3ffec916870000000000
PUBLIC	__real@4@3ffd8000000000000000
PUBLIC	__real@4@3ffe8000000000000000
EXTRN	__imp__glEnd@0:NEAR
EXTRN	__imp__glNormal3f@12:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	__fltused:NEAR
;	COMDAT __real@4@3fff8000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_twist3d.cpp
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@3fffc916870000000000
CONST	SEGMENT
__real@4@3fffc916870000000000 DD 03fc91687r	; 1.571
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@4@3ffec916870000000000
CONST	SEGMENT
__real@4@3ffec916870000000000 DD 03f491687r	; 0.7855
CONST	ENDS
;	COMDAT __real@4@3ffd8000000000000000
CONST	SEGMENT
__real@4@3ffd8000000000000000 DD 03e800000r	; 0.25
CONST	ENDS
;	COMDAT __real@4@3ffe8000000000000000
CONST	SEGMENT
__real@4@3ffe8000000000000000 DD 03f000000r	; 0.5
CONST	ENDS
;	COMDAT ?p_twist3d_render_section@@YAXMMMMMMMMM@Z
_TEXT	SEGMENT
_y0$ = 8
_b0$ = 12
_a0$ = 20
_a1$ = 24
_v0$ = 28
_v1$ = 32
_r0$ = 36
_r1$ = 40
_x$ = -96
_z$ = -128
_nx$ = -32
_nz$ = -64
_y1$ = -136
_i$ = -140
_aa0$17199 = -140
?p_twist3d_render_section@@YAXMMMMMMMMM@Z PROC NEAR	; p_twist3d_render_section, COMDAT

; 13   : void p_twist3d_render_section( float y0, float b0, float b1, float a0, float a1, float v0, float v1, float r0, float r1 ) {

	sub	esp, 140				; 0000008cH

; 14   : 
; 15   : 	float x[4][2];
; 16   : 	float z[4][2];
; 17   : 	float nx[4][2];
; 18   : 	float nz[4][2];
; 19   : 	float y1 = y0 + 1.0f;

	fld	DWORD PTR _y0$[esp+136]

; 20   : 
; 21   : 	for( int i=0; i<4; i++ ) {

	xor	eax, eax
	fadd	DWORD PTR __real@4@3fff8000000000000000
	mov	DWORD PTR _i$[esp+140], eax
	fstp	DWORD PTR _y1$[esp+140]
$L17196:

; 22   : 
; 23   : 		float aa0 = a0 + i*ASTEP;

	fild	DWORD PTR _i$[esp+140]
	inc	eax
	cmp	eax, 4
	fmul	DWORD PTR __real@4@3fffc916870000000000
	fld	ST(0)
	fadd	DWORD PTR _a0$[esp+136]
	fstp	DWORD PTR _aa0$17199[esp+140]

; 24   : 		float aa1 = a1 + i*ASTEP;

	fadd	DWORD PTR _a1$[esp+136]

; 25   : 		x[i][0] = r0*4.0f*(float)cos( aa0 );

	fld	DWORD PTR _aa0$17199[esp+140]
	fcos
	fmul	DWORD PTR _r0$[esp+136]
	fmul	DWORD PTR __real@4@40018000000000000000
	fstp	DWORD PTR _x$[esp+eax*8+132]

; 26   : 		z[i][0] = r0*4.0f*(float)sin( aa0 );

	fld	DWORD PTR _aa0$17199[esp+140]
	fsin
	fmul	DWORD PTR _r0$[esp+136]
	fmul	DWORD PTR __real@4@40018000000000000000
	fstp	DWORD PTR _z$[esp+eax*8+132]

; 27   : 		x[i][1] = r1*4.0f*(float)cos( aa1 );

	fld	ST(0)
	fcos
	fmul	DWORD PTR _r1$[esp+136]
	fmul	DWORD PTR __real@4@40018000000000000000
	fstp	DWORD PTR _x$[esp+eax*8+136]

; 28   : 		z[i][1] = r1*4.0f*(float)sin( aa1 );

	fld	ST(0)
	fsin
	fmul	DWORD PTR _r1$[esp+136]
	fmul	DWORD PTR __real@4@40018000000000000000
	fstp	DWORD PTR _z$[esp+eax*8+136]

; 29   : 		nx[i][0] = (float)cos( aa0-ASTEP2 );

	fld	DWORD PTR _aa0$17199[esp+140]
	mov	DWORD PTR _i$[esp+140], eax
	fsub	DWORD PTR __real@4@3ffec916870000000000
	fld	ST(0)
	fcos
	fstp	DWORD PTR _nx$[esp+eax*8+132]

; 30   : 		nz[i][0] = (float)sin( aa0-ASTEP2 );

	fsin
	fstp	DWORD PTR _nz$[esp+eax*8+132]

; 31   : 		nx[i][1] = (float)cos( aa1-ASTEP2 );

	fsub	DWORD PTR __real@4@3ffec916870000000000
	fld	ST(0)
	fcos
	fstp	DWORD PTR _nx$[esp+eax*8+136]

; 32   : 		nz[i][1] = (float)sin( aa1-ASTEP2 );

	fsin
	fstp	DWORD PTR _nz$[esp+eax*8+136]
	jl	$L17196
	push	ebx
	push	ebp
	push	esi
	push	edi

; 33   : 	};
; 34   : 
; 35   : 
; 36   : /*
; 37   : 
; 38   : 	glVertex3f( -4, y, 4 );
; 39   : 	glVertex3f(  4, y,-4 );
; 40   : 
; 41   : 	glVertex3f(  4, y, 4 );
; 42   : 	glVertex3f( -4, y,-4 );
; 43   : */
; 44   : 
; 45   : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4

; 46   : 
; 47   : 	glColor3f( b0, b0/2, b0/4 );

	fld	DWORD PTR _b0$[esp+152]
	fmul	DWORD PTR __real@4@3ffd8000000000000000
	mov	edx, DWORD PTR _b0$[esp+152]
	fstp	DWORD PTR -140+[esp+156]
	fld	DWORD PTR _b0$[esp+152]
	mov	eax, DWORD PTR -140+[esp+156]
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	push	eax
	fstp	DWORD PTR -132+[esp+160]
	mov	ecx, DWORD PTR -132+[esp+160]
	push	ecx
	push	edx
	call	DWORD PTR __imp__glColor3f@12

; 48   : 
; 49   : 	// A
; 50   : 	//glNormal3f( nx[0][0],0,nz[0][0] );
; 51   : 	glTexCoord2f( 0, v0 );

	mov	ebx, DWORD PTR _v0$[esp+152]
	mov	esi, DWORD PTR __imp__glTexCoord2f@8
	push	ebx
	push	0
	call	esi

; 52   : 	glVertex3f( x[0][0], y0, z[0][0] );

	mov	eax, DWORD PTR _z$[esp+156]
	mov	ebp, DWORD PTR _y0$[esp+152]
	mov	ecx, DWORD PTR _x$[esp+156]
	mov	edi, DWORD PTR __imp__glVertex3f@12
	push	eax
	push	ebp
	push	ecx
	call	edi

; 53   : 
; 54   : 	glTexCoord2f( 1, v0 );

	push	ebx
	push	1065353216				; 3f800000H
	call	esi

; 55   : 	glVertex3f( x[1][0], y0, z[1][0] );

	mov	edx, DWORD PTR _z$[esp+164]
	mov	eax, DWORD PTR _x$[esp+164]
	push	edx
	push	ebp
	push	eax
	call	edi

; 56   : 
; 57   : 	//glNormal3f( nx[0][1],0,nz[0][1] );
; 58   : 	glTexCoord2f( 1, v1 );

	mov	ecx, DWORD PTR _v1$[esp+152]
	push	ecx
	push	1065353216				; 3f800000H
	call	esi

; 59   : 	glVertex3f( x[1][1], y1, z[1][1] );

	mov	edx, DWORD PTR _z$[esp+168]
	mov	eax, DWORD PTR _y1$[esp+156]
	mov	ecx, DWORD PTR _x$[esp+168]
	push	edx
	push	eax
	push	ecx
	call	edi

; 60   : 
; 61   : 	glTexCoord2f( 0, v1 );

	mov	edx, DWORD PTR _v1$[esp+152]
	push	edx
	push	0
	call	esi

; 62   : 	glVertex3f( x[0][1], y1, z[0][1] );

	mov	eax, DWORD PTR _z$[esp+160]
	mov	ecx, DWORD PTR _y1$[esp+156]
	mov	edx, DWORD PTR _x$[esp+160]
	push	eax
	push	ecx
	push	edx
	call	edi

; 63   : 
; 64   : 	// B
; 65   : 
; 66   : 	glColor3f( b0/4, b0/2, b0 );

	mov	eax, DWORD PTR _b0$[esp+152]
	mov	ecx, DWORD PTR -132+[esp+156]
	mov	edx, DWORD PTR -140+[esp+156]
	push	eax
	push	ecx
	push	edx
	call	DWORD PTR __imp__glColor3f@12

; 67   : 
; 68   : //	glNormal3f( nx[1][0],0,nz[1][0] );
; 69   : 	glTexCoord2f( 0, v0 );

	push	ebx
	push	0
	call	esi

; 70   : 	glVertex3f( x[1][0], y0, z[1][0] );

	mov	eax, DWORD PTR _z$[esp+164]
	mov	ecx, DWORD PTR _x$[esp+164]
	push	eax
	push	ebp
	push	ecx
	call	edi

; 71   : 
; 72   : 	glTexCoord2f( 1, v0 );

	push	ebx
	push	1065353216				; 3f800000H
	call	esi

; 73   : 	glVertex3f( x[2][0], y0, z[2][0] );

	mov	edx, DWORD PTR _z$[esp+172]
	mov	eax, DWORD PTR _x$[esp+172]
	push	edx
	push	ebp
	push	eax
	call	edi

; 74   : 
; 75   : //	glNormal3f( nx[1][1],0,nz[1][1] );
; 76   : 	glTexCoord2f( 1, v1 );

	mov	ecx, DWORD PTR _v1$[esp+152]
	push	ecx
	push	1065353216				; 3f800000H
	call	esi

; 77   : 	glVertex3f( x[2][1], y1, z[2][1] );

	mov	edx, DWORD PTR _z$[esp+176]
	mov	eax, DWORD PTR _y1$[esp+156]
	mov	ecx, DWORD PTR _x$[esp+176]
	push	edx
	push	eax
	push	ecx
	call	edi

; 78   : 
; 79   : 	glTexCoord2f( 0, v1 );

	mov	edx, DWORD PTR _v1$[esp+152]
	push	edx
	push	0
	call	esi

; 80   : 	glVertex3f( x[1][1], y1, z[1][1] );

	mov	eax, DWORD PTR _z$[esp+168]
	mov	ecx, DWORD PTR _y1$[esp+156]
	mov	edx, DWORD PTR _x$[esp+168]
	push	eax
	push	ecx
	push	edx
	call	edi

; 81   : 
; 82   : 	// C
; 83   : 
; 84   : 	glColor3f( b0, b0/2, b0/4 );

	mov	eax, DWORD PTR -140+[esp+156]
	mov	ecx, DWORD PTR -132+[esp+156]
	mov	edx, DWORD PTR _b0$[esp+152]
	push	eax
	push	ecx
	push	edx
	call	DWORD PTR __imp__glColor3f@12

; 85   : 
; 86   : 	glNormal3f( nx[2][0],0,nz[2][0] );

	mov	eax, DWORD PTR _nz$[esp+172]
	mov	ecx, DWORD PTR _nx$[esp+172]
	push	eax
	push	0
	push	ecx
	call	DWORD PTR __imp__glNormal3f@12

; 87   : 	glTexCoord2f( 0, v0 );

	push	ebx
	push	0
	call	esi

; 88   : 	glVertex3f( x[2][0], y0, z[2][0] );

	mov	edx, DWORD PTR _z$[esp+172]
	mov	eax, DWORD PTR _x$[esp+172]
	push	edx
	push	ebp
	push	eax
	call	edi

; 89   : 
; 90   : 	glTexCoord2f( 1, v0 );

	push	ebx
	push	1065353216				; 3f800000H
	call	esi

; 91   : 	glVertex3f( x[3][0], y0, z[3][0] );

	mov	ecx, DWORD PTR _z$[esp+180]
	mov	edx, DWORD PTR _x$[esp+180]
	push	ecx
	push	ebp
	push	edx
	call	edi

; 92   : 
; 93   : 	glNormal3f( nx[2][1],0,nz[2][1] );

	mov	eax, DWORD PTR _nz$[esp+176]
	mov	ecx, DWORD PTR _nx$[esp+176]
	push	eax
	push	0
	push	ecx
	call	DWORD PTR __imp__glNormal3f@12

; 94   : 
; 95   : 	glTexCoord2f( 1, v1 );

	mov	edx, DWORD PTR _v1$[esp+152]
	push	edx
	push	1065353216				; 3f800000H
	call	esi

; 96   : 	glVertex3f( x[3][1], y1, z[3][1] );

	mov	eax, DWORD PTR _z$[esp+184]
	mov	ecx, DWORD PTR _y1$[esp+156]
	mov	edx, DWORD PTR _x$[esp+184]
	push	eax
	push	ecx
	push	edx
	call	edi

; 97   : 	glTexCoord2f( 0, v1 );

	mov	eax, DWORD PTR _v1$[esp+152]
	push	eax
	push	0
	call	esi

; 98   : 	glVertex3f( x[2][1], y1, z[2][1] );

	mov	ecx, DWORD PTR _z$[esp+176]
	mov	edx, DWORD PTR _y1$[esp+156]
	mov	eax, DWORD PTR _x$[esp+176]
	push	ecx
	push	edx
	push	eax
	call	edi

; 99   : 
; 100  : 	// D
; 101  : 
; 102  : 	glColor3f( b0/4, b0/2, b0 );

	mov	ecx, DWORD PTR _b0$[esp+152]
	mov	edx, DWORD PTR -132+[esp+156]
	mov	eax, DWORD PTR -140+[esp+156]
	push	ecx
	push	edx
	push	eax
	call	DWORD PTR __imp__glColor3f@12

; 103  : 
; 104  : //	glNormal3f( nx[3][0],0,nz[3][0] );
; 105  : 	glTexCoord2f( 0, v0 );

	push	ebx
	push	0
	call	esi

; 106  : 	glVertex3f( x[3][0], y0, z[3][0] );

	mov	ecx, DWORD PTR _z$[esp+180]
	mov	edx, DWORD PTR _x$[esp+180]
	push	ecx
	push	ebp
	push	edx
	call	edi

; 107  : 
; 108  : 	glTexCoord2f( 1, v0 );

	push	ebx
	push	1065353216				; 3f800000H
	call	esi

; 109  : 	glVertex3f( x[0][0], y0, z[0][0] );

	mov	eax, DWORD PTR _z$[esp+156]
	mov	ecx, DWORD PTR _x$[esp+156]
	push	eax
	push	ebp
	push	ecx
	call	edi

; 110  : //	glNormal3f( nx[3][1],0,nz[3][1] );
; 111  : 	glTexCoord2f( 1, v1 );

	mov	ebx, DWORD PTR _v1$[esp+152]
	push	ebx
	push	1065353216				; 3f800000H
	call	esi

; 112  : 	glVertex3f( x[0][1], y1, z[0][1] );

	mov	edx, DWORD PTR _z$[esp+160]
	mov	ebp, DWORD PTR _y1$[esp+156]
	mov	eax, DWORD PTR _x$[esp+160]
	push	edx
	push	ebp
	push	eax
	call	edi

; 113  : 	glTexCoord2f( 0, v1 );

	push	ebx
	push	0
	call	esi

; 114  : 	glVertex3f( x[3][1], y1, z[3][1] );

	mov	ecx, DWORD PTR _z$[esp+184]
	mov	edx, DWORD PTR _x$[esp+184]
	push	ecx
	push	ebp
	push	edx
	call	edi

; 115  : 
; 116  : 	glEnd();

	call	DWORD PTR __imp__glEnd@0
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 117  : };

	add	esp, 140				; 0000008cH
	ret	0
?p_twist3d_render_section@@YAXMMMMMMMMM@Z ENDP		; p_twist3d_render_section
_TEXT	ENDS
PUBLIC	?pt3d_funktionen_f@@YAMMM@Z			; pt3d_funktionen_f
PUBLIC	__real@4@4004a800000000000000
PUBLIC	__real@4@40048000000000000000
PUBLIC	__real@4@3ffdaaaaaaaaaaaaa800
PUBLIC	__real@4@4000c000000000000000
;	COMDAT __real@4@4004a800000000000000
; File E:\prj64k\glAss (eventad)\parts\p_twist3d.cpp
CONST	SEGMENT
__real@4@4004a800000000000000 DD 042280000r	; 42
CONST	ENDS
;	COMDAT __real@4@40048000000000000000
CONST	SEGMENT
__real@4@40048000000000000000 DD 042000000r	; 32
CONST	ENDS
;	COMDAT __real@4@3ffdaaaaaaaaaaaaa800
CONST	SEGMENT
__real@4@3ffdaaaaaaaaaaaaa800 DD 03eaaaaabr	; 0.333333
CONST	ENDS
;	COMDAT __real@4@4000c000000000000000
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT ?pt3d_funktionen_f@@YAMMM@Z
_TEXT	SEGMENT
_t$ = 8
_offset$ = 12
?pt3d_funktionen_f@@YAMMM@Z PROC NEAR			; pt3d_funktionen_f, COMDAT

; 138  : 	float f; 
; 139  : 	f = t/1;
; 140  : 	f -= offset/4;
; 141  : 	f += (float)sin( t-offset+42 );

	fld	DWORD PTR _t$[esp-4]
	fsub	DWORD PTR _offset$[esp-4]
	fadd	DWORD PTR __real@4@4004a800000000000000
	fsin
	fld	DWORD PTR _t$[esp-4]
	fld	DWORD PTR _offset$[esp-4]
	fmul	DWORD PTR __real@4@3ffd8000000000000000
	fsubp	ST(1), ST(0)
	faddp	ST(1), ST(0)

; 142  : 	//f -= 3*(float)cos( t/2+offset+4 );
; 143  : 	f -= 2*(float)sin( (t+32)/3-offset );

	fld	DWORD PTR _t$[esp-4]
	fadd	DWORD PTR __real@4@40048000000000000000
	fmul	DWORD PTR __real@4@3ffdaaaaaaaaaaaaa800
	fsub	DWORD PTR _offset$[esp-4]
	fsin

; 144  : 
; 145  : 	//if( offset>0.5 ) f = -f;
; 146  : 	//f += cos( t+offset*2 );
; 147  : 	//f -= sin( t-offset*2 );
; 148  : 	f *= 3;
; 149  : 	return f;

	fxch	ST(1)
	fxch	ST(1)
	fadd	ST(0), ST(0)
	fsubp	ST(1), ST(0)
	fmul	DWORD PTR __real@4@4000c000000000000000

; 150  : };

	ret	0
?pt3d_funktionen_f@@YAMMM@Z ENDP			; pt3d_funktionen_f
_TEXT	ENDS
PUBLIC	?p_twist3d_render@@YAXMM@Z			; p_twist3d_render
PUBLIC	__real@4@3ff9ea0ea0ea0ea0e800
PUBLIC	__real@4@3ffb8888888888888800
PUBLIC	__real@4@3ffc8000000000000000
;	COMDAT __real@4@3ff9ea0ea0ea0ea0e800
; File E:\prj64k\glAss (eventad)\parts\p_twist3d.cpp
CONST	SEGMENT
__real@4@3ff9ea0ea0ea0ea0e800 DD 03cea0ea1r	; 0.0285714
CONST	ENDS
;	COMDAT __real@4@3ffb8888888888888800
CONST	SEGMENT
__real@4@3ffb8888888888888800 DD 03d888889r	; 0.0666667
CONST	ENDS
;	COMDAT __real@4@3ffc8000000000000000
CONST	SEGMENT
__real@4@3ffc8000000000000000 DD 03e000000r	; 0.125
CONST	ENDS
;	COMDAT ?p_twist3d_render@@YAXMM@Z
_TEXT	SEGMENT
_t$ = 8
_bb$ = 12
_angle$ = -400
_rad$ = -800
_i$ = -812
?p_twist3d_render@@YAXMM@Z PROC NEAR			; p_twist3d_render, COMDAT

; 152  : void p_twist3d_render( float t, float bb ) {

	sub	esp, 812				; 0000032cH
	push	esi

; 153  : 
; 154  : 	float angle[100];
; 155  : 	float rad[100];
; 156  : 	int i;
; 157  : 
; 158  : 	for( i=0; i<100; i++ ) {

	xor	esi, esi
	push	edi
	mov	edi, DWORD PTR _t$[esp+816]
	mov	DWORD PTR _i$[esp+820], esi
$L17223:

; 159  : 		float a = pt3d_funktionen_f( t, (float)i/35.0f );

	fild	DWORD PTR _i$[esp+820]
	push	ecx
	fst	DWORD PTR -812+[esp+824]
	fmul	DWORD PTR __real@4@3ff9ea0ea0ea0ea0e800
	fstp	DWORD PTR [esp]
	push	edi
	call	?pt3d_funktionen_f@@YAMMM@Z		; pt3d_funktionen_f

; 160  : 		float r = 1.0f + 0.5f*(float)cos( (float)(a+i+t)/15.0f );
; 161  : 		angle[i] = a;

	fst	DWORD PTR _angle$[esp+esi*4+828]

; 162  : 		rad[i] = r;
; 163  : 	};
; 164  : 
; 165  : 	for( i=-40; i<40; i++ ) {

	fadd	DWORD PTR -812+[esp+828]
	add	esp, 8
	inc	esi
	cmp	esi, 100				; 00000064H
	fadd	DWORD PTR _t$[esp+816]
	mov	DWORD PTR _i$[esp+820], esi
	fmul	DWORD PTR __real@4@3ffb8888888888888800
	fcos
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _rad$[esp+esi*4+816]
	jl	SHORT $L17223
	mov	edi, -40				; ffffffd8H
	mov	DWORD PTR _i$[esp+820], edi
	xor	esi, esi
$L17231:

; 166  : 
; 167  : 		float b0 = 1.0f / (1+(float)fabs(i));
; 168  : 		float b1 = 1.0f / (1+(float)fabs(i+1));
; 169  : 
; 170  : 		b0 *= bb;
; 171  : 		b1 *= bb;
; 172  : 
; 173  : 		float a0 = angle[i+50];
; 174  : 		float a1 = angle[i+51];
; 175  : 		float r0 = rad[i+50];
; 176  : 		float r1 = rad[i+51];
; 177  : 
; 178  : 		float v0 = (float)(i+40)/8.0f;
; 179  : 		float v1 = (float)(i+41)/8.0f;
; 180  : 
; 181  : 		p_twist3d_render_section( (float)i, b0, b1, a0, a1, v0, v1, r0, r1 );

	fld	DWORD PTR _rad$[esp+esi+864]
	push	ecx
	lea	eax, DWORD PTR [edi+40]
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _rad$[esp+esi+864]
	push	ecx
	lea	ecx, DWORD PTR [eax+1]
	mov	DWORD PTR -804+[esp+828], ecx
	fstp	DWORD PTR [esp]
	fild	DWORD PTR -804+[esp+828]
	push	ecx
	mov	DWORD PTR -808+[esp+832], eax
	add	eax, -39				; ffffffd9H
	fmul	DWORD PTR __real@4@3ffc8000000000000000
	fstp	DWORD PTR [esp]
	fild	DWORD PTR -808+[esp+832]
	push	ecx
	mov	DWORD PTR -808+[esp+836], eax
	fmul	DWORD PTR __real@4@3ffc8000000000000000
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _angle$[esp+esi+880]
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _angle$[esp+esi+880]
	push	ecx
	fstp	DWORD PTR [esp]
	fild	DWORD PTR -808+[esp+844]
	push	ecx
	fabs
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR _bb$[esp+844]
	fstp	DWORD PTR [esp]
	fild	DWORD PTR _i$[esp+848]
	push	ecx
	fabs
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR _bb$[esp+848]
	fstp	DWORD PTR [esp]
	fild	DWORD PTR _i$[esp+852]
	push	ecx
	fstp	DWORD PTR [esp]
	call	?p_twist3d_render_section@@YAXMMMMMMMMM@Z ; p_twist3d_render_section
	add	esp, 36					; 00000024H
	inc	edi
	add	esi, 4
	cmp	esi, 320				; 00000140H
	mov	DWORD PTR _i$[esp+820], edi
	jl	$L17231
	pop	edi
	pop	esi

; 182  : 
; 183  : 	};
; 184  : };

	add	esp, 812				; 0000032cH
	ret	0
?p_twist3d_render@@YAXMM@Z ENDP				; p_twist3d_render
_TEXT	ENDS
PUBLIC	?p_twist3d_run@@YAXPAUEVENT@@@Z			; p_twist3d_run
PUBLIC	__real@4@3ffcccccccccccccd000
PUBLIC	__real@4@3ffc9249249249249000
PUBLIC	__real@4@3ffcaaaaaaaaaaaaa800
PUBLIC	__real@8@40038800000000000000
PUBLIC	__real@8@40039800000000000000
PUBLIC	__real@4@4004f000000000000000
PUBLIC	__real@4@40058c00000000000000
PUBLIC	__real@8@40039000000000000000
PUBLIC	__real@4@40068400000000000000
EXTRN	_gluPerspective@32:NEAR
EXTRN	_gluLookAt@72:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glRotatef@16:NEAR
EXTRN	__imp__glScalef@12:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glTranslatef@12:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__imp__glClearDepth@8:NEAR
EXTRN	__ftol:NEAR
;	COMDAT __real@4@3ffcccccccccccccd000
; File E:\prj64k\glAss (eventad)\parts\p_twist3d.cpp
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
;	COMDAT __real@8@40038800000000000000
CONST	SEGMENT
__real@8@40038800000000000000 DQ 04031000000000000r ; 17
CONST	ENDS
;	COMDAT __real@8@40039800000000000000
CONST	SEGMENT
__real@8@40039800000000000000 DQ 04033000000000000r ; 19
CONST	ENDS
;	COMDAT __real@4@4004f000000000000000
CONST	SEGMENT
__real@4@4004f000000000000000 DD 042700000r	; 60
CONST	ENDS
;	COMDAT __real@4@40058c00000000000000
CONST	SEGMENT
__real@4@40058c00000000000000 DD 0428c0000r	; 70
CONST	ENDS
;	COMDAT __real@8@40039000000000000000
CONST	SEGMENT
__real@8@40039000000000000000 DQ 04032000000000000r ; 18
CONST	ENDS
;	COMDAT __real@4@40068400000000000000
CONST	SEGMENT
__real@4@40068400000000000000 DD 043040000r	; 132
CONST	ENDS
;	COMDAT ?p_twist3d_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -24
?p_twist3d_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_twist3d_run, COMDAT

; 186  : void p_twist3d_run( EVENT *e ) {

	push	ebp
	mov	ebp, esp
	and	esp, -8					; fffffff8H
	sub	esp, 28					; 0000001cH
	push	ebx
	push	esi
	push	edi

; 187  : 
; 188  : 	float t;
; 189  : 	//int i;
; 190  : 
; 191  : 	glMatrixMode( GL_PROJECTION );

	mov	edi, DWORD PTR __imp__glMatrixMode@4
	push	5889					; 00001701H
	call	edi

; 192  : 	glLoadIdentity();

	mov	ebx, DWORD PTR __imp__glLoadIdentity@0
	call	ebx

; 193  : 	glTranslatef( 0, 0, -1.0f );

	push	-1082130432				; bf800000H
	push	0
	push	0
	call	DWORD PTR __imp__glTranslatef@12

; 194  : 
; 195  : 	glMatrixMode( GL_MODELVIEW );

	push	5888					; 00001700H
	call	edi

; 196  : 	glLoadIdentity();

	call	ebx

; 197  : 	//glTranslatef( 0, 0, -1 );
; 198  : 	//glEnable( GL_DEPTH_TEST );
; 199  : 	//glDepthFunc( GL_LESS );
; 200  : 	//glCullFace( GL_FRONT );
; 201  : /*
; 202  : 	float l_a[] = { 0.3f, 0.7f, 1.0f };
; 203  : 	glLightfv( GL_LIGHT0, GL_AMBIENT, (float*)&l_a );
; 204  : 
; 205  : 	float l_d[] = { 0.3f, 0.7f, 1.0f };
; 206  : 	glLightfv( GL_LIGHT0, GL_DIFFUSE, (float*)&l_d );
; 207  : 
; 208  : 	float l_s[] = { 0.7f, 0.85f, 1.0f };
; 209  : 	glLightfv( GL_LIGHT0, GL_SPECULAR, (float*)&l_s );
; 210  : 
; 211  : 	float l_p[] = { 0.7f, 0.85f, 1.0f };
; 212  : 	glLightfv( GL_LIGHT0, GL_POSITION, (float*)&l_p );
; 213  : 
; 214  : 	float l_d2[] = { 0.7f, 0.85f, 1.0f };
; 215  : 	glLightfv( GL_LIGHT0, GL_SPOT_DIRECTION, (float*)&l_d2 );
; 216  : 
; 217  : 	glEnable( GL_LIGHT0 );
; 218  : 	glEnable( GL_LIGHTING );
; 219  : 
; 220  : 	//glCullFace( GL_BACK );
; 221  : 	glDisable( GL_CULL_FACE );
; 222  : */
; 223  : 	glClearDepth( 1 );

	push	1072693248				; 3ff00000H
	push	0
	call	DWORD PTR __imp__glClearDepth@8

; 224  : 	glDisable( GL_DEPTH_TEST );

	mov	esi, DWORD PTR __imp__glDisable@4
	push	2929					; 00000b71H
	call	esi

; 225  : 	glDisable( GL_ALPHA_TEST );

	push	3008					; 00000bc0H
	call	esi

; 226  : 
; 227  : //	glHint( GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST );
; 228  : 
; 229  : 
; 230  : 	t = e->localTime;

	mov	eax, DWORD PTR _e$[ebp]
	mov	ecx, DWORD PTR [eax+4]

; 231  : 
; 232  : 		/*float _if = (float)fmod( _t, 1.0f );
; 233  : 		if( _if<0.25f ) {
; 234  : 			t = _if * 2.0f;
; 235  : 		} else {
; 236  : 			t = 0.5f + (_if-0.25f)*0.2f;
; 237  : 		};
; 238  : 		//t = 0;
; 239  : 		t += (int)(_t-0.5f);*/
; 240  : 
; 241  : 		//t = t + (0.31f*(float)cos(t*3.142/0.5f));
; 242  : 
; 243  : //		b = glaBeat();
; 244  : 		
; 245  : 	glDisable( GL_DEPTH_TEST );

	push	2929					; 00000b71H
	mov	DWORD PTR _t$[esp+44], ecx
	call	esi

; 246  : 		glMatrixMode( GL_PROJECTION );

	push	5889					; 00001701H
	call	edi

; 247  : 		glTexEnvi( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12

; 248  : 		glLoadIdentity();

	call	ebx

; 249  : 
; 250  : 		gluPerspective( 75, 4/3, 1, 100 );

	push	1079574528				; 40590000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1079164928				; 4052c000H
	push	0
	call	_gluPerspective@32

; 251  : 
; 252  : 		switch( (int)((t/4)-0.5f) ) {

	fld	DWORD PTR _t$[esp+40]
	fmul	DWORD PTR __real@4@3ffd8000000000000000
	fld	ST(0)
	fsub	DWORD PTR __real@4@3ffe8000000000000000
	call	__ftol
	dec	eax
	cmp	eax, 5
	ja	$L17262
	jmp	DWORD PTR $L17357[eax*4]
$L17256:

; 253  : 			case 1:
; 254  : 			case 5:
; 255  : 				gluLookAt( 19*cos(t/5), 0*cos(t/3), 17*sin(t/6), 1*cos(t/3), 1*cos(t/4), 1*sin(t/7), 0, 1, 0 );

	fld	DWORD PTR _t$[esp+40]
	push	0
	fmul	DWORD PTR __real@4@3ffdaaaaaaaaaaaaa800
	push	0
	push	1072693248				; 3ff00000H
	push	0
	fcos
	push	0
	push	0
	sub	esp, 8
	sub	esp, 8
	fstp	QWORD PTR -16+[esp+80]
	fld	DWORD PTR _t$[esp+80]
	fmul	DWORD PTR __real@4@3ffcccccccccccccd000
	mov	edx, DWORD PTR -16+[esp+84]
	mov	eax, DWORD PTR -16+[esp+80]
	fstp	DWORD PTR -20+[esp+80]
	fld	DWORD PTR _t$[esp+80]
	fmul	DWORD PTR __real@4@3ffc9249249249249000
	fsin
	fstp	QWORD PTR [esp+8]
	fcos
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[esp+80]
	fmul	DWORD PTR __real@4@3ffcaaaaaaaaaaaaa800
	push	edx
	push	eax
	sub	esp, 8
	fsin
	fmul	QWORD PTR __real@8@40038800000000000000
	fstp	QWORD PTR [esp]
	push	0
	fld	DWORD PTR -20+[esp+100]
	push	0
	fcos
	sub	esp, 8
	fmul	QWORD PTR __real@8@40039800000000000000
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72

; 256  : 				glRotatef( 105, (float)sin(t/8), (float)sin(t/5), (float)cos(t/3) );

	fld	QWORD PTR -16+[esp+40]
	push	ecx
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR -20+[esp+48]
	fsin
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[esp+48]
	fmul	DWORD PTR __real@4@3ffc8000000000000000
	push	ecx
	fsin
	fstp	DWORD PTR [esp]
	push	1121058816				; 42d20000H

; 257  : 				break;

	jmp	$L17356
$L17260:

; 258  : //				// flyg...
; 259  : //				gluLookAt( 10-t*10, 70-t*4, 1, 0, 60-t*4, 0, 0, 1, 0 );
; 260  : //				break;
; 261  : 			case 2:
; 262  : 			case 6:
; 263  : 				// flyg...
; 264  : 				gluLookAt( 1*cos(t*3), 70-t*4, 1, 0, 60-t*4, 0, 0, 1, 0 );

	push	0
	fstp	ST(0)
	fld	DWORD PTR _t$[esp+44]
	push	0
	fmul	DWORD PTR __real@4@40018000000000000000
	push	1072693248				; 3ff00000H
	fld	DWORD PTR __real@4@4004f000000000000000
	push	0
	push	0
	push	0
	fsub	ST(0), ST(1)
	push	0
	push	0
	sub	esp, 8
	fstp	QWORD PTR [esp]
	push	0
	fld	DWORD PTR __real@4@40058c00000000000000
	push	0
	push	1072693248				; 3ff00000H
	fsub	ST(0), ST(1)
	push	0
	sub	esp, 8
	fstp	QWORD PTR [esp]
	sub	esp, 8
	fstp	ST(0)
	fld	DWORD PTR _t$[esp+112]
	fmul	DWORD PTR __real@4@4000c000000000000000
	fcos
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72

; 265  : 				break;

	jmp	$L17253
$L17261:

; 266  : 			case 4:
; 267  : 				gluLookAt( 17*cos(t/3), 0*cos(t/5), 18*sin(t/4), 1*cos(t/4), 1*cos(t/3), 1*sin(t/5), 0, 1, 0 );

	fld	DWORD PTR _t$[esp+40]
	push	0
	fmul	DWORD PTR __real@4@3ffdaaaaaaaaaaaaa800
	push	0
	push	1072693248				; 3ff00000H
	push	0
	fcos
	push	0
	push	0
	sub	esp, 8
	fstp	QWORD PTR -16+[esp+72]
	fld	DWORD PTR _t$[esp+72]
	fmul	DWORD PTR __real@4@3ffcccccccccccccd000
	mov	ecx, DWORD PTR -16+[esp+76]
	mov	edx, DWORD PTR -16+[esp+72]
	fsin
	fstp	QWORD PTR [esp]
	push	ecx
	push	edx
	fld	ST(0)
	sub	esp, 8
	fcos
	sub	esp, 8
	fstp	QWORD PTR [esp+8]
	fsin
	fmul	QWORD PTR __real@8@40039000000000000000
	fstp	QWORD PTR [esp]
	push	0
	fld	QWORD PTR -16+[esp+100]
	push	0
	fmul	QWORD PTR __real@8@40038800000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72

; 268  : 				break;

	jmp	$L17253
$L17262:

; 269  : 			default:
; 270  : 				gluLookAt( 18*sin(t/4), 0*cos(t/6), 19*sin(t/3), 1*cos(t/5), 1*cos(t/7), 1*sin(t/4), 0, 1, 0 );

	fsin
	push	0
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	0
	push	0
	fstp	QWORD PTR -8+[esp+64]
	fld	DWORD PTR _t$[esp+64]
	fmul	DWORD PTR __real@4@3ffcccccccccccccd000
	mov	eax, DWORD PTR -8+[esp+68]
	mov	ecx, DWORD PTR -8+[esp+64]
	push	eax
	push	ecx
	fstp	DWORD PTR -20+[esp+72]
	sub	esp, 8
	fld	DWORD PTR _t$[esp+80]
	sub	esp, 8
	fmul	DWORD PTR __real@4@3ffdaaaaaaaaaaaaa800
	sub	esp, 8
	fstp	DWORD PTR -16+[esp+96]
	fld	DWORD PTR _t$[esp+96]
	fmul	DWORD PTR __real@4@3ffc9249249249249000
	fcos
	fstp	QWORD PTR [esp+16]
	fld	DWORD PTR -20+[esp+96]
	fcos
	fstp	QWORD PTR [esp+8]
	fld	DWORD PTR -16+[esp+96]
	fsin
	fmul	QWORD PTR __real@8@40039800000000000000
	fstp	QWORD PTR [esp]
	push	0
	fld	QWORD PTR -8+[esp+100]
	push	0
	fmul	QWORD PTR __real@8@40039000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72

; 271  : 				glRotatef( -45, (float)sin(t/8), (float)sin(t/5), (float)cos(t/3) );

	fld	DWORD PTR -16+[esp+40]
	push	ecx
	fcos
	fstp	DWORD PTR [esp]
	fld	DWORD PTR -20+[esp+44]
	fsin
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _t$[esp+48]
	fmul	DWORD PTR __real@4@3ffc8000000000000000
	push	ecx
	fsin
	fstp	DWORD PTR [esp]
	push	-1036779520				; c2340000H
$L17356:
	call	DWORD PTR __imp__glRotatef@16
$L17253:

; 272  : 				break;
; 273  : 		};
; 274  : 
; 275  : 		//gluLookAt( 2,2,2, 0,0,0, 0,1,0 );
; 276  : 		/*
; 277  : 		if( t<3 ) {
; 278  : 			glTranslatef( 0, 0, 10-t*3.3333f );
; 279  : 		};
; 280  : 
; 281  : 		if( t>21 ) {
; 282  : 			glTranslatef( 0, 0, (t-21)*(t-21)*3 );
; 283  : 		};
; 284  : 		*/
; 285  : 
; 286  : 
; 287  : 		glMatrixMode( GL_MODELVIEW );

	push	5888					; 00001700H
	call	edi

; 288  : 		glLoadIdentity();

	call	ebx

; 289  : 
; 290  : 		glEnable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4

; 291  : 		glBlendFunc( GL_ONE, GL_ONE );

	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8

; 292  : 		glaSetTexture( GIF_TWISTER2 );

	push	117					; 00000075H
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture

; 293  : 
; 294  : 		p_twist3d_render( t, 1.0f );

	mov	edx, DWORD PTR _t$[esp+44]
	push	1065353216				; 3f800000H
	push	edx
	call	?p_twist3d_render@@YAXMM@Z		; p_twist3d_render
	add	esp, 12					; 0000000cH

; 295  : 
; 296  : //		glRotatef( 321, cos(t),sin(t),0 );
; 297  : 		glScalef( 4, 4, 4 );

	push	1082130432				; 40800000H
	push	1082130432				; 40800000H
	push	1082130432				; 40800000H
	call	DWORD PTR __imp__glScalef@12

; 298  : 
; 299  : 		p_twist3d_render( t+132, 0.25f );

	fld	DWORD PTR _t$[esp+40]
	fadd	DWORD PTR __real@4@40068400000000000000
	push	1048576000				; 3e800000H
	push	ecx
	fstp	DWORD PTR [esp]
	call	?p_twist3d_render@@YAXMM@Z		; p_twist3d_render
	add	esp, 8

; 300  : 
; 301  : //	glDisable( GL_DEPTH_TEST );
; 302  : /*		glDisable( GL_FOG );
; 303  : 		glDisable( GL_LIGHTING );
; 304  : 
; 305  : 		glEnable( GL_BLEND );
; 306  : 		glBlendFunc( GL_ONE, GL_ONE );
; 307  : 
; 308  : */
; 309  : /*
; 310  : 
; 311  : 		for( i=0; i<10; i++ ) {
; 312  : 			float t2 = t-(float)i/3.0f;
; 313  : 			float x = 1 * (float)cos( t2*3.142/2 );
; 314  : 			float y = 1 * (float)sin( t2*3.142/4 );
; 315  : 			float z = 1 * (float)cos( t2*3.142/3 );
; 316  : 			p_cubes_render_flow( t+i, x,y,z, 1,0.3f,0.2f );
; 317  : 			p_cubes_render_flow( t+i, y,z,x, 0.3f,1,0.2f );
; 318  : 			p_cubes_render_flow( t+i, z,x,y, 0.2f,0.3f,1 );
; 319  : 		};
; 320  : */
; 321  : 	
; 322  : 	glDisable( GL_FOG );

	push	2912					; 00000b60H
	call	esi

; 323  : 	glDisable( GL_LIGHT0 );

	push	16384					; 00004000H
	call	esi

; 324  : 	glDisable( GL_LIGHTING );

	push	2896					; 00000b50H
	call	esi

; 325  : 	
; 326  : };

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	3
$L17357:
	DD	$L17256
	DD	$L17260
	DD	$L17262
	DD	$L17261
	DD	$L17256
	DD	$L17260
?p_twist3d_run@@YAXPAUEVENT@@@Z ENDP			; p_twist3d_run
_TEXT	ENDS
END
