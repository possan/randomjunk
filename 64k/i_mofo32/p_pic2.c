//
#include "images.h"
#include "common.h"

unsigned char *pp_pixlad;

void p_pic2_init() {
	pp_pixlad = common_loadgif( (unsigned char *)&gif_pixlad );
};

void p_pic2_kill() {
	
};

void pp2_small( unsigned char fadeshit ) {

	__asm {

		mov esi, pp_pixlad
		add esi, 3200
		mov edi, gfx_virtual
		add edi, 160
		
		mov dl, fadeshit
		mov dh, 255
		sub dh, fadeshit
		
		mov ecx, 200
	yloop:
		push ecx

		mov ecx, 320
	xloop:	

		mov al, byte ptr [edi];
		//mul dh
		//shr ax, 8
		mov bl, al

		mov al, byte ptr [esi]
		mul dl
		shr ax, 8

		add al, bl
		jnc klutt
		mov al, 255
	klutt:
		mov byte ptr [edi], al

		inc esi
		inc edi

		loop xloop
		add edi, 320

		pop ecx
		loop yloop
	};

};

void pp2_scaleup( long ypos, unsigned char brightness ) {
	long dum = ypos * 320;
	__asm {
		mov esi, pp_pixlad
		add esi, dum
		mov edi, gfx_virtual
		mov ecx, 100
		mov dl, brightness
	yloop:
		push ecx
		mov ecx, 320
		xloop:	
			
			mov al, byte ptr [esi]
			mul dl
			shr ax, 8
//			shr al, 1
			mov ah, al

			mov word ptr [edi], ax
			mov word ptr [edi+640], ax

			add esi, 1

			add edi, 2

			loop xloop
			add edi, 640
		pop ecx
		loop yloop

	};

};

void p_pic2_run() {
	float time = 0;
	do {
		gfx_cls(0);
		time = misc_gettimer()*45;

		// 240 - 50 = 190 / 2 = 85 = 42 + 30*bajs

		if( time<500) {
			if( time<250 ) {
				pp2_scaleup( (long)(0 + 139*sin(time*3.142/1000)), time/2 );
			} else {
				pp2_scaleup( (long)(0 + 139*sin(time*3.142/1000)), (250-(time-250))/2 );
				pp2_small( time-250 );
			};
		} else {
			pp2_scaleup( 140, 0 );
			pp2_small( 255 );
		};

		gfx_genstatic();
		gfx_blit();
	} while( !gfx_kbhit() && time<600 );

};
