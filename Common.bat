
@ECHO OFF
setlocal

set  script_dir=%~dp0

set  DUMMY_MAP_V=%1
SHIFT
set  DUMMY_MAP_A=%2
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

CALL  "%script_dir%\Config\Common.cnf.bat"

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
