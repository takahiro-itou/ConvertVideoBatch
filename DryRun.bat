
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

set  video_common= -c:v wmv2  -s 480x270  -aspect 16:9
set  audio_common= -ac 2

set  video_opts=%video_common%  -q:v 2
set  audio_opts=%audio_common%  -b:a 320k

set  command_line=ffmpeg  ^
  -i "%source%"  ^
  %video_opts%  ^
  %audio_opts%  ^
  %FFMPEG_OPTS%  ^
  "%output%"
ECHO  RunCmd: %command_line%

SHIFT
GOTO  loop

:finish
