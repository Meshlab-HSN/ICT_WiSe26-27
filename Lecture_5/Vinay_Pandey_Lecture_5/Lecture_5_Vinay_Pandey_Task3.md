# Lecture 5 – Task 3: Data Manipulation

## 3.1 – Replace root with ROOT using sed

**Command:**
```bash
sed -i 's/root/ROOT/g' processes.log
```

**Output:**
```text
ROOT           1  0.0  0.4  24932 16244 ?        Ss   17:12   0:02 /usr/lib/systemd/systemd --switched-root --system --deserialize=55 splash noprompt noshell automatic-ubiquity crashkernel=2G-4G:320M,4G-32G:512M,32G-64G:1024M,64G-128G:2048M,128G-:4096M
ROOT           2  0.0  0.0      0     0 ?        S    17:12   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    17:12   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   17:12   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   17:12   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   17:12   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   17:12   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   17:12   0:00 [kworker/R-netns]
ROOT          10  0.0  0.0      0     0 ?        I<   17:12   0:00 [kworker/0:0H-kblockd]
ROOT          12  0.0  0.0      0     0 ?        I    17:12   0:00 [kworker/u8:0]
```

## 3.2 – Create users.txt excluding nologin users

**Command:**
```bash
grep -v 'nologin' /etc/passwd > users.txt
```

**Output:**
```text
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
vinay:x:1000:1000:vinay:/home/vinay:/bin/bash
```

## 3.3 – Display usernames, UID and GID using awk

**Command:**
```bash
awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd
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
User vinay has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534
```

## 3.4 – Display username and process name

**Command:**
```bash
awk 'NR>1 && $1 !~ /^[0-9]+$/ {print "User: " $1 " | Process: " $11}' processes.log
```

**Output:**
```text
User: ROOT | Process: /usr/lib/systemd/systemd
User: ROOT | Process: [kthreadd]
User: ROOT | Process: [pool_workqueue_release]
User: ROOT | Process: [kworker/R-rcu_gp]
User: ROOT | Process: [kworker/R-sync_wq]
User: ROOT | Process: [kworker/R-kvfree_rcu_reclaim]
User: ROOT | Process: [kworker/R-slub_flushwq]
User: ROOT | Process: [kworker/R-netns]
User: ROOT | Process: [kworker/0:0H-kblockd]
User: ROOT | Process: [kworker/u8:0]
User: ROOT | Process: [kworker/R-mm_percpu_wq]
User: ROOT | Process: [ksoftirqd/0]
User: ROOT | Process: [rcu_preempt]
User: ROOT | Process: [rcu_exp_par_gp_kthread_worker/0]
User: ROOT | Process: [rcu_exp_gp_kthread_worker]
User: ROOT | Process: [migration/0]
User: ROOT | Process: [kprobe-optimizer]
User: ROOT | Process: [idle_inject/0]
User: ROOT | Process: [cpuhp/0]
User: ROOT | Process: [cpuhp/1]
User: ROOT | Process: [idle_inject/1]
User: ROOT | Process: [migration/1]
User: ROOT | Process: [ksoftirqd/1]
User: ROOT | Process: [kworker/u10:0-events_unbound]
User: ROOT | Process: [kdevtmpfs]
User: ROOT | Process: [kworker/R-inet_frag_wq]
User: ROOT | Process: [rcu_tasks_kthread]
User: ROOT | Process: [rcu_tasks_rude_kthread]
User: ROOT | Process: [kauditd]
User: ROOT | Process: [khungtaskd]
User: ROOT | Process: [oom_reaper]
User: ROOT | Process: [kworker/R-writeback]
User: ROOT | Process: [kcompactd0]
User: ROOT | Process: [ksmd]
User: ROOT | Process: [khugepaged]
User: ROOT | Process: [kworker/R-kblockd]
User: ROOT | Process: [kworker/R-blkcg_punt_bio]
User: ROOT | Process: [kworker/R-kintegrityd]
User: ROOT | Process: [irq/9-acpi]
User: ROOT | Process: [kworker/1:1-mm_percpu_wq]
User: ROOT | Process: [kworker/R-tpm_dev_wq]
User: ROOT | Process: [kworker/R-ata_sff]
User: ROOT | Process: [kworker/R-md_bitmap]
User: ROOT | Process: [kworker/R-md_llbitmap_io]
User: ROOT | Process: [kworker/R-md_llbitmap_unplug]
User: ROOT | Process: [kworker/R-edac-poller]
User: ROOT | Process: [kworker/R-devfreq_wq]
User: ROOT | Process: [watchdogd]
User: ROOT | Process: [kworker/R-quota_events_unbound]
User: ROOT | Process: [kswapd0]
User: ROOT | Process: [ecryptfs-kthread]
User: ROOT | Process: [kworker/R-kthrotld]
User: ROOT | Process: [kworker/R-acpi_thermal_pm]
User: ROOT | Process: [scsi_eh_0]
User: ROOT | Process: [kworker/R-scsi_tmf_0]
User: ROOT | Process: [scsi_eh_1]
User: ROOT | Process: [kworker/R-scsi_tmf_1]
User: ROOT | Process: [kworker/u9:6-events_power_efficient]
User: ROOT | Process: [kworker/R-mld]
User: ROOT | Process: [kworker/R-ipv6_addrconf]
User: ROOT | Process: [kworker/R-kstrp]
User: ROOT | Process: [kworker/u8:1-ipv6_addrconf]
User: ROOT | Process: [kworker/0:1H]
User: ROOT | Process: [kworker/u11:0]
User: ROOT | Process: [kworker/u12:0]
User: ROOT | Process: [kworker/u13:0]
User: ROOT | Process: [kworker/u10:1-events_power_efficient]
User: ROOT | Process: [kworker/R-charger_manager]
User: ROOT | Process: [kworker/u10:3-events_unbound]
User: ROOT | Process: [scsi_eh_2]
User: ROOT | Process: [kworker/R-scsi_tmf_2]
User: ROOT | Process: [kworker/1:1H-events_highpri]
User: ROOT | Process: [jbd2/sda2-8]
User: ROOT | Process: [kworker/R-ext4-rsv-conversion]
User: ROOT | Process: [psimon]
User: ROOT | Process: /usr/lib/systemd/systemd-journald
User: ROOT | Process: [kworker/R-kmpathd]
User: ROOT | Process: [kworker/R-kmpath_handlerd]
User: ROOT | Process: /usr/sbin/multipathd
User: systemd+ | Process: /usr/lib/systemd/systemd-resolved
User: ROOT | Process: /usr/lib/systemd/systemd-udevd
User: ROOT | Process: [psimon]
User: systemd+ | Process: /usr/lib/systemd/systemd-networkd
User: ROOT | Process: [kworker/R-cfg80211]
User: ROOT | Process: [irq/18-vmwgfx]
User: ROOT | Process: [kworker/R-ttm]
User: ROOT | Process: /bin/sh
User: message+ | Process: @dbus-daemon
User: ROOT | Process: /usr/bin/python3
User: polkitd | Process: /usr/lib/polkit-1/polkitd
User: ROOT | Process: /usr/lib/snapd/snapd
User: ROOT | Process: /usr/lib/systemd/systemd-logind
User: ROOT | Process: /usr/libexec/udisks2/udisksd
User: ROOT | Process: sshd:
User: ROOT | Process: /usr/sbin/cron
User: ROOT | Process: /usr/bin/python3
User: _chrony | Process: /usr/sbin/chronyd
User: ROOT | Process: /usr/sbin/ModemManager
User: _chrony | Process: /usr/sbin/chronyd
User: syslog | Process: /usr/sbin/rsyslogd
User: ROOT | Process: login
User: vinay | Process: /usr/lib/systemd/systemd
User: vinay | Process: (sd-pam)
User: vinay | Process: -bash
User: ROOT | Process: [kworker/1:2H]
User: ROOT | Process: /usr/libexec/fwupd/fwupd
User: ROOT | Process: /usr/libexec/upowerd
User: ROOT | Process: [kworker/1:2-cgroup_release]
User: ROOT | Process: [kworker/0:0-events]
User: ROOT | Process: [kworker/u9:0-events_unbound]
User: ROOT | Process: [kworker/0:2-ata_sff]
User: ROOT | Process: sshd-session:
User: vinay | Process: sshd-session:
User: vinay | Process: -bash
User: ROOT | Process: [kworker/u9:3]
User: ROOT | Process: [kworker/1:0-cgroup_free]
User: vinay | Process: ps
```

## 3.5 – Calculate total CPU usage

**Command:**
```bash
awk 'NR>1 && $1 !~ /^[0-9]+$/ {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log
```

**Output:**
```text
Total CPU usage: 221.90%
```
