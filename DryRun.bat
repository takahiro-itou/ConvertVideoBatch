
@ECHO OFF
setlocal

set  script_dir=%~dp0

set  VIDEO_CONFIG= -q:v 2
set  AUDIO_CONFIG= -b:a 320k
set  OTHER_CONFIG=
set  FLAG_DRYTUN=dryrun

CALL  "%script_dir%Common.bat"  %*
