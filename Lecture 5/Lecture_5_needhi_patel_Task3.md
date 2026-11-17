 Lecture 5 — Task 3 
Name: Needhi Patel 
## 1. Change root to ROOT in the owner column


needhi-patel@ict:~/ICT_WiSe26-27/Lecture 5$ sed -i 's/^root /ROOT /' processes.log
needhi-patel@ict:~/ICT_WiSe26-27/Lecture 5$ cat processes.log
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.2  0.9  24880 16228 ?        Ss   12:32   0:05 /usr/lib/systemd/systemd --switched-root --system --deserialize=47
ROOT           2  0.0  0.0      0     0 ?        S    12:32   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    12:32   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-netns]
ROOT          12  0.0  0.0      0     0 ?        I    12:32   0:01 [kworker/u4:0-events_power_efficient]
ROOT          13  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-mm_percpu_wq]
ROOT          14  0.4  0.0      0     0 ?        R    12:32   0:07 [ksoftirqd/0]
ROOT          15  0.0  0.0      0     0 ?        I    12:32   0:00 [rcu_preempt]
ROOT          16  0.0  0.0      0     0 ?        S    12:32   0:00 [rcu_exp_par_gp_kthread_worker/0]
ROOT          17  0.0  0.0      0     0 ?        S    12:32   0:00 [rcu_exp_gp_kthread_worker]
ROOT          18  0.0  0.0      0     0 ?        S    12:32   0:00 [migration/0]
ROOT          19  0.0  0.0      0     0 ?        S    12:32   0:00 [kprobe-optimizer]
ROOT          20  0.0  0.0      0     0 ?        S    12:32   0:00 [idle_inject/0]
ROOT          21  0.0  0.0      0     0 ?        S    12:32   0:00 [cpuhp/0]
ROOT          22  0.0  0.0      0     0 ?        S    12:32   0:00 [kdevtmpfs]
ROOT          23  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-inet_frag_wq]
ROOT          24  0.0  0.0      0     0 ?        I    12:32   0:00 [rcu_tasks_kthread]
ROOT          25  0.0  0.0      0     0 ?        I    12:32   0:00 [rcu_tasks_rude_kthread]
ROOT          26  0.0  0.0      0     0 ?        S    12:32   0:00 [kauditd]
ROOT          27  0.0  0.0      0     0 ?        S    12:32   0:00 [khungtaskd]
ROOT          28  0.0  0.0      0     0 ?        S    12:32   0:00 [oom_reaper]
ROOT          31  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-writeback]
ROOT          32  0.0  0.0      0     0 ?        S    12:32   0:00 [kcompactd0]
ROOT          33  0.0  0.0      0     0 ?        SN   12:32   0:00 [ksmd]
ROOT          34  0.0  0.0      0     0 ?        SN   12:32   0:00 [khugepaged]
ROOT          35  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-kblockd]
ROOT          36  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-blkcg_punt_bio]
ROOT          37  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-kintegrityd]
ROOT          38  0.0  0.0      0     0 ?        S    12:32   0:00 [irq/9-acpi]
ROOT          39  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-tpm_dev_wq]
ROOT          40  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-ata_sff]
ROOT          41  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-md_bitmap]
ROOT          42  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-md_llbitmap_io]
ROOT          43  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-md_llbitmap_unplug]
ROOT          44  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-edac-poller]
ROOT          45  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-devfreq_wq]
ROOT          46  0.0  0.0      0     0 ?        S    12:32   0:00 [watchdogd]
ROOT          47  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-quota_events_unbound]
ROOT          48  0.0  0.0      0     0 ?        S    12:32   0:00 [kswapd0]
ROOT          49  0.0  0.0      0     0 ?        S    12:32   0:00 [ecryptfs-kthread]
ROOT          50  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-kthrotld]
ROOT          51  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-acpi_thermal_pm]
ROOT          53  0.0  0.0      0     0 ?        S    12:32   0:00 [scsi_eh_0]
ROOT          54  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-scsi_tmf_0]
ROOT          55  0.0  0.0      0     0 ?        S    12:32   0:00 [scsi_eh_1]
ROOT          56  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-scsi_tmf_1]
ROOT          58  0.0  0.0      0     0 ?        I    12:32   0:01 [kworker/u4:5-events_power_efficient]
ROOT          62  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-mld]
ROOT          63  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-ipv6_addrconf]
ROOT          64  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-kstrp]
ROOT          66  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/u5:0]
ROOT          77  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-charger_manager]
ROOT         300  0.0  0.0      0     0 ?        S    12:32   0:00 [scsi_eh_2]
ROOT         301  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-scsi_tmf_2]
ROOT         378  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-kdmflush/252:0]
ROOT         413  0.0  0.0      0     0 ?        S    12:32   0:00 [jbd2/dm-0-8]
ROOT         414  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-ext4-rsv-conversion]
ROOT         508  0.0  0.0      0     0 ?        S    12:32   0:00 [psimon]
ROOT         514  0.0  1.0  50408 16944 ?        S<s  12:32   0:00 /usr/lib/systemd/systemd-journald
ROOT         541  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-kmpathd]
ROOT         546  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-kmpath_handlerd]
ROOT         550  0.0  0.5 279492  9644 ?        SLsl 12:32   0:00 /usr/sbin/multipathd -d -s
systemd+     565  0.0  0.8  22632 14712 ?        Ss   12:32   0:00 /usr/lib/systemd/systemd-resolved
ROOT         569  0.0  0.8  40092 14216 ?        Ss   12:32   0:00 /usr/lib/systemd/systemd-udevd
ROOT         586  0.0  0.0      0     0 ?        S    12:32   0:00 [psimon]
ROOT         656  0.0  0.0      0     0 ?        I<   12:32   0:01 [kworker/0:2H-kblockd]
ROOT         673  0.0  0.0      0     0 ?        S    12:32   0:00 [irq/18-vmwgfx]
ROOT         676  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-ttm]
ROOT         705  0.0  0.0      0     0 ?        S    12:32   0:00 [jbd2/sda2-8]
ROOT         706  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-ext4-rsv-conversion]
systemd+     803  0.0  0.7  21432 12192 ?        Ss   12:32   0:00 /usr/lib/systemd/systemd-networkd
ROOT         829  0.0  0.0      0     0 ?        I<   12:32   0:00 [kworker/R-cfg80211]
ROOT         979  0.0  0.1   2888  2012 ?        Ss   12:32   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
ROOT         980  0.0  0.2   7060  3428 ?        Ss   12:32   0:00 /usr/sbin/cron -f -P
message+     981  0.0  0.3   9000  5580 ?        Ss   12:32   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
ROOT         987  0.0  1.7  46744 30252 ?        Ss   12:32   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      988  0.0  0.4 306448  8336 ?        Ssl  12:32   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
ROOT         991  0.1  2.5 1780576 42372 ?       Ssl  12:32   0:01 /snap/snapd/current/usr/lib/snapd/snapd
ROOT         994  0.0  0.5  18420  9568 ?        Ss   12:32   0:00 /usr/lib/systemd/systemd-logind
ROOT         996  0.0  0.8 543452 15124 ?        Ssl  12:32   0:00 /usr/libexec/udisks2/udisksd
ROOT        1029  0.0  0.4  10744  7784 ?        Ss   12:32   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
ROOT        1040  0.0  0.3   8764  5584 ?        Ss   12:32   0:00 login -- needhi-patel
ROOT        1049  0.0  1.9 126116 32948 ?        Ssl  12:32   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony     1050  0.0  0.6  23872 11292 ?        S    12:32   0:00 /usr/sbin/chronyd -n -F 1
syslog      1062  0.0  0.3 220548  6272 ?        Ssl  12:32   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1077  0.0  0.1  12096  2476 ?        S    12:32   0:00 /usr/sbin/chronyd -n -F 1
ROOT        1087  0.0  0.8 391608 14176 ?        Ssl  12:32   0:00 /usr/sbin/ModemManager
needhi-+    1332  0.0  0.7  22268 13072 ?        Ss   12:33   0:00 /usr/lib/systemd/systemd --user
needhi-+    1340  0.0  0.2  23012  4112 ?        S    12:33   0:00 (sd-pam)
needhi-+    1363  0.0  0.3   8856  5944 tty1     Ss+  12:33   0:00 -bash
ROOT        1415  0.0  0.7  18432 12272 ?        Ss   12:34   0:00 sshd-session: needhi-patel [priv]
needhi-+    1470  1.3  0.4  18568  7696 ?        R    12:34   0:22 sshd-session: needhi-patel@pts/0
needhi-+    1471  0.0  0.3   8844  5860 pts/0    Ss   12:34   0:00 -bash
needhi-+    1596  0.0  0.2  10500  3532 ?        Ss   12:44   0:00 ssh-agent -s
ROOT        1622  0.0  0.0      0     0 ?        I    12:45   0:00 [kworker/u4:1-events_power_efficient]
ROOT        1635  0.0  0.0      0     0 ?        I<   12:47   0:00 [kworker/0:1H-kblockd]
ROOT        1661  1.3  0.0      0     0 ?        I    12:50   0:08 [kworker/0:2-events]
ROOT        1733  2.4  0.0      0     0 ?        I    12:56   0:07 [kworker/0:0-events]
ROOT        1734  0.0  0.0      0     0 ?        I    12:58   0:00 [kworker/u4:2-events_power_efficient]
needhi-+    1772 85.7  0.2   6764  4224 pts/0    R+   13:01   0:00 ps aux
104 processes are running
needhi-patel@ict:~/ICT_WiSe26-27/Lecture 5$

## sed : Remove nologin accounts

needhi-patel@ict:~/ICT_WiSe26-27/Lecture 5$ cat /etc/passwd > users.txt
needhi-patel@ict:~/ICT_WiSe26-27/Lecture 5$ sed -i '/\/nologin$/d' users.txt
needhi-patel@ict:~/ICT_WiSe26-27/Lecture 5$ cat users.txt
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
needhi-patel:x:1000:1000:Needhi Patel:/home/needhi-patel:/bin/bash

## awk : Display usernames, UIDs, and GIDs

needhi-patel@ict:~/ICT_WiSe26-27/Lecture 5$ awk -F: '{printf "User %s has UID %s and GID %s\n", $1, $3, $4}' /etc/passwd
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
User needhi-patel has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534

## awk : Display process owners and commands

needhi-patel@ict:~/ICT_WiSe26-27/Lecture 5$ awk '$2 ~ /^[0-9]+$/ {print $1, $11}' processes.log
ROOT /usr/lib/systemd/systemd
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_gp]
ROOT [kworker/R-sync_wq]
ROOT [kworker/R-kvfree_rcu_reclaim]
ROOT [kworker/R-slub_flushwq]
ROOT [kworker/R-netns]
ROOT [kworker/u4:0-events_power_efficient]
ROOT [kworker/R-mm_percpu_wq]
ROOT [ksoftirqd/0]
ROOT [rcu_preempt]
ROOT [rcu_exp_par_gp_kthread_worker/0]
ROOT [rcu_exp_gp_kthread_worker]
ROOT [migration/0]
ROOT [kprobe-optimizer]
ROOT [idle_inject/0]
ROOT [cpuhp/0]
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
ROOT [kworker/u4:5-events_power_efficient]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/u5:0]
ROOT [kworker/R-charger_manager]
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
ROOT /usr/sbin/cron
message+ @dbus-daemon
ROOT /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
ROOT /snap/snapd/current/usr/lib/snapd/snapd
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/udisks2/udisksd
ROOT sshd:
ROOT login
ROOT /usr/bin/python3
_chrony /usr/sbin/chronyd
syslog /usr/sbin/rsyslogd
_chrony /usr/sbin/chronyd
ROOT /usr/sbin/ModemManager
needhi-+ /usr/lib/systemd/systemd
needhi-+ (sd-pam)
needhi-+ -bash
ROOT sshd-session:
needhi-+ sshd-session:
needhi-+ -bash
needhi-+ ssh-agent
ROOT [kworker/u4:1-events_power_efficient]
ROOT [kworker/0:1H-kblockd]
ROOT [kworker/0:2-events]
ROOT [kworker/0:0-events]
ROOT [kworker/u4:2-events_power_efficient]
needhi-+ ps
needhi-patel@ict:~/ICT_WiSe26-27/Lecture 5$

## awk : Calculate total CPU usage
needhi-patel@ict:~/ICT_WiSe26-27/Lecture 5$ awk '$2 ~ /^[0-9]+$/ {cpu += $3} END {printf "Total CPU usage: %.1f%%\n", cpu}' processes.log
Total CPU usage: 91.4%


