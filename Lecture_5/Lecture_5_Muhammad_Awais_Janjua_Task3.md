</> Markdown

## Task 3 - Data Manipulation

### Working with sed 


Step 1 - Replace root with ROOT in processes.log

Command:
sed -i 's/root/ROOT/g' processes.log

Step 2 - Copy /etc/passwd and remove lines containing nologin


Commands:
cp /etc/passwd users.txt
sed -i '/nologin/d' users.txt


### Working with awk

Step 1 - Print users wiith UID AND GID

Command:
awk -F: '{print "User " $1" has UID " $3 " and GID "$4}' /etc/passwd

Step 2 - Print username and process name

Command:
awk '{print $1, $11}' processes.log

Step 3 - Calculate total CPU usage

Command:
awk 'NR>1 {sum += $3} END {print "TOTAL CPU usage:" , sum "%"}' processes.log


Output:
Total CPU usage: 0.7%
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
User mjanjua has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534
USER COMMAND
root /usr/lib/systemd/systemd
root [kthreadd]
root [pool_workqueue_release]
root [kworker/R-rcu_gp]
root [kworker/R-sync_wq]
root [kworker/R-kvfree_rcu_reclaim]
root [kworker/R-slub_flushwq]
root [kworker/R-netns]
root [kworker/0:0H-kblockd]
root [kworker/u16:0-ipv6_addrconf]
root [kworker/R-mm_percpu_wq]
root [ksoftirqd/0]
root [rcu_preempt]
root [rcu_exp_par_gp_kthread_worker/0]
root [rcu_exp_gp_kthread_worker]
root [migration/0]
root [kprobe-optimizer]
root [idle_inject/0]
root [cpuhp/0]
root [cpuhp/1]
root [idle_inject/1]
root [migration/1]
root [ksoftirqd/1]
root [cpuhp/2]
root [idle_inject/2]
root [migration/2]
root [ksoftirqd/2]
root [cpuhp/3]
root [idle_inject/3]
root [migration/3]
root [ksoftirqd/3]
root [kworker/3:0H-kblockd]
root [kworker/u18:0-ext4-rsv-conversion]
root [kdevtmpfs]
root [kworker/R-inet_frag_wq]
root [rcu_tasks_kthread]
root [rcu_tasks_rude_kthread]
root [kauditd]
root [khungtaskd]
root [oom_reaper]
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
root [kworker/u17:4-events_unbound]
root [kworker/R-mld]
root [kworker/u19:1-events_power_efficient]
root [kworker/R-ipv6_addrconf]
root [kworker/u16:1-ipv6_addrconf]
root [kworker/R-kstrp]
root [kworker/u18:1-events_power_efficient]
root [kworker/u21:0]
root [kworker/u22:0]
root [kworker/u23:0]
root [kworker/u24:0]
root [kworker/u25:0]
root [kworker/R-charger_manager]
root [kworker/u19:3-events_unbound]
root [kworker/2:3-events]
root [kworker/3:1H-kblockd]
root [scsi_eh_2]
root [kworker/R-scsi_tmf_2]
root [kworker/1:1H-kblockd]
root [kworker/1:2H-kblockd]
root [kworker/2:1H-kblockd]
root [kworker/0:1H-kblockd]
root [kworker/0:2-mm_percpu_wq]
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
root [irq/18-vmwgfx]
root [kworker/R-ttm]
root /bin/sh
message+ @dbus-daemon
root /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
root /usr/lib/snapd/snapd
root /usr/lib/systemd/systemd-logind
root /usr/libexec/udisks2/udisksd
root [kworker/R-cfg80211]
_chrony /usr/sbin/chronyd
_chrony /usr/sbin/chronyd
root /usr/sbin/ModemManager
root /usr/bin/python3
syslog /usr/sbin/rsyslogd
root sshd:
root /usr/sbin/cron
root login
mjanjua /usr/lib/systemd/systemd
mjanjua (sd-pam)
mjanjua -bash
root [kworker/u18:2-events_power_efficient]
root [kworker/u20:0-events_power_efficient]
root [kworker/u17:0-events_power_efficient]
root [kworker/1:0-events]
root [kworker/u19:2]
root /usr/libexec/fwupd/fwupd
root /usr/libexec/upowerd
root [kworker/u17:1-events_power_efficient]
root [kworker/2:2H]
root [kworker/1:3-cgroup_free]
root [kworker/u20:1-flush-8:0]
root [kworker/3:2-events]
root [kworker/3:1-events]
root [kworker/2:0-cgroup_release]
root [kworker/0:3-cgroup_free]
root [kworker/u20:2-ext4-rsv-conversion]
root [kworker/2:1]
root [kworker/2:2-cgroup_free]
root [kworker/u20:3-events_power_efficient]
mjanjua ps
Total CPU usage: 0.7%
