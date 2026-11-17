manirul-islam@ict:~/ICT_WiSe26-27/Lecture 5$ ps aux | grep "manirul+"
manirul+    1459  0.0  0.3  22964 13544 ?        Ss   13:50   0:00 /usr/lib/systemd/systemd --user
manirul+    1467  0.0  0.1  24816  3900 ?        S    13:50   0:00 (sd-pam)
manirul+    1485  0.0  0.1   9452  6272 tty1     Ss+  13:50   0:00 -bash
manirul+    1573  0.1  0.2  21232  7292 ?        S    13:51   0:05 sshd-session: manirul-islam@pts/0
manirul+    1574  0.0  0.1   9896  6552 pts/0    Ss   13:51   0:00 -bash
manirul+    2415  0.0  0.3  26928 13452 pts/0    Tl   14:53   0:00 vim Lecture_5_Manirul_Islam_Task2.md
manirul+    2612  0.0  0.1  10076  3604 pts/0    R+   14:59   0:00 ps aux
manirul+    2613  0.0  0.0   8192  1884 pts/0    S+   14:59   0:00 grep --color=auto manirul+
manirul-islam@ict:~/ICT_WiSe26-27/Lecture 5$ ps aux | grep "^manirul+"
manirul+    1459  0.0  0.3  22964 13544 ?        Ss   13:50   0:00 /usr/lib/systemd/systemd --user
manirul+    1467  0.0  0.1  24816  3900 ?        S    13:50   0:00 (sd-pam)
manirul+    1485  0.0  0.1   9452  6272 tty1     Ss+  13:50   0:00 -bash
manirul+    1573  0.1  0.2  21232  7292 ?        S    13:51   0:05 sshd-session: manirul-islam@pts/0
manirul+    1574  0.0  0.1   9896  6552 pts/0    Ss   13:51   0:00 -bash
manirul+    2415  0.0  0.3  26928 13452 pts/0    Tl   14:53   0:00 vim Lecture_5_Manirul_Islam_Task2.md
manirul+    2623  0.0  0.1  10532  4804 pts/0    R+   15:00   0:00 ps aux
manirul+    2624  0.0  0.0   6796  1900 pts/0    S+   15:00   0:00 grep --color=auto ^manirul+
manirul-islam@ict:~/ICT_WiSe26-27/Lecture 5$ ps aux | grep -v "^root"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     584  0.0  0.4  23248 14896 ?        Ss   13:48   0:00 /usr/lib/systemd/systemd-resolved
systemd+     840  0.0  0.3  22508 12972 ?        Ss   13:48   0:00 /usr/lib/systemd/systemd-networkd
message+    1008  0.0  0.1   8948  4700 ?        Ss   13:49   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1021  0.0  0.6 384584 21212 ?        Ssl  13:49   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony     1122  0.0  0.3  24580 10772 ?        S    13:49   0:00 /usr/sbin/chronyd -n -F 1
syslog      1125  0.0  0.3 221848 12348 ?        Ssl  13:49   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1132  0.0  0.0  12228  2172 ?        S    13:49   0:00 /usr/sbin/chronyd -n -F 1
manirul+    1459  0.0  0.3  22964 13544 ?        Ss   13:50   0:00 /usr/lib/systemd/systemd --user
manirul+    1467  0.0  0.1  24816  3900 ?        S    13:50   0:00 (sd-pam)
manirul+    1485  0.0  0.1   9452  6272 tty1     Ss+  13:50   0:00 -bash
manirul+    1573  0.1  0.2  21232  7292 ?        S    13:51   0:05 sshd-session: manirul-islam@pts/0
manirul+    1574  0.0  0.1   9896  6552 pts/0    Ss   13:51   0:00 -bash
manirul+    2415  0.0  0.3  26928 13452 pts/0    Tl   14:53   0:00 vim Lecture_5_Manirul_Islam_Task2.md
manirul+    2634  0.0  0.1   9616  3604 pts/0    R+   15:00   0:00 ps aux
manirul+    2635  0.0  0.0   7080  1896 pts/0    S+   15:00   0:00 grep --color=auto -v ^root
manirul-islam@ict:~/ICT_WiSe26-27/Lecture 5$ ps aux | grep -Ev "kworker|irq"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.4  26184 16612 ?        Ss   13:48   0:01 /usr/lib/systemd/systemd --switched-root --system --deserialize=55
root           2  0.0  0.0      0     0 ?        S    13:48   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    13:48   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    13:48   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    13:48   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    13:48   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    13:48   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    13:48   0:00 [idle_inject/0]
root          20  0.0  0.0      0     0 ?        S    13:48   0:00 [cpuhp/0]
root          21  0.0  0.0      0     0 ?        S    13:48   0:00 [cpuhp/1]
root          22  0.0  0.0      0     0 ?        S    13:48   0:00 [idle_inject/1]
root          23  0.0  0.0      0     0 ?        S    13:48   0:00 [migration/1]
root          27  0.0  0.0      0     0 ?        S    13:48   0:00 [cpuhp/2]
root          28  0.0  0.0      0     0 ?        S    13:48   0:00 [idle_inject/2]
root          29  0.0  0.0      0     0 ?        S    13:48   0:00 [migration/2]
root          33  0.0  0.0      0     0 ?        S    13:48   0:00 [cpuhp/3]
root          34  0.0  0.0      0     0 ?        S    13:48   0:00 [idle_inject/3]
root          35  0.0  0.0      0     0 ?        S    13:48   0:00 [migration/3]
root          39  0.0  0.0      0     0 ?        S    13:48   0:00 [kdevtmpfs]
root          41  0.0  0.0      0     0 ?        I    13:48   0:00 [rcu_tasks_kthread]
root          42  0.0  0.0      0     0 ?        I    13:48   0:00 [rcu_tasks_rude_kthread]
root          43  0.0  0.0      0     0 ?        S    13:48   0:00 [kauditd]
root          44  0.0  0.0      0     0 ?        S    13:48   0:00 [khungtaskd]
root          45  0.0  0.0      0     0 ?        S    13:48   0:00 [oom_reaper]
root          48  0.0  0.0      0     0 ?        S    13:48   0:00 [kcompactd0]
root          49  0.0  0.0      0     0 ?        SN   13:48   0:00 [ksmd]
root          51  0.0  0.0      0     0 ?        SN   13:48   0:00 [khugepaged]
root          58  0.0  0.0      0     0 ?        S<   13:48   0:00 [pr/ttyAMA-1]
root          66  0.0  0.0      0     0 ?        S    13:48   0:00 [watchdogd]
root          68  0.0  0.0      0     0 ?        S    13:48   0:00 [kswapd0]
root          69  0.0  0.0      0     0 ?        S    13:48   0:00 [ecryptfs-kthread]
root          85  0.0  0.0      0     0 ?        S    13:48   0:00 [hwrng]
root         342  0.0  0.0      0     0 ?        S    13:48   0:00 [card0-crtc0]
root         372  0.0  0.0      0     0 ?        S    13:48   0:00 [scsi_eh_0]
root         374  0.0  0.0      0     0 ?        S    13:48   0:00 [usb-storage]
root         440  0.0  0.0      0     0 ?        S    13:48   0:00 [jbd2/dm-0-8]
root         536  0.0  0.0      0     0 ?        S    13:48   0:00 [psimon]
root         543  0.0  0.4  51220 14332 ?        S<s  13:48   0:00 /usr/lib/systemd/systemd-journald
root         578  0.0  0.5 281712 17816 ?        SLsl 13:48   0:00 /usr/sbin/multipathd -d -s
systemd+     584  0.0  0.4  23248 14896 ?        Ss   13:48   0:00 /usr/lib/systemd/systemd-resolved
root         596  0.0  0.3  41432 13776 ?        Ss   13:48   0:00 /usr/lib/systemd/systemd-udevd
root         601  0.0  0.0      0     0 ?        S    13:48   0:00 [psimon]
root         771  0.0  0.0      0     0 ?        S    13:48   0:00 [jbd2/vda2-8]
systemd+     840  0.0  0.3  22508 12972 ?        Ss   13:48   0:00 /usr/lib/systemd/systemd-networkd
root        1007  0.0  0.0   4028  1612 ?        Ss   13:49   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+    1008  0.0  0.1   8948  4700 ?        Ss   13:49   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1018  0.0  0.8  50348 30872 ?        Ss   13:49   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1021  0.0  0.6 384584 21212 ?        Ssl  13:49   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1033  0.0  0.3  20208 10536 ?        Ss   13:49   0:00 /usr/lib/systemd/systemd-logind
root        1034  0.0  0.7 548156 27600 ?        Ssl  13:49   0:00 /usr/libexec/udisks2/udisksd
root        1061  0.0  0.2  10948  7228 ?        Ss   13:49   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        1109  0.0  0.9 127940 33940 ?        Ssl  13:49   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony     1122  0.0  0.3  24580 10772 ?        S    13:49   0:00 /usr/sbin/chronyd -n -F 1
syslog      1125  0.0  0.3 221848 12348 ?        Ssl  13:49   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1132  0.0  0.0  12228  2172 ?        S    13:49   0:00 /usr/sbin/chronyd -n -F 1
root        1158  0.0  0.6 399036 22960 ?        Ssl  13:49   0:00 /usr/sbin/ModemManager
root        1288  0.0  0.0   8680  2720 ?        Ss   13:49   0:00 /usr/sbin/cron -f -P
root        1297  0.0  0.0   7868  2320 ?        Ss+  13:49   0:00 /usr/sbin/agetty --noreset --noclear --issue-file=/etc/issue:/etc/issue.d:/run/issue.d:/usr/lib/issue.d --keep-baud 115200,57600,38400,9600 - vt220
root        1301  0.0  0.1  10556  4164 ?        Ss   13:49   0:00 login -- manirul-islam
manirul+    1459  0.0  0.3  22964 13544 ?        Ss   13:50   0:00 /usr/lib/systemd/systemd --user
manirul+    1467  0.0  0.1  24816  3900 ?        S    13:50   0:00 (sd-pam)
manirul+    1485  0.0  0.1   9452  6272 tty1     Ss+  13:50   0:00 -bash
root        1522  0.0  0.3  21232 10500 ?        Ss   13:51   0:00 sshd-session: manirul-islam [priv]
manirul+    1573  0.1  0.2  21232  7292 ?        S    13:51   0:05 sshd-session: manirul-islam@pts/0
manirul+    1574  0.0  0.1   9896  6552 pts/0    Ss   13:51   0:00 -bash
manirul+    2415  0.0  0.3  26928 13452 pts/0    Tl   14:53   0:00 vim Lecture_5_Manirul_Islam_Task2.md
manirul+    2645  0.0  0.1   9944  3604 pts/0    R+   15:00   0:00 ps aux

