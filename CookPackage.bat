@echo off

call %~dp0vars.bat

call Package && Cook && %EXE% -log -fullscreen