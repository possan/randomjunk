// p_lines2
#include "..\common.h"

float pl2_weird[64];

POBJECT pl2_o[10];
POBJECT pl2_st;

// fult, mycket fult gjort!!!
extern void pp2_small( unsigned char fadeshit );

VECTOR pl2f( float t, float s, float r1, float r2, float r3, float r4 ) {
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

VECTOR pl2_heightfield( int u, int v, float o ) {
	VECTOR t;
	float z;
	z = (float)sqrt( (float)(u-15.25) * (float)(u-15.35) + (float)(v-15.45) * (float)(v-15.55) );
	t.y = (float)(35*cos( (z+o/2)*3.142/10 ));
	t.y += (float)(20*cos( (u-o)*3.142/19 )); 
	t.y += (float)(20*sin( (v-o)*3.142/17 )); 
	t.x = (float)((u-15)*30);
	t.z = (float)((v-15)*30);
	return t;
};

void pl2_gen( float t ) {

	PLINE *pl;
	int i, j;
	
	pl2_o[0].nLines = 0;
	pl2_o[0].Line = (PLINE*)malloc(sizeof(PLINE)*3000);

	pl = pl2_o[0].Line;

	for( j=0; j<30; j++ ) {

		for( i=0; i<30; i++ ) {

			pl->a = pl2_heightfield( i, j, t );
			pl->b = pl2_heightfield( i+1, j, t );
			pl ++;
			pl2_o[0].nLines ++;

			pl->a = pl2_heightfield( i, j, t );
			pl->b = pl2_heightfield( i, j+1, t );
			pl ++;
			pl2_o[0].nLines ++;

		};

	};

};

void p_lines2_init() {
	int i;
	for( i=0; i<64; i++ ) pl2_weird[i] = -150 + (float)(misc_rand()%300);

	//float rand1, rand2, rand3, rand4;


/*		rand1 = (float)(misc_rand()%200) / 25.0f;
		rand2 = (float)(misc_rand()%200) / 25.0f;
		rand3 = (float)(misc_rand()%200) / 25.0f;
		rand4 = (float)(misc_rand()%200) / 25.0f;
		for( i=0; i<140; i++ ) {
			pl->a = pl2f((float)i,0.5,rand1,rand2,rand3,rand4);
			pl->b = pl2f((float)i+0,1, rand1,rand2,rand3,rand4);
			pl ++;
		};
	};*/

		/*pl_st.nLines = 200;
		pl_st.Line = (PLINE*)malloc(sizeof(PLINE)*(pl_st.nLines+5) );
		pl = pl_st.Line;
		for( i=0; i<200; i++ ) {

			float d = (float)(300 + (misc_rand()%200));
			pl->a.z = (d / 10) - 30;
			pl->a.x = -d/2 + (misc_rand()%(int)d);
			pl->a.y = -d/2 + (misc_rand()%(int)d);
			pl->a.y /= 1.5f;
			pl->a.x *= 3;

			pl->b = pl->a;

			pl->a.z -= 1;
			pl->b.z += misc_rand()%100;

			pl ++;
		};*/

};

void p_lines2_kill() {
};

void pl2_mblur( float xamt, float yamt ) {

	int i;
	float t;

	for( i=0; i<200; i++ ) {
		t = (float)(100+((float)(i-100)*yamt));
		//if( i&1 ) t = -yamt; else t = yamt;
		//t += i;
		if( t<0 ) t=0;
		if( t>198 ) t=198;
		gfx_mb_ybuf1[i] = (long)t*640;
		gfx_mb_ybuf2[i] = (unsigned char)(256.0f*(float)((float)t-(int)t));
	};

	for( i=0; i<640; i++ ) {
		//if( i&1 ) t = -xamt; else t = xamt;
		//t += i;
		t = (float)(320 + ((float)(i-320)*xamt));
		if( t<0 ) t=0;
		if( t>638 ) t=638;
		gfx_mb_xbuf1[i] = (long)t;
		gfx_mb_xbuf2[i] = (unsigned char)(256.0f*(float)((float)t-(int)t));
	};

	common_mblur();

};

void p_lines2_run() {

  VECTOR location;
  VECTOR dir;
  VECTOR up;
  MATRIX imat;
  float time;
  do {
	  int stage, windex;
	  float rr, mp, ms;
	  time = (float)(misc_gettimer() * 25);

	stage = (0+((int)time / 256)) % 4;
    windex = ((int)time >> 6)&63;
	rr = (float)(0.1f + (fmod(time, 256.0f) / 3.0f));

    gfx_cls(0);
	
    location.x = (float)(-rr*sin((time)*M_PI/(156-pl2_weird[(windex+2)&63])));
    location.y = (float)((rr*2) + rr*cos((time+pl2_weird[(windex+4)&63])*M_PI/(250+pl2_weird[(windex+4)&63])));
    location.z = (float)(-rr*cos((time)*M_PI/(156-pl2_weird[(windex+2)&63])));

    //location.x = 15;
	//location.y = 5;
	//location.z = -30;

	pl2_gen( time );

    dir.x = - location.x;
    dir.y = - location.y;
    dir.z = - location.z;
    vector_normalize( &dir );
    up.x = 0;
    up.y = (float)(-1*sin(time*M_PI/308));
    up.z = (float)(.1*cos(time*M_PI/279));
    matrix_from_vectors( dir, up, (MATRIX*)&imat );

	pl_draw( &pl2_o[0], &imat, &location, /*160 + misc_rand()%*/320, 100 );


/*
	__asm {
		mov esi, gfx_virtual
		mov ecx, 640*200
	skitklutt:
			mov al, byte ptr [esi]
			shl al, 1
			jnc klampa
				mov al, 250
		klampa:
			mov byte ptr [esi], al
			inc esi
		loop skitklutt
	};*/

	if( time<128 ) {
		pp2_small( (unsigned char)(255 - (time*1.99)) );
	};

	gfx_genstatic();
    gfx_blit();

	mp = 0.97f;//1 + 0.1 * sin( time*M_PI/7 );
	ms = 0.97f;//1 + 0.1 * cos( time*M_PI/6 );
	pl2_mblur( mp, ms );

    time ++;
  } while ( !gfx_kbhit() && time<512 );

}