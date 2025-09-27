@echo off
echo MySQL Server Setup and Start Script
echo ====================================
echo.

REM CHANGE THIS PATH TO YOUR MYSQL EXTRACTION LOCATION
set MYSQL_PATH=C:\mysql

echo MySQL Path: %MYSQL_PATH%
echo.

REM Check if MySQL directory exists
if not exist "%MYSQL_PATH%" (
    echo ERROR: MySQL directory not found at %MYSQL_PATH%
    echo Please edit this script and set the correct MYSQL_PATH
    pause
    exit /b 1
)

REM Change to MySQL directory
cd /d "%MYSQL_PATH%"

echo Step 1: Initializing MySQL data directory...
if not exist "data" (
    bin\mysqld --initialize-insecure --console
    echo MySQL initialized successfully!
) else (
    echo MySQL data directory already exists.
)

echo.
echo Step 2: Creating configuration file...
echo [mysqld] > my.ini
echo port=3306 >> my.ini
echo datadir=%MYSQL_PATH%\data >> my.ini
echo basedir=%MYSQL_PATH% >> my.ini
echo Configuration file created!

echo.
echo Step 3: Starting MySQL Server...
echo MySQL server is starting... Press Ctrl+C to stop the server
echo.
echo To connect to MySQL in another command prompt, run:
echo   %MYSQL_PATH%\bin\mysql -u root -p
echo.
bin\mysqld --console
