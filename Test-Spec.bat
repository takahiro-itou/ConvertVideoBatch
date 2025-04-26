
@ECHO OFF
setlocal

set  script_dir=%~dp0

CALL  "%script_dir%Config\Test.cnf.bat"

set  MAP_CONFIG= -map 0:v:%1 -map 0:a:%2

CALL  "%script_dir%Common.bat"  %*
