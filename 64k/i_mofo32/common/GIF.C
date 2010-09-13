/*--------------------------------------------------------------------------
 * File: gif.c
 * Written by: Alexander Boczar, 1997-05-10
 * Description: GIF image loader
 *
 * Updates:
 * -- Date -- | ----- Name ----- |-- Did what....
 * 1997-xx-xx | Alexander Boczar |
 *
 * Todo:
 *
 -------------------------------------------------------------------------------*/

#include "system/xstring.h"
#include "system/xstdio.h"
#include "formats/vio.h"
#include "formats/gif.h"

static int pow2( int value)
{
	int i,rvalue = 2;
	if( value == 0)
		return( 1);
	else if( value == 1)
		return( 2);
	else
	{
		for( i=0; i<(value-1); i++)
			rvalue *= 2;
		return( rvalue);
	}
}

static short decode(XFILE *f, BYTE *buffer, short width, short height);

VIO *gif_load( char *filename)
{
	VIO *image;
	XFILE *f;
	int packed,i;
	char signature[4] = "\0\0\0\0";
	char version[4] = "\0\0\0\0";
	int endoffile = FALSE;

	if( (f = xfopen( filename, "rb")) == NULL)
		return( NULL);

	if( (image = (VIO *)xmalloc( sizeof( VIO))) == NULL)
	{
		xfclose( f);
		return( NULL);
	}

	if( (image->palette = (RGB *)xmalloc( 256 * sizeof( RGB))) == NULL)
	{
		vio_free( image);
		xfclose( f);
		return( NULL);
	}

	xfread( &signature, sizeof( BYTE), 3, f);
	xfread( &version, sizeof( BYTE), 3, f);
	if( strcmp( signature, "GIF") != 0)
	{
		vio_free( image);
		xfclose( f);
		return( NULL);
	}

	xfrbe_word( f);
	xfrbe_word( f);
	packed = xfr_byte( f);
	xfr_byte( f);
	xfr_byte( f);

	if( packed & 0x80)
	{
		for( i=0; i<pow2((packed & 0x07) + 1); i++)
		{
			image->palette[i].r = xfr_byte( f);
			image->palette[i].g = xfr_byte( f);
			image->palette[i].b = xfr_byte( f);
		}
	}

	do
	{
		switch( xfr_byte( f))
		{
			case 0x2c:
			{
				xfrbe_word( f);
				xfrbe_word( f);
				image->width = xfrbe_word( f);
				image->height = xfrbe_word( f);
				packed = xfr_byte( f);

				if( (image->image8 = (BYTE *)xmalloc( image->width * image->height * sizeof( BYTE))) == NULL)
				{
					vio_free( image);
					xfclose( f);
					return( NULL);
				}

				if( packed & 0x80)
				{
					for( i=0; i<pow2((packed & 0x07) + 1); i++)
					{
						image->palette[i].r = xfr_byte( f);
						image->palette[i].g = xfr_byte( f);
						image->palette[i].b = xfr_byte( f);
					}
				}

				decode( f, image->image8, (WORD)image->width, (WORD)image->height);

				image->flags = VIOFLAG_8BIT | VIOFLAG_PALETTE;
				break;
			}
			case 0x3b:
			{
				endoffile = TRUE;
				break;
			}
			case 0x21:
			{
				xfr_byte( f);
				while( xfr_byte( f) != '\0');
			}
		}
	} while( !endoffile);

	xfclose( f);
	return( image);
}

#define MAX_CODES   4095

static short curr_size;                     /* The current code size */
static short clear;                         /* Value for a clear code */
static short ending;                        /* Value for a ending code */
static short newcodes;                      /* First available code */
static short top_slot;                      /* Highest code for current size */
static short slot;                          /* Last read code */

static short navail_bytes = 0;              /* # bytes left in block */
static short nbits_left = 0;                /* # bits left in current byte */
static unsigned char b1;                    /* Current byte */
static unsigned char byte_buff[257];        /* Current block */
static unsigned char *pbytes;               /* Pointer to next byte in block */

static long code_mask[13] =
{
	0,
  0x0001,
	0x0003,
  0x0007,
	0x000F,
  0x001F,
	0x003F,
  0x007F,
	0x00FF,
  0x01FF,
	0x03FF,
  0x07FF,
	0x0FFF
};

static short init_exp( short size)
{
  curr_size = size + 1;
  top_slot = 1 << curr_size;
  clear = 1 << size;
  ending = clear + 1;
  slot = newcodes = ending + 1;
  navail_bytes = nbits_left = 0;
	return(0);
}

static short get_next_code( XFILE *f)
{
	short i, x;
  DWORD ret;

  if (nbits_left == 0)
    {
    if (navail_bytes <= 0)
      {

      /* Out of bytes in current block, so read next block
       */
      pbytes = byte_buff;
      if ((navail_bytes = xfr_byte( f)) < 0)
        return(navail_bytes);
      else if (navail_bytes)
        {
        for (i = 0; i < navail_bytes; ++i)
          {
          if ((x = xfr_byte( f)) < 0)
            return(x);
          byte_buff[i] = (BYTE)x;
          }
        }
      }
    b1 = *pbytes++;
    nbits_left = 8;
    --navail_bytes;
  }

  ret = b1 >> (8 - nbits_left);
  while (curr_size > nbits_left)
  {
    if (navail_bytes <= 0)
    {

      /* Out of bytes in current block, so read next block
       */
      pbytes = byte_buff;
      if ((navail_bytes = xfr_byte( f)) < 0)
        return(navail_bytes);
      else if (navail_bytes)
        {
        for (i = 0; i < navail_bytes; ++i)
          {
          if ((x = xfr_byte( f)) < 0)
            return(x);
          byte_buff[i] = (BYTE)x;
          }
        }
    }
    b1 = *pbytes++;
    ret |= b1 << nbits_left;
    nbits_left += 8;
    --navail_bytes;
  }
  nbits_left -= curr_size;
  ret &= code_mask[curr_size];
  return( (short)(ret) );
}

static unsigned char stack[MAX_CODES + 1];    /* Stack for storing pixels */
static unsigned char suffix[MAX_CODES + 1];   /* Suffix table */
static unsigned short prefix[MAX_CODES + 1];  /* Prefix linked list */

static short decode(XFILE *f, BYTE *buffer, short width, short height)
{
  register unsigned char *sp, *bufptr;
  BYTE *buf;
  register short code, fc, oc, bufcnt;
  register BYTE *output;
  short c, size, ret;

  --height;
  height = 0;
  output = buffer;

  /* Initialize for decoding a new image... */

  if ((size = xfr_byte( f)) < 0)
		return(size);
  if (size < 2 || 9 < size)
    return(-1);
  init_exp(size);

   /* Initialize in case they forgot to put in a clear code.
    * (This shouldn't happen, but we'll try and decode it anyway...)
    */
  oc = fc = 0;

   /* Allocate space for the decode buffer
    */
  if ((buf = (unsigned char *)xmalloc(width + 1)) == NULL)
		return(-1);

   /* Set up the stack pointer and decode buffer pointer
    */
  sp = stack;
  bufptr = buf;
  bufcnt = width;

   /* This is the main loop.  For each code we get we pass through the
    * linked list of prefix codes, pushing the corresponding "character" for
    * each code onto the stack.  When the list reaches a single "character"
    * we push that on the stack too, and then start unstacking each
    * character for output in the correct order.  Special handling is
    * included for the clear code, and the whole thing ends when we get
    * an ending code.
    */
  while ((c = get_next_code( f)) != ending)
  {

      /* If we had a file error, return without completing the decode
       */
		if (c < 0)
		{
      xfree(buf);
      return(0);
		}

      /* If the code is a clear code, reinitialize all necessary items.
       */
    if (c == clear)
    {
      curr_size = size + 1;
      slot = newcodes;
      top_slot = 1 << curr_size;

      /* Continue reading codes until we get a non-clear code
       * (Another unlikely, but possible case...)
       */
      while( (c = get_next_code( f)) == clear);

      /* If we get an ending code immediately after a clear code
       * (Yet another unlikely case), then break out of the loop.
       */
      if (c == ending)
         break;

      /* Finally, if the code is beyond the range of already set codes,
       * (This one had better NOT happen...  I have no idea what will
       * result from this, but I doubt it will look good...) then set it
       * to color zero.
       */
      if (c >= slot)
				c = 0;

      oc = fc = c;

      /* And let us not forget to put the char into the buffer... And
       * if, on the off chance, we were exactly one pixel from the end
       * of the line, we have to send the buffer to the out_line()
       * routine...
       */
      *bufptr++ = (BYTE)c;
      *output++ = (BYTE)c;

      if (--bufcnt == 0)
			{
         bufptr = buf;
         bufcnt = width;
      }
		}
    else
    {

      /* In this case, it's not a clear code or an ending code, so
       * it must be a code code...  So we can now decode the code into
       * a stack of character codes. (Clear as mud, right?)
       */
      code = c;

      /* Here we go again with one of those off chances...  If, on the
       * off chance, the code we got is beyond the range of those already
       * set up (Another thing which had better NOT happen...) we trick
       * the decoder into thinking it actually got the last code read.
       * (Hmmn... I'm not sure why this works...  But it does...)
       */
      if (code >= slot)
			{
         code = oc;
         *sp++ = (BYTE)fc;
      }

      /* Here we scan back along the linked list of prefixes, pushing
       * helpless characters (ie. suffixes) onto the stack as we do so.
       */
      while (code >= newcodes)
      {
         *sp++ = suffix[code];
         code = prefix[code];
      }

      /* Push the last character on the stack, and set up the new
       * prefix and suffix, and if the required slot number is greater
       * than that allowed by the current bit size, increase the bit
       * size.  (NOTE - If we are all full, we *don't* save the new
       * suffix and prefix...  I'm not certain if this is correct...
       * it might be more proper to overwrite the last code...
       */
      *sp++ = (BYTE)code;
      if (slot < top_slot)
      {
				fc = code;
        suffix[slot] = (BYTE)code;
        prefix[slot++] = oc;
        oc = c;
      }
      if (slot >= top_slot)
        if (curr_size < 12)
        {
        	top_slot <<= 1;
          ++curr_size;
				}

      /* Now that we've pushed the decoded string (in reverse order)
       * onto the stack, lets pop it off and put it into our decode
       * buffer...  And when the decode buffer is full, write another
       * line...
       */
      while (sp > stack)
			{
        *bufptr++ = *(--sp);
        *output++ = *sp;

        if (--bufcnt == 0)
        {
          bufptr = buf;
          bufcnt = width;
        }
      }
    }
	}
  ret = 0;

  xfree(buf);
	return(ret);
 }







