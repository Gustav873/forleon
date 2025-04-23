@echo off
start setup.exe
cls

:: Starte das Fake-Setup
echo Starte Setup...
set /p token=Gib den Bot Token ein: 
echo Bot Token ist %token%
call :download

pause
exit /b

:download
setlocal enabledelayedexpansion
set /a counter=0
set /a total=50  :: Gesamtzahl der Schritte (50 Schritte = 100%)

:: Beginne die Schleife für den "Download"
:loop
set /a counter+=1
set /a progress=(counter*100)/total

:: Berechne, wie viele "=" Zeichen im Balken angezeigt werden sollen
set /a numEqualSigns=(counter*20)/total  :: Maximale Länge des Balkens ist 20
set "bar="
for /L %%i in (1,1,%numEqualSigns%) do set "bar=!bar!=

:: Zeige den Download-Balken und den Fortschritt an
cls
echo [!bar!%progress%%]

:: Simuliere eine Verzögerung für den Download (500 Millisekunden)
ping -n 1 -w 500 127.0.0.1 >nul

:: Überprüfe, ob der Download abgeschlossen ist
if %counter% lss %total% goto loop

echo Setup abgeschlossen!
goto :eof
