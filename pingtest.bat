@echo off
setlocal

set PS1_PATH=%~dpn0.ps1

if exist "%PS1_PATH%" (
	pwsh -NoProfile -ExecutionPolicy Bypass -File "%PS1_PATH%"
) else (
	echo Not found: %PS1_PATH%
)