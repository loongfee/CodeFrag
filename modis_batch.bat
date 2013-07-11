@echo off
SetLocal EnableDelayedExpansion

:: 要查找的文件
set ext=*.hdf

:: Reference Image
set "refImage=I:\wuhan\landsat\2000\122038\L71122038_03820000914_B61.TIF"
:: 
set "outFile=batch_modis.txt"
cd.>%outFile%

REM 新文件名在原文件名中的起始位置，从0开始
set pstart=23

REM 新文件名在原文件名中的长度
set length=2

REM 遍历文件，并截取编号作为新文件名
for %%a in (!ext!) do (

rem 驱动器名
set dn=%%~da

rem 文件夹名
set pn=%%~pa

REM 文件名
set fn=%%~na

REM 后缀
set en=%%~xa

REM reprojected_file
set "ofn=!dn!!pn!!fn!.tif"

set "outLine=%refImage% %%~fa !ofn!"


rem echo %refImage%
REM  %outLine%

echo !outLine! >> %outFile%

)

!outFile!
pause