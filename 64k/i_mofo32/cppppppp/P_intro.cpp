#include "..\common.h"

void p_intro_init() {
};

void p_intro_kill() {
};

void pi_text( char *txt, float dy, float phase ) {

  // each char takes 64 phases to fade in, (ease out)
  //                 64 phases to wait (ease mid)
  //             and 64 phases to fade out... (ease mid)

  int l = 0;
  while( txt[l]!='\0' ) l++;
	int r = misc_rand()%4;
	int r2 = misc_rand()%4;

  for( int i=0; i<l; i++ ) {
    float tph = phase - (i*5);
    if( tph>=0 && tph<300 ) {

    float step = 50 / (1+(tph*tph)/15);
    float w = 20 + (step);
    float x = -(w*l) + (i*2*w);
    float y = (dy * w) / 50;
    float bri = 255;
    if( tph>200 ) {
      bri = 255 / (1+((tph-200)*(tph-200)/60));
      x *= 1 + ((tph-200)/200);
    };

      gfx_drawchar( 320 + x +r , 100 + y +r2, w*2, w*2, txt[i], bri );
//      gfx_drawchar( 320 + x, 100 + y, w*2, w*6, txt[i], bri/2 );
    };

  };
};

void p_intro_run() {
  int t = 0;
  do {
    gfx_cls(0);

    pi_text( "psikorp", 0, t-100 );

    pi_text( "goes 64kb at", -40, t-300 );
    pi_text( "dreamhack 99", 40, t-350 );

    pi_text( "\"mofo\"", 0, t-600 );

    gfx_genstatic();
    gfx_blit();
    t ++;
  } while( !gfx_kbhit() && t<850 );
};
