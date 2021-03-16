@echo off
RD /S "C:\CITony\"
if not exist "C:\CITony\" mkdir C:\CITony
SET VAR=hola

wmic printer get name >> "C:\CITony\nombresImpresoras16.txt"
powershell -Command "Get-Content C:\CITony\nombresImpresoras16.txt -Encoding Unicode | Set-Content -Encoding UTF8 C:\CITony\nombresImpresoras.txt"

start impresoraspantallaazul.exe
echo Ya casi 2/3
pause
set "File=c:\CITony\nombresImpresorasSinEspacios.txt"
SETLOCAL enabledelayedexpansion
FOR /F "tokens=1  DELIMS=" %A%=%%A IN ('Type "%File%"') DO (

echo rundll32 printui.dll, PrintUIEntry /Xs /n "%%A" attributes +direct >> tem.bat

rem pause
)
echo  es lo ultimo 3/3
pause
start tem.bat

	echo -----------------------------------------------------------------------------
	echo.
	echo """""""""""""""""""""""""""""""""""""""""""""""""
	echo "___________                                    "
	echo "\__    ___/___   ____  ___.__.                 "
	echo "  |    | /  _ \ /    \ |  |  |                 "
	echo "  |    |(  <_> )   |  \\___  |                 "
	echo "  |____| \____/|___|  // ____|                 "
	echo "                    \/ \/                      "
	echo " _____ _____ _____     ______    _             "
	echo "/  __ \_   _|_   _|    | ___ \  | |            "
	echo "| /  \/ | |   | |______| |_/ /__| |_ ___ _ __  "
	echo "| |     | |   | |______|  __/ _ \ __/ _ \ '_ \ "
	echo "| \__/\_| |_  | |      | | |  __/ ||  __/ | | |"
	echo " \____/\___/  \_/      \_|  \___|\__\___|_| |_|"
	echo """""""""""""""""""""""""""""""""""""""""""""""""                       
pause
DEL /F /A tem.bat
pause
exit