//
//
//
#include "almosteverything.h"
#include <stdlib.h>

#define POINTTOMOVE 0
#define STEPS 40
#define NUMSTRINGS 40
#define STRINGLENGTH 0.1f

typedef struct {
	float delta;
	VECTOR p0[STEPS];
	VECTOR p1[STEPS];
	VECTOR p2[STEPS];
	VECTOR p1m[STEPS];
} HBSTRING;

HBSTRING p_hb_string[ NUMSTRINGS ];

void p_horboll_init() {

	int i, j;
	VECTOR t, d;

	for( i=0; i<NUMSTRINGS; i++ ) {

		
	
		d.x = (float)((rand()%255)-128) / 128.0f;
		d.y = (float)((rand()%255)-128) / 128.0f;
		d.z = (float)((rand()%255)-128) / 128.0f;

		vector_normalize( &d );
		d.x *= STRINGLENGTH;
		d.y *= STRINGLENGTH;
		d.z *= STRINGLENGTH;

//		d.x = 0;
//		d.y = 1;
//		d.z = 0;

		t.x = 0;
		t.y = 0;
		t.z = 0;

		p_hb_string[i].delta = (float)i / 40.0f;

		for( j=0; j<STEPS; j++ ) {

			p_hb_string[i].p0[j] = t;
			p_hb_string[i].p1[j] = t;
			p_hb_string[i].p2[j] = t;

			p_hb_string[i].p1m[j].x = d.x;
			p_hb_string[i].p1m[j].y = d.y;
			p_hb_string[i].p1m[j].z = d.z;

			t.x += d.x;
			t.y += d.y;
			t.z += d.z;

		};

	};

};

void p_horboll_render_string( HBSTRING *s ) {

	int i;

	glBegin( GL_LINES );
	for( i=1; i<STEPS-1; i++ ) {
		float b = (float)i / (float)STEPS;
		glColor3f( b,b,b );
		glVertex3f( s->p1[i].x, s->p1[i].y, s->p1[i].z );
		glVertex3f( s->p1[i+1].x, s->p1[i+1].y, s->p1[i+1].z );
	};
	glEnd();
/*
	glBegin( GL_LINES );
	for( i=0; i<STEPS-1; i++ ) {
		glColor3f( 1,0,0 );
		glVertex3f( s->p1[i].x, s->p1[i].y, s->p1[i].z );
		glVertex3f( s->p1[i].x+s->p1m[i].x, s->p1[i].y+s->p1m[i].y, s->p1[i].z+s->p1m[i].z );
	};
	glEnd();
*/
};

void p_horboll_animate_string( HBSTRING *s, EVENT *e ) {

	int i, j, k;
	VECTOR v1, v2, v;
	float mag1, ext1, mag2, ext2;
	float damping;

	float perc = e->deltaTime;
	//perc = 0.05f;
	if( perc<0.000000001f )
		perc=0.000000001f;
	if( perc>1 )
		perc=1;

	float invperc = 1.0f / perc;

	// flytta punkt noll

	s->p1[POINTTOMOVE].x = 1.0f*sin( (e->globalTime+s->delta)*2 );
	s->p1[POINTTOMOVE].y = 1.0f*sin( (e->globalTime+s->delta) );
	s->p1[POINTTOMOVE].z = 1.0f*cos( (e->globalTime+s->delta)/2 );
//->v[0].x = 14*sin( e->globalTime*3 );
//->v[0].y = 10*sin( -e->globalTime );
//->v[0].z = 14*cos( e->globalTime*3 );

	glBegin( GL_LINES );
/*
	glColor3f( 1,0,0 );
	glVertex3f( s->p1[0].x - 4, s->p1[0].y, s->p1[0].z );
	glVertex3f( s->p1[0].x + 4, s->p1[0].y, s->p1[0].z );
	glVertex3f( s->p1[0].x, s->p1[0].y - 4, s->p1[0].z );
	glVertex3f( s->p1[0].x, s->p1[0].y + 4, s->p1[0].z );
	glVertex3f( s->p1[0].x, s->p1[0].y, s->p1[0].z - 4 );
	glVertex3f( s->p1[0].x, s->p1[0].y, s->p1[0].z + 4 );
	glEnd(); 
	*/

	for( i=0; i<STEPS; i++ ) {


		VECTOR movement;

		vector_mul( &s->p1m[i], 0.9f );//.1f - 0.1f*perc );
		movement = s->p1m[i];

		//movement.x -= 0.0000f;
		movement.y -= 0.04f;
		//movement.z -= 0.0000f;

		for( j=0; j<STEPS; j++ ) {

			VECTOR spring;
			float length;
			float normal_length;
			float force_scaler;
			VECTOR force_vector;

			// SpringVector = (position in space of neighbour) - (position in space of point (p,q))
			spring.x = s->p1[j].x - s->p1[i].x;
			spring.y = s->p1[j].y - s->p1[i].y;
			spring.z = s->p1[j].z - s->p1[i].z;
			//	vector_normalize( &spring );

			// Length = length of SpringVector
			normal_length = vector_distance( &s->p0[j], &s->p0[i] );
			length = vector_length( &spring );

			// NormalLength = The length SpringVector would be if the cloth were unstretched
			// ForceScaler = (Length - NormalLength) / (Length * Length) * SmallAmount
			force_scaler = (length - normal_length) / (1.0f + length * length);

			//test += force_scaler;
			// ForceVector = SpringVector * ForceScaler
			// add ForceVector to MovementVector
			force_vector = spring;
			vector_mul( &force_vector, force_scaler );
			//vector_mul( &force_vector, perc );
			vector_add( &movement, &force_vector );

		};

		//vector_add( &s->p1m[i], &movement );
		s->p1m[i] = movement;

		VECTOR t;
		t = s->p1m[i];
		vector_mul( &t, 0.12f );

		s->p2[i] = s->p1[i];
		vector_add( &s->p2[i], &t );

//		s->p1m[i] = v;
//		s->p2[i] = s->p1[i];
//		vector_add( &s->p2[i], &v );


/*
		int im1 = i - 1;
		if( im1>=0 ) {
			v1 = s->p1[im1];
			vector_sub( &v1, &s->p1[i] );
			mag1 = vector_length( &v1 );
			ext1 = mag1 - STRINGLENGTH;

			v.x += (v1.x / mag1 * ext1);
			v.y += (v1.y / mag1 * ext1);
			v.z += (v1.z / mag1 * ext1);

		};

		int ip1 = i + 1;
		if( ip1<STEPS ) {
			im1 = (im1 % STEPS);
			ip1 = (ip1 % STEPS);

			v2 = s->p1[ip1];
			vector_sub( &v2, &s->p1[i] );
			mag2 = vector_length( &v2 );
			ext2 = mag2 - STRINGLENGTH;

			v.x -= (v2.x / mag2 * ext2);
			v.y -= (v2.y / mag2 * ext2);
			v.z -= (v2.z / mag2 * ext2);
		
		}

		v.y -= (26.5f * perc);

//		s->v[i].x = (s->v[i].x * damping * invperc) + (v.x * 0.001f * perc);
//		s->v[i].y = (s->v[i].y * damping * invperc) + (v.y * 0.001f * perc) - (4.0f*perc);
//		s->v[i].z = (s->v[i].z * damping * invperc) + (v.z * 0.001f * perc);

		s->p2[i].x = s->p1[i].x + v.x * perc;
		s->p2[i].y = s->p1[i].y + v.y * perc;
		s->p2[i].z = s->p1[i].z + v.z * perc;
*/
/*
		s->p2[i].x += ((float)((rand()%255)-128) / 120.0f) * perc;
		s->p2[i].y += ((float)((rand()%255)-128) / 120.0f) * perc;
		s->p2[i].z += ((float)((rand()%255)-128) / 120.0f) * perc;
*/

	};

	for( i=0; i<STEPS; i++ ) {
		s->p1[i] = s->p2[i];
	};

	/*
      Loop i from 0 to 31

          X_vector1 = String1_X(i- 1) - String1_X(i)
          Y_vector1 = String1_Y(i - 1) - String1_Y(i)
          Magnitude1 = LengthOf (X_Vector1, Y_Vector1)
          Extension1 = Magnitude1 - Normal_Length

          X_vector2 = String1_X(i + 1) - String1_X(i)
          Y_vector2 = String1_Y(i + 1) - String1_Y(i)
          Magnitude2 = LengthOf(X_Vector2, Y_Vector2)
          Extension2 = Magnitude2 - Normal_Length

          xv = (X_Vector1 / Magnitude1 * Extension1) + (X_Vector2 / Magnitude2 * Extension2)
          yv = (Y_Vector1 / Magnitude1 * Extension1) + (Y_Vector2 / Magnitude2 * Extension2) + Gravity

          String2_X(i) = String1_X(i) + (xv * .01)
          String2_Y(i) = String1_Y(i) + (yv * .01)
	  (Note you can use what ever value you like instead of .01)
	
      end of loop

      Copy all of String2_X to String1_X
      Copy all of String2_Y to String1_Y
      Draw lines between all adjacent points
*/
};

void p_horboll_run( EVENT *e ) {

	float t = e->localTime;

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
	gluPerspective( 100, 4/3, 0.1f, 1000 );
	//gluLookAt( 5*sin(t/2), 5*cos(t/1), 5*cos(t/3), 0, 0, 0, 0, 1, 0 );
	gluLookAt( 1, 2, 2, 0,0,0, 0, 1, 0 );
	glLineWidth( 1 );
	glDepthFunc( GL_LEQUAL );

	//	glTranslatef( 0, 0, -1 );
	int i;

	for( i=0; i<NUMSTRINGS; i++ )
		p_horboll_animate_string( &p_hb_string[i], e );

	glDisable( GL_TEXTURE_2D );
	for( i=0; i<NUMSTRINGS; i++ )
		p_horboll_render_string( &p_hb_string[i] );

};

