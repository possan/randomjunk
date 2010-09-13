/*
 * nanolibc misc routines
 * illuminator/psikorp '99
 */

#include <windows.h>

// this one converts the value in st(0) (parameter) to a long and puts it in eax (return value)

/*
void __cdecl _chkstk() {
};
*/

void __cdecl _ftol() {
	long skit;
	__asm {
//		fistp dword ptr [skit]
//		mov eax, skit
		fistp dword ptr [skit]
		mov eax, skit
	};
};





BOOL WINAPI _DllMainCRTStartup(
        HANDLE  hDllHandle,
        DWORD   dwReason,
        LPVOID  lpreserved
        )
{
        BOOL retcode = TRUE;
	return retcode;
}
