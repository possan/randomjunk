; #########################################################################

      .386
      .model flat,stdcall
      option casemap :none   ; case sensitive

; #########################################################################

      include \masm32\include\windows.inc
      include \masm32\include\user32.inc
      include \masm32\include\kernel32.inc

;      includelib \masm32\lib\user32.lib
;      includelib \masm32\lib\kernel32.lib

; #########################################################################

    .code

extrn Jonny@0:near

public WinMainCRTStartup
public __fltused
public __ftol
public __chkstk

WinMainCRTStartup:

    push MB_OK
    push offset szDlgTitle
    push offset szMsg
    push 0	
    call MessageBox


;	push 0
;	push 0
;	push 0
;	push 0
	call Jonny@0

    push 0
    call ExitProcess

      szDlgTitle    db "Minimum MASM",0
      szMsg         db "  --- Assembler Pure and Simple ---  ",0

 ;   invoke MessageBox,0,ADDR szMsg,ADDR szDlgTitle,MB_OK
;    invoke ExitProcess,0

__fltused:
	ret

__ftol:
	ret

__chkstk:
	ret

end

