@echo off

:: we no longer use libiberty headers directly
exit

setlocal EnableExtensions EnableDelayedExpansion

set OutDir=%~1

pushd %~dp0..

set QDIR="%OutDir%..\include\libiberty\"
rmdir /s /q %QDIR% 2>nul
mkdir %QDIR% 

for /F %%H in (binutils-gdb.lst) do (
    :: echo %%H
    xcopy /i /r /y /q %%H %QDIR% >nul
)

pushd %QDIR%
attrib +R /S
popd

popd
