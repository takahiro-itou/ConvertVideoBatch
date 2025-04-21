
@ECHO OFF
setlocal

set  script_dir=%~dp0

set  VIDEO_CONFIG= -r 30000/1001 -q:v 3
set  AUDIO_CONFIG= -b:a 192k
set  OTHER_CONFIG= -map 0:v:%1 -map 0:a:%2

SHIFT
SHIFT


CALL  "%script_dir%Common.bat"  %*
