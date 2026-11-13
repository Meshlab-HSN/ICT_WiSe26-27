# Lecture 5 - Task 3: Data Manipulation

## Working with sed

### Task 3.1 - Replace root with ROOT
```bash
sed -i 's/root/ROOT/g' processes.log
```
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  1.3  0.3  24724 16000 ?        Ss   09:30   0:01 /usr/lib/systemd/systemd --switched-ROOT --system --deserialize=51
ROOT           2  0.0  0.0      0     0 ?        S    09:30   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    09:30   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   09:30   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   09:30   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   09:30   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   09:30   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   09:30   0:00 [kworker/R-netns]
ROOT           9  0.0  0.0      0     0 ?        I    09:30   0:00 [kworker/0:0-memcg]
```

### Task 3.2 - Remove users with nologin
```bash
cp /etc/passwd users.txt
sed -i '/nologin/d' users.txt
```
```text
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
yash:x:1000:1000:yash:/home/yash:/bin/bash
```

## Working with awk

### Task 3.3 - Print users with UID and GID
```bash
awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd
```
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
User yash has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534
```

### Task 3.4 - Print username and process name
```bash
awk 'NR>1 && $2 ~ /^[0-9]+$/ {print $1, $11}' processes.log
```
```text
ROOT /usr/lib/systemd/systemd
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_gp]
ROOT [kworker/R-sync_wq]
ROOT [kworker/R-kvfree_rcu_reclaim]
ROOT [kworker/R-slub_flushwq]
ROOT [kworker/R-netns]
ROOT [kworker/0:0-memcg]
ROOT [kworker/0:0H-kblockd]
ROOT [kworker/0:1-events]
ROOT [kworker/u16:0-ipv6_addrconf]
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
ROOT [kworker/1:0-cgroup_free]
ROOT [kworker/1:0H-kblockd]
ROOT [cpuhp/2]
ROOT [idle_inject/2]
ROOT [migration/2]
ROOT [ksoftirqd/2]
ROOT [kworker/2:0-cgroup_free]
ROOT [kworker/2:0H-kblockd]
ROOT [cpuhp/3]
ROOT [idle_inject/3]
ROOT [migration/3]
ROOT [ksoftirqd/3]
ROOT [kworker/3:0-events]
ROOT [kworker/3:0H-kblockd]
ROOT [kworker/u17:0-events_unbound]
ROOT [kworker/u18:0-events_unbound]
ROOT [kworker/u19:0-writeback]
ROOT [kworker/u20:0-ext4-rsv-conversion]
ROOT [kdevtmpfs]
ROOT [kworker/R-inet_frag_wq]
ROOT [rcu_tasks_kthread]
ROOT [rcu_tasks_rude_kthread]
ROOT [kauditd]
ROOT [khungtaskd]
ROOT [oom_reaper]
ROOT [kworker/u17:1-events_unbound]
ROOT [kworker/R-writeback]
ROOT [kworker/u17:2-flush-8:0]
ROOT [kcompactd0]
ROOT [ksmd]
ROOT [khugepaged]
ROOT [kworker/R-kblockd]
ROOT [kworker/R-blkcg_punt_bio]
ROOT [kworker/R-kintegrityd]
ROOT [irq/9-acpi]
ROOT [kworker/1:1-cgroup_free]
ROOT [kworker/2:1-cgroup_free]
ROOT [kworker/R-tpm_dev_wq]
ROOT [kworker/R-ata_sff]
ROOT [kworker/R-md_bitmap]
ROOT [kworker/R-md_llbitmap_io]
ROOT [kworker/R-md_llbitmap_unplug]
ROOT [kworker/R-edac-poller]
ROOT [kworker/R-devfreq_wq]
ROOT [watchdogd]
ROOT [kworker/3:1-cgroup_free]
ROOT [kworker/u18:1-events_unbound]
ROOT [kworker/R-quota_events_unbound]
ROOT [kworker/u18:2-events_power_efficient]
ROOT [kswapd0]
ROOT [kworker/u20:1-ext4-rsv-conversion]
ROOT [ecryptfs-kthread]
ROOT [kworker/R-kthrotld]
ROOT [kworker/R-acpi_thermal_pm]
ROOT [kworker/u20:2-ext4-rsv-conversion]
ROOT [scsi_eh_0]
ROOT [kworker/R-scsi_tmf_0]
ROOT [scsi_eh_1]
ROOT [kworker/R-scsi_tmf_1]
ROOT [kworker/u19:1-events_unbound]
ROOT [kworker/u20:3-pm]
ROOT [kworker/u20:4-events_power_efficient]
ROOT [kworker/2:1H]
ROOT [kworker/0:1H-kblockd]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/u16:1-netns]
ROOT [kworker/R-kstrp]
ROOT [kworker/u21:0]
ROOT [kworker/u22:0]
ROOT [kworker/u23:0]
ROOT [kworker/u24:0]
ROOT [kworker/u25:0]
ROOT [kworker/0:2-events]
ROOT [kworker/R-charger_manager]
ROOT [kworker/1:2-mm_percpu_wq]
ROOT [kworker/0:3-events]
ROOT [kworker/1:3-events]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_tmf_2]
ROOT [kworker/1:1H-kblockd]
ROOT [kworker/1:4]
ROOT [kworker/3:1H-kblockd]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [kworker/u19:2-loop2]
ROOT [kworker/u17:3-flush-8:0]
ROOT [psimon]
ROOT [kworker/2:2-mm_percpu_wq]
ROOT /usr/lib/systemd/systemd-journald
ROOT [kworker/R-kmpathd]
ROOT [kworker/R-kmpath_handlerd]
ROOT [kworker/3:2-events]
ROOT /usr/sbin/multipathd
systemd+ /usr/lib/systemd/systemd-resolved
ROOT [kworker/3:3-events]
ROOT /usr/lib/systemd/systemd-udevd
ROOT [psimon]
ROOT [irq/18-vmwgfx]
ROOT [kworker/R-ttm]
ROOT [kworker/u19:3-flush-8:0]
ROOT [kworker/u19:4-loop2]
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
_chrony /usr/sbin/chronyd
syslog /usr/sbin/rsyslogd
_chrony /usr/sbin/chronyd
ROOT /usr/bin/python3
ROOT /usr/sbin/ModemManager
ROOT [kworker/1:2H-events_highpri]
yash /usr/lib/systemd/systemd
yash (sd-pam)
yash -bash
ROOT sshd-session:
yash sshd-session:
yash -bash
yash ps
```

### Task 3.5 - Calculate total CPU usage
```bash
awk 'NR>1 && $2 ~ /^[0-9]+$/ {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log
```
```text
Total CPU usage: 103.50%
```
