@echo off
SetLocal EnableDelayedExpansion

:: Ҫ���ҵ��ļ�
set ext=*.hdf

:: Reference Image
set "refImage=I:\wuhan\landsat\2000\122038\L71122038_03820000914_B61.TIF"
:: 
set "outFile=batch_modis.txt"
cd.>%outFile%

REM ���ļ�����ԭ�ļ����е���ʼλ�ã���0��ʼ
set pstart=23

REM ���ļ�����ԭ�ļ����еĳ���
set length=2

REM �����ļ�������ȡ�����Ϊ���ļ���
for %%a in (!ext!) do (

rem ��������
set dn=%%~da

rem �ļ�����
set pn=%%~pa

REM �ļ���
set fn=%%~na

REM ��׺
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