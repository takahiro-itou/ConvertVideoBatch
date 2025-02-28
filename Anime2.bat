
@ECHO OFF
setlocal

set  script_dir=%~dp0

set  VIDEO_CONFIG= -r 30000/1001 -q:v 3
set  AUDIO_CONFIG= -b:a 192k
set  OTHER_CONFIG=


CALL  "%script_dir%Common.bat"  %*
