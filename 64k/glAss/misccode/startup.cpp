//
// glAss startup code.
//

#define _DEBUG
#define _NOMUSIC
#define _NOPARTS

#include "..\..\fmod\minifmod.h"
#include "..\almosteverything.h"
#include "..\parts.h"
#include "..\images.h"
#include "..\resource.h"
#include <stdio.h>

long StartupFlags = 0;

typedef struct 
{
//	int length;
	int pos;
	void *data;
} MEMFILE;

#ifdef DEBUG

unsigned int fileopen(char *name)
{
	return (unsigned int)fopen(name, "rb");
}

void fileclose(unsigned int handle)
{
	fclose((FILE *)handle);
}

int fileread(void *buffer, int size, unsigned int handle)
{
	return fread(buffer, 1, size, (FILE *)handle);
}

void fileseek(unsigned int handle, int pos, signed char mode)
{
	fseek((FILE *)handle, pos, mode);
}

int filetell(unsigned int handle)
{
	return ftell((FILE *)handle);
}

#else 

unsigned int memopen(char *name)
{
//	FILE *fp;
	MEMFILE *memfile;
	memfile = (MEMFILE *)GlobalAlloc( MEM_COMMIT, sizeof(MEMFILE) );
//	memfile->length = 3000000;
	memfile->data = (unsigned char *)&intromusic;
	memfile->pos = 0;
	return (unsigned int)memfile;
}

void memclose(unsigned int handle)
{
	MEMFILE *memfile = (MEMFILE *)handle;
	GlobalFree(memfile);
}

int memread(void *buffer, int size, unsigned int handle)
{
	MEMFILE *memfile = (MEMFILE *)handle;
/*
	if (memfile->pos + size >= memfile->length)
		size = memfile->length - memfile->pos;
*/
	memcpy(buffer, (char *)memfile->data+memfile->pos, size);
	memfile->pos += size;
	return size;
}

void memseek(unsigned int handle, int pos, signed char mode)
{
	MEMFILE *memfile = (MEMFILE *)handle;

	if (mode == SEEK_SET) 
		memfile->pos = pos;
	else if (mode == SEEK_CUR) 
		memfile->pos += pos;
//	else if (mode == SEEK_END)
//		memfile->pos = memfile->length;
/*
	if (memfile->pos > memfile->length)
		memfile->pos = memfile->length;
*/
}

int memtell(unsigned int handle)
{
	MEMFILE *memfile = (MEMFILE *)handle;
	return memfile->pos;
}

#endif

BOOL APIENTRY StartupDialog( HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam ) {

	switch( uMsg ) {
	
		case WM_INITDIALOG:
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"160 x 120 :)" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"320 x 240" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"400 x 300" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"512 x 384" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"640 x 480" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"800 x 600" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"1024 x 768" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"1152 x 864" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"1280 x 720" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"1280 x 1024" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"1600 x 1200 *gah*" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_SETCURSEL, 5, 0 );
#ifdef DEBUG
			CheckDlgButton( hWnd, IDC_FULLSCREEN, 0 );
#else
			CheckDlgButton( hWnd, IDC_FULLSCREEN, 1 );
#endif
			CheckDlgButton( hWnd, IDC_MUSIC, 1 );
			break;

		case WM_COMMAND:
			switch( LOWORD(wParam) ) {
				
				case IDOK: 
					{
						int r = SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_GETCURSEL, 0, 0 );
						StartupFlags = 1<<r;
						if( !IsDlgButtonChecked( hWnd, IDC_FULLSCREEN ) ) StartupFlags |= STARTUP_WINDOWED;
						if( IsDlgButtonChecked( hWnd, IDC_MUSIC ) ) StartupFlags |= STARTUP_MUSIC;
						EndDialog( hWnd, FALSE );
					};
					break;

				case IDCANCEL:
					StartupFlags = 0;
					EndDialog( hWnd, FALSE );
					break;

			};
			break;
		//case WM_
		default:
			//return DefDlgProc( hWnd, uMsg, wParam, lParam );
			break;
	};

	return FALSE;
};

#define UPLOADMACRO( __id, __var )\
	glaUploadGif( __id, (unsigned char *)&__var, 1 );

void upload_images() {
	UPLOADMACRO( GIF_FLARE, gif_flare );
	UPLOADMACRO( GIF_PSIKORP2, gif_psikorp2 );
//	UPLOADMACRO( GIF_FLOWER, gif_flower );
	UPLOADMACRO( GIF_GRID, gif_grid );
//	UPLOADMACRO( GIF_PSIBAND, gif_psiband );
	UPLOADMACRO( GIF_ROST, gif_rost );
//	UPLOADMACRO( GIF_LANDSCAPE, gif_landscape );
	UPLOADMACRO( GIF_CLOUDS, gif_clouds );
	UPLOADMACRO( GIF_PSIKORP3, gif_psikorp3 );
	UPLOADMACRO( GIF_TITLE, gif_title );
//	UPLOADMACRO( GIF_FULL, gif_full );
//	UPLOADMACRO( GIF_TWISTER, gif_twister );
	UPLOADMACRO( GIF_TWISTER2, gif_twister2 );
//	UPLOADMACRO( GIF_SYMBOLER, gif_symboler );
//	UPLOADMACRO( GIF_FACES, gif_faces );
//	UPLOADMACRO( GIF_KROM, gif_krom );
	UPLOADMACRO( GIF_PSIKORP4, gif_psikorp4 );
	UPLOADMACRO( GIF_GREEN, gif_green );
	UPLOADMACRO( GIF_SILU, gif_silu );
	UPLOADMACRO( GIF_NAMES, gif_names );
};

void Error( char *string ) {
	//exit(0);
//#ifdef _DEBUG
	char dum[1024];
	wsprintf( dum, "error %d (lasterror)\n%s\n", GetLastError(), string );
	MessageBox( 0, dum, "ERROR", MB_OK );
//#endif
	ExitProcess(0);
};

int __stdcall WinMain( HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nShowCmd ) {

	FMUSIC_MODULE *mod;

	StartupFlags = 0;//STARTUP_MUSIC;

	DialogBox( hInstance, MAKEINTRESOURCE(IDD_DIALOG1), 0, (DLGPROC)StartupDialog );

	if( StartupFlags ) {

		//glaStartup( StartupFlags, 640, 480, 32 );

		unsigned int w, h;
		w = 640; 
		h = 480;
		if( StartupFlags & STARTUP_160X120 ) { w = 160; h = 120; };
		if( StartupFlags & STARTUP_320X240 ) { w = 320; h = 240; };
		if( StartupFlags & STARTUP_400X300 ) { w = 400; h = 300; };
		if( StartupFlags & STARTUP_512X384 ) { w = 512; h = 384; };
		if( StartupFlags & STARTUP_800X600 ) { w = 800; h = 600; };
		if( StartupFlags & STARTUP_1024X768 ) { w = 1024; h = 768; };
		if( StartupFlags & STARTUP_1152X864 ) { w = 1152; h = 864; };
		if( StartupFlags & STARTUP_1280X720 ) { w = 1280; h = 720; };
		if( StartupFlags & STARTUP_1280X1024 ) { w = 1280; h = 1024; };
		if( StartupFlags & STARTUP_1600X1200 ) { w = 1600; h = 1200; };

		glaStartup( !(StartupFlags & STARTUP_WINDOWED), w, h, 32 );

		//if( StartupFlags & STARTUP_MUSIC ) mmp_init();

	/*	glaCls();
		// rita en 'hold on...' text... (ev texturemappad...)
		glaBlit();*/

	//	glaUploadGif( GLA_FONTS, (unsigned char *)&gif_font, 0x00112233 );

		_pd = (float *)GlobalAlloc( MEM_COMMIT, 150*40*sizeof(float) );
		_pu = (float *)GlobalAlloc( MEM_COMMIT, 150*40*sizeof(float) );
		_pv = (float *)GlobalAlloc( MEM_COMMIT, 150*40*sizeof(float) );
		_pu2 = (float *)GlobalAlloc( MEM_COMMIT, 150*40*sizeof(float) );
		_pv2 = (float *)GlobalAlloc( MEM_COMMIT, 150*40*sizeof(float) );

			// undantag...
		UPLOADMACRO( GIF_FONT, gif_font );

		p_loading_draw( 0, 16 );

//		Sleep(5000);

#ifndef NOMUSIC
//		if( StartupFlags & STARTUP_MUSIC ) mmp_loadmodule(	(unsigned char *)&intromusic );
#endif

		event_init();

#ifndef NOPARTS
		p_loading_draw( 1, 16 );	
		upload_images();

		p_loading_draw( 5, 16 );	
		p_cubes_init();

		p_loading_draw( 9, 16 );	
		p_greetings_init();

		p_loading_draw( 12, 16 );	
		p_klask_init();

		p_loading_draw( 15, 16 );
#endif

		// initeringen kalas, glad påsk...

#ifndef NOMUSIC
		if( StartupFlags & STARTUP_MUSIC ) {
			//mmp_start(); else mmp_startnosound();
#ifdef DEBUG
			FSOUND_File_SetCallbacks(fileopen, fileclose, fileread, fileseek, filetell);
#else
			FSOUND_File_SetCallbacks(memopen, memclose, memread, memseek, memtell);
#endif

			if (!FSOUND_Init(44100, 0)) Error( "Couldn't initialize soundcard." );

#ifdef DEBUG
			mod = FMUSIC_LoadSong("modul.xm", NULL);// sampleloadcallback);
#else
			mod = FMUSIC_LoadSong(NULL, NULL);// sampleloadcallback);
#endif
			if (!mod) Error( "Couldn't load module." );
		};
#endif

#ifndef NOPARTS
		Sleep( 100 );
		glaCls(0.33f);

		// FÖRSTA TEXTEN I INTROT	
		event_register(		5,		5.2f,	p_tunnel_run,			1		);
		event_register(		5.1f,	5.3f,	p_wirelandscape_run,	0		);
		event_register(		5.2f,	5.4f,	p_sphere_run,			0		);
		event_register(		2,		5.5f,	p_fulintro_run,			0		);

		// ANDRA TEXTEN I INTROT
		event_register(		9,		9.2f,	p_cubes_run,			0		);
		event_register(		9.1f,	9.3f,	p_psyk_run,				0		);
		event_register(		9.2f,	9.4f,	p_twist3d_run,			0		);
		event_register(		6,		9.5f,	p_fulintro_run,			1		);

		// TREDJE TEXTEN I INTROT
		event_register(		13,		13.2f,	p_twist3d_run,			0		);
		event_register(		13.1f,	13.3f,	p_psyk_run,				0		);
		event_register(		13.2f,	13.4f,	p_tunnel_run,			1		);
		event_register(		10,		13.5f,	p_fulintro_run,			2		);

		// FLIMMER I INTROT
		event_register(		1,		13.7f,	p_static_run,			256		);

		// FLASH Å SEN 64 SNURRA
		event_register(		14,		15,		p_whiteflash_run,		0		);
		event_register(		14,		29,		p_wirelandscape_run,	0		);

		// FLASH Å HANZON+PSYKSNURR (MUSIKEN KOMMER IGÅNG)
		event_register(		29,		30,		p_whiteflash_run,		0		);
		event_register(		29,		42,		p_psyk_run,				0		);
		event_register(		41,		58,		p_title_run,			3		);
		event_register(		29,		34,		p_hanzon_run,			0		);

		// VÅRA NAMN
		event_register(		32,		35,		p_name_run,				0		);
		event_register(		36,		39,		p_name_run,				1		);

		// TWISTERN SNURRAR IN... BÅDA TVÅ (2D OCH 3D)
		event_register(		42,		58,		p_twist3d_run,			0		);
		event_register(		42,		43,		p_whiteflash_run,		0		);
		event_register(		39,		52,		p_twister_run,			0		);

		// KUBERNA (MUSIKEN LUGNAR NER SIG)
		event_register(		58,		79,		p_cubes_run,			0		);
		event_register(		58,		59,		p_whiteflash_run,		0		);

		// TUNNELN EFTERÅT, MED BLOBSPHERE
		event_register(		79,		80,		p_whiteflash_run,		0		);
		event_register(		79,		85,		p_tunnel_run,			512		);
		event_register(		79,		85,		p_sphere_run,			0		);

		// FSOL PSYK
		event_register(		85,		141,	p_klask_run,			264		);

		// ÖVERGÅR I GREETS, SOM ÖVERGÅR I TUNNEL
		event_register(		85,		128,	p_greetings_run,		0		);
		event_register(		85,		86,		p_whiteflash_run,		0		);
		event_register(		100,	141,	p_tunnel_run,			512		);

		// TUNNELN ÖVERGÅR I '64' PLUS MASSOR AV EFFEKTER, COLOR DODGE'AT
		event_register(		114,	124.0f,	p_wirelandscape_run,	0		);
		event_register(		114,	124.0f,	p_psyk_run,				2		);
		event_register(		114,	115,	p_whiteflash_run,		0		);
//		event_register(		125,	126,	p_whiteflash_run,		0		);

		// LUGNARE MUSIK, EFTER UPPLADDNINGEN, BYT TILL FLUM MED FLASH
		event_register(		124.0f,	141,	p_aftershit_run,		0		);
		event_register(		138.5f,	141,	p_fadeblack_run,		0		);

		glaReset();

		if( StartupFlags & STARTUP_MUSIC )
			FMUSIC_PlaySong(mod);

		float t;
		do {
			t = glaTime();
			glaDefaultProjection();
			glaCls( 0.33f );
			event_run( t, 0 );
			glaBlit();
		} while( !glaExit() && t<142 );
#endif

#ifndef NOMUSIC
		if( StartupFlags & STARTUP_MUSIC ) {
			FMUSIC_FreeSong(mod);
			FSOUND_Close();
		};
#endif
		event_free();
		glaShutdown();

	};

	return 0;
};