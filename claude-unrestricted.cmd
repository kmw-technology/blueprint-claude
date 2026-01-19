@echo off
setlocal

:: Check if RGB parameters were provided (R G B)
if "%~1"=="" goto :run_claude
if "%~2"=="" goto :run_claude
if "%~3"=="" goto :run_claude

:: Set background color using ANSI escape sequence (RGB)
:: ESC[48;2;R;G;Bm sets background color
for /f %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"
echo %ESC%[48;2;%~1;%~2;%~3m
cls

:run_claude
claude --dangerously-skip-permissions