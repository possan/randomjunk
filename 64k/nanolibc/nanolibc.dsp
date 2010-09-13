# Microsoft Developer Studio Project File - Name="nanolibc" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 5.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=nanolibc - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "nanolibc.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "nanolibc.mak" CFG="nanolibc - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "nanolibc - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "nanolibc - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe

!IF  "$(CFG)" == "nanolibc - Win32 Release"

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
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /G5 /W3 /O1 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /FAs /FD /c
# SUBTRACT CPP /X /u /Fr /YX
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "nanolibc - Win32 Debug"

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
# ADD BASE CPP /nologo /W3 /GX /Z7 /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /W3 /GX /Z7 /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ENDIF 

# Begin Target

# Name "nanolibc - Win32 Release"
# Name "nanolibc - Win32 Debug"
# Begin Source File

SOURCE=.\c_functions.c
# End Source File
# Begin Source File

SOURCE=.\c_math.c
# End Source File
# Begin Source File

SOURCE=.\c_memory.c
# End Source File
# Begin Source File

SOURCE=.\math_stuff.asm

!IF  "$(CFG)" == "nanolibc - Win32 Release"

# Begin Custom Build
InputPath=.\math_stuff.asm

"math_stuff.obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	e:\masm32\bin\ml.exe -c math_stuff.asm

# End Custom Build

!ELSEIF  "$(CFG)" == "nanolibc - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputPath=.\math_stuff.asm

"math_stuff.obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	e:\masm32\bin\ml math_stuff.asm

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\distrib\nanolibc.txt
# End Source File
# Begin Source File

SOURCE=.\startup_code.asm

!IF  "$(CFG)" == "nanolibc - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputPath=.\startup_code.asm

"startup_code.obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	e:\masm32\bin\ml -c startup_code.asm

# End Custom Build

!ELSEIF  "$(CFG)" == "nanolibc - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputPath=.\startup_code.asm

"startup_code.obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	e:\masm32\bin\ml startup_code.asm

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\usenet fast math post.txt"
# End Source File
# Begin Source File

SOURCE=.\distrib\versions.txt
# End Source File
# End Target
# End Project
