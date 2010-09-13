#include "..\images.h"
#include "..\common.h"

#define CONE_RADIUS 256
#define RADIUS 128

#define EPSILON 0.0001f
#define TRACEFOV 20
#define VECTORDIV 140
#define PLANE_OFFSET 384

unsigned char *pt_texture;
float pt_weird[64];

#define sqr(x) ((x)*(x))

void traceRaysCylindrical( MATRIX *cmat, VECTOR *cloc ) {
	int i,j;
	for( j=0;j<=10;j++ ) {
		for( i=0;i<=32;i++ ) {
			float a, b, c, delta, t, angle;
			float ta, tb, _u, _v, _s;
			VECTOR f2, t1, v, isect;
			CORNER *corner = (CORNER *)&gfx_sq[j*64+i];
			f2.x = 0;
			f2.y = 0;
			f2.z = 0;
			vector_add( &f2, cloc );
			t1.x = ((float)i-16)/TRACEFOV;
			t1.y = ((float)6.25-j)/TRACEFOV;
			t1.z = 1.0f;
			vector_mul( &t1, cmat );
			v = t1;
			vector_normalize( &v );
			a = sqr(v.x) + sqr(v.y);
			b = 2*(f2.x*v.x + f2.y*v.y);
			c = sqr(f2.x) + sqr(f2.y) - 16384;
			delta = (float)sqrt(b*b - 4*a*c);
			ta = (-b + delta) / (2*a+EPSILON);
			tb = (-b - delta) / (2*a+EPSILON);
			t = ta > 0 ? ta : tb;
			isect.x = f2.x + t*v.x;
			isect.y = f2.y + t*v.y;
			isect.z = f2.z + t*v.z;
			angle = (float)atan2( isect.y, isect.x );

			_u = (float)fabs( (isect.z/4)+4654 );
			_v = (float)(32 + 16*sin( angle*3 ));
			_s = (float)(521-(fabs(isect.z-f2.z))); //fabs( isect.z - f2.z )/5;

			if( _s>511 ) _s=511;
			if( _s<0 ) _s=0;

			corner->u = (long)(_u*65536);
			corner->v = (long)(_v*65536);
			corner->s = (long)(_s*2);	
			corner->w = 1024;
		};
	};
};


void p_tunnel_init() {
	int i;
  for( i=0; i<64; i++ ) pt_weird[i] = (float)(-150 + (misc_rand()%800));
  pt_texture = common_loadgif( (unsigned char *)&gif_grid );
};

void pt_mblur( float xamt, float yamt ) {

	int i;
	float t;

	for( i=0; i<200; i++ ) {
		t = yamt;
		t += i;
		if( t<0 ) t=0;
		if( t>198 ) t=198;
		gfx_mb_ybuf1[i] = (long)t*640;
		gfx_mb_ybuf2[i] = (unsigned char)(256*((float)t-(int)t));
	};

	for( i=0; i<640; i++ ) {
		t = xamt;
		t += i;
		if( t<0 ) t=0;
		if( t>638 ) t=638;
		gfx_mb_xbuf1[i] = (long)t;
		gfx_mb_xbuf2[i] = (unsigned char)(256*((float)t-(int)t));
	};

	common_mblur();

};
void p_tunnel_kill() {
};

void p_tunnel_run() {
  VECTOR location;
  VECTOR dir;
  VECTOR up;
  MATRIX imat;
  long time = 0;
  int i;
  do {
	  float s;
	  int windex;
	  time = misc_gettimer()*35;
    windex = (time >> 7)&63;

    //gfx_cls(0);

    location.x = 70*sin((time+pt_weird[(windex+1)&63])*M_PI/(340+pt_weird[(windex+5)&63]));
    location.y = 70*cos((time+pt_weird[(windex+3)&63])*M_PI/(950+pt_weird[(windex+8)&63]));
    location.z = time + 40*sin((time+pt_weird[(windex+4)&63])*M_PI/(720+pt_weird[(windex+10)&63]));
    dir.x = 2*cos((time+pt_weird[(windex+7)&63])*M_PI/(510+pt_weird[(windex+12)&63]));
    dir.y = 2*sin((time+pt_weird[(windex+8)&63])*M_PI/(440+pt_weird[(windex+11)&63]));
    dir.z = 3*cos((time+pt_weird[(windex+2)&63])*M_PI/(690+pt_weird[(windex+13)&63]));
    vector_normalize( &dir );
    up.x = 0;
    up.y = sin(time*M_PI/608);
    up.z = cos(time*M_PI/579);
    matrix_from_vectors( dir, up, (MATRIX*)&imat );
    traceRaysCylindrical( &imat, &location );

	gfx_drawsq( pt_texture );
/*
    for( i=0; i<30; i++ ) {
      float x = 70 * cos( (time+i)*3.142/60 ) + 40 * sin( (time-i)*3.142/25 );
      float y = 60 * sin( (time+i)*3.142/75 ) + 35 * cos( (time-i)*3.142/20 );
      float s = 20 + 15*sin(i*3.142/30);// + (20 / (1 + (float)(time & 127)/10));
      gfx_drawsprite( 450+x, 100+y, s, s, 255, (unsigned char *)&i_onesph );
    };
*/
/*
	s = 50 + 32*cos(time*M_PI/45);
    gfx_drawsprite( 480, 100, s, s, 128, (unsigned char *)&i_hippy1 );
    gfx_drawsprite( 480, 100, s*3, s*3, 50, (unsigned char *)&i_hippy1 );
	s = 50 + 32*cos(time*M_PI/30);
    gfx_drawsprite( 160, 100, s, s, 128, (unsigned char *)&i_hippy2 );
    gfx_drawsprite( 160, 100, s*3, s*3, 50, (unsigned char *)&i_hippy2 );
*/
	if( time>=64 && time<=128 ) {

		gfx_drawcenteredstring( 320, 100,30,30,25, 200, "when you dream.." );

	} else if( time>=128 && time<256 ) {

		gfx_drawcenteredstring( 320, 100,30,30,25, 200, "..there are no rules.." );

	} else if( time>=256 && time<384 ) {

		gfx_drawcenteredstring( 320, 100, 30,30,25, 200, "..anything can happen.." );

	} else if( time>=384 && time<480 ) {

		gfx_drawcenteredstring( 320, 100, 30,30,25, 200, "..people can fly" );

	};

//	char str[30];
//	sprintf( str, "timer: %d\n", time );
//	gfx_drawcenteredstring( 320, 160, 16,16,30, 160, str );

//    if( (time & 127) < 3 ) gfx_cls(255);

//	pt_mblur( misc_rand()%2, misc_rand()%2 );

    gfx_genstatic();
    gfx_blit();

    time ++;
  } while ( !gfx_kbhit() && time<512 );
};
