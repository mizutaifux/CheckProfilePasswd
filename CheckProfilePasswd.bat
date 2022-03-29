@ECHO OFF
REM ==========================================================
REM Check wifi profiles
REM ----------------------------------------------------------
REM Autor: Mizu.Taifux
REM Data : 25/03/2022
REM ==========================================================
CLS
:MAIN
ECHO.
ECHO User Profiles:
ECHO.
netsh wlan show profiles
ECHO.
SET /P pontoAcesso="Entre com o perfil: "
ECHO.
ECHO The %pontoAcesso% profile selected
ECHO.
ECHO.
netsh wlan show profile name="%pontoAcesso%" key=clear >tmp.txt
CLS
ECHO ---------------------------------------------------------
ECHO.
FINDSTR /C:"da Chave" tmp.txt >pwd.txt
FINDSTR /C:"Chave de" tmp.txt >>pwd.txt
FINDSTR /C:"Security Key" tmp.txt >>pwd.txt
FINDSTR /C:"Key Content" tmp.txt >>pwd.txt
TYPE pwd.txt
::DEL pwd.txt
ECHO.
ECHO ---------------------------------------------------------
ECHO.
::DEL tmp.txt
::
ECHO.
PAUSE
CLS
ECHO.
ECHO Check wifi profiles v 1.0
ECHO.
@ECHO ON
