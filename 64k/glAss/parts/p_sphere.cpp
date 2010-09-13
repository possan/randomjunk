// shit
#include "..\almosteverything.h"
#include "..\images.h"
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
/*
	static GLint s_vector[4] = { 0, 0.01f, 2, 1 };
	static GLint t_vector[4] = { 0.01f, 0, 3, 4 };

	glTexGeni(GL_S, GL_TEXTURE_GEN_MODE, GL_SPHERE_MAP);
	glTexGeni(GL_T, GL_TEXTURE_GEN_MODE, GL_SPHERE_MAP);
	//glTexGeni(GL_R, GL_TEXTURE_GEN_MODE, GL_SPHERE_MAP);

	glTexGeniv(GL_S, GL_EYE_PLANE, s_vector);
	glTexGeniv(GL_T, GL_EYE_PLANE, t_vector);

	glEnable(GL_TEXTURE_GEN_S);
	glEnable(GL_TEXTURE_GEN_T);
	//glEnable(GL_TEXTURE_GEN_R);
*/

	glBegin( GL_QUADS );
	
	for( v=0; v<100; v+=2 ) {

		for( u=0; u<100; u+=2 ) {

			VECTOR a = p_sphere_function( t, u+2, v+2 );
			VECTOR b = p_sphere_function( t, u, v+2 );
			VECTOR c = p_sphere_function( t, u, v );
			VECTOR d = p_sphere_function( t, u+2, v );

			//glColor3f( 0.3f + 0.2f*cos(t*14+(u*5+v*6)/125.0f), 0.1f, 0.3f + 0.2f*sin(t*20+(v*7+u*5)/125.0f) );

			glColor3f( 0.05f, 0.3f, 0.1f );

			glTexCoord2f( (float)(u+2)/10.0f, (float)(v+2)/10.0f );
			glVertex3f( a.x, a.y, a.z );

			glTexCoord2f( (float)(u+0)/10.0f, (float)(v+2)/10.0f );
			glVertex3f( b.x, b.y, b.z );

			glTexCoord2f( (float)(u+0)/10.0f, (float)(v+0)/10.0f );
			glVertex3f( c.x, c.y, c.z );

			glTexCoord2f( (float)(u+2)/10.0f, (float)(v+0)/10.0f );
			glVertex3f( d.x, d.y, d.z );
			
		};

	};

	glEnd();

/*
	glDisable( GL_TEXTURE_2D );
	glPointSize( 3 );
	glBegin( GL_POINTS );
	glColor3f( 0.01f, 0.03f, 0.02f );
	for( v=0; v<100; v+=0.5f ) {
		for( u=0; u<100; u+=0.5f ) {
			VECTOR a = p_sphere_function( t, u+1, v+1 );
			glVertex3f( a.x, a.y, a.z );
		};
	};
	glEnd();
*/
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
		//gluLookAt( -0.7f*(float)cos(t/5), -0.7f*(float)cos(t/2), -0.7f*(float)sin(t*1), 0, 0, 0, 0, 1, 0 );
		glLoadIdentity();

		glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
		//glFrustum( -1, 1, -0.75, 0.75, 0.1, 1 );
		gluPerspective( 85, 4/3, 1, 1000 );
		//MATRIX m;
		glTranslatef( 0,0,-70 );
		//gluLookAt( 0.7f*(float)cos(t/5), 0.7f*(float)cos(t/2), 0.7f*(float)sin(t*1), 0, 0, 0, 0, 1, 0 );
		glRotatef( 60, (float)cos(t*3),(float)sin(t*2),(float)cos(t/4) );

		glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	
		p_sphere_render( t );

};