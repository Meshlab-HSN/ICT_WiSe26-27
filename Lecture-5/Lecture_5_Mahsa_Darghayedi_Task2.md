mah@mah:~$ ps aux > processes.log
mah@mah:~$ cat processes.log | tail -n +2 | wc -l | xargs -I {} sh -c 'echo "{} processes are running" | tee -a processes.log'
114 processes are running
mah@mah:~$ ls /proc/*/fd > fd_out.log 2> fd_err.log
mah@mah:~$ ps aux | grep 'mah'
root        1100  0.0  0.1  10148  4156 ?        Ss   21:59   0:00 login -- mah
mah         1337  0.0  0.3  22376 11968 ?        Ss   21:59   0:00 /usr/lib/systemd/systemd --user
mah         1343  0.0  0.1  24712  3900 ?        S    21:59   0:00 (sd-pam)
mah         1365  0.0  0.1   9184  6004 tty1     Ss+  21:59   0:00 -bash
root        1411  0.0  0.3  20256 10480 ?        Ss   21:59   0:00 sshd-session: mah [priv]
mah         1457  0.1  0.2  22304  9284 ?        S    21:59   0:01 sshd-session: mah@pts/0
mah         1458  0.0  0.1  10264  6852 pts/0    Ss   21:59   0:00 -bash
mah         1680  0.0  0.1  10460  4716 pts/0    R+   22:12   0:00 ps aux
mah         1681  0.0  0.0   8148  1892 pts/0    S+   22:12   0:00 grep --color=auto mah
mah@mah:~$ ps aux | grep '^mah'
mah         1337  0.0  0.3  22376 11968 ?        Ss   21:59   0:00 /usr/lib/systemd/systemd --user
mah         1343  0.0  0.1  24712  3900 ?        S    21:59   0:00 (sd-pam)
mah         1365  0.0  0.1   9184  6004 tty1     Ss+  21:59   0:00 -bash
mah         1457  0.1  0.2  22304  9284 ?        S    21:59   0:01 sshd-session: mah@pts/0
mah         1458  0.0  0.1  10264  6852 pts/0    Ss   21:59   0:00 -bash
mah         1691  0.0  0.1  10340  3572 pts/0    R+   22:12   0:00 ps aux
mah         1692  0.0  0.0   7096  1888 pts/0    S+   22:12   0:00 grep --color=auto ^mah
mah@mah:~$ ps aux | grep -v '^root'
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     563  0.0  0.3  22308 13408 ?        Ss   21:59   0:00 /usr/lib/systemd/systemd-resolved
systemd+     775  0.0  0.3  24480 12208 ?        Ss   21:59   0:00 /usr/lib/systemd/systemd-networkd
message+     951  0.0  0.1   9392  6200 ?        Ss   21:59   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
iperf3       957  0.0  0.1  10216  3492 ?        Ss   21:59   0:00 /usr/bin/iperf3 --server --interval 0
polkitd      960  0.0  0.4 308200 15516 ?        Ssl  21:59   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony     1063  0.0  0.3  25236 11424 ?        S    21:59   0:00 /usr/sbin/chronyd -n -F 1
_chrony     1085  0.0  0.0  12884  2172 ?        S    21:59   0:00 /usr/sbin/chronyd -n -F 1
mah         1337  0.0  0.3  22376 11968 ?        Ss   21:59   0:00 /usr/lib/systemd/systemd --user
mah         1343  0.0  0.1  24712  3900 ?        S    21:59   0:00 (sd-pam)
mah         1365  0.0  0.1   9184  6004 tty1     Ss+  21:59   0:00 -bash
mah         1457  0.1  0.2  22304  9284 ?        S    21:59   0:01 sshd-session: mah@pts/0
mah         1458  0.0  0.1  10264  6852 pts/0    Ss   21:59   0:00 -bash
mah         1702  0.0  0.1  10152  3572 pts/0    R+   22:12   0:00 ps aux
mah         1703  0.0  0.0   7596  1892 pts/0    S+   22:12   0:00 grep --color=auto -v ^root
mah@mah:~$ ps aux | grep -v -E "kworker|irq"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.4  25748 16172 ?        Ss   21:59   0:00 /usr/lib/systemd/systemd --switched-root --system --deserialize=54
root           2  0.0  0.0      0     0 ?        S    21:59   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    21:59   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        R    21:59   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    21:59   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    21:59   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    21:59   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    21:59   0:00 [idle_inject/0]
root          20  0.0  0.0      0     0 ?        S    21:59   0:00 [cpuhp/0]
root          21  0.0  0.0      0     0 ?        S    21:59   0:00 [cpuhp/1]
root          22  0.0  0.0      0     0 ?        S    21:59   0:00 [idle_inject/1]
root          23  0.0  0.0      0     0 ?        S    21:59   0:00 [migration/1]
root          27  0.0  0.0      0     0 ?        S    21:59   0:00 [kdevtmpfs]
root          29  0.0  0.0      0     0 ?        I    21:59   0:00 [rcu_tasks_kthread]
root          30  0.0  0.0      0     0 ?        I    21:59   0:00 [rcu_tasks_rude_kthread]
root          31  0.0  0.0      0     0 ?        S    21:59   0:00 [kauditd]
root          32  0.0  0.0      0     0 ?        S    21:59   0:00 [khungtaskd]
root          33  0.0  0.0      0     0 ?        S    21:59   0:00 [oom_reaper]
root          36  0.0  0.0      0     0 ?        S    21:59   0:00 [kcompactd0]
root          37  0.0  0.0      0     0 ?        SN   21:59   0:00 [ksmd]
root          38  0.0  0.0      0     0 ?        SN   21:59   0:00 [khugepaged]
root          43  0.0  0.0      0     0 ?        S<   21:59   0:00 [pr/ttyAMA-1]
root          51  0.0  0.0      0     0 ?        S    21:59   0:00 [watchdogd]
root          53  0.0  0.0      0     0 ?        S    21:59   0:00 [kswapd0]
root          55  0.0  0.0      0     0 ?        S    21:59   0:00 [ecryptfs-kthread]
root          68  0.0  0.0      0     0 ?        S    21:59   0:00 [hwrng]
root         320  0.0  0.0      0     0 ?        S    21:59   0:00 [card0-crtc0]
root         409  0.0  0.0      0     0 ?        S    21:59   0:00 [scsi_eh_0]
root         411  0.0  0.0      0     0 ?        S    21:59   0:00 [usb-storage]
root         420  0.0  0.0      0     0 ?        S    21:59   0:00 [jbd2/dm-0-8]
root         514  0.0  0.0      0     0 ?        S    21:59   0:00 [psimon]
root         520  0.0  0.4  51676 16192 ?        S<s  21:59   0:00 /usr/lib/systemd/systemd-journald
root         553  0.0  0.5 281404 17508 ?        SLsl 21:59   0:00 /usr/sbin/multipathd -d -s
systemd+     563  0.0  0.3  22308 13408 ?        Ss   21:59   0:00 /usr/lib/systemd/systemd-resolved
root         573  0.0  0.4  41672 13872 ?        Ss   21:59   0:00 /usr/lib/systemd/systemd-udevd
root         578  0.0  0.0      0     0 ?        S    21:59   0:00 [psimon]
root         715  0.0  0.0      0     0 ?        S    21:59   0:00 [jbd2/vda2-8]
systemd+     775  0.0  0.3  24480 12208 ?        Ss   21:59   0:00 /usr/lib/systemd/systemd-networkd
root         948  0.0  0.0   2228  1444 ?        Ss   21:59   0:00 /sbin/klogd -n
root         949  0.0  0.0   2356  1644 ?        Ss   21:59   0:00 /sbin/syslogd -n -C128
root         950  0.0  0.0   3500  1628 ?        Ss   21:59   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+     951  0.0  0.1   9392  6200 ?        Ss   21:59   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
iperf3       957  0.0  0.1  10216  3492 ?        Ss   21:59   0:00 /usr/bin/iperf3 --server --interval 0
root         959  0.0  0.8  49312 30216 ?        Ss   21:59   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      960  0.0  0.4 308200 15516 ?        Ssl  21:59   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root         965  0.0  0.2  19920 10384 ?        Ss   21:59   0:00 /usr/lib/systemd/systemd-logind
root         970  0.0  0.7 548516 27600 ?        Ssl  21:59   0:00 /usr/libexec/udisks2/udisksd
root        1038  0.0  0.0   7792  2708 ?        Ss   21:59   0:00 /usr/sbin/cron -f -P
root        1059  0.0  0.9 128032 34040 ?        Ssl  21:59   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony     1063  0.0  0.3  25236 11424 ?        S    21:59   0:00 /usr/sbin/chronyd -n -F 1
root        1082  0.0  0.0   7816  2320 ?        Ss+  21:59   0:00 /usr/sbin/agetty --noreset --noclear --issue-file=/etc/issue:/etc/issue.d:/run/issue.d:/usr/lib/issue.d --keep-baud 115200,57600,38400,9600 - vt220
_chrony     1085  0.0  0.0  12884  2172 ?        S    21:59   0:00 /usr/sbin/chronyd -n -F 1
root        1097  0.0  0.6 399628 24104 ?        Ssl  21:59   0:00 /usr/sbin/ModemManager
root        1100  0.0  0.1  10148  4156 ?        Ss   21:59   0:00 login -- mah
mah         1337  0.0  0.3  22376 11968 ?        Ss   21:59   0:00 /usr/lib/systemd/systemd --user
mah         1343  0.0  0.1  24712  3900 ?        S    21:59   0:00 (sd-pam)
mah         1365  0.0  0.1   9184  6004 tty1     Ss+  21:59   0:00 -bash
root        1408  0.0  0.2  10636  7236 ?        Ss   21:59   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        1411  0.0  0.3  20256 10480 ?        Ss   21:59   0:00 sshd-session: mah [priv]
mah         1457  0.1  0.2  22304  9284 ?        S    21:59   0:01 sshd-session: mah@pts/0
mah         1458  0.0  0.1  10264  6852 pts/0    Ss   21:59   0:00 -bash
mah         1713  0.0  0.1  10052  3576 pts/0    R+   22:13   0:00 ps aux

