
# Task 2 - Search and Filter

###Command

oishi-saha@ict:~$ ps aux | grep 'oishi-s+'

##Output

oishi-s+    1381  0.0  0.7  22256 13060 ?        Ss   10:48   0:00 /usr/lib/systemd/systemd --user
oishi-s+    1386  0.0  0.2  23016  4088 ?        S    10:48   0:00 (sd-pam)
oishi-s+    1411  0.0  0.3   8856  5852 tty1     Ss+  10:48   0:00 -bash
oishi-s+    1547  0.0  0.4  18560  7688 ?        S    10:59   0:00 sshd-session: oishi-saha@pts/0
oishi-s+    1548  0.1  0.3   8844  5872 pts/0    Ss   10:59   0:00 -bash
oishi-s+    1586  150  0.2   9764  4704 pts/0    R+   11:01   0:00 ps aux
oishi-s+    1587 16.6  0.1   6716  2676 pts/0    S+   11:01   0:00 grep --color=auto oishi-s+

###Command

oishi-saha@ict:~$ ps aux | grep '^oishi-s+[[:space:]]'

##Output

oishi-s+    1381  0.0  0.7  22256 13060 ?        Ss   10:48   0:00 /usr/lib/systemd/systemd --user
oishi-s+    1386  0.0  0.2  23016  4088 ?        S    10:48   0:00 (sd-pam)
oishi-s+    1411  0.0  0.3   8856  5852 tty1     Ss+  10:48   0:00 -bash
oishi-s+    1547  0.1  0.4  18560  7688 ?        S    10:59   0:00 sshd-session: oishi-saha@pts/0
oishi-s+    1548  0.0  0.3   8844  5872 pts/0    Ss   10:59   0:00 -bash
oishi-s+    1597 66.6  0.2   9764  4680 pts/0    R+   11:03   0:00 ps aux
oishi-s+    1598  0.0  0.1   6848  2684 pts/0    S+   11:03   0:00 grep --color=auto ^oishi-s+[[:space:]]

###Command

oishi-saha@ict:~$ ps aux | grep -v '^root[[:space:]]'

##Output

USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     564  0.0  0.8  22632 14684 ?        Ss   10:48   0:00 /usr/lib/systemd/systemd-resolved
systemd+     821  0.0  0.7  21436 12236 ?        Ss   10:48   0:00 /usr/lib/systemd/systemd-networkd
message+     976  0.0  0.3   9012  5600 ?        Ss   10:48   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      984  0.0  0.4 306448  8404 ?        Ssl  10:48   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony     1054  0.0  0.6  23864 11260 ?        S    10:48   0:00 /usr/sbin/chronyd -n -F 1
syslog      1068  0.0  0.3 220548  6116 ?        Ssl  10:48   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1081  0.0  0.1  12096  2460 ?        S    10:48   0:00 /usr/sbin/chronyd -n -F 1
oishi-s+    1381  0.0  0.7  22256 13060 ?        Ss   10:48   0:00 /usr/lib/systemd/systemd --user
oishi-s+    1386  0.0  0.2  23016  4088 ?        S    10:48   0:00 (sd-pam)
oishi-s+    1411  0.0  0.3   8856  5852 tty1     Ss+  10:48   0:00 -bash
oishi-s+    1547  0.1  0.4  18560  7688 ?        S    10:59   0:00 sshd-session: oishi-saha@pts/0
oishi-s+    1548  0.0  0.3   8844  5872 pts/0    Ss   10:59   0:00 -bash
oishi-s+    1610 66.6  0.2   9764  4672 pts/0    R+   11:04   0:00 ps aux
oishi-s+    1611  0.0  0.1   6716  2660 pts/0    S+   11:04   0:00 grep --color=auto -v ^root[[:space:]]

###Command

oishi-saha@ict:~$ ps aux | grep -Ev 'kworker|irq'

##Output

USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.3  0.9  24836 16116 ?        Ss   10:48   0:03 /usr/lib/systemd/systemd --switched-root --system --deserialize=49
root           2  0.0  0.0      0     0 ?        S    10:48   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    10:48   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    10:48   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    10:48   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    10:48   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    10:48   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    10:48   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    10:48   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    10:48   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    10:48   0:00 [kdevtmpfs]
root          24  0.0  0.0      0     0 ?        I    10:48   0:00 [rcu_tasks_kthread]
root          25  0.0  0.0      0     0 ?        I    10:48   0:00 [rcu_tasks_rude_kthread]
root          26  0.0  0.0      0     0 ?        S    10:48   0:00 [kauditd]
root          27  0.0  0.0      0     0 ?        S    10:48   0:00 [khungtaskd]
root          28  0.0  0.0      0     0 ?        S    10:48   0:00 [oom_reaper]
root          32  0.0  0.0      0     0 ?        S    10:48   0:00 [kcompactd0]
root          33  0.0  0.0      0     0 ?        SN   10:48   0:00 [ksmd]
root          34  0.0  0.0      0     0 ?        SN   10:48   0:00 [khugepaged]
root          46  0.0  0.0      0     0 ?        S    10:48   0:00 [watchdogd]
root          48  0.0  0.0      0     0 ?        S    10:48   0:00 [kswapd0]
root          49  0.0  0.0      0     0 ?        S    10:48   0:00 [ecryptfs-kthread]
root          52  0.0  0.0      0     0 ?        S    10:48   0:00 [scsi_eh_0]
root          54  0.0  0.0      0     0 ?        S    10:48   0:00 [scsi_eh_1]
root         297  0.0  0.0      0     0 ?        S    10:48   0:00 [scsi_eh_2]
root         412  0.0  0.0      0     0 ?        S    10:48   0:00 [jbd2/dm-0-8]
root         507  0.0  0.0      0     0 ?        S    10:48   0:00 [psimon]
root         513  0.0  1.0  50400 17096 ?        S<s  10:48   0:00 /usr/lib/systemd/systemd-journald
root         548  0.0  0.5 279492  9644 ?        SLsl 10:48   0:00 /usr/sbin/multipathd -d -s
systemd+     564  0.0  0.8  22632 14684 ?        Ss   10:48   0:00 /usr/lib/systemd/systemd-resolved
root         568  0.0  0.8  40084 14172 ?        Ss   10:48   0:00 /usr/lib/systemd/systemd-udevd
root         585  0.0  0.0      0     0 ?        S    10:48   0:00 [psimon]
root         698  0.0  0.0      0     0 ?        S    10:48   0:00 [jbd2/sda2-8]
systemd+     821  0.0  0.7  21436 12236 ?        Ss   10:48   0:00 /usr/lib/systemd/systemd-networkd
root         974  0.0  0.1   2888  2016 ?        Ss   10:48   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root         975  0.0  0.2   7060  3416 ?        Ss   10:48   0:00 /usr/sbin/cron -f -P
message+     976  0.0  0.3   9012  5600 ?        Ss   10:48   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         983  0.0  1.7  46744 30236 ?        Ss   10:48   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      984  0.0  0.4 306448  8404 ?        Ssl  10:48   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root         987  0.1  2.5 1781252 42924 ?       Ssl  10:48   0:01 /snap/snapd/current/usr/lib/snapd/snapd
root         990  0.0  0.5  18568  9612 ?        Ss   10:48   0:00 /usr/lib/systemd/systemd-logind
root         993  0.0  0.9 543444 15188 ?        Ssl  10:48   0:00 /usr/libexec/udisks2/udisksd
root        1024  0.0  0.4  10744  7780 ?        Ss   10:48   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        1048  0.0  0.3   8756  5572 ?        Ss   10:48   0:00 login -- oishi-saha
_chrony     1054  0.0  0.6  23864 11260 ?        S    10:48   0:00 /usr/sbin/chronyd -n -F 1
root        1063  0.0  1.9 126116 32960 ?        Ssl  10:48   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
syslog      1068  0.0  0.3 220548  6116 ?        Ssl  10:48   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1081  0.0  0.1  12096  2460 ?        S    10:48   0:00 /usr/sbin/chronyd -n -F 1
root        1100  0.0  0.8 391608 14308 ?        Ssl  10:48   0:00 /usr/sbin/ModemManager
oishi-s+    1381  0.0  0.7  22256 13060 ?        Ss   10:48   0:00 /usr/lib/systemd/systemd --user
oishi-s+    1386  0.0  0.2  23016  4088 ?        S    10:48   0:00 (sd-pam)
oishi-s+    1411  0.0  0.3   8856  5852 tty1     Ss+  10:48   0:00 -bash
root        1491  0.1  0.7  18264 12112 ?        Ss   10:59   0:00 sshd-session: oishi-saha [priv]
oishi-s+    1547  0.2  0.4  18560  7688 ?        S    10:59   0:00 sshd-session: oishi-saha@pts/0
oishi-s+    1548  0.0  0.3   8844  5872 pts/0    Ss   10:59   0:00 -bash
oishi-s+    1621 66.6  0.2   9764  4676 pts/0    R+   11:04   0:00 ps aux
