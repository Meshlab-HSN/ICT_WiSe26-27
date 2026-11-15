# Lecture 5 - Task 2: Search and Filter

## 1. Processes containing my username

Command:
```bash
ps aux | grep "$USER"
```

Output:
```text
root        1850  0.0  0.5  15188 10932 ?        Ss   14:03   0:00 sshd: raheel-ahmed [priv]
raheel-+    1913  0.0  0.3  15328  7360 ?        S    14:03   0:00 sshd: raheel-ahmed@pts/0
raheel-+    2315  0.0  0.1   9288  2324 pts/0    S+   14:51   0:00 grep --color=auto raheel-ahmed
```

## 2. Processes running under my username using regex

Command:
```bash
ps aux | grep -E '^raheel-\+[[:space:]]'
```

Output:
```text
raheel-+    1381  0.0  0.6  20912 12124 ?        Ss   11:48   0:00 /usr/lib/systemd/systemd --user
raheel-+    1382  0.0  0.1  21484  3668 ?        S    11:48   0:00 (sd-pam)
raheel-+    1393  0.0  0.6 113168 12608 ?        S<sl 11:48   0:00 /usr/bin/pipewire
raheel-+    1394  0.0  0.3  97748  6152 ?        Ssl  11:48   0:00 /usr/bin/pipewire -c filter-chain.conf
raheel-+    1395  0.0  0.5  39152 11964 ?        Ss   11:48   0:00 /snap/snapd-desktop-integration/315/usr/bin/snapd-desktop-integration
raheel-+    1396  0.0  1.6 566924 32696 ?        S<sl 11:48   0:00 /usr/bin/wireplumber
raheel-+    1397  0.0  0.2  11268  5672 tty1     S+   11:48   0:00 -bash
raheel-+    1398  0.0  0.5 109412 10800 ?        S<sl 11:48   0:00 /usr/bin/pipewire-pulse
raheel-+    1452  0.0  0.2   9500  5284 ?        Ss   11:48   0:00 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
raheel-+    1461  0.0  0.3 639020  7756 ?        Ssl  11:48   0:00 /usr/libexec/xdg-document-portal
raheel-+    1477  0.0  0.3 309320  6292 ?        Ssl  11:48   0:00 /usr/libexec/xdg-permission-store
raheel-+    1534  0.0  1.0 278932 21980 ?        Sl   11:48   0:00 /snap/snapd-desktop-integration/315/usr/bin/snapd-desktop-integration
raheel-+    1913  0.0  0.3  15328  7360 ?        S    14:03   0:00 sshd: raheel-ahmed@pts/0
raheel-+    1914  0.0  0.2  11368  5700 pts/0    Ss   14:03   0:00 -bash
raheel-+    2316  0.0  0.2  13496  4600 pts/0    R+   14:51   0:00 ps aux
raheel-+    2317  0.0  0.1   9292  2328 pts/0    S+   14:51   0:00 grep --color=auto -E ^raheel-\+[[:space:]]
```

## 3. All processes except root

Command:
```bash
ps aux | grep -vE '^root[[:space:]]'
```

Output:
```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     391  0.0  0.3  17576  7816 ?        Ss   11:44   0:02 /usr/lib/systemd/systemd-oomd
systemd+     396  0.0  0.6  21484 13720 ?        Ss   11:44   0:00 /usr/lib/systemd/systemd-resolved
systemd+     664  0.0  0.3  91064  8016 ?        Ssl  11:44   0:00 /usr/lib/systemd/systemd-timesyncd
avahi        869  0.0  0.2   8688  4672 ?        Ss   11:44   0:00 avahi-daemon: running [ict.local]
message+     870  0.0  0.3  10904  6376 ?        Ss   11:44   0:01 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      883  0.0  0.5 310724 10836 ?        Ssl  11:44   0:00 /usr/lib/polkit-1/polkitd --no-debug
avahi        918  0.0  0.0   8500  1600 ?        S    11:44   0:00 avahi-daemon: chroot helper
syslog       934  0.0  0.3 222576  6104 ?        Ssl  11:44   0:00 /usr/sbin/rsyslogd -n -iNONE
cups-br+    1203  0.0  1.0 268508 20636 ?        Ssl  11:45   0:00 /usr/sbin/cups-browsed
kernoops    1205  0.0  0.1  12756  2468 ?        Ss   11:45   0:00 /usr/sbin/kerneloops --test
kernoops    1208  0.0  0.1  12756  2412 ?        Ss   11:45   0:00 /usr/sbin/kerneloops
raheel-+    1381  0.0  0.6  20912 12124 ?        Ss   11:48   0:00 /usr/lib/systemd/systemd --user
raheel-+    1382  0.0  0.1  21484  3668 ?        S    11:48   0:00 (sd-pam)
raheel-+    1393  0.0  0.6 113168 12608 ?        S<sl 11:48   0:00 /usr/bin/pipewire
raheel-+    1394  0.0  0.3  97748  6152 ?        Ssl  11:48   0:00 /usr/bin/pipewire -c filter-chain.conf
raheel-+    1395  0.0  0.5  39152 11964 ?        Ss   11:48   0:00 /snap/snapd-desktop-integration/315/usr/bin/snapd-desktop-integration
raheel-+    1396  0.0  1.6 566924 32696 ?        S<sl 11:48   0:00 /usr/bin/wireplumber
raheel-+    1397  0.0  0.2  11268  5672 tty1     S+   11:48   0:00 -bash
raheel-+    1398  0.0  0.5 109412 10800 ?        S<sl 11:48   0:00 /usr/bin/pipewire-pulse
raheel-+    1452  0.0  0.2   9500  5284 ?        Ss   11:48   0:00 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
raheel-+    1461  0.0  0.3 639020  7756 ?        Ssl  11:48   0:00 /usr/libexec/xdg-document-portal
rtkit       1466  0.0  0.1  22952  3568 ?        SNsl 11:48   0:00 /usr/libexec/rtkit-daemon
raheel-+    1477  0.0  0.3 309320  6292 ?        Ssl  11:48   0:00 /usr/libexec/xdg-permission-store
raheel-+    1534  0.0  1.0 278932 21980 ?        Sl   11:48   0:00 /snap/snapd-desktop-integration/315/usr/bin/snapd-desktop-integration
raheel-+    1913  0.0  0.3  15328  7360 ?        S    14:03   0:00 sshd: raheel-ahmed@pts/0
raheel-+    1914  0.0  0.2  11368  5700 pts/0    Ss   14:03   0:00 -bash
raheel-+    2318  0.0  0.2  13496  4620 pts/0    R+   14:51   0:00 ps aux
raheel-+    2319  0.0  0.1   9288  2320 pts/0    S+   14:51   0:00 grep --color=auto -vE ^root[[:space:]]
```




## 4. Filter out kworker and irq processes

Command:

```bash
ps aux | grep -Ev 'kworker|irq'
```

Output:

```text
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.7  23580 14852 ?        Ss   11:44   0:03 /sbin/init splash
root           2  0.0  0.0      0     0 ?        S    11:44   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    11:44   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    11:44   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    11:44   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    11:44   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    11:44   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    11:44   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    11:44   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    11:44   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    11:44   0:00 [kdevtmpfs]
root          24  0.0  0.0      0     0 ?        I    11:44   0:00 [rcu_tasks_kthread]
root          25  0.0  0.0      0     0 ?        I    11:44   0:00 [rcu_tasks_rude_kthread]
root          26  0.0  0.0      0     0 ?        S    11:44   0:00 [kauditd]
root          27  0.0  0.0      0     0 ?        S    11:44   0:00 [khungtaskd]
root          28  0.0  0.0      0     0 ?        S    11:44   0:00 [oom_reaper]
root          32  0.0  0.0      0     0 ?        S    11:44   0:01 [kcompactd0]
root          33  0.0  0.0      0     0 ?        SN   11:44   0:00 [ksmd]
root          34  0.0  0.0      0     0 ?        SN   11:44   0:00 [khugepaged]
root          46  0.0  0.0      0     0 ?        S    11:44   0:00 [watchdogd]
root          48  0.0  0.0      0     0 ?        S    11:44   0:00 [kswapd0]
root          49  0.0  0.0      0     0 ?        S    11:44   0:00 [ecryptfs-kthread]
root          52  0.0  0.0      0     0 ?        S    11:44   0:00 [scsi_eh_0]
root          54  0.0  0.0      0     0 ?        S    11:44   0:00 [scsi_eh_1]
root         120  0.0  0.0      0     0 ?        S    11:44   0:00 [scsi_eh_2]
root         173  0.0  0.0      0     0 ?        S    11:44   0:00 [jbd2/sda2-8]
root         223  0.0  0.9  66876 18492 ?        S<s  11:44   0:00 /usr/lib/systemd/systemd-journald
root         302  0.0  0.4  31040  8968 ?        Ss   11:44   0:00 /usr/lib/systemd/systemd-udevd
root         373  0.0  0.0      0     0 ?        S    11:44   0:00 [psimon]
systemd+     391  0.0  0.3  17576  7816 ?        Ss   11:44   0:04 /usr/lib/systemd/systemd-oomd
systemd+     396  0.0  0.6  21484 13720 ?        Ss   11:44   0:00 /usr/lib/systemd/systemd-resolved
systemd+     664  0.0  0.3  91064  8016 ?        Ssl  11:44   0:00 /usr/lib/systemd/systemd-timesyncd
avahi        869  0.0  0.2   8688  4672 ?        Ss   11:45   0:00 avahi-daemon: running [ict.local]
message+     870  0.0  0.3  10904  6376 ?        Ss   11:45   0:02 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      883  0.0  0.5 310724 10836 ?        Ssl  11:45   0:00 /usr/lib/polkit-1/polkitd --no-debug
root         887  0.0  1.9 1777332 40036 ?       Ssl  11:45   0:03 /snap/snapd/current/usr/lib/snapd/snapd
root         888  0.0  0.1   9436  2900 ?        Ss   11:45   0:00 /usr/sbin/cron -f -P
root         890  0.0  0.4  18168  9072 ?        Ss   11:45   0:00 /usr/lib/systemd/systemd-logind
avahi        918  0.0  0.0   8500  1600 ?        S    11:45   0:00 avahi-daemon: chroot helper
root         928  0.0  0.9 336356 19724 ?        Ssl  11:45   0:00 /usr/sbin/NetworkManager --no-daemon
root         931  0.0  0.3  17396  6524 ?        Ss   11:45   0:00 /usr/sbin/wpa_supplicant -u -s -O DIR=/run/wpa_supplicant GROUP=netdev
syslog       934  0.0  0.3 222576  6108 ?        Ssl  11:45   0:00 /usr/sbin/rsyslogd -n -iNONE
root         953  0.0  0.2 361300  4152 ?        Sl   11:45   0:02 /usr/sbin/VBoxService
root         994  0.0  0.6 392108 13172 ?        Ssl  11:45   0:00 /usr/sbin/ModemManager
root        1133  0.0  0.6  38276 12452 ?        Ss   11:45   0:00 /usr/sbin/cupsd -l
root        1142  0.0  1.1 112316 23528 ?        Ssl  11:45   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root        1148  0.0  0.4  12036  8396 ?        Ss   11:45   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root        1160  0.0  0.2   7276  5200 tty1     Ss   11:45   0:00 /bin/login -p --
cups-br+    1203  0.0  1.0 268508 20636 ?        Ssl  11:46   0:00 /usr/sbin/cups-browsed
kernoops    1205  0.0  0.1  12756  2468 ?        Ss   11:46   0:00 /usr/sbin/kerneloops --test
kernoops    1208  0.0  0.1  12756  2412 ?        Ss   11:46   0:00 /usr/sbin/kerneloops
raheel-+    1381  0.0  0.6  20912 12124 ?        Ss   11:48   0:00 /usr/lib/systemd/systemd --user
raheel-+    1382  0.0  0.1  21484  3668 ?        S    11:48   0:00 (sd-pam)
raheel-+    1393  0.0  0.6 113168 12608 ?        S<sl 11:48   0:00 /usr/bin/pipewire
raheel-+    1394  0.0  0.3  97748  6152 ?        Ssl  11:48   0:00 /usr/bin/pipewire -c filter-chain.conf
raheel-+    1395  0.0  0.5  39152 11964 ?        Ss   11:48   0:00 /snap/snapd-desktop-integration/315/usr/bin/snapd-desktop-integration
raheel-+    1396  0.0  1.6 566924 32696 ?        S<sl 11:48   0:00 /usr/bin/wireplumber
raheel-+    1397  0.0  0.2  11268  5672 tty1     S+   11:48   0:00 -bash
raheel-+    1398  0.0  0.5 109412 10800 ?        S<sl 11:48   0:00 /usr/bin/pipewire-pulse
raheel-+    1452  0.0  0.2   9500  5284 ?        Ss   11:48   0:00 /usr/bin/dbus-daemon --session --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
raheel-+    1461  0.0  0.3 639020  7760 ?        Ssl  11:49   0:00 /usr/libexec/xdg-document-portal
rtkit       1466  0.0  0.1  22952  3568 ?        SNsl 11:49   0:00 /usr/libexec/rtkit-daemon
raheel-+    1477  0.0  0.3 309320  6292 ?        Ssl  11:49   0:00 /usr/libexec/xdg-permission-store
root        1486  0.0  0.1   2716  2096 ?        Ss   11:49   0:00 fusermount3 -o rw,nosuid,nodev,fsname=portal,auto_unmount,subtype=portal -- /run/user/1000/doc
raheel-+    1534  0.0  1.0 278932 21980 ?        Sl   11:49   0:00 /snap/snapd-desktop-integration/315/usr/bin/snapd-desktop-integration
root        1624  0.0  2.3 639000 46380 ?        Ssl  12:08   0:02 /usr/libexec/fwupd/fwupd
root        1631  0.0  0.5 317692 10368 ?        Ssl  12:08   0:02 /usr/libexec/upowerd
root        1637  0.0  0.6 469208 14068 ?        Ssl  12:08   0:00 /usr/libexec/udisks2/udisksd
root        1850  0.0  0.5  15188 10932 ?        Ss   14:04   0:00 sshd: raheel-ahmed [priv]
raheel-+    1913  0.0  0.3  15328  7360 ?        S    14:04   0:00 sshd: raheel-ahmed@pts/0
raheel-+    1914  0.0  0.2  11368  5712 pts/0    Ss   14:04   0:00 -bash
root        2090  0.0  0.0      0     0 ?        S    14:05   0:00 [psimon]
raheel-+    2532  0.0  0.2  13496  4620 pts/0    R+   16:47   0:00 ps aux
```
