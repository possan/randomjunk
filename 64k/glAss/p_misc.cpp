// misc parter
#include "almosteverything.h"
#include "images.h"

void p_whiteflash_run( EVENT *e ) {
	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();

	glDisable( GL_TEXTURE_2D );
	glBlendFunc( GL_ONE, GL_ONE );
	glEnable( GL_BLEND );
	glBegin( GL_QUADS );

	float b = 1/(1+e->localTime*10);//>renderAmount;
	glColor3f( b, b, b );

	glaQuadR( 0,0,0, 0, 1,1, 0,0,0,0 );

	glEnd();
};

void p_fadeblack_run( EVENT *e ) {
	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();

	glDisable( GL_TEXTURE_2D );
	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);
	glBlendFunc( GL_ZERO, GL_ONE_MINUS_SRC_COLOR );
	glEnable( GL_BLEND );
	glBegin( GL_QUADS );

	float b = 1.0f - (1/(1+e->localTime*20));//>renderAmount;
	glColor3f( b, b, b );
	glaQuadR( 0,0,0, 0, 1,1, 0,0,0,0 );

	glEnd();
};

void p_static_run( EVENT *e ) {
	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();

	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );
	glBlendFunc( GL_ZERO, GL_ONE_MINUS_SRC_COLOR );
	glEnable( GL_BLEND );
	float u = e->localTime;
	float b = (float)(e->customData) / 255.0f;
	glaSetTexture( GIF_CLOUDS );
	glBegin( GL_QUADS );
	glColor3f( b,b,b );
	glaQuadR( 0,0,0, 0, 1,1, u,0.1f,u+0.01f,-1.2f );
	//glaQuad( 0,0,0, 1,1, u,1.1f,u+0.001f,-1.3f );
	glEnd();
};

void p_futurama_run( EVENT *e ) {

	float x0, y0, x1, y1, u0, u1, v0, v1;
	float b = e->renderAmount;
	float t = e->localTime;

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();

	glBlendFunc( GL_ONE, GL_ONE );
	glEnable( GL_BLEND );
	glaSetTexture( GIF_CLOUDS );
	glBegin( GL_QUADS );

	for( int i=0; i<100; i++ ) {

		u0 = (float)i/33;
		u1 = (float)(i+1)/33;
		v0 = t/4;
		v1 = v0-0.01f;//+0.01f;

		x0 = 2.0f*(float)cos( (float)i*3.142/50 );
		y0 = 2.0f*(float)sin( (float)i*3.142/50 );
		x1 = 2.0f*(float)cos( ((float)i+1)*3.142/50 );
		y1 = 2.0f*(float)sin( ((float)i+1)*3.142/50 );

		glColor3f( 0.1f*b, 0.3f*b, 0.7f*b);

		glTexCoord2f( u1, v0 );
		glVertex3f( 0,0,0 );

		glTexCoord2f( u0, v0 );
		glVertex3f( 0,0,0 );

		glColor3f( 0.001f*b, 0.003f*b, 0.006f*b);

		glTexCoord2f( u0, v1 );
		glVertex3f( x0, y0, 0 );

		glTexCoord2f( u1, v1 );
		glVertex3f( x1, y1, 0 );

	};
	glEnd();
};

void p_fulintro_run( EVENT *e ) {

	float b = 1.0f;
	float t = e->localTime;

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();

	glBlendFunc( GL_ONE, GL_ONE );
	glEnable( GL_BLEND );
	glaSetTexture( GIF_CLOUDS );
	glBegin( GL_QUADS );
/*
	for( int i=0; i<100; i++ ) {

		u0 = (float)i/33;
		u1 = (float)(i+1)/33;
		v0 = t/4;
		v1 = v0-0.01f;//+0.01f;

		x0 = 2*cos( (float)i*3.142/50 );
		y0 = 2*sin( (float)i*3.142/50 );
		x1 = 2*cos( ((float)i+1)*3.142/50 );
		y1 = 2*sin( ((float)i+1)*3.142/50 );

		glColor3f( 0.1f*b, 0.3f*b, 0.7f*b);

		glTexCoord2f( u1, v0 );
		glVertex3f( 0,0,0 );

		glTexCoord2f( u0, v0 );
		glVertex3f( 0,0,0 );

		glColor3f( 0.001f*b, 0.003f*b, 0.006f*b);

		glTexCoord2f( u0, v1 );
		glVertex3f( x0, y0, 0 );

		glTexCoord2f( u1, v1 );
		glVertex3f( x1, y1, 0 );

	};
	glEnd();
*/
	glaSetTexture( GIF_FONT );
	glBegin( GL_QUADS );
	b = e->renderAmount;
	glColor3f( b, b, b );
	switch( e->customData ) {
		case 0:
			glaDrawString( 0,0,0, 0.04f,0.04f,0.04f, "april 2000, norway..." );
			break;
		case 1:
			glaDrawString( 0,0,0, 0.04f,0.04f,0.04f, "you're not dreaming..." );
			break;
		case 2:
			glaDrawString( 0,0,0, 0.04f,0.04f,0.04f, "vi kan it och multimedia! :)" );
			break;
	};
	glEnd();

};

void p_hanzon_run( EVENT *e ) {
	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();

	float b = 0.3f * e->renderAmount;

	// rita hanson
	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);
	glBlendFunc( GL_ZERO, GL_ONE_MINUS_SRC_COLOR );
	glEnable( GL_BLEND );
	glaSetTexture( GIF_SILU );
	glBegin( GL_QUADS );
	glColor3f( b, b, b );
	glaQuadR( -0.5f,-0.1f,0, 0, 0.4f, 1.0f, 0.01f, 0.99f, 0.99f,0.01f );
	glEnd();
};
