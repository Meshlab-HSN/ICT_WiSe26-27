# Lecture 5 - Task 3: Data Manipulation

## Part A - Working with sed

### 1. Replace root with ROOT

Command: sed -i 's/root/ROOT/g' processes.log

Verification output:
```text
ROOT           1  0.8  0.3  22628 13628 ?        Ss   12:37   0:01 /sbin/init
ROOT           2  0.0  0.0      0     0 ?        S    12:37   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    12:37   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   12:37   0:00 [kworker/R-rcu_g]
ROOT           5  0.0  0.0      0     0 ?        I<   12:37   0:00 [kworker/R-rcu_p]
ROOT           6  0.0  0.0      0     0 ?        I<   12:37   0:00 [kworker/R-slub_]
ROOT           7  0.0  0.0      0     0 ?        I<   12:37   0:00 [kworker/R-netns]
ROOT           8  0.0  0.0      0     0 ?        I    12:37   0:00 [kworker/0:0-events]
ROOT           9  0.0  0.0      0     0 ?        I    12:37   0:00 [kworker/0:1-cgroup_bpf_destroy]
ROOT          10  0.0  0.0      0     0 ?        I<   12:37   0:00 [kworker/0:0H-kblockd]
```

### 2. Create users.txt and remove nologin entries

Commands:
```bash
cat /etc/passwd > users.txt
sed -i '/nologin/d' users.txt
```

Output:
```text
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:100:65534:DHCP Client Daemon,,,:/usr/lib/dhcpcd:/bin/false
pollinate:x:102:1::/var/cache/pollinate:/bin/false
tss:x:106:108:TPM software stack,,,:/var/lib/tpm:/bin/false
tempadmin:x:1001:1001:smith,1,1234567890,1234567890:/home/tempadmin:/bin/bash
smith:x:1000:1000:Smith:/home/smith:/bin/bash
```

## Part B - Working with awk

### 1. Display users with UID and GID

Command: awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd

Output:
```text
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
User sshd has UID 109 and GID 65534
User tempadmin has UID 1001 and GID 1001
User smith has UID 1000 and GID 1000
User dnsmasq has UID 999 and GID 65534
```

### 2. Extract username and process name

Command: awk 'NR > 1 && $1 ~ /^[A-Za-z_]/ {print $1, $11}' processes.log

Output:
```text
ROOT /sbin/init
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_g]
ROOT [kworker/R-rcu_p]
ROOT [kworker/R-slub_]
ROOT [kworker/R-netns]
ROOT [kworker/0:0-events]
ROOT [kworker/0:1-cgroup_bpf_destroy]
ROOT [kworker/0:0H-kblockd]
ROOT [kworker/u4:0-scsi_tmf_1]
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
ROOT [kworker/1:0-rcu_gp]
ROOT [kworker/1:0H-events_highpri]
ROOT [kworker/u5:0-events_power_efficient]
ROOT [kworker/u6:0-events_unbound]
ROOT [kdevtmpfs]
ROOT [kworker/R-inet_]
ROOT [kauditd]
ROOT [khungtaskd]
ROOT [oom_reaper]
ROOT [kworker/u5:1-events_unbound]
ROOT [kworker/u5:2-flush-252:0]
ROOT [kworker/R-write]
ROOT [kcompactd0]
ROOT [ksmd]
ROOT [khugepaged]
ROOT [kworker/R-kinte]
ROOT [kworker/R-kbloc]
ROOT [kworker/R-blkcg]
ROOT [irq/9-acpi]
ROOT [kworker/1:1-events]
ROOT [kworker/R-tpm_d]
ROOT [kworker/R-ata_s]
ROOT [kworker/R-md]
ROOT [kworker/R-md_bi]
ROOT [kworker/R-edac-]
ROOT [kworker/R-devfr]
ROOT [watchdogd]
ROOT [kworker/R-quota]
ROOT [kworker/0:1H-kblockd]
ROOT [kswapd0]
ROOT [ecryptfs-kthread]
ROOT [kworker/R-kthro]
ROOT [kworker/u6:1-events_unbound]
ROOT [kworker/R-acpi_]
ROOT [scsi_eh_0]
ROOT [kworker/R-scsi_]
ROOT [scsi_eh_1]
ROOT [kworker/R-scsi_]
ROOT [kworker/u4:1]
ROOT [kworker/u6:2-events_power_efficient]
ROOT [kworker/u4:2-ipv6_addrconf]
ROOT [kworker/u6:3]
ROOT [kworker/R-mld]
ROOT [kworker/1:1H-kblockd]
ROOT [kworker/R-ipv6_]
ROOT [kworker/u6:4]
ROOT [kworker/R-kstrp]
ROOT [kworker/u7:0]
ROOT [kworker/u8:0]
ROOT [kworker/u9:0]
ROOT [kworker/R-crypt]
ROOT [kworker/1:2-events]
ROOT [kworker/1:3-rcu_gp]
ROOT [kworker/R-charg]
ROOT [kworker/0:2-ata_sff]
ROOT [kworker/0:3-cgroup_free]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_]
ROOT [kworker/R-kdmfl]
ROOT [kworker/R-raid5]
ROOT [jbd2/dm-0-8]
ROOT [kworker/R-ext4-]
ROOT /usr/lib/systemd/systemd-journald
ROOT [kworker/R-kmpat]
ROOT [kworker/R-kmpat]
ROOT [kworker/u5:3-events_freezable_power_]
ROOT /sbin/multipathd
ROOT /usr/lib/systemd/systemd-udevd
ROOT [psimon]
ROOT [irq/18-vmwgfx]
ROOT [kworker/R-ttm]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-]
systemd+ /usr/lib/systemd/systemd-networkd
systemd+ /usr/lib/systemd/systemd-resolved
systemd+ /usr/lib/systemd/systemd-timesyncd
ROOT [kworker/R-cfg80]
message+ @dbus-daemon
polkitd /usr/lib/polkit-1/polkitd
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/udisks2/udisksd
syslog /usr/sbin/rsyslogd
ROOT /usr/sbin/NetworkManager
ROOT /usr/sbin/wpa_supplicant
ROOT /usr/sbin/ModemManager
ROOT [kworker/0:2H-kblockd]
ROOT /usr/bin/python3
ROOT /usr/sbin/cron
ROOT sshd:
ROOT /bin/login
ROOT [psimon]
smith /usr/lib/systemd/systemd
ROOT [kworker/0:4]
smith (sd-pam)
smith -bash
ROOT [kworker/R-tls-s]
smith ps
```

### 3. Calculate total CPU usage

Command: awk 'NR > 1 && $3 ~ /^[0-9.]+$/ {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log

Output:
```text
Total CPU usage: 1.50%
```
