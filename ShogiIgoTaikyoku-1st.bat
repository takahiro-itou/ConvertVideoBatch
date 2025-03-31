
@ECHO OFF
setlocal

set  script_dir=%~dp0

set  VIDEO_CONFIG= -r 5 -q:v 11
set  AUDIO_CONFIG= -b:a 160k
set  OTHER_CONFIG= -map 0:v:0 -map 0:a:0


CALL  "%script_dir%Common.bat"  %*
