# ICT Lecture 5 - Task 3
Name: Akhil

## Part 1: sed

### Replace root with ROOT
```bash
sed -i 's/root/ROOT/g' processes.log
```

### Create users.txt and remove nologin users
```bash
cat /etc/passwd > users.txt
sed -i '/nologin/d' users.txt
```

### Contents of users.txt
```text
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
akhil:x:1000:1000:akhil:/home/akhil:/bin/bash
```

## Part 2: awk

### Display username, UID and GID
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
User systemd-network has UID 997 and GID 997
User tss has UID 996 and GID 996
User _dhcpcd has UID 995 and GID 995
User messagebus has UID 994 and GID 994
User systemd-resolve has UID 987 and GID 987
User _chrony has UID 986 and GID 986
User upki has UID 985 and GID 985
User polkitd has UID 984 and GID 984
User syslog has UID 100 and GID 102
User uuidd has UID 982 and GID 982
User tcpdump has UID 980 and GID 980
User landscape has UID 101 and GID 103
User fwupd-refresh has UID 979 and GID 979
User akhil has UID 1000 and GID 1000
User sshd has UID 978 and GID 65534
```

### Display username and process name
```bash
awk 'NR>1 && NF>=11 {print $1, $11}' processes.log
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
ROOT [kworker/0:0-events]
ROOT [kworker/0:0H-kblockd]
ROOT [kworker/0:1-cgroup_free]
ROOT [kworker/u16:0-flush-8:0]
ROOT [kworker/R-mm_percpu_wq]
ROOT [ksoftirqd/0]
ROOT [rcu_preempt]
ROOT [rcu_exp_par_gp_kthread_worker/0]
ROOT [rcu_exp_gp_kthread_worker]
ROOT [migration/0]
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
ROOT [kworker/2:0-events]
ROOT [kworker/2:0H-kblockd]
ROOT [cpuhp/3]
ROOT [idle_inject/3]
ROOT [migration/3]
ROOT [ksoftirqd/3]
ROOT [kworker/3:0-cgroup_free]
ROOT [kworker/3:0H-kblockd]
ROOT [kdevtmpfs]
ROOT [kworker/R-inet_frag_wq]
ROOT [rcu_tasks_kthread]
ROOT [rcu_tasks_rude_kthread]
ROOT [kauditd]
ROOT [khungtaskd]
ROOT [oom_reaper]
ROOT [kworker/u16:1-flush-8:0]
ROOT [kworker/R-writeback]
ROOT [kcompactd0]
ROOT [ksmd]
ROOT [kworker/1:1-mm_percpu_wq]
ROOT [khugepaged]
ROOT [kworker/R-bio_complete]
ROOT [kworker/R-kblockd]
ROOT [kworker/R-blkcg_punt_bio]
ROOT [kworker/R-kintegrityd]
ROOT [kworker/2:1-events]
ROOT [kworker/R-tpm_dev_wq]
ROOT [kworker/R-ata_sff]
ROOT [kworker/R-md_bitmap]
ROOT [kworker/R-md_llbitmap_io]
ROOT [kworker/R-md_llbitmap_unplug]
ROOT [kworker/R-edac-poller]
ROOT [kworker/R-devfreq_wq]
ROOT [watchdogd]
ROOT [kworker/R-quota_events_unbound]
ROOT [kworker/u16:2-events_unbound]
ROOT [kswapd0]
ROOT [ecryptfs-kthread]
ROOT [kworker/R-kthrotld]
ROOT [kworker/u17:0]
ROOT [kworker/R-acpi_thermal_pm]
ROOT [scsi_eh_0]
ROOT [kworker/R-scsi_tmf_0]
ROOT [kworker/u16:3-events_unbound]
ROOT [kworker/0:1H-kblockd]
ROOT [kworker/3:1H-kblockd]
ROOT [kworker/3:1-cgroup_free]
ROOT [kworker/u16:4-flush-8:0]
ROOT [kworker/1:1H-kblockd]
ROOT [kworker/2:1H-kblockd]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/R-charger_manager]
ROOT [kworker/u16:5-flush-8:0]
ROOT [kworker/2:2-events]
ROOT [kworker/2:3-events]
ROOT [kworker/3:2-cgroup_free]
ROOT [kworker/1:2-cgroup_free]
ROOT [kworker/0:2-cgroup_free]
ROOT [kworker/0:3-inode_switch_wbs]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [psimon]
ROOT /usr/lib/systemd/systemd-journald
ROOT [kworker/R-kmpathd]
ROOT [kworker/R-kmpath_handlerd]
ROOT /usr/sbin/multipathd
ROOT [kworker/3:3-events]
ROOT [kworker/3:4]
systemd+ /usr/lib/systemd/systemd-resolved
ROOT /usr/lib/systemd/systemd-udevd
ROOT [psimon]
ROOT [irq/15-vmwgfx]
ROOT [kworker/R-ttm]
systemd+ /usr/lib/systemd/systemd-networkd
ROOT [kworker/R-cfg80211]
message+ /usr/bin/dbus-broker-launch
message+ dbus-broker
_chrony /usr/sbin/chronyd
ROOT /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/udisks2/udisksd
ROOT sshd:
syslog /usr/sbin/rsyslogd
ROOT /usr/bin/python3
ROOT /usr/sbin/ModemManager
_chrony /usr/sbin/chronyd
ROOT /usr/sbin/cron
ROOT login
akhil /usr/lib/systemd/systemd
akhil (sd-pam)
akhil -bash
ROOT sshd-session:
akhil sshd-session:
akhil -bash
akhil ps
```

### Calculate total CPU usage
```bash
awk 'NR>1 && NF>=11 {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log
```
```text
Total CPU usage: 1.70%
```
