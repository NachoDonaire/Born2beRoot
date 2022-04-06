echo --Architecture
hostnamectl | grep "Architecture" | cut -c 7-100
echo --N Procressors
cat /proc/cpuinfo | grep "processor" | wc -l
echo --Available mem
free -m | grep "Mem:" | awk '{print($3*100/$2 "%")}'
