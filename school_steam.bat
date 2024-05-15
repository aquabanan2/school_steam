@echo off
mkdir games_storage
move %cd%download.zip %cd%games_storage
echo @echo off >> launcher.bat
echo echo Welcome to schoolsteam Launcher >> launcher.bat
echo echo Setting program paths... >> launcher.bat
echo set "program1=C:\Users\%username%\Desktop\installation\games_storage\Undertale\UNDERTALE.exe" >> launcher.bat
echo set "program2=C:\Users\%username%\Desktop\installation\games_storage\Slime Rancher\SlimeRancher.exe" >> launcher.bat
echo set "program3=C:\Users\%username%\Desktop\installation\games_storage\Grapple" >> launcher.bat
echo set "program4=empty" >> launcher.bat
echo set "program5=empty" >> launcher.bat
echo set "program6=empty" >> launcher.bat
echo set "program7=empty" >> launcher.bat
echo echo Checking available options... >> launcher.bat
echo set "options=" >> launcher.bat
echo if exist "%program1%" set "options=1. Option 1" & set "program[1]=%program1%" >> launcher.bat
echo if exist "%program2%" set "options=2. Option 2" & set "program[2]=%program2%" >> launcher.bat
echo if exist "%program3%" set "options=3. Option 3" & set "program[3]=%program3%" >> launcher.bat
echo if exist "%program4%" set "options=4. Option 4" & set "program[4]=%program4%" >> launcher.bat
echo if exist "%program5%" set "options=5. Option 5" & set "program[5]=%program5%" >> launcher.bat
echo if exist "%program6%" set "options=6. Option 6" & set "program[6]=%program6%" >> launcher.bat
echo if exist "%program7%" set "options=7. Option 7" & set "program[7]=%program7%" >> launcher.bat
echo echo Displaying available options... >> launcher.bat
echo echo Choose an option: >> launcher.bat
echo. >> launcher.bat
echo %options% >> launcher.bat
echo. >> launcher.bat
echo echo Prompting for choice... >> launcher.bat
echo set /p choice=Enter your choice:  >> launcher.bat
echo echo Executing chosen program... >> launcher.bat
echo if defined program[%choice%] ( >> launcher.bat
echo     echo Running Option %choice%... >> launcher.bat
echo     start "" "!program[%choice%]!" >> launcher.bat
echo ) else ( >> launcher.bat
echo     echo Invalid choice. Please enter a valid option. >> launcher.bat
echo ) >> launcher.bat
echo echo Closing launcher... >> launcher.bat
echo pause >> launcher.bat
cd %cd%games_storage
tar -gz download.zip
del download.zip
echo sucess
curl parrot.live
