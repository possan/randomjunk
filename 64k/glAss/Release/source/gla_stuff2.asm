	TITLE	D:\prj64k\glAss (eventad)\misccode\gla_stuff2.cpp
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
;	COMDAT ??_C@_04A@?$AA?$AA?$AA?$AA?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0DC@MPAE@abcdefghijklmnopqrstuvwxyz012345@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT _IsEqualGUID
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _==
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pow2@@YAHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?init_exp@@YAFF@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?get_next_code@@YAFXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?decode@@YAFPAEFF@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaUploadTexture@@YAXHPAJHH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaFreeTexture@@YAXH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaSetTexture@@YAXH@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaUploadGif@@YAXHPAEJ@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaQuad@@YAXMMMMMMMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaRotate2d@@YAXPAM0MMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaQuadR@@YAXMMMMMMMMMM@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaDefaultProjection@@YAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?misc_strlen@@YAJPAD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaDrawChar@@YAXMMMMMD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaDrawString@@YAXMMMMMMPAD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaDrawStringL@@YAXMMMMMMPAD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaReset@@YAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaTime@@YAMXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?glaRelBeat@@YAMXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?tex_id@@3PAIA					; tex_id
PUBLIC	?fonttable@@3PADA				; fonttable
PUBLIC	??_C@_0DC@MPAE@abcdefghijklmnopqrstuvwxyz012345@ ; `string'
PUBLIC	?resettime@@3KA					; resettime
PUBLIC	?resetbeat@@3MA					; resetbeat
_BSS	SEGMENT
?tex_id@@3PAIA DD 03e8H DUP (?)				; tex_id
?resettime@@3KA DD 01H DUP (?)				; resettime
?resetbeat@@3MA DD 01H DUP (?)				; resetbeat
_navail_bytes DW 01H DUP (?)
	ALIGN	4

_nbits_left DW	01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
_code_mask DD	00H
	DD	01H
	DD	03H
	DD	07H
	DD	0fH
	DD	01fH
	DD	03fH
	DD	07fH
	DD	0ffH
	DD	01ffH
	DD	03ffH
	DD	07ffH
	DD	0fffH
?fonttable@@3PADA DD FLAT:??_C@_0DC@MPAE@abcdefghijklmnopqrstuvwxyz012345@ ; fonttable
_DATA	ENDS
;	COMDAT ??_C@_0DC@MPAE@abcdefghijklmnopqrstuvwxyz012345@
_DATA	SEGMENT
??_C@_0DC@MPAE@abcdefghijklmnopqrstuvwxyz012345@ DB 'abcdefghijklmnopqrst'
	DB	'uvwxyz0123456789!?@"'':,.-/()_', 00H	; `string'
_DATA	ENDS
PUBLIC	?pow2@@YAHH@Z					; pow2
;	COMDAT ?pow2@@YAHH@Z
_TEXT	SEGMENT
_value$ = 8
?pow2@@YAHH@Z PROC NEAR					; pow2, COMDAT

; 10   : 	int i,rvalue = 2;
; 11   : 	if( value == 0)

	mov	ecx, DWORD PTR _value$[esp-4]
	test	ecx, ecx
	mov	eax, 2
	jne	SHORT $L19423

; 12   : 		return( 1);

	mov	eax, 1

; 19   : 		return( rvalue);
; 20   : 	}
; 21   : }

	ret	0
$L19423:

; 13   : 	else if( value == 1)

	cmp	ecx, 1
	jne	SHORT $L19425

; 14   : 		return( 2);

	mov	eax, 2

; 19   : 		return( rvalue);
; 20   : 	}
; 21   : }

	ret	0
$L19425:

; 15   : 	else
; 16   : 	{
; 17   : 		for( i=0; i<(value-1); i++)

	dec	ecx
	test	ecx, ecx
	jle	SHORT $L19426
$L19427:

; 18   : 			rvalue *= 2;

	add	eax, eax
	dec	ecx
	jne	SHORT $L19427
$L19426:

; 19   : 		return( rvalue);
; 20   : 	}
; 21   : }

	ret	0
?pow2@@YAHH@Z ENDP					; pow2
_TEXT	ENDS
PUBLIC	?init_exp@@YAFF@Z				; init_exp
_BSS	SEGMENT
	ALIGN	4

_curr_size DW	01H DUP (?)
	ALIGN	4

_clear	DW	01H DUP (?)
	ALIGN	4

_ending	DW	01H DUP (?)
	ALIGN	4

_newcodes DW	01H DUP (?)
	ALIGN	4

_top_slot DW	01H DUP (?)
	ALIGN	4

_slot	DW	01H DUP (?)
_BSS	ENDS
;	COMDAT ?init_exp@@YAFF@Z
_TEXT	SEGMENT
_size$ = 8
?init_exp@@YAFF@Z PROC NEAR				; init_exp, COMDAT

; 58   :   curr_size = size + 1;

	mov	edx, DWORD PTR _size$[esp-4]
	lea	eax, DWORD PTR [edx+1]
	mov	WORD PTR _curr_size, ax

; 59   :   top_slot = 1 << curr_size;

	mov	cl, BYTE PTR _curr_size
	mov	eax, 1
	shl	eax, cl

; 60   :   clear = 1 << size;

	mov	cl, dl
	mov	WORD PTR _top_slot, ax
	mov	eax, 1
	shl	eax, cl
	mov	WORD PTR _clear, ax

; 61   :   ending = clear + 1;

	inc	ax
	mov	WORD PTR _ending, ax

; 62   :   slot = newcodes = ending + 1;

	mov	ecx, DWORD PTR _ending
	lea	eax, DWORD PTR [ecx+1]
	mov	WORD PTR _newcodes, ax
	mov	WORD PTR _slot, ax

; 63   :   navail_bytes = nbits_left = 0;

	xor	eax, eax
	mov	WORD PTR _nbits_left, ax
	mov	WORD PTR _navail_bytes, ax

; 64   : 	return(0);

	xor	ax, ax

; 65   : }

	ret	0
?init_exp@@YAFF@Z ENDP					; init_exp
_TEXT	ENDS
PUBLIC	?get_next_code@@YAFXZ				; get_next_code
_BSS	SEGMENT
	ALIGN	4

_b1	DB	01H DUP (?)
	ALIGN	4

_byte_buff DB	0101H DUP (?)
	ALIGN	4

_pbytes	DD	01H DUP (?)
_gifsource DD	01H DUP (?)
_BSS	ENDS
;	COMDAT ?get_next_code@@YAFXZ
_TEXT	SEGMENT
_ret$ = -4
?get_next_code@@YAFXZ PROC NEAR				; get_next_code, COMDAT

; 68   : {

	push	ecx

; 69   : 	short i, x;
; 70   :  unsigned long ret;
; 71   : 
; 72   :   if (nbits_left == 0)

	mov	dx, WORD PTR _nbits_left
	test	dx, dx

; 73   :     {
; 74   :     if (navail_bytes <= 0)

	mov	ax, WORD PTR _navail_bytes
	push	ebx
	push	ebp
	push	esi
	push	edi
	jne	$L19766
	test	ax, ax
	jg	SHORT $L19765

; 75   :       {
; 76   : 
; 77   :       /* Out of bytes in current block, so read next block
; 78   :        */
; 79   :       pbytes = byte_buff;
; 80   : 	  navail_bytes = *gifsource;  gifsource ++;

	mov	edi, DWORD PTR _gifsource
	mov	ebp, OFFSET FLAT:_byte_buff
	mov	DWORD PTR _pbytes, ebp
	movzx	ax, BYTE PTR [edi]
	inc	edi

; 81   :       if (navail_bytes < 0)

	test	ax, ax
	mov	WORD PTR _navail_bytes, ax
	mov	DWORD PTR _gifsource, edi

; 82   :         return(navail_bytes);

	jl	$L19447

; 83   :       else if (navail_bytes)

	je	SHORT $L19458

; 84   :         {
; 85   :         for (i = 0; i < navail_bytes; ++i)

	xor	edx, edx
	test	ax, ax
	jle	SHORT $L19458
$L19456:

; 86   :           {
; 87   : 			x = *gifsource; gifsource ++;

	movzx	cx, BYTE PTR [edi]
	inc	edi

; 88   :           if (x < 0)

	test	cx, cx
	mov	DWORD PTR _gifsource, edi
	jl	$L19759

; 90   :           byte_buff[i] = (unsigned char)x;

	movsx	esi, dx
	inc	edx
	cmp	dx, ax
	mov	BYTE PTR _byte_buff[esi], cl
	jl	SHORT $L19456

; 109  :       if (navail_bytes < 0)

	jmp	SHORT $L19458
$L19765:

; 89   :             return(x);

	mov	ebp, DWORD PTR _pbytes
	mov	edi, DWORD PTR _gifsource
$L19458:

; 91   :           }
; 92   :         }
; 93   :       }
; 94   :     b1 = *pbytes++;

	mov	cl, BYTE PTR [ebp]
	inc	ebp

; 95   :     nbits_left = 8;

	mov	dx, 8

; 96   :     --navail_bytes;

	dec	ax
	mov	BYTE PTR _b1, cl
	mov	DWORD PTR _pbytes, ebp
	mov	WORD PTR _nbits_left, dx
	mov	WORD PTR _navail_bytes, ax
	jmp	SHORT $L19451
$L19766:
	mov	ebp, DWORD PTR _pbytes
	mov	edi, DWORD PTR _gifsource
$L19451:

; 97   :   }
; 98   : 
; 99   :   ret = b1 >> (8 - nbits_left);

	mov	ebx, DWORD PTR _b1
	xor	ecx, ecx
	mov	cl, 8
	sub	cl, dl
	and	ebx, 255				; 000000ffH
	shr	ebx, cl

; 100  :   while (curr_size > nbits_left)

	mov	cx, WORD PTR _curr_size
	cmp	cx, dx
	mov	DWORD PTR _ret$[esp+20], ebx
	jle	$L19463
$L19462:

; 101  :   {
; 102  :     if (navail_bytes <= 0)

	test	ax, ax
	jg	SHORT $L19470

; 103  :     {
; 104  : 
; 105  :       /* Out of bytes in current block, so read next block
; 106  :        */
; 107  :       pbytes = byte_buff;

	mov	ebp, OFFSET FLAT:_byte_buff
	mov	DWORD PTR _pbytes, ebp

; 108  : 	  navail_bytes = *gifsource; gifsource ++;

	movzx	ax, BYTE PTR [edi]
	inc	edi

; 109  :       if (navail_bytes < 0)

	test	ax, ax
	mov	WORD PTR _navail_bytes, ax
	mov	DWORD PTR _gifsource, edi
	jl	$L19447

; 110  :         return(navail_bytes);
; 111  :       else if (navail_bytes)

	je	SHORT $L19470

; 112  :         {
; 113  :         for (i = 0; i < navail_bytes; ++i)

	xor	esi, esi
	test	ax, ax
	jle	SHORT $L19470
$L19468:

; 114  :           {
; 115  : 			x = *gifsource; gifsource ++;

	movzx	cx, BYTE PTR [edi]
	inc	edi

; 116  :           if (x < 0)

	test	cx, cx
	mov	DWORD PTR _gifsource, edi
	jl	SHORT $L19759

; 118  :           byte_buff[i] = (unsigned char)x;

	movsx	ebx, si
	inc	esi
	cmp	si, ax
	mov	BYTE PTR _byte_buff[ebx], cl
	jl	SHORT $L19468

; 112  :         {
; 113  :         for (i = 0; i < navail_bytes; ++i)

	mov	ebx, DWORD PTR _ret$[esp+20]
$L19470:

; 119  :           }
; 120  :         }
; 121  :     }
; 122  :     b1 = *pbytes++;

	mov	cl, BYTE PTR [ebp]
	mov	BYTE PTR _b1, cl

; 123  :     ret |= b1 << nbits_left;

	mov	esi, DWORD PTR _b1
	and	esi, 255				; 000000ffH
	mov	cl, dl
	shl	esi, cl
	inc	ebp

; 124  :     nbits_left += 8;

	add	dx, 8
	mov	DWORD PTR _pbytes, ebp
	or	ebx, esi

; 125  :     --navail_bytes;

	dec	ax
	cmp	WORD PTR _curr_size, dx
	mov	DWORD PTR _ret$[esp+20], ebx
	mov	WORD PTR _nbits_left, dx
	mov	WORD PTR _navail_bytes, ax
	jg	$L19462

; 109  :       if (navail_bytes < 0)

	mov	cx, WORD PTR _curr_size
$L19463:

; 126  :   }
; 127  :   nbits_left -= curr_size;

	sub	dx, cx
	mov	WORD PTR _nbits_left, dx

; 128  :   ret &= code_mask[curr_size];
; 129  :   return( (short)(ret) );

	movsx	edx, cx
	mov	eax, DWORD PTR _code_mask[edx*4]
	and	eax, ebx
$L19447:
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 130  : }

	pop	ecx
	ret	0
$L19759:
	pop	edi
	pop	esi
	pop	ebp

; 117  :             return(x);

	mov	ax, cx
	pop	ebx

; 130  : }

	pop	ecx
	ret	0
?get_next_code@@YAFXZ ENDP				; get_next_code
_TEXT	ENDS
PUBLIC	?decode@@YAFPAEFF@Z				; decode
EXTRN	__imp__GlobalAlloc@8:NEAR
EXTRN	__imp__GlobalFree@4:NEAR
_BSS	SEGMENT
_stack	DB	01000H DUP (?)
_suffix	DB	01000H DUP (?)
_prefix	DW	01000H DUP (?)
_BSS	ENDS
;	COMDAT ?decode@@YAFPAEFF@Z
_TEXT	SEGMENT
_buffer$ = 8
_width$ = 12
_buf$ = -12
_fc$ = -8
_oc$ = 8
_output$ = -16
_size$ = -4
?decode@@YAFPAEFF@Z PROC NEAR				; decode, COMDAT

; 137  : {

	sub	esp, 16					; 00000010H

; 138  :   register unsigned char *sp, *bufptr;
; 139  :   unsigned char *buf;
; 140  :   register short code, fc, oc, bufcnt;
; 141  :   register unsigned char  *output;
; 142  :   short c, size, ret;
; 143  : 
; 144  :   --height;
; 145  :   height = 0;
; 146  :   output = (unsigned char *)buffer;

	mov	eax, DWORD PTR _buffer$[esp+12]

; 147  : 
; 148  :   /* Initialize for decoding a new image... */
; 149  : 
; 150  :   size = *gifsource; gifsource ++;

	mov	ecx, DWORD PTR _gifsource
	mov	DWORD PTR _output$[esp+16], eax
	movzx	ax, BYTE PTR [ecx]
	push	ebx
	push	ebp
	push	esi
	inc	ecx

; 151  :   if (size < 0)

	xor	esi, esi
	cmp	ax, si
	push	edi
	mov	DWORD PTR _size$[esp+32], eax
	mov	DWORD PTR _gifsource, ecx

; 152  : 		return(size);

	jl	$L19481

; 153  :   if (size < 2 || 9 < size)

	cmp	ax, 2
	jl	$L19496
	cmp	ax, 9
	jg	$L19496

; 155  :   init_exp(size);

	push	eax
	call	?init_exp@@YAFF@Z			; init_exp

; 156  : 
; 157  :    /* Initialize in case they forgot to put in a clear code.
; 158  :     * (This shouldn't happen, but we'll try and decode it anyway...)
; 159  :     */
; 160  :   oc = fc = 0;
; 161  : 
; 162  :    /* Allocate space for the decode buffer
; 163  :     */
; 164  :   buf = (unsigned char *)GlobalAlloc( MEM_COMMIT, width+10 );

	mov	ebp, DWORD PTR _width$[esp+32]
	movsx	ecx, bp
	add	esp, 4
	add	ecx, 10					; 0000000aH
	push	ecx
	push	4096					; 00001000H
	mov	DWORD PTR _fc$[esp+40], esi
	mov	DWORD PTR _oc$[esp+36], esi
	call	DWORD PTR __imp__GlobalAlloc@8
	mov	DWORD PTR _buf$[esp+32], eax

; 165  :   //if ((buf = (unsigned char *)xmalloc(width + 1)) == NULL)
; 166  : //	return(-1);
; 167  : 
; 168  :    /* Set up the stack pointer and decode buffer pointer
; 169  :     */
; 170  :   sp = stack;

	mov	esi, OFFSET FLAT:_stack

; 171  :   bufptr = buf;

	mov	edi, eax

; 172  :   bufcnt = width;
; 173  : 
; 174  :    /* This is the main loop.  For each code we get we pass through the
; 175  :     * linked list of prefix codes, pushing the corresponding "character" for
; 176  :     * each code onto the stack.  When the list reaches a single "character"
; 177  :     * we push that on the stack too, and then start unstacking each
; 178  :     * character for output in the correct order.  Special handling is
; 179  :     * included for the clear code, and the whole thing ends when we get
; 180  :     * an ending code.
; 181  :     */
; 182  :   while ((c = get_next_code()) != ending)

	call	?get_next_code@@YAFXZ			; get_next_code
	mov	ebx, eax
	cmp	bx, WORD PTR _ending
	je	$L19776
$L19499:

; 183  :   {
; 184  : 
; 185  :       /* If we had a file error, return without completing the decode
; 186  :        */
; 187  : 		if (c < 0)

	test	bx, bx
	jl	$L19775

; 191  : 		}
; 192  : 
; 193  :       /* If the code is a clear code, reinitialize all necessary items.
; 194  :        */
; 195  :     if (c == clear)

	cmp	bx, WORD PTR _clear
	jne	$L19502

; 196  :     {
; 197  :       curr_size = size + 1;

	mov	edx, DWORD PTR _size$[esp+32]

; 198  :       slot = newcodes;

	mov	ax, WORD PTR _newcodes
	inc	edx
	mov	WORD PTR _curr_size, dx

; 199  :       top_slot = 1 << curr_size;

	mov	cl, BYTE PTR _curr_size
	mov	edx, 1
	shl	edx, cl
	mov	WORD PTR _slot, ax
	mov	WORD PTR _top_slot, dx

; 200  : 
; 201  :       /* Continue reading codes until we get a non-clear code
; 202  :        * (Another unlikely, but possible case...)
; 203  :        */
; 204  :       while( (c = get_next_code()) == clear);

	call	?get_next_code@@YAFXZ			; get_next_code
	cmp	ax, WORD PTR _clear
	jne	SHORT $L19505
$L19504:
	call	?get_next_code@@YAFXZ			; get_next_code
	cmp	ax, WORD PTR _clear
	je	SHORT $L19504
$L19505:

; 205  : 
; 206  :       /* If we get an ending code immediately after a clear code
; 207  :        * (Yet another unlikely case), then break out of the loop.
; 208  :        */
; 209  :       if (c == ending)

	cmp	ax, WORD PTR _ending
	je	$L19776

; 210  :          break;
; 211  : 
; 212  :       /* Finally, if the code is beyond the range of already set codes,
; 213  :        * (This one had better NOT happen...  I have no idea what will
; 214  :        * result from this, but I doubt it will look good...) then set it
; 215  :        * to color zero.
; 216  :        */
; 217  :       if (c >= slot)

	cmp	ax, WORD PTR _slot
	jl	SHORT $L19507

; 218  : 				c = 0;

	xor	eax, eax
$L19507:

; 219  : 
; 220  :       oc = fc = c;
; 221  : 
; 222  :       /* And let us not forget to put the char into the buffer... And
; 223  :        * if, on the off chance, we were exactly one pixel from the end
; 224  :        * of the line, we have to send the buffer to the out_line()
; 225  :        * routine...
; 226  :        */
; 227  : 
; 228  : 	  //long fc = GetTickCount();//palette[c*3+0]<<16;
; 229  : 
; 230  :       *bufptr++ = (unsigned char)c;
; 231  :       *output++ = (unsigned char)c;

	mov	ecx, DWORD PTR _output$[esp+32]
	mov	BYTE PTR [edi], al
	inc	edi
	inc	ecx
	mov	BYTE PTR [ecx-1], al

; 232  : 
; 233  :       if (--bufcnt == 0)

	dec	ebp
	test	bp, bp
	mov	DWORD PTR _fc$[esp+32], eax
	mov	DWORD PTR _oc$[esp+28], eax
	mov	DWORD PTR _output$[esp+32], ecx
	jne	$L19524

; 234  : 			{
; 235  :          bufptr = buf;

	mov	edi, DWORD PTR _buf$[esp+32]

; 236  :          bufcnt = width;

	mov	ebp, DWORD PTR _width$[esp+28]

; 237  :       }
; 238  : 		}
; 239  :     else

	jmp	$L19524
$L19502:

; 240  :     {
; 241  : 
; 242  :       /* In this case, it's not a clear code or an ending code, so
; 243  :        * it must be a code code...  So we can now decode the code into
; 244  :        * a stack of character codes. (Clear as mud, right?)
; 245  :        */
; 246  :       code = c;
; 247  : 
; 248  :       /* Here we go again with one of those off chances...  If, on the
; 249  :        * off chance, the code we got is beyond the range of those already
; 250  :        * set up (Another thing which had better NOT happen...) we trick
; 251  :        * the decoder into thinking it actually got the last code read.
; 252  :        * (Hmmn... I'm not sure why this works...  But it does...)
; 253  :        */
; 254  :       if (code >= slot)

	mov	ax, WORD PTR _slot
	cmp	bx, ax
	mov	ecx, ebx
	jl	SHORT $L19773

; 255  : 			{
; 256  :          code = oc;
; 257  :          *sp++ = (unsigned char)fc;

	mov	dl, BYTE PTR _fc$[esp+32]
	mov	ecx, DWORD PTR _oc$[esp+28]
	mov	BYTE PTR [esi], dl
	inc	esi
$L19773:

; 258  :       }
; 259  : 
; 260  :       /* Here we scan back along the linked list of prefixes, pushing
; 261  :        * helpless characters (ie. suffixes) onto the stack as we do so.
; 262  :        */
; 263  :       while (code >= newcodes)

	cmp	cx, WORD PTR _newcodes
	jl	SHORT $L19516
$L19515:

; 264  :       {
; 265  :          *sp++ = suffix[code];

	movsx	ecx, cx
	mov	dl, BYTE PTR _suffix[ecx]

; 266  :          code = prefix[code];

	mov	cx, WORD PTR _prefix[ecx*2]
	mov	BYTE PTR [esi], dl
	inc	esi
	cmp	cx, WORD PTR _newcodes
	jge	SHORT $L19515
$L19516:

; 267  :       }
; 268  : 
; 269  :       /* Push the last character on the stack, and set up the new
; 270  :        * prefix and suffix, and if the required slot number is greater
; 271  :        * than that allowed by the current bit size, increase the bit
; 272  :        * size.  (NOTE - If we are all full, we *don't* save the new
; 273  :        * suffix and prefix...  I'm not certain if this is correct...
; 274  :        * it might be more proper to overwrite the last code...
; 275  :        */
; 276  :       *sp++ = (unsigned char)code;

	mov	BYTE PTR [esi], cl
	inc	esi

; 277  :       if (slot < top_slot)

	cmp	ax, WORD PTR _top_slot
	jge	SHORT $L19779

; 278  :       {
; 279  : 				fc = code;
; 280  :         suffix[slot] = (unsigned char)code;

	movsx	edx, ax

; 281  :         prefix[slot++] = oc;

	inc	ax

; 282  :         oc = c;
; 283  :       }
; 284  :       if (slot >= top_slot)

	cmp	ax, WORD PTR _top_slot
	mov	DWORD PTR _fc$[esp+32], ecx
	mov	BYTE PTR _suffix[edx], cl
	mov	cx, WORD PTR _oc$[esp+28]
	mov	WORD PTR _prefix[edx*2], cx
	mov	WORD PTR _slot, ax
	mov	DWORD PTR _oc$[esp+28], ebx
	jl	SHORT $L19774
$L19779:

; 285  :         if (curr_size < 12)

	cmp	WORD PTR _curr_size, 12			; 0000000cH
	jge	SHORT $L19774

; 286  :         {
; 287  :         	top_slot <<= 1;

	shl	WORD PTR _top_slot, 1

; 288  :           ++curr_size;

	inc	WORD PTR _curr_size
$L19774:

; 289  : 				}
; 290  : 
; 291  :       /* Now that we've pushed the decoded string (in reverse order)
; 292  :        * onto the stack, lets pop it off and put it into our decode
; 293  :        * buffer...  And when the decode buffer is full, write another
; 294  :        * line...
; 295  :        */
; 296  :       while (sp > stack) {

	cmp	esi, OFFSET FLAT:_stack
	jbe	SHORT $L19524
$L19523:

; 297  :         *bufptr++ = *(--sp);

	mov	dl, BYTE PTR [esi-1]

; 298  :         *output++ = *sp;

	mov	eax, DWORD PTR _output$[esp+32]
	dec	esi
	mov	BYTE PTR [edi], dl
	mov	cl, BYTE PTR [esi]
	inc	edi
	inc	eax
	mov	BYTE PTR [eax-1], cl

; 299  :         if (--bufcnt == 0)

	dec	ebp
	test	bp, bp
	mov	DWORD PTR _output$[esp+32], eax
	jne	SHORT $L19525

; 300  :         {
; 301  :           bufptr = buf;

	mov	edi, DWORD PTR _buf$[esp+32]

; 302  :           bufcnt = width;

	mov	ebp, DWORD PTR _width$[esp+28]
$L19525:

; 289  : 				}
; 290  : 
; 291  :       /* Now that we've pushed the decoded string (in reverse order)
; 292  :        * onto the stack, lets pop it off and put it into our decode
; 293  :        * buffer...  And when the decode buffer is full, write another
; 294  :        * line...
; 295  :        */
; 296  :       while (sp > stack) {

	cmp	esi, OFFSET FLAT:_stack
	ja	SHORT $L19523
$L19524:

; 172  :   bufcnt = width;
; 173  : 
; 174  :    /* This is the main loop.  For each code we get we pass through the
; 175  :     * linked list of prefix codes, pushing the corresponding "character" for
; 176  :     * each code onto the stack.  When the list reaches a single "character"
; 177  :     * we push that on the stack too, and then start unstacking each
; 178  :     * character for output in the correct order.  Special handling is
; 179  :     * included for the clear code, and the whole thing ends when we get
; 180  :     * an ending code.
; 181  :     */
; 182  :   while ((c = get_next_code()) != ending)

	call	?get_next_code@@YAFXZ			; get_next_code
	mov	ebx, eax
	cmp	bx, WORD PTR _ending
	jne	$L19499
$L19776:

; 303  :         }
; 304  :       }
; 305  :     }
; 306  : 	}
; 307  :   ret = 0;
; 308  : 
; 309  :   GlobalFree(buf);

	mov	eax, DWORD PTR _buf$[esp+32]
	push	eax
	call	DWORD PTR __imp__GlobalFree@4
	pop	edi
	pop	esi
	pop	ebp

; 310  : 	return(ret);

	xor	ax, ax
	pop	ebx

; 311  :  }

	add	esp, 16					; 00000010H
	ret	0
$L19775:

; 188  : 		{
; 189  :       GlobalFree(buf);

	mov	edx, DWORD PTR _buf$[esp+32]
	push	edx
	call	DWORD PTR __imp__GlobalFree@4
	pop	edi
	pop	esi
	pop	ebp

; 190  :       return(0);

	xor	ax, ax
	pop	ebx

; 311  :  }

	add	esp, 16					; 00000010H
	ret	0
$L19496:

; 154  :     return(-1);

	or	ax, -1
$L19481:
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 311  :  }

	add	esp, 16					; 00000010H
	ret	0
?decode@@YAFPAEFF@Z ENDP				; decode
_TEXT	ENDS
PUBLIC	?glaUploadTexture@@YAXHPAJHH@Z			; glaUploadTexture
EXTRN	__imp__glGenTextures@8:NEAR
EXTRN	__fltused:NEAR
EXTRN	__imp__glPixelStorei@8:NEAR
EXTRN	__imp__glShadeModel@4:NEAR
EXTRN	__imp__glTexEnvi@12:NEAR
EXTRN	__imp__glTexImage2D@36:NEAR
EXTRN	__imp__glTexParameterf@12:NEAR
EXTRN	__imp__glBindTexture@8:NEAR
;	COMDAT ?glaUploadTexture@@YAXHPAJHH@Z
_TEXT	SEGMENT
_n$ = 8
_source$ = 12
_w$ = 16
_h$ = 20
?glaUploadTexture@@YAXHPAJHH@Z PROC NEAR		; glaUploadTexture, COMDAT

; 315  : void glaUploadTexture( int n, long *source, int w, int h ) {

	push	esi

; 316  : 	glPixelStorei(GL_UNPACK_ALIGNMENT, 1);

	push	1
	push	3317					; 00000cf5H
	call	DWORD PTR __imp__glPixelStorei@8

; 317  : 	glGenTextures( 1, &tex_id[n] );

	mov	eax, DWORD PTR _n$[esp]
	lea	esi, DWORD PTR ?tex_id@@3PAIA[eax*4]
	push	esi
	push	1
	call	DWORD PTR __imp__glGenTextures@8

; 318  : 	
; 319  : 	glShadeModel(GL_SMOOTH);

	push	7425					; 00001d01H
	call	DWORD PTR __imp__glShadeModel@4

; 320  : 
; 321  : 	glBindTexture( GL_TEXTURE_2D, tex_id[n] );

	mov	ecx, DWORD PTR [esi]
	push	ecx
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glBindTexture@8

; 322  : 
; 323  : 	glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT );

	mov	esi, DWORD PTR __imp__glTexParameterf@12
	push	1176765440				; 46240400H
	push	10242					; 00002802H
	push	3553					; 00000de1H
	call	esi

; 324  : 	glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT );

	push	1176765440				; 46240400H
	push	10243					; 00002803H
	push	3553					; 00000de1H
	call	esi

; 325  : 	glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );//_MIPMAP_LINEAR);

	push	1175979008				; 46180400H
	push	10240					; 00002800H
	push	3553					; 00000de1H
	call	esi

; 326  : 	glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );//_MIPMAP_LINEAR);

	push	1175979008				; 46180400H
	push	10241					; 00002801H
	push	3553					; 00000de1H
	call	esi

; 327  : 
; 328  : 	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_DECAL);

	push	8449					; 00002101H
	push	8704					; 00002200H
	push	8960					; 00002300H
	call	DWORD PTR __imp__glTexEnvi@12

; 329  : 
; 330  : 	glTexImage2D( GL_TEXTURE_2D, 0, 4, 
; 331  : 			w, 
; 332  : 			h,
; 333  : 			0, GL_RGBA, GL_UNSIGNED_BYTE, 
; 334  : 			source );

	mov	edx, DWORD PTR _source$[esp]
	mov	eax, DWORD PTR _h$[esp]
	mov	ecx, DWORD PTR _w$[esp]
	push	edx
	push	5121					; 00001401H
	push	6408					; 00001908H
	push	0
	push	eax
	push	ecx
	push	4
	push	0
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glTexImage2D@36
	pop	esi

; 335  : };

	ret	0
?glaUploadTexture@@YAXHPAJHH@Z ENDP			; glaUploadTexture
_TEXT	ENDS
PUBLIC	?glaFreeTexture@@YAXH@Z				; glaFreeTexture
;	COMDAT ?glaFreeTexture@@YAXH@Z
_TEXT	SEGMENT
?glaFreeTexture@@YAXH@Z PROC NEAR			; glaFreeTexture, COMDAT

; 338  : 	//gl
; 339  : };

	ret	0
?glaFreeTexture@@YAXH@Z ENDP				; glaFreeTexture
_TEXT	ENDS
PUBLIC	?glaSetTexture@@YAXH@Z				; glaSetTexture
EXTRN	__imp__glEnable@4:NEAR
;	COMDAT ?glaSetTexture@@YAXH@Z
_TEXT	SEGMENT
_n$ = 8
?glaSetTexture@@YAXH@Z PROC NEAR			; glaSetTexture, COMDAT

; 342  : 	//glDisable( GL_TEXTURE_1D );
; 343  : 	glEnable( GL_TEXTURE_2D );

	push	3553					; 00000de1H
	call	DWORD PTR __imp__glEnable@4

; 344  : 	glBindTexture( GL_TEXTURE_2D, tex_id[n] );

	mov	eax, DWORD PTR _n$[esp-4]
	mov	ecx, DWORD PTR ?tex_id@@3PAIA[eax*4]
	push	ecx
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glBindTexture@8

; 345  : };

	ret	0
?glaSetTexture@@YAXH@Z ENDP				; glaSetTexture
_TEXT	ENDS
PUBLIC	?glaUploadGif@@YAXHPAEJ@Z			; glaUploadGif
;	COMDAT ?glaUploadGif@@YAXHPAEJ@Z
_TEXT	SEGMENT
_n$ = 8
_packedgif$ = 12
_transparentcolor$ = 16
__image$ = -12
__rgb$ = -8
_palette$ = 12
_w$ = -8
_h$ = 12
?glaUploadGif@@YAXHPAEJ@Z PROC NEAR			; glaUploadGif, COMDAT

; 347  : void glaUploadGif( int n, unsigned char *packedgif, long transparentcolor ) {

	sub	esp, 12					; 0000000cH

; 348  : 	unsigned char *_image;
; 349  : 	long *_rgb;
; 350  : 
; 351  : 	unsigned char *palette;
; 352  : 	unsigned short w, h;
; 353  : 
; 354  : 	int packed,i;
; 355  : 	char signature[] = "\0\0\0\0";
; 356  : 	char version[] = "\0\0\0\0";
; 357  : 	int endoffile = 0;
; 358  : 
; 359  : 	gifsource = packedgif;
; 360  : 
; 361  : 	memcpy( &signature, gifsource, 3 ); gifsource += 3;
; 362  : 	memcpy( &version, gifsource, 3 ); gifsource += 3;
; 363  : 
; 364  : 	gifsource += 2;
; 365  : 	gifsource += 2;

	mov	eax, DWORD PTR _packedgif$[esp+8]
	push	ebx
	push	ebp
	push	esi
	add	eax, 10					; 0000000aH
	push	edi
	mov	DWORD PTR _gifsource, eax

; 366  : 	packed = *gifsource; gifsource ++;

	xor	ebx, ebx
	mov	bl, BYTE PTR [eax]

; 367  : 	gifsource ++;
; 368  : 	gifsource ++;
; 369  : 
; 370  : 	palette = (unsigned char *)GlobalAlloc( MEM_COMMIT, 1024 );

	push	1024					; 00000400H
	add	eax, 3
	push	4096					; 00001000H
	mov	DWORD PTR _gifsource, eax
	call	DWORD PTR __imp__GlobalAlloc@8

; 371  : 
; 372  : 	if( packed & 0x80)

	test	bl, -128				; ffffff80H
	mov	esi, eax
	mov	DWORD PTR _palette$[esp+24], esi
	je	SHORT $L19810

; 373  : 	{
; 374  : 		for( i=0; i<pow2((packed & 0x07) + 1); i++)

	and	ebx, 7
	xor	edi, edi
	inc	ebx
	push	ebx
	call	?pow2@@YAHH@Z				; pow2
	add	esp, 4
	test	eax, eax
	jle	SHORT $L19810
	add	esi, 2
$L19557:

; 375  : 		{
; 376  : 			palette[i*3+0] = *gifsource; gifsource ++;

	mov	ecx, DWORD PTR _gifsource
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR [esi-2], dl
	mov	eax, DWORD PTR _gifsource
	inc	eax
	mov	DWORD PTR _gifsource, eax

; 377  : 			palette[i*3+1] = *gifsource; gifsource ++;

	mov	al, BYTE PTR [eax]
	mov	BYTE PTR [esi-1], al
	mov	eax, DWORD PTR _gifsource
	inc	eax
	mov	DWORD PTR _gifsource, eax

; 378  : 			palette[i*3+2] = *gifsource; gifsource ++;

	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR [esi], cl
	mov	edx, DWORD PTR _gifsource
	inc	edx
	push	ebx
	mov	DWORD PTR _gifsource, edx
	inc	edi
	add	esi, 3
	call	?pow2@@YAHH@Z				; pow2
	add	esp, 4
	cmp	edi, eax
	jl	SHORT $L19557
$L19810:

; 373  : 	{
; 374  : 		for( i=0; i<pow2((packed & 0x07) + 1); i++)

	mov	eax, DWORD PTR _gifsource
$L19560:

; 379  : 		}
; 380  : 	}
; 381  : 
; 382  : 	do
; 383  : 	{
; 384  : 		unsigned char shitt = *gifsource; gifsource ++;

	mov	cl, BYTE PTR [eax]
	inc	eax

; 385  : 		switch( shitt )
; 386  : 		{

	cmp	cl, 33					; 00000021H
	mov	DWORD PTR _gifsource, eax
	je	SHORT $L19575
	cmp	cl, 44					; 0000002cH
	je	SHORT $L19568
	cmp	cl, 59					; 0000003bH
	je	$L19814
	jmp	SHORT $L19560
$L19575:

; 415  : 				endoffile = 1;
; 416  : 
; 417  : 				break;
; 418  : 			}
; 419  : 			case 0x3b:
; 420  : 			{
; 421  : 				endoffile = 1;
; 422  : 				break;
; 423  : 			}
; 424  : 			case 0x21:
; 425  : 			{
; 426  : 				gifsource ++;

	inc	eax
	mov	DWORD PTR _gifsource, eax

; 427  : 				while( *gifsource != '\0') gifsource ++;

	cmp	BYTE PTR [eax], 0
	je	SHORT $L19560
$L19577:
	inc	eax
	mov	DWORD PTR _gifsource, eax
	cmp	BYTE PTR [eax], 0
	jne	SHORT $L19577

; 428  : 			}
; 429  : 		}
; 430  : 	} while( !endoffile);

	jmp	SHORT $L19560
$L19568:

; 387  : 			case 0x2c:
; 388  : 			{
; 389  : 				gifsource += 2;
; 390  : 				gifsource += 2;

	add	eax, 4
	mov	DWORD PTR _gifsource, eax

; 391  : 				memcpy( &w, gifsource, 2 ); gifsource += 2;

	mov	si, WORD PTR [eax]
	add	eax, 2
	mov	DWORD PTR _gifsource, eax

; 392  : 				memcpy( &h, gifsource, 2 ); gifsource += 2;

	mov	bp, WORD PTR [eax]
	add	eax, 2
	mov	DWORD PTR _gifsource, eax

; 393  : 				packed = *gifsource; gifsource ++;

	xor	ebx, ebx
	mov	bl, BYTE PTR [eax]
	inc	eax
	mov	DWORD PTR _gifsource, eax

; 394  : 
; 395  : 				_image = (unsigned char *)GlobalAlloc( MEM_COMMIT, w*h ); // x3 == RGB

	mov	edx, ebp
	mov	eax, esi
	and	edx, 65535				; 0000ffffH
	and	eax, 65535				; 0000ffffH
	imul	edx, eax
	push	edx
	push	4096					; 00001000H
	mov	DWORD PTR _w$[esp+36], esi
	call	DWORD PTR __imp__GlobalAlloc@8

; 396  : 
; 397  : 				if( packed & 0x80)

	test	bl, -128				; ffffff80H
	mov	DWORD PTR __image$[esp+28], eax
	je	SHORT $L19816

; 398  : 				{
; 399  : 					for( i=0; i<pow2((packed & 0x07) + 1); i++)

	and	ebx, 7
	xor	edi, edi
	inc	ebx
	push	ebx
	mov	DWORD PTR -4+[esp+32], ebx
	call	?pow2@@YAHH@Z				; pow2
	add	esp, 4
	test	eax, eax
	jle	SHORT $L19816
	mov	ebx, DWORD PTR _palette$[esp+24]
	lea	esi, DWORD PTR [ebx+2]
$L19571:

; 400  : 					{
; 401  : 						palette[i*3+0] = *gifsource; gifsource ++;

	mov	ecx, DWORD PTR _gifsource
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR [esi-2], dl
	mov	eax, DWORD PTR _gifsource
	mov	edx, DWORD PTR -4+[esp+28]
	inc	eax
	mov	DWORD PTR _gifsource, eax

; 402  : 						palette[i*3+1] = *gifsource; gifsource ++;

	mov	al, BYTE PTR [eax]
	mov	BYTE PTR [esi-1], al
	mov	eax, DWORD PTR _gifsource
	inc	eax
	mov	DWORD PTR _gifsource, eax

; 403  : 						palette[i*3+2] = *gifsource; gifsource ++;

	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR [esi], cl
	mov	eax, DWORD PTR _gifsource
	inc	eax
	push	edx
	mov	DWORD PTR _gifsource, eax
	inc	edi
	add	esi, 3
	call	?pow2@@YAHH@Z				; pow2
	add	esp, 4
	cmp	edi, eax
	jl	SHORT $L19571
	mov	esi, DWORD PTR _w$[esp+28]

; 404  : 					}
; 405  : 				}
; 406  : 
; 407  : 				/*long j;
; 408  : 				for( j=0; j<((w*h)/10); j++ ) {
; 409  : 					image[j] = j*123;
; 410  : 				};*/
; 411  : 
; 412  : 				//image[1] = 123;
; 413  : 
; 414  : 				decode( _image, w, h );

	mov	eax, DWORD PTR __image$[esp+28]
	push	ebp
	push	esi
	push	eax
	call	?decode@@YAFPAEFF@Z			; decode
	add	esp, 12					; 0000000cH
	jmp	SHORT $L19799
$L19816:
	mov	eax, DWORD PTR __image$[esp+28]
	mov	ebx, DWORD PTR _palette$[esp+24]
	push	ebp
	push	esi
	push	eax
	call	?decode@@YAFPAEFF@Z			; decode
	add	esp, 12					; 0000000cH
	jmp	SHORT $L19799
$L19814:
	mov	ebp, DWORD PTR _h$[esp+24]
	mov	ebx, DWORD PTR _palette$[esp+24]
	mov	esi, DWORD PTR _w$[esp+28]
$L19799:

; 431  : 
; 432  : 	_rgb = (long*)GlobalAlloc( MEM_COMMIT, w*h*4 );

	and	esi, 65535				; 0000ffffH
	and	ebp, 65535				; 0000ffffH
	mov	DWORD PTR -4+[esp+28], esi
	imul	esi, ebp
	lea	ecx, DWORD PTR [esi*4]
	push	ecx
	push	4096					; 00001000H
	call	DWORD PTR __imp__GlobalAlloc@8

; 433  : 
; 434  : 	for( i=0; i<w*h; i++ ) {

	xor	edi, edi
	test	esi, esi
	mov	DWORD PTR __rgb$[esp+28], eax
	jle	SHORT $L19582

; 431  : 
; 432  : 	_rgb = (long*)GlobalAlloc( MEM_COMMIT, w*h*4 );

	mov	DWORD PTR 12+[esp+24], eax
$L19580:

; 435  : 		int s = _image[i]*3;

	mov	edx, DWORD PTR __image$[esp+28]
	xor	eax, eax
	mov	al, BYTE PTR [edx+edi]

; 436  : 		long c = palette[s+0] + (palette[s+1]<<8) + (palette[s+2]<<16);

	xor	edx, edx
	lea	ecx, DWORD PTR [eax+eax*2]
	mov	dl, BYTE PTR [ebx+ecx+1]
	xor	eax, eax
	mov	al, BYTE PTR [ebx+ecx+2]
	shl	eax, 8
	add	eax, edx
	xor	edx, edx
	mov	dl, BYTE PTR [ecx+ebx]

; 437  : 		if( c==transparentcolor ) {

	mov	ecx, DWORD PTR _transparentcolor$[esp+24]
	shl	eax, 8
	add	eax, edx
	cmp	eax, ecx
	jne	SHORT $L19585

; 438  : 			_rgb[i] = 0x00000000;

	mov	eax, DWORD PTR 12+[esp+24]
	mov	DWORD PTR [eax], 0

; 439  : 		} else {

	jmp	SHORT $L19581
$L19585:

; 440  : 			_rgb[i] = c | (0xFF<<24);

	mov	ecx, DWORD PTR 12+[esp+24]
	or	eax, -16777216				; ff000000H
	mov	DWORD PTR [ecx], eax
$L19581:
	mov	ecx, DWORD PTR 12+[esp+24]
	inc	edi
	add	ecx, 4
	cmp	edi, esi
	mov	DWORD PTR 12+[esp+24], ecx
	jl	SHORT $L19580

; 433  : 
; 434  : 	for( i=0; i<w*h; i++ ) {

	mov	eax, DWORD PTR __rgb$[esp+28]
$L19582:

; 441  : 		};
; 442  : 		//_rgb[i] = (s<<16) + (s<<8) + s;
; 443  : 		//_rgb[i] = (rand()%255)<<(rand()%23);
; 444  : 	};
; 445  : 
; 446  : 	//image[0] = 11234;
; 447  : 
; 448  : 	glaUploadTexture( n, _rgb, w, h );

	mov	edx, DWORD PTR -4+[esp+28]
	push	ebp
	push	edx
	push	eax
	mov	eax, DWORD PTR _n$[esp+36]
	push	eax
	call	?glaUploadTexture@@YAXHPAJHH@Z		; glaUploadTexture

; 449  : 
; 450  :     GlobalFree( palette );

	mov	esi, DWORD PTR __imp__GlobalFree@4
	add	esp, 16					; 00000010H
	push	ebx
	call	esi

; 451  : 	GlobalFree( _rgb );

	mov	ecx, DWORD PTR __rgb$[esp+28]
	push	ecx
	call	esi

; 452  : 	GlobalFree( _image );

	mov	edx, DWORD PTR __image$[esp+28]
	push	edx
	call	esi
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 453  : 
; 454  : 	//return( image);
; 455  : };

	add	esp, 12					; 0000000cH
	ret	0
?glaUploadGif@@YAXHPAEJ@Z ENDP				; glaUploadGif
_TEXT	ENDS
PUBLIC	?glaQuad@@YAXMMMMMMMMM@Z			; glaQuad
EXTRN	__imp__glTexCoord2f@8:NEAR
EXTRN	__imp__glVertex3f@12:NEAR
;	COMDAT ?glaQuad@@YAXMMMMMMMMM@Z
_TEXT	SEGMENT
_xc$ = 8
_yc$ = 12
_zc$ = 16
_xr$ = 20
_yr$ = 24
_u1$ = 28
_v1$ = 32
_u2$ = 36
_v2$ = 40
?glaQuad@@YAXMMMMMMMMM@Z PROC NEAR			; glaQuad, COMDAT

; 457  : void glaQuad( float xc, float yc, float zc, float xr, float yr, float u1, float v1, float u2, float v2 ) {

	push	ecx

; 458  : 	glTexCoord2f( u1, v1 ); 

	mov	eax, DWORD PTR _u1$[esp]
	push	ebx
	push	ebp
	mov	ebp, DWORD PTR _v1$[esp+8]
	push	esi
	mov	esi, DWORD PTR __imp__glTexCoord2f@8
	push	edi
	push	ebp
	push	eax
	call	esi

; 459  : 	glVertex3f( xc-xr, yc-yr, zc );

	fld	DWORD PTR _yc$[esp+16]
	fsub	DWORD PTR _yr$[esp+16]
	mov	edi, DWORD PTR _zc$[esp+16]
	mov	ebx, DWORD PTR __imp__glVertex3f@12
	push	edi
	fstp	DWORD PTR 32+[esp+20]
	fld	DWORD PTR _xc$[esp+20]
	mov	ecx, DWORD PTR 32+[esp+20]
	fsub	DWORD PTR _xr$[esp+20]
	push	ecx
	fstp	DWORD PTR -4+[esp+28]
	mov	edx, DWORD PTR -4+[esp+28]
	push	edx
	call	ebx

; 460  : 
; 461  : 	glTexCoord2f( u2, v1 ); 

	push	ebp
	mov	ebp, DWORD PTR _u2$[esp+20]
	push	ebp
	call	esi

; 462  : 	glVertex3f( xc+xr, yc-yr, zc );

	fld	DWORD PTR _xc$[esp+16]
	fadd	DWORD PTR _xr$[esp+16]
	mov	eax, DWORD PTR 32+[esp+16]
	push	edi
	push	eax
	fstp	DWORD PTR 8+[esp+24]
	mov	ecx, DWORD PTR 8+[esp+24]
	push	ecx
	call	ebx

; 463  : 
; 464  : 	glTexCoord2f( u2, v2 ); 

	mov	edx, DWORD PTR _v2$[esp+16]
	push	edx
	push	ebp
	call	esi

; 465  : 	glVertex3f( xc+xr, yc+yr, zc );

	fld	DWORD PTR _yc$[esp+16]
	fadd	DWORD PTR _yr$[esp+16]
	mov	eax, DWORD PTR 8+[esp+16]
	push	edi
	fstp	DWORD PTR 20+[esp+20]
	mov	ebp, DWORD PTR 20+[esp+20]
	push	ebp
	push	eax
	call	ebx

; 466  : 
; 467  : 	glTexCoord2f( u1, v2 ); 

	mov	ecx, DWORD PTR _v2$[esp+16]
	mov	edx, DWORD PTR _u1$[esp+16]
	push	ecx
	push	edx
	call	esi

; 468  : 	glVertex3f( xc-xr, yc+yr, zc );

	mov	eax, DWORD PTR -4+[esp+20]
	push	edi
	push	ebp
	push	eax
	call	ebx
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 469  : };

	pop	ecx
	ret	0
?glaQuad@@YAXMMMMMMMMM@Z ENDP				; glaQuad
_TEXT	ENDS
PUBLIC	?glaRotate2d@@YAXPAM0MMM@Z			; glaRotate2d
;	COMDAT ?glaRotate2d@@YAXPAM0MMM@Z
_TEXT	SEGMENT
_x2$ = 8
_y2$ = 12
_x$ = 16
_y$ = 20
_r$ = 24
?glaRotate2d@@YAXPAM0MMM@Z PROC NEAR			; glaRotate2d, COMDAT

; 472  : 	float xx, yy;
; 473  : 	xx = x*(float)cos(r) + y*(float)sin(r);
; 474  : 	yy = x*-(float)sin(r) + y*(float)cos(r);
; 475  : 	*x2 = xx;
; 476  : 	*y2 = yy;

	fld	DWORD PTR _r$[esp-4]
	mov	eax, DWORD PTR _x2$[esp-4]
	fcos
	mov	ecx, DWORD PTR _y2$[esp-4]
	fld	DWORD PTR _r$[esp-4]
	fsin
	fld	ST(0)
	fmul	DWORD PTR _y$[esp-4]
	fld	ST(2)
	fmul	DWORD PTR _x$[esp-4]
	faddp	ST(1), ST(0)
	fstp	DWORD PTR [eax]
	fxch	ST(1)
	fmul	DWORD PTR _y$[esp-4]
	fxch	ST(1)
	fmul	DWORD PTR _x$[esp-4]
	fsubp	ST(1), ST(0)
	fstp	DWORD PTR [ecx]

; 477  : };

	ret	0
?glaRotate2d@@YAXPAM0MMM@Z ENDP				; glaRotate2d
_TEXT	ENDS
PUBLIC	__real@4@3ff98efa355555555800
PUBLIC	?glaQuadR@@YAXMMMMMMMMMM@Z			; glaQuadR
;	COMDAT __real@4@3ff98efa355555555800
; File D:\prj64k\glAss (eventad)\misccode\gla_stuff2.cpp
CONST	SEGMENT
__real@4@3ff98efa355555555800 DD 03c8efa35r	; 0.0174533
CONST	ENDS
;	COMDAT ?glaQuadR@@YAXMMMMMMMMMM@Z
_TEXT	SEGMENT
_xc$ = 8
_yc$ = 12
_zc$ = 16
_angle$ = 20
_xr$ = 24
_yr$ = 28
_u1$ = 32
_v1$ = 36
_u2$ = 40
_v2$ = 44
_rx$ = -16
_ry$ = -32
_rangle$ = 20
?glaQuadR@@YAXMMMMMMMMMM@Z PROC NEAR			; glaQuadR, COMDAT

; 479  : void glaQuadR( float xc, float yc, float zc, float angle, float xr, float yr, float u1, float v1, float u2, float v2 ) {

	sub	esp, 40					; 00000028H

; 480  : 	
; 481  : 	float rx[4];
; 482  : 	float ry[4];
; 483  : 	float rangle = angle * M_PI / 180;

	fld	DWORD PTR _angle$[esp+36]
	push	ebx
	fmul	DWORD PTR __real@4@3ff98efa355555555800
	push	ebp
	push	esi
	push	edi
	fstp	DWORD PTR _rangle$[esp+52]

; 484  : 
; 485  : 	glaRotate2d( &rx[0], &ry[0], -xr, -yr, rangle );

	lea	eax, DWORD PTR _ry$[esp+56]
	fld	DWORD PTR _yr$[esp+52]
	mov	esi, DWORD PTR _rangle$[esp+52]
	fchs
	push	esi
	fstp	DWORD PTR -40+[esp+60]
	lea	ecx, DWORD PTR _rx$[esp+60]
	fld	DWORD PTR _xr$[esp+56]
	mov	edi, DWORD PTR -40+[esp+60]
	fchs
	push	edi
	fstp	DWORD PTR -36+[esp+64]
	mov	ebx, DWORD PTR -36+[esp+64]
	push	ebx
	push	eax
	push	ecx
	call	?glaRotate2d@@YAXPAM0MMM@Z		; glaRotate2d

; 486  : 	glaRotate2d( &rx[1], &ry[1],  xr, -yr, rangle );

	push	esi
	push	edi
	mov	edi, DWORD PTR _xr$[esp+80]
	push	edi
	lea	edx, DWORD PTR _ry$[esp+92]
	push	edx
	lea	eax, DWORD PTR _rx$[esp+96]
	push	eax
	call	?glaRotate2d@@YAXPAM0MMM@Z		; glaRotate2d

; 487  : 	glaRotate2d( &rx[2], &ry[2],  xr,  yr, rangle );

	mov	ebp, DWORD PTR _yr$[esp+92]
	push	esi
	push	ebp
	push	edi
	lea	ecx, DWORD PTR _ry$[esp+116]
	push	ecx
	lea	edx, DWORD PTR _rx$[esp+120]
	push	edx
	call	?glaRotate2d@@YAXPAM0MMM@Z		; glaRotate2d

; 488  : 	glaRotate2d( &rx[3], &ry[3], -xr,  yr, rangle );

	push	esi
	push	ebp
	push	ebx
	lea	eax, DWORD PTR _ry$[esp+140]
	push	eax
	lea	ecx, DWORD PTR _rx$[esp+144]
	push	ecx
	call	?glaRotate2d@@YAXPAM0MMM@Z		; glaRotate2d

; 489  : 
; 490  : 	glTexCoord2f( u1, v1 ); 

	mov	ebp, DWORD PTR _v1$[esp+132]
	mov	edx, DWORD PTR _u1$[esp+132]
	mov	esi, DWORD PTR __imp__glTexCoord2f@8
	add	esp, 80					; 00000050H
	push	ebp
	push	edx
	call	esi

; 491  : 	glVertex3f( xc+rx[0], yc+ry[0], zc );

	fld	DWORD PTR _ry$[esp+56]
	fadd	DWORD PTR _yc$[esp+52]
	mov	edi, DWORD PTR _zc$[esp+52]
	mov	ebx, DWORD PTR __imp__glVertex3f@12
	push	edi
	push	ecx
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _rx$[esp+68]
	fadd	DWORD PTR _xc$[esp+64]
	fstp	DWORD PTR [esp]
	call	ebx

; 492  : 
; 493  : 	glTexCoord2f( u2, v1 ); 

	push	ebp
	mov	ebp, DWORD PTR _u2$[esp+56]
	push	ebp
	call	esi

; 494  : 	glVertex3f( xc+rx[1], yc+ry[1], zc );

	fld	DWORD PTR _ry$[esp+60]
	fadd	DWORD PTR _yc$[esp+52]
	push	edi
	push	ecx
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _rx$[esp+72]
	fadd	DWORD PTR _xc$[esp+64]
	fstp	DWORD PTR [esp]
	call	ebx

; 495  : 
; 496  : 	glTexCoord2f( u2, v2 ); 

	mov	eax, DWORD PTR _v2$[esp+52]
	push	eax
	push	ebp
	call	esi

; 497  : 	glVertex3f( xc+rx[2], yc+ry[2], zc );

	fld	DWORD PTR _ry$[esp+64]
	fadd	DWORD PTR _yc$[esp+52]
	push	edi
	push	ecx
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _rx$[esp+76]
	fadd	DWORD PTR _xc$[esp+64]
	fstp	DWORD PTR [esp]
	call	ebx

; 498  : 
; 499  : 	glTexCoord2f( u1, v2 ); 

	mov	ecx, DWORD PTR _v2$[esp+52]
	mov	edx, DWORD PTR _u1$[esp+52]
	push	ecx
	push	edx
	call	esi

; 500  : 	glVertex3f( xc+rx[3], yc+ry[3], zc );

	fld	DWORD PTR _ry$[esp+68]
	fadd	DWORD PTR _yc$[esp+52]
	push	edi
	push	ecx
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _rx$[esp+80]
	fadd	DWORD PTR _xc$[esp+64]
	fstp	DWORD PTR [esp]
	call	ebx
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 501  : 
; 502  : };

	add	esp, 40					; 00000028H
	ret	0
?glaQuadR@@YAXMMMMMMMMMM@Z ENDP				; glaQuadR
_TEXT	ENDS
PUBLIC	?glaDefaultProjection@@YAXXZ			; glaDefaultProjection
EXTRN	__imp__glLoadIdentity@0:NEAR
EXTRN	__imp__glMatrixMode@4:NEAR
EXTRN	__imp__glOrtho@48:NEAR
EXTRN	__imp__glClearColor@16:NEAR
EXTRN	__imp__glClearDepth@8:NEAR
EXTRN	__imp__glDepthFunc@4:NEAR
;	COMDAT ?glaDefaultProjection@@YAXXZ
_TEXT	SEGMENT
?glaDefaultProjection@@YAXXZ PROC NEAR			; glaDefaultProjection, COMDAT

; 504  : void glaDefaultProjection() {

	push	esi
	push	edi

; 505  : 
; 506  : 	glClearColor( 0, 0, 0, 0 );

	push	0
	push	0
	push	0
	push	0
	call	DWORD PTR __imp__glClearColor@16

; 507  : 
; 508  : 	glMatrixMode( GL_PROJECTION );

	mov	esi, DWORD PTR __imp__glMatrixMode@4
	push	5889					; 00001701H
	call	esi

; 509  : 	glLoadIdentity();

	mov	edi, DWORD PTR __imp__glLoadIdentity@0
	call	edi

; 510  : 	//glOrtho( -1, 1, -0.75f, 0.75f, -100, 100 );
; 511  : 	glOrtho( -1, 1, -1, 1, -100, 100 );

	push	1079574528				; 40590000H
	push	0
	push	-1067909120				; c0590000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	-1074790400				; bff00000H
	push	0
	push	1072693248				; 3ff00000H
	push	0
	push	-1074790400				; bff00000H
	push	0
	call	DWORD PTR __imp__glOrtho@48

; 512  : 
; 513  : 	glMatrixMode( GL_MODELVIEW );

	push	5888					; 00001700H
	call	esi

; 514  : 	glLoadIdentity();

	call	edi

; 515  : 
; 516  : 	glMatrixMode( GL_TEXTURE );

	push	5890					; 00001702H
	call	esi

; 517  : 	glLoadIdentity();

	call	edi

; 518  : 
; 519  : 	glEnable( GL_DEPTH_TEST );

	push	2929					; 00000b71H
	call	DWORD PTR __imp__glEnable@4

; 520  : 	glDepthFunc( GL_LEQUAL );

	push	515					; 00000203H
	call	DWORD PTR __imp__glDepthFunc@4

; 521  : 	glClearDepth( 1.0f );

	push	1072693248				; 3ff00000H
	push	0
	call	DWORD PTR __imp__glClearDepth@8
	pop	edi
	pop	esi

; 522  : };

	ret	0
?glaDefaultProjection@@YAXXZ ENDP			; glaDefaultProjection
_TEXT	ENDS
PUBLIC	?misc_strlen@@YAJPAD@Z				; misc_strlen
;	COMDAT ?misc_strlen@@YAJPAD@Z
_TEXT	SEGMENT
_str$ = 8
?misc_strlen@@YAJPAD@Z PROC NEAR			; misc_strlen, COMDAT

; 528  : 	long l = 0;
; 529  : 	while( str[l] != 0 ) l++;

	mov	ecx, DWORD PTR _str$[esp-4]
	mov	dl, BYTE PTR [ecx]
	xor	eax, eax
	test	dl, dl
	je	SHORT $L19636
$L19635:
	mov	dl, BYTE PTR [eax+ecx+1]
	inc	eax
	test	dl, dl
	jne	SHORT $L19635
$L19636:

; 530  : 	return l;
; 531  : };

	ret	0
?misc_strlen@@YAJPAD@Z ENDP				; misc_strlen
_TEXT	ENDS
PUBLIC	__real@4@00000000000000000000
PUBLIC	__real@4@3ff98000000000000000
PUBLIC	__real@4@3ff8f000000000000000
PUBLIC	?glaDrawChar@@YAXMMMMMD@Z			; glaDrawChar
;	COMDAT __real@4@00000000000000000000
; File D:\prj64k\glAss (eventad)\misccode\gla_stuff2.cpp
CONST	SEGMENT
__real@4@00000000000000000000 DD 000000000r	; 0
CONST	ENDS
;	COMDAT __real@4@3ff98000000000000000
CONST	SEGMENT
__real@4@3ff98000000000000000 DD 03c800000r	; 0.015625
CONST	ENDS
;	COMDAT __real@4@3ff8f000000000000000
CONST	SEGMENT
__real@4@3ff8f000000000000000 DD 03c700000r	; 0.0146484
CONST	ENDS
;	COMDAT ?glaDrawChar@@YAXMMMMMD@Z
_TEXT	SEGMENT
_x$ = 8
_y$ = 12
_z$ = 16
_width$ = 20
_height$ = 24
_ch$ = 28
_f$ = -4
_v2$ = 28
?glaDrawChar@@YAXMMMMMD@Z PROC NEAR			; glaDrawChar, COMDAT

; 533  : void glaDrawChar( float x, float y, float z, float width, float height, char ch ) {

	push	ecx

; 534  : 
; 535  :     int ctn = misc_strlen( fonttable );

	mov	eax, DWORD PTR ?fonttable@@3PADA	; fonttable
	push	esi
	push	eax
	call	?misc_strlen@@YAJPAD@Z			; misc_strlen

; 536  :     int f = -1;
; 537  : 
; 538  : 	if( ch==32 ) return; // space...

	mov	dl, BYTE PTR _ch$[esp+8]
	or	esi, -1
	add	esp, 4
	cmp	dl, 32					; 00000020H
	mov	ecx, eax
	mov	DWORD PTR _f$[esp+8], esi
	je	$L19650

; 539  : 	
; 540  : 	int n;
; 541  : 	if( height == 0 || width == 0 ) return;

	fld	DWORD PTR _height$[esp+4]
	fcomp	DWORD PTR __real@4@00000000000000000000
	fnstsw	ax
	test	ah, 64					; 00000040H
	jne	SHORT $L19650
	fld	DWORD PTR _width$[esp+4]
	fcomp	DWORD PTR __real@4@00000000000000000000
	fnstsw	ax
	test	ah, 64					; 00000040H
	jne	SHORT $L19650

; 542  : 
; 543  :     for( n=0; n<ctn; n++ ) if( fonttable[n]==ch ) f = n;

	xor	eax, eax
	test	ecx, ecx
	jle	SHORT $L19650
	push	edi
	mov	edi, DWORD PTR ?fonttable@@3PADA	; fonttable
$L19651:
	cmp	BYTE PTR [edi+eax], dl
	jne	SHORT $L19652
	mov	esi, eax
$L19652:
	inc	eax
	cmp	eax, ecx
	jl	SHORT $L19651

; 544  :     if( f==-1 ) return;

	cmp	esi, -1
	pop	edi
	mov	DWORD PTR _f$[esp+8], esi
	je	SHORT $L19650

; 545  : 
; 546  : 	float num = (1024.0f/16.0f);
; 547  : 	float one = 1.0f / num;
; 548  : 	float v1, v2;
; 549  : 	v2 = f*one;

	fild	DWORD PTR _f$[esp+8]

; 550  : 	v1 = v2+one*15.0f/16.0f; // *FULKÅD*
; 551  : 
; 552  : 	glaQuad( x, y, z, width, height, 0, v1, 1, v2 );

	mov	edx, DWORD PTR _height$[esp+4]
	mov	eax, DWORD PTR _width$[esp+4]
	fmul	DWORD PTR __real@4@3ff98000000000000000
	fstp	DWORD PTR _v2$[esp+4]
	mov	ecx, DWORD PTR _v2$[esp+4]
	fld	DWORD PTR _v2$[esp+4]
	fadd	DWORD PTR __real@4@3ff8f000000000000000
	push	ecx
	push	1065353216				; 3f800000H
	push	ecx
	mov	ecx, DWORD PTR _z$[esp+16]
	fstp	DWORD PTR [esp]
	push	0
	push	edx
	mov	edx, DWORD PTR _y$[esp+24]
	push	eax
	mov	eax, DWORD PTR _x$[esp+28]
	push	ecx
	push	edx
	push	eax
	call	?glaQuad@@YAXMMMMMMMMM@Z		; glaQuad
	add	esp, 36					; 00000024H
$L19650:
	pop	esi

; 553  : };

	pop	ecx
	ret	0
?glaDrawChar@@YAXMMMMMD@Z ENDP				; glaDrawChar
_TEXT	ENDS
PUBLIC	__real@4@3ffe8000000000000000
PUBLIC	?glaDrawString@@YAXMMMMMMPAD@Z			; glaDrawString
;	COMDAT __real@4@3ffe8000000000000000
; File D:\prj64k\glAss (eventad)\misccode\gla_stuff2.cpp
CONST	SEGMENT
__real@4@3ffe8000000000000000 DD 03f000000r	; 0.5
CONST	ENDS
;	COMDAT ?glaDrawString@@YAXMMMMMMPAD@Z
_TEXT	SEGMENT
_xc$ = 8
_yc$ = 12
_zc$ = 16
_w$ = 20
_h$ = 24
_spacing$ = 28
_texten$ = 32
_l$ = 32
_x1$ = 8
_j$ = 32
?glaDrawString@@YAXMMMMMMPAD@Z PROC NEAR		; glaDrawString, COMDAT

; 555  : void glaDrawString( float xc, float yc, float zc, float w, float h, float spacing, char *texten ) {

	push	ebx

; 556  :   long l = misc_strlen(texten);

	mov	ebx, DWORD PTR _texten$[esp]
	push	esi
	push	edi
	push	ebx
	call	?misc_strlen@@YAJPAD@Z			; misc_strlen
	mov	edi, eax
	mov	DWORD PTR _l$[esp+12], edi

; 557  :   float x1 = xc - (l*spacing/2);

	fild	DWORD PTR _l$[esp+12]

; 558  :   int j;
; 559  :   for( j=0; j<l; j++ ) {

	xor	esi, esi
	add	esp, 4
	test	edi, edi
	fmul	DWORD PTR _spacing$[esp+8]
	mov	DWORD PTR _j$[esp+8], esi
	fmul	DWORD PTR __real@4@3ffe8000000000000000
	fsubr	DWORD PTR _xc$[esp+8]
	fstp	DWORD PTR _x1$[esp+8]
	jle	SHORT $L19674
	push	ebp
	mov	ebp, DWORD PTR _h$[esp+12]
$L19672:

; 560  :     glaDrawChar( x1 + (j*spacing), yc, zc, w, h, texten[j] );

	fild	DWORD PTR _j$[esp+12]
	mov	ecx, DWORD PTR _w$[esp+12]
	mov	edx, DWORD PTR _zc$[esp+12]
	xor	eax, eax
	mov	al, BYTE PTR [esi+ebx]
	fmul	DWORD PTR _spacing$[esp+12]
	fadd	DWORD PTR _x1$[esp+12]
	push	eax
	mov	eax, DWORD PTR _yc$[esp+16]
	push	ebp
	push	ecx
	push	edx
	push	eax
	push	ecx
	fstp	DWORD PTR [esp]
	call	?glaDrawChar@@YAXMMMMMD@Z		; glaDrawChar
	add	esp, 24					; 00000018H
	inc	esi
	cmp	esi, edi
	mov	DWORD PTR _j$[esp+12], esi
	jl	SHORT $L19672
	pop	ebp
$L19674:
	pop	edi
	pop	esi
	pop	ebx

; 561  :   };
; 562  : };

	ret	0
?glaDrawString@@YAXMMMMMMPAD@Z ENDP			; glaDrawString
_TEXT	ENDS
PUBLIC	?glaDrawStringL@@YAXMMMMMMPAD@Z			; glaDrawStringL
;	COMDAT ?glaDrawStringL@@YAXMMMMMMPAD@Z
_TEXT	SEGMENT
_xc$ = 8
_yc$ = 12
_zc$ = 16
_w$ = 20
_h$ = 24
_spacing$ = 28
_texten$ = 32
_j$ = 32
?glaDrawStringL@@YAXMMMMMMPAD@Z PROC NEAR		; glaDrawStringL, COMDAT

; 564  : void glaDrawStringL( float xc, float yc, float zc, float w, float h, float spacing, char *texten ) {

	push	ebx

; 565  :   long l = misc_strlen(texten);

	mov	ebx, DWORD PTR _texten$[esp]
	push	esi
	push	edi
	push	ebx
	call	?misc_strlen@@YAJPAD@Z			; misc_strlen
	mov	edi, eax

; 566  :   int j;
; 567  :   for( j=0; j<l; j++ ) {

	xor	esi, esi
	add	esp, 4
	test	edi, edi
	mov	DWORD PTR _j$[esp+8], esi
	jle	SHORT $L19688
	push	ebp
	mov	ebp, DWORD PTR _h$[esp+12]
$L19686:

; 568  :     glaDrawChar( xc + (j*spacing), yc, zc, w, h, texten[j] );

	fild	DWORD PTR _j$[esp+12]
	mov	ecx, DWORD PTR _w$[esp+12]
	mov	edx, DWORD PTR _zc$[esp+12]
	xor	eax, eax
	mov	al, BYTE PTR [esi+ebx]
	fmul	DWORD PTR _spacing$[esp+12]
	fadd	DWORD PTR _xc$[esp+12]
	push	eax
	mov	eax, DWORD PTR _yc$[esp+16]
	push	ebp
	push	ecx
	push	edx
	push	eax
	push	ecx
	fstp	DWORD PTR [esp]
	call	?glaDrawChar@@YAXMMMMMD@Z		; glaDrawChar
	add	esp, 24					; 00000018H
	inc	esi
	cmp	esi, edi
	mov	DWORD PTR _j$[esp+12], esi
	jl	SHORT $L19686
	pop	ebp
$L19688:
	pop	edi
	pop	esi
	pop	ebx

; 569  :   };
; 570  : };

	ret	0
?glaDrawStringL@@YAXMMMMMMPAD@Z ENDP			; glaDrawStringL
_TEXT	ENDS
PUBLIC	?glaReset@@YAXXZ				; glaReset
EXTRN	__imp__GetTickCount@0:NEAR
;	COMDAT ?glaReset@@YAXXZ
_TEXT	SEGMENT
?glaReset@@YAXXZ PROC NEAR				; glaReset, COMDAT

; 577  : 	//long startbeat = 0;
; 578  : 	resettime = GetTickCount();

	call	DWORD PTR __imp__GetTickCount@0
	mov	DWORD PTR ?resettime@@3KA, eax		; resettime

; 579  : 	//resetbeat = TIMETOBEAT( (float)(resettime-startbeat) / 1000.0f );
; 580  : };

	ret	0
?glaReset@@YAXXZ ENDP					; glaReset
_TEXT	ENDS
PUBLIC	__real@4@3ff583126e978d4fe000
PUBLIC	?glaTime@@YAMXZ					; glaTime
;	COMDAT __real@4@3ff583126e978d4fe000
; File D:\prj64k\glAss (eventad)\misccode\gla_stuff2.cpp
CONST	SEGMENT
__real@4@3ff583126e978d4fe000 DD 03a83126fr	; 0.001
CONST	ENDS
;	COMDAT ?glaTime@@YAMXZ
_TEXT	SEGMENT
?glaTime@@YAMXZ PROC NEAR				; glaTime, COMDAT

; 582  : float glaTime() {

	sub	esp, 8

; 583  : 	DWORD t = GetTickCount() - resettime;

	call	DWORD PTR __imp__GetTickCount@0
	sub	eax, DWORD PTR ?resettime@@3KA		; resettime

; 584  : 	return (float)t / 1000.0f;

	mov	DWORD PTR -8+[esp+8], eax
	mov	DWORD PTR -8+[esp+12], 0
	fild	QWORD PTR -8+[esp+8]
	fmul	DWORD PTR __real@4@3ff583126e978d4fe000

; 585  : };

	add	esp, 8
	ret	0
?glaTime@@YAMXZ ENDP					; glaTime
_TEXT	ENDS
PUBLIC	?glaRelBeat@@YAMXZ				; glaRelBeat
;	COMDAT ?glaRelBeat@@YAMXZ
_TEXT	SEGMENT
?glaRelBeat@@YAMXZ PROC NEAR				; glaRelBeat, COMDAT

; 588  : 	return glaTime();

	jmp	?glaTime@@YAMXZ				; glaTime
?glaRelBeat@@YAMXZ ENDP					; glaRelBeat
_TEXT	ENDS
END
