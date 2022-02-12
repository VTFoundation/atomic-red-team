@echo off

:start
cls
echo.
echo  ^>^> Which Operation you want to perform?
echo.
echo  1 --^> Install Atomic-Red-Team.
echo  2 --^> Uninstall Atomic-Red-Team.
echo  3 --^> Automated FIN6-ART Testing.
echo  4 --^> Clean-Up FIN6-ART Testing.
echo.
echo  0 --^> Exit.
echo.

set option= Option: 
set /p option= %option%

if %option%==0 (
	echo.
	echo  GoodBye ...
	echo  See You Later ...
	echo.
	exit
)
if %option%==1 (
	cls
	echo.
	echo  ^>^> Installing Atomic-Red-Team ...
	curl https://raw.githubusercontent.com/VTFoundation/art-auto-testing/main/ART-win/scripts/Install_ART.ps1 -o C:\ProgramData\art_installer.ps1 && start /wait powershell.exe -File C:\ProgramData\art_installer.ps1
	echo  ^>^> Installed Atomic-Red-Team Successfully ...
	echo.
	pause
	del C:\ProgramData\art_installer.ps1
	goto start
) 
if %option%==2 (
	cls
	echo.
	echo  ^>^> Uninstalling Atomic-Red-Team ...
	echo.
	echo  Not Updated till now ... 
	echo  Come back later ...
	echo.
	::curl https://raw.githubusercontent.com/VTFoundation/tbx/main/scripts/install_cb.ps1 -o C:\ProgramData\art_uninstaller.ps1 && start /wait powershell.exe -File C:\ProgramData\art_uninstaller.ps1
	echo  ^>^> Uninstalled Atomic-Red-Team Successfully ...
	echo.
	pause
	del C:\ProgramData\art_uninstaller.ps1
	goto start
) 
if %option%==3 (
	cls
	echo.
	echo  ^>^> Starting Automated FIN6-ART Testing ...
	curl https://raw.githubusercontent.com/VTFoundation/art-auto-testing/main/ART-win/scripts/ART_FIN6.ps1 -o C:\ProgramData\art_fin6.ps1 && start /wait powershell.exe -File C:\ProgramData\art_fin6.ps1
	echo  ^>^> Successfully Completed Automated FIN6-ART Testing ...
	echo.
	pause
	del C:\ProgramData\art_fin6.ps1
	goto start
) 
if %option%==4 (
	cls
	echo.
	echo  ^>^> Initializing Clean-Up for FIN6-ART Testing ...
	curl https://raw.githubusercontent.com/VTFoundation/art-auto-testing/main/ART-win/scripts/Cleanup_FIN6.ps1 -o C:\ProgramData\art_fin6_cleanup.ps1 && start /wait powershell.exe -File C:\ProgramData\art_fin6_cleanup.ps1
	echo  ^>^> FIN6-ART Testing Clean-Up Successfully Completed ...
	echo.
	pause
	del C:\ProgramData\art_fin6_cleanup.ps1
	goto start
) else (
	cls
	echo  ^>^> Please Enter Correct value ...
	echo.
	pause
	goto start
)

pause
