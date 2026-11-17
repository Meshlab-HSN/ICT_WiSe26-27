
# Lecture 5 — Task 2
Name: Needhi Patel

task 2.1 

needhi-patel@ict:~/ICT_WiSe26-27/Lecture 5$ ps aux | grep 'needhi-+'
needhi-+    1321  0.0  0.7  22076 12864 ?        Ss   09:20   0:00 /usr/lib/systemd/systemd --user
needhi-+    1325  0.0  0.2  23012  4136 ?        S    09:20   0:00 (sd-pam)
needhi-+    1349  0.0  0.3   8856  5880 tty1     Ss+  09:20   0:00 -bash
needhi-+    2168  9.0  0.4  18684  7680 ?        S    10:32   2:19 sshd-session: needhi-patel@pts/0
needhi-+    2169  0.0  0.3   8844  5868 pts/0    Ss   10:32   0:00 -bash
needhi-+    2411 75.0  0.2   9764  4676 pts/0    R+   10:57   0:00 ps aux
needhi-+    2412 25.0  0.1   6716  2680 pts/0    S+   10:57   0:00 grep --color=auto needhi-+

task 2.2

needhi-patel@ict:~/ICT_WiSe26-27/Lecture 5$ ps aux | grep '^needhi-+[[:space:]]'
needhi-+    1321  0.0  0.7  22076 12864 ?        Ss   09:20   0:00 /usr/lib/systemd/systemd --user
needhi-+    1325  0.0  0.2  23012  4136 ?        S    09:20   0:00 (sd-pam)
needhi-+    1349  0.0  0.3   8856  5880 tty1     Ss+  09:20   0:00 -bash
needhi-+    2168  6.1  0.4  18684  7676 ?        R    10:32   0:23 sshd-session: needhi-patel@pts/0
needhi-+    2169  0.0  0.3   8844  5868 pts/0    Ss   10:32   0:00 -bash
needhi-+    2264 66.6  0.2   9764  4672 pts/0    R+   10:38   0:00 ps aux
needhi-+    2265 33.3  0.1   6848  2664 pts/0    S+   10:38   0:00 grep --color=auto ^needhi-+[[:space:]]

task 2.3 

needhi-patel@ict:~/ICT_WiSe26-27/Lecture 5$ ps aux | grep -v '^root[[:space:]]'
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
message+     972  0.0  0.3   9132  5824 ?        Ss   09:20   0:01 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      979  0.0  0.6 382012 10416 ?        Ssl  09:20   0:01 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony     1051  0.0  0.6  23876 11324 ?        S    09:20   0:01 /usr/sbin/chronyd -n -F 1
syslog      1083  0.0  0.3 220548  6264 ?        Ssl  09:20   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1091  0.0  0.1  12096  2432 ?        S    09:20   0:00 /usr/sbin/chronyd -n -F 1
needhi-+    1321  0.0  0.7  22076 12864 ?        Ss   09:20   0:00 /usr/lib/systemd/systemd --user
needhi-+    1325  0.0  0.2  23012  4136 ?        S    09:20   0:00 (sd-pam)
needhi-+    1349  0.0  0.3   8856  5880 tty1     Ss+  09:20   0:00 -bash
systemd+    1971  0.0  0.8  22568 14640 ?        Ss   10:23   0:00 /usr/lib/systemd/systemd-resolved
systemd+    1981  0.0  0.7  21192 12292 ?        Ss   10:23   0:00 /usr/lib/systemd/systemd-networkd
needhi-+    2168  6.9  0.4  18684  7676 ?        S    10:32   0:29 sshd-session: needhi-patel@pts/0
needhi-+    2169  0.0  0.3   8844  5868 pts/0    Ss   10:32   0:00 -bash
fwupd-r+    2276  9.3  1.6 563900 27296 ?        Ssl  10:38   0:02 /usr/bin/fwupdmgr refresh
needhi-+    2296 33.3  0.2   9764  4672 pts/0    R+   10:39   0:00 ps aux
needhi-+    2297  0.0  0.1   6716  2668 pts/0    S+   10:39   0:00 grep --color=auto -v ^root[[:space:]]

task 2.4

needhi-patel@ict:~/ICT_WiSe26-27/Lecture 5$ ps aux | grep -Ev 'kworker|irq'
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.2  0.9  24980 16392 ?        Ss   09:19   0:14 /usr/lib/systemd/systemd --switched-root --system --deserialize=49
root           2  0.0  0.0      0     0 ?        S    09:19   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    09:19   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    09:19   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    09:19   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    09:19   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    09:19   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    09:19   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    09:19   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    09:19   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    09:19   0:00 [kdevtmpfs]
root          24  0.0  0.0      0     0 ?        I    09:19   0:00 [rcu_tasks_kthread]
root          25  0.0  0.0      0     0 ?        I    09:19   0:00 [rcu_tasks_rude_kthread]
root          26  0.0  0.0      0     0 ?        S    09:19   0:00 [kauditd]
root          27  0.0  0.0      0     0 ?        S    09:19   0:00 [khungtaskd]
root          28  0.0  0.0      0     0 ?        S    09:19   0:00 [oom_reaper]
root          32  0.0  0.0      0     0 ?        S    09:19   0:01 [kcompactd0]
root          33  0.0  0.0      0     0 ?        SN   09:19   0:00 [ksmd]
root          34  0.0  0.0      0     0 ?        SN   09:19   0:00 [khugepaged]
root          46  0.0  0.0      0     0 ?        S    09:19   0:00 [watchdogd]
root          48  0.0  0.0      0     0 ?        S    09:19   0:00 [kswapd0]
root          49  0.0  0.0      0     0 ?        S    09:19   0:00 [ecryptfs-kthread]
root          53  0.0  0.0      0     0 ?        S    09:19   0:00 [scsi_eh_0]
root          55  0.0  0.0      0     0 ?        S    09:19   0:00 [scsi_eh_1]
root         299  0.0  0.0      0     0 ?        S    09:19   0:00 [scsi_eh_2]
root         413  0.0  0.0      0     0 ?        S    09:19   0:00 [jbd2/dm-0-8]
root         508  0.0  0.0      0     0 ?        S    09:19   0:00 [psimon]
root         550  0.0  0.5 279492  9644 ?        SLsl 09:19   0:02 /usr/sbin/multipathd -d -s
root         702  0.0  0.0      0     0 ?        S    09:20   0:00 [jbd2/sda2-8]
root         970  0.0  0.1   2888  2008 ?        Ss   09:20   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root         971  0.0  0.1   7060  3352 ?        Ss   09:20   0:00 /usr/sbin/cron -f -P
message+     972  0.0  0.3   9132  5824 ?        Ss   09:20   0:01 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         978  0.0  1.7  46744 30236 ?        Ss   09:20   0:01 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      979  0.0  0.6 382012 10416 ?        Ssl  09:20   0:01 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root         985  0.0  0.5  18464  9708 ?        Ss   09:20   0:00 /usr/lib/systemd/systemd-logind
root         987  0.0  0.9 543452 15304 ?        Ssl  09:20   0:01 /usr/libexec/udisks2/udisksd
root        1009  0.0  0.4  10744  7780 ?        Ss   09:20   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        1040  0.0  0.3   8760  5604 ?        Ss   09:20   0:00 login -- needhi-patel
root        1044  0.0  1.9 126116 32948 ?        Ssl  09:20   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony     1051 0.0  0.6  23876 11324 ?        S    09:20   0:01 /usr/sbin/chronyd -n -F 1
root        1077  0.0  0.8 391608 14024 ?        Ssl  09:20   0:00 /usr/sbin/ModemManager
syslog      1083  0.0  0.3 220548  6264 ?        Ssl  09:20   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1091  0.0  0.1  12096  2432 ?        S    09:20   0:00 /usr/sbin/chronyd -n -F 1
needhi-+    1321  0.0  0.7  22076 12864 ?        Ss   09:20   0:00 /usr/lib/systemd/systemd --user
needhi-+    1325  0.0  0.2  23012  4136 ?        S    09:20   0:00 (sd-pam)
needhi-+    1349  0.0  0.3   8856  5880 tty1     Ss+  09:20   0:00 -bash
root        1736  0.2  2.8 501708 48012 ?        Ssl  09:34   0:12 /usr/libexec/fwupd/fwupd
root        1745  0.2  0.6 318668 11336 ?        Ssl  09:34   0:10 /usr/libexec/upowerd
root        1957  0.0  2.4 1706844 41932 ?       Ssl  10:23   0:00 /snap/snapd/current/usr/lib/snapd/snapd
root        1964  0.0  0.7  37976 12140 ?        Ss   10:23   0:00 /usr/lib/systemd/systemd-udevd
root        1967  0.0  0.7  50288 13412 ?        S<s  10:23   0:00 /usr/lib/systemd/systemd-journald
systemd+    1971  0.0  0.8  22568 14640 ?        Ss   10:23   0:00 /usr/lib/systemd/systemd-resolved
systemd+    1981  0.0  0.7  21192 12292 ?        Ss   10:23   0:00 /usr/lib/systemd/systemd-networkd
root        1982  0.0  0.0      0     0 ?        S    10:23   0:00 [psimon]
root        2069  0.0  0.7  18524 12128 ?        Ss   10:32   0:00 sshd-session: needhi-patel [priv]
needhi-+    2168  5.3  0.4  18684  7676 ?        R    10:32   0:42 sshd-session: needhi-patel@pts/0
needhi-+    2169  0.0  0.3   8844  5868 pts/0    Ss   10:32   0:00 -bash
needhi-+    2328 25.0  0.2   9764  4672 pts/0    R+   10:45   0:00 ps aux


