# Microsoft Developer Studio Generated NMAKE File, Based on i_mofo32.dsp
!IF "$(CFG)" == ""
CFG=i_mofo32 - Win32 Debug
!MESSAGE No configuration specified. Defaulting to i_mofo32 - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "i_mofo32 - Win32 Release" && "$(CFG)" !=\
 "i_mofo32 - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "i_mofo32.mak" CFG="i_mofo32 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "i_mofo32 - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "i_mofo32 - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\i_mofo32.exe" "$(OUTDIR)\i_mofo32.bsc"

!ELSE 

ALL : "$(OUTDIR)\i_mofo32.exe" "$(OUTDIR)\i_mofo32.bsc"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\common_3d.obj"
	-@erase "$(INTDIR)\common_3d.sbr"
	-@erase "$(INTDIR)\common_gdi.obj"
	-@erase "$(INTDIR)\common_gdi.sbr"
	-@erase "$(INTDIR)\common_gfx.obj"
	-@erase "$(INTDIR)\common_gfx.sbr"
	-@erase "$(INTDIR)\common_misc.obj"
	-@erase "$(INTDIR)\common_misc.sbr"
	-@erase "$(INTDIR)\ikonjavel.res"
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\main.sbr"
	-@erase "$(INTDIR)\mmp_core.obj"
	-@erase "$(INTDIR)\mmp_core.sbr"
	-@erase "$(INTDIR)\mmp_generator.obj"
	-@erase "$(INTDIR)\mmp_generator.sbr"
	-@erase "$(INTDIR)\mmp_output.obj"
	-@erase "$(INTDIR)\mmp_output.sbr"
	-@erase "$(INTDIR)\p_bpl.obj"
	-@erase "$(INTDIR)\p_bpl.sbr"
	-@erase "$(INTDIR)\p_intro.obj"
	-@erase "$(INTDIR)\p_intro.sbr"
	-@erase "$(INTDIR)\p_lines.obj"
	-@erase "$(INTDIR)\p_lines.sbr"
	-@erase "$(INTDIR)\p_lines2.obj"
	-@erase "$(INTDIR)\p_lines2.sbr"
	-@erase "$(INTDIR)\p_pic.obj"
	-@erase "$(INTDIR)\p_pic.sbr"
	-@erase "$(INTDIR)\p_raster.obj"
	-@erase "$(INTDIR)\p_raster.sbr"
	-@erase "$(INTDIR)\p_tunnel.obj"
	-@erase "$(INTDIR)\p_tunnel.sbr"
	-@erase "$(INTDIR)\test.obj"
	-@erase "$(INTDIR)\test.sbr"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(OUTDIR)\i_mofo32.bsc"
	-@erase "$(OUTDIR)\i_mofo32.exe"
	-@erase "$(OUTDIR)\i_mofo32.map"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /G6 /Gz /ML /W3 /vd0 /O1 /Ob0 /D "WIN32" /D "NDEBUG" /D\
 "_WINDOWS" /FAs /Fa"$(INTDIR)\\" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\i_mofo32.pch"\
 /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Release/
CPP_SBRS=.\Release/

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

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /o NUL /win32 
RSC=rc.exe
RSC_PROJ=/l 0x41d /fo"$(INTDIR)\ikonjavel.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\i_mofo32.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\common_3d.sbr" \
	"$(INTDIR)\common_gdi.sbr" \
	"$(INTDIR)\common_gfx.sbr" \
	"$(INTDIR)\common_misc.sbr" \
	"$(INTDIR)\main.sbr" \
	"$(INTDIR)\mmp_core.sbr" \
	"$(INTDIR)\mmp_generator.sbr" \
	"$(INTDIR)\mmp_output.sbr" \
	"$(INTDIR)\p_bpl.sbr" \
	"$(INTDIR)\p_intro.sbr" \
	"$(INTDIR)\p_lines.sbr" \
	"$(INTDIR)\p_lines2.sbr" \
	"$(INTDIR)\p_pic.sbr" \
	"$(INTDIR)\p_raster.sbr" \
	"$(INTDIR)\p_tunnel.sbr" \
	"$(INTDIR)\test.sbr"

"$(OUTDIR)\i_mofo32.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winmm.lib libctiny.lib /nologo\
 /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\i_mofo32.pdb"\
 /map:"$(INTDIR)\i_mofo32.map" /machine:I386 /nodefaultlib\
 /out:"$(OUTDIR)\i_mofo32.exe" /libpath:"d:\devstudio\vc\lib" 
LINK32_OBJS= \
	"$(INTDIR)\common_3d.obj" \
	"$(INTDIR)\common_gdi.obj" \
	"$(INTDIR)\common_gfx.obj" \
	"$(INTDIR)\common_misc.obj" \
	"$(INTDIR)\ikonjavel.res" \
	"$(INTDIR)\main.obj" \
	"$(INTDIR)\mmp_core.obj" \
	"$(INTDIR)\mmp_generator.obj" \
	"$(INTDIR)\mmp_output.obj" \
	"$(INTDIR)\p_bpl.obj" \
	"$(INTDIR)\p_intro.obj" \
	"$(INTDIR)\p_lines.obj" \
	"$(INTDIR)\p_lines2.obj" \
	"$(INTDIR)\p_pic.obj" \
	"$(INTDIR)\p_raster.obj" \
	"$(INTDIR)\p_tunnel.obj" \
	"$(INTDIR)\test.obj" \
	".\Images\i_face1.obj" \
	".\Images\i_face2.obj" \
	".\Images\i_face3.obj" \
	".\Images\i_face4.obj" \
	".\images\I_FONT.OBJ" \
	".\Images\i_fullscreen.obj" \
	".\images\I_GRID.OBJ" \
	".\images\I_HIPPY1.OBJ" \
	".\images\I_HIPPY2.OBJ" \
	".\images\I_ONESPH.OBJ" \
	".\mmp\INTRO3B.obj"

"$(OUTDIR)\i_mofo32.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\i_mofo32.exe" "$(OUTDIR)\i_mofo32.bsc"

!ELSE 

ALL : "$(OUTDIR)\i_mofo32.exe" "$(OUTDIR)\i_mofo32.bsc"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\common_3d.obj"
	-@erase "$(INTDIR)\common_gdi.obj"
	-@erase "$(INTDIR)\common_gfx.obj"
	-@erase "$(INTDIR)\common_misc.obj"
	-@erase "$(INTDIR)\ikonjavel.res"
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\mmp_core.obj"
	-@erase "$(INTDIR)\mmp_generator.obj"
	-@erase "$(INTDIR)\mmp_output.obj"
	-@erase "$(INTDIR)\p_bpl.obj"
	-@erase "$(INTDIR)\p_intro.obj"
	-@erase "$(INTDIR)\p_lines.obj"
	-@erase "$(INTDIR)\p_lines2.obj"
	-@erase "$(INTDIR)\p_pic.obj"
	-@erase "$(INTDIR)\p_raster.obj"
	-@erase "$(INTDIR)\p_tunnel.obj"
	-@erase "$(INTDIR)\Source\common_3d.sbr"
	-@erase "$(INTDIR)\Source\common_gdi.sbr"
	-@erase "$(INTDIR)\Source\common_gfx.sbr"
	-@erase "$(INTDIR)\Source\common_misc.sbr"
	-@erase "$(INTDIR)\Source\main.sbr"
	-@erase "$(INTDIR)\Source\mmp_core.sbr"
	-@erase "$(INTDIR)\Source\mmp_generator.sbr"
	-@erase "$(INTDIR)\Source\mmp_output.sbr"
	-@erase "$(INTDIR)\Source\p_bpl.sbr"
	-@erase "$(INTDIR)\Source\p_intro.sbr"
	-@erase "$(INTDIR)\Source\p_lines.sbr"
	-@erase "$(INTDIR)\Source\p_lines2.sbr"
	-@erase "$(INTDIR)\Source\p_pic.sbr"
	-@erase "$(INTDIR)\Source\p_raster.sbr"
	-@erase "$(INTDIR)\Source\p_tunnel.sbr"
	-@erase "$(INTDIR)\Source\test.sbr"
	-@erase "$(INTDIR)\test.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(OUTDIR)\i_mofo32.bsc"
	-@erase "$(OUTDIR)\i_mofo32.exe"
	-@erase "$(OUTDIR)\i_mofo32.map"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MLd /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /FA\
 /Fa"$(INTDIR)\Source\\" /FR"$(INTDIR)\Source\\" /Fp"$(INTDIR)\i_mofo32.pch" /YX\
 /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.\Debug/Source/

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

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /o NUL /win32 
RSC=rc.exe
RSC_PROJ=/l 0x41d /fo"$(INTDIR)\ikonjavel.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\i_mofo32.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\Source\common_3d.sbr" \
	"$(INTDIR)\Source\common_gdi.sbr" \
	"$(INTDIR)\Source\common_gfx.sbr" \
	"$(INTDIR)\Source\common_misc.sbr" \
	"$(INTDIR)\Source\main.sbr" \
	"$(INTDIR)\Source\mmp_core.sbr" \
	"$(INTDIR)\Source\mmp_generator.sbr" \
	"$(INTDIR)\Source\mmp_output.sbr" \
	"$(INTDIR)\Source\p_bpl.sbr" \
	"$(INTDIR)\Source\p_intro.sbr" \
	"$(INTDIR)\Source\p_lines.sbr" \
	"$(INTDIR)\Source\p_lines2.sbr" \
	"$(INTDIR)\Source\p_pic.sbr" \
	"$(INTDIR)\Source\p_raster.sbr" \
	"$(INTDIR)\Source\p_tunnel.sbr" \
	"$(INTDIR)\Source\test.sbr"

"$(OUTDIR)\i_mofo32.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /profile /map:"$(INTDIR)\i_mofo32.map"\
 /debug /debugtype:both /machine:I386 /out:"$(OUTDIR)\i_mofo32.exe"\
 /libpath:"d:\devstudio\vc\lib" 
LINK32_OBJS= \
	"$(INTDIR)\common_3d.obj" \
	"$(INTDIR)\common_gdi.obj" \
	"$(INTDIR)\common_gfx.obj" \
	"$(INTDIR)\common_misc.obj" \
	"$(INTDIR)\ikonjavel.res" \
	"$(INTDIR)\main.obj" \
	"$(INTDIR)\mmp_core.obj" \
	"$(INTDIR)\mmp_generator.obj" \
	"$(INTDIR)\mmp_output.obj" \
	"$(INTDIR)\p_bpl.obj" \
	"$(INTDIR)\p_intro.obj" \
	"$(INTDIR)\p_lines.obj" \
	"$(INTDIR)\p_lines2.obj" \
	"$(INTDIR)\p_pic.obj" \
	"$(INTDIR)\p_raster.obj" \
	"$(INTDIR)\p_tunnel.obj" \
	"$(INTDIR)\test.obj" \
	".\Images\i_face1.obj" \
	".\Images\i_face2.obj" \
	".\Images\i_face3.obj" \
	".\Images\i_face4.obj" \
	".\images\I_FONT.OBJ" \
	".\Images\i_fullscreen.obj" \
	".\images\I_GRID.OBJ" \
	".\images\I_HIPPY1.OBJ" \
	".\images\I_HIPPY2.OBJ" \
	".\images\I_ONESPH.OBJ" \
	".\mmp\INTRO3B.obj"

"$(OUTDIR)\i_mofo32.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(CFG)" == "i_mofo32 - Win32 Release" || "$(CFG)" ==\
 "i_mofo32 - Win32 Debug"
SOURCE=.\Parts\p_bpl.c
DEP_CPP_P_BPL=\
	".\common.h"\
	".\images.h"\
	

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"


"$(INTDIR)\p_bpl.obj"	"$(INTDIR)\p_bpl.sbr" : $(SOURCE) $(DEP_CPP_P_BPL)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"


"$(INTDIR)\p_bpl.obj"	"$(INTDIR)\Source\p_bpl.sbr" : $(SOURCE) $(DEP_CPP_P_BPL)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\Parts\p_intro.c
DEP_CPP_P_INT=\
	".\common.h"\
	

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"


"$(INTDIR)\p_intro.obj"	"$(INTDIR)\p_intro.sbr" : $(SOURCE) $(DEP_CPP_P_INT)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"


"$(INTDIR)\p_intro.obj"	"$(INTDIR)\Source\p_intro.sbr" : $(SOURCE)\
 $(DEP_CPP_P_INT) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\Parts\p_lines.c
DEP_CPP_P_LIN=\
	".\common.h"\
	".\images.h"\
	

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"


"$(INTDIR)\p_lines.obj"	"$(INTDIR)\p_lines.sbr" : $(SOURCE) $(DEP_CPP_P_LIN)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"


"$(INTDIR)\p_lines.obj"	"$(INTDIR)\Source\p_lines.sbr" : $(SOURCE)\
 $(DEP_CPP_P_LIN) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\Parts\p_lines2.c
DEP_CPP_P_LINE=\
	".\common.h"\
	

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"


"$(INTDIR)\p_lines2.obj"	"$(INTDIR)\p_lines2.sbr" : $(SOURCE) $(DEP_CPP_P_LINE)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"


"$(INTDIR)\p_lines2.obj"	"$(INTDIR)\Source\p_lines2.sbr" : $(SOURCE)\
 $(DEP_CPP_P_LINE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\p_pic.c
DEP_CPP_P_PIC=\
	".\common.h"\
	".\images.h"\
	{$(INCLUDE)}"mem.h"\
	

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"


"$(INTDIR)\p_pic.obj"	"$(INTDIR)\p_pic.sbr" : $(SOURCE) $(DEP_CPP_P_PIC)\
 "$(INTDIR)"


!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"


"$(INTDIR)\p_pic.obj"	"$(INTDIR)\Source\p_pic.sbr" : $(SOURCE) $(DEP_CPP_P_PIC)\
 "$(INTDIR)"


!ENDIF 

SOURCE=.\Parts\p_raster.c
DEP_CPP_P_RAS=\
	".\common.h"\
	".\images.h"\
	

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"


"$(INTDIR)\p_raster.obj"	"$(INTDIR)\p_raster.sbr" : $(SOURCE) $(DEP_CPP_P_RAS)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"


"$(INTDIR)\p_raster.obj"	"$(INTDIR)\Source\p_raster.sbr" : $(SOURCE)\
 $(DEP_CPP_P_RAS) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\Parts\p_tunnel.c
DEP_CPP_P_TUN=\
	".\common.h"\
	".\images.h"\
	

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"


"$(INTDIR)\p_tunnel.obj"	"$(INTDIR)\p_tunnel.sbr" : $(SOURCE) $(DEP_CPP_P_TUN)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"


"$(INTDIR)\p_tunnel.obj"	"$(INTDIR)\Source\p_tunnel.sbr" : $(SOURCE)\
 $(DEP_CPP_P_TUN) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\Common\common_3d.c
DEP_CPP_COMMO=\
	".\common.h"\
	

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"


"$(INTDIR)\common_3d.obj"	"$(INTDIR)\common_3d.sbr" : $(SOURCE)\
 $(DEP_CPP_COMMO) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"


"$(INTDIR)\common_3d.obj"	"$(INTDIR)\Source\common_3d.sbr" : $(SOURCE)\
 $(DEP_CPP_COMMO) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\Common\common_gdi.c

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"


"$(INTDIR)\common_gdi.obj"	"$(INTDIR)\common_gdi.sbr" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"


"$(INTDIR)\common_gdi.obj"	"$(INTDIR)\Source\common_gdi.sbr" : $(SOURCE)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\Common\common_gfx.c
DEP_CPP_COMMON=\
	".\common.h"\
	".\images.h"\
	".\mmp\mmp.h"\
	

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"


"$(INTDIR)\common_gfx.obj"	"$(INTDIR)\common_gfx.sbr" : $(SOURCE)\
 $(DEP_CPP_COMMON) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"


"$(INTDIR)\common_gfx.obj"	"$(INTDIR)\Source\common_gfx.sbr" : $(SOURCE)\
 $(DEP_CPP_COMMON) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\Common\common_misc.c
DEP_CPP_COMMON_=\
	".\common.h"\
	

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"


"$(INTDIR)\common_misc.obj"	"$(INTDIR)\common_misc.sbr" : $(SOURCE)\
 $(DEP_CPP_COMMON_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"


"$(INTDIR)\common_misc.obj"	"$(INTDIR)\Source\common_misc.sbr" : $(SOURCE)\
 $(DEP_CPP_COMMON_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\mmp\mmp_core.c
DEP_CPP_MMP_C=\
	".\mmp\mmp.h"\
	

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"


"$(INTDIR)\mmp_core.obj"	"$(INTDIR)\mmp_core.sbr" : $(SOURCE) $(DEP_CPP_MMP_C)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"


"$(INTDIR)\mmp_core.obj"	"$(INTDIR)\Source\mmp_core.sbr" : $(SOURCE)\
 $(DEP_CPP_MMP_C) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\mmp\mmp_generator.c
DEP_CPP_MMP_G=\
	".\mmp\mmp.h"\
	

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"


"$(INTDIR)\mmp_generator.obj"	"$(INTDIR)\mmp_generator.sbr" : $(SOURCE)\
 $(DEP_CPP_MMP_G) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"


"$(INTDIR)\mmp_generator.obj"	"$(INTDIR)\Source\mmp_generator.sbr" : $(SOURCE)\
 $(DEP_CPP_MMP_G) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\mmp\mmp_output.c
DEP_CPP_MMP_O=\
	".\mmp\mmp.h"\
	

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"


"$(INTDIR)\mmp_output.obj"	"$(INTDIR)\mmp_output.sbr" : $(SOURCE)\
 $(DEP_CPP_MMP_O) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"


"$(INTDIR)\mmp_output.obj"	"$(INTDIR)\Source\mmp_output.sbr" : $(SOURCE)\
 $(DEP_CPP_MMP_O) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\mmp\test.c
DEP_CPP_TEST_=\
	".\mmp\mmp.h"\
	

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"


"$(INTDIR)\test.obj"	"$(INTDIR)\test.sbr" : $(SOURCE) $(DEP_CPP_TEST_)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"


"$(INTDIR)\test.obj"	"$(INTDIR)\Source\test.sbr" : $(SOURCE) $(DEP_CPP_TEST_)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\ikonjavel.rc
DEP_RSC_IKONJ=\
	".\Kramer.ico"\
	

"$(INTDIR)\ikonjavel.res" : $(SOURCE) $(DEP_RSC_IKONJ) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\main.c
DEP_CPP_MAIN_=\
	".\common.h"\
	".\mmp\mmp.h"\
	".\parts.h"\
	

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"


"$(INTDIR)\main.obj"	"$(INTDIR)\main.sbr" : $(SOURCE) $(DEP_CPP_MAIN_)\
 "$(INTDIR)"


!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"


"$(INTDIR)\main.obj"	"$(INTDIR)\Source\main.sbr" : $(SOURCE) $(DEP_CPP_MAIN_)\
 "$(INTDIR)"


!ENDIF 


!ENDIF 

