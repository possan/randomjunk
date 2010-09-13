	TITLE	E:\prj64k\glAss (eventad)\parts\p_klask.cpp
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
;	COMDAT ?p_klask_init@@YAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_klask_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?klr@@3PAY02MA					; klr
_BSS	SEGMENT
?klr@@3PAY02MA DD 04bH DUP (?)				; klr
_BSS	ENDS
PUBLIC	?p_klask_init@@YAXXZ				; p_klask_init
PUBLIC	__real@4@3ffcaaaaab0000000000
PUBLIC	__real@4@3ffa8888890000000000
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@3ffa8888888888888800
PUBLIC	__real@4@3ffe8000000000000000
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@3fff860a920000000000
PUBLIC	__real@4@3ffc9249249249249000
PUBLIC	__real@4@3ffcee23b7dda9e25800
PUBLIC	__real@4@3ffacccccd0000000000
PUBLIC	__real@4@3ffd8e38e3cd6e9e2000
EXTRN	__imp__glEndList@0:NEAR
EXTRN	__fltused:NEAR
EXTRN	__imp__glNewList@8:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	__imp__rand:NEAR
EXTRN	__imp__srand:NEAR
;	COMDAT __real@4@3ffcaaaaab0000000000
; File E:\prj64k\glAss (eventad)\parts\p_klask.cpp
CONST	SEGMENT
__real@4@3ffcaaaaab0000000000 DD 03e2aaaabr	; 0.166667
CONST	ENDS
;	COMDAT __real@4@3ffa8888890000000000
CONST	SEGMENT
__real@4@3ffa8888890000000000 DD 03d088889r	; 0.0333333
CONST	ENDS
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@3ffa8888888888888800
CONST	SEGMENT
__real@4@3ffa8888888888888800 DD 03d088889r	; 0.0333333
CONST	ENDS
;	COMDAT __real@4@3ffe8000000000000000
CONST	SEGMENT
__real@4@3ffe8000000000000000 DD 03f000000r	; 0.5
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@3fff860a920000000000
CONST	SEGMENT
__real@4@3fff860a920000000000 DD 03f860a92r	; 1.0472
CONST	ENDS
;	COMDAT __real@4@3ffc9249249249249000
CONST	SEGMENT
__real@4@3ffc9249249249249000 DD 03e124925r	; 0.142857
CONST	ENDS
;	COMDAT __real@4@3ffcee23b7dda9e25800
CONST	SEGMENT
__real@4@3ffcee23b7dda9e25800 DD 03e6e23b8r	; 0.232558
CONST	ENDS
;	COMDAT __real@4@3ffacccccd0000000000
CONST	SEGMENT
__real@4@3ffacccccd0000000000 DD 03d4ccccdr	; 0.05
CONST	ENDS
;	COMDAT __real@4@3ffd8e38e3cd6e9e2000
CONST	SEGMENT
__real@4@3ffd8e38e3cd6e9e2000 DD 03e8e38e4r	; 0.277778
CONST	ENDS
;	COMDAT ?p_klask_init@@YAXXZ
_TEXT	SEGMENT
_lxc$ = -44
_xc$ = -64
_lyc$ = -40
_yc$ = -60
_lzc$ = -36
_zc$ = -56
_lvc$ = -32
_vc$ = -52
_lra$ = -68
_ra$ = -72
_r$ = -28
_b$17543 = -8
_c$17547 = -4
_x1$17551 = -4
_y1$17554 = -8
_x2$17557 = -16
_y2$17560 = -20
_u1$17563 = -12
_u2$17566 = -24
?p_klask_init@@YAXXZ PROC NEAR				; p_klask_init, COMDAT

; 21   : void p_klask_init() {

	sub	esp, 72					; 00000048H
	push	ebx
	push	ebp
	push	esi
	push	edi

; 22   : //	glaUploadGif( KLASK_PIC, (unsigned char *)&gif_rost, 123 );
; 23   : 
; 24   : 	glNewList( KLASK_CYLINDER, GL_COMPILE );

	push	4864					; 00001300H
	push	82					; 00000052H
	call	DWORD PTR __imp__glNewList@8

; 25   : 
; 26   : 	srand( 12345 );

	push	12345					; 00003039H
	call	DWORD PTR __imp__srand
	mov	edi, DWORD PTR __imp__rand
	add	esp, 4
	mov	esi, OFFSET FLAT:?klr@@3PAY02MA+4
$L17519:

; 27   : 	for( int k=0; k<NOBJECTS; k++ ) {
; 28   : 		klr[k][0] = (float)(rand()%360);

	call	edi
	cdq
	mov	ecx, 360				; 00000168H
	idiv	ecx
	mov	DWORD PTR -4+[esp+88], edx
	fild	DWORD PTR -4+[esp+88]
	fstp	DWORD PTR [esi-4]

; 29   : 		klr[k][1] = (float)(rand()%360);

	call	edi
	cdq
	mov	ecx, 360				; 00000168H
	idiv	ecx
	mov	DWORD PTR -4+[esp+88], edx
	fild	DWORD PTR -4+[esp+88]
	fstp	DWORD PTR [esi]

; 30   : 		klr[k][2] = (float)(rand()%360);

	call	edi
	cdq
	mov	ecx, 360				; 00000168H
	idiv	ecx
	add	esi, 12					; 0000000cH
	cmp	esi, OFFSET FLAT:?klr@@3PAY02MA+304
	mov	DWORD PTR -4+[esp+88], edx
	fild	DWORD PTR -4+[esp+88]
	fstp	DWORD PTR [esi-8]
	jl	SHORT $L17519

; 31   : 	};
; 32   : 
; 33   : 	float lxc, xc, lyc, yc, lzc, zc, lvc, vc, zd, vd, lra, ra;
; 34   : 
; 35   : 	zd = 5.0f / (float)NROWS;
; 36   : 	vd = 1.0f / (float)NROWS;
; 37   : 
; 38   : 	xc = 0;
; 39   : 	yc = 0;
; 40   : 	zc = zd;
; 41   : 	vc = vd;
; 42   : 
; 43   : 	lra = 0.3f;
; 44   : 	lxc = 0;
; 45   : 	lyc = 0;
; 46   : 	lzc = 0;
; 47   : 	lvc = 0;
; 48   : 
; 49   : 	for( int r=0; r<NROWS; r++ ) {

	mov	esi, DWORD PTR __imp__glTexCoord2f@8
	mov	edi, DWORD PTR __imp__glVertex3f@12
	mov	DWORD PTR _xc$[esp+88], 0
	mov	DWORD PTR _yc$[esp+88], 0
	mov	DWORD PTR _zc$[esp+88], 1042983595	; 3e2aaaabH
	mov	DWORD PTR _vc$[esp+88], 1023969417	; 3d088889H
	mov	DWORD PTR _lra$[esp+88], 1050253722	; 3e99999aH
	mov	DWORD PTR _lxc$[esp+88], 0
	mov	DWORD PTR _lyc$[esp+88], 0
	mov	DWORD PTR _lzc$[esp+88], 0
	mov	DWORD PTR _lvc$[esp+88], 0
	mov	DWORD PTR _r$[esp+88], 0
$L17540:

; 50   : 
; 51   : 		float b = 0.5f - (((float)r / (float)NROWS)/2.0f);

	fild	DWORD PTR _r$[esp+88]

; 52   : 		
; 53   : 		ra = 0.3f / ((float)r / 2.0f + 1.0f);
; 54   : 			//glColor3f( 0.8*b, 0.9*b, 1.0*b );
; 55   : 
; 56   : 		for( int c=0; c<NSIDES; c++ ) {

	xor	eax, eax
	mov	DWORD PTR _c$17547[esp+88], eax
	fst	DWORD PTR -48+[esp+88]
	fmul	DWORD PTR __real@4@3ffa8888888888888800
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fsubr	DWORD PTR __real@4@3ffe8000000000000000
	fstp	DWORD PTR _b$17543[esp+88]
	fld	DWORD PTR -48+[esp+88]
	mov	ebx, DWORD PTR _b$17543[esp+88]
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR _ra$[esp+88]
$L17548:

; 57   : 		
; 58   : 			float x1 = (float)cos( (float)(c+0)*M_PI/(NSIDES/2) );

	fild	DWORD PTR _c$17547[esp+88]

; 59   : 			float y1 = (float)sin( (float)(c+0)*M_PI/(NSIDES/2) );
; 60   : 			float x2 = (float)cos( (float)(c+1)*M_PI/(NSIDES/2) );

	lea	ebp, DWORD PTR [eax+1]
	mov	DWORD PTR -12+[esp+88], ebp

; 61   : 			float y2 = (float)sin( (float)(c+1)*M_PI/(NSIDES/2) );
; 62   : 
; 63   : 			float u1 = (float)c / (float)NSIDES;
; 64   : 			float u2 = (float)(c+1) / (float)NSIDES;
; 65   : 			
; 66   : 			//glColor3f( (float)c/(float)NSIDES, (float)r/(float)NROWS, 0 );
; 67   : 
; 68   : //			glNormal3f( x1*x2, 0, y1*y2 );
; 69   : 
; 70   : 			glColor3f( b,b,b );

	push	ebx
	fld	ST(0)
	push	ebx
	fmul	DWORD PTR __real@4@3fff860a920000000000
	push	ebx
	fld	ST(0)
	fcos
	fstp	DWORD PTR _x1$17551[esp+100]
	fsin
	fstp	DWORD PTR _y1$17554[esp+100]
	fild	DWORD PTR -12+[esp+100]
	fst	DWORD PTR -24+[esp+100]
	fmul	DWORD PTR __real@4@3fff860a920000000000
	fld	ST(0)
	fcos
	fstp	DWORD PTR _x2$17557[esp+100]
	fsin
	fstp	DWORD PTR _y2$17560[esp+100]
	fmul	DWORD PTR __real@4@3ffc9249249249249000
	fstp	DWORD PTR _u1$17563[esp+100]
	fld	DWORD PTR -24+[esp+100]
	fmul	DWORD PTR __real@4@3ffc9249249249249000
	fstp	DWORD PTR _u2$17566[esp+100]
	call	DWORD PTR __imp__glColor3f@12

; 71   : 
; 72   : 			glTexCoord2f( u1, vc );

	mov	edx, DWORD PTR _vc$[esp+88]
	mov	eax, DWORD PTR _u1$17563[esp+88]
	push	edx
	push	eax
	call	esi

; 73   : 			glVertex3f( ra*x1+xc, zc, ra*y1+yc );

	fld	DWORD PTR _y1$17554[esp+88]
	fmul	DWORD PTR _ra$[esp+88]
	push	ecx
	mov	ecx, DWORD PTR _zc$[esp+92]
	fadd	DWORD PTR _yc$[esp+92]
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _x1$17551[esp+96]
	push	ecx
	fmul	DWORD PTR _ra$[esp+100]
	fadd	DWORD PTR _xc$[esp+100]
	fstp	DWORD PTR [esp]
	call	edi

; 74   : 
; 75   : 			glTexCoord2f( u2, vc );

	mov	edx, DWORD PTR _vc$[esp+88]
	mov	eax, DWORD PTR _u2$17566[esp+88]
	push	edx
	push	eax
	call	esi

; 76   : 			glVertex3f( ra*x2+xc, zc, ra*y2+yc );

	fld	DWORD PTR _y2$17560[esp+88]
	fmul	DWORD PTR _ra$[esp+88]
	push	ecx
	mov	ecx, DWORD PTR _zc$[esp+92]
	fadd	DWORD PTR _yc$[esp+92]
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _x2$17557[esp+96]
	push	ecx
	fmul	DWORD PTR _ra$[esp+100]
	fadd	DWORD PTR _xc$[esp+100]
	fstp	DWORD PTR [esp]
	call	edi

; 77   : 
; 78   : 			//glColor3f( b1,b1,b1 );
; 79   : 
; 80   : 			glTexCoord2f( u2, lvc );

	mov	edx, DWORD PTR _lvc$[esp+88]
	mov	eax, DWORD PTR _u2$17566[esp+88]
	push	edx
	push	eax
	call	esi

; 81   : 			glVertex3f( lra*x2+lxc, lzc, lra*y2+lyc );

	fld	DWORD PTR _y2$17560[esp+88]
	fmul	DWORD PTR _lra$[esp+88]
	push	ecx
	mov	ecx, DWORD PTR _lzc$[esp+92]
	fadd	DWORD PTR _lyc$[esp+92]
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _x2$17557[esp+96]
	push	ecx
	fmul	DWORD PTR _lra$[esp+100]
	fadd	DWORD PTR _lxc$[esp+100]
	fstp	DWORD PTR [esp]
	call	edi

; 82   : 
; 83   : 			glTexCoord2f( u1, lvc );

	mov	edx, DWORD PTR _lvc$[esp+88]
	mov	eax, DWORD PTR _u1$17563[esp+88]
	push	edx
	push	eax
	call	esi

; 84   : 			glVertex3f( lra*x1+lxc, lzc, lra*y1+lyc );

	fld	DWORD PTR _y1$17554[esp+88]
	fmul	DWORD PTR _lra$[esp+88]
	push	ecx
	mov	ecx, DWORD PTR _lzc$[esp+92]
	fadd	DWORD PTR _lyc$[esp+92]
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _x1$17551[esp+96]
	push	ecx
	fmul	DWORD PTR _lra$[esp+100]
	fadd	DWORD PTR _lxc$[esp+100]
	fstp	DWORD PTR [esp]
	call	edi
	mov	eax, ebp
	cmp	eax, 7
	mov	DWORD PTR _c$17547[esp+88], eax
	jl	$L17548

; 85   : 		};
; 86   : 
; 87   : 		lxc = xc;
; 88   : 		lyc = yc;
; 89   : 		lzc = zc;
; 90   : 		lvc = vc;
; 91   : 		lra = ra;
; 92   : 
; 93   : 		//xc += ((float)(rand()%200) - 100.0f) / 200.0f;
; 94   : 		//yc += ((float)(rand()%200) - 100.0f) / 200.0f;
; 95   : 
; 96   : 		xc += 0.05f*(float)cos( (float)r / 4.3f );

	fld	DWORD PTR -48+[esp+88]
	mov	edx, DWORD PTR _xc$[esp+88]
	fmul	DWORD PTR __real@4@3ffcee23b7dda9e25800
	mov	eax, DWORD PTR _yc$[esp+88]
	mov	ecx, DWORD PTR _zc$[esp+88]
	mov	DWORD PTR _lyc$[esp+88], eax
	fcos
	mov	eax, DWORD PTR _ra$[esp+88]
	mov	DWORD PTR _lra$[esp+88], eax
	mov	eax, DWORD PTR _r$[esp+88]
	inc	eax
	cmp	eax, 30					; 0000001eH
	mov	DWORD PTR _lxc$[esp+88], edx
	mov	edx, DWORD PTR _vc$[esp+88]
	mov	DWORD PTR _lzc$[esp+88], ecx
	mov	DWORD PTR _lvc$[esp+88], edx
	mov	DWORD PTR _r$[esp+88], eax
	fmul	DWORD PTR __real@4@3ffacccccd0000000000
	fadd	DWORD PTR _xc$[esp+88]
	fstp	DWORD PTR _xc$[esp+88]

; 97   : 		yc += 0.05f*(float)sin( (float)r / 3.6f );

	fld	DWORD PTR -48+[esp+88]
	fmul	DWORD PTR __real@4@3ffd8e38e3cd6e9e2000
	fsin
	fmul	DWORD PTR __real@4@3ffacccccd0000000000
	fadd	DWORD PTR _yc$[esp+88]
	fstp	DWORD PTR _yc$[esp+88]

; 98   : 		//xc += sin( (float)r / 8.7f );
; 99   : 		//yc += cos( (float)r / 8.1f );
; 100  : 
; 101  : 		zc += zd;

	fld	DWORD PTR _zc$[esp+88]
	fadd	DWORD PTR __real@4@3ffcaaaaab0000000000
	fstp	DWORD PTR _zc$[esp+88]

; 102  : 		vc += vd;

	fld	DWORD PTR _vc$[esp+88]
	fadd	DWORD PTR __real@4@3ffa8888890000000000
	fstp	DWORD PTR _vc$[esp+88]
	jl	$L17540

; 103  : 
; 104  : 		//ra += 0.01f;
; 105  : 		
; 106  : 
; 107  : 	};
; 108  : 	glEndList();

	call	DWORD PTR __imp__glEndList@0
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 109  : 
; 110  : };

	add	esp, 72					; 00000048H
	ret	0
?p_klask_init@@YAXXZ ENDP				; p_klask_init
_TEXT	ENDS
PUBLIC	?p_klask_run@@YAXPAUEVENT@@@Z			; p_klask_run
PUBLIC	__real@4@3ffcccccccccccccd000
PUBLIC	__real@4@3ffdaaaaaaaaaaaaa800
PUBLIC	__real@4@4001a000000000000000
PUBLIC	__real@4@3ffd8000000000000000
PUBLIC	__real@4@3ffcaaaaaaaaaaaaa800
PUBLIC	__real@4@40038800000000000000
PUBLIC	__real@4@4002c000000000000000
PUBLIC	__real@4@4002a000000000000000
PUBLIC	__real@4@4003a000000000000000
PUBLIC	__real@4@3ffe99999a0000000000
PUBLIC	__real@4@3ffdcccccd0000000000
PUBLIC	__real@4@3ffccccccd0000000000
PUBLIC	__real@4@3ffeb333330000000000
EXTRN	_gluPerspective@32:NEAR
EXTRN	_gluLookAt@72:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glEnd@0:NEAR
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glPopMatrix@0:NEAR
EXTRN	__imp__glPushMatrix@0:NEAR
EXTRN	__imp__glRotatef@16:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glTranslatef@12:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__imp__glCallList@4:NEAR
;	COMDAT __real@4@3ffcccccccccccccd000
; File E:\prj64k\glAss (eventad)\parts\p_klask.cpp
CONST	SEGMENT
__real@4@3ffcccccccccccccd000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@3ffdaaaaaaaaaaaaa800
CONST	SEGMENT
__real@4@3ffdaaaaaaaaaaaaa800 DD 03eaaaaabr	; 0.333333
CONST	ENDS
;	COMDAT __real@4@4001a000000000000000
CONST	SEGMENT
__real@4@4001a000000000000000 DD 040a00000r	; 5
CONST	ENDS
;	COMDAT __real@4@3ffd8000000000000000
CONST	SEGMENT
__real@4@3ffd8000000000000000 DD 03e800000r	; 0.25
CONST	ENDS
;	COMDAT __real@4@3ffcaaaaaaaaaaaaa800
CONST	SEGMENT
__real@4@3ffcaaaaaaaaaaaaa800 DD 03e2aaaabr	; 0.166667
CONST	ENDS
;	COMDAT __real@4@40038800000000000000
CONST	SEGMENT
__real@4@40038800000000000000 DD 041880000r	; 17
CONST	ENDS
;	COMDAT __real@4@4002c000000000000000
CONST	SEGMENT
__real@4@4002c000000000000000 DD 041400000r	; 12
CONST	ENDS
;	COMDAT __real@4@4002a000000000000000
CONST	SEGMENT
__real@4@4002a000000000000000 DD 041200000r	; 10
CONST	ENDS
;	COMDAT __real@4@4003a000000000000000
CONST	SEGMENT
__real@4@4003a000000000000000 DD 041a00000r	; 20
CONST	ENDS
;	COMDAT __real@4@3ffe99999a0000000000
CONST	SEGMENT
__real@4@3ffe99999a0000000000 DD 03f19999ar	; 0.6
CONST	ENDS
;	COMDAT __real@4@3ffdcccccd0000000000
CONST	SEGMENT
__real@4@3ffdcccccd0000000000 DD 03ecccccdr	; 0.4
CONST	ENDS
;	COMDAT __real@4@3ffccccccd0000000000
CONST	SEGMENT
__real@4@3ffccccccd0000000000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@3ffeb333330000000000
CONST	SEGMENT
__real@4@3ffeb333330000000000 DD 03f333333r	; 0.7
CONST	ENDS
;	COMDAT ?p_klask_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = 8
_br$ = -24
_n$ = -16
?p_klask_run@@YAXPAUEVENT@@@Z PROC NEAR			; p_klask_run, COMDAT

; 112  : void p_klask_run( EVENT *e ) {

	sub	esp, 24					; 00000018H
	push	ebx
	push	ebp
	push	esi

; 113  : 
; 114  : 	float t;
; 115  : 
; 116  : 	glMatrixMode( GL_PROJECTION );

	mov	esi, DWORD PTR __imp__glMatrixMode@4
	push	edi
	push	5889					; 00001701H
	call	esi

; 117  : 	glLoadIdentity();

	mov	edi, DWORD PTR __imp__glLoadIdentity@0
	call	edi

; 118  : 	glTranslatef( 0, 0, -1 );

	push	-1082130432				; bf800000H
	push	0
	push	0
	call	DWORD PTR __imp__glTranslatef@12

; 119  : 
; 120  : 	glMatrixMode( GL_MODELVIEW );

	push	5888					; 00001700H
	call	esi

; 121  : 	glLoadIdentity();

	call	edi

; 122  : 
; 123  : 	glDisable( GL_CULL_FACE );

	mov	ebx, DWORD PTR __imp__glDisable@4
	push	2884					; 00000b44H
	call	ebx

; 124  : //	glCullFace( GL_BACK );
; 125  : 
; 126  : 	glDisable( GL_DEPTH_TEST );

	push	2929					; 00000b71H
	call	ebx

; 127  : 
; 128  : 	glDisable( GL_FOG );

	push	2912					; 00000b60H
	call	ebx

; 129  : 
; 130  : 	t = e->localTime;

	mov	ebx, DWORD PTR _e$[esp+36]
	mov	eax, DWORD PTR [ebx+4]

; 131  : 
; 132  : 		glEnable( GL_BLEND );

	push	3042					; 00000be2H
	mov	DWORD PTR _t$[esp+40], eax
	call	DWORD PTR __imp__glEnable@4

; 133  : 		glBlendFunc( GL_ONE, GL_ONE );

	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8

; 134  : 
; 135  : 		glMatrixMode( GL_MODELVIEW );

	push	5888					; 00001700H
	call	esi

; 136  : 
; 137  : 		//for( float step=0; step<10; step+=3 ) {
; 138  : 
; 139  : 			float t2 = t;// - (step/20.0f);
; 140  : 
; 141  : 	glLoadIdentity();

	call	edi

; 142  : 		//glFrustum( -1, 1, -0.75, 0.75, 0.1, 1 );
; 143  : 		gluPerspective( 105, 4/3, 1, 1000 );

	push	1083129856				; 408f4000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1079656448				; 405a4000H
	push	0
	call	_gluPerspective@32

; 144  : 		//MATRIX m;
; 145  : 		gluLookAt( 5*(float)cos(t2/6), 5*(float)cos(t2/7), 5*(float)sin(t2/5), 
; 146  : 				5*(float)cos(t2/5), 5*(float)cos(t2/4), 5*(float)sin(t2/3), 
; 147  : 				0, 1, 0 );

	fld	DWORD PTR _t$[esp+36]
	fmul	DWORD PTR __real@4@3ffcccccccccccccd000
	push	0
	fld	DWORD PTR _t$[esp+40]
	push	0
	fmul	DWORD PTR __real@4@3ffdaaaaaaaaaaaaa800
	push	1072693248				; 3ff00000H
	push	0
	push	0
	fsin
	push	0
	sub	esp, 8
	sub	esp, 8
	sub	esp, 8
	sub	esp, 8
	sub	esp, 8
	fmul	DWORD PTR __real@4@4001a000000000000000
	fstp	QWORD PTR [esp+32]
	fld	DWORD PTR _t$[esp+100]
	fmul	DWORD PTR __real@4@3ffd8000000000000000
	fcos
	fmul	DWORD PTR __real@4@4001a000000000000000
	fstp	QWORD PTR [esp+24]
	fld	ST(0)
	fcos
	fmul	DWORD PTR __real@4@4001a000000000000000
	fstp	QWORD PTR [esp+16]
	fsin
	fmul	DWORD PTR __real@4@4001a000000000000000
	fstp	QWORD PTR [esp+8]
	fld	DWORD PTR _t$[esp+100]
	fmul	DWORD PTR __real@4@3ffc9249249249249000
	fcos
	fmul	DWORD PTR __real@4@4001a000000000000000
	fstp	QWORD PTR [esp]
	fld	DWORD PTR _t$[esp+100]
	fmul	DWORD PTR __real@4@3ffcaaaaaaaaaaaaa800
	fcos
	fmul	DWORD PTR __real@4@4001a000000000000000
	sub	esp, 8
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72

; 148  : 
; 149  : 	glaSetTexture( GIF_CLOUDS );

	push	111					; 0000006fH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4

; 150  : 	glTexEnvi( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12

; 151  : 
; 152  : 			float br = 0.5f*e->renderAmount;// / (float)fmod(b*2,4.0f);

	fld	DWORD PTR [ebx+20]
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	mov	ebp, DWORD PTR __imp__glPushMatrix@0
	mov	edi, DWORD PTR __imp__glRotatef@16

; 153  : 
; 154  : 			for( int n=0; n<NOBJECTS; n++ ) {

	xor	ebx, ebx
	fstp	DWORD PTR _br$[esp+40]
	mov	DWORD PTR _n$[esp+40], ebx

; 155  : 				glPushMatrix();
; 156  : 
; 157  : 				glRotatef( t2*17+klr[n][0], 1, 0, 0 );

	fld	DWORD PTR _t$[esp+36]
	mov	DWORD PTR -20+[esp+40], ebx
	fmul	DWORD PTR __real@4@40038800000000000000
	mov	esi, OFFSET FLAT:?klr@@3PAY02MA+4
	fstp	DWORD PTR -12+[esp+40]

; 158  : 				glRotatef( t2*12-klr[n][1], 0, 1, 0 );

	fld	DWORD PTR _t$[esp+36]
	fmul	DWORD PTR __real@4@4002c000000000000000
	fstp	DWORD PTR -8+[esp+40]

; 159  : 				glRotatef( t2*10+klr[n][2], 0, 0, 1 );

	fld	DWORD PTR _t$[esp+36]
	fmul	DWORD PTR __real@4@4002a000000000000000
	fstp	DWORD PTR -4+[esp+40]
$L17586:
	call	ebp
	fld	DWORD PTR -12+[esp+40]
	fadd	DWORD PTR [esi-4]
	push	0
	push	0
	push	1065353216				; 3f800000H
	push	ecx
	fstp	DWORD PTR [esp]
	call	edi
	fld	DWORD PTR -8+[esp+40]
	push	0
	fsub	DWORD PTR [esi]
	push	1065353216				; 3f800000H
	push	0
	push	ecx
	fstp	DWORD PTR [esp]
	call	edi
	fld	DWORD PTR -4+[esp+40]
	push	1065353216				; 3f800000H
	fadd	DWORD PTR [esi+4]
	push	0
	push	0
	push	ecx
	fstp	DWORD PTR [esp]
	call	edi

; 160  : 				glRotatef( (float)cos(t2+n)*20, 0, 1, 1 );

	fild	DWORD PTR _n$[esp+40]
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	0
	fadd	DWORD PTR _t$[esp+48]
	push	ecx
	fcos
	fmul	DWORD PTR __real@4@4003a000000000000000
	fstp	DWORD PTR [esp]
	call	edi

; 161  : 				glRotatef( (float)sin(t2-n*3)*20, 1, 0, 1 );

	fild	DWORD PTR -20+[esp+40]
	push	1065353216				; 3f800000H
	push	0
	push	1065353216				; 3f800000H
	fsubr	DWORD PTR _t$[esp+48]
	push	ecx
	fsin
	fmul	DWORD PTR __real@4@4003a000000000000000
	fstp	DWORD PTR [esp]
	call	edi

; 162  : 
; 163  : 				glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4

; 164  : 				switch( n%3 ) {

	mov	eax, ebx
	cdq
	mov	ecx, 3
	idiv	ecx
	sub	edx, 0
	je	SHORT $L17595
	dec	edx
	je	SHORT $L17596
	dec	edx
	jne	$L17592

; 171  : 					case 2:
; 172  : 						glColor3f( 0.2f*br, 0.4f*br, 0.6f*br );

	fld	DWORD PTR _br$[esp+40]
	push	ecx
	fmul	DWORD PTR __real@4@3ffe99999a0000000000
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _br$[esp+48]
	fmul	DWORD PTR __real@4@3ffdcccccd0000000000
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _br$[esp+48]
	fmul	DWORD PTR __real@4@3ffccccccd0000000000

; 173  : 						break;

	jmp	SHORT $L17691
$L17596:

; 167  : 						break;
; 168  : 					case 1:
; 169  : 						glColor3f( 0.3f*br, 0.7f*br, 0.4f*br );

	fld	DWORD PTR _br$[esp+40]
	push	ecx
	fmul	DWORD PTR __real@4@3ffdcccccd0000000000
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _br$[esp+48]
	fmul	DWORD PTR __real@4@3ffeb333330000000000
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _br$[esp+48]
	fmul	DWORD PTR __real@4@3ffd99999a0000000000

; 170  : 						break;

	jmp	SHORT $L17691
$L17595:

; 165  : 					case 0:
; 166  : 						glColor3f( 0.6f*br, 0.4f*br, 0.2f*br );

	fld	DWORD PTR _br$[esp+40]
	push	ecx
	fmul	DWORD PTR __real@4@3ffccccccd0000000000
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _br$[esp+48]
	fmul	DWORD PTR __real@4@3ffdcccccd0000000000
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _br$[esp+48]
	fmul	DWORD PTR __real@4@3ffe99999a0000000000
$L17691:
	push	ecx
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glColor3f@12
$L17592:

; 174  : 				};
; 175  : 				glCallList( KLASK_CYLINDER );

	push	82					; 00000052H
	call	DWORD PTR __imp__glCallList@4

; 176  : 				glEnd();

	call	DWORD PTR __imp__glEnd@0

; 177  : 				glPopMatrix();

	call	DWORD PTR __imp__glPopMatrix@0
	mov	ecx, DWORD PTR -20+[esp+40]
	inc	ebx
	add	esi, 12					; 0000000cH
	add	ecx, 3
	cmp	esi, OFFSET FLAT:?klr@@3PAY02MA+304
	mov	DWORD PTR _n$[esp+40], ebx
	mov	DWORD PTR -20+[esp+40], ecx
	jl	$L17586
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 178  : 			};
; 179  : 
; 180  : };

	add	esp, 24					; 00000018H
	ret	0
?p_klask_run@@YAXPAUEVENT@@@Z ENDP			; p_klask_run
_TEXT	ENDS
END
