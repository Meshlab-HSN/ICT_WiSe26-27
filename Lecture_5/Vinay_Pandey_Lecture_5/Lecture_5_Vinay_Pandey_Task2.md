# Lecture 5 – Task 2: Search and Filter

## 2.1 – Display processes containing the username
```bash
ps aux | grep vinay
```
```text
root        1007  0.0  0.1   8760  5620 ?        Ss   17:12   0:00 login -- vinay
vinay       1351  0.0  0.3  22196 12936 ?        Ss   17:13   0:00 /usr/lib/systemd/systemd --user
vinay       1354  0.0  0.1  23016  4104 ?        S    17:13   0:00 (sd-pam)
vinay       1378  0.0  0.1   8856  5872 tty1     Ss+  17:13   0:00 -bash
root        1497  0.0  0.3  18428 12184 ?        Ss   17:44   0:00 sshd-session: vinay [priv]
vinay       1555  0.3  0.2  18564  7672 ?        S    17:44   0:03 sshd-session: vinay@pts/0
vinay       1556  0.0  0.1   8844  5856 pts/0    Ss   17:44   0:00 -bash
vinay       2113  0.0  0.1   9764  4616 pts/0    R+   18:02   0:00 ps aux
vinay       2114  0.0  0.0   6716  2616 pts/0    S+   18:02   0:00 grep --color=auto vinay
```

## 2.2 – Filter processes belonging to vinay
```bash
ps aux | grep -E '^vinay[[:space:]]'
```
```text
vinay       1351  0.0  0.3  22196 12936 ?        Ss   17:13   0:00 /usr/lib/systemd/systemd --user
vinay       1354  0.0  0.1  23016  4104 ?        S    17:13   0:00 (sd-pam)
vinay       1378  0.0  0.1   8856  5872 tty1     Ss+  17:13   0:00 -bash
vinay       1555  0.3  0.2  18564  7672 ?        S    17:44   0:03 sshd-session: vinay@pts/0
vinay       1556  0.0  0.1   8844  5856 pts/0    Ss   17:44   0:00 -bash
vinay       2115  0.0  0.1   9764  4684 pts/0    R+   18:02   0:00 ps aux
vinay       2116  0.0  0.0   6716  2680 pts/0    S+   18:02   0:00 grep --color=auto -E ^vinay[[:space:]]
```

## 2.3 – Exclude root processes
```bash
ps aux | grep -vE '^root[[:space:]]'
```
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     498  0.0  0.4  22624 14768 ?        Ss   17:12   0:00 /usr/lib/systemd/systemd-resolved
systemd+     665  0.0  0.3  21440 12344 ?        Ss   17:12   0:00 /usr/lib/systemd/systemd-networkd
message+     831  0.0  0.1   9160  5724 ?        Ss   17:12   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      841  0.0  0.2 306448  8524 ?        Ssl  17:12   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony      945  0.0  0.1  20556  6340 ?        S    17:12   0:00 /usr/sbin/chronyd -n -F 1
_chrony      967  0.0  0.0  12096  2344 ?        S    17:12   0:00 /usr/sbin/chronyd -n -F 1
syslog       976  0.0  0.1 220548  6244 ?        Ssl  17:12   0:00 /usr/sbin/rsyslogd -n -iNONE
vinay       1351  0.0  0.3  22196 12936 ?        Ss   17:13   0:00 /usr/lib/systemd/systemd --user
vinay       1354  0.0  0.1  23016  4104 ?        S    17:13   0:00 (sd-pam)
vinay       1378  0.0  0.1   8856  5872 tty1     Ss+  17:13   0:00 -bash
vinay       1555  0.3  0.2  18564  7672 ?        S    17:44   0:03 sshd-session: vinay@pts/0
vinay       1556  0.0  0.1   8844  5856 pts/0    Ss   17:44   0:00 -bash
vinay       2117  0.0  0.1   9764  4684 pts/0    R+   18:02   0:00 ps aux
vinay       2118  0.0  0.0   6716  2680 pts/0    S+   18:02   0:00 grep --color=auto -vE ^root[[:space:]]
```

## 2.4 – Exclude kworker and irq processes
```bash
ps aux | grep -vE 'kworker|irq'
```
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.4  24932 16244 ?        Ss   17:12   0:02 /usr/lib/systemd/systemd --switched-root --system --deserialize=55 splash noprompt noshell automatic-ubiquity crashkernel=2G-4G:320M,4G-32G:512M,32G-64G:1024M,64G-128G:2048M,128G-:4096M
root           2  0.0  0.0      0     0 ?        S    17:12   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    17:12   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    17:12   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    17:12   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    17:12   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    17:12   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    17:12   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    17:12   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    17:12   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    17:12   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    17:12   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    17:12   0:00 [migration/1]
root          30  0.0  0.0      0     0 ?        S    17:12   0:00 [kdevtmpfs]
root          32  0.0  0.0      0     0 ?        I    17:12   0:00 [rcu_tasks_kthread]
root          33  0.0  0.0      0     0 ?        I    17:12   0:00 [rcu_tasks_rude_kthread]
root          34  0.0  0.0      0     0 ?        S    17:12   0:00 [kauditd]
root          35  0.0  0.0      0     0 ?        S    17:12   0:00 [khungtaskd]
root          36  0.0  0.0      0     0 ?        S    17:12   0:00 [oom_reaper]
root          40  0.0  0.0      0     0 ?        S    17:12   0:00 [kcompactd0]
root          41  0.0  0.0      0     0 ?        SN   17:12   0:00 [ksmd]
root          42  0.0  0.0      0     0 ?        SN   17:12   0:00 [khugepaged]
root          55  0.0  0.0      0     0 ?        S    17:12   0:00 [watchdogd]
root          57  0.0  0.0      0     0 ?        S    17:12   0:00 [kswapd0]
root          58  0.0  0.0      0     0 ?        S    17:12   0:00 [ecryptfs-kthread]
root          61  0.0  0.0      0     0 ?        S    17:12   0:00 [scsi_eh_0]
root          63  0.0  0.0      0     0 ?        S    17:12   0:00 [scsi_eh_1]
root         303  0.0  0.0      0     0 ?        S    17:12   0:00 [scsi_eh_2]
root         338  0.0  0.0      0     0 ?        S    17:12   0:00 [jbd2/sda2-8]
root         433  0.0  0.0      0     0 ?        S    17:12   0:00 [psimon]
root         440  0.0  0.4  66788 16788 ?        S<s  17:12   0:00 /usr/lib/systemd/systemd-journald
root         487  0.0  0.2 279492  9644 ?        SLsl 17:12   0:01 /usr/sbin/multipathd -d -s
systemd+     498  0.0  0.4  22624 14768 ?        Ss   17:12   0:00 /usr/lib/systemd/systemd-resolved
root         499  0.0  0.4  41028 15252 ?        Ss   17:12   0:00 /usr/lib/systemd/systemd-udevd
root         507  0.0  0.0      0     0 ?        S    17:12   0:00 [psimon]
systemd+     665  0.0  0.3  21440 12344 ?        Ss   17:12   0:00 /usr/lib/systemd/systemd-networkd
root         830  0.0  0.0   2888  2016 ?        Ss   17:12   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+     831  0.0  0.1   9160  5724 ?        Ss   17:12   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         838  0.0  0.8  46744 30156 ?        Ss   17:12   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      841  0.0  0.2 306448  8524 ?        Ssl  17:12   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root         845  0.0  1.2 1886392 42580 ?       Ssl  17:12   0:02 /usr/lib/snapd/snapd
root         850  0.0  0.2  18588  9696 ?        Ss   17:12   0:00 /usr/lib/systemd/systemd-logind
root         855  0.0  0.4 543364 15092 ?        Ssl  17:12   0:00 /usr/libexec/udisks2/udisksd
root         865  0.0  0.2  10744  7828 ?        Ss   17:12   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root         891  0.0  0.0   7060  3396 ?        Ss   17:12   0:00 /usr/sbin/cron -f -P
root         909  0.0  0.9 126116 32948 ?        Ssl  17:12   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony      945  0.0  0.1  20556  6340 ?        S    17:12   0:00 /usr/sbin/chronyd -n -F 1
root         958  0.0  0.4 391604 14256 ?        Ssl  17:12   0:00 /usr/sbin/ModemManager
_chrony      967  0.0  0.0  12096  2344 ?        S    17:12   0:00 /usr/sbin/chronyd -n -F 1
syslog       976  0.0  0.1 220548  6244 ?        Ssl  17:12   0:00 /usr/sbin/rsyslogd -n -iNONE
root        1007  0.0  0.1   8760  5620 ?        Ss   17:12   0:00 login -- vinay
vinay       1351  0.0  0.3  22196 12936 ?        Ss   17:13   0:00 /usr/lib/systemd/systemd --user
vinay       1354  0.0  0.1  23016  4104 ?        S    17:13   0:00 (sd-pam)
vinay       1378  0.0  0.1   8856  5872 tty1     Ss+  17:13   0:00 -bash
root        1442  0.1  1.3 649812 47988 ?        Ssl  17:20   0:03 /usr/libexec/fwupd/fwupd
root        1451  0.0  0.3 318692 11380 ?        Ssl  17:20   0:00 /usr/libexec/upowerd
root        1497  0.0  0.3  18428 12184 ?        Ss   17:44   0:00 sshd-session: vinay [priv]
vinay       1555  0.3  0.2  18564  7672 ?        S    17:44   0:03 sshd-session: vinay@pts/0
vinay       1556  0.0  0.1   8844  5856 pts/0    Ss   17:44   0:00 -bash
vinay       2119  0.0  0.1   9764  4684 pts/0    R+   18:02   0:00 ps aux
```
