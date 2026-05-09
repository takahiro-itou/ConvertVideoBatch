
CD /D  "F:\AutoConvert\Anime"
CALL  Anime2-1st  "$FilePath$"  2>&1  |  cscript //NoLogo Tee.vbs  -a Convert.log

IF errorlevel 1 GOTO failure

MOVE /Y  "$FilePath$"  "L:\AutoConverted\Anime"

echo  SUCCESS

EXIT /B 0

:failure

set bat_err=%errorlevel%
echo  Batch Failed : %bat_err%

EXIT /B %bat_err%
