@echo off

echo -----------------------------
echo SPEED FORCE NETWORKS LLC
echo Windows Network Reset Script
echo Visit : https://speedforce.eu.org/
echo -----------------------------
echo Resetting network settings...

netsh winsock reset
netsh int ip reset
netsh interface ipv4 reset
netsh interface ipv6 reset
netsh interface tcp reset
netsh interface teredo reset
netsh interface httpstunnel reset
netsh interface 6to4 reset
netsh interface isatap reset
ipconfig /release
ipconfig /renew
arp -d *
nbtstat -R
nbtstat -RR
ipconfig /flushdns
ipconfig /registerdns

echo -----------------------------
echo SPEED FORCE NETWORKS LLC
echo Windows Network Reset Script
echo Visit : https://speedforce.eu.org/
echo -----------------------------
echo Network settings reset completed.

ping 127.0.0.1 -n 5 > nul
exit
