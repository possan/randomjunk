//
// all glAss gla* routines (utilities for the gl system)
//
#include "..\almosteverything.h"

static HWND  hwnd;
static HGLRC glRC;
static HDC   hDC;
static BOOL  done = 0;
static BOOL  ready = 0;
static int   g_kbhit = 0;
static int   g_getch = 0;
static DWORD time1;

int glaExit() {
	return g_kbhit;
};

void glaLookAt( float *eyelocation, float *lookat, float *upvector ) {

/*
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

	vector_crossproduct( &w, &v, &u );
	m->el[0][0] = w.x;
	m->el[0][1] = w.y;
	m->el[0][2] = w.z;

	m->el[1][0] = u.x;
	m->el[1][1] = u.y;
	m->el[1][2] = u.z;
	m->el[2][0] = v.x; 
	m->el[2][1] = v.y;
	m->el[2][2] = v.z;
	*/
	
};

HGLRC setupGL( int bpp ) {
    static PIXELFORMATDESCRIPTOR pfd = {
        sizeof(PIXELFORMATDESCRIPTOR),  // size of this pfd
        1,                              // version number
        PFD_DRAW_TO_WINDOW              // support window
        |  PFD_SUPPORT_OPENGL           // support OpenGL
        |  PFD_DOUBLEBUFFER ,           // double buffered
        PFD_TYPE_RGBA,                  // RGBA type
        bpp,                             // 16-bit color depth
        0, 0, 
		0, 0, 
		0, 0,							// color bits ignored
        0,                             // no alpha buffer
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

LONG WINAPI MainWndProc ( HWND    hWnd,
                          UINT    uMsg,
                          WPARAM  wParam,
                          LPARAM  lParam ) {
    LONG    lRet = 1;

    switch ( uMsg ) {
    case WM_CREATE:
        hDC  = GetDC( hWnd );
        glRC = setupGL( lParam );
        ready = 1;
        if ( !glRC ) {
            MessageBox( 0, "Failed to Create OpenGL Rendering Context.", "GLDrv", MB_ICONERROR );
            DestroyWindow( hWnd );
        }
        break;
    case WM_SIZE:
        break;
    case WM_CLOSE:
        DestroyWindow( hWnd );
        break;
    case WM_DESTROY:
        PostQuitMessage( 0 );
    case WM_QUIT:
        done = TRUE;
        break;
    case WM_MOUSEMOVE:
        break;

    case WM_KEYDOWN:
        g_kbhit = 1;
        g_getch = wParam;
        break;

    default:
        lRet = DefWindowProc (hWnd, uMsg, wParam, lParam);
        break;
    }
    return lRet;
}

void glaStartup( int fullscreen, int w, int h, int bpp ) {

  WNDCLASS   wc;
  DEVMODE devmode;
  BOOL modeswitch;
	int i;
	LONG result;

/*
	for( i=0; i<MAXTEXTURES; i++ ) {
		texDB[i].width = 0;
		texDB[i].height = 0;
		texDB[i].bitmap = NULL;
		p_vertices[i] = (tVERTEX *)GlobalAlloc( MEM_COMMIT, sizeof(float)*MAXVERTICES );
	};*/


//	forcewire = StartupFlags & STARTUP_FORCEWIRE;

    done      = FALSE;

    HINSTANCE hInstance = (HINSTANCE)GetModuleHandle(NULL);

    wc.style         = 0;
    wc.lpfnWndProc   = (WNDPROC)MainWndProc;
    wc.cbClsExtra    = 0;
    wc.cbWndExtra    = 0;
    wc.hInstance     = hInstance;
    wc.hIcon         = NULL;
    wc.hCursor       = LoadCursor( NULL, IDC_ARROW );
    wc.hbrBackground = (HBRUSH)(COLOR_WINDOW+1);
    wc.lpszMenuName  = "GLDrv";
    wc.lpszClassName = "GLDrv";


    if ( !RegisterClass( &wc ) ) {
        MessageBox( 0, "Couldn't Register Window Class", "GLDrvdow", MB_ICONERROR );
    }

    if( !fullscreen ) {
		int ew = GetSystemMetrics( SM_CXDLGFRAME )*2;
		int eh = GetSystemMetrics( SM_CYDLGFRAME )*2
			   + GetSystemMetrics( SM_CYCAPTION );
    hwnd = CreateWindow ("GLDrv",
						"GLDrv",
						WS_BORDER |
						WS_CLIPSIBLINGS |
						WS_CLIPCHILDREN,
						90, 90,
						w+ew, h+eh,
						NULL,
						NULL,
						hInstance,
						(LPVOID)bpp);
    } else {
    hwnd = CreateWindow ("GLDrv",
						"GLDrv",
						WS_POPUP |
						WS_MAXIMIZE |
						WS_CLIPSIBLINGS |
						WS_CLIPCHILDREN,
						0, 0,
						w, h,
						NULL,
						NULL,
						hInstance,
						(LPVOID)bpp);
    };
    
    if (!hwnd) {
        MessageBox( 0, "Couldn't Create Window", "GLDrvdow", MB_ICONERROR);
    }

    ShowWindow( hwnd, SW_SHOWDEFAULT );
	UpdateWindow(hwnd);
	SetFocus (hwnd);

    if( fullscreen ) {
		devmode.dmBitsPerPel=0;
		i=0;
		do
		{
			modeswitch = EnumDisplaySettings(NULL, i, &devmode);
			i++;
		}
		while((devmode.dmBitsPerPel!=(unsigned int)bpp) &&
				(devmode.dmPelsWidth != (unsigned int)w) &&
					(devmode.dmPelsHeight != (unsigned int)h) &&
						(i<250) );

		if(!modeswitch)
		{
			MessageBox(0, "Fullscreen 16-bit not supported", "Init", MB_ICONERROR);
			return;
		}
		else
		{
			result = ChangeDisplaySettings(&devmode, 0);
			if(result!=DISP_CHANGE_SUCCESSFUL)
			{
				MessageBox(0, "Try the windowed mode instead.", "Fullscreen GL", MB_ICONERROR);
				//Might be running in Windows95, let's try without the hertz change
			/*	devmode.dmBitsPerPel = 24;
				devmode.dmPelsWidth  = w;
				devmode.dmPelsHeight = h;
				devmode.dmFields     = DM_BITSPERPEL | DM_PELSWIDTH | DM_PELSHEIGHT;
				result = ChangeDisplaySettings(&devmode, 0);
				if(result!=DISP_CHANGE_SUCCESSFUL)
				{
					if(result==DISP_CHANGE_RESTART)
						MessageBox(0, "Must restart to get Fullscreen 16-bit", "Init", MB_ICONERROR);
					else if(result==DISP_CHANGE_BADMODE)
						MessageBox(0, "Fullscreen 16-bit not supported", "Init", MB_ICONERROR);
					else if(result==DISP_CHANGE_FAILED)
						MessageBox(0, "Hardware failed to change", "Init", MB_ICONERROR);
					return;
				}*/
			}
		}
    };
 
    ready = 0;

    glViewport(0, 0, w, h);
	glClearDepth( -1000 );

	time1 = GetTickCount();
};

void glaShutdown() {
	DestroyWindow( hwnd );
	ChangeDisplaySettings(NULL, 0);
};

void glaCls() {
	glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
};

long idiot = 0;
long lastblittime = 0;

void glaBlit() {

	if( hDC == NULL || hwnd == NULL ) return;

	glFinish();
	glFlush();
	SwapBuffers( hDC );
	
	DWORD tix = GetTickCount() - lastblittime;
	float ftix = 1000.0f / (float)tix;// / 1000.0f;

	float rb = glaRelBeat();

	char str[40];
	float fps = ftix;
	wsprintf( str, "GL ~%d fps, beat ^ %d", (long)fps, (int)rb );
	SetWindowText( hwnd, str );
	idiot ++;

	MSG msg;
	if( PeekMessage( &msg, 0, 0, 0, PM_NOREMOVE ) ) {
		GetMessage( &msg, 0, 0, 0 );
		TranslateMessage( &msg );
		DispatchMessage( &msg );
	};

	lastblittime = GetTickCount();
};