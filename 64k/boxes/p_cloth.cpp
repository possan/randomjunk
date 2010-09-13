//
//
//
#include "almosteverything.h"
#include <stdlib.h>

#define NUMPOINTSU 40
#define NUMPOINTSV 50
#define NUMPOINTS (NUMPOINTSU*NUMPOINTSV)
#define NUMSTRINGS 50
#define STRINGLENGTH 0.1f

typedef struct {
	float unstretched_length;
	VECTOR p0uv[ NUMPOINTS ];
	VECTOR p0[ NUMPOINTS ];
	VECTOR p1[ NUMPOINTS ];
	VECTOR p1m[ NUMPOINTS ];
	VECTOR p2[ NUMPOINTS ];
	VECTOR p1n[ NUMPOINTS ];
	VECTOR last[ NUMPOINTS ];
	VECTOR v[ NUMPOINTS ];
} CLOTH;

CLOTH cloth1;

void p_cloth_init() {

	int i, j, n;
	VECTOR t, d;

	cloth1.unstretched_length = 0.5f;

	n = 0;
	for( j=0; j<NUMPOINTSU; j++ ) {
		for( i=0; i<NUMPOINTSU; i++ ) {
			cloth1.p0[n].x = ((float)i - (float)NUMPOINTSU/2.0f) * cloth1.unstretched_length;
			cloth1.p0[n].y = 5.5f + sin((float)(i*j)/300.0f);
			cloth1.p0[n].z = ((float)j - (float)NUMPOINTSV/2.0f) * cloth1.unstretched_length;
			cloth1.p0uv[n].x = (float)i / (float)NUMPOINTSU * 3;
			cloth1.p0uv[n].y = (float)j / (float)NUMPOINTSV * 3;
			cloth1.p1[n] = cloth1.p0[n];
			cloth1.p1m[n].x = 0;
			cloth1.p1m[n].y = 0;
			cloth1.p1m[n].z = 0;
			n ++;
		};
	};

};

void p_cloth_render( CLOTH *c ) {

	int i, j;
	int n0,n1,n2,n3;

	glaSetTexture( 1 );
	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

	glBegin( GL_QUADS );
	glColor3f( 0.7f,0.85f,0.95f );
	n0 = 0;

	for( j=0; j<NUMPOINTSV-1; j++ ) {
		for( i=0; i<NUMPOINTSU-1; i++ ) {
			n1 = n0 + 1;
			n2 = n0 + NUMPOINTSU;
			n3 = n0 + NUMPOINTSU + 1;

			glTexCoord2fv( (float*)&c->p0uv[n1] );
			glNormal3fv( (float*)&c->p1n[n1] );
			glVertex3fv( (float*)&c->p1[n1] );

			glTexCoord2fv( (float*)&c->p0uv[n0] );
			glNormal3fv( (float*)&c->p1n[n0] );
			glVertex3fv( (float*)&c->p1[n0] );

			glTexCoord2fv( (float*)&c->p0uv[n2] );
			glNormal3fv( (float*)&c->p1n[n2] );
			glVertex3fv( (float*)&c->p1[n2] );

			glTexCoord2fv( (float*)&c->p0uv[n3] );
			glNormal3fv( (float*)&c->p1n[n3] );
			glVertex3fv( (float*)&c->p1[n3] );

			n0 ++;
		};
		n0 ++;
	};
/*
	glEnd();
	glBegin( GL_LINES );
	glColor3f( 0.4f,0.7f,0.9f );
	n0 = 0;

	for( j=0; j<NUMPOINTSV-1; j++ ) {
		for( i=0; i<NUMPOINTSU-1; i++ ) {
			n1 = n0 + 1;
			n2 = n0 + NUMPOINTSU;
			n3 = n0 + NUMPOINTSU + 1;

			glVertex3fv( (float*)&c->p1[n0] );
			glVertex3fv( (float*)&c->p1[n1] );

			glVertex3fv( (float*)&c->p1[n0] );
			glVertex3fv( (float*)&c->p1[n2] );

			n0 ++;
		};
		n0 ++;
	};
*/
	glEnd();
/*
	glBegin( GL_POINTS );
	for( i=0; i<NUMPOINTS; i++ ) {
		glColor3f( 0,1,0 );
		glVertex3f( c->p0[i].x, c->p0[i].y, c->p0[i].z );
	};
	glEnd();
*/
	/*
	glBegin( GL_LINES );
	for( i=0; i<NUMPOINTS; i++ ) {
		//glColor3f( 1,0,0 );
		//glColor3f( 0.3f,0.5f,0.9f0 );

		glVertex3f( c->last[i].x, c->last[i].y, c->last[i].z );
		glVertex3f( c->p1[i].x, c->p1[i].y, c->p1[i].z );

	};
	glEnd();
	*/

};

void p_cloth_test_sphere( VECTOR *v, VECTOR *center, VECTOR *force, float radius ) {
	float dist;
	dist = vector_distance( center, v );
	if( dist < radius ) {
		VECTOR force_vector;
		force_vector = *v;
		vector_sub( &force_vector, center ); 
		vector_mul( &force_vector, 1 / dist * radius );
		vector_add( &force_vector, center );
//		vector_sub( &force_vector, center );
		*v = force_vector;
		//vector_add( force, &force_vector );
	};
};

void p_cloth_test_cylinder( VECTOR *v, VECTOR *center, float bottom, float top, float radius ) {
	float dist;
	if( v->y < top ) {
		VECTOR tempcenter;
		tempcenter.x = center->x;
		tempcenter.y = v->y;
		tempcenter.z = center->z;
		dist = vector_distance( &tempcenter, v );
		if( dist < radius ) {
			VECTOR force_vector;
			force_vector = *v;
			vector_sub( &force_vector, &tempcenter ); 
			vector_mul( &force_vector, 1 / dist * radius );
			vector_add( &force_vector, &tempcenter );
			*v = force_vector;
			//v->y = top;
		};
	};
};

void p_cloth_test_plane( VECTOR *v, float level ) {
	float dist;
	if( v->y < level )
		v->y = level;
};

void p_cloth_render_sphere( VECTOR *center, float radius ) {

	glBegin( GL_POINTS );
	glColor3f( 1,0,0 );
	for( int fuling=0; fuling<50; fuling++ ) {
		float s = radius * sin( (float)fuling * 3.142f / 25 );
		float c = radius * cos( (float)fuling * 3.142f / 25 );
		for( int fuling2=0; fuling2<50; fuling2++ ) {
			float s2 = sin( (float)fuling2 * 3.142f / 25 );
			float c2 = cos( (float)fuling2 * 3.142f / 25 );
			glVertex3f( center->x+s*c2, center->y + c, center->z+s*s2 );
		};
	};
	glEnd();

	
};

void p_cloth_animate( CLOTH *c, EVENT *e ) {

	int i, j, k, l;
	int n1, n2, n3, n4, n5;
	VECTOR v1, v2, v, sphere1_center, sphere2_center;
	float sphere1_radius, sphere2_radius;
	float mag1, ext1, mag2, ext2;
	float damping;

	float perc = e->deltaTime;
	if( perc<0.000000001f )
		perc=0.000000001f;
	if( perc>1 )
		perc=1;
	perc *= 1.0f;

	float invperc = 1.0f - perc;

	sphere1_radius = 6.0f;
	sphere1_center.x = 3*sin( e->globalTime / 3 );
	sphere1_center.y = -7;
	sphere1_center.z = 3*cos( e->globalTime / 3 );
	sphere2_radius = 6.5f;
	sphere2_center.x = 3*sin( e->globalTime / 3 + 3.142 );
	sphere2_center.y = -7;
	sphere2_center.z = 3*cos( e->globalTime / 3 + 3.142 );

	p_cloth_render_sphere( &sphere1_center, sphere1_radius );
	p_cloth_render_sphere( &sphere2_center, sphere2_radius );

//	auxWireSphere( sphere_radius );

	for( j=0; j<NUMPOINTSV; j++ ) {
		for( i=0; i<NUMPOINTSU; i++ ) {
			n1 = j * NUMPOINTSU + i;

			float test;
			VECTOR movement;

			test = 0;

			vector_mul( &c->p1m[n1], 0.1f - 0.1f*perc );

			movement = c->p1m[n1];

			movement.x -= 0.0000f;
			movement.y -= 2.3f;
			movement.z -= 0.0000f;

			for( l=j-2; l<=j+2; l++ ) {
				for( k=i-2; k<=i+2; k++ ) {
					if( l>=0 && l<NUMPOINTSV &&
						k>=0 && k<NUMPOINTSU ) {

						n2 = l * NUMPOINTSU + k;

						VECTOR spring;
						float length;
						float normal_length;
						float force_scaler;
						VECTOR force_vector;

						// SpringVector = (position in space of neighbour) - (position in space of point (p,q))
						spring.x = c->p1[n2].x - c->p1[n1].x;
						spring.y = c->p1[n2].y - c->p1[n1].y;
						spring.z = c->p1[n2].z - c->p1[n1].z;
//						vector_normalize( &spring );

						// Length = length of SpringVector
						normal_length = vector_distance( &c->p0[n2], &c->p0[n1] );
						length = vector_length( &spring );

						// NormalLength = The length SpringVector would be if the cloth were unstretched
						// ForceScaler = (Length - NormalLength) / (Length * Length) * SmallAmount
						force_scaler = (length - normal_length) / (0.001f + ((length * length)));

						test += force_scaler;
						// ForceVector = SpringVector * ForceScaler
						// add ForceVector to MovementVector
						force_vector = spring;
						vector_mul( &force_vector, force_scaler );
						//vector_mul( &force_vector, perc );
						vector_add( &movement, &force_vector );
					};
				};
			};
/*
			vector_mul( &movement, 0.1f*perc );

			c->p2[n1] = c->p1[n1];
			vector_add( &c->p2[n1], &movement );

//			vector_mul( &c->p2[n1], 0.3f - 0.0001f*perc );
//			vector_mul( &c->p1m[n1], test );

*/		
			vector_add( &c->p1m[n1], &movement );

			VECTOR t;
			t = c->p1m[n1];
			vector_mul( &t, perc );
			c->p2[n1] = c->p1[n1];
			vector_add( &c->p2[n1], &t );

//			vector_mul( &c->p1m[n1], test );

			p_cloth_test_sphere( &c->p2[n1], &sphere1_center, &c->p1m[n1], sphere1_radius );
			p_cloth_test_sphere( &c->p2[n1], &sphere2_center, &c->p1m[n1], sphere2_radius );

			VECTOR temp;
			temp.x = 0;
			temp.y = 0;
			temp.z = 0;
//	p_cloth_test_cylinder( &c->p2[n1], &temp, -2, 1.0f, 1.5f );

			p_cloth_test_plane( &c->p2[n1], -3.5f );
			
		};

	};

	for( i=0; i<NUMPOINTS; i++ ) {
		c->last[i] = c->p1[i];
		c->p1[i] = c->p2[i];
	};

	for( j=1; j<NUMPOINTSV-1; j++ ) {
		for( i=1; i<NUMPOINTSU-1; i++ ) {
			
			VECTOR n;
			n1 = j * NUMPOINTSU + (i-1);
			n2 = j * NUMPOINTSU + (i+1);
			n.x = c->p1[n2].x - c->p1[n1].x;

			n1 = (j-1) * NUMPOINTSU + i;
			n2 = (j+1) * NUMPOINTSU + i;
			n.z = c->p1[n2].z - c->p1[n1].z;

			n.y = 0.1f;

			vector_normalize( &n );

			c->p1n[ j * NUMPOINTSU + i ] = n;
		};
	};

};

void p_cloth_run( EVENT *e ) {

	float t = e->localTime;

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
	gluPerspective( 100, 4/3, 0.1f, 1000 );
	//gluLookAt( 9*sin(t/3), 0 + 2*cos(t/1), 8*cos(t/3), 0, 0, 0, 0, 1, 0 );
	gluLookAt( -4, 5, 7, 0,0,0, 0, 1, 0 );
	glLineWidth( 1 );
	glDepthFunc( GL_LEQUAL );

	glEnable( GL_LIGHT0 );
	glEnable( GL_LIGHTING );
	glEnable( GL_COLOR_MATERIAL );
	glDisable( GL_CULL_FACE );

	//	glTranslatef( 0, 0, -1 );
	int i;

	p_cloth_animate( &cloth1, e );

	glDisable( GL_TEXTURE_2D );
	p_cloth_render( &cloth1 );

	glDisable( GL_LIGHTING );

};

