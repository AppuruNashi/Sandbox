@echo off

echo Unzip Engine ...

set "ROOTDIR=%~dp0"
set "PREVIOUSDIR=%ROOTDIR:~0,-12%"

tar -xf "%ROOTDIR%UnrealEngine.zip"

move "%ROOTDIR%UnrealEngine" "%PREVIOUSDIR%"

echo Done ! Removing useless files and import Plugins ...

rm "%ROOTDIR%UnrealEngine.zip"

move "%ROOTDIR%VisualStudioTools" "%PREVIOUSDIR%UnrealEngine\Engine\Plugins\"

echo Engine Part is done !