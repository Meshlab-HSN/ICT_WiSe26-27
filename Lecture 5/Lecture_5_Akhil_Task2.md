# ICT Lecture 5 - Task 2
Name: Akhil

## 1. Search username
Command: ps aux | grep "akhil"
```text
root        1122  0.0  0.1  10792  4708 ?        Ss   21:00   0:00 login -- akhil
akhil       1257  0.0  0.3  18180 12092 ?        Ss   21:00   0:00 /usr/lib/systemd/systemd --user
akhil       1261  0.0  0.1  18372  3756 ?        S    21:00   0:00 (sd-pam)
akhil       1281  0.0  0.2  10156  7100 tty1     Ss+  21:00   0:00 -bash
root        1339  0.0  0.3  20400 12856 ?        Ss   21:00   0:00 sshd-session: akhil [postauth]
akhil       1393  0.0  0.2  20400  9260 ?        S    21:00   0:00 sshd-session: akhil@pts/0
akhil       1394  0.0  0.1   9804  6748 pts/0    Ss   21:00   0:00 -bash
akhil       1471  0.0  0.1  10284  5280 pts/0    R+   21:04   0:00 ps aux
akhil       1472  0.0  0.0   6500  2204 pts/0    S+   21:04   0:00 grep --color=auto akhil
```

## 2. Match username
Command: ps aux | grep "^akhil+ "
```text
```

## 3. Exclude root
Command: ps aux | grep -v "^root "
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     507  0.0  0.4  23820 16092 ?        Ss   21:00   0:00 /usr/lib/systemd/systemd-resolved
systemd+     786  0.0  0.3  18284 12944 ?        Ss   21:00   0:00 /usr/lib/systemd/systemd-networkd
message+     919  0.0  0.1   9180  4084 ?        Ss   21:00   0:00 /usr/bin/dbus-broker-launch --scope system --audit
message+     920  0.0  0.0   6896  2960 ?        S    21:00   0:00 dbus-broker --log 10 --controller 9 --machine-id 85b73814a2f54eadbf4395b80ba4c850 --max-bytes 536870912 --max-fds 4096 --max-matches 16384 --audit
_chrony      921  0.0  0.1  20848  5532 ?        Ss   21:00   0:00 /usr/sbin/chronyd -n -F 1
polkitd      932  0.0  0.4 307400 15984 ?        Ssl  21:00   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
syslog       983  0.0  0.3 222620 11172 ?        Ssl  21:00   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1052  0.0  0.0  12592  2240 ?        S    21:00   0:00 /usr/sbin/chronyd -n -F 1
akhil       1257  0.0  0.3  18180 12092 ?        Ss   21:00   0:00 /usr/lib/systemd/systemd --user
akhil       1261  0.0  0.1  18372  3756 ?        S    21:00   0:00 (sd-pam)
akhil       1281  0.0  0.2  10156  7100 tty1     Ss+  21:00   0:00 -bash
akhil       1393  0.0  0.2  20400  9260 ?        S    21:00   0:00 sshd-session: akhil@pts/0
akhil       1394  0.0  0.1   9804  6748 pts/0    Ss   21:00   0:00 -bash
akhil       1475  0.0  0.1   9364  4044 pts/0    R+   21:04   0:00 ps aux
akhil       1476  0.0  0.0   7108  2204 pts/0    S+   21:04   0:00 grep --color=auto -v ^root 
```

## 4. Exclude kworker and irq
Command: ps aux | grep -Ev 'kworker|irq'
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.1  0.5  28212 18104 ?        Ss   21:00   0:00 /usr/lib/systemd/systemd --switched-root --system --deserialize=59
root           2  0.0  0.0      0     0 ?        S    21:00   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    21:00   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    21:00   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    21:00   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    21:00   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    21:00   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    21:00   0:00 [idle_inject/0]
root          20  0.0  0.0      0     0 ?        S    21:00   0:00 [cpuhp/0]
root          21  0.0  0.0      0     0 ?        S    21:00   0:00 [cpuhp/1]
root          22  0.0  0.0      0     0 ?        S    21:00   0:00 [idle_inject/1]
root          23  0.0  0.0      0     0 ?        S    21:00   0:00 [migration/1]
root          27  0.0  0.0      0     0 ?        S    21:00   0:00 [cpuhp/2]
root          28  0.0  0.0      0     0 ?        S    21:00   0:00 [idle_inject/2]
root          29  0.0  0.0      0     0 ?        S    21:00   0:00 [migration/2]
root          33  0.0  0.0      0     0 ?        S    21:00   0:00 [cpuhp/3]
root          34  0.0  0.0      0     0 ?        S    21:00   0:00 [idle_inject/3]
root          35  0.0  0.0      0     0 ?        S    21:00   0:00 [migration/3]
root          39  0.0  0.0      0     0 ?        S    21:00   0:00 [kdevtmpfs]
root          41  0.0  0.0      0     0 ?        I    21:00   0:00 [rcu_tasks_kthread]
root          42  0.0  0.0      0     0 ?        I    21:00   0:00 [rcu_tasks_rude_kthread]
root          43  0.0  0.0      0     0 ?        S    21:00   0:00 [kauditd]
root          44  0.0  0.0      0     0 ?        S    21:00   0:00 [khungtaskd]
root          45  0.0  0.0      0     0 ?        S    21:00   0:00 [oom_reaper]
root          48  0.0  0.0      0     0 ?        S    21:00   0:00 [kcompactd0]
root          49  0.0  0.0      0     0 ?        SN   21:00   0:00 [ksmd]
root          51  0.0  0.0      0     0 ?        SN   21:00   0:00 [khugepaged]
root          64  0.0  0.0      0     0 ?        S    21:00   0:00 [watchdogd]
root          67  0.0  0.0      0     0 ?        S    21:00   0:00 [kswapd0]
root          68  0.0  0.0      0     0 ?        S    21:00   0:00 [ecryptfs-kthread]
root          72  0.0  0.0      0     0 ?        S    21:00   0:00 [scsi_eh_0]
root         344  0.0  0.0      0     0 ?        S    21:00   0:00 [jbd2/sda2-8]
root         439  0.0  0.0      0     0 ?        S    21:00   0:00 [psimon]
root         446  0.0  0.4  37348 14892 ?        S<s  21:00   0:00 /usr/lib/systemd/systemd-journald
root         484  0.0  0.5 347880 20372 ?        SLsl 21:00   0:00 /usr/sbin/multipathd -d -s
systemd+     507  0.0  0.4  23820 16092 ?        Ss   21:00   0:00 /usr/lib/systemd/systemd-resolved
root         512  0.0  0.4  46280 16672 ?        Ss   21:00   0:00 /usr/lib/systemd/systemd-udevd
root         514  0.0  0.0      0     0 ?        S    21:00   0:00 [psimon]
systemd+     786  0.0  0.3  18284 12944 ?        Ss   21:00   0:00 /usr/lib/systemd/systemd-networkd
message+     919  0.0  0.1   9180  4084 ?        Ss   21:00   0:00 /usr/bin/dbus-broker-launch --scope system --audit
message+     920  0.0  0.0   6896  2960 ?        S    21:00   0:00 dbus-broker --log 10 --controller 9 --machine-id 85b73814a2f54eadbf4395b80ba4c850 --max-bytes 536870912 --max-fds 4096 --max-matches 16384 --audit
_chrony      921  0.0  0.1  20848  5532 ?        Ss   21:00   0:00 /usr/sbin/chronyd -n -F 1
root         931  0.0  0.9  50000 31284 ?        Ss   21:00   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      932  0.0  0.4 307400 15984 ?        Ssl  21:00   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root         942  0.0  0.2  11912  7524 ?        Ss   21:00   0:00 /usr/lib/systemd/systemd-logind
root         945  0.0  0.8 547956 28600 ?        Ssl  21:00   0:00 /usr/libexec/udisks2/udisksd
root         970  0.0  0.2  11844  7704 ?        Ss   21:00   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
syslog       983  0.0  0.3 222620 11172 ?        Ssl  21:00   0:00 /usr/sbin/rsyslogd -n -iNONE
root        1016  0.0  1.0 128072 34748 ?        Ssl  21:00   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root        1049  0.0  0.6 398780 23492 ?        Ssl  21:00   0:00 /usr/sbin/ModemManager
_chrony     1052  0.0  0.0  12592  2240 ?        S    21:00   0:00 /usr/sbin/chronyd -n -F 1
root        1113  0.0  0.0   8360  2892 ?        Ss   21:00   0:00 /usr/sbin/cron -f -P
root        1122  0.0  0.1  10792  4708 ?        Ss   21:00   0:00 login -- akhil
akhil       1257  0.0  0.3  18180 12092 ?        Ss   21:00   0:00 /usr/lib/systemd/systemd --user
akhil       1261  0.0  0.1  18372  3756 ?        S    21:00   0:00 (sd-pam)
akhil       1281  0.0  0.2  10156  7100 tty1     Ss+  21:00   0:00 -bash
root        1339  0.0  0.3  20400 12856 ?        Ss   21:00   0:00 sshd-session: akhil [postauth]
akhil       1393  0.0  0.2  20400  9260 ?        S    21:00   0:00 sshd-session: akhil@pts/0
akhil       1394  0.0  0.1   9804  6748 pts/0    Ss   21:00   0:00 -bash
akhil       1477  0.0  0.1   9776  4048 pts/0    R+   21:04   0:00 ps aux
```
