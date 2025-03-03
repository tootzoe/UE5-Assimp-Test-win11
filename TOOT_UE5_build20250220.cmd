@echo off
setlocal

::  Change this UE ROOT folder according to your environment
SET UE_FOLDER=C:\UnrealEngine


echo "++++++++========= Ver: 2025-02-20 ===++++++++++++++"
echo  Current Dir:  %~dp0
echo  UE_FOLDER Dir:  %UE_FOLDER%
echo "++++++++=============================++++++++++++++"


if exist "Source/*Editor.Target.cs" goto init

echo "No c/c++ relevance files, skip compilance....."
PAUSE
exit /b 1

:: echo %PROJECT%

 :: echo "++++++++=====================  For loop find *.pdb ========++++++++++++++"

 :: FOR    %%F in (Binaries\Win64\UnrealEditor-*.patch_*.pdb) do echo "%%~F"

 :: echo "++++++++=====================  For loop find *.pdb done ========++++++++++++++"

:init

FOR /f %%F in ('dir /b *.uproject') do SET PRJNAMEPATH=%%~dpnxF
FOR /f %%F in ('dir /b *.uproject') do SET PRJNAME=%%~nF

FOR /f %%F in ('dir /b Source\*Editor.Target.cs') do for %%G in ("%%~nF") do SET TARGETNAME=%%~nG

echo %PRJNAMEPATH%
echo %PRJNAME%
echo %TARGETNAME%


echo "++++==== UE build UnrealEditor Dlls for:  %PRJNAME%.uproject, Target=%TARGETNAME%   ====++++"


call %UE_FOLDER%/Engine/Build/BatchFiles/Build.bat -Target="%TARGETNAME% Win64 Development" -project="%PRJNAMEPATH%"  -WaitMutex -FromMsBuild -architecture=x64


if %ERRORLEVEL% NEQ 0   pause

