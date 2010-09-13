// micromoduleplayer
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include "mmp.h"
//#include "..\common.h"
//#include <mem.h>

#ifdef MMPDEBUG
#include <stdlib.h>
#include <stdio.h>
#endif

int mmp_o_init();
void mmp_o_start();
void mmp_o_stop();
void mmp_o_close();
void mmp_o_append( short *output_data, long output_bytes );


MMPMODULE mmp_module;

int mmp_memcmp( char *a, char *b, int len ) {
	int i;
	for( i=0; i<len; i++ ) if( a[i]!=b[i] ) return 1;
	return 0;
};


int mmp_init() {

	// reset module variable
	//ZeroMemory( &mmp_module, sizeof(MMPMODULE) );
	//printf( "%ld bytes.\n", sizeof(MMPMODULE) );

    // initialize output
	mmp_o_init();

	return 1;
};

void mmp_close() {	
	mmp_o_close();
};

extern DWORD startbeat;

void mmp_start() {
	startbeat = GetTickCount();
	mmp_o_start();
};

void mmp_startnosound() {
	startbeat = GetTickCount();
	//mmp_o_start();
};

void mmp_stop() {
	mmp_o_stop();
};

//void mmp_setposition( long position, long row ) {
//};

int mmp_loadsample( int sample_index, short *sample_data, long sample_samples ) {

	MMPSAMPLE *sample = &mmp_module.pSample[sample_index];

	sample->flags = 0;

	sample->data = (short *)GlobalAlloc( MEM_COMMIT, sample_samples*2 );
	memcpy( sample->data, sample_data, sample_samples*2 );

	sample->length = sample_samples;
	sample->loop_start = 0;
	sample->loop_end = 0;

	sample->volume = 255;
	sample->finetune = 128;

	return 1;
};

typedef unsigned short ushort;
typedef unsigned char uchar;


typedef struct
{
    char        iname[22];              /* instrument name */
    ushort      slength;                /* sample length */
    uchar       finetune;               /* sample finetune value */
    uchar       volume;                 /* sample default volume */
    ushort      loopStart;              /* sample loop start, in words */
    ushort      loopLength;             /* sample loop length, in words */
} modInstHdr;

typedef struct
{
    char        songName[20];           /* song name */
    modInstHdr  instruments[31];        /* instrument headers */
    uchar       songLength;             /* song length */
    uchar       restart;                /* unused by Protracker, song restart
                                           position in some modules */
    uchar       songData[128];          /* pattern playing orders */
    char        sign[4];                /* module signature */
} modHeader;

#define mread( output, length ) { memcpy(output,module+mpos,length ); mpos += length; };

/* Period table for Protracker octaves 0-5: */
static unsigned ptPeriods[6*12] = {
    1712,1616,1524,1440,1356,1280,1208,1140,1076,1016,960,907,
    856,808,762,720,678,640,604,570,538,508,480,453,
    428,404,381,360,339,320,302,285,269,254,240,226,
    214,202,190,180,170,160,151,143,135,127,120,113,
    107,101,95,90,85,80,75,71,67,63,60,56,
    53,50,47,45,42,40,37,35,33,31,30,28 };

#define SWAP16(x) ( ( ((x)<<8) & 0xFF00 ) | ( ((x)>>8) & 0x00FF) )

void mmp_convertpattern(uchar *srcPatt, MMPPATTERN *destPatt)
{
    uchar       *src = srcPatt;
    int			row, chan;
    unsigned    period;
    int         i;
    uchar       note, inst, command, infobyte, compInfo;
	MMPNOTE *dest;

	destPatt->nRows = 64;
	destPatt->pNote = (MMPNOTE*)GlobalAlloc( MEM_COMMIT, sizeof(MMPNOTE)*mmp_module.nTracks*64 );
	dest = destPatt->pNote;

    for ( row = 0; row < 64; row++ )
    {
//		printf("%4d | ", row );
        for ( chan = 0; chan < mmp_module.nTracks; chan++ )
        {

            period = ((unsigned) (*(src) & 0x0F) << 8) | ((unsigned) *(src+1));
            inst = ((*src) & 0xF0) | (*(src+2) >> 4);
            command = *(src+2) & 0x0F;
            infobyte = *(src+3);
            src += 4;

			inst --;

//			printf("%2x%2x%2x%2x | ", period,inst,command,infobyte);
#ifdef MMPDEBUG
			if( inst != 255 ) printf("%d,%d ",note,inst);
#endif
			dest->note = period;
			dest->sample = inst;
			dest->volume = 255;
			dest->effect = command;
			dest->effect_data = infobyte;

            compInfo = 0;

            /* Check if there is a new note: */

            note = 0;
            if ( period != 0 )
            {
                for ( i = 0; i < 6*12; i++ )
                {
                    if ( period >= ptPeriods[i] )
                    {
                        note = i;
                        break;
                    }
                }

#ifdef MMPDEBUG
                if ( i == (6*12) ) printf("invalid pattern data.\n");
#endif

                //note = ((note / 12) << 4) | (note % 12);

            }
			dest->note = note;
			dest ++;
		};
//		printf("\n");

    }
}

void mmp_calcrowcounter();

int mmp_loadmodule( unsigned char *module ) {

	long mpos = 0;
	modHeader mh;
	int i, j;
	int numPatts = 0;

	mmp_module.iPosition = 0;
	mmp_module.iRow = 0;
	mmp_module.iSubTick = 1;
	mmp_module.nRowSamples = 65536;
	
	mread( &mh, sizeof(modHeader) );
	for( i=0; i<=31; i++ ) {
		mh.instruments[i].slength = SWAP16( mh.instruments[i].slength );
		mh.instruments[i].loopStart = SWAP16( mh.instruments[i].loopStart );
		mh.instruments[i].loopLength = SWAP16( mh.instruments[i].loopLength );
	};

#ifdef MMPDEBUG
	printf("'%20s'\n",mh.songName);
	printf("'%4s'\n",mh.sign);
#endif

	if( mmp_memcmp( (char *)&mh.sign, "M.K.", 4 )==0 ) 
		mmp_module.nTracks = 4;
	if( mmp_memcmp( (char *)&mh.sign, "M!K!", 4 )==0 ) 
		mmp_module.nTracks = 4;
	if( mmp_memcmp( (char *)&mh.sign, "FLT4", 4 )==0 ) 
		mmp_module.nTracks = 4;
	if( mmp_memcmp( (char *)&mh.sign, "OCTA", 4 )==0 ) 
		mmp_module.nTracks = 8;
	if( mmp_memcmp( (char *)&mh.sign+1, "CHN", 3 )==0 ) 
		mmp_module.nTracks = mh.sign[0]-'0';
	if( mmp_memcmp( (char *)&mh.sign+2, "CH", 2 )==0 ) 
		mmp_module.nTracks = (mh.sign[0]-'0') * 10 + (mh.sign[1]-'0');

#ifdef MMPDEBUG
	printf( "%ld tracks.\n", mmp_module.nTracks );
#endif

	mmp_module.pTrack = (MMPTRACK*)GlobalAlloc( MEM_COMMIT, sizeof(MMPTRACK)*mmp_module.nTracks );
	for( i=0; i<mmp_module.nTracks; i++ ) memset( &mmp_module.pTrack[i], 0, sizeof(MMPTRACK) );

	for ( i = 0; i < 128; i++ )
    {
        if ( mh.songData[i] > numPatts )
            numPatts = mh.songData[i];
    }
    numPatts++;

	mmp_module.nPatterns = numPatts;
	mmp_module.pPattern = (MMPPATTERN*)GlobalAlloc( MEM_COMMIT, sizeof(MMPPATTERN)*mmp_module.nPatterns );
	for( i=0; i<mmp_module.nPatterns; i++ ) {
		unsigned char *patdata = (unsigned char *)GlobalAlloc( MEM_COMMIT, 256*mmp_module.nTracks );
		memset( &mmp_module.pPattern[i], 0, sizeof(MMPPATTERN) );
		mread( patdata, 256*mmp_module.nTracks );
		mmp_convertpattern( patdata, &mmp_module.pPattern[i] );
		GlobalFree( patdata );
	};

	mmp_module.iSpeed = 6;
	mmp_module.iTempo = 125;
	mmp_calcrowcounter();

	mmp_module.nSamples = 32;
	mmp_module.pSample = (MMPSAMPLE*)GlobalAlloc( MEM_COMMIT, sizeof(MMPSAMPLE)*mmp_module.nSamples );
	for( i=0; i<mmp_module.nSamples; i++ ) memset( &mmp_module.pSample[i], 0, sizeof(MMPSAMPLE) );
	for( i=0; i<31; i++ ) {
		modInstHdr *modi = &mh.instruments[i];
		if( modi->slength ) {
			MMPSAMPLE *s = &mmp_module.pSample[i];
			s->length = 2*modi->slength;	
			s->loop_start = 2*modi->loopStart;
			s->loop_end = 2*modi->loopStart + 2*modi->loopLength;
			s->flags = 0;
			if( modi->loopLength > 2 && (modi->loopLength != modi->loopStart) ) {
				s->flags |= SF_LOOPED;
			};

			s->volume = modi->volume;
			s->finetune = 0;
			//s->panning = 128;

#ifdef MMPDEBUG
			printf("%d: '%s' (%ld %ld %ld)\n", i, modi->iname,s->length,s->loop_start,s->loop_end );
#endif

			s->data = (short *)GlobalAlloc( MEM_COMMIT, s->length*2 );
			for( j=0; j<s->length; j++ ) {
				char c;
				signed char cs;
				int csi;
				mread( &c, 1 );
				cs = c;// ^ 0x80;
				csi = cs;
				csi *= 16384/256;
				s->data[j] = csi;
			};
		};
	};

	mmp_module.nSongRepeat = mh.restart;
	mmp_module.nLength = mh.songLength;
#ifdef MMPDEBUG
	printf("song is %ld patterns long, repeats to %d\n",mmp_module.nLength,mmp_module.nSongRepeat);
#endif
	mmp_module.pOrder = (long*)GlobalAlloc( MEM_COMMIT, sizeof(long)*mmp_module.nLength);
	for( i=0; i<mmp_module.nLength; i++ ) {
		mmp_module.pOrder[i] = mh.songData[i];
#ifdef MMPDEBUG
		printf("%d ",mh.songData[i]);
#endif
	};
#ifdef MMPDEBUG
	printf("\n");
#endif
	return 1;
};