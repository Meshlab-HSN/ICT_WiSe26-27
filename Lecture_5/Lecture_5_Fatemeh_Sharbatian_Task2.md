# Lecture 5 - Task 2
$ ps aux | grep newadmin
newadmin    1370  0.1  0.8  23516 14332 ?        Ss   23:20   0:02 /usr/lib/systemd/systemd --user
newadmin    1372  0.0  0.2  23332  4308 ?        S    23:20   0:00 (sd-pam)
newadmin    1392  0.1  0.4  10064  7396 ?        Ss   23:20   0:02 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
newadmin    1393  0.0  0.7 103232 12192 ?        S<sl 23:20   0:00 /usr/bin/pipewire
newadmin    1395  0.0  0.6 183244 10852 ?        SLsl 23:20   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1001/keyring
newadmin    1400  0.0  0.2   7560  3996 ?        Ss   23:20   0:00 /usr/bin/mpris-proxy
newadmin    1401  0.0  1.4 659112 25044 ?        S<sl 23:20   0:00 /usr/bin/wireplumber
newadmin    1402  0.0  0.3  84812  5876 ?        Ssl  23:20   0:00 /usr/bin/pipewire -c filter-chain.conf
newadmin    1403  0.0  0.7 176424 12288 ?        S<sl 23:20   0:00 /usr/bin/pipewire-pulse
newadmin    1404  0.0  0.3 168196  6636 tty2     Ssl+ 23:20   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
newadmin    1411  0.0  0.5 175212  9300 tty2     Sl+  23:20   0:00 /usr/libexec/gnome-session-init-worker ubuntu
newadmin    1522  0.0  0.5 310560  8488 ?        Ssl  23:20   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1001/gcr
newadmin    1523  0.0  0.3  87208  5852 ?        Ssl  23:20   0:00 /usr/libexec/gnome-session-ctl --monitor
newadmin    1524  0.0  0.4  10484  6760 ?        Ss   23:20   0:00 /usr/bin/ssh-agent -D
newadmin    1537  0.0  0.5 312980  8924 ?        Ssl  23:20   0:00 /usr/libexec/gvfsd
newadmin    1548  0.0  0.4 324640  7912 ?        Sl   23:20   0:00 /usr/libexec/gvfsd-fuse /run/user/1001/gvfs -f
newadmin    1550  0.0  0.6 613332 11364 ?        Ssl  23:20   0:00 /usr/libexec/gnome-session-service --session=ubuntu
newadmin    1563  3.8 19.1 3454620 322804 ?      Rsl  23:20   1:09 /usr/bin/gnome-shell --mode=ubuntu
newadmin    1576  0.0  0.4 381132  8112 ?        Ssl  23:20   0:00 /usr/libexec/at-spi-bus-launcher
newadmin    1583  0.0  0.3   8616  5300 ?        S    23:20   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1001/at-spi/bus
newadmin    1585  0.0  0.4 168688  7800 ?        Sl   23:20   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
newadmin    1616  0.0  0.4 307364  6904 ?        Ssl  23:20   0:00 /usr/libexec/xdg-permission-store
newadmin    1618  0.0  1.1 658664 18772 ?        Sl   23:20   0:00 /usr/libexec/gnome-shell-calendar-server
newadmin    1629  0.0  2.6 690092 44980 ?        Ssl  23:20   0:00 /usr/libexec/evolution-source-registry
newadmin    1642  0.0  1.8 466816 30936 ?        Sl   23:20   0:00 /usr/libexec/goa-daemon
newadmin    1647  0.0  1.4 696852 23852 ?        Ssl  23:20   0:00 /usr/libexec/evolution-calendar-factory
newadmin    1668  0.0  1.8 2592088 31284 ?       Sl   23:21   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
newadmin    1670  0.0  0.6 387944 10220 ?        Sl   23:21   0:00 /usr/libexec/goa-identity-service
newadmin    1676  0.0  1.7 686804 29268 ?        Ssl  23:21   0:00 /usr/libexec/evolution-addressbook-factory
newadmin    1697  0.1  0.7 385604 11792 ?        Ssl  23:21   0:01 /usr/bin/ibus-daemon --panel disable
newadmin    1698  0.0  0.6 253800 10592 ?        Ssl  23:21   0:00 /usr/libexec/gsd-a11y-settings
newadmin    1699  0.0  0.6 251632 10504 ?        Ssl  23:21   0:00 /usr/libexec/gsd-color
newadmin    1700  0.0  0.7 260168 12728 ?        Ssl  23:21   0:00 /usr/libexec/gsd-datetime
newadmin    1701  0.0  0.6 390776 11084 ?        Ssl  23:21   0:00 /usr/libexec/gsd-housekeeping
newadmin    1702  0.0  0.4 383132  8244 ?        Ssl  23:21   0:00 /usr/libexec/gsd-keyboard
newadmin    1703  0.0  0.8 559948 14648 ?        Ssl  23:21   0:00 /usr/libexec/gsd-media-keys
newadmin    1709  0.0  0.7 475396 11900 ?        Ssl  23:21   0:00 /usr/libexec/gsd-power
newadmin    1710  0.0  0.8 327564 14448 ?        Ssl  23:21   0:00 /usr/libexec/gsd-print-notifications
newadmin    1711  0.0  0.4 456924  8296 ?        Ssl  23:21   0:00 /usr/libexec/gsd-rfkill
newadmin    1714  0.0  0.4 169832  7584 ?        Ssl  23:21   0:00 /usr/libexec/gsd-screensaver-proxy
newadmin    1715  0.0  0.7 467400 12224 ?        Ssl  23:21   0:00 /usr/libexec/gsd-sharing
newadmin    1716  0.0  0.5 385708  9708 ?        Ssl  23:21   0:00 /usr/libexec/gsd-smartcard
newadmin    1717  0.0  0.6 254948 10560 ?        Ssl  23:21   0:00 /usr/libexec/gsd-sound
newadmin    1718  0.0  0.5 480276  9960 ?        Ssl  23:21   0:00 /usr/libexec/gsd-usb-protection
newadmin    1721  0.0  0.6 390416 10704 ?        Ssl  23:21   0:00 /usr/libexec/gsd-wwan
newadmin    1734  0.0  2.1 643632 35616 ?        Sl   23:21   0:00 /usr/bin/update-notifier
newadmin    1736  0.0  3.7 840352 63852 ?        Sl   23:21   0:00 /usr/libexec/evolution-data-server/evolution-alarm-notify
newadmin    1744  0.0  0.5 312176  9416 ?        Sl   23:21   0:00 /usr/libexec/gsd-disk-utility-notify
newadmin    1884  0.0  0.7 407680 12680 ?        Sl   23:21   0:00 /usr/libexec/gsd-printer
newadmin    1901  0.0  1.8 2591108 31428 ?       Sl   23:21   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
newadmin    1925  0.0  0.4 169180  7888 ?        Sl   23:21   0:00 /usr/libexec/ibus-memconf
newadmin    1926  1.0  2.2 499944 37324 ?        Sl   23:21   0:18 /usr/libexec/ibus-extension-gtk3
newadmin    1928  0.0  0.4 308500  8132 ?        Sl   23:21   0:00 /usr/libexec/ibus-portal
newadmin    1929  0.0  1.6 666100 27384 ?        SNsl 23:21   0:00 /usr/libexec/localsearch-3
newadmin    1931  0.0  1.2 629060 20304 ?        Ssl  23:21   0:00 /usr/libexec/xdg-desktop-portal
newadmin    1961  0.0  0.4 621556  7680 ?        Ssl  23:21   0:00 /usr/libexec/xdg-document-portal
newadmin    1972  0.0  2.6 696092 44516 ?        Ssl  23:21   0:01 /usr/libexec/xdg-desktop-portal-gnome
newadmin    1977  0.0  3.9 212600 66388 ?        S    23:21   0:01 /usr/bin/Xwayland :0 -rootless -noreset -accessx -core -auth /run/user/1001/.mutter-Xwaylandauth.WLGQY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
newadmin    1994  0.0  0.7 460692 12104 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
newadmin    2000  0.0  0.5 389884  9540 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-afc-volume-monitor
newadmin    2008  0.0  0.4 308852  7700 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
newadmin    2013  0.0  0.4 307832  7368 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-goa-volume-monitor
newadmin    2028  0.0  0.4 307884  7412 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-mtp-volume-monitor
newadmin    2038  0.0  0.4 169176  8160 ?        Sl   23:21   0:00 /usr/libexec/ibus-engine-simple
newadmin    2119  0.0  0.4 168860  7500 ?        Ssl  23:21   0:00 /usr/libexec/gvfsd-metadata
newadmin    2147  0.0  0.3 165344  6636 ?        Ssl  23:21   0:00 /usr/libexec/dconf-service
newadmin    2168  0.0  0.5 534376  9872 ?        Sl   23:21   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
newadmin    2224  0.0  0.8 251368 13704 ?        Ssl  23:21   0:00 /usr/libexec/gsd-xsettings
newadmin    2241  0.0  0.1  16896  1808 ?        S    23:21   0:00 /usr/bin/VBoxClient --clipboard
newadmin    2242  0.0  6.9 833060 117244 ?       Sl   23:21   0:01 /usr/libexec/mutter-x11-frames
newadmin    2244  0.0  0.2 215716  4208 ?        Sl   23:21   0:00 /usr/bin/VBoxClient --clipboard
newadmin    2284  0.0  0.1  16896  1808 ?        S    23:21   0:00 /usr/bin/VBoxClient --vmsvga
newadmin    2291  0.0  4.2 374024 71556 ?        Sl   23:21   0:00 /usr/libexec/ibus-x11
newadmin    2391  0.0  1.7 492248 29116 ?        Ssl  23:21   0:00 /usr/libexec/xdg-desktop-portal-gtk
newadmin    2864  0.0  3.7 892188 63096 ?        Sl   23:22   0:01 /usr/bin/gnome-calendar --gapplication-service
newadmin    2870  0.0  2.7 671108 45660 ?        SLl  23:22   0:01 /usr/bin/seahorse --gapplication-service
newadmin    2924  2.4 22.5 1273208 379348 ?      Sl   23:22   0:41 /usr/bin/ptyxis --gapplication-service
newadmin    2968  0.0  0.4 240004  7996 ?        Ssl  23:22   0:00 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
newadmin    3040  0.0  0.3   8828  5628 pts/0    Ss   23:22   0:00 /usr/bin/bash
newadmin    3677  0.0  0.4  10500  7036 ?        S    23:31   0:00 /usr/bin/ssh-agent -D -a /run/user/1001/gcr/.ssh
newadmin    4193  0.2  4.0 2791648 67500 ?       Sl   23:38   0:01 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
newadmin    4938  100  0.2   9904  4816 pts/0    R+   23:51   0:00 ps aux
newadmin    4939  0.0  0.1   6716  2684 pts/0    S+   23:51   0:00 grep --color=auto newadmin
newadmin    4940  0.0  0.4  17652  7880 pts/0    S+   23:51   0:00 tee -a Lecture_5_Fatemeh_Sharbatian_Task2.md
$ ps aux | grep "^newadmin"
newadmin    1370  0.1  0.8  23516 14332 ?        Ss   23:20   0:02 /usr/lib/systemd/systemd --user
newadmin    1372  0.0  0.2  23332  4308 ?        S    23:20   0:00 (sd-pam)
newadmin    1392  0.1  0.4  10064  7396 ?        Ss   23:20   0:02 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
newadmin    1393  0.0  0.7 103232 12192 ?        S<sl 23:20   0:00 /usr/bin/pipewire
newadmin    1395  0.0  0.6 183244 10852 ?        SLsl 23:20   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1001/keyring
newadmin    1400  0.0  0.2   7560  3996 ?        Ss   23:20   0:00 /usr/bin/mpris-proxy
newadmin    1401  0.0  1.4 659112 25044 ?        S<sl 23:20   0:00 /usr/bin/wireplumber
newadmin    1402  0.0  0.3  84812  5876 ?        Ssl  23:20   0:00 /usr/bin/pipewire -c filter-chain.conf
newadmin    1403  0.0  0.7 176424 12288 ?        S<sl 23:20   0:00 /usr/bin/pipewire-pulse
newadmin    1404  0.0  0.3 168196  6636 tty2     Ssl+ 23:20   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
newadmin    1411  0.0  0.5 175212  9300 tty2     Sl+  23:20   0:00 /usr/libexec/gnome-session-init-worker ubuntu
newadmin    1522  0.0  0.5 310560  8488 ?        Ssl  23:20   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1001/gcr
newadmin    1523  0.0  0.3  87208  5852 ?        Ssl  23:20   0:00 /usr/libexec/gnome-session-ctl --monitor
newadmin    1524  0.0  0.4  10484  6760 ?        Ss   23:20   0:00 /usr/bin/ssh-agent -D
newadmin    1537  0.0  0.5 312980  8924 ?        Ssl  23:20   0:00 /usr/libexec/gvfsd
newadmin    1548  0.0  0.4 324640  7912 ?        Sl   23:20   0:00 /usr/libexec/gvfsd-fuse /run/user/1001/gvfs -f
newadmin    1550  0.0  0.6 613332 11364 ?        Ssl  23:20   0:00 /usr/libexec/gnome-session-service --session=ubuntu
newadmin    1563  3.6 19.1 3454636 322748 ?      Rsl  23:20   1:11 /usr/bin/gnome-shell --mode=ubuntu
newadmin    1576  0.0  0.4 381132  8112 ?        Ssl  23:20   0:00 /usr/libexec/at-spi-bus-launcher
newadmin    1583  0.0  0.3   8616  5300 ?        S    23:20   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1001/at-spi/bus
newadmin    1585  0.0  0.4 168688  7800 ?        Sl   23:20   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
newadmin    1616  0.0  0.4 307364  6904 ?        Ssl  23:20   0:00 /usr/libexec/xdg-permission-store
newadmin    1618  0.0  1.1 658664 18772 ?        Sl   23:20   0:00 /usr/libexec/gnome-shell-calendar-server
newadmin    1629  0.0  2.6 690092 44980 ?        Ssl  23:20   0:00 /usr/libexec/evolution-source-registry
newadmin    1642  0.0  1.8 466816 30936 ?        Sl   23:20   0:00 /usr/libexec/goa-daemon
newadmin    1647  0.0  1.4 696852 23852 ?        Ssl  23:20   0:00 /usr/libexec/evolution-calendar-factory
newadmin    1668  0.0  1.8 2592088 31284 ?       Sl   23:21   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
newadmin    1670  0.0  0.6 387944 10220 ?        Sl   23:21   0:00 /usr/libexec/goa-identity-service
newadmin    1676  0.0  1.7 686804 29268 ?        Ssl  23:21   0:00 /usr/libexec/evolution-addressbook-factory
newadmin    1697  0.1  0.7 385604 11792 ?        Ssl  23:21   0:02 /usr/bin/ibus-daemon --panel disable
newadmin    1698  0.0  0.6 253800 10592 ?        Ssl  23:21   0:00 /usr/libexec/gsd-a11y-settings
newadmin    1699  0.0  0.6 251632 10504 ?        Ssl  23:21   0:00 /usr/libexec/gsd-color
newadmin    1700  0.0  0.7 260168 12728 ?        Ssl  23:21   0:00 /usr/libexec/gsd-datetime
newadmin    1701  0.0  0.6 390776 11084 ?        Ssl  23:21   0:00 /usr/libexec/gsd-housekeeping
newadmin    1702  0.0  0.4 383132  8244 ?        Ssl  23:21   0:00 /usr/libexec/gsd-keyboard
newadmin    1703  0.0  0.8 559948 14648 ?        Ssl  23:21   0:00 /usr/libexec/gsd-media-keys
newadmin    1709  0.0  0.7 475396 11900 ?        Ssl  23:21   0:00 /usr/libexec/gsd-power
newadmin    1710  0.0  0.8 327564 14448 ?        Ssl  23:21   0:00 /usr/libexec/gsd-print-notifications
newadmin    1711  0.0  0.4 456924  8296 ?        Ssl  23:21   0:00 /usr/libexec/gsd-rfkill
newadmin    1714  0.0  0.4 169832  7584 ?        Ssl  23:21   0:00 /usr/libexec/gsd-screensaver-proxy
newadmin    1715  0.0  0.7 467400 12224 ?        Ssl  23:21   0:00 /usr/libexec/gsd-sharing
newadmin    1716  0.0  0.5 385708  9708 ?        Ssl  23:21   0:00 /usr/libexec/gsd-smartcard
newadmin    1717  0.0  0.6 254948 10560 ?        Ssl  23:21   0:00 /usr/libexec/gsd-sound
newadmin    1718  0.0  0.5 480276  9960 ?        Ssl  23:21   0:00 /usr/libexec/gsd-usb-protection
newadmin    1721  0.0  0.6 390416 10704 ?        Ssl  23:21   0:00 /usr/libexec/gsd-wwan
newadmin    1734  0.0  2.1 643632 35620 ?        Sl   23:21   0:00 /usr/bin/update-notifier
newadmin    1736  0.0  3.7 840352 63852 ?        Sl   23:21   0:00 /usr/libexec/evolution-data-server/evolution-alarm-notify
newadmin    1744  0.0  0.5 312176  9416 ?        Sl   23:21   0:00 /usr/libexec/gsd-disk-utility-notify
newadmin    1884  0.0  0.7 407680 12680 ?        Sl   23:21   0:00 /usr/libexec/gsd-printer
newadmin    1901  0.0  1.8 2591108 31428 ?       Sl   23:21   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
newadmin    1925  0.0  0.4 169180  7888 ?        Sl   23:21   0:00 /usr/libexec/ibus-memconf
newadmin    1926  0.9  2.2 499944 37328 ?        Sl   23:21   0:18 /usr/libexec/ibus-extension-gtk3
newadmin    1928  0.0  0.4 308500  8132 ?        Sl   23:21   0:00 /usr/libexec/ibus-portal
newadmin    1929  0.0  1.6 666100 27384 ?        SNsl 23:21   0:01 /usr/libexec/localsearch-3
newadmin    1931  0.0  1.2 629060 20304 ?        Ssl  23:21   0:00 /usr/libexec/xdg-desktop-portal
newadmin    1961  0.0  0.4 621556  7680 ?        Ssl  23:21   0:00 /usr/libexec/xdg-document-portal
newadmin    1972  0.0  2.6 696092 44516 ?        Ssl  23:21   0:01 /usr/libexec/xdg-desktop-portal-gnome
newadmin    1977  0.0  3.9 212600 66388 ?        S    23:21   0:01 /usr/bin/Xwayland :0 -rootless -noreset -accessx -core -auth /run/user/1001/.mutter-Xwaylandauth.WLGQY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
newadmin    1994  0.0  0.7 460692 12104 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
newadmin    2000  0.0  0.5 389884  9540 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-afc-volume-monitor
newadmin    2008  0.0  0.4 308852  7700 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
newadmin    2013  0.0  0.4 307832  7368 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-goa-volume-monitor
newadmin    2028  0.0  0.4 307884  7412 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-mtp-volume-monitor
newadmin    2038  0.0  0.4 169176  8160 ?        Sl   23:21   0:00 /usr/libexec/ibus-engine-simple
newadmin    2119  0.0  0.4 168860  7500 ?        Ssl  23:21   0:00 /usr/libexec/gvfsd-metadata
newadmin    2147  0.0  0.3 165344  6636 ?        Ssl  23:21   0:00 /usr/libexec/dconf-service
newadmin    2168  0.0  0.5 534376  9872 ?        Sl   23:21   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
newadmin    2224  0.0  0.8 251368 13704 ?        Ssl  23:21   0:00 /usr/libexec/gsd-xsettings
newadmin    2241  0.0  0.1  16896  1808 ?        S    23:21   0:00 /usr/bin/VBoxClient --clipboard
newadmin    2242  0.0  6.9 833060 117244 ?       Sl   23:21   0:01 /usr/libexec/mutter-x11-frames
newadmin    2244  0.0  0.2 215716  4208 ?        Sl   23:21   0:00 /usr/bin/VBoxClient --clipboard
newadmin    2284  0.0  0.1  16896  1808 ?        S    23:21   0:00 /usr/bin/VBoxClient --vmsvga
newadmin    2291  0.0  4.2 374024 71556 ?        Sl   23:21   0:00 /usr/libexec/ibus-x11
newadmin    2391  0.0  1.7 492248 29116 ?        Ssl  23:21   0:00 /usr/libexec/xdg-desktop-portal-gtk
newadmin    2864  0.0  3.7 892188 63096 ?        Sl   23:22   0:01 /usr/bin/gnome-calendar --gapplication-service
newadmin    2870  0.0  2.7 671108 45660 ?        SLl  23:22   0:01 /usr/bin/seahorse --gapplication-service
newadmin    2924  2.3 22.5 1273224 379368 ?      Sl   23:22   0:42 /usr/bin/ptyxis --gapplication-service
newadmin    2968  0.0  0.4 240004  7996 ?        Ssl  23:22   0:00 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
newadmin    3040  0.0  0.3   8828  5628 pts/0    Ss   23:22   0:00 /usr/bin/bash
newadmin    3677  0.0  0.4  10500  7036 ?        S    23:31   0:00 /usr/bin/ssh-agent -D -a /run/user/1001/gcr/.ssh
newadmin    4193  0.1  4.0 2791648 67500 ?       Sl   23:38   0:01 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
newadmin    5049  100  0.2   9904  4828 pts/0    R+   23:53   0:00 ps aux
newadmin    5050  0.0  0.1   6716  2668 pts/0    S+   23:53   0:00 grep --color=auto ^newadmin
newadmin    5051  0.0  0.4  17652  7940 pts/0    S+   23:53   0:00 tee -a Lecture_5_Fatemeh_Sharbatian_Task2.md
$ ps aux | grep -v "^root"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     360  0.0  0.8  22552 14024 ?        Ss   23:18   0:00 /usr/lib/systemd/systemd-resolved
systemd+     583  0.0  0.6  21292 10856 ?        Ss   23:18   0:00 /usr/lib/systemd/systemd-networkd
avahi        770  0.0  0.2   6748  4748 ?        Ss   23:18   0:00 avahi-daemon: running [fatemeh-sharbatian.local]
message+     771  0.2  0.5  11848  8728 ?        Ss   23:18   0:05 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      777  0.0  0.7 312864 12388 ?        Ssl  23:18   0:01 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
avahi        792  0.0  0.0   6564  1524 ?        S    23:18   0:00 avahi-daemon: chroot helper
syslog      1035  0.0  0.3 220628  5708 ?        Ssl  23:19   0:00 /usr/sbin/rsyslogd -n -iNONE
lp          1156  0.0  0.4  15436  7364 ?        S    23:19   0:00 /usr/lib/cups/notifier/dbus dbus://
lp          1158  0.0  0.4  15436  7252 ?        S    23:19   0:00 /usr/lib/cups/notifier/dbus dbus://
lp          1159  0.0  0.4  15436  7340 ?        S    23:19   0:00 /usr/lib/cups/notifier/dbus dbus://
lp          1161  0.0  0.4  15436  7408 ?        S    23:19   0:00 /usr/lib/cups/notifier/dbus dbus://
lp          1166  0.0  0.4  15436  7288 ?        S    23:19   0:00 /usr/lib/cups/notifier/dbus dbus://
cups-br+    1335  0.0  1.1 207560 19196 ?        Ssl  23:20   0:00 /usr/sbin/cups-browsed
newadmin    1370  0.1  0.8  23516 14332 ?        Ss   23:20   0:02 /usr/lib/systemd/systemd --user
newadmin    1372  0.0  0.2  23332  4308 ?        S    23:20   0:00 (sd-pam)
newadmin    1392  0.1  0.4  10064  7396 ?        Ss   23:20   0:02 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
newadmin    1393  0.0  0.7 103232 12076 ?        S<sl 23:20   0:00 /usr/bin/pipewire
newadmin    1395  0.0  0.6 183244 10804 ?        SLsl 23:20   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1001/keyring
newadmin    1400  0.0  0.2   7560  3996 ?        Ss   23:20   0:00 /usr/bin/mpris-proxy
newadmin    1401  0.0  1.4 659112 25044 ?        S<sl 23:20   0:00 /usr/bin/wireplumber
newadmin    1402  0.0  0.3  84812  5876 ?        Ssl  23:20   0:00 /usr/bin/pipewire -c filter-chain.conf
newadmin    1403  0.0  0.7 176424 12208 ?        S<sl 23:20   0:00 /usr/bin/pipewire-pulse
newadmin    1404  0.0  0.3 168196  6636 tty2     Ssl+ 23:20   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
rtkit       1410  0.0  0.2  21872  3632 ?        SNsl 23:20   0:00 /usr/libexec/rtkit-daemon
newadmin    1411  0.0  0.5 175212  9300 tty2     Sl+  23:20   0:00 /usr/libexec/gnome-session-init-worker ubuntu
newadmin    1522  0.0  0.5 310560  8488 ?        Ssl  23:20   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1001/gcr
newadmin    1523  0.0  0.3  87208  5852 ?        Ssl  23:20   0:00 /usr/libexec/gnome-session-ctl --monitor
newadmin    1524  0.0  0.4  10484  6760 ?        Ss   23:20   0:00 /usr/bin/ssh-agent -D
newadmin    1537  0.0  0.5 312980  8924 ?        Ssl  23:20   0:00 /usr/libexec/gvfsd
newadmin    1548  0.0  0.4 324640  7912 ?        Sl   23:20   0:00 /usr/libexec/gvfsd-fuse /run/user/1001/gvfs -f
newadmin    1550  0.0  0.6 613332 11364 ?        Ssl  23:20   0:00 /usr/libexec/gnome-session-service --session=ubuntu
newadmin    1563  3.7 19.5 3461620 329548 ?      Ssl  23:20   1:15 /usr/bin/gnome-shell --mode=ubuntu
newadmin    1576  0.0  0.4 381132  8112 ?        Ssl  23:20   0:00 /usr/libexec/at-spi-bus-launcher
newadmin    1583  0.0  0.3   8616  5300 ?        S    23:20   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1001/at-spi/bus
newadmin    1585  0.0  0.4 168688  7800 ?        Sl   23:20   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
colord      1586  0.0  0.9 316816 15756 ?        Ssl  23:20   0:00 /usr/libexec/colord
newadmin    1616  0.0  0.4 307364  6904 ?        Ssl  23:20   0:00 /usr/libexec/xdg-permission-store
newadmin    1618  0.0  1.1 658664 18772 ?        Sl   23:20   0:00 /usr/libexec/gnome-shell-calendar-server
newadmin    1629  0.0  2.6 690092 44980 ?        Ssl  23:20   0:00 /usr/libexec/evolution-source-registry
newadmin    1642  0.0  1.8 466816 30936 ?        Sl   23:20   0:00 /usr/libexec/goa-daemon
newadmin    1647  0.0  1.4 696852 23792 ?        Ssl  23:20   0:00 /usr/libexec/evolution-calendar-factory
newadmin    1668  0.0  1.8 2592088 31284 ?       Sl   23:21   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
newadmin    1670  0.0  0.6 387944 10220 ?        Sl   23:21   0:00 /usr/libexec/goa-identity-service
newadmin    1676  0.0  1.7 686804 29244 ?        Ssl  23:21   0:00 /usr/libexec/evolution-addressbook-factory
newadmin    1697  0.1  0.7 385604 11792 ?        Ssl  23:21   0:02 /usr/bin/ibus-daemon --panel disable
newadmin    1698  0.0  0.6 253800 10592 ?        Ssl  23:21   0:00 /usr/libexec/gsd-a11y-settings
newadmin    1699  0.0  0.6 251632 10488 ?        Ssl  23:21   0:00 /usr/libexec/gsd-color
newadmin    1700  0.0  0.7 260168 12728 ?        Ssl  23:21   0:00 /usr/libexec/gsd-datetime
newadmin    1701  0.0  0.6 390776 11084 ?        Ssl  23:21   0:00 /usr/libexec/gsd-housekeeping
newadmin    1702  0.0  0.4 383132  8240 ?        Ssl  23:21   0:00 /usr/libexec/gsd-keyboard
newadmin    1703  0.0  0.8 559948 14600 ?        Ssl  23:21   0:00 /usr/libexec/gsd-media-keys
newadmin    1709  0.0  0.7 475396 11900 ?        Ssl  23:21   0:00 /usr/libexec/gsd-power
newadmin    1710  0.0  0.8 327564 14448 ?        Ssl  23:21   0:00 /usr/libexec/gsd-print-notifications
newadmin    1711  0.0  0.4 456924  8296 ?        Ssl  23:21   0:00 /usr/libexec/gsd-rfkill
newadmin    1714  0.0  0.4 169832  7584 ?        Ssl  23:21   0:00 /usr/libexec/gsd-screensaver-proxy
newadmin    1715  0.0  0.7 467400 12224 ?        Ssl  23:21   0:00 /usr/libexec/gsd-sharing
newadmin    1716  0.0  0.5 385708  9692 ?        Ssl  23:21   0:00 /usr/libexec/gsd-smartcard
newadmin    1717  0.0  0.6 254948 10556 ?        Ssl  23:21   0:00 /usr/libexec/gsd-sound
newadmin    1718  0.0  0.5 480276  9960 ?        Ssl  23:21   0:00 /usr/libexec/gsd-usb-protection
newadmin    1721  0.0  0.6 390416 10652 ?        Ssl  23:21   0:00 /usr/libexec/gsd-wwan
newadmin    1734  0.0  2.1 643632 35616 ?        Sl   23:21   0:00 /usr/bin/update-notifier
newadmin    1736  0.0  3.7 840352 63804 ?        Sl   23:21   0:00 /usr/libexec/evolution-data-server/evolution-alarm-notify
newadmin    1744  0.0  0.5 312176  9416 ?        Sl   23:21   0:00 /usr/libexec/gsd-disk-utility-notify
newadmin    1884  0.0  0.7 407680 12680 ?        Sl   23:21   0:00 /usr/libexec/gsd-printer
newadmin    1901  0.0  1.8 2591108 31428 ?       Sl   23:21   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
newadmin    1925  0.0  0.4 169180  7888 ?        Sl   23:21   0:00 /usr/libexec/ibus-memconf
newadmin    1926  0.9  2.2 499944 37324 ?        Sl   23:21   0:18 /usr/libexec/ibus-extension-gtk3
newadmin    1928  0.0  0.4 308500  8132 ?        Sl   23:21   0:00 /usr/libexec/ibus-portal
newadmin    1929  0.0  1.6 666100 27384 ?        SNsl 23:21   0:01 /usr/libexec/localsearch-3
newadmin    1931  0.0  1.2 629060 20292 ?        Ssl  23:21   0:00 /usr/libexec/xdg-desktop-portal
newadmin    1961  0.0  0.4 621556  7680 ?        Ssl  23:21   0:00 /usr/libexec/xdg-document-portal
newadmin    1972  0.0  2.6 696092 44516 ?        Ssl  23:21   0:01 /usr/libexec/xdg-desktop-portal-gnome
newadmin    1977  0.0  3.9 212600 66388 ?        S    23:21   0:01 /usr/bin/Xwayland :0 -rootless -noreset -accessx -core -auth /run/user/1001/.mutter-Xwaylandauth.WLGQY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
newadmin    1994  0.0  0.7 460692 12104 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
newadmin    2000  0.0  0.5 389884  9504 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-afc-volume-monitor
newadmin    2008  0.0  0.4 308852  7700 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
newadmin    2013  0.0  0.4 307832  7368 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-goa-volume-monitor
newadmin    2028  0.0  0.4 307884  7412 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-mtp-volume-monitor
newadmin    2038  0.0  0.4 169176  8160 ?        Sl   23:21   0:00 /usr/libexec/ibus-engine-simple
newadmin    2119  0.0  0.4 168860  7500 ?        Ssl  23:21   0:00 /usr/libexec/gvfsd-metadata
newadmin    2147  0.0  0.3 165344  6636 ?        Ssl  23:21   0:00 /usr/libexec/dconf-service
newadmin    2168  0.0  0.5 534376  9872 ?        Sl   23:21   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
newadmin    2224  0.0  0.8 251368 13704 ?        Ssl  23:21   0:00 /usr/libexec/gsd-xsettings
newadmin    2241  0.0  0.1  16896  1808 ?        S    23:21   0:00 /usr/bin/VBoxClient --clipboard
newadmin    2242  0.0  6.9 833060 117240 ?       Sl   23:21   0:01 /usr/libexec/mutter-x11-frames
newadmin    2244  0.0  0.2 215716  4208 ?        Sl   23:21   0:00 /usr/bin/VBoxClient --clipboard
newadmin    2284  0.0  0.1  16896  1808 ?        S    23:21   0:00 /usr/bin/VBoxClient --vmsvga
newadmin    2291  0.0  4.2 374024 71552 ?        Sl   23:21   0:00 /usr/libexec/ibus-x11
newadmin    2391  0.0  1.7 492248 29116 ?        Ssl  23:21   0:00 /usr/libexec/xdg-desktop-portal-gtk
newadmin    2864  0.0  3.7 892188 63076 ?        Sl   23:22   0:01 /usr/bin/gnome-calendar --gapplication-service
newadmin    2870  0.0  2.7 671108 45660 ?        SLl  23:22   0:01 /usr/bin/seahorse --gapplication-service
newadmin    2924  2.7 23.9 1290276 403340 ?      Sl   23:22   0:52 /usr/bin/ptyxis --gapplication-service
newadmin    2968  0.0  0.4 240004  7996 ?        Ssl  23:22   0:00 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
newadmin    3040  0.0  0.3   8828  5628 pts/0    Ss   23:22   0:00 /usr/bin/bash
newadmin    3677  0.0  0.4  10500  7000 ?        S    23:31   0:00 /usr/bin/ssh-agent -D -a /run/user/1001/gcr/.ssh
newadmin    4193  0.1  4.0 2791648 67500 ?       Sl   23:38   0:01 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
newadmin    5117  100  0.2   9904  4828 pts/0    R+   23:54   0:00 ps aux
newadmin    5118  0.0  0.1   6716  2648 pts/0    S+   23:54   0:00 grep --color=auto -v ^root
newadmin    5119  0.0  0.4  17652  7768 pts/0    S+   23:54   0:00 tee -a Lecture_5_Fatemeh_Sharbatian_Task2.md
$ ps aux | grep -Ev "kworker|irq"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.2  0.9  25068 16104 ?        Ss   23:18   0:04 /sbin/init splash noprompt noshell automatic-ubiquity crashkernel=2G-4G:320M,4G-32G:512M,32G-64G:1024M,64G-128G:2048M,128G-:4096M
root           2  0.0  0.0      0     0 ?        S    23:18   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    23:18   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    23:18   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    23:18   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    23:18   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    23:18   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    23:18   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    23:18   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    23:18   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    23:18   0:00 [kdevtmpfs]
root          24  0.0  0.0      0     0 ?        I    23:18   0:00 [rcu_tasks_kthread]
root          25  0.0  0.0      0     0 ?        I    23:18   0:00 [rcu_tasks_rude_kthread]
root          26  0.0  0.0      0     0 ?        S    23:18   0:00 [kauditd]
root          27  0.0  0.0      0     0 ?        S    23:18   0:00 [khungtaskd]
root          28  0.0  0.0      0     0 ?        S    23:18   0:00 [oom_reaper]
root          32  0.0  0.0      0     0 ?        S    23:18   0:00 [kcompactd0]
root          33  0.0  0.0      0     0 ?        SN   23:18   0:00 [ksmd]
root          34  0.0  0.0      0     0 ?        SN   23:18   0:00 [khugepaged]
root          46  0.0  0.0      0     0 ?        S    23:18   0:00 [watchdogd]
root          50  0.0  0.0      0     0 ?        S    23:18   0:01 [kswapd0]
root          51  0.0  0.0      0     0 ?        S    23:18   0:00 [ecryptfs-kthread]
root          54  0.0  0.0      0     0 ?        S    23:18   0:00 [scsi_eh_0]
root          56  0.0  0.0      0     0 ?        S    23:18   0:00 [scsi_eh_1]
root         116  0.0  0.0      0     0 ?        S    23:18   0:00 [scsi_eh_2]
root         217  0.0  0.0      0     0 ?        S    23:18   0:00 [jbd2/sda2-8]
root         290  0.0  0.0      0     0 ?        S    23:18   0:00 [psimon]
root         296  0.0  1.0  59668 18180 ?        S<s  23:18   0:01 /usr/lib/systemd/systemd-journald
root         327  0.0  0.5 279620  9772 ?        SLsl 23:18   0:00 /usr/sbin/multipathd -d -s
root         338  0.0  0.9  42648 16192 ?        Ss   23:18   0:01 /usr/lib/systemd/systemd-udevd
systemd+     360  0.0  0.8  22552 14024 ?        Ss   23:18   0:00 /usr/lib/systemd/systemd-resolved
root         443  0.0  0.0      0     0 ?        S    23:18   0:00 [psimon]
systemd+     583  0.0  0.6  21292 10856 ?        Ss   23:18   0:00 /usr/lib/systemd/systemd-networkd
avahi        770  0.0  0.2   6748  4748 ?        Ss   23:18   0:00 avahi-daemon: running [fatemeh-sharbatian.local]
message+     771  0.2  0.5  11848  8728 ?        Ss   23:18   0:05 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      777  0.0  0.7 312864 12388 ?        Ssl  23:18   0:01 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root         780  0.3  1.4 1780868 23764 ?       Ssl  23:18   0:06 /snap/snapd/current/usr/lib/snapd/snapd
root         781  0.0  0.4 308960  8024 ?        Ssl  23:18   0:00 /usr/libexec/accounts-daemon
root         782  0.0  0.4 307812  7404 ?        Ssl  23:18   0:00 /usr/libexec/switcheroo-control
root         784  0.0  0.5  18472  9568 ?        Ss   23:18   0:00 /usr/lib/systemd/systemd-logind
root         785  0.0  0.8 543612 14144 ?        Ssl  23:18   0:00 /usr/libexec/udisks2/udisksd
avahi        792  0.0  0.0   6564  1524 ?        S    23:18   0:00 avahi-daemon: chroot helper
root         847  0.0  1.1 335988 19068 ?        Ssl  23:18   0:00 /usr/sbin/NetworkManager --no-daemon
root         849  0.0  0.3  17972  5424 ?        Ss   23:18   0:00 /usr/sbin/wpa_supplicant -u -s -O DIR=/run/wpa_supplicant GROUP=netdev
root        1003  0.0  0.5 391496 10076 ?        Ssl  23:19   0:00 /usr/sbin/ModemManager
syslog      1035  0.0  0.3 220628  5708 ?        Ssl  23:19   0:00 /usr/sbin/rsyslogd -n -iNONE
root        1120  0.0  0.7  29480 12696 ?        Ss   23:19   0:00 /usr/sbin/cupsd -l
root        1123  0.0  1.7 126116 29616 ?        Ssl  23:19   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root        1149  0.0  0.4  10744  7676 ?        Ss   23:19   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
lp          1156  0.0  0.4  15436  7364 ?        S    23:19   0:00 /usr/lib/cups/notifier/dbus dbus://
lp          1158  0.0  0.4  15436  7252 ?        S    23:19   0:00 /usr/lib/cups/notifier/dbus dbus://
lp          1159  0.0  0.4  15436  7340 ?        S    23:19   0:00 /usr/lib/cups/notifier/dbus dbus://
lp          1161  0.0  0.4  15436  7408 ?        S    23:19   0:00 /usr/lib/cups/notifier/dbus dbus://
lp          1166  0.0  0.4  15436  7288 ?        S    23:19   0:00 /usr/lib/cups/notifier/dbus dbus://
root        1259  0.0  0.2 292080  3440 ?        Sl   23:19   0:01 /usr/sbin/VBoxService --pidfile /var/run/vboxadd-service.sh
cups-br+    1335  0.0  1.1 207560 19196 ?        Ssl  23:20   0:00 /usr/sbin/cups-browsed
root        1338  0.0  0.2   7060  3376 ?        Ss   23:20   0:00 /usr/sbin/cron -f -P
root        1351  0.0  0.5 384012  9724 ?        Ssl  23:20   0:00 /usr/sbin/gdm3
root        1361  0.0  0.6 385656 10760 ?        Sl   23:20   0:00 gdm-session-worker [pam/gdm-autologin]
newadmin    1370  0.1  0.8  23516 14332 ?        Ss   23:20   0:02 /usr/lib/systemd/systemd --user
newadmin    1372  0.0  0.2  23332  4308 ?        S    23:20   0:00 (sd-pam)
newadmin    1392  0.1  0.4  10064  7396 ?        Ss   23:20   0:02 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
newadmin    1393  0.0  0.7 103232 12076 ?        S<sl 23:20   0:00 /usr/bin/pipewire
newadmin    1395  0.0  0.6 183244 10804 ?        SLsl 23:20   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1001/keyring
newadmin    1400  0.0  0.2   7560  3996 ?        Ss   23:20   0:00 /usr/bin/mpris-proxy
newadmin    1401  0.0  1.4 659112 25044 ?        S<sl 23:20   0:00 /usr/bin/wireplumber
newadmin    1402  0.0  0.3  84812  5876 ?        Ssl  23:20   0:00 /usr/bin/pipewire -c filter-chain.conf
newadmin    1403  0.0  0.7 176424 12208 ?        S<sl 23:20   0:00 /usr/bin/pipewire-pulse
newadmin    1404  0.0  0.3 168196  6636 tty2     Ssl+ 23:20   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
rtkit       1410  0.0  0.2  21872  3632 ?        SNsl 23:20   0:00 /usr/libexec/rtkit-daemon
newadmin    1411  0.0  0.5 175212  9300 tty2     Sl+  23:20   0:00 /usr/libexec/gnome-session-init-worker ubuntu
newadmin    1522  0.0  0.5 310560  8488 ?        Ssl  23:20   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1001/gcr
newadmin    1523  0.0  0.3  87208  5852 ?        Ssl  23:20   0:00 /usr/libexec/gnome-session-ctl --monitor
newadmin    1524  0.0  0.4  10484  6760 ?        Ss   23:20   0:00 /usr/bin/ssh-agent -D
newadmin    1537  0.0  0.5 312980  8924 ?        Ssl  23:20   0:00 /usr/libexec/gvfsd
newadmin    1548  0.0  0.4 324640  7912 ?        Sl   23:20   0:00 /usr/libexec/gvfsd-fuse /run/user/1001/gvfs -f
newadmin    1550  0.0  0.6 613332 11364 ?        Ssl  23:20   0:00 /usr/libexec/gnome-session-service --session=ubuntu
newadmin    1563  3.7 19.5 3461620 329652 ?      Rsl  23:20   1:17 /usr/bin/gnome-shell --mode=ubuntu
newadmin    1576  0.0  0.4 381132  8112 ?        Ssl  23:20   0:00 /usr/libexec/at-spi-bus-launcher
newadmin    1583  0.0  0.3   8616  5300 ?        S    23:20   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1001/at-spi/bus
newadmin    1585  0.0  0.4 168688  7800 ?        Sl   23:20   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
colord      1586  0.0  0.9 316816 15756 ?        Ssl  23:20   0:00 /usr/libexec/colord
newadmin    1616  0.0  0.4 307364  6904 ?        Ssl  23:20   0:00 /usr/libexec/xdg-permission-store
newadmin    1618  0.0  1.1 658664 18772 ?        Sl   23:20   0:00 /usr/libexec/gnome-shell-calendar-server
newadmin    1629  0.0  2.6 690092 44980 ?        Ssl  23:20   0:00 /usr/libexec/evolution-source-registry
newadmin    1642  0.0  1.8 466816 30936 ?        Sl   23:20   0:00 /usr/libexec/goa-daemon
newadmin    1647  0.0  1.4 696852 23792 ?        Ssl  23:20   0:00 /usr/libexec/evolution-calendar-factory
root        1651  0.2  0.6 318764 11312 ?        Ssl  23:20   0:05 /usr/libexec/upowerd
newadmin    1668  0.0  1.8 2592088 31284 ?       Sl   23:21   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
newadmin    1670  0.0  0.6 387944 10220 ?        Sl   23:21   0:00 /usr/libexec/goa-identity-service
newadmin    1676  0.0  1.7 686804 29244 ?        Ssl  23:21   0:00 /usr/libexec/evolution-addressbook-factory
newadmin    1697  0.1  0.7 385604 11792 ?        Ssl  23:21   0:02 /usr/bin/ibus-daemon --panel disable
newadmin    1698  0.0  0.6 253800 10592 ?        Ssl  23:21   0:00 /usr/libexec/gsd-a11y-settings
newadmin    1699  0.0  0.6 251632 10488 ?        Ssl  23:21   0:00 /usr/libexec/gsd-color
newadmin    1700  0.0  0.7 260168 12728 ?        Ssl  23:21   0:00 /usr/libexec/gsd-datetime
newadmin    1701  0.0  0.6 390776 11084 ?        Ssl  23:21   0:00 /usr/libexec/gsd-housekeeping
newadmin    1702  0.0  0.4 383132  8240 ?        Ssl  23:21   0:00 /usr/libexec/gsd-keyboard
newadmin    1703  0.0  0.8 559948 14600 ?        Ssl  23:21   0:00 /usr/libexec/gsd-media-keys
newadmin    1709  0.0  0.7 475396 11900 ?        Ssl  23:21   0:00 /usr/libexec/gsd-power
newadmin    1710  0.0  0.8 327564 14448 ?        Ssl  23:21   0:00 /usr/libexec/gsd-print-notifications
newadmin    1711  0.0  0.4 456924  8296 ?        Ssl  23:21   0:00 /usr/libexec/gsd-rfkill
newadmin    1714  0.0  0.4 169832  7584 ?        Ssl  23:21   0:00 /usr/libexec/gsd-screensaver-proxy
newadmin    1715  0.0  0.7 467400 12224 ?        Ssl  23:21   0:00 /usr/libexec/gsd-sharing
newadmin    1716  0.0  0.5 385708  9692 ?        Ssl  23:21   0:00 /usr/libexec/gsd-smartcard
newadmin    1717  0.0  0.6 254948 10556 ?        Ssl  23:21   0:00 /usr/libexec/gsd-sound
newadmin    1718  0.0  0.5 480276  9960 ?        Ssl  23:21   0:00 /usr/libexec/gsd-usb-protection
newadmin    1721  0.0  0.6 390416 10652 ?        Ssl  23:21   0:00 /usr/libexec/gsd-wwan
newadmin    1734  0.0  2.1 643632 35616 ?        Sl   23:21   0:00 /usr/bin/update-notifier
newadmin    1736  0.0  3.7 840352 63804 ?        Sl   23:21   0:00 /usr/libexec/evolution-data-server/evolution-alarm-notify
newadmin    1744  0.0  0.5 312176  9416 ?        Sl   23:21   0:00 /usr/libexec/gsd-disk-utility-notify
newadmin    1884  0.0  0.7 407680 12680 ?        Sl   23:21   0:00 /usr/libexec/gsd-printer
newadmin    1901  0.0  1.8 2591108 31428 ?       Sl   23:21   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
newadmin    1925  0.0  0.4 169180  7888 ?        Sl   23:21   0:00 /usr/libexec/ibus-memconf
newadmin    1926  0.9  2.2 499944 37324 ?        Sl   23:21   0:18 /usr/libexec/ibus-extension-gtk3
newadmin    1928  0.0  0.4 308500  8132 ?        Sl   23:21   0:00 /usr/libexec/ibus-portal
newadmin    1929  0.0  1.6 666100 27384 ?        SNsl 23:21   0:01 /usr/libexec/localsearch-3
newadmin    1931  0.0  1.2 629060 20292 ?        Ssl  23:21   0:00 /usr/libexec/xdg-desktop-portal
newadmin    1961  0.0  0.4 621556  7680 ?        Ssl  23:21   0:00 /usr/libexec/xdg-document-portal
root        1967  0.0  0.1   2792  2280 ?        Ss   23:21   0:00 fusermount3 -o rw,nosuid,nodev,fsname=portal,auto_unmount,subtype=portal -- /run/user/1001/doc
newadmin    1972  0.0  2.6 696092 44516 ?        Ssl  23:21   0:01 /usr/libexec/xdg-desktop-portal-gnome
newadmin    1977  0.0  3.9 212600 66388 ?        S    23:21   0:01 /usr/bin/Xwayland :0 -rootless -noreset -accessx -core -auth /run/user/1001/.mutter-Xwaylandauth.WLGQY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
newadmin    1994  0.0  0.7 460692 12104 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
newadmin    2000  0.0  0.5 389884  9504 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-afc-volume-monitor
newadmin    2008  0.0  0.4 308852  7700 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
newadmin    2013  0.0  0.4 307832  7368 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-goa-volume-monitor
root        2026  0.0  0.4 309276  7900 ?        Ssl  23:21   0:00 /usr/libexec/power-profiles-daemon
newadmin    2028  0.0  0.4 307884  7412 ?        Ssl  23:21   0:00 /usr/libexec/gvfs-mtp-volume-monitor
newadmin    2038  0.0  0.4 169176  8160 ?        Sl   23:21   0:00 /usr/libexec/ibus-engine-simple
newadmin    2119  0.0  0.4 168860  7500 ?        Ssl  23:21   0:00 /usr/libexec/gvfsd-metadata
newadmin    2147  0.0  0.3 165344  6636 ?        Ssl  23:21   0:00 /usr/libexec/dconf-service
newadmin    2168  0.0  0.5 534376  9872 ?        Sl   23:21   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
newadmin    2224  0.0  0.8 251368 13704 ?        Ssl  23:21   0:00 /usr/libexec/gsd-xsettings
newadmin    2241  0.0  0.1  16896  1808 ?        S    23:21   0:00 /usr/bin/VBoxClient --clipboard
newadmin    2242  0.0  6.9 833060 117240 ?       Sl   23:21   0:01 /usr/libexec/mutter-x11-frames
newadmin    2244  0.0  0.2 215716  4208 ?        Sl   23:21   0:00 /usr/bin/VBoxClient --clipboard
newadmin    2284  0.0  0.1  16896  1808 ?        S    23:21   0:00 /usr/bin/VBoxClient --vmsvga
newadmin    2291  0.0  4.2 374024 71552 ?        Sl   23:21   0:00 /usr/libexec/ibus-x11
newadmin    2391  0.0  1.7 492248 29116 ?        Ssl  23:21   0:00 /usr/libexec/xdg-desktop-portal-gtk
newadmin    2864  0.0  3.7 892188 63076 ?        Sl   23:22   0:01 /usr/bin/gnome-calendar --gapplication-service
newadmin    2870  0.0  2.7 671108 45660 ?        SLl  23:22   0:01 /usr/bin/seahorse --gapplication-service
newadmin    2924  2.7 23.9 1290284 403360 ?      Sl   23:22   0:54 /usr/bin/ptyxis --gapplication-service
newadmin    2968  0.0  0.4 240004  7996 ?        Ssl  23:22   0:00 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
newadmin    3040  0.0  0.3   8828  5628 pts/0    Ss   23:22   0:00 /usr/bin/bash
newadmin    3677  0.0  0.4  10500  7000 ?        S    23:31   0:00 /usr/bin/ssh-agent -D -a /run/user/1001/gcr/.ssh
root        3926  0.1  2.4 365732 41024 ?        Ssl  23:36   0:01 /usr/libexec/fwupd/fwupd
newadmin    4193  0.1  4.0 2791648 67500 ?       Sl   23:38   0:01 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
newadmin    5152  100  0.2   9904  4820 pts/0    R+   23:54   0:00 ps aux
newadmin    5154  0.0  0.4  17652  7728 pts/0    S+   23:54   0:00 tee -a Lecture_5_Fatemeh_Sharbatian_Task2.md
