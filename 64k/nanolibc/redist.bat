cd distrib
del src\*.*
copy ..\*.asm src\
copy ..\*.c src\
copy ..\*.d* src\
copy ..\release\nanolibc.lib lib\
del *.zip
pkzip25 nanolibc_xxx.zip -add *.* -dir
cd..
