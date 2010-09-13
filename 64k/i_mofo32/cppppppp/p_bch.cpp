#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <mem.h>
#include <math.h>
#include "\prj\common\glibptc\glib.h"

RGBA *tempo;
unsigned char *shit;
unsigned char *shit2;
unsigned char texto[4];

void blitjonny() {

  long o1 = 0;
  long o2 = 70*320; 
  for( int j=0; j<100; j++ ) {
     for( int i=0; i<320; i++ ) {
        int c = shit[o1];
        c >>= 4;
        c <<= 4;
        tempo[o2].r = c;
        tempo[o2].g = c;
        tempo[o2].b = c;
        o1 += 2;
        o2 ++;
     };
     o1 += 640;
  };
  glib.blit( tempo );
};

typedef struct {
  long u, v;
  long s, w;
} CORNER;

CORNER sq[65*12];

void drawboxes() {
  CORNER v[4];  //  0---1
  CORNER p[3];  //  |   |
  CORNER d[3];  //  3---2


  for( int by=0; by<10; by++ ) {

    for( int bx=0; bx<32; bx++ ) {

      long bofs = by * 64 + bx;


      p[0].u = sq[bofs].u;    d[0].u = (sq[bofs+64].u - sq[bofs].u) / 20;
      p[0].v = sq[bofs].v;    d[0].v = (sq[bofs+64].v - sq[bofs].v) / 20;
      p[0].s = sq[bofs].s;    d[0].s = (sq[bofs+64].s - sq[bofs].s) / 20;
      p[0].w = sq[bofs].w;    d[0].w = (sq[bofs+64].w - sq[bofs].w) / 20;
      p[1].u = sq[bofs+1].u;    d[1].u = (sq[bofs+65].u - sq[bofs+1].u) / 20;
      p[1].v = sq[bofs+1].v;    d[1].v = (sq[bofs+65].v - sq[bofs+1].v) / 20;
      p[1].s = sq[bofs+1].s;    d[1].s = (sq[bofs+65].s - sq[bofs+1].s) / 20;
      p[1].w = sq[bofs+1].w;    d[1].w = (sq[bofs+65].w - sq[bofs+1].w) / 20;
      long sofs = by*20*640+bx*20;

      for( int py=0; py<20; py++ ) {

        p[2].u = p[0].u;
        p[2].v = p[0].v;
        p[2].s = p[0].s;
        p[2].w = p[0].w;
        d[2].u = (p[1].u - p[0].u) / 20;
        d[2].v = (p[1].v - p[0].v) / 20;
        d[2].s = (p[1].s - p[0].s) / 20;
        d[2].w = (p[1].w - p[0].w) / 20;

        for( int px=0; px<20; px++ ) {
          int u = ((p[2].u*p[2].w)>>28)+65536;
          int v = ((p[2].v*p[2].w)>>28)+65536;
//          int u = (p[2].u>>6)+65536;
//          int v = (p[2].v>>6)+65536;
          shit[ sofs++ ] = texto[ ((v&1)<<1)+(u&1) ];

//          shit[ sofs++ ] = p[2].w >> 10;

          p[2].u += d[2].u;
          p[2].v += d[2].v;
          p[2].s += d[2].s;
          p[2].w += d[2].w;
        };
        p[0].u += d[0].u;
        p[0].v += d[0].v;
        p[0].s += d[0].s;
        p[0].w += d[0].w;
        p[1].u += d[1].u;
        p[1].v += d[1].v;
        p[1].s += d[1].s;
        p[1].w += d[1].w;
        sofs += 640 - 20;
      };
    };
  };
};

void calcboxes( float time );

main() {
  glib.choose();
  glib.init();
  tempo = RGBACreate( 320, 240 );
  shit = (unsigned char *) malloc( 640*200 );
  shit2 = (unsigned char *) malloc( 640*200 );
  texto[0] = 0;
  texto[1] = 200;
  texto[2] = 200;
  texto[3] = 0;

  int t = 0;
  do {
    calcboxes( t++ );
    drawboxes();

    for( long o=0; o<640*200; o++ ) {
      shit[o] = (shit[o]+shit2[o]+shit2[o]+shit2[o])>>2;
    };
    blitjonny();
    memcpy( shit2, shit, 640*200 );

    if( (t%20)==19 ) t += 100;

  } while ( !kbhit() );

  free( shit );
  free( shit2 );
  RGBAFree( tempo );
  glib.kill();
};

void rotate2d( float x, float y, float *dx, float *dy, float angle ) {
  *dx = (cos(angle*3.142/180) * x ) + (sin(angle*3.142/180) * y ); 
  *dy = (sin(angle*3.142/180) * -x ) + (cos(angle*3.142/180) * y );
};

void calcboxes( float time ) {
  float cx = 16 + 8*cos(time*3.142/231);
  float cy = 5 + 2.5*sin(time*3.142/153);
  for( int j=0; j<11; j++ ) {

    for( int i=0; i<33; i++ ) {

      float tempo = 2048 + 1024*cos((time+i*2+j*3)*3.142/150);

      CORNER *c = (CORNER *)&sq[j*64+i];
      float x = 30*sin((i+time)*3.142/240);
      float y = 30*cos((j-time)*3.142/325);

      float dx = (float)i - cx;
      float dy = (float)j - cy;

      float d = sqrt( dx*dx + dy*dy );

      float d2 = 1 +  0.7*cos( (d*10+time)*3.142/50 );

      float uu = cx*d*d2; //-cx)*512*cos((j-i+time)*3.142/30);
      float vv = cy*d*d2;//cy*d; //-cy)*512*sin((j+i-time)*3.142/30);


      uu = (i*20-cx*20)*256;// + uu*6;
      vv = (j*20-cy*20)*256;// + vv*6;

      float uu2, vv2;
      float rot = time/3;
      rotate2d( uu, vv, &uu2, &vv2, rot );

      c->u = uu2;
      c->v = vv2;
      c->w = 1024 + 46124 / (1+d2);
      c->s = 1024;
    };
  };
};
