# Lecture 5 - Task 2
## Search and Filter

### 1. Search processes using grep

**Command:**
```bash
ps aux | grep farhan-maqbool
```

**Explanation:**
Searches for processes containing my username.

**Output:**
```text
root        1184  0.0  0.0   8764  5632 ?        Ss   21:56   0:00 login -- farhan-maqbool
root        2303  0.0  0.1  18424 12232 ?        Ss   22:37   0:00 sshd-session: farhan-maqbool [priv]
farhan-+    2359  0.1  0.1  18560  7688 ?        S    22:37   0:02 sshd-session: farhan-maqbool@pts/0
farhan-+    3043  0.0  0.0   6716  2684 pts/0    S+   23:10   0:00 grep --color=auto farhan-maqbool
```

### 2. Search processes using a regular expression

**Command:**
```bash
ps aux | grep -E '^farhan-\+'
```

**Explanation:**
Uses an extended regular expression to find processes belonging to my user. Linux shortens my username to `farhan-+` in the `ps aux` output.

**Output:**
```text
farhan-+    1505  0.0  0.1  22256 13064 ?        Ss   21:57   0:00 /usr/lib/systemd/systemd --user
farhan-+    1511  0.0  0.0  23012  4100 ?        S    21:57   0:00 (sd-pam)
farhan-+    1530  0.0  0.0   8856  6116 tty1     Ss+  21:57   0:00 -bash
farhan-+    3216  0.1  0.1  18564  7696 ?        S    23:16   0:00 sshd-session: farhan-maqbool@pts/0
farhan-+    3217  0.0  0.0   8844  5928 pts/0    Ss   23:16   0:00 -bash
farhan-+    3313  0.0  0.0   9764  4692 pts/0    R+   23:19   0:00 ps aux
farhan-+    3314  0.0  0.0   6716  2648 pts/0    S+   23:19   0:00 grep --color=auto -E ^farhan-\+
```

### 3. Exclude root processes

**Command:**
```bash
ps aux | grep -v '^root[[:space:]]'
```

**Explanation:**
Displays processes while excluding lines belonging to the root user.

**Output (sample):**
```text
USER         PID %CPU %MEM COMMAND
systemd+     628  0.0  0.1 /usr/lib/systemd/systemd-resolved
systemd+     976  0.0  0.1 /usr/lib/systemd/systemd-networkd
message+    1098  0.0  0.0 @dbus-daemon
polkitd     1106  0.0  0.1 /usr/lib/polkit-1/polkitd
_chrony     1188  0.0  0.1 /usr/sbin/chronyd
syslog      1257  0.0  0.0 /usr/sbin/rsyslogd
farhan-+    1505  0.0  0.1 /usr/lib/systemd/systemd --user
farhan-+    1511  0.0  0.0 (sd-pam)
farhan-+    1530  0.0  0.0 -bash
```

### 4. Exclude kworker and irq processes

**Command:**
```bash
ps aux | grep -Ev 'kworker|irq'
```

**Explanation:**
Uses extended grep with the invert-match option to exclude lines containing `kworker` or `irq`.

**Output:**
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.2  24996 16464 ?        Ss   21:56   0:02 /usr/lib/systemd/systemd --switched-root --system --deserialize=55
root           2  0.0  0.0      0     0 ?        S    21:56   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    21:56   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    21:56   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    21:56   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    21:56   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    21:56   0:00 [migration/0]
root          20  0.0  0.0      0     0 ?        S    21:56   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    21:56   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    21:56   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    21:56   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    21:56   0:00 [migration/1]
root          28  0.0  0.0      0     0 ?        S    21:56   0:00 [cpuhp/2]
root          29  0.0  0.0      0     0 ?        S    21:56   0:00 [idle_inject/2]
root          30  0.0  0.0      0     0 ?        S    21:56   0:00 [migration/2]
root          34  0.0  0.0      0     0 ?        S    21:56   0:00 [cpuhp/3]
root          35  0.0  0.0      0     0 ?        S    21:56   0:00 [idle_inject/3]
root          36  0.0  0.0      0     0 ?        S    21:56   0:00 [migration/3]
root          46  0.0  0.0      0     0 ?        I    21:56   0:00 [rcu_tasks_kthread]
root          47  0.0  0.0      0     0 ?        I    21:56   0:00 [rcu_tasks_rude_kthread]
root          48  0.0  0.0      0     0 ?        S    21:56   0:00 [kauditd]
root          49  0.0  0.0      0     0 ?        S    21:56   0:00 [khungtaskd]
root          50  0.0  0.0      0     0 ?        S    21:56   0:00 [oom_reaper]
root          54  0.0  0.0      0     0 ?        S    21:56   0:00 [kcompactd0]
root          55  0.0  0.0      0     0 ?        SN   21:56   0:00 [ksmd]
root          56  0.0  0.0      0     0 ?        SN   21:56   0:00 [khugepaged]
root          69  0.0  0.0      0     0 ?        S    21:56   0:00 [watchdogd]
root          72  0.0  0.0      0     0 ?        S    21:56   0:00 [kswapd0]
root          74  0.0  0.0      0     0 ?        S    21:56   0:00 [ecryptfs-kthread]
root          77  0.0  0.0      0     0 ?        S    21:56   0:00 [scsi_eh_0]
root          79  0.0  0.0      0     0 ?        S    21:56   0:00 [scsi_eh_1]
root         354  0.0  0.0      0     0 ?        S    21:56   0:00 [scsi_eh_2]
root         472  0.0  0.0      0     0 ?        S    21:56   0:00 [jbd2/dm-0-8]
root         567  0.0  0.0      0     0 ?        S    21:56   0:00 [psimon]
root         573  0.0  0.2  50660 17804 ?        S<s  21:56   0:00 /usr/lib/systemd/systemd-journald
root         607  0.0  0.1 279492  9644 ?        SLsl 21:56   0:00 /usr/sbin/multipathd -d -s
systemd+     628  0.0  0.1  22628 14688 ?        Ss   21:56   0:00 /usr/lib/systemd/systemd-resolved
root         631  0.0  0.1  40072 14176 ?        Ss   21:56   0:00 /usr/lib/systemd/systemd-udevd
root         636  0.0  0.0      0     0 ?        S    21:56   0:00 [psimon]
root         843  0.0  0.0      0     0 ?        S    21:56   0:00 [jbd2/sda2-8]
systemd+     976  0.0  0.1  21432 12348 ?        Ss   21:56   0:00 /usr/lib/systemd/systemd-networkd
root        1096  0.0  0.0   2888  2016 ?        Ss   21:56   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root        1097  0.0  0.0   7060  3352 ?        Ss   21:56   0:00 /usr/sbin/cron -f -P
message+    1098  0.0  0.0   9148  5784 ?        Ss   21:56   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1105  0.0  0.3  46744 30204 ?        Ss   21:56   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1106  0.0  0.1 306448  8456 ?        Ssl  21:56   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1110  0.0  0.5 1928588 41940 ?       Ssl  21:56   0:00 /snap/snapd/current/usr/lib/snapd/snapd
root        1114  0.0  0.1  18564  9672 ?        Ss   21:56   0:00 /usr/lib/systemd/systemd-logind
root        1116  0.0  0.2 543448 15288 ?        Ssl  21:56   0:00 /usr/libexec/udisks2/udisksd
root        1153  0.0  0.1  10744  7792 ?        Ss   21:56   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        1184  0.0  0.0   8764  5632 ?        Ss   21:56   0:00 login -- farhan-maqbool
_chrony     1188  0.0  0.1  23872 11384 ?        S    21:56   0:00 /usr/sbin/chronyd -n -F 1
root        1201  0.0  0.4 126112 32992 ?       Ssl  21:56   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony     1202  0.0  0.0  12096  2440 ?        S    21:56   0:00 /usr/sbin/chronyd -n -F 1
root        1230  0.0  0.0 221556  2964 ?        Sl   21:56   0:03 /usr/bin/VBoxDRMClient
root        1234  0.0  0.0 292100  3816 ?        Sl   21:56   0:00 /usr/sbin/VBoxService
root        1268  0.0  0.1 391608 14260 ?        Ssl  21:56   0:00 /usr/sbin/ModemManager
farhan-+    1505  0.0  0.1  22256 13064 ?        Ss   21:57   0:00 /usr/lib/systemd/systemd --user
farhan-+    1511  0.0  0.0  23012  4100 ?        S    21:57   0:00 (sd-pam)
farhan-+    1530  0.0  0.0   8856  6116 tty1     Ss+  21:57   0:00 -bash
root        2013  0.0  0.6 366000 46000 ?        Ssl  22:25   0:00 /usr/libexec/fwupd/fwupd
root        2023  0.0  0.1 318676 11500 ?        Ssl  22:25   0:00 /usr/libexec/upowerd
root        3118  0.0  0.1  18268 12228 ?        Ss   23:16   0:00 sshd-session: farhan-maqbool [priv]
farhan-+    3216  0.1  0.1  18564  7696 ?        S    23:16   0:02 sshd-session: farhan-maqbool@pts/0
farhan-+    3217  0.0  0.0   8844  5928 pts/0    Ss   23:16   0:00 -bash
farhan-+    3514  0.0  0.0   9764  4728 pts/0    R+   23:45   0:00 ps aux
```

**Result:**
Lines containing `kworker` or `irq` are excluded from the output.
