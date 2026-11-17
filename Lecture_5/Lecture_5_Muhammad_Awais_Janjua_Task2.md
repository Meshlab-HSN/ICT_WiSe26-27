</> Markdown

## Task 2 - Search and Filter

### Step 1 - Show processes belonging to my user


Command:
ps aux | grep mjanjua

### Step 2 - Show only processes actually running as my user


Command:
ps aux | grep '^mjanjua'

### Step 3 - List all processes except root


Command:
ps aux | grep -v '^root'


### Step 4 - Filter out kworker and irq processes


Command:
ps aux | grep -Ev 'kworker|irq'

root        1159  0.0  0.1   8756  5588 ?        Ss   18:18   0:00 login -- mjanjua
mjanjua     1357  0.0  0.2  22044 12828 ?        Ss   18:18   0:00 /usr/lib/systemd/systemd --user
mjanjua     1364  0.0  0.0  23016  4100 ?        S    18:18   0:00 (sd-pam)
mjanjua     1383  0.0  0.1   8856  5808 tty1     Ss   18:18   0:00 -bash
mjanjua     1494  0.0  0.0   9764  4684 tty1     R+   18:31   0:00 ps aux
mjanjua     1495  0.0  0.0   6716  2684 tty1     S+   18:31   0:00 grep --color=auto mjanjua
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     527  0.0  0.2  22624 14704 ?        Ss   18:18   0:00 /usr/lib/systemd/systemd-resolved
systemd+     827  0.0  0.2  21436 12240 ?        Ss   18:18   0:00 /usr/lib/systemd/systemd-networkd
message+    1020  0.0  0.1   8996  5644 ?        Ss   18:18   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1026  0.0  0.1 306444  8476 ?        Ssl  18:18   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony     1089  0.0  0.2  24000 11504 ?        S    18:18   0:00 /usr/sbin/chronyd -n -F 1
syslog      1093  0.0  0.1 220548  5784 ?        Ssl  18:18   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1114  0.0  0.0  12096  2452 ?        S    18:18   0:00 /usr/sbin/chronyd -n -F 1
mjanjua     1357  0.0  0.2  22044 12828 ?        Ss   18:18   0:00 /usr/lib/systemd/systemd --user
mjanjua     1364  0.0  0.0  23016  4100 ?        S    18:18   0:00 (sd-pam)
mjanjua     1383  0.0  0.1   8856  5808 tty1     Ss   18:18   0:00 -bash
mjanjua     1521  100  0.0   9764  4732 tty1     R+   18:34   0:00 ps aux
mjanjua     1522  0.0  0.0   6716  2592 tty1     S+   18:34   0:00 grep --color=auto -v ^root
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.3  0.3  25408 16280 ?        Ss   18:18   0:04 /usr/lib/systemd/systemd --switched-root --system --deserialize=50
root           2  0.0  0.0      0     0 ?        S    18:18   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    18:18   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    18:18   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    18:18   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    18:18   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    18:18   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    18:18   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    18:18   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    18:18   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    18:18   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    18:18   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    18:18   0:00 [migration/1]
root          28  0.0  0.0      0     0 ?        S    18:18   0:00 [cpuhp/2]
root          29  0.0  0.0      0     0 ?        S    18:18   0:00 [idle_inject/2]
root          30  0.0  0.0      0     0 ?        S    18:18   0:00 [migration/2]
root          34  0.0  0.0      0     0 ?        S    18:18   0:00 [cpuhp/3]
root          35  0.0  0.0      0     0 ?        S    18:18   0:00 [idle_inject/3]
root          36  0.0  0.0      0     0 ?        S    18:18   0:00 [migration/3]
root          44  0.0  0.0      0     0 ?        S    18:18   0:00 [kdevtmpfs]
root          46  0.0  0.0      0     0 ?        I    18:18   0:00 [rcu_tasks_kthread]
root          47  0.0  0.0      0     0 ?        I    18:18   0:00 [rcu_tasks_rude_kthread]
root          48  0.0  0.0      0     0 ?        S    18:18   0:00 [kauditd]
root          49  0.0  0.0      0     0 ?        S    18:18   0:00 [khungtaskd]
root          50  0.0  0.0      0     0 ?        S    18:18   0:00 [oom_reaper]
root          53  0.0  0.0      0     0 ?        S    18:18   0:00 [kcompactd0]
root          55  0.0  0.0      0     0 ?        SN   18:18   0:00 [ksmd]
root          56  0.0  0.0      0     0 ?        SN   18:18   0:00 [khugepaged]
root          69  0.0  0.0      0     0 ?        S    18:18   0:00 [watchdogd]
root          75  0.0  0.0      0     0 ?        S    18:18   0:00 [kswapd0]
root          76  0.0  0.0      0     0 ?        S    18:18   0:00 [ecryptfs-kthread]
root          81  0.0  0.0      0     0 ?        S    18:18   0:00 [scsi_eh_0]
root          83  0.0  0.0      0     0 ?        S    18:18   0:00 [scsi_eh_1]
root         327  0.0  0.0      0     0 ?        S    18:18   0:00 [scsi_eh_2]
root         368  0.0  0.0      0     0 ?        S    18:18   0:00 [jbd2/sda2-8]
root         465  0.0  0.0      0     0 ?        S    18:18   0:00 [psimon]
root         472  0.0  0.3  50392 17044 ?        S<s  18:18   0:00 /usr/lib/systemd/systemd-journald
root         513  0.0  0.1 279492  9644 ?        SLsl 18:18   0:00 /usr/sbin/multipathd -d -s
systemd+     527  0.0  0.2  22624 14704 ?        Ss   18:18   0:00 /usr/lib/systemd/systemd-resolved
root         532  0.0  0.2  40324 14492 ?        Ss   18:18   0:00 /usr/lib/systemd/systemd-udevd
root         538  0.0  0.0      0     0 ?        S    18:18   0:00 [psimon]
systemd+     827  0.0  0.2  21436 12240 ?        Ss   18:18   0:00 /usr/lib/systemd/systemd-networkd
root        1019  0.0  0.0   2888  1948 ?        Ss   18:18   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+    1020  0.0  0.1   8996  5644 ?        Ss   18:18   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1025  0.0  0.6  46728 30248 ?        Ss   18:18   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1026  0.0  0.1 306444  8476 ?        Ssl  18:18   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1030  0.1  0.8 2034064 43216 ?       Ssl  18:18   0:02 /usr/lib/snapd/snapd
root        1033  0.0  0.1  18560  9612 ?        Ss   18:18   0:00 /usr/lib/systemd/systemd-logind
root        1034  0.0  0.3 543368 15068 ?        Ssl  18:18   0:00 /usr/libexec/udisks2/udisksd
root        1082  0.0  0.6 126096 32932 ?        Ssl  18:18   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony     1089  0.0  0.2  24000 11504 ?        S    18:18   0:00 /usr/sbin/chronyd -n -F 1
syslog      1093  0.0  0.1 220548  5784 ?        Ssl  18:18   0:00 /usr/sbin/rsyslogd -n -iNONE
root        1108  0.0  0.2 391604 14252 ?        Ssl  18:18   0:00 /usr/sbin/ModemManager
root        1109  0.0  0.1  10744  7772 ?        Ss   18:18   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
_chrony     1114  0.0  0.0  12096  2452 ?        S    18:18   0:00 /usr/sbin/chronyd -n -F 1
root        1132  0.0  0.0   7060  3352 ?        Ss   18:18   0:00 /usr/sbin/cron -f -P
root        1159  0.0  0.1   8756  5588 ?        Ss   18:18   0:00 login -- mjanjua
mjanjua     1357  0.0  0.2  22044 12828 ?        Ss   18:18   0:00 /usr/lib/systemd/systemd --user
mjanjua     1364  0.0  0.0  23016  4100 ?        S    18:18   0:00 (sd-pam)
mjanjua     1383  0.0  0.1   8856  6052 tty1     Ss   18:18   0:00 -bash
mjanjua     1533  100  0.0   9764  4688 tty1     R+   18:37   0:00 ps aux
