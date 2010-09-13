	TITLE	E:\prj64k\glAss (eventad)\parts\p_psyk.cpp
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
;	COMDAT ?pp_glMappa@@YAXMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pp_generateScene@@YAXM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_psyk_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?tuo@@3MA					; tuo
PUBLIC	?tvo@@3MA					; tvo
_BSS	SEGMENT
?tuo@@3MA DD	01H DUP (?)				; tuo
?tvo@@3MA DD	01H DUP (?)				; tvo
_BSS	ENDS
PUBLIC	?pp_glMappa@@YAXMM@Z				; pp_glMappa
PUBLIC	__real@4@4000c000000000000000
PUBLIC	__real@4@3fff8000000000000000
EXTRN	__fltused:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
;	COMDAT __real@4@4000c000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_psyk.cpp
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT ?pp_glMappa@@YAXMM@Z
_TEXT	SEGMENT
_x$ = 8
_y$ = 12
?pp_glMappa@@YAXMM@Z PROC NEAR				; pp_glMappa, COMDAT

; 22   : 
; 23   : 	float x2, y2;
; 24   : 
; 25   : 	//x2 = tuo + ((x*x)/10);
; 26   : 	//y2 = tvo + ((y*y)/10);
; 27   : 
; 28   : 	float r = 1 / (1+(float)sqrt( x*x + y*y )*3);

	fld	DWORD PTR _x$[esp-4]

; 29   : 
; 30   : 	x2 = x*r;
; 31   : 	y2 = y*r;
; 32   : 
; 33   : 	//x2 = x*((-x*-x)/3);
; 34   : 	//y2 = y*((-y*-y)/3);
; 35   : 
; 36   : 	x2 += tuo;
; 37   : 	y2 += tvo;
; 38   : 	
; 39   : 	glTexCoord2f( x2,y2 );

	push	ecx
	fmul	DWORD PTR _x$[esp]
	fld	DWORD PTR _y$[esp]
	fmul	DWORD PTR _y$[esp]
	faddp	ST(1), ST(0)
	fsqrt
	fmul	DWORD PTR __real@4@4000c000000000000000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3fff8000000000000000
	fld	ST(0)
	fmul	DWORD PTR _y$[esp]
	fadd	DWORD PTR ?tvo@@3MA			; tvo
	fstp	DWORD PTR [esp]
	push	ecx
	fmul	DWORD PTR _x$[esp+4]
	fadd	DWORD PTR ?tuo@@3MA			; tuo
	fstp	DWORD PTR [esp]
	call	DWORD PTR __imp__glTexCoord2f@8

; 40   : };

	ret	0
?pp_glMappa@@YAXMM@Z ENDP				; pp_glMappa
_TEXT	ENDS
PUBLIC	?pp_generateScene@@YAXM@Z			; pp_generateScene
PUBLIC	__real@4@3ffed020c50000000000
PUBLIC	__real@4@3ffde666660000000000
PUBLIC	__real@4@3ffe8000000000000000
PUBLIC	__real@4@3fffa978d50000000000
PUBLIC	__real@4@3ffeb2b8c2aaaaaaa800
PUBLIC	__real@8@3fff8000000000000000
PUBLIC	__real@8@3ffeb2b8c2aaaaaaa800
PUBLIC	__real@4@3fffc000000000000000
EXTRN	__imp__glEnd@0:NEAR
EXTRN	__imp__glEndList@0:NEAR
EXTRN	__imp__glNewList@8:NEAR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
;	COMDAT __real@4@3ffed020c50000000000
; File E:\prj64k\glAss (eventad)\parts\p_psyk.cpp
CONST	SEGMENT
__real@4@3ffed020c50000000000 DD 03f5020c5r	; 0.813
CONST	ENDS
;	COMDAT __real@4@3ffde666660000000000
CONST	SEGMENT
__real@4@3ffde666660000000000 DD 03ee66666r	; 0.45
CONST	ENDS
;	COMDAT __real@4@3ffe8000000000000000
CONST	SEGMENT
__real@4@3ffe8000000000000000 DD 03f000000r	; 0.5
CONST	ENDS
;	COMDAT __real@4@3fffa978d50000000000
CONST	SEGMENT
__real@4@3fffa978d50000000000 DD 03fa978d5r	; 1.324
CONST	ENDS
;	COMDAT __real@4@3ffeb2b8c2aaaaaaa800
CONST	SEGMENT
__real@4@3ffeb2b8c2aaaaaaa800 DD 03f32b8c3r	; 0.698132
CONST	ENDS
;	COMDAT __real@8@3fff8000000000000000
CONST	SEGMENT
__real@8@3fff8000000000000000 DQ 03ff0000000000000r ; 1
CONST	ENDS
;	COMDAT __real@8@3ffeb2b8c2aaaaaaa800
CONST	SEGMENT
__real@8@3ffeb2b8c2aaaaaaa800 DQ 03fe6571855555555r ; 0.698132
CONST	ENDS
;	COMDAT __real@4@3fffc000000000000000
CONST	SEGMENT
__real@4@3fffc000000000000000 DD 03fc00000r	; 1.5
CONST	ENDS
;	COMDAT ?pp_generateScene@@YAXM@Z
_TEXT	SEGMENT
_frame$ = 8
_i$ = 8
_x$ = -20
_y$ = -24
_x2$ = -12
_y2$ = -16
?pp_generateScene@@YAXM@Z PROC NEAR			; pp_generateScene, COMDAT

; 42   : void pp_generateScene( float frame ) {

	sub	esp, 24					; 00000018H

; 43   : 
; 44   : 	int i;
; 45   : 	float x, y, x2, y2;
; 46   : 
; 47   : 	tuo = 0.5f + 0.45f * (float)cos( frame * 0.813f );

	fld	DWORD PTR _frame$[esp+20]
	push	ebx
	fmul	DWORD PTR __real@4@3ffed020c50000000000
	push	ebp
	push	esi
	push	edi
	fcos

; 48   : 	tvo = 0.5f + 0.45f * (float)sin( frame * 1.324f );
; 49   : 
; 50   : 	glNewList( PSYK_LIST, GL_COMPILE );

	push	4864					; 00001300H
	push	71					; 00000047H
	fmul	DWORD PTR __real@4@3ffde666660000000000
	fadd	DWORD PTR __real@4@3ffe8000000000000000
	fstp	DWORD PTR ?tuo@@3MA			; tuo
	fld	DWORD PTR _frame$[esp+44]
	fmul	DWORD PTR __real@4@3fffa978d50000000000
	fsin
	fmul	DWORD PTR __real@4@3ffde666660000000000
	fadd	DWORD PTR __real@4@3ffe8000000000000000
	fstp	DWORD PTR ?tvo@@3MA			; tvo
	call	DWORD PTR __imp__glNewList@8

; 51   : 
; 52   : 		for( i=0; i<CYL_SEGMENTS; i++ ) {

	mov	esi, DWORD PTR __imp__glVertex3f@12
	mov	DWORD PTR _i$[esp+36], 0
$L17535:

; 53   : 
; 54   : 		glBegin( GL_TRIANGLES );

	push	4
	call	DWORD PTR __imp__glBegin@4

; 55   : 
; 56   : 			x = (float)cos( i*M_PI2/CYL_SEGMENTS );

	fild	DWORD PTR _i$[esp+36]
	fmul	DWORD PTR __real@4@3ffeb2b8c2aaaaaaa800
	fld	ST(0)
	fcos
	fstp	DWORD PTR _x$[esp+40]

; 57   : 			y = (float)sin( i*M_PI2/CYL_SEGMENTS );

	fsin
	fstp	DWORD PTR _y$[esp+40]

; 58   : 
; 59   : 			x2 = (float)cos( (i+1.0)*M_PI2/CYL_SEGMENTS );

	fild	DWORD PTR _i$[esp+36]
	fadd	QWORD PTR __real@8@3fff8000000000000000
	fmul	QWORD PTR __real@8@3ffeb2b8c2aaaaaaa800
	fld	ST(0)
	fcos
	fstp	DWORD PTR _x2$[esp+40]

; 60   : 			y2 = (float)sin( (i+1.0)*M_PI2/CYL_SEGMENTS );
; 61   : 
; 62   : 			pp_glMappa( x2, y2 );

	mov	ebx, DWORD PTR _x2$[esp+40]
	fsin
	fstp	DWORD PTR _y2$[esp+40]
	mov	edi, DWORD PTR _y2$[esp+40]
	push	edi
	push	ebx
	call	?pp_glMappa@@YAXMM@Z			; pp_glMappa

; 63   : 			glVertex3f( x2*CYL_RADIUS, y2*CYL_RADIUS, -CYL_LENGTH );

	fld	DWORD PTR _y2$[esp+48]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	add	esp, 8
	push	-1065353216				; c0800000H
	fstp	DWORD PTR -16+[esp+44]
	fld	DWORD PTR _x2$[esp+44]
	mov	ebp, DWORD PTR -16+[esp+44]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ebp
	fstp	DWORD PTR -12+[esp+48]
	mov	eax, DWORD PTR -12+[esp+48]
	push	eax
	call	esi

; 64   : 
; 65   : 			pp_glMappa( x, y );

	mov	ecx, DWORD PTR _y$[esp+40]
	mov	edx, DWORD PTR _x$[esp+40]
	push	ecx
	push	edx
	call	?pp_glMappa@@YAXMM@Z			; pp_glMappa

; 66   : 			glVertex3f( x*CYL_RADIUS, y*CYL_RADIUS, -CYL_LENGTH );

	fld	DWORD PTR _y$[esp+48]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	add	esp, 8
	push	-1065353216				; c0800000H
	fstp	DWORD PTR -8+[esp+44]
	fld	DWORD PTR _x$[esp+44]
	mov	eax, DWORD PTR -8+[esp+44]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	eax
	fstp	DWORD PTR -4+[esp+48]
	mov	ecx, DWORD PTR -4+[esp+48]
	push	ecx
	call	esi

; 67   : 
; 68   : 			pp_glMappa( 0, 0 );

	push	0
	push	0
	call	?pp_glMappa@@YAXMM@Z			; pp_glMappa
	add	esp, 8

; 69   : 			glVertex3f( 0, 0, -CYL_LENGTH*1.4f );

	push	-1061997773				; c0b33333H
	push	0
	push	0
	call	esi

; 70   : 
; 71   : 			pp_glMappa( x, y );

	mov	edx, DWORD PTR _y$[esp+40]
	mov	eax, DWORD PTR _x$[esp+40]
	push	edx
	push	eax
	call	?pp_glMappa@@YAXMM@Z			; pp_glMappa

; 72   : 			glVertex3f( x*CYL_RADIUS, y*CYL_RADIUS, CYL_LENGTH );

	mov	ecx, DWORD PTR -8+[esp+48]
	mov	edx, DWORD PTR -4+[esp+48]
	add	esp, 8
	push	1082130432				; 40800000H
	push	ecx
	push	edx
	call	esi

; 73   : 
; 74   : 			pp_glMappa( x2, y2 );

	push	edi
	push	ebx
	call	?pp_glMappa@@YAXMM@Z			; pp_glMappa

; 75   : 			glVertex3f( x2*CYL_RADIUS, y2*CYL_RADIUS, CYL_LENGTH );

	mov	eax, DWORD PTR -12+[esp+48]
	add	esp, 8
	push	1082130432				; 40800000H
	push	ebp
	push	eax
	call	esi

; 76   : 
; 77   : 			pp_glMappa( 0, 0 );

	push	0
	push	0
	call	?pp_glMappa@@YAXMM@Z			; pp_glMappa
	add	esp, 8

; 78   : 			glVertex3f( 0, 0, CYL_LENGTH*1.4f );

	push	1085485875				; 40b33333H
	push	0
	push	0
	call	esi

; 79   : 
; 80   : 		glEnd( );

	call	DWORD PTR __imp__glEnd@0
	mov	eax, DWORD PTR _i$[esp+36]
	inc	eax
	cmp	eax, 9
	mov	DWORD PTR _i$[esp+36], eax
	jl	$L17535

; 81   : 
; 82   : 
; 83   : 		};
; 84   : 
; 85   : 		for( i=0; i<CYL_SEGMENTS; i++ ) {

	xor	edi, edi
	mov	DWORD PTR _i$[esp+36], edi
$L17542:

; 86   : 
; 87   : 			x = (float)cos( i*M_PI2/CYL_SEGMENTS );

	fild	DWORD PTR _i$[esp+36]

; 88   : 			y = (float)sin( i*M_PI2/CYL_SEGMENTS );
; 89   : 
; 90   : 			x2 = (float)cos( (i+1.0)*M_PI2/CYL_SEGMENTS );
; 91   : 			y2 = (float)sin( (i+1.0)*M_PI2/CYL_SEGMENTS );
; 92   : 
; 93   : 		glBegin( GL_QUADS );

	push	7
	fmul	DWORD PTR __real@4@3ffeb2b8c2aaaaaaa800
	fld	ST(0)
	fcos
	fstp	DWORD PTR _x$[esp+44]
	fsin
	fstp	DWORD PTR _y$[esp+44]
	fild	DWORD PTR _i$[esp+40]
	fadd	QWORD PTR __real@8@3fff8000000000000000
	fmul	QWORD PTR __real@8@3ffeb2b8c2aaaaaaa800
	fld	ST(0)
	fcos
	fstp	DWORD PTR _x2$[esp+44]
	fsin
	fstp	DWORD PTR _y2$[esp+44]
	call	DWORD PTR __imp__glBegin@4

; 94   : 
; 95   : 			pp_glMappa( x, y );

	mov	ebx, DWORD PTR _y$[esp+40]
	mov	ebp, DWORD PTR _x$[esp+40]
	push	ebx
	push	ebp
	call	?pp_glMappa@@YAXMM@Z			; pp_glMappa

; 96   : 
; 97   : 			glVertex3f( x*CYL_RADIUS, y*CYL_RADIUS, -CYL_LENGTH );

	fld	DWORD PTR _y$[esp+48]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	add	esp, 8
	push	-1065353216				; c0800000H
	fstp	DWORD PTR -8+[esp+44]
	fld	DWORD PTR _x$[esp+44]
	mov	ecx, DWORD PTR -8+[esp+44]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	ecx
	fstp	DWORD PTR -4+[esp+48]
	mov	edx, DWORD PTR -4+[esp+48]
	push	edx
	call	esi

; 98   : 
; 99   : 			pp_glMappa( x2, y2 );

	mov	eax, DWORD PTR _y2$[esp+40]
	mov	ecx, DWORD PTR _x2$[esp+40]
	push	eax
	push	ecx
	call	?pp_glMappa@@YAXMM@Z			; pp_glMappa

; 100  : 
; 101  : 			glVertex3f( x2*CYL_RADIUS, y2*CYL_RADIUS, -CYL_LENGTH );

	fld	DWORD PTR _y2$[esp+48]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	add	esp, 8
	push	-1065353216				; c0800000H
	fstp	DWORD PTR -16+[esp+44]
	fld	DWORD PTR _x2$[esp+44]
	mov	edx, DWORD PTR -16+[esp+44]
	fmul	DWORD PTR __real@4@3fffc000000000000000
	push	edx
	fstp	DWORD PTR -12+[esp+48]
	mov	eax, DWORD PTR -12+[esp+48]
	push	eax
	call	esi

; 102  : 
; 103  : 			glVertex3f( x2*CYL_RADIUS, y2*CYL_RADIUS, CYL_LENGTH );

	mov	ecx, DWORD PTR -16+[esp+40]
	mov	edx, DWORD PTR -12+[esp+40]
	push	1082130432				; 40800000H
	push	ecx
	push	edx
	call	esi

; 104  : 
; 105  : 			pp_glMappa( x, y );

	push	ebx
	push	ebp
	call	?pp_glMappa@@YAXMM@Z			; pp_glMappa

; 106  : 
; 107  : 			glVertex3f( x*CYL_RADIUS, y*CYL_RADIUS, CYL_LENGTH );

	mov	eax, DWORD PTR -8+[esp+48]
	mov	ecx, DWORD PTR -4+[esp+48]
	add	esp, 8
	push	1082130432				; 40800000H
	push	eax
	push	ecx
	call	esi

; 108  : 
; 109  : 		glEnd();

	call	DWORD PTR __imp__glEnd@0
	inc	edi
	cmp	edi, 9
	mov	DWORD PTR _i$[esp+36], edi
	jl	$L17542

; 110  : 
; 111  : 	};
; 112  : 
; 113  : 	glEndList();

	call	DWORD PTR __imp__glEndList@0
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 114  : };

	add	esp, 24					; 00000018H
	ret	0
?pp_generateScene@@YAXM@Z ENDP				; pp_generateScene
_TEXT	ENDS
PUBLIC	?p_psyk_run@@YAXPAUEVENT@@@Z			; p_psyk_run
PUBLIC	__real@4@3ffeb333330000000000
PUBLIC	__real@4@3ffcccccccccccccd000
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@4000a666660000000000
PUBLIC	__real@4@4000d9999a0000000000
PUBLIC	__real@4@4003a800000000000000
PUBLIC	__real@4@4002d000000000000000
PUBLIC	__real@4@4001e000000000000000
PUBLIC	__real@4@3ffff333330000000000
PUBLIC	__real@4@40008ccccd0000000000
PUBLIC	__real@4@4000e666660000000000
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@4@4005b400000000000000
PUBLIC	__real@4@40018ccccd0000000000
PUBLIC	__real@4@40059000000000000000
EXTRN	_gluPerspective@32:NEAR
EXTRN	__imp__glCullFace@4:NEAR
EXTRN	_gluLookAt@72:NEAR
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glPopMatrix@0:NEAR
EXTRN	__imp__glPushMatrix@0:NEAR
EXTRN	__imp__glRotatef@16:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__imp__glCallList@4:NEAR
EXTRN	__imp__glColor3f@12:NEAR
;	COMDAT __real@4@3ffeb333330000000000
; File E:\prj64k\glAss (eventad)\parts\p_psyk.cpp
CONST	SEGMENT
__real@4@3ffeb333330000000000 DD 03f333333r	; 0.7
CONST	ENDS
;	COMDAT __real@4@3ffcccccccccccccd000
CONST	SEGMENT
__real@4@3ffcccccccccccccd000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@4000a666660000000000
CONST	SEGMENT
__real@4@4000a666660000000000 DD 040266666r	; 2.6
CONST	ENDS
;	COMDAT __real@4@4000d9999a0000000000
CONST	SEGMENT
__real@4@4000d9999a0000000000 DD 04059999ar	; 3.4
CONST	ENDS
;	COMDAT __real@4@4003a800000000000000
CONST	SEGMENT
__real@4@4003a800000000000000 DD 041a80000r	; 21
CONST	ENDS
;	COMDAT __real@4@4002d000000000000000
CONST	SEGMENT
__real@4@4002d000000000000000 DD 041500000r	; 13
CONST	ENDS
;	COMDAT __real@4@4001e000000000000000
CONST	SEGMENT
__real@4@4001e000000000000000 DD 040e00000r	; 7
CONST	ENDS
;	COMDAT __real@4@3ffff333330000000000
CONST	SEGMENT
__real@4@3ffff333330000000000 DD 03ff33333r	; 1.9
CONST	ENDS
;	COMDAT __real@4@40008ccccd0000000000
CONST	SEGMENT
__real@4@40008ccccd0000000000 DD 0400ccccdr	; 2.2
CONST	ENDS
;	COMDAT __real@4@4000e666660000000000
CONST	SEGMENT
__real@4@4000e666660000000000 DD 040666666r	; 3.6
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@4@4005b400000000000000
CONST	SEGMENT
__real@4@4005b400000000000000 DD 042b40000r	; 90
CONST	ENDS
;	COMDAT __real@4@40018ccccd0000000000
CONST	SEGMENT
__real@4@40018ccccd0000000000 DD 0408ccccdr	; 4.4
CONST	ENDS
;	COMDAT __real@4@40059000000000000000
CONST	SEGMENT
__real@4@40059000000000000000 DD 042900000r	; 72
CONST	ENDS
;	COMDAT ?p_psyk_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -16
?p_psyk_run@@YAXPAUEVENT@@@Z PROC NEAR			; p_psyk_run, COMDAT

; 116  : void p_psyk_run( EVENT *e ) {

	push	ebp
	mov	ebp, esp
	and	esp, -8					; fffffff8H
	sub	esp, 20					; 00000014H
	push	ebx
	push	esi
	push	edi

; 117  : 	float t;
; 118  : 	glCullFace( GL_FRONT );

	push	1028					; 00000404H
	call	DWORD PTR __imp__glCullFace@4

; 119  : 
; 120  : 	glDisable( GL_DEPTH_TEST );

	push	2929					; 00000b71H
	call	DWORD PTR __imp__glDisable@4

; 121  : 
; 122  : 		t = e->localTime;

	mov	eax, DWORD PTR _e$[ebp]
	mov	ecx, DWORD PTR [eax+4]

; 123  : 
; 124  : 		glEnable( GL_BLEND );

	mov	esi, DWORD PTR __imp__glEnable@4
	push	3042					; 00000be2H
	mov	DWORD PTR _t$[esp+36], ecx
	call	esi

; 125  : 
; 126  : 	glEnable( GL_CULL_FACE );

	push	2884					; 00000b44H
	call	esi

; 127  : 
; 128  : 	glBlendFunc( GL_ONE, GL_ONE );

	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8

; 129  : 
; 130  : 		pp_generateScene( t );

	mov	edx, DWORD PTR _t$[esp+32]
	push	edx
	call	?pp_generateScene@@YAXM@Z		; pp_generateScene
	add	esp, 4

; 131  : 
; 132  : 		glMatrixMode( GL_MODELVIEW );

	push	5888					; 00001700H
	call	DWORD PTR __imp__glMatrixMode@4

; 133  : 	glLoadIdentity();

	call	DWORD PTR __imp__glLoadIdentity@0

; 134  : 		gluPerspective( 105, 4/4, 0, 1000 );

	push	1083129856				; 408f4000H
	push	0
	push	0
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	1079656448				; 405a4000H
	push	0
	call	_gluPerspective@32

; 135  : 		gluLookAt( 0.7f*(float)cos(t/5), 0.7f*(float)cos(t/2), 0.7f*(float)sin(t*1), 0, 0, 0, 0, 1, 0 );

	fld	DWORD PTR _t$[esp+32]
	fsin
	push	0
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	0
	push	0
	push	0
	push	0
	push	0
	push	0
	push	0
	push	0
	sub	esp, 8
	sub	esp, 8
	sub	esp, 8
	fmul	DWORD PTR __real@4@3ffeb333330000000000
	fstp	QWORD PTR [esp+16]
	fld	DWORD PTR _t$[esp+104]
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fcos
	fmul	DWORD PTR __real@4@3ffeb333330000000000
	fstp	QWORD PTR [esp+8]
	fld	DWORD PTR _t$[esp+104]
	fmul	DWORD PTR __real@4@3ffcccccccccccccd000
	fcos
	fmul	DWORD PTR __real@4@3ffeb333330000000000
	fstp	QWORD PTR [esp]
	call	_gluLookAt@72

; 136  : 
; 137  : 		float a;
; 138  : 
; 139  : glPushMatrix();

	call	DWORD PTR __imp__glPushMatrix@0

; 140  : 
; 141  : 	glaSetTexture( GIF_CLOUDS );

	push	111					; 0000006fH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4

; 142  : 	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12

; 143  : 
; 144  : 			a = 0.3f + 0.3f*(float)cos(t*1.0f);

	fld	DWORD PTR _t$[esp+32]
	fcos
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR __real@4@3ffd99999a0000000000

; 145  : 
; 146  : 			glColor3f( a + a*(float)cos( t*3.0f ),
; 147  : 						a + a*(float)cos( t*2.6f ),
; 148  : 						a + a*(float)sin( t*3.4f ) );

	fld	DWORD PTR _t$[esp+32]
	fmul	DWORD PTR __real@4@4000a666660000000000
	fcos
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR -8+[esp+32]
	fld	DWORD PTR _t$[esp+32]
	push	ecx
	fmul	DWORD PTR __real@4@4000c000000000000000
	mov	edi, DWORD PTR __imp__glColor3f@12
	fstp	DWORD PTR -4+[esp+36]
	fld	DWORD PTR _t$[esp+36]
	fmul	DWORD PTR __real@4@4000d9999a0000000000
	fsin
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fmul	ST(0), ST(1)
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR -8+[esp+40]
	fmul	ST(0), ST(1)
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR -4+[esp+44]
	fcos
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fmul	ST(0), ST(1)
	fstp	DWORD PTR [esp]
	fstp	ST(0)
	call	edi

; 149  : 
; 150  : 			glRotatef( t*21, 1, 0, 0 );

	fld	DWORD PTR _t$[esp+32]
	mov	esi, DWORD PTR __imp__glRotatef@16
	fmul	DWORD PTR __real@4@4003a800000000000000
	push	0
	push	0
	push	1065353216				; 3f800000H
	push	ecx
	fstp	DWORD PTR [esp]
	call	esi

; 151  : 			glRotatef( t*13, 0, 1, 0 );

	fld	DWORD PTR _t$[esp+32]
	push	0
	fmul	DWORD PTR __real@4@4002d000000000000000
	push	1065353216				; 3f800000H
	push	0
	push	ecx
	fstp	DWORD PTR [esp]
	call	esi

; 152  : 			glRotatef( t*7, 0, 0, 1 );

	fld	DWORD PTR _t$[esp+32]
	push	1065353216				; 3f800000H
	fmul	DWORD PTR __real@4@4001e000000000000000
	push	0
	push	0
	push	ecx
	fstp	DWORD PTR [esp]
	call	esi

; 153  : 
; 154  : 			glCallList( PSYK_LIST );

	mov	ebx, DWORD PTR __imp__glCallList@4
	push	71					; 00000047H
	call	ebx

; 155  : 
; 156  : 			a = 0.3f + 0.3f*(float)sin(t*1.9f);

	fld	DWORD PTR _t$[esp+32]
	fmul	DWORD PTR __real@4@3ffff333330000000000

; 157  : 	
; 158  : 			glColor3f( a + a*(float)sin( t*4.0f ),
; 159  : 						a + a*(float)cos( t*3.6f ),
; 160  : 						a + a*(float)cos( t*2.2f ) );

	push	ecx
	fsin
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fld	DWORD PTR _t$[esp+36]
	fmul	DWORD PTR __real@4@40008ccccd0000000000
	fst	DWORD PTR -12+[esp+36]
	fcos
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fmul	ST(0), ST(1)
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _t$[esp+40]
	fmul	DWORD PTR __real@4@4000e666660000000000
	fcos
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fmul	ST(0), ST(1)
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _t$[esp+44]
	fmul	DWORD PTR __real@4@40018000000000000000
	fsin
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fmul	ST(0), ST(1)
	fstp	DWORD PTR [esp]
	fstp	ST(0)
	call	edi

; 161  : 
; 162  : 			glRotatef( 90, 1,0 ,0 );

	push	0
	push	0
	push	1065353216				; 3f800000H
	push	1119092736				; 42b40000H
	call	esi

; 163  : 			glRotatef( t*90, 1,0 ,0 );

	fld	DWORD PTR _t$[esp+32]
	fmul	DWORD PTR __real@4@4005b400000000000000
	push	0
	push	0
	push	1065353216				; 3f800000H
	push	ecx
	fstp	DWORD PTR [esp]
	call	esi

; 164  : 
; 165  : 			glCallList( PSYK_LIST );

	push	71					; 00000047H
	call	ebx

; 166  : 
; 167  : 			a = 0.3f + 0.3f*(float)sin(t*2.2f);

	fld	DWORD PTR -12+[esp+32]
	fsin

; 168  : 
; 169  : 			glColor3f( a + a*(float)sin( t*3.0f ),
; 170  : 						a + a*(float)cos( t*2.6f ),
; 171  : 						a + a*(float)cos( t*4.4f ) );

	push	ecx
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fld	DWORD PTR _t$[esp+36]
	fmul	DWORD PTR __real@4@40018ccccd0000000000
	fcos
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fmul	ST(0), ST(1)
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR -8+[esp+40]
	fmul	ST(0), ST(1)
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR -4+[esp+44]
	fsin
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fmul	ST(0), ST(1)
	fstp	DWORD PTR [esp]
	fstp	ST(0)
	call	edi

; 172  : 
; 173  : 			glRotatef( 90,0,1,0 );

	push	0
	push	1065353216				; 3f800000H
	push	0
	push	1119092736				; 42b40000H
	call	esi

; 174  : 			glRotatef( t*72, 0,0,1 );

	fld	DWORD PTR _t$[esp+32]
	fmul	DWORD PTR __real@4@40059000000000000000
	push	1065353216				; 3f800000H
	push	0
	push	0
	push	ecx
	fstp	DWORD PTR [esp]
	call	esi

; 175  : 
; 176  : 			glCallList( PSYK_LIST );

	push	71					; 00000047H
	call	ebx

; 177  : 
; 178  : 			glPopMatrix();

	call	DWORD PTR __imp__glPopMatrix@0

; 179  : 
; 180  : 	glLoadIdentity();

	call	DWORD PTR __imp__glLoadIdentity@0

; 181  : 
; 182  : 	glDisable( GL_CULL_FACE );

	push	2884					; 00000b44H
	call	DWORD PTR __imp__glDisable@4

; 183  : 
; 184  : };

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_psyk_run@@YAXPAUEVENT@@@Z ENDP			; p_psyk_run
_TEXT	ENDS
END
