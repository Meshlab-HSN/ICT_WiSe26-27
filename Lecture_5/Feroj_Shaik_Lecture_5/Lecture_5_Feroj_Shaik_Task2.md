Lecture 5 - Task 2: SEARCH AND FILTER 

1. Show processes belonging to my user 

Command: 
ps aux | grep '^feroj '

2. Filter processes using an exact username match

Command:
ps aux | grep -E '^feroj[[:space:]]'

3. Display all processes except root 

Command:
ps aux | grep -v '^root '

4. Exclude kworker and irq processes

Command: 
ps aux | grep -Ev 'kworker|irg'

Task 2 -Actual command outputs 
1. Output: Processes belonging to my user (feroj)

2. Output: Processes filtered using an exact username match

3. Output: All processes except root

4. output: Processes excluding kworker and irq


1. Output -My user processes
feroj       1608  0.0  0.7  22080 12884 ?        Ss   14:16   0:00 /usr/lib/systemd/systemd --user
feroj       1610  0.0  0.2  23012  4136 ?        S    14:16   0:00 (sd-pam)
feroj       1634  0.0  0.3   8856  5868 tty1     Ss   14:16   0:00 -bash
feroj       1979  300  0.2   9764  4680 tty1     R+   14:58   0:00 ps aux
feroj       1980  0.0  0.1   6716  2644 tty1     S+   14:58   0:00 grep --color=auto ^feroj 

2. Output -Exact username match
feroj       1608  0.0  0.7  22080 12884 ?        Ss   14:16   0:00 /usr/lib/systemd/systemd --user
feroj       1610  0.0  0.2  23012  4136 ?        S    14:16   0:00 (sd-pam)
feroj       1634  0.0  0.3   8856  5868 tty1     Ss   14:16   0:00 -bash
feroj       1981  0.0  0.2   9764  4664 tty1     R+   14:58   0:00 ps aux
feroj       1982  0.0  0.1   6716  2624 tty1     S+   14:58   0:00 grep --color=auto -E ^feroj[[:space:]]

3. Output - Processes except root
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     582  0.0  0.8  22756 14716 ?        Ss   14:14   0:00 /usr/lib/systemd/systemd-resolved
systemd+     861  0.0  0.7  21436 12320 ?        Ss   14:14   0:00 /usr/lib/systemd/systemd-networkd
message+    1000  0.0  0.3   9024  5848 ?        Ss   14:14   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1008  0.0  0.6 382012 10236 ?        Ssl  14:14   0:01 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony     1071  0.0  0.6  23876 11204 ?        S    14:14   0:00 /usr/sbin/chronyd -n -F 1
syslog      1106  0.0  0.3 220548  6212 ?        Ssl  14:14   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1133  0.0  0.1  12096  2408 ?        S    14:14   0:00 /usr/sbin/chronyd -n -F 1
mysql       1225  0.3  7.4 1244200 125056 ?      Ssl  14:14   0:08 /usr/sbin/mariadbd
www-data    1355  0.0  0.3 1214576 5692 ?        Sl   14:14   0:00 /usr/sbin/apache2 -k start -DFOREGROUND
www-data    1356  0.0  0.3 1214576 5692 ?        Sl   14:14   0:00 /usr/sbin/apache2 -k start -DFOREGROUND
feroj       1608  0.0  0.7  22080 12884 ?        Ss   14:16   0:00 /usr/lib/systemd/systemd --user
feroj       1610  0.0  0.2  23012  4136 ?        S    14:16   0:00 (sd-pam)
feroj       1634  0.0  0.3   8856  5868 tty1     Ss   14:16   0:00 -bash
feroj       1983  200  0.2   9764  4680 tty1     R+   14:58   0:00 ps aux
feroj       1984  0.0  0.1   6716  2680 tty1     S+   14:58   0:00 grep --color=auto -v ^root 

4. Output - Excluding kworker and irq
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.3  0.9  24856 16288 ?        Ss   14:13   0:10 /usr/lib/systemd/systemd --switched-root --system --deserialize=51
root           2  0.0  0.0      0     0 ?        S    14:13   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    14:13   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    14:13   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    14:13   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    14:13   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    14:13   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    14:13   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    14:13   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    14:13   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    14:13   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    14:13   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    14:13   0:00 [migration/1]
root          30  0.0  0.0      0     0 ?        S    14:13   0:00 [kdevtmpfs]
root          32  0.0  0.0      0     0 ?        I    14:13   0:00 [rcu_tasks_kthread]
root          33  0.0  0.0      0     0 ?        I    14:13   0:00 [rcu_tasks_rude_kthread]
root          34  0.0  0.0      0     0 ?        S    14:13   0:00 [kauditd]
root          35  0.0  0.0      0     0 ?        S    14:13   0:00 [khungtaskd]
root          36  0.0  0.0      0     0 ?        S    14:13   0:00 [oom_reaper]
root          40  0.0  0.0      0     0 ?        S    14:13   0:00 [kcompactd0]
root          41  0.0  0.0      0     0 ?        SN   14:13   0:00 [ksmd]
root          42  0.0  0.0      0     0 ?        SN   14:13   0:00 [khugepaged]
root          54  0.0  0.0      0     0 ?        S    14:13   0:00 [watchdogd]
root          60  0.0  0.0      0     0 ?        S    14:13   0:00 [kswapd0]
root          61  0.0  0.0      0     0 ?        S    14:13   0:00 [ecryptfs-kthread]
root          65  0.0  0.0      0     0 ?        S    14:13   0:00 [scsi_eh_0]
root          67  0.0  0.0      0     0 ?        S    14:13   0:00 [scsi_eh_1]
root         320  0.0  0.0      0     0 ?        S    14:13   0:00 [scsi_eh_2]
root         432  0.0  0.0      0     0 ?        S    14:13   0:00 [jbd2/dm-0-8]
root         527  0.0  0.0      0     0 ?        S    14:13   0:00 [psimon]
root         533  0.0  1.0  50536 17176 ?        S<s  14:13   0:01 /usr/lib/systemd/systemd-journald
root         571  0.0  0.5 279492  9644 ?        SLsl 14:14   0:00 /usr/sbin/multipathd -d -s
systemd+     582  0.0  0.8  22756 14716 ?        Ss   14:14   0:00 /usr/lib/systemd/systemd-resolved
root         587  0.0  0.8  40096 14248 ?        Ss   14:14   0:01 /usr/lib/systemd/systemd-udevd
root         605  0.0  0.0      0     0 ?        S    14:14   0:00 [psimon]
root         709  0.0  0.0      0     0 ?        S    14:14   0:00 [jbd2/sda2-8]
systemd+     861  0.0  0.7  21436 12320 ?        Ss   14:14   0:00 /usr/lib/systemd/systemd-networkd
root         999  0.0  0.1   2888  2012 ?        Ss   14:14   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+    1000  0.0  0.3   9024  5848 ?        Ss   14:14   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1006  0.0  1.7  46744 30268 ?        Ss   14:14   0:01 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1008  0.0  0.6 382012 10236 ?        Ssl  14:14   0:01 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1011  3.2  2.4 1886136 41700 ?       Ssl  14:14   1:26 /usr/lib/snapd/snapd
root        1014  0.0  0.5  18564  9728 ?        Ss   14:14   0:00 /usr/lib/systemd/systemd-logind
root        1016  0.0  0.9 543444 15168 ?        Ssl  14:14   0:01 /usr/libexec/udisks2/udisksd
root        1052  0.0  0.4  10744  7772 ?        Ss   14:14   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
_chrony     1071  0.0  0.6  23876 11204 ?        S    14:14   0:00 /usr/sbin/chronyd -n -F 1
syslog      1106  0.0  0.3 220548  6212 ?        Ssl  14:14   0:00 /usr/sbin/rsyslogd -n -iNONE
root        1107  0.0  0.8 391608 14216 ?        Ssl  14:14   0:00 /usr/sbin/ModemManager
_chrony     1133  0.0  0.1  12096  2408 ?        S    14:14   0:00 /usr/sbin/chronyd -n -F 1
root        1144  0.0  1.9 126116 32984 ?        Ssl  14:14   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root        1173  0.0  0.4   9420  7016 ?        Ss   14:14   0:00 /usr/sbin/apache2 -k start -DFOREGROUND
root        1184  0.0  0.2   7060  3412 ?        Ss   14:14   0:00 /usr/sbin/cron -f -P
mysql       1225  0.3  7.4 1244200 125056 ?      Ssl  14:14   0:08 /usr/sbin/mariadbd
root        1245  0.0  0.3   8764  5592 ?        Ss   14:14   0:00 login -- feroj
www-data    1355  0.0  0.3 1214576 5692 ?        Sl   14:14   0:00 /usr/sbin/apache2 -k start -DFOREGROUND
www-data    1356  0.0  0.3 1214576 5692 ?        Sl   14:14   0:00 /usr/sbin/apache2 -k start -DFOREGROUND
feroj       1608  0.0  0.7  22080 12884 ?        Ss   14:16   0:00 /usr/lib/systemd/systemd --user
feroj       1610  0.0  0.2  23012  4136 ?        S    14:16   0:00 (sd-pam)
feroj       1634  0.0  0.3   8856  5868 tty1     Ss   14:16   0:00 -bash
root        1794  0.3  2.8 583580 48216 ?        Ssl  14:30   0:05 /usr/libexec/fwupd/fwupd
root        1803  0.1  0.6 318700 11456 ?        Ssl  14:30   0:01 /usr/libexec/upowerd
feroj       1985  0.0  0.2   9764  4684 tty1     R+   14:58   0:00 ps aux
