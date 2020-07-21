echo off
:inicio
SET var=0
cls
echo  1-Ip  
echo  2-Dominio   
echo  3-Nodos Tor
echo  4-Hash
echo  5-Salir

SET /p var= ^> Selecciona una opcion [1-4]:

if "%var%"=="1" goto op1
if "%var%"=="2" goto op2
if "%var%"=="3" goto op3
if "%var%"=="4" goto op4
if "%var%"=="5" goto salir

:op1

SET /p ip= Dime la ip:

start chrome https://www.abuseipdb.com/check/%ip%
start chrome https://www.virustotal.com/#/ip-address/%ip%/information/
start chrome https://exchange.xforce.ibmcloud.com/ip/%ip%
start chrome https://otx.alienvault.com/indicator/ip/%ip%
start chrome https://www.malwares.com/report/ip?ip=%ip%
start chrome https://www.talosintelligence.com/reputation_center/lookup?search=%ip%
start chrome https://ipindetail.com/ip-blacklist-checker/%ip%.html
start chrome https://www.spamhaus.org/query/ip/%ip%
start chrome https://www.abuseat.org/lookup.cgi?ip=%ip%
start chrome https://www.alienvault.com/open-threat-exchange/dashboard#/my/reputation-monitor/%ip%
start chrome https://dnslytics.com/ip/%ip%
start chrome https://www.shodan.io/host/%ip%

goto inicio


:op2

SET /p dom= Dime el dominio:

start chrome https://www.abuseipdb.com/check/%dom%
start chrome http://www.urlvoid.com/scan/%dom%/
start chrome https://sitereview.bluecoat.com/sitereview.jsp#/?search=%dom%
start chrome https://www.malwares.com/report/host?host=%dom%
start chrome https://exchange.xforce.ibmcloud.com/url/%dom%
start chrome https://www.virustotal.com/#/search/%dom%
start chrome https://urlscan.io/search/#%dom%
start chrome https://www.talosintelligence.com/reputation_center/lookup?search=%dom%
start chrome https://www.spamhaus.org/query/domain/%dom%
start chrome https://ipindetail.com/lookup/%dom%.html

goto inicio

:op3

SET /p ip= Dime la ip del nodo de TOR:

start chrome https://tor-explorer-10kapart2016.azurewebsites.net/?s=%ip%
start chrome https://whatismyipaddress.com/ip/%ip%
start chrome https://www.dan.me.uk/tornodes
start chrome https://torstatus.blutmagie.de/index.php
start chrome https://www.abuseipdb.com/check/%ip%
start chrome https://otx.alienvault.com/indicator/ip/%ip%

goto inicio

:op4

SET /p hash= Dime el hash:

start chrome https://www.virustotal.com/#/file/%hash%/detection
start chrome https://www.malwares.com/report/file?hash=%hash%
start chrome https://www.hybrid-analysis.com/search?query=%hash%

goto inicio


:salir

exit