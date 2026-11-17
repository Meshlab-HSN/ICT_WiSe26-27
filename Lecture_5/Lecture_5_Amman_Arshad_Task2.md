amman-arshad@ict:~/Lecture_5$ ps aux | grep "$USER"
root        1319  0.0  0.1   8760  5700 ?        Ss   12:24   0:00 login -- amman-arshad
root        1632  0.0  0.3  18428 12272 ?        Ss   12:35   0:00 sshd-session: amman-arshad [priv]
amman-a+    1688  0.4  0.2  18564  7692 ?        S    12:35   0:19 sshd-session: amman-arshad@pts/0
amman-a+   21037  0.0  0.0   6716  2992 pts/0    S+   13:48   0:00 grep --color=auto amman-arshad
amman-arshad@ict:~/Lecture_5$ ps aux | grep -E "^$USER[[:space:]]"
amman-arshad@ict:~/Lecture_5$ ps aux | grep -E -v "^root[[:space:]]"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
message+    1162  0.0  0.1   9168  5936 ?        Ss   12:24   0:02 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
amman-a+    1547  0.0  0.3  21728 12752 ?        Ss   12:27   0:00 /usr/lib/systemd/systemd --user --deserialize=10
amman-a+    1554  0.0  0.1  23016  4104 ?        S    12:27   0:00 (sd-pam)
amman-a+    1573  0.0  0.1   8856  5872 tty1     Ss+  12:27   0:00 -bash
amman-a+    1688  0.4  0.2  18564  7692 ?        S    12:35   0:19 sshd-session: amman-arshad@pts/0
amman-a+    1689  0.0  0.1   8844  5876 pts/0    Ss   12:35   0:00 -bash
_chrony     4392  0.0  0.3  23736 11280 ?        S    13:31   0:00 /usr/sbin/chronyd -n -F 1
_chrony     4398  0.0  0.0  12096  2436 ?        S    13:31   0:00 /usr/sbin/chronyd -n -F 1
polkitd     4403  0.0  0.2 306448  8620 ?        Ssl  13:31   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
systemd+    4419  0.0  0.4  22696 14756 ?        Ss   13:31   0:00 /usr/lib/systemd/systemd-resolved
syslog      4421  0.0  0.1 220548  5632 ?        Ssl  13:31   0:00 /usr/sbin/rsyslogd -n -iNONE
systemd+    4470  0.0  0.3  21496 12348 ?        Ss   13:31   0:00 /usr/lib/systemd/systemd-networkd
amman-a+   21058  100  0.1   9764  5016 pts/0    R+   13:48   0:00 ps aux
amman-a+   21059  0.0  0.0   6716  3020 pts/0    S+   13:48   0:00 grep --color=auto -E -v ^root[[:space:]]
amman-arshad@ict:~/Lecture_5$ ps aux | grep -v -E "kworker|irq"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.2  0.4  25500 16804 ?        Ss   12:24   0:12 /usr/lib/systemd/systemd --system --deserialize=12
root           2  0.0  0.0      0     0 ?        S    12:24   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    12:24   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    12:24   0:03 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    12:24   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    12:24   0:01 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    12:24   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    12:24   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    12:24   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    12:24   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    12:24   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    12:24   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    12:24   0:00 [migration/1]
root          28  0.0  0.0      0     0 ?        S    12:24   0:00 [cpuhp/2]
root          29  0.0  0.0      0     0 ?        S    12:24   0:00 [idle_inject/2]
root          30  0.0  0.0      0     0 ?        S    12:24   0:00 [migration/2]
root          34  0.0  0.0      0     0 ?        S    12:24   0:00 [cpuhp/3]
root          35  0.0  0.0      0     0 ?        S    12:24   0:00 [idle_inject/3]
root          36  0.0  0.0      0     0 ?        S    12:24   0:00 [migration/3]
root          40  0.0  0.0      0     0 ?        S    12:24   0:00 [cpuhp/4]
root          41  0.0  0.0      0     0 ?        S    12:24   0:00 [idle_inject/4]
root          42  0.0  0.0      0     0 ?        S    12:24   0:00 [migration/4]
root          46  0.0  0.0      0     0 ?        S    12:24   0:00 [cpuhp/5]
root          47  0.0  0.0      0     0 ?        S    12:24   0:00 [idle_inject/5]
root          48  0.0  0.0      0     0 ?        S    12:24   0:00 [migration/5]
root          52  0.0  0.0      0     0 ?        S    12:24   0:00 [cpuhp/6]
root          53  0.0  0.0      0     0 ?        S    12:24   0:00 [idle_inject/6]
root          54  0.0  0.0      0     0 ?        S    12:24   0:00 [migration/6]
root          58  0.0  0.0      0     0 ?        S    12:24   0:00 [cpuhp/7]
root          59  0.0  0.0      0     0 ?        S    12:24   0:00 [idle_inject/7]
root          60  0.0  0.0      0     0 ?        S    12:24   0:00 [migration/7]
root          64  0.0  0.0      0     0 ?        S    12:24   0:00 [kdevtmpfs]
root          66  0.0  0.0      0     0 ?        I    12:24   0:00 [rcu_tasks_kthread]
root          67  0.0  0.0      0     0 ?        I    12:24   0:00 [rcu_tasks_rude_kthread]
root          68  0.0  0.0      0     0 ?        S    12:24   0:00 [kauditd]
root          69  0.0  0.0      0     0 ?        S    12:24   0:00 [khungtaskd]
root          70  0.0  0.0      0     0 ?        S    12:24   0:00 [oom_reaper]
root          74  0.0  0.0      0     0 ?        S    12:24   0:00 [kcompactd0]
root          75  0.0  0.0      0     0 ?        SN   12:24   0:00 [ksmd]
root          76  0.0  0.0      0     0 ?        SN   12:24   0:00 [khugepaged]
root          90  0.0  0.0      0     0 ?        S    12:24   0:00 [watchdogd]
root          93  0.0  0.0      0     0 ?        S    12:24   0:00 [kswapd0]
root          94  0.0  0.0      0     0 ?        S    12:24   0:00 [ecryptfs-kthread]
root         100  0.0  0.0      0     0 ?        S    12:24   0:00 [scsi_eh_0]
root         102  0.0  0.0      0     0 ?        S    12:24   0:00 [scsi_eh_1]
root         376  0.0  0.0      0     0 ?        S    12:24   0:00 [scsi_eh_2]
root         500  0.0  0.0      0     0 ?        S    12:24   0:01 [jbd2/dm-0-8]
root         924  0.0  0.0      0     0 ?        S    12:24   0:00 [jbd2/sda2-8]
message+    1162  0.0  0.1   9168  5936 ?        Ss   12:24   0:02 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1171  0.0  0.8  46744 30040 ?        Ss   12:24   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
root        1179  0.0  0.2  18560  9772 ?        Ss   12:24   0:00 /usr/lib/systemd/systemd-logind
root        1294  0.0  0.9 126112 32976 ?        Ssl  12:24   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root        1319  0.0  0.1   8760  5700 ?        Ss   12:24   0:00 login -- amman-arshad
amman-a+    1547  0.0  0.3  21728 12752 ?        Ss   12:27   0:00 /usr/lib/systemd/systemd --user --deserialize=10
amman-a+    1554  0.0  0.1  23016  4104 ?        S    12:27   0:00 (sd-pam)
amman-a+    1573  0.0  0.1   8856  5872 tty1     Ss+  12:27   0:00 -bash
root        1632  0.0  0.3  18428 12272 ?        Ss   12:35   0:00 sshd-session: amman-arshad [priv]
amman-a+    1688  0.4  0.2  18564  7692 ?        S    12:35   0:19 sshd-session: amman-arshad@pts/0
amman-a+    1689  0.0  0.1   8844  5876 pts/0    Ss   12:35   0:00 -bash
root        4347  0.0  0.1   7060  3716 ?        Ss   13:31   0:00 /usr/sbin/cron -f -P
root        4351  0.0  0.0   2888  2012 ?        Ss   13:31   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root        4360  0.0  0.2 279752  9904 ?        SLsl 13:31   0:00 /usr/sbin/multipathd -d -s
root        4387  0.0  1.3 365968 46312 ?        Ssl  13:31   0:01 /usr/libexec/fwupd/fwupd
_chrony     4392  0.0  0.3  23736 11280 ?        S    13:31   0:00 /usr/sbin/chronyd -n -F 1
_chrony     4398  0.0  0.0  12096  2436 ?        S    13:31   0:00 /usr/sbin/chronyd -n -F 1
polkitd     4403  0.0  0.2 306448  8620 ?        Ssl  13:31   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        4414  0.0  0.2  10744  7824 ?        Ss   13:31   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
systemd+    4419  0.0  0.4  22696 14756 ?        Ss   13:31   0:00 /usr/lib/systemd/systemd-resolved
root        4420  0.0  0.4 543448 15276 ?        Ssl  13:31   0:00 /usr/libexec/udisks2/udisksd
syslog      4421  0.0  0.1 220548  5632 ?        Ssl  13:31   0:00 /usr/sbin/rsyslogd -n -iNONE
root        4428  0.0  0.3  34116 12820 ?        S<s  13:31   0:00 /usr/lib/systemd/systemd-journald
root        4437  0.0  0.4  39660 14084 ?        Ss   13:31   0:00 /usr/lib/systemd/systemd-udevd
root        4443  0.1  0.3 318676 11800 ?        Ssl  13:31   0:01 /usr/libexec/upowerd
root        4461  0.0  0.4 391608 14292 ?        Ssl  13:31   0:00 /usr/sbin/ModemManager
root        4469  0.0  0.0      0     0 ?        S    13:31   0:00 [psimon]
systemd+    4470  0.0  0.3  21496 12348 ?        Ss   13:31   0:00 /usr/lib/systemd/systemd-networkd
root        4491  0.2  1.2 2108644 42544 ?       Ssl  13:31   0:02 /usr/lib/snapd/snapd
root        5368  0.0  0.0      0     0 ?        S    13:32   0:00 [psimon]
amman-a+   21069  100  0.1   9764  5008 pts/0    R+   13:48   0:00 ps aux


