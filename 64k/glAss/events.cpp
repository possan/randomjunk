// Event shit
#include "almosteverything.h"

typedef struct {
	float start_time;
	//float start_beat;
	float end_time;
	//float end_beat;
	float delta_time;
	EVENT_ROUTINE *routine;
	long custom;
} ONEEVENT;

ONEEVENT *pEvent[1024];
int nEvents;

void event_run( float time, float beat ) {
	EVENT e2;
	e2.globalTime = time;
	e2.globalBeat = beat;
	for( int i=0; i<nEvents; i++ ) {
		ONEEVENT *e = pEvent[i];
		if( e!=NULL && (time>=e->start_time) && (time<e->end_time) ) {
			e2.customData = e->custom;
			e2.localTime = time - e->start_time;
			e2.localBeat = 0;
//			e2.eventLength = e->delta_time;
			
			e2.renderAmount = 1*(float)sin( e2.localTime*3.142/e->delta_time );

			// glfusk kåd här?
			glPushMatrix();
			glPushAttrib( GL_ALL_ATTRIB_BITS  );

			e->routine( &e2 );

			glPopAttrib();
			glPopMatrix();
		};
	};
};

void event_register( float starttime, float endtime, EVENT_ROUTINE er, long custom ) {
	ONEEVENT *e = (ONEEVENT*)GlobalAlloc( MEM_COMMIT, sizeof(ONEEVENT) );

	e->start_time = starttime;
	e->end_time = endtime;
	e->delta_time = endtime - starttime;

	e->routine = er;
	e->custom = custom;

	pEvent[nEvents] = e;
	nEvents ++;
};

void event_init() {
	for( int i=0; i<1024; i++ )
		pEvent[i] = NULL;
};

void event_free() {
	for( int i=0; i<1024; i++ )
		if( pEvent[i] != NULL )
			GlobalFree( pEvent[i] );
};
