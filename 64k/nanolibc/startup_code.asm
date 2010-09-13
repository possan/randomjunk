;
; nanolibc startup code
; illuminator/psikorp '99
;

.386
.model flat,stdcall
option casemap :none   ; case sensitive

; from \masm32\include\kernel32.inc ....
ExitProcess PROTO :DWORD
.code

; - or whatever it's called... (this is the __stdcall'ed name)
extrn WinMain@16:near

; another strange routine needed by vc.
public _fltused
_fltused:
	ret

public mainCRTStartup
public WinMainCRTStartup

mainCRTStartup:
WinMainCRTStartup:

; push the parameters ... in last to first order ...
	push 0
	push 0
	push 0
	push 0
	call WinMain@16

; exit the program nicely...
    push 0
    call ExitProcess

end