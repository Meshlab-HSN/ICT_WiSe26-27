# Lecture 5 - Task 2
$ ps aux | grep tahir _1
tahir_l+    6135  0.0  0.0   6716  2684 tty1     S+   16:48   0:00 grep --color=auto tahir_1
$ ps aux | grep "^tahir_l+"
tahir_l+    1238  0.0  0.3  22036 12976 ?        Ss   15:14   0:00 /usr/lib/systemd/systemd --user
tahir_l+    1251  0.0  0.1  23040  4092 ?        S    15:14   0:00 (sd-pam)
tahir_l+    1276  0.0  0.1   8856  5852 tty1     Ss   15:14   0:00 -bash
tahir_l+    6146  0.0  0.1   9764  4676 tty1     R+   16:50   0:00 ps aux
tahir_l+    6147  0.0  0.0   6716  2684 tty1     S+   16:50   0:00 grep --color=auto ^tahir_l+
$ ps aux | grep -v -E "kworker|irq"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.4  25008 16152 ?        Ss   15:13   0:03 /usr/lib/systemd/systemd --switched-root --system --deserialize=56
root           2  0.0  0.0      0     0 ?        S    15:13   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    15:13   0:00 [pool_workqueue_release]
root          15  0.0  0.0      0     0 ?        I    15:13   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    15:13   0:00 [rcu_exp_par_gp_kthread_worker/0]
root          17  0.0  0.0      0     0 ?        S    15:13   0:00 [rcu_exp_gp_kthread_worker]
root          18  0.0  0.0      0     0 ?        S    15:13   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    15:13   0:00 [kprobe-optimizer]
root          20  0.0  0.0      0     0 ?        S    15:13   0:00 [idle_inject/0]
root          21  0.0  0.0      0     0 ?        S    15:13   0:00 [cpuhp/0]
root          22  0.0  0.0      0     0 ?        S    15:13   0:00 [cpuhp/1]
root          23  0.0  0.0      0     0 ?        S    15:13   0:00 [idle_inject/1]
root          24  0.0  0.0      0     0 ?        S    15:13   0:00 [migration/1]
root          30  0.0  0.0      0     0 ?        S    15:13   0:00 [kdevtmpfs]
root          32  0.0  0.0      0     0 ?        I    15:13   0:00 [rcu_tasks_kthread]
root          33  0.0  0.0      0     0 ?        I    15:13   0:00 [rcu_tasks_rude_kthread]
root          34  0.0  0.0      0     0 ?        S    15:13   0:00 [kauditd]
root          35  0.0  0.0      0     0 ?        S    15:13   0:00 [khungtaskd]
root          36  0.0  0.0      0     0 ?        S    15:13   0:00 [oom_reaper]
root          40  0.0  0.0      0     0 ?        S    15:13   0:00 [kcompactd0]
root          41  0.0  0.0      0     0 ?        SN   15:13   0:00 [ksmd]
root          42  0.0  0.0      0     0 ?        SN   15:13   0:00 [khugepaged]
root          55  0.0  0.0      0     0 ?        S    15:13   0:00 [watchdogd]
root          58  0.0  0.0      0     0 ?        S    15:13   0:00 [kswapd0]
root          59  0.0  0.0      0     0 ?        S    15:13   0:00 [ecryptfs-kthread]
root          64  0.0  0.0      0     0 ?        S    15:13   0:00 [scsi_eh_0]
root          66  0.0  0.0      0     0 ?        S    15:13   0:00 [scsi_eh_1]
root         301  0.0  0.0      0     0 ?        S    15:13   0:00 [scsi_eh_2]
root         337  0.0  0.0      0     0 ?        S    15:13   0:00 [jbd2/sda2-8]
root         431  0.0  0.0      0     0 ?        S    15:13   0:00 [psimon]
root         438  0.0  0.4  50416 17160 ?        S<s  15:13   0:00 /usr/lib/systemd/systemd-journald
root         481  0.0  0.2 279496  9648 ?        SLsl 15:13   0:01 /usr/sbin/multipathd -d -s
systemd+     495  0.0  0.4  22644 14752 ?        Ss   15:13   0:00 /usr/lib/systemd/systemd-resolved
root         503  0.0  0.4  41496 15524 ?        Ss   15:13   0:00 /usr/lib/systemd/systemd-udevd
root         506  0.0  0.0      0     0 ?        S    15:13   0:00 [psimon]
systemd+     675  0.0  0.3  21492 12268 ?        Ss   15:13   0:00 /usr/lib/systemd/systemd-networkd
root         816  0.0  0.0   2888  2012 ?        Ss   15:13   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root         817  0.0  0.0   7060  3392 ?        Ss   15:13   0:00 /usr/sbin/cron -f -P
message+     818  0.0  0.1   9156  5760 ?        Ss   15:13   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         825  0.0  0.8  46744 30172 ?        Ss   15:13   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
polkitd      826  0.0  0.2 306448  8520 ?        Ssl  15:13   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
root         829  0.0  1.2 1886136 42644 ?       Ssl  15:13   0:01 /usr/lib/snapd/snapd
root         832  0.0  0.2  18600  9944 ?        Ss   15:13   0:00 /usr/lib/systemd/systemd-logind
root         834  0.0  0.4 543352 15232 ?        Ssl  15:13   0:00 /usr/libexec/udisks2/udisksd
root         870  0.0  0.1   8756  5616 ?        Ss   15:13   0:00 login -- tahir_labeeb
_chrony      892  0.0  0.1  20556  6408 ?        S    15:13   0:00 /usr/sbin/chronyd -n -F 1
_chrony      910  0.0  0.0  12096  2436 ?        S    15:13   0:00 /usr/sbin/chronyd -n -F 1
root         931  0.0  0.9 126116 32868 ?        Ssl  15:13   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root         933  0.0  0.4 391612 14064 ?        Ssl  15:13   0:00 /usr/sbin/ModemManager
syslog       935  0.0  0.1 220552  6244 ?        Ssl  15:13   0:00 /usr/sbin/rsyslogd -n -iNONE
tahir_l+    1238  0.0  0.3  22036 12976 ?        Ss   15:14   0:00 /usr/lib/systemd/systemd --user
tahir_l+    1251  0.0  0.1  23040  4092 ?        S    15:14   0:00 (sd-pam)
tahir_l+    1276  0.0  0.1   8856  5852 tty1     Ss   15:14   0:00 -bash
root        5841  0.0  1.3 365892 46080 ?        Ssl  15:28   0:00 /usr/libexec/fwupd/fwupd
root        5850  0.2  0.3 318636 11484 ?        Ssl  15:28   0:10 /usr/libexec/upowerd
tahir_l+    6154  100  0.1   9764  4676 tty1     R+   16:52   0:00 ps aux
$ ps aux | grep -v "^root"
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
systemd+     495  0.0  0.4  22644 14752 ?        Ss   15:13   0:00 /usr/lib/systemd/systemd-resolved
systemd+     675  0.0  0.3  21492 12268 ?        Ss   15:13   0:00 /usr/lib/systemd/systemd-networkd
message+     818  0.0  0.1   9156  5760 ?        Ss   15:13   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
polkitd      826  0.0  0.2 306448  8520 ?        Ssl  15:13   0:00 /usr/lib/polkit-1/polkitd --no-debug --log-level=notice
_chrony      892  0.0  0.1  20556  6408 ?        S    15:13   0:00 /usr/sbin/chronyd -n -F 1
_chrony      910  0.0  0.0  12096  2436 ?        S    15:13   0:00 /usr/sbin/chronyd -n -F 1
syslog       935  0.0  0.1 220552  6244 ?        Ssl  15:13   0:00 /usr/sbin/rsyslogd -n -iNONE
tahir_l+    1238  0.0  0.3  22036 12976 ?        Ss   15:14   0:00 /usr/lib/systemd/systemd --user
tahir_l+    1251  0.0  0.1  23040  4092 ?        S    15:14   0:00 (sd-pam)
tahir_l+    1276  0.0  0.1   8856  5852 tty1     Ss   15:14   0:00 -bash
tahir_l+    6162  0.0  0.1   9764  4684 tty1     R+   16:53   0:00 ps aux
tahir_l+    6163  0.0  0.0   6716  2668 tty1     S+   16:53   0:00 grep --color=auto -v ^root
