//
// new math stuff
//

#ifndef _NEWMATH_H_
#define _NEWMATH_H_

#ifdef __cplusplus
extern "C" {
#endif
    

// #define M_PI 3.14159265358979323846f
#define M_PI2 3.14159265358979323846f*2

typedef struct {
  float x;
  float y;
  float z;
} VECTOR;

typedef struct {
  float el[4][4];
} MATRIX;

//extern float identmatrix[];

extern void matrix_ident( MATRIX *mat );
extern void matrix_mul ( MATRIX *a,MATRIX *b, MATRIX *d );
extern void rotate_z_matrix (float v, MATRIX *m);
extern void rotate_x_matrix (float v, MATRIX *m);
extern void rotate_y_matrix (float v, MATRIX *m);
extern void build_rotation_matrix( float x, float y, float z, MATRIX *m );
extern void matrix_from_vectors ( VECTOR *direction, VECTOR *upvect, MATRIX *m );

extern void vector_mul ( MATRIX *m, VECTOR *v, VECTOR *dv );
extern void vector_crossproduct( VECTOR *dst, VECTOR *a, VECTOR *b );
extern float vector_dotproduct( VECTOR *a, VECTOR *b );
extern float vector_length( VECTOR *a );
extern float vector_normalize( VECTOR *a );
extern void vector_add( VECTOR *dest, VECTOR *src );
extern void vector_sub( VECTOR *dest, VECTOR *src );

extern void vector_project( VECTOR *src, VECTOR *dest, float fov, float dist );
extern void invert_matrix( MATRIX *m, MATRIX *r );
	
#ifdef __cplusplus
}
#endif

#endif
