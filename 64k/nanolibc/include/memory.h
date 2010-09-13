// memory functions
#ifndef _MEMORY_H_
#define _MEMORY_H_

#ifndef NULL
#define NULL 0L
#endif

// standard - malloc aligns and clears
void * __cdecl malloc( unsigned long length );
void __cdecl free( void *mem );

// memset and memcopy
void * __cdecl memset( void *destination, unsigned char value, long length );
void * __cdecl memcpy( void *destination, void *source, long length );

// non standard 
void __cdecl memset2( void *destination, unsigned short value, long words );
void __cdecl memcpy2( void *destination, void *source, long words );
void __cdecl memset4( void *destination, long value, long dwords );
void __cdecl memcpy4( void *destination, void *source, long dwords );


#endif