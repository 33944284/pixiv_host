
@echo off
mode con lines=30 cols=60
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
:main
cls
echo.----------------------------------------------------------- 
echo.���棺�����ʹ���Ҽ��Թ���ԱȨ�����д˳���
echo.
echo.����ʹ�ù��ɰ汾
echo.
echo.��ִ�С�2�����ܺ��ٴδ򿪱����ִ�С�1�����ܣ�
echo.
echo.-----------------------------------------------------------
echo.��ѡ���ܣ�
echo.
echo. 1.��Ҫ��Pվ������1��
echo.
echo. 2.�Ҳ�Ҫ��Pվ������2��
echo.-----------------------------------------------------------

if exist "%SystemRoot%\System32\choice.exe" goto Win7Choice

set /p choice=���������ֲ����س���ȷ��:

echo.
if %choice%==1 goto host DNS
if %choice%==2 goto CL
cls
"set choice="
echo �벻Ҫ�����룬OK��
ping 127.0.1 -n "2">nul
goto main

:Win7Choice
choice /c 12 /n /m "���������������Ҫ�Ĺ��ܲ���������Ļس���������"
if errorlevel 2 goto CL
if errorlevel 1 goto host DNS
cls
goto main

:host DNS
cls
color 2f
@echo 127.0.0.1         localhost >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.45	pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.45	www.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.45	accounts.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.45	touch.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.47	www.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.47	accounts.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.47	touch.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.48	www.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.48	accounts.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.48	touch.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.146	source.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.147	imgaz.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.48	app-api.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.48	oauth.secure.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.45	dic.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.153	comic.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.47	payment.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.45	sensei.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.144	novel.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.48	en-dic.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.145	i1.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.145	i2.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.145	i3.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.145	i4.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.159	d.pixiv.org >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.92.135	pixiv.pximg.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.92.136	i.pximg.net >>%SystemRoot%\System32\drivers\etc\hosts
ipconfig /flushdns
echo.-----------------------------------------------------------
echo.     
goto end

:CL
cls
color 2f
@echo 127.0.0.1 localhost >%SystemRoot%\System32\drivers\etc\hosts
echo.
goto end

:end
echo �밴������˳�
@Pause>nul