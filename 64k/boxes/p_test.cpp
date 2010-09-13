// test part
#include "almosteverything.h"
//#include "images.h"

void p_test_run( EVENT *e ) {

	float t = e->localTime;

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
	gluPerspective( 100, 4/3, 0.1f, 1000 );
	gluLookAt( 0, 0, 6+2*sin(t/2), 1*cos(t/1), 1*cos(t/3), 0, 0, 1, 0 );
	glLineWidth( 1 );
	glDepthFunc( GL_LEQUAL );

	//	glTranslatef( 0, 0, -1 );

	float d = 1 * sin( t/3 );

	glBlendFunc( GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA );
	glEnable( GL_BLEND );
	glEnable( GL_CULL_FACE );

	glHint( GL_LINE_SMOOTH_HINT, GL_NICEST );
	glEnable( GL_LINE_SMOOTH_HINT );
	glEnable( GL_LINE_SMOOTH );

	glaSetTexture( 2 );
	glLineWidth( 5 );

	for( float j=-5; j<=5; j++ ) {
		for( float i=-5; i<=5; i++ ) {

			float r = 0.5f + 0.4f * sin( (t+i)*d );
			float g = 0.5f + 0.4f * cos( (t+j*i/10)*d );
			float b = 0.5f;//0.4f * sin( (t+i)*d ) * cos( (t-j)*d );

			//boxesBoxMacro( i,j,r-g, r*100,g*100,b*100, 0.01f,0.3f,0.3f, r,g,b,0.5f,0.5f,0.5f );
			boxesQuadMacro( i*3,j*3,0, t*100+r*10,t*30+g*10,0, 1.0f,1.0f, 1,1,1, 0,0,0 );

		};
	};

	/*
	glDisable( GL_TEXTURE_2D );
	glBlendFunc( GL_ONE, GL_ONE );
	glEnable( GL_BLEND );
	glBegin( GL_QUADS );

	float b = 1/(1+e->localTime*10);//>renderAmount;
	glColor3f( b, b, b );

	glaQuadR( 0,0,0, 0, 1,1, 0,0,0,0 );

	glEnd();
*/
	 
};

