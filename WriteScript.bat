
@ECHO OFF
setlocal

@REM  CD /D %~dp0

set  convtype=%~1
SHIFT

:loop

IF "%~1" == ""  GOTO finish

set  source=%~1

set  command_line=CALL  %convtype%  "%source%"

ECHO  %command_line%  | cscript //NoLogo  Tee.vbs -a  Run.bat

SHIFT
GOTO  loop

:finish
