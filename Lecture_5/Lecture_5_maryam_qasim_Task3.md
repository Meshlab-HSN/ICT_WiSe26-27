# Lecture 5 - Task 3: Data Manipulation

## Exercise 1: Replace root with ROOT

Command:
```bash
sed 's/root/ROOT/g' processes.log
```

Output:
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.1  0.9  24816 16308 ?        Ss   18:12   0:09 /usr/lib/systemd/systemd --switched-ROOT --system --deserialize=51
ROOT           2  0.0  0.0      0     0 ?        S    18:12   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    18:12   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-netns]
ROOT          12  0.0  0.0      0     0 ?        I    18:12   0:00 [kworker/u8:0-ipv6_addrconf]
ROOT          13  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-mm_percpu_wq]
ROOT          14  0.0  0.0      0     0 ?        S    18:12   0:00 [ksoftirqd/0]
ROOT          15  0.0  0.0      0     0 ?        I    18:12   0:00 [rcu_preempt]
ROOT          16  0.0  0.0      0     0 ?        S    18:12   0:00 [rcu_exp_par_gp_kthread_worker/0]
ROOT          17  0.0  0.0      0     0 ?        S    18:12   0:00 [rcu_exp_gp_kthread_worker]
ROOT          18  0.0  0.0      0     0 ?        S    18:12   0:00 [migration/0]
ROOT          19  0.0  0.0      0     0 ?        S    18:12   0:00 [kprobe-optimizer]
ROOT          20  0.0  0.0      0     0 ?        S    18:12   0:00 [idle_inject/0]
ROOT          21  0.0  0.0      0     0 ?        S    18:12   0:00 [cpuhp/0]
ROOT          22  0.0  0.0      0     0 ?        S    18:12   0:00 [cpuhp/1]
ROOT          23  0.0  0.0      0     0 ?        S    18:12   0:00 [idle_inject/1]
ROOT          24  0.0  0.0      0     0 ?        S    18:12   0:00 [migration/1]
ROOT          25  0.0  0.0      0     0 ?        S    18:12   0:00 [ksoftirqd/1]
ROOT          27  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/1:0H]
ROOT          28  0.0  0.0      0     0 ?        I    18:12   0:01 [kworker/u9:0-events_power_efficient]
ROOT          30  0.0  0.0      0     0 ?        S    18:12   0:00 [kdevtmpfs]
ROOT          31  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-inet_frag_wq]
ROOT          32  0.0  0.0      0     0 ?        I    18:12   0:00 [rcu_tasks_kthread]
ROOT          33  0.0  0.0      0     0 ?        I    18:12   0:00 [rcu_tasks_rude_kthread]
ROOT          34  0.0  0.0      0     0 ?        S    18:12   0:00 [kauditd]
ROOT          35  0.0  0.0      0     0 ?        S    18:12   0:00 [khungtaskd]
ROOT          36  0.0  0.0      0     0 ?        S    18:12   0:00 [oom_reaper]
ROOT          39  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-writeback]
ROOT          40  0.0  0.0      0     0 ?        S    18:12   0:00 [kcompactd0]
ROOT          41  0.0  0.0      0     0 ?        SN   18:12   0:00 [ksmd]
ROOT          42  0.0  0.0      0     0 ?        SN   18:12   0:00 [khugepaged]
ROOT          43  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-kblockd]
ROOT          44  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-blkcg_punt_bio]
ROOT          45  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-kintegrityd]
ROOT          46  0.0  0.0      0     0 ?        S    18:12   0:00 [irq/9-acpi]
ROOT          47  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-tpm_dev_wq]
ROOT          48  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-ata_sff]
ROOT          49  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-md_bitmap]
ROOT          50  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-md_llbitmap_io]
ROOT          51  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-md_llbitmap_unplug]
ROOT          52  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-edac-poller]
ROOT          53  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-devfreq_wq]
ROOT          55  0.0  0.0      0     0 ?        S    18:12   0:00 [watchdogd]
ROOT          57  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-quota_events_unbound]
ROOT          59  0.0  0.0      0     0 ?        S    18:12   0:00 [kswapd0]
ROOT          60  0.0  0.0      0     0 ?        S    18:12   0:00 [ecryptfs-kthread]
ROOT          61  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-kthrotld]
ROOT          62  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-acpi_thermal_pm]
ROOT          64  0.0  0.0      0     0 ?        S    18:12   0:00 [scsi_eh_0]
ROOT          65  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-scsi_tmf_0]
ROOT          66  0.0  0.0      0     0 ?        S    18:12   0:00 [scsi_eh_1]
ROOT          67  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-scsi_tmf_1]
ROOT          69  0.0  0.0      0     0 ?        I    18:12   0:00 [kworker/u9:5-events_unbound]
ROOT          70  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-mld]
ROOT          71  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-ipv6_addrconf]
ROOT          72  0.0  0.0      0     0 ?        I    18:12   0:00 [kworker/u8:1-ipv6_addrconf]
ROOT          74  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-kstrp]
ROOT          75  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/0:1H]
ROOT          76  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/1:1H-kblockd]
ROOT          78  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/u11:0]
ROOT          79  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/u12:0]
ROOT          80  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/u13:0]
ROOT          91  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-charger_manager]
ROOT         320  0.0  0.0      0     0 ?        I    18:12   0:01 [kworker/0:3-mm_percpu_wq]
ROOT         321  0.0  0.0      0     0 ?        S    18:12   0:00 [scsi_eh_2]
ROOT         322  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-scsi_tmf_2]
ROOT         396  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-kdmflush/252:0]
ROOT         432  0.0  0.0      0     0 ?        S    18:12   0:00 [jbd2/dm-0-8]
ROOT         433  0.0  0.0      0     0 ?        I<   18:12   0:00 [kworker/R-ext4-rsv-conversion]
ROOT         527  0.0  0.0      0     0 ?        S    18:13   0:00 [psimon]
ROOT         533  0.0  1.0  50404 17116 ?        S<s  18:13   0:00 /usr/lib/systemd/systemd-journald
ROOT         548  0.0  0.0      0     0 ?        I<   18:13   0:00 [kworker/R-kmpathd]
ROOT         549  0.0  0.0      0     0 ?        I<   18:13   0:00 [kworker/R-kmpath_handlerd]
ROOT         565  0.0  0.5 279492  9644 ?        SLsl 18:13   0:01 /usr/sbin/multipathd -d -s
systemd+     590  0.0  0.8  22748 14724 ?        Ss   18:13   0:00 /usr/lib/systemd/systemd-resolved
ROOT         598  0.0  0.8  40088 14252 ?        Ss   18:13   0:01 /usr/lib/systemd/systemd-udevd
ROOT         603  0.0  0.0      0     0 ?        S    18:13   0:00 [psimon]
ROOT         647  0.0  0.0      0     0 ?        I<   18:13   0:00 [kworker/0:2H-kblockd]
ROOT         683  0.0  0.0      0     0 ?        S    18:13   0:00 [irq/18-vmwgfx]
ROOT         684  0.0  0.0      0     0 ?        I<   18:13   0:00 [kworker/R-ttm]
ROOT         715  0.0  0.0      0     0 ?        S    18:13   0:00 [jbd2/sda2-8]
ROOT         716  0.0  0.0      0     0 ?        I<   18:13   0:00 [kworker/R-ext4-rsv-conversion]
systemd+     815  0.0  0.7  21432 12296 ?        Ss   18:13   0:00 /usr/lib/systemd/systemd-networkd
ROOT         886  0.0  0.0      0     0 ?        I<   18:13   0:00 [kworker/R-cfg80211]
ROOT        1003  0.0  0.1   2888  2012 ?        Ss   18:13   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+    1004  0.0  0.3   9160  5712 ?        Ss   18:13   0:01 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
ROOT        1013  0.0  1.8  46744 30300 ?        Ss   18:13   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1014  0.0  0.4 306448  8408 ?        Ssl  18:13   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
ROOT        1017  0.0  2.5 1886136 42304 ?       Ssl  18:13   0:03 /usr/lib/snapd/snapd
ROOT        1021  0.0  0.5  18564  9692 ?        Ss   18:13   0:00 /usr/lib/systemd/systemd-logind
ROOT        1022  0.0  0.9 543444 15332 ?        Ssl  18:13   0:00 /usr/libexec/udisks2/udisksd
syslog      1057  0.0  0.3 220548  6284 ?        Ssl  18:13   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1079  0.0  0.6  24076 11644 ?        S    18:13   0:00 /usr/sbin/chronyd -n -F 1
ROOT        1081  0.0  0.4  10744  7844 ?        Ss   18:13   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
ROOT        1085  0.0  1.9 126116 32984 ?        Ssl  18:13   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony     1136  0.0  0.1  12096  2532 ?        S    18:13   0:00 /usr/sbin/chronyd -n -F 1
ROOT        1194  0.0  0.8 391620 14180 ?        Ssl  18:13   0:00 /usr/sbin/ModemManager
ROOT        1242  0.0  0.1   7060  3348 ?        Ss   18:13   0:00 /usr/sbin/cron -f -P
ROOT        1258  0.0  0.3   8768  5544 ?        Ss   18:14   0:00 login -- maryamqasim
maryamq+    1370  0.0  0.7  22112 13160 ?        Ss   18:15   0:00 /usr/lib/systemd/systemd --user
maryamq+    1387  0.0  0.2  23012  4228 ?        S    18:15   0:00 (sd-pam)
maryamq+    1405  0.0  0.3   8856  5860 tty1     Ss+  18:15   0:00 -bash
ROOT        1460  0.0  0.7  18424 12208 ?        Ss   18:18   0:00 sshd-session: maryamqasim [priv]
maryamq+    1515  0.0  0.4  18556  7812 ?        S    18:18   0:03 sshd-session: maryamqasim@pts/0
maryamq+    1516  0.0  0.3   8844  5864 pts/0    Ss   18:18   0:00 -bash
ROOT        1679  0.1  2.8 502296 48756 ?        Ssl  18:37   0:09 /usr/libexec/fwupd/fwupd
ROOT        1688  0.1  0.6 318820 11536 ?        Ssl  18:37   0:08 /usr/libexec/upowerd
ROOT        1710  0.0  0.0      0     0 ?        I    18:40   0:00 [kworker/u9:1-events_power_efficient]
ROOT        2080  1.1  0.0      0     0 ?        I    19:21   0:30 [kworker/1:0-events]
ROOT        2170  0.0  0.0      0     0 ?        I    19:35   0:00 [kworker/u10:1-events_unbound]
ROOT        2356  0.0  0.0      0     0 ?        I    19:53   0:00 [kworker/u10:2-events_unbound]
ROOT        2453  0.0  0.0      0     0 ?        I    20:00   0:00 [kworker/0:1]
ROOT        2454  0.0  0.0      0     0 ?        I    20:00   0:00 [kworker/1:2-events]
ROOT        2475  0.0  0.0      0     0 ?        I    20:00   0:00 [kworker/u10:3-events_power_efficient]
maryamq+    2547  200  0.2   9764  4728 pts/0    R+   20:06   0:00 ps aux
119 processes are running
```

## Exercise 2: Remove users with nologin

Commands:
```bash
cp /etc/passwd users.txt
sed -i '/nologin/d' users.txt
```

Filtered users.txt output:
```text
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
maryamqasim:x:1000:1000:Maryam Qasim:/home/maryamqasim:/bin/bash
```

## Exercise 3: Display usernames, UID and GID

Command:
```bash
getent passwd | awk -F: '{printf "User %s has UID %s and GID %s\n", $1, $3, $4}'
```

Output:
```text
User root has UID 0 and GID 0
User daemon has UID 1 and GID 1
User bin has UID 2 and GID 2
User sys has UID 3 and GID 3
User sync has UID 4 and GID 65534
User games has UID 5 and GID 60
User man has UID 6 and GID 12
User lp has UID 7 and GID 7
User mail has UID 8 and GID 8
User news has UID 9 and GID 9
User uucp has UID 10 and GID 10
User proxy has UID 13 and GID 13
User www-data has UID 33 and GID 33
User backup has UID 34 and GID 34
User list has UID 38 and GID 38
User irc has UID 39 and GID 39
User _apt has UID 42 and GID 65534
User nobody has UID 65534 and GID 65534
User systemd-network has UID 998 and GID 998
User dhcpcd has UID 997 and GID 997
User messagebus has UID 996 and GID 996
User systemd-resolve has UID 990 and GID 990
User _chrony has UID 989 and GID 989
User usbmux has UID 100 and GID 46
User polkitd has UID 988 and GID 988
User syslog has UID 101 and GID 103
User uuidd has UID 102 and GID 104
User tcpdump has UID 986 and GID 986
User tss has UID 985 and GID 985
User landscape has UID 103 and GID 106
User fwupd-refresh has UID 984 and GID 984
User maryamqasim has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534
```

## Exercise 4: Display username and process name

Command:
```bash
awk 'NR>1 {print $1, $11}' processes.log
```

Output:
```text
ROOT /usr/lib/systemd/systemd
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_gp]
ROOT [kworker/R-sync_wq]
ROOT [kworker/R-kvfree_rcu_reclaim]
ROOT [kworker/R-slub_flushwq]
ROOT [kworker/R-netns]
ROOT [kworker/u8:0-ipv6_addrconf]
ROOT [kworker/R-mm_percpu_wq]
ROOT [ksoftirqd/0]
ROOT [rcu_preempt]
ROOT [rcu_exp_par_gp_kthread_worker/0]
ROOT [rcu_exp_gp_kthread_worker]
ROOT [migration/0]
ROOT [kprobe-optimizer]
ROOT [idle_inject/0]
ROOT [cpuhp/0]
ROOT [cpuhp/1]
ROOT [idle_inject/1]
ROOT [migration/1]
ROOT [ksoftirqd/1]
ROOT [kworker/1:0H]
ROOT [kworker/u9:0-events_power_efficient]
ROOT [kdevtmpfs]
ROOT [kworker/R-inet_frag_wq]
ROOT [rcu_tasks_kthread]
ROOT [rcu_tasks_rude_kthread]
ROOT [kauditd]
ROOT [khungtaskd]
ROOT [oom_reaper]
ROOT [kworker/R-writeback]
ROOT [kcompactd0]
ROOT [ksmd]
ROOT [khugepaged]
ROOT [kworker/R-kblockd]
ROOT [kworker/R-blkcg_punt_bio]
ROOT [kworker/R-kintegrityd]
ROOT [irq/9-acpi]
ROOT [kworker/R-tpm_dev_wq]
ROOT [kworker/R-ata_sff]
ROOT [kworker/R-md_bitmap]
ROOT [kworker/R-md_llbitmap_io]
ROOT [kworker/R-md_llbitmap_unplug]
ROOT [kworker/R-edac-poller]
ROOT [kworker/R-devfreq_wq]
ROOT [watchdogd]
ROOT [kworker/R-quota_events_unbound]
ROOT [kswapd0]
ROOT [ecryptfs-kthread]
ROOT [kworker/R-kthrotld]
ROOT [kworker/R-acpi_thermal_pm]
ROOT [scsi_eh_0]
ROOT [kworker/R-scsi_tmf_0]
ROOT [scsi_eh_1]
ROOT [kworker/R-scsi_tmf_1]
ROOT [kworker/u9:5-events_unbound]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/u8:1-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/0:1H]
ROOT [kworker/1:1H-kblockd]
ROOT [kworker/u11:0]
ROOT [kworker/u12:0]
ROOT [kworker/u13:0]
ROOT [kworker/R-charger_manager]
ROOT [kworker/0:3-mm_percpu_wq]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_tmf_2]
ROOT [kworker/R-kdmflush/252:0]
ROOT [jbd2/dm-0-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [psimon]
ROOT /usr/lib/systemd/systemd-journald
ROOT [kworker/R-kmpathd]
ROOT [kworker/R-kmpath_handlerd]
ROOT /usr/sbin/multipathd
systemd+ /usr/lib/systemd/systemd-resolved
ROOT /usr/lib/systemd/systemd-udevd
ROOT [psimon]
ROOT [kworker/0:2H-kblockd]
ROOT [irq/18-vmwgfx]
ROOT [kworker/R-ttm]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-rsv-conversion]
systemd+ /usr/lib/systemd/systemd-networkd
ROOT [kworker/R-cfg80211]
ROOT /bin/sh
message+ @dbus-daemon
ROOT /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
ROOT /usr/lib/snapd/snapd
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/udisks2/udisksd
syslog /usr/sbin/rsyslogd
_chrony /usr/sbin/chronyd
ROOT sshd:
ROOT /usr/bin/python3
_chrony /usr/sbin/chronyd
ROOT /usr/sbin/ModemManager
ROOT /usr/sbin/cron
ROOT login
maryamq+ /usr/lib/systemd/systemd
maryamq+ (sd-pam)
maryamq+ -bash
ROOT sshd-session:
maryamq+ sshd-session:
maryamq+ -bash
ROOT /usr/libexec/fwupd/fwupd
ROOT /usr/libexec/upowerd
ROOT [kworker/u9:1-events_power_efficient]
ROOT [kworker/1:0-events]
ROOT [kworker/u10:1-events_unbound]
ROOT [kworker/u10:2-events_unbound]
ROOT [kworker/0:1]
ROOT [kworker/1:2-events]
ROOT [kworker/u10:3-events_power_efficient]
maryamq+ ps
119 
```

## Exercise 5: Calculate total CPU usage

Command:
```bash
awk 'NR>1 {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log
```

Output:
```text
Total CPU usage: 201.40%
```
