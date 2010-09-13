// mmp output code - windows sound system driver
#include "mmp.h"
#include <windows.h>
#include <mmsystem.h>

#ifdef MMPDEBUG
#include <stdlib.h>
#include <stdio.h>
#endif

#define NUMBUFS 4
#define BUFLENGTH 32768

short unsigned int DEV_Type;
short unsigned int DEV_Mode;
short unsigned int DEV_Freq;

#define DM_8bit 1      // 8 bit device
#define DM_16bit 2     // 16 bit device
#define DM_Mono 4      // Mono Device
#define DM_Stereo 8    // Stereo Device
#define DM_Signed 16   // Need a signed or an unsigned buffer (used in mix.asm)
#define DM_Interp 32   // 16 bit interpolation and 32 bit mixing...
#define DM_Mixed 256   // Software mixed or hardware mixed device

static volatile playing=0;
static volatile paused=0;
static volatile weHaveTerminated=0;
int IXA_PlayerActive = 0;
HANDLE musicevent;
UINT UseDevice;
HWAVEOUT audiodev;

void CALLBACK bufferdone(HWAVEOUT hwo,UINT uMsg,DWORD dwInstance,DWORD dwParam1,DWORD dwParam2) {
	if (uMsg==WOM_DONE)
   {
        SetEvent(musicevent);
   }
};

int CheckDevice(int device,int hertz,int chan,int bits)
{
	MMRESULT res;
	HWAVEOUT audiodev;
	WAVEFORMATEX waveformat;

#ifdef MMPDEBUG
	printf("checking device %d with %d Hz, %d channels, %d bits... ",device,hertz,chan,bits);
#endif
	waveformat.wFormatTag=WAVE_FORMAT_PCM;
	waveformat.nChannels=chan;
	waveformat.wBitsPerSample=bits;
	waveformat.nSamplesPerSec=hertz;
	waveformat.nBlockAlign=(waveformat.nChannels*waveformat.wBitsPerSample)/8;
    waveformat.nAvgBytesPerSec=waveformat.nSamplesPerSec*waveformat.nBlockAlign;
	waveformat.cbSize=0;
	res=waveOutOpen(&audiodev,device,&waveformat,0,0,CALLBACK_NULL);
	waveOutReset(audiodev);
	waveOutClose(audiodev);
	if (res)
	{
#ifdef MMPDEBUG
		printf("didn't work.\n");
#endif
		UseDevice=(unsigned int)-1;
		return 1;
	}
#ifdef MMPDEBUG
	printf("worked!\n");
#endif
	return 0;
};

int mmp_o_init() { // open device

        int i;
        WAVEOUTCAPS caps;
        int numdev=waveOutGetNumDevs();
        int bestdev;
        unsigned int bestformat=0;

	UseDevice=(unsigned int)-1;
        if (numdev==0) return 1;
        for (i=0;i<numdev;i++)
        {
                waveOutGetDevCaps(i,&caps,sizeof(caps));
#ifdef MMPDEBUG
				printf("%d: %s\n",i,caps.szPname);
#endif
                if ((caps.dwFormats>bestformat)&&(caps.dwFormats&0xfff))
                {
                      bestformat=caps.dwFormats;
                      bestdev=i;
                }
        }
        UseDevice=bestdev;
#ifdef MMPDEBUG
		printf("using device: %X, bestformat: %X\n",UseDevice,bestformat);
#endif

        DEV_Type=0;
        if (bestformat&WAVE_FORMAT_4S16)
        {
                DEV_Freq=44100;
                DEV_Mode=DM_16bit+DM_Stereo+DM_Mixed+DM_Signed;
                return CheckDevice(UseDevice,44100,2,16);
        }
        else
        if (bestformat&WAVE_FORMAT_4S08)
        {
                DEV_Freq=44100;
                DEV_Mode=DM_8bit+DM_Stereo+DM_Mixed;
                return CheckDevice(UseDevice,44100,2,8);
        }
        else
        if (bestformat&WAVE_FORMAT_4M16)
        {
                DEV_Freq=44100;
                DEV_Mode=DM_16bit+DM_Mono+DM_Mixed+DM_Signed;
                return CheckDevice(UseDevice,44100,1,16);
        }
        else
        if (bestformat&WAVE_FORMAT_4M08)
        {
                DEV_Freq=44100;
                DEV_Mode=DM_8bit+DM_Mono+DM_Mixed;
                return CheckDevice(UseDevice,44100,1,8);
        }
        else
        if (bestformat&WAVE_FORMAT_2S16)
        {
                DEV_Freq=22050;
                DEV_Mode=DM_16bit+DM_Stereo+DM_Mixed+DM_Signed;
                return CheckDevice(UseDevice,22050,2,16);
        }
        else
        if (bestformat&WAVE_FORMAT_2S08)
        {
                DEV_Freq=22050;
                DEV_Mode=DM_8bit+DM_Stereo+DM_Mixed;
                return CheckDevice(UseDevice,22050,2,8);
        }
        else
        if (bestformat&WAVE_FORMAT_2M16)
        {
                DEV_Freq=22050;
                DEV_Mode=DM_16bit+DM_Mono+DM_Mixed+DM_Signed;
                return CheckDevice(UseDevice,22050,1,16);
        }
        else
        if (bestformat&WAVE_FORMAT_2M08)
        {
                DEV_Freq=22050;
                DEV_Mode=DM_8bit+DM_Mono+DM_Mixed;
                return CheckDevice(UseDevice,22050,1,8);
        }
        else
        if (bestformat&WAVE_FORMAT_1S16)
        {
                DEV_Freq=11025;
                DEV_Mode=DM_16bit+DM_Stereo+DM_Mixed+DM_Signed;
                return CheckDevice(UseDevice,11025,2,16);
        }
        else
        if (bestformat&WAVE_FORMAT_1S08)
        {
                DEV_Freq=11025;
                DEV_Mode=DM_8bit+DM_Stereo+DM_Mixed;
                return CheckDevice(UseDevice,11025,2,8);
        }
        else
        if (bestformat&WAVE_FORMAT_1M16)
        {
                DEV_Freq=11025;
                DEV_Mode=DM_16bit+DM_Mono+DM_Mixed+DM_Signed;
                return CheckDevice(UseDevice,11025,1,16);
        }
        else
        if (bestformat&WAVE_FORMAT_1M08)
        {
                DEV_Freq=11025;
                DEV_Mode=DM_8bit+DM_Mono+DM_Mixed;
                return CheckDevice(UseDevice,11025,1,8);
        }
		UseDevice=(unsigned int)-1;
	return 1;
};

void mmp_generate( short *output, long samples );

DWORD mmp_thread( DWORD dw ) { // open device

	int i;
	int nextbuf;
	
	short* sampledata;
	WAVEFORMATEX waveformat;
	WAVEHDR waveheader[NUMBUFS];

	if (UseDevice==(unsigned int)-1) return 0;

	SetThreadPriority(GetCurrentThread(),THREAD_PRIORITY_HIGHEST);

	weHaveTerminated=0;
	waveformat.wFormatTag=WAVE_FORMAT_PCM;
	waveformat.nChannels=2;
	waveformat.wBitsPerSample=16;
	waveformat.nSamplesPerSec=44100;
	waveformat.nBlockAlign=(waveformat.nChannels*waveformat.wBitsPerSample)/8;
    waveformat.nAvgBytesPerSec=waveformat.nSamplesPerSec*waveformat.nBlockAlign;
	waveformat.cbSize=0;

	waveOutOpen(&audiodev,UseDevice,&waveformat,(unsigned int)bufferdone,0,CALLBACK_FUNCTION);
#ifdef MMPDEBUG
	printf("audiodev: %X\n",audiodev);
#endif

	musicevent=CreateEvent(NULL,FALSE,FALSE,"WinUsmPlayer");
	sampledata=(short*)GlobalAlloc(MEM_COMMIT,BUFLENGTH*NUMBUFS);

#ifdef MMPDEBUG
	printf("%X, %X\n",sampledata,sampledata+BUFLENGTH*NUMBUFS);
#endif

	for (i=0;i<NUMBUFS;i++)
	{
		//printf("preparing %ld bytes at %X\n", BUFLENGTH, sampledata+BUFLENGTH*i);
		waveheader[i].lpData=(char*)sampledata+i*BUFLENGTH;
		waveheader[i].dwFlags=0;
		waveheader[i].dwBufferLength = BUFLENGTH;
		waveOutPrepareHeader(audiodev,&waveheader[i],sizeof(WAVEHDR));
		mmp_generate( sampledata+(i*BUFLENGTH/2), BUFLENGTH>>1 );
		waveOutWrite(audiodev,&waveheader[i],sizeof(WAVEHDR));
	}

	nextbuf=0;
	while(playing)
    {
        IXA_PlayerActive=0;
		if (WaitForSingleObject(musicevent,1000)==WAIT_TIMEOUT)
		{
//			WinUsmPlayPause();
//			WinUsmPlayRestart();
		}

        IXA_PlayerActive=1;
		for (i=0;i<NUMBUFS;i++)
        {
			if ((waveheader[i].dwFlags & WHDR_DONE) && nextbuf==i)
			{
				waveOutUnprepareHeader(audiodev,&waveheader[i],sizeof(WAVEHDR));
				mmp_generate( sampledata+(i*BUFLENGTH/2), BUFLENGTH>>1 );
				waveOutPrepareHeader(audiodev,&waveheader[i],sizeof(WAVEHDR));
				waveOutWrite(audiodev,&waveheader[i],sizeof(WAVEHDR));
				nextbuf++;
				if (nextbuf==NUMBUFS) nextbuf=0;
			}
		}
	}
	
	waveOutReset(audiodev);	
	for (i=0;i<NUMBUFS;i++)
	{
		waveOutUnprepareHeader(audiodev,&waveheader[i],sizeof(WAVEHDR));
	}
	waveOutReset(audiodev);	
	waveOutClose(audiodev);
	weHaveTerminated=1;
	return 0;
};

void mmp_o_close() { // close device
	//mmp_o_stop(); // stoppa...
};

void mmp_o_start() { // start streaming stuff
	if( UseDevice != (unsigned int)-1 ) {
		DWORD threadid;
		playing=1;
		// there is sound, use the real driver.
		CreateThread((LPSECURITY_ATTRIBUTES)NULL,0,(LPTHREAD_START_ROUTINE)mmp_thread,0,0,&threadid);
	};
};

void mmp_o_stop() { // stop streaming stuff
	if( UseDevice != (unsigned int)-1 ) {
		playing=0;
		while (weHaveTerminated==0);
		weHaveTerminated=0;
	};
};

void mmp_o_append( short *output_data, long output_samples ) {
	/*
	// append some data to the output buffert
	//printf("Appended %ld samples at %ld, readpos is %ld\n", output_samples, mmp_module.Output.WritePos, mmp_module.Output.ReadPos );
	for( int i=0; i<output_samples; i++ ) {
		mmp_module.Output.Buf[mmp_module.Output.WritePos] = output_data[i];
		mmp_module.Output.WritePos = (mmp_module.Output.WritePos + 1)%1000000;
	};*/
};