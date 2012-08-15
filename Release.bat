@echo off
setlocal enabledelayedexpansion
COLOR 0A
if (%1)==(0) goto skipme
if (%1) neq () goto adbi
echo -------------------------------------------------------------------------- >> Release.log
echo ^|%date% -- %time%^| >> Release.log
echo -------------------------------------------------------------------------- >> Release.log
Release 0 2>> Release.log



:error

:skipme
cd "%~dp0"
mode con:cols=90 lines=50



cls


:skipme2
cls
ECHO ***************************************************************************************
ECHO *                               APK Batch Release                                     *
ECHO ***************************************************************************************
ECHO *                    Written By Gerald Wayne Baggett Jr {Raziel23x                    *
ECHO ***************************************************************************************
ECHO *                           Website: http://apkmultitool.com                          *
ECHO ***************************************************************************************
ECHO *           Empowering you to Do Your BEST where ever the path may lead you           *
ECHO ***************************************************************************************
ECHO *                                                                                     *
ECHO *                                                                                     *
ECHO *                                                                                     * 
ECHO *                                                                                     *
ECHO ***************************************************************************************
ECHO *                                                                                     *
ECHO *                                                                                     *
ECHO ***************************************************************************************


PAUSE
:MAINMENU
cd "%~dp0"
set menunr=GARBAGE
cls
ECHO ***************************************************************************************
ECHO *                               APK Batch Release                                     *
ECHO ***************************************************************************************
ECHO * 0. APK Multi-Tool                                                                   *
ECHO *    This feature allows you to Zip or tar.gz without packing the .git                *
ECHO *    Allowing you to release your git project without your private info from github   *
ECHO ***************************************************************************************
ECHO * 1. APK-Multi-Tool2                                                                  *
ECHO *    This feature allows you to Zip or tar.gz without packing the .git                *
ECHO *    Allowing you to release your git project without your private info from github   *
ECHO ***************************************************************************************
ECHO * 2. APK-Multi-Tool-Linux                                                             *
ECHO *    This feature allows you to Zip or tar.gz without packing the .git                *
ECHO *    Allowing you to release your git project without your private info from github   *
ECHO ***************************************************************************************
ECHO * 3.  COMING SOON                                                                     *
ECHO *                                                                                     *
ECHO *                                                                                     *
ECHO ***************************************************************************************
ECHO * 4.  COMING SOON                                                                     *
ECHO *                                                                                     *
ECHO *                                                                                     *
ECHO ***************************************************************************************
ECHO *                                       SETTINGS                                      *
ECHO ***************************************************************************************

ECHO * 5.   Read Log                                                                       *
ECHO * 6.  About / Tips / Debug Section                                                   *
ECHO * 00.  Quit                                                                           *
ECHO ***************************************************************************************
SET /P menunr=Please make your decision:
IF %menunr%==0 (goto MENU00)
IF %menunr%==1 (goto MENU01)
IF %menunr%==2 (goto MENU02)
IF %menunr%==3 (goto MENU03)
IF %menunr%==4 (goto MENU04)
IF %menunr%==5 (goto logr)
IF %menunr%==6 (goto about)
IF %menunr%==00 (goto quit)

:WHAT
ECHO ***************************************************************************************
ECHO *       You went crazy and entered something that wasnt part of the menu options      *
ECHO ***************************************************************************************
PAUSE
goto MAINMENU

:logr
cd other
Start "Read The Log - Main script is still running, close this to return" signer 1
goto MAINMENU

:about
cls
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *                                   About                                       *
ECHO *                                                                               *
ECHO *********************************************************************************
ECHO * Description coming soon                                                       *
ECHO *                                                                               *
ECHO *                                                                               *
ECHO *********************************************************************************
ECHO *                                                                               *
type other\version.txt
ECHO *                                                                               *
ECHO *********************************************************************************
ECHO *                                                                               *
ECHO *********************************************************************************

PAUSE
goto MAINMENU

:MENU00

cd "%~dp0"
set menunr=GARBAGE00
cls
ECHO ***************************************************************************************
ECHO *                                APK MULTI-TOOL                                       *
ECHO ***************************************************************************************
ECHO *                       Simple Tasks Such As Image Editing                            *
ECHO ***************************************************************************************
ECHO * 0    ZIP APK MULTI-TOOL                                                             *
ECHO * 1    7z  APK MULTI-TOOL                                                             *
ECHO * 2    tar APK MULTI-TOOL                                                             *
ECHO * 3    gz  APK MULTI-TOOL                                                             *
ECHO ***************************************************************************************
SET /P menunr=Please make your decision:
IF %menunr%==0 (goto APKZIP)
IF %menunr%==1 (goto APK7Z)
IF %menunr%==2 (goto APKTAR)
IF %menunr%==3 (goto APKGZ)

:WHAT
ECHO ***************************************************************************************
ECHO *       You went crazy and entered something that wasnt part of the menu options      *
ECHO ***************************************************************************************
PAUSE
goto MENU00
:APKZIP
cd ..\APK-Multi-Tool
"C:\Program Files\7-Zip\7z.exe" a -r -tzip -y -mx9 -mmt ..\releases\APK-Multi-Tool.zip -xr!?git\
cd "%~dp0"
pause
goto MENU00

:APK7Z
cd ..\APK-Multi-Tool
"C:\Program Files\7-Zip\7z.exe" a -r -t7z -y -mx9 -mmt ..\releases\APK-Multi-Tool.7z -xr!?git\
cd "%~dp0"
pause
goto MENU00

:APKTAR
ECHO ***************************************************************************************
ECHO *                                     COMING SOON                                     *
ECHO ***************************************************************************************
pause
goto MENU00

:APKGZ
ECHO ***************************************************************************************
ECHO *                                     COMING SOON                                     *
ECHO ***************************************************************************************
pause
goto MENU00

:MENU01
cd "%~dp0"
set menunr=GARBAGE01
cls
ECHO ***************************************************************************************
ECHO *                               APK MULTI-TOOL2                                       *
ECHO ***************************************************************************************
ECHO *                       Simple Tasks Such As Image Editing                            *
ECHO ***************************************************************************************
ECHO * 0    ZIP APK MULTI-TOOL2                                                            *
ECHO * 1    7z  APK MULTI-TOOL2                                                            *
ECHO * 2    tar APK MULTI-TOOL2                                                            *
ECHO * 3    gz  APK MULTI-TOOL2                                                            *
ECHO ***************************************************************************************
SET /P menunr=Please make your decision:
IF %menunr%==0 (goto APK2ZIP)
IF %menunr%==1 (goto APK27Z)
IF %menunr%==2 (goto APK2TAR)
IF %menunr%==3 (goto APK2GZ)
:WHAT
ECHO ***************************************************************************************
ECHO *       You went crazy and entered something that wasnt part of the menu options      *
ECHO ***************************************************************************************
PAUSE
goto MENU01

:APK2ZIP
cd ..\APK-Multi-Tool2
"C:\Program Files\7-Zip\7z.exe" a -r -tzip -y -mx9 -mmt ..\releases\APK-Multi-Tool2.zip -xr!?git\
cd "%~dp0"
pause
goto MENU01

:APK27Z
cd ..\APK-Multi-Tool2
"C:\Program Files\7-Zip\7z.exe" a -r -t7z -y -mx9 -mmt ..\releases\APK-Multi-Tool2.7z -xr!?git\
cd "%~dp0"
pause
goto MENU01

:APK2TAR
ECHO ***************************************************************************************
ECHO *                                     COMING SOON                                     *
ECHO ***************************************************************************************
pause
goto MENU01

:APK2GZ
ECHO ***************************************************************************************
ECHO *                                     COMING SOON                                     *
ECHO ***************************************************************************************
pause
goto MENU01

:MENU02
cd "%~dp0"
set menunr=GARBAGE02
cls
ECHO ***************************************************************************************
ECHO *                             APKT MULTI-TOOL Linux                                   *
ECHO ***************************************************************************************
ECHO *                       Simple Tasks Such As Image Editing                            *
ECHO ***************************************************************************************
ECHO * 0    ZIP APK MULTI-TOOL Linux                                                       *
ECHO * 1    7z  APK MULTI-TOOL Linux                                                       *
ECHO * 2    tar APK MULTI-TOOL Linux                                                       *
ECHO * 3    gz  APK MULTI-TOOL Linux                                                       *
ECHO ***************************************************************************************
SET /P menunr=Please make your decision:
IF %menunr%==0 (goto APKlZIP)
IF %menunr%==1 (goto APKl7Z)
IF %menunr%==2 (goto APKlTAR)
IF %menunr%==3 (goto APKlGZ)
:WHAT
ECHO ***************************************************************************************
ECHO *       You went crazy and entered something that wasnt part of the menu options      *
ECHO ***************************************************************************************
PAUSE

:APKlZIP
cd ..\APK-Multi-Tool-Linux
"C:\Program Files\7-Zip\7z.exe" a -r -tzip -y -mx9 -mmt ..\releases\APK-Multi-Tool-Linux.zip -xr!?git\
cd "%~dp0"
pause
goto MENU01

:APKl7Z
cd ..\APK-Multi-Tool-Linux
"C:\Program Files\7-Zip\7z.exe" a -r -t7z -y -mx9 -mmt ..\releases\APK-Multi-Tool-Linux.7z -xr!?git\
cd "%~dp0"
pause
goto MENU01

:APKlTAR
ECHO ***************************************************************************************
ECHO *                                     COMING SOON                                     *
ECHO ***************************************************************************************
pause
goto MENU01

:APKlGZ
ECHO ***************************************************************************************
ECHO *                                     COMING SOON                                     *
ECHO ***************************************************************************************
pause
goto MENU01

goto MENU02
:MENU03
cd "%~dp0"
set menunr=GARBAGE03
cls
ECHO ***************************************************************************************
ECHO *                                     COMING SOON                                     *
ECHO ***************************************************************************************
ECHO *                                                                                     *
ECHO * 0   BACK TO MAIN MENU                                                               *
ECHO *                                                                                     *
ECHO ***************************************************************************************
SET /P menunr=Please make your decision:
IF %menunr%==0 (goto MAINMENU)

:WHAT
ECHO ***************************************************************************************
ECHO *       You went crazy and entered something that wasnt part of the menu options      *
ECHO ***************************************************************************************
PAUSE
goto MENU03
:MENU04
cd "%~dp0"
set menunr=GARBAGE04
cls
ECHO ***************************************************************************************
ECHO *                                     COMING SOON                                     *
ECHO ***************************************************************************************
ECHO *                                                                                     *
ECHO * 0   BACK TO MAIN MENU                                                               *
ECHO *                                                                                     *
ECHO ***************************************************************************************
SET /P menunr=Please make your decision:
IF %menunr%==0 (goto MAINMENU)

:WHAT
ECHO ***************************************************************************************
ECHO *       You went crazy and entered something that wasnt part of the menu options      *
ECHO ***************************************************************************************
PAUSE
goto MENU04


:quit
exit