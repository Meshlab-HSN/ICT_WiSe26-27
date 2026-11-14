# Lecture 5 - Task 2: Search and Filter

## Exercise 1: Find My Processes

Command:
ps aux | grep '^maryamq+'

Output:
maryamq+    1370  0.0  0.7  22112 13160 ?        Ss   18:15   0:00 /usr/lib/systemd/systemd --user
maryamq+    1387  0.0  0.2  23012  4228 ?        S    18:15   0:00 (sd-pam)
maryamq+    1405  0.0  0.3   8856  5860 tty1     Ss+  18:15   0:00 -bash
maryamq+    3052  0.1  0.4  18552  7800 ?        S    20:38   0:07 sshd-session: maryamqasim@pts/0
maryamq+    3053  0.0  0.3   8844  6000 pts/0    Ss   20:38   0:01 -bash
maryamq+    3924  0.0  0.2   9764  4736 pts/0    R+   22:18   0:00 ps aux
maryamq+    3925  0.0  0.1   6716  2644 pts/0    S+   22:18   0:00 grep --color=auto ^maryamq+

## Exercise 2: Use Regular Expressions

Command:
ps aux | grep -E '^maryamq[+][[:space:]]'

Output:
maryamq+    1370  0.0  0.7  22112 13160 ?        Ss   18:15   0:00 /usr/lib/systemd/systemd --user
maryamq+    1387  0.0  0.2  23012  4228 ?        S    18:15   0:00 (sd-pam)
maryamq+    1405  0.0  0.3   8856  5860 tty1     Ss+  18:15   0:00 -bash
maryamq+    3052  0.1  0.4  18552  7800 ?        S    20:38   0:07 sshd-session: maryamqasim@pts/0
maryamq+    3053  0.0  0.3   8844  6000 pts/0    Ss   20:38   0:01 -bash
maryamq+    3936  200  0.2   9764  4688 pts/0    R+   22:18   0:00 ps aux
maryamq+    3937  0.0  0.1   6848  2708 pts/0    S+   22:18   0:00 grep --color=auto -E ^maryamq[+][[:space:]]

## Exercise 3: Exclude Root Processes

Command:
ps aux | grep -v '^root[[:space:]]'

Output:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     590  0.0  0.8  22748 14724 ?        Ss   18:13   0:00 /usr/lib/systemd/systemd-resolved
systemd+     815  0.0  0.7  21432 12296 ?        Ss   18:13   0:00 /usr/lib/systemd/systemd-networkd
message+    1004  0.0  0.3   9160  5724 ?        Ss   18:13   0:01 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1014  0.0  0.4 306448  8408 ?        Ssl  18:13   0:01 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
syslog      1057  0.0  0.3 220548  6284 ?        Ssl  18:13   0:00 /usr/sbin/rsyslogd
_chrony     1079  0.0  0.6  24076 11644 ?        S    18:13   0:00 /usr/sbin/chronyd
_chrony     1136  0.0  0.1  12096  2532 ?        S    18:13   0:00 /usr/sbin/chronyd
maryamq+    1370  0.0  0.7  22112 13160 ?        Ss   18:15   0:00 /usr/lib/systemd/systemd --user
maryamq+    1387  0.0  0.2  23012  4228 ?        S    18:15   0:00 (sd-pam)
maryamq+    1405  0.0  0.3   8856  5860 tty1     Ss+  18:15   0:00 -bash
maryamq+    3052  0.1  0.4  18552  7800 ?        S    20:38   0:07 sshd-session: maryamqasim@pts/0
maryamq+    3053  0.0  0.3   8844  6000 pts/0    Ss   20:38   0:01 -bash
maryamq+    3947  300  0.2   9764  4680 pts/0    R+   22:19   0:00 ps aux
maryamq+    3948  0.0  0.1   6716  2680 pts/0    S+   22:19   0:00 grep --color=auto -v ^root[[:space:]]

## Exercise 4: Exclude kworker and irq

Command:
ps aux | grep -Ev '[k]worker|[i]rq'

Output:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.9  24816 16308 ?        Ss   18:12   0:09 /usr/lib/systemd/systemd --switched-root --system --deserialize=51
root           2  0.0  0.0      0     0 ?        S    18:12   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    18:12   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    18:12   0:01 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    18:12   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    18:12   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    18:12   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    18:12   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    18:12   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    18:12   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    18:12   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        I    18:12   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    18:12   0:00 [migration/1]
root          30  0.0  0.0      0     0 ?        S    18:12   0:00 [kdevtmpfs]
root          32  0.0  0.0      0     0 ?        I    18:12   0:00 [rcu_tasks_kthread]
root          33  0.0  0.0      0     0 ?        I    18:12   0:00 [rcu_tasks_rude_kthread]
root          34  0.0  0.0      0     0 ?        S    18:12   0:00 [kauditd]
root          35  0.0  0.0      0     0 ?        S    18:12   0:00 [khungtaskd]
root          36  0.0  0.0      0     0 ?        S    18:12   0:00 [oom_reaper]
root          40  0.0  0.0      0     0 ?        S    18:12   0:04 [kcompactd0]
root          41  0.0  0.0      0     0 ?        SN   18:12   0:00 [ksmd]
root          42  0.0  0.0      0     0 ?        SN   18:12   0:00 [khugepaged]
root          55  0.0  0.0      0     0 ?        S    18:12   0:00 [watchdogd]
root          59  0.0  0.0      0     0 ?        S    18:12   0:00 [kswapd0]
root          60  0.0  0.0      0     0 ?        S    18:12   0:00 [ecryptfs-kthread]
root          64  0.0  0.0      0     0 ?        S    18:12   0:00 [scsi_eh_0]
root          66  0.0  0.0      0     0 ?        S    18:12   0:00 [scsi_eh_1]
root         321  0.0  0.0      0     0 ?        S    18:12   0:00 [scsi_eh_2]
root         432  0.0  0.0      0     0 ?        S    18:12   0:00 [jbd2/dm-0-8]
root         527  0.0  0.0      0     0 ?        S    18:13   0:00 [psimon]
root         533  0.0  1.0  50536 17232 ?        S<s  18:13   0:01 /usr/lib/systemd/systemd-journald
root         565  0.0  0.5 279492  9644 ?        SLsl 18:13   0:02 /usr/sbin/multipathd -d -s
systemd+     590  0.0  0.8  22748 14724 ?        Ss   18:13   0:00 /usr/lib/systemd/systemd-resolved
root         598  0.0  0.8  40088 14252 ?        Ss   18:13   0:01 /usr/lib/systemd/systemd-udevd
root         603  0.0  0.0      0     0 ?        S    18:13   0:00 [psimon]
root         715  0.0  0.0      0     0 ?        S    18:13   0:00 [jbd2/sda2-8]
systemd+     815  0.0  0.7  21432 12296 ?        Ss   18:13   0:00 /usr/lib/systemd/systemd-networkd
root        1003  0.0  0.1   2888  2012 ?        Ss   18:13   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+    1004  0.0  0.3   9160  5724 ?        Ss   18:13   0:01 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1013  0.0  1.8  46744 30300 ?        Ss   18:13   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1014  0.0  0.4 306448  8408 ?        Ssl  18:13   0:01 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1017  0.0  2.5 1886136 42320 ?       Ssl  18:13   0:04 /usr/lib/snapd/snapd
root        1021  0.0  0.5  18564  9704 ?        Ss   18:13   0:00 /usr/lib/systemd/systemd-logind
root        1022  0.0  0.9 543444 15332 ?        Ssl  18:13   0:00 /usr/libexec/udisks2/udisksd
syslog      1057  0.0  0.3 220548  6284 ?        Ssl  18:13   0:00 /usr/sbin/rsyslogd
_chrony     1079  0.0  0.6  24076 11644 ?        S    18:13   0:00 /usr/sbin/chronyd
root        1081  0.0  0.4  10744  7844 ?        Ss   18:13   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        1085  0.0  1.9 126116 32984 ?        Ssl  18:13   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony     1136  0.0  0.1  12096  2532 ?        S    18:13   0:00 /usr/sbin/chronyd
root        1194  0.0  0.8 391620 14180 ?        Ssl  18:13   0:00 /usr/sbin/ModemManager
root        1242  0.0  0.1   7060  3348 ?        Ss   18:13   0:00 /usr/sbin/cron -f -P
root        1258  0.0  0.3   8768  5544 ?        Ss   18:14   0:00 login -- maryamqasim
maryamq+    1370  0.0  0.7  22112 13160 ?        Ss   18:15   0:00 /usr/lib/systemd/systemd --user
maryamq+    1387  0.0  0.2  23012  4228 ?        S    18:15   0:00 (sd-pam)
maryamq+    1405  0.0  0.3   8856  5860 tty1     Ss+  18:15   0:00 -bash
root        1679  0.0  2.8 502296 48756 ?        Ssl  18:37   0:09 /usr/libexec/fwupd/fwupd
root        1688  0.0  0.6 318820 11540 ?        Ssl  18:37   0:11 /usr/libexec/upowerd
root        2954  0.0  0.7  18420 12256 ?        Ss   20:38   0:00 sshd-session: maryamqasim [priv]
maryamq+    3052  0.1  0.4  18552  7800 ?        S    20:38   0:07 sshd-session: maryamqasim@pts/0
maryamq+    3053  0.0  0.3   8844  6000 pts/0    Ss   20:38   0:01 -bash
maryamq+    3958  300  0.2   9764  4684 pts/0    R+   22:19   0:00 ps aux
maryamq+    3959  0.0  0.1   6716  2680 pts/0    S+   22:19   0:00 grep --color=auto -Ev [k]worker|[i]rq
