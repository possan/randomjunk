//
#include "images.h"
#include "common.h"

unsigned char *pp_pixlad;

void p_pic2_init() {
	pp_pixlad = common_loadgif( (unsigned char *)&gif_pixlad );
};

void p_pic2_kill() {
	
};

void pp2_scaleup( long ypos ) {

	__asm {

	yloop:
		

	};

};

void p_pic2_run() {
	float time = 0;
	do {
		//time = 

		gfx_genstatic();
		gfx_blit();
		time ++;
	} while( !gfx_kbhit() && time<512 );

};
