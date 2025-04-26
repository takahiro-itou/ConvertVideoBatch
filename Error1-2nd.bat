
@ECHO OFF
setlocal

set  script_dir=%~dp0

CALL  "%script_dir%Config\Error1.cnf.bat"
CALL  "%script_dir%Common.bat"  1  1  %*
