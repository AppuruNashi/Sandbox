@echo off

call %~dp0vars.bat

call "%CURRENT_UE_VERSION_COOK_EXE%" "%UPROJECT_PATH%" -run=cook -targetplatform=Windows