//
// Envelope Code
//
#include "ss.h"
#include <stdio.h>
#include <math.h>

void ss_env_trigger( SS_ENV *env ) {
	//env->phase = 0;
	env->at_sustain = 0;
	env->phase = 0;

};

void ss_env_release( SS_ENV *env ) {
	// släpp på sustain johnny...
	env->at_sustain = 2;
//	env->sustain_started = 0.0f;
};

void ss_env_step( SS_ENV *env, float time ) {
	if( env->at_sustain == 1 ) {
		env->phase += 0;
	} else {
		env->phase += time;
	};
};

float ss_env_eval( SS_ENV *envelope ) {

	// om sustain inte är triggad.
	if( envelope->at_sustain == 0 ) {

		// sustain point finns.
		if( envelope->sustain_point > 0 ) {

			// vi har åkt förbi sustain-stället.
			if( envelope->phase >= envelope->point_time[ envelope->sustain_point ] ) {

				// lets stay here for a while...
				envelope->phase = envelope->point_time[ envelope->sustain_point ];
				envelope->at_sustain = 1;
			};

		};

	};

	float f;
	f = ss_env_eval2( envelope, envelope->phase );

	return f;
};

float ss_env_eval2( SS_ENV *envelope, float time ) {

	float key0, key1, key2, key3;
	int keyi;
	float key0t, key1t, key2t, key3t;
	float key0e, key1e, key2e, key3e;

	float h1, h2, h3, h4;
	float t;
	float delta;
	float dd0a, dd0b, ds1a, ds1b;
	float adj0, adj1, dd0, ds1;
	float tlength;
	int i;

	keyi = 0;

	if( time<0 )
		return envelope->point_value[0];

	for( i=0; i<envelope->points_used; i++ ) {
		if( time>envelope->point_time[i]/* && time<envelope->point_time[i+1]*/ )
			keyi = i;
	};

	if( keyi == envelope->points_used-1 )
		return envelope->point_value[keyi];

//	printf("%d ",keyi);

	if( keyi<1 ) {
		key0t = envelope->point_time[ keyi ];
		key0e = envelope->point_ease[ keyi ];
		key0 = envelope->point_value[ keyi ];
	} else {
		key0t = envelope->point_time[ keyi-1 ];
		key0e = envelope->point_ease[ keyi-1 ];
		key0 = envelope->point_value[ keyi-1 ];
	};
	
	key1 = envelope->point_value[ keyi ];
	key1t = envelope->point_time[ keyi ];
	key1e = envelope->point_ease[ keyi ];

	if( keyi<envelope->points_used-1 ) {
		key2 = envelope->point_value[ keyi+1 ];
		key2e = envelope->point_ease[ keyi+1 ];
		key2t = envelope->point_time[ keyi+1 ];
	} else {
		key2 = envelope->point_value[ keyi ];
		key2e = envelope->point_ease[ keyi ];
		key2t = envelope->point_time[ keyi ];
	};

	if( keyi<envelope->points_used-2 ) {
		key3t = envelope->point_time[ keyi+2 ];
		key3e = envelope->point_ease[ keyi+2 ];
		key3 = envelope->point_value[ keyi+2 ];
	} else {
		if( keyi<envelope->points_used-1 ) {
			key3t = envelope->point_time[ keyi+1 ];
			key3e = envelope->point_ease[ keyi+1 ];
			key3 = envelope->point_value[ keyi+1 ];
		}else {
			key3t = envelope->point_time[ keyi ];
			key3e = envelope->point_ease[ keyi ];
			key3 = envelope->point_value[ keyi ];
		};
	};

	time -= key1t;
	tlength = key2t - key1t;
	t = time / tlength;
	float t2 = t * t;
	float t3 = t2 * t;
	float tt = 2*t3 - 3*t2;
	h1 = tt + 1;
	h2 = -tt;
	h3 = t3 - 2*t2 + t;
	h4 = t3 - t2;

//	dd0a = (1.0f - key1->tension) * (1.0f + key1->contunity) * (1.0f + key1->bias);
//	dd0b = (1.0f - key1->tension) * (1.0f - key1->contunity) * (1.0f - key1->bias);
//	ds1a = (1.0f - key2->tension) * (1.0f - key2->contunity) * (1.0f + key2->bias);
//	ds1b = (1.0f - key2->tension) * (1.0f + key2->contunity) * (1.0f - key2->bias);

	dd0a = 1 - key1e; //(1.0f - key1e) * (1.0f + 0.0f) * (1.0f + 0.0f);
	dd0b = 1 - key1e; //(1.0f - key1e) * (1.0f - 0.0f) * (1.0f - 0.0f);
	ds1a = 1 - key2e; //(1.0f - key2e) * (1.0f - 0.0f) * (1.0f + 0.0f);
	ds1b = 1 - key2e; //(1.0f - key2e) * (1.0f + 0.0f) * (1.0f - 0.0f);
	
	adj0 = tlength / (key2t - key0t);
	adj1 = tlength / (key3t - key1t);
	//CEKey *newkey = m_pTemp;

	float newkey;

//	for( i=0; i<m_nValues; i++ )
//	{

		delta = key2 - key1;
		dd0 = adj0 * (dd0a * (key1 - key0) + dd0b * delta);
		ds1 = adj1 * (ds1a * delta + ds1b * (key3 - key2));
		float v = key1 * h1 + key2 * h2 + dd0 * h3 + ds1 * h4;
		newkey = v;
//	}
	return newkey;

};