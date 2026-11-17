manirul-islam@ict:~/ICT_WiSe26-27/Lecture 5$ sed -i 's/root/ROOT/g' processes.log
manirul-islam@ict:~/ICT_WiSe26-27/Lecture 5$ grep "ROOT" processes.log | head -n 5
ROOT           1  0.1  0.4  26184 16612 ?        Ss   13:48   0:00 /usr/lib/systemd/systemd --switched-ROOT --system --deserialize=55
ROOT           2  0.0  0.0      0     0 ?        S    13:48   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    13:48   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   13:48   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   13:48   0:00 [kworker/R-sync_wq]
manirul-islam@ict:~/ICT_WiSe26-27/Lecture 5$ cp /etc/passwd users.txt
sed -i '/nologin/d' users.txt
manirul-islam@ict:~/ICT_WiSe26-27/Lecture 5$ awk -F':' '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd
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
User polkitd has UID 988 and GID 988
User syslog has UID 100 and GID 103
User uuidd has UID 101 and GID 104
User tcpdump has UID 986 and GID 986
User landscape has UID 102 and GID 106
User fwupd-refresh has UID 985 and GID 985
User manirul-islam has UID 1000 and GID 1000
User sshd has UID 984 and GID 65534
manirul-islam@ict:~/ICT_WiSe26-27/Lecture 5$ head -n -1 processes.log | awk '{print $1, $11}'
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
ROOT [kworker/1:0-events]
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
ROOT [kworker/3:0H-kblockd]
ROOT [kdevtmpfs]
ROOT [kworker/R-inet_frag_wq]
ROOT [rcu_tasks_kthread]
ROOT [rcu_tasks_rude_kthread]
ROOT [kauditd]
ROOT [khungtaskd]
ROOT [oom_reaper]
ROOT [kworker/u16:1-events_unbound]
ROOT [kworker/R-writeback]
ROOT [kcompactd0]
ROOT [ksmd]
ROOT [khugepaged]
ROOT [kworker/R-kblockd]
ROOT [kworker/R-blkcg_punt_bio]
ROOT [kworker/R-kintegrityd]
ROOT [kworker/3:1-mm_percpu_wq]
ROOT [kworker/2:1-mm_percpu_wq]
ROOT [kworker/u16:2-events_power_efficient]
ROOT [pr/ttyAMA-1]
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
ROOT [irq/49-ACPI:Ged]
ROOT [kworker/R-acpi_thermal_pm]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/u17:0]
ROOT [kworker/u16:4-events_power_efficient]
ROOT [kworker/3:2-events]
ROOT [kworker/R-charger_manager]
ROOT [hwrng]
ROOT [kworker/0:2-events]
ROOT [card0-crtc0]
ROOT [scsi_eh_0]
ROOT [kworker/R-scsi_tmf_0]
ROOT [usb-storage]
ROOT [kworker/R-uas]
ROOT [kworker/R-kdmflush/252:0]
ROOT [kworker/1:1H-kblockd]
ROOT [kworker/3:1H-kblockd]
ROOT [jbd2/dm-0-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [psimon]
ROOT /usr/lib/systemd/systemd-journald
ROOT [kworker/R-kmpathd]
ROOT [kworker/R-kmpath_handlerd]
ROOT /usr/sbin/multipathd
systemd+ /usr/lib/systemd/systemd-resolved
ROOT [kworker/0:1H-kblockd]
ROOT [kworker/2:1H-kblockd]
ROOT /usr/lib/systemd/systemd-udevd
ROOT [psimon]
ROOT [jbd2/vda2-8]
ROOT [kworker/R-ext4-rsv-conversion]
systemd+ /usr/lib/systemd/systemd-networkd
ROOT [kworker/R-cfg80211]
ROOT /bin/sh
message+ @dbus-daemon
ROOT /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/udisks2/udisksd
ROOT sshd:
ROOT /usr/bin/python3
_chrony /usr/sbin/chronyd
syslog /usr/sbin/rsyslogd
_chrony /usr/sbin/chronyd
ROOT /usr/sbin/ModemManager
ROOT /usr/sbin/cron
ROOT /usr/sbin/agetty
ROOT login
manirul+ /usr/lib/systemd/systemd
manirul+ (sd-pam)
manirul+ -bash
ROOT sshd-session:
manirul+ sshd-session:
manirul+ -bash
ROOT [kworker/3:0-rcu_gp]
ROOT [kworker/1:1-mm_percpu_wq]
ROOT [kworker/2:0-mm_percpu_wq]
ROOT [kworker/u16:0-flush-252:0]
ROOT [kworker/0:0-cgroup_release]
ROOT [kworker/1:2-events]
ROOT [kworker/0:3-events]
manirul+ ps
manirul-islam@ict:~/ICT_WiSe26-27/Lecture 5$ head -n -1 processes.log | awk 'NR>1 {sum += $3} END {print "Total CPU Usage: " sum "%"}'
Total CPU Usage: 0.2%
