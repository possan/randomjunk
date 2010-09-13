#include "..\common.h"
#include "..\images.h"

unsigned char *pr_onesph;

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
  "k2", "noice", "woorlic",
  "outbreak", "obscure", "goto10",
  "#swedescene", "#sonique", "#buzz",
  "#warezgraphics", "#audioapps", "#warezart",
  "gnilken", "mind", "neurodruid", 
  "neurodruid", "acidsmurf", "bananmos",
  "particlex", "hb", "skunkboy",
  "and", "everyone", "else..", 
  0,0,0 };

int pr_count;

void pr_mblur( float xc, float yc, float xamt, float yamt ) {

	int i;

	for( i=0; i<200; i++ ) {
		float t = yc + (((float)i-yc)*yamt);
		//t = i;
		//t = i + (-5 + misc_rand()%10);
		//t += i;
		if( t<0 ) t=0;
		if( t>198 ) t=198;
		gfx_mb_ybuf1[i] = (long)t*640;
		gfx_mb_ybuf2[i] = (unsigned char)(256*((float)t-(int)t));
	};

	for( i=0; i<640; i++ ) {
		float t = xc + (((float)i-xc)*xamt);
		//t = i;
		//t = i + (-5 + misc_rand()%10);
		if( t<0 ) t=0;
		if( t>638 ) t=638;
		gfx_mb_xbuf1[i] = (long)t;
		gfx_mb_xbuf2[i] = (unsigned char)(256*((float)t-(int)t));
	};

	common_mblur();

};  

void p_raster_init() {

  int i = 0;
  while( pr_greet[i]!=0 ) {
    i++;
  };
  pr_count = i/3;
  pr_onesph = common_loadgif( (unsigned char *)&gif_onesph );

  for( i=0; i<32*10; i++ ) {
    shitto[i] = 1 - ((float)(i%32) / 32.f);
    shitto[i] *= shitto[i];
    shitto[i] *= shitto[i];
  };

};

void p_raster_kill() {
};

void p_raster_run() {
  float t;
  int t2 = 0;
  int index;
  do {
    float x, y, x2, y2, r, rot;
	int i, j, ix2, iy2;
	t = misc_gettimer()*50;

    gfx_cls(0);

/*	__asm {
		mov esi, pr_temptemp
		mov ecx, 640*200
hor:
		mov al, byte ptr [esi]
		shr al, 2
		mov byte ptr [esi], al
		loop hor
	};*/

//    float kao = (30*sin( t*3.142/300 ) * (rand()%100)) / 80;

    for( j=-6; j<=6; j++ ) {

      for( i=-6; i<=6; i++ ) {

        rot = (float)(t + (30*sin((t+j*5)*3.142/100)) + (30*cos((i*5-t)*3.142/70)));

        x = (float)i*30-15;
        y = (float)j*30-15;
        misc_rotate2d( x, y, &x2, &y2, rot );
        x2 += 190;
        y2 += 100;
        ix2 = (int)(x2/20);
        if( ix2<0 ) ix2=0;
        if( ix2>31 ) ix2=31;
        iy2 = (int)(y2/20);
        if( iy2<0 ) iy2=0;
        if( iy2>9 ) iy2=9;
        r = 60*shitto[iy2*32+ix2];
        if( r>20 ) r=20;
        if( r>1 && x2>=-32 && y2>=-32 && x2<=672 && y2<=232 )
          gfx_drawsprite( (int)x2, (int)y2, (int)r, (int)r, 200, pr_onesph );
      };
    };

    index = ((int)t >> 7) - 2;
    if( index>=0 && index<pr_count ) {

      float rx, ry;
      float sp = 1+(30 / (float)(1+(int)t%128));
      int w = (int)(40 + sp*sp);
      int h = (int)(40 - sp);

      rx = (float)(w + 10*sin(t*3.142/pr_wacko[(index)%10]));
      ry = (float)(h + 10*cos(t*3.142/pr_wacko[(index+2)%10]));
      gfx_drawcenteredstring( (int)400, (int)50, (int)rx, (int)ry, (int)(30+sp), 255, pr_greet[index*3] );

      rx = (float)(w + 10*cos(t*3.142/pr_wacko[(index+3)%10]));
      ry = (float)(h + 10*sin(t*3.142/pr_wacko[(index+6)%10]));
      gfx_drawcenteredstring( (int)380, (int)100, (int)rx, (int)ry, (int)(30+sp), 255, pr_greet[index*3+1] );

      rx = (float)(w + 10*sin(t*3.142/pr_wacko[(index+5)%10]));
      ry = (float)(h + 10*cos(t*3.142/pr_wacko[(index+4)%10]));
      gfx_drawcenteredstring( (int)360, (int)150, (int)rx, (int)ry, (int)(30+sp), 255, pr_greet[index*3+2] );
	  

    };

	{
		float xc = 480;
		float yc = 100;
		float xa = 0.99f;
		float ya = 0.99f;
		//pr_mblur( xc, yc, xa, ya );
		//xc = 320 + 480*cos( time*3.142/0.1 );
		//pr_mblur( xc, yc, xa, ya );
	}

    gfx_genstatic();
    gfx_blit();
    t ++;

  } while ( !gfx_kbhit() && index<pr_count+1 );
};
