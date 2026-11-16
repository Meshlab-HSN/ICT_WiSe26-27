
# Lecture 5 – Task 3: Data Manipulation

## Part A – Working with sed

### 1. Replace root with ROOT in processes.log

**Command:**

sed -i 's/^root/ROOT/' processes.log
grep '^ROOT' processes.log | head

**Output:**
ROOT           1  0.1  0.6  22152 13336 ?        Ss   09:29   0:01 /sbin/init
ROOT           2  0.0  0.0      0     0 ?        S    09:29   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    09:29   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   09:29   0:00 [kworker/R-rcu_g]
ROOT           5  0.0  0.0      0     0 ?        I<   09:29   0:00 [kworker/R-rcu_p]
ROOT           6  0.0  0.0      0     0 ?        I<   09:29   0:00 [kworker/R-slub_]
ROOT           7  0.0  0.0      0     0 ?        I<   09:29   0:00 [kworker/R-netns]
ROOT          10  0.0  0.0      0     0 ?        I<   09:29   0:00 [kworker/0:0H-kblockd]
ROOT          11  0.0  0.0      0     0 ?        I    09:29   0:00 [kworker/u2:0-events_power_efficient]
ROOT          12  0.0  0.0      0     0 ?        I<   09:29   0:00 [kworker/R-mm_pe]


### 2. Create users.txt and remove nologin users

**Commands:**

cat /etc/passwd > users.txt
sed -i '/nologin/d' users.txt
cat users.txt


**Output:**
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:100:65534:DHCP Client Daemon,,,:/usr/lib/dhcpcd:/bin/false
pollinate:x:102:1::/var/cache/pollinate:/bin/false
tss:x:106:108:TPM software stack,,,:/var/lib/tpm:/bin/false
mary-nirosa:x:1000:1000:mary-nirosa:/home/mary-nirosa:/bin/bash

## Part B – Working with awk

### 1. Display username, UID and GID

**Command:**

awk -F: '{print "User " $1 " has UID " $3 " and GID " $4 }' /etc/passwd


**Output:**

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
User systemd-timesync has UID 997 and GID 997
User dhcpcd has UID 100 and GID 65534
User messagebus has UID 101 and GID 102
User systemd-resolve has UID 992 and GID 992
User pollinate has UID 102 and GID 1
User polkitd has UID 991 and GID 991
User syslog has UID 103 and GID 104
User uuidd has UID 104 and GID 105
User tcpdump has UID 105 and GID 107
User tss has UID 106 and GID 108
User landscape has UID 107 and GID 109
User fwupd-refresh has UID 989 and GID 989
User usbmux has UID 108 and GID 46
User sshd has UID 109 and GID 65534
User mary-nirosa has UID 1000 and GID 1000

### 2. Display username and process name

**Command:**

awk 'NR>1 {print "Username: "$1, "| process: "$11}' processes.log

**Output:**

Username: mary-ni+ | process: ps
Username: 96 | process:

### 3. Calculate total CPU usage

**Command:**

awk 'NR>1 {sum += $3} END {print "Total CPU Usage:", sum "%"}' processes.log


**Output:**

Total CPU Usage: 1.7%
