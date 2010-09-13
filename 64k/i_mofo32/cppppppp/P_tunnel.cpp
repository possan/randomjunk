#include "..\images.h"
#include "..\common.h"

#define CONE_RADIUS 256
#define RADIUS 128

#define EPSILON 0.00001f
#define TRACEFOV 20
#define VECTORDIV 140
#define PLANE_OFFSET 384

float pt_weird[64];
/*
long pt_u[64*40];
long pt_v[64*40];
long pt_s[64*40];

void drawbig( int delta ) { 
  long o;
  int i,j,ti,tj,tj2;
  int u1,u2,ud, v1,v2,vd, s1,s2,sd;
  int r,g,b;
  long bad, sofs;
  unsigned char *tempo = (unsigned char *)&i_grid;
  sofs = 0;//(j*20)*640 + (i*20);;
  for( j=0;j<10;j++ ) {
    for( i=0;i<32;i++ ) {
      o = sofs;
      for( tj=0;tj<20;tj++ ) {
        __asm {
          mov eax, 20
          sub eax, tj
          mov tj2, eax
          mov eax, j
          shl eax, 6
          add eax, i
          mov bad, eax
        };
        u1 = ( pt_u[bad]*tj2 + pt_u[bad+64]*tj );
        v1 = ( pt_v[bad]*tj2 + pt_v[bad+64]*tj );
        s1 = ( pt_s[bad]*tj2 + pt_s[bad+64]*tj );
        u2 = ( pt_u[bad+1]*tj2 + pt_u[bad+65]*tj );
        v2 = ( pt_v[bad+1]*tj2 + pt_v[bad+65]*tj );
        s2 = ( pt_s[bad+1]*tj2 + pt_s[bad+65]*tj );
        ud = (u2-u1)/20;
        vd = (v2-v1)/20;
        sd = (s2-s1)/20; 
		
		// dela med 20 == multiplicera med 0.05

		float twenty = 20;

        __asm {

			mov ecx, 20
			stonk:
          //long o3 = (((v1>>12)&63)<<6)+((u1>>12)&63);
			  mov ebx, v1
		      shr ebx, 12
			  and ebx, 63
			  shl ebx, 6
			  mov eax, u1
			  shr eax, 12
			  and eax, 63
			  add ebx, eax
			  //mov o3, ebx

			  mov esi, tempo
			  add esi, ebx
			  mov edi, gfx_virtual
			  add edi, o
			  
//		  gfx_virtual[o] = (tempo[o3]*(s1>>12))>>8;
			  xor ebx, ebx
			  mov eax, s1
			  shr eax, 12
			  mov bl, byte ptr [esi]
			  imul ebx
			  shr eax, 8
			  mov byte ptr [edi], al

//			interpolera mera
              inc o
              mov eax, u1
              mov ebx, v1
              mov edx, s1
              add eax, ud
              add ebx, vd
              add edx, sd
              mov u1, eax
              mov v1, ebx
              mov s1, edx
			loop stonk
          };
        o += 620;
      };
	  sofs += 20;
    };
	sofs += 640*19;
  };
};
*/
#define sqr(x) ((x)*(x))

void traceRaysCylindrical( MATRIX *cmat, VECTOR *cloc ) {
  int i,j;
  float a, b, c, delta, t, angle;
  VECTOR f2, t1, t2, v, isect;
  for( j=0;j<=10;j++ ) {
    for( i=0;i<=32;i++ ) {
		CORNER *corner = (CORNER *)&gfx_sq[j*64+i];
      f2.x = 0;
      f2.y = 0;
      f2.z = 0;
      //vector_mul( cmat, &f1, &f2 );
      vector_add( &f2, cloc );
      t1.x = ((float)i-16)/TRACEFOV;
      t1.y = ((float)6.25-j)/TRACEFOV;
      t1.z = 1.0f;
      vector_mul( cmat, &t1, &t2 );
      //vector_add( &t2, cloc );
      v = t2;
      //vector_sub( &v, &f2 );
      vector_normalize( &v );
      a = sqr(v.x) + sqr(v.y);
      b = 2*(f2.x*v.x + f2.y*v.y);
      c = sqr(f2.x) + sqr(f2.y) - 16384;
      delta = misc_sqrt(b*b - 4*a*c);
      float ta = (-b + delta) / (2*a+EPSILON);
      float tb = (-b - delta) / (2*a+EPSILON);
      t = ta > 0 ? ta : tb;
      isect.x = f2.x + t*v.x;
      isect.y = f2.y + t*v.y;
      isect.z = f2.z + t*v.z;
      angle = misc_atan2( isect.y, isect.x );

      float u = misc_fabs( (isect.z/4)+4654 );
      float v = 32 + 16*misc_sin( angle*3 );
      float s = 521-(misc_fabs(isect.z-f2.z)); //fabs( isect.z - f2.z )/5;

      if( s>512 ) s=512;
      if( s<0 ) s=0;

      corner->u = (long)(u*32768);
      corner->v = (long)(v*32768);
      corner->s = (long)(s*2);	
      corner->w = 1024;
    };
  };
};


void p_tunnel_init() {
  for( int i=0; i<64; i++ ) pt_weird[i] = (float)(-150 + (misc_rand()%800));
};

void p_tunnel_kill() {
};

void p_tunnel_run() {
  VECTOR location;
  VECTOR dir;
  VECTOR up;
  MATRIX imat;
  long time = 0;
  do {
    gfx_cls(0);

    int windex = (time >> 7)&63;

    location.x = 80*misc_sin((time+pt_weird[(windex+1)&63])*M_PI/(340+pt_weird[(windex+5)&63]));
    location.y = 80*misc_cos((time+pt_weird[(windex+3)&63])*M_PI/(950+pt_weird[(windex+8)&63]));
    location.z = time + 40*misc_sin((time+pt_weird[(windex+4)&63])*M_PI/(720+pt_weird[(windex+10)&63]));
    dir.x = 1*misc_cos((time+pt_weird[(windex+7)&63])*M_PI/(510+pt_weird[(windex+12)&63]));
    dir.y = 1*misc_sin((time+pt_weird[(windex+8)&63])*M_PI/(440+pt_weird[(windex+11)&63]));
    dir.z = 3*misc_cos((time+pt_weird[(windex+2)&63])*M_PI/(690+pt_weird[(windex+13)&63]));
    vector_normalize( &dir );
    up.x = 0;
    up.y = misc_sin(time*M_PI/608);
    up.z = misc_cos(time*M_PI/579);
    matrix_from_vectors( dir, up, (MATRIX*)&imat );
    traceRaysCylindrical( &imat, &location );
    
	//drawbig( time );
	
	gfx_drawsq( (unsigned char *)&i_grid );

/*
    for( int i=0; i<30; i++ ) {
      float x = 70 * cos( (time+i)*3.142/60 ) + 40 * sin( (time-i)*3.142/25 );
      float y = 60 * sin( (time+i)*3.142/75 ) + 35 * cos( (time-i)*3.142/20 );
      float s = 20 + 15*sin(i*3.142/30);// + (20 / (1 + (float)(time & 127)/10));
      gfx_drawsprite( 450+x, 100+y, s, s, 255, (unsigned char *)&i_flare2 );
    };
*/

	float s = 50 + 32*misc_cos(time*M_PI/45);
    gfx_drawsprite( 480, 100, s, s, 128, (unsigned char *)&i_hippy1 );
    gfx_drawsprite( 480, 100, s*3, s*3, 50, (unsigned char *)&i_hippy1 );
	s = 50 + 32*misc_cos(time*M_PI/30);
    gfx_drawsprite( 160, 100, s, s, 128, (unsigned char *)&i_hippy2 );
    gfx_drawsprite( 160, 100, s*3, s*3, 50, (unsigned char *)&i_hippy2 );

	gfx_drawcenteredstring( 320, 70, 20,20,25, 200, "har skulle man ta och" );
	gfx_drawcenteredstring( 320, 130, 20,20,25, 200, "skriva nogot intressant" );
//	char str[30];
//	sprintf( str, "timer: %d\n", time );
//	gfx_drawcenteredstring( 320, 160, 16,16,30, 160, str );

//    if( (time & 127) < 3 ) gfx_cls(255);

    gfx_genstatic();
    gfx_blit();

    time ++;
  } while ( !gfx_kbhit() && time<512 );
};
