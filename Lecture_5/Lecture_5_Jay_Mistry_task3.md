Script started on 2026-11-15 23:22:53+00:00

vboxuser@ubuntu:~$ sed -i 's/root/ROOT/g' processes.log


vboxuser@ubuntu:~$ cat /etc/passwd > users.txt


vboxuser@ubuntu:~$ ls

ICT_WiSe26-27  Lecture_5_Jay_Mistry_task2.md  Lecture_5_Jay_Mistry_task3.md  README.md  api.sh  fd_err.log  fd_out.log  lec2_task2  processes.log  users.txt


vboxuser@ubuntu:~$ grep -v 'nologin' users.txt > temp.txt


vboxuser@ubuntu:~$ mv temp.txt users.txt


vboxuser@ubuntu:~$ ls

ICT_WiSe26-27  Lecture_5_Jay_Mistry_task2.md  Lecture_5_Jay_Mistry_task3.md  README.md  api.sh  fd_err.log  fd_out.log  lec2_task2  processes.log  users.txt


vboxuser@ubuntu:~$ awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd

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


vboxuser@ubuntu:~$ awk '{print $1, $11}' processes.log

USER COMMAND
ROOT /usr/lib/systemd/systemd
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_gp]
ROOT [kworker/R-sync_wq]
ROOT [kworker/R-kvfree_rcu_reclaim]
ROOT [kworker/R-slub_flushwq]
ROOT [kworker/R-netns]
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
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/0:1H]
ROOT [kworker/R-kstrp]
ROOT [kworker/u9:0]
ROOT [kworker/R-charger_manager]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_tmf_2]
ROOT [kworker/0:2H-kblockd]
ROOT [kworker/1:1H-kblockd]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [kworker/R-kmpathd]
ROOT [kworker/R-kmpath_handlerd]
ROOT [kworker/R-cfg80211]
ROOT /bin/sh
message+ @dbus-daemon
ROOT /usr/bin/python3
ROOT /usr/lib/snapd/snapd
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/bin/python3
_chrony /usr/sbin/chronyd
ROOT [irq/18-vmwgfx]
ROOT [kworker/R-ttm]
_chrony /usr/sbin/chronyd
ROOT login
vboxuser /usr/lib/systemd/systemd
vboxuser (sd-pam)
vboxuser -bash
syslog /usr/sbin/rsyslogd
ROOT /usr/sbin/cron
ROOT /usr/lib/systemd/systemd-journald
ROOT /usr/sbin/multipathd
systemd+ /usr/lib/systemd/systemd-resolved
ROOT /usr/libexec/udisks2/udisksd
polkitd /usr/lib/polkit-1/polkitd
ROOT /usr/libexec/upowerd
ROOT /usr/lib/systemd/systemd-udevd
ROOT /usr/sbin/ModemManager
ROOT [psimon]
systemd+ /usr/lib/systemd/systemd-networkd
ROOT [psimon]
ROOT [kworker/1:2-events]
ROOT [kworker/u8:1-flush-8:0]
ROOT [kworker/0:0-events]
ROOT [kworker/u8:0-events_unbound]
ROOT [kworker/u8:2-events_unbound]
ROOT [kworker/0:2-events]
ROOT [kworker/u8:3-events_unbound]
ROOT [kworker/1:0-cgroup_free]
ROOT [kworker/0:1]
vboxuser ps
107


vboxuser@ubuntu:~$ awk 'NR > 1 {sum += $3} END {print "Total CPU usage: ", sum "%"}' processes.log

Total CPU usage:  0.3%


vboxuser@ubuntu:~$ exit

exit

Script done on 2026-11-15 23:34:36+00:00
