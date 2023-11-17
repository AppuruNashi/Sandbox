@echo off

call %~dp0vars.bat

call "%BUILD_BAT%" %PROJECT% Win64 Development "%UPROJECT_PATH%" -waitmutex -NotHotReload