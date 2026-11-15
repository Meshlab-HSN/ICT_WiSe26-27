# ICT Lecture 5 - Task 2
Name: Akhil Kathmandi

## 1. Search processes containing username
Command: ps aux | grep "akhil-k"
```text
root        1083  0.0  0.1   8760  5620 ?        Ss   12:05   0:00 login -- akhil-kathmandi
akhil-k+    1415  0.1  0.3  22116 13224 ?        Ss   12:05   0:00 /usr/lib/systemd/systemd --user
akhil-k+    1418  0.0  0.1  23016  4104 ?        S    12:05   0:00 (sd-pam)
akhil-k+    1441  0.0  0.1   8856  5868 tty1     Ss+  12:05   0:00 -bash
root        1471  0.0  0.3  18524 12152 ?        Ss   12:06   0:00 sshd-session: akhil-kathmandi [priv]
akhil-k+    1518  0.8  0.2  18684  7696 ?        S    12:06   0:00 sshd-session: akhil-kathmandi@pts/0
akhil-k+    1519  0.1  0.1   8844  5860 pts/0    Ss   12:06   0:00 -bash
akhil-k+    1617  100  0.1   9764  4680 pts/0    R+   12:08   0:00 ps aux
akhil-k+    1618 20.0  0.0   6716  2676 pts/0    S+   12:08   0:00 grep --color=auto akhil-k
```

## 2. Show only my processes using regex
Command: ps aux | grep "^akhil-k+ "
```text
akhil-k+    1415  0.1  0.3  22116 13224 ?        Ss   12:05   0:00 /usr/lib/systemd/systemd --user
akhil-k+    1418  0.0  0.1  23016  4104 ?        S    12:05   0:00 (sd-pam)
akhil-k+    1441  0.0  0.1   8856  5868 tty1     Ss+  12:05   0:00 -bash
akhil-k+    1518  0.8  0.2  18684  7696 ?        S    12:06   0:00 sshd-session: akhil-kathmandi@pts/0
akhil-k+    1519  0.1  0.1   8844  5860 pts/0    Ss   12:06   0:00 -bash
akhil-k+    1619 83.3  0.1   9764  4668 pts/0    R+   12:08   0:00 ps aux
akhil-k+    1620 60.0  0.0   6716  2676 pts/0    S+   12:08   0:00 grep --color=auto ^akhil-k+ 
```

## 3. Show all processes except root
Command: ps aux | grep -v "^root "
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     591  0.0  0.4  22628 14672 ?        Ss   12:05   0:00 /usr/lib/systemd/systemd-resolved
systemd+     834  0.0  0.3  21436 12360 ?        Ss   12:05   0:00 /usr/lib/systemd/systemd-networkd
message+    1015  0.1  0.1   9020  5664 ?        Ss   12:05   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1023  0.0  0.2 306448  8516 ?        Ssl  12:05   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
syslog      1085  0.0  0.1 220548  6264 ?        Ssl  12:05   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1121  0.1  0.3  23852 11300 ?        S    12:05   0:00 /usr/sbin/chronyd -n -F 1
_chrony     1141  0.0  0.0  12096  2428 ?        S    12:05   0:00 /usr/sbin/chronyd -n -F 1
akhil-k+    1415  0.1  0.3  22116 13224 ?        Ss   12:05   0:00 /usr/lib/systemd/systemd --user
akhil-k+    1418  0.0  0.1  23016  4104 ?        S    12:05   0:00 (sd-pam)
akhil-k+    1441  0.0  0.1   8856  5868 tty1     Ss+  12:05   0:00 -bash
akhil-k+    1518  0.8  0.2  18684  7696 ?        S    12:06   0:00 sshd-session: akhil-kathmandi@pts/0
akhil-k+    1519  0.1  0.1   8844  5860 pts/0    Ss   12:06   0:00 -bash
akhil-k+    1621  100  0.1   9764  4684 pts/0    R+   12:08   0:00 ps aux
akhil-k+    1622 20.0  0.0   6716  2652 pts/0    S+   12:08   0:00 grep --color=auto -v ^root 
```

## 4. Filter out kworker and irq processes
Command: ps aux | grep -Ev 'kworker|irq'
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  2.9  0.4  24864 16296 ?        Ss   12:04   0:05 /usr/lib/systemd/systemd --switched-root --system --deserialize=50
root           2  0.0  0.0      0     0 ?        S    12:04   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    12:04   0:00 [pool_workqueue_release]
root          15  0.1  0.0      0     0 ?        I    12:04   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    12:04   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    12:04   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    12:04   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    12:04   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    12:04   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    12:04   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    12:04   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    12:04   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    12:04   0:00 [migration/1]
root          28  0.0  0.0      0     0 ?        S    12:04   0:00 [kdevtmpfs]
root          30  0.0  0.0      0     0 ?        I    12:04   0:00 [rcu_tasks_kthread]
root          31  0.0  0.0      0     0 ?        I    12:04   0:00 [rcu_tasks_rude_kthread]
root          32  0.0  0.0      0     0 ?        S    12:04   0:00 [kauditd]
root          33  0.0  0.0      0     0 ?        S    12:04   0:00 [khungtaskd]
root          34  0.0  0.0      0     0 ?        S    12:04   0:00 [oom_reaper]
root          37  0.0  0.0      0     0 ?        S    12:04   0:00 [kcompactd0]
root          39  0.0  0.0      0     0 ?        SN   12:04   0:00 [ksmd]
root          40  0.0  0.0      0     0 ?        SN   12:04   0:00 [khugepaged]
root          53  0.0  0.0      0     0 ?        S    12:04   0:00 [watchdogd]
root          56  0.0  0.0      0     0 ?        S    12:04   0:00 [kswapd0]
root          57  0.0  0.0      0     0 ?        S    12:04   0:00 [ecryptfs-kthread]
root          60  0.0  0.0      0     0 ?        S    12:04   0:00 [scsi_eh_0]
root          62  0.0  0.0      0     0 ?        S    12:04   0:00 [scsi_eh_1]
root         320  0.0  0.0      0     0 ?        S    12:04   0:00 [scsi_eh_2]
root         436  0.0  0.0      0     0 ?        S    12:04   0:00 [jbd2/dm-0-8]
root         531  0.0  0.0      0     0 ?        S    12:05   0:00 [psimon]
root         537  0.2  0.4  42212 17188 ?        S<s  12:05   0:00 /usr/lib/systemd/systemd-journald
root         570  0.2  0.2 279492  9644 ?        SLsl 12:05   0:00 /usr/sbin/multipathd -d -s
systemd+     591  0.0  0.4  22628 14672 ?        Ss   12:05   0:00 /usr/lib/systemd/systemd-resolved
root         594  0.4  0.4  40000 14256 ?        Ss   12:05   0:00 /usr/lib/systemd/systemd-udevd
root         605  0.0  0.0      0     0 ?        S    12:05   0:00 [psimon]
root         729  0.0  0.0      0     0 ?        S    12:05   0:00 [jbd2/sda2-8]
systemd+     834  0.0  0.3  21436 12360 ?        Ss   12:05   0:00 /usr/lib/systemd/systemd-networkd
root        1013  0.0  0.0   2888  2012 ?        Ss   12:05   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root        1014  0.0  0.0   7060  3384 ?        Ss   12:05   0:00 /usr/sbin/cron -f -P
message+    1015  0.1  0.1   9020  5664 ?        Ss   12:05   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1022  0.2  0.8  46744 30180 ?        Ss   12:05   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1023  0.0  0.2 306448  8516 ?        Ssl  12:05   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1027  0.7  1.2 1886136 41928 ?       Ssl  12:05   0:01 /usr/lib/snapd/snapd
root        1031  0.1  0.2  18416  9616 ?        Ss   12:05   0:00 /usr/lib/systemd/systemd-logind
root        1034  0.1  0.4 543444 15180 ?        Ssl  12:05   0:00 /usr/libexec/udisks2/udisksd
root        1067  0.0  0.2  10744  7760 ?        Ss   12:05   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        1083  0.0  0.1   8760  5620 ?        Ss   12:05   0:00 login -- akhil-kathmandi
syslog      1085  0.0  0.1 220548  6264 ?        Ssl  12:05   0:00 /usr/sbin/rsyslogd -n -iNONE
root        1095  0.2  0.9 126116 33052 ?        Ssl  12:05   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony     1121  0.1  0.3  23852 11300 ?        S    12:05   0:00 /usr/sbin/chronyd -n -F 1
root        1125  0.1  0.4 391608 14068 ?        Ssl  12:05   0:00 /usr/sbin/ModemManager
_chrony     1141  0.0  0.0  12096  2428 ?        S    12:05   0:00 /usr/sbin/chronyd -n -F 1
root        1204  0.2  0.0 221556  2952 ?        Sl   12:05   0:00 /usr/bin/VBoxDRMClient
root        1206  0.0  0.1 292100  3772 ?        Sl   12:05   0:00 /usr/sbin/VBoxService
akhil-k+    1415  0.1  0.3  22116 13224 ?        Ss   12:05   0:00 /usr/lib/systemd/systemd --user
akhil-k+    1418  0.0  0.1  23016  4104 ?        S    12:05   0:00 (sd-pam)
akhil-k+    1441  0.0  0.1   8856  5868 tty1     Ss+  12:05   0:00 -bash
root        1471  0.0  0.3  18524 12152 ?        Ss   12:06   0:00 sshd-session: akhil-kathmandi [priv]
akhil-k+    1518  0.8  0.2  18684  7696 ?        R    12:06   0:00 sshd-session: akhil-kathmandi@pts/0
akhil-k+    1519  0.1  0.1   8844  5860 pts/0    Ss   12:06   0:00 -bash
akhil-k+    1623  100  0.1   9764  4696 pts/0    R+   12:08   0:00 ps aux
```
