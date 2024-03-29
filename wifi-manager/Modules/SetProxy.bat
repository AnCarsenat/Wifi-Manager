if not defined in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )
rem netsh winhttp set proxy proxy_server_ip:proxy_port
rem You need to run it as admin for it to work

goto main

:wait_for_input_func
setlocal
set /p wait_for_input_function_5678="Press any key to continue"
endlocal
goto menu_%current_menu%

:main
rem define vars
set current_menu=main

echo off
cls
echo %cd%\%~nx0
echo _______________
echo [ Proxy setup ]
echo [  By  Ancar  ]
echo [_____________]
set current_menu=start_menu
goto wait_for_input_func
:menu_start_menu


choice /c 123 /M "1: Reset configs 2: Setup proxy 3: Fast proxy setup"

:config_menu1
netsh winhttp reset proxy
netsh winhttp reset autoproxy






:config_menu2
set current_menu=elevated_menu
:menu_elevated_menu

echo Proxy setup V1.0 uses netsh as a way of seting up the proxy,
echo the arguments necessary are : ip adress and port
echo\
echo Ip adress : the proxy server ip (Ex:173.245.49.36)
echo\
echo Port : the opened port on this server (Ex:80)
echo\
set /p ip=Ip adress :
set /p port=Port :
netsh winhttp set proxy "%ip:"%port%"




