@echo off
if exist gta_sa.exe goto yesfile
if not exist gta_sa.exe goto nofile
goto end
:yesfile
color 1f
del wg.txt
del unban_app.dat
echo -------------------------------------------------------------------------------------
echo WELCOME TO WARFARE GAMING UPBAN APPEAL HELPER TOOL
echo -------------------------------------------------------------------------------------
echo Press Any key to continue
:genfile
tree /f /a > wg.txt
zip unban_app.dat wg.txt
del wg.txt
cls 
color 2f
echo -------------------------------------------------------------------------------------
echo PLAESE UPLOAD THE FILE NAMED unban_app.dat IN YOUR BAN APPEAL
echo VISIT : WARFARE-GAMING.COM/FORUM
echo -------------------------------------------------------------------------------------
pause
:nofile
color 4f
echo -------------------------------------------------------------------------------------
echo INCORRECT FOLDER SAMP NOT FOUND
echo PLEASE PASTE THIS PROGRAMME IN YOUR GTA FOLDER AND THEN RUN IT
echo -------------------------------------------------------------------------------------
pause
goto end
:end