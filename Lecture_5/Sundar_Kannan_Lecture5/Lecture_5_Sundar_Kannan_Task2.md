# Lecture 5 - Task 2: Search and filter
## 1. Processes containing the username
```
$ ps aux | grep sundar
root         971  0.0  0.0   8760  5620 ?        Ss   17:42   0:00 login -- sundar-kannan
sundar-+    1381  0.0  0.1  22008 13164 ?        Ss   17:43   0:00 /usr/lib/systemd/systemd --user
sundar-+    1400  0.0  0.0  23016  4104 ?        S    17:43   0:00 (sd-pam)
sundar-+    1460  0.0  0.0   8856  5932 tty1     Ss+  17:43   0:00 -bash
root        2156  0.0  0.1  18524 12124 ?        Ss   17:47   0:00 sshd-session: sundar-kannan [priv]
sundar-+    2212  0.1  0.0  18684  7696 ?        S    17:47   0:02 sshd-session: sundar-kannan@pts/0
sundar-+    2213  0.0  0.0   8844  5932 pts/0    Ss   17:47   0:00 -bash
sundar-+    2893  0.0  0.0   7536  3980 pts/0    S+   18:17   0:00 bash -c ps aux | grep sundar
sundar-+    2894  100  0.0   9764  4680 pts/0    R+   18:17   0:00 ps aux
sundar-+    2895  0.0  0.0   6716  2696 pts/0    S+   18:17   0:00 grep sundar
```

## 2. Only processes running as my user (regex)
```
$ ps aux | grep '^sundar-+ '
sundar-+    1381  0.0  0.1  22008 13164 ?        Ss   17:43   0:00 /usr/lib/systemd/systemd --user
sundar-+    1400  0.0  0.0  23016  4104 ?        S    17:43   0:00 (sd-pam)
sundar-+    1460  0.0  0.0   8856  5932 tty1     Ss+  17:43   0:00 -bash
sundar-+    2212  0.1  0.0  18684  7696 ?        S    17:47   0:02 sshd-session: sundar-kannan@pts/0
sundar-+    2213  0.0  0.0   8844  5932 pts/0    Ss   17:47   0:00 -bash
sundar-+    2915  0.0  0.0   7536  3944 pts/0    S+   18:19   0:00 bash -c ps aux | grep '^sundar-+ '
sundar-+    2916  0.0  0.0   9764  4684 pts/0    R+   18:19   0:00 ps aux
sundar-+    2917  0.0  0.0   6716  2668 pts/0    S+   18:19   0:00 grep ^sundar-+ 
```

```
$ ps aux | grep -v '^root '
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     500  0.0  0.1  22752 14652 ?        Ss   17:42   0:00 /usr/lib/systemd/systemd-resolved
systemd+     675  0.0  0.1  21436 12296 ?        Ss   17:42   0:00 /usr/lib/systemd/systemd-networkd
message+     810  0.0  0.0   9168  5824 ?        Ss   17:42   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      819  0.0  0.0 306448  8492 ?        Ssl  17:42   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony      894  0.0  0.1  23868 11444 ?        S    17:42   0:00 /usr/sbin/chronyd -n -F 1
_chrony      902  0.0  0.0  12096  2432 ?        S    17:42   0:00 /usr/sbin/chronyd -n -F 1
syslog       936  0.0  0.0 220548  6060 ?        Ssl  17:42   0:00 /usr/sbin/rsyslogd -n -iNONE
sundar-+    1381  0.0  0.1  22008 13164 ?        Ss   17:43   0:00 /usr/lib/systemd/systemd --user
sundar-+    1400  0.0  0.0  23016  4104 ?        S    17:43   0:00 (sd-pam)
sundar-+    1460  0.0  0.0   8856  5932 tty1     Ss+  17:43   0:00 -bash
sundar-+    2212  0.1  0.0  18684  7696 ?        S    17:47   0:02 sshd-session: sundar-kannan@pts/0
sundar-+    2213  0.0  0.0   8844  5932 pts/0    Ss   17:47   0:00 -bash
sundar-+    2944  0.0  0.0   7536  3896 pts/0    S+   18:20   0:00 bash -c ps aux | grep -v '^root '
sundar-+    2945  0.0  0.0   9764  4720 pts/0    R+   18:20   0:00 ps aux
sundar-+    2946  0.0  0.0   6716  2696 pts/0    S+   18:20   0:00 grep -v ^root 
```

## 4. Without kworker and irq processes
```
$ ps aux | grep -vE 'kworker|irq'
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.2  0.1  25352 16608 ?        Ss   17:42   0:05 /usr/lib/systemd/systemd --switched-root --system --deserialize=55
root           2  0.0  0.0      0     0 ?        S    17:42   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    17:42   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    17:42   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    17:42   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    17:42   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    17:42   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    17:42   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    17:42   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    17:42   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    17:42   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    17:42   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    17:42   0:00 [migration/1]
root          30  0.0  0.0      0     0 ?        S    17:42   0:00 [kdevtmpfs]
root          32  0.0  0.0      0     0 ?        I    17:42   0:00 [rcu_tasks_kthread]
root          33  0.0  0.0      0     0 ?        I    17:42   0:00 [rcu_tasks_rude_kthread]
root          34  0.0  0.0      0     0 ?        S    17:42   0:00 [kauditd]
root          35  0.0  0.0      0     0 ?        S    17:42   0:00 [khungtaskd]
root          36  0.0  0.0      0     0 ?        S    17:42   0:00 [oom_reaper]
root          40  0.0  0.0      0     0 ?        S    17:42   0:00 [kcompactd0]
root          41  0.0  0.0      0     0 ?        SN   17:42   0:00 [ksmd]
root          42  0.0  0.0      0     0 ?        SN   17:42   0:00 [khugepaged]
root          55  0.0  0.0      0     0 ?        S    17:42   0:00 [watchdogd]
root          59  0.0  0.0      0     0 ?        S    17:42   0:00 [kswapd0]
root          60  0.0  0.0      0     0 ?        S    17:42   0:00 [ecryptfs-kthread]
root          63  0.0  0.0      0     0 ?        S    17:42   0:00 [scsi_eh_0]
root          65  0.0  0.0      0     0 ?        S    17:42   0:00 [scsi_eh_1]
root         304  0.0  0.0      0     0 ?        S    17:42   0:00 [scsi_eh_2]
root         338  0.0  0.0      0     0 ?        S    17:42   0:00 [jbd2/sda2-8]
root         439  0.0  0.1  50528 17248 ?        S<s  17:42   0:00 /usr/lib/systemd/systemd-journald
root         469  0.0  0.0 279492  9644 ?        SLsl 17:42   0:00 /usr/sbin/multipathd -d -s
root         498  0.0  0.1  41180 15356 ?        Ss   17:42   0:00 /usr/lib/systemd/systemd-udevd
systemd+     500  0.0  0.1  22752 14652 ?        Ss   17:42   0:00 /usr/lib/systemd/systemd-resolved
root         506  0.0  0.0      0     0 ?        S    17:42   0:00 [psimon]
systemd+     675  0.0  0.1  21436 12296 ?        Ss   17:42   0:00 /usr/lib/systemd/systemd-networkd
root         809  0.0  0.0   2888  2012 ?        Ss   17:42   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+     810  0.0  0.0   9168  5824 ?        Ss   17:42   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         817  0.0  0.2  46744 30304 ?        Ss   17:42   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      819  0.0  0.0 306448  8492 ?        Ssl  17:42   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root         823  0.0  0.4 1886392 43404 ?       Ssl  17:42   0:01 /usr/lib/snapd/snapd
root         826  0.0  0.0  18592  9708 ?        Ss   17:42   0:00 /usr/lib/systemd/systemd-logind
root         829  0.0  0.1 543352 15184 ?        Ssl  17:42   0:00 /usr/libexec/udisks2/udisksd
_chrony      894  0.0  0.1  23868 11444 ?        S    17:42   0:00 /usr/sbin/chronyd -n -F 1
_chrony      902  0.0  0.0  12096  2432 ?        S    17:42   0:00 /usr/sbin/chronyd -n -F 1
root         910  0.0  0.3 126116 32996 ?        Ssl  17:42   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root         922  0.0  0.0  10744  7776 ?        Ss   17:42   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root         932  0.0  0.0   7060  3344 ?        Ss   17:42   0:00 /usr/sbin/cron -f -P
syslog       936  0.0  0.0 220548  6060 ?        Ssl  17:42   0:00 /usr/sbin/rsyslogd -n -iNONE
root         971  0.0  0.0   8760  5620 ?        Ss   17:42   0:00 login -- sundar-kannan
root         976  0.0  0.1 391604 14188 ?        Ssl  17:42   0:00 /usr/sbin/ModemManager
sundar-+    1381  0.0  0.1  22008 13164 ?        Ss   17:43   0:00 /usr/lib/systemd/systemd --user
sundar-+    1400  0.0  0.0  23016  4104 ?        S    17:43   0:00 (sd-pam)
sundar-+    1460  0.0  0.0   8856  5932 tty1     Ss+  17:43   0:00 -bash
root        2156  0.0  0.1  18524 12124 ?        Ss   17:47   0:00 sshd-session: sundar-kannan [priv]
sundar-+    2212  0.1  0.0  18684  7696 ?        S    17:47   0:02 sshd-session: sundar-kannan@pts/0
sundar-+    2213  0.0  0.0   8844  5932 pts/0    Ss   17:47   0:00 -bash
root        2259  0.1  0.4 502240 48452 ?        Ssl  17:48   0:02 /usr/libexec/fwupd/fwupd
root        2268  0.2  0.1 318664 11448 ?        Ssl  17:48   0:04 /usr/libexec/upowerd
root        2591  0.0  0.0      0     0 ?        S    17:52   0:00 [psimon]
sundar-+    2972  0.0  0.0   9764  4684 pts/0    R+   18:21   0:00 ps aux
```

