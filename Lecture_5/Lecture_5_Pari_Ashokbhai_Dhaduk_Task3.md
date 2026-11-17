# Lecture 5 - Task 3: Data Manipulation

## Working with sed

### Task 3.1 - Replace root with ROOT
```bash
sed -i 's/root/ROOT/g' processes.log
```
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.0  0.3  22980 14024 ?        Ss   Nov17   0:02 /usr/lib/systemd/systemd --system --deserialize=109 splash
ROOT           2  0.0  0.0      0     0 ?        S    Nov17   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    Nov17   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   Nov17   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   Nov17   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   Nov17   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   Nov17   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   Nov17   0:00 [kworker/R-netns]
ROOT          10  0.0  0.0      0     0 ?        I<   Nov17   0:00 [kworker/0:0H-kblockd]
```

### Task 3.2 - Remove users with nologin
```bash
cp /etc/passwd users.txt
sed -i '/nologin/d' users.txt
```
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
pari:x:1000:1000:Pari:/home/pari:/bin/bash
```

## Working with awk

### Task 3.3 - Print users with UID and GID
```bash
awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd
```
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
User pari has UID 1000 and GID 1000
User sshd has UID 122 and GID 65534
```

### Task 3.4 - Print username and process name
```bash
awk 'NR>1 && $2 ~ /^[0-9]+$/ {print $1, $11}' processes.log
```
```text
ROOT /usr/lib/systemd/systemd
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_gp]
ROOT [kworker/R-sync_wq]
ROOT [kworker/R-kvfree_rcu_reclaim]
ROOT [kworker/R-slub_flushwq]
ROOT [kworker/R-netns]
ROOT [kworker/0:0H-kblockd]
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
ROOT [kworker/1:0H-kblockd]
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
ROOT [kworker/u9:3-flush-8:0]
ROOT [kworker/0:1H-kblockd]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/u8:1-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/u11:0]
ROOT [kworker/u12:0-ttm]
ROOT [kworker/u13:0-ttm]
ROOT [kworker/R-charger_manager]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_tmf_2]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT /usr/lib/systemd/systemd-journald
ROOT /usr/lib/systemd/systemd-udevd
ROOT [psimon]
systemd+ /usr/lib/systemd/systemd-oomd
systemd+ /usr/lib/systemd/systemd-resolved
systemd+ /usr/lib/systemd/systemd-timesyncd
avahi avahi-daemon:
message+ @dbus-daemon
gnome-r+ /usr/libexec/gnome-remote-desktop-daemon
polkitd /usr/lib/polkit-1/polkitd
ROOT /usr/libexec/power-profiles-daemon
ROOT /usr/lib/snapd/snapd
ROOT [irq/18-vmwgfx]
ROOT [kworker/R-ttm]
ROOT /usr/libexec/accounts-daemon
ROOT /usr/sbin/cron
ROOT /usr/libexec/switcheroo-control
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/udisks2/udisksd
avahi avahi-daemon:
syslog /usr/sbin/rsyslogd
ROOT /usr/sbin/NetworkManager
ROOT /usr/sbin/wpa_supplicant
ROOT /usr/sbin/ModemManager
ROOT /usr/bin/python3
ROOT sshd:
ROOT /usr/sbin/gdm3
kernoops /usr/sbin/kerneloops
kernoops /usr/sbin/kerneloops
rtkit /usr/libexec/rtkit-daemon
colord /usr/libexec/colord
ROOT /usr/libexec/upowerd
ROOT [kworker/u13:1]
ROOT gdm-session-worker
pari /usr/lib/systemd/systemd
pari (sd-pam)
pari /usr/bin/pipewire
pari /usr/bin/pipewire
pari /usr/bin/wireplumber
pari /usr/bin/pipewire-pulse
pari /usr/bin/gnome-keyring-daemon
pari /usr/bin/dbus-daemon
pari /usr/libexec/xdg-document-portal
pari /usr/libexec/gdm-wayland-session
pari /usr/libexec/gnome-session-binary
pari /usr/libexec/xdg-permission-store
ROOT fusermount3
pari /usr/libexec/gcr-ssh-agent
pari /usr/libexec/gnome-session-ctl
pari /usr/libexec/gvfsd
pari /usr/libexec/gvfsd-fuse
pari /usr/libexec/gnome-session-binary
pari /usr/libexec/at-spi-bus-launcher
pari /usr/bin/gnome-shell
pari /usr/bin/dbus-daemon
pari /usr/libexec/at-spi2-registryd
pari /usr/libexec/gnome-shell-calendar-server
pari /usr/libexec/evolution-source-registry
pari /usr/bin/ibus-daemon
pari /usr/libexec/gsd-a11y-settings
pari /usr/bin/gjs
pari /usr/libexec/gsd-color
pari /usr/libexec/gsd-datetime
pari /usr/libexec/gsd-housekeeping
pari /usr/libexec/gsd-keyboard
pari /usr/libexec/gsd-media-keys
pari /usr/libexec/gsd-power
pari /usr/libexec/gsd-print-notifications
pari /usr/libexec/gsd-rfkill
pari /usr/libexec/gsd-screensaver-proxy
pari /usr/libexec/gsd-sharing
pari /usr/libexec/gsd-smartcard
pari /usr/libexec/gsd-sound
pari /usr/libexec/gsd-wacom
pari /usr/libexec/evolution-data-server/evolution-alarm-notify
pari /usr/libexec/gsd-disk-utility-notify
pari /usr/libexec/gvfs-udisks2-volume-monitor
pari /usr/libexec/ibus-dconf
pari /usr/libexec/gsd-printer
pari /usr/libexec/ibus-extension-gtk3
pari /usr/libexec/ibus-portal
pari /usr/libexec/goa-daemon
pari /usr/libexec/goa-identity-service
pari /usr/libexec/evolution-calendar-factory
pari /usr/libexec/gvfs-gphoto2-volume-monitor
pari /usr/libexec/gvfs-mtp-volume-monitor
pari /usr/libexec/gvfs-afc-volume-monitor
pari /usr/libexec/evolution-addressbook-factory
pari /usr/libexec/gvfs-goa-volume-monitor
pari /usr/libexec/ibus-engine-simple
pari /usr/libexec/dconf-service
pari /usr/bin/gjs
pari /usr/libexec/gvfsd-trash
pari /usr/libexec/tracker-miner-fs-3
ROOT [kworker/u12:1]
pari /usr/libexec/xdg-desktop-portal
pari /usr/libexec/xdg-desktop-portal-gnome
pari /usr/libexec/gvfsd-metadata
pari /usr/libexec/xdg-desktop-portal-gtk
pari /snap/snapd-desktop-integration/391/usr/bin/user-session-helper
pari /snap/snapd-desktop-integration/391/usr/bin/snapd-desktop-integration
pari /usr/libexec/gnome-terminal-server
pari /usr/bin/Xwayland
pari bash
pari /usr/libexec/gsd-xsettings
pari /usr/libexec/ibus-x11
pari /usr/libexec/mutter-x11-frames
ROOT sudo
pari /usr/bin/update-notifier
ROOT sudo
ROOT systemctl
ROOT less
ROOT /usr/libexec/fwupd/fwupd
ROOT [kworker/u10:0-ext4-rsv-conversion]
ROOT sshd:
pari sshd:
pari -bash
ROOT [kworker/0:2-events]
ROOT [kworker/u10:1-flush-8:0]
ROOT /usr/sbin/cupsd
lp /usr/lib/cups/notifier/dbus
cups-br+ /usr/sbin/cups-browsed
ROOT [kworker/u9:1-events_power_efficient]
ROOT [kworker/1:0-events]
ROOT /usr/libexec/packagekitd
ROOT [kworker/u9:0-events_unbound]
ROOT [kworker/u10:3-events_unbound]
ROOT [kworker/1:1-events]
ROOT [psimon]
ROOT [kworker/0:0-cgroup_free]
ROOT [kworker/1:2H]
ROOT [kworker/u10:4-flush-8:0]
pari ps
```

### Task 3.5 - Calculate total CPU usage
```bash
awk 'NR>1 && $2 ~ /^[0-9]+$/ {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log
```
```text
Total CPU usage: 100.70%
```
