@echo off
rem Starts GLOW.CO on this PC. XAMPP's MySQL must be running first.
cd /d "%~dp0"
if not exist .next\BUILD_ID call npm run build
start "GLOW.CO server" cmd /k npm run api
timeout /t 3 /nobreak >nul
start "" http://glowco.localhost:3102
npm run start
