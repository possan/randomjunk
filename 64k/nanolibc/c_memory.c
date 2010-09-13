/*
 * nanolibc memory functions
 * illuminator/psikorp '99
 */

#define WIN32_LEAN_AND_MEAN
#include <windows.h>

void * __cdecl malloc( long length ) {
	void *temp = GlobalAlloc( MEM_COMMIT, length+100 );
	return temp;
};

void * __cdecl calloc( long length ) {
	void *temp = GlobalAlloc( MEM_COMMIT, length+100 );
	memset( temp, 0, length );
	return temp;
};

void __cdecl free( void *mem ) {
	GlobalFree( mem );
};

// memset and memcopy
// borde optimeras - typ ta 4b block om det går.
void * __cdecl memset( void *destination, int value, unsigned int lengt ) {
	__asm {
		mov edi, destination
		mov eax, value
		mov ecx, lengt
		rep stosb
	};
	return destination;
};

void * __cdecl memcpy( void *destination, const void *source, unsigned int lengt ) {
	__asm {
		mov edi, destination
		mov esi, source
		mov ecx, lengt
		rep movsb
	};
	return destination;
};

// non standard 
/*
void __cdecl memset2( void *destination, unsigned short value, long words ) {
	__asm {
		mov edi, destination
		mov ax, value
		mov ecx, words
		rep stosw
	};
};

void __cdecl memcpy2( void *destination, void *source, long words ) {
	__asm {
		mov edi, destination
		mov esi, source
		mov ecx, words
		rep movsw
	};
};

void __cdecl memset4( void *destination, long value, long dwords ) {
	__asm {
		mov edi, destination
		mov eax, value
		mov ecx, dwords
		rep stosd
	};
};

void __cdecl memcpy4( void *destination, void *source, long dwords ) {
	__asm {
		mov edi, destination
		mov esi, source
		mov ecx, dwords
		rep movsd
	};
};*/