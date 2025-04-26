
@ECHO OFF
setlocal

set  script_dir=%~dp0

CALL  "%script_dir%Config\Variety1.cnf.bat"
CALL  "%script_dir%Common.bat"  auto  auto  %*
