//
// bajsa
//
#include "all.h"

void dlg_generate( char *filename ) {

	// generate wave
	g_uSampleLength = ss_calclength( g_hSynth );
	printf("%d samples.\n", g_uSampleLength );
	ss_generate( g_pSampleData, g_hSynth );

	// write wave file.
	// renderera hSr	
	HMMIO hmi;
	MMCKINFO ck;
	PCMWAVEFORMAT wf;

	// unsign data
//	for( int i=0; i<synth.bytes; i++ ) ljud[i] = (ljud[i]+128)%256;

	hmi = mmioOpen( filename, NULL, MMIO_CREATE | MMIO_WRITE );
	ck.fccType = mmioFOURCC('W','A','V','E');
	ck.cksize = 0L;
	mmioCreateChunk( hmi, &ck, MMIO_CREATERIFF );
	wf.wf.wFormatTag = WAVE_FORMAT_PCM;
	wf.wf.nAvgBytesPerSec = 88200;
	wf.wf.nBlockAlign = 2;
	wf.wf.nChannels = 1;
	wf.wf.nSamplesPerSec = 44100;
	wf.wBitsPerSample = 16;

	ck.ckid = mmioFOURCC('f','m','t',' ');
	ck.cksize = sizeof(wf);
	mmioCreateChunk( hmi, &ck, 0 );
	mmioWrite( hmi, (char *)&wf, sizeof(wf) );
	mmioAscend( hmi, &ck, 0 );

	ck.ckid = mmioFOURCC('d','a','t','a');
	ck.cksize = g_uSampleLength*2;
	mmioCreateChunk( hmi, &ck, 0 );
	mmioWrite( hmi, (char*)g_pSampleData, g_uSampleLength*2 );
	mmioAscend( hmi, &ck, 0 );

	mmioFlush( hmi, 0 );
	mmioClose( hmi, 0 );

};

void dlg_play() {

	sndPlaySound( TEMPWAVE, SND_ASYNC );

};

void dlg_playloop() {

	sndPlaySound( TEMPWAVE, SND_ASYNC | SND_LOOP );

};

void dlg_stop() {

	sndPlaySound( NULL, SND_ASYNC );

};