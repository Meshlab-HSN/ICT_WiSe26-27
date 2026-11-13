```
$ ps aux | grep shaguftashifa
root        3424  0.0  0.1   8760  5576 ?        Ss   Nov12   0:00 login -- shaguftashifa
root       30114  0.0  0.2  18268 12248 ?        Ss   09:55   0:00 sshd-session: shaguftashifa [priv]
shaguft+   30172  0.0  0.1  18564  7692 ?        S    09:55   0:00 sshd-session: shaguftashifa@pts/0
shaguft+   30406  0.0  0.0   6716  2700 pts/0    S+   10:29   0:00 grep --color=auto shaguftashifa
```

```
$ ps aux | grep shaguft+
shaguft+    1424  0.0  0.2  21736 12768 ?        Ss   Nov12   0:00 /usr/lib/systemd/systemd --user --deserialize=9
shaguft+    1434  0.0  0.0  23012  4148 ?        S    Nov12   0:00 (sd-pam)
shaguft+    3781  0.0  0.1   8856  5856 tty1     Ss+  Nov12   0:00 -bash
shaguft+   30172  0.0  0.1  18564  7692 ?        S    09:55   0:00 sshd-session: shaguftashifa@pts/0
shaguft+   30173  0.0  0.1   8844  5868 pts/0    Ss   09:55   0:00 -bash
shaguft+   30407  100  0.1   9764  4680 pts/0    R+   10:29   0:00 ps aux
shaguft+   30408  0.0  0.0   6716  2732 pts/0    S+   10:29   0:00 grep --color=auto shaguft+
```

```
$ ps aux | grep '^shaguft+ '
shaguft+    1424  0.0  0.2  21736 12768 ?        Ss   Nov12   0:00 /usr/lib/systemd/systemd --user --deserialize=9
shaguft+    1434  0.0  0.0  23012  4148 ?        S    Nov12   0:00 (sd-pam)
shaguft+    3781  0.0  0.1   8856  5856 tty1     Ss+  Nov12   0:00 -bash
shaguft+   30172  0.0  0.1  18564  7692 ?        S    09:55   0:00 sshd-session: shaguftashifa@pts/0
shaguft+   30173  0.0  0.1   8844  5868 pts/0    Ss   09:55   0:00 -bash
shaguft+   30409  0.0  0.1   9764  4672 pts/0    R+   10:29   0:00 ps aux
shaguft+   30410  0.0  0.0   6716  2700 pts/0    S+   10:29   0:00 grep --color=auto ^shaguft+ 
```

```
$ ps aux | grep -v '^root '
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
message+     768  0.0  0.1   9272  5932 ?        Ss   Nov12   0:13 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
_chrony      842  0.0  0.2  24072 11596 ?        S    Nov12   0:01 /usr/sbin/chronyd -n -F 1
_chrony      846  0.0  0.0  12096  2444 ?        S    Nov12   0:00 /usr/sbin/chronyd -n -F 1
shaguft+    1424  0.0  0.2  21736 12768 ?        Ss   Nov12   0:00 /usr/lib/systemd/systemd --user --deserialize=9
shaguft+    1434  0.0  0.0  23012  4148 ?        S    Nov12   0:00 (sd-pam)
shaguft+    3781  0.0  0.1   8856  5856 tty1     Ss+  Nov12   0:00 -bash
syslog      4086  0.0  0.1 220548  5648 ?        Ssl  Nov12   0:00 /usr/sbin/rsyslogd -n -iNONE
polkitd    28706  0.0  0.1 306448  8612 ?        Ssl  06:37   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
systemd+   28707  0.0  0.3  22636 14732 ?        Ss   06:37   0:00 /usr/lib/systemd/systemd-resolved
systemd+   28768  0.0  0.2  21456 12392 ?        Ss   06:37   0:00 /usr/lib/systemd/systemd-networkd
shaguft+   30172  0.0  0.1  18564  7692 ?        S    09:55   0:00 sshd-session: shaguftashifa@pts/0
shaguft+   30173  0.0  0.1   8844  5868 pts/0    Ss   09:55   0:00 -bash
shaguft+   30411  0.0  0.1   9764  4676 pts/0    R+   10:29   0:00 ps aux
shaguft+   30412  0.0  0.0   6716  2700 pts/0    S+   10:29   0:00 grep --color=auto -v ^root 
```

```
$ ps aux | grep -v -E 'kworker|irq'
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.3  24828 16212 ?        Ss   Nov12   0:12 /usr/lib/systemd/systemd --system --deserialize=77
root           2  0.0  0.0      0     0 ?        S    Nov12   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    Nov12   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    Nov12   0:01 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    Nov12   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    Nov12   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    Nov12   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    Nov12   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    Nov12   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    Nov12   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    Nov12   0:00 [kdevtmpfs]
root          24  0.0  0.0      0     0 ?        I    Nov12   0:00 [rcu_tasks_kthread]
root          25  0.0  0.0      0     0 ?        I    Nov12   0:00 [rcu_tasks_rude_kthread]
root          26  0.0  0.0      0     0 ?        S    Nov12   0:00 [kauditd]
root          27  0.0  0.0      0     0 ?        S    Nov12   0:00 [khungtaskd]
root          28  0.0  0.0      0     0 ?        S    Nov12   0:00 [oom_reaper]
root          32  0.0  0.0      0     0 ?        S    Nov12   0:03 [kcompactd0]
root          33  0.0  0.0      0     0 ?        SN   Nov12   0:00 [ksmd]
root          34  0.0  0.0      0     0 ?        SN   Nov12   0:00 [khugepaged]
root          46  0.0  0.0      0     0 ?        S    Nov12   0:00 [watchdogd]
root          48  0.0  0.0      0     0 ?        S    Nov12   0:00 [kswapd0]
root          49  0.0  0.0      0     0 ?        S    Nov12   0:00 [ecryptfs-kthread]
root          52  0.0  0.0      0     0 ?        S    Nov12   0:00 [scsi_eh_0]
root          54  0.0  0.0      0     0 ?        S    Nov12   0:00 [scsi_eh_1]
root         286  0.0  0.0      0     0 ?        S    Nov12   0:00 [scsi_eh_2]
root         317  0.0  0.0      0     0 ?        S    Nov12   0:00 [jbd2/sda2-8]
root         767  0.0  0.0   2888  2012 ?        Ss   Nov12   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+     768  0.0  0.1   9272  5932 ?        Ss   Nov12   0:13 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         773  0.0  0.6  46744 30136 ?        Ss   Nov12   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
root         777  0.0  0.9 1812396 42776 ?       Ssl  Nov12   0:03 /usr/lib/snapd/snapd
root         779  0.0  0.2  18644  9760 ?        Ss   Nov12   0:03 /usr/lib/systemd/systemd-logind
_chrony      842  0.0  0.2  24072 11596 ?        S    Nov12   0:01 /usr/sbin/chronyd -n -F 1
root         845  0.0  0.7 126116 32848 ?        Ssl  Nov12   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony      846  0.0  0.0  12096  2444 ?        S    Nov12   0:00 /usr/sbin/chronyd -n -F 1
root        1179  0.0  0.0 423152  3844 ?        Sl   Nov12   0:27 /usr/sbin/VBoxService --pidfile /var/run/vboxadd-service.sh
shaguft+    1424  0.0  0.2  21736 12768 ?        Ss   Nov12   0:00 /usr/lib/systemd/systemd --user --deserialize=9
shaguft+    1434  0.0  0.0  23012  4148 ?        S    Nov12   0:00 (sd-pam)
root        3418  0.0  0.0   8488  2848 tty6     Ss+  Nov12   0:00 /usr/sbin/agetty --noreset --noclear --issue-file=/etc/issue:/etc/issue.d:/run/issue.d:/usr/lib/issue.d - linux
root        3424  0.0  0.1   8760  5576 ?        Ss   Nov12   0:00 login -- shaguftashifa
shaguft+    3781  0.0  0.1   8856  5856 tty1     Ss+  Nov12   0:00 -bash
root        4031  0.0  0.1  10744  7828 ?        Ss   Nov12   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
syslog      4086  0.0  0.1 220548  5648 ?        Ssl  Nov12   0:00 /usr/sbin/rsyslogd -n -iNONE
root       28659  0.0  0.0      0     0 ?        S    06:37   0:00 [psimon]
root       28676  0.0  0.0   7060  3452 ?        Ss   06:37   0:00 /usr/sbin/cron -f -P
root       28678  0.0  0.2 214212  9768 ?        SLsl 06:37   0:01 /usr/sbin/multipathd -d -s
root       28701  0.0  0.3  50644 16372 ?        S<s  06:37   0:00 /usr/lib/systemd/systemd-journald
polkitd    28706  0.0  0.1 306448  8612 ?        Ssl  06:37   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
systemd+   28707  0.0  0.3  22636 14732 ?        Ss   06:37   0:00 /usr/lib/systemd/systemd-resolved
root       28708  0.0  1.0 365936 46000 ?        Ssl  06:37   0:01 /usr/libexec/fwupd/fwupd
root       28710  0.0  0.3 543364 15032 ?        Ssl  06:37   0:00 /usr/libexec/udisks2/udisksd
root       28719  0.1  0.2 318804 11716 ?        Ssl  06:37   0:14 /usr/libexec/upowerd
root       28728  0.0  0.2  38124 12420 ?        Ss   06:37   0:00 /usr/lib/systemd/systemd-udevd
root       28754  0.0  0.3 391500 14316 ?        Ssl  06:37   0:00 /usr/sbin/ModemManager
root       28767  0.0  0.0      0     0 ?        S    06:37   0:00 [psimon]
systemd+   28768  0.0  0.2  21456 12392 ?        Ss   06:37   0:00 /usr/lib/systemd/systemd-networkd
root       30114  0.0  0.2  18268 12248 ?        Ss   09:55   0:00 sshd-session: shaguftashifa [priv]
shaguft+   30172  0.0  0.1  18564  7692 ?        S    09:55   0:00 sshd-session: shaguftashifa@pts/0
shaguft+   30173  0.0  0.1   8844  5868 pts/0    Ss   09:55   0:00 -bash
shaguft+   30413  0.0  0.1   9764  4676 pts/0    R+   10:29   0:00 ps aux
```

