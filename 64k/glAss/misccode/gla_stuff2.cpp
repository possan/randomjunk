//
// misckkåd 2.0
//
#include "..\almosteverything.h"
#include <stdlib.h>
#include <windows.h>

int pow2( int value )
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
  register unsigned char  *output;
  short c, size, ret;

  --height;
  height = 0;
  output = (unsigned char *)buffer;

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
  buf = (unsigned char *)GlobalAlloc( MEM_COMMIT, width+10 );
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
      GlobalFree(buf);
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

	  //long fc = GetTickCount();//palette[c*3+0]<<16;

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
      while (sp > stack) {
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

  GlobalFree(buf);
	return(ret);
 }

unsigned int tex_id[1000];

void glaUploadTexture( int n, long *source, int w, int h ) {
	glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
	glGenTextures( 1, &tex_id[n] );
	
	glShadeModel(GL_SMOOTH);

	glBindTexture( GL_TEXTURE_2D, tex_id[n] );

	glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT );
	glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT );
	glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );//_MIPMAP_LINEAR);
	glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );//_MIPMAP_LINEAR);

	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_DECAL);

	glTexImage2D( GL_TEXTURE_2D, 0, 4, 
			w, 
			h,
			0, GL_RGBA, GL_UNSIGNED_BYTE, 
			source );
};

void glaFreeTexture( int n ) {
	//gl
};

void glaSetTexture( int n ) {
	//glDisable( GL_TEXTURE_1D );
	glEnable( GL_TEXTURE_2D );
	glBindTexture( GL_TEXTURE_2D, tex_id[n] );
};

void glaUploadGif( int n, unsigned char *packedgif, long transparentcolor ) {
	unsigned char *_image;
	long *_rgb;

	unsigned char *palette;
	unsigned short w, h;

	int packed,i;
	char signature[] = "\0\0\0\0";
	char version[] = "\0\0\0\0";
	int endoffile = 0;

	gifsource = packedgif;

	memcpy( &signature, gifsource, 3 ); gifsource += 3;
	memcpy( &version, gifsource, 3 ); gifsource += 3;

	gifsource += 2;
	gifsource += 2;
	packed = *gifsource; gifsource ++;
	gifsource ++;
	gifsource ++;

	palette = (unsigned char *)GlobalAlloc( MEM_COMMIT, 1024 );

	if( packed & 0x80)
	{
		for( i=0; i<pow2((packed & 0x07) + 1); i++)
		{
			palette[i*3+0] = *gifsource; gifsource ++;
			palette[i*3+1] = *gifsource; gifsource ++;
			palette[i*3+2] = *gifsource; gifsource ++;
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

				_image = (unsigned char *)GlobalAlloc( MEM_COMMIT, w*h ); // x3 == RGB

				if( packed & 0x80)
				{
					for( i=0; i<pow2((packed & 0x07) + 1); i++)
					{
						palette[i*3+0] = *gifsource; gifsource ++;
						palette[i*3+1] = *gifsource; gifsource ++;
						palette[i*3+2] = *gifsource; gifsource ++;
					}
				}

				/*long j;
				for( j=0; j<((w*h)/10); j++ ) {
					image[j] = j*123;
				};*/

				//image[1] = 123;

				decode( _image, w, h );
				endoffile = 1;

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

	_rgb = (long*)GlobalAlloc( MEM_COMMIT, w*h*4 );

	for( i=0; i<w*h; i++ ) {
		int s = _image[i]*3;
		long c = palette[s+0] + (palette[s+1]<<8) + (palette[s+2]<<16);
		if( c==transparentcolor ) {
			_rgb[i] = 0x00000000;
		} else {
			_rgb[i] = c | (0xFF<<24);
		};
		//_rgb[i] = (s<<16) + (s<<8) + s;
		//_rgb[i] = (rand()%255)<<(rand()%23);
	};

	//image[0] = 11234;

	glaUploadTexture( n, _rgb, w, h );

    GlobalFree( palette );
	GlobalFree( _rgb );
	GlobalFree( _image );

	//return( image);
};
	
void glaQuad( float xc, float yc, float zc, float xr, float yr, float u1, float v1, float u2, float v2 ) {
	glTexCoord2f( u1, v1 ); 
	glVertex3f( xc-xr, yc-yr, zc );

	glTexCoord2f( u2, v1 ); 
	glVertex3f( xc+xr, yc-yr, zc );

	glTexCoord2f( u2, v2 ); 
	glVertex3f( xc+xr, yc+yr, zc );

	glTexCoord2f( u1, v2 ); 
	glVertex3f( xc-xr, yc+yr, zc );
};

void glaRotate2d( float *x2, float *y2, float x, float y, float r ) {
	float xx, yy;
	xx = x*(float)cos(r) + y*(float)sin(r);
	yy = x*-(float)sin(r) + y*(float)cos(r);
	*x2 = xx;
	*y2 = yy;
};

void glaQuadR( float xc, float yc, float zc, float angle, float xr, float yr, float u1, float v1, float u2, float v2 ) {
	
	float rx[4];
	float ry[4];
	float rangle = angle * M_PI / 180;

	glaRotate2d( &rx[0], &ry[0], -xr, -yr, rangle );
	glaRotate2d( &rx[1], &ry[1],  xr, -yr, rangle );
	glaRotate2d( &rx[2], &ry[2],  xr,  yr, rangle );
	glaRotate2d( &rx[3], &ry[3], -xr,  yr, rangle );

	glTexCoord2f( u1, v1 ); 
	glVertex3f( xc+rx[0], yc+ry[0], zc );

	glTexCoord2f( u2, v1 ); 
	glVertex3f( xc+rx[1], yc+ry[1], zc );

	glTexCoord2f( u2, v2 ); 
	glVertex3f( xc+rx[2], yc+ry[2], zc );

	glTexCoord2f( u1, v2 ); 
	glVertex3f( xc+rx[3], yc+ry[3], zc );

};

void glaDefaultProjection() {

	glClearColor( 0, 0, 0, 0 );

	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
	//glOrtho( -1, 1, -0.75f, 0.75f, -100, 100 );
	glOrtho( -1, 1, -1, 1, -100, 100 );

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();

	glMatrixMode( GL_TEXTURE );
	glLoadIdentity();

	glEnable( GL_DEPTH_TEST );
	glDepthFunc( GL_LEQUAL );
	glClearDepth( 1.0f );
};

//char *fonttable = "abcdefghijklmnopqrstuvwxyz0123456789.,:;@!\"/\\-+()&%~?#";
  char *fonttable = "abcdefghijklmnopqrstuvwxyz0123456789!?@\"':,.-/()_";

long misc_strlen( char *str ) {
	long l = 0;
	while( str[l] != 0 ) l++;
	return l;
};

void glaDrawChar( float x, float y, float z, float width, float height, char ch ) {

    int ctn = misc_strlen( fonttable );
    int f = -1;

	if( ch==32 ) return; // space...
	
	int n;
	if( height == 0 || width == 0 ) return;

    for( n=0; n<ctn; n++ ) if( fonttable[n]==ch ) f = n;
    if( f==-1 ) return;

	float num = (1024.0f/16.0f);
	float one = 1.0f / num;
	float v1, v2;
	v2 = f*one;
	v1 = v2+one*15.0f/16.0f; // *FULKÅD*

	glaQuad( x, y, z, width, height, 0, v1, 1, v2 );
};

void glaDrawString( float xc, float yc, float zc, float w, float h, float spacing, char *texten ) {
  long l = misc_strlen(texten);
  float x1 = xc - (l*spacing/2);
  int j;
  for( j=0; j<l; j++ ) {
    glaDrawChar( x1 + (j*spacing), yc, zc, w, h, texten[j] );
  };
};

void glaDrawStringL( float xc, float yc, float zc, float w, float h, float spacing, char *texten ) {
  long l = misc_strlen(texten);
  int j;
  for( j=0; j<l; j++ ) {
    glaDrawChar( xc + (j*spacing), yc, zc, w, h, texten[j] );
  };
};

DWORD resettime;
float resetbeat;
//extern DWORD startbeat;

void glaReset() {
	//long startbeat = 0;
	resettime = GetTickCount();
	//resetbeat = TIMETOBEAT( (float)(resettime-startbeat) / 1000.0f );
};

float glaTime() {
	DWORD t = GetTickCount() - resettime;
	return (float)t / 1000.0f;
};

float glaRelBeat() {
	return glaTime();

};