# Lecture 5 - Task 2: Search and filter
## 1. Processes containing the username
```
$ ps aux | grep aditya
root        5480  0.0  0.1  18424 12256 ?        Ss   17:38   0:00 sshd-session: aditya-sharma [priv]
aditya-+    5652  0.0  0.1  22148 13200 ?        Ss   17:38   0:00 /usr/lib/systemd/systemd --user
aditya-+    5672  0.0  0.0  23012  4100 ?        S    17:38   0:00 (sd-pam)
aditya-+    5813  0.2  0.1  18560  7784 ?        S    17:38   0:01 sshd-session: aditya-sharma@pts/0
aditya-+    5814  0.0  0.0   9264  6116 pts/0    Ss   17:38   0:00 -bash
aditya-+    6244  0.0  0.0   7944  3720 pts/0    S+   17:50   0:00 bash -c ps aux | grep aditya
aditya-+    6245  0.0  0.0  10208  4576 pts/0    R+   17:50   0:00 ps aux
aditya-+    6246  0.0  0.0   7124  2444 pts/0    S+   17:50   0:00 grep aditya
```

## 2. Only processes running as my user (regex)
```
$ ps aux | grep '^aditya-+ '
aditya-+    5652  0.0  0.1  22148 13200 ?        Ss   17:38   0:00 /usr/lib/systemd/systemd --user
aditya-+    5672  0.0  0.0  23012  4100 ?        S    17:38   0:00 (sd-pam)
aditya-+    5813  0.2  0.1  18560  7784 ?        S    17:38   0:01 sshd-session: aditya-sharma@pts/0
aditya-+    5814  0.0  0.0   9264  6116 pts/0    Ss   17:38   0:00 -bash
aditya-+    6258  0.0  0.0   7944  3756 pts/0    S+   17:50   0:00 bash -c ps aux | grep '^aditya-+ '
aditya-+    6259  0.0  0.0  10208  4536 pts/0    R+   17:50   0:00 ps aux
aditya-+    6260  0.0  0.0   7256  2476 pts/0    S+   17:50   0:00 grep ^aditya-+ 
```

## 3. All processes except root
```
$ ps aux | grep -v '^root '
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     687  0.0  0.1  22632 14636 ?        Ss   17:37   0:00 /usr/lib/systemd/systemd-resolved
systemd+    1300  0.0  0.1  21440 12172 ?        Ss   17:37   0:00 /usr/lib/systemd/systemd-networkd
message+    5393  0.0  0.0   9016  5640 ?        Ss   17:38   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     5410  0.0  0.1 306448  8540 ?        Ssl  17:38   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
syslog      5464  0.0  0.0 220548  5900 ?        Ssl  17:38   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     5592  0.0  0.1  23732 11340 ?        S    17:38   0:00 /usr/sbin/chronyd -n -F 1
_chrony     5602  0.0  0.0  12096  2468 ?        S    17:38   0:00 /usr/sbin/chronyd -n -F 1
aditya-+    5652  0.0  0.1  22148 13200 ?        Ss   17:38   0:00 /usr/lib/systemd/systemd --user
aditya-+    5672  0.0  0.0  23012  4100 ?        S    17:38   0:00 (sd-pam)
aditya-+    5813  0.2  0.1  18560  7784 ?        S    17:38   0:01 sshd-session: aditya-sharma@pts/0
aditya-+    5814  0.0  0.0   9264  6116 pts/0    Ss   17:38   0:00 -bash
aditya-+    6272  0.0  0.0   7944  3756 pts/0    S+   17:50   0:00 bash -c ps aux | grep -v '^root '
aditya-+    6273  0.0  0.0  10208  4544 pts/0    R+   17:50   0:00 ps aux
aditya-+    6274  0.0  0.0   7256  2508 pts/0    S+   17:50   0:00 grep -v ^root 
```

## 4. Without kworker and irq processes
```
$ ps aux | grep -vE 'kworker|irq'
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  1.3  0.2  26044 16764 ?        Ss   17:37   0:10 /usr/lib/systemd/systemd --switched-root --system --deserialize=55
root           2  0.0  0.0      0     0 ?        S    17:37   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    17:37   0:00 [pool_workqueue_release]
root          15  0.1  0.0      0     0 ?        I    17:37   0:01 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    17:37   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.1  0.0      0     0 ?        S    17:37   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    17:37   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/2]
root          23  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/2]
root          24  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/2]
root          28  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/4]
root          29  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/4]
root          30  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/4]
root          34  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/6]
root          35  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/6]
root          36  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/6]
root          40  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/8]
root          41  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/8]
root          42  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/8]
root          46  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/10]
root          47  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/10]
root          48  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/10]
root          52  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/12]
root          53  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/12]
root          54  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/12]
root          58  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/14]
root          59  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/14]
root          60  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/14]
root          64  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/1]
root          65  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/1]
root          66  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/1]
root          70  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/3]
root          71  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/3]
root          72  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/3]
root          76  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/5]
root          77  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/5]
root          78  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/5]
root          82  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/7]
root          83  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/7]
root          84  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/7]
root          88  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/9]
root          89  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/9]
root          90  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/9]
root          94  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/11]
root          95  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/11]
root          96  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/11]
root         100  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/13]
root         101  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/13]
root         102  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/13]
root         106  0.0  0.0      0     0 ?        S    17:37   0:00 [cpuhp/15]
root         107  0.0  0.0      0     0 ?        S    17:37   0:00 [idle_inject/15]
root         108  0.0  0.0      0     0 ?        S    17:37   0:00 [migration/15]
root         113  0.0  0.0      0     0 ?        S    17:37   0:00 [kdevtmpfs]
root         115  0.0  0.0      0     0 ?        I    17:37   0:00 [rcu_tasks_kthread]
root         116  0.0  0.0      0     0 ?        I    17:37   0:00 [rcu_tasks_rude_kthread]
root         118  0.0  0.0      0     0 ?        S    17:37   0:00 [kauditd]
root         119  0.0  0.0      0     0 ?        S    17:37   0:00 [khungtaskd]
root         120  0.0  0.0      0     0 ?        S    17:37   0:00 [oom_reaper]
root         123  0.0  0.0      0     0 ?        S    17:37   0:00 [kcompactd0]
root         124  0.0  0.0      0     0 ?        SN   17:37   0:00 [ksmd]
root         125  0.0  0.0      0     0 ?        SN   17:37   0:00 [khugepaged]
root         151  0.0  0.0      0     0 ?        S    17:37   0:00 [watchdogd]
root         153  0.0  0.0      0     0 ?        S    17:37   0:00 [kswapd0]
root         154  0.0  0.0      0     0 ?        S    17:37   0:00 [ecryptfs-kthread]
root         181  0.0  0.0      0     0 ?        S    17:37   0:00 [hwrng]
root         427  0.0  0.0      0     0 ?        S    17:37   0:00 [scsi_eh_0]
root         430  0.0  0.0      0     0 ?        S    17:37   0:00 [scsi_eh_1]
root         433  0.0  0.0      0     0 ?        S    17:37   0:00 [scsi_eh_2]
root         435  0.0  0.0      0     0 ?        S    17:37   0:00 [scsi_eh_3]
root         437  0.0  0.0      0     0 ?        S    17:37   0:00 [scsi_eh_4]
root         439  0.0  0.0      0     0 ?        S    17:37   0:00 [scsi_eh_5]
root         530  0.0  0.0      0     0 ?        S    17:37   0:00 [jbd2/sda2-8]
root         626  0.0  0.0      0     0 ?        S    17:37   0:00 [psimon]
root         632  0.3  0.2  50400 17004 ?        S<s  17:37   0:02 /usr/lib/systemd/systemd-journald
root         667  0.1  0.1 279492  9644 ?        SLsl 17:37   0:00 /usr/sbin/multipathd -d -s
systemd+     687  0.0  0.1  22632 14636 ?        Ss   17:37   0:00 /usr/lib/systemd/systemd-resolved
root         690  0.4  0.1  40164 14400 ?        Ss   17:37   0:03 /usr/lib/systemd/systemd-udevd
root         709  0.0  0.0      0     0 ?        S    17:37   0:00 [psimon]
root         803  0.0  0.0      0     0 ?        S    17:37   0:00 [card0-crtc0]
systemd+    1300  0.0  0.1  21440 12172 ?        Ss   17:37   0:00 /usr/lib/systemd/systemd-networkd
root        5391  0.0  0.0   2888  2012 ?        Ss   17:38   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root        5392  0.0  0.0   7060  3344 ?        Ss   17:38   0:00 /usr/sbin/cron -f -P
message+    5393  0.0  0.0   9016  5640 ?        Ss   17:38   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        5408  0.0  0.3  46744 30224 ?        Ss   17:38   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     5410  0.0  0.1 306448  8540 ?        Ssl  17:38   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        5421  0.5  0.5 2248000 43304 ?       Ssl  17:38   0:03 /usr/lib/snapd/snapd
root        5427  0.0  0.1  18264  9528 ?        Ss   17:38   0:00 /usr/lib/systemd/systemd-logind
root        5430  0.0  0.1 477832 15068 ?        Ssl  17:38   0:00 /usr/libexec/udisks2/udisksd
syslog      5464  0.0  0.0 220548  5900 ?        Ssl  17:38   0:00 /usr/sbin/rsyslogd -n -iNONE
root        5468  0.0  0.1  10744  7800 ?        Ss   17:38   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        5480  0.0  0.1  18424 12256 ?        Ss   17:38   0:00 sshd-session: aditya-sharma [priv]
root        5544  0.0  0.4 126116 32868 ?        Ssl  17:38   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root        5567  0.0  0.0   8488  2904 tty1     Ss+  17:38   0:00 /usr/sbin/agetty --noreset --noclear --issue-file=/etc/issue:/etc/issue.d:/run/issue.d:/usr/lib/issue.d - linux
_chrony     5592  0.0  0.1  23732 11340 ?        S    17:38   0:00 /usr/sbin/chronyd -n -F 1
_chrony     5602  0.0  0.0  12096  2468 ?        S    17:38   0:00 /usr/sbin/chronyd -n -F 1
root        5614  0.0  0.1 391608 14048 ?        Ssl  17:38   0:00 /usr/sbin/ModemManager
aditya-+    5652  0.0  0.1  22148 13200 ?        Ss   17:38   0:00 /usr/lib/systemd/systemd --user
aditya-+    5672  0.0  0.0  23012  4100 ?        S    17:38   0:00 (sd-pam)
aditya-+    5813  0.2  0.1  18560  7784 ?        S    17:38   0:01 sshd-session: aditya-sharma@pts/0
aditya-+    5814  0.0  0.0   9264  6116 pts/0    Ss   17:38   0:00 -bash
aditya-+    6287  0.0  0.0  10208  4544 pts/0    R+   17:50   0:00 ps aux
```

