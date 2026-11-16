# Lecture 5 - Task 2 Report
**Name:** swarnima-

## 1. Filter processes for user
```bash
ps aux | grep "swarnima+"
swarnim+   13442  0.0  0.0   6676  1940 pts/1    S+   22:05   0:00 grep --color=auto swarnima+
```

## 2. Strict regex filter for user
```bash
ps aux | grep -E "^swarnima\+"
```

## 3. Exclude root processes
```bash
ps aux | grep -vE "^root\b"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
message+     644  0.0  0.1  10924  5612 ?        Ss   18:27   0:01 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
lightdm      965  0.0  0.2  20524 11108 ?        Ss   18:27   0:00 /usr/lib/systemd/systemd --user
lightdm      966  0.0  0.0  22392  3436 ?        S    18:27   0:00 (sd-pam)
lightdm      977  0.0  0.6 1511956 27072 ?       S<sl 18:27   0:00 /usr/bin/pulseaudio --daemonize=no --log-target=journal
lightdm      979  0.0  0.2 314972  9388 ?        Ssl  18:27   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/111/keyring
lightdm      984  0.0  0.1   9772  4728 ?        Ss   18:27   0:00 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
lightdm      991  0.0  0.1 384352  7244 ?        Ssl  18:27   0:00 /usr/libexec/at-spi-bus-launcher
lightdm      999  0.0  0.1   9356  4332 ?        S    18:27   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/111/at-spi/bus
lightdm     1007  0.0  0.1 312560  7360 ?        Ssl  18:27   0:00 /usr/libexec/gvfsd
lightdm     1016  0.0  0.1 230668  5492 ?        Ssl  18:27   0:00 /usr/libexec/dconf-service
lightdm     1023  0.0  0.1 237808  7152 ?        Sl   18:27   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
lightdm     1026  0.0  0.2 334088 11416 ?        Ssl  18:27   0:00 /usr/lib/aarch64-linux-gnu/indicator-application/indicator-application-service
lightdm     1030  0.0  0.1 456712  6732 ?        Ssl  18:27   0:00 /usr/lib/aarch64-linux-gnu/indicator-power/indicator-power-service
lightdm     1034  0.0  0.4 519348 16036 ?        Ssl  18:27   0:00 /usr/lib/aarch64-linux-gnu/indicator-datetime/indicator-datetime-service
lightdm     1036  0.0  0.1 867728  7768 ?        Ssl  18:27   0:00 /usr/lib/aarch64-linux-gnu/indicator-session/indicator-session-service
lightdm     1039  0.0  0.2 920452 11048 ?        Ssl  18:27   0:00 /usr/lib/aarch64-linux-gnu/indicator-sound/indicator-sound-service
swarnim+    1288  0.0  0.2  20348 10960 ?        Ss   18:27   0:00 /usr/lib/systemd/systemd --user
swarnim+    1289  0.0  0.0  22392  3436 ?        S    18:27   0:00 (sd-pam)
swarnim+    1300  0.0  0.6 463384 27236 ?        S<sl 18:27   0:00 /usr/bin/pulseaudio --daemonize=no --log-target=journal
swarnim+    1301  0.0  0.1   8364  5252 tty3     S+   18:27   0:00 -bash
swarnim+    1304  0.0  0.1   9356  4328 ?        Ss   18:27   0:00 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
lightdm     1376  0.0  0.0   2380  1592 ?        Ss   18:34   0:00 /bin/sh /usr/lib/lightdm/lightdm-greeter-session /usr/sbin/unity-greeter
lightdm     1377  0.0  2.3 1153352 95072 ?       Sl   18:34   0:01 /usr/sbin/unity-greeter
lightdm     1387  0.0  0.6 576524 27868 ?        Sl   18:34   0:00 nm-applet
lightdm     1389  0.0  0.8 881940 33580 ?        Sl   18:34   0:00 /usr/lib/unity-settings-daemon/unity-settings-daemon
swarnim+    1626  0.0  0.1  16584  6528 ?        S    18:43   0:11 sshd: swarnima-@pts/0
swarnim+    1627  0.0  0.1   8904  5488 pts/0    Ss+  18:43   0:01 -bash
swarnim+    2204  0.0  0.0   7448  3088 ?        Ss   19:10   0:00 ssh-agent -s
swarnim+    2216  0.0  0.0   7448  3104 ?        Ss   19:17   0:00 ssh-agent -s
swarnim+    2340  0.0  0.0   7448  3180 ?        Ss   19:57   0:00 ssh-agent -s
swarnim+    2853  0.0  0.1  16588  6536 ?        R    21:54   0:00 sshd: swarnima-@pts/1
swarnim+    2854  0.0  0.1   8880  5460 pts/1    Ss   21:54   0:00 -bash
rtkit      11833  0.0  0.0  22852  3096 ?        SNsl 21:57   0:00 /usr/libexec/rtkit-daemon
syslog     11889  0.0  0.1 222812  4524 ?        Ssl  21:57   0:00 /usr/sbin/rsyslogd -n -iNONE
avahi      11990  0.0  0.0   8644  3772 ?        Ss   21:57   0:00 avahi-daemon: running [ict.local]
avahi      11992  0.0  0.0   8380  1572 ?        S    21:57   0:00 avahi-daemon: chroot helper
colord     12840  0.0  0.3 319448 13652 ?        Ssl  21:58   0:00 /usr/libexec/colord
polkitd    12882  0.0  0.2 385372 10064 ?        Ssl  21:58   0:00 /usr/lib/polkit-1/polkitd --no-debug
systemd+   12900  0.0  0.3  21432 12512 ?        Ss   21:58   0:00 /usr/lib/systemd/systemd-resolved
systemd+   12901  0.0  0.1  90956  7220 ?        Ssl  21:58   0:00 /usr/lib/systemd/systemd-timesyncd
systemd+   12940  0.0  0.2  18776  8964 ?        Ss   21:58   0:00 /usr/lib/systemd/systemd-networkd
cups-br+   12945  0.0  0.4 272492 18848 ?        Ssl  21:58   0:00 /usr/sbin/cups-browsed
lightdm    13010  0.0  0.4 451740 17776 ?        Ssl  21:58   0:00 /usr/libexec/indicator-keyboard/indicator-keyboard-service --use-gtk
swarnim+   13445  0.0  0.1  11152  4048 pts/1    R+   22:05   0:00 ps aux
swarnim+   13446  0.0  0.0   6676  1940 pts/1    S+   22:05   0:00 grep --color=auto -vE ^root\b
```

## 4. Exclude kworker and irq processes
```bash
ps aux | grep -vE "kworker|irq"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.3  22300 13000 ?        Ss   18:27   0:03 /usr/lib/systemd/systemd --system --deserialize=129
root           2  0.0  0.0      0     0 ?        S    18:27   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    18:27   0:00 [pool_workqueue_release]
root          13  0.0  0.0      0     0 ?        I    18:27   0:00 [rcu_tasks_kthread]
root          14  0.0  0.0      0     0 ?        I    18:27   0:00 [rcu_tasks_rude_kthread]
root          15  0.0  0.0      0     0 ?        I    18:27   0:00 [rcu_tasks_trace_kthread]
root          17  0.0  0.0      0     0 ?        I    18:27   0:00 [rcu_preempt]
root          18  0.0  0.0      0     0 ?        S    18:27   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    18:27   0:00 [idle_inject/0]
root          20  0.0  0.0      0     0 ?        S    18:27   0:00 [cpuhp/0]
root          21  0.0  0.0      0     0 ?        S    18:27   0:00 [cpuhp/1]
root          22  0.0  0.0      0     0 ?        S    18:27   0:00 [idle_inject/1]
root          23  0.0  0.0      0     0 ?        S    18:27   0:00 [migration/1]
root          27  0.0  0.0      0     0 ?        S    18:27   0:00 [cpuhp/2]
root          28  0.0  0.0      0     0 ?        S    18:27   0:00 [idle_inject/2]
root          29  0.0  0.0      0     0 ?        S    18:27   0:00 [migration/2]
root          33  0.0  0.0      0     0 ?        S    18:27   0:00 [cpuhp/3]
root          34  0.0  0.0      0     0 ?        S    18:27   0:00 [idle_inject/3]
root          35  0.0  0.0      0     0 ?        S    18:27   0:00 [migration/3]
root          39  0.0  0.0      0     0 ?        S    18:27   0:00 [kdevtmpfs]
root          41  0.0  0.0      0     0 ?        S    18:27   0:00 [kauditd]
root          42  0.0  0.0      0     0 ?        S    18:27   0:00 [khungtaskd]
root          43  0.0  0.0      0     0 ?        S    18:27   0:00 [oom_reaper]
root          46  0.0  0.0      0     0 ?        S    18:27   0:01 [kcompactd0]
root          47  0.0  0.0      0     0 ?        SN   18:27   0:00 [ksmd]
root          49  0.0  0.0      0     0 ?        SN   18:27   0:00 [khugepaged]
root          60  0.0  0.0      0     0 ?        S    18:27   0:00 [watchdogd]
root          64  0.0  0.0      0     0 ?        S    18:27   0:00 [kswapd0]
root          65  0.0  0.0      0     0 ?        S    18:27   0:00 [ecryptfs-kthread]
root         142  0.0  0.0      0     0 ?        S    18:27   0:00 [hwrng]
root         240  0.0  0.0      0     0 ?        S    18:27   0:00 [jbd2/dm-0-8]
root         450  0.0  0.0      0     0 ?        S    18:27   0:00 [jbd2/vda2-8]
message+     644  0.0  0.1  10924  5612 ?        Ss   18:27   0:01 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         659  0.0  0.2  17936  8328 ?        Ss   18:27   0:00 /usr/lib/systemd/systemd-logind
root         689  0.0  0.4 337424 17636 ?        Ssl  18:27   0:00 /usr/sbin/NetworkManager --no-daemon
root         693  0.0  0.1  16748  5852 ?        Ss   18:27   0:00 /usr/sbin/wpa_supplicant -u -s -O DIR=/run/wpa_supplicant GROUP=netdev
root         808  0.0  0.0      0     0 ?        S    18:27   0:00 [scsi_eh_0]
root         810  0.0  0.0      0     0 ?        S    18:27   0:03 [usb-storage]
root         864  0.0  0.5 110532 22280 ?        Ssl  18:27   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root         886  0.0  0.0   5292  1940 ?        Ss+  18:27   0:00 /sbin/agetty -o -p -- \u --keep-baud 115200,57600,38400,9600 - vt220
root         891  0.0  0.0   5676  1768 tty1     Ss+  18:27   0:00 /sbin/agetty -o -p -- \u --noclear - linux
lightdm      965  0.0  0.2  20524 11108 ?        Ss   18:27   0:00 /usr/lib/systemd/systemd --user
lightdm      966  0.0  0.0  22392  3436 ?        S    18:27   0:00 (sd-pam)
lightdm      977  0.0  0.6 1511956 27072 ?       S<sl 18:27   0:00 /usr/bin/pulseaudio --daemonize=no --log-target=journal
lightdm      979  0.0  0.2 314972  9388 ?        Ssl  18:27   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/111/keyring
lightdm      984  0.0  0.1   9772  4728 ?        Ss   18:27   0:00 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
lightdm      991  0.0  0.1 384352  7244 ?        Ssl  18:27   0:00 /usr/libexec/at-spi-bus-launcher
lightdm      999  0.0  0.1   9356  4332 ?        S    18:27   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/111/at-spi/bus
lightdm     1007  0.0  0.1 312560  7360 ?        Ssl  18:27   0:00 /usr/libexec/gvfsd
lightdm     1016  0.0  0.1 230668  5492 ?        Ssl  18:27   0:00 /usr/libexec/dconf-service
lightdm     1023  0.0  0.1 237808  7152 ?        Sl   18:27   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
lightdm     1026  0.0  0.2 334088 11416 ?        Ssl  18:27   0:00 /usr/lib/aarch64-linux-gnu/indicator-application/indicator-application-service
lightdm     1030  0.0  0.1 456712  6732 ?        Ssl  18:27   0:00 /usr/lib/aarch64-linux-gnu/indicator-power/indicator-power-service
lightdm     1034  0.0  0.4 519348 16036 ?        Ssl  18:27   0:00 /usr/lib/aarch64-linux-gnu/indicator-datetime/indicator-datetime-service
lightdm     1036  0.0  0.1 867728  7768 ?        Ssl  18:27   0:00 /usr/lib/aarch64-linux-gnu/indicator-session/indicator-session-service
lightdm     1039  0.0  0.2 920452 11048 ?        Ssl  18:27   0:00 /usr/lib/aarch64-linux-gnu/indicator-sound/indicator-sound-service
root        1163  0.0  0.0   8708  3840 tty3     Ss   18:27   0:00 /bin/login -p --
swarnim+    1288  0.0  0.2  20348 10960 ?        Ss   18:27   0:00 /usr/lib/systemd/systemd --user
swarnim+    1289  0.0  0.0  22392  3436 ?        S    18:27   0:00 (sd-pam)
swarnim+    1300  0.0  0.6 463384 27236 ?        S<sl 18:27   0:00 /usr/bin/pulseaudio --daemonize=no --log-target=journal
swarnim+    1301  0.0  0.1   8364  5252 tty3     S+   18:27   0:00 -bash
swarnim+    1304  0.0  0.1   9356  4328 ?        Ss   18:27   0:00 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root        1347  0.0  0.1 381164  7072 ?        SLsl 18:34   0:00 /usr/sbin/lightdm
root        1355  0.0  2.3 915928 93452 tty7     Ssl+ 18:34   0:01 /usr/lib/xorg/Xorg -core :0 -seat seat0 -auth /var/run/lightdm/root/:0 -nolisten tcp vt7 -novtswitch
root        1371  0.0  0.1 236488  7556 ?        Sl   18:34   0:00 lightdm --session-child 17 20
lightdm     1376  0.0  0.0   2380  1592 ?        Ss   18:34   0:00 /bin/sh /usr/lib/lightdm/lightdm-greeter-session /usr/sbin/unity-greeter
lightdm     1377  0.0  2.3 1153352 95072 ?       Sl   18:34   0:01 /usr/sbin/unity-greeter
lightdm     1387  0.0  0.6 576524 27868 ?        Sl   18:34   0:00 nm-applet
lightdm     1389  0.0  0.8 881940 33580 ?        Sl   18:34   0:00 /usr/lib/unity-settings-daemon/unity-settings-daemon
root        1431  0.0  0.1 236900  7324 ?        Sl   18:34   0:00 lightdm --session-child 13 20
root        1458  0.0  0.1  15228  5628 ?        S    18:35   0:00 lightdm --session-child 13 24
root        1529  0.0  0.2  16360  8976 ?        Ss   18:43   0:00 sshd: swarnima- [priv]
swarnim+    1626  0.0  0.1  16584  6528 ?        S    18:43   0:11 sshd: swarnima-@pts/0
swarnim+    1627  0.0  0.1   8904  5488 pts/0    Ss+  18:43   0:01 -bash
swarnim+    2204  0.0  0.0   7448  3088 ?        Ss   19:10   0:00 ssh-agent -s
swarnim+    2216  0.0  0.0   7448  3104 ?        Ss   19:17   0:00 ssh-agent -s
swarnim+    2340  0.0  0.0   7448  3180 ?        Ss   19:57   0:00 ssh-agent -s
root        2755  0.0  0.2  16364  8988 ?        Ss   21:54   0:00 sshd: swarnima- [priv]
swarnim+    2853  0.0  0.1  16588  6536 ?        S    21:54   0:00 sshd: swarnima-@pts/1
swarnim+    2854  0.0  0.1   8880  5460 pts/1    Ss   21:54   0:00 -bash
rtkit      11833  0.0  0.0  22852  3096 ?        SNsl 21:57   0:00 /usr/libexec/rtkit-daemon
syslog     11889  0.0  0.1 222812  4524 ?        Ssl  21:57   0:00 /usr/sbin/rsyslogd -n -iNONE
avahi      11990  0.0  0.0   8644  3772 ?        Ss   21:57   0:00 avahi-daemon: running [ict.local]
avahi      11992  0.0  0.0   8380  1572 ?        S    21:57   0:00 avahi-daemon: chroot helper
root       12808  0.0  0.0      0     0 ?        S    21:58   0:00 [psimon]
root       12836  0.0  0.1 311436  7252 ?        Ssl  21:58   0:00 /usr/libexec/accounts-daemon
colord     12840  0.0  0.3 319448 13652 ?        Ssl  21:58   0:00 /usr/libexec/colord
root       12842  0.0  0.0   6748  2660 ?        Ss   21:58   0:00 /usr/sbin/cron -f -P
root       12867  0.0  1.0 483808 42320 ?        Ssl  21:58   0:00 /usr/libexec/fwupd/fwupd
root       12876  0.0  0.1  12112  7372 ?        Ss   21:58   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root       12878  0.0  0.6 224608 26108 ?        SLsl 21:58   0:00 /sbin/multipathd -d -s
polkitd    12882  0.0  0.2 385372 10064 ?        Ssl  21:58   0:00 /usr/lib/polkit-1/polkitd --no-debug
systemd+   12900  0.0  0.3  21432 12512 ?        Ss   21:58   0:00 /usr/lib/systemd/systemd-resolved
systemd+   12901  0.0  0.1  90956  7220 ?        Ssl  21:58   0:00 /usr/lib/systemd/systemd-timesyncd
root       12902  0.0  0.1  28612  6392 ?        Ss   21:58   0:00 /usr/lib/systemd/systemd-udevd
root       12903  0.0  0.3 472588 12772 ?        Ssl  21:58   0:00 /usr/libexec/udisks2/udisksd
root       12918  0.0  0.2 314956  8684 ?        Ssl  21:58   0:00 /usr/libexec/upowerd
root       12923  0.0  0.3  34000 12476 ?        S<s  21:58   0:00 /usr/lib/systemd/systemd-journald
root       12938  0.0  0.2  40984 11384 ?        Ss   21:58   0:00 /usr/sbin/cupsd -l
root       12939  0.0  0.3 398872 12020 ?        Ssl  21:58   0:00 /usr/sbin/ModemManager
systemd+   12940  0.0  0.2  18776  8964 ?        Ss   21:58   0:00 /usr/lib/systemd/systemd-networkd
root       12941  0.0  0.0      0     0 ?        S    21:58   0:00 [psimon]
cups-br+   12945  0.0  0.4 272492 18848 ?        Ssl  21:58   0:00 /usr/sbin/cups-browsed
lightdm    13010  0.0  0.4 451740 17776 ?        Ssl  21:58   0:00 /usr/libexec/indicator-keyboard/indicator-keyboard-service --use-gtk
swarnim+   13447  0.0  0.1  11152  4040 pts/1    R+   22:05   0:00 ps aux
```
