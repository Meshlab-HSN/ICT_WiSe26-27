```
$ ps aux | grep ovi
root        1064  0.0  0.0   8756  5652 ?        Ss   12:56   0:00 login -- ovi
ovi         1356  0.0  0.1  22488 13064 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd --user
ovi         1361  0.0  0.0  23016  4092 ?        S    12:56   0:00 (sd-pam)
ovi         1385  0.0  0.0   8856  5868 tty1     Ss+  12:56   0:00 -bash
root        1425  0.0  0.0  18264 12064 ?        Ss   12:57   0:00 sshd-session: ovi [priv]
ovi         1481  0.5  0.0  18560  7688 ?        S    12:57   0:06 sshd-session: ovi@pts/0
ovi         1482  0.0  0.0   9624  6768 pts/0    Ss   12:57   0:00 -bash
ovi         2073  0.0  0.0   9764  4732 pts/0    R+   13:20   0:00 ps aux
ovi         2074  0.0  0.0   6716  2644 pts/0    S+   13:20   0:00 grep --color=auto ovi
```

```
$ ps aux | grep "^ovi "
ovi         1356  0.0  0.1  22488 13064 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd --user
ovi         1361  0.0  0.0  23016  4092 ?        S    12:56   0:00 (sd-pam)
ovi         1385  0.0  0.0   8856  5868 tty1     Ss+  12:56   0:00 -bash
ovi         1481  0.5  0.0  18560  7688 ?        S    12:57   0:06 sshd-session: ovi@pts/0
ovi         1482  0.0  0.0   9624  6768 pts/0    Ss   12:57   0:00 -bash
ovi         2080  0.0  0.0   9764  4680 pts/0    R+   13:20   0:00 ps aux
ovi         2081  0.0  0.0   6716  2680 pts/0    S+   13:20   0:00 grep --color=auto ^ovi 
```

```
$ ps aux | grep -v "^root "
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     572  0.0  0.1  22640 14692 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd-resolved
systemd+     806  0.0  0.0  21436 12300 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd-networkd
message+     991  0.0  0.0   9016  5684 ?        Ss   12:56   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      999  0.0  0.0 306448  8392 ?        Ssl  12:56   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony     1069  0.0  0.0  23992 11452 ?        S    12:56   0:00 /usr/sbin/chronyd -n -F 1
syslog      1077  0.0  0.0 220548  6312 ?        Ssl  12:56   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1109  0.0  0.0  12096  2408 ?        S    12:56   0:00 /usr/sbin/chronyd -n -F 1
ovi         1356  0.0  0.1  22488 13064 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd --user
ovi         1361  0.0  0.0  23016  4092 ?        S    12:56   0:00 (sd-pam)
ovi         1385  0.0  0.0   8856  5868 tty1     Ss+  12:56   0:00 -bash
ovi         1481  0.5  0.0  18560  7688 ?        S    12:57   0:06 sshd-session: ovi@pts/0
ovi         1482  0.0  0.0   9624  6768 pts/0    Ss   12:57   0:00 -bash
ovi         2087  0.0  0.0   9764  4708 pts/0    R+   13:20   0:00 ps aux
ovi         2088  0.0  0.0   6716  2664 pts/0    S+   13:20   0:00 grep --color=auto -v ^root 
```

```
$ ps aux | grep -Ev 'kworker|irq'
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.4  0.1  24836 16268 ?        Ss   12:55   0:06 /usr/lib/systemd/systemd --switched-root --system --deserialize=49
root           2  0.0  0.0      0     0 ?        S    12:55   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    12:55   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    12:55   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    12:55   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    12:55   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    12:55   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    12:55   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    12:55   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    12:55   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    12:55   0:00 [kdevtmpfs]
root          24  0.0  0.0      0     0 ?        I    12:55   0:00 [rcu_tasks_kthread]
root          25  0.0  0.0      0     0 ?        I    12:55   0:00 [rcu_tasks_rude_kthread]
root          26  0.0  0.0      0     0 ?        S    12:55   0:00 [kauditd]
root          27  0.0  0.0      0     0 ?        S    12:55   0:00 [khungtaskd]
root          28  0.0  0.0      0     0 ?        S    12:55   0:00 [oom_reaper]
root          32  0.0  0.0      0     0 ?        S    12:55   0:00 [kcompactd0]
root          33  0.0  0.0      0     0 ?        SN   12:55   0:00 [ksmd]
root          34  0.0  0.0      0     0 ?        SN   12:55   0:00 [khugepaged]
root          46  0.0  0.0      0     0 ?        S    12:55   0:00 [watchdogd]
root          49  0.0  0.0      0     0 ?        S    12:55   0:00 [kswapd0]
root          50  0.0  0.0      0     0 ?        S    12:55   0:00 [ecryptfs-kthread]
root          53  0.0  0.0      0     0 ?        S    12:55   0:00 [scsi_eh_0]
root          55  0.0  0.0      0     0 ?        S    12:55   0:00 [scsi_eh_1]
root         305  0.0  0.0      0     0 ?        S    12:55   0:00 [scsi_eh_2]
root         420  0.0  0.0      0     0 ?        S    12:55   0:00 [jbd2/dm-0-8]
root         515  0.0  0.0      0     0 ?        S    12:55   0:00 [psimon]
root         522  0.0  0.1  50416 17192 ?        S<s  12:55   0:00 /usr/lib/systemd/systemd-journald
root         555  0.0  0.0 279492  9644 ?        SLsl 12:56   0:00 /usr/sbin/multipathd -d -s
systemd+     572  0.0  0.1  22640 14692 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd-resolved
root         578  0.0  0.1  40088 14220 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd-udevd
root         589  0.0  0.0      0     0 ?        S    12:56   0:00 [psimon]
root         713  0.0  0.0      0     0 ?        S    12:56   0:00 [jbd2/sda2-8]
systemd+     806  0.0  0.0  21436 12300 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd-networkd
root         989  0.0  0.0   2888  2008 ?        Ss   12:56   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root         990  0.0  0.0   7060  3420 ?        Ss   12:56   0:00 /usr/sbin/cron -f -P
message+     991  0.0  0.0   9016  5684 ?        Ss   12:56   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         998  0.0  0.2  46744 30148 ?        Ss   12:56   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      999  0.0  0.0 306448  8392 ?        Ssl  12:56   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1002  0.2  0.3 1780576 42396 ?       Ssl  12:56   0:03 /snap/snapd/current/usr/lib/snapd/snapd
root        1005  0.0  0.0  18568  9612 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd-logind
root        1007  0.0  0.1 543444 15080 ?        Ssl  12:56   0:00 /usr/libexec/udisks2/udisksd
root        1027  0.0  0.0  10744  7788 ?        Ss   12:56   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        1064  0.0  0.0   8756  5652 ?        Ss   12:56   0:00 login -- ovi
_chrony     1069  0.0  0.0  23992 11452 ?        S    12:56   0:00 /usr/sbin/chronyd -n -F 1
root        1072  0.0  0.2 126112 32888 ?        Ssl  12:56   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
syslog      1077  0.0  0.0 220548  6312 ?        Ssl  12:56   0:00 /usr/sbin/rsyslogd -n -iNONE
root        1104  0.0  0.1 391608 14240 ?        Ssl  12:56   0:00 /usr/sbin/ModemManager
_chrony     1109  0.0  0.0  12096  2408 ?        S    12:56   0:00 /usr/sbin/chronyd -n -F 1
ovi         1356  0.0  0.1  22488 13064 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd --user
ovi         1361  0.0  0.0  23016  4092 ?        S    12:56   0:00 (sd-pam)
ovi         1385  0.0  0.0   8856  5868 tty1     Ss+  12:56   0:00 -bash
root        1425  0.0  0.0  18264 12064 ?        Ss   12:57   0:00 sshd-session: ovi [priv]
ovi         1481  0.5  0.0  18560  7688 ?        S    12:57   0:06 sshd-session: ovi@pts/0
ovi         1482  0.0  0.0   9624  6768 pts/0    Ss   12:57   0:00 -bash
ovi         2094 50.0  0.0   9764  4688 pts/0    R+   13:20   0:00 ps aux
```

