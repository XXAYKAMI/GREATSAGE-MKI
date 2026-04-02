@echo off
setlocal EnableDelayedExpansion

echo ========================================
echo   SERAPHIM PROJECT - Great Sage Setup
echo ========================================
echo.

echo [1/6] Checking Node.js...
node --version >nul 2>&1
if errorlevel 1 (
    echo   [FAIL] Node.js not found!
    echo   Install from: https://nodejs.org
    goto :fail
)
echo   [OK] Node.js found

echo [2/6] Checking npm...
npm --version >nul 2>&1
if errorlevel 1 (
    echo   [FAIL] npm not found!
    goto :fail
)
echo   [OK] npm found

echo [3/6] Checking Ollama...
ollama --version >nul 2>&1
if errorlevel 1 (
    echo   [WARN] Ollama not found (optional for AI)
) else (
    echo   [OK] Ollama found
)

echo [4/6] Checking Project Files...
if not exist "gate_of_truth\main.js" (
    echo   [FAIL] main.js not found!
    goto :fail
)
echo   [OK] Scripts found

echo [5/6] Installing Dependencies...
cd gate_of_truth
call npm install 2>nul
cd ..

echo [6/6] Installing Global Commands...
set "SCRIPT_DIR=%~dp0"
set "SCRIPT_DIR=%SCRIPT_DIR:~0,-1%"

copy /Y "%SCRIPT_DIR%\greatSage.cmd" "%SystemRoot%\System32\" >nul
copy /Y "%SCRIPT_DIR%\gs.bat" "%SystemRoot%\System32\" >nul

echo   [OK] greatSage installed to System32
echo   [OK] gs installed to System32

echo.
echo ========================================
echo   SERAPHIM READY
echo ========================================
echo.
echo   Run: greatSage  or  gs
echo   From: ANY terminal/CLI
echo.
goto :end

:fail
echo.
echo   Setup failed. Fix errors above.
echo.
echo Press any key to exit...
pause >nul
exit /b 1

:end
echo Press any key to exit...
pause >nul
exit /b 0
