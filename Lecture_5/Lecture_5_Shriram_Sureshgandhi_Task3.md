```
$ sed 's/root/ROOT/g' processes.log
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.0  0.5  22004 13116 ?        Ss   10:04   0:01 /sbin/init
ROOT           2  0.0  0.0      0     0 ?        S    10:04   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    10:04   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-rcu_g]
ROOT           5  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-rcu_p]
ROOT           6  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-slub_]
ROOT           7  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-netns]
ROOT           8  0.0  0.0      0     0 ?        I    10:04   0:00 [kworker/0:0-events]
ROOT          10  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/0:0H-kblockd]
ROOT          12  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-mm_pe]
ROOT          13  0.0  0.0      0     0 ?        I    10:04   0:00 [rcu_tasks_kthread]
ROOT          14  0.0  0.0      0     0 ?        I    10:04   0:00 [rcu_tasks_rude_kthread]
ROOT          15  0.0  0.0      0     0 ?        I    10:04   0:00 [rcu_tasks_trace_kthread]
ROOT          16  0.0  0.0      0     0 ?        S    10:04   0:00 [ksoftirqd/0]
ROOT          17  0.0  0.0      0     0 ?        I    10:04   0:00 [rcu_preempt]
ROOT          18  0.0  0.0      0     0 ?        S    10:04   0:00 [migration/0]
ROOT          19  0.0  0.0      0     0 ?        S    10:04   0:00 [idle_inject/0]
ROOT          20  0.0  0.0      0     0 ?        S    10:04   0:00 [cpuhp/0]
ROOT          21  0.0  0.0      0     0 ?        S    10:04   0:00 [cpuhp/1]
ROOT          22  0.0  0.0      0     0 ?        S    10:04   0:00 [idle_inject/1]
ROOT          23  0.0  0.0      0     0 ?        S    10:04   0:00 [migration/1]
ROOT          24  0.0  0.0      0     0 ?        S    10:04   0:00 [ksoftirqd/1]
ROOT          26  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/1:0H-events_highpri]
ROOT          27  0.0  0.0      0     0 ?        I    10:04   0:00 [kworker/u5:0-events_unbound]
ROOT          28  0.0  0.0      0     0 ?        I    10:04   0:00 [kworker/u6:0-events_unbound]
ROOT          29  0.0  0.0      0     0 ?        S    10:04   0:00 [kdevtmpfs]
ROOT          30  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-inet_]
ROOT          31  0.0  0.0      0     0 ?        S    10:04   0:00 [kauditd]
ROOT          32  0.0  0.0      0     0 ?        S    10:04   0:00 [khungtaskd]
ROOT          33  0.0  0.0      0     0 ?        S    10:04   0:00 [oom_reaper]
ROOT          35  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-write]
ROOT          36  0.0  0.0      0     0 ?        I    10:04   0:00 [kworker/u5:2-events_power_efficient]
ROOT          37  0.0  0.0      0     0 ?        S    10:04   0:00 [kcompactd0]
ROOT          38  0.0  0.0      0     0 ?        SN   10:04   0:00 [ksmd]
ROOT          40  0.0  0.0      0     0 ?        SN   10:04   0:00 [khugepaged]
ROOT          41  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-kinte]
ROOT          42  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-kbloc]
ROOT          43  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-blkcg]
ROOT          44  0.0  0.0      0     0 ?        S    10:04   0:00 [irq/9-acpi]
ROOT          45  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-tpm_d]
ROOT          46  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-ata_s]
ROOT          47  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-md]
ROOT          48  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-md_bi]
ROOT          49  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-edac-]
ROOT          50  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-devfr]
ROOT          51  0.0  0.0      0     0 ?        S    10:04   0:00 [watchdogd]
ROOT          52  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-quota]
ROOT          54  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/1:1H-kblockd]
ROOT          55  0.0  0.0      0     0 ?        S    10:04   0:00 [kswapd0]
ROOT          56  0.0  0.0      0     0 ?        S    10:04   0:00 [ecryptfs-kthread]
ROOT          57  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-kthro]
ROOT          58  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-acpi_]
ROOT          59  0.0  0.0      0     0 ?        I    10:04   0:00 [kworker/u6:2-events_unbound]
ROOT          61  0.0  0.0      0     0 ?        S    10:04   0:00 [scsi_eh_0]
ROOT          62  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-scsi_]
ROOT          63  0.0  0.0      0     0 ?        S    10:04   0:00 [scsi_eh_1]
ROOT          64  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-scsi_]
ROOT          65  0.0  0.0      0     0 ?        I    10:04   0:00 [kworker/u4:1-ext4-rsv-conversion]
ROOT          66  0.0  0.0      0     0 ?        I    10:04   0:00 [kworker/u4:2-ipv6_addrconf]
ROOT          68  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-mld]
ROOT          69  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-ipv6_]
ROOT          79  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-kstrp]
ROOT          81  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/u7:0]
ROOT          82  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/u8:0]
ROOT          83  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/u9:0]
ROOT          88  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-crypt]
ROOT          98  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-charg]
ROOT         156  0.0  0.0      0     0 ?        S    10:04   0:00 [scsi_eh_2]
ROOT         157  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-scsi_]
ROOT         168  0.0  0.0      0     0 ?        I    10:04   0:00 [kworker/u5:3-events_unbound]
ROOT         199  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-raid5]
ROOT         222  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/0:2H-kblockd]
ROOT         240  0.0  0.0      0     0 ?        S    10:04   0:00 [jbd2/sda2-8]
ROOT         241  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-ext4-]
ROOT         306  0.0  0.7  66848 19420 ?        S<s  10:04   0:00 /usr/lib/systemd/systemd-journald
ROOT         330  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-kmpat]
ROOT         331  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-kmpat]
ROOT         355  0.0  1.1 288996 27332 ?        SLsl 10:04   0:00 /sbin/multipathd -d -s
ROOT         390  0.0  0.3  29100  7888 ?        Ss   10:04   0:00 /usr/lib/systemd/systemd-udevd
systemd+     454  0.0  0.5  21476 12996 ?        Ss   10:04   0:00 /usr/lib/systemd/systemd-resolved
systemd+     459  0.0  0.3  91036  7936 ?        Ssl  10:04   0:00 /usr/lib/systemd/systemd-timesyncd
ROOT         492  0.0  0.0      0     0 ?        S    10:04   0:00 [psimon]
systemd+     501  0.0  0.3  19016  9476 ?        Ss   10:04   0:00 /usr/lib/systemd/systemd-networkd
ROOT         560  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-cfg80]
message+     574  0.0  0.2   9800  5564 ?        Ss   10:04   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      588  0.0  0.4 383724 10020 ?        Ssl  10:04   0:00 /usr/lib/polkit-1/polkitd --no-debug
ROOT         620  0.0  0.3  18224  8944 ?        Ss   10:04   0:00 /usr/lib/systemd/systemd-logind
ROOT         624  0.0  0.5 468980 13568 ?        Ssl  10:04   0:00 /usr/libexec/udisks2/udisksd
syslog       660  0.0  0.2 222516  6028 ?        Ssl  10:04   0:00 /usr/sbin/rsyslogd -n -iNONE
ROOT         694  0.0  0.9 109704 23100 ?        Ssl  10:04   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
ROOT         722  0.0  0.5 392036 12844 ?        Ssl  10:04   0:00 /usr/sbin/ModemManager
ROOT         803  0.0  0.0      0     0 ?        S    10:04   0:00 [irq/18-vmwgfx]
ROOT         804  0.0  0.0      0     0 ?        I<   10:04   0:00 [kworker/R-ttm]
ROOT         867  0.0  0.1   6828  2904 ?        Ss   10:04   0:00 /usr/sbin/cron -f -P
ROOT         873  0.0  0.3  12028  8220 ?        Ss   10:04   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
ROOT         879  0.0  0.1   6972  4884 tty1     Ss   10:04   0:00 /bin/login -p --
ROOT         937  0.0  0.3 314072  9296 ?        Ssl  10:04   0:00 /usr/libexec/upowerd
ROOT        1005  0.0  0.0      0     0 ?        S    10:04   0:00 [psimon]
jarvis      1007  0.0  0.4  20104 11168 ?        Ss   10:04   0:00 /usr/lib/systemd/systemd --user
jarvis      1008  0.0  0.1  21164  3568 ?        S    10:04   0:00 (sd-pam)
jarvis      1017  0.0  0.2   8656  5632 tty1     S+   10:04   0:00 -bash
ROOT        1050  0.0  0.0      0     0 ?        I    10:10   0:00 [kworker/0:1-ata_sff]
ROOT        1051  0.0  0.4  14740 10448 ?        Ss   10:10   0:00 sshd: jarvis [priv]
jarvis      1108  0.0  0.2  14996  7128 ?        S    10:10   0:00 sshd: jarvis@pts/0
jarvis      1109  0.0  0.2   8652  5656 pts/0    Ss   10:10   0:00 -bash
ROOT        1118  0.0  0.0      0     0 ?        I    10:12   0:00 [kworker/u5:4-events_unbound]
ROOT        1240  0.2  0.0      0     0 ?        I    10:14   0:02 [kworker/1:1-events]
ROOT        1241  0.0  0.0      0     0 ?        I    10:14   0:00 [kworker/u6:1-flush-8:0]
ROOT        1252  0.0  0.0      0     0 ?        I    10:19   0:00 [kworker/1:3-events]
ROOT        1255  0.0  0.0      0     0 ?        I    10:20   0:00 [kworker/u6:3-events_unbound]
jarvis      1267  0.0  0.1  10892  4592 pts/0    R+   10:27   0:00 ps aux
111 processes are running
```

```
$ cat users.txt
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:100:65534:DHCP Client Daemon,,,:/usr/lib/dhcpcd:/bin/false
pollinate:x:102:1::/var/cache/pollinate:/bin/false
tss:x:106:108:TPM software stack,,,:/var/lib/tpm:/bin/false
jarvis:x:1000:1000:jarvis:/home/jarvis:/bin/bash
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
User systemd-timesync has UID 997 and GID 997
User dhcpcd has UID 100 and GID 65534
User messagebus has UID 101 and GID 102
User systemd-resolve has UID 992 and GID 992
User pollinate has UID 102 and GID 1
User polkitd has UID 991 and GID 991
User syslog has UID 103 and GID 104
User uuidd has UID 104 and GID 105
User tcpdump has UID 105 and GID 107
User tss has UID 106 and GID 108
User landscape has UID 107 and GID 109
User fwupd-refresh has UID 989 and GID 989
User usbmux has UID 108 and GID 46
User jarvis has UID 1000 and GID 1000
User sshd has UID 109 and GID 65534
```

```
$ awk 'NR>1 && $2 ~ /^[0-9]+$/ {print $1, $11}' processes.log
root /sbin/init
root [kthreadd]
root [pool_workqueue_release]
root [kworker/R-rcu_g]
root [kworker/R-rcu_p]
root [kworker/R-slub_]
root [kworker/R-netns]
root [kworker/0:0-events]
root [kworker/0:0H-kblockd]
root [kworker/R-mm_pe]
root [rcu_tasks_kthread]
root [rcu_tasks_rude_kthread]
root [rcu_tasks_trace_kthread]
root [ksoftirqd/0]
root [rcu_preempt]
root [migration/0]
root [idle_inject/0]
root [cpuhp/0]
root [cpuhp/1]
root [idle_inject/1]
root [migration/1]
root [ksoftirqd/1]
root [kworker/1:0H-events_highpri]
root [kworker/u5:0-events_unbound]
root [kworker/u6:0-events_unbound]
root [kdevtmpfs]
root [kworker/R-inet_]
root [kauditd]
root [khungtaskd]
root [oom_reaper]
root [kworker/R-write]
root [kworker/u5:2-events_power_efficient]
root [kcompactd0]
root [ksmd]
root [khugepaged]
root [kworker/R-kinte]
root [kworker/R-kbloc]
root [kworker/R-blkcg]
root [irq/9-acpi]
root [kworker/R-tpm_d]
root [kworker/R-ata_s]
root [kworker/R-md]
root [kworker/R-md_bi]
root [kworker/R-edac-]
root [kworker/R-devfr]
root [watchdogd]
root [kworker/R-quota]
root [kworker/1:1H-kblockd]
root [kswapd0]
root [ecryptfs-kthread]
root [kworker/R-kthro]
root [kworker/R-acpi_]
root [kworker/u6:2-events_unbound]
root [scsi_eh_0]
root [kworker/R-scsi_]
root [scsi_eh_1]
root [kworker/R-scsi_]
root [kworker/u4:1-ext4-rsv-conversion]
root [kworker/u4:2-ipv6_addrconf]
root [kworker/R-mld]
root [kworker/R-ipv6_]
root [kworker/R-kstrp]
root [kworker/u7:0]
root [kworker/u8:0]
root [kworker/u9:0]
root [kworker/R-crypt]
root [kworker/R-charg]
root [scsi_eh_2]
root [kworker/R-scsi_]
root [kworker/u5:3-events_unbound]
root [kworker/R-raid5]
root [kworker/0:2H-kblockd]
root [jbd2/sda2-8]
root [kworker/R-ext4-]
root /usr/lib/systemd/systemd-journald
root [kworker/R-kmpat]
root [kworker/R-kmpat]
root /sbin/multipathd
root /usr/lib/systemd/systemd-udevd
systemd+ /usr/lib/systemd/systemd-resolved
systemd+ /usr/lib/systemd/systemd-timesyncd
root [psimon]
systemd+ /usr/lib/systemd/systemd-networkd
root [kworker/R-cfg80]
message+ @dbus-daemon
polkitd /usr/lib/polkit-1/polkitd
root /usr/lib/systemd/systemd-logind
root /usr/libexec/udisks2/udisksd
syslog /usr/sbin/rsyslogd
root /usr/bin/python3
root /usr/sbin/ModemManager
root [irq/18-vmwgfx]
root [kworker/R-ttm]
root /usr/sbin/cron
root sshd:
root /bin/login
root /usr/libexec/upowerd
root [psimon]
jarvis /usr/lib/systemd/systemd
jarvis (sd-pam)
jarvis -bash
root [kworker/0:1-ata_sff]
root sshd:
jarvis sshd:
jarvis -bash
root [kworker/u5:4-events_unbound]
root [kworker/1:1-events]
root [kworker/u6:1-flush-8:0]
root [kworker/1:3-events]
root [kworker/u6:3-events_unbound]
jarvis ps
```

```
$ awk 'NR>1 && $2 ~ /^[0-9]+$/ {sum+=$3} END {print "Total CPU usage: " sum "%"}' processes.log
Total CPU usage: 0.2%
```

