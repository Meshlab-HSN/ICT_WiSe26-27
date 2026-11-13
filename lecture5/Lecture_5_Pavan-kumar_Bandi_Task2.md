#Lecture 5 Task2 : Search and Filter

##1. Filter processes containing username

Command :
ps aux | grep 'pavan'

Output :
root        1075  0.0  0.1  10760  4396 ?        Ss   10:08   0:00 login -- pavan-bandi
pavan-b+    1358  0.0  0.3  22540 12372 ?        Ss   10:08   0:00 /usr/lib/systemd/systemd --user
pavan-b+    1366  0.0  0.1  25144  3900 ?        S    10:08   0:00 (sd-pam)
pavan-b+    1384  0.0  0.2  10620  7676 tty1     Ss+  10:08   0:00 -bash
root        2341  0.0  0.3  20316 11008 ?        Ss   13:14   0:00 sshd-session: pavan-bandi [priv]
pavan-b+    2442  0.5  0.2  22364  9324 ?        S    13:14   0:00 sshd-session: pavan-bandi@pts/0
pavan-b+    2443  0.0  0.1   8996  5360 pts/0    Ss   13:14   0:00 -bash
pavan-b+    2504  100  0.1  10164  5172 pts/0    R+   13:15   0:00 ps aux
pavan-b+    2505  0.0  0.0   8064  2152 pts/0    S+   13:15   0:00 grep --color=auto pavan



##2. Filter only processes running by user with regex

Command : 
ps aux | grep -E 'pavan-b[+]?[[:space:]]'

Output:
pavan-b+    1358  0.0  0.3  22540 12372 ?        Ss   10:08   0:00 /usr/lib/systemd/systemd --user
pavan-b+    1366  0.0  0.1  25144  3900 ?        S    10:08   0:00 (sd-pam)
pavan-b+    1384  0.0  0.2  10620  7676 tty1     Ss+  10:08   0:00 -bash
pavan-b+    2442  0.3  0.2  22364  9324 ?        S    13:14   0:01 sshd-session: pavan-bandi@pts/0
pavan-b+    2443  0.0  0.1   8996  5492 pts/0    Ss   13:14   0:00 -bash
pavan-b+    2547  0.0  0.1   9168  3892 pts/0    R+   13:20   0:00 ps aux
pavan-b+    2548  0.0  0.0   6368  2200 pts/0    S+   13:20   0:00 grep --color=auto -E pavan-b[+]?[[:space:]]



##3. List all process except root
Command : 
ps aux | grep -vE '^root[[:space:]]'

Output :
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     594  0.0  0.4  22396 14480 ?        Ss   10:08   0:00 /usr/lib/systemd/systemd-resolved
systemd+     878  0.0  0.3  22880 13676 ?        Ss   10:08   0:00 /usr/lib/systemd/systemd-networkd
message+    1004  0.0  0.1   8708  4948 ?        Ss   10:08   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1016  0.0  0.4 308828 15900 ?        Ssl  10:08   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
syslog      1077  0.0  0.3 221604 10532 ?        Ssl  10:08   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1106  0.0  0.3  24104 10588 ?        S    10:08   0:00 /usr/sbin/chronyd -n -F 1
_chrony     1127  0.0  0.0  13800  2168 ?        S    10:08   0:00 /usr/sbin/chronyd -n -F 1
pavan-b+    1358  0.0  0.3  22540 12372 ?        Ss   10:08   0:00 /usr/lib/systemd/systemd --user
pavan-b+    1366  0.0  0.1  25144  3900 ?        S    10:08   0:00 (sd-pam)
pavan-b+    1384  0.0  0.2  10620  7676 tty1     Ss+  10:08   0:00 -bash
pavan-b+    2442  0.3  0.2  22364  9324 ?        S    13:14   0:01 sshd-session: pavan-bandi@pts/0
pavan-b+    2443  0.0  0.1   8996  5492 pts/0    Ss   13:14   0:00 -bash
pavan-b+    2562  100  0.1   9124  3904 pts/0    R+   13:20   0:00 ps aux
pavan-b+    2563  0.0  0.0   7428  2152 pts/0    S+   13:20   0:00 grep --color=auto -vE ^root[[:space:]]



##4.Filter out kworker and irq processes

Command :
ps aux | grep -vE 'kworker|irq'

Output : 
 USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.5  27672 18492 ?        Ss   10:08   0:01 /usr/lib/systemd/systemd --switched-root --system --deserialize=55
root           2  0.0  0.0      0     0 ?        S    10:08   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    10:08   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    10:08   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    10:08   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    10:08   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    10:08   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    10:08   0:00 [idle_inject/0]
root          20  0.0  0.0      0     0 ?        S    10:08   0:00 [cpuhp/0]
root          21  0.0  0.0      0     0 ?        S    10:08   0:00 [cpuhp/1]
root          22  0.0  0.0      0     0 ?        S    10:08   0:00 [idle_inject/1]
root          23  0.0  0.0      0     0 ?        S    10:08   0:00 [migration/1]
root          27  0.0  0.0      0     0 ?        S    10:08   0:00 [cpuhp/2]
root          28  0.0  0.0      0     0 ?        S    10:08   0:00 [idle_inject/2]
root          29  0.0  0.0      0     0 ?        S    10:08   0:00 [migration/2]
root          33  0.0  0.0      0     0 ?        S    10:08   0:00 [cpuhp/3]
root          34  0.0  0.0      0     0 ?        S    10:08   0:00 [idle_inject/3]
root          35  0.0  0.0      0     0 ?        S    10:08   0:00 [migration/3]
root          39  0.0  0.0      0     0 ?        S    10:08   0:00 [kdevtmpfs]
root          41  0.0  0.0      0     0 ?        I    10:08   0:00 [rcu_tasks_kthread]
root          42  0.0  0.0      0     0 ?        I    10:08   0:00 [rcu_tasks_rude_kthread]
root          43  0.0  0.0      0     0 ?        S    10:08   0:00 [kauditd]
root          44  0.0  0.0      0     0 ?        S    10:08   0:00 [khungtaskd]
root          45  0.0  0.0      0     0 ?        S    10:08   0:00 [oom_reaper]
root          48  0.0  0.0      0     0 ?        S    10:08   0:01 [kcompactd0]
root          49  0.0  0.0      0     0 ?        SN   10:08   0:00 [ksmd]
root          51  0.0  0.0      0     0 ?        SN   10:08   0:00 [khugepaged]
root          56  0.0  0.0      0     0 ?        S<   10:08   0:00 [pr/ttyAMA-1]
root          65  0.0  0.0      0     0 ?        S    10:08   0:00 [watchdogd]
root          68  0.0  0.0      0     0 ?        S    10:08   0:00 [kswapd0]
root          69  0.0  0.0      0     0 ?        S    10:08   0:00 [ecryptfs-kthread]
root          82  0.0  0.0      0     0 ?        S    10:08   0:00 [hwrng]
root         343  0.0  0.0      0     0 ?        S    10:08   0:00 [card0-crtc0]
root         381  0.0  0.0      0     0 ?        S    10:08   0:00 [scsi_eh_0]
root         383  0.0  0.0      0     0 ?        S    10:08   0:02 [usb-storage]
root         441  0.0  0.0      0     0 ?        S    10:08   0:00 [jbd2/dm-0-8]
root         535  0.0  0.0      0     0 ?        S    10:08   0:00 [psimon]
root         541  0.0  0.4  50156 16268 ?        S<s  10:08   0:00 /usr/lib/systemd/systemd-journald
root         575  0.0  0.4 280912 17016 ?        SLsl 10:08   0:02 /usr/sbin/multipathd -d -s
root         593  0.0  0.4  41328 14012 ?        Ss   10:08   0:00 /usr/lib/systemd/systemd-udevd
systemd+     594  0.0  0.4  22396 14480 ?        Ss   10:08   0:00 /usr/lib/systemd/systemd-resolved
root         601  0.0  0.0      0     0 ?        S    10:08   0:00 [psimon]
root         764  0.0  0.0      0     0 ?        S    10:08   0:00 [jbd2/vda2-8]
systemd+     878  0.0  0.3  22880 13676 ?        Ss   10:08   0:00 /usr/lib/systemd/systemd-networkd
root        1003  0.0  0.0   2644  1660 ?        Ss   10:08   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+    1004  0.0  0.1   8708  4948 ?        Ss   10:08   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1010  0.0  0.8  49852 30848 ?        Ss   10:08   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
root        1014  0.0  0.0   8748  2824 ?        Ss   10:08   0:00 /usr/sbin/cron -f -P
polkitd     1016  0.0  0.4 308828 15900 ?        Ssl  10:08   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1021  0.0  0.2  18292  8788 ?        Ss   10:08   0:00 /usr/lib/systemd/systemd-logind
root        1024  0.0  0.8 548652 29840 ?        Ssl  10:08   0:00 /usr/libexec/udisks2/udisksd
root        1065  0.0  0.0   7472  2464 ?        Ss+  10:08   0:00 /usr/sbin/agetty --noreset --noclear --issue-file=/etc/issue:/etc/issue.d:/run/issue.d:/usr/lib/issue.d --keep-baud 115200,57600,38400,9600 - vt220
root        1075  0.0  0.1  10760  4396 ?        Ss   10:08   0:00 login -- pavan-bandi
syslog      1077  0.0  0.3 221604 10532 ?        Ssl  10:08   0:00 /usr/sbin/rsyslogd -n -iNONE
root        1085  0.0  1.0 129076 36120 ?        Ssl  10:08   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony     1106  0.0  0.3  24104 10588 ?        S    10:08   0:00 /usr/sbin/chronyd -n -F 1
root        1126  0.0  0.6 399252 23484 ?        Ssl  10:08   0:00 /usr/sbin/ModemManager
_chrony     1127  0.0  0.0  13800  2168 ?        S    10:08   0:00 /usr/sbin/chronyd -n -F 1
pavan-b+    1358  0.0  0.3  22540 12372 ?        Ss   10:08   0:00 /usr/lib/systemd/systemd --user
pavan-b+    1366  0.0  0.1  25144  3900 ?        S    10:08   0:00 (sd-pam)
pavan-b+    1384  0.0  0.2  10620  7676 tty1     Ss+  10:08   0:00 -bash
root        2338  0.0  0.2  11108  7396 ?        Ss   13:14   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        2341  0.0  0.3  20316 11008 ?        Ss   13:14   0:00 sshd-session: pavan-bandi [priv]
pavan-b+    2442  0.3  0.2  22364  9324 ?        S    13:14   0:01 sshd-session: pavan-bandi@pts/0
pavan-b+    2443  0.0  0.1   8996  5492 pts/0    Ss   13:14   0:00 -bash
pavan-b+    2574  100  0.1  10424  5208 pts/0    R+   13:20   0:00 ps aux
