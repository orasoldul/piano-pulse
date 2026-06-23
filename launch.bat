@echo off
title PianoPulse
echo Starting PianoPulse...
where python >nul 2>nul
if %errorlevel%==0 (
  echo Using Python HTTP server...
  cd /d "%~dp0"
  start "" http://localhost:8088
  python -m http.server 8088
) else (
  echo Python not found. Opening index.html directly...
  start "" "%~dp0index.html"
)
pause