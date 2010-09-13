# Microsoft Developer Studio Project File - Name="softsynth_gui" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 5.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=softsynth_gui - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "softsynth_gui.mak".
!MESSAGE 
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

# Begin Project
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "softsynth_gui - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD BASE RSC /l 0x41d /d "NDEBUG"
# ADD RSC /l 0x41d /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386

!ELSEIF  "$(CFG)" == "softsynth_gui - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD BASE RSC /l 0x41d /d "_DEBUG"
# ADD RSC /l 0x41d /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "softsynth_gui - Win32 Release"
# Name "softsynth_gui - Win32 Debug"
# Begin Group "obj"

# PROP Default_Filter "obj"
# Begin Source File

SOURCE=..\softsynth\Release\ss_env.obj
# End Source File
# Begin Source File

SOURCE=..\softsynth\Release\ss_generate.obj
# End Source File
# Begin Source File

SOURCE=..\softsynth\Release\ss_main.obj
# End Source File
# Begin Source File

SOURCE=..\softsynth\Release\ss_pack.obj
# End Source File
# Begin Source File

SOURCE=..\softsynth\Release\ss_unpack.obj
# End Source File
# End Group
# Begin Group "cpp"

# PROP Default_Filter "cpp"
# Begin Source File

SOURCE=.\cust_env.cpp
# End Source File
# Begin Source File

SOURCE=.\cust_shape.cpp
# End Source File
# Begin Source File

SOURCE=.\cust_slider.cpp
# End Source File
# Begin Source File

SOURCE=.\cust_waveout.cpp
# End Source File
# Begin Source File

SOURCE=.\dlg_loadsave.cpp
# End Source File
# Begin Source File

SOURCE=.\dlg_main.cpp
# End Source File
# Begin Source File

SOURCE=.\dlg_play.cpp
# End Source File
# Begin Source File

SOURCE=.\main.cpp
# End Source File
# Begin Source File

SOURCE=.\misc_common.cpp
# End Source File
# Begin Source File

SOURCE=.\random.cpp
# End Source File
# End Group
# Begin Group "h"

# PROP Default_Filter "h"
# Begin Source File

SOURCE=.\all.h
# End Source File
# Begin Source File

SOURCE=..\softsynth\ss.h
# End Source File
# End Group
# Begin Group "lib"

# PROP Default_Filter "lib"
# Begin Source File

SOURCE=C:\devstudio\VC\lib\COMCTL32.LIB
# End Source File
# Begin Source File

SOURCE=..\..\sdk\psdk\Lib\WinMM.Lib
# End Source File
# End Group
# Begin Group "annat"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\images\5x5 ikoner copy.bmp"
# End Source File
# Begin Source File

SOURCE=..\softsynth\djonny.txt
# End Source File
# Begin Source File

SOURCE=.\Script2.rc

!IF  "$(CFG)" == "softsynth_gui - Win32 Release"

!ELSEIF  "$(CFG)" == "softsynth_gui - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Source File

SOURCE=.\images\cursor1.cur
# End Source File
# Begin Source File

SOURCE=.\images\icon1.ico
# End Source File
# End Target
# End Project
