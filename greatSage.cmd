@echo off
setlocal EnableDelayedExpansion

set "SCRIPT_DIR=%~dp0gate_of_truth"

for %%A in (%*) do (
    if "%%A"=="-h" goto :help
    if "%%A"=="--help" goto :help
    if "%%A"=="-v" goto :version
    if "%%A"=="--version" goto :version
)

if "%~1"=="" (
    node "%SCRIPT_DIR%\main.js"
) else (
    node "%SCRIPT_DIR%\main.js" %*
)

exit /b %errorlevel%

:help
node "%SCRIPT_DIR%\main.js" --help
exit /b 0

:version
echo THE SERAPHIM PROJECT v1.0.02 - TRUTH AID
exit /b 0
