@echo off
setlocal

rem === Define paths ===
set SCRIPT_DIR=%~dp0
set TARGET_BAT=%SCRIPT_DIR%toggle-theme.bat
set ICON_FILE=%SCRIPT_DIR%bulb.ico
set SHORTCUT_NAME=Toggle Theme
set SHORTCUT_PATH=%USERPROFILE%\Desktop\%SHORTCUT_NAME%.lnk

rem === Check required files ===
if not exist "%TARGET_BAT%" (
    echo [Error] toggle-theme.bat not found in %SCRIPT_DIR%
    exit /b 1
)
if not exist "%ICON_FILE%" (
    echo [Error] bulb.ico not found in %SCRIPT_DIR%
    exit /b 1
)

rem === Create the shortcut using PowerShell ===
echo Creating desktop shortcut...
powershell -NoProfile -ExecutionPolicy Bypass ^
  "$s=(New-Object -COM WScript.Shell).CreateShortcut('%SHORTCUT_PATH%');" ^
  "$s.TargetPath='%TARGET_BAT%';" ^
  "$s.WorkingDirectory='%SCRIPT_DIR%';" ^
  "$s.IconLocation='%ICON_FILE%';" ^
  "$s.Description='Toggle between Light and Dark mode instantly';" ^
  "$s.Save()"

if exist "%SHORTCUT_PATH%" (
    echo Shortcut created successfully on your Desktop: "%SHORTCUT_NAME%"
    echo Icon: "%ICON_FILE%"
) else (
    echo [Error] Failed to create shortcut.
)

pause
endlocal
