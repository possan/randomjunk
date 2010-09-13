// bl0baaas
#include "common.h"
#include "images.h"

#define FILLED

#define GRIDS 5
#define G 1.2f
#define TABSIDE 10
#define MGS (float)(GRIDS*G*0.8f)
float   blob_strength[32*32*32];
typedef struct { float x, y, z, s; } VECTOR4;

MATRIX pb_mat;
VECTOR pb_loc;

//CAMERA  cam;
//RENDER  rend;
#define UPP(x) (x)*(x)
void Tetra( VECTOR4 v0, VECTOR4 v1, VECTOR4 v2, VECTOR4 v3 );
#define VE(V,X,Y,Z,I,J,K) V.x = X; V.y = Y; V.z = Z; V.s = blob_strength[((K)<<10)+((J)<<5)+I];

void marching_cube( VECTOR4 c, int i,int j,int k ) {
  int bits = 0;
  VECTOR4 v[8];
  // skapa †tta vertexar
  VE( v[0], c.x-G, c.y-G, c.z-G, i,j,k );
  VE( v[1], c.x+G, c.y-G, c.z-G, i+1,j,k );
  VE( v[2], c.x+G, c.y+G, c.z-G, i+1,j+1,k );
  VE( v[3], c.x-G, c.y+G, c.z-G, i,j+1,k );
  VE( v[4], c.x-G, c.y-G, c.z+G, i,j,k+1 );
  VE( v[5], c.x+G, c.y-G, c.z+G, i+1,j,k+1 );
  VE( v[6], c.x+G, c.y+G, c.z+G, i+1,j+1,k+1 );
  VE( v[7], c.x-G, c.y+G, c.z+G, i,j+1,k+1 );
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
// note: normal, NOT flipped (leftmost)
  Tetra( v[0], v[4], v[5], v[7] );
  Tetra( v[5], v[6], v[2], v[7] );
  Tetra( v[0], v[5], v[1], v[2] );
  Tetra( v[0], v[2], v[3], v[7] );
  Tetra( v[0], v[5], v[2], v[7] );
};

void marching_cube2( VECTOR4 c, int i,int j,int k ) {
  int bits = 0;
  VECTOR4 v[8];
  // skapa †tta vertexar
  VE( v[0], c.x-G, c.y-G, c.z-G, i,j,k );
  VE( v[1], c.x+G, c.y-G, c.z-G, i+1,j,k );
  VE( v[2], c.x+G, c.y+G, c.z-G, i+1,j+1,k );
  VE( v[3], c.x-G, c.y+G, c.z-G, i,j+1,k );
  VE( v[4], c.x-G, c.y-G, c.z+G, i,j,k+1 );
  VE( v[5], c.x+G, c.y-G, c.z+G, i+1,j,k+1 );
  VE( v[6], c.x+G, c.y+G, c.z+G, i+1,j+1,k+1 );
  VE( v[7], c.x-G, c.y+G, c.z+G, i,j+1,k+1 );
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
/* note: abnormal, flipped x */
  Tetra( v[0], v[4], v[3], v[1] );
  Tetra( v[4], v[6], v[1], v[5] );
  Tetra( v[1], v[6], v[3], v[2] );
  Tetra( v[4], v[6], v[3], v[7] );
  Tetra( v[4], v[6], v[3], v[1] );
};

void marching_cubes( float t ) {
  int nx, ny, nz;
  VECTOR4 v;
  int dummy=0;
  for( nz=0; nz<TABSIDE; nz++ )
    for( ny=0; ny<TABSIDE; ny++ )
      for( nx=0; nx<TABSIDE; nx++ ) {
        v.x = (nx-GRIDS)*G*2;
        v.y = (ny-GRIDS)*G*2;
        v.z = (nz-GRIDS)*G*2;
        if( dummy ) marching_cube( v,nx,ny,nz ); else marching_cube2( v,nx,ny,nz );
        dummy = !dummy;
      };
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
	VECTOR aa, bb, cc;
	aa = ve0;
	bb = ve1;
	cc = ve2;
	vector_sub( &aa, &pb_loc );
	vector_sub( &bb, &pb_loc );
	vector_sub( &cc, &pb_loc );
	vector_mul( &aa, &pb_mat );
	vector_mul( &bb, &pb_mat );
	vector_mul( &cc, &pb_mat );
	aa.x *= 16;
	bb.x *= 16;
	cc.x *= 16;
	aa.y *= 16;
	bb.y *= 16;
	cc.y *= 16;
	pl_proj( 160, 100, &aa );
	pl_proj( 160, 100, &bb );
	pl_proj( 160, 100, &cc );
	gfx_drawline( (int)aa.x, (int)aa.y, (int)bb.x, (int)bb.y, 250 );
	gfx_drawline( (int)bb.x, (int)bb.y, (int)cc.x, (int)cc.y, 250 );
	gfx_drawline( (int)cc.x, (int)cc.y, (int)aa.x, (int)aa.y, 250 );
};

void line3dv( VECTOR v_1, VECTOR v_2 ) {
	VECTOR aa, bb;
	aa = v_1;
	bb = v_2;
	vector_sub( &aa, &pb_loc );
	vector_sub( &bb, &pb_loc );
	vector_mul( &aa, &pb_mat );
	vector_mul( &bb, &pb_mat );
	aa.x *= 15;
	bb.x *= 15;
	aa.y *= 15;
	bb.y *= 15;
	if( aa.x<bb.x && aa.y<bb.y ) if( pl_proj( 160, 100, &aa ) && pl_proj( 160, 100, &bb ) ) {
		gfx_drawline( (int)aa.x, (int)aa.y, (int)bb.x, (int)bb.y, 255 );
	};
};

void Tetra1( VECTOR a, VECTOR b, VECTOR c ) {
#ifdef FILLED
  tri3d( a, b, c );
#endif
#ifdef LINES
  line3dv( a, b );
  line3dv( b, c );
  line3dv( c, a );
#endif
};

void Tetra2( VECTOR a, VECTOR b, VECTOR c, VECTOR d ) {
#ifdef FILLED
  tri3d( a, b, d );
  tri3d( b, c, d );
#endif
#ifdef LINES
  line3dv( a, b );
  line3dv( b, c );
  line3dv( c, d );
  line3dv( d, a );
#endif
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
  v.x = v0.x + t*d.x;
  v.y = v0.y + t*d.y;
  v.z = v0.z + t*d.z;
  return v;
};

void Tetra( VECTOR4 v0, VECTOR4 v1, VECTOR4 v2, VECTOR4 v3 ) {
  int bits;
  bits = (v0.s<0)*1 | (v1.s<0)*2 | (v2.s<0)*4 | (v3.s<0)*8;
  if( bits && bits!=15 ) {
//    tempv[bits]++;
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

void generera( float time ) {
  int i,j,k;

//  memset( &blob_strength, 0, sizeof(blob_strength) );

/*  for( k=0; k<TABSIDE; k++ )
    for( j=0; j<TABSIDE; j++ ) 
      for( i=0; i<TABSIDE; i++ )
        blob_strength[ (k<<8)+(j<<4)+i ] = -1;
*/
	float   mbx1, mby1, mbz1;
	float   mbx2, mby2, mbz2;
	float   mbx3, mby3, mbz3;
  VECTOR v;
  float i2, j2, k2;

		mbx1 = (float)(MGS*sin(time*3.142/133));
		mby1 = (float)(MGS*sin(time*3.142/146));
		mbz1 = (float)(MGS*sin(time*3.142/250));
		mbx2 = (float)(MGS*cos(time*3.142/144));
		mby2 = (float)(MGS*sin(time*3.142/133));
		mbz2 = (float)(MGS*sin(time*3.142/240));
		mbx3 = (float)(MGS*cos(time*3.142/153));
		mby3 = (float)(MGS*cos(time*3.142/240));
		mbz3 = (float)(MGS*cos(time*3.142/100));

  for( k=0; k<14; k++ ) {
    for( j=0; j<14; j++ ) {
      for( i=0; i<14; i++ ) {
		  float s1i,s2i,s3i,min;
//        float min = UPP( (s2i/s1i) );
//        blob_strength[ (k<<10)+(j<<5)+i ] = 5/((10/s1i)*(10/s2i)*(10/s3i));
        // = 5*sin((j+k-mbz1)*3.142/14);

		if( time < 512 ) {
		//min *= min;
			v.x = (float)(i-GRIDS)*G*2;
			v.y = (float)(j-GRIDS)*G*2;
			v.z = (float)(k-GRIDS)*G*2;
			s1i = (float)sqrt( UPP(v.x-mbx1) + UPP(v.y-mby1) + UPP(v.z-mbz1) ) - 5;
			s2i = (float)sqrt( UPP(v.x-mbx2) + UPP(v.y-mby2) + UPP(v.z-mbz2) ) - 5;
			s3i = (float)sqrt( UPP(v.x-mbx3) + UPP(v.y-mby3) + UPP(v.z-mbz3) ) - 5;
			min = s1i;
			if( s2i<min ) min = s2i;
			if( s3i<min ) min = s3i;
		} else if( time < 1024 ) {
	        min = (float)sin( ((float)i+mbx2)*3.142/7 );
			min += (float)cos( ((float)k+mbz1)*3.142/7 );
			min += (float)sin( ((float)j+mby3)*3.142/7 );
		} else if( time < 1536 ) {
			i2 = (float)(5*sin((float)i*3.142/20));
	        j2 = (float)(4*cos(((float)j-i2+mbx3)*3.142/30));
	
			k2 = ((float)i-6.5f)*((float)i-6.5f) + ((float)j-6.5f)*((float)j-6.5f) + ((float)k-6.5f)*((float)k-6.5f);
			k2 = (float)sqrt( k2 );

	        //min = sin( ((float)i+k2+j2+mbx2)*3.142/5 );
	        min = (float)sin( k2*3.142/5 );
			//min *= cos( ((float)k+j2)*3.142/3 );
			//min *= sin( ((float)j+i2+mby3)*3.142/4 );
		} else {

			k2 = ((float)i-6.5f)*((float)i-6.5f) + ((float)j-6.5f)*((float)j-6.5f) + ((float)k-6.5f)*((float)k-6.5f);
			k2 = (float)sqrt( k2 );

	        //min = sin( ((float)i+k2+j2+mbx2)*3.142/5 );
	        min = (float)(cos(k2)+sin( cos(k2)*3.142/5 ));

		};
		blob_strength[ (k<<10)+(j<<5)+i ] = min;	
      };
    };
  };
};

unsigned char *pb_hands;

void p_blobs_init() {
	pb_hands = common_loadgif( (unsigned char *)&gif_hands );
};

void p_blobs_kill() {
};

void pb_bilden( long oo ) {
	__asm {
		mov edi, gfx_virtual
		mov esi, pb_hands
		sub edi, oo
		mov ecx, 200
	yloopen:
		push ecx
			add edi, 440
			mov ecx, 50
			rep movsd
		pop ecx
		loop yloopen

	}
};

void pb_mblur( float xc, float xd ) {

	int i;

	for( i=0; i<200; i++ ) {
		float t = (float)i;
		if( t<0 ) t=0;
		if( t>198 ) t=198;
		gfx_mb_ybuf1[i] = (long)t*640;
		gfx_mb_ybuf2[i] = (unsigned char)(256*((float)t-(int)t));
	};

	for( i=0; i<640; i++ ) {
		float t = (float)i;
		t += xc;//*sin( (i+xd)*3.142/30 );
		//t += xc;
		if( t<0 ) t=0;
		if( t>638 ) t=638;
		gfx_mb_xbuf1[i] = (long)t;
		gfx_mb_xbuf2[i] = (unsigned char)(256*((float)t-(int)t));
	};

	common_mblur();

};

void p_blobs_run() {
  VECTOR dir;
  VECTOR up;
	float time = 0;
  do {
	  time = misc_gettimer() * 30;

	//int stage = (0+(time / 256)) % 4;
    //int windex = (time >> 6)&63;
	//float rr = 0.1f + (fmod(time, 256.0f) / 10.0f);

		gfx_cls(0);

    pb_loc.x = (float)(20*sin(time*M_PI/356));
    pb_loc.y = (float)(30*cos(time*M_PI/250));
    pb_loc.z = (float)(45*cos(time*M_PI/400));

    //location.x = 15;
	//location.y = 5;
	//location.z = -30;

    dir.x = - pb_loc.x;
    dir.y = - pb_loc.y;
    dir.z = - pb_loc.z;
    vector_normalize( &dir );
    up.x = 0;
    up.y = 1;//*sin(time*M_PI/308);
    up.z = 0;//1*cos(time*M_PI/279);
    matrix_from_vectors( dir, up, (MATRIX*)&pb_mat );

		generera( time*2 );

		if( time<860 ) marching_cubes();

		/*
		if( fmod( time, 64 ) < 6 ) {
			pb_bilden( 15 );
		} else {
			pb_bilden( 0 );
		};
		*/

		pb_mblur( 9.0f*cos(time*3.142/1.23f), 50*sin(time*3.142/15) );

		if( time<900 ) {
		gfx_drawcenteredstring( 480, 50, 50, 50, 25, 255, "\"mofo\"" );
		gfx_drawcenteredstring( 480, 100, 30, 30, 30, 255, "psikorp" );
		gfx_drawcenteredstring( 480, 150, 15, 15, 30, 255, "mcmxcix?" );
		};

		gfx_genstatic();
		gfx_blit();
		time ++;
	} while( !gfx_kbhit() && time<950 );
};