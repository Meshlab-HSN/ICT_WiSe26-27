# Lecture 5 – Task 3: Data Manipulation

## Part A – Working with sed
Command: sed -i 's/root/ROOT/g' processes.log
Output:
ROOT           1  0.2  0.1  24324 15324 ?        Ss   20:07   0:00 /sbin/init
ROOT           2  0.0  0.0   3820  2524 hvc0     Sl+  20:07   0:00 /init
ROOT           3  0.0  0.0   3680  2220 hvc0     S+   20:07   0:00 init-watcher
ROOT           7  0.0  0.0   3820  2296 hvc0     Sl+  20:07   0:00 plan9 --control-socket 7 --log-level 4 --server-fd 8 --pipe-fd 10 --log-truncate
ROOT          44  0.0  0.2  42456 17900 ?        S<s  20:07   0:00 /usr/lib/systemd/systemd-journald
ROOT          85  0.0  0.1  34872 12180 ?        Ss   20:07   0:00 /usr/lib/systemd/systemd-udevd
ROOT         106  0.0  0.0   2888  1948 ?        Ss   20:07   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
ROOT         107  0.0  0.0   4472  3088 ?        Ss   20:07   0:00 /usr/sbin/cron -f -P
ROOT         146  0.1  0.3  44096 29856 ?        Ss   20:07   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
ROOT         168  0.0  0.1  18564  9456 ?        Ss   20:07   0:00 /usr/lib/systemd/systemd-logind

### Creating users.txt
Command: cat /etc/passwd > users.txt
Command: sed -i '/nologin/d' users.txt
Output:
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:996:996:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
vaishnavink:x:1000:1000::/home/vaishnavink:/bin/bash

## Part B – Working with awk

### Step 1 – Users, UID and GID
Command: awk -F: '{printf "User %s has UID %s and GID %s\n", $1, $3, $4}' /etc/passwd
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
User dhcpcd has UID 996 and GID 996
User messagebus has UID 995 and GID 995
User syslog has UID 100 and GID 101
User systemd-resolve has UID 989 and GID 989
User _chrony has UID 988 and GID 988
User landscape has UID 101 and GID 103
User polkitd has UID 987 and GID 987
User vaishnavink has UID 1000 and GID 1000

### Step 2 – Username and process name
Command: awk 'NR>1 && NF>=11 {print $1, $11}' processes.log
ROOT /sbin/init
ROOT /init
ROOT init-watcher
ROOT plan9
ROOT /usr/lib/systemd/systemd-journald
systemd+ /usr/lib/systemd/systemd-resolved
ROOT /usr/lib/systemd/systemd-udevd
ROOT /bin/sh
ROOT /usr/sbin/cron
message+ @dbus-daemon
ROOT /usr/bin/python3
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/wsl-pro-service
syslog /usr/sbin/rsyslogd
ROOT /usr/sbin/agetty
ROOT /usr/bin/python3
_chrony /usr/sbin/chronyd
_chrony /usr/sbin/chronyd
ROOT /init
ROOT /init
vaishna+ -bash
ROOT login
vaishna+ /usr/lib/systemd/systemd
vaishna+ (sd-pam)
vaishna+ -bash
ROOT (udev-worker)
ROOT (udev-worker)
vaishna+ ps

### Step 3 – Total CPU usage
Command: awk 'NR>1 && NF>=11 {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log
Total CPU usage: 0.30%
