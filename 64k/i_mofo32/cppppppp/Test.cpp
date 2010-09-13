#define WIN32_LEAN_AND_MEAN
#include <windows.h>

#include "common.h"
#include "parts.h"

int WINAPI WinMain( HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nShowCmd ) {
	int fw = 0;
	if( lpCmdLine[0] == 'w' || lpCmdLine[0] == 'W' ) fw = 1;
	if( gfx_init(fw) ) {

		p_intro_init();
		p_bpl_init();
		p_raster_init();
		p_tunnel_init();
		p_lines_init();
		p_lines2_init();

		//p_intro_run();
		//p_bpl_run();
		//p_lines_run();
		//p_lines2_run();
		p_tunnel_run();
		//p_raster_run();

		p_tunnel_kill();
		p_intro_kill();
		p_bpl_kill();
		p_raster_kill();
		p_lines_kill();
		p_lines2_kill();

		gfx_kill();
	};
	return 0;
};

