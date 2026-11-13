# Lecture 5 - Task 2: Search and Filter

## Task 2.1 - Filter processes using grep
```bash
ps aux | grep yash
```
```text
root        1103  0.0  0.1   8756  5552 ?        Ss   09:30   0:00 login -- yash
yash        1366  0.0  0.2  22008 13060 ?        Ss   09:30   0:00 /usr/lib/systemd/systemd --user
yash        1373  0.0  0.0  23016  4100 ?        S    09:30   0:00 (sd-pam)
yash        1393  0.0  0.1   8856  5940 tty1     Ss+  09:30   0:00 -bash
root        1420  0.0  0.2  18520 12104 ?        Ss   09:30   0:00 sshd-session: yash [priv]
yash        1472  0.1  0.1  18680  7692 ?        S    09:30   0:00 sshd-session: yash@pts/0
yash        1473  0.0  0.1   8844  5868 pts/0    Ss   09:30   0:00 -bash
yash        1789  0.0  0.0   9764  4684 pts/0    R+   09:38   0:00 ps aux
yash        1790  0.0  0.0   6716  2668 pts/0    S+   09:38   0:00 grep --color=auto yash
```

## Task 2.2 - Filter processes using regular expression
```bash
ps aux | grep -E '^yash[[:space:]]'
```
```text
yash        1366  0.0  0.2  22008 13060 ?        Ss   09:30   0:00 /usr/lib/systemd/systemd --user
yash        1373  0.0  0.0  23016  4100 ?        S    09:30   0:00 (sd-pam)
yash        1393  0.0  0.1   8856  5940 tty1     Ss+  09:30   0:00 -bash
yash        1472  0.1  0.1  18680  7692 ?        S    09:30   0:00 sshd-session: yash@pts/0
yash        1473  0.0  0.1   8844  5868 pts/0    Ss   09:30   0:00 -bash
yash        1791  0.0  0.0   9764  4676 pts/0    R+   09:38   0:00 ps aux
yash        1792  0.0  0.0   6716  2700 pts/0    S+   09:38   0:00 grep --color=auto -E ^yash[[:space:]]
```

## Task 2.3 - Show all processes except root
```bash
ps aux | grep -v '^root[[:space:]]'
```
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     530  0.0  0.2  22624 14712 ?        Ss   09:30   0:00 /usr/lib/systemd/systemd-resolved
systemd+     857  0.0  0.2  21432 12252 ?        Ss   09:30   0:00 /usr/lib/systemd/systemd-networkd
message+    1027  0.0  0.1   9008  5560 ?        Ss   09:30   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1038  0.0  0.1 306448  8460 ?        Ssl  09:30   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony     1105  0.0  0.1  20556  6384 ?        S    09:30   0:00 /usr/sbin/chronyd -n -F 1
syslog      1112  0.0  0.1 220548  6256 ?        Ssl  09:30   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1115  0.0  0.0  12096  2468 ?        S    09:30   0:00 /usr/sbin/chronyd -n -F 1
yash        1366  0.0  0.2  22008 13060 ?        Ss   09:30   0:00 /usr/lib/systemd/systemd --user
yash        1373  0.0  0.0  23016  4100 ?        S    09:30   0:00 (sd-pam)
yash        1393  0.0  0.1   8856  5940 tty1     Ss+  09:30   0:00 -bash
yash        1472  0.1  0.1  18680  7692 ?        S    09:30   0:00 sshd-session: yash@pts/0
yash        1473  0.0  0.1   8844  5868 pts/0    Ss   09:30   0:00 -bash
yash        1793  0.0  0.0   9764  4688 pts/0    R+   09:38   0:00 ps aux
yash        1794  0.0  0.0   6716  2652 pts/0    S+   09:38   0:00 grep --color=auto -v ^root[[:space:]]
```

## Task 2.4 - Filter out kworker and irq processes
```bash
ps aux | grep -Ev 'kworker|irq'
```
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.3  0.3  24724 16044 ?        Ss   09:30   0:01 /usr/lib/systemd/systemd --switched-root --system --deserialize=51
root           2  0.0  0.0      0     0 ?        S    09:30   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    09:30   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    09:30   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    09:30   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    09:30   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    09:30   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    09:30   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    09:30   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    09:30   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    09:30   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    09:30   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    09:30   0:00 [migration/1]
root          28  0.0  0.0      0     0 ?        S    09:30   0:00 [cpuhp/2]
root          29  0.0  0.0      0     0 ?        S    09:30   0:00 [idle_inject/2]
root          30  0.0  0.0      0     0 ?        S    09:30   0:00 [migration/2]
root          34  0.0  0.0      0     0 ?        S    09:30   0:00 [cpuhp/3]
root          35  0.0  0.0      0     0 ?        S    09:30   0:00 [idle_inject/3]
root          36  0.0  0.0      0     0 ?        S    09:30   0:00 [migration/3]
root          44  0.0  0.0      0     0 ?        S    09:30   0:00 [kdevtmpfs]
root          46  0.0  0.0      0     0 ?        I    09:30   0:00 [rcu_tasks_kthread]
root          47  0.0  0.0      0     0 ?        I    09:30   0:00 [rcu_tasks_rude_kthread]
root          48  0.0  0.0      0     0 ?        S    09:30   0:00 [kauditd]
root          49  0.0  0.0      0     0 ?        S    09:30   0:00 [khungtaskd]
root          50  0.0  0.0      0     0 ?        S    09:30   0:00 [oom_reaper]
root          54  0.0  0.0      0     0 ?        S    09:30   0:00 [kcompactd0]
root          55  0.0  0.0      0     0 ?        SN   09:30   0:00 [ksmd]
root          56  0.0  0.0      0     0 ?        SN   09:30   0:00 [khugepaged]
root          70  0.0  0.0      0     0 ?        S    09:30   0:00 [watchdogd]
root          75  0.0  0.0      0     0 ?        S    09:30   0:00 [kswapd0]
root          77  0.0  0.0      0     0 ?        S    09:30   0:00 [ecryptfs-kthread]
root          81  0.0  0.0      0     0 ?        S    09:30   0:00 [scsi_eh_0]
root          83  0.0  0.0      0     0 ?        S    09:30   0:00 [scsi_eh_1]
root         328  0.0  0.0      0     0 ?        S    09:30   0:00 [scsi_eh_2]
root         368  0.0  0.0      0     0 ?        S    09:30   0:00 [jbd2/sda2-8]
root         465  0.0  0.0      0     0 ?        S    09:30   0:00 [psimon]
root         473  0.0  0.3  50392 16992 ?        S<s  09:30   0:00 /usr/lib/systemd/systemd-journald
root         515  0.0  0.1 279492  9644 ?        SLsl 09:30   0:00 /usr/sbin/multipathd -d -s
systemd+     530  0.0  0.2  22624 14712 ?        Ss   09:30   0:00 /usr/lib/systemd/systemd-resolved
root         535  0.0  0.2  40060 14228 ?        Ss   09:30   0:00 /usr/lib/systemd/systemd-udevd
root         541  0.0  0.0      0     0 ?        S    09:30   0:00 [psimon]
systemd+     857  0.0  0.2  21432 12252 ?        Ss   09:30   0:00 /usr/lib/systemd/systemd-networkd
root        1025  0.0  0.0   2888  2016 ?        Ss   09:30   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root        1026  0.0  0.0   7060  3436 ?        Ss   09:30   0:00 /usr/sbin/cron -f -P
message+    1027  0.0  0.1   9008  5560 ?        Ss   09:30   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1037  0.0  0.5  46744 30304 ?        Ss   09:30   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1038  0.0  0.1 306448  8460 ?        Ssl  09:30   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1041  0.2  0.8 1928552 43408 ?       Ssl  09:30   0:01 /snap/snapd/current/usr/lib/snapd/snapd
root        1045  0.0  0.1  18548  9652 ?        Ss   09:30   0:00 /usr/lib/systemd/systemd-logind
root        1049  0.0  0.2 543368 15192 ?        Ssl  09:30   0:00 /usr/libexec/udisks2/udisksd
root        1060  0.0  0.1  10744  7772 ?        Ss   09:30   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        1103  0.0  0.1   8756  5552 ?        Ss   09:30   0:00 login -- yash
_chrony     1105  0.0  0.1  20556  6384 ?        S    09:30   0:00 /usr/sbin/chronyd -n -F 1
syslog      1112  0.0  0.1 220548  6256 ?        Ssl  09:30   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1115  0.0  0.0  12096  2468 ?        S    09:30   0:00 /usr/sbin/chronyd -n -F 1
root        1124  0.0  0.6 126116 32960 ?        Ssl  09:30   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root        1142  0.0  0.2 391604 14044 ?        Ssl  09:30   0:00 /usr/sbin/ModemManager
yash        1366  0.0  0.2  22008 13060 ?        Ss   09:30   0:00 /usr/lib/systemd/systemd --user
yash        1373  0.0  0.0  23016  4100 ?        S    09:30   0:00 (sd-pam)
yash        1393  0.0  0.1   8856  5940 tty1     Ss+  09:30   0:00 -bash
root        1420  0.0  0.2  18520 12104 ?        Ss   09:30   0:00 sshd-session: yash [priv]
yash        1472  0.1  0.1  18680  7692 ?        S    09:30   0:00 sshd-session: yash@pts/0
yash        1473  0.0  0.1   8844  5868 pts/0    Ss   09:30   0:00 -bash
yash        1795  0.0  0.0   9764  4744 pts/0    R+   09:38   0:00 ps aux
```
