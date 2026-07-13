@echo off
setlocal EnableDelayedExpansion

:: =========================================
:: Auto-elevate to Administrator
:: =========================================
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting Administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

echo ===============================================
echo Stopping Anurag-Resumely Service
echo ===============================================

net stop Anurag-Resumely

echo.
echo ==================================
echo Done
echo ==================================

pause
