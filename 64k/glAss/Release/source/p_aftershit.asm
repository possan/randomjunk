	TITLE	E:\prj64k\glAss (eventad)\parts\p_aftershit.cpp
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
;	COMDAT ??_C@_0P@NDIP@glass?5?5?$CIc?$CJ2000?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BD@FGNJ@r?4i?4p?5lolo?5ferrari?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0M@ELBL@illuminator?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0P@MAOE@code?0?5graphics?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05EMO@h?9ecs?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BA@DHBK@music?0?5graphics?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0BK@GFFF@hanzon?0?5summlan?0?5weird?5ed?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_05NCPJ@ideas?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ?pas_drawbackground@@YAXMMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pas_renderfade@@YAXM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pas_drawtitle@@YAXM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pas_drawcreds@@YAXM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?p_aftershit_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?pas_drawbackground@@YAXMMMM@Z			; pas_drawbackground
PUBLIC	__real@4@3ffcbda12f301c17f000
PUBLIC	__real@4@3ffd8000000000000000
PUBLIC	__real@4@3ffb8888888888888800
PUBLIC	__real@4@3ffe8000000000000000
PUBLIC	__real@4@3ffca7de6d4968816000
PUBLIC	__real@4@4000c000000000000000
PUBLIC	__real@4@3ffd9696964fb922b000
PUBLIC	__real@4@3ffaccccccccccccd000
PUBLIC	__real@4@3ffdaaaaaaaaaaaaa800
PUBLIC	__real@4@4002f000000000000000
PUBLIC	__real@4@3fff88f5c30000000000
PUBLIC	__real@4@4002e000000000000000
PUBLIC	__real@4@4003a000000000000000
PUBLIC	__real@4@40039800000000000000
PUBLIC	__real@4@3fff8000000000000000
EXTRN	__imp__glEnd@0:NEAR
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	?_pd@@3PAMA:DWORD				; _pd
EXTRN	?_pu@@3PAMA:DWORD				; _pu
EXTRN	?_pv@@3PAMA:DWORD				; _pv
EXTRN	__imp__glBegin@4:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
EXTRN	__imp__glColor3f@12:NEAR
EXTRN	__fltused:NEAR
;	COMDAT __real@4@3ffcbda12f301c17f000
; File E:\prj64k\glAss (eventad)\parts\p_aftershit.cpp
CONST	SEGMENT
__real@4@3ffcbda12f301c17f000 DD 03e3da12fr	; 0.185185
CONST	ENDS
;	COMDAT __real@4@3ffd8000000000000000
CONST	SEGMENT
__real@4@3ffd8000000000000000 DD 03e800000r	; 0.25
CONST	ENDS
;	COMDAT __real@4@3ffb8888888888888800
CONST	SEGMENT
__real@4@3ffb8888888888888800 DD 03d888889r	; 0.0666667
CONST	ENDS
;	COMDAT __real@4@3ffe8000000000000000
CONST	SEGMENT
__real@4@3ffe8000000000000000 DD 03f000000r	; 0.5
CONST	ENDS
;	COMDAT __real@4@3ffca7de6d4968816000
CONST	SEGMENT
__real@4@3ffca7de6d4968816000 DD 03e27de6dr	; 0.163934
CONST	ENDS
;	COMDAT __real@4@4000c000000000000000
CONST	SEGMENT
__real@4@4000c000000000000000 DD 040400000r	; 3
CONST	ENDS
;	COMDAT __real@4@3ffd9696964fb922b000
CONST	SEGMENT
__real@4@3ffd9696964fb922b000 DD 03e969696r	; 0.294118
CONST	ENDS
;	COMDAT __real@4@3ffaccccccccccccd000
CONST	SEGMENT
__real@4@3ffaccccccccccccd000 DD 03d4ccccdr	; 0.05
CONST	ENDS
;	COMDAT __real@4@3ffdaaaaaaaaaaaaa800
CONST	SEGMENT
__real@4@3ffdaaaaaaaaaaaaa800 DD 03eaaaaabr	; 0.333333
CONST	ENDS
;	COMDAT __real@4@4002f000000000000000
CONST	SEGMENT
__real@4@4002f000000000000000 DD 041700000r	; 15
CONST	ENDS
;	COMDAT __real@4@3fff88f5c30000000000
CONST	SEGMENT
__real@4@3fff88f5c30000000000 DD 03f88f5c3r	; 1.07
CONST	ENDS
;	COMDAT __real@4@4002e000000000000000
CONST	SEGMENT
__real@4@4002e000000000000000 DD 041600000r	; 14
CONST	ENDS
;	COMDAT __real@4@4003a000000000000000
CONST	SEGMENT
__real@4@4003a000000000000000 DD 041a00000r	; 20
CONST	ENDS
;	COMDAT __real@4@40039800000000000000
CONST	SEGMENT
__real@4@40039800000000000000 DD 041980000r	; 19
CONST	ENDS
;	COMDAT __real@4@3fff8000000000000000
CONST	SEGMENT
__real@4@3fff8000000000000000 DD 03f800000r	; 1
CONST	ENDS
;	COMDAT ?pas_drawbackground@@YAXMMMM@Z
_TEXT	SEGMENT
_t1$ = 8
_t2$ = 12
_scale$ = 16
_br$ = 20
_i$ = -12
_j$ = -8
_x$17216 = -4
_y$17218 = 12
_x2$17220 = 8
_y2$17222 = 20
?pas_drawbackground@@YAXMMMM@Z PROC NEAR		; pas_drawbackground, COMDAT

; 5    : void pas_drawbackground( float t1, float t2, float scale, float br ) {

	sub	esp, 12					; 0000000cH
	push	ebx
	push	ebp
	push	esi

; 6    : 	int i, j;
; 7    : 
; 8    : 	// höjdmap 
; 9    : 	for( j=0; j<30; j++ ) {

	xor	esi, esi
	push	edi
	mov	DWORD PTR _j$[esp+28], esi
	xor	eax, eax
$L17187:

; 10   : 		for( i=0; i<40; i++ ) {
; 11   : 			long o = j*40+i;
; 12   : 			_pd[ o ] = 2;
; 13   : 			_pd[ o ] += 3*(float)cos( (j-t2)/5.4f ) * (float)cos( (i-t1)/6.1f );

	fild	DWORD PTR _j$[esp+28]

; 14   : 			_pd[ o ] += 2*(float)sin( (i-t1)/3.4f );
; 15   : 			_pd[ o ] += 2*(float)cos( (j-t2)/4.0f );
; 16   : 			_pu[ o ] = 0.5f + (((float)(i-20) * scale ) / 20.0f);
; 17   : 			_pv[ o ] = 0.5f + (((float)(j-15) * scale ) / 15.0f);

	lea	edx, DWORD PTR [esi-15]
	mov	DWORD PTR -4+[esp+28], edx
	xor	ecx, ecx
	fsub	DWORD PTR _t2$[esp+24]
	mov	DWORD PTR _i$[esp+28], ecx
	fld	ST(0)
	fmul	DWORD PTR __real@4@3ffcbda12f301c17f000
	fcos
	fstp	DWORD PTR -8+[esp+28]
	fmul	DWORD PTR __real@4@3ffd8000000000000000
	fcos
	fadd	ST(0), ST(0)
	fild	DWORD PTR -4+[esp+28]
	fmul	DWORD PTR _scale$[esp+24]
	fmul	DWORD PTR __real@4@3ffb8888888888888800
	fadd	DWORD PTR __real@4@3ffe8000000000000000
$L17190:
	fild	DWORD PTR _i$[esp+28]
	mov	edx, DWORD PTR ?_pd@@3PAMA		; _pd
	mov	DWORD PTR [eax+edx], 1073741824		; 40000000H
	mov	edx, DWORD PTR ?_pd@@3PAMA		; _pd
	fsub	DWORD PTR _t1$[esp+24]
	add	eax, 4
	fld	ST(0)
	fmul	DWORD PTR __real@4@3ffca7de6d4968816000
	fcos
	fmul	DWORD PTR -8+[esp+28]
	fmul	DWORD PTR __real@4@4000c000000000000000
	fadd	DWORD PTR [eax+edx-4]
	fstp	DWORD PTR [eax+edx-4]
	mov	edx, DWORD PTR ?_pd@@3PAMA		; _pd
	fmul	DWORD PTR __real@4@3ffd9696964fb922b000
	fsin
	fadd	ST(0), ST(0)
	fadd	DWORD PTR [eax+edx-4]
	fstp	DWORD PTR [eax+edx-4]
	mov	edx, DWORD PTR ?_pd@@3PAMA		; _pd
	fld	ST(1)
	fadd	DWORD PTR [eax+edx-4]
	fstp	DWORD PTR [eax+edx-4]
	lea	edx, DWORD PTR [ecx-20]
	mov	DWORD PTR -4+[esp+28], edx
	fild	DWORD PTR -4+[esp+28]
	mov	edx, DWORD PTR ?_pu@@3PAMA		; _pu
	inc	ecx
	cmp	ecx, 40					; 00000028H
	fmul	DWORD PTR _scale$[esp+24]
	mov	DWORD PTR _i$[esp+28], ecx
	fmul	DWORD PTR __real@4@3ffaccccccccccccd000
	fadd	DWORD PTR __real@4@3ffe8000000000000000
	fstp	DWORD PTR [eax+edx-4]
	mov	edx, DWORD PTR ?_pv@@3PAMA		; _pv
	fld	ST(0)
	fstp	DWORD PTR [eax+edx-4]
	jl	$L17190
	inc	esi
	fstp	ST(0)
	cmp	eax, 4800				; 000012c0H
	fstp	ST(0)
	mov	DWORD PTR _j$[esp+28], esi
	jl	$L17187

; 18   : 		};
; 19   : 	};
; 20   : 
; 21   : 	// envmap
; 22   : 	for( j=1; j<29; j++ ) {

	mov	edi, 164				; 000000a4H
$L17200:

; 23   : 		for( i=1; i<39; i++ ) {

	mov	eax, edi
	mov	esi, 38					; 00000026H
$L17203:

; 24   : 			long o = j*40+i;
; 25   : 			float ny = _pd[o+40] - _pd[o-40];

	mov	ecx, DWORD PTR ?_pd@@3PAMA		; _pd
	fld	DWORD PTR [eax+ecx+160]

; 26   : 			float nx = _pd[o+1] - _pd[o-1];
; 27   : 			_pu[ o ] += (nx / 3.0f);

	mov	edx, DWORD PTR ?_pu@@3PAMA		; _pu
	fsub	DWORD PTR [eax+ecx-160]
	add	eax, 4
	dec	esi
	fld	DWORD PTR [eax+ecx]
	fsub	DWORD PTR [eax+ecx-8]
	fmul	DWORD PTR __real@4@3ffdaaaaaaaaaaaaa800
	fadd	DWORD PTR [eax+edx-4]
	fstp	DWORD PTR [eax+edx-4]

; 28   : 			_pv[ o ] += (ny / 3.0f);

	mov	ecx, DWORD PTR ?_pv@@3PAMA		; _pv
	fmul	DWORD PTR __real@4@3ffdaaaaaaaaaaaaa800
	fadd	DWORD PTR [eax+ecx-4]
	fstp	DWORD PTR [eax+ecx-4]
	jne	SHORT $L17203
	add	edi, 160				; 000000a0H
	cmp	edi, 4644				; 00001224H
	jl	SHORT $L17200

; 29   : 		};
; 30   : 	};
; 31   : 	
; 32   : 	// render
; 33   : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4
	mov	ebp, DWORD PTR _br$[esp+24]
	mov	edi, DWORD PTR __imp__glTexCoord2f@8
	mov	ebx, DWORD PTR __imp__glVertex3f@12

; 34   : 	for( j=1; j<29; j++ ) {

	mov	DWORD PTR _j$[esp+28], 1
	mov	DWORD PTR 16+[esp+24], 328		; 00000148H
$L17209:

; 35   : 		for( i=1; i<39; i++ ) {
; 36   : 			long o = (j*40)+i;
; 37   : 			float x = ((float)i-20.0f)/20.0f;
; 38   : 			float y = ((float)j-15.0f)/15.0f;
; 39   : 			float x2 = ((float)i-19.0f)/20.0f;
; 40   : 			float y2 = ((float)j-14.0f)/15.0f;
; 41   : 			x *= 1.07f;
; 42   : 			y *= 1.07f;
; 43   : 			x2 *= 1.07f;
; 44   : 			y2 *= 1.07f;
; 45   : 
; 46   : 			glColor3f( br, br, br );
; 47   : 			
; 48   : 			glTexCoord2f( _pu[o], 1-_pv[o] );
; 49   : 			glVertex3f( x, y, 0 );
; 50   : 
; 51   : 			glTexCoord2f( _pu[o+1], 1-_pv[o+1] );
; 52   : 			glVertex3f( x2, y, 0 );
; 53   : 
; 54   : 			glTexCoord2f( _pu[o+41], 1-_pv[o+41] );
; 55   : 			glVertex3f( x2, y2, 0 );
; 56   : 
; 57   : 			glTexCoord2f( _pu[o+40], 1-_pv[o+40] );
; 58   : 			glVertex3f( x, y2, 0 );
; 59   : 		};
; 60   : 	};
; 61   : 	glEnd();

	fild	DWORD PTR _j$[esp+28]
	mov	esi, DWORD PTR 16+[esp+24]
	mov	DWORD PTR _i$[esp+28], 1
	fld	ST(0)
	fsub	DWORD PTR __real@4@4002f000000000000000
	fmul	DWORD PTR __real@4@3ffb8888888888888800
	fmul	DWORD PTR __real@4@3fff88f5c30000000000
	fstp	DWORD PTR _y$17218[esp+24]
	fsub	DWORD PTR __real@4@4002e000000000000000
	fmul	DWORD PTR __real@4@3ffb8888888888888800
	fmul	DWORD PTR __real@4@3fff88f5c30000000000
	fstp	DWORD PTR _y2$17222[esp+24]
$L17212:
	fild	DWORD PTR _i$[esp+28]
	push	ebp
	push	ebp
	push	ebp
	fld	ST(0)
	fsub	DWORD PTR __real@4@4003a000000000000000
	fmul	DWORD PTR __real@4@3ffaccccccccccccd000
	fmul	DWORD PTR __real@4@3fff88f5c30000000000
	fstp	DWORD PTR _x$17216[esp+40]
	fsub	DWORD PTR __real@4@40039800000000000000
	fmul	DWORD PTR __real@4@3ffaccccccccccccd000
	fmul	DWORD PTR __real@4@3fff88f5c30000000000
	fstp	DWORD PTR _x2$17220[esp+36]
	call	DWORD PTR __imp__glColor3f@12
	mov	eax, DWORD PTR ?_pv@@3PAMA		; _pv
	fld	DWORD PTR __real@4@3fff8000000000000000
	fsub	DWORD PTR [esi+eax-164]
	push	ecx
	mov	ecx, DWORD PTR ?_pu@@3PAMA		; _pu
	mov	edx, DWORD PTR [esi+ecx-164]
	fstp	DWORD PTR [esp]
	push	edx
	call	edi
	mov	eax, DWORD PTR _y$17218[esp+24]
	mov	ecx, DWORD PTR _x$17216[esp+28]
	push	0
	push	eax
	push	ecx
	call	ebx
	fld	DWORD PTR __real@4@3fff8000000000000000
	mov	edx, DWORD PTR ?_pv@@3PAMA		; _pv
	fsub	DWORD PTR [esi+edx-160]
	mov	eax, DWORD PTR ?_pu@@3PAMA		; _pu
	push	ecx
	mov	ecx, DWORD PTR [esi+eax-160]
	fstp	DWORD PTR [esp]
	push	ecx
	call	edi
	mov	edx, DWORD PTR _y$17218[esp+24]
	mov	eax, DWORD PTR _x2$17220[esp+24]
	push	0
	push	edx
	push	eax
	call	ebx
	fld	DWORD PTR __real@4@3fff8000000000000000
	mov	ecx, DWORD PTR ?_pv@@3PAMA		; _pv
	fsub	DWORD PTR [esi+ecx]
	mov	edx, DWORD PTR ?_pu@@3PAMA		; _pu
	mov	eax, DWORD PTR [esi+edx]
	push	ecx
	fstp	DWORD PTR [esp]
	push	eax
	call	edi
	mov	ecx, DWORD PTR _y2$17222[esp+24]
	mov	edx, DWORD PTR _x2$17220[esp+24]
	push	0
	push	ecx
	push	edx
	call	ebx
	fld	DWORD PTR __real@4@3fff8000000000000000
	mov	eax, DWORD PTR ?_pv@@3PAMA		; _pv
	fsub	DWORD PTR [esi+eax-4]
	push	ecx
	mov	ecx, DWORD PTR ?_pu@@3PAMA		; _pu
	mov	edx, DWORD PTR [esi+ecx-4]
	fstp	DWORD PTR [esp]
	push	edx
	call	edi
	mov	eax, DWORD PTR _y2$17222[esp+24]
	mov	ecx, DWORD PTR _x$17216[esp+28]
	push	0
	push	eax
	push	ecx
	call	ebx
	mov	eax, DWORD PTR _i$[esp+28]
	inc	eax
	mov	DWORD PTR _i$[esp+28], eax
	add	esi, 4
	cmp	eax, 39					; 00000027H
	jl	$L17212
	mov	eax, DWORD PTR 16+[esp+24]
	mov	esi, DWORD PTR _j$[esp+28]
	add	eax, 160				; 000000a0H
	inc	esi
	cmp	eax, 4808				; 000012c8H
	mov	DWORD PTR _j$[esp+28], esi
	mov	DWORD PTR 16+[esp+24], eax
	jl	$L17209
	call	DWORD PTR __imp__glEnd@0
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 62   : };

	add	esp, 12					; 0000000cH
	ret	0
?pas_drawbackground@@YAXMMMM@Z ENDP			; pas_drawbackground
_TEXT	ENDS
PUBLIC	?pas_renderfade@@YAXM@Z				; pas_renderfade
PUBLIC	__real@4@00000000000000000000
PUBLIC	__real@4@3ffcccccccccccccd000
PUBLIC	__real@4@4002a800000000000000
PUBLIC	__real@4@3ffbccccccccccccd000
PUBLIC	__real@4@3ffacccccd0000000000
EXTRN	__imp__glDisable@4:NEAR
;	COMDAT __real@4@00000000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_aftershit.cpp
CONST	SEGMENT
__real@4@00000000000000000000 DD 000000000r	; 0
CONST	ENDS
;	COMDAT __real@4@3ffcccccccccccccd000
CONST	SEGMENT
__real@4@3ffcccccccccccccd000 DD 03e4ccccdr	; 0.2
CONST	ENDS
;	COMDAT __real@4@4002a800000000000000
CONST	SEGMENT
__real@4@4002a800000000000000 DD 041280000r	; 10.5
CONST	ENDS
;	COMDAT __real@4@3ffbccccccccccccd000
CONST	SEGMENT
__real@4@3ffbccccccccccccd000 DD 03dcccccdr	; 0.1
CONST	ENDS
;	COMDAT __real@4@3ffacccccd0000000000
CONST	SEGMENT
__real@4@3ffacccccd0000000000 DD 03d4ccccdr	; 0.05
CONST	ENDS
;	COMDAT ?pas_renderfade@@YAXM@Z
_TEXT	SEGMENT
_t$ = 8
_i$ = -12
_t2$17232 = -16
_x$17235 = -4
_w$17237 = -8
?pas_renderfade@@YAXM@Z PROC NEAR			; pas_renderfade, COMDAT

; 64   : void pas_renderfade( float t ) {

	sub	esp, 16					; 00000010H
	push	ebx
	push	ebp
	push	esi
	push	edi

; 65   : 	glDisable( GL_TEXTURE_2D );

	push	3553					; 00000de1H
	call	DWORD PTR __imp__glDisable@4

; 66   : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4

; 67   : 	float magic = 0.5f / 10.0f;
; 68   : 	for( float i=0; i<=20; i++ ) {

	mov	ebp, DWORD PTR __imp__glColor3f@12
	mov	esi, DWORD PTR __imp__glVertex3f@12
	mov	DWORD PTR _i$[esp+32], 0
$L17229:

; 69   : 		
; 70   : 		float t2 = t - i/5.0f;

	fld	DWORD PTR _i$[esp+32]
	fmul	DWORD PTR __real@4@3ffcccccccccccccd000
	fsubr	DWORD PTR _t$[esp+28]
	fst	DWORD PTR _t2$17232[esp+32]

; 71   : 		if( t2>0 ) {

	fcomp	DWORD PTR __real@4@00000000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	$L17230

; 72   : 			if( t2>1.0f ) t2=1.0f;

	fld	DWORD PTR _t2$17232[esp+32]
	fcomp	DWORD PTR __real@4@3fff8000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17234
	mov	DWORD PTR _t2$17232[esp+32], 1065353216	; 3f800000H
$L17234:

; 73   : 
; 74   : 			float x = ((float)i-10.5f)/10.0f;

	fld	DWORD PTR _i$[esp+32]
	fsub	DWORD PTR __real@4@4002a800000000000000
	fmul	DWORD PTR __real@4@3ffbccccccccccccd000
	fstp	DWORD PTR _x$17235[esp+32]

; 75   : 			float w = magic - (t2);
; 76   : 			w = t2*(magic);

	fld	DWORD PTR _t2$17232[esp+32]
	fmul	DWORD PTR __real@4@3ffacccccd0000000000
	fst	DWORD PTR _w$17237[esp+32]

; 77   : 			if (w>magic ) w=magic;

	fcomp	DWORD PTR __real@4@3ffacccccd0000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17238
	mov	DWORD PTR _w$17237[esp+32], 1028443341	; 3d4ccccdH
$L17238:

; 78   : 
; 79   : 			//float b = t2;
; 80   : 			glColor3f( t2,t2,t2 );

	mov	eax, DWORD PTR _t2$17232[esp+32]
	push	eax
	push	eax
	push	eax
	call	ebp

; 81   : 			
; 82   : 			glVertex3f( x-w, -1, 0 );

	fld	DWORD PTR _x$17235[esp+32]
	fsub	DWORD PTR _w$17237[esp+32]
	push	0
	push	-1082130432				; bf800000H
	fstp	DWORD PTR -16+[esp+40]
	mov	edi, DWORD PTR -16+[esp+40]
	push	edi
	call	esi

; 83   : 			glVertex3f( x+w, -1, 0 );

	fld	DWORD PTR _w$17237[esp+32]
	fadd	DWORD PTR _x$17235[esp+32]
	push	0
	push	-1082130432				; bf800000H
	fstp	DWORD PTR -4+[esp+40]
	mov	ebx, DWORD PTR -4+[esp+40]
	push	ebx
	call	esi

; 84   : 			glVertex3f( x+w, 1, 0 );

	push	0
	push	1065353216				; 3f800000H
	push	ebx
	call	esi

; 85   : 			glVertex3f( x-w, 1, 0 );

	push	0
	push	1065353216				; 3f800000H
	push	edi
	call	esi
$L17230:
	fld	DWORD PTR _i$[esp+32]
	fadd	DWORD PTR __real@4@3fff8000000000000000
	fst	DWORD PTR _i$[esp+32]
	fcomp	DWORD PTR __real@4@4003a000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	$L17229

; 86   : 		};
; 87   : 	};
; 88   : 	glEnd();

	call	DWORD PTR __imp__glEnd@0
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 89   : };

	add	esp, 16					; 00000010H
	ret	0
?pas_renderfade@@YAXM@Z ENDP				; pas_renderfade
_TEXT	ENDS
PUBLIC	?pas_drawtitle@@YAXM@Z				; pas_drawtitle
PUBLIC	??_C@_0P@NDIP@glass?5?5?$CIc?$CJ2000?$AA@	; `string'
PUBLIC	??_C@_0BD@FGNJ@r?4i?4p?5lolo?5ferrari?$AA@	; `string'
PUBLIC	__real@4@40008000000000000000
PUBLIC	__real@4@3ffec916870000000000
PUBLIC	__real@4@40018000000000000000
PUBLIC	__real@4@4001c000000000000000
PUBLIC	__real@4@3ffd99999a0000000000
EXTRN	?glaSetTexture@@YAXH@Z:NEAR			; glaSetTexture
EXTRN	?glaQuadR@@YAXMMMMMMMMMM@Z:NEAR			; glaQuadR
EXTRN	?glaDrawString@@YAXMMMMMMPAD@Z:NEAR		; glaDrawString
;	COMDAT ??_C@_0P@NDIP@glass?5?5?$CIc?$CJ2000?$AA@
; File E:\prj64k\glAss (eventad)\parts\p_aftershit.cpp
_DATA	SEGMENT
??_C@_0P@NDIP@glass?5?5?$CIc?$CJ2000?$AA@ DB 'glass  (c)2000', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BD@FGNJ@r?4i?4p?5lolo?5ferrari?$AA@
_DATA	SEGMENT
??_C@_0BD@FGNJ@r?4i?4p?5lolo?5ferrari?$AA@ DB 'r.i.p lolo ferrari', 00H ; `string'
_DATA	ENDS
;	COMDAT __real@4@40008000000000000000
CONST	SEGMENT
__real@4@40008000000000000000 DD 040000000r	; 2
CONST	ENDS
;	COMDAT __real@4@3ffec916870000000000
CONST	SEGMENT
__real@4@3ffec916870000000000 DD 03f491687r	; 0.7855
CONST	ENDS
;	COMDAT __real@4@40018000000000000000
CONST	SEGMENT
__real@4@40018000000000000000 DD 040800000r	; 4
CONST	ENDS
;	COMDAT __real@4@4001c000000000000000
CONST	SEGMENT
__real@4@4001c000000000000000 DD 040c00000r	; 6
CONST	ENDS
;	COMDAT __real@4@3ffd99999a0000000000
CONST	SEGMENT
__real@4@3ffd99999a0000000000 DD 03e99999ar	; 0.3
CONST	ENDS
;	COMDAT ?pas_drawtitle@@YAXM@Z
_TEXT	SEGMENT
_t$ = 8
_fadein$ = -4
?pas_drawtitle@@YAXM@Z PROC NEAR			; pas_drawtitle, COMDAT

; 91   : void pas_drawtitle( float t ) {

	push	ecx

; 92   : 		//glColor3f( b*1*s3, b*s3*0.5f + b*0.3f*(float)sin(time*7+y), b*s3*0.5f + b*0.3f*(float)cos(time*7-y) );
; 93   : 
; 94   : 	float fadein = 0;
; 95   : 	if( t<2 )

	fld	DWORD PTR _t$[esp]
	mov	DWORD PTR _fadein$[esp+4], 0
	fcomp	DWORD PTR __real@4@40008000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L17243

; 96   : 		fadein = 2.0f - 2.0f*(float)sin( t * 3.142f / 4.0f );

	fld	DWORD PTR _t$[esp]
	fmul	DWORD PTR __real@4@3ffec916870000000000
	fsin
	fadd	ST(0), ST(0)
	fsubr	DWORD PTR __real@4@40008000000000000000
	fstp	DWORD PTR _fadein$[esp+4]
$L17243:

; 97   : 	if( t>4 )

	fld	DWORD PTR _t$[esp]
	fcomp	DWORD PTR __real@4@40018000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17245

; 98   : 		fadein = 2.0f - 2.0f*(float)sin( (6-t) * 3.142f / 4.0f );

	fld	DWORD PTR __real@4@4001c000000000000000
	fsub	DWORD PTR _t$[esp]
	fmul	DWORD PTR __real@4@3ffec916870000000000
	fsin
	fadd	ST(0), ST(0)
	fsubr	DWORD PTR __real@4@40008000000000000000
	fstp	DWORD PTR _fadein$[esp+4]
$L17245:
	push	ebx
	push	esi
	push	edi

; 99   : 
; 100  : 	glaSetTexture( GIF_PSIKORP3 );

	push	112					; 00000070H
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture

; 101  : 
; 102  : 	glBegin( GL_QUADS );

	mov	esi, DWORD PTR __imp__glBegin@4
	add	esp, 4
	push	7
	call	esi

; 103  : 	glColor3f( 1, 1, 1 );

	mov	edi, DWORD PTR __imp__glColor3f@12
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	edi

; 104  : 	glaQuadR( fadein, 0, 0, 0, 0.6f, 0.2f, 0, 1, 1, 0 );

	mov	eax, DWORD PTR _fadein$[esp+16]
	push	0
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	0
	push	1045220557				; 3e4ccccdH
	push	1058642330				; 3f19999aH
	push	0
	push	0
	push	0
	push	eax
	call	?glaQuadR@@YAXMMMMMMMMMM@Z		; glaQuadR

; 105  : 	glEnd();

	mov	ebx, DWORD PTR __imp__glEnd@0
	add	esp, 40					; 00000028H
	call	ebx

; 106  : 
; 107  : 	glaSetTexture( GIF_FONT );

	push	106					; 0000006aH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4

; 108  : 
; 109  : 	glBegin( GL_QUADS );

	push	7
	call	esi

; 110  : 	glColor3f( 1, 1, 1 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	edi

; 111  : 	glaDrawString( -fadein, 0.3f, 0, 0.033f, 0.033f, 0.1f, "glass  (c)2000" );	

	fld	DWORD PTR _fadein$[esp+16]
	push	OFFSET FLAT:??_C@_0P@NDIP@glass?5?5?$CIc?$CJ2000?$AA@ ; `string'
	fchs
	push	1036831949				; 3dcccccdH
	push	1023879938				; 3d072b02H
	push	1023879938				; 3d072b02H
	push	0
	push	1050253722				; 3e99999aH
	push	ecx
	fstp	DWORD PTR [esp]
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString

; 112  : 	//glaDrawString( 0, -0.3f+fadein, 0, 0.033f, 0.033f, 0.1f, "penguins sucks!" );	
; 113  : 	glaDrawString( 0, -0.3f+fadein, 0, 0.025f, 0.025f, 0.05f, "r.i.p lolo ferrari" );	

	fld	DWORD PTR _fadein$[esp+44]
	add	esp, 28					; 0000001cH
	fsub	DWORD PTR __real@4@3ffd99999a0000000000
	push	OFFSET FLAT:??_C@_0BD@FGNJ@r?4i?4p?5lolo?5ferrari?$AA@ ; `string'
	push	1028443341				; 3d4ccccdH
	push	1020054733				; 3ccccccdH
	push	1020054733				; 3ccccccdH
	push	0
	push	ecx
	fstp	DWORD PTR [esp]
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString
	add	esp, 28					; 0000001cH

; 114  : 	glEnd();

	call	ebx
	pop	edi
	pop	esi
	pop	ebx

; 115  : };

	pop	ecx
	ret	0
?pas_drawtitle@@YAXM@Z ENDP				; pas_drawtitle
_TEXT	ENDS
PUBLIC	?pas_drawcreds@@YAXM@Z				; pas_drawcreds
PUBLIC	??_C@_0M@ELBL@illuminator?$AA@			; `string'
PUBLIC	??_C@_0P@MAOE@code?0?5graphics?$AA@		; `string'
PUBLIC	??_C@_05EMO@h?9ecs?$AA@				; `string'
PUBLIC	??_C@_0BA@DHBK@music?0?5graphics?$AA@		; `string'
PUBLIC	??_C@_0BK@GFFF@hanzon?0?5summlan?0?5weird?5ed?$AA@ ; `string'
PUBLIC	??_C@_05NCPJ@ideas?$AA@				; `string'
PUBLIC	__real@4@bfffd9999a0000000000
PUBLIC	__real@4@3fffcccccd0000000000
PUBLIC	__real@4@3fff8ccccd0000000000
PUBLIC	__real@4@3ffffc28f60000000000
PUBLIC	__real@4@3ffeb333330000000000
PUBLIC	__real@4@3ffed70a3d0000000000
PUBLIC	__real@4@bffe99999a0000000000
PUBLIC	__real@4@3fffb5c28f0000000000
;	COMDAT ??_C@_0M@ELBL@illuminator?$AA@
; File E:\prj64k\glAss (eventad)\parts\p_aftershit.cpp
_DATA	SEGMENT
??_C@_0M@ELBL@illuminator?$AA@ DB 'illuminator', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0P@MAOE@code?0?5graphics?$AA@
_DATA	SEGMENT
??_C@_0P@MAOE@code?0?5graphics?$AA@ DB 'code, graphics', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_05EMO@h?9ecs?$AA@
_DATA	SEGMENT
??_C@_05EMO@h?9ecs?$AA@ DB 'h-ecs', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BA@DHBK@music?0?5graphics?$AA@
_DATA	SEGMENT
??_C@_0BA@DHBK@music?0?5graphics?$AA@ DB 'music, graphics', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_0BK@GFFF@hanzon?0?5summlan?0?5weird?5ed?$AA@
_DATA	SEGMENT
??_C@_0BK@GFFF@hanzon?0?5summlan?0?5weird?5ed?$AA@ DB 'hanzon, summlan, w'
	DB	'eird ed', 00H				; `string'
_DATA	ENDS
;	COMDAT ??_C@_05NCPJ@ideas?$AA@
_DATA	SEGMENT
??_C@_05NCPJ@ideas?$AA@ DB 'ideas', 00H			; `string'
_DATA	ENDS
;	COMDAT __real@4@bfffd9999a0000000000
CONST	SEGMENT
__real@4@bfffd9999a0000000000 DD 0bfd9999ar	; -1.7
CONST	ENDS
;	COMDAT __real@4@3fffcccccd0000000000
CONST	SEGMENT
__real@4@3fffcccccd0000000000 DD 03fcccccdr	; 1.6
CONST	ENDS
;	COMDAT __real@4@3fff8ccccd0000000000
CONST	SEGMENT
__real@4@3fff8ccccd0000000000 DD 03f8ccccdr	; 1.1
CONST	ENDS
;	COMDAT __real@4@3ffffc28f60000000000
CONST	SEGMENT
__real@4@3ffffc28f60000000000 DD 03ffc28f6r	; 1.97
CONST	ENDS
;	COMDAT __real@4@3ffeb333330000000000
CONST	SEGMENT
__real@4@3ffeb333330000000000 DD 03f333333r	; 0.7
CONST	ENDS
;	COMDAT __real@4@3ffed70a3d0000000000
CONST	SEGMENT
__real@4@3ffed70a3d0000000000 DD 03f570a3dr	; 0.84
CONST	ENDS
;	COMDAT __real@4@bffe99999a0000000000
CONST	SEGMENT
__real@4@bffe99999a0000000000 DD 0bf19999ar	; -0.6
CONST	ENDS
;	COMDAT __real@4@3fffb5c28f0000000000
CONST	SEGMENT
__real@4@3fffb5c28f0000000000 DD 03fb5c28fr	; 1.42
CONST	ENDS
;	COMDAT ?pas_drawcreds@@YAXM@Z
_TEXT	SEGMENT
_t$ = 8
_fadein$ = -4
?pas_drawcreds@@YAXM@Z PROC NEAR			; pas_drawcreds, COMDAT

; 117  : void pas_drawcreds( float t ) {

	push	ecx

; 118  : 		//glColor3f( b*1*s3, b*s3*0.5f + b*0.3f*(float)sin(time*7+y), b*s3*0.5f + b*0.3f*(float)cos(time*7-y) );
; 119  : 
; 120  : 	float fadein = 0;
; 121  : 	if( t<2 )

	fld	DWORD PTR _t$[esp]
	mov	DWORD PTR _fadein$[esp+4], 0
	fcomp	DWORD PTR __real@4@40008000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L17253

; 122  : 		fadein = 2.0f - 2.0f*(float)sin( t * 3.142f / 4.0f );

	fld	DWORD PTR _t$[esp]
	fmul	DWORD PTR __real@4@3ffec916870000000000
	fsin
	fadd	ST(0), ST(0)
	fsubr	DWORD PTR __real@4@40008000000000000000
	fstp	DWORD PTR _fadein$[esp+4]
$L17253:

; 123  : 	if( t>4 )

	fld	DWORD PTR _t$[esp]
	fcomp	DWORD PTR __real@4@40018000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17255

; 124  : 		fadein = 2.0f - 2.0f*(float)sin( (6-t) * 3.142f / 4.0f );

	fld	DWORD PTR __real@4@4001c000000000000000
	fsub	DWORD PTR _t$[esp]
	fmul	DWORD PTR __real@4@3ffec916870000000000
	fsin
	fadd	ST(0), ST(0)
	fsubr	DWORD PTR __real@4@40008000000000000000
	fstp	DWORD PTR _fadein$[esp+4]
$L17255:

; 125  : 
; 126  : 	glaSetTexture( GIF_FONT );

	push	106					; 0000006aH
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture
	add	esp, 4

; 127  : 	glBegin( GL_QUADS );

	push	7
	call	DWORD PTR __imp__glBegin@4

; 128  : 	glColor3f( 1, 1, 1 );

	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	push	1065353216				; 3f800000H
	call	DWORD PTR __imp__glColor3f@12

; 129  : 
; 130  : 	glaDrawString( -fadein*1.7f, 0.6f, 0, 0.03f, 0.03f, 0.04f, "illuminator" );	

	fld	DWORD PTR _fadein$[esp+4]
	fmul	DWORD PTR __real@4@bfffd9999a0000000000
	push	OFFSET FLAT:??_C@_0M@ELBL@illuminator?$AA@ ; `string'
	push	1025758986				; 3d23d70aH
	push	1022739087				; 3cf5c28fH
	push	1022739087				; 3cf5c28fH
	push	0
	push	1058642330				; 3f19999aH
	push	ecx
	fstp	DWORD PTR [esp]
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString

; 131  : 	glaDrawString( fadein*1.6f,  0.5f, 0, 0.03f, 0.03f, 0.04f, "code, graphics" );	

	fld	DWORD PTR _fadein$[esp+32]
	add	esp, 28					; 0000001cH
	fmul	DWORD PTR __real@4@3fffcccccd0000000000
	push	OFFSET FLAT:??_C@_0P@MAOE@code?0?5graphics?$AA@ ; `string'
	push	1025758986				; 3d23d70aH
	push	1022739087				; 3cf5c28fH
	push	1022739087				; 3cf5c28fH
	push	0
	push	1056964608				; 3f000000H
	push	ecx
	fstp	DWORD PTR [esp]
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString

; 132  : 	glaDrawString( 0,       0.05f-fadein*1.1f, 0, 0.03f, 0.03f, 0.04f, "h-ecs" );	

	fld	DWORD PTR _fadein$[esp+32]
	add	esp, 28					; 0000001cH
	fmul	DWORD PTR __real@4@3fff8ccccd0000000000
	push	OFFSET FLAT:??_C@_05EMO@h?9ecs?$AA@	; `string'
	push	1025758986				; 3d23d70aH
	push	1022739087				; 3cf5c28fH
	fsubr	DWORD PTR __real@4@3ffacccccd0000000000
	push	1022739087				; 3cf5c28fH
	push	0
	push	ecx
	fstp	DWORD PTR [esp]
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString

; 133  : 	glaDrawString( fadein*1.97f,  -0.05f, 0, 0.03f, 0.03f, 0.04f, "music, graphics" );	

	fld	DWORD PTR _fadein$[esp+32]
	fmul	DWORD PTR __real@4@3ffffc28f60000000000
	add	esp, 28					; 0000001cH
	push	OFFSET FLAT:??_C@_0BA@DHBK@music?0?5graphics?$AA@ ; `string'
	push	1025758986				; 3d23d70aH
	push	1022739087				; 3cf5c28fH
	push	1022739087				; 3cf5c28fH
	push	0
	push	-1119040307				; bd4ccccdH
	push	ecx
	fstp	DWORD PTR [esp]
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString

; 134  : 	glaDrawString( 0,       -0.5f+fadein*0.7f, 0, 0.03f, 0.03f, 0.04f, "hanzon, summlan, weird ed" );	

	fld	DWORD PTR _fadein$[esp+32]
	add	esp, 28					; 0000001cH
	fmul	DWORD PTR __real@4@3ffeb333330000000000
	push	OFFSET FLAT:??_C@_0BK@GFFF@hanzon?0?5summlan?0?5weird?5ed?$AA@ ; `string'
	push	1025758986				; 3d23d70aH
	push	1022739087				; 3cf5c28fH
	fsub	DWORD PTR __real@4@3ffe8000000000000000
	push	1022739087				; 3cf5c28fH
	push	0
	push	ecx
	fstp	DWORD PTR [esp]
	push	0
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString

; 135  : 	glaDrawString( fadein*1.42f,  -0.6f-fadein*0.84f, 0, 0.03f, 0.03f, 0.04f, "ideas" );	

	fld	DWORD PTR _fadein$[esp+32]
	fmul	DWORD PTR __real@4@3ffed70a3d0000000000
	add	esp, 28					; 0000001cH
	push	OFFSET FLAT:??_C@_05NCPJ@ideas?$AA@	; `string'
	push	1025758986				; 3d23d70aH
	fsubr	DWORD PTR __real@4@bffe99999a0000000000
	push	1022739087				; 3cf5c28fH
	push	1022739087				; 3cf5c28fH
	push	0
	push	ecx
	fstp	DWORD PTR [esp]
	fld	DWORD PTR _fadein$[esp+28]
	push	ecx
	fmul	DWORD PTR __real@4@3fffb5c28f0000000000
	fstp	DWORD PTR [esp]
	call	?glaDrawString@@YAXMMMMMMPAD@Z		; glaDrawString
	add	esp, 28					; 0000001cH

; 136  : 	glEnd();

	call	DWORD PTR __imp__glEnd@0

; 137  : };

	pop	ecx
	ret	0
?pas_drawcreds@@YAXM@Z ENDP				; pas_drawcreds
_TEXT	ENDS
PUBLIC	?p_aftershit_run@@YAXPAUEVENT@@@Z		; p_aftershit_run
PUBLIC	__real@4@4001e000000000000000
PUBLIC	__real@4@4002a000000000000000
PUBLIC	__real@4@40038000000000000000
PUBLIC	__real@4@3fffa000000000000000
EXTRN	__imp__glEnable@4:NEAR
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glTranslatef@12:NEAR
EXTRN	__imp__glBlendFunc@8:NEAR
EXTRN	__imp__glClearColor@16:NEAR
;	COMDAT __real@4@4001e000000000000000
; File E:\prj64k\glAss (eventad)\parts\p_aftershit.cpp
CONST	SEGMENT
__real@4@4001e000000000000000 DD 040e00000r	; 7
CONST	ENDS
;	COMDAT __real@4@4002a000000000000000
CONST	SEGMENT
__real@4@4002a000000000000000 DD 041200000r	; 10
CONST	ENDS
;	COMDAT __real@4@40038000000000000000
CONST	SEGMENT
__real@4@40038000000000000000 DD 041800000r	; 16
CONST	ENDS
;	COMDAT __real@4@3fffa000000000000000
CONST	SEGMENT
__real@4@3fffa000000000000000 DD 03fa00000r	; 1.25
CONST	ENDS
;	COMDAT ?p_aftershit_run@@YAXPAUEVENT@@@Z
_TEXT	SEGMENT
_e$ = 8
_t$ = 8
?p_aftershit_run@@YAXPAUEVENT@@@Z PROC NEAR		; p_aftershit_run, COMDAT

; 139  : void p_aftershit_run( EVENT *e ) {

	push	esi

; 140  : 
; 141  : 	float t;
; 142  : 
; 143  : 	glMatrixMode( GL_PROJECTION );

	mov	esi, DWORD PTR __imp__glMatrixMode@4
	push	edi
	push	5889					; 00001701H
	call	esi

; 144  : 	glLoadIdentity();

	mov	edi, DWORD PTR __imp__glLoadIdentity@0
	call	edi

; 145  : 	glTranslatef( 0, 0, 0 );

	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glTranslatef@12

; 146  : 
; 147  : 	glMatrixMode( GL_MODELVIEW );

	push	5888					; 00001700H
	call	esi

; 148  : 	glLoadIdentity();

	call	edi

; 149  : 
; 150  : 	glDisable( GL_CULL_FACE );

	mov	esi, DWORD PTR __imp__glDisable@4
	push	2884					; 00000b44H
	call	esi

; 151  : 	glClearColor( 0,0,0,0 );

	push	0
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glClearColor@16

; 152  : 	glDisable( GL_FOG );

	push	2912					; 00000b60H
	call	esi

; 153  : 
; 154  : 	glEnable( GL_BLEND );

	push	3042					; 00000be2H
	call	DWORD PTR __imp__glEnable@4

; 155  : 	glBlendFunc( GL_ONE, GL_ONE );

	push	1
	push	1
	call	DWORD PTR __imp__glBlendFunc@8

; 156  : 	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

	push	8448					; 00002100H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12

; 157  : 
; 158  : 	//glDisable( GL_DEPTH_TEST );
; 159  : 
; 160  : 		t = e->localTime;

	mov	eax, DWORD PTR _e$[esp+4]
	mov	ecx, DWORD PTR [eax+4]

; 161  : 
; 162  : 		//pt_draw_dudes( t );
; 163  : 
; 164  : 		//for( float k=0; k<1; k+=0.33f ) {
; 165  : //			float k=0;
; 166  : 			//float t2 = t - (k/10.0f);
; 167  : 
; 168  : 			/*if( k<1 ) glaSetTexture( GIF_CLOUDS ); 
; 169  : 			else */
; 170  : 			glaSetTexture( GIF_CLOUDS );

	push	111					; 0000006fH
	mov	DWORD PTR _t$[esp+8], ecx
	call	?glaSetTexture@@YAXH@Z			; glaSetTexture

; 171  : 
; 172  : //			pas_drawbackground( t2*13, t2*17, 1.0f + k*2.0f, 1.0f - (k/4.0f) );
; 173  : 			pas_drawbackground( t*10, t*7, 1.0f, 0.25f );

	fld	DWORD PTR _t$[esp+8]
	fmul	DWORD PTR __real@4@4001e000000000000000
	add	esp, 4
	push	1048576000				; 3e800000H
	push	1065353216				; 3f800000H
	push	ecx
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _t$[esp+20]
	fmul	DWORD PTR __real@4@4002a000000000000000
	fstp	DWORD PTR [esp]
	call	?pas_drawbackground@@YAXMMMM@Z		; pas_drawbackground

; 174  : 		//};
; 175  : 
; 176  : //		glBlendFunc( GL_ONE, GL_ONE_MINUS_SRC_COLOR );
; 177  : 
; 178  : 		if( t>4 && t<10 )

	fld	DWORD PTR _t$[esp+20]
	add	esp, 16					; 00000010H
	fcomp	DWORD PTR __real@4@40018000000000000000
	pop	edi
	pop	esi
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17267
	fld	DWORD PTR _t$[esp-4]
	fcomp	DWORD PTR __real@4@4002a000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L17267

; 179  : 			pas_drawtitle( t-4.0f );

	fld	DWORD PTR _t$[esp-4]
	push	ecx
	fsub	DWORD PTR __real@4@40018000000000000000
	fstp	DWORD PTR [esp]
	call	?pas_drawtitle@@YAXM@Z			; pas_drawtitle
	add	esp, 4
$L17267:

; 180  : 
; 181  : 		if( t>10 && t<16 )

	fld	DWORD PTR _t$[esp-4]
	fcomp	DWORD PTR __real@4@4002a000000000000000
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $L17268
	fld	DWORD PTR _t$[esp-4]
	fcomp	DWORD PTR __real@4@40038000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L17268

; 182  : 			pas_drawcreds( t-10.0f );

	fld	DWORD PTR _t$[esp-4]
	push	ecx
	fsub	DWORD PTR __real@4@4002a000000000000000
	fstp	DWORD PTR [esp]
	call	?pas_drawcreds@@YAXM@Z			; pas_drawcreds
	add	esp, 4
$L17268:

; 183  : 
; 184  : 		if( t<1.25f ) pas_renderfade( (1.25f-t)*4 );

	fld	DWORD PTR _t$[esp-4]
	fcomp	DWORD PTR __real@4@3fffa000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L17269
	fld	DWORD PTR __real@4@3fffa000000000000000
	push	ecx
	fsub	DWORD PTR _t$[esp]
	fmul	DWORD PTR __real@4@40018000000000000000
	fstp	DWORD PTR [esp]
	call	?pas_renderfade@@YAXM@Z			; pas_renderfade
	pop	ecx
$L17269:

; 185  : 	
; 186  : };

	ret	0
?p_aftershit_run@@YAXPAUEVENT@@@Z ENDP			; p_aftershit_run
_TEXT	ENDS
END
