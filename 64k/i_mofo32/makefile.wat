OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\i_mofo32.exe"
# "$(OUTDIR)\i_mofo32.bsc"

CLEAN :
	-@erase "$(INTDIR)\common_3d.obj"
	-@erase "$(INTDIR)\common_3d.sbr"
	-@erase "$(INTDIR)\common_gdi.obj"
	-@erase "$(INTDIR)\common_gdi.sbr"
	-@erase "$(INTDIR)\common_gfx.obj"
	-@erase "$(INTDIR)\common_gfx.sbr"
	-@erase "$(INTDIR)\common_misc.obj"
	-@erase "$(INTDIR)\common_misc.sbr"
#	-@erase "$(INTDIR)\ikonjavel.res"
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

CPP=wcc386.exe
CPP_PROJ=-i=e:\coding\watcom\h\nt

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

RSC=wrc.exe
RSC_PROJ=/r /fo$(INTDIR)\ikonjavel.res 
#RSC_PROJ=/l 0x41d /fo="$(INTDIR)\ikonjavel.res" /d "NDEBUG" 
#BSC32=bscmake.exe
#BSC32_FLAGS=/nologo /o"$(OUTDIR)\i_mofo32.bsc" 
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

#"$(OUTDIR)\i_mofo32.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
#    $(BSC32) @<<
#  $(BSC32_FLAGS) $(BSC32_SBRS)
#<<

LINK32=wlink
LINK32_FLAGS=@linkfile.wat
LINK32_OBJS= \
	$(INTDIR)\common_3d.obj \
	$(INTDIR)\common_gdi.obj \
	$(INTDIR)\common_gfx.obj \
	$(INTDIR)\common_misc.obj \
	$(INTDIR)\ikonjavel.res \
	$(INTDIR)\main.obj \
	$(INTDIR)\mmp_core.obj \
	$(INTDIR)\mmp_generator.obj \
	$(INTDIR)\mmp_output.obj \
	$(INTDIR)\p_bpl.obj \
	$(INTDIR)\p_intro.obj \
	$(INTDIR)\p_lines.obj \
	$(INTDIR)\p_lines2.obj \
	$(INTDIR)\p_pic.obj \
	$(INTDIR)\p_raster.obj \
	$(INTDIR)\p_tunnel.obj \
	.\Images\i_face1.obj \
	.\Images\i_face2.obj \
	.\Images\i_face3.obj \
	.\Images\i_face4.obj \
	.\images\I_FONT.OBJ \
	.\Images\i_fullscreen.obj \
	.\images\I_GRID.OBJ \
	.\images\I_HIPPY1.OBJ \
	.\images\I_HIPPY2.OBJ \
	.\images\intromusic.OBJ \
	.\images\I_ONESPH.OBJ \
	.\mmp\INTRO3B.obj

"$(OUTDIR)\i_mofo32.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
  copy *.obj temp
  del *.obj >nul
    $(LINK32) @<<
  $(LINK32_FLAGS)
<<



SOURCE=.\Parts\p_bpl.c
DEP_CPP_P_BPL=\
	".\common.h"\
	".\images.h"\


"$(INTDIR)\p_bpl.obj"	"$(INTDIR)\p_bpl.sbr" : $(SOURCE) $(DEP_CPP_P_BPL)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)

SOURCE=.\Parts\p_intro.c
DEP_CPP_P_INT=\
	".\common.h"\
	

"$(INTDIR)\p_intro.obj"	"$(INTDIR)\p_intro.sbr" : $(SOURCE) $(DEP_CPP_P_INT)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Parts\p_lines.c
DEP_CPP_P_LIN=\
	".\common.h"\
	".\images.h"\
	

"$(INTDIR)\p_lines.obj"	"$(INTDIR)\p_lines.sbr" : $(SOURCE) $(DEP_CPP_P_LIN)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Parts\p_lines2.c
DEP_CPP_P_LINE=\
	".\common.h"\

"$(INTDIR)\p_lines2.obj"	"$(INTDIR)\p_lines2.sbr" : $(SOURCE) $(DEP_CPP_P_LINE)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)

SOURCE=.\p_pic.c
DEP_CPP_P_PIC=\
	".\common.h"\
	".\images.h"\
	{$(INCLUDE)}"mem.h"\
	

"$(INTDIR)\p_pic.obj"	"$(INTDIR)\p_pic.sbr" : $(SOURCE) $(DEP_CPP_P_PIC)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Parts\p_raster.c
DEP_CPP_P_RAS=\
	".\common.h"\
	".\images.h"\
	

"$(INTDIR)\p_raster.obj"	"$(INTDIR)\p_raster.sbr" : $(SOURCE) $(DEP_CPP_P_RAS)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)



SOURCE=.\Parts\p_tunnel.c
DEP_CPP_P_TUN=\
	".\common.h"\
	".\images.h"\
	

"$(INTDIR)\p_tunnel.obj"	"$(INTDIR)\p_tunnel.sbr" : $(SOURCE) $(DEP_CPP_P_TUN)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\Common\common_3d.c
DEP_CPP_COMMO=\
	".\common.h"\
	

"$(INTDIR)\common_3d.obj"	"$(INTDIR)\common_3d.sbr" : $(SOURCE)\
 $(DEP_CPP_COMMO) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)

SOURCE=.\Common\common_gdi.c


"$(INTDIR)\common_gdi.obj"	"$(INTDIR)\common_gdi.sbr" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)

SOURCE=.\Common\common_gfx.c
DEP_CPP_COMMON=\
	".\common.h"\
	".\images.h"\
	".\mmp\mmp.h"\
	

"$(INTDIR)\common_gfx.obj"	"$(INTDIR)\common_gfx.sbr" : $(SOURCE)\
 $(DEP_CPP_COMMON) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)

SOURCE=.\Common\common_misc.c
DEP_CPP_COMMON_=\
	".\common.h"\

"$(INTDIR)\common_misc.obj"	"$(INTDIR)\common_misc.sbr" : $(SOURCE)\
 $(DEP_CPP_COMMON_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\mmp\mmp_core.c
DEP_CPP_MMP_C=\
	".\mmp\mmp.h"\
	

"$(INTDIR)\mmp_core.obj"	"$(INTDIR)\mmp_core.sbr" : $(SOURCE) $(DEP_CPP_MMP_C)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\mmp\mmp_generator.c
DEP_CPP_MMP_G=\
	".\mmp\mmp.h"\
	

"$(INTDIR)\mmp_generator.obj"	"$(INTDIR)\mmp_generator.sbr" : $(SOURCE)\
 $(DEP_CPP_MMP_G) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\mmp\mmp_output.c
DEP_CPP_MMP_O=\
	".\mmp\mmp.h"\


"$(INTDIR)\mmp_output.obj"	"$(INTDIR)\mmp_output.sbr" : $(SOURCE)\
 $(DEP_CPP_MMP_O) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


#SOURCE=.\ikonjavel.rc
#DEP_RSC_IKONJ=\
#	".\Kramer.ico"\

#"$(INTDIR)\ikonjavel.res" : $(SOURCE) $(DEP_RSC_IKONJ) "$(INTDIR)"
#	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\main.c
DEP_CPP_MAIN_=\
	".\common.h"\
	".\mmp\mmp.h"\
	".\parts.h"\
	

"$(INTDIR)\main.obj"	"$(INTDIR)\main.sbr" : $(SOURCE) $(DEP_CPP_MAIN_)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)
