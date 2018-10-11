@echo on
@rem Usage: build-win {32|64} {msvc|mingw}
if %2 == msvc (
    if %1 == 64 (
       call "%VS140COMNTOOLS%\..\..\VC\bin\amd64\vcvars64.bat"
    ) else (
       call "%VS140COMNTOOLS%\..\..\VC\bin\vcvars32.bat"
    )
)

bash ./build %1 %2
