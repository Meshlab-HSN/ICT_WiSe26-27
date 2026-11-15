# Lecture 5 - Task 2: Search and Filter

ps aux | grep 'fakhrul+'
ps aux | grep -E '^fakhrul[+]'
ps aux | grep -v '^root'
ps aux | grep -vE 'kworker|irq'
fakhrul+    1944  0.0  0.7  22252 12988 ?        Ss   10:51   0:00 /usr/lib/systemd/systemd --user
fakhrul+    1952  0.0  0.2  23012  4104 ?        S    10:51   0:00 (sd-pam)
fakhrul+    1975  0.0  0.3   8856  5856 tty1     Ss   10:51   0:00 -bash
fakhrul+    2527  100  0.2   9764  4668 tty1     R+   11:47   0:00 ps aux
fakhrul+    2528  0.0  0.1   6716  2704 tty1     S+   11:47   0:00 grep --color=auto fakhrul+
fakhrul+    1944  0.0  0.7  22252 12988 ?        Ss   10:51   0:00 /usr/lib/systemd/systemd --user
fakhrul+    1952  0.0  0.2  23012  4104 ?        S    10:51   0:00 (sd-pam)
fakhrul+    1975  0.0  0.3   8856  5856 tty1     Ss   10:51   0:00 -bash
fakhrul+    2554  100  0.2   9764  4676 tty1     R+   12:03   0:00 ps aux
fakhrul+    2555  0.0  0.1   6716  2652 tty1     S+   12:03   0:00 grep --color=auto -E ^fakhrul[+]
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     563  0.0  0.8  22624 14684 ?        Ss   10:22   0:00 /usr/lib/systemd/systemd-resolved
systemd+     793  0.0  0.7  21376 12336 ?        Ss   10:22   0:00 /usr/lib/systemd/systemd-networkd
message+     969  0.0  0.3   9156  5768 ?        Ss   10:22   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      977  0.0  0.5 306448  8468 ?        Ssl  10:22   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony     1042  0.0  0.6  23724 11272 ?        S    10:22   0:00 /usr/sbin/chronyd -n -F 1
syslog      1051  0.0  0.3 220548  5864 ?        Ssl  10:22   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1062  0.0  0.1  12096  2404 ?        S    10:22   0:00 /usr/sbin/chronyd -n -F 1
fakhrul+    1944  0.0  0.7  22252 12988 ?        Ss   10:51   0:00 /usr/lib/systemd/systemd --user
fakhrul+    1952  0.0  0.2  23012  4104 ?        S    10:51   0:00 (sd-pam)
fakhrul+    1975  0.0  0.3   8856  5856 tty1     Ss   10:51   0:00 -bash
fakhrul+    2566  0.0  0.2   9764  4712 tty1     R+   12:06   0:00 ps aux
fakhrul+    2567  0.0  0.1   6716  2652 tty1     S+   12:06   0:00 grep --color=auto -v ^root
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.9  24952 16316 ?        Ss   10:22   0:02 /usr/lib/systemd/systemd --switched-root --system --deserialize=53
root           2  0.0  0.0      0     0 ?        S    10:22   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    10:22   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    10:22   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    10:22   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    10:22   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    10:22   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    10:22   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    10:22   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    10:22   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    10:22   0:00 [kdevtmpfs]
root          24  0.0  0.0      0     0 ?        I    10:22   0:00 [rcu_tasks_kthread]
root          25  0.0  0.0      0     0 ?        I    10:22   0:00 [rcu_tasks_rude_kthread]
root          26  0.0  0.0      0     0 ?        S    10:22   0:00 [kauditd]
root          27  0.0  0.0      0     0 ?        S    10:22   0:00 [khungtaskd]
root          28  0.0  0.0      0     0 ?        S    10:22   0:00 [oom_reaper]
root          32  0.0  0.0      0     0 ?        S    10:22   0:00 [kcompactd0]
root          33  0.0  0.0      0     0 ?        SN   10:22   0:00 [ksmd]
root          34  0.0  0.0      0     0 ?        SN   10:22   0:00 [khugepaged]
root          46  0.0  0.0      0     0 ?        S    10:22   0:00 [watchdogd]
root          48  0.0  0.0      0     0 ?        S    10:22   0:00 [kswapd0]
root          49  0.0  0.0      0     0 ?        S    10:22   0:00 [ecryptfs-kthread]
root          52  0.0  0.0      0     0 ?        S    10:22   0:00 [scsi_eh_0]
root          54  0.0  0.0      0     0 ?        S    10:22   0:00 [scsi_eh_1]
root         300  0.0  0.0      0     0 ?        S    10:22   0:00 [scsi_eh_2]
root         414  0.0  0.0      0     0 ?        S    10:22   0:00 [jbd2/dm-0-8]
root         509  0.0  0.0      0     0 ?        S    10:22   0:00 [psimon]
root         515  0.0  1.0  50408 17320 ?        S<s  10:22   0:00 /usr/lib/systemd/systemd-journald
root         549  0.0  0.5 279492  9644 ?        SLsl 10:22   0:00 /usr/sbin/multipathd -d -s
systemd+     563  0.0  0.8  22624 14684 ?        Ss   10:22   0:00 /usr/lib/systemd/systemd-resolved
root         568  0.0  0.8  40064 14244 ?        Ss   10:22   0:00 /usr/lib/systemd/systemd-udevd
root         573  0.0  0.0      0     0 ?        S    10:22   0:00 [psimon]
root         703  0.0  0.0      0     0 ?        S    10:22   0:00 [jbd2/sda2-8]
systemd+     793  0.0  0.7  21376 12336 ?        Ss   10:22   0:00 /usr/lib/systemd/systemd-networkd
root         967  0.0  0.1   2888  2012 ?        Ss   10:22   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root         968  0.0  0.1   7060  3356 ?        Ss   10:22   0:00 /usr/sbin/cron -f -P
message+     969  0.0  0.3   9156  5768 ?        Ss   10:22   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         976  0.0  1.7  46744 30152 ?        Ss   10:22   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      977  0.0  0.5 306448  8468 ?        Ssl  10:22   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root         980  0.0  2.5 1812396 42740 ?       Ssl  10:22   0:00 /usr/lib/snapd/snapd
root         984  0.0  0.5  18728  9736 ?        Ss   10:22   0:00 /usr/lib/systemd/systemd-logind
root         986  0.0  0.9 543448 15200 ?        Ssl  10:22   0:00 /usr/libexec/udisks2/udisksd
root        1029  0.0  0.4  10744  7796 ?        Ss   10:22   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
_chrony     1042  0.0  0.6  23724 11272 ?        S    10:22   0:00 /usr/sbin/chronyd -n -F 1
syslog      1051  0.0  0.3 220548  5864 ?        Ssl  10:22   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1062  0.0  0.1  12096  2404 ?        S    10:22   0:00 /usr/sbin/chronyd -n -F 1
root        1073  0.0  1.9 126112 33036 ?        Ssl  10:22   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root        1091  0.0  0.8 391604 14216 ?        Ssl  10:22   0:00 /usr/sbin/ModemManager
root        1759  0.0  2.8 502284 48412 ?        Ssl  10:47   0:01 /usr/libexec/fwupd/fwupd
root        1769  0.0  0.6 318672 11532 ?        Ssl  10:47   0:00 /usr/libexec/upowerd
root        1834  0.0  0.1   8488  2836 tty6     Ss+  10:51   0:00 /usr/sbin/agetty --noreset --noclear --issue-file=/etc/issue:/etc/issue.d:/run/issue.d:/usr/lib/issue.d - linux
root        1836  0.0  0.3   8760  5680 ?        Ss   10:51   0:00 login -- fakhrulla-shaik
fakhrul+    1944  0.0  0.7  22252 12988 ?        Ss   10:51   0:00 /usr/lib/systemd/systemd --user
fakhrul+    1952  0.0  0.2  23012  4104 ?        S    10:51   0:00 (sd-pam)
fakhrul+    1975  0.0  0.3   8856  5856 tty1     Ss   10:51   0:00 -bash
fakhrul+    2577  0.0  0.2   9764  4676 tty1     R+   12:07   0:00 ps aux
