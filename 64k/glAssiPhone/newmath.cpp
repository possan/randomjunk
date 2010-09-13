// math code

#include <math.h>
#include "newmath.h"

//float identmatrix[] = { 1,0,0,0, 0,1,0,0, 0,0,1,0, 0,0,0,1 };

float Cos( float angle ) {
  return (float)cos( angle*M_PI/32768.0f );
};

float Sin( float angle ) {
  return (float)sin( angle*M_PI/32768.0f );
};

void matrix_ident( MATRIX *mat ) {
	mat->el[0][0] = 1;
	mat->el[1][0] = 0;
	mat->el[2][0] = 0;
	mat->el[3][0] = 0;
	mat->el[0][1] = 0;
	mat->el[1][1] = 1;
	mat->el[2][1] = 0;
	mat->el[3][1] = 0;
	mat->el[0][2] = 0;
	mat->el[1][2] = 0;
	mat->el[2][2] = 1;
	mat->el[3][2] = 0;
	mat->el[0][3] = 0;
	mat->el[1][3] = 0;
	mat->el[2][3] = 0;
	mat->el[3][3] = 1;
};

void matrix_mul ( MATRIX *a,MATRIX *b, MATRIX *d ) {
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

void rotate_z_matrix (float v, MATRIX *m) {
  m->el[0][0]=Cos(v);
  m->el[0][1]=Sin(v);
  m->el[1][0]=-Sin(v);
  m->el[1][1]=Cos(v);
  m->el[1][2]=m->el[0][2]=m->el[2][0]=m->el[2][1]=0;
  m->el[2][2]=1;
};

void rotate_x_matrix (float v, MATRIX *m) {
  m->el[1][1]=Cos(v);
  m->el[1][2]=Sin(v);
  m->el[2][1]=-Sin(v);
  m->el[2][2]=Cos(v);
  m->el[1][0]=m->el[2][0]=m->el[0][1]=m->el[0][2]=0;
  m->el[0][0]=1;
};

void rotate_y_matrix (float v, MATRIX *m) {
  m->el[0][0]=Cos(v);
  m->el[0][2]=Sin(v);
  m->el[2][0]=-Sin(v);
  m->el[2][2]=Cos(v);
  m->el[2][1]=m->el[0][1]=m->el[1][0]=m->el[1][2]=0;
  m->el[1][1]=1;
};

void build_rotation_matrix( float x, float y, float z, MATRIX *m ) {
  MATRIX xm,ym,zm,tmp;
  rotate_x_matrix (x,&xm);
  rotate_y_matrix (y,&ym);
  rotate_z_matrix (z,&zm);
  matrix_mul( &zm, &ym, &tmp);
  matrix_mul( &tmp, &xm, m );
};

// Totally ripped off from igge...
void matrix_from_vectors ( VECTOR *direction, VECTOR *upvect, MATRIX *m ) {
  VECTOR w;
  VECTOR v,u;
  float lambda;
  v = *direction;
  u = *upvect;

  vector_normalize( &v );

  lambda = vector_dotproduct( &u, &v );
  u.x -= (lambda*v.x);
  u.y -= (lambda*v.y);
  u.z -= (lambda*v.z);
  vector_normalize( &u );

matrix_ident( m );

  vector_crossproduct( &w, &v, &u );
  m->el[0][0] = w.x;
  m->el[0][1] = w.y;
  m->el[0][2] = w.z;
  m->el[0][3] = 0;

  m->el[1][0] = u.x;
  m->el[1][1] = u.y;
  m->el[1][2] = u.z; /// ** todo! **
  m->el[1][3] = 0;

  m->el[2][0] = v.x;
  m->el[2][1] = v.y;
  m->el[2][2] = v.z;
  m->el[2][3] = 0;

  m->el[3][0] = 0;
  m->el[3][1] = 0;
  m->el[3][2] = 0;
  m->el[3][3] = 1;

};

void vector_mul ( MATRIX *m, VECTOR *v, VECTOR *dv ) {
  dv->x = m->el[0][0]*v->x + m->el[0][1]*v->y + m->el[0][2]*v->z;
  dv->y = m->el[1][0]*v->x + m->el[1][1]*v->y + m->el[1][2]*v->z;
  dv->z = m->el[2][0]*v->x + m->el[2][1]*v->y + m->el[2][2]*v->z;
};

void vector_crossproduct( VECTOR *dst, VECTOR *a, VECTOR *b ) {
  dst->x = (a->y*b->z) - (a->z*b->y);
  dst->y = (a->z*b->x) - (a->x*b->z);
  dst->z = (a->x*b->y) - (a->y*b->x);
};

float vector_dotproduct( VECTOR *a, VECTOR *b ) {
  return ( a->x*b->x + a->y*b->y + a->z*b->z );
};

float vector_length( VECTOR *a ) {
  return (float)sqrt( a->x*a->x + a->y*a->y + a->z*a->z );
};

float vector_normalize( VECTOR *a ) {
  float l = (float)sqrt( a->x*a->x + a->y*a->y + a->z*a->z );
  a->x /= l;
  a->y /= l;
  a->z /= l;
  return l;
};

VECTOR vector(float x, float y, float z) {
  VECTOR v;
  v.x = x;
  v.y = y;
  v.z = z;
  return v;
};

void vector_add( VECTOR *dest, VECTOR *src ) {
  dest->x += src->x;
  dest->y += src->y;
  dest->z += src->z;
};

void vector_sub( VECTOR *dest, VECTOR *src ) {
  dest->x -= src->x;
  dest->y -= src->y;
  dest->z -= src->z;
};

void invert_matrix( MATRIX *m, MATRIX *r ) {

  float d00, d01, d02, d03;
  float d10, d11, d12, d13;
  float d20, d21, d22, d23;
  float d30, d31, d32, d33;

  float m00, m01, m02, m03;
  float m10, m11, m12, m13;
  float m20, m21, m22, m23;
  float m30, m31, m32, m33;
  float D;

  m00 = m->el[0][0];  m01 = m->el[0][1];  m02 = m->el[0][2];  m03 = 0;
  m10 = m->el[1][0];  m11 = m->el[1][1];  m12 = m->el[1][2];  m13 = 0;
  m20 = m->el[2][0];  m21 = m->el[2][1];  m22 = m->el[2][2];  m23 = 0;
  m30 = 0;  m31 = 0;  m32 = 0;  m33 = 1;

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

  if (D == 0.0) {
//    printf("Singular matrix in MInvers.\n");
  }

  r->el[0][0] =  d00/D; r->el[0][1] = -d10/D;  r->el[0][2] =  d20/D; r->el[0][3] = 0;
  r->el[1][0] = -d01/D; r->el[1][1] =  d11/D;  r->el[1][2] = -d21/D; r->el[1][3] = 0;
  r->el[2][0] =  d02/D; r->el[2][1] = -d12/D;  r->el[2][2] =  d22/D; r->el[2][3] = 0;
  r->el[3][0] = 0; r->el[3][1] =  0;  r->el[3][2] = 0; r->el[3][3] = 1;
};

void vector_project( VECTOR *src, VECTOR *dest, float fov, float dist ) {

	float z2 = (src->z * (fov/50)) - dist;
	if( z2<0 ) z2 = 0;

	dest->x = (src->x / z2);
	dest->y = (src->y / z2);
	dest->z = z2/100;

};
