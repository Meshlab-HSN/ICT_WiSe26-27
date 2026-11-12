# Lecture 5 - Task 2
## 1. ps aux | grep muhamma+
```
muhamma+    1373  0.0  0.3  22336 12388 ?        Ss   09:33   0:00 /usr/lib/systemd/systemd --user
muhamma+    1380  0.0  0.1  24204  3896 ?        S    09:33   0:00 (sd-pam)
muhamma+    1399  0.0  0.2  10412  7276 tty1     Ss+  09:33   0:00 -bash
muhamma+    1478  0.1  0.2  20736  7352 ?        S    09:33   0:00 sshd-session: muhammad-fayyaz@pts/0
muhamma+    1479  0.0  0.1   9672  6536 pts/0    Ss   09:33   0:00 -bash
muhamma+    1641  0.0  0.1   9672  4516 pts/0    S+   09:38   0:00 -bash
muhamma+    1642  100  0.1  14880  6120 pts/0    S+   09:38   0:00 tee -a Lecture_5_muhammad_fayyaz_Task2.md
muhamma+    1643  200  0.1   9608  3912 pts/0    R+   09:38   0:00 ps aux
muhamma+    1644  0.0  0.0   8064  2156 pts/0    S+   09:38   0:00 grep --color=auto muhamma+
```
## 2. ps aux | grep "^muhamma+"
```
muhamma+    1373  0.0  0.3  22336 12388 ?        Ss   09:33   0:00 /usr/lib/systemd/systemd --user
muhamma+    1380  0.0  0.1  24204  3896 ?        S    09:33   0:00 (sd-pam)
muhamma+    1399  0.0  0.2  10412  7276 tty1     Ss+  09:33   0:00 -bash
muhamma+    1478  0.1  0.2  20736  7352 ?        S    09:33   0:00 sshd-session: muhammad-fayyaz@pts/0
muhamma+    1479  0.0  0.1   9672  6536 pts/0    Ss   09:33   0:00 -bash
muhamma+    1656  0.0  0.1   9672  4516 pts/0    S+   09:39   0:00 -bash
muhamma+    1657  0.0  0.1  14700  6120 pts/0    S+   09:39   0:00 tee -a Lecture_5_muhammad_fayyaz_Task2.md
muhamma+    1658  100  0.1   9168  3912 pts/0    R+   09:39   0:00 ps aux
muhamma+    1659  0.0  0.0   7864  2156 pts/0    S+   09:39   0:00 grep --color=auto ^muhamma+
```
## 3. ps aux | grep -v "^root"
```
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     601  0.0  0.4  23204 15292 ?        Ss   09:32   0:00 /usr/lib/systemd/systemd-resolved
systemd+     874  0.0  0.3  21512 12132 ?        Ss   09:32   0:00 /usr/lib/systemd/systemd-networkd
message+    1015  0.0  0.1   9360  6404 ?        Ss   09:32   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1027  0.0  0.5 309320 17948 ?        Ssl  09:32   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony     1114  0.0  0.3  24104 10580 ?        S    09:32   0:00 /usr/sbin/chronyd -n -F 1
syslog      1140  0.0  0.3 221900 12588 ?        Ssl  09:32   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1141  0.0  0.0  13800  2172 ?        S    09:32   0:00 /usr/sbin/chronyd -n -F 1
muhamma+    1373  0.0  0.3  22336 12388 ?        Ss   09:33   0:00 /usr/lib/systemd/systemd --user
muhamma+    1380  0.0  0.1  24204  3896 ?        S    09:33   0:00 (sd-pam)
muhamma+    1399  0.0  0.2  10412  7276 tty1     Ss+  09:33   0:00 -bash
muhamma+    1478  0.0  0.2  20736  7352 ?        S    09:33   0:00 sshd-session: muhammad-fayyaz@pts/0
muhamma+    1479  0.0  0.1   9672  6536 pts/0    Ss   09:33   0:00 -bash
muhamma+    1674  0.0  0.1   9672  4516 pts/0    S+   09:42   0:00 -bash
muhamma+    1675  0.0  0.1  16000  6120 pts/0    S+   09:42   0:00 tee -a Lecture_5_muhammad_fayyaz_Task2.md
muhamma+    1676  200  0.1   9440  3908 pts/0    R+   09:42   0:00 ps aux
muhamma+    1677  0.0  0.0   7608  2152 pts/0    S+   09:42   0:00 grep --color=auto -v ^root
```
## 4. ps aux | grep -Ev "kworker|irq"
```
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.1  0.5  26816 17672 ?        Ss   09:32   0:01 /usr/lib/systemd/systemd --switched-root --system --deserialize=51
root           2  0.0  0.0      0     0 ?        S    09:32   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    09:32   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    09:32   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    09:32   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    09:32   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    09:32   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    09:32   0:00 [idle_inject/0]
root          20  0.0  0.0      0     0 ?        S    09:32   0:00 [cpuhp/0]
root          21  0.0  0.0      0     0 ?        S    09:32   0:00 [cpuhp/1]
root          22  0.0  0.0      0     0 ?        S    09:32   0:00 [idle_inject/1]
root          23  0.0  0.0      0     0 ?        S    09:32   0:00 [migration/1]
root          27  0.0  0.0      0     0 ?        S    09:32   0:00 [cpuhp/2]
root          28  0.0  0.0      0     0 ?        S    09:32   0:00 [idle_inject/2]
root          29  0.0  0.0      0     0 ?        S    09:32   0:00 [migration/2]
root          33  0.0  0.0      0     0 ?        S    09:32   0:00 [cpuhp/3]
root          34  0.0  0.0      0     0 ?        S    09:32   0:00 [idle_inject/3]
root          35  0.0  0.0      0     0 ?        S    09:32   0:00 [migration/3]
root          39  0.0  0.0      0     0 ?        S    09:32   0:00 [kdevtmpfs]
root          41  0.0  0.0      0     0 ?        I    09:32   0:00 [rcu_tasks_kthread]
root          42  0.0  0.0      0     0 ?        I    09:32   0:00 [rcu_tasks_rude_kthread]
root          43  0.0  0.0      0     0 ?        S    09:32   0:00 [kauditd]
root          44  0.0  0.0      0     0 ?        S    09:32   0:00 [khungtaskd]
root          45  0.0  0.0      0     0 ?        S    09:32   0:00 [oom_reaper]
root          48  0.0  0.0      0     0 ?        S    09:32   0:00 [kcompactd0]
root          49  0.0  0.0      0     0 ?        SN   09:32   0:00 [ksmd]
root          51  0.0  0.0      0     0 ?        SN   09:32   0:00 [khugepaged]
root          57  0.0  0.0      0     0 ?        S<   09:32   0:00 [pr/ttyAMA-1]
root          66  0.0  0.0      0     0 ?        S    09:32   0:00 [watchdogd]
root          68  0.0  0.0      0     0 ?        S    09:32   0:00 [kswapd0]
root          69  0.0  0.0      0     0 ?        S    09:32   0:00 [ecryptfs-kthread]
root          84  0.0  0.0      0     0 ?        S    09:32   0:00 [hwrng]
root         342  0.0  0.0      0     0 ?        S    09:32   0:00 [card0-crtc0]
root         373  0.0  0.0      0     0 ?        S    09:32   0:00 [scsi_eh_0]
root         375  0.0  0.0      0     0 ?        S    09:32   0:00 [usb-storage]
root         447  0.0  0.0      0     0 ?        S    09:32   0:00 [jbd2/dm-0-8]
root         541  0.0  0.0      0     0 ?        S    09:32   0:00 [psimon]
root         548  0.0  0.5  51936 18016 ?        S<s  09:32   0:00 /usr/lib/systemd/systemd-journald
root         580  0.0  0.5 281956 18060 ?        SLsl 09:32   0:00 /usr/sbin/multipathd -d -s
systemd+     601  0.0  0.4  23204 15292 ?        Ss   09:32   0:00 /usr/lib/systemd/systemd-resolved
root         608  0.0  0.4  42600 15308 ?        Ss   09:32   0:00 /usr/lib/systemd/systemd-udevd
root         610  0.0  0.0      0     0 ?        S    09:32   0:00 [psimon]
root         772  0.0  0.0      0     0 ?        S    09:32   0:00 [jbd2/vda2-8]
systemd+     874  0.0  0.3  21512 12132 ?        Ss   09:32   0:00 /usr/lib/systemd/systemd-networkd
root        1013  0.0  0.0   3044  1656 ?        Ss   09:32   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root        1014  0.0  0.0   8532  2828 ?        Ss   09:32   0:00 /usr/sbin/cron -f -P
message+    1015  0.0  0.1   9360  6404 ?        Ss   09:32   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1025  0.0  0.8  49428 30516 ?        Ss   09:32   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1027  0.0  0.5 309320 17948 ?        Ssl  09:32   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1037  0.0  0.3  20008 10716 ?        Ss   09:32   0:00 /usr/lib/systemd/systemd-logind
root        1041  0.0  0.8 549192 30372 ?        Ssl  09:32   0:00 /usr/libexec/udisks2/udisksd
root        1050  0.0  0.2  12204  9384 ?        Ss   09:32   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        1076  0.0  0.0   7864  2460 ?        Ss+  09:32   0:00 /usr/sbin/agetty --noreset --noclear --issue-file=/etc/issue:/etc/issue.d:/run/issue.d:/usr/lib/issue.d --keep-baud 115200,57600,38400,9600 - vt220
root        1090  0.0  0.1  10948  4400 ?        Ss   09:32   0:00 login -- muhammad-fayyaz
_chrony     1114  0.0  0.3  24104 10580 ?        S    09:32   0:00 /usr/sbin/chronyd -n -F 1
root        1127  0.0  1.0 128932 36072 ?        Ssl  09:32   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
syslog      1140  0.0  0.3 221900 12588 ?        Ssl  09:32   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1141  0.0  0.0  13800  2172 ?        S    09:32   0:00 /usr/sbin/chronyd -n -F 1
root        1149  0.0  0.6 398984 23468 ?        Ssl  09:32   0:00 /usr/sbin/ModemManager
muhamma+    1373  0.0  0.3  22336 12388 ?        Ss   09:33   0:00 /usr/lib/systemd/systemd --user
muhamma+    1380  0.0  0.1  24204  3896 ?        S    09:33   0:00 (sd-pam)
muhamma+    1399  0.0  0.2  10412  7276 tty1     Ss+  09:33   0:00 -bash
root        1429  0.0  0.3  20736 11020 ?        Ss   09:33   0:00 sshd-session: muhammad-fayyaz [priv]
muhamma+    1478  0.0  0.2  20736  7352 ?        S    09:33   0:00 sshd-session: muhammad-fayyaz@pts/0
muhamma+    1479  0.0  0.1   9672  6536 pts/0    Ss   09:33   0:00 -bash
muhamma+    1692  0.0  0.1   9672  4516 pts/0    S+   09:44   0:00 -bash
muhamma+    1693  100  0.1  15260  6116 pts/0    S+   09:44   0:00 tee -a Lecture_5_muhammad_fayyaz_Task2.md
muhamma+    1694  200  0.1   9948  3908 pts/0    R+   09:44   0:00 ps aux
```
