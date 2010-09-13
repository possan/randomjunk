//
// rändöm
//

#include "all.h"

float frand() {
	float x = (float)(rand()%10000);
	x /= 10000.0f;
	return x;
};

int irand( float randomamount ) {
	if( frand() < randomamount )
		return 1;
	return 0;
};

void random_env( SS_ENV *env, float amount ) {

	float f;

	for( int i=0; i<env->points_used; i++ ) {

		f = (frand()-0.5f) * amount;
		env->point_value[i] += f;
//		env->point_value[i] *= 0.5f;

		if( env->point_value[i]<0 )
			env->point_value[i]=0;

		if( env->point_value[i]>1 )
			env->point_value[i]=1;

		f = (frand()-0.5f) * amount;
		env->point_ease[i] += f;
//		env->point_ease[i] *= 0.5f;

	};

};

void random_osc( SS_OSC *osc, float randomamount ) {

	random_env( &osc->amp, randomamount );
	random_env( &osc->pitch, randomamount );
	random_env( &osc->cutoff, randomamount );
	random_env( &osc->resonance, randomamount );

	if( irand(randomamount) )
		osc->shape = rand()%5;

	if( irand(randomamount) )
		osc->filter_type = rand()%5;

};

void random_seq_row( SS_SYNTH *syn, int row, float randomamount ) {

};

void synth_random( float amount ) {

	random_osc( &g_hSynth->osc[0], amount );
	random_osc( &g_hSynth->osc[1], amount );
	random_osc( &g_hSynth->osc[2], amount );
	random_osc( &g_hSynth->osc[3], amount );

	g_hSynth->dist_thru += (frand() * amount);
	g_hSynth->dist_thru *= 0.5f;

	g_hSynth->dist_amount += (frand() * amount);
	g_hSynth->dist_amount *= 0.5f;

	g_hSynth->dist_threshold += (frand() * amount);
	g_hSynth->dist_threshold *= 0.5f;

	if( irand( amount ) )
		g_hSynth->mix_step1 = rand()%9;
	if( irand( amount ) )
		g_hSynth->mix_step2 = rand()%9;
	if( irand( amount ) )
		g_hSynth->mix_step3 = rand()%9;

	if( irand( amount ) )
		g_hSynth->o2_uses_o1 = rand()%2;
	if( irand( amount ) )
		g_hSynth->o3_uses_o1 = rand()%2;
	if( irand( amount ) )
		g_hSynth->o4_uses_o1 = rand()%2;

};
