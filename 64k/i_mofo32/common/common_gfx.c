// common graphics
#include "..\images.h"
#include "..\common.h"
#include "..\mmp\mmp.h"
//#include <stdio.h>

CORNER gfx_sq[65*12];

char *fonttable = " abcdefghijklmnopqrstuvwxyz0123456789.,:;@!\"/\\-+()&%~?#";
unsigned char *gfx_fontpic;

long *gfx_mb_xbuf1;
unsigned char *gfx_mb_xbuf2;
long *gfx_mb_ybuf1;
unsigned char *gfx_mb_ybuf2;

void gfx_drawsprite( int x, int y, int width, int height, int brightness, unsigned char *data ) {

    int x1 = x - (width>>1);
    int y1 = y - (height>>1);
    long xstep = 64*2048 / width;
    long ystep = 64*2048 / height;

	int yp = 0;
	int ys = y1;
	int i, j;

    for( j=0; j<height; j++ ) {
		int xp = 0;
		int xs = x1;
        for( i=0; i<width; i++ ) { 
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
  CORNER p[3];  //  |   |
  CORNER d[3];  //  3---2
  int bx, by, px, py;
  for( by=0; by<10; by++ ) {
    for( bx=0; bx<32; bx++ ) {
      long bofs = by * 64 + bx;
      long sofs = by*20*640+bx*20;
      p[0].u = gfx_sq[bofs].u;    d[0].u = (gfx_sq[bofs+64].u - gfx_sq[bofs].u) / 20;
      p[0].v = gfx_sq[bofs].v;    d[0].v = (gfx_sq[bofs+64].v - gfx_sq[bofs].v) / 20;
      p[0].s = gfx_sq[bofs].s;    d[0].s = (gfx_sq[bofs+64].s - gfx_sq[bofs].s) / 20;
      p[0].w = gfx_sq[bofs].w;    d[0].w = (gfx_sq[bofs+64].w - gfx_sq[bofs].w) / 20;
      p[1].u = gfx_sq[bofs+1].u;    d[1].u = (gfx_sq[bofs+65].u - gfx_sq[bofs+1].u) / 20;
      p[1].v = gfx_sq[bofs+1].v;    d[1].v = (gfx_sq[bofs+65].v - gfx_sq[bofs+1].v) / 20;
      p[1].s = gfx_sq[bofs+1].s;    d[1].s = (gfx_sq[bofs+65].s - gfx_sq[bofs+1].s) / 20;
      p[1].w = gfx_sq[bofs+1].w;    d[1].w = (gfx_sq[bofs+65].w - gfx_sq[bofs+1].w) / 20;
      for( py=0; py<20; py++ ) {
        p[2].u = p[0].u;
        p[2].v = p[0].v;
        p[2].s = p[0].s;
        p[2].w = p[0].w;
        d[2].u = (p[1].u - p[0].u) / 20;
        d[2].v = (p[1].v - p[0].v) / 20;
        d[2].s = (p[1].s - p[0].s) / 20;
        d[2].w = (p[1].w - p[0].w) / 20;
        for( px=0; px<20; px++ ) {
          int u = ((p[2].u*p[2].w)>>23)+65536;
          int v = ((p[2].v*p[2].w)>>23)+65536;
			gfx_virtual[ sofs++ ] = (unsigned char)((source[ ((v&63)<<6)+(u&63) ] * p[2].s)>>10);
//			int u = ((p[2].u)>>10)+65536;
//			int v = ((p[2].v)>>10)+65536;
//			gfx_virtual[ sofs++ ] = source[ ((v&63)<<6)+(u&63) ];

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

void gfx_drawchar( int x, int y, int width, int height, char ch, unsigned char brightness ) {

    int ctn = misc_strlen( fonttable );
	int i, j, ys, yp;
    int f = 0;
	long x1, y1, xstep, ystep;
	unsigned char *data;
	
	int n;
	if( height == 0 || width == 0 ) return;

    for( n=0; n<ctn; n++ ) if( fonttable[n]==ch ) f = n;
    if( f==0 ) return;

    x1 = x - (width/2);
    y1 = y - (height/2);
    xstep = 16*2048 / width;
    ystep = 16*2048 / height;

	data = gfx_fontpic+f*16*16;
	yp = 0;
	ys = y1;
	for( j=0; j<height; j++ ) {
		int xp = 0;
		int xs = x1;
		for( i=0; i<width; i++ ) { 
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

/*
void gfx_drawstring( int xc, int yc, float w, float h, int spacing, int brightness, char *texten ) {
  long l = misc_strlen(texten);
  int j;
  for( j=0; j<l; j++ ) {
    gfx_drawchar( xc + (j*spacing), yc, w, h, texten[j], brightness );
  };
};
*/
void gfx_drawcenteredstring( int xc, int yc, int w, int h, int spacing, int brightness, char *texten ) {
  long l = misc_strlen(texten);
  int x1 = xc - (l*spacing/2);
  int j;
  for( j=0; j<l; j++ ) {
    gfx_drawchar( x1 + (j*spacing), yc, w, h, texten[j], brightness );
  };
};

float g_static[4][4] = { {0,1,2,3},{4,5,6,7},{8,9,10,11},{12,13,14,15} };
//float g_static2[4][4] = { {0,1,2,3},{4,5,6,7},{8,9,10,11},{12,13,14,15} };

void gfx_genstatic() {

	int i;

	/*float f = misc_gettimer();
	sprintf( s, "time: %f", f );
	gfx_drawstring( 20, 180, 14, 14, 14, 255, s );*/

	for( i=0; i<4; i++ ) {
		if( g_static[i][0]>g_static[i][1] ) {
			g_static[i][0] = (float)(-(misc_rand()%50));
			g_static[i][1] = (float)(misc_rand()%50);
			g_static[i][2] = (float)(misc_rand()%640);
			g_static[i][3] = (float)((misc_rand()%60)-30)/3.0f;
		};
		g_static[i][0] ++;
		g_static[i][2] += g_static[i][3];
		if( g_static[i]>0 ) {
			int o = (int)g_static[i][2];
			if( o>=0 && o<640 ) {
				int j;
				for( j=0; j<200; j++ ) {
					gfx_virtual[o] = 250;//128 + (misc_rand()&63);
					o+=640;
				};
			};
		};

	};
	/*
	for( i=0; i<4; i++ ) {
		if( g_static2[i][0]>g_static2[i][1] ) {
			g_static2[i][0] = (float)(-misc_rand()%50);
			g_static2[i][1] = (float)(misc_rand()%50);
			g_static2[i][2] = (float)(misc_rand()%200);
			g_static2[i][3] = (float)((misc_rand()%100)-50)/16.0f;
		};
		g_static2[i][0] ++;
		g_static2[i][2] += g_static2[i][3];
		if( g_static2[i]>0 ) {
			int o = (int)g_static2[i][2];
			if( o>=1 && o<198 ) {
				int j;
				o *= 640;
				for( j=0; j<640; j++ ) {
					gfx_virtual[o] = gfx_virtual[o+640] = 128 + (misc_rand()&63);
					o ++;
				};
			};
		};

	};*/
};

void gfx_drawline( int x1, int y1, int x2, int y2, int shade ) {
	long dx, dy;
	long xx, yy;

	// fucked clipping...
	if( (y1<0 && y2<0) || (x1<0 && x2<0) || (y1>199 && y2>199) || (x1>639 && x2>639) ) return;

	if( y1==y2 ) {
		// horizontal line
		int i;
		unsigned char *o;
		if( x2<x1 ) { xx=x1; x1=x2; x2=xx; };
		if( x1<0 ) x1=0;
		if( x2>639 ) x2=639;
		o = gfx_virtual + x1 + 640*y1;
		for( i=x1; i<x2; i++ ) { *o = shade; o++; };

	} else if( x1==x2 ) {
		// vertical line 
		int i;
		unsigned char *o;
		if( y2<y1 ) { yy=y1; y1=y2; y2=yy; };
		if( y1<0 ) y1=0;
		if( y2>199 ) y2=199;
		o = gfx_virtual + x1 + 640*y1;
		for( i=y1; i<y2; i++ ) { *o = shade; o+=640; };

	} else {
		// free line
		long l = (int)abs((float)(x2-x1));
		xx = x1*1024;
		yy = y1*1024;

		dy = (int)abs((float)(y2-y1));
		if( dy>l ) l = dy;

		if( l>0 ) {
			int i;
			dx = ((x2*1024)-(x1*1024)) / l;
			dy = ((y2*1024)-(y1*1024)) / l;
			for( i=0; i<l; i++ ) {
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



void common_mblur() {

	int i, j;
	long o = 0;

	// ta från gfx_virtual lägg i temp
	//source = gfx_temp;
	for( j=0; j<200; j++ ) {
		for( i=0; i<640; i++ ) {
			
			long o2 = gfx_mb_ybuf1[j] + gfx_mb_xbuf1[i];

			unsigned char finex = gfx_mb_xbuf2[i];
			unsigned char finey = gfx_mb_ybuf2[j];
			unsigned char ifinex = 255 - finex;
			unsigned char ifiney = 255 - finey;

			unsigned char p1 = gfx_blur_temp[o2];
			unsigned char p2 = gfx_blur_temp[o2+1];
			unsigned char p3 = gfx_blur_temp[o2+640];
			unsigned char p4 = gfx_blur_temp[o2+641];

			unsigned char subpix = (p1*ifinex*ifiney+p2*finex*ifiney+p3*ifinex*finey+p4*finex*finey)>>16;

			gfx_virtual[o] = (gfx_virtual[o]+subpix+subpix+subpix)>>2;
			//gfx_blur_temp[o] = ((gfx_blur_temp[o]+subpix+subpix+subpix+subpix+subpix+subpix+subpix)>>3);
			//gfx_blur_temp[o] = ((gfx_virtual[o]+gfx_blur_temp[o]+subpix+subpix+subpix+subpix+subpix+subpix+subpix+subpix+subpix+subpix+subpix+subpix+subpix+subpix)>>4);
			//destination[o] = ((destination[o]+destination[o]+destination[o]+subpix+subpix+subpix+subpix+subpix)>>3);
			o ++;
		};
	};
	
__asm {
		mov esi, gfx_blur_temp
		mov edi, gfx_virtual
		mov ecx, 640*200
		xor ax, ax
klatt:
		xor bx, bx
		mov al, byte ptr [esi]
		shr al, 1
		mov bl, byte ptr [edi]
		shr bl, 1
		add al, bl
		jnc flupp
		mov al, 255
flupp:
		mov byte ptr [edi], al
		inc esi
		inc edi
		loop klatt

	};

	// kopiera tillbaka till feedbackbufferten
	memcpy( gfx_blur_temp, gfx_virtual, 640*200 );

};