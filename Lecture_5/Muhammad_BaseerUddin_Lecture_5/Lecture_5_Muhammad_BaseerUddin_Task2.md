mbaseer@ICTMuhammadBaseerUddin:~/ICT_WiSe26-27$ whoami
mbaseer
mbaseer@ICTMuhammadBaseerUddin:~/ICT_WiSe26-27$ ps aux | grep mbaseer
root        1830  0.0  0.0  18432 12300 ?        Ss   07:34   0:00 sshd-session: mbaseer [priv]
mbaseer     1835  0.0  0.0  22096 13212 ?        Ss   07:34   0:00 /usr/lib/systemd/systemd --user
mbaseer     1837  0.0  0.0  23012  4096 ?        S    07:34   0:00 (sd-pam)
mbaseer     1931  0.0  0.0  18568  7708 ?        S    07:34   0:03 sshd-session: mbaseer@pts/0
mbaseer     1932  0.0  0.0   8960  6184 pts/0    Ss   07:34   0:00 -bash
mbaseer     2348  0.0  0.0   9764  4760 pts/0    R+   08:35   0:00 ps aux
mbaseer     2349  0.0  0.0   6716  2704 pts/0    S+   08:35   0:00 grep --color=auto mbaseer
mbaseer@ICTMuhammadBaseerUddin:~/ICT_WiSe26-27$ ps aux | grep -E "^mbaseer\s"
mbaseer     1835  0.0  0.0  22096 13212 ?        Ss   07:34   0:00 /usr/lib/systemd/systemd --user
mbaseer     1837  0.0  0.0  23012  4096 ?        S    07:34   0:00 (sd-pam)
mbaseer     1931  0.1  0.0  18568  7708 ?        S    07:34   0:03 sshd-session: mbaseer@pts/0
mbaseer     1932  0.0  0.0   8960  6184 pts/0    Ss   07:34   0:00 -bash
mbaseer     2360  100  0.0   9764  4752 pts/0    R+   08:37   0:00 ps aux
mbaseer     2361  0.0  0.0   6848  2660 pts/0    S+   08:37   0:00 grep --color=auto -E ^mbaseer\s
mbaseer@ICTMuhammadBaseerUddin:~/ICT_WiSe26-27$ ps aux | grep -v "^root\s"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     659  0.0  0.0  22624 14712 ?        Ss   07:33   0:00 /usr/lib/systemd/systemd-resolved
systemd+     998  0.0  0.0  21432 12288 ?        Ss   07:33   0:00 /usr/lib/systemd/systemd-networkd
message+    1327  0.0  0.0   9008  5788 ?        Ss   07:33   0:02 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1338  0.0  0.0 306448  8420 ?        Ssl  07:33   0:01 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony     1457  0.0  0.0  23728 11192 ?        S    07:33   0:00 /usr/sbin/chronyd -n -F 1
syslog      1471  0.0  0.0 220548  6176 ?        Ssl  07:33   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1476  0.0  0.0  12096  2456 ?        S    07:33   0:00 /usr/sbin/chronyd -n -F 1
mbaseer     1835  0.0  0.0  22096 13212 ?        Ss   07:34   0:00 /usr/lib/systemd/systemd --user
mbaseer     1837  0.0  0.0  23012  4096 ?        S    07:34   0:00 (sd-pam)
mbaseer     1931  0.1  0.0  18568  7708 ?        S    07:34   0:03 sshd-session: mbaseer@pts/0
mbaseer     1932  0.0  0.0   8960  6184 pts/0    Ss   07:34   0:00 -bash
mbaseer     2371  100  0.0   9764  4752 pts/0    R+   08:38   0:00 ps aux
mbaseer     2372  0.0  0.0   6716  2688 pts/0    S+   08:38   0:00 grep --color=auto -v ^root\s
mbaseer@ICTMuhammadBaseerUddin:~/ICT_WiSe26-27$ ps aux | grep -E -v "(kworker|irq)"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.1  0.0  26352 16688 ?        Ss   07:33   0:07 /usr/lib/systemd/systemd --switched-root --system --deserialize=55
root           2  0.0  0.0      0     0 ?        S    07:33   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    07:33   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    07:33   0:01 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    07:33   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    07:33   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    07:33   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    07:33   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    07:33   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    07:33   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    07:33   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    07:33   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    07:33   0:00 [migration/1]
root          28  0.0  0.0      0     0 ?        S    07:33   0:00 [cpuhp/2]
root          29  0.0  0.0      0     0 ?        S    07:33   0:00 [idle_inject/2]
root          30  0.0  0.0      0     0 ?        S    07:33   0:00 [migration/2]
root          34  0.0  0.0      0     0 ?        S    07:33   0:00 [cpuhp/3]
root          35  0.0  0.0      0     0 ?        S    07:33   0:00 [idle_inject/3]
root          36  0.0  0.0      0     0 ?        S    07:33   0:00 [migration/3]
root          40  0.0  0.0      0     0 ?        S    07:33   0:00 [cpuhp/4]
root          41  0.0  0.0      0     0 ?        S    07:33   0:00 [idle_inject/4]
root          42  0.0  0.0      0     0 ?        S    07:33   0:00 [migration/4]
root          46  0.0  0.0      0     0 ?        S    07:33   0:00 [cpuhp/5]
root          47  0.0  0.0      0     0 ?        S    07:33   0:00 [idle_inject/5]
root          48  0.0  0.0      0     0 ?        S    07:33   0:00 [migration/5]
root          52  0.0  0.0      0     0 ?        S    07:33   0:00 [cpuhp/6]
root          53  0.0  0.0      0     0 ?        S    07:33   0:00 [idle_inject/6]
root          54  0.0  0.0      0     0 ?        S    07:33   0:00 [migration/6]
root          58  0.0  0.0      0     0 ?        S    07:33   0:00 [cpuhp/7]
root          59  0.0  0.0      0     0 ?        S    07:33   0:00 [idle_inject/7]
root          60  0.0  0.0      0     0 ?        S    07:33   0:00 [migration/7]
root          64  0.0  0.0      0     0 ?        S    07:33   0:00 [cpuhp/8]
root          65  0.0  0.0      0     0 ?        S    07:33   0:00 [idle_inject/8]
root          66  0.0  0.0      0     0 ?        S    07:33   0:00 [migration/8]
root          70  0.0  0.0      0     0 ?        S    07:33   0:00 [cpuhp/9]
root          71  0.0  0.0      0     0 ?        S    07:33   0:00 [idle_inject/9]
root          72  0.0  0.0      0     0 ?        S    07:33   0:00 [migration/9]
root          76  0.0  0.0      0     0 ?        S    07:33   0:00 [cpuhp/10]
root          77  0.0  0.0      0     0 ?        S    07:33   0:00 [idle_inject/10]
root          78  0.0  0.0      0     0 ?        S    07:33   0:00 [migration/10]
root          82  0.0  0.0      0     0 ?        S    07:33   0:00 [cpuhp/11]
root          83  0.0  0.0      0     0 ?        S    07:33   0:00 [idle_inject/11]
root          84  0.0  0.0      0     0 ?        S    07:33   0:00 [migration/11]
root         100  0.0  0.0      0     0 ?        S    07:33   0:00 [kdevtmpfs]
root         102  0.0  0.0      0     0 ?        I    07:33   0:00 [rcu_tasks_kthread]
root         103  0.0  0.0      0     0 ?        I    07:33   0:00 [rcu_tasks_rude_kthread]
root         104  0.0  0.0      0     0 ?        S    07:33   0:00 [kauditd]
root         105  0.0  0.0      0     0 ?        S    07:33   0:00 [khungtaskd]
root         106  0.0  0.0      0     0 ?        S    07:33   0:00 [oom_reaper]
root         110  0.0  0.0      0     0 ?        S    07:33   0:00 [kcompactd0]
root         111  0.0  0.0      0     0 ?        SN   07:33   0:00 [ksmd]
root         112  0.0  0.0      0     0 ?        SN   07:33   0:00 [khugepaged]
root         125  0.0  0.0      0     0 ?        S    07:33   0:00 [watchdogd]
root         129  0.0  0.0      0     0 ?        S    07:33   0:00 [kswapd0]
root         131  0.0  0.0      0     0 ?        S    07:33   0:00 [ecryptfs-kthread]
root         137  0.0  0.0      0     0 ?        S    07:33   0:00 [scsi_eh_0]
root         139  0.0  0.0      0     0 ?        S    07:33   0:00 [scsi_eh_1]
root         435  0.0  0.0      0     0 ?        S    07:33   0:00 [scsi_eh_2]
root         490  0.0  0.0      0     0 ?        S    07:33   0:00 [jbd2/sda2-8]
root         592  0.0  0.0      0     0 ?        S    07:33   0:00 [psimon]
root         600  0.0  0.0  50400 17248 ?        S<s  07:33   0:01 /usr/lib/systemd/systemd-journald
root         640  0.0  0.0 279492  9644 ?        SLsl 07:33   0:01 /usr/sbin/multipathd -d -s
systemd+     659  0.0  0.0  22624 14712 ?        Ss   07:33   0:00 /usr/lib/systemd/systemd-resolved
root         674  0.0  0.0  40192 14364 ?        Ss   07:33   0:01 /usr/lib/systemd/systemd-udevd
root         883  0.0  0.0      0     0 ?        S    07:33   0:00 [psimon]
systemd+     998  0.0  0.0  21432 12288 ?        Ss   07:33   0:00 /usr/lib/systemd/systemd-networkd
root        1326  0.0  0.0   2888  2012 ?        Ss   07:33   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+    1327  0.0  0.0   9008  5788 ?        Ss   07:33   0:02 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1337  0.0  0.1  46744 30244 ?        Ss   07:33   0:02 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1338  0.0  0.0 306448  8420 ?        Ssl  07:33   0:01 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1344  0.1  0.1 2298528 43412 ?       Ssl  07:33   0:04 /snap/snapd/current/usr/lib/snapd/snapd
root        1349  0.0  0.0  18464  9592 ?        Ss   07:33   0:01 /usr/lib/systemd/systemd-logind
root        1350  0.0  0.0 543336 15224 ?        Ssl  07:33   0:02 /usr/libexec/udisks2/udisksd
root        1374  0.0  0.0  10744  7824 ?        Ss   07:33   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        1409  0.0  0.0   7060  3380 ?        Ss   07:33   0:00 /usr/sbin/cron -f -P
root        1453  0.0  0.1 126112 32908 ?        Ssl  07:33   0:01 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony     1457  0.0  0.0  23728 11192 ?        S    07:33   0:00 /usr/sbin/chronyd -n -F 1
syslog      1471  0.0  0.0 220548  6176 ?        Ssl  07:33   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1476  0.0  0.0  12096  2456 ?        S    07:33   0:00 /usr/sbin/chronyd -n -F 1
root        1484  0.0  0.0   8488  2916 tty1     Ss+  07:33   0:00 /usr/sbin/agetty --noreset --noclear --issue-file=/etc/issue:/etc/issue.d:/run/issue.d:/usr/lib/issue.d - linux
root        1513  0.0  0.0 391608 14048 ?        Ssl  07:33   0:01 /usr/sbin/ModemManager
root        1777  0.1  0.0 221560  2972 ?        Sl   07:33   0:07 /usr/bin/VBoxDRMClient
root        1780  0.0  0.0 292080  3816 ?        Sl   07:33   0:01 /usr/sbin/VBoxService --pidfile /var/run/vboxadd-service.sh
root        1830  0.0  0.0  18432 12300 ?        Ss   07:34   0:00 sshd-session: mbaseer [priv]
mbaseer     1835  0.0  0.0  22096 13212 ?        Ss   07:34   0:00 /usr/lib/systemd/systemd --user
mbaseer     1837  0.0  0.0  23012  4096 ?        S    07:34   0:00 (sd-pam)
mbaseer     1931  0.1  0.0  18568  7708 ?        S    07:34   0:03 sshd-session: mbaseer@pts/0
mbaseer     1932  0.0  0.0   8960  6184 pts/0    Ss   07:34   0:00 -bash
root        2226  0.6  0.2 502332 48512 ?        Ssl  08:22   0:07 /usr/libexec/fwupd/fwupd
root        2236  0.0  0.0 319324 12196 ?        Ssl  08:22   0:01 /usr/libexec/upowerd
mbaseer     2413  0.0  0.0   9764  4712 pts/0    R+   08:40   0:00 ps aux
