@echo off

call %~dp0vars.bat

start "" "%CURRENT_UE_VERSION_EDITOR_EXE%" "%UPROJECT_PATH%" %*