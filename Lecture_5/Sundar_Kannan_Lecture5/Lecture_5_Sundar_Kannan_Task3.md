# Lecture 5 - Task 3: Data manipulation
## sed 1. Replace root with ROOT in processes.log
```
$ sed -i 's/^root /ROOT /' processes.log && cat processes.log
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.2  0.1  25352 16608 ?        Ss   17:42   0:05 /usr/lib/systemd/systemd --switched-root --system --deserialize=55
ROOT           2  0.0  0.0      0     0 ?        S    17:42   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    17:42   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-netns]
ROOT          10  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/0:0H-kblockd]
ROOT          12  0.0  0.0      0     0 ?        I    17:42   0:00 [kworker/u8:0-ipv6_addrconf]
ROOT          13  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-mm_percpu_wq]
ROOT          14  0.0  0.0      0     0 ?        S    17:42   0:00 [ksoftirqd/0]
ROOT          15  0.0  0.0      0     0 ?        R    17:42   0:00 [rcu_preempt]
ROOT          16  0.0  0.0      0     0 ?        S    17:42   0:00 [rcu_exp_par_gp_kthread_worker/0]
ROOT          17  0.0  0.0      0     0 ?        S    17:42   0:00 [rcu_exp_gp_kthread_worker]
ROOT          18  0.0  0.0      0     0 ?        S    17:42   0:00 [migration/0]
ROOT          19  0.0  0.0      0     0 ?        S    17:42   0:00 [kprobe-optimizer]
ROOT          20  0.0  0.0      0     0 ?        S    17:42   0:00 [idle_inject/0]
ROOT          21  0.0  0.0      0     0 ?        S    17:42   0:00 [cpuhp/0]
ROOT          22  0.0  0.0      0     0 ?        S    17:42   0:00 [cpuhp/1]
ROOT          23  0.0  0.0      0     0 ?        S    17:42   0:00 [idle_inject/1]
ROOT          24  0.0  0.0      0     0 ?        S    17:42   0:00 [migration/1]
ROOT          25  0.0  0.0      0     0 ?        S    17:42   0:00 [ksoftirqd/1]
ROOT          27  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/1:0H-kblockd]
ROOT          28  0.0  0.0      0     0 ?        I    17:42   0:00 [kworker/u9:0-events_unbound]
ROOT          29  0.0  0.0      0     0 ?        I    17:42   0:00 [kworker/u10:0-events_power_efficient]
ROOT          30  0.0  0.0      0     0 ?        S    17:42   0:00 [kdevtmpfs]
ROOT          31  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-inet_frag_wq]
ROOT          32  0.0  0.0      0     0 ?        I    17:42   0:00 [rcu_tasks_kthread]
ROOT          33  0.0  0.0      0     0 ?        I    17:42   0:00 [rcu_tasks_rude_kthread]
ROOT          34  0.0  0.0      0     0 ?        S    17:42   0:00 [kauditd]
ROOT          35  0.0  0.0      0     0 ?        S    17:42   0:00 [khungtaskd]
ROOT          36  0.0  0.0      0     0 ?        S    17:42   0:00 [oom_reaper]
ROOT          38  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-writeback]
ROOT          39  0.0  0.0      0     0 ?        I    17:42   0:00 [kworker/u9:2-events_power_efficient]
ROOT          40  0.0  0.0      0     0 ?        S    17:42   0:00 [kcompactd0]
ROOT          41  0.0  0.0      0     0 ?        SN   17:42   0:00 [ksmd]
ROOT          42  0.0  0.0      0     0 ?        SN   17:42   0:00 [khugepaged]
ROOT          43  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-kblockd]
ROOT          44  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-blkcg_punt_bio]
ROOT          45  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-kintegrityd]
ROOT          46  0.0  0.0      0     0 ?        S    17:42   0:00 [irq/9-acpi]
ROOT          47  1.0  0.0      0     0 ?        I    17:42   0:19 [kworker/1:1-mm_percpu_wq]
ROOT          48  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-tpm_dev_wq]
ROOT          49  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-ata_sff]
ROOT          50  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-md_bitmap]
ROOT          51  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-md_llbitmap_io]
ROOT          52  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-md_llbitmap_unplug]
ROOT          53  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-edac-poller]
ROOT          54  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-devfreq_wq]
ROOT          55  0.0  0.0      0     0 ?        S    17:42   0:00 [watchdogd]
ROOT          57  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-quota_events_unbound]
ROOT          58  0.0  0.0      0     0 ?        I    17:42   0:00 [kworker/u10:2-events_unbound]
ROOT          59  0.0  0.0      0     0 ?        S    17:42   0:00 [kswapd0]
ROOT          60  0.0  0.0      0     0 ?        S    17:42   0:00 [ecryptfs-kthread]
ROOT          61  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-kthrotld]
ROOT          62  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-acpi_thermal_pm]
ROOT          63  0.0  0.0      0     0 ?        S    17:42   0:00 [scsi_eh_0]
ROOT          64  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-scsi_tmf_0]
ROOT          65  0.0  0.0      0     0 ?        S    17:42   0:00 [scsi_eh_1]
ROOT          66  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-scsi_tmf_1]
ROOT          70  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-mld]
ROOT          71  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-ipv6_addrconf]
ROOT          72  0.0  0.0      0     0 ?        I    17:42   0:00 [kworker/u8:1-ipv6_addrconf]
ROOT          73  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-kstrp]
ROOT          75  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/u11:0]
ROOT          77  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/u12:0]
ROOT          78  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/u13:0]
ROOT          80  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/0:1H]
ROOT          81  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/1:1H-kblockd]
ROOT          91  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-charger_manager]
ROOT         231  0.0  0.0      0     0 ?        I    17:42   0:00 [kworker/u9:3-events_unbound]
ROOT         304  0.0  0.0      0     0 ?        S    17:42   0:00 [scsi_eh_2]
ROOT         305  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-scsi_tmf_2]
ROOT         338  0.0  0.0      0     0 ?        S    17:42   0:00 [jbd2/sda2-8]
ROOT         339  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-ext4-rsv-conversion]
ROOT         439  0.0  0.1  50528 17232 ?        S<s  17:42   0:00 /usr/lib/systemd/systemd-journald
ROOT         452  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-kmpathd]
ROOT         455  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-kmpath_handlerd]
ROOT         469  0.0  0.0 279492  9644 ?        SLsl 17:42   0:00 /usr/sbin/multipathd -d -s
ROOT         498  0.0  0.1  41180 15356 ?        Ss   17:42   0:00 /usr/lib/systemd/systemd-udevd
systemd+     500  0.0  0.1  22752 14652 ?        Ss   17:42   0:00 /usr/lib/systemd/systemd-resolved
ROOT         506  0.0  0.0      0     0 ?        S    17:42   0:00 [psimon]
systemd+     675  0.0  0.1  21436 12296 ?        Ss   17:42   0:00 /usr/lib/systemd/systemd-networkd
ROOT         804  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-cfg80211]
ROOT         809  0.0  0.0   2888  2012 ?        Ss   17:42   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+     810  0.0  0.0   9168  5824 ?        Ss   17:42   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
ROOT         817  0.0  0.2  46744 30304 ?        Ss   17:42   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      819  0.0  0.0 306448  8492 ?        Ssl  17:42   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
ROOT         823  0.0  0.4 1886392 43404 ?       Ssl  17:42   0:01 /usr/lib/snapd/snapd
ROOT         826  0.0  0.0  18592  9708 ?        Ss   17:42   0:00 /usr/lib/systemd/systemd-logind
ROOT         829  0.0  0.1 543352 15184 ?        Ssl  17:42   0:00 /usr/libexec/udisks2/udisksd
ROOT         835  0.0  0.0      0     0 ?        I    17:42   0:00 [kworker/0:4-cgroup_release]
_chrony      894  0.0  0.1  23868 11444 ?        S    17:42   0:00 /usr/sbin/chronyd -n -F 1
_chrony      902  0.0  0.0  12096  2432 ?        S    17:42   0:00 /usr/sbin/chronyd -n -F 1
ROOT         910  0.0  0.3 126116 32996 ?        Ssl  17:42   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
ROOT         922  0.0  0.0  10744  7776 ?        Ss   17:42   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
ROOT         932  0.0  0.0   7060  3344 ?        Ss   17:42   0:00 /usr/sbin/cron -f -P
syslog       936  0.0  0.0 220548  6060 ?        Ssl  17:42   0:00 /usr/sbin/rsyslogd -n -iNONE
ROOT         971  0.0  0.0   8760  5620 ?        Ss   17:42   0:00 login -- sundar-kannan
ROOT         976  0.0  0.1 391604 14188 ?        Ssl  17:42   0:00 /usr/sbin/ModemManager
ROOT        1065  0.0  0.0      0     0 ?        S    17:42   0:00 [irq/18-vmwgfx]
ROOT        1066  0.0  0.0      0     0 ?        I<   17:42   0:00 [kworker/R-ttm]
sundar-+    1381  0.0  0.1  22008 13164 ?        Ss   17:43   0:00 /usr/lib/systemd/systemd --user
sundar-+    1400  0.0  0.0  23016  4104 ?        S    17:43   0:00 (sd-pam)
sundar-+    1460  0.0  0.0   8856  5932 tty1     Ss+  17:43   0:00 -bash
ROOT        2156  0.0  0.1  18524 12124 ?        Ss   17:47   0:00 sshd-session: sundar-kannan [priv]
sundar-+    2212  0.0  0.0  18684  7696 ?        S    17:47   0:01 sshd-session: sundar-kannan@pts/0
sundar-+    2213  0.0  0.0   8844  5932 pts/0    Ss   17:47   0:00 -bash
ROOT        2259  0.1  0.4 502240 48452 ?        Ssl  17:48   0:02 /usr/libexec/fwupd/fwupd
ROOT        2268  0.1  0.1 318664 11444 ?        Ssl  17:48   0:02 /usr/libexec/upowerd
ROOT        2429  0.0  0.0      0     0 ?        I    17:52   0:00 [kworker/u10:1-events_power_efficient]
ROOT        2591  0.0  0.0      0     0 ?        S    17:52   0:00 [psimon]
ROOT        2648  0.0  0.0      0     0 ?        I    17:57   0:00 [kworker/0:0-cgroup_free]
ROOT        2650  0.0  0.0      0     0 ?        I    18:00   0:00 [kworker/1:2]
ROOT        2754  0.0  0.0      0     0 ?        I    18:10   0:00 [kworker/0:1-mm_percpu_wq]
ROOT        2775  0.0  0.0      0     0 ?        I    18:11   0:00 [kworker/u10:3-events_power_efficient]
sundar-+    2791  0.0  0.0   9764  4716 pts/0    R+   18:12   0:00 ps aux
118 processes are running
```

## sed 2. users.txt without nologin users
```
$ cat /etc/passwd > users.txt && sed -i '/nologin/d' users.txt && cat users.txt
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
sundar-kannan:x:1000:1000:sundar kannan:/home/sundar-kannan:/bin/bash
```

## awk 1. Formatted user list
```
$ awk -F: '{printf "User %s has UID %s and GID %s\n", $1, $3, $4}' /etc/passwd
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
User sundar-kannan has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534
```

## awk 2. Username and process name
```
$ awk 'NR>1 && NF>=11 {print $1, $11}' processes.log
ROOT /usr/lib/systemd/systemd
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_gp]
ROOT [kworker/R-sync_wq]
ROOT [kworker/R-kvfree_rcu_reclaim]
ROOT [kworker/R-slub_flushwq]
ROOT [kworker/R-netns]
ROOT [kworker/0:0H-kblockd]
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
ROOT [kworker/1:0H-kblockd]
ROOT [kworker/u9:0-events_unbound]
ROOT [kworker/u10:0-events_power_efficient]
ROOT [kdevtmpfs]
ROOT [kworker/R-inet_frag_wq]
ROOT [rcu_tasks_kthread]
ROOT [rcu_tasks_rude_kthread]
ROOT [kauditd]
ROOT [khungtaskd]
ROOT [oom_reaper]
ROOT [kworker/R-writeback]
ROOT [kworker/u9:2-events_power_efficient]
ROOT [kcompactd0]
ROOT [ksmd]
ROOT [khugepaged]
ROOT [kworker/R-kblockd]
ROOT [kworker/R-blkcg_punt_bio]
ROOT [kworker/R-kintegrityd]
ROOT [irq/9-acpi]
ROOT [kworker/1:1-mm_percpu_wq]
ROOT [kworker/R-tpm_dev_wq]
ROOT [kworker/R-ata_sff]
ROOT [kworker/R-md_bitmap]
ROOT [kworker/R-md_llbitmap_io]
ROOT [kworker/R-md_llbitmap_unplug]
ROOT [kworker/R-edac-poller]
ROOT [kworker/R-devfreq_wq]
ROOT [watchdogd]
ROOT [kworker/R-quota_events_unbound]
ROOT [kworker/u10:2-events_unbound]
ROOT [kswapd0]
ROOT [ecryptfs-kthread]
ROOT [kworker/R-kthrotld]
ROOT [kworker/R-acpi_thermal_pm]
ROOT [scsi_eh_0]
ROOT [kworker/R-scsi_tmf_0]
ROOT [scsi_eh_1]
ROOT [kworker/R-scsi_tmf_1]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/u8:1-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/u11:0]
ROOT [kworker/u12:0]
ROOT [kworker/u13:0]
ROOT [kworker/0:1H]
ROOT [kworker/1:1H-kblockd]
ROOT [kworker/R-charger_manager]
ROOT [kworker/u9:3-events_unbound]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_tmf_2]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT /usr/lib/systemd/systemd-journald
ROOT [kworker/R-kmpathd]
ROOT [kworker/R-kmpath_handlerd]
ROOT /usr/sbin/multipathd
ROOT /usr/lib/systemd/systemd-udevd
systemd+ /usr/lib/systemd/systemd-resolved
ROOT [psimon]
systemd+ /usr/lib/systemd/systemd-networkd
ROOT [kworker/R-cfg80211]
ROOT /bin/sh
message+ @dbus-daemon
ROOT /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
ROOT /usr/lib/snapd/snapd
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/udisks2/udisksd
ROOT [kworker/0:4-cgroup_release]
_chrony /usr/sbin/chronyd
_chrony /usr/sbin/chronyd
ROOT /usr/bin/python3
ROOT sshd:
ROOT /usr/sbin/cron
syslog /usr/sbin/rsyslogd
ROOT login
ROOT /usr/sbin/ModemManager
ROOT [irq/18-vmwgfx]
ROOT [kworker/R-ttm]
sundar-+ /usr/lib/systemd/systemd
sundar-+ (sd-pam)
sundar-+ -bash
ROOT sshd-session:
sundar-+ sshd-session:
sundar-+ -bash
ROOT /usr/libexec/fwupd/fwupd
ROOT /usr/libexec/upowerd
ROOT [kworker/u10:1-events_power_efficient]
ROOT [psimon]
ROOT [kworker/0:0-cgroup_free]
ROOT [kworker/1:2]
ROOT [kworker/0:1-mm_percpu_wq]
ROOT [kworker/u10:3-events_power_efficient]
sundar-+ ps
```

## awk 3. Total CPU usage
```
$ awk 'NR>1 && NF>=11 {sum += $3} END {print "Total CPU usage: " sum "%"}' processes.log
Total CPU usage: 1.4%
```

