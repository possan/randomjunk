// 3d twister
// flareblob
#include "almosteverything.h"
#include "images.h"

#define NSIDES 5

#define CUBES_LIST 20

#define ASTEP 3.142f/2.0f
#define ASTEP2 3.142f/4.0f

void p_twist3d_render_section( float y0, float b0, float b1, float a0, float a1, float v0, float v1, float r0, float r1 ) {

 float x[4][2];
	float z[4][2];
	float nx[4][2];
	float nz[4][2];
	float y1 = y0 + 1.0f;

	for( int i=0; i<4; i++ ) {

		float aa0 = a0 + i*ASTEP;
		float aa1 = a1 + i*ASTEP;
		x[i][0] = r0*4.0f*(float)cos( aa0 );
		z[i][0] = r0*4.0f*(float)sin( aa0 );
		x[i][1] = r1*4.0f*(float)cos( aa1 );
		z[i][1] = r1*4.0f*(float)sin( aa1 );
		nx[i][0] = (float)cos( aa0-ASTEP2 );
		nz[i][0] = (float)sin( aa0-ASTEP2 );
		nx[i][1] = (float)cos( aa1-ASTEP2 );
		nz[i][1] = (float)sin( aa1-ASTEP2 );
	};
 

	glBegin( GL_QUADS );

	glColor3f( b0, b0/2, b0/4 );

	// A
	//glNormal3f( nx[0][0],0,nz[0][0] );
	glTexCoord2f( 0, v0 );
	glVertex3f( x[0][0], y0, z[0][0] );

	glTexCoord2f( 1, v0 );
	glVertex3f( x[1][0], y0, z[1][0] );

	//glNormal3f( nx[0][1],0,nz[0][1] );
	glTexCoord2f( 1, v1 );
	glVertex3f( x[1][1], y1, z[1][1] );

	glTexCoord2f( 0, v1 );
	glVertex3f( x[0][1], y1, z[0][1] );

	// B

	glColor3f( b0/4, b0/2, b0 );

//	glNormal3f( nx[1][0],0,nz[1][0] );
	glTexCoord2f( 0, v0 );
	glVertex3f( x[1][0], y0, z[1][0] );

	glTexCoord2f( 1, v0 );
	glVertex3f( x[2][0], y0, z[2][0] );

//	glNormal3f( nx[1][1],0,nz[1][1] );
	glTexCoord2f( 1, v1 );
	glVertex3f( x[2][1], y1, z[2][1] );

	glTexCoord2f( 0, v1 );
	glVertex3f( x[1][1], y1, z[1][1] );

	// C

	glColor3f( b0, b0/2, b0/4 );

	glNormal3f( nx[2][0],0,nz[2][0] );
	glTexCoord2f( 0, v0 );
	glVertex3f( x[2][0], y0, z[2][0] );

	glTexCoord2f( 1, v0 );
	glVertex3f( x[3][0], y0, z[3][0] );

	glNormal3f( nx[2][1],0,nz[2][1] );

	glTexCoord2f( 1, v1 );
	glVertex3f( x[3][1], y1, z[3][1] );
	glTexCoord2f( 0, v1 );
	glVertex3f( x[2][1], y1, z[2][1] );

	// D

	glColor3f( b0/4, b0/2, b0 );

//	glNormal3f( nx[3][0],0,nz[3][0] );
	glTexCoord2f( 0, v0 );
	glVertex3f( x[3][0], y0, z[3][0] );

	glTexCoord2f( 1, v0 );
	glVertex3f( x[0][0], y0, z[0][0] );
//	glNormal3f( nx[3][1],0,nz[3][1] );
	glTexCoord2f( 1, v1 );
	glVertex3f( x[0][1], y1, z[0][1] );
	glTexCoord2f( 0, v1 );
	glVertex3f( x[3][1], y1, z[3][1] );

	glEnd();
};

float xptffff( float time ) {
	if( time < 1.5f ) {
		return -2.5f + 2.0f*(float)sin( time * M_PI / 3.0f );
		//return 0.65f;
	};

	if( time > 8.0f ) {
		return -2.5f + 2.0f*(float)sin((10.0f-time) * M_PI / 4.0f );
		//return 0.65f;
	};

	//if( time > 8 ) {
	//return 0.35f;
	//};
	return -0.5f;
};

float pt3d_funktionen_f( float t, float offset ) {
	float f;
	f = t/1;
	f -= offset/4;
	f += (float)sin( t-offset+42 );
	//f -= 3*(float)cos( t/2+offset+4 );
	f -= 2*(float)sin( (t+32)/3-offset );

	//if( offset>0.5 ) f = -f;
	//f += cos( t+offset*2 );
	//f -= sin( t-offset*2 );
	f *= 3;
	return f;
};

void p_twist3d_render( float t, float bb ) {

	float angle[100];
	float rad[100];
	int i;

	for( i=0; i<100; i++ ) {
		float a = pt3d_funktionen_f( t, (float)i/35.0f );
		float r = 1.0f + 0.5f*(float)cos( (float)(a+i+t)/15.0f );
		angle[i] = a;
		rad[i] = r;
	};

	for( i=-40; i<40; i++ ) {

		float b0 = 1.0f / (1+(float)fabs((float)i));
		float b1 = 1.0f / (1+(float)fabs((float)i+1));

		b0 *= bb;
		b1 *= bb;

		float a0 = angle[i+50];
		float a1 = angle[i+51];
		float r0 = rad[i+50];
		float r1 = rad[i+51];

		float v0 = (float)(i+40)/8.0f;
		float v1 = (float)(i+41)/8.0f;

		p_twist3d_render_section( (float)i, b0, b1, a0, a1, v0, v1, r0, r1 );

	};
};

void p_twist3d_run( EVENT *e ) {

	float t;
	//int i;

	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
	glTranslatef( 0, 0, -1.0f );

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	//glTranslatef( 0, 0, -1 );
	//glEnable( GL_DEPTH_TEST );
	//glDepthFunc( GL_LESS );
	//glCullFace( GL_FRONT );
 
	glClearDepth( 1 );
	glDisable( GL_DEPTH_TEST );
	glDisable( GL_ALPHA_TEST );

//	glHint( GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST );


	t = e->localTime;

		 
		//t = t + (0.31f*(float)cos(t*3.142/0.5f));

//		b = glaBeat();

	glDisable( GL_DEPTH_TEST );

	glMatrixMode( GL_PROJECTION );
		glTexEnvi( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );
		glLoadIdentity();


	gluPerspective( 75, 4/3, 1, 100 );

	glMatrixMode( GL_MODELVIEW );
	
		glLoadIdentity();

	switch( (int)((t/4)-0.5f) ) {
			case 1:
			case 5:
				gluLookAt( 19*cos(t/5), 0*cos(t/3), 17*sin(t/6), 1*cos(t/3), 1*cos(t/4), 1*sin(t/7), 0, 1, 0 );
				glRotatef( 105, (float)sin(t/8), (float)sin(t/5), (float)cos(t/3) );
				break;
//				// flyg...
//				gluLookAt( 10-t*10, 70-t*4, 1, 0, 60-t*4, 0, 0, 1, 0 );
//				break;
			case 2:
			case 6:
				// flyg...
				gluLookAt( 1*cos(t*3), 70-t*4, 1, 0, 60-t*4, 0, 0, 1, 0 );
				break;
			case 4:
				gluLookAt( 17*cos(t/3), 0*cos(t/5), 18*sin(t/4), 1*cos(t/4), 1*cos(t/3), 1*sin(t/5), 0, 1, 0 );
				break;
			default:
				gluLookAt( 18*sin(t/4), 0*cos(t/6), 19*sin(t/3), 1*cos(t/5), 1*cos(t/7), 1*sin(t/4), 0, 1, 0 );
				glRotatef( -45, (float)sin(t/8), (float)sin(t/5), (float)cos(t/3) );
				break;
		};

		//gluLookAt( 2,2,2, 0,0,0, 0,1,0 );
		 


//		glMatrixMode( GL_MODELVIEW );
		glEnable( GL_BLEND );
		glBlendFunc( GL_ONE, GL_ONE );
		glaSetTexture( GIF_TWISTER2 );

		p_twist3d_render( t, 1.0f );

//		glRotatef( 321, cos(t),sin(t),0 );
		glScalef( 4, 4, 4 );

		p_twist3d_render( t+132, 0.25f );

//	glDisable( GL_DEPTH_TEST );
  
	glDisable( GL_FOG );
	glDisable( GL_LIGHT0 );
	glDisable( GL_LIGHTING );

};
