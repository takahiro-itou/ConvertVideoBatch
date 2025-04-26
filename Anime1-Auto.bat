
@ECHO OFF
setlocal

set  script_dir=%~dp0

CALL  "%script_dir%Config\Anime1.cnf.bat"

set  MAP_CONFIG=

CALL  "%script_dir%Common.bat"  auto  auto  %*
