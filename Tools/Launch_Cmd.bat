:: Need to set up

@echo off
:: Set up and start a O3DE CMD prompt
:: Sets up the current (DCC) Project_Env,
:: Puts you in the CMD within the dev environment

:: Set up window
TITLE O3DE DCC Scripting Interface Cmd
:: Use obvious color to prevent confusion (Grey with Yellow Text)
COLOR 8E

%~d0
cd %~dp0
PUSHD %~dp0

:: Keep changes local
SETLOCAL enableDelayedExpansion

CALL %~dp0\Project_Env.bat

echo.
echo _____________________________________________________________________
echo.
echo ~    O3DE %O3DE_PROJECT_NAME% Asset Gem CMD ...
echo _____________________________________________________________________
echo.

:: Create command prompt with environment
CALL %windir%\system32\cmd.exe

ENDLOCAL

:: Return to starting directory
POPD

:END_OF_FILE