/*
 * nanolibc math code
 * lluminator/psikorp '99
 */

#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <stdlib.h>

/*
 * most asm versions converted from the tinymath pragmas by <G>SZ and that cubic guy :)
 * and this is not optimized in any way... 
 */

int __cdecl abs(int x) {
	if( x<0 ) return -x;
	return x;
};

//double __cdecl acos(double x) {
	/*__asm {
		fld x
		sub esp, 4
		fst dword ptr [esp]
		fmul st, st
		fld1
		fsubrp st(1), st
		fsqrt
		fdiv dword ptr [esp]
		fld1
		fpatan
		mov eax, [esp]
		cmp eax, 0x80000000
		jbe _acos_exit
		fldpi
		faddp st(1), st
		_acos_exit:
		pop eax
	};*/
//	return x;
//};

//double  __cdecl asin(double x) {
//  #pragma aux    asin parm [8087] value [8087] modify [8087 eax] = 
	/*__asm {
		fld x
		sub esp, 4
		fst dword ptr [esp]
		mov eax, [esp]
		test eax, eax
		je _asin_zero
		fmul st, st
		fld1
		fsubrp st(1), st
		fsqrt
		fdiv dword ptr [esp]
		fld1
		fpatan
		fchs
		mov eax, 0x3F000000
		push eax
		fld dword ptr [esp]
		pop eax
		fldpi
		fmulp st(1), st
		mov eax, [esp]
		cmp eax, 0x80000000
		jbe	_asin_exit
		fchs
		_asin_exit:
		faddp st(1), st
		_asin_zero:
		pop eax
	};*/
//	return x;
//};

// works!
double  __cdecl atan(double x) {
	double temp;
	__asm {
		fld x
		fld1
		fpatan
		fstp temp
	};
	return temp;
};

// works!
double  __cdecl atan2(double x, double y) {
	double temp;
	__asm {
		fld x
		fld y
		fpatan
		fstp temp
	}
	return temp;
};

double  __cdecl cos(double x) {
	double temp;
	__asm {
		fld x
		fcos
		fstp temp
	}
	return temp;
};

//double __cdecl cosh(double x) {
//  #pragma aux    cosh parm [8087] value [8087] modify [8087 eax] = "fldl2e" "fmulp st(1), st" "fld1" "fld st(1)" "fprem" "f2xm1" "faddp st(1), st" "fscale" "fxch" "fstp st" "fld1" "fdiv st, st(1)" "faddp st(1), st" "mov eax, 0x3F000000" "push eax" "fld dword ptr [esp]" "fmulp st(1), st" "pop eax"
//	return x;
//};

double __cdecl exp(double x) {
	double temp;
	__asm {
		fst x
		fldl2e
		fmulp st(1), st
		fld1
		fld st(1)
		fprem
		f2xm1
		faddp st(1), st
		fscale
		fxch
		fstp st
		fstp temp
	};
	return temp;
};

double __cdecl fmod(double x, double y) {
	double temp;
	__asm {
		fld x
		fld y
		fxch
		fprem
		fstp st(1)
		fstp temp
	};
	return temp;
};

double __cdecl fabs(double x) {
	if( x<0 ) return -x;
	return x;
};

long __cdecl labs(long x) {
	if( x<0 ) return -x;
	return x;
};

double __cdecl log(double x) {
	double temp;
	__asm {
		fld x
		fldln2
		fxch
		fyl2x
		fstp temp
	};
	return temp;
};

double __cdecl log10(double x) {
//  #pragma aux    log10 parm [8087] value [8087] modify [8087] = 
	double temp;
	__asm {
		fld x
		fldlg2
		fxch
		fyl2x
		fstp temp
	};
	return temp;
};

const double ln2 = 0.693147181;
const double dlnA = (0.693147181 / (float)0x100000);
const long dExpC = 68243;

double __cdecl pow( double x, double y ) {
/*
	double temp;
	__asm {
		sub dword ptr x, 68243

		fld x

		fmul dlnA

		fst temp;
	};

	return exp( y * temp );

    #pragma aux    pow parm [8087] [8087] value [8087] modify [8087] = 
*/
	
	double temp;
	__asm {
		fld x
		fld y
		fyl2x
		fld1
		fld st(1)
		fprem
		f2xm1
		faddp st(1), st
		fscale
		fxch
		fstp st
		fstp temp
	};
	return temp;
	
};

double __cdecl sin( double x ) {
	double result;
	__asm {
		fld x
		fsin
		fstp result
	};
	return result;
};


//double __cdecl sinh(double x) {
//  #pragma aux    sinh parm [8087] value [8087] modify [8087 eax] = "fldl2e" "fmulp st(1), st" "fld1" "fld st(1)" "fprem" "f2xm1" "faddp st(1), st" "fscale" "fxch" "fstp st" "fld1" "fdiv st, st(1)" "fsubp st(1), st" "mov eax, 0x3F000000" "push eax" "fld dword ptr [esp]" "fmulp st(1), st" "pop eax"
//	return x;
//};

//double __cdecl tan(double x) {
//  #pragma aux    tan parm [8087] value [8087] modify [8087] = "fptan" "fstp st"
//	return x;
//};

//double __cdecl tanh(double x) {
//  #pragma aux    tanh parm [8087] value [8087] modify [8087 eax] = "fld st" "mov eax, 0x40000000" "push eax" "fld dword ptr [esp]" "fmul st, st(1)" "fldl2e" "fmulp st(1), st" "fld1" "fld st(1)" "fprem" "f2xm1" "faddp st(1), st" "fscale" "fxch" "fstp st" "fld1" "fsub st, st(1)" "fchs" "fld1" "faddp st(2), st" "fdivrp st(1), st" "pop eax"
//	return x;
//};

double __cdecl sqr(double x) {
	double temp;
	__asm {
		fld x
		fmul st(0), st(0)
		fstp temp
	};
	return temp;
};

double __cdecl sqrt(double x) {
	double temp;
	__asm {
		fld x
		fsqrt
		fstp temp
	};
	return temp;
};

static long next = 1;

void __cdecl srand( unsigned int x ) {
	next = x;
};

int __cdecl rand(void) {
	next = next  * 1103515245 + 12345;
	return (next & RAND_MAX);
};

// tnymath stuff:
//  #pragma aux    finit modify [8087] = "finit"
//  #pragma aux    acos parm [8087] value [8087] modify [8087 eax] = "sub esp, 4" "fst dword ptr [esp]" "fmul st, st" "fld1" "fsubrp st(1), st" "fsqrt" "fdiv dword ptr [esp]" "fld1" "fpatan" "mov eax, [esp]" "cmp eax, 0x80000000" "jbe _acos_exit" "fldpi" "faddp st(1), st" "_acos_exit:" "pop eax"
//  #pragma aux    asin parm [8087] value [8087] modify [8087 eax] = "sub esp, 4" "fst dword ptr [esp]" "mov eax, [esp]" "test eax, eax" "je _asin_zero" "fmul st, st" "fld1" "fsubrp st(1), st" "fsqrt" "fdiv dword ptr [esp]" "fld1" "fpatan" "fchs" "mov eax, 0x3F000000" "push eax" "fld dword ptr [esp]" "pop eax" "fldpi" "fmulp st(1), st" "mov eax, [esp]" "cmp eax, 0x80000000" "jbe _asin_exit" "fchs" "_asin_exit:" "faddp st(1), st" "_asin_zero:" "pop eax"
//  #pragma aux    atan parm [8087] value [8087] modify [8087] = "fld1" "fpatan"
//  #pragma aux    atan2 parm [8087] [8087] value [8087] modify [8087] = "fxch" "fpatan"
//  #pragma aux    ceil parm [8087] value [8087] modify [8087 eax] = "fchs" "fld1" "fld st(1)" "fprem" "sub esp, 4" "fst dword ptr [esp]" "fxch st(2)" "mov eax, [esp]" "cmp eax, 0x80000000"  "jbe _ceil_exit" "fsub st, st(1)" "_ceil_exit:" "fsub st, st(2)"  "fstp st(1)" "fstp st(1)" "fchs" "pop eax"
//  #pragma aux    cos parm [8087] value [8087] modify [8087] = "fcos"
//  #pragma aux    exp parm [8087] value [8087] modify [8087] = "fldl2e" "fmulp st(1), st" "fld1" "fld st(1)" "fprem" "f2xm1" "faddp st(1), st" "fscale" "fxch" "fstp st"
//  #pragma aux    exp2 parm [8087] value [8087] modify [8087] = "fld1" "fld st(1)" "fprem" "f2xm1" "faddp st(1), st" "fscale" "fxch" "fstp st"
//  #pragma aux    exp10 parm [8087] value [8087] modify [8087] = "fldl2t" "fmulp st(1), st" "fld1" "fld st(1)" "fprem" "f2xm1" "faddp st(1), st" "fscale" "fxch" "fstp st"
//  #pragma aux    fabs parm [8087] value [8087] modify [8087] = "fabs"
//  #pragma aux    floor parm [8087] value [8087] modify [8087 eax] = "fld1" "fld st(1)" "fprem" "sub esp, 4" "fst dword ptr [esp]" "fxch st(2)" "mov eax, [esp]" "cmp eax, 0x80000000"  "jbe _ceil_exit" "fsub st, st(1)" "_ceil_exit:" "fsub st, st(2)"  "fstp st(1)" "fstp st(1)" "pop eax"
//  #pragma aux    fmod parm [8087] [8087] value [8087] modify [8087] = "fprem" "fxch" "fstp st"
//  #pragma aux    hypot parm [8087] [8087] value [8087] modify [8087] = "fmul st, st" "fxch" "fmul st, st" "faddp st(1), st" "fsqrt"
//  #pragma aux    log parm [8087] value [8087] modify [8087] = "fldln2" "fxch" "fyl2x"
//  #pragma aux    log2 parm [8087] value [8087] modify [8087] = "fld1" "fxch" "fyl2x"
//  #pragma aux    log10 parm [8087] value [8087] modify [8087] = "fldlg2" "fxch" "fyl2x"
//  #pragma aux    pow parm [8087] [8087] value [8087] modify [8087] = "fyl2x" "fld1" "fld st(1)" "fprem" "f2xm1" "faddp st(1), st" "fscale" "fxch" "fstp st"
//  #pragma aux    sin parm [8087] value [8087] modify [8087] = "fsin"
//  #pragma aux    sincos parm [8087] [eax] [edx] modify [8087] = "fsincos" "fstp dword ptr [edx]" "fstp dword ptr [eax]"
//  #pragma aux    sqr parm [8087] value [8087] modify [8087] = "fmul st, st"
//  #pragma aux    sqrt parm [8087] value [8087] modify [8087] = "fsqrt"
//  #pragma aux    tan parm [8087] value [8087] modify [8087] = "fptan" "fstp st"
//  #pragma aux    acosh parm [8087] value [8087] modify [8087] = "fld st" "fmul st, st" "fld1" "fsubp st(1), st" "fsqrt" "faddp st(1), st" "fldln2" "fxch" "fyl2x"
//  #pragma aux    asinh parm [8087] value [8087] modify [8087] = "fld st" "fmul st, st" "fld1" "faddp st(1), st" "fsqrt" "faddp st(1), st" "fldln2" "fxch" "fyl2x"
//  #pragma aux    atanh parm [8087] value [8087] modify [8087 eax] = "fld1" "fsub st, st(1)" "fld1" "faddp st(2), st" "fdivrp st(1), st" "fldln2" "fxch" "fyl2x" "mov eax, 0xBF000000" "push eax" "fld dword ptr [esp]" "fmulp st(1), st" "pop eax"
//  #pragma aux    cosh parm [8087] value [8087] modify [8087 eax] = "fldl2e" "fmulp st(1), st" "fld1" "fld st(1)" "fprem" "f2xm1" "faddp st(1), st" "fscale" "fxch" "fstp st" "fld1" "fdiv st, st(1)" "faddp st(1), st" "mov eax, 0x3F000000" "push eax" "fld dword ptr [esp]" "fmulp st(1), st" "pop eax"
//  #pragma aux    sinh parm [8087] value [8087] modify [8087 eax] = "fldl2e" "fmulp st(1), st" "fld1" "fld st(1)" "fprem" "f2xm1" "faddp st(1), st" "fscale" "fxch" "fstp st" "fld1" "fdiv st, st(1)" "fsubp st(1), st" "mov eax, 0x3F000000" "push eax" "fld dword ptr [esp]" "fmulp st(1), st" "pop eax"
//  #pragma aux    tanh parm [8087] value [8087] modify [8087 eax] = "fld st" "mov eax, 0x40000000" "push eax" "fld dword ptr [esp]" "fmul st, st(1)" "fldl2e" "fmulp st(1), st" "fld1" "fld st(1)" "fprem" "f2xm1" "faddp st(1), st" "fscale" "fxch" "fstp st" "fld1" "fsub st, st(1)" "fchs" "fld1" "faddp st(2), st" "fdivrp st(1), st" "pop eax"

