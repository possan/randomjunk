// misc common
//#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include "..\common.h"

static long seed1 = 12345, seed2 = 52436;

long misc_rand() {
	seed1 += seed2;
	seed2 += 145;
	seed1 += 21;
	//  seed2 <<= 1;
	//  seed2 ^= (seed1*3);
	return (seed1 + seed2);
};

void misc_rotate2d( float x, float y, float *dx, float *dy, float angle ) {
	double ang = angle*M_PI/180;
	*dx = (float)((cos(ang) * x) + (sin(ang) * y));
	*dy = (float)((cos(ang) * y) - (sin(ang) * x));
};

long misc_strlen( char *str ) {
	long l = 0;
	while( str[l] != 0 ) l++;
	return l;
};

long stc;

void misc_resettimer() {
	stc = (long)GetTickCount();
};

float misc_gettimer() {
	float f;
	f = (float)(GetTickCount() - stc);
	f /= 1000;
	return f;
};