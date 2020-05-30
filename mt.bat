@echo off
title Batch Multitool
color 0a
echo ------------------------------------------------------------------------
echo                           Batch Multitool
echo ------------------------------------------------------------------------
echo.
pause
cls
:Start
cls
COLOR %color%
title Start
echo The First thing you have to do is to choose what you want to do
echo.
echo Type the number to redirect to where you want to go.
echo.
echo 1) Get mainboard info
echo 2) Get HDD\SSD info
echo 3) Show network configuration
echo 4) Reset attrib (un-hide, un-system) of files in current directory
echo 5) Odin-ass clean cache
echo 6) Pc Cleanup
echo 7) List Process
echo 8) Kill Process
echo 9) CREDITS
echo.
set/p b=
if %b%==1 GOTO mbinfo
if %b%==2 GOTO hdinfo
if %b%==3 GOTO netinfo
if %b%==4 GOTO rattrib
if %b%==5 GOTO 1scc
if %b%==6 GOTO pcl
if %b%==7 GOTO listp
if %b%==8 GOTO killp
if %b%==9 GOTO credits
pause
:mbinfo
rem ------- mb start -------
cls
title Mainboard Info
echo --------------------------------------------------------------------------------
echo Get Mainboard Info
echo --------------------------------------------------------------------------------
echo.
wmic baseboard get Manufacturer, product
pause
goto Start
rem ------- mb end -------
rem ------- disk start -------
:hdinfo
cls
title Disks
echo --------------------------------------------------------------------------------
echo Get disks Info
echo --------------------------------------------------------------------------------
wmic diskdrive get model,name,size,status
pause
goto Start
rem ------- net start -------
:netinfo
cls
title Show network info
echo --------------------------------------------------------------------------------
echo Show Network Info
echo --------------------------------------------------------------------------------
echo.
ipconfig /all
pause
goto start
rem ------- net end -------
rem ------- rattib start -------
:rattrib
cls
title Set attrib
echo --------------------------------------------------------------------------------
echo Flush dirs and file attrib
echo --------------------------------------------------------------------------------
echo.
attrib -S -H /S /D
echo Done.
echo.
pause
goto Start
rem ------- rattib end -------
rem ------- 1scc start -------
:1scc
title Odin`s clean
echo --------------------------------------------------------------------------------
echo Clean 1C user cache
echo --------------------------------------------------------------------------------
echo off
del /s /q %userprofile%\AppData\Local\1C\*.*
rd  /s /q %userprofile%\AppData\Local\1C\
del /s /q %userprofile%\AppData\Roaming\1C\1cv8\*.*
rd  /s /q %userprofile%\AppData\Roaming\1C\1cv8\
del /s /q %userprofile%\AppData\Roaming\1C\1cv82\*.*
rd  /s /q %userprofile%\AppData\Roaming\1C\1cv82\
pause
goto start
rem ------- 1scc end -------
rem ------- pcl start -------
:pcl
cls
title Cleanup
echo --------------------------------------------------------------------------------
echo PC Cleanup Utility
echo --------------------------------------------------------------------------------
echo.
echo Select a tool
echo =============
echo.
echo [1] Delete Internet Cookies
echo [2] Delete Temporary Internet Files
echo [3] Disk Cleanup
echo [4] Exit
echo.
set /p op=Run:
if %op%==1 goto 1
if %op%==2 goto 2
if %op%==3 goto 3
if %op%==4 goto start
goto error
pause
:1
cls
echo --------------------------------------------------------------------------------
echo Delete Internet Cookies
echo --------------------------------------------------------------------------------
echo.
echo Deleting Cookies...
ping localhost -n 3 >nul
del /f /q "%userprofile%\Cookies\*.*"
cls
echo --------------------------------------------------------------------------------
echo Delete Internet Cookies
echo --------------------------------------------------------------------------------
echo.
echo Cookies deleted.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto Start
:2
cls
echo --------------------------------------------------------------------------------
echo Delete Temporary Internet Files
echo --------------------------------------------------------------------------------
echo.
echo Deleting Temporary Files...
ping localhost -n 3 >nul
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
cls
echo --------------------------------------------------------------------------------
echo Delete Temporary Internet Files
echo --------------------------------------------------------------------------------
echo.
echo Temporary Internet Files deleted.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto Start
:3
cls
echo --------------------------------------------------------------------------------
echo Disk Cleanup
echo --------------------------------------------------------------------------------
echo.
echo Running Disk Cleanup...
ping localhost -n 3 >nul
if exist "C:\WINDOWS\temp"del /f /q "C:WINDOWS\temp\*.*"
if exist "C:\WINDOWS\tmp" del /f /q "C:\WINDOWS\tmp\*.*"
if exist "C:\tmp" del /f /q "C:\tmp\*.*"
if exist "C:\temp" del /f /q "C:\temp\*.*"
if exist "%temp%" del /f /q "%temp%\*.*"
if exist "%tmp%" del /f /q "%tmp%\*.*"
if not exist "C:\WINDOWS\Users\*.*" goto skip
if exist "C:\WINDOWS\Users\*.zip" del "C:\WINDOWS\Users\*.zip" /f /q
if exist "C:\WINDOWS\Users\*.exe" del "C:\WINDOWS\Users\*.exe" /f /q
if exist "C:\WINDOWS\Users\*.gif" del "C:\WINDOWS\Users\*.gif" /f /q
if exist "C:\WINDOWS\Users\*.jpg" del "C:\WINDOWS\Users\*.jpg" /f /q
if exist "C:\WINDOWS\Users\*.png" del "C:\WINDOWS\Users\*.png" /f /q
if exist "C:\WINDOWS\Users\*.bmp" del "C:\WINDOWS\Users\*.bmp" /f /q
if exist "C:\WINDOWS\Users\*.avi" del "C:\WINDOWS\Users\*.avi" /f /q
if exist "C:\WINDOWS\Users\*.mpg" del "C:\WINDOWS\Users\*.mpg" /f /q
if exist "C:\WINDOWS\Users\*.mpeg" del "C:\WINDOWS\Users\*.mpeg" /f /q
if exist "C:\WINDOWS\Users\*.ra" del "C:\WINDOWS\Users\*.ra" /f /q
if exist "C:\WINDOWS\Users\*.ram" del "C:\WINDOWS\Users\*.ram"/f /q
if exist "C:\WINDOWS\Users\*.mp3" del "C:\WINDOWS\Users\*.mp3" /f /q
if exist "C:\WINDOWS\Users\*.mov" del "C:\WINDOWS\Users\*.mov" /f /q
if exist "C:\WINDOWS\Users\*.qt" del "C:\WINDOWS\Users\*.qt" /f /q
if exist "C:\WINDOWS\Users\*.asf" del "C:\WINDOWS\Users\*.asf" /f /q
:skip
if not exist C:\WINDOWS\Users\Users\*.* goto skippy /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.zip del C:\WINDOWS\Users\Users\*.zip /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.exe del C:\WINDOWS\Users\Users\*.exe /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.gif del C:\WINDOWS\Users\Users\*.gif /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.jpg del C:\WINDOWS\Users\Users\*.jpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.png del C:\WINDOWS\Users\Users\*.png /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.bmp del C:\WINDOWS\Users\Users\*.bmp /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.avi del C:\WINDOWS\Users\Users\*.avi /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpg del C:\WINDOWS\Users\Users\*.mpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpeg del C:\WINDOWS\Users\Users\*.mpeg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ra del C:\WINDOWS\Users\Users\*.ra /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ram del C:\WINDOWS\Users\Users\*.ram /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mp3 del C:\WINDOWS\Users\Users\*.mp3 /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.asf del C:\WINDOWS\Users\Users\*.asf /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.qt del C:\WINDOWS\Users\Users\*.qt /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mov del C:\WINDOWS\Users\Users\*.mov /f /q
:skippy
if exist "C:\WINDOWS\ff*.tmp" del C:\WINDOWS\ff*.tmp /f /q
if exist C:\WINDOWS\ShellIconCache del /f /q "C:\WINDOWS\ShellI~1\*.*"
cls
echo --------------------------------------------------------------------------------
echo Disk Cleanup
echo --------------------------------------------------------------------------------
echo.
echo Disk Cleanup successful!
echo.
pause
goto Start
:exit
exit
rem
rem ------- plc end -------
rem ------- listp start -------
:listp
cls
title Task list
echo --------------------------------------------------------------------------------
echo.
echo Press Enter to view your current Tasklist (it shows more then the Taskmanager does!!)
echo.
echo --------------------------------------------------------------------------------
pause
cls
tasklist
pause
goto Start
rem ------- listp end -------
rem ------- killp start -------
:killp
echo --------------------------------------------------------------------------------
echo.
echo You need to know the Process ID of the task to kill it.
echo (1)I dont know the Process ID
echo (2)I know the Process ID and want to Continue
echo.
echo --------------------------------------------------------------------------------
set/p task=
if %task%==1 GOTO Taskl
if %task%==2 GOTO Taskk2
pause
:Taskk2
cls
title Taskkill!
COLOR %color%
echo You now need to write the Process ID!
set/p pid=
pause
taskkill -pid %pid%
pause
goto Start
rem ------- killp end -------
rem ------- credits start -------
:credits
cls
title CREDITS
echo --------------------------------------------------------------------------------
echo.
echo. Write by the29a and powered by WTFPL
echo.
echo --------------------------------------------------------------------------------
pause
goto start
rem ------- credits start -------
