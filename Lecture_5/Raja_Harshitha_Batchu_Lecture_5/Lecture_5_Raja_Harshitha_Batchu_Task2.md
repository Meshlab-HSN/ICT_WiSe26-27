# Lecture 5 - Task 2: Search and Filter

## Step 1: Filter by username
Command: ps aux | grep harshitha
```
root        2943  0.0  0.1   8756  5540 ?        Ss   11:00   0:00 login -- harshitha
root        4864  0.0  0.3  18264 12184 ?        Ss   21:35   0:00 sshd-session: harshitha [priv]
harshit+    4943  0.0  0.2  18560  7676 ?        S    21:35   0:00 sshd-session: harshitha@pts/1
harshit+    5259  0.0  0.0   6716  2676 pts/1    S+   22:10   0:00 grep --color=auto harshitha
```

## Step 2: Filter using regex
Command: ps -eo user:20,pid,%cpu,%mem,args | grep -E '^harshitha[[:space:]]'
```
harshitha               3049  0.0  0.3 /usr/lib/systemd/systemd --user
harshitha               3056  0.0  0.1 (sd-pam)
harshitha               3080  0.0  0.1 -bash
harshitha               4943  0.0  0.2 sshd-session: harshitha@pts/1
harshitha               4944  0.0  0.1 -bash
harshitha               5260  0.0  0.1 ps -eo user:20,pid,%cpu,%mem,args
harshitha               5261  0.0  0.0 grep --color=auto -E ^harshitha[[:space:]]
```

## Step 3: Exclude root processes
Command: ps aux | grep -Ev '^root[[:space:]]'
```
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
message+     781  0.0  0.1   9144  5836 ?        Ss   09:04   0:01 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      789  0.0  0.2 306448  8476 ?        Ssl  09:04   0:01 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony      852  0.0  0.1  20556  6356 ?        S    09:04   0:01 /usr/sbin/chronyd -n -F 1
syslog       884  0.0  0.1 220548  6216 ?        Ssl  09:04   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony      885  0.0  0.0  12096  2452 ?        S    09:04   0:00 /usr/sbin/chronyd -n -F 1
harshit+    3049  0.0  0.3  22212 12892 ?        Ss   11:00   0:00 /usr/lib/systemd/systemd --user
harshit+    3056  0.0  0.1  23016  4084 ?        S    11:00   0:00 (sd-pam)
harshit+    3080  0.0  0.1   8856  5936 tty1     Ss+  11:00   0:00 -bash
systemd+    3684  0.0  0.4  22564 14696 ?        Ss   13:47   0:00 /usr/lib/systemd/systemd-resolved
systemd+    3697  0.0  0.3  21384 12192 ?        Ss   13:47   0:00 /usr/lib/systemd/systemd-networkd
harshit+    4943  0.0  0.2  18560  7676 ?        S    21:35   0:00 sshd-session: harshitha@pts/1
harshit+    4944  0.0  0.1   8844  5872 pts/1    Ss   21:35   0:00 -bash
harshit+    5262  0.0  0.1   9764  4720 pts/1    R+   22:10   0:00 ps aux
harshit+    5263  0.0  0.0   6716  2688 pts/1    S+   22:10   0:00 grep --color=auto -Ev ^root[[:space:]]
```

## Step 4: Exclude kworker and irq
Command: ps aux | grep -Ev 'kworker|irq'
```
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.4  24912 16256 ?        Ss   09:04   0:04 /usr/lib/systemd/systemd --switched-root --system --deserialize=51
root           2  0.0  0.0      0     0 ?        S    09:04   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    09:04   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    09:04   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    09:04   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    09:04   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    09:04   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    09:04   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    09:04   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    09:04   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    09:04   0:00 [kdevtmpfs]
root          24  0.0  0.0      0     0 ?        I    09:04   0:00 [rcu_tasks_kthread]
root          25  0.0  0.0      0     0 ?        I    09:04   0:00 [rcu_tasks_rude_kthread]
root          26  0.0  0.0      0     0 ?        S    09:04   0:00 [kauditd]
root          27  0.0  0.0      0     0 ?        S    09:04   0:00 [khungtaskd]
root          28  0.0  0.0      0     0 ?        S    09:04   0:00 [oom_reaper]
root          32  0.0  0.0      0     0 ?        S    09:04   0:03 [kcompactd0]
root          33  0.0  0.0      0     0 ?        SN   09:04   0:00 [ksmd]
root          34  0.0  0.0      0     0 ?        SN   09:04   0:00 [khugepaged]
root          46  0.0  0.0      0     0 ?        S    09:04   0:00 [watchdogd]
root          48  0.0  0.0      0     0 ?        S    09:04   0:00 [kswapd0]
root          49  0.0  0.0      0     0 ?        S    09:04   0:00 [ecryptfs-kthread]
root          52  0.0  0.0      0     0 ?        S    09:04   0:00 [scsi_eh_0]
root          54  0.0  0.0      0     0 ?        S    09:04   0:00 [scsi_eh_1]
root         282  0.0  0.0      0     0 ?        S    09:04   0:00 [scsi_eh_2]
root         316  0.0  0.0      0     0 ?        S    09:04   0:00 [jbd2/sda2-8]
root         411  0.0  0.0      0     0 ?        S    09:04   0:00 [psimon]
root         441  0.0  0.2 279492  9644 ?        SLsl 09:04   0:03 /usr/sbin/multipathd -d -s
root         476  0.0  0.4  41260 15484 ?        Ss   09:04   0:01 /usr/lib/systemd/systemd-udevd
root         539  0.0  0.0      0     0 ?        S    09:04   0:00 [psimon]
root         780  0.0  0.0   2888  2012 ?        Ss   09:04   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+     781  0.0  0.1   9144  5836 ?        Ss   09:04   0:01 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         787  0.0  0.8  46744 29988 ?        Ss   09:04   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      789  0.0  0.2 306448  8476 ?        Ssl  09:04   0:01 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root         802  0.0  0.4 543352 15188 ?        Ssl  09:04   0:01 /usr/libexec/udisks2/udisksd
root         825  0.0  0.2  10744  7768 ?        Ss   09:04   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root         851  0.0  0.9 126112 33040 ?        Ssl  09:04   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony      852  0.0  0.1  20556  6356 ?        S    09:04   0:01 /usr/sbin/chronyd -n -F 1
root         871  0.0  0.0   7060  3356 ?        Ss   09:04   0:00 /usr/sbin/cron -f -P
syslog       884  0.0  0.1 220548  6216 ?        Ssl  09:04   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony      885  0.0  0.0  12096  2452 ?        S    09:04   0:00 /usr/sbin/chronyd -n -F 1
root         886  0.0  0.4 391608 14140 ?        Ssl  09:04   0:00 /usr/sbin/ModemManager
root        1584  0.0  0.0   8488  2856 tty6     Ss+  09:33   0:00 /usr/sbin/agetty --noreset --noclear --issue-file=/etc/issue:/etc/issue.d:/run/issue.d:/usr/lib/issue.d - linux
root        2208  0.0  1.3 501568 48208 ?        Ssl  09:58   0:03 /usr/libexec/fwupd/fwupd
root        2217  0.0  0.3 319136 12048 ?        Ssl  09:58   0:21 /usr/libexec/upowerd
root        2943  0.0  0.1   8756  5540 ?        Ss   11:00   0:00 login -- harshitha
harshit+    3049  0.0  0.3  22212 12892 ?        Ss   11:00   0:00 /usr/lib/systemd/systemd --user
harshit+    3056  0.0  0.1  23016  4084 ?        S    11:00   0:00 (sd-pam)
harshit+    3080  0.0  0.1   8856  5936 tty1     Ss+  11:00   0:00 -bash
systemd+    3684  0.0  0.4  22564 14696 ?        Ss   13:47   0:00 /usr/lib/systemd/systemd-resolved
systemd+    3697  0.0  0.3  21384 12192 ?        Ss   13:47   0:00 /usr/lib/systemd/systemd-networkd
root        3699  0.0  0.4  50592 16584 ?        S<s  13:47   0:00 /usr/lib/systemd/systemd-journald
root        3787  0.0  1.1 1738660 40488 ?       Ssl  14:40   0:01 /usr/lib/snapd/snapd
root        3832  0.0  0.2  18648  9620 ?        Ss   14:40   0:00 /usr/lib/systemd/systemd-logind
root        4864  0.0  0.3  18264 12184 ?        Ss   21:35   0:00 sshd-session: harshitha [priv]
harshit+    4943  0.0  0.2  18560  7676 ?        S    21:35   0:00 sshd-session: harshitha@pts/1
harshit+    4944  0.0  0.1   8844  5872 pts/1    Ss   21:35   0:00 -bash
harshit+    5264  0.0  0.1   9764  4664 pts/1    R+   22:10   0:00 ps aux
```
