@ECHO OFF                                                                        
"C:\Program Files\Microsoft Visual Studio 8\SDK\v2.0\Bin\ildasm.exe" /TEXT /NOCA /LINENUM /BYTES /ALL /SOURCE /OUT=%1-decompile.il %1.exe 
dir /a *.il

@c:\WINDOWS\Microsoft.NET\Framework\v2.0.50727\ilasm /exe /output=%1-recompiled.exe %1-decompile.il
@c:\WINDOWS\Microsoft.NET\Framework\v2.0.50727\ilasm /exe /output=%1-recompiled2.exe %1-reduced.il

@20to4 -f0 -v "%1-recompiled.exe" "%1-packed-f0.exe" >nul
@20to4 -f1 -v "%1-recompiled.exe" "%1-packed-f1.bat" >nul
@20to4 -f2 -v "%1-recompiled.exe" "%1-packed-f2.exe" >nul
@20to4 -f0 -v "%1-recompiled2.exe" "%1-packed2-f0.exe" >nul
@20to4 -f1 -v "%1-recompiled2.exe" "%1-packed2-f1.bat" >nul
@20to4 -f2 -v "%1-recompiled2.exe" "%1-packed2-f2.exe" >nul

@Dropper /o0le %1-recompiled.exe %1-dropped-e.exe >nul
@Dropper /o0lb %1-recompiled.exe %1-dropped-b.bat >nul
@Dropper /o0lc %1-recompiled.exe %1-dropped-c.com >nul
@Dropper /o0le %1-recompiled2.exe %1-dropped2-e.exe >nul
@Dropper /o0lb %1-recompiled2.exe %1-dropped2-b.bat >nul
@Dropper /o0lc %1-recompiled2.exe %1-dropped2-c.com >nul

@dir /os /a %1*.*


