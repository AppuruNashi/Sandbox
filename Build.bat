@echo off

call %~dp0vars.bat

call "%BUILD_BAT%" %PROJECT%Editor Win64 Development "%UPROJECT_PATH%" -waitmutex -NotHotReload