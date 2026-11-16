# Lecture 5 - Task 2: Search and filter

```bash
ps aux | grep "khalil-+"
```

```
khalil-+    2915  0.1  0.4  23592 14972 ?        Ss   18:57   0:02 /usr/lib/systemd/systemd --user
khalil-+    2917  0.0  0.1  23460  4188 ?        S    18:57   0:00 (sd-pam)
khalil-+    2937  0.2  0.2  10268  7216 ?        Ss   18:57   0:04 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
khalil-+    2939  0.0  0.3 103692 13152 ?        S<sl 18:57   0:00 /usr/bin/pipewire
khalil-+    2940  0.0  0.3 183244 11432 ?        SLsl 18:57   0:01 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
khalil-+    2941  0.0  0.1   7560  4108 ?        Ss   18:57   0:00 /usr/bin/mpris-proxy
khalil-+    2944  0.0  0.9 724648 31996 ?        S<sl 18:57   0:01 /usr/bin/wireplumber
khalil-+    2946  0.0  0.1  84812  5836 ?        Ssl  18:57   0:00 /usr/bin/pipewire -c filter-chain.conf
khalil-+    2950  0.0  0.3 178280 12556 ?        S<sl 18:57   0:00 /usr/bin/pipewire-pulse
khalil-+    2992  0.0  0.1 168196  6820 tty2     Ssl+ 18:57   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
khalil-+    3003  0.0  0.2 175212  9312 tty2     Sl+  18:57   0:00 /usr/libexec/gnome-session-init-worker ubuntu
khalil-+    3132  0.0  0.2  97560  8064 ?        Ssl  18:57   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
khalil-+    3133  0.0  0.1  87208  5924 ?        Ssl  18:57   0:00 /usr/libexec/gnome-session-ctl --monitor
khalil-+    3134  0.0  0.1  10484  6768 ?        Ss   18:57   0:00 /usr/bin/ssh-agent -D
khalil-+    3146  0.0  0.2 312952  9076 ?        Ssl  18:57   0:00 /usr/libexec/gvfsd
khalil-+    3156  0.0  0.2 324640  7928 ?        Sl   18:57   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
khalil-+    3164  0.1  0.3 613324 11600 ?        Ssl  18:57   0:02 /usr/libexec/gnome-session-service --session=ubuntu
khalil-+    3171 13.2 10.4 7226064 362732 ?      Rsl  18:57   4:38 /usr/bin/gnome-shell --mode=ubuntu
khalil-+    3210  0.0  0.2 381124  8116 ?        Ssl  18:57   0:00 /usr/libexec/at-spi-bus-launcher
khalil-+    3217  0.0  0.1   8612  5308 ?        S    18:57   0:01 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
khalil-+    3219  0.0  0.2 168688  7784 ?        Sl   18:57   0:01 /usr/libexec/at-spi2-registryd --use-gnome-session
khalil-+    3238  0.0  0.2 307364  6968 ?        Ssl  18:57   0:00 /usr/libexec/xdg-permission-store
khalil-+    3240  0.0  0.5 658668 19624 ?        Sl   18:57   0:00 /usr/libexec/gnome-shell-calendar-server
khalil-+    3251  0.0  1.3 608164 46556 ?        Ssl  18:57   0:00 /usr/libexec/evolution-source-registry
khalil-+    3263  0.0  0.9 2735460 32664 ?       Sl   18:57   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
khalil-+    3285  1.4  0.3 385520 11820 ?        Ssl  18:57   0:31 /usr/bin/ibus-daemon --panel disable
khalil-+    3287  0.0  0.3 253792 10460 ?        Ssl  18:57   0:00 /usr/libexec/gsd-a11y-settings
khalil-+    3289  0.0  0.3 251624 10648 ?        Ssl  18:57   0:00 /usr/libexec/gsd-color
khalil-+    3290  0.0  0.3 260164 12696 ?        Ssl  18:57   0:00 /usr/libexec/gsd-datetime
khalil-+    3294  0.0  0.3 390768 10852 ?        Ssl  18:57   0:01 /usr/libexec/gsd-housekeeping
khalil-+    3300  0.0  0.2 383124  8388 ?        Ssl  18:57   0:00 /usr/libexec/gsd-keyboard
khalil-+    3303  0.0  0.4 756548 14908 ?        Ssl  18:57   0:01 /usr/libexec/gsd-media-keys
khalil-+    3311  0.0  0.3 540924 11752 ?        Ssl  18:57   0:01 /usr/libexec/gsd-power
khalil-+    3314  0.0  1.8 840348 65500 ?        Sl   18:57   0:01 /usr/libexec/evolution-data-server/evolution-alarm-notify
khalil-+    3320  0.0  0.4 327572 14512 ?        Ssl  18:57   0:00 /usr/libexec/gsd-print-notifications
khalil-+    3322  0.0  0.2 456924  8168 ?        Ssl  18:57   0:00 /usr/libexec/gsd-rfkill
khalil-+    3327  0.0  0.2 312176  9568 ?        Sl   18:57   0:00 /usr/libexec/gsd-disk-utility-notify
khalil-+    3335  0.0  0.2 169832  7436 ?        Ssl  18:57   0:00 /usr/libexec/gsd-screensaver-proxy
khalil-+    3336  0.0  1.0 651832 35852 ?        Sl   18:57   0:01 /usr/bin/update-notifier
khalil-+    3339  0.0  0.3 467388 12924 ?        Ssl  18:57   0:00 /usr/libexec/gsd-sharing
khalil-+    3342  0.0  0.2 385700  9996 ?        Ssl  18:57   0:00 /usr/libexec/gsd-smartcard
khalil-+    3343  0.0  0.3 254940 10864 ?        Ssl  18:57   0:00 /usr/libexec/gsd-sound
khalil-+    3352  0.0  0.2 545936 10076 ?        Ssl  18:57   0:00 /usr/libexec/gsd-usb-protection
khalil-+    3356  0.0  0.3 390408 10776 ?        Ssl  18:57   0:00 /usr/libexec/gsd-wwan
khalil-+    3426  0.0  0.9 466816 32472 ?        Sl   18:57   0:00 /usr/libexec/goa-daemon
khalil-+    3445  0.0  0.2 243000  8320 ?        Sl   18:57   0:00 /usr/libexec/ibus-dconf
khalil-+    3446  0.6  1.0 500088 37384 ?        Sl   18:57   0:14 /usr/libexec/ibus-extension-gtk3
khalil-+    3460  0.0  0.2 308500  8180 ?        Sl   18:57   0:00 /usr/libexec/ibus-portal
khalil-+    3489  0.0  0.3 387944 10452 ?        Sl   18:57   0:00 /usr/libexec/goa-identity-service
khalil-+    3492  0.0  0.7 876860 27224 ?        SNsl 18:57   0:02 /usr/libexec/localsearch-3
khalil-+    3494  0.0  0.9 450856 33732 ?        Ssl  18:57   0:01 /usr/bin/spice-vdagent -x
khalil-+    3502  0.0  0.3 399484 12380 ?        Sl   18:57   0:00 /usr/libexec/gsd-printer
khalil-+    3504  0.2  0.6 702996 21568 ?        Ssl  18:57   0:04 /usr/libexec/xdg-desktop-portal
khalil-+    3510  0.0  0.7 893408 26992 ?        Ssl  18:57   0:01 /usr/libexec/evolution-calendar-factory
khalil-+    3523  0.0  0.9 2733408 32772 ?       Sl   18:57   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
khalil-+    3560  0.0  0.2 613360  7824 ?        Ssl  18:57   0:00 /usr/libexec/xdg-document-portal
khalil-+    3577  0.0  0.3 386944 11152 ?        Ssl  18:57   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
khalil-+    3590  0.1  1.3 827108 45840 ?        Ssl  18:57   0:02 /usr/libexec/xdg-desktop-portal-gnome
khalil-+    3600  0.0  0.9 826072 31556 ?        Ssl  18:57   0:00 /usr/libexec/evolution-addressbook-factory
khalil-+    3601  0.0  0.2 308976  8084 ?        Ssl  18:57   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
khalil-+    3616  0.0  0.2 307832  7396 ?        Ssl  18:57   0:00 /usr/libexec/gvfs-goa-volume-monitor
khalil-+    3624  0.0  0.2 308008  7496 ?        Ssl  18:57   0:00 /usr/libexec/gvfs-mtp-volume-monitor
khalil-+    3632  0.0  0.2 389884  9624 ?        Ssl  18:57   0:01 /usr/libexec/gvfs-afc-volume-monitor
khalil-+    3646  0.3  0.2 169308  8184 ?        Sl   18:57   0:06 /usr/libexec/ibus-engine-simple
khalil-+    3771  0.0  0.2 168820  7212 ?        Ssl  18:57   0:00 /usr/libexec/gvfsd-metadata
khalil-+    3799  0.0  0.1 165352  6588 ?        Ssl  18:57   0:00 /usr/libexec/dconf-service
khalil-+    3860  0.0  0.2 534376 10028 ?        Sl   18:57   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
khalil-+    4068  0.0  0.8 492256 29176 ?        Ssl  18:57   0:01 /usr/libexec/xdg-desktop-portal-gtk
khalil-+    4110  0.0  2.0 212384 71144 ?        S    18:57   0:01 /usr/bin/Xwayland :0 -rootless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.MAOWY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
khalil-+    4117  0.0  0.3 251364 13808 ?        Ssl  18:57   0:00 /usr/libexec/gsd-xsettings
khalil-+    4122  0.0  3.4 2012544 118644 ?      Sl   18:57   0:01 /usr/libexec/mutter-x11-frames
khalil-+    4158  0.0  2.0 374024 72536 ?        Sl   18:57   0:00 /usr/libexec/ibus-x11
khalil-+    4438  0.0  2.0 1088800 69532 ?       Sl   18:59   0:01 /usr/bin/gnome-calendar --gapplication-service
khalil-+    4668  6.1 10.8 4137160 375280 ?      Rl   18:59   2:03 /usr/bin/ptyxis --gapplication-service
khalil-+    4716  0.1  0.2 239996  7992 ?        Ssl  18:59   0:03 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
khalil-+    4768  0.0  0.1   8828  5900 pts/0    Ss   18:59   0:00 /usr/bin/bash
khalil-+    5466  0.7  2.0 3133688 72452 ?       Sl   19:26   0:02 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
khalil-+    5732 66.6  0.1   7536  3944 pts/0    S+   19:32   0:00 bash -c ps aux | grep "khalil-+"
khalil-+    5733  0.0  0.1   9904  4892 pts/0    R+   19:32   0:00 ps aux
khalil-+    5734  0.0  0.0   6716  2656 pts/0    S+   19:32   0:00 grep khalil-+
```

```bash
ps aux | grep -E "^khalil-\+\s"
```

```
khalil-+    2915  0.1  0.4  23592 14972 ?        Ss   18:57   0:02 /usr/lib/systemd/systemd --user
khalil-+    2917  0.0  0.1  23460  4188 ?        S    18:57   0:00 (sd-pam)
khalil-+    2937  0.2  0.2  10268  7216 ?        Ss   18:57   0:04 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
khalil-+    2939  0.0  0.3 103692 13152 ?        S<sl 18:57   0:00 /usr/bin/pipewire
khalil-+    2940  0.0  0.3 183244 11432 ?        SLsl 18:57   0:01 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
khalil-+    2941  0.0  0.1   7560  4108 ?        Ss   18:57   0:00 /usr/bin/mpris-proxy
khalil-+    2944  0.0  0.9 724648 31996 ?        S<sl 18:57   0:01 /usr/bin/wireplumber
khalil-+    2946  0.0  0.1  84812  5836 ?        Ssl  18:57   0:00 /usr/bin/pipewire -c filter-chain.conf
khalil-+    2950  0.0  0.3 178280 12556 ?        S<sl 18:57   0:00 /usr/bin/pipewire-pulse
khalil-+    2992  0.0  0.1 168196  6820 tty2     Ssl+ 18:57   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
khalil-+    3003  0.0  0.2 175212  9312 tty2     Sl+  18:57   0:00 /usr/libexec/gnome-session-init-worker ubuntu
khalil-+    3132  0.0  0.2  97560  8064 ?        Ssl  18:57   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
khalil-+    3133  0.0  0.1  87208  5924 ?        Ssl  18:57   0:00 /usr/libexec/gnome-session-ctl --monitor
khalil-+    3134  0.0  0.1  10484  6768 ?        Ss   18:57   0:00 /usr/bin/ssh-agent -D
khalil-+    3146  0.0  0.2 312952  9076 ?        Ssl  18:57   0:00 /usr/libexec/gvfsd
khalil-+    3156  0.0  0.2 324640  7928 ?        Sl   18:57   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
khalil-+    3164  0.1  0.3 613324 11600 ?        Ssl  18:57   0:02 /usr/libexec/gnome-session-service --session=ubuntu
khalil-+    3171 13.2 10.4 7221280 362732 ?      Ssl  18:57   4:38 /usr/bin/gnome-shell --mode=ubuntu
khalil-+    3210  0.0  0.2 381124  8116 ?        Ssl  18:57   0:00 /usr/libexec/at-spi-bus-launcher
khalil-+    3217  0.0  0.1   8612  5308 ?        S    18:57   0:01 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
khalil-+    3219  0.0  0.2 168688  7784 ?        Sl   18:57   0:01 /usr/libexec/at-spi2-registryd --use-gnome-session
khalil-+    3238  0.0  0.2 307364  6968 ?        Ssl  18:57   0:00 /usr/libexec/xdg-permission-store
khalil-+    3240  0.0  0.5 658668 19624 ?        Sl   18:57   0:00 /usr/libexec/gnome-shell-calendar-server
khalil-+    3251  0.0  1.3 608164 46556 ?        Ssl  18:57   0:00 /usr/libexec/evolution-source-registry
khalil-+    3263  0.0  0.9 2735460 32664 ?       Sl   18:57   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
khalil-+    3285  1.4  0.3 385520 11820 ?        Ssl  18:57   0:31 /usr/bin/ibus-daemon --panel disable
khalil-+    3287  0.0  0.3 253792 10460 ?        Ssl  18:57   0:00 /usr/libexec/gsd-a11y-settings
khalil-+    3289  0.0  0.3 251624 10648 ?        Ssl  18:57   0:00 /usr/libexec/gsd-color
khalil-+    3290  0.0  0.3 260164 12696 ?        Ssl  18:57   0:00 /usr/libexec/gsd-datetime
khalil-+    3294  0.0  0.3 390768 10852 ?        Ssl  18:57   0:01 /usr/libexec/gsd-housekeeping
khalil-+    3300  0.0  0.2 383124  8388 ?        Ssl  18:57   0:00 /usr/libexec/gsd-keyboard
khalil-+    3303  0.0  0.4 756548 14908 ?        Ssl  18:57   0:01 /usr/libexec/gsd-media-keys
khalil-+    3311  0.0  0.3 540924 11752 ?        Ssl  18:57   0:01 /usr/libexec/gsd-power
khalil-+    3314  0.0  1.8 840348 65500 ?        Sl   18:57   0:01 /usr/libexec/evolution-data-server/evolution-alarm-notify
khalil-+    3320  0.0  0.4 327572 14512 ?        Ssl  18:57   0:00 /usr/libexec/gsd-print-notifications
khalil-+    3322  0.0  0.2 456924  8168 ?        Ssl  18:57   0:00 /usr/libexec/gsd-rfkill
khalil-+    3327  0.0  0.2 312176  9568 ?        Sl   18:57   0:00 /usr/libexec/gsd-disk-utility-notify
khalil-+    3335  0.0  0.2 169832  7436 ?        Ssl  18:57   0:00 /usr/libexec/gsd-screensaver-proxy
khalil-+    3336  0.0  1.0 651832 35852 ?        Sl   18:57   0:01 /usr/bin/update-notifier
khalil-+    3339  0.0  0.3 467388 12924 ?        Ssl  18:57   0:00 /usr/libexec/gsd-sharing
khalil-+    3342  0.0  0.2 385700  9996 ?        Ssl  18:57   0:00 /usr/libexec/gsd-smartcard
khalil-+    3343  0.0  0.3 254940 10864 ?        Ssl  18:57   0:00 /usr/libexec/gsd-sound
khalil-+    3352  0.0  0.2 545936 10076 ?        Ssl  18:57   0:00 /usr/libexec/gsd-usb-protection
khalil-+    3356  0.0  0.3 390408 10776 ?        Ssl  18:57   0:00 /usr/libexec/gsd-wwan
khalil-+    3426  0.0  0.9 466816 32472 ?        Sl   18:57   0:00 /usr/libexec/goa-daemon
khalil-+    3445  0.0  0.2 243000  8320 ?        Sl   18:57   0:00 /usr/libexec/ibus-dconf
khalil-+    3446  0.6  1.0 500088 37384 ?        Sl   18:57   0:14 /usr/libexec/ibus-extension-gtk3
khalil-+    3460  0.0  0.2 308500  8180 ?        Sl   18:57   0:00 /usr/libexec/ibus-portal
khalil-+    3489  0.0  0.3 387944 10452 ?        Sl   18:57   0:00 /usr/libexec/goa-identity-service
khalil-+    3492  0.0  0.7 876860 27224 ?        SNsl 18:57   0:02 /usr/libexec/localsearch-3
khalil-+    3494  0.0  0.9 450856 33732 ?        Ssl  18:57   0:01 /usr/bin/spice-vdagent -x
khalil-+    3502  0.0  0.3 399484 12380 ?        Sl   18:57   0:00 /usr/libexec/gsd-printer
khalil-+    3504  0.2  0.6 702996 21568 ?        Ssl  18:57   0:04 /usr/libexec/xdg-desktop-portal
khalil-+    3510  0.0  0.7 893408 26992 ?        Ssl  18:57   0:01 /usr/libexec/evolution-calendar-factory
khalil-+    3523  0.0  0.9 2733408 32772 ?       Sl   18:57   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
khalil-+    3560  0.0  0.2 613360  7824 ?        Ssl  18:57   0:00 /usr/libexec/xdg-document-portal
khalil-+    3577  0.0  0.3 386944 11152 ?        Ssl  18:57   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
khalil-+    3590  0.1  1.3 827108 45840 ?        Ssl  18:57   0:02 /usr/libexec/xdg-desktop-portal-gnome
khalil-+    3600  0.0  0.9 826072 31556 ?        Ssl  18:57   0:00 /usr/libexec/evolution-addressbook-factory
khalil-+    3601  0.0  0.2 308976  8084 ?        Ssl  18:57   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
khalil-+    3616  0.0  0.2 307832  7396 ?        Ssl  18:57   0:00 /usr/libexec/gvfs-goa-volume-monitor
khalil-+    3624  0.0  0.2 308008  7496 ?        Ssl  18:57   0:00 /usr/libexec/gvfs-mtp-volume-monitor
khalil-+    3632  0.0  0.2 389884  9624 ?        Ssl  18:57   0:01 /usr/libexec/gvfs-afc-volume-monitor
khalil-+    3646  0.3  0.2 169308  8184 ?        Sl   18:57   0:06 /usr/libexec/ibus-engine-simple
khalil-+    3771  0.0  0.2 168820  7212 ?        Ssl  18:57   0:00 /usr/libexec/gvfsd-metadata
khalil-+    3799  0.0  0.1 165352  6588 ?        Ssl  18:57   0:00 /usr/libexec/dconf-service
khalil-+    3860  0.0  0.2 534376 10028 ?        Sl   18:57   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
khalil-+    4068  0.0  0.8 492256 29176 ?        Ssl  18:57   0:01 /usr/libexec/xdg-desktop-portal-gtk
khalil-+    4110  0.0  2.0 212384 71144 ?        S    18:57   0:01 /usr/bin/Xwayland :0 -rootless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.MAOWY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
khalil-+    4117  0.0  0.3 251364 13808 ?        Ssl  18:57   0:00 /usr/libexec/gsd-xsettings
khalil-+    4122  0.0  3.4 2012544 118644 ?      Sl   18:57   0:01 /usr/libexec/mutter-x11-frames
khalil-+    4158  0.0  2.0 374024 72536 ?        Sl   18:57   0:00 /usr/libexec/ibus-x11
khalil-+    4438  0.0  2.0 1088800 69532 ?       Sl   18:59   0:01 /usr/bin/gnome-calendar --gapplication-service
khalil-+    4668  6.1 10.8 4137160 375280 ?      Sl   18:59   2:03 /usr/bin/ptyxis --gapplication-service
khalil-+    4716  0.1  0.2 239996  7992 ?        Ssl  18:59   0:03 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
khalil-+    4768  0.0  0.1   8828  5900 pts/0    Ss   18:59   0:00 /usr/bin/bash
khalil-+    5466  0.7  2.0 3133688 72452 ?       Sl   19:26   0:02 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
khalil-+    5735  0.0  0.1   7536  3904 pts/0    S+   19:32   0:00 bash -c ps aux | grep -E "^khalil-\+\s"
khalil-+    5736  200  0.1   9904  4840 pts/0    R+   19:32   0:00 ps aux
khalil-+    5737  0.0  0.0   6848  2636 pts/0    S+   19:32   0:00 grep -E ^khalil-\+\s
```

```bash
ps aux | grep -v "^root"
```

```
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     700  0.0  0.4  22564 15036 ?        Ss   18:57   0:00 /usr/lib/systemd/systemd-resolved
systemd+    1267  0.0  0.3  21436 12356 ?        Ss   18:57   0:00 /usr/lib/systemd/systemd-networkd
avahi       1313  0.0  0.1   6756  4876 ?        Ss   18:57   0:00 avahi-daemon: running [ict.local]
message+    1315  0.1  0.2  11992  8944 ?        Ss   18:57   0:03 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1327  0.2  0.3 386536 12432 ?        Ssl  18:57   0:05 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
avahi       1365  0.0  0.0   6564  1648 ?        S    18:57   0:00 avahi-daemon: chroot helper
syslog      1393  0.0  0.1 220604  5988 ?        Ssl  18:57   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1444  0.0  0.3  23728 11200 ?        S    18:57   0:00 /usr/sbin/chronyd -n -F 1
_chrony     1471  0.0  0.0  12120  3408 ?        S    18:57   0:00 /usr/sbin/chronyd -n -F 1
lp          1612  0.0  0.2  15436  7268 ?        S    18:57   0:00 /usr/lib/cups/notifier/dbus dbus://
cups-br+    1658  0.0  0.6 207560 23024 ?        Ssl  18:57   0:00 /usr/sbin/cups-browsed
rtkit       1805  0.0  0.1  21872  3728 ?        SNsl 18:57   0:00 /usr/libexec/rtkit-daemon
colord      1932  0.0  0.4 317692 16840 ?        Ssl  18:57   0:00 /usr/libexec/colord
khalil-+    2915  0.1  0.4  23592 14972 ?        Ss   18:57   0:02 /usr/lib/systemd/systemd --user
khalil-+    2917  0.0  0.1  23460  4188 ?        S    18:57   0:00 (sd-pam)
khalil-+    2937  0.2  0.2  10268  7216 ?        Ss   18:57   0:04 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
khalil-+    2939  0.0  0.3 103692 13152 ?        S<sl 18:57   0:00 /usr/bin/pipewire
khalil-+    2940  0.0  0.3 183244 11432 ?        SLsl 18:57   0:01 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
khalil-+    2941  0.0  0.1   7560  4108 ?        Ss   18:57   0:00 /usr/bin/mpris-proxy
khalil-+    2944  0.0  0.9 724648 31996 ?        S<sl 18:57   0:01 /usr/bin/wireplumber
khalil-+    2946  0.0  0.1  84812  5836 ?        Ssl  18:57   0:00 /usr/bin/pipewire -c filter-chain.conf
khalil-+    2950  0.0  0.3 178280 12556 ?        S<sl 18:57   0:00 /usr/bin/pipewire-pulse
khalil-+    2992  0.0  0.1 168196  6820 tty2     Ssl+ 18:57   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
khalil-+    3003  0.0  0.2 175212  9312 tty2     Sl+  18:57   0:00 /usr/libexec/gnome-session-init-worker ubuntu
khalil-+    3132  0.0  0.2  97560  8064 ?        Ssl  18:57   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
khalil-+    3133  0.0  0.1  87208  5924 ?        Ssl  18:57   0:00 /usr/libexec/gnome-session-ctl --monitor
khalil-+    3134  0.0  0.1  10484  6768 ?        Ss   18:57   0:00 /usr/bin/ssh-agent -D
khalil-+    3146  0.0  0.2 312952  9076 ?        Ssl  18:57   0:00 /usr/libexec/gvfsd
khalil-+    3156  0.0  0.2 324640  7928 ?        Sl   18:57   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
khalil-+    3164  0.1  0.3 613324 11600 ?        Ssl  18:57   0:02 /usr/libexec/gnome-session-service --session=ubuntu
khalil-+    3171 13.2 10.4 7221280 362732 ?      Ssl  18:57   4:38 /usr/bin/gnome-shell --mode=ubuntu
khalil-+    3210  0.0  0.2 381124  8116 ?        Ssl  18:57   0:00 /usr/libexec/at-spi-bus-launcher
khalil-+    3217  0.0  0.1   8612  5308 ?        S    18:57   0:01 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
khalil-+    3219  0.0  0.2 168688  7784 ?        Sl   18:57   0:01 /usr/libexec/at-spi2-registryd --use-gnome-session
khalil-+    3238  0.0  0.2 307364  6968 ?        Ssl  18:57   0:00 /usr/libexec/xdg-permission-store
khalil-+    3240  0.0  0.5 658668 19624 ?        Sl   18:57   0:00 /usr/libexec/gnome-shell-calendar-server
khalil-+    3251  0.0  1.3 608164 46556 ?        Ssl  18:57   0:00 /usr/libexec/evolution-source-registry
khalil-+    3263  0.0  0.9 2735460 32664 ?       Sl   18:57   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
khalil-+    3285  1.4  0.3 385520 11820 ?        Ssl  18:57   0:31 /usr/bin/ibus-daemon --panel disable
khalil-+    3287  0.0  0.3 253792 10460 ?        Ssl  18:57   0:00 /usr/libexec/gsd-a11y-settings
khalil-+    3289  0.0  0.3 251624 10648 ?        Ssl  18:57   0:00 /usr/libexec/gsd-color
khalil-+    3290  0.0  0.3 260164 12696 ?        Ssl  18:57   0:00 /usr/libexec/gsd-datetime
khalil-+    3294  0.0  0.3 390768 10852 ?        Ssl  18:57   0:01 /usr/libexec/gsd-housekeeping
khalil-+    3300  0.0  0.2 383124  8388 ?        Ssl  18:57   0:00 /usr/libexec/gsd-keyboard
khalil-+    3303  0.0  0.4 756548 14908 ?        Ssl  18:57   0:01 /usr/libexec/gsd-media-keys
khalil-+    3311  0.0  0.3 540924 11752 ?        Ssl  18:57   0:01 /usr/libexec/gsd-power
khalil-+    3314  0.0  1.8 840348 65500 ?        Sl   18:57   0:01 /usr/libexec/evolution-data-server/evolution-alarm-notify
khalil-+    3320  0.0  0.4 327572 14512 ?        Ssl  18:57   0:00 /usr/libexec/gsd-print-notifications
khalil-+    3322  0.0  0.2 456924  8168 ?        Ssl  18:57   0:00 /usr/libexec/gsd-rfkill
khalil-+    3327  0.0  0.2 312176  9568 ?        Sl   18:57   0:00 /usr/libexec/gsd-disk-utility-notify
khalil-+    3335  0.0  0.2 169832  7436 ?        Ssl  18:57   0:00 /usr/libexec/gsd-screensaver-proxy
khalil-+    3336  0.0  1.0 651832 35852 ?        Sl   18:57   0:01 /usr/bin/update-notifier
khalil-+    3339  0.0  0.3 467388 12924 ?        Ssl  18:57   0:00 /usr/libexec/gsd-sharing
khalil-+    3342  0.0  0.2 385700  9996 ?        Ssl  18:57   0:00 /usr/libexec/gsd-smartcard
khalil-+    3343  0.0  0.3 254940 10864 ?        Ssl  18:57   0:00 /usr/libexec/gsd-sound
khalil-+    3352  0.0  0.2 545936 10076 ?        Ssl  18:57   0:00 /usr/libexec/gsd-usb-protection
khalil-+    3356  0.0  0.3 390408 10776 ?        Ssl  18:57   0:00 /usr/libexec/gsd-wwan
khalil-+    3426  0.0  0.9 466816 32472 ?        Sl   18:57   0:00 /usr/libexec/goa-daemon
khalil-+    3445  0.0  0.2 243000  8320 ?        Sl   18:57   0:00 /usr/libexec/ibus-dconf
khalil-+    3446  0.6  1.0 500088 37384 ?        Sl   18:57   0:14 /usr/libexec/ibus-extension-gtk3
khalil-+    3460  0.0  0.2 308500  8180 ?        Sl   18:57   0:00 /usr/libexec/ibus-portal
khalil-+    3489  0.0  0.3 387944 10452 ?        Sl   18:57   0:00 /usr/libexec/goa-identity-service
khalil-+    3492  0.0  0.7 876860 27224 ?        SNsl 18:57   0:02 /usr/libexec/localsearch-3
khalil-+    3494  0.0  0.9 450856 33732 ?        Ssl  18:57   0:01 /usr/bin/spice-vdagent -x
khalil-+    3502  0.0  0.3 399484 12380 ?        Sl   18:57   0:00 /usr/libexec/gsd-printer
khalil-+    3504  0.2  0.6 702996 21568 ?        Ssl  18:57   0:04 /usr/libexec/xdg-desktop-portal
khalil-+    3510  0.0  0.7 893408 26992 ?        Ssl  18:57   0:01 /usr/libexec/evolution-calendar-factory
khalil-+    3523  0.0  0.9 2733408 32772 ?       Sl   18:57   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
khalil-+    3560  0.0  0.2 613360  7824 ?        Ssl  18:57   0:00 /usr/libexec/xdg-document-portal
khalil-+    3577  0.0  0.3 386944 11152 ?        Ssl  18:57   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
khalil-+    3590  0.1  1.3 827108 45840 ?        Ssl  18:57   0:02 /usr/libexec/xdg-desktop-portal-gnome
khalil-+    3600  0.0  0.9 826072 31556 ?        Ssl  18:57   0:00 /usr/libexec/evolution-addressbook-factory
khalil-+    3601  0.0  0.2 308976  8084 ?        Ssl  18:57   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
khalil-+    3616  0.0  0.2 307832  7396 ?        Ssl  18:57   0:00 /usr/libexec/gvfs-goa-volume-monitor
khalil-+    3624  0.0  0.2 308008  7496 ?        Ssl  18:57   0:00 /usr/libexec/gvfs-mtp-volume-monitor
khalil-+    3632  0.0  0.2 389884  9624 ?        Ssl  18:57   0:01 /usr/libexec/gvfs-afc-volume-monitor
khalil-+    3646  0.3  0.2 169308  8184 ?        Sl   18:57   0:06 /usr/libexec/ibus-engine-simple
khalil-+    3771  0.0  0.2 168820  7212 ?        Ssl  18:57   0:00 /usr/libexec/gvfsd-metadata
khalil-+    3799  0.0  0.1 165352  6588 ?        Ssl  18:57   0:00 /usr/libexec/dconf-service
khalil-+    3860  0.0  0.2 534376 10028 ?        Sl   18:57   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
khalil-+    4068  0.0  0.8 492256 29176 ?        Ssl  18:57   0:01 /usr/libexec/xdg-desktop-portal-gtk
khalil-+    4110  0.0  2.0 212384 71144 ?        S    18:57   0:01 /usr/bin/Xwayland :0 -rootless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.MAOWY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
khalil-+    4117  0.0  0.3 251364 13808 ?        Ssl  18:57   0:00 /usr/libexec/gsd-xsettings
khalil-+    4122  0.0  3.4 2012544 118644 ?      Sl   18:57   0:01 /usr/libexec/mutter-x11-frames
khalil-+    4158  0.0  2.0 374024 72536 ?        Sl   18:57   0:00 /usr/libexec/ibus-x11
khalil-+    4438  0.0  2.0 1088800 69532 ?       Sl   18:59   0:01 /usr/bin/gnome-calendar --gapplication-service
khalil-+    4668  6.1 10.8 4137160 375280 ?      Sl   18:59   2:03 /usr/bin/ptyxis --gapplication-service
khalil-+    4716  0.1  0.2 239996  7992 ?        Ssl  18:59   0:03 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
khalil-+    4768  0.0  0.1   8828  5900 pts/0    Ss   18:59   0:00 /usr/bin/bash
khalil-+    5466  0.7  2.0 3133688 72452 ?       Sl   19:26   0:02 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
khalil-+    5738  0.0  0.1   7536  3912 pts/0    S+   19:32   0:00 bash -c ps aux | grep -v "^root"
khalil-+    5739  100  0.1   9904  4828 pts/0    R+   19:32   0:00 ps aux
khalil-+    5740  0.0  0.0   6716  2688 pts/0    S+   19:32   0:00 grep -v ^root
```

```bash
ps aux | grep -Ev "kworker|irq"
```

```
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.3  0.4  26452 17200 ?        Ss   18:57   0:06 /usr/lib/systemd/systemd --switched-root --system --deserialize=56
root           2  0.0  0.0      0     0 ?        S    18:57   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    18:57   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    18:57   0:01 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    18:57   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    18:57   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    18:57   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    18:57   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    18:57   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    18:57   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    18:57   0:00 [cpuhp/2]
root          23  0.0  0.0      0     0 ?        S    18:57   0:00 [idle_inject/2]
root          24  0.0  0.0      0     0 ?        S    18:57   0:00 [migration/2]
root          28  0.0  0.0      0     0 ?        S    18:57   0:00 [cpuhp/4]
root          29  0.0  0.0      0     0 ?        S    18:57   0:00 [idle_inject/4]
root          30  0.0  0.0      0     0 ?        S    18:57   0:00 [migration/4]
root          34  0.0  0.0      0     0 ?        S    18:57   0:00 [cpuhp/6]
root          35  0.0  0.0      0     0 ?        S    18:57   0:00 [idle_inject/6]
root          36  0.0  0.0      0     0 ?        S    18:57   0:00 [migration/6]
root          40  0.0  0.0      0     0 ?        S    18:57   0:00 [cpuhp/1]
root          41  0.0  0.0      0     0 ?        S    18:57   0:00 [idle_inject/1]
root          42  0.0  0.0      0     0 ?        S    18:57   0:00 [migration/1]
root          46  0.0  0.0      0     0 ?        S    18:57   0:00 [cpuhp/3]
root          47  0.0  0.0      0     0 ?        S    18:57   0:00 [idle_inject/3]
root          48  0.0  0.0      0     0 ?        S    18:57   0:00 [migration/3]
root          52  0.0  0.0      0     0 ?        S    18:57   0:00 [cpuhp/5]
root          53  0.0  0.0      0     0 ?        S    18:57   0:00 [idle_inject/5]
root          54  0.0  0.0      0     0 ?        S    18:57   0:00 [migration/5]
root          58  0.0  0.0      0     0 ?        S    18:57   0:00 [cpuhp/7]
root          59  0.0  0.0      0     0 ?        S    18:57   0:00 [idle_inject/7]
root          60  0.0  0.0      0     0 ?        S    18:57   0:00 [migration/7]
root          64  0.0  0.0      0     0 ?        S    18:57   0:00 [kdevtmpfs]
root          66  0.0  0.0      0     0 ?        I    18:57   0:00 [rcu_tasks_kthread]
root          67  0.0  0.0      0     0 ?        I    18:57   0:00 [rcu_tasks_rude_kthread]
root          68  0.0  0.0      0     0 ?        S    18:57   0:00 [kauditd]
root          69  0.0  0.0      0     0 ?        S    18:57   0:00 [khungtaskd]
root          70  0.0  0.0      0     0 ?        S    18:57   0:00 [oom_reaper]
root          74  0.0  0.0      0     0 ?        S    18:57   0:00 [kcompactd0]
root          75  0.0  0.0      0     0 ?        SN   18:57   0:00 [ksmd]
root          77  0.0  0.0      0     0 ?        SN   18:57   0:00 [khugepaged]
root          91  0.0  0.0      0     0 ?        S    18:57   0:00 [watchdogd]
root          93  0.0  0.0      0     0 ?        S    18:57   0:00 [kswapd0]
root          94  0.0  0.0      0     0 ?        S    18:57   0:00 [ecryptfs-kthread]
root         120  0.0  0.0      0     0 ?        S    18:57   0:00 [hwrng]
root         385  0.0  0.0      0     0 ?        S    18:57   0:00 [scsi_eh_0]
root         387  0.0  0.0      0     0 ?        S    18:57   0:00 [scsi_eh_1]
root         389  0.0  0.0      0     0 ?        S    18:57   0:00 [scsi_eh_2]
root         391  0.0  0.0      0     0 ?        S    18:57   0:00 [scsi_eh_3]
root         393  0.0  0.0      0     0 ?        S    18:57   0:00 [scsi_eh_4]
root         395  0.0  0.0      0     0 ?        S    18:57   0:00 [scsi_eh_5]
root         539  0.0  0.0      0     0 ?        S    18:57   0:00 [jbd2/dm-0-8]
root         640  0.0  0.0      0     0 ?        S    18:57   0:00 [psimon]
root         646  0.1  0.5  50928 18740 ?        S<s  18:57   0:03 /usr/lib/systemd/systemd-journald
root         681  0.1  0.2 279492  9644 ?        SLsl 18:57   0:02 /usr/sbin/multipathd -d -s
systemd+     700  0.0  0.4  22564 15036 ?        Ss   18:57   0:00 /usr/lib/systemd/systemd-resolved
root         703  0.0  0.4  41560 15332 ?        Ss   18:57   0:01 /usr/lib/systemd/systemd-udevd
root         708  0.0  0.0      0     0 ?        S    18:57   0:00 [psimon]
root         837  0.0  0.0      0     0 ?        S    18:57   0:00 [card0-crtc0]
root         986  0.0  0.0      0     0 ?        S    18:57   0:00 [jbd2/sda2-8]
systemd+    1267  0.0  0.3  21436 12356 ?        Ss   18:57   0:00 /usr/lib/systemd/systemd-networkd
avahi       1313  0.0  0.1   6756  4876 ?        Ss   18:57   0:00 avahi-daemon: running [ict.local]
root        1314  0.0  0.0   2888  2016 ?        Ss   18:57   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+    1315  0.1  0.2  11992  8944 ?        Ss   18:57   0:03 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1325  0.0  0.8  46844 30380 ?        Ss   18:57   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1327  0.2  0.3 386536 12432 ?        Ssl  18:57   0:05 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1339  0.1  1.2 2108648 42932 ?       Ssl  18:57   0:02 /usr/lib/snapd/snapd
root        1340  0.0  0.2 309616  8632 ?        Ssl  18:57   0:01 /usr/libexec/accounts-daemon
root        1341  0.0  0.2 307888  7680 ?        Ssl  18:57   0:00 /usr/libexec/switcheroo-control
root        1344  0.0  0.2  18940 10012 ?        Ss   18:57   0:01 /usr/lib/systemd/systemd-logind
root        1345  0.0  0.4 543800 15592 ?        Ssl  18:57   0:01 /usr/libexec/udisks2/udisksd
avahi       1365  0.0  0.0   6564  1648 ?        S    18:57   0:00 avahi-daemon: chroot helper
syslog      1393  0.0  0.1 220604  5988 ?        Ssl  18:57   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1444  0.0  0.3  23728 11200 ?        S    18:57   0:00 /usr/sbin/chronyd -n -F 1
root        1451  0.1  0.6 336520 22160 ?        Ssl  18:57   0:03 /usr/sbin/NetworkManager --no-daemon
root        1454  0.0  0.1  17972  6948 ?        Ss   18:57   0:00 /usr/sbin/wpa_supplicant -u -s -O DIR=/run/wpa_supplicant GROUP=netdev
_chrony     1471  0.0  0.0  12120  3408 ?        S    18:57   0:00 /usr/sbin/chronyd -n -F 1
root        1528  0.0  0.4 391608 14008 ?        Ssl  18:57   0:00 /usr/sbin/ModemManager
root        1580  0.0  0.3  29476 13260 ?        Ss   18:57   0:00 /usr/sbin/cupsd -l
root        1590  0.0  0.9 126116 32956 ?        Ssl  18:57   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root        1600  0.0  0.2  10740  7764 ?        Ss   18:57   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
lp          1612  0.0  0.2  15436  7268 ?        S    18:57   0:00 /usr/lib/cups/notifier/dbus dbus://
cups-br+    1658  0.0  0.6 207560 23024 ?        Ssl  18:57   0:00 /usr/sbin/cups-browsed
root        1661  0.0  0.0   7060  3356 ?        Ss   18:57   0:00 /usr/sbin/cron -f -P
root        1677  0.0  0.3 384576 10784 ?        Ssl  18:57   0:01 /usr/sbin/gdm3
root        1697  0.0  0.2 309144  7924 ?        Ssl  18:57   0:00 /usr/libexec/power-profiles-daemon
rtkit       1805  0.0  0.1  21872  3728 ?        SNsl 18:57   0:00 /usr/libexec/rtkit-daemon
colord      1932  0.0  0.4 317692 16840 ?        Ssl  18:57   0:00 /usr/libexec/colord
root        1971  0.0  0.3 318804 11576 ?        Ssl  18:57   0:00 /usr/libexec/upowerd
root        2712  2.4  0.2  92964  7156 ?        Ssl  18:57   0:51 /usr/sbin/spice-vdagentd -x
root        2786  0.0  0.3 385880 11460 ?        Sl   18:57   0:00 gdm-session-worker [pam/gdm-password]
khalil-+    2915  0.1  0.4  23592 14972 ?        Ss   18:57   0:02 /usr/lib/systemd/systemd --user
khalil-+    2917  0.0  0.1  23460  4188 ?        S    18:57   0:00 (sd-pam)
khalil-+    2937  0.2  0.2  10268  7216 ?        Ss   18:57   0:04 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
khalil-+    2939  0.0  0.3 103692 13152 ?        S<sl 18:57   0:00 /usr/bin/pipewire
khalil-+    2940  0.0  0.3 183244 11432 ?        SLsl 18:57   0:01 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
khalil-+    2941  0.0  0.1   7560  4108 ?        Ss   18:57   0:00 /usr/bin/mpris-proxy
khalil-+    2944  0.0  0.9 724648 31996 ?        S<sl 18:57   0:01 /usr/bin/wireplumber
khalil-+    2946  0.0  0.1  84812  5836 ?        Ssl  18:57   0:00 /usr/bin/pipewire -c filter-chain.conf
khalil-+    2950  0.0  0.3 178280 12556 ?        S<sl 18:57   0:00 /usr/bin/pipewire-pulse
khalil-+    2992  0.0  0.1 168196  6820 tty2     Ssl+ 18:57   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
khalil-+    3003  0.0  0.2 175212  9312 tty2     Sl+  18:57   0:00 /usr/libexec/gnome-session-init-worker ubuntu
khalil-+    3132  0.0  0.2  97560  8064 ?        Ssl  18:57   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
khalil-+    3133  0.0  0.1  87208  5924 ?        Ssl  18:57   0:00 /usr/libexec/gnome-session-ctl --monitor
khalil-+    3134  0.0  0.1  10484  6768 ?        Ss   18:57   0:00 /usr/bin/ssh-agent -D
khalil-+    3146  0.0  0.2 312952  9076 ?        Ssl  18:57   0:00 /usr/libexec/gvfsd
khalil-+    3156  0.0  0.2 324640  7928 ?        Sl   18:57   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
khalil-+    3164  0.1  0.3 613324 11600 ?        Ssl  18:57   0:02 /usr/libexec/gnome-session-service --session=ubuntu
khalil-+    3171 13.2 10.4 7221280 362732 ?      Ssl  18:57   4:38 /usr/bin/gnome-shell --mode=ubuntu
khalil-+    3210  0.0  0.2 381124  8116 ?        Ssl  18:57   0:00 /usr/libexec/at-spi-bus-launcher
khalil-+    3217  0.0  0.1   8612  5308 ?        S    18:57   0:01 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
khalil-+    3219  0.0  0.2 168688  7784 ?        Sl   18:57   0:01 /usr/libexec/at-spi2-registryd --use-gnome-session
khalil-+    3238  0.0  0.2 307364  6968 ?        Ssl  18:57   0:00 /usr/libexec/xdg-permission-store
khalil-+    3240  0.0  0.5 658668 19624 ?        Sl   18:57   0:00 /usr/libexec/gnome-shell-calendar-server
khalil-+    3251  0.0  1.3 608164 46556 ?        Ssl  18:57   0:00 /usr/libexec/evolution-source-registry
khalil-+    3263  0.0  0.9 2735460 32664 ?       Sl   18:57   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
khalil-+    3285  1.4  0.3 385520 11820 ?        Ssl  18:57   0:31 /usr/bin/ibus-daemon --panel disable
khalil-+    3287  0.0  0.3 253792 10460 ?        Ssl  18:57   0:00 /usr/libexec/gsd-a11y-settings
khalil-+    3289  0.0  0.3 251624 10648 ?        Ssl  18:57   0:00 /usr/libexec/gsd-color
khalil-+    3290  0.0  0.3 260164 12696 ?        Ssl  18:57   0:00 /usr/libexec/gsd-datetime
khalil-+    3294  0.0  0.3 390768 10852 ?        Ssl  18:57   0:01 /usr/libexec/gsd-housekeeping
khalil-+    3300  0.0  0.2 383124  8388 ?        Ssl  18:57   0:00 /usr/libexec/gsd-keyboard
khalil-+    3303  0.0  0.4 756548 14908 ?        Ssl  18:57   0:01 /usr/libexec/gsd-media-keys
khalil-+    3311  0.0  0.3 540924 11752 ?        Ssl  18:57   0:01 /usr/libexec/gsd-power
khalil-+    3314  0.0  1.8 840348 65500 ?        Sl   18:57   0:01 /usr/libexec/evolution-data-server/evolution-alarm-notify
khalil-+    3320  0.0  0.4 327572 14512 ?        Ssl  18:57   0:00 /usr/libexec/gsd-print-notifications
khalil-+    3322  0.0  0.2 456924  8168 ?        Ssl  18:57   0:00 /usr/libexec/gsd-rfkill
khalil-+    3327  0.0  0.2 312176  9568 ?        Sl   18:57   0:00 /usr/libexec/gsd-disk-utility-notify
khalil-+    3335  0.0  0.2 169832  7436 ?        Ssl  18:57   0:00 /usr/libexec/gsd-screensaver-proxy
khalil-+    3336  0.0  1.0 651832 35852 ?        Sl   18:57   0:01 /usr/bin/update-notifier
khalil-+    3339  0.0  0.3 467388 12924 ?        Ssl  18:57   0:00 /usr/libexec/gsd-sharing
khalil-+    3342  0.0  0.2 385700  9996 ?        Ssl  18:57   0:00 /usr/libexec/gsd-smartcard
khalil-+    3343  0.0  0.3 254940 10864 ?        Ssl  18:57   0:00 /usr/libexec/gsd-sound
khalil-+    3352  0.0  0.2 545936 10076 ?        Ssl  18:57   0:00 /usr/libexec/gsd-usb-protection
khalil-+    3356  0.0  0.3 390408 10776 ?        Ssl  18:57   0:00 /usr/libexec/gsd-wwan
khalil-+    3426  0.0  0.9 466816 32472 ?        Sl   18:57   0:00 /usr/libexec/goa-daemon
khalil-+    3445  0.0  0.2 243000  8320 ?        Sl   18:57   0:00 /usr/libexec/ibus-dconf
khalil-+    3446  0.6  1.0 500088 37384 ?        Sl   18:57   0:14 /usr/libexec/ibus-extension-gtk3
khalil-+    3460  0.0  0.2 308500  8180 ?        Sl   18:57   0:00 /usr/libexec/ibus-portal
khalil-+    3489  0.0  0.3 387944 10452 ?        Sl   18:57   0:00 /usr/libexec/goa-identity-service
khalil-+    3492  0.0  0.7 876860 27224 ?        SNsl 18:57   0:02 /usr/libexec/localsearch-3
khalil-+    3494  0.0  0.9 450856 33732 ?        Ssl  18:57   0:01 /usr/bin/spice-vdagent -x
khalil-+    3502  0.0  0.3 399484 12380 ?        Sl   18:57   0:00 /usr/libexec/gsd-printer
khalil-+    3504  0.2  0.6 702996 21568 ?        Ssl  18:57   0:04 /usr/libexec/xdg-desktop-portal
khalil-+    3510  0.0  0.7 893408 26992 ?        Ssl  18:57   0:01 /usr/libexec/evolution-calendar-factory
khalil-+    3523  0.0  0.9 2733408 32772 ?       Sl   18:57   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
khalil-+    3560  0.0  0.2 613360  7824 ?        Ssl  18:57   0:00 /usr/libexec/xdg-document-portal
khalil-+    3577  0.0  0.3 386944 11152 ?        Ssl  18:57   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
root        3582  0.0  0.0   2792  2308 ?        Ss   18:57   0:00 fusermount3 -o rw,nosuid,nodev,fsname=portal,auto_unmount,subtype=portal -- /run/user/1000/doc
khalil-+    3590  0.1  1.3 827108 45840 ?        Ssl  18:57   0:02 /usr/libexec/xdg-desktop-portal-gnome
khalil-+    3600  0.0  0.9 826072 31556 ?        Ssl  18:57   0:00 /usr/libexec/evolution-addressbook-factory
khalil-+    3601  0.0  0.2 308976  8084 ?        Ssl  18:57   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
khalil-+    3616  0.0  0.2 307832  7396 ?        Ssl  18:57   0:00 /usr/libexec/gvfs-goa-volume-monitor
khalil-+    3624  0.0  0.2 308008  7496 ?        Ssl  18:57   0:00 /usr/libexec/gvfs-mtp-volume-monitor
khalil-+    3632  0.0  0.2 389884  9624 ?        Ssl  18:57   0:01 /usr/libexec/gvfs-afc-volume-monitor
khalil-+    3646  0.3  0.2 169308  8184 ?        Sl   18:57   0:06 /usr/libexec/ibus-engine-simple
khalil-+    3771  0.0  0.2 168820  7212 ?        Ssl  18:57   0:00 /usr/libexec/gvfsd-metadata
khalil-+    3799  0.0  0.1 165352  6588 ?        Ssl  18:57   0:00 /usr/libexec/dconf-service
khalil-+    3860  0.0  0.2 534376 10028 ?        Sl   18:57   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
khalil-+    4068  0.0  0.8 492256 29176 ?        Ssl  18:57   0:01 /usr/libexec/xdg-desktop-portal-gtk
khalil-+    4110  0.0  2.0 212384 71144 ?        S    18:57   0:01 /usr/bin/Xwayland :0 -rootless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.MAOWY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
khalil-+    4117  0.0  0.3 251364 13808 ?        Ssl  18:57   0:00 /usr/libexec/gsd-xsettings
khalil-+    4122  0.0  3.4 2012544 118644 ?      Sl   18:57   0:01 /usr/libexec/mutter-x11-frames
khalil-+    4158  0.0  2.0 374024 72536 ?        Sl   18:57   0:00 /usr/libexec/ibus-x11
khalil-+    4438  0.0  2.0 1088800 69532 ?       Sl   18:59   0:01 /usr/bin/gnome-calendar --gapplication-service
khalil-+    4668  6.1 10.8 4137160 375280 ?      Sl   18:59   2:03 /usr/bin/ptyxis --gapplication-service
khalil-+    4716  0.1  0.2 239996  7992 ?        Ssl  18:59   0:03 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
khalil-+    4768  0.0  0.1   8828  5900 pts/0    Ss   18:59   0:00 /usr/bin/bash
khalil-+    5466  0.7  2.0 3133688 72452 ?       Sl   19:26   0:02 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
khalil-+    5742  0.0  0.1   9904  4836 pts/0    R+   19:32   0:00 ps aux
```
