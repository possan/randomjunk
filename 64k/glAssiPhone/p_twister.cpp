// twister...
#include "almosteverything.h"
#include "images.h"

#define NSIDES 5

float pt_x[111][NSIDES];
float pt_b[111][NSIDES];
float pt_c[5][3];

float pt_funktionen_f( float t, float offset ) {
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

float ptffff( float time ) {
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

void pt_draw( float t ) {

	int i, j;

	pt_c[0][0] = 0.7f; pt_c[0][1] = 0.7f; pt_c[0][2] = 0.5f;
	pt_c[1][0] = 0.5f; pt_c[1][1] = 0.0f; pt_c[1][2] = 0.8f;
	pt_c[2][0] = 0.8f; pt_c[2][1] = 0.8f; pt_c[2][2] = 0.5f;
	pt_c[3][0] = 0.0f; pt_c[3][1] = 0.5f; pt_c[3][2] = 0.8f;
	pt_c[4][0] = 0.7f; pt_c[4][1] = 0.5f; pt_c[4][2] = 0.6f;

	for( i=0; i<110; i++ ) {
		float a = pt_funktionen_f( t, (float)i/75.0f );

		float r = 0.3f + 0.15f*(float)cos( a-t*3 );

		for( j=0; j<NSIDES; j++ ) {
			float a2 = a + M_PI * (float)j / ((float)NSIDES/2.0f);
			pt_x[i][j] = r*(float)sin( a2 );
			pt_b[i][j] = 0.7f + 0.4f * (float)cos( a2 );
		};
	};

	glDisable( GL_TEXTURE_2D );
	glEnable( GL_BLEND );
	glBlendFunc( GL_ZERO, GL_ONE_MINUS_SRC_COLOR );
	glBegin( GL_QUADS );

	for( i=0; i<100; i++ ) {

		float y1 = (float)(i-50) / 50.0f;
		float y2 = (float)(i+1-50) / 50.0f;

		float xd1 = ptffff(t-((float)i/100.0f));
		float xd2 = ptffff(t-((float)(i+1)/100.0f));

		for( j=0; j<NSIDES; j++ ) {

			float x1 = pt_x[i][j];
			float x2 = pt_x[i][(j+1)%NSIDES];
			float x3 = pt_x[i+1][(j+1)%NSIDES];
			float x4 = pt_x[i+1][j];

			int j2 = j;//loat)j + (int)t;

			float v1 = 1 - ((float)i / 100.0f);
			float v2 = 1 - ((float)(i+1) / 100.0f);

			float b1 = pt_b[i][j];
			//float b2 = pt_b[i+1][j];

			if( x2 <= x1 ) {
 

				float u1 = (float)j2*0.25f;
				float u2 = (float)(j2+1)*0.25f;

				//glColor3f( cos((float)j/3)*b1, sin((float)j/2)*b1, cos((float)j)*b1 );
				glColor3f( 0.3f, 0.28f, 0.26f );

				glVertex3f( xd1+x1*1.2f+0.2f, y1, 0 );
				glVertex3f( xd1+x2*1.2f+0.2f, y1, 0 );
				glVertex3f( xd2+x3*1.2f+0.2f, y2, 0 );
				glVertex3f( xd2+x4*1.2f+0.2f, y2, 0 );

			};

		};

	};

	glEnd();

	glDisable( GL_BLEND );
	glaSetTexture( GIF_TWISTER2 );
	glTexEnvi( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

	glBegin( GL_QUADS );

	for( i=0; i<100; i++ ) {

		float y1 = (float)(i-50) / 50.0f;
		float y2 = (float)(i+1-50) / 50.0f;

		float xd1 = ptffff(t-((float)i/100.0f));
		float xd2 = ptffff(t-((float)(i+1)/100.0f));

		for( j=0; j<NSIDES; j++ ) {

			float x1 = pt_x[i][j];
			float x2 = pt_x[i][(j+1)%NSIDES];
			float x3 = pt_x[i+1][(j+1)%NSIDES];
			float x4 = pt_x[i+1][j];

			int j2 = j;//loat)j + (int)t;

			float v1 = 1 - ((float)i / 100.0f);
			float v2 = 1 - ((float)(i+1) / 100.0f);

			float b1 = pt_b[i][j];
			//float b2 = pt_b[i+1][j];

			if( x2 <= x1 ) { 

				float u1 = (float)j2*0.25f;
				float u2 = (float)(j2+1)*0.25f;

				u1 = 0;
				u2 = 1;

				//glColor3f( cos((float)j/3)*b1, sin((float)j/2)*b1, cos((float)j)*b1 );
				glColor3f( pt_c[j][0], pt_c[j][1], pt_c[j][2] );

				glTexCoord2f( u1, v1 );
				glVertex3f( x1+xd1, y1, 0 );

				glTexCoord2f( u2, v1 );
				glVertex3f( x2+xd1, y1, 0 );

				glTexCoord2f( u2, v2 );
				glVertex3f( x3+xd2, y2, 0 );

				glTexCoord2f( u1, v2 );
				glVertex3f( x4+xd2, y2, 0 );

			};

		};

	};

	glEnd();

};
/*
void pt_draw_dudes( float t ) {
	glEnable( GL_BLEND );
	glBlendFunc( GL_ONE_MINUS_SRC_COLOR, GL_DST_COLOR );

	glaSetTexture( GIF_FACES );
	glBegin( GL_QUADS );

	//glColor3f( 1, 1, 1 );
	//glaQuadR( 0, 0, 0, 0, 0.25f, 0.25f, 0.45f, 0.6f, 1, 0 );

	for( float k=0; k<15; k++ ) {

		float t2 = t - (k/14);
		//float r =
		float b = 1 - (k/7.0f);
		float r = 1.0f + (k/30.0f);

		//float xr = 1.0f + 0.5f*cos( t2 * 5 );
		//float yr = 1.0f + 0.5f*sin( t2 * 6 );

		float a = (float)(170*cos(t2*2) + 170*sin(t2*3) + 170*sin(t2/3));

		//a = 0;

		glColor3f( b, b, b );
		glaQuadR( 0.6f, 0, 0, a, r, r, 0, 1, 1, 0 );

	};

	glEnd();
};
*/

void p_twister_run( EVENT *e ) {
/*
	float t;

	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
	glTranslatef( 0, 0, -1 );

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();

	glDisable( GL_CULL_FACE );

	glClearColor( 1, 1, 1, 1 );

	glDisable( GL_BLEND );
	glClearDepth( 20 );
	glDisable( GL_DEPTH_TEST );

	glDisable( GL_FOG );

	//glDisable( GL_DEPTH_TEST );

	t = e->localTime;

		//pt_draw_dudes( t );

		pt_draw( t );

	glDisable( GL_FOG );
*/
};
