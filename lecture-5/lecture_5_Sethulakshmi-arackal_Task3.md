<<<<<<< HEAD
=======
##allcode
>>>>>>> 67209f9 (completed task and added output of all the task in md file)
sed -i 's/root/ROOT/g' processes.log
awk '{print $1. $11}'processes.log
awk 'NR>1 {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log
cp /etc/passwd users.txt
sed -i '/nologin/d' users.txt
awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd

<<<<<<< HEAD
=======
##sed part-1
sethusuni@Ubuntuserver:~/ICT_WiSe26-27/lecture-5$ ps aux > processes.log
sethusuni@Ubuntuserver:~/ICT_WiSe26-27/lecture-5$ sed -i 's/^root /ROOT /' processes.log
sethusuni@Ubuntuserver:~/ICT_WiSe26-27/lecture-5$ cat processes.log
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.2  0.9  24840 16220 ?        Ss   12:12   0:07 /usr/lib/systemd/systemd --switched-root --system --deserialize=54
ROOT           2  0.0  0.0      0     0 ?        S    12:12   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    12:12   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-netns]
ROOT          10  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/0:0H-kblockd]
ROOT          13  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-mm_percpu_wq]
ROOT          14  0.0  0.0      0     0 ?        S    12:12   0:00 [ksoftirqd/0]
ROOT          15  0.0  0.0      0     0 ?        I    12:12   0:00 [rcu_preempt]
ROOT          16  0.0  0.0      0     0 ?        S    12:12   0:00 [rcu_exp_par_gp_kthread_worker/0]
ROOT          17  0.0  0.0      0     0 ?        S    12:12   0:00 [rcu_exp_gp_kthread_worker]
ROOT          18  0.0  0.0      0     0 ?        S    12:12   0:00 [migration/0]
ROOT          19  0.0  0.0      0     0 ?        S    12:12   0:00 [kprobe-optimizer]
ROOT          20  0.0  0.0      0     0 ?        S    12:12   0:00 [idle_inject/0]
ROOT          21  0.0  0.0      0     0 ?        S    12:12   0:00 [cpuhp/0]
ROOT          22  0.0  0.0      0     0 ?        S    12:12   0:00 [cpuhp/1]
ROOT          23  0.0  0.0      0     0 ?        S    12:12   0:00 [idle_inject/1]
ROOT          24  0.0  0.0      0     0 ?        S    12:12   0:00 [migration/1]
ROOT          25  0.0  0.0      0     0 ?        S    12:12   0:02 [ksoftirqd/1]
ROOT          28  0.0  0.0      0     0 ?        S    12:12   0:00 [cpuhp/2]
ROOT          29  0.0  0.0      0     0 ?        S    12:12   0:00 [idle_inject/2]
ROOT          30  0.0  0.0      0     0 ?        S    12:12   0:00 [migration/2]
ROOT          31  0.0  0.0      0     0 ?        S    12:12   0:00 [ksoftirqd/2]
ROOT          32  0.0  0.0      0     0 ?        I    12:12   0:00 [kworker/2:0-cgroup_free]
ROOT          33  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/2:0H-kblockd]
ROOT          34  0.0  0.0      0     0 ?        S    12:12   0:00 [cpuhp/3]
ROOT          35  0.0  0.0      0     0 ?        S    12:12   0:00 [idle_inject/3]
ROOT          36  0.0  0.0      0     0 ?        S    12:12   0:00 [migration/3]
ROOT          37  0.0  0.0      0     0 ?        S    12:12   0:00 [ksoftirqd/3]
ROOT          40  0.0  0.0      0     0 ?        S    12:12   0:00 [kdevtmpfs]
ROOT          41  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-inet_frag_wq]
ROOT          42  0.0  0.0      0     0 ?        I    12:12   0:00 [rcu_tasks_kthread]
ROOT          43  0.0  0.0      0     0 ?        I    12:12   0:00 [rcu_tasks_rude_kthread]
ROOT          44  0.0  0.0      0     0 ?        S    12:12   0:00 [kauditd]
ROOT          45  0.0  0.0      0     0 ?        S    12:12   0:00 [khungtaskd]
ROOT          46  0.0  0.0      0     0 ?        S    12:12   0:00 [oom_reaper]
ROOT          48  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-writeback]
ROOT          51  0.0  0.0      0     0 ?        S    12:12   0:00 [kcompactd0]
ROOT          52  0.0  0.0      0     0 ?        SN   12:12   0:00 [ksmd]
ROOT          53  0.0  0.0      0     0 ?        SN   12:12   0:00 [khugepaged]
ROOT          54  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-kblockd]
ROOT          55  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-blkcg_punt_bio]
ROOT          56  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-kintegrityd]
ROOT          57  0.0  0.0      0     0 ?        S    12:12   0:00 [irq/9-acpi]
ROOT          58  0.2  0.0      0     0 ?        I    12:12   0:07 [kworker/2:1-mm_percpu_wq]
ROOT          60  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-tpm_dev_wq]
ROOT          61  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-ata_sff]
ROOT          62  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-md_bitmap]
ROOT          63  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-md_llbitmap_io]
ROOT          64  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-md_llbitmap_unplug]
ROOT          65  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-edac-poller]
ROOT          66  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-devfreq_wq]
ROOT          67  0.0  0.0      0     0 ?        S    12:12   0:00 [watchdogd]
ROOT          68  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-quota_events_unbound]
ROOT          69  0.0  0.0      0     0 ?        S    12:12   0:00 [kswapd0]
ROOT          70  0.0  0.0      0     0 ?        S    12:12   0:00 [ecryptfs-kthread]
ROOT          71  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-kthrotld]
ROOT          72  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-acpi_thermal_pm]
ROOT          73  0.0  0.0      0     0 ?        S    12:12   0:00 [scsi_eh_0]
ROOT          74  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-scsi_tmf_0]
ROOT          75  0.0  0.0      0     0 ?        S    12:12   0:00 [scsi_eh_1]
ROOT          76  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-scsi_tmf_1]
ROOT          77  0.0  0.0      0     0 ?        I    12:12   0:01 [kworker/u16:3-events_power_efficient]
ROOT          80  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-mld]
ROOT          81  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-ipv6_addrconf]
ROOT          82  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-kstrp]
ROOT          84  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/3:1H-kblockd]
ROOT          86  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/u17:0]
ROOT          97  0.2  0.0      0     0 ?        I    12:12   0:06 [kworker/1:2-events]
ROOT          99  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-charger_manager]
ROOT         303  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/1:1H-kblockd]
ROOT         304  0.0  0.0      0     0 ?        S    12:12   0:00 [scsi_eh_2]
ROOT         305  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-scsi_tmf_2]
ROOT         308  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/0:1H-kblockd]
ROOT         342  0.0  0.0      0     0 ?        S    12:12   0:00 [jbd2/sda2-8]
ROOT         343  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-ext4-rsv-conversion]
ROOT         408  0.1  0.0      0     0 ?        I    12:12   0:05 [kworker/3:4-events]
ROOT         442  0.0  0.0      0     0 ?        S    12:12   0:00 [psimon]
ROOT         449  0.0  1.0  50652 17312 ?        S<s  12:12   0:00 /usr/lib/systemd/systemd-journald
ROOT         472  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-kmpathd]
ROOT         473  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-kmpath_handlerd]
ROOT         490  0.0  0.5 279492  9644 ?        SLsl 12:12   0:01 /usr/sbin/multipathd -d -s
systemd+     507  0.0  0.8  22624 14704 ?        Ss   12:12   0:00 /usr/lib/systemd/systemd-resolved
ROOT         509  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/1:2H-kblockd]
ROOT         511  0.0  0.9  41276 15456 ?        Ss   12:12   0:01 /usr/lib/systemd/systemd-udevd
ROOT         690  0.0  0.0      0     0 ?        S    12:12   0:00 [psimon]
systemd+     766  0.0  0.7  21436 12308 ?        Ss   12:12   0:00 /usr/lib/systemd/systemd-networkd
ROOT         793  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-cfg80211]
ROOT         808  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/2:2H]
ROOT         826  0.0  0.0      0     0 ?        S    12:12   0:00 [irq/18-vmwgfx]
ROOT         830  0.0  0.0      0     0 ?        I<   12:12   0:00 [kworker/R-ttm]
ROOT         999  0.0  0.1   2888  2012 ?        Ss   12:12   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
ROOT        1000  0.0  0.2   7060  3400 ?        Ss   12:12   0:00 /usr/sbin/cron -f -P
message+    1001  0.0  0.3   9140  5768 ?        Ss   12:12   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
ROOT        1008  0.0  1.7  46744 30232 ?        Ss   12:12   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1009  0.0  0.6 382008 10456 ?        Ssl  12:12   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
ROOT        1013  0.0  2.5 1928844 43060 ?       Ssl  12:12   0:03 /snap/snapd/current/usr/lib/snapd/snapd
ROOT        1017  0.0  0.5  18680  9704 ?        Ss   12:12   0:00 /usr/lib/systemd/systemd-logind
ROOT        1020  0.0  0.9 543332 15224 ?        Ssl  12:12   0:00 /usr/libexec/udisks2/udisksd
ROOT        1036  0.0  0.4  10744  7772 ?        Ss   12:12   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
ROOT        1065  0.0  0.3   8756  5632 ?        Ss   12:12   0:00 login -- sethusuni
syslog      1067  0.0  0.3 220548  6140 ?        Ssl  12:12   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1085  0.0  0.3  20556  6376 ?        S    12:12   0:00 /usr/sbin/chronyd -n -F 1
ROOT        1109  0.0  1.9 126112 33052 ?        Ssl  12:12   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
_chrony     1111  0.0  0.1  12096  2424 ?        S    12:12   0:00 /usr/sbin/chronyd -n -F 1
ROOT        1119  0.0  0.8 391608 13940 ?        Ssl  12:12   0:00 /usr/sbin/ModemManager
sethusu+    1347  0.0  0.7  22020 13096 ?        Ss   12:14   0:00 /usr/lib/systemd/systemd --user
sethusu+    1358  0.0  0.2  23016  4128 ?        S    12:14   0:00 (sd-pam)
sethusu+    1377  0.0  0.3   8856  5940 tty1     Ss+  12:14   0:00 -bash
ROOT        1473  0.1  2.8 501600 48100 ?        Ssl  12:17   0:03 /usr/libexec/fwupd/fwupd
ROOT        1482  0.1  0.6 318836 11752 ?        Ssl  12:17   0:03 /usr/libexec/upowerd
ROOT        1518  0.0  0.0      0     0 ?        I<   12:20   0:00 [kworker/3:2H]
ROOT        1598  0.0  0.0      0     0 ?        I    12:31   0:00 [kworker/1:1]
ROOT        1707  0.0  0.7  18424 12160 ?        Ss   12:34   0:00 sshd-session: sethusuni [priv]
sethusu+    1763  0.6  0.4  18564  7724 ?        S    12:34   0:11 sshd-session: sethusuni@pts/0
sethusu+    1764  0.0  0.3   8844  5856 pts/0    Ss   12:34   0:00 -bash
ROOT        1825  0.1  0.0      0     0 ?        I    12:40   0:02 [kworker/0:1-events]
ROOT        1898  0.0  0.0      0     0 ?        I    12:47   0:00 [kworker/u16:0-events_unbound]
ROOT        1920  0.0  0.0      0     0 ?        I    12:50   0:00 [kworker/3:1-cgroup_free]
ROOT        1972  0.0  0.0      0     0 ?        I    12:53   0:00 [kworker/u16:1-events_unbound]
ROOT        2047  0.0  0.0      0     0 ?        I    13:00   0:00 [kworker/0:2-cgroup_free]
ROOT        2048  0.0  0.0      0     0 ?        I    13:00   0:00 [kworker/u16:2-events_power_efficient]
sethusu+    2120  0.0  0.2   9764  4676 pts/0    R+   13:05   0:00 ps aux

##sed part-2
sethusuni@Ubuntuserver:~/ICT_WiSe26-27/lecture-5$ cat /etc/passwd > users.txt
sethusuni@Ubuntuserver:~/ICT_WiSe26-27/lecture-5$ sed -i '/\/nologin$/d' users.txt
sethusuni@Ubuntuserver:~/ICT_WiSe26-27/lecture-5$ cat users.txt
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
sethusuni:x:1000:1000:sethusuni:/home/sethusuni:/bin/bash

##awk part-1
sethusuni@Ubuntuserver:~/ICT_WiSe26-27/lecture-5$ awk -F: '{printf "User %s has UID %s and GID %s\n", $1, $3, $4}' /etc/passwd
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
User sethusuni has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534sethusuni@Ubuntuserver:~/ICT_WiSe26-27/lecture-5$ awk -F: '{printf "User %s has UID %s and GID %s\n", $1, $3, $4}' /etc/passwd
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
User sethusuni has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534

##awk part-2
sethusuni@Ubuntuserver:~/ICT_WiSe26-27/lecture-5$ awk '$2 ~ /^[0-9]+$/ {print $1, $11}' processes.log
ROOT /usr/lib/systemd/systemd
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_gp]
ROOT [kworker/R-sync_wq]
ROOT [kworker/R-kvfree_rcu_reclaim]
ROOT [kworker/R-slub_flushwq]
ROOT [kworker/R-netns]
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
ROOT [kworker/2:0-cgroup_free]
ROOT [kworker/2:0H-kblockd]
ROOT [cpuhp/3]
ROOT [idle_inject/3]
ROOT [migration/3]
ROOT [ksoftirqd/3]
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
ROOT [kworker/2:1-mm_percpu_wq]
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
ROOT [kworker/u16:3-events_power_efficient]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/3:1H-kblockd]
ROOT [kworker/u17:0]
ROOT [kworker/1:2-events]
ROOT [kworker/R-charger_manager]
ROOT [kworker/1:1H-kblockd]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_tmf_2]
ROOT [kworker/0:1H-kblockd]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [kworker/3:4-events]
ROOT [psimon]
ROOT /usr/lib/systemd/systemd-journald
ROOT [kworker/R-kmpathd]
ROOT [kworker/R-kmpath_handlerd]
ROOT /usr/sbin/multipathd
systemd+ /usr/lib/systemd/systemd-resolved
ROOT [kworker/1:2H-kblockd]
ROOT /usr/lib/systemd/systemd-udevd
ROOT [psimon]
systemd+ /usr/lib/systemd/systemd-networkd
ROOT [kworker/R-cfg80211]
ROOT [kworker/2:2H]
ROOT [irq/18-vmwgfx]
ROOT [kworker/R-ttm]
ROOT /bin/sh
ROOT /usr/sbin/cron
message+ @dbus-daemon
ROOT /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
ROOT /snap/snapd/current/usr/lib/snapd/snapd
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/udisks2/udisksd
ROOT sshd:
ROOT login
syslog /usr/sbin/rsyslogd
_chrony /usr/sbin/chronyd
ROOT /usr/bin/python3
_chrony /usr/sbin/chronyd
ROOT /usr/sbin/ModemManager
sethusu+ /usr/lib/systemd/systemd
sethusu+ (sd-pam)
sethusu+ -bash
ROOT /usr/libexec/fwupd/fwupd
ROOT /usr/libexec/upowerd
ROOT [kworker/3:2H]
ROOT [kworker/1:1]
ROOT sshd-session:
sethusu+ sshd-session:
sethusu+ -bash
ROOT [kworker/0:1-events]
ROOT [kworker/u16:0-events_unbound]
ROOT [kworker/3:1-cgroup_free]
ROOT [kworker/u16:1-events_unbound]
ROOT [kworker/0:2-cgroup_free]
ROOT [kworker/u16:2-events_power_efficient]
sethusu+ ps

##awk part-3
sethusuni@Ubuntuserver:~/ICT_WiSe26-27/lecture-5$ awk '$2 ~ /^[0-9]+$/ {cpu += $3} END {printf "Total CPU usage: %.1f%%\
n", cpu}' processes.log
Total CPU usage: 1.6%
>>>>>>> 67209f9 (completed task and added output of all the task in md file)
