cp /etc/passwd users.txt
sed -i '/nologin/d' users.txt# Task 3 - Data manipulation

## Working with sed

### 1. Emphasize "root" in processes.log
**Command:**
```bash
sed -i 's/\broot\b/ROOT/g' processes.log

cp /etc/passwd users.txt
sed -i '/nologin/d' users.txt

awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd



User root has UID 0 and GID 0
User daemon has UID 1 and GID 1
User bin has UID 2 and GID 2
User sys has UID 3 and GID 3
User sync has UID 4 and GID 65534
User games has UID 5 and GID 60
User man has UID 6 and GID 12
User lp has UID 7 and GID 7
User mail has UID 8 and GID 8
User news has UID 9 and GID 9
User uucp has UID 10 and GID 10
User proxy has UID 13 and GID 13
User www-data has UID 33 and GID 33
User backup has UID 34 and GID 34
User list has UID 38 and GID 38
User irc has UID 39 and GID 39
User _apt has UID 42 and GID 65534
User nobody has UID 65534 and GID 65534
User systemd-network has UID 998 and GID 998
User dhcpcd has UID 997 and GID 997
User messagebus has UID 996 and GID 996
User systemd-resolve has UID 990 and GID 990
User _chrony has UID 989 and GID 989
User usbmux has UID 100 and GID 46
User polkitd has UID 988 and GID 988
User syslog has UID 101 and GID 103
User uuidd has UID 102 and GID 104
User tcpdump has UID 986 and GID 986
User tss has UID 985 and GID 985
User landscape has UID 103 and GID 106
User fwupd-refresh has UID 984 and GID 984
User oishi-saha has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534

awk 'NR>1 {print $1, $NF}' processes.log

ROOT --deserialize=49
ROOT [kthreadd]
ROOT [pool_workqueue_release]
oishi-s+ aux

awk 'NR>1 {sum+=$3} END {print "Total CPU usage: " sum "%"}' processes.log

Total CPU usage: 237.8%




