
@ECHO OFF
setlocal

@REM  CD /D %~dp0

:loop

IF "%~1" == ""  GOTO finish

ffmpeg  -i %1   ^
    -c:v wmv2  -ac 2  -s 480x270 -b:a 320k -q:v 2  ^
    "%~n1.wmv"

SHIFT
GOTO  loop

:finish
