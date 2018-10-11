@echo on
@rem Usage: build-win {32|64} {msvc|mingw}
if %2 == msvc (
    if %1 == 64 (
       call "%VS140COMNTOOLS%\..\..\VC\bin\amd64\vcvars64.bat"
    ) else (
       call "%VS140COMNTOOLS%\..\..\VC\bin\vcvars32.bat"
    )
    bash ./build %1 %2
) else (
    choco install msys2
    C:\tools\msys64\usr\bin\env.exe MSYSTEM=MINGW64 /bin/bash -l %CD%/build-win %1 %2
)
