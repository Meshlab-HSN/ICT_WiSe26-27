# Lecture 5 - Task 2: Search and Filter

## 1. Filter running processes for user ronak74+
```bash
$ ps aux | grep "ronak74+"
ronak74+    2228  0.0  0.4  23504  7872 ?        Ss   21:18   0:01 /usr/lib/systemd/systemd --user
ronak74+    2232  0.0  0.1  23456  1724 ?        S    21:18   0:00 (sd-pam)
ronak74+    2252  0.1  0.3  10100  5172 ?        Ss   21:18   0:02 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
ronak74+    2253  0.0  0.5 103364 10060 ?        S<sl 21:18   0:00 /usr/bin/pipewire
ronak74+    2255  0.0  0.3 183244  6360 ?        SLsl 21:18   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
ronak74+    2256  0.0  0.2   7560  3752 ?        Ss   21:18   0:00 /usr/bin/mpris-proxy
ronak74+    2257  0.0  0.7 724616 12056 ?        S<sl 21:18   0:00 /usr/bin/wireplumber
ronak74+    2258  0.0  0.2  84812  3732 ?        Ssl  21:18   0:00 /usr/bin/pipewire -c filter-chain.conf
ronak74+    2259  0.0  0.5 176728  9492 ?        S<sl 21:18   0:00 /usr/bin/pipewire-pulse
ronak74+    2286  0.0  0.3 168196  5652 tty2     Ssl+ 21:18   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
ronak74+    2312  0.0  0.3 175212  6380 tty2     Sl+  21:18   0:00 /usr/libexec/gnome-session-init-worker ubuntu
ronak74+    2413  0.0  0.3  97560  5616 ?        Ssl  21:18   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
ronak74+    2414  0.0  0.3  87208  5360 ?        Ssl  21:18   0:00 /usr/libexec/gnome-session-ctl --monitor
ronak74+    2415  0.0  0.1  10484  3292 ?        Ss   21:18   0:00 /usr/bin/ssh-agent -D
ronak74+    2427  0.0  0.3 312952  5776 ?        Ssl  21:18   0:00 /usr/libexec/gvfsd
ronak74+    2433  0.0  0.3 324640  5892 ?        Sl   21:18   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
ronak74+    2435  0.0  0.4 613320  7884 ?        Ssl  21:18   0:00 /usr/libexec/gnome-session-service --session=ubuntu
ronak74+    2448 15.9  7.4 4037152 124692 ?      Ssl  21:18   5:26 /usr/bin/gnome-shell --mode=ubuntu
ronak74+    2468  0.0  0.3 381124  6384 ?        Ssl  21:18   0:00 /usr/libexec/at-spi-bus-launcher
ronak74+    2475  0.0  0.2   8612  3980 ?        S    21:18   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
ronak74+    2477  0.0  0.3 168688  6076 ?        Sl   21:18   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
ronak74+    2491  0.0  0.3 307364  5984 ?        Ssl  21:18   0:00 /usr/libexec/xdg-permission-store
ronak74+    2492  0.0  0.3 658668  5924 ?        Sl   21:18   0:00 /usr/libexec/gnome-shell-calendar-server
ronak74+    2507  0.0  0.5 2594184 9296 ?        Sl   21:18   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
ronak74+    2513  0.1  0.4 385608  7072 ?        Ssl  21:18   0:02 /usr/bin/ibus-daemon --panel disable
ronak74+    2515  0.0  0.4 253792  6728 ?        Ssl  21:18   0:00 /usr/libexec/gsd-a11y-settings
ronak74+    2516  0.0  0.3 251624  6664 ?        Ssl  21:18   0:00 /usr/libexec/gsd-color
ronak74+    2517  0.0  0.3 260164  6664 ?        Ssl  21:18   0:00 /usr/libexec/gsd-datetime
ronak74+    2519  0.0  0.4 464932  7192 ?        Ssl  21:18   0:00 /usr/libexec/gsd-housekeeping
ronak74+    2523  0.0  0.3 383124  6440 ?        Ssl  21:18   0:00 /usr/libexec/gsd-keyboard
ronak74+    2526  0.0  0.5 559940  8540 ?        Ssl  21:18   0:00 /usr/libexec/gsd-media-keys
ronak74+    2529  0.0  0.4 475388  7892 ?        Ssl  21:18   0:00 /usr/libexec/gsd-power
ronak74+    2533  0.0  0.4 327572  7080 ?        Ssl  21:18   0:00 /usr/libexec/gsd-print-notifications
ronak74+    2538  0.0  0.3 456924  6564 ?        Ssl  21:18   0:00 /usr/libexec/gsd-rfkill
ronak74+    2539  0.0  0.3 169832  6096 ?        Ssl  21:18   0:00 /usr/libexec/gsd-screensaver-proxy
ronak74+    2545  0.0  0.4 840348  7624 ?        Sl   21:18   0:01 /usr/libexec/evolution-data-server/evolution-alarm-notify
ronak74+    2550  0.0  0.3 312176  5540 ?        Sl   21:18   0:00 /usr/libexec/gsd-disk-utility-notify
ronak74+    2551  0.0  0.4 467388  7272 ?        Ssl  21:18   0:00 /usr/libexec/gsd-sharing
ronak74+    2555  0.0  0.3 385700  6472 ?        Ssl  21:18   0:00 /usr/libexec/gsd-smartcard
ronak74+    2558  0.0  0.3 254940  6636 ?        Ssl  21:18   0:00 /usr/libexec/gsd-sound
ronak74+    2560  0.0  0.3 472204  6596 ?        Ssl  21:18   0:00 /usr/libexec/gsd-usb-protection
ronak74+    2561  0.0  0.3 390408  6636 ?        Ssl  21:18   0:00 /usr/libexec/gsd-wwan
ronak74+    2574  0.0  0.4 651564  8076 ?        Sl   21:18   0:00 /usr/bin/update-notifier
ronak74+    2673  0.0  0.3 169180  5832 ?        Sl   21:18   0:00 /usr/libexec/ibus-memconf
ronak74+    2675  0.2  0.4 500020  7996 ?        Sl   21:18   0:05 /usr/libexec/ibus-extension-gtk3
ronak74+    2685  0.0  0.4 690200  7088 ?        Ssl  21:18   0:00 /usr/libexec/evolution-source-registry
ronak74+    2689  0.0  0.3 308500  5972 ?        Sl   21:18   0:00 /usr/libexec/ibus-portal
ronak74+    2720  0.0  0.5 2660744 9268 ?        Sl   21:18   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
ronak74+    2728  0.0  0.3 399484  6108 ?        Sl   21:18   0:00 /usr/libexec/gsd-printer
ronak74+    2735  0.1  0.3 729412  6656 ?        SNsl 21:18   0:02 /usr/libexec/localsearch-3
ronak74+    2738  0.0  0.6 629136 11212 ?        Ssl  21:18   0:00 /usr/libexec/xdg-desktop-portal
ronak74+    2795  0.0  0.4 466816  8104 ?        Sl   21:18   0:00 /usr/libexec/goa-daemon
ronak74+    2797  0.0  0.3 687092  6148 ?        Ssl  21:18   0:00 /usr/libexec/xdg-document-portal
ronak74+    2816  0.0  0.3 893400  6508 ?        Ssl  21:18   0:00 /usr/libexec/evolution-calendar-factory
ronak74+    2824  0.0  0.3 461676  6032 ?        Sl   21:18   0:00 /usr/libexec/goa-identity-service
ronak74+    2825  0.0  0.5 696040  9860 ?        Ssl  21:18   0:00 /usr/libexec/xdg-desktop-portal-gnome
ronak74+    2836  0.0  0.4 386944  7136 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
ronak74+    2851  0.0  0.4 826072  7596 ?        Ssl  21:18   0:00 /usr/libexec/evolution-addressbook-factory
ronak74+    2856  0.0  0.4 389884  7156 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-afc-volume-monitor
ronak74+    2865  0.0  0.3 307832  6004 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-goa-volume-monitor
ronak74+    2875  0.0  0.3 307880  6240 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-mtp-volume-monitor
ronak74+    2884  0.0  0.3 308848  6256 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
ronak74+    2891  0.0  0.3 169176  6644 ?        Sl   21:18   0:00 /usr/libexec/ibus-engine-simple
ronak74+    2898  0.0  0.3 165348  5560 ?        Ssl  21:18   0:00 /usr/libexec/dconf-service
ronak74+    2915  0.0  0.3 168924  6008 ?        Ssl  21:18   0:00 /usr/libexec/gvfsd-metadata
ronak74+    3192  0.0  0.3 534376  6268 ?        Sl   21:19   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
ronak74+    3312  0.0  0.5 492248  8612 ?        Ssl  21:19   0:00 /usr/libexec/xdg-desktop-portal-gtk
ronak74+    3379  0.2  0.8 3334656 13612 ?       Sl   21:19   0:05 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
ronak74+    3442 14.0 11.2 11839152 189316 ?     Sl   21:19   4:44 /snap/firefox/9057/usr/lib/firefox/firefox
ronak74+    3507  0.0  0.0 149264   456 ?        Sl   21:19   0:00 /snap/firefox/9057/usr/lib/firefox/crashhelper 3442 9 /tmp/ 11 20261009003443
ronak74+    3534  0.1  0.0      0     0 ?        Z    21:19   0:02 [gfxtest] <defunct>
ronak74+    3562  0.0  0.3 212816  5064 ?        S    21:19   0:01 /usr/bin/Xwayland :0 -rootless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.9H5YY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
ronak74+    3572  0.0  0.4 251364  7592 ?        Ssl  21:19   0:00 /usr/libexec/gsd-xsettings
ronak74+    3596  0.1  0.6 1127744 11404 ?       Sl   21:19   0:02 /usr/libexec/mutter-x11-frames
ronak74+    3618  0.0  0.3 374024  6708 ?        Sl   21:19   0:00 /usr/libexec/ibus-x11
ronak74+    3652  0.0  0.3 466536  5616 ?        S    21:19   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -ipcHandle 0 -signalPipe 1 -initialChannelId {b3ad4201-3ea5-4e09-9c71-8a27b1fbd9ef} -parentPid 3442 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 1 forkserver
ronak74+    3706  0.0  0.3 301964  5380 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-svg --dbus-fd 28
ronak74+    3730  0.0  0.1 212912  2604 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-image-rs --dbus-fd 32
ronak74+    3743  0.0  0.6 478776 11124 ?        Sl   21:19   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -parentBuildID 20261009003443 -prefsHandle 0:35830 -prefMapHandle 1:298196 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {8861cb18-2d7a-446e-a40a-271e8fa09b8c} -parentPid 3442 -crashHelperPid 3507 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9057/usr/lib/firefox/browser 2 socket
ronak74+    3784  0.0  0.3 301964  5552 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-svg --dbus-fd 28
ronak74+    3807  0.0  0.1 212912  2544 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-image-rs --dbus-fd 32
ronak74+    3862  1.7  3.4 2688676 57216 ?       Sl   21:19   0:33 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:35971 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {276426f5-0131-4611-b867-7ed8979c550d} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 3 tab
ronak74+    3869  0.0  0.3 301964  5876 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-svg --dbus-fd 28
ronak74+    3871  0.0  0.6 638372 10460 ?        Sl   21:19   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -parentBuildID 20261009003443 -prefsHandle 0:35971 -prefMapHandle 1:298196 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {15e9278c-f83c-4ccd-95cf-06c88f6ffbfa} -parentPid 3442 -crashHelperPid 3507 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9057/usr/lib/firefox/browser 4 rdd
ronak74+    3906  0.0  0.1 212912  2580 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-image-rs --dbus-fd 32
ronak74+    3961  0.1  0.5 1815104 9020 ?        Sl   21:19   0:02 /usr/bin/snap userd
ronak74+    4225  0.2  1.9 2649720 32948 ?       Sl   21:20   0:05 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:36026 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {98d32c67-0afe-472a-9e7e-9f65d11cc9d1} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 5 tab
ronak74+    4490 26.0 33.0 3305972 555352 ?      Sl   21:20   8:27 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:50537 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {29f03ed7-b2b4-4bb7-9c40-9af67e19524f} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 6 tab
ronak74+    4710  0.0  0.7 478664 12772 ?        Sl   21:20   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -parentBuildID 20261009003443 -sandboxingKind 0 -prefsHandle 0:53986 -prefMapHandle 1:298196 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {e772c0dc-1508-4082-9954-0123250eddcc} -parentPid 3442 -crashHelperPid 3507 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9057/usr/lib/firefox/browser 8 utility
ronak74+    4718  1.7  6.8 2906768 115760 ?      Sl   21:20   0:33 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:50792 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {d6f35903-ede8-4483-87de-e26111911469} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 9 tab
ronak74+    4887  0.0  1.4 2594924 24256 ?       Sl   21:20   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:50792 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {0eb3c8ad-6913-4b4f-b572-429809cf4b49} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 10 tab
ronak74+    5013  1.8  3.4 1667392 58456 ?       Sl   21:21   0:34 /usr/bin/ptyxis --gapplication-service
ronak74+    5021  0.0  0.3 239996  6312 ?        Ssl  21:21   0:00 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
ronak74+    5066  0.0  0.2   8828  4416 pts/0    Ss   21:21   0:00 /usr/bin/bash
ronak74+    5798  0.2  1.5 2594924 26260 ?       Sl   21:46   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51151 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {0d778670-faa6-447d-85ba-4cd8b9984ead} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 11 tab
ronak74+    5913  0.8  1.6 2594940 27420 ?       Sl   21:48   0:02 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51151 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {a42080dc-46e8-4ee4-a2b4-279cb4f72d6c} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 12 tab
ronak74+    6035  380  0.2  10036  4940 pts/0    R+   21:52   0:00 ps aux
ronak74+    6036  0.0  0.1   6716  2660 pts/0    S+   21:52   0:00 grep --color=auto ronak74+
```

## 2. Filter processes owned by user ronak74+ using regex anchor
```bash
$ ps aux | grep "^ronak74+"
ronak74+    2228  0.0  0.4  23504  7872 ?        Ss   21:18   0:01 /usr/lib/systemd/systemd --user
ronak74+    2232  0.0  0.1  23456  1728 ?        S    21:18   0:00 (sd-pam)
ronak74+    2252  0.1  0.3  10100  5176 ?        Ss   21:18   0:02 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
ronak74+    2253  0.0  0.5 103364 10060 ?        S<sl 21:18   0:00 /usr/bin/pipewire
ronak74+    2255  0.0  0.3 183244  6360 ?        SLsl 21:18   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
ronak74+    2256  0.0  0.2   7560  3752 ?        Ss   21:18   0:00 /usr/bin/mpris-proxy
ronak74+    2257  0.0  0.7 724616 12060 ?        S<sl 21:18   0:00 /usr/bin/wireplumber
ronak74+    2258  0.0  0.2  84812  3732 ?        Ssl  21:18   0:00 /usr/bin/pipewire -c filter-chain.conf
ronak74+    2259  0.0  0.5 176728  9492 ?        S<sl 21:18   0:00 /usr/bin/pipewire-pulse
ronak74+    2286  0.0  0.3 168196  5652 tty2     Ssl+ 21:18   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
ronak74+    2312  0.0  0.3 175212  6380 tty2     Sl+  21:18   0:00 /usr/libexec/gnome-session-init-worker ubuntu
ronak74+    2413  0.0  0.3  97560  5616 ?        Ssl  21:18   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
ronak74+    2414  0.0  0.3  87208  5360 ?        Ssl  21:18   0:00 /usr/libexec/gnome-session-ctl --monitor
ronak74+    2415  0.0  0.1  10484  3292 ?        Ss   21:18   0:00 /usr/bin/ssh-agent -D
ronak74+    2427  0.0  0.3 312952  5780 ?        Ssl  21:18   0:00 /usr/libexec/gvfsd
ronak74+    2433  0.0  0.3 324640  5896 ?        Sl   21:18   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
ronak74+    2435  0.0  0.4 613320  7884 ?        Ssl  21:18   0:00 /usr/libexec/gnome-session-service --session=ubuntu
ronak74+    2448 15.9  7.4 4037152 124692 ?      Rsl  21:18   5:26 /usr/bin/gnome-shell --mode=ubuntu
ronak74+    2468  0.0  0.3 381124  6388 ?        Ssl  21:18   0:00 /usr/libexec/at-spi-bus-launcher
ronak74+    2475  0.0  0.2   8612  3984 ?        S    21:18   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
ronak74+    2477  0.0  0.3 168688  6080 ?        Sl   21:18   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
ronak74+    2491  0.0  0.3 307364  5988 ?        Ssl  21:18   0:00 /usr/libexec/xdg-permission-store
ronak74+    2492  0.0  0.3 658668  5928 ?        Sl   21:18   0:00 /usr/libexec/gnome-shell-calendar-server
ronak74+    2507  0.0  0.5 2594184 9300 ?        Sl   21:18   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
ronak74+    2513  0.1  0.4 385608  7076 ?        Ssl  21:18   0:02 /usr/bin/ibus-daemon --panel disable
ronak74+    2515  0.0  0.4 253792  6732 ?        Ssl  21:18   0:00 /usr/libexec/gsd-a11y-settings
ronak74+    2516  0.0  0.3 251624  6664 ?        Ssl  21:18   0:00 /usr/libexec/gsd-color
ronak74+    2517  0.0  0.3 260164  6664 ?        Ssl  21:18   0:00 /usr/libexec/gsd-datetime
ronak74+    2519  0.0  0.4 464932  7192 ?        Ssl  21:18   0:00 /usr/libexec/gsd-housekeeping
ronak74+    2523  0.0  0.3 383124  6444 ?        Rsl  21:18   0:00 /usr/libexec/gsd-keyboard
ronak74+    2526  0.0  0.5 559940  8540 ?        Ssl  21:18   0:00 /usr/libexec/gsd-media-keys
ronak74+    2529  0.0  0.4 475388  7892 ?        Ssl  21:18   0:00 /usr/libexec/gsd-power
ronak74+    2533  0.0  0.4 327572  7084 ?        Ssl  21:18   0:00 /usr/libexec/gsd-print-notifications
ronak74+    2538  0.0  0.3 456924  6564 ?        Ssl  21:18   0:00 /usr/libexec/gsd-rfkill
ronak74+    2539  0.0  0.3 169832  6096 ?        Ssl  21:18   0:00 /usr/libexec/gsd-screensaver-proxy
ronak74+    2545  0.0  0.4 840348  7628 ?        Sl   21:18   0:01 /usr/libexec/evolution-data-server/evolution-alarm-notify
ronak74+    2550  0.0  0.3 312176  5544 ?        Sl   21:18   0:00 /usr/libexec/gsd-disk-utility-notify
ronak74+    2551  0.0  0.4 467388  7272 ?        Rsl  21:18   0:00 /usr/libexec/gsd-sharing
ronak74+    2555  0.0  0.3 385700  6472 ?        Ssl  21:18   0:00 /usr/libexec/gsd-smartcard
ronak74+    2558  0.0  0.3 254940  6636 ?        Ssl  21:18   0:00 /usr/libexec/gsd-sound
ronak74+    2560  0.0  0.3 472204  6600 ?        Ssl  21:18   0:00 /usr/libexec/gsd-usb-protection
ronak74+    2561  0.0  0.3 390408  6636 ?        Ssl  21:18   0:00 /usr/libexec/gsd-wwan
ronak74+    2574  0.0  0.4 651564  8080 ?        Sl   21:18   0:00 /usr/bin/update-notifier
ronak74+    2673  0.0  0.3 169180  5836 ?        Sl   21:18   0:00 /usr/libexec/ibus-memconf
ronak74+    2675  0.2  0.4 500020  8000 ?        Sl   21:18   0:05 /usr/libexec/ibus-extension-gtk3
ronak74+    2685  0.0  0.4 690200  7092 ?        Ssl  21:18   0:00 /usr/libexec/evolution-source-registry
ronak74+    2689  0.0  0.3 308500  5976 ?        Sl   21:18   0:00 /usr/libexec/ibus-portal
ronak74+    2720  0.0  0.5 2660744 9272 ?        Sl   21:18   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
ronak74+    2728  0.0  0.3 399484  6108 ?        Sl   21:18   0:00 /usr/libexec/gsd-printer
ronak74+    2735  0.1  0.3 729412  6660 ?        SNsl 21:18   0:02 /usr/libexec/localsearch-3
ronak74+    2738  0.0  0.6 629136 11212 ?        Ssl  21:18   0:00 /usr/libexec/xdg-desktop-portal
ronak74+    2795  0.0  0.4 466816  8108 ?        Sl   21:18   0:00 /usr/libexec/goa-daemon
ronak74+    2797  0.0  0.3 687092  6148 ?        Ssl  21:18   0:00 /usr/libexec/xdg-document-portal
ronak74+    2816  0.0  0.3 893400  6508 ?        Ssl  21:18   0:00 /usr/libexec/evolution-calendar-factory
ronak74+    2824  0.0  0.3 461676  6036 ?        Sl   21:18   0:00 /usr/libexec/goa-identity-service
ronak74+    2825  0.0  0.5 696040  9864 ?        Ssl  21:18   0:00 /usr/libexec/xdg-desktop-portal-gnome
ronak74+    2836  0.0  0.4 386944  7140 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
ronak74+    2851  0.0  0.4 826072  7600 ?        Ssl  21:18   0:00 /usr/libexec/evolution-addressbook-factory
ronak74+    2856  0.0  0.4 389884  7156 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-afc-volume-monitor
ronak74+    2865  0.0  0.3 307832  6004 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-goa-volume-monitor
ronak74+    2875  0.0  0.3 307880  6240 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-mtp-volume-monitor
ronak74+    2884  0.0  0.3 308848  6256 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
ronak74+    2891  0.0  0.3 169176  6648 ?        Sl   21:18   0:00 /usr/libexec/ibus-engine-simple
ronak74+    2898  0.0  0.3 165348  5560 ?        Ssl  21:18   0:00 /usr/libexec/dconf-service
ronak74+    2915  0.0  0.3 168924  6008 ?        Ssl  21:18   0:00 /usr/libexec/gvfsd-metadata
ronak74+    3192  0.0  0.3 534376  6272 ?        Sl   21:19   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
ronak74+    3312  0.0  0.5 492248  8620 ?        Ssl  21:19   0:00 /usr/libexec/xdg-desktop-portal-gtk
ronak74+    3379  0.2  0.8 3334656 13616 ?       Sl   21:19   0:05 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
ronak74+    3442 14.0 11.2 11839152 189316 ?     Sl   21:19   4:44 /snap/firefox/9057/usr/lib/firefox/firefox
ronak74+    3507  0.0  0.0 149264   464 ?        Sl   21:19   0:00 /snap/firefox/9057/usr/lib/firefox/crashhelper 3442 9 /tmp/ 11 20261009003443
ronak74+    3534  0.1  0.0      0     0 ?        Z    21:19   0:02 [gfxtest] <defunct>
ronak74+    3562  0.0  0.3 212816  5068 ?        S    21:19   0:01 /usr/bin/Xwayland :0 -rootless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.9H5YY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
ronak74+    3572  0.0  0.4 251364  7592 ?        Ssl  21:19   0:00 /usr/libexec/gsd-xsettings
ronak74+    3596  0.1  0.6 1127744 11408 ?       Sl   21:19   0:02 /usr/libexec/mutter-x11-frames
ronak74+    3618  0.0  0.3 374024  6712 ?        Sl   21:19   0:00 /usr/libexec/ibus-x11
ronak74+    3652  0.0  0.3 466536  5628 ?        S    21:19   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -ipcHandle 0 -signalPipe 1 -initialChannelId {b3ad4201-3ea5-4e09-9c71-8a27b1fbd9ef} -parentPid 3442 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 1 forkserver
ronak74+    3706  0.0  0.3 301964  5380 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-svg --dbus-fd 28
ronak74+    3730  0.0  0.1 212912  2604 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-image-rs --dbus-fd 32
ronak74+    3743  0.0  0.6 478776 11136 ?        Sl   21:19   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -parentBuildID 20261009003443 -prefsHandle 0:35830 -prefMapHandle 1:298196 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {8861cb18-2d7a-446e-a40a-271e8fa09b8c} -parentPid 3442 -crashHelperPid 3507 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9057/usr/lib/firefox/browser 2 socket
ronak74+    3784  0.0  0.3 301964  5556 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-svg --dbus-fd 28
ronak74+    3807  0.0  0.1 212912  2548 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-image-rs --dbus-fd 32
ronak74+    3862  1.7  3.4 2688676 57228 ?       Sl   21:19   0:33 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:35971 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {276426f5-0131-4611-b867-7ed8979c550d} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 3 tab
ronak74+    3869  0.0  0.3 301964  5876 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-svg --dbus-fd 28
ronak74+    3871  0.0  0.6 638372 10472 ?        Sl   21:19   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -parentBuildID 20261009003443 -prefsHandle 0:35971 -prefMapHandle 1:298196 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {15e9278c-f83c-4ccd-95cf-06c88f6ffbfa} -parentPid 3442 -crashHelperPid 3507 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9057/usr/lib/firefox/browser 4 rdd
ronak74+    3906  0.0  0.1 212912  2584 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-image-rs --dbus-fd 32
ronak74+    3961  0.1  0.5 1815104 9020 ?        Sl   21:19   0:02 /usr/bin/snap userd
ronak74+    4225  0.2  1.9 2649720 32960 ?       Sl   21:20   0:05 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:36026 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {98d32c67-0afe-472a-9e7e-9f65d11cc9d1} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 5 tab
ronak74+    4490 26.0 32.9 3305972 554564 ?      Rl   21:20   8:27 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:50537 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {29f03ed7-b2b4-4bb7-9c40-9af67e19524f} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 6 tab
ronak74+    4710  0.0  0.7 478664 12784 ?        Sl   21:20   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -parentBuildID 20261009003443 -sandboxingKind 0 -prefsHandle 0:53986 -prefMapHandle 1:298196 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {e772c0dc-1508-4082-9954-0123250eddcc} -parentPid 3442 -crashHelperPid 3507 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9057/usr/lib/firefox/browser 8 utility
ronak74+    4718  1.7  6.8 2906768 115772 ?      Sl   21:20   0:33 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:50792 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {d6f35903-ede8-4483-87de-e26111911469} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 9 tab
ronak74+    4887  0.0  1.4 2594924 24268 ?       Sl   21:20   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:50792 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {0eb3c8ad-6913-4b4f-b572-429809cf4b49} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 10 tab
ronak74+    5013  1.8  3.4 1667392 58456 ?       Rl   21:21   0:34 /usr/bin/ptyxis --gapplication-service
ronak74+    5021  0.0  0.3 239996  6316 ?        Ssl  21:21   0:00 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
ronak74+    5066  0.0  0.2   8828  4420 pts/0    Ss   21:21   0:00 /usr/bin/bash
ronak74+    5798  0.2  1.5 2594924 26272 ?       Sl   21:46   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51151 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {0d778670-faa6-447d-85ba-4cd8b9984ead} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 11 tab
ronak74+    5913  0.8  1.6 2594940 27432 ?       Sl   21:48   0:02 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51151 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {a42080dc-46e8-4ee4-a2b4-279cb4f72d6c} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 12 tab
ronak74+    6042  100  0.2  10036  4952 pts/0    R+   21:52   0:00 ps aux
ronak74+    6043  0.0  0.0    672   204 pts/0    R+   21:52   0:00 grep --color=auto ^ronak74+
```

## 3. List all processes except root
```bash
$ ps aux | grep -v "^root"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     599  0.0  0.3  16808  5812 ?        Ss   21:17   0:01 /usr/lib/systemd/systemd-oomd
systemd+     600  0.0  0.4  22828  7244 ?        Ss   21:17   0:01 /usr/lib/systemd/systemd-resolved
systemd+     916  0.0  0.4  21432  7456 ?        Ss   21:17   0:00 /usr/lib/systemd/systemd-networkd
avahi       1129  0.0  0.2   6696  3828 ?        Ss   21:17   0:00 avahi-daemon: running [ronak.local]
message+    1131  0.1  0.3  11876  5736 ?        Ss   21:17   0:02 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1139  0.0  0.4 386532  8196 ?        Ssl  21:17   0:01 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
avahi       1156  0.0  0.0   6564  1040 ?        S    21:17   0:00 avahi-daemon: chroot helper
syslog      1194  0.0  0.2 220604  4020 ?        Ssl  21:17   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1224  0.0  0.2  23880  3812 ?        S    21:17   0:00 /usr/sbin/chronyd -n -F 1
_chrony     1239  0.0  0.1  12120  1924 ?        S    21:18   0:00 /usr/sbin/chronyd -n -F 1
rtkit       1519  0.0  0.2  21872  3396 ?        SNsl 21:18   0:00 /usr/libexec/rtkit-daemon
colord      1662  0.0  0.4 317456  7140 ?        Ssl  21:18   0:00 /usr/libexec/colord
ronak74+    2228  0.0  0.4  23504  7872 ?        Ss   21:18   0:01 /usr/lib/systemd/systemd --user
ronak74+    2232  0.0  0.1  23456  1728 ?        S    21:18   0:00 (sd-pam)
ronak74+    2252  0.1  0.3  10100  5180 ?        Rs   21:18   0:02 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
ronak74+    2253  0.0  0.5 103364 10060 ?        S<sl 21:18   0:00 /usr/bin/pipewire
ronak74+    2255  0.0  0.3 183244  6360 ?        SLsl 21:18   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
ronak74+    2256  0.0  0.2   7560  3752 ?        Ss   21:18   0:00 /usr/bin/mpris-proxy
ronak74+    2257  0.0  0.7 724616 12060 ?        S<sl 21:18   0:00 /usr/bin/wireplumber
ronak74+    2258  0.0  0.2  84812  3732 ?        Ssl  21:18   0:00 /usr/bin/pipewire -c filter-chain.conf
ronak74+    2259  0.0  0.5 176728  9492 ?        S<sl 21:18   0:00 /usr/bin/pipewire-pulse
ronak74+    2286  0.0  0.3 168196  5652 tty2     Ssl+ 21:18   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
ronak74+    2312  0.0  0.3 175212  6380 tty2     Sl+  21:18   0:00 /usr/libexec/gnome-session-init-worker ubuntu
ronak74+    2413  0.0  0.3  97560  5616 ?        Ssl  21:18   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
ronak74+    2414  0.0  0.3  87208  5360 ?        Ssl  21:18   0:00 /usr/libexec/gnome-session-ctl --monitor
ronak74+    2415  0.0  0.1  10484  3292 ?        Ss   21:18   0:00 /usr/bin/ssh-agent -D
ronak74+    2427  0.0  0.3 312952  5780 ?        Ssl  21:18   0:00 /usr/libexec/gvfsd
ronak74+    2433  0.0  0.3 324640  5896 ?        Sl   21:18   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
ronak74+    2435  0.0  0.4 613320  7884 ?        Ssl  21:18   0:00 /usr/libexec/gnome-session-service --session=ubuntu
ronak74+    2448 15.9  7.4 4041312 124696 ?      Rsl  21:18   5:26 /usr/bin/gnome-shell --mode=ubuntu
ronak74+    2468  0.0  0.3 381124  6388 ?        Ssl  21:18   0:00 /usr/libexec/at-spi-bus-launcher
ronak74+    2475  0.0  0.2   8612  3984 ?        S    21:18   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
ronak74+    2477  0.0  0.3 168688  6080 ?        Sl   21:18   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
ronak74+    2491  0.0  0.3 307364  5988 ?        Ssl  21:18   0:00 /usr/libexec/xdg-permission-store
ronak74+    2492  0.0  0.3 658668  5928 ?        Sl   21:18   0:00 /usr/libexec/gnome-shell-calendar-server
ronak74+    2507  0.0  0.5 2594184 9300 ?        Sl   21:18   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
ronak74+    2513  0.1  0.4 385608  7076 ?        Ssl  21:18   0:02 /usr/bin/ibus-daemon --panel disable
ronak74+    2515  0.0  0.4 253792  6732 ?        Ssl  21:18   0:00 /usr/libexec/gsd-a11y-settings
ronak74+    2516  0.0  0.3 251624  6664 ?        Ssl  21:18   0:00 /usr/libexec/gsd-color
ronak74+    2517  0.0  0.3 260164  6664 ?        Ssl  21:18   0:00 /usr/libexec/gsd-datetime
ronak74+    2519  0.0  0.4 464932  7192 ?        Ssl  21:18   0:00 /usr/libexec/gsd-housekeeping
ronak74+    2523  0.0  0.3 383124  6444 ?        Ssl  21:18   0:00 /usr/libexec/gsd-keyboard
ronak74+    2526  0.0  0.5 559940  8540 ?        Ssl  21:18   0:00 /usr/libexec/gsd-media-keys
ronak74+    2529  0.0  0.4 475388  7892 ?        Rsl  21:18   0:00 /usr/libexec/gsd-power
ronak74+    2533  0.0  0.4 327572  7084 ?        Ssl  21:18   0:00 /usr/libexec/gsd-print-notifications
ronak74+    2538  0.0  0.3 456924  6564 ?        Rsl  21:18   0:00 /usr/libexec/gsd-rfkill
ronak74+    2539  0.0  0.3 169832  6096 ?        Rsl  21:18   0:00 /usr/libexec/gsd-screensaver-proxy
ronak74+    2545  0.0  0.4 840348  7628 ?        Sl   21:18   0:01 /usr/libexec/evolution-data-server/evolution-alarm-notify
ronak74+    2550  0.0  0.3 312176  5544 ?        Sl   21:18   0:00 /usr/libexec/gsd-disk-utility-notify
ronak74+    2551  0.0  0.4 467388  7272 ?        Ssl  21:18   0:00 /usr/libexec/gsd-sharing
ronak74+    2555  0.0  0.3 385700  6472 ?        Ssl  21:18   0:00 /usr/libexec/gsd-smartcard
ronak74+    2558  0.0  0.3 254940  6636 ?        Ssl  21:18   0:00 /usr/libexec/gsd-sound
ronak74+    2560  0.0  0.3 472204  6600 ?        Ssl  21:18   0:00 /usr/libexec/gsd-usb-protection
ronak74+    2561  0.0  0.3 390408  6636 ?        Ssl  21:18   0:00 /usr/libexec/gsd-wwan
ronak74+    2574  0.0  0.4 651564  8080 ?        Sl   21:18   0:00 /usr/bin/update-notifier
ronak74+    2673  0.0  0.3 169180  5836 ?        Sl   21:18   0:00 /usr/libexec/ibus-memconf
ronak74+    2675  0.2  0.4 500020  8000 ?        Sl   21:18   0:05 /usr/libexec/ibus-extension-gtk3
ronak74+    2685  0.0  0.4 690200  7092 ?        Ssl  21:18   0:00 /usr/libexec/evolution-source-registry
ronak74+    2689  0.0  0.3 308500  5976 ?        Sl   21:18   0:00 /usr/libexec/ibus-portal
ronak74+    2720  0.0  0.5 2660744 9272 ?        Sl   21:18   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
ronak74+    2728  0.0  0.3 399484  6108 ?        Sl   21:18   0:00 /usr/libexec/gsd-printer
ronak74+    2735  0.1  0.3 729412  6660 ?        SNsl 21:18   0:02 /usr/libexec/localsearch-3
ronak74+    2738  0.0  0.6 629136 11220 ?        Ssl  21:18   0:00 /usr/libexec/xdg-desktop-portal
ronak74+    2795  0.0  0.4 466816  8108 ?        Sl   21:18   0:00 /usr/libexec/goa-daemon
ronak74+    2797  0.0  0.3 687092  6148 ?        Ssl  21:18   0:00 /usr/libexec/xdg-document-portal
ronak74+    2816  0.0  0.3 893400  6508 ?        Ssl  21:18   0:00 /usr/libexec/evolution-calendar-factory
ronak74+    2824  0.0  0.3 461676  6036 ?        Sl   21:18   0:00 /usr/libexec/goa-identity-service
ronak74+    2825  0.0  0.5 696040  9864 ?        Ssl  21:18   0:00 /usr/libexec/xdg-desktop-portal-gnome
ronak74+    2836  0.0  0.4 386944  7140 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
ronak74+    2851  0.0  0.4 826072  7600 ?        Ssl  21:18   0:00 /usr/libexec/evolution-addressbook-factory
ronak74+    2856  0.0  0.4 389884  7156 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-afc-volume-monitor
ronak74+    2865  0.0  0.3 307832  6004 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-goa-volume-monitor
ronak74+    2875  0.0  0.3 307880  6240 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-mtp-volume-monitor
ronak74+    2884  0.0  0.3 308848  6256 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
ronak74+    2891  0.0  0.3 169176  6648 ?        Sl   21:18   0:00 /usr/libexec/ibus-engine-simple
ronak74+    2898  0.0  0.3 165348  5560 ?        Ssl  21:18   0:00 /usr/libexec/dconf-service
ronak74+    2915  0.0  0.3 168924  6008 ?        Ssl  21:18   0:00 /usr/libexec/gvfsd-metadata
ronak74+    3192  0.0  0.3 534376  6272 ?        Sl   21:19   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
ronak74+    3312  0.0  0.5 492248  8644 ?        Ssl  21:19   0:00 /usr/libexec/xdg-desktop-portal-gtk
ronak74+    3379  0.2  0.8 3334656 13616 ?       Sl   21:19   0:05 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
ronak74+    3442 14.0 11.2 11839152 189316 ?     Sl   21:19   4:44 /snap/firefox/9057/usr/lib/firefox/firefox
ronak74+    3507  0.0  0.0 149264   464 ?        Sl   21:19   0:00 /snap/firefox/9057/usr/lib/firefox/crashhelper 3442 9 /tmp/ 11 20261009003443
ronak74+    3534  0.1  0.0      0     0 ?        Z    21:19   0:02 [gfxtest] <defunct>
ronak74+    3562  0.0  0.3 212816  5068 ?        S    21:19   0:01 /usr/bin/Xwayland :0 -rootless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.9H5YY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
ronak74+    3572  0.0  0.4 251364  7592 ?        Ssl  21:19   0:00 /usr/libexec/gsd-xsettings
ronak74+    3596  0.1  0.6 1127744 11408 ?       Sl   21:19   0:02 /usr/libexec/mutter-x11-frames
ronak74+    3618  0.0  0.3 374024  6712 ?        Sl   21:19   0:00 /usr/libexec/ibus-x11
ronak74+    3652  0.0  0.3 466536  5628 ?        S    21:19   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -ipcHandle 0 -signalPipe 1 -initialChannelId {b3ad4201-3ea5-4e09-9c71-8a27b1fbd9ef} -parentPid 3442 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 1 forkserver
ronak74+    3706  0.0  0.3 301964  5380 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-svg --dbus-fd 28
ronak74+    3730  0.0  0.1 212912  2604 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-image-rs --dbus-fd 32
ronak74+    3743  0.0  0.6 478776 11136 ?        Sl   21:19   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -parentBuildID 20261009003443 -prefsHandle 0:35830 -prefMapHandle 1:298196 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {8861cb18-2d7a-446e-a40a-271e8fa09b8c} -parentPid 3442 -crashHelperPid 3507 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9057/usr/lib/firefox/browser 2 socket
ronak74+    3784  0.0  0.3 301964  5556 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-svg --dbus-fd 28
ronak74+    3807  0.0  0.1 212912  2548 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-image-rs --dbus-fd 32
ronak74+    3862  1.7  3.4 2688676 57228 ?       Sl   21:19   0:33 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:35971 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {276426f5-0131-4611-b867-7ed8979c550d} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 3 tab
ronak74+    3869  0.0  0.3 301964  5876 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-svg --dbus-fd 28
ronak74+    3871  0.0  0.6 638372 10472 ?        Sl   21:19   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -parentBuildID 20261009003443 -prefsHandle 0:35971 -prefMapHandle 1:298196 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {15e9278c-f83c-4ccd-95cf-06c88f6ffbfa} -parentPid 3442 -crashHelperPid 3507 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9057/usr/lib/firefox/browser 4 rdd
ronak74+    3906  0.0  0.1 212912  2584 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-image-rs --dbus-fd 32
ronak74+    3961  0.1  0.5 1815104 9020 ?        Sl   21:19   0:02 /usr/bin/snap userd
ronak74+    4225  0.2  1.9 2649720 32960 ?       Sl   21:20   0:05 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:36026 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {98d32c67-0afe-472a-9e7e-9f65d11cc9d1} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 5 tab
ronak74+    4490 26.0 32.9 3305972 554580 ?      Sl   21:20   8:27 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:50537 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {29f03ed7-b2b4-4bb7-9c40-9af67e19524f} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 6 tab
ronak74+    4710  0.0  0.7 478664 12784 ?        Sl   21:20   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -parentBuildID 20261009003443 -sandboxingKind 0 -prefsHandle 0:53986 -prefMapHandle 1:298196 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {e772c0dc-1508-4082-9954-0123250eddcc} -parentPid 3442 -crashHelperPid 3507 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9057/usr/lib/firefox/browser 8 utility
ronak74+    4718  1.7  6.8 2906768 115772 ?      Sl   21:20   0:33 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:50792 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {d6f35903-ede8-4483-87de-e26111911469} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 9 tab
ronak74+    4887  0.0  1.4 2594924 24268 ?       Sl   21:20   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:50792 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {0eb3c8ad-6913-4b4f-b572-429809cf4b49} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 10 tab
ronak74+    5013  1.8  3.4 1667392 58456 ?       Sl   21:21   0:34 /usr/bin/ptyxis --gapplication-service
ronak74+    5021  0.0  0.3 239996  6316 ?        Ssl  21:21   0:00 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
ronak74+    5066  0.0  0.2   8828  4424 pts/0    Ss   21:21   0:00 /usr/bin/bash
cups-br+    5674  0.0  0.5 207560  8532 ?        Ssl  21:41   0:00 /usr/sbin/cups-browsed
ronak74+    5798  0.2  1.5 2594924 26272 ?       Sl   21:46   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51151 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {0d778670-faa6-447d-85ba-4cd8b9984ead} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 11 tab
ronak74+    5913  0.8  1.6 2594940 27432 ?       Sl   21:48   0:02 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51151 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {a42080dc-46e8-4ee4-a2b4-279cb4f72d6c} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 12 tab
ronak74+    6045  200  0.2  10036  4960 pts/0    R+   21:52   0:00 ps aux
ronak74+    6046  0.0  0.1   6716  2684 pts/0    S+   21:52   0:00 grep --color=auto -v ^root
```

## 4. Filter out kworker and irq processes
```bash
$ ps aux | grep -Ev "kworker|irq"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.4  0.6  25548 11232 ?        Ss   21:17   0:09 /usr/lib/systemd/systemd --switched-root --system --deserialize=56
root           2  0.0  0.0      0     0 ?        S    21:17   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    21:17   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    21:17   0:01 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    21:17   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    21:17   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    21:17   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    21:17   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    21:17   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    21:17   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    21:17   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    21:17   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    21:17   0:00 [migration/1]
root          30  0.0  0.0      0     0 ?        S    21:17   0:00 [kdevtmpfs]
root          32  0.0  0.0      0     0 ?        I    21:17   0:00 [rcu_tasks_kthread]
root          33  0.0  0.0      0     0 ?        I    21:17   0:00 [rcu_tasks_rude_kthread]
root          34  0.0  0.0      0     0 ?        S    21:17   0:00 [kauditd]
root          35  0.0  0.0      0     0 ?        S    21:17   0:00 [khungtaskd]
root          36  0.0  0.0      0     0 ?        S    21:17   0:00 [oom_reaper]
root          39  0.0  0.0      0     0 ?        S    21:17   0:01 [kcompactd0]
root          40  0.0  0.0      0     0 ?        SN   21:17   0:00 [ksmd]
root          41  0.0  0.0      0     0 ?        SN   21:17   0:00 [khugepaged]
root          54  0.0  0.0      0     0 ?        S    21:17   0:00 [watchdogd]
root          57  8.4  0.0      0     0 ?        S    21:17   2:58 [kswapd0]
root          58  0.0  0.0      0     0 ?        S    21:17   0:00 [ecryptfs-kthread]
root          62  0.0  0.0      0     0 ?        S    21:17   0:00 [scsi_eh_0]
root          64  0.0  0.0      0     0 ?        S    21:17   0:00 [scsi_eh_1]
root         321  0.0  0.0      0     0 ?        S    21:17   0:00 [scsi_eh_2]
root         432  0.0  0.0      0     0 ?        S    21:17   0:00 [jbd2/dm-0-8]
root         537  0.0  0.0      0     0 ?        S    21:17   0:00 [psimon]
root         543  0.2  0.5  51232  8676 ?        S<s  21:17   0:04 /usr/lib/systemd/systemd-journald
root         576  0.0  0.5 279492  9644 ?        SLsl 21:17   0:01 /usr/sbin/multipathd -d -s
systemd+     599  0.0  0.3  16808  5812 ?        Ss   21:17   0:01 /usr/lib/systemd/systemd-oomd
systemd+     600  0.0  0.4  22828  7244 ?        Ss   21:17   0:01 /usr/lib/systemd/systemd-resolved
root         604  0.0  0.3  41628  6484 ?        Ss   21:17   0:01 /usr/lib/systemd/systemd-udevd
root         605  0.0  0.0      0     0 ?        S    21:17   0:00 [psimon]
root         714  0.0  0.0      0     0 ?        S    21:17   0:00 [jbd2/sda2-8]
systemd+     916  0.0  0.4  21432  7456 ?        Ss   21:17   0:00 /usr/lib/systemd/systemd-networkd
avahi       1129  0.0  0.2   6696  3828 ?        Ss   21:17   0:00 avahi-daemon: running [ronak.local]
root        1130  0.0  0.1   2888  1880 ?        Ss   21:17   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+    1131  0.1  0.3  11876  5736 ?        Ss   21:17   0:02 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1138  0.0  0.4  46844  7076 ?        Ss   21:17   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1139  0.0  0.4 386532  8196 ?        Ssl  21:17   0:01 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1142  0.4  0.8 1889608 14992 ?       Ssl  21:17   0:09 /usr/lib/snapd/snapd
root        1144  0.0  0.3 309628  6472 ?        Ssl  21:17   0:00 /usr/libexec/accounts-daemon
root        1145  0.0  0.3 307908  6312 ?        Ssl  21:17   0:00 /usr/libexec/switcheroo-control
root        1147  0.0  0.4  18712  6752 ?        Ss   21:17   0:00 /usr/lib/systemd/systemd-logind
root        1150  0.0  0.5 543804  8488 ?        Ssl  21:17   0:01 /usr/libexec/udisks2/udisksd
avahi       1156  0.0  0.0   6564  1040 ?        S    21:17   0:00 avahi-daemon: chroot helper
syslog      1194  0.0  0.2 220604  4020 ?        Ssl  21:17   0:00 /usr/sbin/rsyslogd -n -iNONE
root        1214  0.0  0.6 623496 11384 ?        Ssl  21:17   0:01 /usr/sbin/NetworkManager --no-daemon
root        1216  0.0  0.2  17972  4200 ?        Ss   21:17   0:00 /usr/sbin/wpa_supplicant -u -s -O DIR=/run/wpa_supplicant GROUP=netdev
_chrony     1224  0.0  0.2  23880  3812 ?        S    21:17   0:00 /usr/sbin/chronyd -n -F 1
_chrony     1239  0.0  0.1  12120  1924 ?        S    21:18   0:00 /usr/sbin/chronyd -n -F 1
root        1275  0.0  0.3 391496  6116 ?        Ssl  21:18   0:00 /usr/sbin/ModemManager
root        1342  0.0  0.4 126116  7472 ?        Ssl  21:18   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root        1367  0.0  0.1   7060  2940 ?        Ss   21:18   0:00 /usr/sbin/cron -f -P
root        1425  0.0  0.4 384624  7736 ?        Ssl  21:18   0:00 /usr/sbin/gdm3
root        1468  0.0  0.3 309272  6332 ?        Ssl  21:18   0:00 /usr/libexec/power-profiles-daemon
rtkit       1519  0.0  0.2  21872  3396 ?        SNsl 21:18   0:00 /usr/libexec/rtkit-daemon
colord      1662  0.0  0.4 317456  7140 ?        Ssl  21:18   0:00 /usr/libexec/colord
root        1699  0.0  0.5 318704  8624 ?        Ssl  21:18   0:01 /usr/libexec/upowerd
root        2142  0.0  0.3 172876  6684 ?        Sl   21:18   0:00 gdm-session-worker [pam/gdm-password]
ronak74+    2228  0.0  0.4  23504  7872 ?        Ss   21:18   0:01 /usr/lib/systemd/systemd --user
ronak74+    2232  0.0  0.1  23456  1728 ?        S    21:18   0:00 (sd-pam)
ronak74+    2252  0.1  0.3  10100  5180 ?        Ss   21:18   0:02 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
ronak74+    2253  0.0  0.5 103364 10060 ?        S<sl 21:18   0:00 /usr/bin/pipewire
ronak74+    2255  0.0  0.3 183244  6360 ?        SLsl 21:18   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
ronak74+    2256  0.0  0.2   7560  3752 ?        Ss   21:18   0:00 /usr/bin/mpris-proxy
ronak74+    2257  0.0  0.7 724616 12060 ?        S<sl 21:18   0:00 /usr/bin/wireplumber
ronak74+    2258  0.0  0.2  84812  3732 ?        Ssl  21:18   0:00 /usr/bin/pipewire -c filter-chain.conf
ronak74+    2259  0.0  0.5 176728  9492 ?        S<sl 21:18   0:00 /usr/bin/pipewire-pulse
ronak74+    2286  0.0  0.3 168196  5652 tty2     Ssl+ 21:18   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
ronak74+    2312  0.0  0.3 175212  6380 tty2     Sl+  21:18   0:00 /usr/libexec/gnome-session-init-worker ubuntu
ronak74+    2413  0.0  0.3  97560  5616 ?        Ssl  21:18   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
ronak74+    2414  0.0  0.3  87208  5360 ?        Ssl  21:18   0:00 /usr/libexec/gnome-session-ctl --monitor
ronak74+    2415  0.0  0.1  10484  3292 ?        Ss   21:18   0:00 /usr/bin/ssh-agent -D
ronak74+    2427  0.0  0.3 312952  5780 ?        Ssl  21:18   0:00 /usr/libexec/gvfsd
ronak74+    2433  0.0  0.3 324640  5896 ?        Sl   21:18   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
ronak74+    2435  0.0  0.4 613320  7884 ?        Ssl  21:18   0:00 /usr/libexec/gnome-session-service --session=ubuntu
ronak74+    2448 15.9  7.4 4037152 124700 ?      Ssl  21:18   5:26 /usr/bin/gnome-shell --mode=ubuntu
ronak74+    2468  0.0  0.3 381124  6388 ?        Ssl  21:18   0:00 /usr/libexec/at-spi-bus-launcher
ronak74+    2475  0.0  0.2   8612  3984 ?        S    21:18   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
ronak74+    2477  0.0  0.3 168688  6080 ?        Sl   21:18   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
ronak74+    2491  0.0  0.3 307364  5988 ?        Ssl  21:18   0:00 /usr/libexec/xdg-permission-store
ronak74+    2492  0.0  0.3 658668  5928 ?        Sl   21:18   0:00 /usr/libexec/gnome-shell-calendar-server
ronak74+    2507  0.0  0.5 2594184 9300 ?        Sl   21:18   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
ronak74+    2513  0.1  0.4 385608  7076 ?        Ssl  21:18   0:02 /usr/bin/ibus-daemon --panel disable
ronak74+    2515  0.0  0.4 253792  6732 ?        Ssl  21:18   0:00 /usr/libexec/gsd-a11y-settings
ronak74+    2516  0.0  0.3 251624  6664 ?        Ssl  21:18   0:00 /usr/libexec/gsd-color
ronak74+    2517  0.0  0.3 260164  6664 ?        Ssl  21:18   0:00 /usr/libexec/gsd-datetime
ronak74+    2519  0.0  0.4 464932  7192 ?        Ssl  21:18   0:00 /usr/libexec/gsd-housekeeping
ronak74+    2523  0.0  0.3 383124  6444 ?        Ssl  21:18   0:00 /usr/libexec/gsd-keyboard
ronak74+    2526  0.0  0.5 559940  8540 ?        Ssl  21:18   0:00 /usr/libexec/gsd-media-keys
ronak74+    2529  0.0  0.4 475388  7892 ?        Ssl  21:18   0:00 /usr/libexec/gsd-power
ronak74+    2533  0.0  0.4 327572  7084 ?        Ssl  21:18   0:00 /usr/libexec/gsd-print-notifications
ronak74+    2538  0.0  0.3 456924  6564 ?        Ssl  21:18   0:00 /usr/libexec/gsd-rfkill
ronak74+    2539  0.0  0.3 169832  6096 ?        Ssl  21:18   0:00 /usr/libexec/gsd-screensaver-proxy
ronak74+    2545  0.0  0.4 840348  7628 ?        Sl   21:18   0:01 /usr/libexec/evolution-data-server/evolution-alarm-notify
ronak74+    2550  0.0  0.3 312176  5544 ?        Sl   21:18   0:00 /usr/libexec/gsd-disk-utility-notify
ronak74+    2551  0.0  0.4 467388  7272 ?        Ssl  21:18   0:00 /usr/libexec/gsd-sharing
ronak74+    2555  0.0  0.3 385700  6472 ?        Ssl  21:18   0:00 /usr/libexec/gsd-smartcard
ronak74+    2558  0.0  0.3 254940  6636 ?        Ssl  21:18   0:00 /usr/libexec/gsd-sound
ronak74+    2560  0.0  0.3 472204  6600 ?        Ssl  21:18   0:00 /usr/libexec/gsd-usb-protection
ronak74+    2561  0.0  0.3 390408  6636 ?        Ssl  21:18   0:00 /usr/libexec/gsd-wwan
ronak74+    2574  0.0  0.4 651564  8080 ?        Sl   21:18   0:00 /usr/bin/update-notifier
ronak74+    2673  0.0  0.3 169180  5836 ?        Sl   21:18   0:00 /usr/libexec/ibus-memconf
ronak74+    2675  0.2  0.4 500020  8000 ?        Sl   21:18   0:05 /usr/libexec/ibus-extension-gtk3
ronak74+    2685  0.0  0.4 690200  7092 ?        Ssl  21:18   0:00 /usr/libexec/evolution-source-registry
ronak74+    2689  0.0  0.3 308500  5976 ?        Sl   21:18   0:00 /usr/libexec/ibus-portal
ronak74+    2720  0.0  0.5 2660744 9272 ?        Sl   21:18   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
ronak74+    2728  0.0  0.3 399484  6108 ?        Sl   21:18   0:00 /usr/libexec/gsd-printer
ronak74+    2735  0.1  0.3 729412  6660 ?        SNsl 21:18   0:02 /usr/libexec/localsearch-3
ronak74+    2738  0.0  0.6 629136 11220 ?        Ssl  21:18   0:00 /usr/libexec/xdg-desktop-portal
ronak74+    2795  0.0  0.4 466816  8108 ?        Sl   21:18   0:00 /usr/libexec/goa-daemon
ronak74+    2797  0.0  0.3 687092  6148 ?        Ssl  21:18   0:00 /usr/libexec/xdg-document-portal
root        2808  0.0  0.1   2792  2160 ?        Ss   21:18   0:00 fusermount3 -o rw,nosuid,nodev,fsname=portal,auto_unmount,subtype=portal -- /run/user/1000/doc
ronak74+    2816  0.0  0.3 893400  6508 ?        Ssl  21:18   0:00 /usr/libexec/evolution-calendar-factory
ronak74+    2824  0.0  0.3 461676  6036 ?        Sl   21:18   0:00 /usr/libexec/goa-identity-service
ronak74+    2825  0.0  0.5 696040  9864 ?        Ssl  21:18   0:00 /usr/libexec/xdg-desktop-portal-gnome
ronak74+    2836  0.0  0.4 386944  7140 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
ronak74+    2851  0.0  0.4 826072  7600 ?        Ssl  21:18   0:00 /usr/libexec/evolution-addressbook-factory
ronak74+    2856  0.0  0.4 389884  7156 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-afc-volume-monitor
ronak74+    2865  0.0  0.3 307832  6004 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-goa-volume-monitor
ronak74+    2875  0.0  0.3 307880  6240 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-mtp-volume-monitor
ronak74+    2884  0.0  0.3 308848  6256 ?        Ssl  21:18   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
ronak74+    2891  0.0  0.3 169176  6648 ?        Sl   21:18   0:00 /usr/libexec/ibus-engine-simple
ronak74+    2898  0.0  0.3 165348  5560 ?        Ssl  21:18   0:00 /usr/libexec/dconf-service
ronak74+    2915  0.0  0.3 168924  6008 ?        Ssl  21:18   0:00 /usr/libexec/gvfsd-metadata
ronak74+    3192  0.0  0.3 534376  6272 ?        Sl   21:19   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
ronak74+    3312  0.0  0.5 492248  8644 ?        Ssl  21:19   0:00 /usr/libexec/xdg-desktop-portal-gtk
ronak74+    3379  0.2  0.8 3334656 13616 ?       Sl   21:19   0:05 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
ronak74+    3442 14.0 11.2 11839152 189316 ?     Sl   21:19   4:44 /snap/firefox/9057/usr/lib/firefox/firefox
ronak74+    3507  0.0  0.0 149264   464 ?        Sl   21:19   0:00 /snap/firefox/9057/usr/lib/firefox/crashhelper 3442 9 /tmp/ 11 20261009003443
ronak74+    3534  0.1  0.0      0     0 ?        Z    21:19   0:02 [gfxtest] <defunct>
ronak74+    3562  0.0  0.3 212816  5068 ?        S    21:19   0:01 /usr/bin/Xwayland :0 -rootless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.9H5YY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
ronak74+    3572  0.0  0.4 251364  7592 ?        Ssl  21:19   0:00 /usr/libexec/gsd-xsettings
ronak74+    3596  0.1  0.6 1127744 11408 ?       Sl   21:19   0:02 /usr/libexec/mutter-x11-frames
ronak74+    3618  0.0  0.3 374024  6712 ?        Sl   21:19   0:00 /usr/libexec/ibus-x11
ronak74+    3652  0.0  0.3 466536  5628 ?        S    21:19   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -ipcHandle 0 -signalPipe 1 -initialChannelId {b3ad4201-3ea5-4e09-9c71-8a27b1fbd9ef} -parentPid 3442 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 1 forkserver
ronak74+    3706  0.0  0.3 301964  5380 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-svg --dbus-fd 28
ronak74+    3730  0.0  0.1 212912  2604 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-image-rs --dbus-fd 32
ronak74+    3743  0.0  0.6 478776 11136 ?        Sl   21:19   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -parentBuildID 20261009003443 -prefsHandle 0:35830 -prefMapHandle 1:298196 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {8861cb18-2d7a-446e-a40a-271e8fa09b8c} -parentPid 3442 -crashHelperPid 3507 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9057/usr/lib/firefox/browser 2 socket
ronak74+    3784  0.0  0.3 301964  5556 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-svg --dbus-fd 28
ronak74+    3807  0.0  0.1 212912  2548 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-image-rs --dbus-fd 32
ronak74+    3862  1.7  3.4 2688676 57228 ?       Sl   21:19   0:33 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:35971 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {276426f5-0131-4611-b867-7ed8979c550d} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 3 tab
ronak74+    3869  0.0  0.3 301964  5876 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-svg --dbus-fd 28
ronak74+    3871  0.0  0.6 638372 10472 ?        Sl   21:19   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -parentBuildID 20261009003443 -prefsHandle 0:35971 -prefMapHandle 1:298196 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {15e9278c-f83c-4ccd-95cf-06c88f6ffbfa} -parentPid 3442 -crashHelperPid 3507 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9057/usr/lib/firefox/browser 4 rdd
ronak74+    3906  0.0  0.1 212912  2584 ?        Sl   21:19   0:00 /usr/libexec/glycin-loaders/2+/glycin-image-rs --dbus-fd 32
ronak74+    3961  0.1  0.5 1815104 9020 ?        Sl   21:19   0:02 /usr/bin/snap userd
ronak74+    4225  0.2  1.9 2649720 32960 ?       Sl   21:20   0:05 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:36026 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {98d32c67-0afe-472a-9e7e-9f65d11cc9d1} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 5 tab
ronak74+    4490 26.0 32.9 3305972 554580 ?      Sl   21:20   8:27 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:50537 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {29f03ed7-b2b4-4bb7-9c40-9af67e19524f} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 6 tab
ronak74+    4710  0.0  0.7 478664 12784 ?        Sl   21:20   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -parentBuildID 20261009003443 -sandboxingKind 0 -prefsHandle 0:53986 -prefMapHandle 1:298196 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {e772c0dc-1508-4082-9954-0123250eddcc} -parentPid 3442 -crashHelperPid 3507 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9057/usr/lib/firefox/browser 8 utility
ronak74+    4718  1.7  6.8 2906768 115772 ?      Sl   21:20   0:33 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:50792 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {d6f35903-ede8-4483-87de-e26111911469} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 9 tab
ronak74+    4887  0.0  1.4 2594924 24268 ?       Sl   21:20   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:50792 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {0eb3c8ad-6913-4b4f-b572-429809cf4b49} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 10 tab
ronak74+    5013  1.8  3.4 1667392 58456 ?       Rl   21:21   0:34 /usr/bin/ptyxis --gapplication-service
ronak74+    5021  0.0  0.3 239996  6316 ?        Ssl  21:21   0:00 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
ronak74+    5066  0.0  0.2   8828  4424 pts/0    Ss   21:21   0:00 /usr/bin/bash
root        5673  0.0  0.3  29472  5940 ?        Ss   21:41   0:00 /usr/sbin/cupsd -l
cups-br+    5674  0.0  0.5 207560  8532 ?        Ssl  21:41   0:00 /usr/sbin/cups-browsed
root        5769  2.3  0.5 502312  9240 ?        Ssl  21:45   0:10 /usr/libexec/fwupd/fwupd
ronak74+    5798  0.2  1.5 2594924 26272 ?       Sl   21:46   0:00 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51151 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {0d778670-faa6-447d-85ba-4cd8b9984ead} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 11 tab
ronak74+    5913  0.8  1.6 2594940 27432 ?       Sl   21:48   0:02 /snap/firefox/9057/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51151 -prefMapHandle 1:298196 -jsInitHandle 2:162336 -parentBuildID 20261009003443 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {a42080dc-46e8-4ee4-a2b4-279cb4f72d6c} -parentPid 3442 -crashHelperPid 3507 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9057/usr/lib/firefox/omni.ja -appomni /snap/firefox/9057/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9057/usr/lib/firefox/browser 12 tab
ronak74+    6048 50.0  0.2  10036  4928 pts/0    R+   21:52   0:00 ps aux
```
