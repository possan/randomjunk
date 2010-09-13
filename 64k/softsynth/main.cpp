// 
// soft synth example
//

#include <stdio.h>
#include "ss.h"

char data[1024];
short buffer[1024000];
SS_SYNTH s;

int main() {
/*
	ss_unpack( &s, (char*)&data );

	long len = ss_calclength( &s );
	ss_generate( (short*)&buffer, &s );
*/
	/*
	SS_ENV e;

	SS_ENV *env = &e;

	env->loop_start = 0;
	env->loop_end = 0;

	env->sustain_point = 3;

	env->points_used = 5;

	env->point_time[0] = 0;
	env->point_value[0] = 0;
	env->point_ease[0] = 0;

	env->point_time[1] = 1;
	env->point_value[1] = 1.0f;
	env->point_ease[1] = 0;

	env->point_time[2] = 2;
	env->point_value[2] = 0.8f;
	env->point_ease[2] = 0;

	env->point_time[3] = 3;
	env->point_value[3] = 0.8f;
	env->point_ease[3] = 0;

	env->point_time[4] = 4;
	env->point_value[4] = 0;
	env->point_ease[4] = 0;
/*
	ss_env_trigger( env );
	for( float t=0; t<10; t+=0.1f ) {
		float v = ss_env_eval( env );
		printf( "%.2f: %.2f\n", t, v );
		if( t == 2 ) 
			ss_env_release( env );
		if( t > 6 && t<6.5f ) 
			ss_env_trigger( env );
		ss_env_step( env, 0.1f );
	};

	for( float k=0; k<64; k+=12 ) {
		printf( "k%f - %fhz\n", k, ss_freq_from_note( k ) );
	};
*/
	SS_SYNTH a;
	SS_SYNTH b;

	FILE *k = fopen( "alerto.synth", "r" );
	fread( &a, 1, sizeof(SS_SYNTH), k );
	fclose( k );

	char packed[10000];

	int bytes = ss_pack( &a, (char*)&packed );
	ss_unpack( &b, (char*)&packed );

	printf( "\n\n%d bytes packed\n%d bytes raw\n\n", bytes, sizeof(a) );

	printf( "%d, %d (osc1 shape)\n", a.osc[0].shape, b.osc[0].shape );
	printf( "%d, %d (osc2 shape)\n", a.osc[1].shape, b.osc[1].shape );
	printf( "%d, %d (osc3 shape)\n", a.osc[2].shape, b.osc[2].shape );
	printf( "%d, %d (osc4 shape)\n", a.osc[3].shape, b.osc[3].shape );

	printf( "%d, %d (osc1 ft)\n", a.osc[0].filter_type, b.osc[0].filter_type );
	printf( "%d, %d (osc2 ft)\n", a.osc[1].filter_type, b.osc[1].filter_type );
	printf( "%d, %d (osc3 ft)\n", a.osc[2].filter_type, b.osc[2].filter_type );
	printf( "%d, %d (osc4 ft)\n", a.osc[3].filter_type, b.osc[3].filter_type );

	return 0;
};