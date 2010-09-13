# Microsoft Developer Studio Generated NMAKE File, Based on softsynth_gui.dsp
!IF "$(CFG)" == ""
CFG=softsynth_gui - Win32 Debug
!MESSAGE No configuration specified. Defaulting to softsynth_gui - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "softsynth_gui - Win32 Release" && "$(CFG)" !=\
 "softsynth_gui - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "softsynth_gui.mak" CFG="softsynth_gui - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "softsynth_gui - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "softsynth_gui - Win32 Debug" (based on\
 "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "softsynth_gui - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\softsynth_gui.exe"

!ELSE 

ALL : "$(OUTDIR)\softsynth_gui.exe"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\cust_env.obj"
	-@erase "$(INTDIR)\dlg_main.obj"
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\Script2.res"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(OUTDIR)\softsynth_gui.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D\
 "_MBCS" /Fp"$(INTDIR)\softsynth_gui.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\"\
 /FD /c 
CPP_OBJS=.\Release/
CPP_SBRS=.

.c{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
RSC_PROJ=/l 0x41d /fo"$(INTDIR)\Script2.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\softsynth_gui.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)\softsynth_gui.pdb" /machine:I386\
 /out:"$(OUTDIR)\softsynth_gui.exe" 
LINK32_OBJS= \
	"$(INTDIR)\cust_env.obj" \
	"$(INTDIR)\dlg_main.obj" \
	"$(INTDIR)\main.obj" \
	"$(INTDIR)\Script2.res" \
	"..\softsynth\Debug\ss_main.obj" \
	"C:\devstudio\VC\lib\COMCTL32.LIB"

"$(OUTDIR)\softsynth_gui.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "softsynth_gui - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\softsynth_gui.exe"

!ELSE 

ALL : "$(OUTDIR)\softsynth_gui.exe"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\cust_env.obj"
	-@erase "$(INTDIR)\dlg_main.obj"
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\Script2.res"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(OUTDIR)\softsynth_gui.exe"
	-@erase "$(OUTDIR)\softsynth_gui.ilk"
	-@erase "$(OUTDIR)\softsynth_gui.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MLd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE"\
 /D "_MBCS" /Fp"$(INTDIR)\softsynth_gui.pch" /YX /Fo"$(INTDIR)\\"\
 /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.

.c{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
RSC_PROJ=/l 0x41d /fo"$(INTDIR)\Script2.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\softsynth_gui.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)\softsynth_gui.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)\softsynth_gui.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\cust_env.obj" \
	"$(INTDIR)\dlg_main.obj" \
	"$(INTDIR)\main.obj" \
	"$(INTDIR)\Script2.res" \
	"..\softsynth\Debug\ss_main.obj" \
	"C:\devstudio\VC\lib\COMCTL32.LIB"

"$(OUTDIR)\softsynth_gui.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(CFG)" == "softsynth_gui - Win32 Release" || "$(CFG)" ==\
 "softsynth_gui - Win32 Debug"
SOURCE=.\cust_env.cpp
DEP_CPP_CUST_=\
	"..\softsynth\ss.h"\
	".\all.h"\
	

"$(INTDIR)\cust_env.obj" : $(SOURCE) $(DEP_CPP_CUST_) "$(INTDIR)"


SOURCE=.\dlg_main.cpp
DEP_CPP_DLG_M=\
	"..\softsynth\ss.h"\
	".\all.h"\
	

"$(INTDIR)\dlg_main.obj" : $(SOURCE) $(DEP_CPP_DLG_M) "$(INTDIR)"


SOURCE=.\main.cpp
DEP_CPP_MAIN_=\
	"..\softsynth\ss.h"\
	".\all.h"\
	

"$(INTDIR)\main.obj" : $(SOURCE) $(DEP_CPP_MAIN_) "$(INTDIR)"


SOURCE=.\Script2.rc

"$(INTDIR)\Script2.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)



!ENDIF 

