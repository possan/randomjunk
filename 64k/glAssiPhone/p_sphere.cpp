// shit
#include "almosteverything.h"
#include "images.h"
#include <stdlib.h>

float p_sf( float u, float v ) {
	return 1.0f;
};
/*
typedef struct {
	float x, y, z;
} VECTOR;
*/
VECTOR p_sphere_function( float t, float u, float v ) {

	VECTOR ve;

	float a = 0.3f*(float)cos(t*2);
	float b = 0.3f*(float)sin(t*3);
	float r2 = 1.0f + a * (float)cos( ((u*3)-(t*40))*3.142f/50.0f );
	r2 += b * (float)cos( ((v*2)-(t*60))*3.142f/50.0f );

	float r = r2*30*(float)sin( v*3.142/100 );
	float x = r*(float)cos( u*3.142/50 );
	float z = r*(float)sin( u*3.142/50 );
	float y = r2*30*(float)cos( v*3.142/100 );//(v-50);//40*sin( v*3.142/50 );

	ve.x = x;
	ve.y = y;
	ve.z = z;

	return ve;
};

void p_sphere_render( float t ) {

	float u, v;

	glaSetTexture( GIF_CLOUDS ); 

	#define STEP 4
	
	glBegin( GL_QUADS );
	glColor3f( 0.05f, 0.3f, 0.1f );


	for( v=0; v<100; v+=STEP ) {

		for( u=0; u<100; u+=STEP ) {

			VECTOR a = p_sphere_function( t, u+STEP, v+STEP );
			VECTOR b = p_sphere_function( t, u, v+STEP );
			VECTOR c = p_sphere_function( t, u, v );
			VECTOR d = p_sphere_function( t, u+STEP, v );

			//glColor3f( 0.3f + 0.2f*cos(t*14+(u*5+v*6)/125.0f), 0.1f, 0.3f + 0.2f*sin(t*20+(v*7+u*5)/125.0f) );

			glTexCoord2f( (float)(u+STEP)/10.0f, (float)(v+STEP)/10.0f );
			glVertex3f( a.x, a.y, a.z );

			glTexCoord2f( (float)(u+0)/10.0f, (float)(v+STEP)/10.0f );
			glVertex3f( b.x, b.y, b.z );

			glTexCoord2f( (float)(u+0)/10.0f, (float)(v+0)/10.0f );
			glVertex3f( c.x, c.y, c.z );

			glTexCoord2f( (float)(u+STEP)/10.0f, (float)(v+0)/10.0f );
			glVertex3f( d.x, d.y, d.z );

		};

	};

	glEnd();

};

void p_sphere_run( EVENT *e ) {

	float t;

	glCullFace( GL_BACK );

	glDisable( GL_DEPTH_TEST );
	//glEnable( GL_DEPTH_TEST );
	//glDepthFunc( GL_LESS );

		t = e->localTime;


	glDisable( GL_CULL_FACE );

		glEnable( GL_BLEND );
	glBlendFunc( GL_ONE, GL_ONE );

		glMatrixMode( GL_TEXTURE );
		// gluLookAt( -0.7f*(float)cos(t/5), -0.7f*(float)cos(t/2), -0.7f*(float)sin(t*1), 0, 0, 0, 0, 1, 0 );
		glLoadIdentity();

		glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
		//glFrustum( -1, 1, -0.75, 0.75, 0.1, 1 );
	
	gluPerspective( 85, 4/3, 1, 1000 );
	
	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	
		//MATRIX m;
		glTranslatef( 0,0,-70 );
		//gluLookAt( 0.7f*(float)cos(t/5), 0.7f*(float)cos(t/2), 0.7f*(float)sin(t*1), 0, 0, 0, 0, 1, 0 );
		glRotatef( 60, (float)cos(t*3),(float)sin(t*2),(float)cos(t/4) );

		p_sphere_render( t );

};
