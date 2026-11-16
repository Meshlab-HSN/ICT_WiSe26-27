# Lecture 5 - Task 3: Data manipulation

## sed

```bash
sed 's/root/ROOT/g' processes.log
```

```
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ROOT           1  0.6  0.5  26876 17372 ?        Ss   18:34   0:07 /usr/lib/systemd/systemd --switched-ROOT --system --deserialize=56
ROOT           2  0.0  0.0      0     0 ?        S    18:34   0:00 [kthreadd]
ROOT           3  0.0  0.0      0     0 ?        S    18:34   0:00 [pool_workqueue_release]
ROOT           4  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-rcu_gp]
ROOT           5  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-sync_wq]
ROOT           6  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-kvfree_rcu_reclaim]
ROOT           7  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-slub_flushwq]
ROOT           8  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-netns]
ROOT          10  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/0:0H-kblockd]
ROOT          13  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-mm_percpu_wq]
ROOT          14  0.0  0.0      0     0 ?        S    18:34   0:00 [ksoftirqd/0]
ROOT          15  0.0  0.0      0     0 ?        I    18:34   0:00 [rcu_preempt]
ROOT          16  0.0  0.0      0     0 ?        S    18:34   0:00 [rcu_exp_par_gp_kthread_worker/0]
ROOT          17  0.0  0.0      0     0 ?        S    18:34   0:00 [rcu_exp_gp_kthread_worker]
ROOT          18  0.0  0.0      0     0 ?        S    18:34   0:00 [migration/0]
ROOT          19  0.0  0.0      0     0 ?        S    18:34   0:00 [kprobe-optimizer]
ROOT          20  0.0  0.0      0     0 ?        S    18:34   0:00 [idle_inject/0]
ROOT          21  0.0  0.0      0     0 ?        S    18:34   0:00 [cpuhp/0]
ROOT          22  0.0  0.0      0     0 ?        S    18:34   0:00 [cpuhp/2]
ROOT          23  0.0  0.0      0     0 ?        S    18:34   0:00 [idle_inject/2]
ROOT          24  0.0  0.0      0     0 ?        S    18:34   0:00 [migration/2]
ROOT          25  0.0  0.0      0     0 ?        S    18:34   0:00 [ksoftirqd/2]
ROOT          26  0.0  0.0      0     0 ?        I    18:34   0:00 [kworker/2:0-mm_percpu_wq]
ROOT          27  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/2:0H-kblockd]
ROOT          28  0.0  0.0      0     0 ?        S    18:34   0:00 [cpuhp/4]
ROOT          29  0.0  0.0      0     0 ?        S    18:34   0:00 [idle_inject/4]
ROOT          30  0.0  0.0      0     0 ?        S    18:34   0:00 [migration/4]
ROOT          31  0.0  0.0      0     0 ?        S    18:34   0:00 [ksoftirqd/4]
ROOT          34  0.0  0.0      0     0 ?        S    18:34   0:00 [cpuhp/6]
ROOT          35  0.0  0.0      0     0 ?        S    18:34   0:00 [idle_inject/6]
ROOT          36  0.0  0.0      0     0 ?        S    18:34   0:00 [migration/6]
ROOT          37  0.0  0.0      0     0 ?        S    18:34   0:00 [ksoftirqd/6]
ROOT          39  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/6:0H-kblockd]
ROOT          40  0.0  0.0      0     0 ?        S    18:34   0:00 [cpuhp/1]
ROOT          41  0.0  0.0      0     0 ?        S    18:34   0:00 [idle_inject/1]
ROOT          42  0.0  0.0      0     0 ?        S    18:34   0:00 [migration/1]
ROOT          43  0.0  0.0      0     0 ?        S    18:34   0:00 [ksoftirqd/1]
ROOT          44  0.0  0.0      0     0 ?        I    18:34   0:00 [kworker/1:0-events]
ROOT          45  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/1:0H-kblockd]
ROOT          46  0.0  0.0      0     0 ?        S    18:34   0:00 [cpuhp/3]
ROOT          47  0.0  0.0      0     0 ?        S    18:34   0:00 [idle_inject/3]
ROOT          48  0.0  0.0      0     0 ?        S    18:34   0:00 [migration/3]
ROOT          49  0.0  0.0      0     0 ?        S    18:34   0:00 [ksoftirqd/3]
ROOT          51  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/3:0H-kblockd]
ROOT          52  0.0  0.0      0     0 ?        S    18:34   0:00 [cpuhp/5]
ROOT          53  0.0  0.0      0     0 ?        S    18:34   0:00 [idle_inject/5]
ROOT          54  0.0  0.0      0     0 ?        S    18:34   0:00 [migration/5]
ROOT          55  0.0  0.0      0     0 ?        S    18:34   0:00 [ksoftirqd/5]
ROOT          57  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/5:0H-kblockd]
ROOT          58  0.0  0.0      0     0 ?        S    18:34   0:00 [cpuhp/7]
ROOT          59  0.0  0.0      0     0 ?        S    18:34   0:00 [idle_inject/7]
ROOT          60  0.0  0.0      0     0 ?        S    18:34   0:00 [migration/7]
ROOT          61  0.0  0.0      0     0 ?        S    18:34   0:00 [ksoftirqd/7]
ROOT          63  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/7:0H-kblockd]
ROOT          64  0.0  0.0      0     0 ?        S    18:34   0:00 [kdevtmpfs]
ROOT          65  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-inet_frag_wq]
ROOT          66  0.0  0.0      0     0 ?        I    18:34   0:00 [rcu_tasks_kthread]
ROOT          67  0.0  0.0      0     0 ?        I    18:34   0:00 [rcu_tasks_rude_kthread]
ROOT          68  0.0  0.0      0     0 ?        S    18:34   0:00 [kauditd]
ROOT          69  0.0  0.0      0     0 ?        S    18:34   0:00 [khungtaskd]
ROOT          70  0.0  0.0      0     0 ?        S    18:34   0:00 [oom_reaper]
ROOT          72  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-writeback]
ROOT          74  0.0  0.0      0     0 ?        S    18:34   0:00 [kcompactd0]
ROOT          75  0.0  0.0      0     0 ?        SN   18:34   0:00 [ksmd]
ROOT          76  0.0  0.0      0     0 ?        SN   18:34   0:00 [khugepaged]
ROOT          77  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-kblockd]
ROOT          78  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-blkcg_punt_bio]
ROOT          79  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-kintegrityd]
ROOT          80  0.0  0.0      0     0 ?        S    18:34   0:00 [irq/9-acpi]
ROOT          83  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-tpm_dev_wq]
ROOT          84  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-ata_sff]
ROOT          85  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-md_bitmap]
ROOT          86  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-md_llbitmap_io]
ROOT          87  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-md_llbitmap_unplug]
ROOT          88  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-edac-poller]
ROOT          89  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-devfreq_wq]
ROOT          90  0.0  0.0      0     0 ?        S    18:34   0:00 [watchdogd]
ROOT          91  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-quota_events_unbound]
ROOT          92  0.0  0.0      0     0 ?        S    18:34   0:00 [kswapd0]
ROOT          93  0.0  0.0      0     0 ?        S    18:34   0:00 [ecryptfs-kthread]
ROOT          95  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-kthrotld]
ROOT          97  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-acpi_thermal_pm]
ROOT         100  0.0  0.0      0     0 ?        I    18:34   0:00 [kworker/u32:4-flush-252:0]
ROOT         101  0.0  0.0      0     0 ?        I    18:34   0:00 [kworker/u32:5-flush-252:0]
ROOT         103  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-mld]
ROOT         104  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-ipv6_addrconf]
ROOT         105  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-kstrp]
ROOT         106  0.0  0.0      0     0 ?        I    18:34   0:00 [kworker/7:1-cgroup_free]
ROOT         108  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/u33:0]
ROOT         110  0.0  0.0      0     0 ?        I    18:34   0:00 [kworker/6:2-events]
ROOT         120  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-charger_manager]
ROOT         121  0.0  0.0      0     0 ?        I    18:34   0:00 [kworker/0:2-rcu_gp]
ROOT         122  0.0  0.0      0     0 ?        S    18:34   0:00 [hwrng]
ROOT         364  0.0  0.0      0     0 ?        S    18:34   0:00 [scsi_eh_0]
ROOT         365  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-scsi_tmf_0]
ROOT         366  0.0  0.0      0     0 ?        S    18:34   0:00 [scsi_eh_1]
ROOT         367  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-scsi_tmf_1]
ROOT         368  0.0  0.0      0     0 ?        S    18:34   0:00 [scsi_eh_2]
ROOT         369  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-scsi_tmf_2]
ROOT         370  0.0  0.0      0     0 ?        S    18:34   0:00 [scsi_eh_3]
ROOT         371  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-scsi_tmf_3]
ROOT         372  0.0  0.0      0     0 ?        S    18:34   0:00 [scsi_eh_4]
ROOT         373  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-scsi_tmf_4]
ROOT         374  0.0  0.0      0     0 ?        S    18:34   0:00 [scsi_eh_5]
ROOT         375  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-scsi_tmf_5]
ROOT         379  0.0  0.0      0     0 ?        I    18:34   0:00 [kworker/u32:9-events_unbound]
ROOT         385  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/4:1H-kblockd]
ROOT         386  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/7:1H-kblockd]
ROOT         387  0.0  0.0      0     0 ?        I    18:34   0:00 [kworker/3:2-mm_percpu_wq]
ROOT         421  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/3:1H-kblockd]
ROOT         431  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/6:1H-kblockd]
ROOT         479  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-kdmflush/252:0]
ROOT         524  0.0  0.0      0     0 ?        S    18:34   0:00 [jbd2/dm-0-8]
ROOT         525  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-ext4-rsv-conversion]
ROOT         585  0.0  0.0      0     0 ?        I    18:34   0:00 [kworker/2:3-events]
ROOT         591  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/1:1H-kblockd]
ROOT         620  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/0:1H-kblockd]
ROOT         625  0.0  0.0      0     0 ?        S    18:34   0:00 [psimon]
ROOT         631  0.2  0.5  51472 20144 ?        S<s  18:34   0:02 /usr/lib/systemd/systemd-journald
ROOT         644  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-kmpathd]
ROOT         645  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-kmpath_handlerd]
ROOT         666  0.1  0.2 279492  9644 ?        SLsl 18:34   0:01 /usr/sbin/multipathd -d -s
ROOT         668  0.0  0.0      0     0 ?        I    18:34   0:00 [kworker/4:4-mm_percpu_wq]
ROOT         677  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/2:1H-kblockd]
ROOT         684  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/5:1H-kblockd]
systemd+     687  0.0  0.4  22564 15052 ?        Ss   18:34   0:00 /usr/lib/systemd/systemd-resolved
ROOT         690  0.1  0.4  41560 15192 ?        Ss   18:34   0:01 /usr/lib/systemd/systemd-udevd
ROOT         698  0.0  0.0      0     0 ?        S    18:34   0:00 [psimon]
ROOT         779  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/4:2H-kblockd]
ROOT         824  0.0  0.0      0     0 ?        S    18:34   0:00 [card0-crtc0]
ROOT         993  0.0  0.0      0     0 ?        S    18:34   0:00 [jbd2/sda2-8]
ROOT         994  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-ext4-rsv-conversion]
ROOT        1194  0.0  0.0      0     0 ?        I    18:34   0:00 [kworker/5:3-events]
systemd+    1251  0.0  0.3  21436 12360 ?        Ss   18:34   0:00 /usr/lib/systemd/systemd-networkd
avahi       1294  0.0  0.1   6756  4956 ?        Ss   18:34   0:00 avahi-daemon: running [ict.local]
ROOT        1295  0.0  0.0   2888  2016 ?        Ss   18:34   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
message+    1296  0.2  0.2  12008  8940 ?        Ss   18:34   0:02 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
ROOT        1311  0.0  0.8  46844 30408 ?        Ss   18:34   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd     1319  0.4  0.3 386540 12576 ?        Ssl  18:34   0:04 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
ROOT        1325  0.2  1.2 2182384 43616 ?       Ssl  18:34   0:02 /usr/lib/snapd/snapd
ROOT        1327  0.1  0.2 309616  8644 ?        Ssl  18:34   0:01 /usr/libexec/accounts-daemon
ROOT        1328  0.0  0.2 307888  7748 ?        Ssl  18:34   0:00 /usr/libexec/switcheroo-control
ROOT        1333  0.1  0.2  18940  9968 ?        Ss   18:34   0:01 /usr/lib/systemd/systemd-logind
ROOT        1335  0.1  0.4 543812 15512 ?        Ssl  18:34   0:01 /usr/libexec/udisks2/udisksd
avahi       1364  0.0  0.0   6564  1652 ?        S    18:34   0:00 avahi-daemon: chROOT helper
syslog      1374  0.0  0.1 220604  5776 ?        Ssl  18:34   0:00 /usr/sbin/rsyslogd -n -iNONE
ROOT        1375  0.0  0.0      0     0 ?        I    18:34   0:00 [kworker/1:5-mm_percpu_wq]
_chrony     1422  0.0  0.3  23724 11216 ?        S    18:34   0:00 /usr/sbin/chronyd -n -F 1
_chrony     1440  0.0  0.0  12120  3400 ?        S    18:34   0:00 /usr/sbin/chronyd -n -F 1
ROOT        1457  0.3  0.6 336516 22156 ?        Ssl  18:34   0:03 /usr/sbin/NetworkManager --no-daemon
ROOT        1472  0.0  0.2  17972  7108 ?        Ss   18:34   0:00 /usr/sbin/wpa_supplicant -u -s -O DIR=/run/wpa_supplicant GROUP=netdev
ROOT        1500  0.0  0.4 391608 14304 ?        Ssl  18:34   0:00 /usr/sbin/ModemManager
ROOT        1541  0.0  0.0      0     0 ?        I<   18:34   0:00 [kworker/R-cfg80211]
ROOT        1577  0.0  0.9 126116 32924 ?        Ssl  18:34   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
ROOT        1588  0.0  0.2  10740  7720 ?        Ss   18:34   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
ROOT        1648  0.0  0.0   7060  3436 ?        Ss   18:34   0:00 /usr/sbin/cron -f -P
ROOT        1664  0.1  0.3 384576 10844 ?        Ssl  18:34   0:01 /usr/sbin/gdm3
ROOT        1675  0.0  0.2 309144  7772 ?        Ssl  18:34   0:00 /usr/libexec/power-profiles-daemon
rtkit       1791  0.0  0.1  21872  3728 ?        SNsl 18:34   0:00 /usr/libexec/rtkit-daemon
colord      1926  0.0  0.4 317692 16776 ?        Ssl  18:34   0:00 /usr/libexec/colord
ROOT        1965  0.0  0.3 318776 11552 ?        Ssl  18:34   0:00 /usr/libexec/upowerd
ROOT        2700  1.0  0.2  92964  7168 ?        Ssl  18:35   0:11 /usr/sbin/spice-vdagentd -x
ROOT        2778  0.0  0.3 385872 11440 ?        Sl   18:35   0:00 gdm-session-worker [pam/gdm-password]
khalil-+    2907  0.2  0.4  23588 14968 ?        Ss   18:35   0:02 /usr/lib/systemd/systemd --user
khalil-+    2909  0.0  0.1  23456  4220 ?        S    18:35   0:00 (sd-pam)
khalil-+    2929  0.4  0.2  10068  7228 ?        Ss   18:35   0:04 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
khalil-+    2930  0.0  0.3 102252 11748 ?        S<sl 18:35   0:00 /usr/bin/pipewire
khalil-+    2932  0.1  0.3 183248 11368 ?        SLsl 18:35   0:01 /usr/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets --control-directory=/run/user/1000/keyring
khalil-+    2936  0.0  0.1   7560  4144 ?        Ss   18:35   0:00 /usr/bin/mpris-proxy
khalil-+    2940  0.0  0.9 724404 31888 ?        S<sl 18:35   0:00 /usr/bin/wireplumber
khalil-+    2941  0.0  0.1  84812  5816 ?        Ssl  18:35   0:00 /usr/bin/pipewire -c filter-chain.conf
khalil-+    2942  0.0  0.3 105892 11504 ?        S<sl 18:35   0:00 /usr/bin/pipewire-pulse
khalil-+    2987  0.0  0.1 168196  6760 tty2     Ssl+ 18:35   0:00 /usr/libexec/gdm-wayland-session /usr/bin/gnome-session --session=ubuntu
khalil-+    3004  0.0  0.2 175212  9488 tty2     Sl+  18:35   0:00 /usr/libexec/gnome-session-init-worker ubuntu
khalil-+    3126  0.0  0.2  97560  7976 ?        Ssl  18:35   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/gcr
khalil-+    3127  0.0  0.1  87208  5932 ?        Ssl  18:35   0:00 /usr/libexec/gnome-session-ctl --monitor
khalil-+    3128  0.0  0.1  10484  6792 ?        Ss   18:35   0:00 /usr/bin/ssh-agent -D
khalil-+    3140  0.0  0.2 312952  9116 ?        Ssl  18:35   0:00 /usr/libexec/gvfsd
khalil-+    3150  0.0  0.2 324640  7924 ?        Sl   18:35   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
khalil-+    3159  0.1  0.3 539592 11336 ?        Ssl  18:35   0:01 /usr/libexec/gnome-session-service --session=ubuntu
khalil-+    3166  6.9 10.6 7157968 368460 ?      Rsl  18:35   1:10 /usr/bin/gnome-shell --mode=ubuntu
khalil-+    3204  0.0  0.2 381124  8168 ?        Ssl  18:35   0:00 /usr/libexec/at-spi-bus-launcher
khalil-+    3211  0.0  0.1   8612  5260 ?        S    18:35   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/defaults/at-spi2/accessibility.conf --nofork --print-address 11 --address=unix:path=/run/user/1000/at-spi/bus
khalil-+    3213  0.0  0.2 168688  7836 ?        Sl   18:35   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
khalil-+    3231  0.0  0.1 307364  6880 ?        Ssl  18:35   0:00 /usr/libexec/xdg-permission-store
khalil-+    3234  0.0  0.5 658672 19748 ?        Sl   18:35   0:00 /usr/libexec/gnome-shell-calendar-server
khalil-+    3245  0.0  1.3 608172 46416 ?        Ssl  18:35   0:00 /usr/libexec/evolution-source-registry
khalil-+    3256  0.0  0.9 2735508 32856 ?       Sl   18:35   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shell.Notifications
khalil-+    3280  0.7  0.3 385616 11916 ?        Ssl  18:35   0:07 /usr/bin/ibus-daemon --panel disable
khalil-+    3281  0.0  0.3 253792 10740 ?        Ssl  18:35   0:00 /usr/libexec/gsd-a11y-settings
khalil-+    3285  0.0  0.3 251624 10492 ?        Ssl  18:35   0:00 /usr/libexec/gsd-color
khalil-+    3296  0.0  0.3 260164 12676 ?        Ssl  18:35   0:00 /usr/libexec/gsd-datetime
khalil-+    3299  0.0  0.3 390768 10948 ?        Ssl  18:35   0:00 /usr/libexec/gsd-housekeeping
khalil-+    3308  0.0  0.2 383124  8380 ?        Ssl  18:35   0:00 /usr/libexec/gsd-keyboard
khalil-+    3312  0.0  0.4 691012 14912 ?        Ssl  18:35   0:00 /usr/libexec/gsd-media-keys
khalil-+    3315  0.1  1.8 840348 65396 ?        Sl   18:35   0:01 /usr/libexec/evolution-data-server/evolution-alarm-notify
khalil-+    3317  0.0  0.3 540924 11692 ?        Ssl  18:35   0:00 /usr/libexec/gsd-power
khalil-+    3320  0.0  0.4 327572 14524 ?        Ssl  18:35   0:00 /usr/libexec/gsd-print-notifications
khalil-+    3328  0.0  0.2 312176  9436 ?        Sl   18:35   0:00 /usr/libexec/gsd-disk-utility-notify
khalil-+    3331  0.0  0.2 465120  8388 ?        Ssl  18:35   0:00 /usr/libexec/gsd-rfkill
khalil-+    3332  0.1  1.0 651828 35888 ?        Sl   18:35   0:01 /usr/bin/update-notifier
khalil-+    3340  0.0  0.2 169832  7672 ?        Ssl  18:35   0:00 /usr/libexec/gsd-screensaver-proxy
khalil-+    3345  0.0  0.3 467388 13068 ?        Ssl  18:35   0:00 /usr/libexec/gsd-sharing
khalil-+    3352  0.0  0.2 385700  9808 ?        Ssl  18:35   0:00 /usr/libexec/gsd-smartcard
khalil-+    3375  0.0  0.3 254940 10800 ?        Ssl  18:35   0:00 /usr/libexec/gsd-sound
khalil-+    3378  0.0  0.2 545936 10188 ?        Ssl  18:35   0:00 /usr/libexec/gsd-usb-protection
khalil-+    3380  0.0  0.3 390408 10804 ?        Ssl  18:35   0:00 /usr/libexec/gsd-wwan
khalil-+    3400  0.0  0.9 466816 32588 ?        Sl   18:35   0:00 /usr/libexec/goa-daemon
khalil-+    3423  0.0  0.2 243000  8336 ?        Sl   18:35   0:00 /usr/libexec/ibus-dconf
khalil-+    3424  0.8  1.0 500036 37332 ?        Sl   18:35   0:08 /usr/libexec/ibus-extension-gtk3
khalil-+    3441  0.0  0.2 308500  8256 ?        Sl   18:35   0:00 /usr/libexec/ibus-portal
khalil-+    3477  0.1  0.8 729912 29512 ?        SNsl 18:35   0:01 /usr/libexec/localsearch-3
khalil-+    3480  0.0  0.9 450860 33976 ?        Ssl  18:35   0:00 /usr/bin/spice-vdagent -x
khalil-+    3484  0.3  0.6 768532 21216 ?        Rsl  18:35   0:03 /usr/libexec/xdg-desktop-portal
khalil-+    3488  0.0  0.3 407680 12696 ?        Sl   18:35   0:00 /usr/libexec/gsd-printer
khalil-+    3492  0.0  0.3 387944 10428 ?        Sl   18:35   0:00 /usr/libexec/goa-identity-service
khalil-+    3517  0.0  0.7 893408 27276 ?        Ssl  18:35   0:00 /usr/libexec/evolution-calendar-factory
khalil-+    3520  0.0  0.3 386944 11264 ?        Ssl  18:35   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
khalil-+    3524  0.0  0.9 2733464 32828 ?       Sl   18:35   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.ScreenSaver
khalil-+    3549  0.0  0.2 687092  7840 ?        Ssl  18:35   0:00 /usr/libexec/xdg-document-portal
ROOT        3570  0.0  0.0   2792  2312 ?        Ss   18:35   0:00 fusermount3 -o rw,nosuid,nodev,fsname=portal,auto_unmount,subtype=portal -- /run/user/1000/doc
khalil-+    3578  0.1  1.3 761568 45700 ?        Ssl  18:35   0:01 /usr/libexec/xdg-desktop-portal-gnome
khalil-+    3586  0.0  0.2 308976  8024 ?        Ssl  18:35   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
khalil-+    3597  0.0  0.9 826068 31560 ?        Ssl  18:35   0:00 /usr/libexec/evolution-addressbook-factory
khalil-+    3606  0.0  0.2 307832  7320 ?        Ssl  18:35   0:00 /usr/libexec/gvfs-goa-volume-monitor
khalil-+    3614  0.0  0.2 308008  7568 ?        Ssl  18:35   0:00 /usr/libexec/gvfs-mtp-volume-monitor
khalil-+    3622  0.0  0.2 389884  9568 ?        Ssl  18:35   0:00 /usr/libexec/gvfs-afc-volume-monitor
khalil-+    3637  0.1  0.2 169304  8172 ?        Sl   18:35   0:01 /usr/libexec/ibus-engine-simple
khalil-+    3773  0.0  0.2 168820  7312 ?        Ssl  18:35   0:00 /usr/libexec/gvfsd-metadata
khalil-+    3837  0.0  0.1 165352  6716 ?        Ssl  18:35   0:00 /usr/libexec/dconf-service
khalil-+    3864  0.0  0.2 534376 10068 ?        Sl   18:35   0:00 /usr/libexec/gvfsd-trash --spawner :1.17 /org/gtk/gvfs/exec_spaw/0
khalil-+    4054  0.1  0.8 492256 29144 ?        Ssl  18:35   0:01 /usr/libexec/xdg-desktop-portal-gtk
khalil-+    4069  0.0  2.0 212384 70848 ?        S    18:35   0:00 /usr/bin/Xwayland :0 -ROOTless -noreset -accessx -core -auth /run/user/1000/.mutter-Xwaylandauth.T2QWY3 -listenfd 4 -listenfd 5 -displayfd 6 -initfd 7 -byteswappedclients -enable-ei-portal
khalil-+    4075  0.0  0.3 251364 13840 ?        Ssl  18:35   0:00 /usr/libexec/gsd-xsettings
khalil-+    4081  0.0  3.4 2012592 118832 ?      Sl   18:35   0:00 /usr/libexec/mutter-x11-frames
khalil-+    4117  0.0  2.0 374024 72644 ?        Sl   18:35   0:00 /usr/libexec/ibus-x11
khalil-+    4420  0.1  2.0 1088800 69672 ?       Sl   18:37   0:01 /usr/bin/gnome-calendar --gapplication-service
khalil-+    4703  1.2  6.9 4074112 242876 ?      Rl   18:37   0:10 /usr/bin/ptyxis --gapplication-service
khalil-+    4739  0.0  0.2 239996  8012 ?        Ssl  18:37   0:00 /usr/libexec/ptyxis-agent --socket-fd=3 --rlimit-nofile=1024
khalil-+    4791  0.0  0.1   8828  5896 pts/0    Ss   18:37   0:00 /usr/bin/bash
ROOT        4877  0.0  0.0      0     0 ?        I    18:39   0:00 [kworker/u32:3-events_power_efficient]
ROOT        4887  0.0  0.0      0     0 ?        I    18:40   0:00 [kworker/0:0-events]
ROOT        4890  0.0  0.0      0     0 ?        I    18:41   0:00 [kworker/5:1-events]
ROOT        4903  0.0  0.0      0     0 ?        I    18:41   0:00 [kworker/7:2-cgroup_free]
ROOT        4932  0.0  0.0      0     0 ?        I    18:43   0:00 [kworker/4:0-events]
ROOT        4943  0.0  0.0      0     0 ?        I    18:44   0:00 [kworker/6:0]
ROOT        4945  0.0  0.0      0     0 ?        I    18:45   0:00 [kworker/3:0-events]
ROOT        4985  0.0  0.0      0     0 ?        I    18:47   0:00 [kworker/u32:0]
ROOT        4994  0.0  0.0      0     0 ?        I    18:50   0:00 [kworker/1:1]
ROOT        5138  0.0  0.0      0     0 ?        I    18:51   0:00 [kworker/5:0-events]
khalil-+    5187  3.1  2.0 3134708 72036 ?       Sl   18:51   0:01 gjs /usr/share/gnome-shell/extensions/ding@rastersoft.com/app/ding.js -E -P /usr/share/gnome-shell/extensions/ding@rastersoft.com/app
ROOT        5232  0.0  0.0      0     0 ?        I    18:51   0:00 [kworker/3:1]
ROOT        5283  0.0  0.0      0     0 ?        I    18:51   0:00 [kworker/7:0-events]
ROOT        5284  0.0  0.0      0     0 ?        I    18:51   0:00 [kworker/4:1]
ROOT        5300  0.0  0.0      0     0 ?        I    18:52   0:00 [kworker/0:1-rcu_gp]
ROOT        5302  0.3  0.3  29472 13128 ?        Ss   18:52   0:00 /usr/sbin/cupsd -l
cups-br+    5303  1.3  0.6 207560 22844 ?        Ssl  18:52   0:00 /usr/sbin/cups-browsed
ROOT        5304  0.0  0.0      0     0 ?        I    18:52   0:00 [kworker/2:1]
khalil-+    5313  200  0.1   9904  4836 pts/0    R+   18:52   0:00 ps aux
259 processes are running
```

```bash
cat /etc/passwd > users.txt && sed -i '/nologin/d' users.txt && cat users.txt
```

```
root:x:0:0:root:/root:/bin/bash
sync:x:4:65534:sync:/bin:/bin/sync
dhcpcd:x:997:997:DHCP Client Daemon:/usr/lib/dhcpcd:/bin/false
khalil-rizq:x:1000:1000:khalil:/home/khalil-rizq:/bin/bash
whoopsie:x:104:109::/nonexistent:/bin/false
speech-dispatcher:x:107:29:Speech Dispatcher:/run/speech-dispatcher:/bin/false
hplip:x:112:7:HPLIP system user:/run/hplip:/bin/false
gdm:x:975:975:Gnome Display Manager:/var/lib/gdm3:/bin/false
```

## awk

```bash
awk -F: '{print "User " $1 " has UID " $3 " and GID " $4}' /etc/passwd
```

```
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
User khalil-rizq has UID 1000 and GID 1000
User sshd has UID 983 and GID 65534
User rtkit has UID 982 and GID 982
User dnsmasq has UID 999 and GID 65534
User whoopsie has UID 104 and GID 109
User nm-openvpn has UID 980 and GID 980
User avahi has UID 105 and GID 111
User sssd has UID 106 and GID 112
User speech-dispatcher has UID 107 and GID 29
User cups-pk-helper has UID 108 and GID 113
User saned has UID 109 and GID 114
User cups-browsed has UID 110 and GID 113
User colord has UID 979 and GID 979
User pipewire has UID 978 and GID 978
User geoclue has UID 111 and GID 115
User hplip has UID 112 and GID 7
User gnome-remote-desktop has UID 977 and GID 977
User gdm has UID 975 and GID 975
```

```bash
awk 'NR>1 && NF>10 {print $1, $11}' processes.log
```

```
root /usr/lib/systemd/systemd
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
root [cpuhp/2]
root [idle_inject/2]
root [migration/2]
root [ksoftirqd/2]
root [kworker/2:0-mm_percpu_wq]
root [kworker/2:0H-kblockd]
root [cpuhp/4]
root [idle_inject/4]
root [migration/4]
root [ksoftirqd/4]
root [cpuhp/6]
root [idle_inject/6]
root [migration/6]
root [ksoftirqd/6]
root [kworker/6:0H-kblockd]
root [cpuhp/1]
root [idle_inject/1]
root [migration/1]
root [ksoftirqd/1]
root [kworker/1:0-events]
root [kworker/1:0H-kblockd]
root [cpuhp/3]
root [idle_inject/3]
root [migration/3]
root [ksoftirqd/3]
root [kworker/3:0H-kblockd]
root [cpuhp/5]
root [idle_inject/5]
root [migration/5]
root [ksoftirqd/5]
root [kworker/5:0H-kblockd]
root [cpuhp/7]
root [idle_inject/7]
root [migration/7]
root [ksoftirqd/7]
root [kworker/7:0H-kblockd]
root [kdevtmpfs]
root [kworker/R-inet_frag_wq]
root [rcu_tasks_kthread]
root [rcu_tasks_rude_kthread]
root [kauditd]
root [khungtaskd]
root [oom_reaper]
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
root [kworker/u32:4-flush-252:0]
root [kworker/u32:5-flush-252:0]
root [kworker/R-mld]
root [kworker/R-ipv6_addrconf]
root [kworker/R-kstrp]
root [kworker/7:1-cgroup_free]
root [kworker/u33:0]
root [kworker/6:2-events]
root [kworker/R-charger_manager]
root [kworker/0:2-rcu_gp]
root [hwrng]
root [scsi_eh_0]
root [kworker/R-scsi_tmf_0]
root [scsi_eh_1]
root [kworker/R-scsi_tmf_1]
root [scsi_eh_2]
root [kworker/R-scsi_tmf_2]
root [scsi_eh_3]
root [kworker/R-scsi_tmf_3]
root [scsi_eh_4]
root [kworker/R-scsi_tmf_4]
root [scsi_eh_5]
root [kworker/R-scsi_tmf_5]
root [kworker/u32:9-events_unbound]
root [kworker/4:1H-kblockd]
root [kworker/7:1H-kblockd]
root [kworker/3:2-mm_percpu_wq]
root [kworker/3:1H-kblockd]
root [kworker/6:1H-kblockd]
root [kworker/R-kdmflush/252:0]
root [jbd2/dm-0-8]
root [kworker/R-ext4-rsv-conversion]
root [kworker/2:3-events]
root [kworker/1:1H-kblockd]
root [kworker/0:1H-kblockd]
root [psimon]
root /usr/lib/systemd/systemd-journald
root [kworker/R-kmpathd]
root [kworker/R-kmpath_handlerd]
root /usr/sbin/multipathd
root [kworker/4:4-mm_percpu_wq]
root [kworker/2:1H-kblockd]
root [kworker/5:1H-kblockd]
systemd+ /usr/lib/systemd/systemd-resolved
root /usr/lib/systemd/systemd-udevd
root [psimon]
root [kworker/4:2H-kblockd]
root [card0-crtc0]
root [jbd2/sda2-8]
root [kworker/R-ext4-rsv-conversion]
root [kworker/5:3-events]
systemd+ /usr/lib/systemd/systemd-networkd
avahi avahi-daemon:
root /bin/sh
message+ @dbus-daemon
root /usr/bin/python3
polkitd /usr/lib/polkit-1/polkitd
root /usr/lib/snapd/snapd
root /usr/libexec/accounts-daemon
root /usr/libexec/switcheroo-control
root /usr/lib/systemd/systemd-logind
root /usr/libexec/udisks2/udisksd
avahi avahi-daemon:
syslog /usr/sbin/rsyslogd
root [kworker/1:5-mm_percpu_wq]
_chrony /usr/sbin/chronyd
_chrony /usr/sbin/chronyd
root /usr/sbin/NetworkManager
root /usr/sbin/wpa_supplicant
root /usr/sbin/ModemManager
root [kworker/R-cfg80211]
root /usr/bin/python3
root sshd:
root /usr/sbin/cron
root /usr/sbin/gdm3
root /usr/libexec/power-profiles-daemon
rtkit /usr/libexec/rtkit-daemon
colord /usr/libexec/colord
root /usr/libexec/upowerd
root /usr/sbin/spice-vdagentd
root gdm-session-worker
khalil-+ /usr/lib/systemd/systemd
khalil-+ (sd-pam)
khalil-+ /usr/bin/dbus-daemon
khalil-+ /usr/bin/pipewire
khalil-+ /usr/bin/gnome-keyring-daemon
khalil-+ /usr/bin/mpris-proxy
khalil-+ /usr/bin/wireplumber
khalil-+ /usr/bin/pipewire
khalil-+ /usr/bin/pipewire-pulse
khalil-+ /usr/libexec/gdm-wayland-session
khalil-+ /usr/libexec/gnome-session-init-worker
khalil-+ /usr/libexec/gcr-ssh-agent
khalil-+ /usr/libexec/gnome-session-ctl
khalil-+ /usr/bin/ssh-agent
khalil-+ /usr/libexec/gvfsd
khalil-+ /usr/libexec/gvfsd-fuse
khalil-+ /usr/libexec/gnome-session-service
khalil-+ /usr/bin/gnome-shell
khalil-+ /usr/libexec/at-spi-bus-launcher
khalil-+ /usr/bin/dbus-daemon
khalil-+ /usr/libexec/at-spi2-registryd
khalil-+ /usr/libexec/xdg-permission-store
khalil-+ /usr/libexec/gnome-shell-calendar-server
khalil-+ /usr/libexec/evolution-source-registry
khalil-+ /usr/bin/gjs
khalil-+ /usr/bin/ibus-daemon
khalil-+ /usr/libexec/gsd-a11y-settings
khalil-+ /usr/libexec/gsd-color
khalil-+ /usr/libexec/gsd-datetime
khalil-+ /usr/libexec/gsd-housekeeping
khalil-+ /usr/libexec/gsd-keyboard
khalil-+ /usr/libexec/gsd-media-keys
khalil-+ /usr/libexec/evolution-data-server/evolution-alarm-notify
khalil-+ /usr/libexec/gsd-power
khalil-+ /usr/libexec/gsd-print-notifications
khalil-+ /usr/libexec/gsd-disk-utility-notify
khalil-+ /usr/libexec/gsd-rfkill
khalil-+ /usr/bin/update-notifier
khalil-+ /usr/libexec/gsd-screensaver-proxy
khalil-+ /usr/libexec/gsd-sharing
khalil-+ /usr/libexec/gsd-smartcard
khalil-+ /usr/libexec/gsd-sound
khalil-+ /usr/libexec/gsd-usb-protection
khalil-+ /usr/libexec/gsd-wwan
khalil-+ /usr/libexec/goa-daemon
khalil-+ /usr/libexec/ibus-dconf
khalil-+ /usr/libexec/ibus-extension-gtk3
khalil-+ /usr/libexec/ibus-portal
khalil-+ /usr/libexec/localsearch-3
khalil-+ /usr/bin/spice-vdagent
khalil-+ /usr/libexec/xdg-desktop-portal
khalil-+ /usr/libexec/gsd-printer
khalil-+ /usr/libexec/goa-identity-service
khalil-+ /usr/libexec/evolution-calendar-factory
khalil-+ /usr/libexec/gvfs-udisks2-volume-monitor
khalil-+ /usr/bin/gjs
khalil-+ /usr/libexec/xdg-document-portal
root fusermount3
khalil-+ /usr/libexec/xdg-desktop-portal-gnome
khalil-+ /usr/libexec/gvfs-gphoto2-volume-monitor
khalil-+ /usr/libexec/evolution-addressbook-factory
khalil-+ /usr/libexec/gvfs-goa-volume-monitor
khalil-+ /usr/libexec/gvfs-mtp-volume-monitor
khalil-+ /usr/libexec/gvfs-afc-volume-monitor
khalil-+ /usr/libexec/ibus-engine-simple
khalil-+ /usr/libexec/gvfsd-metadata
khalil-+ /usr/libexec/dconf-service
khalil-+ /usr/libexec/gvfsd-trash
khalil-+ /usr/libexec/xdg-desktop-portal-gtk
khalil-+ /usr/bin/Xwayland
khalil-+ /usr/libexec/gsd-xsettings
khalil-+ /usr/libexec/mutter-x11-frames
khalil-+ /usr/libexec/ibus-x11
khalil-+ /usr/bin/gnome-calendar
khalil-+ /usr/bin/ptyxis
khalil-+ /usr/libexec/ptyxis-agent
khalil-+ /usr/bin/bash
root [kworker/u32:3-events_power_efficient]
root [kworker/0:0-events]
root [kworker/5:1-events]
root [kworker/7:2-cgroup_free]
root [kworker/4:0-events]
root [kworker/6:0]
root [kworker/3:0-events]
root [kworker/u32:0]
root [kworker/1:1]
root [kworker/5:0-events]
khalil-+ gjs
root [kworker/3:1]
root [kworker/7:0-events]
root [kworker/4:1]
root [kworker/0:1-rcu_gp]
root /usr/sbin/cupsd
cups-br+ /usr/sbin/cups-browsed
root [kworker/2:1]
khalil-+ ps
```

```bash
awk 'NR>1 && NF>10 {sum += $3} END {print "Total CPU usage: " sum "%"}' processes.log
```

```
Total CPU usage: 219.6%
```
