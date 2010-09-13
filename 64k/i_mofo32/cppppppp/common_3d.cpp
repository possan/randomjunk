#include <math.h>
#include "..\common.h"

//  333 DD
//    3 D D
//   33 D D
//    3 D D
//  333 DD

VECTOR vector_crossproduct( VECTOR a, VECTOR b ) {
  VECTOR q;
  q.x = (a.y*b.z) - (a.z*b.y);
  q.y = (a.z*b.x) - (a.x*b.z);
  q.z = (a.x*b.y) - (a.y*b.x);
  return q;
};

float vector_dotproduct( VECTOR a, VECTOR b ) {
  return ( a.x*b.x +
           a.y*b.y +
           a.z*b.z );
};

void vector_normalize( VECTOR *v ) {
  float l = sqrt( v->x*v->x + v->y*v->y + v->z*v->z );
  v->x = v->x / l;
  v->y = v->y / l;
  v->z = v->z / l;
};


void matrix_from_vectors (VECTOR direction, VECTOR upvect, MATRIX *m) {
  VECTOR w;
  VECTOR v,u;
  float lambda;
  v = direction;
  u = upvect;
  vector_normalize( &v );
  lambda = vector_dotproduct( u,v );
  u.x -= lambda*v.x;
  u.y -= lambda*v.y;
  u.z -= lambda*v.z;
  vector_normalize( &u );
  w = vector_crossproduct( v,u );
  m->el[0][0] = w.x;
  m->el[0][1] = w.y;
  m->el[0][2] = w.z;
  m->el[1][0] = u.x;
  m->el[1][1] = u.y;
  m->el[1][2] = u.z;
  m->el[2][0] = v.x; 
  m->el[2][1] = v.y;
  m->el[2][2] = v.z;
};

void vector_mul (MATRIX *m, VECTOR *v, VECTOR *dv) {
  dv->x = m->el[0][0]*v->x + m->el[0][1]*v->y + m->el[0][2]*v->z;
  dv->y = m->el[1][0]*v->x + m->el[1][1]*v->y + m->el[1][2]*v->z;
  dv->z = m->el[2][0]*v->x + m->el[2][1]*v->y + m->el[2][2]*v->z;
};

void vector_mul (VECTOR *v, MATRIX *m) {
	float tx, ty, tz;
  tx = m->el[0][0]*v->x + m->el[0][1]*v->y + m->el[0][2]*v->z;
  ty = m->el[1][0]*v->x + m->el[1][1]*v->y + m->el[1][2]*v->z;
  tz = m->el[2][0]*v->x + m->el[2][1]*v->y + m->el[2][2]*v->z;
  v->x = tx;
  v->y = ty;
  v->z = tz;
};

void vector_add (VECTOR *v, VECTOR *a) {
  v->x += a->x;
  v->y += a->y;
  v->z += a->z;
};

void vector_sub (VECTOR *v, VECTOR *a) {
  v->x -= a->x;
  v->y -= a->y;
  v->z -= a->z;
};

/*
void MatMul (MATRIX *a,MATRIX *b,  MATRIX *d) {
  d->el[0][0] = a->el[0][0] * b->el[0][0] + a->el[0][1] * b->el[1][0] + a->el[0][2] * b->el[2][0];
  d->el[0][1] = a->el[0][0] * b->el[0][1] + a->el[0][1] * b->el[1][1] + a->el[0][2] * b->el[2][1];
  d->el[0][2] = a->el[0][0] * b->el[0][2] + a->el[0][1] * b->el[1][2] + a->el[0][2] * b->el[2][2];
  d->el[1][0] = a->el[1][0] * b->el[0][0] + a->el[1][1] * b->el[1][0] + a->el[1][2] * b->el[2][0];
  d->el[1][1] = a->el[1][0] * b->el[0][1] + a->el[1][1] * b->el[1][1] + a->el[1][2] * b->el[2][1];
  d->el[1][2] = a->el[1][0] * b->el[0][2] + a->el[1][1] * b->el[1][2] + a->el[1][2] * b->el[2][2];
  d->el[2][0] = a->el[2][0] * b->el[0][0] + a->el[2][1] * b->el[1][0] + a->el[2][2] * b->el[2][0];
  d->el[2][1] = a->el[2][0] * b->el[0][1] + a->el[2][1] * b->el[1][1] + a->el[2][2] * b->el[2][1];
  d->el[2][2] = a->el[2][0] * b->el[0][2] + a->el[2][1] * b->el[1][2] + a->el[2][2] * b->el[2][2];
};

void InvertMatrix(MATRIX m, MATRIX *r) {
  float d00, d01, d02, d03;
  float d10, d11, d12, d13;
  float d20, d21, d22, d23;
  float d30, d31, d32, d33;

  float m00, m01, m02, m03;
  float m10, m11, m12, m13;
  float m20, m21, m22, m23;
  float m30, m31, m32, m33;
  float D;

  m00 = m.el[0][0];  m01 = m.el[0][1];  m02 = m.el[0][2];  m03 = 0;
  m10 = m.el[1][0];  m11 = m.el[1][1];  m12 = m.el[1][2];  m13 = 0;
  m20 = m.el[2][0];  m21 = m.el[2][1];  m22 = m.el[2][2];  m23 = 0;
  m30 = 0;           m31 = 0;           m32 = 0;           m33 = 1;

  d00 = m11*m22*m33 + m12*m23*m31 + m13*m21*m32 - m31*m22*m13 - m32*m23*m11 - m33*m21*m12;
  d01 = m10*m22*m33 + m12*m23*m30 + m13*m20*m32 - m30*m22*m13 - m32*m23*m10 - m33*m20*m12;
  d02 = m10*m21*m33 + m11*m23*m30 + m13*m20*m31 - m30*m21*m13 - m31*m23*m10 - m33*m20*m11;
  d03 = m10*m21*m32 + m11*m22*m30 + m12*m20*m31 - m30*m21*m12 - m31*m22*m10 - m32*m20*m11;

  d10 = m01*m22*m33 + m02*m23*m31 + m03*m21*m32 - m31*m22*m03 - m32*m23*m01 - m33*m21*m02;
  d11 = m00*m22*m33 + m02*m23*m30 + m03*m20*m32 - m30*m22*m03 - m32*m23*m00 - m33*m20*m02;
  d12 = m00*m21*m33 + m01*m23*m30 + m03*m20*m31 - m30*m21*m03 - m31*m23*m00 - m33*m20*m01;
  d13 = m00*m21*m32 + m01*m22*m30 + m02*m20*m31 - m30*m21*m02 - m31*m22*m00 - m32*m20*m01;

  d20 = m01*m12*m33 + m02*m13*m31 + m03*m11*m32 - m31*m12*m03 - m32*m13*m01 - m33*m11*m02;
  d21 = m00*m12*m33 + m02*m13*m30 + m03*m10*m32 - m30*m12*m03 - m32*m13*m00 - m33*m10*m02;
  d22 = m00*m11*m33 + m01*m13*m30 + m03*m10*m31 - m30*m11*m03 - m31*m13*m00 - m33*m10*m01;
  d23 = m00*m11*m32 + m01*m12*m30 + m02*m10*m31 - m30*m11*m02 - m31*m12*m00 - m32*m10*m01;

  d30 = m01*m12*m23 + m02*m13*m21 + m03*m11*m22 - m21*m12*m03 - m22*m13*m01 - m23*m11*m02;
  d31 = m00*m12*m23 + m02*m13*m20 + m03*m10*m22 - m20*m12*m03 - m22*m13*m00 - m23*m10*m02;
  d32 = m00*m11*m23 + m01*m13*m20 + m03*m10*m21 - m20*m11*m03 - m21*m13*m00 - m23*m10*m01;
  d33 = m00*m11*m22 + m01*m12*m20 + m02*m10*m21 - m20*m11*m02 - m21*m12*m00 - m22*m10*m01;

  D = m00*d00 - m01*d01 + m02*d02 - m03*d03;

  r->el[0][0] =  d00/D; r->el[0][1] = -d10/D;  r->el[0][2] =  d20/D;
  r->el[1][0] = -d01/D; r->el[1][1] =  d11/D;  r->el[1][2] = -d21/D;
  r->el[2][0] =  d02/D; r->el[2][1] = -d12/D;  r->el[2][2] =  d22/D;
};
*/

//
//
// 3d scene stuff
//  
//

int pl_proj( float xc, float yc, VECTOR *v ) {
	float x, y;
	v->z = 1+((100+v->z) / 45);
	if( v->z<0.01f ) v->z = 0.01f;
	x = (v->x / v->z)*4;
	y = (v->y / v->z)*4;
	v->x = xc + x;
	v->y = yc + y;
	return 1;
};

void pl_draw( POBJECT *obj, MATRIX *mat, VECTOR *loc, float xc, float yc ) {
	for( int i=0; i<obj->nLines; i++ ) {
		PLINE *pl = obj->Line+i;
		VECTOR aa, bb;
		aa = pl->a;
		bb = pl->b;
		vector_sub( &aa, loc );
		vector_sub( &bb, loc );
		vector_mul( &aa, mat );
		vector_mul( &bb, mat );
		if( pl_proj( xc, yc, &aa ) && pl_proj( xc, yc, &bb ) ) {
			gfx_drawline( aa.x, aa.y, bb.x, bb.y, 200 );
			gfx_drawline( aa.x+1, aa.y, bb.x+1, bb.y, 200 );
			gfx_drawline( aa.x, aa.y+1, bb.x, bb.y+1, 200 );
			gfx_drawline( aa.x+1, aa.y+1, bb.x+1, bb.y+1, 200 );
		};
	};
};

void pl_morph( POBJECT *obj1, POBJECT *obj2, POBJECT *output, float percent ) {
	float ipercent = 1-percent;
	for( int i=0; i<output->nLines; i++ ) {
		PLINE *l1 = obj1->Line+i;
		PLINE *l2 = obj2->Line+i;
		PLINE *lo = output->Line+i;
		lo->a.x = l1->a.x*ipercent + l2->a.x*percent;
		lo->a.y = l1->a.y*ipercent + l2->a.y*percent;
		lo->a.z = l1->a.z*ipercent + l2->a.z*percent;
		lo->b.x = l1->b.x*ipercent + l2->b.x*percent;
		lo->b.y = l1->b.y*ipercent + l2->b.y*percent;
		lo->b.z = l1->b.z*ipercent + l2->b.z*percent;
	};
};
