@echo on
choco install msys2
C:\tools\msys64\usr\bin\env.exe MSYSTEM=MINGW64 /bin/bash -l %CD%/build %1
