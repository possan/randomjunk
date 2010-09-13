// wireframe landscape
#include "almosteverything.h"
#include "images.h"

void pw_drawbuilding( float x, float y, float z, float height, float r1, float r2, float t ) {
	 //glDisable( GL_TEXTURE_2D );

	glColor3f( 0.4f, 0.2f, 0 );///(1.0f+10*height), 0 );

//lTexCoord2f( 0, 0 ); glVertex3f( x-r1, y z-r1 );
//lTexCoord2f( 1, 0 ); glVertex3f( x+r1, y, z-r1 );
//lTexCoord2f( 1, 1 ); glVertex3f( x+r1, y, z+r1 );
//lTexCoord2f( 0, 1 ); glVertex3f( x-r1, y, z+r1 );

	glTexCoord2f( 0, 0 ); glVertex3f( x-r2, y+height, z-r2 );
	glTexCoord2f( 1, 0 ); glVertex3f( x+r2, y+height, z-r2 );
	glTexCoord2f( 1, 1 ); glVertex3f( x+r2, y+height, z+r2 );
	glTexCoord2f( 0, 1 ); glVertex3f( x-r2, y+height, z+r2 );

	glTexCoord2f( 0, 0 ); glVertex3f( x-r1, y, z-r1 );
	glTexCoord2f( 1, 0 ); glVertex3f( x-r2, y+height, z-r2 );
	glTexCoord2f( 1, 1 ); glVertex3f( x-r2, y+height, z+r2 );
	glTexCoord2f( 0, 1 ); glVertex3f( x-r1, y, z+r1 );

	glTexCoord2f( 0, 0 ); glVertex3f( x+r2, y+height, z-r2 );
	glTexCoord2f( 1, 0 ); glVertex3f( x+r1, y, z-r1 );
	glTexCoord2f( 1, 1 ); glVertex3f( x+r1, y, z+r1 );
	glTexCoord2f( 0, 1 ); glVertex3f( x+r2, y+height, z+r2 );

	glTexCoord2f( 0, 0 ); glVertex3f( x-r1, y, z-r1 );
	glTexCoord2f( 1, 0 ); glVertex3f( x-r2, y+height, z-r2 );
	glTexCoord2f( 1, 1 ); glVertex3f( x+r2, y+height, z-r2 );
	glTexCoord2f( 0, 1 ); glVertex3f( x+r1, y, z-r1 );

	glTexCoord2f( 0, 0 ); glVertex3f( x-r2, y+height, z+r2 );
	glTexCoord2f( 1, 0 ); glVertex3f( x-r1, y, z+r1 );
	glTexCoord2f( 1, 1 ); glVertex3f( x+r1, y, z+r1 );
	glTexCoord2f( 0, 1 ); glVertex3f( x+r2, y+height, z+r2 );

};

void pw_draw_tile( float x, float y, float z, float r, float b ) {
	glColor3f( 0.1f*b, 0.2f*b, 0.3f*b );

	glTexCoord2f( 0,0 );
	glVertex3f( x-r, y, z-r );

	glTexCoord2f( 1,0 );
	glVertex3f( x+r, y, z-r );

	glTexCoord2f( 1,1 );
	glVertex3f( x+r, y, z+r );

	glTexCoord2f( 0,1 );
	glVertex3f( x-r, y, z+r );
};

void pw_draw_obj( float x, float y, float z, float r ) {

	//float r2 = r/4.0f;
#define r2 r
	glBegin( GL_QUADS );

	glColor3f( 0.4f, 0.3f, 0.2f );
	glTexCoord2f( 0,0 ); glVertex3f( x-r, y-r, z-r2 );
	glTexCoord2f( 1,0 ); glVertex3f( x+r, y-r, z-r2 );
	glTexCoord2f( 1,1 ); glVertex3f( x+r, y-r, z+r2 );
	glTexCoord2f( 0,1 ); glVertex3f( x-r, y-r, z+r2 );
	glTexCoord2f( 0,0 ); glVertex3f( x-r, y+r, z-r2 );
	glTexCoord2f( 1,0 ); glVertex3f( x+r, y+r, z-r2 );
	glTexCoord2f( 1,1 ); glVertex3f( x+r, y+r, z+r2 );
	glTexCoord2f( 0,1 ); glVertex3f( x-r, y+r, z+r2 );
	glTexCoord2f( 0,0 ); glVertex3f( x-r, y-r, z-r2 );
	glTexCoord2f( 1,0 ); glVertex3f( x+r, y-r, z-r2 );
	glTexCoord2f( 1,1 ); glVertex3f( x+r, y+r, z-r2 );
	glTexCoord2f( 0,1 ); glVertex3f( x-r, y+r, z-r2 );
	glTexCoord2f( 0,0 ); glVertex3f( x-r, y-r, z+r2 );
	glTexCoord2f( 1,0 ); glVertex3f( x+r, y-r, z+r2 );
	glTexCoord2f( 1,1 ); glVertex3f( x+r, y+r, z+r2 );
	glTexCoord2f( 0,1 ); glVertex3f( x-r, y+r, z+r2 );
	glTexCoord2f( 0,0 ); glVertex3f( x-r, y-r, z-r2 );
	glTexCoord2f( 1,0 ); glVertex3f( x-r, y-r, z+r2 );
	glTexCoord2f( 1,1 ); glVertex3f( x-r, y+r, z+r2 );
	glTexCoord2f( 0,1 ); glVertex3f( x-r, y+r, z-r2 );
	glTexCoord2f( 0,0 ); glVertex3f( x+r, y-r, z-r2 );
	glTexCoord2f( 1,0 ); glVertex3f( x+r, y-r, z+r2 );
	glTexCoord2f( 1,1 ); glVertex3f( x+r, y+r, z+r2 );
	glTexCoord2f( 0,1 ); glVertex3f( x+r, y+r, z-r2 );

	glColor3f( 0.075f, 0.15f, 0.2f );
	glTexCoord2f( 0,0 ); glVertex3f( x-r, -y-r, z-r2 );
	glTexCoord2f( 1,0 ); glVertex3f( x+r, -y-r, z-r2 );
	glTexCoord2f( 1,1 ); glVertex3f( x+r, -y-r, z+r2 );
	glTexCoord2f( 0,1 ); glVertex3f( x-r, -y-r, z+r2 );
	glTexCoord2f( 0,0 ); glVertex3f( x-r, -y+r, z-r2 );
	glTexCoord2f( 1,0 ); glVertex3f( x+r, -y+r, z-r2 );
	glTexCoord2f( 1,1 ); glVertex3f( x+r, -y+r, z+r2 );
	glTexCoord2f( 0,1 ); glVertex3f( x-r, -y+r, z+r2 );
	glTexCoord2f( 0,0 ); glVertex3f( x-r, -y-r, z-r2 );
	glTexCoord2f( 1,0 ); glVertex3f( x+r, -y-r, z-r2 );
	glTexCoord2f( 1,1 ); glVertex3f( x+r, -y+r, z-r2 );
	glTexCoord2f( 0,1 ); glVertex3f( x-r, -y+r, z-r2 );
	glTexCoord2f( 0,0 ); glVertex3f( x-r, -y-r, z+r2 );
	glTexCoord2f( 1,0 ); glVertex3f( x+r, -y-r, z+r2 );
	glTexCoord2f( 1,1 ); glVertex3f( x+r, -y+r, z+r2 );
	glTexCoord2f( 0,1 ); glVertex3f( x-r, -y+r, z+r2 );
	glTexCoord2f( 0,0 ); glVertex3f( x-r, -y-r, z-r2 );
	glTexCoord2f( 1,0 ); glVertex3f( x-r, -y-r, z+r2 );
	glTexCoord2f( 1,1 ); glVertex3f( x-r, -y+r, z+r2 );
	glTexCoord2f( 0,1 ); glVertex3f( x-r, -y+r, z-r2 );
	glTexCoord2f( 0,0 ); glVertex3f( x+r, -y-r, z-r2 );
	glTexCoord2f( 1,0 ); glVertex3f( x+r, -y-r, z+r2 );
	glTexCoord2f( 1,1 ); glVertex3f( x+r, -y+r, z+r2 );
	glTexCoord2f( 0,1 ); glVertex3f( x+r, -y+r, z-r2 );

	glEnd();
#undef r2
};

void pw_draw_world( float t, float b ) {
	float i, j;
	
	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );
	glaSetTexture( GIF_GRID );

	glBegin( GL_QUADS );
	for( j=-12; j<12; j++ ) {
		for( i=-12; i<12; i++ ) {
			
			float b = 1.0f - ((float)sqrt( i*i+j*j)/10.0f );
			if( b>0 )
				pw_draw_tile( i, 0, j, 0.5f, b );
		};
	};
	glEnd();

	float r, x;

	r = 0.4f;

	glPushMatrix();

	glRotatef( t*180, 0, 1, 0 );

	x = -2.0f;
	pw_draw_obj( x-1, 5, 0, r );
	pw_draw_obj( x-1, 4, 0, r );
	pw_draw_obj( x-1, 3, 0, r );
	pw_draw_obj( x+0, 3, 0, r );
	pw_draw_obj( x+1, 3, 0, r );
	pw_draw_obj( x-1, 2, 0, r );
	pw_draw_obj( x+1, 2, 0, r );
	pw_draw_obj( x-1, 1, 0, r );
	pw_draw_obj( x+0, 1, 0, r );
	pw_draw_obj( x+1, 1, 0, r );

	x = 2.0f;
	pw_draw_obj( x-1, 5, 0, r );
	pw_draw_obj( x+1, 5, 0, r );
	pw_draw_obj( x-1, 4, 0, r );
	pw_draw_obj( x+1, 4, 0, r );
	pw_draw_obj( x-1, 3, 0, r );
	pw_draw_obj( x+0, 3, 0, r );
	pw_draw_obj( x+1, 3, 0, r );
	pw_draw_obj( x+1, 2, 0, r );
	pw_draw_obj( x+1, 1, 0, r );
 

	glPopMatrix();

	glaSetTexture( GIF_PSIKORP4 );
	glBegin( GL_QUADS );

	float xs = 5 + 2.5f*(float)cos( t*2.5 );
	float ys = 4 + 2.0f*(float)sin( t*3.4 );

	glColor3f( 0.6f, 0.3f, 0.2f );
	if( fmod(t,2.0f)>1.25f ) {
		xs *= 1.5f;
		ys *= 1.5f;
		glColor3f( 1.0f, 0.4f, 0.2f );
	};
		////+(0.2f*((fmod(b,2.0f)-1.25f)*1.2f));//- 0.3f/(1+fmod(b,2.0f));

		glTexCoord2f( 0, 1 ); glVertex3f( -1.5f*xs, 7, -1*ys );
		glTexCoord2f( 1, 1 ); glVertex3f(  1.5f*xs, 7, -1*ys );
		glTexCoord2f( 1, 0 ); glVertex3f(  1.5f*xs, 7,  1*ys );
		glTexCoord2f( 0, 0 ); glVertex3f( -1.5f*xs, 7,  1*ys );

	glColor3f( 0.1f, 0.2f, 0.3f );
	if( fmod(t,2.0f)>1.25f ) {
		glColor3f( 0.2f, 0.3f, 0.5f );
	};

		glTexCoord2f( 0, 1 ); glVertex3f( -1.5f*xs, -7, -1*ys );
		glTexCoord2f( 1, 1 ); glVertex3f(  1.5f*xs, -7, -1*ys );
		glTexCoord2f( 1, 0 ); glVertex3f(  1.5f*xs, -7,  1*ys );
		glTexCoord2f( 0, 0 ); glVertex3f( -1.5f*xs, -7,  1*ys );

		for( i=0; i<3; i+=0.15f ) {

			float s = 1 + (i/5.0f);
			float b = 0.2f / (1+i*3.0f);
			glColor3f( b, 0.4f*b, b*0.2f );
			glTexCoord2f( 0, 1 ); glVertex3f( -1.5f*xs*s, 7-i, -1*ys*s );
			glTexCoord2f( 1, 1 ); glVertex3f(  1.5f*xs*s, 7-i, -1*ys*s );
			glTexCoord2f( 1, 0 ); glVertex3f(  1.5f*xs*s, 7-i,  1*ys*s );
			glTexCoord2f( 0, 0 ); glVertex3f( -1.5f*xs*s, 7-i,  1*ys*s );

			glColor3f( 0.1f*b, 0.2f*b, 0.3f*b );
			glTexCoord2f( 0, 1 ); glVertex3f( -1.5f*xs*s, -7+i, -1*ys*s );
			glTexCoord2f( 1, 1 ); glVertex3f(  1.5f*xs*s, -7+i, -1*ys*s );
			glTexCoord2f( 1, 0 ); glVertex3f(  1.5f*xs*s, -7+i,  1*ys*s );
			glTexCoord2f( 0, 0 ); glVertex3f( -1.5f*xs*s, -7+i,  1*ys*s );
		};

		glColor3f( 0.4f, 0.2f, 0.1f );
		glTexCoord2f( 0, 1 ); glVertex3f( -1.5f*xs*2, 0, -1*ys*2 );
		glTexCoord2f( 1, 1 ); glVertex3f(  1.5f*xs*2, 0, -1*ys*2 );
		glTexCoord2f( 1, 0 ); glVertex3f(  1.5f*xs*2, 0,  1*ys*2 );
		glTexCoord2f( 0, 0 ); glVertex3f( -1.5f*xs*2, 0,  1*ys*2 );

	glEnd();

};

void p_wirelandscape_run( EVENT *e ) {

	float t, b;
/*
	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
	glTranslatef( 0, 0, -1 );

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();

	//glCullFace( GL_FRONT );*/
	glDisable( GL_CULL_FACE );

	//glClearDepth( 20 );
	glDisable( GL_DEPTH_TEST );
	//glDepthFunc( GL_LESS );

		t = e->localTime;
		b = e->localBeat;

		glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
	gluPerspective( 120, 4/3, 0.001f, 100.0f );


		glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
		float r = 1;
		//if( fmod(b,2.0f)>1.25f ) r = 0.9f;//+(0.2f*((fmod(b,2.0f)-1.25f)*1.2f));//- 0.3f/(1+fmod(b,2.0f));

		gluLookAt( r*6*cos(t/5), 3.0 + r*0.3*cos(t/3), r*7*sin(t/3), 0, 1.0f+0.5f*cos(t/3), 0, cos(t/4), 1, sin(t/5) );

		glEnable( GL_BLEND );
		glBlendFunc( GL_ONE, GL_ONE );

		//glEnable( GL_FOG );
		pw_draw_world(t,b);

// 	glLoadIdentity();
		// rita introflashnnn

};
