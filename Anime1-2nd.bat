
@ECHO OFF
setlocal

set  script_dir=%~dp0

set  VIDEO_CONFIG= -q:v 2
set  AUDIO_CONFIG= -b:a 320k
set  OTHER_CONFIG= -map 0:v:1 -map 0:a:1


CALL  "%script_dir%Common.bat"  %*
