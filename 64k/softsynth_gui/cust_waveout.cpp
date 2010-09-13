//
// custom control - env
//
#include "all.h"

void waveout_paint( HWND hWnd ) {
	PAINTSTRUCT ps;

	HDC dc = BeginPaint( hWnd, &ps );

	HPEN hpe = CreatePen( PS_SOLID, 1, RGB(128,255,128) );
	HPEN oldpen = (HPEN)SelectObject( dc, hpe );

	HBRUSH hbr = CreateSolidBrush( RGB(0, 64, 0) );
	HBRUSH oldbrush = (HBRUSH)SelectObject( dc, hbr );

	SetBkColor( dc, RGB(0,64,0) );

	Rectangle( dc, -1, -1, ps.rcPaint.right+2, ps.rcPaint.bottom+2 );

//	TextOut( dc, 0, 0, "bajs", 4 );
	int w = ps.rcPaint.right;
	int s = 0;
	int step = (g_uSampleLength*1024) / w;

	float hd2 = ps.rcPaint.bottom >> 1;

	for( int i=0; i<w; i++ ) {
		float w = g_pSampleData[ s>>10 ];
		float y = hd2 + ((hd2*w)/32768);

		if( i==0 ) {
			MoveToEx( dc, i, y, NULL );
		} else {
			LineTo( dc, i, y );
		};

		s += step;
	};

	SelectObject( dc, oldbrush );
	SelectObject( dc, oldpen );

	EndPaint( hWnd, &ps );
};

LRESULT CALLBACK cust_waveout_proc( HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam ) {
//	EnvelopeControl *ec;

	switch( uMsg ) {

		case WM_CREATE:
			//ec = (EnvelopeControl*)LocalAlloc( LPTR, sizeof(EnvelopeControl) );
			//ec->hdc = GetDC( hWnd );
			//SetWindowLong( hWnd, 0, (LONG)ec );
			//ShowWindow( hWnd, SW_SHOWNORMAL );
			break;

		case WM_SIZE:
			break;

		case WM_PAINT:
			{
				waveout_paint( hWnd );
			}
			break;

		default:
			return DefWindowProc( hWnd, uMsg, wParam, lParam );
			break;
	};

	return (LONG)TRUE;
};

void install_custom_waveout() {

	WNDCLASS wcex;
	wcex.cbClsExtra = 0;
	wcex.cbWndExtra = 4;
	wcex.hbrBackground = NULL;
	wcex.hCursor = LoadCursor( NULL, IDC_CROSS );
	wcex.hIcon = NULL;
	wcex.hInstance = g_hInstance;
	wcex.lpfnWndProc = (WNDPROC)cust_waveout_proc;
	wcex.lpszClassName = "CustomWaveout";
	wcex.lpszMenuName = NULL;
	wcex.style = CS_HREDRAW | CS_VREDRAW | CS_GLOBALCLASS | CS_OWNDC;

	if( !RegisterClass( &wcex ) ) {
		MessageBox( 0, "registerclass failed", 0, 0 );
	};

};