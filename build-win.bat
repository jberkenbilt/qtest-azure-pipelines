@echo on
@rem Usage: build-win {32|64} {msvc|mingw}
if %2 == msvc (
    if %1 == 64 (
       call "%VS140COMNTOOLS%\..\..\VC\bin\amd64\vcvars64.bat"
    ) else (
       call "%VS140COMNTOOLS%\..\..\VC\bin\vcvars32.bat"
    )
) else (
    choco uninstall mingw
    type "C:\ProgramData\chocolatey\logs\chocolatey.log"
    choco install msys2
    path "C:\tools\msys64\usr\bin;%PATH%"
)

bash ./build %1 %2
