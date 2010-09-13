// name
#include "..\almosteverything.h"
#include "..\images.h"
#include <stdlib.h>

char *p_name_name[] = {
	"illuminator",
	"h-ecs",
	"bajs1",
	"bajs2"
};

void p_name_run( EVENT *e ) {
	
	glEnable( GL_BLEND );
//	glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST );
	glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST );

	glMatrixMode( GL_PROJECTION );
	//glScalef( 0.2, 0.3, 0.4 );
	glLoadIdentity();
	glOrtho( -1, 1, -0.75f, 0.75f, -100, 100 );

	float t = e->localTime;

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	glaSetTexture( GIF_NAMES );

	float v = 0;
	v = (float)e->customData/2.0f;

//	glBlendFunc( GL_ZERO, GL_ONE_MINUS_SRC_COLOR );
	glBlendFunc( GL_ONE, GL_ONE );
	glBegin( GL_QUADS );

	for( float i=0; i<0.5f; i+=0.1f ) {

		float t2 = t - (i/5.0f);
		float xs = 1.0f + 0.2f*cos( t2*4 );
		float ys = 1.0f + 0.2f*sin( t2*3 );
		float r = 10*cos( t2*5 );

		float b = 1/(1+i*100);
		float s = 1+i;

		glColor3f( b,b,b );
		glaQuadR( 0,0,0, r, 1.0f*xs*s,0.30f*ys*s, 0,v+0.49f,1,v+0.01f );

	};
	glEnd();
/*
	glBlendFunc( GL_ONE_MINUS_SRC_COLOR, GL_ONE );
	glBegin( GL_QUADS );

	glColor3f( 1,1,1 );
	glaQuadR( 0,0,0, 0, 0.8f, 0.25f, 0,v+0.49f,1,v+0.01f );
	glaQuadR( 0,0,0, 0, 0.8f, 0.25f, 0,v+0.49f,1,v+0.01f );
	glaQuadR( 0,0,0, 0, 0.8f, 0.25f, 0,v+0.49f,1,v+0.01f );

	glEnd();
*/	
};

void p_title_run( EVENT *e ) {
	
	glDisable( GL_BLEND );
	glBlendFunc( GL_ONE, GL_ONE );

	glMatrixMode( GL_PROJECTION );
	//glScalef( 0.2, 0.3, 0.4 );
	glLoadIdentity();
	glOrtho( -1, 1, -0.75f, 0.75f, -100, 100 );

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	glaSetTexture( GIF_TITLE );

	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_BLEND );
	glBlendFunc( GL_ZERO, GL_ONE_MINUS_SRC_COLOR );
	glEnable( GL_BLEND );
	float cd = (e->localTime);
	//if( cd<1 ) cd=1;
	float s = 0.7f + (3/(cd*cd));
	if( s<0.7f ) s=0.7f;
	glBegin( GL_QUADS );
	float f = (e->localTime-1.5f)/3;
	if( f>1 ) f = 1;
	glColor3f( f, f, f );
	glTexCoord2f( 0, 1 );
	glVertex3f( -1.024f*s, -0.256f*s, 0 );
	glTexCoord2f( 1, 1 );
	glVertex3f(  1.024f*s, -0.256f*s, 0 );
	glTexCoord2f( 1, 0 );
	glVertex3f(  1.024f*s,  0.256f*s, 0 );
	glTexCoord2f( 0, 0 );
	glVertex3f( -1.024f*s,  0.256f*s, 0 );
	glEnd();
};
