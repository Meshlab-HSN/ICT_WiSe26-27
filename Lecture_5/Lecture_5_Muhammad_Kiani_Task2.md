# Lecture 5 - Task 2:

## 2.1 Filter processes by username

Command:
`ps aux | grep muhammad-hamza-khalid-kiani`

Output:
root        1022  0.0  0.1   8756  5632 ?        Ss   23:38   0:00 login -- muhammad-hamza-khalid-kiani
root        1307  0.0  0.3  18268 12260 ?        Ss   23:39   0:00 sshd-session: muhammad-hamza-khalid-kiani [priv]
muhamma+    1360  1.7  0.2  18564  7692 ?        S    23:39   0:01 sshd-session: muhammad-hamza-khalid-kiani@pts/0
muhamma+    1458  0.0  0.0   6852  2668 pts/0    S+   23:40   0:00 grep --color=auto muhammad-hamza-khalid-kiani

## 2.2 Filter using regular expression

Command:
ps aux | grep '^muhamma[+] '

Output:
muhamma+    1251  0.0  0.3  22212 13040 ?        Ss   23:38   0:00 /usr/lib/systemd/systemd --user
muhamma+    1256  0.0  0.1  23012  4108 ?        S    23:38   0:00 (sd-pam)
muhamma+    1277  0.0  0.1   8856  5940 tty1     Ss+  23:38   0:00 -bash
muhamma+    1360  0.7  0.2  18564  7692 ?        S    23:39   0:02 sshd-session: muhammad-hamza-khalid-kiani@pts/0
muhamma+    1361  0.0  0.1   8960  6140 pts/0    Ss   23:39   0:00 -bash
muhamma+    1526  200  0.1   9764  4672 pts/0    R+   23:45   0:00 ps aux
muhamma+    1527  0.0  0.0   6716  2652 pts/0    S+   23:45   0:00 grep --color=auto ^muhamma[+]

## 2.3 Exclude root processes

Command:
ps aux | grep -v '^root '

Output:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     497  0.0  0.4  22640 14640 ?        Ss   23:38   0:00 /usr/lib/systemd/systemd-resolved
systemd+     716  0.0  0.3  21496 12300 ?        Ss   23:38   0:00 /usr/lib/systemd/systemd-networkd
message+     837  0.0  0.1   9008  5632 ?        Ss   23:38   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      845  0.0  0.2 306448  8560 ?        Ssl  23:38   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
syslog       915  0.0  0.1 220548  6168 ?        Ssl  23:38   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony      949  0.0  0.1  20556  6476 ?        S    23:38   0:00 /usr/sbin/chronyd -n -F 1
_chrony      958  0.0  0.0  12096  2464 ?        S    23:38   0:00 /usr/sbin/chronyd -n -F 1
muhamma+    1251  0.0  0.3  22212 13040 ?        Ss   23:38   0:00 /usr/lib/systemd/systemd --user
muhamma+    1256  0.0  0.1  23012  4108 ?        S    23:38   0:00 (sd-pam)
muhamma+    1277  0.0  0.1   8856  5940 tty1     Ss+  23:38   0:00 -bash
muhamma+    1360  1.1  0.2  18564  7692 ?        S    23:39   0:06 sshd-session: muhammad-hamza-khalid-kiani@pts/0
muhamma+    1361  0.0  0.1   8960  6140 pts/0    Ss   23:39   0:00 -bash
muhamma+    1621  100  0.1   9764  4680 pts/0    R+   23:48   0:00 ps aux
muhamma+    1622  0.0  0.0   6716  2656 pts/0    S+   23:48   0:00 grep --color=auto -v ^root

## 2.4 Exclude kworker and irq processes

Command:
ps aux | grep -Ev 'kworker|irq'

Output:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  1.3  0.4  24728 16124 ?        Ss   23:38   0:09 /usr/lib/systemd/systemd --switched-root --system --deserialize=51
root           2  0.0  0.0      0     0 ?        S    23:38   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    23:38   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    23:38   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    23:38   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    23:38   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    23:38   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    23:38   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    23:38   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    23:38   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    23:38   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    23:38   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    23:38   0:00 [migration/1]
root          30  0.0  0.0      0     0 ?        S    23:38   0:00 [kdevtmpfs]
root          32  0.0  0.0      0     0 ?        I    23:38   0:00 [rcu_tasks_kthread]
root          33  0.0  0.0      0     0 ?        I    23:38   0:00 [rcu_tasks_rude_kthread]
root          34  0.0  0.0      0     0 ?        S    23:38   0:00 [kauditd]
root          35  0.0  0.0      0     0 ?        S    23:38   0:00 [khungtaskd]
root          36  0.0  0.0      0     0 ?        S    23:38   0:00 [oom_reaper]
root          40  0.0  0.0      0     0 ?        S    23:38   0:00 [kcompactd0]
root          41  0.0  0.0      0     0 ?        SN   23:38   0:00 [ksmd]
root          42  0.0  0.0      0     0 ?        SN   23:38   0:00 [khugepaged]
root          55  0.0  0.0      0     0 ?        S    23:38   0:00 [watchdogd]
root          59  0.0  0.0      0     0 ?        S    23:38   0:00 [kswapd0]
root          60  0.0  0.0      0     0 ?        S    23:38   0:00 [ecryptfs-kthread]
root          63  0.0  0.0      0     0 ?        S    23:38   0:00 [scsi_eh_0]
root          65  0.0  0.0      0     0 ?        S    23:38   0:00 [scsi_eh_1]
root         304  0.0  0.0      0     0 ?        S    23:38   0:00 [scsi_eh_2]
root         337  0.0  0.0      0     0 ?        S    23:38   0:00 [jbd2/sda2-8]
root         432  0.0  0.0      0     0 ?        S    23:38   0:00 [psimon]
root         439  0.1  0.4  50396 16968 ?        S<s  23:38   0:00 /usr/lib/systemd/systemd-journald
root         483  0.0  0.2 345028  9776 ?        SLsl 23:38   0:00 /usr/sbin/multipathd -d -s
systemd+     497  0.0  0.4  22640 14640 ?        Ss   23:38   0:00 /usr/lib/systemd/systemd-resolved
root         502  0.1  0.4  41276 15456 ?        Ss   23:38   0:01 /usr/lib/systemd/systemd-udevd
root         571  0.0  0.0      0     0 ?        S    23:38   0:00 [psimon]
systemd+     716  0.0  0.3  21496 12300 ?        Ss   23:38   0:00 /usr/lib/systemd/systemd-networkd
root         836  0.0  0.0   2888  2004 ?        Ss   23:38   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+     837  0.0  0.1   9008  5632 ?        Ss   23:38   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         843  0.1  0.8  46744 30244 ?        Ss   23:38   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      845  0.0  0.2 306448  8560 ?        Ssl  23:38   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root         849  4.2  1.1 1854308 40652 ?       Ssl  23:38   0:28 /snap/snapd/current/usr/lib/snapd/snapd
root         855  0.0  0.2  18568  9616 ?        Ss   23:38   0:00 /usr/lib/systemd/systemd-logind
root         856  0.0  0.4 543368 15092 ?        Ssl  23:38   0:00 /usr/libexec/udisks2/udisksd
root         861  0.0  0.2  10744  7784 ?        Ss   23:38   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root         912  0.0  0.0   7060  3424 ?        Ss   23:38   0:00 /usr/sbin/cron -f -P
syslog       915  0.0  0.1 220548  6168 ?        Ssl  23:38   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony      949  0.0  0.1  20556  6476 ?        S    23:38   0:00 /usr/sbin/chronyd -n -F 1
root         953  0.0  0.9 126116 32984 ?        Ssl  23:38   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony      958  0.0  0.0  12096  2464 ?        S    23:38   0:00 /usr/sbin/chronyd -n -F 1
root         982  0.0  0.4 391500 14096 ?        Ssl  23:38   0:00 /usr/sbin/ModemManager
root        1022  0.0  0.1   8756  5632 ?        Ss   23:38   0:00 login -- muhammad-hamza-khalid-kiani
muhamma+    1251  0.0  0.3  22212 13040 ?        Ss   23:38   0:00 /usr/lib/systemd/systemd --user
muhamma+    1256  0.0  0.1  23012  4108 ?        S    23:38   0:00 (sd-pam)
muhamma+    1277  0.0  0.1   8856  5940 tty1     Ss+  23:38   0:00 -bash
root        1307  0.0  0.3  18268 12260 ?        Ss   23:39   0:00 sshd-session: muhammad-hamza-khalid-kiani [priv]
muhamma+    1360  1.4  0.2  18564  7692 ?        S    23:39   0:09 sshd-session: muhammad-hamza-khalid-kiani@pts/0
muhamma+    1361  0.0  0.1   8960  6148 pts/0    Ss   23:39   0:00 -bash
muhamma+    1716  100  0.1   9764  4720 pts/0    R+   23:49   0:00 ps aux
