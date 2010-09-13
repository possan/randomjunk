//
// all glAss gla* routines (utilities for the gl system)
//

#define _SHOWFPS

#include "almosteverything.h"

void glaCls( float mb ) {
	
	if( mb>0 ) {
		glEnable( GL_BLEND );
		glEnable( GL_ALPHA );
		glBlendFunc( GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA );
		glPushMatrix();
		glLoadIdentity();
		glBegin( GL_QUADS );
		glColor4f( 0.0f, 0.0f, 0.0f, mb );
		glVertex3f( -1, -1.0f, 0 );
		glVertex3f(  1, -1.0f, 0 );
		glVertex3f(  1,  1.0f, 0 );
		glVertex3f( -1,  1.0f, 0 );
		glEnd();
		glPopMatrix();
		glDisable( GL_ALPHA );
		glDisable( GL_BLEND );
		glClear( GL_DEPTH_BUFFER_BIT );
	} else {
		glClearColor( 0,0,0,0 );
		glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
	};
};

float *_pd;
float *_pu;
float *_pv;
float *_pu2;
float *_pv2;
