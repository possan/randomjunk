//
// softsynth generateur :)
// 
#include "ss.h"
#include <math.h>
#include <stdlib.h>
#include <stdio.h>

typedef float (*SHAPEFUNC)( float phase );

float ss_sinus( float phase ) {
	return (float)sin( phase*3.142f*2.0f );
};

float ss_silent( float phase ) {
	return 0;
};

float ss_square( float phase ) {
	float phm = (float)fmod( phase, 1.0f );
	if( phm<0.5f )
		return -1;
	else
		return 1;
};

float ss_saw( float phase ) {
	float phm = (float)fmod( phase, 1.0f );
	return -1 + (phm*2);
};

float ss_triangle( float phase ) {
	float phm = (float)fmod( phase, 1.0f );
	if( phm<0.5f ) {
		return -1 + (phm*4);
	} else {
		return 1 - ((phm-0.5f)*4);
	};
};

float ss_noise1( float phase ) {
	float l = (float)(rand()%10000);
	l /= 5000.0f;
	return l-0.5f;
};

float ss_noise2( float phase ) {
	float l = (float)(rand()%10000);
	l /= 5000.0f;
	return l-0.5f;
};
/*
void ss_filt_calc( float freq,float g, float q, float *a0, float *a1, float *a2, float *b1, float *b2 ) { 
	float a,b,c,e;
	float Wn,Wp;
	float freq_s=44100; //sampling frequency
	float gain=g/6.6f;

	if (freq > 44100/2) freq = (float)(44100/2); // apply Nyquist frequency
//	frequency = freq;

	Wn=1/(2*3.142f*freq); // freq of center
	Wp=(Wn/(float)tan(Wn/(2*freq_s))); // prewarped frequency

	a=(Wn*Wn*Wp*Wp);
	b=(3+gain)*Wn*Wp*q;
	c=(3-gain)*Wn*Wp*q;
	e=1;

	*b2 = (e-c+a)/(a+c+e);
	*a2 = (e-b+a)/(a+c+e);
	*b1 = 2*(e-a)/(a+c+e);
	*a1 = 2*(e-a)/(a+c+e);
	*a0 = (a+b+e)/(a+c+e);
};
*/
void ss_generate_oscillator( SS_SYNTH *synth, SS_OSC *osc, SS_ENV *ampe, SS_ENV *pitche, SS_ENV *cutoffe, SS_ENV *resonancee, float *destination ) {
	int row;
	int ip;
	float *output_ptr;

	float wave_phase;
	float sample_phase_delta;

	SHAPEFUNC shapefunc;

	//
	// generera lite vågor
	//

	//switch( 0 ) {
	//};

	switch( osc->shape ) {
		
		case SSHAPE_SQUARE:
			shapefunc = ss_square;
			break;

		case SSHAPE_SAW:
			shapefunc = ss_saw;
			break;

		case SSHAPE_TRIANGLE:
			shapefunc = ss_triangle;
			break;

		case SSHAPE_NOISE1:
			shapefunc = ss_noise1;
			break;

		case SSHAPE_NOISE2:
			shapefunc = ss_noise2;
			break;

		default:
			shapefunc = ss_silent;
			break;

		case SSHAPE_SINUS:
			shapefunc = ss_sinus;
			break;
	};

	sample_phase_delta = 1.0f / (float)synth->row_samples;

	wave_phase = 0;
	ampe->phase = 10;
	pitche->phase = 10;

	output_ptr = destination;
	row = 0;
	while( row < synth->seq_length ) {

		int flags = synth->seq_flags[ row ];
		float base_freq = ss_freq_from_note( (int)synth->seq_note[row] );

		printf( "Generating row %d...\n", row );

		if( flags & SFLAG_NOTE ) {

			// om note on och inte slide... trigga noten.
			if( !(flags & SFLAG_SLIDE) ) {
				ss_env_trigger( ampe );
				ss_env_trigger( pitche );
			};

		} else {

			// om inte not och ingen slide, släpp tangenten...
			if( !(flags & SFLAG_SLIDE) ) {
				ss_env_release( ampe );
				ss_env_release( pitche );
			};

		};

		float pitch = (2.0f*ss_env_eval( pitche )) - 1.0f;
		float freq = ss_freq_from_note( synth->seq_note[row] -12 + (24*pitch) );
		float amp = ss_env_eval( ampe );

		ip = synth->row_samples;
		while( --ip ) {

			if( (ip & 15) == 0 ) {
				pitch = (2.0f*ss_env_eval( pitche )) - 1.0f;
				freq = ss_freq_from_note( synth->seq_note[row] -12 + (24*pitch) );
				amp = ss_env_eval( ampe );
			};

			*output_ptr = amp * shapefunc( wave_phase/88200 );

			wave_phase += freq;

			ss_env_step( ampe, sample_phase_delta );
			ss_env_step( pitche, sample_phase_delta );

			output_ptr ++;
		};

		row ++;
	};

	//
	// processa filtren..
	//

	float *b0;

	b0 = destination;
	output_ptr = destination;

	row = 0;
	while( row < synth->seq_length ) {

		int flags = synth->seq_flags[ row ];
		float base_freq = ss_freq_from_note( (int)synth->seq_note[row] );

		printf( "Filtering row %d...\n", row );

		float cutoff = ss_env_eval( cutoffe );
		float reso = ss_env_eval( resonancee );
//		ss_filt_calc( cutoff*16000, 0, 1-reso, &fa0, &fa1, &fa2, &fb1, &fb2 );

		float lo, bp, hi, f;

		lo = bp = f = 0;

		ip = 0;

		if( flags & SFLAG_NOTE ) {

			// om note on och inte slide... trigga noten.
			if( !(flags & SFLAG_SLIDE) ) {
				ss_env_trigger( cutoffe );
				ss_env_trigger( resonancee );
			};

		} else {

			// om inte not och ingen slide, släpp tangenten...
			if( !(flags & SFLAG_SLIDE) ) {
				ss_env_release( cutoffe );
				ss_env_release( resonancee );
			};

		};

		while( ip < synth->row_samples ) {

//			if( (ip & 15) == 0 ) {
				cutoff = ss_env_eval( cutoffe );
				reso = ss_env_eval( resonancee );
				f = 6*(cutoff*7000)/44100;
//			};

			hi  = *b0 - lo - (1-reso)*bp;
			bp += f*hi;
			lo += f*bp;

			if (lo >  1.0) lo =  1.0;
			if (lo < -1.0) lo = -1.0;

			switch( osc->filter_type ) {

				case SFILT_BANDPASS:
					*output_ptr = bp;
					break;

				case SFILT_BANDREJECT:
					*output_ptr = hi + lo;
					break;

				case SFILT_HIGHPASS:
					*output_ptr = hi;
					break;

				case SFILT_LOWPASS:
		            *output_ptr = lo;           // lågpassfilter
					break;

				case SFILT_NONE:
				default:
		            *output_ptr = *b0;
					break;

			};

			f *= 0.999998;          // exponentialfall

			//*output_ptr = 16000.0f * amp * shapefunc( wave_phase/88200 );

			ss_env_step( cutoffe, sample_phase_delta );
			ss_env_step( resonancee, sample_phase_delta );

			// flytta päkarna
			output_ptr ++;
			b0 ++;
			ip ++;
		};

		row ++;
	};

};