
@ECHO OFF
setlocal

@REM  CD /D %~dp0

set  convtype=%~1
SHIFT

:loop

IF "%~1" == ""  GOTO finish

set  source=%~1

set  conv_cmd=%convtype%  "%source%"
set  conv_log=cscript //NoLogo Tee.vbs  -a Convert.log

ECHO  %conv_cmd%  ^^^|  %conv_log%  | cscript //NoLogo  Tee.vbs -a  Run.bat

SHIFT
GOTO  loop

:finish
