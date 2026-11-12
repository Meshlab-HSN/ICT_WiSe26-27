# Lecture 5 - Task 3: Data Manipulation

## 1. Replace root with ROOT using sed

**Command:**
```bash
sed -i 's/root/ROOT/g' processes.log
grep -n '^ROOT[[:space:]]' processes.log | head -n 10
```

**Output:**
```text
2:ROOT           1  0.1  0.3  24760 15412 ?        Ss   15:01   0:00 /sbin/init
3:ROOT           2  0.0  0.0      0     0 ?        S    15:01   0:00 [kthreadd]
4:ROOT           3  0.0  0.0      0     0 ?        S    15:01   0:00 [pool_workqueue_release]
5:ROOT           4  0.0  0.0      0     0 ?        I<   15:01   0:00 [kworker/R-rcu_gp]
6:ROOT           5  0.0  0.0      0     0 ?        I<   15:01   0:00 [kworker/R-sync_wq]
7:ROOT           6  0.0  0.0      0     0 ?        I<   15:01   0:00 [kworker/R-kvfree_rcu_reclaim]
8:ROOT           7  0.0  0.0      0     0 ?        I<   15:01   0:00 [kworker/R-slub_flushwq]
9:ROOT           8  0.0  0.0      0     0 ?        I<   15:01   0:00 [kworker/R-netns]
10:ROOT          10  0.0  0.0      0     0 ?        I<   15:01   0:00 [kworker/0:0H-kblockd]
11:ROOT          11  0.0  0.0      0     0 ?        I    15:01   0:00 [kworker/0:1-cgroup_free]
```

## 2. Create users.txt and remove users with nologin

**Command:**
```bash
cp /etc/passwd users.txt
sed -i '/nologin/d' users.txt
cat users.txt
grep -n nologin users.txt
```

**Output:**
```text
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:996:996:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
ubuntu:x:1000:1000:Ubuntu:/home/ubuntu:/bin/bash
tahir-khan:x:1001:1001:,,,:/home/tahir-khan:/bin/bash

Verification: No nologin entries remain.
```

## 3. Print users with their UID and GID using awk

**Command:**
```bash
awk -F: '{printf "User %s has UID %s and GID %s\n", $1, $3, $4}' /etc/passwd
```

**Output:**
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
User dhcpcd has UID 996 and GID 996
User messagebus has UID 995 and GID 995
User syslog has UID 100 and GID 101
User systemd-resolve has UID 989 and GID 989
User _chrony has UID 988 and GID 988
User tss has UID 987 and GID 987
User uuidd has UID 101 and GID 103
User sshd has UID 986 and GID 65534
User tcpdump has UID 985 and GID 985
User landscape has UID 102 and GID 106
User fwupd-refresh has UID 984 and GID 984
User polkitd has UID 983 and GID 983
User ec2-instance-connect has UID 103 and GID 65534
User ubuntu has UID 1000 and GID 1000
User tahir-khan has UID 1001 and GID 1001
```

## 4. Print usernames and process names using awk

**Command:**
```bash
awk 'NR>1 && $2 ~ /^[0-9]+$/ {print $1, $11}' processes.log
```

**Output:**
```text
ROOT /sbin/init
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_gp]
ROOT [kworker/R-sync_wq]
ROOT [kworker/R-kvfree_rcu_reclaim]
ROOT [kworker/R-slub_flushwq]
ROOT [kworker/R-netns]
ROOT [kworker/0:0H-kblockd]
ROOT [kworker/0:1-cgroup_free]
ROOT [kworker/u8:0-events_unbound]
ROOT [kworker/R-mm_percpu_wq]
ROOT [ksoftirqd/0]
ROOT [pr/ttyS0]
ROOT [rcu_sched]
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
ROOT [kworker/1:0-events]
ROOT [kworker/1:0H-kblockd]
ROOT [kdevtmpfs]
ROOT [kworker/R-inet_frag_wq]
ROOT [rcu_tasks_kthread]
ROOT [rcu_tasks_rude_kthread]
ROOT [kauditd]
ROOT [khungtaskd]
ROOT [oom_reaper]
ROOT [kworker/u8:1-events_power_efficient]
ROOT [kworker/R-writeback]
ROOT [kcompactd0]
ROOT [kworker/u8:2-flush-259:0]
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
ROOT [irq/24-pciehp]
ROOT [irq/25-pciehp]
ROOT [irq/26-pciehp]
ROOT [irq/27-pciehp]
ROOT [irq/28-pciehp]
ROOT [irq/29-pciehp]
ROOT [irq/30-pciehp]
ROOT [irq/31-pciehp]
ROOT [irq/32-pciehp]
ROOT [irq/33-pciehp]
ROOT [irq/34-pciehp]
ROOT [irq/35-pciehp]
ROOT [irq/36-pciehp]
ROOT [irq/37-pciehp]
ROOT [irq/38-pciehp]
ROOT [irq/39-pciehp]
ROOT [irq/40-pciehp]
ROOT [irq/41-pciehp]
ROOT [irq/42-pciehp]
ROOT [irq/43-pciehp]
ROOT [irq/44-pciehp]
ROOT [irq/45-pciehp]
ROOT [irq/46-pciehp]
ROOT [irq/47-pciehp]
ROOT [irq/48-pciehp]
ROOT [irq/49-pciehp]
ROOT [irq/50-pciehp]
ROOT [irq/51-pciehp]
ROOT [irq/52-pciehp]
ROOT [irq/53-pciehp]
ROOT [irq/54-pciehp]
ROOT [irq/55-pciehp]
ROOT [irq/56-pciehp]
ROOT [irq/57-pciehp]
ROOT [irq/58-pciehp]
ROOT [irq/59-pciehp]
ROOT [irq/60-pciehp]
ROOT [irq/61-pciehp]
ROOT [kworker/R-acpi_thermal_pm]
ROOT [kworker/R-nvme-wq]
ROOT [kworker/R-nvme-reset-wq]
ROOT [kworker/R-nvme-delete-wq]
ROOT [kworker/R-nvme-auth-wq]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/0:3-events]
ROOT [kworker/u9:0]
ROOT [kworker/R-charger_manager]
ROOT [jbd2/nvme0n1p1-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [kworker/1:1H-kblockd]
ROOT [psimon]
ROOT /usr/lib/systemd/systemd-journald
ROOT [kworker/R-kmpathd]
ROOT [kworker/R-kmpath_handlerd]
ROOT [kworker/1:3-cgroup_release]
ROOT /usr/sbin/multipathd
systemd+ /usr/lib/systemd/systemd-resolved
ROOT [kworker/0:1H-kblockd]
ROOT /usr/lib/systemd/systemd-udevd
ROOT [psimon]
ROOT [jbd2/nvme0n1p13-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [kworker/R-ena]
ROOT [kworker/R-nfit]
ROOT [kworker/R-cfg80211]
systemd+ /usr/lib/systemd/systemd-networkd
ROOT /usr/sbin/acpid
ROOT /bin/sh
ROOT /usr/sbin/cron
message+ @dbus-daemon
ROOT /usr/sbin/irqbalance
ROOT /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
ROOT /usr/lib/snapd/snapd
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/udisks2/udisksd
ROOT sshd:
ROOT /usr/sbin/agetty
ROOT /usr/sbin/agetty
_chrony /usr/sbin/chronyd
_chrony /usr/sbin/chronyd
ROOT /usr/bin/python3
syslog /usr/sbin/rsyslogd
ROOT /usr/sbin/ModemManager
ROOT /snap/amazon-ssm-agent/13349/amazon-ssm-agent
ROOT [kworker/u8:5-flush-259:0]
ROOT [kworker/1:1-cgroup_release]
ROOT sshd-session:
tahir-k+ /usr/lib/systemd/systemd
ROOT [kworker/0:0-rcu_gp]
ROOT [kworker/0:2-events]
tahir-k+ (sd-pam)
tahir-k+ sshd-session:
tahir-k+ -bash
ROOT [kworker/1:2-cgroup_free]
tahir-k+ ps
```

## 5. Calculate total CPU usage using awk

**Command:**
```bash
awk 'NR>1 && $2 ~ /^[0-9]+$/ {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log
```

**Output:**
```text
Total CPU usage: 0.20%
```

