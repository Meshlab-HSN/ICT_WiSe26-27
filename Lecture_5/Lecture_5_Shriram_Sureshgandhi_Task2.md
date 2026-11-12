```
$ ps aux | grep jarvis
jarvis      1007  0.0  0.4  20104 11168 ?        Ss   14:25   0:00 /usr/lib/systemd/systemd --user
jarvis      1008  0.0  0.1  21164  3568 ?        S    14:25   0:00 (sd-pam)
jarvis      1017  0.0  0.2   8656  5632 tty1     S+   14:25   0:00 -bash
root        1051  0.0  0.4  14740 10448 ?        Ss   14:31   0:00 sshd: jarvis [priv]
jarvis      1108  0.0  0.2  14996  7128 ?        S    14:31   0:00 sshd: jarvis@pts/0
jarvis      1109  0.0  0.2   8796  5676 pts/0    Ss+  14:31   0:00 -bash
root        2175  0.0  0.4  14744 10504 ?        Ss   19:16   0:00 sshd: jarvis [priv]
jarvis      2255  0.0  0.2  15000  7124 ?        S    19:16   0:00 sshd: jarvis@pts/1
jarvis      2256  0.0  0.2   8652  5672 pts/1    Ss   19:16   0:00 -bash
jarvis      2332  0.0  0.1   7344  3556 pts/1    S+   19:42   0:00 bash -c ps aux | grep jarvis
jarvis      2333  0.0  0.1  10892  4592 pts/1    R+   19:42   0:00 ps aux
jarvis      2334  0.0  0.0   6548  2328 pts/1    S+   19:42   0:00 grep jarvis
```

```
$ ps aux | grep '^jarvis'
jarvis      1007  0.0  0.4  20104 11168 ?        Ss   14:25   0:00 /usr/lib/systemd/systemd --user
jarvis      1008  0.0  0.1  21164  3568 ?        S    14:25   0:00 (sd-pam)
jarvis      1017  0.0  0.2   8656  5632 tty1     S+   14:25   0:00 -bash
jarvis      1108  0.0  0.2  14996  7128 ?        S    14:31   0:00 sshd: jarvis@pts/0
jarvis      1109  0.0  0.2   8796  5676 pts/0    Ss+  14:31   0:00 -bash
jarvis      2255  0.0  0.2  15000  7124 ?        S    19:16   0:00 sshd: jarvis@pts/1
jarvis      2256  0.0  0.2   8652  5672 pts/1    Ss   19:16   0:00 -bash
jarvis      2335  0.0  0.1   7344  3640 pts/1    S+   19:42   0:00 bash -c ps aux | grep '^jarvis'
jarvis      2336  0.0  0.1  10892  4576 pts/1    R+   19:42   0:00 ps aux
jarvis      2337  0.0  0.0   6680  2328 pts/1    S+   19:42   0:00 grep ^jarvis
```

```
$ ps aux | grep -v '^root'
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     454  0.0  0.5  21476 13040 ?        Ss   14:25   0:00 /usr/lib/systemd/systemd-resolved
systemd+     459  0.0  0.3  91036  7940 ?        Ssl  14:25   0:00 /usr/lib/systemd/systemd-timesyncd
systemd+     501  0.0  0.3  19016  9492 ?        Ss   14:25   0:00 /usr/lib/systemd/systemd-networkd
message+     574  0.0  0.2   9896  5628 ?        Ss   14:25   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      588  0.0  0.4 383724 10024 ?        Ssl  14:25   0:00 /usr/lib/polkit-1/polkitd --no-debug
syslog       660  0.0  0.2 222516  6032 ?        Ssl  14:25   0:00 /usr/sbin/rsyslogd -n -iNONE
jarvis      1007  0.0  0.4  20104 11168 ?        Ss   14:25   0:00 /usr/lib/systemd/systemd --user
jarvis      1008  0.0  0.1  21164  3568 ?        S    14:25   0:00 (sd-pam)
jarvis      1017  0.0  0.2   8656  5632 tty1     S+   14:25   0:00 -bash
jarvis      1108  0.0  0.2  14996  7128 ?        S    14:31   0:00 sshd: jarvis@pts/0
jarvis      1109  0.0  0.2   8796  5676 pts/0    Ss+  14:31   0:00 -bash
jarvis      2255  0.0  0.2  15000  7124 ?        S    19:16   0:00 sshd: jarvis@pts/1
jarvis      2256  0.0  0.2   8652  5672 pts/1    Ss   19:16   0:00 -bash
jarvis      2338  0.0  0.1   7344  3544 pts/1    S+   19:42   0:00 bash -c ps aux | grep -v '^root'
jarvis      2339  0.0  0.1  10892  4592 pts/1    R+   19:42   0:00 ps aux
jarvis      2340  0.0  0.0   6548  2324 pts/1    S+   19:42   0:00 grep -v ^root
```

```
$ ps aux | grep -Ev 'kworker|irq'
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.5  22140 13204 ?        Ss   14:25   0:02 /sbin/init
root           2  0.0  0.0      0     0 ?        S    14:25   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    14:25   0:00 [pool_workqueue_release]
root          13  0.0  0.0      0     0 ?        I    14:25   0:00 [rcu_tasks_kthread]
root          14  0.0  0.0      0     0 ?        I    14:25   0:00 [rcu_tasks_rude_kthread]
root          15  0.0  0.0      0     0 ?        I    14:25   0:00 [rcu_tasks_trace_kthread]
root          17  0.0  0.0      0     0 ?        I    14:25   0:00 [rcu_preempt]
root          18  0.0  0.0      0     0 ?        S    14:25   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    14:25   0:00 [idle_inject/0]
root          20  0.0  0.0      0     0 ?        S    14:25   0:00 [cpuhp/0]
root          21  0.0  0.0      0     0 ?        S    14:25   0:00 [cpuhp/1]
root          22  0.0  0.0      0     0 ?        S    14:25   0:00 [idle_inject/1]
root          23  0.0  0.0      0     0 ?        S    14:25   0:00 [migration/1]
root          29  0.0  0.0      0     0 ?        S    14:25   0:00 [kdevtmpfs]
root          31  0.0  0.0      0     0 ?        S    14:25   0:00 [kauditd]
root          32  0.0  0.0      0     0 ?        S    14:25   0:00 [khungtaskd]
root          33  0.0  0.0      0     0 ?        S    14:25   0:00 [oom_reaper]
root          37  0.0  0.0      0     0 ?        S    14:25   0:00 [kcompactd0]
root          38  0.0  0.0      0     0 ?        SN   14:25   0:00 [ksmd]
root          40  0.0  0.0      0     0 ?        SN   14:25   0:00 [khugepaged]
root          51  0.0  0.0      0     0 ?        S    14:25   0:00 [watchdogd]
root          55  0.0  0.0      0     0 ?        S    14:25   0:00 [kswapd0]
root          56  0.0  0.0      0     0 ?        S    14:25   0:00 [ecryptfs-kthread]
root          61  0.0  0.0      0     0 ?        S    14:25   0:00 [scsi_eh_0]
root          63  0.0  0.0      0     0 ?        S    14:25   0:00 [scsi_eh_1]
root         156  0.0  0.0      0     0 ?        S    14:25   0:00 [scsi_eh_2]
root         240  0.0  0.0      0     0 ?        S    14:25   0:00 [jbd2/sda2-8]
root         306  0.0  0.7  66848 19676 ?        S<s  14:25   0:00 /usr/lib/systemd/systemd-journald
root         355  0.0  1.1 288996 27332 ?        SLsl 14:25   0:01 /sbin/multipathd -d -s
root         390  0.0  0.3  29100  7888 ?        Ss   14:25   0:00 /usr/lib/systemd/systemd-udevd
systemd+     454  0.0  0.5  21476 13040 ?        Ss   14:25   0:00 /usr/lib/systemd/systemd-resolved
systemd+     459  0.0  0.3  91036  7940 ?        Ssl  14:25   0:00 /usr/lib/systemd/systemd-timesyncd
root         492  0.0  0.0      0     0 ?        S    14:25   0:00 [psimon]
systemd+     501  0.0  0.3  19016  9492 ?        Ss   14:25   0:00 /usr/lib/systemd/systemd-networkd
message+     574  0.0  0.2   9896  5628 ?        Ss   14:25   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      588  0.0  0.4 383724 10024 ?        Ssl  14:25   0:00 /usr/lib/polkit-1/polkitd --no-debug
root         620  0.0  0.3  18224  8944 ?        Ss   14:25   0:00 /usr/lib/systemd/systemd-logind
root         624  0.0  0.5 468980 13568 ?        Ssl  14:25   0:00 /usr/libexec/udisks2/udisksd
syslog       660  0.0  0.2 222516  6032 ?        Ssl  14:25   0:00 /usr/sbin/rsyslogd -n -iNONE
root         694  0.0  0.9 109704 23100 ?        Ssl  14:25   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root         722  0.0  0.5 392036 12844 ?        Ssl  14:25   0:00 /usr/sbin/ModemManager
root         867  0.0  0.1   6828  2904 ?        Ss   14:25   0:00 /usr/sbin/cron -f -P
root         873  0.0  0.3  12028  8224 ?        Ss   14:25   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root         879  0.0  0.1   6972  4884 tty1     Ss   14:25   0:00 /bin/login -p --
root         937  0.0  0.3 314328  9540 ?        Ssl  14:25   0:00 /usr/libexec/upowerd
root        1005  0.0  0.0      0     0 ?        S    14:25   0:00 [psimon]
jarvis      1007  0.0  0.4  20104 11168 ?        Ss   14:25   0:00 /usr/lib/systemd/systemd --user
jarvis      1008  0.0  0.1  21164  3568 ?        S    14:25   0:00 (sd-pam)
jarvis      1017  0.0  0.2   8656  5632 tty1     S+   14:25   0:00 -bash
root        1051  0.0  0.4  14740 10448 ?        Ss   14:31   0:00 sshd: jarvis [priv]
jarvis      1108  0.0  0.2  14996  7128 ?        S    14:31   0:00 sshd: jarvis@pts/0
jarvis      1109  0.0  0.2   8796  5676 pts/0    Ss+  14:31   0:00 -bash
root        2175  0.0  0.4  14744 10504 ?        Ss   19:16   0:00 sshd: jarvis [priv]
jarvis      2255  0.0  0.2  15000  7124 ?        S    19:16   0:00 sshd: jarvis@pts/1
jarvis      2256  0.0  0.2   8652  5672 pts/1    Ss   19:16   0:00 -bash
jarvis      2342  0.0  0.1  10892  4592 pts/1    R+   19:42   0:00 ps aux
```

