# Lecture 5 – Task 3: 

## 1. sed – Replace root with ROOT

Command:
 sed -i 's/root/ROOT/g' processes.log
 grep -n 'ROOT' processes.log | head

Output:
2:ROOT           1  2.2  0.4  24728 16120 ?        Ss   22:53   0:08 /usr/lib/systemd/systemd --switched-ROOT --system --deserialize=51
3:ROOT           2  0.0  0.0      0     0 ?        S    22:53   0:00 [kthreadd]
4:ROOT           3  0.0  0.0      0     0 ?        S    22:53   0:00 [pool_workqueue_release]
5:ROOT           4  0.0  0.0      0     0 ?        I<   22:53   0:00 [kworker/R-rcu_gp]
6:ROOT           5  0.0  0.0      0     0 ?        I<   22:53   0:00 [kworker/R-sync_wq]
7:ROOT           6  0.0  0.0      0     0 ?        I<   22:53   0:00 [kworker/R-kvfree_rcu_reclaim]
8:ROOT           7  0.0  0.0      0     0 ?        I<   22:53   0:00 [kworker/R-slub_flushwq]
9:ROOT           8  0.0  0.0      0     0 ?        I<   22:53   0:00 [kworker/R-netns]
10:ROOT          10  0.1  0.0      0     0 ?        I<   22:53   0:00 [kworker/0:0H-kblockd]
11:ROOT          11  0.0  0.0      0     0 ?        I    22:53   0:00 [kworker/0:1-cgroup_release]


## 2. sed – Create users.txt and remove nologin users

Commands:
cat /etc/passwd > users.txt
sed -i '/nologin/d' users.txt
cat users.txt

Output: 
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
muhammad-hamza-khalid-kiani:x:1000:1000:muhammad-hamza-khalid-kiani:/home/muhammad-hamza-khalid-kiani:/bin/bash


## 3. awk - Display username, UID and GID

Command:
awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd

Output: 
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
User muhammad-hamza-khalid-kiani has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534


## 4. awk – Display username and process name

Command:
awk 'NR>1 && NF>=11 {print $1, $11}' processes.log

Output: 
ROOT /usr/lib/systemd/systemd
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_gp]
ROOT [kworker/R-sync_wq]
ROOT [kworker/R-kvfree_rcu_reclaim]
ROOT [kworker/R-slub_flushwq]
ROOT [kworker/R-netns]
ROOT [kworker/0:0H-kblockd]
ROOT [kworker/0:1-cgroup_release]
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
ROOT [kworker/u9:0-loop0]
ROOT [kworker/u10:0-writeback]
ROOT [kdevtmpfs]
ROOT [kworker/R-inet_frag_wq]
ROOT [rcu_tasks_kthread]
ROOT [rcu_tasks_rude_kthread]
ROOT [kauditd]
ROOT [khungtaskd]
ROOT [oom_reaper]
ROOT [kworker/R-writeback]
ROOT [kworker/u10:2-events_power_efficient]
ROOT [kcompactd0]
ROOT [ksmd]
ROOT [khugepaged]
ROOT [kworker/R-kblockd]
ROOT [kworker/R-blkcg_punt_bio]
ROOT [kworker/R-kintegrityd]
ROOT [irq/9-acpi]
ROOT [kworker/1:1-mm_percpu_wq]
ROOT [kworker/u9:1-events_unbound]
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
ROOT [kworker/u10:3-events_freezable_pwr_efficient]
ROOT [scsi_eh_0]
ROOT [kworker/R-scsi_tmf_0]
ROOT [scsi_eh_1]
ROOT [kworker/R-scsi_tmf_1]
ROOT [kworker/1:1H-kblockd]
ROOT [kworker/1:2-ata_sff]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/u8:1-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/u11:0]
ROOT [kworker/u12:0]
ROOT [kworker/u13:0]
ROOT [kworker/R-charger_manager]
ROOT [kworker/u9:2-events_unbound]
ROOT [kworker/0:2-mm_percpu_wq]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_tmf_2]
ROOT [kworker/1:2H-kblockd]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [psimon]
ROOT /usr/lib/systemd/systemd-journald
ROOT [kworker/R-kmpathd]
ROOT [kworker/R-kmpath_handlerd]
ROOT /usr/sbin/multipathd
systemd+ /usr/lib/systemd/systemd-resolved
ROOT /usr/lib/systemd/systemd-udevd
ROOT [psimon]
ROOT [kworker/u9:4-events_unbound]
ROOT [kworker/1:3-cgroup_free]
systemd+ /usr/lib/systemd/systemd-networkd
ROOT [kworker/R-cfg80211]
ROOT [kworker/0:2H-kblockd]
ROOT [irq/18-vmwgfx]
ROOT [kworker/R-ttm]
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
ROOT /usr/sbin/ModemManager
ROOT /usr/bin/python3
syslog /usr/sbin/rsyslogd
_chrony /usr/sbin/chronyd
_chrony /usr/sbin/chronyd
muhamma+ /usr/lib/systemd/systemd
muhamma+ (sd-pam)
muhamma+ -bash
ROOT sshd-session:
muhamma+ sshd-session:
muhamma+ -bash
ROOT [kworker/1:0H]
ROOT [kworker/0:0-cgroup_free]
muhamma+ ps


## 5. awk – Calculate total CPU usage

Command:
awk 'NR>1 && NF>=11 {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log

Output:
Total CPU usage: 384.50%
