# lecture 5 - Task 2

## Task 2.1 - Basic grep
Command: ps aux | grep prince
Output:
prince       960  0.0  0.5  20116 11312 ?        Ss   05:41   0:00 /usr/lib/systemd/systemd --user
prince       961  0.0  0.1  21164  3584 ?        S    05:41   0:00 (sd-pam)
prince       974  0.0  0.2   8912  5832 tty1     S+   05:41   0:00 -bash
prince      3717  0.0  0.2   8888  5836 tty4     S    14:43   0:01 -bash
prince      4480  100  0.2  10892  4588 tty4     R+   19:51   0:00 ps aux
prince      4481  0.0  0.1   6548  2324 tty4     S+   19:51   0:00 grep --color=auto prince

## Task 2.2 - Regex filtering
Command: ps aux | grep -E "^prince[[:space:]]"
Output:
prince       960  0.0  0.5  20116 11312 ?        Ss   05:41   0:00 /usr/lib/systemd/systemd --user
prince       961  0.0  0.1  21164  3584 ?        S    05:41   0:00 (sd-pam)
prince       974  0.0  0.2   8912  5832 tty1     S+   05:41   0:00 -bash
prince      3717  0.0  0.2   8888  5848 tty4     S    14:43   0:01 -bash
prince      4524  0.0  0.2  10892  4572 tty4     R+   20:21   0:00 ps aux
prince      4525  0.0  0.1   6684  2332 tty4     S+   20:21   0:00 grep --color=auto -E ^prince[[:space:]]

## Task 2.3 - Exclude root processes
Command: ps aux | grep -Ev '^root[[:space:]]'
Output:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     413  0.0  0.4  19020  9600 ?        Ss   05:41   0:01 /usr/lib/systemd/systemd-networkd
systemd+     450  0.0  0.6  21608 13168 ?        Ss   05:41   0:00 /usr/lib/systemd/systemd-resolved
systemd+     452  0.0  0.3  91036  7964 ?        Ssl  05:41   0:00 /usr/lib/systemd/systemd-timesyncd
message+     643  0.0  0.2   9920  5568 ?        Ss   05:41   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      649  0.0  0.4 309992  9880 ?        Ssl  05:41   0:00 /usr/lib/polkit-1/polkitd --no-debug
syslog       797  0.0  0.3 222516  6264 ?        Ssl  05:41   0:00 /usr/sbin/rsyslogd -n -iNONE
prince       960  0.0  0.5  20116 11312 ?        Ss   05:41   0:00 /usr/lib/systemd/systemd --user
prince       961  0.0  0.1  21164  3584 ?        S    05:41   0:00 (sd-pam)
prince       974  0.0  0.2   8912  5832 tty1     S+   05:41   0:00 -bash
prince      3717  0.0  0.2   8888  5848 tty4     S    14:43   0:01 -bash
prince      4540  0.0  0.2  10892  4588 tty4     R+   20:28   0:00 ps aux
prince      4541  0.0  0.1   6680  2332 tty4     S+   20:28   0:00 grep --color=auto -Ev ^root[[:space:]]

## Task 2.4 - Exclude kworker and irq
Command: ps aux | grep -Ev 'kworker|irq'
Output:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.6  22572 13664 ?        Ss   05:41   0:01 /sbin/init splash noprompt noshell automatic-ubiquity
root           2  0.0  0.0      0     0 ?        S    05:41   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    05:41   0:00 [pool_workqueue_release]
root          13  0.0  0.0      0     0 ?        I    05:41   0:00 [rcu_tasks_kthread]
root          14  0.0  0.0      0     0 ?        I    05:41   0:00 [rcu_tasks_rude_kthread]
root          15  0.0  0.0      0     0 ?        I    05:41   0:00 [rcu_tasks_trace_kthread]
root          17  0.0  0.0      0     0 ?        I    05:41   0:00 [rcu_preempt]
root          18  0.0  0.0      0     0 ?        S    05:41   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    05:41   0:00 [idle_inject/0]
root          20  0.0  0.0      0     0 ?        S    05:41   0:00 [cpuhp/0]
root          21  0.0  0.0      0     0 ?        S    05:41   0:00 [kdevtmpfs]
root          23  0.0  0.0      0     0 ?        S    05:41   0:00 [kauditd]
root          24  0.0  0.0      0     0 ?        S    05:41   0:00 [khungtaskd]
root          26  0.0  0.0      0     0 ?        S    05:41   0:00 [oom_reaper]
root          28  0.0  0.0      0     0 ?        S    05:41   0:02 [kcompactd0]
root          29  0.0  0.0      0     0 ?        SN   05:41   0:00 [ksmd]
root          30  0.0  0.0      0     0 ?        SN   05:41   0:00 [khugepaged]
root          42  0.0  0.0      0     0 ?        S    05:41   0:00 [watchdogd]
root          45  0.0  0.0      0     0 ?        S    05:41   0:00 [kswapd0]
root          46  0.0  0.0      0     0 ?        S    05:41   0:00 [ecryptfs-kthread]
root          49  0.0  0.0      0     0 ?        S    05:41   0:00 [scsi_eh_0]
root          51  0.0  0.0      0     0 ?        S    05:41   0:00 [scsi_eh_1]
root         145  0.0  0.0      0     0 ?        S    05:41   0:00 [scsi_eh_2]
root         225  0.0  0.0      0     0 ?        S    05:41   0:01 [jbd2/sda2-8]
root         341  0.0  1.3 288996 27332 ?        SLsl 05:41   0:04 /sbin/multipathd -d -s
root         364  0.0  0.3  29224  7912 ?        Ss   05:41   0:00 /usr/lib/systemd/systemd-udevd
root         407  0.0  0.0      0     0 ?        S    05:41   0:00 [psimon]
systemd+     413  0.0  0.4  19020  9600 ?        Ss   05:41   0:01 /usr/lib/systemd/systemd-networkd
systemd+     450  0.0  0.6  21608 13168 ?        Ss   05:41   0:00 /usr/lib/systemd/systemd-resolved
systemd+     452  0.0  0.3  91036  7964 ?        Ssl  05:41   0:00 /usr/lib/systemd/systemd-timesyncd
root         642  0.0  0.1   6828  2900 ?        Ss   05:41   0:00 /usr/sbin/cron -f -P
message+     643  0.0  0.2   9920  5568 ?        Ss   05:41   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      649  0.0  0.4 309992  9880 ?        Ssl  05:41   0:00 /usr/lib/polkit-1/polkitd --no-debug
root         673  0.0  0.4  18168  8976 ?        Ss   05:41   0:00 /usr/lib/systemd/systemd-logind
root         684  0.0  0.6 468980 13540 ?        Ssl  05:41   0:01 /usr/libexec/udisks2/udisksd
root         697  0.0  0.4  12028  8252 ?        Ss   05:41   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root         724  0.0  1.1 109660 23192 ?        Ssl  05:41   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root         769  0.0  0.6 392036 13052 ?        Ssl  05:41   0:00 /usr/sbin/ModemManager
root         787  0.0  0.2   6952  4904 tty1     Ss   05:41   0:00 /bin/login -p --
syslog       797  0.0  0.3 222516  6264 ?        Ssl  05:41   0:00 /usr/sbin/rsyslogd -n -iNONE
prince       960  0.0  0.5  20116 11312 ?        Ss   05:41   0:00 /usr/lib/systemd/systemd --user
prince       961  0.0  0.1  21164  3584 ?        S    05:41   0:00 (sd-pam)
prince       974  0.0  0.2   8912  5832 tty1     S+   05:41   0:00 -bash
root        1051  0.0  2.2 744172 45716 ?        Ssl  05:58   0:10 /usr/libexec/fwupd/fwupd
root        1058  0.0  0.5 390020 11504 ?        Ssl  05:58   0:07 /usr/libexec/upowerd
root        1539  0.0  0.0      0     0 ?        S    07:40   0:00 [psimon]
root        1625  0.0  0.8  50320 16316 ?        S<s  09:33   0:00 /usr/lib/systemd/systemd-journald
root        3634  0.0  0.2   6952  4860 tty4     Ss   14:43   0:00 /bin/login -p --
prince      3717  0.0  0.2   8888  5848 tty4     S    14:43   0:01 -bash
prince      4544  0.0  0.2  10892  4584 tty4     R+   20:30   0:00 ps aux
