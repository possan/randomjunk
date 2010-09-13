#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include "mmp.h"

void mmp_generate( short *output, long samples );
//		short shitto[655360];

extern char intro3b;

int __cdecl main( int argc, char *argv[] ) {
//void __cdecl main() {

	mmp_init();

	/*FILE *f = fopen( "mods\\dnb.mod", "rb" );
	fseek( f, 0, SEEK_END );
	long l = ftell( f );
	printf("module is %ld bytes.\n",l); 
	fseek( f, 0, SEEK_SET );
	unsigned char *modul = (unsigned char *)malloc( l );
	fread( modul, 1, l, f );
	fclose( f );*/

	mmp_loadmodule( (unsigned char *)&intro3b );

	mmp_start();

//	mmp_module.iPosition = 0;
/*
	do {

		printf("%d, %d, %d\n",mmp_module.iPosition,mmp_module.iRow,mmp_module.iSubTick );
		Sleep( 333 );

//		mmp_tick();
		//mmp_generate( (short*)&shitto, 163800 );

	} while ( !kbhit() );*/

	MessageBox( 0, "tryck nån tangent för att stoppa.", "kabel", 0 );

	mmp_stop();

	mmp_close();

};