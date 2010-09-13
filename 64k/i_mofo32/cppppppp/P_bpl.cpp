#include "..\common.h"
#include "..\images.h"

void p_bpl_init() {
};

void p_bpl_kill() {
};

void p_bpl_calcboxes( float time ) {
  float cx = 16 + 8*misc_cos(time*3.142f/123);
  float cy = 5 + 2.5f*misc_sin(time*3.142f/213);

  float w_0, w_1, w_2, w_3;

  w_0 = 15 + 13*misc_cos( time*3.142f/40 );
  w_1 = 15 + 13*misc_cos( time*3.142f/30 );
  w_2 = 15 + 13*misc_sin( time*3.142f/70 );
  w_3 = 15 + 13*misc_sin( time*3.142f/60 );

  for( int j=0; j<11; j++ ) {

    for( int i=0; i<33; i++ ) {

      float tempo = 2048 + 1024*misc_cos((time+i*2+j*3)*3.142f/150);

      CORNER *c = (CORNER *)&gfx_sq[j*64+i];
      float x = 30*misc_sin((i+time)*3.142f/120);
      float y = 30*misc_cos((j-time)*3.142f/105);

      float dx = (float)i - cx;
      float dy = (float)j - cy;

      float d = misc_sqrt( dx*dx + dy*dy );

      float d2 = 1 +  0.3f*misc_cos( (d*10+time)*3.142f/100 );

      float uu = (i-cx)*20*1024;
      float vv = (j-cy)*20*1024;

      float uu2, vv2;
      misc_rotate2d( uu, vv, &uu2, &vv2, time );
      c->u = (long)uu2;
      c->v = (long)vv2;

      float w1 = w_0 + ((w_3-w_0)/10*(float)j);
      float w2 = w_1 + ((w_2-w_1)/10*(float)j);
      float ww = w1 + ((w2-w1)/32*(float)i);

      c->w = (long)(1024*d2*100/ww);// + 46124 / (1+i+j);
      c->s = (long)1024;
    };
  };
};

#define NUM_CREDS 4
char *pbpl_creds[NUM_CREDS*2] = {
    "brain", "illuminator",
    "ears", "h-ecs",
    "eyes", "weird ed",
    "plats", "ledig"
  };

void p_bpl_run() {
  int t = 0;
  int t2 = 0;
  int shitto[30];
  for( int i=0; i<30; i++ ) shitto[i] = misc_rand()%10000;
  do {

    gfx_cls(0);
    int t70 = t%70;
    if( t<5 ) gfx_cls(255);

    int index = (t >> 7)-1;
    int sindex = t & 127;

    p_bpl_calcboxes( (float)(shitto[10+index] + t) );
    gfx_drawsq( (unsigned char *)&i_grid );
    t ++;

//    p_bpl_calcboxes( 30123-t );
//    gfx_drawsq( (unsigned char *)&i_grid );

    if( index >= 0 && index < NUM_CREDS ) {
      if( sindex < 5 ) {
        gfx_cls(255);
      } else {
        float dizt = 20 +15*misc_sin(t*3.142f/15);
        float dizt2 = 70 * misc_cos(t*3.142f/38);
		int r1 = misc_rand()%3;
		int r2 = misc_rand()%3;
        gfx_drawcenteredstring( 280+r1, 60-r2, 30+dizt, 30+dizt, 30, 255, pbpl_creds[index*2] );
//        gfx_drawcenteredstring( 240+dizt2, 50, 60+dizt, 60+dizt, 60, 80, pbpl_creds[index*2] );
        gfx_drawcenteredstring( 360-r2, 130+r1, 30+dizt, 30+dizt, 30, 255, pbpl_creds[index*2+1] );
//        gfx_drawcenteredstring( 400-dizt2, 140, 60+dizt, 60+dizt, 60, 80, pbpl_creds[index*2+1] );
      };
    };

/*
    float rr = 1.2 + 0.2*cos(t*3.142/10);
    float kaos1 = 1;
    float kaos2 = 1;
//    if( t%10<=2 ) kaos1 += (float)(rand()%100) / 100;
//    if( (t+23)%14<=2 ) kaos2 += (float)(rand()%100) / 100;
    t2 ++;

    if( t2>=50 && t2<=250 )
      gfx_drawsprite( 260, 100, 256*rr*kaos1, 86*rr*kaos2, (unsigned char *)&i_psikor );

    if( t2>=300 && t2<=500 )
      gfx_drawsprite( 380, 100, 256*rr*kaos1, 86*rr*kaos2, (unsigned char *)&i_mofo );
*/

    gfx_genstatic();
    gfx_blit();

//    if( t70==69 ) t += 20;

  } while ( !gfx_kbhit() && t<768 );
};


