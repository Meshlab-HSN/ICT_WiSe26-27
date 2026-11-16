## Task 2
$ mkdir -p Lecture_5
$ cd Lecture_5
$ ps aux > processes.log
$ cat processes.log | wc -l | xargs -I{} echo "{} processes are running" >> processes.log
$ ls /proc/*/fd > fd_out.log 2> fd_err.log
$ ps aux | grep sai-rak

root        1117  0.0  0.1   8764  5620 ?        Ss   09:54   0:00 login -- sai-rakshitha-pothula
sai-rak+    1419  0.0  0.3  22068 12948 ?        Ss   09:55   0:00 /usr/lib/systemd/systemd --user
sai-rak+    1426  0.0  0.1  23016  4100 ?        S    09:55   0:00 (sd-pam)
sai-rak+    1446  0.0  0.1   8856  5872 tty1     Ss+  09:55   0:00 -bash
root        1483  0.0  0.3  18432 12288 ?        Ss   09:55   0:00 sshd-session: sai-rakshitha-pothula [priv]
sai-rak+    1529  0.2  0.2  18568  7696 ?        S    09:55   0:03 sshd-session: sai-rakshitha-pothula@pts/0
sai-rak+    1530  0.0  0.1   8844  5932 pts/0    Ss   09:55   0:00 -bash
sai-rak+    1758  125  0.1   9764  4680 pts/0    R+   10:15   0:00 ps aux
sai-rak+    1759 28.5  0.0   6716  2656 pts/0    S+   10:15   0:00 grep --color=auto sai-rak

$ ps aux | grep '^sai-rak+'

sai-rak+    1419  0.0  0.3  22068 12948 ?        Ss   09:55   0:00 /usr/lib/systemd/systemd --user
sai-rak+    1426  0.0  0.1  23016  4100 ?        S    09:55   0:00 (sd-pam)
sai-rak+    1446  0.0  0.1   8856  5872 tty1     Ss+  09:55   0:00 -bash
sai-rak+    1529  0.2  0.2  18568  7696 ?        S    09:55   0:03 sshd-session: sai-rakshitha-pothula@pts/0
sai-rak+    1530  0.0  0.1   8844  5932 pts/0    Ss   09:55   0:00 -bash
sai-rak+    1769  112  0.1   9764  4680 pts/0    R+   10:16   0:00 ps aux
sai-rak+    1770 25.0  0.0   6716  2700 pts/0    S+   10:16   0:00 grep --color=auto ^sai-rak+

$ ps aux | grep -v '^root'

USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
message+    1047  0.0  0.1   9008  5664 ?        Ss   09:54   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1056  0.0  0.2 306448  8496 ?        Ssl  09:54   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
syslog      1124  0.0  0.1 220548  6272 ?        Ssl  09:54   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1134  0.0  0.3  23856 11356 ?        S    09:54   0:00 /usr/sbin/chronyd -n -F 1
_chrony     1146  0.0  0.0  12096  2464 ?        S    09:54   0:00 /usr/sbin/chronyd -n -F 1
sai-rak+    1419  0.0  0.3  22068 12948 ?        Ss   09:55   0:00 /usr/lib/systemd/systemd --user
sai-rak+    1426  0.0  0.1  23016  4100 ?        S    09:55   0:00 (sd-pam)
sai-rak+    1446  0.0  0.1   8856  5872 tty1     Ss+  09:55   0:00 -bash
sai-rak+    1529  0.3  0.2  18568  7696 ?        S    09:55   0:03 sshd-session: sai-rakshitha-pothula@pts/0
sai-rak+    1530  0.0  0.1   8844  5932 pts/0    Ss   09:55   0:00 -bash
systemd+    1691  0.0  0.3  21220 12356 ?        Ss   10:08   0:00 /usr/lib/systemd/systemd-networkd
systemd+    1692  0.0  0.4  22436 14464 ?        Ss   10:08   0:00 /usr/lib/systemd/systemd-resolved
sai-rak+    1785  140  0.1   9764  4732 pts/0    R+   10:17   0:00 ps aux
sai-rak+    1786 40.0  0.0   6716  2644 pts/0    S+   10:17   0:00 grep --color=auto -v ^root

$ ps aux | grep -v -E 'kworker|irq'

USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.1  0.4  24836 16108 ?        Ss   09:54   0:03 /usr/lib/systemd/systemd --switched-root --system --deserialize=50
root           2  0.0  0.0      0     0 ?        S    09:54   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    09:54   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    09:54   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    09:54   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    09:54   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    09:54   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    09:54   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    09:54   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    09:54   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    09:54   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    09:54   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    09:54   0:00 [migration/1]
root          30  0.0  0.0      0     0 ?        S    09:54   0:00 [kdevtmpfs]
root          32  0.0  0.0      0     0 ?        I    09:54   0:00 [rcu_tasks_kthread]
root          33  0.0  0.0      0     0 ?        I    09:54   0:00 [rcu_tasks_rude_kthread]
root          34  0.0  0.0      0     0 ?        S    09:54   0:00 [kauditd]
root          35  0.0  0.0      0     0 ?        S    09:54   0:00 [khungtaskd]
root          36  0.0  0.0      0     0 ?        S    09:54   0:00 [oom_reaper]
root          40  0.0  0.0      0     0 ?        S    09:54   0:01 [kcompactd0]
root          41  0.0  0.0      0     0 ?        SN   09:54   0:00 [ksmd]
root          42  0.0  0.0      0     0 ?        SN   09:54   0:00 [khugepaged]
root          54  0.0  0.0      0     0 ?        S    09:54   0:00 [watchdogd]
root          57  0.0  0.0      0     0 ?        S    09:54   0:00 [kswapd0]
root          58  0.0  0.0      0     0 ?        S    09:54   0:00 [ecryptfs-kthread]
root          62  0.0  0.0      0     0 ?        S    09:54   0:00 [scsi_eh_0]
root          64  0.0  0.0      0     0 ?        S    09:54   0:00 [scsi_eh_1]
root         346  0.0  0.0      0     0 ?        S    09:54   0:00 [scsi_eh_2]
root         454  0.0  0.0      0     0 ?        S    09:54   0:00 [jbd2/dm-0-8]
root         549  0.0  0.0      0     0 ?        S    09:54   0:00 [psimon]
root         555  0.0  0.4  50820 17136 ?        S<s  09:54   0:00 /usr/lib/systemd/systemd-journald
root         588  0.0  0.2 279492  9644 ?        SLsl 09:54   0:01 /usr/sbin/multipathd -d -s
root         610  0.0  0.4  39968 14156 ?        Ss   09:54   0:00 /usr/lib/systemd/systemd-udevd
root         614  0.0  0.0      0     0 ?        S    09:54   0:00 [psimon]
root         795  0.0  0.0      0     0 ?        S    09:54   0:00 [jbd2/sda2-8]
root        1045  0.0  0.0   2888  2012 ?        Ss   09:54   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root        1046  0.0  0.0   7060  3416 ?        Ss   09:54   0:00 /usr/sbin/cron -f -P
message+    1047  0.0  0.1   9008  5664 ?        Ss   09:54   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1055  0.0  0.8  46744 30164 ?        Ss   09:54   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1056  0.0  0.2 306448  8496 ?        Ssl  09:54   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1061  0.6  1.2 1854308 41996 ?       Ssl  09:54   0:12 /snap/snapd/current/usr/lib/snapd/snapd
root        1064  0.0  0.2  18416  9580 ?        Ss   09:54   0:00 /usr/lib/systemd/systemd-logind
root        1068  0.0  0.4 543452 15144 ?        Ssl  09:54   0:00 /usr/libexec/udisks2/udisksd
root        1088  0.0  0.2  10744  7748 ?        Ss   09:54   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        1117  0.0  0.1   8764  5620 ?        Ss   09:54   0:00 login -- sai-rakshitha-pothula
syslog      1124  0.0  0.1 220548  6272 ?        Ssl  09:54   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1134  0.0  0.3  23856 11356 ?        S    09:54   0:00 /usr/sbin/chronyd -n -F 1
root        1139  0.0  0.9 126112 33032 ?        Ssl  09:54   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony     1146  0.0  0.0  12096  2464 ?        S    09:54   0:00 /usr/sbin/chronyd -n -F 1
root        1170  0.0  0.4 391608 13924 ?        Ssl  09:54   0:00 /usr/sbin/ModemManager
sai-rak+    1419  0.0  0.3  22068 12948 ?        Ss   09:55   0:00 /usr/lib/systemd/systemd --user
sai-rak+    1426  0.0  0.1  23016  4100 ?        S    09:55   0:00 (sd-pam)
sai-rak+    1446  0.0  0.1   8856  5872 tty1     Ss+  09:55   0:00 -bash
root        1483  0.0  0.3  18432 12288 ?        Ss   09:55   0:00 sshd-session: sai-rakshitha-pothula [priv]
sai-rak+    1529  0.3  0.2  18568  7700 ?        S    09:55   0:05 sshd-session: sai-rakshitha-pothula@pts/0
sai-rak+    1530  0.0  0.1   8844  5932 pts/0    Ss   09:55   0:00 -bash
systemd+    1691  0.0  0.3  21220 12356 ?        Ss   10:08   0:00 /usr/lib/systemd/systemd-networkd
systemd+    1692  0.0  0.4  22436 14464 ?        Ss   10:08   0:00 /usr/lib/systemd/systemd-resolved
sai-rak+    1836  122  0.1   9764  4680 pts/0    R+   10:25   0:00 ps aux
