// flareblob
#include "almosteverything.h"
#include "images.h"

//#define CUBES_IMG 21
#define CUBES_LIST 20
//efine FLAREBLOB_LOGO 11

void p_cubes_list()
{
	
	float r = 1.0f;
	
	glBegin( GL_QUADS );
	
	//glColor3f( 1, 1, 1 );
	glColor3f( 0.05f, 0.1f, 0.15f );
	//toppen
	//glColor3f( 1, 0, 0 );
	//glBegin( GL_LINE_LOOP );
	glNormal3f( 0, 0, -1 );
	glTexCoord2f( 0, 0 );	glVertex3f( -r, -r, -r );
	glTexCoord2f( 1, 0 );	glVertex3f(  r, -r, -r );
	glTexCoord2f( 1, 1 );	glVertex3f(  r,  r, -r );
	glTexCoord2f( 0, 1 );	glVertex3f( -r,  r, -r );
	//glEnd();
	//glBegin( GL_LINE_LOOP );
	glNormal3f( 0, 0, 1 );
	glTexCoord2f( 0, 1 );	glVertex3f(  r, -r,  r );
	glTexCoord2f( 1, 1 );	glVertex3f( -r, -r,  r );
	glTexCoord2f( 1, 0 );	glVertex3f( -r,  r,  r );
	glTexCoord2f( 0, 0 );	glVertex3f(  r,  r,  r );
	//glEnd();
	
	//glColor3f( 0, 1, 0 );
	//glBegin( GL_LINE_LOOP );
	glNormal3f( 0, -1, 0 );
	glTexCoord2f( 1, 1 );	glVertex3f( -r, -r, -r );
	glTexCoord2f( 0, 1 );	glVertex3f(  r, -r, -r );
	glTexCoord2f( 0, 0 );	glVertex3f(  r, -r,  r );
	glTexCoord2f( 1, 0 );	glVertex3f( -r, -r,  r );
	//glEnd();
	//glBegin( GL_LINE_LOOP );
	glNormal3f( 0, 1, 0 );
	glTexCoord2f( 0, 0 );	glVertex3f(  r,  r, -r );
	glTexCoord2f( 1, 0 );	glVertex3f( -r,  r, -r );
	glTexCoord2f( 1, 1 );	glVertex3f( -r,  r,  r );
	glTexCoord2f( 0, 1 );	glVertex3f(  r,  r,  r );
	//glEnd();
	
	//glColor3f( 0, 0, 1 );
	//glBegin( GL_LINE_LOOP );
	glNormal3f( -1, 0, 0 );
	glTexCoord2f( 1, 1 );	glVertex3f( -r, -r, -r );
	glTexCoord2f( 0, 1 );	glVertex3f( -r,  r, -r );
	glTexCoord2f( 0, 0 );	glVertex3f( -r,  r,  r );
	glTexCoord2f( 1, 0 );	glVertex3f( -r, -r,  r );
	//glEnd();
	//glBegin( GL_LINE_LOOP );
	glNormal3f( 1, 0, 0 );
	glTexCoord2f( 0, 1 );	glVertex3f(  r,  r, -r );
	glTexCoord2f( 1, 1 );	glVertex3f(  r, -r, -r );
	glTexCoord2f( 1, 0 );	glVertex3f(  r, -r,  r );
	glTexCoord2f( 0, 0 );	glVertex3f(  r,  r,  r );
	//glEnd();
	
	glEnd();
}
void p_cubes_init() {
/*
//	glaUploadGif( CUBES_IMG, (unsigned char *)&gif_rost, 1 );

	glNewList( CUBES_LIST, GL_COMPILE );


	glEndList();*/
};

/*
void pcdt( char *text, float deltatime ) {

	float s2 = 0.5f+(deltatime*deltatime*deltatime);

	float a = 1.0f - (deltatime / 2.0f);

	//glColor3f( 1*a, 1*a, 1*a );

	int max = misc_strlen(text);
	int len = (int)(deltatime * 30);
	if( len>max ) len=max;

	char s[50];
	memcpy( s, text, len );
	s[len] = 0;
	if( fmod(deltatime,0.1)<0.05 ) { s[len] = '_'; s[len+1] = 0; };

	float xx = 0;
	if( deltatime>1.8f ) {
		xx = -(deltatime - 1.8f)*7.0f;
	};
	float ss = 1;
	if( deltatime>0.25 && deltatime<1 ) {
		ss = 1.75f - (deltatime-0.25f);
	};

	glColor3f( 0.4f, 1.0f, 0.75f );
	glaDrawStringL( -0.9f+xx, 0.85f, 0, 0.03f, 0.03f, 0.08f, s );


};
 */
void p_cubes_render_world( float t ) {

	glPushMatrix();
		glaSetTexture( GIF_ROST );
//		glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

		for( float k=-4; k<=4; k++ ) {
			for( float j=-4; j<=4; j++ ) {
				for( float i=-4; i<=4; i++ ) {
					glPushMatrix();

					//float b = 1.0f / ((float)sqrt( (k*k)+(j*j)+(i*i) )) / 10.0f;
					//glColor3f( b,b,b );
					glTranslatef( i*2, j*2, k*2 );
					glScalef( 0.25f, 0.25f, 0.25f );
					//glRotatef( 130, (float)cos(t*4+j*3), (float)sin(t*5-k*4), (float)cos(t*3-i*2) );
					//glScalef( (float)cos(t*5+j*3), (float)sin(t*4-k*4), (float)cos(t*3-i*5) );
					//glScalef( 0.5f, 0.5f, 0.5f );
				// glCallList( CUBES_LIST );
					p_cubes_list();

					glPopMatrix();
				};
			};
		};
		glPopMatrix();

};

float old_matrix[16];

void p_cubes_render_flow( float t, float x, float y, float z, float r, float g, float b ) {

	float rad[51];

		float a0 = 0.5f + 0.5f * (float)sin( t*3.142f/1.2f );
		float a1 = 0.5f + 0.5f * (float)cos( t*3.142f/3.8f );
		float a2 = 0.5f - 0.5f * (float)sin( t*3.142f/2.3f );
		for( int j=0; j<51; j++ ) {
			float c0 = 0.3f + 0.2f*(float)sin((t*8+j)*3.142f/6.25f);
			float c1 = 0.3f + 0.2f*(float)sin((t*9+j)*3.142f/5.0f);
			float c2 = 0.3f + 0.2f*(float)sin((t*7+j)*3.142f/25.0f);
			rad[j] = c0*a0 + c1*a1 + c2*a2;
		};

		glaSetTexture( GIF_CLOUDS );
//		glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

		float ra = 4.0f ;//+ 3.0f*(float)cos( t );

		glPushMatrix();
		glTranslatef( x,y,z );
		glRotatef( 100, (float)sin(t*2),(float)cos(t),(float)sin(t*3) );
		glBegin( GL_QUADS );
		for( int i=0; i<50; i++ ) {

			//float x0 = rad[i]*(float)cos((i)*3.142f/25)*0.2f;
			//float y0 = rad[i]*(float)sin((i)*3.142f/25)*0.2f;
			float x1 = rad[i]*(float)cos((i+0)*3.142f/25);
			float y1 = rad[i]*(float)sin((i+0)*3.142f/25);
			float x2 = rad[i+1]*(float)cos((i+1)*3.142f/25);
			float y2 = rad[i+1]*(float)sin((i+1)*3.142f/25);

			if( i%10==1 ) { x1*=ra; y1*=ra; x2*=ra; y2*=ra; };

			float u = (float)i / 50.0f;
			float u2 = (float)(i+1) / 50.0f;

			glColor3f( r, g, b );
			glTexCoord2f( u2, 0 );
			glVertex3f( 0, 0, 0 );
			glTexCoord2f( u, 0 );
			glVertex3f( 0, 0, 0 );

			glColor3f( 0,0,0 );
			glTexCoord2f( u, 1 );
			glVertex3f( x1, y1, 0 );
			glTexCoord2f( u2, 1 );
			glVertex3f( x2, y2, 0 );

			glColor3f( r, g, b );
			glTexCoord2f( u2, 0 );
			glVertex3f( 0, 0, 0 );
			glTexCoord2f( u, 0 );
			glVertex3f( 0, 0, 0 );

			glColor3f( 0,0,0 );
			glTexCoord2f( u, 1 );
			glVertex3f( 0, x1, y1 );
			glTexCoord2f( u2, 1 );
			glVertex3f( 0, x2, y2 );

			glColor3f( r, g, b );
			glTexCoord2f( u2, 0 );
			glVertex3f( 0, 0, 0 );
			glTexCoord2f( u, 0 );
			glVertex3f( 0, 0, 0 );

			glColor3f( 0,0,0 );
			glTexCoord2f( u, 1 );
			glVertex3f( x1, 0, y1 );
			glTexCoord2f( u2, 1 );
			glVertex3f( x2, 0, y2 );

		};
		glEnd();
		glPopMatrix();
};

void p_cubes_run( EVENT *e ) {

	float t;
	int i;

	glEnable( GL_BLEND );
	glBlendFunc( GL_ONE, GL_ONE );
	glDisable( GL_DEPTH_TEST );

	float _t = e->localTime/2.0f;

	float _if = (float)fmod( _t, 1.0f );
	if( _if<0.25f ) {
		t = _if * 2.0f;
	} else {
		t = 0.5f + (_if-0.25f)*0.2f;
	};
	t += (int)(_t-0.5f);

	glMatrixMode( GL_TEXTURE );
	glLoadIdentity();

	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();

	gluPerspective( 110, 4/3, 1, 1000 );

	switch( (int)((t/4)-0.5f) ) {
		case 1:
		case 5:
			gluLookAt( 5*cos(t/5), 3*cos(t/3), 7*sin(t/6), 1*cos(t/3), 1*cos(t/4), 1*sin(t/7), 0, 1, 0 );
			break;
		case 3:
		case 7:
			gluLookAt( 7*cos(t/3), 5*cos(t/5), 3*sin(t/4), 1*cos(t/4), 1*cos(t/3), 1*sin(t/5), 0, 1, 0 );
			break;
		default:
			gluLookAt( 3*cos(t/4), 7*cos(t/6), 5*sin(t/3), 1*cos(t/5), 1*cos(t/7), 1*sin(t/4), 0, 1, 0 );
			break;
	};

	if( t<3 ) {
		glTranslatef( 0, 0, 10-t*3.3333f );
	};

	if( t>21 ) {
		glTranslatef( 0, 0, (t-21)*(t-21)*3 );
	};

	glRotatef( 130, (float)sin(t/8), (float)sin(t/5), (float)cos(t/3) );

	p_cubes_render_world( t );

	for( i=0; i<10; i++ ) {
		float t2 = t-(float)i/3.0f;
		float x = 1 * (float)cos( t2*3.142/2 );
		float y = 1 * (float)sin( t2*3.142/4 );
		float z = 1 * (float)cos( t2*3.142/3 );
		p_cubes_render_flow( t+i, x,y,z, 1,0.3f,0.2f );
		p_cubes_render_flow( t+i, y,z,x, 0.3f,1,0.2f );
		p_cubes_render_flow( t+i, z,x,y, 0.2f,0.3f,1 );
	};

};
