# Lecture 5 - Task 2: Search and Filter

## 1. Search for processes belonging to my username

**Command:**
```bash
ps aux | grep tahir-khan
```

**Output:**
```text
root        1120  0.0  0.3  18156 11756 ?        Ss   15:08   0:00 sshd-session: tahir-khan [priv]
tahir-k+    1244  0.0  0.1  18292  7772 ?        S    15:08   0:00 sshd-session: tahir-khan@pts/0
tahir-k+    1709  0.0  0.0   2908  2000 pts/0    S+   15:29   0:00 /bin/sh -c ps aux | grep tahir-khan
tahir-k+    1711  0.0  0.0   7276  2336 pts/0    S+   15:29   0:00 grep tahir-khan
```

## 2. Filter processes using a regular expression

**Command:**
```bash
ps aux | grep -E '^[t]ahir-k\+'
```

**Output:**
```text
tahir-k+    1125  0.0  0.3  22232 12668 ?        Ss   15:08   0:00 /usr/lib/systemd/systemd --user
tahir-k+    1129  0.0  0.1  22756  4168 ?        S    15:08   0:00 (sd-pam)
tahir-k+    1244  0.0  0.1  18292  7772 ?        S    15:08   0:00 sshd-session: tahir-khan@pts/0
tahir-k+    1247  0.0  0.1   9280  5476 pts/0    Ss   15:08   0:00 -bash
tahir-k+    1708 33.3  0.3  21928 12684 pts/0    S+   15:29   0:00 python3 -
tahir-k+    1712  0.0  0.0   2908  2000 pts/0    S+   15:29   0:00 /bin/sh -c ps aux | grep -E '^[t]ahir-k\+'
tahir-k+    1713  0.0  0.1   9960  4140 pts/0    R+   15:29   0:00 ps aux
tahir-k+    1714  0.0  0.0   7276  2272 pts/0    S+   15:29   0:00 grep -E ^[t]ahir-k\+
```

## 3. Show all processes except root

**Command:**
```bash
ps aux | grep -v '^root[[:space:]]'
```

**Output:**
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     221  0.0  0.3  22284 14008 ?        Ss   15:01   0:00 /usr/lib/systemd/systemd-resolved
systemd+     587  0.0  0.3  24648 12208 ?        Ss   15:01   0:00 /usr/lib/systemd/systemd-networkd
message+     635  0.0  0.1   8756  5232 ?        Ss   15:01   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      655  0.0  0.2 381780  9960 ?        Ssl  15:01   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony      760  0.0  0.1  20264  7584 ?        S    15:01   0:00 /usr/sbin/chronyd -n -F 1
_chrony      766  0.0  0.0  11936  2416 ?        S    15:01   0:00 /usr/sbin/chronyd -n -F 1
syslog       800  0.0  0.1 220304  5956 ?        Ssl  15:01   0:00 /usr/sbin/rsyslogd -n -iNONE
tahir-k+    1125  0.0  0.3  22232 12668 ?        Ss   15:08   0:00 /usr/lib/systemd/systemd --user
tahir-k+    1129  0.0  0.1  22756  4168 ?        S    15:08   0:00 (sd-pam)
tahir-k+    1244  0.0  0.1  18292  7772 ?        S    15:08   0:00 sshd-session: tahir-khan@pts/0
tahir-k+    1247  0.0  0.1   9280  5476 pts/0    Ss   15:08   0:00 -bash
tahir-k+    1708 25.0  0.3  21928 12684 pts/0    S+   15:29   0:00 python3 -
tahir-k+    1715  0.0  0.0   2908  2000 pts/0    S+   15:29   0:00 /bin/sh -c ps aux | grep -v '^root[[:space:]]'
tahir-k+    1716  0.0  0.1   9960  4180 pts/0    R+   15:29   0:00 ps aux
tahir-k+    1717  0.0  0.0   7276  2296 pts/0    S+   15:29   0:00 grep -v ^root[[:space:]]
```

## 4. Exclude kworker and irq processes

**Command:**
```bash
ps aux | grep -Ev 'kworker|irq'
```

**Output:**
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.3  24760 15444 ?        Ss   15:01   0:00 /sbin/init
root           2  0.0  0.0      0     0 ?        S    15:01   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    15:01   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        S<   15:01   0:00 [pr/ttyS0]
root          16  0.0  0.0      0     0 ?        I    15:01   0:00 [rcu_sched]
root          17  0.0  0.0      0     0 ?        S    15:01   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          18  0.0  0.0      0     0 ?        S    15:01   0:00 [rcu_exp_gp_kthread_worker]
root          19  0.0  0.0      0     0 ?        S    15:01   0:00 [migration/0]
root          20  0.0  0.0      0     0 ?        S    15:01   0:00 [kprobe-optimizer]
root          21  0.0  0.0      0     0 ?        S    15:01   0:00 [idle_inject/0]
root          22  0.0  0.0      0     0 ?        S    15:01   0:00 [cpuhp/0]
root          23  0.0  0.0      0     0 ?        S    15:01   0:00 [cpuhp/1]
root          24  0.0  0.0      0     0 ?        S    15:01   0:00 [idle_inject/1]
root          25  0.0  0.0      0     0 ?        S    15:01   0:00 [migration/1]
root          29  0.0  0.0      0     0 ?        S    15:01   0:00 [kdevtmpfs]
root          31  0.0  0.0      0     0 ?        I    15:01   0:00 [rcu_tasks_kthread]
root          32  0.0  0.0      0     0 ?        I    15:01   0:00 [rcu_tasks_rude_kthread]
root          33  0.0  0.0      0     0 ?        S    15:01   0:00 [kauditd]
root          34  0.0  0.0      0     0 ?        S    15:01   0:00 [khungtaskd]
root          35  0.0  0.0      0     0 ?        S    15:01   0:00 [oom_reaper]
root          38  0.0  0.0      0     0 ?        S    15:01   0:00 [kcompactd0]
root          40  0.0  0.0      0     0 ?        SN   15:01   0:00 [ksmd]
root          41  0.0  0.0      0     0 ?        SN   15:01   0:00 [khugepaged]
root          54  0.0  0.0      0     0 ?        S    15:01   0:00 [watchdogd]
root          56  0.0  0.0      0     0 ?        S    15:01   0:00 [kswapd0]
root          57  0.0  0.0      0     0 ?        S    15:01   0:00 [ecryptfs-kthread]
root         121  0.0  0.0      0     0 ?        S    15:01   0:00 [jbd2/nvme0n1p1-8]
root         162  0.0  0.0      0     0 ?        S    15:01   0:00 [psimon]
root         168  0.0  0.6  58592 23420 ?        S<s  15:01   0:00 /usr/lib/systemd/systemd-journald
root         217  0.0  0.2 279208  9364 ?        SLsl 15:01   0:00 /usr/sbin/multipathd -d -s
systemd+     221  0.0  0.3  22284 14008 ?        Ss   15:01   0:00 /usr/lib/systemd/systemd-resolved
root         227  0.0  0.3  39052 13772 ?        Ss   15:01   0:00 /usr/lib/systemd/systemd-udevd
root         239  0.0  0.0      0     0 ?        S    15:01   0:00 [psimon]
root         298  0.0  0.0      0     0 ?        S    15:01   0:00 [jbd2/nvme0n1p13-8]
systemd+     587  0.0  0.3  24648 12208 ?        Ss   15:01   0:00 /usr/lib/systemd/systemd-networkd
root         630  0.0  0.0   2824  2028 ?        Ss   15:01   0:00 /usr/sbin/acpid
root         632  0.0  0.0   2908  2012 ?        Ss   15:01   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root         634  0.0  0.0   7488  3032 ?        Ss   15:01   0:00 /usr/sbin/cron -f -P
message+     635  0.0  0.1   8756  5232 ?        Ss   15:01   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         652  0.0  0.7  46828 29876 ?        Ss   15:01   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      655  0.0  0.2 381780  9960 ?        Ssl  15:01   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root         660  0.0  1.0 1815636 42408 ?       Ssl  15:01   0:00 /usr/lib/snapd/snapd
root         663  0.0  0.2  18192  9116 ?        Ss   15:01   0:00 /usr/lib/systemd/systemd-logind
root         666  0.0  0.3 543200 14920 ?        Ssl  15:01   0:00 /usr/libexec/udisks2/udisksd
root         692  0.0  0.1  10720  7580 ?        Ss   15:01   0:00 sshd: /usr/sbin/sshd -D -o AuthorizedKeysCommand /usr/share/ec2-instance-connect/eic_run_authorized_keys %u %f -o AuthorizedKeysCommandUser ec2-instance-connect [listener] 0 of 10-100 startups
root         696  0.0  0.0   8280  2628 ttyS0    Ss+  15:01   0:00 /usr/sbin/agetty --noreset --noclear --issue-file=/etc/issue:/etc/issue.d:/run/issue.d:/usr/lib/issue.d --keep-baud 115200,57600,38400,9600 - vt220
root         724  0.0  0.0   8236  2532 tty1     Ss+  15:01   0:00 /usr/sbin/agetty --noreset --noclear --issue-file=/etc/issue:/etc/issue.d:/run/issue.d:/usr/lib/issue.d - linux
_chrony      760  0.0  0.1  20264  7584 ?        S    15:01   0:00 /usr/sbin/chronyd -n -F 1
_chrony      766  0.0  0.0  11936  2416 ?        S    15:01   0:00 /usr/sbin/chronyd -n -F 1
root         774  0.0  0.8 126228 32380 ?        Ssl  15:01   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
syslog       800  0.0  0.1 220304  5956 ?        Ssl  15:01   0:00 /usr/sbin/rsyslogd -n -iNONE
root         828  0.0  0.3 333684 13172 ?        Ssl  15:01   0:00 /usr/sbin/ModemManager
root        1052  0.0  0.5 1759088 20880 ?       Ssl  15:01   0:00 /snap/amazon-ssm-agent/13349/amazon-ssm-agent
root        1120  0.0  0.3  18156 11756 ?        Ss   15:08   0:00 sshd-session: tahir-khan [priv]
tahir-k+    1125  0.0  0.3  22232 12668 ?        Ss   15:08   0:00 /usr/lib/systemd/systemd --user
tahir-k+    1129  0.0  0.1  22756  4168 ?        S    15:08   0:00 (sd-pam)
tahir-k+    1244  0.0  0.1  18292  7772 ?        S    15:08   0:00 sshd-session: tahir-khan@pts/0
tahir-k+    1247  0.0  0.1   9280  5476 pts/0    Ss   15:08   0:00 -bash
tahir-k+    1708 20.0  0.3  21928 12692 pts/0    S+   15:29   0:00 python3 -
tahir-k+    1719  0.0  0.1   9960  4140 pts/0    R+   15:29   0:00 ps aux
```

