# Lecture 5 - Task 3: Data Manipulation
## Working with sed
### 1. Replace root with ROOT in processes.log
command:
sed -i 's/root/ROOT/g' processes.log

### 2. Copy /etc/passwd and remove users with nologin
commands:
cp /etc/passwd users.txt
sed -i '/nologin$/d' users.txt

## Working with awk

### 1. Print all users with UID and GID
Command:
awk -F: '{printf "Users %s has UID %s and GID %s\n", $1, $3, $4}' /etc/passwd

### 2. Print username and process name
Command:
awk 'NR>1 {print $1, $11}' processes.log

### 3. Calculate total CPU usage
Command:
awk 'NR>1 {sum += $3} END {print "Total CPU usage:", sum "%"}' processes.log

Total CPU usage: 1.3%

## Actual terminal outputs

### 1. Processes after sed
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.1  0.9  24816 16208 ?        Ss   10:22   0:01 /usr/lib/systemd/systemd --switched-ROOT --system --deserialize=53
ROOT           2  0.0  0.0      0     0 ?        S    10:22   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    10:22   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   10:22   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   10:22   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   10:22   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   10:22   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   10:22   0:00 [kworker/R-netns]
ROOT          10  0.0  0.0      0     0 ?        I<   10:22   0:00 [kworker/0:0H-kblockd]

### 2. Filtered users.txt
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
fakhrulla-shaik:x:1000:1000:Fakhrulla Shaik:/home/fakhrulla-shaik:/bin/bash

### 3. AWK user UID and GID output
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
User fakhrulla-shaik has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534

### 4. AWK username and process name
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
ROOT [kworker/u4:1-events_power_efficient]
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
ROOT [kworker/u4:3-events_unbound]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/u5:0]
ROOT [kworker/R-charger_manager]
ROOT [kworker/0:3-events]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_tmf_2]
ROOT [kworker/R-kdmflush/252:0]
ROOT [kworker/0:1H-kblockd]
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
ROOT /usr/lib/snapd/snapd
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/udisks2/udisksd
ROOT sshd:
_chrony /usr/sbin/chronyd
syslog /usr/sbin/rsyslogd
_chrony /usr/sbin/chronyd
ROOT /usr/bin/python3
ROOT /usr/sbin/ModemManager
ROOT [kworker/0:1-cgwb_release]
ROOT [kworker/u4:4-ext4-rsv-conversion]
ROOT /usr/libexec/fwupd/fwupd
ROOT [kworker/0:0-cgroup_release]
ROOT /usr/libexec/upowerd
ROOT [kworker/u4:0-writeback]
ROOT /usr/sbin/agetty
ROOT login
ROOT [kworker/0:2-cgroup_release]
fakhrul+ /usr/lib/systemd/systemd
fakhrul+ (sd-pam)
fakhrul+ -bash
fakhrul+ ps
105 

### 5. Total CPU usage
Total CPU usage: 1.3%

