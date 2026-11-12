sed -i 's/root/ROOT/g' processes.log
awk '{print $1. $11}'processes.log
awk 'NR>1 {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log
cp /etc/passwd users.txt
sed -i '/nologin/d' users.txt
awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd

