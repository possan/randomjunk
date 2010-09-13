//
// Softsynth main code.
//
#include "ss.h"
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
#include <windows.h>

#define DEBUG printf

long ss_calclength( SS_SYNTH *synth ) {

//	long numsamples = synth->seq_length * synth->seq_bpm * 44100;

//	long row_samples = (11025/4) * synth->seq_bpm / 60;
//	long numsamples = synth->seq_length * row_samples;
	synth->row_samples = (44100/4) * (60/synth->seq_bpm);
	long numsamples = synth->seq_length * synth->row_samples;

	return numsamples;

};

float ss_freq_from_note( float key ) {

	//int Note = (track_note>>4)*12+(track_note&0x0f)-1;
	float Hz =  (float)( (55.0f/2) * pow( 2.0f, key/12.0f ) );

	return Hz;
	//float Hz64k = 8192.0f * ((256.0f*Hz)/track->samples_per_second );

};

float ss_mix_or( float a, float b ) {
	int ia, ib, ic;
	ia = (int)(a*1024);
	ib = (int)(b*1024);
	ic = ia | ib;
	return (float)ic / 1024.0f;
};

float ss_mix_and( float a, float b ) {
	int ia, ib, ic;
	ia = (int)(a*1024);
	ib = (int)(b*1024);
	ic = ia & ib;
	return (float)ic / 1024.0f;
};

float ss_mix_xor( float a, float b ) {
	int ia, ib, ic;
	ia = (int)(a*1024);
	ib = (int)(b*1024);
	ic = ia ^ ib;
	return (float)ic / 1024.0f;
};

void ss_generate( short *buffer, SS_SYNTH *synth ) {

	// generera destina
	int i;

	synth->row_samples = (44100/4) * (60/synth->seq_bpm);
	long numsamples = synth->seq_length * synth->row_samples;

	DEBUG( "generating %d samples at %f bpm...\n", numsamples, synth->seq_bpm );

	// allokera en buffert per oscillator

	float *temp_buffer1 = (float *)GlobalAlloc( MEM_COMMIT, numsamples*4 );
	float *temp_buffer2 = (float *)GlobalAlloc( MEM_COMMIT, numsamples*4 );
	float *temp_buffer3 = (float *)GlobalAlloc( MEM_COMMIT, numsamples*4 );
	float *temp_buffer4 = (float *)GlobalAlloc( MEM_COMMIT, numsamples*4 );

	float hz = 440;

	ss_generate_oscillator( synth, &synth->osc[0], &synth->osc[0].amp, &synth->osc[0].pitch, &synth->osc[0].cutoff, &synth->osc[0].resonance, temp_buffer1 );
	if( synth->o2_uses_o1 ) {
		ss_generate_oscillator( synth, &synth->osc[1], &synth->osc[0].amp, &synth->osc[0].pitch, &synth->osc[0].cutoff, &synth->osc[0].resonance, temp_buffer2 );
	} else {
		ss_generate_oscillator( synth, &synth->osc[1], &synth->osc[1].amp, &synth->osc[1].pitch, &synth->osc[1].cutoff, &synth->osc[1].resonance, temp_buffer2 );
	};
	if( synth->o3_uses_o1 ) {
		ss_generate_oscillator( synth, &synth->osc[2], &synth->osc[0].amp, &synth->osc[0].pitch, &synth->osc[0].cutoff, &synth->osc[0].resonance, temp_buffer3 );
	} else {
		ss_generate_oscillator( synth, &synth->osc[2], &synth->osc[2].amp, &synth->osc[2].pitch, &synth->osc[2].cutoff, &synth->osc[2].resonance, temp_buffer3 );
	};
	if( synth->o4_uses_o1 ) {
		ss_generate_oscillator( synth, &synth->osc[3], &synth->osc[0].amp, &synth->osc[0].pitch, &synth->osc[0].cutoff, &synth->osc[0].resonance, temp_buffer4 );
	} else {
		ss_generate_oscillator( synth, &synth->osc[3], &synth->osc[3].amp, &synth->osc[3].pitch, &synth->osc[3].cutoff, &synth->osc[2].resonance, temp_buffer4 );
	};

	float dth = synth->dist_threshold * 32000;
	float damt = synth->dist_amount * synth->dist_thru * 32000;

	//
	// mixa oscillatorerna
	//

	float master_volume = synth->master_volume;

	float *b1 = temp_buffer1;
	float *b2 = temp_buffer2;
	float *b3 = temp_buffer3;
	float *b4 = temp_buffer4;

	i = numsamples;
	while( --i ) {

		float a=0, b=0, c=0;
	
		switch( synth->mix_step1 ) {
			case SMIX_ADD:		a = *b1 + *b2;					break;
			case SMIX_MUL:		a = *b1 * *b2;					break;
			case SMIX_DIV:		a = *b1 / *b2;					break;
			case SMIX_AND:		a = ss_mix_and( *b1, *b2 );		break;
			case SMIX_OR:		a = ss_mix_or( *b1, *b2 );		break;
			case SMIX_XOR:		a = ss_mix_xor( *b1, *b2 );		break;
			case SMIX_SQRADD:	a = (*b1 * *b1) + (*b2 * *b2);	break;
			case SMIX_POW:		a = pow( *b1, *b2 );			break;
			case SMIX_SIN:		a = *b1 * sin( *b2 * 3.142f );	break;
		}

		switch( synth->mix_step2 ) {
			case SMIX_ADD:		b = *b3 + *b4;					break;
			case SMIX_MUL:		b = *b3 * *b4;					break;
			case SMIX_DIV:		b = *b3 / *b4;					break;
			case SMIX_AND:		b = ss_mix_and( *b3, *b4 );		break;
			case SMIX_OR:		b = ss_mix_or( *b3, *b4 );		break;
			case SMIX_XOR:		b = ss_mix_xor( *b3, *b4 );		break;
			case SMIX_SQRADD:	b = (*b3 * *b3) + (*b4 * *b4);	break;
			case SMIX_POW:		b = pow( *b3, *b4 );			break;
			case SMIX_SIN:		b = *b3 * sin( *b4 * 3.142f );	break;
		}

		switch( synth->mix_step3 ) {
			case SMIX_ADD:		c = a + b;						break;
			case SMIX_MUL:		c = a * b;						break;
			case SMIX_DIV:		c = a / b;						break;
			case SMIX_AND:		c = ss_mix_and( a, b );			break;
			case SMIX_OR:		c = ss_mix_or( a, b );			break;
			case SMIX_XOR:		c = ss_mix_xor( a, b );			break;
			case SMIX_SQRADD:	c = a*a + b*b;					break;
			case SMIX_POW:		c = pow( a, b );				break;
			case SMIX_SIN:		c = a * sin( b * 3.142f );		break;
		};

		*b1 = c * master_volume;

		b1++;
		b2++;
		b3++;
		b4++;

	};

	//
	// filter it.
	//

	b1 = temp_buffer1;
	b2 = temp_buffer2;
	b3 = temp_buffer3;
	b4 = temp_buffer4;

	short *outbuffer = buffer;

	i = numsamples;

	while( --i ) {


		float sum=0, sumdelay=0;

		sum = *b1 * 32765;

		if( sum<-dth ) sum -= damt;
		if( sum>dth ) sum += damt;

		if( sum<-32760 ) sum=-32760;
		if( sum>32760 ) sum=32760;


		*outbuffer = sum;
		outbuffer ++;
		b1 ++;
	};

	GlobalFree( temp_buffer1 );
	GlobalFree( temp_buffer2 );
	GlobalFree( temp_buffer3 );
	GlobalFree( temp_buffer4 );

};
