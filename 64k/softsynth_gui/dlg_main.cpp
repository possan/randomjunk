//
// main dialog
//

#include "all.h"

HWND g_hWnd;

int seq_key_to_note( char key ) {
	return 0;
};

void seq_transpose( HWND hWnd, int keys ) {
	for( int i=0; i<g_hSynth->seq_length; i++ ) {
		if( SendDlgItemMessage( hWnd, IDC_SEQ, LB_GETSEL, i, 0 )>0 ) {
			g_hSynth->seq_note[i] += keys;
			if( g_hSynth->seq_note[i]<0 ) g_hSynth->seq_note[i]=0;
			if( g_hSynth->seq_note[i]>9*12 ) g_hSynth->seq_note[i]=9*12;
		};
	};
};

void seq_toggle_flag( HWND hWnd, int flagbit ) {
	for( int i=0; i<g_hSynth->seq_length; i++ ) {
		if( SendDlgItemMessage( hWnd, IDC_SEQ, LB_GETSEL, i, 0 )>0 ) {
			g_hSynth->seq_flags[i] ^= flagbit;
		};
	};
};

void set_slider( HWND hWnd, float *valueptr ) {
	SliderControl *ec = (SliderControl*)GetWindowLong( hWnd, 0 );

	ec->value = valueptr;
	ec->min = 0.0f;
	ec->max = 1.0f;
};

void set_sliderminmax( HWND hWnd, float *valueptr, float smin, float smax ) {
	SliderControl *ec = (SliderControl*)GetWindowLong( hWnd, 0 );

	ec->value = valueptr;
	ec->min = smin;
	ec->max = smax;
};

void set_shape( HWND hWnd, int *shapeptr, int *filtertypeptr ) {
	ShapeControl *ec = (ShapeControl*)GetWindowLong( hWnd, 0 );
	ec->shape = shapeptr;
	ec->filtertype = filtertypeptr;
};

void set_env( HWND hWnd, SS_ENV *env, int s ) {
	EnvelopeControl *ec = (EnvelopeControl*)GetWindowLong( hWnd, 0 );

	ec->env = env;

	ec->time_min = 0.0f;
	ec->time_max = 64.0f;
	ec->view_min = 0.0f;
	ec->view_max = 6.0f;
	ec->value_min = 0.0f;
	ec->value_max = 1.0f;

	switch( s ) {
		case 0: // AMP
			{
			}
			break;
		case 1: // PITCH
			{
			}
			break;
		case 2: // CUTOFF
			{
			}
			break;
		case 3: // RESO
			{
			}
			break;
	};

	ec->style = s;

};

void dlg_mix_init( HWND hWnd ) {
	SendMessage( hWnd, CB_RESETCONTENT, 0, 0 );
	SendMessage( hWnd, CB_ADDSTRING, 0, (LPARAM)"0 ADD" );
	SendMessage( hWnd, CB_ADDSTRING, 0, (LPARAM)"1 MUL" );
	SendMessage( hWnd, CB_ADDSTRING, 0, (LPARAM)"2 DIV" );
	SendMessage( hWnd, CB_ADDSTRING, 0, (LPARAM)"3 AND" );
	SendMessage( hWnd, CB_ADDSTRING, 0, (LPARAM)"4 OR" );
	SendMessage( hWnd, CB_ADDSTRING, 0, (LPARAM)"5 XOR" );
	SendMessage( hWnd, CB_ADDSTRING, 0, (LPARAM)"6 ADD^2" );
	SendMessage( hWnd, CB_ADDSTRING, 0, (LPARAM)"7 POWER" );
	SendMessage( hWnd, CB_ADDSTRING, 0, (LPARAM)"8 SINUS" );
};

void dlgmain_init( HWND hWnd ) {

	// fill listbox with shit
	SendDlgItemMessage( hWnd, IDC_SEQ, LB_RESETCONTENT, 0, 0 );
	for( int i=0; i<64; i++ ) {
		SendDlgItemMessage( hWnd, IDC_SEQ, LB_ADDSTRING, 0, (LPARAM)"aphorjövel" );
	};

	dlg_mix_init( GetDlgItem( hWnd, IDC_MIXSTEP1 ) );
	dlg_mix_init( GetDlgItem( hWnd, IDC_MIXSTEP2 ) );
	dlg_mix_init( GetDlgItem( hWnd, IDC_MIXSTEP3 ) );

	set_env( GetDlgItem( hWnd, IDC_O1A ), &g_hSynth->osc[0].amp, 0 );
	set_env( GetDlgItem( hWnd, IDC_O2A ), &g_hSynth->osc[1].amp, 0 );
	set_env( GetDlgItem( hWnd, IDC_O3A ), &g_hSynth->osc[2].amp, 0 );
	set_env( GetDlgItem( hWnd, IDC_O4A ), &g_hSynth->osc[3].amp, 0 );

	set_env( GetDlgItem( hWnd, IDC_O1P ), &g_hSynth->osc[0].pitch, 1 );
	set_env( GetDlgItem( hWnd, IDC_O2P ), &g_hSynth->osc[1].pitch, 1 );
	set_env( GetDlgItem( hWnd, IDC_O3P ), &g_hSynth->osc[2].pitch, 1 );
	set_env( GetDlgItem( hWnd, IDC_O4P ), &g_hSynth->osc[3].pitch, 1 );

	set_env( GetDlgItem( hWnd, IDC_O1C ), &g_hSynth->osc[0].cutoff, 2 );
	set_env( GetDlgItem( hWnd, IDC_O2C ), &g_hSynth->osc[1].cutoff, 2 );
	set_env( GetDlgItem( hWnd, IDC_O3C ), &g_hSynth->osc[2].cutoff, 2 );
	set_env( GetDlgItem( hWnd, IDC_O4C ), &g_hSynth->osc[3].cutoff, 2 );

	set_env( GetDlgItem( hWnd, IDC_O1R ), &g_hSynth->osc[0].resonance, 3 );
	set_env( GetDlgItem( hWnd, IDC_O2R ), &g_hSynth->osc[1].resonance, 3 );
	set_env( GetDlgItem( hWnd, IDC_O3R ), &g_hSynth->osc[2].resonance, 3 );
	set_env( GetDlgItem( hWnd, IDC_O4R ), &g_hSynth->osc[3].resonance, 3 );

	set_shape( GetDlgItem( hWnd, IDC_O1S ), &g_hSynth->osc[0].shape, &g_hSynth->osc[0].filter_type );
	set_shape( GetDlgItem( hWnd, IDC_O2S ), &g_hSynth->osc[1].shape, &g_hSynth->osc[1].filter_type );
	set_shape( GetDlgItem( hWnd, IDC_O3S ), &g_hSynth->osc[2].shape, &g_hSynth->osc[2].filter_type );
	set_shape( GetDlgItem( hWnd, IDC_O4S ), &g_hSynth->osc[3].shape, &g_hSynth->osc[3].filter_type );

	set_slider( GetDlgItem( hWnd, IDC_DIST_THRU ), &g_hSynth->dist_thru );
	set_slider( GetDlgItem( hWnd, IDC_DIST_AMOUNT ), &g_hSynth->dist_amount );
	set_slider( GetDlgItem( hWnd, IDC_DIST_THRESHOLD ), &g_hSynth->dist_threshold );

	set_slider( GetDlgItem( hWnd, IDC_DELAY_THRU ), &g_hSynth->delay_thru );
	set_slider( GetDlgItem( hWnd, IDC_DELAY_FEEDBACK ), &g_hSynth->delay_feedback );
	set_slider( GetDlgItem( hWnd, IDC_DELAY_TIME ), &g_hSynth->delay_time );

	set_sliderminmax( GetDlgItem( hWnd, IDC_BPM ), &g_hSynth->seq_bpm, 120, 240 );
	set_sliderminmax( GetDlgItem( hWnd, IDC_VOL ), &g_hSynth->master_volume, 0, 4 );

	CheckDlgButton( hWnd, IDC_O2USESO1, g_hSynth->o2_uses_o1 );
	CheckDlgButton( hWnd, IDC_O3USESO1, g_hSynth->o3_uses_o1 );
	CheckDlgButton( hWnd, IDC_O4USESO1, g_hSynth->o4_uses_o1 );

	SendDlgItemMessage( hWnd, IDC_MIXSTEP1, CB_SETCURSEL, g_hSynth->mix_step1, 0 );
	SendDlgItemMessage( hWnd, IDC_MIXSTEP2, CB_SETCURSEL, g_hSynth->mix_step2, 0 );
	SendDlgItemMessage( hWnd, IDC_MIXSTEP3, CB_SETCURSEL, g_hSynth->mix_step3, 0 );
};

LRESULT dlgmain_proc( HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam ) {

	switch( uMsg ) {

		case WM_INITDIALOG:
			{
//				int w = GetSystemMetrics( SM_CXSCREEN );
//				int h = GetSystemMetrics( SM_CYSCREEN );
//				MoveWindow( hWnd, 0, 0, w, h, TRUE );
//				InvalidateRect( hWnd, NULL, TRUE );
//				SetForegroundWindow( hWnd );
				g_hWnd = hWnd;

				dlgmain_init( hWnd );

			}
			break;

//		case WM_PAINT:
//			{
//				rita en stor relieffad mitch i bakgrunden :)
//				PAINTSTRUCT ps;
//				HDC dc = BeginPaint( hWnd, &ps );
//				PaintDesktop( dc );
//				EndPaint( hWnd, &ps );
//			}
//			break;

		case WM_DRAWITEM:
			{
				DRAWITEMSTRUCT *di = (DRAWITEMSTRUCT *)lParam;
				if( wParam == IDC_SEQ ) {

					HBRUSH hbr;
					COLORREF color;
	
					if( di->itemState & ODS_SELECTED ) {
						color = RGB(64,128,64);
					} else {
						color = RGB(0,64,0);
					};

					hbr = CreateSolidBrush( color );
					FillRect( di->hDC, &di->rcItem, hbr );
					DeleteObject( hbr );

					SetBkColor( di->hDC, color );
					SetTextColor( di->hDC, RGB(128,255,128) );
	
					char *text = notename_from_note( g_hSynth->seq_note[ di->itemID ] );
					TextOut( di->hDC, di->rcItem.left, di->rcItem.top, text, strlen(text) );

					if( g_hSynth->seq_flags[di->itemID] & SFLAG_NOTE )
						TextOut( di->hDC, di->rcItem.left+90, di->rcItem.top, "No", 2 );

					if( g_hSynth->seq_flags[di->itemID] & SFLAG_SLIDE )
						TextOut( di->hDC, di->rcItem.left+110, di->rcItem.top, "Sl", 2 );

					if( g_hSynth->seq_flags[di->itemID] & SFLAG_ACCENT )
						TextOut( di->hDC, di->rcItem.left+130, di->rcItem.top, "Ac", 2 );

				};
				return TRUE;
			};
			break;


		case WM_COMMAND:

			switch( HIWORD(wParam) ) {

				case CBN_SELCHANGE:
					g_hSynth->mix_step1 = SendDlgItemMessage( hWnd, IDC_MIXSTEP1, CB_GETCURSEL, 0, 0 );
					g_hSynth->mix_step2 = SendDlgItemMessage( hWnd, IDC_MIXSTEP2, CB_GETCURSEL, 0, 0 );
					g_hSynth->mix_step3 = SendDlgItemMessage( hWnd, IDC_MIXSTEP3, CB_GETCURSEL, 0, 0 );
					break;

			};

			switch( LOWORD(wParam) ) {

				case IDC_O2USESO1:
				case IDC_O3USESO1:
				case IDC_O4USESO1:
					g_hSynth->o2_uses_o1 = IsDlgButtonChecked( hWnd, IDC_O2USESO1 );
					g_hSynth->o3_uses_o1 = IsDlgButtonChecked( hWnd, IDC_O3USESO1 );
					g_hSynth->o4_uses_o1 = IsDlgButtonChecked( hWnd, IDC_O4USESO1 );
					break;

				case IDC_LOAD:
					dlg_load();
					dlgmain_init( hWnd );
					UpdateWindow( hWnd );
					InvalidateRect( hWnd, FALSE, TRUE );
					break;
				case IDC_SAVE:
					dlg_save();
					UpdateWindow( hWnd );
					InvalidateRect( hWnd, FALSE, TRUE );
					break;
				case IDC_SAVEAS:
					dlg_saveas();
					UpdateWindow( hWnd );
					InvalidateRect( hWnd, FALSE, TRUE );
					break;
				case IDC_SHAKE:
					synth_random( 0.1f );
					UpdateWindow( hWnd );
					InvalidateRect( hWnd, FALSE, TRUE );
					dlgmain_init( hWnd );
					break;
				case IDC_RANDOM:
					synth_random( 0.9f );
					UpdateWindow( hWnd );
					InvalidateRect( hWnd, FALSE, TRUE );
					dlgmain_init( hWnd );
					break;

				case IDC_NEW:
					{
					int x = MessageBox( 0, "sure?", "new shit", MB_YESNO );
					if( x == IDYES )
						synth_new();
						UpdateWindow( hWnd );
						InvalidateRect( hWnd, FALSE, TRUE );
						dlgmain_init( hWnd );
					}
					break;

				case IDC_GENLOOP:
					dlg_generate( TEMPWAVE );
					UpdateWindow( hWnd );
					InvalidateRect( GetDlgItem( hWnd, IDC_WAVEOUT ), FALSE, TRUE );
					break;
				case IDC_PLAY:
					dlg_generate( TEMPWAVE );
					dlg_play();
					UpdateWindow( hWnd );
					InvalidateRect( GetDlgItem( hWnd, IDC_WAVEOUT ), FALSE, TRUE );
					break;
				case IDC_STOP:
					dlg_stop();
					UpdateWindow( hWnd );
					break;
				case IDC_PLAYLOOP:
					dlg_generate( TEMPWAVE );
					dlg_playloop();
					UpdateWindow( hWnd );
					InvalidateRect( GetDlgItem( hWnd, IDC_WAVEOUT ), FALSE, TRUE );
					break;

				case IDC_SEQ_PLUS:
					seq_transpose( hWnd, +1 );
					InvalidateRect( GetDlgItem( hWnd, IDC_SEQ ), FALSE, TRUE );
					break;
				case IDC_SEQ_MINUS:
					seq_transpose( hWnd, -1 );
					InvalidateRect( GetDlgItem( hWnd, IDC_SEQ ), FALSE, TRUE );
					break;
				case IDC_SEQ_PLUSO:
					seq_transpose( hWnd, +12 );
					InvalidateRect( GetDlgItem( hWnd, IDC_SEQ ), FALSE, TRUE );
					break;
				case IDC_SEQ_MINUSO:
					seq_transpose( hWnd, -12 );
					InvalidateRect( GetDlgItem( hWnd, IDC_SEQ ), FALSE, TRUE );
					break;
				case IDC_SEQ_NOTE:
					seq_toggle_flag( hWnd, SFLAG_NOTE );
					InvalidateRect( GetDlgItem( hWnd, IDC_SEQ ), FALSE, TRUE );
					break;
				case IDC_SEQ_SLIDE:
					seq_toggle_flag( hWnd, SFLAG_SLIDE );
					InvalidateRect( GetDlgItem( hWnd, IDC_SEQ ), FALSE, TRUE );
					break;
				case IDC_SEQ_ACCENT:
					seq_toggle_flag( hWnd, SFLAG_ACCENT );
					InvalidateRect( GetDlgItem( hWnd, IDC_SEQ ), FALSE, TRUE );
					break;

				case IDCANCEL:
//					if( MessageBox( hWnd, "Power off?", " ", MB_YESNO )==IDYES )
						EndDialog( hWnd, TRUE );
					break;

				case IDOK:
					break;

			};

			break;

	};

	return FALSE;
};

void dlgmain_run() {

	DialogBox( g_hInstance, MAKEINTRESOURCE( IDD_MAINDLG ), 0, (DLGPROC)dlgmain_proc );

};