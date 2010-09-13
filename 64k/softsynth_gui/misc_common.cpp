//
//
//
#include "all.h"

char *notenames[12] = {
	"A-",
	"A#",
	"B-",
	"C-",

	"C#",
	"D-",
	"D#",
	"E-",

	"F-",
	"F#",
	"G-",
	"G#"
};

char *notename_from_note( int note ) {
	static char s[100];
	// bajsa

	if( note<0 ) note=0;
	if( note>9*12 ) note=9*12;

	wsprintf( s, "%s%d", notenames[note%12], note/12 );

	return s;
};
