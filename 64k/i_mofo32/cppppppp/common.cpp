// common shit
#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#include <system.h>
#include <string.h>
#include <math.h>
#include "\prj64k\common\m12\m12.h"
#include "common.h"
#include "images.h"

CORNER gfx_sq[65*12];
char *fonttable = " abcdefghijklmnopqrstuvwxyz0123456789.,:;@!\"/\\-+()&\%~";

unsigned char *gfx_mb_temp;
unsigned char *gfx_virtual;
unsigned char *gfx_s_start;

unsigned char pal[16*3] = {
  0,0,0,
  2,8,0,
  4,14,0,
  6,20,0,
  8,23,0,
  10,30,0,
  12,36,0,
  14,40,0,
  16,42,0,
  19,44,0,
  22,46,0,
  24,50,0,
  27,53,0,
  34,56,0,
  40,59,0,
  63,63,0,
};

void gfx_init() {
  gfx_mb_temp = (unsigned char *) malloc( 640*200 );
  gfx_virtual = (unsigned char *) malloc( 640*200 );
  gfx_s_start = (unsigned char *) system_getzerooffset();
  gfx_s_start += 0x0A0000;
  gfx_s_start += 11200;
  m12_init();

  for( int k=0; k<16; k++ ) {
    __asm {

      mov al, 2
      mov dx, 03C4h
      out dx, al

      mov al, 0
      inc dx
      out dx, al

      mov eax, k
      mov dx, 0x3C8
      out dx, al
      inc dx
      shl eax, 2
      out dx, al
      inc al
      out dx, al
      inc al
      out dx, al
    };
  };

//  m12_setpal( (unsigned char *)&pal );
};

void gfx_cls(unsigned char value) {
  memset( gfx_virtual, value, 640*200 );
};

void common_RadiellBlur(unsigned char *scr,int Xcent,int Ycent,long Step,int Feedback);

void gfx_blit() {
    __asm {
      mov esi, gfx_virtual
      mov edi, gfx_mb_temp
      mov ecx, 32000
      xor bx, bx
      skitloop:

        xor ax, ax
        mov al, byte ptr [esi]
        mov bl, byte ptr [edi]
        add ax, bx
        add ax, bx
        add ax, bx
        shr ax, 2
        mov byte ptr [esi], al

        xor ax, ax
        mov al, byte ptr [esi+1]
        mov bl, byte ptr [edi+1]
        add ax, bx
        add ax, bx
        add ax, bx
        shr ax, 2
        mov byte ptr [esi+1], al

        xor ax, ax
        mov al, byte ptr [esi+2]
        mov bl, byte ptr [edi+2]
        add ax, bx
        add ax, bx
        add ax, bx
        shr ax, 2
        mov byte ptr [esi+2], al

        xor ax, ax
        mov al, byte ptr [esi+3]
        mov bl, byte ptr [edi+3]
        add ax, bx
        add ax, bx
        add ax, bx
        shr ax, 2
        mov byte ptr [esi+3], al

        add esi, 4
        add edi, 4 

      dec ecx
      cmp ecx, 0
      jnz skitloop
    }

  m12_blit( gfx_virtual, gfx_s_start, 16000 );

  memcpy( gfx_mb_temp, gfx_virtual, 640*200 );
//  common_RadiellBlur(gfx_mb_temp, 320, 100, 10000, 192);
};

char *hexkladd = "0123456789ABCDEF";
void printnibble( int v ) {
  char shit[2];
  shit[0] = hexkladd[v&15];
  shit[1] = 0;
  printf( shit );
};
void printlonghex( long l ) {
  printnibble( l>>0 );
  printnibble( l>>4 );
  printnibble( l>>8 );
  printnibble( l>>12 );
  printnibble( l>>16 );
  printnibble( l>>20 );
  printnibble( l>>24 );
  printnibble( l>>28 );
};

void gfx_kill() {
  m12_kill();
//  printf( "gfx_virtual = 0x" ); printlonghex( (long)gfx_virtual ); printf( "\n" );
//  printf( "gfx_mb_temp = 0x" ); printlonghex( (long)gfx_mb_temp ); printf( "\n" );
//  printf( "gfx_s_start = 0x" ); printlonghex( (long)gfx_s_start ); printf( "\n" );
  free( gfx_mb_temp );
  free( gfx_virtual );
};

void gfx_drawsprite( int x, int y, float width, float height, int brightness, unsigned char *data ) {

    int x1 = x - (width/2);
    int y1 = y - (height/2);
    long xstep = 64*2048 / width;
    long ystep = 64*2048 / height;

	long l;

	int yp = 0;
	int ys = y1;
    for( int j=0; j<height; j++ ) {
		int xp = 0;
		int xs = x1;
        for( int i=0; i<width; i++ ) { 
            if( xs>=0 && xs<640 && ys>=0 && ys<200 ) {
                long o = ys*640+xs;
                int c = gfx_virtual[o];
                c += (data[ ((yp>>11)<<6)+(xp>>11) ]*brightness)>>8;
                if( c>255 ) c = 255;
                gfx_virtual[o] = c;
			};
            xp += xstep;
			xs ++;
		};
        yp += ystep;
		ys ++;
	};
};

void misc_rotate2d( float x, float y, float *dx, float *dy, float angle ) {
  double ang = angle*3.142/180;
  *dx = (float) (cos(ang) * x) + (sin(ang) * y); 
  *dy = (float) (cos(ang) * y) - (sin(ang) * x);
};

void gfx_drawsq( unsigned char *source ) {
  CORNER v[4];  //  0---1
  CORNER p[3];  //  |   |
  CORNER d[3];  //  3---2
  for( int by=0; by<10; by++ ) {
    for( int bx=0; bx<32; bx++ ) {
      long bofs = by * 64 + bx;
      p[0].u = gfx_sq[bofs].u;    d[0].u = (gfx_sq[bofs+64].u - gfx_sq[bofs].u) / 20;
      p[0].v = gfx_sq[bofs].v;    d[0].v = (gfx_sq[bofs+64].v - gfx_sq[bofs].v) / 20;
//      p[0].s = gfx_sq[bofs].s;    d[0].s = (gfx_sq[bofs+64].s - gfx_sq[bofs].s) / 20;
      p[0].w = gfx_sq[bofs].w;    d[0].w = (gfx_sq[bofs+64].w - gfx_sq[bofs].w) / 20;
      p[1].u = gfx_sq[bofs+1].u;    d[1].u = (gfx_sq[bofs+65].u - gfx_sq[bofs+1].u) / 20;
      p[1].v = gfx_sq[bofs+1].v;    d[1].v = (gfx_sq[bofs+65].v - gfx_sq[bofs+1].v) / 20;
//      p[1].s = gfx_sq[bofs+1].s;    d[1].s = (gfx_sq[bofs+65].s - gfx_sq[bofs+1].s) / 20;
      p[1].w = gfx_sq[bofs+1].w;    d[1].w = (gfx_sq[bofs+65].w - gfx_sq[bofs+1].w) / 20;
      long sofs = by*20*640+bx*20;
      for( int py=0; py<20; py++ ) {
        p[2].u = p[0].u;
        p[2].v = p[0].v;
//        p[2].s = p[0].s;
        p[2].w = p[0].w;
        d[2].u = (p[1].u - p[0].u) / 20;
        d[2].v = (p[1].v - p[0].v) / 20;
//        d[2].s = (p[1].s - p[0].s) / 20;
        d[2].w = (p[1].w - p[0].w) / 20;
        for( int px=0; px<20; px++ ) {
          int u = ((p[2].u*p[2].w)>>23)+65536;
          int v = ((p[2].v*p[2].w)>>23)+65536;
          gfx_virtual[ sofs++ ] |= source[ ((v&63)<<6)+(u&63) ];
          p[2].u += d[2].u;
          p[2].v += d[2].v;
//          p[2].s += d[2].s;
          p[2].w += d[2].w;
        };
        p[0].u += d[0].u;
        p[0].v += d[0].v;
//        p[0].s += d[0].s;
        p[0].w += d[0].w;
        p[1].u += d[1].u;
        p[1].v += d[1].v;
//        p[1].s += d[1].s;
        p[1].w += d[1].w;
        sofs += 640 - 20;
      };
    };
  };
};

void gfx_drawchar( int x, int y, float width, float height, char ch, unsigned char brightness ) {

    int ctn = strlen( fonttable );
    int f = 0;
    for( int n=0; n<ctn; n++ ) if( fonttable[n]==ch ) f = n;
    if( f==0 ) return;

    int x1 = x - (width/2);
    int y1 = y - (height/2);
    long xstep = 16*2048 / width;
    long ystep = 16*2048 / height;

	long l;
    unsigned char *data = (unsigned char *)&i_font+f*16*16;

	int yp = 0;
	int ys = y1;
    for( int j=0; j<height; j++ ) {
		int xp = 0;
		int xs = x1;
        for( int i=0; i<width; i++ ) { 
            if( xs>=0 && xs<640 && ys>=0 && ys<200 ) {
                long o = ys*640+xs;
                int c = gfx_virtual[o] + ((brightness * data[ ((yp>>11)<<4)+(xp>>11) ])>>8);
                if( c>255 ) c = 255;
                gfx_virtual[o] = c;
			};
            xp += xstep;
			xs ++;
		};
        yp += ystep;
		ys ++;
	};
};

void gfx_drawcenteredstring( int xc, int yc, float w, float h, int spacing, int brightness, char *texten ) {
  long l = strlen(texten);
  long ctn = strlen(fonttable);
  int x1 = xc - (l*spacing/2);
  for( int j=0; j<l; j++ ) {
    gfx_drawchar( x1 + (j*spacing), yc, w, h, texten[j], brightness );
  };
};

float g_static[4][4] = { {0,1,2,3},{4,5,6,7},{8,9,10,11},{12,13,14,15} };

void gfx_genstatic() {
  for( int i=0; i<4; i++ ) {
    if( g_static[i][0]>g_static[i][1] ) {
      g_static[i][0] = -(misc_rand()%50);
      g_static[i][1] = misc_rand()%50;
      g_static[i][2] = misc_rand()%640;
      g_static[i][3] = (float)((misc_rand()%100)-50)/2.0f;
    };
    g_static[i][0] ++;
    g_static[i][2] += g_static[i][3];

    if( g_static[i]>0 ) {
      int o = g_static[i][2];
      if( o>=0 && o<640 ) {
        for( int j=0; j<200; j++ ) {
          gfx_virtual[o] = 128 + (misc_rand()&63);
          o+=640;
        };
      };
    };

  };
};

static long seed1 = 12345, seed2 = 52436;

long misc_rand() {
  seed1 += seed2;
  seed2 += 145;
  seed1 += 21;
//  seed2 <<= 1;
//  seed2 ^= (seed1*3);
  return (seed1 + seed2);
};

//  333 DD
//    3 D D
//   33 D D
//    3 D D
//  333 DD

VECTOR vector_crossproduct( VECTOR a, VECTOR b ) {
  VECTOR q;
  q.x = (a.y*b.z) - (a.z*b.y);
  q.y = (a.z*b.x) - (a.x*b.z);
  q.z = (a.x*b.y) - (a.y*b.x);
  return q;
};

float vector_dotproduct( VECTOR a, VECTOR b ) {
  return ( a.x*b.x +
           a.y*b.y +
           a.z*b.z );
};

void vector_normalize( VECTOR *v ) {
  float l = sqrt( v->x*v->x + v->y*v->y + v->z*v->z );
  v->x = v->x / l;
  v->y = v->y / l;
  v->z = v->z / l;
};


void matrix_from_vectors (VECTOR direction, VECTOR upvect, MATRIX *m) {
  VECTOR w;
  VECTOR v,u;
  float lambda;
  v = direction;
  u = upvect;
  vector_normalize( &v );
  lambda = vector_dotproduct( u,v );
  u.x -= lambda*v.x;
  u.y -= lambda*v.y;
  u.z -= lambda*v.z;
  vector_normalize( &u );
  w = vector_crossproduct( v,u );
  m->el[0][0] = w.x;
  m->el[0][1] = w.y;
  m->el[0][2] = w.z;
  m->el[1][0] = u.x;
  m->el[1][1] = u.y;
  m->el[1][2] = u.z;
  m->el[2][0] = v.x; 
  m->el[2][1] = v.y;
  m->el[2][2] = v.z;
};

void vector_mul (MATRIX *m, VECTOR *v, VECTOR *dv) {
  dv->x = m->el[0][0]*v->x + m->el[0][1]*v->y + m->el[0][2]*v->z;
  dv->y = m->el[1][0]*v->x + m->el[1][1]*v->y + m->el[1][2]*v->z;
  dv->z = m->el[2][0]*v->x + m->el[2][1]*v->y + m->el[2][2]*v->z;
};

void vector_add (VECTOR *v, VECTOR *a) {
  v->x += a->x;
  v->y += a->y;
  v->z += a->z;
};

void vector_sub (VECTOR *v, VECTOR *a) {
  v->x -= a->x;
  v->y -= a->y;
  v->z -= a->z;
};

/*
void MatMul (MATRIX *a,MATRIX *b,  MATRIX *d) {
  d->el[0][0] = a->el[0][0] * b->el[0][0] + a->el[0][1] * b->el[1][0] + a->el[0][2] * b->el[2][0];
  d->el[0][1] = a->el[0][0] * b->el[0][1] + a->el[0][1] * b->el[1][1] + a->el[0][2] * b->el[2][1];
  d->el[0][2] = a->el[0][0] * b->el[0][2] + a->el[0][1] * b->el[1][2] + a->el[0][2] * b->el[2][2];
  d->el[1][0] = a->el[1][0] * b->el[0][0] + a->el[1][1] * b->el[1][0] + a->el[1][2] * b->el[2][0];
  d->el[1][1] = a->el[1][0] * b->el[0][1] + a->el[1][1] * b->el[1][1] + a->el[1][2] * b->el[2][1];
  d->el[1][2] = a->el[1][0] * b->el[0][2] + a->el[1][1] * b->el[1][2] + a->el[1][2] * b->el[2][2];
  d->el[2][0] = a->el[2][0] * b->el[0][0] + a->el[2][1] * b->el[1][0] + a->el[2][2] * b->el[2][0];
  d->el[2][1] = a->el[2][0] * b->el[0][1] + a->el[2][1] * b->el[1][1] + a->el[2][2] * b->el[2][1];
  d->el[2][2] = a->el[2][0] * b->el[0][2] + a->el[2][1] * b->el[1][2] + a->el[2][2] * b->el[2][2];
};

void InvertMatrix(MATRIX m, MATRIX *r) {
  float d00, d01, d02, d03;
  float d10, d11, d12, d13;
  float d20, d21, d22, d23;
  float d30, d31, d32, d33;

  float m00, m01, m02, m03;
  float m10, m11, m12, m13;
  float m20, m21, m22, m23;
  float m30, m31, m32, m33;
  float D;

  m00 = m.el[0][0];  m01 = m.el[0][1];  m02 = m.el[0][2];  m03 = 0;
  m10 = m.el[1][0];  m11 = m.el[1][1];  m12 = m.el[1][2];  m13 = 0;
  m20 = m.el[2][0];  m21 = m.el[2][1];  m22 = m.el[2][2];  m23 = 0;
  m30 = 0;           m31 = 0;           m32 = 0;           m33 = 1;

  d00 = m11*m22*m33 + m12*m23*m31 + m13*m21*m32 - m31*m22*m13 - m32*m23*m11 - m33*m21*m12;
  d01 = m10*m22*m33 + m12*m23*m30 + m13*m20*m32 - m30*m22*m13 - m32*m23*m10 - m33*m20*m12;
  d02 = m10*m21*m33 + m11*m23*m30 + m13*m20*m31 - m30*m21*m13 - m31*m23*m10 - m33*m20*m11;
  d03 = m10*m21*m32 + m11*m22*m30 + m12*m20*m31 - m30*m21*m12 - m31*m22*m10 - m32*m20*m11;

  d10 = m01*m22*m33 + m02*m23*m31 + m03*m21*m32 - m31*m22*m03 - m32*m23*m01 - m33*m21*m02;
  d11 = m00*m22*m33 + m02*m23*m30 + m03*m20*m32 - m30*m22*m03 - m32*m23*m00 - m33*m20*m02;
  d12 = m00*m21*m33 + m01*m23*m30 + m03*m20*m31 - m30*m21*m03 - m31*m23*m00 - m33*m20*m01;
  d13 = m00*m21*m32 + m01*m22*m30 + m02*m20*m31 - m30*m21*m02 - m31*m22*m00 - m32*m20*m01;

  d20 = m01*m12*m33 + m02*m13*m31 + m03*m11*m32 - m31*m12*m03 - m32*m13*m01 - m33*m11*m02;
  d21 = m00*m12*m33 + m02*m13*m30 + m03*m10*m32 - m30*m12*m03 - m32*m13*m00 - m33*m10*m02;
  d22 = m00*m11*m33 + m01*m13*m30 + m03*m10*m31 - m30*m11*m03 - m31*m13*m00 - m33*m10*m01;
  d23 = m00*m11*m32 + m01*m12*m30 + m02*m10*m31 - m30*m11*m02 - m31*m12*m00 - m32*m10*m01;

  d30 = m01*m12*m23 + m02*m13*m21 + m03*m11*m22 - m21*m12*m03 - m22*m13*m01 - m23*m11*m02;
  d31 = m00*m12*m23 + m02*m13*m20 + m03*m10*m22 - m20*m12*m03 - m22*m13*m00 - m23*m10*m02;
  d32 = m00*m11*m23 + m01*m13*m20 + m03*m10*m21 - m20*m11*m03 - m21*m13*m00 - m23*m10*m01;
  d33 = m00*m11*m22 + m01*m12*m20 + m02*m10*m21 - m20*m11*m02 - m21*m12*m00 - m22*m10*m01;

  D = m00*d00 - m01*d01 + m02*d02 - m03*d03;

  r->el[0][0] =  d00/D; r->el[0][1] = -d10/D;  r->el[0][2] =  d20/D;
  r->el[1][0] = -d01/D; r->el[1][1] =  d11/D;  r->el[1][2] = -d21/D;
  r->el[2][0] =  d02/D; r->el[2][1] = -d12/D;  r->el[2][2] =  d22/D;
};
*/

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
		Yopt1=Yopt1*SCRX; /* Yopt1*320 */
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
		Yopt1=Yopt1*SCRX; /* Yopt1*320 */
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
