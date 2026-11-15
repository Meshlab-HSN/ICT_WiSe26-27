# Task 3
## sed
```
ROOT           1  0.4  0.9  24720 15972 ?        Ss   21:50   0:02 /usr/lib/systemd/systemd --switched-ROOT --system --deserialize=55
ROOT           2  0.0  0.0      0     0 ?        S    21:50   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    21:50   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   21:50   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   21:50   0:00 [kworker/R-sync_wq]
```
## awk
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
User manthan_beladiya has UID 1000 and GID 1000
User vboxadd has UID 999 and GID 1
User sshd has UID 981 and GID 65534
ROOT /usr/lib/systemd/systemd
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_gp]
ROOT [kworker/R-sync_wq]
ROOT [kworker/R-kvfree_rcu_reclaim]
ROOT [kworker/R-slub_flushwq]
ROOT [kworker/R-netns]
ROOT [kworker/0:0H-kblockd]
ROOT [kworker/u8:0]
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
ROOT [kworker/1:0-mm_percpu_wq]
ROOT [kworker/1:0H]
ROOT [kworker/u9:0-ext4-rsv-conversion]
ROOT [kworker/u10:0-ext4-rsv-conversion]
ROOT [kdevtmpfs]
ROOT [kworker/R-inet_frag_wq]
ROOT [rcu_tasks_kthread]
ROOT [rcu_tasks_rude_kthread]
ROOT [kauditd]
ROOT [khungtaskd]
ROOT [oom_reaper]
ROOT [kworker/u9:1-events_unbound]
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
ROOT [kworker/u10:1-events_unbound]
ROOT [kswapd0]
ROOT [ecryptfs-kthread]
ROOT [kworker/R-kthrotld]
ROOT [kworker/R-acpi_thermal_pm]
ROOT [scsi_eh_0]
ROOT [kworker/R-scsi_tmf_0]
ROOT [scsi_eh_1]
ROOT [kworker/R-scsi_tmf_1]
ROOT [kworker/u10:2-events_unbound]
ROOT [kworker/u10:3-events_unbound]
ROOT [kworker/0:1H]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/u8:1-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/1:1H-kblockd]
ROOT [kworker/u11:0]
ROOT [kworker/u12:0]
ROOT [kworker/u13:0]
ROOT [kworker/R-charger_manager]
ROOT [kworker/0:2-cgroup_release]
ROOT [kworker/0:3-events]
ROOT [kworker/1:3-events]
ROOT [kworker/R-iprt-VBoxWQueue]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_tmf_2]
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
systemd+ /usr/lib/systemd/systemd-networkd
ROOT [irq/18-vmwgfx]
ROOT [kworker/R-ttm]
ROOT [kworker/u9:4-events_power_efficient]
ROOT /bin/sh
message+ @dbus-daemon
ROOT /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
ROOT /usr/lib/snapd/snapd
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/udisks2/udisksd
ROOT [kworker/R-cfg80211]
syslog /usr/sbin/rsyslogd
ROOT /usr/bin/python3
_chrony /usr/sbin/chronyd
ROOT sshd:
_chrony /usr/sbin/chronyd
ROOT /usr/sbin/cron
ROOT /usr/sbin/ModemManager
ROOT login
ROOT /usr/bin/VBoxDRMClient
ROOT /usr/sbin/VBoxService
manthan+ /usr/lib/systemd/systemd
manthan+ (sd-pam)
manthan+ -bash
ROOT [kworker/0:0-cgroup_free]
ROOT sshd-session:
manthan+ sshd-session:
manthan+ -bash
manthan+ ps
Total CPU usage: 6.6%
```
