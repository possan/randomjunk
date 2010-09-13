#define _MMPDEBUG

#define SF_LOOPED 1

typedef struct {
	long flags;
	unsigned char finetune;
	unsigned char volume;
	long length;

	long loop_start;
	long loop_end;

	short *data;
} MMPSAMPLE;

typedef struct {
	unsigned char note;
	int sample;
	unsigned char volume;
	unsigned char effect;
	unsigned char effect_data;
} MMPNOTE;

typedef struct {
	int nRows;
	MMPNOTE *pNote; // module.pattern[n].nRows * module.nPatterns 
} MMPPATTERN;

typedef struct {
	
	unsigned char sample_index;

	long sample_position; // 22.10 fixed point...? 
	long sample_delta;

	long sample_finaldelta;
	long sample_deltadelta;

	unsigned char sample_pan;

	unsigned char sample_volume;
	//long sample_effect;
	//long sample_effect_

} MMPTRACK;

typedef struct {

	int iPosition;
	int iRow;
	int iSubTick;
	long nRowSamples;

	long iTempo; // bpm
	long iSpeed;

	int nTracks;
	MMPTRACK *pTrack; // used runtime only.

	int nLength;
	int nSongRepeat;
	long *pOrder; // 4*iLength

	int nSamples;
	MMPSAMPLE *pSample;

	int nPatterns;
	MMPPATTERN *pPattern;

} MMPMODULE;

extern MMPMODULE mmp_module;

int mmp_init();
void mmp_close();

int mmp_loadmodule( unsigned char *module );
int mmp_loadsample( int sample_index, short *sample_data, long nsamples );

void mmp_start();
void mmp_startnosound();
void mmp_stop();

void mmp_tick();

void mmp_o_append( short *output_data, long output_samples );

//int mmp_memcmp( unsigned char *a, unsigned char *b, int len );