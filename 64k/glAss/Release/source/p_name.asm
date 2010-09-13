	TITLE	E:\prj64k\glAss (eventad)\parts\p_name.cpp
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
;	COMDAT ??_C@_0M@ELBL@illuminator?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05EMO@h?9ecs?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05BKGA@bajs1?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05OFNJ@bajs2?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ?p_name_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_title_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?p_name_name@@3PAPADA				; p_name_name
PUBLIC	??_C@_0M@ELBL@illuminator?$AA@			; `string'
PUBLIC	??_C@_05EMO@h?9ecs?$AA@				; `string'
PUBLIC	??_C@_05BKGA@bajs1?$AA@				; `string'
PUBLIC	??_C@_05OFNJ@bajs2?$AA@				; `string'
_DATA	SEGMENT
?p_name_name@@3PAPADA DD FLAT:??_C@_0M@ELBL@illuminator?$AA@ ; p_name_name
	DD	FLAT:??_C@_05EMO@h?9ecs?$AA@
	DD	FLAT:??_C@_05BKGA@bajs1?$AA@
	DD	FLAT:??_C@_05OFNJ@bajs2?$AA@
_DATA	ENDS
;	COMDAT ??_C@_0M@ELBL@illuminator?$AA@
_DATA	SEGMENT
??_C@_0M@ELBL@illuminator?$AA@ DB 'illuminator', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_05EMO@h?9ecs?$AA@
_DATA	SEGMENT
??_C@_05EMO@h?9ecs?$AA@ DB 'h-ecs', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_05BKGA@bajs1?$AA@
_DATA	SEGMENT
??_C@_05BKGA@bajs1?$AA@ DB 'bajs1', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_05OFNJ@bajs2?$AA@
_DATA	SEGMENT
??_C@_05OFNJ@bajs2?$AA@ DB 'bajs2', 00H			; `string'
_DATA	ENDS
PUBLIC	?p_name_run@@YAXPAUEVENT@@@Z			; p_name_run
PUBLIC	__real@4@3ffe8000000000000000
PUBLIC	__real@4@3ff8a3d70a0000000000
PUBLIC	__real@4@3ffdfae1480000000000
PUBLIC	__real@4@3ffcccccccccccccd000
PUBLIC	__real@4@4005c800000000000000
PUBLIC	__real@4@3fff8000000000000000
PUBLIC	__real@4@4000c000000000000000
PUBLIC	__real@8@3ffccccccd0000000000
PUBLIC	__real@8@3fff8000000000000000
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@4@4001a000000000000000
PUBLIC	__real@8@4002a000000000000000
PUBLIC	__real@4@3ffbcccccd0000000000
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glEnd@0:NEAR
EXTRN	__fltused:NEAR
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glOrtho@48:NEAR
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	?glaQuadR@@YAXMMMMMMMMMM@Z:NEAR			; glaQuadR
EXTRN	__imp__glTexParameteri@12:NEAR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__imp__glColor3f@12:NEAR
;	COMDAT __real@4@3ffe8000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_name.cpp
CONST	SEGMENT
__real@4@3ffe8000000000000000 DD 03f000000r	; 0.5
CONST	ENDS
;	COMDAT __real@4@3ff8a3d70a0000000000
CONST	SEGMENT
__real@4@3ff8a3d70a0000000000 DD 03c23d70ar	; 0.01
CONST	ENDS
;	COMDAT __real@4@3ffdfae1480000000000
CONST	SEGMENT
__real@4@3ffdfae1480000000000 DD 03efae148r	; 0.49
CONST	ENDS
;	COMDAT __real@4@3ffcccccccccccccd000
CONST	SEGMENT
__real@4@3ffcccccccccccccd000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@4005c800000000000000
CONST	SEGMENT
__real@4@4005c800000000000000 DD 042c80000r	; 100
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT __real@4@4000c000000000000000
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT __real@8@3ffccccccd0000000000
CONST	SEGMENT
__real@8@3ffccccccd0000000000 DQ 03fc99999a0000000r ; 0.2
CONST	ENDS
;	COMDAT __real@8@3fff8000000000000000
CONST	SEGMENT
__real@8@3fff8000000000000000 DQ 03ff0000000000000r ; 1
CONST	ENDS
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@4@4001a000000000000000
CONST	SEGMENT
__real@4@4001a000000000000000 DD 040a00000r	; 5
CONST	ENDS
;	COMDAT __real@8@4002a000000000000000
CONST	SEGMENT
__real@8@4002a000000000000000 DQ 04024000000000000r ; 10
CONST	ENDS
;	COMDAT __real@4@3ffbcccccd0000000000
CONST	SEGMENT
__real@4@3ffbcccccd0000000000 DD 03dcccccdr	; 0.1
CONST	ENDS
;	COMDAT ?p_name_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = -8
_v$ = -16
_i$ = -20
_t2$17530 = -16
_b$17534 = -4
_s$17535 = -12
?p_name_run@@YAXPAUEVENT@@@Z PROC NEAR			; p_name_run, COMDAT

; 13   : void p_name_run( EVENT *e ) {

	push	ebp
	mov	ebp, esp
	and	esp, -8					; fffffff8H
	sub	esp, 20					; 00000014H
	push	ebx
	push	esi
	push	edi

; 14   : 	
; 15   : 	glEnable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4

; 16   : //	glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST );
; 17   : 	glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST );

	push	9728					; 00002600H
	push	10241					; 00002801H
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glTexParameteri@12

; 18   : 
; 19   : 	glMatrixMode( GL_PROJECTION );

	mov	esi, DWORD PTR __imp__glMatrixMode@4
	push	5889					; 00001701H
	call	esi

; 20   : 	//glScalef( 0.2, 0.3, 0.4 );
; 21   : 	glLoadIdentity();

	mov	edi, DWORD PTR __imp__glLoadIdentity@0
	call	edi

; 22   : 	glOrtho( -1, 1, -0.75f, 0.75f, -100, 100 );

	push	1079574528				; 40590000H
	push	0
	push	-1067909120				; c0590000H
	push	0
	push	1072168960				; 3fe80000H
	push	0
	push	-1075314688				; bfe80000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	-1074790400				; bff00000H
	push	0
	call	DWORD PTR __imp__glOrtho@48

; 23   : 
; 24   : 	float t = e->localTime;

	mov	ebx, DWORD PTR _e$[ebp]
	mov	eax, DWORD PTR [ebx+4]

; 25   : 
; 26   : 	glMatrixMode( GL_MODELVIEW );

	push	5888					; 00001700H
	mov	DWORD PTR _t$[esp+36], eax
	call	esi

; 27   : 	glLoadIdentity();

	call	edi

; 28   : 	glaSetTexture( GIF_NAMES );

	push	122					; 0000007aH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture

; 29   : 
; 30   : 	float v = 0;
; 31   : 	v = (float)e->customData/2.0f;

	fild	DWORD PTR [ebx+16]
	add	esp, 4

; 32   : 
; 33   : //	glBlendFunc( GL_ZERO, GL_ONE_MINUS_SRC_COLOR );
; 34   : 	glBlendFunc( GL_ONE, GL_ONE );

	push	1
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	push	1
	fstp	DWORD PTR _v$[esp+40]
	call	DWORD PTR __imp__glBlendFunc@8

; 35   : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4

; 36   : 
; 37   : 	for( float i=0; i<0.5f; i+=0.1f ) {
; 38   : 
; 39   : 		float t2 = t - (i/5.0f);
; 40   : 		float xs = 1.0f + 0.2f*cos( t2*4 );
; 41   : 		float ys = 1.0f + 0.2f*sin( t2*3 );
; 42   : 		float r = 10*cos( t2*5 );
; 43   : 
; 44   : 		float b = 1/(1+i*100);
; 45   : 		float s = 1+i;
; 46   : 
; 47   : 		glColor3f( b,b,b );
; 48   : 		glaQuadR( 0,0,0, r, 1.0f*xs*s,0.30f*ys*s, 0,v+0.49f,1,v+0.01f );

	fld	DWORD PTR _v$[esp+32]
	fadd	DWORD PTR __real@4@3ff8a3d70a0000000000
	mov	esi, DWORD PTR __imp__glColor3f@12
	mov	DWORD PTR _i$[esp+32], 0
	fstp	DWORD PTR -12+[esp+32]
	fld	DWORD PTR _v$[esp+32]
	mov	edi, DWORD PTR -12+[esp+32]
	fadd	DWORD PTR __real@4@3ffdfae1480000000000
	fstp	DWORD PTR -16+[esp+32]
	mov	ebx, DWORD PTR -16+[esp+32]
$L17527:
	fld	DWORD PTR _i$[esp+32]
	fmul	DWORD PTR __real@4@3ffcccccccccccccd000
	fsubr	DWORD PTR _t$[esp+32]
	fstp	DWORD PTR _t2$17530[esp+32]
	fld	DWORD PTR _i$[esp+32]
	fmul	DWORD PTR __real@4@4005c800000000000000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _b$17534[esp+32]
	fld	DWORD PTR _i$[esp+32]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	mov	eax, DWORD PTR _b$17534[esp+32]
	push	eax
	push	eax
	push	eax
	fstp	DWORD PTR _s$17535[esp+44]
	call	esi
	fld	DWORD PTR _t2$17530[esp+32]
	push	edi
	fmul	DWORD PTR __real@4@4000c000000000000000
	push	1065353216				; 3f800000H
	push	ebx
	push	0
	fsin
	push	ecx
	fmul	QWORD PTR __real@8@3ffccccccd0000000000
	fadd	QWORD PTR __real@8@3fff8000000000000000

; 49   : 
; 50   : 	};
; 51   : 	glEnd();

	fmul	DWORD PTR _s$17535[esp+52]
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _t2$17530[esp+56]
	fmul	DWORD PTR __real@4@40018000000000000000
	fcos
	fmul	QWORD PTR __real@8@3ffccccccd0000000000
	fadd	QWORD PTR __real@8@3fff8000000000000000
	fmul	DWORD PTR _s$17535[esp+56]
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _t2$17530[esp+60]
	fmul	DWORD PTR __real@4@4001a000000000000000
	fcos
	fmul	QWORD PTR __real@8@4002a000000000000000
	fstp	DWORD PTR [esp]
	push	0
	push	0
	push	0
	call	?glaQuadR@@YAXMMMMMMMMMM@Z		; glaQuadR
	fld	DWORD PTR _i$[esp+72]
	fadd	DWORD PTR __real@4@3ffbcccccd0000000000
	add	esp, 40					; 00000028H
	fst	DWORD PTR _i$[esp+32]
	fcomp	DWORD PTR __real@4@3ffe8000000000000000
	fnstsw	ax
	test	ah, 1
	jne	$L17527
	call	DWORD PTR __imp__glEnd@0

; 52   : /*
; 53   : 	glBlendFunc( GL_ONE_MINUS_SRC_COLOR, GL_ONE );
; 54   : 	glBegin( GL_QUADS );
; 55   : 
; 56   : 	glColor3f( 1,1,1 );
; 57   : 	glaQuadR( 0,0,0, 0, 0.8f, 0.25f, 0,v+0.49f,1,v+0.01f );
; 58   : 	glaQuadR( 0,0,0, 0, 0.8f, 0.25f, 0,v+0.49f,1,v+0.01f );
; 59   : 	glaQuadR( 0,0,0, 0, 0.8f, 0.25f, 0,v+0.49f,1,v+0.01f );
; 60   : 
; 61   : 	glEnd();
; 62   : */	
; 63   : };

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_name_run@@YAXPAUEVENT@@@Z ENDP			; p_name_run
_TEXT	ENDS
PUBLIC	?p_title_run@@YAXPAUEVENT@@@Z			; p_title_run
PUBLIC	__real@4@3ffeb333330000000000
PUBLIC	__real@4@3fffc000000000000000
PUBLIC	__real@4@3ffdaaaaaaaaaaaaa800
PUBLIC	__real@4@bffd83126f0000000000
PUBLIC	__real@4@bfff83126f0000000000
PUBLIC	__real@4@3fff83126f0000000000
PUBLIC	__real@4@3ffd83126f0000000000
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
;	COMDAT __real@4@3ffeb333330000000000
; File E:\prj64k\glAss (eventad)\parts\p_name.cpp
CONST	SEGMENT
__real@4@3ffeb333330000000000 DD 03f333333r	; 0.7
CONST	ENDS
;	COMDAT __real@4@3fffc000000000000000
CONST	SEGMENT
__real@4@3fffc000000000000000 DD 03fc00000r	; 1.5
CONST	ENDS
;	COMDAT __real@4@3ffdaaaaaaaaaaaaa800
CONST	SEGMENT
__real@4@3ffdaaaaaaaaaaaaa800 DD 03eaaaaabr	; 0.333333
CONST	ENDS
;	COMDAT __real@4@bffd83126f0000000000
CONST	SEGMENT
__real@4@bffd83126f0000000000 DD 0be83126fr	; -0.256
CONST	ENDS
;	COMDAT __real@4@bfff83126f0000000000
CONST	SEGMENT
__real@4@bfff83126f0000000000 DD 0bf83126fr	; -1.024
CONST	ENDS
;	COMDAT __real@4@3fff83126f0000000000
CONST	SEGMENT
__real@4@3fff83126f0000000000 DD 03f83126fr	; 1.024
CONST	ENDS
;	COMDAT __real@4@3ffd83126f0000000000
CONST	SEGMENT
__real@4@3ffd83126f0000000000 DD 03e83126fr	; 0.256
CONST	ENDS
;	COMDAT ?p_title_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_s$ = -12
_f$ = -8
?p_title_run@@YAXPAUEVENT@@@Z PROC NEAR			; p_title_run, COMDAT

; 65   : void p_title_run( EVENT *e ) {

	push	ebp
	mov	ebp, esp
	and	esp, -8					; fffffff8H
	sub	esp, 12					; 0000000cH
	push	ebx
	push	esi
	push	edi

; 66   : 	
; 67   : 	glDisable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glDisable@4

; 68   : 	glBlendFunc( GL_ONE, GL_ONE );

	mov	esi, DWORD PTR __imp__glBlendFunc@8
	push	1
	push	1
	call	esi

; 69   : 
; 70   : 	glMatrixMode( GL_PROJECTION );

	mov	edi, DWORD PTR __imp__glMatrixMode@4
	push	5889					; 00001701H
	call	edi

; 71   : 	//glScalef( 0.2, 0.3, 0.4 );
; 72   : 	glLoadIdentity();

	mov	ebx, DWORD PTR __imp__glLoadIdentity@0
	call	ebx

; 73   : 	glOrtho( -1, 1, -0.75f, 0.75f, -100, 100 );

	push	1079574528				; 40590000H
	push	0
	push	-1067909120				; c0590000H
	push	0
	push	1072168960				; 3fe80000H
	push	0
	push	-1075314688				; bfe80000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	-1074790400				; bff00000H
	push	0
	call	DWORD PTR __imp__glOrtho@48

; 74   : 
; 75   : 	glMatrixMode( GL_MODELVIEW );

	push	5888					; 00001700H
	call	edi

; 76   : 	glLoadIdentity();

	call	ebx

; 77   : 	glaSetTexture( GIF_TITLE );

	push	113					; 00000071H
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4

; 78   : 
; 79   : 	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_BLEND );

	push	3042					; 00000be2H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12

; 80   : 	glBlendFunc( GL_ZERO, GL_ONE_MINUS_SRC_COLOR );

	push	769					; 00000301H
	push	0
	call	esi

; 81   : 	glEnable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4

; 82   : 	float cd = (e->localTime);

	mov	esi, DWORD PTR _e$[ebp]
	fld	DWORD PTR [esi+4]

; 83   : 	//if( cd<1 ) cd=1;
; 84   : 	float s = 0.7f + (3/(cd*cd));

	fld	ST(0)
	fmulp	ST(1), ST(0)
	fdivr	DWORD PTR __real@4@4000c000000000000000
	fadd	DWORD PTR __real@4@3ffeb333330000000000
	fst	DWORD PTR _s$[esp+24]

; 85   : 	if( s<0.7f ) s=0.7f;

	fcomp	DWORD PTR __real@4@3ffeb333330000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L17541
	mov	DWORD PTR _s$[esp+24], 1060320051	; 3f333333H
$L17541:

; 86   : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4

; 87   : 	float f = (e->localTime-1.5f)/3;

	fld	DWORD PTR [esi+4]
	fsub	DWORD PTR __real@4@3fffc000000000000000
	fmul	DWORD PTR __real@4@3ffdaaaaaaaaaaaaa800
	fst	DWORD PTR _f$[esp+24]

; 88   : 	if( f>1 ) f = 1;

	fcomp	DWORD PTR __real@4@3fff8000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17543
	mov	DWORD PTR _f$[esp+24], 1065353216	; 3f800000H
$L17543:

; 89   : 	glColor3f( f, f, f );

	mov	eax, DWORD PTR _f$[esp+24]
	push	eax
	push	eax
	push	eax
	call	DWORD PTR __imp__glColor3f@12

; 90   : 	glTexCoord2f( 0, 1 );

	mov	esi, DWORD PTR __imp__glTexCoord2f@8
	push	1065353216				; 3f800000H
	push	0
	call	esi

; 91   : 	glVertex3f( -1.024f*s, -0.256f*s, 0 );

	fld	DWORD PTR _s$[esp+24]
	fmul	DWORD PTR __real@4@bffd83126f0000000000
	mov	edi, DWORD PTR __imp__glVertex3f@12
	push	0
	fstp	DWORD PTR -8+[esp+28]
	fld	DWORD PTR _s$[esp+28]
	mov	ebx, DWORD PTR -8+[esp+28]
	fmul	DWORD PTR __real@4@bfff83126f0000000000
	push	ebx
	fstp	DWORD PTR -4+[esp+32]
	mov	eax, DWORD PTR -4+[esp+32]
	push	eax
	call	edi

; 92   : 	glTexCoord2f( 1, 1 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	esi

; 93   : 	glVertex3f(  1.024f*s, -0.256f*s, 0 );

	fld	DWORD PTR _s$[esp+24]
	fmul	DWORD PTR __real@4@3fff83126f0000000000
	push	0
	push	ebx
	fstp	DWORD PTR -8+[esp+32]
	mov	ebx, DWORD PTR -8+[esp+32]
	push	ebx
	call	edi

; 94   : 	glTexCoord2f( 1, 0 );

	push	0
	push	1065353216				; 3f800000H
	call	esi

; 95   : 	glVertex3f(  1.024f*s,  0.256f*s, 0 );

	fld	DWORD PTR _s$[esp+24]
	fmul	DWORD PTR __real@4@3ffd83126f0000000000
	push	0
	fstp	DWORD PTR -8+[esp+28]
	mov	ecx, DWORD PTR -8+[esp+28]
	push	ecx
	push	ebx
	call	edi

; 96   : 	glTexCoord2f( 0, 0 );

	push	0
	push	0
	call	esi

; 97   : 	glVertex3f( -1.024f*s,  0.256f*s, 0 );

	mov	edx, DWORD PTR -8+[esp+24]
	mov	eax, DWORD PTR -4+[esp+24]
	push	0
	push	edx
	push	eax
	call	edi

; 98   : 	glEnd();

	call	DWORD PTR __imp__glEnd@0

; 99   : };

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?p_title_run@@YAXPAUEVENT@@@Z ENDP			; p_title_run
_TEXT	ENDS
END
