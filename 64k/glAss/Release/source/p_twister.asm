	TITLE	E:\prj64k\glAss (eventad)\parts\p_twister.cpp
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
;	COMDAT ?pt_funktionen_f@@YAMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?ptffff@@YAMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pt_draw@@YAXM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_twister_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?pt_x@@3PAY04MA					; pt_x
PUBLIC	?pt_b@@3PAY04MA					; pt_b
PUBLIC	?pt_c@@3PAY02MA					; pt_c
_BSS	SEGMENT
?pt_x@@3PAY04MA DD 022bH DUP (?)			; pt_x
?pt_b@@3PAY04MA DD 022bH DUP (?)			; pt_b
?pt_c@@3PAY02MA DD 0fH DUP (?)				; pt_c
_BSS	ENDS
PUBLIC	?pt_funktionen_f@@YAMMM@Z			; pt_funktionen_f
PUBLIC	__real@4@4004a800000000000000
PUBLIC	__real@4@3ffd8000000000000000
PUBLIC	__real@4@40048000000000000000
PUBLIC	__real@4@3ffdaaaaaaaaaaaaa800
PUBLIC	__real@4@4000c000000000000000
EXTRN	__fltused:NEAR
;	COMDAT __real@4@4004a800000000000000
; File E:\prj64k\glAss (eventad)\parts\p_twister.cpp
CONST	SEGMENT
__real@4@4004a800000000000000 DD 042280000r	; 42
CONST	ENDS
;	COMDAT __real@4@3ffd8000000000000000
CONST	SEGMENT
__real@4@3ffd8000000000000000 DD 03e800000r	; 0.25
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
;	COMDAT ?pt_funktionen_f@@YAMMM@Z
_TEXT	SEGMENT
_t$ = 8
_offset$ = 12
?pt_funktionen_f@@YAMMM@Z PROC NEAR			; pt_funktionen_f, COMDAT

; 12   : 	float f; 
; 13   : 	f = t/1;
; 14   : 	f -= offset/4;
; 15   : 	f += (float)sin( t-offset+42 );

	fld	DWORD PTR _t$[esp-4]
	fsub	DWORD PTR _offset$[esp-4]
	fadd	DWORD PTR __real@4@4004a800000000000000
	fsin
	fld	DWORD PTR _t$[esp-4]
	fld	DWORD PTR _offset$[esp-4]
	fmul	DWORD PTR __real@4@3ffd8000000000000000
	fsubp	ST(1), ST(0)
	faddp	ST(1), ST(0)

; 16   : 	//f -= 3*(float)cos( t/2+offset+4 );
; 17   : 	f -= 2*(float)sin( (t+32)/3-offset );

	fld	DWORD PTR _t$[esp-4]
	fadd	DWORD PTR __real@4@40048000000000000000
	fmul	DWORD PTR __real@4@3ffdaaaaaaaaaaaaa800
	fsub	DWORD PTR _offset$[esp-4]
	fsin

; 18   : 
; 19   : 	//if( offset>0.5 ) f = -f;
; 20   : 	//f += cos( t+offset*2 );
; 21   : 	//f -= sin( t-offset*2 );
; 22   : 	f *= 3;
; 23   : 	return f;

	fxch	ST(1)
	fxch	ST(1)
	fadd	ST(0), ST(0)
	fsubp	ST(1), ST(0)
	fmul	DWORD PTR __real@4@4000c000000000000000

; 24   : };

	ret	0
?pt_funktionen_f@@YAMMM@Z ENDP				; pt_funktionen_f
_TEXT	ENDS
PUBLIC	?ptffff@@YAMM@Z					; ptffff
PUBLIC	__real@4@3fffc000000000000000
PUBLIC	__real@4@3fff860a920000000000
PUBLIC	__real@4@4000a000000000000000
PUBLIC	__real@4@40028000000000000000
PUBLIC	__real@4@4002a000000000000000
PUBLIC	__real@4@3ffec90fdb0000000000
PUBLIC	__real@4@bffe8000000000000000
;	COMDAT __real@4@3fffc000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_twister.cpp
CONST	SEGMENT
__real@4@3fffc000000000000000 DD 03fc00000r	; 1.5
CONST	ENDS
;	COMDAT __real@4@3fff860a920000000000
CONST	SEGMENT
__real@4@3fff860a920000000000 DD 03f860a92r	; 1.0472
CONST	ENDS
;	COMDAT __real@4@4000a000000000000000
CONST	SEGMENT
__real@4@4000a000000000000000 DD 040200000r	; 2.5
CONST	ENDS
;	COMDAT __real@4@40028000000000000000
CONST	SEGMENT
__real@4@40028000000000000000 DD 041000000r	; 8
CONST	ENDS
;	COMDAT __real@4@4002a000000000000000
CONST	SEGMENT
__real@4@4002a000000000000000 DD 041200000r	; 10
CONST	ENDS
;	COMDAT __real@4@3ffec90fdb0000000000
CONST	SEGMENT
__real@4@3ffec90fdb0000000000 DD 03f490fdbr	; 0.785398
CONST	ENDS
;	COMDAT __real@4@bffe8000000000000000
CONST	SEGMENT
__real@4@bffe8000000000000000 DD 0bf000000r	; -0.5
CONST	ENDS
;	COMDAT ?ptffff@@YAMM@Z
_TEXT	SEGMENT
_time$ = 8
?ptffff@@YAMM@Z PROC NEAR				; ptffff, COMDAT

; 27   : 	if( time < 1.5f ) {

	fld	DWORD PTR _time$[esp-4]
	fcomp	DWORD PTR __real@4@3fffc000000000000000

; 28   : 		return -2.5f + 2.0f*(float)sin( time * M_PI / 3.0f );

	fld	DWORD PTR _time$[esp-4]
	fnstsw	ax
	test	ah, 1
	je	SHORT $L17192
	fmul	DWORD PTR __real@4@3fff860a920000000000
	fsin
	fadd	ST(0), ST(0)
	fsub	DWORD PTR __real@4@4000a000000000000000

; 41   : };

	ret	0
$L17192:

; 29   : 		//return 0.65f;
; 30   : 	};
; 31   : 
; 32   : 	if( time > 8.0f ) {

	fcomp	DWORD PTR __real@4@40028000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17194

; 33   : 		return -2.5f + 2.0f*(float)sin((10.0f-time) * M_PI / 4.0f );

	fld	DWORD PTR __real@4@4002a000000000000000
	fsub	DWORD PTR _time$[esp-4]
	fmul	DWORD PTR __real@4@3ffec90fdb0000000000
	fsin
	fadd	ST(0), ST(0)
	fsub	DWORD PTR __real@4@4000a000000000000000

; 41   : };

	ret	0
$L17194:

; 34   : 		//return 0.65f;
; 35   : 	};
; 36   : 
; 37   : 	//if( time > 8 ) {
; 38   : 	//return 0.35f;
; 39   : 	//};
; 40   : 	return -0.5f;

	fld	DWORD PTR __real@4@bffe8000000000000000

; 41   : };

	ret	0
?ptffff@@YAMM@Z ENDP					; ptffff
_TEXT	ENDS
PUBLIC	?pt_draw@@YAXM@Z				; pt_draw
PUBLIC	__real@4@3ffeb333330000000000
PUBLIC	__real@4@3ff8da740da740da7800
PUBLIC	__real@4@3ffc99999a0000000000
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@3fffa0d97c0000000000
PUBLIC	__real@4@3ffdcccccd0000000000
PUBLIC	__real@4@3ff9a3d70a3d70a3d800
PUBLIC	__real@4@3ff8a3d70a3d70a3d800
PUBLIC	__real@4@3fff99999a0000000000
PUBLIC	__real@4@3ffccccccd0000000000
PUBLIC	__real@4@3fff8000000000000000
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glEnd@0:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
;	COMDAT __real@4@3ffeb333330000000000
; File E:\prj64k\glAss (eventad)\parts\p_twister.cpp
CONST	SEGMENT
__real@4@3ffeb333330000000000 DD 03f333333r	; 0.7
CONST	ENDS
;	COMDAT __real@4@3ff8da740da740da7800
CONST	SEGMENT
__real@4@3ff8da740da740da7800 DD 03c5a740er	; 0.0133333
CONST	ENDS
;	COMDAT __real@4@3ffc99999a0000000000
CONST	SEGMENT
__real@4@3ffc99999a0000000000 DD 03e19999ar	; 0.15
CONST	ENDS
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@3fffa0d97c0000000000
CONST	SEGMENT
__real@4@3fffa0d97c0000000000 DD 03fa0d97cr	; 1.25664
CONST	ENDS
;	COMDAT __real@4@3ffdcccccd0000000000
CONST	SEGMENT
__real@4@3ffdcccccd0000000000 DD 03ecccccdr	; 0.4
CONST	ENDS
;	COMDAT __real@4@3ff9a3d70a3d70a3d800
CONST	SEGMENT
__real@4@3ff9a3d70a3d70a3d800 DD 03ca3d70ar	; 0.02
CONST	ENDS
;	COMDAT __real@4@3ff8a3d70a3d70a3d800
CONST	SEGMENT
__real@4@3ff8a3d70a3d70a3d800 DD 03c23d70ar	; 0.01
CONST	ENDS
;	COMDAT __real@4@3fff99999a0000000000
CONST	SEGMENT
__real@4@3fff99999a0000000000 DD 03f99999ar	; 1.2
CONST	ENDS
;	COMDAT __real@4@3ffccccccd0000000000
CONST	SEGMENT
__real@4@3ffccccccd0000000000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT ?pt_draw@@YAXM@Z
_TEXT	SEGMENT
_t$ = 8
_i$ = -52
_j$ = -44
_y1$17219 = -20
_y2$17221 = -24
_xd1$17223 = -36
_xd2$17225 = -32
_x1$17230 = -40
_x2$17231 = -16
_x3$17232 = -28
_x4$17233 = -12
_y1$17248 = -28
_y2$17250 = -20
_xd1$17252 = -24
_xd2$17254 = -16
_x1$17259 = -40
_x2$17260 = -12
_x3$17261 = -8
_x4$17262 = -4
_v1$17264 = -32
_v2$17266 = -36
?pt_draw@@YAXM@Z PROC NEAR				; pt_draw, COMDAT

; 43   : void pt_draw( float t ) {

	sub	esp, 52					; 00000034H

; 44   : 
; 45   : 	int i, j;
; 46   : 
; 47   : 	pt_c[0][0] = 0.7f; pt_c[0][1] = 0.7f; pt_c[0][2] = 0.5f;
; 48   : 	pt_c[1][0] = 0.5f; pt_c[1][1] = 0.0f; pt_c[1][2] = 0.8f;
; 49   : 	pt_c[2][0] = 0.8f; pt_c[2][1] = 0.8f; pt_c[2][2] = 0.5f;
; 50   : 	pt_c[3][0] = 0.0f; pt_c[3][1] = 0.5f; pt_c[3][2] = 0.8f;
; 51   : 	pt_c[4][0] = 0.7f; pt_c[4][1] = 0.5f; pt_c[4][2] = 0.6f;
; 52   : 
; 53   : 	for( i=0; i<110; i++ ) {
; 54   : 		float a = pt_funktionen_f( t, /*t-(float)i/45.0f,*/ (float)i/75.0f );
; 55   : 		
; 56   : 		float r = 0.3f + 0.15f*(float)cos( a-t*3 );

	fld	DWORD PTR _t$[esp+48]
	push	ebx
	fmul	DWORD PTR __real@4@4000c000000000000000
	push	ebp
	push	esi
	xor	ebx, ebx
	push	edi
	fstp	DWORD PTR -16+[esp+68]
	mov	edi, DWORD PTR _t$[esp+64]
	mov	DWORD PTR ?pt_c@@3PAY02MA, 1060320051	; 3f333333H
	mov	DWORD PTR ?pt_c@@3PAY02MA+4, 1060320051	; 3f333333H
	mov	DWORD PTR ?pt_c@@3PAY02MA+8, 1056964608	; 3f000000H
	mov	DWORD PTR ?pt_c@@3PAY02MA+12, 1056964608 ; 3f000000H
	mov	DWORD PTR ?pt_c@@3PAY02MA+16, 0
	mov	DWORD PTR ?pt_c@@3PAY02MA+20, 1061997773 ; 3f4ccccdH
	mov	DWORD PTR ?pt_c@@3PAY02MA+24, 1061997773 ; 3f4ccccdH
	mov	DWORD PTR ?pt_c@@3PAY02MA+28, 1061997773 ; 3f4ccccdH
	mov	DWORD PTR ?pt_c@@3PAY02MA+32, 1056964608 ; 3f000000H
	mov	DWORD PTR ?pt_c@@3PAY02MA+36, 0
	mov	DWORD PTR ?pt_c@@3PAY02MA+40, 1056964608 ; 3f000000H
	mov	DWORD PTR ?pt_c@@3PAY02MA+44, 1061997773 ; 3f4ccccdH
	mov	DWORD PTR ?pt_c@@3PAY02MA+48, 1060320051 ; 3f333333H
	mov	DWORD PTR ?pt_c@@3PAY02MA+52, 1056964608 ; 3f000000H
	mov	DWORD PTR ?pt_c@@3PAY02MA+56, 1058642330 ; 3f19999aH
	mov	DWORD PTR _i$[esp+68], ebx
	xor	esi, esi
$L17201:
	fild	DWORD PTR _i$[esp+68]
	push	ecx
	fmul	DWORD PTR __real@4@3ff8da740da740da7800
	fstp	DWORD PTR [esp]
	push	edi
	call	?pt_funktionen_f@@YAMMM@Z		; pt_funktionen_f
	fld	ST(0)
	fsub	DWORD PTR -16+[esp+76]
	add	esp, 8

; 57   : 		
; 58   : 		for( j=0; j<NSIDES; j++ ) {

	xor	ecx, ecx
	mov	DWORD PTR _j$[esp+68], ecx
	fcos
	mov	eax, esi
	fmul	DWORD PTR __real@4@3ffc99999a0000000000
	fadd	DWORD PTR __real@4@3ffd99999a0000000000
$L17208:

; 59   : 			float a2 = a + M_PI * (float)j / ((float)NSIDES/2.0f);

	fild	DWORD PTR _j$[esp+68]
	inc	ecx
	add	eax, 4
	cmp	ecx, 5
	fmul	DWORD PTR __real@4@3fffa0d97c0000000000
	mov	DWORD PTR _j$[esp+68], ecx
	fadd	ST(0), ST(2)

; 60   : 			pt_x[i][j] = r*(float)sin( a2 );

	fld	ST(0)
	fsin
	fmul	ST(0), ST(2)
	fstp	DWORD PTR ?pt_x@@3PAY04MA[eax-4]

; 61   : 			pt_b[i][j] = 0.7f + 0.4f * (float)cos( a2 );

	fcos
	fmul	DWORD PTR __real@4@3ffdcccccd0000000000
	fadd	DWORD PTR __real@4@3ffeb333330000000000
	fstp	DWORD PTR ?pt_b@@3PAY04MA[eax-4]
	jl	SHORT $L17208
	mov	edx, DWORD PTR _i$[esp+68]
	fstp	ST(0)
	inc	edx
	fstp	ST(0)
	cmp	eax, 2200				; 00000898H
	mov	DWORD PTR _i$[esp+68], edx
	mov	esi, eax
	jl	$L17201

; 62   : 		};
; 63   : 	};
; 64   : 
; 65   : 	glDisable( GL_TEXTURE_2D );

	push	3553					; 00000de1H
	call	DWORD PTR __imp__glDisable@4

; 66   : 	glEnable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4

; 67   : 	glBlendFunc( GL_ZERO, GL_ONE_MINUS_SRC_COLOR );

	push	769					; 00000301H
	push	ebx
	call	DWORD PTR __imp__glBlendFunc@8

; 68   : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4
	mov	esi, DWORD PTR __imp__glVertex3f@12
	mov	DWORD PTR -44+[esp+68], ebx
	mov	ebx, -49				; ffffffcfH
	mov	DWORD PTR -52+[esp+68], ebx
	mov	edi, OFFSET FLAT:?pt_x@@3PAY04MA+20
	jmp	SHORT $L17216
$L17378:

; 62   : 		};
; 63   : 	};
; 64   : 
; 65   : 	glDisable( GL_TEXTURE_2D );

	mov	ebx, DWORD PTR -52+[esp+68]
$L17216:

; 69   : 
; 70   : 	for( i=0; i<100; i++ ) {
; 71   : 
; 72   : 		float y1 = (float)(i-50) / 50.0f;

	lea	eax, DWORD PTR [ebx-1]
	mov	DWORD PTR -16+[esp+68], eax
	fild	DWORD PTR -16+[esp+68]

; 73   : 		float y2 = (float)(i+1-50) / 50.0f;
; 74   : 
; 75   : 		float xd1 = ptffff(t-((float)i/100.0f));

	lea	ecx, DWORD PTR [ebx+49]
	mov	DWORD PTR -16+[esp+68], ecx
	push	ecx
	fmul	DWORD PTR __real@4@3ff9a3d70a3d70a3d800
	fstp	DWORD PTR _y1$17219[esp+72]
	fild	DWORD PTR -52+[esp+72]
	fmul	DWORD PTR __real@4@3ff9a3d70a3d70a3d800
	fstp	DWORD PTR _y2$17221[esp+72]
	fild	DWORD PTR -16+[esp+72]
	fmul	DWORD PTR __real@4@3ff8a3d70a3d70a3d800
	fsubr	DWORD PTR _t$[esp+68]
	fstp	DWORD PTR [esp]
	call	?ptffff@@YAMM@Z				; ptffff
	fstp	DWORD PTR _xd1$17223[esp+72]

; 76   : 		float xd2 = ptffff(t-((float)(i+1)/100.0f));

	add	ebx, 50					; 00000032H
	mov	DWORD PTR -16+[esp+72], ebx
	fild	DWORD PTR -16+[esp+72]
	fmul	DWORD PTR __real@4@3ff8a3d70a3d70a3d800
	fsubr	DWORD PTR _t$[esp+68]
	fstp	DWORD PTR [esp]
	call	?ptffff@@YAMM@Z				; ptffff
	mov	ebx, DWORD PTR _y1$17219[esp+72]
	fstp	DWORD PTR _xd2$17225[esp+72]
	mov	ebp, DWORD PTR _y2$17221[esp+72]
	add	esp, 4
	mov	DWORD PTR -48+[esp+68], 1
$L17227:

; 77   : 
; 78   : 		for( j=0; j<NSIDES; j++ ) {
; 79   : 
; 80   : 			float x1 = pt_x[i][j];

	mov	edx, DWORD PTR [edi-20]

; 81   : 			float x2 = pt_x[i][(j+1)%NSIDES];

	mov	eax, DWORD PTR -48+[esp+68]
	mov	DWORD PTR _x1$17230[esp+68], edx
	cdq
	mov	ecx, 5
	idiv	ecx
	mov	ecx, DWORD PTR -44+[esp+68]

; 82   : 			float x3 = pt_x[i+1][(j+1)%NSIDES];
; 83   : 			float x4 = pt_x[i+1][j];

	mov	eax, DWORD PTR [edi]
	mov	DWORD PTR _x4$17233[esp+68], eax
	add	edx, ecx
	shl	edx, 2
	fld	DWORD PTR ?pt_x@@3PAY04MA[edx]
	mov	edx, DWORD PTR ?pt_x@@3PAY04MA[edx+20]
	fst	DWORD PTR _x2$17231[esp+68]
	mov	DWORD PTR _x3$17232[esp+68], edx

; 84   : 
; 85   : 			int j2 = j;//loat)j + (int)t;
; 86   : 
; 87   : 			float v1 = 1 - ((float)i / 100.0f);
; 88   : 			float v2 = 1 - ((float)(i+1) / 100.0f);
; 89   : 
; 90   : 			float b1 = pt_b[i][j];
; 91   : 			//float b2 = pt_b[i+1][j];
; 92   : 
; 93   : 			if( x2 <= x1 ) {

	fcomp	DWORD PTR _x1$17230[esp+68]
	fnstsw	ax
	test	ah, 65					; 00000041H
	je	$L17228

; 94   : 
; 95   : 				/*if( j==0 ) glColor3f( 0.33, 1, 0 );
; 96   : 				if( j==1 ) glColor3f( 0, 1, 0.66 );
; 97   : 				if( j==2 ) glColor3f( 0, 0, 1 );*/
; 98   : 
; 99   : 				float u1 = (float)j2*0.25f;
; 100  : 				float u2 = (float)(j2+1)*0.25f;
; 101  : 
; 102  : 				//glColor3f( cos((float)j/3)*b1, sin((float)j/2)*b1, cos((float)j)*b1 );
; 103  : 				glColor3f( 0.3f, 0.28f, 0.26f );

	push	1048911544				; 3e851eb8H
	push	1049582633				; 3e8f5c29H
	push	1050253722				; 3e99999aH
	call	DWORD PTR __imp__glColor3f@12

; 104  : 
; 105  : 				glVertex3f( xd1+x1*1.2f+0.2f, y1, 0 );

	fld	DWORD PTR _x1$17230[esp+68]
	fmul	DWORD PTR __real@4@3fff99999a0000000000
	push	0
	push	ebx
	push	ecx
	fadd	DWORD PTR _xd1$17223[esp+80]
	fadd	DWORD PTR __real@4@3ffccccccd0000000000
	fstp	DWORD PTR [esp]
	call	esi

; 106  : 				glVertex3f( xd1+x2*1.2f+0.2f, y1, 0 );

	fld	DWORD PTR _x2$17231[esp+68]
	push	0
	fmul	DWORD PTR __real@4@3fff99999a0000000000
	push	ebx
	push	ecx
	fadd	DWORD PTR _xd1$17223[esp+80]
	fadd	DWORD PTR __real@4@3ffccccccd0000000000
	fstp	DWORD PTR [esp]
	call	esi

; 107  : 				glVertex3f( xd2+x3*1.2f+0.2f, y2, 0 );

	fld	DWORD PTR _x3$17232[esp+68]
	push	0
	fmul	DWORD PTR __real@4@3fff99999a0000000000
	push	ebp
	push	ecx
	fadd	DWORD PTR _xd2$17225[esp+80]
	fadd	DWORD PTR __real@4@3ffccccccd0000000000
	fstp	DWORD PTR [esp]
	call	esi

; 108  : 				glVertex3f( xd2+x4*1.2f+0.2f, y2, 0 );

	fld	DWORD PTR _x4$17233[esp+68]
	push	0
	fmul	DWORD PTR __real@4@3fff99999a0000000000
	push	ebp
	push	ecx
	fadd	DWORD PTR _xd2$17225[esp+80]
	fadd	DWORD PTR __real@4@3ffccccccd0000000000
	fstp	DWORD PTR [esp]
	call	esi
$L17228:
	mov	eax, DWORD PTR -48+[esp+68]
	add	edi, 4
	inc	eax
	mov	DWORD PTR -48+[esp+68], eax
	dec	eax
	cmp	eax, 5
	jl	$L17227
	mov	eax, DWORD PTR -52+[esp+68]
	mov	edx, DWORD PTR -44+[esp+68]
	inc	eax
	mov	DWORD PTR -52+[esp+68], eax
	add	edx, 5
	add	eax, 49					; 00000031H
	cmp	eax, 100				; 00000064H
	mov	DWORD PTR -44+[esp+68], edx
	jl	$L17378

; 109  : 
; 110  : 			};
; 111  : 
; 112  : 		};
; 113  : 
; 114  : 	};
; 115  : 
; 116  : 	glEnd();

	call	DWORD PTR __imp__glEnd@0

; 117  : 
; 118  : 	glDisable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glDisable@4

; 119  : 	glaSetTexture( GIF_TWISTER2 );

	push	117					; 00000075H
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4

; 120  : 	glTexEnvi( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12

; 121  : 
; 122  : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4
	mov	ebx, DWORD PTR __imp__glTexCoord2f@8
	mov	eax, 1
	mov	DWORD PTR -52+[esp+68], eax
	mov	DWORD PTR -48+[esp+68], 0
	mov	ebp, OFFSET FLAT:?pt_x@@3PAY04MA+20
	jmp	SHORT $L17245
$L17379:

; 109  : 
; 110  : 			};
; 111  : 
; 112  : 		};
; 113  : 
; 114  : 	};
; 115  : 
; 116  : 	glEnd();

	mov	eax, DWORD PTR -52+[esp+68]
$L17245:

; 123  : 
; 124  : 	for( i=0; i<100; i++ ) {
; 125  : 
; 126  : 		float y1 = (float)(i-50) / 50.0f;

	lea	ecx, DWORD PTR [eax-50]
	mov	DWORD PTR -16+[esp+68], ecx
	dec	ecx
	mov	DWORD PTR -12+[esp+68], ecx
	fild	DWORD PTR -12+[esp+68]

; 127  : 		float y2 = (float)(i+1-50) / 50.0f;
; 128  : 
; 129  : 		float xd1 = ptffff(t-((float)i/100.0f));

	dec	eax
	mov	DWORD PTR -12+[esp+68], eax
	push	ecx
	fmul	DWORD PTR __real@4@3ff9a3d70a3d70a3d800
	fstp	DWORD PTR _y1$17248[esp+72]
	fild	DWORD PTR -16+[esp+72]
	fmul	DWORD PTR __real@4@3ff9a3d70a3d70a3d800
	fstp	DWORD PTR _y2$17250[esp+72]
	fild	DWORD PTR -12+[esp+72]
	fmul	DWORD PTR __real@4@3ff8a3d70a3d70a3d800
	fstp	DWORD PTR -32+[esp+72]
	fld	DWORD PTR _t$[esp+68]
	fsub	DWORD PTR -32+[esp+72]
	fstp	DWORD PTR [esp]
	call	?ptffff@@YAMM@Z				; ptffff
	fstp	DWORD PTR _xd1$17252[esp+72]

; 130  : 		float xd2 = ptffff(t-((float)(i+1)/100.0f));

	fild	DWORD PTR -52+[esp+72]
	fmul	DWORD PTR __real@4@3ff8a3d70a3d70a3d800
	fstp	DWORD PTR -36+[esp+72]
	fld	DWORD PTR _t$[esp+68]
	fsub	DWORD PTR -36+[esp+72]
	fstp	DWORD PTR [esp]
	call	?ptffff@@YAMM@Z				; ptffff
	fstp	DWORD PTR _xd2$17254[esp+72]
	add	esp, 4

; 131  : 
; 132  : 		for( j=0; j<NSIDES; j++ ) {
; 133  : 
; 134  : 			float x1 = pt_x[i][j];
; 135  : 			float x2 = pt_x[i][(j+1)%NSIDES];
; 136  : 			float x3 = pt_x[i+1][(j+1)%NSIDES];
; 137  : 			float x4 = pt_x[i+1][j];
; 138  : 
; 139  : 			int j2 = j;//loat)j + (int)t;
; 140  : 
; 141  : 			float v1 = 1 - ((float)i / 100.0f);

	fld	DWORD PTR __real@4@3fff8000000000000000
	mov	DWORD PTR -44+[esp+68], 1
	fsub	DWORD PTR -32+[esp+68]
	mov	edi, OFFSET FLAT:?pt_c@@3PAY02MA+4
	fstp	DWORD PTR _v1$17264[esp+68]

; 142  : 			float v2 = 1 - ((float)(i+1) / 100.0f);

	fld	DWORD PTR __real@4@3fff8000000000000000
	fsub	DWORD PTR -36+[esp+68]
	fstp	DWORD PTR _v2$17266[esp+68]
$L17256:
	mov	ecx, DWORD PTR [ebp-20]
	mov	eax, DWORD PTR -44+[esp+68]
	mov	DWORD PTR _x1$17259[esp+68], ecx
	cdq
	mov	ecx, 5
	idiv	ecx
	mov	ecx, DWORD PTR -48+[esp+68]
	mov	eax, DWORD PTR [ebp]
	mov	DWORD PTR _x4$17262[esp+68], eax
	add	edx, ecx
	shl	edx, 2
	fld	DWORD PTR ?pt_x@@3PAY04MA[edx]
	mov	edx, DWORD PTR ?pt_x@@3PAY04MA[edx+20]
	fst	DWORD PTR _x2$17260[esp+68]
	mov	DWORD PTR _x3$17261[esp+68], edx

; 143  : 
; 144  : 			float b1 = pt_b[i][j];
; 145  : 			//float b2 = pt_b[i+1][j];
; 146  : 
; 147  : 			if( x2 <= x1 ) {

	fcomp	DWORD PTR _x1$17259[esp+68]
	fnstsw	ax
	test	ah, 65					; 00000041H
	je	$L17257

; 148  : 
; 149  : 				/*if( j==0 ) glColor3f( 0.33, 1, 0 );
; 150  : 				if( j==1 ) glColor3f( 0, 1, 0.66 );
; 151  : 				if( j==2 ) glColor3f( 0, 0, 1 );*/
; 152  : 
; 153  : 				float u1 = (float)j2*0.25f;
; 154  : 				float u2 = (float)(j2+1)*0.25f;
; 155  : 
; 156  : 				u1 = 0;
; 157  : 				u2 = 1;
; 158  : 
; 159  : 				//glColor3f( cos((float)j/3)*b1, sin((float)j/2)*b1, cos((float)j)*b1 );
; 160  : 				glColor3f( pt_c[j][0], pt_c[j][1], pt_c[j][2] );

	mov	ecx, DWORD PTR [edi+4]
	mov	edx, DWORD PTR [edi]
	mov	eax, DWORD PTR [edi-4]
	push	ecx
	push	edx
	push	eax
	call	DWORD PTR __imp__glColor3f@12

; 161  : 
; 162  : 				glTexCoord2f( u1, v1 );

	mov	ecx, DWORD PTR _v1$17264[esp+68]
	push	ecx
	push	0
	call	ebx

; 163  : 				glVertex3f( x1+xd1, y1, 0 );

	fld	DWORD PTR _x1$17259[esp+68]
	mov	edx, DWORD PTR _y1$17248[esp+68]
	fadd	DWORD PTR _xd1$17252[esp+68]
	push	0
	push	edx
	push	ecx
	fstp	DWORD PTR [esp]
	call	esi

; 164  : 
; 165  : 				glTexCoord2f( u2, v1 );

	mov	eax, DWORD PTR _v1$17264[esp+68]
	push	eax
	push	1065353216				; 3f800000H
	call	ebx

; 166  : 				glVertex3f( x2+xd1, y1, 0 );

	fld	DWORD PTR _x2$17260[esp+68]
	mov	ecx, DWORD PTR _y1$17248[esp+68]
	fadd	DWORD PTR _xd1$17252[esp+68]
	push	0
	push	ecx
	push	ecx
	fstp	DWORD PTR [esp]
	call	esi

; 167  : 
; 168  : 				glTexCoord2f( u2, v2 );

	mov	edx, DWORD PTR _v2$17266[esp+68]
	push	edx
	push	1065353216				; 3f800000H
	call	ebx

; 169  : 				glVertex3f( x3+xd2, y2, 0 );

	fld	DWORD PTR _x3$17261[esp+68]
	mov	eax, DWORD PTR _y2$17250[esp+68]
	fadd	DWORD PTR _xd2$17254[esp+68]
	push	0
	push	eax
	push	ecx
	fstp	DWORD PTR [esp]
	call	esi

; 170  : 
; 171  : 				glTexCoord2f( u1, v2 );

	mov	ecx, DWORD PTR _v2$17266[esp+68]
	push	ecx
	push	0
	call	ebx

; 172  : 				glVertex3f( x4+xd2, y2, 0 );

	fld	DWORD PTR _x4$17262[esp+68]
	mov	edx, DWORD PTR _y2$17250[esp+68]
	fadd	DWORD PTR _xd2$17254[esp+68]
	push	0
	push	edx
	push	ecx
	fstp	DWORD PTR [esp]
	call	esi
$L17257:
	mov	eax, DWORD PTR -44+[esp+68]
	add	ebp, 4
	inc	eax
	add	edi, 12					; 0000000cH
	mov	DWORD PTR -44+[esp+68], eax
	dec	eax
	cmp	eax, 5
	jl	$L17256
	mov	edi, DWORD PTR -48+[esp+68]
	mov	eax, DWORD PTR -52+[esp+68]
	add	edi, 5
	inc	eax
	mov	DWORD PTR -52+[esp+68], eax
	dec	eax
	cmp	eax, 100				; 00000064H
	mov	DWORD PTR -48+[esp+68], edi
	jl	$L17379

; 173  : 
; 174  : 			};
; 175  : 
; 176  : 		};
; 177  : 
; 178  : 	};
; 179  : 
; 180  : 	glEnd();

	call	DWORD PTR __imp__glEnd@0
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 181  : 
; 182  : };

	add	esp, 52					; 00000034H
	ret	0
?pt_draw@@YAXM@Z ENDP					; pt_draw
_TEXT	ENDS
PUBLIC	?p_twister_run@@YAXPAUEVENT@@@Z			; p_twister_run
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glTranslatef@12:NEAR
EXTRN	__imp__glClearColor@16:NEAR
EXTRN	__imp__glClearDepth@8:NEAR
;	COMDAT ?p_twister_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
?p_twister_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_twister_run, COMDAT

; 217  : void p_twister_run( EVENT *e ) {

	push	esi

; 218  : 
; 219  : 	float t;
; 220  : 
; 221  : 	glMatrixMode( GL_PROJECTION );

	mov	esi, DWORD PTR __imp__glMatrixMode@4
	push	edi
	push	5889					; 00001701H
	call	esi

; 222  : 	glLoadIdentity();

	mov	edi, DWORD PTR __imp__glLoadIdentity@0
	call	edi

; 223  : 	glTranslatef( 0, 0, -1 );

	push	-1082130432				; bf800000H
	push	0
	push	0
	call	DWORD PTR __imp__glTranslatef@12

; 224  : 
; 225  : 	glMatrixMode( GL_MODELVIEW );

	push	5888					; 00001700H
	call	esi

; 226  : 	glLoadIdentity();

	call	edi

; 227  : 
; 228  : 	glDisable( GL_CULL_FACE );

	mov	esi, DWORD PTR __imp__glDisable@4
	push	2884					; 00000b44H
	call	esi

; 229  : 
; 230  : 	glClearColor( 1, 1, 1, 1 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glClearColor@16

; 231  : 
; 232  : 	glDisable( GL_BLEND );

	push	3042					; 00000be2H
	call	esi

; 233  : 	glClearDepth( 20 );

	push	1077149696				; 40340000H
	push	0
	call	DWORD PTR __imp__glClearDepth@8

; 234  : 	glDisable( GL_DEPTH_TEST );

	push	2929					; 00000b71H
	call	esi

; 235  : 
; 236  : 	glDisable( GL_FOG );

	push	2912					; 00000b60H
	call	esi

; 237  : 
; 238  : 	//glDisable( GL_DEPTH_TEST );
; 239  : 
; 240  : 	t = e->localTime;
; 241  : 
; 242  : 		//pt_draw_dudes( t );
; 243  : 
; 244  : 		pt_draw( t );

	mov	eax, DWORD PTR _e$[esp+4]
	fld	DWORD PTR [eax+4]
	push	ecx
	fstp	DWORD PTR [esp]
	call	?pt_draw@@YAXM@Z			; pt_draw
	add	esp, 4

; 245  : 
; 246  : 	glDisable( GL_FOG );

	push	2912					; 00000b60H
	call	esi
	pop	edi
	pop	esi

; 247  : 	
; 248  : };

	ret	0
?p_twister_run@@YAXPAUEVENT@@@Z ENDP			; p_twister_run
_TEXT	ENDS
END
