
@ECHO OFF
setlocal

set  script_dir=%~dp0

set  VIDEO_CONFIG= -r 15 -q:v 7
set  AUDIO_CONFIG= -b:a 128k
set  OTHER_CONFIG=


CALL  "%script_dir%Common.bat"  %*
