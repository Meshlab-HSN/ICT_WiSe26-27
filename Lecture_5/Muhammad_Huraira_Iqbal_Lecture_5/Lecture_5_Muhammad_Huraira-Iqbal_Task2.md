# Lecture 5 - Task 2: Search and Filter
## 1. Command: ps aux | grep muhammad
root        1085  0.0  0.1   8756  5680 ?        Ss   Nov07   0:00 login -- muhammad-huraira
root        3758  0.0  0.2  18264 12040 ?        Ss   Nov07   0:00 sshd-session: muhammad-huraira [priv]
muhamma+    3856  0.4  0.1  18560  7688 ?        S    Nov07   0:06 sshd-session: muhammad-huraira@pts/0
muhamma+    4223 33.3  0.0   6716  2652 pts/0    S+   00:04   0:00 grep --color=auto muhammad
## 2. Command: ps aux | grep -E '^muhamma\+'
muhamma+    1368  0.0  0.2  22256 13032 ?        Ss   Nov07   0:00 /usr/lib/systemd/systemd --user
muhamma+    1372  0.0  0.0  23016  4124 ?        S    Nov07   0:00 (sd-pam)
muhamma+    1391  0.0  0.1   8856  5872 tty1     Ss+  Nov07   0:00 -bash
muhamma+    3856  0.4  0.1  18560  7688 ?        S    Nov07   0:06 sshd-session: muhammad-huraira@pts/0
muhamma+    3857  0.0  0.1   8844  5852 pts/0    Ss   Nov07   0:00 -bash
muhamma+    4242 50.0  0.1   9764  4728 pts/0    R+   00:05   0:00 ps aux
muhamma+    4243 50.0  0.0   6716  2656 pts/0    S+   00:05   0:00 grep --color=auto -E ^muhamma\+
## 3. Command: ps aux | grep -v '^root'
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
message+    1027  0.0  0.1   9304  6008 ?        Ss   Nov07   0:01 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1034  0.0  0.1 306448  8612 ?        Ssl  Nov07   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony     1087  0.0  0.2  23992 11424 ?        S    Nov07   0:01 /usr/sbin/chronyd -n -F 1
syslog      1116  0.0  0.1 220548  6520 ?        Ssl  Nov07   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1128  0.0  0.0  12096  2452 ?        S    Nov07   0:00 /usr/sbin/chronyd -n -F 1
muhamma+    1368  0.0  0.2  22256 13032 ?        Ss   Nov07   0:00 /usr/lib/systemd/systemd --user
muhamma+    1372  0.0  0.0  23016  4124 ?        S    Nov07   0:00 (sd-pam)
muhamma+    1391  0.0  0.1   8856  5872 tty1     Ss+  Nov07   0:00 -bash
systemd+    2453  0.0  0.3  22644 14668 ?        Ss   Nov07   0:00 /usr/lib/systemd/systemd-resolved
muhamma+    3856  0.4  0.1  18560  7688 ?        S    Nov07   0:07 sshd-session: muhammad-huraira@pts/0
muhamma+    3857  0.0  0.1   8844  5852 pts/0    Ss   Nov07   0:00 -bash
systemd+    4154  0.3  0.2  21192 12292 ?        Ss   00:03   0:00 /usr/lib/systemd/systemd-networkd
muhamma+    4262  100  0.1   9764  4716 pts/0    R+   00:05   0:00 ps aux
muhamma+    4263  0.0  0.0   6716  2664 pts/0    S+   00:05   0:00 grep --color=auto -v ^root
## 4. Command: ps aux | grep -vE 'kworker|irq'
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.3  24956 16460 ?        Ss   Nov07   0:05 /usr/lib/systemd/systemd --switched-root --system --deserialize=50
root           2  0.0  0.0      0     0 ?        S    Nov07   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    Nov07   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    Nov07   0:01 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    Nov07   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    Nov07   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    Nov07   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    Nov07   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    Nov07   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    Nov07   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    Nov07   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    Nov07   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    Nov07   0:00 [migration/1]
root          30  0.0  0.0      0     0 ?        S    Nov07   0:00 [kdevtmpfs]
root          32  0.0  0.0      0     0 ?        I    Nov07   0:00 [rcu_tasks_kthread]
root          33  0.0  0.0      0     0 ?        I    Nov07   0:00 [rcu_tasks_rude_kthread]
root          34  0.0  0.0      0     0 ?        S    Nov07   0:00 [kauditd]
root          35  0.0  0.0      0     0 ?        S    Nov07   0:00 [khungtaskd]
root          36  0.0  0.0      0     0 ?        S    Nov07   0:00 [oom_reaper]
root          40  0.0  0.0      0     0 ?        S    Nov07   0:00 [kcompactd0]
root          41  0.0  0.0      0     0 ?        SN   Nov07   0:00 [ksmd]
root          42  0.0  0.0      0     0 ?        SN   Nov07   0:00 [khugepaged]
root          55  0.0  0.0      0     0 ?        S    Nov07   0:00 [watchdogd]
root          59  0.0  0.0      0     0 ?        S    Nov07   0:00 [kswapd0]
root          60  0.0  0.0      0     0 ?        S    Nov07   0:00 [ecryptfs-kthread]
root          63  0.0  0.0      0     0 ?        S    Nov07   0:00 [scsi_eh_0]
root          65  0.0  0.0      0     0 ?        S    Nov07   0:00 [scsi_eh_1]
root         326  0.0  0.0      0     0 ?        S    Nov07   0:00 [scsi_eh_2]
root         441  0.0  0.0      0     0 ?        S    Nov07   0:01 [jbd2/dm-0-8]
root         537  0.0  0.0      0     0 ?        S    Nov07   0:00 [psimon]
root         577  0.0  0.2 279492  9644 ?        SLsl Nov07   0:03 /usr/sbin/multipathd -d -s
root         779  0.0  0.0      0     0 ?        S    Nov07   0:00 [jbd2/sda2-8]
root        1025  0.0  0.0   2888  2012 ?        Ss   Nov07   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root        1026  0.0  0.0   7060  3404 ?        Ss   Nov07   0:00 /usr/sbin/cron -f -P
message+    1027  0.0  0.1   9304  6008 ?        Ss   Nov07   0:01 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1033  0.0  0.6  46744 30140 ?        Ss   Nov07   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1034  0.0  0.1 306448  8612 ?        Ssl  Nov07   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1043  0.0  0.3 543452 15292 ?        Ssl  Nov07   0:00 /usr/libexec/udisks2/udisksd
root        1085  0.0  0.1   8756  5680 ?        Ss   Nov07   0:00 login -- muhammad-huraira
_chrony     1087  0.0  0.2  23992 11424 ?        S    Nov07   0:01 /usr/sbin/chronyd -n -F 1
root        1095  0.0  0.7 126116 32916 ?        Ssl  Nov07   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root        1115  0.0  0.3 391604 14132 ?        Ssl  Nov07   0:00 /usr/sbin/ModemManager
syslog      1116  0.0  0.1 220548  6520 ?        Ssl  Nov07   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1128  0.0  0.0  12096  2452 ?        S    Nov07   0:00 /usr/sbin/chronyd -n -F 1
muhamma+    1368  0.0  0.2  22256 13032 ?        Ss   Nov07   0:00 /usr/lib/systemd/systemd --user
muhamma+    1372  0.0  0.0  23016  4124 ?        S    Nov07   0:00 (sd-pam)
muhamma+    1391  0.0  0.1   8856  5872 tty1     Ss+  Nov07   0:00 -bash
root        1709  0.0  1.0 365904 45996 ?        Ssl  Nov07   0:01 /usr/libexec/fwupd/fwupd
root        1718  0.0  0.2 318816 11752 ?        Ssl  Nov07   0:12 /usr/libexec/upowerd
systemd+    2453  0.0  0.3  22644 14668 ?        Ss   Nov07   0:00 /usr/lib/systemd/systemd-resolved
root        2802  2.8  0.9 1886136 42424 ?       Ssl  Nov07   4:35 /usr/lib/snapd/snapd
root        3065  0.0  0.2  38108 12312 ?        Ss   Nov07   0:00 /usr/lib/systemd/systemd-udevd
root        3080  0.0  0.0      0     0 ?        S    Nov07   0:00 [psimon]
root        3154  0.0  0.1  10744  7712 ?        Ss   Nov07   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        3758  0.0  0.2  18264 12040 ?        Ss   Nov07   0:00 sshd-session: muhammad-huraira [priv]
muhamma+    3856  0.5  0.1  18560  7688 ?        S    Nov07   0:07 sshd-session: muhammad-huraira@pts/0
muhamma+    3857  0.0  0.1   8844  5852 pts/0    Ss   Nov07   0:00 -bash
root        4150  0.0  0.2  33852 12416 ?        S<s  00:03   0:00 /usr/lib/systemd/systemd-journald
systemd+    4154  0.3  0.2  21192 12292 ?        Ss   00:03   0:00 /usr/lib/systemd/systemd-networkd
root        4158  0.1  0.2  18440  9636 ?        Ss   00:03   0:00 /usr/lib/systemd/systemd-logind
muhamma+    4282  150  0.1   9764  4704 pts/0    R+   00:06   0:00 ps aux
