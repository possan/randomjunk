// direct draw driver

#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <ddraw.h>
#include "..\common.h"

static int		g_kbhit = 0;
static int		g_getch = 0;

HWND hWnd;
HINSTANCE hInstance;
HDC hDC;
LPDIRECTDRAW lpDD;
HDC hDCBack;
DDSURFACEDESC ddsd;
DDSCAPS ddscaps;
LPDIRECTDRAWSURFACE lpDDSPrimary;
LPDIRECTDRAWSURFACE lpDDSBack;
LPDIRECTDRAWPALETTE lpDDP;
DDBLTFX ddbltfx;

unsigned char *gfx_virtual;
unsigned char *gfx_temp;
unsigned char *gfx_blur_temp;

long gfx_palette[256] = {
 0xFF000000, 0xFF010000, 0xFF010000, 0xFF020100, 0xFF030100, 0xFF040100, 0xFF050200, 0xFF070200, 0xFF080300, 0xFF090300, 0xFF0B0300, 0xFF0C0400, 0xFF0E0400, 0xFF100400, 0xFF120400, 0xFF130400, 0xFF150400, 0xFF160500, 0xFF170500, 0xFF190500, 0xFF1A0600, 0xFF1B0600, 0xFF1D0700, 0xFF1E0700, 0xFF200800, 0xFF210900, 0xFF220900, 0xFF240A00, 0xFF250B00, 0xFF260B00, 0xFF280C00, 0xFF290D00, 0xFF2A0D00, 0xFF2C0E00, 0xFF2D0E00, 0xFF2E0F00, 0xFF2F1000, 0xFF311000, 0xFF321100, 0xFF331100, 0xFF341200, 0xFF351300, 0xFF371300, 0xFF381400, 0xFF391400, 0xFF3A1500, 0xFF3C1600, 0xFF3D1600, 0xFF3E1700, 0xFF3F1700, 0xFF401800, 0xFF411900, 0xFF431900, 0xFF441A00, 0xFF451A00, 0xFF461B00, 0xFF471C00, 0xFF481C00, 0xFF491D00, 0xFF4A1D00, 0xFF4C1E00, 0xFF4D1F00, 0xFF4E1F00, 0xFF4F2000, 0xFF502100, 0xFF512100, 0xFF522200, 0xFF532300, 0xFF542300, 0xFF552400, 0xFF572500, 0xFF582500, 0xFF592600, 0xFF5A2700, 0xFF5B2800, 0xFF5C2800, 0xFF5D2900, 0xFF5E2A00, 0xFF5F2A00, 0xFF602B00, 0xFF612C00, 0xFF622C00, 0xFF632D00, 0xFF652E00, 0xFF662F00, 0xFF673000, 0xFF683100, 0xFF693200, 0xFF6A3200, 0xFF6B3300, 0xFF6C3400, 0xFF6D3500, 0xFF6E3600, 0xFF6F3700, 0xFF703800, 0xFF713800, 0xFF723900, 0xFF733A00, 0xFF743B00, 0xFF763C00, 0xFF773D00, 0xFF783E00, 0xFF793F00, 0xFF7A4000, 0xFF7B4100, 0xFF7C4200, 0xFF7D4300, 0xFF7E4400, 0xFF7F4500, 0xFF804600, 0xFF814700, 0xFF824800, 0xFF834900, 0xFF844A00, 0xFF854B00, 0xFF864C00, 0xFF874D00, 0xFF884E00, 0xFF894F00, 0xFF8A5000, 0xFF8B5100, 0xFF8C5200, 0xFF8D5300, 0xFF8E5400, 0xFF8F5600, 0xFF905600, 0xFF915800, 0xFF935900, 0xFF945A00, 0xFF955B00, 0xFF965C02, 0xFF975D03, 0xFF985E05, 0xFF995F07, 0xFF9A610A, 0xFF9B620C, 0xFF9C640F, 0xFF9D6511, 0xFF9E6612, 0xFF9F6714, 0xFFA06917, 0xFFA16A19, 0xFFA26B1A, 0xFFA36D1C, 0xFFA46E1D, 0xFFA56F1F, 0xFFA67020, 0xFFA77222, 0xFFA77324, 0xFFA87426, 0xFFAA7628, 0xFFAB772A, 0xFFAC792C, 0xFFAD7A2E, 0xFFAE7C2F, 0xFFAF7D31, 0xFFAF7F33, 0xFFB08035, 0xFFB18137, 0xFFB28338, 0xFFB3843A, 0xFFB4863C, 0xFFB5873D, 0xFFB6883F, 0xFFB78A41, 0xFFB88B42, 0xFFB98C44, 0xFFBA8E46, 0xFFBB8F48,
 0xFFBC914A, 0xFFBD924B, 0xFFBE944E, 0xFFBF9550, 0xFFBF9752, 0xFFC09854, 0xFFC19A56, 0xFFC29B58, 0xFFC39C59, 0xFFC49E5B, 0xFFC59F5D, 0xFFC6A15F, 0xFFC7A260, 0xFFC8A363, 0xFFC8A564, 0xFFC9A667, 0xFFCAA868, 0xFFCBA96A, 0xFFCCAA6C, 0xFFCDAC6E, 0xFFCEAD70, 0xFFCFAF73, 0xFFCFB074, 0xFFD0B176, 0xFFD1B378, 0xFFD2B47A, 0xFFD3B57C, 0xFFD4B77D, 0xFFD4B880, 0xFFD5B982, 0xFFD6BB84, 0xFFD7BC85, 0xFFD8BE88, 0xFFD9BF8B, 0xFFD9C08C, 0xFFDAC18F, 0xFFDBC391, 0xFFDCC493, 0xFFDDC695, 0xFFDDC797, 0xFFDEC89A, 0xFFDFCA9B, 0xFFE0CB9D, 0xFFE1CC9F, 0xFFE1CDA1, 0xFFE2CEA3, 0xFFE3CFA5, 0xFFE4D1A7, 0xFFE5D2A9, 0xFFE5D3AC, 0xFFE6D5AE, 0xFFE7D6B0, 0xFFE7D7B2, 0xFFE8D8B5, 0xFFE9DAB7, 0xFFEADBBA, 0xFFEADCBC, 0xFFEBDEBE, 0xFFECDFC0, 0xFFEDE0C2, 0xFFEDE1C5, 0xFFEEE3C7, 0xFFEFE3C9, 0xFFF0E5CB, 0xFFF0E5CC, 0xFFF1E7CF, 0xFFF2E8D0, 0xFFF2E9D3, 0xFFF3EAD6, 0xFFF4EBD8, 0xFFF5ECDA, 0xFFF5EEDC, 0xFFF6EFDE, 0xFFF7F0E1, 0xFFF7F1E4, 0xFFF8F2E5, 0xFFF9F4E8, 0xFFF9F4E9, 0xFFFAF6EC, 0xFFFBF7EE, 0xFFFBF8F0, 0xFFFCF9F3, 0xFFFDFAF5, 0xFFFDFBF8, 0xFFFEFDFA, 0xFFFEFEFC, 0xFFFFFFFF };

LONG WINAPI dd_wndproc( HWND    hWnd,
                          UINT    uMsg,
                          WPARAM  wParam,
                          LPARAM  lParam ) {
    LONG    lRet = 1;

    switch ( uMsg ) {
    case WM_CREATE:
//        hDC  = GetDC( hWnd );
        break;
    case WM_CLOSE:
        DestroyWindow( hWnd );
		g_kbhit = 1;
        break;
    case WM_DESTROY:
        PostQuitMessage( 0 );
    case WM_QUIT:
        break;
    case WM_KEYDOWN:
        g_kbhit = 1;
        //g_getch = wParam;
        break;

    default:
        lRet = DefWindowProc (hWnd, uMsg, wParam, lParam);
        break;
    }
    return lRet;
}

int gfx_init( int forcewindow ) {

	HINSTANCE hInstance;
	WNDCLASS wc;
	DDSCAPS caps;
	int i, res;
	PALETTEENTRY temppal[256];
	unsigned char and_map[256];
	unsigned char xor_map[256];
	HCURSOR tomkursor;

	hInstance = GetModuleHandle( NULL );

  //int cursor_width = GetSystemMetrics(SM_CXCURSOR);
  //int cursor_height = GetSystemMetrics(SM_CYCURSOR);

  // setup cursor bits
  memset(and_map,0xFF,256);
  memset(xor_map,0x00,256);

        // create blank cursor
        tomkursor = CreateCursor( hInstance,0,0,32,32,and_map,xor_map);

    wc.style         = CS_HREDRAW | CS_VREDRAW;
    wc.lpfnWndProc   = (WNDPROC)dd_wndproc;
    wc.cbClsExtra    = 0;
    wc.cbWndExtra    = 0;
    wc.hInstance     = hInstance;
    wc.hIcon         = NULL;
    wc.hCursor       = tomkursor;//LoadCursor( NULL, IDC_ARROW );
    wc.hbrBackground = (HBRUSH)(COLOR_WINDOW+1);
    wc.lpszMenuName  = "DD";
    wc.lpszClassName = "DD";
	
    if ( !RegisterClass( &wc ) ) {
        MessageBox( 0, "Couldn't Register Window Class", "DD", MB_ICONERROR );
		return 0;
    }

	hWnd = CreateWindowEx ( WS_EX_TOPMOST, 
						"DD",
						"DD",
						WS_POPUP,
						0, 0,
						200, 200,
						NULL,
						NULL,
						hInstance,
						NULL);

	ShowWindow( hWnd, SW_SHOWDEFAULT );
	UpdateWindow(hWnd);

	// skapa direct draw objektet

	res = DirectDrawCreate( NULL, &lpDD, NULL );
	if( res != DD_OK ) {
		MessageBox( 0, "Couldn't create direct draw object.", "DD", MB_ICONERROR );
		return 0;
	};

	// switch to fullscreen....
	IDirectDraw_SetCooperativeLevel( lpDD, hWnd, DDSCL_EXCLUSIVE | DDSCL_FULLSCREEN );
	IDirectDraw_SetDisplayMode( lpDD, 640, 480, 8 );

	// skapa primär yta
	ddsd.dwSize = sizeof( ddsd );
	ddsd.dwFlags = DDSD_CAPS | DDSD_BACKBUFFERCOUNT;
	ddsd.ddsCaps.dwCaps = DDSCAPS_PRIMARYSURFACE | DDSCAPS_FLIP | DDSCAPS_COMPLEX | DDSCAPS_VIDEOMEMORY;
	ddsd.dwBackBufferCount = 1;
	res = IDirectDraw_CreateSurface( lpDD, &ddsd, &lpDDSPrimary, NULL );
	if( res != DD_OK ) {
		MessageBox( 0, "couldn't create direct draw surface.", "DD", MB_ICONERROR );
		return 0;
	};

	// hämta sekundär yta (borde funka :)
	caps.dwCaps = DDSCAPS_BACKBUFFER;
	res = IDirectDrawSurface_GetAttachedSurface( lpDDSPrimary, &caps, &lpDDSBack );

	// fixa en palette
	for( i=0; i<256; i++ ) {
		temppal[i].peRed = (gfx_palette[i]>>16)&255;
		temppal[i].peGreen = (gfx_palette[i]>>8)&255;
		temppal[i].peBlue = gfx_palette[i]&255;
		temppal[i].peFlags = 0;
	};
	IDirectDraw_CreatePalette( lpDD, DDPCAPS_8BIT | DDPCAPS_ALLOW256 | DDPCAPS_INITIALIZE, (PALETTEENTRY*)&temppal, &lpDDP, 0 );
	IDirectDrawSurface_SetPalette( lpDDSPrimary, lpDDP );

	gfx_virtual = (unsigned char *)malloc(640*200);
	gfx_temp = (unsigned char *)malloc(640*200);
	gfx_blur_temp = (unsigned char *)malloc(640*200);

	gfx_mb_xbuf1 = (long *)malloc( 4*640 );
	gfx_mb_xbuf2 = (unsigned char *)malloc( 640 );
	gfx_mb_ybuf1 = (long *)malloc( 4*200 );
	gfx_mb_ybuf2 = (unsigned char *)malloc( 200 );

	// löjligt...

	return 1;
};

void gfx_kill() {
	IDirectDraw_Release( lpDDP );
	IDirectDraw_Release( lpDDSPrimary );
	IDirectDraw_Release( lpDD );
	DestroyWindow( hWnd );
	free( gfx_virtual );
	free( gfx_temp );
	free( gfx_blur_temp );
};

void gfx_cls( unsigned char col ) {
	__asm {
		mov edi, gfx_virtual
		mov ecx, 640*200/4
		xor eax, eax
		mov al, col
		shl eax, 8
		mov al, col
		shl eax, 8
		mov al, col
		shl eax, 8
		mov al, col
		rep stosd
	};
};

long frames = 0;

void gfx_blit() {

	MSG msg;
	DDSURFACEDESC desc;
	desc.dwSize = sizeof( DDSURFACEDESC );

	IDirectDrawSurface_Lock( lpDDSBack, 0, &desc, DDLOCK_WAIT, 0 );
	__asm {
		xor ebx, ebx
		xor eax, eax
		mov edi, desc.lpSurface;
		mov ecx, 140*640/4
		rep stosd

		mov esi, gfx_virtual
		mov edx, gfx_temp
		mov ecx, 640*200
	loopfan:
		mov al, byte ptr [esi]
		mov bl, byte ptr [edx]
		add ax, bx
		add ax, bx
		add ax, bx
//		add ax, bx
//		add ax, bx
//		add ax, bx
//		add ax, bx
		shr ax, 2

		mov byte ptr [edx], al
		mov byte ptr [edi], al
		inc esi
		inc edi
		inc edx
		loop loopfan

		xor eax, eax
		mov ecx, 140*640/4
		rep stosd
	};
	IDirectDrawSurface_Unlock( lpDDSBack, desc.lpSurface );

	IDirectDrawSurface_Flip( lpDDSPrimary, 0, DDFLIP_WAIT );

	if( PeekMessage( &msg, 0,0 ,0, PM_NOREMOVE ) ) {
		GetMessage( &msg, 0,0 ,0 );
		DispatchMessage( &msg );
	};
	
//	float fps;
//	char s[50];
//	float secs = misc_gettimer();
//	MSG msg;
//	frames ++;
//	fps = frames / secs;
//	sprintf( s, "GDI %d, %f, %f", frames, secs, fps );
//	SetWindowText( hWnd, s );
	/*
	__asm {
		mov edi, hMemBits
		add edi, 120*640*4
		mov esi, gfx_virtual
		mov ebx, gfx_temp
		mov ecx, 640*200
		xor edx, edx
	loopen:
			xor dx, dx
			xor ax, ax
			mov al, byte ptr [esi]
			mov dl, byte ptr [ebx]
			add ax, dx
			add ax, dx
			add ax, dx
			shr ax, 2
			mov byte ptr [ebx], al
			and eax, 255
			shl eax, 2
			mov edx, dword ptr gfx_palette[eax]
			mov dword ptr [edi], edx
			inc esi
			inc ebx
			add edi, 4
		loop loopen
	};*/
	/*
	BitBlt( hDC, 0, 0, 640, 480, hMemDC, 0, 0, SRCCOPY );
	if( PeekMessage( &msg, 0, 0, 0, PM_REMOVE ) ) {
		//if( msg.uMsg == 
		//TranslateMessage( &msg );
		DispatchMessage( &msg );
	};*/
};

int gfx_kbhit() {
	return g_kbhit;
};