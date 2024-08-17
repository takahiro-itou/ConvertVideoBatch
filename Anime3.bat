
@ECHO OFF
setlocal

@REM  CD /D %~dp0

:loop

IF "%~1" == ""  GOTO finish

set  source=%~1
set  output=%~n1.wmv

ECHO  Source : %source%
ECHO  Output : %output%
ECHO  Option : %FFMPEG_OPTS%

set  command_line=ffmpeg  -i "%source%"  ^
  -c:v wmv2 -ac 2 -s 480x270 -b:a 160k -r 15 -q:v 5  ^
  %FFMPEG_OPTS%  ^
  "%output%"
ECHO  RunCmd: %command_line%

@ECHO  ON
%command_line%
@ECHO  OFF

SHIFT
GOTO  loop

:finish
