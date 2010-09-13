//
// custom control - env
//
#include "all.h"

void env_calc_pointx( EnvelopeControl *ec, float *x ) {
	// räkna ut x position (0-100) från point_time
	float t0;
	float t1;
	float x2;
	t0 = ec->view_min;
	t1 = ec->view_max;
	x2 = (*x - t0) * ec->width / (t1-t0);
	*x = x2;
};

void env_calc_pointy( EnvelopeControl *ec, float *y ) {
	// räkna ut x position (0-100) från point_time

	float y2;
	y2 = ec->height - (*y * ec->height);
	*y = y2;
};

void env_ease( EnvelopeControl *ec, float delta ) {
	int n = ec->selected;
	if( n == -1 ) n = 0;

	ec->env->point_ease[n] += delta;
};

void env_constant( EnvelopeControl *ec, float y ) {
	// räkna ut x position (0-100) från point_time

//	float y2;
//	y2 = ec->height - (*y * ec->height);
//	*y = y2;

	int n = ec->selected;
	if( n == -1 ) n = 0;

	ec->env->point_value[n] = y;

};

void env_invcalc_point( EnvelopeControl *ec, float *x, float *y ) {
	// räkna ut point_time från x position (0-100)

	float t0;
	float t1;
	float x2;
	float y2;

	t0 = ec->view_min;
	t1 = ec->view_max;

	x2 = ((*x) / ec->width * (t1-t0)) + t0;
	y2 = 1 - (*y / ec->height);

	*x = x2;
	*y = y2;

};

void env_change_selection( EnvelopeControl *ec, int x, int y ) {
	int s = -1;
	int i;
	
	float x0, y0;
	x0 = (float)x;
	y0 = (float)y;
	env_invcalc_point( ec, &x0, &y0 );

	float selr = 0.3f;

	ec->selected = -1;

	for( i=0; i<ec->env->points_used; i++ ) {

		float x1, y1;
		x1 = ec->env->point_time[i];
		y1 = ec->env->point_value[i];

//		float d = sqrt( (x1-x0)*(x1-x0) + (y1-y0)*(y1-y0) );

		//if( 

		if( x0>(x1-selr) && y0>(y1-selr) && x0<(x1+selr) && y0<(y1+selr) )
			ec->selected = i;

	};

};

void env_paint( HWND hWnd ) {

	int i;
	float x, y;
	PAINTSTRUCT ps;
	HDC dc = BeginPaint( hWnd, &ps );
	EnvelopeControl *sc = (EnvelopeControl*)GetWindowLong( hWnd, 0 );

	HPEN hpe, oldpen;

	HBRUSH hbr = CreateSolidBrush( RGB(0,64,0) );
	HBRUSH oldbrush = (HBRUSH)SelectObject( dc, hbr );

	SetBkColor( dc, RGB(0,64,0) );
	SetTextColor( dc, RGB(0,128,0) );
	
	Rectangle( dc, ps.rcPaint.left, ps.rcPaint.top, ps.rcPaint.right, ps.rcPaint.bottom );

	char test[100];
	if( sc->selected == -1 ) {
		sprintf( test, "no sel" );
	} else {
		float f = sc->env->point_value[ sc->selected ];
		switch( sc->style ) {
			case 0: // amp
				sprintf( test, "%2.0f %%", f*100 );
				break;
			case 1: // pitch
				sprintf( test, "%2.1f", (f-0.5f)*24 );
				break;
			case 2: // cutoff
				sprintf( test, "%2.0f hz", f*16000 );
				break;
			default: // reso
				sprintf( test, "%2.0f %%", f*100 );
				break;
		};
	};
	TextOut( dc, 10, 10, test, strlen(test) );

	hpe = CreatePen( PS_SOLID, 1, RGB(0,128,0) );
	oldpen = (HPEN)SelectObject( dc, hpe );

	for( i=0; i<g_hSynth->seq_length; i++ ) {
		x = (float)i;
		env_calc_pointx( sc, &x );

		MoveToEx( dc, (int)x, ps.rcPaint.top, NULL );
		LineTo( dc, (int)x, ps.rcPaint.bottom );
	};

	SelectObject( dc, oldpen );
	DeleteObject( hpe );

	hpe = CreatePen( PS_SOLID, 1, RGB(128,255,128) );
	oldpen = (HPEN)SelectObject( dc, hpe );

	for( i=0; i<sc->width; i++ ) {

		x = (float)i;
		env_invcalc_point( sc, &x, &y );
		y = ss_env_eval2( sc->env, x );
		env_calc_pointx( sc, &x );
		env_calc_pointy( sc, &y );

		if( i==0 ) {
			MoveToEx( dc, (int)x, (int)y, NULL );
		} else {
			LineTo( dc, (int)x, (int)y );
		};
//SetPixel( dc, x, y, RGB(128,255,128) );
/*
		float x1 = sc->env->point_time[i];
		float y1 = sc->env->point_value[i];
		float x2 = sc->env->point_time[i+1];
		float y2 = sc->env->point_value[i+1];
		env_calc_point( sc, &x1, &y1 );
		env_calc_point( sc, &x2, &y2 );
		*/
	};

	SelectObject( dc, oldpen );
	DeleteObject( hpe );

	hpe = CreatePen( PS_SOLID, 1, RGB(64,255,64) );
	oldpen = (HPEN)SelectObject( dc, hpe );

	if( sc->env->sustain_point >= 0 ) {
		x = sc->env->point_time[ sc->env->sustain_point ];
		env_calc_pointx( sc, &x );
		MoveToEx( dc, (int)x, 0, NULL );
		LineTo( dc, (int)x, ps.rcPaint.bottom );
		BitBlt( dc, (int)x-3, 0, 7, 7, g_hBitmapDC, 48, 0, SRCCOPY );
		BitBlt( dc, (int)x-3, ps.rcPaint.bottom-7, 7, 7, g_hBitmapDC, 48, 0, SRCCOPY );
	};
/*
	x = sc->env->point_time[ sc->env->loop_start ];
	env_calc_pointx( sc, &x );
	MoveToEx( dc, x, 0, NULL );
	LineTo( dc, x, ps.rcPaint.bottom );
	BitBlt( dc, x-3, ps.rcPaint.bottom-7, 7, 7, g_hBitmapDC, 16, 0, SRCCOPY );
	BitBlt( dc, x-3, 0, 7, 7, g_hBitmapDC, 16, 0, SRCCOPY );

	x = sc->env->point_time[ sc->env->loop_end ];
	env_calc_pointx( sc, &x );
	MoveToEx( dc, x, 0, NULL );
	LineTo( dc, x, ps.rcPaint.bottom );
	BitBlt( dc, x-3, 0, 7, 7, g_hBitmapDC, 24, 0, SRCCOPY );
	BitBlt( dc, x-3, ps.rcPaint.bottom-7, 7, 7, g_hBitmapDC, 24, 0, SRCCOPY );
*/
	SelectObject( dc, oldpen );
	DeleteObject( hpe );

	for( i=0; i<sc->env->points_used; i++ ) {
		x = sc->env->point_time[i];
		y = sc->env->point_value[i];
		env_calc_pointx( sc, &x );
		env_calc_pointy( sc, &y );
		if( i==sc->selected ) {
			BitBlt( dc, (int)x-3, (int)y-3, 7, 7, g_hBitmapDC, 8, 0, SRCCOPY );
		} else {
			BitBlt( dc, (int)x-3, (int)y-3, 7, 7, g_hBitmapDC, 0, 0, SRCCOPY );
		};
	};

	SelectObject( dc, oldbrush );

	DeleteObject( hbr );

	EndPaint( hWnd, &ps );

};

LRESULT CALLBACK cust_env_proc( HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam ) {
	EnvelopeControl *ec;

	switch( uMsg ) {

		case WM_CREATE:
			ec = (EnvelopeControl*)LocalAlloc( LPTR, sizeof(EnvelopeControl) );
			ec->hdc = GetDC( hWnd );
			SetWindowLong( hWnd, 0, (LONG)ec );
			//ShowWindow( hWnd, SW_SHOWNORMAL );
			break;

		case WM_SETFOCUS:
		case WM_LBUTTONUP:
			ec = (EnvelopeControl*)GetWindowLong( hWnd, 0 );
			ec->dragging = 0;
			InvalidateRect( hWnd, NULL, TRUE );
			break;
/*
		case WM_MOUSEWHEEL:
			{
				
				int fwKeys = (short)LOWORD(wParam);
				int zDelta = (short)HIWORD(wParam);
				printf("mousewheel: %d %d\n",fwKeys, zDelta);
				if( fwKeys & MK_CONTROL ) {
					//env_fine( ec, 
					env_ease( ec, (float)zDelta*0.1f );
				};
				
			}
			break;
*/
		case WM_MOUSEMOVE:
			{

				ec = (EnvelopeControl*)GetWindowLong( hWnd, 0 );

				float x = LOWORD( lParam );
				float y = HIWORD( lParam );

				if( LOWORD(wParam) & MK_LBUTTON ) {

					if( x<0 || y<0 || x>ec->width || y>ec->height ) {

						ec->dragging = 0;
						InvalidateRect( hWnd, NULL, TRUE );

					} else if( ec->dragging && ec->selected != -1 ) {
						float min, max;

						env_invcalc_point( ec, &x, &y );

						if( ec->selected>0 ) {
							min = ec->env->point_time[ ec->selected-1 ];
						} else {
							min = 0;
							x = 0;
						};

						if( ec->selected<ec->env->points_used-1 ) {
							max = ec->env->point_time[ ec->selected+1 ];
						} else {
							max = 64;
						};

						if( x<min ) x=min;
						if( x>max ) x=max;

						ec->env->point_value[ ec->selected ] = y;
						ec->env->point_time[ ec->selected ] = x;
						InvalidateRect( hWnd, NULL, TRUE );
					};

				} else if( LOWORD(wParam) & MK_MBUTTON ) {

					if( ec->selected != -1 ) {

						float d = (ec->gx - x);
						d /= 40.0f;
						ec->env->point_ease[ ec->selected ] += d;

					};
					InvalidateRect( hWnd, NULL, TRUE );

				};
			};
			break;

		case WM_LBUTTONDOWN:
			{
				ec = (EnvelopeControl*)GetWindowLong( hWnd, 0 );
				int x;
				int y;
				x = LOWORD( lParam );
				y = HIWORD( lParam );
				env_change_selection( ec, x, y );
				ec->gx = x;
				ec->gy = y;
				ec->dragging = 1;
				InvalidateRect( hWnd, NULL, TRUE );
			}
			break;

		case WM_MBUTTONDOWN:
			{
				ec = (EnvelopeControl*)GetWindowLong( hWnd, 0 );
				int x;
				int y;
				x = LOWORD( lParam );
				y = HIWORD( lParam );
				ec->gx = x;
				ec->gy = y;
			}
			break;

		case WM_RBUTTONDOWN:
			{
				ec = (EnvelopeControl*)GetWindowLong( hWnd, 0 );
				HMENU hmenu, hmenu2;
				hmenu = LoadMenu( g_hInstance, MAKEINTRESOURCE(IDR_ENVPOPUP) );
				hmenu2 = GetSubMenu( hmenu, 0 );
				POINT p;
				GetCursorPos( &p );
				int r = TrackPopupMenu( hmenu2, TPM_RETURNCMD | TPM_NONOTIFY | TPM_TOPALIGN | TPM_LEFTBUTTON | TPM_CENTERALIGN, p.x, p.y, 0, g_hWnd, NULL );

				switch( r ) {
					case ID_LOOPSTART:	
						ec->env->loop_start = ec->selected;
						break;
					case ID_LOOPEND:	
						ec->env->loop_end = ec->selected;
						break;
					case ID_SUSTAIN:	
						ec->env->sustain_point = ec->selected;
						break;
					case ID_NOLOOPSTART:	
						ec->env->loop_start = -1;
						break;
					case ID_NOLOOPEND:	
						ec->env->loop_end = -1;
						break;
					case ID_NOSUSTAIN:	
						ec->env->sustain_point = -1;
						break;

					case ID_PANLEFT:
						{
							float m = ec->view_max - ec->view_min;
							ec->view_min -= m;
							ec->view_max -= m;
						}
						break;

					case ID_PANRIGHT:
						{
							float m = ec->view_max - ec->view_min;
							ec->view_min += m;
							ec->view_max += m;
						}
						break;

					case ID_ZOOMOUT:	
						{
							float m = ec->view_max - ec->view_min;
							ec->view_min -= m/2;
							ec->view_max += m/2;
						}
						break;
					case ID_ZOOMIN:	
						{
							float m = ec->view_max - ec->view_min;
							ec->view_min += m/2;
							ec->view_max -= m/2;
						}
						break;
					case ID_FIT:	
						{
							ec->view_min = 0;
							ec->view_max = ec->env->point_time[ ec->env->points_used-1 ];
						}
						break;

					case ID_INSERTDUTT:
						if( ec->env->points_used < 60 ) {
							ec->env->point_value[ ec->env->points_used ] = 
								ec->env->point_value[ ec->env->points_used-1 ];
	
							ec->env->point_time[ ec->env->points_used ] = 
								ec->env->point_time[ ec->env->points_used-1 ] + 1.0f;
	
							ec->env->points_used ++;
						};
						break;

					case ID_DELETEDUTT:
						if( ec->env->points_used > 1 )
							ec->env->points_used --;
						break;

					case ID_APA_00:
						env_constant( ec, 0.0f );
						break;
					case ID_APA_05:
						env_constant( ec, 0.5f );
						break;
					case ID_APA_10:
						env_constant( ec, 1.0f );
						break;

					case ID_SHARPEN:
						ec->env->point_ease[ ec->selected ] -= 0.25f;
						break;
					case ID_SMOOTH:
						ec->env->point_ease[ ec->selected ] += 0.25f;
						break;
					case ID_CORNER:
						ec->env->point_ease[ ec->selected ] = 0.0f;
						break;
					case ID_SPLINE:
						ec->env->point_ease[ ec->selected ] = 1.0f;
						break;
				};
		
				InvalidateRect( hWnd, NULL, TRUE );
			}
			break;

		case WM_SIZE:
			{
				ec = (EnvelopeControl*)GetWindowLong( hWnd, 0 );
				RECT r;
				GetClientRect( hWnd, &r );
				ec->width = (float)r.right;//-r.left;
				ec->height = (float)r.bottom;//-r.top;
			}
			break;

		case WM_CHAR:
			{
				ec = (EnvelopeControl*)GetWindowLong( hWnd, 0 );
				printf("%d\n",wParam);
				switch( wParam ) {
					case '1':
						break;
					case '2':
						ec->env->loop_end = ec->selected;
						break;
					case '3':
						ec->env->sustain_point = ec->selected;
						break;
				};
				InvalidateRect( hWnd, NULL, TRUE );
			}
			break;

		case WM_PAINT:
			{
				env_paint( hWnd );
			}
			break;

		default:
			return DefWindowProc( hWnd, uMsg, wParam, lParam );
			break;
	};

	return (LONG)TRUE;
};

void install_custom_env() {

	WNDCLASS wcex;
	wcex.cbClsExtra = 0;
	wcex.cbWndExtra = 32;
	wcex.hbrBackground = NULL;
	wcex.hCursor = LoadCursor( NULL, IDC_CROSS );
	wcex.hIcon = NULL;
	wcex.hInstance = g_hInstance;
	wcex.lpfnWndProc = (WNDPROC)cust_env_proc;
	wcex.lpszClassName = "CustomEnvelope";
	wcex.lpszMenuName = NULL;
	wcex.style = CS_HREDRAW | CS_VREDRAW | CS_GLOBALCLASS | CS_OWNDC;

	if( !RegisterClass( &wcex ) ) {
		MessageBox( 0, "registerclass failed", 0, 0 );
	};

};