	TITLE	E:\prj64k\glAss (eventad)\p_misc.cpp
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
;	COMDAT ??_C@_0BG@KNEM@april?52000?0?5norway?4?4?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BH@NLAD@you?8re?5not?5dreaming?4?4?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BN@CEMB@vi?5kan?5it?5och?5multimedia?$CB?5?3?$CJ?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ?p_whiteflash_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_fadeblack_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_static_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_futurama_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_fulintro_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_hanzon_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?p_whiteflash_run@@YAXPAUEVENT@@@Z		; p_whiteflash_run
PUBLIC	__real@4@4002a000000000000000
PUBLIC	__real@4@3fff8000000000000000
EXTRN	__imp__glDisable@4:NEAR
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glEnd@0:NEAR
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	?glaQuadR@@YAXMMMMMMMMMM@Z:NEAR			; glaQuadR
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__fltused:NEAR
EXTRN	__imp__glColor3f@12:NEAR
;	COMDAT __real@4@4002a000000000000000
; File E:\prj64k\glAss (eventad)\p_misc.cpp
CONST	SEGMENT
__real@4@4002a000000000000000 DD 041200000r	; 10
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT ?p_whiteflash_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_b$ = 8
?p_whiteflash_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_whiteflash_run, COMDAT

; 5    : void p_whiteflash_run( EVENT *e ) {

	push	esi

; 6    : 	glMatrixMode( GL_MODELVIEW );

	mov	esi, DWORD PTR __imp__glMatrixMode@4
	push	edi
	push	5888					; 00001700H
	call	esi

; 7    : 	glLoadIdentity();

	mov	edi, DWORD PTR __imp__glLoadIdentity@0
	call	edi

; 8    : 	glMatrixMode( GL_PROJECTION );

	push	5889					; 00001701H
	call	esi

; 9    : 	glLoadIdentity();

	call	edi

; 10   : 
; 11   : 	glDisable( GL_TEXTURE_2D );

	push	3553					; 00000de1H
	call	DWORD PTR __imp__glDisable@4

; 12   : 	glBlendFunc( GL_ONE, GL_ONE );

	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8

; 13   : 	glEnable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4

; 14   : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4

; 15   : 
; 16   : 	float b = 1/(1+e->localTime*10);//>renderAmount;

	mov	eax, DWORD PTR _e$[esp+4]
	fld	DWORD PTR [eax+4]
	fmul	DWORD PTR __real@4@4002a000000000000000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _b$[esp+4]

; 17   : 	glColor3f( b, b, b );

	mov	eax, DWORD PTR _b$[esp+4]
	push	eax
	push	eax
	push	eax
	call	DWORD PTR __imp__glColor3f@12

; 18   : 
; 19   : 	glaQuadR( 0,0,0, 0, 1,1, 0,0,0,0 );

	push	0
	push	0
	push	0
	push	0
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	0
	push	0
	push	0
	push	0
	call	?glaQuadR@@YAXMMMMMMMMMM@Z		; glaQuadR
	add	esp, 40					; 00000028H

; 20   : 
; 21   : 	glEnd();

	call	DWORD PTR __imp__glEnd@0
	pop	edi
	pop	esi

; 22   : };

	ret	0
?p_whiteflash_run@@YAXPAUEVENT@@@Z ENDP			; p_whiteflash_run
_TEXT	ENDS
PUBLIC	?p_fadeblack_run@@YAXPAUEVENT@@@Z		; p_fadeblack_run
PUBLIC	__real@4@4003a000000000000000
EXTRN	__imp__glTexEnvi@12:NEAR
;	COMDAT __real@4@4003a000000000000000
; File E:\prj64k\glAss (eventad)\p_misc.cpp
CONST	SEGMENT
__real@4@4003a000000000000000 DD 041a00000r	; 20
CONST	ENDS
;	COMDAT ?p_fadeblack_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_b$ = 8
?p_fadeblack_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_fadeblack_run, COMDAT

; 24   : void p_fadeblack_run( EVENT *e ) {

	push	esi

; 25   : 	glMatrixMode( GL_MODELVIEW );

	mov	esi, DWORD PTR __imp__glMatrixMode@4
	push	edi
	push	5888					; 00001700H
	call	esi

; 26   : 	glLoadIdentity();

	mov	edi, DWORD PTR __imp__glLoadIdentity@0
	call	edi

; 27   : 	glMatrixMode( GL_PROJECTION );

	push	5889					; 00001701H
	call	esi

; 28   : 	glLoadIdentity();

	call	edi

; 29   : 
; 30   : 	glDisable( GL_TEXTURE_2D );

	push	3553					; 00000de1H
	call	DWORD PTR __imp__glDisable@4

; 31   : 	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12

; 32   : 	glBlendFunc( GL_ZERO, GL_ONE_MINUS_SRC_COLOR );

	push	769					; 00000301H
	push	0
	call	DWORD PTR __imp__glBlendFunc@8

; 33   : 	glEnable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4

; 34   : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4

; 35   : 
; 36   : 	float b = 1.0f - (1/(1+e->localTime*20));//>renderAmount;

	mov	eax, DWORD PTR _e$[esp+4]
	fld	DWORD PTR [eax+4]
	fmul	DWORD PTR __real@4@4003a000000000000000
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fdivr	DWORD PTR __real@4@3fff8000000000000000
	fsubr	DWORD PTR __real@4@3fff8000000000000000
	fstp	DWORD PTR _b$[esp+4]

; 37   : 	glColor3f( b, b, b );

	mov	eax, DWORD PTR _b$[esp+4]
	push	eax
	push	eax
	push	eax
	call	DWORD PTR __imp__glColor3f@12

; 38   : 	glaQuadR( 0,0,0, 0, 1,1, 0,0,0,0 );

	push	0
	push	0
	push	0
	push	0
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	0
	push	0
	push	0
	push	0
	call	?glaQuadR@@YAXMMMMMMMMMM@Z		; glaQuadR
	add	esp, 40					; 00000028H

; 39   : 
; 40   : 	glEnd();

	call	DWORD PTR __imp__glEnd@0
	pop	edi
	pop	esi

; 41   : };

	ret	0
?p_fadeblack_run@@YAXPAUEVENT@@@Z ENDP			; p_fadeblack_run
_TEXT	ENDS
PUBLIC	?p_static_run@@YAXPAUEVENT@@@Z			; p_static_run
PUBLIC	__real@4@3ff78080808080808000
PUBLIC	__real@4@3ff8a3d70a0000000000
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
;	COMDAT __real@4@3ff78080808080808000
; File E:\prj64k\glAss (eventad)\p_misc.cpp
CONST	SEGMENT
__real@4@3ff78080808080808000 DD 03b808081r	; 0.00392157
CONST	ENDS
;	COMDAT __real@4@3ff8a3d70a0000000000
CONST	SEGMENT
__real@4@3ff8a3d70a0000000000 DD 03c23d70ar	; 0.01
CONST	ENDS
;	COMDAT ?p_static_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_u$ = 8
_b$ = -4
?p_static_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_static_run, COMDAT

; 43   : void p_static_run( EVENT *e ) {

	push	ecx
	push	esi

; 44   : 	glMatrixMode( GL_MODELVIEW );

	mov	esi, DWORD PTR __imp__glMatrixMode@4
	push	edi
	push	5888					; 00001700H
	call	esi

; 45   : 	glLoadIdentity();

	mov	edi, DWORD PTR __imp__glLoadIdentity@0
	call	edi

; 46   : 	glMatrixMode( GL_PROJECTION );

	push	5889					; 00001701H
	call	esi

; 47   : 	glLoadIdentity();

	call	edi

; 48   : 
; 49   : 	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12

; 50   : 	glBlendFunc( GL_ZERO, GL_ONE_MINUS_SRC_COLOR );

	push	769					; 00000301H
	push	0
	call	DWORD PTR __imp__glBlendFunc@8

; 51   : 	glEnable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4

; 52   : 	float u = e->localTime;

	mov	eax, DWORD PTR _e$[esp+8]

; 53   : 	float b = (float)(e->customData) / 255.0f;

	fild	DWORD PTR [eax+16]
	mov	ecx, DWORD PTR [eax+4]

; 54   : 	glaSetTexture( GIF_CLOUDS );

	push	111					; 0000006fH
	mov	DWORD PTR _u$[esp+12], ecx
	fmul	DWORD PTR __real@4@3ff78080808080808000
	fstp	DWORD PTR _b$[esp+16]
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4

; 55   : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4

; 56   : 	glColor3f( b,b,b );

	mov	eax, DWORD PTR _b$[esp+12]
	push	eax
	push	eax
	push	eax
	call	DWORD PTR __imp__glColor3f@12

; 57   : 	glaQuadR( 0,0,0, 0, 1,1, u,0.1f,u+0.01f,-1.2f );

	fld	DWORD PTR _u$[esp+8]
	fadd	DWORD PTR __real@4@3ff8a3d70a0000000000
	mov	edx, DWORD PTR _u$[esp+8]
	push	-1080452710				; bf99999aH
	push	ecx
	fstp	DWORD PTR [esp]
	push	1036831949				; 3dcccccdH
	push	edx
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	0
	push	0
	push	0
	push	0
	call	?glaQuadR@@YAXMMMMMMMMMM@Z		; glaQuadR
	add	esp, 40					; 00000028H

; 58   : 	//glaQuad( 0,0,0, 1,1, u,1.1f,u+0.001f,-1.3f );
; 59   : 	glEnd();

	call	DWORD PTR __imp__glEnd@0
	pop	edi
	pop	esi

; 60   : };

	pop	ecx
	ret	0
?p_static_run@@YAXPAUEVENT@@@Z ENDP			; p_static_run
_TEXT	ENDS
PUBLIC	?p_futurama_run@@YAXPAUEVENT@@@Z		; p_futurama_run
PUBLIC	__real@4@3ffd8000000000000000
PUBLIC	__real@4@3ffeb333330000000000
PUBLIC	__real@4@3ffd99999a0000000000
PUBLIC	__real@4@3ffbcccccd0000000000
PUBLIC	__real@4@3ff7c49ba60000000000
PUBLIC	__real@4@3ff6c49ba60000000000
PUBLIC	__real@4@3ff583126f0000000000
PUBLIC	__real@4@3ff9f83e0f83e0f84000
PUBLIC	__real@8@3ffb80b242070b8cf800
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
;	COMDAT __real@4@3ffd8000000000000000
; File E:\prj64k\glAss (eventad)\p_misc.cpp
CONST	SEGMENT
__real@4@3ffd8000000000000000 DD 03e800000r	; 0.25
CONST	ENDS
;	COMDAT __real@4@3ffeb333330000000000
CONST	SEGMENT
__real@4@3ffeb333330000000000 DD 03f333333r	; 0.7
CONST	ENDS
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT __real@4@3ffbcccccd0000000000
CONST	SEGMENT
__real@4@3ffbcccccd0000000000 DD 03dcccccdr	; 0.1
CONST	ENDS
;	COMDAT __real@4@3ff7c49ba60000000000
CONST	SEGMENT
__real@4@3ff7c49ba60000000000 DD 03bc49ba6r	; 0.006
CONST	ENDS
;	COMDAT __real@4@3ff6c49ba60000000000
CONST	SEGMENT
__real@4@3ff6c49ba60000000000 DD 03b449ba6r	; 0.003
CONST	ENDS
;	COMDAT __real@4@3ff583126f0000000000
CONST	SEGMENT
__real@4@3ff583126f0000000000 DD 03a83126fr	; 0.001
CONST	ENDS
;	COMDAT __real@4@3ff9f83e0f83e0f84000
CONST	SEGMENT
__real@4@3ff9f83e0f83e0f84000 DD 03cf83e10r	; 0.030303
CONST	ENDS
;	COMDAT __real@8@3ffb80b242070b8cf800
CONST	SEGMENT
__real@8@3ffb80b242070b8cf800 DQ 03fb0164840e1719fr ; 0.06284
CONST	ENDS
;	COMDAT ?p_futurama_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_u0$ = -36
_u1$ = -28
_v0$ = -40
_v1$ = -32
_b$ = 8
_t$ = -32
_i$ = -36
?p_futurama_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_futurama_run, COMDAT

; 62   : void p_futurama_run( EVENT *e ) {

	sub	esp, 40					; 00000028H

; 63   : 
; 64   : 	float x0, y0, x1, y1, u0, u1, v0, v1;
; 65   : 	float b = e->renderAmount;

	mov	eax, DWORD PTR _e$[esp+36]
	mov	ecx, DWORD PTR [eax+20]

; 66   : 	float t = e->localTime;

	mov	edx, DWORD PTR [eax+4]
	push	ebx
	push	ebp
	push	esi

; 67   : 
; 68   : 	glMatrixMode( GL_MODELVIEW );

	mov	esi, DWORD PTR __imp__glMatrixMode@4
	push	edi
	push	5888					; 00001700H
	mov	DWORD PTR _b$[esp+56], ecx
	mov	DWORD PTR _t$[esp+60], edx
	call	esi

; 69   : 	glLoadIdentity();

	mov	edi, DWORD PTR __imp__glLoadIdentity@0
	call	edi

; 70   : 	glMatrixMode( GL_PROJECTION );

	push	5889					; 00001701H
	call	esi

; 71   : 	glLoadIdentity();

	call	edi

; 72   : 
; 73   : 	glBlendFunc( GL_ONE, GL_ONE );

	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8

; 74   : 	glEnable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4

; 75   : 	glaSetTexture( GIF_CLOUDS );

	push	111					; 0000006fH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4

; 76   : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4

; 77   : 
; 78   : 	for( int i=0; i<100; i++ ) {
; 79   : 
; 80   : 		u0 = (float)i/33;
; 81   : 		u1 = (float)(i+1)/33;
; 82   : 		v0 = t/4;

	fld	DWORD PTR _t$[esp+56]
	fmul	DWORD PTR __real@4@3ffd8000000000000000

; 83   : 		v1 = v0-0.01f;//+0.01f;
; 84   : 
; 85   : 		x0 = 2.0f*(float)cos( (float)i*3.142/50 );
; 86   : 		y0 = 2.0f*(float)sin( (float)i*3.142/50 );
; 87   : 		x1 = 2.0f*(float)cos( ((float)i+1)*3.142/50 );
; 88   : 		y1 = 2.0f*(float)sin( ((float)i+1)*3.142/50 );
; 89   : 
; 90   : 		glColor3f( 0.1f*b, 0.3f*b, 0.7f*b);
; 91   : 
; 92   : 		glTexCoord2f( u1, v0 );
; 93   : 		glVertex3f( 0,0,0 );
; 94   : 
; 95   : 		glTexCoord2f( u0, v0 );
; 96   : 		glVertex3f( 0,0,0 );
; 97   : 
; 98   : 		glColor3f( 0.001f*b, 0.003f*b, 0.006f*b);

	mov	esi, DWORD PTR __imp__glTexCoord2f@8
	mov	edi, DWORD PTR __imp__glVertex3f@12
	xor	eax, eax
	fst	DWORD PTR _v0$[esp+56]
	mov	DWORD PTR _i$[esp+56], eax
	fsub	DWORD PTR __real@4@3ff8a3d70a0000000000
	fstp	DWORD PTR _v1$[esp+56]
	fld	DWORD PTR _b$[esp+52]
	fmul	DWORD PTR __real@4@3ffeb333330000000000
	fstp	DWORD PTR -24+[esp+56]
	fld	DWORD PTR _b$[esp+52]
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	fstp	DWORD PTR -20+[esp+56]
	fld	DWORD PTR _b$[esp+52]
	fmul	DWORD PTR __real@4@3ffbcccccd0000000000
	fstp	DWORD PTR -16+[esp+56]
	fld	DWORD PTR _b$[esp+52]
	fmul	DWORD PTR __real@4@3ff7c49ba60000000000
	fstp	DWORD PTR -12+[esp+56]
	fld	DWORD PTR _b$[esp+52]
	fmul	DWORD PTR __real@4@3ff6c49ba60000000000
	fstp	DWORD PTR -8+[esp+56]
	fld	DWORD PTR _b$[esp+52]
	fmul	DWORD PTR __real@4@3ff583126f0000000000
	fstp	DWORD PTR -4+[esp+56]
$L17207:
	fild	DWORD PTR _i$[esp+56]
	mov	ecx, DWORD PTR -20+[esp+56]
	mov	edx, DWORD PTR -16+[esp+56]
	lea	ebx, DWORD PTR [eax+1]
	mov	eax, DWORD PTR -24+[esp+56]
	fst	DWORD PTR 8+[esp+52]
	fmul	DWORD PTR __real@4@3ff9f83e0f83e0f84000
	mov	DWORD PTR -28+[esp+56], ebx
	push	eax
	push	ecx
	fstp	DWORD PTR _u0$[esp+64]
	push	edx
	fild	DWORD PTR -28+[esp+68]
	fmul	DWORD PTR __real@4@3ff9f83e0f83e0f84000
	fstp	DWORD PTR _u1$[esp+68]
	call	DWORD PTR __imp__glColor3f@12
	mov	eax, DWORD PTR _v0$[esp+56]
	mov	ebp, DWORD PTR _u1$[esp+56]
	push	eax
	push	ebp
	call	esi
	push	0
	push	0
	push	0
	call	edi
	mov	ecx, DWORD PTR _v0$[esp+56]
	mov	edx, DWORD PTR _u0$[esp+56]
	push	ecx
	push	edx
	call	esi
	push	0
	push	0
	push	0
	call	edi
	mov	eax, DWORD PTR -12+[esp+56]
	mov	ecx, DWORD PTR -8+[esp+56]
	mov	edx, DWORD PTR -4+[esp+56]
	push	eax
	push	ecx
	push	edx
	call	DWORD PTR __imp__glColor3f@12

; 99   : 
; 100  : 		glTexCoord2f( u0, v1 );

	mov	eax, DWORD PTR _v1$[esp+56]
	mov	ecx, DWORD PTR _u0$[esp+56]
	push	eax
	push	ecx
	call	esi
	fld	DWORD PTR 8+[esp+52]
	fmul	QWORD PTR __real@8@3ffb80b242070b8cf800

; 101  : 		glVertex3f( x0, y0, 0 );

	push	0
	push	ecx
	fld	ST(0)
	fsin
	fadd	ST(0), ST(0)
	fstp	DWORD PTR [esp]
	push	ecx
	fcos
	fadd	ST(0), ST(0)
	fstp	DWORD PTR [esp]
	call	edi

; 102  : 
; 103  : 		glTexCoord2f( u1, v1 );

	mov	edx, DWORD PTR _v1$[esp+56]
	push	edx
	push	ebp
	call	esi
	fld	DWORD PTR 8+[esp+52]
	fadd	DWORD PTR __real@4@3fff8000000000000000

; 104  : 		glVertex3f( x1, y1, 0 );

	push	0
	push	ecx
	fmul	QWORD PTR __real@8@3ffb80b242070b8cf800
	fld	ST(0)
	fsin
	fadd	ST(0), ST(0)
	fstp	DWORD PTR [esp]
	push	ecx
	fcos
	fadd	ST(0), ST(0)
	fstp	DWORD PTR [esp]
	call	edi
	mov	eax, ebx
	cmp	eax, 100				; 00000064H
	mov	DWORD PTR _i$[esp+56], eax
	jl	$L17207

; 105  : 
; 106  : 	};
; 107  : 	glEnd();

	call	DWORD PTR __imp__glEnd@0
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 108  : };

	add	esp, 40					; 00000028H
	ret	0
?p_futurama_run@@YAXPAUEVENT@@@Z ENDP			; p_futurama_run
_TEXT	ENDS
PUBLIC	?p_fulintro_run@@YAXPAUEVENT@@@Z		; p_fulintro_run
PUBLIC	??_C@_0BG@KNEM@april?52000?0?5norway?4?4?4?$AA@	; `string'
PUBLIC	??_C@_0BH@NLAD@you?8re?5not?5dreaming?4?4?4?$AA@ ; `string'
PUBLIC	??_C@_0BN@CEMB@vi?5kan?5it?5och?5multimedia?$CB?5?3?$CJ?$AA@ ; `string'
EXTRN	?glaDrawString@@YAXMMMMMMPAD@Z:NEAR		; glaDrawString
;	COMDAT ??_C@_0BG@KNEM@april?52000?0?5norway?4?4?4?$AA@
; File E:\prj64k\glAss (eventad)\p_misc.cpp
_DATA	SEGMENT
??_C@_0BG@KNEM@april?52000?0?5norway?4?4?4?$AA@ DB 'april 2000, norway...'
	DB	00H						; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BH@NLAD@you?8re?5not?5dreaming?4?4?4?$AA@
_DATA	SEGMENT
??_C@_0BH@NLAD@you?8re?5not?5dreaming?4?4?4?$AA@ DB 'you''re not dreaming'
	DB	'...', 00H					; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BN@CEMB@vi?5kan?5it?5och?5multimedia?$CB?5?3?$CJ?$AA@
_DATA	SEGMENT
??_C@_0BN@CEMB@vi?5kan?5it?5och?5multimedia?$CB?5?3?$CJ?$AA@ DB 'vi kan i'
	DB	't och multimedia! :)', 00H			; `string'
_DATA	ENDS
;	COMDAT ?p_fulintro_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_b$ = 8
?p_fulintro_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_fulintro_run, COMDAT

; 110  : void p_fulintro_run( EVENT *e ) {

	push	esi

; 111  : 
; 112  : 	float b = 1.0f;
; 113  : 	float t = e->localTime;
; 114  : 
; 115  : 	glMatrixMode( GL_MODELVIEW );

	mov	esi, DWORD PTR __imp__glMatrixMode@4
	push	edi
	push	5888					; 00001700H
	call	esi

; 116  : 	glLoadIdentity();

	mov	edi, DWORD PTR __imp__glLoadIdentity@0
	call	edi

; 117  : 	glMatrixMode( GL_PROJECTION );

	push	5889					; 00001701H
	call	esi

; 118  : 	glLoadIdentity();

	call	edi

; 119  : 
; 120  : 	glBlendFunc( GL_ONE, GL_ONE );

	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8

; 121  : 	glEnable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4

; 122  : 	glaSetTexture( GIF_CLOUDS );

	push	111					; 0000006fH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture

; 123  : 	glBegin( GL_QUADS );

	mov	esi, DWORD PTR __imp__glBegin@4
	add	esp, 4
	push	7
	call	esi

; 124  : /*
; 125  : 	for( int i=0; i<100; i++ ) {
; 126  : 
; 127  : 		u0 = (float)i/33;
; 128  : 		u1 = (float)(i+1)/33;
; 129  : 		v0 = t/4;
; 130  : 		v1 = v0-0.01f;//+0.01f;
; 131  : 
; 132  : 		x0 = 2*cos( (float)i*3.142/50 );
; 133  : 		y0 = 2*sin( (float)i*3.142/50 );
; 134  : 		x1 = 2*cos( ((float)i+1)*3.142/50 );
; 135  : 		y1 = 2*sin( ((float)i+1)*3.142/50 );
; 136  : 
; 137  : 		glColor3f( 0.1f*b, 0.3f*b, 0.7f*b);
; 138  : 
; 139  : 		glTexCoord2f( u1, v0 );
; 140  : 		glVertex3f( 0,0,0 );
; 141  : 
; 142  : 		glTexCoord2f( u0, v0 );
; 143  : 		glVertex3f( 0,0,0 );
; 144  : 
; 145  : 		glColor3f( 0.001f*b, 0.003f*b, 0.006f*b);
; 146  : 
; 147  : 		glTexCoord2f( u0, v1 );
; 148  : 		glVertex3f( x0, y0, 0 );
; 149  : 
; 150  : 		glTexCoord2f( u1, v1 );
; 151  : 		glVertex3f( x1, y1, 0 );
; 152  : 
; 153  : 	};
; 154  : 	glEnd();
; 155  : */
; 156  : 	glaSetTexture( GIF_FONT );

	push	106					; 0000006aH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4

; 157  : 	glBegin( GL_QUADS );

	push	7
	call	esi

; 158  : 	b = e->renderAmount;

	mov	esi, DWORD PTR _e$[esp+4]
	mov	eax, DWORD PTR [esi+20]

; 159  : 	glColor3f( b, b, b );

	push	eax
	push	eax
	push	eax
	mov	DWORD PTR _b$[esp+16], eax
	call	DWORD PTR __imp__glColor3f@12

; 160  : 	switch( e->customData ) {

	mov	eax, DWORD PTR [esi+16]
	sub	eax, 0
	pop	edi
	pop	esi
	je	SHORT $L17229
	dec	eax
	je	SHORT $L17231
	dec	eax
	jne	SHORT $L17226

; 167  : 		case 2:
; 168  : 			glaDrawString( 0,0,0, 0.04f,0.04f,0.04f, "vi kan it och multimedia! :)" );

	push	OFFSET FLAT:??_C@_0BN@CEMB@vi?5kan?5it?5och?5multimedia?$CB?5?3?$CJ?$AA@ ; `string'

; 169  : 			break;

	jmp	SHORT $L17309
$L17231:

; 163  : 			break;
; 164  : 		case 1:
; 165  : 			glaDrawString( 0,0,0, 0.04f,0.04f,0.04f, "you're not dreaming..." );

	push	OFFSET FLAT:??_C@_0BH@NLAD@you?8re?5not?5dreaming?4?4?4?$AA@ ; `string'

; 166  : 			break;

	jmp	SHORT $L17309
$L17229:

; 161  : 		case 0:
; 162  : 			glaDrawString( 0,0,0, 0.04f,0.04f,0.04f, "april 2000, norway..." );

	push	OFFSET FLAT:??_C@_0BG@KNEM@april?52000?0?5norway?4?4?4?$AA@ ; `string'
$L17309:
	push	1025758986				; 3d23d70aH
	push	1025758986				; 3d23d70aH
	push	1025758986				; 3d23d70aH
	push	0
	push	0
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString
	add	esp, 28					; 0000001cH
$L17226:

; 170  : 	};
; 171  : 	glEnd();

	jmp	DWORD PTR __imp__glEnd@0
?p_fulintro_run@@YAXPAUEVENT@@@Z ENDP			; p_fulintro_run
_TEXT	ENDS
PUBLIC	?p_hanzon_run@@YAXPAUEVENT@@@Z			; p_hanzon_run
;	COMDAT ?p_hanzon_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_b$ = 8
?p_hanzon_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_hanzon_run, COMDAT

; 175  : void p_hanzon_run( EVENT *e ) {

	push	esi

; 176  : 	glMatrixMode( GL_MODELVIEW );

	mov	esi, DWORD PTR __imp__glMatrixMode@4
	push	edi
	push	5888					; 00001700H
	call	esi

; 177  : 	glLoadIdentity();

	mov	edi, DWORD PTR __imp__glLoadIdentity@0
	call	edi

; 178  : 	glMatrixMode( GL_PROJECTION );

	push	5889					; 00001701H
	call	esi

; 179  : 	glLoadIdentity();

	call	edi

; 180  : 
; 181  : 	float b = 0.3f * e->renderAmount;

	mov	eax, DWORD PTR _e$[esp+4]
	fld	DWORD PTR [eax+20]

; 182  : 
; 183  : 	// rita hanson
; 184  : 	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

	push	8448					; 00002100H
	fmul	DWORD PTR __real@4@3ffd99999a0000000000
	push	8704					; 00002200H
	push	8960					; 00002300H
	fstp	DWORD PTR _b$[esp+16]
	call	DWORD PTR __imp__glTexEnvi@12

; 185  : 	glBlendFunc( GL_ZERO, GL_ONE_MINUS_SRC_COLOR );

	push	769					; 00000301H
	push	0
	call	DWORD PTR __imp__glBlendFunc@8

; 186  : 	glEnable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4

; 187  : 	glaSetTexture( GIF_SILU );

	push	121					; 00000079H
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4

; 188  : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4

; 189  : 	glColor3f( b, b, b );

	mov	eax, DWORD PTR _b$[esp+4]
	push	eax
	push	eax
	push	eax
	call	DWORD PTR __imp__glColor3f@12

; 190  : 	glaQuadR( -0.5f,-0.1f,0, 0, 0.4f, 1.0f, 0.01f, 0.99f, 0.99f,0.01f );

	push	1008981770				; 3c23d70aH
	push	1065185444				; 3f7d70a4H
	push	1065185444				; 3f7d70a4H
	push	1008981770				; 3c23d70aH
	push	1065353216				; 3f800000H
	push	1053609165				; 3ecccccdH
	push	0
	push	0
	push	-1110651699				; bdcccccdH
	push	-1090519040				; bf000000H
	call	?glaQuadR@@YAXMMMMMMMMMM@Z		; glaQuadR
	add	esp, 40					; 00000028H

; 191  : 	glEnd();

	call	DWORD PTR __imp__glEnd@0
	pop	edi
	pop	esi

; 192  : };

	ret	0
?p_hanzon_run@@YAXPAUEVENT@@@Z ENDP			; p_hanzon_run
_TEXT	ENDS
END
