@echo off
setlocal

echo "++++++++==== Ver: 2025-02-20 =====++++++++++++++"

echo "++++++++====Because EUBP_ClearLiveCodingTmp don't clear *.patch_*.exe, so clear here =====++++++++++++++"
echo "++++++++==== This script should run *AFTER* closing UnrealEditor =====++++++++++++++"

echo "++++++++=====================  For loop find *.pdb ========++++++++++++++"

FOR    %%F in (Binaries\Win64\UnrealEditor-*.pdb) do del "%%~F"
FOR  /R Plugins %%F in (UnrealEditor-*.pdb) do del "%%~F"

echo "++++++++=====================  For loop find *.lib ========++++++++++++++"
FOR    %%F in (Binaries\Win64\UnrealEditor-*.lib) do del "%%~F"
FOR  /R Plugins %%F in (UnrealEditor-*.lib) do del "%%~F"

echo "++++++++=====================  For loop find *.exp ========++++++++++++++"
FOR    %%F in (Binaries\Win64\UnrealEditor-*.exp) do del "%%~F"
FOR  /R Plugins %%F in (UnrealEditor-*.exp) do del "%%~F"

echo "++++++++=====================  For loop find *.exe ========++++++++++++++"
FOR    %%F in (Binaries\Win64\UnrealEditor-*.exe) do del "%%~F"
FOR /R  Plugins  %%F in (UnrealEditor-*.exe) do del "%%~F"



echo "Clear compiling templorary files done...."
if %ERRORLEVEL% NEQ 0   pause
