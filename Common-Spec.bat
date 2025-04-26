
@ECHO OFF
setlocal

@REM  CD /D %~dp0

set   MAP_CONFIG= -map 0:v:%1 -map 0:a:%2

SHIFT
SHIFT


ECHO  Video Config : %VIDEO_CONFIG%
ECHO  Audio Config : %AUDIO_CONFIG%
ECHO  Other Config : %OTHER_CONFIG%
ECHO  Map   Config : %MAP_CONFIG%
ECHO  Extra Option : %FFMPEG_OPTS%
ECHO  Flag Dry-Run : %FLAG_DRYRUN%

:loop

IF "%~1" == ""  GOTO finish

set  source=%~1
set  output=%~n1.wmv

ECHO  Source : %source%
ECHO  Output : %output%

set  video_common= -c:v wmv2  -s 480x270  -aspect 16:9
set  audio_common= -c:a wmav2  -ac 2  -af volume=6dB

set  video_opts=%video_common%  %VIDEO_CONFIG%
set  audio_opts=%audio_common%  %AUDIO_CONFIG%
set  other_opts=%MAP_CONFIG%    %OTHER_CONFIG%

set  command_line=ffmpeg  -i "%source%"  ^
  %video_opts%  %audio_opts%  %other_opts%  %FFMPEG_OPTS%  "%output%"
ECHO  RunCmd: %command_line%

IF "%FLAG_DRYRUN%" == "dryrun" GOTO dryrun

@ECHO  ON
%command_line%
FileTimeTools.exe  -C  -r "%source%"  "%output%"
@ECHO  OFF

:dryrun

SHIFT
GOTO  loop

:finish
