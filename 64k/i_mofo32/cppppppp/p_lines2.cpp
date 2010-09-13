// p_lines2
#include "common.h"

float pl2_weird[64];

POBJECT pl_o[10];
POBJECT pl_st;

VECTOR pl2f( float t, float s, float r1, float r2, float r3, float r4 ) {
	VECTOR v;
	v.x = 80*misc_cos( (t+r1)*M_PI/(10+r3) );
	v.y = 80*-misc_cos( (t+r3)*M_PI/(20+r2) );
	v.z = 80*misc_sin( (t+r2)*M_PI/(15+r4) );

	v.x += 70*misc_cos( (t+r2)*M_PI/(12+r1) );
	v.y -= 70*misc_cos( (t+r1)*M_PI/(14+r3) );
	v.z += 70*misc_sin( (t+r4)*M_PI/(16+r2) );

	v.x += 70*misc_cos( (t+r3)*M_PI/(12+r2) );
	v.y += 70*misc_cos( (t+r4)*M_PI/(14+r3) );
	v.z -= 70*misc_sin( (t+r1)*M_PI/(16+r4) );

	v.x /= 1;
	v.y /= 1;
	v.z /= 1;
	v.x *= s;
	v.y *= s;
	v.z *= s;
	return v;
};

void p_lines2_init() {
	int i,o;
	for( i=0; i<64; i++ ) pl2_weird[i] = -150 + (float)(misc_rand()%300);
	for( o=0; o<10; o++ ) {
		pl_o[o].nLines = 140;
		pl_o[o].Line = (PLINE*)misc_malloc(sizeof(PLINE)*(pl_o[o].nLines+5) );
		PLINE *pl = pl_o[o].Line;
		float rand1, rand2, rand3, rand4;
		rand1 = (float)(misc_rand()%200) / 25.0f;
		rand2 = (float)(misc_rand()%200) / 25.0f;
		rand3 = (float)(misc_rand()%200) / 25.0f;
		rand4 = (float)(misc_rand()%200) / 25.0f;
		for( i=0; i<140; i++ ) {
			pl->a = pl2f(i,1,rand1,rand2,rand3,rand4);
			pl->b = pl2f(i+0,1.333, rand1,rand2,rand3,rand4);
			pl ++;
		};
	};

		pl_st.nLines = 200;
		pl_st.Line = (PLINE*)misc_malloc(sizeof(PLINE)*(pl_st.nLines+5) );
		PLINE *pl = pl_st.Line;
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

void p_lines2_kill() {
};

void p_lines2_run() {

  VECTOR location;
  VECTOR dir;
  VECTOR up;
  MATRIX imat;
  long time = 0;
  do {
    gfx_cls(0);

	int stage = (0+(time / 256)) % 4;
    int windex = (time >> 6)&63;
	float rr = 0.1f + (misc_fmod(time, 256.0f) / 10.0f);
   
    location.x = rr*misc_sin((time)*M_PI/(56-pl2_weird[(windex+2)&63]));
    location.y = (rr*2)*misc_cos((time+pl2_weird[(windex+4)&63])*M_PI/(250+pl2_weird[(windex+4)&63]));
    location.z = -70;//rr*cos((time)*M_PI/(54-pl2_weird[(windex+2)&63]));

    //location.x = 15;
	//location.y = 5;
	//location.z = -30;

    dir.x = - location.x;
    dir.y = - location.y;
    dir.z = - location.z;
    vector_normalize( &dir );
    up.x = 0;
    up.y = 1;//-0.3*sin(time*M_PI/308);
    up.z = 0;//.3*cos(time*M_PI/279);
    matrix_from_vectors( dir, up, (MATRIX*)&imat );

	int mt1 = ((int)(time/64)) % 9;
	int mt2 = (mt1+1) % 9;
	float mp = misc_fmod(time,64)/64.0f;
	//float ms = 0.5 + 0.5*sin(mp*3.142);

	float ms = 0.500 + 0.500*misc_sin( (mp-1.500)*M_PI/-1.000 );

	//pl_draw( &pl_st, &imat, &location, 316+rand()%8, 96+rand()%8 );

	pl_morph( &pl_o[1+mt1], &pl_o[1+mt2], &pl_o[0], ms );

	pl_draw( &pl_o[0], &imat, &location, 320, 100 );

	gfx_genstatic();
    gfx_blit();

    time ++;
  } while ( !gfx_kbhit() && time<1024 );

}