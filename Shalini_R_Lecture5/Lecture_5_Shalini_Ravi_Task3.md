Lecture 5  Task 3: Data manipulation

Student: Shalini Ravi

 1. Working with sed

 1.1 Replace root with ROOT in processes.log

Command:
```bash
sed -i 's/root/ROOT/g' processes.log
```

Output:
```text
No output displayed. File modified successfully.
```

1.2 Create users.txt and remove nologin entries

Commands:
```bash
cat /etc/passwd > users.txt
sed -i '/nologin/d' users.txt
cat users.txt
Output:
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
vboxuser:x:1000:1000:vboxuser:/home/vboxuser:/bin/bash
vboxadd:x:999:1::/var/run/vboxadd:/bin/false

2. Working with awk

 2.1 Print usernames, UIDs and GIDs

Command:
```bash
awk -F: '{printf "User %s has UID %s and GID %s\n", $1, $3, $4}' /etc/passwd
```

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
User vboxuser has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534
User vboxadd has UID 999 and GID 1

 2.2 Print username and process name

Command:
```bash
awk '{print $1, $11}' processes.log
```

Output:
USER COMMAND
root /usr/lib/systemd/systemd
root [kthreadd]
root [pool_workqueue_release]
root [kworker/R-rcu_gp]
root [kworker/R-sync_wq]
root [kworker/R-kvfree_rcu_reclaim]
root [kworker/R-slub_flushwq]
root [kworker/R-netns]
root [kworker/0:0-rcu_gp]
root [kworker/0:0H-kblockd]
root [kworker/0:1-cgroup_free]
root [kworker/u4:0-events_unbound]
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
root [kworker/u4:1-writeback]
root [kworker/u4:2-async]
root [kworker/R-writeback]
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
root [kworker/u4:3-events_unbound]
root [kworker/u4:4-pm]
root [kworker/u4:5-events_unbound]
root [kworker/R-mld]
root [kworker/R-ipv6_addrconf]
root [kworker/R-kstrp]
root [kworker/0:2-cgroup_release]
root [kworker/0:3-events]
root [kworker/u5:0]
root [kworker/R-charger_manager]
root [irq/18-vmwgfx]
root [kworker/R-ttm]
root [kworker/R-iprt-VBoxWQueue]
root [scsi_eh_2]
root [kworker/R-scsi_tmf_2]
root [kworker/0:1H-kblockd]
root [jbd2/sda2-8]
root [kworker/R-ext4-rsv-conversion]
root [psimon]
root /usr/lib/systemd/systemd-journald
root [kworker/R-kmpathd]
root [kworker/R-kmpath_handlerd]
root /usr/sbin/multipathd
systemd+ /usr/lib/systemd/systemd-resolved
root /usr/lib/systemd/systemd-udevd
root [psimon]
systemd+ /usr/lib/systemd/systemd-networkd
root [kworker/R-cfg80211]
root /bin/sh
message+ @dbus-daemon
root /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
root /snap/snapd/current/usr/lib/snapd/snapd
root /usr/lib/systemd/systemd-logind
root /usr/libexec/udisks2/udisksd
root [kworker/0:4]
root sshd:
root /usr/sbin/cron
_chrony /usr/sbin/chronyd
root login
_chrony /usr/sbin/chronyd
root /usr/bin/python3
root /usr/sbin/ModemManager
syslog /usr/sbin/rsyslogd
root /usr/bin/VBoxDRMClient
root /usr/sbin/VBoxService
vboxuser /usr/lib/systemd/systemd
vboxuser (sd-pam)
vboxuser -bash
vboxuser ps
106

2.3 Calculate total CPU usage

Command:
```bash
awk 'NR>1 {sum += $3} END {print "Total CPU usage:", sum "%"}' processes.log
```

Output:
```text
Total CPU usage: 7.4%
```