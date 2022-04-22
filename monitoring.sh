#!/bin/bash
echo --Architecture
hostnamectl | grep "Architecture" | cut -c 7-100
echo --Kernel V
hostnamectl | grep "Kernel" | cut -c 13-100
echo --CPUs
cat /proc/cpuinfo | grep "processor" | wc -l
echo --virtual CPUs
cat /proc/cpuinfo | grep "processor" | wc -l
echo --Used/Available memory
df -h | awk '$NF=="/"{printf("%s\n", $5)}'
echo --Used RAM mem
free -m | grep "Mem:" | awk '{print($3*100/$2 "%")}'
echo --Average Kernel usage:
top -bn1 | grep load | awk '{printf "%.2f\n", $(NF-2)}'
echo --Last log in
who -b | cut -c 10-100
echo --Established conecction
netstat -na | grep "ESTABLISHED" | wc -l
echo --is LVM active?
lsblk | grep lvm | awk '{if($1) {print"yes"; exit} else {print"no"}}'
echo --Users in server
who | cut -d " " -f1 | wc -l
echo --Server IP
hostname -I
echo --Server MAC adress
ip a | grep "link/ether" | cut -d " " -f6
echo --N sudo commands
sudo grep -a 'sudo ' /var/log/auth.log | wc -l
~
~
