// 
// shitasså.. vilket namn!
//

#ifndef _ALMOSTEVERYTHING_H_
#define _ALMOSTEVERYTHING_H_

// global includes
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <gl\gl.h>
#include <gl\glu.h>
#include <gl\glaux.h>
#include <math.h>
#include "newmath.h"

//#define TIMETOBEAT(time) ( (float)(time)*140.0f/60.0f )
//#define TIMETOBEAT(time) ( (float)(time)*170.0f/120.0f )

// gla stuff
#define STARTUP_160X120     1
#define STARTUP_320X240     2
#define STARTUP_400X300     4
#define STARTUP_512X384     8
#define STARTUP_640X480     16
#define STARTUP_800X600     32
#define STARTUP_1024X768    64
#define STARTUP_1152X864    128
#define STARTUP_1280X720    256
//#define STARTUP_1280X960    256
#define STARTUP_1280X1024    512
#define STARTUP_1600X1200    1024

#define STARTUP_WINDOWED    8192
#define STARTUP_FORCEWIRE	16384

#define STARTUP_MUSIC		32768

// gla Helpers
//void glaLookAt( float *eyelocation, float *lookat, float *upvector );

// gla I/O
void glaBlit();
void glaCls( float motionblur );
void glaStartup( int fullscreen, unsigned int _w, unsigned int _h, unsigned int _bpp );
void glaShutdown();
void glaDefaultProjection();
int glaExit();
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
	float deltaTime;
	float globalBeat;
	float localBeat;
	long customData;
	float renderAmount;
} EVENT;

typedef void (EVENT_ROUTINE)( EVENT *e );

void event_run( float time, float beat, float deltatime );
void event_register( float starttime, float endtime, EVENT_ROUTINE e, long custom );
void event_init();
void event_free();

void Error( char *string );

// boxes additions
void boxesLineBox( float x, float y, float z, float width, float height, float depth );
void boxesQuadBox( float x, float y, float z, float width, float height, float depth );

void boxesBoxMacro( float _x, float _y, float _z,
					float xrot, float yrot, float zrot,
					float width, float height, float depth,
					float fillr, float fillg, float fillb,
					float liner, float lineg, float lineb );

void boxesQuadMacro( float _x, float _y, float _z,
					float xrot, float yrot, float zrot,
					float width, float height,
					float fillr, float fillg, float fillb,
					float liner, float lineg, float lineb );


#endif