# Lecture 5 - Task 3 Report
**Name:** swarnima-

## 1. Sed: Emphasize root processes
```bash
sed "s/^root/ROOT/g" processes.log | head -n 15
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.0  0.3  22736 13012 ?        Ss   18:27   0:02 /sbin/init
ROOT           2  0.0  0.0      0     0 ?        S    18:27   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    18:27   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   18:27   0:00 [kworker/R-rcu_g]
ROOT           5  0.0  0.0      0     0 ?        I<   18:27   0:00 [kworker/R-rcu_p]
ROOT           6  0.0  0.0      0     0 ?        I<   18:27   0:00 [kworker/R-slub_]
ROOT           7  0.0  0.0      0     0 ?        I<   18:27   0:00 [kworker/R-netns]
ROOT           9  0.0  0.0      0     0 ?        I<   18:27   0:00 [kworker/0:0H-events_highpri]
ROOT          12  0.0  0.0      0     0 ?        I<   18:27   0:00 [kworker/R-mm_pe]
ROOT          13  0.0  0.0      0     0 ?        I    18:27   0:00 [rcu_tasks_kthread]
ROOT          14  0.0  0.0      0     0 ?        I    18:27   0:00 [rcu_tasks_rude_kthread]
ROOT          15  0.0  0.0      0     0 ?        I    18:27   0:00 [rcu_tasks_trace_kthread]
ROOT          16  0.0  0.0      0     0 ?        S    18:27   0:00 [ksoftirqd/0]
ROOT          17  0.0  0.0      0     0 ?        I    18:27   0:00 [rcu_preempt]
```

## 2. Awk: Formatted passwd output
```bash
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
User systemd-timesync has UID 997 and GID 997
User dhcpcd has UID 100 and GID 65534
User messagebus has UID 101 and GID 102
User systemd-resolve has UID 992 and GID 992
User pollinate has UID 102 and GID 1
User polkitd has UID 991 and GID 991
User syslog has UID 103 and GID 104
User uuidd has UID 104 and GID 105
User tcpdump has UID 105 and GID 107
User landscape has UID 106 and GID 108
User fwupd-refresh has UID 989 and GID 989
User sshd has UID 107 and GID 65534
User swarnima- has UID 1000 and GID 1000
User usbmux has UID 108 and GID 46
User rtkit has UID 109 and GID 109
User dnsmasq has UID 999 and GID 65534
User whoopsie has UID 110 and GID 111
User lightdm has UID 111 and GID 114
User avahi has UID 112 and GID 117
User saned has UID 113 and GID 118
User colord has UID 114 and GID 119
User cups-pk-helper has UID 115 and GID 120
User pulse has UID 116 and GID 121
User cups-browsed has UID 117 and GID 120
```

## 3. Awk: Username and Process Name
```bash
awk 'NR>1 && NF>=11 {print $1, $11}' processes.log | head -n 15
ROOT /sbin/init
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_g]
ROOT [kworker/R-rcu_p]
ROOT [kworker/R-slub_]
ROOT [kworker/R-netns]
ROOT [kworker/0:0H-events_highpri]
ROOT [kworker/R-mm_pe]
ROOT [rcu_tasks_kthread]
ROOT [rcu_tasks_rude_kthread]
ROOT [rcu_tasks_trace_kthread]
ROOT [ksoftirqd/0]
ROOT [rcu_preempt]
ROOT [migration/0]
```

## 4. Awk: Sum up CPU usage
```bash
awk 'NR>1 && NF>=11 {sum += $3} END {print "Total CPU Usage: " sum "%"}' processes.log
Total CPU Usage: 163%
```
