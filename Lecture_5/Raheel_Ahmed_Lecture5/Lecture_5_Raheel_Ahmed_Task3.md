# Lecture 5 – Task 3

## 1. Replace root with ROOT in processes.log

Command:

```bash
sed -i 's/root/ROOT/g' processes.log
```

Output:

```text
2:ROOT           1  0.0  0.7  23580 14852 ?        Ss   11:43   0:03 /sbin/init splash
3:ROOT           2  0.0  0.0      0     0 ?        S    11:43   0:00 [kthreadd]
4:ROOT           3  0.0  0.0      0     0 ?        S    11:43   0:00 [pool_workqueue_release]
5:ROOT           4  0.0  0.0      0     0 ?        I<   11:43   0:00 [kworker/R-rcu_gp]
6:ROOT           5  0.0  0.0      0     0 ?        I<   11:43   0:00 [kworker/R-sync_wq]
7:ROOT           6  0.0  0.0      0     0 ?        I<   11:43   0:00 [kworker/R-kvfree_rcu_reclaim]
8:ROOT           7  0.0  0.0      0     0 ?        I<   11:43   0:00 [kworker/R-slub_flushwq]
9:ROOT           8  0.0  0.0      0     0 ?        I<   11:43   0:00 [kworker/R-netns]
10:ROOT          10  0.0  0.0      0     0 ?        I<   11:43   0:00 [kworker/0:0H-kblockd]
11:ROOT          11  0.4  0.0      0     0 ?        I    11:43   0:35 [kworker/0:1-mm_percpu_wq]
```

## 2. Remove nologin entries from /etc/passwd

Command:

```bash
sed '/nologin/d' /etc/passwd > users.txt
```

Output (first 10 lines of users.txt):

```text
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:100:65534:DHCP Client Daemon,,,:/usr/lib/dhcpcd:/bin/false
tss:x:105:105:TPM software stack,,,:/var/lib/tpm:/bin/false
whoopsie:x:107:109::/nonexistent:/bin/false
speech-dispatcher:x:111:29:Speech Dispatcher,,,:/run/speech-dispatcher:/bin/false
hplip:x:116:7:HPLIP system user,,,:/run/hplip:/bin/false
gnome-initial-setup:x:119:65534::/run/gnome-initial-setup/:/bin/false
gdm:x:120:121:Gnome Display Manager:/var/lib/gdm3:/bin/false
raheel-ahmed:x:1000:1000:raheel ahmed:/home/raheel-ahmed:/bin/bash
```

Check for remaining nologin entries:

```text
```

## 3. Display usernames, UIDs and GIDs

Command:

```bash
awk -F: '{printf "User %s has UID %s and GID %s\n", $1, $3, $4}' /etc/passwd
```

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
User systemd-timesync has UID 996 and GID 996
User dhcpcd has UID 100 and GID 65534
User messagebus has UID 101 and GID 101
User syslog has UID 102 and GID 102
User systemd-resolve has UID 991 and GID 991
User uuidd has UID 103 and GID 103
User usbmux has UID 104 and GID 46
User tss has UID 105 and GID 105
User systemd-oom has UID 990 and GID 990
User kernoops has UID 106 and GID 65534
User whoopsie has UID 107 and GID 109
User dnsmasq has UID 999 and GID 65534
User avahi has UID 108 and GID 111
User tcpdump has UID 109 and GID 112
User sssd has UID 110 and GID 113
User speech-dispatcher has UID 111 and GID 29
User cups-pk-helper has UID 112 and GID 114
User fwupd-refresh has UID 989 and GID 989
User saned has UID 113 and GID 116
User geoclue has UID 114 and GID 117
User cups-browsed has UID 115 and GID 114
User hplip has UID 116 and GID 7
User gnome-remote-desktop has UID 988 and GID 988
User polkitd has UID 987 and GID 987
User rtkit has UID 117 and GID 119
User colord has UID 118 and GID 120
User gnome-initial-setup has UID 119 and GID 65534
User gdm has UID 120 and GID 121
User nm-openvpn has UID 121 and GID 122
User raheel-ahmed has UID 1000 and GID 1000
User lightdm has UID 122 and GID 124
User sshd has UID 123 and GID 65534
```

## 4. Display usernames and process names

Command:

```bash
awk 'NR > 1 && $2 ~ /^[0-9]+$/ {print "Username:", $1, "| Process:", $11}' processes.log
```

Output:

```text
Username: ROOT | Process: /sbin/init
Username: ROOT | Process: [kthreadd]
Username: ROOT | Process: [pool_workqueue_release]
Username: ROOT | Process: [kworker/R-rcu_gp]
Username: ROOT | Process: [kworker/R-sync_wq]
Username: ROOT | Process: [kworker/R-kvfree_rcu_reclaim]
Username: ROOT | Process: [kworker/R-slub_flushwq]
Username: ROOT | Process: [kworker/R-netns]
Username: ROOT | Process: [kworker/0:0H-kblockd]
Username: ROOT | Process: [kworker/0:1-mm_percpu_wq]
Username: ROOT | Process: [kworker/R-mm_percpu_wq]
Username: ROOT | Process: [ksoftirqd/0]
Username: ROOT | Process: [rcu_preempt]
Username: ROOT | Process: [rcu_exp_par_gp_kthread_worker/0]
Username: ROOT | Process: [rcu_exp_gp_kthread_worker]
Username: ROOT | Process: [migration/0]
Username: ROOT | Process: [kprobe-optimizer]
Username: ROOT | Process: [idle_inject/0]
Username: ROOT | Process: [cpuhp/0]
Username: ROOT | Process: [kdevtmpfs]
Username: ROOT | Process: [kworker/R-inet_frag_wq]
Username: ROOT | Process: [rcu_tasks_kthread]
Username: ROOT | Process: [rcu_tasks_rude_kthread]
Username: ROOT | Process: [kauditd]
Username: ROOT | Process: [khungtaskd]
Username: ROOT | Process: [oom_reaper]
Username: ROOT | Process: [kworker/u4:1-events_unbound]
Username: ROOT | Process: [kworker/R-writeback]
Username: ROOT | Process: [kcompactd0]
Username: ROOT | Process: [ksmd]
Username: ROOT | Process: [khugepaged]
Username: ROOT | Process: [kworker/R-kblockd]
Username: ROOT | Process: [kworker/R-blkcg_punt_bio]
Username: ROOT | Process: [kworker/R-kintegrityd]
Username: ROOT | Process: [irq/9-acpi]
Username: ROOT | Process: [kworker/R-tpm_dev_wq]
Username: ROOT | Process: [kworker/R-ata_sff]
Username: ROOT | Process: [kworker/R-md_bitmap]
Username: ROOT | Process: [kworker/R-md_llbitmap_io]
Username: ROOT | Process: [kworker/R-md_llbitmap_unplug]
Username: ROOT | Process: [kworker/R-edac-poller]
Username: ROOT | Process: [kworker/R-devfreq_wq]
Username: ROOT | Process: [watchdogd]
Username: ROOT | Process: [kworker/R-quota_events_unbound]
Username: ROOT | Process: [kswapd0]
Username: ROOT | Process: [ecryptfs-kthread]
Username: ROOT | Process: [kworker/R-kthrotld]
Username: ROOT | Process: [kworker/R-acpi_thermal_pm]
Username: ROOT | Process: [scsi_eh_0]
Username: ROOT | Process: [kworker/R-scsi_tmf_0]
Username: ROOT | Process: [scsi_eh_1]
Username: ROOT | Process: [kworker/R-scsi_tmf_1]
Username: ROOT | Process: [kworker/R-mld]
Username: ROOT | Process: [kworker/R-ipv6_addrconf]
Username: ROOT | Process: [kworker/R-kstrp]
Username: ROOT | Process: [kworker/u5:0]
Username: ROOT | Process: [kworker/0:1H]
Username: ROOT | Process: [kworker/R-charger_manager]
Username: ROOT | Process: [scsi_eh_2]
Username: ROOT | Process: [kworker/R-scsi_tmf_2]
Username: ROOT | Process: [jbd2/sda2-8]
Username: ROOT | Process: [kworker/R-ext4-rsv-conversion]
Username: ROOT | Process: /usr/lib/systemd/systemd-journald
Username: ROOT | Process: /usr/lib/systemd/systemd-udevd
Username: ROOT | Process: [psimon]
Username: systemd+ | Process: /usr/lib/systemd/systemd-oomd
Username: systemd+ | Process: /usr/lib/systemd/systemd-resolved
Username: ROOT | Process: [irq/18-vmwgfx]
Username: ROOT | Process: [kworker/R-ttm]
Username: systemd+ | Process: /usr/lib/systemd/systemd-timesyncd
Username: avahi | Process: avahi-daemon:
Username: message+ | Process: @dbus-daemon
Username: polkitd | Process: /usr/lib/polkit-1/polkitd
Username: ROOT | Process: /snap/snapd/current/usr/lib/snapd/snapd
Username: ROOT | Process: /usr/sbin/cron
Username: ROOT | Process: /usr/lib/systemd/systemd-logind
Username: avahi | Process: avahi-daemon:
Username: ROOT | Process: /usr/sbin/NetworkManager
Username: ROOT | Process: /usr/sbin/wpa_supplicant
Username: syslog | Process: /usr/sbin/rsyslogd
Username: ROOT | Process: /usr/sbin/VBoxService
Username: ROOT | Process: /usr/sbin/ModemManager
Username: ROOT | Process: /usr/sbin/cupsd
Username: ROOT | Process: /usr/bin/python3
Username: ROOT | Process: sshd:
Username: ROOT | Process: /bin/login
Username: cups-br+ | Process: /usr/sbin/cups-browsed
Username: kernoops | Process: /usr/sbin/kerneloops
Username: kernoops | Process: /usr/sbin/kerneloops
Username: raheel-+ | Process: /usr/lib/systemd/systemd
Username: raheel-+ | Process: (sd-pam)
Username: raheel-+ | Process: /usr/bin/pipewire
Username: raheel-+ | Process: /usr/bin/pipewire
Username: raheel-+ | Process: /snap/snapd-desktop-integration/315/usr/bin/snapd-desktop-integration
Username: raheel-+ | Process: /usr/bin/wireplumber
Username: raheel-+ | Process: -bash
Username: raheel-+ | Process: /usr/bin/pipewire-pulse
Username: raheel-+ | Process: /usr/bin/dbus-daemon
Username: raheel-+ | Process: /usr/libexec/xdg-document-portal
Username: rtkit | Process: /usr/libexec/rtkit-daemon
Username: raheel-+ | Process: /usr/libexec/xdg-permission-store
Username: ROOT | Process: fusermount3
Username: raheel-+ | Process: /snap/snapd-desktop-integration/315/usr/bin/snapd-desktop-integration
Username: ROOT | Process: /usr/libexec/fwupd/fwupd
Username: ROOT | Process: /usr/libexec/upowerd
Username: ROOT | Process: /usr/libexec/udisks2/udisksd
Username: ROOT | Process: [kworker/u4:4-events_unbound]
Username: ROOT | Process: [kworker/u4:0-events_unbound]
Username: ROOT | Process: [kworker/0:0-cgroup_release]
Username: ROOT | Process: [kworker/u4:2-events_unbound]
Username: ROOT | Process: sshd:
Username: raheel-+ | Process: sshd:
Username: raheel-+ | Process: -bash
Username: ROOT | Process: [kworker/u4:3]
Username: ROOT | Process: [psimon]
Username: ROOT | Process: /usr/libexec/packagekitd
Username: ROOT | Process: [kworker/0:2]
Username: raheel-+ | Process: ps
```

## 5. Calculate total CPU usage

Command:

```bash
awk 'NR > 1 && $2 ~ /^[0-9]+$/ {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log
```

Output:

```text
Total CPU usage: 0.40%
```
