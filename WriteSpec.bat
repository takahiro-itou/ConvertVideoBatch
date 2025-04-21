
@ECHO OFF
setlocal

@REM  CD /D %~dp0

set  convtype=%~1
SHIFT

set  arg_map_v=%1
SHIFT

set  arg_map_a=%1
SHIFT

:loop

IF "%~1" == ""  GOTO finish

set  source=%~1

set  conv_cmd=CALL  %convtype%-Spec  %arg_map_v%  %arg_map_a%  "%source%"
set  conv_log=cscript //NoLogo Tee.vbs  -a Convert.log

ECHO %conv_cmd%  2^^^>^^^&1  ^^^|  %conv_log%  ^
    |  cscript //NoLogo  Tee.vbs -a  Run.bat

SHIFT
GOTO  loop

:finish
