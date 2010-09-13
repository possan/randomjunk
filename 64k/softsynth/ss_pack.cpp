//
// packing routine
//
#include "ss.h"
#include <stdio.h>

SS_SYNTH *ss_pack_source;
char *ss_pack_destination;
long ss_pack_position;

void ss_writebit( int value ) {

	printf("%d",value);
	ss_pack_position ++;

};

void ss_writebits( int value, int bits ) {
	for( int i=0; i<bits; i++ )
		ss_writebit( (value & (1<<i)) == (1<<i) );
};

void ss_pack_env( SS_ENV *env ) {

	printf( "(e %dpts ", env->points_used );

	ss_writebits( env->points_used, 3 );
	ss_writebits( env->sustain_point, 3 );

	for( int i=0; i<env->points_used; i++ ) {
//		printf( "," );
		ss_writebits( (int)(env->point_time[i] * 5.0f), 6 );
		ss_writebits( (int)(env->point_value[i] * 64.0f), 6 );
		ss_writebits( (int)(env->point_ease[i] * 64.0f), 6 );

	};

	printf(")\n");
};

void ss_pack_osc( SS_OSC *osc, int uses_o1 ) {

	if( osc->shape != SSHAPE_OFF ) {

		ss_writebits( 1, 1 );

		ss_writebits( osc->shape, 3 );
		ss_writebits( osc->filter_type, 3 );

		if( uses_o1 ) {
			// ja, vi använder o1kurvor, skit i envelopsen
			ss_writebits( 1, 1 ); 

		} else {
			// nej, vi använder inte oscillator 1's kurvor
			ss_writebits( 0, 1 );

			ss_pack_env( &osc->amp );
			ss_pack_env( &osc->pitch );
			ss_pack_env( &osc->cutoff );
			ss_pack_env( &osc->resonance );

		};

	} else {

		ss_writebits( 0, 1 );

	};

};

long ss_pack( SS_SYNTH *source, char *dest ) {
	// packa ner en packad dataarray till en softsynthsample struktur.
	//destination>

//	memcpy( dest, source, sizeof(SS_SYNTH) );

	ss_pack_source = source;
	ss_pack_destination = dest;
	ss_pack_position = 0;

	ss_pack_osc( &source->osc[0], 0 );
	ss_pack_osc( &source->osc[1], source->o2_uses_o1 );
	ss_pack_osc( &source->osc[2], source->o3_uses_o1 );
	ss_pack_osc( &source->osc[3], source->o4_uses_o1 );

	printf( "(seq,%d notes", source->seq_length );

	ss_writebits( source->seq_bpm, 8 );
	ss_writebits( source->seq_length, 4 );
/*
	for( int i=0; i<source->seq_length; i++ ) {
		ss_writebits( source->seq_note[i], 6 );
		ss_writebits( source->seq_flags[i], 2 );
	};
*/
	printf( ")" );

	ss_writebits( source->mix_step1, 4 );
	ss_writebits( source->mix_step2, 4 );
	ss_writebits( source->mix_step3, 4 );

	return ((ss_pack_position+8)>>3);
};
