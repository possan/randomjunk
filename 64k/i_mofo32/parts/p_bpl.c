#include "..\common.h"
#include "..\images.h"

unsigned char *pb_texture;

void p_bpl_init() {
  pb_texture = common_loadgif( (unsigned char *)&gif_grid );
};

void p_bpl_kill() {
};

void p_bpl_calcboxes( float time ) {
  float cx = (float)(16 + 8*cos(time*3.142f/123));
  float cy = (float)(5 + 2.5f*sin(time*3.142f/213));

  float w_0, w_1, w_2, w_3;
  int j;

  w_0 = (float)(15 + 13*cos( time*3.142f/40 ));
  w_1 = (float)(15 + 13*cos( time*3.142f/30 ));
  w_2 = (float)(15 + 13*sin( time*3.142f/70 ));
  w_3 = (float)(15 + 13*sin( time*3.142f/60 ));

  for( j=0; j<11; j++ ) {

	int i;
    for( i=0; i<33; i++ ) {

      float tempo = (float)(2048 + 1024*cos((time+i*2+j*3)*3.142f/150));

      CORNER *c = (CORNER *)&gfx_sq[j*64+i];
      float x = (float)(30*sin((i+time)*3.142f/120));
      float y = (float)(30*cos((j-time)*3.142f/105));

      float dx = (float)i - cx;
      float dy = (float)j - cy;

      float d = (float)sqrt( dx*dx + dy*dy );

      float d2 = (float)(1 +  0.3f*cos( (d*10+time)*3.142f/100 ));

      float uu = (i-cx)*20*1024;
      float vv = (j-cy)*20*1024;

      float uu2, vv2, w1, w2, ww;
      misc_rotate2d( uu, vv, &uu2, &vv2, time );
      c->u = (long)uu2;
      c->v = (long)vv2;

      w1 = w_0 + ((w_3-w_0)/10*(float)j);
      w2 = w_1 + ((w_2-w_1)/10*(float)j);
      ww = w1 + ((w2-w1)/32*(float)i);

      c->w = (long)(1024*d2*100/ww);// + 46124 / (1+i+j);
      c->s = (long)1024;
    };
  };
};

#define NUM_CREDS 4
char *pbpl_creds[NUM_CREDS*2] = {
    "brain", "illuminator",
    "ears", "h-ecs",
    "eyes", "neurodruid, mind",
    "ass", "trones"
  };

void p_bpl_darkshit( long o, long lenne ) {
	__asm {
		mov esi, gfx_virtual
		add esi, o
		mov ecx, lenne
		shr ecx, 1
	lennie:
		mov ax, word ptr [esi]
		shr al, 2
		shr ah, 2
		mov word ptr [esi], ax
		inc esi
		inc esi
		loop lennie
	};
};

void p_bpl_run() {
  int t = 0;
  int t2 = 0;
  int shitto[30];
  int i;
  for( i=0; i<30; i++ ) shitto[i] = misc_rand()%10000;
  do {
	  int  index, sindex, t70;

	  t = misc_gettimer()*30;
	  
	  index = (t >> 7)-1;
	    sindex = t & 127;
		t70 = t%70;

    gfx_cls(0);
    if( t<5 ) gfx_cls(255);

    p_bpl_calcboxes( (float)(shitto[10+index] + t) );
    gfx_drawsq( pb_texture );
    t ++;

//    p_bpl_calcboxes( 30123-t );
//    gfx_drawsq( (unsigned char *)&i_grid );

    if( index >= 0 && index < NUM_CREDS ) {
      if( sindex < 5 ) {
        gfx_cls(255);
      } else {
        int dizt = (int)(20 +15*sin(t*3.142f/15));
        int dizt2 = (int)(70 * cos(t*3.142f/38));
		int r1 = misc_rand()%1;
		int r2 = misc_rand()%1;

        //gfx_drawcenteredstring( 240+(int)dizt2, 50, 60+dizt, 60+dizt, 60, 100, pbpl_creds[index*2] );
        //gfx_drawcenteredstring( 400-(int)dizt2, 140, 60+dizt, 60+dizt, 60, 100, pbpl_creds[index*2+1] );

		// MÖRKA ner litegran...
		p_bpl_darkshit( 40*640, 50*640 );
		p_bpl_darkshit( 115*640, 50*640 );
        
		gfx_drawcenteredstring( 280+r1, 65-r2, 30+dizt, 30+dizt, 30, 255, pbpl_creds[index*2] );
        gfx_drawcenteredstring( 360-r2, 140+r1, 30+dizt, 30+dizt, 30, 255, pbpl_creds[index*2+1] );
      };
    };

    gfx_genstatic();
    gfx_blit();

  } while ( !gfx_kbhit() && t<512 );
};


