#include "almosteverything.h"
#include <stdlib.h>
#include <windows.h>

// -------- boxes stuff

#define C0 x-width, y-height, z-depth
#define C1 x+width, y-height, z-depth
#define C2 x-width, y+height, z-depth
#define C3 x+width, y+height, z-depth
#define C4 x-width, y-height, z+depth
#define C5 x+width, y-height, z+depth
#define C6 x-width, y+height, z+depth
#define C7 x+width, y+height, z+depth

void boxesLineBox( float x, float y, float z, float width, float height, float depth ) {

	glVertex3f( C0 );glVertex3f( C1 );
	glVertex3f( C1 );glVertex3f( C3 );
	glVertex3f( C3 );glVertex3f( C2 );
	glVertex3f( C2 );glVertex3f( C0 );

	glVertex3f( C4 );glVertex3f( C5 );
	glVertex3f( C5 );glVertex3f( C7 );
	glVertex3f( C7 );glVertex3f( C6 );
	glVertex3f( C6 );glVertex3f( C4 );

	glVertex3f( C0 );glVertex3f( C4 );
	glVertex3f( C1 );glVertex3f( C5 );
	glVertex3f( C2 );glVertex3f( C6 );
	glVertex3f( C3 );glVertex3f( C7 );

};

void boxesQuadBox( float x, float y, float z, float width, float height, float depth ) {

	glVertex3f( C0 );glVertex3f( C2 );glVertex3f( C3 );glVertex3f( C1 );
	glVertex3f( C4 );glVertex3f( C5 );glVertex3f( C7 );glVertex3f( C6 );

	glVertex3f( C1 );glVertex3f( C3 );glVertex3f( C7 );glVertex3f( C5 );
	glVertex3f( C2 );glVertex3f( C0 );glVertex3f( C4 );glVertex3f( C6 );

	glVertex3f( C0 );glVertex3f( C1 );glVertex3f( C5 );glVertex3f( C4 );
	glVertex3f( C3 );glVertex3f( C2 );glVertex3f( C6 );glVertex3f( C7 );

};

void boxesBoxMacro( float _x, float _y, float _z,
					float xrot, float yrot, float zrot,
					float width, float height, float depth,
					float fillr, float fillg, float fillb,
					float liner, float lineg, float lineb ) {

	float x = 0;
	float y = 0;
	float z = 0;

	glPushMatrix();

	glTranslatef( _x, _y, _z );
	glRotatef( xrot, 1,0,0 );
	glRotatef( yrot, 0,1,0 );
	glRotatef( zrot, 0,0,1 );

	glEnable( GL_TEXTURE_2D );
	glBegin( GL_QUADS );
	glColor3f( fillr, fillg, fillb );

	glTexCoord2f( 0,1 );glVertex3f( C0 );
	glTexCoord2f( 1,1 );glVertex3f( C2 );
	glTexCoord2f( 1,0 );glVertex3f( C3 );
	glTexCoord2f( 0,0 );glVertex3f( C1 );

	glTexCoord2f( 0,1 );glVertex3f( C4 );
	glTexCoord2f( 1,1 );glVertex3f( C5 );
	glTexCoord2f( 1,0 );glVertex3f( C7 );
	glTexCoord2f( 0,0 );glVertex3f( C6 );

	glTexCoord2f( 0,1 );glVertex3f( C1 );
	glTexCoord2f( 1,1 );glVertex3f( C3 );
	glTexCoord2f( 1,0 );glVertex3f( C7 );
	glTexCoord2f( 0,0 );glVertex3f( C5 );

	glTexCoord2f( 0,1 );glVertex3f( C2 );
	glTexCoord2f( 1,1 );glVertex3f( C0 );
	glTexCoord2f( 1,0 );glVertex3f( C4 );
	glTexCoord2f( 0,0 );glVertex3f( C6 );

	glTexCoord2f( 0,1 );glVertex3f( C0 );
	glTexCoord2f( 1,1 );glVertex3f( C1 );
	glTexCoord2f( 1,0 );glVertex3f( C5 );
	glTexCoord2f( 0,0 );glVertex3f( C4 );

	glTexCoord2f( 0,1 );glVertex3f( C3 );
	glTexCoord2f( 1,1 );glVertex3f( C2 );
	glTexCoord2f( 1,0 );glVertex3f( C6 );
	glTexCoord2f( 0,0 );glVertex3f( C7 );

	glEnd();

	glDisable( GL_TEXTURE_2D );
	glBegin( GL_LINES );
	glColor3f( liner, lineg, lineb );

	glTexCoord2f( 0,0 );

	glVertex3f( C0 );glVertex3f( C1 );
	glVertex3f( C1 );glVertex3f( C3 );
	glVertex3f( C3 );glVertex3f( C2 );
	glVertex3f( C2 );glVertex3f( C0 );

	glVertex3f( C4 );glVertex3f( C5 );
	glVertex3f( C5 );glVertex3f( C7 );
	glVertex3f( C7 );glVertex3f( C6 );
	glVertex3f( C6 );glVertex3f( C4 );

	glVertex3f( C0 );glVertex3f( C4 );
	glVertex3f( C1 );glVertex3f( C5 );
	glVertex3f( C2 );glVertex3f( C6 );
	glVertex3f( C3 );glVertex3f( C7 );

	glEnd();

	glPopMatrix();

};

void boxesQuadMacro( float _x, float _y, float _z,
					float xrot, float yrot, float zrot,
					float width, float height,
					float fillr, float fillg, float fillb,
					float liner, float lineg, float lineb ) {

	float x = 0;
	float y = 0;
	float z = 0;
	float depth = 0;

	glPushMatrix();

	glTranslatef( _x, _y, _z );
	glRotatef( xrot, 1,0,0 );
	glRotatef( yrot, 0,1,0 );
	glRotatef( zrot, 0,0,1 );

	glEnable( GL_TEXTURE_2D );
	glBegin( GL_QUADS );
	glColor3f( fillr, fillg, fillb );

	glTexCoord2f( 0,1 );glVertex3f( C0 );
	glTexCoord2f( 1,1 );glVertex3f( C2 );
	glTexCoord2f( 1,0 );glVertex3f( C3 );
	glTexCoord2f( 0,0 );glVertex3f( C1 );

	glTexCoord2f( 0,1 );glVertex3f( C4 );
	glTexCoord2f( 1,1 );glVertex3f( C5 );
	glTexCoord2f( 1,0 );glVertex3f( C7 );
	glTexCoord2f( 0,0 );glVertex3f( C6 );
/*
	glTexCoord2f( 0,1 );glVertex3f( C1 );
	glTexCoord2f( 1,1 );glVertex3f( C3 );
	glTexCoord2f( 1,0 );glVertex3f( C7 );
	glTexCoord2f( 0,0 );glVertex3f( C5 );

	glTexCoord2f( 0,1 );glVertex3f( C2 );
	glTexCoord2f( 1,1 );glVertex3f( C0 );
	glTexCoord2f( 1,0 );glVertex3f( C4 );
	glTexCoord2f( 0,0 );glVertex3f( C6 );

	glTexCoord2f( 0,1 );glVertex3f( C0 );
	glTexCoord2f( 1,1 );glVertex3f( C1 );
	glTexCoord2f( 1,0 );glVertex3f( C5 );
	glTexCoord2f( 0,0 );glVertex3f( C4 );

	glTexCoord2f( 0,1 );glVertex3f( C3 );
	glTexCoord2f( 1,1 );glVertex3f( C2 );
	glTexCoord2f( 1,0 );glVertex3f( C6 );
	glTexCoord2f( 0,0 );glVertex3f( C7 );
*/
	glEnd();

	glDisable( GL_TEXTURE_2D );
	glBegin( GL_LINES );
	glColor3f( liner, lineg, lineb );

	glTexCoord2f( 0,0 );

	glVertex3f( C0 );glVertex3f( C1 );
	glVertex3f( C1 );glVertex3f( C3 );
	glVertex3f( C3 );glVertex3f( C2 );
	glVertex3f( C2 );glVertex3f( C0 );
/*
	glVertex3f( C4 );glVertex3f( C5 );
	glVertex3f( C5 );glVertex3f( C7 );
	glVertex3f( C7 );glVertex3f( C6 );
	glVertex3f( C6 );glVertex3f( C4 );

	glVertex3f( C0 );glVertex3f( C4 );
	glVertex3f( C1 );glVertex3f( C5 );
	glVertex3f( C2 );glVertex3f( C6 );
	glVertex3f( C3 );glVertex3f( C7 );
*/
	glEnd();

	glPopMatrix();

};
