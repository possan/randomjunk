// shit
#include "almosteverything.h"
#include "images.h"
#include <stdlib.h>

VECTOR p_tunnel_function( float t, float u ) {

	VECTOR ve;

	float a = 0.2f*(float)cos(t*4);
	float b = 0.2f*(float)sin(t*5);
	float r2 = 1.0f + a * (float)cos( ((u*3)-(t*40))*3.142f/50.0f );
	r2 += b * (float)cos( ((u*2)-(t*60))*3.142f/50.0f );

	float r = r2*40;//*sin( u*3.142/100 );
	float x = r*(float)cos( u*M_PI/50 );
	float y = r*(float)sin( u*M_PI/50 );
	//float y = r2*40*cos( u*3.142/100 );//(v-50);//40*sin( v*3.142/50 );

	ve.x = x;
	ve.y = y;
	//ve.z = z;

	return ve;
};

void p_tunnel_render( float t, float br ) {

	float u, v;

	glaSetTexture( GIF_CLOUDS );

	glBegin( GL_QUADS );

	v = (float)t/5.0f;

	for( u=0; u<100; u+=2 ) {

		float u1 = (float)u / 100.0f;
		float u2 = (float)(u+2) / 100.0f;

		VECTOR a = p_tunnel_function( t, u );
		VECTOR b = p_tunnel_function( t, u+2 );

		glColor3f( 0, 0, 0 );

		glTexCoord2f( u2,v-0.2f );
		glVertex3f( b.x, b.y, -700 );

		glTexCoord2f( u1,v-0.2f );
		glVertex3f( a.x, a.y, -700 );

		glColor3f( 1.0f*br, 0.6f*br, 0.3f*br );

		glTexCoord2f( u1,v-0.1f );
		glVertex3f( a.x, a.y, -200 );

		glTexCoord2f( u2,v-0.1f );
		glVertex3f( b.x, b.y, -200 );

		//glColor3f( 1.0f, 0.6f, 0.3f );

		glTexCoord2f( u1,v-0.1f );
		glVertex3f( a.x, a.y, -200 );

		glTexCoord2f( u2,v-0.1f );
		glVertex3f( b.x, b.y, -200 );

		glColor3f( 0.2f*br, 0.4f*br, 0.6f*br );
//		glColor3f( 0.2f, 0.05f, 0.12f );

		glTexCoord2f( u2,v );
		glVertex3f( b.x, b.y, 0 );

		glTexCoord2f( u1,v );
		glVertex3f( a.x, a.y, 0 );

		glTexCoord2f( u1,v );
		glVertex3f( a.x, a.y, 0 );

		glTexCoord2f( u2,v );
		glVertex3f( b.x, b.y, 0 );

		glColor3f( 1.0f*br, 0.6f*br, 0.3f*br );

		glTexCoord2f( u2,v+0.1f );
		glVertex3f( b.x, b.y, 200 );

		glTexCoord2f( u1,v+0.1f );
		glVertex3f( a.x, a.y, 200 );

//		glColor3f( 1.0f, 0.6f, 0.3f );

		glTexCoord2f( u1,v+0.1f );
		glVertex3f( a.x, a.y, 200 );

		glTexCoord2f( u2,v+0.1f );
		glVertex3f( b.x, b.y, 200 );

		glColor3f( 0, 0, 0 );

		glTexCoord2f( u2,v+0.2f );
		glVertex3f( b.x, b.y, 700 );

		glTexCoord2f( u1,v+0.2f );
		glVertex3f( a.x, a.y, 700 );

	};  
 glEnd(); 

};

void p_tunnel_run( EVENT *e ) {
	float t;

	glDisable( GL_DEPTH_TEST );
	glDisable( GL_CULL_FACE );

	t = e->localTime;

	glEnable( GL_BLEND );
	glBlendFunc( GL_ONE, GL_ONE );

	glMatrixMode( GL_TEXTURE );
//	gluLookAt( -0.7f*(float)cos(t/5), -0.7f*(float)cos(t/2), -0.7f*(float)sin(t*1), 0, 0, 0, 0, 1, 0 );
	glLoadIdentity();

	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
	gluPerspective( 125, 4/3, 1, 1000 );
	//glTranslatef( 0,0,-70 );

	float z0, z1, r0;

	z0 = -10 + t;
	z1 = 10 - t;
	r0 = t*2;
	if( r0>10 ) r0=10.0f;
	//r1 = 0;

//		glRotatef( 60, cos(t*3),sin(t*2),cos(t/4) );

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	gluLookAt( r0*(float)cos(t/5), r0*(float)cos(t/2), z0+r0*(float)sin(t*1), 0, 0, z1, 0, 1, 0 );

	glTexEnvi( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

	float b = t / ((float)e->customData / 256.0f);
	if( b>1.0f ) b=1.0f;
	p_tunnel_render( t, b );

};
