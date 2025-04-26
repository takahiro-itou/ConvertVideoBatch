
@ECHO OFF
setlocal

set  script_dir=%~dp0

CALL  "%script_dir%Config\ShogiIgoTaikyoku.cnf.bat"

set  MAP_CONFIG= -map 0:v:0 -map 0:a:0

CALL  "%script_dir%Common.bat"  0  0  %*
