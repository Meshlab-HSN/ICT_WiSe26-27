amman-arshad@ict:~/Lecture_5$ ps aux > processes.log
amman-arshad@ict:~/Lecture_5$ sed -i 's/\broot\b/ROOT/g' processes.log
amman-arshad@ict:~/Lecture_5$ cp /etc/passwd users.txt && sed -i '/nologin/d' users.txt
amman-arshad@ict:~/Lecture_5$ mv users.txt ~/Lecture_5/
mv: 'users.txt' and '/home/amman-arshad/Lecture_5/users.txt' are the same file
amman-arshad@ict:~/Lecture_5$ awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd
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
User amman-arshad has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534
amman-arshad@ict:~/Lecture_5$ awk '{print $1, $11}' ~/Lecture_5/processes.log
USER COMMAND
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
ROOT [cpuhp/4]
ROOT [idle_inject/4]
ROOT [migration/4]
ROOT [ksoftirqd/4]
ROOT [kworker/4:0H-kblockd]
ROOT [cpuhp/5]
ROOT [idle_inject/5]
ROOT [migration/5]
ROOT [ksoftirqd/5]
ROOT [kworker/5:0H-kblockd]
ROOT [cpuhp/6]
ROOT [idle_inject/6]
ROOT [migration/6]
ROOT [ksoftirqd/6]
ROOT [kworker/6:0H-kblockd]
ROOT [cpuhp/7]
ROOT [idle_inject/7]
ROOT [migration/7]
ROOT [ksoftirqd/7]
ROOT [kworker/7:0H-kblockd]
ROOT [kdevtmpfs]
ROOT [kworker/R-inet_frag_wq]
ROOT [rcu_tasks_kthread]
ROOT [rcu_tasks_rude_kthread]
ROOT [kauditd]
ROOT [khungtaskd]
ROOT [oom_reaper]
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
ROOT [kswapd0]
ROOT [ecryptfs-kthread]
ROOT [kworker/R-kthrotld]
ROOT [kworker/R-acpi_thermal_pm]
ROOT [scsi_eh_0]
ROOT [kworker/R-scsi_tmf_0]
ROOT [scsi_eh_1]
ROOT [kworker/R-scsi_tmf_1]
ROOT [kworker/2:1H]
ROOT [kworker/7:1H-kblockd]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/5:1-events]
ROOT [kworker/u33:0]
ROOT [kworker/R-charger_manager]
ROOT [kworker/2:2-mm_percpu_wq]
ROOT [kworker/7:2-events]
ROOT [kworker/4:1H-kblockd]
ROOT [kworker/0:1H-kblockd]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_tmf_2]
ROOT [kworker/6:1H-kblockd]
ROOT [kworker/R-kdmflush/252:0]
ROOT [jbd2/dm-0-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [kworker/R-kmpathd]
ROOT [kworker/R-kmpath_handlerd]
ROOT [kworker/3:1H-kblockd]
ROOT [irq/18-vmwgfx]
ROOT [kworker/R-ttm]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-rsv-conversion]
message+ @dbus-daemon
ROOT /usr/bin/python3
ROOT /usr/lib/systemd/systemd-logind
ROOT [kworker/R-cfg8021
1]
ROOT [kworker/3:3-cgroup_release]
ROOT /usr/bin/python3
ROOT login
ROOT [kworker/1:2H-kblockd]
amman-a+ /usr/lib/systemd/systemd
amman-a+ (sd-pam)
amman-a+ -bash
ROOT sshd-session:
amman-a+ sshd-session:
amman-a+ -bash
ROOT [kworker/1:0-cgroup_free]
ROOT [kworker/6:2-events]
ROOT [kworker/u32:1-events_power_efficient]
ROOT [kworker/u32:0-events_unbound]
ROOT [kworker/1:2-events]
ROOT [kworker/u32:3-events_unbound]
ROOT [kworker/4:0-events]
ROOT [kworker/5:0-events]
ROOT [kworker/7:1-events]
ROOT [kworker/0:1-cgroup_free]
ROOT [kworker/u32:4-events_power_efficient]
ROOT [kworker/3:2-events]
ROOT /usr/sbin/cron
ROOT /bin/sh
ROOT /usr/sbin/multipathd
ROOT /usr/libexec/fwupd/fwupd
_chrony /usr/sbin/chronyd
_chrony /usr/sbin/chronyd
polkitd /usr/lib/polkit-1/polkitd
ROOT sshd:
systemd+ /usr/lib/systemd/systemd-resolved
ROOT /usr/libexec/udisks2/udisksd
syslog /usr/sbin/rsyslogd
ROOT /usr/lib/systemd/systemd-journald
ROOT /usr/lib/systemd/systemd-udevd
ROOT /usr/libexec/upowerd
ROOT /usr/sbin/ModemManager
ROOT [psimon]
systemd+ /usr/lib/systemd/systemd-networkd
ROOT /usr/lib/snapd/snapd
ROOT [psimon]
ROOT [kworker/5:2H-kblockd]
ROOT [kworker/1:1H]
ROOT [kworker/4:1]
ROOT [kworker/2:3-cgroup_free]
ROOT [kworker/6:1]
amman-a+ ps
amman-arshad@ict:~/Lecture_5$ awk 'NR>1 {sum += $3} END {print "Total CPU usage: " sum "%"}' ~/Lecture_5/processes.log
Total CPU usage: 101.1%


