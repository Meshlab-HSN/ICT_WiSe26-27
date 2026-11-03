# Lecture 5 - Task 3: Data Manipulation

## 1. Using sed - Replace root with ROOT
Command: sed -i 's/^root /ROOT /' processes.log
```
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.0  0.4  24912 16256 ?        Ss   09:04   0:04 /usr/lib/systemd/systemd --switched-root --system --deserialize=51
ROOT           2  0.0  0.0      0     0 ?        S    09:04   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    09:04   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   09:04   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   09:04   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   09:04   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   09:04   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   09:04   0:00 [kworker/R-netns]
ROOT          10  0.0  0.0      0     0 ?        I<   09:04   0:01 [kworker/0:0H-kblockd]
```

## 2. Using sed - Remove nologin users
Commands:
```bash
cat /etc/passwd > users.txt
sed -i '/nologin/d' users.txt
```
Output:
```
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
harshitha:x:1000:1000:harshitha:/home/harshitha:/bin/bash
```

## 3. Using awk - Display users, UID and GID
```bash
awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd
```
Output:
```
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
User harshitha has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534
```

## 4. Using awk - Username and process name
```bash
awk 'NR>1 && NF>=11 {print $1, $11}' processes.log
```
Output:
```
ROOT /usr/lib/systemd/systemd
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_gp]
ROOT [kworker/R-sync_wq]
ROOT [kworker/R-kvfree_rcu_reclaim]
ROOT [kworker/R-slub_flushwq]
ROOT [kworker/R-netns]
ROOT [kworker/0:0H-kblockd]
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
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/u5:0]
ROOT [kworker/R-charger_manager]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_tmf_2]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [psimon]
ROOT [kworker/R-kmpathd]
ROOT [kworker/R-kmpath_handlerd]
ROOT /usr/sbin/multipathd
ROOT /usr/lib/systemd/systemd-udevd
ROOT [psimon]
ROOT [kworker/R-cfg80211]
ROOT /bin/sh
message+ @dbus-daemon
ROOT /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
ROOT /usr/libexec/udisks2/udisksd
ROOT sshd:
ROOT /usr/bin/python3
_chrony /usr/sbin/chronyd
ROOT /usr/sbin/cron
syslog /usr/sbin/rsyslogd
_chrony /usr/sbin/chronyd
ROOT /usr/sbin/ModemManager
ROOT [irq/18-vmwgfx]
ROOT [kworker/R-ttm]
ROOT /usr/sbin/agetty
ROOT /usr/libexec/fwupd/fwupd
ROOT /usr/libexec/upowerd
ROOT [kworker/0:2H]
ROOT login
harshit+ /usr/lib/systemd/systemd
harshit+ (sd-pam)
harshit+ -bash
ROOT sshd-session:
harshit+ sshd-session:
harshit+ -bash
systemd+ /usr/lib/systemd/systemd-resolved
systemd+ /usr/lib/systemd/systemd-networkd
ROOT /usr/lib/systemd/systemd-journald
ROOT /usr/lib/snapd/snapd
ROOT /usr/lib/systemd/systemd-logind
ROOT [kworker/u4:0-events_unbound]
ROOT [kworker/0:2-events]
ROOT [kworker/u4:3-ext4-rsv-conversion]
ROOT [kworker/0:0-events]
ROOT [kworker/u4:1-events_unbound]
ROOT [kworker/u4:2-events_unbound]
ROOT sshd-session:
harshit+ sshd-session:
harshit+ -bash
ROOT [kworker/0:1-cgroup_free]
harshit+ ps
```

## 5. Using awk - Total CPU usage
```bash
awk 'NR>1 && NF>=11 {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log
```
Output:
```
Total CPU usage: 100.90%
```
