#ifndef _COMMON_H_
#define _COMMON_H_

//#include "\prj64k\nanolibc\include\math.h"
//#include "\prj64k\nanolibc\include\memory.h"
#include <math.h>
#include <memory.h>
#include <stdlib.h>

#define M_PI 3.14159265358979323846

typedef struct {
  long u, v;
  long s, w;
} CORNER;

extern CORNER gfx_sq[65*12];
extern unsigned char *gfx_fontpic;
extern unsigned char *gfx_temp;
extern unsigned char *gfx_virtual;
extern unsigned char *gfx_blur_temp;

// 2d shit...
int gfx_kbhit(); // should we exit?
int gfx_init( int forcewindow );
void gfx_blit();
void gfx_kill();
void gfx_cls(unsigned char value);
void gfx_drawsprite( int x, int y, int width, int height, int brightness, unsigned char *data );
void gfx_drawsq( unsigned char *source );
void gfx_drawchar( int x, int y, int width, int height, char ch, unsigned char brightness );
void gfx_drawcenteredstring( int xc, int yc, int w, int h, int spacing, int brightness, char *texten );
void gfx_genstatic();
void gfx_drawline( int x1, int y1, int x2, int y2, int shade );
void gfx_drawline_add( int x1, int y1, int x2, int y2, int shade );

// 3d stuff

typedef struct s_VECTOR VECTOR;
struct s_VECTOR {
  float x, y, z;
};

typedef struct s_MATRIX MATRIX;
struct s_MATRIX {
  float el[3][3];
};

void matrix_from_vectors (VECTOR direction, VECTOR upvect, MATRIX *m);
//void vector_mul (MATRIX *m, VECTOR *v, VECTOR *dv);
void vector_mul (VECTOR *v, MATRIX *m);
void vector_add (VECTOR *v, VECTOR *a);
void vector_sub (VECTOR *v, VECTOR *a);
void vector_normalize( VECTOR *v );
VECTOR vector_crossproduct( VECTOR a, VECTOR b );
float vector_dotproduct( VECTOR a, VECTOR b );

typedef struct {
	VECTOR a, b;
} PLINE;

typedef struct {
	int nLines;
	PLINE *Line;
} POBJECT;

void pl_morph( POBJECT *obj1, POBJECT *obj2, POBJECT *output, float percent );
int pl_proj( float xc, float yc, VECTOR *v );
void pl_draw( POBJECT *obj, MATRIX *mat, VECTOR *loc, float xc, float yc );

// misc...
void misc_rotate2d( float x, float y, float *dx, float *dy, float angle );
long misc_rand();
long misc_strlen( char *str );
float misc_gettimer();
void misc_resettimer();

// gif laddare
unsigned char *common_loadgif( unsigned char *__source );

// mofoblurr
extern long *gfx_mb_xbuf1;
extern long *gfx_mb_ybuf1;
extern unsigned char *gfx_mb_xbuf2;
extern unsigned char *gfx_mb_ybuf2;
void common_mblur();

#endif

