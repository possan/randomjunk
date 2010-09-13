// siluett

// flareblob
#include "almosteverything.h"
#include "images.h"
#include <stdlib.h>

#define SILU_LIST 40

void psilufunc( float model, float time, float *px, float *py, float *pz, float u, float v );

void p_silu_rit( float t ) {
	
	int u, v;
	float x, y, z;

	glPushMatrix();

	glRotatef( t*5, 1,0,0 );
	glRotatef( t*40, 0,1,0 );
	glRotatef( t*3, 0,0,1 );
	if( t>2 && t<4 ) {
		glRotatef( t*15, 1,0,0 );
		glRotatef( t*30, 0,1,0 );
		glRotatef( t*10, 0,0,1 );
	} else if( t>6 && t<8 ) {
		glRotatef( t*35, 1,0,0 );
		glRotatef( t*4, 0,1,0 );
		glRotatef( t*7, 0,0,1 );
	};
	glPointSize( 3 );


	glBegin( GL_POINTS );
	for( u=0; u<100; u++ ) {
		for( v=0; v<=100; v++ ) {
			if( u%10==0 || v%10==0 ) {
				psilufunc( 0, t, &x, &y, &z, (float)u/100.0f, (float)v/100.0f );
				glColor3f( 1, 0.5f, 0.1f );
				glVertex3f( x, y, z );
			};
		};
	};
	for( u=0; u<100; u++ ) {
		for( v=0; v<=100; v++ ) {
			if( v%10==0 ) {
				psilufunc( 0, t, &x, &y, &z, (float)u/100.0f, (float)v/100.0f );

				glColor3f( 0.1f, 0.15f, 0.207f );
				glVertex3f( x*1.1f, y*1.0f, z*1.1f );
				glVertex3f( x*1.2f, y*1.0f, z*1.2f );
				glVertex3f( x*1.3f, y*1.0f, z*1.3f );

				glColor3f( 0.08f, 0.11f, 0.107f );
				glVertex3f( x*1.4f, y*1.0f, z*1.4f  );
				glVertex3f( x*1.5f, y*1.0f, z*1.5f  );

				glColor3f( 0.06f, 0.09f, 0.057f );
				glVertex3f( x*1.6f, y*1.0f, z*1.6f  );
				glVertex3f( x*1.7f, y*1.0f, z*1.7f  );

				glColor3f( 0.04f, 0.07f, 0.017f );
				glVertex3f( x*1.8f, y*1.0f, z*1.8f  );
				glVertex3f( x*1.9f, y*1.0f, z*1.9f  );

				glColor3f( 0.02f, 0.05f, 0.007f );
				glVertex3f( x*2.0f, y*1.0f, z*2.0f  );
				glVertex3f( x*2.1f, y*1.0f, z*2.1f  );

				glColor3f( 0.01f, 0.025f, 0.0035f );
				glVertex3f( x*2.2f, y*1.0f, z*2.2f  );
				glVertex3f( x*2.3f, y*1.0f, z*2.3f  );
			};
		};
	};
	glEnd();



	glPopMatrix(); 
};

void p_silu_klutt( float a, float b, float r0 ) {

	glaSetTexture( GIF_PSIKORP2 );
	glBegin( GL_QUADS );

	float r1 = r0 + (r0/10)*(float)cos((a/2));
	float r2 = r0 - (r0/5)*(float)sin((a/3));

	glColor3f( b*(float)(0.3f+0.3f*(float)cos(a)), b*(float)(0.3f+0.3f*(float)sin(a)), 0.0f );

	for( int i=0; i<100; i++ ) {
		float x1, y1, x2, y2;
		float u1, u2;

		x1 = (float)cos( (i)*3.142/50 );
		y1 = (float)sin( (i)*3.142/50 );
		x2 = (float)cos( (i+1)*3.142/50 );
		y2 = (float)sin( (i+1)*3.142/50 );

		u1 = -((float)(i) / 5.0f)+a;
		u2 = -((float)(i+1) / 5.0f)+a;

		glTexCoord2f( u1, 1 );
		glVertex3f( r1*x1, r1*y1, 0 );
		glTexCoord2f( u1, 0 );
		glVertex3f( r2*x1, r2*y1, 0 );

		glTexCoord2f( u2, 0 );
		glVertex3f( r2*x2, r2*y2, 0 );
		glTexCoord2f( u2, 1 );
		glVertex3f( r1*x2, r1*y2, 0 );

	};
	glEnd();
};


void p_silu_cube( float t ) {
	//glTexCoord( sin(t), cos(t) );

	glColor3f( 0.01f, 0.01f, 0.01f );

	glVertex3f( -1, -1, -1 );
	glVertex3f(  1, -1, -1 );
	glVertex3f(  1,  1, -1 );
	glVertex3f( -1,  1, -1 );

	glVertex3f( -1, -1,  1 );
	glVertex3f(  1, -1,  1 );
	glVertex3f(  1,  1,  1 );
	glVertex3f( -1,  1,  1 );

	glColor3f( 0.033f, 0.033f, 0.033f );

	glVertex3f( -1, -1,  1 );
	glVertex3f( -1, -1, -1 );
	glVertex3f( -1,  1, -1 );
	glVertex3f( -1,  1,  1 );

	glVertex3f(  1, -1,  1 );
	glVertex3f(  1, -1, -1 );
	glVertex3f(  1,  1, -1 );
	glVertex3f(  1,  1,  1 );

	glColor3f( 0.001f, 0.001f, 0.001f );

	glVertex3f( -1, -1,  1 );
	glVertex3f( -1, -1, -1 );
	glVertex3f(  1, -1, -1 );
	glVertex3f(  1, -1,  1 );

	glVertex3f( -1,  1,  1 );
	glVertex3f( -1,  1, -1 );
	glVertex3f(  1,  1, -1 );
	glVertex3f(  1,  1,  1 );
};

void p_silu_run( EVENT *e ) {

	glDisable( GL_DEPTH_TEST );

	float t = e->localTime;
	float b = e->localBeat;

	glEnable( GL_BLEND );
	glBlendFunc( GL_ONE, GL_ONE );

	glMatrixMode( GL_PROJECTION );
	//glScalef( 0.2, 0.3, 0.4 );
	glLoadIdentity();
	glOrtho( -1, 1, -1, 1, -100, 100 );

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();

	// rita distad bild
	  
		glDisable( GL_TEXTURE_2D );
		// rita bakgrunden
		{ 

		}

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();

	b = 1;
	if( t>=12 ) {
		b = 1-((t-12)/3.0f);
	};

//	p_silu_klutt2( t, b );

//		p_silu_klutt( t,   0.2f, 0.7f );

	p_silu_klutt( t-0.0f, 0.3f*b, 0.7f );
	p_silu_klutt( t-0.2f, 0.25f*b, 0.75f );
	p_silu_klutt( t-0.4f, 0.2f*b, 0.8f );
	p_silu_klutt( t-0.6f, 0.1f*b, 0.85f );
	p_silu_klutt( t-0.8f, 0.05f*b, 0.9f );
	p_silu_klutt( t-1.0f, 0.025f*b, 0.95f );
 
	glFrustum( -1, 1, -0.75f, 0.75f, 1.0f, 15.0f );

	if( t<2 ) {
		float p = 0 - (((2-t)*(2-t))/4.0f);
		glTranslatef( 0.0f+p, 0, -4-(t*3) );
	} else if( t>13 ) {
		glTranslatef( 0.0f, 0, -10+((t-13)*5) );
	} else {
		glTranslatef( 0.0f, 0, -10 );
	};

//	glScalef( 0.2, 0.3, 0.4 );

		glDisable( GL_TEXTURE_2D );
		glEnable( GL_BLEND );
		glBlendFunc( GL_ONE, GL_ONE );

		// siluett/wireframe/nurbsliknande sak
		p_silu_rit( t );
/*
	glLoadIdentity();

		float h = 0.4f;
		if( t<3 ) {
			h = 0.4f + ( ((3-t)*(3-t))/9.0f);
		};
*/
};

void psilufunc( float model, float time, float *px, float *py, float *pz, float u, float v ) {


	float r2 = 0.05f + 0.05f*(float)cos( (time*v*3+model) ) + 0.05f*(float)sin( (time*v*1.8+model) );
	float r = 0.2f + r2*(float)sin( (model+v+time)*(model+3) );
//	r = 1.0f;

	*px = r * (float)cos( u*M_PI/0.5f );
	*pz = r * (float)sin( u*M_PI/0.5f );
	*py = v-0.5f;

	*px *= 6;
	*py *= 6;
	*pz *= 6;

};
