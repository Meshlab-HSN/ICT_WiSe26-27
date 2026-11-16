## Task 3
Working with sed:
1.replacing "root" with "ROOT":
$ sed 's/root/ROOT/g' processes.log

USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.9  0.4  24836 16104 ?        Ss   09:54   0:02 /usr/lib/systemd/systemd --switched-ROOT --system --deserialize=50
ROOT           2  0.0  0.0      0     0 ?        S    09:54   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    09:54   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-netns]
ROOT           9  0.0  0.0      0     0 ?        I    09:54   0:00 [kworker/0:0-events]
ROOT          10  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/0:0H-kblockd]
ROOT          11  0.0  0.0      0     0 ?        I    09:54   0:00 [kworker/0:1-rcu_gp]
ROOT          12  0.0  0.0      0     0 ?        I    09:54   0:00 [kworker/u8:0-ipv6_addrconf]
ROOT          13  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-mm_percpu_wq]
ROOT          14  0.0  0.0      0     0 ?        S    09:54   0:00 [ksoftirqd/0]
ROOT          15  0.0  0.0      0     0 ?        I    09:54   0:00 [rcu_preempt]
ROOT          16  0.0  0.0      0     0 ?        S    09:54   0:00 [rcu_exp_par_gp_kthread_worker/0]
ROOT          17  0.0  0.0      0     0 ?        S    09:54   0:00 [rcu_exp_gp_kthread_worker]
ROOT          18  0.0  0.0      0     0 ?        S    09:54   0:00 [migration/0]
ROOT          19  0.0  0.0      0     0 ?        S    09:54   0:00 [kprobe-optimizer]
ROOT          20  0.0  0.0      0     0 ?        S    09:54   0:00 [idle_inject/0]
ROOT          21  0.0  0.0      0     0 ?        S    09:54   0:00 [cpuhp/0]
ROOT          22  0.0  0.0      0     0 ?        S    09:54   0:00 [cpuhp/1]
ROOT          23  0.0  0.0      0     0 ?        S    09:54   0:00 [idle_inject/1]
ROOT          24  0.0  0.0      0     0 ?        S    09:54   0:00 [migration/1]
ROOT          25  2.5  0.0      0     0 ?        S    09:54   0:06 [ksoftirqd/1]
ROOT          26  0.0  0.0      0     0 ?        I    09:54   0:00 [kworker/1:0-cgroup_offline]
ROOT          27  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/1:0H-kblockd]
ROOT          28  0.0  0.0      0     0 ?        I    09:54   0:00 [kworker/u9:0-events_power_efficient]
ROOT          29  0.1  0.0      0     0 ?        I    09:54   0:00 [kworker/u10:0-flush-252:0]
ROOT          30  0.0  0.0      0     0 ?        S    09:54   0:00 [kdevtmpfs]
ROOT          31  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-inet_frag_wq]
ROOT          32  0.0  0.0      0     0 ?        I    09:54   0:00 [rcu_tasks_kthread]
ROOT          33  0.0  0.0      0     0 ?        I    09:54   0:00 [rcu_tasks_rude_kthread]
ROOT          34  0.0  0.0      0     0 ?        S    09:54   0:00 [kauditd]
ROOT          35  0.0  0.0      0     0 ?        S    09:54   0:00 [khungtaskd]
ROOT          36  0.0  0.0      0     0 ?        S    09:54   0:00 [oom_reaper]
ROOT          37  0.1  0.0      0     0 ?        I    09:54   0:00 [kworker/u9:1-events_unbound]
ROOT          38  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-writeback]
ROOT          39  0.0  0.0      0     0 ?        I    09:54   0:00 [kworker/u9:2-events_unbound]
ROOT          40  0.0  0.0      0     0 ?        S    09:54   0:00 [kcompactd0]
ROOT          41  0.0  0.0      0     0 ?        SN   09:54   0:00 [ksmd]
ROOT          42  0.0  0.0      0     0 ?        SN   09:54   0:00 [khugepaged]
ROOT          43  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-kblockd]
ROOT          44  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-blkcg_punt_bio]
ROOT          45  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-kintegrityd]
ROOT          46  0.0  0.0      0     0 ?        S    09:54   0:00 [irq/9-acpi]
ROOT          47  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-tpm_dev_wq]
ROOT          48  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-ata_sff]
ROOT          49  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-md_bitmap]
ROOT          50  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-md_llbitmap_io]
ROOT          51  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-md_llbitmap_unplug]
ROOT          52  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-edac-poller]
ROOT          53  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-devfreq_wq]
ROOT          54  0.0  0.0      0     0 ?        S    09:54   0:00 [watchdogd]
ROOT          55  0.0  0.0      0     0 ?        I    09:54   0:00 [kworker/1:1-cgroup_free]
ROOT          56  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-quota_events_unbound]
ROOT          57  0.0  0.0      0     0 ?        S    09:54   0:00 [kswapd0]
ROOT          58  0.0  0.0      0     0 ?        S    09:54   0:00 [ecryptfs-kthread]
ROOT          59  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-kthrotld]
ROOT          60  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-acpi_thermal_pm]
ROOT          61  0.0  0.0      0     0 ?        I    09:54   0:00 [kworker/u10:1-flush-252:0]
ROOT          62  0.0  0.0      0     0 ?        S    09:54   0:00 [scsi_eh_0]
ROOT          63  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-scsi_tmf_0]
ROOT          64  0.0  0.0      0     0 ?        S    09:54   0:00 [scsi_eh_1]
ROOT          65  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-scsi_tmf_1]
ROOT          66  0.1  0.0      0     0 ?        I    09:54   0:00 [kworker/u10:2-events_power_efficient]
ROOT          67  0.0  0.0      0     0 ?        I    09:54   0:00 [kworker/u10:3]
ROOT          68  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-mld]
ROOT          69  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-ipv6_addrconf]
ROOT          70  0.0  0.0      0     0 ?        I    09:54   0:00 [kworker/u8:1-ipv6_addrconf]
ROOT          71  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-kstrp]
ROOT          72  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/0:1H]
ROOT          74  0.3  0.0      0     0 ?        I<   09:54   0:01 [kworker/1:1H-events_highpri]
ROOT          75  0.0  0.0      0     0 ?        I    09:54   0:00 [kworker/1:2-cgroup_free]
ROOT          76  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/u11:0]
ROOT          77  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/u12:0]
ROOT          78  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/u13:0]
ROOT          83  1.1  0.0      0     0 ?        I    09:54   0:03 [kworker/1:3-events]
ROOT          90  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-charger_manager]
ROOT          91  0.1  0.0      0     0 ?        I    09:54   0:00 [kworker/0:2-events]
ROOT         175  0.0  0.0      0     0 ?        I    09:54   0:00 [kworker/u9:3-events_unbound]
ROOT         346  0.0  0.0      0     0 ?        S    09:54   0:00 [scsi_eh_2]
ROOT         347  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-scsi_tmf_2]
ROOT         417  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-kdmflush/252:0]
ROOT         448  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/1:2H]
ROOT         454  0.0  0.0      0     0 ?        S    09:54   0:00 [jbd2/dm-0-8]
ROOT         455  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-ext4-rsv-conversion]
ROOT         549  0.0  0.0      0     0 ?        S    09:54   0:00 [psimon]
ROOT         555  0.1  0.4  42212 16908 ?        S<s  09:54   0:00 /usr/lib/systemd/systemd-journald
ROOT         567  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-kmpathd]
ROOT         569  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-kmpath_handlerd]
ROOT         588  0.0  0.2 279492  9644 ?        SLsl 09:54   0:00 /usr/sbin/multipathd -d -s
systemd+     606  0.0  0.4  22636 14716 ?        Ss   09:54   0:00 /usr/lib/systemd/systemd-resolved
ROOT         610  0.1  0.4  39968 14156 ?        Ss   09:54   0:00 /usr/lib/systemd/systemd-udevd
ROOT         614  0.0  0.0      0     0 ?        S    09:54   0:00 [psimon]
ROOT         721  0.0  0.0      0     0 ?        S    09:54   0:00 [irq/18-vmwgfx]
ROOT         723  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-ttm]
ROOT         765  0.0  0.0      0     0 ?        I    09:54   0:00 [kworker/0:3-cgwb_release]
ROOT         795  0.0  0.0      0     0 ?        S    09:54   0:00 [jbd2/sda2-8]
ROOT         796  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-ext4-rsv-conversion]
ROOT         822  1.4  0.0      0     0 ?        I    09:54   0:03 [kworker/1:4-events]
systemd+     850  0.0  0.3  21432 12340 ?        Ss   09:54   0:00 /usr/lib/systemd/systemd-networkd
ROOT         914  0.0  0.0      0     0 ?        I<   09:54   0:00 [kworker/R-cfg80211]
ROOT        1045  0.0  0.0   2888  2012 ?        Ss   09:54   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
ROOT        1046  0.0  0.0   7060  3416 ?        Ss   09:54   0:00 /usr/sbin/cron -f -P
message+    1047  0.0  0.1   9008  5636 ?        Ss   09:54   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
ROOT        1055  0.0  0.8  46744 30164 ?        Ss   09:54   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1056  0.0  0.2 306448  8496 ?        Ssl  09:54   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
ROOT        1061  3.9  1.2 1854308 42460 ?       Ssl  09:54   0:10 /snap/snapd/current/usr/lib/snapd/snapd
ROOT        1064  0.0  0.2  18416  9580 ?        Ss   09:54   0:00 /usr/lib/systemd/systemd-logind
ROOT        1068  0.0  0.4 543452 15144 ?        Ssl  09:54   0:00 /usr/libexec/udisks2/udisksd
ROOT        1088  0.0  0.2  10744  7748 ?        Ss   09:54   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
ROOT        1117  0.0  0.1   8764  5620 ?        Ss   09:54   0:00 login -- sai-rakshitha-pothula
syslog      1124  0.0  0.1 220548  6192 ?        Ssl  09:54   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1134  0.0  0.3  23856 11356 ?        S    09:54   0:00 /usr/sbin/chronyd -n -F 1
ROOT        1139  0.0  0.9 126112 33032 ?        Ssl  09:54   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony     1146  0.0  0.0  12096  2464 ?        S    09:54   0:00 /usr/sbin/chronyd -n -F 1
ROOT        1170  0.0  0.4 391608 13924 ?        Ssl  09:54   0:00 /usr/sbin/ModemManager
ROOT        1273  0.0  0.0      0     0 ?        I    09:54   0:00 [kworker/0:4-rcu_gp]
sai-rak+    1419  0.0  0.3  22068 12948 ?        Ss   09:55   0:00 /usr/lib/systemd/systemd --user
ROOT        1420  0.0  0.0      0     0 ?        I    09:55   0:00 [kworker/u10:4-flush-252:0]
sai-rak+    1426  0.0  0.1  23016  4100 ?        S    09:55   0:00 (sd-pam)
sai-rak+    1446  0.0  0.1   8856  5872 tty1     Ss+  09:55   0:00 -bash
ROOT        1483  0.1  0.3  18432 12288 ?        Ss   09:55   0:00 sshd-session: sai-rakshitha-pothula [priv]
sai-rak+    1529  1.2  0.2  18568  7696 ?        S    09:55   0:02 sshd-session: sai-rakshitha-pothula@pts/0
sai-rak+    1530  0.2  0.1   8844  5932 pts/0    Ss   09:55   0:00 -bash
sai-rak+    1657  123  0.1   9764  4684 pts/0    R+   09:58   0:00 ps aux
128 processes are running

2.Read the contents of /etc/passwd into a new file called users.txt.

$ cat /etc/passwd
$ sed -i /nologin/d users.txt
$ cat users.txt

root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
sai-rakshitha-pothula:x:1000:1000:sai rakshitha pothula:/home/sai-rakshitha-pothula:/bin/bash

Working with awk:
1. Print all users from /etc/passwd in a formatted output
$awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd

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
User sai-rakshitha-pothula has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534

2.print only the username and the process name:
$ awk '{print $1, $11}' processes.log 
 
USER COMMAND
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
root [kworker/0:1-rcu_gp]
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
root [kworker/1:0-cgroup_offline]
root [kworker/1:0H-kblockd]
root [kworker/u9:0-events_power_efficient]
root [kworker/u10:0-flush-252:0]
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
root [kworker/1:1-cgroup_free]
root [kworker/R-quota_events_unbound]
root [kswapd0]
root [ecryptfs-kthread]
root [kworker/R-kthrotld]
root [kworker/R-acpi_thermal_pm]
root [kworker/u10:1-flush-252:0]
root [scsi_eh_0]
root [kworker/R-scsi_tmf_0]
root [scsi_eh_1]
root [kworker/R-scsi_tmf_1]
root [kworker/u10:2-events_power_efficient]
root [kworker/u10:3]
root [kworker/R-mld]
root [kworker/R-ipv6_addrconf]
root [kworker/u8:1-ipv6_addrconf]
root [kworker/R-kstrp]
root [kworker/0:1H]
root [kworker/1:1H-events_highpri]
root [kworker/1:2-cgroup_free]
root [kworker/u11:0]
root [kworker/u12:0]
root [kworker/u13:0]
root [kworker/1:3-events]
root [kworker/R-charger_manager]
root [kworker/0:2-events]
root [kworker/u9:3-events_unbound]
root [scsi_eh_2]
root [kworker/R-scsi_tmf_2]
root [kworker/R-kdmflush/252:0]
root [kworker/1:2H]
root [jbd2/dm-0-8]
root [kworker/R-ext4-rsv-conversion]
root [psimon]
root /usr/lib/systemd/systemd-journald
root [kworker/R-kmpathd]
root [kworker/R-kmpath_handlerd]
root /usr/sbin/multipathd
systemd+ /usr/lib/systemd/systemd-resolved
root /usr/lib/systemd/systemd-udevd
root [psimon]
root [irq/18-vmwgfx]
root [kworker/R-ttm]
root [kworker/0:3-cgwb_release]
root [jbd2/sda2-8]
root [kworker/R-ext4-rsv-conversion]
root [kworker/1:4-events]
systemd+ /usr/lib/systemd/systemd-networkd
root [kworker/R-cfg80211]
root /bin/sh
root /usr/sbin/cron
message+ @dbus-daemon
root /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
root /snap/snapd/current/usr/lib/snapd/snapd
root /usr/lib/systemd/systemd-logind
root /usr/libexec/udisks2/udisksd
root sshd:
root login
syslog /usr/sbin/rsyslogd
_chrony /usr/sbin/chronyd
root /usr/bin/python3
_chrony /usr/sbin/chronyd
root /usr/sbin/ModemManager
root [kworker/0:4-rcu_gp]
sai-rak+ /usr/lib/systemd/systemd
root [kworker/u10:4-flush-252:0]
sai-rak+ (sd-pam)
sai-rak+ -bash
root sshd-session:
sai-rak+ sshd-session:
sai-rak+ -bash
sai-rak+ ps
128 

Sum up the CPU usage of all processes:
$ awk 'NR>1 && $3 ~ /^[0-9.]+$/ {sum += $3} END {print "Total CPU: " sum "%"}' processes.log

Total CPU: 135.2%
