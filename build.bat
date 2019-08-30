@echo on
set
dir /s "C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise"
dir /s "C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise"
rem choco install msys2
rem C:\tools\msys64\usr\bin\env.exe MSYSTEM=MINGW64 /bin/bash -l %CD%/build %1
