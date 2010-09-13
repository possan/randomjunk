/*
 * nanolibc misc routines
 * illuminator/psikorp '99
 */

// this one converts the value in st(0) (parameter) to a long and puts it in eax (return value)

/*
void __cdecl _chkstk() {
};
*/
void __cdecl _ftol() {
	long skit;
	__asm {
		fistp [skit]
		mov eax, skit
	};
};
