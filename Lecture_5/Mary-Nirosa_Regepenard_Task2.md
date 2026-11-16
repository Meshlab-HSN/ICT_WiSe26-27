
# Lecture 5 – Task 2: Search and Filter

## Step 1: Change to the working directory

Command:
```bash
cd ~/shell-redirections
```

## Step 2: Search for processes belonging to my user

Command:
```bash
ps aux | grep mary-nirosa
```

Output:
root        3126  0.1  0.5  14732 10456 ?        Ss   17:01   0:00 sshd: mary-nirosa [priv]
mary-ni+    3186  0.0  0.3  14960  7124 ?        S    17:01   0:00 sshd: mary-nirosa@pts/0
mary-ni+    3198  0.0  0.1   6676  2332 pts/0    S+   17:02   0:00 grep --color=auto mary-nirosa

## Step 3: Search using the truncated username

Command:
```bash
ps aux | grep 'mary-ni+'
```

Output:
mary-ni+    2846  0.0  0.5  20168 11336 ?        Ss   16:16   0:00 /usr/lib/systemd/systemd --user
mary-ni+    2847  0.0  0.1  21156  3572 ?        S    16:16   0:00 (sd-pam)
mary-ni+    2857  0.0  0.2   8788  5720 tty1     S+   16:16   0:00 -bash
mary-ni+    3186  0.0  0.3  14960  7124 ?        S    17:01   0:00 sshd: mary-nirosa@pts/0
mary-ni+    3187  0.0  0.2   8780  5740 pts/0    Ss   17:01   0:00 -bash
mary-ni+    3202  0.0  0.2  10884  4580 pts/0    R+   17:05   0:00 ps aux
mary-ni+    3203  0.0  0.1   6544  2328 pts/0    S+   17:05   0:00 grep --color=auto mary-ni+

## Step 4: Use a regular expression to match the username

Command:
```bash
ps aux | grep '^mary-ni[+][[:space:]]'
```

Output:
mary-ni+    2846  0.0  0.5  20168 11336 ?        Ss   16:16   0:00 /usr/lib/systemd/systemd --user
mary-ni+    2847  0.0  0.1  21156  3572 ?        S    16:16   0:00 (sd-pam)
mary-ni+    2857  0.0  0.2   8788  5720 tty1     S+   16:16   0:00 -bash
mary-ni+    3186  0.0  0.3  14960  7124 ?        S    17:01   0:00 sshd: mary-nirosa@pts/0
mary-ni+    3187  0.0  0.2   8780  5740 pts/0    Ss   17:01   0:00 -bash
mary-ni+    3206  0.0  0.2  10884  4588 pts/0    R+   17:05   0:00 ps aux
mary-ni+    3207  0.0  0.1   6680  2336 pts/0    S+   17:05   0:00 grep --color=auto ^mary-ni[+][[:space:]]

## Step 5: Display all processes except root

Command:
```bash
ps aux | grep -v '^root[[:space:]]'
```

Output:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     416  0.0  0.4  19016  9572 ?        Ss   16:16   0:00 /usr/lib/systemd/systemd-networkd
systemd+     424  0.0  0.6  21472 13024 ?        Ss   16:16   0:00 /usr/lib/systemd/systemd-resolved
message+     585  0.0  0.2   9888  5580 ?        Ss   16:16   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      591  0.0  0.3 308164  7984 ?        Ssl  16:16   0:00 /usr/lib/polkit-1/polkitd --no-debug
syslog       670  0.0  0.3 222508  6152 ?        Ssl  16:16   0:00 /usr/sbin/rsyslogd -n -iNONE
mary-ni+    2846  0.0  0.5  20168 11336 ?        Ss   16:16   0:00 /usr/lib/systemd/systemd --user
mary-ni+    2847  0.0  0.1  21156  3572 ?        S    16:16   0:00 (sd-pam)
mary-ni+    2857  0.0  0.2   8788  5720 tty1     S+   16:16   0:00 -bash
mary-ni+    3186  0.0  0.3  14960  7124 ?        S    17:01   0:00 sshd: mary-nirosa@pts/0
mary-ni+    3187  0.0  0.2   8780  5740 pts/0    Ss   17:01   0:00 -bash
mary-ni+    3209  0.0  0.2  10884  4592 pts/0    R+   17:06   0:00 ps aux
mary-ni+    3210  0.0  0.1   6676  2320 pts/0    S+   17:06   0:00 grep --color=auto -v ^root[[:space:]]

## Step 6: Exclude kworker and irq processes

Command:
```bash
ps aux | grep -Ev '[k]worker|[i]rq'
```

Output:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.6  22152 13376 ?        Ss   16:16   0:01 /sbin/init
root           2  0.0  0.0      0     0 ?        S    16:16   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    16:16   0:00 [pool_workqueue_release]
root          13  0.0  0.0      0     0 ?        I    16:16   0:00 [rcu_tasks_kthread]
root          14  0.0  0.0      0     0 ?        I    16:16   0:00 [rcu_tasks_rude_kthread]
root          15  0.0  0.0      0     0 ?        I    16:16   0:00 [rcu_tasks_trace_kthread]
root          17  0.0  0.0      0     0 ?        I    16:16   0:00 [rcu_preempt]
root          18  0.0  0.0      0     0 ?        S    16:16   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    16:16   0:00 [idle_inject/0]
root          20  0.0  0.0      0     0 ?        S    16:16   0:00 [cpuhp/0]
root          21  0.0  0.0      0     0 ?        S    16:16   0:00 [kdevtmpfs]
root          23  0.0  0.0      0     0 ?        S    16:16   0:00 [kauditd]
root          24  0.0  0.0      0     0 ?        S    16:16   0:00 [khungtaskd]
root          26  0.0  0.0      0     0 ?        S    16:16   0:00 [oom_reaper]
root          29  0.0  0.0      0     0 ?        S    16:16   0:00 [kcompactd0]
root          30  0.0  0.0      0     0 ?        SN   16:16   0:00 [ksmd]
root          31  0.0  0.0      0     0 ?        SN   16:16   0:00 [khugepaged]
root          42  0.0  0.0      0     0 ?        S    16:16   0:00 [watchdogd]
root          45  0.0  0.0      0     0 ?        S    16:16   0:00 [kswapd0]
root          46  0.0  0.0      0     0 ?        S    16:16   0:00 [ecryptfs-kthread]
root          49  0.0  0.0      0     0 ?        S    16:16   0:00 [scsi_eh_0]
root          51  0.0  0.0      0     0 ?        S    16:16   0:00 [scsi_eh_1]
root         126  0.0  0.0      0     0 ?        S    16:16   0:00 [scsi_eh_2]
root         218  0.0  0.0      0     0 ?        S    16:16   0:00 [jbd2/sda2-8]
root         279  0.0  0.0      0     0 ?        S    16:16   0:00 [psimon]
root         284  0.0  0.8  66860 17308 ?        S<s  16:16   0:00 /usr/lib/systemd/systemd-journald
root         318  0.0  1.3 288988 27324 ?        SLsl 16:16   0:00 /sbin/multipathd -d -s
root         344  0.0  0.4  29224  8092 ?        Ss   16:16   0:00 /usr/lib/systemd/systemd-udevd
root         413  0.0  0.0      0     0 ?        S    16:16   0:00 [psimon]
systemd+     416  0.0  0.4  19016  9572 ?        Ss   16:16   0:00 /usr/lib/systemd/systemd-networkd
systemd+     424  0.0  0.6  21472 13024 ?        Ss   16:16   0:00 /usr/lib/systemd/systemd-resolved
message+     585  0.0  0.2   9888  5580 ?        Ss   16:16   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      591  0.0  0.3 308164  7984 ?        Ssl  16:16   0:00 /usr/lib/polkit-1/polkitd --no-debug
root         593  0.1  4.7 2037972 94860 ?       Ssl  16:16   0:04 dockerd --group docker --exec-root=/run/snap.docker --data-root=/var/snap/docker/common/var-lib-docker --pidfile=/run/snap.docker/docker.pid --config-file=/var/snap/docker/3618/config/daemon.json
root         596  0.0  1.9 1776896 38884 ?       Ssl  16:16   0:00 /usr/lib/snapd/snapd
root         599  0.0  0.4  18128  8952 ?        Ss   16:16   0:00 /usr/lib/systemd/systemd-logind
root         600  0.0  0.6 468988 13720 ?        Ssl  16:16   0:00 /usr/libexec/udisks2/udisksd
root         629  0.0  1.1 109660 23168 ?        Ssl  16:16   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root         656  0.0  0.6 392028 12892 ?        Ssl  16:16   0:00 /usr/sbin/ModemManager
syslog       670  0.0  0.3 222508  6152 ?        Ssl  16:16   0:00 /usr/sbin/rsyslogd -n -iNONE
root         679  0.0  0.2 293152  4140 ?        Sl   16:16   0:00 /usr/sbin/VBoxService
root         694  0.0  0.1   6824  2908 ?        Ss   16:16   0:00 /usr/sbin/cron -f -P
root         707  0.0  0.4  12020  8300 ?        Ss   16:16   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root         711  0.0  0.2   6972  4880 tty1     Ss   16:16   0:00 /bin/login -p --
root         902  0.0  2.1 1813036 43284 ?       Ssl  16:16   0:02 /snap/docker/3618/bin/containerd --config /run/snap.docker/containerd/containerd.toml
mary-ni+    2846  0.0  0.5  20168 11336 ?        Ss   16:16   0:00 /usr/lib/systemd/systemd --user
mary-ni+    2847  0.0  0.1  21156  3572 ?        S    16:16   0:00 (sd-pam)
mary-ni+    2857  0.0  0.2   8788  5720 tty1     S+   16:16   0:00 -bash
root        3073  0.1  2.2 636236 45432 ?        Ssl  16:26   0:03 /usr/libexec/fwupd/fwupd
root        3080  0.0  0.4 314216  9416 ?        Ssl  16:26   0:01 /usr/libexec/upowerd
root        3126  0.0  0.5  14732 10456 ?        Ss   17:01   0:00 sshd: mary-nirosa [priv]
mary-ni+    3186  0.0  0.3  14960  7124 ?        S    17:01   0:00 sshd: mary-nirosa@pts/0
mary-ni+    3187  0.0  0.2   8780  5740 pts/0    Ss   17:01   0:00 -bash
mary-ni+    3211  0.0  0.2  10884  4572 pts/0    R+   17:06   0:00 ps aux
mary-ni+    3212  0.0  0.1   6676  2336 pts/0    S+   17:06   0:00 grep --color=auto -Ev [k]worker|[i]rq
