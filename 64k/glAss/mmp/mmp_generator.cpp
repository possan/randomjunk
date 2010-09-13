#include "mmp.h"

#ifdef MMPDEBUG
#include <math.h>
#include <stdlib.h>
#include <stdio.h>
#endif

/* Period table for Protracker octaves 0-5: */
static unsigned ptPeriods[6*12] = {
    1712,1616,1524,1440,1356,1280,1208,1140,1076,1016,960,907,
    856,808,762,720,678,640,604,570,538,508,480,453,
    428,404,381,360,339,320,302,285,269,254,240,226,
    214,202,190,180,170,160,151,143,135,127,120,113,
    107,101,95,90,85,80,75,71,67,63,60,56,
    53,50,47,45,42,40,37,35,33,31,30,28 };

float mmp_calcdeltavalue( long noteindex ) {
	return (float)(82.0f * (1024.0f / ptPeriods[noteindex]));
};

void mmp_calcrowcounter() {

	int bpm = mmp_module.iTempo;
	int speed = mmp_module.iSpeed;
	float spb;
	bpm *= 25;
	bpm /= speed;
	spb = 60 / (float)bpm;
	mmp_module.nRowSamples = (long)(44100 * spb);
#ifdef MMPDEBUG
	printf("speed %d with %d bpm (%d bpm) == %f seconds per beat, %d samples.\n", speed, mmp_module.iTempo, bpm, spb, mmp_module.nRowSamples );
#endif
};

// lite panorerings-shit
float leftamount[4] = { 1.0f, 0.75f, 0.60f, 0.50f };
float rightamount[4] = { 0.50f, 0.60f, 0.75f, 1.0f };

void mmp_generate( short *output, long samples ) {
	// for each channel do...
	
	//printf( "generating 0x%X samples (0x%X bytes) to 0x%X (end: 0x%X)\n", samples, samples<<1, output, output+samples );
	//printf( "%d, %d, %d\n", mmp_module.iPosition, mmp_module.iRow, mmp_module.iSubTick );

	int i, ch;
	float left;
	float right;

	for( i=0; i<samples; i+=2 ) {

		mmp_module.iSubTick --;
		if( !mmp_module.iSubTick ) {
		
			//printf("going thru row %d, position: %d, pattern #%d\n",mmp_module.iRow,mmp_module.iPosition,mmp_module.pOrder[mmp_module.iPosition]);
			MMPPATTERN *pat = &mmp_module.pPattern[ mmp_module.pOrder[ mmp_module.iPosition ] ];
			for( ch=0; ch<mmp_module.nTracks; ch++ ) {
				MMPTRACK *track = mmp_module.pTrack+ch;
				MMPNOTE *note = pat->pNote + (mmp_module.iRow*mmp_module.nTracks+ch);
				if( note->sample != 255 && note->note != 0 ) {
					//printf("triggering note %d on channel %d with sample %d, effect: %X %X\n",note->note, ch, note->sample, note->effect, note->effect_data );
					if( note->effect == 0x3 ) {
						//track->sample_delta = (track->sample_delta*(256-note->effect_data) + mmp_calcdeltavalue( note->note )*note->effect_data)/255;
						//printf("note slide to %X, speed: %X\n",note->note,note->effect_data);
						track->sample_finaldelta = (long)mmp_calcdeltavalue( note->note );
						track->sample_deltadelta = 16;//(track->sample_finaldelta - track->sample_delta) * note->effect_data / 16;
					} else {
						track->sample_index = note->sample;
						track->sample_position = 0;
						track->sample_delta = (long)mmp_calcdeltavalue( note->note );//mmp_calcdeltavalue( note->note );
						track->sample_finaldelta = track->sample_delta;
						track->sample_deltadelta = 0;
					};

					track->sample_volume = mmp_module.pSample[note->sample].volume;
					track->sample_pan = 128; //note->pan;
				};
				switch( note->effect ) {
					case 0xA:
						if( (note->effect_data & 0x0F) != 0 )
							track->sample_volume += note->effect_data>>4;
						else
							track->sample_volume -= note->effect_data&15;
						if( track->sample_volume<0 ) track->sample_volume = 0;
						break;
					case 0x1:
						//track->sample_delta -= note->effect_data;
						break;
					case 0x2:
						//track->sample_delta += note->effect_data;
						break;

					case 0xC:
						track->sample_volume = note->effect_data;
						break;
					case 0xF:
						if( note->effect_data < 32 ) 
							mmp_module.iSpeed = note->effect_data;
						else 
							mmp_module.iTempo = note->effect_data;
						mmp_calcrowcounter();
						break;

					case 0x8:
					case 0xE:
					case 0x3:
					case 0x4:
						break;

					case 0x9:
						track->sample_position = note->effect_data*256*1024;
						break;


					default:
#ifdef MMPDEBUG
						if( note->effect != 0 ) printf("unknown effect %X with paramter %X\n", note->effect, note->effect_data );
#endif
						break;
				};
			};

			// avancera neråt.
			mmp_module.iRow ++;
			if( mmp_module.iRow>=pat->nRows ) {
				mmp_module.iPosition ++;
				// kolla vart låten ska hoppa när den loopas....
				if( mmp_module.iPosition >= mmp_module.nLength ) {
					mmp_module.iPosition = mmp_module.nSongRepeat;
				};
				// resetta radräknaren
				mmp_module.iRow = 0;
			};

			// resetta räknarn ...
			mmp_module.iSubTick = mmp_module.nRowSamples;
		};

		left = 0;
		right = 0;

		for( ch=0; ch<mmp_module.nTracks; ch++ ) {
			//if( ch==0 ) {
			MMPTRACK *track = mmp_module.pTrack + ch;
			float v = 0;
			unsigned long s10, sfrac, sfrac2;
			int ch4 = ch%4;
			if( track->sample_index>=0 ) {
				MMPSAMPLE *sample = mmp_module.pSample + track->sample_index;
				long sp10 = track->sample_position >> 10;
				if( sp10>=0 && sp10<sample->length ) {
					s10 = track->sample_position >> 10;
					sfrac = track->sample_position % 1024;
					sfrac2 = 1024 - sfrac;
					v = sample->data[ s10 ];
					//v2 = sample->data[ s10+1 ];
					//v = (v1*sfrac2 + v2*sfrac) / 1024.0f;
					v *= track->sample_volume;
					v /= 16;
					left += v*leftamount[ch4];
					right += v*rightamount[ch4];
					//left += v;
					//right += v;
				}
			};
			//};
		};
		if( left<-32767 ) left=-32766;
		if( right<-32767 ) right=-32766;
		if( left>32767 ) left=32766;
		if( right>32767 ) right=32766;
		*output++ = (short)left;
		*output++ = (short)right;

		// move the samplepointers... get interpolated sample values.
		for( ch=0; ch<mmp_module.nTracks; ch++ ) {

			MMPTRACK *track = mmp_module.pTrack + ch;
			if( track->sample_index!=-1 ) {
				MMPSAMPLE *sample = mmp_module.pSample + track->sample_index;
				track->sample_position += track->sample_delta;

				// om samplingen loopar och vi har gått förbi loopend - gå till loopstart
				if( (sample->flags & SF_LOOPED) && (track->sample_position >= sample->loop_end*1024) ) {
					track->sample_position = sample->loop_start*1024;
				};

				if( track->sample_delta<track->sample_finaldelta ) 
					track->sample_delta += track->sample_deltadelta;
				else 
				if( track->sample_delta>track->sample_finaldelta ) 
					track->sample_delta -= track->sample_deltadelta;


				// vi har gått utanför slutet på samplingen, stoppa.
				if( !(sample->flags & SF_LOOPED) && (track->sample_position >=  sample->length*1024) ) {
					// we went past end of sample ... STOP.
					track->sample_position = 0;
					track->sample_delta = 0;
					//track->sample_index = -1;
				};
			};
		};
	};
};
