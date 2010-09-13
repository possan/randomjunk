// main code

#include "all.h"

HINSTANCE g_hInstance;
SS_SYNTH *g_hSynth;
short *g_pSampleData;
long g_uSampleLength;

HBITMAP g_hBitmap;
HDC g_hBitmapDC;

void synth_new_env( SS_ENV *env ) {

	env->loop_start = 1;
	env->loop_end = 4;

	env->sustain_point = 3;

	env->points_used = 5;

	env->point_time[0] = 0;
	env->point_value[0] = 1;
	env->point_ease[0] = 0;

	env->point_time[1] = 1;
	env->point_value[1] = 0.5f;
	env->point_ease[1] = 0;

	env->point_time[2] = 2;
	env->point_value[2] = 0.3f;
	env->point_ease[2] = 0;

	env->point_time[3] = 3;
	env->point_value[3] = 0.3f;
	env->point_ease[3] = 0;

	env->point_time[4] = 4;
	env->point_value[4] = 0;
	env->point_ease[4] = 0;

};

void synth_new_env_const( SS_ENV *env, float c ) {

	env->loop_start = 1;
	env->loop_end = 4;

	env->sustain_point = -1;

	env->points_used = 2;

	env->point_time[0] = 0;
	env->point_value[0] = c;
	env->point_ease[0] = 0;

	env->point_time[1] = 1;
	env->point_value[1] = c;
	env->point_ease[1] = 0;

};

#define DEFNOTE( n, note, flag )	\
	g_hSynth->seq_note[n] = note;	\
	g_hSynth->seq_flags[n] = flag;


void synth_new() {

	ZeroMemory( g_hSynth, sizeof(SS_SYNTH) );

	g_hSynth->seq_bpm = 130;
	g_hSynth->seq_length = 16;

	g_hSynth->master_volume = 1.0;

	g_hSynth->dist_thru = 0.2f;
	g_hSynth->dist_threshold = 0.5f;
	g_hSynth->dist_amount = 1.0f;

	g_hSynth->delay_thru = 0.2f;
	g_hSynth->delay_feedback = 0.75f;
	g_hSynth->delay_time = 0.5f;

	g_hSynth->o2_uses_o1 = 0;
	g_hSynth->o3_uses_o1 = 0;
	g_hSynth->o4_uses_o1 = 0;

	g_hSynth->mix_step1 = SMIX_ADD;
	g_hSynth->mix_step2 = SMIX_ADD;
	g_hSynth->mix_step3 = SMIX_ADD;

	DEFNOTE( 0,	3*12+3,	SFLAG_NOTE );
	DEFNOTE( 1,	3*12+3,	0 );
	DEFNOTE( 2,	3*12+3,	0 );
	DEFNOTE( 3,	3*12+3,	0 );
	DEFNOTE( 4,	3*12+3,	0 );
	DEFNOTE( 5,	3*12+3,	0 );
	DEFNOTE( 6,	3*12+3,	0 );
	DEFNOTE( 7,	3*12+3,	0 );
	DEFNOTE( 8,	3*12+3,	0 );
	DEFNOTE( 9,	3*12+3,	0 );

	for( int i=0; i<4; i++ ) {
		synth_new_env( &g_hSynth->osc[i].amp );
		synth_new_env_const( &g_hSynth->osc[i].pitch, 0.5f );
		synth_new_env_const( &g_hSynth->osc[i].cutoff, 0.5f );
		synth_new_env_const( &g_hSynth->osc[i].resonance, 0.5f );
	};

	g_hSynth->osc[0].shape = SSHAPE_SAW;
	g_hSynth->osc[1].shape = SSHAPE_OFF;
	g_hSynth->osc[2].shape = SSHAPE_OFF;
	g_hSynth->osc[3].shape = SSHAPE_OFF;

	g_hSynth->osc[0].filter_type = SFILT_BANDREJECT;
	g_hSynth->osc[1].filter_type = SFILT_BANDPASS;
	g_hSynth->osc[2].filter_type = SFILT_HIGHPASS;
	g_hSynth->osc[3].filter_type = SFILT_LOWPASS;

};

int main() {

	g_hInstance = GetModuleHandle( NULL );
	g_hSynth = new SS_SYNTH;

	//g_hSynth;

	g_hBitmap = LoadBitmap( g_hInstance, MAKEINTRESOURCE( IDB_BITMAP1 ) );
	g_hBitmapDC = CreateCompatibleDC( NULL );
	SelectObject( g_hBitmapDC, g_hBitmap );

	synth_new();

	g_uSampleLength = 4*1024*8192;
	g_pSampleData = (short *)GlobalAlloc( MEM_COMMIT, g_uSampleLength );

	//InitCommonControls();

	// install custom controls
	install_custom_env();
	install_custom_shape();
	install_custom_waveout();
	install_custom_slider();

	// run main dialog
	dlgmain_run();

	GlobalFree( g_pSampleData );

};