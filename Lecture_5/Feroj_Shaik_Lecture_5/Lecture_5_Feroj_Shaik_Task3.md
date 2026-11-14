USERS.TXT - FINAL OUTPUT 


root:x:o:o:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
feroj:x:1000:1000:feroj-shaik:/home/feroj:/bin/bash
mysql:x:982;982:MariaDB Server:/nonexistent:/bin/false

AWK -USERNAME, UID AND GID - OUTPUT

User root has UID 0 and GID 0
User daemon has UID 1 and GID 1
User bin has UID 2 and GID 2
User sys has UID 3 and GID 3
User sync has UID 4 and GID 65534
User games has UID 5 and GID 60
User feroj has UID 1000 and GID 1000
User mysql has UID 982 and GID 982

COMPLETE AWK OUTPUT -USERNAME, UID AND GID
-eawk -F: {print "User " $1 " has UID " $3 " and GID " $4} /etc/passwd
ROOT /usr/lib/systemd/systemd
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_gp]
ROOT [kworker/R-sync_wq]
ROOT [kworker/R-kvfree_rcu_reclaim]
ROOT [kworker/R-slub_flushwq]
ROOT [kworker/R-netns]
ROOT [kworker/0:0-cgroup_free]
ROOT [kworker/0:0H-kblockd]
ROOT [kworker/0:1-cgroup_free]
ROOT [kworker/u8:0-ipv6_addrconf]
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
ROOT [kworker/1:0-events]
ROOT [kworker/1:0H-kblockd]
ROOT [kworker/u9:0-events_power_efficient]
ROOT [kworker/u10:0-writeback]
ROOT [kdevtmpfs]
ROOT [kworker/R-inet_frag_wq]
ROOT [rcu_tasks_kthread]
ROOT [rcu_tasks_rude_kthread]
ROOT [kauditd]
ROOT [khungtaskd]
ROOT [oom_reaper]
ROOT [kworker/u9:1-loop2]
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
ROOT [kworker/u9:2-flush-252:0]
ROOT [kswapd0]
ROOT [ecryptfs-kthread]
ROOT [kworker/R-kthrotld]
ROOT [kworker/R-acpi_thermal_pm]
ROOT [kworker/u10:1-events_unbound]
ROOT [scsi_eh_0]
ROOT [kworker/R-scsi_tmf_0]
ROOT [scsi_eh_1]
ROOT [kworker/R-scsi_tmf_1]
ROOT [kworker/u10:2-events_unbound]
ROOT [kworker/u10:3-pm]
ROOT [kworker/u10:4]
ROOT [kworker/u10:5]
ROOT [kworker/0:1H-kblockd]
ROOT [kworker/1:1H-kblockd]
ROOT [kworker/0:2-events]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/u8:1-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/1:2-cgroup_free]
ROOT [kworker/u11:0]
ROOT [kworker/u12:0]
ROOT [kworker/u13:0]
ROOT [kworker/R-charger_manager]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_tmf_2]
ROOT [kworker/R-kdmflush/252:0]
ROOT [kworker/u9:3-flush-252:0]
ROOT [jbd2/dm-0-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [psimon]
ROOT /usr/lib/systemd/systemd-journald
ROOT [kworker/R-kmpathd]
ROOT [kworker/R-kmpath_handlerd]
ROOT /usr/sbin/multipathd
ROOT [kworker/0:3-events]
systemd+ /usr/lib/systemd/systemd-resolved
ROOT /usr/lib/systemd/systemd-udevd
ROOT [psimon]
ROOT [kworker/u9:4-flush-252:0]
ROOT [kworker/0:2H]
ROOT [irq/18-vmwgfx]
ROOT [kworker/R-ttm]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [kworker/1:3-events]
systemd+ /usr/lib/systemd/systemd-networkd
ROOT [kworker/R-cfg80211]
ROOT /bin/sh
message+ @dbus-daemon
ROOT /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
ROOT /usr/lib/snapd/snapd
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/udisks2/udisksd
ROOT sshd:
syslog /usr/sbin/rsyslogd
_chrony /usr/sbin/chronyd
ROOT /usr/bin/python3
ROOT /usr/sbin/ModemManager
_chrony /usr/sbin/chronyd
mysql /usr/sbin/mariadbd
ROOT /usr/sbin/apache2
ROOT /usr/sbin/cron
ROOT login
www-data /usr/sbin/apache2
www-data /usr/sbin/apache2
ROOT [kworker/1:2H-kblockd]
feroj /usr/lib/systemd/systemd
feroj (sd-pam)
feroj -bash
feroj ps
TOTAL CPU USAGE -AWK RESULT
Total CPU usage: 6.60%
