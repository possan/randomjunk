// big f* landscape

// flareblob
#include "..\almosteverything.h"
#include "..\images.h"

void plobj( float *x, float *y, float *z, float time );

void p_landscape_run( EVENT *e ) {

	float t;

	float f_c[] = { 1,1,1 };

	glClearDepth( 20 );
	glDisable( GL_DEPTH_TEST );
	glDepthFunc( GL_LESS );

	glEnable( GL_FOG );
	glFogi( GL_FOG_MODE, GL_EXP2 );
	glFogf( GL_FOG_START, 10.0 );
	glFogf( GL_FOG_END, 15.0 );
	glFogf( GL_FOG_DENSITY, 0.25 );
	glFogfv( GL_FOG_COLOR, (float *)f_c );

	//glDisable( GL_DEPTH_TEST );

		t = e->localTime;
		//b = glaBeat();
		
		glMatrixMode( GL_PROJECTION );
		glLoadIdentity();
		gluPerspective( 70, 4/3, 1, 1000 );
		gluLookAt( 2*cos(t/5), -1.0 + 0.5*cos(t/3), 2*sin(t/6), 0, 0, 0, 0, 1, 0 );
	//	glTranslatef( 0, 0, -1 );
		
		glMatrixMode( GL_MODELVIEW );
		glLoadIdentity();
		//glTranslatef( 0, 0, -20 );

		glDisable( GL_BLEND );
		glBlendFunc( GL_ONE, GL_ONE );

		//glRotatef( t*71, 1,0,0 );
		//glRotatef( t*53, 0,1,0 );
		//		glRotatef( t*45, 0,0,1 );
		//glDisable( GL_TEXTURE_2D );

		// draw sky...
		{
			glaSetTexture( GIF_LANDSCAPE );
			glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );
			glPushMatrix();
			glBegin( GL_QUADS );
			glColor3f( 1, 1, 1 );
			for( int j=-10; j<10; j++ ) {
				for( int i=-10; i<10; i++ ) {
					
					glTexCoord2f( (float)(i) / 3.0f, (float)(j)/3.0f );
					glVertex3f( (float)i, -2, (float)j );

					glTexCoord2f( (float)(i+1) / 3.0f, (float)(j)/3.0f );
					glVertex3f( (float)i+1, -2, (float)j );

					glTexCoord2f( (float)(i+1) / 3.0f, (float)(j+1)/3.0f );
					glVertex3f( (float)i+1, -2, (float)j+1 );

					glTexCoord2f( (float)(i) / 3.0f, (float)(j+1)/3.0f );
					glVertex3f( (float)i, -2, (float)j+1 );

				};
			};
			glEnd();
			glPopMatrix();
		};

		// draw schkyy
		{
			glaSetTexture( GIF_CLOUDS );
			glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_BLEND );
			glPushMatrix();
			glBegin( GL_QUADS );
			glColor3f( 0, 0.25f, 0.5f );

			float ud = t/20;
			float vd = t/30;
			int i, j;

			for( j=-10; j<10; j++ ) {
				for( i=-10; i<10; i++ ) {
				
					glTexCoord2f( ud+(float)(i) / 10.0f, vd+(float)(j)/10.0f );
					glVertex3f( (float)i, 1, (float)j );

					glTexCoord2f( ud+(float)(i+1) / 10.0f, vd+(float)(j)/10.0f );
					glVertex3f( (float)i+1, 1, (float)j );

					glTexCoord2f( ud+(float)(i+1) / 10.0f, vd+(float)(j+1)/10.0f );
					glVertex3f( (float)i+1, 1, (float)j+1 );

					glTexCoord2f( ud+(float)(i) / 10.0f, vd+(float)(j+1)/10.0f );
					glVertex3f( (float)i, 1, (float)j+1 );
				};
			};
			glEnd();

			glEnable( GL_BLEND );
			glBegin( GL_QUADS );
			glColor3f( 0.2f, 0.4f, 0.6f );

			ud = t/10;
				
			vd = t/20;
			
			for( j=-10; j<10; j++ ) {
				for( i=-10; i<10; i++ ) {

					glTexCoord2f( ud+(float)(i) / 6.0f, vd+(float)(j)/6.0f );
					glVertex3f( (float)i, 0.6f, (float)j );

					glTexCoord2f( ud+(float)(i+1) / 6.0f, vd+(float)(j)/6.0f );
					glVertex3f( (float)i+1, 0.6f, (float)j );

					glTexCoord2f( ud+(float)(i+1) / 6.0f, vd+(float)(j+1)/6.0f );
					glVertex3f( (float)i+1, 0.6f, (float)j+1 );

					glTexCoord2f( ud+(float)(i) / 6.0f, vd+(float)(j+1)/6.0f );
					glVertex3f( (float)i, 0.6f, (float)j+1 );

				};
			};
			glEnd();
			glPopMatrix();
		};

		{
			glDisable( GL_TEXTURE_2D );
			glBegin( GL_QUADS );
			glColor3f( 1,1,1 );
			glVertex3f( -10, 1, -10 );
			glVertex3f(  10, 1, -10 );
			glVertex3f(  10, -2, -10 );
			glVertex3f( -10, -2, -10 );

			glVertex3f( -10, 1, -10 );
			glVertex3f( -10, 1,  10 );
			glVertex3f( -10, -2,  10 );
			glVertex3f( -10, -2, -10 );

			glVertex3f(  10, 1, -10 );
			glVertex3f(  10, 1,  10 );
			glVertex3f(  10, -2,  10 );
			glVertex3f(  10, -2, -10 );

			glEnd();
		};

		glaSetTexture( GIF_TITLE );
		glLoadIdentity();

		glMatrixMode( GL_PROJECTION );
		glLoadIdentity();

/*		// rita introflashnnn
		if( t<2 ) {
			float f = 1-(t*t/4);

			glDisable( GL_TEXTURE_2D );
			glBlendFunc( GL_ONE, GL_ONE );
			glEnable( GL_BLEND );
			glBegin( GL_QUADS );

			glColor3f( f, f, f );

			glVertex3f( -1, -1.00f, 0 );
			glVertex3f(  1, -1.00f, 0 );
			glVertex3f(  1,  1.00f, 0 );
			glVertex3f( -1,  1.00f, 0 );

			glEnd();
		};
*/
		// rita loggan "glAss"
		if( t>3 ) {

			glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_BLEND );
			glBlendFunc( GL_ZERO, GL_ONE_MINUS_SRC_COLOR );
			glEnable( GL_BLEND );

			float cd = (t-3);
			//if( cd<1 ) cd=1;

			float s = 0.7f + (3/(cd*cd));
			if( s<0.7f ) s=0.7f;
			
			glBegin( GL_QUADS );
			
			float f = (t-1.5f)/3;
			if( f>1 ) f = 1;
			glColor3f( f, f, f );

			glTexCoord2f( 0, 1 );
			glVertex3f( -1.024f*s, -0.256f*s, 0 );
			glTexCoord2f( 1, 1 );
			glVertex3f(  1.024f*s, -0.256f*s, 0 );
			glTexCoord2f( 1, 0 );
			glVertex3f(  1.024f*s,  0.256f*s, 0 );
			glTexCoord2f( 0, 0 );
			glVertex3f( -1.024f*s,  0.256f*s, 0 );

			glEnd();

		};


/*		// draw object...
		{
			glDisable( GL_TEXTURE_2D );
			glPushMatrix();
			//glRotatef( t*100, 0, 1, 0 );

			glEnable( GL_BLEND );
			glDisable( GL_BLEND );
			
			float ud = t/20;
			float vd = t/30;
			float i, j;


			for( i=0; i<3; i+= 0.01f) {
			
				float xx, yy, zz;
				VECTOR a, b, c, u;

				plobj( &a.x, &a.y, &a.z, t-i );
				plobj( &b.x, &b.y, &b.z, (t-i)+0.01f );
				c = a;
				vector_sub( &c, &b );
				float l = 0.3/(1+vector_length( &c ));
				vector_normalize( &c );

				//c.x = a.x; c.y = a.y; c.z = a.z;
				u.x = b.x; u.y = b.y; u.z = b.z;

				MATRIX m;
				matrix_from_vectors( &c, &u, &m );

				glPushMatrix();

				//glTranslatef( m.el[0], 
				glMultMatrixf( (float*)&m.el );
				glTranslatef( c.x, c.y, c.z );

			glBegin( GL_LINES );

				glColor3f( 1, 0, 0 );
				glVertex3f( -l, 0, 0 );
				glVertex3f( l, 0, 0 );
				glColor3f( 0, 0, 1 );
				glVertex3f( 0, -l, 0 );
				glVertex3f( 0, l, 0 );

							glEnd();

							glPopMatrix();

			};
			glPopMatrix();
		};*/

	glDisable( GL_FOG );
	
};

void plobj( float *x, float *y, float *z, float time ) {


	float xr, yr, zr;

	xr = 1.0f*(float)cos(time/3);
	yr = 1.0f*(float)cos(time/2);
	zr = 1.0f*(float)sin(time/2.75f);

	*x = xr * (float)sin( time*3.0f ) - 0.5f*yr*(float)cos( time*1.5f );
	*y = yr * (float)cos( time*2.0f ) - 0.5f*zr*(float)cos( time*1.2f );
	*z = zr * (float)sin( time*3.3f ) - 0.5f*zr*(float)sin( time*1.3f );
};