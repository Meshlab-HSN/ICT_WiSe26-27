```
$ sed 's/root/ROOT/g' processes.log
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.8  0.1  24836 16236 ?        Ss   12:55   0:06 /usr/lib/systemd/systemd --switched-ROOT --system --deserialize=49
ROOT           2  0.0  0.0      0     0 ?        S    12:55   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    12:55   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-netns]
ROOT          10  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/0:0H-kblockd]
ROOT          11  0.1  0.0      0     0 ?        I    12:55   0:00 [kworker/0:1-events]
ROOT          13  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-mm_percpu_wq]
ROOT          14  0.0  0.0      0     0 ?        S    12:55   0:00 [ksoftirqd/0]
ROOT          15  0.0  0.0      0     0 ?        I    12:55   0:00 [rcu_preempt]
ROOT          16  0.0  0.0      0     0 ?        S    12:55   0:00 [rcu_exp_par_gp_kthread_worker/0]
ROOT          17  0.0  0.0      0     0 ?        S    12:55   0:00 [rcu_exp_gp_kthread_worker]
ROOT          18  0.0  0.0      0     0 ?        S    12:55   0:00 [migration/0]
ROOT          19  0.0  0.0      0     0 ?        S    12:55   0:00 [kprobe-optimizer]
ROOT          20  0.0  0.0      0     0 ?        S    12:55   0:00 [idle_inject/0]
ROOT          21  0.0  0.0      0     0 ?        S    12:55   0:00 [cpuhp/0]
ROOT          22  0.0  0.0      0     0 ?        S    12:55   0:00 [kdevtmpfs]
ROOT          23  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-inet_frag_wq]
ROOT          24  0.0  0.0      0     0 ?        I    12:55   0:00 [rcu_tasks_kthread]
ROOT          25  0.0  0.0      0     0 ?        I    12:55   0:00 [rcu_tasks_rude_kthread]
ROOT          26  0.0  0.0      0     0 ?        S    12:55   0:00 [kauditd]
ROOT          27  0.0  0.0      0     0 ?        S    12:55   0:00 [khungtaskd]
ROOT          28  0.0  0.0      0     0 ?        S    12:55   0:00 [oom_reaper]
ROOT          29  0.1  0.0      0     0 ?        I    12:55   0:00 [kworker/u4:1-events_power_efficient]
ROOT          30  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-writeback]
ROOT          31  0.0  0.0      0     0 ?        I    12:55   0:00 [kworker/u4:2-ext4-rsv-conversion]
ROOT          32  0.0  0.0      0     0 ?        S    12:55   0:00 [kcompactd0]
ROOT          33  0.0  0.0      0     0 ?        SN   12:55   0:00 [ksmd]
ROOT          34  0.0  0.0      0     0 ?        SN   12:55   0:00 [khugepaged]
ROOT          35  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-kblockd]
ROOT          36  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-blkcg_punt_bio]
ROOT          37  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-kintegrityd]
ROOT          38  0.0  0.0      0     0 ?        S    12:55   0:00 [irq/9-acpi]
ROOT          39  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-tpm_dev_wq]
ROOT          40  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-ata_sff]
ROOT          41  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-md_bitmap]
ROOT          42  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-md_llbitmap_io]
ROOT          43  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-md_llbitmap_unplug]
ROOT          44  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-edac-poller]
ROOT          45  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-devfreq_wq]
ROOT          46  0.0  0.0      0     0 ?        S    12:55   0:00 [watchdogd]
ROOT          47  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-quota_events_unbound]
ROOT          49  0.0  0.0      0     0 ?        S    12:55   0:00 [kswapd0]
ROOT          50  0.0  0.0      0     0 ?        S    12:55   0:00 [ecryptfs-kthread]
ROOT          51  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-kthrotld]
ROOT          52  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-acpi_thermal_pm]
ROOT          53  0.0  0.0      0     0 ?        S    12:55   0:00 [scsi_eh_0]
ROOT          54  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-scsi_tmf_0]
ROOT          55  0.0  0.0      0     0 ?        S    12:55   0:00 [scsi_eh_1]
ROOT          56  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-scsi_tmf_1]
ROOT          58  0.0  0.0      0     0 ?        I    12:55   0:00 [kworker/u4:4-events_unbound]
ROOT          62  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-mld]
ROOT          63  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-ipv6_addrconf]
ROOT          64  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-kstrp]
ROOT          66  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/u5:0]
ROOT          77  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-charger_manager]
ROOT         305  0.0  0.0      0     0 ?        S    12:55   0:00 [scsi_eh_2]
ROOT         306  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-scsi_tmf_2]
ROOT         311  0.1  0.0      0     0 ?        I<   12:55   0:00 [kworker/0:2H-kblockd]
ROOT         385  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-kdmflush/252:0]
ROOT         420  0.0  0.0      0     0 ?        S    12:55   0:00 [jbd2/dm-0-8]
ROOT         421  0.0  0.0      0     0 ?        I<   12:55   0:00 [kworker/R-ext4-rsv-conversion]
ROOT         515  0.0  0.0      0     0 ?        S    12:55   0:00 [psimon]
ROOT         522  0.0  0.1  50416 17156 ?        S<s  12:55   0:00 /usr/lib/systemd/systemd-journald
ROOT         546  0.0  0.0      0     0 ?        I<   12:56   0:00 [kworker/R-kmpathd]
ROOT         548  0.0  0.0      0     0 ?        I<   12:56   0:00 [kworker/R-kmpath_handlerd]
ROOT         555  0.0  0.0 279492  9644 ?        SLsl 12:56   0:00 /usr/sbin/multipathd -d -s
systemd+     572  0.0  0.1  22640 14692 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd-resolved
ROOT         578  0.1  0.1  40088 14220 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd-udevd
ROOT         589  0.0  0.0      0     0 ?        S    12:56   0:00 [psimon]
ROOT         668  0.0  0.0      0     0 ?        S    12:56   0:00 [irq/18-vmwgfx]
ROOT         669  0.0  0.0      0     0 ?        I<   12:56   0:00 [kworker/R-ttm]
ROOT         713  0.0  0.0      0     0 ?        S    12:56   0:00 [jbd2/sda2-8]
ROOT         714  0.0  0.0      0     0 ?        I<   12:56   0:00 [kworker/R-ext4-rsv-conversion]
systemd+     806  0.0  0.0  21436 12300 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd-networkd
ROOT         839  0.0  0.0      0     0 ?        I<   12:56   0:00 [kworker/R-cfg80211]
ROOT         842  0.7  0.0      0     0 ?        I    12:56   0:05 [kworker/0:3-events]
ROOT         989  0.0  0.0   2888  2008 ?        Ss   12:56   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
ROOT         990  0.0  0.0   7060  3420 ?        Ss   12:56   0:00 /usr/sbin/cron -f -P
message+     991  0.0  0.0   9016  5684 ?        Ss   12:56   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
ROOT         998  0.1  0.2  46744 30148 ?        Ss   12:56   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      999  0.0  0.0 306448  8392 ?        Ssl  12:56   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
ROOT        1002  0.4  0.3 1780576 42368 ?       Ssl  12:56   0:03 /snap/snapd/current/usr/lib/snapd/snapd
ROOT        1005  0.0  0.0  18568  9612 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd-logind
ROOT        1007  0.0  0.1 543444 15080 ?        Ssl  12:56   0:00 /usr/libexec/udisks2/udisksd
ROOT        1027  0.0  0.0  10744  7788 ?        Ss   12:56   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
ROOT        1064  0.0  0.0   8756  5652 ?        Ss   12:56   0:00 login -- ovi
_chrony     1069  0.0  0.0  23992 11452 ?        S    12:56   0:00 /usr/sbin/chronyd -n -F 1
ROOT        1072  0.0  0.2 126112 32888 ?        Ssl  12:56   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
syslog      1077  0.0  0.0 220548  6312 ?        Ssl  12:56   0:00 /usr/sbin/rsyslogd -n -iNONE
ROOT        1104  0.0  0.1 391608 14240 ?        Ssl  12:56   0:00 /usr/sbin/ModemManager
_chrony     1109  0.0  0.0  12096  2408 ?        S    12:56   0:00 /usr/sbin/chronyd -n -F 1
ovi         1356  0.0  0.1  22488 13064 ?        Ss   12:56   0:00 /usr/lib/systemd/systemd --user
ovi         1361  0.0  0.0  23016  4092 ?        S    12:56   0:00 (sd-pam)
ovi         1385  0.0  0.0   8856  5868 tty1     Ss+  12:56   0:00 -bash
ROOT        1425  0.0  0.0  18264 12064 ?        Ss   12:57   0:00 sshd-session: ovi [priv]
ovi         1481  0.7  0.0  18560  7688 ?        S    12:57   0:04 sshd-session: ovi@pts/0
ovi         1482  0.0  0.0   9624  6768 pts/0    Ss   12:57   0:00 -bash
ROOT        1802  0.0  0.0      0     0 ?        I    13:07   0:00 [kworker/0:0]
ovi         1830  0.0  0.0   9764  4676 pts/0    R+   13:08   0:00 ps aux
103 processes are running
```

```
$ cat users.txt
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
ovi:x:1000:1000:alex:/home/ovi:/bin/bash
```

```
$ awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd
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
User ovi has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534
```

```
$ awk 'NR>1 {print $1, $11}' processes.log
root /usr/lib/systemd/systemd
root [kthreadd]
root [pool_workqueue_release]
root [kworker/R-rcu_gp]
root [kworker/R-sync_wq]
root [kworker/R-kvfree_rcu_reclaim]
root [kworker/R-slub_flushwq]
root [kworker/R-netns]
root [kworker/0:0H-kblockd]
root [kworker/0:1-events]
root [kworker/R-mm_percpu_wq]
root [ksoftirqd/0]
root [rcu_preempt]
root [rcu_exp_par_gp_kthread_worker/0]
root [rcu_exp_gp_kthread_worker]
root [migration/0]
root [kprobe-optimizer]
root [idle_inject/0]
root [cpuhp/0]
root [kdevtmpfs]
root [kworker/R-inet_frag_wq]
root [rcu_tasks_kthread]
root [rcu_tasks_rude_kthread]
root [kauditd]
root [khungtaskd]
root [oom_reaper]
root [kworker/u4:1-events_power_efficient]
root [kworker/R-writeback]
root [kworker/u4:2-ext4-rsv-conversion]
root [kcompactd0]
root [ksmd]
root [khugepaged]
root [kworker/R-kblockd]
root [kworker/R-blkcg_punt_bio]
root [kworker/R-kintegrityd]
root [irq/9-acpi]
root [kworker/R-tpm_dev_wq]
root [kworker/R-ata_sff]
root [kworker/R-md_bitmap]
root [kworker/R-md_llbitmap_io]
root [kworker/R-md_llbitmap_unplug]
root [kworker/R-edac-poller]
root [kworker/R-devfreq_wq]
root [watchdogd]
root [kworker/R-quota_events_unbound]
root [kswapd0]
root [ecryptfs-kthread]
root [kworker/R-kthrotld]
root [kworker/R-acpi_thermal_pm]
root [scsi_eh_0]
root [kworker/R-scsi_tmf_0]
root [scsi_eh_1]
root [kworker/R-scsi_tmf_1]
root [kworker/u4:4-events_unbound]
root [kworker/R-mld]
root [kworker/R-ipv6_addrconf]
root [kworker/R-kstrp]
root [kworker/u5:0]
root [kworker/R-charger_manager]
root [scsi_eh_2]
root [kworker/R-scsi_tmf_2]
root [kworker/0:2H-kblockd]
root [kworker/R-kdmflush/252:0]
root [jbd2/dm-0-8]
root [kworker/R-ext4-rsv-conversion]
root [psimon]
root /usr/lib/systemd/systemd-journald
root [kworker/R-kmpathd]
root [kworker/R-kmpath_handlerd]
root /usr/sbin/multipathd
systemd+ /usr/lib/systemd/systemd-resolved
root /usr/lib/systemd/systemd-udevd
root [psimon]
root [irq/18-vmwgfx]
root [kworker/R-ttm]
root [jbd2/sda2-8]
root [kworker/R-ext4-rsv-conversion]
systemd+ /usr/lib/systemd/systemd-networkd
root [kworker/R-cfg80211]
root [kworker/0:3-events]
root /bin/sh
root /usr/sbin/cron
message+ @dbus-daemon
root /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
root /snap/snapd/current/usr/lib/snapd/snapd
root /usr/lib/systemd/systemd-logind
root /usr/libexec/udisks2/udisksd
root sshd:
root login
_chrony /usr/sbin/chronyd
root /usr/bin/python3
syslog /usr/sbin/rsyslogd
root /usr/sbin/ModemManager
_chrony /usr/sbin/chronyd
ovi /usr/lib/systemd/systemd
ovi (sd-pam)
ovi -bash
root sshd-session:
ovi sshd-session:
ovi -bash
root [kworker/0:0]
ovi ps
103 
```

```
$ awk 'NR>1 {sum+=$3} END {print "Total CPU: " sum "%"}' processes.log
Total CPU: 3.1%
```

