// big f* landscape

// flareblob
#include "almosteverything.h"
#include "images.h"
#include <stdlib.h>

//#define PARTICLES_GROUND 101
//#define PARTICLES_PARTICLE 102
//#define PARTICLES_GRID 103

typedef struct {
	float x, y, z;
	float nx, ny, nz;
	float life;
//	float radius;
} pparticle;

#define NFRAMES 256
#define NPARTICLES 512

pparticle particle[NFRAMES][NPARTICLES];

#define STUDSMAKRO( __pv, __pnv, __min, __max ) \
	if( __pv<__min ) { __pv = __min; __pnv = -__pnv*0.8f; }; \
	if( __pv>__max ) { __pv = __max; __pnv = -__pnv*0.8f; };


void p_particles_init() {

//	glaUploadGif( PARTICLES_GROUND, (unsigned char *)&gif_clouds, 1 );
//	glaUploadGif( PARTICLES_PARTICLE, (unsigned char *)&gif_flare, 1 );
//	glaUploadGif( PARTICLES_GRID, (unsigned char *)&gif_grid, 1 );

	float frame, nr;

	// initialize particles...
	for( nr=1; nr<NPARTICLES; nr++ ) {
		pparticle *p = &particle[0][(int)nr];
		p->x = (float)(rand()%300) / 150.0f - 0.5f;
		p->y = (float)(rand()%300) / 150.0f + 0.5f;
		p->z = (float)(rand()%300) / 150.0f - 0.5f;
		p->nx = (float)(rand()%100-50) / 500.0f;
		p->ny = (float)(rand()%100-50) / 200.0f;
		p->nz = (float)(rand()%100-50) / 500.0f;

		float s = (float)(rand()%200+50) / 100.0f;

		p->nx *= s;
		p->ny *= s;
		p->nz *= s;

		p->life = (float)(rand()%256);
	};

	// simulate particle flow...
	for( frame=1; frame<NFRAMES; frame++ ) {

		for( nr=0; nr<NPARTICLES; nr++ ) {

			pparticle *p = &particle[(int)frame][(int)nr];
			pparticle *lp = &particle[(int)frame-1][(int)nr];

			// luftmotstånd...
			p->nx = lp->nx * 0.98f;
			p->ny = lp->ny * 0.98f;
			p->nz = lp->nz * 0.98f;

			// gravitation...
			p->ny -= 0.0089f;

			// förflytta...
			p->x = lp->x + p->nx;
			p->y = lp->y + p->ny;
			p->z = lp->z + p->nz;

			// studsa...
			STUDSMAKRO( p->y, p->ny, 0, 100 );
			STUDSMAKRO( p->x, p->nx, -1.5, 1.5 );
			STUDSMAKRO( p->z, p->nz, -1.5, 1.5 );

			// lev...
			p->life = lp->life - 1;

		};

	};

};

void p_particles_kill() {
};

void draw_shit( float t ) {

		float fframe = t*16;

		int iframe = (int)fframe;
		float fp = fframe - (float)iframe;//fframe, 1.0f );
		float fpi = 1.0f - fp;
		//fp = 0;
		//fpi = 1;

		glDisable( GL_FOG );
		glEnable( GL_BLEND );

		glaSetTexture( GIF_FLARE );

		if( iframe>=0 && iframe<(NFRAMES-1) )
		for( int i=0; i<NPARTICLES; i++ ) {

			VECTOR t, tn;

			t.x = (particle[iframe][i].x * fpi) + (particle[iframe+1][i].x * fp);
			t.y = (particle[iframe][i].y * fpi) + (particle[iframe+1][i].y * fp);
			t.z = (particle[iframe][i].z * fpi) + (particle[iframe+1][i].z * fp);
			tn.x = (particle[iframe][i].nx * fpi) + (particle[iframe+1][i].nx * fp);
			tn.y = (particle[iframe][i].ny * fpi) + (particle[iframe+1][i].ny * fp);
			tn.z = (particle[iframe][i].nz * fpi) + (particle[iframe+1][i].nz * fp);

			float l = (particle[iframe][i].life * fpi) + (particle[iframe+1][i].life * fp);

			if( l>0 ) {

			float r = l / 1000.0f;

			glEnable( GL_TEXTURE_2D );
		glBegin( GL_QUADS );

			glColor3f( r*10, r*3, r*10 );

			r = 0.1f;
			glTexCoord2f( 0, 0 );	glVertex3f( t.x-r, t.y-r, t.z );
			glTexCoord2f( 1, 0 );	glVertex3f( t.x+r, t.y-r, t.z );
			glTexCoord2f( 1, 1 );	glVertex3f( t.x+r, t.y+r, t.z );
			glTexCoord2f( 0, 1 );	glVertex3f( t.x-r, t.y+r, t.z );

			glTexCoord2f( 0, 0 );	glVertex3f( t.x, t.y-r, t.z-r );
			glTexCoord2f( 1, 0 );	glVertex3f( t.x, t.y-r, t.z+r );
			glTexCoord2f( 1, 1 );	glVertex3f( t.x, t.y+r, t.z+r );
			glTexCoord2f( 0, 1 );	glVertex3f( t.x, t.y+r, t.z-r );

			glTexCoord2f( 0, 0 );	glVertex3f( t.x-r, t.y, t.z-r );
			glTexCoord2f( 1, 0 );	glVertex3f( t.x+r, t.y, t.z-r );
			glTexCoord2f( 1, 1 );	glVertex3f( t.x+r, t.y, t.z+r );
			glTexCoord2f( 0, 1 );	glVertex3f( t.x-r, t.y, t.z+r );

		glEnd();

		/*	glDisable( GL_TEXTURE_2D );
			glBegin( GL_POINTS );
		glColor3f( 1, 1, 1 );
		glVertex3f( t.x, t.y, t.z );

		//glColor3f( 0.25, 0.25, 0.25 );
		//glVertex3f( t.x, 0, t.z );

			glEnd();


			r *= 10;
			glDisable( GL_TEXTURE_2D );
		glBegin( GL_LINES );
		glColor3f( 1, 0, 0 );
		glVertex3f( t.x, t.y, t.z );
		glVertex3f( t.x+tn.x*r, t.y+tn.y*r, t.z+tn.z*r );
		glColor3f( 0.2, 0, 0 );
		glVertex3f( t.x, t.y, t.z );
		glVertex3f( t.x-tn.x*r, t.y-tn.y*r, t.z-tn.z*r );

		//glColor3f( 0.5, 0.5, 0.5 );
		//glVertex3f( t.x+tn.x*r, 0, t.z+tn.z*r );
		//glColor3f( 0.2, 0.2, 0.2 );
		//glVertex3f( t.x-tn.x*r, 0, t.z-tn.z*r );

		glEnd();*/

			};

		};

};

void draw_house( float x, float z, float r ) {
	float t = 3.0f;

	glEnable( GL_BLEND );

	glaSetTexture( GIF_GRID );

	glBegin( GL_QUADS );

	glColor3f( 0, 0.01f, 0 );
	glTexCoord2f( t, -t ); glVertex3f( x-r, r*2, z-r );
	glTexCoord2f( t, t ); glVertex3f( x-r, r*2, z+r );
	glColor3f( 0, 0.65f, 0 );
	glTexCoord2f( -t, t ); glVertex3f( x-r, 0, z+r );
	glTexCoord2f( -t, -t ); glVertex3f( x-r, 0, z-r );

	glColor3f( 0, 0.01f, 0 );
	glTexCoord2f( t, -t ); glVertex3f( x+r, r*2, z-r );
	glTexCoord2f( t, t ); glVertex3f( x+r, r*2, z+r );
	glColor3f( 0, 0.65f, 0 );
	glTexCoord2f( -t, t ); glVertex3f( x+r, 0, z+r );
	glTexCoord2f( -t, -t ); glVertex3f( x+r, 0, z-r );

	glColor3f( 0, 0.01f, 0 );
	glTexCoord2f( t, -t ); glVertex3f( x-r, r*2, z-r );
	glTexCoord2f( t, t ); glVertex3f( x+r, r*2, z-r );
	glColor3f( 0, 0.65f, 0 );
	glTexCoord2f( -t, t ); glVertex3f( x+r, 0, z-r );
	glTexCoord2f( -t, -t ); glVertex3f( x-r, 0, z-r );

	glColor3f( 0, 0.01f, 0 );
	glTexCoord2f( t, -t ); glVertex3f( x-r, r*2, z+r );
	glTexCoord2f( t, t ); glVertex3f( x+r, r*2, z+r );
	glColor3f( 0, 0.65f, 0 );
	glTexCoord2f( -t, t ); glVertex3f( x+r, 0, z+r );
	glTexCoord2f( -t, -t ); glVertex3f( x-r, 0, z+r );

	glEnd();

	/*
	glDisable( GL_TEXTURE_2D );

	glBegin( GL_LINES );

	glColor3f( 0.75, 1, 0.75 );

	for( float y = 0; y<3; y+=0.15 ) {
		float y2 = (y*y)/3.0f;
		glVertex3f( x-r, y2, z-r );
		glVertex3f( x+r, y2, z-r );

		glVertex3f( x+r, y2, z-r );
		glVertex3f( x+r, y2, z+r );

		glVertex3f( x+r, y2, z+r );
		glVertex3f( x-r, y2, z+r );

		glVertex3f( x-r, y2, z+r );
		glVertex3f( x-r, y2, z-r );
	};

	glEnd();*/
};

void draw_world() {

	glEnable( GL_FOG );

	glaSetTexture( GIF_GRID );
	glBegin( GL_QUADS );

	glColor3f( 0, 0.65f, 0 );

	glTexCoord2f( 0, 0 );		glVertex3f( -5, 0, -5 );
	glTexCoord2f( 10, 0 );		glVertex3f( 0, 0, -5 );
	glTexCoord2f( 10, 10 );		glVertex3f( 0, 0, 0 );
	glTexCoord2f( 0, 10 );		glVertex3f( -5, 0, 0 );

	glTexCoord2f( 0, 0 );		glVertex3f( 0, 0, -5 );
	glTexCoord2f( 10, 0 );		glVertex3f( 5, 0, -5 );
	glTexCoord2f( 10, 10 );		glVertex3f( 5, 0, 0 );
	glTexCoord2f( 0, 10 );		glVertex3f( 0, 0, 0 );

	glTexCoord2f( 0, 0 );		glVertex3f( -5, 0, 0 );
	glTexCoord2f( 10, 0 );		glVertex3f( 0, 0, 0 );
	glTexCoord2f( 10, 10 );		glVertex3f( 0, 0, 5 );
	glTexCoord2f( 0, 10 );		glVertex3f( -5, 0, 5 );

	glTexCoord2f( 0, 0 );		glVertex3f( 0, 0, 0 );
	glTexCoord2f( 10, 0 );		glVertex3f( 5, 0, 0 );
	glTexCoord2f( 10, 10 );		glVertex3f( 5, 0, 5 );
	glTexCoord2f( 0, 10 );		glVertex3f( 0, 0, 5 );

	glEnd();

	glDisable( GL_FOG );
};

void p_particles_run() {

	float t, b;

	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
	glTranslatef( 0, 0, -1 );

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();

	glCullFace( GL_FRONT );
	glDisable( GL_CULL_FACE );

	float f_c[] = { 0.0, 0.0, 0.0 };

	glClearColor( f_c[0], f_c[1], f_c[2], 1.0f );

	glClearDepth( 120 );
	glDisable( GL_DEPTH_TEST );
	glDepthFunc( GL_LESS );

	glEnable( GL_FOG );
	glFogi( GL_FOG_MODE, GL_LINEAR );
	glFogf( GL_FOG_START, 1.0f );
	glFogf( GL_FOG_END, 3.0f);
	glFogf( GL_FOG_DENSITY, 0.1f );
	glFogfv( GL_FOG_COLOR, (float *)f_c );

	glPointSize( 3 );

	//glDisable( GL_DEPTH_TEST );

	glaReset();
	do {
		t = glaTime();
		b = glaRelBeat()/2.0f;

		glMatrixMode( GL_PROJECTION );
	glLoadIdentity();

		glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();

		if( b<2 ) {
			float r = (2 - b)*(2- b)/4;
			glScalef( 1+r*4, 1-r, 1 );
		};

		if( b>14 ) {
			float r = (b-14)*(b-14)/4;
			glScalef( 1+r*4, 1+r*6, 1 );
		};

		gluPerspective( 120, 4/3, 0, 1000 );

		if( (b<4) || (b>=16 && b<20) ) {
			gluLookAt( 1.7f-sin(t/2.32f), 0.7f + 0.4f*-sin(t/6.3f), 1.7f*sin(t/3.4f),
						0.4f*cos(t/1.5f), 0.5f + 0.4f*cos(t/7.3f), 0.4f*sin(t/2.5f),
						cos( t/6.3), sin(t/6.4), 0 );
		} else if( b<8 ) {
			gluLookAt( 1.7f*-sin(t/1.5f+5), 0.7f + 0.4f*-sin(t/5.3f+3), 1.7*sin(t/3.4f),
						0.4f*cos(t/2.5f+8), 0.5f + 0.4f*cos(t/4.3f+5), 0.4*sin(t/5.5f+13),
						cos( t/6.3f), sin(t/6.4f), 0 );
		} else if( b<12 ) {
			gluLookAt( 2.2f*cos(t/1.32f), 1.1f + 0.5f*sin(t/6.3f), 2.5f*cos(t/2.4f),
						0.4f*sin(t/2.5f), 0.5f + 0.4f*-cos(t/5.3f), 0.4f*sin(t/3.5f),
						0, 1, 0 );//cos( t/6.3), sin(t/6.4), 0 );
		} else {
			gluLookAt( 2.2f*cos(t/2.32f+1), 1.1f + 0.5*sin(t/1.3f+5), 2.5f*cos(t/2.4f+10),
						0.4f*sin(t/3.5f+54), 0.5f + 0.4*-cos(t/5.3f+32), 0.4f*sin(t/1.5f+11),
						0, 1, 0 );//cos( t/6.3), sin(t/6.4), 0 );
		};

		glaCls(1);

		glEnable( GL_BLEND );
		glBlendFunc( GL_ONE, GL_ONE );

		//glPushMatrix();
		draw_world();

		draw_house( 0, 0, 1.5f );

		draw_shit( b );

	glLoadIdentity();
		// rita introflashnnn
		if( b>14 ) {

			float f = (b-14.0f) / 2.0f;

			if( f<0 ) f=0;
			if( f>1 ) f=1;

			glDisable( GL_TEXTURE_2D );
			//glBlendFunc( GL_ONE, GL_ONE );
			//glEnable( GL_BLEND );
			glBegin( GL_QUADS );
			glColor3f( f, f, f );
			glVertex3f( -1, -1, 0 );
			glVertex3f(  1, -1, 0 );
			glVertex3f(  1,  1, 0 );
			glVertex3f( -1,  1, 0 );
			glEnd();
		};

		glaBlit();

	} while( !glaExit() && b<16.0f );

	glDisable( GL_FOG );

};
