
@ECHO OFF
setlocal

@REM  CD /D %~dp0

:loop

IF "%~1" == ""  GOTO finish

set  source=%~1
set  time_s=%2
set  time_i=%3
set  output=%~4

ECHO  Source : %source%
ECHO  Output : %output%
ECHO  Begin  : %time_s%
ECHO  Length : %time_i%
ECHO  Option : %FFMPEG_OPTS%

set  interval= -ss %time_s%  -t %time_i%
set  copy_opts= -c:v copy -c:a copy  -avoid_negative_ts make_zero
set  segment_opts=%interval%  -accurate_seek  -i "%source%"

set  command_line=ffmpeg  ^
  -i "%source%"  -ss %time_s%  -to %time_e%  ^
  %copy_opts%  "%output%"
ECHO  RunCmd: %command_line%

@ECHO  ON
%command_line%
@ECHO  OFF

SHIFT
GOTO  loop

:finish
