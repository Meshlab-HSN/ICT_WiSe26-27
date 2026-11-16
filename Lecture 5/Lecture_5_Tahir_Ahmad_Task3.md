# Lecture 5 - Task 3
$ sed s/root/ROOT/g processes.log
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.2  0.4  25008 16152 ?        Ss   15:13   0:03 /usr/lib/systemd/systemd --switched-ROOT --system --deserialize=56
ROOT           2  0.0  0.0      0     0 ?        S    15:13   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    15:13   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-netns]
ROOT          10  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/0:0H-kblockd]
ROOT          11  0.0  0.0      0     0 ?        I    15:13   0:00 [kworker/0:1-events]
ROOT          12  0.0  0.0      0     0 ?        I    15:13   0:00 [kworker/u8:0-ipv6_addrconf]
ROOT          13  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-mm_percpu_wq]
ROOT          14  0.0  0.0      0     0 ?        S    15:13   0:00 [ksoftirqd/0]
ROOT          15  0.0  0.0      0     0 ?        I    15:13   0:00 [rcu_preempt]
ROOT          16  0.0  0.0      0     0 ?        S    15:13   0:00 [rcu_exp_par_gp_kthread_worker/0]
ROOT          17  0.0  0.0      0     0 ?        S    15:13   0:00 [rcu_exp_gp_kthread_worker]
ROOT          18  0.0  0.0      0     0 ?        S    15:13   0:00 [migration/0]
ROOT          19  0.0  0.0      0     0 ?        S    15:13   0:00 [kprobe-optimizer]
ROOT          20  0.0  0.0      0     0 ?        S    15:13   0:00 [idle_inject/0]
ROOT          21  0.0  0.0      0     0 ?        S    15:13   0:00 [cpuhp/0]
ROOT          22  0.0  0.0      0     0 ?        S    15:13   0:00 [cpuhp/1]
ROOT          23  0.0  0.0      0     0 ?        S    15:13   0:00 [idle_inject/1]
ROOT          24  0.0  0.0      0     0 ?        S    15:13   0:00 [migration/1]
ROOT          25  0.0  0.0      0     0 ?        S    15:13   0:00 [ksoftirqd/1]
ROOT          27  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/1:0H-kblockd]
ROOT          29  0.1  0.0      0     0 ?        I    15:13   0:01 [kworker/u10:0-ext4-rsv-conversion]
ROOT          30  0.0  0.0      0     0 ?        S    15:13   0:00 [kdevtmpfs]
ROOT          31  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-inet_frag_wq]
ROOT          32  0.0  0.0      0     0 ?        I    15:13   0:00 [rcu_tasks_kthread]
ROOT          33  0.0  0.0      0     0 ?        I    15:13   0:00 [rcu_tasks_rude_kthread]
ROOT          34  0.0  0.0      0     0 ?        S    15:13   0:00 [kauditd]
ROOT          35  0.0  0.0      0     0 ?        S    15:13   0:00 [khungtaskd]
ROOT          36  0.0  0.0      0     0 ?        S    15:13   0:00 [oom_reaper]
ROOT          37  0.0  0.0      0     0 ?        I    15:13   0:00 [kworker/u9:1-events_unbound]
ROOT          38  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-writeback]
ROOT          39  0.0  0.0      0     0 ?        I    15:13   0:00 [kworker/u9:2-events_unbound]
ROOT          40  0.0  0.0      0     0 ?        S    15:13   0:00 [kcompactd0]
ROOT          41  0.0  0.0      0     0 ?        SN   15:13   0:00 [ksmd]
ROOT          42  0.0  0.0      0     0 ?        SN   15:13   0:00 [khugepaged]
ROOT          43  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-kblockd]
ROOT          44  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-blkcg_punt_bio]
ROOT          45  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-kintegrityd]
ROOT          46  0.0  0.0      0     0 ?        S    15:13   0:00 [irq/9-acpi]
ROOT          48  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-tpm_dev_wq]
ROOT          49  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-ata_sff]
ROOT          50  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-md_bitmap]
ROOT          51  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-md_llbitmap_io]
ROOT          52  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-md_llbitmap_unplug]
ROOT          53  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-edac-poller]
ROOT          54  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-devfreq_wq]
ROOT          55  0.0  0.0      0     0 ?        S    15:13   0:00 [watchdogd]
ROOT          56  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-quota_events_unbound]
ROOT          57  0.0  0.0      0     0 ?        I    15:13   0:00 [kworker/u10:1-flush-8:0]
ROOT          58  0.0  0.0      0     0 ?        S    15:13   0:00 [kswapd0]
ROOT          59  0.0  0.0      0     0 ?        S    15:13   0:00 [ecryptfs-kthread]
ROOT          60  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-kthrotld]
ROOT          61  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-acpi_thermal_pm]
ROOT          63  0.0  0.0      0     0 ?        I    15:13   0:00 [kworker/u10:3-events_unbound]
ROOT          64  0.0  0.0      0     0 ?        S    15:13   0:00 [scsi_eh_0]
ROOT          65  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-scsi_tmf_0]
ROOT          66  0.0  0.0      0     0 ?        S    15:13   0:00 [scsi_eh_1]
ROOT          67  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-scsi_tmf_1]
ROOT          72  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-mld]
ROOT          73  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-ipv6_addrconf]
ROOT          74  1.5  0.0      0     0 ?        I    15:13   0:16 [kworker/1:2-events]
ROOT          75  0.0  0.0      0     0 ?        I    15:13   0:00 [kworker/u8:1-ipv6_addrconf]
ROOT          76  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-kstrp]
ROOT          78  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/u11:0]
ROOT          79  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/u12:0]
ROOT          80  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/u13:0]
ROOT          91  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-charger_manager]
ROOT         301  0.0  0.0      0     0 ?        S    15:13   0:00 [scsi_eh_2]
ROOT         302  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-scsi_tmf_2]
ROOT         303  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/1:1H-kblockd]
ROOT         337  0.0  0.0      0     0 ?        S    15:13   0:00 [jbd2/sda2-8]
ROOT         338  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-ext4-rsv-conversion]
ROOT         431  0.0  0.0      0     0 ?        S    15:13   0:00 [psimon]
ROOT         438  0.0  0.4  50416 17116 ?        S<s  15:13   0:00 /usr/lib/systemd/systemd-journald
ROOT         475  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-kmpathd]
ROOT         477  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-kmpath_handlerd]
ROOT         481  0.0  0.2 279496  9648 ?        SLsl 15:13   0:00 /usr/sbin/multipathd -d -s
ROOT         493  0.0  0.0      0     0 ?        I    15:13   0:00 [kworker/u9:3-ext4-rsv-conversion]
systemd+     495  0.0  0.4  22644 14752 ?        Ss   15:13   0:00 /usr/lib/systemd/systemd-resolved
ROOT         503  0.0  0.4  41496 15524 ?        Ss   15:13   0:00 /usr/lib/systemd/systemd-udevd
ROOT         506  0.0  0.0      0     0 ?        S    15:13   0:00 [psimon]
systemd+     675  0.0  0.3  21492 12268 ?        Ss   15:13   0:00 /usr/lib/systemd/systemd-networkd
ROOT         731  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-cfg80211]
ROOT         816  0.0  0.0   2888  2012 ?        Ss   15:13   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
ROOT         817  0.0  0.0   7060  3392 ?        Ss   15:13   0:00 /usr/sbin/cron -f -P
message+     818  0.0  0.1   9020  5740 ?        Ss   15:13   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
ROOT         825  0.0  0.8  46744 30172 ?        Ss   15:13   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      826  0.0  0.2 306448  8520 ?        Ssl  15:13   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
ROOT         829  0.0  1.2 1886136 42548 ?       Ssl  15:13   0:00 /usr/lib/snapd/snapd
ROOT         832  0.0  0.2  18600  9944 ?        Ss   15:13   0:00 /usr/lib/systemd/systemd-logind
ROOT         834  0.0  0.4 543352 15232 ?        Ssl  15:13   0:00 /usr/libexec/udisks2/udisksd
ROOT         870  0.0  0.1   8756  5616 ?        Ss   15:13   0:00 login -- tahir_labeeb
ROOT         871  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/0:2H]
_chrony      892  0.0  0.1  20556  6404 ?        S    15:13   0:00 /usr/sbin/chronyd -n -F 1
_chrony      910  0.0  0.0  12096  2436 ?        S    15:13   0:00 /usr/sbin/chronyd -n -F 1
ROOT         931  0.0  0.9 126116 32868 ?        Ssl  15:13   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
ROOT         933  0.0  0.4 391612 14064 ?        Ssl  15:13   0:00 /usr/sbin/ModemManager
syslog       935  0.0  0.1 220552  6244 ?        Ssl  15:13   0:00 /usr/sbin/rsyslogd -n -iNONE
ROOT        1000  0.0  0.0      0     0 ?        S    15:13   0:00 [irq/18-vmwgfx]
ROOT        1002  0.0  0.0      0     0 ?        I<   15:13   0:00 [kworker/R-ttm]
ROOT        1236  0.0  0.0      0     0 ?        I    15:14   0:00 [kworker/1:4-cgroup_release]
tahir_l+    1238  0.0  0.3  22036 12976 ?        Ss   15:14   0:00 /usr/lib/systemd/systemd --user
tahir_l+    1251  0.0  0.1  23040  4092 ?        S    15:14   0:00 (sd-pam)
tahir_l+    1276  0.0  0.1   8856  5852 tty1     Ss   15:14   0:00 -bash
ROOT        1356  0.0  0.0      0     0 ?        I    15:20   0:00 [kworker/0:0]
ROOT        1515  0.0  0.0      0     0 ?        I    15:26   0:00 [kworker/u10:2-events_power_efficient]
ROOT        5825  0.0  0.0      0     0 ?        I    15:28   0:00 [kworker/u9:0-ext4-rsv-conversion]
ROOT        5840  0.0  0.0      0     0 ?        I    15:28   0:00 [kworker/1:0-cgroup_free]
ROOT        5841  0.2  1.3 365892 46076 ?        Ssl  15:28   0:00 /usr/libexec/fwupd/fwupd
ROOT        5850  0.2  0.3 318636 11448 ?        Ssl  15:28   0:00 /usr/libexec/upowerd
tahir_l+    5934  0.0  0.1   9764  4684 tty1     R+   15:31   0:00 ps aux
115 processes are running
$ cat users.txt
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
tahir_labeeb:x:1000:1000:tahir_labeeb:/home/tahir_labeeb:/bin/bash
$ awk -F: formatted users
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
User tahir_labeeb has UID 1000 and GID 1000
$ awk username and process name
root /usr/lib/systemd/systemd
root [kthreadd]
root [pool_workqueue_release]
root [kworker/R-rcu_gp]
root [kworker/R-sync_wq]
root [kworker/R-kvfree_rcu_reclaim]
root [kworker/R-slub_flushwq]
root [kworker/R-netns]
root [kworker/0:0H-kblockd]
root [kworker/0:1-events]
root [kworker/u8:0-ipv6_addrconf]
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
root [kworker/1:0H-kblockd]
root [kworker/u10:0-ext4-rsv-conversion]
root [kdevtmpfs]
root [kworker/R-inet_frag_wq]
root [rcu_tasks_kthread]
root [rcu_tasks_rude_kthread]
root [kauditd]
root [khungtaskd]
root [oom_reaper]
root [kworker/u9:1-events_unbound]
root [kworker/R-writeback]
root [kworker/u9:2-events_unbound]
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
root [kworker/u10:1-flush-8:0]
root [kswapd0]
root [ecryptfs-kthread]
root [kworker/R-kthrotld]
root [kworker/R-acpi_thermal_pm]
root [kworker/u10:3-events_unbound]
root [scsi_eh_0]
root [kworker/R-scsi_tmf_0]
root [scsi_eh_1]
root [kworker/R-scsi_tmf_1]
root [kworker/R-mld]
root [kworker/R-ipv6_addrconf]
root [kworker/1:2-events]
root [kworker/u8:1-ipv6_addrconf]
root [kworker/R-kstrp]
root [kworker/u11:0]
root [kworker/u12:0]
root [kworker/u13:0]
root [kworker/R-charger_manager]
root [scsi_eh_2]
root [kworker/R-scsi_tmf_2]
root [kworker/1:1H-kblockd]
root [jbd2/sda2-8]
root [kworker/R-ext4-rsv-conversion]
root [psimon]
root /usr/lib/systemd/systemd-journald
root [kworker/R-kmpathd]
root [kworker/R-kmpath_handlerd]
root /usr/sbin/multipathd
root [kworker/u9:3-ext4-rsv-conversion]
systemd+ /usr/lib/systemd/systemd-resolved
root /usr/lib/systemd/systemd-udevd
root [psimon]
systemd+ /usr/lib/systemd/systemd-networkd
root [kworker/R-cfg80211]
root /bin/sh
root /usr/sbin/cron
message+ @dbus-daemon
root /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
root /usr/lib/snapd/snapd
root /usr/lib/systemd/systemd-logind
root /usr/libexec/udisks2/udisksd
root login
root [kworker/0:2H]
_chrony /usr/sbin/chronyd
_chrony /usr/sbin/chronyd
root /usr/bin/python3
root /usr/sbin/ModemManager
syslog /usr/sbin/rsyslogd
root [irq/18-vmwgfx]
root [kworker/R-ttm]
root [kworker/1:4-cgroup_release]
tahir_l+ /usr/lib/systemd/systemd
tahir_l+ (sd-pam)
tahir_l+ -bash
root [kworker/0:0]
root [kworker/u10:2-events_power_efficient]
root [kworker/u9:0-ext4-rsv-conversion]
root [kworker/1:0-cgroup_free]
root /usr/libexec/fwupd/fwupd
root /usr/libexec/upowerd
tahir_l+ ps
$ awk CPU sum
Total CPU usage: 2.2%
