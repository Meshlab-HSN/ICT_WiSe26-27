# Task 3: Data Manipulation (sed & awk)
## 1. Replace root with ROOT using sed
```bash
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.0  0.6  22260 13348 ?        Ss   12:55   0:01 /sbin/init splash noprompt noshell automatic-ubiquity
ROOT           2  0.0  0.0      0     0 ?        S    12:55   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    12:55   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-rcu_g]
ROOT           5  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-rcu_p]
ROOT           6  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-slub_]
ROOT           7  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-netns]
ROOT          12  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-mm_pe]
ROOT          13  0.0  0.0      0     0 ?        I    12:55   0:00 [rcu_tasks_kthread]
ROOT          14  0.0  0.0      0     0 ?        I    12:55   0:00 [rcu_tasks_rude_kthread]
ROOT          15  0.0  0.0      0     0 ?        I    12:55   0:00 [rcu_tasks_trace_kthread]
ROOT          16  0.0  0.0      0     0 ?        S    12:55   0:00 [ksoftirqd/0]
ROOT          17  0.0  0.0      0     0 ?        I    12:55   0:00 [rcu_preempt]
ROOT          18  0.0  0.0      0     0 ?        S    12:55   0:00 [migration/0]
ROOT          19  0.0  0.0      0     0 ?        S    12:55   0:00 [idle_inject/0]
ROOT          20  0.0  0.0      0     0 ?        S    12:55   0:00 [cpuhp/0]
ROOT          21  0.0  0.0      0     0 ?        S    12:55   0:00 [kdevtmpfs]
ROOT          22  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-inet_]
ROOT          23  0.0  0.0      0     0 ?        S    12:55   0:00 [kauditd]
ROOT          24  0.0  0.0      0     0 ?        S    12:55   0:00 [khungtaskd]
ROOT          26  0.0  0.0      0     0 ?        S    12:55   0:00 [oom_reaper]
ROOT          27  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-write]
ROOT          28  0.0  0.0      0     0 ?        S    12:55   0:01 [kcompactd0]
ROOT          29  0.0  0.0      0     0 ?        SN   12:55   0:00 [ksmd]
ROOT          30  0.0  0.0      0     0 ?        SN   12:55   0:00 [khugepaged]
ROOT          31  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-kinte]
ROOT          32  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-kbloc]
ROOT          33  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-blkcg]
ROOT          34  0.0  0.0      0     0 ?        S    12:55   0:00 [irq/9-acpi]
ROOT          36  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-tpm_d]
ROOT          37  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-ata_s]
ROOT          38  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-md]
ROOT          39  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-md_bi]
ROOT          40  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-edac-]
ROOT          41  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-devfr]
ROOT          42  0.0  0.0      0     0 ?        S    12:55   0:00 [watchdogd]
ROOT          43  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-quota]
ROOT          45  0.0  0.0      0     0 ?        S    12:55   0:00 [kswapd0]
ROOT          46  0.0  0.0      0     0 ?        S    12:55   0:00 [ecryptfs-kthread]
ROOT          47  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-kthro]
ROOT          48  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-acpi_]
ROOT          49  0.0  0.0      0     0 ?        S    12:55   0:00 [scsi_eh_0]
ROOT          50  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-scsi_]
ROOT          51  0.0  0.0      0     0 ?        S    12:55   0:00 [scsi_eh_1]
ROOT          52  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-scsi_]
ROOT          57  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-mld]
ROOT          58  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-ipv6_]
ROOT          66  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-kstrp]
ROOT          68  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/u3:0]
ROOT          73  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-crypt]
ROOT          83  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-charg]
ROOT         146  0.0  0.0      0     0 ?        S    12:55   0:00 [scsi_eh_2]
ROOT         147  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-scsi_]
ROOT         181  0.0  0.0      0     0 ?        I<   12:56   0:00 [kworker/R-raid5]
ROOT         226  0.0  0.0      0     0 ?        S    12:56   0:00 [jbd2/sda2-8]
ROOT         227  0.0  0.0      0     0 ?        I<   12:56   0:00 [kworker/R-ext4-]
ROOT         315  0.0  0.0      0     0 ?        I<   12:56   0:00 [kworker/R-kmpat]
ROOT         316  0.0  0.0      0     0 ?        I<   12:56   0:00 [kworker/R-kmpat]
ROOT         341  0.0  1.3 288996 27332 ?        SLsl 12:56   0:01 /sbin/multipathd -d -s
ROOT         380  0.0  0.4  29352  8072 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd-udevd
systemd+     399  0.0  0.6  21472 13048 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd-resolved
systemd+     402  0.0  0.3  91036  7992 ?        Ssl  12:56   0:00 /usr/lib/systemd/systemd-timesyncd
ROOT         438  0.0  0.0      0     0 ?        S    12:56   0:00 [psimon]
ROOT         492  0.0  0.0      0     0 ?        I<   12:56   0:00 [kworker/R-cfg80]
message+     562  0.0  0.2   9812  5604 ?        Ss   12:56   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      567  0.0  0.4 308180  8072 ?        Ssl  12:56   0:00 /usr/lib/polkit-1/polkitd --no-debug
ROOT         576  0.0  0.4  18220  9024 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd-logind
ROOT         577  0.0  0.6 468976 13600 ?        Ssl  12:56   0:00 /usr/libexec/udisks2/udisksd
ROOT         598  0.0  1.1 109704 23144 ?        Ssl  12:56   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
syslog       607  0.0  0.3 222516  6204 ?        Ssl  12:56   0:00 /usr/sbin/rsyslogd -n -iNONE
ROOT         619  0.0  0.6 392104 13084 ?        Ssl  12:56   0:00 /usr/sbin/ModemManager
ROOT         682  0.0  0.0      0     0 ?        S    12:56   0:00 [irq/18-vmwgfx]
ROOT         683  0.0  0.0      0     0 ?        I<   12:56   0:00 [kworker/R-ttm]
ROOT         712  0.0  0.1   6828  2904 ?        Ss   12:56   0:00 /usr/sbin/cron -f -P
ROOT         731  0.0  0.4  12028  8304 ?        Ss   12:56   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
ROOT        1243  0.0  2.2 710080 45464 ?        Ssl  14:41   0:02 /usr/libexec/fwupd/fwupd
ROOT        1254  0.0  0.4 388044  9516 ?        Ssl  14:41   0:00 /usr/libexec/upowerd
ROOT        1273  0.0  0.0      0     0 ?        I<   15:33   0:00 [kworker/0:2H-kblockd]
ROOT        1398  0.0  0.1   6108  2032 tty6     Ss+  16:37   0:00 /sbin/agetty -o -p -- \u --noclear - linux
ROOT        1593  0.0  0.0      0     0 ?        I<   18:00   0:00 [kworker/R-tls-s]
ROOT        1651  0.0  0.2   6984  4880 tty1     Ss   18:31   0:00 /bin/login -p --
ROOT        1734  0.0  0.0      0     0 ?        S    18:32   0:00 [psimon]
siddika+    1736  0.0  0.5  20292 11440 ?        Ss   18:32   0:00 /usr/lib/systemd/systemd --user
siddika+    1737  0.0  0.1  21168  3572 ?        S    18:32   0:00 (sd-pam)
siddika+    1747  0.0  0.2   8656  5700 tty1     S+   18:32   0:00 -bash
ROOT        1814  0.0  0.5  14972 10712 ?        Ss   18:56   0:00 sshd: siddika-bhanu [priv]
siddika+    1871  0.0  0.3  15104  7140 ?        S    18:57   0:14 sshd: siddika-bhanu@pts/0
siddika+    1872  0.0  0.3  10116  6424 pts/0    Ss   18:57   0:00 -bash
ROOT        1887  0.1  0.0      0     0 ?        I    19:00   0:18 [kworker/0:3-ata_sff]
systemd+    1927  0.0  0.4  19020  9592 ?        Ss   20:37   0:00 /usr/lib/systemd/systemd-networkd
ROOT        2009  0.0  0.0      0     0 ?        I    21:25   0:00 [kworker/u2:2-events_unbound]
ROOT        2129  0.0  0.0      0     0 ?        I    21:46   0:00 [kworker/u2:0-flush-8:0]
ROOT        2141  0.0  0.5  34168 12088 ?        S<s  22:47   0:00 /usr/lib/systemd/systemd-journald
ROOT        2293  0.0  0.0      0     0 ?        I    22:55   0:00 [kworker/0:0-cgwb_release]
ROOT        2462  0.0  0.0      0     0 ?        I<   22:55   0:00 [kworker/0:0H-kblockd]
ROOT        2598  0.0  0.0      0     0 ?        I    23:09   0:00 [kworker/u2:1-events_unbound]
ROOT        2609  0.0  0.0      0     0 ?        I    23:11   0:00 [kworker/u2:4-events_power_efficient]
ROOT        2632  0.0  0.0      0     0 ?        I    23:20   0:00 [kworker/0:1-cgroup_free]
ROOT        2633  0.0  0.0      0     0 ?        I    23:20   0:00 [kworker/0:2]
siddika+    2634  0.0  0.2  10892  4580 pts/0    R+   23:20   0:00 ps aux
100 processes are running
```
## 2. Formatted users with UID and GID using awk
```bash
```
## 3. Username and process name from processes.log using awk
```bash
```
## 4. Sum of CPU usage using awk
```bash
```
