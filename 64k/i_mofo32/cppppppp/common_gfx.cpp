// common graphics
#include <string.h>
#include <math.h>
#include "..\images.h"
#include "..\common.h"

CORNER gfx_sq[65*12];

char *fonttable = " abcdefghijklmnopqrstuvwxyz0123456789.,:;@!\"/\\-+()&%~";

void gfx_drawsprite( int x, int y, float width, float height, int brightness, unsigned char *data ) {

    int x1 = x - (width/2);
    int y1 = y - (height/2);
    long xstep = 64*2048 / width;
    long ystep = 64*2048 / height;

	long l;

	int yp = 0;
	int ys = y1;
    for( int j=0; j<height; j++ ) {
		int xp = 0;
		int xs = x1;
        for( int i=0; i<width; i++ ) { 
            if( xs>=0 && xs<640 && ys>=0 && ys<200 ) {
                long o = ys*640+xs;
                int c = gfx_virtual[o];
                c += (data[ ((yp>>11)<<6)+(xp>>11) ]*brightness)>>8;
                if( c>255 ) c = 255;
                gfx_virtual[o] = c;
			};
            xp += xstep;
			xs ++;
		};
        yp += ystep;
		ys ++;
	};
};

void gfx_drawsq( unsigned char *source ) {
  CORNER v[4];  //  0---1
  CORNER p[3];  //  |   |
  CORNER d[3];  //  3---2
  for( int by=0; by<10; by++ ) {
    for( int bx=0; bx<32; bx++ ) {
      long bofs = by * 64 + bx;
      p[0].u = gfx_sq[bofs].u;    d[0].u = (gfx_sq[bofs+64].u - gfx_sq[bofs].u) / 20;
      p[0].v = gfx_sq[bofs].v;    d[0].v = (gfx_sq[bofs+64].v - gfx_sq[bofs].v) / 20;
      p[0].s = gfx_sq[bofs].s;    d[0].s = (gfx_sq[bofs+64].s - gfx_sq[bofs].s) / 20;
      p[0].w = gfx_sq[bofs].w;    d[0].w = (gfx_sq[bofs+64].w - gfx_sq[bofs].w) / 20;
      p[1].u = gfx_sq[bofs+1].u;    d[1].u = (gfx_sq[bofs+65].u - gfx_sq[bofs+1].u) / 20;
      p[1].v = gfx_sq[bofs+1].v;    d[1].v = (gfx_sq[bofs+65].v - gfx_sq[bofs+1].v) / 20;
      p[1].s = gfx_sq[bofs+1].s;    d[1].s = (gfx_sq[bofs+65].s - gfx_sq[bofs+1].s) / 20;
      p[1].w = gfx_sq[bofs+1].w;    d[1].w = (gfx_sq[bofs+65].w - gfx_sq[bofs+1].w) / 20;
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
          int u = ((p[2].u*p[2].w)>>23)+65536;
          int v = ((p[2].v*p[2].w)>>23)+65536;

          gfx_virtual[ sofs++ ] = (source[ ((v&63)<<6)+(u&63) ] * p[2].s)>>10;

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

void gfx_drawchar( int x, int y, float width, float height, char ch, unsigned char brightness ) {

    int ctn = strlen( fonttable );
    int f = 0;
    for( int n=0; n<ctn; n++ ) if( fonttable[n]==ch ) f = n;
    if( f==0 ) return;

    int x1 = x - (width/2);
    int y1 = y - (height/2);
    long xstep = 16*2048 / width;
    long ystep = 16*2048 / height;

	long l;
    unsigned char *data = (unsigned char *)&i_font+f*16*16;

	int yp = 0;
	int ys = y1;
    for( int j=0; j<height; j++ ) {
		int xp = 0;
		int xs = x1;
        for( int i=0; i<width; i++ ) { 
            if( xs>=0 && xs<640 && ys>=0 && ys<200 ) {
                long o = ys*640+xs;
                int c = gfx_virtual[o] + ((brightness * data[ ((yp>>11)<<4)+(xp>>11) ])>>8);
                if( c>255 ) c = 255;
                gfx_virtual[o] = c;
			};
            xp += xstep;
			xs ++;
		};
        yp += ystep;
		ys ++;
	};
};

void gfx_drawcenteredstring( int xc, int yc, float w, float h, int spacing, int brightness, char *texten ) {
  long l = strlen(texten);
  long ctn = strlen(fonttable);
  int x1 = xc - (l*spacing/2);
  for( int j=0; j<l; j++ ) {
    gfx_drawchar( x1 + (j*spacing), yc, w, h, texten[j], brightness );
  };
};

float g_static[4][4] = { {0,1,2,3},{4,5,6,7},{8,9,10,11},{12,13,14,15} };

void gfx_genstatic() {
  for( int i=0; i<4; i++ ) {
    if( g_static[i][0]>g_static[i][1] ) {
      g_static[i][0] = -(misc_rand()%50);
      g_static[i][1] = misc_rand()%50;
      g_static[i][2] = misc_rand()%640;
      g_static[i][3] = (float)((misc_rand()%100)-50)/2.0f;
    };
    g_static[i][0] ++;
    g_static[i][2] += g_static[i][3];

    if( g_static[i]>0 ) {
      int o = g_static[i][2];
      if( o>=0 && o<640 ) {
        for( int j=0; j<200; j++ ) {
          gfx_virtual[o] = 128 + (misc_rand()&63);
          o+=640;
        };
      };
    };

  };
};

void gfx_drawline( int x1, int y1, int x2, int y2, int shade ) {
	long dx, dy;
	long xx, yy;

	xx = x1*1024;
	yy = y1*1024;

	long l = abs(x2-x1);
	dy = abs(y2-y1);
	if( dy>l ) l = dy;

	if( l>0 ) {
		dx = ((x2*1024)-(x1*1024)) / l;
		dy = ((y2*1024)-(y1*1024)) / l;
		for( int i=0; i<l; i++ ) {
			int x2 = xx>>10;
			int y2 = yy>>10;
			if( x2>=0 && y2>=0 && x2<=639 && y2<=199 ) {
				gfx_virtual[ y2*640+x2 ] = shade;
			};
			xx += dx;
			yy += dy;
		};
	};
};
/*
void gfx_drawline_add( int x1, int y1, int x2, int y2, int shade ) {
	long dx, dy;
	long xx, yy;

	xx = x1*1024;
	yy = y1*1024;

	long l = x2-x1;
	dy = y2-y1;
	if( dy>l ) l = dy;

	if( l>0 ) {
		dx = ((x2*1024)-(x1*1024)) / l;
		dy = ((y2*1024)-(y1*1024)) / l;
		for( int i=0; i<l; i++ ) {
			int x2 = xx>>10;
			int y2 = yy>>10;
			if( x2>=0 && y2>=0 && x2<=639 && y2<=199 ) {
				gfx_virtual[ y2*640+x2 ] += shade;
			};
			xx += dx;
			yy += dy;
		};
	};
};*/