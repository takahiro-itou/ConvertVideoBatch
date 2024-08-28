
@ECHO OFF
setlocal

@REM  CD /D %~dp0

:loop

IF "%~1" == ""  GOTO finish

set  source=%~1
set  time_s=%2
set  time_e=%3
set  output=%~4

ECHO  Source : %source%
ECHO  Output : %output%
ECHO  Begin  : %time_s%
ECHO  Last   : %time_e%
ECHO  Option : %FFMPEG_OPTS%

set  command_line=ffmpeg  ^
  -ss %time_s%  -i "%source%"  -ss 0  -to %time_e%  ^
  -c:v copy -c:a copy -async 1  ^
  "%output%"
ECHO  RunCmd: %command_line%

@ECHO  ON
%command_line%
@ECHO  OFF

SHIFT
GOTO  loop

:finish
