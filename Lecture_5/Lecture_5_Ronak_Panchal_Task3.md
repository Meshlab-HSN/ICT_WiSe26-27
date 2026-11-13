# Lecture 5 - Task 3: Data Manipulation (sed & awk)

## 1. sed: Replace lowercase "root" with uppercase "ROOT" in processes.log
```bash
$ sed -i 's/^root/ROOT/' processes.log
$ head -n 15 processes.log
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  2.3  0.7  25572 12476 ?        Ss   21:17   0:06 /usr/lib/systemd/systemd --switched-root --system --deserialize=56
ROOT           2  0.0  0.0      0     0 ?        S    21:17   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    21:17   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   21:17   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   21:17   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   21:17   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   21:17   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   21:17   0:00 [kworker/R-netns]
ROOT           9  0.0  0.0      0     0 ?        I    21:17   0:00 [kworker/0:0-events]
ROOT          10  2.5  0.0      0     0 ?        I<   21:17   0:07 [kworker/0:0H-kblockd]
ROOT          11  0.0  0.0      0     0 ?        I    21:17   0:00 [kworker/0:1-events]
ROOT          12  0.0  0.0      0     0 ?        I    21:17   0:00 [kworker/u8:0-ipv6_addrconf]
ROOT          13  0.0  0.0      0     0 ?        I<   21:17   0:00 [kworker/R-mm_percpu_wq]
ROOT          14  0.2  0.0      0     0 ?        S    21:17   0:00 [ksoftirqd/0]
```

## 2. sed: Remove nologin users into users.txt
```bash
$ sed -i '/nologin/d' users.txt
$ cat users.txt
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
ronak7463:x:1000:1000:Ronak panchal:/home/ronak7463:/bin/bash
whoopsie:x:104:109::/nonexistent:/bin/false
speech-dispatcher:x:107:29:Speech Dispatcher:/run/speech-dispatcher:/bin/false
hplip:x:112:7:HPLIP system user:/run/hplip:/bin/false
gdm:x:974:974:Gnome Display Manager:/var/lib/gdm3:/bin/false
```

## 3. awk: Formatted users from /etc/passwd
```bash
$ awk -F ':' '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd
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
User ronak7463 has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534
User rtkit has UID 982 and GID 982
User dnsmasq has UID 999 and GID 65534
User systemd-oom has UID 981 and GID 981
User whoopsie has UID 104 and GID 109
User nm-openvpn has UID 979 and GID 979
User avahi has UID 105 and GID 111
User sssd has UID 106 and GID 112
User speech-dispatcher has UID 107 and GID 29
User cups-pk-helper has UID 108 and GID 113
User saned has UID 109 and GID 114
User pipewire has UID 978 and GID 978
User cups-browsed has UID 110 and GID 113
User colord has UID 977 and GID 977
User geoclue has UID 111 and GID 115
User gnome-remote-desktop has UID 976 and GID 976
User hplip has UID 112 and GID 7
User gdm has UID 974 and GID 974
```

## 4. awk: Username and process name from processes.log
```bash
$ awk 'NF>=11 {print $1, $11}' processes.log
USER COMMAND
ROOT /usr/lib/systemd/systemd
ROOT [kthreadd]
ROOT [pool_workqueue_release]
ROOT [kworker/R-rcu_gp]
ROOT [kworker/R-sync_wq]
ROOT [kworker/R-kvfree_rcu_reclaim]
ROOT [kworker/R-slub_flushwq]
ROOT [kworker/R-netns]
ROOT [kworker/0:0-events]
ROOT [kworker/0:0H-kblockd]
ROOT [kworker/0:1-events]
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
ROOT [kworker/1:0-mm_percpu_wq]
ROOT [kworker/1:0H-kblockd]
ROOT [kworker/u9:0-ext4-rsv-conversion]
ROOT [kworker/u10:0-flush-252:0]
ROOT [kdevtmpfs]
ROOT [kworker/R-inet_frag_wq]
ROOT [rcu_tasks_kthread]
ROOT [rcu_tasks_rude_kthread]
ROOT [kauditd]
ROOT [khungtaskd]
ROOT [oom_reaper]
ROOT [kworker/u9:1-ext4-rsv-conversion]
ROOT [kworker/R-writeback]
ROOT [kcompactd0]
ROOT [ksmd]
ROOT [khugepaged]
ROOT [kworker/R-kblockd]
ROOT [kworker/R-blkcg_punt_bio]
ROOT [kworker/R-kintegrityd]
ROOT [irq/9-acpi]
ROOT [kworker/1:1-events]
ROOT [kworker/R-tpm_dev_wq]
ROOT [kworker/R-ata_sff]
ROOT [kworker/R-md_bitmap]
ROOT [kworker/R-md_llbitmap_io]
ROOT [kworker/R-md_llbitmap_unplug]
ROOT [kworker/R-edac-poller]
ROOT [kworker/R-devfreq_wq]
ROOT [watchdogd]
ROOT [kworker/R-quota_events_unbound]
ROOT [kworker/u10:1-flush-252:0]
ROOT [kswapd0]
ROOT [ecryptfs-kthread]
ROOT [kworker/R-kthrotld]
ROOT [kworker/R-acpi_thermal_pm]
ROOT [kworker/u10:2-flush-252:0]
ROOT [scsi_eh_0]
ROOT [kworker/R-scsi_tmf_0]
ROOT [scsi_eh_1]
ROOT [kworker/R-scsi_tmf_1]
ROOT [kworker/u10:3-writeback]
ROOT [kworker/u10:4-events_unbound]
ROOT [kworker/u9:2-events_unbound]
ROOT [kworker/0:1H-kblockd]
ROOT [kworker/1:1H-kblockd]
ROOT [kworker/1:2-cgroup_release]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/u8:1-ipv6_addrconf]
ROOT [kworker/R-kstrp]
ROOT [kworker/u11:0]
ROOT [kworker/u12:0]
ROOT [kworker/u13:0]
ROOT [kworker/R-charger_manager]
ROOT [kworker/0:2-events]
ROOT [kworker/u9:3-events_power_efficient]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_tmf_2]
ROOT [kworker/R-kdmflush/252:0]
ROOT [jbd2/dm-0-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [kworker/0:3-mm_percpu_wq]
ROOT [kworker/0:4-cgroup_offline]
ROOT [kworker/0:5-inode_switch_wbs]
ROOT [kworker/0:6-cgwb_release]
ROOT [kworker/0:7-cgroup_free]
ROOT [kworker/0:8]
ROOT [psimon]
ROOT /usr/lib/systemd/systemd-journald
ROOT [kworker/R-kmpathd]
ROOT [kworker/R-kmpath_handlerd]
ROOT /usr/sbin/multipathd
systemd+ /usr/lib/systemd/systemd-oomd
systemd+ /usr/lib/systemd/systemd-resolved
ROOT /usr/lib/systemd/systemd-udevd
ROOT [psimon]
ROOT [kworker/0:2H-kblockd]
ROOT [kworker/1:3-cgroup_free]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [irq/18-vmwgfx]
ROOT [kworker/R-ttm]
systemd+ /usr/lib/systemd/systemd-networkd
ROOT [kworker/u9:4-events_unbound]
ROOT [kworker/R-cfg80211]
ROOT /usr/sbin/anacron
avahi avahi-daemon:
ROOT /bin/sh
message+ @dbus-daemon
ROOT /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
ROOT /usr/lib/snapd/snapd
ROOT /usr/libexec/accounts-daemon
ROOT /usr/libexec/switcheroo-control
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/udisks2/udisksd
avahi avahi-daemon:
ROOT [kworker/u8:2]
syslog /usr/sbin/rsyslogd
ROOT /usr/sbin/NetworkManager
ROOT /usr/sbin/wpa_supplicant
_chrony /usr/sbin/chronyd
_chrony /usr/sbin/chronyd
ROOT /usr/sbin/ModemManager
ROOT /usr/sbin/cupsd
ROOT /usr/bin/python3
ROOT /usr/sbin/cron
cups-br+ /usr/sbin/cups-browsed
ROOT /usr/sbin/gdm3
ROOT /usr/libexec/power-profiles-daemon
rtkit /usr/libexec/rtkit-daemon
ROOT [kworker/1:2H-kblockd]
colord /usr/libexec/colord
ROOT /usr/libexec/upowerd
ROOT gdm-session-worker
ronak74+ /usr/lib/systemd/systemd
ronak74+ (sd-pam)
ronak74+ /usr/bin/dbus-daemon
ronak74+ /usr/bin/pipewire
ronak74+ /usr/bin/gnome-keyring-daemon
ronak74+ /usr/bin/mpris-proxy
ronak74+ /usr/bin/wireplumber
ronak74+ /usr/bin/pipewire
ronak74+ /usr/bin/pipewire-pulse
ronak74+ /usr/libexec/gdm-wayland-session
ronak74+ /usr/libexec/gnome-session-init-worker
ronak74+ /usr/libexec/gcr-ssh-agent
ronak74+ /usr/libexec/gnome-session-ctl
ronak74+ /usr/bin/ssh-agent
ronak74+ /usr/libexec/gvfsd
ronak74+ /usr/libexec/gvfsd-fuse
ronak74+ /usr/libexec/gnome-session-service
ronak74+ /usr/bin/gnome-shell
ronak74+ /usr/libexec/at-spi-bus-launcher
ronak74+ /usr/bin/dbus-daemon
ronak74+ /usr/libexec/at-spi2-registryd
ronak74+ /usr/libexec/xdg-permission-store
ronak74+ /usr/libexec/gnome-shell-calendar-server
ronak74+ /usr/bin/gjs
ronak74+ /usr/bin/ibus-daemon
ronak74+ /usr/libexec/gsd-a11y-settings
ronak74+ /usr/libexec/gsd-color
ronak74+ /usr/libexec/gsd-datetime
ronak74+ /usr/libexec/gsd-housekeeping
ronak74+ /usr/libexec/gsd-keyboard
ronak74+ /usr/libexec/gsd-media-keys
ronak74+ /usr/libexec/gsd-power
ronak74+ /usr/libexec/gsd-print-notifications
ronak74+ /usr/libexec/gsd-rfkill
ronak74+ /usr/libexec/gsd-screensaver-proxy
ronak74+ /usr/libexec/evolution-data-server/evolution-alarm-notify
ronak74+ /usr/libexec/gsd-disk-utility-notify
ronak74+ /usr/libexec/gsd-sharing
ronak74+ /usr/libexec/gsd-smartcard
ronak74+ /usr/libexec/gsd-sound
ronak74+ /usr/libexec/gsd-usb-protection
ronak74+ /usr/libexec/gsd-wwan
ronak74+ /usr/bin/update-notifier
ronak74+ /usr/libexec/ibus-memconf
ronak74+ /usr/libexec/ibus-extension-gtk3
ronak74+ /usr/libexec/evolution-source-registry
ronak74+ /usr/libexec/ibus-portal
ronak74+ /usr/bin/gjs
ronak74+ /usr/libexec/gsd-printer
ronak74+ /usr/libexec/localsearch-3
ronak74+ /usr/libexec/xdg-desktop-portal
ronak74+ /usr/libexec/goa-daemon
ronak74+ /usr/libexec/xdg-document-portal
ROOT fusermount3
ronak74+ /usr/libexec/evolution-calendar-factory
ronak74+ /usr/libexec/goa-identity-service
ronak74+ /usr/libexec/xdg-desktop-portal-gnome
ronak74+ /usr/libexec/gvfs-udisks2-volume-monitor
ronak74+ /usr/libexec/evolution-addressbook-factory
ronak74+ /usr/libexec/gvfs-afc-volume-monitor
ronak74+ /usr/libexec/gvfs-goa-volume-monitor
ronak74+ /usr/libexec/gvfs-mtp-volume-monitor
ronak74+ /usr/libexec/gvfs-gphoto2-volume-monitor
ronak74+ /usr/libexec/ibus-engine-simple
ronak74+ /usr/libexec/dconf-service
ronak74+ /usr/libexec/gvfsd-metadata
ronak74+ /usr/libexec/gvfsd-trash
ronak74+ /usr/libexec/xdg-desktop-portal-gtk
ronak74+ gjs
ronak74+ /snap/firefox/9057/usr/lib/firefox/firefox
ronak74+ /snap/firefox/9057/usr/lib/firefox/crashhelper
ronak74+ [gfxtest]
ronak74+ /usr/bin/Xwayland
ronak74+ /usr/libexec/gsd-xsettings
ronak74+ /usr/libexec/mutter-x11-frames
ronak74+ /usr/libexec/ibus-x11
ROOT [kworker/u10:5-ext4-rsv-conversion]
ROOT [kworker/u10:6-events_unbound]
ronak74+ /snap/firefox/9057/usr/lib/firefox/firefox
ronak74+ /usr/libexec/glycin-loaders/2+/glycin-svg
ronak74+ /usr/libexec/glycin-loaders/2+/glycin-image-rs
ronak74+ /snap/firefox/9057/usr/lib/firefox/firefox
ronak74+ /usr/libexec/glycin-loaders/2+/glycin-svg
ronak74+ /usr/libexec/glycin-loaders/2+/glycin-image-rs
ronak74+ /snap/firefox/9057/usr/lib/firefox/firefox
ronak74+ /usr/libexec/glycin-loaders/2+/glycin-svg
ronak74+ /snap/firefox/9057/usr/lib/firefox/firefox
ronak74+ /usr/libexec/glycin-loaders/2+/glycin-image-rs
ronak74+ /usr/bin/snap
ROOT [kworker/u9:5-events_unbound]
ronak74+ /snap/firefox/9057/usr/lib/firefox/firefox
ROOT [kworker/u9:6-loop2]
ronak74+ /snap/firefox/9057/usr/lib/firefox/firefox
ronak74+ /snap/firefox/9057/usr/lib/firefox/firefox
ronak74+ /snap/firefox/9057/usr/lib/firefox/firefox
ronak74+ /snap/firefox/9057/usr/lib/firefox/firefox
ronak74+ /snap/firefox/9057/usr/lib/firefox/firefox
ronak74+ /usr/bin/ptyxis
ronak74+ /usr/libexec/ptyxis-agent
ROOT [kworker/u10:7-flush-252:0]
ronak74+ /usr/bin/bash
ronak74+ ps
```

## 5. awk: Total CPU usage sum
```bash
$ awk '{sum += $3} END {print "Total CPU usage: " sum "%"}' processes.log
Total CPU usage: 453.2%
```
