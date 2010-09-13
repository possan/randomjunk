;
; nanolibc math dummies
; illuminator/psikorp '99
;

.386
.model flat,stdcall
.code

;public _CIacos
;public _CIasin
;public _CIatan

public _CIfmod
;public _CIpow

; works:
_CIfmod:
	fxch
	fprem
	fstp st(1)
	ret

;_CIpow:
;	fld x
;	fld y
;	fxch
;	fyl2x
;	fld1
;	fld st(1)
;	fprem
;	f2xm1
;	faddp st(1), st
;	fscale
;	fxch
;	fstp st
;	ret

;_CIacos:
;	call acos
;	ret

;_CIasin:
;	call asin
;	ret

;_CIatan:
;	call atan
;	ret

end