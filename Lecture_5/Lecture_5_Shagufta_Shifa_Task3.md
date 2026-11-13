```
$ head -n 5 processes.log
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.3  24828 16212 ?        Ss   Nov12   0:12 /usr/lib/systemd/systemd --system --deserialize=77
root           2  0.0  0.0      0     0 ?        S    Nov12   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    Nov12   0:00 [pool_workqueue_release]
root           4  0.0  0.0      0     0 ?        I<   Nov12   0:00 [kworker/R-rcu_gp]
```

```
$ cat users.txt
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
shaguftashifa:x:1000:1000:shaguftashifa:/home/shaguftashifa:/bin/bash
vboxadd:x:999:1::/var/run/vboxadd:/bin/false
```

```
$ awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd
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
User shaguftashifa has UID 1000 and GID 1000
User vboxadd has UID 999 and GID 1
User sshd has UID 981 and GID 65534
```

```
$ awk 'NR>1 && NF>=11 {print $1, $11}' processes.log
root /usr/lib/systemd/systemd
root [kthreadd]
root [pool_workqueue_release]
root [kworker/R-rcu_gp]
root [kworker/R-sync_wq]
root [kworker/R-kvfree_rcu_reclaim]
root [kworker/R-slub_flushwq]
root [kworker/R-netns]
root [kworker/0:0H-kblockd]
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
root [kworker/R-mld]
root [kworker/R-ipv6_addrconf]
root [kworker/R-kstrp]
root [kworker/u5:0]
root [kworker/R-charger_manager]
root [kworker/0:2H-kblockd]
root [kworker/R-iprt-VBoxWQueue]
root [scsi_eh_2]
root [kworker/R-scsi_tmf_2]
root [jbd2/sda2-8]
root [kworker/R-ext4-rsv-conversion]
root [kworker/R-kmpathd]
root [kworker/R-kmpath_handlerd]
root [kworker/R-cfg80211]
root /bin/sh
message+ @dbus-daemon
root /usr/bin/python3
root /usr/lib/snapd/snapd
root /usr/lib/systemd/systemd-logind
_chrony /usr/sbin/chronyd
root /usr/bin/python3
_chrony /usr/sbin/chronyd
root /usr/sbin/VBoxService
root [irq/18-vmwgfx]
root [kworker/R-ttm]
shaguft+ /usr/lib/systemd/systemd
shaguft+ (sd-pam)
root /usr/sbin/agetty
root login
shaguft+ -bash
root sshd:
syslog /usr/sbin/rsyslogd
root [psimon]
root /usr/sbin/cron
root /usr/sbin/multipathd
root /usr/lib/systemd/systemd-journald
polkitd /usr/lib/polkit-1/polkitd
systemd+ /usr/lib/systemd/systemd-resolved
root /usr/libexec/fwupd/fwupd
root /usr/libexec/udisks2/udisksd
root /usr/libexec/upowerd
root /usr/lib/systemd/systemd-udevd
root /usr/sbin/ModemManager
root [psimon]
systemd+ /usr/lib/systemd/systemd-networkd
root [kworker/0:2-cgroup_free]
root [kworker/u4:2-events_unbound]
root [kworker/u4:1-events_unbound]
root [kworker/u4:0-ext4-rsv-conversion]
root [kworker/0:1-events]
root sshd-session:
shaguft+ sshd-session:
shaguft+ -bash
root [kworker/u4:3-events_unbound]
shaguft+ ps
```

```
$ awk 'NR>1 && NF>=11 {sum += $3} END {print "Total CPU usage: " sum "%"}' processes.log
Total CPU usage: 3.1%
```

