# Lecture 5 – Task 3: Data Manipulation

## Part A – Working with sed

### Exercise 1 – Replace root with ROOT

Command:
```bash
sed -i 's/root/ROOT/g' processes.log
grep ROOT processes.log | head
```

Output:
ROOT           1  0.1  0.2  26596 11336 ?        Ss   09:11   0:21 /usr/lib/systemd/systemd --switched-ROOT --system --deserialize=55
ROOT           2  0.0  0.0      0     0 ?        S    09:11   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    09:11   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   09:11   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   09:11   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   09:11   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   09:11   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   09:11   0:00 [kworker/R-netns]
ROOT          12  0.0  0.0      0     0 ?        I    09:11   0:00 [kworker/u8:0-ipv6_addrconf]
ROOT          13  0.0  0.0      0     0 ?        I<   09:11   0:00 [kworker/R-mm_percpu_wq]


### Exercise 2 – Remove nologin users

Commands:
```bash
cp /etc/passwd users.txt
sed -i '/nologin/d' users.txt
cat users.txt
```

Output:
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:996:996:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
whoopsie:x:102:108::/nonexistent:/bin/false
speech-dispatcher:x:105:29:Speech Dispatcher:/run/speech-dispatcher:/bin/false
hplip:x:111:7:HPLIP system user:/run/hplip:/bin/false
gdm:x:975:975:Gnome Display Manager:/var/lib/gdm3:/bin/false
rahul-mg:x:1000:1000:rahul-mg:/home/rahul-mg:/bin/bash
vboxadd:x:997:1::/var/run/vboxadd:/bin/false

## Part B – Working with awk

### Exercise 1 – Display usernames, UID and GID

Command:
```bash
awk -F: '{printf "User %s has UID %s and GID %s\n", $1, $3, $4}' /etc/passwd
```

Output:
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
User dhcpcd has UID 996 and GID 996
User messagebus has UID 995 and GID 995
User syslog has UID 100 and GID 101
User systemd-resolve has UID 989 and GID 989
User _chrony has UID 988 and GID 988
User tss has UID 987 and GID 987
User uuidd has UID 101 and GID 105
User systemd-oom has UID 986 and GID 986
User whoopsie has UID 102 and GID 108
User dnsmasq has UID 999 and GID 65534
User avahi has UID 103 and GID 109
User nm-openvpn has UID 984 and GID 984
User tcpdump has UID 983 and GID 983
User sssd has UID 104 and GID 110
User speech-dispatcher has UID 105 and GID 29
User usbmux has UID 106 and GID 46
User cups-pk-helper has UID 107 and GID 111
User fwupd-refresh has UID 982 and GID 982
User saned has UID 108 and GID 112
User geoclue has UID 109 and GID 113
User cups-browsed has UID 110 and GID 111
User pipewire has UID 981 and GID 981
User hplip has UID 111 and GID 7
User gnome-remote-desktop has UID 980 and GID 980
User polkitd has UID 979 and GID 979
User rtkit has UID 978 and GID 978
User colord has UID 977 and GID 977
User gdm has UID 975 and GID 975
User rahul-mg has UID 1000 and GID 1000
User vboxadd has UID 997 and GID 1


### Exercise 2 – Display process owner and command

Command:
```bash
awk 'NF >= 11 {print $1, $11}' processes.log
```

Output:
USER COMMAND
ROOT /usr/lib/systemd/systemd
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_gp]
ROOT [kworker/R-sync_wq]
ROOT [kworker/R-kvfree_rcu_reclaim]
ROOT [kworker/R-slub_flushwq]
ROOT [kworker/R-netns]
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
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/u8:1-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/0:1H-kblockd]
ROOT [kworker/u11:0]
ROOT [kworker/u12:0-ttm]
ROOT [kworker/u13:0-ttm]
ROOT [kworker/R-charger_manager]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_tmf_2]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT /usr/lib/systemd/systemd-journald
systemd+ /usr/lib/systemd/systemd-oomd
systemd+ /usr/lib/systemd/systemd-resolved
ROOT /usr/lib/systemd/systemd-udevd
ROOT [psimon]
ROOT [irq/18-vmwgfx]
ROOT [kworker/R-ttm]
avahi avahi-daemon:
ROOT /bin/sh
message+ @dbus-daemon
ROOT /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
ROOT /usr/lib/snapd/snapd
ROOT /usr/libexec/accounts-daemon
ROOT /usr/sbin/cron
ROOT /usr/libexec/switcheroo-control
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/udisks2/udisksd
syslog /usr/sbin/rsyslogd
avahi avahi-daemon:
_chrony /usr/sbin/chronyd
ROOT /usr/sbin/NetworkManager
_chrony /usr/sbin/chronyd
ROOT /usr/sbin/wpa_supplicant
ROOT /usr/sbin/ModemManager
ROOT /usr/sbin/cupsd
ROOT /usr/bin/python3
cups-br+ /usr/sbin/cups-browsed
ROOT [kworker/R-iprt-VBoxWQueue]
ROOT /usr/bin/VBoxDRMClient
ROOT /usr/sbin/VBoxService
ROOT /usr/libexec/power-profiles-daemon
ROOT /usr/sbin/gdm3
rtkit /usr/libexec/rtkit-daemon
colord /usr/libexec/colord
ROOT /usr/libexec/upowerd
ROOT gdm-session-worker
rahul-mg /usr/lib/systemd/systemd
rahul-mg (sd-pam)
rahul-mg /usr/bin/dbus-daemon
rahul-mg /usr/bin/pipewire
rahul-mg /usr/bin/gnome-keyring-daemon
rahul-mg /usr/bin/mpris-proxy
rahul-mg /usr/bin/wireplumber
rahul-mg /usr/bin/pipewire
rahul-mg /usr/bin/pipewire-pulse
rahul-mg /usr/libexec/gdm-wayland-session
rahul-mg /usr/libexec/xdg-document-portal
rahul-mg /usr/libexec/gnome-session-init-worker
rahul-mg /usr/libexec/xdg-permission-store
ROOT fusermount3
rahul-mg /usr/libexec/gcr-ssh-agent
rahul-mg /usr/libexec/gnome-session-ctl
rahul-mg /usr/bin/ssh-agent
rahul-mg /usr/libexec/gvfsd
rahul-mg /usr/libexec/gvfsd-fuse
rahul-mg /usr/libexec/gnome-session-service
rahul-mg /usr/bin/gnome-shell
rahul-mg /usr/libexec/at-spi-bus-launcher
rahul-mg /usr/bin/dbus-daemon
rahul-mg /usr/libexec/at-spi2-registryd
rahul-mg /usr/libexec/gnome-shell-calendar-server
rahul-mg /usr/libexec/evolution-source-registry
rahul-mg /usr/libexec/dconf-service
rahul-mg /usr/bin/gjs
rahul-mg /usr/bin/ibus-daemon
rahul-mg /usr/libexec/gsd-a11y-settings
rahul-mg /usr/libexec/gsd-color
rahul-mg /usr/libexec/gsd-datetime
rahul-mg /usr/libexec/gsd-housekeeping
rahul-mg /usr/libexec/gsd-keyboard
rahul-mg /usr/libexec/gsd-media-keys
rahul-mg /usr/libexec/gsd-power
rahul-mg /usr/libexec/gsd-print-notifications
rahul-mg /usr/libexec/gsd-rfkill
rahul-mg /usr/libexec/gsd-screensaver-proxy
rahul-mg /usr/libexec/gsd-sharing
rahul-mg /usr/libexec/gsd-smartcard
rahul-mg /usr/libexec/gsd-sound
rahul-mg /usr/libexec/gsd-usb-protection
rahul-mg /usr/libexec/gsd-wwan
rahul-mg /usr/bin/update-notifier
rahul-mg /usr/libexec/evolution-data-server/evolution-alarm-notify
rahul-mg /usr/libexec/gsd-disk-utility-notify
rahul-mg /usr/libexec/goa-daemon
rahul-mg /usr/libexec/gsd-printer
rahul-mg /usr/bin/gjs
rahul-mg /usr/libexec/goa-identity-service
rahul-mg /usr/bin/Xwayland
rahul-mg /usr/libexec/evolution-calendar-factory
rahul-mg /usr/libexec/gvfs-udisks2-volume-monitor
rahul-mg /usr/libexec/evolution-addressbook-factory
rahul-mg /usr/libexec/gvfsd-metadata
rahul-mg /usr/libexec/ibus-dconf
rahul-mg /usr/libexec/ibus-extension-gtk3
rahul-mg /usr/libexec/localsearch-3
rahul-mg /usr/libexec/ibus-portal
rahul-mg /usr/libexec/xdg-desktop-portal
rahul-mg /usr/libexec/gvfs-afc-volume-monitor
rahul-mg /usr/libexec/xdg-desktop-portal-gnome
rahul-mg /usr/libexec/gvfs-mtp-volume-monitor
rahul-mg /usr/libexec/gvfs-gphoto2-volume-monitor
rahul-mg /usr/libexec/gvfs-goa-volume-monitor
rahul-mg /usr/libexec/ibus-engine-simple
rahul-mg /usr/libexec/gvfsd-trash
rahul-mg /usr/libexec/gsd-xsettings
rahul-mg /usr/libexec/mutter-x11-frames
rahul-mg /usr/bin/VBoxClient
rahul-mg /usr/bin/VBoxClient
rahul-mg /usr/bin/VBoxClient
rahul-mg /usr/bin/VBoxClient
rahul-mg /usr/libexec/ibus-x11
rahul-mg /snap/snapd-desktop-integration/391/usr/bin/user-session-helper
rahul-mg /usr/libexec/xdg-desktop-portal-gtk
rahul-mg /snap/snapd-desktop-integration/391/usr/bin/snapd-desktop-integration
geoclue /usr/libexec/geoclue
ROOT [kworker/u13:1-ttm]
rahul-mg /usr/bin/snap
ROOT [kworker/u12:2-ttm]
ROOT /usr/libexec/fwupd/fwupd
rahul-mg /usr/libexec/gvfsd-recent
rahul-mg /usr/libexec/gvfsd-network
rahul-mg /usr/libexec/gvfsd-dnssd
rahul-mg /usr/libexec/gvfsd-wsdd
rahul-mg python3
uuidd /usr/sbin/uuidd
ROOT [psimon]
rahul-mg bwrap
rahul-mg bwrap
rahul-mg /usr/libexec/glycin-loaders/2+/glycin-image-rs
rahul-mg /usr/bin/ptyxis
rahul-mg /usr/libexec/ptyxis-agent
rahul-mg /usr/bin/bash
rahul-mg /snap/firefox/8763/usr/lib/firefox/firefox
rahul-mg /snap/firefox/8763/usr/lib/firefox/crashhelper
rahul-mg /snap/firefox/8763/usr/lib/firefox/firefox
rahul-mg /snap/firefox/8763/usr/lib/firefox/firefox
rahul-mg /snap/firefox/8763/usr/lib/firefox/firefox
rahul-mg /snap/firefox/8763/usr/lib/firefox/firefox
rahul-mg /snap/firefox/8763/usr/lib/firefox/firefox
rahul-mg /snap/firefox/8763/usr/lib/firefox/firefox
rahul-mg /snap/firefox/8763/usr/lib/firefox/firefox
rahul-mg /snap/firefox/8763/usr/lib/firefox/firefox
rahul-mg /usr/bin/bash
rahul-mg /usr/bin/speech-dispatcher
rahul-mg [sd_espeak-ng-mb]
rahul-mg /usr/lib/speech-dispatcher-modules/sd_espeak-ng
rahul-mg /usr/lib/speech-dispatcher-modules/sd_dummy
rahul-mg /usr/lib/speech-dispatcher-modules/sd_espeak-ng
rahul-mg /snap/firefox/8763/usr/lib/firefox/firefox
rahul-mg /usr/bin/bash
rahul-mg ssh-agent
rahul-mg /snap/firefox/8763/usr/lib/firefox/firefox
rahul-mg /snap/firefox/8763/usr/lib/firefox/firefox
rahul-mg /usr/bin/bash
rahul-mg /usr/bin/ssh-agent
ROOT [kworker/1:0H-kblockd]
rahul-mg /usr/bin/nautilus
rahul-mg bwrap
rahul-mg bwrap
rahul-mg /usr/libexec/glycin-loaders/2+/glycin-image-rs
ROOT [kworker/u10:0-events_unbound]
ROOT [kworker/0:0H-kblockd]
ROOT [kworker/u9:3-events_unbound]
ROOT [kworker/u10:3-flush-8:0]
ROOT [kworker/u10:2-events_unbound]
ROOT [kworker/u9:1-events_power_efficient]
ROOT [kworker/0:1-events]
ROOT [kworker/1:1H]
rahul-mg /snap/firefox/8763/usr/lib/firefox/firefox
rahul-mg /snap/firefox/8763/usr/lib/firefox/firefox
rahul-mg /snap/firefox/8763/usr/lib/firefox/firefox
rahul-mg /snap/firefox/8763/usr/lib/firefox/firefox
rahul-mg /snap/firefox/8763/usr/lib/firefox/firefox
ROOT [kworker/u9:2-flush-8:0]
ROOT [kworker/1:0-cgroup_free]
ROOT [kworker/1:2-events]
ROOT [kworker/0:0-events]
rahul-mg gjs
rahul-mg /usr/bin/bash
rahul-mg ps


### Exercise 3 – Calculate total CPU usage

Command:
```bash
awk 'NR > 1 && $2 ~ /^[0-9]+$/ {sum += $3} END {printf "Total CPU usage: %.2f%%\n", sum}' processes.log
```

Output:
Total CPU usage: 1186.80%
