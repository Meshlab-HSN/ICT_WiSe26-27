# Lecture 5 - Task 2: Search and Filter

Username: sajib-barman

## 1. Search processes containing my username

Command: `ps aux | grep "sajib-b+"`

```text
sajib-b+     980  0.0  0.5  20108 11300 ?        Ss   19:27   0:00 /usr/lib/systemd/systemd --user
sajib-b+     981  0.0  0.1  21164  3588 ?        S    19:27   0:00 (sd-pam)
sajib-b+     992  0.0  0.2   8656  5636 tty1     S+   19:27   0:00 -bash
sajib-b+    1489  0.2  0.3  14968  7136 ?        S    21:03   0:02 sshd: sajib-barman@pts/0
sajib-b+    1490  0.0  0.2   8752  5704 pts/0    Ss   21:03   0:00 -bash
sajib-b+    1603  100  0.2  10892  4592 pts/0    R+   21:17   0:00 ps aux
sajib-b+    1604  0.0  0.1   6548  2324 pts/0    S+   21:17   0:00 grep --color=auto sajib-b+
```

## 2. Show processes actually running as my user

Command: `ps aux | grep -E '^sajib-b[+][[:space:]]'`

```text
sajib-b+     980  0.0  0.5  20108 11300 ?        Ss   19:27   0:00 /usr/lib/systemd/systemd --user
sajib-b+     981  0.0  0.1  21164  3588 ?        S    19:27   0:00 (sd-pam)
sajib-b+     992  0.0  0.2   8656  5636 tty1     S+   19:27   0:00 -bash
sajib-b+    1489  0.2  0.3  14968  7136 ?        S    21:03   0:02 sshd: sajib-barman@pts/0
sajib-b+    1490  0.0  0.2   8752  5704 pts/0    Ss   21:03   0:00 -bash
sajib-b+    1605  0.0  0.2  10892  4580 pts/0    R+   21:17   0:00 ps aux
sajib-b+    1606  0.0  0.1   6684  2332 pts/0    S+   21:17   0:00 grep --color=auto -E ^sajib-b[+][[:space:]]
```

## 3. Show all processes except root

Command: `ps aux | grep -vE '^root[[:space:]]'`

```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     442  0.0  0.6  21476 13008 ?        Ss   19:27   0:00 /usr/lib/systemd/systemd-resolved
systemd+     446  0.0  0.3  91036  7980 ?        Ssl  19:27   0:00 /usr/lib/systemd/systemd-timesyncd
systemd+     481  0.0  0.4  19016  9588 ?        Ss   19:27   0:00 /usr/lib/systemd/systemd-networkd
message+     569  0.0  0.2   9808  5572 ?        Ss   19:27   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      579  0.0  0.3 308180  8016 ?        Ssl  19:27   0:00 /usr/lib/polkit-1/polkitd --no-debug
syslog       660  0.0  0.2 222516  6012 ?        Ssl  19:27   0:00 /usr/sbin/rsyslogd -n -iNONE
sajib-b+     980  0.0  0.5  20108 11300 ?        Ss   19:27   0:00 /usr/lib/systemd/systemd --user
sajib-b+     981  0.0  0.1  21164  3588 ?        S    19:27   0:00 (sd-pam)
sajib-b+     992  0.0  0.2   8656  5636 tty1     S+   19:27   0:00 -bash
sajib-b+    1489  0.2  0.3  14968  7136 ?        S    21:03   0:02 sshd: sajib-barman@pts/0
sajib-b+    1490  0.0  0.2   8752  5704 pts/0    Ss   21:03   0:00 -bash
sajib-b+    1607  0.0  0.2  10892  4572 pts/0    R+   21:17   0:00 ps aux
sajib-b+    1608  0.0  0.1   6680  2332 pts/0    S+   21:17   0:00 grep --color=auto -vE ^root[[:space:]]
```

## 4. Filter out kworker and irq processes

Command:
```bash
ps aux | grep -Ev 'kworker|irq'
```

Output:
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.6  22004 13288 ?        Ss   19:27   0:05 /sbin/init
root           2  0.0  0.0      0     0 ?        S    19:27   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    19:27   0:00 [pool_workqueue_release]
root          13  0.0  0.0      0     0 ?        I    19:27   0:00 [rcu_tasks_kthread]
root          14  0.0  0.0      0     0 ?        I    19:27   0:00 [rcu_tasks_rude_kthread]
root          15  0.0  0.0      0     0 ?        I    19:27   0:00 [rcu_tasks_trace_kthread]
root          17  0.0  0.0      0     0 ?        I    19:27   0:00 [rcu_preempt]
root          18  0.0  0.0      0     0 ?        S    19:27   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    19:27   0:00 [idle_inject/0]
root          20  0.0  0.0      0     0 ?        S    19:27   0:00 [cpuhp/0]
root          21  0.0  0.0      0     0 ?        S    19:27   0:00 [cpuhp/1]
root          22  0.0  0.0      0     0 ?        S    19:27   0:00 [idle_inject/1]
root          23  0.0  0.0      0     0 ?        S    19:27   0:00 [migration/1]
root          29  0.0  0.0      0     0 ?        S    19:27   0:00 [kdevtmpfs]
root          31  0.0  0.0      0     0 ?        S    19:27   0:00 [kauditd]
root          32  0.0  0.0      0     0 ?        S    19:27   0:00 [khungtaskd]
root          33  0.0  0.0      0     0 ?        S    19:27   0:00 [oom_reaper]
root          37  0.0  0.0      0     0 ?        S    19:27   0:00 [kcompactd0]
root          38  0.0  0.0      0     0 ?        SN   19:27   0:00 [ksmd]
root          40  0.0  0.0      0     0 ?        SN   19:27   0:00 [khugepaged]
root          51  0.0  0.0      0     0 ?        S    19:27   0:00 [watchdogd]
root          56  0.0  0.0      0     0 ?        S    19:27   0:00 [kswapd0]
root          57  0.0  0.0      0     0 ?        S    19:27   0:00 [ecryptfs-kthread]
root          60  0.0  0.0      0     0 ?        S    19:27   0:00 [scsi_eh_0]
root          62  0.0  0.0      0     0 ?        S    19:27   0:00 [scsi_eh_1]
root         154  0.0  0.0      0     0 ?        S    19:27   0:00 [scsi_eh_2]
root         235  0.0  0.0      0     0 ?        S    19:27   0:00 [jbd2/sda2-8]
root         300  0.0  0.8  50384 16452 ?        S<s  19:27   0:01 /usr/lib/systemd/systemd-journald
root         353  0.0  1.3 288996 27332 ?        SLsl 19:27   0:03 /sbin/multipathd -d -s
root         392  0.0  0.3  29100  7812 ?        Ss   19:27   0:00 /usr/lib/systemd/systemd-udevd
systemd+     442  0.0  0.6  21476 13008 ?        Ss   19:27   0:00 /usr/lib/systemd/systemd-resolved
systemd+     446  0.0  0.3  91036  7980 ?        Ssl  19:27   0:00 /usr/lib/systemd/systemd-timesyncd
root         468  0.0  0.0      0     0 ?        S    19:27   0:00 [psimon]
systemd+     481  0.0  0.4  19016  9588 ?        Ss   19:27   0:00 /usr/lib/systemd/systemd-networkd
message+     569  0.0  0.2   9808  5576 ?        Ss   19:27   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      579  0.0  0.3 308180  8016 ?        Ssl  19:27   0:00 /usr/lib/polkit-1/polkitd --no-debug
root         604  0.0  0.4  18140  8960 ?        Ss   19:27   0:00 /usr/lib/systemd/systemd-logind
root         614  0.0  0.6 468976 13548 ?        Ssl  19:27   0:00 /usr/libexec/udisks2/udisksd
syslog       660  0.0  0.2 222516  6012 ?        Ssl  19:27   0:00 /usr/sbin/rsyslogd -n -iNONE
root         675  0.0  1.1 109704 23180 ?        Ssl  19:27   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root         716  0.0  0.6 392104 13040 ?        Ssl  19:27   0:00 /usr/sbin/ModemManager
root         721  0.0  0.1   6828  2904 ?        Ss   19:27   0:00 /usr/sbin/cron -f -P
root         760  0.0  0.4  12028  8248 ?        Ss   19:27   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root         797  0.0  0.2   6988  4860 tty1     Ss   19:27   0:00 /bin/login -p --
root         978  0.0  0.0      0     0 ?        S    19:27   0:00 [psimon]
sajib-b+     980  0.0  0.5  20108 11300 ?        Ss   19:27   0:00 /usr/lib/systemd/systemd --user
sajib-b+     981  0.0  0.1  21164  3588 ?        S    19:27   0:00 (sd-pam)
sajib-b+     992  0.0  0.2   8656  5636 tty1     S+   19:27   0:00 -bash
root        1066  0.0  2.2 636208 45492 ?        Ssl  19:39   0:04 /usr/libexec/fwupd/fwupd
root        1073  0.0  0.4 314144  9372 ?        Ssl  19:39   0:00 /usr/libexec/upowerd
root        1409  0.0  0.5  14744 10452 ?        Ss   21:03   0:00 sshd: sajib-barman [priv]
sajib-b+    1489  0.1  0.3  14968  7136 ?        S    21:03   0:05 sshd: sajib-barman@pts/0
sajib-b+    1490  0.0  0.2   8752  5748 pts/0    Ss+  21:03   0:00 -bash
root        1710  0.0  0.5  14748 10516 ?        Ss   21:53   0:00 sshd: sajib-barman [priv]
sajib-b+    1767  0.3  0.3  14972  7136 ?        S    21:53   0:02 sshd: sajib-barman@pts/1
sajib-b+    1768  0.0  0.2   8652  5652 pts/1    Ss   21:53   0:00 -bash
sajib-b+    1836  250  0.2  10892  4588 pts/1    R+   22:05   0:00 ps aux
```

