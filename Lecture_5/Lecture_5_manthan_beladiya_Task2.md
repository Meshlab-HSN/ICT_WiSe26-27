# Task 2 - Search and filter

## 1. Processes of my user (grep)
```
$ ps aux | grep manthan+
manthan+    1500  0.0  0.7  22208 12996 ?        Ss   21:51   0:00 /usr/lib/systemd/systemd --user
manthan+    1507  0.0  0.2  23012  4108 ?        S    21:51   0:00 (sd-pam)
manthan+    1527  0.0  0.3   8856  5968 tty1     Ss+  21:51   0:00 -bash
manthan+    1652  0.1  0.4  18564  7728 ?        S    21:56   0:02 sshd-session: manthan_beladiya@pts/0
manthan+    1653  0.0  0.3   8844  5872 pts/0    Ss   21:56   0:00 -bash
manthan+    2243  0.0  0.2   9764  4668 pts/0    R+   22:17   0:00 ps aux
manthan+    2244  0.0  0.1   6716  2672 pts/0    S+   22:17   0:00 grep --color=auto manthan+
```

## 2. Regex filter (only my user)
```
$ ps aux | grep '^manthan+'
manthan+    1500  0.0  0.7  22208 12996 ?        Ss   21:51   0:00 /usr/lib/systemd/systemd --user
manthan+    1507  0.0  0.2  23012  4108 ?        S    21:51   0:00 (sd-pam)
manthan+    1527  0.0  0.3   8856  5968 tty1     Ss+  21:51   0:00 -bash
manthan+    1652  0.1  0.4  18564  7728 ?        S    21:56   0:02 sshd-session: manthan_beladiya@pts/0
manthan+    1653  0.0  0.3   8844  5872 pts/0    Ss   21:56   0:00 -bash
manthan+    2245  0.0  0.2   9764  4732 pts/0    R+   22:17   0:00 ps aux
manthan+    2246  0.0  0.1   6716  2652 pts/0    S+   22:17   0:00 grep --color=auto ^manthan+
```

## 3. All processes except root
```
$ ps aux | grep -v '^root'
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     491  0.0  0.8  22756 14684 ?        Ss   21:50   0:00 /usr/lib/systemd/systemd-resolved
systemd+     646  0.0  0.7  21444 12232 ?        Ss   21:50   0:00 /usr/lib/systemd/systemd-networkd
message+     868  0.0  0.3   9008  5628 ?        Ss   21:50   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      876  0.0  0.4 306448  8232 ?        Ssl  21:50   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
syslog       958  0.0  0.3 220548  6088 ?        Ssl  21:50   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony      974  0.0  0.6  23724 11324 ?        S    21:50   0:00 /usr/sbin/chronyd -n -F 1
_chrony      987  0.0  0.1  12096  2432 ?        S    21:50   0:00 /usr/sbin/chronyd -n -F 1
manthan+    1500  0.0  0.7  22208 12996 ?        Ss   21:51   0:00 /usr/lib/systemd/systemd --user
manthan+    1507  0.0  0.2  23012  4108 ?        S    21:51   0:00 (sd-pam)
manthan+    1527  0.0  0.3   8856  5968 tty1     Ss+  21:51   0:00 -bash
manthan+    1652  0.1  0.4  18564  7728 ?        S    21:56   0:02 sshd-session: manthan_beladiya@pts/0
manthan+    1653  0.0  0.3   8844  5872 pts/0    Ss   21:56   0:00 -bash
manthan+    2247  0.0  0.2   9764  4684 pts/0    R+   22:17   0:00 ps aux
manthan+    2248  0.0  0.1   6716  2648 pts/0    S+   22:17   0:00 grep --color=auto -v ^root
```

## 4. Filter out kworker and irq
```
$ ps aux | grep -Ev 'kworker|irq'
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.1  0.9  24720 15972 ?        Ss   21:50   0:02 /usr/lib/systemd/systemd --switched-root --system --deserialize=55
root           2  0.0  0.0      0     0 ?        S    21:50   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    21:50   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    21:50   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    21:50   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    21:50   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    21:50   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    21:50   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    21:50   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    21:50   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    21:50   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    21:50   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    21:50   0:00 [migration/1]
root          30  0.0  0.0      0     0 ?        S    21:50   0:00 [kdevtmpfs]
root          32  0.0  0.0      0     0 ?        I    21:50   0:00 [rcu_tasks_kthread]
root          33  0.0  0.0      0     0 ?        I    21:50   0:00 [rcu_tasks_rude_kthread]
root          34  0.0  0.0      0     0 ?        S    21:50   0:00 [kauditd]
root          35  0.0  0.0      0     0 ?        S    21:50   0:00 [khungtaskd]
root          36  0.0  0.0      0     0 ?        S    21:50   0:00 [oom_reaper]
root          40  0.0  0.0      0     0 ?        S    21:50   0:00 [kcompactd0]
root          41  0.0  0.0      0     0 ?        SN   21:50   0:00 [ksmd]
root          42  0.0  0.0      0     0 ?        SN   21:50   0:00 [khugepaged]
root          55  0.0  0.0      0     0 ?        S    21:50   0:00 [watchdogd]
root          58  0.0  0.0      0     0 ?        S    21:50   0:00 [kswapd0]
root          59  0.0  0.0      0     0 ?        S    21:50   0:00 [ecryptfs-kthread]
root          62  0.0  0.0      0     0 ?        S    21:50   0:00 [scsi_eh_0]
root          64  0.0  0.0      0     0 ?        S    21:50   0:00 [scsi_eh_1]
root         296  0.0  0.0      0     0 ?        S    21:50   0:00 [scsi_eh_2]
root         332  0.0  0.0      0     0 ?        S    21:50   0:00 [jbd2/sda2-8]
root         427  0.0  0.0      0     0 ?        S    21:50   0:00 [psimon]
root         434  0.0  1.0  50396 16972 ?        S<s  21:50   0:00 /usr/lib/systemd/systemd-journald
root         477  0.0  0.5 279492  9644 ?        SLsl 21:50   0:00 /usr/sbin/multipathd -d -s
systemd+     491  0.0  0.8  22756 14684 ?        Ss   21:50   0:00 /usr/lib/systemd/systemd-resolved
root         496  0.0  0.8  40676 14772 ?        Ss   21:50   0:00 /usr/lib/systemd/systemd-udevd
root         500  0.0  0.0      0     0 ?        S    21:50   0:00 [psimon]
systemd+     646  0.0  0.7  21444 12232 ?        Ss   21:50   0:00 /usr/lib/systemd/systemd-networkd
root         867  0.0  0.1   2888  2008 ?        Ss   21:50   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+     868  0.0  0.3   9008  5628 ?        Ss   21:50   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         875  0.0  1.7  46744 30260 ?        Ss   21:50   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      876  0.0  0.4 306448  8232 ?        Ssl  21:50   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root         880  1.8  2.5 1886136 42156 ?       Ssl  21:50   0:30 /usr/lib/snapd/snapd
root         883  0.0  0.5  18556  9592 ?        Ss   21:50   0:00 /usr/lib/systemd/systemd-logind
root         884  0.0  0.9 543360 15220 ?        Ssl  21:50   0:00 /usr/libexec/udisks2/udisksd
syslog       958  0.0  0.3 220548  6088 ?        Ssl  21:50   0:00 /usr/sbin/rsyslogd -n -iNONE
root         962  0.0  1.9 126112 32940 ?        Ssl  21:50   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony      974  0.0  0.6  23724 11324 ?        S    21:50   0:00 /usr/sbin/chronyd -n -F 1
root         984  0.0  0.4  10744  7744 ?        Ss   21:50   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
_chrony      987  0.0  0.1  12096  2432 ?        S    21:50   0:00 /usr/sbin/chronyd -n -F 1
root        1016  0.0  0.1   7060  3356 ?        Ss   21:50   0:00 /usr/sbin/cron -f -P
root        1031  0.0  0.8 391496 14004 ?        Ssl  21:50   0:00 /usr/sbin/ModemManager
root        1061  0.0  0.3   8760  5564 ?        Ss   21:50   0:00 login -- manthan_beladiya
root        1356  0.0  0.1 287096  2972 ?        Sl   21:50   0:01 /usr/bin/VBoxDRMClient
root        1358  0.0  0.2 292080  3852 ?        Sl   21:50   0:00 /usr/sbin/VBoxService --pidfile /var/run/vboxadd-service.sh
manthan+    1500  0.0  0.7  22208 12996 ?        Ss   21:51   0:00 /usr/lib/systemd/systemd --user
manthan+    1507  0.0  0.2  23012  4108 ?        S    21:51   0:00 (sd-pam)
manthan+    1527  0.0  0.3   8856  5968 tty1     Ss+  21:51   0:00 -bash
root        1594  0.0  0.7  18268 12204 ?        Ss   21:56   0:00 sshd-session: manthan_beladiya [priv]
manthan+    1652  0.1  0.4  18564  7728 ?        S    21:56   0:02 sshd-session: manthan_beladiya@pts/0
manthan+    1653  0.0  0.3   8844  5872 pts/0    Ss   21:56   0:00 -bash
manthan+    2249  0.0  0.2   9764  4680 pts/0    R+   22:17   0:00 ps aux
```
