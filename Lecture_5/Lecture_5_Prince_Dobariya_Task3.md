# Lecture 5 - Task 3

## Task 3.1 - sed: Replace root with ROOT

Command: sed 's/\<root\>/ROOT/g' processes.log | head -n 10

Output:

USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.0  0.6  22572 13664 ?        Ss   05:41   0:01 /sbin/init splash noprompt noshell automatic-ubiquity
ROOT           2  0.0  0.0      0     0 ?        S    05:41   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    05:41   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   05:41   0:00 [kworker/R-rcu_g]
ROOT           5  0.0  0.0      0     0 ?        I<   05:41   0:00 [kworker/R-rcu_p]
ROOT           6  0.0  0.0      0     0 ?        I<   05:41   0:00 [kworker/R-slub_]
ROOT           7  0.0  0.0      0     0 ?        I<   05:41   0:00 [kworker/R-netns]
ROOT          12  0.0  0.0      0     0 ?        I<   05:41   0:00 [kworker/R-mm_pe]
ROOT          13  0.0  0.0      0     0 ?        I    05:41   0:00 [rcu_tasks_kthread]

## Task 3.2 - Remove nologin users

Command: sed -i "/nologin/d" users.txt

Verification: grep -n "nologin" users.txt (no matches)

Remaining users:
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:100:65534:DHCP Client Daemon,,,:/usr/lib/dhcpcd:/bin/false
pollinate:x:102:1::/var/cache/pollinate:/bin/false
tss:x:106:108:TPM software stack,,,:/var/lib/tpm:/bin/false
prince:x:1000:1000:prince:/home/prince:/bin/bash

## Task 3.3 - AWK: Display usernames, UIDs and GIDs

Command: awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd

output:
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
User prince has UID 1000 and GID 1000
User sshd has UID 109 and GID 65534


## Task 3.4 - AWK: Username and processes name

Command: awk 'NR>1 && NF>=11 {print $1, $11}' processes.log

Output:
root /sbin/init
root [kthreadd]
root [pool_workqueue_release]
root [kworker/R-rcu_g]
root [kworker/R-rcu_p]
root [kworker/R-slub_]
root [kworker/R-netns]
root [kworker/R-mm_pe]
root [rcu_tasks_kthread]
root [rcu_tasks_rude_kthread]
root [rcu_tasks_trace_kthread]
root [ksoftirqd/0]
root [rcu_preempt]
root [migration/0]
root [idle_inject/0]
root [cpuhp/0]
root [kdevtmpfs]
root [kworker/R-inet_]
root [kauditd]
root [khungtaskd]
root [oom_reaper]
root [kworker/R-write]
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
root [kswapd0]
root [ecryptfs-kthread]
root [kworker/R-kthro]
root [kworker/R-acpi_]
root [scsi_eh_0]
root [kworker/R-scsi_]
root [scsi_eh_1]
root [kworker/R-scsi_]
root [kworker/R-mld]
root [kworker/R-ipv6_]
root [kworker/R-kstrp]
root [kworker/u3:0]
root [kworker/R-crypt]
root [kworker/R-charg]
root [scsi_eh_2]
root [kworker/R-scsi_]
root [kworker/R-raid5]
root [jbd2/sda2-8]
root [kworker/R-ext4-]
root [kworker/R-kmpat]
root [kworker/R-kmpat]
root /sbin/multipathd
root /usr/lib/systemd/systemd-udevd
root [psimon]
systemd+ /usr/lib/systemd/systemd-networkd
systemd+ /usr/lib/systemd/systemd-resolved
systemd+ /usr/lib/systemd/systemd-timesyncd
root [kworker/R-cfg80]
root [irq/18-vmwgfx]
root [kworker/R-ttm]
root /usr/sbin/cron
message+ @dbus-daemon
polkitd /usr/lib/polkit-1/polkitd
root /usr/lib/systemd/systemd-logind
root /usr/libexec/udisks2/udisksd
root sshd:
root /usr/bin/python3
root /usr/sbin/ModemManager
root /bin/login
syslog /usr/sbin/rsyslogd
prince /usr/lib/systemd/systemd
prince (sd-pam)
prince -bash
root /usr/libexec/fwupd/fwupd
root /usr/libexec/upowerd
root [kworker/R-tls-s]
root [psimon]
root /usr/lib/systemd/systemd-journald
root [kworker/0:1H-kblockd]
root /bin/login
prince -bash
root [kworker/u2:4-events_unbound]
root [kworker/0:0-events]
root [kworker/u2:2-events_unbound]
root [kworker/u2:1-events_power_efficient]
root [kworker/0:0H]
root [kworker/0:1]
root [kworker/u2:0-events_power_efficient]
prince ps

## Task 3.5 - AWK: Total CPU usage

command: awk 'NR>1 && NF>=11 {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log

Output:
Total CPU usage: 0.70%
