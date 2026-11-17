# Lecture 5 - Task 2: Search and Filter

## 1. Find processes containing username vboxuser
```bash
vboxuser@Ubuntu:~/ICT_WiSe26-27/Lecture_5$ ps aux | grep "vboxuser"
vboxuser    5530  0.0  0.1  23700 14968 ?        Ss   16:41   0:01 /usr/lib/systemd/systemd --user
vboxuser    5532  0.0  0.0  23456  4168 ?        S    16:41   0:00 (sd-pam)
vboxuser    5552  0.0  0.0  10284  7112 ?        Ss   16:41   0:04 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
vboxuser    5553  0.0  0.1 103232 12764 ?        Ssl  16:41   0:02 /usr/bin/pipewire
vboxuser    5555  0.0  0.1 183248 11320 ?        SLsl 16:41   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
vboxuser    5556  0.0  0.0   7560  4064 ?        Ss   16:41   0:00 /usr/bin/mpris-proxy
vboxuser    5559  0.0  0.2 487696 22664 ?        Ssl  16:41   0:00 /usr/bin/wireplumber
vboxuser    5562  0.0  0.0  84812  5816 ?        Ssl  16:41   0:00 /usr/bin/pipewire -c filter-chain.conf
vboxuser    5563  0.0  0.1 176412 12716 ?        Ssl  16:41   0:00 /usr/bin/pipewire-pulse
vboxuser    5592  0.0  0.0 168196  6864 tty3     Ssl+ 16:41   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
vboxuser    5616  0.0  0.0 175212  9428 tty3     Sl+  16:41   0:00 /usr/libexec/gnome-session-init-worker ubuntu
vboxuser    5728  0.0  0.0 310560  8520 ?        Ssl  16:42   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
vboxuser    5729  0.0  0.0  87208  5976 ?        Ssl  16:42   0:00 /usr/libexec/gnome-session-ctl --monitor
vboxuser    5730  0.0  0.0  10484  6768 ?        Ss   16:42   0:00 /usr/bin/ssh-agent -D
vboxuser    5742  0.0  0.0 313036  9120 ?        Ssl  16:42   0:00 /usr/libexec/gvfsd
vboxuser    5748  0.0  0.0 324640  7924 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
vboxuser    5751  0.0  0.1 539592 11700 ?        Ssl  16:42   0:00 /usr/libexec/gnome-session-service --session=ubuntu
vboxuser    5763 20.7  3.9 6153252 385168 ?      Rsl  16:42  25:24 /usr/bin/gnome-shell --mode=ubuntu
vboxuser    5795  0.0  0.0 381124  8196 ?        Ssl  16:42   0:00 /usr/libexec/at-spi-bus-launcher
vboxuser    5802  0.0  0.0   8744  5340 ?        S    16:42   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
vboxuser    5804  0.0  0.0 168688  7832 ?        Sl   16:42   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
vboxuser    5822  0.0  0.0 307364  7000 ?        Ssl  16:42   0:00 /usr/libexec/xdg-permission-store
vboxuser    5824  0.0  0.2 658664 19764 ?        Sl   16:42   0:00 /usr/libexec/gnome-shell-calendar-server
vboxuser    5834  0.0  0.4 894896 46604 ?        Ssl  16:42   0:00 /usr/libexec/evolution-source-registry
vboxuser    5850  0.0  0.3 466816 32140 ?        Sl   16:42   0:00 /usr/libexec/goa-daemon
vboxuser    5852  0.0  0.3 2665800 32828 ?       Sl   16:42   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
vboxuser    5858  0.2  0.1 385616 11880 ?        Ssl  16:42   0:17 /usr/bin/ibus-daemon --panel disable
vboxuser    5863  0.0  0.1 253792 10540 ?        Ssl  16:42   0:00 /usr/libexec/gsd-a11y-settings
vboxuser    5872  0.0  0.1 251624 10452 ?        Ssl  16:42   0:00 /usr/libexec/gsd-color
vboxuser    5873  0.0  0.1 260160 12756 ?        Ssl  16:42   0:00 /usr/libexec/gsd-datetime
vboxuser    5874  0.0  0.1 390768 10932 ?        Ssl  16:42   0:00 /usr/libexec/gsd-housekeeping
vboxuser    5878  0.0  0.0 383124  8080 ?        Ssl  16:42   0:00 /usr/libexec/gsd-keyboard
vboxuser    5883  0.0  0.1 691008 14884 ?        Ssl  16:42   0:00 /usr/libexec/gsd-media-keys
vboxuser    5886  0.0  0.1 540924 11644 ?        Ssl  16:42   0:00 /usr/libexec/gsd-power
vboxuser    5891  0.0  0.1 327572 14372 ?        Ssl  16:42   0:00 /usr/libexec/gsd-print-notifications
vboxuser    5903  0.0  0.0 456924  8228 ?        Ssl  16:42   0:00 /usr/libexec/gsd-rfkill
vboxuser    5908  0.0  0.0 169832  7536 ?        Ssl  16:42   0:00 /usr/libexec/gsd-screensaver-proxy
vboxuser    5915  0.0  0.1 467388 13100 ?        Ssl  16:42   0:00 /usr/libexec/gsd-sharing
vboxuser    5918  0.0  0.3 715808 34884 ?        Sl   16:42   0:00 /usr/bin/update-notifier
vboxuser    5919  0.0  0.1 385700 10024 ?        Ssl  16:42   0:00 /usr/libexec/gsd-smartcard
vboxuser    5921  0.0  0.1 387944 10528 ?        Sl   16:42   0:00 /usr/libexec/goa-identity-service
vboxuser    5929  0.0  0.1 254940 10804 ?        Ssl  16:42   0:00 /usr/libexec/gsd-sound
vboxuser    5936  0.0  0.1 611472 10148 ?        Ssl  16:42   0:00 /usr/libexec/gsd-usb-protection
vboxuser    5940  0.0  0.6 840316 65164 ?        Sl   16:42   0:00 /usr/libexec/evolution-data-server/evolution-alarm-notify
vboxuser    5950  0.0  0.1 390408 10856 ?        Ssl  16:42   0:00 /usr/libexec/gsd-wwan
vboxuser    5967  0.0  0.0 312176  9608 ?        Sl   16:42   0:00 /usr/libexec/gsd-disk-utility-notify
vboxuser    6037  0.0  0.0 243000  8232 ?        Sl   16:42   0:00 /usr/libexec/ibus-dconf
vboxuser    6039  0.0  0.3 498396 36004 ?        Sl   16:42   0:04 /usr/libexec/ibus-extension-gtk3
vboxuser    6042  0.0  0.3 2731388 32856 ?       Sl   16:42   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
vboxuser    6045  0.0  0.0 308500  8072 ?        Sl   16:42   0:00 /usr/libexec/ibus-portal
vboxuser    6059  0.0  0.1 399484 12520 ?        Sl   16:42   0:00 /usr/libexec/gsd-printer
vboxuser    6119  0.0  0.2 893408 26904 ?        Ssl  16:42   0:00 /usr/libexec/evolution-calendar-factory
vboxuser    6122  0.0  0.2 729256 23632 ?        SNsl 16:42   0:00 /usr/libexec/localsearch-3
vboxuser    6126  0.0  0.2 629176 21068 ?        Ssl  16:42   0:01 /usr/libexec/xdg-desktop-portal
vboxuser    6151  0.0  0.1 386944 11148 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
vboxuser    6152  0.0  0.0 621556  7932 ?        Ssl  16:42   0:00 /usr/libexec/xdg-document-portal
vboxuser    6166  0.0  0.3 826068 32120 ?        Ssl  16:42   0:00 /usr/libexec/evolution-addressbook-factory
vboxuser    6174  0.0  0.4 696012 46092 ?        Ssl  16:42   0:00 /usr/libexec/xdg-desktop-portal-gnome
vboxuser    6175  0.0  0.0 389884  9544 ?        Ssl  16:42   0:01 /usr/libexec/gvfs-afc-volume-monitor
vboxuser    6187  0.0  0.0 307832  7404 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-goa-volume-monitor
vboxuser    6198  0.0  0.0 307880  7524 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-mtp-volume-monitor
vboxuser    6208  0.0  0.0 308848  8016 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
vboxuser    6221  0.0  0.0 169176  8184 ?        Sl   16:42   0:06 /usr/libexec/ibus-engine-simple
vboxuser    6354  0.0  0.0 168888  7428 ?        Ssl  16:42   0:00 /usr/libexec/gvfsd-metadata
vboxuser    6374  0.0  0.0 165344  6704 ?        Ssl  16:42   0:00 /usr/libexec/dconf-service
vboxuser    6465  0.0  0.1 534376 10112 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
vboxuser    6631  0.0  0.2 490712 27656 ?        Ssl  16:42   0:00 /usr/libexec/xdg-desktop-portal-gtk
vboxuser    6700  0.9  2.2 2684708 218808 ?      Sl   16:42   1:10 /usr/bin/ptyxis --gapplication-service
vboxuser    6707  0.0  0.0 239996  7988 ?        Ssl  16:42   0:03 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
vboxuser    6742  0.0  0.0   9612  6764 pts/0    Ss   16:42   0:01 /usr/bin/bash
vboxuser    6795  0.2  3.5 2906444 345464 ?      Sl   16:42   0:15 /usr/bin/nautilus --gapplication-service
vboxuser    6840  0.0  0.0 387028  9552 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-recent --spawner :1.17 /org/gtk/gvfs/exec_spaw/1
vboxuser    6841  0.0  0.1 387316  9760 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-network --spawner :1.17 /org/gtk/gvfs/exec_spaw/2
vboxuser    6854  0.0  0.1 388412 10020 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-dnssd --spawner :1.17 /org/gtk/gvfs/exec_spaw/3
vboxuser    6860  0.0  0.0 386696  9608 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-wsdd --spawner :1.17 /org/gtk/gvfs/exec_spaw/4
vboxuser    6865  0.0  0.3  44824 33632 ?        S    16:42   0:00 python3 /usr/bin/wsdd --no-host --discovery --listen /run/user/1000/gvfsd/wsdd
vboxuser    7212 30.4  8.8 12348384 856780 ?     Sl   17:10  28:41 /snap/firefox/9171/usr/lib/firefox/firefox
vboxuser    7289  0.0  0.0 149264  3104 ?        Sl   17:10   0:00 /snap/firefox/9171/usr/lib/firefox/crashhelper 7212 9 /tmp/ 11 20261102221755
vboxuser    7353  0.0  0.7 212124 70788 ?        S    17:10   0:00 /usr/bin/Xwayland :2 -rootless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.RADVY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
vboxuser    7358  0.0  0.1 251364 13876 ?        Ssl  17:10   0:00 /usr/libexec/gsd-xsettings
vboxuser    7364  0.0  1.2 1717896 118564 ?      Sl   17:10   0:00 /usr/libexec/mutter-x11-frames
vboxuser    7433  0.0  0.7 374024 72540 ?        Sl   17:10   0:00 /usr/libexec/ibus-x11
vboxuser    7435  0.0  0.3 466892 34796 ?        S    17:10   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -ipcHandle 0 -signalPipe 1 -initialChannelId {97775e87-adca-4bb0-9f10-98a3d1b76707} -parentPid 7212 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 1 forkserver
vboxuser    7443  0.0  0.4 479136 39752 ?        Sl   17:10   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -parentBuildID 20261102221755 -prefsHandle 0:36169 -prefMapHandle 1:300750 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {a4c74e2c-3751-41f2-a08a-641138325e99} -parentPid 7212 -crashHelperPid 7289 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9171/usr/lib/firefox/browser 2 socket
vboxuser    7474  0.4  1.9 2724092 183072 ?      Sl   17:10   0:25 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:36294 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {5905162d-edfc-4607-a5b3-8cddcb15e308} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 3 tab
vboxuser    7483  0.0  0.6 664680 59340 ?        Sl   17:10   0:01 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -parentBuildID 20261102221755 -prefsHandle 0:36294 -prefMapHandle 1:300750 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {50de58c4-88a2-44c9-ad80-f7807eef0e87} -parentPid 7212 -crashHelperPid 7289 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9171/usr/lib/firefox/browser 4 rdd
vboxuser    7528  0.0  0.2 2024884 28520 ?       Sl   17:10   0:01 /usr/bin/snap userd
vboxuser    7690  0.0  1.2 2663096 116556 ?      Sl   17:10   0:04 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:36414 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {1048ce58-9c02-4db2-a9a1-50746c79a6e6} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 5 tab
vboxuser    8021  0.0  0.6 643084 57880 ?        Sl   17:10   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -parentBuildID 20261102221755 -sandboxingKind 0 -prefsHandle 0:54566 -prefMapHandle 1:300750 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {56c996b3-befb-4998-9679-52a57f5d41e4} -parentPid 7212 -crashHelperPid 7289 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9171/usr/lib/firefox/browser 6 utility
vboxuser    9121 14.2 11.4 25122716 1106604 ?    Sl   17:34  10:03 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51375 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {2f502f78-1d18-42d0-8efd-6a7104046b31} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 12 tab
vboxuser    9164  0.8  1.2 2710812 120432 ?      Sl   17:34   0:36 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51375 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {ff56c406-2035-43f6-831e-6a7effb57568} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 13 tab
vboxuser   10815  0.0  0.0  10500  7000 ?        S    18:04   0:00 /usr/bin/ssh-agent -D -a /run/user/1000/gcr/.ssh
vboxuser   11474 16.1  5.5 3201092 530516 ?      Sl   18:25   3:10 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51668 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {786bd663-35a8-4c59-9136-480a89bc92f3} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 22 tab
vboxuser   11815  0.0  0.7 2607448 74472 ?       Sl   18:28   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51667 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {8efe9077-23f7-4fc5-a4d5-8095ee955aec} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 26 tab
vboxuser   11869  0.0  0.7 2607448 74688 ?       Sl   18:29   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51667 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {0563eb8a-1199-433f-9372-6d7b8703a492} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 27 tab
vboxuser   12080  0.3  0.7 3262760 70496 ?       Sl   18:40   0:00 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
vboxuser   12204  0.0  0.7 2607464 74000 ?       Sl   18:41   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51667 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {1de24de2-6887-4491-b1d3-cfa0729f0c3f} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 28 tab
vboxuser   12344  700  0.0  10036  5000 pts/0    R+   18:44   0:00 ps aux
vboxuser   12345  0.0  0.0   6716  2656 pts/0    S+   18:44   0:00 grep --color=auto vboxuser
vboxuser@Ubuntu:~/ICT_WiSe26-27/Lecture_5$ ps aux | grep 'vboxuser'
vboxuser    5530  0.0  0.1  23700 14968 ?        Ss   16:41   0:01 /usr/lib/systemd/systemd --user
vboxuser    5532  0.0  0.0  23456  4168 ?        S    16:41   0:00 (sd-pam)
vboxuser    5552  0.0  0.0  10284  7112 ?        Rs   16:41   0:04 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
vboxuser    5553  0.0  0.1 103232 12764 ?        Ssl  16:41   0:02 /usr/bin/pipewire
vboxuser    5555  0.0  0.1 183248 11320 ?        SLsl 16:41   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
vboxuser    5556  0.0  0.0   7560  4064 ?        Ss   16:41   0:00 /usr/bin/mpris-proxy
vboxuser    5559  0.0  0.2 487696 22664 ?        Ssl  16:41   0:00 /usr/bin/wireplumber
vboxuser    5562  0.0  0.0  84812  5816 ?        Ssl  16:41   0:00 /usr/bin/pipewire -c filter-chain.conf
vboxuser    5563  0.0  0.1 176412 12716 ?        Ssl  16:41   0:00 /usr/bin/pipewire-pulse
vboxuser    5592  0.0  0.0 168196  6864 tty3     Ssl+ 16:41   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
vboxuser    5616  0.0  0.0 175212  9428 tty3     Sl+  16:41   0:00 /usr/libexec/gnome-session-init-worker ubuntu
vboxuser    5728  0.0  0.0 310560  8520 ?        Ssl  16:42   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
vboxuser    5729  0.0  0.0  87208  5976 ?        Ssl  16:42   0:00 /usr/libexec/gnome-session-ctl --monitor
vboxuser    5730  0.0  0.0  10484  6768 ?        Ss   16:42   0:00 /usr/bin/ssh-agent -D
vboxuser    5742  0.0  0.0 313036  9120 ?        Ssl  16:42   0:00 /usr/libexec/gvfsd
vboxuser    5748  0.0  0.0 324640  7924 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
vboxuser    5751  0.0  0.1 539592 11700 ?        Ssl  16:42   0:00 /usr/libexec/gnome-session-service --session=ubuntu
vboxuser    5763 20.6  3.9 6149076 385152 ?      Rsl  16:42  25:47 /usr/bin/gnome-shell --mode=ubuntu
vboxuser    5795  0.0  0.0 381124  8196 ?        Ssl  16:42   0:00 /usr/libexec/at-spi-bus-launcher
vboxuser    5802  0.0  0.0   8744  5340 ?        S    16:42   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
vboxuser    5804  0.0  0.0 168688  7832 ?        Sl   16:42   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
vboxuser    5822  0.0  0.0 307364  7000 ?        Ssl  16:42   0:00 /usr/libexec/xdg-permission-store
vboxuser    5824  0.0  0.2 658664 19764 ?        Sl   16:42   0:00 /usr/libexec/gnome-shell-calendar-server
vboxuser    5834  0.0  0.4 894896 46604 ?        Ssl  16:42   0:00 /usr/libexec/evolution-source-registry
vboxuser    5850  0.0  0.3 466816 32140 ?        Sl   16:42   0:00 /usr/libexec/goa-daemon
vboxuser    5852  0.0  0.3 2665800 32828 ?       Sl   16:42   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
vboxuser    5858  0.2  0.1 385616 11880 ?        Ssl  16:42   0:17 /usr/bin/ibus-daemon --panel disable
vboxuser    5863  0.0  0.1 253792 10540 ?        Ssl  16:42   0:00 /usr/libexec/gsd-a11y-settings
vboxuser    5872  0.0  0.1 251624 10452 ?        Ssl  16:42   0:00 /usr/libexec/gsd-color
vboxuser    5873  0.0  0.1 260160 12756 ?        Ssl  16:42   0:00 /usr/libexec/gsd-datetime
vboxuser    5874  0.0  0.1 390768 10932 ?        Ssl  16:42   0:00 /usr/libexec/gsd-housekeeping
vboxuser    5878  0.0  0.0 383124  8080 ?        Ssl  16:42   0:00 /usr/libexec/gsd-keyboard
vboxuser    5883  0.0  0.1 691008 14884 ?        Ssl  16:42   0:00 /usr/libexec/gsd-media-keys
vboxuser    5886  0.0  0.1 540924 11644 ?        Ssl  16:42   0:00 /usr/libexec/gsd-power
vboxuser    5891  0.0  0.1 327572 14372 ?        Ssl  16:42   0:00 /usr/libexec/gsd-print-notifications
vboxuser    5903  0.0  0.0 456924  8228 ?        Ssl  16:42   0:00 /usr/libexec/gsd-rfkill
vboxuser    5908  0.0  0.0 169832  7536 ?        Ssl  16:42   0:00 /usr/libexec/gsd-screensaver-proxy
vboxuser    5915  0.0  0.1 467388 13100 ?        Ssl  16:42   0:00 /usr/libexec/gsd-sharing
vboxuser    5918  0.0  0.3 715808 34884 ?        Sl   16:42   0:00 /usr/bin/update-notifier
vboxuser    5919  0.0  0.1 385700 10024 ?        Ssl  16:42   0:00 /usr/libexec/gsd-smartcard
vboxuser    5921  0.0  0.1 387944 10528 ?        Sl   16:42   0:00 /usr/libexec/goa-identity-service
vboxuser    5929  0.0  0.1 254940 10804 ?        Ssl  16:42   0:00 /usr/libexec/gsd-sound
vboxuser    5936  0.0  0.1 611472 10148 ?        Ssl  16:42   0:00 /usr/libexec/gsd-usb-protection
vboxuser    5940  0.0  0.6 840316 65164 ?        Sl   16:42   0:00 /usr/libexec/evolution-data-server/evolution-alarm-notify
vboxuser    5950  0.0  0.1 390408 10856 ?        Ssl  16:42   0:00 /usr/libexec/gsd-wwan
vboxuser    5967  0.0  0.0 312176  9608 ?        Sl   16:42   0:00 /usr/libexec/gsd-disk-utility-notify
vboxuser    6037  0.0  0.0 243000  8232 ?        Sl   16:42   0:00 /usr/libexec/ibus-dconf
vboxuser    6039  0.0  0.3 498396 36004 ?        Sl   16:42   0:04 /usr/libexec/ibus-extension-gtk3
vboxuser    6042  0.0  0.3 2731388 32856 ?       Sl   16:42   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
vboxuser    6045  0.0  0.0 308500  8072 ?        Sl   16:42   0:00 /usr/libexec/ibus-portal
vboxuser    6059  0.0  0.1 399484 12520 ?        Sl   16:42   0:00 /usr/libexec/gsd-printer
vboxuser    6119  0.0  0.2 893408 26904 ?        Ssl  16:42   0:00 /usr/libexec/evolution-calendar-factory
vboxuser    6122  0.0  0.2 729256 23632 ?        SNsl 16:42   0:00 /usr/libexec/localsearch-3
vboxuser    6126  0.0  0.2 629176 21068 ?        Ssl  16:42   0:01 /usr/libexec/xdg-desktop-portal
vboxuser    6151  0.0  0.1 386944 11148 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
vboxuser    6152  0.0  0.0 621556  7932 ?        Ssl  16:42   0:00 /usr/libexec/xdg-document-portal
vboxuser    6166  0.0  0.3 826068 32120 ?        Ssl  16:42   0:00 /usr/libexec/evolution-addressbook-factory
vboxuser    6174  0.0  0.4 696012 46092 ?        Ssl  16:42   0:00 /usr/libexec/xdg-desktop-portal-gnome
vboxuser    6175  0.0  0.0 389884  9544 ?        Ssl  16:42   0:01 /usr/libexec/gvfs-afc-volume-monitor
vboxuser    6187  0.0  0.0 307832  7404 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-goa-volume-monitor
vboxuser    6198  0.0  0.0 307880  7524 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-mtp-volume-monitor
vboxuser    6208  0.0  0.0 308848  8016 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
vboxuser    6221  0.0  0.0 169176  8184 ?        Sl   16:42   0:06 /usr/libexec/ibus-engine-simple
vboxuser    6354  0.0  0.0 168888  7428 ?        Ssl  16:42   0:00 /usr/libexec/gvfsd-metadata
vboxuser    6374  0.0  0.0 165344  6704 ?        Ssl  16:42   0:00 /usr/libexec/dconf-service
vboxuser    6465  0.0  0.1 534376 10112 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
vboxuser    6631  0.0  0.2 490712 27656 ?        Ssl  16:42   0:00 /usr/libexec/xdg-desktop-portal-gtk
vboxuser    6700  0.9  2.3 2688804 222908 ?      Sl   16:42   1:13 /usr/bin/ptyxis --gapplication-service
vboxuser    6707  0.0  0.0 239996  7988 ?        Ssl  16:42   0:03 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
vboxuser    6742  0.0  0.0   9612  6764 pts/0    Ss   16:42   0:01 /usr/bin/bash
vboxuser    6795  0.2  3.5 2906444 345464 ?      Sl   16:42   0:15 /usr/bin/nautilus --gapplication-service
vboxuser    6840  0.0  0.0 387028  9552 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-recent --spawner :1.17 /org/gtk/gvfs/exec_spaw/1
vboxuser    6841  0.0  0.1 387316  9760 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-network --spawner :1.17 /org/gtk/gvfs/exec_spaw/2
vboxuser    6854  0.0  0.1 388412 10020 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-dnssd --spawner :1.17 /org/gtk/gvfs/exec_spaw/3
vboxuser    6860  0.0  0.0 386696  9608 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-wsdd --spawner :1.17 /org/gtk/gvfs/exec_spaw/4
vboxuser    6865  0.0  0.3  44824 33632 ?        S    16:42   0:00 python3 /usr/bin/wsdd --no-host --discovery --listen /run/user/1000/gvfsd/wsdd
vboxuser    7212 30.0  8.9 12348396 857256 ?     Sl   17:10  28:57 /snap/firefox/9171/usr/lib/firefox/firefox
vboxuser    7289  0.0  0.0 149264  3104 ?        Sl   17:10   0:00 /snap/firefox/9171/usr/lib/firefox/crashhelper 7212 9 /tmp/ 11 20261102221755
vboxuser    7353  0.0  0.7 212124 70788 ?        S    17:10   0:00 /usr/bin/Xwayland :2 -rootless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.RADVY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
vboxuser    7358  0.0  0.1 251364 13876 ?        Ssl  17:10   0:00 /usr/libexec/gsd-xsettings
vboxuser    7364  0.0  1.2 1717896 118564 ?      Sl   17:10   0:00 /usr/libexec/mutter-x11-frames
vboxuser    7433  0.0  0.7 374024 72540 ?        Sl   17:10   0:00 /usr/libexec/ibus-x11
vboxuser    7435  0.0  0.3 466892 34796 ?        S    17:10   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -ipcHandle 0 -signalPipe 1 -initialChannelId {97775e87-adca-4bb0-9f10-98a3d1b76707} -parentPid 7212 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 1 forkserver
vboxuser    7443  0.0  0.4 479136 39752 ?        Sl   17:10   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -parentBuildID 20261102221755 -prefsHandle 0:36169 -prefMapHandle 1:300750 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {a4c74e2c-3751-41f2-a08a-641138325e99} -parentPid 7212 -crashHelperPid 7289 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9171/usr/lib/firefox/browser 2 socket
vboxuser    7474  0.4  1.9 2725116 183800 ?      Sl   17:10   0:26 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:36294 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {5905162d-edfc-4607-a5b3-8cddcb15e308} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 3 tab
vboxuser    7483  0.0  0.6 664680 59340 ?        Sl   17:10   0:01 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -parentBuildID 20261102221755 -prefsHandle 0:36294 -prefMapHandle 1:300750 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {50de58c4-88a2-44c9-ad80-f7807eef0e87} -parentPid 7212 -crashHelperPid 7289 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9171/usr/lib/firefox/browser 4 rdd
vboxuser    7528  0.0  0.2 2024884 28520 ?       Sl   17:10   0:01 /usr/bin/snap userd
vboxuser    7690  0.0  1.2 2663096 116556 ?      Sl   17:10   0:04 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:36414 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {1048ce58-9c02-4db2-a9a1-50746c79a6e6} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 5 tab
vboxuser    8021  0.0  0.6 643084 57880 ?        Sl   17:10   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -parentBuildID 20261102221755 -sandboxingKind 0 -prefsHandle 0:54566 -prefMapHandle 1:300750 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {56c996b3-befb-4998-9679-52a57f5d41e4} -parentPid 7212 -crashHelperPid 7289 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9171/usr/lib/firefox/browser 6 utility
vboxuser    9121 14.0 11.5 25122732 1110044 ?    Sl   17:34  10:11 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51375 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {2f502f78-1d18-42d0-8efd-6a7104046b31} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 12 tab
vboxuser    9164  0.8  1.2 2710812 120432 ?      Sl   17:34   0:37 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51375 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {ff56c406-2035-43f6-831e-6a7effb57568} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 13 tab
vboxuser   10815  0.0  0.0  10500  7000 ?        S    18:04   0:00 /usr/bin/ssh-agent -D -a /run/user/1000/gcr/.ssh
vboxuser   11474 15.2  5.5 3201092 532048 ?      Sl   18:25   3:17 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51668 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {786bd663-35a8-4c59-9136-480a89bc92f3} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 22 tab
vboxuser   11815  0.0  0.7 2607448 74472 ?       Sl   18:28   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51667 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {8efe9077-23f7-4fc5-a4d5-8095ee955aec} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 26 tab
vboxuser   11869  0.0  0.7 2607448 74688 ?       Sl   18:29   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51667 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {0563eb8a-1199-433f-9372-6d7b8703a492} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 27 tab
vboxuser   12080  0.2  0.7 3262760 70496 ?       Sl   18:40   0:00 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
vboxuser   12204  0.0  0.7 2607464 74000 ?       Sl   18:41   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51667 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {1de24de2-6887-4491-b1d3-cfa0729f0c3f} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 28 tab
vboxuser   12367  400  0.0  10036  4972 pts/0    R+   18:46   0:00 ps aux
vboxuser   12368  0.0  0.0   6716  2704 pts/0    S+   18:46   0:00 grep --color=auto vboxuser

```

## 2. Show only processes running as vboxuser
```bash
vboxuser@Ubuntu:~/ICT_WiSe26-27/Lecture_5$ ps aux | grep "^vboxuser"
vboxuser    5530  0.0  0.1  23700 14968 ?        Ss   16:41   0:01 /usr/lib/systemd/systemd --user
vboxuser    5532  0.0  0.0  23456  4168 ?        S    16:41   0:00 (sd-pam)
vboxuser    5552  0.0  0.0  10284  7116 ?        Rs   16:41   0:04 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
vboxuser    5553  0.0  0.1 110172 12964 ?        Ssl  16:41   0:03 /usr/bin/pipewire
vboxuser    5555  0.0  0.1 183248 11320 ?        SLsl 16:41   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
vboxuser    5556  0.0  0.0   7560  4064 ?        Ss   16:41   0:00 /usr/bin/mpris-proxy
vboxuser    5559  0.0  0.2 487696 22664 ?        Ssl  16:41   0:01 /usr/bin/wireplumber
vboxuser    5562  0.0  0.0  84812  5816 ?        Ssl  16:41   0:00 /usr/bin/pipewire -c filter-chain.conf
vboxuser    5563  0.0  0.1 177948 12844 ?        Ssl  16:41   0:00 /usr/bin/pipewire-pulse
vboxuser    5592  0.0  0.0 168196  6864 tty3     Ssl+ 16:41   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
vboxuser    5616  0.0  0.0 175212  9428 tty3     Sl+  16:41   0:00 /usr/libexec/gnome-session-init-worker ubuntu
vboxuser    5728  0.0  0.0 310560  8520 ?        Ssl  16:42   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
vboxuser    5729  0.0  0.0  87208  5976 ?        Ssl  16:42   0:00 /usr/libexec/gnome-session-ctl --monitor
vboxuser    5730  0.0  0.0  10484  6768 ?        Ss   16:42   0:00 /usr/bin/ssh-agent -D
vboxuser    5742  0.0  0.0 313036  9120 ?        Ssl  16:42   0:00 /usr/libexec/gvfsd
vboxuser    5748  0.0  0.0 324640  7924 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
vboxuser    5751  0.0  0.1 539592 11700 ?        Ssl  16:42   0:00 /usr/libexec/gnome-session-service --session=ubuntu
vboxuser    5763 20.7  4.0 6160420 389252 ?      Rsl  16:42  28:45 /usr/bin/gnome-shell --mode=ubuntu
vboxuser    5795  0.0  0.0 381124  8196 ?        Ssl  16:42   0:00 /usr/libexec/at-spi-bus-launcher
vboxuser    5802  0.0  0.0   8744  5344 ?        S    16:42   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
vboxuser    5804  0.0  0.0 168688  7832 ?        Sl   16:42   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
vboxuser    5822  0.0  0.0 307364  7000 ?        Ssl  16:42   0:00 /usr/libexec/xdg-permission-store
vboxuser    5824  0.0  0.2 658664 19764 ?        Sl   16:42   0:00 /usr/libexec/gnome-shell-calendar-server
vboxuser    5834  0.0  0.4 894896 46604 ?        Ssl  16:42   0:00 /usr/libexec/evolution-source-registry
vboxuser    5850  0.0  0.3 466816 32140 ?        Sl   16:42   0:00 /usr/libexec/goa-daemon
vboxuser    5852  0.0  0.3 2665800 32828 ?       Sl   16:42   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
vboxuser    5858  0.2  0.1 385616 11880 ?        Ssl  16:42   0:21 /usr/bin/ibus-daemon --panel disable
vboxuser    5863  0.0  0.1 253792 10540 ?        Ssl  16:42   0:00 /usr/libexec/gsd-a11y-settings
vboxuser    5872  0.0  0.1 251624 10452 ?        Ssl  16:42   0:00 /usr/libexec/gsd-color
vboxuser    5873  0.0  0.1 260160 12756 ?        Ssl  16:42   0:00 /usr/libexec/gsd-datetime
vboxuser    5874  0.0  0.1 390768 10932 ?        Ssl  16:42   0:00 /usr/libexec/gsd-housekeeping
vboxuser    5878  0.0  0.0 383124  8080 ?        Ssl  16:42   0:00 /usr/libexec/gsd-keyboard
vboxuser    5883  0.0  0.1 691008 14884 ?        Ssl  16:42   0:00 /usr/libexec/gsd-media-keys
vboxuser    5886  0.0  0.1 540924 11644 ?        Ssl  16:42   0:00 /usr/libexec/gsd-power
vboxuser    5891  0.0  0.1 327572 14372 ?        Ssl  16:42   0:00 /usr/libexec/gsd-print-notifications
vboxuser    5903  0.0  0.0 456924  8228 ?        Ssl  16:42   0:00 /usr/libexec/gsd-rfkill
vboxuser    5908  0.0  0.0 169832  7536 ?        Ssl  16:42   0:00 /usr/libexec/gsd-screensaver-proxy
vboxuser    5915  0.0  0.1 467388 13100 ?        Ssl  16:42   0:00 /usr/libexec/gsd-sharing
vboxuser    5918  0.0  0.3 715808 34888 ?        Sl   16:42   0:00 /usr/bin/update-notifier
vboxuser    5919  0.0  0.1 385700 10024 ?        Ssl  16:42   0:00 /usr/libexec/gsd-smartcard
vboxuser    5921  0.0  0.1 387944 10528 ?        Sl   16:42   0:00 /usr/libexec/goa-identity-service
vboxuser    5929  0.0  0.1 254940 10804 ?        Ssl  16:42   0:00 /usr/libexec/gsd-sound
vboxuser    5936  0.0  0.1 611472 10148 ?        Ssl  16:42   0:00 /usr/libexec/gsd-usb-protection
vboxuser    5940  0.0  0.6 840316 65164 ?        Sl   16:42   0:00 /usr/libexec/evolution-data-server/evolution-alarm-notify
vboxuser    5950  0.0  0.1 390408 10856 ?        Ssl  16:42   0:00 /usr/libexec/gsd-wwan
vboxuser    5967  0.0  0.0 312176  9608 ?        Sl   16:42   0:00 /usr/libexec/gsd-disk-utility-notify
vboxuser    6037  0.0  0.0 243000  8232 ?        Sl   16:42   0:00 /usr/libexec/ibus-dconf
vboxuser    6039  0.0  0.3 498396 36004 ?        Sl   16:42   0:04 /usr/libexec/ibus-extension-gtk3
vboxuser    6042  0.0  0.3 2731388 32856 ?       Sl   16:42   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
vboxuser    6045  0.0  0.0 308500  8072 ?        Sl   16:42   0:00 /usr/libexec/ibus-portal
vboxuser    6059  0.0  0.1 399484 12520 ?        Sl   16:42   0:00 /usr/libexec/gsd-printer
vboxuser    6119  0.0  0.2 893408 26904 ?        Ssl  16:42   0:00 /usr/libexec/evolution-calendar-factory
vboxuser    6122  0.0  0.2 729256 23632 ?        SNsl 16:42   0:00 /usr/libexec/localsearch-3
vboxuser    6126  0.0  0.2 629176 21112 ?        Ssl  16:42   0:01 /usr/libexec/xdg-desktop-portal
vboxuser    6151  0.0  0.1 386944 11148 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
vboxuser    6152  0.0  0.0 621556  7932 ?        Ssl  16:42   0:00 /usr/libexec/xdg-document-portal
vboxuser    6166  0.0  0.3 826068 32120 ?        Ssl  16:42   0:00 /usr/libexec/evolution-addressbook-factory
vboxuser    6174  0.0  0.4 696012 46092 ?        Ssl  16:42   0:00 /usr/libexec/xdg-desktop-portal-gnome
vboxuser    6175  0.0  0.0 389884  9544 ?        Ssl  16:42   0:01 /usr/libexec/gvfs-afc-volume-monitor
vboxuser    6187  0.0  0.0 307832  7404 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-goa-volume-monitor
vboxuser    6198  0.0  0.0 307880  7524 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-mtp-volume-monitor
vboxuser    6208  0.0  0.0 308848  8016 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
vboxuser    6221  0.0  0.0 169304  8188 ?        Sl   16:42   0:07 /usr/libexec/ibus-engine-simple
vboxuser    6354  0.0  0.0 168888  7428 ?        Ssl  16:42   0:00 /usr/libexec/gvfsd-metadata
vboxuser    6374  0.0  0.0 165344  6704 ?        Ssl  16:42   0:00 /usr/libexec/dconf-service
vboxuser    6465  0.0  0.1 534376 10112 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
vboxuser    6631  0.0  0.2 490712 27656 ?        Ssl  16:42   0:00 /usr/libexec/xdg-desktop-portal-gtk
vboxuser    6700  1.5  2.2 2679020 213104 ?      Sl   16:42   2:10 /usr/bin/ptyxis --gapplication-service
vboxuser    6707  0.0  0.0 239996  7988 ?        Ssl  16:42   0:04 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
vboxuser    6742  0.0  0.0   9612  6772 pts/0    Ss   16:42   0:01 /usr/bin/bash
vboxuser    6795  0.2  3.6 2910540 349708 ?      Sl   16:42   0:18 /usr/bin/nautilus --gapplication-service
vboxuser    6840  0.0  0.0 387028  9552 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-recent --spawner :1.17 /org/gtk/gvfs/exec_spaw/1
vboxuser    6841  0.0  0.1 387316  9760 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-network --spawner :1.17 /org/gtk/gvfs/exec_spaw/2
vboxuser    6854  0.0  0.1 388412 10020 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-dnssd --spawner :1.17 /org/gtk/gvfs/exec_spaw/3
vboxuser    6860  0.0  0.0 386696  9608 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-wsdd --spawner :1.17 /org/gtk/gvfs/exec_spaw/4
vboxuser    6865  0.0  0.3  44824 33632 ?        S    16:42   0:00 python3 /usr/bin/wsdd --no-host --discovery --listen /run/user/1000/gvfsd/wsdd
vboxuser    7212 27.8  9.1 12348348 877712 ?     Sl   17:10  30:36 /snap/firefox/9171/usr/lib/firefox/firefox
vboxuser    7289  0.0  0.0 149264  3104 ?        Sl   17:10   0:00 /snap/firefox/9171/usr/lib/firefox/crashhelper 7212 9 /tmp/ 11 20261102221755
vboxuser    7353  0.0  0.7 212124 70788 ?        S    17:10   0:00 /usr/bin/Xwayland :2 -rootless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.RADVY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
vboxuser    7358  0.0  0.1 251364 13876 ?        Ssl  17:10   0:00 /usr/libexec/gsd-xsettings
vboxuser    7364  0.0  1.2 1717896 118564 ?      Sl   17:10   0:00 /usr/libexec/mutter-x11-frames
vboxuser    7433  0.0  0.7 374024 72540 ?        Sl   17:10   0:00 /usr/libexec/ibus-x11
vboxuser    7435  0.0  0.3 466892 34796 ?        S    17:10   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -ipcHandle 0 -signalPipe 1 -initialChannelId {97775e87-adca-4bb0-9f10-98a3d1b76707} -parentPid 7212 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 1 forkserver
vboxuser    7443  0.0  0.4 479136 39756 ?        Sl   17:10   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -parentBuildID 20261102221755 -prefsHandle 0:36169 -prefMapHandle 1:300750 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {a4c74e2c-3751-41f2-a08a-641138325e99} -parentPid 7212 -crashHelperPid 7289 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9171/usr/lib/firefox/browser 2 socket
vboxuser    7474  0.4  1.9 2726140 185480 ?      Sl   17:10   0:29 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:36294 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {5905162d-edfc-4607-a5b3-8cddcb15e308} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 3 tab
vboxuser    7483  0.0  0.6 664680 59340 ?        Sl   17:10   0:01 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -parentBuildID 20261102221755 -prefsHandle 0:36294 -prefMapHandle 1:300750 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {50de58c4-88a2-44c9-ad80-f7807eef0e87} -parentPid 7212 -crashHelperPid 7289 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9171/usr/lib/firefox/browser 4 rdd
vboxuser    7528  0.0  0.2 2024884 28528 ?       Sl   17:10   0:01 /usr/bin/snap userd
vboxuser    7690  0.0  1.2 2663096 116556 ?      Sl   17:10   0:04 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:36414 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {1048ce58-9c02-4db2-a9a1-50746c79a6e6} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 5 tab
vboxuser    8021  0.0  0.6 643084 57880 ?        Sl   17:10   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -parentBuildID 20261102221755 -sandboxingKind 0 -prefsHandle 0:54566 -prefMapHandle 1:300750 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {56c996b3-befb-4998-9679-52a57f5d41e4} -parentPid 7212 -crashHelperPid 7289 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9171/usr/lib/firefox/browser 6 utility
vboxuser    9121 12.8 11.5 25122732 1111840 ?    Sl   17:34  11:04 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51375 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {2f502f78-1d18-42d0-8efd-6a7104046b31} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 12 tab
vboxuser    9164  0.8  1.2 2710812 120996 ?      Sl   17:34   0:43 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51375 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {ff56c406-2035-43f6-831e-6a7effb57568} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 13 tab
vboxuser   10815  0.0  0.0  10500  7000 ?        S    18:04   0:00 /usr/bin/ssh-agent -D -a /run/user/1000/gcr/.ssh
vboxuser   11474 11.5  5.5 3201076 531808 ?      Sl   18:25   4:03 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51668 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {786bd663-35a8-4c59-9136-480a89bc92f3} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 22 tab
vboxuser   11815  0.0  0.7 2607448 74472 ?       Sl   18:28   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51667 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {8efe9077-23f7-4fc5-a4d5-8095ee955aec} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 26 tab
vboxuser   11869  0.0  0.7 2607448 74688 ?       Sl   18:29   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51667 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {0563eb8a-1199-433f-9372-6d7b8703a492} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 27 tab
vboxuser   12080  0.0  0.7 3262760 70376 ?       Sl   18:40   0:01 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
vboxuser   12204  0.0  0.7 2607448 74060 ?       Sl   18:41   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51667 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {1de24de2-6887-4491-b1d3-cfa0729f0c3f} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 28 tab
vboxuser   12481  1.3  2.2 2427720 215644 ?      Sl   18:53   0:05 /usr/bin/gnome-text-editor --gapplication-service
vboxuser   12741  300  0.0  10036  5000 pts/0    R+   19:00   0:00 ps aux
vboxuser   12742  0.0  0.0   6716  2688 pts/0    S+   19:00   0:00 grep --color=auto ^vboxuser
```

## 3. Show all processes except root
```bash
vboxuser@Ubuntu:~/ICT_WiSe26-27/Lecture_5$ ps aux | grep -v "^root"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     543  0.0  0.1  22960 15388 ?        Ss   16:39   0:02 /usr/lib/systemd/systemd-resolved
systemd+     926  0.0  0.1  21432 12384 ?        Ss   16:39   0:00 /usr/lib/systemd/systemd-networkd
avahi       1132  0.0  0.0   6836  5100 ?        Ss   16:39   0:01 avahi-daemon: running [Ubuntu.local]
message+    1137  0.1  0.0  12360  9328 ?        Ss   16:39   0:09 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd     1173  0.0  0.1 386704 12876 ?        Ssl  16:39   0:03 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
avahi       1234  0.0  0.0   6564  1652 ?        S    16:39   0:00 avahi-daemon: chroot helper
syslog      1264  0.0  0.0 220604  6296 ?        Ssl  16:39   0:01 /usr/sbin/rsyslogd -n -iNONE
_chrony     1298  0.0  0.0  20560  6328 ?        S    16:39   0:02 /usr/sbin/chronyd -n -F 1
_chrony     1346  0.0  0.0  12120  3384 ?        S    16:39   0:00 /usr/sbin/chronyd -n -F 1
cups-br+    1572  0.0  0.2 207560 23008 ?        Ssl  16:39   0:00 /usr/sbin/cups-browsed
colord      1818  0.0  0.1 317584 16560 ?        Ssl  16:39   0:00 /usr/libexec/colord
tempadm+    2635  0.0  0.1  23456 14696 ?        Ss   16:39   0:01 /usr/lib/systemd/systemd --user
tempadm+    2637  0.0  0.0  23456  4184 ?        S    16:39   0:00 (sd-pam)
tempadm+    2657  0.0  0.0  10072  6948 ?        Ss   16:39   0:01 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
tempadm+    2658  0.0  0.1 100600 11648 ?        Ssl  16:39   0:00 /usr/bin/pipewire
tempadm+    2660  0.0  0.1 183216 11024 ?        SLsl 16:39   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1001/keyring
tempadm+    2661  0.0  0.0   7560  4056 ?        Ss   16:39   0:00 /usr/bin/mpris-proxy
tempadm+    2662  0.0  0.2 482408 20744 ?        Ssl  16:39   0:00 /usr/bin/wireplumber
tempadm+    2665  0.0  0.0  84812  5880 ?        Ssl  16:39   0:00 /usr/bin/pipewire -c filter-chain.conf
tempadm+    2670  0.0  0.1 105864 11944 ?        Ssl  16:39   0:00 /usr/bin/pipewire-pulse
tempadm+    2701  0.0  0.0 168196  6708 tty2     Ssl+ 16:39   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
tempadm+    2718  0.0  0.0 175212  9336 tty2     Sl+  16:39   0:00 /usr/libexec/gnome-session-init-worker ubuntu
tempadm+    2836  0.0  0.0  97560  8116 ?        Ssl  16:39   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1001/gcr
tempadm+    2838  0.0  0.0  87208  5892 ?        Ssl  16:39   0:00 /usr/libexec/gnome-session-ctl --monitor
tempadm+    2839  0.0  0.0  10484  6796 ?        Ss   16:39   0:00 /usr/bin/ssh-agent -D
tempadm+    2852  0.0  0.0 312952  9144 ?        Ssl  16:39   0:00 /usr/libexec/gvfsd
tempadm+    2858  0.0  0.0 324640  7916 ?        Sl   16:39   0:00 /usr/libexec/gvfsd-fuse /run/user/1001/gvfs -f
tempadm+    2886  0.0  0.1 613324 11352 ?        Ssl  16:39   0:00 /usr/libexec/gnome-session-service --session=ubuntu
tempadm+    2892  0.4  3.7 6067016 358140 ?      Ssl  16:39   0:41 /usr/bin/gnome-shell --mode=ubuntu
tempadm+    2926  0.0  0.0 381116  8060 ?        Ssl  16:39   0:00 /usr/libexec/at-spi-bus-launcher
tempadm+    2933  0.0  0.0   8612  5320 ?        S    16:39   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1001/at-spi/bus
tempadm+    2935  0.0  0.0 168688  7888 ?        Sl   16:39   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
tempadm+    2952  0.0  0.0 307364  7008 ?        Ssl  16:39   0:00 /usr/libexec/xdg-permission-store
tempadm+    2954  0.0  0.2 658660 19672 ?        Sl   16:39   0:00 /usr/libexec/gnome-shell-calendar-server
tempadm+    2967  0.0  0.4 1288204 47236 ?       Ssl  16:39   0:00 /usr/libexec/evolution-source-registry
tempadm+    2970  0.0  0.0 165336  6612 ?        Ssl  16:39   0:00 /usr/libexec/dconf-service
tempadm+    2977  0.0  0.3 2730368 32768 ?       Sl   16:39   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
tempadm+    2994  0.0  0.1 459308 11840 ?        Ssl  16:39   0:00 /usr/bin/ibus-daemon --panel disable
tempadm+    2995  0.0  0.1 253788 10740 ?        Ssl  16:39   0:00 /usr/libexec/gsd-a11y-settings
tempadm+    3003  0.0  0.1 251620 10524 ?        Ssl  16:39   0:00 /usr/libexec/gsd-color
tempadm+    3004  0.0  0.1 260156 12948 ?        Ssl  16:39   0:00 /usr/libexec/gsd-datetime
tempadm+    3008  0.0  0.1 390768 10860 ?        Ssl  16:39   0:00 /usr/libexec/gsd-housekeeping
tempadm+    3009  0.0  0.0 383252  8216 ?        Ssl  16:39   0:00 /usr/libexec/gsd-keyboard
tempadm+    3011  0.0  0.1 559936 14740 ?        Ssl  16:39   0:00 /usr/libexec/gsd-media-keys
tempadm+    3015  0.0  0.1 475388 11888 ?        Ssl  16:39   0:00 /usr/libexec/gsd-power
tempadm+    3025  0.0  0.1 327572 14660 ?        Ssl  16:39   0:00 /usr/libexec/gsd-print-notifications
tempadm+    3026  0.0  0.0 456924  8308 ?        Ssl  16:39   0:00 /usr/libexec/gsd-rfkill
tempadm+    3033  0.0  0.0 169832  7676 ?        Ssl  16:39   0:00 /usr/libexec/gsd-screensaver-proxy
tempadm+    3038  0.0  0.1 467388 12976 ?        Ssl  16:39   0:00 /usr/libexec/gsd-sharing
tempadm+    3039  0.0  0.1 467624  9836 ?        Ssl  16:39   0:00 /usr/libexec/gsd-smartcard
tempadm+    3040  0.0  0.1 254964 11536 ?        Ssl  16:39   0:00 /usr/libexec/gsd-sound
tempadm+    3042  0.0  0.3 716176 35432 ?        Sl   16:39   0:00 /usr/bin/update-notifier
tempadm+    3043  0.0  0.1 414864 10224 ?        Ssl  16:39   0:00 /usr/libexec/gsd-usb-protection
tempadm+    3044  0.0  0.1 390404 10780 ?        Ssl  16:39   0:00 /usr/libexec/gsd-wwan
tempadm+    3047  0.0  0.6 840316 65172 ?        Sl   16:39   0:00 /usr/libexec/evolution-data-server/evolution-alarm-notify
tempadm+    3066  0.0  0.1 312176  9644 ?        Sl   16:39   0:00 /usr/libexec/gsd-disk-utility-notify
tempadm+    3172  0.0  0.1 399484 12572 ?        Sl   16:39   0:00 /usr/libexec/gsd-printer
tempadm+    3198  0.0  0.3 2732412 32752 ?       Sl   16:39   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
tempadm+    3230  0.0  0.1 386940 11056 ?        Ssl  16:39   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
tempadm+    3233  0.0  0.3 466816 32028 ?        Sl   16:39   0:00 /usr/libexec/goa-daemon
tempadm+    3245  0.0  0.0 242996  8256 ?        Sl   16:39   0:00 /usr/libexec/ibus-dconf
tempadm+    3246  0.0  0.3 498396 35852 ?        Sl   16:39   0:03 /usr/libexec/ibus-extension-gtk3
tempadm+    3253  0.0  0.0 308500  8160 ?        Sl   16:39   0:00 /usr/libexec/ibus-portal
tempadm+    3256  0.0  0.2 726892 24832 ?        SNsl 16:39   0:01 /usr/libexec/localsearch-3
tempadm+    3281  0.0  0.1 387944 10384 ?        Sl   16:39   0:00 /usr/libexec/goa-identity-service
tempadm+    3287  0.0  0.2 703040 20664 ?        Ssl  16:39   0:00 /usr/libexec/xdg-desktop-portal
tempadm+    3288  0.0  0.2 893412 27324 ?        Ssl  16:39   0:00 /usr/libexec/evolution-calendar-factory
tempadm+    3289  0.0  0.1 389884  9700 ?        Ssl  16:39   0:01 /usr/libexec/gvfs-afc-volume-monitor
tempadm+    3303  0.0  0.0 687092  7916 ?        Ssl  16:39   0:00 /usr/libexec/xdg-document-portal
tempadm+    3314  0.0  0.0 307832  7412 ?        Ssl  16:39   0:00 /usr/libexec/gvfs-goa-volume-monitor
tempadm+    3322  0.0  0.4 892788 46204 ?        Ssl  16:39   0:00 /usr/libexec/xdg-desktop-portal-gnome
tempadm+    3327  0.0  0.0 307880  7444 ?        Ssl  16:39   0:00 /usr/libexec/gvfs-mtp-volume-monitor
tempadm+    3335  0.0  0.0 308848  7992 ?        Ssl  16:39   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
tempadm+    3345  0.0  0.3 826064 31804 ?        Ssl  16:39   0:00 /usr/libexec/evolution-addressbook-factory
tempadm+    3423  0.0  0.0 169176  8092 ?        Sl   16:39   0:00 /usr/libexec/ibus-engine-simple
tempadm+    3522  0.0  0.0 168888  7408 ?        Ssl  16:39   0:00 /usr/libexec/gvfsd-metadata
tempadm+    3692  0.0  0.1 534376 10080 ?        Sl   16:39   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
tempadm+    3816  0.0  0.2 490700 27656 ?        Ssl  16:39   0:00 /usr/libexec/xdg-desktop-portal-gtk
tempadm+    3947  0.0  0.0 313296  9468 ?        Sl   16:39   0:00 /usr/libexec/gvfsd-recent --spawner :1.17 /org/gtk/gvfs/exec_spaw/1
tempadm+    3948  0.0  0.1 387312  9868 ?        Sl   16:39   0:00 /usr/libexec/gvfsd-network --spawner :1.17 /org/gtk/gvfs/exec_spaw/2
tempadm+    3958  0.0  0.1 388412  9932 ?        Sl   16:39   0:00 /usr/libexec/gvfsd-dnssd --spawner :1.17 /org/gtk/gvfs/exec_spaw/3
tempadm+    3967  0.0  0.0 386696  9620 ?        Sl   16:39   0:00 /usr/libexec/gvfsd-wsdd --spawner :1.17 /org/gtk/gvfs/exec_spaw/4
tempadm+    3972  0.0  0.3  44824 33680 ?        S    16:39   0:01 python3 /usr/bin/wsdd --no-host --discovery --listen /run/user/1001/gvfsd/wsdd
uuidd       4043  0.0  0.0   8104  3480 ?        Ss   16:40   0:00 /usr/sbin/uuidd --socket-activation --cont-clock
vboxuser    5530  0.0  0.1  23700 14968 ?        Ss   16:41   0:01 /usr/lib/systemd/systemd --user
vboxuser    5532  0.0  0.0  23456  4168 ?        S    16:41   0:00 (sd-pam)
vboxuser    5552  0.0  0.0  10284  7116 ?        Ss   16:41   0:04 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
vboxuser    5553  0.0  0.1 110100 12956 ?        Ssl  16:41   0:03 /usr/bin/pipewire
vboxuser    5555  0.0  0.1 183248 11320 ?        SLsl 16:41   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
vboxuser    5556  0.0  0.0   7560  4064 ?        Ss   16:41   0:00 /usr/bin/mpris-proxy
vboxuser    5559  0.0  0.2 487696 22664 ?        Ssl  16:41   0:01 /usr/bin/wireplumber
vboxuser    5562  0.0  0.0  84812  5816 ?        Ssl  16:41   0:00 /usr/bin/pipewire -c filter-chain.conf
vboxuser    5563  0.0  0.1 177948 12844 ?        Ssl  16:41   0:00 /usr/bin/pipewire-pulse
vboxuser    5592  0.0  0.0 168196  6864 tty3     Ssl+ 16:41   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
vboxuser    5616  0.0  0.0 175212  9428 tty3     Sl+  16:41   0:00 /usr/libexec/gnome-session-init-worker ubuntu
vboxuser    5728  0.0  0.0 310560  8520 ?        Ssl  16:42   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
vboxuser    5729  0.0  0.0  87208  5976 ?        Ssl  16:42   0:00 /usr/libexec/gnome-session-ctl --monitor
vboxuser    5730  0.0  0.0  10484  6768 ?        Ss   16:42   0:00 /usr/bin/ssh-agent -D
vboxuser    5742  0.0  0.0 313036  9120 ?        Ssl  16:42   0:00 /usr/libexec/gvfsd
vboxuser    5748  0.0  0.0 324640  7924 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
vboxuser    5751  0.0  0.1 539592 11700 ?        Ssl  16:42   0:00 /usr/libexec/gnome-session-service --session=ubuntu
vboxuser    5763 20.8  4.0 6160404 389248 ?      Rsl  16:42  29:14 /usr/bin/gnome-shell --mode=ubuntu
vboxuser    5795  0.0  0.0 381124  8196 ?        Ssl  16:42   0:00 /usr/libexec/at-spi-bus-launcher
vboxuser    5802  0.0  0.0   8744  5344 ?        S    16:42   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
vboxuser    5804  0.0  0.0 168688  7832 ?        Sl   16:42   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
vboxuser    5822  0.0  0.0 307364  7000 ?        Ssl  16:42   0:00 /usr/libexec/xdg-permission-store
vboxuser    5824  0.0  0.2 658664 19764 ?        Sl   16:42   0:00 /usr/libexec/gnome-shell-calendar-server
vboxuser    5834  0.0  0.4 894896 46604 ?        Ssl  16:42   0:00 /usr/libexec/evolution-source-registry
vboxuser    5850  0.0  0.3 466816 32140 ?        Sl   16:42   0:00 /usr/libexec/goa-daemon
vboxuser    5852  0.0  0.3 2665800 32828 ?       Sl   16:42   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
vboxuser    5858  0.2  0.1 385616 11880 ?        Ssl  16:42   0:22 /usr/bin/ibus-daemon --panel disable
vboxuser    5863  0.0  0.1 253792 10540 ?        Ssl  16:42   0:00 /usr/libexec/gsd-a11y-settings
vboxuser    5872  0.0  0.1 251624 10452 ?        Ssl  16:42   0:00 /usr/libexec/gsd-color
vboxuser    5873  0.0  0.1 260160 12756 ?        Ssl  16:42   0:00 /usr/libexec/gsd-datetime
vboxuser    5874  0.0  0.1 390768 10932 ?        Ssl  16:42   0:00 /usr/libexec/gsd-housekeeping
vboxuser    5878  0.0  0.0 383124  8080 ?        Ssl  16:42   0:00 /usr/libexec/gsd-keyboard
vboxuser    5883  0.0  0.1 691008 14884 ?        Ssl  16:42   0:00 /usr/libexec/gsd-media-keys
vboxuser    5886  0.0  0.1 540924 11644 ?        Ssl  16:42   0:00 /usr/libexec/gsd-power
vboxuser    5891  0.0  0.1 327572 14372 ?        Ssl  16:42   0:00 /usr/libexec/gsd-print-notifications
vboxuser    5903  0.0  0.0 456924  8228 ?        Ssl  16:42   0:00 /usr/libexec/gsd-rfkill
vboxuser    5908  0.0  0.0 169832  7536 ?        Ssl  16:42   0:00 /usr/libexec/gsd-screensaver-proxy
vboxuser    5915  0.0  0.1 467388 13100 ?        Ssl  16:42   0:00 /usr/libexec/gsd-sharing
vboxuser    5918  0.0  0.3 715808 34888 ?        Sl   16:42   0:00 /usr/bin/update-notifier
vboxuser    5919  0.0  0.1 385700 10024 ?        Ssl  16:42   0:00 /usr/libexec/gsd-smartcard
vboxuser    5921  0.0  0.1 387944 10528 ?        Sl   16:42   0:00 /usr/libexec/goa-identity-service
vboxuser    5929  0.0  0.1 254940 10804 ?        Ssl  16:42   0:00 /usr/libexec/gsd-sound
vboxuser    5936  0.0  0.1 611472 10148 ?        Ssl  16:42   0:00 /usr/libexec/gsd-usb-protection
vboxuser    5940  0.0  0.6 840316 65164 ?        Sl   16:42   0:00 /usr/libexec/evolution-data-server/evolution-alarm-notify
vboxuser    5950  0.0  0.1 390408 10856 ?        Ssl  16:42   0:00 /usr/libexec/gsd-wwan
vboxuser    5967  0.0  0.0 312176  9608 ?        Sl   16:42   0:00 /usr/libexec/gsd-disk-utility-notify
vboxuser    6037  0.0  0.0 243000  8232 ?        Sl   16:42   0:00 /usr/libexec/ibus-dconf
vboxuser    6039  0.0  0.3 498396 36004 ?        Sl   16:42   0:04 /usr/libexec/ibus-extension-gtk3
vboxuser    6042  0.0  0.3 2731388 32856 ?       Sl   16:42   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
vboxuser    6045  0.0  0.0 308500  8072 ?        Sl   16:42   0:00 /usr/libexec/ibus-portal
vboxuser    6059  0.0  0.1 399484 12520 ?        Sl   16:42   0:00 /usr/libexec/gsd-printer
vboxuser    6119  0.0  0.2 893408 26904 ?        Ssl  16:42   0:00 /usr/libexec/evolution-calendar-factory
vboxuser    6122  0.0  0.2 729256 23632 ?        SNsl 16:42   0:00 /usr/libexec/localsearch-3
vboxuser    6126  0.0  0.2 629176 21112 ?        Ssl  16:42   0:01 /usr/libexec/xdg-desktop-portal
vboxuser    6151  0.0  0.1 386944 11148 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
vboxuser    6152  0.0  0.0 621556  7932 ?        Ssl  16:42   0:00 /usr/libexec/xdg-document-portal
vboxuser    6166  0.0  0.3 826068 32120 ?        Ssl  16:42   0:00 /usr/libexec/evolution-addressbook-factory
vboxuser    6174  0.0  0.4 696012 46092 ?        Ssl  16:42   0:00 /usr/libexec/xdg-desktop-portal-gnome
vboxuser    6175  0.0  0.0 389884  9544 ?        Ssl  16:42   0:01 /usr/libexec/gvfs-afc-volume-monitor
vboxuser    6187  0.0  0.0 307832  7404 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-goa-volume-monitor
vboxuser    6198  0.0  0.0 307880  7524 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-mtp-volume-monitor
vboxuser    6208  0.0  0.0 308848  8016 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
vboxuser    6221  0.0  0.0 169304  8188 ?        Sl   16:42   0:07 /usr/libexec/ibus-engine-simple
vboxuser    6354  0.0  0.0 168888  7428 ?        Ssl  16:42   0:00 /usr/libexec/gvfsd-metadata
vboxuser    6374  0.0  0.0 165344  6704 ?        Ssl  16:42   0:00 /usr/libexec/dconf-service
vboxuser    6465  0.0  0.1 534376 10112 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
vboxuser    6631  0.0  0.2 490712 27656 ?        Ssl  16:42   0:00 /usr/libexec/xdg-desktop-portal-gtk
vboxuser    6700  1.7  2.2 2679020 213104 ?      Sl   16:42   2:28 /usr/bin/ptyxis --gapplication-service
vboxuser    6707  0.0  0.0 239996  7988 ?        Ssl  16:42   0:04 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
vboxuser    6742  0.0  0.0   9612  6772 pts/0    Ss   16:42   0:01 /usr/bin/bash
vboxuser    6795  0.2  3.6 2910540 349708 ?      Sl   16:42   0:18 /usr/bin/nautilus --gapplication-service
vboxuser    6840  0.0  0.0 387028  9552 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-recent --spawner :1.17 /org/gtk/gvfs/exec_spaw/1
vboxuser    6841  0.0  0.1 387316  9760 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-network --spawner :1.17 /org/gtk/gvfs/exec_spaw/2
vboxuser    6854  0.0  0.1 388412 10020 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-dnssd --spawner :1.17 /org/gtk/gvfs/exec_spaw/3
vboxuser    6860  0.0  0.0 386696  9608 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-wsdd --spawner :1.17 /org/gtk/gvfs/exec_spaw/4
vboxuser    6865  0.0  0.3  44824 33632 ?        S    16:42   0:00 python3 /usr/bin/wsdd --no-host --discovery --listen /run/user/1000/gvfsd/wsdd
vboxuser    7212 27.6  9.1 12348380 877884 ?     Sl   17:10  30:48 /snap/firefox/9171/usr/lib/firefox/firefox
vboxuser    7289  0.0  0.0 149264  3104 ?        Sl   17:10   0:00 /snap/firefox/9171/usr/lib/firefox/crashhelper 7212 9 /tmp/ 11 20261102221755
vboxuser    7353  0.0  0.7 212124 70788 ?        S    17:10   0:00 /usr/bin/Xwayland :2 -rootless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.RADVY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
vboxuser    7358  0.0  0.1 251364 13876 ?        Ssl  17:10   0:00 /usr/libexec/gsd-xsettings
vboxuser    7364  0.0  1.2 1717896 118564 ?      Sl   17:10   0:00 /usr/libexec/mutter-x11-frames
vboxuser    7433  0.0  0.7 374024 72540 ?        Sl   17:10   0:00 /usr/libexec/ibus-x11
vboxuser    7435  0.0  0.3 466892 34796 ?        S    17:10   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -ipcHandle 0 -signalPipe 1 -initialChannelId {97775e87-adca-4bb0-9f10-98a3d1b76707} -parentPid 7212 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 1 forkserver
vboxuser    7443  0.0  0.4 479136 39756 ?        Sl   17:10   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -parentBuildID 20261102221755 -prefsHandle 0:36169 -prefMapHandle 1:300750 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {a4c74e2c-3751-41f2-a08a-641138325e99} -parentPid 7212 -crashHelperPid 7289 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9171/usr/lib/firefox/browser 2 socket
vboxuser    7474  0.4  1.9 2726156 186284 ?      Sl   17:10   0:29 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:36294 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {5905162d-edfc-4607-a5b3-8cddcb15e308} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 3 tab
vboxuser    7483  0.0  0.6 664680 59340 ?        Sl   17:10   0:01 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -parentBuildID 20261102221755 -prefsHandle 0:36294 -prefMapHandle 1:300750 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {50de58c4-88a2-44c9-ad80-f7807eef0e87} -parentPid 7212 -crashHelperPid 7289 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9171/usr/lib/firefox/browser 4 rdd
vboxuser    7528  0.0  0.2 2024884 28528 ?       Sl   17:10   0:01 /usr/bin/snap userd
vboxuser    7690  0.0  1.2 2663096 116556 ?      Sl   17:10   0:04 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:36414 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {1048ce58-9c02-4db2-a9a1-50746c79a6e6} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 5 tab
vboxuser    8021  0.0  0.6 643084 57880 ?        Sl   17:10   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -parentBuildID 20261102221755 -sandboxingKind 0 -prefsHandle 0:54566 -prefMapHandle 1:300750 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {56c996b3-befb-4998-9679-52a57f5d41e4} -parentPid 7212 -crashHelperPid 7289 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9171/usr/lib/firefox/browser 6 utility
vboxuser    9121 12.6 11.5 25122716 1111876 ?    Sl   17:34  11:10 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51375 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {2f502f78-1d18-42d0-8efd-6a7104046b31} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 12 tab
vboxuser    9164  0.8  1.2 2710812 121000 ?      Sl   17:34   0:43 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51375 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {ff56c406-2035-43f6-831e-6a7effb57568} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 13 tab
vboxuser   10815  0.0  0.0  10500  7000 ?        S    18:04   0:00 /usr/bin/ssh-agent -D -a /run/user/1000/gcr/.ssh
vboxuser   11474 11.2  5.5 3201092 531824 ?      Sl   18:25   4:08 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51668 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {786bd663-35a8-4c59-9136-480a89bc92f3} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 22 tab
vboxuser   11815  0.0  0.7 2607448 74472 ?       Sl   18:28   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51667 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {8efe9077-23f7-4fc5-a4d5-8095ee955aec} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 26 tab
vboxuser   11869  0.0  0.7 2607448 74688 ?       Sl   18:29   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51667 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {0563eb8a-1199-433f-9372-6d7b8703a492} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 27 tab
vboxuser   12080  0.0  0.7 3262760 70376 ?       Sl   18:40   0:01 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
vboxuser   12204  0.0  0.7 2607448 74764 ?       Sl   18:41   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51667 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {1de24de2-6887-4491-b1d3-cfa0729f0c3f} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 28 tab
vboxuser   12481  1.0  2.2 2427720 215644 ?      Sl   18:53   0:05 /usr/bin/gnome-text-editor --gapplication-service
vboxuser   12767  0.0  0.0  10036  4976 pts/0    R+   19:02   0:00 ps aux
vboxuser   12768  0.0  0.0   6716  2700 pts/0    S+   19:02   0:00 grep --color=auto -v ^root
```

## 4. Exclude kwroker and irq processes
```bash
vboxuser@Ubuntu:~/ICT_WiSe26-27/Lecture_5$ ps aux | grep -vE "kworker|irq"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.1  0.1  25332 16760 ?        Ss   16:39   0:09 /usr/lib/systemd/systemd --switched-root --system --deserialize=56
root           2  0.0  0.0      0     0 ?        S    16:39   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    16:39   0:00 [pool_workqueue_release]
root          15  0.1  0.0      0     0 ?        I    16:39   0:11 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    16:39   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    16:39   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    16:39   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    16:39   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    16:39   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    16:39   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    16:39   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    16:39   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    16:39   0:00 [migration/1]
root          28  0.0  0.0      0     0 ?        S    16:39   0:00 [cpuhp/2]
root          29  0.0  0.0      0     0 ?        S    16:39   0:00 [idle_inject/2]
root          30  0.0  0.0      0     0 ?        S    16:39   0:00 [migration/2]
root          34  0.0  0.0      0     0 ?        S    16:39   0:00 [cpuhp/3]
root          35  0.0  0.0      0     0 ?        S    16:39   0:00 [idle_inject/3]
root          36  0.0  0.0      0     0 ?        S    16:39   0:00 [migration/3]
root          40  0.0  0.0      0     0 ?        S    16:39   0:00 [cpuhp/4]
root          41  0.0  0.0      0     0 ?        S    16:39   0:00 [idle_inject/4]
root          42  0.0  0.0      0     0 ?        S    16:39   0:00 [migration/4]
root          46  0.0  0.0      0     0 ?        S    16:39   0:00 [cpuhp/5]
root          47  0.0  0.0      0     0 ?        S    16:39   0:00 [idle_inject/5]
root          48  0.0  0.0      0     0 ?        S    16:39   0:00 [migration/5]
root          52  0.0  0.0      0     0 ?        S    16:39   0:00 [kdevtmpfs]
root          54  0.0  0.0      0     0 ?        I    16:39   0:00 [rcu_tasks_kthread]
root          55  0.0  0.0      0     0 ?        I    16:39   0:00 [rcu_tasks_rude_kthread]
root          56  0.0  0.0      0     0 ?        S    16:39   0:00 [kauditd]
root          57  0.0  0.0      0     0 ?        S    16:39   0:00 [khungtaskd]
root          58  0.0  0.0      0     0 ?        S    16:39   0:00 [oom_reaper]
root          62  0.0  0.0      0     0 ?        S    16:39   0:01 [kcompactd0]
root          63  0.0  0.0      0     0 ?        SN   16:39   0:00 [ksmd]
root          64  0.0  0.0      0     0 ?        SN   16:39   0:00 [khugepaged]
root          78  0.0  0.0      0     0 ?        S    16:39   0:00 [watchdogd]
root          81  0.0  0.0      0     0 ?        S    16:39   0:00 [kswapd0]
root          82  0.0  0.0      0     0 ?        S    16:39   0:00 [ecryptfs-kthread]
root          87  0.0  0.0      0     0 ?        S    16:39   0:00 [scsi_eh_0]
root          89  0.0  0.0      0     0 ?        S    16:39   0:00 [scsi_eh_1]
root         342  0.0  0.0      0     0 ?        S    16:39   0:00 [scsi_eh_2]
root         377  0.0  0.0      0     0 ?        S    16:39   0:03 [jbd2/sda2-8]
root         476  0.0  0.0      0     0 ?        S    16:39   0:00 [psimon]
root         526  0.0  0.1 279492  9644 ?        SLsl 16:39   0:04 /usr/sbin/multipathd -d -s
systemd+     543  0.0  0.1  22960 15388 ?        Ss   16:39   0:02 /usr/lib/systemd/systemd-resolved
root         547  0.0  0.1  42928 16640 ?        Ss   16:39   0:01 /usr/lib/systemd/systemd-udevd
root         806  0.0  0.0      0     0 ?        S    16:39   0:00 [psimon]
systemd+     926  0.0  0.1  21432 12384 ?        Ss   16:39   0:00 /usr/lib/systemd/systemd-networkd
avahi       1132  0.0  0.0   6836  5100 ?        Ss   16:39   0:01 avahi-daemon: running [Ubuntu.local]
root        1133  0.0  0.0   2888  2012 ?        Ss   16:39   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+    1137  0.1  0.0  12360  9328 ?        Ss   16:39   0:09 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1167  0.0  0.3  46844 30292 ?        Ss   16:39   0:01 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1173  0.0  0.1 386704 12876 ?        Ssl  16:39   0:03 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root        1195  0.0  0.0 309520  8680 ?        Ssl  16:39   0:01 /usr/libexec/accounts-daemon
root        1201  0.0  0.1  18748  9816 ?        Ss   16:39   0:03 /usr/lib/systemd/systemd-logind
root        1206  0.0  0.1 543700 15480 ?        Ssl  16:39   0:01 /usr/libexec/udisks2/udisksd
avahi       1234  0.0  0.0   6564  1652 ?        S    16:39   0:00 avahi-daemon: chroot helper
syslog      1264  0.0  0.0 220604  6296 ?        Ssl  16:39   0:01 /usr/sbin/rsyslogd -n -iNONE
_chrony     1298  0.0  0.0  20560  6328 ?        S    16:39   0:02 /usr/sbin/chronyd -n -F 1
root        1307  0.0  0.0 292100  3736 ?        Sl   16:39   0:04 /usr/sbin/VBoxService
_chrony     1346  0.0  0.0  12120  3384 ?        S    16:39   0:00 /usr/sbin/chronyd -n -F 1
root        1357  0.0  0.2 623600 22516 ?        Ssl  16:39   0:02 /usr/sbin/NetworkManager --no-daemon
root        1359  0.0  0.0  17972  6980 ?        Ss   16:39   0:00 /usr/sbin/wpa_supplicant -u -s -O DIR=/run/wpa_supplicant GROUP=netdev
root        1422  0.0  0.1 391604 14164 ?        Ssl  16:39   0:00 /usr/sbin/ModemManager
root        1479  0.0  0.1  29472 13400 ?        Ss   16:39   0:00 /usr/sbin/cupsd -l
root        1482  0.0  0.3 126116 33084 ?        Ssl  16:39   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root        1522  0.0  0.0   7060  3400 ?        Ss   16:39   0:00 /usr/sbin/cron -f -P
cups-br+    1572  0.0  0.2 207560 23008 ?        Ssl  16:39   0:00 /usr/sbin/cups-browsed
root        1597  0.0  0.1 458396 11016 ?        Ssl  16:39   0:00 /usr/sbin/gdm3
colord      1818  0.0  0.1 317584 16560 ?        Ssl  16:39   0:00 /usr/libexec/colord
root        1859  0.0  0.1 318764 11556 ?        Ssl  16:39   0:01 /usr/libexec/upowerd
root        2529  0.0  0.1 172872 10912 ?        Sl   16:39   0:00 gdm-session-worker [pam/gdm-password]
tempadm+    2635  0.0  0.1  23456 14696 ?        Ss   16:39   0:01 /usr/lib/systemd/systemd --user
tempadm+    2637  0.0  0.0  23456  4184 ?        S    16:39   0:00 (sd-pam)
tempadm+    2657  0.0  0.0  10072  6948 ?        Ss   16:39   0:01 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
tempadm+    2658  0.0  0.1 100600 11648 ?        Ssl  16:39   0:00 /usr/bin/pipewire
tempadm+    2660  0.0  0.1 183216 11024 ?        SLsl 16:39   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1001/keyring
tempadm+    2661  0.0  0.0   7560  4056 ?        Ss   16:39   0:00 /usr/bin/mpris-proxy
tempadm+    2662  0.0  0.2 482408 20744 ?        Ssl  16:39   0:00 /usr/bin/wireplumber
tempadm+    2665  0.0  0.0  84812  5880 ?        Ssl  16:39   0:00 /usr/bin/pipewire -c filter-chain.conf
tempadm+    2670  0.0  0.1 105864 11944 ?        Ssl  16:39   0:00 /usr/bin/pipewire-pulse
tempadm+    2701  0.0  0.0 168196  6708 tty2     Ssl+ 16:39   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
tempadm+    2718  0.0  0.0 175212  9336 tty2     Sl+  16:39   0:00 /usr/libexec/gnome-session-init-worker ubuntu
tempadm+    2836  0.0  0.0  97560  8116 ?        Ssl  16:39   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1001/gcr
tempadm+    2838  0.0  0.0  87208  5892 ?        Ssl  16:39   0:00 /usr/libexec/gnome-session-ctl --monitor
tempadm+    2839  0.0  0.0  10484  6796 ?        Ss   16:39   0:00 /usr/bin/ssh-agent -D
tempadm+    2852  0.0  0.0 312952  9144 ?        Ssl  16:39   0:00 /usr/libexec/gvfsd
tempadm+    2858  0.0  0.0 324640  7916 ?        Sl   16:39   0:00 /usr/libexec/gvfsd-fuse /run/user/1001/gvfs -f
tempadm+    2886  0.0  0.1 613324 11352 ?        Ssl  16:39   0:00 /usr/libexec/gnome-session-service --session=ubuntu
tempadm+    2892  0.4  3.7 6067016 358128 ?      Ssl  16:39   0:41 /usr/bin/gnome-shell --mode=ubuntu
tempadm+    2926  0.0  0.0 381116  8060 ?        Ssl  16:39   0:00 /usr/libexec/at-spi-bus-launcher
tempadm+    2933  0.0  0.0   8612  5320 ?        S    16:39   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1001/at-spi/bus
tempadm+    2935  0.0  0.0 168688  7888 ?        Sl   16:39   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
tempadm+    2952  0.0  0.0 307364  7008 ?        Ssl  16:39   0:00 /usr/libexec/xdg-permission-store
tempadm+    2954  0.0  0.2 658660 19672 ?        Sl   16:39   0:00 /usr/libexec/gnome-shell-calendar-server
tempadm+    2967  0.0  0.4 1288204 47236 ?       Ssl  16:39   0:00 /usr/libexec/evolution-source-registry
tempadm+    2970  0.0  0.0 165336  6612 ?        Ssl  16:39   0:00 /usr/libexec/dconf-service
tempadm+    2977  0.0  0.3 2730368 32768 ?       Sl   16:39   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
tempadm+    2994  0.0  0.1 459308 11840 ?        Ssl  16:39   0:00 /usr/bin/ibus-daemon --panel disable
tempadm+    2995  0.0  0.1 253788 10740 ?        Ssl  16:39   0:00 /usr/libexec/gsd-a11y-settings
tempadm+    3003  0.0  0.1 251620 10524 ?        Ssl  16:39   0:00 /usr/libexec/gsd-color
tempadm+    3004  0.0  0.1 260156 12948 ?        Ssl  16:39   0:00 /usr/libexec/gsd-datetime
tempadm+    3008  0.0  0.1 390768 10860 ?        Ssl  16:39   0:00 /usr/libexec/gsd-housekeeping
tempadm+    3009  0.0  0.0 383252  8216 ?        Ssl  16:39   0:00 /usr/libexec/gsd-keyboard
tempadm+    3011  0.0  0.1 559936 14740 ?        Ssl  16:39   0:00 /usr/libexec/gsd-media-keys
tempadm+    3015  0.0  0.1 475388 11888 ?        Ssl  16:39   0:00 /usr/libexec/gsd-power
tempadm+    3025  0.0  0.1 327572 14660 ?        Ssl  16:39   0:00 /usr/libexec/gsd-print-notifications
tempadm+    3026  0.0  0.0 456924  8308 ?        Ssl  16:39   0:00 /usr/libexec/gsd-rfkill
tempadm+    3033  0.0  0.0 169832  7676 ?        Ssl  16:39   0:00 /usr/libexec/gsd-screensaver-proxy
tempadm+    3038  0.0  0.1 467388 12976 ?        Ssl  16:39   0:00 /usr/libexec/gsd-sharing
tempadm+    3039  0.0  0.1 467624  9836 ?        Ssl  16:39   0:00 /usr/libexec/gsd-smartcard
tempadm+    3040  0.0  0.1 254964 11536 ?        Ssl  16:39   0:00 /usr/libexec/gsd-sound
tempadm+    3042  0.0  0.3 716176 35432 ?        Sl   16:39   0:01 /usr/bin/update-notifier
tempadm+    3043  0.0  0.1 414864 10224 ?        Ssl  16:39   0:00 /usr/libexec/gsd-usb-protection
tempadm+    3044  0.0  0.1 390404 10780 ?        Ssl  16:39   0:00 /usr/libexec/gsd-wwan
tempadm+    3047  0.0  0.6 840316 65172 ?        Sl   16:39   0:00 /usr/libexec/evolution-data-server/evolution-alarm-notify
tempadm+    3066  0.0  0.1 312176  9644 ?        Sl   16:39   0:00 /usr/libexec/gsd-disk-utility-notify
tempadm+    3172  0.0  0.1 399484 12572 ?        Sl   16:39   0:00 /usr/libexec/gsd-printer
tempadm+    3198  0.0  0.3 2732412 32752 ?       Sl   16:39   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
tempadm+    3230  0.0  0.1 386940 11056 ?        Ssl  16:39   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
tempadm+    3233  0.0  0.3 466816 32028 ?        Sl   16:39   0:00 /usr/libexec/goa-daemon
tempadm+    3245  0.0  0.0 242996  8256 ?        Sl   16:39   0:00 /usr/libexec/ibus-dconf
tempadm+    3246  0.0  0.3 498396 35852 ?        Sl   16:39   0:03 /usr/libexec/ibus-extension-gtk3
tempadm+    3253  0.0  0.0 308500  8160 ?        Sl   16:39   0:00 /usr/libexec/ibus-portal
tempadm+    3256  0.0  0.2 726892 24832 ?        SNsl 16:39   0:01 /usr/libexec/localsearch-3
tempadm+    3281  0.0  0.1 387944 10384 ?        Sl   16:39   0:00 /usr/libexec/goa-identity-service
tempadm+    3287  0.0  0.2 703040 20664 ?        Ssl  16:39   0:00 /usr/libexec/xdg-desktop-portal
tempadm+    3288  0.0  0.2 893412 27324 ?        Ssl  16:39   0:00 /usr/libexec/evolution-calendar-factory
tempadm+    3289  0.0  0.1 389884  9700 ?        Ssl  16:39   0:01 /usr/libexec/gvfs-afc-volume-monitor
tempadm+    3303  0.0  0.0 687092  7916 ?        Ssl  16:39   0:00 /usr/libexec/xdg-document-portal
tempadm+    3314  0.0  0.0 307832  7412 ?        Ssl  16:39   0:00 /usr/libexec/gvfs-goa-volume-monitor
root        3317  0.0  0.0   2792  2308 ?        Ss   16:39   0:00 fusermount3 -o rw,nosuid,nodev,fsname=portal,auto_unmount,subtype=portal -- /run/user/1001/doc
tempadm+    3322  0.0  0.4 892788 46204 ?        Ssl  16:39   0:00 /usr/libexec/xdg-desktop-portal-gnome
tempadm+    3327  0.0  0.0 307880  7444 ?        Ssl  16:39   0:00 /usr/libexec/gvfs-mtp-volume-monitor
tempadm+    3335  0.0  0.0 308848  7992 ?        Ssl  16:39   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
tempadm+    3345  0.0  0.3 826064 31804 ?        Ssl  16:39   0:00 /usr/libexec/evolution-addressbook-factory
tempadm+    3423  0.0  0.0 169176  8092 ?        Sl   16:39   0:00 /usr/libexec/ibus-engine-simple
tempadm+    3522  0.0  0.0 168888  7408 ?        Ssl  16:39   0:00 /usr/libexec/gvfsd-metadata
tempadm+    3692  0.0  0.1 534376 10080 ?        Sl   16:39   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
tempadm+    3816  0.0  0.2 490700 27656 ?        Ssl  16:39   0:00 /usr/libexec/xdg-desktop-portal-gtk
tempadm+    3947  0.0  0.0 313296  9468 ?        Sl   16:39   0:00 /usr/libexec/gvfsd-recent --spawner :1.17 /org/gtk/gvfs/exec_spaw/1
tempadm+    3948  0.0  0.1 387312  9868 ?        Sl   16:39   0:00 /usr/libexec/gvfsd-network --spawner :1.17 /org/gtk/gvfs/exec_spaw/2
tempadm+    3958  0.0  0.1 388412  9932 ?        Sl   16:39   0:00 /usr/libexec/gvfsd-dnssd --spawner :1.17 /org/gtk/gvfs/exec_spaw/3
tempadm+    3967  0.0  0.0 386696  9620 ?        Sl   16:39   0:00 /usr/libexec/gvfsd-wsdd --spawner :1.17 /org/gtk/gvfs/exec_spaw/4
tempadm+    3972  0.0  0.3  44824 33680 ?        S    16:39   0:01 python3 /usr/bin/wsdd --no-host --discovery --listen /run/user/1001/gvfsd/wsdd
uuidd       4043  0.0  0.0   8104  3480 ?        Ss   16:40   0:00 /usr/sbin/uuidd --socket-activation --cont-clock
root        5421  0.0  0.1 385876 11440 ?        Sl   16:41   0:00 gdm-session-worker [pam/gdm-password]
vboxuser    5530  0.0  0.1  23700 14968 ?        Ss   16:41   0:01 /usr/lib/systemd/systemd --user
vboxuser    5532  0.0  0.0  23456  4168 ?        S    16:41   0:00 (sd-pam)
vboxuser    5552  0.0  0.0  10284  7116 ?        Ss   16:41   0:04 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
vboxuser    5553  0.0  0.1 110100 12956 ?        Ssl  16:41   0:03 /usr/bin/pipewire
vboxuser    5555  0.0  0.1 183248 11320 ?        SLsl 16:41   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
vboxuser    5556  0.0  0.0   7560  4064 ?        Ss   16:41   0:00 /usr/bin/mpris-proxy
vboxuser    5559  0.0  0.2 487696 22664 ?        Ssl  16:41   0:01 /usr/bin/wireplumber
vboxuser    5562  0.0  0.0  84812  5816 ?        Ssl  16:41   0:00 /usr/bin/pipewire -c filter-chain.conf
vboxuser    5563  0.0  0.1 177948 12844 ?        Ssl  16:41   0:00 /usr/bin/pipewire-pulse
vboxuser    5592  0.0  0.0 168196  6864 tty3     Ssl+ 16:41   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
vboxuser    5616  0.0  0.0 175212  9428 tty3     Sl+  16:41   0:00 /usr/libexec/gnome-session-init-worker ubuntu
vboxuser    5728  0.0  0.0 310560  8520 ?        Ssl  16:42   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
vboxuser    5729  0.0  0.0  87208  5976 ?        Ssl  16:42   0:00 /usr/libexec/gnome-session-ctl --monitor
vboxuser    5730  0.0  0.0  10484  6768 ?        Ss   16:42   0:00 /usr/bin/ssh-agent -D
vboxuser    5742  0.0  0.0 313036  9120 ?        Ssl  16:42   0:00 /usr/libexec/gvfsd
vboxuser    5748  0.0  0.0 324640  7924 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
vboxuser    5751  0.0  0.1 539592 11700 ?        Ssl  16:42   0:00 /usr/libexec/gnome-session-service --session=ubuntu
vboxuser    5763 21.0  4.0 6160404 389236 ?      Rsl  16:42  29:45 /usr/bin/gnome-shell --mode=ubuntu
vboxuser    5795  0.0  0.0 381124  8196 ?        Ssl  16:42   0:00 /usr/libexec/at-spi-bus-launcher
vboxuser    5802  0.0  0.0   8744  5344 ?        S    16:42   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
vboxuser    5804  0.0  0.0 168688  7832 ?        Sl   16:42   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
vboxuser    5822  0.0  0.0 307364  7000 ?        Ssl  16:42   0:00 /usr/libexec/xdg-permission-store
vboxuser    5824  0.0  0.2 658664 19764 ?        Sl   16:42   0:00 /usr/libexec/gnome-shell-calendar-server
vboxuser    5834  0.0  0.4 894896 46604 ?        Ssl  16:42   0:00 /usr/libexec/evolution-source-registry
vboxuser    5850  0.0  0.3 466816 32140 ?        Sl   16:42   0:00 /usr/libexec/goa-daemon
vboxuser    5852  0.0  0.3 2665800 32828 ?       Sl   16:42   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
vboxuser    5858  0.2  0.1 385616 11880 ?        Ssl  16:42   0:24 /usr/bin/ibus-daemon --panel disable
vboxuser    5863  0.0  0.1 253792 10540 ?        Ssl  16:42   0:00 /usr/libexec/gsd-a11y-settings
vboxuser    5872  0.0  0.1 251624 10452 ?        Ssl  16:42   0:00 /usr/libexec/gsd-color
vboxuser    5873  0.0  0.1 260160 12756 ?        Ssl  16:42   0:00 /usr/libexec/gsd-datetime
vboxuser    5874  0.0  0.1 390768 10932 ?        Ssl  16:42   0:00 /usr/libexec/gsd-housekeeping
vboxuser    5878  0.0  0.0 383124  8080 ?        Ssl  16:42   0:00 /usr/libexec/gsd-keyboard
vboxuser    5883  0.0  0.1 691008 14884 ?        Ssl  16:42   0:00 /usr/libexec/gsd-media-keys
vboxuser    5886  0.0  0.1 540924 11644 ?        Ssl  16:42   0:00 /usr/libexec/gsd-power
vboxuser    5891  0.0  0.1 327572 14372 ?        Ssl  16:42   0:00 /usr/libexec/gsd-print-notifications
vboxuser    5903  0.0  0.0 456924  8228 ?        Ssl  16:42   0:00 /usr/libexec/gsd-rfkill
vboxuser    5908  0.0  0.0 169832  7536 ?        Ssl  16:42   0:00 /usr/libexec/gsd-screensaver-proxy
vboxuser    5915  0.0  0.1 467388 13100 ?        Ssl  16:42   0:00 /usr/libexec/gsd-sharing
vboxuser    5918  0.0  0.3 715808 34888 ?        Sl   16:42   0:00 /usr/bin/update-notifier
vboxuser    5919  0.0  0.1 385700 10024 ?        Ssl  16:42   0:00 /usr/libexec/gsd-smartcard
vboxuser    5921  0.0  0.1 387944 10528 ?        Sl   16:42   0:00 /usr/libexec/goa-identity-service
vboxuser    5929  0.0  0.1 254940 10804 ?        Ssl  16:42   0:00 /usr/libexec/gsd-sound
vboxuser    5936  0.0  0.1 611472 10148 ?        Ssl  16:42   0:00 /usr/libexec/gsd-usb-protection
vboxuser    5940  0.0  0.6 840316 65164 ?        Sl   16:42   0:00 /usr/libexec/evolution-data-server/evolution-alarm-notify
vboxuser    5950  0.0  0.1 390408 10856 ?        Ssl  16:42   0:00 /usr/libexec/gsd-wwan
vboxuser    5967  0.0  0.0 312176  9608 ?        Sl   16:42   0:00 /usr/libexec/gsd-disk-utility-notify
vboxuser    6037  0.0  0.0 243000  8232 ?        Sl   16:42   0:00 /usr/libexec/ibus-dconf
vboxuser    6039  0.0  0.3 498396 36004 ?        Sl   16:42   0:04 /usr/libexec/ibus-extension-gtk3
vboxuser    6042  0.0  0.3 2731388 32856 ?       Sl   16:42   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
vboxuser    6045  0.0  0.0 308500  8072 ?        Sl   16:42   0:00 /usr/libexec/ibus-portal
vboxuser    6059  0.0  0.1 399484 12520 ?        Sl   16:42   0:00 /usr/libexec/gsd-printer
vboxuser    6119  0.0  0.2 893408 26904 ?        Ssl  16:42   0:00 /usr/libexec/evolution-calendar-factory
vboxuser    6122  0.0  0.2 729256 23632 ?        SNsl 16:42   0:00 /usr/libexec/localsearch-3
vboxuser    6126  0.0  0.2 629176 21112 ?        Rsl  16:42   0:01 /usr/libexec/xdg-desktop-portal
vboxuser    6151  0.0  0.1 386944 11148 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
vboxuser    6152  0.0  0.0 621556  7932 ?        Ssl  16:42   0:00 /usr/libexec/xdg-document-portal
root        6165  0.0  0.0   2792  2312 ?        Ss   16:42   0:00 fusermount3 -o rw,nosuid,nodev,fsname=portal,auto_unmount,subtype=portal -- /run/user/1000/doc
vboxuser    6166  0.0  0.3 826068 32120 ?        Ssl  16:42   0:00 /usr/libexec/evolution-addressbook-factory
vboxuser    6174  0.0  0.4 696012 46092 ?        Ssl  16:42   0:00 /usr/libexec/xdg-desktop-portal-gnome
vboxuser    6175  0.0  0.0 389884  9544 ?        Ssl  16:42   0:01 /usr/libexec/gvfs-afc-volume-monitor
vboxuser    6187  0.0  0.0 307832  7404 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-goa-volume-monitor
vboxuser    6198  0.0  0.0 307880  7524 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-mtp-volume-monitor
vboxuser    6208  0.0  0.0 308848  8016 ?        Ssl  16:42   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
vboxuser    6221  0.0  0.0 169304  8188 ?        Sl   16:42   0:08 /usr/libexec/ibus-engine-simple
vboxuser    6354  0.0  0.0 168888  7428 ?        Ssl  16:42   0:00 /usr/libexec/gvfsd-metadata
vboxuser    6374  0.0  0.0 165344  6704 ?        Ssl  16:42   0:00 /usr/libexec/dconf-service
vboxuser    6465  0.0  0.1 534376 10112 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
vboxuser    6631  0.0  0.2 490712 27656 ?        Ssl  16:42   0:00 /usr/libexec/xdg-desktop-portal-gtk
vboxuser    6700  2.0  2.2 2679020 213104 ?      Rl   16:42   2:53 /usr/bin/ptyxis --gapplication-service
vboxuser    6707  0.0  0.0 239996  7988 ?        Ssl  16:42   0:04 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
vboxuser    6742  0.0  0.0   9612  6772 pts/0    Ss   16:42   0:01 /usr/bin/bash
vboxuser    6795  0.2  3.6 2910540 349708 ?      Sl   16:42   0:18 /usr/bin/nautilus --gapplication-service
vboxuser    6840  0.0  0.0 387028  9552 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-recent --spawner :1.17 /org/gtk/gvfs/exec_spaw/1
vboxuser    6841  0.0  0.1 387316  9760 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-network --spawner :1.17 /org/gtk/gvfs/exec_spaw/2
vboxuser    6854  0.0  0.1 388412 10020 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-dnssd --spawner :1.17 /org/gtk/gvfs/exec_spaw/3
vboxuser    6860  0.0  0.0 386696  9608 ?        Sl   16:42   0:00 /usr/libexec/gvfsd-wsdd --spawner :1.17 /org/gtk/gvfs/exec_spaw/4
vboxuser    6865  0.0  0.3  44824 33632 ?        S    16:42   0:00 python3 /usr/bin/wsdd --no-host --discovery --listen /run/user/1000/gvfsd/wsdd
vboxuser    7212 27.3  8.8 12350456 852468 ?     Sl   17:10  30:59 /snap/firefox/9171/usr/lib/firefox/firefox
vboxuser    7289  0.0  0.0 149264  3104 ?        Sl   17:10   0:00 /snap/firefox/9171/usr/lib/firefox/crashhelper 7212 9 /tmp/ 11 20261102221755
vboxuser    7353  0.0  0.7 212124 70788 ?        S    17:10   0:00 /usr/bin/Xwayland :2 -rootless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.RADVY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
vboxuser    7358  0.0  0.1 251364 13876 ?        Ssl  17:10   0:00 /usr/libexec/gsd-xsettings
vboxuser    7364  0.0  1.2 1717896 118564 ?      Sl   17:10   0:00 /usr/libexec/mutter-x11-frames
vboxuser    7433  0.0  0.7 374024 72540 ?        Sl   17:10   0:00 /usr/libexec/ibus-x11
vboxuser    7435  0.0  0.3 466892 34796 ?        S    17:10   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -ipcHandle 0 -signalPipe 1 -initialChannelId {97775e87-adca-4bb0-9f10-98a3d1b76707} -parentPid 7212 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 1 forkserver
vboxuser    7443  0.0  0.4 479136 39756 ?        Sl   17:10   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -parentBuildID 20261102221755 -prefsHandle 0:36169 -prefMapHandle 1:300750 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {a4c74e2c-3751-41f2-a08a-641138325e99} -parentPid 7212 -crashHelperPid 7289 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9171/usr/lib/firefox/browser 2 socket
vboxuser    7474  0.4  1.9 2726140 186268 ?      Sl   17:10   0:30 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:36294 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {5905162d-edfc-4607-a5b3-8cddcb15e308} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 3 tab
vboxuser    7483  0.0  0.6 664680 59340 ?        Sl   17:10   0:01 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -parentBuildID 20261102221755 -prefsHandle 0:36294 -prefMapHandle 1:300750 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {50de58c4-88a2-44c9-ad80-f7807eef0e87} -parentPid 7212 -crashHelperPid 7289 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9171/usr/lib/firefox/browser 4 rdd
vboxuser    7528  0.0  0.2 2024884 28528 ?       Sl   17:10   0:01 /usr/bin/snap userd
vboxuser    7690  0.0  1.2 2663096 116556 ?      Sl   17:10   0:04 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:36414 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {1048ce58-9c02-4db2-a9a1-50746c79a6e6} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 5 tab
vboxuser    8021  0.0  0.6 643084 57880 ?        Sl   17:10   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -parentBuildID 20261102221755 -sandboxingKind 0 -prefsHandle 0:54566 -prefMapHandle 1:300750 -sandboxReporter 2 -chrootClient 3 -ipcHandle 4 -initialChannelId {56c996b3-befb-4998-9679-52a57f5d41e4} -parentPid 7212 -crashHelperPid 7289 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9171/usr/lib/firefox/browser 6 utility
root        8543  0.0  0.4 439688 46148 ?        Ssl  17:13   0:01 /usr/libexec/fwupd/fwupd
root        8720  0.0  0.4 2182312 44392 ?       Ssl  17:32   0:03 /usr/lib/snapd/snapd
root        8773  0.0  0.2  58856 24740 ?        S<s  17:32   0:01 /usr/lib/systemd/systemd-journald
vboxuser    9121 12.5 11.5 25122716 1112008 ?    Sl   17:34  11:16 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51375 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {2f502f78-1d18-42d0-8efd-6a7104046b31} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 12 tab
vboxuser    9164  0.8  1.2 2710812 121028 ?      Sl   17:34   0:44 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51375 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {ff56c406-2035-43f6-831e-6a7effb57568} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 13 tab
vboxuser   10815  0.0  0.0  10500  7000 ?        S    18:04   0:00 /usr/bin/ssh-agent -D -a /run/user/1000/gcr/.ssh
vboxuser   11474 11.0  5.5 3201092 531868 ?      Sl   18:25   4:13 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51668 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {786bd663-35a8-4c59-9136-480a89bc92f3} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 22 tab
vboxuser   11815  0.0  0.7 2607448 74472 ?       Sl   18:28   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51667 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {8efe9077-23f7-4fc5-a4d5-8095ee955aec} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 26 tab
vboxuser   11869  0.0  0.7 2607448 74688 ?       Sl   18:29   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51667 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {0563eb8a-1199-433f-9372-6d7b8703a492} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 27 tab
vboxuser   12080  0.0  0.7 3262760 70376 ?       Sl   18:40   0:01 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
vboxuser   12204  0.0  0.7 2607448 74764 ?       Sl   18:41   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51667 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chrootClient 4 -ipcHandle 5 -initialChannelId {1de24de2-6887-4491-b1d3-cfa0729f0c3f} -parentPid 7212 -crashHelperPid 7289 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 28 tab
vboxuser   12481  0.9  2.2 2427720 215644 ?      Sl   18:53   0:05 /usr/bin/gnome-text-editor --gapplication-service
vboxuser   12807  300  0.0  10036  4964 pts/0    R+   19:03   0:00 ps aux
```
