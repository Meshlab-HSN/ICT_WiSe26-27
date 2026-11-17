# ICT Lecture 5 - Task 2
Name: Venkat Kunapareddy

## 1. Search processes using username
Command: ps aux | grep "venkat-k"
```text
root        1073  0.0  0.1   8760  5636 ?        Ss   14:53   0:00 login -- venkat-kunapareddy
root        1405  0.0  0.3  18528 12684 ?        Ss   14:54   0:00 sshd-session: venkat-kunapareddy [priv]
venkat-+    1457  0.2  0.2  18688  7704 ?        S    14:54   0:05 sshd-session: venkat-kunapareddy@pts/0
venkat-+    1991  0.0  0.0   4364  2500 pts/0    S+   15:26   0:00 grep --color=auto venkat-k
```

## 2. Search username using regular expression
Command: ps aux | grep "^venkat-k+ "
```text
```

## 3. Display processes except root
Command: ps aux | grep -v "^root "
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     592  0.0  0.4  22632 14660 ?        Ss   14:53   0:00 /usr/lib/systemd/systemd-resolved
systemd+     838  0.0  0.3  21436 12196 ?        Ss   14:53   0:00 /usr/lib/systemd/systemd-networkd
message+    1009  0.0  0.1   9000  5652 ?        Ss   14:53   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1016  0.0  0.2 306448  8492 ?        Ssl  14:53   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony     1077  0.0  0.3  23732 11256 ?        S    14:53   0:00 /usr/sbin/chronyd -n -F 1
syslog      1091  0.0  0.1 220548  6148 ?        Ssl  14:53   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1110  0.0  0.0  12096  2340 ?        S    14:53   0:00 /usr/sbin/chronyd -n -F 1
venkat-+    1352  0.0  0.3  22032 12848 ?        Ss   14:54   0:00 /usr/lib/systemd/systemd --user
venkat-+    1357  0.0  0.1  23012  4100 ?        S    14:54   0:00 (sd-pam)
venkat-+    1378  0.0  0.1   6372  5676 tty1     Ss+  14:54   0:00 -bash
venkat-+    1457  0.2  0.2  18688  7704 ?        S    14:54   0:05 sshd-session: venkat-kunapareddy@pts/0
venkat-+    1458  0.0  0.1   6372  5672 pts/0    Ss   14:54   0:00 -bash
venkat-+    1994  100  0.1   7316  4508 pts/0    R+   15:26   0:00 ps aux
venkat-+    1995  0.0  0.0   4364  2476 pts/0    S+   15:26   0:00 grep --color=auto -v ^root 
```

## 4. Exclude kworker and irq processes
Command: ps aux | grep -Ev 'kworker|irq'
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.1  0.4  24816 16276 ?        Ss   14:53   0:02 /usr/lib/systemd/systemd --switched-root --system --deserialize=54
root           2  0.0  0.0      0     0 ?        S    14:53   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    14:53   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    14:53   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    14:53   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    14:53   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    14:53   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    14:53   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    14:53   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    14:53   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    14:53   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    14:53   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    14:53   0:00 [migration/1]
root          28  0.0  0.0      0     0 ?        S    14:53   0:00 [kdevtmpfs]
root          30  0.0  0.0      0     0 ?        I    14:53   0:00 [rcu_tasks_kthread]
root          31  0.0  0.0      0     0 ?        I    14:53   0:00 [rcu_tasks_rude_kthread]
root          33  0.0  0.0      0     0 ?        S    14:53   0:00 [kauditd]
root          34  0.0  0.0      0     0 ?        S    14:53   0:00 [khungtaskd]
root          35  0.0  0.0      0     0 ?        S    14:53   0:00 [oom_reaper]
root          38  0.0  0.0      0     0 ?        S    14:53   0:00 [kcompactd0]
root          40  0.0  0.0      0     0 ?        SN   14:53   0:00 [ksmd]
root          41  0.0  0.0      0     0 ?        SN   14:53   0:00 [khugepaged]
root          53  0.0  0.0      0     0 ?        S    14:53   0:00 [watchdogd]
root          55  0.0  0.0      0     0 ?        S    14:53   0:00 [kswapd0]
root          56  0.0  0.0      0     0 ?        S    14:53   0:00 [ecryptfs-kthread]
root          59  0.0  0.0      0     0 ?        S    14:53   0:00 [scsi_eh_0]
root          61  0.0  0.0      0     0 ?        S    14:53   0:00 [scsi_eh_1]
root         319  0.0  0.0      0     0 ?        S    14:53   0:00 [scsi_eh_2]
root         435  0.0  0.0      0     0 ?        S    14:53   0:00 [jbd2/dm-0-8]
root         530  0.0  0.0      0     0 ?        S    14:53   0:00 [psimon]
root         536  0.0  0.4  50404 16956 ?        S<s  14:53   0:00 /usr/lib/systemd/systemd-journald
root         571  0.0  0.2 279492  9644 ?        SLsl 14:53   0:00 /usr/sbin/multipathd -d -s
systemd+     592  0.0  0.4  22632 14660 ?        Ss   14:53   0:00 /usr/lib/systemd/systemd-resolved
root         596  0.0  0.4  39976 14228 ?        Ss   14:53   0:00 /usr/lib/systemd/systemd-udevd
root         597  0.0  0.0      0     0 ?        S    14:53   0:00 [psimon]
root         734  0.0  0.0      0     0 ?        S    14:53   0:00 [jbd2/sda2-8]
systemd+     838  0.0  0.3  21436 12196 ?        Ss   14:53   0:00 /usr/lib/systemd/systemd-networkd
root        1007  0.0  0.0   2888  2012 ?        Ss   14:53   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root        1008  0.0  0.0   4140  3024 ?        Ss   14:53   0:00 /usr/sbin/cron -f -P
message+    1009  0.0  0.1   9000  5652 ?        Ss   14:53   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1015  0.0  0.8  44224 30044 ?        Ss   14:53   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1016  0.0  0.2 306448  8492 ?        Ssl  14:53   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1020  0.0  1.1 1959864 40400 ?       Ssl  14:53   0:00 /usr/lib/snapd/snapd
root        1023  0.0  0.2  18680  9672 ?        Ss   14:53   0:00 /usr/lib/systemd/systemd-logind
root        1026  0.0  0.4 543436 15196 ?        Ssl  14:53   0:00 /usr/libexec/udisks2/udisksd
root        1049  0.0  0.2  10744  7744 ?        Ss   14:53   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        1073  0.0  0.1   8760  5636 ?        Ss   14:53   0:00 login -- venkat-kunapareddy
_chrony     1077  0.0  0.3  23732 11256 ?        S    14:53   0:00 /usr/sbin/chronyd -n -F 1
root        1083  0.0  0.9 123584 32824 ?        Ssl  14:53   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
syslog      1091  0.0  0.1 220548  6148 ?        Ssl  14:53   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1110  0.0  0.0  12096  2340 ?        S    14:53   0:00 /usr/sbin/chronyd -n -F 1
root        1112  0.0  0.4 391604 14268 ?        Ssl  14:53   0:00 /usr/sbin/ModemManager
venkat-+    1352  0.0  0.3  22032 12848 ?        Ss   14:54   0:00 /usr/lib/systemd/systemd --user
venkat-+    1357  0.0  0.1  23012  4100 ?        S    14:54   0:00 (sd-pam)
venkat-+    1378  0.0  0.1   6372  5676 tty1     Ss+  14:54   0:00 -bash
root        1405  0.0  0.3  18528 12684 ?        Ss   14:54   0:00 sshd-session: venkat-kunapareddy [priv]
venkat-+    1457  0.2  0.2  18688  7704 ?        S    14:54   0:05 sshd-session: venkat-kunapareddy@pts/0
venkat-+    1458  0.0  0.1   6372  5672 pts/0    Ss   14:54   0:00 -bash
venkat-+    1996  0.0  0.1   7316  4508 pts/0    R+   15:26   0:00 ps aux
```
