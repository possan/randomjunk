// psykedelic...
#include "almosteverything.h"
#include "images.h"
#include <stdlib.h>

#define M_PI 3.14159265358979323846f
#define M_PI2 3.14159265358979323846f*2

#define CYL_RADIUS 15.0f
#define CYL_SEGMENTS 9
#define CYL_LENGTH 25.0f

// #define PSYK_LIST 71
//#define PSYK_TEXTURE 72
//#define PSYK_SYMBOLER 73

//GLubyte shitTexture[128*128*4];

float tuo, tvo;

void pp_glMappa( float x, float y ) {

	float x2, y2;

	//x2 = tuo + ((x*x)/10);
	//y2 = tvo + ((y*y)/10);

	float r = 1 / (1+(float)sqrt( x*x + y*y )*3);

	x2 = x*r;
	y2 = y*r;

	//x2 = x*((-x*-x)/3);
	//y2 = y*((-y*-y)/3);

	x2 += tuo;
	y2 += tvo;

	glTexCoord2f( x2,y2 );

};

void pp_generateScene( float frame ) {

	int i;
	float x, y, x2, y2;

	tuo = 0.5f + 0.45f * (float)cos( frame * 0.813f );
	tvo = 0.5f + 0.45f * (float)sin( frame * 1.324f );

//	glNewList( PSYK_LIST, GL_COMPILE );
	
	glBegin( GL_TRIANGLES );
	
	
		for( i=0; i<CYL_SEGMENTS; i++ ) {
			x = (float)cos( (float)i*M_PI2/CYL_SEGMENTS );
			y = (float)sin( (float)i*M_PI2/CYL_SEGMENTS );

			x2 = (float)cos( ((float)i+1.0)*M_PI2/CYL_SEGMENTS );
			y2 = (float)sin( ((float)i+1.0)*M_PI2/CYL_SEGMENTS );

			pp_glMappa( x2, y2 );
			glVertex3f( x2*CYL_RADIUS, y2*CYL_RADIUS, -CYL_LENGTH );

			pp_glMappa( x, y );
			glVertex3f( x*CYL_RADIUS, y*CYL_RADIUS, -CYL_LENGTH );

			pp_glMappa( 0, 0 );
			glVertex3f( 0, 0, -CYL_LENGTH*1.4f );

			pp_glMappa( x, y );
			glVertex3f( x*CYL_RADIUS, y*CYL_RADIUS, CYL_LENGTH );

			pp_glMappa( x2, y2 );
			glVertex3f( x2*CYL_RADIUS, y2*CYL_RADIUS, CYL_LENGTH );

			pp_glMappa( 0, 0 );
			glVertex3f( 0, 0, CYL_LENGTH*1.4f );



		};
	
	glEnd( );
	
	glBegin( GL_QUADS );
	
		for( i=0; i<CYL_SEGMENTS; i++ ) {

			x = (float)cos( (float)i*M_PI2/CYL_SEGMENTS );
			y = (float)sin( (float)i*M_PI2/CYL_SEGMENTS );

			x2 = (float)cos( ((float)i+1.0)*M_PI2/CYL_SEGMENTS );
			y2 = (float)sin( ((float)i+1.0)*M_PI2/CYL_SEGMENTS );

			pp_glMappa( x, y );

			glVertex3f( x*CYL_RADIUS, y*CYL_RADIUS, -CYL_LENGTH );

			pp_glMappa( x2, y2 );

			glVertex3f( x2*CYL_RADIUS, y2*CYL_RADIUS, -CYL_LENGTH );

			glVertex3f( x2*CYL_RADIUS, y2*CYL_RADIUS, CYL_LENGTH );

			pp_glMappa( x, y );

			glVertex3f( x*CYL_RADIUS, y*CYL_RADIUS, CYL_LENGTH );

	};
	
	glEnd();

//	glEndList();
};

void p_psyk_run( EVENT *e ) {
	float t;
//	glCullFace( GL_FRONT );

	glDisable( GL_DEPTH_TEST );

		t = e->localTime;

		glEnable( GL_BLEND );

//	glEnable( GL_CULL_FACE );

	glBlendFunc( GL_ONE, GL_ONE );

	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
	gluPerspective( 105, 4/4, 0, 1000 );

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	gluLookAt( CYL_RADIUS*0.5f*(float)cos(t/5), CYL_RADIUS*0.5f*(float)cos(t/2), CYL_RADIUS*0.5f*(float)sin(t*1), 0, 0, 0, 0, 1, 0 );

		float a;

glPushMatrix();

	glaSetTexture( GIF_CLOUDS );
	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

			a = 0.3f + 0.3f*(float)cos(t*1.0f);

			glColor3f( a + a*(float)cos( t*3.0f ),
						a + a*(float)cos( t*2.6f ),
						a + a*(float)sin( t*3.4f ) );

			glRotatef( t*21, 1, 0, 0 );
			glRotatef( t*13, 0, 1, 0 );
			glRotatef( t*7, 0, 0, 1 );

//	glCallList( PSYK_LIST );
	pp_generateScene( t );

			a = 0.3f + 0.3f*(float)sin(t*1.9f);

			glColor3f( a + a*(float)sin( t*4.0f ),
						a + a*(float)cos( t*3.6f ),
						a + a*(float)cos( t*2.2f ) );

			glRotatef( 90, 1,0 ,0 );
			glRotatef( t*90, 1,0 ,0 );

//	glCallList( PSYK_LIST );
	pp_generateScene( t );

			a = 0.3f + 0.3f*(float)sin(t*2.2f);

			glColor3f( a + a*(float)sin( t*3.0f ),
						a + a*(float)cos( t*2.6f ),
						a + a*(float)cos( t*4.4f ) );

			glRotatef( 90,0,1,0 );
			glRotatef( t*72, 0,0,1 );
	
	pp_generateScene( t );
//			glCallList( PSYK_LIST );

			glPopMatrix();

// 	glLoadIdentity();

	glDisable( GL_CULL_FACE );

};
