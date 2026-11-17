# Lecture 5 - Task 3: Data Manipulation
**Username:** vboxuser

## Part A: Working with sed

### 1. Replace root with ROOT
```bash
vboxuser@Ubuntu:~/ICT_WiSe26-27/Lecture_5$ sed 's/root/ROOT/g' processes.log
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT            1  0.7  0.1  27004 17276 ?        Ss   14:47   0:08 /usr/lib/systemd/systemd --switched-ROOT --system --deserialize=56
ROOT            2  0.0  0.0      0     0 ?        S    14:47   0:00 [kthreadd]
ROOT            3  0.0  0.0      0     0 ?        S    14:47   0:00 [pool_workqueue_release]
ROOT            4  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-rcu_gp]
ROOT            5  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-sync_wq]
ROOT            6  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT            7  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-slub_flushwq]
ROOT            8  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-netns]
ROOT            9  0.0  0.0      0     0 ?        I    14:47   0:00 [kworker/0:0-events]
ROOT           10  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/0:0H-kblockd]
ROOT           13  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-mm_percpu_wq]
ROOT           14  0.0  0.0      0     0 ?        S    14:47   0:00 [ksoftirqd/0]
ROOT           15  0.1  0.0      0     0 ?        I    14:47   0:01 [rcu_preempt]
ROOT           16  0.0  0.0      0     0 ?        S    14:47   0:00 [rcu_exp_par_gp_kthread_worker/0]
ROOT           17  0.0  0.0      0     0 ?        S    14:47   0:00 [rcu_exp_gp_kthread_worker]
ROOT           18  0.0  0.0      0     0 ?        S    14:47   0:00 [migration/0]
ROOT           19  0.0  0.0      0     0 ?        S    14:47   0:00 [kprobe-optimizer]
ROOT           20  0.0  0.0      0     0 ?        S    14:47   0:00 [idle_inject/0]
ROOT           21  0.0  0.0      0     0 ?        S    14:47   0:00 [cpuhp/0]
ROOT           22  0.0  0.0      0     0 ?        S    14:47   0:00 [cpuhp/1]
ROOT           23  0.0  0.0      0     0 ?        S    14:47   0:00 [idle_inject/1]
ROOT           24  0.0  0.0      0     0 ?        S    14:47   0:00 [migration/1]
ROOT           25  0.0  0.0      0     0 ?        S    14:47   0:00 [ksoftirqd/1]
ROOT           26  0.0  0.0      0     0 ?        I    14:47   0:00 [kworker/1:0-mm_percpu_wq]
ROOT           27  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/1:0H-kblockd]
ROOT           28  0.0  0.0      0     0 ?        S    14:47   0:00 [cpuhp/2]
ROOT           29  0.0  0.0      0     0 ?        S    14:47   0:00 [idle_inject/2]
ROOT           30  0.0  0.0      0     0 ?        S    14:47   0:00 [migration/2]
ROOT           31  0.1  0.0      0     0 ?        S    14:47   0:01 [ksoftirqd/2]
ROOT           33  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/2:0H-kblockd]
ROOT           34  0.0  0.0      0     0 ?        S    14:47   0:00 [cpuhp/3]
ROOT           35  0.0  0.0      0     0 ?        S    14:47   0:00 [idle_inject/3]
ROOT           36  0.0  0.0      0     0 ?        S    14:47   0:00 [migration/3]
ROOT           37  0.0  0.0      0     0 ?        S    14:47   0:00 [ksoftirqd/3]
ROOT           38  0.0  0.0      0     0 ?        I    14:47   0:00 [kworker/3:0-mm_percpu_wq]
ROOT           39  0.1  0.0      0     0 ?        I<   14:47   0:01 [kworker/3:0H-kblockd]
ROOT           40  0.0  0.0      0     0 ?        S    14:47   0:00 [cpuhp/4]
ROOT           41  0.0  0.0      0     0 ?        S    14:47   0:00 [idle_inject/4]
ROOT           42  0.0  0.0      0     0 ?        S    14:47   0:00 [migration/4]
ROOT           43  0.0  0.0      0     0 ?        S    14:47   0:00 [ksoftirqd/4]
ROOT           45  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/4:0H-kblockd]
ROOT           46  0.0  0.0      0     0 ?        S    14:47   0:00 [cpuhp/5]
ROOT           47  0.0  0.0      0     0 ?        S    14:47   0:00 [idle_inject/5]
ROOT           48  0.0  0.0      0     0 ?        S    14:47   0:00 [migration/5]
ROOT           49  0.0  0.0      0     0 ?        S    14:47   0:00 [ksoftirqd/5]
ROOT           51  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/5:0H-kblockd]
ROOT           52  0.0  0.0      0     0 ?        S    14:47   0:00 [kdevtmpfs]
ROOT           53  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-inet_frag_wq]
ROOT           54  0.0  0.0      0     0 ?        I    14:47   0:00 [rcu_tasks_kthread]
ROOT           55  0.0  0.0      0     0 ?        I    14:47   0:00 [rcu_tasks_rude_kthread]
ROOT           56  0.0  0.0      0     0 ?        S    14:47   0:00 [kauditd]
ROOT           57  0.0  0.0      0     0 ?        S    14:47   0:00 [khungtaskd]
ROOT           58  0.0  0.0      0     0 ?        S    14:47   0:00 [oom_reaper]
ROOT           59  0.4  0.0      0     0 ?        I    14:47   0:05 [kworker/u24:1-events_unbound]
ROOT           60  0.1  0.0      0     0 ?        I    14:47   0:01 [kworker/u24:2-events_power_efficient]
ROOT           61  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-writeback]
ROOT           62  0.0  0.0      0     0 ?        S    14:47   0:00 [kcompactd0]
ROOT           63  0.0  0.0      0     0 ?        SN   14:47   0:00 [ksmd]
ROOT           64  0.0  0.0      0     0 ?        SN   14:47   0:00 [khugepaged]
ROOT           65  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-kblockd]
ROOT           66  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-blkcg_punt_bio]
ROOT           67  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-kintegrityd]
ROOT           68  0.0  0.0      0     0 ?        S    14:47   0:00 [irq/9-acpi]
ROOT           70  0.0  0.0      0     0 ?        I    14:47   0:00 [kworker/2:1-mm_percpu_wq]
ROOT           71  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-tpm_dev_wq]
ROOT           72  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-ata_sff]
ROOT           73  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-md_bitmap]
ROOT           74  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-md_llbitmap_io]
ROOT           75  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-md_llbitmap_unplug]
ROOT           76  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-edac-poller]
ROOT           77  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-devfreq_wq]
ROOT           78  0.0  0.0      0     0 ?        S    14:47   0:00 [watchdogd]
ROOT           80  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-quota_events_unbound]
ROOT           81  0.0  0.0      0     0 ?        S    14:47   0:00 [kswapd0]
ROOT           82  0.0  0.0      0     0 ?        S    14:47   0:00 [ecryptfs-kthread]
ROOT           83  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-kthrotld]
ROOT           87  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-acpi_thermal_pm]
ROOT           88  0.0  0.0      0     0 ?        S    14:47   0:00 [scsi_eh_0]
ROOT           89  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-scsi_tmf_0]
ROOT           90  0.0  0.0      0     0 ?        S    14:47   0:00 [scsi_eh_1]
ROOT           91  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-scsi_tmf_1]
ROOT           93  0.1  0.0      0     0 ?        I    14:47   0:01 [kworker/u24:4-events_unbound]
ROOT           94  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/2:1H]
ROOT           96  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-mld]
ROOT           97  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-ipv6_addrconf]
ROOT           98  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/5:1H-kblockd]
ROOT           99  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-kstrp]
ROOT          101  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/u25:0]
ROOT          111  0.0  0.0      0     0 ?        I    14:47   0:00 [kworker/4:2-mm_percpu_wq]
ROOT          113  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-charger_manager]
ROOT          114  0.0  0.0      0     0 ?        I    14:47   0:00 [kworker/1:2-events]
ROOT          298  0.0  0.0      0     0 ?        I    14:47   0:00 [kworker/0:3-cgwb_release]
ROOT          339  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/4:1H-kblockd]
ROOT          341  0.0  0.0      0     0 ?        S    14:47   0:00 [scsi_eh_2]
ROOT          342  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-scsi_tmf_2]
ROOT          347  0.0  0.0      0     0 ?        I    14:47   0:00 [kworker/3:2-events]
ROOT          379  0.0  0.0      0     0 ?        S    14:47   0:00 [jbd2/sda2-8]
ROOT          380  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-ext4-rsv-conversion]
ROOT          449  0.0  0.0      0     0 ?        I    14:47   0:00 [kworker/5:5-mm_percpu_wq]
ROOT          483  0.0  0.0      0     0 ?        S    14:47   0:00 [psimon]
ROOT          488  0.1  0.0      0     0 ?        I    14:47   0:01 [kworker/4:3-events]
ROOT          491  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/0:1H-kblockd]
ROOT          492  0.1  0.1  50924 18644 ?        S<s  14:47   0:01 /usr/lib/systemd/systemd-journald
ROOT          519  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-kmpathd]
ROOT          520  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-kmpath_handlerd]
ROOT          535  0.0  0.1 279492  9644 ?        SLsl 14:47   0:00 /usr/sbin/multipathd -d -s
ROOT          542  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/1:1H-kblockd]
systemd+     552  0.0  0.1  22828 15284 ?        Ss   14:47   0:00 /usr/lib/systemd/systemd-resolved
ROOT          556  0.1  0.1  41552 15324 ?        Ss   14:47   0:01 /usr/lib/systemd/systemd-udevd
ROOT          562  0.0  0.0      0     0 ?        S    14:47   0:00 [psimon]
ROOT          723  0.4  0.0      0     0 ?        I    14:47   0:05 [kworker/u24:6-flush-8:0]
ROOT          756  0.0  0.0      0     0 ?        S    14:47   0:00 [irq/18-vmwgfx]
ROOT          758  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-ttm]
systemd+    1008  0.0  0.1  21436 12240 ?        Ss   14:47   0:00 /usr/lib/systemd/systemd-networkd
ROOT         1218  0.0  0.0      0     0 ?        I<   14:47   0:00 [kworker/R-cfg80211]
avahi       1232  0.0  0.0   6844  4920 ?        Ss   14:47   0:00 avahi-daemon: running [Ubuntu.local]
ROOT         1233  0.0  0.0   2888  2012 ?        Ss   14:47   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+    1234  0.2  0.0  11784  8668 ?        Ss   14:47   0:03 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
ROOT         1248  0.0  0.3  46844 30304 ?        Ss   14:47   0:01 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1252  0.1  0.1 386540 12456 ?        Ssl  14:47   0:02 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
ROOT         1261  0.3  0.4 2108132 43784 ?       Ssl  14:47   0:03 /usr/lib/snapd/snapd
ROOT         1266  0.0  0.0 309612  8680 ?        Ssl  14:47   0:00 /usr/libexec/accounts-daemon
ROOT         1271  0.0  0.1  18596  9800 ?        Ss   14:47   0:01 /usr/lib/systemd/systemd-logind
ROOT         1273  0.0  0.1 543696 15424 ?        Ssl  14:47   0:00 /usr/libexec/udisks2/udisksd
avahi       1296  0.0  0.0   6564  1640 ?        S    14:47   0:00 avahi-daemon: chROOT helper
syslog      1310  0.0  0.0 220604  6396 ?        Ssl  14:47   0:00 /usr/sbin/rsyslogd -n -iNONE
_chrony     1349  0.0  0.0  20560  6384 ?        S    14:47   0:00 /usr/sbin/chronyd -n -F 1
ROOT         1358  0.0  0.0 292100  3780 ?        Sl   14:47   0:00 /usr/sbin/VBoxService
_chrony     1373  0.0  0.0  12120  3372 ?        S    14:47   0:00 /usr/sbin/chronyd -n -F 1
ROOT         1385  0.0  0.2 623428 22428 ?        Ssl  14:47   0:00 /usr/sbin/NetworkManager --no-daemon
ROOT         1387  0.0  0.0  17972  7044 ?        Ss   14:47   0:00 /usr/sbin/wpa_supplicant -u -s -O DIR=/run/wpa_supplicant GROUP=netdev
ROOT         1429  0.0  0.1 391608 14136 ?        Ssl  14:47   0:00 /usr/sbin/ModemManager
ROOT         1502  0.0  0.3 126116 32832 ?        Ssl  14:47   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
ROOT         1558  0.0  0.0   7060  3388 ?        Ss   14:47   0:00 /usr/sbin/cron -f -P
ROOT         1613  0.0  0.1 384744 10872 ?        Ssl  14:47   0:00 /usr/sbin/gdm3
colord      1839  0.0  0.1 317588 16644 ?        Ssl  14:48   0:00 /usr/libexec/colord
ROOT         1878  0.0  0.1 318676 11412 ?        Ssl  14:48   0:01 /usr/libexec/upowerd
ROOT         2583  0.0  0.1 172876 11012 ?        Sl   14:50   0:00 gdm-session-worker [pam/gdm-password]
vboxuser    2697  0.1  0.1  23520 14892 ?        Ss   14:50   0:01 /usr/lib/systemd/systemd --user
vboxuser    2699  0.0  0.0  23456  4192 ?        S    14:50   0:00 (sd-pam)
vboxuser    2719  0.2  0.0  10052  6996 ?        Ss   14:50   0:01 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
vboxuser    2720  0.0  0.1 103232 12736 ?        Ssl  14:50   0:00 /usr/bin/pipewire
vboxuser    2722  0.0  0.1 183244 11052 ?        SLsl 14:50   0:00 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
vboxuser    2723  0.0  0.0   7560  4124 ?        Ss   14:50   0:00 /usr/bin/mpris-proxy
vboxuser    2727  0.0  0.2 495896 22824 ?        Ssl  14:50   0:00 /usr/bin/wireplumber
vboxuser    2730  0.0  0.0  84812  5820 ?        Ssl  14:50   0:00 /usr/bin/pipewire -c filter-chain.conf
vboxuser    2732  0.0  0.1 176412 12664 ?        Ssl  14:50   0:00 /usr/bin/pipewire-pulse
vboxuser    2763  0.0  0.0 168196  6748 tty2     Ssl+ 14:50   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
vboxuser    2788  0.0  0.0 175212  9560 tty2     Sl+  14:50   0:00 /usr/libexec/gnome-session-init-worker ubuntu
vboxuser    2897  0.0  0.0  97560  7928 ?        Ssl  14:50   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
vboxuser    2898  0.0  0.0  87208  5924 ?        Ssl  14:50   0:00 /usr/libexec/gnome-session-ctl --monitor
vboxuser    2899  0.0  0.0  10484  6824 ?        Ss   14:50   0:00 /usr/bin/ssh-agent -D
vboxuser    2911  0.0  0.0 312952  9044 ?        Ssl  14:50   0:00 /usr/libexec/gvfsd
vboxuser    2917  0.0  0.0 324640  7932 ?        Sl   14:50   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
vboxuser    2920  0.0  0.1 539592 11424 ?        Ssl  14:50   0:00 /usr/libexec/gnome-session-service --session=ubuntu
vboxuser    2932 14.3  3.7 6137388 362280 ?      Ssl  14:50   2:10 /usr/bin/gnome-shell --mode=ubuntu
vboxuser    2964  0.0  0.0 381112  8220 ?        Ssl  14:50   0:00 /usr/libexec/at-spi-bus-launcher
vboxuser    2971  0.0  0.0   8612  5252 ?        S    14:50   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
vboxuser    2973  0.0  0.0 168688  7860 ?        Sl   14:50   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
vboxuser    2991  0.0  0.0 307364  6988 ?        Ssl  14:50   0:00 /usr/libexec/xdg-permission-store
vboxuser    2993  0.0  0.2 658656 19720 ?        Sl   14:50   0:00 /usr/libexec/gnome-shell-calendar-server
vboxuser    3007  0.0  0.4 608272 46588 ?        Ssl  14:50   0:00 /usr/libexec/evolution-source-registry
vboxuser    3010  0.0  0.3 2664892 32964 ?       Sl   14:50   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
vboxuser    3018  0.2  0.1 385528 11872 ?        Ssl  14:50   0:02 /usr/bin/ibus-daemon --panel disable
vboxuser    3023  0.0  0.1 253792 10548 ?        Ssl  14:50   0:00 /usr/libexec/gsd-a11y-settings
vboxuser    3024  0.0  0.1 251624 10452 ?        Ssl  14:50   0:00 /usr/libexec/gsd-color
vboxuser    3027  0.0  0.1 260160 12636 ?        Ssl  14:50   0:00 /usr/libexec/gsd-datetime
vboxuser    3030  0.0  0.1 390768 11040 ?        Ssl  14:50   0:00 /usr/libexec/gsd-housekeeping
vboxuser    3032  0.0  0.0 383124  8432 ?        Ssl  14:50   0:00 /usr/libexec/gsd-keyboard
vboxuser    3042  0.0  0.1 559940 15256 ?        Ssl  14:50   0:00 /usr/libexec/gsd-media-keys
vboxuser    3045  0.0  0.1 475388 11760 ?        Ssl  14:50   0:00 /usr/libexec/gsd-power
vboxuser    3048  0.0  0.1 327572 14496 ?        Ssl  14:50   0:00 /usr/libexec/gsd-print-notifications
vboxuser    3058  0.0  0.0 456924  8248 ?        Ssl  14:50   0:00 /usr/libexec/gsd-rfkill
vboxuser    3059  0.0  0.0 169832  7604 ?        Ssl  14:50   0:00 /usr/libexec/gsd-screensaver-proxy
vboxuser    3062  0.0  0.1 467388 13008 ?        Ssl  14:50   0:00 /usr/libexec/gsd-sharing
vboxuser    3068  0.0  0.1 385700  9788 ?        Ssl  14:50   0:00 /usr/libexec/gsd-smartcard
vboxuser    3072  0.0  0.1 254940 10888 ?        Ssl  14:50   0:00 /usr/libexec/gsd-sound
vboxuser    3075  0.0  0.3 641816 33784 ?        Sl   14:50   0:00 /usr/bin/update-notifier
vboxuser    3078  0.0  0.1 545936 10180 ?        Ssl  14:50   0:00 /usr/libexec/gsd-usb-protection
vboxuser    3080  0.0  0.6 840316 65364 ?        Sl   14:50   0:00 /usr/libexec/evolution-data-server/evolution-alarm-notify
vboxuser    3084  0.0  0.1 390408 10824 ?        Ssl  14:50   0:00 /usr/libexec/gsd-wwan
vboxuser    3091  0.0  0.0 312176  9544 ?        Sl   14:50   0:00 /usr/libexec/gsd-disk-utility-notify
vboxuser    3184  0.0  0.0 243000  8140 ?        Sl   14:50   0:00 /usr/libexec/ibus-dconf
vboxuser    3187  0.2  0.3 498472 35908 ?        Sl   14:50   0:02 /usr/libexec/ibus-extension-gtk3
vboxuser    3194  0.0  0.0 308500  8124 ?        Sl   14:50   0:00 /usr/libexec/ibus-portal
vboxuser    3227  0.0  0.3 2730400 32644 ?       Sl   14:50   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
vboxuser    3229  0.0  0.2 729404 26116 ?        SNsl 14:50   0:00 /usr/libexec/localsearch-3
vboxuser    3237  0.0  0.2 629180 21148 ?        Ssl  14:50   0:00 /usr/libexec/xdg-desktop-portal
vboxuser    3238  0.0  0.1 407680 12636 ?        Sl   14:50   0:00 /usr/libexec/gsd-printer
vboxuser    3292  0.0  0.0 687092  7900 ?        Ssl  14:50   0:00 /usr/libexec/xdg-document-portal
vboxuser    3293  0.0  0.1 386944 11036 ?        Ssl  14:50   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
ROOT         3299  0.0  0.0   2792  2312 ?        Ss   14:50   0:00 fusermount3 -o rw,nosuid,nodev,fsname=portal,auto_unmount,subtype=portal -- /run/user/1000/doc
vboxuser    3309  0.0  0.4 761496 45684 ?        Ssl  14:50   0:00 /usr/libexec/xdg-desktop-portal-gnome
vboxuser    3318  0.0  0.0 389884  9624 ?        Ssl  14:50   0:00 /usr/libexec/gvfs-afc-volume-monitor
vboxuser    3324  0.0  0.3 466816 32412 ?        Sl   14:50   0:00 /usr/libexec/goa-daemon
vboxuser    3327  0.0  0.0 307832  7368 ?        Ssl  14:50   0:00 /usr/libexec/gvfs-goa-volume-monitor
vboxuser    3341  0.0  0.2 893404 27352 ?        Ssl  14:50   0:00 /usr/libexec/evolution-calendar-factory
vboxuser    3343  0.0  0.1 387944 10492 ?        Sl   14:50   0:00 /usr/libexec/goa-identity-service
vboxuser    3350  0.0  0.0 307880  7400 ?        Ssl  14:50   0:00 /usr/libexec/gvfs-mtp-volume-monitor
vboxuser    3358  0.0  0.0 308848  8008 ?        Ssl  14:50   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
vboxuser    3376  0.0  0.3 825940 32024 ?        Ssl  14:50   0:00 /usr/libexec/evolution-addressbook-factory
vboxuser    3388  0.0  0.0 169176  8236 ?        Sl   14:50   0:00 /usr/libexec/ibus-engine-simple
vboxuser    3459  0.1  0.7 3194152 70756 ?       Sl   14:50   0:01 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
vboxuser    3537  0.0  0.0 168852  7424 ?        Ssl  14:50   0:00 /usr/libexec/gvfsd-metadata
vboxuser    3616  0.0  0.0 165220  6472 ?        Ssl  14:50   0:00 /usr/libexec/dconf-service
vboxuser    3674  0.0  0.1 534376 10092 ?        Sl   14:51   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
vboxuser    3800  0.0  0.2 490700 27620 ?        Ssl  14:51   0:00 /usr/libexec/xdg-desktop-portal-gtk
vboxuser    3906  1.4  2.1 2545736 210488 ?      Rl   14:52   0:11 ptyxis --new-window
vboxuser    3937  0.0  0.0 239996  7972 ?        Ssl  14:52   0:00 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
vboxuser    4008  0.0  0.0   8924  6088 pts/0    Ss   14:52   0:00 /usr/bin/bash
vboxuser    4148  1.4  2.8 3013388 273884 ?      Sl   14:54   0:09 /usr/bin/nautilus --gapplication-service
vboxuser    4188  0.0  0.0 387028  9600 ?        Sl   14:54   0:00 /usr/libexec/gvfsd-recent --spawner :1.17 /org/gtk/gvfs/exec_spaw/1
vboxuser    4196  0.0  0.1 387316  9792 ?        Sl   14:54   0:00 /usr/libexec/gvfsd-network --spawner :1.17 /org/gtk/gvfs/exec_spaw/2
vboxuser    4204  0.0  0.1 388412  9992 ?        Sl   14:54   0:00 /usr/libexec/gvfsd-dnssd --spawner :1.17 /org/gtk/gvfs/exec_spaw/3
vboxuser    4210  0.0  0.0 386696  9616 ?        Sl   14:54   0:00 /usr/libexec/gvfsd-wsdd --spawner :1.17 /org/gtk/gvfs/exec_spaw/4
vboxuser    4215  0.0  0.3  44824 33672 ?        S    14:54   0:00 python3 /usr/bin/wsdd --no-host --discovery --listen /run/user/1000/gvfsd/wsdd
uuidd       4218  0.0  0.0   8104  3480 ?        Ss   14:54   0:00 /usr/sbin/uuidd --socket-activation --cont-clock
ROOT         4235  0.0  0.0      0     0 ?        I    14:55   0:00 [kworker/5:0-cgroup_free]
vboxuser    4284  0.0  0.0   3768  2348 ?        S    14:55   0:00 bwrap --unshare-all --die-with-parent --chdir / --ro-bind /usr /usr --dev /dev --ro-bind-try /etc/ld.so.cache /etc/ld.so.cache --ro-bind-try /nix/store /nix/store --tmpfs /tmp-home --tmpfs /tmp-run --clearenv --setenv HOME /tmp-home --setenv XDG_RUNTIME_DIR /tmp-run --setenv XDG_RUNTIME_DIR /run/user/1000 --symlink /usr/lib64 /lib64 --symlink /usr/lib /lib --seccomp 41 /usr/libexec/glycin-loaders/2+/glycin-image-rs --dbus-fd 39
vboxuser    4285  0.0  0.0   3768  1380 ?        S    14:55   0:00 bwrap --unshare-all --die-with-parent --chdir / --ro-bind /usr /usr --dev /dev --ro-bind-try /etc/ld.so.cache /etc/ld.so.cache --ro-bind-try /nix/store /nix/store --tmpfs /tmp-home --tmpfs /tmp-run --clearenv --setenv HOME /tmp-home --setenv XDG_RUNTIME_DIR /tmp-run --setenv XDG_RUNTIME_DIR /run/user/1000 --symlink /usr/lib64 /lib64 --symlink /usr/lib /lib --seccomp 41 /usr/libexec/glycin-loaders/2+/glycin-image-rs --dbus-fd 39
vboxuser    4286  0.0  0.0 145336  6828 ?        Sl   14:55   0:00 /usr/libexec/glycin-loaders/2+/glycin-image-rs --dbus-fd 39
ROOT         4343  0.0  0.1  29472 13124 ?        Ss   14:57   0:00 /usr/sbin/cupsd -l
cups-br+    4344  0.0  0.2 207560 22796 ?        Ssl  14:57   0:00 /usr/sbin/cups-browsed
vboxuser    4351 26.3  5.6 11788744 546904 ?     Sl   14:57   2:11 /snap/firefox/9171/usr/lib/firefox/firefox
vboxuser    4429  0.0  0.0 149264  3148 ?        Sl   14:57   0:00 /snap/firefox/9171/usr/lib/firefox/crashhelper 4351 9 /tmp/ 11 20261102221755
vboxuser    4493  0.0  0.7 211928 70752 ?        S    14:57   0:00 /usr/bin/Xwayland :0 -ROOTless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.R4PXY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
vboxuser    4498  0.0  0.1 251364 13644 ?        Ssl  14:57   0:00 /usr/libexec/gsd-xsettings
vboxuser    4504  0.1  1.2 1717300 118492 ?      Sl   14:57   0:00 /usr/libexec/mutter-x11-frames
vboxuser    4572  0.0  0.7 374024 72636 ?        Sl   14:57   0:00 /usr/libexec/ibus-x11
vboxuser    4574  0.0  0.3 466892 33944 ?        S    14:57   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -ipcHandle 0 -signalPipe 1 -initialChannelId {732b80e5-7d40-4dda-a415-e783bb42c437} -parentPid 4351 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 1 forkserver
vboxuser    4583  0.0  0.4 479136 38528 ?        Sl   14:57   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -parentBuildID 20261102221755 -prefsHandle 0:36098 -prefMapHandle 1:300750 -sandboxReporter 2 -chROOTClient 3 -ipcHandle 4 -initialChannelId {348b6d86-3cf7-47e6-bb54-a68abc9f9cd2} -parentPid 4351 -crashHelperPid 4429 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9171/usr/lib/firefox/browser 2 socket
vboxuser    4616  0.8  1.5 2683064 152712 ?      Sl   14:57   0:04 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:36223 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chROOTClient 4 -ipcHandle 5 -initialChannelId {f9931575-8a34-4e5d-ad84-3151c6612304} -parentPid 4351 -crashHelperPid 4429 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 3 tab
vboxuser    4624  0.1  0.4 638464 48116 ?        Sl   14:57   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -parentBuildID 20261102221755 -prefsHandle 0:36223 -prefMapHandle 1:300750 -sandboxReporter 2 -chROOTClient 3 -ipcHandle 4 -initialChannelId {d64feccd-c2c9-442a-a981-bdb110bd630e} -parentPid 4351 -crashHelperPid 4429 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9171/usr/lib/firefox/browser 4 rdd
vboxuser    4669  0.0  0.2 2024628 27852 ?       Sl   14:57   0:00 /usr/bin/snap userd
vboxuser    4834  0.4  1.1 2656916 115448 ?      Sl   14:58   0:01 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:36343 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chROOTClient 4 -ipcHandle 5 -initialChannelId {ccd6968a-2ef0-4e32-9fda-e888146b361d} -parentPid 4351 -crashHelperPid 4429 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 5 tab
vboxuser    5160  0.0  0.3 479024 36064 ?        Sl   14:58   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -parentBuildID 20261102221755 -sandboxingKind 0 -prefsHandle 0:54589 -prefMapHandle 1:300750 -sandboxReporter 2 -chROOTClient 3 -ipcHandle 4 -initialChannelId {844d469e-2c9c-4781-b085-0228fef0f8c8} -parentPid 4351 -crashHelperPid 4429 -crashHelper 5 -crashReporter 6 -appDir /snap/firefox/9171/usr/lib/firefox/browser 6 utility
vboxuser    5170 11.5  4.5 3097592 440024 ?      Sl   14:58   0:55 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51261 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chROOTClient 4 -ipcHandle 5 -initialChannelId {232f845c-2e51-4623-b346-8bd2656506c4} -parentPid 4351 -crashHelperPid 4429 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 8 tab
vboxuser    5208  0.0  0.7 2607464 75992 ?       Sl   14:58   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51261 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chROOTClient 4 -ipcHandle 5 -initialChannelId {2fd8f7ff-9720-4f7f-be6b-0e7013ef6cb1} -parentPid 4351 -crashHelperPid 4429 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 9 tab
ROOT         5395  0.0  0.0      0     0 ?        I    14:58   0:00 [kworker/2:0-mm_percpu_wq]
vboxuser    5406  0.0  0.7 2607464 75820 ?       Sl   14:58   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51550 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chROOTClient 4 -ipcHandle 5 -initialChannelId {760b7716-9135-4235-9ef4-91171ecf5ea2} -parentPid 4351 -crashHelperPid 4429 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 10 tab
vboxuser    5453  0.0  0.7 2607464 76124 ?       Sl   14:58   0:00 /snap/firefox/9171/usr/lib/firefox/firefox -contentproc -isForBrowser -prefsHandle 0:51550 -prefMapHandle 1:300750 -jsInitHandle 2:161360 -parentBuildID 20261102221755 -sandboxReporter 3 -chROOTClient 4 -ipcHandle 5 -initialChannelId {1382d336-e382-4857-851f-ca9ceee9e6e6} -parentPid 4351 -crashHelperPid 4429 -crashHelper 6 -crashReporter 7 -greomni /snap/firefox/9171/usr/lib/firefox/omni.ja -appomni /snap/firefox/9171/usr/lib/firefox/browser/omni.ja -appDir /snap/firefox/9171/usr/lib/firefox/browser 11 tab
ROOT         5511  0.0  0.0      0     0 ?        I<   14:59   0:00 [kworker/3:1H]
ROOT         5579  0.0  0.0      0     0 ?        I    15:01   0:00 [kworker/1:1-events]
ROOT         5580  0.0  0.0      0     0 ?        I    15:01   0:00 [kworker/3:1]
ROOT         5609  0.0  0.0      0     0 ?        I    15:03   0:00 [kworker/2:2]
vboxuser    5641  100  0.0  10040  4944 pts/0    R+   15:06   0:00 ps aux
247 processes are running
```

### 2. Create users.txt and remove nologin users
```bash
vboxuser@Ubuntu:~/ICT_WiSe26-27/Lecture_5$ cp /etc/passwd ussers.txt
vboxuser@Ubuntu:~/ICT_WiSe26-27/Lecture_5$ sed -i '/nologin/d' users.txt
vboxuser@Ubuntu:~/ICT_WiSe26-27/Lecture_5$ cat users.txt
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
vboxuser:x:1000:1000:vboxuser:/home/vboxuser:/bin/bash
whoopsie:x:104:109::/nonexistent:/bin/false
hplip:x:109:7:HPLIP system user:/run/hplip:/bin/false
gdm:x:978:978:Gnome Display Manager:/var/lib/gdm3:/bin/false
speech-dispatcher:x:111:29:Speech Dispatcher:/run/speech-dispatcher:/bin/false
tempadmin:x:1001:1001:Sahilkumar Rao,,,:/home/tempadmin:/bin/bash
```

## Part B: Working with awk

### 1. Print users with UID and GID
```bash
vboxuser@Ubuntu:~/ICT_WiSe26-27/Lecture_5$ awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd
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
User vboxuser has UID 1000 and GID 1000
User dnsmasq has UID 999 and GID 65534
User whoopsie has UID 104 and GID 109
User avahi has UID 105 and GID 110
User cups-pk-helper has UID 106 and GID 112
User cups-browsed has UID 107 and GID 112
User colord has UID 982 and GID 982
User pipewire has UID 981 and GID 981
User geoclue has UID 108 and GID 113
User hplip has UID 109 and GID 7
User gnome-remote-desktop has UID 980 and GID 980
User gdm has UID 978 and GID 978
User sssd has UID 110 and GID 114
User speech-dispatcher has UID 111 and GID 29
User nm-openvpn has UID 977 and GID 977
User tempadmin has UID 1001 and GID 1001
```

### 2. Print username and process name
```bash
vboxuser@Ubuntu:~/ICT_WiSe26-27/Lecture_5$ awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd
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
User vboxuser has UID 1000 and GID 1000
User dnsmasq has UID 999 and GID 65534
User whoopsie has UID 104 and GID 109
User avahi has UID 105 and GID 110
User cups-pk-helper has UID 106 and GID 112
User cups-browsed has UID 107 and GID 112
User colord has UID 982 and GID 982
User pipewire has UID 981 and GID 981
User geoclue has UID 108 and GID 113
User hplip has UID 109 and GID 7
User gnome-remote-desktop has UID 980 and GID 980
User gdm has UID 978 and GID 978
User sssd has UID 110 and GID 114
User speech-dispatcher has UID 111 and GID 29
User nm-openvpn has UID 977 and GID 977
User tempadmin has UID 1001 and GID 1001
vboxuser@Ubuntu:~/ICT_WiSe26-27/Lecture_5$ nano Lecture_5_sahilkumar_rao_Task3.md
vboxuser@Ubuntu:~/ICT_WiSe26-27/Lecture_5$ awk '{print $1, $11}' processes.log
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
ROOT [cpuhp/2]
ROOT [idle_inject/2]
ROOT [migration/2]
ROOT [ksoftirqd/2]
ROOT [kworker/2:0H-kblockd]
ROOT [cpuhp/3]
ROOT [idle_inject/3]
ROOT [migration/3]
ROOT [ksoftirqd/3]
ROOT [kworker/3:0-mm_percpu_wq]
ROOT [kworker/3:0H-kblockd]
ROOT [cpuhp/4]
ROOT [idle_inject/4]
ROOT [migration/4]
ROOT [ksoftirqd/4]
ROOT [kworker/4:0H-kblockd]
ROOT [cpuhp/5]
ROOT [idle_inject/5]
ROOT [migration/5]
ROOT [ksoftirqd/5]
ROOT [kworker/5:0H-kblockd]
ROOT [kdevtmpfs]
ROOT [kworker/R-inet_frag_wq]
ROOT [rcu_tasks_kthread]
ROOT [rcu_tasks_rude_kthread]
ROOT [kauditd]
ROOT [khungtaskd]
ROOT [oom_reaper]
ROOT [kworker/u24:1-events_unbound]
ROOT [kworker/u24:2-events_power_efficient]
ROOT [kworker/R-writeback]
ROOT [kcompactd0]
ROOT [ksmd]
ROOT [khugepaged]
ROOT [kworker/R-kblockd]
ROOT [kworker/R-blkcg_punt_bio]
ROOT [kworker/R-kintegrityd]
ROOT [irq/9-acpi]
ROOT [kworker/2:1-mm_percpu_wq]
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
ROOT [kworker/u24:4-events_unbound]
ROOT [kworker/2:1H]
ROOT [kworker/R-mld]
ROOT [kworker/R-ipv6_addrconf]
ROOT [kworker/5:1H-kblockd]
ROOT [kworker/R-kstrp]
ROOT [kworker/u25:0]
ROOT [kworker/4:2-mm_percpu_wq]
ROOT [kworker/R-charger_manager]
ROOT [kworker/1:2-events]
ROOT [kworker/0:3-cgwb_release]
ROOT [kworker/4:1H-kblockd]
ROOT [scsi_eh_2]
ROOT [kworker/R-scsi_tmf_2]
ROOT [kworker/3:2-events]
ROOT [jbd2/sda2-8]
ROOT [kworker/R-ext4-rsv-conversion]
ROOT [kworker/5:5-mm_percpu_wq]
ROOT [psimon]
ROOT [kworker/4:3-events]
ROOT [kworker/0:1H-kblockd]
ROOT /usr/lib/systemd/systemd-journald
ROOT [kworker/R-kmpathd]
ROOT [kworker/R-kmpath_handlerd]
ROOT /usr/sbin/multipathd
ROOT [kworker/1:1H-kblockd]
systemd+ /usr/lib/systemd/systemd-resolved
ROOT /usr/lib/systemd/systemd-udevd
ROOT [psimon]
ROOT [kworker/u24:6-flush-8:0]
ROOT [irq/18-vmwgfx]
ROOT [kworker/R-ttm]
systemd+ /usr/lib/systemd/systemd-networkd
ROOT [kworker/R-cfg80211]
avahi avahi-daemon:
ROOT /bin/sh
message+ @dbus-daemon
ROOT /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
ROOT /usr/lib/snapd/snapd
ROOT /usr/libexec/accounts-daemon
ROOT /usr/lib/systemd/systemd-logind
ROOT /usr/libexec/udisks2/udisksd
avahi avahi-daemon:
syslog /usr/sbin/rsyslogd
_chrony /usr/sbin/chronyd
ROOT /usr/sbin/VBoxService
_chrony /usr/sbin/chronyd
ROOT /usr/sbin/NetworkManager
ROOT /usr/sbin/wpa_supplicant
ROOT /usr/sbin/ModemManager
ROOT /usr/bin/python3
ROOT /usr/sbin/cron
ROOT /usr/sbin/gdm3
colord /usr/libexec/colord
ROOT /usr/libexec/upowerd
ROOT gdm-session-worker
vboxuser /usr/lib/systemd/systemd
vboxuser (sd-pam)
vboxuser /usr/bin/dbus-daemon
vboxuser /usr/bin/pipewire
vboxuser /usr/bin/gnome-keyring-daemon
vboxuser /usr/bin/mpris-proxy
vboxuser /usr/bin/wireplumber
vboxuser /usr/bin/pipewire
vboxuser /usr/bin/pipewire-pulse
vboxuser /usr/libexec/gdm-wayland-session
vboxuser /usr/libexec/gnome-session-init-worker
vboxuser /usr/libexec/gcr-ssh-agent
vboxuser /usr/libexec/gnome-session-ctl
vboxuser /usr/bin/ssh-agent
vboxuser /usr/libexec/gvfsd
vboxuser /usr/libexec/gvfsd-fuse
vboxuser /usr/libexec/gnome-session-service
vboxuser /usr/bin/gnome-shell
vboxuser /usr/libexec/at-spi-bus-launcher
vboxuser /usr/bin/dbus-daemon
vboxuser /usr/libexec/at-spi2-registryd
vboxuser /usr/libexec/xdg-permission-store
vboxuser /usr/libexec/gnome-shell-calendar-server
vboxuser /usr/libexec/evolution-source-registry
vboxuser /usr/bin/gjs
vboxuser /usr/bin/ibus-daemon
vboxuser /usr/libexec/gsd-a11y-settings
vboxuser /usr/libexec/gsd-color
vboxuser /usr/libexec/gsd-datetime
vboxuser /usr/libexec/gsd-housekeeping
vboxuser /usr/libexec/gsd-keyboard
vboxuser /usr/libexec/gsd-media-keys
vboxuser /usr/libexec/gsd-power
vboxuser /usr/libexec/gsd-print-notifications
vboxuser /usr/libexec/gsd-rfkill
vboxuser /usr/libexec/gsd-screensaver-proxy
vboxuser /usr/libexec/gsd-sharing
vboxuser /usr/libexec/gsd-smartcard
vboxuser /usr/libexec/gsd-sound
vboxuser /usr/bin/update-notifier
vboxuser /usr/libexec/gsd-usb-protection
vboxuser /usr/libexec/evolution-data-server/evolution-alarm-notify
vboxuser /usr/libexec/gsd-wwan
vboxuser /usr/libexec/gsd-disk-utility-notify
vboxuser /usr/libexec/ibus-dconf
vboxuser /usr/libexec/ibus-extension-gtk3
vboxuser /usr/libexec/ibus-portal
vboxuser /usr/bin/gjs
vboxuser /usr/libexec/localsearch-3
vboxuser /usr/libexec/xdg-desktop-portal
vboxuser /usr/libexec/gsd-printer
vboxuser /usr/libexec/xdg-document-portal
vboxuser /usr/libexec/gvfs-udisks2-volume-monitor
ROOT fusermount3
vboxuser /usr/libexec/xdg-desktop-portal-gnome
vboxuser /usr/libexec/gvfs-afc-volume-monitor
vboxuser /usr/libexec/goa-daemon
vboxuser /usr/libexec/gvfs-goa-volume-monitor
vboxuser /usr/libexec/evolution-calendar-factory
vboxuser /usr/libexec/goa-identity-service
vboxuser /usr/libexec/gvfs-mtp-volume-monitor
vboxuser /usr/libexec/gvfs-gphoto2-volume-monitor
vboxuser /usr/libexec/evolution-addressbook-factory
vboxuser /usr/libexec/ibus-engine-simple
vboxuser gjs
vboxuser /usr/libexec/gvfsd-metadata
vboxuser /usr/libexec/dconf-service
vboxuser /usr/libexec/gvfsd-trash
vboxuser /usr/libexec/xdg-desktop-portal-gtk
vboxuser ptyxis
vboxuser /usr/libexec/ptyxis-agent
vboxuser /usr/bin/bash
vboxuser /usr/bin/nautilus
vboxuser /usr/libexec/gvfsd-recent
vboxuser /usr/libexec/gvfsd-network
vboxuser /usr/libexec/gvfsd-dnssd
vboxuser /usr/libexec/gvfsd-wsdd
vboxuser python3
uuidd /usr/sbin/uuidd
ROOT [kworker/5:0-cgroup_free]
vboxuser bwrap
vboxuser bwrap
vboxuser /usr/libexec/glycin-loaders/2+/glycin-image-rs
ROOT /usr/sbin/cupsd
cups-br+ /usr/sbin/cups-browsed
vboxuser /snap/firefox/9171/usr/lib/firefox/firefox
vboxuser /snap/firefox/9171/usr/lib/firefox/crashhelper
vboxuser /usr/bin/Xwayland
vboxuser /usr/libexec/gsd-xsettings
vboxuser /usr/libexec/mutter-x11-frames
vboxuser /usr/libexec/ibus-x11
vboxuser /snap/firefox/9171/usr/lib/firefox/firefox
vboxuser /snap/firefox/9171/usr/lib/firefox/firefox
vboxuser /snap/firefox/9171/usr/lib/firefox/firefox
vboxuser /snap/firefox/9171/usr/lib/firefox/firefox
vboxuser /usr/bin/snap
vboxuser /snap/firefox/9171/usr/lib/firefox/firefox
vboxuser /snap/firefox/9171/usr/lib/firefox/firefox
vboxuser /snap/firefox/9171/usr/lib/firefox/firefox
vboxuser /snap/firefox/9171/usr/lib/firefox/firefox
ROOT [kworker/2:0-mm_percpu_wq]
vboxuser /snap/firefox/9171/usr/lib/firefox/firefox
vboxuser /snap/firefox/9171/usr/lib/firefox/firefox
ROOT [kworker/3:1H]
ROOT [kworker/1:1-events]
ROOT [kworker/3:1]
ROOT [kworker/2:2]
vboxuser ps
247
```

### 3. Calculate total CPU usage
```bash
vboxuser@Ubuntu:~/ICT_WiSe26-27/Lecture_5$ awk '{sum += $3} END {print "Total CPU: " sum}' processes.log
Total CPU: 160
```
