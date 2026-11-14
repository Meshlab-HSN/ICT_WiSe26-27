# Lecture 5 - Task 3
$ sed "s/root/ROOT/g" processes.log
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.2  0.9  25068 16556 ?        Ss   23:18   0:04 /sbin/init splash noprompt noshell automatic-ubiquity crashkernel=2G-4G:320M,4G-32G:512M,32G-64G:1024M,64G-128G:2048M,128G-:4096M
ROOT           2  0.0  0.0      0     0 ?        S    23:18   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    23:18   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-netns]
ROOT          10  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/0:0H-kblockd]
ROOT          13  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-mm_percpu_wq]
ROOT          14  0.0  0.0      0     0 ?        S    23:18   0:00 [ksoftirqd/0]
ROOT          15  0.0  0.0      0     0 ?        I    23:18   0:00 [rcu_preempt]
ROOT          16  0.0  0.0      0     0 ?        S    23:18   0:00 [rcu_exp_par_gp_kthread_worker/0]
ROOT          17  0.0  0.0      0     0 ?        S    23:18   0:00 [rcu_exp_gp_kthread_worker]
ROOT          18  0.0  0.0      0     0 ?        S    23:18   0:00 [migration/0]
ROOT          19  0.0  0.0      0     0 ?        S    23:18   0:00 [kprobe-optimizer]
ROOT          20  0.0  0.0      0     0 ?        S    23:18   0:00 [idle_inject/0]
ROOT          21  0.0  0.0      0     0 ?        S    23:18   0:00 [cpuhp/0]
ROOT          22  0.0  0.0      0     0 ?        S    23:18   0:00 [kdevtmpfs]
ROOT          23  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-inet_frag_wq]
ROOT          24  0.0  0.0      0     0 ?        I    23:18   0:00 [rcu_tasks_kthread]
ROOT          25  0.0  0.0      0     0 ?        I    23:18   0:00 [rcu_tasks_rude_kthread]
ROOT          26  0.0  0.0      0     0 ?        S    23:18   0:00 [kauditd]
ROOT          27  0.0  0.0      0     0 ?        S    23:18   0:00 [khungtaskd]
ROOT          28  0.0  0.0      0     0 ?        S    23:18   0:00 [oom_reaper]
ROOT          29  0.0  0.0      0     0 ?        I    23:18   0:00 [kworker/u4:1-events_power_efficient]
ROOT          30  0.0  0.0      0     0 ?        I    23:18   0:01 [kworker/u4:2-events_unbound]
ROOT          31  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-writeback]
ROOT          32  0.0  0.0      0     0 ?        S    23:18   0:00 [kcompactd0]
ROOT          33  0.0  0.0      0     0 ?        SN   23:18   0:00 [ksmd]
ROOT          34  0.0  0.0      0     0 ?        SN   23:18   0:00 [khugepaged]
ROOT          35  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-kblockd]
ROOT          36  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-blkcg_punt_bio]
ROOT          37  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-kintegrityd]
ROOT          38  0.0  0.0      0     0 ?        S    23:18   0:00 [irq/9-acpi]
ROOT          39  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-tpm_dev_wq]
ROOT          40  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-ata_sff]
ROOT          41  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-md_bitmap]
ROOT          42  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-md_llbitmap_io]
ROOT          43  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-md_llbitmap_unplug]
ROOT          44  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-edac-poller]
ROOT          45  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-devfreq_wq]
ROOT          46  0.0  0.0      0     0 ?        S    23:18   0:00 [watchdogd]
ROOT          47  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-quota_events_unbound]
ROOT          50  0.0  0.0      0     0 ?        S    23:18   0:01 [kswapd0]
ROOT          51  0.0  0.0      0     0 ?        S    23:18   0:00 [ecryptfs-kthread]
ROOT          52  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-kthrotld]
ROOT          53  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-acpi_thermal_pm]
ROOT          54  0.0  0.0      0     0 ?        S    23:18   0:00 [scsi_eh_0]
ROOT          55  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-scsi_tmf_0]
ROOT          56  0.0  0.0      0     0 ?        S    23:18   0:00 [scsi_eh_1]
ROOT          57  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-scsi_tmf_1]
ROOT          58  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-mld]
ROOT          59  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-ipv6_addrconf]
ROOT          60  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-kstrp]
ROOT          62  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/u5:0]
ROOT          73  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-charger_manager]
ROOT         116  0.0  0.0      0     0 ?        S    23:18   0:00 [scsi_eh_2]
ROOT         118  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-scsi_tmf_2]
ROOT         122  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/0:1H-kblockd]
ROOT         139  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-ttm]
ROOT         169  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-raid5wq]
ROOT         217  0.0  0.0      0     0 ?        S    23:18   0:00 [jbd2/sda2-8]
ROOT         218  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-ext4-rsv-conversion]
ROOT         290  0.0  0.0      0     0 ?        S    23:18   0:00 [psimon]
ROOT         296  0.0  1.2  59668 20676 ?        S<s  23:18   0:01 /usr/lib/systemd/systemd-journald
ROOT         325  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-kmpathd]
ROOT         326  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-kmpath_handlerd]
ROOT         327  0.0  0.5 279620  9772 ?        SLsl 23:18   0:00 /usr/sbin/multipathd -d -s
ROOT         338  0.1  0.9  42648 16192 ?        Ss   23:18   0:01 /usr/lib/systemd/systemd-udevd
systemd+     360  0.0  0.8  22552 14408 ?        Ss   23:18   0:00 /usr/lib/systemd/systemd-resolved
ROOT         443  0.0  0.0      0     0 ?        S    23:18   0:00 [psimon]
systemd+     583  0.0  0.6  21292 11164 ?        Ss   23:18   0:00 /usr/lib/systemd/systemd-networkd
ROOT         630  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-cfg80211]
ROOT         728  0.0  0.0      0     0 ?        I<   23:18   0:00 [kworker/R-iprt-VBoxWQueue]
avahi        770  0.0  0.2   6748  4784 ?        Ss   23:18   0:00 avahi-daemon: running [fatemeh-sharbatian.local]
message+     771  0.2  0.5  11848  8728 ?        Ss   23:18   0:04 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      777  0.0  0.7 312864 12388 ?        Ssl  23:18   0:01 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
ROOT         780  0.3  1.4 1780868 24120 ?       Ssl  23:18   0:06 /snap/snapd/current/usr/lib/snapd/snapd
ROOT         781  0.0  0.4 308960  8032 ?        Ssl  23:18   0:00 /usr/libexec/accounts-daemon
ROOT         782  0.0  0.4 307812  7404 ?        Ssl  23:18   0:00 /usr/libexec/switcheroo-control
ROOT         784  0.0  0.5  18472  9576 ?        Ss   23:18   0:00 /usr/lib/systemd/systemd-logind
ROOT         785  0.0  0.8 543612 14216 ?        Ssl  23:18   0:00 /usr/libexec/udisks2/udisksd
avahi        792  0.0  0.0   6564  1556 ?        S    23:18   0:00 avahi-daemon: chROOT helper
ROOT         847  0.0  1.1 335988 19732 ?        Ssl  23:18   0:00 /usr/sbin/NetworkManager --no-daemon
ROOT         849  0.0  0.3  17972  5424 ?        Ss   23:18   0:00 /usr/sbin/wpa_supplicant -u -s -O DIR=/run/wpa_supplicant GROUP=netdev
ROOT        1003  0.0  0.5 391496 10080 ?        Ssl  23:19   0:00 /usr/sbin/ModemManager
syslog      1035  0.0  0.3 220628  5708 ?        Ssl  23:19   0:00 /usr/sbin/rsyslogd -n -iNONE
ROOT        1120  0.0  0.7  29480 13052 ?        Ss   23:19   0:00 /usr/sbin/cupsd -l
ROOT        1123  0.0  1.8 126116 31528 ?        Ssl  23:19   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
ROOT        1149  0.0  0.4  10744  7740 ?        Ss   23:19   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
lp          1156  0.0  0.4  15436  7364 ?        S    23:19   0:00 /usr/lib/cups/notifier/dbus dbus://
lp          1158  0.0  0.4  15436  7252 ?        S    23:19   0:00 /usr/lib/cups/notifier/dbus dbus://
lp          1159  0.0  0.4  15436  7340 ?        S    23:19   0:00 /usr/lib/cups/notifier/dbus dbus://
lp          1161  0.0  0.4  15436  7408 ?        S    23:19   0:00 /usr/lib/cups/notifier/dbus dbus://
lp          1166  0.0  0.4  15436  7288 ?        S    23:19   0:00 /usr/lib/cups/notifier/dbus dbus://
ROOT        1259  0.0  0.2 292080  3448 ?        Sl   23:19   0:01 /usr/sbin/VBoxService --pidfile /var/run/vboxadd-service.sh
cups-br+    1335  0.0  1.2 207560 20676 ?        Ssl  23:20   0:00 /usr/sbin/cups-browsed
ROOT        1338  0.0  0.2   7060  3376 ?        Ss   23:20   0:00 /usr/sbin/cron -f -P
ROOT        1351  0.0  0.5 384012  9724 ?        Ssl  23:20   0:00 /usr/sbin/gdm3
ROOT        1361  0.0  0.6 385656 10900 ?        Sl   23:20   0:00 gdm-session-worker [pam/gdm-autologin]
newadmin    1370  0.1  0.8  23516 14756 ?        Ss   23:20   0:02 /usr/lib/systemd/systemd --user
newadmin    1372  0.0  0.2  23332  4308 ?        S    23:20   0:00 (sd-pam)
newadmin    1392  0.1  0.4  10064  7396 ?        Ss   23:20   0:02 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
newadmin    1393  0.0  0.7 103232 12376 ?        S<sl 23:20   0:00 /usr/bin/pipewire
newadmin    1395  0.0  0.6 183244 11036 ?        SLsl 23:20   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1001/keyring
newadmin    1400  0.0  0.2   7560  3996 ?        Ss   23:20   0:00 /usr/bin/mpris-proxy
newadmin    1401  0.0  1.5 659112 26292 ?        S<sl 23:20   0:00 /usr/bin/wireplumber
newadmin    1402  0.0  0.3  84812  5876 ?        Ssl  23:20   0:00 /usr/bin/pipewire -c filter-chain.conf
newadmin    1403  0.0  0.7 176424 12292 ?        S<sl 23:20   0:00 /usr/bin/pipewire-pulse
newadmin    1404  0.0  0.3 168196  6636 tty2     Ssl+ 23:20   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
rtkit       1410  0.0  0.2  21872  3632 ?        SNsl 23:20   0:00 /usr/libexec/rtkit-daemon
newadmin    1411  0.0  0.5 175212  9300 tty2     Sl+  23:20   0:00 /usr/libexec/gnome-session-init-worker ubuntu
newadmin    1522  0.0  0.5 310560  8520 ?        Ssl  23:20   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1001/gcr
newadmin    1523  0.0  0.3  87208  5852 ?        Ssl  23:20   0:00 /usr/libexec/gnome-session-ctl --monitor
newadmin    1524  0.0  0.4  10484  6760 ?        Ss   23:20   0:00 /usr/bin/ssh-agent -D
newadmin    1537  0.0  0.5 312980  8924 ?        Ssl  23:20   0:00 /usr/libexec/gvfsd
newadmin    1548  0.0  0.4 324640  7912 ?        Sl   23:20   0:00 /usr/libexec/gvfsd-fuse /run/user/1001/gvfs -f
newadmin    1550  0.0  0.6 613332 11368 ?        Ssl  23:20   0:00 /usr/libexec/gnome-session-service --session=ubuntu
newadmin    1563  3.8 19.2 3454620 324304 ?      Ssl  23:20   0:59 /usr/bin/gnome-shell --mode=ubuntu
newadmin    1576  0.0  0.4 381132  8112 ?        Ssl  23:20   0:00 /usr/libexec/at-spi-bus-launcher
newadmin    1583  0.0  0.3   8616  5300 ?        S    23:20   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1001/at-spi/bus
newadmin    1585  0.0  0.4 168688  7800 ?        Sl   23:20   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
colord      1586  0.0  0.9 316816 15860 ?        Ssl  23:20   0:00 /usr/libexec/colord
newadmin    1616  0.0  0.4 307364  6904 ?        Ssl  23:20   0:00 /usr/libexec/xdg-permission-store
newadmin    1618  0.0  1.1 658664 19620 ?        Sl   23:20   0:00 /usr/libexec/gnome-shell-calendar-server
newadmin    1629  0.0  2.7 690092 45916 ?        Ssl  23:20   0:00 /usr/libexec/evolution-source-registry
newadmin    1642  0.0  1.8 466816 31764 ?        Sl   23:20   0:00 /usr/libexec/goa-daemon
newadmin    1647  0.0  1.4 696852 24772 ?        Ssl  23:20   0:00 /usr/libexec/evolution-calendar-factory
ROOT        1651  0.2  0.6 318764 11328 ?        Ssl  23:20   0:04 /usr/libexec/upowerd
newadmin    1668  0.0  1.9 2592088 32156 ?       Sl   23:21   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
newadmin    1670  0.0  0.6 387944 10220 ?        Sl   23:21   0:00 /usr/libexec/goa-identity-service
newadmin    1676  0.0  1.7 686804 30152 ?        Ssl  23:21   0:00 /usr/libexec/evolution-addressbook-factory
newadmin    1697  0.0  0.7 385604 11792 ?        Ssl  23:21   0:01 /usr/bin/ibus-daemon --panel disable
newadmin    1698  0.0  0.6 253800 10596 ?        Ssl  23:21   0:00 /usr/libexec/gsd-a11y-settings
newadmin    1699  0.0  0.6 251632 10504 ?        Ssl  23:21   0:00 /usr/libexec/gsd-color
newadmin    1700  0.0  0.7 260168 12728 ?        Ssl  23:21   0:00 /usr/libexec/gsd-datetime
newadmin    1701  0.0  0.6 390776 11084 ?        Ssl  23:21   0:00 /usr/libexec/gsd-housekeeping
newadmin    1702  0.0  0.4 383132  8244 ?        Ssl  23:21   0:00 /usr/libexec/gsd-keyboard
newadmin    1703  0.0  0.8 559948 14768 ?        Ssl  23:21   0:00 /usr/libexec/gsd-media-keys
newadmin    1709  0.0  0.7 475396 11896 ?        Ssl  23:21   0:00 /usr/libexec/gsd-power
newadmin    1710  0.0  0.8 327564 14448 ?        Ssl  23:21   0:00 /usr/libexec/gsd-print-notifications
newadmin    1711  0.0  0.4 456924  8296 ?        Ssl  23:21   0:00 /usr/libexec/gsd-rfkill
newadmin    1714  0.0  0.4 169832  7584 ?        Ssl  23:21   0:00 /usr/libexec/gsd-screensaver-proxy
newadmin    1715  0.0  0.7 467400 12232 ?        Ssl  23:21   0:00 /usr/libexec/gsd-sharing
newadmin    1716  0.0  0.5 385708  9788 ?        Ssl  23:21   0:00 /usr/libexec/gsd-smartcard
newadmin    1717  0.0  0.6 254948 10560 ?        Ssl  23:21   0:00 /usr/libexec/gsd-sound
newadmin    1718  0.0  0.5 480276  9960 ?        Ssl  23:21   0:00 /usr/libexec/gsd-usb-protection
newadmin    1721  0.0  0.6 390416 10764 ?        Ssl  23:21   0:00 /usr/libexec/gsd-wwan
newadmin    1734  0.0  2.1 643632 35620 ?        Sl   23:21   0:00 /usr/bin/update-notifier
newadmin    1736  0.0  3.8 840352 65180 ?        Sl   23:21   0:00 /usr/libexec/evolution-data-server/evolution-alarm-notify
newadmin    1744  0.0  0.5 312176  9420 ?        Sl   23:21   0:00 /usr/libexec/gsd-disk-utility-notify
newadmin    1884  0.0  0.7 407680 12680 ?        Sl   23:21   0:00 /usr/libexec/gsd-printer
newadmin    1901  0.0  1.9 2591108 32300 ?       Sl   23:21   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
newadmin    1925  0.0  0.4 169180  7888 ?        Sl   23:21   0:00 /usr/libexec/ibus-memconf
newadmin    1926  1.2  2.2 499944 37352 ?        Sl   23:21   0:18 /usr/libexec/ibus-extension-gtk3
newadmin    1928  0.0  0.4 308500  8132 ?        Sl   23:21   0:00 /usr/libexec/ibus-portal
newadmin    1929  0.0  1.6 666100 28268 ?        SNsl 23:21   0:00 /usr/libexec/localsearch-3
newadmin    1931  0.0  1.2 629060 20324 ?        Ssl  23:21   0:00 /usr/libexec/xdg-desktop-portal
newadmin    1961  0.0  0.4 621556  7684 ?        Ssl  23:21   0:00 /usr/libexec/xdg-document-portal
ROOT        1967  0.0  0.1   2792  2280 ?        Ss   23:21   0:00 fusermount3 -o rw,nosuid,nodev,fsname=portal,auto_unmount,subtype=portal -- /run/user/1001/doc
newadmin    1972  0.0  2.6 696092 45348 ?        Ssl  23:21   0:01 /usr/libexec/xdg-desktop-portal-gnome
newadmin    1977  0.0  3.9 212600 67256 ?        S    23:21   0:01 /usr/bin/Xwayland :0 -ROOTless -noreset -accessx -core -auth /run/user/1001/.mutter-Xwaylandauth.WLGQY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
newadmin    1994  0.0  0.7 460692 12104 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
newadmin    2000  0.0  0.5 389884  9540 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-afc-volume-monitor
newadmin    2008  0.0  0.4 308852  7700 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
newadmin    2013  0.0  0.4 307832  7368 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-goa-volume-monitor
ROOT        2026  0.0  0.4 309276  7900 ?        Ssl  23:21   0:00 /usr/libexec/power-profiles-daemon
newadmin    2028  0.0  0.4 307884  7412 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-mtp-volume-monitor
newadmin    2038  0.0  0.4 169176  8156 ?        Sl   23:21   0:00 /usr/libexec/ibus-engine-simple
newadmin    2119  0.0  0.4 168860  7500 ?        Ssl  23:21   0:00 /usr/libexec/gvfsd-metadata
newadmin    2147  0.0  0.3 165344  6636 ?        Ssl  23:21   0:00 /usr/libexec/dconf-service
newadmin    2168  0.0  0.5 534376  9872 ?        Sl   23:21   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
newadmin    2224  0.0  0.8 251368 13716 ?        Ssl  23:21   0:00 /usr/libexec/gsd-xsettings
newadmin    2241  0.0  0.1  16896  1808 ?        S    23:21   0:00 /usr/bin/VBoxClient --clipboard
newadmin    2242  0.0  7.0 833060 118072 ?       Sl   23:21   0:01 /usr/libexec/mutter-x11-frames
newadmin    2244  0.0  0.2 215716  4604 ?        Sl   23:21   0:00 /usr/bin/VBoxClient --clipboard
newadmin    2284  0.0  0.1  16896  1808 ?        S    23:21   0:00 /usr/bin/VBoxClient --vmsvga
newadmin    2291  0.0  4.3 374024 72420 ?        Sl   23:21   0:00 /usr/libexec/ibus-x11
newadmin    2391  0.0  1.7 492248 29120 ?        Ssl  23:21   0:00 /usr/libexec/xdg-desktop-portal-gtk
newadmin    2864  0.0  3.8 892188 65528 ?        Sl   23:22   0:01 /usr/bin/gnome-calendar --gapplication-service
newadmin    2870  0.0  2.7 671108 45764 ?        SLl  23:22   0:01 /usr/bin/seahorse --gapplication-service
newadmin    2924  1.9 14.6 1140444 245700 ?      Sl   23:22   0:29 /usr/bin/ptyxis --gapplication-service
newadmin    2968  0.0  0.4 240004  7996 ?        Ssl  23:22   0:00 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
newadmin    3040  0.0  0.3   8828  5900 pts/0    Ss   23:22   0:00 /usr/bin/bash
ROOT        3561  0.0  0.0      0     0 ?        I    23:30   0:00 [kworker/0:2-events]
newadmin    3677  0.0  0.4  10500  7064 ?        S    23:31   0:00 /usr/bin/ssh-agent -D -a /run/user/1001/gcr/.ssh
ROOT        3925  0.0  0.0      0     0 ?        I    23:36   0:00 [kworker/0:0-cgroup_free]
ROOT        3926  0.1  2.6 365732 44380 ?        Ssl  23:36   0:01 /usr/libexec/fwupd/fwupd
newadmin    4193  0.3  4.0 2791648 68372 ?       Sl   23:38   0:01 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
ROOT        4204  0.0  0.0      0     0 ?        I    23:38   0:00 [kworker/u4:3-events_power_efficient]
newadmin    4671  400  0.2   9904  4884 pts/0    R+   23:46   0:00 ps aux
193 processes are running
$ sed -i "/nologin/d" users.txt
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:100:65534:DHCP Client Daemon,,,:/usr/lib/dhcpcd:/bin/false
tss:x:106:108:TPM software stack,,,:/var/lib/tpm:/bin/false
nafas:x:1000:1000:nafas:/home/nafas:/bin/bash
newadmin:x:1001:1001:,,,:/home/newadmin:/bin/bash
vboxadd:x:999:1::/var/run/vboxadd:/bin/false
whoopsie:x:102:112::/nonexistent:/bin/false
speech-dispatcher:x:111:29:Speech Dispatcher:/run/speech-dispatcher:/bin/false
hplip:x:116:7:HPLIP system user:/run/hplip:/bin/false
gdm:x:977:977:Gnome Display Manager:/var/lib/gdm3:/bin/false
user1:x:1002:1002:Fatemeh Sharbatian,1,09355310200,:/home/user1:/bin/bash
lightdm:x:118:120:Light Display Manager:/var/lib/lightdm:/bin/false
$ sed -i "/nologin/d" users.txt
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:100:65534:DHCP Client Daemon,,,:/usr/lib/dhcpcd:/bin/false
tss:x:106:108:TPM software stack,,,:/var/lib/tpm:/bin/false
nafas:x:1000:1000:nafas:/home/nafas:/bin/bash
newadmin:x:1001:1001:,,,:/home/newadmin:/bin/bash
vboxadd:x:999:1::/var/run/vboxadd:/bin/false
whoopsie:x:102:112::/nonexistent:/bin/false
speech-dispatcher:x:111:29:Speech Dispatcher:/run/speech-dispatcher:/bin/false
hplip:x:116:7:HPLIP system user:/run/hplip:/bin/false
gdm:x:977:977:Gnome Display Manager:/var/lib/gdm3:/bin/false
user1:x:1002:1002:Fatemeh Sharbatian,1,09355310200,:/home/user1:/bin/bash
lightdm:x:118:120:Light Display Manager:/var/lib/lightdm:/bin/false
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
User polkitd has UID 991 and GID 991
User syslog has UID 103 and GID 104
User uuidd has UID 104 and GID 105
User tcpdump has UID 105 and GID 107
User tss has UID 106 and GID 108
User landscape has UID 107 and GID 109
User fwupd-refresh has UID 989 and GID 989
User usbmux has UID 108 and GID 46
User nafas has UID 1000 and GID 1000
User newadmin has UID 1001 and GID 1001
User sshd has UID 986 and GID 65534
User vboxadd has UID 999 and GID 1
User rtkit has UID 984 and GID 984
User dnsmasq has UID 996 and GID 65534
User whoopsie has UID 102 and GID 112
User nm-openvpn has UID 982 and GID 982
User avahi has UID 109 and GID 114
User sssd has UID 110 and GID 115
User speech-dispatcher has UID 111 and GID 29
User cups-pk-helper has UID 112 and GID 116
User saned has UID 113 and GID 117
User cups-browsed has UID 114 and GID 116
User colord has UID 981 and GID 981
User pipewire has UID 980 and GID 980
User geoclue has UID 115 and GID 118
User hplip has UID 116 and GID 7
User gnome-remote-desktop has UID 979 and GID 979
User gdm has UID 977 and GID 977
User iperf3 has UID 117 and GID 119
User user1 has UID 1002 and GID 1002
User lightdm has UID 118 and GID 120
$ awk (print user and process name) processes.log
root /sbin/init
root [kthreadd]
root [pool_workqueue_release]
root [kworker/R-rcu_gp]
root [kworker/R-sync_wq]
root [kworker/R-kvfree_rcu_reclaim]
root [kworker/R-slub_flushwq]
root [kworker/R-netns]
root [kworker/0:0H-kblockd]
root [kworker/R-mm_percpu_wq]
root [ksoftirqd/0]
root [rcu_preempt]
root [rcu_exp_par_gp_kthread_worker/0]
root [rcu_exp_gp_kthread_worker]
root [migration/0]
root [kprobe-optimizer]
root [idle_inject/0]
root [cpuhp/0]
root [kdevtmpfs]
root [kworker/R-inet_frag_wq]
root [rcu_tasks_kthread]
root [rcu_tasks_rude_kthread]
root [kauditd]
root [khungtaskd]
root [oom_reaper]
root [kworker/u4:1-events_power_efficient]
root [kworker/u4:2-events_unbound]
root [kworker/R-writeback]
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
root [kworker/R-quota_events_unbound]
root [kswapd0]
root [ecryptfs-kthread]
root [kworker/R-kthrotld]
root [kworker/R-acpi_thermal_pm]
root [scsi_eh_0]
root [kworker/R-scsi_tmf_0]
root [scsi_eh_1]
root [kworker/R-scsi_tmf_1]
root [kworker/R-mld]
root [kworker/R-ipv6_addrconf]
root [kworker/R-kstrp]
root [kworker/u5:0]
root [kworker/R-charger_manager]
root [scsi_eh_2]
root [kworker/R-scsi_tmf_2]
root [kworker/0:1H-kblockd]
root [kworker/R-ttm]
root [kworker/R-raid5wq]
root [jbd2/sda2-8]
root [kworker/R-ext4-rsv-conversion]
root [psimon]
root /usr/lib/systemd/systemd-journald
root [kworker/R-kmpathd]
root [kworker/R-kmpath_handlerd]
root /usr/sbin/multipathd
root /usr/lib/systemd/systemd-udevd
systemd+ /usr/lib/systemd/systemd-resolved
root [psimon]
systemd+ /usr/lib/systemd/systemd-networkd
root [kworker/R-cfg80211]
root [kworker/R-iprt-VBoxWQueue]
avahi avahi-daemon:
message+ @dbus-daemon
polkitd /usr/lib/polkit-1/polkitd
root /snap/snapd/current/usr/lib/snapd/snapd
root /usr/libexec/accounts-daemon
root /usr/libexec/switcheroo-control
root /usr/lib/systemd/systemd-logind
root /usr/libexec/udisks2/udisksd
avahi avahi-daemon:
root /usr/sbin/NetworkManager
root /usr/sbin/wpa_supplicant
root /usr/sbin/ModemManager
syslog /usr/sbin/rsyslogd
root /usr/sbin/cupsd
root /usr/bin/python3
root sshd:
lp /usr/lib/cups/notifier/dbus
lp /usr/lib/cups/notifier/dbus
lp /usr/lib/cups/notifier/dbus
lp /usr/lib/cups/notifier/dbus
lp /usr/lib/cups/notifier/dbus
root /usr/sbin/VBoxService
cups-br+ /usr/sbin/cups-browsed
root /usr/sbin/cron
root /usr/sbin/gdm3
root gdm-session-worker
newadmin /usr/lib/systemd/systemd
newadmin (sd-pam)
newadmin /usr/bin/dbus-daemon
newadmin /usr/bin/pipewire
newadmin /usr/bin/gnome-keyring-daemon
newadmin /usr/bin/mpris-proxy
newadmin /usr/bin/wireplumber
newadmin /usr/bin/pipewire
newadmin /usr/bin/pipewire-pulse
newadmin /usr/libexec/gdm-wayland-session
rtkit /usr/libexec/rtkit-daemon
newadmin /usr/libexec/gnome-session-init-worker
newadmin /usr/libexec/gcr-ssh-agent
newadmin /usr/libexec/gnome-session-ctl
newadmin /usr/bin/ssh-agent
newadmin /usr/libexec/gvfsd
newadmin /usr/libexec/gvfsd-fuse
newadmin /usr/libexec/gnome-session-service
newadmin /usr/bin/gnome-shell
newadmin /usr/libexec/at-spi-bus-launcher
newadmin /usr/bin/dbus-daemon
newadmin /usr/libexec/at-spi2-registryd
colord /usr/libexec/colord
newadmin /usr/libexec/xdg-permission-store
newadmin /usr/libexec/gnome-shell-calendar-server
newadmin /usr/libexec/evolution-source-registry
newadmin /usr/libexec/goa-daemon
newadmin /usr/libexec/evolution-calendar-factory
root /usr/libexec/upowerd
newadmin /usr/bin/gjs
newadmin /usr/libexec/goa-identity-service
newadmin /usr/libexec/evolution-addressbook-factory
newadmin /usr/bin/ibus-daemon
newadmin /usr/libexec/gsd-a11y-settings
newadmin /usr/libexec/gsd-color
newadmin /usr/libexec/gsd-datetime
newadmin /usr/libexec/gsd-housekeeping
newadmin /usr/libexec/gsd-keyboard
newadmin /usr/libexec/gsd-media-keys
newadmin /usr/libexec/gsd-power
newadmin /usr/libexec/gsd-print-notifications
newadmin /usr/libexec/gsd-rfkill
newadmin /usr/libexec/gsd-screensaver-proxy
newadmin /usr/libexec/gsd-sharing
newadmin /usr/libexec/gsd-smartcard
newadmin /usr/libexec/gsd-sound
newadmin /usr/libexec/gsd-usb-protection
newadmin /usr/libexec/gsd-wwan
newadmin /usr/bin/update-notifier
newadmin /usr/libexec/evolution-data-server/evolution-alarm-notify
newadmin /usr/libexec/gsd-disk-utility-notify
newadmin /usr/libexec/gsd-printer
newadmin /usr/bin/gjs
newadmin /usr/libexec/ibus-memconf
newadmin /usr/libexec/ibus-extension-gtk3
newadmin /usr/libexec/ibus-portal
newadmin /usr/libexec/localsearch-3
newadmin /usr/libexec/xdg-desktop-portal
newadmin /usr/libexec/xdg-document-portal
root fusermount3
newadmin /usr/libexec/xdg-desktop-portal-gnome
newadmin /usr/bin/Xwayland
newadmin /usr/libexec/gvfs-udisks2-volume-monitor
newadmin /usr/libexec/gvfs-afc-volume-monitor
newadmin /usr/libexec/gvfs-gphoto2-volume-monitor
newadmin /usr/libexec/gvfs-goa-volume-monitor
root /usr/libexec/power-profiles-daemon
newadmin /usr/libexec/gvfs-mtp-volume-monitor
newadmin /usr/libexec/ibus-engine-simple
newadmin /usr/libexec/gvfsd-metadata
newadmin /usr/libexec/dconf-service
newadmin /usr/libexec/gvfsd-trash
newadmin /usr/libexec/gsd-xsettings
newadmin /usr/bin/VBoxClient
newadmin /usr/libexec/mutter-x11-frames
newadmin /usr/bin/VBoxClient
newadmin /usr/bin/VBoxClient
newadmin /usr/libexec/ibus-x11
newadmin /usr/libexec/xdg-desktop-portal-gtk
newadmin /usr/bin/gnome-calendar
newadmin /usr/bin/seahorse
newadmin /usr/bin/ptyxis
newadmin /usr/libexec/ptyxis-agent
newadmin /usr/bin/bash
root [kworker/0:2-events]
newadmin /usr/bin/ssh-agent
root [kworker/0:0-cgroup_free]
root /usr/libexec/fwupd/fwupd
newadmin gjs
root [kworker/u4:3-events_power_efficient]
newadmin ps
193 
$ awk (sum of CPU column) processes.log
Total CPU usage: 408.5%
