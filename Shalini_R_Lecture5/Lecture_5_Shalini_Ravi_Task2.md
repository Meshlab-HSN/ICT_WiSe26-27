Lecture 5 – Task 2: Search and Filter (grep)

 1. Display the current username
Command:
```bash
whoami
```
Console output:
```text
vboxuser
```
 2. Search for processes belonging to the current user
Command:
```bash
ps aux | grep "$(whoami)"
```
Console output:
root         863  0.0  0.3   8760  5672 ?        Ss   12:04   0:00 login -- vboxuser
vboxuser    1417  0.0  0.8  22236 12928 ?        Ss   12:04   0:00 /usr/lib/systemd/systemd --user
vboxuser    1421  0.0  0.2  23012  4116 ?        S    12:04   0:00 (sd-pam)
vboxuser    1445  0.0  0.3   8856  5940 tty1     Ss+  12:04   0:00 -bash
root        1593  0.2  0.8  18528 12140 ?        Ss   12:32   0:00 sshd-session: vboxuser [priv]
vboxuser    1652  1.1  0.5  18688  7700 ?        S    12:32   0:00 sshd-session: vboxuser@pts/0
vboxuser    1653  0.3  0.3   8844  5852 pts/0    Ss   12:32   0:00 -bash
vboxuser    1704  0.0  0.3   9764  4676 pts/0    R+   12:32   0:00 ps aux
vboxuser    1705  0.0  0.2   8844  3456 pts/0    S+   12:32   0:00 -bash
vboxuser    1706  0.0  0.2   8844  3328 pts/0    S+   12:32   0:00 -bash
vboxuser    1707  0.0  0.4  16112  6728 pts/0    D+   12:32   0:00 whoami


## 3. Filter processes belonging to the current user

**Command:**
```bash
ps aux | grep -E "^$(whoami)[[:space:]]"
```
Console output:
vboxuser    1417  0.0  0.8  22236 12928 ?        Ss   12:04   0:00 /usr/lib/systemd/systemd --user
vboxuser    1421  0.0  0.2  23012  4116 ?        S    12:04   0:00 (sd-pam)
vboxuser    1445  0.0  0.3   8856  5940 tty1     Ss+  12:04   0:00 -bash
vboxuser    1652  0.4  0.5  18688  7700 ?        S    12:32   0:00 sshd-session: vboxuser@pts/0
vboxuser    1653  0.1  0.3   8844  5852 pts/0    Ss   12:32   0:00 -bash
vboxuser    1717  0.0  0.3   9764  4676 pts/0    R+   12:33   0:00 ps aux
vboxuser    1718  0.0  0.1   6848  2712 pts/0    S+   12:33   0:00 grep --color=auto -E ^vboxuser[[:space:]]

 4. Exclude the grep command itself

Command:
```bash
ps aux | grep -E "^$(whoami)[[:space:]]" | grep -v '[g]rep'
```
Console output:
vboxuser    1417  0.0  0.8  22236 12928 ?        Ss   12:04   0:00 /usr/lib/systemd/systemd --user
vboxuser    1421  0.0  0.2  23012  4116 ?        S    12:04   0:00 (sd-pam)
vboxuser    1445  0.0  0.3   8856  5940 tty1     Ss+  12:04   0:00 -bash
vboxuser    1652  0.2  0.5  18688  7700 ?        S    12:32   0:00 sshd-session: vboxuser@pts/0
vboxuser    1653  0.0  0.3   8844  5852 pts/0    Ss   12:32   0:00 -bash
vboxuser    1731  0.0  0.3   9764  4680 pts/0    R+   12:34   0:00 ps aux

5. Exclude root processes
Command:
```bash
ps aux | grep -vE '^root[[:space:]]' | grep -v '[g]rep'
```
Console output:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     467  0.0  0.9  22636 14688 ?        Ss   12:03   0:00 /usr/lib/systemd/systemd-resolved
systemd+     667  0.0  0.8  21460 12352 ?        Ss   12:04   0:00 /usr/lib/systemd/systemd-networkd
message+     788  0.0  0.3   9008  5704 ?        Ss   12:04   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      795  0.0  0.5 306448  8364 ?        Ssl  12:04   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony      881  0.0  0.4  20556  6476 ?        S    12:04   0:00 /usr/sbin/chronyd -n -F 1
_chrony      883  0.0  0.1  12096  2348 ?        S    12:04   0:00 /usr/sbin/chronyd -n -F 1
syslog       963  0.0  0.4 220548  6172 ?        Ssl  12:04   0:00 /usr/sbin/rsyslogd -n -iNONE
vboxuser    1417  0.0  0.8  22236 12928 ?        Ss   12:04   0:00 /usr/lib/systemd/systemd --user
vboxuser    1421  0.0  0.2  23012  4116 ?        S    12:04   0:00 (sd-pam)
vboxuser    1445  0.0  0.3   8856  5940 tty1     Ss+  12:04   0:00 -bash
vboxuser    1652  0.2  0.5  18688  7700 ?        S    12:32   0:00 sshd-session: vboxuser@pts/0
vboxuser    1653  0.0  0.3   8844  5852 pts/0    Ss   12:32   0:00 -bash
vboxuser    1746  0.0  0.3   9764  4704 pts/0    R+   12:35   0:00 ps aux

## 6. Exclude kernel worker and interrupt processes

Command:
```bash
ps aux | grep -vE 'kworker|irq|[g]rep'
```
Console output:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.1  1.0  24760 16064 ?        Ss   12:03   0:03 /usr/lib/systemd/systemd --switched-root --system --deserialize=51
root           2  0.0  0.0      0     0 ?        S    12:03   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    12:03   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    12:03   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    12:03   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    12:03   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    12:03   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    12:03   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    12:03   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    12:03   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    12:03   0:00 [kdevtmpfs]
root          24  0.0  0.0      0     0 ?        I    12:03   0:00 [rcu_tasks_kthread]
root          25  0.0  0.0      0     0 ?        I    12:03   0:00 [rcu_tasks_rude_kthread]
root          26  0.0  0.0      0     0 ?        S    12:03   0:00 [kauditd]
root          27  0.0  0.0      0     0 ?        S    12:03   0:00 [khungtaskd]
root          29  0.0  0.0      0     0 ?        S    12:03   0:00 [oom_reaper]
root          32  0.0  0.0      0     0 ?        S    12:03   0:00 [kcompactd0]
root          33  0.0  0.0      0     0 ?        SN   12:03   0:00 [ksmd]
root          34  0.0  0.0      0     0 ?        SN   12:03   0:00 [khugepaged]
root          46  0.0  0.0      0     0 ?        S    12:03   0:00 [watchdogd]
root          48  0.0  0.0      0     0 ?        S    12:03   0:00 [kswapd0]
root          49  0.0  0.0      0     0 ?        S    12:03   0:00 [ecryptfs-kthread]
root          52  0.0  0.0      0     0 ?        S    12:03   0:00 [scsi_eh_0]
root          54  0.0  0.0      0     0 ?        S    12:03   0:00 [scsi_eh_1]
root         278  0.0  0.0      0     0 ?        S    12:03   0:00 [scsi_eh_2]
root         312  0.0  0.0      0     0 ?        S    12:03   0:00 [jbd2/sda2-8]
root         408  0.0  0.0      0     0 ?        S    12:03   0:00 [psimon]
root         415  0.0  1.2  50644 18076 ?        S<s  12:03   0:00 /usr/lib/systemd/systemd-journald
root         444  0.0  0.6 279492  9644 ?        SLsl 12:03   0:00 /usr/sbin/multipathd -d -s
systemd+     467  0.0  0.9  22636 14688 ?        Ss   12:03   0:00 /usr/lib/systemd/systemd-resolved
root         474  0.0  1.0  41296 15436 ?        Ss   12:03   0:00 /usr/lib/systemd/systemd-udevd
root         545  0.0  0.0      0     0 ?        S    12:03   0:00 [psimon]
systemd+     667  0.0  0.8  21460 12352 ?        Ss   12:04   0:00 /usr/lib/systemd/systemd-networkd
root         786  0.0  0.1   2888  2012 ?        Ss   12:04   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root         787  0.0  0.2   7060  3400 ?        Ss   12:04   0:00 /usr/sbin/cron -f -P
message+     788  0.0  0.3   9008  5704 ?        Ss   12:04   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         794  0.0  2.0  46844 30320 ?        Ss   12:04   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      795  0.0  0.5 306448  8364 ?        Ssl  12:04   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root         798  0.0  2.6 1780576 39996 ?       Ssl  12:04   0:01 /snap/snapd/current/usr/lib/snapd/snapd
root         802  0.0  0.6  18592  9668 ?        Ss   12:04   0:00 /usr/lib/systemd/systemd-logind
root         804  0.0  1.0 543356 15200 ?        Ssl  12:04   0:00 /usr/libexec/udisks2/udisksd
root         846  0.0  0.5  10744  7832 ?        Ss   12:04   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root         863  0.0  0.3   8760  5672 ?        Ss   12:04   0:00 login -- vboxuser
_chrony      881  0.0  0.4  20556  6476 ?        S    12:04   0:00 /usr/sbin/chronyd -n -F 1
_chrony      883  0.0  0.1  12096  2348 ?        S    12:04   0:00 /usr/sbin/chronyd -n -F 1
root         884  0.0  2.2 126116 33052 ?        Ssl  12:04   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root         927  0.0  0.9 391604 14280 ?        Ssl  12:04   0:00 /usr/sbin/ModemManager
syslog       963  0.0  0.4 220548  6172 ?        Ssl  12:04   0:00 /usr/sbin/rsyslogd -n -iNONE
root        1154  0.0  0.1 221560  2968 ?        Sl   12:04   0:01 /usr/bin/VBoxDRMClient
root        1156  0.0  0.2 292080  4028 ?        Sl   12:04   0:00 /usr/sbin/VBoxService --pidfile /var/run/vboxadd-service.sh
vboxuser    1417  0.0  0.8  22236 12928 ?        Ss   12:04   0:00 /usr/lib/systemd/systemd --user
vboxuser    1421  0.0  0.2  23012  4116 ?        S    12:04   0:00 (sd-pam)
vboxuser    1445  0.0  0.3   8856  5940 tty1     Ss+  12:04   0:00 -bash
root        1593  0.0  0.8  18528 12140 ?        Ss   12:32   0:00 sshd-session: vboxuser [priv]
vboxuser    1652  0.1  0.5  18688  7700 ?        S    12:32   0:00 sshd-session: vboxuser@pts/0
vboxuser    1653  0.0  0.3   8844  5852 pts/0    Ss   12:32   0:00 -bash
vboxuser    1758  0.0  0.3   9764  4668 pts/0    R+   12:36   0:00 ps aux
