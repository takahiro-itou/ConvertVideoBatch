
@ECHO OFF
setlocal

set  script_dir=%~dp0

set  VIDEO_CONFIG= -q:v 2
set  AUDIO_CONFIG=
set  OTHER_CONFIG= -map 0:v:0 -map 0:a:0


CALL  "%script_dir%Common.bat"  %*
