@echo off

set ROOTDIR=%~dp0
set ROOTDIR=%ROOTDIR:~0,-1%

set PROJECT=SandBoxMania
set PROJECT_DIR=%ROOTDIR%\%PROJECT%
set EXE=%PROJECT%\Binaries\Win64\%PROJECT%.exe
set UPROJECT_PATH=%PROJECT_DIR%\%PROJECT%.uproject

set CURRENT_UE_VERSION_DIR=%ROOTDIR%\UnrealEngine
set BUILD_BAT=%CURRENT_UE_VERSION_DIR%\Engine\Build\BatchFiles\Build.bat
set CURRENT_UE_VERSION_EDITOR_EXE=%CURRENT_UE_VERSION_DIR%\Engine\Binaries\Win64\UnrealEditor.exe
set CURRENT_UE_VERSION_COOK_EXE=%CURRENT_UE_VERSION_DIR%\Engine\Binaries\Win64\UnrealEditor-cmd.exe