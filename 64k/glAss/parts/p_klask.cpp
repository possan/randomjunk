// klask

// fullscreen part
#include "..\almosteverything.h"
#include "..\images.h"
#include <stdlib.h>

/*#define FULLSCREEN_PIC1 61
#define FULLSCREEN_PIC2 62
#define FULLSCREEN_PIC3 63*/

//#define KLASK_PIC 81
#define KLASK_CYLINDER 82

#define NSIDES 7
#define NROWS 30
#define NOBJECTS 25

float klr[NOBJECTS][3];

void p_klask_init() {
//	glaUploadGif( KLASK_PIC, (unsigned char *)&gif_rost, 123 );

	glNewList( KLASK_CYLINDER, GL_COMPILE );

	srand( 12345 );
	for( int k=0; k<NOBJECTS; k++ ) {
		klr[k][0] = (float)(rand()%360);
		klr[k][1] = (float)(rand()%360);
		klr[k][2] = (float)(rand()%360);
	};

	float lxc, xc, lyc, yc, lzc, zc, lvc, vc, zd, vd, lra, ra;

	zd = 5.0f / (float)NROWS;
	vd = 1.0f / (float)NROWS;

	xc = 0;
	yc = 0;
	zc = zd;
	vc = vd;

	lra = 0.3f;
	lxc = 0;
	lyc = 0;
	lzc = 0;
	lvc = 0;

	for( int r=0; r<NROWS; r++ ) {

		float b = 0.5f - (((float)r / (float)NROWS)/2.0f);
		
		ra = 0.3f / ((float)r / 2.0f + 1.0f);
			//glColor3f( 0.8*b, 0.9*b, 1.0*b );

		for( int c=0; c<NSIDES; c++ ) {
		
			float x1 = (float)cos( (float)(c+0)*M_PI/(NSIDES/2) );
			float y1 = (float)sin( (float)(c+0)*M_PI/(NSIDES/2) );
			float x2 = (float)cos( (float)(c+1)*M_PI/(NSIDES/2) );
			float y2 = (float)sin( (float)(c+1)*M_PI/(NSIDES/2) );

			float u1 = (float)c / (float)NSIDES;
			float u2 = (float)(c+1) / (float)NSIDES;
			
			//glColor3f( (float)c/(float)NSIDES, (float)r/(float)NROWS, 0 );

//			glNormal3f( x1*x2, 0, y1*y2 );

			glColor3f( b,b,b );

			glTexCoord2f( u1, vc );
			glVertex3f( ra*x1+xc, zc, ra*y1+yc );

			glTexCoord2f( u2, vc );
			glVertex3f( ra*x2+xc, zc, ra*y2+yc );

			//glColor3f( b1,b1,b1 );

			glTexCoord2f( u2, lvc );
			glVertex3f( lra*x2+lxc, lzc, lra*y2+lyc );

			glTexCoord2f( u1, lvc );
			glVertex3f( lra*x1+lxc, lzc, lra*y1+lyc );
		};

		lxc = xc;
		lyc = yc;
		lzc = zc;
		lvc = vc;
		lra = ra;

		//xc += ((float)(rand()%200) - 100.0f) / 200.0f;
		//yc += ((float)(rand()%200) - 100.0f) / 200.0f;

		xc += 0.05f*(float)cos( (float)r / 4.3f );
		yc += 0.05f*(float)sin( (float)r / 3.6f );
		//xc += sin( (float)r / 8.7f );
		//yc += cos( (float)r / 8.1f );

		zc += zd;
		vc += vd;

		//ra += 0.01f;
		

	};
	glEndList();

};

void p_klask_run( EVENT *e ) {

	float t;

	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
	glTranslatef( 0, 0, -1 );

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();

	glDisable( GL_CULL_FACE );
//	glCullFace( GL_BACK );

	glDisable( GL_DEPTH_TEST );

	glDisable( GL_FOG );

	t = e->localTime;

		glEnable( GL_BLEND );
		glBlendFunc( GL_ONE, GL_ONE );

		glMatrixMode( GL_MODELVIEW );

		//for( float step=0; step<10; step+=3 ) {

			float t2 = t;// - (step/20.0f);

	glLoadIdentity();
		//glFrustum( -1, 1, -0.75, 0.75, 0.1, 1 );
		gluPerspective( 105, 4/3, 1, 1000 );
		//MATRIX m;
		gluLookAt( 5*(float)cos(t2/6), 5*(float)cos(t2/7), 5*(float)sin(t2/5), 
				5*(float)cos(t2/5), 5*(float)cos(t2/4), 5*(float)sin(t2/3), 
				0, 1, 0 );

	glaSetTexture( GIF_CLOUDS );
	glTexEnvi( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

			float br = 0.5f*e->renderAmount;// / (float)fmod(b*2,4.0f);

			for( int n=0; n<NOBJECTS; n++ ) {
				glPushMatrix();

				glRotatef( t2*17+klr[n][0], 1, 0, 0 );
				glRotatef( t2*12-klr[n][1], 0, 1, 0 );
				glRotatef( t2*10+klr[n][2], 0, 0, 1 );
				glRotatef( (float)cos(t2+n)*20, 0, 1, 1 );
				glRotatef( (float)sin(t2-n*3)*20, 1, 0, 1 );

				glBegin( GL_QUADS );
				switch( n%3 ) {
					case 0:
						glColor3f( 0.6f*br, 0.4f*br, 0.2f*br );
						break;
					case 1:
						glColor3f( 0.3f*br, 0.7f*br, 0.4f*br );
						break;
					case 2:
						glColor3f( 0.2f*br, 0.4f*br, 0.6f*br );
						break;
				};
				glCallList( KLASK_CYLINDER );
				glEnd();
				glPopMatrix();
			};

};