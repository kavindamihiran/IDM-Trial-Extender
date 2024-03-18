@Echo.
Title IDM Trial Reset & Color 30
@echo ------------------------------------------------------------
@echo
@Echo Resetting your IDM Trial
@echo Your Welcome!
@Echo ------------------------------------------------------------
@echo

Pause
taskkill /im IDMan.exe /f /t
set "HKCU=HKCU\Software\DownloadManager"
if exist "%SystemRoot%\SysWOW64\" (
set "HKCR=HKCR\Wow6432Node\CLSID"
set "HKLM=HKLM\SOFTWARE\Wow6432Node\Internet Download Manager"
) else (
set "HKCR=HKCR\CLSID"
set "HKLM=HKLM\SOFTWARE\Internet Download Manager"
)
echo %HKCR%\{07999AC3-058B-40BF-984F-69EB1E554CA7} [7] >>Permissions
echo %HKCR%\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C} [7] >>Permissions
echo %HKCR%\{6DDF00DB-1234-46EC-8356-27E7B2051192} [7] >>Permissions
echo %HKCR%\{7B8E9164-324D-4A2E-A46D-0165FB2000EC} [7] >>Permissions
echo %HKCR%\{D5B91409-A8CA-4973-9A0B-59F713D25671} [7] >>Permissions
regini Permissions
del Permissions
reg delete "%HKCR%\{07999AC3-058B-40BF-984F-69EB1E554CA7}" /f
reg delete "%HKCR%\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}" /f
reg delete "%HKCR%\{6DDF00DB-1234-46EC-8356-27E7B2051192}" /f
reg delete "%HKCR%\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}" /f
reg delete "%HKCR%\{D5B91409-A8CA-4973-9A0B-59F713D25671}" /f
reg delete "%HKCU%" /v Email /f
reg delete "%HKCU%" /v FName /f
reg delete "%HKCU%" /v LName /f
reg delete "%HKCU%" /v Serial /f
reg delete "%HKLM%" /v Email /f
reg delete "%HKLM%" /v FName /f
reg delete "%HKLM%" /v LName /f
reg delete "%HKLM%" /v Serial /f
reg delete "%HKLM%" /v InstallStatus /f

@echo ------------------------------------------------------------
@echo
@ECHO Congratulations !!!
@echo
@echo ------------------------------------------------------------
@PAUSE