# Lecture 5 - Task 3: Data Manipulation

## 1. Replace root with ROOT using sed
Command: `sed -i 's/^root/ROOT/' processes.log`
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.0  0.6  22004 13288 ?        Ss   19:18   0:04 /sbin/init
ROOT           2  0.0  0.0      0     0 ?        S    19:18   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    19:18   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   19:18   0:00 [kworker/R-rcu_g]
ROOT           5  0.0  0.0      0     0 ?        I<   19:18   0:00 [kworker/R-rcu_p]
ROOT           6  0.0  0.0      0     0 ?        I<   19:18   0:00 [kworker/R-slub_]
ROOT           7  0.0  0.0      0     0 ?        I<   19:18   0:00 [kworker/R-netns]
ROOT          11  0.0  0.0      0     0 ?        I    19:18   0:00 [kworker/u4:0-ipv6_addrconf]
ROOT          12  0.0  0.0      0     0 ?        I<   19:18   0:00 [kworker/R-mm_pe]
ROOT          13  0.0  0.0      0     0 ?        I    19:18   0:00 [rcu_tasks_kthread]
ROOT          14  0.0  0.0      0     0 ?        I    19:18   0:00 [rcu_tasks_rude_kthread]
ROOT          15  0.0  0.0      0     0 ?        I    19:18   0:00 [rcu_tasks_trace_kthread]
ROOT          16  0.0  0.0      0     0 ?        S    19:18   0:01 [ksoftirqd/0]
ROOT          17  0.0  0.0      0     0 ?        I    19:18   0:00 [rcu_preempt]
```

## 2. Create users.txt and remove nologin users
Commands:
```bash
cat /etc/passwd > users.txt
sed -i '/nologin/d' users.txt
```
Filtered users:
```text
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:100:65534:DHCP Client Daemon,,,:/usr/lib/dhcpcd:/bin/false
pollinate:x:102:1::/var/cache/pollinate:/bin/false
tss:x:106:108:TPM software stack,,,:/var/lib/tpm:/bin/false
barman03:x:1000:1000:barman03:/home/barman03:/bin/bash
sajib-barman:x:1001:1001:Sajib Barman,,,:/home/sajib-barman:/bin/bash
```

## 3. Print all users with UID and GID using awk

Command:
```bash
awk -F: '{printf "User %s has UID %s and GID %s.\n", $1, $3, $4}' /etc/passwd
```

Output:
```text
User root has UID 0 and GID 0.
User daemon has UID 1 and GID 1.
User bin has UID 2 and GID 2.
User sys has UID 3 and GID 3.
User sync has UID 4 and GID 65534.
User games has UID 5 and GID 60.
User man has UID 6 and GID 12.
User lp has UID 7 and GID 7.
User mail has UID 8 and GID 8.
User news has UID 9 and GID 9.
User uucp has UID 10 and GID 10.
User proxy has UID 13 and GID 13.
User www-data has UID 33 and GID 33.
User backup has UID 34 and GID 34.
User list has UID 38 and GID 38.
User irc has UID 39 and GID 39.
User _apt has UID 42 and GID 65534.
User nobody has UID 65534 and GID 65534.
User systemd-network has UID 998 and GID 998.
User systemd-timesync has UID 997 and GID 997.
User dhcpcd has UID 100 and GID 65534.
User messagebus has UID 101 and GID 102.
User systemd-resolve has UID 992 and GID 992.
User pollinate has UID 102 and GID 1.
User polkitd has UID 991 and GID 991.
User syslog has UID 103 and GID 104.
User uuidd has UID 104 and GID 105.
User tcpdump has UID 105 and GID 107.
User tss has UID 106 and GID 108.
User landscape has UID 107 and GID 109.
User fwupd-refresh has UID 989 and GID 989.
User usbmux has UID 108 and GID 46.
User barman03 has UID 1000 and GID 1000.
User sajib-barman has UID 1001 and GID 1001.
User sshd has UID 109 and GID 65534.
```


## 4.Print username and process name using awk

Command:
```bash

awk 'NR > 1 && NF >= 11 { cmd=$11; for (i=12; i<=NF; i++) cmd=cmd " " $i; print $1, cmd }' processes.log
```

Output:
```text
ROOT /sbin/init
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_g]
ROOT [kworker/R-rcu_p]
ROOT [kworker/R-slub_]
ROOT [kworker/R-netns]
ROOT [kworker/u4:0-ipv6_addrconf]
ROOT [kworker/R-mm_pe]
ROOT [rcu_tasks_kthread]
ROOT [rcu_tasks_rude_kthread]
ROOT [rcu_tasks_trace_kthread]
ROOT [ksoftirqd/0]
ROOT [rcu_preempt]
ROOT [migration/0]
ROOT [idle_inject/0]
ROOT [cpuhp/0]
ROOT [cpuhp/1]
ROOT [idle_inject/1]
ROOT [migration/1]
ROOT [ksoftirqd/1]
ROOT [kdevtmpfs]
ROOT [kworker/R-inet_]
ROOT [kauditd]
ROOT [khungtaskd]
ROOT [oom_reaper]
ROOT [kworker/R-write]
ROOT [kcompactd0]
ROOT [ksmd]
ROOT [khugepaged]
ROOT [kworker/R-kinte]
ROOT [kworker/R-kbloc]
ROOT [kworker/R-blkcg]
ROOT [irq/9-acpi]
ROOT [kworker/R-tpm_d]
ROOT [kworker/R-ata_s]
ROOT [kworker/R-md]
ROOT [kworker/R-md_bi]
ROOT [kworker/R-edac-]
ROOT [kworker/R-devfr]
ROOT [watchdogd]
ROOT [kworker/R-quota]
ROOT [kworker/1:1H-kblockd]
ROOT [kswapd0]
ROOT [ecryptfs-kthread]
ROOT [kworker/R-kthro]
ROOT [kworker/R-acpi_]
ROOT [scsi_eh_0]
ROOT [kworker/R-scsi_]
ROOT [scsi_eh_1]
ROOT [kworker/R-scsi_]
ROOT [kworker/u4:1]
ROOT [kworker/0:1H-kblockd]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_]
ROOT [kworker/R-kstrp]
ROOT [kworker/u7:0]
ROOT [kworker/u8:0]
ROOT [kworker/u9:0]
ROOT [kworker/R-crypt]
ROOT [kworker/R-charg]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_]
ROOT [kworker/R-raid5]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-]
ROOT /usr/lib/systemd/systemd-journald
ROOT [kworker/R-kmpat]
ROOT [kworker/R-kmpat]
ROOT /sbin/multipathd -d -s
ROOT /usr/lib/systemd/systemd-udevd
systemd+ /usr/lib/systemd/systemd-resolved
systemd+ /usr/lib/systemd/systemd-timesyncd
ROOT [psimon]
systemd+ /usr/lib/systemd/systemd-networkd
ROOT [kworker/R-cfg80]
message+ @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd /usr/lib/polkit-1/polkitd --no-debug
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/udisks2/udisksd
syslog /usr/sbin/rsyslogd -n -iNONE
ROOT /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
ROOT /usr/sbin/ModemManager
ROOT [irq/18-vmwgfx]
ROOT /usr/sbin/cron -f -P
ROOT [kworker/R-ttm]
ROOT sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
ROOT /bin/login -p --
ROOT [psimon]
sajib-b+ /usr/lib/systemd/systemd --user
sajib-b+ (sd-pam)
sajib-b+ -bash
ROOT [kworker/R-tls-s]
ROOT [kworker/1:2H]
ROOT /usr/libexec/fwupd/fwupd
ROOT /usr/libexec/upowerd
ROOT [kworker/u6:1-events_unbound]
ROOT [kworker/u5:1-events_power_efficient]
ROOT [kworker/1:1-events]
ROOT [kworker/u6:0-events_unbound]
ROOT [kworker/0:0H-kblockd]
ROOT [kworker/u5:2-events_power_efficient]
ROOT [kworker/0:0-events]
ROOT [kworker/u5:3-events_unbound]
ROOT [kworker/1:0-events]
ROOT [kworker/u6:2-flush-8:0]
ROOT [kworker/0:1-events]
ROOT sshd: sajib-barman [priv]
sajib-b+ sshd: sajib-barman@pts/0
sajib-b+ -bash
ROOT [kworker/u5:0-flush-8:0]
sajib-b+ ps aux
112
```


## 5. Sum of CPU usage using awk

Command:
```bash
awk 'NR > 1 {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log
```

Output:
```text
Total CPU usage: 108.70%
``
