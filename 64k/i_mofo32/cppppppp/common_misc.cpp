// misc common
#include <math.h>
#include <stdlib.h>
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
	*dx = (float) (misc_cos(ang) * x) + (misc_sin(ang) * y);
	*dy = (float) (misc_cos(ang) * y) - (misc_sin(ang) * x);
};

float misc_sin( float angle ) {
	return (float)sin(angle);
};

float misc_cos( float angle ) {
	return (float)cos(angle);
};

float misc_fabs( float t ) {
	return (float)fabs(t);
};

float misc_sqrt( float t ) {
	return (float)sqrt(t);
};

float misc_atan2( float x, float y ) {
	return (float)atan2( x, y );
};

void *misc_malloc( long mem ) {
	void *temp = malloc( mem );
	return temp;
};

void misc_free( void *mem ) {
	free( mem );
};

float misc_fmod( float value, float modula ) {
	return fmod( value, modula );
};

/*

inline unsigned char common_ColFade(unsigned char Col1,unsigned char Col2,unsigned char Mix)
{
    return ((Col1*(255-Mix))+(Col2*Mix))>>8;
}



#define SCRX 640
#define SCRY 200
void common_RadiellBlur(unsigned char *scr,int Xcent,int Ycent,long Step,int Feedback)
{
	Step*=SCRX/320;
	long x,y,ymul,Yopt1,Yopt2,xk,yk;
    unsigned char Col1,Col2;
	ymul=Ycent*SCRX;
	yk=0;
	for(y=Ycent;y>=0;y--)
	{
		Yopt1=(y-(yk>>16));
		Yopt1=Yopt1*SCRX;
		xk=0;
		for(x=Xcent;x>=0;x--)
		{
			Col1=scr[x+ymul];
			Col2=scr[x-(xk>>16)+Yopt1];
            Col1=common_ColFade(Col1,Col2,Feedback);
			scr[x+ymul]=Col1;
			xk-=Step;
		}
		xk=Step;
		for(x=Xcent+1;x<SCRX;x++)
		{
			Col1=scr[x+ymul];
			Col2=scr[x-1-(xk>>16)+Yopt1];
            Col1=common_ColFade(Col1,Col2,Feedback);
			scr[x+ymul]=Col1;
			xk+=Step;
		}
		yk-=Step;
		ymul-=SCRX;

	}
	
	ymul=Ycent*SCRX+SCRX;
	yk=Step;
	for(y=Ycent+1;y<SCRY;y++)
	{
		Yopt1=(y-1-(yk>>16));
		Yopt1=Yopt1*SCRX;
		xk=0;
		for(x=Xcent;x>=0;x--)
		{
			Col1=scr[x+ymul];
			Col2=scr[x-(xk>>16)+Yopt1];
            Col1=common_ColFade(Col1,Col2,Feedback);
			scr[x+ymul]=Col1;
			xk-=Step;
		}
		xk=Step;
		for(x=Xcent;x<SCRX;x++)
		{
			Col1=scr[x+ymul];
			Col2=scr[x-1-(xk>>16)+Yopt1];
            Col1=common_ColFade(Col1,Col2,Feedback);
			scr[x+ymul]=Col1;
			xk+=Step;
		}
		yk+=Step;
		ymul+=SCRX;

	}
}
*/