#include "..\common.h"
#include "..\images.h"

float shitto[32*10];

float pr_wacko[10] = {
    23,
    39,
    53,
    49,
    72,
    91,
    69,
    94,
    81,
    32 };

char *pr_greet[] = {
  "we love", "and", "respect",
  "k2", "woorlic", "noice",
  "1kladd1", "kladd2", "kladd3",
  "2kladd1", "kladd2", "kladd3",
  "3kladd1", "kladd2", "kladd3",
  "4kladd1", "kladd2", "kladd3",
  "5kladd1", "kladd2", "kladd3",
  "6kladd1", "kladd2", "kladd3",
  "7kladd1", "kladd2", "kladd3",
  "8kladd1", "kladd2", "kladd3",
  "", "", "" };

int pr_count;
  

void p_raster_init() {
  int i = 0;
  while( pr_greet[i][0]!=0 ) {
    i++;
  };
  pr_count = i/3;
};

void p_raster_kill() {
};

void p_raster_run() {
  for( int i=0; i<32*10; i++ ) {
    shitto[i] = 1 - ((float)(i%32) / 32.f);
    shitto[i] *= shitto[i];
    shitto[i] *= shitto[i];
  };

  int t = 0;
  int t2 = 0;
  int index;
  do {

    gfx_cls(0);

//    float kao = (30*sin( t*3.142/300 ) * (rand()%100)) / 80;

    float x, y, x2, y2, r;
    for( int j=-8; j<=8; j++ ) {

      for( int i=-8; i<=8; i++ ) {

        float rot = t + (30*misc_sin((t+j*10)*3.142/100)) + (30*misc_cos((i*11-t)*3.142/130));

        x = (float)i*36;
        y = (float)j*36;
        misc_rotate2d( x, y, &x2, &y2, rot );
        x2 += 240;
        y2 += 100;
        int ix2 = x2/20;
        if( ix2<0 ) ix2=0;
        if( ix2>31 ) ix2=31;
        int iy2 = y2/20;
        if( iy2<0 ) iy2=0;
        if( iy2>9 ) iy2=9;
        r = 30*shitto[iy2*32+ix2];
        if( r>20 ) r=20;
        if( r>1 && x2>=-32 && y2>=-32 && x2<=672 && y2<=232 )
          gfx_drawsprite( x2, y2, r, r, 128, (unsigned char *)&i_onesph );
      };
    };

    index = (t >> 7) - 2;
    if( index>=0 && index<pr_count ) {

      float rx, ry;
      int sp = 1+(30 / (float)(1+t%128));
      int w = 30 + sp*sp;
      int h = 30 - sp;

      rx = w - 20*misc_sin(t*3.142/pr_wacko[(index)%10]);
      ry = h + 20*misc_cos(t*3.142/pr_wacko[(index+2)%10]);
      gfx_drawcenteredstring( 500, 50, rx, ry, 30+sp, 255, pr_greet[index*3] );

      rx = w + 20*misc_cos(t*3.142/pr_wacko[(index+3)%10]);
      ry = h + 20*misc_sin(t*3.142/pr_wacko[(index+6)%10]);
      gfx_drawcenteredstring( 480, 100, rx, ry, 30+sp, 255, pr_greet[index*3+1] );

      rx = w + 20*misc_sin(t*3.142/pr_wacko[(index+5)%10]);
      ry = h - 20*misc_cos(t*3.142/pr_wacko[(index+4)%10]);
      gfx_drawcenteredstring( 460, 150, rx, ry, 30+sp, 255, pr_greet[index*3+2] );

    };

    gfx_genstatic();
    gfx_blit();
    t ++;

  } while ( !gfx_kbhit() && index<pr_count+1 );
};
