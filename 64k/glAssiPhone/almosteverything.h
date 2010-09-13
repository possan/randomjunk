//
// shitassÂ.. vilket namn!
//

#ifndef _ALMOSTEVERYTHING_H_
#define _ALMOSTEVERYTHING_H_

#ifdef __cplusplus
extern "C" {
#endif
    
	

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <math.h>

// #include <QuartzCore/QuartzCore.h>
#include <OpenGLES/ES1/gl.h>

#include "newmath.h"
	
void glaCls( float motionblur );
void glaDefaultProjection();
void glaRotate2d( float *x2, float *y2, float x, float y, float r );

// gla Timer
void glaReset();
float glaTime(); // time in seconds. (from last reset)
float glaBeat(); // beat... in song
float glaRelBeat(); // beat... from last reset

// gla texture stuff
void glaUploadTexture( int n, long *source, int w, int h );
//void glaFreeTexture( int n );
void glaUploadGif( int n, unsigned char *packedgif, long transparentcolor );
void glaLoadImage( int n, char *filename );
void glaSetTexture( int n );
//void glaQuad( float xc, float yc, float zc, float xr, float yr, float u1, float v1, float u2, float v2 );
void glaQuadR( float xc, float yc, float zc, float angle, float xr, float yr, float u1, float v1, float u2, float v2 );

// gla font shit
void glaDrawChar( float x, float y, float z, float width, float height, char ch );
void glaDrawString( float xc, float yc, float zc, float w, float h, float spacing, char *texten );
//void glaDrawStringL( float xc, float yc, float zc, float w, float h, float spacing, char *texten );

// square shit (-1,-1,0)-(1,1,0)
void glaSquare();

// other shit...
long misc_strlen( char *str );

extern float *_pd;
extern float *_pu;
extern float *_pv;
extern float *_pu2;
extern float *_pv2;

// event code
typedef struct {
	float globalTime;
	float localTime;
	float globalBeat;
	float localBeat;
	long customData;
	float renderAmount;
} EVENT;

typedef void (EVENT_ROUTINE)( EVENT *e );

void event_run( float time, float beat );
void event_register( float starttime, float endtime, EVENT_ROUTINE e, long custom );
void event_init();
void event_free();


void intro_init();
void intro_frame(float t);
void intro_free();
	
	
void glInitImmediateBuffers();
void glFreeImmediateBuffers();
	
#define GL_QUADS 99999
	
void glClearDepth( float farz );
void glBegin( int beginmode );
void glEnd();

void glColor3f( float r, float g, float b);
void glColor4f( float r, float g, float b, float a);
void glVertex3f( float r, float g, float b);
void glTexCoord2f( float u, float v);

void gluPerspective( float fov, float asp, float nearz, float farz );
void gluLookAt( float cx, float cy, float cz, float tx, float ty, float tz, float ux, float uy, float uz );
void glOrtho( float left, float right, float top, float bottom, float nearz, float farz );
void glFrustum( float left, float right, float top, float bottom, float nearz, float farz );

#ifdef __cplusplus
}
#endif

#endif
