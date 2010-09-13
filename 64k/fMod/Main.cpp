//===============================================================================================
// SIMPLE.EXE
// Copyright (c), Firelight Multimedia, 2000.
//
// This is a simple but descriptive way to get FMOD going, by loading a song and a few wav files
// and then playing them back.  It also shows how to do device enumeration and how to tweak
// various playback settings.
//===============================================================================================

#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include <windows.h>

//#define USEMEMLOAD	TRUE
#define USEFMOD TRUE

#ifdef USEFMOD
	#include "minifmod.h"
#endif


// this is if you want to replace the samples with your own (in case you have compressed them)
void sampleloadcallback(void *buff, int lenbytes, int numbits, int instno, int sampno)
{
	printf("pointer = %p length = %d bits = %d instrument %d sample %d\n", buff, lenbytes, numbits, instno, sampno);
	if( numbits == 16 ) {
		unsigned short *b = (unsigned short *)buff;
		for( int i=0; i<lenbytes; i+=2 ) {
			if( (i%100)<50 ) *b = 10000; else *b = 40000;
			*b ++;
		};
	} else {
		unsigned char *b = (unsigned char *)buff;
		for( int i=0; i<lenbytes; i++ ) {
			if( (i%100)<50 ) *b = 0; else *b = 255;
			*b ++;
		};
	};
}



#ifndef USEMEMLOAD

unsigned int fileopen(char *name)
{
	return (unsigned int)fopen(name, "rb");
}

void fileclose(unsigned int handle)
{
	fclose((FILE *)handle);
}

int fileread(void *buffer, int size, unsigned int handle)
{
	return fread(buffer, 1, size, (FILE *)handle);
}

void fileseek(unsigned int handle, int pos, signed char mode)
{
	fseek((FILE *)handle, pos, mode);
}

int filetell(unsigned int handle)
{
	return ftell((FILE *)handle);
}

#else

typedef struct 
{
	int length;
	int pos;
	void *data;
} MEMFILE;


unsigned int memopen(char *name)
{
	FILE *fp;
	MEMFILE *memfile;

	memfile = (MEMFILE *)calloc(sizeof(MEMFILE),1);

	fp = fopen(name, "rb");
	fseek(fp, 0, SEEK_END);
	memfile->length = ftell(fp);
	memfile->data = calloc(memfile->length,1);
	memfile->pos = 0;

	// load it into memory
	fseek(fp, 0, SEEK_SET);
	fread(memfile->data, 1, memfile->length, fp);
	fclose(fp);

	return (unsigned int)memfile;
}

void memclose(unsigned int handle)
{
	MEMFILE *memfile = (MEMFILE *)handle;

	free(memfile->data);
	free(memfile);
}

int memread(void *buffer, int size, unsigned int handle)
{
	MEMFILE *memfile = (MEMFILE *)handle;

	if (memfile->pos + size >= memfile->length)
		size = memfile->length - memfile->pos;

	memcpy(buffer, (char *)memfile->data+memfile->pos, size);
	memfile->pos += size;
	
	return size;
}

void memseek(unsigned int handle, int pos, signed char mode)
{
	MEMFILE *memfile = (MEMFILE *)handle;

	if (mode == SEEK_SET) 
		memfile->pos = pos;
	else if (mode == SEEK_CUR) 
		memfile->pos += pos;
	else if (mode == SEEK_END)
		memfile->pos = memfile->length;

	if (memfile->pos > memfile->length)
		memfile->pos = memfile->length;
}

int memtell(unsigned int handle)
{
	MEMFILE *memfile = (MEMFILE *)handle;

	return memfile->pos;
}
#endif


/*
[
	[DESCRIPTION]

	[PARAMETERS]
 
	[RETURN_VALUE]

	[REMARKS]

	[SEE_ALSO]
]
*/
void main(int argc, char *argv[])
{
#ifdef USEFMOD
	FMUSIC_MODULE *mod;

#ifndef USEMEMLOAD
	FSOUND_File_SetCallbacks(fileopen, fileclose, fileread, fileseek, filetell);
#else
	FSOUND_File_SetCallbacks(memopen, memclose, memread, memseek, memtell);
#endif
#endif

	if (argc < 2)
	{
		printf("-------------------------------------------------------------\n");
		printf("MINIFMOD example XM player.\n");
		printf("Copyright (c) Firelight Multimedia, 2000.\n");
		printf("-------------------------------------------------------------\n");
		printf("Syntax: simplest infile.xm\n\n");
		return;
	}

#ifdef USEFMOD
	// ==========================================================================================
	// INITIALIZE
	// ==========================================================================================
	if (!FSOUND_Init(44100, 0))
	{
		printf("Error upon initialization\n");
		return;
	}

	// ==========================================================================================
	// LOAD SONG
	// ==========================================================================================
	mod = FMUSIC_LoadSong(argv[1], sampleloadcallback);
	if (!mod)
	{
		printf("Error loading song\n");
		return;
	}

	// ==========================================================================================
	// PLAY SONG
	// ==========================================================================================
	FMUSIC_PlaySong(mod);
#endif

	printf("Press any key to quit\n");
	printf("=========================================================================\n");
	printf("Playing song...\n");
	do
	{
#ifdef USEFMOD
		printf("order = %d, row = %d    \r", FMUSIC_GetOrder(mod), FMUSIC_GetRow(mod));
#endif
	} while (!kbhit());

	getch();

	printf("\n");

#ifdef USEFMOD
	FMUSIC_FreeSong(mod);
	FSOUND_Close();
#endif
}
