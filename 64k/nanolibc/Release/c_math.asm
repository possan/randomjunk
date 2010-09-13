	TITLE	E:\prj64k\nanolibc\c_math.c
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
;	COMDAT _abs
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _atan
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _atan2
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _cos
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _exp
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _fmod
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _fabs
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _labs
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _log
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _log10
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _pow
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _sin
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _sqr
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _sqrt
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _srand
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _rand
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
_DATA	SEGMENT
_next	DD	01H
_DATA	ENDS
PUBLIC	_abs
;	COMDAT _abs
_TEXT	SEGMENT
_x$ = 8
_abs	PROC NEAR					; COMDAT

; 16   : 	if( x<0 ) return -x;

	mov	eax, DWORD PTR _x$[esp-4]
	test	eax, eax
	jge	SHORT $L17571
	neg	eax
$L17571:

; 17   : 	return x;
; 18   : };

	ret	0
_abs	ENDP
_TEXT	ENDS
PUBLIC	_atan
EXTRN	__fltused:NEAR
;	COMDAT _atan
_TEXT	SEGMENT
_x$ = 8
_temp$ = -8
_atan	PROC NEAR					; COMDAT

; 79   : double  __cdecl atan(double x) {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	ecx

; 80   : 	double temp;
; 81   : 	__asm {
; 82   : 		fld x

	fld	QWORD PTR _x$[ebp]

; 83   : 		fld1

	fld1

; 84   : 		fpatan

	fpatan

; 85   : 		fstp temp

	fstp	QWORD PTR _temp$[ebp]

; 86   : 	};
; 87   : 	return temp;

	fld	QWORD PTR _temp$[ebp]

; 88   : };

	leave
	ret	0
_atan	ENDP
_TEXT	ENDS
PUBLIC	_atan2
;	COMDAT _atan2
_TEXT	SEGMENT
_x$ = 8
_y$ = 16
_temp$ = -8
_atan2	PROC NEAR					; COMDAT

; 91   : double  __cdecl atan2(double x, double y) {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	ecx

; 92   : 	double temp;
; 93   : 	__asm {
; 94   : 		fld x

	fld	QWORD PTR _x$[ebp]

; 95   : 		fld y

	fld	QWORD PTR _y$[ebp]

; 96   : 		fpatan

	fpatan

; 97   : 		fstp temp

	fstp	QWORD PTR _temp$[ebp]

; 98   : 	}
; 99   : 	return temp;

	fld	QWORD PTR _temp$[ebp]

; 100  : };

	leave
	ret	0
_atan2	ENDP
_TEXT	ENDS
PUBLIC	_cos
;	COMDAT _cos
_TEXT	SEGMENT
_x$ = 8
_temp$ = -8
_cos	PROC NEAR					; COMDAT

; 102  : double  __cdecl cos(double x) {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	ecx

; 103  : 	double temp;
; 104  : 	__asm {
; 105  : 		fld x

	fld	QWORD PTR _x$[ebp]

; 106  : 		fcos

	fcos

; 107  : 		fstp temp

	fstp	QWORD PTR _temp$[ebp]

; 108  : 	}
; 109  : 	return temp;

	fld	QWORD PTR _temp$[ebp]

; 110  : };

	leave
	ret	0
_cos	ENDP
_TEXT	ENDS
PUBLIC	_exp
;	COMDAT _exp
_TEXT	SEGMENT
_x$ = 8
_temp$ = -8
_exp	PROC NEAR					; COMDAT

; 117  : double __cdecl exp(double x) {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	ecx

; 118  : 	double temp;
; 119  : 	__asm {
; 120  : 		fst x

	fst	QWORD PTR _x$[ebp]

; 121  : 		fldl2e

	fldl2e

; 122  : 		fmulp st(1), st

	fmulp	ST(1), ST(0)

; 123  : 		fld1

	fld1

; 124  : 		fld st(1)

	fld	ST(1)

; 125  : 		fprem

	fprem

; 126  : 		f2xm1

	f2xm1

; 127  : 		faddp st(1), st

	faddp	ST(1), ST(0)

; 128  : 		fscale

	fscale

; 129  : 		fxch

	fxch	ST(1)

; 130  : 		fstp st

	fstp	ST(0)

; 131  : 		fstp temp

	fstp	QWORD PTR _temp$[ebp]

; 132  : 	};
; 133  : 	return temp;

	fld	QWORD PTR _temp$[ebp]

; 134  : };

	leave
	ret	0
_exp	ENDP
_TEXT	ENDS
PUBLIC	_fmod
;	COMDAT _fmod
_TEXT	SEGMENT
_x$ = 8
_y$ = 16
_temp$ = -8
_fmod	PROC NEAR					; COMDAT

; 136  : double __cdecl fmod(double x, double y) {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	ecx

; 137  : 	double temp;
; 138  : 	__asm {
; 139  : 		fld x

	fld	QWORD PTR _x$[ebp]

; 140  : 		fld y

	fld	QWORD PTR _y$[ebp]

; 141  : 		fxch

	fxch	ST(1)

; 142  : 		fprem

	fprem

; 143  : 		fstp st(1)

	fstp	ST(1)

; 144  : 		fstp temp

	fstp	QWORD PTR _temp$[ebp]

; 145  : 	};
; 146  : 	return temp;

	fld	QWORD PTR _temp$[ebp]

; 147  : };

	leave
	ret	0
_fmod	ENDP
_TEXT	ENDS
PUBLIC	_fabs
PUBLIC	__real@8@00000000000000000000
;	COMDAT __real@8@00000000000000000000
; File E:\prj64k\nanolibc\c_math.c
CONST	SEGMENT
__real@8@00000000000000000000 DQ 00000000000000000r ; 0
CONST	ENDS
;	COMDAT _fabs
_TEXT	SEGMENT
_x$ = 8
_fabs	PROC NEAR					; COMDAT

; 150  : 	if( x<0 ) return -x;

	fld	QWORD PTR _x$[esp-4]
	fcom	QWORD PTR __real@8@00000000000000000000
	fnstsw	ax
	sahf
	jae	SHORT $L17605
	fchs
$L17605:

; 151  : 	return x;
; 152  : };

	ret	0
_fabs	ENDP
_TEXT	ENDS
PUBLIC	_labs
;	COMDAT _labs
_TEXT	SEGMENT
_x$ = 8
_labs	PROC NEAR					; COMDAT

; 155  : 	if( x<0 ) return -x;

	mov	eax, DWORD PTR _x$[esp-4]
	test	eax, eax
	jge	SHORT $L17609
	neg	eax
$L17609:

; 156  : 	return x;
; 157  : };

	ret	0
_labs	ENDP
_TEXT	ENDS
PUBLIC	_log
;	COMDAT _log
_TEXT	SEGMENT
_x$ = 8
_temp$ = -8
_log	PROC NEAR					; COMDAT

; 159  : double __cdecl log(double x) {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	ecx

; 160  : 	double temp;
; 161  : 	__asm {
; 162  : 		fld x

	fld	QWORD PTR _x$[ebp]

; 163  : 		fldln2

	fldln2

; 164  : 		fxch

	fxch	ST(1)

; 165  : 		fyl2x

	fyl2x

; 166  : 		fstp temp

	fstp	QWORD PTR _temp$[ebp]

; 167  : 	};
; 168  : 	return temp;

	fld	QWORD PTR _temp$[ebp]

; 169  : };

	leave
	ret	0
_log	ENDP
_TEXT	ENDS
PUBLIC	_log10
;	COMDAT _log10
_TEXT	SEGMENT
_x$ = 8
_temp$ = -8
_log10	PROC NEAR					; COMDAT

; 171  : double __cdecl log10(double x) {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	ecx

; 172  : //  #pragma aux    log10 parm [8087] value [8087] modify [8087] = 
; 173  : 	double temp;
; 174  : 	__asm {
; 175  : 		fld x

	fld	QWORD PTR _x$[ebp]

; 176  : 		fldlg2

	fldlg2

; 177  : 		fxch

	fxch	ST(1)

; 178  : 		fyl2x

	fyl2x

; 179  : 		fstp temp

	fstp	QWORD PTR _temp$[ebp]

; 180  : 	};
; 181  : 	return temp;

	fld	QWORD PTR _temp$[ebp]

; 182  : };

	leave
	ret	0
_log10	ENDP
_TEXT	ENDS
PUBLIC	_pow
;	COMDAT _pow
_TEXT	SEGMENT
_x$ = 8
_y$ = 16
_temp$ = -8
_pow	PROC NEAR					; COMDAT

; 184  : double __cdecl pow(double x, double y) {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	ecx

; 185  : //  #pragma aux    pow parm [8087] [8087] value [8087] modify [8087] = 
; 186  : 	double temp;
; 187  : 	__asm {
; 188  : 		fld y

	fld	QWORD PTR _y$[ebp]

; 189  : 		fld x

	fld	QWORD PTR _x$[ebp]

; 190  : 		fyl2x

	fyl2x

; 191  : 		fld1

	fld1

; 192  : 		fld st(1)

	fld	ST(1)

; 193  : 		fprem

	fprem

; 194  : 		f2xm1

	f2xm1

; 195  : 		faddp st(1), st

	faddp	ST(1), ST(0)

; 196  : 		fscale

	fscale

; 197  : 		fxch

	fxch	ST(1)

; 198  : 		fstp st

	fstp	ST(0)

; 199  : 		fstp temp

	fstp	QWORD PTR _temp$[ebp]

; 200  : 	};
; 201  : 	return temp;

	fld	QWORD PTR _temp$[ebp]

; 202  : };

	leave
	ret	0
_pow	ENDP
_TEXT	ENDS
PUBLIC	_sin
;	COMDAT _sin
_TEXT	SEGMENT
_x$ = 8
_result$ = -8
_sin	PROC NEAR					; COMDAT

; 204  : double __cdecl sin( double x ) {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	ecx

; 205  : 	double result;
; 206  : 	__asm {
; 207  : 		fld x

	fld	QWORD PTR _x$[ebp]

; 208  : 		fsin

	fsin

; 209  : 		fstp result

	fstp	QWORD PTR _result$[ebp]

; 210  : 	};
; 211  : 	return result;

	fld	QWORD PTR _result$[ebp]

; 212  : };

	leave
	ret	0
_sin	ENDP
_TEXT	ENDS
PUBLIC	_sqr
;	COMDAT _sqr
_TEXT	SEGMENT
_x$ = 8
_temp$ = -8
_sqr	PROC NEAR					; COMDAT

; 230  : double __cdecl sqr(double x) {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	ecx

; 231  : 	double temp;
; 232  : 	__asm {
; 233  : 		fld x

	fld	QWORD PTR _x$[ebp]

; 234  : 		fmul st(0), st(0)

	fmul	ST(0), ST(0)

; 235  : 		fstp temp

	fstp	QWORD PTR _temp$[ebp]

; 236  : 	};
; 237  : 	return temp;

	fld	QWORD PTR _temp$[ebp]

; 238  : };

	leave
	ret	0
_sqr	ENDP
_TEXT	ENDS
PUBLIC	_sqrt
;	COMDAT _sqrt
_TEXT	SEGMENT
_x$ = 8
_temp$ = -8
_sqrt	PROC NEAR					; COMDAT

; 240  : double __cdecl sqrt(double x) {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	ecx

; 241  : 	double temp;
; 242  : 	__asm {
; 243  : 		fld x

	fld	QWORD PTR _x$[ebp]

; 244  : 		fsqrt

	fsqrt

; 245  : 		fstp temp

	fstp	QWORD PTR _temp$[ebp]

; 246  : 	};
; 247  : 	return temp;

	fld	QWORD PTR _temp$[ebp]

; 248  : };

	leave
	ret	0
_sqrt	ENDP
_TEXT	ENDS
PUBLIC	_srand
;	COMDAT _srand
_TEXT	SEGMENT
_x$ = 8
_srand	PROC NEAR					; COMDAT

; 253  : 	next = x;

	mov	eax, DWORD PTR _x$[esp-4]
	mov	DWORD PTR _next, eax

; 254  : };

	ret	0
_srand	ENDP
_TEXT	ENDS
PUBLIC	_rand
;	COMDAT _rand
_TEXT	SEGMENT
_rand	PROC NEAR					; COMDAT

; 257  : 	next = next  * 1103515245 + 12345;

	mov	eax, DWORD PTR _next
	imul	eax, 1103515245				; 41c64e6dH
	add	eax, 12345				; 00003039H
	mov	DWORD PTR _next, eax

; 258  : 	return (next & RAND_MAX);

	and	eax, 32767				; 00007fffH

; 259  : };

	ret	0
_rand	ENDP
_TEXT	ENDS
END
