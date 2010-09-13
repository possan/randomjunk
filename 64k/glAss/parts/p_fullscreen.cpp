// fullscreen part
#include "..\almosteverything.h"
#include "..\images.h"

//#define FULLSCREEN_PIC1 61
//#define FULLSCREEN_PIC2 62
//#define FULLSCREEN_PIC3 63

float *pf_table;
float pf_m[4];

void p_fullscreen_init() {
//	glaUploadGif( FULLSCREEN_PIC1, (unsigned char *)&gif_landscape, 10123 );
//	glaUploadGif( FULLSCREEN_PIC2, (unsigned char *)&gif_clouds, 10123 );
//	glaUploadGif( FULLSCREEN_PIC3, (unsigned char *)&gif_title, 10123 );
};

void p_fullscreen_kill() {
};


#define sqr(x) ((x)*(x))
#define EPSILON 0.000001f

void pf_trace( MATRIX *cmat, VECTOR *cloc, float radius, float flumma, float tid, float us, float vs ) {
  int i,j;
  float a, b, c, delta, t;
  VECTOR f1, f2, t1, t2, v, isect;
  for( j=0;j<=30;j++ ) {
    for( i=0;i<=40;i++ ) {
      f1.x = 0; //flumma*sin((tid+i*340010)*3.142/6554031);
      f1.y = 0; //flumma*sin((tid+j*130634)*3.142/7076054);
      f1.z = 0; //flumma*cos((tid+j*364540)*3.142/8512032);
      vector_mul( cmat, &f1, &f2 );
      vector_add( &f2, cloc );

      t1.x = ((float)i-20)/20;
      t1.y = ((float)15-j)/20;
      t1.z = 1.0f;
      vector_mul( cmat, &t1, &t2 );
      vector_add( &t2, cloc );

      v = t2;
      vector_sub( &v, &f2 );
      vector_normalize( &v );

      a = sqr(v.x) + sqr(v.y);
      b = 2*(f2.x*v.x + f2.y*v.y);
      c = sqr(f2.x) + sqr(f2.y) - sqr(radius);
      delta = (float)sqrt(b*b - 4*a*c);
      float ta = (-b + delta) / (2*a+EPSILON);
      float tb = (-b - delta) / (2*a+EPSILON);
      t = ta > 0 ? ta : tb;

      isect.x = f2.x + t*v.x;
      isect.y = f2.y + t*v.y;
      isect.z = f2.z + t*v.z;
      t = (float)sqrt(sqr(isect.x) + sqr(isect.y) + sqr(isect.z));
      
	  float v = (float)fabs( atan2(isect.x, isect.y)*4/M_PI )*vs;

      float u = isect.z/13*us;

      float s = ((float)fabs(isect.z-f2.z)/2-1.2f);
	  if( s<0.01f ) s=0.01f;
	  s = 1.0f / s;

      if( s>1.0f ) s=1.0f;
      _pu[j*40+i] = u;
      _pv[j*40+i] = v;
      _pu2[j*40+i] = s;
    };
  };
};

void pf_draw( float rr, float gg, float bb ) {
	glBegin( GL_QUADS );
	int i, j;
	for( j=1; j<29; j++ ) {
		for( i=1; i<39; i++ ) {
			long o = (j*40)+i;
			float x = ((float)i-20.0f)/20.0f;
			float y = ((float)j-15.0f)/15.0f;
			float x2 = ((float)i-19.0f)/20.0f;
			float y2 = ((float)j-14.0f)/15.0f;

			x *= 1.12f;
			y *= 1.12f;
			x2 *= 1.12f;
			y2 *= 1.12f;

			glTexCoord2f( _pu[o], 1-_pv[o] );
			glColor3f( rr*_pu2[o], gg*_pu2[o], bb*_pu2[o] );
			glVertex3f( x, y, 0 );

			glTexCoord2f( _pu[o+1], 1-_pv[o+1] );
			glColor3f( rr*_pu2[o+1], gg*_pu2[o+1], bb*_pu2[o+1] );
			glVertex3f( x2, y, 0 );

			glTexCoord2f( _pu[o+41], 1-_pv[o+41] );
			glColor3f( rr*_pu2[o+41], gg*_pu2[o+41], bb*_pu2[o+41] );
			glVertex3f( x2, y2, 0 );

			glTexCoord2f( _pu[o+40], 1-_pv[o+40] );
			glColor3f( rr*_pu2[o+40], gg*_pu2[o+40], bb*_pu2[o+40] );
			glVertex3f( x, y2, 0 );
		};
	};
	glEnd();
};

void p_fullscreen_run( EVENT *e ) {

	float t, b;

	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
	glTranslatef( 0, 0, -1 );

	glDisable( GL_CULL_FACE );

	glClearColor( 0, 0, 0, 0 );
	
	glClearDepth( 20 );
	glDisable( GL_DEPTH_TEST );

	//glDisable( GL_DEPTH_TEST );

		t = e->localTime;
		//b = glaRelBeat();

		glaCls(0.5f);
		glMatrixMode( GL_MODELVIEW );
		glLoadIdentity();

		float rx, ry, rz;

		pf_m[0] = 1;//2 + 1*cos( t*1.90 );
		pf_m[1] = 0;//1 + 0.5f*sin( t*4.50 );
		pf_m[2] = 1;//*sin( t*6.10 );
		pf_m[3] = 0;//3 + 4*cos( t*5.0 );

		float f1 = 0.7f + 0.3f * (float)sin( t*2.2f );
		float f2 = 0.7f + 0.3f * (float)cos( t*1.2f );
		float f3 = 0.5f + 1.45f * (float)cos( t*2.5f );

		MATRIX m;
		rx = 2100 * (float)sin(t*0.753f);
		ry = 2100 * (float)cos(t*0.300f);
		rz = 3000 * (float)sin(t*0.560f);
		build_rotation_matrix( rx, ry, rz, &m );

		VECTOR v;
		v.x = 0.0f;
		v.y = 9.0f;
		v.z = t*15.0f;


		glaSetTexture( GIF_LANDSCAPE );
		glTexEnvi( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_BLEND );
		glBlendFunc( GL_ONE, GL_ONE );

		glEnable( GL_BLEND );
		glaSetTexture( GIF_CLOUDS );
		pf_trace( &m, &v, 10, 0, 0, 0.2f, 1.0f );
		pf_draw( f1/8, f1/9, f1/3 );

		rx = 6100 * (float)sin(t*0.453f);
		ry = 5100 * (float)cos(t*0.500f);
		rz = 7000 * (float)cos(t*0.360f);
		build_rotation_matrix( rx, ry, rz, &m );

		glEnable( GL_BLEND );
		glaSetTexture( GIF_CLOUDS );
		pf_trace( &m, &v, 10, 0, 0, 1.0f, 1.0f );
		pf_draw( f2/3, f2/9, f2/8 );

		rx = 1100 * (float)sin(t*0.753f);
		ry = 2100 * (float)cos(t*0.600f);
		rz = 3000 * (float)cos(t*0.560f);
		build_rotation_matrix( rx, ry, rz, &m );

		glEnable( GL_BLEND );
		glaSetTexture( GIF_CLOUDS );
		pf_trace( &m, &v, 10, 0, 0, 1.0f, 1.0f );
		pf_draw( f3/8, f3/3, f3/9 );

		glaSetTexture( GIF_FONT );
		glTexEnvi( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

		glBlendFunc( GL_ONE_MINUS_SRC_ALPHA, GL_ONE_MINUS_SRC_COLOR );
		glEnable( GL_BLEND );
		glBegin( GL_QUADS );

		int ib = (int)(fmod( t, 4.0f )-0.5f);
		glColor3f( 0.3f, 0.4f, 0.5f );
		if( ib==0 ) glaDrawString( 0, 0, 0, 0.07f, 0.07f, 0.2f, "baj.se" );
		if( ib==1 ) glaDrawString( 0, 0, 0, 0.07f, 0.07f, 0.2f, "kis.se" );
		if( ib==2 ) glaDrawString( 0, 0, 0, 0.07f, 0.07f, 0.2f, "bam.se" );
		//if( ib==3 ) glaDrawString( 0, 0, 0, 0.07f, 0.07f, 0.2f, "" );

		glEnd();

		/*pf_trace( &m, &v, 27, 0, 0, 1.0f, 1.0f );
		pf_draw( 20, 0, 2.0 );*/
/*
		if( t>18 ) {
			glDisable( GL_TEXTURE_2D );
			glBegin( GL_QUADS );

			float s = ((t-18)*(t-18)) / 3.0f;
				
			glColor3f( s, s, s );
			glVertex3f( -1*s, -1*s, 0 );
			glVertex3f(  1*s, -1*s, 0 );
			glVertex3f(  1*s,  1*s, 0 );
			glVertex3f( -1*s,  1*s, 0 );

			glEnd();
		};
*/
	
};