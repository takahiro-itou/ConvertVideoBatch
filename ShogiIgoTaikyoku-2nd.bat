
@ECHO OFF
setlocal

set  script_dir=%~dp0

CALL  "%script_dir%Config\ShogiIgoTaikyoku.cnf.bat"

set  MAP_CONFIG= -map 0:v:1 -map 0:a:1

CALL  "%script_dir%Common.bat"  1  1  %*
