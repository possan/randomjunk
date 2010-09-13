//
// glAss startup code.
//

// #include <minifmod.h>
#include "almosteverything.h"
#include "parts.h"
#include "images.h"
// #include "resource.h"
#include <stdio.h>

long StartupFlags = 0;
/*
typedef struct 
{
//	int length;
	int pos;
	void *data;
} MEMFILE;

#ifdef DEBUG

unsigned int fileopen(char *name)
{
	return (unsigned int)fopen(name, "rb");
}

void fileclose(unsigned int handle)
{
	fclose((FILE *)handle);
}

int fileread(void *buffer, int size, unsigned int handle)
{
	return fread(buffer, 1, size, (FILE *)handle);
}

void fileseek(unsigned int handle, int pos, signed char mode)
{
	fseek((FILE *)handle, pos, mode);
}

int filetell(unsigned int handle)
{
	return ftell((FILE *)handle);
}

#else 

unsigned int memopen(char *name)
{
//	FILE *fp;
	MEMFILE *memfile;
	memfile = (MEMFILE *)GlobalAlloc( MEM_COMMIT, sizeof(MEMFILE) );
//	memfile->length = 3000000;
	memfile->data = (unsigned char *)&intromusic;
	memfile->pos = 0;
	return (unsigned int)memfile;
}

void memclose(unsigned int handle)
{
	MEMFILE *memfile = (MEMFILE *)handle;
	GlobalFree(memfile);
}

int memread(void *buffer, int size, unsigned int handle)
{
	MEMFILE *memfile = (MEMFILE *)handle;

	memcpy(buffer, (char *)memfile->data+memfile->pos, size);
	memfile->pos += size;
	return size;
}

void memseek(unsigned int handle, int pos, signed char mode)
{
	MEMFILE *memfile = (MEMFILE *)handle;

	if (mode == SEEK_SET) 
		memfile->pos = pos;
	else if (mode == SEEK_CUR) 
		memfile->pos += pos;
//	else if (mode == SEEK_END)
//		memfile->pos = memfile->length;
}

int memtell(unsigned int handle)
{
	MEMFILE *memfile = (MEMFILE *)handle;
	return memfile->pos;
}

#endif
*/

/*
BOOL APIENTRY StartupDialog( HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam ) {

	switch( uMsg ) {
	
		case WM_INITDIALOG:
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"160 x 120 :)" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"320 x 240" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"400 x 300" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"512 x 384" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"640 x 480" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"800 x 600" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"1024 x 768" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"1152 x 864" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"1280 x 720" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"1280 x 1024" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_ADDSTRING, 0, (LPARAM)(LPCSTR)"1600 x 1200 *gah*" );
			SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_SETCURSEL, 5, 0 );
#ifdef DEBUG
			CheckDlgButton( hWnd, IDC_FULLSCREEN, 0 );
#else
			CheckDlgButton( hWnd, IDC_FULLSCREEN, 1 );
#endif
			CheckDlgButton( hWnd, IDC_MUSIC, 1 );
			break;

		case WM_COMMAND:
			switch( LOWORD(wParam) ) {
				
				case IDOK: 
					{
						int r = SendDlgItemMessage( hWnd, IDC_RESOLUTION, LB_GETCURSEL, 0, 0 );
						StartupFlags = 1<<r;
						if( !IsDlgButtonChecked( hWnd, IDC_FULLSCREEN ) ) StartupFlags |= STARTUP_WINDOWED;
						if( IsDlgButtonChecked( hWnd, IDC_MUSIC ) ) StartupFlags |= STARTUP_MUSIC;
						EndDialog( hWnd, FALSE );
					};
					break;

				case IDCANCEL:
					StartupFlags = 0;
					EndDialog( hWnd, FALSE );
					break;

			};
			break;
		//case WM_
		default:
			//return DefDlgProc( hWnd, uMsg, wParam, lParam );
			break;
	};

	return FALSE;
};
*/

#define UPLOADMACRO( __id, __var )\
	glaUploadGif( __id, (unsigned char *)&__var, 1 );

void upload_images() {
	
	UPLOADMACRO( GIF_FLARE, gif_flare );
	UPLOADMACRO( GIF_PSIKORP2, gif_psikorp2 );
//	UPLOADMACRO( GIF_FLOWER, gif_flower );
	UPLOADMACRO( GIF_GRID, gif_grid );
//	UPLOADMACRO( GIF_PSIBAND, gif_psiband );
	UPLOADMACRO( GIF_ROST, gif_rost );
//	UPLOADMACRO( GIF_LANDSCAPE, gif_landscape );
	UPLOADMACRO( GIF_CLOUDS, gif_clouds );
	UPLOADMACRO( GIF_PSIKORP3, gif_psikorp3 );
	UPLOADMACRO( GIF_TITLE, gif_title );
//	UPLOADMACRO( GIF_FULL, gif_full );
//	UPLOADMACRO( GIF_TWISTER, gif_twister );
	UPLOADMACRO( GIF_TWISTER2, gif_twister2 );
//	UPLOADMACRO( GIF_SYMBOLER, gif_symboler );
//	UPLOADMACRO( GIF_FACES, gif_faces );
//	UPLOADMACRO( GIF_KROM, gif_krom );
	UPLOADMACRO( GIF_PSIKORP4, gif_psikorp4 );
	UPLOADMACRO( GIF_GREEN, gif_green );
	UPLOADMACRO( GIF_SILU, gif_silu );
	UPLOADMACRO( GIF_NAMES, gif_names );
	 
};

void Error( char *string ) {
	/*
	//exit(0);
//#ifdef _DEBUG
	char dum[1024];
	wsprintf( dum, "error %d (lasterror)\n%s\n", GetLastError(), string );
	MessageBox( 0, dum, "ERROR", MB_OK );
//#endif
	ExitProcess(0);
*/
};




void intro_init()
{
	
	_pd = (float *)malloc( 150*40*sizeof(float) );
	_pu = (float *)malloc( 150*40*sizeof(float) );
	_pv = (float *)malloc( 150*40*sizeof(float) );
	_pu2 = (float *)malloc( 150*40*sizeof(float) );
	_pv2 = (float *)malloc( 150*40*sizeof(float) );

	glInitImmediateBuffers();
	
	
	// undantag...
	UPLOADMACRO( GIF_FONT, gif_font );
	
	p_loading_draw( 0, 16 );
	
	//		Sleep(5000);
	
#ifndef NOMUSIC
	//		if( StartupFlags & STARTUP_MUSIC ) mmp_loadmodule(	(unsigned char *)&intromusic );
#endif
	
	event_init();
	
#ifndef NOPARTS
	p_loading_draw( 1, 16 );	
	upload_images();
	
	p_loading_draw( 5, 16 );	
	p_cubes_init();
	
	p_loading_draw( 9, 16 );	
	p_greetings_init();
	
	p_loading_draw( 12, 16 );	
	p_klask_init();
	
	p_loading_draw( 15, 16 );
#endif
	
	// initeringen kalas, glad pÂsk...
	
#ifndef NOMUSIC
//	if( StartupFlags & STARTUP_MUSIC ) 
	{
		
#ifdef USEFMOD
		//mmp_start(); else mmp_startnosound();
#ifdef DEBUG
		FSOUND_File_SetCallbacks(fileopen, fileclose, fileread, fileseek, filetell);
#else
		FSOUND_File_SetCallbacks(memopen, memclose, memread, memseek, memtell);
#endif
		
		// if (!FSOUND_Init(44100, 0)) Error( "Couldn't initialize soundcard." );
		
#ifdef DEBUG
		mod = FMUSIC_LoadSong("modul.xm", NULL);// sampleloadcallback);
#else
		mod = FMUSIC_LoadSong(NULL, NULL);// sampleloadcallback);
#endif
		if (!mod) Error( "Couldn't load module." );
		
#endif
	};
#endif
	
// #ifndef NOPARTS
//	Sleep( 100 );
	glaCls(0.33f);
	
	// F÷RSTA TEXTEN I INTROT	
	event_register(		5,		5.2f,	p_tunnel_run,			1		);
	event_register(		5.1f,	5.3f,	p_wirelandscape_run,	0		);
	event_register(		5.2f,	5.4f,	p_sphere_run,			0		);
	event_register(		2,		5.5f,	p_fulintro_run,			0		);
	
	// ANDRA TEXTEN I INTROT
	event_register(		9,		9.2f,	p_cubes_run,			0		);
	event_register(		9.1f,	9.3f,	p_psyk_run,				0		);
	event_register(		9.2f,	9.4f,	p_twist3d_run,			0		);
	event_register(		6,		9.5f,	p_fulintro_run,			1		);
	
	// TREDJE TEXTEN I INTROT
	event_register(		13,		13.2f,	p_twist3d_run,			0		);
	event_register(		13.1f,	13.3f,	p_psyk_run,				0		);
	event_register(		13.2f,	13.4f,	p_tunnel_run,			1		);
	event_register(		10,		13.5f,	p_fulintro_run,			2		);
	
	// FLIMMER I INTROT
	event_register(		1,		13.7f,	p_static_run,			256		);
	
	// FLASH ≈ SEN 64 SNURRA
	event_register(		14,		15,		p_whiteflash_run,		0		);
	event_register(		14,		29,		p_wirelandscape_run,	0		);
	
	// FLASH ≈ HANZON+PSYKSNURR (MUSIKEN KOMMER IG≈NG)
	event_register(		29,		30,		p_whiteflash_run,		0		);
	event_register(		29,		42,		p_psyk_run,				0		);
	event_register(		41,		58,		p_title_run,			3		);
	event_register(		29,		34,		p_hanzon_run,			0		);
	
	// V≈RA NAMN
	event_register(		32,		35,		p_name_run,				0		);
	event_register(		36,		39,		p_name_run,				1		);
	
	// TWISTERN SNURRAR IN... B≈DA TV≈ (2D OCH 3D)
	event_register(		42,		58,		p_twist3d_run,			0		);
	event_register(		42,		43,		p_whiteflash_run,		0		);
	event_register(		39,		52,		p_twister_run,			0		);
	
	// KUBERNA (MUSIKEN LUGNAR NER SIG)
	event_register(		58,		79,		p_cubes_run,			0		);
	event_register(		58,		59,		p_whiteflash_run,		0		);
	
	// TUNNELN EFTER≈T, MED BLOBSPHERE
	event_register(		79,		80,		p_whiteflash_run,		0		);
	event_register(		79,		85,		p_tunnel_run,			512		);
	event_register(		79,		85,		p_sphere_run,			0		);
	
	// FSOL PSYK
	event_register(		85,		141,	p_klask_run,			264		);
	
	// ÷VERG≈R I GREETS, SOM ÷VERG≈R I TUNNEL
	event_register(		85,		128,	p_greetings_run,		0		);
	event_register(		85,		86,		p_whiteflash_run,		0		);
	event_register(		100,	141,	p_tunnel_run,			512		);
	
	// TUNNELN ÷VERG≈R I '64' PLUS MASSOR AV EFFEKTER, COLOR DODGE'AT
	event_register(		114,	124.0f,	p_wirelandscape_run,	0		);
	event_register(		114,	124.0f,	p_psyk_run,				2		);
	event_register(		114,	115,	p_whiteflash_run,		0		);
	//		event_register(		125,	126,	p_whiteflash_run,		0		);
	
	// LUGNARE MUSIK, EFTER UPPLADDNINGEN, BYT TILL FLUM MED FLASH
	event_register(		124.0f,	141,	p_aftershit_run,		0		);
	event_register(		138.5f,	141,	p_fadeblack_run,		0		);
	
//	glaReset();
	
//	if( StartupFlags & STARTUP_MUSIC )
	{
#ifdef USEFMOD
		FMUSIC_PlaySong(mod);
#endif
	}
}

void intro_frame(float t)
{	
	glaDefaultProjection();
	glaCls( 0.33f );
	event_run( t, 0 );
//	glaBlit();
}

void intro_free()
{	
	
	glFreeImmediateBuffers();
	
#ifndef NOMUSIC
//	if( StartupFlags & STARTUP_MUSIC ) 
	{
#ifdef USEFMOD
		FMUSIC_FreeSong(mod);
#endif
	};
#endif
	event_free();
}


/*
int __stdcall WinMain( HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nShowCmd ) {


// MessageBox( 0, "hej!", "hopp!", MB_OK );
	FMUSIC_MODULE *mod;

	StartupFlags = 0;//STARTUP_MUSIC;

	DialogBox( hInstance, MAKEINTRESOURCE(IDD_DIALOG1), 0, (DLGPROC)StartupDialog );

	if( StartupFlags ) {

		//glaStartup( StartupFlags, 640, 480, 32 );

		unsigned int w, h;
		w = 640; 
		h = 480;
		if( StartupFlags & STARTUP_160X120 ) { w = 160; h = 120; };
		if( StartupFlags & STARTUP_320X240 ) { w = 320; h = 240; };
		if( StartupFlags & STARTUP_400X300 ) { w = 400; h = 300; };
		if( StartupFlags & STARTUP_512X384 ) { w = 512; h = 384; };
		if( StartupFlags & STARTUP_800X600 ) { w = 800; h = 600; };
		if( StartupFlags & STARTUP_1024X768 ) { w = 1024; h = 768; };
		if( StartupFlags & STARTUP_1152X864 ) { w = 1152; h = 864; };
		if( StartupFlags & STARTUP_1280X720 ) { w = 1280; h = 720; };
		if( StartupFlags & STARTUP_1280X1024 ) { w = 1280; h = 1024; };
		if( StartupFlags & STARTUP_1600X1200 ) { w = 1600; h = 1200; };

		glaStartup( !(StartupFlags & STARTUP_WINDOWED), w, h, 32 );

		//if( StartupFlags & STARTUP_MUSIC ) mmp_init();
 	//	glaUploadGif( GLA_FONTS, (unsigned char *)&gif_font, 0x00112233 );


		float t;
		do {
		} while( !glaExit() && t<142 );
#endif
		glaShutdown();

	};	return 0;
};
 
 */



GLfloat *vbVerts = NULL;
GLfloat *vbColors = NULL;
GLfloat *vbTex = NULL;
GLfloat *vbTempVerts = NULL;
GLfloat *vbTempColors = NULL;
GLfloat *vbTempTex = NULL;
int maxpoints =0;
int lastbeginmode = 0;
int vbpos = 0;
int vbcounter = 0;
int tempvbcounter = 0;
int vertindex = 0;
int colorindex= 0;
int texindex = 0;
int tempvertindex = 0;
int tempcolorindex= 0;
int temptexindex = 0;
GLfloat lastcolor_r;
GLfloat lastcolor_g;
GLfloat lastcolor_b;
GLfloat lastcolor_a;
GLfloat lasttex_u;
GLfloat lasttex_v;


void glInitImmediateBuffers()
{
	maxpoints = 100000;
	vbVerts = (GLfloat*)malloc(sizeof(GLfloat) * 3 * maxpoints);
	vbColors = (GLfloat*)malloc(sizeof(GLfloat) * 4 * maxpoints);
	vbTex = (GLfloat*)malloc(sizeof(GLfloat) * 2 * maxpoints);
	vbTempVerts = (GLfloat*)malloc(sizeof(GLfloat) * 3 * 10);
	vbTempColors = (GLfloat*)malloc(sizeof(GLfloat) * 4 * 10);
	vbTempTex = (GLfloat*)malloc(sizeof(GLfloat) * 2 * 10);
}

void glFreeImmediateBuffers()
{
	free( vbVerts );
	free( vbColors );
	free( vbTex );
	free( vbTempVerts );
	free( vbTempColors );
	free( vbTempTex );
}

void glBegin( int beginmode )
{
	lastbeginmode = beginmode;
	vbcounter = 0;
	vertindex = 0;
	texindex = 0;
	colorindex = 0;
	tempvertindex = 0;
	temptexindex = 0;
	tempcolorindex = 0;
}

void glTexCoord2f( float u, float v )
{
	lasttex_u = u;
	lasttex_v = v;
}

void glColor3f( float r, float g, float b)
{
	glColor4f( r, g, b, 1.0f );
}

void glColor4f( float r, float g, float b, float a)
{
	lastcolor_r = r;
	lastcolor_g = g;
	lastcolor_b = b;
	lastcolor_a = a;
}

void addTempVertex(int localindex)
{
	for( int i=0; i<2; i++ )
		vbTex[ texindex++ ] = vbTempTex[ localindex*2 + i ];
	
	for( int i=0; i<4; i++ )
		vbColors[ colorindex++ ] = vbTempColors[ localindex*4 + i ];

	for( int i=0; i<3; i++ )
		vbVerts[ vertindex++ ] = vbTempVerts[ localindex*3 + i ];
	
	vbcounter ++;
}

void glVertex3f( float x, float y, float z)
{
	vbTempTex[ temptexindex++ ] = lasttex_u;
	vbTempTex[ temptexindex++ ] = lasttex_v;
	vbTempColors[ tempcolorindex++ ] = lastcolor_r;
	vbTempColors[ tempcolorindex++ ] = lastcolor_g;
	vbTempColors[ tempcolorindex++ ] = lastcolor_b;
	vbTempColors[ tempcolorindex++ ] = lastcolor_a;
	vbTempVerts[ tempvertindex++ ] = x;
	vbTempVerts[ tempvertindex++ ] = y;
	vbTempVerts[ tempvertindex++ ] = z;
	
	int reset = 0;

	tempvbcounter ++;
	
	switch( lastbeginmode )
	{
		case GL_QUADS:
		{
			if( tempvbcounter == 4 )
			{
				addTempVertex( 0 );
				addTempVertex( 1 );
				addTempVertex( 3 );
				addTempVertex( 1 );
				addTempVertex( 2 );
				addTempVertex( 3 );				
				reset = 1;
			}
		}
		break;
			
		case GL_TRIANGLES:
		{
			if( tempvbcounter == 3 )
			{
				addTempVertex( 0 );
				addTempVertex( 1 );
				addTempVertex( 2 );
				reset = 1;
			}
		}
		break;
			
		default:
		{
			reset = 1;
		}
		break;
	}
	
	if( reset == 1 )
	{
		tempvbcounter = 0;
		tempvertindex = 0;
		temptexindex = 0;
		tempcolorindex = 0;
	}
}

void glEnd()
{
	glVertexPointer(3, GL_FLOAT, 0, vbVerts);
	glColorPointer(4, GL_FLOAT, 0, vbColors);
	glTexCoordPointer(2, GL_FLOAT, 0, vbTex);
	
	glEnableClientState(GL_COLOR_ARRAY);
	glEnableClientState(GL_VERTEX_ARRAY);
	
	if( lastbeginmode == GL_QUADS ||
		lastbeginmode == GL_TRIANGLES )
	{
		glDrawArrays(GL_TRIANGLES, 0, vbcounter );	
//		glDrawArrays(GL_LINES, 0, vbcounter );	
	}
	
	glDisableClientState(GL_COLOR_ARRAY);
	glDisableClientState(GL_VERTEX_ARRAY);
}
/*
void gluPerspective( float fovy, float ratio, float near, float far )
{
	GLfloat top = near * tan(fovy * M_PI/360.);
	GLfloat bottom = -top;
	GLfloat right = top * ratio;
	GLfloat left = -right;
	 
	glFrustum(left, right, bottom, top, near, far);
	
} */

void CrossProd(float x1, float y1, float z1, float x2, float y2, float z2, float *res)
{
	res[0] = y1*z2 - y2*z1;
	res[1] = x2*z1 - x1*z2;
	res[2] = x1*y2 - x2*y1;
} 

void gluLookAtX(
	float eyeX, float eyeY, float eyeZ, 
	float lookAtX, float lookAtY, float lookAtZ, 
	float upX, float upY, float upZ)
{
	// i am not using here proper implementation for vectors.
	// if you want, you can replace the arrays with your own
	// vector types
	float f[3];
	
	// calculating the viewing vector
	f[0] = lookAtX - eyeX;
	f[1] = lookAtY - eyeY;
	f[2] = lookAtZ - eyeZ;
	
	float fMag, upMag;
	fMag = sqrt( f[0]*f[0] + f[1]*f[1] + f[2]*f[2]);
	upMag = sqrt( upX*upX + upY*upY + upZ*upZ);
	
	// normalizing the viewing vector
	if( fMag != 0)
	{
		f[0] = f[0]/fMag;
		f[1] = f[1]/fMag;
		f[2] = f[2]/fMag;
	}
	
	// normalising the up vector. no need for this here if you have your
	// up vector already normalised, which is mostly the case.
	if( upMag != 0 )
	{
		upX = upX/upMag;
		upY = upY/upMag;
		upZ = upZ/upMag;
	}
	
	float s[3], u[3];
	
	CrossProd(f[0], f[1], f[2], upX, upY, upZ, (float*)&s);
	CrossProd(s[0], s[1], s[2], f[0], f[1], f[2], (float*)&u);
	
	float M[]=
	{
		s[0], u[0], -f[0], 0,
		s[1], u[1], -f[1], 0,
		s[2], u[2], -f[2], 0,
		0, 0, 0, 1
	};
	
	glMultMatrixf( M );
	glTranslatef( -eyeX, -eyeY, -eyeZ );

}


void gluLookAt(float eyex, float eyey, float eyez,
		  float centerx, float centery, float centerz,
		  float upx, float upy, float upz)
{
	float m[16];
	float x[3], y[3], z[3];
	float mag;
	
	/* Make rotation matrix */
	
	/* Z vector */
	z[0] = eyex - centerx;
	z[1] = eyey - centery;
	z[2] = eyez - centerz;
	mag = sqrt(z[0] * z[0] + z[1] * z[1] + z[2] * z[2]);
	if (mag) {			/* mpichler, 19950515 */
		z[0] /= mag;
		z[1] /= mag;
		z[2] /= mag;
	}
	
	/* Y vector */
	y[0] = upx;
	y[1] = upy;
	y[2] = upz;
	
	/* X vector = Y cross Z */
	x[0] = y[1] * z[2] - y[2] * z[1];
	x[1] = -y[0] * z[2] + y[2] * z[0];
	x[2] = y[0] * z[1] - y[1] * z[0];
	
	/* Recompute Y = Z cross X */
	y[0] = z[1] * x[2] - z[2] * x[1];
	y[1] = -z[0] * x[2] + z[2] * x[0];
	y[2] = z[0] * x[1] - z[1] * x[0];
	
	/* mpichler, 19950515 */
	/* cross product gives area of parallelogram, which is < 1.0 for
	 * non-perpendicular unit-length vectors; so normalize x, y here
	 */
	
	mag = sqrt(x[0] * x[0] + x[1] * x[1] + x[2] * x[2]);
	if (mag) {
		x[0] /= mag;
		x[1] /= mag;
		x[2] /= mag;
	}
	
	mag = sqrt(y[0] * y[0] + y[1] * y[1] + y[2] * y[2]);
	if (mag) {
		y[0] /= mag;
		y[1] /= mag;
		y[2] /= mag;
	}
	
#define M(row,col)  m[col*4+row]
	M(0, 0) = x[0];
	M(0, 1) = x[1];
	M(0, 2) = x[2];
	M(0, 3) = 0.0;
	M(1, 0) = y[0];
	M(1, 1) = y[1];
	M(1, 2) = y[2];
	M(1, 3) = 0.0;
	M(2, 0) = z[0];
	M(2, 1) = z[1];
	M(2, 2) = z[2];
	M(2, 3) = 0.0;
	M(3, 0) = 0.0;
	M(3, 1) = 0.0;
	M(3, 2) = 0.0;
	M(3, 3) = 1.0;
#undef M
	glMultMatrixf(m);
	
	/* Translate Eye to Origin */
	glTranslatef(-eyex, -eyey, -eyez);
	
}


static void
frustum(float left, float right,
        float bottom, float top, 
        float nearval, float farval)
{
	float x, y, a, b, c, d;
	float m[16];
	

	x = (2.0 * nearval) / (right - left);
	y = (2.0 * nearval) / (top - bottom);
	a = (right + left) / (right - left);
	b = (top + bottom) / (top - bottom);
	c = -(farval + nearval) / ( farval - nearval);
	d = -(2.0 * farval * nearval) / (farval - nearval);
	
#define M(row,col)  m[col*4+row]
	M(0,0) = x;     M(0,1) = 0.0F;  M(0,2) = a;      M(0,3) = 0.0F;
	M(1,0) = 0.0F;  M(1,1) = y;     M(1,2) = b;      M(1,3) = 0.0F;
	M(2,0) = 0.0F;  M(2,1) = 0.0F;  M(2,2) = c;      M(2,3) = d;
	M(3,0) = 0.0F;  M(3,1) = 0.0F;  M(3,2) = -1.0F;  M(3,3) = 0.0F;
#undef M
	
	glMultMatrixf(m);
}


void gluPerspective(float fovy, float aspect, float zNear, float zFar)
{
	float xmin, xmax, ymin, ymax;
	if( zNear < 0.001f )
		zNear = 0.001f;
	
	ymax = zNear * tan(fovy * M_PI / 360.0);
	ymin = -ymax;
	xmin = ymin * aspect;
	xmax = ymax * aspect;
	
	/* don't call glFrustum() because of error semantics (covglu) */
	frustum(xmin, xmax, ymin, ymax, zNear, zFar);
}





void glOrtho( float left, float right, float top, float bottom, float nearz, float farz )
{
	if( nearz < 0.001f )
		nearz = 0.001f;

	glOrthof( left, right, top, bottom, nearz, farz );
//	glRotatef( 90, 0, 0, 1 );
}

void glFrustum( float left, float right, float top, float bottom, float nearz, float farz )
{
	if( nearz < 0.001f )
		nearz = 0.001f;

	glFrustumf( left, right, top, bottom, nearz, farz );
//	glRotatef( 90, 0, 0, 1 );
}

void glClearDepth( float farz )
{
	glClearDepthf( farz );
}




