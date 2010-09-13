//
// custom control - slider
//
#include "all.h"

void slider_paint( HWND hWnd ) {
	PAINTSTRUCT ps;
	HDC dc = BeginPaint( hWnd, &ps );
	SliderControl *sc = (SliderControl*)GetWindowLong( hWnd, 0 );

	//HBRUSH hbr = CreateSolidBrush( RGB(0,128,0) );
	HPEN hpe = CreatePen( PS_SOLID, 1, RGB(128,255,128) );
	HPEN oldpen = (HPEN)SelectObject( dc, hpe );

	//HBRUSH oldbrush = (HBRUSH)SelectObject( dc, hbr );

	SetBkColor( dc, RGB(0,64,0) );
	SetTextColor( dc, RGB(0,255,0) );
	
	Rectangle( dc, ps.rcPaint.left, ps.rcPaint.top, ps.rcPaint.right, ps.rcPaint.bottom );

	char text[10];
	float p = *sc->value;
	sprintf( text, "%2.2f", p );

	ExtTextOut( dc, 0, 0, ETO_OPAQUE, &ps.rcPaint, text, strlen(text), NULL );
//	TextOut( dc, 0, 0, text, strlen(text) );

	int r = ps.rcPaint.right;

	//float p = (float)(rand()%100) / 100.0f;

	float pct = (*sc->value - sc->min) / (sc->max - sc->min);

	r = (r * pct);
	//r = (r * p);

	for( int i=1; i<r; i+=2 ) {
		MoveToEx( dc, i, 1, NULL );
		LineTo( dc, i, ps.rcPaint.bottom-1 );
	};

	SelectObject( dc, oldpen );
	//SelectObject( dc, oldbrush );

	EndPaint( hWnd, &ps );
};

LRESULT CALLBACK cust_slider_proc( HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam ) {
	SliderControl *sc;

	switch( uMsg ) {

		case WM_CREATE:
			sc = (SliderControl*)LocalAlloc( LPTR, sizeof(SliderControl) );
			sc->hdc = GetDC( hWnd );
			SetWindowLong( hWnd, 0, (LONG)sc );
			break;

		case WM_SIZE:
			break;

		//case WM_MOUSEMOVE:
		//case WM_MOUSEMOVE:
		case WM_MOUSEMOVE:
		case WM_LBUTTONDOWN:
		case WM_LBUTTONUP:
			{
				if( LOWORD(wParam) & MK_LBUTTON ) {
					RECT r;
					GetClientRect( hWnd, &r );
					sc = (SliderControl*)GetWindowLong( hWnd, 0 );
					float pct = (float)(LOWORD( lParam )) / (float)(r.right - r.left);
					*sc->value = (sc->min*(1-pct)) + (sc->max*pct);
					InvalidateRect( hWnd, NULL, FALSE );
					slider_paint( hWnd );
				};
			}
			break;

		case WM_PAINT:
			slider_paint( hWnd );
			break;

		default:
			return DefWindowProc( hWnd, uMsg, wParam, lParam );
			break;
	};

	return (LONG)TRUE;
};

void install_custom_slider() {

	WNDCLASS wcex;
	wcex.cbClsExtra = 0;
	wcex.cbWndExtra = 4;
	wcex.hbrBackground = NULL;
	wcex.hCursor = LoadCursor( NULL, IDC_CROSS );
	wcex.hIcon = NULL;
	wcex.hInstance = g_hInstance;
	wcex.lpfnWndProc = (WNDPROC)cust_slider_proc;
	wcex.lpszClassName = "CustomSlider";
	wcex.lpszMenuName = NULL;
	wcex.style = CS_HREDRAW | CS_VREDRAW | CS_GLOBALCLASS | CS_OWNDC;

	if( !RegisterClass( &wcex ) ) {
		MessageBox( 0, "registerclass failed", 0, 0 );
	};

};