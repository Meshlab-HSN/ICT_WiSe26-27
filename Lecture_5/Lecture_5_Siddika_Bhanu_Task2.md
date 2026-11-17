# Task 2: Search and Filter
## 1. Filter user processes (basic grep)
```bash
ps aux | grep "siddika+"
siddika+    1736  0.0  0.5  20292 11440 ?        Ss   18:32   0:00 /usr/lib/systemd/systemd --user
siddika+    1737  0.0  0.1  21168  3572 ?        S    18:32   0:00 (sd-pam)
siddika+    1747  0.0  0.2   8656  5700 tty1     S+   18:32   0:00 -bash
siddika+    1871  0.0  0.3  15104  7140 ?        S    18:57   0:15 sshd: siddika-bhanu@pts/0
siddika+    1872  0.0  0.3  10116  6432 pts/0    Ss   18:57   0:00 -bash
siddika+    2641  0.0  0.2  10892  4568 pts/0    R+   23:23   0:00 ps aux
siddika+    2642  0.0  0.1   6548  2328 pts/0    S+   23:23   0:00 grep --color=auto siddika+
```
## 2. Filter user processes without false-positives (regex ^)
```bash
ps aux | grep "^siddika+"
siddika+    1736  0.0  0.5  20292 11440 ?        Ss   18:32   0:00 /usr/lib/systemd/systemd --user
siddika+    1737  0.0  0.1  21168  3572 ?        S    18:32   0:00 (sd-pam)
siddika+    1747  0.0  0.2   8656  5700 tty1     S+   18:32   0:00 -bash
siddika+    1871  0.0  0.3  15104  7140 ?        S    18:57   0:15 sshd: siddika-bhanu@pts/0
siddika+    1872  0.0  0.3  10116  6432 pts/0    Ss   18:57   0:00 -bash
siddika+    2643  0.0  0.2  10892  4584 pts/0    R+   23:23   0:00 ps aux
siddika+    2644  0.0  0.1   6680  2332 pts/0    S+   23:23   0:00 grep --color=auto ^siddika+
```
## 3. All processes except root
```bash
ps aux | grep -v "^root"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     399  0.0  0.6  21472 13048 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd-resolved
systemd+     402  0.0  0.3  91036  7992 ?        Ssl  12:56   0:00 /usr/lib/systemd/systemd-timesyncd
message+     562  0.0  0.2   9812  5604 ?        Ss   12:56   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      567  0.0  0.4 308180  8072 ?        Ssl  12:56   0:00 /usr/lib/polkit-1/polkitd --no-debug
syslog       607  0.0  0.3 222516  6204 ?        Ssl  12:56   0:00 /usr/sbin/rsyslogd -n -iNONE
siddika+    1736  0.0  0.5  20292 11440 ?        Ss   18:32   0:00 /usr/lib/systemd/systemd --user
siddika+    1737  0.0  0.1  21168  3572 ?        S    18:32   0:00 (sd-pam)
siddika+    1747  0.0  0.2   8656  5700 tty1     S+   18:32   0:00 -bash
siddika+    1871  0.0  0.3  15104  7140 ?        S    18:57   0:15 sshd: siddika-bhanu@pts/0
siddika+    1872  0.0  0.3  10116  6432 pts/0    Ss   18:57   0:00 -bash
systemd+    1927  0.0  0.4  19020  9592 ?        Ss   20:37   0:00 /usr/lib/systemd/systemd-networkd
siddika+    2645  0.0  0.2  10892  4588 pts/0    R+   23:23   0:00 ps aux
siddika+    2646  0.0  0.1   6548  2324 pts/0    S+   23:23   0:00 grep --color=auto -v ^root
```
## 4. Filter out kworker and irq processes (single grep)
```bash
ps aux | grep -Ev "kworker|irq"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.6  22260 13348 ?        Ss   12:55   0:01 /sbin/init splash noprompt noshell automatic-ubiquity
root           2  0.0  0.0      0     0 ?        S    12:55   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    12:55   0:00 [pool_workqueue_release]
root          13  0.0  0.0      0     0 ?        I    12:55   0:00 [rcu_tasks_kthread]
root          14  0.0  0.0      0     0 ?        I    12:55   0:00 [rcu_tasks_rude_kthread]
root          15  0.0  0.0      0     0 ?        I    12:55   0:00 [rcu_tasks_trace_kthread]
root          17  0.0  0.0      0     0 ?        I    12:55   0:00 [rcu_preempt]
root          18  0.0  0.0      0     0 ?        S    12:55   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    12:55   0:00 [idle_inject/0]
root          20  0.0  0.0      0     0 ?        S    12:55   0:00 [cpuhp/0]
root          21  0.0  0.0      0     0 ?        S    12:55   0:00 [kdevtmpfs]
root          23  0.0  0.0      0     0 ?        S    12:55   0:00 [kauditd]
root          24  0.0  0.0      0     0 ?        S    12:55   0:00 [khungtaskd]
root          26  0.0  0.0      0     0 ?        S    12:55   0:00 [oom_reaper]
root          28  0.0  0.0      0     0 ?        S    12:55   0:01 [kcompactd0]
root          29  0.0  0.0      0     0 ?        SN   12:55   0:00 [ksmd]
root          30  0.0  0.0      0     0 ?        SN   12:55   0:00 [khugepaged]
root          42  0.0  0.0      0     0 ?        S    12:55   0:00 [watchdogd]
root          45  0.0  0.0      0     0 ?        S    12:55   0:00 [kswapd0]
root          46  0.0  0.0      0     0 ?        S    12:55   0:00 [ecryptfs-kthread]
root          49  0.0  0.0      0     0 ?        S    12:55   0:00 [scsi_eh_0]
root          51  0.0  0.0      0     0 ?        S    12:55   0:00 [scsi_eh_1]
root         146  0.0  0.0      0     0 ?        S    12:55   0:00 [scsi_eh_2]
root         226  0.0  0.0      0     0 ?        S    12:56   0:00 [jbd2/sda2-8]
root         341  0.0  1.3 288996 27332 ?        SLsl 12:56   0:01 /sbin/multipathd -d -s
root         380  0.0  0.4  29352  8072 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd-udevd
systemd+     399  0.0  0.6  21472 13048 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd-resolved
systemd+     402  0.0  0.3  91036  7992 ?        Ssl  12:56   0:00 /usr/lib/systemd/systemd-timesyncd
root         438  0.0  0.0      0     0 ?        S    12:56   0:00 [psimon]
message+     562  0.0  0.2   9812  5604 ?        Ss   12:56   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      567  0.0  0.4 308180  8072 ?        Ssl  12:56   0:00 /usr/lib/polkit-1/polkitd --no-debug
root         576  0.0  0.4  18220  9024 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd-logind
root         577  0.0  0.6 468976 13600 ?        Ssl  12:56   0:00 /usr/libexec/udisks2/udisksd
root         598  0.0  1.1 109704 23144 ?        Ssl  12:56   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
syslog       607  0.0  0.3 222516  6204 ?        Ssl  12:56   0:00 /usr/sbin/rsyslogd -n -iNONE
root         619  0.0  0.6 392104 13084 ?        Ssl  12:56   0:00 /usr/sbin/ModemManager
root         712  0.0  0.1   6828  2904 ?        Ss   12:56   0:00 /usr/sbin/cron -f -P
root         731  0.0  0.4  12028  8304 ?        Ss   12:56   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        1243  0.0  2.2 710080 45464 ?        Ssl  14:41   0:02 /usr/libexec/fwupd/fwupd
root        1254  0.0  0.4 388044  9520 ?        Ssl  14:41   0:00 /usr/libexec/upowerd
root        1398  0.0  0.1   6108  2032 tty6     Ss+  16:37   0:00 /sbin/agetty -o -p -- \u --noclear - linux
root        1651  0.0  0.2   6984  4880 tty1     Ss   18:31   0:00 /bin/login -p --
root        1734  0.0  0.0      0     0 ?        S    18:32   0:00 [psimon]
siddika+    1736  0.0  0.5  20292 11440 ?        Ss   18:32   0:00 /usr/lib/systemd/systemd --user
siddika+    1737  0.0  0.1  21168  3572 ?        S    18:32   0:00 (sd-pam)
siddika+    1747  0.0  0.2   8656  5700 tty1     S+   18:32   0:00 -bash
root        1814  0.0  0.5  14972 10712 ?        Ss   18:56   0:00 sshd: siddika-bhanu [priv]
siddika+    1871  0.0  0.3  15104  7140 ?        R    18:57   0:15 sshd: siddika-bhanu@pts/0
siddika+    1872  0.0  0.3  10116  6432 pts/0    Ss   18:57   0:00 -bash
systemd+    1927  0.0  0.4  19020  9592 ?        Ss   20:37   0:00 /usr/lib/systemd/systemd-networkd
root        2141  0.0  0.5  34168 12088 ?        S<s  22:47   0:00 /usr/lib/systemd/systemd-journald
siddika+    2647  0.0  0.2  10892  4588 pts/0    R+   23:23   0:00 ps aux
```
