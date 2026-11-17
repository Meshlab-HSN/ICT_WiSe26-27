# Lecture 5 - Task 2: Search and Filter

## Task 2.1 - Filter processes using grep
```bash
ps aux | grep pari
```
```text
avahi        567  0.0  0.1   8692  4740 ?        Ss   Nov17   0:00 avahi-daemon: running [pari-VirtualBox.local]
pari        1645  0.0  0.3  21164 12616 ?        Ss   Nov17   0:00 /usr/lib/systemd/systemd --user
pari        1647  0.0  0.0  21488  3784 ?        S    Nov17   0:00 (sd-pam)
pari        1658  0.0  0.3 114392 13640 ?        Ssl  Nov17   0:00 /usr/bin/pipewire
pari        1660  0.0  0.1  97752  6192 ?        Ssl  Nov17   0:00 /usr/bin/pipewire -c filter-chain.conf
pari        1664  0.0  0.4 406912 19220 ?        Ssl  Nov17   0:00 /usr/bin/wireplumber
pari        1666  0.0  0.3 115196 12496 ?        Ssl  Nov17   0:00 /usr/bin/pipewire-pulse
pari        1671  0.0  0.2 316524 10628 ?        SLsl Nov17   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
pari        1678  0.0  0.1  10924  6728 ?        Ss   Nov17   0:00 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
pari        1710  0.0  0.1 758804  7792 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-document-portal
pari        1720  0.0  0.1 235680  6336 tty2     Ssl+ Nov17   0:00 /usr/libexec/gdm-wayland-session env GNOME_SHELL_SESSION_MODE=ubuntu /usr/bin/gnome-session --session=ubuntu
pari        1739  0.0  0.4 298236 16812 tty2     Sl+  Nov17   0:00 /usr/libexec/gnome-session-binary --session=ubuntu
pari        1747  0.0  0.1 309320  6392 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-permission-store
pari        1816  0.0  0.1 162668  7024 ?        Ssl  Nov17   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
pari        1817  0.0  0.1  91564  5824 ?        Ssl  Nov17   0:00 /usr/libexec/gnome-session-ctl --monitor
pari        1826  0.0  0.2 314288  8276 ?        Ssl  Nov17   0:00 /usr/libexec/gvfsd
pari        1844  0.0  0.1 534484  7420 ?        Sl   Nov17   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
pari        1848  0.0  0.4 667952 18676 ?        Ssl  Nov17   0:00 /usr/libexec/gnome-session-binary --systemd-service --session=ubuntu
pari        1884  0.0  0.2 382960  8112 ?        Sl   Nov17   0:00 /usr/libexec/at-spi-bus-launcher --launch-immediately
pari        1885  0.4  9.3 3974116 375204 ?      Ssl  Nov17   0:21 /usr/bin/gnome-shell
pari        1902  0.0  0.1   9504  5340 ?        S    Nov17   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
pari        1955  0.0  0.1 236088  7896 ?        Sl   Nov17   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
pari        1962  0.0  0.4 654752 18124 ?        Sl   Nov17   0:00 /usr/libexec/gnome-shell-calendar-server
pari        1980  0.0  1.0 1279880 43724 ?       Ssl  Nov17   0:00 /usr/libexec/evolution-source-registry
pari        1991  0.0  0.3 388652 12356 ?        Ssl  Nov17   0:00 /usr/bin/ibus-daemon --panel disable
pari        1992  0.0  0.1 383532  6840 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-a11y-settings
pari        1993  0.0  0.6 2584776 27196 ?       Sl   Nov17   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
pari        1994  0.0  0.5 412924 21084 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-color
pari        1995  0.0  0.3 431684 12552 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-datetime
pari        1996  0.0  0.2 458876  8072 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-housekeeping
pari        1997  0.0  0.5 485516 20568 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-keyboard
pari        1999  0.0  0.6 741640 26024 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-media-keys
pari        2000  0.0  0.6 523552 24836 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-power
pari        2001  0.0  0.3 323776 12060 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-print-notifications
pari        2002  0.0  0.1 531096  6932 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-rfkill
pari        2003  0.0  0.1 309572  6360 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-screensaver-proxy
pari        2004  0.0  0.2 543208 11868 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-sharing
pari        2005  0.0  0.2 459564  8504 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-smartcard
pari        2008  0.0  0.2 393656 10140 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-sound
pari        2009  0.0  0.5 412760 21256 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-wacom
pari        2025  0.0  1.5 830928 61176 ?        Sl   Nov17   0:00 /usr/libexec/evolution-data-server/evolution-alarm-notify
pari        2059  0.0  0.1 305504  7524 ?        Sl   Nov17   0:00 /usr/libexec/gsd-disk-utility-notify
pari        2153  0.0  0.2 389332 10820 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
pari        2184  0.0  0.1 310476  7488 ?        Sl   Nov17   0:00 /usr/libexec/ibus-dconf
pari        2186  0.0  0.3 416240 15496 ?        Sl   Nov17   0:00 /usr/libexec/gsd-printer
pari        2187  0.0  0.7 421512 30336 ?        Sl   Nov17   0:01 /usr/libexec/ibus-extension-gtk3
pari        2199  0.0  0.1 310436  7408 ?        Sl   Nov17   0:00 /usr/libexec/ibus-portal
pari        2206  0.0  0.6 546620 24724 ?        Sl   Nov17   0:00 /usr/libexec/goa-daemon
pari        2226  0.0  0.2 389136  9544 ?        Sl   Nov17   0:00 /usr/libexec/goa-identity-service
pari        2234  0.0  0.6 890752 25044 ?        Ssl  Nov17   0:00 /usr/libexec/evolution-calendar-factory
pari        2236  0.0  0.1 310772  7248 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
pari        2247  0.0  0.1 309804  6656 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-mtp-volume-monitor
pari        2254  0.0  0.2 389392  8264 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-afc-volume-monitor
pari        2260  0.0  0.7 825460 30748 ?        Ssl  Nov17   0:00 /usr/libexec/evolution-addressbook-factory
pari        2265  0.0  0.1 309784  6660 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-goa-volume-monitor
pari        2296  0.0  0.1 236780  7684 ?        Sl   Nov17   0:00 /usr/libexec/ibus-engine-simple
pari        2320  0.0  0.1 230120  6084 ?        Ssl  Nov17   0:00 /usr/libexec/dconf-service
pari        2331  0.0  0.6 2592992 27636 ?       Sl   Nov17   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
pari        2341  0.0  0.2 609456  9244 ?        Sl   Nov17   0:00 /usr/libexec/gvfsd-trash --spawner :1.20 /org/gtk/gvfs/exec_spaw/0
pari        2365  0.0  0.6 882072 26992 ?        SNsl Nov17   0:00 /usr/libexec/tracker-miner-fs-3
pari        2441  0.0  0.3 701652 14732 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-desktop-portal
pari        2446  0.0  1.0 556256 41304 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-desktop-portal-gnome
pari        2447  0.0  0.1 236284  6516 ?        Ssl  Nov17   0:00 /usr/libexec/gvfsd-metadata
pari        2465  0.0  0.6 417780 26640 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-desktop-portal-gtk
pari        2496  0.0  0.1 303956  6544 ?        Ssl  Nov17   0:00 /snap/snapd-desktop-integration/391/usr/bin/user-session-helper /snap/snapd-desktop-integration/391/usr/bin/snapd-desktop-integration
pari        2547  0.0  0.9 486948 39196 ?        Sl   Nov17   0:00 /snap/snapd-desktop-integration/391/usr/bin/snapd-desktop-integration
pari        2703  0.0  1.3 555996 55700 ?        Ssl  Nov17   0:00 /usr/libexec/gnome-terminal-server
pari        2709  0.0  1.7 245028 68832 ?        S    Nov17   0:00 /usr/bin/Xwayland :0 -rootless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.55WXY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients
pari        2711  0.0  0.1  11276  5540 pts/0    Ss   Nov17   0:00 bash
pari        2724  0.0  2.1 642300 84888 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-xsettings
pari        2745  0.0  0.6 267152 25176 ?        Sl   Nov17   0:00 /usr/libexec/ibus-x11
pari        2751  0.0  2.5 1119292 103996 ?      Sl   Nov17   0:00 /usr/libexec/mutter-x11-frames
pari        2790  0.0  0.8 495552 34124 ?        Sl   Nov17   0:00 /usr/bin/update-notifier
root        3200  0.0  0.2  15192 10848 ?        Ss   Nov17   0:00 sshd: pari [priv]
pari        3245  0.3  0.1  15352  7440 ?        S    Nov17   0:11 sshd: pari@pts/2
pari        3246  0.0  0.1  11364  5648 pts/2    Ss   Nov17   0:00 -bash
pari       16049  0.0  0.1  13632  5032 pts/2    R+   00:53   0:00 ps aux
pari       16050  0.0  0.0   9156  2712 pts/2    S+   00:53   0:00 grep --color=auto pari
```

## Task 2.2 - Filter processes using regular expression
```bash
ps aux | grep -E '^pari[[:space:]]'
```
```text
pari        1645  0.0  0.3  21164 12616 ?        Ss   Nov17   0:00 /usr/lib/systemd/systemd --user
pari        1647  0.0  0.0  21488  3784 ?        S    Nov17   0:00 (sd-pam)
pari        1658  0.0  0.3 114392 13640 ?        Ssl  Nov17   0:00 /usr/bin/pipewire
pari        1660  0.0  0.1  97752  6192 ?        Ssl  Nov17   0:00 /usr/bin/pipewire -c filter-chain.conf
pari        1664  0.0  0.4 406912 19220 ?        Ssl  Nov17   0:00 /usr/bin/wireplumber
pari        1666  0.0  0.3 115196 12496 ?        Ssl  Nov17   0:00 /usr/bin/pipewire-pulse
pari        1671  0.0  0.2 316524 10628 ?        SLsl Nov17   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
pari        1678  0.0  0.1  10924  6728 ?        Ss   Nov17   0:00 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
pari        1710  0.0  0.1 758804  7792 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-document-portal
pari        1720  0.0  0.1 235680  6336 tty2     Ssl+ Nov17   0:00 /usr/libexec/gdm-wayland-session env GNOME_SHELL_SESSION_MODE=ubuntu /usr/bin/gnome-session --session=ubuntu
pari        1739  0.0  0.4 298236 16812 tty2     Sl+  Nov17   0:00 /usr/libexec/gnome-session-binary --session=ubuntu
pari        1747  0.0  0.1 309320  6392 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-permission-store
pari        1816  0.0  0.1 162668  7024 ?        Ssl  Nov17   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
pari        1817  0.0  0.1  91564  5824 ?        Ssl  Nov17   0:00 /usr/libexec/gnome-session-ctl --monitor
pari        1826  0.0  0.2 314288  8276 ?        Ssl  Nov17   0:00 /usr/libexec/gvfsd
pari        1844  0.0  0.1 534484  7420 ?        Sl   Nov17   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
pari        1848  0.0  0.4 667952 18676 ?        Ssl  Nov17   0:00 /usr/libexec/gnome-session-binary --systemd-service --session=ubuntu
pari        1884  0.0  0.2 382960  8112 ?        Sl   Nov17   0:00 /usr/libexec/at-spi-bus-launcher --launch-immediately
pari        1885  0.4  9.3 3974116 375204 ?      Ssl  Nov17   0:21 /usr/bin/gnome-shell
pari        1902  0.0  0.1   9504  5340 ?        S    Nov17   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
pari        1955  0.0  0.1 236088  7896 ?        Sl   Nov17   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
pari        1962  0.0  0.4 654752 18124 ?        Sl   Nov17   0:00 /usr/libexec/gnome-shell-calendar-server
pari        1980  0.0  1.0 1279880 43724 ?       Ssl  Nov17   0:00 /usr/libexec/evolution-source-registry
pari        1991  0.0  0.3 388652 12356 ?        Ssl  Nov17   0:00 /usr/bin/ibus-daemon --panel disable
pari        1992  0.0  0.1 383532  6840 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-a11y-settings
pari        1993  0.0  0.6 2584776 27196 ?       Sl   Nov17   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
pari        1994  0.0  0.5 412924 21084 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-color
pari        1995  0.0  0.3 431684 12552 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-datetime
pari        1996  0.0  0.2 458876  8072 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-housekeeping
pari        1997  0.0  0.5 485516 20568 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-keyboard
pari        1999  0.0  0.6 741640 26024 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-media-keys
pari        2000  0.0  0.6 523552 24836 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-power
pari        2001  0.0  0.3 323776 12060 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-print-notifications
pari        2002  0.0  0.1 531096  6932 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-rfkill
pari        2003  0.0  0.1 309572  6360 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-screensaver-proxy
pari        2004  0.0  0.2 543208 11868 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-sharing
pari        2005  0.0  0.2 459564  8504 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-smartcard
pari        2008  0.0  0.2 393656 10140 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-sound
pari        2009  0.0  0.5 412760 21256 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-wacom
pari        2025  0.0  1.5 830928 61176 ?        Sl   Nov17   0:00 /usr/libexec/evolution-data-server/evolution-alarm-notify
pari        2059  0.0  0.1 305504  7524 ?        Sl   Nov17   0:00 /usr/libexec/gsd-disk-utility-notify
pari        2153  0.0  0.2 389332 10820 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
pari        2184  0.0  0.1 310476  7488 ?        Sl   Nov17   0:00 /usr/libexec/ibus-dconf
pari        2186  0.0  0.3 416240 15496 ?        Sl   Nov17   0:00 /usr/libexec/gsd-printer
pari        2187  0.0  0.7 421512 30336 ?        Sl   Nov17   0:01 /usr/libexec/ibus-extension-gtk3
pari        2199  0.0  0.1 310436  7408 ?        Sl   Nov17   0:00 /usr/libexec/ibus-portal
pari        2206  0.0  0.6 546620 24724 ?        Sl   Nov17   0:00 /usr/libexec/goa-daemon
pari        2226  0.0  0.2 389136  9544 ?        Sl   Nov17   0:00 /usr/libexec/goa-identity-service
pari        2234  0.0  0.6 890752 25044 ?        Ssl  Nov17   0:00 /usr/libexec/evolution-calendar-factory
pari        2236  0.0  0.1 310772  7248 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
pari        2247  0.0  0.1 309804  6656 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-mtp-volume-monitor
pari        2254  0.0  0.2 389392  8264 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-afc-volume-monitor
pari        2260  0.0  0.7 825460 30748 ?        Ssl  Nov17   0:00 /usr/libexec/evolution-addressbook-factory
pari        2265  0.0  0.1 309784  6660 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-goa-volume-monitor
pari        2296  0.0  0.1 236780  7684 ?        Sl   Nov17   0:00 /usr/libexec/ibus-engine-simple
pari        2320  0.0  0.1 230120  6084 ?        Ssl  Nov17   0:00 /usr/libexec/dconf-service
pari        2331  0.0  0.6 2592992 27636 ?       Sl   Nov17   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
pari        2341  0.0  0.2 609456  9244 ?        Sl   Nov17   0:00 /usr/libexec/gvfsd-trash --spawner :1.20 /org/gtk/gvfs/exec_spaw/0
pari        2365  0.0  0.6 882072 26992 ?        SNsl Nov17   0:00 /usr/libexec/tracker-miner-fs-3
pari        2441  0.0  0.3 701652 14732 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-desktop-portal
pari        2446  0.0  1.0 556256 41304 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-desktop-portal-gnome
pari        2447  0.0  0.1 236284  6516 ?        Ssl  Nov17   0:00 /usr/libexec/gvfsd-metadata
pari        2465  0.0  0.6 417780 26640 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-desktop-portal-gtk
pari        2496  0.0  0.1 303956  6544 ?        Ssl  Nov17   0:00 /snap/snapd-desktop-integration/391/usr/bin/user-session-helper /snap/snapd-desktop-integration/391/usr/bin/snapd-desktop-integration
pari        2547  0.0  0.9 486948 39196 ?        Sl   Nov17   0:00 /snap/snapd-desktop-integration/391/usr/bin/snapd-desktop-integration
pari        2703  0.0  1.3 555996 55700 ?        Ssl  Nov17   0:00 /usr/libexec/gnome-terminal-server
pari        2709  0.0  1.7 245028 68832 ?        S    Nov17   0:00 /usr/bin/Xwayland :0 -rootless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.55WXY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients
pari        2711  0.0  0.1  11276  5540 pts/0    Ss   Nov17   0:00 bash
pari        2724  0.0  2.1 642300 84888 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-xsettings
pari        2745  0.0  0.6 267152 25176 ?        Sl   Nov17   0:00 /usr/libexec/ibus-x11
pari        2751  0.0  2.5 1119292 103996 ?      Sl   Nov17   0:00 /usr/libexec/mutter-x11-frames
pari        2790  0.0  0.8 495552 34124 ?        Sl   Nov17   0:00 /usr/bin/update-notifier
pari        3245  0.3  0.1  15352  7440 ?        S    Nov17   0:11 sshd: pari@pts/2
pari        3246  0.0  0.1  11364  5648 pts/2    Ss   Nov17   0:00 -bash
pari       16051  0.0  0.1  13632  5028 pts/2    R+   00:53   0:00 ps aux
pari       16052  0.0  0.0   9288  2716 pts/2    S+   00:53   0:00 grep --color=auto -E ^pari[[:space:]]
```

## Task 2.3 - Show all processes except root
```bash
ps aux | grep -v '^root[[:space:]]'
```
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     386  0.0  0.1  17616  7780 ?        Ss   Nov17   0:01 /usr/lib/systemd/systemd-oomd
systemd+     394  0.0  0.3  21480 13720 ?        Ss   Nov17   0:00 /usr/lib/systemd/systemd-resolved
systemd+     400  0.0  0.2  91068  8068 ?        Ssl  Nov17   0:00 /usr/lib/systemd/systemd-timesyncd
avahi        567  0.0  0.1   8692  4740 ?        Ss   Nov17   0:00 avahi-daemon: running [pari-VirtualBox.local]
message+     568  0.0  0.1  12600  7964 ?        Ss   Nov17   0:01 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
gnome-r+     572  0.0  0.4 512900 17104 ?        Ssl  Nov17   0:00 /usr/libexec/gnome-remote-desktop-daemon --system
polkitd      593  0.0  0.3 391460 13052 ?        Ssl  Nov17   0:00 /usr/lib/polkit-1/polkitd --no-debug
avahi        682  0.0  0.0   8504  1740 ?        S    Nov17   0:00 avahi-daemon: chroot helper
syslog       690  0.0  0.1 222580  6284 ?        Ssl  Nov17   0:00 /usr/sbin/rsyslogd -n -iNONE
kernoops    1098  0.0  0.0  12760  2544 ?        Ss   Nov17   0:00 /usr/sbin/kerneloops --test
kernoops    1105  0.0  0.0  12760  2588 ?        Ss   Nov17   0:00 /usr/sbin/kerneloops
rtkit       1147  0.0  0.0  88492  3656 ?        SNsl Nov17   0:00 /usr/libexec/rtkit-daemon
colord      1274  0.0  0.3 320044 14904 ?        Ssl  Nov17   0:00 /usr/libexec/colord
pari        1645  0.0  0.3  21164 12616 ?        Ss   Nov17   0:00 /usr/lib/systemd/systemd --user
pari        1647  0.0  0.0  21488  3784 ?        S    Nov17   0:00 (sd-pam)
pari        1658  0.0  0.3 114392 13640 ?        Ssl  Nov17   0:00 /usr/bin/pipewire
pari        1660  0.0  0.1  97752  6192 ?        Ssl  Nov17   0:00 /usr/bin/pipewire -c filter-chain.conf
pari        1664  0.0  0.4 406912 19220 ?        Ssl  Nov17   0:00 /usr/bin/wireplumber
pari        1666  0.0  0.3 115196 12496 ?        Ssl  Nov17   0:00 /usr/bin/pipewire-pulse
pari        1671  0.0  0.2 316524 10628 ?        SLsl Nov17   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
pari        1678  0.0  0.1  10924  6728 ?        Ss   Nov17   0:00 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
pari        1710  0.0  0.1 758804  7792 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-document-portal
pari        1720  0.0  0.1 235680  6336 tty2     Ssl+ Nov17   0:00 /usr/libexec/gdm-wayland-session env GNOME_SHELL_SESSION_MODE=ubuntu /usr/bin/gnome-session --session=ubuntu
pari        1739  0.0  0.4 298236 16812 tty2     Sl+  Nov17   0:00 /usr/libexec/gnome-session-binary --session=ubuntu
pari        1747  0.0  0.1 309320  6392 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-permission-store
pari        1816  0.0  0.1 162668  7024 ?        Ssl  Nov17   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
pari        1817  0.0  0.1  91564  5824 ?        Ssl  Nov17   0:00 /usr/libexec/gnome-session-ctl --monitor
pari        1826  0.0  0.2 314288  8276 ?        Ssl  Nov17   0:00 /usr/libexec/gvfsd
pari        1844  0.0  0.1 534484  7420 ?        Sl   Nov17   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
pari        1848  0.0  0.4 667952 18676 ?        Ssl  Nov17   0:00 /usr/libexec/gnome-session-binary --systemd-service --session=ubuntu
pari        1884  0.0  0.2 382960  8112 ?        Sl   Nov17   0:00 /usr/libexec/at-spi-bus-launcher --launch-immediately
pari        1885  0.4  9.3 3974116 375204 ?      Ssl  Nov17   0:21 /usr/bin/gnome-shell
pari        1902  0.0  0.1   9504  5340 ?        S    Nov17   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
pari        1955  0.0  0.1 236088  7896 ?        Sl   Nov17   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
pari        1962  0.0  0.4 654752 18124 ?        Sl   Nov17   0:00 /usr/libexec/gnome-shell-calendar-server
pari        1980  0.0  1.0 1279880 43724 ?       Ssl  Nov17   0:00 /usr/libexec/evolution-source-registry
pari        1991  0.0  0.3 388652 12356 ?        Ssl  Nov17   0:00 /usr/bin/ibus-daemon --panel disable
pari        1992  0.0  0.1 383532  6840 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-a11y-settings
pari        1993  0.0  0.6 2584776 27196 ?       Sl   Nov17   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
pari        1994  0.0  0.5 412924 21084 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-color
pari        1995  0.0  0.3 431684 12552 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-datetime
pari        1996  0.0  0.2 458876  8072 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-housekeeping
pari        1997  0.0  0.5 485516 20568 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-keyboard
pari        1999  0.0  0.6 741640 26024 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-media-keys
pari        2000  0.0  0.6 523552 24836 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-power
pari        2001  0.0  0.3 323776 12060 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-print-notifications
pari        2002  0.0  0.1 531096  6932 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-rfkill
pari        2003  0.0  0.1 309572  6360 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-screensaver-proxy
pari        2004  0.0  0.2 543208 11868 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-sharing
pari        2005  0.0  0.2 459564  8504 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-smartcard
pari        2008  0.0  0.2 393656 10140 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-sound
pari        2009  0.0  0.5 412760 21256 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-wacom
pari        2025  0.0  1.5 830928 61176 ?        Sl   Nov17   0:00 /usr/libexec/evolution-data-server/evolution-alarm-notify
pari        2059  0.0  0.1 305504  7524 ?        Sl   Nov17   0:00 /usr/libexec/gsd-disk-utility-notify
pari        2153  0.0  0.2 389332 10820 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
pari        2184  0.0  0.1 310476  7488 ?        Sl   Nov17   0:00 /usr/libexec/ibus-dconf
pari        2186  0.0  0.3 416240 15496 ?        Sl   Nov17   0:00 /usr/libexec/gsd-printer
pari        2187  0.0  0.7 421512 30336 ?        Sl   Nov17   0:01 /usr/libexec/ibus-extension-gtk3
pari        2199  0.0  0.1 310436  7408 ?        Sl   Nov17   0:00 /usr/libexec/ibus-portal
pari        2206  0.0  0.6 546620 24724 ?        Sl   Nov17   0:00 /usr/libexec/goa-daemon
pari        2226  0.0  0.2 389136  9544 ?        Sl   Nov17   0:00 /usr/libexec/goa-identity-service
pari        2234  0.0  0.6 890752 25044 ?        Ssl  Nov17   0:00 /usr/libexec/evolution-calendar-factory
pari        2236  0.0  0.1 310772  7248 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
pari        2247  0.0  0.1 309804  6656 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-mtp-volume-monitor
pari        2254  0.0  0.2 389392  8264 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-afc-volume-monitor
pari        2260  0.0  0.7 825460 30748 ?        Ssl  Nov17   0:00 /usr/libexec/evolution-addressbook-factory
pari        2265  0.0  0.1 309784  6660 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-goa-volume-monitor
pari        2296  0.0  0.1 236780  7684 ?        Sl   Nov17   0:00 /usr/libexec/ibus-engine-simple
pari        2320  0.0  0.1 230120  6084 ?        Ssl  Nov17   0:00 /usr/libexec/dconf-service
pari        2331  0.0  0.6 2592992 27636 ?       Sl   Nov17   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
pari        2341  0.0  0.2 609456  9244 ?        Sl   Nov17   0:00 /usr/libexec/gvfsd-trash --spawner :1.20 /org/gtk/gvfs/exec_spaw/0
pari        2365  0.0  0.6 882072 26992 ?        SNsl Nov17   0:00 /usr/libexec/tracker-miner-fs-3
pari        2441  0.0  0.3 701652 14732 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-desktop-portal
pari        2446  0.0  1.0 556256 41304 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-desktop-portal-gnome
pari        2447  0.0  0.1 236284  6516 ?        Ssl  Nov17   0:00 /usr/libexec/gvfsd-metadata
pari        2465  0.0  0.6 417780 26640 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-desktop-portal-gtk
pari        2496  0.0  0.1 303956  6544 ?        Ssl  Nov17   0:00 /snap/snapd-desktop-integration/391/usr/bin/user-session-helper /snap/snapd-desktop-integration/391/usr/bin/snapd-desktop-integration
pari        2547  0.0  0.9 486948 39196 ?        Sl   Nov17   0:00 /snap/snapd-desktop-integration/391/usr/bin/snapd-desktop-integration
pari        2703  0.0  1.3 555996 55700 ?        Ssl  Nov17   0:00 /usr/libexec/gnome-terminal-server
pari        2709  0.0  1.7 245028 68832 ?        S    Nov17   0:00 /usr/bin/Xwayland :0 -rootless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.55WXY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients
pari        2711  0.0  0.1  11276  5540 pts/0    Ss   Nov17   0:00 bash
pari        2724  0.0  2.1 642300 84888 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-xsettings
pari        2745  0.0  0.6 267152 25176 ?        Sl   Nov17   0:00 /usr/libexec/ibus-x11
pari        2751  0.0  2.5 1119292 103996 ?      Sl   Nov17   0:00 /usr/libexec/mutter-x11-frames
pari        2790  0.0  0.8 495552 34124 ?        Sl   Nov17   0:00 /usr/bin/update-notifier
pari        3245  0.3  0.1  15352  7440 ?        S    Nov17   0:11 sshd: pari@pts/2
pari        3246  0.0  0.1  11364  5648 pts/2    Ss   Nov17   0:00 -bash
lp          3395  0.0  0.1  16852  7192 ?        S    00:00   0:00 /usr/lib/cups/notifier/dbus dbus://
cups-br+    3397  0.0  0.5 268508 20540 ?        Ssl  00:00   0:00 /usr/sbin/cups-browsed
pari       16053  0.0  0.1  13632  5060 pts/2    R+   00:53   0:00 ps aux
pari       16054  0.0  0.0   9288  2712 pts/2    S+   00:53   0:00 grep --color=auto -v ^root[[:space:]]
```

## Task 2.4 - Filter out kworker and irq processes
```bash
ps aux | grep -Ev 'kworker|irq'
```
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.3  22980 14024 ?        Ss   Nov17   0:02 /usr/lib/systemd/systemd --system --deserialize=109 splash
root           2  0.0  0.0      0     0 ?        S    Nov17   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    Nov17   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    Nov17   0:01 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    Nov17   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    Nov17   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    Nov17   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    Nov17   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    Nov17   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    Nov17   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    Nov17   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    Nov17   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    Nov17   0:00 [migration/1]
root          30  0.0  0.0      0     0 ?        S    Nov17   0:00 [kdevtmpfs]
root          32  0.0  0.0      0     0 ?        I    Nov17   0:00 [rcu_tasks_kthread]
root          33  0.0  0.0      0     0 ?        I    Nov17   0:00 [rcu_tasks_rude_kthread]
root          34  0.0  0.0      0     0 ?        S    Nov17   0:00 [kauditd]
root          35  0.0  0.0      0     0 ?        S    Nov17   0:00 [khungtaskd]
root          36  0.0  0.0      0     0 ?        S    Nov17   0:00 [oom_reaper]
root          39  0.0  0.0      0     0 ?        S    Nov17   0:00 [kcompactd0]
root          41  0.0  0.0      0     0 ?        SN   Nov17   0:00 [ksmd]
root          42  0.0  0.0      0     0 ?        SN   Nov17   0:00 [khugepaged]
root          55  0.0  0.0      0     0 ?        S    Nov17   0:00 [watchdogd]
root          58  0.0  0.0      0     0 ?        S    Nov17   0:00 [kswapd0]
root          59  0.0  0.0      0     0 ?        S    Nov17   0:00 [ecryptfs-kthread]
root          62  0.0  0.0      0     0 ?        S    Nov17   0:00 [scsi_eh_0]
root          64  0.0  0.0      0     0 ?        S    Nov17   0:00 [scsi_eh_1]
root         152  0.0  0.0      0     0 ?        S    Nov17   0:00 [scsi_eh_2]
root         197  0.0  0.0      0     0 ?        S    Nov17   0:00 [jbd2/sda2-8]
root         247  0.0  0.4  50860 17948 ?        S<s  Nov17   0:00 /usr/lib/systemd/systemd-journald
root         320  0.0  0.2  30872  8916 ?        Ss   Nov17   0:00 /usr/lib/systemd/systemd-udevd
root         380  0.0  0.0      0     0 ?        S    Nov17   0:00 [psimon]
systemd+     386  0.0  0.1  17616  7780 ?        Ss   Nov17   0:01 /usr/lib/systemd/systemd-oomd
systemd+     394  0.0  0.3  21480 13720 ?        Ss   Nov17   0:00 /usr/lib/systemd/systemd-resolved
systemd+     400  0.0  0.2  91068  8068 ?        Ssl  Nov17   0:00 /usr/lib/systemd/systemd-timesyncd
avahi        567  0.0  0.1   8692  4740 ?        Ss   Nov17   0:00 avahi-daemon: running [pari-VirtualBox.local]
message+     568  0.0  0.1  12600  7964 ?        Ss   Nov17   0:01 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
gnome-r+     572  0.0  0.4 512900 17104 ?        Ssl  Nov17   0:00 /usr/libexec/gnome-remote-desktop-daemon --system
polkitd      593  0.0  0.3 391460 13052 ?        Ssl  Nov17   0:00 /usr/lib/polkit-1/polkitd --no-debug
root         595  0.0  0.1 313392  7572 ?        Ssl  Nov17   0:00 /usr/libexec/power-profiles-daemon
root         602  0.0  1.0 1850896 41716 ?       Ssl  Nov17   0:00 /usr/lib/snapd/snapd
root         614  0.0  0.2 313308  8120 ?        Ssl  Nov17   0:00 /usr/libexec/accounts-daemon
root         623  0.0  0.0   9436  3036 ?        Ss   Nov17   0:00 /usr/sbin/cron -f -P
root         624  0.0  0.1 309904  7248 ?        Ssl  Nov17   0:00 /usr/libexec/switcheroo-control
root         644  0.0  0.2  18180  9204 ?        Ss   Nov17   0:00 /usr/lib/systemd/systemd-logind
root         646  0.0  0.3 469484 14248 ?        Ssl  Nov17   0:00 /usr/libexec/udisks2/udisksd
avahi        682  0.0  0.0   8504  1740 ?        S    Nov17   0:00 avahi-daemon: chroot helper
syslog       690  0.0  0.1 222580  6284 ?        Ssl  Nov17   0:00 /usr/sbin/rsyslogd -n -iNONE
root         726  0.0  0.4 336364 19796 ?        Ssl  Nov17   0:00 /usr/sbin/NetworkManager --no-daemon
root         731  0.0  0.1  17400  6712 ?        Ss   Nov17   0:00 /usr/sbin/wpa_supplicant -u -s -O DIR=/run/wpa_supplicant GROUP=netdev
root         792  0.0  0.3 392112 13324 ?        Ssl  Nov17   0:00 /usr/sbin/ModemManager
root        1074  0.0  0.5 112280 23412 ?        Ssl  Nov17   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root        1080  0.0  0.2  12036  8380 ?        Ss   Nov17   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        1086  0.0  0.2 314840  9620 ?        Ssl  Nov17   0:00 /usr/sbin/gdm3
kernoops    1098  0.0  0.0  12760  2544 ?        Ss   Nov17   0:00 /usr/sbin/kerneloops --test
kernoops    1105  0.0  0.0  12760  2588 ?        Ss   Nov17   0:00 /usr/sbin/kerneloops
rtkit       1147  0.0  0.0  88492  3656 ?        SNsl Nov17   0:00 /usr/libexec/rtkit-daemon
colord      1274  0.0  0.3 320044 14904 ?        Ssl  Nov17   0:00 /usr/libexec/colord
root        1309  0.0  0.2 316904  9488 ?        Ssl  Nov17   0:00 /usr/libexec/upowerd
root        1629  0.0  0.2 242600 10600 ?        Sl   Nov17   0:00 gdm-session-worker [pam/gdm-password]
pari        1645  0.0  0.3  21164 12616 ?        Ss   Nov17   0:00 /usr/lib/systemd/systemd --user
pari        1647  0.0  0.0  21488  3784 ?        S    Nov17   0:00 (sd-pam)
pari        1658  0.0  0.3 114392 13640 ?        Ssl  Nov17   0:00 /usr/bin/pipewire
pari        1660  0.0  0.1  97752  6192 ?        Ssl  Nov17   0:00 /usr/bin/pipewire -c filter-chain.conf
pari        1664  0.0  0.4 406912 19220 ?        Ssl  Nov17   0:00 /usr/bin/wireplumber
pari        1666  0.0  0.3 115196 12496 ?        Ssl  Nov17   0:00 /usr/bin/pipewire-pulse
pari        1671  0.0  0.2 316524 10628 ?        SLsl Nov17   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
pari        1678  0.0  0.1  10924  6728 ?        Ss   Nov17   0:00 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
pari        1710  0.0  0.1 758804  7792 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-document-portal
pari        1720  0.0  0.1 235680  6336 tty2     Ssl+ Nov17   0:00 /usr/libexec/gdm-wayland-session env GNOME_SHELL_SESSION_MODE=ubuntu /usr/bin/gnome-session --session=ubuntu
pari        1739  0.0  0.4 298236 16812 tty2     Sl+  Nov17   0:00 /usr/libexec/gnome-session-binary --session=ubuntu
pari        1747  0.0  0.1 309320  6392 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-permission-store
root        1774  0.0  0.0   2716  2096 ?        Ss   Nov17   0:00 fusermount3 -o rw,nosuid,nodev,fsname=portal,auto_unmount,subtype=portal -- /run/user/1000/doc
pari        1816  0.0  0.1 162668  7024 ?        Ssl  Nov17   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
pari        1817  0.0  0.1  91564  5824 ?        Ssl  Nov17   0:00 /usr/libexec/gnome-session-ctl --monitor
pari        1826  0.0  0.2 314288  8276 ?        Ssl  Nov17   0:00 /usr/libexec/gvfsd
pari        1844  0.0  0.1 534484  7420 ?        Sl   Nov17   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
pari        1848  0.0  0.4 667952 18676 ?        Ssl  Nov17   0:00 /usr/libexec/gnome-session-binary --systemd-service --session=ubuntu
pari        1884  0.0  0.2 382960  8112 ?        Sl   Nov17   0:00 /usr/libexec/at-spi-bus-launcher --launch-immediately
pari        1885  0.4  9.3 3974116 375204 ?      Ssl  Nov17   0:21 /usr/bin/gnome-shell
pari        1902  0.0  0.1   9504  5340 ?        S    Nov17   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
pari        1955  0.0  0.1 236088  7896 ?        Sl   Nov17   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
pari        1962  0.0  0.4 654752 18124 ?        Sl   Nov17   0:00 /usr/libexec/gnome-shell-calendar-server
pari        1980  0.0  1.0 1279880 43724 ?       Ssl  Nov17   0:00 /usr/libexec/evolution-source-registry
pari        1991  0.0  0.3 388652 12356 ?        Ssl  Nov17   0:00 /usr/bin/ibus-daemon --panel disable
pari        1992  0.0  0.1 383532  6840 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-a11y-settings
pari        1993  0.0  0.6 2584776 27196 ?       Sl   Nov17   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
pari        1994  0.0  0.5 412924 21084 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-color
pari        1995  0.0  0.3 431684 12552 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-datetime
pari        1996  0.0  0.2 458876  8072 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-housekeeping
pari        1997  0.0  0.5 485516 20568 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-keyboard
pari        1999  0.0  0.6 741640 26024 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-media-keys
pari        2000  0.0  0.6 523552 24836 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-power
pari        2001  0.0  0.3 323776 12060 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-print-notifications
pari        2002  0.0  0.1 531096  6932 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-rfkill
pari        2003  0.0  0.1 309572  6360 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-screensaver-proxy
pari        2004  0.0  0.2 543208 11868 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-sharing
pari        2005  0.0  0.2 459564  8504 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-smartcard
pari        2008  0.0  0.2 393656 10140 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-sound
pari        2009  0.0  0.5 412760 21256 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-wacom
pari        2025  0.0  1.5 830928 61176 ?        Sl   Nov17   0:00 /usr/libexec/evolution-data-server/evolution-alarm-notify
pari        2059  0.0  0.1 305504  7524 ?        Sl   Nov17   0:00 /usr/libexec/gsd-disk-utility-notify
pari        2153  0.0  0.2 389332 10820 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
pari        2184  0.0  0.1 310476  7488 ?        Sl   Nov17   0:00 /usr/libexec/ibus-dconf
pari        2186  0.0  0.3 416240 15496 ?        Sl   Nov17   0:00 /usr/libexec/gsd-printer
pari        2187  0.0  0.7 421512 30336 ?        Sl   Nov17   0:01 /usr/libexec/ibus-extension-gtk3
pari        2199  0.0  0.1 310436  7408 ?        Sl   Nov17   0:00 /usr/libexec/ibus-portal
pari        2206  0.0  0.6 546620 24724 ?        Sl   Nov17   0:00 /usr/libexec/goa-daemon
pari        2226  0.0  0.2 389136  9544 ?        Sl   Nov17   0:00 /usr/libexec/goa-identity-service
pari        2234  0.0  0.6 890752 25044 ?        Ssl  Nov17   0:00 /usr/libexec/evolution-calendar-factory
pari        2236  0.0  0.1 310772  7248 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
pari        2247  0.0  0.1 309804  6656 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-mtp-volume-monitor
pari        2254  0.0  0.2 389392  8264 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-afc-volume-monitor
pari        2260  0.0  0.7 825460 30748 ?        Ssl  Nov17   0:00 /usr/libexec/evolution-addressbook-factory
pari        2265  0.0  0.1 309784  6660 ?        Ssl  Nov17   0:00 /usr/libexec/gvfs-goa-volume-monitor
pari        2296  0.0  0.1 236780  7684 ?        Sl   Nov17   0:00 /usr/libexec/ibus-engine-simple
pari        2320  0.0  0.1 230120  6084 ?        Ssl  Nov17   0:00 /usr/libexec/dconf-service
pari        2331  0.0  0.6 2592992 27636 ?       Sl   Nov17   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
pari        2341  0.0  0.2 609456  9244 ?        Sl   Nov17   0:00 /usr/libexec/gvfsd-trash --spawner :1.20 /org/gtk/gvfs/exec_spaw/0
pari        2365  0.0  0.6 882072 26992 ?        SNsl Nov17   0:00 /usr/libexec/tracker-miner-fs-3
pari        2441  0.0  0.3 701652 14732 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-desktop-portal
pari        2446  0.0  1.0 556256 41304 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-desktop-portal-gnome
pari        2447  0.0  0.1 236284  6516 ?        Ssl  Nov17   0:00 /usr/libexec/gvfsd-metadata
pari        2465  0.0  0.6 417780 26640 ?        Ssl  Nov17   0:00 /usr/libexec/xdg-desktop-portal-gtk
pari        2496  0.0  0.1 303956  6544 ?        Ssl  Nov17   0:00 /snap/snapd-desktop-integration/391/usr/bin/user-session-helper /snap/snapd-desktop-integration/391/usr/bin/snapd-desktop-integration
pari        2547  0.0  0.9 486948 39196 ?        Sl   Nov17   0:00 /snap/snapd-desktop-integration/391/usr/bin/snapd-desktop-integration
pari        2703  0.0  1.3 555996 55700 ?        Ssl  Nov17   0:00 /usr/libexec/gnome-terminal-server
pari        2709  0.0  1.7 245028 68832 ?        S    Nov17   0:00 /usr/bin/Xwayland :0 -rootless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.55WXY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients
pari        2711  0.0  0.1  11276  5540 pts/0    Ss   Nov17   0:00 bash
pari        2724  0.0  2.1 642300 84888 ?        Ssl  Nov17   0:00 /usr/libexec/gsd-xsettings
pari        2745  0.0  0.6 267152 25176 ?        Sl   Nov17   0:00 /usr/libexec/ibus-x11
pari        2751  0.0  2.5 1119292 103996 ?      Sl   Nov17   0:00 /usr/libexec/mutter-x11-frames
root        2789  0.0  0.1  19836  7772 pts/0    S+   Nov17   0:00 sudo systemctl status ssh
pari        2790  0.0  0.8 495552 34124 ?        Sl   Nov17   0:00 /usr/bin/update-notifier
root        2841  0.0  0.0  19836  2880 pts/1    Ss   Nov17   0:00 sudo systemctl status ssh
root        2842  0.0  0.1  19952  6636 pts/1    S+   Nov17   0:00 systemctl status ssh
root        2843  0.0  0.0   8684  2724 pts/1    S+   Nov17   0:00 less
root        2955  0.0  4.9 638900 200116 ?       Ssl  Nov17   0:02 /usr/libexec/fwupd/fwupd
root        3200  0.0  0.2  15192 10848 ?        Ss   Nov17   0:00 sshd: pari [priv]
pari        3245  0.3  0.1  15352  7440 ?        S    Nov17   0:11 sshd: pari@pts/2
pari        3246  0.0  0.1  11364  5648 pts/2    Ss   Nov17   0:00 -bash
root        3384  0.0  0.3  38268 12548 ?        Ss   00:00   0:00 /usr/sbin/cupsd -l
lp          3395  0.0  0.1  16852  7192 ?        S    00:00   0:00 /usr/lib/cups/notifier/dbus dbus://
cups-br+    3397  0.0  0.5 268508 20540 ?        Ssl  00:00   0:00 /usr/sbin/cups-browsed
root        5233  0.0  0.0      0     0 ?        S    00:21   0:00 [psimon]
pari       16055  0.0  0.1  13632  5044 pts/2    R+   00:53   0:00 ps aux
```
