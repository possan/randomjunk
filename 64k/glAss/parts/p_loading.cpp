// loading...
#include "..\almosteverything.h"
#include "..\images.h"

void plobox( float x, float y, int f ) {
	float r = 0.035f;
	
	/*
	glBegin( GL_LINE_LOOP );
	glColor3f( 0.3, 0.6, 0.9 );
	glVertex3f( x-r, y-r, 0 );
	glVertex3f( x+r, y-r, 0 );
	glVertex3f( x+r, y+r, 0 );
	glVertex3f( x-r, y+r, 0 );
	glEnd();
	*/

	glBegin( GL_QUADS );
	glColor3f( 0.1f, 0.2f, 0.3f );
	if( f>0 ) glColor3f( 0.4f, 0.6f, 0.8f );
	if( f==0 ) glColor3f( 0.5f, 0.9f, 1 );
	glVertex3f( x-r, y-r, 0 );
	glVertex3f( x+r, y-r, 0 );
	glVertex3f( x+r, y+r, 0 );
	glVertex3f( x-r, y+r, 0 );
	glEnd();

};

void p_loading_draw( int step, int max ) {
	glClearColor( 0.1f, 0.2f, 0.3f, 1 );
	glaCls(0.0f);

	glBlendFunc( GL_ONE, GL_ONE );
	glEnable( GL_BLEND );

	glaSetTexture( GIF_FONT );
	glTexEnvi( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );
	glBegin( GL_QUADS );


	glColor3f( 0.66f, 0.66f, 0.66f );
	glaDrawString( 0, 0.05f, 0, 0.05f, 0.05f, 0.05f, "hey guys'n'gals, this is not" );
	glaDrawString( 0, -0.05f, 0, 0.05f, 0.05f, 0.05f, "a accelerated demo, this is" );
	glaDrawString( 0, -0.15f, 0, 0.05f, 0.05f, 0.05f, "a accelerated 64k intro!" );

	glColor3f( 1, 1, 1 );
	glaDrawString( 0, 0.5f, 0, 0.05f, 0.05f, 0.075f, "gl ass / psikorp" );

	glColor3f( 0.8f, 0.8f, 0.8f );
	glaDrawString( 0, 0.35f, 0, 0.05f, 0.05f, 0.1f, "(c)opywr0ng 1999" );

	glEnd();

	glDisable( GL_TEXTURE_2D );
	for( int i=0; i<=max; i++ ) {
		float x = -0.8f + (float)i * 1.6f / (float)max;
		plobox( x, -0.72f, step-i );
	};

	glaBlit();
	//Sleep( 150 );
};