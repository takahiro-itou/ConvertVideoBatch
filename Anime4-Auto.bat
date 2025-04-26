
@ECHO OFF
setlocal

set  script_dir=%~dp0

CALL  "%script_dir%Config\Anime4.cnf.bat"
CALL  "%script_dir%Common.bat"  auto  auto  %*
