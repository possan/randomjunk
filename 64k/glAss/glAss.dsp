# Microsoft Developer Studio Project File - Name="glAss" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=glAss - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "glAss.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "glAss.mak" CFG="glAss - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "glAss - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "glAss - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "glAss - Win32 Release"

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
# ADD CPP /nologo /G6 /MD /W3 /vd0 /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /FAs /Fa"Release/Source/" /FD /c
# SUBTRACT CPP /WX /Fr /YX
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x41d /d "NDEBUG"
# ADD RSC /l 0x41d /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /pdb:none /map /machine:I386 /nodefaultlib
# SUBTRACT LINK32 /verbose /profile /debug /force

!ELSEIF  "$(CFG)" == "glAss - Win32 Debug"

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
# ADD CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /FA /YX /FD /c
# SUBTRACT CPP /Fr
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x41d /d "_DEBUG"
# ADD RSC /l 0x41d /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /profile /map /debug /machine:I386

!ENDIF 

# Begin Target

# Name "glAss - Win32 Release"
# Name "glAss - Win32 Debug"
# Begin Group "objects"

# PROP Default_Filter "obj"
# Begin Source File

SOURCE=.\images\gif_clouds.obj
# End Source File
# Begin Source File

SOURCE=.\images\gif_flare.obj
# End Source File
# Begin Source File

SOURCE=.\images\gif_font.obj
# End Source File
# Begin Source File

SOURCE=.\images\gif_green.obj
# End Source File
# Begin Source File

SOURCE=.\images\gif_grid.obj
# End Source File
# Begin Source File

SOURCE=.\images\gif_names.obj
# End Source File
# Begin Source File

SOURCE=.\images\gif_psikorp2.obj
# End Source File
# Begin Source File

SOURCE=.\images\gif_psikorp3.obj
# End Source File
# Begin Source File

SOURCE=.\images\gif_psikorp4.obj
# End Source File
# Begin Source File

SOURCE=.\images\gif_rost.obj
# End Source File
# Begin Source File

SOURCE=.\images\gif_silu.obj
# End Source File
# Begin Source File

SOURCE=.\images\gif_title.obj
# End Source File
# Begin Source File

SOURCE=.\images\gif_twister2.obj
# End Source File
# Begin Source File

SOURCE=.\images\intromusic.obj
# End Source File
# Begin Source File

SOURCE=..\fMod\minifmod.lib
# End Source File
# End Group
# Begin Group "parts"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\parts\p_aftershit.cpp
# End Source File
# Begin Source File

SOURCE=.\parts\p_cubes.cpp
# End Source File
# Begin Source File

SOURCE=.\parts\p_greetings.cpp
# End Source File
# Begin Source File

SOURCE=.\parts\p_klask.cpp
# End Source File
# Begin Source File

SOURCE=.\parts\p_loading.cpp
# End Source File
# Begin Source File

SOURCE=.\p_misc.cpp
# End Source File
# Begin Source File

SOURCE=.\parts\p_name.cpp
# End Source File
# Begin Source File

SOURCE=.\parts\p_psyk.cpp
# End Source File
# Begin Source File

SOURCE=.\parts\p_silu.cpp
# End Source File
# Begin Source File

SOURCE=.\parts\p_sphere.cpp
# End Source File
# Begin Source File

SOURCE=.\parts\p_tunnel.cpp
# End Source File
# Begin Source File

SOURCE=.\parts\p_twist3d.cpp
# End Source File
# Begin Source File

SOURCE=.\parts\p_twister.cpp
# End Source File
# Begin Source File

SOURCE=.\parts\p_wirelandscape.cpp
# End Source File
# End Group
# Begin Group "misccode"

# PROP Default_Filter "cpp"
# Begin Source File

SOURCE=.\events.cpp
# End Source File
# Begin Source File

SOURCE=.\misccode\gla_stuff.cpp
# End Source File
# Begin Source File

SOURCE=.\misccode\gla_stuff2.cpp
# End Source File
# Begin Source File

SOURCE=.\misccode\newmath.cpp
# End Source File
# Begin Source File

SOURCE=.\misccode\startup.cpp
# End Source File
# End Group
# Begin Group "headers"

# PROP Default_Filter "h"
# Begin Source File

SOURCE=.\almosteverything.h
# End Source File
# Begin Source File

SOURCE=.\images.h
# End Source File
# Begin Source File

SOURCE=.\newmath.h
# End Source File
# Begin Source File

SOURCE=.\parts.h
# End Source File
# End Group
# Begin Group "libbjävlar"

# PROP Default_Filter "lib"
# Begin Source File

SOURCE=..\..\sdk\psdk\Lib\GlAux.Lib
# End Source File
# Begin Source File

SOURCE=..\..\sdk\psdk\Lib\GlU32.Lib
# End Source File
# Begin Source File

SOURCE=..\nanolibc\Release\nanolibc.lib
# End Source File
# Begin Source File

SOURCE=..\..\sdk\psdk\Lib\OpenGL32.Lib
# End Source File
# Begin Source File

SOURCE=..\..\sdk\psdk\Lib\WinMM.Lib
# End Source File
# End Group
# Begin Source File

SOURCE=.\bitmap1.bmp
# End Source File
# Begin Source File

SOURCE=.\borttaget.txt
# End Source File
# Begin Source File

SOURCE=.\icon1.ico
# End Source File
# Begin Source File

SOURCE=.\resurser.rc
# End Source File
# End Target
# End Project
