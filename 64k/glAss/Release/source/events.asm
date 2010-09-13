	TITLE	E:\prj64k\glAss (eventad)\events.cpp
	.386P
include listing.inc
if @Version gt 510
.model FLAT
else
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
_BSS	SEGMENT DWORD USE32 PUBLIC 'BSS'
_BSS	ENDS
_TLS	SEGMENT DWORD USE32 PUBLIC 'TLS'
_TLS	ENDS
;	COMDAT ?event_run@@YAXMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?event_init@@YAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?event_free@@YAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?pEvent@@3PAPAUONEEVENT@@A			; pEvent
PUBLIC	?nEvents@@3HA					; nEvents
_BSS	SEGMENT
?pEvent@@3PAPAUONEEVENT@@A DD 0400H DUP (?)		; pEvent
?nEvents@@3HA DD 01H DUP (?)				; nEvents
_BSS	ENDS
PUBLIC	?event_run@@YAXMM@Z				; event_run
PUBLIC	__real@8@4000c916872b020c4800
EXTRN	__imp__glPopAttrib@0:NEAR
EXTRN	__imp__glPopMatrix@0:NEAR
EXTRN	__imp__glPushAttrib@4:NEAR
EXTRN	__imp__glPushMatrix@0:NEAR
EXTRN	__fltused:NEAR
;	COMDAT __real@8@4000c916872b020c4800
; File E:\prj64k\glAss (eventad)\events.cpp
CONST	SEGMENT
__real@8@4000c916872b020c4800 DQ 0400922d0e5604189r ; 3.142
CONST	ENDS
;	COMDAT ?event_run@@YAXMM@Z
_TEXT	SEGMENT
_time$ = 8
_beat$ = 12
_e2$ = -24
_i$ = -28
?event_run@@YAXMM@Z PROC NEAR				; event_run, COMDAT

; 17   : void event_run( float time, float beat ) {

	sub	esp, 28					; 0000001cH

; 18   : 	EVENT e2;
; 19   : 	e2.globalTime = time;

	mov	eax, DWORD PTR _time$[esp+24]

; 20   : 	e2.globalBeat = beat;

	mov	ecx, DWORD PTR _beat$[esp+24]
	mov	DWORD PTR _e2$[esp+28], eax

; 21   : 	for( int i=0; i<nEvents; i++ ) {

	mov	eax, DWORD PTR ?nEvents@@3HA		; nEvents
	test	eax, eax
	mov	DWORD PTR _e2$[esp+36], ecx
	mov	DWORD PTR _i$[esp+28], 0
	jle	$L17188
	push	ebx
	mov	ebx, DWORD PTR __imp__glPushAttrib@4
	push	ebp
	mov	ebp, DWORD PTR __imp__glPopAttrib@0
	push	esi
	push	edi
	mov	edi, DWORD PTR __imp__glPushMatrix@0
	mov	DWORD PTR 12+[esp+40], OFFSET FLAT:?pEvent@@3PAPAUONEEVENT@@A ; pEvent
$L17186:

; 22   : 		ONEEVENT *e = pEvent[i];

	mov	edx, DWORD PTR 12+[esp+40]
	mov	esi, DWORD PTR [edx]

; 23   : 		if( e!=NULL && (time>=e->start_time) && (time<e->end_time) ) {

	test	esi, esi
	je	SHORT $L17187
	fld	DWORD PTR _time$[esp+40]
	fcomp	DWORD PTR [esi]
	fnstsw	ax
	test	ah, 1
	jne	SHORT $L17187
	fld	DWORD PTR _time$[esp+40]
	fcomp	DWORD PTR [esi+4]
	fnstsw	ax
	test	ah, 1
	je	SHORT $L17187

; 24   : 			e2.customData = e->custom;

	mov	eax, DWORD PTR [esi+16]

; 25   : 			e2.localTime = time - e->start_time;

	fld	DWORD PTR _time$[esp+40]
	mov	DWORD PTR _e2$[esp+60], eax
	fsub	DWORD PTR [esi]

; 26   : 			e2.localBeat = 0;

	mov	DWORD PTR _e2$[esp+56], 0
	fstp	DWORD PTR _e2$[esp+48]

; 27   : //			e2.eventLength = e->delta_time;
; 28   : 			
; 29   : 			e2.renderAmount = 1*(float)sin( e2.localTime*3.142/e->delta_time );

	fld	DWORD PTR _e2$[esp+48]
	fmul	QWORD PTR __real@8@4000c916872b020c4800
	fdiv	DWORD PTR [esi+8]
	fsin
	fstp	DWORD PTR _e2$[esp+64]

; 30   : 
; 31   : 			// glfusk kåd här?
; 32   : 			glPushMatrix();

	call	edi

; 33   : 			glPushAttrib( GL_ALL_ATTRIB_BITS  );

	push	1048575					; 000fffffH
	call	ebx

; 34   : 
; 35   : 			e->routine( &e2 );

	lea	ecx, DWORD PTR _e2$[esp+44]
	push	ecx
	call	DWORD PTR [esi+12]
	add	esp, 4

; 36   : 
; 37   : 			glPopAttrib();

	call	ebp

; 38   : 			glPopMatrix();

	call	DWORD PTR __imp__glPopMatrix@0
$L17187:
	mov	eax, DWORD PTR _i$[esp+44]
	mov	edx, DWORD PTR 12+[esp+40]
	mov	ecx, DWORD PTR ?nEvents@@3HA		; nEvents
	inc	eax
	add	edx, 4
	cmp	eax, ecx
	mov	DWORD PTR _i$[esp+44], eax
	mov	DWORD PTR 12+[esp+40], edx
	jl	$L17186
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
$L17188:

; 39   : 		};
; 40   : 	};
; 41   : };

	add	esp, 28					; 0000001cH
	ret	0
?event_run@@YAXMM@Z ENDP				; event_run
_TEXT	ENDS
PUBLIC	?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z	; event_register
EXTRN	__imp__GlobalAlloc@8:NEAR
;	COMDAT ?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z
_TEXT	SEGMENT
_starttime$ = 8
_endtime$ = 12
_er$ = 16
_custom$ = 20
?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z PROC NEAR	; event_register, COMDAT

; 44   : 	ONEEVENT *e = (ONEEVENT*)GlobalAlloc( MEM_COMMIT, sizeof(ONEEVENT) );

	push	20					; 00000014H
	push	4096					; 00001000H
	call	DWORD PTR __imp__GlobalAlloc@8

; 45   : 
; 46   : 	e->start_time = starttime;
; 47   : 	e->end_time = endtime;
; 48   : 	e->delta_time = endtime - starttime;

	fld	DWORD PTR _endtime$[esp-4]
	mov	ecx, DWORD PTR _starttime$[esp-4]
	fsub	DWORD PTR _starttime$[esp-4]
	mov	edx, DWORD PTR _endtime$[esp-4]
	mov	DWORD PTR [eax], ecx

; 49   : 
; 50   : 	e->routine = er;

	mov	ecx, DWORD PTR _er$[esp-4]
	fstp	DWORD PTR [eax+8]
	mov	DWORD PTR [eax+4], edx

; 51   : 	e->custom = custom;

	mov	edx, DWORD PTR _custom$[esp-4]
	mov	DWORD PTR [eax+12], ecx
	mov	DWORD PTR [eax+16], edx

; 52   : 
; 53   : 	pEvent[nEvents] = e;

	mov	ecx, DWORD PTR ?nEvents@@3HA		; nEvents
	mov	DWORD PTR ?pEvent@@3PAPAUONEEVENT@@A[ecx*4], eax

; 54   : 	nEvents ++;

	inc	ecx
	mov	DWORD PTR ?nEvents@@3HA, ecx		; nEvents

; 55   : };

	ret	0
?event_register@@YAXMMP6AXPAUEVENT@@@ZJ@Z ENDP		; event_register
_TEXT	ENDS
PUBLIC	?event_init@@YAXXZ				; event_init
;	COMDAT ?event_init@@YAXXZ
_TEXT	SEGMENT
?event_init@@YAXXZ PROC NEAR				; event_init, COMDAT

; 57   : void event_init() {

	push	edi

; 58   : 	for( int i=0; i<1024; i++ )
; 59   : 		pEvent[i] = NULL;

	mov	ecx, 1024				; 00000400H
	xor	eax, eax
	mov	edi, OFFSET FLAT:?pEvent@@3PAPAUONEEVENT@@A ; pEvent
	rep stosd
	pop	edi

; 60   : };

	ret	0
?event_init@@YAXXZ ENDP					; event_init
_TEXT	ENDS
PUBLIC	?event_free@@YAXXZ				; event_free
EXTRN	__imp__GlobalFree@4:NEAR
;	COMDAT ?event_free@@YAXXZ
_TEXT	SEGMENT
?event_free@@YAXXZ PROC NEAR				; event_free, COMDAT

; 62   : void event_free() {

	push	esi
	push	edi

; 63   : 	for( int i=0; i<1024; i++ )

	mov	edi, DWORD PTR __imp__GlobalFree@4
	mov	esi, OFFSET FLAT:?pEvent@@3PAPAUONEEVENT@@A ; pEvent
$L17210:

; 64   : 		if( pEvent[i] != NULL )

	mov	eax, DWORD PTR [esi]
	test	eax, eax
	je	SHORT $L17211

; 65   : 			GlobalFree( pEvent[i] );

	push	eax
	call	edi
$L17211:
	add	esi, 4
	cmp	esi, OFFSET FLAT:?pEvent@@3PAPAUONEEVENT@@A+4096
	jl	SHORT $L17210
	pop	edi
	pop	esi

; 66   : };

	ret	0
?event_free@@YAXXZ ENDP					; event_free
_TEXT	ENDS
END
