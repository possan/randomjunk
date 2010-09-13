//
// all glAss gla* routines (utilities for the gl system)
//

#define _SHOWFPS

#include "..\almosteverything.h"

static HWND  hwnd;
static HGLRC glRC;
static HDC   hDC;
static BOOL  done = 0;
static BOOL  ready = 0;
static int   g_kbhit = 0;
static int   g_getch = 0;
static DWORD time1;

HDC		maindc;
HWND	mainwindow;

int glaExit() {
	return g_kbhit;
};

HGLRC setupGL( int bpp ) {
    static PIXELFORMATDESCRIPTOR pfd = {
        sizeof(PIXELFORMATDESCRIPTOR),  // size of this pfd
        1,                              // version number
        PFD_DRAW_TO_WINDOW              // support window
        |  PFD_SUPPORT_OPENGL           // support OpenGL
        |  PFD_DOUBLEBUFFER ,           // double buffered
        PFD_TYPE_RGBA,                  // RGBA type
        32,                             // 16-bit color depth
        0, 0, 0, 0, 0, 0,               // color bits ignored
        16,                             // no alpha buffer
        0,                              // shift bit ignored
        0,                              // no accumulation buffer
        0, 0, 0, 0,                     // accum bits ignored
        16,                             // 16-bit z-buffer      
        0,                              // no stencil buffer
        0,                              // no auxiliary buffer
        PFD_MAIN_PLANE,                 // main layer
        0,                              // reserved
        0, 0, 0                         // layer masks ignored
    };
    int  pixelFormat;
    HGLRC rv = 0;

    pixelFormat = ChoosePixelFormat(hDC, &pfd);
    if ( pixelFormat ) {
        if ( SetPixelFormat(hDC, pixelFormat, &pfd) ) {
            rv = wglCreateContext( hDC );
            if ( rv ) {
                if ( !wglMakeCurrent( hDC, rv ) ) {
                    wglDeleteContext( rv );
                    rv = 0;
                }
            }
        }
    }
    return rv;
}

/* main window procedure */
LONG WINAPI MainWndProc (
    HWND    hWnd,
    UINT    uMsg,
    WPARAM  wParam,
    LPARAM  lParam)
{
    LONG    lRet = 1;
	extern unsigned int uiWheelMessage;

//	if ( uMsg == uiWheelMessage )
//		uMsg = WM_MOUSEWHEEL;

    switch (uMsg)
    {
		case WM_CREATE:
			hDC  = GetDC( hWnd );
			glRC = setupGL( lParam );
			ready = 1;
			if ( !glRC ) {
				DestroyWindow( hWnd );
	            Error( "Failed to Create OpenGL Rendering Context." );           
			}
			SetTimer( hWnd, 1, 1, NULL );
			break;

		case WM_KEYDOWN:
			g_kbhit	= 1;
			break;
/*
		case WM_MOVE:
//			window_x = (int) LOWORD(lParam);
//			window_y = (int) HIWORD(lParam);
//			VID_UpdateWindowStatus ();
			break;
		
		case WM_SYSCHAR:
			// keep Alt-Space from happening
			break;

    	case WM_SIZE:
            break;

   	    case WM_CLOSE:
	        break;
*/
   	    case WM_DESTROY:
        {
//			if (dibwindow)
//				DestroyWindow (dibwindow);

            PostQuitMessage (0);
        }
        break;

    	default:
            /* pass all unhandled messages to DefWindowProc */
            lRet = DefWindowProc (hWnd, uMsg, wParam, lParam);
			break;
    }

    /* return 1 if handled message, 0 if not */
    return lRet;
}

void glaStartup( int fullscreen, unsigned int w, unsigned int h, unsigned int bpp ) {

	WNDCLASS   wc;

    done      = FALSE;

    wc.style         = 0;
    wc.lpfnWndProc   = (WNDPROC)MainWndProc;
    wc.cbClsExtra    = 0;
    wc.cbWndExtra    = 0;
    wc.hInstance     = GetModuleHandle(NULL);
    wc.hIcon         = NULL;//LoadIcon (hInstance, "3dFXTest");
    wc.hCursor       = LoadCursor( NULL, IDC_ARROW );
    wc.hbrBackground = (HBRUSH)(COLOR_WINDOW+1);
    wc.lpszMenuName  = NULL;
    wc.lpszClassName = "GLASS";

    
    if ( !RegisterClass( &wc ) )
		Error( "Couldn't Register Window Class" );

	if( fullscreen ) {

	    hwnd = CreateWindow ("GLASS",
						"glAss | psikorp 2000",
						WS_POPUP,
						0, 0, w, h,
						NULL,
						NULL,
						GetModuleHandle(NULL),
						NULL);

		DEVMODE	devmode;

		int		modenum;
		BOOL	stat;

		// enumerate >8 bpp modes

		modenum = 0;
		do
		{
			stat = EnumDisplaySettings (NULL, modenum, &devmode);

			//
				
			if ((devmode.dmBitsPerPel == 32) &&
				(devmode.dmPelsWidth == w) &&
				(devmode.dmPelsHeight == h) ) {
				devmode.dmFields = DM_BITSPERPEL |
									DM_PELSWIDTH |
									DM_PELSHEIGHT;

				if (ChangeDisplaySettings (&devmode, CDS_TEST | CDS_FULLSCREEN) ==
						DISP_CHANGE_SUCCESSFUL)
				{
					stat = 0;
				};

			}

			modenum++;
		} while (stat);

		ChangeDisplaySettings (&devmode, CDS_FULLSCREEN );

	} else {

		int ws = WS_DLGFRAME | WS_MAXIMIZE | WS_CLIPSIBLINGS | WS_CLIPCHILDREN;

		RECT r;
		r.top = (GetSystemMetrics(SM_CYSCREEN)-h)/2;
		r.left = (GetSystemMetrics(SM_CXSCREEN)-w)/2;
		r.right = r.left + w;
		r.bottom = r.top + h;
		AdjustWindowRectEx( &r, ws, FALSE, 0);

		hwnd = CreateWindow ("GLASS",
							"glAss | psikorp 2000",
							ws,
							r.left, r.top, r.right-r.left, r.bottom-r.top,
							NULL,
							NULL,
							GetModuleHandle(NULL),
							NULL);

	};

	ShowWindow (hwnd, SW_SHOWDEFAULT);
	UpdateWindow (hwnd);

    glViewport(0, 0, w, h);
	glClearDepth( 100 );

	time1 = GetTickCount();
};

void glaShutdown() {
   	HGLRC hRC;
   	HDC	  hDC;

	hRC = wglGetCurrentContext();
   	hDC = wglGetCurrentDC();

	wglMakeCurrent(NULL, NULL);

	if (hRC)
   	    wglDeleteContext(hRC);

//	if (hDC && dibwindow)
//		ReleaseDC(dibwindow, hDC);

//	if (modestate == MS_FULLDIB)
		ChangeDisplaySettings (NULL, 0);

//	if (maindc && dibwindow)
//		ReleaseDC (dibwindow, maindc);
	
//	DestroyWindow( hwnd );
//	ChangeDisplaySettings(NULL, 0);
};

void glaCls( float mb ) {
	if( mb>0 ) {
		glEnable( GL_BLEND );
		glEnable( GL_ALPHA );
		glBlendFunc( GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA );
		glPushMatrix();
		glLoadIdentity();
		glBegin( GL_QUADS );
		glColor4f( 1.0f, 1.0f, 1.0f, mb );
		glVertex3f( -1, -1.0f, 0 );
		glVertex3f(  1, -1.0f, 0 );
		glVertex3f(  1,  1.0f, 0 );
		glVertex3f( -1,  1.0f, 0 );
		glEnd();
		glPopMatrix();
		glDisable( GL_ALPHA );
		glDisable( GL_BLEND );
		glClear( GL_DEPTH_BUFFER_BIT );
	} else {
		glClearColor( 1,1,1,0 );
		glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
	};
};

#ifdef SHOWFPS
long idiot = 0;
long lastblittime = 0;
#endif

void glaBlit() {

	if( hDC == NULL || hwnd == NULL ) return;

	glFinish();
	glFlush();
	SwapBuffers( hDC );

#ifdef SHOWFPS
	DWORD tix = GetTickCount() - lastblittime;
	float ftix = 1000.0f / (float)tix;// / 1000.0f;

	float t = glaTime();

	int a0 = (int)(t*100);
	int a1 = ((int)(t*10000.0f))%1000;

	char str[40];
	float fps = ftix;
	wsprintf( str, "%06d - ~%d fps", (int)a0, (long)fps );
	SetWindowText( hwnd, str );
	idiot ++;
#endif

	MSG msg;
	if( PeekMessage( &msg, 0, 0, 0, PM_NOREMOVE ) ) {
		GetMessage( &msg, 0, 0, 0 );
		TranslateMessage( &msg );
		DispatchMessage( &msg );
	};

#ifdef SHOWFPS
	lastblittime = GetTickCount();
#endif

};

float *_pd;
float *_pu;
float *_pv;
float *_pu2;
float *_pv2;
