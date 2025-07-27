@rem 
@rem PROJECT:    Mouri Internal Library Essentials
@rem FILE:       Install.cmd
@rem PURPOSE:    Mile.Dokany.Driver Installer
@rem 
@rem LICENSE:    The MIT License
@rem 
@rem MAINTAINER: MouriNaruto (Kenji.Mouri@outlook.com)
@rem 

@echo off

if exist "%SystemRoot%\SysNative\cmd.exe" (
    "%SystemRoot%\SysNative\cmd.exe" /c "%~dpnx0" %*
    exit /b %errorlevel%
)

rem ----------------------------------------------------------------------------
:Menu
rem ----------------------------------------------------------------------------
cls
echo ================================================================
echo Mile.Dokany.Driver Installer
echo ================================================================
echo [I] Install the Driver
echo [U] Uninstall the Driver
echo [X] Exit
echo ================================================================
choice /c IUX
cls
echo ================================================================
echo Mile.Dokany.Driver Installer
echo ================================================================
if %errorlevel% equ 1 (
    echo Installing the Driver...
    call :InstallDriver
)
if %errorlevel% equ 2 (
    echo Uninstalling the Driver...
    call :UninstallDriver
)
if %errorlevel% equ 3 (
    cls
    exit /b
)
echo ================================================================
pause
goto :Menu
rem ----------------------------------------------------------------------------

rem ----------------------------------------------------------------------------
:UninstallDriver
rem ----------------------------------------------------------------------------
setlocal enabledelayedexpansion
if !errorlevel! equ 0 (
    if exist "%SystemRoot%\System32\Drivers\Dokan2.sys" (
        sc stop Dokan2
        sc delete Dokan2
        del /f "%SystemRoot%\System32\Drivers\Dokan2.sys"
    )
    endlocal
)
exit /b
rem ----------------------------------------------------------------------------

rem ----------------------------------------------------------------------------
:InstallDriver
rem ----------------------------------------------------------------------------
setlocal enabledelayedexpansion
if !errorlevel! equ 0 (
    call :UninstallDriver
    if !errorlevel! equ 0 (
        if /i "%PROCESSOR_ARCHITECTURE%"=="amd64" set Arch=x64
        if /i "%PROCESSOR_ARCHITECTURE%"=="arm64" set Arch=arm64
        if /i "%PROCESSOR_ARCHITECTURE%"=="x86" set Arch=x86

        copy /y "%~dp0\!Arch!\Dokan2.sys" "%SystemRoot%\System32\Drivers\Dokan2.sys"
        if !errorlevel! equ 0 (
            sc create Dokan2 type= filesys start= auto error= ignore binPath= "%SystemRoot%\System32\Drivers\Dokan2.sys"
            if !errorlevel! equ 0 (
                sc start Dokan2
            )
        )
    )
    endlocal
)
exit /b
rem ----------------------------------------------------------------------------