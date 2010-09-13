// intro code...
#include "..\almosteverything.h"
#include "..\images.h"
#include <stdlib.h>

#define INTRO_STARFIELD 5

#define FILLED

#define GRIDS 5
#define BOX_RADIUS 10.0f
#define BOX_SPACING 20.0f
#define MOVE_RADIUS 80.0f
#define TABSIDE 10

float   blob_strength[32*32*32];
unsigned char	blob_box[32*32*32];

typedef struct { float x, y, z, s; } VECTOR4;
#define UPP(x) fabs((x)*(x))

void Tetra( VECTOR4 v0, VECTOR4 v1, VECTOR4 v2, VECTOR4 v3 );
void Tetra2( VECTOR4 v0, VECTOR4 v1, VECTOR4 v2, VECTOR4 v3 );

void m_marching_cubes( float t );

void marching_cube( VECTOR c, int i,int j,int k );
void marching_cube2( VECTOR c, int i,int j,int k );

void p_intro_init() {
	// meka phast lite thexthurehr..

	glNewList( INTRO_STARFIELD, GL_COMPILE );
	srand(12345);
	for( int i=0; i<1000; i++ ) {
		float x, y, z, b;
		x = (float)((rand()%10000) - 5000);
		y = (float)((rand()%10000) - 5000);
		z = (float)((rand()%10000) - 5000);

		x /= 500.0f;
		y /= 500.0f;
		z /= 500.0f;

		b = (float)(rand()%255);
		b /= 256.0f;

		glColor3f( b, b, b );
		glVertex3f( x, y, z );

	};
	glEndList();

};

void p_intro_kill() {
};

//ng tex[32*32];

void pidt( char *text, float deltatime ) {

	float x, s;
	float s2 = 1.4f+(deltatime*deltatime*deltatime);
	if( s2>1.0f ) s2=1;


	float a = 2.0f - (deltatime / 1.0f);

	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

	glBlendFunc( GL_ZERO, GL_ONE_MINUS_SRC_COLOR );
	glBegin( GL_QUADS );

	glColor3f( 1*a, 0, 1*a );
	glaDrawString( 0, 0, 0, 0.06f*s2, 0.06f*s2, 0.08f*s2, text );

/*	x = 0.3*sin(deltatime*2.587f);
	s = 0.1*cos(deltatime*3.013f);
	glColor3f( 0.2*a, 0.2*a, 0.1*a );
	glaDrawString( x*s2, 0, 0, 0.12*s2, 0.12*s2, s*s2, text );

	x = 0.3*cos(deltatime*3.796f);
	s = 0.1*sin(deltatime*2.935f);
	glColor3f( 0.1*a, 0.1*a, 0.05*a );
	glaDrawString( x*s2, 0, 0, 0.22*s2, 0.22*s2, s, text );*/

	glEnd();

	glBlendFunc( GL_ONE, GL_ONE );
	glBegin( GL_QUADS );

	glColor3f( 1*a, 1*a, 1*a );
	glaDrawString( 0, 0, 0, 0.05f*s2, 0.05f*s2, 0.08f*s2, text );

	x = 0.3f*(float)sin(deltatime*2.587f);
	s = 0.1f*(float)cos(deltatime*3.013f);
	glColor3f( 0.2f*a, 0.2f*a, 0.1f*a );
	glaDrawString( x*s2, 0, 0, 0.1f*s2, 0.1f*s2, s*s2, text );
/*
	x = 0.3f*(float)cos(deltatime*3.796f);
	s = 0.1f*(float)sin(deltatime*2.935f);
	glColor3f( 0.1f*a, 0.1f*a, 0.05f*a );
	glaDrawString( x*s2, 0, 0, 0.2f*s2, 0.2f*s2, s, text );*/

	glEnd();

};

void pidt2( char *text, char *text2, float deltatime ) {

	float x, s;
	float s2 = 1.4f/(1+deltatime*deltatime*deltatime);

	s2 = deltatime;

	//if( s2>1.0f ) s2=1;
	//if( s2<0.4f ) s2=0.4f;

	float a = 3.2f - (deltatime / 1.0f);

	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

	glBlendFunc( GL_ZERO, GL_ONE_MINUS_SRC_COLOR );
	glBegin( GL_QUADS );

	glColor3f( 1*a, 0, 1*a );
	glaDrawString( 0, 0, 0, 0.06f*s2, 0.06f*s2, 0.08f*s2, text );

/*	x = 0.3*sin(deltatime*2.587f);
	s = 0.1*cos(deltatime*3.013f);
	glColor3f( 0.2*a, 0.2*a, 0.1*a );
	glaDrawString( x*s2, 0, 0, 0.12*s2, 0.12*s2, s*s2, text );

	x = 0.3*cos(deltatime*3.796f);
	s = 0.1*sin(deltatime*2.935f);
	glColor3f( 0.1*a, 0.1*a, 0.05*a );
	glaDrawString( x*s2, 0, 0, 0.22*s2, 0.22*s2, s, text );*/

	glEnd();

	glBlendFunc( GL_ONE, GL_ONE );
	glBegin( GL_QUADS );

	glColor3f( 1*a, 1*a, 1*a );
	glaDrawString( 0, 0, 0, 0.05f*s2, 0.05f*s2, 0.08f*s2, text );

	glColor3f( 1*a, 1*a, 1*a );
	glaDrawString( 0, -0.2f, 0, 0.025f*s2, 0.025f*s2, 0.08f*s2, text2 );

	x = 0.3f*(float)sin(deltatime*2.587f);
	s = 0.1f*(float)cos(deltatime*3.013f);
	glColor3f( 0.2f*a, 0.2f*a, 0.1f*a );
	glaDrawString( x*s2, 0, 0, 0.1f*s2, 0.1f*s2, s*s2, text );
/*
	x = 0.3f*(float)cos(deltatime*3.796f);
	s = 0.1f*(float)sin(deltatime*2.935f);
	glColor3f( 0.1f*a, 0.1f*a, 0.05f*a );
	glaDrawString( x*s2, 0, 0, 0.2f*s2, 0.2f*s2, s, text );*/

	glEnd();

};

float fyrkant( float t ) {
	if( (float)fmod(t,1)<0.5f ) return 1;
	return 0;
};

extern DWORD resettime;
extern DWORD startbeat;

void p_intro_run() {

	float f_c[] = { 0, 0, 0 };

//	glEnable( GL_FOG );
//	glFogi( GL_FOG_MODE, GL_EXP2 );
//	glFogf( GL_FOG_START, 100.0f );
//	glFogf( GL_FOG_END, 265.0f );
//	glFogf( GL_FOG_DENSITY, 0.1f );
//	glFogfv( GL_FOG_COLOR, (float *)f_c );


	glPointSize( 2 );
	
	float t, b;
	glaReset();

	glEnable( GL_DEPTH_TEST );
	glDepthFunc( GL_LEQUAL );
	glClearDepth( 40 );

	float l_a[] = { 0.3f, 0.7f, 1.0f };
	glLightfv( GL_LIGHT0, GL_AMBIENT, (float*)&l_a );

	float l_d[] = { 1.0f, 1.0f, 1.0f };
	glLightfv( GL_LIGHT0, GL_DIFFUSE, (float*)&l_d );

	float l_s[] = { 1.0f, 1.0f, 1.0f };
	glLightfv( GL_LIGHT0, GL_SPECULAR, (float*)&l_s );

	float l_p[] = { -3.0f, -2.0f, 1.0f };
	glLightfv( GL_LIGHT0, GL_POSITION, (float*)&l_p );

	float l_d2[] = { 0.7f, 0.85f, 1.0f };
	glLightfv( GL_LIGHT0, GL_SPOT_DIRECTION, (float*)&l_d2 );

	//glEnable( GL_LIGHT0 );

	static GLint s_vector[4] = { 2, 1, 3, 4 };
	static GLint t_vector[4] = { 1, 3, 4, 2 };

	glTexGeni(GL_S, GL_TEXTURE_GEN_MODE, GL_SPHERE_MAP);
	glTexGeni(GL_T, GL_TEXTURE_GEN_MODE, GL_SPHERE_MAP);
	glTexGeni(GL_R, GL_TEXTURE_GEN_MODE, GL_SPHERE_MAP);

	//glTexGeniv(GL_S, GL_OBJECT_PLANE, s_vector);
	//glTexGeniv(GL_T, GL_OBJECT_PLANE, t_vector);
	//glTexGeniv(GL_T, GL_OBJECT_PLANE, t_vector);

//	glEnable(GL_TEXTURE_GEN_S);
//	glEnable(GL_TEXTURE_GEN_T);
//	glEnable(GL_TEXTURE_GEN_R);

	do {
		
		t = glaBeat()/2.0f;
		b = glaTime();

		glEnable( GL_DEPTH_TEST );

		glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();

		glMatrixMode( GL_PROJECTION );
	glLoadIdentity();

		glaCls(0.1f);

	glBlendFunc( GL_ONE, GL_ONE );
	glDisable( GL_CULL_FACE );

//		gluPerspective( 105, 4/3, 0, 1000 );
		gluPerspective( 70, 4/3, 0.1f, 20.0f );

/*		if( t>2 && t<4 ) {
gluLookAt( 4*cos(t/5), 4*cos(t/2), 4*sin(t/3), 2*cos(t/2), 2*cos(t/4), 2*sin(t/3), 0, 1, 0 );
		} else {
		};*/

		float t2 = 0; //t + (t*0.5f*fyrkant( t/2 ));
		t2 = (float)(int)(t/2+0.5)*4;
		float t1 = (float)fmod( t/2, 1.0f );
		t2 += t1;
		if( t1>0.5f ) {
			t2 += (t1-0.5f)*6.0f;
		};

		float r = 3.0f / (t2/3.0f+1.0f);
		//r = 1;
		r += 2.0f;

		gluLookAt( r*(float)cos(t2/4), r*(float)cos(t2/3), r*(float)sin(t2/4), 
					r/4*(float)cos(t2/3), r/4*(float)cos(t2/2), r/4*(float)sin(t2/3), 
					0, 1, 0 );

//		gluLookAt( 0.3f,0.4f,0.5f,0,0,0,0,1,0 ); 

		glMatrixMode( GL_TEXTURE );
		glLoadIdentity();

//		gluLookAt( r*(float)cos(t2/4), r*(float)cos(t2/3), r*(float)sin(t2/4), 
//					r/4*(float)cos(t2/3), r/4*(float)cos(t2/2), r/4*(float)sin(t2/3), 
//					0, 1, 0 );
/*
		MATRIX klutt;
		MATRIX klutt2;

		glGetFloatv( GL_PROJECTION_MATRIX, (float*)&klutt );
		invert_matrix( (MATRIX*)&klutt, (MATRIX*)&klutt2 );
		glLoadMatrixf( (float*)&klutt2 );
*/
		glMatrixMode( GL_MODELVIEW );
		glLoadIdentity();

//	glDisable( GL_LIGHTING );

	glPointSize( 2 );
		//glDisable( GL_BLEND );
		glDisable( GL_TEXTURE_2D );
		glBegin( GL_POINTS );
		glCallList( INTRO_STARFIELD );
		glEnd();

//	glEnable( GL_LIGHTING );

		glPushMatrix();
		glScalef( 0.01f, 0.01f, 0.01f );
		//glDisable( GL_TEXTURE_2D );
		//glEnable( GL_DEPTH_TEST );
		//glDisable( GL_BLEND );
		m_marching_cubes( t*75 );
		glPopMatrix();
/*
			glBegin( GL_LINES );
			for( float j=0; j<200; j++ ) {

				float x, y, z;

				float t2 = t - (float)j / 120.0f;
				
				x = 0.5f*(float)sin( t2*M_PI/2.5f );
				y = 0.5f*(float)cos( t2*M_PI/1.4f ); 
				z = 0.5f*(float)sin( t2*M_PI/1.9f );

				glColor3f( 0.05f, 0.05f, 0.55f );
				glVertex3f( -z*4, x*4, -y*4 );

				glColor3f( 0.05f, 0.35f, 0.05f );
				glVertex3f( -z*2, x*2, -y*2 );
				glVertex3f( -z*2, x*2, -y*2 );

				glColor3f( 0.30f, 0.15f, 0.00f );
				glVertex3f( -x, -y, -z );
				glVertex3f( -x, -y, -z );

				glColor3f( 0, 0, 0 );
				glVertex3f( 0, 0, 0 );
				glVertex3f( 0, 0, 0 );

				glColor3f( 0.30f, 0.15f, 0.00f );
				glVertex3f( x, y, z );
				glVertex3f( x, y, z );

				glColor3f( 0.05f, 0.35f, 0.05f );
				glVertex3f( z*2, x*2, -y*2 );
				glVertex3f( z*2, x*2, -y*2 );

				glColor3f( 0.05f, 0.05f, 0.55f );
				glVertex3f( -z*4, x*4, -y*4 );

//				glColor3f( 0.0, 0.1f, 0.30f );
//				glVertex3f( 0, 0, 0 )
//				glColor3f( 0, 0, 0 );
			};
			glEnd();
*/

			//glPointSize( 25 );
			//glBegin( GL_POINTS );
			//glColor3f( 1, 1, 1 );
			//glVertex3f( 0, 0, 0 );
			//glEnd();

		glMatrixMode( GL_PROJECTION );
	glLoadIdentity();

		glaSetTexture( GIF_FONT );

		glEnable( GL_BLEND );
	glLoadIdentity();
		glTranslatef( 0, -0.5f, 0 );
		if( t>2 && t<4 ) pidt2( "illuminator", "coding, design, graphics", t-2 );
		if( t>4 && t<6 ) pidt2( "h-ecs", "music, design, graphics", t-4 );
		if( t>6 && t<8 ) pidt2( "hanzon!", "travelling to denmark", t-6);
		if( t>8 && t<10 ) pidt2( "summlan", "???", t-8 );
		if( t>10 && t<12 ) pidt2( "weird ed", "??", t-10 );

		glaBlit();

	} while( !glaExit() && t<16 );
};

void fulkub( VECTOR c ) {

/*
	glBegin( GL_LINE_LOOP );
	glVertex3f( c.x-BOX_RADIUS, c.y-BOX_RADIUS, c.z-BOX_RADIUS );
	glVertex3f( c.x+BOX_RADIUS, c.y-BOX_RADIUS, c.z-BOX_RADIUS );
	glVertex3f( c.x+BOX_RADIUS, c.y+BOX_RADIUS, c.z-BOX_RADIUS );
	glVertex3f( c.x-BOX_RADIUS, c.y+BOX_RADIUS, c.z-BOX_RADIUS );
	glEnd();

	glBegin( GL_LINE_LOOP );
	glVertex3f( c.x-BOX_RADIUS, c.y-BOX_RADIUS, c.z+BOX_RADIUS );
	glVertex3f( c.x+BOX_RADIUS, c.y-BOX_RADIUS, c.z+BOX_RADIUS );
	glVertex3f( c.x+BOX_RADIUS, c.y+BOX_RADIUS, c.z+BOX_RADIUS );
	glVertex3f( c.x-BOX_RADIUS, c.y+BOX_RADIUS, c.z+BOX_RADIUS );
	glEnd();*/

	float r = BOX_RADIUS;

	glVertex3f( c.x-r, c.y-r, c.z+r );
	glVertex3f( c.x+r, c.y-r, c.z+r );
	glVertex3f( c.x-r, c.y+r, c.z+r );
	glVertex3f( c.x+r, c.y+r, c.z+r );
	glVertex3f( c.x-r, c.y-r, c.z-r );
	glVertex3f( c.x+r, c.y-r, c.z-r );
	glVertex3f( c.x-r, c.y+r, c.z-r );
	glVertex3f( c.x+r, c.y+r, c.z-r );

	glVertex3f( c.x+r, c.y-r, c.z+r );
	glVertex3f( c.x+r, c.y+r, c.z+r );
	glVertex3f( c.x-r, c.y-r, c.z-r );
	glVertex3f( c.x-r, c.y+r, c.z-r );
	glVertex3f( c.x+r, c.y-r, c.z+r );
	glVertex3f( c.x+r, c.y+r, c.z+r );
	glVertex3f( c.x-r, c.y-r, c.z-r );
	glVertex3f( c.x-r, c.y+r, c.z-r );

	glVertex3f( c.x-r, c.y-r, c.z-r );
	glVertex3f( c.x-r, c.y-r, c.z+r );
	glVertex3f( c.x+r, c.y-r, c.z-r );
	glVertex3f( c.x+r, c.y-r, c.z+r );
	glVertex3f( c.x+r, c.y+r, c.z-r );
	glVertex3f( c.x+r, c.y+r, c.z+r );
	glVertex3f( c.x-r, c.y+r, c.z-r );
	glVertex3f( c.x-r, c.y+r, c.z+r );

//	glEnd();
	
};

void m_marching_cubes( float time ) {
  int i,j,k;

	float   mbx[3], mby[3], mbz[3];
	VECTOR v;
	int nx, ny, nz;
	int dummy=0;

	mbx[0] = (float)(MOVE_RADIUS*sin(time*3.142/133));
	mby[0] = (float)(MOVE_RADIUS*sin(time*3.142/146));
	mbz[0] = (float)(MOVE_RADIUS*cos(time*3.142/250));

	mbx[1] = (float)(MOVE_RADIUS*cos(time*3.142/144));
	mby[1] = (float)(MOVE_RADIUS*sin(time*3.142/133));
	mbz[1] = (float)(MOVE_RADIUS*sin(time*3.142/240));

	mbx[2] = (float)(MOVE_RADIUS*cos(time*3.142/153));
	mby[2] = (float)(MOVE_RADIUS*sin(time*3.142/240));
	mbz[2] = (float)(MOVE_RADIUS*cos(time*3.142/100));

	for( k=0; k<=TABSIDE; k++ ) {
//		float f3 = 0.5f + 0.25f * sin( (time+k*3)*3.142/24 );
	    for( j=0; j<=TABSIDE; j++ ) {
//			float f2 = 0.5f + 0.25f * sin( (time+j*5)*3.142/17 );
			for( i=0; i<=TABSIDE; i++ ) {
				float s1i,s2i,s3i,min;
//				float f1 = 0.5f + 0.25f * cos( (time+i*6)*3.142/15 );

				v.x = (float)(i-GRIDS)*BOX_SPACING*2;
				v.y = (float)(j-GRIDS)*BOX_SPACING*2;
				v.z = (float)(k-GRIDS)*BOX_SPACING*2;

				s1i = sqrt( UPP(v.x-mbx[0]) + UPP(v.y-mby[0]) + UPP(v.z-mbz[0]) ) - 60;
				s2i = sqrt( UPP(v.x-mbx[1]) + UPP(v.y-mby[1]) + UPP(v.z-mbz[1]) ) - 60;
				s3i = sqrt( UPP(v.x-mbx[2]) + UPP(v.y-mby[2]) + UPP(v.z-mbz[2]) ) - 60;

				//s2i = sqrt( UPP(v.x-mbx3) + UPP(v.y-mby3) + UPP(v.z-mbz3) ) - 0.5f;

				min = s1i;
				if( s2i<min ) min = s2i;
				if( s3i<min ) min = s3i;

				//min *= f3*f2;

				//min = s1i+s2i+s3i;
				//min = ((f1*f3)+(f2)) * s2i;

//				min += ((f2*f3*f1)-0.25f)*30;

				blob_strength[ (k<<10)+(j<<5)+i ] = min;
			};
		};
	};

	for( nz=0; nz<=TABSIDE; nz++ )
	    for( ny=0; ny<=TABSIDE; ny++ )
			for( nx=0; nx<=TABSIDE; nx++ ) {
				v.x = (float)(nx-GRIDS)*BOX_SPACING;
				v.y = (float)(ny-GRIDS)*BOX_SPACING;
				v.z = (float)(nz-GRIDS)*BOX_SPACING;

				int o = (nz<<10)+(ny<<5)+nx;

				blob_box[ o ] = 0;

				float s = blob_strength[o];
				//if( s>-50.0f && s<50.0f ) {
				if( dummy ) marching_cube( v,nx,ny,nz ); else marching_cube2( v,nx,ny,nz );
				//};
				dummy = !dummy;

			};
			/*
	glDisable( GL_TEXTURE_2D );
	glEnable( GL_BLEND );
	glBegin( GL_LINES );
	glColor3f( 0.1f, 0.15f, 0.2f );
	for( nz=0; nz<=TABSIDE; nz++ )
	    for( ny=0; ny<=TABSIDE; ny++ )
			for( nx=0; nx<=TABSIDE; nx++ ) {
				v.x = (float)(nx-GRIDS)*BOX_SPACING;
				v.y = (float)(ny-GRIDS)*BOX_SPACING;
				v.z = (float)(nz-GRIDS)*BOX_SPACING;

				int o = (nz<<10)+(ny<<5)+nx;
				float s = blob_strength[o];
				if( blob_box[o] )
					fulkub(v);
			};
	glEnd();
*/
	//glDisable( GL_TEXTURE_2D );
	//glEnable( GL_BLEND );
	//glDisable( GL_DEPTH_TEST );
/*
	float r = 0.45f;

	for( nx=0; nx<3; nx++ ) {
		//mbx[nx] /= BOX_SPACING;	mbx[nx] *= GRIDS;
		//mby[nx] /= BOX_SPACING;	mby[nx] *= GRIDS;
		//mbz[nx] /= BOX_SPACING;	mbz[nx] *= GRIDS;

		for( ny=0; ny<40; ny+=3 ) {
			glPushMatrix();
			
			glTranslatef( mbx[nx]*r, mby[nx]*r, mbz[nx]*r );

			glRotatef( time, 0.3f, 0.6f, 0.5f );
			glRotatef( (ny%10)*36, 0,1,0 );
			glRotatef( (ny/10)*72, 0,0,1 );

			glBegin( GL_TRIANGLES );

			if( nx==0 ) {
				glColor4f( 1.0f, 0.2f, 0.1f, 1.0f );
			} else if( nx==1 ) {
				glColor4f( 0.1f, 1.0f, 0.2f, 1.0f );
			} else {
				glColor4f( 0.2f, 0.1f, 1.0f, 1.0f );
			};
			glVertex3f( 0, 0, 0 );

			glColor4f( 0,0,0,0 );
			glVertex3f( 200, -4, 0 );
			glVertex3f( 200, 4, 0 );

			if( nx==0 ) {
				glColor4f( 1.0f, 0.2f, 0.1f, 1.0f );
			} else if( nx==1 ) {
				glColor4f( 0.1f, 1.0f, 0.2f, 1.0f );
			} else {
				glColor4f( 0.2f, 0.1f, 1.0f, 1.0f );
			};
			glVertex3f( 0, 0, 0 );

			glColor4f( 0,0,0,0 );
			glVertex3f( 200, 0, -4 );
			glVertex3f( 200, 0, 4 );

			glEnd();
			glPopMatrix();
		};
	};
*/
};

#define VE(V,X,Y,Z,I,J,K) V.x = X; V.y = Y; V.z = Z; V.s = blob_strength[((K)<<10)+((J)<<5)+I];

void marching_cube( VECTOR c, int i,int j,int k ) {
  int bits = 0;
  VECTOR4 v[8];

  // skapa åtta vertexar
  VE( v[0], c.x-BOX_RADIUS, c.y-BOX_RADIUS, c.z-BOX_RADIUS, i,j,k );
  VE( v[1], c.x+BOX_RADIUS, c.y-BOX_RADIUS, c.z-BOX_RADIUS, i+1,j,k );
  VE( v[2], c.x+BOX_RADIUS, c.y+BOX_RADIUS, c.z-BOX_RADIUS, i+1,j+1,k );
  VE( v[3], c.x-BOX_RADIUS, c.y+BOX_RADIUS, c.z-BOX_RADIUS, i,j+1,k );
  VE( v[4], c.x-BOX_RADIUS, c.y-BOX_RADIUS, c.z+BOX_RADIUS, i,j,k+1 );
  VE( v[5], c.x+BOX_RADIUS, c.y-BOX_RADIUS, c.z+BOX_RADIUS, i+1,j,k+1 );
  VE( v[6], c.x+BOX_RADIUS, c.y+BOX_RADIUS, c.z+BOX_RADIUS, i+1,j+1,k+1 );
  VE( v[7], c.x-BOX_RADIUS, c.y+BOX_RADIUS, c.z+BOX_RADIUS, i,j+1,k+1 );
  // hoppa ur om den „r helt inuti blobben eller helt utanf”r...
  bits = 1*(v[0].s<0);
  bits |= 2*(v[1].s<0);
  bits |= 4*(v[2].s<0);
  bits |= 8*(v[3].s<0);
  bits |= 16*(v[4].s<0);
  bits |= 32*(v[5].s<0);
  bits |= 64*(v[6].s<0);
  bits |= 128*(v[7].s<0);
  if( bits==0 || bits==255 ) return;

  blob_box[ (k<<10)+(j<<5)+i ] = 1;

//	glDisable( GL_TEXTURE_2D );
//  fulkub( c );
//	glEnable( GL_TEXTURE_2D );
  
// note: normal, NOT flipped (leftmost)

  Tetra( v[0], v[4], v[5], v[7] );
  Tetra( v[5], v[6], v[2], v[7] );
  Tetra( v[0], v[5], v[1], v[2] );
  Tetra( v[0], v[2], v[3], v[7] );
  Tetra( v[0], v[5], v[2], v[7] );
 
};

void marching_cube2( VECTOR c, int i,int j,int k ) {
  int bits = 0;
  VECTOR4 v[8];
  // skapa †tta vertexar
  VE( v[0], c.x-BOX_RADIUS, c.y-BOX_RADIUS, c.z-BOX_RADIUS, i,j,k );
  VE( v[1], c.x+BOX_RADIUS, c.y-BOX_RADIUS, c.z-BOX_RADIUS, i+1,j,k );
  VE( v[2], c.x+BOX_RADIUS, c.y+BOX_RADIUS, c.z-BOX_RADIUS, i+1,j+1,k );
  VE( v[3], c.x-BOX_RADIUS, c.y+BOX_RADIUS, c.z-BOX_RADIUS, i,j+1,k );
  VE( v[4], c.x-BOX_RADIUS, c.y-BOX_RADIUS, c.z+BOX_RADIUS, i,j,k+1 );
  VE( v[5], c.x+BOX_RADIUS, c.y-BOX_RADIUS, c.z+BOX_RADIUS, i+1,j,k+1 );
  VE( v[6], c.x+BOX_RADIUS, c.y+BOX_RADIUS, c.z+BOX_RADIUS, i+1,j+1,k+1 );
  VE( v[7], c.x-BOX_RADIUS, c.y+BOX_RADIUS, c.z+BOX_RADIUS, i,j+1,k+1 );
  // hoppa ur om den „r helt inuti blobben eller helt utanf”r...
  bits = 1*(v[0].s<0);
  bits |= 2*(v[1].s<0);
  bits |= 4*(v[2].s<0);
  bits |= 8*(v[3].s<0);
  bits |= 16*(v[4].s<0);
  bits |= 32*(v[5].s<0);
  bits |= 64*(v[6].s<0);
  bits |= 128*(v[7].s<0);
  if( bits==0 || bits==255 ) return;

  blob_box[ (k<<10)+(j<<5)+i ] = 1;

	/* note: abnormal, flipped x */

  Tetra( v[0], v[4], v[3], v[1] );
  Tetra( v[4], v[6], v[1], v[5] );
  Tetra( v[1], v[6], v[3], v[2] );
  Tetra( v[4], v[6], v[3], v[7] );
  Tetra( v[4], v[6], v[3], v[1] );
 
};

#define C0 1
#define C1 2
#define C2 4
#define C3 8
#define C4 16
#define C5 32
#define C6 64
#define C7 128
#define C8 256
#define C9 512
#define C10 1024
#define C11 2048

void tri3d( VECTOR ve0, VECTOR ve1, VECTOR ve2 ) {

		glaSetTexture( GIF_CLOUDS );
		glDisable( GL_BLEND );
		
	glBegin( GL_TRIANGLES );


		glColor3f( 1,0.66f,0.33f );

    glTexCoord2f( ve0.x/150, ve0.y/150 );
	glVertex3f( ve0.x, ve0.y, ve0.z );
	
	glTexCoord2f( ve1.x/150, ve1.y/150 );
	glVertex3f( ve1.x, ve1.y, ve1.z );
	
	glTexCoord2f( ve2.x/150, ve2.y/150 );
	glVertex3f( ve2.x, ve2.y, ve2.z );

		glEnd();

		glaSetTexture( GIF_PSIKORP2 );
		glEnable( GL_BLEND );
	glBegin( GL_TRIANGLES );


		glColor3f( 1,0.7f, 0.44f );


    glTexCoord2f( ve0.z/150, ve0.x/150 );
	glVertex3f( ve0.x, ve0.y, ve0.z );
	
	glTexCoord2f( ve1.z/150, ve1.x/150 );
	glVertex3f( ve1.x, ve1.y, ve1.z );
	
	glTexCoord2f( ve2.z/150, ve2.x/150 );
	glVertex3f( ve2.x, ve2.y, ve2.z );

		glEnd();

};

void Tetra1( VECTOR a, VECTOR b, VECTOR c ) {
  tri3d( a, b, c );
};

void Tetra2( VECTOR a, VECTOR b, VECTOR c, VECTOR d ) {
  tri3d( a, b, d );
  tri3d( b, c, d );
};

VECTOR CV( VECTOR4 v0, VECTOR4 v1 ) {
  VECTOR v, d;
  float t, length, sd; // = sqrt( v0.x*v0.x + v0.y*v0.y + v0.z*v0.z );
  d.x = v1.x - v0.x;
  d.y = v1.y - v0.y;
  d.z = v1.z - v0.z;
  length = (float)sqrt( UPP(d.x) + UPP(d.y) + UPP(d.z) );
  if( length!=0 ) {
    d.x /= length;
    d.y /= length;
    d.z /= length;
  } else {
    d.x = 0;
    d.y = 0;
    d.z = 0;
  };
  sd = (float)fabs(v1.s - v0.s);
  if( sd!=0 ) t = (float)(length * (fabs(v0.s) / sd)); else t = 0;
  //t = 0.5f;
  v.x = v0.x + t*d.x;
  v.y = v0.y + t*d.y;
  v.z = v0.z + t*d.z;
  return v;
};

void Tetra( VECTOR4 v0, VECTOR4 v1, VECTOR4 v2, VECTOR4 v3 ) {
  int bits;
  bits = (v0.s<0)*1 | (v1.s<0)*2 | (v2.s<0)*4 | (v3.s<0)*8;
  if( bits && bits!=15 ) {
    switch (bits) {
    /* dessa funkar! */
        case 3: Tetra2( CV(v0,v3), CV(v1,v3), CV(v1,v2), CV(v0,v2)  ); break;
        case 5: Tetra2( CV(v0,v3), CV(v2,v3), CV(v2,v1), CV(v0,v1) ); break;
        case 6: Tetra2( CV(v1,v3), CV(v2,v3), CV(v2,v0), CV(v1,v0) ); break;
        case 9: Tetra2( CV(v0,v1), CV(v3,v1), CV(v3,v2), CV(v0,v2) ); break;
        case 10: Tetra2( CV(v1,v0), CV(v3,v0), CV(v3,v2), CV(v1,v2) ); break;
        case 12: Tetra2( CV(v2,v0), CV(v3,v0), CV(v3,v1), CV(v2,v1) ); break;
    /* enh”rningar */
        case 1: Tetra1( CV(v0,v3), CV(v0,v2), CV(v0,v1) ); break;
        case 2: Tetra1( CV(v1,v0), CV(v1,v3), CV(v1,v2) ); break;
        case 4: Tetra1( CV(v2,v1), CV(v2,v0), CV(v2,v3) ); break;
        case 8: Tetra1( CV(v3,v0), CV(v3,v1), CV(v3,v2) ); break;
    /* dom h„r „r os„kra! (special) */
        case 7: Tetra1( CV(v0,v3), CV(v1,v3), CV(v2,v3) ); break;
        case 11: Tetra1( CV(v0,v2), CV(v1,v2), CV(v3,v2) ); break;
        case 13: Tetra1( CV(v0,v1), CV(v2,v1), CV(v3,v1) ); break;
        case 14: Tetra1( CV(v1,v0), CV(v2,v0), CV(v3,v0) ); break;
    };
  };
};
