//
// custom control - shape
//
#include "all.h"

LRESULT CALLBACK cust_shape_proc( HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam ) {
	ShapeControl *ec;

	switch( uMsg ) {

		case WM_CREATE:
			ec = (ShapeControl*)LocalAlloc( LPTR, sizeof(ShapeControl) );
			//ec->hdc = GetDC( hWnd );
			SetWindowLong( hWnd, 0, (LONG)ec );
			//ShowWindow( hWnd, SW_SHOWNORMAL );
			break;

		case WM_SIZE:
			break;

		case WM_LBUTTONDOWN:
			{
				ec = (ShapeControl*)GetWindowLong( hWnd, 0 );
				if( HIWORD(lParam)<32 ) {
					*ec->shape = (*ec->shape + 1)%7;
				} else {
					*ec->filtertype = (*ec->filtertype + 1)%5;
				};
				InvalidateRect( hWnd, NULL, TRUE );
			}
			break;

		case WM_RBUTTONDOWN:
			{
				ec = (ShapeControl*)GetWindowLong( hWnd, 0 );
				if( HIWORD(lParam)<32 ) {
					*ec->shape = (*ec->shape + 6)%7;
				} else {
					*ec->filtertype = (*ec->filtertype + 4)%5;
				};
				InvalidateRect( hWnd, NULL, TRUE );
			}
			break;

		case WM_PAINT:
			{
				ec = (ShapeControl*)GetWindowLong( hWnd, 0 );
				//printf("ba paint (%X)\n",uMsg);
				PAINTSTRUCT ps;
				HDC dc = BeginPaint( hWnd, &ps );
				//MoveToEx( dc, 0, 0, NULL );
				//LineTo( dc, 100, 100 );
				PaintDesktop( dc );

				char str[10];

				BitBlt( dc, 0, 0, 32, 32, g_hBitmapDC, 64, *ec->shape*32, SRCCOPY );
				BitBlt( dc, 0, 32, 32, 32, g_hBitmapDC, 0, 64+*ec->filtertype*32, SRCCOPY );

/*

				switch( *ec->shape ) {

					default:
					case SSHAPE_OFF:
						strcpy( str, "off" );
						break;

					case SSHAPE_SINUS:
						strcpy( str, "sinus" );
						break;

					case SSHAPE_SQUARE:
						strcpy( str, "square" );
						break;

					case SSHAPE_SAW:
						strcpy( str, "saw" );
						break;

					case SSHAPE_TRIANGLE:
						strcpy( str, "triangle" );
						break;

					case SSHAPE_NOISE1:
						strcpy( str, "noise1" );
						break;

					case SSHAPE_NOISE2:
						strcpy( str, "noise2" );
						break;

				};

				TextOut( dc, 0, 0, str, strlen(str) );

*/
				EndPaint( hWnd, &ps );
			}
			break;

		default:
			return DefWindowProc( hWnd, uMsg, wParam, lParam );
			break;
	};

	return (LONG)TRUE;
};

void install_custom_shape() {

	WNDCLASS wcex;
	wcex.cbClsExtra = 0;
	wcex.cbWndExtra = 4;
	wcex.hbrBackground = NULL;
	wcex.hCursor = LoadCursor( NULL, IDC_CROSS );
	wcex.hIcon = NULL;
	wcex.hInstance = g_hInstance;
	wcex.lpfnWndProc = (WNDPROC)cust_shape_proc;
	wcex.lpszClassName = "CustomShape";
	wcex.lpszMenuName = NULL;
	wcex.style = CS_HREDRAW | CS_VREDRAW | CS_GLOBALCLASS | CS_OWNDC;

	if( !RegisterClass( &wcex ) ) {
		MessageBox( 0, "registerclass failed", 0, 0 );
	};

};