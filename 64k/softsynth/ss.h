//
// softsynth header
//

#ifndef _SS_H_
#define _SS_H_

typedef struct {

	int				loop_start;
	int				loop_end;
	int				sustain_point;

	int				points_used;
	float			point_time[ 64 ];
	float			point_value[ 64 ];
	float			point_ease[ 64 ];

	// stuff not saved in file

	int				at_sustain;
	float			sustain_started;
	float			phase;

} SS_ENV;

#define SSHAPE_OFF			0
#define SSHAPE_SINUS		1
#define SSHAPE_SQUARE		2
#define SSHAPE_SAW			3
#define SSHAPE_TRIANGLE		4
#define SSHAPE_NOISE1		5
#define SSHAPE_NOISE2		6

#define SFILT_NONE			0
#define SFILT_LOWPASS		1
#define SFILT_HIGHPASS		2
#define SFILT_BANDPASS		3
#define SFILT_BANDREJECT	4

typedef struct {

	int				shape;

	SS_ENV			amp;
	SS_ENV			pitch;
	SS_ENV			cutoff;
	SS_ENV			resonance;

	int				filter_type; // *DOH*

} SS_OSC;

#define SFLAG_NOTE		1
#define SFLAG_SLIDE		2
#define SFLAG_ACCENT	4

#define SMIX_ADD		0
#define SMIX_MUL		1
#define SMIX_DIV		2
#define SMIX_AND		3
#define SMIX_OR			4
#define SMIX_XOR		5
#define SMIX_SQRADD		6
#define SMIX_POW		7
#define SMIX_SIN		8
//#define SMIX_POW		7

typedef struct {

	SS_OSC			osc[4];

	int				o2_uses_o1;
	int				o3_uses_o1;
	int				o4_uses_o1;

	int				mix_step1;
	int				mix_step2;
	int				mix_step3;

	float			dist_thru;
	float			dist_threshold;
	float			dist_amount;

	float			delay_thru;
	float			delay_feedback;
	float			delay_time;

	int				seq_length;
	float			seq_bpm;

	int				seq_note[ 64 ];
	int				seq_flags[ 64 ];

	long			row_samples;

	float			master_volume;

} SS_SYNTH;


float ss_freq_from_note( float key );

void ss_env_trigger( SS_ENV *env );
void ss_env_release( SS_ENV *env );
void ss_env_step( SS_ENV *env, float time );

float ss_env_eval( SS_ENV *envelope );
float ss_env_eval2( SS_ENV *envelope, float time );

void ss_unpack( SS_SYNTH *dest, char *source );
long ss_pack( SS_SYNTH *source, char *dest );

long ss_calclength( SS_SYNTH *settings );
void ss_generate( short *samples, SS_SYNTH *settings );

void ss_generate_oscillator( SS_SYNTH *synth, SS_OSC *osc, SS_ENV *amp, SS_ENV *pitch, SS_ENV *cutoff, SS_ENV *resonance, float *output );

#endif