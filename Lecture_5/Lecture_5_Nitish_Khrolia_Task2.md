# Lecture 5 - Task 2: Search and Filter

## 1. Filter processes containing my username

Command:
ps aux | grep 'nitishk'

root        1243  0.0  0.1  18424 12204 ?        Ss   04:53   0:00 sshd-session: nitishkhrolia [priv]
nitishk+    1248  0.0  0.1  22048 12988 ?        Ss   04:53   0:00 /usr/lib/systemd/systemd --user
nitishk+    1250  0.0  0.0  23036  4076 ?        S    04:53   0:00 (sd-pam)
nitishk+    1346  0.3  0.1  18560  7688 ?        S    04:53   0:09 sshd-session: nitishkhrolia@pts/0
nitishk+    1347  0.0  0.0   8848  5876 pts/0    Ss   04:53   0:00 -bash
nitishk+    2690 66.6  0.0   9764  4672 pts/0    R+   05:33   0:00 ps aux
nitishk+    2691  0.0  0.0   6716  2680 pts/0    S+   05:33   0:00 grep --color=auto nitishk

## 2. Filter only processes running as my user

Command:
ps aux | grep -E '^nitishk[+]?[[:space:]]'

Output:
nitishk+    1248  0.0  0.1  22048 12988 ?        Ss   04:53   0:00 /usr/lib/systemd/systemd --user
nitishk+    1250  0.0  0.0  23036  4076 ?        S    04:53   0:00 (sd-pam)
nitishk+    1346  0.3  0.1  18560  7688 ?        S    04:53   0:09 sshd-session: nitishkhrolia@pts/0
nitishk+    1347  0.0  0.0   8848  5876 pts/0    Ss   04:53   0:01 -bash
nitishk+    2697  100  0.0   9764  4680 pts/0    R+   05:33   0:00 ps aux
nitishk+    2698 33.3  0.0   6848  2692 pts/0    S+   05:33   0:00 grep --color=auto -E ^nitishk[+]?[[:space:]]

## 3. List all processes except root

Command:
ps aux | grep -vE '^root[[:space:]]'

Output:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     552  0.0  0.2  22764 14764 ?        Ss   04:51   0:00 /usr/lib/systemd/systemd-resolved
systemd+     826  0.0  0.1  21464 12476 ?        Ss   04:52   0:00 /usr/lib/systemd/systemd-networkd
message+     859  0.0  0.0   9008  5728 ?        Ss   04:52   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      866  0.0  0.1 306448  8516 ?        Ssl  04:52   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony      921  0.0  0.0  20556  6484 ?        S    04:52   0:01 /usr/sbin/chronyd -n -F 1
_chrony      922  0.0  0.0  12096  2436 ?        S    04:52   0:00 /usr/sbin/chronyd -n -F 1
syslog       940  0.0  0.0 220552  5972 ?        Ssl  04:52   0:00 /usr/sbin/rsyslogd -n -iNONE
nitishk+    1248  0.0  0.1  22048 12988 ?        Ss   04:53   0:00 /usr/lib/systemd/systemd --user
nitishk+    1250  0.0  0.0  23036  4076 ?        S    04:53   0:00 (sd-pam)
nitishk+    1346  0.4  0.1  18560  7688 ?        S    04:53   0:09 sshd-session: nitishkhrolia@pts/0
nitishk+    1347  0.0  0.0   8848  5876 pts/0    Ss   04:53   0:01 -bash
nitishk+    2704  100  0.0   9764  4684 pts/0    R+   05:33   0:00 ps aux
nitishk+    2705  0.0  0.0   6716  2700 pts/0    S+   05:33   0:00 grep --color=auto -vE ^root[[:space:]]

## 4. Filter out kworker and irq processes

Command:
ps aux | grep -vE 'kworker|irq'

Output:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.2  0.2  25064 16368 ?        Ss   04:51   0:05 /usr/lib/systemd/systemd --switched-root --system --deserialize=56 splash noprompt noshell automatic-ubiquity crashkernel=2G-4G:320M,4G-32G:512M,32G-64G:1024M,64G-128G:2048M,128G-:4096M
root           2  0.0  0.0      0     0 ?        S    04:51   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    04:51   0:00 [pool_workqueue_release]
root          15  0.2  0.0      0     0 ?        I    04:51   0:05 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    04:51   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    04:51   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    04:51   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    04:51   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    04:51   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    04:51   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    04:51   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    04:51   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    04:51   0:00 [migration/1]
root          28  0.0  0.0      0     0 ?        S    04:51   0:00 [cpuhp/2]
root          29  0.0  0.0      0     0 ?        S    04:51   0:00 [idle_inject/2]
root          30  0.0  0.0      0     0 ?        S    04:51   0:00 [migration/2]
root          37  0.0  0.0      0     0 ?        S    04:51   0:00 [kdevtmpfs]
root          39  0.0  0.0      0     0 ?        I    04:51   0:00 [rcu_tasks_kthread]
root          40  0.0  0.0      0     0 ?        I    04:51   0:00 [rcu_tasks_rude_kthread]
root          41  0.0  0.0      0     0 ?        S    04:51   0:00 [kauditd]
root          42  0.0  0.0      0     0 ?        S    04:51   0:00 [khungtaskd]
root          43  0.0  0.0      0     0 ?        S    04:51   0:00 [oom_reaper]
root          47  0.0  0.0      0     0 ?        S    04:51   0:00 [kcompactd0]
root          48  0.0  0.0      0     0 ?        SN   04:51   0:00 [ksmd]
root          49  0.0  0.0      0     0 ?        SN   04:51   0:00 [khugepaged]
root          62  0.0  0.0      0     0 ?        S    04:51   0:00 [watchdogd]
root          65  0.0  0.0      0     0 ?        S    04:51   0:00 [kswapd0]
root          67  0.0  0.0      0     0 ?        S    04:51   0:00 [ecryptfs-kthread]
root          72  0.0  0.0      0     0 ?        S    04:51   0:00 [scsi_eh_0]
root          74  0.0  0.0      0     0 ?        S    04:51   0:00 [scsi_eh_1]
root         346  0.0  0.0      0     0 ?        S    04:51   0:00 [scsi_eh_2]
root         379  0.0  0.0      0     0 ?        S    04:51   0:00 [jbd2/sda2-8]
root         484  0.0  0.0      0     0 ?        S    04:51   0:00 [psimon]
root         491  0.0  0.2  50800 18356 ?        S<s  04:51   0:00 /usr/lib/systemd/systemd-journald
root         528  0.0  0.1 279496  9648 ?        SLsl 04:51   0:01 /usr/sbin/multipathd -d -s
root         543  0.0  0.2  41604 15552 ?        Ss   04:51   0:01 /usr/lib/systemd/systemd-udevd
systemd+     552  0.0  0.2  22764 14764 ?        Ss   04:51   0:00 /usr/lib/systemd/systemd-resolved
root         617  0.0  0.0      0     0 ?        S    04:51   0:00 [psimon]
systemd+     826  0.0  0.1  21464 12476 ?        Ss   04:52   0:00 /usr/lib/systemd/systemd-networkd
root         858  0.0  0.0   2888  2012 ?        Ss   04:52   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+     859  0.0  0.0   9008  5728 ?        Ss   04:52   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         865  0.0  0.4  46748 30212 ?        Ss   04:52   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      866  0.0  0.1 306448  8516 ?        Ssl  04:52   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root         869  0.0  0.6 1889360 45040 ?       Ssl  04:52   0:02 /usr/lib/snapd/snapd
root         871  0.0  0.1  18388  9796 ?        Ss   04:52   0:00 /usr/lib/systemd/systemd-logind
root         873  0.0  0.2 543356 15188 ?        Ssl  04:52   0:00 /usr/libexec/udisks2/udisksd
_chrony      921  0.0  0.0  20556  6484 ?        S    04:52   0:01 /usr/sbin/chronyd -n -F 1
_chrony      922  0.0  0.0  12096  2436 ?        S    04:52   0:00 /usr/sbin/chronyd -n -F 1
syslog       940  0.0  0.0 220552  5972 ?        Ssl  04:52   0:00 /usr/sbin/rsyslogd -n -iNONE
root         957  0.0  0.1  10744  7828 ?        Ss   04:52   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root         965  0.0  0.1 391612 14144 ?        Ssl  04:52   0:00 /usr/sbin/ModemManager
root         978  0.0  0.0   7060  3396 ?        Ss   04:52   0:00 /usr/sbin/cron -f -P
root         982  0.0  0.4 126120 32948 ?        Ssl  04:52   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root        1023  0.0  0.0   8488  2884 tty1     Ss+  04:52   0:00 /usr/sbin/agetty --noreset --noclear --issue-file=/etc/issue:/etc/issue.d:/run/issue.d:/usr/lib/issue.d - linux
root        1243  0.0  0.1  18424 12204 ?        Ss   04:53   0:00 sshd-session: nitishkhrolia [priv]
nitishk+    1248  0.0  0.1  22048 12988 ?        Ss   04:53   0:00 /usr/lib/systemd/systemd --user
nitishk+    1250  0.0  0.0  23036  4076 ?        S    04:53   0:00 (sd-pam)
nitishk+    1346  0.3  0.1  18560  7688 ?        S    04:53   0:09 sshd-session: nitishkhrolia@pts/0
nitishk+    1347  0.0  0.0   8848  5876 pts/0    Ss   04:53   0:01 -bash
root        2646  0.9  0.6 501532 47764 ?        Ssl  05:29   0:02 /usr/libexec/fwupd/fwupd
root        2655  0.0  0.1 318676 11408 ?        Ssl  05:29   0:00 /usr/libexec/upowerd
nitishk+    2711  100  0.0   9764  4680 pts/0    R+   05:33   0:00 ps aux

