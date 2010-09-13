#include "..\images.h"
#include "..\common.h"




float pl_weird[64];

POBJECT pl_o1;
POBJECT pl_o2;
POBJECT pl_o3;
POBJECT pl_o3_1;
POBJECT pl_o3_2;
POBJECT pl_o4;
POBJECT pl_o4_1;
POBJECT pl_o4_2;

VECTOR pl3f( float time, int wichone ) {
	VECTOR v;

	if( wichone == 1 ) {

		float r = 40 + 25*misc_cos(time*M_PI/10);
		v.x = r * misc_sin( time*M_PI/25 );
		v.z = r * misc_cos( time*M_PI/25 );
		v.y = -110;

	} else if( wichone == 2 ) {

		float r = 40 - 25*misc_sin(time*M_PI/5);
		v.x = r * misc_sin( time*M_PI/25 );
		v.z = r * misc_cos( time*M_PI/25 );
		v.y = 110;

	} else if( wichone == 3 ) {

		float r = 20 + (float)(misc_rand()%50);
		v.x = r * misc_sin( time*M_PI/25 );
		v.z = r * misc_cos( time*M_PI/25 );
		v.y = -130;

	} else {

		float r = 20 + (float)(misc_rand()%50);
		v.x = r * misc_sin( time*M_PI/25 );
		v.z = r * misc_cos( time*M_PI/25 );
		v.y = 130;
	};

	return v;
};

VECTOR pl1f( float time, float param ) {
	VECTOR v;

	v.x = 30 * param * misc_cos( time*M_PI/70 );
	v.y = 4 * param * misc_sin( time*M_PI/10 );
	v.z = 30 * param * misc_sin( time*M_PI/70 );

	return v;
};

void p_lines_init() {
	int i;
	PLINE *pl;

	for( i=0; i<64; i++ ) pl_weird[i] = -150 + (float)(misc_rand()%300);

	// objekt 1 - flumm

	pl_o1.nLines = 140;
    pl_o1.Line = (PLINE*)misc_malloc(sizeof(PLINE)*(pl_o1.nLines+5) );
	pl = pl_o1.Line;
	for( i=0; i<140; i++ ) {
		pl->a = pl1f(i,1);
		pl->b = pl1f(i+5,4);
		pl ++;
	};

	// objekt 2 - gridden

	pl_o2.nLines = 50;
    pl_o2.Line = (PLINE*)misc_malloc(sizeof(PLINE)*(pl_o2.nLines+5) );
	pl = pl_o2.Line;
	for( i=0; i<25; i++ ) {

		float r = 8 + 4*misc_cos(i*M_PI/12.5);
		
		pl->a.x = -100;
		pl->a.y = (i-12.5f)*r;
		pl->a.z = 0;
		pl->b.x = 100;
		pl->b.y = pl->a.y;
		pl->b.z = 0;
		pl++;

		pl->a.x = (i-12.5f)*r;
		pl->a.y = -100;
		pl->a.z = 0;
		pl->b.x = pl->a.x;
		pl->b.y = 100;
		pl->b.z = 0;
		pl++;

	};

	// objekt tre morpheus

	pl_o3_1.nLines = 50;
	pl_o3_1.Line = (PLINE*)misc_malloc(sizeof(PLINE)*50);
	pl_o3_2.nLines = 50;
	pl_o3_2.Line = (PLINE*)misc_malloc(sizeof(PLINE)*50);
	pl_o3.nLines = 50;
	pl_o3.Line = (PLINE*)misc_malloc(sizeof(PLINE)*50);

	for( i=0; i<50; i++ ) {
		PLINE *pl1 = pl_o3_1.Line+i;
		PLINE *pl2 = pl_o3_2.Line+i;
		pl1->a = pl3f( (float)i,1 );
		pl1->b = pl3f( (float)i+1,1 );
		pl2->a = pl3f( (float)i,2 );
		pl2->b = pl3f( (float)i+1,2 );
	};

	// objekt fyra morpheus

	pl_o4_1.nLines = 50;
	pl_o4_1.Line = (PLINE*)misc_malloc(sizeof(PLINE)*50);
	pl_o4_2.nLines = 50;
	pl_o4_2.Line = (PLINE*)misc_malloc(sizeof(PLINE)*50);
	pl_o4.nLines = 50;
	pl_o4.Line = (PLINE*)misc_malloc(sizeof(PLINE)*50);

	for( i=0; i<50; i++ ) {
		PLINE *pl1 = pl_o4_1.Line+i;
		PLINE *pl2 = pl_o4_2.Line+i;
		pl1->a = pl3f( (float)i,3 );
		pl1->b = pl3f( (float)i+1,3 );
		pl2->a = pl3f( (float)i,4 );
		pl2->b = pl3f( (float)i+1,4 );
	};
};

void p_lines_kill() {
	misc_free( pl_o1.Line );
	misc_free( pl_o2.Line );
	misc_free( pl_o3.Line );
	misc_free( pl_o3_1.Line );
	misc_free( pl_o3_2.Line );
};


void pldrawbig( long startofs, unsigned char *source ) {
	__asm {
		mov esi, source
		mov edi, gfx_virtual
		add edi, startofs
		mov ecx, 49
		yloopen:
		push ecx
			mov ecx, 80
			xloopen:
			xor ebx, ebx
				mov bl, byte ptr [esi]
				mov eax, ebx
				shl eax, 16
				or eax, ebx
				mov dword ptr [edi], eax
				mov dword ptr [edi+640], 0
				mov dword ptr [edi+1280], eax
				mov dword ptr [edi+1920], 0
				inc esi
				add edi, 4
			loop xloopen
			add edi, 320+640*3
		pop ecx
		loop yloopen
	};
};

void p_lines_run() {

  VECTOR location;
  VECTOR dir;
  VECTOR up;
  MATRIX imat;
  float time = 0;
  do {
    gfx_cls(0);

	int stage = (int)(0+(time / 256)) % 4;
    int windex = (int)(time / 64)&63;

	long diffoo = 640 * (misc_rand()%5);//)(0.75 + 0.5*sin(time*3.142/5));

	if( stage & 1 ) {
		// bild höger sida, 3d vänster
		for( int k=0; k<200; k+=20 ) gfx_drawline( 0, k, 320, k, 40 );
		for( int u=0; u<320; u+=20 ) gfx_drawline( u, 0, u, 200, 40 );
//		gfx_drawline( 0, 0, 320, 0, 128 );
//		gfx_drawline( 0, 199, 320, 199, 128 );
	} else {
		// bild vänster sida, 3d höger.
		for( int k=0; k<200; k+=20 ) gfx_drawline( 320, k, 640, k, 40 );
		for( int u=320; u<640; u+=20 ) gfx_drawline( u, 0, u, 200, 40 );
//		gfx_drawline( 320, 0, 640, 0, 128 );
//		gfx_drawline( 320, 199, 640, 199, 128 );
	};

	float rr = 0.1f + (misc_fmod(time, 256.0f) / 4.0f);
   
    location.x = rr*misc_sin((time)*M_PI/(56-pl_weird[(windex+2)&63]));
    location.y = (rr/2)*misc_cos((time+pl_weird[(windex+4)&63])*M_PI/(250+pl_weird[(windex+4)&63]));
    location.z = rr*misc_cos((time)*M_PI/(54-pl_weird[(windex+2)&63]));
    dir.x = - location.x;
    dir.y = - location.y;
    dir.z = - location.z;
    vector_normalize( &dir );
    up.x = 0;
    up.y = 1-0.3f*misc_sin(time*M_PI/308);
    up.z = 0.3f*misc_cos(time*M_PI/279);
    matrix_from_vectors( dir, up, (MATRIX*)&imat );

	int pct;

	switch( stage ) {
		case 0:
			pl_draw( &pl_o1, &imat, &location, 480, 100 );
			pldrawbig( diffoo, (unsigned char *)&i_face1 );
			break;
		case 1:
			pl_draw( &pl_o2, &imat, &location, 160, 100 );
			pldrawbig( 320+diffoo, (unsigned char *)&i_face2 );
			break;
		case 2:
			for( pct=0; pct<40; pct+=2 ) {
				pl_morph( &pl_o3_1, &pl_o3_2, &pl_o3, (float)pct / 40 );
				pl_draw( &pl_o3, &imat, &location, 480, 100 );
			};
			pldrawbig( diffoo, (unsigned char *)&i_face3 );
			break;
		case 3:
			for( pct=0; pct<40; pct+=2 ) {
				pl_morph( &pl_o4_1, &pl_o4_2, &pl_o4, (float)pct / 40 );
				pl_draw( &pl_o4, &imat, &location, 160, 100 );
			};
			pldrawbig( 320+diffoo, (unsigned char *)&i_face4 );
			break;
	};
	gfx_drawline( 0,0, 640,0, 160 );
	gfx_drawline( 0,199,640,199,160 );
	gfx_drawline( 320, 0, 320, 200, 160 );

    gfx_blit();

    time ++;
  } while ( !gfx_kbhit() && time<1024 );

};