@echo off

echo Start Setup ...

set ROOTDIR=%~dp0

call "%ROOTDIR%EngineSetup/Unzip.bat"

echo Setup Unreal Engine...

set ROOTDIR=%~dp0

call "%ROOTDIR%UnrealEngine/Setup.bat"

echo Generate Project Files ...

set ROOTDIR=%~dp0

call "%ROOTDIR%UnrealEngine/GenerateProjectFiles.bat"

echo Build SahderCompileWorker ...

set ROOTDIR=%~dp0

call "%ROOTDIR%UUnrealEngine\Engine\Build\BatchFiles\Build.bat" ShaderCompileWorker Win64 Development

echo Clear folder ...

set ROOTDIR=%~dp0

move "%ROOTDIR%EngineSetup\BatchFiles\Build.bat" "%ROOTDIR%"
move "%ROOTDIR%EngineSetup\BatchFiles\Cook.bat" "%ROOTDIR%"
move "%ROOTDIR%EngineSetup\BatchFiles\CookPackage.bat" "%ROOTDIR%"
move "%ROOTDIR%EngineSetup\BatchFiles\Editor.bat" "%ROOTDIR%"
move "%ROOTDIR%EngineSetup\BatchFiles\Package.bat" "%ROOTDIR%"
move "%ROOTDIR%EngineSetup\BatchFiles\StartEditor.bat" "%ROOTDIR%"
move "%ROOTDIR%EngineSetup\BatchFiles\vars.bat" "%ROOTDIR%"
move "%ROOTDIR%EngineSetup\BatchFiles\OpenEditor.lnk" "%ROOTDIR%"
move "%ROOTDIR%EngineSetup\BatchFiles\PackageTest.lnk" "%ROOTDIR%"

echo Start rebind shortcuts

set ROOTDIR=%~dp0

cscript "%ROOTDIR%EngineSetup/RedirectShortcut.vbs"

set ROOTDIR=%~dp0

rm -r "%ROOTDIR%EngineSetup"
rm "%ROOTDIR%VisualStudioSetup.exe"
rm "%ROOTDIR%cmder.zip"

attrib "%ROOTDIR%Build.bat" +h
attrib "%ROOTDIR%Cook.bat" +h
attrib "%ROOTDIR%CookPackage.bat" +h
attrib "%ROOTDIR%Editor.bat" +h
attrib "%ROOTDIR%Package.bat" +h
attrib "%ROOTDIR%StartEditor.bat" +h
attrib "%ROOTDIR%vars.bat" +h

echo Done !

START /B "" cmd /c del "%~f0"&exit /b