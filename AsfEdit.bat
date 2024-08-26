
@ECHO OFF
setlocal

@REM  CD /D %~dp0

:loop

IF "%~1" == ""  GOTO finish

set  source=%~1
set  output=%~2

ECHO  Source : %source%
ECHO  Output : %output%
ECHO  Option : %FFMPEG_OPTS%

set  command_line=ffmpeg  ^
  -f concat  -safe 0  -i "%source%"  ^
  -c:v copy -c:a copy -map 0:v -map 0:a  ^
  "%output%"
ECHO  RunCmd: %command_line%

@ECHO  ON
%command_line%
@ECHO  OFF

SHIFT
GOTO  loop

:finish
