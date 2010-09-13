// greetings...
#include "..\almosteverything.h"
#include "..\images.h"
#include <stdlib.h>

//#define GREET_FLOWER 30
//#define GREET_BACKGROUND 31
#define GREET_LIST 232

void p_greetings_init() {
//	glaUploadGif( GREET_FLOWER, (unsigned char *)&gif_flower, 0x0000FF );
//	glaUploadGif( GREET_BACKGROUND, (unsigned char *)&gif_greetback, 0x0000FF );
//	glaUploadGif( GREET_GRID, (unsigned char *)&gif_grid, 0x0000FF );
	float x, y, z, r, u, v;
	int i;

	glNewList( GREET_LIST, GL_COMPILE );

	srand( 12345 );

	for( i=0; i<1000; i++ ) {
//		glPushMatrix();
//		glRotatef( 312, cos(x), sin(y), cos(r) );

		x = -100 + (float)(rand()%20000)/100.0f;
		y = -(float)(rand()%16000)/100.0f;
		z = -100 + (float)(rand()%20000)/100.0f;
		r = (float)(rand()%100) / 22.0f;

		//a = rand()%360;
		//b = (float)(rand()%100) / 100.0f;

		u = (float)(rand()%2) / 2.0f;
		v = (float)(rand()%2) / 2.0f;

		glColor3f( 0.1f, 0.1f, 0.1f );

		/*switch( i%2 ) {
			case 0:
				glTexCoord2f( u, v );			glVertex3f( x-r, y-r, z );
				glTexCoord2f( 0.5f+u, v );		glVertex3f( x+r, y-r, z );
				glTexCoord2f( 0.5f+u, 0.5f+v );	glVertex3f( x+r, y+r, z );
				glTexCoord2f( u, 0.5f+v );		glVertex3f( x-r, y+r, z );
				break;*/
		//	case 1:
				glTexCoord2f( u, v );			glVertex3f( x-r, y, z-r );
				glTexCoord2f( 0.5f+u, v );		glVertex3f( x+r, y, z-r );
				glTexCoord2f( 0.5f+u, 0.5f+v );	glVertex3f( x+r, y, z+r );
				glTexCoord2f( u, 0.5f+v );		glVertex3f( x-r, y, z+r );
/*				glTexCoord2f( u, v );			glVertex3f( x, y-r, z-r );
				glTexCoord2f( 0.5f+u, v );		glVertex3f( x, y-r, z+r );
				glTexCoord2f( 0.5f+u, 0.5f+v );	glVertex3f( x, y+r, z+r );
				glTexCoord2f( u, 0.5f+v );		glVertex3f( x, y+r, z-r );
				break;
			default:
				break;
		};
*/
//		glPopMatrix();
	};

	glEndList();
};

#define NPGTEXT 16
char *pgtext[NPGTEXT] = {
	"we luhv..",
	"neurodruid",
	"mind",
	"",

	"aardbei",
	"former k2",
	"woorlic",
	"tbl",

	"jeskola",
	"yodel",
	"trauma",
	"mediascience",

	"komplex",
	"bingoberra",
	"",
	"grilla!?"
};

void pgot( float x, float y, char *str, float time );

void p_greetings_run( EVENT *e ) {

	/*
	float t;

	glDisable( GL_FOG );
	glDisable( GL_LIGHTING );

	glaReset();
	do {*/

		float t = e->localTime / 4;

	glDisable( GL_CULL_FACE );
	glDisable( GL_DEPTH_TEST );

	glEnable( GL_BLEND );
	glBlendFunc( GL_ONE, GL_ONE );

	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();

		float y0, y1;
		y0 = -(t*t*7);
		y1 = -(t*t*25);

		gluPerspective( 105+1*cos(y0*3.142f/5.0f), 4/3, 0.1f, 300 );
		//ya = 45*(y0/5.0f);

//		gluLookAt( 19*cos(t/5), y0, 17*sin(t/6), 30*cos(t/4), y1, 30*sin(t/7), 0, 1, 0 );
		gluLookAt( 1*cos(t*3), y0, 0.1f*cos(t*5), 0, y1, -1, 0,1,0 );
//		gluLookAt( 0, y0, 0, 0, y1, -1, 0,1,0 );

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	glaSetTexture( GIF_GREEN );
	glBegin( GL_QUADS );
	glCallList( GREET_LIST );
	glEnd();

	//glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

	glaSetTexture( GIF_FONT );
	glRotatef( 270,1,0,0 );
	glBegin( GL_QUADS );
	glColor3f( 1, 1, 1 );
	for( int i=0; i<NPGTEXT; i++ ) {
		//glPushMatrix();
		//glRotatef( i*90, 1,0,0 );
		//glColor3f( 1, 0.5f + 0.3f*(float)sin(t+i), 0.5f + 0.3f*(float)cos(t-i) );
		glColor3f( 0.2f, 0.4f, 0.7f );
		//glaDrawString( 2*cos(i),4*sin(i/3),-10 + -10*i, 0.75f,0.75f,1.0f, pgtext[i] );
		glaDrawString( 0,0,(float)(-10+-10*i), 0.5f,0.65f,0.5f, pgtext[i] );

		//glColor3f( 0.1f, 0.2f, 0.3f );
		//glaDrawString( 2*cos(i),4*sin(i/3),-10 + -10*i, 0.75f,0.75f,1.0f, pgtext[i] );
		//glaDrawString( 0,0,-10 + -10*i, 0.9f,0.9f,0.5f, pgtext[i] );
		
		//glPopMatrix();
	};
	glEnd();

//	glMatrixMode( GL_PROJECTION );
//	glLoadIdentity();
//	glMatrixMode( GL_MODELVIEW );
//	glLoadIdentity();
/*
	// en grid.
	{
		glaSetTexture( GIF_GRID );
		glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

		glBegin( GL_QUADS);

		for( int shit=0; shit<3; shit++ ) {

			float u[4], v[4];
			float t3 = t + (float)shit /1.0f;
			float fade = (float)shit / 3.0f;
			float r = t3/13;
			float s = 6 + 4*(float)cos(t3/2);
			float uc = 10*(float)cos(t3/2);
			float vc = 10*(float)sin(t3/3);

			glaRotate2d( &u[0], &v[0], -s, s, r );
			glaRotate2d( &u[1], &v[1], s, s, r );
			glaRotate2d( &u[2], &v[2], s, -s, r );
			glaRotate2d( &u[3], &v[3], -s, -s, r );

			glColor3f( 0, 0, 0 );
			glTexCoord2f( u[0]+uc, v[0]+vc );
			glVertex3f( -1, -1, 0 );

			glColor3f( 0.0, 0.33f*fade, 0.66f*fade );
			glTexCoord2f( u[1]+uc, v[1]+vc );
			glVertex3f( 1, -1, 0 );
			glTexCoord2f( u[2]+uc, v[2]+vc );
			glVertex3f( 1, 1, 0 );

			glColor3f( 0, 0, 0 );
			glTexCoord2f( u[3]+uc, v[3]+vc );
			glVertex3f( -1, 1, 0 );

		};

		glEnd();

	}
*/
		// blommflumm
	/*
		{

			glaSetTexture( GIF_FLOWER );
			glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

			glBegin( GL_QUADS );

			for( int j=0; j<7; j++ ) {

				float s = 0.2f + 0.1f*(float)sin((j+t)*4);
				float x = -0.61f + s*(float)sin((j)*2+j);
				float y = 0 + s*1.5f*(float)cos((j+t)*3);
				float r = ((t+j)*200)+(70*(float)cos((j-t)*4));

				glColor4f( (float)j/10, (float)j/10, (float)j/10, 1 );

				s *= ((j%3)+1);
				glaQuadR( x, y, 0, r, s, s, 0, 1, 1, 0 );
				
				//glaQuadR( -x, y, 0, r, s, s, 0, 1, 1, 0 );
				//glaQuadR( -x, -y, 0, r, s, s, 0, 1, 1, 0 );
				//glaQuadR( x, -y, 0, r, s, s, 0, 1, 1, 0 );

			};
			glEnd();

  

			if( t<2 ) {
				float r = 3 - t;
				float b = 1.0f - (t / 1.25f);
				glaSetTexture( GIF_SYMBOLER );
				glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );
				glBegin( GL_QUADS );
				glColor3f( b, b, b );
				glaQuadR( 0.5f, 0, 0, t*50, r, r, 0, 1, 0.1f, 0 );
				glEnd();
			};

			if( t>8 ) {
				float r = (t-8) / 5.0f;
				float b = (t-8) / 4.0f;
				glaSetTexture( GIF_FLOWER );
				glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );
				glBegin( GL_QUADS );
				glColor3f( b, b, b );
				for( float j=-2; j<=2; j++ ) {
					for( float i=-3; i<=3; i++ ) {
						glaQuadR( i/3.0f, j/2.0f, 0, t*t*5, r, r, 0, 1, 1.0f, 0 );
					};
				};
				glEnd();
			};
			if( t>10 ) {
				float r = (t-10) / 2.0f;
				float b = (t-10) / 2.0f;
				glaSetTexture( GIF_SYMBOLER );
				glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );
				glBegin( GL_QUADS );
				glColor3f( b, b, b );
				for( float j=-2; j<=2; j+=1.5f ) {
					for( float i=-3; i<=3; i+=1.5f ) {
						glaQuadR( i/3.0f, j/2.0f, 0, t*t*8, r, r, 0, 1, 1.0f, 0 );
					};
				};
				glEnd();
			};
		}
		*/
/*
		glaBlit();

	} while( !glaExit() && t<5 );
*/	
};

void pgot( float x, float y, char *str, float time ) {

	for( float i=0; i<5; i+=0.5f ) {

		float s = 1 + (i / 5.0f);

		float b = 1 / (1 + i*2);

		//glColor3f( b*0.7f, b*(0.7f + 0.35f*sin(time+i*30)), b*(0.6f + 0.3f*cos(time-i*21)) );
		//glColor3f( b/2.0f, b/1.5f, b );

		float s2 = 1.0f + ((float)i / 3.0f);
		float s3 = 1.0f / (1 + (float)i*(float)i); 
		glColor3f( b*1*s3, b*s3*0.5f + b*0.3f*(float)sin(time*7+y), b*s3*0.5f + b*0.3f*(float)cos(time*7-y) );

		glaDrawString( x, y, 0, 0.1f*s, 0.1f*s, 0.1f*s, str );

	};

};