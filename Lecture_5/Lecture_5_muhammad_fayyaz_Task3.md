# Lecture 5 - Task 3
## sed 1: sed "s/root/ROOT/g" processes.log
```
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.8  0.5  26816 17672 ?        Ss   09:32   0:00 /usr/lib/systemd/systemd --switched-ROOT --system --deserialize=51
ROOT           2  0.0  0.0      0     0 ?        S    09:32   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    09:32   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-netns]
ROOT           9  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/0:0-events]
ROOT          10  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/0:0H-kblockd]
ROOT          11  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/0:1-events]
ROOT          12  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/u16:0-flush-252:0]
ROOT          13  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-mm_percpu_wq]
ROOT          14  0.0  0.0      0     0 ?        S    09:32   0:00 [ksoftirqd/0]
ROOT          15  0.0  0.0      0     0 ?        I    09:32   0:00 [rcu_preempt]
ROOT          16  0.0  0.0      0     0 ?        S    09:32   0:00 [rcu_exp_par_gp_kthread_worker/0]
ROOT          17  0.0  0.0      0     0 ?        S    09:32   0:00 [rcu_exp_gp_kthread_worker]
ROOT          18  0.0  0.0      0     0 ?        S    09:32   0:00 [migration/0]
ROOT          19  0.0  0.0      0     0 ?        S    09:32   0:00 [idle_inject/0]
ROOT          20  0.0  0.0      0     0 ?        S    09:32   0:00 [cpuhp/0]
ROOT          21  0.0  0.0      0     0 ?        S    09:32   0:00 [cpuhp/1]
ROOT          22  0.0  0.0      0     0 ?        S    09:32   0:00 [idle_inject/1]
ROOT          23  0.0  0.0      0     0 ?        S    09:32   0:00 [migration/1]
ROOT          24  0.0  0.0      0     0 ?        S    09:32   0:00 [ksoftirqd/1]
ROOT          25  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/1:0-mm_percpu_wq]
ROOT          26  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/1:0H-kblockd]
ROOT          27  0.0  0.0      0     0 ?        S    09:32   0:00 [cpuhp/2]
ROOT          28  0.0  0.0      0     0 ?        S    09:32   0:00 [idle_inject/2]
ROOT          29  0.0  0.0      0     0 ?        S    09:32   0:00 [migration/2]
ROOT          30  0.0  0.0      0     0 ?        S    09:32   0:00 [ksoftirqd/2]
ROOT          31  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/2:0-events]
ROOT          32  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/2:0H-kblockd]
ROOT          33  0.0  0.0      0     0 ?        S    09:32   0:00 [cpuhp/3]
ROOT          34  0.0  0.0      0     0 ?        S    09:32   0:00 [idle_inject/3]
ROOT          35  0.0  0.0      0     0 ?        S    09:32   0:00 [migration/3]
ROOT          36  0.0  0.0      0     0 ?        S    09:32   0:00 [ksoftirqd/3]
ROOT          37  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/3:0-events]
ROOT          38  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/3:0H-kblockd]
ROOT          39  0.0  0.0      0     0 ?        S    09:32   0:00 [kdevtmpfs]
ROOT          40  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-inet_frag_wq]
ROOT          41  0.0  0.0      0     0 ?        I    09:32   0:00 [rcu_tasks_kthread]
ROOT          42  0.0  0.0      0     0 ?        I    09:32   0:00 [rcu_tasks_rude_kthread]
ROOT          43  0.0  0.0      0     0 ?        S    09:32   0:00 [kauditd]
ROOT          44  0.0  0.0      0     0 ?        S    09:32   0:00 [khungtaskd]
ROOT          45  0.0  0.0      0     0 ?        S    09:32   0:00 [oom_reaper]
ROOT          46  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/u16:1-flush-252:0]
ROOT          47  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-writeback]
ROOT          48  0.0  0.0      0     0 ?        S    09:32   0:00 [kcompactd0]
ROOT          49  0.0  0.0      0     0 ?        SN   09:32   0:00 [ksmd]
ROOT          50  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/1:1-mm_percpu_wq]
ROOT          51  0.0  0.0      0     0 ?        SN   09:32   0:00 [khugepaged]
ROOT          52  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-kblockd]
ROOT          53  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-blkcg_punt_bio]
ROOT          54  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-kintegrityd]
ROOT          55  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/3:1-cgroup_release]
ROOT          56  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/2:1-events]
ROOT          57  0.1  0.0      0     0 ?        S<   09:32   0:00 [pr/ttyAMA-1]
ROOT          58  0.2  0.0      0     0 ?        I    09:32   0:00 [kworker/u16:2-flush-252:0]
ROOT          59  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-tpm_dev_wq]
ROOT          60  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-ata_sff]
ROOT          61  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-md_bitmap]
ROOT          62  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-md_llbitmap_io]
ROOT          63  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-md_llbitmap_unplug]
ROOT          64  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-edac-poller]
ROOT          65  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-devfreq_wq]
ROOT          66  0.0  0.0      0     0 ?        S    09:32   0:00 [watchdogd]
ROOT          67  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-quota_events_unbound]
ROOT          68  0.0  0.0      0     0 ?        S    09:32   0:00 [kswapd0]
ROOT          69  0.0  0.0      0     0 ?        S    09:32   0:00 [ecryptfs-kthread]
ROOT          70  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-kthrotld]
ROOT          71  0.0  0.0      0     0 ?        S    09:32   0:00 [irq/49-ACPI:Ged]
ROOT          72  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-acpi_thermal_pm]
ROOT          73  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-mld]
ROOT          74  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-ipv6_addrconf]
ROOT          75  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-kstrp]
ROOT          77  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/u17:0]
ROOT          79  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/u16:3-events_power_efficient]
ROOT          80  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/u16:4-events_unbound]
ROOT          81  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/0:2-usb_hub_wq]
ROOT          83  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-charger_manager]
ROOT          84  0.0  0.0      0     0 ?        S    09:32   0:00 [hwrng]
ROOT          85  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/1:2-cgroup_release]
ROOT          87  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/0:3-events]
ROOT         148  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/2:2-mm_percpu_wq]
ROOT         244  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/3:2-cgroup_bpf_destroy]
ROOT         245  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/3:3-cgroup_free]
ROOT         341  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/0:4-cgroup_free]
ROOT         342  0.0  0.0      0     0 ?        S    09:32   0:00 [card0-crtc0]
ROOT         344  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/2:3-inode_switch_wbs]
ROOT         373  0.0  0.0      0     0 ?        S    09:32   0:00 [scsi_eh_0]
ROOT         374  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-scsi_tmf_0]
ROOT         375  0.0  0.0      0     0 ?        S    09:32   0:00 [usb-storage]
ROOT         376  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-uas]
ROOT         404  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-kdmflush/252:0]
ROOT         435  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/3:1H-kblockd]
ROOT         436  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/2:1H-kblockd]
ROOT         445  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/1:3-events]
ROOT         446  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/1:4-events]
ROOT         447  0.0  0.0      0     0 ?        S    09:32   0:00 [jbd2/dm-0-8]
ROOT         448  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-ext4-rsv-conversion]
ROOT         541  0.0  0.0      0     0 ?        S    09:32   0:00 [psimon]
ROOT         548  0.1  0.5  43680 17932 ?        S<s  09:32   0:00 /usr/lib/systemd/systemd-journald
ROOT         560  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-kmpathd]
ROOT         561  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-kmpath_handlerd]
ROOT         580  0.0  0.5 281956 18060 ?        SLsl 09:32   0:00 /usr/sbin/multipathd -d -s
ROOT         582  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/3:4-mm_percpu_wq]
ROOT         583  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/3:5-cgroup_free]
ROOT         584  0.0  0.0      0     0 ?        I    09:32   0:00 [kworker/3:6-cgroup_free]
ROOT         588  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/0:1H-kblockd]
ROOT         589  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/1:1H-kblockd]
systemd+     601  0.0  0.4  23204 15292 ?        Ss   09:32   0:00 /usr/lib/systemd/systemd-resolved
ROOT         608  0.1  0.4  42600 15308 ?        Ss   09:32   0:00 /usr/lib/systemd/systemd-udevd
ROOT         610  0.0  0.0      0     0 ?        S    09:32   0:00 [psimon]
ROOT         772  0.0  0.0      0     0 ?        S    09:32   0:00 [jbd2/vda2-8]
ROOT         773  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-ext4-rsv-conversion]
systemd+     874  0.0  0.3  21512 12132 ?        Ss   09:32   0:00 /usr/lib/systemd/systemd-networkd
ROOT         958  0.0  0.0      0     0 ?        I<   09:32   0:00 [kworker/R-cfg80211]
ROOT        1013  0.0  0.0   3044  1656 ?        Ss   09:32   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
ROOT        1014  0.0  0.0   8532  2828 ?        Ss   09:32   0:00 /usr/sbin/cron -f -P
message+    1015  0.0  0.1   9360  6404 ?        Ss   09:32   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
ROOT        1025  0.1  0.8  49428 30516 ?        Ss   09:32   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1027  0.0  0.5 309320 17948 ?        Ssl  09:32   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
ROOT        1037  0.0  0.3  20008 10716 ?        Ss   09:32   0:00 /usr/lib/systemd/systemd-logind
ROOT        1041  0.0  0.8 549192 30372 ?        Ssl  09:32   0:00 /usr/libexec/udisks2/udisksd
ROOT        1050  0.0  0.2  12204  9384 ?        Ss   09:32   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
ROOT        1076  0.0  0.0   7864  2460 ?        Ss+  09:32   0:00 /usr/sbin/agetty --noreset --noclear --issue-file=/etc/issue:/etc/issue.d:/run/issue.d:/usr/lib/issue.d --keep-baud 115200,57600,38400,9600 - vt220
ROOT        1090  0.0  0.1  10948  4400 ?        Ss   09:32   0:00 login -- muhammad-fayyaz
_chrony     1114  0.0  0.3  24104 10580 ?        S    09:32   0:00 /usr/sbin/chronyd -n -F 1
ROOT        1127  0.1  1.0 128932 36072 ?        Ssl  09:32   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
syslog      1140  0.0  0.3 221900 12588 ?        Ssl  09:32   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1141  0.0  0.0  13800  2172 ?        S    09:32   0:00 /usr/sbin/chronyd -n -F 1
ROOT        1149  0.0  0.6 398984 23468 ?        Ssl  09:32   0:00 /usr/sbin/ModemManager
muhamma+    1373  0.0  0.3  22336 12388 ?        Ss   09:33   0:00 /usr/lib/systemd/systemd --user
muhamma+    1380  0.0  0.1  24204  3896 ?        S    09:33   0:00 (sd-pam)
muhamma+    1399  0.0  0.2  10412  7276 tty1     Ss+  09:33   0:00 -bash
ROOT        1429  0.0  0.3  20736 11020 ?        Ss   09:33   0:00 sshd-session: muhammad-fayyaz [priv]
muhamma+    1478  0.1  0.2  20736  7352 ?        S    09:33   0:00 sshd-session: muhammad-fayyaz@pts/0
muhamma+    1479  0.0  0.1   9672  6536 pts/0    Ss   09:33   0:00 -bash
ROOT        1508  0.0  0.0      0     0 ?        I    09:33   0:00 [kworker/2:4]
muhamma+    1543  200  0.1  10004  3908 pts/0    R+   09:34   0:00 ps aux
140 processes are running
```
## sed 2: cp /etc/passwd users.txt && sed -i "/nologin/d" users.txt
```
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
muhammad-fayyaz:x:1000:1000:Muhammad Fayyaz:/home/muhammad-fayyaz:/bin/bash
```
## awk 1: users, UID and GID
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
User polkitd has UID 988 and GID 988
User syslog has UID 100 and GID 103
User uuidd has UID 101 and GID 104
User tcpdump has UID 986 and GID 986
User landscape has UID 102 and GID 106
User fwupd-refresh has UID 985 and GID 985
User muhammad-fayyaz has UID 1000 and GID 1000
User sshd has UID 984 and GID 65534
```
## awk 2: username and process name
```
root /usr/lib/systemd/systemd
root [kthreadd]
root [pool_workqueue_release]
root [kworker/R-rcu_gp]
root [kworker/R-sync_wq]
root [kworker/R-kvfree_rcu_reclaim]
root [kworker/R-slub_flushwq]
root [kworker/R-netns]
root [kworker/0:0-events]
root [kworker/0:0H-kblockd]
root [kworker/0:1-events]
root [kworker/u16:0-flush-252:0]
root [kworker/R-mm_percpu_wq]
root [ksoftirqd/0]
root [rcu_preempt]
root [rcu_exp_par_gp_kthread_worker/0]
root [rcu_exp_gp_kthread_worker]
root [migration/0]
root [idle_inject/0]
root [cpuhp/0]
root [cpuhp/1]
root [idle_inject/1]
root [migration/1]
root [ksoftirqd/1]
root [kworker/1:0-mm_percpu_wq]
root [kworker/1:0H-kblockd]
root [cpuhp/2]
root [idle_inject/2]
root [migration/2]
root [ksoftirqd/2]
root [kworker/2:0-events]
root [kworker/2:0H-kblockd]
root [cpuhp/3]
root [idle_inject/3]
root [migration/3]
root [ksoftirqd/3]
root [kworker/3:0-events]
root [kworker/3:0H-kblockd]
root [kdevtmpfs]
root [kworker/R-inet_frag_wq]
root [rcu_tasks_kthread]
root [rcu_tasks_rude_kthread]
root [kauditd]
root [khungtaskd]
root [oom_reaper]
root [kworker/u16:1-flush-252:0]
root [kworker/R-writeback]
root [kcompactd0]
root [ksmd]
root [kworker/1:1-mm_percpu_wq]
root [khugepaged]
root [kworker/R-kblockd]
root [kworker/R-blkcg_punt_bio]
root [kworker/R-kintegrityd]
root [kworker/3:1-cgroup_release]
root [kworker/2:1-events]
root [pr/ttyAMA-1]
root [kworker/u16:2-flush-252:0]
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
root [irq/49-ACPI:Ged]
root [kworker/R-acpi_thermal_pm]
root [kworker/R-mld]
root [kworker/R-ipv6_addrconf]
root [kworker/R-kstrp]
root [kworker/u17:0]
root [kworker/u16:3-events_power_efficient]
root [kworker/u16:4-events_unbound]
root [kworker/0:2-usb_hub_wq]
root [kworker/R-charger_manager]
root [hwrng]
root [kworker/1:2-cgroup_release]
root [kworker/0:3-events]
root [kworker/2:2-mm_percpu_wq]
root [kworker/3:2-cgroup_bpf_destroy]
root [kworker/3:3-cgroup_free]
root [kworker/0:4-cgroup_free]
root [card0-crtc0]
root [kworker/2:3-inode_switch_wbs]
root [scsi_eh_0]
root [kworker/R-scsi_tmf_0]
root [usb-storage]
root [kworker/R-uas]
root [kworker/R-kdmflush/252:0]
root [kworker/3:1H-kblockd]
root [kworker/2:1H-kblockd]
root [kworker/1:3-events]
root [kworker/1:4-events]
root [jbd2/dm-0-8]
root [kworker/R-ext4-rsv-conversion]
root [psimon]
root /usr/lib/systemd/systemd-journald
root [kworker/R-kmpathd]
root [kworker/R-kmpath_handlerd]
root /usr/sbin/multipathd
root [kworker/3:4-mm_percpu_wq]
root [kworker/3:5-cgroup_free]
root [kworker/3:6-cgroup_free]
root [kworker/0:1H-kblockd]
root [kworker/1:1H-kblockd]
systemd+ /usr/lib/systemd/systemd-resolved
root /usr/lib/systemd/systemd-udevd
root [psimon]
root [jbd2/vda2-8]
root [kworker/R-ext4-rsv-conversion]
systemd+ /usr/lib/systemd/systemd-networkd
root [kworker/R-cfg80211]
root /bin/sh
root /usr/sbin/cron
message+ @dbus-daemon
root /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
root /usr/lib/systemd/systemd-logind
root /usr/libexec/udisks2/udisksd
root sshd:
root /usr/sbin/agetty
root login
_chrony /usr/sbin/chronyd
root /usr/bin/python3
syslog /usr/sbin/rsyslogd
_chrony /usr/sbin/chronyd
root /usr/sbin/ModemManager
muhamma+ /usr/lib/systemd/systemd
muhamma+ (sd-pam)
muhamma+ -bash
root sshd-session:
muhamma+ sshd-session:
muhamma+ -bash
root [kworker/2:4]
muhamma+ ps
```
## awk 3: sum of CPU usage
```
Total CPU usage: 201.6%
```
