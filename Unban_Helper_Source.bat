@echo off

if exist gta_sa.exe goto yesfile
if not exist gta_sa.exe goto regpath
goto end

:regpath
for /f "tokens=3" %%a in ('reg query "HKEY_CURRENT_USER\Software\SAMP"  /V gta_sa_exe  ^|findstr /ri "REG_SZ"') do echo %%a > gta_path.txt
set /p GTA_PATH=<gta_path.txt
del gta_path.txt
copy /y wgCrypt.exe %GTA_PATH:~0,-11%
cd /D %GTA_PATH:~0,-11%
if exist gta_sa.exe goto yesfile
if not exist gta_sa.exe goto nofile

:yesfile
color 1f
del wg.txt
del unban_app.dat
echo -------------------------------------------------------------------------------------
echo WELCOME TO WARFARE GAMING UPBAN APPEAL HELPER TOOL
echo -------------------------------------------------------------------------------------
echo Press Any key to continue
if exist wgCrypt.exe goto genfile
if not exist gta_sa.exe goto nowgcrypt
:genfile
for /f "tokens=3" %%a in ('reg query "HKEY_CURRENT_USER\Software\SAMP"  /V gta_sa_exe  ^|findstr /ri "REG_SZ"') do echo %%a > gta_path.txt
tree /f /a > tree_wg.txt
dir /T:W > time_wg.txt
wgCrypt.exe unban_app.dat tree_wg.txt time_wg.txt gta_path.txt
pause
del tree_wg.txt
del time_wg.txt
del gta_path.txt
cls 
color 2f
echo -------------------------------------------------------------------------------------
echo PLAESE UPLOAD THE FILE NAMED unban_app.dat IN YOUR BAN APPEAL
echo VISIT : WARFARE-GAMING.COM/FORUM
echo -------------------------------------------------------------------------------------
goto end
:nofile
color 4f
echo -------------------------------------------------------------------------------------
echo INCORRECT FOLDER SAMP NOT FOUND
echo PLEASE PASTE THIS PROGRAMME IN YOUR GTA FOLDER AND THEN RUN IT
echo -------------------------------------------------------------------------------------
pause
goto end
:nowgcrypt
color 4f
echo -------------------------------------------------------------------------------------
echo wgCrypt.exe NOT FOUND
echo PLEASE PASTE ALL THE FILES IN YOUR GTA FOLDER AND THEN RUN IT
echo --------------------------------------------------------------------------------------
pause
goto end
:end