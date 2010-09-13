rem c:\WINDOWS\Microsoft.NET\Framework\v2.0.50727\ildasm subject.exe
rem "C:\Program Files\Microsoft Visual Studio 8\SDK\v2.0\Bin\ildasm.exe" subject.exe 

c:\WINDOWS\Microsoft.NET\Framework\v2.0.50727\ilasm /exe /output=subject-assembled.exe subject.il


..\20to4 -f0 -v subject-assembled.exe final-4k-f0.exe
..\20to4 -f1 -v subject-assembled.exe final-4k-f1.bat
..\20to4 -f2 -v subject-assembled.exe final-4k-f2.exe
