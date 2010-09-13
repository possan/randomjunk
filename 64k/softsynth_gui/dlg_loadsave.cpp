//
// save/load dialog
//
#include "all.h"

//
// x.synth - packed data.
// x.wav - 16b wave used for playback and as sample in module
// 

static char filename_buffer[MAX_PATH] = { 0, };
static char packed_buffer[1024000] = { 0, };
long packed_length;

int dlg_save() {

	if( strlen( filename_buffer )>0 ) {

		char temp[MAX_PATH];

		// spara datan som ska in i introt
		//wsprintf( temp, "%s.synth", filename_buffer );
		FILE *f = fopen( filename_buffer, "wb" );
		fwrite( g_hSynth, 1, sizeof(g_hSynth), f );
		fclose( f );

		packed_length = ss_pack( g_hSynth, (char*)&packed_buffer );
		wsprintf( temp, "%s.packedsynth", filename_buffer );
		f = fopen( temp, "wb" );
		fwrite( packed_buffer, 1, packed_length, f );
		fclose( f );

		// spara en silent wave... (ska användas när låten är final)
		float x = g_hSynth->master_volume;
		g_hSynth->master_volume = 0.0f;
		wsprintf( temp, "%s.silent.wav", filename_buffer );
		dlg_generate( temp );

		// sparar en vanlig wave
		g_hSynth->master_volume = x;
		wsprintf( temp, "%s.wav", filename_buffer );
		dlg_generate( temp );

		return 1;

	} else {

		return dlg_saveas();
	};
};

int dlg_saveas() {
	
	char temp[MAX_PATH];

	printf( "%x\n", g_hSynth );
	packed_length = ss_pack( g_hSynth, (char*)&packed_buffer );
	printf( "saving as... (%d bytes)\n", packed_length );
	printf( "%x\n", g_hSynth );

	OPENFILENAME ofn;
	ZeroMemory( &ofn, sizeof(OPENFILENAME) );
	ofn.lStructSize = sizeof(OPENFILENAME);
	ofn.hInstance = g_hInstance;
	ofn.Flags = OFN_CREATEPROMPT;
	ofn.hwndOwner = g_hWnd;
	ofn.nFilterIndex = 0;
	ofn.lpstrTitle = "Save synth";
	ofn.lpstrFile = filename_buffer;
	ofn.nMaxFile = MAX_PATH;
	ofn.lpstrFilter = "Synth file (*.synth)\0*.synth\0Packed synth file (*.packedsynth)\0*.packedsynth\0\0";
//	ofn.lpstrFilter = "Synth file (*.synth)\0*.synth\0Packed synth file (*.packedsynth)\0*.packedsynth\0\0";
	ofn.lpstrDefExt = "synth";

	if( GetSaveFileName( &ofn ) )
		dlg_save();

	return 1;
};

int dlg_load() {

	OPENFILENAME ofn;
	ZeroMemory( &ofn, sizeof(OPENFILENAME) );
	ofn.lStructSize = sizeof(OPENFILENAME);
	ofn.hInstance = g_hInstance;
	ofn.Flags = OFN_PATHMUSTEXIST | OFN_FILEMUSTEXIST;
	ofn.hwndOwner = g_hWnd;
	ofn.nFilterIndex = 0;
	ofn.lpstrTitle = "Load synth";
	ofn.lpstrFile = filename_buffer;
	ofn.nMaxFile = MAX_PATH;
	ofn.lpstrFilter = "Synth file (*.synth)\0*.synth\0Packed synth file (*.packedsynth)\0*.packedsynth\0\0";
	ofn.lpstrDefExt = "synth";

	if( GetOpenFileName( &ofn ) ) {

		//LoadFromFile( s );
		//UpdateTitle();

		long l = strlen( filename_buffer );

		// .packedsynth
		if( strcmpi( filename_buffer+(l-12), ".packedsynth" )==0 ) {
			// läs packad synth

			FILE *f = fopen( filename_buffer, "rb" );
			fseek( f, 0, SEEK_END );
			packed_length = ftell( f );
			fseek( f, 0, SEEK_SET );
			fread( packed_buffer, 1, packed_length, f );
			fclose( f );
			printf( "loading %d bytes (packed)...\n", packed_length );
			printf( "%x\n", g_hSynth );
			ss_unpack( g_hSynth, (char*)&packed_buffer );
			//memcpy( g_hSynth, packed_buffer, packed_length ); 
			printf( "%x\n", g_hSynth );

			// rensa filnamnet ... så man får en save-as ruta istället för att spara
			// en [syntnamn].packedsynth.synth ...

			memset( filename_buffer, 0, MAX_PATH );

		}	else {

			FILE *f = fopen( filename_buffer, "rb" );
			fseek( f, 0, SEEK_END );
			packed_length = ftell( f );
			fseek( f, 0, SEEK_SET );
			fread( packed_buffer, 1, packed_length, f );
			fclose( f );
			printf( "loading %d bytes...\n", packed_length );
			printf( "%x\n", g_hSynth );
			//ss_unpack( g_hSynth, (char*)&packed_buffer );
			memcpy( g_hSynth, packed_buffer, packed_length ); 
			printf( "%x\n", g_hSynth );

		};
	
	};

	return 1;
};