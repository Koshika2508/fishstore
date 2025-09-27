@echo off
echo Setting up MySQL Server from ZIP file...

REM Change to your MySQL installation directory
REM Replace C:\mysql with your actual MySQL path
cd /d C:\mysql

REM Initialize the data directory
echo Initializing MySQL data directory...
bin\mysqld --initialize-insecure --console

REM Create a configuration file
echo Creating my.ini configuration file...
echo [mysqld] > my.ini
echo port=3306 >> my.ini
echo datadir=C:\mysql\data >> my.ini
echo basedir=C:\mysql >> my.ini

echo.
echo MySQL setup complete!
echo.
echo To start MySQL server, run:
echo   C:\mysql\bin\mysqld --console
echo.
echo To connect to MySQL, run:
echo   C:\mysql\bin\mysql -u root -p
echo.
pause
