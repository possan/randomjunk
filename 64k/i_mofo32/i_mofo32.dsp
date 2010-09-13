# Microsoft Developer Studio Project File - Name="i_mofo32" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 5.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=i_mofo32 - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "i_mofo32.mak".
!MESSAGE 
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

# Begin Project
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /G5 /W3 /O2 /X /I "d:\devstudio\vc\include" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /FAs /FR /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o NUL /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o NUL /win32
# ADD BASE RSC /l 0x41d /d "NDEBUG"
# ADD RSC /l 0x41d /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winmm.lib ddraw.lib ..\nanolibc\release\nanolibc.lib /nologo /subsystem:windows /map /machine:I386 /nodefaultlib /libpath:"d:\devstudio\vc\lib"
# SUBTRACT LINK32 /profile

!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /FA /Fa"Debug/Source/" /FR"Debug/Source/" /YX /FD /c
# SUBTRACT CPP /Gf /Gy
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o NUL /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o NUL /win32
# ADD BASE RSC /l 0x41d /d "_DEBUG"
# ADD RSC /l 0x41d /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /incremental:no /map /debug /debugtype:both /machine:I386 /libpath:"d:\devstudio\vc\lib"
# SUBTRACT LINK32 /profile

!ENDIF 

# Begin Target

# Name "i_mofo32 - Win32 Release"
# Name "i_mofo32 - Win32 Debug"
# Begin Group "parts"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\p_blobs.c
# End Source File
# Begin Source File

SOURCE=.\Parts\p_bpl.c
# End Source File
# Begin Source File

SOURCE=.\Parts\p_intro.c
# End Source File
# Begin Source File

SOURCE=.\Parts\p_lines.c
# End Source File
# Begin Source File

SOURCE=.\Parts\p_lines2.c
# End Source File
# Begin Source File

SOURCE=.\p_pic.c
# End Source File
# Begin Source File

SOURCE=.\p_pic2.c
# End Source File
# Begin Source File

SOURCE=.\Parts\p_raster.c
# End Source File
# Begin Source File

SOURCE=.\Parts\p_tunnel.c
# End Source File
# End Group
# Begin Group "common"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Common\common_3d.c
# End Source File
# Begin Source File

SOURCE=.\Common\common_directdraw.c
# End Source File
# Begin Source File

SOURCE=.\Common\common_gfx.c
# End Source File
# Begin Source File

SOURCE=.\Common\common_gif.c
# End Source File
# Begin Source File

SOURCE=.\Common\common_misc.c
# End Source File
# End Group
# Begin Group "objects"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Images\gif_face1.obj
# End Source File
# Begin Source File

SOURCE=.\Images\gif_face2.obj
# End Source File
# Begin Source File

SOURCE=.\Images\gif_face3.obj
# End Source File
# Begin Source File

SOURCE=.\Images\gif_face4.obj
# End Source File
# Begin Source File

SOURCE=.\Images\gif_font.obj
# End Source File
# Begin Source File

SOURCE=.\Images\gif_fullscreen.obj
# End Source File
# Begin Source File

SOURCE=.\Images\gif_grid.obj
# End Source File
# Begin Source File

SOURCE=.\Images\gif_hands.obj
# End Source File
# Begin Source File

SOURCE=.\Images\gif_onesph.obj
# End Source File
# Begin Source File

SOURCE=.\images\gif_pixlad.obj
# End Source File
# Begin Source File

SOURCE=.\Images\intromusic.obj
# End Source File
# End Group
# Begin Group "minimoduleplayer"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\mmp\mmp.h
# End Source File
# Begin Source File

SOURCE=.\mmp\mmp_core.c
# End Source File
# Begin Source File

SOURCE=.\mmp\mmp_generator.c
# End Source File
# Begin Source File

SOURCE=.\mmp\mmp_output.c
# End Source File
# End Group
# Begin Source File

SOURCE=.\common.h
# End Source File
# Begin Source File

SOURCE=D:\devstudio\Vc\lib\Ddraw.lib
# End Source File
# Begin Source File

SOURCE=.\ikonjavel.rc

!IF  "$(CFG)" == "i_mofo32 - Win32 Release"

!ELSEIF  "$(CFG)" == "i_mofo32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\images.h
# End Source File
# Begin Source File

SOURCE=.\Kramer.ico
# End Source File
# Begin Source File

SOURCE=.\main.c
# End Source File
# Begin Source File

SOURCE=.\parts.h
# End Source File
# Begin Source File

SOURCE=D:\devstudio\Vc\lib\Winmm.lib
# End Source File
# End Target
# End Project
