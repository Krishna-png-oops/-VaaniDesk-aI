@echo off
echo ======================================================================
echo    VaaniDesk AI - Multilingual Intelligent Receptionist & AI Labs
echo ======================================================================
echo.

:: Check Python installation
python --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Python is not installed or not in PATH. Please install Python 3.10+.
    pause
    exit /b 1
)

:: Create Virtual Environment if not present
if not exist "venv" (
    echo [*] Creating virtual environment (venv)...
    python -m venv venv
)

:: Activate Virtual Environment
echo [*] Activating virtual environment...
call venv\Scripts\activate.bat 2>nul || call venv\Scripts\activate 2>nul

:: Install dependencies
echo [*] Installing dependencies from requirements.txt...
pip install -r requirements.txt

:: Initialize SQLite Database with Seed Data
echo [*] Initializing SQLite database and sample records...
python backend\database.py

:: Start Flask Web Application
echo.
echo ======================================================================
echo  VaaniDesk AI Server is running!
echo  Open your web browser and navigate to:
echo  URL: http://127.0.0.1:5000
echo ======================================================================
echo.
python backend\app.py

pause
