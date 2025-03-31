
@ECHO OFF
setlocal

set  script_dir=%~dp0

set  VIDEO_CONFIG= -r 15 -q:v 7
set  AUDIO_CONFIG= -b:a 128k
set  OTHER_CONFIG= -map 0:v:1 -map 0:a:1


CALL  "%script_dir%Common.bat"  %*
