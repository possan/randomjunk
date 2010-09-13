// 
#include "common.h"
#include "images.h"

unsigned char *pp_babe;
float pl2_weird[64];

POBJECT pl_o[10];
POBJECT pl_st;

VECTOR pl2f2( float t, float s, float r1, float r2, float r3, float r4 ) {
	VECTOR v;
	v.x = (float)(80*cos( (t+r1)*M_PI/(10+r3) ));
	v.y = (float)(80*-cos( (t+r3)*M_PI/(20+r2) ));
	v.z = (float)(80*sin( (t+r2)*M_PI/(15+r4) ));

	v.x += (float)(70*cos( (t+r2)*M_PI/(12+r1) ));
	v.y -= (float)(70*cos( (t+r1)*M_PI/(14+r3) ));
	v.z += (float)(70*sin( (t+r4)*M_PI/(16+r2) ));

	v.x += (float)(70*cos( (t+r3)*M_PI/(12+r2) ));
	v.y += (float)(70*cos( (t+r4)*M_PI/(14+r3) ));
	v.z -= (float)(70*sin( (t+r1)*M_PI/(16+r4) ));

	v.x /= 1;
	v.y /= 1;
	v.z /= 1;
	v.x *= s;
	v.y *= s;
	v.z *= s;
	return v;
};

void p_pic_init() {
	int i,o;
	PLINE *pl;

	pp_babe = common_loadgif( (unsigned char *)&gif_fullscreen );
	
	for( i=0; i<64; i++ ) pl2_weird[i] = -150 + (float)(misc_rand()%300);
	for( o=0; o<10; o++ ) {
		float rand1, rand2, rand3, rand4;
		pl_o[o].nLines = 140;
		pl_o[o].Line = (PLINE*)malloc(sizeof(PLINE)*(pl_o[o].nLines+5) );
		pl = pl_o[o].Line;
		rand1 = (float)(misc_rand()%200) / 25.0f;
		rand2 = (float)(misc_rand()%200) / 25.0f;
		rand3 = (float)(misc_rand()%200) / 25.0f;
		rand4 = (float)(misc_rand()%200) / 25.0f;
		for( i=0; i<140; i++ ) {
			pl->a = pl2f2((float)i,0.5,rand1,rand2,rand3,rand4);
			pl->b = pl2f2((float)i+0,1, rand1,rand2,rand3,rand4);
			pl ++;
		};
	};

		pl_st.nLines = 200;
		pl_st.Line = (PLINE*)malloc(sizeof(PLINE)*(pl_st.nLines+5) );
		pl = pl_st.Line;
		for( i=0; i<200; i++ ) {

			float d = 300 + (misc_rand()%200);
			pl->a.z = (d / 10) - 30;
			pl->a.x = -d/2 + (misc_rand()%(int)d);
			pl->a.y = -d/2 + (misc_rand()%(int)d);
			pl->a.y /= 1.5f;
			pl->a.x *= 3;

			pl->b = pl->a;

			pl->a.z -= 1;
			pl->b.z += misc_rand()%100;

			pl ++;
		};

};

void p_pic_kill() {
};

void pp_mblur( float xc, float yc, float xamt, float yamt ) {

	int i;

	for( i=0; i<200; i++ ) {
		float t = yc + (((float)i-yc)*yamt);
		t = i + (-30 + misc_rand()%60);
		//t = i;
		//t = i;
		if( t<0 ) t=0;
		if( t>198 ) t=198;
		gfx_mb_ybuf1[i] = (long)t*640;
		gfx_mb_ybuf2[i] = 256*((float)t-(int)t);
	};

	for( i=0; i<640; i++ ) {
		float t = xc + (((float)i-xc)*xamt);
		if( t<0 ) t=0;
		if( t>638 ) t=638;
		gfx_mb_xbuf1[i] = t;
		gfx_mb_xbuf2[i] = 256*((float)t-(int)t);
	};

	common_mblur();

};

void p_pic_run() {
		float s1, s2, s3, s4;
  VECTOR location;
  VECTOR dir;
  VECTOR up;
  MATRIX imat;
  long time = 0;
  do {
	  int stage, windex, mt1, mt2;
	  float mp, ms, rr;
	  int xx, yy;
	  time = misc_gettimer()*35;

	stage = (0+(time / 256)) % 4;
    windex = (time >> 6)&63;
	rr = 0.1f + (fmod(time, 256.0f) / 10.0f);

	mt1, mt2;
	mp, ms;

	xx, yy;

    gfx_cls(0); 

	__asm {
		mov esi, pp_babe;
		mov edi, gfx_virtual

		mov ecx, 100
	yloopen:
		push ecx

		add edi, 320

		mov ecx, 160
	xloopen:

		mov al, byte ptr [esi]
		mov ah, al
		mov word ptr [edi], ax
		mov word ptr [edi+640], ax

		inc edi
		inc edi
		inc esi

		loop xloopen

		add edi, 640

		pop ecx
		loop yloopen

	};
	
    location.x = rr*sin((time)*M_PI/(56-pl2_weird[(windex+2)&63]));
    location.y = (rr*2)*cos((time+pl2_weird[(windex+4)&63])*M_PI/(250+pl2_weird[(windex+4)&63]));
    location.z = -40 + rr*cos((time)*M_PI/(54-pl2_weird[(windex+2)&63]));
    //location.x = 15;
    //location.y = 25;
    //location.z = -40;

    dir.x = - location.x;
    dir.y = - location.y;
    dir.z = - location.z;

    vector_normalize( &dir );
    up.x = 0;
    up.y = -0.6*sin(time*M_PI/308);
    up.z = .6*cos(time*M_PI/279);
    matrix_from_vectors( dir, up, (MATRIX*)&imat );

	mt1 = ((int)(time/64)) % 9;
	mt2 = (mt1+1) % 9;
	mp = fmod(time,64)/64.0f;
	//ms = 0.500 + 0.500*sin( (mp-1.500)*M_PI/-1.000 );

	ms = fmod( time,64) / 64.0f;

	pl_morph( &pl_o[1+mt1], &pl_o[1+mt2], &pl_o[0], ms );

	s1 = 320 + 200*sin( time*3.142/22 );
	s2 = 100 + 200*cos( time*3.142/37 );
	s3 = 0.8;// + 0.22*misc_cos( time*3.142/30 );
	s4 = 0.95 - 0.02*sin( time*3.142/45 );
	pp_mblur( s1,s2,s3,s4 );

	//pl_draw( &pl_o[0], &imat, &location, 160, 100 );
	
/*
		s1 = 30 + (misc_rand()%100);
		s2 = 30 + (misc_rand()%100);
		gfx_drawsprite( 150, 50, s1, s2, 255, (unsigned char *)&i_onesph );
		gfx_drawsprite( 170, 150, s2, s1, 255, (unsigned char *)&i_onesph );
*/

	//pl_draw( &pl_o[0], &imat, &location, 155+(misc_rand()%10), 100 );
	pl_draw( &pl_o[0], &imat, &location, 160, 100 );
		
		//concepts, theory, formulas, algorithms, tables 

		switch( (windex>>1)-1 ) {
			case 0:
				gfx_drawcenteredstring( 500+misc_rand()%5, 100+misc_rand()%5, 40, 40, 30, 255, "concepts" );
				break;
			case 1:
				gfx_drawcenteredstring( 500+misc_rand()%5, 100+misc_rand()%5, 40, 40, 30, 255, "theories" );
				break;
			/*case 2:
				gfx_drawcenteredstring( 500+misc_rand()%5, 100+misc_rand()%5, 40, 40, 30, 255, "formulas" );
				break;
			case 3:
				gfx_drawcenteredstring( 500+misc_rand()%5, 100+misc_rand()%5, 40, 40, 30, 255, "algorithms" );
				break;
			case 4:
				gfx_drawcenteredstring( 500+misc_rand()%5, 100+misc_rand()%5, 40, 40, 30, 255, "tables" );
				break;
			case 5:
				gfx_drawcenteredstring( 500+misc_rand()%5, 100+misc_rand()%5, 40, 40, 30, 255, "dreams" );
				break;*/
		}

//		gfx_drawcenteredstring( 160, 100, 40, 40, 20+5*misc_sin(time*3.142/8), 255, "inspiration" );
//		gfx_drawcenteredstring( 160, 100, 40, 40, 20+5*misc_sin(time*3.142/8), 255, "inspiration" );

		gfx_genstatic();
		gfx_blit();
		time ++;
	} while( !gfx_kbhit() && time<420 ); // 512
};