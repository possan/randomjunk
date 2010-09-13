// aftershit
#include "..\almosteverything.h"
#include "..\images.h"

void pas_drawbackground( float t1, float t2, float scale, float br ) {
	int i, j;

	// höjdmap 
	for( j=0; j<30; j++ ) {
		for( i=0; i<40; i++ ) {
			long o = j*40+i;
			_pd[ o ] = 2;
			_pd[ o ] += 3*(float)cos( (j-t2)/5.4f ) * (float)cos( (i-t1)/6.1f );
			_pd[ o ] += 2*(float)sin( (i-t1)/3.4f );
			_pd[ o ] += 2*(float)cos( (j-t2)/4.0f );
			_pu[ o ] = 0.5f + (((float)(i-20) * scale ) / 20.0f);
			_pv[ o ] = 0.5f + (((float)(j-15) * scale ) / 15.0f);
		};
	};

	// envmap
	for( j=1; j<29; j++ ) {
		for( i=1; i<39; i++ ) {
			long o = j*40+i;
			float ny = _pd[o+40] - _pd[o-40];
			float nx = _pd[o+1] - _pd[o-1];
			_pu[ o ] += (nx / 3.0f);
			_pv[ o ] += (ny / 3.0f);
		};
	};
	
	// render
	glBegin( GL_QUADS );
	for( j=1; j<29; j++ ) {
		for( i=1; i<39; i++ ) {
			long o = (j*40)+i;
			float x = ((float)i-20.0f)/20.0f;
			float y = ((float)j-15.0f)/15.0f;
			float x2 = ((float)i-19.0f)/20.0f;
			float y2 = ((float)j-14.0f)/15.0f;
			x *= 1.07f;
			y *= 1.07f;
			x2 *= 1.07f;
			y2 *= 1.07f;

			glColor3f( br, br, br );
			
			glTexCoord2f( _pu[o], 1-_pv[o] );
			glVertex3f( x, y, 0 );

			glTexCoord2f( _pu[o+1], 1-_pv[o+1] );
			glVertex3f( x2, y, 0 );

			glTexCoord2f( _pu[o+41], 1-_pv[o+41] );
			glVertex3f( x2, y2, 0 );

			glTexCoord2f( _pu[o+40], 1-_pv[o+40] );
			glVertex3f( x, y2, 0 );
		};
	};
	glEnd();
};

void pas_renderfade( float t ) {
	glDisable( GL_TEXTURE_2D );
	glBegin( GL_QUADS );
	float magic = 0.5f / 10.0f;
	for( float i=0; i<=20; i++ ) {
		
		float t2 = t - i/5.0f;
		if( t2>0 ) {
			if( t2>1.0f ) t2=1.0f;

			float x = ((float)i-10.5f)/10.0f;
			float w = magic - (t2);
			w = t2*(magic);
			if (w>magic ) w=magic;

			//float b = t2;
			glColor3f( t2,t2,t2 );
			
			glVertex3f( x-w, -1, 0 );
			glVertex3f( x+w, -1, 0 );
			glVertex3f( x+w, 1, 0 );
			glVertex3f( x-w, 1, 0 );
		};
	};
	glEnd();
};

void pas_drawtitle( float t ) {
		//glColor3f( b*1*s3, b*s3*0.5f + b*0.3f*(float)sin(time*7+y), b*s3*0.5f + b*0.3f*(float)cos(time*7-y) );

	float fadein = 0;
	if( t<2 )
		fadein = 2.0f - 2.0f*(float)sin( t * 3.142f / 4.0f );
	if( t>4 )
		fadein = 2.0f - 2.0f*(float)sin( (6-t) * 3.142f / 4.0f );

	glaSetTexture( GIF_PSIKORP3 );

	glBegin( GL_QUADS );
	glColor3f( 1, 1, 1 );
	glaQuadR( fadein, 0, 0, 0, 0.6f, 0.2f, 0, 1, 1, 0 );
	glEnd();

	glaSetTexture( GIF_FONT );

	glBegin( GL_QUADS );
	glColor3f( 1, 1, 1 );
	glaDrawString( -fadein, 0.3f, 0, 0.033f, 0.033f, 0.1f, "glass  (c)2000" );	
	//glaDrawString( 0, -0.3f+fadein, 0, 0.033f, 0.033f, 0.1f, "penguins sucks!" );	
	glaDrawString( 0, -0.3f+fadein, 0, 0.025f, 0.025f, 0.05f, "r.i.p lolo ferrari" );	
	glEnd();
};

void pas_drawcreds( float t ) {
		//glColor3f( b*1*s3, b*s3*0.5f + b*0.3f*(float)sin(time*7+y), b*s3*0.5f + b*0.3f*(float)cos(time*7-y) );

	float fadein = 0;
	if( t<2 )
		fadein = 2.0f - 2.0f*(float)sin( t * 3.142f / 4.0f );
	if( t>4 )
		fadein = 2.0f - 2.0f*(float)sin( (6-t) * 3.142f / 4.0f );

	glaSetTexture( GIF_FONT );
	glBegin( GL_QUADS );
	glColor3f( 1, 1, 1 );

	glaDrawString( -fadein*1.7f, 0.6f, 0, 0.03f, 0.03f, 0.04f, "illuminator" );	
	glaDrawString( fadein*1.6f,  0.5f, 0, 0.03f, 0.03f, 0.04f, "code, graphics" );	
	glaDrawString( 0,       0.05f-fadein*1.1f, 0, 0.03f, 0.03f, 0.04f, "h-ecs" );	
	glaDrawString( fadein*1.97f,  -0.05f, 0, 0.03f, 0.03f, 0.04f, "music, graphics" );	
	glaDrawString( 0,       -0.5f+fadein*0.7f, 0, 0.03f, 0.03f, 0.04f, "hanzon, summlan, weird ed" );	
	glaDrawString( fadein*1.42f,  -0.6f-fadein*0.84f, 0, 0.03f, 0.03f, 0.04f, "ideas" );	
	glEnd();
};

void p_aftershit_run( EVENT *e ) {

	float t;

	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
	glTranslatef( 0, 0, 0 );

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();

	glDisable( GL_CULL_FACE );
	glClearColor( 0,0,0,0 );
	glDisable( GL_FOG );

	glEnable( GL_BLEND );
	glBlendFunc( GL_ONE, GL_ONE );
	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

	//glDisable( GL_DEPTH_TEST );

		t = e->localTime;

		//pt_draw_dudes( t );

		//for( float k=0; k<1; k+=0.33f ) {
//			float k=0;
			//float t2 = t - (k/10.0f);

			/*if( k<1 ) glaSetTexture( GIF_CLOUDS ); 
			else */
			glaSetTexture( GIF_CLOUDS );

//			pas_drawbackground( t2*13, t2*17, 1.0f + k*2.0f, 1.0f - (k/4.0f) );
			pas_drawbackground( t*10, t*7, 1.0f, 0.25f );
		//};

//		glBlendFunc( GL_ONE, GL_ONE_MINUS_SRC_COLOR );

		if( t>4 && t<10 )
			pas_drawtitle( t-4.0f );

		if( t>10 && t<16 )
			pas_drawcreds( t-10.0f );

		if( t<1.25f ) pas_renderfade( (1.25f-t)*4 );
	
};