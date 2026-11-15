```bash
ps aux | grep $(whoami)
root        1317  0.0  0.1   8760  5676 ?        Ss   18:01   0:00 login -- ghulam-abbas
ghulam-+    1892 50.0  0.0   6716  2668 tty1     S+   18:22   0:00 grep --color=auto ghulam-abbas
ps aux | grep -E "^$(whoami)\s"
ps aux | grep -v "^root\s"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     869  0.0  0.4  22624 14700 ?        Ss   18:01   0:00 /usr/lib/systemd/systemd-resolved
systemd+    1089  0.0  0.3  21488 12388 ?        Ss   18:01   0:00 /usr/lib/systemd/systemd-networkd
message+    1264  0.0  0.1   8992  5620 ?        Ss   18:01   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1277  0.0  0.2 306444  8292 ?        Ssl  18:01   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony     1347  0.0  0.3  24004 11448 ?        S    18:01   0:00 /usr/sbin/chronyd -n -F 1
_chrony     1373  0.0  0.0  12096  2448 ?        S    18:01   0:00 /usr/sbin/chronyd -n -F 1
syslog      1377  0.0  0.1 220548  6220 ?        Ssl  18:01   0:00 /usr/sbin/rsyslogd -n -iNONE
ghulam-+    1603  0.0  0.3  22008 13152 ?        Ss   18:02   0:01 /usr/lib/systemd/systemd --user
ghulam-+    1616  0.0  0.1  23008  4100 ?        S    18:02   0:00 (sd-pam)
ghulam-+    1640  0.0  0.1   8856  5876 tty1     Ss   18:02   0:01 -bash
ghulam-+    1940  150  0.1   9764  4676 tty1     R+   18:29   0:00 ps aux
ghulam-+    1941  0.0  0.0   6716  2580 tty1     S+   18:29   0:00 grep --color=auto -v ^root\s
ps aux | grep -E -v "kworker|irq"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.6  0.4  24744 16160 ?        Ss   18:00   0:13 /usr/lib/systemd/systemd --switched-root --system --deserialize=51
root           2  0.0  0.0      0     0 ?        S    18:00   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    18:00   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    18:00   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    18:00   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    18:00   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    18:00   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    18:00   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    18:00   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    18:00   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    18:00   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    18:00   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    18:00   0:00 [migration/1]
root          30  0.0  0.0      0     0 ?        S    18:00   0:00 [kdevtmpfs]
root          32  0.0  0.0      0     0 ?        I    18:00   0:00 [rcu_tasks_kthread]
root          33  0.0  0.0      0     0 ?        I    18:00   0:00 [rcu_tasks_rude_kthread]
root          34  0.0  0.0      0     0 ?        S    18:00   0:00 [kauditd]
root          35  0.0  0.0      0     0 ?        S    18:00   0:00 [khungtaskd]
root          36  0.0  0.0      0     0 ?        S    18:00   0:00 [oom_reaper]
root          40  0.0  0.0      0     0 ?        S    18:00   0:00 [kcompactd0]
root          41  0.0  0.0      0     0 ?        SN   18:00   0:00 [ksmd]
root          42  0.0  0.0      0     0 ?        SN   18:00   0:00 [khugepaged]
root          55  0.0  0.0      0     0 ?        S    18:00   0:00 [watchdogd]
root          58  0.0  0.0      0     0 ?        S    18:00   0:00 [kswapd0]
root          59  0.0  0.0      0     0 ?        S    18:00   0:00 [ecryptfs-kthread]
root          62  0.0  0.0      0     0 ?        S    18:00   0:00 [scsi_eh_0]
root          64  0.0  0.0      0     0 ?        S    18:00   0:00 [scsi_eh_1]
root         400  0.0  0.0      0     0 ?        S    18:00   0:00 [scsi_eh_2]
root         528  0.0  0.0      0     0 ?        S    18:00   0:00 [jbd2/dm-0-8]
root         809  0.0  0.0      0     0 ?        S    18:01   0:00 [psimon]
root         815  0.0  0.4  50392 16760 ?        S<s  18:01   0:01 /usr/lib/systemd/systemd-journald
root         838  0.0  0.2 279492  9644 ?        SLsl 18:01   0:00 /usr/sbin/multipathd -d -s
systemd+     869  0.0  0.4  22624 14700 ?        Ss   18:01   0:00 /usr/lib/systemd/systemd-resolved
root         871  0.1  0.3  39412 13656 ?        Ss   18:01   0:02 /usr/lib/systemd/systemd-udevd
root         876  0.0  0.0      0     0 ?        S    18:01   0:00 [psimon]
root        1007  0.0  0.0      0     0 ?        S    18:01   0:00 [jbd2/sda2-8]
systemd+    1089  0.0  0.3  21488 12388 ?        Ss   18:01   0:00 /usr/lib/systemd/systemd-networkd
root        1262  0.0  0.0   2888  1944 ?        Ss   18:01   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root        1263  0.0  0.0   7060  3368 ?        Ss   18:01   0:00 /usr/sbin/cron -f -P
message+    1264  0.0  0.1   8992  5620 ?        Ss   18:01   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1274  0.0  0.8  46728 30224 ?        Ss   18:01   0:01 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1277  0.0  0.2 306444  8292 ?        Ssl  18:01   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1284  0.0  0.2  18560  9600 ?        Ss   18:01   0:00 /usr/lib/systemd/systemd-logind
root        1286  0.0  0.4 543368 15160 ?        Ssl  18:01   0:00 /usr/libexec/udisks2/udisksd
root        1317  0.0  0.1   8760  5676 ?        Ss   18:01   0:00 login -- ghulam-abbas
root        1328  0.0  0.2  10744  7792 ?        Ss   18:01   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
_chrony     1347  0.0  0.3  24004 11448 ?        S    18:01   0:00 /usr/sbin/chronyd -n -F 1
root        1351  0.0  0.9 126096 32984 ?        Ssl  18:01   0:01 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony     1373  0.0  0.0  12096  2448 ?        S    18:01   0:00 /usr/sbin/chronyd -n -F 1
syslog      1377  0.0  0.1 220548  6220 ?        Ssl  18:01   0:00 /usr/sbin/rsyslogd -n -iNONE
root        1432  0.0  0.4 391496 14076 ?        Ssl  18:01   0:00 /usr/sbin/ModemManager
ghulam-+    1603  0.0  0.3  22008 13152 ?        Ss   18:02   0:01 /usr/lib/systemd/systemd --user
ghulam-+    1616  0.0  0.1  23008  4100 ?        S    18:02   0:00 (sd-pam)
ghulam-+    1640  0.0  0.1   8856  5876 tty1     Ss   18:02   0:01 -bash
ghulam-+    1967  150  0.1   9764  4684 tty1     R+   18:33   0:00 ps aux
\'\'\'
