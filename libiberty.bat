@echo off
setlocal EnableExtensions EnableDelayedExpansion

set OutDir=%~1

pushd %~dp0

set QDIR="%OutDir%..\include\libiberty\"
mkdir %QDIR% 2>nul

for /F %%H in (libiberty.lst) do (
    echo %%H
    xcopy /i /r /y /q %%H %QDIR% >nul
)

pushd %QDIR%
attrib +R /S
popd

popd
