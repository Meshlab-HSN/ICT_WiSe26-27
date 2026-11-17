<<<<<<< HEAD
=======
task-2 

## part-1 

sethusuni@Ubuntuserver:~/ICT_WiSe26-27/lecture-5$ ps aux | grep 'sethusuni'
root        1065  0.0  0.3   8756  5632 ?        Ss   12:12   0:00 login -- sethusuni
root        1707  0.0  0.7  18424 12160 ?        Ss   12:34   0:00 sshd-session: sethusuni [priv]
sethusu+    1763  0.4  0.4  18564  7724 ?        S    12:34   0:03 sshd-session: sethusuni@pts/0
sethusu+    1905  0.0  0.1   6716  2680 pts/0    S+   12:47   0:00 grep --color=auto sethusuni

## part-2

sethusuni@Ubuntuserver:~/ICT_WiSe26-27/lecture-5$ pgrep -a -u sethusuni
1347 /usr/lib/systemd/systemd --user
1358 (sd-pam)
1377 -bash
1763 sshd-session: sethusuni@pts/0
1764 -bash

## part-3 

sethusuni@Ubuntuserver:~/ICT_WiSe26-27/lecture-5$ ps aux | grep -v '^root[[:space:]]'
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     507  0.0  0.8  22624 14704 ?        Ss   12:12   0:00 /usr/lib/systemd/systemd-resolved
systemd+     766  0.0  0.7  21436 12308 ?        Ss   12:12   0:00 /usr/lib/systemd/systemd-networkd
message+    1001  0.0  0.3   9140  5768 ?        Ss   12:12   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1009  0.0  0.6 382008 10456 ?        Ssl  12:12   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
syslog      1067  0.0  0.3 220548  6140 ?        Ssl  12:12   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1085  0.0  0.3  20556  6376 ?        S    12:12   0:00 /usr/sbin/chronyd -n -F 1
_chrony     1111  0.0  0.1  12096  2424 ?        S    12:12   0:00 /usr/sbin/chronyd -n -F 1
sethusu+    1347  0.0  0.7  22020 13096 ?        Ss   12:14   0:00 /usr/lib/systemd/systemd --user
sethusu+    1358  0.0  0.2  23016  4128 ?        S    12:14   0:00 (sd-pam)
sethusu+    1377  0.0  0.3   8856  5940 tty1     Ss+  12:14   0:00 -bash
sethusu+    1763  0.5  0.4  18564  7724 ?        S    12:34   0:07 sshd-session: sethusuni@pts/0
sethusu+    1764  0.0  0.3   8844  5856 pts/0    Ss   12:34   0:00 -bash
sethusu+    2009  100  0.2   9764  4680 pts/0    R+   12:56   0:00 ps aux
sethusu+    2010  0.0  0.1   6716  2664 pts/0    S+   12:56   0:00 grep --color=auto -v ^root[[:space:]]

## part-4

sethusuni@Ubuntuserver:~/ICT_WiSe26-27/lecture-5$ ps aux | grep -Ev 'kworker|irq'
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.2  0.9  24840 16220 ?        Ss   12:12   0:07 /usr/lib/systemd/systemd --switched-root --system --deserialize=54
root           2  0.0  0.0      0     0 ?        S    12:12   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    12:12   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    12:12   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    12:12   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    12:12   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    12:12   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    12:12   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    12:12   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    12:12   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    12:12   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    12:12   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    12:12   0:00 [migration/1]
root          28  0.0  0.0      0     0 ?        S    12:12   0:00 [cpuhp/2]
root          29  0.0  0.0      0     0 ?        S    12:12   0:00 [idle_inject/2]
root          30  0.0  0.0      0     0 ?        S    12:12   0:00 [migration/2]
root          34  0.0  0.0      0     0 ?        S    12:12   0:00 [cpuhp/3]
root          35  0.0  0.0      0     0 ?        S    12:12   0:00 [idle_inject/3]
root          36  0.0  0.0      0     0 ?        S    12:12   0:00 [migration/3]
root          40  0.0  0.0      0     0 ?        S    12:12   0:00 [kdevtmpfs]
root          42  0.0  0.0      0     0 ?        I    12:12   0:00 [rcu_tasks_kthread]
root          43  0.0  0.0      0     0 ?        I    12:12   0:00 [rcu_tasks_rude_kthread]
root          44  0.0  0.0      0     0 ?        S    12:12   0:00 [kauditd]
root          45  0.0  0.0      0     0 ?        S    12:12   0:00 [khungtaskd]
root          46  0.0  0.0      0     0 ?        S    12:12   0:00 [oom_reaper]
root          51  0.0  0.0      0     0 ?        S    12:12   0:00 [kcompactd0]
root          52  0.0  0.0      0     0 ?        SN   12:12   0:00 [ksmd]
root          53  0.0  0.0      0     0 ?        SN   12:12   0:00 [khugepaged]
root          67  0.0  0.0      0     0 ?        S    12:12   0:00 [watchdogd]
root          69  0.0  0.0      0     0 ?        S    12:12   0:00 [kswapd0]
root          70  0.0  0.0      0     0 ?        S    12:12   0:00 [ecryptfs-kthread]
root          73  0.0  0.0      0     0 ?        S    12:12   0:00 [scsi_eh_0]
root          75  0.0  0.0      0     0 ?        S    12:12   0:00 [scsi_eh_1]
root         304  0.0  0.0      0     0 ?        S    12:12   0:00 [scsi_eh_2]
root         342  0.0  0.0      0     0 ?        S    12:12   0:00 [jbd2/sda2-8]
root         442  0.0  0.0      0     0 ?        S    12:12   0:00 [psimon]
root         449  0.0  1.0  50652 17312 ?        S<s  12:12   0:00 /usr/lib/systemd/systemd-journald
root         490  0.0  0.5 279492  9644 ?        SLsl 12:12   0:01 /usr/sbin/multipathd -d -s
systemd+     507  0.0  0.8  22624 14704 ?        Ss   12:12   0:00 /usr/lib/systemd/systemd-resolved
root         511  0.0  0.9  41276 15456 ?        Ss   12:12   0:01 /usr/lib/systemd/systemd-udevd
root         690  0.0  0.0      0     0 ?        S    12:12   0:00 [psimon]
systemd+     766  0.0  0.7  21436 12308 ?        Ss   12:12   0:00 /usr/lib/systemd/systemd-networkd
root         999  0.0  0.1   2888  2012 ?        Ss   12:12   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root        1000  0.0  0.2   7060  3400 ?        Ss   12:12   0:00 /usr/sbin/cron -f -P
message+    1001  0.0  0.3   9140  5768 ?        Ss   12:12   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1008  0.0  1.7  46744 30232 ?        Ss   12:12   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1009  0.0  0.6 382008 10456 ?        Ssl  12:12   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1013  0.1  2.5 1928844 43056 ?       Ssl  12:12   0:03 /snap/snapd/current/usr/lib/snapd/snapd
root        1017  0.0  0.5  18680  9704 ?        Ss   12:12   0:00 /usr/lib/systemd/systemd-logind
root        1020  0.0  0.9 543332 15224 ?        Ssl  12:12   0:00 /usr/libexec/udisks2/udisksd
root        1036  0.0  0.4  10744  7772 ?        Ss   12:12   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        1065  0.0  0.3   8756  5632 ?        Ss   12:12   0:00 login -- sethusuni
syslog      1067  0.0  0.3 220548  6140 ?        Ssl  12:12   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1085  0.0  0.3  20556  6376 ?        S    12:12   0:00 /usr/sbin/chronyd -n -F 1
root        1109  0.0  1.9 126112 33052 ?        Ssl  12:12   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony     1111  0.0  0.1  12096  2424 ?        S    12:12   0:00 /usr/sbin/chronyd -n -F 1
root        1119  0.0  0.8 391608 13940 ?        Ssl  12:12   0:00 /usr/sbin/ModemManager
sethusu+    1347  0.0  0.7  22020 13096 ?        Ss   12:14   0:00 /usr/lib/systemd/systemd --user
sethusu+    1358  0.0  0.2  23016  4128 ?        S    12:14   0:00 (sd-pam)
sethusu+    1377  0.0  0.3   8856  5940 tty1     Ss+  12:14   0:00 -bash
root        1473  0.1  2.8 501600 48100 ?        Ssl  12:17   0:03 /usr/libexec/fwupd/fwupd
root        1482  0.1  0.6 318836 11748 ?        Ssl  12:17   0:02 /usr/libexec/upowerd
root        1707  0.0  0.7  18424 12160 ?        Ss   12:34   0:00 sshd-session: sethusuni [priv]
sethusu+    1763  0.5  0.4  18564  7724 ?        S    12:34   0:07 sshd-session: sethusuni@pts/0
sethusu+    1764  0.0  0.3   8844  5856 pts/0    Ss   12:34   0:00 -bash
sethusu+    2030  200  0.2   9764  4684 pts/0    R+   12:58   0:00 ps aux

##allcode
>>>>>>> 67209f9 (completed task and added output of all the task in md file)
ps aux
ps aux > processes.log
ps aux | tail -n +2 | wc -l
ls /proc/*/fd > fd_out.log 2> fd_err.log
ps aux | grep -E "^sethusuni[[:space:]]"
ps -eo user,pid,comm | grep -v "^root[[:space:]]"
ps aux | grep -Ev 'kworker|irq'

