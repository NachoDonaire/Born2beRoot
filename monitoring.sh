echo --Architecture
hostnamectl | grep "Architecture" | cut -c 7-100
echo --N Procressors
cat /proc/cpuinfo | grep "processor" | wc -l
echo --Available mem
free -m | grep "Mem:" | awk '{print($3*100/$2 "%")}'
echo --Last log in
who -b | cut -c 10-100
echo --Established conecction
netstat -na | grep "ESTABLISHED" | wc -l
echo --Users in server
who | cut -d " " -f1 | wc -l
echo --Server IP
hostname -I
echo --Server MAC adress
ip a | grep "link/ether" | cut -d " " -f6
echo --N sudo commands 
sudo grep sudo /var/log/auth.log | wc -l
