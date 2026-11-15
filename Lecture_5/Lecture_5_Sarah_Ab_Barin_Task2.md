# Lecture 5 - Task 2: Search and Filter

## 1. Show only my processes using grep

Command:

    ps aux | grep 'sara-ab+'


Output:
```text
sara-ab+    1425  0.0  0.3  22024 12712 ?        Ss   16:34   0:00 /usr/lib/systemd/systemd --user
sara-ab+    1432  0.0  0.1  23012  4132 ?        S    16:34   0:00 (sd-pam)
sara-ab+    1451  0.0  0.1   8856  5828 tty1     Ss+  16:34   0:00 -bash
sara-ab+    1530  0.0  0.2  18560  7684 ?        S    16:36   0:02 sshd-session: sara-abbarin@pts/0
sara-ab+    1531  0.0  0.1   8844  5896 pts/0    Ss   16:36   0:00 -bash
sara-ab+    2351  0.0  0.1   9764  4684 pts/0    R+   20:10   0:00 ps aux
sara-ab+    2352  0.0  0.0   6716  2700 pts/0    S+   20:10   0:00 grep sara-ab+
```

## 2. Use regex to filter only my processes

Command:

    ps aux | grep '^sara-ab[+]'

Output:
```text
sara-ab+    1425  0.0  0.3  22024 12712 ?        Ss   16:34   0:00 /usr/lib/systemd/systemd --user
sara-ab+    1432  0.0  0.1  23012  4132 ?        S    16:34   0:00 (sd-pam)
sara-ab+    1451  0.0  0.1   8856  5828 tty1     Ss+  16:34   0:00 -bash
sara-ab+    1530  0.0  0.2  18560  7684 ?        S    16:36   0:02 sshd-session: sara-abbarin@pts/0
sara-ab+    1531  0.0  0.1   8844  5896 pts/0    Ss   16:36   0:00 -bash
sara-ab+    2373  0.0  0.1   9764  4672 pts/0    R+   20:15   0:00 ps aux
sara-ab+    2374  0.0  0.0   6716  2692 pts/0    S+   20:15   0:00 grep ^sara-ab[+]
```

## 3. Show all processes except root

Command:

    ps aux | grep -v '^root'

Output:
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     624  0.0  0.4  22624 14640 ?        Ss   16:32   0:00 /usr/lib/systemd/systemd-resolved
systemd+    1035  0.0  0.3  21376 12280 ?        Ss   16:32   0:00 /usr/lib/systemd/systemd-networkd
message+    1063  0.0  0.1   9132  5748 ?        Ss   16:32   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1077  0.0  0.2 306448  8444 ?        Ssl  16:32   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
syslog      1153  0.0  0.1 220548  5888 ?        Ssl  16:32   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1157  0.0  0.3  23872 11288 ?        S    16:32   0:00 /usr/sbin/chronyd -n -F 1
_chrony     1160  0.0  0.0  12096  2464 ?        S    16:32   0:00 /usr/sbin/chronyd -n -F 1
sara-ab+    1425  0.0  0.3  22024 12712 ?        Ss   16:34   0:00 /usr/lib/systemd/systemd --user
sara-ab+    1432  0.0  0.1  23012  4132 ?        S    16:34   0:00 (sd-pam)
sara-ab+    1451  0.0  0.1   8856  5828 tty1     Ss+  16:34   0:00 -bash
sara-ab+    1530  0.0  0.2  18560  7684 ?        S    16:36   0:02 sshd-session: sara-abbarin@pts/0
sara-ab+    1531  0.0  0.1   8844  5896 pts/0    Ss   16:36   0:00 -bash
sara-ab+    2421  0.0  0.1   9764  4692 pts/0    R+   20:17   0:00 ps aux
sara-ab+    2422  0.0  0.0   6716  2696 pts/0    S+   20:17   0:00 grep -v ^root
```

## 4. Exclude kworker and irq processes

Command:

    ps aux | grep -Ev 'kworker|irq'

Output:
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.4  25516 16468 ?        Ss   16:32   0:03 /usr/lib/systemd/systemd --switched-root --system --deserialize=55
root           2  0.0  0.0      0     0 ?        S    16:32   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    16:32   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    16:32   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    16:32   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    16:32   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    16:32   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    16:32   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    16:32   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    16:32   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    16:32   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    16:32   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    16:32   0:00 [migration/1]
root          28  0.0  0.0      0     0 ?        S    16:32   0:00 [cpuhp/2]
root          29  0.0  0.0      0     0 ?        S    16:32   0:00 [idle_inject/2]
root          30  0.0  0.0      0     0 ?        S    16:32   0:00 [migration/2]
root          34  0.0  0.0      0     0 ?        S    16:32   0:00 [cpuhp/3]
root          35  0.0  0.0      0     0 ?        S    16:32   0:00 [idle_inject/3]
root          36  0.0  0.0      0     0 ?        S    16:32   0:00 [migration/3]
root          44  0.0  0.0      0     0 ?        S    16:32   0:00 [kdevtmpfs]
root          46  0.0  0.0      0     0 ?        I    16:32   0:00 [rcu_tasks_kthread]
root          47  0.0  0.0      0     0 ?        I    16:32   0:00 [rcu_tasks_rude_kthread]
root          48  0.0  0.0      0     0 ?        S    16:32   0:00 [kauditd]
root          49  0.0  0.0      0     0 ?        S    16:32   0:00 [khungtaskd]
root          50  0.0  0.0      0     0 ?        S    16:32   0:00 [oom_reaper]
root          53  0.0  0.0      0     0 ?        S    16:32   0:00 [kcompactd0]
root          54  0.0  0.0      0     0 ?        SN   16:32   0:00 [ksmd]
root          56  0.0  0.0      0     0 ?        SN   16:32   0:00 [khugepaged]
root          69  0.0  0.0      0     0 ?        S    16:32   0:00 [watchdogd]
root          73  0.0  0.0      0     0 ?        S    16:32   0:00 [kswapd0]
root          74  0.0  0.0      0     0 ?        S    16:32   0:00 [ecryptfs-kthread]
root          79  0.0  0.0      0     0 ?        S    16:32   0:00 [scsi_eh_0]
root          81  0.0  0.0      0     0 ?        S    16:32   0:00 [scsi_eh_1]
root         354  0.0  0.0      0     0 ?        S    16:32   0:00 [scsi_eh_2]
root         471  0.0  0.0      0     0 ?        S    16:32   0:00 [jbd2/dm-0-8]
root         567  0.0  0.0      0     0 ?        S    16:32   0:00 [psimon]
root         573  0.0  0.4  50404 16856 ?        S<s  16:32   0:00 /usr/lib/systemd/systemd-journald
root         607  0.0  0.2 279492  9644 ?        SLsl 16:32   0:02 /usr/sbin/multipathd -d -s
systemd+     624  0.0  0.4  22624 14640 ?        Ss   16:32   0:00 /usr/lib/systemd/systemd-resolved
root         634  0.0  0.4  39572 13624 ?        Ss   16:32   0:00 /usr/lib/systemd/systemd-udevd
root         636  0.0  0.0      0     0 ?        S    16:32   0:00 [psimon]
root         721  0.0  0.0      0     0 ?        S    16:32   0:00 [jbd2/sda2-8]
systemd+    1035  0.0  0.3  21376 12280 ?        Ss   16:32   0:00 /usr/lib/systemd/systemd-networkd
root        1062  0.0  0.0   2888  2008 ?        Ss   16:32   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+    1063  0.0  0.1   9132  5748 ?        Ss   16:32   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1075  0.0  0.8  46744 30052 ?        Ss   16:32   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1077  0.0  0.2 306448  8444 ?        Ssl  16:32   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1086  0.0  0.2  18564  9736 ?        Ss   16:32   0:00 /usr/lib/systemd/systemd-logind
root        1088  0.0  0.4 543360 15180 ?        Ssl  16:32   0:00 /usr/libexec/udisks2/udisksd
root        1150  0.0  0.9 126112 32852 ?        Ssl  16:32   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
syslog      1153  0.0  0.1 220548  5888 ?        Ssl  16:32   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1157  0.0  0.3  23872 11288 ?        S    16:32   0:00 /usr/sbin/chronyd -n -F 1
_chrony     1160  0.0  0.0  12096  2464 ?        S    16:32   0:00 /usr/sbin/chronyd -n -F 1
root        1165  0.0  0.0   7060  3352 ?        Ss   16:32   0:00 /usr/sbin/cron -f -P
root        1194  0.0  0.4 391608 13976 ?        Ssl  16:32   0:00 /usr/sbin/ModemManager
root        1203  0.0  0.2  10744  7736 ?        Ss   16:32   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        1218  0.0  0.1   8760  5612 ?        Ss   16:32   0:00 login -- sara-abbarin
sara-ab+    1425  0.0  0.3  22024 12712 ?        Ss   16:34   0:00 /usr/lib/systemd/systemd --user
sara-ab+    1432  0.0  0.1  23012  4132 ?        S    16:34   0:00 (sd-pam)
sara-ab+    1451  0.0  0.1   8856  5828 tty1     Ss+  16:34   0:00 -bash
root        1472  0.0  0.3  18264 12124 ?        Ss   16:36   0:00 sshd-session: sara-abbarin [priv]
sara-ab+    1530  0.0  0.2  18560  7684 ?        S    16:36   0:02 sshd-session: sara-abbarin@pts/0
sara-ab+    1531  0.0  0.1   8844  5896 pts/0    Ss   16:36   0:00 -bash
root        1773  0.0  1.3 365940 46016 ?        Ssl  17:20   0:01 /usr/libexec/fwupd/fwupd
root        1782  0.0  0.3 318792 11488 ?        Ssl  17:20   0:07 /usr/libexec/upowerd
sara-ab+    2442  0.0  0.1   9764  4680 pts/0    R+   20:19   0:00 ps aux
```
