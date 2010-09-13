	TITLE	E:\prj64k\glAss (eventad)\misccode\newmath.cpp
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
;	COMDAT ??8@YAHABU_GUID@@0@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Cos@@YAMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Sin@@YAMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?matrix_ident@@YAXPAUMATRIX@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?matrix_mul@@YAXPAUMATRIX@@00@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?rotate_z_matrix@@YAXMPAUMATRIX@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?rotate_x_matrix@@YAXMPAUMATRIX@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?rotate_y_matrix@@YAXMPAUMATRIX@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?build_rotation_matrix@@YAXMMMPAUMATRIX@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?matrix_from_vectors@@YAXPAUVECTOR@@0PAUMATRIX@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?vector_mul@@YAXPAUMATRIX@@PAUVECTOR@@1@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?vector_crossproduct@@YAXPAUVECTOR@@00@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?vector_dotproduct@@YAMPAUVECTOR@@0@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?vector_length@@YAMPAUVECTOR@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?vector_normalize@@YAMPAUVECTOR@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?vector@@YA?AUVECTOR@@MMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?vector_add@@YAXPAUVECTOR@@0@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?vector_sub@@YAXPAUVECTOR@@0@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?invert_matrix@@YAXPAUMATRIX@@0@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?vector_project@@YAXPAUVECTOR@@0MM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?Cos@@YAMM@Z					; Cos
PUBLIC	__real@4@3ff1c90fdb0000000000
EXTRN	__fltused:NEAR
;	COMDAT __real@4@3ff1c90fdb0000000000
; File E:\prj64k\glAss (eventad)\misccode\newmath.cpp
CONST	SEGMENT
__real@4@3ff1c90fdb0000000000 DD 038c90fdbr	; 9.58738e-005
CONST	ENDS
;	COMDAT ?Cos@@YAMM@Z
_TEXT	SEGMENT
_angle$ = 8
?Cos@@YAMM@Z PROC NEAR					; Cos, COMDAT

; 10   :   return (float)cos( angle*M_PI/32768.0f );

	fld	DWORD PTR _angle$[esp-4]
	fmul	DWORD PTR __real@4@3ff1c90fdb0000000000
	fcos

; 11   : };

	ret	0
?Cos@@YAMM@Z ENDP					; Cos
_TEXT	ENDS
PUBLIC	?Sin@@YAMM@Z					; Sin
;	COMDAT ?Sin@@YAMM@Z
_TEXT	SEGMENT
_angle$ = 8
?Sin@@YAMM@Z PROC NEAR					; Sin, COMDAT

; 14   :   return (float)sin( angle*M_PI/32768.0f );

	fld	DWORD PTR _angle$[esp-4]
	fmul	DWORD PTR __real@4@3ff1c90fdb0000000000
	fsin

; 15   : };

	ret	0
?Sin@@YAMM@Z ENDP					; Sin
_TEXT	ENDS
PUBLIC	?matrix_ident@@YAXPAUMATRIX@@@Z			; matrix_ident
;	COMDAT ?matrix_ident@@YAXPAUMATRIX@@@Z
_TEXT	SEGMENT
_mat$ = 8
?matrix_ident@@YAXPAUMATRIX@@@Z PROC NEAR		; matrix_ident, COMDAT

; 18   : 	mat->el[0][0] = 1;

	mov	eax, DWORD PTR _mat$[esp-4]

; 19   : 	mat->el[1][0] = 0;

	xor	ecx, ecx
	mov	edx, 1065353216				; 3f800000H
	mov	DWORD PTR [eax], edx
	mov	DWORD PTR [eax+16], ecx

; 20   : 	mat->el[2][0] = 0;

	mov	DWORD PTR [eax+32], ecx

; 21   : 	mat->el[3][0] = 0;

	mov	DWORD PTR [eax+48], ecx

; 22   : 	mat->el[0][1] = 0;

	mov	DWORD PTR [eax+4], ecx

; 23   : 	mat->el[1][1] = 1;

	mov	DWORD PTR [eax+20], edx

; 24   : 	mat->el[2][1] = 0;

	mov	DWORD PTR [eax+36], ecx

; 25   : 	mat->el[3][1] = 0;

	mov	DWORD PTR [eax+52], ecx

; 26   : 	mat->el[0][2] = 0;

	mov	DWORD PTR [eax+8], ecx

; 27   : 	mat->el[1][2] = 0;

	mov	DWORD PTR [eax+24], ecx

; 28   : 	mat->el[2][2] = 1;

	mov	DWORD PTR [eax+40], edx

; 29   : 	mat->el[3][2] = 0;

	mov	DWORD PTR [eax+56], ecx

; 30   : 	mat->el[0][3] = 0;

	mov	DWORD PTR [eax+12], ecx

; 31   : 	mat->el[1][3] = 0;

	mov	DWORD PTR [eax+28], ecx

; 32   : 	mat->el[2][3] = 0;

	mov	DWORD PTR [eax+44], ecx

; 33   : 	mat->el[3][3] = 1;

	mov	DWORD PTR [eax+60], edx

; 34   : };

	ret	0
?matrix_ident@@YAXPAUMATRIX@@@Z ENDP			; matrix_ident
_TEXT	ENDS
PUBLIC	?matrix_mul@@YAXPAUMATRIX@@00@Z			; matrix_mul
;	COMDAT ?matrix_mul@@YAXPAUMATRIX@@00@Z
_TEXT	SEGMENT
_a$ = 8
_b$ = 12
_d$ = 16
?matrix_mul@@YAXPAUMATRIX@@00@Z PROC NEAR		; matrix_mul, COMDAT

; 37   :   d->el[0][0] = a->el[0][0] * b->el[0][0] + a->el[0][1] * b->el[1][0] + a->el[0][2] * b->el[2][0];

	mov	ecx, DWORD PTR _a$[esp-4]
	mov	eax, DWORD PTR _b$[esp-4]
	fld	DWORD PTR [ecx]
	fmul	DWORD PTR [eax]
	mov	edx, DWORD PTR _d$[esp-4]
	fld	DWORD PTR [ecx+4]
	fmul	DWORD PTR [eax+16]
	faddp	ST(1), ST(0)
	fld	DWORD PTR [ecx+8]
	fmul	DWORD PTR [eax+32]
	faddp	ST(1), ST(0)
	fstp	DWORD PTR [edx]

; 38   :   d->el[0][1] = a->el[0][0] * b->el[0][1] + a->el[0][1] * b->el[1][1] + a->el[0][2] * b->el[2][1];

	fld	DWORD PTR [ecx+4]
	fmul	DWORD PTR [eax+20]
	fld	DWORD PTR [eax+4]
	fmul	DWORD PTR [ecx]
	faddp	ST(1), ST(0)
	fld	DWORD PTR [eax+36]
	fmul	DWORD PTR [ecx+8]
	faddp	ST(1), ST(0)
	fstp	DWORD PTR [edx+4]

; 39   :   d->el[0][2] = a->el[0][0] * b->el[0][2] + a->el[0][1] * b->el[1][2] + a->el[0][2] * b->el[2][2];

	fld	DWORD PTR [ecx+4]
	fmul	DWORD PTR [eax+24]
	fld	DWORD PTR [eax+8]
	fmul	DWORD PTR [ecx]
	faddp	ST(1), ST(0)
	fld	DWORD PTR [eax+40]
	fmul	DWORD PTR [ecx+8]
	faddp	ST(1), ST(0)
	fstp	DWORD PTR [edx+8]

; 40   :   d->el[1][0] = a->el[1][0] * b->el[0][0] + a->el[1][1] * b->el[1][0] + a->el[1][2] * b->el[2][0];

	fld	DWORD PTR [ecx+24]
	fmul	DWORD PTR [eax+32]
	fld	DWORD PTR [ecx+20]
	fmul	DWORD PTR [eax+16]
	faddp	ST(1), ST(0)
	fld	DWORD PTR [ecx+16]
	fmul	DWORD PTR [eax]
	faddp	ST(1), ST(0)
	fstp	DWORD PTR [edx+16]

; 41   :   d->el[1][1] = a->el[1][0] * b->el[0][1] + a->el[1][1] * b->el[1][1] + a->el[1][2] * b->el[2][1];

	fld	DWORD PTR [ecx+24]
	fmul	DWORD PTR [eax+36]
	fld	DWORD PTR [ecx+20]
	fmul	DWORD PTR [eax+20]
	faddp	ST(1), ST(0)
	fld	DWORD PTR [ecx+16]
	fmul	DWORD PTR [eax+4]
	faddp	ST(1), ST(0)
	fstp	DWORD PTR [edx+20]

; 42   :   d->el[1][2] = a->el[1][0] * b->el[0][2] + a->el[1][1] * b->el[1][2] + a->el[1][2] * b->el[2][2];

	fld	DWORD PTR [ecx+24]
	fmul	DWORD PTR [eax+40]
	fld	DWORD PTR [ecx+20]
	fmul	DWORD PTR [eax+24]
	faddp	ST(1), ST(0)
	fld	DWORD PTR [ecx+16]
	fmul	DWORD PTR [eax+8]
	faddp	ST(1), ST(0)
	fstp	DWORD PTR [edx+24]

; 43   :   d->el[2][0] = a->el[2][0] * b->el[0][0] + a->el[2][1] * b->el[1][0] + a->el[2][2] * b->el[2][0];

	fld	DWORD PTR [ecx+32]
	fmul	DWORD PTR [eax]
	fld	DWORD PTR [ecx+40]
	fmul	DWORD PTR [eax+32]
	faddp	ST(1), ST(0)
	fld	DWORD PTR [ecx+36]
	fmul	DWORD PTR [eax+16]
	faddp	ST(1), ST(0)
	fstp	DWORD PTR [edx+32]

; 44   :   d->el[2][1] = a->el[2][0] * b->el[0][1] + a->el[2][1] * b->el[1][1] + a->el[2][2] * b->el[2][1];

	fld	DWORD PTR [eax+36]
	fmul	DWORD PTR [ecx+40]
	fld	DWORD PTR [eax+20]
	fmul	DWORD PTR [ecx+36]
	faddp	ST(1), ST(0)
	fld	DWORD PTR [eax+4]
	fmul	DWORD PTR [ecx+32]
	faddp	ST(1), ST(0)
	fstp	DWORD PTR [edx+36]

; 45   :   d->el[2][2] = a->el[2][0] * b->el[0][2] + a->el[2][1] * b->el[1][2] + a->el[2][2] * b->el[2][2];

	fld	DWORD PTR [eax+40]
	fmul	DWORD PTR [ecx+40]
	fld	DWORD PTR [eax+24]
	fmul	DWORD PTR [ecx+36]
	faddp	ST(1), ST(0)
	fld	DWORD PTR [eax+8]
	fmul	DWORD PTR [ecx+32]
	faddp	ST(1), ST(0)
	fstp	DWORD PTR [edx+40]

; 46   : };

	ret	0
?matrix_mul@@YAXPAUMATRIX@@00@Z ENDP			; matrix_mul
_TEXT	ENDS
PUBLIC	?rotate_z_matrix@@YAXMPAUMATRIX@@@Z		; rotate_z_matrix
;	COMDAT ?rotate_z_matrix@@YAXMPAUMATRIX@@@Z
_TEXT	SEGMENT
_v$ = 8
_m$ = 12
?rotate_z_matrix@@YAXMPAUMATRIX@@@Z PROC NEAR		; rotate_z_matrix, COMDAT

; 48   : void rotate_z_matrix (float v, MATRIX *m) {

	push	esi
	push	edi

; 49   :   m->el[0][0]=Cos(v);

	mov	edi, DWORD PTR _v$[esp+4]
	push	edi
	call	?Cos@@YAMM@Z				; Cos
	mov	esi, DWORD PTR _m$[esp+8]

; 50   :   m->el[0][1]=Sin(v);

	push	edi
	fstp	DWORD PTR [esi]
	call	?Sin@@YAMM@Z				; Sin
	fstp	DWORD PTR [esi+4]

; 51   :   m->el[1][0]=-Sin(v);

	push	edi
	call	?Sin@@YAMM@Z				; Sin
	fchs

; 52   :   m->el[1][1]=Cos(v);

	push	edi
	fstp	DWORD PTR [esi+16]
	call	?Cos@@YAMM@Z				; Cos
	fstp	DWORD PTR [esi+20]

; 53   :   m->el[1][2]=m->el[0][2]=m->el[2][0]=m->el[2][1]=0;

	xor	eax, eax
	add	esp, 16					; 00000010H
	pop	edi
	mov	DWORD PTR [esi+36], eax
	mov	DWORD PTR [esi+32], eax
	mov	DWORD PTR [esi+8], eax
	mov	DWORD PTR [esi+24], eax

; 54   :   m->el[2][2]=1;

	mov	DWORD PTR [esi+40], 1065353216		; 3f800000H
	pop	esi

; 55   : };

	ret	0
?rotate_z_matrix@@YAXMPAUMATRIX@@@Z ENDP		; rotate_z_matrix
_TEXT	ENDS
PUBLIC	?rotate_x_matrix@@YAXMPAUMATRIX@@@Z		; rotate_x_matrix
;	COMDAT ?rotate_x_matrix@@YAXMPAUMATRIX@@@Z
_TEXT	SEGMENT
_v$ = 8
_m$ = 12
?rotate_x_matrix@@YAXMPAUMATRIX@@@Z PROC NEAR		; rotate_x_matrix, COMDAT

; 57   : void rotate_x_matrix (float v, MATRIX *m) {

	push	esi
	push	edi

; 58   :   m->el[1][1]=Cos(v);

	mov	edi, DWORD PTR _v$[esp+4]
	push	edi
	call	?Cos@@YAMM@Z				; Cos
	mov	esi, DWORD PTR _m$[esp+8]

; 59   :   m->el[1][2]=Sin(v);

	push	edi
	fstp	DWORD PTR [esi+20]
	call	?Sin@@YAMM@Z				; Sin
	fstp	DWORD PTR [esi+24]

; 60   :   m->el[2][1]=-Sin(v);

	push	edi
	call	?Sin@@YAMM@Z				; Sin
	fchs

; 61   :   m->el[2][2]=Cos(v);

	push	edi
	fstp	DWORD PTR [esi+36]
	call	?Cos@@YAMM@Z				; Cos
	fstp	DWORD PTR [esi+40]

; 62   :   m->el[1][0]=m->el[2][0]=m->el[0][1]=m->el[0][2]=0;

	xor	eax, eax
	add	esp, 16					; 00000010H
	pop	edi
	mov	DWORD PTR [esi+8], eax
	mov	DWORD PTR [esi+4], eax
	mov	DWORD PTR [esi+32], eax
	mov	DWORD PTR [esi+16], eax

; 63   :   m->el[0][0]=1;

	mov	DWORD PTR [esi], 1065353216		; 3f800000H
	pop	esi

; 64   : };

	ret	0
?rotate_x_matrix@@YAXMPAUMATRIX@@@Z ENDP		; rotate_x_matrix
_TEXT	ENDS
PUBLIC	?rotate_y_matrix@@YAXMPAUMATRIX@@@Z		; rotate_y_matrix
;	COMDAT ?rotate_y_matrix@@YAXMPAUMATRIX@@@Z
_TEXT	SEGMENT
_v$ = 8
_m$ = 12
?rotate_y_matrix@@YAXMPAUMATRIX@@@Z PROC NEAR		; rotate_y_matrix, COMDAT

; 66   : void rotate_y_matrix (float v, MATRIX *m) {

	push	esi
	push	edi

; 67   :   m->el[0][0]=Cos(v);

	mov	edi, DWORD PTR _v$[esp+4]
	push	edi
	call	?Cos@@YAMM@Z				; Cos
	mov	esi, DWORD PTR _m$[esp+8]

; 68   :   m->el[0][2]=Sin(v);

	push	edi
	fstp	DWORD PTR [esi]
	call	?Sin@@YAMM@Z				; Sin
	fstp	DWORD PTR [esi+8]

; 69   :   m->el[2][0]=-Sin(v);

	push	edi
	call	?Sin@@YAMM@Z				; Sin
	fchs

; 70   :   m->el[2][2]=Cos(v);

	push	edi
	fstp	DWORD PTR [esi+32]
	call	?Cos@@YAMM@Z				; Cos
	fstp	DWORD PTR [esi+40]

; 71   :   m->el[2][1]=m->el[0][1]=m->el[1][0]=m->el[1][2]=0;

	xor	eax, eax
	add	esp, 16					; 00000010H
	pop	edi
	mov	DWORD PTR [esi+24], eax
	mov	DWORD PTR [esi+16], eax
	mov	DWORD PTR [esi+4], eax
	mov	DWORD PTR [esi+36], eax

; 72   :   m->el[1][1]=1;

	mov	DWORD PTR [esi+20], 1065353216		; 3f800000H
	pop	esi

; 73   : };

	ret	0
?rotate_y_matrix@@YAXMPAUMATRIX@@@Z ENDP		; rotate_y_matrix
_TEXT	ENDS
PUBLIC	?build_rotation_matrix@@YAXMMMPAUMATRIX@@@Z	; build_rotation_matrix
;	COMDAT ?build_rotation_matrix@@YAXMMMPAUMATRIX@@@Z
_TEXT	SEGMENT
_x$ = 8
_y$ = 12
_z$ = 16
_m$ = 20
_xm$ = -192
_ym$ = -128
_zm$ = -256
_tmp$ = -64
?build_rotation_matrix@@YAXMMMPAUMATRIX@@@Z PROC NEAR	; build_rotation_matrix, COMDAT

; 76   :   MATRIX xm,ym,zm,tmp;
; 77   :   rotate_x_matrix (x,&xm);

	mov	ecx, DWORD PTR _x$[esp-4]
	sub	esp, 256				; 00000100H
	lea	eax, DWORD PTR _xm$[esp+256]
	push	eax
	push	ecx
	call	?rotate_x_matrix@@YAXMPAUMATRIX@@@Z	; rotate_x_matrix

; 78   :   rotate_y_matrix (y,&ym);

	mov	eax, DWORD PTR _y$[esp+260]
	lea	edx, DWORD PTR _ym$[esp+264]
	push	edx
	push	eax
	call	?rotate_y_matrix@@YAXMPAUMATRIX@@@Z	; rotate_y_matrix

; 79   :   rotate_z_matrix (z,&zm);

	mov	edx, DWORD PTR _z$[esp+268]
	lea	ecx, DWORD PTR _zm$[esp+272]
	push	ecx
	push	edx
	call	?rotate_z_matrix@@YAXMPAUMATRIX@@@Z	; rotate_z_matrix

; 80   :   matrix_mul( &zm, &ym, &tmp);

	lea	eax, DWORD PTR _tmp$[esp+280]
	push	eax
	lea	ecx, DWORD PTR _ym$[esp+284]
	push	ecx
	lea	edx, DWORD PTR _zm$[esp+288]
	push	edx
	call	?matrix_mul@@YAXPAUMATRIX@@00@Z		; matrix_mul

; 81   :   matrix_mul( &tmp, &xm, m );

	mov	eax, DWORD PTR _m$[esp+288]
	push	eax
	lea	ecx, DWORD PTR _xm$[esp+296]
	push	ecx
	lea	edx, DWORD PTR _tmp$[esp+300]
	push	edx
	call	?matrix_mul@@YAXPAUMATRIX@@00@Z		; matrix_mul

; 82   : };

	add	esp, 304				; 00000130H
	ret	0
?build_rotation_matrix@@YAXMMMPAUMATRIX@@@Z ENDP	; build_rotation_matrix
_TEXT	ENDS
PUBLIC	?matrix_from_vectors@@YAXPAUVECTOR@@0PAUMATRIX@@@Z ; matrix_from_vectors
PUBLIC	?vector_crossproduct@@YAXPAUVECTOR@@00@Z	; vector_crossproduct
PUBLIC	?vector_dotproduct@@YAMPAUVECTOR@@0@Z		; vector_dotproduct
PUBLIC	?vector_normalize@@YAMPAUVECTOR@@@Z		; vector_normalize
;	COMDAT ?matrix_from_vectors@@YAXPAUVECTOR@@0PAUMATRIX@@@Z
_TEXT	SEGMENT
_direction$ = 8
_upvect$ = 12
_m$ = 16
_w$ = -12
_v$ = -24
_u$ = -36
?matrix_from_vectors@@YAXPAUVECTOR@@0PAUMATRIX@@@Z PROC NEAR ; matrix_from_vectors, COMDAT

; 85   : void matrix_from_vectors ( VECTOR *direction, VECTOR *upvect, MATRIX *m ) {

	sub	esp, 36					; 00000024H

; 86   :   VECTOR w;
; 87   :   VECTOR v,u;
; 88   :   float lambda;
; 89   :   v = *direction;

	mov	eax, DWORD PTR _direction$[esp+32]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR _v$[esp+36], ecx

; 90   :   u = *upvect;

	mov	ecx, DWORD PTR _upvect$[esp+32]
	mov	DWORD PTR _v$[esp+40], edx
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _v$[esp+44], eax
	mov	eax, DWORD PTR [ecx+4]
	mov	ecx, DWORD PTR [ecx+8]
	mov	DWORD PTR _u$[esp+36], edx

; 91   : 
; 92   :   vector_normalize( &v );

	lea	edx, DWORD PTR _v$[esp+36]
	push	esi
	push	edx
	mov	DWORD PTR _u$[esp+48], eax
	mov	DWORD PTR _u$[esp+52], ecx
	call	?vector_normalize@@YAMPAUVECTOR@@@Z	; vector_normalize
	fstp	ST(0)

; 93   : 
; 94   :   lambda = vector_dotproduct( &u, &v );

	lea	eax, DWORD PTR _v$[esp+44]
	push	eax
	lea	ecx, DWORD PTR _u$[esp+48]
	push	ecx
	call	?vector_dotproduct@@YAMPAUVECTOR@@0@Z	; vector_dotproduct

; 95   :   u.x -= (lambda*v.x);

	fld	DWORD PTR _v$[esp+52]
	fmul	ST(0), ST(1)

; 96   :   u.y -= (lambda*v.y);
; 97   :   u.z -= (lambda*v.z);
; 98   :   vector_normalize( &u );

	lea	edx, DWORD PTR _u$[esp+52]
	push	edx
	fsubr	DWORD PTR _u$[esp+56]
	fstp	DWORD PTR _u$[esp+56]
	fld	DWORD PTR _v$[esp+60]
	fmul	ST(0), ST(1)
	fsubr	DWORD PTR _u$[esp+60]
	fstp	DWORD PTR _u$[esp+60]
	fld	DWORD PTR _v$[esp+64]
	fmul	ST(0), ST(1)
	fsubr	DWORD PTR _u$[esp+64]
	fstp	DWORD PTR _u$[esp+64]
	fstp	ST(0)
	call	?vector_normalize@@YAMPAUVECTOR@@@Z	; vector_normalize

; 99   : 
; 100  : matrix_ident( m );

	mov	esi, DWORD PTR _m$[esp+52]
	fstp	ST(0)
	push	esi
	call	?matrix_ident@@YAXPAUMATRIX@@@Z		; matrix_ident

; 101  : 
; 102  :   vector_crossproduct( &w, &v, &u );

	lea	eax, DWORD PTR _u$[esp+60]
	push	eax
	lea	ecx, DWORD PTR _v$[esp+64]
	push	ecx
	lea	edx, DWORD PTR _w$[esp+68]
	push	edx
	call	?vector_crossproduct@@YAXPAUVECTOR@@00@Z ; vector_crossproduct

; 103  :   m->el[0][0] = w.x;
; 104  :   m->el[0][1] = w.y;

	mov	ecx, DWORD PTR _w$[esp+76]

; 105  :   m->el[0][2] = w.z;

	mov	edx, DWORD PTR _w$[esp+80]
	mov	eax, DWORD PTR _w$[esp+72]
	mov	DWORD PTR [esi+4], ecx

; 106  :   m->el[0][3] = 0;
; 107  : 
; 108  :   m->el[1][0] = u.x;

	mov	ecx, DWORD PTR _u$[esp+72]
	mov	DWORD PTR [esi+8], edx

; 109  :   m->el[1][1] = u.y;

	mov	edx, DWORD PTR _u$[esp+76]
	mov	DWORD PTR [esi+16], ecx

; 110  :   m->el[1][2] = u.z; /// ** todo! **

	mov	ecx, DWORD PTR _u$[esp+80]
	mov	DWORD PTR [esi+20], edx

; 111  :   m->el[1][3] = 0;
; 112  : 
; 113  :   m->el[2][0] = v.x;

	mov	edx, DWORD PTR _v$[esp+72]
	add	esp, 32					; 00000020H
	mov	DWORD PTR [esi], eax
	xor	eax, eax
	mov	DWORD PTR [esi+24], ecx

; 114  :   m->el[2][1] = v.y;

	mov	ecx, DWORD PTR _v$[esp+44]
	mov	DWORD PTR [esi+32], edx

; 115  :   m->el[2][2] = v.z;

	mov	edx, DWORD PTR _v$[esp+48]
	mov	DWORD PTR [esi+12], eax
	mov	DWORD PTR [esi+28], eax
	mov	DWORD PTR [esi+36], ecx
	mov	DWORD PTR [esi+40], edx

; 116  :   m->el[2][3] = 0;

	mov	DWORD PTR [esi+44], eax

; 117  : 
; 118  :   m->el[3][0] = 0; 

	mov	DWORD PTR [esi+48], eax

; 119  :   m->el[3][1] = 0;

	mov	DWORD PTR [esi+52], eax

; 120  :   m->el[3][2] = 0;

	mov	DWORD PTR [esi+56], eax

; 121  :   m->el[3][3] = 1;

	mov	DWORD PTR [esi+60], 1065353216		; 3f800000H
	pop	esi

; 122  : 
; 123  : };

	add	esp, 36					; 00000024H
	ret	0
?matrix_from_vectors@@YAXPAUVECTOR@@0PAUMATRIX@@@Z ENDP	; matrix_from_vectors
_TEXT	ENDS
PUBLIC	?vector_mul@@YAXPAUMATRIX@@PAUVECTOR@@1@Z	; vector_mul
;	COMDAT ?vector_mul@@YAXPAUMATRIX@@PAUVECTOR@@1@Z
_TEXT	SEGMENT
_m$ = 8
_v$ = 12
_dv$ = 16
?vector_mul@@YAXPAUMATRIX@@PAUVECTOR@@1@Z PROC NEAR	; vector_mul, COMDAT

; 126  :   dv->x = m->el[0][0]*v->x + m->el[0][1]*v->y + m->el[0][2]*v->z;

	mov	ecx, DWORD PTR _m$[esp-4]
	mov	eax, DWORD PTR _v$[esp-4]
	fld	DWORD PTR [ecx+8]
	fmul	DWORD PTR [eax+8]
	mov	edx, DWORD PTR _dv$[esp-4]
	fld	DWORD PTR [ecx+4]
	fmul	DWORD PTR [eax+4]
	faddp	ST(1), ST(0)
	fld	DWORD PTR [ecx]
	fmul	DWORD PTR [eax]
	faddp	ST(1), ST(0)
	fstp	DWORD PTR [edx]

; 127  :   dv->y = m->el[1][0]*v->x + m->el[1][1]*v->y + m->el[1][2]*v->z;

	fld	DWORD PTR [ecx+24]
	fmul	DWORD PTR [eax+8]
	fld	DWORD PTR [ecx+16]
	fmul	DWORD PTR [eax]
	faddp	ST(1), ST(0)
	fld	DWORD PTR [ecx+20]
	fmul	DWORD PTR [eax+4]
	faddp	ST(1), ST(0)
	fstp	DWORD PTR [edx+4]

; 128  :   dv->z = m->el[2][0]*v->x + m->el[2][1]*v->y + m->el[2][2]*v->z;

	fld	DWORD PTR [ecx+40]
	fmul	DWORD PTR [eax+8]
	fld	DWORD PTR [ecx+32]
	fmul	DWORD PTR [eax]
	faddp	ST(1), ST(0)
	fld	DWORD PTR [ecx+36]
	fmul	DWORD PTR [eax+4]
	faddp	ST(1), ST(0)
	fstp	DWORD PTR [edx+8]

; 129  : };

	ret	0
?vector_mul@@YAXPAUMATRIX@@PAUVECTOR@@1@Z ENDP		; vector_mul
_TEXT	ENDS
;	COMDAT ?vector_crossproduct@@YAXPAUVECTOR@@00@Z
_TEXT	SEGMENT
_dst$ = 8
_a$ = 12
_b$ = 16
?vector_crossproduct@@YAXPAUVECTOR@@00@Z PROC NEAR	; vector_crossproduct, COMDAT

; 132  :   dst->x = (a->y*b->z) - (a->z*b->y);

	mov	ecx, DWORD PTR _b$[esp-4]
	mov	eax, DWORD PTR _a$[esp-4]
	fld	DWORD PTR [ecx+8]
	fmul	DWORD PTR [eax+4]
	mov	edx, DWORD PTR _dst$[esp-4]
	fld	DWORD PTR [ecx+4]
	fmul	DWORD PTR [eax+8]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR [edx]

; 133  :   dst->y = (a->z*b->x) - (a->x*b->z);

	fld	DWORD PTR [ecx]
	fmul	DWORD PTR [eax+8]
	fld	DWORD PTR [ecx+8]
	fmul	DWORD PTR [eax]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR [edx+4]

; 134  :   dst->z = (a->x*b->y) - (a->y*b->x);

	fld	DWORD PTR [ecx+4]
	fmul	DWORD PTR [eax]
	fld	DWORD PTR [ecx]
	fmul	DWORD PTR [eax+4]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR [edx+8]

; 135  : };

	ret	0
?vector_crossproduct@@YAXPAUVECTOR@@00@Z ENDP		; vector_crossproduct
_TEXT	ENDS
;	COMDAT ?vector_dotproduct@@YAMPAUVECTOR@@0@Z
_TEXT	SEGMENT
_a$ = 8
_b$ = 12
?vector_dotproduct@@YAMPAUVECTOR@@0@Z PROC NEAR		; vector_dotproduct, COMDAT

; 138  :   return ( a->x*b->x + a->y*b->y + a->z*b->z );

	mov	eax, DWORD PTR _a$[esp-4]
	mov	ecx, DWORD PTR _b$[esp-4]
	fld	DWORD PTR [eax+8]
	fmul	DWORD PTR [ecx+8]
	fld	DWORD PTR [eax+4]
	fmul	DWORD PTR [ecx+4]
	faddp	ST(1), ST(0)
	fld	DWORD PTR [eax]
	fmul	DWORD PTR [ecx]
	faddp	ST(1), ST(0)

; 139  : };

	ret	0
?vector_dotproduct@@YAMPAUVECTOR@@0@Z ENDP		; vector_dotproduct
_TEXT	ENDS
PUBLIC	?vector_length@@YAMPAUVECTOR@@@Z		; vector_length
;	COMDAT ?vector_length@@YAMPAUVECTOR@@@Z
_TEXT	SEGMENT
_a$ = 8
?vector_length@@YAMPAUVECTOR@@@Z PROC NEAR		; vector_length, COMDAT

; 142  :   return (float)sqrt( a->x*a->x + a->y*a->y + a->z*a->z );

	mov	eax, DWORD PTR _a$[esp-4]
	fld	DWORD PTR [eax+8]
	fld	DWORD PTR [eax+4]
	fld	DWORD PTR [eax]
	fld	ST(0)
	fmul	ST(0), ST(1)
	fld	ST(2)
	fmul	ST(0), ST(3)
	faddp	ST(1), ST(0)
	fld	ST(3)
	fmul	ST(0), ST(4)
	faddp	ST(1), ST(0)
	fsqrt
	fstp	ST(3)
	fstp	ST(0)
	fstp	ST(0)

; 143  : };

	ret	0
?vector_length@@YAMPAUVECTOR@@@Z ENDP			; vector_length
_TEXT	ENDS
;	COMDAT ?vector_normalize@@YAMPAUVECTOR@@@Z
_TEXT	SEGMENT
_a$ = 8
?vector_normalize@@YAMPAUVECTOR@@@Z PROC NEAR		; vector_normalize, COMDAT

; 146  :   float l = (float)sqrt( a->x*a->x + a->y*a->y + a->z*a->z );

	mov	eax, DWORD PTR _a$[esp-4]
	fld	DWORD PTR [eax+8]
	fld	DWORD PTR [eax+4]
	fld	DWORD PTR [eax]
	fld	ST(0)
	fmul	ST(0), ST(1)
	fld	ST(2)
	fmul	ST(0), ST(3)
	faddp	ST(1), ST(0)
	fld	ST(3)
	fmul	ST(0), ST(4)
	faddp	ST(1), ST(0)
	fsqrt
	fstp	ST(3)
	fstp	ST(0)
	fstp	ST(0)

; 147  :   a->x /= l;

	fld	DWORD PTR [eax]
	fdiv	ST(0), ST(1)
	fstp	DWORD PTR [eax]

; 148  :   a->y /= l;

	fld	DWORD PTR [eax+4]
	fdiv	ST(0), ST(1)
	fstp	DWORD PTR [eax+4]

; 149  :   a->z /= l;

	fld	DWORD PTR [eax+8]
	fdiv	ST(0), ST(1)
	fstp	DWORD PTR [eax+8]

; 150  :   return l;
; 151  : };

	ret	0
?vector_normalize@@YAMPAUVECTOR@@@Z ENDP		; vector_normalize
_TEXT	ENDS
PUBLIC	?vector@@YA?AUVECTOR@@MMM@Z			; vector
;	COMDAT ?vector@@YA?AUVECTOR@@MMM@Z
_TEXT	SEGMENT
_x$ = 12
_y$ = 16
_z$ = 20
_v$ = -12
$T35324 = 8
?vector@@YA?AUVECTOR@@MMM@Z PROC NEAR			; vector, COMDAT

; 153  : VECTOR vector(float x, float y, float z) {

	sub	esp, 12					; 0000000cH

; 154  :   VECTOR v;
; 155  :   v.x = x;

	mov	eax, DWORD PTR _x$[esp+8]

; 156  :   v.y = y;

	mov	ecx, DWORD PTR _y$[esp+8]

; 157  :   v.z = z;

	mov	edx, DWORD PTR _z$[esp+8]
	mov	DWORD PTR _v$[esp+12], eax

; 158  :   return v;

	mov	eax, DWORD PTR $T35324[esp+8]
	mov	DWORD PTR _v$[esp+16], ecx
	mov	DWORD PTR _v$[esp+20], edx
	mov	edx, DWORD PTR _v$[esp+12]
	mov	ecx, eax
	mov	DWORD PTR [ecx], edx
	mov	edx, DWORD PTR _v$[esp+16]
	mov	DWORD PTR [ecx+4], edx
	mov	edx, DWORD PTR _v$[esp+20]
	mov	DWORD PTR [ecx+8], edx

; 159  : };

	add	esp, 12					; 0000000cH
	ret	0
?vector@@YA?AUVECTOR@@MMM@Z ENDP			; vector
_TEXT	ENDS
PUBLIC	?vector_add@@YAXPAUVECTOR@@0@Z			; vector_add
;	COMDAT ?vector_add@@YAXPAUVECTOR@@0@Z
_TEXT	SEGMENT
_dest$ = 8
_src$ = 12
?vector_add@@YAXPAUVECTOR@@0@Z PROC NEAR		; vector_add, COMDAT

; 162  :   dest->x += src->x;

	mov	eax, DWORD PTR _dest$[esp-4]
	mov	ecx, DWORD PTR _src$[esp-4]
	fld	DWORD PTR [eax]
	fadd	DWORD PTR [ecx]
	fstp	DWORD PTR [eax]

; 163  :   dest->y += src->y;

	fld	DWORD PTR [ecx+4]
	fadd	DWORD PTR [eax+4]
	fstp	DWORD PTR [eax+4]

; 164  :   dest->z += src->z;

	fld	DWORD PTR [ecx+8]
	fadd	DWORD PTR [eax+8]
	fstp	DWORD PTR [eax+8]

; 165  : };

	ret	0
?vector_add@@YAXPAUVECTOR@@0@Z ENDP			; vector_add
_TEXT	ENDS
PUBLIC	?vector_sub@@YAXPAUVECTOR@@0@Z			; vector_sub
;	COMDAT ?vector_sub@@YAXPAUVECTOR@@0@Z
_TEXT	SEGMENT
_dest$ = 8
_src$ = 12
?vector_sub@@YAXPAUVECTOR@@0@Z PROC NEAR		; vector_sub, COMDAT

; 168  :   dest->x -= src->x;

	mov	eax, DWORD PTR _dest$[esp-4]
	mov	ecx, DWORD PTR _src$[esp-4]
	fld	DWORD PTR [eax]
	fsub	DWORD PTR [ecx]
	fstp	DWORD PTR [eax]

; 169  :   dest->y -= src->y;

	fld	DWORD PTR [eax+4]
	fsub	DWORD PTR [ecx+4]
	fstp	DWORD PTR [eax+4]

; 170  :   dest->z -= src->z;

	fld	DWORD PTR [eax+8]
	fsub	DWORD PTR [ecx+8]
	fstp	DWORD PTR [eax+8]

; 171  : };

	ret	0
?vector_sub@@YAXPAUVECTOR@@0@Z ENDP			; vector_sub
_TEXT	ENDS
PUBLIC	?invert_matrix@@YAXPAUMATRIX@@0@Z		; invert_matrix
;	COMDAT ?invert_matrix@@YAXPAUMATRIX@@0@Z
_TEXT	SEGMENT
_m$ = 8
_r$ = 12
_d00$ = -28
_d01$ = -24
_d02$ = -20
_d10$ = -16
_d11$ = -8
_d12$ = -4
_d20$ = -12
_d21$ = -40
_d22$ = -32
_m01$ = 8
_m02$ = -64
?invert_matrix@@YAXPAUMATRIX@@0@Z PROC NEAR		; invert_matrix, COMDAT

; 173  : void invert_matrix( MATRIX *m, MATRIX *r ) {

	sub	esp, 64					; 00000040H

; 174  : 
; 175  :   float d00, d01, d02, d03;
; 176  :   float d10, d11, d12, d13;
; 177  :   float d20, d21, d22, d23;
; 178  :   float d30, d31, d32, d33;
; 179  : 
; 180  :   float m00, m01, m02, m03;
; 181  :   float m10, m11, m12, m13;
; 182  :   float m20, m21, m22, m23;
; 183  :   float m30, m31, m32, m33;
; 184  :   float D;
; 185  : 
; 186  :   m00 = m->el[0][0];  m01 = m->el[0][1];  m02 = m->el[0][2];  m03 = 0;

	mov	eax, DWORD PTR _m$[esp+60]
	fld	DWORD PTR [eax]

; 187  :   m10 = m->el[1][0];  m11 = m->el[1][1];  m12 = m->el[1][2];  m13 = 0;
; 188  :   m20 = m->el[2][0];  m21 = m->el[2][1];  m22 = m->el[2][2];  m23 = 0;
; 189  :   m30 = 0;  m31 = 0;  m32 = 0;  m33 = 1;
; 190  : 
; 191  :   d00 = m11*m22*m33 + m12*m23*m31 + m13*m21*m32 - m31*m22*m13 - m32*m23*m11 - m33*m21*m12;

	mov	DWORD PTR -32+[esp+64], 0
	fld	DWORD PTR [eax+16]
	mov	DWORD PTR -44+[esp+64], 0
	fld	DWORD PTR [eax+20]
	mov	DWORD PTR -56+[esp+64], 0
	fld	DWORD PTR [eax+24]
	mov	DWORD PTR -36+[esp+64], 0
	fld	DWORD PTR [eax+32]

; 192  :   d01 = m10*m22*m33 + m12*m23*m30 + m13*m20*m32 - m30*m22*m13 - m32*m23*m10 - m33*m20*m12;

	mov	DWORD PTR -48+[esp+64], 0
	fld	DWORD PTR [eax+36]
	mov	DWORD PTR -40+[esp+64], 0
	fld	DWORD PTR [eax+40]
	mov	ecx, DWORD PTR [eax+4]
	fstp	DWORD PTR -60+[esp+64]
	mov	edx, DWORD PTR [eax+8]
	mov	DWORD PTR _m01$[esp+60], ecx
	fstp	DWORD PTR -52+[esp+64]
	mov	DWORD PTR _m02$[esp+64], edx
	fld	DWORD PTR -60+[esp+64]
	mov	DWORD PTR -4+[esp+64], 0
	fmul	ST(0), ST(3)
	mov	DWORD PTR -4+[esp+64], 0
	mov	DWORD PTR -4+[esp+64], 0
	fadd	DWORD PTR -32+[esp+64]
	fadd	DWORD PTR -44+[esp+64]
	fsub	DWORD PTR -56+[esp+64]
	fsub	DWORD PTR -36+[esp+64]
	fld	DWORD PTR -52+[esp+64]
	fmul	ST(0), ST(3)
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d00$[esp+64]
	fld	DWORD PTR -60+[esp+64]
	fmul	ST(0), ST(4)
	fadd	DWORD PTR -48+[esp+64]
	fadd	DWORD PTR -32+[esp+64]

; 193  :   d02 = m10*m21*m33 + m11*m23*m30 + m13*m20*m31 - m30*m21*m13 - m31*m23*m10 - m33*m20*m11;
; 194  :   d03 = m10*m21*m32 + m11*m22*m30 + m12*m20*m31 - m30*m21*m12 - m31*m22*m10 - m32*m20*m11;
; 195  : 
; 196  :   d10 = m01*m22*m33 + m02*m23*m31 + m03*m21*m32 - m31*m22*m03 - m32*m23*m01 - m33*m21*m02;
; 197  :   d11 = m00*m22*m33 + m02*m23*m30 + m03*m20*m32 - m30*m22*m03 - m32*m23*m00 - m33*m20*m02;

	mov	DWORD PTR -32+[esp+64], 0
	fsub	DWORD PTR -56+[esp+64]
	fsub	DWORD PTR -40+[esp+64]
	fld	ST(1)
	fmul	ST(0), ST(3)
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d01$[esp+64]
	fld	DWORD PTR -52+[esp+64]
	fmul	ST(0), ST(4)
	fadd	DWORD PTR -48+[esp+64]
	fadd	DWORD PTR -36+[esp+64]
	mov	DWORD PTR -36+[esp+64], 0
	fsub	DWORD PTR -44+[esp+64]
	fsub	DWORD PTR -40+[esp+64]
	mov	DWORD PTR -40+[esp+64], 0
	fld	ST(1)
	fmul	ST(0), ST(4)
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d02$[esp+64]
	fld	DWORD PTR -60+[esp+64]
	fmul	DWORD PTR _m01$[esp+60]
	fadd	DWORD PTR -40+[esp+64]
	fadd	DWORD PTR -44+[esp+64]
	fsub	DWORD PTR -56+[esp+64]
	fsub	DWORD PTR -36+[esp+64]
	fld	DWORD PTR -52+[esp+64]
	fmul	DWORD PTR _m02$[esp+64]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d10$[esp+64]
	fld	DWORD PTR -60+[esp+64]
	fmul	ST(0), ST(5)
	fadd	DWORD PTR -40+[esp+64]
	fadd	DWORD PTR -48+[esp+64]
	fsub	DWORD PTR -56+[esp+64]
	fsub	DWORD PTR -32+[esp+64]
	fld	ST(1)
	fmul	DWORD PTR _m02$[esp+64]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d11$[esp+64]

; 198  :   d12 = m00*m21*m33 + m01*m23*m30 + m03*m20*m31 - m30*m21*m03 - m31*m23*m00 - m33*m20*m01;

	fld	DWORD PTR -52+[esp+64]
	fmul	ST(0), ST(5)
	fadd	DWORD PTR -36+[esp+64]
	fadd	DWORD PTR -48+[esp+64]
	fsub	DWORD PTR -44+[esp+64]
	fsub	DWORD PTR -32+[esp+64]

; 199  :   d13 = m00*m21*m32 + m01*m22*m30 + m02*m20*m31 - m30*m21*m02 - m31*m22*m00 - m32*m20*m01;
; 200  : 
; 201  :   d20 = m01*m12*m33 + m02*m13*m31 + m03*m11*m32 - m31*m12*m03 - m32*m13*m01 - m33*m11*m02;

	mov	DWORD PTR -60+[esp+64], 0
	fxch	ST(1)
	mov	DWORD PTR -48+[esp+64], 0
	fmul	DWORD PTR _m01$[esp+60]

; 202  :   d21 = m00*m12*m33 + m02*m13*m30 + m03*m10*m32 - m30*m12*m03 - m32*m13*m00 - m33*m10*m02;

	mov	DWORD PTR -56+[esp+64], 0

; 203  :   d22 = m00*m11*m33 + m01*m13*m30 + m03*m10*m31 - m30*m11*m03 - m31*m13*m00 - m33*m10*m01;
; 204  :   d23 = m00*m11*m32 + m01*m12*m30 + m02*m10*m31 - m30*m11*m02 - m31*m12*m00 - m32*m10*m01;
; 205  : 
; 206  :   d30 = m01*m12*m23 + m02*m13*m21 + m03*m11*m22 - m21*m12*m03 - m22*m13*m01 - m23*m11*m02;
; 207  :   d31 = m00*m12*m23 + m02*m13*m20 + m03*m10*m22 - m20*m12*m03 - m22*m13*m00 - m23*m10*m02;
; 208  :   d32 = m00*m11*m23 + m01*m13*m20 + m03*m10*m21 - m20*m11*m03 - m21*m13*m00 - m23*m10*m01;
; 209  :   d33 = m00*m11*m22 + m01*m12*m20 + m02*m10*m21 - m20*m11*m02 - m21*m12*m00 - m22*m10*m01;
; 210  : 
; 211  :   D = m00*d00 - m01*d01 + m02*d02 - m03*d03;
; 212  : 
; 213  :   if (D == 0.0) {
; 214  : //    printf("Singular matrix in MInvers.\n");
; 215  :   }
; 216  : 
; 217  :   r->el[0][0] =  d00/D; r->el[0][1] = -d10/D;  r->el[0][2] =  d20/D; r->el[0][3] = 0;

	mov	eax, DWORD PTR _r$[esp+60]
	xor	ecx, ecx
	fsubp	ST(1), ST(0)
	mov	DWORD PTR [eax+12], ecx

; 218  :   r->el[1][0] = -d01/D; r->el[1][1] =  d11/D;  r->el[1][2] = -d21/D; r->el[1][3] = 0;

	mov	DWORD PTR [eax+28], ecx
	fstp	DWORD PTR _d12$[esp+64]
	fstp	DWORD PTR -44+[esp+64]
	fstp	DWORD PTR -52+[esp+64]
	fld	DWORD PTR -44+[esp+64]
	fmul	DWORD PTR _m01$[esp+60]
	fadd	DWORD PTR -60+[esp+64]
	fadd	DWORD PTR -40+[esp+64]
	fsub	DWORD PTR -48+[esp+64]
	fsub	DWORD PTR -36+[esp+64]
	fld	DWORD PTR -52+[esp+64]
	fmul	DWORD PTR _m02$[esp+64]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d20$[esp+64]
	fld	DWORD PTR -44+[esp+64]
	fmul	ST(0), ST(2)
	fadd	DWORD PTR -56+[esp+64]
	fadd	DWORD PTR -40+[esp+64]
	fsub	DWORD PTR -48+[esp+64]
	fsub	DWORD PTR -32+[esp+64]
	fld	ST(1)
	fmul	DWORD PTR _m02$[esp+64]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d21$[esp+64]
	fld	DWORD PTR -52+[esp+64]
	fmul	ST(0), ST(2)
	fadd	DWORD PTR -56+[esp+64]
	fadd	DWORD PTR -36+[esp+64]
	fsub	DWORD PTR -60+[esp+64]
	fsub	DWORD PTR -32+[esp+64]
	fxch	ST(1)
	fmul	DWORD PTR _m01$[esp+60]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR _d22$[esp+64]
	fmul	DWORD PTR _d00$[esp+64]
	fld	DWORD PTR _d01$[esp+64]
	fmul	DWORD PTR _m01$[esp+60]
	fsubp	ST(1), ST(0)
	fld	DWORD PTR _d02$[esp+64]
	fmul	DWORD PTR _m02$[esp+64]
	faddp	ST(1), ST(0)
	fld	DWORD PTR _d00$[esp+64]
	fdiv	ST(0), ST(1)
	fstp	DWORD PTR [eax]
	fld	DWORD PTR _d10$[esp+64]
	fdiv	ST(0), ST(1)
	fchs
	fstp	DWORD PTR [eax+4]
	fld	DWORD PTR _d20$[esp+64]
	fdiv	ST(0), ST(1)
	fstp	DWORD PTR [eax+8]
	fld	DWORD PTR _d01$[esp+64]
	fdiv	ST(0), ST(1)
	fchs
	fstp	DWORD PTR [eax+16]
	fld	DWORD PTR _d11$[esp+64]
	fdiv	ST(0), ST(1)
	fstp	DWORD PTR [eax+20]
	fld	DWORD PTR _d21$[esp+64]
	fdiv	ST(0), ST(1)
	fchs
	fstp	DWORD PTR [eax+24]

; 219  :   r->el[2][0] =  d02/D; r->el[2][1] = -d12/D;  r->el[2][2] =  d22/D; r->el[2][3] = 0;

	fld	DWORD PTR _d02$[esp+64]
	fdiv	ST(0), ST(1)
	fstp	DWORD PTR [eax+32]
	fld	DWORD PTR _d12$[esp+64]
	fdiv	ST(0), ST(1)
	fchs
	fstp	DWORD PTR [eax+36]
	fld	DWORD PTR _d22$[esp+64]
	fdiv	ST(0), ST(1)
	fstp	DWORD PTR [eax+40]
	mov	DWORD PTR [eax+44], ecx

; 220  :   r->el[3][0] = 0; r->el[3][1] =  0;  r->el[3][2] = 0; r->el[3][3] = 1;

	mov	DWORD PTR [eax+48], ecx
	fstp	ST(0)
	mov	DWORD PTR [eax+52], ecx
	mov	DWORD PTR [eax+56], ecx
	mov	DWORD PTR [eax+60], 1065353216		; 3f800000H

; 221  : };

	add	esp, 64					; 00000040H
	ret	0
?invert_matrix@@YAXPAUMATRIX@@0@Z ENDP			; invert_matrix
_TEXT	ENDS
PUBLIC	__real@4@00000000000000000000
PUBLIC	__real@4@3ff9a3d70a3d70a3d800
PUBLIC	__real@4@3ff8a3d70a3d70a3d800
PUBLIC	?vector_project@@YAXPAUVECTOR@@0MM@Z		; vector_project
;	COMDAT __real@4@00000000000000000000
; File E:\prj64k\glAss (eventad)\misccode\newmath.cpp
CONST	SEGMENT
__real@4@00000000000000000000 DD 000000000r	; 0
CONST	ENDS
;	COMDAT __real@4@3ff9a3d70a3d70a3d800
CONST	SEGMENT
__real@4@3ff9a3d70a3d70a3d800 DD 03ca3d70ar	; 0.02
CONST	ENDS
;	COMDAT __real@4@3ff8a3d70a3d70a3d800
CONST	SEGMENT
__real@4@3ff8a3d70a3d70a3d800 DD 03c23d70ar	; 0.01
CONST	ENDS
;	COMDAT ?vector_project@@YAXPAUVECTOR@@0MM@Z
_TEXT	SEGMENT
_src$ = 8
_dest$ = 12
_fov$ = 16
_dist$ = 20
?vector_project@@YAXPAUVECTOR@@0MM@Z PROC NEAR		; vector_project, COMDAT

; 224  : 
; 225  : 	float z2 = (src->z * (fov/50)) - dist;

	fld	DWORD PTR _fov$[esp-4]
	mov	ecx, DWORD PTR _src$[esp-4]
	fmul	DWORD PTR __real@4@3ff9a3d70a3d70a3d800
	fmul	DWORD PTR [ecx+8]
	fsub	DWORD PTR _dist$[esp-4]

; 226  : 	if( z2<0 ) z2 = 0;

	fcom	DWORD PTR __real@4@00000000000000000000
	fnstsw	ax
	test	ah, 1
	je	SHORT $L35264
	fstp	ST(0)
	fld	DWORD PTR __real@4@00000000000000000000
$L35264:

; 227  : 
; 228  : 	dest->x = (src->x / z2);

	fld	DWORD PTR [ecx]
	mov	eax, DWORD PTR _dest$[esp-4]
	fdiv	ST(0), ST(1)
	fstp	DWORD PTR [eax]

; 229  : 	dest->y = (src->y / z2);

	fld	DWORD PTR [ecx+4]
	fdiv	ST(0), ST(1)
	fstp	DWORD PTR [eax+4]

; 230  : 	dest->z = z2/100;

	fmul	DWORD PTR __real@4@3ff8a3d70a3d70a3d800
	fstp	DWORD PTR [eax+8]

; 231  : 
; 232  : };

	ret	0
?vector_project@@YAXPAUVECTOR@@0MM@Z ENDP		; vector_project
_TEXT	ENDS
END
