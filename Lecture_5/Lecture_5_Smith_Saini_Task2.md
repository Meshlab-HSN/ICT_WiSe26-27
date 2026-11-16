# Lecture 5 - Task 2: Search and Filter

## 1. Filter processes using username

Command: `ps aux | grep smith`

Output:
```text
smith       1042  0.0  0.2  20176 11344 ?        Ss   13:33   0:00 /usr/lib/systemd/systemd --user
smith       1043  0.0  0.0  21168  3568 ?        S    13:33   0:00 (sd-pam)
smith       1054  0.0  0.1   8656  5628 tty1     S    13:33   0:00 -bash
smith       1268  0.1  0.2  14624  8720 tty1     S+   13:41   0:00 ssh smith@192.168.56.11
root        1269  0.0  0.2  14744 10460 ?        Ss   13:41   0:00 sshd: smith [priv]
smith       1325  0.0  0.1  15004  7136 ?        S    13:41   0:00 sshd: smith@pts/0
smith       1326  0.0  0.1   8656  5656 pts/0    Ss+  13:41   0:00 -bash
root        1464  0.0  0.2  14744 10484 ?        Ss   13:42   0:00 sshd: smith [priv]
smith       1520  0.9  0.1  15004  7108 ?        S    13:42   0:00 sshd: smith@pts/1
smith       1521  0.0  0.1   8652  5660 pts/1    Ss   13:42   0:00 -bash
smith       1535  0.0  0.1  10892  4584 pts/1    R+   13:43   0:00 ps aux
smith       1536  0.0  0.0   6548  2324 pts/1    S+   13:43   0:00 grep smith
```

## 2. Filter processes using regex

Command: `ps aux | grep -E '^smith[[:space:]]'`

Output:
```text
smith       1042  0.0  0.2  20176 11344 ?        Ss   13:33   0:00 /usr/lib/systemd/systemd --user
smith       1043  0.0  0.0  21168  3568 ?        S    13:33   0:00 (sd-pam)
smith       1054  0.0  0.1   8656  5628 tty1     S    13:33   0:00 -bash
smith       1268  0.1  0.2  14624  8720 tty1     S+   13:41   0:00 ssh smith@192.168.56.11
smith       1325  0.0  0.1  15004  7136 ?        S    13:41   0:00 sshd: smith@pts/0
smith       1326  0.0  0.1   8656  5656 pts/0    Ss+  13:41   0:00 -bash
smith       1520  0.9  0.1  15004  7108 ?        S    13:42   0:00 sshd: smith@pts/1
smith       1521  0.0  0.1   8652  5660 pts/1    Ss   13:42   0:00 -bash
smith       1537  0.0  0.1  10892  4588 pts/1    R+   13:43   0:00 ps aux
smith       1538  0.0  0.0   6680  2324 pts/1    S+   13:43   0:00 grep -E ^smith[[:space:]]
```

## 3. Display processes except root

Command: `ps aux | grep -vE '^root[[:space:]]'`

Output:
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     572  0.0  0.2  19024  9484 ?        Ss   13:32   0:00 /usr/lib/systemd/systemd-networkd
systemd+     589  0.0  0.3  21480 12984 ?        Ss   13:32   0:00 /usr/lib/systemd/systemd-resolved
systemd+     594  0.0  0.1  91036  7912 ?        Ssl  13:32   0:00 /usr/lib/systemd/systemd-timesyncd
message+     700  0.0  0.1   9928  5728 ?        Ss   13:32   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      704  0.0  0.2 308180  8112 ?        Ssl  13:32   0:00 /usr/lib/polkit-1/polkitd --no-debug
syslog       737  0.0  0.1 222516  6020 ?        Ssl  13:32   0:00 /usr/sbin/rsyslogd -n -iNONE
smith       1042  0.0  0.2  20176 11344 ?        Ss   13:33   0:00 /usr/lib/systemd/systemd --user
smith       1043  0.0  0.0  21168  3568 ?        S    13:33   0:00 (sd-pam)
smith       1054  0.0  0.1   8656  5628 tty1     S    13:33   0:00 -bash
smith       1268  0.1  0.2  14624  8720 tty1     S+   13:41   0:00 ssh smith@192.168.56.11
smith       1325  0.0  0.1  15004  7136 ?        S    13:41   0:00 sshd: smith@pts/0
smith       1326  0.0  0.1   8656  5656 pts/0    Ss+  13:41   0:00 -bash
smith       1520  0.9  0.1  15004  7108 ?        S    13:42   0:00 sshd: smith@pts/1
smith       1521  0.0  0.1   8652  5660 pts/1    Ss   13:42   0:00 -bash
smith       1539  0.0  0.1  10892  4588 pts/1    R+   13:43   0:00 ps aux
smith       1540  0.0  0.0   6680  2324 pts/1    S+   13:43   0:00 grep -vE ^root[[:space:]]
```

## 4. Filter out kworker and irq processes

Command: `ps aux | grep -Ev 'kworker|irq'`

Output:
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.2  0.3  22636 13804 ?        Ss   13:32   0:01 /sbin/init
root           2  0.0  0.0      0     0 ?        S    13:32   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    13:32   0:00 [pool_workqueue_release]
root          13  0.0  0.0      0     0 ?        I    13:32   0:00 [rcu_tasks_kthread]
root          14  0.0  0.0      0     0 ?        I    13:32   0:00 [rcu_tasks_rude_kthread]
root          15  0.0  0.0      0     0 ?        I    13:32   0:00 [rcu_tasks_trace_kthread]
root          17  0.0  0.0      0     0 ?        I    13:32   0:00 [rcu_preempt]
root          18  0.0  0.0      0     0 ?        S    13:32   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    13:32   0:00 [idle_inject/0]
root          20  0.0  0.0      0     0 ?        S    13:32   0:00 [cpuhp/0]
root          21  0.0  0.0      0     0 ?        S    13:32   0:00 [cpuhp/1]
root          22  0.0  0.0      0     0 ?        S    13:32   0:00 [idle_inject/1]
root          23  0.0  0.0      0     0 ?        S    13:32   0:00 [migration/1]
root          29  0.0  0.0      0     0 ?        S    13:32   0:00 [kdevtmpfs]
root          31  0.0  0.0      0     0 ?        S    13:32   0:00 [kauditd]
root          32  0.0  0.0      0     0 ?        S    13:32   0:00 [khungtaskd]
root          33  0.0  0.0      0     0 ?        S    13:32   0:00 [oom_reaper]
root          37  0.0  0.0      0     0 ?        S    13:32   0:00 [kcompactd0]
root          38  0.0  0.0      0     0 ?        SN   13:32   0:00 [ksmd]
root          39  0.0  0.0      0     0 ?        SN   13:32   0:00 [khugepaged]
root          51  0.0  0.0      0     0 ?        S    13:32   0:00 [watchdogd]
root          54  0.0  0.0      0     0 ?        S    13:32   0:00 [kswapd0]
root          55  0.0  0.0      0     0 ?        S    13:32   0:00 [ecryptfs-kthread]
root          58  0.0  0.0      0     0 ?        S    13:32   0:00 [scsi_eh_0]
root          60  0.0  0.0      0     0 ?        S    13:32   0:00 [scsi_eh_1]
root         160  0.0  0.0      0     0 ?        S    13:32   0:00 [scsi_eh_2]
root         252  0.0  0.0      0     0 ?        S    13:32   0:00 [jbd2/dm-0-8]
root         317  0.0  0.4  50456 16424 ?        S<s  13:32   0:00 /usr/lib/systemd/systemd-journald
root         369  0.0  0.6 289124 27460 ?        SLsl 13:32   0:00 /sbin/multipathd -d -s
root         381  0.0  0.1  29092  7868 ?        Ss   13:32   0:00 /usr/lib/systemd/systemd-udevd
root         394  0.0  0.0      0     0 ?        S    13:32   0:00 [psimon]
root         533  0.0  0.0      0     0 ?        S    13:32   0:00 [jbd2/sda2-8]
systemd+     572  0.0  0.2  19024  9484 ?        Ss   13:32   0:00 /usr/lib/systemd/systemd-networkd
systemd+     589  0.0  0.3  21480 12984 ?        Ss   13:32   0:00 /usr/lib/systemd/systemd-resolved
systemd+     594  0.0  0.1  91036  7912 ?        Ssl  13:32   0:00 /usr/lib/systemd/systemd-timesyncd
message+     700  0.0  0.1   9928  5728 ?        Ss   13:32   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      704  0.0  0.2 308180  8112 ?        Ssl  13:32   0:00 /usr/lib/polkit-1/polkitd --no-debug
root         711  0.0  0.2  18148  8892 ?        Ss   13:32   0:00 /usr/lib/systemd/systemd-logind
root         712  0.0  0.3 468988 13588 ?        Ssl  13:32   0:00 /usr/libexec/udisks2/udisksd
root         727  0.0  0.4 333528 18484 ?        Ssl  13:32   0:00 /usr/sbin/NetworkManager --no-daemon
root         728  0.0  0.1  17392  6348 ?        Ss   13:32   0:00 /usr/sbin/wpa_supplicant -u -s -O DIR=/run/wpa_supplicant GROUP=netdev
syslog       737  0.0  0.1 222516  6020 ?        Ssl  13:32   0:00 /usr/sbin/rsyslogd -n -iNONE
root         760  0.0  0.3 392036 12816 ?        Ssl  13:32   0:00 /usr/sbin/ModemManager
root         891  0.0  0.5 109676 23196 ?        Ssl  13:32   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root         902  0.0  0.0   6828  2908 ?        Ss   13:32   0:00 /usr/sbin/cron -f -P
root         908  0.0  0.2  12028  8256 ?        Ss   13:32   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root         914  0.0  0.1   6960  4868 tty1     Ss   13:32   0:00 /bin/login -p --
smith       1042  0.0  0.2  20176 11344 ?        Ss   13:33   0:00 /usr/lib/systemd/systemd --user
smith       1043  0.0  0.0  21168  3568 ?        S    13:33   0:00 (sd-pam)
smith       1054  0.0  0.1   8656  5628 tty1     S    13:33   0:00 -bash
smith       1268  0.1  0.2  14624  8720 tty1     S+   13:41   0:00 ssh smith@192.168.56.11
root        1269  0.0  0.2  14744 10460 ?        Ss   13:41   0:00 sshd: smith [priv]
smith       1325  0.0  0.1  15004  7136 ?        S    13:41   0:00 sshd: smith@pts/0
smith       1326  0.0  0.1   8656  5656 pts/0    Ss+  13:41   0:00 -bash
root        1462  0.0  0.0      0     0 ?        S    13:42   0:00 [psimon]
root        1464  0.0  0.2  14744 10484 ?        Ss   13:42   0:00 sshd: smith [priv]
smith       1520  0.9  0.1  15004  7108 ?        S    13:42   0:00 sshd: smith@pts/1
smith       1521  0.0  0.1   8652  5660 pts/1    Ss   13:42   0:00 -bash
smith       1541  0.0  0.1  10892  4592 pts/1    R+   13:43   0:00 ps aux
```
