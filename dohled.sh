#!/bin/bash
cas=`date +%T`
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
lidi=`who| wc -l`
disk=`df -h | grep sda1 | awk -F " " '{print $2}'`
diskq=`df -h | grep sda1 | awk -F " " '{print $3}'` 
diskw=`df -h | grep sda1 | awk -F " " '{print $4}'` 
diske=`df -h | grep sda1 | awk -F " " '{print $5}'` 
echo "Aktualni cas: "$cas >> /home/student/Plocha/skripty/index.html
echo "Moje IP: "$ip >> /home/student/Plocha/skripty/index.html
echo "Prijata data: "$rx >> /home/student/Plocha/skripty/index.html
echo "Odeslana data: "$tx >> /home/student/Plocha/skripty/index.html
echo "Lidi na pocitaci:"$lidi >> /home/student/Plocha/skripty/index.html
echo "Misto na disku:"$disk >> /home/student/Plocha/skripty/index.html
echo "Vyuzite misto na disku:"$diskq >> /home/student/Plocha/skripty/index.html
echo "Volne misto na disku:"$diskw >> /home/student/Plocha/skripty/index.html
echo "Vyuziti mista v % na disku:"$diske >> /home/student/Plocha/skripty/index.html
echo "<br><br>" >> /home/student/Plocha/skripty/index.html

