//
// All.h
//

#ifndef _ALL_H_
#define _ALL_H_

//#define WINVER 0x0500
//#define _WIN32_WINNT 0x0500

#include <windows.h>
#include "..\softsynth\ss.h"
#include "resource.h"
#include <stdio.h>
#include <commdlg.h>

#define TEMPWAVE "c:\\softsynth.wav"

extern short *g_pSampleData;
extern long g_uSampleLength;

extern HINSTANCE g_hInstance;
extern HWND g_hWnd;
extern SS_SYNTH *g_hSynth;

extern HBITMAP g_hBitmap;
extern HDC g_hBitmapDC;

void dlgmain_run();

void dlg_generate( char *filename );
void dlg_playloop();
void dlg_play();
void dlg_stop();
int dlg_load();
int dlg_save();
int dlg_saveas();

void synth_new();
void synth_random( float amount );

// envelope control

typedef struct {
	HDC hdc;
	SS_ENV *env;
	HBITMAP hbmTemp;
	HDC hdcTemp;

	int style; // 0==amp, 1==pitch, 2==cutoff, 3==reso

	int selected;
	int dragging;
	int gx, gy;

	float time_min;
	float time_max;

	float value_min;
	float value_max;

	float view_min;
	float view_max;

	float width;
	float height;

} EnvelopeControl;

typedef struct {
	HDC hdc;
	int *shape;
	int *filtertype;
} ShapeControl;

typedef struct {
	HDC hdc;
	float *value;
	float min;
	float max;
} SliderControl;

typedef struct {
	HDC hdc;
	HBITMAP hbmTemp;
	HDC hdcTemp;
	float attack_time;
	float hold_time;
	float decay_time;
	float sustain_time;
	float sustain_level;
	float release_time;
} WaveoutControl;

void install_custom_env();
void install_custom_shape();
void install_custom_waveout();
void install_custom_slider();

char *notename_from_note( int note );

#endif