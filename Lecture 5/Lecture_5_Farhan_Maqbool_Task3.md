# Lecture 5 - Task 3
## Data Manipulation – sed and awk

### 1. Replace root with ROOT using sed

**Command:**
```bash
sed -i 's/root/ROOT/g' processes.log
```

**Output:**
```text
No output displayed. The processes.log file was modified successfully.
```

**Verification command:**
```bash
head -n 10 processes.log
```

**Output:**
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.1  0.2  24996 16392 ?        Ss   21:56   0:02 /usr/lib/systemd/systemd --switched-ROOT --system --deserialize=55
ROOT           2  0.0  0.0      0     0 ?        S    21:56   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        I    21:56   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   21:56   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   21:56   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   21:56   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   21:56   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   21:56   0:00 [kworker/R-netns]
ROOT          10  0.0  0.0      0     0 ?        I<   21:56   0:00 [kworker/0:0H-kblockd]
```

### 2. Create users.txt

**Command:**
```bash
cat /etc/passwd > users.txt
```

**Output:**
```text
No output displayed. The contents of /etc/passwd were saved to users.txt.
```

**Verification command:**
```bash
ls -l users.txt
```

**Output:**
```text
-rw-rw-r-- 1 farhan-maqbool farhan-maqbool 1756 Nov 13 23:00 users.txt
```

### 3. Remove users who cannot log in

**Command:**
```bash
sed -i '/nologin/d' users.txt
```

**Output:**
```text
No output displayed. Lines containing nologin were removed from users.txt.
```

**Verification command:**
```bash
grep nologin users.txt
```

**Output:**
```text
No output displayed. No lines containing nologin were found.
```

### 4. Display users with UID and GID using awk

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
User farhan-maqbool has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534
```

### 5. Display username and process name using awk

**Command:**
```bash
awk '{print $1, $11}' processes.log
```

**Output:**
```text
USER COMMAND
ROOT /usr/lib/systemd/systemd
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_gp]
ROOT [kworker/R-sync_wq]
ROOT [kworker/R-kvfree_rcu_reclaim]
ROOT [kworker/R-slub_flushwq]
ROOT [kworker/R-netns]
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
ROOT [kworker/1:0H-kblockd]
ROOT [cpuhp/2]
ROOT [idle_inject/2]
ROOT [migration/2]
ROOT [ksoftirqd/2]
ROOT [kworker/2:0H-kblockd]
ROOT [cpuhp/3]
ROOT [idle_inject/3]
ROOT [migration/3]
ROOT [ksoftirqd/3]
ROOT [kworker/3:0-events]
ROOT [kworker/3:0H-kblockd]
ROOT [kworker/u17:0-events_power_efficient]
ROOT [kworker/u18:0-events_unbound]
ROOT [kworker/u20:0-events_unbound]
ROOT [kdevtmpfs]
ROOT [kworker/R-inet_frag_wq]
ROOT [rcu_tasks_kthread]
ROOT [rcu_tasks_rude_kthread]
ROOT [kauditd]
ROOT [khungtaskd]
ROOT [oom_reaper]
ROOT [kworker/u17:1-events_unbound]
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
ROOT [kworker/1:1-events]
ROOT [kworker/R-quota_events_unbound]
ROOT [kswapd0]
ROOT [kworker/u18:1-events_unbound]
ROOT [ecryptfs-kthread]
ROOT [kworker/R-kthrotld]
ROOT [kworker/R-acpi_thermal_pm]
ROOT [scsi_eh_0]
ROOT [kworker/R-scsi_tmf_0]
ROOT [scsi_eh_1]
ROOT [kworker/R-scsi_tmf_1]
ROOT [kworker/u20:2-events_power_efficient]
ROOT [kworker/u18:3-events_unbound]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/u16:1-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/u21:0]
ROOT [kworker/u22:0]
ROOT [kworker/u23:0]
ROOT [kworker/u24:0]
ROOT [kworker/u25:0]
ROOT [kworker/u19:1-ext4-rsv-conversion]
ROOT [kworker/2:2-events]
ROOT [kworker/2:1H]
ROOT [kworker/3:1H-kblockd]
ROOT [kworker/R-charger_manager]
ROOT [kworker/1:2-cgroup_offline]
ROOT [kworker/u17:3-events_unbound]
ROOT [kworker/0:3-cgroup_free]
ROOT [kworker/u19:2-events_power_efficient]
ROOT [kworker/1:1H-kblockd]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_tmf_2]
ROOT [kworker/R-kdmflush/252:0]
ROOT [jbd2/dm-0-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [psimon]
ROOT /usr/lib/systemd/systemd-journald
ROOT [kworker/R-kmpathd]
ROOT [kworker/R-kmpath_handlerd]
ROOT [kworker/u20:3-events_power_efficient]
ROOT /usr/sbin/multipathd
ROOT [kworker/0:1H-kblockd]
systemd+ /usr/lib/systemd/systemd-resolved
ROOT /usr/lib/systemd/systemd-udevd
ROOT [psimon]
ROOT [irq/18-vmwgfx]
ROOT [kworker/R-ttm]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-rsv-conversion]
systemd+ /usr/lib/systemd/systemd-networkd
ROOT [kworker/u19:3-events_power_efficient]
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
ROOT /usr/bin/python3
_chrony /usr/sbin/chronyd
ROOT /usr/bin/VBoxDRMClient
ROOT /usr/sbin/VBoxService
syslog /usr/sbin/rsyslogd
ROOT /usr/sbin/ModemManager
farhan-+ /usr/lib/systemd/systemd
farhan-+ (sd-pam)
farhan-+ -bash
ROOT [kworker/3:1-cgroup_free]
ROOT [kworker/2:0-events]
ROOT [kworker/1:0-cgroup_release]
ROOT [kworker/1:3-cgroup_free]
ROOT [kworker/3:2]
```

### 6. Calculate total CPU usage

**Command:**
```bash
awk 'NR>1 {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log
```

**Output:**
```text
Total CPU usage: 0.60%
```
