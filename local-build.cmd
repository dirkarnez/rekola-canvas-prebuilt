@echo off

set DOWNLOADS_DIR=%USERPROFILE%\Downloads
@REM set PREFIX=D:\Softwares
set PREFIX=%DOWNLOADS_DIR%


@REM %PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -Iinclude -c src/ContextAndroid.cpp -o build\.o &&^
@REM %PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -Iinclude -c src/ContextCairo.cpp -o build\.o &&^
@REM %PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -Iinclude -c src/ContextQuartz2D.cpp -o build\.o &&^
@REM %PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -Iinclude -c src/PerlinSurface.cpp -o build\PerlinSurface.o &&^

cd /d "%DOWNLOADS_DIR%\canvas"
if not exist build mkdir build
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -static -Iinclude -c src/Color.cpp -o build\Color.o &&^
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -static -Iinclude -c src/ColorProvider.cpp -o build\ColorProvider.o &&^
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -static -Iinclude -c src/ContextGDIPlus.cpp -o build\ContextGDIPlus.o &&^
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -static -Iinclude -c src/dxt.cpp -o build\dxt.o &&^
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -static -Iinclude -c src/dxt.h -o build\dxt.o &&^
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -static -Iinclude -c src/FloydSteinberg.cpp -o build\FloydSteinberg.o &&^
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -static -Iinclude -c src/Image.cpp -o build\Image.o &&^
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -static -Iinclude -c src/ImageData.cpp -o build\ImageData.o &&^
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -static -Iinclude -c src/PackedImageData.cpp -o build\PackedImageData.o &&^
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -static -Iinclude -c src/Path2D.cpp -o build\Path2D.o &&^
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -static -Iinclude -c src/rg_etc1.cpp -o build\rg_etc1.o &&^
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -static -Iinclude -c src/rg_etc1.h -o build\rg_etc1.o &&^
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -static -Iinclude -c src/stb_image.h -o build\stb_image.o &&^
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -static -Iinclude -c src/stb_image_resize.h -o build\stb_image_resize.o

%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\ar.exe rcs build\libcanvas.a ^
build\Color.o ^
build\ColorProvider.o ^
build\ContextGDIPlus.o ^
build\dxt.o ^
build\FloydSteinberg.o ^
build\Image.o ^
build\ImageData.o ^
build\PackedImageData.o ^
build\Path2D.o ^
build\rg_etc1.o ^
build\stb_image.o ^
build\stb_image_resize.o

