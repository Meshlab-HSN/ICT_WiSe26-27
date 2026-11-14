mah@mah:~$ sed -i 's/root/ROOT/g' processes.log
mah@mah:~$ cat /etc/passwd > users.txt
mah@mah:~$ sed -i '/nologin/d' users.txt
mah@mah:~$ awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd
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
User pollinate has UID 100 and GID 1
User polkitd has UID 988 and GID 988
User syslog has UID 101 and GID 103
User uuidd has UID 102 and GID 104
User tcpdump has UID 986 and GID 986
User landscape has UID 103 and GID 106
User fwupd-refresh has UID 985 and GID 985
User mah has UID 1000 and GID 1000
User sshd has UID 984 and GID 65534
User iperf3 has UID 104 and GID 107
mah@mah:~$ awk 'NR > 1 {print "User: " $1 ", Process: " $11}' processes.log
User: ROOT, Process: /usr/lib/systemd/systemd
User: ROOT, Process: [kthreadd]
User: ROOT, Process: [pool_workqueue_release]
User: ROOT, Process: [kworker/R-rcu_gp]
User: ROOT, Process: [kworker/R-sync_wq]
User: ROOT, Process: [kworker/R-kvfree_rcu_reclaim]
User: ROOT, Process: [kworker/R-slub_flushwq]
User: ROOT, Process: [kworker/R-netns]
User: ROOT, Process: [kworker/0:0H-kblockd]
User: ROOT, Process: [kworker/u8:0-flush-252:0]
User: ROOT, Process: [kworker/R-mm_percpu_wq]
User: ROOT, Process: [ksoftirqd/0]
User: ROOT, Process: [rcu_preempt]
User: ROOT, Process: [rcu_exp_par_gp_kthread_worker/0]
User: ROOT, Process: [rcu_exp_gp_kthread_worker]
User: ROOT, Process: [migration/0]
User: ROOT, Process: [idle_inject/0]
User: ROOT, Process: [cpuhp/0]
User: ROOT, Process: [cpuhp/1]
User: ROOT, Process: [idle_inject/1]
User: ROOT, Process: [migration/1]
User: ROOT, Process: [ksoftirqd/1]
User: ROOT, Process: [kworker/1:0-events]
User: ROOT, Process: [kworker/1:0H-kblockd]
User: ROOT, Process: [kdevtmpfs]
User: ROOT, Process: [kworker/R-inet_frag_wq]
User: ROOT, Process: [rcu_tasks_kthread]
User: ROOT, Process: [rcu_tasks_rude_kthread]
User: ROOT, Process: [kauditd]
User: ROOT, Process: [khungtaskd]
User: ROOT, Process: [oom_reaper]
User: ROOT, Process: [kworker/u8:1-events_unbound]
User: ROOT, Process: [kworker/R-writeback]
User: ROOT, Process: [kcompactd0]
User: ROOT, Process: [ksmd]
User: ROOT, Process: [khugepaged]
User: ROOT, Process: [kworker/R-kblockd]
User: ROOT, Process: [kworker/R-blkcg_punt_bio]
User: ROOT, Process: [kworker/R-kintegrityd]
User: ROOT, Process: [kworker/1:1-events]
User: ROOT, Process: [pr/ttyAMA-1]
User: ROOT, Process: [kworker/R-tpm_dev_wq]
User: ROOT, Process: [kworker/R-ata_sff]
User: ROOT, Process: [kworker/R-md_bitmap]
User: ROOT, Process: [kworker/R-md_llbitmap_io]
User: ROOT, Process: [kworker/R-md_llbitmap_unplug]
User: ROOT, Process: [kworker/R-edac-poller]
User: ROOT, Process: [kworker/R-devfreq_wq]
User: ROOT, Process: [watchdogd]
User: ROOT, Process: [kworker/R-quota_events_unbound]
User: ROOT, Process: [kswapd0]
User: ROOT, Process: [kworker/u8:2-events_unbound]
User: ROOT, Process: [ecryptfs-kthread]
User: ROOT, Process: [kworker/R-kthrotld]
User: ROOT, Process: [irq/49-ACPI:Ged]
User: ROOT, Process: [kworker/R-acpi_thermal_pm]
User: ROOT, Process: [kworker/R-mld]
User: ROOT, Process: [kworker/R-ipv6_addrconf]
User: ROOT, Process: [kworker/R-kstrp]
User: ROOT, Process: [kworker/u9:0]
User: ROOT, Process: [kworker/R-charger_manager]
User: ROOT, Process: [hwrng]
User: ROOT, Process: [kworker/u8:3-events_unbound]
User: ROOT, Process: [card0-crtc0]
User: ROOT, Process: [kworker/R-kdmflush/252:0]
User: ROOT, Process: [kworker/1:1H-kblockd]
User: ROOT, Process: [kworker/0:1H-kblockd]
User: ROOT, Process: [scsi_eh_0]
User: ROOT, Process: [kworker/R-scsi_tmf_0]
User: ROOT, Process: [usb-storage]
User: ROOT, Process: [kworker/R-uas]
User: ROOT, Process: [kworker/0:4-events]
User: ROOT, Process: [jbd2/dm-0-8]
User: ROOT, Process: [kworker/R-ext4-rsv-conversion]
User: ROOT, Process: [psimon]
User: ROOT, Process: /usr/lib/systemd/systemd-journald
User: ROOT, Process: [kworker/R-kmpathd]
User: ROOT, Process: [kworker/R-kmpath_handlerd]
User: ROOT, Process: /usr/sbin/multipathd
User: systemd+, Process: /usr/lib/systemd/systemd-resolved
User: ROOT, Process: /usr/lib/systemd/systemd-udevd
User: ROOT, Process: [psimon]
User: ROOT, Process: [kworker/1:4-events]
User: ROOT, Process: [jbd2/vda2-8]
User: ROOT, Process: [kworker/R-ext4-rsv-conversion]
User: ROOT, Process: [kworker/0:5-events]
User: systemd+, Process: /usr/lib/systemd/systemd-networkd
User: ROOT, Process: [kworker/R-cfg80211]
User: ROOT, Process: /sbin/klogd
User: ROOT, Process: /sbin/syslogd
User: ROOT, Process: /bin/sh
User: message+, Process: @dbus-daemon
User: iperf3, Process: /usr/bin/iperf3
User: ROOT, Process: /usr/bin/python3
User: polkitd, Process: /usr/lib/polkit-1/polkitd
User: ROOT, Process: /usr/lib/systemd/systemd-logind
User: ROOT, Process: /usr/libexec/udisks2/udisksd
User: ROOT, Process: /usr/sbin/cron
User: ROOT, Process: /usr/bin/python3
User: _chrony, Process: /usr/sbin/chronyd
User: ROOT, Process: /usr/sbin/agetty
User: _chrony, Process: /usr/sbin/chronyd
User: ROOT, Process: /usr/sbin/ModemManager
User: ROOT, Process: login
User: mah, Process: /usr/lib/systemd/systemd
User: mah, Process: (sd-pam)
User: mah, Process: -bash
User: ROOT, Process: sshd:
User: ROOT, Process: sshd-session:
User: mah, Process: sshd-session:
User: mah, Process: -bash
User: ROOT, Process: [kworker/u8:4]
User: ROOT, Process: [kworker/0:0-events]
User: mah, Process: ps
User: 114, Process: 
mah@mah:~$ awk 'NR > 1 {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log
Total CPU usage: 100.30%
