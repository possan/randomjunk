#define WIN32_LEAN_AND_MEAN
#include <windows.h>

#include "common.h"
#include "parts.h"
#include "mmp\mmp.h"
#include "images.h"

extern char intromusic;

int WINAPI WinMain( HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nShowCmd ) {
	int fw = 0;
	//if( lpCmdLine != NULL && (lpCmdLine[0] == 'w' || lpCmdLine[0] == 'W') ) fw = 1;
	//fw = 1;

	mmp_init();

	SetPriorityClass( GetModuleHandle(NULL), REALTIME_PRIORITY_CLASS );
	//SetThreadPriority(GetCurrentThread(),THREAD_PRIORITY_ABOVE_NORMAL);


//void Jonny() {
	if( gfx_init(fw) ) {

		gfx_fontpic = common_loadgif( (unsigned char *)&gif_font );

	mmp_loadmodule( (unsigned char *)&intromusic );

		p_intro_init();
		p_bpl_init();
		p_raster_init();
		p_tunnel_init();
		p_lines_init();
		p_lines2_init();
		p_pic_init();
		p_blobs_init();
		p_pic2_init();

	mmp_start();

		// while( !gfx_kbhit() ) gfx_blit();

		misc_resettimer();
		if( !gfx_kbhit() ) p_intro_run();

		misc_resettimer();
		if( !gfx_kbhit() ) p_pic_run();

		misc_resettimer();
		if( !gfx_kbhit() ) p_bpl_run();

  		misc_resettimer();
		if( !gfx_kbhit() ) p_lines_run();

		misc_resettimer();
		if( !gfx_kbhit() ) p_pic2_run();

		misc_resettimer();
		if( !gfx_kbhit() ) p_lines2_run();

		misc_resettimer();
		if( !gfx_kbhit() ) p_tunnel_run();
	
		misc_resettimer();
		if( !gfx_kbhit() ) p_raster_run();

		misc_resettimer();
		if( !gfx_kbhit() ) p_blobs_run();
			
	mmp_stop();	

		p_tunnel_kill();
		p_intro_kill();
		p_bpl_kill();
		p_raster_kill();
		p_lines_kill();
		p_lines2_kill();
		p_pic_kill();
		p_blobs_kill();
		p_pic2_kill();

	mmp_close();

		gfx_kill();
	};
	return 0;
};

