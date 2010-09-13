#include "..\common.h"

int pow2( int value)
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

static unsigned char *gifsource;

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

short init_exp( short size)
{
  curr_size = size + 1;
  top_slot = 1 << curr_size;
  clear = 1 << size;
  ending = clear + 1;
  slot = newcodes = ending + 1;
  navail_bytes = nbits_left = 0;
	return(0);
}

short get_next_code()
{
	short i, x;
 unsigned long ret;

  if (nbits_left == 0)
    {
    if (navail_bytes <= 0)
      {

      /* Out of bytes in current block, so read next block
       */
      pbytes = byte_buff;
	  navail_bytes = *gifsource;  gifsource ++;
      if (navail_bytes < 0)
        return(navail_bytes);
      else if (navail_bytes)
        {
        for (i = 0; i < navail_bytes; ++i)
          {
			x = *gifsource; gifsource ++;
          if (x < 0)
            return(x);
          byte_buff[i] = (unsigned char)x;
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
	  navail_bytes = *gifsource; gifsource ++;
      if (navail_bytes < 0)
        return(navail_bytes);
      else if (navail_bytes)
        {
        for (i = 0; i < navail_bytes; ++i)
          {
			x = *gifsource; gifsource ++;
          if (x < 0)
            return(x);
          byte_buff[i] = (unsigned char)x;
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

short decode(unsigned char *buffer, short width, short height)
{
  register unsigned char *sp, *bufptr;
  unsigned char *buf;
  register short code, fc, oc, bufcnt;
  register unsigned char *output;
  short c, size, ret;

  --height;
  height = 0;
  output = buffer;

  /* Initialize for decoding a new image... */

  size = *gifsource; gifsource ++;
  if (size < 0)
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
  buf = (unsigned char *)malloc( width+10 );
  //if ((buf = (unsigned char *)xmalloc(width + 1)) == NULL)
//	return(-1);

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
  while ((c = get_next_code()) != ending)
  {

      /* If we had a file error, return without completing the decode
       */
		if (c < 0)
		{
      free(buf);
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
      while( (c = get_next_code()) == clear);

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
      *bufptr++ = (unsigned char)c;
      *output++ = (unsigned char)c;

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
         *sp++ = (unsigned char)fc;
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
      *sp++ = (unsigned char)code;
      if (slot < top_slot)
      {
				fc = code;
        suffix[slot] = (unsigned char)code;
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

  free(buf);
	return(ret);
 }







unsigned char *common_loadgif( unsigned char *__source )
{
	unsigned char *image;
	unsigned char *palette;
	unsigned short w, h;

	int packed,i;
	char signature[] = "\0\0\0\0";
	char version[] = "\0\0\0\0";
	int endoffile = 0;

		gifsource = __source;

	/*
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
	}*/

	memcpy( &signature, gifsource, 3 ); gifsource += 3;
	memcpy( &version, gifsource, 3 ); gifsource += 3;
	//if( strcmp( signature, "GIF") != 0)
	//{
	//	return( NULL);
	//}

	gifsource += 2;
	gifsource += 2;
	packed = *gifsource; gifsource ++;
	gifsource ++;
	gifsource ++;

	palette = (unsigned char *)malloc( 1024 );

	if( packed & 0x80)
	{
		for( i=0; i<pow2((packed & 0x07) + 1); i++)
		{
			palette[i*3+0] = *gifsource; gifsource ++;
			palette[i*3+1] = *gifsource; gifsource ++;
			palette[i*3+2] = *gifsource; gifsource ++;
			//sprintf( stjoho,"%d, %d %d %d", i, palette[i*3+0], palette[i*3+1], palette[i*3+2]);
			//MessageBox( 0, stjoho, 0, 0 );
		}
	}

	do
	{
		unsigned char shitt = *gifsource; gifsource ++;
		switch( shitt )
		{
			case 0x2c:
			{
				gifsource += 2;
				gifsource += 2;
				memcpy( &w, gifsource, 2 ); gifsource += 2;
				memcpy( &h, gifsource, 2 ); gifsource += 2;
				packed = *gifsource; gifsource ++;

				image = (unsigned char *)malloc( w*h );

				if( packed & 0x80)
				{
					for( i=0; i<pow2((packed & 0x07) + 1); i++)
					{
						palette[i*3+0] = *gifsource; gifsource ++;
						palette[i*3+1] = *gifsource; gifsource ++;
						palette[i*3+2] = *gifsource; gifsource ++;
			//sprintf( stjoho,"%d, %d %d %d", i, palette[i*3+0], palette[i*3+1], palette[i*3+2]);
			//MessageBox( 0, stjoho, 0, 0 );
					}
				}

				decode( image, w, h );

				//image->flags = VIOFLAG_8BIT | VIOFLAG_PALETTE;
				break;
			}
			case 0x3b:
			{
				endoffile = 1;
				break;
			}
			case 0x21:
			{
				gifsource ++;
				while( *gifsource != '\0') gifsource ++;
			}
		}
	} while( !endoffile);

	for( i=0; i<w*h; i++ ) {
		int s = image[i]*3;
		image[i] = (palette[s+0] + palette[s+1] + palette[s+2]) / 3;
	};
    free( palette );

	return( image);
}