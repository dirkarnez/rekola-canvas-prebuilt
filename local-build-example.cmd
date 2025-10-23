@echo off

set DOWNLOADS_DIR=%USERPROFILE%\Downloads
@REM set PREFIX=D:\Softwares
set PREFIX=%DOWNLOADS_DIR%

cd /d %~dp0 &&^
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe example.cpp -static -I%DOWNLOADS_DIR%\canvas\include -L%DOWNLOADS_DIR%\canvas\build -lcanvas -lkernel32 -luser32 -lgdi32 -lgdiplus -o example.exe &&^
pause