@echo off
echo MySQL Server Setup for Fish Store
echo =================================
echo.

set MYSQL_PATH=D:\fish products\server\mysql-8.0.43-winx64

echo MySQL Path: %MYSQL_PATH%
echo.

REM Check if MySQL directory exists
if not exist "%MYSQL_PATH%" (
    echo ERROR: MySQL directory not found at %MYSQL_PATH%
    pause
    exit /b 1
)

REM Change to MySQL directory
cd /d "%MYSQL_PATH%"

echo Step 1: Initializing MySQL data directory...
if not exist "data" (
    echo Initializing MySQL with no password for root user...
    bin\mysqld --initialize-insecure --console
    echo.
    echo MySQL initialized successfully!
    echo Root user created with NO PASSWORD
) else (
    echo MySQL data directory already exists.
)

echo.
echo Step 2: Creating configuration file...
echo [mysqld] > my.ini
echo port=3306 >> my.ini
echo datadir=%MYSQL_PATH%\data >> my.ini
echo basedir=%MYSQL_PATH% >> my.ini
echo max_connections=200 >> my.ini
echo.
echo Configuration file created!

echo.
echo Step 3: Starting MySQL Server...
echo.
echo MySQL server is starting on port 3306...
echo Press Ctrl+C to stop the server
echo.
echo To connect to MySQL in another command prompt, run:
echo   "%MYSQL_PATH%\bin\mysql" -u root
echo.
echo Starting MySQL server now...
bin\mysqld --console
