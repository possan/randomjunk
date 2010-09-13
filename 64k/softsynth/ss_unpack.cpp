//
// Unpacking routine
//
#include "ss.h"
//#include <string.h>

char *ss_unpack_source;
SS_SYNTH *ss_unpack_destination;
long ss_unpack_position;

int ss_getbits( int bits ) {
	// -- kuk
	return 0;
};

void ss_unpack( SS_SYNTH *dest, char *source ) {

	// packa upp en packad dataarray till en softsynthsample struktur.
	//destination>

/*

	memcpy( dest, source, sizeof(SS_SYNTH) );

	if( dest->master_volume == 0 )
		dest->master_volume = 1.0f;
*/

	ss_unpack_source = source;
	ss_unpack_destination = dest;
	ss_unpack_position = 0;

};